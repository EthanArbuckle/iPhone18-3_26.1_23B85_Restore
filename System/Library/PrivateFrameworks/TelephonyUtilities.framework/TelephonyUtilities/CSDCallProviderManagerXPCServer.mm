@interface CSDCallProviderManagerXPCServer
- (CSDCallProviderManagerXPCServer)initWithProviderManager:(id)manager;
- (id)localProvidersByIdentifierForClient:(id)client;
- (id)pairedHostDeviceProvidersByIdentifierForClient:(id)client;
- (id)providersByIdentifierForClient:(id)client;
- (void)defaultAppProvider:(id)provider;
- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)identifier;
- (void)donateUserIntentForProviderWithIdentifier:(id)identifier;
- (void)invalidate;
- (void)launchAppForDialRequest:(id)request reply:(id)reply;
- (void)providersByIdentifier:(id)identifier;
- (void)registerClient:(id)client;
- (void)sortedProviders:(id)providers;
- (void)unregisterClient:(id)client;
@end

@implementation CSDCallProviderManagerXPCServer

- (CSDCallProviderManagerXPCServer)initWithProviderManager:(id)manager
{
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = CSDCallProviderManagerXPCServer;
  v6 = [(CSDCallProviderManagerXPCServer *)&v19 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.callprovidermanagerxpcserver", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_providerManager, manager);
    [(CSDCallProviderManager *)v6->_providerManager addDelegate:v6 queue:v6->_queue];
    v9 = [[CSDClientManager alloc] initWithSerialQueue:v6->_queue];
    clientManager = v6->_clientManager;
    v6->_clientManager = v9;

    v11 = v6->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D6D78;
    block[3] = &unk_100619D38;
    v12 = v6;
    v18 = v12;
    dispatch_sync(v11, block);
    queue = [(CSDCallProviderManagerXPCServer *)v12 queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000D705C;
    v15[3] = &unk_100619D38;
    v16 = v12;
    dispatch_async(queue, v15);
  }

  return v6;
}

- (void)invalidate
{
  queue = [(CSDCallProviderManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7130;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)providersByIdentifierForClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  providerManager = [(CSDCallProviderManagerXPCServer *)self providerManager];
  isRemote = [clientCopy isRemote];

  v8 = [providerManager providersByIdentifierForRemoteClients:isRemote];

  return v8;
}

- (id)localProvidersByIdentifierForClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  providerManager = [(CSDCallProviderManagerXPCServer *)self providerManager];
  isRemote = [clientCopy isRemote];

  v8 = [providerManager localProvidersByIdentifierForRemoteClients:isRemote];

  return v8;
}

- (id)pairedHostDeviceProvidersByIdentifierForClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  providerManager = [(CSDCallProviderManagerXPCServer *)self providerManager];
  isRemote = [clientCopy isRemote];

  v8 = [providerManager pairedHostDeviceProvidersByIdentifierForRemoteClients:isRemote];

  return v8;
}

- (void)providersByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clientManager = [(CSDCallProviderManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = [(CSDCallProviderManagerXPCServer *)self providersByIdentifierForClient:currentClient];
  v8 = [(CSDCallProviderManagerXPCServer *)self localProvidersByIdentifierForClient:currentClient];
  v9 = [(CSDCallProviderManagerXPCServer *)self pairedHostDeviceProvidersByIdentifierForClient:currentClient];
  identifierCopy[2](identifierCopy, v7, v8, v9);
}

- (void)donateUserIntentForProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "callProviderIdentifier: %@", &v8, 0xCu);
  }

  providerManager = [(CSDCallProviderManagerXPCServer *)self providerManager];
  [providerManager donateUserIntentForProviderWithIdentifier:identifierCopy];
}

- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "callProviderIdentifier: %@", &v8, 0xCu);
  }

  providerManager = [(CSDCallProviderManagerXPCServer *)self providerManager];
  [providerManager donateBackgroundCallIntentForProviderWithIdentifier:identifierCopy];
}

- (void)launchAppForDialRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  queue = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = requestCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "dialRequest: %@", &v11, 0xCu);
  }

  providerManager = [(CSDCallProviderManagerXPCServer *)self providerManager];
  [providerManager launchAppForDialRequest:requestCopy completion:replyCopy];
}

- (void)sortedProviders:(id)providers
{
  providersCopy = providers;
  queue = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetching sortedProviders", v11, 2u);
  }

  providerManager = [(CSDCallProviderManagerXPCServer *)self providerManager];
  clientManager = [(CSDCallProviderManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];
  v10 = [providerManager sortedProvidersForRemoteClients:currentClient != 0];
  providersCopy[2](providersCopy, v10);
}

- (void)defaultAppProvider:(id)provider
{
  providerCopy = provider;
  queue = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetching default app provider", v11, 2u);
  }

  providerManager = [(CSDCallProviderManagerXPCServer *)self providerManager];
  clientManager = [(CSDCallProviderManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];
  v10 = [providerManager defaultAppProviderForRemoteClients:currentClient != 0];
  providerCopy[2](providerCopy, v10);
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallProviderManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D79B8;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallProviderManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D7AC0;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

@end