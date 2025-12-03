@interface PCConnectionManager
+ (Class)growthAlgorithmClass;
+ (id)_keepAliveCachePath;
+ (id)intervalCacheDictionaries;
+ (id)stringForAddressFamily:(int)family;
+ (void)_keepAliveCachePath;
- (BOOL)_hasBudgetRemaining;
- (BOOL)_isPushConnected;
- (BOOL)disableEarlyFire;
- (BOOL)isRunning;
- (BOOL)minimumIntervalFallbackEnabled;
- (BOOL)operatorMinimumIntervalFallbackAllowed;
- (BOOL)shouldClientScheduleReconnectDueToFailure;
- (BOOL)usingServerStatsAggressively;
- (NSString)duetIdentifier;
- (PCConnectionManagerDelegate)delegate;
- (PCKeepAliveState)currentKeepAliveState;
- (double)currentKeepAliveInterval;
- (double)maximumKeepAliveInterval;
- (double)minimumKeepAliveInterval;
- (double)pollingInterval;
- (double)serverStatsExpectedKeepAliveInterval;
- (double)serverStatsMaxKeepAliveInterval;
- (double)serverStatsMinKeepAliveInterval;
- (id)_currentGrowthAlgorithm;
- (id)_growthAlgorithmOnInterface:(int64_t)interface;
- (id)_initWithConnectionClass:(int)class interfaceIdentifier:(int64_t)identifier guidancePriority:(unint64_t)priority delegate:(id)delegate delegateQueue:(id)queue serviceIdentifier:(id)serviceIdentifier;
- (id)_stringForAction:(int)action;
- (id)_stringForEvent:(int)event;
- (id)_stringForStyle:(int)style;
- (id)currentCacheDictonary;
- (int)currentAddressFamily;
- (int)currentGrowthStage;
- (int)currentStyle;
- (unint64_t)countOfGrowthActions;
- (void)_adjustInterfaceAssertions;
- (void)_adjustMinimumIntervalFallback;
- (void)_adjustPollTimerIfNecessary;
- (void)_callDelegateWithEventAndContext:(id)context;
- (void)_clearTimersReleasingPowerAssertion:(BOOL)assertion;
- (void)_delayTimerFired;
- (void)_deregisterForDeviceConditionsNotifications;
- (void)_handleDeviceConditionChangeCallback;
- (void)_intervalTimerFired;
- (void)_loadPreferencesGeneratingEvent:(BOOL)event;
- (void)_pauseTimers;
- (void)_preferencesChanged;
- (void)_processDeviceConditionChanges;
- (void)_registerForDeviceConditionsNotifications;
- (void)_releasePowerAssertion;
- (void)_resolveStateWithAction:(int)action;
- (void)_saveWWANKeepAliveInterval;
- (void)_saveWWANKeepAliveIntervalWithInfo:(id)info resetStateMachine:(BOOL)machine;
- (void)_setMaximumKeepAliveInterval:(double)interval onInterface:(int64_t)interface;
- (void)_setMinimumKeepAliveInterval:(double)interval onInterface:(int64_t)interface;
- (void)_setTimerGuidance:(double)guidance;
- (void)_setupKeepAliveForReconnect;
- (void)_setupTimerForPollForAdjustment:(BOOL)adjustment;
- (void)_setupTimerForPushWithKeepAliveInterval:(double)interval;
- (void)_takePowerAssertionWithTimeout:(double)timeout;
- (void)cancelPollingIntervalOverride;
- (void)carrierBundleDidChange;
- (void)dealloc;
- (void)interfaceManagerInHomeCountryStatusChanged:(id)changed;
- (void)interfaceManagerInternetReachabilityChanged:(id)changed;
- (void)interfaceManagerWWANInterfaceStatusChanged:(id)changed;
- (void)resetKeepAliveStateMachineIfNecessary;
- (void)setCurrentAddressFamily:(int)family;
- (void)setDelegate:(id)delegate;
- (void)setDisableEarlyFire:(BOOL)fire;
- (void)setDuetIdentifier:(id)identifier;
- (void)setEnableNonCellularConnections:(BOOL)connections;
- (void)setKeepAliveGracePeriod:(double)period;
- (void)setKeepAliveOverrideOnInterface:(int64_t)interface interval:(double)interval timeout:(double)timeout;
- (void)setMaximumKeepAliveInterval:(double)interval;
- (void)setMinimumIntervalFallbackEnabled:(BOOL)enabled;
- (void)setMinimumKeepAliveInterval:(double)interval;
- (void)setNonCellularEarlyFireConstantInterval:(double)interval;
- (void)setOnlyAllowedStyle:(int)style;
- (void)setOperatorMinimumIntervalFallbackAllowed:(BOOL)allowed;
- (void)setPollingIntervalOverride:(double)override;
- (void)setServerStatsExpectedKeepAliveInterval:(double)interval;
- (void)setServerStatsMaxKeepAliveInterval:(double)interval;
- (void)setServerStatsMinKeepAliveInterval:(double)interval;
- (void)startManager;
- (void)stopAndResetManager;
- (void)stopManager;
@end

@implementation PCConnectionManager

- (double)currentKeepAliveInterval
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _currentGrowthAlgorithm = [(PCConnectionManager *)selfCopy _currentGrowthAlgorithm];
  [_currentGrowthAlgorithm currentKeepAliveInterval];
  v5 = v4;

  objc_sync_exit(selfCopy);
  return v5;
}

- (id)_currentGrowthAlgorithm
{
  interfaceIdentifier = self->_interfaceIdentifier;
  if (!interfaceIdentifier)
  {
    v4 = self->_wifiGrowthAlgorithm[self->_currentAddressFamily];
    goto LABEL_5;
  }

  if (interfaceIdentifier == 1)
  {
    v4 = self->_wwanGrowthAlgorithm[self->_currentAddressFamily];
LABEL_5:
    v5 = v4;
    goto LABEL_9;
  }

  persistentInterfaceManager = [(PCConnectionManager *)self persistentInterfaceManager];
  isWWANInterfaceUp = [persistentInterfaceManager isWWANInterfaceUp];
  v8 = 112;
  if (isWWANInterfaceUp)
  {
    v8 = 96;
  }

  v5 = *(&self->super.isa + 8 * self->_currentAddressFamily + v8);

LABEL_9:

  return v5;
}

- (PCKeepAliveState)currentKeepAliveState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _currentGrowthAlgorithm = [(PCConnectionManager *)selfCopy _currentGrowthAlgorithm];
  growthStage = [_currentGrowthAlgorithm growthStage];

  _currentGrowthAlgorithm2 = [(PCConnectionManager *)selfCopy _currentGrowthAlgorithm];
  LOBYTE(_currentGrowthAlgorithm) = [_currentGrowthAlgorithm2 previousAction];

  v6 = [[PCKeepAliveState alloc] initWithKeepAliveState:growthStage subState:_currentGrowthAlgorithm];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)_adjustInterfaceAssertions
{
  persistentInterfaceManager = [(PCConnectionManager *)self persistentInterfaceManager];
  v9 = persistentInterfaceManager;
  if (!self->_intervalTimer)
  {
    goto LABEL_8;
  }

  currentStyle = [(PCConnectionManager *)self currentStyle];
  isWWANInterfaceUp = [v9 isWWANInterfaceUp];
  if (currentStyle >= 2)
  {
    persistentInterfaceManager = v9;
LABEL_8:
    [persistentInterfaceManager enableWiFiAutoAssociation:0 forDelegate:self];
    goto LABEL_9;
  }

  if (isWWANInterfaceUp)
  {
    if (self->_enableNonCellularConnections)
    {
      v6 = self->_interfaceIdentifier != 1;
      v7 = v9;
    }

    else
    {
      v7 = v9;
      v6 = 0;
    }

    [v7 enableWiFiAutoAssociation:v6 forDelegate:self];
    if (!currentStyle && self->_enableNonCellularConnections)
    {
      goto LABEL_18;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  [v9 enableWiFiAutoAssociation:self->_interfaceIdentifier != 1 forDelegate:self];
  if (currentStyle)
  {
    goto LABEL_9;
  }

LABEL_18:
  v8 = self->_interfaceIdentifier != 1;
LABEL_10:
  [v9 enableWakeOnWiFi:v8 forDelegate:self];
}

- (unint64_t)countOfGrowthActions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _currentGrowthAlgorithm = [(PCConnectionManager *)selfCopy _currentGrowthAlgorithm];
  countOfGrowthActions = [_currentGrowthAlgorithm countOfGrowthActions];

  objc_sync_exit(selfCopy);
  return countOfGrowthActions;
}

- (int)currentGrowthStage
{
  _currentGrowthAlgorithm = [(PCConnectionManager *)self _currentGrowthAlgorithm];
  growthStage = [_currentGrowthAlgorithm growthStage];

  return growthStage;
}

- (void)_adjustPollTimerIfNecessary
{
  v31 = *MEMORY[0x277D85DE8];
  currentStyle = [(PCConnectionManager *)self currentStyle];
  firingIsImminent = [(PCPersistentTimer *)self->_intervalTimer firingIsImminent];
  v5 = firingIsImminent;
  v6 = currentStyle == 1 && self->_isRunning && !self->_isInReconnectMode && self->_intervalTimer != 0 && !firingIsImminent;
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    isInReconnectMode = self->_isInReconnectMode;
    if (currentStyle == 1)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    intervalTimer = self->_intervalTimer;
    if (self->_isRunning)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v17 = 138413826;
    if (isInReconnectMode)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    selfCopy = self;
    if (v5)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v20 = v10;
    v19 = 2112;
    if (v6)
    {
      v8 = @"YES";
    }

    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = intervalTimer;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ _adjustPollTimerIfNecessary  rightStyle %@  isRunning %@  isInReconnectMode %@   intervalTimer %@  firingIsImminent %@ - should Adjust? %@", &v17, 0x48u);
  }

  if (v6)
  {
    [(PCPersistentTimer *)self->_intervalTimer invalidate];
    v15 = self->_intervalTimer;
    self->_intervalTimer = 0;

    [(PCConnectionManager *)self _setupTimerForPollForAdjustment:1];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (int)currentStyle
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_forceManualWhenRoaming && (-[PCConnectionManager persistentInterfaceManager](selfCopy, "persistentInterfaceManager"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isWWANInHomeCountry], v3, (v4 & 1) == 0))
  {
    v7 = 2;
  }

  else
  {
    prefsStyle = selfCopy->_prefsStyle;
    if (selfCopy->_onlyAllowedStyleSet && (onlyAllowedStyle = selfCopy->_onlyAllowedStyle, prefsStyle != onlyAllowedStyle))
    {
      v7 = 2;
      if (!prefsStyle && onlyAllowedStyle == 1)
      {
        [(PCConnectionManager *)selfCopy pollingInterval];
        if (v10 > -2.22044605e-16)
        {
          v7 = 1;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v7 = selfCopy->_prefsStyle;
    }

    if (selfCopy->_pollingIntervalOverrideSet && v7 == 2)
    {
      if (selfCopy->_pollingIntervalOverride > -2.22044605e-16)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }
  }

LABEL_15:
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)_releasePowerAssertion
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopAndResetManager
{
  obj = self;
  objc_sync_enter(obj);
  [(PCConnectionManager *)obj stopManager];
  obj->_isInReconnectMode = 0;
  obj->_reconnectIteration = 0;
  objc_sync_exit(obj);
}

- (void)stopManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  logObject = selfCopy->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "PCConnectionManager was stopped by client", v4, 2u);
  }

  [(PCConnectionManager *)selfCopy _clearTimers];
  objc_sync_exit(selfCopy);
}

- (BOOL)isRunning
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isRunning = selfCopy->_isRunning;
  objc_sync_exit(selfCopy);

  return isRunning;
}

+ (Class)growthAlgorithmClass
{
  v2 = _os_feature_enabled_impl();
  v3 = off_279A19AF0;
  if (!v2)
  {
    v3 = off_279A19AD0;
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

- (id)_initWithConnectionClass:(int)class interfaceIdentifier:(int64_t)identifier guidancePriority:(unint64_t)priority delegate:(id)delegate delegateQueue:(id)queue serviceIdentifier:(id)serviceIdentifier
{
  v78 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  serviceIdentifierCopy = serviceIdentifier;
  v71.receiver = self;
  v71.super_class = PCConnectionManager;
  v17 = [(PCConnectionManager *)&v71 init];
  if (!v17)
  {
    goto LABEL_16;
  }

  if (!delegateCopy)
  {
    [PCConnectionManager _initWithConnectionClass:interfaceIdentifier:guidancePriority:delegate:delegateQueue:serviceIdentifier:];
    if (serviceIdentifierCopy)
    {
      goto LABEL_4;
    }

LABEL_18:
    [PCConnectionManager _initWithConnectionClass:interfaceIdentifier:guidancePriority:delegate:delegateQueue:serviceIdentifier:];
    goto LABEL_4;
  }

  if (!serviceIdentifierCopy)
  {
    goto LABEL_18;
  }

LABEL_4:
  v18 = +[PCLog logWithCategory:](PCLog, "logWithCategory:", [serviceIdentifierCopy UTF8String]);
  v19 = *(v17 + 11);
  *(v17 + 11) = v18;

  *(v17 + 21) = 0;
  *(v17 + 7) = identifier;
  *(v17 + 2) = class;
  objc_storeWeak(v17 + 2, delegateCopy);
  v20 = [serviceIdentifierCopy copy];
  v21 = *(v17 + 3);
  *(v17 + 3) = v20;

  *(v17 + 8) = priority;
  *(v17 + 82) = 0;
  if (queueCopy)
  {
    v22 = queueCopy;
    v23 = *(v17 + 10);
    *(v17 + 10) = v22;
  }

  else
  {
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v23 = *(v17 + 9);
    *(v17 + 9) = currentRunLoop;
  }

  *(v17 + 40) = 0;
  v25 = *(v17 + 11);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(v17 + 3);
    v27 = *(v17 + 7);
    *buf = 138412802;
    v73 = v17;
    v74 = 2112;
    v75 = v26;
    v76 = 2048;
    v77 = v27;
    _os_log_impl(&dword_25E3EF000, v25, OS_LOG_TYPE_DEFAULT, "Creating PCManager %@ with identifier %@ and interfaceIdentifier %ld", buf, 0x20u);
  }

  v66 = queueCopy;
  notify_register_check("PCPushIsConnectedToken", v17 + 63);
  if (!*(v17 + 7))
  {
    goto LABEL_13;
  }

  v28 = 0;
  v29 = v17 + 96;
  v30 = 1;
  do
  {
    v31 = v30;
    v32 = [v17 _getCachedWWANKeepAliveIntervalForAddressFamily:v28];
    v33 = MEMORY[0x277CCACA8];
    v34 = *(v17 + 3);
    v35 = [PCConnectionManager stringForAddressFamily:v28];
    v36 = [v33 stringWithFormat:@"%@-%@", v34, v35];

    v37 = MEMORY[0x277CCACA8];
    v38 = [PCConnectionManager stringForAddressFamily:v28];
    v39 = [v37 stringWithFormat:@"WWAN growth algorithm-%@", v38];

    v40 = [objc_alloc(objc_msgSend(objc_opt_class() "growthAlgorithmClass"))];
    v41 = *&v29[8 * v28];
    *&v29[8 * v28] = v40;

    [*&v29[8 * v28] setSignalAvoidanceRange:{1680.0, 240.0}];
    v30 = 0;
    v28 = 1;
  }

  while ((v31 & 1) != 0);
  if (*(v17 + 7) != 1)
  {
LABEL_13:
    v42 = 0;
    v43 = v17 + 112;
    v44 = 1;
    do
    {
      v45 = v44;
      v46 = MEMORY[0x277CCACA8];
      v47 = *(v17 + 3);
      v48 = [PCConnectionManager stringForAddressFamily:v42];
      v49 = [v46 stringWithFormat:@"%@-%@", v47, v48];

      v50 = MEMORY[0x277CCACA8];
      v51 = [PCConnectionManager stringForAddressFamily:v42];
      v52 = [v50 stringWithFormat:@"WiFi growth algorithm-%@", v51];

      v53 = [objc_alloc(objc_msgSend(objc_opt_class() "growthAlgorithmClass"))];
      v54 = *&v43[8 * v42];
      *&v43[8 * v42] = v53;

      [*&v43[8 * v42] setMaximumKeepAliveInterval:1800.0];
      v44 = 0;
      v42 = 1;
    }

    while ((v45 & 1) != 0);
  }

  v55 = dispatch_queue_create("PCConnectionManager-noteQueue", 0);
  v56 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
  [v56 addDelegate:v17 queue:v55];

  v57 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  [v57 addDelegate:v17 queue:v55];

  v58 = [MEMORY[0x277CFB990] weakRefWithObject:v17];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __126__PCConnectionManager__initWithConnectionClass_interfaceIdentifier_guidancePriority_delegate_delegateQueue_serviceIdentifier___block_invoke;
  handler[3] = &unk_279A19EE0;
  v59 = v58;
  v70 = v59;
  notify_register_dispatch("PCPersistentTimerGuidanceNotification", v17 + 62, v55, handler);
  persistentInterfaceManager = [v17 persistentInterfaceManager];
  [persistentInterfaceManager addDelegate:v17 queue:v55];

  v61 = [(__CFString *)@"PCPreferencesDidChangeNotification" cStringUsingEncoding:4];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __126__PCConnectionManager__initWithConnectionClass_interfaceIdentifier_guidancePriority_delegate_delegateQueue_serviceIdentifier___block_invoke_2;
  v67[3] = &unk_279A19EE0;
  v68 = v59;
  v62 = v59;
  notify_register_dispatch(v61, v17 + 64, v55, v67);
  [v17 _loadPreferencesGeneratingEvent:0];
  v63 = +[PCCarrierBundleHelper helper];
  [v63 addDelegate:v17];

  queueCopy = v66;
LABEL_16:

  v64 = *MEMORY[0x277D85DE8];
  return v17;
}

void __126__PCConnectionManager__initWithConnectionClass_interfaceIdentifier_guidancePriority_delegate_delegateQueue_serviceIdentifier___block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = [*(a1 + 32) object];
  [v3 _setTimerGuidance:state64 / 1000.0];
}

void __126__PCConnectionManager__initWithConnectionClass_interfaceIdentifier_guidancePriority_delegate_delegateQueue_serviceIdentifier___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _preferencesChanged];
}

- (void)carrierBundleDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__PCConnectionManager_carrierBundleDidChange__block_invoke;
  block[3] = &unk_279A19E50;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __45__PCConnectionManager_carrierBundleDidChange__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) interfaceIdentifier];
  if (result)
  {
    v3 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_25E3EF000, v3, OS_LOG_TYPE_DEFAULT, "%@ carrier bundle changed", &v6, 0xCu);
    }

    result = [*(a1 + 32) _preferencesChanged];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setDelegate:(id)delegate
{
  obj = self;
  delegateCopy = delegate;
  objc_sync_enter(obj);
  objc_storeWeak(&obj->_delegate, delegateCopy);

  objc_sync_exit(obj);
}

- (PCConnectionManagerDelegate)delegate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (void)setDuetIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_duetIdentifier != identifierCopy)
  {
    logObject = selfCopy->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      duetIdentifier = selfCopy->_duetIdentifier;
      v11 = 138412802;
      v12 = selfCopy;
      v13 = 2112;
      v14 = duetIdentifier;
      v15 = 2112;
      v16 = identifierCopy;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ Changing duetIdentifier from %@ to %@", &v11, 0x20u);
    }

    v8 = [(NSString *)identifierCopy copy];
    v9 = selfCopy->_duetIdentifier;
    selfCopy->_duetIdentifier = v8;
  }

  objc_sync_exit(selfCopy);

  v10 = *MEMORY[0x277D85DE8];
}

- (NSString)duetIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSString *)selfCopy->_duetIdentifier copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)dealloc
{
  [(PCConnectionManager *)self _clearTimers];
  persistentInterfaceManager = [(PCConnectionManager *)self persistentInterfaceManager];
  [persistentInterfaceManager enableWiFiAutoAssociation:0 forDelegate:self];
  [persistentInterfaceManager enableWakeOnWiFi:0 forDelegate:self];
  [persistentInterfaceManager removeDelegate:self];
  v4 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
  [v4 removeDelegate:self];

  v5 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
  [v5 removeDelegate:self];

  lastScheduledGrowthAlgorithm = self->_lastScheduledGrowthAlgorithm;
  self->_lastScheduledGrowthAlgorithm = 0;

  v7 = +[PCCarrierBundleHelper helper];
  [v7 removeDelegate:self];

  notify_cancel(self->_timerGuidanceToken);
  notify_cancel(self->_pushIsConnectedToken);
  notify_cancel(self->_prefsChangedToken);

  v8.receiver = self;
  v8.super_class = PCConnectionManager;
  [(PCConnectionManager *)&v8 dealloc];
}

- (void)_preferencesChanged
{
  obj = self;
  objc_sync_enter(obj);
  [(PCConnectionManager *)obj _loadPreferencesGeneratingEvent:1];
  objc_sync_exit(obj);
}

- (void)_loadPreferencesGeneratingEvent:(BOOL)event
{
  eventCopy = event;
  v49 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  logObject = selfCopy->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "_loadPreferencesGeneratingEvent", buf, 2u);
  }

  currentStyle = [(PCConnectionManager *)selfCopy currentStyle];
  defaultPollingInterval = selfCopy->_defaultPollingInterval;
  selfCopy->_prefsStyle = PCSettingsGetStyle(selfCopy->_connectionClass, selfCopy->_serviceIdentifier);
  selfCopy->_defaultPollingInterval = PCSettingsGetPollInterval(selfCopy->_connectionClass, selfCopy->_serviceIdentifier);
  if (selfCopy->_connectionClass == 1)
  {
    ForceManualWhenRoamingForMCCAccount = PCSettingsGetForceManualWhenRoamingForMCCAccount(selfCopy->_serviceIdentifier);
    GlobalMCCForceManualWhenRoaming = PCSettingsGetGlobalMCCForceManualWhenRoaming();
    v10 = selfCopy->_logObject;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (ForceManualWhenRoamingForMCCAccount)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *buf = 138412802;
      v44 = selfCopy;
      v46 = *&v12;
      v45 = 2112;
      if (GlobalMCCForceManualWhenRoaming)
      {
        v11 = @"YES";
      }

      v47 = 2112;
      v48 = v11;
      _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "%@ Loading forceManualWhenRoaming: accountSetting %@  globalSetting %@", buf, 0x20u);
    }

    selfCopy->_forceManualWhenRoaming = (ForceManualWhenRoamingForMCCAccount | GlobalMCCForceManualWhenRoaming) != 0;
  }

  else
  {
    selfCopy->_forceManualWhenRoaming = 0;
  }

  v13 = [(PCConnectionManager *)selfCopy _stringForStyle:selfCopy->_prefsStyle];
  v14 = selfCopy->_logObject;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = selfCopy->_defaultPollingInterval / 60.0;
    *buf = 138412546;
    v44 = v13;
    v45 = 2048;
    v46 = v15;
    _os_log_impl(&dword_25E3EF000, v14, OS_LOG_TYPE_DEFAULT, "Loaded preferences. Style is %@ and default poll interval is %g minutes.", buf, 0x16u);
  }

  if (selfCopy->_forceManualWhenRoaming)
  {
    v16 = selfCopy->_logObject;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E3EF000, v16, OS_LOG_TYPE_DEFAULT, "Forcing manual when roaming.", buf, 2u);
    }
  }

  v17 = +[PCCarrierBundleHelper helper];
  v18 = [v17 copyValueFromPushBundleForKey:@"PCForcedMinimumHBI" error:0];

  integerValue = [v18 integerValue];
  if (v18 && integerValue >= 1)
  {
    v20 = integerValue;
    v21 = selfCopy->_logObject;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v44 = *&v20;
      _os_log_impl(&dword_25E3EF000, v21, OS_LOG_TYPE_DEFAULT, "Carrier bundle override for minimum HBI set. Setting minimum keep alive interval to %g seconds.", buf, 0xCu);
    }

    [(PCConnectionManager *)selfCopy _setMinimumKeepAliveInterval:1 onInterface:v20];
  }

  v22 = +[PCCarrierBundleHelper helper];
  v23 = [v22 copyValueFromPushBundleForKey:@"PCForcedMaximumHBI" error:0];

  integerValue2 = [v23 integerValue];
  if (v23 && integerValue2 >= 1)
  {
    v25 = integerValue2;
    v26 = selfCopy->_logObject;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v44 = *&v25;
      _os_log_impl(&dword_25E3EF000, v26, OS_LOG_TYPE_DEFAULT, "Carrier bundle override for maximum HBI set. Setting maximum keep alive interval to %g seconds.", buf, 0xCu);
    }

    [(PCConnectionManager *)selfCopy _setMaximumKeepAliveInterval:1 onInterface:v25];
  }

  v27 = +[PCCarrierBundleHelper helper];
  v28 = [v27 copyValueFromPushBundleForKey:@"PCAllowMinimumIntervalFallback" error:0];

  bOOLValue = [v28 BOOLValue];
  if (v28)
  {
    v30 = bOOLValue;
    v31 = selfCopy->_logObject;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = @"NO";
      if (v30)
      {
        v32 = @"YES";
      }

      *buf = 138412290;
      v44 = v32;
      _os_log_impl(&dword_25E3EF000, v31, OS_LOG_TYPE_DEFAULT, "Operator bundle set PCAllowMinimumIntervalFallback to %@", buf, 0xCu);
    }

    [(PCConnectionManager *)selfCopy setOperatorMinimumIntervalFallbackAllowed:v30];
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PCForceDemoMaxHBI", @"com.apple.persistentconnection", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && AppIntegerValue >= 1)
  {
    v34 = AppIntegerValue;
    v35 = selfCopy->_logObject;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = @"PCForceDemoMaxHBI";
      v45 = 2048;
      v46 = v34;
      _os_log_impl(&dword_25E3EF000, v35, OS_LOG_TYPE_DEFAULT, "%@ set. Setting maximum keep alive interval to %g seconds for demo mode.", buf, 0x16u);
    }

    [(PCConnectionManager *)selfCopy setMaximumKeepAliveInterval:v34];
  }

  v36 = CFPreferencesGetAppIntegerValue(@"PCForceMinHBI", @"com.apple.persistentconnection", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && v36 >= 1)
  {
    v37 = v36;
    v38 = selfCopy->_logObject;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = @"PCForceMinHBI";
      v45 = 2048;
      v46 = v37;
      _os_log_impl(&dword_25E3EF000, v38, OS_LOG_TYPE_DEFAULT, "%@ set. Setting minimum keep alive interval to %g seconds for demo mode.", buf, 0x16u);
    }

    [(PCConnectionManager *)selfCopy setMinimumKeepAliveInterval:v37];
  }

  [(PCConnectionManager *)selfCopy _adjustInterfaceAssertions];
  v39 = (!selfCopy->_pollingIntervalOverrideSet || fabs(selfCopy->_pollingIntervalOverride) >= 2.22044605e-16) && fabs(selfCopy->_defaultPollingInterval) >= 2.22044605e-16;
  if ([(PCConnectionManager *)selfCopy currentStyle]!= 1 || v39)
  {
    [(PCConnectionManager *)selfCopy _deregisterForDeviceConditionsNotifications];
  }

  else
  {
    [(PCConnectionManager *)selfCopy _registerForDeviceConditionsNotifications];
  }

  if (selfCopy->_isRunning && eventCopy)
  {
    if (currentStyle != [(PCConnectionManager *)selfCopy currentStyle])
    {
      [(PCConnectionManager *)selfCopy _clearTimers];
      v40 = 5;
      goto LABEL_60;
    }

    if (currentStyle == 1 && !selfCopy->_isInReconnectMode && defaultPollingInterval != selfCopy->_defaultPollingInterval && !selfCopy->_pollingIntervalOverrideSet)
    {
      [(PCConnectionManager *)selfCopy _clearTimers];
      v40 = 3;
LABEL_60:
      [(PCConnectionManager *)selfCopy _calloutWithEvent:v40 context:0];
    }
  }

  objc_sync_exit(selfCopy);
  v41 = *MEMORY[0x277D85DE8];
}

- (void)_registerForDeviceConditionsNotifications
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_duetContextRegistration)
  {
    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      duetContextRegistration = self->_duetContextRegistration;
      *buf = 138412547;
      selfCopy = self;
      v26 = 2113;
      v27 = duetContextRegistration;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ is already registered for contextual change notifications, {Registration: %{private}@}", buf, 0x16u);
    }
  }

  v5 = CUTWeakLinkClass();
  v6 = CUTWeakLinkClass();
  v7 = CUTWeakLinkClass();
  v8 = CUTWeakLinkClass();
  userContext = [v5 userContext];
  array = [MEMORY[0x277CBEB18] array];
  if (array)
  {
    keyPathForWiFiConnectionQuality = [v6 keyPathForWiFiConnectionQuality];

    if (keyPathForWiFiConnectionQuality)
    {
      keyPathForWiFiConnectionQuality2 = [v6 keyPathForWiFiConnectionQuality];
      CFArrayAppendValue(array, keyPathForWiFiConnectionQuality2);
    }

    keyPathForThermalPressureLevel = [v6 keyPathForThermalPressureLevel];

    if (keyPathForThermalPressureLevel)
    {
      keyPathForThermalPressureLevel2 = [v6 keyPathForThermalPressureLevel];
      CFArrayAppendValue(array, keyPathForThermalPressureLevel2);
    }

    keyPathForPluginStatus = [v6 keyPathForPluginStatus];

    if (keyPathForPluginStatus)
    {
      keyPathForPluginStatus2 = [v6 keyPathForPluginStatus];
      CFArrayAppendValue(array, keyPathForPluginStatus2);
    }

    keyPathForEnergyBudgetRemainingStatus = [v6 keyPathForEnergyBudgetRemainingStatus];

    if (keyPathForEnergyBudgetRemainingStatus)
    {
      keyPathForEnergyBudgetRemainingStatus2 = [v6 keyPathForEnergyBudgetRemainingStatus];
      CFArrayAppendValue(array, keyPathForEnergyBudgetRemainingStatus2);
    }
  }

  v19 = [v7 predicateForChangeAtKeyPaths:array];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__PCConnectionManager__registerForDeviceConditionsNotifications__block_invoke;
  v23[3] = &unk_279A19F08;
  v23[4] = self;
  v20 = [v8 localNonWakingRegistrationWithIdentifier:@"com.apple.pc.automatictimer.goodconditions" contextualPredicate:v19 callback:v23];
  v21 = self->_duetContextRegistration;
  self->_duetContextRegistration = v20;

  [userContext registerCallback:self->_duetContextRegistration];
  [(PCConnectionManager *)self _handleDeviceConditionChangeCallback];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_deregisterForDeviceConditionsNotifications
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_duetContextRegistration)
  {
    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      duetContextRegistration = self->_duetContextRegistration;
      v10 = 138412547;
      selfCopy = self;
      v12 = 2113;
      v13 = duetContextRegistration;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ request to deregister contextual change notifications {Registration: %{private}@}", &v10, 0x16u);
    }

    v5 = CUTWeakLinkClass();
    CUTWeakLinkClass();
    userContext = [v5 userContext];
    v7 = self->_duetContextRegistration;
    if (objc_opt_isKindOfClass())
    {
      [userContext deregisterCallback:self->_duetContextRegistration];
    }

    v8 = self->_duetContextRegistration;
    self->_duetContextRegistration = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeviceConditionChangeCallback
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = CUTWeakLinkClass();
  v4 = CUTWeakLinkClass();
  userContext = [v3 userContext];
  keyPathForThermalPressureLevel = [v4 keyPathForThermalPressureLevel];
  v7 = [userContext objectForKeyedSubscript:keyPathForThermalPressureLevel];
  LOBYTE(v3) = [v7 BOOLValue];

  keyPathForWiFiConnectionQuality = [v4 keyPathForWiFiConnectionQuality];
  v9 = [userContext objectForKeyedSubscript:keyPathForWiFiConnectionQuality];
  integerValue = [v9 integerValue];

  keyPathForPluginStatus = [v4 keyPathForPluginStatus];
  v12 = [userContext objectForKeyedSubscript:keyPathForPluginStatus];
  bOOLValue = [v12 BOOLValue];

  v14 = (integerValue > 49) & ~v3 & bOOLValue;
  if (self->_deviceUnderGoodCondition != v14)
  {
    self->_deviceUnderGoodCondition = v14;
    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_deviceUnderGoodCondition)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = logObject;
      keyPathForThermalPressureLevel2 = [v4 keyPathForThermalPressureLevel];
      v19 = [userContext objectForKeyedSubscript:keyPathForThermalPressureLevel2];
      keyPathForWiFiConnectionQuality2 = [v4 keyPathForWiFiConnectionQuality];
      v21 = [userContext objectForKeyedSubscript:keyPathForWiFiConnectionQuality2];
      keyPathForPluginStatus2 = [v4 keyPathForPluginStatus];
      v23 = [userContext objectForKeyedSubscript:keyPathForPluginStatus2];
      v25 = 138413314;
      selfCopy = self;
      v27 = 2114;
      v28 = v16;
      v29 = 2114;
      v30 = v19;
      v31 = 2114;
      v32 = v21;
      v33 = 2114;
      v34 = v23;
      _os_log_impl(&dword_25E3EF000, v17, OS_LOG_TYPE_DEFAULT, "%@ Query duet context for device condition, {GoodCondition:%{public}@, thermalPressureLevel:%{public}@, wifiConnectionQuality:%{public}@, pluggedIn:%{public}@}", &v25, 0x34u);
    }

    [(PCConnectionManager *)self _processDeviceConditionChanges];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_processDeviceConditionChanges
{
  obj = self;
  objc_sync_enter(obj);
  currentStyle = [(PCConnectionManager *)obj currentStyle];
  v3 = (!obj->_pollingIntervalOverrideSet || fabs(obj->_pollingIntervalOverride) >= 2.22044605e-16) && fabs(obj->_defaultPollingInterval) >= 2.22044605e-16;
  if (currentStyle == 1 && !v3)
  {
    if (!obj->_deviceUnderGoodCondition)
    {
      [(PCConnectionManager *)obj _calloutWithEvent:6 context:0];
    }

    if (obj->_isRunning)
    {
      if (obj->_deviceUnderGoodCondition)
      {
        [(PCConnectionManager *)obj _setupTimerForPollForAdjustment:0];
      }

      else
      {
        [(PCConnectionManager *)obj _pauseTimers];
      }
    }
  }

  objc_sync_exit(obj);
}

- (void)setOnlyAllowedStyle:(int)style
{
  obj = self;
  objc_sync_enter(obj);
  obj->_onlyAllowedStyle = style;
  obj->_onlyAllowedStyleSet = 1;
  [(PCConnectionManager *)obj _adjustInterfaceAssertions];
  objc_sync_exit(obj);
}

- (id)_growthAlgorithmOnInterface:(int64_t)interface
{
  v14 = *MEMORY[0x277D85DE8];
  if (!interface)
  {
    v5 = self->_wifiGrowthAlgorithm[self->_currentAddressFamily];
    goto LABEL_5;
  }

  if (interface == 1)
  {
    v5 = self->_wwanGrowthAlgorithm[self->_currentAddressFamily];
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2048;
    interfaceCopy = interface;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ Asked to get growth algorithm with invalid interface %ld", &v10, 0x16u);
  }

  v6 = 0;
LABEL_9:
  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)startManager
{
  obj = self;
  objc_sync_enter(obj);
  if ([(PCConnectionManager *)obj currentStyle])
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  [(PCConnectionManager *)obj resumeManagerWithAction:v2];
  objc_sync_exit(obj);
}

uint64_t (*__57__PCConnectionManager_resumeManagerWithAction_forceGrow___block_invoke())(void, void, void, void)
{
  result = CUTWeakLinkSymbol();
  resumeManagerWithAction_forceGrow___PLLogRegisteredEvent = result;
  return result;
}

- (void)_resolveStateWithAction:(int)action
{
  if (action >= 5)
  {
    if ((action - 5) <= 1)
    {
      v3 = 1;
      if (self->_isInReconnectMode)
      {
        v3 = self->_reconnectIteration + 1;
      }

      self->_isInReconnectMode = 1;
      self->_reconnectIteration = v3;
      self->_reconnectWithKeepAliveDelay = action == 6;
    }
  }

  else
  {
    self->_isInReconnectMode = 0;
  }
}

- (void)resetKeepAliveStateMachineIfNecessary
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_interfaceIdentifier)
  {
    v3 = 0;
    wwanGrowthAlgorithm = selfCopy->_wwanGrowthAlgorithm;
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = [(PCConnectionManager *)selfCopy _getCachedWWANKeepAliveIntervalForAddressFamily:v3];
      v8 = MEMORY[0x277CCACA8];
      serviceIdentifier = selfCopy->_serviceIdentifier;
      v10 = [PCConnectionManager stringForAddressFamily:v3];
      v11 = [v8 stringWithFormat:@"%@-%@", serviceIdentifier, v10];

      v12 = MEMORY[0x277CCACA8];
      v13 = [PCConnectionManager stringForAddressFamily:v3];
      v14 = [v12 stringWithFormat:@"WWAN growth algorithm-%@", v13];

      logObject = selfCopy->_logObject;
      if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = v14;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Re-creating state machine %@ with info %@", buf, 0x16u);
      }

      v16 = [objc_alloc(objc_msgSend(objc_opt_class() "growthAlgorithmClass"))];
      v17 = wwanGrowthAlgorithm[v3];
      wwanGrowthAlgorithm[v3] = v16;

      [(PCGrowthAlgorithm *)wwanGrowthAlgorithm[v3] setSignalAvoidanceRange:1680.0, 240.0];
      v5 = 0;
      v3 = 1;
    }

    while ((v6 & 1) != 0);
  }

  objc_sync_exit(selfCopy);

  v18 = *MEMORY[0x277D85DE8];
}

- (double)minimumKeepAliveInterval
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _currentGrowthAlgorithm = [(PCConnectionManager *)selfCopy _currentGrowthAlgorithm];
  [_currentGrowthAlgorithm minimumKeepAliveInterval];
  v5 = v4;

  objc_sync_exit(selfCopy);
  return v5;
}

- (void)setMinimumKeepAliveInterval:(double)interval
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  logObject = selfCopy->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Setting minimum keep alive interval to %g", &v10, 0xCu);
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    [(PCGrowthAlgorithm *)selfCopy->_wwanGrowthAlgorithm[v6] setMinimumKeepAliveInterval:interval];
    [(PCGrowthAlgorithm *)selfCopy->_wifiGrowthAlgorithm[v6] setMinimumKeepAliveInterval:interval];
    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  objc_sync_exit(selfCopy);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setMinimumKeepAliveInterval:(double)interval onInterface:(int64_t)interface
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = selfCopy->_logObject;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:interface];
    v11 = 138412802;
    v12 = selfCopy;
    v13 = 2112;
    v14 = v8;
    v15 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, v7, OS_LOG_TYPE_DEFAULT, "%@ Setting minimum keep alive interval for %@ to %g", &v11, 0x20u);
  }

  v9 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:interface];
  [v9 setMinimumKeepAliveInterval:interval];

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x277D85DE8];
}

- (double)maximumKeepAliveInterval
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _currentGrowthAlgorithm = [(PCConnectionManager *)selfCopy _currentGrowthAlgorithm];
  [_currentGrowthAlgorithm maximumKeepAliveInterval];
  v5 = v4;

  objc_sync_exit(selfCopy);
  return v5;
}

- (void)setMaximumKeepAliveInterval:(double)interval
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  logObject = selfCopy->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Setting maximum keep alive interval to %g", &v10, 0xCu);
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    [(PCGrowthAlgorithm *)selfCopy->_wwanGrowthAlgorithm[v6] setMaximumKeepAliveInterval:interval];
    [(PCGrowthAlgorithm *)selfCopy->_wifiGrowthAlgorithm[v6] setMaximumKeepAliveInterval:interval];
    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  objc_sync_exit(selfCopy);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setMaximumKeepAliveInterval:(double)interval onInterface:(int64_t)interface
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  logObject = selfCopy->_logObject;
  v8 = os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT);
  if (interface < 2)
  {
    if (v8)
    {
      v15 = 138412802;
      v16 = selfCopy;
      v17 = 2048;
      interfaceCopy2 = interface;
      v19 = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ Setting maximum keep alive interval for %lu to %g", &v15, 0x20u);
    }

    v9 = 0;
    v10 = 112;
    if (interface == 1)
    {
      v10 = 96;
    }

    v11 = selfCopy + v10;
    v12 = 1;
    do
    {
      v13 = v12;
      [*&v11[8 * v9] setMaximumKeepAliveInterval:interval];
      v12 = 0;
      v9 = 1;
    }

    while ((v13 & 1) != 0);
  }

  else if (v8)
  {
    v15 = 138412546;
    v16 = selfCopy;
    v17 = 2048;
    interfaceCopy2 = interface;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ Asked to set maximum keep alive interval on invalid interface %ld", &v15, 0x16u);
  }

  objc_sync_exit(selfCopy);

  v14 = *MEMORY[0x277D85DE8];
}

- (double)serverStatsMaxKeepAliveInterval
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:1];
  [v3 serverStatsMaxKeepAliveInterval];
  v5 = v4;

  objc_sync_exit(selfCopy);
  return v5;
}

- (double)serverStatsMinKeepAliveInterval
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:1];
  [v3 serverStatsMinKeepAliveInterval];
  v5 = v4;

  objc_sync_exit(selfCopy);
  return v5;
}

- (double)serverStatsExpectedKeepAliveInterval
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:1];
  [v3 serverStatsExpectedKeepAliveInterval];
  v5 = v4;

  objc_sync_exit(selfCopy);
  return v5;
}

- (BOOL)usingServerStatsAggressively
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:1];
  usingServerStatsAggressively = [v3 usingServerStatsAggressively];

  objc_sync_exit(selfCopy);
  return usingServerStatsAggressively;
}

- (void)setServerStatsMaxKeepAliveInterval:(double)interval
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->_logObject;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:1];
    v9 = 138412802;
    v10 = selfCopy;
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Setting server stats max keep alive interval for %@ to %g", &v9, 0x20u);
  }

  v7 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:1];
  [v7 setServerStatsMaxKeepAliveInterval:interval];

  objc_sync_exit(selfCopy);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setServerStatsMinKeepAliveInterval:(double)interval
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->_logObject;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:1];
    v9 = 138412802;
    v10 = selfCopy;
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Setting server stats min keep alive interval for %@ to %g", &v9, 0x20u);
  }

  v7 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:1];
  [v7 setServerStatsMinKeepAliveInterval:interval];

  objc_sync_exit(selfCopy);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setServerStatsExpectedKeepAliveInterval:(double)interval
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->_logObject;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:1];
    v9 = 138412802;
    v10 = selfCopy;
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Setting server stats expected keep alive interval for %@ to %g", &v9, 0x20u);
  }

  v7 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:1];
  [v7 setServerStatsExpectedKeepAliveInterval:interval];

  objc_sync_exit(selfCopy);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setKeepAliveGracePeriod:(double)period
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (period > 2.22044605e-16)
  {
    v5 = PCScheduledWakeRTCPrecision() * 2.0 + 5.0;
    if (period + 5.0 >= v5)
    {
      period = period + 5.0;
    }

    else
    {
      period = v5;
    }
  }

  logObject = selfCopy->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    periodCopy = period;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Setting keep alive grace period to %g", &v9, 0xCu);
  }

  selfCopy->_keepAliveGracePeriod = period;
  _currentGrowthAlgorithm = [(PCConnectionManager *)selfCopy _currentGrowthAlgorithm];
  [_currentGrowthAlgorithm setIsServerOriginatedKeepAlive:period > 2.22044605e-16];

  objc_sync_exit(selfCopy);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setKeepAliveOverrideOnInterface:(int64_t)interface interval:(double)interval timeout:(double)timeout
{
  v21[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_interfaceIdentifier == interface)
  {
    v9 = [(PCConnectionManager *)selfCopy _growthAlgorithmOnInterface:interface];
    [v9 minimumKeepAliveInterval];
    v11 = v10;

    v20 = 0;
    v21[0] = 0;
    v12 = 112;
    if (interface == 1)
    {
      v12 = 96;
      v13 = 104;
    }

    else
    {
      v13 = 120;
    }

    v20 = *(&selfCopy->super.isa + v12);
    v21[0] = *(&selfCopy->super.isa + v13);
    v14 = &v20;
    v15 = 1;
    do
    {
      v16 = v15;
      v17 = *v14;
      [*v14 setMinimumKeepAliveInterval:interval];
      [v17 setMaximumKeepAliveInterval:v11];
      [v17 setLastSuccessfulKeepAliveInterval:interval];
      [v17 setMinimumIntervalFallbackStateTimeout:timeout];
      [v17 setMinimumIntervalFallbackEnabled:1];
      v15 = 0;
      v14 = v21;
    }

    while ((v16 & 1) != 0);
    selfCopy->_minimumIntervalFallbackEnabled = 1;
    [(PCConnectionManager *)selfCopy resumeManagerWithAction:3 forceGrow:0];
    [(PCConnectionManager *)selfCopy resumeManagerWithAction:1 forceGrow:0];
    for (i = 1; i != -1; --i)
    {
    }
  }

  objc_sync_exit(selfCopy);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setNonCellularEarlyFireConstantInterval:(double)interval
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  logObject = selfCopy->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    intervalCopy = interval;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Setting NonCellular early fire constant interval to %g", &v7, 0xCu);
  }

  selfCopy->_nonCellularEarlyFireConstantInterval = interval;
  objc_sync_exit(selfCopy);

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isPushConnected
{
  state64 = 0;
  notify_get_state(self->_pushIsConnectedToken, &state64);
  return state64 != 0;
}

- (double)pollingInterval
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultPollingInterval = selfCopy->_defaultPollingInterval;
  pollingIntervalOverride = selfCopy->_pollingIntervalOverride;
  if (fabs(pollingIntervalOverride) < 2.22044605e-16 && selfCopy->_deviceUnderGoodCondition)
  {
    pollingIntervalOverride = 3600.0;
  }

  if (fabs(defaultPollingInterval) < 2.22044605e-16 && selfCopy->_deviceUnderGoodCondition)
  {
    defaultPollingInterval = 3600.0;
  }

  if (!selfCopy->_pollingIntervalOverrideSet)
  {
    if (defaultPollingInterval < 2.22044605e-16)
    {
      goto LABEL_13;
    }

    v5 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
    if ([v5 isInterfaceHistoricallyUsable])
    {
      isInterfaceHistoricallyUsable = 1;
    }

    else
    {
      v7 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
      isInterfaceHistoricallyUsable = [v7 isInterfaceHistoricallyUsable];
    }

    if ([(PCConnectionManager *)selfCopy _isPushConnected]& isInterfaceHistoricallyUsable)
    {
LABEL_13:
      pollingIntervalOverride = defaultPollingInterval;
    }

    else
    {
      v8 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
      if ([v8 isBadLinkQuality])
      {
        v9 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
        isBadLinkQuality = [v9 isBadLinkQuality];

        if (isBadLinkQuality)
        {
          v11 = 3600.0;
        }

        else
        {
          v11 = 1800.0;
        }
      }

      else
      {

        isBadLinkQuality = 0;
        v11 = 1800.0;
      }

      if (defaultPollingInterval >= v11)
      {
        pollingIntervalOverride = defaultPollingInterval;
      }

      else
      {
        pollingIntervalOverride = v11;
      }

      v12 = selfCopy->_logObject;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        _isPushConnected = [(PCConnectionManager *)selfCopy _isPushConnected];
        v14 = @"NO";
        v19 = 138413314;
        if (_isPushConnected)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        v20 = v15;
        v21 = 2112;
        if (isInterfaceHistoricallyUsable)
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        v22 = v16;
        v23 = 2112;
        if (isBadLinkQuality)
        {
          v14 = @"YES";
        }

        v24 = v14;
        v25 = 2048;
        v26 = defaultPollingInterval;
        v27 = 2048;
        v28 = v11;
        _os_log_impl(&dword_25E3EF000, v12, OS_LOG_TYPE_DEFAULT, "Push is connected? %@  networkIsHistoricallyUsable? %@  isBadLQ? %@ -- choosing pollInterval = MAX(%g, %g)", &v19, 0x34u);
      }
    }
  }

  objc_sync_exit(selfCopy);

  v17 = *MEMORY[0x277D85DE8];
  return pollingIntervalOverride;
}

- (void)setPollingIntervalOverride:(double)override
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_pollingIntervalOverrideSet || selfCopy->_pollingIntervalOverride != override)
  {
    logObject = selfCopy->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      overrideCopy = override;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Setting polling interval override to %g", &v7, 0xCu);
    }

    selfCopy->_pollingIntervalOverride = override;
    selfCopy->_pollingIntervalOverrideSet = 1;
  }

  objc_sync_exit(selfCopy);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancelPollingIntervalOverride
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_pollingIntervalOverrideSet)
  {
    logObject = selfCopy->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Cacnceling polling interval override", v4, 2u);
    }

    selfCopy->_pollingIntervalOverrideSet = 0;
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)shouldClientScheduleReconnectDueToFailure
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  Current = CFAbsoluteTimeGetCurrent();
  lastReachableTime = selfCopy->_lastReachableTime;
  if (lastReachableTime == 0.0)
  {
    goto LABEL_8;
  }

  v5 = Current - lastReachableTime;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 >= 10.0)
  {
LABEL_8:
    if (selfCopy->_isInReconnectMode)
    {
      logObject = selfCopy->_logObject;
      if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Advising client to enter reconnect mode in response to a connection failure since currently in reconnect mode", &v22, 2u);
      }

      LOBYTE(v6) = 1;
    }

    else
    {
      lastResumeTime = selfCopy->_lastResumeTime;
      if ([(PCConnectionManager *)selfCopy currentStyle])
      {
        [(PCConnectionManager *)selfCopy pollingInterval];
        v12 = v11;
      }

      else
      {
        _currentGrowthAlgorithm = [(PCConnectionManager *)selfCopy _currentGrowthAlgorithm];
        [_currentGrowthAlgorithm minimumKeepAliveInterval];
        v12 = v14;
      }

      v15 = Current - lastResumeTime;
      v16 = fabs(v12);
      v17 = v15 < v12 + selfCopy->_keepAliveGracePeriod + 15.0;
      if (v15 <= 2.22044605e-16)
      {
        v17 = 0;
      }

      if (v16 < 2.22044605e-16)
      {
        v17 = 1;
      }

      LODWORD(v6) = !selfCopy->_hasStarted || v17;
      v18 = selfCopy->_logObject;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = "issue a shrink";
        if (v6)
        {
          v19 = "enter reconnect mode";
        }

        v22 = 136315394;
        v23 = v19;
        v24 = 2048;
        v25 = v15;
        _os_log_impl(&dword_25E3EF000, v18, OS_LOG_TYPE_DEFAULT, "Advising client to %s in response to a connection failure after elapsed time from start %g seconds", &v22, 0x16u);
      }
    }
  }

  else
  {
    v6 = selfCopy->_logObject;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:selfCopy->_lastReachableTime];
      v8 = PCStringFromDate(v7);
      v22 = 138412290;
      v23 = v8;
      _os_log_impl(&dword_25E3EF000, v6, OS_LOG_TYPE_DEFAULT, "Advising client to not enter reconnect mode since the network just became reachable at %@", &v22, 0xCu);
    }

    LOBYTE(v6) = 0;
    selfCopy->_lastReachableTime = 0.0;
  }

  objc_sync_exit(selfCopy);

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setEnableNonCellularConnections:(BOOL)connections
{
  connectionsCopy = connections;
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_enableNonCellularConnections != connectionsCopy)
  {
    logObject = selfCopy->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (connectionsCopy)
      {
        v6 = @"YES";
      }

      v8 = 138412546;
      v9 = selfCopy;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@: enableNonCellularConnections changed to %@", &v8, 0x16u);
    }

    selfCopy->_enableNonCellularConnections = connectionsCopy;
    [(PCConnectionManager *)selfCopy _adjustInterfaceAssertions];
  }

  objc_sync_exit(selfCopy);

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)disableEarlyFire
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  disableEarlyFire = selfCopy->_disableEarlyFire;
  objc_sync_exit(selfCopy);

  return disableEarlyFire;
}

- (void)setDisableEarlyFire:(BOOL)fire
{
  obj = self;
  objc_sync_enter(obj);
  obj->_disableEarlyFire = fire;
  objc_sync_exit(obj);
}

- (BOOL)minimumIntervalFallbackEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  minimumIntervalFallbackEnabled = selfCopy->_minimumIntervalFallbackEnabled;
  objc_sync_exit(selfCopy);

  return minimumIntervalFallbackEnabled;
}

- (void)setMinimumIntervalFallbackEnabled:(BOOL)enabled
{
  obj = self;
  objc_sync_enter(obj);
  obj->_minimumIntervalFallbackEnabled = enabled;
  [(PCConnectionManager *)obj _adjustMinimumIntervalFallback];
  objc_sync_exit(obj);
}

- (BOOL)operatorMinimumIntervalFallbackAllowed
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  operatorMinimumIntervalFallbackAllowed = selfCopy->_operatorMinimumIntervalFallbackAllowed;
  objc_sync_exit(selfCopy);

  return operatorMinimumIntervalFallbackAllowed;
}

- (void)setOperatorMinimumIntervalFallbackAllowed:(BOOL)allowed
{
  obj = self;
  objc_sync_enter(obj);
  obj->_operatorMinimumIntervalFallbackAllowed = allowed;
  [(PCConnectionManager *)obj _adjustMinimumIntervalFallback];
  objc_sync_exit(obj);
}

- (void)_adjustMinimumIntervalFallback
{
  v3 = self->_minimumIntervalFallbackEnabled && self->_operatorMinimumIntervalFallbackAllowed;
  interfaceIdentifier = self->_interfaceIdentifier;
  if (interfaceIdentifier == 1)
  {
    _currentGrowthAlgorithm = [(PCConnectionManager *)self _currentGrowthAlgorithm];
    [_currentGrowthAlgorithm setMinimumIntervalFallbackEnabled:v3];

    interfaceIdentifier = self->_interfaceIdentifier;
  }

  if (!interfaceIdentifier)
  {
    _currentGrowthAlgorithm2 = [(PCConnectionManager *)self _currentGrowthAlgorithm];
    [_currentGrowthAlgorithm2 setMinimumIntervalFallbackEnabled:self->_minimumIntervalFallbackEnabled];
  }
}

- (void)setCurrentAddressFamily:(int)family
{
  obj = self;
  objc_sync_enter(obj);
  obj->_currentAddressFamily = family;
  objc_sync_exit(obj);
}

- (int)currentAddressFamily
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentAddressFamily = selfCopy->_currentAddressFamily;
  objc_sync_exit(selfCopy);

  return currentAddressFamily;
}

- (void)_setupTimerForPushWithKeepAliveInterval:(double)interval
{
  v23 = *MEMORY[0x277D85DE8];
  if (*&self->_intervalTimer != 0 || self->_delayTimer)
  {
    [PCConnectionManager _setupTimerForPushWithKeepAliveInterval:];
  }

  self->_onTimeKeepAliveTime = CFAbsoluteTimeGetCurrent() + interval;
  _currentGrowthAlgorithm = [(PCConnectionManager *)self _currentGrowthAlgorithm];
  lastScheduledGrowthAlgorithm = self->_lastScheduledGrowthAlgorithm;
  self->_lastScheduledGrowthAlgorithm = _currentGrowthAlgorithm;

  interval = [[PCPersistentTimer alloc] initWithTimeInterval:self->_serviceIdentifier serviceIdentifier:self->_guidancePriority guidancePriority:self target:sel__intervalTimerFired selector:0 userInfo:self->_keepAliveGracePeriod + interval];
  intervalTimer = self->_intervalTimer;
  self->_intervalTimer = interval;

  if (self->_disableEarlyFire)
  {
    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ - early fire has been manually disabled for this timer!", &v19, 0xCu);
    }

    [(PCPersistentTimer *)self->_intervalTimer setMinimumEarlyFireProportion:1.0];
  }

  if (!self->_interfaceIdentifier && self->_nonCellularEarlyFireConstantInterval > 0.0)
  {
    v10 = self->_logObject;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      nonCellularEarlyFireConstantInterval = self->_nonCellularEarlyFireConstantInterval;
      v19 = 138412546;
      selfCopy2 = self;
      v21 = 2048;
      v22 = nonCellularEarlyFireConstantInterval;
      _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "%@ - setting early fire constant interval to %f!", &v19, 0x16u);
    }

    [(PCPersistentTimer *)self->_intervalTimer setEarlyFireConstantInterval:self->_nonCellularEarlyFireConstantInterval];
  }

  persistentInterfaceManager = [(PCConnectionManager *)self persistentInterfaceManager];
  if (([persistentInterfaceManager doesWWANInterfaceExist] & 1) == 0 && (objc_msgSend(persistentInterfaceManager, "isWakeOnWiFiSupported") & 1) == 0)
  {
    [(PCConnectionManager *)self pollingInterval];
    if (v13 < 2.22044605e-16)
    {
      v14 = self->_logObject;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_25E3EF000, v14, OS_LOG_TYPE_DEFAULT, "Trying to push no persistent interface exists and the poll interval is 'manual', so disabling waking to conserve power", &v19, 2u);
      }

      [(PCPersistentTimer *)self->_intervalTimer setDisableSystemWaking:1];
    }
  }

  [(PCPersistentTimer *)self->_intervalTimer fireTime];
  self->_lastScheduledIntervalTime = v15;
  v16 = self->_intervalTimer;
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [(PCPersistentTimer *)v16 scheduleInRunLoop:mainRunLoop];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_setupTimerForPollForAdjustment:(BOOL)adjustment
{
  adjustmentCopy = adjustment;
  v101 = *MEMORY[0x277D85DE8];
  if (self->_intervalTimer || self->_reconnectWakeTimer || self->_delayTimer)
  {
    [PCConnectionManager _setupTimerForPollForAdjustment:];
  }

  [(PCConnectionManager *)self pollingInterval];
  v6 = v5;
  if (v5 < 2.22044605e-16)
  {
    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy9 = self;
      v83 = 2050;
      v84 = v6;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ Unable to setup a poll timer with {pollingInterval: %{public}f}, start when on power", buf, 0x16u);
    }

    goto LABEL_82;
  }

  lastElapsedInterval = self->_lastElapsedInterval;
  if (lastElapsedInterval > 2.22044605e-16)
  {
    v9 = v6 - lastElapsedInterval;
    v6 = v9 >= 0.0 ? v9 : 0.0;
    v10 = self->_logObject;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      [(PCConnectionManager *)self pollingInterval];
      v12 = self->_lastElapsedInterval;
      *buf = 138413058;
      selfCopy9 = self;
      v83 = 2048;
      v84 = v13;
      v85 = 2048;
      v86 = v6;
      v87 = 2048;
      v88 = v12;
      _os_log_impl(&dword_25E3EF000, v11, OS_LOG_TYPE_DEFAULT, "%@ adjust polling interval {pollingInterval: %f, adjustedPollingInterval: %f, lastElapsedInterval: %f}.", buf, 0x2Au);
    }
  }

  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_timerGuidance];
  v15 = v14;
  if (v14 && ([v14 timeIntervalSinceNow], v16 > 2.22044605e-16) && (objc_msgSend(v15, "timeIntervalSinceNow"), v17 < 7200.0))
  {
    [v15 timeIntervalSinceNow];
    v19 = v18 > (v6 + v6) / 3.0;
  }

  else
  {
    v19 = 0;
  }

  v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_lastScheduledIntervalTime];
  [v20 timeIntervalSinceNow];
  v22 = v21;
  if (v6 >= 2.22044605e-16)
  {
    if (v19)
    {
      v25 = v15;
      if (adjustmentCopy)
      {
        v26 = 0;
        v27 = CFAbsoluteTimeGetCurrent() - self->_lastResumeTime;
        v28 = v6 + v6;
        LODWORD(v29) = v27 > v6 + v6;
        v30 = 0.0;
        if (v22 > 2.22044605e-16 && v22 < v28 && v27 <= v28)
        {
          LODWORD(v29) = 0;
          v30 = self->_lastScheduledIntervalTime + -120.0;
          v26 = 1;
        }
      }

      else
      {
        if (v22 <= 2.22044605e-16 || v22 >= v6 || fabs(self->_lastElapsedInterval) >= 2.22044605e-16)
        {
          Current = CFAbsoluteTimeGetCurrent();
          v26 = 0;
        }

        else
        {
          Current = self->_lastScheduledIntervalTime;
          v26 = 1;
        }

        LODWORD(v29) = 0;
        v30 = v6 + Current + -120.0;
      }

      v40 = self->_logObject;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        log = v40;
        PCStringFromDate(v25);
        v80 = v20;
        v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        if (adjustmentCopy)
        {
          v42 = @"YES";
        }

        else
        {
          v42 = @"NO";
        }

        if (v26)
        {
          v43 = @"YES";
        }

        else
        {
          v43 = @"NO";
        }

        v78 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{self->_lastResumeTime, v43, v42}];
        v44 = PCStringFromDate(v78);
        v45 = CFAbsoluteTimeGetCurrent() - self->_lastResumeTime;
        v46 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_lastScheduledIntervalTime];
        PCStringFromDate(v46);
        *&v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v48 = v29;
        v29 = v47;
        lastScheduledIntervalTime = self->_lastScheduledIntervalTime;
        v50 = @"NO";
        if (v48)
        {
          v50 = @"YES";
        }

        *buf = 138414594;
        selfCopy9 = self;
        v83 = 2112;
        v84 = v41;
        v85 = 2112;
        v86 = v77;
        v87 = 2112;
        v88 = v76;
        v89 = 2112;
        v90 = v44;
        v91 = 2048;
        v92 = v45;
        v93 = 2112;
        v94 = *&v47;
        v95 = 2048;
        v96 = lastScheduledIntervalTime;
        v97 = 2048;
        v98 = v22;
        v99 = 2112;
        v100 = v50;
        _os_log_impl(&dword_25E3EF000, log, OS_LOG_TYPE_DEFAULT, "%@ scheduling the next poll to align with the next push keepAlive date (%@). isAdjustment %@  isLastTimeIntervalValid? %@, lastResumeTime %@ (%f), lastScheduledIntervalTime (%@) %f, timeDiff %f. Should fire immediately? %@", buf, 0x66u);

        LOBYTE(v29) = v48;
        v20 = v80;
      }

      if (v29)
      {
        v6 = 0.0;
      }

      else
      {
        v51 = self->_logObject;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v51;
          [v25 timeIntervalSinceNow];
          v54 = v53;
          v55 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v30];
          PCStringFromDate(v55);
          v56 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138413058;
          selfCopy9 = self;
          v83 = 2048;
          v84 = v54;
          v85 = 2048;
          v86 = v6;
          v87 = 2112;
          v88 = v56;
          _os_log_impl(&dword_25E3EF000, v52, OS_LOG_TYPE_DEFAULT, "%@ nextPollDate timeIntervalSinceNow %f  pollingInterval %f  earliestAllowableFire %@", buf, 0x2Au);
        }

        [v25 timeIntervalSinceNow];
        if (v57 > v6 + 120.0)
        {
          while (1)
          {
            [v25 timeIntervalSinceReferenceDate];
            if (v58 - v6 <= v30)
            {
              break;
            }

            v59 = [v25 dateByAddingTimeInterval:-v6];

            v60 = self->_logObject;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = v60;
              PCStringFromDate(v59);
              v62 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              [v59 timeIntervalSinceNow];
              *buf = 138412802;
              selfCopy9 = self;
              v83 = 2112;
              v84 = v62;
              v85 = 2048;
              v86 = v63;
              _os_log_impl(&dword_25E3EF000, v61, OS_LOG_TYPE_DEFAULT, "%@ nextPollDate whittled down by a polling interval to %@, %f", buf, 0x20u);
            }

            [v59 timeIntervalSinceNow];
            v25 = v59;
            if (v64 <= v6 + 120.0)
            {
              goto LABEL_73;
            }
          }
        }

        v59 = v25;
LABEL_73:
        [v59 timeIntervalSinceNow];
        v6 = v65;
        v25 = v59;
      }

      v66 = self->_logObject;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy9 = self;
        v83 = 2048;
        v84 = v6;
        _os_log_impl(&dword_25E3EF000, v66, OS_LOG_TYPE_DEFAULT, "%@ using nextPollInterval = %f.", buf, 0x16u);
      }

      goto LABEL_77;
    }

    v31 = self->_logObject;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if (adjustmentCopy)
      {
        *&v32 = COERCE_DOUBLE(@"YES");
      }

      else
      {
        *&v32 = COERCE_DOUBLE(@"NO");
      }

      v33 = v31;
      PCStringFromDate(v15);
      v34 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [v15 timeIntervalSinceNow];
      v36 = v35;
      v37 = PCStringFromDate(v20);
      *buf = 138413826;
      selfCopy9 = self;
      v83 = 2112;
      v84 = *&v32;
      v85 = 2112;
      v86 = v34;
      v87 = 2048;
      v88 = v36;
      v89 = 2112;
      v90 = v37;
      v91 = 2048;
      v92 = v22;
      v93 = 2048;
      v94 = v6;
      _os_log_impl(&dword_25E3EF000, v33, OS_LOG_TYPE_DEFAULT, "%@ scheduling next poll - isAdjustment %@. PushDate %@ is not valid - timeIntervalSinceNow %f. Last scheduled fire date %@. TimeDiff = %f, pollingInterval %f", buf, 0x48u);
    }

    if (adjustmentCopy)
    {
      if (v22 < v6 + v6 && v22 > 2.22044605e-16)
      {
        v6 = v22;
      }
    }

    else if (v22 > 2.22044605e-16 && v22 < v6 + -120.0 && fabs(self->_lastElapsedInterval) < 2.22044605e-16)
    {
      v6 = v6 + v22;
    }

    v23 = self->_logObject;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy9 = self;
      v83 = 2048;
      v84 = v6;
      v24 = "%@ using nextPollInterval = %f.";
      goto LABEL_49;
    }
  }

  else
  {
    v23 = self->_logObject;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy9 = self;
      v83 = 2048;
      v84 = v6;
      v24 = "%@ firing immediately {nextPollInterval:%f}.";
LABEL_49:
      _os_log_impl(&dword_25E3EF000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);
    }
  }

LABEL_77:
  v67 = [[PCPersistentTimer alloc] initWithTimeInterval:self->_serviceIdentifier serviceIdentifier:self target:sel__intervalTimerFired selector:0 userInfo:v6];
  intervalTimer = self->_intervalTimer;
  self->_intervalTimer = v67;

  persistentInterfaceManager = [(PCConnectionManager *)self persistentInterfaceManager];
  areAllNetworkInterfacesDisabled = [persistentInterfaceManager areAllNetworkInterfacesDisabled];

  if (areAllNetworkInterfacesDisabled)
  {
    v71 = self->_logObject;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E3EF000, v71, OS_LOG_TYPE_DEFAULT, "All network interfaces are disabled, so not scheduling any wakes in polling mode", buf, 2u);
    }

    [(PCPersistentTimer *)self->_intervalTimer setDisableSystemWaking:1];
  }

  [(PCPersistentTimer *)self->_intervalTimer fireTime];
  self->_lastScheduledIntervalTime = v72;
  v73 = self->_intervalTimer;
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [(PCPersistentTimer *)v73 scheduleInRunLoop:mainRunLoop];

  self->_lastStartTime = CFAbsoluteTimeGetCurrent();
LABEL_82:
  v75 = *MEMORY[0x277D85DE8];
}

- (void)_setupKeepAliveForReconnect
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (BOOL)_hasBudgetRemaining
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_duetIdentifier)
  {
    cUTWeakLinkClass() = [CUTWeakLinkClass() sharedInstance];
    v4 = [cUTWeakLinkClass() allowsDiscretionaryWorkForTask:self->_duetIdentifier withPriority:*CUTWeakLinkSymbol() withParameters:0];
    if ((v4 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      duetIdentifier = self->_duetIdentifier;
      v10 = 138412546;
      selfCopy2 = self;
      v12 = 2112;
      v13 = duetIdentifier;
      _os_log_impl(&dword_25E3EF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@ DASSystemContext denied discretionary work for %@.", &v10, 0x16u);
    }

    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (v4)
      {
        v7 = @"YES";
      }

      v10 = 138412546;
      selfCopy2 = self;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ got response from DASSystemContext: hasBudget: %@.", &v10, 0x16u);
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_intervalTimerFired
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_intervalTimer)
  {
    if (selfCopy->_delayTimer)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PCConnectionManager.m" lineNumber:1427 description:@"delay timer already exists"];
    }

    [(PCConnectionManager *)selfCopy _takePowerAssertionWithTimeout:30.0];
    [(PCPersistentTimer *)selfCopy->_intervalTimer invalidate];
    intervalTimer = selfCopy->_intervalTimer;
    selfCopy->_intervalTimer = 0;

    [(PCPersistentTimer *)selfCopy->_reconnectWakeTimer invalidate];
    reconnectWakeTimer = selfCopy->_reconnectWakeTimer;
    selfCopy->_reconnectWakeTimer = 0;

    if ([(PCConnectionManager *)selfCopy _hasBudgetRemaining])
    {
      persistentInterfaceManager = [(PCConnectionManager *)selfCopy persistentInterfaceManager];
      if (-[PCConnectionManager currentStyle](selfCopy, "currentStyle") != 1 && (([persistentInterfaceManager isWWANInterfaceUp] & 1) != 0 || (objc_msgSend(persistentInterfaceManager, "isWakeOnWiFiSupported") & 1) != 0))
      {
        v21 = selfCopy->_logObject;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          isWWANInterfaceUp = [persistentInterfaceManager isWWANInterfaceUp];
          isWakeOnWiFiSupported = [persistentInterfaceManager isWakeOnWiFiSupported];
          v24 = @"NO";
          if (isWWANInterfaceUp)
          {
            v25 = @"YES";
          }

          else
          {
            v25 = @"NO";
          }

          if (isWakeOnWiFiSupported)
          {
            v24 = @"YES";
          }

          v30 = 138412546;
          v31 = *&v25;
          v32 = 2112;
          v33 = v24;
          _os_log_impl(&dword_25E3EF000, v21, OS_LOG_TYPE_DEFAULT, "Timer fired. Delay is 0 so scheduling notification immediately. isWWANInterfaceUp %@, isWoWSupported %@", &v30, 0x16u);
        }

        mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
        v27 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CBE738]];
        [mainRunLoop performSelector:sel__delayTimerFired target:selfCopy argument:0 order:0 modes:v27];

        mainRunLoop2 = [MEMORY[0x277CBEB88] mainRunLoop];
        CFRunLoopWakeUp([mainRunLoop2 getCFRunLoop]);
      }

      else
      {
        persistentInterfaceManager2 = [(PCConnectionManager *)selfCopy persistentInterfaceManager];
        [persistentInterfaceManager2 enableWiFiAutoAssociation:1 forDelegate:selfCopy];

        mainRunLoop2 = +[PCPersistentTimer lastSystemWakeDate];
        [mainRunLoop2 timeIntervalSinceNow];
        v10 = v9 + 10.0;
        if (v10 >= 1.0)
        {
          v11 = v10;
        }

        else
        {
          v11 = 1.0;
        }

        v12 = selfCopy->_logObject;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = PCStringFromDate(mainRunLoop2);
          v30 = 134218242;
          v31 = v11;
          v32 = 2112;
          v33 = v13;
          _os_log_impl(&dword_25E3EF000, v12, OS_LOG_TYPE_DEFAULT, "Timer fired. Delaying notification %g seconds. Last system wake: %@", &v30, 0x16u);
        }

        v14 = [[PCPersistentTimer alloc] initWithTimeInterval:selfCopy->_serviceIdentifier serviceIdentifier:selfCopy target:sel__delayTimerFired selector:0 userInfo:v11];
        delayTimer = selfCopy->_delayTimer;
        selfCopy->_delayTimer = v14;

        [(PCPersistentTimer *)selfCopy->_delayTimer setDisableSystemWaking:1];
        [(PCPersistentTimer *)selfCopy->_delayTimer setMinimumEarlyFireProportion:1.0];
        v16 = selfCopy->_delayTimer;
        mainRunLoop3 = [MEMORY[0x277CBEB88] mainRunLoop];
        [(PCPersistentTimer *)v16 scheduleInRunLoop:mainRunLoop3];
      }
    }

    else
    {
      logObject = selfCopy->_logObject;
      if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
      {
        serviceIdentifier = selfCopy->_serviceIdentifier;
        v30 = 138412546;
        v31 = *&selfCopy;
        v32 = 2112;
        v33 = serviceIdentifier;
        _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ (%@) does not have budget to perform callout, bailing and starting next timer interval.", &v30, 0x16u);
      }

      [(PCConnectionManager *)selfCopy _releasePowerAssertion];
      [(PCConnectionManager *)selfCopy startManager];
    }
  }

  else
  {
    v18 = selfCopy->_logObject;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_25E3EF000, v18, OS_LOG_TYPE_DEFAULT, "_intervalTimer was already invalidated, no need to perform callback", &v30, 2u);
    }
  }

  objc_sync_exit(selfCopy);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_delayTimerFired
{
  obj = self;
  objc_sync_enter(obj);
  [(PCConnectionManager *)obj _clearTimersReleasingPowerAssertion:0];
  if (obj->_isInReconnectMode)
  {
    v2 = 4;
  }

  else
  {
    currentStyle = [(PCConnectionManager *)obj currentStyle];
    if (currentStyle >= 3)
    {
      v2 = 0xFFFFFFFFLL;
    }

    else
    {
      v2 = dword_25E416320[currentStyle];
    }
  }

  keepAliveGracePeriod = obj->_keepAliveGracePeriod;
  onTimeKeepAliveTime = obj->_onTimeKeepAliveTime;
  if (keepAliveGracePeriod <= 2.22044605e-16)
  {
    v6 = onTimeKeepAliveTime + PCScheduledWakeRTCPrecision() * -2.0;
  }

  else
  {
    v6 = keepAliveGracePeriod + onTimeKeepAliveTime + -5.0;
  }

  v7 = MEMORY[0x277CBEAC0];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:obj->_lastStopTime < v6];
  v9 = [v7 dictionaryWithObjectsAndKeys:{v8, @"PCTimerFireEarlyToCoalesce", 0}];

  [(PCConnectionManager *)obj _calloutWithEvent:v2 context:v9];
  objc_sync_exit(obj);
}

- (void)_callDelegateWithEventAndContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  objc_sync_exit(selfCopy);

  v7 = [contextCopy objectForKey:@"PCEvent"];
  intValue = [v7 intValue];

  v9 = [contextCopy objectForKey:@"PCEventContext"];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained connectionManager:selfCopy handleEvent:intValue];
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained connectionManager:selfCopy handleEvent:intValue context:v9];
  }

  v10 = selfCopy;
  objc_sync_enter(v10);
  v10->_inCallback = 0;
  logObject = v10->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Returned from callout", v12, 2u);
  }

  [(PCConnectionManager *)v10 _adjustInterfaceAssertions];
  [(PCConnectionManager *)v10 _releasePowerAssertion];
  objc_sync_exit(v10);
}

- (void)_clearTimersReleasingPowerAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  self->_isRunning = 0;
  [(PCPersistentTimer *)self->_intervalTimer invalidate];
  intervalTimer = self->_intervalTimer;
  self->_intervalTimer = 0;

  [(PCPersistentTimer *)self->_reconnectWakeTimer invalidate];
  reconnectWakeTimer = self->_reconnectWakeTimer;
  self->_reconnectWakeTimer = 0;

  [(PCPersistentTimer *)self->_delayTimer invalidate];
  delayTimer = self->_delayTimer;
  self->_delayTimer = 0;

  [(PCConnectionManager *)self _adjustInterfaceAssertions];
  if (assertionCopy)
  {
    [(PCConnectionManager *)self _releasePowerAssertion];
  }

  self->_lastStopTime = CFAbsoluteTimeGetCurrent();
}

- (void)_pauseTimers
{
  [(PCPersistentTimer *)self->_intervalTimer invalidate];
  intervalTimer = self->_intervalTimer;
  self->_intervalTimer = 0;

  [(PCPersistentTimer *)self->_reconnectWakeTimer invalidate];
  reconnectWakeTimer = self->_reconnectWakeTimer;
  self->_reconnectWakeTimer = 0;

  [(PCPersistentTimer *)self->_delayTimer invalidate];
  delayTimer = self->_delayTimer;
  self->_delayTimer = 0;

  [(PCConnectionManager *)self _adjustInterfaceAssertions];
  if (!self->_inCallback)
  {
    [(PCConnectionManager *)self _releasePowerAssertion];
  }

  Current = CFAbsoluteTimeGetCurrent();
  self->_lastStopTime = Current;
  v7 = Current - self->_lastStartTime;
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  self->_lastElapsedInterval = self->_lastElapsedInterval + v7;
}

- (void)_setTimerGuidance:(double)guidance
{
  obj = self;
  objc_sync_enter(obj);
  obj->_timerGuidance = guidance;
  [(PCConnectionManager *)obj _adjustPollTimerIfNecessary];
  objc_sync_exit(obj);
}

- (void)interfaceManagerWWANInterfaceStatusChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_interfaceIdentifier == 1)
  {
    [(PCConnectionManager *)selfCopy _adjustInterfaceAssertions];
    isWWANInterfaceUp = [changedCopy isWWANInterfaceUp];
    if (selfCopy->_alwaysWantsInterfaceChangeCallbacks || selfCopy->_isRunning && !selfCopy->_delayTimer)
    {
      selfCopy->_isReachable = [changedCopy isInternetReachable];
      if (selfCopy->_isInReconnectMode && ((selfCopy->_intervalTimer != 0) & isWWANInterfaceUp) == 1)
      {
        logObject = selfCopy->_logObject;
        if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Persistent interface went up while in reconnect mode. Firing reconnect timer.", v9, 2u);
        }

        [(PCConnectionManager *)selfCopy _intervalTimerFired];
      }

      else if (![(PCConnectionManager *)selfCopy currentStyle])
      {
        if (isWWANInterfaceUp)
        {
          v8 = 7;
        }

        else
        {
          v8 = 8;
        }

        [(PCConnectionManager *)selfCopy _calloutWithEvent:v8 context:0];
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)interfaceManagerInHomeCountryStatusChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PCConnectionManager *)selfCopy _loadPreferencesGeneratingEvent:1];
  objc_sync_exit(selfCopy);
}

- (void)interfaceManagerInternetReachabilityChanged:(id)changed
{
  v30 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PCConnectionManager *)selfCopy _adjustInterfaceAssertions];
  isReachable = selfCopy->_isReachable;
  isInternetReachable = [changedCopy isInternetReachable];
  selfCopy->_isReachable = isInternetReachable;
  if (isInternetReachable)
  {
    selfCopy->_lastReachableTime = CFAbsoluteTimeGetCurrent();
  }

  v8 = selfCopy->_logObject;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isRunning = selfCopy->_isRunning;
    delayTimer = selfCopy->_delayTimer;
    v11 = selfCopy->_isReachable;
    currentStyle = [(PCConnectionManager *)selfCopy currentStyle];
    v13 = @"NO";
    *v20 = 138413826;
    *&v20[4] = selfCopy;
    if (v11)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    if (isReachable)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    if (isRunning)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    *&v20[12] = 2112;
    *&v20[14] = changedCopy;
    *&v20[22] = 2112;
    v21 = v16;
    if (!currentStyle)
    {
      v13 = @"YES";
    }

    v22 = 2112;
    v23 = delayTimer;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v13;
    _os_log_impl(&dword_25E3EF000, v8, OS_LOG_TYPE_DEFAULT, "%@ interfaceManagerInternetReachabilityChanged: %@ isRunning %@ delayTimer %@ wasReachable %@ isReachable %@ currentStyleIsPush? %@", v20, 0x48u);
  }

  if (selfCopy->_alwaysWantsInterfaceChangeCallbacks || selfCopy->_isRunning && !selfCopy->_delayTimer)
  {
    if (!selfCopy->_isInReconnectMode || !selfCopy->_intervalTimer || ((isInternetReachable ^ 1) & 1) != 0 || isReachable)
    {
      if (![(PCConnectionManager *)selfCopy currentStyle:*v20]&& (isInternetReachable & isReachable & 1) == 0)
      {
        if (isInternetReachable)
        {
          v18 = 7;
        }

        else
        {
          v18 = 8;
        }

        [(PCConnectionManager *)selfCopy _calloutWithEvent:v18 context:0];
      }
    }

    else
    {
      logObject = selfCopy->_logObject;
      if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Network went reachable while in reconnect mode. Firing reconnect timer.", v20, 2u);
      }

      [(PCConnectionManager *)selfCopy _intervalTimerFired:*v20];
    }
  }

  objc_sync_exit(selfCopy);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_takePowerAssertionWithTimeout:(double)timeout
{
  v18 = *MEMORY[0x277D85DE8];
  p_powerAssertionID = &self->_powerAssertionID;
  if (!self->_powerAssertionID)
  {
    serviceIdentifier = self->_serviceIdentifier;
    if (serviceIdentifier)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@-connectionmanager(%p)", serviceIdentifier, self];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"connectionmanager(%p)", self, v13];
    }
    v7 = ;
    v8 = [PCPersistentIdentifiers processNamePidAndStringIdentifier:v7];

    v9 = IOPMAssertionCreateWithDescription(@"NoIdleSleepAssertion", v8, @"Staying awake during callout to clients", 0, 0, timeout, @"TimeoutActionTurnOff", p_powerAssertionID);
    logObject = self->_logObject;
    if (v9)
    {
      if (os_log_type_enabled(logObject, OS_LOG_TYPE_FAULT))
      {
        [PCConnectionManager _takePowerAssertionWithTimeout:];
      }
    }

    else if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *p_powerAssertionID;
      *buf = 67109378;
      v15 = v11;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Preventing sleep with power assertion with identifier %i assertionIdentifier: %@", buf, 0x12u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_saveWWANKeepAliveInterval
{
  obj = self;
  objc_sync_enter(obj);
  cacheInfo = [(PCGrowthAlgorithm *)obj->_wwanGrowthAlgorithm[obj->_currentAddressFamily] cacheInfo];
  [(PCConnectionManager *)obj _saveWWANKeepAliveIntervalWithInfo:cacheInfo resetStateMachine:0];

  objc_sync_exit(obj);
}

- (void)_saveWWANKeepAliveIntervalWithInfo:(id)info resetStateMachine:(BOOL)machine
{
  infoCopy = info;
  if (self->_wwanGrowthAlgorithm[self->_currentAddressFamily])
  {
    if (_saveWWANKeepAliveIntervalWithInfo_resetStateMachine__pred != -1)
    {
      [PCConnectionManager _saveWWANKeepAliveIntervalWithInfo:resetStateMachine:];
    }

    v7 = self->_serviceIdentifier;
    v8 = [PCConnectionManager stringForAddressFamily:self->_currentAddressFamily];
    if (infoCopy)
    {
      v9 = [infoCopy mutableCopy];
      objc_initWeak(&location, self);
      v10 = MEMORY[0x277CCA8C8];
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __76__PCConnectionManager__saveWWANKeepAliveIntervalWithInfo_resetStateMachine___block_invoke_2;
      v16 = &unk_279A19F30;
      v17 = v7;
      v11 = v9;
      v18 = v11;
      v19 = v8;
      machineCopy = machine;
      objc_copyWeak(&v20, &location);
      v12 = [v10 blockOperationWithBlock:&v13];
      [_saveWWANKeepAliveIntervalWithInfo_resetStateMachine__queue addOperation:{v12, v13, v14, v15, v16}];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __76__PCConnectionManager__saveWWANKeepAliveIntervalWithInfo_resetStateMachine___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = _saveWWANKeepAliveIntervalWithInfo_resetStateMachine__queue;
  _saveWWANKeepAliveIntervalWithInfo_resetStateMachine__queue = v0;

  v2 = _saveWWANKeepAliveIntervalWithInfo_resetStateMachine__queue;

  return [v2 setMaxConcurrentOperationCount:1];
}

void __76__PCConnectionManager__saveWWANKeepAliveIntervalWithInfo_resetStateMachine___block_invoke_2(uint64_t a1)
{
  v2 = +[PCConnectionManager _keepAliveCachePath];
  v3 = [v2 stringByAppendingPathExtension:@"lock"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [[PCDistributedLock alloc] initWithPath:v3];
    [(PCDistributedLock *)v6 lock];
    v7 = +[PCConnectionManager intervalCacheDictionaries];
    v8 = [v7 mutableCopy];

    v9 = [v8 objectForKey:*(a1 + 32)];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x277CBEB38] dictionary];
    }

    v12 = v11;

    [v12 setObject:*(a1 + 40) forKey:*(a1 + 48)];
    [v8 setObject:v12 forKey:*(a1 + 32)];
    v13 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:200 options:0 error:0];
    [v13 writeToFile:v2 atomically:1];
    [(PCDistributedLock *)v6 unlock];

    if (*(a1 + 64) == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      [WeakRetained resetKeepAliveStateMachineIfNecessary];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PCIntervalCacheChangedNotification", 0, 0, 0);
  }
}

+ (id)intervalCacheDictionaries
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  selfCopy = self;
  _keepAliveCachePath = [self _keepAliveCachePath];
  v5 = [v3 initWithContentsOfFile:_keepAliveCachePath];

  v6 = 0x277CBE000uLL;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    v25 = *v39;
    v26 = v7;
    do
    {
      v11 = 0;
      v27 = v9;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v38 + 1) + 8 * v11);
        v13 = [v7 objectForKey:v12];
        dictionary2 = [*(v6 + 2872) dictionary];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v12;
          v29 = v13;
          v30 = v11;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v35;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v35 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v34 + 1) + 8 * i);
                v20 = [v14 objectForKey:v19];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v21 = [v20 objectForKey:@"keepAliveInterval"];
                  v22 = [v20 objectForKey:@"cacheDate"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v21 doubleValue];
                      if ([selfCopy _isCachedKeepAliveIntervalStillValid:v22 date:?])
                      {
                        [dictionary2 setObject:v20 forKey:v19];
                      }
                    }
                  }
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v16);
          }

          v6 = 0x277CBE000;
          v10 = v25;
          v7 = v26;
          v9 = v27;
          v12 = v28;
          v13 = v29;
          v11 = v30;
        }

        [dictionary setObject:dictionary2 forKey:v12];

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v9);
  }

  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)currentCacheDictonary
{
  intervalCacheDictionaries = [objc_opt_class() intervalCacheDictionaries];
  v4 = [intervalCacheDictionaries objectForKeyedSubscript:self->_serviceIdentifier];

  return v4;
}

+ (id)_keepAliveCachePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v5 = [defaultManager createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v9];
  v6 = v9;

  if (v5)
  {
    v7 = [v3 stringByAppendingPathComponent:@"com.apple.persistentconnection.intervalcache.plist"];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      +[PCConnectionManager _keepAliveCachePath];
    }

    v7 = 0;
  }

  return v7;
}

- (id)_stringForStyle:(int)style
{
  v3 = @"manual";
  if (style == 1)
  {
    v3 = @"poll";
  }

  if (style)
  {
    return v3;
  }

  else
  {
    return @"push";
  }
}

- (id)_stringForAction:(int)action
{
  if (action > 6)
  {
    return @"unknown action";
  }

  else
  {
    return off_279A19F50[action];
  }
}

- (id)_stringForEvent:(int)event
{
  if ((event - 2) > 6)
  {
    return @"unknown event";
  }

  else
  {
    return off_279A19F88[event - 2];
  }
}

+ (id)stringForAddressFamily:(int)family
{
  if (family > 2)
  {
    return 0;
  }

  else
  {
    return off_279A19FC0[family];
  }
}

- (void)_initWithConnectionClass:interfaceIdentifier:guidancePriority:delegate:delegateQueue:serviceIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_initWithConnectionClass:interfaceIdentifier:guidancePriority:delegate:delegateQueue:serviceIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_validateActionForCurrentStyle:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25E3EF000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_setupTimerForPushWithKeepAliveInterval:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setupTimerForPollForAdjustment:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_takePowerAssertionWithTimeout:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__PCConnectionManager__saveWWANKeepAliveIntervalWithInfo_resetStateMachine___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_keepAliveCachePath
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end