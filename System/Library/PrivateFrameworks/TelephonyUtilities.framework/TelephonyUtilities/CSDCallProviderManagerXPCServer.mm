@interface CSDCallProviderManagerXPCServer
- (CSDCallProviderManagerXPCServer)initWithProviderManager:(id)a3;
- (id)localProvidersByIdentifierForClient:(id)a3;
- (id)pairedHostDeviceProvidersByIdentifierForClient:(id)a3;
- (id)providersByIdentifierForClient:(id)a3;
- (void)defaultAppProvider:(id)a3;
- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)a3;
- (void)donateUserIntentForProviderWithIdentifier:(id)a3;
- (void)invalidate;
- (void)launchAppForDialRequest:(id)a3 reply:(id)a4;
- (void)providersByIdentifier:(id)a3;
- (void)registerClient:(id)a3;
- (void)sortedProviders:(id)a3;
- (void)unregisterClient:(id)a3;
@end

@implementation CSDCallProviderManagerXPCServer

- (CSDCallProviderManagerXPCServer)initWithProviderManager:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = CSDCallProviderManagerXPCServer;
  v6 = [(CSDCallProviderManagerXPCServer *)&v19 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.callprovidermanagerxpcserver", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_providerManager, a3);
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
    v13 = [(CSDCallProviderManagerXPCServer *)v12 queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000D705C;
    v15[3] = &unk_100619D38;
    v16 = v12;
    dispatch_async(v13, v15);
  }

  return v6;
}

- (void)invalidate
{
  v3 = [(CSDCallProviderManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7130;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)providersByIdentifierForClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDCallProviderManagerXPCServer *)self providerManager];
  v7 = [v4 isRemote];

  v8 = [v6 providersByIdentifierForRemoteClients:v7];

  return v8;
}

- (id)localProvidersByIdentifierForClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDCallProviderManagerXPCServer *)self providerManager];
  v7 = [v4 isRemote];

  v8 = [v6 localProvidersByIdentifierForRemoteClients:v7];

  return v8;
}

- (id)pairedHostDeviceProvidersByIdentifierForClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDCallProviderManagerXPCServer *)self providerManager];
  v7 = [v4 isRemote];

  v8 = [v6 pairedHostDeviceProvidersByIdentifierForRemoteClients:v7];

  return v8;
}

- (void)providersByIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDCallProviderManagerXPCServer *)self clientManager];
  v10 = [v6 currentClient];

  v7 = [(CSDCallProviderManagerXPCServer *)self providersByIdentifierForClient:v10];
  v8 = [(CSDCallProviderManagerXPCServer *)self localProvidersByIdentifierForClient:v10];
  v9 = [(CSDCallProviderManagerXPCServer *)self pairedHostDeviceProvidersByIdentifierForClient:v10];
  v4[2](v4, v7, v8, v9);
}

- (void)donateUserIntentForProviderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "callProviderIdentifier: %@", &v8, 0xCu);
  }

  v7 = [(CSDCallProviderManagerXPCServer *)self providerManager];
  [v7 donateUserIntentForProviderWithIdentifier:v4];
}

- (void)donateBackgroundCallIntentForProviderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "callProviderIdentifier: %@", &v8, 0xCu);
  }

  v7 = [(CSDCallProviderManagerXPCServer *)self providerManager];
  [v7 donateBackgroundCallIntentForProviderWithIdentifier:v4];
}

- (void)launchAppForDialRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "dialRequest: %@", &v11, 0xCu);
  }

  v10 = [(CSDCallProviderManagerXPCServer *)self providerManager];
  [v10 launchAppForDialRequest:v6 completion:v7];
}

- (void)sortedProviders:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetching sortedProviders", v11, 2u);
  }

  v7 = [(CSDCallProviderManagerXPCServer *)self providerManager];
  v8 = [(CSDCallProviderManagerXPCServer *)self clientManager];
  v9 = [v8 currentClient];
  v10 = [v7 sortedProvidersForRemoteClients:v9 != 0];
  v4[2](v4, v10);
}

- (void)defaultAppProvider:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fetching default app provider", v11, 2u);
  }

  v7 = [(CSDCallProviderManagerXPCServer *)self providerManager];
  v8 = [(CSDCallProviderManagerXPCServer *)self clientManager];
  v9 = [v8 currentClient];
  v10 = [v7 defaultAppProviderForRemoteClients:v9 != 0];
  v4[2](v4, v10);
}

- (void)registerClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D79B8;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)unregisterClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallProviderManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D7AC0;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end