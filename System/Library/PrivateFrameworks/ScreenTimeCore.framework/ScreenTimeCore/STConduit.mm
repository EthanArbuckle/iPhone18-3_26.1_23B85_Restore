@interface STConduit
- (STConduit)initWithOrganizationIdentifier:(id)a3 transport:(id)a4 localTransport:(id)a5 persistenceController:(id)a6;
- (STConduitDelegate)delegate;
- (void)_finishInvalidating;
- (void)dealloc;
- (void)enqueueTransportPayload:(id)a3;
- (void)invalidate;
- (void)payloadManager:(id)a3 didDeliverPayload:(id)a4;
- (void)payloadManager:(id)a3 didReceivePayload:(id)a4;
- (void)payloadManagerDidInvalidate:(id)a3;
- (void)resume;
@end

@implementation STConduit

- (STConduit)initWithOrganizationIdentifier:(id)a3 transport:(id)a4 localTransport:(id)a5 persistenceController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = STConduit;
  v14 = [(STConduit *)&v23 init];
  if (v14)
  {
    v15 = [v10 copy];
    organizationIdentifier = v14->_organizationIdentifier;
    v14->_organizationIdentifier = v15;

    objc_storeStrong(&v14->_persistenceController, a6);
    v17 = objc_opt_new();
    operationQueue = v14->_operationQueue;
    v14->_operationQueue = v17;

    [(NSOperationQueue *)v14->_operationQueue setMaxConcurrentOperationCount:1];
    v19 = [NSString stringWithFormat:@"com.apple.ScreenTimeAgent.conduit (%@)", v10];
    [(NSOperationQueue *)v14->_operationQueue setName:v19];

    v20 = [[STTransportPayloadManager alloc] initWithTransport:v11 localTransport:v12 persistenceController:v13];
    payloadManager = v14->_payloadManager;
    v14->_payloadManager = v20;

    [(STTransportPayloadManager *)v14->_payloadManager setDelegate:v14];
  }

  return v14;
}

- (void)dealloc
{
  if (![(STConduit *)self isInvalid])
  {
    sub_1001131CC(a2, self);
  }

  v4.receiver = self;
  v4.super_class = STConduit;
  [(STConduit *)&v4 dealloc];
}

- (void)resume
{
  if ([(STConduit *)self isInvalid])
  {
    sub_100113240(a2, self);
  }

  [(STConduit *)self setResumed:1];
  v4 = [(STConduit *)self operationQueue];
  [v4 setSuspended:0];

  v5 = [(STConduit *)self payloadManager];
  [v5 resume];

  v6 = +[STLog conduit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ : Resumed", &v7, 0xCu);
  }
}

- (void)invalidate
{
  v3 = +[STLog conduit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ : Invalidating", &v7, 0xCu);
  }

  [(STConduit *)self setInvalid:1];
  v4 = [(STConduit *)self operationQueue];
  [v4 setSuspended:1];

  v5 = [(STConduit *)self payloadManager];

  if (v5)
  {
    v6 = [(STConduit *)self payloadManager];
    [v6 invalidate];
  }

  else
  {
    [(STConduit *)self _finishInvalidating];
  }
}

- (void)enqueueTransportPayload:(id)a3
{
  v4 = a3;
  v5 = [(STConduit *)self payloadManager];
  [v5 enqueuePayload:v4];
}

- (void)_finishInvalidating
{
  v3 = +[STLog conduit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidated: %@", &v5, 0xCu);
  }

  v4 = [(STConduit *)self delegate];
  [v4 conduitDidInvalidate:self];
}

- (void)payloadManager:(id)a3 didReceivePayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog conduit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Payload manager “%{public}@” received payload “%{public}@”", &v10, 0x16u);
  }

  v9 = [(STConduit *)self delegate];
  [v9 conduit:self didReceiveTransportPayload:v7];
}

- (void)payloadManager:(id)a3 didDeliverPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[STLog conduit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 UUID];
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Payload manager “%{public}@” delivered payload “%{public}@”", &v11, 0x16u);
  }

  v10 = [(STConduit *)self delegate];
  [v10 conduit:self didDeliverTransportPayload:v7];
}

- (void)payloadManagerDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = +[STLog conduit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Payload manager did invalidate: %@", &v6, 0xCu);
  }

  if ([(STConduit *)self isInvalid])
  {
    [(STConduit *)self setPayloadManager:0];
    [(STConduit *)self _finishInvalidating];
  }
}

- (STConduitDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end