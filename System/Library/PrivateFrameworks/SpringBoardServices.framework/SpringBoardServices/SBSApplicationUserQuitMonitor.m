@interface SBSApplicationUserQuitMonitor
- (SBSApplicationUserQuitMonitor)initWithDelegate:(id)a3;
- (void)_connectionQueue_invalidate;
- (void)_connectionQueue_setupAndActivate;
- (void)invalidate;
- (void)userClosedLastSceneOfApplicationWithBundleID:(id)a3;
@end

@implementation SBSApplicationUserQuitMonitor

- (SBSApplicationUserQuitMonitor)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBSApplicationUserQuitMonitor;
  v5 = [(SBSApplicationUserQuitMonitor *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [MEMORY[0x1E698E698] serial];
    v8 = BSDispatchQueueCreate();
    connectionQueue = v6->_connectionQueue;
    v6->_connectionQueue = v8;

    v10 = v6->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__SBSApplicationUserQuitMonitor_initWithDelegate___block_invoke;
    block[3] = &unk_1E735F9D0;
    v13 = v6;
    dispatch_async(v10, block);
  }

  return v6;
}

- (void)invalidate
{
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SBSApplicationUserQuitMonitor_invalidate__block_invoke;
  block[3] = &unk_1E735F9D0;
  block[4] = self;
  dispatch_sync(connectionQueue, block);
}

- (void)userClosedLastSceneOfApplicationWithBundleID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained quitMonitor:self userClosedLastSceneOfApplicationWithBundleID:v4];
}

- (void)_connectionQueue_setupAndActivate
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698F498];
  v4 = [MEMORY[0x1E698F498] defaultShellMachName];
  v5 = +[SBSApplicationUserQuitMonitorSessionSpecification identifier];
  v6 = [v3 endpointForMachName:v4 service:v5 instance:0];

  v7 = [MEMORY[0x1E698F490] connectionWithEndpoint:v6];
  connection = self->_connection;
  self->_connection = v7;

  v9 = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__SBSApplicationUserQuitMonitor__connectionQueue_setupAndActivate__block_invoke;
  v12[3] = &unk_1E735ED88;
  v12[4] = self;
  [(BSServiceConnection *)v9 configureConnection:v12];
  v10 = SBLogAppQuitMonitor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = self->_connection;
    *buf = 138543362;
    v14 = v11;
    _os_log_impl(&dword_19169D000, v10, OS_LOG_TYPE_INFO, "Activating Connection: %{public}@", buf, 0xCu);
  }

  [(BSServiceConnection *)self->_connection activate];
}

void __66__SBSApplicationUserQuitMonitor__connectionQueue_setupAndActivate__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[SBSApplicationUserQuitMonitorSessionSpecification serviceQuality];
  [v5 setServiceQuality:v3];

  v4 = +[SBSApplicationUserQuitMonitorSessionSpecification interface];
  [v5 setInterface:v4];

  [v5 setInterfaceTarget:*(a1 + 32)];
  [v5 setTargetQueue:*(*(a1 + 32) + 8)];
  [v5 setActivationHandler:&__block_literal_global_47];
  [v5 setInterruptionHandler:&__block_literal_global_8];
  [v5 setInvalidationHandler:&__block_literal_global_11];
}

void __66__SBSApplicationUserQuitMonitor__connectionQueue_setupAndActivate__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogAppQuitMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_INFO, "Connection Activated: %{public}@", &v4, 0xCu);
  }
}

void __66__SBSApplicationUserQuitMonitor__connectionQueue_setupAndActivate__block_invoke_6(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogAppQuitMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_INFO, "Received interruption for connection: %{public}@", &v4, 0xCu);
  }

  [v2 activate];
}

void __66__SBSApplicationUserQuitMonitor__connectionQueue_setupAndActivate__block_invoke_9(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogAppQuitMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_INFO, "Received invalidation for connection: %{public}@", &v4, 0xCu);
  }
}

- (void)_connectionQueue_invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = SBLogAppQuitMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    v6 = 138543362;
    v7 = connection;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_INFO, "Invalidating Connection: %{public}@", &v6, 0xCu);
  }

  [(BSServiceConnection *)self->_connection invalidate];
  v5 = self->_connection;
  self->_connection = 0;

  objc_storeWeak(&self->_delegate, 0);
}

@end