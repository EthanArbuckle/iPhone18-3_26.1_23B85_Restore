@interface SBSystemApertureLayoutMonitorServer
- (SBSystemApertureLayoutMonitorServer)init;
- (void)_notifyConnectedListenersOfUpdatedFrames;
- (void)_systemApertureLayoutDidChange:(id)change;
- (void)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation SBSystemApertureLayoutMonitorServer

void __79__SBSystemApertureLayoutMonitorServer__notifyConnectedListenersOfUpdatedFrames__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(*(a1 + 32) + 16) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) remoteTarget];
        [v8 systemApertureLayoutDidChange:*(a1 + 40)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyConnectedListenersOfUpdatedFrames
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  os_unfair_lock_lock(&self->_framesCollectionLock);
  v3 = [(NSArray *)self->_frames copy];
  os_unfair_lock_unlock(&self->_framesCollectionLock);
  connectionQueue = self->_connectionQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__SBSystemApertureLayoutMonitorServer__notifyConnectedListenersOfUpdatedFrames__block_invoke;
  v6[3] = &unk_2783A92D8;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(connectionQueue, v6);
}

- (SBSystemApertureLayoutMonitorServer)init
{
  v16.receiver = self;
  v16.super_class = SBSystemApertureLayoutMonitorServer;
  v2 = [(SBSystemApertureLayoutMonitorServer *)&v16 init];
  if (v2)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    v2->_isValid = 1;
    *&v2->_clientServiceCollectionLock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x277CBEB18] array];
    connections = v2->_connections;
    v2->_connections = array;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = BSDispatchQueueCreateWithQualityOfService();
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v6;

    v8 = MEMORY[0x277CF32A0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __43__SBSystemApertureLayoutMonitorServer_init__block_invoke;
    v14[3] = &unk_2783A9A18;
    v9 = v2;
    v15 = v9;
    v10 = [v8 listenerWithConfigurator:v14];
    v11 = v9[4];
    v9[4] = v10;

    [v9[4] activate];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__systemApertureLayoutDidChange_ name:@"SBSystemApertureLayoutDidChangeNotification" object:0];
  }

  return v2;
}

void __43__SBSystemApertureLayoutMonitorServer_init__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66C68] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)_systemApertureLayoutDidChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  userInfo = [changeCopy userInfo];

  v8 = [userInfo objectForKey:@"SBSystemApertureFrames"];

  if (v8)
  {
    os_unfair_lock_lock(&self->_framesCollectionLock);
    v6 = [v8 copy];
    frames = self->_frames;
    self->_frames = v6;

    os_unfair_lock_unlock(&self->_framesCollectionLock);
    [(SBSystemApertureLayoutMonitorServer *)self _notifyConnectedListenersOfUpdatedFrames];
  }
}

- (void)invalidate
{
  self->_isValid = 0;
  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBSystemApertureLayoutDidChangeNotification" object:0];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBSystemApertureLayoutMonitorServer received connection %@", buf, 0xCu);
  }

  remoteProcess = [connectionCopy remoteProcess];
  v9 = [remoteProcess pid];
  if (v9 == getpid())
  {
  }

  else
  {
    remoteProcess2 = [connectionCopy remoteProcess];
    auditToken = [remoteProcess2 auditToken];
    v12 = [auditToken hasEntitlement:@"com.apple.springboard.system-component-layout-monitoring"];

    if (v12)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__SBSystemApertureLayoutMonitorServer_listener_didReceiveConnection_withContext___block_invoke;
      v14[3] = &unk_2783AB730;
      v14[4] = self;
      [connectionCopy configureConnection:v14];
      os_unfair_lock_lock(&self->_clientServiceCollectionLock);
      [(NSMutableArray *)self->_connections addObject:connectionCopy];
      os_unfair_lock_unlock(&self->_clientServiceCollectionLock);
      [connectionCopy activate];
      goto LABEL_10;
    }
  }

  v13 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "SBSystemApertureLayoutMonitorServer invalidating connection because client process is missing required entitlement %@ .", buf, 0xCu);
  }

  [connectionCopy invalidate];
LABEL_10:
}

void __81__SBSystemApertureLayoutMonitorServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66C68] serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = [MEMORY[0x277D66C68] interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 24)];
  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__SBSystemApertureLayoutMonitorServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v9[3] = &unk_2783AB6E0;
  objc_copyWeak(&v10, &location);
  v6 = MEMORY[0x223D6F7F0](v9);
  [v3 setInterruptionHandler:v6];
  [v3 setInvalidationHandler:v6];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__SBSystemApertureLayoutMonitorServer_listener_didReceiveConnection_withContext___block_invoke_15;
  v7[3] = &unk_2783AB708;
  objc_copyWeak(&v8, &location);
  v7[4] = *(a1 + 32);
  [v3 setActivationHandler:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __81__SBSystemApertureLayoutMonitorServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_assert_queue_V2(*(WeakRetained + 3));
  v5 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBSystemApertureLayoutMonitorServer interrupted/invalidated connection %@", &v6, 0xCu);
  }

  os_unfair_lock_lock(WeakRetained + 2);
  [*(WeakRetained + 2) removeObject:v3];
  os_unfair_lock_unlock(WeakRetained + 2);
}

void __81__SBSystemApertureLayoutMonitorServer_listener_didReceiveConnection_withContext___block_invoke_15(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  dispatch_assert_queue_V2(WeakRetained[3]);
  v5 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBSystemApertureLayoutMonitorServer activated connection %@", &v7, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 32) + 12));
  if ([*(*(a1 + 32) + 40) count])
  {
    v6 = [v3 remoteTarget];
    [v6 systemApertureLayoutDidChange:*(*(a1 + 32) + 40)];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 12));
}

@end