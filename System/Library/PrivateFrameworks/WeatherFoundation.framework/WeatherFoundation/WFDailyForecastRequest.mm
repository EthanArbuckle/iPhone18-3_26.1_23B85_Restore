@interface WFDailyForecastRequest
- (WFDailyForecastRequest)initWithLocation:(id)location completionHandler:(id)handler;
- (id)description;
- (void)startWithService:(id)service;
@end

@implementation WFDailyForecastRequest

- (WFDailyForecastRequest)initWithLocation:(id)location completionHandler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  v8 = handlerCopy;
  selfCopy = 0;
  if (locationCopy && handlerCopy)
  {
    v15.receiver = self;
    v15.super_class = WFDailyForecastRequest;
    v10 = [(WFTask *)&v15 init];
    v11 = v10;
    if (v10)
    {
      [(WFAggregateForecastRequest *)v10 setLocation:locationCopy];
      [(WFAggregateForecastRequest *)v11 setCompletionHandler:v8];
      autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
      locale = v11->_locale;
      v11->_locale = autoupdatingCurrentLocale;
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  location = [(WFAggregateForecastRequest *)self location];
  v6 = [v3 stringWithFormat:@"<%@: %p, location = %@>", v4, self, location];

  return v6;
}

- (void)startWithService:(id)service
{
  serviceCopy = service;
  location = [(WFAggregateForecastRequest *)self location];
  locale = [(WFDailyForecastRequest *)self locale];
  identifier = [(WFTask *)self identifier];
  [serviceCopy dailyForecastForLocation:location locale:locale taskIdentifier:identifier];
}

@end