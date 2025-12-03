@interface SBSPhysicalButtonTargetMonitorServer
- (SBSPhysicalButtonTargetMonitorServer)init;
- (unint64_t)physicalButtonTargets;
- (void)dealloc;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)setPhysicalButtonTargets:(unint64_t)targets;
- (void)startServer;
@end

@implementation SBSPhysicalButtonTargetMonitorServer

- (SBSPhysicalButtonTargetMonitorServer)init
{
  v7.receiver = self;
  v7.super_class = SBSPhysicalButtonTargetMonitorServer;
  v2 = [(SBSPhysicalButtonTargetMonitorServer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x1E695DF70] array];
    lock_connections = v3->_lock_connections;
    v3->_lock_connections = array;

    [(SBSPhysicalButtonTargetMonitorServer *)v3 startServer];
  }

  return v3;
}

- (void)startServer
{
  BSDispatchQueueAssertMain();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SBSPhysicalButtonTargetMonitorServer_startServer__block_invoke;
  v5[3] = &unk_1E7360A28;
  v5[4] = self;
  v3 = [MEMORY[0x1E698F4B8] listenerWithConfigurator:v5];
  connectionListener = self->_connectionListener;
  self->_connectionListener = v3;

  [(BSServiceConnectionListener *)self->_connectionListener activate];
}

void __51__SBSPhysicalButtonTargetMonitorServer_startServer__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = +[SBSPhysicalButtonTargetMonitorServiceSpecification identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  v3.receiver = self;
  v3.super_class = SBSPhysicalButtonTargetMonitorServer;
  [(SBSPhysicalButtonTargetMonitorServer *)&v3 dealloc];
}

- (unint64_t)physicalButtonTargets
{
  os_unfair_lock_lock(&self->_lock);
  lock_physicalButtonTargets = self->_lock_physicalButtonTargets;
  os_unfair_lock_unlock(&self->_lock);
  return lock_physicalButtonTargets;
}

- (void)setPhysicalButtonTargets:(unint64_t)targets
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_physicalButtonTargets == targets)
  {
    v5 = 0;
  }

  else
  {
    self->_lock_physicalButtonTargets = targets;
    v5 = self->_lock_connections;
  }

  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        remoteTarget = [*(*(&v13 + 1) + 8 * v10) remoteTarget];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:targets];
        [remoteTarget setPhysicalButtonTargets:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  contextCopy = context;
  objc_initWeak(&location, self);
  remoteProcess = [connectionCopy remoteProcess];
  auditToken = [remoteProcess auditToken];
  v13 = [auditToken hasEntitlement:@"com.apple.springboard.private.physicalButtonTargetMonitor"];

  if (v13)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__SBSPhysicalButtonTargetMonitorServer_listener_didReceiveConnection_withContext___block_invoke;
    v15[3] = &unk_1E735F0A8;
    v15[4] = self;
    objc_copyWeak(&v16, &location);
    [connectionCopy configureConnection:v15];
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableArray *)self->_lock_connections addObject:connectionCopy];
    os_unfair_lock_unlock(&self->_lock);
    [connectionCopy activate];
    objc_destroyWeak(&v16);
  }

  else
  {
    v14 = SBLogCameraCaptureAppConfiguration();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = connectionCopy;
      _os_log_impl(&dword_19169D000, v14, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationServer invalidating connection because client process is missing required entitlement %@.", buf, 0xCu);
    }

    [connectionCopy invalidate];
  }

  objc_destroyWeak(&location);
}

void __82__SBSPhysicalButtonTargetMonitorServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSPhysicalButtonTargetMonitorServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[SBSPhysicalButtonTargetMonitorServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setInterruptionHandler:&__block_literal_global_35];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__SBSPhysicalButtonTargetMonitorServer_listener_didReceiveConnection_withContext___block_invoke_11;
  v8[3] = &unk_1E735F080;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInvalidationHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__SBSPhysicalButtonTargetMonitorServer_listener_didReceiveConnection_withContext___block_invoke_12;
  v6[3] = &unk_1E735F080;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setActivationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void __82__SBSPhysicalButtonTargetMonitorServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationServer interrupted connection %@", &v4, 0xCu);
  }
}

void __82__SBSPhysicalButtonTargetMonitorServer_listener_didReceiveConnection_withContext___block_invoke_11(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationServer invalidated connection %@", &v6, 0xCu);
  }

  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    [*(WeakRetained + 4) removeObject:v3];
    os_unfair_lock_unlock(WeakRetained + 2);
  }
}

void __82__SBSPhysicalButtonTargetMonitorServer_listener_didReceiveConnection_withContext___block_invoke_12(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_DEFAULT, "SBSCaptureButtonAppConfigurationServer activated connection %@", &v9, 0xCu);
  }

  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    v6 = *&WeakRetained[10]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(WeakRetained + 2);
    v7 = [v3 remoteTarget];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    [v7 setPhysicalButtonTargets:v8];
  }
}

@end