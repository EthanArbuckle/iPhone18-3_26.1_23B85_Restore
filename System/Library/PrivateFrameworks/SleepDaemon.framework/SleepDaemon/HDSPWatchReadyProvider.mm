@interface HDSPWatchReadyProvider
- (BOOL)_isInRootRobot;
- (BOOL)isInRootRobotOrDemoMode;
- (BOOL)isSystemReady;
- (HDSPEnvironment)environment;
- (HDSPSystemReadyDelegate)delegate;
- (HDSPWatchReadyProvider)initWithEnvironment:(id)environment;
- (void)_withLock:(id)lock;
- (void)restoreDidFinish;
- (void)springboardDidStart;
@end

@implementation HDSPWatchReadyProvider

- (HDSPWatchReadyProvider)initWithEnvironment:(id)environment
{
  v23 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v18.receiver = self;
  v18.super_class = HDSPWatchReadyProvider;
  v5 = [(HDSPWatchReadyProvider *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = [HDSPSpringboardMonitor alloc];
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v9 = [(HDSPSpringboardMonitor *)v7 initWithCallbackScheduler:defaultCallbackScheduler isAppleWatch:1];
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

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSystemReady
{
  v12 = *MEMORY[0x277D85DE8];
  isSpringboardStarted = [(HDSPSpringboardMonitor *)self->_springboardMonitor isSpringboardStarted];
  v4 = HKSPLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!isSpringboardStarted)
  {
    if (v5)
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Waiting for Carousel to start.", &v10, 0xCu);
    }

    [(HDSPSpringboardMonitor *)self->_springboardMonitor addObserver:self];
    goto LABEL_9;
  }

  if (v5)
  {
    v10 = 138543362;
    v11 = objc_opt_class();
    v6 = v11;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Carousel is started.", &v10, 0xCu);
  }

  if (![(HDSPWatchReadyProvider *)self _waitForInitialSync])
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  result = 1;
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isInRootRobotOrDemoMode
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  isDemoEnvironment = [WeakRetained isDemoEnvironment];

  if (isDemoEnvironment)
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v6 = v11;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] we're in demo environment", &v10, 0xCu);
    }

    v7 = *MEMORY[0x277D85DE8];
    return 1;
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    return [(HDSPWatchReadyProvider *)self _isInRootRobot];
  }
}

- (BOOL)_isInRootRobot
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HDSPWatchReadyProvider__isInRootRobot__block_invoke;
  block[3] = &unk_279C7B108;
  block[4] = self;
  if (qword_2814C0E28 != -1)
  {
    dispatch_once(&qword_2814C0E28, block);
  }

  return _MergedGlobals_13;
}

void __40__HDSPWatchReadyProvider__isInRootRobot__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v12 = 138543362;
    v13 = objc_opt_class();
    v4 = v13;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking if we are in root robot.", &v12, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.rootrobot"];
  v6 = [v5 stringForKey:@"configuration"];
  _MergedGlobals_13 = [@"minimal" isEqualToString:v6];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v12 = 138543618;
    v13 = v9;
    v14 = 1024;
    v15 = _MergedGlobals_13;
    v10 = v9;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Running in root robot %d", &v12, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)springboardDidStart
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v4 = *&v7[4];
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Carousel has started", v7, 0xCu);
  }

  if ([(HDSPWatchReadyProvider *)self _waitForInitialSync])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained systemDidBecomeReady];

    [(HDSPWatchReadyProvider *)self _finishWaitingForInitialSync];
  }

  [(HDSPSpringboardMonitor *)self->_springboardMonitor removeObserver:self, *v7];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)restoreDidFinish
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] restore finished", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained systemDidBecomeReady];

  [(HDSPWatchReadyProvider *)self _finishWaitingForInitialSync];
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