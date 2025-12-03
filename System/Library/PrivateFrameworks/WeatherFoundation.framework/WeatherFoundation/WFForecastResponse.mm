@interface WFForecastResponse
- (WFForecastResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFForecastResponse

- (WFForecastResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = WFForecastResponse;
  v5 = [(WFResponse *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WFForecastResponseForecastKey"];
    [(WFForecastResponse *)v5 setForecast:v6];

    -[WFForecastResponse setForecastType:](v5, "setForecastType:", [coderCopy decodeIntegerForKey:@"WFForecastResponseForecastTypeKey"]);
    v7 = [coderCopy decodeObjectForKey:@"WFForecastResponseRawAPIResponse"];
    [(WFForecastResponse *)v5 setRawAPIData:v7];

    -[WFForecastResponse setResponseWasFromCache:](v5, "setResponseWasFromCache:", [coderCopy decodeBoolForKey:@"WFForecastResponseWasFromCacheKey"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFForecastResponse;
  [(WFResponse *)&v8 encodeWithCoder:coderCopy];
  forecast = [(WFForecastResponse *)self forecast];
  [coderCopy encodeObject:forecast forKey:@"WFForecastResponseForecastKey"];

  [coderCopy encodeInteger:-[WFForecastResponse forecastType](self forKey:{"forecastType"), @"WFForecastResponseForecastTypeKey"}];
  [coderCopy encodeBool:-[WFForecastResponse responseWasFromCache](self forKey:{"responseWasFromCache"), @"WFForecastResponseWasFromCacheKey"}];
  rawAPIData = [(WFForecastResponse *)self rawAPIData];

  if (rawAPIData)
  {
    rawAPIData2 = [(WFForecastResponse *)self rawAPIData];
    [coderCopy encodeObject:rawAPIData2 forKey:@"WFForecastResponseRawAPIResponse"];
  }
}

@end