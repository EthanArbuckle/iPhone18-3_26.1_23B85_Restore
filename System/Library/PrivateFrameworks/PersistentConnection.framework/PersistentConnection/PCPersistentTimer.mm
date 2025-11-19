@interface PCPersistentTimer
+ (double)_currentGuidanceTime;
+ (id)_backgroundUpdateQueue;
+ (void)_updateTime:(double)a3 forGuidancePriority:(unint64_t)a4;
- (BOOL)firingIsImminent;
- (BOOL)isUserVisible;
- (BOOL)isValid;
- (NSString)debugDescription;
- (PCPersistentTimer)initWithFireDate:(id)a3 serviceIdentifier:(id)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7;
- (PCPersistentTimer)initWithTimeInterval:(double)a3 serviceIdentifier:(id)a4 guidancePriority:(unint64_t)a5 target:(id)a6 selector:(SEL)a7 userInfo:(id)a8;
- (PCPersistentTimer)initWithTimeInterval:(double)a3 serviceIdentifier:(id)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7;
- (double)_earlyFireTime;
- (double)_nextForcedAlignmentAbsoluteTime;
- (double)fireTime;
- (double)startTime;
- (id)_initWithAbsoluteTime:(double)a3 serviceIdentifier:(id)a4 guidancePriority:(unint64_t)a5 target:(id)a6 selector:(SEL)a7 userInfo:(id)a8 triggerOnGMTChange:(BOOL)a9;
- (id)userInfo;
- (void)_fireTimerFired;
- (void)_updateTimers;
- (void)cutPowerMonitorBatteryConnectedStateDidChange:(id)a3;
- (void)dealloc;
- (void)interfaceManagerInternetReachabilityChanged:(id)a3;
- (void)interfaceManagerWWANInterfaceChangedPowerState:(id)a3;
- (void)interfaceManagerWWANInterfaceStatusChanged:(id)a3;
- (void)invalidate;
- (void)scheduleInQueue:(id)a3;
- (void)scheduleInRunLoop:(id)a3 inMode:(id)a4;
- (void)setEarlyFireConstantInterval:(double)a3;
- (void)setMinimumEarlyFireProportion:(double)a3;
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
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_target);

  if (WeakRetained)
  {
    v4 = objc_autoreleasePoolPush();
    logObject = v2->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v2;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Invalidating timer %{public}@", &v11, 0xCu);
    }

    objc_storeWeak(&v2->_target, 0);
    v2->_selector = 0;
    queue = v2->_queue;
    v2->_queue = 0;

    [(PCSimpleTimer *)v2->_simpleTimer invalidate];
    simpleTimer = v2->_simpleTimer;
    v2->_simpleTimer = 0;

    v8 = +[PCPersistentInterfaceManager sharedInstance];
    [v8 removeDelegate:v2];

    v9 = [MEMORY[0x277CFB980] sharedInstance];
    [v9 removeDelegate:v2];

    objc_autoreleasePoolPop(v4);
  }

  objc_sync_exit(v2);

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
  v5 = [v4 isPowerStateDetectionSupported];
  v6 = [v4 isWWANInterfaceUp];
  v7 = [v4 isInternetReachable];
  v8 = v7;
  if (v5)
  {
    v9 = v6 | v7 ^ 1;
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
    v65 = self;
    if (v5)
    {
      *&v13 = COERCE_DOUBLE(@"YES");
    }

    else
    {
      *&v13 = COERCE_DOUBLE(@"NO");
    }

    v67 = v12;
    v68 = 2112;
    if (v6)
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
    v15 = [v4 isWWANInterfaceInProlongedHighPowerState];
    v16 = [v4 isInCall];
    v17 = 0.9;
    if (v15 && !v16)
    {
      v17 = 0.54;
      goto LABEL_31;
    }
  }

  else
  {
    [v4 isInCall];
    v15 = 0;
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
          v65 = v23;
          _os_log_impl(&dword_25E3EF000, v22, OS_LOG_TYPE_DEFAULT, "Last system wake date (%{public}@) was longer than half of the timer duration, so setting minimum fire date to fire date.", buf, 0xCu);
        }
      }
    }
  }

LABEL_31:
  v24 = [MEMORY[0x277CFB980] sharedInstance];
  v25 = [v24 isExternalPowerConnected];

  v26 = self->_logObject;
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    v17 = 1.0;
    if (!v27)
    {
      goto LABEL_37;
    }

    *buf = 138543362;
    v65 = self;
    v28 = "%{public}@ Device is plugged in, overriding earlyFireProportion to be 1.0";
  }

  else
  {
    if (!v27)
    {
      goto LABEL_37;
    }

    *buf = 138543362;
    v65 = self;
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
      v65 = *&v41;
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
      v65 = v46;
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
    v65 = self;
    if (v15)
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PCSimpleTimer *)v2->_simpleTimer firingIsImminent];
  objc_sync_exit(v2);

  return v3;
}

- (double)fireTime
{
  v2 = self;
  objc_sync_enter(v2);
  fireTime = v2->_fireTime;
  objc_sync_exit(v2);

  return fireTime;
}

+ (double)_currentGuidanceTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = a1;
  objc_sync_enter(v2);
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
  objc_sync_exit(v2);

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
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_target);

  if (WeakRetained)
  {
    logObject = v2->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v2;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "PersistentTimer %{public}@ has fired", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&v2->_target);
    if (v2->_selector)
    {
      selector = v2->_selector;
    }

    else
    {
      selector = 0;
    }

    [(PCPersistentTimer *)v2 invalidate];
  }

  else
  {
    selector = 0;
  }

  objc_sync_exit(v2);

  if (selector)
  {
    [WeakRetained performSelector:selector withObject:v2];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (PCPersistentTimer)initWithFireDate:(id)a3 serviceIdentifier:(id)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v15 = [(PCPersistentTimer *)self _initWithAbsoluteTime:v14 serviceIdentifier:-1 guidancePriority:v13 target:a6 selector:v12 userInfo:0 triggerOnGMTChange:?];

  return v15;
}

- (PCPersistentTimer)initWithTimeInterval:(double)a3 serviceIdentifier:(id)a4 target:(id)a5 selector:(SEL)a6 userInfo:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = [(PCPersistentTimer *)self _initWithAbsoluteTime:v14 serviceIdentifier:-1 guidancePriority:v13 target:a6 selector:v12 userInfo:1 triggerOnGMTChange:CFAbsoluteTimeGetCurrent() + a3];

  return v15;
}

- (PCPersistentTimer)initWithTimeInterval:(double)a3 serviceIdentifier:(id)a4 guidancePriority:(unint64_t)a5 target:(id)a6 selector:(SEL)a7 userInfo:(id)a8
{
  v14 = a8;
  v15 = a6;
  v16 = a4;
  v17 = [(PCPersistentTimer *)self _initWithAbsoluteTime:v16 serviceIdentifier:a5 guidancePriority:v15 target:a7 selector:v14 userInfo:1 triggerOnGMTChange:CFAbsoluteTimeGetCurrent() + a3];

  return v17;
}

- (id)_initWithAbsoluteTime:(double)a3 serviceIdentifier:(id)a4 guidancePriority:(unint64_t)a5 target:(id)a6 selector:(SEL)a7 userInfo:(id)a8 triggerOnGMTChange:(BOOL)a9
{
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v29.receiver = self;
  v29.super_class = PCPersistentTimer;
  v20 = [(PCPersistentTimer *)&v29 init];
  v21 = v20;
  if (v20)
  {
    if (!v18 || !a7)
    {
      [PCPersistentTimer _initWithAbsoluteTime:v20 serviceIdentifier:a2 guidancePriority:? target:? selector:? userInfo:? triggerOnGMTChange:?];
    }

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"persistentTimer.%@", v17];
    v23 = +[PCLog logWithCategory:](PCLog, "logWithCategory:", [v22 UTF8String]);
    logObject = v21->_logObject;
    v21->_logObject = v23;

    v21->_fireTime = a3;
    v21->_minimumEarlyFireProportion = 0.0;
    v21->_earlyFireConstantInterval = 0.0;
    v25 = [v17 copy];
    serviceIdentifier = v21->_serviceIdentifier;
    v21->_serviceIdentifier = v25;

    objc_storeWeak(&v21->_target, v18);
    if (a7)
    {
      v27 = a7;
    }

    else
    {
      v27 = 0;
    }

    v21->_selector = v27;
    objc_storeStrong(&v21->_userInfo, a8);
    v21->_triggerOnGMTChange = a9;
    v21->_guidancePriority = a5;
  }

  return v21;
}

- (void)setMinimumEarlyFireProportion:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  v4 = 0.0;
  if (a3 >= 0.0)
  {
    v4 = a3;
  }

  obj->_minimumEarlyFireProportion = fmin(v4, 1.0);
  [(PCPersistentTimer *)obj _updateTimers];
  objc_sync_exit(obj);
}

- (void)setEarlyFireConstantInterval:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_earlyFireConstantInterval = a3;
  [(PCPersistentTimer *)obj _updateTimers];
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
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  if (!v8)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:v9 file:@"PCPersistentTimer.m" lineNumber:173 description:{@"%@ run loop mode cannot be nil", objc_opt_class()}];
  }

  WeakRetained = objc_loadWeakRetained(&v9->_target);

  if (!WeakRetained)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:v9 file:@"PCPersistentTimer.m" lineNumber:174 description:{@"Cannot schedule invalidated %@", objc_opt_class()}];
  }

  simpleTimer = v9->_simpleTimer;
  if (!simpleTimer)
  {
    v9->_startTime = CFAbsoluteTimeGetCurrent();
    v12 = [[PCSimpleTimer alloc] initWithAbsoluteTime:v9->_serviceIdentifier serviceIdentifier:v9 target:sel__fireTimerFired selector:0 userInfo:v9->_triggerOnGMTChange triggerOnGMTChange:v9->_fireTime];
    v13 = v9->_simpleTimer;
    v9->_simpleTimer = v12;

    [(PCSimpleTimer *)v9->_simpleTimer setDisableSystemWaking:v9->_disableSystemWaking];
    [(PCSimpleTimer *)v9->_simpleTimer setUserVisible:v9->_userVisible];
    logObject = v9->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v9->_simpleTimer;
      *buf = 138543618;
      v25 = v9;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@ created %{public}@", buf, 0x16u);
    }

    simpleTimer = v9->_simpleTimer;
  }

  guidancePriority = v9->_guidancePriority;
  fireTime = v9->_fireTime;
  [(PCSimpleTimer *)simpleTimer scheduleInRunLoop:v7 inMode:v8];
  v18 = +[PCPersistentInterfaceManager sharedInstance];
  v19 = +[PCPersistentTimer _backgroundUpdateQueue];
  [v18 addDelegate:v9 queue:v19];

  v20 = [MEMORY[0x277CFB980] sharedInstance];
  [v20 addDelegate:v9];

  [(PCPersistentTimer *)v9 _updateTimers];
  objc_sync_exit(v9);

  if (guidancePriority != -1)
  {
    [PCPersistentTimer _updateTime:guidancePriority forGuidancePriority:fireTime];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)scheduleInQueue:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  WeakRetained = objc_loadWeakRetained(&v7->_target);

  if (WeakRetained)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:v7 file:@"PCPersistentTimer.m" lineNumber:207 description:{@"Cannot schedule invalidated %@", objc_opt_class()}];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:v7 file:@"PCPersistentTimer.m" lineNumber:208 description:{@"Cannot schedule on NULL queue %@", objc_opt_class()}];

LABEL_3:
  objc_storeStrong(&v7->_queue, a3);
  simpleTimer = v7->_simpleTimer;
  if (!simpleTimer)
  {
    v7->_startTime = CFAbsoluteTimeGetCurrent();
    v10 = [[PCSimpleTimer alloc] initWithAbsoluteTime:v7->_serviceIdentifier serviceIdentifier:v7 target:sel__fireTimerFired selector:0 userInfo:v7->_triggerOnGMTChange triggerOnGMTChange:v7->_fireTime];
    v11 = v7->_simpleTimer;
    v7->_simpleTimer = v10;

    [(PCSimpleTimer *)v7->_simpleTimer setDisableSystemWaking:v7->_disableSystemWaking];
    [(PCSimpleTimer *)v7->_simpleTimer setUserVisible:v7->_userVisible];
    logObject = v7->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v7->_simpleTimer;
      *buf = 138543618;
      v23 = v7;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%{public}@ created %{public}@", buf, 0x16u);
    }

    simpleTimer = v7->_simpleTimer;
  }

  guidancePriority = v7->_guidancePriority;
  fireTime = v7->_fireTime;
  [(PCSimpleTimer *)simpleTimer scheduleInQueue:v7->_queue];
  v16 = +[PCPersistentInterfaceManager sharedInstance];
  v17 = +[PCPersistentTimer _backgroundUpdateQueue];
  [v16 addDelegate:v7 queue:v17];

  v18 = [MEMORY[0x277CFB980] sharedInstance];
  [v18 addDelegate:v7];

  [(PCPersistentTimer *)v7 _updateTimers];
  objc_sync_exit(v7);

  if (guidancePriority != -1)
  {
    [PCPersistentTimer _updateTime:guidancePriority forGuidancePriority:fireTime];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (double)startTime
{
  v2 = self;
  objc_sync_enter(v2);
  startTime = v2->_startTime;
  objc_sync_exit(v2);

  return startTime;
}

- (BOOL)isValid
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_target);
  v4 = WeakRetained != 0;

  objc_sync_exit(v2);
  return v4;
}

- (id)userInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_userInfo;
  objc_sync_exit(v2);

  return v3;
}

uint64_t __43__PCPersistentTimer__backgroundUpdateQueue__block_invoke()
{
  _backgroundUpdateQueue_sQueue = PCCreateQueue("PCPersistentTimer-sharedBackgroundUpdateQueue");

  return MEMORY[0x2821F96F8]();
}

- (void)cutPowerMonitorBatteryConnectedStateDidChange:(id)a3
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

- (void)interfaceManagerWWANInterfaceStatusChanged:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(PCPersistentTimer *)v4 _updateTimers];
  objc_sync_exit(v4);
}

- (void)interfaceManagerWWANInterfaceChangedPowerState:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(PCPersistentTimer *)v4 _updateTimers];
  objc_sync_exit(v4);
}

- (void)interfaceManagerInternetReachabilityChanged:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(PCPersistentTimer *)v4 _updateTimers];
  objc_sync_exit(v4);
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

+ (void)_updateTime:(double)a3 forGuidancePriority:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  if (_updateTime_forGuidancePriority__onceToken != -1)
  {
    +[PCPersistentTimer _updateTime:forGuidancePriority:];
  }

  v7 = a1;
  objc_sync_enter(v7);
  [v7 _currentGuidanceTime];
  v9 = v8;
  v10 = sGuidanceTimes;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v10 setObject:v11 forKey:v12];

  [v7 _currentGuidanceTime];
  v14 = v13;
  objc_sync_exit(v7);

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