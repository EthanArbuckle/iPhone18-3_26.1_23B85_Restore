@interface SBSwitcherDemoCommandsServer
- (BOOL)loadStashedSwitcherModelFromPath:(id)path;
- (BOOL)setShouldDisableSwitcherModelUpdates:(id)updates;
- (BOOL)stashSwitcherModelToPath:(id)path;
- (BOOL)updateHiddenApplicationBundleIDs:(id)ds;
- (SBSwitcherDemoCommandsServer)initWithRecentAppLayouts:(id)layouts demoFilteringController:(id)controller;
- (void)_queue_addConnection:(id)connection;
- (void)_queue_removeConnection:(id)connection;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation SBSwitcherDemoCommandsServer

- (SBSwitcherDemoCommandsServer)initWithRecentAppLayouts:(id)layouts demoFilteringController:(id)controller
{
  layoutsCopy = layouts;
  controllerCopy = controller;
  v26.receiver = self;
  v26.super_class = SBSwitcherDemoCommandsServer;
  v9 = [(SBSwitcherDemoCommandsServer *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_demoFilteringController, controller);
    objc_storeStrong(&v10->_recents, layouts);
    v11 = +[SBAppSwitcherDomain rootSettings];
    switcherSettings = v10->_switcherSettings;
    v10->_switcherSettings = v11;

    array = [MEMORY[0x277CBEB18] array];
    connections = v10->_connections;
    v10->_connections = array;

    v15 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.switcherDemoCommands"];
    clientAuthenticator = v10->_clientAuthenticator;
    v10->_clientAuthenticator = v15;

    v17 = BSDispatchQueueCreateWithQualityOfService();
    queue = v10->_queue;
    v10->_queue = v17;

    v19 = MEMORY[0x277CF32A0];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __81__SBSwitcherDemoCommandsServer_initWithRecentAppLayouts_demoFilteringController___block_invoke;
    v24[3] = &unk_2783A9A18;
    v20 = v10;
    v25 = v20;
    v21 = [v19 listenerWithConfigurator:v24];
    v22 = v20[3];
    v20[3] = v21;

    [v20[3] activate];
  }

  return v10;
}

void __81__SBSwitcherDemoCommandsServer_initWithRecentAppLayouts_demoFilteringController___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66C58] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (BOOL)loadStashedSwitcherModelFromPath:(id)path
{
  pathCopy = path;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SBSwitcherDemoCommandsServer_loadStashedSwitcherModelFromPath___block_invoke;
  v10[3] = &unk_2783B6880;
  v11 = pathCopy;
  selfCopy = self;
  v13 = v5;
  v14 = &v15;
  v6 = v5;
  v7 = pathCopy;
  dispatch_async(MEMORY[0x277D85CD0], v10);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v8;
}

intptr_t __65__SBSwitcherDemoCommandsServer_loadStashedSwitcherModelFromPath___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 40) + 56) _loadStashedModelAtPath:*(a1 + 32)];
  }

  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

- (BOOL)stashSwitcherModelToPath:(id)path
{
  pathCopy = path;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__SBSwitcherDemoCommandsServer_stashSwitcherModelToPath___block_invoke;
  v10[3] = &unk_2783B6880;
  v11 = pathCopy;
  selfCopy = self;
  v13 = v5;
  v14 = &v15;
  v6 = v5;
  v7 = pathCopy;
  dispatch_async(MEMORY[0x277D85CD0], v10);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v8;
}

intptr_t __57__SBSwitcherDemoCommandsServer_stashSwitcherModelToPath___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 40) + 56) _stashModelToPath:*(a1 + 32)];
  }

  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

- (BOOL)setShouldDisableSwitcherModelUpdates:(id)updates
{
  updatesCopy = updates;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SBSwitcherDemoCommandsServer_setShouldDisableSwitcherModelUpdates___block_invoke;
  v10[3] = &unk_2783BE7C8;
  v10[4] = self;
  v11 = updatesCopy;
  v12 = v5;
  v13 = &v14;
  v6 = v5;
  v7 = updatesCopy;
  dispatch_async(MEMORY[0x277D85CD0], v10);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

intptr_t __69__SBSwitcherDemoCommandsServer_setShouldDisableSwitcherModelUpdates___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setShouldDisableSwitcherModelUpdatesForDemo:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

- (BOOL)updateHiddenApplicationBundleIDs:(id)ds
{
  dsCopy = ds;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SBSwitcherDemoCommandsServer_updateHiddenApplicationBundleIDs___block_invoke;
  v10[3] = &unk_2783BE7C8;
  v10[4] = self;
  v11 = dsCopy;
  v12 = v5;
  v13 = &v14;
  v6 = v5;
  v7 = dsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v10);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

intptr_t __65__SBSwitcherDemoCommandsServer_updateHiddenApplicationBundleIDs___block_invoke(void *a1)
{
  [*(a1[4] + 32) setHiddenApplicationBundleIDs:a1[5]];
  *(*(a1[7] + 8) + 24) = 1;
  v2 = a1[6];

  return dispatch_semaphore_signal(v2);
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v17 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Received Connection: %{public}@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__SBSwitcherDemoCommandsServer_listener_didReceiveConnection_withContext___block_invoke;
  v15[3] = &unk_2783AB730;
  v15[4] = self;
  [connectionCopy configureConnection:v15];
  clientAuthenticator = self->_clientAuthenticator;
  remoteProcess = [connectionCopy remoteProcess];
  auditToken = [remoteProcess auditToken];
  LODWORD(clientAuthenticator) = [(FBServiceClientAuthenticator *)clientAuthenticator authenticateAuditToken:auditToken];

  if (clientAuthenticator)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__SBSwitcherDemoCommandsServer_listener_didReceiveConnection_withContext___block_invoke_10;
    block[3] = &unk_2783A92D8;
    block[4] = self;
    v12 = connectionCopy;
    v14 = v12;
    dispatch_async(queue, block);
    [v12 activate];
  }

  else
  {
    [connectionCopy invalidate];
  }
}

void __74__SBSwitcherDemoCommandsServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D66C58];
  v4 = a2;
  v5 = [v3 serviceQuality];
  [v4 setServiceQuality:v5];

  v6 = [MEMORY[0x277D66C58] interface];
  [v4 setInterface:v6];

  [v4 setInterfaceTarget:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__SBSwitcherDemoCommandsServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v7[3] = &unk_2783B4EB0;
  v7[4] = *(a1 + 32);
  [v4 setInvalidationHandler:v7];
  [v4 setTargetQueue:*(*(a1 + 32) + 40)];
}

void __74__SBSwitcherDemoCommandsServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Received Connection Invalidation: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 32) _queue_removeConnection:v3];
}

- (void)_queue_addConnection:(id)connection
{
  v8 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Adding Connection: %{public}@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections addObject:connectionCopy];
}

- (void)_queue_removeConnection:(id)connection
{
  v8 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Removing Connection: %{public}@", &v6, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections removeObject:connectionCopy];
}

@end