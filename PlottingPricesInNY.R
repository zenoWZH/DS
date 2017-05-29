library(ggplot2)
PriceData <- read.csv('PriceData2.csv')
PriceData$Date <- PriceData$Year+(1/12)*(-1+PriceData$Month)
PriceData_Canada=PriceData[PriceData$Country=='Canada',]
PriceData_Canada_Footwear=PriceData_Canada[PriceData_Canada$GoodDescription=='Footwear',]
ggplot(aes(x=Date,
           y=Price,
           color=PriceData_Canada_Footwear$CityCode),
       data=PriceData_Canada_Footwear) +
  geom_point(alpha=1/2) 

