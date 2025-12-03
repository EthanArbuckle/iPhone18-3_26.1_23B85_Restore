@interface HDSPPhoneReadyProvider
- (BOOL)isSystemReady;
- (HDSPEnvironment)environment;
- (HDSPPhoneReadyProvider)initWithEnvironment:(id)environment;
- (HDSPSystemReadyDelegate)delegate;
- (void)springboardDidStart;
@end

@implementation HDSPPhoneReadyProvider

- (HDSPPhoneReadyProvider)initWithEnvironment:(id)environment
{
  v23 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v18.receiver = self;
  v18.super_class = HDSPPhoneReadyProvider;
  v5 = [(HDSPPhoneReadyProvider *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = [HDSPSpringboardMonitor alloc];
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v9 = [(HDSPSpringboardMonitor *)v7 initWithCallbackScheduler:defaultCallbackScheduler isAppleWatch:0];
    springboardMonitor = v6->_springboardMonitor;
    v6->_springboardMonitor = v9;

    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v6->_springboardMonitor;
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      v14 = v12;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] initializing with %{public}@", buf, 0x16u);
    }

    v15 = v6;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isSystemReady
{
  v10 = *MEMORY[0x277D85DE8];
  isSpringboardStarted = [(HDSPSpringboardMonitor *)self->_springboardMonitor isSpringboardStarted];
  if (isSpringboardStarted)
  {
    v4 = HKSPLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = objc_opt_class();
      v5 = v9;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] System is ready", &v8, 0xCu);
    }
  }

  else
  {
    [(HDSPSpringboardMonitor *)self->_springboardMonitor addObserver:self];
  }

  v6 = *MEMORY[0x277D85DE8];
  return isSpringboardStarted;
}

- (void)springboardDidStart
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Springboard started", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained systemDidBecomeReady];

  [(HDSPSpringboardMonitor *)self->_springboardMonitor removeObserver:self];
  v6 = *MEMORY[0x277D85DE8];
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HDSPSystemReadyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end