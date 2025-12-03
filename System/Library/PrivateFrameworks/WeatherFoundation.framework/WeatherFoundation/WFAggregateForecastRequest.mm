@interface WFAggregateForecastRequest
- (WFAggregateForecastRequest)initWithLocation:(id)location completionHandler:(id)handler;
- (void)cleanup;
- (void)handleCancellation;
- (void)handleError:(id)error forResponseIdentifier:(id)identifier;
- (void)handleResponse:(id)response;
@end

@implementation WFAggregateForecastRequest

- (WFAggregateForecastRequest)initWithLocation:(id)location completionHandler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  v8 = handlerCopy;
  selfCopy = 0;
  if (locationCopy && handlerCopy)
  {
    v13.receiver = self;
    v13.super_class = WFAggregateForecastRequest;
    v10 = [(WFTask *)&v13 init];
    v11 = v10;
    if (v10)
    {
      [(WFAggregateForecastRequest *)v10 setLocation:locationCopy];
      [(WFAggregateForecastRequest *)v11 setCompletionHandler:v8];
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  completionHandler = [(WFAggregateForecastRequest *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFAggregateForecastRequest *)self completionHandler];
    forecasts = [responseCopy forecasts];
    error = [responseCopy error];
    (completionHandler2)[2](completionHandler2, forecasts, error);
  }

  v9.receiver = self;
  v9.super_class = WFAggregateForecastRequest;
  [(WFTask *)&v9 handleResponse:responseCopy];
}

- (void)handleError:(id)error forResponseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  errorCopy = error;
  completionHandler = [(WFAggregateForecastRequest *)self completionHandler];
  (completionHandler)[2](completionHandler, 0, errorCopy);

  v9.receiver = self;
  v9.super_class = WFAggregateForecastRequest;
  [(WFTask *)&v9 handleError:errorCopy forResponseIdentifier:identifierCopy];
}

- (void)handleCancellation
{
  completionHandler = [(WFAggregateForecastRequest *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFAggregateForecastRequest *)self completionHandler];
    v5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:13];
    (completionHandler2)[2](completionHandler2, 0, v5);
  }

  v6.receiver = self;
  v6.super_class = WFAggregateForecastRequest;
  [(WFTask *)&v6 handleCancellation];
}

- (void)cleanup
{
  [(WFAggregateForecastRequest *)self setCompletionHandler:0];
  v3.receiver = self;
  v3.super_class = WFAggregateForecastRequest;
  [(WFTask *)&v3 cleanup];
}

@end