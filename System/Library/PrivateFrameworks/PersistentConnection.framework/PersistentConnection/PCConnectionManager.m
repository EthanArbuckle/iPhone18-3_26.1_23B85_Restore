@interface PCConnectionManager
+ (Class)growthAlgorithmClass;
+ (id)_keepAliveCachePath;
+ (id)intervalCacheDictionaries;
+ (id)stringForAddressFamily:(int)a3;
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
- (id)_growthAlgorithmOnInterface:(int64_t)a3;
- (id)_initWithConnectionClass:(int)a3 interfaceIdentifier:(int64_t)a4 guidancePriority:(unint64_t)a5 delegate:(id)a6 delegateQueue:(id)a7 serviceIdentifier:(id)a8;
- (id)_stringForAction:(int)a3;
- (id)_stringForEvent:(int)a3;
- (id)_stringForStyle:(int)a3;
- (id)currentCacheDictonary;
- (int)currentAddressFamily;
- (int)currentGrowthStage;
- (int)currentStyle;
- (unint64_t)countOfGrowthActions;
- (void)_adjustInterfaceAssertions;
- (void)_adjustMinimumIntervalFallback;
- (void)_adjustPollTimerIfNecessary;
- (void)_callDelegateWithEventAndContext:(id)a3;
- (void)_clearTimersReleasingPowerAssertion:(BOOL)a3;
- (void)_delayTimerFired;
- (void)_deregisterForDeviceConditionsNotifications;
- (void)_handleDeviceConditionChangeCallback;
- (void)_intervalTimerFired;
- (void)_loadPreferencesGeneratingEvent:(BOOL)a3;
- (void)_pauseTimers;
- (void)_preferencesChanged;
- (void)_processDeviceConditionChanges;
- (void)_registerForDeviceConditionsNotifications;
- (void)_releasePowerAssertion;
- (void)_resolveStateWithAction:(int)a3;
- (void)_saveWWANKeepAliveInterval;
- (void)_saveWWANKeepAliveIntervalWithInfo:(id)a3 resetStateMachine:(BOOL)a4;
- (void)_setMaximumKeepAliveInterval:(double)a3 onInterface:(int64_t)a4;
- (void)_setMinimumKeepAliveInterval:(double)a3 onInterface:(int64_t)a4;
- (void)_setTimerGuidance:(double)a3;
- (void)_setupKeepAliveForReconnect;
- (void)_setupTimerForPollForAdjustment:(BOOL)a3;
- (void)_setupTimerForPushWithKeepAliveInterval:(double)a3;
- (void)_takePowerAssertionWithTimeout:(double)a3;
- (void)cancelPollingIntervalOverride;
- (void)carrierBundleDidChange;
- (void)dealloc;
- (void)interfaceManagerInHomeCountryStatusChanged:(id)a3;
- (void)interfaceManagerInternetReachabilityChanged:(id)a3;
- (void)interfaceManagerWWANInterfaceStatusChanged:(id)a3;
- (void)resetKeepAliveStateMachineIfNecessary;
- (void)setCurrentAddressFamily:(int)a3;
- (void)setDelegate:(id)a3;
- (void)setDisableEarlyFire:(BOOL)a3;
- (void)setDuetIdentifier:(id)a3;
- (void)setEnableNonCellularConnections:(BOOL)a3;
- (void)setKeepAliveGracePeriod:(double)a3;
- (void)setKeepAliveOverrideOnInterface:(int64_t)a3 interval:(double)a4 timeout:(double)a5;
- (void)setMaximumKeepAliveInterval:(double)a3;
- (void)setMinimumIntervalFallbackEnabled:(BOOL)a3;
- (void)setMinimumKeepAliveInterval:(double)a3;
- (void)setNonCellularEarlyFireConstantInterval:(double)a3;
- (void)setOnlyAllowedStyle:(int)a3;
- (void)setOperatorMinimumIntervalFallbackAllowed:(BOOL)a3;
- (void)setPollingIntervalOverride:(double)a3;
- (void)setServerStatsExpectedKeepAliveInterval:(double)a3;
- (void)setServerStatsMaxKeepAliveInterval:(double)a3;
- (void)setServerStatsMinKeepAliveInterval:(double)a3;
- (void)startManager;
- (void)stopAndResetManager;
- (void)stopManager;
@end

@implementation PCConnectionManager

- (double)currentKeepAliveInterval
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PCConnectionManager *)v2 _currentGrowthAlgorithm];
  [v3 currentKeepAliveInterval];
  v5 = v4;

  objc_sync_exit(v2);
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

  v6 = [(PCConnectionManager *)self persistentInterfaceManager];
  v7 = [v6 isWWANInterfaceUp];
  v8 = 112;
  if (v7)
  {
    v8 = 96;
  }

  v5 = *(&self->super.isa + 8 * self->_currentAddressFamily + v8);

LABEL_9:

  return v5;
}

- (PCKeepAliveState)currentKeepAliveState
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PCConnectionManager *)v2 _currentGrowthAlgorithm];
  v4 = [v3 growthStage];

  v5 = [(PCConnectionManager *)v2 _currentGrowthAlgorithm];
  LOBYTE(v3) = [v5 previousAction];

  v6 = [[PCKeepAliveState alloc] initWithKeepAliveState:v4 subState:v3];
  objc_sync_exit(v2);

  return v6;
}

- (void)_adjustInterfaceAssertions
{
  v3 = [(PCConnectionManager *)self persistentInterfaceManager];
  v9 = v3;
  if (!self->_intervalTimer)
  {
    goto LABEL_8;
  }

  v4 = [(PCConnectionManager *)self currentStyle];
  v5 = [v9 isWWANInterfaceUp];
  if (v4 >= 2)
  {
    v3 = v9;
LABEL_8:
    [v3 enableWiFiAutoAssociation:0 forDelegate:self];
    goto LABEL_9;
  }

  if (v5)
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
    if (!v4 && self->_enableNonCellularConnections)
    {
      goto LABEL_18;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  [v9 enableWiFiAutoAssociation:self->_interfaceIdentifier != 1 forDelegate:self];
  if (v4)
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PCConnectionManager *)v2 _currentGrowthAlgorithm];
  v4 = [v3 countOfGrowthActions];

  objc_sync_exit(v2);
  return v4;
}

- (int)currentGrowthStage
{
  v2 = [(PCConnectionManager *)self _currentGrowthAlgorithm];
  v3 = [v2 growthStage];

  return v3;
}

- (void)_adjustPollTimerIfNecessary
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(PCConnectionManager *)self currentStyle];
  v4 = [(PCPersistentTimer *)self->_intervalTimer firingIsImminent];
  v5 = v4;
  v6 = v3 == 1 && self->_isRunning && !self->_isInReconnectMode && self->_intervalTimer != 0 && !v4;
  logObject = self->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    isInReconnectMode = self->_isInReconnectMode;
    if (v3 == 1)
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

    v18 = self;
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
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_forceManualWhenRoaming && (-[PCConnectionManager persistentInterfaceManager](v2, "persistentInterfaceManager"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isWWANInHomeCountry], v3, (v4 & 1) == 0))
  {
    v7 = 2;
  }

  else
  {
    prefsStyle = v2->_prefsStyle;
    if (v2->_onlyAllowedStyleSet && (onlyAllowedStyle = v2->_onlyAllowedStyle, prefsStyle != onlyAllowedStyle))
    {
      v7 = 2;
      if (!prefsStyle && onlyAllowedStyle == 1)
      {
        [(PCConnectionManager *)v2 pollingInterval];
        if (v10 > -2.22044605e-16)
        {
          v7 = 1;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v7 = v2->_prefsStyle;
    }

    if (v2->_pollingIntervalOverrideSet && v7 == 2)
    {
      if (v2->_pollingIntervalOverride > -2.22044605e-16)
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
  objc_sync_exit(v2);

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
  v2 = self;
  objc_sync_enter(v2);
  logObject = v2->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "PCConnectionManager was stopped by client", v4, 2u);
  }

  [(PCConnectionManager *)v2 _clearTimers];
  objc_sync_exit(v2);
}

- (BOOL)isRunning
{
  v2 = self;
  objc_sync_enter(v2);
  isRunning = v2->_isRunning;
  objc_sync_exit(v2);

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

- (id)_initWithConnectionClass:(int)a3 interfaceIdentifier:(int64_t)a4 guidancePriority:(unint64_t)a5 delegate:(id)a6 delegateQueue:(id)a7 serviceIdentifier:(id)a8
{
  v78 = *MEMORY[0x277D85DE8];
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v71.receiver = self;
  v71.super_class = PCConnectionManager;
  v17 = [(PCConnectionManager *)&v71 init];
  if (!v17)
  {
    goto LABEL_16;
  }

  if (!v14)
  {
    [PCConnectionManager _initWithConnectionClass:interfaceIdentifier:guidancePriority:delegate:delegateQueue:serviceIdentifier:];
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_18:
    [PCConnectionManager _initWithConnectionClass:interfaceIdentifier:guidancePriority:delegate:delegateQueue:serviceIdentifier:];
    goto LABEL_4;
  }

  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_4:
  v18 = +[PCLog logWithCategory:](PCLog, "logWithCategory:", [v16 UTF8String]);
  v19 = *(v17 + 11);
  *(v17 + 11) = v18;

  *(v17 + 21) = 0;
  *(v17 + 7) = a4;
  *(v17 + 2) = a3;
  objc_storeWeak(v17 + 2, v14);
  v20 = [v16 copy];
  v21 = *(v17 + 3);
  *(v17 + 3) = v20;

  *(v17 + 8) = a5;
  *(v17 + 82) = 0;
  if (v15)
  {
    v22 = v15;
    v23 = *(v17 + 10);
    *(v17 + 10) = v22;
  }

  else
  {
    v24 = [MEMORY[0x277CBEB88] currentRunLoop];
    v23 = *(v17 + 9);
    *(v17 + 9) = v24;
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

  v66 = v15;
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
  v60 = [v17 persistentInterfaceManager];
  [v60 addDelegate:v17 queue:v55];

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

  v15 = v66;
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

- (void)setDelegate:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  objc_storeWeak(&obj->_delegate, v4);

  objc_sync_exit(obj);
}

- (PCConnectionManagerDelegate)delegate
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_delegate);
  objc_sync_exit(v2);

  return WeakRetained;
}

- (void)setDuetIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_duetIdentifier != v4)
  {
    logObject = v5->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      duetIdentifier = v5->_duetIdentifier;
      v11 = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = duetIdentifier;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ Changing duetIdentifier from %@ to %@", &v11, 0x20u);
    }

    v8 = [(NSString *)v4 copy];
    v9 = v5->_duetIdentifier;
    v5->_duetIdentifier = v8;
  }

  objc_sync_exit(v5);

  v10 = *MEMORY[0x277D85DE8];
}

- (NSString)duetIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSString *)v2->_duetIdentifier copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)dealloc
{
  [(PCConnectionManager *)self _clearTimers];
  v3 = [(PCConnectionManager *)self persistentInterfaceManager];
  [v3 enableWiFiAutoAssociation:0 forDelegate:self];
  [v3 enableWakeOnWiFi:0 forDelegate:self];
  [v3 removeDelegate:self];
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

- (void)_loadPreferencesGeneratingEvent:(BOOL)a3
{
  v3 = a3;
  v49 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  logObject = v4->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "_loadPreferencesGeneratingEvent", buf, 2u);
  }

  v6 = [(PCConnectionManager *)v4 currentStyle];
  defaultPollingInterval = v4->_defaultPollingInterval;
  v4->_prefsStyle = PCSettingsGetStyle(v4->_connectionClass, v4->_serviceIdentifier);
  v4->_defaultPollingInterval = PCSettingsGetPollInterval(v4->_connectionClass, v4->_serviceIdentifier);
  if (v4->_connectionClass == 1)
  {
    ForceManualWhenRoamingForMCCAccount = PCSettingsGetForceManualWhenRoamingForMCCAccount(v4->_serviceIdentifier);
    GlobalMCCForceManualWhenRoaming = PCSettingsGetGlobalMCCForceManualWhenRoaming();
    v10 = v4->_logObject;
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
      v44 = v4;
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

    v4->_forceManualWhenRoaming = (ForceManualWhenRoamingForMCCAccount | GlobalMCCForceManualWhenRoaming) != 0;
  }

  else
  {
    v4->_forceManualWhenRoaming = 0;
  }

  v13 = [(PCConnectionManager *)v4 _stringForStyle:v4->_prefsStyle];
  v14 = v4->_logObject;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v4->_defaultPollingInterval / 60.0;
    *buf = 138412546;
    v44 = v13;
    v45 = 2048;
    v46 = v15;
    _os_log_impl(&dword_25E3EF000, v14, OS_LOG_TYPE_DEFAULT, "Loaded preferences. Style is %@ and default poll interval is %g minutes.", buf, 0x16u);
  }

  if (v4->_forceManualWhenRoaming)
  {
    v16 = v4->_logObject;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E3EF000, v16, OS_LOG_TYPE_DEFAULT, "Forcing manual when roaming.", buf, 2u);
    }
  }

  v17 = +[PCCarrierBundleHelper helper];
  v18 = [v17 copyValueFromPushBundleForKey:@"PCForcedMinimumHBI" error:0];

  v19 = [v18 integerValue];
  if (v18 && v19 >= 1)
  {
    v20 = v19;
    v21 = v4->_logObject;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v44 = *&v20;
      _os_log_impl(&dword_25E3EF000, v21, OS_LOG_TYPE_DEFAULT, "Carrier bundle override for minimum HBI set. Setting minimum keep alive interval to %g seconds.", buf, 0xCu);
    }

    [(PCConnectionManager *)v4 _setMinimumKeepAliveInterval:1 onInterface:v20];
  }

  v22 = +[PCCarrierBundleHelper helper];
  v23 = [v22 copyValueFromPushBundleForKey:@"PCForcedMaximumHBI" error:0];

  v24 = [v23 integerValue];
  if (v23 && v24 >= 1)
  {
    v25 = v24;
    v26 = v4->_logObject;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v44 = *&v25;
      _os_log_impl(&dword_25E3EF000, v26, OS_LOG_TYPE_DEFAULT, "Carrier bundle override for maximum HBI set. Setting maximum keep alive interval to %g seconds.", buf, 0xCu);
    }

    [(PCConnectionManager *)v4 _setMaximumKeepAliveInterval:1 onInterface:v25];
  }

  v27 = +[PCCarrierBundleHelper helper];
  v28 = [v27 copyValueFromPushBundleForKey:@"PCAllowMinimumIntervalFallback" error:0];

  v29 = [v28 BOOLValue];
  if (v28)
  {
    v30 = v29;
    v31 = v4->_logObject;
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

    [(PCConnectionManager *)v4 setOperatorMinimumIntervalFallbackAllowed:v30];
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PCForceDemoMaxHBI", @"com.apple.persistentconnection", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && AppIntegerValue >= 1)
  {
    v34 = AppIntegerValue;
    v35 = v4->_logObject;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = @"PCForceDemoMaxHBI";
      v45 = 2048;
      v46 = v34;
      _os_log_impl(&dword_25E3EF000, v35, OS_LOG_TYPE_DEFAULT, "%@ set. Setting maximum keep alive interval to %g seconds for demo mode.", buf, 0x16u);
    }

    [(PCConnectionManager *)v4 setMaximumKeepAliveInterval:v34];
  }

  v36 = CFPreferencesGetAppIntegerValue(@"PCForceMinHBI", @"com.apple.persistentconnection", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && v36 >= 1)
  {
    v37 = v36;
    v38 = v4->_logObject;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v44 = @"PCForceMinHBI";
      v45 = 2048;
      v46 = v37;
      _os_log_impl(&dword_25E3EF000, v38, OS_LOG_TYPE_DEFAULT, "%@ set. Setting minimum keep alive interval to %g seconds for demo mode.", buf, 0x16u);
    }

    [(PCConnectionManager *)v4 setMinimumKeepAliveInterval:v37];
  }

  [(PCConnectionManager *)v4 _adjustInterfaceAssertions];
  v39 = (!v4->_pollingIntervalOverrideSet || fabs(v4->_pollingIntervalOverride) >= 2.22044605e-16) && fabs(v4->_defaultPollingInterval) >= 2.22044605e-16;
  if ([(PCConnectionManager *)v4 currentStyle]!= 1 || v39)
  {
    [(PCConnectionManager *)v4 _deregisterForDeviceConditionsNotifications];
  }

  else
  {
    [(PCConnectionManager *)v4 _registerForDeviceConditionsNotifications];
  }

  if (v4->_isRunning && v3)
  {
    if (v6 != [(PCConnectionManager *)v4 currentStyle])
    {
      [(PCConnectionManager *)v4 _clearTimers];
      v40 = 5;
      goto LABEL_60;
    }

    if (v6 == 1 && !v4->_isInReconnectMode && defaultPollingInterval != v4->_defaultPollingInterval && !v4->_pollingIntervalOverrideSet)
    {
      [(PCConnectionManager *)v4 _clearTimers];
      v40 = 3;
LABEL_60:
      [(PCConnectionManager *)v4 _calloutWithEvent:v40 context:0];
    }
  }

  objc_sync_exit(v4);
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
      v25 = self;
      v26 = 2113;
      v27 = duetContextRegistration;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ is already registered for contextual change notifications, {Registration: %{private}@}", buf, 0x16u);
    }
  }

  v5 = CUTWeakLinkClass();
  v6 = CUTWeakLinkClass();
  v7 = CUTWeakLinkClass();
  v8 = CUTWeakLinkClass();
  v9 = [v5 userContext];
  v10 = [MEMORY[0x277CBEB18] array];
  if (v10)
  {
    v11 = [v6 keyPathForWiFiConnectionQuality];

    if (v11)
    {
      v12 = [v6 keyPathForWiFiConnectionQuality];
      CFArrayAppendValue(v10, v12);
    }

    v13 = [v6 keyPathForThermalPressureLevel];

    if (v13)
    {
      v14 = [v6 keyPathForThermalPressureLevel];
      CFArrayAppendValue(v10, v14);
    }

    v15 = [v6 keyPathForPluginStatus];

    if (v15)
    {
      v16 = [v6 keyPathForPluginStatus];
      CFArrayAppendValue(v10, v16);
    }

    v17 = [v6 keyPathForEnergyBudgetRemainingStatus];

    if (v17)
    {
      v18 = [v6 keyPathForEnergyBudgetRemainingStatus];
      CFArrayAppendValue(v10, v18);
    }
  }

  v19 = [v7 predicateForChangeAtKeyPaths:v10];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__PCConnectionManager__registerForDeviceConditionsNotifications__block_invoke;
  v23[3] = &unk_279A19F08;
  v23[4] = self;
  v20 = [v8 localNonWakingRegistrationWithIdentifier:@"com.apple.pc.automatictimer.goodconditions" contextualPredicate:v19 callback:v23];
  v21 = self->_duetContextRegistration;
  self->_duetContextRegistration = v20;

  [v9 registerCallback:self->_duetContextRegistration];
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
      v11 = self;
      v12 = 2113;
      v13 = duetContextRegistration;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ request to deregister contextual change notifications {Registration: %{private}@}", &v10, 0x16u);
    }

    v5 = CUTWeakLinkClass();
    CUTWeakLinkClass();
    v6 = [v5 userContext];
    v7 = self->_duetContextRegistration;
    if (objc_opt_isKindOfClass())
    {
      [v6 deregisterCallback:self->_duetContextRegistration];
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
  v5 = [v3 userContext];
  v6 = [v4 keyPathForThermalPressureLevel];
  v7 = [v5 objectForKeyedSubscript:v6];
  LOBYTE(v3) = [v7 BOOLValue];

  v8 = [v4 keyPathForWiFiConnectionQuality];
  v9 = [v5 objectForKeyedSubscript:v8];
  v10 = [v9 integerValue];

  v11 = [v4 keyPathForPluginStatus];
  v12 = [v5 objectForKeyedSubscript:v11];
  v13 = [v12 BOOLValue];

  v14 = (v10 > 49) & ~v3 & v13;
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
      v18 = [v4 keyPathForThermalPressureLevel];
      v19 = [v5 objectForKeyedSubscript:v18];
      v20 = [v4 keyPathForWiFiConnectionQuality];
      v21 = [v5 objectForKeyedSubscript:v20];
      v22 = [v4 keyPathForPluginStatus];
      v23 = [v5 objectForKeyedSubscript:v22];
      v25 = 138413314;
      v26 = self;
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
  v2 = [(PCConnectionManager *)obj currentStyle];
  v3 = (!obj->_pollingIntervalOverrideSet || fabs(obj->_pollingIntervalOverride) >= 2.22044605e-16) && fabs(obj->_defaultPollingInterval) >= 2.22044605e-16;
  if (v2 == 1 && !v3)
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

- (void)setOnlyAllowedStyle:(int)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_onlyAllowedStyle = a3;
  obj->_onlyAllowedStyleSet = 1;
  [(PCConnectionManager *)obj _adjustInterfaceAssertions];
  objc_sync_exit(obj);
}

- (id)_growthAlgorithmOnInterface:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v5 = self->_wifiGrowthAlgorithm[self->_currentAddressFamily];
    goto LABEL_5;
  }

  if (a3 == 1)
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
    v11 = self;
    v12 = 2048;
    v13 = a3;
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

- (void)_resolveStateWithAction:(int)a3
{
  if (a3 >= 5)
  {
    if ((a3 - 5) <= 1)
    {
      v3 = 1;
      if (self->_isInReconnectMode)
      {
        v3 = self->_reconnectIteration + 1;
      }

      self->_isInReconnectMode = 1;
      self->_reconnectIteration = v3;
      self->_reconnectWithKeepAliveDelay = a3 == 6;
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
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_interfaceIdentifier)
  {
    v3 = 0;
    wwanGrowthAlgorithm = v2->_wwanGrowthAlgorithm;
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = [(PCConnectionManager *)v2 _getCachedWWANKeepAliveIntervalForAddressFamily:v3];
      v8 = MEMORY[0x277CCACA8];
      serviceIdentifier = v2->_serviceIdentifier;
      v10 = [PCConnectionManager stringForAddressFamily:v3];
      v11 = [v8 stringWithFormat:@"%@-%@", serviceIdentifier, v10];

      v12 = MEMORY[0x277CCACA8];
      v13 = [PCConnectionManager stringForAddressFamily:v3];
      v14 = [v12 stringWithFormat:@"WWAN growth algorithm-%@", v13];

      logObject = v2->_logObject;
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

  objc_sync_exit(v2);

  v18 = *MEMORY[0x277D85DE8];
}

- (double)minimumKeepAliveInterval
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PCConnectionManager *)v2 _currentGrowthAlgorithm];
  [v3 minimumKeepAliveInterval];
  v5 = v4;

  objc_sync_exit(v2);
  return v5;
}

- (void)setMinimumKeepAliveInterval:(double)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  logObject = v4->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Setting minimum keep alive interval to %g", &v10, 0xCu);
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    [(PCGrowthAlgorithm *)v4->_wwanGrowthAlgorithm[v6] setMinimumKeepAliveInterval:a3];
    [(PCGrowthAlgorithm *)v4->_wifiGrowthAlgorithm[v6] setMinimumKeepAliveInterval:a3];
    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  objc_sync_exit(v4);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setMinimumKeepAliveInterval:(double)a3 onInterface:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  v7 = v6->_logObject;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(PCConnectionManager *)v6 _growthAlgorithmOnInterface:a4];
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&dword_25E3EF000, v7, OS_LOG_TYPE_DEFAULT, "%@ Setting minimum keep alive interval for %@ to %g", &v11, 0x20u);
  }

  v9 = [(PCConnectionManager *)v6 _growthAlgorithmOnInterface:a4];
  [v9 setMinimumKeepAliveInterval:a3];

  objc_sync_exit(v6);
  v10 = *MEMORY[0x277D85DE8];
}

- (double)maximumKeepAliveInterval
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PCConnectionManager *)v2 _currentGrowthAlgorithm];
  [v3 maximumKeepAliveInterval];
  v5 = v4;

  objc_sync_exit(v2);
  return v5;
}

- (void)setMaximumKeepAliveInterval:(double)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  logObject = v4->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Setting maximum keep alive interval to %g", &v10, 0xCu);
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    [(PCGrowthAlgorithm *)v4->_wwanGrowthAlgorithm[v6] setMaximumKeepAliveInterval:a3];
    [(PCGrowthAlgorithm *)v4->_wifiGrowthAlgorithm[v6] setMaximumKeepAliveInterval:a3];
    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  objc_sync_exit(v4);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setMaximumKeepAliveInterval:(double)a3 onInterface:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  logObject = v6->_logObject;
  v8 = os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT);
  if (a4 < 2)
  {
    if (v8)
    {
      v15 = 138412802;
      v16 = v6;
      v17 = 2048;
      v18 = a4;
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ Setting maximum keep alive interval for %lu to %g", &v15, 0x20u);
    }

    v9 = 0;
    v10 = 112;
    if (a4 == 1)
    {
      v10 = 96;
    }

    v11 = v6 + v10;
    v12 = 1;
    do
    {
      v13 = v12;
      [*&v11[8 * v9] setMaximumKeepAliveInterval:a3];
      v12 = 0;
      v9 = 1;
    }

    while ((v13 & 1) != 0);
  }

  else if (v8)
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ Asked to set maximum keep alive interval on invalid interface %ld", &v15, 0x16u);
  }

  objc_sync_exit(v6);

  v14 = *MEMORY[0x277D85DE8];
}

- (double)serverStatsMaxKeepAliveInterval
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PCConnectionManager *)v2 _growthAlgorithmOnInterface:1];
  [v3 serverStatsMaxKeepAliveInterval];
  v5 = v4;

  objc_sync_exit(v2);
  return v5;
}

- (double)serverStatsMinKeepAliveInterval
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PCConnectionManager *)v2 _growthAlgorithmOnInterface:1];
  [v3 serverStatsMinKeepAliveInterval];
  v5 = v4;

  objc_sync_exit(v2);
  return v5;
}

- (double)serverStatsExpectedKeepAliveInterval
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PCConnectionManager *)v2 _growthAlgorithmOnInterface:1];
  [v3 serverStatsExpectedKeepAliveInterval];
  v5 = v4;

  objc_sync_exit(v2);
  return v5;
}

- (BOOL)usingServerStatsAggressively
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PCConnectionManager *)v2 _growthAlgorithmOnInterface:1];
  v4 = [v3 usingServerStatsAggressively];

  objc_sync_exit(v2);
  return v4;
}

- (void)setServerStatsMaxKeepAliveInterval:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->_logObject;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PCConnectionManager *)v4 _growthAlgorithmOnInterface:1];
    v9 = 138412802;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Setting server stats max keep alive interval for %@ to %g", &v9, 0x20u);
  }

  v7 = [(PCConnectionManager *)v4 _growthAlgorithmOnInterface:1];
  [v7 setServerStatsMaxKeepAliveInterval:a3];

  objc_sync_exit(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setServerStatsMinKeepAliveInterval:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->_logObject;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PCConnectionManager *)v4 _growthAlgorithmOnInterface:1];
    v9 = 138412802;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Setting server stats min keep alive interval for %@ to %g", &v9, 0x20u);
  }

  v7 = [(PCConnectionManager *)v4 _growthAlgorithmOnInterface:1];
  [v7 setServerStatsMinKeepAliveInterval:a3];

  objc_sync_exit(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setServerStatsExpectedKeepAliveInterval:(double)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->_logObject;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PCConnectionManager *)v4 _growthAlgorithmOnInterface:1];
    v9 = 138412802;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_25E3EF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Setting server stats expected keep alive interval for %@ to %g", &v9, 0x20u);
  }

  v7 = [(PCConnectionManager *)v4 _growthAlgorithmOnInterface:1];
  [v7 setServerStatsExpectedKeepAliveInterval:a3];

  objc_sync_exit(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setKeepAliveGracePeriod:(double)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (a3 > 2.22044605e-16)
  {
    v5 = PCScheduledWakeRTCPrecision() * 2.0 + 5.0;
    if (a3 + 5.0 >= v5)
    {
      a3 = a3 + 5.0;
    }

    else
    {
      a3 = v5;
    }
  }

  logObject = v4->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Setting keep alive grace period to %g", &v9, 0xCu);
  }

  v4->_keepAliveGracePeriod = a3;
  v7 = [(PCConnectionManager *)v4 _currentGrowthAlgorithm];
  [v7 setIsServerOriginatedKeepAlive:a3 > 2.22044605e-16];

  objc_sync_exit(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setKeepAliveOverrideOnInterface:(int64_t)a3 interval:(double)a4 timeout:(double)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = self;
  objc_sync_enter(v8);
  if (v8->_interfaceIdentifier == a3)
  {
    v9 = [(PCConnectionManager *)v8 _growthAlgorithmOnInterface:a3];
    [v9 minimumKeepAliveInterval];
    v11 = v10;

    v20 = 0;
    v21[0] = 0;
    v12 = 112;
    if (a3 == 1)
    {
      v12 = 96;
      v13 = 104;
    }

    else
    {
      v13 = 120;
    }

    v20 = *(&v8->super.isa + v12);
    v21[0] = *(&v8->super.isa + v13);
    v14 = &v20;
    v15 = 1;
    do
    {
      v16 = v15;
      v17 = *v14;
      [*v14 setMinimumKeepAliveInterval:a4];
      [v17 setMaximumKeepAliveInterval:v11];
      [v17 setLastSuccessfulKeepAliveInterval:a4];
      [v17 setMinimumIntervalFallbackStateTimeout:a5];
      [v17 setMinimumIntervalFallbackEnabled:1];
      v15 = 0;
      v14 = v21;
    }

    while ((v16 & 1) != 0);
    v8->_minimumIntervalFallbackEnabled = 1;
    [(PCConnectionManager *)v8 resumeManagerWithAction:3 forceGrow:0];
    [(PCConnectionManager *)v8 resumeManagerWithAction:1 forceGrow:0];
    for (i = 1; i != -1; --i)
    {
    }
  }

  objc_sync_exit(v8);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setNonCellularEarlyFireConstantInterval:(double)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  logObject = v4->_logObject;
  if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Setting NonCellular early fire constant interval to %g", &v7, 0xCu);
  }

  v4->_nonCellularEarlyFireConstantInterval = a3;
  objc_sync_exit(v4);

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
  v2 = self;
  objc_sync_enter(v2);
  defaultPollingInterval = v2->_defaultPollingInterval;
  pollingIntervalOverride = v2->_pollingIntervalOverride;
  if (fabs(pollingIntervalOverride) < 2.22044605e-16 && v2->_deviceUnderGoodCondition)
  {
    pollingIntervalOverride = 3600.0;
  }

  if (fabs(defaultPollingInterval) < 2.22044605e-16 && v2->_deviceUnderGoodCondition)
  {
    defaultPollingInterval = 3600.0;
  }

  if (!v2->_pollingIntervalOverrideSet)
  {
    if (defaultPollingInterval < 2.22044605e-16)
    {
      goto LABEL_13;
    }

    v5 = [PCInterfaceMonitor sharedInstanceForIdentifier:0];
    if ([v5 isInterfaceHistoricallyUsable])
    {
      v6 = 1;
    }

    else
    {
      v7 = [PCInterfaceMonitor sharedInstanceForIdentifier:1];
      v6 = [v7 isInterfaceHistoricallyUsable];
    }

    if ([(PCConnectionManager *)v2 _isPushConnected]& v6)
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
        v10 = [v9 isBadLinkQuality];

        if (v10)
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

        v10 = 0;
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

      v12 = v2->_logObject;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(PCConnectionManager *)v2 _isPushConnected];
        v14 = @"NO";
        v19 = 138413314;
        if (v13)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        v20 = v15;
        v21 = 2112;
        if (v6)
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        v22 = v16;
        v23 = 2112;
        if (v10)
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

  objc_sync_exit(v2);

  v17 = *MEMORY[0x277D85DE8];
  return pollingIntervalOverride;
}

- (void)setPollingIntervalOverride:(double)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (!v4->_pollingIntervalOverrideSet || v4->_pollingIntervalOverride != a3)
  {
    logObject = v4->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = a3;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Setting polling interval override to %g", &v7, 0xCu);
    }

    v4->_pollingIntervalOverride = a3;
    v4->_pollingIntervalOverrideSet = 1;
  }

  objc_sync_exit(v4);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancelPollingIntervalOverride
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_pollingIntervalOverrideSet)
  {
    logObject = v2->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Cacnceling polling interval override", v4, 2u);
    }

    v2->_pollingIntervalOverrideSet = 0;
  }

  objc_sync_exit(v2);
}

- (BOOL)shouldClientScheduleReconnectDueToFailure
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  Current = CFAbsoluteTimeGetCurrent();
  lastReachableTime = v2->_lastReachableTime;
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
    if (v2->_isInReconnectMode)
    {
      logObject = v2->_logObject;
      if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Advising client to enter reconnect mode in response to a connection failure since currently in reconnect mode", &v22, 2u);
      }

      LOBYTE(v6) = 1;
    }

    else
    {
      lastResumeTime = v2->_lastResumeTime;
      if ([(PCConnectionManager *)v2 currentStyle])
      {
        [(PCConnectionManager *)v2 pollingInterval];
        v12 = v11;
      }

      else
      {
        v13 = [(PCConnectionManager *)v2 _currentGrowthAlgorithm];
        [v13 minimumKeepAliveInterval];
        v12 = v14;
      }

      v15 = Current - lastResumeTime;
      v16 = fabs(v12);
      v17 = v15 < v12 + v2->_keepAliveGracePeriod + 15.0;
      if (v15 <= 2.22044605e-16)
      {
        v17 = 0;
      }

      if (v16 < 2.22044605e-16)
      {
        v17 = 1;
      }

      LODWORD(v6) = !v2->_hasStarted || v17;
      v18 = v2->_logObject;
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
    v6 = v2->_logObject;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v2->_lastReachableTime];
      v8 = PCStringFromDate(v7);
      v22 = 138412290;
      v23 = v8;
      _os_log_impl(&dword_25E3EF000, v6, OS_LOG_TYPE_DEFAULT, "Advising client to not enter reconnect mode since the network just became reachable at %@", &v22, 0xCu);
    }

    LOBYTE(v6) = 0;
    v2->_lastReachableTime = 0.0;
  }

  objc_sync_exit(v2);

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setEnableNonCellularConnections:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_enableNonCellularConnections != v3)
  {
    logObject = v4->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@: enableNonCellularConnections changed to %@", &v8, 0x16u);
    }

    v4->_enableNonCellularConnections = v3;
    [(PCConnectionManager *)v4 _adjustInterfaceAssertions];
  }

  objc_sync_exit(v4);

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)disableEarlyFire
{
  v2 = self;
  objc_sync_enter(v2);
  disableEarlyFire = v2->_disableEarlyFire;
  objc_sync_exit(v2);

  return disableEarlyFire;
}

- (void)setDisableEarlyFire:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_disableEarlyFire = a3;
  objc_sync_exit(obj);
}

- (BOOL)minimumIntervalFallbackEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  minimumIntervalFallbackEnabled = v2->_minimumIntervalFallbackEnabled;
  objc_sync_exit(v2);

  return minimumIntervalFallbackEnabled;
}

- (void)setMinimumIntervalFallbackEnabled:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_minimumIntervalFallbackEnabled = a3;
  [(PCConnectionManager *)obj _adjustMinimumIntervalFallback];
  objc_sync_exit(obj);
}

- (BOOL)operatorMinimumIntervalFallbackAllowed
{
  v2 = self;
  objc_sync_enter(v2);
  operatorMinimumIntervalFallbackAllowed = v2->_operatorMinimumIntervalFallbackAllowed;
  objc_sync_exit(v2);

  return operatorMinimumIntervalFallbackAllowed;
}

- (void)setOperatorMinimumIntervalFallbackAllowed:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_operatorMinimumIntervalFallbackAllowed = a3;
  [(PCConnectionManager *)obj _adjustMinimumIntervalFallback];
  objc_sync_exit(obj);
}

- (void)_adjustMinimumIntervalFallback
{
  v3 = self->_minimumIntervalFallbackEnabled && self->_operatorMinimumIntervalFallbackAllowed;
  interfaceIdentifier = self->_interfaceIdentifier;
  if (interfaceIdentifier == 1)
  {
    v5 = [(PCConnectionManager *)self _currentGrowthAlgorithm];
    [v5 setMinimumIntervalFallbackEnabled:v3];

    interfaceIdentifier = self->_interfaceIdentifier;
  }

  if (!interfaceIdentifier)
  {
    v6 = [(PCConnectionManager *)self _currentGrowthAlgorithm];
    [v6 setMinimumIntervalFallbackEnabled:self->_minimumIntervalFallbackEnabled];
  }
}

- (void)setCurrentAddressFamily:(int)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_currentAddressFamily = a3;
  objc_sync_exit(obj);
}

- (int)currentAddressFamily
{
  v2 = self;
  objc_sync_enter(v2);
  currentAddressFamily = v2->_currentAddressFamily;
  objc_sync_exit(v2);

  return currentAddressFamily;
}

- (void)_setupTimerForPushWithKeepAliveInterval:(double)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (*&self->_intervalTimer != 0 || self->_delayTimer)
  {
    [PCConnectionManager _setupTimerForPushWithKeepAliveInterval:];
  }

  self->_onTimeKeepAliveTime = CFAbsoluteTimeGetCurrent() + a3;
  v5 = [(PCConnectionManager *)self _currentGrowthAlgorithm];
  lastScheduledGrowthAlgorithm = self->_lastScheduledGrowthAlgorithm;
  self->_lastScheduledGrowthAlgorithm = v5;

  v7 = [[PCPersistentTimer alloc] initWithTimeInterval:self->_serviceIdentifier serviceIdentifier:self->_guidancePriority guidancePriority:self target:sel__intervalTimerFired selector:0 userInfo:self->_keepAliveGracePeriod + a3];
  intervalTimer = self->_intervalTimer;
  self->_intervalTimer = v7;

  if (self->_disableEarlyFire)
  {
    logObject = self->_logObject;
    if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = self;
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
      v20 = self;
      v21 = 2048;
      v22 = nonCellularEarlyFireConstantInterval;
      _os_log_impl(&dword_25E3EF000, v10, OS_LOG_TYPE_DEFAULT, "%@ - setting early fire constant interval to %f!", &v19, 0x16u);
    }

    [(PCPersistentTimer *)self->_intervalTimer setEarlyFireConstantInterval:self->_nonCellularEarlyFireConstantInterval];
  }

  v12 = [(PCConnectionManager *)self persistentInterfaceManager];
  if (([v12 doesWWANInterfaceExist] & 1) == 0 && (objc_msgSend(v12, "isWakeOnWiFiSupported") & 1) == 0)
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
  v17 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(PCPersistentTimer *)v16 scheduleInRunLoop:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_setupTimerForPollForAdjustment:(BOOL)a3
{
  v3 = a3;
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
      v82 = self;
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
      v82 = self;
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
      if (v3)
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
        if (v3)
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
        v82 = self;
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
          v82 = self;
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
              v82 = self;
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
        v82 = self;
        v83 = 2048;
        v84 = v6;
        _os_log_impl(&dword_25E3EF000, v66, OS_LOG_TYPE_DEFAULT, "%@ using nextPollInterval = %f.", buf, 0x16u);
      }

      goto LABEL_77;
    }

    v31 = self->_logObject;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
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
      v82 = self;
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

    if (v3)
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
      v82 = self;
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
      v82 = self;
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

  v69 = [(PCConnectionManager *)self persistentInterfaceManager];
  v70 = [v69 areAllNetworkInterfacesDisabled];

  if (v70)
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
  v74 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(PCPersistentTimer *)v73 scheduleInRunLoop:v74];

  self->_lastStartTime = CFAbsoluteTimeGetCurrent();
LABEL_82:
  v75 = *MEMORY[0x277D85DE8];
}

- (void)_setupKeepAliveForReconnect
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (BOOL)_hasBudgetRemaining
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_duetIdentifier)
  {
    v3 = [CUTWeakLinkClass() sharedInstance];
    v4 = [v3 allowsDiscretionaryWorkForTask:self->_duetIdentifier withPriority:*CUTWeakLinkSymbol() withParameters:0];
    if ((v4 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      duetIdentifier = self->_duetIdentifier;
      v10 = 138412546;
      v11 = self;
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
      v11 = self;
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
  v3 = self;
  objc_sync_enter(v3);
  if (v3->_intervalTimer)
  {
    if (v3->_delayTimer)
    {
      v29 = [MEMORY[0x277CCA890] currentHandler];
      [v29 handleFailureInMethod:a2 object:v3 file:@"PCConnectionManager.m" lineNumber:1427 description:@"delay timer already exists"];
    }

    [(PCConnectionManager *)v3 _takePowerAssertionWithTimeout:30.0];
    [(PCPersistentTimer *)v3->_intervalTimer invalidate];
    intervalTimer = v3->_intervalTimer;
    v3->_intervalTimer = 0;

    [(PCPersistentTimer *)v3->_reconnectWakeTimer invalidate];
    reconnectWakeTimer = v3->_reconnectWakeTimer;
    v3->_reconnectWakeTimer = 0;

    if ([(PCConnectionManager *)v3 _hasBudgetRemaining])
    {
      v6 = [(PCConnectionManager *)v3 persistentInterfaceManager];
      if (-[PCConnectionManager currentStyle](v3, "currentStyle") != 1 && (([v6 isWWANInterfaceUp] & 1) != 0 || (objc_msgSend(v6, "isWakeOnWiFiSupported") & 1) != 0))
      {
        v21 = v3->_logObject;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v6 isWWANInterfaceUp];
          v23 = [v6 isWakeOnWiFiSupported];
          v24 = @"NO";
          if (v22)
          {
            v25 = @"YES";
          }

          else
          {
            v25 = @"NO";
          }

          if (v23)
          {
            v24 = @"YES";
          }

          v30 = 138412546;
          v31 = *&v25;
          v32 = 2112;
          v33 = v24;
          _os_log_impl(&dword_25E3EF000, v21, OS_LOG_TYPE_DEFAULT, "Timer fired. Delay is 0 so scheduling notification immediately. isWWANInterfaceUp %@, isWoWSupported %@", &v30, 0x16u);
        }

        v26 = [MEMORY[0x277CBEB88] mainRunLoop];
        v27 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CBE738]];
        [v26 performSelector:sel__delayTimerFired target:v3 argument:0 order:0 modes:v27];

        v8 = [MEMORY[0x277CBEB88] mainRunLoop];
        CFRunLoopWakeUp([v8 getCFRunLoop]);
      }

      else
      {
        v7 = [(PCConnectionManager *)v3 persistentInterfaceManager];
        [v7 enableWiFiAutoAssociation:1 forDelegate:v3];

        v8 = +[PCPersistentTimer lastSystemWakeDate];
        [v8 timeIntervalSinceNow];
        v10 = v9 + 10.0;
        if (v10 >= 1.0)
        {
          v11 = v10;
        }

        else
        {
          v11 = 1.0;
        }

        v12 = v3->_logObject;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = PCStringFromDate(v8);
          v30 = 134218242;
          v31 = v11;
          v32 = 2112;
          v33 = v13;
          _os_log_impl(&dword_25E3EF000, v12, OS_LOG_TYPE_DEFAULT, "Timer fired. Delaying notification %g seconds. Last system wake: %@", &v30, 0x16u);
        }

        v14 = [[PCPersistentTimer alloc] initWithTimeInterval:v3->_serviceIdentifier serviceIdentifier:v3 target:sel__delayTimerFired selector:0 userInfo:v11];
        delayTimer = v3->_delayTimer;
        v3->_delayTimer = v14;

        [(PCPersistentTimer *)v3->_delayTimer setDisableSystemWaking:1];
        [(PCPersistentTimer *)v3->_delayTimer setMinimumEarlyFireProportion:1.0];
        v16 = v3->_delayTimer;
        v17 = [MEMORY[0x277CBEB88] mainRunLoop];
        [(PCPersistentTimer *)v16 scheduleInRunLoop:v17];
      }
    }

    else
    {
      logObject = v3->_logObject;
      if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
      {
        serviceIdentifier = v3->_serviceIdentifier;
        v30 = 138412546;
        v31 = *&v3;
        v32 = 2112;
        v33 = serviceIdentifier;
        _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "%@ (%@) does not have budget to perform callout, bailing and starting next timer interval.", &v30, 0x16u);
      }

      [(PCConnectionManager *)v3 _releasePowerAssertion];
      [(PCConnectionManager *)v3 startManager];
    }
  }

  else
  {
    v18 = v3->_logObject;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_25E3EF000, v18, OS_LOG_TYPE_DEFAULT, "_intervalTimer was already invalidated, no need to perform callback", &v30, 2u);
    }
  }

  objc_sync_exit(v3);

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
    v3 = [(PCConnectionManager *)obj currentStyle];
    if (v3 >= 3)
    {
      v2 = 0xFFFFFFFFLL;
    }

    else
    {
      v2 = dword_25E416320[v3];
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

- (void)_callDelegateWithEventAndContext:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  WeakRetained = objc_loadWeakRetained(&v5->_delegate);
  objc_sync_exit(v5);

  v7 = [v4 objectForKey:@"PCEvent"];
  v8 = [v7 intValue];

  v9 = [v4 objectForKey:@"PCEventContext"];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained connectionManager:v5 handleEvent:v8];
  }

  else if (objc_opt_respondsToSelector())
  {
    [WeakRetained connectionManager:v5 handleEvent:v8 context:v9];
  }

  v10 = v5;
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

- (void)_clearTimersReleasingPowerAssertion:(BOOL)a3
{
  v3 = a3;
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
  if (v3)
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

- (void)_setTimerGuidance:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_timerGuidance = a3;
  [(PCConnectionManager *)obj _adjustPollTimerIfNecessary];
  objc_sync_exit(obj);
}

- (void)interfaceManagerWWANInterfaceStatusChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_interfaceIdentifier == 1)
  {
    [(PCConnectionManager *)v5 _adjustInterfaceAssertions];
    v6 = [v4 isWWANInterfaceUp];
    if (v5->_alwaysWantsInterfaceChangeCallbacks || v5->_isRunning && !v5->_delayTimer)
    {
      v5->_isReachable = [v4 isInternetReachable];
      if (v5->_isInReconnectMode && ((v5->_intervalTimer != 0) & v6) == 1)
      {
        logObject = v5->_logObject;
        if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Persistent interface went up while in reconnect mode. Firing reconnect timer.", v9, 2u);
        }

        [(PCConnectionManager *)v5 _intervalTimerFired];
      }

      else if (![(PCConnectionManager *)v5 currentStyle])
      {
        if (v6)
        {
          v8 = 7;
        }

        else
        {
          v8 = 8;
        }

        [(PCConnectionManager *)v5 _calloutWithEvent:v8 context:0];
      }
    }
  }

  objc_sync_exit(v5);
}

- (void)interfaceManagerInHomeCountryStatusChanged:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(PCConnectionManager *)v4 _loadPreferencesGeneratingEvent:1];
  objc_sync_exit(v4);
}

- (void)interfaceManagerInternetReachabilityChanged:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(PCConnectionManager *)v5 _adjustInterfaceAssertions];
  isReachable = v5->_isReachable;
  v7 = [v4 isInternetReachable];
  v5->_isReachable = v7;
  if (v7)
  {
    v5->_lastReachableTime = CFAbsoluteTimeGetCurrent();
  }

  v8 = v5->_logObject;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isRunning = v5->_isRunning;
    delayTimer = v5->_delayTimer;
    v11 = v5->_isReachable;
    v12 = [(PCConnectionManager *)v5 currentStyle];
    v13 = @"NO";
    *v20 = 138413826;
    *&v20[4] = v5;
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
    *&v20[14] = v4;
    *&v20[22] = 2112;
    v21 = v16;
    if (!v12)
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

  if (v5->_alwaysWantsInterfaceChangeCallbacks || v5->_isRunning && !v5->_delayTimer)
  {
    if (!v5->_isInReconnectMode || !v5->_intervalTimer || ((v7 ^ 1) & 1) != 0 || isReachable)
    {
      if (![(PCConnectionManager *)v5 currentStyle:*v20]&& (v7 & isReachable & 1) == 0)
      {
        if (v7)
        {
          v18 = 7;
        }

        else
        {
          v18 = 8;
        }

        [(PCConnectionManager *)v5 _calloutWithEvent:v18 context:0];
      }
    }

    else
    {
      logObject = v5->_logObject;
      if (os_log_type_enabled(logObject, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_25E3EF000, logObject, OS_LOG_TYPE_DEFAULT, "Network went reachable while in reconnect mode. Firing reconnect timer.", v20, 2u);
      }

      [(PCConnectionManager *)v5 _intervalTimerFired:*v20];
    }
  }

  objc_sync_exit(v5);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_takePowerAssertionWithTimeout:(double)a3
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

    v9 = IOPMAssertionCreateWithDescription(@"NoIdleSleepAssertion", v8, @"Staying awake during callout to clients", 0, 0, a3, @"TimeoutActionTurnOff", p_powerAssertionID);
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
  v2 = [(PCGrowthAlgorithm *)obj->_wwanGrowthAlgorithm[obj->_currentAddressFamily] cacheInfo];
  [(PCConnectionManager *)obj _saveWWANKeepAliveIntervalWithInfo:v2 resetStateMachine:0];

  objc_sync_exit(obj);
}

- (void)_saveWWANKeepAliveIntervalWithInfo:(id)a3 resetStateMachine:(BOOL)a4
{
  v6 = a3;
  if (self->_wwanGrowthAlgorithm[self->_currentAddressFamily])
  {
    if (_saveWWANKeepAliveIntervalWithInfo_resetStateMachine__pred != -1)
    {
      [PCConnectionManager _saveWWANKeepAliveIntervalWithInfo:resetStateMachine:];
    }

    v7 = self->_serviceIdentifier;
    v8 = [PCConnectionManager stringForAddressFamily:self->_currentAddressFamily];
    if (v6)
    {
      v9 = [v6 mutableCopy];
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
      v21 = a4;
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
  v33 = a1;
  v4 = [a1 _keepAliveCachePath];
  v5 = [v3 initWithContentsOfFile:v4];

  v6 = 0x277CBE000uLL;
  v31 = [MEMORY[0x277CBEB38] dictionary];
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
        v32 = [*(v6 + 2872) dictionary];
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
                      if ([v33 _isCachedKeepAliveIntervalStillValid:v22 date:?])
                      {
                        [v32 setObject:v20 forKey:v19];
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

        [v31 setObject:v32 forKey:v12];

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v9);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)currentCacheDictonary
{
  v3 = [objc_opt_class() intervalCacheDictionaries];
  v4 = [v3 objectForKeyedSubscript:self->_serviceIdentifier];

  return v4;
}

+ (id)_keepAliveCachePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v9];
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

- (id)_stringForStyle:(int)a3
{
  v3 = @"manual";
  if (a3 == 1)
  {
    v3 = @"poll";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"push";
  }
}

- (id)_stringForAction:(int)a3
{
  if (a3 > 6)
  {
    return @"unknown action";
  }

  else
  {
    return off_279A19F50[a3];
  }
}

- (id)_stringForEvent:(int)a3
{
  if ((a3 - 2) > 6)
  {
    return @"unknown event";
  }

  else
  {
    return off_279A19F88[a3 - 2];
  }
}

+ (id)stringForAddressFamily:(int)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_279A19FC0[a3];
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