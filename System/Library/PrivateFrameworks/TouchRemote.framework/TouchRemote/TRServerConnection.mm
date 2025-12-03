@interface TRServerConnection
- (SFService)service;
- (TRServerConnection)initWithService:(id)service;
- (void)invalidate;
- (void)sendEvent:(id)event;
- (void)sendRequest:(id)request;
- (void)sendResponse:(id)response;
@end

@implementation TRServerConnection

- (TRServerConnection)initWithService:(id)service
{
  serviceCopy = service;
  v8.receiver = self;
  v8.super_class = TRServerConnection;
  v5 = [(TRServerConnection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, serviceCopy);
  }

  return v6;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained sendEvent:eventCopy];
}

- (void)sendRequest:(id)request
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained sendRequest:requestCopy];
}

- (void)sendResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained sendResponse:responseCopy];
}

- (void)invalidate
{
  objc_storeWeak(&self->_service, 0);
  invalidationHandler = [(TRConnection *)self invalidationHandler];

  if (invalidationHandler)
  {
    invalidationHandler2 = [(TRConnection *)self invalidationHandler];
    invalidationHandler2[2]();
  }
}

- (SFService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end