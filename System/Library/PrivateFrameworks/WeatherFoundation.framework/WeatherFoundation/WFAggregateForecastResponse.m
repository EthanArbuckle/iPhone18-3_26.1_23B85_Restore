@interface WFAggregateForecastResponse
- (WFAggregateForecastResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAggregateForecastResponse

- (WFAggregateForecastResponse)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WFAggregateForecastResponse;
  v5 = [(WFResponse *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"WFAggregateForecastResponseHourlyForecastsKey"];
    [(WFAggregateForecastResponse *)v5 setForecasts:v9];

    -[WFAggregateForecastResponse setResponseWasFromCache:](v5, "setResponseWasFromCache:", [v4 decodeBoolForKey:@"WFAggregateForecastResponseWasFromCacheKey"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFAggregateForecastResponse;
  v4 = a3;
  [(WFResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFAggregateForecastResponse *)self forecasts:v6.receiver];
  [v4 encodeObject:v5 forKey:@"WFAggregateForecastResponseHourlyForecastsKey"];

  [v4 encodeBool:-[WFAggregateForecastResponse responseWasFromCache](self forKey:{"responseWasFromCache"), @"WFAggregateForecastResponseWasFromCacheKey"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v6 = [(WFAggregateForecastResponse *)self forecasts];
  v7 = [v5 initWithArray:v6 copyItems:1];
  [v4 setForecasts:v7];

  return v4;
}

@end