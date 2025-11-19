@interface WFForecastResponse
- (WFForecastResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFForecastResponse

- (WFForecastResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WFForecastResponse;
  v5 = [(WFResponse *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFForecastResponseForecastKey"];
    [(WFForecastResponse *)v5 setForecast:v6];

    -[WFForecastResponse setForecastType:](v5, "setForecastType:", [v4 decodeIntegerForKey:@"WFForecastResponseForecastTypeKey"]);
    v7 = [v4 decodeObjectForKey:@"WFForecastResponseRawAPIResponse"];
    [(WFForecastResponse *)v5 setRawAPIData:v7];

    -[WFForecastResponse setResponseWasFromCache:](v5, "setResponseWasFromCache:", [v4 decodeBoolForKey:@"WFForecastResponseWasFromCacheKey"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFForecastResponse;
  [(WFResponse *)&v8 encodeWithCoder:v4];
  v5 = [(WFForecastResponse *)self forecast];
  [v4 encodeObject:v5 forKey:@"WFForecastResponseForecastKey"];

  [v4 encodeInteger:-[WFForecastResponse forecastType](self forKey:{"forecastType"), @"WFForecastResponseForecastTypeKey"}];
  [v4 encodeBool:-[WFForecastResponse responseWasFromCache](self forKey:{"responseWasFromCache"), @"WFForecastResponseWasFromCacheKey"}];
  v6 = [(WFForecastResponse *)self rawAPIData];

  if (v6)
  {
    v7 = [(WFForecastResponse *)self rawAPIData];
    [v4 encodeObject:v7 forKey:@"WFForecastResponseRawAPIResponse"];
  }
}

@end