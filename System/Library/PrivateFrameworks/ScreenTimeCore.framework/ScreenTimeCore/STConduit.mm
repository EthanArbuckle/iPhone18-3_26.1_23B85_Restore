@interface STConduit
- (STConduit)initWithOrganizationIdentifier:(id)identifier transport:(id)transport localTransport:(id)localTransport persistenceController:(id)controller;
- (STConduitDelegate)delegate;
- (void)_finishInvalidating;
- (void)dealloc;
- (void)enqueueTransportPayload:(id)payload;
- (void)invalidate;
- (void)payloadManager:(id)manager didDeliverPayload:(id)payload;
- (void)payloadManager:(id)manager didReceivePayload:(id)payload;
- (void)payloadManagerDidInvalidate:(id)invalidate;
- (void)resume;
@end

@implementation STConduit

- (STConduit)initWithOrganizationIdentifier:(id)identifier transport:(id)transport localTransport:(id)localTransport persistenceController:(id)controller
{
  identifierCopy = identifier;
  transportCopy = transport;
  localTransportCopy = localTransport;
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = STConduit;
  v14 = [(STConduit *)&v23 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    organizationIdentifier = v14->_organizationIdentifier;
    v14->_organizationIdentifier = v15;

    objc_storeStrong(&v14->_persistenceController, controller);
    v17 = objc_opt_new();
    operationQueue = v14->_operationQueue;
    v14->_operationQueue = v17;

    [(NSOperationQueue *)v14->_operationQueue setMaxConcurrentOperationCount:1];
    identifierCopy = [NSString stringWithFormat:@"com.apple.ScreenTimeAgent.conduit (%@)", identifierCopy];
    [(NSOperationQueue *)v14->_operationQueue setName:identifierCopy];

    v20 = [[STTransportPayloadManager alloc] initWithTransport:transportCopy localTransport:localTransportCopy persistenceController:controllerCopy];
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
  operationQueue = [(STConduit *)self operationQueue];
  [operationQueue setSuspended:0];

  payloadManager = [(STConduit *)self payloadManager];
  [payloadManager resume];

  v6 = +[STLog conduit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ : Resumed", &v7, 0xCu);
  }
}

- (void)invalidate
{
  v3 = +[STLog conduit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ : Invalidating", &v7, 0xCu);
  }

  [(STConduit *)self setInvalid:1];
  operationQueue = [(STConduit *)self operationQueue];
  [operationQueue setSuspended:1];

  payloadManager = [(STConduit *)self payloadManager];

  if (payloadManager)
  {
    payloadManager2 = [(STConduit *)self payloadManager];
    [payloadManager2 invalidate];
  }

  else
  {
    [(STConduit *)self _finishInvalidating];
  }
}

- (void)enqueueTransportPayload:(id)payload
{
  payloadCopy = payload;
  payloadManager = [(STConduit *)self payloadManager];
  [payloadManager enqueuePayload:payloadCopy];
}

- (void)_finishInvalidating
{
  v3 = +[STLog conduit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidated: %@", &v5, 0xCu);
  }

  delegate = [(STConduit *)self delegate];
  [delegate conduitDidInvalidate:self];
}

- (void)payloadManager:(id)manager didReceivePayload:(id)payload
{
  managerCopy = manager;
  payloadCopy = payload;
  v8 = +[STLog conduit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = managerCopy;
    v12 = 2114;
    v13 = payloadCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Payload manager “%{public}@” received payload “%{public}@”", &v10, 0x16u);
  }

  delegate = [(STConduit *)self delegate];
  [delegate conduit:self didReceiveTransportPayload:payloadCopy];
}

- (void)payloadManager:(id)manager didDeliverPayload:(id)payload
{
  managerCopy = manager;
  payloadCopy = payload;
  v8 = +[STLog conduit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [payloadCopy UUID];
    v11 = 138543618;
    v12 = managerCopy;
    v13 = 2114;
    v14 = uUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Payload manager “%{public}@” delivered payload “%{public}@”", &v11, 0x16u);
  }

  delegate = [(STConduit *)self delegate];
  [delegate conduit:self didDeliverTransportPayload:payloadCopy];
}

- (void)payloadManagerDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v5 = +[STLog conduit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = invalidateCopy;
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