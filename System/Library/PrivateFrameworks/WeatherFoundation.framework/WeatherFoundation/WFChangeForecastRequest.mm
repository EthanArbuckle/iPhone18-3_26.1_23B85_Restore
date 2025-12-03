@interface WFChangeForecastRequest
- (WFChangeForecastRequest)initWithLocation:(id)location completionHandler:(id)handler;
- (void)handleError:(id)error forResponseIdentifier:(id)identifier;
- (void)handleResponse:(id)response;
- (void)startWithService:(id)service;
@end

@implementation WFChangeForecastRequest

- (WFChangeForecastRequest)initWithLocation:(id)location completionHandler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = WFChangeForecastRequest;
  v8 = [(WFTask *)&v14 init];
  if (v8)
  {
    v9 = [locationCopy copy];
    location = v8->_location;
    v8->_location = v9;

    v11 = MEMORY[0x2743D5580](handlerCopy);
    completionHandler = v8->_completionHandler;
    v8->_completionHandler = v11;
  }

  return v8;
}

- (void)startWithService:(id)service
{
  serviceCopy = service;
  location = [(WFChangeForecastRequest *)self location];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  identifier = [(WFTask *)self identifier];
  [serviceCopy forecast:512 forLocation:location locale:currentLocale taskIdentifier:identifier];
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  completionHandler = [(WFChangeForecastRequest *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFChangeForecastRequest *)self completionHandler];
    changeForecasts = [responseCopy changeForecasts];
    error = [responseCopy error];
    (completionHandler2)[2](completionHandler2, changeForecasts, error);
  }

  v9.receiver = self;
  v9.super_class = WFChangeForecastRequest;
  [(WFTask *)&v9 handleResponse:responseCopy];
}

- (void)handleError:(id)error forResponseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  errorCopy = error;
  completionHandler = [(WFChangeForecastRequest *)self completionHandler];
  (completionHandler)[2](completionHandler, 0, errorCopy);

  v9.receiver = self;
  v9.super_class = WFChangeForecastRequest;
  [(WFTask *)&v9 handleError:errorCopy forResponseIdentifier:identifierCopy];
}

@end