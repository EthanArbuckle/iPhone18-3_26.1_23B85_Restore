@interface WFForecastRequest
+ (id)forecastRequestForLocation:(id)location completionHandler:(id)handler;
+ (id)forecastRequestForLocation:(id)location date:(id)date completionHandler:(id)handler;
+ (id)forecastRequestForLocation:(id)location onDate:(id)date completionHandler:(id)handler;
- (WFForecastRequest)initWithLocation:(id)location completionHandler:(id)handler;
- (WFForecastRequest)initWithLocation:(id)location date:(id)date completionHandler:(id)handler;
- (WFForecastRequest)initWithLocation:(id)location onDate:(id)date completionHandler:(id)handler;
- (id)description;
- (void)cleanup;
- (void)handleCancellation;
- (void)handleError:(id)error forResponseIdentifier:(id)identifier;
- (void)handleResponse:(id)response;
- (void)startWithService:(id)service;
@end

@implementation WFForecastRequest

+ (id)forecastRequestForLocation:(id)location onDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  locationCopy = location;
  v11 = [[self alloc] initWithLocation:locationCopy onDate:dateCopy completionHandler:handlerCopy];

  return v11;
}

+ (id)forecastRequestForLocation:(id)location completionHandler:(id)handler
{
  handlerCopy = handler;
  locationCopy = location;
  v8 = [[self alloc] initWithLocation:locationCopy completionHandler:handlerCopy];

  return v8;
}

- (WFForecastRequest)initWithLocation:(id)location completionHandler:(id)handler
{
  v6 = MEMORY[0x277CBEAA8];
  handlerCopy = handler;
  locationCopy = location;
  date = [v6 date];
  v10 = [(WFForecastRequest *)self initWithLocation:locationCopy onDate:date completionHandler:handlerCopy];

  return v10;
}

- (WFForecastRequest)initWithLocation:(id)location onDate:(id)date completionHandler:(id)handler
{
  locationCopy = location;
  dateCopy = date;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    goto LABEL_10;
  }

  if (!locationCopy)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = 4;
LABEL_9:
    v21 = [v19 wf_errorWithCode:v20];
    handlerCopy[2](handlerCopy, 0, v21);

LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  if (!dateCopy)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = 2;
    goto LABEL_9;
  }

  v23.receiver = self;
  v23.super_class = WFForecastRequest;
  v11 = [(WFTask *)&v23 init];
  if (v11)
  {
    v12 = [locationCopy copy];
    location = v11->_location;
    v11->_location = v12;

    objc_storeStrong(&v11->_onDate, date);
    v14 = MEMORY[0x2743D5580](handlerCopy);
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v14;

    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    locale = v11->_locale;
    v11->_locale = autoupdatingCurrentLocale;
  }

  self = v11;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyy-MM-dd'T'hh:mm:ss"];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  onDate = [(WFForecastRequest *)self onDate];
  v7 = [v3 stringFromDate:onDate];
  location = [(WFForecastRequest *)self location];
  v9 = [v4 stringWithFormat:@"<%@: %p, date = %@, location = %@>", v5, self, v7, location];

  return v9;
}

- (void)startWithService:(id)service
{
  v12[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  location = [(WFForecastRequest *)self location];
  locale = [(WFForecastRequest *)self locale];
  onDate = [(WFForecastRequest *)self onDate];
  v11 = @"WFForecastRequestAttachRawAPIOptionsKey";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[WFForecastRequest attachRawAPIData](self, "attachRawAPIData")}];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  identifier = [(WFTask *)self identifier];
  [serviceCopy forecastForLocation:location locale:locale onDate:onDate options:v9 taskIdentifier:identifier];
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  completionHandler = [(WFForecastRequest *)self completionHandler];

  if (completionHandler)
  {
    rawAPIData = [responseCopy rawAPIData];
    if (rawAPIData)
    {
      v7 = rawAPIData;
      forecast = [responseCopy forecast];

      if (forecast)
      {
        rawAPIData2 = [responseCopy rawAPIData];
        [(WFForecastRequest *)self setRawAPIData:rawAPIData2];
      }
    }

    forecast2 = [responseCopy forecast];
    v11 = [forecast2 copy];

    locale = [(WFForecastRequest *)self locale];

    if (!locale)
    {
      autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
      [(WFForecastRequest *)self setLocale:autoupdatingCurrentLocale];
    }

    trackingParameter = [(WFForecastRequest *)self trackingParameter];

    if (!trackingParameter)
    {
      [(WFForecastRequest *)self setTrackingParameter:@"apple_TWC"];
    }

    locale2 = [(WFForecastRequest *)self locale];
    trackingParameter2 = [(WFForecastRequest *)self trackingParameter];
    [v11 editLinksWithLocale:locale2 trackingParameter:trackingParameter2];

    completionHandler2 = [(WFForecastRequest *)self completionHandler];
    error = [responseCopy error];
    (completionHandler2)[2](completionHandler2, v11, error);
  }

  v19.receiver = self;
  v19.super_class = WFForecastRequest;
  [(WFTask *)&v19 handleResponse:responseCopy];
}

- (void)handleError:(id)error forResponseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  errorCopy = error;
  completionHandler = [(WFForecastRequest *)self completionHandler];
  (completionHandler)[2](completionHandler, 0, errorCopy);

  v9.receiver = self;
  v9.super_class = WFForecastRequest;
  [(WFTask *)&v9 handleError:errorCopy forResponseIdentifier:identifierCopy];
}

- (void)handleCancellation
{
  completionHandler = [(WFForecastRequest *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFForecastRequest *)self completionHandler];
    v5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:13];
    (completionHandler2)[2](completionHandler2, 0, v5);
  }

  v6.receiver = self;
  v6.super_class = WFForecastRequest;
  [(WFTask *)&v6 handleCancellation];
}

- (void)cleanup
{
  [(WFForecastRequest *)self setCompletionHandler:0];
  v3.receiver = self;
  v3.super_class = WFForecastRequest;
  [(WFTask *)&v3 cleanup];
}

+ (id)forecastRequestForLocation:(id)location date:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  locationCopy = location;
  v11 = [[self alloc] initWithLocation:locationCopy date:dateCopy completionHandler:handlerCopy];

  return v11;
}

- (WFForecastRequest)initWithLocation:(id)location date:(id)date completionHandler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  locationCopy = location;
  date = [dateCopy date];
  v12 = date;
  if (date)
  {
    v13 = date;
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [currentCalendar dateFromComponents:dateCopy];
  }

  v15 = [(WFForecastRequest *)self initWithLocation:locationCopy onDate:v13 completionHandler:handlerCopy];
  [(WFForecastRequest *)v15 setDate:dateCopy];

  return v15;
}

@end