@interface WFTemperatureUnitRequest
- (WFTemperatureUnitRequest)initWithResultHandler:(id)handler;
- (void)cleanup;
- (void)handleCancellation;
- (void)handleError:(id)error forResponseIdentifier:(id)identifier;
- (void)handleResponse:(id)response;
- (void)startWithService:(id)service;
@end

@implementation WFTemperatureUnitRequest

- (WFTemperatureUnitRequest)initWithResultHandler:(id)handler
{
  handlerCopy = handler;
  v8.receiver = self;
  v8.super_class = WFTemperatureUnitRequest;
  v5 = [(WFTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WFTemperatureUnitRequest *)v5 setResultHandler:handlerCopy];
  }

  return v6;
}

- (void)startWithService:(id)service
{
  serviceCopy = service;
  identifier = [(WFTask *)self identifier];
  [serviceCopy temperatureUnitWithIdentifier:identifier];
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    resultHandler = [(WFTemperatureUnitRequest *)self resultHandler];

    if (resultHandler)
    {
      resultHandler2 = [(WFTemperatureUnitRequest *)self resultHandler];

      if (resultHandler2)
      {
        resultHandler3 = [(WFTemperatureUnitRequest *)self resultHandler];
        temperatureUnit = [responseCopy temperatureUnit];
        error = [responseCopy error];
        (resultHandler3)[2](resultHandler3, temperatureUnit, error);
      }

      v10.receiver = self;
      v10.super_class = WFTemperatureUnitRequest;
      [(WFTask *)&v10 handleResponse:responseCopy];
    }
  }
}

- (void)handleError:(id)error forResponseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  errorCopy = error;
  resultHandler = [(WFTemperatureUnitRequest *)self resultHandler];
  (resultHandler)[2](resultHandler, 0, errorCopy);

  v9.receiver = self;
  v9.super_class = WFTemperatureUnitRequest;
  [(WFTask *)&v9 handleError:errorCopy forResponseIdentifier:identifierCopy];
}

- (void)handleCancellation
{
  resultHandler = [(WFTemperatureUnitRequest *)self resultHandler];

  if (resultHandler)
  {
    resultHandler2 = [(WFTemperatureUnitRequest *)self resultHandler];
    v5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:13];
    (resultHandler2)[2](resultHandler2, 0, v5);
  }

  resultHandler = self->_resultHandler;
  self->_resultHandler = 0;

  v7.receiver = self;
  v7.super_class = WFTemperatureUnitRequest;
  [(WFTask *)&v7 handleCancellation];
}

- (void)cleanup
{
  [(WFTemperatureUnitRequest *)self setResultHandler:0];
  v3.receiver = self;
  v3.super_class = WFTemperatureUnitRequest;
  [(WFTask *)&v3 cleanup];
}

@end