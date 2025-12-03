@interface SBSPhysicalButtonTargetMonitorClient
- (SBSPhysicalButtonTargetMonitorClient)init;
- (void)invalidate;
- (void)setPhysicalButtonTargets:(id)targets;
- (void)startObservingPresenceOfPhysicalButtonTargets:(id)targets;
@end

@implementation SBSPhysicalButtonTargetMonitorClient

- (SBSPhysicalButtonTargetMonitorClient)init
{
  v3.receiver = self;
  v3.super_class = SBSPhysicalButtonTargetMonitorClient;
  result = [(SBSPhysicalButtonTargetMonitorClient *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)startObservingPresenceOfPhysicalButtonTargets:(id)targets
{
  targetsCopy = targets;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_connection)
  {
    [(SBSPhysicalButtonTargetMonitorClient *)a2 startObservingPresenceOfPhysicalButtonTargets:?];
  }

  if (!targetsCopy)
  {
    [(SBSPhysicalButtonTargetMonitorClient *)a2 startObservingPresenceOfPhysicalButtonTargets:?];
  }

  v6 = MEMORY[0x193AFFB30](targetsCopy);
  lock_observationBlock = self->_lock_observationBlock;
  self->_lock_observationBlock = v6;

  v8 = MEMORY[0x1E698F498];
  defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
  v10 = +[SBSPhysicalButtonTargetMonitorServiceSpecification identifier];
  v11 = [v8 endpointForMachName:defaultShellMachName service:v10 instance:0];

  v12 = [MEMORY[0x1E698F490] connectionWithEndpoint:v11];
  objc_storeStrong(&self->_lock_connection, v12);
  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__SBSPhysicalButtonTargetMonitorClient_startObservingPresenceOfPhysicalButtonTargets___block_invoke;
  v13[3] = &unk_1E735F0A8;
  v13[4] = self;
  objc_copyWeak(&v14, &location);
  [v12 configureConnection:v13];
  [v12 activate];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __86__SBSPhysicalButtonTargetMonitorClient_startObservingPresenceOfPhysicalButtonTargets___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSPhysicalButtonTargetMonitorServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[SBSPhysicalButtonTargetMonitorServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__SBSPhysicalButtonTargetMonitorClient_startObservingPresenceOfPhysicalButtonTargets___block_invoke_2;
  v8[3] = &unk_1E735F080;
  objc_copyWeak(&v9, (a1 + 40));
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__SBSPhysicalButtonTargetMonitorClient_startObservingPresenceOfPhysicalButtonTargets___block_invoke_100;
  v6[3] = &unk_1E735F080;
  objc_copyWeak(&v7, (a1 + 40));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
}

void __86__SBSPhysicalButtonTargetMonitorClient_startObservingPresenceOfPhysicalButtonTargets___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SBLogHardwareButtonService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_DEFAULT, "SBSPhysicalButtonTargetMonitorService interrupted connection %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPhysicalButtonTargets:&unk_1F05B4EC8];

  [v3 activate];
}

void __86__SBSPhysicalButtonTargetMonitorClient_startObservingPresenceOfPhysicalButtonTargets___block_invoke_100(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = SBLogHardwareButtonService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_DEFAULT, "SBSPhysicalButtonTargetMonitorService invalidated connection %@", &v6, 0xCu);
  }

  [WeakRetained invalidate];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  lock_connection = self->_lock_connection;
  self->_lock_connection = 0;
  v4 = lock_connection;

  os_unfair_lock_unlock(&self->_lock);
  [(BSServiceConnection *)v4 invalidate];
}

- (void)setPhysicalButtonTargets:(id)targets
{
  targetsCopy = targets;
  os_unfair_lock_lock(&self->_lock);
  v4 = MEMORY[0x193AFFB30](self->_lock_observationBlock);
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v4[2](v4, [targetsCopy unsignedIntegerValue]);
  }
}

- (void)startObservingPresenceOfPhysicalButtonTargets:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Started observation for a client that was already observing!"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"SBSPhysicalButtonTargetMonitorService.m";
    v17 = 1024;
    v18 = 164;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_19169D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)startObservingPresenceOfPhysicalButtonTargets:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"observationBlock != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"SBSPhysicalButtonTargetMonitorService.m";
    v17 = 1024;
    v18 = 165;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_19169D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end