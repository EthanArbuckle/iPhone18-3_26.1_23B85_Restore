@interface WFHourlyForecastRequest
- (WFHourlyForecastRequest)initWithLocation:(id)a3 completionHandler:(id)a4;
- (id)description;
- (void)startWithService:(id)a3;
@end

@implementation WFHourlyForecastRequest

- (WFHourlyForecastRequest)initWithLocation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v15.receiver = self;
    v15.super_class = WFHourlyForecastRequest;
    v10 = [(WFTask *)&v15 init];
    v11 = v10;
    if (v10)
    {
      [(WFAggregateForecastRequest *)v10 setLocation:v6];
      [(WFAggregateForecastRequest *)v11 setCompletionHandler:v8];
      v12 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
      locale = v11->_locale;
      v11->_locale = v12;
    }

    self = v11;
    v9 = self;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(WFAggregateForecastRequest *)self location];
  v6 = [v3 stringWithFormat:@"<%@: %p, location = %@>", v4, self, v5];

  return v6;
}

- (void)startWithService:(id)a3
{
  v4 = a3;
  v7 = [(WFAggregateForecastRequest *)self location];
  v5 = [(WFHourlyForecastRequest *)self locale];
  v6 = [(WFTask *)self identifier];
  [v4 hourlyForecastForLocation:v7 locale:v5 taskIdentifier:v6];
}

@end