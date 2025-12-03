@interface PCSimpleTimer
+ (double)currentMachTimeInterval;
+ (id)lastSystemWakeDate;
- (BOOL)firingIsImminent;
- (BOOL)isUserVisible;
- (BOOL)isValid;
- (PCSimpleTimer)initWithAbsoluteTime:(double)time serviceIdentifier:(id)identifier target:(id)target selector:(SEL)selector userInfo:(id)info triggerOnGMTChange:(BOOL)change;
- (PCSimpleTimer)initWithFireDate:(id)date serviceIdentifier:(id)identifier target:(id)target selector:(SEL)selector userInfo:(id)info;
- (PCSimpleTimer)initWithTimeInterval:(double)interval serviceIdentifier:(id)identifier target:(id)target selector:(SEL)selector userInfo:(id)info;
- (id)_getTimerMode;
- (id)_getTimerRunLoop;
- (id)debugDescription;
- (id)userInfo;
- (void)_fireTimerFired;
- (void)_invalidateAllowAsync:(BOOL)async;
- (void)_performBlockOnQueue:(id)queue;
- (void)_powerNotificationSleepIsImminent;
- (void)_powerNotificationSleepIsNotImminent;
- (void)_preventSleepFired;
- (void)_scheduleTimer;
- (void)_setPowerMonitoringEnabled:(BOOL)enabled;
- (void)_setSignificantTimeChangeMonitoringEnabled:(BOOL)enabled;
- (void)_significantTimeChange;
- (void)_updateTimers;
- (void)dealloc;
- (void)scheduleInQueue:(id)queue;
- (void)scheduleInRunLoop:(id)loop inMode:(id)mode;
- (void)setDisableSystemWaking:(BOOL)waking;
- (void)setUserVisible:(BOOL)visible;
- (void)updateFireTime:(double)time triggerOnGMTChange:(BOOL)change;
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
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      [(PCDispatchTimer *)preventSleepTimer setFireDate:distantFuture];

      fireTimer = self->_fireTimer;
      distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
LABEL_7:
      v8 = distantFuture2;
      [(PCDispatchTimer *)fireTimer setFireDate:distantFuture2];
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
        selfCopy2 = v13;
        v36 = 2048;
        v37 = v14;
        _os_log_impl(&dword_25E3EF000, v11, OS_LOG_TYPE_DEFAULT, "Firing simple timer that was scheduled to fire at [%{public}@] since time has moved backwards by at least %g seconds", buf, 0x16u);
      }

      [(PCDispatchTimer *)self->_preventSleepTimer invalidate];
      fireTimer = self->_fireTimer;
      distantFuture2 = [MEMORY[0x277CBEAA8] distantPast];
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
      distantFuture3 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    else
    {
      distantFuture3 = v17;
    }

    v19 = distantFuture3;
    [(PCDispatchTimer *)self->_preventSleepTimer setFireDate:distantFuture3];
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
          selfCopy2 = self;
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
        selfCopy2 = self;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fireTimer = selfCopy->_fireTimer;
  if (!fireTimer)
  {
    v4 = +[PCLog timer];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:selfCopy->_fireTime];
      v6 = PCStringFromDate(v5);
      v20 = 138543618;
      v21 = selfCopy;
      v22 = 2114;
      v23 = v6;
      _os_log_impl(&dword_25E3EF000, v4, OS_LOG_TYPE_DEFAULT, "Started simple timer %{public}@ with fire date [%{public}@]", &v20, 0x16u);
    }

    Current = CFAbsoluteTimeGetCurrent();
    selfCopy->_startTime = Current;
    selfCopy->_lastUpdateTime = Current;
    queue = selfCopy->_queue;
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

    v12 = [[PCDispatchTimer alloc] initWithQueue:v11 target:selfCopy selector:sel__preventSleepFired fireTime:-1];
    preventSleepTimer = selfCopy->_preventSleepTimer;
    selfCopy->_preventSleepTimer = v12;

    v14 = [[PCDispatchTimer alloc] initWithQueue:v11 target:selfCopy selector:sel__fireTimerFired fireTime:-1];
    v15 = selfCopy->_fireTimer;
    selfCopy->_fireTimer = v14;

    v16 = +[PCLog timer];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = selfCopy->_preventSleepTimer;
      v18 = selfCopy->_fireTimer;
      v20 = 138544130;
      v21 = selfCopy;
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_25E3EF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ created preventSleepTimer %{public}@ and fireTimer %{public}@ on queue %{public}@", &v20, 0x2Au);
    }

    fireTimer = selfCopy->_fireTimer;
  }

  [(PCDispatchTimer *)fireTimer start];
  [(PCDispatchTimer *)selfCopy->_preventSleepTimer start];
  [(PCSimpleTimer *)selfCopy _setPowerMonitoringEnabled:1];
  [(PCSimpleTimer *)selfCopy _setSignificantTimeChangeMonitoringEnabled:1];
  [(PCSimpleTimer *)selfCopy _updateTimers];
  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_powerAssertionID != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_getTimerRunLoop
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_timerRunLoop;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_getTimerMode
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_timerMode;
  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_target)
  {
    if (!selfCopy->_disableSystemWaking)
    {
      [(PCSimpleTimer *)selfCopy _preventSleepFired];
    }

    v3 = +[PCLog timer];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = selfCopy;
      _os_log_impl(&dword_25E3EF000, v3, OS_LOG_TYPE_DEFAULT, "SimpleTimer %{public}@ has fired", buf, 0xCu);
    }

    v4 = selfCopy->_target;
    v5 = selfCopy->_timerMode;
    v6 = selfCopy->_timerRunLoop;
    queue = selfCopy->_queue;
    if (queue)
    {
      v8 = queue;
    }

    if (selfCopy->_selector)
    {
      selector = selfCopy->_selector;
    }

    else
    {
      selector = 0;
    }

    [(PCSimpleTimer *)selfCopy invalidate];
  }

  else
  {
    v5 = 0;
    v6 = 0;
    queue = 0;
    selector = 0;
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  if (v6 && v5)
  {
    v10 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
    [(NSRunLoop *)v6 performSelector:selector target:v4 argument:selfCopy order:0 modes:v10];

    CFRunLoopWakeUp([(NSRunLoop *)v6 getCFRunLoop]);
  }

  else if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__PCSimpleTimer__fireTimerFired__block_invoke;
    block[3] = &unk_279A1A2E0;
    v14 = selfCopy;
    v15 = selector;
    v13 = v4;
    dispatch_async(queue, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (PCSimpleTimer)initWithFireDate:(id)date serviceIdentifier:(id)identifier target:(id)target selector:(SEL)selector userInfo:(id)info
{
  infoCopy = info;
  targetCopy = target;
  identifierCopy = identifier;
  [date timeIntervalSinceReferenceDate];
  v15 = [(PCSimpleTimer *)self initWithAbsoluteTime:identifierCopy serviceIdentifier:targetCopy target:selector selector:infoCopy userInfo:0 triggerOnGMTChange:?];

  return v15;
}

- (PCSimpleTimer)initWithTimeInterval:(double)interval serviceIdentifier:(id)identifier target:(id)target selector:(SEL)selector userInfo:(id)info
{
  infoCopy = info;
  targetCopy = target;
  identifierCopy = identifier;
  interval = [(PCSimpleTimer *)self initWithAbsoluteTime:identifierCopy serviceIdentifier:targetCopy target:selector selector:infoCopy userInfo:1 triggerOnGMTChange:CFAbsoluteTimeGetCurrent() + interval];

  return interval;
}

- (PCSimpleTimer)initWithAbsoluteTime:(double)time serviceIdentifier:(id)identifier target:(id)target selector:(SEL)selector userInfo:(id)info triggerOnGMTChange:(BOOL)change
{
  identifierCopy = identifier;
  targetCopy = target;
  infoCopy = info;
  v24.receiver = self;
  v24.super_class = PCSimpleTimer;
  v18 = [(PCSimpleTimer *)&v24 init];
  v19 = v18;
  if (v18)
  {
    if (!targetCopy || !selector)
    {
      [PCSimpleTimer initWithAbsoluteTime:v18 serviceIdentifier:a2 target:? selector:? userInfo:? triggerOnGMTChange:?];
    }

    v19->_fireTime = time;
    v20 = [identifierCopy copy];
    serviceIdentifier = v19->_serviceIdentifier;
    v19->_serviceIdentifier = v20;

    objc_storeStrong(&v19->_target, target);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v19->_selector = selectorCopy;
    objc_storeStrong(&v19->_userInfo, info);
    v19->_triggerOnGMTChange = change;
  }

  return v19;
}

- (void)updateFireTime:(double)time triggerOnGMTChange:(BOOL)change
{
  changeCopy = change;
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fireTime = selfCopy->_fireTime;
  if (fireTime != time || selfCopy->_triggerOnGMTChange != changeCopy)
  {
    earlyFireDelta = selfCopy->_earlyFireDelta;
    v9 = +[PCLog timer];
    v10 = fireTime + earlyFireDelta - time;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:selfCopy->_fireTime];
      v12 = selfCopy->_earlyFireDelta;
      v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:time];
      v14 = v13;
      triggerOnGMTChange = selfCopy->_triggerOnGMTChange;
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

      v20 = selfCopy;
      v21 = 2114;
      if (changeCopy)
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

    selfCopy->_earlyFireDelta = v10;
    selfCopy->_fireTime = time;
    selfCopy->_triggerOnGMTChange = changeCopy;
    [(PCSimpleTimer *)selfCopy _updateTimers];
  }

  objc_sync_exit(selfCopy);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setDisableSystemWaking:(BOOL)waking
{
  obj = self;
  objc_sync_enter(obj);
  obj->_disableSystemWaking = waking;
  [(PCSimpleTimer *)obj _updateTimers];
  objc_sync_exit(obj);
}

- (void)setUserVisible:(BOOL)visible
{
  obj = self;
  objc_sync_enter(obj);
  obj->_userVisible = visible;
  [(PCSimpleTimer *)obj _updateTimers];
  objc_sync_exit(obj);
}

- (BOOL)isUserVisible
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userVisible = selfCopy->_userVisible;
  objc_sync_exit(selfCopy);

  return userVisible;
}

- (void)scheduleInRunLoop:(id)loop inMode:(id)mode
{
  loopCopy = loop;
  modeCopy = mode;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!modeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PCSimpleTimer.m" lineNumber:178 description:{@"%@ run loop mode cannot be nil", objc_opt_class()}];
  }

  if (!selfCopy->_target)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PCSimpleTimer.m" lineNumber:179 description:{@"Cannot schedule invalidated %@", objc_opt_class()}];
  }

  if (selfCopy->_queue)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"PCSimpleTimer.m" lineNumber:180 description:{@"Cannot schedule on runloop when already scheduled on queue %@", objc_opt_class()}];
  }

  if (selfCopy->_timerRunLoop != loopCopy)
  {
    objc_storeStrong(&selfCopy->_timerRunLoop, loop);
  }

  if (selfCopy->_timerMode != modeCopy)
  {
    objc_storeStrong(&selfCopy->_timerMode, mode);
  }

  [(PCSimpleTimer *)selfCopy _scheduleTimer];
  objc_sync_exit(selfCopy);
}

- (void)scheduleInQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_target)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PCSimpleTimer.m" lineNumber:196 description:{@"Cannot schedule invalidated %@", objc_opt_class()}];

    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PCSimpleTimer.m" lineNumber:197 description:{@"Cannot schedule on NULL queue %@", objc_opt_class()}];

LABEL_3:
  if (selfCopy->_timerRunLoop)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"PCSimpleTimer.m" lineNumber:198 description:{@"Cannot schedule on queue when already scheduled on runloop %@", objc_opt_class()}];
  }

  if (selfCopy->_queue != queueCopy)
  {
    objc_storeStrong(&selfCopy->_queue, queue);
  }

  [(PCSimpleTimer *)selfCopy _scheduleTimer];
  objc_sync_exit(selfCopy);
}

- (void)_invalidateAllowAsync:(BOOL)async
{
  asyncCopy = async;
  v25 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_target)
  {
    v5 = +[PCLog timer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = selfCopy;
      _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating simple timer %{public}@", buf, 0xCu);
    }

    target = selfCopy->_target;
    selfCopy->_target = 0;

    selfCopy->_selector = 0;
    timerRunLoop = selfCopy->_timerRunLoop;
    selfCopy->_timerRunLoop = 0;

    timerMode = selfCopy->_timerMode;
    selfCopy->_timerMode = 0;

    queue = selfCopy->_queue;
    selfCopy->_queue = 0;

    [(PCDispatchTimer *)selfCopy->_preventSleepTimer invalidate];
    preventSleepTimer = selfCopy->_preventSleepTimer;
    selfCopy->_preventSleepTimer = 0;

    [(PCDispatchTimer *)selfCopy->_fireTimer invalidate];
    fireTimer = selfCopy->_fireTimer;
    selfCopy->_fireTimer = 0;

    scheduledWakeDate = selfCopy->_scheduledWakeDate;
    if (scheduledWakeDate)
    {
      [(NSDate *)scheduledWakeDate timeIntervalSinceNow];
      if (v13 >= 2.22044605e-16)
      {
        v16 = +[PCLog timer];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = PCStringFromDate(selfCopy->_scheduledWakeDate);
          *buf = 138543362;
          v24 = v17;
          _os_log_impl(&dword_25E3EF000, v16, OS_LOG_TYPE_DEFAULT, "Canceling system wake for simpletimer [%{public}@]", buf, 0xCu);
        }

        [PCSystemWakeManager scheduleWake:0 wakeDate:selfCopy->_scheduledWakeDate acceptableDelay:selfCopy->_userVisible userVisible:selfCopy->_serviceIdentifier serviceIdentifier:selfCopy uniqueIdentifier:0.0];
      }

      else
      {
        v14 = +[PCLog timer];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = PCStringFromDate(selfCopy->_scheduledWakeDate);
          *buf = 138543362;
          v24 = v15;
          _os_log_impl(&dword_25E3EF000, v14, OS_LOG_TYPE_DEFAULT, "Not canceling system wake for [%{public}@], which is in the past", buf, 0xCu);
        }
      }

      v18 = selfCopy->_scheduledWakeDate;
      selfCopy->_scheduledWakeDate = 0;
    }

    if (selfCopy->_powerAssertionID)
    {
      v19 = +[PCLog timer];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        powerAssertionID = selfCopy->_powerAssertionID;
        *buf = 67109120;
        LODWORD(v24) = powerAssertionID;
        _os_log_impl(&dword_25E3EF000, v19, OS_LOG_TYPE_DEFAULT, "Releasing prevent sleep power assertion %i", buf, 8u);
      }

      v21 = IOPMAssertionRelease(selfCopy->_powerAssertionID);
      if (v21)
      {
        NSLog(&cfstr_FailedToReleas.isa, selfCopy->_powerAssertionID, v21);
      }

      selfCopy->_powerAssertionID = 0;
    }

    if (asyncCopy)
    {
      [(PCSimpleTimer *)selfCopy _setPowerMonitoringEnabled:0];
    }

    [(PCSimpleTimer *)selfCopy _setSignificantTimeChangeMonitoringEnabled:0];
  }

  objc_sync_exit(selfCopy);

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)isValid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_target != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)userInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_userInfo;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_performBlockOnQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (queueCopy)
  {
    queue = selfCopy->_queue;
    if (queue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__PCSimpleTimer__performBlockOnQueue___block_invoke;
      block[3] = &unk_279A1A2B8;
      v8 = queueCopy;
      dispatch_async(queue, block);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_preventSleepFired
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_fault_impl(&dword_25E3EF000, a2, OS_LOG_TYPE_FAULT, "Unable to take power assertion. IOPMAssertionCreateWithDescription() returned %#x", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_setPowerMonitoringEnabled:(BOOL)enabled
{
  if (enabled)
  {
    selfCopy2 = self;
    v4 = _GetPowerMonitoringQueue();
    block = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v5 = ___EnablePowerMonitoring_block_invoke;
  }

  else
  {
    selfCopy2 = self;
    v4 = _GetPowerMonitoringQueue();
    block = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v5 = ___DisablePowerMonitoring_block_invoke;
  }

  v9 = v5;
  v10 = &unk_279A19E50;
  v11 = selfCopy2;
  v6 = selfCopy2;
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

- (void)_setSignificantTimeChangeMonitoringEnabled:(BOOL)enabled
{
  p_significantTimeChangeToken = &self->_significantTimeChangeToken;
  significantTimeChangeToken = self->_significantTimeChangeToken;
  if (enabled)
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