@interface SBMultitaskingApplicationShortcutService
- (SBMultitaskingApplicationShortcutService)init;
- (int64_t)_switcherShortcutActionForRequestedAction:(int64_t)action;
- (void)_handleDisconnectForServiceConnection:(id)connection;
- (void)fetchSupportedShortcutActionsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)performShortcutAction:(id)action forBundleIdentifier:(id)identifier;
- (void)stopObservingUpdatesForBundleIdentifier:(id)identifier;
- (void)updateSupportedShortcutsForInterestedClients;
@end

@implementation SBMultitaskingApplicationShortcutService

- (SBMultitaskingApplicationShortcutService)init
{
  v14.receiver = self;
  v14.super_class = SBMultitaskingApplicationShortcutService;
  v2 = [(SBMultitaskingApplicationShortcutService *)&v14 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.multitaskingshortcut.performAction"];
    serviceClientAuthenticator = v2->_serviceClientAuthenticator;
    v2->_serviceClientAuthenticator = v3;

    v5 = BSDispatchQueueCreateWithQualityOfService();
    serviceQueue = v2->_serviceQueue;
    v2->_serviceQueue = v5;

    v7 = MEMORY[0x277CF32A0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__SBMultitaskingApplicationShortcutService_init__block_invoke;
    v12[3] = &unk_2783A9A18;
    v8 = v2;
    v13 = v8;
    v9 = [v7 listenerWithConfigurator:v12];
    v10 = v8[1];
    v8[1] = v9;

    [v8[1] activate];
  }

  return v2;
}

void __48__SBMultitaskingApplicationShortcutService_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66B40] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)updateSupportedShortcutsForInterestedClients
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_spotlightInterestedBundleIDs count])
  {
    windowSceneManager = [SBApp windowSceneManager];
    activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];

    v17 = activeDisplayWindowScene;
    homeScreenController = [activeDisplayWindowScene homeScreenController];
    v6 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = self->_spotlightInterestedBundleIDs;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [homeScreenController supportedMultitaskingShortcutActionsForBundleIdentifier:v12];
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
          [v6 setObject:v14 forKey:v12];
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    serviceQueue = self->_serviceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__SBMultitaskingApplicationShortcutService_updateSupportedShortcutsForInterestedClients__block_invoke;
    block[3] = &unk_2783A92D8;
    block[4] = self;
    v19 = v6;
    v16 = v6;
    dispatch_async(serviceQueue, block);
  }
}

void __88__SBMultitaskingApplicationShortcutService_updateSupportedShortcutsForInterestedClients__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v3 = [v2 remoteTarget];
    [v3 updateSupportedShortcutActionsForBundleIdentifiers:*(a1 + 40)];
  }
}

- (void)performShortcutAction:(id)action forBundleIdentifier:(id)identifier
{
  actionCopy = action;
  identifierCopy = identifier;
  v6 = identifierCopy;
  v7 = actionCopy;
  BSDispatchMain();
}

void __86__SBMultitaskingApplicationShortcutService_performShortcutAction_forBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [SBApp windowSceneManager];
  v5 = [v2 activeDisplayWindowScene];

  v3 = [v5 switcherController];
  v4 = [*(a1 + 32) _switcherShortcutActionForRequestedAction:{objc_msgSend(*(a1 + 40), "integerValue")}];
  if ([v3 canPerformKeyboardShortcutAction:v4 forBundleIdentifier:*(a1 + 48) orSceneIdentifier:0])
  {
    [v3 performKeyboardShortcutAction:v4 forBundleIdentifier:*(a1 + 48) orSceneIdentifier:0];
  }
}

- (void)fetchSupportedShortcutActionsForBundleIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  remoteProcess = [(BSServiceConnectionHost *)self->_spotlightConnection remoteProcess];
  [remoteProcess pid];
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess2 = [currentContext remoteProcess];
  [remoteProcess2 pid];

  v13 = identifierCopy;
  v11 = handlerCopy;
  v12 = identifierCopy;
  BSDispatchMain();
}

void __115__SBMultitaskingApplicationShortcutService_fetchSupportedShortcutActionsForBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(*(a1 + 32) + 40);
    if (!v2)
    {
      v3 = objc_opt_new();
      v4 = *(a1 + 32);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      v2 = *(*(a1 + 32) + 40);
    }

    [v2 addObject:*(a1 + 40)];
  }

  v6 = [SBApp windowSceneManager];
  v11 = [v6 activeDisplayWindowScene];

  v7 = [v11 homeScreenController];
  v8 = [v7 supportedMultitaskingShortcutActionsForBundleIdentifier:*(a1 + 40)];
  v9 = *(a1 + 48);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  (*(v9 + 16))(v9, v10, 0);
}

- (void)stopObservingUpdatesForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  remoteProcess = [(BSServiceConnectionHost *)self->_spotlightConnection remoteProcess];
  v6 = [remoteProcess pid];
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess2 = [currentContext remoteProcess];
  v9 = [remoteProcess2 pid];

  if (v6 == v9)
  {
    v10 = identifierCopy;
    BSDispatchMain();
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  remoteProcess = [connectionCopy remoteProcess];
  auditToken = [remoteProcess auditToken];
  v23 = 0;
  v10 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:auditToken error:&v23];
  v11 = v23;

  if (v10)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __86__SBMultitaskingApplicationShortcutService_listener_didReceiveConnection_withContext___block_invoke;
    v22[3] = &unk_2783AB730;
    v22[4] = self;
    [connectionCopy configureConnection:v22];
    remoteProcess2 = [connectionCopy remoteProcess];
    bundleIdentifier = [remoteProcess2 bundleIdentifier];
    v14 = [bundleIdentifier isEqualToString:@"com.apple.Spotlight"];

    if (v14)
    {
      serviceQueue = self->_serviceQueue;
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __86__SBMultitaskingApplicationShortcutService_listener_didReceiveConnection_withContext___block_invoke_4;
      v19 = &unk_2783A92D8;
      selfCopy = self;
      v21 = connectionCopy;
      dispatch_async(serviceQueue, &v16);
    }

    [connectionCopy activate];
  }

  else
  {
    [connectionCopy invalidate];
  }
}

void __86__SBMultitaskingApplicationShortcutService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66B40] interface];
  [v3 setInterface:v4];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  v5 = [MEMORY[0x277D66B40] serviceQuality];
  [v3 setServiceQuality:v5];

  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__SBMultitaskingApplicationShortcutService_listener_didReceiveConnection_withContext___block_invoke_2;
  v8[3] = &unk_2783AB6E0;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__SBMultitaskingApplicationShortcutService_listener_didReceiveConnection_withContext___block_invoke_3;
  v6[3] = &unk_2783AB6E0;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __86__SBMultitaskingApplicationShortcutService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleDisconnectForServiceConnection:v5];
  }
}

void __86__SBMultitaskingApplicationShortcutService_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleDisconnectForServiceConnection:v5];
  }
}

- (void)_handleDisconnectForServiceConnection:(id)connection
{
  serviceQueue = self->_serviceQueue;
  connectionCopy = connection;
  dispatch_assert_queue_V2(serviceQueue);
  remoteProcess = [connectionCopy remoteProcess];

  bundleIdentifier = [remoteProcess bundleIdentifier];
  v8 = [bundleIdentifier isEqualToString:@"com.apple.Spotlight"];

  if (v8)
  {
    spotlightConnection = self->_spotlightConnection;
    self->_spotlightConnection = 0;

    BSDispatchMain();
  }
}

- (int64_t)_switcherShortcutActionForRequestedAction:(int64_t)action
{
  if (action > 4)
  {
    return 0;
  }

  else
  {
    return qword_21F8A77B0[action];
  }
}

@end