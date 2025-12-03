@interface WFFavoriteLocationRequest
- (WFFavoriteLocationRequest)initWithResultHandler:(id)handler;
- (void)handleCancellation;
- (void)handleError:(id)error forResponseIdentifier:(id)identifier;
- (void)handleResponse:(id)response;
- (void)startWithService:(id)service;
@end

@implementation WFFavoriteLocationRequest

- (WFFavoriteLocationRequest)initWithResultHandler:(id)handler
{
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = WFFavoriteLocationRequest;
  v5 = [(WFTask *)&v10 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    resultHandler = v5->_resultHandler;
    v5->_resultHandler = v6;

    v8 = v5;
  }

  return v5;
}

- (void)startWithService:(id)service
{
  resultHandler = [(WFFavoriteLocationRequest *)self resultHandler];

  if (resultHandler)
  {
    resultHandler2 = [(WFFavoriteLocationRequest *)self resultHandler];
    v5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:15];
    resultHandler2[2](resultHandler2, 0, v5);
  }
}

- (void)handleResponse:(id)response
{
  responseCopy = response;
  resultHandler = [(WFFavoriteLocationRequest *)self resultHandler];

  if (resultHandler)
  {
    resultHandler2 = [(WFFavoriteLocationRequest *)self resultHandler];
    favoriteLocations = [responseCopy favoriteLocations];
    error = [responseCopy error];
    (resultHandler2)[2](resultHandler2, favoriteLocations, error);
  }

  v9.receiver = self;
  v9.super_class = WFFavoriteLocationRequest;
  [(WFTask *)&v9 handleResponse:responseCopy];
}

- (void)handleError:(id)error forResponseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  errorCopy = error;
  resultHandler = [(WFFavoriteLocationRequest *)self resultHandler];
  (resultHandler)[2](resultHandler, 0, errorCopy);

  v9.receiver = self;
  v9.super_class = WFFavoriteLocationRequest;
  [(WFTask *)&v9 handleError:errorCopy forResponseIdentifier:identifierCopy];
}

- (void)handleCancellation
{
  resultHandler = [(WFFavoriteLocationRequest *)self resultHandler];

  if (resultHandler)
  {
    resultHandler2 = [(WFFavoriteLocationRequest *)self resultHandler];
    v5 = [MEMORY[0x277CCA9B8] wf_errorWithCode:13];
    (resultHandler2)[2](resultHandler2, 0, v5);
  }

  v6.receiver = self;
  v6.super_class = WFFavoriteLocationRequest;
  [(WFTask *)&v6 handleCancellation];
}

@end