@interface SWWakingTimer
- (BOOL)isScheduled;
- (NSString)description;
- (SWWakingTimer)initWithIdentifier:(id)identifier;
- (SWWakingTimer)initWithIdentifier:(id)identifier sleepMonitor:(id)monitor sleepAssertionProvider:(id)provider;
- (double)timeRemaining;
- (uint64_t)_updateScheduledWakeAndCheckCanSleep;
- (void)_lock_cancel;
- (void)_lock_setPreventSleepAssertion:(uint64_t)assertion;
- (void)_setPreventSleepAssertion:(uint64_t)assertion;
- (void)_timerFired:(uint64_t)fired;
- (void)_updateScheduledWakeAndAcquireSystemActivityAssertionIfNeeded;
- (void)cancel;
- (void)dealloc;
- (void)invalidate;
- (void)scheduleForDate:(id)date leewayInterval:(double)interval queue:(id)queue handler:(id)handler;
- (void)scheduleWithFireInterval:(double)interval leewayInterval:(double)leewayInterval queue:(id)queue handler:(id)handler;
- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion;
- (void)systemSleepMonitor:(id)monitor sleepRequestedWithResult:(id)result;
@end

@implementation SWWakingTimer

- (SWWakingTimer)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SWSystemSleepMonitor monitorUsingMainQueue];
  v6 = +[SWSystemSleepAssertionProvider sharedProvider];
  v7 = [(SWWakingTimer *)self initWithIdentifier:identifierCopy sleepMonitor:v5 sleepAssertionProvider:v6];

  return v7;
}

- (SWWakingTimer)initWithIdentifier:(id)identifier sleepMonitor:(id)monitor sleepAssertionProvider:(id)provider
{
  identifierCopy = identifier;
  monitorCopy = monitor;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = SWWakingTimer;
  v12 = [(SWWakingTimer *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_sleepMonitor, monitor);
    objc_storeStrong(&v13->_sleepAssertionProvider, provider);
    v14 = [[SWScheduledSystemWake alloc] initWithIdentifier:identifierCopy];
    scheduledWake = v13->_scheduledWake;
    v13->_scheduledWake = v14;

    [monitorCopy addObserver:v13];
  }

  return v13;
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = SWLogTimer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    selfCopy = self;
    v14 = 2114;
    selfCopy2 = self;
    _os_log_debug_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEBUG, "%p dealloc %{public}@", buf, 0x16u);
  }

  if (!self->_lock_invalidated)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p must invalidate before dealloc : %@", self, self];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      selfCopy = v7;
      v14 = 2114;
      selfCopy2 = v9;
      v16 = 2048;
      selfCopy3 = self;
      v18 = 2114;
      v19 = @"SWWakingTimer.m";
      v20 = 1024;
      v21 = 53;
      v22 = 2114;
      v23 = v6;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C660680);
  }

  v11.receiver = self;
  v11.super_class = SWWakingTimer;
  [(SWWakingTimer *)&v11 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)isScheduled
{
  os_unfair_lock_lock(&self->_lock);
  lock_timer = self->_lock_timer;
  if (lock_timer)
  {
    isScheduled = [(BSTimerScheduleQuerying *)lock_timer isScheduled];
  }

  else
  {
    isScheduled = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return isScheduled;
}

- (double)timeRemaining
{
  os_unfair_lock_lock(&self->_lock);
  lock_timer = self->_lock_timer;
  if (lock_timer)
  {
    [(BSTimerScheduleQuerying *)lock_timer timeRemaining];
    v5 = v4;
  }

  else
  {
    v5 = NAN;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_identifier withName:@"identifier"];
  v4 = [v3 appendObject:self->_lock_timer withName:@"timer"];
  v5 = [v3 appendBool:self->_lock_invalidated withName:@"isInvalidated"];
  build = [v3 build];

  return build;
}

- (void)scheduleWithFireInterval:(double)interval leewayInterval:(double)leewayInterval queue:(id)queue handler:(id)handler
{
  v46 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *location = 138544642;
      *&location[4] = v19;
      v36 = 2114;
      selfCopy4 = v21;
      v38 = 2048;
      selfCopy3 = self;
      v40 = 2114;
      v41 = @"SWWakingTimer.m";
      v42 = 1024;
      v43 = 87;
      v44 = 2114;
      v45 = v18;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    v22 = v18;
    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C660B50);
  }

  if ((BSFloatGreaterThanOrEqualToFloat() & 1) == 0)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"leeway cannot be negative: %f", *&leewayInterval];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *location = 138544642;
      *&location[4] = v24;
      v36 = 2114;
      selfCopy4 = v26;
      v38 = 2048;
      selfCopy3 = self;
      v40 = 2114;
      v41 = @"SWWakingTimer.m";
      v42 = 1024;
      v43 = 88;
      v44 = 2114;
      v45 = v23;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C660C4CLL);
  }

  v13 = [objc_alloc(MEMORY[0x277CF0BD8]) initWithIdentifier:self->_identifier];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot schedule after invalidating"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *location = 138544642;
      *&location[4] = v29;
      v36 = 2114;
      selfCopy4 = v31;
      v38 = 2048;
      selfCopy3 = self;
      v40 = 2114;
      v41 = @"SWWakingTimer.m";
      v42 = 1024;
      v43 = 93;
      v44 = 2114;
      v45 = v28;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C660D44);
  }

  [(BSTimerScheduleQuerying *)self->_lock_timer invalidate];
  objc_storeStrong(&self->_lock_timer, v13);
  self->_lock_leeway = leewayInterval;
  v14 = MEMORY[0x26D6A63C0](handlerCopy);
  lock_handler = self->_lock_handler;
  self->_lock_handler = v14;

  [(SWWakingTimer *)self _lock_setPreventSleepAssertion:?];
  os_unfair_lock_unlock(&self->_lock);
  v16 = SWLogTimer();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *location = 134218242;
    *&location[4] = self;
    v36 = 2114;
    selfCopy4 = self;
    _os_log_debug_impl(&dword_26C657000, v16, OS_LOG_TYPE_DEBUG, "%p scheduling %{public}@", location, 0x16u);
  }

  objc_initWeak(location, self);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __71__SWWakingTimer_scheduleWithFireInterval_leewayInterval_queue_handler___block_invoke;
  v33[3] = &unk_279D433A0;
  objc_copyWeak(&v34, location);
  [v13 scheduleWithFireInterval:queueCopy leewayInterval:v33 queue:interval handler:leewayInterval];
  if ([(SWSystemSleepMonitor *)self->_sleepMonitor hasSleepBeenRequested])
  {
    [(SWWakingTimer *)self _updateScheduledWakeAndCheckCanSleep];
  }

  objc_destroyWeak(&v34);
  objc_destroyWeak(location);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_lock_setPreventSleepAssertion:(uint64_t)assertion
{
  v3 = a2;
  if (assertion)
  {
    v4 = *(assertion + 40);
    v8 = v3;
    v5 = v3;
    v6 = *(assertion + 40);
    *(assertion + 40) = v5;
    v7 = v4;

    [v7 invalidate];
    v3 = v8;
  }
}

void __71__SWWakingTimer_scheduleWithFireInterval_leewayInterval_queue_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SWWakingTimer *)WeakRetained _timerFired:v3];
}

- (void)_timerFired:(uint64_t)fired
{
  v13 = *MEMORY[0x277D85DE8];
  if (fired)
  {
    v3 = a2;
    os_unfair_lock_lock((fired + 48));
    v4 = *(fired + 56);

    v5 = SWLogTimer();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4 == v3)
    {
      if (v6)
      {
        v9 = 134218242;
        firedCopy3 = fired;
        v11 = 2114;
        firedCopy4 = fired;
        _os_log_impl(&dword_26C657000, v5, OS_LOG_TYPE_INFO, "%p timer fired:%{public}@", &v9, 0x16u);
      }

      v7 = MEMORY[0x26D6A63C0](*(fired + 64));
      os_unfair_lock_unlock((fired + 48));
      if (v7)
      {
        v7[2](v7, fired);
        [(SWWakingTimer *)fired _setPreventSleepAssertion:?];
      }
    }

    else
    {
      if (v6)
      {
        v9 = 134218242;
        firedCopy3 = fired;
        v11 = 2114;
        firedCopy4 = fired;
        _os_log_impl(&dword_26C657000, v5, OS_LOG_TYPE_INFO, "%p obsolete timer fired:%{public}@", &v9, 0x16u);
      }

      os_unfair_lock_unlock((fired + 48));
      v7 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_updateScheduledWakeAndCheckCanSleep
{
  v24 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    v14 = 0;
    goto LABEL_25;
  }

  os_unfair_lock_lock((self + 48));
  [*(self + 56) timeRemaining];
  if (!*(self + 56))
  {
    if (![*(self + 16) isScheduled])
    {
      goto LABEL_23;
    }

    v3 = SWLogTimer();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
LABEL_22:

      [*(self + 16) cancelWake];
      goto LABEL_23;
    }

LABEL_29:
    v18 = 134218242;
    selfCopy5 = self;
    v20 = 2114;
    selfCopy6 = self;
    _os_log_debug_impl(&dword_26C657000, v3, OS_LOG_TYPE_DEBUG, "%p unscheduled, cancelling wake %{public}@", &v18, 0x16u);
    goto LABEL_22;
  }

  v4 = v2;
  v5 = v2 + CFAbsoluteTimeGetCurrent();
  v6 = fabs(v5);
  isScheduled = [*(self + 16) isScheduled];
  if (v6 == INFINITY)
  {
    if (!isScheduled)
    {
      goto LABEL_23;
    }

    v3 = SWLogTimer();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  if (!isScheduled || ([*(self + 16) wakeTime], vabdd_f64(v5, v8) >= 0.25))
  {
    v9 = *(self + 72);
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    [*(self + 16) scheduleWake:v10 leeway:v5];
  }

  if (v4 <= 0.5)
  {
    v11 = *(self + 72);
    v12 = SWLogTimer();
    v13 = v12;
    if (v11 >= 0.0 && v11 < 10.0)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134218242;
        selfCopy5 = self;
        v20 = 2114;
        selfCopy6 = self;
        _os_log_impl(&dword_26C657000, v13, OS_LOG_TYPE_DEFAULT, "%p preventing sleep for:%{public}@", &v18, 0x16u);
      }

      v14 = 0;
      goto LABEL_24;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = *(self + 72);
      v18 = 134218498;
      selfCopy5 = self;
      v20 = 2114;
      selfCopy6 = self;
      v22 = 2048;
      v23 = v17;
      _os_log_impl(&dword_26C657000, v13, OS_LOG_TYPE_INFO, "%p not preventing sleep with fire imminent for %{public}@ because leeway is too large: %fs", &v18, 0x20u);
    }
  }

LABEL_23:
  v14 = 1;
LABEL_24:
  os_unfair_lock_unlock((self + 48));
LABEL_25:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)scheduleForDate:(id)date leewayInterval:(double)interval queue:(id)queue handler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  queueCopy = queue;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"handler != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *location = 138544642;
      *&location[4] = v20;
      v32 = 2114;
      selfCopy3 = v22;
      v34 = 2048;
      selfCopy2 = self;
      v36 = 2114;
      v37 = @"SWWakingTimer.m";
      v38 = 1024;
      v39 = 116;
      v40 = 2114;
      v41 = v19;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    v23 = v19;
    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C661650);
  }

  v14 = [objc_alloc(MEMORY[0x277CF0D10]) initWithIdentifier:self->_identifier];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot schedule after invalidating"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *location = 138544642;
      *&location[4] = v25;
      v32 = 2114;
      selfCopy3 = v27;
      v34 = 2048;
      selfCopy2 = self;
      v36 = 2114;
      v37 = @"SWWakingTimer.m";
      v38 = 1024;
      v39 = 121;
      v40 = 2114;
      v41 = v24;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    v28 = v24;
    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C661748);
  }

  [(BSTimerScheduleQuerying *)self->_lock_timer invalidate];
  objc_storeStrong(&self->_lock_timer, v14);
  v15 = MEMORY[0x26D6A63C0](handlerCopy);
  lock_handler = self->_lock_handler;
  self->_lock_handler = v15;

  [(SWWakingTimer *)self _lock_setPreventSleepAssertion:?];
  os_unfair_lock_unlock(&self->_lock);
  v17 = SWLogTimer();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *location = 134218242;
    *&location[4] = self;
    v32 = 2114;
    selfCopy3 = self;
    _os_log_debug_impl(&dword_26C657000, v17, OS_LOG_TYPE_DEBUG, "%p scheduling %{public}@", location, 0x16u);
  }

  objc_initWeak(location, self);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __62__SWWakingTimer_scheduleForDate_leewayInterval_queue_handler___block_invoke;
  v29[3] = &unk_279D433C8;
  objc_copyWeak(&v30, location);
  [v14 scheduleForDate:dateCopy leewayInterval:queueCopy queue:v29 handler:interval];
  if ([(SWSystemSleepMonitor *)self->_sleepMonitor isSleepImminent])
  {
    [(SWWakingTimer *)self _updateScheduledWakeAndAcquireSystemActivityAssertionIfNeeded];
  }

  objc_destroyWeak(&v30);
  objc_destroyWeak(location);

  v18 = *MEMORY[0x277D85DE8];
}

void __62__SWWakingTimer_scheduleForDate_leewayInterval_queue_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SWWakingTimer *)WeakRetained _timerFired:v3];
}

- (void)_updateScheduledWakeAndAcquireSystemActivityAssertionIfNeeded
{
  if (self && ([(SWWakingTimer *)self _updateScheduledWakeAndCheckCanSleep]& 1) == 0)
  {
    v2 = [*(self + 32) acquireSystemActivityAssertionWithIdentifier:*(self + 8)];
    [(SWWakingTimer *)self _setPreventSleepAssertion:v2];
  }
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  [(SWWakingTimer *)self _lock_cancel];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_cancel
{
  v10 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = *(self + 56);
    if (v2 && [v2 isScheduled])
    {
      v3 = SWLogTimer();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v6 = 134218242;
        selfCopy = self;
        v8 = 2114;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_26C657000, v3, OS_LOG_TYPE_DEBUG, "%p canceling %{public}@", &v6, 0x16u);
      }
    }

    [*(self + 56) invalidate];
    v4 = *(self + 56);
    *(self + 56) = 0;

    [(SWWakingTimer *)self _lock_setPreventSleepAssertion:?];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;
  [(SWWakingTimer *)self _lock_cancel];
  [(SWScheduledSystemWake *)self->_scheduledWake invalidate];
  [(SWSystemSleepMonitor *)self->_sleepMonitor removeObserver:self];
  sleepMonitor = self->_sleepMonitor;
  self->_sleepMonitor = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)systemSleepMonitor:(id)monitor sleepRequestedWithResult:(id)result
{
  resultCopy = result;
  _updateScheduledWakeAndCheckCanSleep = [(SWWakingTimer *)self _updateScheduledWakeAndCheckCanSleep];
  v6 = resultCopy[2](resultCopy, _updateScheduledWakeAndCheckCanSleep, self->_identifier);
  [(SWWakingTimer *)self _setPreventSleepAssertion:v6];
}

- (void)_setPreventSleepAssertion:(uint64_t)assertion
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (assertion)
  {
    os_unfair_lock_lock((assertion + 48));
    if (*(assertion + 80))
    {
      os_unfair_lock_unlock((assertion + 48));
      v4 = SWLogTimer();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134218242;
        assertionCopy = assertion;
        v8 = 2114;
        v9 = v3;
        _os_log_impl(&dword_26C657000, v4, OS_LOG_TYPE_DEFAULT, "%p timer invalidated while taking power assertion, will invalidate it immediately %{public}@", &v6, 0x16u);
      }

      [v3 invalidate];
    }

    else
    {
      [(SWWakingTimer *)assertion _lock_setPreventSleepAssertion:v3];
      os_unfair_lock_unlock((assertion + 48));
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion
{
  completionCopy = completion;
  [(SWWakingTimer *)self _updateScheduledWakeAndAcquireSystemActivityAssertionIfNeeded];
  completionCopy[2]();
}

@end