@interface WFAggregateForecastResponse
- (WFAggregateForecastResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAggregateForecastResponse

- (WFAggregateForecastResponse)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = WFAggregateForecastResponse;
  v5 = [(WFResponse *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"WFAggregateForecastResponseHourlyForecastsKey"];
    [(WFAggregateForecastResponse *)v5 setForecasts:v9];

    -[WFAggregateForecastResponse setResponseWasFromCache:](v5, "setResponseWasFromCache:", [coderCopy decodeBoolForKey:@"WFAggregateForecastResponseWasFromCacheKey"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFAggregateForecastResponse;
  coderCopy = coder;
  [(WFResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFAggregateForecastResponse *)self forecasts:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"WFAggregateForecastResponseHourlyForecastsKey"];

  [coderCopy encodeBool:-[WFAggregateForecastResponse responseWasFromCache](self forKey:{"responseWasFromCache"), @"WFAggregateForecastResponseWasFromCacheKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  forecasts = [(WFAggregateForecastResponse *)self forecasts];
  v7 = [v5 initWithArray:forecasts copyItems:1];
  [v4 setForecasts:v7];

  return v4;
}

@end