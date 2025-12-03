@interface PCPersistentTimer
+ (double)_currentGuidanceTime;
+ (id)_backgroundUpdateQueue;
+ (void)_updateTime:(double)time forGuidancePriority:(unint64_t)priority;
- (BOOL)firingIsImminent;
- (BOOL)isUserVisible;
- (BOOL)isValid;
- (NSString)debugDescription;
- (PCPersistentTimer)initWithFireDate:(id)date serviceIdentifier:(id)identifier target:(id)target selector:(SEL)selector userInfo:(id)info;
- (PCPersistentTimer)initWithTimeInterval:(double)interval serviceIdentifier:(id)identifier guidancePriority:(unint64_t)priority target:(id)target selector:(SEL)selector userInfo:(id)info;
- (PCPersistentTimer)initWithTimeInterval:(double)interval serviceIdentifier:(id)identifier target:(id)target selector:(SEL)selector userInfo:(id)info;
- (double)_earlyFireTime;
- (double)_nextForcedAlignmentAbsoluteTime;
- (double)fireTime;
- (double)startTime;
- (id)_initWithAbsoluteTime:(double)time serviceIdentifier:(id)identifier guidancePriority:(unint64_t)priority target:(id)target selector:(SEL)selector userInfo:(id)info triggerOnGMTChange:(BOOL)change;
- (id)userInfo;
- (void)_fireTimerFired;
- (void)_updateTimers;
- (void)cutPowerMonitorBatteryConnectedStateDidChange:(id)change;
- (void)dealloc;
- (void)interfaceManagerInternetReachabilityChanged:(id)changed;
- (void)interfaceManagerWWANInterfaceChangedPowerState:(id)state;
- (void)interfaceManagerWWANInterfaceStatusChanged:(id)changed;
- (void)invalidate;
- (void)scheduleInQueue:(id)queue;
- (void)scheduleInRunLoop:(id)loop inMode:(id)mode;
- (void)setEarlyFireConstantInterval:(double)interval;
- (void)setMinimumEarlyFireProportion:(double)proportion;
@end

@implementation PCPersistentTimer

- (void)_updateTimers
{
  if (self->_simpleTimer)
  {
    [(PCPersistentTimer *)self _earlyFireTime];
    simpleTimer = self->_simpleTimer;
    triggerOnGMTChange = self->_triggerOnGMTChange;

    [(PCSimpleTimer *)simpleTimer updateFireTime:triggerOnGMTChange triggerOnGMTChange:?];
  }
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_target);

  if (WeakRetained)
  {
    v4 = objc_autoreleasePoolPush();
    logObject = selfCopy->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = selfCopy;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Invalidating timer %{public}@", &v11, 0xCu);
    }

    objc_storeWeak(&selfCopy->_target, 0);
    selfCopy->_selector = 0;
    queue = selfCopy->_queue;
    selfCopy->_queue = 0;

    [(PCSimpleTimer *)selfCopy->_simpleTimer invalidate];
    simpleTimer = selfCopy->_simpleTimer;
    selfCopy->_simpleTimer = 0;

    v8 = +[PCPersistentInterfaceManager sharedInstance];
    [v8 removeDelegate:selfCopy];

    mEMORY[0x277CFB980] = [MEMORY[0x277CFB980] sharedInstance];
    [mEMORY[0x277CFB980] removeDelegate:selfCopy];

    objc_autoreleasePoolPop(v4);
  }

  objc_sync_exit(selfCopy);

  v10 = *MEMORY[0x277D85DE8];
}

- (double)_earlyFireTime
{
  v82 = *MEMORY[0x277D85DE8];
  if (self->_fireTime - self->_startTime >= 0.0)
  {
    v3 = self->_fireTime - self->_startTime;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = +[PCPersistentInterfaceManager sharedInstance];
  isPowerStateDetectionSupported = [v4 isPowerStateDetectionSupported];
  isWWANInterfaceUp = [v4 isWWANInterfaceUp];
  isInternetReachable = [v4 isInternetReachable];
  v8 = isInternetReachable;
  if (isPowerStateDetectionSupported)
  {
    v9 = isWWANInterfaceUp | isInternetReachable ^ 1;
  }

  else
  {
    v9 = 0;
  }

  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v9)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *buf = 138544386;
    selfCopy4 = self;
    if (isPowerStateDetectionSupported)
    {
      *&v13 = COERCE_DOUBLE(@"YES");
    }

    else
    {
      *&v13 = COERCE_DOUBLE(@"NO");
    }

    v67 = v12;
    v68 = 2112;
    if (isWWANInterfaceUp)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v66 = 2114;
    v69 = *&v13;
    if (v8)
    {
      v11 = @"YES";
    }

    v70 = 2114;
    v71 = v14;
    v72 = 2114;
    v73 = v11;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@ calculating _earlyFireDate. powerStateDetectionSupported = %{public}@ = (detectionSupported(%@) && (wwanIsUp(%{public}@) || ! internetReachable(%{public}@)))", buf, 0x34u);
  }

  if (v9)
  {
    isWWANInterfaceInProlongedHighPowerState = [v4 isWWANInterfaceInProlongedHighPowerState];
    isInCall = [v4 isInCall];
    v17 = 0.9;
    if (isWWANInterfaceInProlongedHighPowerState && !isInCall)
    {
      v17 = 0.54;
      goto LABEL_31;
    }
  }

  else
  {
    [v4 isInCall];
    isWWANInterfaceInProlongedHighPowerState = 0;
    v17 = 0.62;
  }

  if (self->_minimumEarlyFireProportion < 1.0)
  {
    v18 = +[PCPersistentTimer lastSystemWakeDate];
    v19 = v18;
    if (v18)
    {
      [v18 timeIntervalSinceNow];
      if (v3 * 0.5 < -v20)
      {
        v21 = self->_logObject;
        v17 = 1.0;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          v23 = PCStringFromDate(v19);
          *buf = 138543362;
          selfCopy4 = v23;
          _os_log_impl(&dword_25E3EF000, v22, OS_LOG_TYPE_DEFAULT, "Last system wake date (%{public}@) was longer than half of the timer duration, so setting minimum fire date to fire date.", buf, 0xCu);
        }
      }
    }
  }

LABEL_31:
  mEMORY[0x277CFB980] = [MEMORY[0x277CFB980] sharedInstance];
  isExternalPowerConnected = [mEMORY[0x277CFB980] isExternalPowerConnected];

  v26 = self->_logObject;
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (isExternalPowerConnected)
  {
    v17 = 1.0;
    if (!v27)
    {
      goto LABEL_37;
    }

    *buf = 138543362;
    selfCopy4 = self;
    v28 = "%{public}@ Device is plugged in, overriding earlyFireProportion to be 1.0";
  }

  else
  {
    if (!v27)
    {
      goto LABEL_37;
    }

    *buf = 138543362;
    selfCopy4 = self;
    v28 = "%{public}@ device is not plugged in.";
  }

  _os_log_impl(&dword_25E3EF000, v26, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
LABEL_37:
  [(PCPersistentTimer *)self _nextForcedAlignmentAbsoluteTime];
  v30 = v29;
  startTime = self->_startTime;
  v32 = (v30 - startTime) / v3;
  v33 = fabs(v32);
  if (v17 >= v32 && *&v33 <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v35 = (v30 - startTime) / v3;
  }

  else
  {
    v35 = v17;
  }

  if (v35 >= self->_minimumEarlyFireProportion)
  {
    minimumEarlyFireProportion = v35;
  }

  else
  {
    minimumEarlyFireProportion = self->_minimumEarlyFireProportion;
  }

  v37 = startTime + minimumEarlyFireProportion * v3;
  earlyFireConstantInterval = self->_earlyFireConstantInterval;
  if (earlyFireConstantInterval > 0.0)
  {
    v39 = startTime + earlyFireConstantInterval;
    if (v39 < v37)
    {
      v37 = v39;
    }

    v40 = self->_logObject;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = self->_earlyFireConstantInterval;
      *buf = 134217984;
      selfCopy4 = *&v41;
      _os_log_impl(&dword_25E3EF000, v40, OS_LOG_TYPE_DEFAULT, "Ignore early fire proportion. {earlyFireConstantInterval: %f}", buf, 0xCu);
    }
  }

  if (v32 == minimumEarlyFireProportion)
  {
    v42 = self->_logObject;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = MEMORY[0x277CBEAA8];
      v44 = v42;
      v45 = [v43 dateWithTimeIntervalSinceReferenceDate:v30];
      v46 = PCStringFromDate(v45);
      *buf = 138543362;
      selfCopy4 = v46;
      _os_log_impl(&dword_25E3EF000, v44, OS_LOG_TYPE_DEFAULT, "Forcing timer alignment to fire date [%{public}@]", buf, 0xCu);
    }
  }

  v47 = self->_logObject;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = MEMORY[0x277CBEAA8];
    v49 = v47;
    v50 = [v48 dateWithTimeIntervalSinceReferenceDate:v37];
    v51 = PCStringFromDate(v50);
    v52 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_fireTime];
    PCStringFromDate(v52);
    v53 = v63 = v4;
    v54 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_startTime];
    v55 = PCStringFromDate(v54);
    v56 = v55;
    v57 = self->_minimumEarlyFireProportion;
    v58 = "no";
    if (v9)
    {
      v59 = "yes";
    }

    else
    {
      v59 = "no";
    }

    v60 = self->_earlyFireConstantInterval;
    *buf = 138545410;
    selfCopy4 = self;
    if (isWWANInterfaceInProlongedHighPowerState)
    {
      v58 = "yes";
    }

    v66 = 2114;
    v67 = v51;
    v68 = 2048;
    v69 = minimumEarlyFireProportion * 100.0;
    v70 = 2114;
    v71 = v53;
    v72 = 2114;
    v73 = v55;
    v74 = 2048;
    v75 = v57;
    v76 = 2082;
    v77 = v59;
    v78 = 2082;
    v79 = v58;
    v80 = 2048;
    v81 = v60;
    _os_log_impl(&dword_25E3EF000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ Calculated minimum fire date [%{public}@] (%g%%) with fire date [%{public}@], start date [%{public}@], minimum early fire proportion %g, power state detection supported: %{public}s, in high power state: %{public}s, early fire constant interval %f", buf, 0x5Cu);

    v4 = v63;
  }

  v61 = *MEMORY[0x277D85DE8];
  return v37;
}

+ (id)_backgroundUpdateQueue
{
  if (_backgroundUpdateQueue_pred != -1)
  {
    +[PCPersistentTimer _backgroundUpdateQueue];
  }

  v3 = _backgroundUpdateQueue_sQueue;

  return v3;
}

- (void)dealloc
{
  [(PCPersistentTimer *)self invalidate];
  v3.receiver = self;
  v3.super_class = PCPersistentTimer;
  [(PCPersistentTimer *)&v3 dealloc];
}

- (double)_nextForcedAlignmentAbsoluteTime
{
  v2 = (+[PCPersistentIdentifiers hostUniqueIdentifier]% 0x5460);
  Current = CFAbsoluteTimeGetCurrent();
  v4 = fmod(Current - v2, 21600.0);
  if (v4 < 0.0)
  {
    v4 = v4 + v2;
  }

  return Current + 21600.0 - v4;
}

- (BOOL)firingIsImminent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  firingIsImminent = [(PCSimpleTimer *)selfCopy->_simpleTimer firingIsImminent];
  objc_sync_exit(selfCopy);

  return firingIsImminent;
}

- (double)fireTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fireTime = selfCopy->_fireTime;
  objc_sync_exit(selfCopy);

  return fireTime;
}

+ (double)_currentGuidanceTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = -1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PCPersistentTimer__currentGuidanceTime__block_invoke;
  v5[3] = &unk_279A19E78;
  v5[4] = v6;
  v5[5] = &v7;
  [sGuidanceTimes enumerateKeysAndObjectsUsingBlock:v5];
  _Block_object_dispose(v6, 8);
  objc_sync_exit(selfCopy);

  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __41__PCPersistentTimer__currentGuidanceTime__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 unsignedIntegerValue] < *(*(*(a1 + 32) + 8) + 24))
  {
    [v5 doubleValue];
    v7 = v6 - CFAbsoluteTimeGetCurrent();
    if (v7 > 2.22044605e-16 && v7 < 7200.0)
    {
      *(*(*(a1 + 32) + 8) + 24) = [v9 unsignedIntegerValue];
      [v5 doubleValue];
      *(*(*(a1 + 40) + 8) + 24) = v8;
    }
  }
}

- (void)_fireTimerFired
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_target);

  if (WeakRetained)
  {
    logObject = selfCopy->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = selfCopy;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "PersistentTimer %{public}@ has fired", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&selfCopy->_target);
    if (selfCopy->_selector)
    {
      selector = selfCopy->_selector;
    }

    else
    {
      selector = 0;
    }

    [(PCPersistentTimer *)selfCopy invalidate];
  }

  else
  {
    selector = 0;
  }

  objc_sync_exit(selfCopy);

  if (selector)
  {
    [WeakRetained performSelector:selector withObject:selfCopy];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (PCPersistentTimer)initWithFireDate:(id)date serviceIdentifier:(id)identifier target:(id)target selector:(SEL)selector userInfo:(id)info
{
  infoCopy = info;
  targetCopy = target;
  identifierCopy = identifier;
  [date timeIntervalSinceReferenceDate];
  v15 = [(PCPersistentTimer *)self _initWithAbsoluteTime:identifierCopy serviceIdentifier:-1 guidancePriority:targetCopy target:selector selector:infoCopy userInfo:0 triggerOnGMTChange:?];

  return v15;
}

- (PCPersistentTimer)initWithTimeInterval:(double)interval serviceIdentifier:(id)identifier target:(id)target selector:(SEL)selector userInfo:(id)info
{
  infoCopy = info;
  targetCopy = target;
  identifierCopy = identifier;
  interval = [(PCPersistentTimer *)self _initWithAbsoluteTime:identifierCopy serviceIdentifier:-1 guidancePriority:targetCopy target:selector selector:infoCopy userInfo:1 triggerOnGMTChange:CFAbsoluteTimeGetCurrent() + interval];

  return interval;
}

- (PCPersistentTimer)initWithTimeInterval:(double)interval serviceIdentifier:(id)identifier guidancePriority:(unint64_t)priority target:(id)target selector:(SEL)selector userInfo:(id)info
{
  infoCopy = info;
  targetCopy = target;
  identifierCopy = identifier;
  interval = [(PCPersistentTimer *)self _initWithAbsoluteTime:identifierCopy serviceIdentifier:priority guidancePriority:targetCopy target:selector selector:infoCopy userInfo:1 triggerOnGMTChange:CFAbsoluteTimeGetCurrent() + interval];

  return interval;
}

- (id)_initWithAbsoluteTime:(double)time serviceIdentifier:(id)identifier guidancePriority:(unint64_t)priority target:(id)target selector:(SEL)selector userInfo:(id)info triggerOnGMTChange:(BOOL)change
{
  identifierCopy = identifier;
  targetCopy = target;
  infoCopy = info;
  v29.receiver = self;
  v29.super_class = PCPersistentTimer;
  v20 = [(PCPersistentTimer *)&v29 init];
  v21 = v20;
  if (v20)
  {
    if (!targetCopy || !selector)
    {
      [PCPersistentTimer _initWithAbsoluteTime:v20 serviceIdentifier:a2 guidancePriority:? target:? selector:? userInfo:? triggerOnGMTChange:?];
    }

    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"persistentTimer.%@", identifierCopy];
    v23 = +[PCLog logWithCategory:](PCLog, "logWithCategory:", [identifierCopy UTF8String]);
    logObject = v21->_logObject;
    v21->_logObject = v23;

    v21->_fireTime = time;
    v21->_minimumEarlyFireProportion = 0.0;
    v21->_earlyFireConstantInterval = 0.0;
    v25 = [identifierCopy copy];
    serviceIdentifier = v21->_serviceIdentifier;
    v21->_serviceIdentifier = v25;

    objc_storeWeak(&v21->_target, targetCopy);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v21->_selector = selectorCopy;
    objc_storeStrong(&v21->_userInfo, info);
    v21->_triggerOnGMTChange = change;
    v21->_guidancePriority = priority;
  }

  return v21;
}

- (void)setMinimumEarlyFireProportion:(double)proportion
{
  obj = self;
  objc_sync_enter(obj);
  proportionCopy = 0.0;
  if (proportion >= 0.0)
  {
    proportionCopy = proportion;
  }

  obj->_minimumEarlyFireProportion = fmin(proportionCopy, 1.0);
  [(PCPersistentTimer *)obj _updateTimers];
  objc_sync_exit(obj);
}

- (void)setEarlyFireConstantInterval:(double)interval
{
  obj = self;
  objc_sync_enter(obj);
  obj->_earlyFireConstantInterval = interval;
  [(PCPersistentTimer *)obj _updateTimers];
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
  v28 = *MEMORY[0x277D85DE8];
  loopCopy = loop;
  modeCopy = mode;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!modeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PCPersistentTimer.m" lineNumber:173 description:{@"%@ run loop mode cannot be nil", objc_opt_class()}];
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_target);

  if (!WeakRetained)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PCPersistentTimer.m" lineNumber:174 description:{@"Cannot schedule invalidated %@", objc_opt_class()}];
  }

  simpleTimer = selfCopy->_simpleTimer;
  if (!simpleTimer)
  {
    selfCopy->_startTime = CFAbsoluteTimeGetCurrent();
    v12 = [[PCSimpleTimer alloc] initWithAbsoluteTime:selfCopy->_serviceIdentifier serviceIdentifier:selfCopy target:sel__fireTimerFired selector:0 userInfo:selfCopy->_triggerOnGMTChange triggerOnGMTChange:selfCopy->_fireTime];
    v13 = selfCopy->_simpleTimer;
    selfCopy->_simpleTimer = v12;

    [(PCSimpleTimer *)selfCopy->_simpleTimer setDisableSystemWaking:selfCopy->_disableSystemWaking];
    [(PCSimpleTimer *)selfCopy->_simpleTimer setUserVisible:selfCopy->_userVisible];
    logObject = selfCopy->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 = selfCopy->_simpleTimer;
      *buf = 138543618;
      v25 = selfCopy;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@ created %{public}@", buf, 0x16u);
    }

    simpleTimer = selfCopy->_simpleTimer;
  }

  guidancePriority = selfCopy->_guidancePriority;
  fireTime = selfCopy->_fireTime;
  [(PCSimpleTimer *)simpleTimer scheduleInRunLoop:loopCopy inMode:modeCopy];
  v18 = +[PCPersistentInterfaceManager sharedInstance];
  v19 = +[PCPersistentTimer _backgroundUpdateQueue];
  [v18 addDelegate:selfCopy queue:v19];

  mEMORY[0x277CFB980] = [MEMORY[0x277CFB980] sharedInstance];
  [mEMORY[0x277CFB980] addDelegate:selfCopy];

  [(PCPersistentTimer *)selfCopy _updateTimers];
  objc_sync_exit(selfCopy);

  if (guidancePriority != -1)
  {
    [PCPersistentTimer _updateTime:guidancePriority forGuidancePriority:fireTime];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)scheduleInQueue:(id)queue
{
  v26 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_target);

  if (WeakRetained)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PCPersistentTimer.m" lineNumber:207 description:{@"Cannot schedule invalidated %@", objc_opt_class()}];

    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PCPersistentTimer.m" lineNumber:208 description:{@"Cannot schedule on NULL queue %@", objc_opt_class()}];

LABEL_3:
  objc_storeStrong(&selfCopy->_queue, queue);
  simpleTimer = selfCopy->_simpleTimer;
  if (!simpleTimer)
  {
    selfCopy->_startTime = CFAbsoluteTimeGetCurrent();
    v10 = [[PCSimpleTimer alloc] initWithAbsoluteTime:selfCopy->_serviceIdentifier serviceIdentifier:selfCopy target:sel__fireTimerFired selector:0 userInfo:selfCopy->_triggerOnGMTChange triggerOnGMTChange:selfCopy->_fireTime];
    v11 = selfCopy->_simpleTimer;
    selfCopy->_simpleTimer = v10;

    [(PCSimpleTimer *)selfCopy->_simpleTimer setDisableSystemWaking:selfCopy->_disableSystemWaking];
    [(PCSimpleTimer *)selfCopy->_simpleTimer setUserVisible:selfCopy->_userVisible];
    logObject = selfCopy->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = selfCopy->_simpleTimer;
      *buf = 138543618;
      v23 = selfCopy;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@ created %{public}@", buf, 0x16u);
    }

    simpleTimer = selfCopy->_simpleTimer;
  }

  guidancePriority = selfCopy->_guidancePriority;
  fireTime = selfCopy->_fireTime;
  [(PCSimpleTimer *)simpleTimer scheduleInQueue:selfCopy->_queue];
  v16 = +[PCPersistentInterfaceManager sharedInstance];
  v17 = +[PCPersistentTimer _backgroundUpdateQueue];
  [v16 addDelegate:selfCopy queue:v17];

  mEMORY[0x277CFB980] = [MEMORY[0x277CFB980] sharedInstance];
  [mEMORY[0x277CFB980] addDelegate:selfCopy];

  [(PCPersistentTimer *)selfCopy _updateTimers];
  objc_sync_exit(selfCopy);

  if (guidancePriority != -1)
  {
    [PCPersistentTimer _updateTime:guidancePriority forGuidancePriority:fireTime];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (double)startTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  startTime = selfCopy->_startTime;
  objc_sync_exit(selfCopy);

  return startTime;
}

- (BOOL)isValid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_target);
  v4 = WeakRetained != 0;

  objc_sync_exit(selfCopy);
  return v4;
}

- (id)userInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_userInfo;
  objc_sync_exit(selfCopy);

  return v3;
}

uint64_t __43__PCPersistentTimer__backgroundUpdateQueue__block_invoke()
{
  _backgroundUpdateQueue_sQueue = PCCreateQueue("PCPersistentTimer-sharedBackgroundUpdateQueue");

  return MEMORY[0x2821F96F8]();
}

- (void)cutPowerMonitorBatteryConnectedStateDidChange:(id)change
{
  v4 = +[PCPersistentTimer _backgroundUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__PCPersistentTimer_cutPowerMonitorBatteryConnectedStateDidChange___block_invoke;
  block[3] = &unk_279A19E50;
  block[4] = self;
  dispatch_async(v4, block);
}

void __67__PCPersistentTimer_cutPowerMonitorBatteryConnectedStateDidChange___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) _updateTimers];
  objc_sync_exit(obj);
}

- (void)interfaceManagerWWANInterfaceStatusChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PCPersistentTimer *)selfCopy _updateTimers];
  objc_sync_exit(selfCopy);
}

- (void)interfaceManagerWWANInterfaceChangedPowerState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PCPersistentTimer *)selfCopy _updateTimers];
  objc_sync_exit(selfCopy);
}

- (void)interfaceManagerInternetReachabilityChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PCPersistentTimer *)selfCopy _updateTimers];
  objc_sync_exit(selfCopy);
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = PCPersistentTimer;
  v4 = [(PCPersistentTimer *)&v14 description];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_fireTime];
  minimumEarlyFireProportion = self->_minimumEarlyFireProportion;
  disableSystemWaking = self->_disableSystemWaking;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (self->_selector)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  if (disableSystemWaking)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  v11 = NSStringFromSelector(selector);
  v12 = [v3 stringWithFormat:@"%@{fireDate = %@, early fire proportion = %g, disable system waking = %s, target = %@, selector = %@}", v4, v5, *&minimumEarlyFireProportion, v10, WeakRetained, v11];

  return v12;
}

+ (void)_updateTime:(double)time forGuidancePriority:(unint64_t)priority
{
  v23 = *MEMORY[0x277D85DE8];
  if (_updateTime_forGuidancePriority__onceToken != -1)
  {
    +[PCPersistentTimer _updateTime:forGuidancePriority:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [selfCopy _currentGuidanceTime];
  v9 = v8;
  v10 = sGuidanceTimes;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:priority];
  [v10 setObject:v11 forKey:v12];

  [selfCopy _currentGuidanceTime];
  v14 = v13;
  objc_sync_exit(selfCopy);

  if (v14 != v9)
  {
    v15 = (v14 * 1000.0);
    if (v15)
    {
      v16 = +[PCLog timer];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v15 / 1000.0];
        v18 = PCStringFromDate(v17);
        v21 = 138543362;
        v22 = v18;
        _os_log_impl(&dword_25E3EF000, v16, OS_LOG_TYPE_DEFAULT, "updating timer guidance to %{public}@", &v21, 0xCu);
      }

      v19 = _updateTime_forGuidancePriority__token;
      if (_updateTime_forGuidancePriority__token == -1)
      {
        if (notify_register_check("PCPersistentTimerGuidanceNotification", &_updateTime_forGuidancePriority__token))
        {
          goto LABEL_11;
        }

        v19 = _updateTime_forGuidancePriority__token;
      }

      if (!notify_set_state(v19, (v14 * 1000.0)))
      {
        notify_post("PCPersistentTimerGuidanceNotification");
        goto LABEL_12;
      }

LABEL_11:
      notify_cancel(_updateTime_forGuidancePriority__token);
      _updateTime_forGuidancePriority__token = -1;
    }
  }

LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PCPersistentTimer__updateTime_forGuidancePriority___block_invoke()
{
  sGuidanceTimes = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

- (void)_initWithAbsoluteTime:(uint64_t)a1 serviceIdentifier:(uint64_t)a2 guidancePriority:target:selector:userInfo:triggerOnGMTChange:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PCPersistentTimer.m" lineNumber:104 description:{@"%@ target and selector are required", objc_opt_class()}];
}

@end