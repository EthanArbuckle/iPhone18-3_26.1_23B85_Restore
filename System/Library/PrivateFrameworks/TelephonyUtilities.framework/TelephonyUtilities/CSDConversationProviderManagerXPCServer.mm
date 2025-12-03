@interface CSDConversationProviderManagerXPCServer
- (CSDConversationProviderManagerXPCServer)initWithConversationProviderManager:(id)manager;
- (TUConversationManager)conversationManager;
- (TUFeatureFlags)featureFlags;
- (void)conversationProviderForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dealloc;
- (void)doesHandle:(id)handle correspondToConversationProvider:(id)provider completionHandler:(id)handler;
- (void)generatePseudonymHandleForConversationProvider:(id)provider expiryDuration:(double)duration URI:(id)i completionHandler:(id)handler;
- (void)invalidate;
- (void)notifyClientsToConnectIfNecessary;
- (void)registerClient:(id)client;
- (void)registerConversationProvider:(id)provider completionHandler:(id)handler;
- (void)registerForCallbacksForProvider:(id)provider completionHandler:(id)handler;
- (void)renewPseudonymHandle:(id)handle forConversationProvider:(id)provider expirationDate:(id)date completionHandler:(id)handler;
- (void)revokePseudonymHandle:(id)handle forConversationProvider:(id)provider completionHandler:(id)handler;
- (void)unregisterClient:(id)client;
@end

@implementation CSDConversationProviderManagerXPCServer

- (CSDConversationProviderManagerXPCServer)initWithConversationProviderManager:(id)manager
{
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = CSDConversationProviderManagerXPCServer;
  v6 = [(CSDConversationProviderManagerXPCServer *)&v19 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.conversationprovidermanagerxpcserver", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_providerManager, manager);
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
    queue = [(CSDConversationProviderManagerXPCServer *)v12 queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000D2348;
    v15[3] = &unk_100619D38;
    v16 = v12;
    dispatch_async(queue, v15);
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

  queue = [(CSDConversationProviderManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2520;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)notifyClientsToConnectIfNecessary
{
  queue = [(CSDConversationProviderManagerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

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

- (void)registerClient:(id)client
{
  clientCopy = client;
  queue = [(CSDConversationProviderManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D2758;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  queue = [(CSDConversationProviderManagerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D2860;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)conversationProviderForIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = [(CSDConversationProviderManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D298C;
  block[3] = &unk_10061AF20;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)generatePseudonymHandleForConversationProvider:(id)provider expiryDuration:(double)duration URI:(id)i completionHandler:(id)handler
{
  providerCopy = provider;
  iCopy = i;
  handlerCopy = handler;
  queue = [(CSDConversationProviderManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2B98;
  block[3] = &unk_10061AF48;
  v18 = iCopy;
  selfCopy = self;
  durationCopy = duration;
  v20 = providerCopy;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = providerCopy;
  v16 = iCopy;
  dispatch_async(queue, block);
}

- (void)renewPseudonymHandle:(id)handle forConversationProvider:(id)provider expirationDate:(id)date completionHandler:(id)handler
{
  handleCopy = handle;
  providerCopy = provider;
  dateCopy = date;
  handlerCopy = handler;
  queue = [(CSDConversationProviderManagerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2DA0;
  block[3] = &unk_10061AF70;
  v20 = handleCopy;
  selfCopy = self;
  v22 = providerCopy;
  v23 = dateCopy;
  v24 = handlerCopy;
  v15 = handlerCopy;
  v16 = dateCopy;
  v17 = providerCopy;
  v18 = handleCopy;
  dispatch_async(queue, block);
}

- (void)revokePseudonymHandle:(id)handle forConversationProvider:(id)provider completionHandler:(id)handler
{
  handleCopy = handle;
  providerCopy = provider;
  handlerCopy = handler;
  queue = [(CSDConversationProviderManagerXPCServer *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D2F6C;
  v15[3] = &unk_10061AF98;
  v16 = handleCopy;
  selfCopy = self;
  v18 = providerCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = providerCopy;
  v14 = handleCopy;
  dispatch_async(queue, v15);
}

- (void)doesHandle:(id)handle correspondToConversationProvider:(id)provider completionHandler:(id)handler
{
  handleCopy = handle;
  providerCopy = provider;
  handlerCopy = handler;
  queue = [(CSDConversationProviderManagerXPCServer *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D3134;
  v15[3] = &unk_10061AF98;
  v16 = handleCopy;
  selfCopy = self;
  v18 = providerCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = providerCopy;
  v14 = handleCopy;
  dispatch_async(queue, v15);
}

- (void)registerForCallbacksForProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  clientManager = [(CSDConversationProviderManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = providerCopy;
    v14 = 2112;
    v15 = currentClient;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "registerForCallbacksForProvider received over XPC with providerIdentifier: %@ client: %@", &v12, 0x16u);
  }

  v11 = +[CSDConversationProviderManager sharedInstance];
  [v11 startTrackingClient:currentClient forProviderIdentifier:providerCopy];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)registerConversationProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  clientManager = [(CSDConversationProviderManagerXPCServer *)self clientManager];
  currentClient = [clientManager currentClient];

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = providerCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "registerConversationProvider received over XPC with provider: %@", buf, 0xCu);
  }

  providerManager = [(CSDConversationProviderManagerXPCServer *)self providerManager];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D34C4;
  v15[3] = &unk_10061AFC0;
  v16 = providerCopy;
  v17 = currentClient;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = currentClient;
  v14 = providerCopy;
  [providerManager registerConversationProvider:v14 completionHandler:v15];
}

@end