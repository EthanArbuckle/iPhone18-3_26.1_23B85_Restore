@interface SWSystemSleepMonitorProvider
- (SWSystemSleepMonitorProvider)init;
- (void)allowPowerChange:(int64_t)change;
- (void)cancelPowerChange:(int64_t)change;
- (void)dealloc;
- (void)invalidate;
- (void)registerForSystemPowerOnQueue:(id)queue withDelegate:(id)delegate;
@end

@implementation SWSystemSleepMonitorProvider

- (SWSystemSleepMonitorProvider)init
{
  v3.receiver = self;
  v3.super_class = SWSystemSleepMonitorProvider;
  result = [(SWSystemSleepMonitorProvider *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)registerForSystemPowerOnQueue:(id)queue withDelegate:(id)delegate
{
  v38 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_registered)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_registered"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      selfCopy3 = v19;
      v30 = 2114;
      v31 = v21;
      v32 = 2048;
      selfCopy2 = self;
      v34 = 2114;
      v35 = @"SWSystemSleepMonitor.m";
      v36 = 1024;
      *v37 = 557;
      *&v37[4] = 2114;
      *&v37[6] = v18;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v18;
    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65C07CLL);
  }

  objc_storeStrong(&self->_lock_queue, queue);
  self->_lock_registered = 1;
  v10 = [MEMORY[0x277CF0D30] referenceWithObject:delegateCopy];
  lock_weakDelegateWrapper = self->_lock_weakDelegateWrapper;
  self->_lock_weakDelegateWrapper = v10;

  v12 = IORegisterForSystemPower(self->_lock_weakDelegateWrapper, &self->_lock_systemPowerPort, SWSystemPowerCallback, &self->_lock_systemPowerNotifier);
  self->_lock_systemPowerConnection = v12;
  if (!v12)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_systemPowerConnection != IO_OBJECT_NULL"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      selfCopy3 = v24;
      v30 = 2114;
      v31 = v26;
      v32 = 2048;
      selfCopy2 = self;
      v34 = 2114;
      v35 = @"SWSystemSleepMonitor.m";
      v36 = 1024;
      *v37 = 567;
      *&v37[4] = 2114;
      *&v37[6] = v23;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65C180);
  }

  IONotificationPortSetDispatchQueue(self->_lock_systemPowerPort, queueCopy);
  v13 = SWLogPower();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    lock_systemPowerConnection = self->_lock_systemPowerConnection;
    lock_systemPowerPort = self->_lock_systemPowerPort;
    lock_systemPowerNotifier = self->_lock_systemPowerNotifier;
    *buf = 134219264;
    selfCopy3 = self;
    v30 = 2048;
    v31 = queueCopy;
    v32 = 2048;
    selfCopy2 = delegateCopy;
    v34 = 2048;
    v35 = lock_systemPowerConnection;
    v36 = 2048;
    *v37 = lock_systemPowerPort;
    *&v37[8] = 2048;
    *&v37[10] = lock_systemPowerNotifier;
    _os_log_debug_impl(&dword_26C657000, v13, OS_LOG_TYPE_DEBUG, "%p registerForSystemPowerOnQueue:%p withDelegate:%p -- connection:%llu port:%llu notifier:%llu", buf, 0x3Eu);
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v28 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_invalidated"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v17 = v9;
      v18 = 2114;
      v19 = v11;
      v20 = 2048;
      selfCopy = self;
      v22 = 2114;
      v23 = @"SWSystemSleepMonitor.m";
      v24 = 1024;
      v25 = 583;
      v26 = 2114;
      v27 = v8;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65C3F4);
  }

  v4 = self->_lock_weakDelegateWrapper;
  os_unfair_lock_unlock(&self->_lock);
  lock_queue = self->_lock_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SWSystemSleepMonitorProvider_dealloc__block_invoke;
  block[3] = &unk_279D430F8;
  v15 = v4;
  v6 = v4;
  dispatch_async(lock_queue, block);

  v13.receiver = self;
  v13.super_class = SWSystemSleepMonitorProvider;
  [(SWSystemSleepMonitorProvider *)&v13 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v21 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  self->_lock_invalidated = 1;
  if (!lock_invalidated)
  {
    v4 = SWLogPower();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      lock_systemPowerConnection = self->_lock_systemPowerConnection;
      lock_systemPowerPort = self->_lock_systemPowerPort;
      lock_systemPowerNotifier = self->_lock_systemPowerNotifier;
      v13 = 134218752;
      selfCopy2 = self;
      v15 = 2048;
      v16 = lock_systemPowerConnection;
      v17 = 2048;
      v18 = lock_systemPowerPort;
      v19 = 2048;
      v20 = lock_systemPowerNotifier;
      _os_log_debug_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEBUG, "%p unregisterForSystemPower -- connection:%llu port:%llu notifier:%llu", &v13, 0x2Au);
    }

    IODeregisterForSystemPower(&self->_lock_systemPowerNotifier);
    IONotificationPortDestroy(self->_lock_systemPowerPort);
    IOServiceClose(self->_lock_systemPowerConnection);
    self->_lock_systemPowerConnection = 0;
    v5 = SWLogPower();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      object = [(BSZeroingWeakReference *)self->_lock_weakDelegateWrapper object];
      v8 = SWLogPower();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v13 = 134218240;
        selfCopy2 = self;
        v15 = 2048;
        v16 = object;
        _os_log_debug_impl(&dword_26C657000, v8, OS_LOG_TYPE_DEBUG, "%p invalidated sleep monitor: %p", &v13, 0x16u);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)allowPowerChange:(int64_t)change
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"SWSystemSleepMonitor.m";
      v20 = 1024;
      v21 = 614;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65C7B8);
  }

  IOAllowPowerChange(self->_lock_systemPowerConnection, change);
  v6 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)cancelPowerChange:(int64_t)change
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_lock_invalidated"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"SWSystemSleepMonitor.m";
      v20 = 1024;
      v21 = 621;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65C980);
  }

  IOCancelPowerChange(self->_lock_systemPowerConnection, change);
  v6 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock(&self->_lock);
}

@end