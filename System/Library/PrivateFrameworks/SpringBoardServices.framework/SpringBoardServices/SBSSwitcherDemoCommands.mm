@interface SBSSwitcherDemoCommands
- (BOOL)loadStashedSwitcherModelFromPath:(id)path;
- (BOOL)setShouldDisableSwitcherModelUpdates:(BOOL)updates;
- (BOOL)stashSwitcherModelToPath:(id)path;
- (BOOL)updateHiddenApplicationBundleIDs:(id)ds;
- (SBSSwitcherDemoCommands)init;
- (id)_standardizedAbsolutePathForPath:(id)path;
- (void)_connectionQueue_invalidate;
- (void)_connectionQueue_setupAndActivate;
- (void)invalidate;
@end

@implementation SBSSwitcherDemoCommands

- (SBSSwitcherDemoCommands)init
{
  v10.receiver = self;
  v10.super_class = SBSSwitcherDemoCommands;
  v2 = [(SBSSwitcherDemoCommands *)&v10 init];
  if (v2)
  {
    serial = [MEMORY[0x1E698E698] serial];
    v4 = BSDispatchQueueCreate();
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v4;

    v6 = v2->_connectionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__SBSSwitcherDemoCommands_init__block_invoke;
    block[3] = &unk_1E735F9D0;
    v9 = v2;
    dispatch_sync(v6, block);
  }

  return v2;
}

- (void)invalidate
{
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SBSSwitcherDemoCommands_invalidate__block_invoke;
  block[3] = &unk_1E735F9D0;
  block[4] = self;
  dispatch_sync(connectionQueue, block);
}

- (BOOL)stashSwitcherModelToPath:(id)path
{
  pathCopy = path;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SBSSwitcherDemoCommands_stashSwitcherModelToPath___block_invoke;
  block[3] = &unk_1E73618A8;
  v9 = pathCopy;
  v10 = &v11;
  block[4] = self;
  v6 = pathCopy;
  dispatch_sync(connectionQueue, block);
  LOBYTE(connectionQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return connectionQueue;
}

void __52__SBSSwitcherDemoCommands_stashSwitcherModelToPath___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 16) remoteTarget];
  v2 = [*(a1 + 32) _standardizedAbsolutePathForPath:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v3 stashSwitcherModelToPath:v2];
}

- (BOOL)loadStashedSwitcherModelFromPath:(id)path
{
  pathCopy = path;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SBSSwitcherDemoCommands_loadStashedSwitcherModelFromPath___block_invoke;
  block[3] = &unk_1E73618A8;
  v9 = pathCopy;
  v10 = &v11;
  block[4] = self;
  v6 = pathCopy;
  dispatch_sync(connectionQueue, block);
  LOBYTE(connectionQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return connectionQueue;
}

void __60__SBSSwitcherDemoCommands_loadStashedSwitcherModelFromPath___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 16) remoteTarget];
  v2 = [*(a1 + 32) _standardizedAbsolutePathForPath:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v3 loadStashedSwitcherModelFromPath:v2];
}

- (BOOL)setShouldDisableSwitcherModelUpdates:(BOOL)updates
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SBSSwitcherDemoCommands_setShouldDisableSwitcherModelUpdates___block_invoke;
  block[3] = &unk_1E73618D0;
  block[4] = self;
  block[5] = &v8;
  updatesCopy = updates;
  dispatch_sync(connectionQueue, block);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __64__SBSSwitcherDemoCommands_setShouldDisableSwitcherModelUpdates___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 16) remoteTarget];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = [v3 setShouldDisableSwitcherModelUpdates:v2];
}

- (BOOL)updateHiddenApplicationBundleIDs:(id)ds
{
  dsCopy = ds;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SBSSwitcherDemoCommands_updateHiddenApplicationBundleIDs___block_invoke;
  block[3] = &unk_1E73618A8;
  v9 = dsCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dsCopy;
  dispatch_sync(connectionQueue, block);
  LOBYTE(connectionQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return connectionQueue;
}

void __60__SBSSwitcherDemoCommands_updateHiddenApplicationBundleIDs___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) remoteTarget];
  *(*(a1[6] + 8) + 24) = [v2 updateHiddenApplicationBundleIDs:a1[5]];
}

- (void)_connectionQueue_setupAndActivate
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698F498];
  defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
  v5 = +[SBSSwitcherDemoCommandsSessionSpecification identifier];
  v6 = [v3 endpointForMachName:defaultShellMachName service:v5 instance:0];

  v7 = [MEMORY[0x1E698F490] connectionWithEndpoint:v6];
  connection = self->_connection;
  self->_connection = v7;

  v9 = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__SBSSwitcherDemoCommands__connectionQueue_setupAndActivate__block_invoke;
  v12[3] = &unk_1E735ED88;
  v12[4] = self;
  [(BSServiceConnection *)v9 configureConnection:v12];
  v10 = SBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = self->_connection;
    *buf = 138543362;
    v14 = v11;
    _os_log_impl(&dword_19169D000, v10, OS_LOG_TYPE_INFO, "Activating Connection: %{public}@", buf, 0xCu);
  }

  [(BSServiceConnection *)self->_connection activate];
}

void __60__SBSSwitcherDemoCommands__connectionQueue_setupAndActivate__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[SBSSwitcherDemoCommandsSessionSpecification serviceQuality];
  [v5 setServiceQuality:v3];

  v4 = +[SBSSwitcherDemoCommandsSessionSpecification interface];
  [v5 setInterface:v4];

  [v5 setInterfaceTarget:*(a1 + 32)];
  [v5 setTargetQueue:*(*(a1 + 32) + 8)];
  [v5 setActivationHandler:&__block_literal_global_49];
  [v5 setInterruptionHandler:&__block_literal_global_9_0];
  [v5 setInvalidationHandler:&__block_literal_global_12_0];
}

void __60__SBSSwitcherDemoCommands__connectionQueue_setupAndActivate__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_INFO, "Connection Activated: %{public}@", &v4, 0xCu);
  }
}

void __60__SBSSwitcherDemoCommands__connectionQueue_setupAndActivate__block_invoke_7(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_INFO, "Received interruption for connection: %{public}@", &v4, 0xCu);
  }

  [v2 activate];
}

void __60__SBSSwitcherDemoCommands__connectionQueue_setupAndActivate__block_invoke_10(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogCommon();
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
  v3 = SBLogCommon();
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
}

- (id)_standardizedAbsolutePathForPath:(id)path
{
  pathCopy = path;
  if ([pathCopy isAbsolutePath])
  {
    v4 = pathCopy;
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    currentDirectoryPath = [defaultManager currentDirectoryPath];
    v4 = [currentDirectoryPath stringByAppendingPathComponent:pathCopy];
  }

  stringByStandardizingPath = [pathCopy stringByStandardizingPath];

  return stringByStandardizingPath;
}

@end