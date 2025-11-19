@interface CSDConversationProviderManagerXPCServer
- (CSDConversationProviderManagerXPCServer)initWithConversationProviderManager:(id)a3;
- (TUConversationManager)conversationManager;
- (TUFeatureFlags)featureFlags;
- (void)conversationProviderForIdentifier:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)doesHandle:(id)a3 correspondToConversationProvider:(id)a4 completionHandler:(id)a5;
- (void)generatePseudonymHandleForConversationProvider:(id)a3 expiryDuration:(double)a4 URI:(id)a5 completionHandler:(id)a6;
- (void)invalidate;
- (void)notifyClientsToConnectIfNecessary;
- (void)registerClient:(id)a3;
- (void)registerConversationProvider:(id)a3 completionHandler:(id)a4;
- (void)registerForCallbacksForProvider:(id)a3 completionHandler:(id)a4;
- (void)renewPseudonymHandle:(id)a3 forConversationProvider:(id)a4 expirationDate:(id)a5 completionHandler:(id)a6;
- (void)revokePseudonymHandle:(id)a3 forConversationProvider:(id)a4 completionHandler:(id)a5;
- (void)unregisterClient:(id)a3;
@end

@implementation CSDConversationProviderManagerXPCServer

- (CSDConversationProviderManagerXPCServer)initWithConversationProviderManager:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = CSDConversationProviderManagerXPCServer;
  v6 = [(CSDConversationProviderManagerXPCServer *)&v19 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.conversationprovidermanagerxpcserver", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_providerManager, a3);
    v9 = [[CSDClientManager alloc] initWithSerialQueue:v6->_queue];
    clientManager = v6->_clientManager;
    v6->_clientManager = v9;

    v11 = v6->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D1DE0;
    block[3] = &unk_100619D38;
    v12 = v6;
    v18 = v12;
    dispatch_sync(v11, block);
    v13 = [(CSDConversationProviderManagerXPCServer *)v12 queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000D2348;
    v15[3] = &unk_100619D38;
    v16 = v12;
    dispatch_async(v13, v15);
  }

  return v6;
}

- (void)dealloc
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deallocing ProviderManagerXPCServer", buf, 2u);
  }

  notify_cancel(self->_clientsShouldConnectToken);
  v4.receiver = self;
  v4.super_class = CSDConversationProviderManagerXPCServer;
  [(CSDConversationProviderManagerXPCServer *)&v4 dealloc];
}

- (void)invalidate
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidating ProviderManagerXPCServer", buf, 2u);
  }

  v4 = [(CSDConversationProviderManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2520;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)notifyClientsToConnectIfNecessary
{
  v3 = [(CSDConversationProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NOTIFYING CLIENTS TO CONNECT", v5, 2u);
  }

  notify_set_state(self->_clientsShouldConnectToken, 1uLL);
  notify_post("CSDConversationProviderManagerClientsShouldConnectNotification");
}

- (TUFeatureFlags)featureFlags
{
  featureFlags = self->_featureFlags;
  if (!featureFlags)
  {
    v4 = objc_alloc_init(TUFeatureFlags);
    v5 = self->_featureFlags;
    self->_featureFlags = v4;

    featureFlags = self->_featureFlags;
  }

  return featureFlags;
}

- (TUConversationManager)conversationManager
{
  conversationManager = self->_conversationManager;
  if (!conversationManager)
  {
    v4 = objc_alloc_init(TUConversationManager);
    v5 = self->_conversationManager;
    self->_conversationManager = v4;

    conversationManager = self->_conversationManager;
  }

  return conversationManager;
}

- (void)registerClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationProviderManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D2758;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)unregisterClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDConversationProviderManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D2860;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)conversationProviderForIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationProviderManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D298C;
  block[3] = &unk_10061AF20;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)generatePseudonymHandleForConversationProvider:(id)a3 expiryDuration:(double)a4 URI:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(CSDConversationProviderManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2B98;
  block[3] = &unk_10061AF48;
  v18 = v11;
  v19 = self;
  v22 = a4;
  v20 = v10;
  v21 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(v13, block);
}

- (void)renewPseudonymHandle:(id)a3 forConversationProvider:(id)a4 expirationDate:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CSDConversationProviderManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2DA0;
  block[3] = &unk_10061AF70;
  v20 = v10;
  v21 = self;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)revokePseudonymHandle:(id)a3 forConversationProvider:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationProviderManagerXPCServer *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D2F6C;
  v15[3] = &unk_10061AF98;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)doesHandle:(id)a3 correspondToConversationProvider:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDConversationProviderManagerXPCServer *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D3134;
  v15[3] = &unk_10061AF98;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)registerForCallbacksForProvider:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationProviderManagerXPCServer *)self clientManager];
  v9 = [v8 currentClient];

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "registerForCallbacksForProvider received over XPC with providerIdentifier: %@ client: %@", &v12, 0x16u);
  }

  v11 = +[CSDConversationProviderManager sharedInstance];
  [v11 startTrackingClient:v9 forProviderIdentifier:v6];

  if (v7)
  {
    v7[2](v7, 0);
  }
}

- (void)registerConversationProvider:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationProviderManagerXPCServer *)self clientManager];
  v9 = [v8 currentClient];

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "registerConversationProvider received over XPC with provider: %@", buf, 0xCu);
  }

  v11 = [(CSDConversationProviderManagerXPCServer *)self providerManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D34C4;
  v15[3] = &unk_10061AFC0;
  v16 = v6;
  v17 = v9;
  v18 = v7;
  v12 = v7;
  v13 = v9;
  v14 = v6;
  [v11 registerConversationProvider:v14 completionHandler:v15];
}

@end