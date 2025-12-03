@interface SBFocusModesHomeScreenSettingsServer
- (SBFocusModesHomeScreenSettingsServer)init;
- (SBFocusModesHomeScreenSettingsServerDelegate)delegate;
- (void)addSuggestedHomeScreenPageWithRequest:(id)request;
- (void)homeScreenSnapshotsForSuggestedPagesWithRequest:(id)request completion:(id)completion;
- (void)homeScreenSnapshotsWithRequest:(id)request completion:(id)completion;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)updateFocusModeHomeScreenSettingsWithRequest:(id)request;
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

    array = [MEMORY[0x277CBEB18] array];
    connections = v2->_connections;
    v2->_connections = array;

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

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = SBLogFocusModes();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v21 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Received Connection: %{public}@", buf, 0xCu);
  }

  authenticator = [(SBFocusModesHomeScreenSettingsServer *)self authenticator];
  remoteProcess = [connectionCopy remoteProcess];
  auditToken = [remoteProcess auditToken];
  if ([authenticator authenticateAuditToken:auditToken])
  {
    queue = [(SBFocusModesHomeScreenSettingsServer *)self queue];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __82__SBFocusModesHomeScreenSettingsServer_listener_didReceiveConnection_withContext___block_invoke;
    v17 = &unk_2783A92D8;
    v12 = connectionCopy;
    v18 = v12;
    selfCopy = self;
    dispatch_sync(queue, &v14);
    [v12 activate];
  }

  else
  {
    v13 = SBLogFocusModes();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SBHomeScreenConfigurationServer listener:connectionCopy didReceiveConnection:v13 withContext:?];
    }

    [connectionCopy invalidate];
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

- (void)homeScreenSnapshotsWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  delegate = [(SBFocusModesHomeScreenSettingsServer *)self delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate settingsServer:self homeScreenSnapshotsWithRequest:requestCopy completion:completionCopy];
  }
}

- (void)homeScreenSnapshotsForSuggestedPagesWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  delegate = [(SBFocusModesHomeScreenSettingsServer *)self delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate settingsServer:self homeScreenSnapshotsForSuggestedPagesWithRequest:requestCopy completion:completionCopy];
  }
}

- (void)updateFocusModeHomeScreenSettingsWithRequest:(id)request
{
  requestCopy = request;
  delegate = [(SBFocusModesHomeScreenSettingsServer *)self delegate];
  v5 = delegate;
  if (delegate)
  {
    [delegate settingsServer:self updateFocusModeHomeScreenSettingsWithRequest:requestCopy];
  }
}

- (void)addSuggestedHomeScreenPageWithRequest:(id)request
{
  requestCopy = request;
  delegate = [(SBFocusModesHomeScreenSettingsServer *)self delegate];
  v5 = delegate;
  if (delegate)
  {
    [delegate settingsServer:self addSuggestedHomeScreenPageWithRequest:requestCopy];
  }
}

- (SBFocusModesHomeScreenSettingsServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end