@interface SBApplicationUserQuitMonitorServer
- (SBApplicationUserQuitMonitorServer)init;
- (void)_queue_addConnection:(id)a3;
- (void)_queue_removeConnection:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)userClosedLastSceneOfApplicationWithBundleID:(id)a3;
@end

@implementation SBApplicationUserQuitMonitorServer

- (SBApplicationUserQuitMonitorServer)init
{
  v16.receiver = self;
  v16.super_class = SBApplicationUserQuitMonitorServer;
  v2 = [(SBApplicationUserQuitMonitorServer *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    connections = v2->_connections;
    v2->_connections = v3;

    v5 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.monitorAppSwitcherUserQuit"];
    clientAuthenticator = v2->_clientAuthenticator;
    v2->_clientAuthenticator = v5;

    v7 = BSDispatchQueueCreateWithQualityOfService();
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = MEMORY[0x277CF32A0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__SBApplicationUserQuitMonitorServer_init__block_invoke;
    v14[3] = &unk_2783A9A18;
    v10 = v2;
    v15 = v10;
    v11 = [v9 listenerWithConfigurator:v14];
    v12 = v10[2];
    v10[2] = v11;

    [v10[2] activate];
  }

  return v2;
}

void __42__SBApplicationUserQuitMonitorServer_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D669E8] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)userClosedLastSceneOfApplicationWithBundleID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__SBApplicationUserQuitMonitorServer_userClosedLastSceneOfApplicationWithBundleID___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __83__SBApplicationUserQuitMonitorServer_userClosedLastSceneOfApplicationWithBundleID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) remoteTarget];
        [v7 userClosedLastSceneOfApplicationWithBundleID:*(a1 + 40)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogAppQuitMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Received Connection: %{public}@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__SBApplicationUserQuitMonitorServer_listener_didReceiveConnection_withContext___block_invoke;
  v15[3] = &unk_2783AB730;
  v15[4] = self;
  [v6 configureConnection:v15];
  clientAuthenticator = self->_clientAuthenticator;
  v9 = [v6 remoteProcess];
  v10 = [v9 auditToken];
  LODWORD(clientAuthenticator) = [(FBServiceClientAuthenticator *)clientAuthenticator authenticateAuditToken:v10];

  if (clientAuthenticator)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__SBApplicationUserQuitMonitorServer_listener_didReceiveConnection_withContext___block_invoke_9;
    block[3] = &unk_2783A92D8;
    block[4] = self;
    v12 = v6;
    v14 = v12;
    dispatch_async(queue, block);
    [v12 activate];
  }

  else
  {
    [v6 invalidate];
  }
}

void __80__SBApplicationUserQuitMonitorServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D669E8];
  v4 = a2;
  v5 = [v3 serviceQuality];
  [v4 setServiceQuality:v5];

  v6 = [MEMORY[0x277D669E8] interface];
  [v4 setInterface:v6];

  [v4 setInterfaceTarget:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__SBApplicationUserQuitMonitorServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v7[3] = &unk_2783B4EB0;
  v7[4] = *(a1 + 32);
  [v4 setInvalidationHandler:v7];
  [v4 setTargetQueue:*(*(a1 + 32) + 24)];
}

void __80__SBApplicationUserQuitMonitorServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogAppQuitMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Received Connection Invalidation: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 32) _queue_removeConnection:v3];
}

- (void)_queue_addConnection:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogAppQuitMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Adding Connection: %{public}@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections addObject:v4];
}

- (void)_queue_removeConnection:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogAppQuitMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Removing Connection: %{public}@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections removeObject:v4];
}

@end