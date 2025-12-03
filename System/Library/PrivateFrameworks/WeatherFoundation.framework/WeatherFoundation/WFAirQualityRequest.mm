@interface WFAirQualityRequest
+ (id)airQualityRequestForLocation:(id)location locale:(id)locale completionHandler:(id)handler;
- (WFAirQualityRequest)initWithLocation:(id)location locale:(id)locale completionHandler:(id)handler;
- (id)options;
- (void)cleanup;
- (void)handleError:(id)error forResponseIdentifier:(id)identifier;
- (void)handleResponse:(id)response;
- (void)startWithService:(id)service;
@end

@implementation WFAirQualityRequest

+ (id)airQualityRequestForLocation:(id)location locale:(id)locale completionHandler:(id)handler
{
  handlerCopy = handler;
  localeCopy = locale;
  locationCopy = location;
  v10 = [objc_alloc(objc_opt_class()) initWithLocation:locationCopy locale:localeCopy completionHandler:handlerCopy];

  return v10;
}

- (WFAirQualityRequest)initWithLocation:(id)location locale:(id)locale completionHandler:(id)handler
{
  locationCopy = location;
  localeCopy = locale;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = WFAirQualityRequest;
  v11 = [(WFTask *)&v15 initWithResponseRequired:1];
  v12 = v11;
  if (v11)
  {
    if (localeCopy)
    {
      [(WFAirQualityRequest *)v11 setLocale:localeCopy];
    }

    else
    {
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      [(WFAirQualityRequest *)v12 setLocale:currentLocale];
    }

    [(WFAirQualityRequest *)v12 setLocation:locationCopy];
    [(WFAirQualityRequest *)v12 setCompletionHandler:handlerCopy];
  }

  return v12;
}

- (id)options
{
  v5[1] = *MEMORY[0x277D85DE8];
  if ([(WFAirQualityRequest *)self attachRawAPIData])
  {
    v4 = @"WFAirQualityRequestAttachRawAPIOptionsKey";
    v5[0] = MEMORY[0x277CBEC38];
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEC10];
  }

  return v2;
}

- (void)startWithService:(id)service
{
  serviceCopy = service;
  location = [(WFAirQualityRequest *)self location];
  locale = [(WFAirQualityRequest *)self locale];
  options = [(WFAirQualityRequest *)self options];
  identifier = [(WFTask *)self identifier];
  [serviceCopy airQualityForLocation:location locale:locale options:options taskIdentifier:identifier];
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  completionHandler = [(WFAirQualityRequest *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFAirQualityRequest *)self completionHandler];
    airQualityConditions = [responseCopy airQualityConditions];
    error = [responseCopy error];
    (completionHandler2)[2](completionHandler2, airQualityConditions, error);
  }

  v9.receiver = self;
  v9.super_class = WFAirQualityRequest;
  [(WFTask *)&v9 handleResponse:responseCopy];
}

- (void)handleError:(id)error forResponseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  errorCopy = error;
  completionHandler = [(WFAirQualityRequest *)self completionHandler];
  (completionHandler)[2](completionHandler, 0, errorCopy);

  v9.receiver = self;
  v9.super_class = WFAirQualityRequest;
  [(WFTask *)&v9 handleError:errorCopy forResponseIdentifier:identifierCopy];
}

- (void)cleanup
{
  [(WFAirQualityRequest *)self setCompletionHandler:0];
  v3.receiver = self;
  v3.super_class = WFAirQualityRequest;
  [(WFTask *)&v3 cleanup];
}

@end