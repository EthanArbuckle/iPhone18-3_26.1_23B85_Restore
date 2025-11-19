@interface SBMultitaskingApplicationShortcutService
- (SBMultitaskingApplicationShortcutService)init;
- (int64_t)_switcherShortcutActionForRequestedAction:(int64_t)a3;
- (void)_handleDisconnectForServiceConnection:(id)a3;
- (void)fetchSupportedShortcutActionsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)performShortcutAction:(id)a3 forBundleIdentifier:(id)a4;
- (void)stopObservingUpdatesForBundleIdentifier:(id)a3;
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
    v3 = [SBApp windowSceneManager];
    v4 = [v3 activeDisplayWindowScene];

    v17 = v4;
    v5 = [v4 homeScreenController];
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
          v13 = [v5 supportedMultitaskingShortcutActionsForBundleIdentifier:v12];
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

- (void)performShortcutAction:(id)a3 forBundleIdentifier:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
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

- (void)fetchSupportedShortcutActionsForBundleIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BSServiceConnectionHost *)self->_spotlightConnection remoteProcess];
  [v8 pid];
  v9 = [MEMORY[0x277CF3280] currentContext];
  v10 = [v9 remoteProcess];
  [v10 pid];

  v13 = v6;
  v11 = v7;
  v12 = v6;
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

- (void)stopObservingUpdatesForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BSServiceConnectionHost *)self->_spotlightConnection remoteProcess];
  v6 = [v5 pid];
  v7 = [MEMORY[0x277CF3280] currentContext];
  v8 = [v7 remoteProcess];
  v9 = [v8 pid];

  if (v6 == v9)
  {
    v10 = v4;
    BSDispatchMain();
  }
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v6 = a4;
  serviceClientAuthenticator = self->_serviceClientAuthenticator;
  v8 = [v6 remoteProcess];
  v9 = [v8 auditToken];
  v23 = 0;
  v10 = [(FBServiceClientAuthenticator *)serviceClientAuthenticator authenticateAuditToken:v9 error:&v23];
  v11 = v23;

  if (v10)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __86__SBMultitaskingApplicationShortcutService_listener_didReceiveConnection_withContext___block_invoke;
    v22[3] = &unk_2783AB730;
    v22[4] = self;
    [v6 configureConnection:v22];
    v12 = [v6 remoteProcess];
    v13 = [v12 bundleIdentifier];
    v14 = [v13 isEqualToString:@"com.apple.Spotlight"];

    if (v14)
    {
      serviceQueue = self->_serviceQueue;
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __86__SBMultitaskingApplicationShortcutService_listener_didReceiveConnection_withContext___block_invoke_4;
      v19 = &unk_2783A92D8;
      v20 = self;
      v21 = v6;
      dispatch_async(serviceQueue, &v16);
    }

    [v6 activate];
  }

  else
  {
    [v6 invalidate];
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

- (void)_handleDisconnectForServiceConnection:(id)a3
{
  serviceQueue = self->_serviceQueue;
  v5 = a3;
  dispatch_assert_queue_V2(serviceQueue);
  v6 = [v5 remoteProcess];

  v7 = [v6 bundleIdentifier];
  v8 = [v7 isEqualToString:@"com.apple.Spotlight"];

  if (v8)
  {
    spotlightConnection = self->_spotlightConnection;
    self->_spotlightConnection = 0;

    BSDispatchMain();
  }
}

- (int64_t)_switcherShortcutActionForRequestedAction:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_21F8A77B0[a3];
  }
}

@end