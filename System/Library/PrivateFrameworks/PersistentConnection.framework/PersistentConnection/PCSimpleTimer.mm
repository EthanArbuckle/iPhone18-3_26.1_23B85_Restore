@interface PCSimpleTimer
+ (double)currentMachTimeInterval;
+ (id)lastSystemWakeDate;
- (BOOL)firingIsImminent;
- (BOOL)isUserVisible;
- (BOOL)isValid;
- (PCSimpleTimer)initWithAbsoluteTime:(double)a3 serviceIdentifier:(id)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7 triggerOnGMTChange:(BOOL)a8;
- (PCSimpleTimer)initWithFireDate:(id)a3 serviceIdentifier:(id)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7;
- (PCSimpleTimer)initWithTimeInterval:(double)a3 serviceIdentifier:(id)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7;
- (id)_getTimerMode;
- (id)_getTimerRunLoop;
- (id)debugDescription;
- (id)userInfo;
- (void)_fireTimerFired;
- (void)_invalidateAllowAsync:(BOOL)a3;
- (void)_performBlockOnQueue:(id)a3;
- (void)_powerNotificationSleepIsImminent;
- (void)_powerNotificationSleepIsNotImminent;
- (void)_preventSleepFired;
- (void)_scheduleTimer;
- (void)_setPowerMonitoringEnabled:(BOOL)a3;
- (void)_setSignificantTimeChangeMonitoringEnabled:(BOOL)a3;
- (void)_significantTimeChange;
- (void)_updateTimers;
- (void)dealloc;
- (void)scheduleInQueue:(id)a3;
- (void)scheduleInRunLoop:(id)a3 inMode:(id)a4;
- (void)setDisableSystemWaking:(BOOL)a3;
- (void)setUserVisible:(BOOL)a3;
- (void)updateFireTime:(double)a3 triggerOnGMTChange:(BOOL)a4;
@end

@implementation PCSimpleTimer

- (void)_updateTimers
{
  v42 = *MEMORY[0x277D85DE8];
  if (self->_fireTimer && [(PCDispatchTimer *)self->_preventSleepTimer isValid])
  {
    if (self->_sleepIsImminent)
    {
      v3 = +[PCLog timer];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25E3EF000, v3, OS_LOG_TYPE_DEFAULT, "Suspended timer for imminent system sleep", buf, 2u);
      }

      preventSleepTimer = self->_preventSleepTimer;
      v5 = [MEMORY[0x277CBEAA8] distantFuture];
      [(PCDispatchTimer *)preventSleepTimer setFireDate:v5];

      fireTimer = self->_fireTimer;
      v7 = [MEMORY[0x277CBEAA8] distantFuture];
LABEL_7:
      v8 = v7;
      [(PCDispatchTimer *)fireTimer setFireDate:v7];
LABEL_31:

      goto LABEL_32;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v10 = Current;
    if (self->_triggerOnGMTChange && self->_lastUpdateTime - Current > 60.0)
    {
      v11 = +[PCLog timer];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_fireTime];
        v13 = PCStringFromDate(v12);
        v14 = self->_lastUpdateTime - v10;
        *buf = 138543618;
        v35 = v13;
        v36 = 2048;
        v37 = v14;
        _os_log_impl(&dword_25E3EF000, v11, OS_LOG_TYPE_DEFAULT, "Firing simple timer that was scheduled to fire at [%{public}@] since time has moved backwards by at least %g seconds", buf, 0x16u);
      }

      [(PCDispatchTimer *)self->_preventSleepTimer invalidate];
      fireTimer = self->_fireTimer;
      v7 = [MEMORY[0x277CBEAA8] distantPast];
      goto LABEL_7;
    }

    v15 = MEMORY[0x277CBEAA8];
    fireTime = self->_fireTime;
    if (PCScheduledWakeRTCPrecision_onceToken != -1)
    {
      v33 = self->_fireTime;
      PCScheduledWakeRTCPrecision_cold_1();
      fireTime = v33;
    }

    v17 = [v15 dateWithTimeIntervalSinceReferenceDate:fireTime - *&PCScheduledWakeRTCPrecision_scheduledWakeRTCPrecision];
    v8 = v17;
    if (self->_disableSystemWaking)
    {
      v18 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    else
    {
      v18 = v17;
    }

    v19 = v18;
    [(PCDispatchTimer *)self->_preventSleepTimer setFireDate:v18];
    v20 = self->_fireTimer;
    v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_fireTime];
    [(PCDispatchTimer *)v20 setFireDate:v21];

    scheduledWakeDate = self->_scheduledWakeDate;
    if (self->_disableSystemWaking)
    {
      if (scheduledWakeDate)
      {
        v23 = +[PCLog timer];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          PCStringFromDate(self->_scheduledWakeDate);
          v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138543618;
          v35 = self;
          v36 = 2114;
          v37 = v24;
          _os_log_impl(&dword_25E3EF000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Canceling system wake for simpletimer [%{public}@]", buf, 0x16u);
        }

        [PCSystemWakeManager scheduleWake:0 wakeDate:self->_scheduledWakeDate acceptableDelay:self->_userVisible userVisible:self->_serviceIdentifier serviceIdentifier:self uniqueIdentifier:0.0];
        v25 = 0;
LABEL_29:
        v31 = self->_scheduledWakeDate;
        self->_scheduledWakeDate = v25;
      }
    }

    else if (([v8 isEqualToDate:scheduledWakeDate] & 1) == 0)
    {
      v26 = +[PCLog timer];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        PCStringFromDate(self->_scheduledWakeDate);
        v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v28 = PCStringFromDate(v8);
        earlyFireDelta = self->_earlyFireDelta;
        *buf = 138544130;
        v35 = self;
        v36 = 2114;
        v37 = v27;
        v38 = 2114;
        v39 = v28;
        v40 = 2048;
        v41 = earlyFireDelta;
        _os_log_impl(&dword_25E3EF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Existing wake at %{public}@ re-scheduling to %{public}@ with leeway of %g", buf, 0x2Au);
      }

      [PCSystemWakeManager scheduleWake:1 wakeDate:v8 acceptableDelay:self->_userVisible userVisible:self->_serviceIdentifier serviceIdentifier:self uniqueIdentifier:self->_earlyFireDelta];
      v30 = self->_scheduledWakeDate;
      if (v30)
      {
        [PCSystemWakeManager scheduleWake:0 wakeDate:v30 acceptableDelay:self->_userVisible userVisible:self->_serviceIdentifier serviceIdentifier:self uniqueIdentifier:0.0];
      }

      v25 = v8;
      goto LABEL_29;
    }

    self->_lastUpdateTime = v10;

    goto LABEL_31;
  }

LABEL_32:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleTimer
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  fireTimer = v2->_fireTimer;
  if (!fireTimer)
  {
    v4 = +[PCLog timer];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v2->_fireTime];
      v6 = PCStringFromDate(v5);
      v20 = 138543618;
      v21 = v2;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_25E3EF000, v4, OS_LOG_TYPE_DEFAULT, "Started simple timer %{public}@ with fire date [%{public}@]", &v20, 0x16u);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v2->_startTime = Current;
    v2->_lastUpdateTime = Current;
    queue = v2->_queue;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (queue)
    {
      v10 = dispatch_queue_create_with_target_V2("PCSimpleTimer-timerQ", v9, queue);
    }

    else
    {
      v10 = dispatch_queue_create("PCSimpleTimer-timerQ", v9);
    }

    v11 = v10;

    v12 = [[PCDispatchTimer alloc] initWithQueue:v11 target:v2 selector:sel__preventSleepFired fireTime:-1];
    preventSleepTimer = v2->_preventSleepTimer;
    v2->_preventSleepTimer = v12;

    v14 = [[PCDispatchTimer alloc] initWithQueue:v11 target:v2 selector:sel__fireTimerFired fireTime:-1];
    v15 = v2->_fireTimer;
    v2->_fireTimer = v14;

    v16 = +[PCLog timer];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v2->_preventSleepTimer;
      v18 = v2->_fireTimer;
      v20 = 138544130;
      v21 = v2;
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_25E3EF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ created preventSleepTimer %{public}@ and fireTimer %{public}@ on queue %{public}@", &v20, 0x2Au);
    }

    fireTimer = v2->_fireTimer;
  }

  [(PCDispatchTimer *)fireTimer start];
  [(PCDispatchTimer *)v2->_preventSleepTimer start];
  [(PCSimpleTimer *)v2 _setPowerMonitoringEnabled:1];
  [(PCSimpleTimer *)v2 _setSignificantTimeChangeMonitoringEnabled:1];
  [(PCSimpleTimer *)v2 _updateTimers];
  objc_sync_exit(v2);

  v19 = *MEMORY[0x277D85DE8];
}

+ (id)lastSystemWakeDate
{
  v7 = 0;
  v8 = 0;
  v6 = 16;
  if (sysctlbyname("kern.waketime", &v7, &v6, 0, 0) || (v2 = v7, v7 <= 31535999))
  {
    v3 = sysctlbyname("kern.boottime", &v7, &v6, 0, 0) == 0;
    v2 = v7;
  }

  else
  {
    v3 = 1;
  }

  v4 = 0;
  if (v3 && v2)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v2 + v8 * 0.000001];
  }

  return v4;
}

+ (double)currentMachTimeInterval
{
  if (currentMachTimeInterval_pred != -1)
  {
    +[PCSimpleTimer currentMachTimeInterval];
  }

  return *&currentMachTimeInterval_timeScale * mach_absolute_time();
}

- (void)dealloc
{
  [(PCSimpleTimer *)self _invalidateAllowAsync:0];
  v3.receiver = self;
  v3.super_class = PCSimpleTimer;
  [(PCSimpleTimer *)&v3 dealloc];
}

- (BOOL)firingIsImminent
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_powerAssertionID != 0;
  objc_sync_exit(v2);

  return v3;
}

- (id)_getTimerRunLoop
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_timerRunLoop;
  objc_sync_exit(v2);

  return v3;
}

- (id)_getTimerMode
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_timerMode;
  objc_sync_exit(v2);

  return v3;
}

- (void)_powerNotificationSleepIsNotImminent
{
  obj = self;
  objc_sync_enter(obj);
  obj->_sleepIsImminent = 0;
  [(PCSimpleTimer *)obj _updateTimers];
  objc_sync_exit(obj);
}

- (void)_fireTimerFired
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_target)
  {
    if (!v2->_disableSystemWaking)
    {
      [(PCSimpleTimer *)v2 _preventSleepFired];
    }

    v3 = +[PCLog timer];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v2;
      _os_log_impl(&dword_25E3EF000, v3, OS_LOG_TYPE_DEFAULT, "SimpleTimer %{public}@ has fired", buf, 0xCu);
    }

    v4 = v2->_target;
    v5 = v2->_timerMode;
    v6 = v2->_timerRunLoop;
    queue = v2->_queue;
    if (queue)
    {
      v8 = queue;
    }

    if (v2->_selector)
    {
      selector = v2->_selector;
    }

    else
    {
      selector = 0;
    }

    [(PCSimpleTimer *)v2 invalidate];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    queue = 0;
    selector = 0;
    v4 = 0;
  }

  objc_sync_exit(v2);

  if (v6 && v5)
  {
    v10 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
    [(NSRunLoop *)v6 performSelector:selector target:v4 argument:v2 order:0 modes:v10];

    CFRunLoopWakeUp([(NSRunLoop *)v6 getCFRunLoop]);
  }

  else if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__PCSimpleTimer__fireTimerFired__block_invoke;
    block[3] = &unk_279A1A2E0;
    v14 = v2;
    v15 = selector;
    v13 = v4;
    dispatch_async(queue, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (PCSimpleTimer)initWithFireDate:(id)a3 serviceIdentifier:(id)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v15 = [(PCSimpleTimer *)self initWithAbsoluteTime:v14 serviceIdentifier:v13 target:a6 selector:v12 userInfo:0 triggerOnGMTChange:?];

  return v15;
}

- (PCSimpleTimer)initWithTimeInterval:(double)a3 serviceIdentifier:(id)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = [(PCSimpleTimer *)self initWithAbsoluteTime:v14 serviceIdentifier:v13 target:a6 selector:v12 userInfo:1 triggerOnGMTChange:CFAbsoluteTimeGetCurrent() + a3];

  return v15;
}

- (PCSimpleTimer)initWithAbsoluteTime:(double)a3 serviceIdentifier:(id)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7 triggerOnGMTChange:(BOOL)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v24.receiver = self;
  v24.super_class = PCSimpleTimer;
  v18 = [(PCSimpleTimer *)&v24 init];
  v19 = v18;
  if (v18)
  {
    if (!v16 || !a6)
    {
      [PCSimpleTimer initWithAbsoluteTime:v18 serviceIdentifier:a2 target:? selector:? userInfo:? triggerOnGMTChange:?];
    }

    v19->_fireTime = a3;
    v20 = [v15 copy];
    serviceIdentifier = v19->_serviceIdentifier;
    v19->_serviceIdentifier = v20;

    objc_storeStrong(&v19->_target, a5);
    if (a6)
    {
      v22 = a6;
    }

    else
    {
      v22 = 0;
    }

    v19->_selector = v22;
    objc_storeStrong(&v19->_userInfo, a7);
    v19->_triggerOnGMTChange = a8;
  }

  return v19;
}

- (void)updateFireTime:(double)a3 triggerOnGMTChange:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  fireTime = v6->_fireTime;
  if (fireTime != a3 || v6->_triggerOnGMTChange != v4)
  {
    earlyFireDelta = v6->_earlyFireDelta;
    v9 = +[PCLog timer];
    v10 = fireTime + earlyFireDelta - a3;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6->_fireTime];
      v12 = v6->_earlyFireDelta;
      v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a3];
      v14 = v13;
      triggerOnGMTChange = v6->_triggerOnGMTChange;
      v16 = @"NO";
      v19 = 138544898;
      if (triggerOnGMTChange)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v20 = v6;
      v21 = 2114;
      if (v4)
      {
        v16 = @"YES";
      }

      v22 = v11;
      v23 = 2048;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      v27 = 2048;
      v28 = v10;
      v29 = 2114;
      v30 = v17;
      v31 = 2114;
      v32 = v16;
      _os_log_impl(&dword_25E3EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ updateFireTime from %{public}@ + %g to %{public}@ + %g, trigger from %{public}@ to %{public}@", &v19, 0x48u);
    }

    v6->_earlyFireDelta = v10;
    v6->_fireTime = a3;
    v6->_triggerOnGMTChange = v4;
    [(PCSimpleTimer *)v6 _updateTimers];
  }

  objc_sync_exit(v6);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setDisableSystemWaking:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_disableSystemWaking = a3;
  [(PCSimpleTimer *)obj _updateTimers];
  objc_sync_exit(obj);
}

- (void)setUserVisible:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_userVisible = a3;
  [(PCSimpleTimer *)obj _updateTimers];
  objc_sync_exit(obj);
}

- (BOOL)isUserVisible
{
  v2 = self;
  objc_sync_enter(v2);
  userVisible = v2->_userVisible;
  objc_sync_exit(v2);

  return userVisible;
}

- (void)scheduleInRunLoop:(id)a3 inMode:(id)a4
{
  v13 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  if (!v8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:v9 file:@"PCSimpleTimer.m" lineNumber:178 description:{@"%@ run loop mode cannot be nil", objc_opt_class()}];
  }

  if (!v9->_target)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:v9 file:@"PCSimpleTimer.m" lineNumber:179 description:{@"Cannot schedule invalidated %@", objc_opt_class()}];
  }

  if (v9->_queue)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:v9 file:@"PCSimpleTimer.m" lineNumber:180 description:{@"Cannot schedule on runloop when already scheduled on queue %@", objc_opt_class()}];
  }

  if (v9->_timerRunLoop != v13)
  {
    objc_storeStrong(&v9->_timerRunLoop, a3);
  }

  if (v9->_timerMode != v8)
  {
    objc_storeStrong(&v9->_timerMode, a4);
  }

  [(PCSimpleTimer *)v9 _scheduleTimer];
  objc_sync_exit(v9);
}

- (void)scheduleInQueue:(id)a3
{
  v10 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (v6->_target)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:v6 file:@"PCSimpleTimer.m" lineNumber:196 description:{@"Cannot schedule invalidated %@", objc_opt_class()}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:v6 file:@"PCSimpleTimer.m" lineNumber:197 description:{@"Cannot schedule on NULL queue %@", objc_opt_class()}];

LABEL_3:
  if (v6->_timerRunLoop)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:v6 file:@"PCSimpleTimer.m" lineNumber:198 description:{@"Cannot schedule on queue when already scheduled on runloop %@", objc_opt_class()}];
  }

  if (v6->_queue != v10)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  [(PCSimpleTimer *)v6 _scheduleTimer];
  objc_sync_exit(v6);
}

- (void)_invalidateAllowAsync:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_target)
  {
    v5 = +[PCLog timer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v4;
      _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating simple timer %{public}@", buf, 0xCu);
    }

    target = v4->_target;
    v4->_target = 0;

    v4->_selector = 0;
    timerRunLoop = v4->_timerRunLoop;
    v4->_timerRunLoop = 0;

    timerMode = v4->_timerMode;
    v4->_timerMode = 0;

    queue = v4->_queue;
    v4->_queue = 0;

    [(PCDispatchTimer *)v4->_preventSleepTimer invalidate];
    preventSleepTimer = v4->_preventSleepTimer;
    v4->_preventSleepTimer = 0;

    [(PCDispatchTimer *)v4->_fireTimer invalidate];
    fireTimer = v4->_fireTimer;
    v4->_fireTimer = 0;

    scheduledWakeDate = v4->_scheduledWakeDate;
    if (scheduledWakeDate)
    {
      [(NSDate *)scheduledWakeDate timeIntervalSinceNow];
      if (v13 >= 2.22044605e-16)
      {
        v16 = +[PCLog timer];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = PCStringFromDate(v4->_scheduledWakeDate);
          *buf = 138543362;
          v24 = v17;
          _os_log_impl(&dword_25E3EF000, v16, OS_LOG_TYPE_DEFAULT, "Canceling system wake for simpletimer [%{public}@]", buf, 0xCu);
        }

        [PCSystemWakeManager scheduleWake:0 wakeDate:v4->_scheduledWakeDate acceptableDelay:v4->_userVisible userVisible:v4->_serviceIdentifier serviceIdentifier:v4 uniqueIdentifier:0.0];
      }

      else
      {
        v14 = +[PCLog timer];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = PCStringFromDate(v4->_scheduledWakeDate);
          *buf = 138543362;
          v24 = v15;
          _os_log_impl(&dword_25E3EF000, v14, OS_LOG_TYPE_DEFAULT, "Not canceling system wake for [%{public}@], which is in the past", buf, 0xCu);
        }
      }

      v18 = v4->_scheduledWakeDate;
      v4->_scheduledWakeDate = 0;
    }

    if (v4->_powerAssertionID)
    {
      v19 = +[PCLog timer];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        powerAssertionID = v4->_powerAssertionID;
        *buf = 67109120;
        LODWORD(v24) = powerAssertionID;
        _os_log_impl(&dword_25E3EF000, v19, OS_LOG_TYPE_DEFAULT, "Releasing prevent sleep power assertion %i", buf, 8u);
      }

      v21 = IOPMAssertionRelease(v4->_powerAssertionID);
      if (v21)
      {
        NSLog(&cfstr_FailedToReleas.isa, v4->_powerAssertionID, v21);
      }

      v4->_powerAssertionID = 0;
    }

    if (v3)
    {
      [(PCSimpleTimer *)v4 _setPowerMonitoringEnabled:0];
    }

    [(PCSimpleTimer *)v4 _setSignificantTimeChangeMonitoringEnabled:0];
  }

  objc_sync_exit(v4);

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)isValid
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_target != 0;
  objc_sync_exit(v2);

  return v3;
}

- (id)userInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_userInfo;
  objc_sync_exit(v2);

  return v3;
}

- (void)_performBlockOnQueue:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    queue = v5->_queue;
    if (queue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__PCSimpleTimer__performBlockOnQueue___block_invoke;
      block[3] = &unk_279A1A2B8;
      v8 = v4;
      dispatch_async(queue, block);
    }
  }

  objc_sync_exit(v5);
}

- (void)_preventSleepFired
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_25E3EF000, a2, OS_LOG_TYPE_FAULT, "Unable to take power assertion. IOPMAssertionCreateWithDescription() returned %#x", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_setPowerMonitoringEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = self;
    v4 = _GetPowerMonitoringQueue();
    block = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v5 = ___EnablePowerMonitoring_block_invoke;
  }

  else
  {
    v3 = self;
    v4 = _GetPowerMonitoringQueue();
    block = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v5 = ___DisablePowerMonitoring_block_invoke;
  }

  v9 = v5;
  v10 = &unk_279A19E50;
  v11 = v3;
  v6 = v3;
  dispatch_async(v4, &block);
}

- (void)_powerNotificationSleepIsImminent
{
  obj = self;
  objc_sync_enter(obj);
  obj->_sleepIsImminent = 1;
  [(PCSimpleTimer *)obj _updateTimers];
  objc_sync_exit(obj);
}

- (void)_significantTimeChange
{
  obj = self;
  objc_sync_enter(obj);
  [(PCSimpleTimer *)obj _updateTimers];
  objc_sync_exit(obj);
}

- (void)_setSignificantTimeChangeMonitoringEnabled:(BOOL)a3
{
  p_significantTimeChangeToken = &self->_significantTimeChangeToken;
  significantTimeChangeToken = self->_significantTimeChangeToken;
  if (a3)
  {
    if (significantTimeChangeToken == -1)
    {
      v6 = dispatch_queue_create("PCSimpleTimer-SignificantTimeChangeQueue", 0);
      v7 = [MEMORY[0x277CFB990] weakRefWithObject:self];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __60__PCSimpleTimer__setSignificantTimeChangeMonitoringEnabled___block_invoke;
      handler[3] = &unk_279A19EE0;
      v10 = v7;
      v8 = v7;
      notify_register_dispatch("SignificantTimeChangeNotification", p_significantTimeChangeToken, v6, handler);
    }
  }

  else if (significantTimeChangeToken != -1)
  {
    notify_cancel(significantTimeChangeToken);
    *p_significantTimeChangeToken = -1;
  }
}

void __60__PCSimpleTimer__setSignificantTimeChangeMonitoringEnabled___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _significantTimeChange];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = PCSimpleTimer;
  v4 = [(PCSimpleTimer *)&v15 description];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_fireTime];
  selector = self->_selector;
  p_selector = &self->_selector;
  v6 = selector;
  v9 = *(p_selector - 1);
  if (selector)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (*(p_selector - 31))
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  v12 = NSStringFromSelector(v10);
  v13 = [v3 stringWithFormat:@"%@{fireDate = %@, disable system waking = %s, target = %@, selector = %@}", v4, v5, v11, v9, v12];

  return v13;
}

double __40__PCSimpleTimer_currentMachTimeInterval__block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 * 0.000000001;
  currentMachTimeInterval_timeScale = *&result;
  return result;
}

- (void)initWithAbsoluteTime:(uint64_t)a1 serviceIdentifier:(uint64_t)a2 target:selector:userInfo:triggerOnGMTChange:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PCSimpleTimer.m" lineNumber:119 description:{@"%@ target and selector are required", objc_opt_class()}];
}

@end