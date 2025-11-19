@interface SBFocusModesHomeScreenSettingsServer
- (SBFocusModesHomeScreenSettingsServer)init;
- (SBFocusModesHomeScreenSettingsServerDelegate)delegate;
- (void)addSuggestedHomeScreenPageWithRequest:(id)a3;
- (void)homeScreenSnapshotsForSuggestedPagesWithRequest:(id)a3 completion:(id)a4;
- (void)homeScreenSnapshotsWithRequest:(id)a3 completion:(id)a4;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)updateFocusModeHomeScreenSettingsWithRequest:(id)a3;
@end

@implementation SBFocusModesHomeScreenSettingsServer

- (SBFocusModesHomeScreenSettingsServer)init
{
  v16.receiver = self;
  v16.super_class = SBFocusModesHomeScreenSettingsServer;
  v2 = [(SBFocusModesHomeScreenSettingsServer *)&v16 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.focus-modes-home-screen-settings"];
    authenticator = v2->_authenticator;
    v2->_authenticator = v3;

    v5 = dispatch_queue_create("com.apple.SpringBoard.SBSFocusModesHomeScreenSettingsService.queue", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [MEMORY[0x277CBEB18] array];
    connections = v2->_connections;
    v2->_connections = v7;

    v9 = MEMORY[0x277CF32A0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__SBFocusModesHomeScreenSettingsServer_init__block_invoke;
    v14[3] = &unk_2783A9A18;
    v10 = v2;
    v15 = v10;
    v11 = [v9 listenerWithConfigurator:v14];
    listener = v10->_listener;
    v10->_listener = v11;
  }

  return v2;
}

void __44__SBFocusModesHomeScreenSettingsServer_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66A88] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogFocusModes();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Received Connection: %{public}@", buf, 0xCu);
  }

  v8 = [(SBFocusModesHomeScreenSettingsServer *)self authenticator];
  v9 = [v6 remoteProcess];
  v10 = [v9 auditToken];
  if ([v8 authenticateAuditToken:v10])
  {
    v11 = [(SBFocusModesHomeScreenSettingsServer *)self queue];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __82__SBFocusModesHomeScreenSettingsServer_listener_didReceiveConnection_withContext___block_invoke;
    v17 = &unk_2783A92D8;
    v12 = v6;
    v18 = v12;
    v19 = self;
    dispatch_sync(v11, &v14);
    [v12 activate];
  }

  else
  {
    v13 = SBLogFocusModes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenConfigurationServer listener:v6 didReceiveConnection:v13 withContext:?];
    }

    [v6 invalidate];
  }
}

void __82__SBFocusModesHomeScreenSettingsServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__SBFocusModesHomeScreenSettingsServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v6[3] = &unk_2783AB730;
  v6[4] = *(a1 + 40);
  [v2 configureConnection:v6];
  v3 = SBLogFocusModes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Adding Connection: %{public}@", buf, 0xCu);
  }

  v5 = [*(a1 + 40) connections];
  [v5 addObject:*(a1 + 32)];
}

void __82__SBFocusModesHomeScreenSettingsServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66A88] serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = [MEMORY[0x277D66A88] interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __82__SBFocusModesHomeScreenSettingsServer_listener_didReceiveConnection_withContext___block_invoke_3;
  v10 = &unk_2783AB6E0;
  objc_copyWeak(&v11, &location);
  [v3 setInvalidationHandler:&v7];
  v6 = [*(a1 + 32) queue];
  [v3 setTargetQueue:v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __82__SBFocusModesHomeScreenSettingsServer_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogFocusModes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Received Connection Invalidation: %{public}@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained connections];
    [v7 removeObject:v3];
  }
}

- (void)homeScreenSnapshotsWithRequest:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(SBFocusModesHomeScreenSettingsServer *)self delegate];
  v8 = v7;
  if (v7)
  {
    [v7 settingsServer:self homeScreenSnapshotsWithRequest:v9 completion:v6];
  }
}

- (void)homeScreenSnapshotsForSuggestedPagesWithRequest:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(SBFocusModesHomeScreenSettingsServer *)self delegate];
  v8 = v7;
  if (v7)
  {
    [v7 settingsServer:self homeScreenSnapshotsForSuggestedPagesWithRequest:v9 completion:v6];
  }
}

- (void)updateFocusModeHomeScreenSettingsWithRequest:(id)a3
{
  v6 = a3;
  v4 = [(SBFocusModesHomeScreenSettingsServer *)self delegate];
  v5 = v4;
  if (v4)
  {
    [v4 settingsServer:self updateFocusModeHomeScreenSettingsWithRequest:v6];
  }
}

- (void)addSuggestedHomeScreenPageWithRequest:(id)a3
{
  v6 = a3;
  v4 = [(SBFocusModesHomeScreenSettingsServer *)self delegate];
  v5 = v4;
  if (v4)
  {
    [v4 settingsServer:self addSuggestedHomeScreenPageWithRequest:v6];
  }
}

- (SBFocusModesHomeScreenSettingsServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end