@interface HDSPSpringboardMonitor
- (BOOL)_checkSpringBoardStarted;
- (BOOL)isSpringboardStarted;
- (HDSPSpringboardMonitor)initWithCallbackScheduler:(id)scheduler isAppleWatch:(BOOL)watch;
- (id)_processName;
- (void)_checkAndNotify;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)_withLock:(id)lock;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation HDSPSpringboardMonitor

- (HDSPSpringboardMonitor)initWithCallbackScheduler:(id)scheduler isAppleWatch:(BOOL)watch
{
  v21 = *MEMORY[0x277D85DE8];
  schedulerCopy = scheduler;
  v16.receiver = self;
  v16.super_class = HDSPSpringboardMonitor;
  v7 = [(HDSPSpringboardMonitor *)&v16 init];
  if (v7)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *buf = 138543618;
      v18 = v9;
      v19 = 2048;
      v20 = v7;
      v10 = v9;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    v7[8] = watch;
    *(v7 + 12) = 0xFFFFFFFFLL;
    v7[9] = [v7 _checkSpringBoardStarted];
    v11 = [objc_alloc(MEMORY[0x277D624A0]) initWithCallbackScheduler:schedulerCopy];
    v12 = *(v7 + 3);
    *(v7 + 3) = v11;

    v13 = v7;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_springboardStartedLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_springboardStartedLock);
}

- (BOOL)isSpringboardStarted
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HDSPSpringboardMonitor_isSpringboardStarted__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSpringboardMonitor *)self _withLock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)_checkSpringBoardStarted
{
  v16 = *MEMORY[0x277D85DE8];
  if (HKSPIsHomePod())
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    out_token = -1;
    notify_register_check("com.apple.springboard.finishedstartup", &out_token);
    if (out_token == -1)
    {
      v3 = 0;
    }

    else
    {
      *state64 = 0;
      notify_get_state(out_token, state64);
      v3 = *state64 != 0;
    }

    v4 = HKSPLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = v5;
      _processName = [(HDSPSpringboardMonitor *)self _processName];
      *state64 = 138543874;
      *&state64[4] = v5;
      v12 = 2114;
      v13 = _processName;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ started = %d", state64, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_processName
{
  if (self->_isAppleWatch)
  {
    return @"Carousel";
  }

  else
  {
    return @"Springboard";
  }
}

- (void)dealloc
{
  [(HDSPSpringboardMonitor *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = HDSPSpringboardMonitor;
  [(HDSPSpringboardMonitor *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    v4 = 0;
    [(HKSPObserverSet *)self->_observers addObserver:observer wasFirst:&v4];
    if (v4 == 1)
    {
      [(HDSPSpringboardMonitor *)self _startMonitoring];
    }
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    v4 = 0;
    [(HKSPObserverSet *)self->_observers removeObserver:observer wasLast:&v4];
    if (v4 == 1)
    {
      [(HDSPSpringboardMonitor *)self _stopMonitoring];
    }
  }
}

- (void)_startMonitoring
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_notifyToken == -1)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__HDSPSpringboardMonitor__startMonitoring__block_invoke;
    handler[3] = &unk_279C7D288;
    handler[4] = self;
    notify_register_dispatch("com.apple.springboard.finishedstartup", &self->_notifyToken, MEMORY[0x277D85CD0], handler);
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v5 = v8;
      _processName = [(HDSPSpringboardMonitor *)self _processName];
      *buf = 138543618;
      v12 = v8;
      v13 = 2114;
      v14 = _processName;
      v7 = "[%{public}@] Start monitoring %{public}@ start";
      goto LABEL_6;
    }
  }

  else
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = v4;
      _processName = [(HDSPSpringboardMonitor *)self _processName];
      *buf = 138543618;
      v12 = v4;
      v13 = 2114;
      v14 = _processName;
      v7 = "[%{public}@] Alreay monitoring %{public}@";
LABEL_6:
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, v7, buf, 0x16u);
    }
  }

  [(HDSPSpringboardMonitor *)self _checkAndNotify];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_checkAndNotify
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__HDSPSpringboardMonitor__checkAndNotify__block_invoke;
  v3[3] = &unk_279C7B130;
  v3[4] = self;
  v3[5] = &v4;
  [(HDSPSpringboardMonitor *)self _withLock:v3];
  if (*(v5 + 24) == 1)
  {
    [(HKSPObserverSet *)self->_observers enumerateObserversWithBlock:&__block_literal_global_31];
  }

  _Block_object_dispose(&v4, 8);
}

_BYTE *__41__HDSPSpringboardMonitor__checkAndNotify__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[9])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    result = [result _checkSpringBoardStarted];
    *(*(*(a1 + 40) + 8) + 24) = result;
    *(*(a1 + 32) + 9) = *(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

- (void)_stopMonitoring
{
  v13 = *MEMORY[0x277D85DE8];
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
    v4 = HKSPLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = v5;
      _processName = [(HDSPSpringboardMonitor *)self _processName];
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = _processName;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stop monitoring %{public}@ start", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end