@interface PowerUICECManager
+ (BOOL)isCECSupported;
+ (id)manager;
- (BOOL)evaluateEngagementAndSetup;
- (BOOL)isActiveRegion;
- (BOOL)isEnabled;
- (BOOL)shouldEngageCEC;
- (PowerUICECManager)init;
- (id)dateFormatter;
- (id)defaultDateToDisableUntilGivenDate:(id)date;
- (id)readLifetimeCECEngagementValues;
- (id)requiredFullChargeDate;
- (id)sessionEndCECAnalytics;
- (id)status;
- (void)clearAnalyticsDate;
- (void)evaluatePausingNow;
- (void)handleCallback:(id)callback;
- (void)handleChargeUp;
- (void)handleDisengagement;
- (void)handleNewDebugState:(id)state;
- (void)handleNotificationResponse:(id)response;
- (void)handlePowerUICECStateChange:(unint64_t)change withHandler:(id)handler;
- (void)loadState;
- (void)monitorBatteryNotifications;
- (void)promptBDCToQueryCurrentState;
- (void)recordAnalytics;
- (void)recordLifetimeValues:(id)values;
- (void)recordPowerLogCECState:(unint64_t)state;
- (void)recordPowerLogEvent;
- (void)refreshShouldSupportCEC;
- (void)registerTimer;
- (void)resetState;
- (void)setTemporarilyDisabled:(BOOL)disabled from:(id)from;
- (void)setupTempDisabledCheckAfterInterval:(double)interval;
- (void)updatePhaseFrom:(unint64_t)from to:(unint64_t)to;
@end

@implementation PowerUICECManager

void __48__PowerUICECManager_monitorBatteryNotifications__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PowerUICECManager_monitorBatteryNotifications__block_invoke_2;
  block[3] = &unk_2782D3EA8;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (BOOL)isEnabled
{
  v3 = +[PowerUICECManager isCECSupported];
  if (v3)
  {
    cecTemporarilyDisabledDate = self->_cecTemporarilyDisabledDate;
    if (cecTemporarilyDisabledDate)
    {
      [(NSDate *)cecTemporarilyDisabledDate timeIntervalSinceNow];
      if (v5 < 0.0)
      {
        [(PowerUICECManager *)self setTemporarilyDisabled:0 from:0];
      }
    }

    LOBYTE(v3) = self->_isCECEnabled & ~self->_isCECTemporarilyDisabled;
  }

  return v3;
}

+ (BOOL)isCECSupported
{
  if (!_os_feature_enabled_impl() || !+[PowerUISmartChargeUtilities isiPhone])
  {
    return 0;
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];
  v4 = [countryCode isEqualToString:@"US"];

  return v4;
}

- (BOOL)isActiveRegion
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_isInternal)
  {
    v5 = 900.0;
    goto LABEL_10;
  }

  if (self->_tPluggedInWaitInterval == 0.0)
  {
    v5 = 900.0;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      tPluggedInWaitInterval = self->_tPluggedInWaitInterval;
      v9 = 134217984;
      v10 = tPluggedInWaitInterval;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "TestMode: PluggedInWait set to %lf", &v9, 0xCu);
    }

    v5 = self->_tPluggedInWaitInterval;
  }

  if (!self->_tOverrideActiveCheck)
  {
LABEL_10:
    if (self->_shouldSupportCEC)
    {
      v6 = [PowerUICECUtilities isPluggedIntoEligiblePowerSourceWithContext:self->_context];
      if (!v6)
      {
        goto LABEL_15;
      }

      if (![PowerUISmartChargeUtilities deviceWasConnectedToChargerWithinSeconds:self->_context withContext:v5]&& [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context]>= 30)
      {
        LOBYTE(v6) = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context]< 75;
        goto LABEL_15;
      }
    }

    LOBYTE(v6) = 0;
    goto LABEL_15;
  }

  LOBYTE(v6) = 1;
LABEL_15:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)requiredFullChargeDate
{
  currentPhase = self->_currentPhase;
  if (currentPhase)
  {
    v3 = currentPhase == 30;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    [MEMORY[0x277CBEAA8] distantFuture];
  }

  else
  {
    [(NSDate *)self->_userDeadline dateByAddingTimeInterval:0x708uLL];
  }
  v4 = ;

  return v4;
}

- (void)handleNotificationResponse:(id)response
{
  actionIdentifier = [response actionIdentifier];
  v5 = [actionIdentifier isEqualToString:@"cecChargeUp"];

  if (v5)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "User requested immediate charge.", buf, 2u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PowerUICECManager_handleNotificationResponse___block_invoke;
    block[3] = &unk_2782D3EA8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

+ (id)manager
{
  if (+[PowerUICECManager isCECSupported])
  {
    if (manager_onceToken_1 != -1)
    {
      +[PowerUICECManager manager];
    }

    v2 = manager_manager_1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __28__PowerUICECManager_manager__block_invoke()
{
  manager_manager_1 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (PowerUICECManager)init
{
  v61[4] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = PowerUICECManager;
  v2 = [(PowerUICECManager *)&v59 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerui.cec", "");
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    *(v2 + 15) = +[PowerUISmartChargeUtilities isInternalBuild];
    v60[0] = &unk_282D4E920;
    v60[1] = &unk_282D4E938;
    v61[0] = @"Not Evaluated";
    v61[1] = @"Engaged";
    v60[2] = &unk_282D4E950;
    v60[3] = &unk_282D4E968;
    v61[2] = @"Charge Up";
    v61[3] = @"Evaluated and Not Engaged";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:4];
    v6 = *(v2 + 6);
    *(v2 + 6) = v5;

    [v2 refreshShouldSupportCEC];
    v7 = +[PowerUIChargingController sharedInstance];
    v8 = *(v2 + 12);
    *(v2 + 12) = v7;

    v9 = +[PowerUIAnalyticsManager sharedInstance];
    v10 = *(v2 + 13);
    *(v2 + 13) = v9;

    userContext = [MEMORY[0x277CFE318] userContext];
    v12 = *(v2 + 5);
    *(v2 + 5) = userContext;

    v13 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.cec"];
    v14 = *(v2 + 11);
    *(v2 + 11) = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.powerui.cecmanager.queue", v15);
    v17 = *(v2 + 7);
    *(v2 + 7) = v16;

    v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 7));
    v19 = *(v2 + 14);
    *(v2 + 14) = v18;

    v20 = *(v2 + 14);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __25__PowerUICECManager_init__block_invoke;
    handler[3] = &unk_2782D3EA8;
    v21 = v2;
    v58 = v21;
    dispatch_source_set_event_handler(v20, handler);
    [v21 loadState];
    if (v21[3] == 10)
    {
      [v21 registerTimer];
    }

    [v21 monitorBatteryNotifications];
    v22 = +[PowerUIBDCDataManager sharedInstance];
    v23 = v21[19];
    v21[19] = v22;

    v24 = *(v2 + 5);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __25__PowerUICECManager_init__block_invoke_2;
    v55[3] = &unk_2782D3EA8;
    v25 = v21;
    v56 = v25;
    v26 = [PowerUICECPredictedTimeManager managerWithContextStore:v24 withHandler:v55];
    v27 = v25[10];
    v25[10] = v26;

    v28 = *(v2 + 7);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__PowerUICECManager_init__block_invoke_4;
    block[3] = &unk_2782D3EA8;
    v29 = v25;
    v54 = v29;
    dispatch_async(v28, block);
    out_token = 0;
    v30 = *(v2 + 7);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __25__PowerUICECManager_init__block_invoke_5;
    v50[3] = &unk_2782D3E60;
    v31 = v29;
    v51 = v31;
    notify_register_dispatch("com.apple.powerui.cec.notification", &out_token, v30, v50);
    v49 = 0;
    v32 = *(v2 + 7);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __25__PowerUICECManager_init__block_invoke_6;
    v47[3] = &unk_2782D3E60;
    v33 = v31;
    v48 = v33;
    notify_register_dispatch("com.apple.powerui.cec.powerLogDonation", &v49, v32, v47);
    v46 = 0;
    uTF8String = [*MEMORY[0x277D443B8] UTF8String];
    v35 = *(v2 + 7);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __25__PowerUICECManager_init__block_invoke_7;
    v44[3] = &unk_2782D3E60;
    v36 = v33;
    v45 = v36;
    notify_register_dispatch(uTF8String, &v46, v35, v44);
    v43 = 0;
    v37 = *(v2 + 7);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __25__PowerUICECManager_init__block_invoke_8;
    v41[3] = &unk_2782D3E60;
    v38 = v36;
    v42 = v38;
    notify_register_dispatch("com.apple.powerui.cec.checkForEligiblePowerSource", &v43, v37, v41);
    v38[13] = 1;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v2;
}

void __25__PowerUICECManager_init__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[7];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__PowerUICECManager_init__block_invoke_3;
  block[3] = &unk_2782D3EA8;
  v4 = v1;
  dispatch_async(v2, block);
}

void __25__PowerUICECManager_init__block_invoke_5(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  if (state64 == 2)
  {
    v3 = +[PowerUINotificationManager sharedInstance];
    v5 = [v3 postCECEngagedNotificationWithDate:*(*(a1 + 32) + 16)];
  }

  else
  {
    if (state64 != 1)
    {
      return;
    }

    v3 = +[PowerUINotificationManager sharedInstance];
    v4 = [v3 postCECFirstTimeNotification];
  }
}

void __25__PowerUICECManager_init__block_invoke_8(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 40);
    v4 = v2;
    v6[0] = 67109120;
    v6[1] = [PowerUICECUtilities isPluggedIntoEligiblePowerSourceWithContext:v3];
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Is Power source eligible: %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)refreshShouldSupportCEC
{
  if (+[PowerUICECManager isCECSupported])
  {
    v3 = +[PowerUICECUtilities fetchEstimatedCountryCode];
    if (v3)
    {
      v4 = [v3 isEqualToString:@"US"];
    }

    else
    {
      v4 = 1;
    }

    self->_shouldSupportCEC = v4;

    MEMORY[0x2821F96F8]();
  }

  else
  {
    self->_shouldSupportCEC = 0;
  }
}

- (void)loadState
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = [(NSUserDefaults *)self->_defaults stringForKey:@"debugStatus"];
  debugStatus = self->_debugStatus;
  self->_debugStatus = v3;

  v5 = [PowerUICECUtilities deviceWasRestartedWithDefaults:self->_defaults];
  defaults = self->_defaults;
  v7 = +[PowerUISmartChargeUtilities getCurrentBootSessionUUID];
  [(NSUserDefaults *)defaults setObject:v7 forKey:@"bootUUIDOnLastInit"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = log;
    v11 = [v9 numberWithBool:v5];
    v51 = 138412290;
    v52 = v11;
    _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "CECManager initializing. Was the device restarted: %@", &v51, 0xCu);
  }

  if (v5)
  {
    [(PowerUICECManager *)self resetState];
  }

  self->_currentPhase = [(NSUserDefaults *)self->_defaults integerForKey:@"currentPhase"];
  v12 = [(NSUserDefaults *)self->_defaults objectForKey:@"userDeadline"];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x277CBEAA8];
    [v12 doubleValue];
    v15 = [v14 dateWithTimeIntervalSinceReferenceDate:?];
    userDeadline = self->_userDeadline;
    self->_userDeadline = v15;
  }

  v17 = [(NSUserDefaults *)self->_defaults objectForKey:@"pluggedInDateInterval"];

  if (v17)
  {
    v18 = MEMORY[0x277CBEAA8];
    [v17 doubleValue];
    v19 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
    pluggedInDate = self->_pluggedInDate;
    self->_pluggedInDate = v19;
  }

  v21 = [(NSUserDefaults *)self->_defaults objectForKey:@"pluggedInBatteryLevel"];

  if (v21)
  {
    self->_pluggedInBatteryLevel = [v21 intValue];
  }

  v22 = [(NSUserDefaults *)self->_defaults objectForKey:@"currentState"];

  if (v22)
  {
    unsignedIntegerValue = [v22 unsignedIntegerValue];
  }

  else
  {
    if (!+[PowerUICECManager isCECSupported])
    {
      goto LABEL_16;
    }

    unsignedIntegerValue = 1;
  }

  self->_currentState = unsignedIntegerValue;
LABEL_16:
  v24 = [(NSUserDefaults *)self->_defaults objectForKey:@"tempDisabledInterval"];

  if (v24)
  {
    v25 = MEMORY[0x277CBEAA8];
    [v24 doubleValue];
    v26 = [v25 dateWithTimeIntervalSinceReferenceDate:?];
    cecTemporarilyDisabledDate = self->_cecTemporarilyDisabledDate;
    self->_cecTemporarilyDisabledDate = v26;

    [(NSDate *)self->_cecTemporarilyDisabledDate timeIntervalSinceNow];
    if (v28 <= 0.0)
    {
      [(NSDate *)self->_cecTemporarilyDisabledDate timeIntervalSinceNow];
      [(PowerUICECManager *)self setupTempDisabledCheckAfterInterval:?];
    }

    else
    {
      self->_isCECTemporarilyDisabled = 1;
    }
  }

  v29 = [(NSUserDefaults *)self->_defaults objectForKey:@"disabled"];

  if (v29)
  {
    v30 = [v29 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v30) = 1;
  }

  self->_isCECEnabled = v30;
  v31 = [(NSUserDefaults *)self->_defaults objectForKey:@"pauseChargingCheckDate"];

  if (v31)
  {
    v32 = MEMORY[0x277CBEAA8];
    [v31 doubleValue];
    v33 = [v32 dateWithTimeIntervalSinceReferenceDate:?];
    pauseChargingCheckDate = self->_pauseChargingCheckDate;
    self->_pauseChargingCheckDate = v33;
  }

  v35 = [(NSUserDefaults *)self->_defaults objectForKey:@"testPluggedInWait"];

  if (v35)
  {
    [(NSUserDefaults *)self->_defaults doubleForKey:@"testPluggedInWait"];
    self->_tPluggedInWaitInterval = v36;
  }

  v37 = [(NSUserDefaults *)self->_defaults objectForKey:@"firstTime"];

  if (v37)
  {
    self->_displayedFirstTimeNotification = [(NSUserDefaults *)self->_defaults BOOLForKey:@"firstTime"];
  }

  v38 = [(NSUserDefaults *)self->_defaults objectForKey:@"testOverrideActiveCheck"];
  v39 = v38;
  if (v38)
  {
    self->_tOverrideActiveCheck = [v38 BOOLValue];
  }

  v40 = self->_log;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = MEMORY[0x277CCABB0];
    currentPhase = self->_currentPhase;
    v43 = v40;
    v44 = [v41 numberWithUnsignedInteger:currentPhase];
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentState];
    v46 = self->_userDeadline;
    v47 = self->_cecTemporarilyDisabledDate;
    v48 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCECEnabled];
    v49 = self->_pauseChargingCheckDate;
    v51 = 138413570;
    v52 = v44;
    v53 = 2112;
    v54 = v45;
    v55 = 2112;
    v56 = v46;
    v57 = 2112;
    v58 = v47;
    v59 = 2112;
    v60 = v48;
    v61 = 2112;
    v62 = v49;
    _os_log_impl(&dword_21B766000, v43, OS_LOG_TYPE_DEFAULT, "CECManager Loaded state. Phase %@, State %@, User Deadline %@, TempDisabledDate %@, isCECEnabled %@, pauseChargingCheckDate %@", &v51, 0x3Eu);
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)registerTimer
{
  timer = self->_timer;
  v4 = dispatch_walltime(0, 300000000000);
  dispatch_source_set_timer(timer, v4, 0x45D964B800uLL, 0xDF8475800uLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PowerUICECManager_registerTimer__block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  if (registerTimer_timerToken != -1)
  {
    dispatch_once(&registerTimer_timerToken, block);
  }
}

- (id)status
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentPhase];
  [dictionary setObject:v4 forKeyedSubscript:@"CECCurrentPhase"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isChargingPaused];
  [dictionary setObject:v5 forKeyedSubscript:@"CECChargingPaused"];

  phaseDescriptions = self->_phaseDescriptions;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentPhase];
  v8 = [(NSDictionary *)phaseDescriptions objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = self->_phaseDescriptions;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentPhase];
    v11 = [(NSDictionary *)v9 objectForKeyedSubscript:v10];
    [dictionary setObject:v11 forKeyedSubscript:@"CECCurrentPhaseString"];
  }

  userDeadline = self->_userDeadline;
  if (userDeadline)
  {
    [dictionary setObject:userDeadline forKeyedSubscript:@"CECUserDeadline"];
  }

  pauseChargingCheckDate = self->_pauseChargingCheckDate;
  if (pauseChargingCheckDate)
  {
    [dictionary setObject:pauseChargingCheckDate forKeyedSubscript:@"CECCheckDate"];
  }

  return dictionary;
}

- (void)monitorBatteryNotifications
{
  v3 = MEMORY[0x277CFE360];
  keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  keyPathForBatteryStateDataDictionary2 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  keyPathForForegroundApp = [MEMORY[0x277CFE338] keyPathForForegroundApp];
  v7 = [v3 predicateForKeyPath:keyPathForBatteryStateDataDictionary withFormat:@"(SELF.%@.value.externalConnected = %@) AND NOT (SELF.%@.value = %@)", keyPathForBatteryStateDataDictionary2, MEMORY[0x277CBEC38], keyPathForForegroundApp, @"com.apple.camera"];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__PowerUICECManager_monitorBatteryNotifications__block_invoke;
  v14[3] = &unk_2782D4138;
  v14[4] = self;
  v8 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.powerui.cec.battery" contextualPredicate:v7 clientIdentifier:@"com.apple.powerui.cec.batteryState" callback:v14];
  [(_CDLocalContext *)self->_context registerCallback:v8];
  v9 = MEMORY[0x277CFE360];
  keyPathForPluginStatus = [MEMORY[0x277CFE338] keyPathForPluginStatus];
  v11 = [v9 predicateForChangeAtKeyPath:keyPathForPluginStatus];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__PowerUICECManager_monitorBatteryNotifications__block_invoke_3;
  v13[3] = &unk_2782D4138;
  v13[4] = self;
  v12 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.powerui.cec.unplug" contextualPredicate:v11 clientIdentifier:@"com.apple.powerui.cec.pluggedIn" callback:v13];
  [(_CDLocalContext *)self->_context registerCallback:v12];
}

void __48__PowerUICECManager_monitorBatteryNotifications__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PowerUICECManager_monitorBatteryNotifications__block_invoke_4;
  block[3] = &unk_2782D3EA8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __48__PowerUICECManager_monitorBatteryNotifications__block_invoke_4(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [PowerUISmartChargeUtilities isPluggedInWithContext:*(*(a1 + 32) + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3[4];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v27) = 1;
      _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Plugged In %d", buf, 8u);
    }

    v5 = *(a1 + 32);
    if (!*(v5 + 136))
    {
      v6 = *(v5 + 40);
      v7 = [MEMORY[0x277CFE338] keyPathForPluginStatus];
      v8 = [v6 lastModifiedDateForContextualKeyPath:v7];

      v9 = *(*(a1 + 32) + 32);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v8;
        _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Setting pluggedIn date to %@", buf, 0xCu);
      }

      objc_storeStrong((*(a1 + 32) + 136), v8);
      v10 = *(a1 + 32);
      v11 = *(v10 + 88);
      [*(v10 + 136) timeIntervalSinceReferenceDate];
      [v11 setDouble:@"pluggedInDateInterval" forKey:?];
      v12 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:*(*(a1 + 32) + 40)];
      v13 = *(*(a1 + 32) + 32);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v27 = v12;
        _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "Setting pluggedIn battery level to %ld", buf, 0xCu);
      }

      *(*(a1 + 32) + 144) = v12;
      [*(*(a1 + 32) + 88) setInteger:*(*(a1 + 32) + 144) forKey:@"pluggedInBatteryLevel"];

      v5 = *(a1 + 32);
    }

    if ((*(v5 + 9) & 1) == 0)
    {
      if ([v5 isEnabled])
      {
        if (+[PowerUICECManager isCECSupported])
        {
          v14 = *(a1 + 32);
          if (*(v14 + 14) == 1)
          {
            v15 = [*(v14 + 88) objectForKey:@"firstTime"];
            v16 = v15;
            if (v15)
            {
              *(*(a1 + 32) + 9) = [v15 BOOLValue];
            }

            v17 = *(a1 + 32);
            if ((v17[9] & 1) == 0)
            {
              if ([v17 shouldEngageCEC])
              {
                v18 = +[PowerUINotificationManager sharedInstance];
                v19 = [v18 postCECFirstTimeNotification];

                [*(*(a1 + 32) + 88) setBool:1 forKey:@"firstTime"];
                *(*(a1 + 32) + 9) = 1;
              }
            }
          }
        }
      }
    }

    v20 = *(a1 + 32);
    v21 = *(v20 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PowerUICECManager_monitorBatteryNotifications__block_invoke_207;
    block[3] = &unk_2782D3EA8;
    block[4] = v20;
    dispatch_async(v21, block);
    v22 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [v3 recordAnalytics];
    v23 = *(a1 + 32);
    v24 = *MEMORY[0x277D85DE8];

    [v23 resetState];
  }
}

- (void)setupTempDisabledCheckAfterInterval:(double)interval
{
  v4 = dispatch_walltime(0, (interval * 1000000000.0));
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PowerUICECManager_setupTempDisabledCheckAfterInterval___block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  dispatch_after(v4, queue, block);
}

- (id)defaultDateToDisableUntilGivenDate:(id)date
{
  v12 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (defaultDateToDisableUntilGivenDate__onceToken_1 != -1)
  {
    [PowerUICECManager defaultDateToDisableUntilGivenDate:];
  }

  v5 = [defaultDateToDisableUntilGivenDate__calendar_1 components:60 fromDate:dateCopy];
  if ([v5 hour] >= 6)
  {
    [v5 setDay:{objc_msgSend(v5, "day") + 1}];
  }

  [v5 setHour:6];
  v6 = [defaultDateToDisableUntilGivenDate__calendar_1 dateFromComponents:v5];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Feature disabled until: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __56__PowerUICECManager_defaultDateToDisableUntilGivenDate___block_invoke()
{
  defaultDateToDisableUntilGivenDate__calendar_1 = [MEMORY[0x277CBEA80] currentCalendar];

  return MEMORY[0x2821F96F8]();
}

- (void)setTemporarilyDisabled:(BOOL)disabled from:(id)from
{
  v20 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (disabled)
  {
    if (!self->_isCECTemporarilyDisabled)
    {
      self->_isCECTemporarilyDisabled = 1;
      v7 = [(PowerUICECManager *)self defaultDateToDisableUntilGivenDate:fromCopy];
      cecTemporarilyDisabledDate = self->_cecTemporarilyDisabledDate;
      self->_cecTemporarilyDisabledDate = v7;

      [(NSDate *)self->_cecTemporarilyDisabledDate timeIntervalSinceNow];
      [(PowerUICECManager *)self setupTempDisabledCheckAfterInterval:?];
      defaults = self->_defaults;
      [(NSDate *)self->_cecTemporarilyDisabledDate timeIntervalSinceReferenceDate];
      [(NSUserDefaults *)defaults setDouble:@"tempDisabledInterval" forKey:?];
    }
  }

  else
  {
    if ((self->_currentState & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Enabling CEC from temporarily disabled", &v18, 2u);
      }

      self->_currentState = 1;
      [(PowerUICECManager *)self recordPowerLogCECState:1];
      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = MEMORY[0x277CCABB0];
        currentState = self->_currentState;
        v14 = v11;
        v15 = [v12 numberWithUnsignedInteger:currentState];
        v18 = 138412290;
        v19 = v15;
        _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "CEC State set to: %@", &v18, 0xCu);
      }

      [(NSUserDefaults *)self->_defaults setInteger:self->_currentState forKey:@"currentState"];
    }

    self->_isCECTemporarilyDisabled = 0;
    v16 = self->_cecTemporarilyDisabledDate;
    self->_cecTemporarilyDisabledDate = 0;

    [(NSUserDefaults *)self->_defaults removeObjectForKey:@"tempDisabledInterval"];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handlePowerUICECStateChange:(unint64_t)change withHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = log;
    v10 = [v8 numberWithUnsignedInteger:change];
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "CEC State: %@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__PowerUICECManager_handlePowerUICECStateChange_withHandler___block_invoke;
  block[3] = &unk_2782D4378;
  v15 = handlerCopy;
  changeCopy = change;
  block[4] = self;
  v12 = handlerCopy;
  dispatch_async(queue, block);

  v13 = *MEMORY[0x277D85DE8];
}

void __61__PowerUICECManager_handlePowerUICECStateChange_withHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2 < 4)
  {
    v3 = *(a1 + 32);
    if (v2 <= 1)
    {
      if (v2)
      {
        *(v3 + 128) = 1;
        *(*(a1 + 32) + 10) = 1;
        [*(*(a1 + 32) + 88) removeObjectForKey:@"disabled"];
        [*(a1 + 32) setTemporarilyDisabled:0 from:0];
        v14 = *(a1 + 32);
        v15 = *(v14 + 104);
        v6 = [MEMORY[0x277CCABB0] numberWithInteger:{+[PowerUISmartChargeUtilities currentBatteryLevelWithContext:](PowerUISmartChargeUtilities, "currentBatteryLevelWithContext:", *(v14 + 40))}];
        v7 = *(*(a1 + 32) + 16);
        v8 = v15;
        v9 = v6;
        v10 = 5;
      }

      else
      {
        *(v3 + 128) = 0;
        *(*(a1 + 32) + 10) = 0;
        [*(*(a1 + 32) + 88) setBool:1 forKey:@"disabled"];
        v4 = *(a1 + 32);
        v5 = *(v4 + 104);
        v6 = [MEMORY[0x277CCABB0] numberWithInteger:{+[PowerUISmartChargeUtilities currentBatteryLevelWithContext:](PowerUISmartChargeUtilities, "currentBatteryLevelWithContext:", *(v4 + 40))}];
        v7 = *(*(a1 + 32) + 16);
        v8 = v5;
        v9 = v6;
        v10 = 4;
      }

      goto LABEL_13;
    }

    if (v2 != 2)
    {
      *(v3 + 128) = 3;
      v16 = *(a1 + 32);
      v17 = [MEMORY[0x277CBEAA8] date];
      [v16 setTemporarilyDisabled:1 from:v17];

      v18 = *(a1 + 32);
      v19 = *(v18 + 104);
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:{+[PowerUISmartChargeUtilities currentBatteryLevelWithContext:](PowerUISmartChargeUtilities, "currentBatteryLevelWithContext:", *(v18 + 40))}];
      v7 = *(*(a1 + 32) + 16);
      v8 = v19;
      v9 = v6;
      v10 = 3;
LABEL_13:
      [v8 submitEngagementEventWithBatteryLevel:v9 targetSoC:0 predictedEndOfCharge:v7 modeOfOperation:1 eventType:v10];
      goto LABEL_14;
    }

    if (*(v3 + 24) == 10)
    {
      *(v3 + 128) = 2;
      v11 = *(a1 + 32);
      v6 = [MEMORY[0x277CBEAA8] date];
      [v11 setTemporarilyDisabled:1 from:v6];
LABEL_14:

      v20 = *(*(a1 + 32) + 32);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = MEMORY[0x277CCABB0];
        v22 = *(*(a1 + 32) + 128);
        v23 = v20;
        v24 = [v21 numberWithUnsignedInteger:v22];
        *buf = 138412290;
        v28 = v24;
        _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "CEC State set to: %@", buf, 0xCu);
      }

      [*(*(a1 + 32) + 88) setInteger:*(*(a1 + 32) + 128) forKey:@"currentState"];
      (*(*(a1 + 40) + 16))();
      [*(a1 + 32) recordPowerLogCECState:*(*(a1 + 32) + 128)];
      [*(a1 + 32) handleCallback:@"User"];
      v25 = *MEMORY[0x277D85DE8];
      return;
    }
  }

  v12 = *(a1 + 40);
  v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:1 userInfo:0];
  (*(v12 + 16))(v12, 0);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)updatePhaseFrom:(unint64_t)from to:(unint64_t)to
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
  v8 = [PowerUICECUtilities isPluggedIntoEligiblePowerSourceWithContext:self->_context];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    phaseDescriptions = self->_phaseDescriptions;
    v11 = MEMORY[0x277CCABB0];
    v12 = log;
    v13 = [v11 numberWithUnsignedInteger:from];
    v14 = [(NSDictionary *)phaseDescriptions objectForKeyedSubscript:v13];
    v15 = self->_phaseDescriptions;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:to];
    v17 = [(NSDictionary *)v15 objectForKeyedSubscript:v16];
    v21 = 134219266;
    fromCopy = from;
    v23 = 2048;
    toCopy = to;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v17;
    v29 = 2048;
    v30 = v7;
    v31 = 1024;
    v32 = v8;
    _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "CEC Phase update from %lu to %lu (%@ --> %@); BatteryLevel %ld, PluggedIntoEligibleSource %d", &v21, 0x3Au);
  }

  self->_currentPhase = to;
  [(NSUserDefaults *)self->_defaults setInteger:to forKey:@"currentPhase"];
  if (self->_currentPhase != 10)
  {
    [(PowerUIChargingController *)self->_chargingController clearChargeLimitForLimitType:4];
    analyticsManager = self->_analyticsManager;
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    [(PowerUIAnalyticsManager *)analyticsManager submitEngagementEventWithBatteryLevel:v19 targetSoC:0 predictedEndOfCharge:self->_userDeadline modeOfOperation:1 eventType:9];

    self->_isChargingPaused = 0;
  }

  [(PowerUICECManager *)self recordPowerLogEvent];
  [(PowerUICECManager *)self promptBDCToQueryCurrentState];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)promptBDCToQueryCurrentState
{
  getBDCDataDictTemplate = [(PowerUIBDCDataManager *)self->_bdcDataManager getBDCDataDictTemplate];
  [getBDCDataDictTemplate setObject:&unk_282D4E980 forKeyedSubscript:@"ChargingState"];
  [getBDCDataDictTemplate setObject:&unk_282D4E980 forKeyedSubscript:@"InflowState"];
  [getBDCDataDictTemplate setObject:&unk_282D4E998 forKeyedSubscript:@"ChargeLimit"];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentPhase];
  [getBDCDataDictTemplate setObject:v3 forKeyedSubscript:@"CheckPoint"];

  [getBDCDataDictTemplate setObject:&unk_282D4E9B0 forKeyedSubscript:@"ModeOfOperation"];
  [getBDCDataDictTemplate setObject:&unk_282D4E980 forKeyedSubscript:@"DecisionMaker"];
  [(PowerUIBDCDataManager *)self->_bdcDataManager promptBDCToQueryState:getBDCDataDictTemplate];
}

- (void)handleCallback:(id)callback
{
  v27 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
  v6 = [PowerUICECUtilities isPluggedIntoEligiblePowerSourceWithContext:self->_context];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    currentPhase = self->_currentPhase;
    v20 = 138413058;
    *v21 = callbackCopy;
    *&v21[8] = 2048;
    v22 = currentPhase;
    v23 = 2048;
    v24 = v5;
    v25 = 1024;
    v26 = v6;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Evaluating state. Trigger: %@ (CurrentPhase %lu batteryLevel %ld, isPluggedIntoEligibleSource %d)", &v20, 0x26u);
  }

  p_currentPhase = &self->_currentPhase;
  v9 = self->_currentPhase;
  if (v9 > 19)
  {
    if (v9 == 20)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [PowerUICECManager handleCallback:];
      }
    }

    else
    {
      if (v9 != 30)
      {
LABEL_15:
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [PowerUICECManager handleCallback:];
        }

        goto LABEL_34;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [PowerUICECManager handleCallback:];
      }
    }
  }

  else
  {
    if (v9)
    {
      if (v9 == 10)
      {
        if ([(PowerUICECManager *)self isActiveRegion])
        {
          hasSufficientTimeForFullCharge = [(PowerUICECPredictedTimeManager *)self->_pluggedInTimeManager hasSufficientTimeForFullCharge];
          v12 = +[PowerUINotificationManager sharedInstance];
          immediateCharge = [v12 immediateCharge];

          isEnabled = [(PowerUICECManager *)self isEnabled];
          v15 = isEnabled;
          if (hasSufficientTimeForFullCharge && (immediateCharge & 1) == 0 && isEnabled)
          {
            [(PowerUICECManager *)self evaluatePausingNow];
          }

          else
          {
            v16 = self->_log;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v20 = 67109632;
              *v21 = v15;
              *&v21[4] = 1024;
              *&v21[6] = immediateCharge;
              LOWORD(v22) = 1024;
              *(&v22 + 2) = hasSufficientTimeForFullCharge;
              _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Deciding to Charge up. (isCECEnabled %d, didUserOverride %d, notEnoughTime %d)", &v20, 0x14u);
            }

            [(PowerUICECManager *)self handleChargeUp];
          }
        }

        else
        {
          [(PowerUICECManager *)self handleDisengagement];
        }

        goto LABEL_34;
      }

      goto LABEL_15;
    }

    if ([(PowerUICECManager *)self isEnabled])
    {
      if ([(PowerUICECManager *)self isActiveRegion])
      {
        if ([(PowerUICECManager *)self evaluateEngagementAndSetup])
        {
          [(PowerUICECManager *)self updatePhaseFrom:self->_currentPhase to:10];
          [(PowerUICECManager *)self evaluatePausingNow];
          [(PowerUICECManager *)self registerTimer];
        }

        else
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
          {
            [PowerUICECManager handleCallback:];
          }

          [(PowerUICECManager *)self updatePhaseFrom:self->_currentPhase to:30];
        }
      }

      else
      {
        v17 = self->_log;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "Not in active region", &v20, 2u);
        }
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUICECManager handleCallback:];
    }
  }

LABEL_34:
  v18 = self->_log;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [(PowerUICECManager *)p_currentPhase handleCallback:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleDisengagement
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  selfCopy = self;
  _os_log_error_impl(&dword_21B766000, a2, OS_LOG_TYPE_ERROR, "Battery level below %ld post engagement", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)handleChargeUp
{
  v3 = +[PowerUINotificationManager sharedInstance];
  [v3 removeCECNotifications];

  [(PowerUICECManager *)self updatePhaseFrom:self->_currentPhase to:20];
  [(PowerUICECPredictedTimeManager *)self->_pluggedInTimeManager stopAllMonitoring];

  [(PowerUICECManager *)self unregisterTimer];
}

- (void)evaluatePausingNow
{
  v29 = *MEMORY[0x277D85DE8];
  pauseChargingCheckDate = self->_pauseChargingCheckDate;
  if (pauseChargingCheckDate)
  {
    [(NSDate *)pauseChargingCheckDate timeIntervalSinceNow];
    if (v4 > -300.0)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 134217984;
        v28 = 5;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Evaluated pausing in last %lu mins. Skipping", &v27, 0xCu);
      }

      goto LABEL_25;
    }
  }

  isChargingPaused = self->_isChargingPaused;
  v7 = +[PowerUICECGridDataManager sharedInstance];
  shouldChargeNow = [v7 shouldChargeNow];

  v9 = self->_log;
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (shouldChargeNow)
  {
    if (v10)
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "CEC Engaged : Charging up", &v27, 2u);
    }

    v11 = +[PowerUINotificationManager sharedInstance];
    [v11 removeCECPausedNotification];

    [(PowerUIChargingController *)self->_chargingController clearChargeLimitForLimitType:4];
    if (!self->_isChargingPaused || (analyticsManager = self->_analyticsManager, [MEMORY[0x277CCABB0] numberWithInteger:{+[PowerUISmartChargeUtilities currentBatteryLevelWithContext:](PowerUISmartChargeUtilities, "currentBatteryLevelWithContext:", self->_context)}], v13 = objc_claimAutoreleasedReturnValue(), -[PowerUIAnalyticsManager submitEngagementEventWithBatteryLevel:targetSoC:predictedEndOfCharge:modeOfOperation:eventType:](analyticsManager, "submitEngagementEventWithBatteryLevel:targetSoC:predictedEndOfCharge:modeOfOperation:eventType:", v13, 0, self->_userDeadline, 1, 9), v13, !self->_isChargingPaused))
    {
      if (!self->_firstChargingEvaluation)
      {
        v16 = 0;
        goto LABEL_22;
      }
    }

    v14 = +[PowerUINotificationManager sharedInstance];
    v15 = [v14 postInternalCECNotificationWithID:@"chargingStatus" chargingStatus:1 information:@"Lower carbon emission electricity is available right now!" shouldReplace:1];
    v16 = 0;
  }

  else
  {
    if (v10)
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "CEC Engaged : Charging paused", &v27, 2u);
    }

    v17 = +[PowerUINotificationManager sharedInstance];
    v18 = [v17 postCECEngagedNotificationWithDate:self->_userDeadline];

    v19 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
    if ([(PowerUIChargingController *)self->_chargingController setChargeLimitTo:v19 forLimitType:4])
    {
      v20 = self->_analyticsManager;
      v21 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
      [(PowerUIAnalyticsManager *)v20 submitEngagementEventWithBatteryLevel:v21 targetSoC:0 predictedEndOfCharge:self->_userDeadline modeOfOperation:1 eventType:8];
    }

    if (self->_isChargingPaused && !self->_firstChargingEvaluation)
    {
      v16 = 1;
      goto LABEL_22;
    }

    v14 = +[PowerUINotificationManager sharedInstance];
    v16 = 1;
    v22 = [v14 postInternalCECNotificationWithID:@"chargingStatus" chargingStatus:0 information:@"Lower carbon emission electricity is available in future." shouldReplace:1];
  }

LABEL_22:
  self->_isChargingPaused = v16;
  if (isChargingPaused != v16)
  {
    [(PowerUICECManager *)self analyticsCECSessionChargingState:v16];
    [(PowerUICECManager *)self recordPowerLogEvent];
    [(PowerUICECManager *)self promptBDCToQueryCurrentState];
  }

  self->_firstChargingEvaluation = 0;
  date = [MEMORY[0x277CBEAA8] date];
  v24 = self->_pauseChargingCheckDate;
  self->_pauseChargingCheckDate = date;

  defaults = self->_defaults;
  [(NSDate *)self->_pauseChargingCheckDate timeIntervalSinceReferenceDate];
  [(NSUserDefaults *)defaults setDouble:@"pauseChargingCheckDate" forKey:?];
LABEL_25:
  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldEngageCEC
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
  v4 = +[PowerUISmartChargeUtilities lastPluggedInDate];
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA968] localizedStringFromDate:v4 dateStyle:1 timeStyle:1];
  v7 = MEMORY[0x277CCA968];
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [v7 localizedStringFromDate:date dateStyle:1 timeStyle:1];
  v10 = [v5 stringWithFormat:@"BatteryLevel %ld, PluggedIn at %@ Evaluated at %@", v3, v6, v9];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n%@", v10];
  debugStatus = self->_debugStatus;
  self->_debugStatus = v11;

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Evaluating engagement for current session", buf, 2u);
  }

  hasSufficientTimeForFullCharge = [(PowerUICECPredictedTimeManager *)self->_pluggedInTimeManager hasSufficientTimeForFullCharge];
  if (hasSufficientTimeForFullCharge)
  {
    [(PowerUICECPredictedTimeManager *)self->_pluggedInTimeManager timeToFullChargeFromBatteryLevel:80];
    v16 = v15;
    deadline = [(PowerUICECPredictedTimeManager *)self->_pluggedInTimeManager deadline];
    [deadline timeIntervalSinceNow];
    v19 = v18;

    v20 = fmax(v19 - v16, 0.0);
    [(PowerUICECPredictedTimeManager *)self->_pluggedInTimeManager timeToFullChargeFromBatteryLevel:[PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context]];
    v22 = fmax(v21 - v16, 0.0);
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = MEMORY[0x277CCABB0];
      v25 = v23;
      v26 = [v24 numberWithDouble:v20];
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
      *buf = 138412546;
      v55 = v26;
      v56 = 2112;
      v57 = v27;
      _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "PluggedIn interval %@, Required charging interval %@", buf, 0x16u);
    }

    v28 = +[PowerUICECGridDataManager sharedInstance];
    v29 = [v28 shouldEngageForPluggedInTime:v20];

    if (v29)
    {
      v30 = +[PowerUICECGridDataManager sharedInstance];
      [v30 setupChargingTime:v22 forPluggedInTime:v20];

      v31 = MEMORY[0x277CCACA8];
      v32 = +[PowerUICECGridDataManager sharedInstance];
      cleanIntervals = [v32 cleanIntervals];
      v34 = [PowerUICECGridDataManager cleanIntervalsStringFromDates:cleanIntervals withIntervalDuration:900.0];
      v35 = [v31 stringWithFormat:@"Clean windows %@", v34];
    }

    else
    {
      v36 = self->_log;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v36, OS_LOG_TYPE_DEFAULT, "Throwing Gridmix notification", buf, 2u);
      }

      v32 = +[PowerUINotificationManager sharedInstance];
      v35 = @"Not enough variation in carbon emissions";
      v37 = [v32 postInternalCECNotificationWithID:@"engagedEvaluation" chargingStatus:1 information:@"Not enough variation in carbon emissions" shouldReplace:1];
    }
  }

  else
  {
    LOBYTE(v29) = 0;
    v35 = &stru_282D0B728;
  }

  v38 = MEMORY[0x277CCACA8];
  v39 = self->_debugStatus;
  debugStatus = [(PowerUICECPredictedTimeManager *)self->_pluggedInTimeManager debugStatus];
  v41 = [v38 stringWithFormat:@"%@\n%@\n%@", v39, debugStatus, v35];
  v42 = self->_debugStatus;
  self->_debugStatus = v41;

  if (!hasSufficientTimeForFullCharge)
  {
    deadline2 = [(PowerUICECPredictedTimeManager *)self->_pluggedInTimeManager deadline];
    [deadline2 timeIntervalSinceNow];
    if (v44 < 0.0)
    {
      date2 = [MEMORY[0x277CBEAA8] date];

      deadline2 = date2;
    }

    v46 = self->_log;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v46, OS_LOG_TYPE_DEFAULT, "Throwing Predictor notification", buf, 2u);
    }

    v47 = MEMORY[0x277CCACA8];
    v48 = [MEMORY[0x277CCA968] localizedStringFromDate:deadline2 dateStyle:1 timeStyle:1];
    v49 = [v47 stringWithFormat:@"Device not predicted to be plugged in for long enough (until %@)", v48];

    v50 = +[PowerUINotificationManager sharedInstance];
    v51 = [v50 postInternalCECNotificationWithID:@"engagedEvaluation" chargingStatus:1 information:v49 shouldReplace:1];
  }

  v52 = *MEMORY[0x277D85DE8];
  return hasSufficientTimeForFullCharge & v29;
}

- (BOOL)evaluateEngagementAndSetup
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(PowerUICECManager *)self isActiveRegion])
  {
    shouldEngageCEC = [(PowerUICECManager *)self shouldEngageCEC];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = shouldEngageCEC;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Should engage %d", buf, 8u);
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Should engage %d", shouldEngageCEC];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", self->_debugStatus, v5];
    debugStatus = self->_debugStatus;
    self->_debugStatus = v6;

    [(NSUserDefaults *)self->_defaults setObject:self->_debugStatus forKey:@"debugStatus"];
    if (shouldEngageCEC)
    {
      [(PowerUICECPredictedTimeManager *)self->_pluggedInTimeManager startAllMonitoring];
      deadline = [(PowerUICECPredictedTimeManager *)self->_pluggedInTimeManager deadline];
      userDeadline = self->_userDeadline;
      self->_userDeadline = deadline;

      defaults = self->_defaults;
      [(NSDate *)self->_userDeadline timeIntervalSinceReferenceDate];
      [(NSUserDefaults *)defaults setDouble:@"userDeadline" forKey:?];
      v11 = +[PowerUINotificationManager sharedInstance];
      v12 = +[PowerUICECGridDataManager sharedInstance];
      cleanIntervals = [v12 cleanIntervals];
      [v11 postInternalCECNotificationForChargingDates:cleanIntervals];
    }

    hasSufficientTimeForFullCharge = [(PowerUICECPredictedTimeManager *)self->_pluggedInTimeManager hasSufficientTimeForFullCharge];
    [(PowerUICECManager *)self analyticsCECEngagementEvaluation:shouldEngageCEC byPredictedTime:hasSufficientTimeForFullCharge byGridMix:shouldEngageCEC & hasSufficientTimeForFullCharge];
  }

  else
  {
    LOBYTE(shouldEngageCEC) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return shouldEngageCEC;
}

- (void)resetState
{
  v15 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Reset state", &v13, 2u);
  }

  v4 = self->_log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    debugStatus = self->_debugStatus;
    v13 = 138412290;
    v14 = debugStatus;
    _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEFAULT, "Debug: %@", &v13, 0xCu);
  }

  [(PowerUICECManager *)self handleNewDebugState:self->_debugStatus];
  v6 = self->_debugStatus;
  self->_debugStatus = 0;

  self->_firstChargingEvaluation = 1;
  [(NSUserDefaults *)self->_defaults setObject:self->_debugStatus forKey:@"debugStatus"];
  self->_isChargingPaused = 0;
  [(PowerUICECManager *)self updatePhaseFrom:self->_currentPhase to:0];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"userDeadline"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"pauseChargingCheckDate"];
  v7 = +[PowerUINotificationManager sharedInstance];
  [v7 removeCECNotifications];

  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"debugStatus"];
  [(PowerUICECPredictedTimeManager *)self->_pluggedInTimeManager resetState];
  v8 = +[PowerUICECGridDataManager sharedInstance];
  [v8 resetState];

  userDeadline = self->_userDeadline;
  self->_userDeadline = 0;

  pauseChargingCheckDate = self->_pauseChargingCheckDate;
  self->_pauseChargingCheckDate = 0;

  [(PowerUICECManager *)self clearAnalyticsDate];
  pluggedInDate = self->_pluggedInDate;
  self->_pluggedInDate = 0;

  self->_pluggedInBatteryLevel = -1;
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"pluggedInDateInterval"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"pluggedInBatteryLevel"];
  [(PowerUICECManager *)self unregisterTimer];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleNewDebugState:(id)state
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = [(NSUserDefaults *)self->_defaults objectForKey:@"debugStatusHistory"];
  v27 = v4;
  if (v4)
  {
    dictionary = [v4 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = dictionary;
  allKeys = [dictionary allKeys];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [allKeys countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        dateFormatter = [(PowerUICECManager *)self dateFormatter];
        v14 = [dateFormatter dateFromString:v12];

        [v14 timeIntervalSinceNow];
        if (v15 < -86400.0)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v33 = *&v14;
            v34 = 2112;
            v35 = v12;
            _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Removing entry for %@ %@", buf, 0x16u);
          }

          [v6 setObject:0 forKeyedSubscript:v12];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v9);
  }

  v17 = self->_pluggedInDate;
  [(NSDate *)v17 timeIntervalSinceNow];
  if (v18 <= -7200.0)
  {
    dateFormatter2 = [(PowerUICECManager *)self dateFormatter];
    v24 = [dateFormatter2 stringFromDate:v17];

    [v6 setObject:self->_debugStatus forKeyedSubscript:v24];
    v25 = self->_log;
    v20 = v27;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = *&v6;
      _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Debug history %@", buf, 0xCu);
    }

    [(NSUserDefaults *)self->_defaults setObject:v6 forKey:@"debugStatusHistory"];
  }

  else
  {
    v19 = self->_log;
    v20 = v27;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v19;
      [(NSDate *)v17 timeIntervalSinceNow];
      *buf = 134217984;
      v33 = v22 / 60.0;
      _os_log_impl(&dword_21B766000, v21, OS_LOG_TYPE_DEFAULT, "Skipping debug since device was pluggedIn for %lf mins", buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)dateFormatter
{
  if (dateFormatter_onceToken_0 != -1)
  {
    [PowerUICECManager dateFormatter];
  }

  v3 = dateFormatter_formatter_0;

  return v3;
}

uint64_t __34__PowerUICECManager_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = dateFormatter_formatter_0;
  dateFormatter_formatter_0 = v0;

  [dateFormatter_formatter_0 setDateStyle:1];
  v2 = dateFormatter_formatter_0;

  return [v2 setTimeStyle:3];
}

- (id)sessionEndCECAnalytics
{
  v107 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(NSUserDefaults *)self->_defaults objectForKey:@"cecEngagement"];
  if (!v4)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Engagement result missing", buf, 2u);
    }
  }

  bOOLValue = [v4 BOOLValue];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
  [dictionary setObject:v7 forKeyedSubscript:@"engaged"];

  v8 = [(NSUserDefaults *)self->_defaults objectForKey:@"cecEngagementPredictedTime"];

  if (v8)
  {
    [dictionary setObject:v8 forKeyedSubscript:@"engagedPredictedTime"];
  }

  v9 = [(NSUserDefaults *)self->_defaults objectForKey:@"cecEngagementGridMix"];

  if (v9)
  {
    [dictionary setObject:v9 forKeyedSubscript:@"engagedGridMix"];
  }

  v10 = [(NSUserDefaults *)self->_defaults objectForKey:@"cecDeadline"];
  if (!v10)
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "No CEC Deadline", buf, 2u);
    }
  }

  v12 = self->_pluggedInDate;
  [v10 timeIntervalSinceNow];
  v14 = v13;
  if (v13 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = -v14;
  }

  if (v15 % 0xE10 <= 0x707)
  {
    v16 = 0;
  }

  else
  {
    v16 = (v14 >> 63) | 1;
  }

  3600 = [MEMORY[0x277CCABB0] numberWithInteger:v16 + v13 / 3600];
  [dictionary setObject:3600 forKeyedSubscript:@"differenceHours"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:v14 / 60];
  [dictionary setObject:v18 forKeyedSubscript:@"differenceRaw"];

  if (v10)
  {
    v19 = MEMORY[0x277CCABB0];
    [v10 timeIntervalSinceDate:v12];
    v21 = [v19 numberWithInteger:v20 / 60];
    [dictionary setObject:v21 forKeyedSubscript:@"predictedPluggedInDuration"];
  }

  v92 = v12;
  [(NSDate *)v12 timeIntervalSinceNow];
  v23 = (v22 / -60.0);
  if (v23 <= 180)
  {
    v24 = MEMORY[0x277CBEC28];
  }

  else
  {
    v24 = MEMORY[0x277CBEC38];
  }

  [dictionary setObject:v24 forKeyedSubscript:@"longerSession"];
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:v23];
  [dictionary setObject:v25 forKeyedSubscript:@"pluggedInDuration"];

  if (self->_pluggedInBatteryLevel != -1)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [dictionary setObject:v26 forKeyedSubscript:@"pluggedInBatteryLevel"];
  }

  v27 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
  if (v27 < 100)
  {
    v28 = bOOLValue;
  }

  else
  {
    v28 = 0;
  }

  v29 = [MEMORY[0x277CCABB0] numberWithInteger:v27];
  [dictionary setObject:v29 forKeyedSubscript:@"pluggedOutBatteryLevel"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:v28];
  [dictionary setObject:v30 forKeyedSubscript:@"underchargeFromPrediction"];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:v28];
  [dictionary setObject:v31 forKeyedSubscript:@"undercharge"];

  v32 = [MEMORY[0x277CCABB0] numberWithInt:!self->_isCECEnabled];
  [dictionary setObject:v32 forKeyedSubscript:@"cecDisabled"];

  v33 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCECTemporarilyDisabled];
  [dictionary setObject:v33 forKeyedSubscript:@"cecTemporarilyDisabled"];

  if (!bOOLValue)
  {
    [dictionary setObject:&unk_282D4F120 forKeyedSubscript:@"pausedMinutes"];
    v79 = v12;
    goto LABEL_60;
  }

  v90 = v10;
  v91 = v9;
  v34 = [(NSUserDefaults *)self->_defaults objectForKey:@"cecChargingStatusTimeline"];
  v35 = self->_log;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = v34;
    _os_log_impl(&dword_21B766000, v35, OS_LOG_TYPE_DEFAULT, "Charging timeline %@", buf, 0xCu);
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [v34 allKeys];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v101 = 0u;
  v37 = [obj countByEnumeratingWithState:&v98 objects:v104 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v99;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v99 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v98 + 1) + 8 * i);
        dateFormatter = [(PowerUICECManager *)self dateFormatter];
        v43 = [dateFormatter dateFromString:v41];

        v44 = [v34 objectForKeyedSubscript:v41];
        [dictionary2 setObject:v44 forKeyedSubscript:v43];
      }

      v38 = [obj countByEnumeratingWithState:&v98 objects:v104 count:16];
    }

    while (v38);
  }

  v89 = v34;
  v45 = self->_log;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = dictionary2;
    _os_log_impl(&dword_21B766000, v45, OS_LOG_TYPE_DEFAULT, "Dates charging timeline %@", buf, 0xCu);
  }

  allKeys = [dictionary2 allKeys];
  v47 = [allKeys mutableCopy];

  v48 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
  v103 = v48;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
  [v47 sortUsingDescriptors:v49];

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v50 = v47;
  v51 = [v50 countByEnumeratingWithState:&v94 objects:v102 count:16];
  if (!v51)
  {
    v55 = 0.0;
    date = v50;
    v10 = v90;
LABEL_57:

    v80 = 0x277CCA000;
    v79 = v92;
    goto LABEL_59;
  }

  v52 = v51;
  v87 = v48;
  v88 = dictionary;
  v53 = 0;
  v54 = *v95;
  v55 = 0.0;
  do
  {
    for (j = 0; j != v52; ++j)
    {
      if (*v95 != v54)
      {
        objc_enumerationMutation(v50);
      }

      v57 = *(*(&v94 + 1) + 8 * j);
      v58 = [dictionary2 objectForKeyedSubscript:v57];
      bOOLValue2 = [v58 BOOLValue];

      if (bOOLValue2)
      {
        v60 = self->_log;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v106 = v57;
          _os_log_impl(&dword_21B766000, v60, OS_LOG_TYPE_DEFAULT, "Prev date %@", buf, 0xCu);
        }

        v61 = v57;
      }

      else
      {
        if (!v53)
        {
          continue;
        }

        [v57 timeIntervalSinceDate:v53];
        v63 = v62;
        v64 = MEMORY[0x277CCACA8];
        v65 = [MEMORY[0x277CCA968] localizedStringFromDate:v53 dateStyle:0 timeStyle:1];
        v66 = [MEMORY[0x277CCA968] localizedStringFromDate:v57 dateStyle:0 timeStyle:1];
        v67 = [v64 stringWithFormat:@"Paused from %@ to %@, ", v65, v66];

        v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", self->_debugStatus, v67];
        debugStatus = self->_debugStatus;
        self->_debugStatus = v68;

        v55 = v55 + v63;
        v61 = 0;
        v53 = v67;
      }

      v53 = v61;
    }

    v52 = [v50 countByEnumeratingWithState:&v94 objects:v102 count:16];
  }

  while (v52);

  if (v53)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v53];
    v72 = v71;
    v73 = MEMORY[0x277CCACA8];
    v74 = [MEMORY[0x277CCA968] localizedStringFromDate:v53 dateStyle:0 timeStyle:1];
    v75 = [MEMORY[0x277CCA968] localizedStringFromDate:date dateStyle:0 timeStyle:1];
    v76 = [v73 stringWithFormat:@"Paused from %@ to %@", v74, v75];

    v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", self->_debugStatus, v76];
    v78 = self->_debugStatus;
    self->_debugStatus = v77;

    v55 = v55 + v72;
    v48 = v87;
    dictionary = v88;
    v10 = v90;
    goto LABEL_57;
  }

  v48 = v87;
  dictionary = v88;
  v10 = v90;
  v80 = 0x277CCA000uLL;
  v79 = v92;
LABEL_59:
  v81 = [*(v80 + 2992) numberWithInteger:(v55 / 60.0)];
  [dictionary setObject:v81 forKeyedSubscript:@"pausedMinutes"];

  v82 = [MEMORY[0x277CCACA8] stringWithFormat:@"Paused for %d mins in total", (v55 / 60)];
  v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", self->_debugStatus, v82];
  v84 = self->_debugStatus;
  self->_debugStatus = v83;

  v9 = v91;
LABEL_60:

  v85 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)recordPowerLogCECState:(unint64_t)state
{
  v12 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  [dictionary setObject:v6 forKeyedSubscript:@"cecState"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = dictionary;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Writing to PowerLog %@", &v10, 0xCu);
  }

  v8 = objc_autoreleasePoolPush();
  PLLogRegisteredEvent();
  objc_autoreleasePoolPop(v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)recordPowerLogEvent
{
  v17 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  isChargingPaused = self->_isChargingPaused;
  currentPhase = self->_currentPhase;
  if (self->_isInternal)
  {
    v6 = [(NSUserDefaults *)self->_defaults objectForKey:@"powerLogPaused"];
    v7 = v6;
    if (v6)
    {
      isChargingPaused = [v6 BOOLValue];
    }

    v8 = [(NSUserDefaults *)self->_defaults objectForKey:@"powerLogStatus"];

    if (v8)
    {
      currentPhase = [v8 integerValue];
    }
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentState];
  [dictionary setObject:v9 forKeyedSubscript:@"cecState"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:currentPhase];
  [dictionary setObject:v10 forKeyedSubscript:@"status"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:isChargingPaused];
  [dictionary setObject:v11 forKeyedSubscript:@"isPaused"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = dictionary;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Writing to PowerLog %@", &v15, 0xCu);
  }

  v13 = objc_autoreleasePoolPush();
  PLLogRegisteredEvent();
  objc_autoreleasePoolPop(v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)recordLifetimeValues:(id)values
{
  valuesCopy = values;
  v5 = [valuesCopy objectForKeyedSubscript:@"engaged"];
  bOOLValue = [v5 BOOLValue];

  v7 = [valuesCopy objectForKeyedSubscript:@"cecDisabled"];
  bOOLValue2 = [v7 BOOLValue];

  v9 = [valuesCopy objectForKeyedSubscript:@"cecTemporarilyDisabled"];
  bOOLValue3 = [v9 BOOLValue];

  v11 = [valuesCopy objectForKeyedSubscript:@"pausedMinutes"];

  integerValue = [v11 integerValue];
  readLifetimeCECEngagementValues = [(PowerUICECManager *)self readLifetimeCECEngagementValues];
  v13 = [readLifetimeCECEngagementValues objectForKeyedSubscript:@"lifetimeSessions"];
  unsignedIntValue = [v13 unsignedIntValue];

  v15 = [readLifetimeCECEngagementValues objectForKeyedSubscript:@"lifetimeSessionsEnabled"];
  unsignedIntValue2 = [v15 unsignedIntValue];

  v17 = [readLifetimeCECEngagementValues objectForKeyedSubscript:@"lifetimeSessionsTempDisabled"];
  unsignedIntValue3 = [v17 unsignedIntValue];

  v19 = [readLifetimeCECEngagementValues objectForKeyedSubscript:@"lifetimeIdleDurationMinsForMode"];
  unsignedIntValue4 = [v19 unsignedIntValue];

  v21 = unsignedIntValue + bOOLValue;
  if (bOOLValue)
  {
    v22 = integerValue;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 + unsignedIntValue4;
  v24 = (((bOOLValue2 | bOOLValue3) & 1) == 0) + unsignedIntValue2;
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
  [PowerUISmartChargeUtilities setNumber:v25 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countCECSessions" inDomain:@"com.apple.smartcharging.topoffprotection"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
  [PowerUISmartChargeUtilities setNumber:v26 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countCECSessionsEnabled" inDomain:@"com.apple.smartcharging.topoffprotection"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntValue3 + bOOLValue3];
  [PowerUISmartChargeUtilities setNumber:v27 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countCECSessionsEnabledSessionsTempDisabled" inDomain:@"com.apple.smartcharging.topoffprotection"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
  [PowerUISmartChargeUtilities setNumber:v28 forPreferenceKey:@"com.apple.das.smartcharging.analytics.countTotalMinutesIdledInCEC" inDomain:@"com.apple.smartcharging.topoffprotection"];
}

- (id)readLifetimeCECEngagementValues
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countCECSessions" inDomain:@"com.apple.smartcharging.topoffprotection"];
  [dictionary setObject:v3 forKeyedSubscript:@"lifetimeSessions"];

  v4 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countCECSessionsEnabled" inDomain:@"com.apple.smartcharging.topoffprotection"];
  [dictionary setObject:v4 forKeyedSubscript:@"lifetimeSessionsEnabled"];

  v5 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countCECSessionsEnabledSessionsTempDisabled" inDomain:@"com.apple.smartcharging.topoffprotection"];
  [dictionary setObject:v5 forKeyedSubscript:@"lifetimeSessionsTempDisabled"];

  v6 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"com.apple.das.smartcharging.analytics.countTotalMinutesIdledInCEC" inDomain:@"com.apple.smartcharging.topoffprotection"];
  [dictionary setObject:v6 forKeyedSubscript:@"lifetimeIdleDurationMinsForMode"];

  return dictionary;
}

- (void)recordAnalytics
{
  v9 = *MEMORY[0x277D85DE8];
  sessionEndCECAnalytics = [(PowerUICECManager *)self sessionEndCECAnalytics];
  [(PowerUICECManager *)self recordLifetimeValues:sessionEndCECAnalytics];
  if ([sessionEndCECAnalytics count])
  {
    v6 = sessionEndCECAnalytics;
    AnalyticsSendEventLazy();
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = sessionEndCECAnalytics;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Reported CEC metrics to CoreAnalytics %@", buf, 0xCu);
  }

  [(PowerUICECManager *)self clearAnalyticsDate];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)clearAnalyticsDate
{
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"cecDeadline"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"cecEngagement"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"cecEngagementPredictedTime"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"cecEngagementGridMix"];
  defaults = self->_defaults;

  [(NSUserDefaults *)defaults removeObjectForKey:@"cecChargingStatusTimeline"];
}

- (void)handleCallback:(uint64_t *)a1 .cold.6(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_21B766000, a2, OS_LOG_TYPE_DEBUG, "Current Phase %lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end