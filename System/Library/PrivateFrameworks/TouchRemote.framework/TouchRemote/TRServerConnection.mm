@interface TRServerConnection
- (SFService)service;
- (TRServerConnection)initWithService:(id)a3;
- (void)invalidate;
- (void)sendEvent:(id)a3;
- (void)sendRequest:(id)a3;
- (void)sendResponse:(id)a3;
@end

@implementation TRServerConnection

- (TRServerConnection)initWithService:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TRServerConnection;
  v5 = [(TRServerConnection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, v4);
  }

  return v6;
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained sendEvent:v4];
}

- (void)sendRequest:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained sendRequest:v4];
}

- (void)sendResponse:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  [WeakRetained sendResponse:v4];
}

- (void)invalidate
{
  objc_storeWeak(&self->_service, 0);
  v3 = [(TRConnection *)self invalidationHandler];

  if (v3)
  {
    v4 = [(TRConnection *)self invalidationHandler];
    v4[2]();
  }
}

- (SFService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end