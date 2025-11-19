@interface PowerUIDemoCECManager
+ (id)log;
+ (id)manager;
- (BOOL)evaluateEngagement;
- (BOOL)isEnabled;
- (BOOL)isWithinEngagedSession;
- (BOOL)shouldEngageDemoCEC;
- (BOOL)shouldReevaluateEngagement;
- (PowerUIDemoCECManager)init;
- (PowerUIDemoCECManager)initWithContextStore:(id)a3;
- (double)systemLoadEmissionSavings:(int64_t)a3;
- (double)totalWallEnergyOverSession;
- (id)chargeHistoryAnalytics:(BOOL)a3;
- (id)dateDictionaryFromDefaults:(id)a3;
- (id)sessionEndCECAnalytics;
- (void)checkPluggedInState;
- (void)clearAnalytics;
- (void)evaluateShouldChargeNow;
- (void)handleCallback:(id)a3;
- (void)handleDisengagement;
- (void)handleEmergencyCharge;
- (void)handleEngagement;
- (void)handleIsEnabledChange;
- (void)handlePauseChargingAboveMaxSOC:(int64_t)a3;
- (void)handlePowerUICECStateChange:(unint64_t)a3 withHandler:(id)a4;
- (void)loadState;
- (void)loadStateFromDefaults;
- (void)monitorBatteryNotifications;
- (void)monitorBatteryStateOfChargeChange;
- (void)monitorDemoCecIsEnabledChange;
- (void)monitorPluggedInChange;
- (void)recordAnalytics;
- (void)recordStartWallEnergyAccum;
- (void)recordSystemLoadAccum;
- (void)registerAnalyticsTimer:(id)a3 afterTime:(double)a4 withInterval:(double)a5;
- (void)registerCleanSegmentTimer;
- (void)registerCleanSegmentTimer:(id)a3 afterTime:(double)a4 withInterval:(double)a5;
- (void)registerReevaluateEngagementTimer:(id)a3 afterTime:(double)a4 withInterval:(double)a5;
- (void)registerUnpluggedTimer:(id)a3 afterTime:(double)a4 withInterval:(double)a5;
- (void)resetState;
- (void)setEnabledState:(BOOL)a3;
- (void)startSessionTimers;
- (void)startSystemLoadAccumTimer;
- (void)unregisterTimer:(id)a3;
- (void)updatePhaseFrom:(unint64_t)a3 to:(unint64_t)a4;
@end

@implementation PowerUIDemoCECManager

+ (id)log
{
  v2 = log_log_0;
  if (!log_log_0)
  {
    v3 = os_log_create("com.apple.powerui.democec", "");
    v4 = log_log_0;
    log_log_0 = v3;

    v2 = log_log_0;
  }

  return v2;
}

+ (id)manager
{
  if (+[PowerUICECUtilities isDemoCECSupported])
  {
    if (manager_onceToken != -1)
    {
      +[PowerUIDemoCECManager manager];
    }

    v2 = manager_manager;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __32__PowerUIDemoCECManager_manager__block_invoke()
{
  v0 = [PowerUIDemoCECManager alloc];
  v3 = [MEMORY[0x277CFE318] userContext];
  v1 = [(PowerUIDemoCECManager *)v0 initWithContextStore:v3];
  v2 = manager_manager;
  manager_manager = v1;
}

- (PowerUIDemoCECManager)init
{
  v3 = [MEMORY[0x277CFE318] userContext];
  v4 = [(PowerUIDemoCECManager *)self initWithContextStore:v3];

  return v4;
}

- (PowerUIDemoCECManager)initWithContextStore:(id)a3
{
  v56[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v54.receiver = self;
  v54.super_class = PowerUIDemoCECManager;
  v6 = [(PowerUIDemoCECManager *)&v54 init];
  if (v6)
  {
    v7 = [objc_opt_class() log];
    v8 = *(v6 + 3);
    *(v6 + 3) = v7;

    *(v6 + 10) = +[PowerUISmartChargeUtilities isInternalBuild];
    v55[0] = &unk_282D4E2A8;
    v55[1] = &unk_282D4E2C0;
    v56[0] = @"Not Evaluated";
    v56[1] = @"Evaluated and Not Engaged";
    v55[2] = &unk_282D4E2D8;
    v55[3] = &unk_282D4E2F0;
    v56[2] = @"Engaged";
    v56[3] = @"Emergency Charge";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
    v10 = *(v6 + 5);
    *(v6 + 5) = v9;

    v11 = +[PowerUIChargingController sharedInstance];
    v12 = *(v6 + 9);
    *(v6 + 9) = v11;

    v13 = +[PowerUICECGridDataManager sharedInstance];
    v14 = *(v6 + 20);
    *(v6 + 20) = v13;

    objc_storeStrong(v6 + 4, a3);
    v15 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.democec"];
    v16 = *(v6 + 8);
    *(v6 + 8) = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.powerui.democecmanager.queue", v17);
    v19 = *(v6 + 6);
    *(v6 + 6) = v18;

    v20 = MEMORY[0x277D85D38];
    v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v6 + 6));
    v22 = *(v6 + 10);
    *(v6 + 10) = v21;

    v23 = *(v6 + 10);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __46__PowerUIDemoCECManager_initWithContextStore___block_invoke;
    handler[3] = &unk_2782D3EA8;
    v24 = v6;
    v53 = v24;
    dispatch_source_set_event_handler(v23, handler);
    v25 = dispatch_source_create(v20, 0, 0, *(v6 + 6));
    v26 = v24[11];
    v24[11] = v25;

    v27 = v24[11];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __46__PowerUIDemoCECManager_initWithContextStore___block_invoke_2;
    v50[3] = &unk_2782D3EA8;
    v28 = v24;
    v51 = v28;
    dispatch_source_set_event_handler(v27, v50);
    v29 = dispatch_source_create(v20, 0, 0, *(v6 + 6));
    v30 = v28[12];
    v28[12] = v29;

    v31 = v28[12];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __46__PowerUIDemoCECManager_initWithContextStore___block_invoke_3;
    v48[3] = &unk_2782D3EA8;
    v32 = v28;
    v49 = v32;
    dispatch_source_set_event_handler(v31, v48);
    v33 = dispatch_source_create(v20, 0, 0, *(v6 + 6));
    v34 = v32[13];
    v32[13] = v33;

    v35 = v32[13];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __46__PowerUIDemoCECManager_initWithContextStore___block_invoke_4;
    v46[3] = &unk_2782D3EA8;
    v36 = v32;
    v47 = v36;
    dispatch_source_set_event_handler(v35, v46);
    [v36 loadState];
    [v36 setEnabledState:{objc_msgSend(v36, "isEnabled")}];
    if (v36[2] == 20)
    {
      [v36 startSessionTimers];
    }

    [v36 monitorBatteryNotifications];
    v37 = *(v6 + 6);
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __46__PowerUIDemoCECManager_initWithContextStore___block_invoke_5;
    v44 = &unk_2782D3EA8;
    v38 = v36;
    v45 = v38;
    dispatch_async(v37, &v41);
    [v38 monitorDemoCecIsEnabledChange];
  }

  v39 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)resetState
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Resetting state", v8, 2u);
  }

  self->_isChargingPaused = 0;
  [(PowerUIDemoCECManager *)self updatePhaseFrom:self->_currentPhase to:0];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"lastPauseChargingCheckDate"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"lastEngagementCheckDate"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"disabled"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"currentState"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"deviceWasRestarted"];
  [(PowerUICECGridDataManager *)self->_gridDataManager resetState];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"pluggedInDateInterval"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"pluggedInBatteryLevel"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"unpluggedDateInterval"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"requeryForecastTries"];
  pauseChargingCheckDate = self->_pauseChargingCheckDate;
  self->_pauseChargingCheckDate = 0;

  lastPluggedInDate = self->_lastPluggedInDate;
  self->_lastPluggedInDate = 0;

  lastUnpluggedDate = self->_lastUnpluggedDate;
  self->_lastUnpluggedDate = 0;

  lastEngagementCheckDate = self->_lastEngagementCheckDate;
  self->_lastEngagementCheckDate = 0;

  *&self->_pluggedInBatteryLevel = xmmword_21B8483C0;
  [(PowerUIDemoCECManager *)self clearAnalytics];
  [(PowerUIDemoCECManager *)self unregisterTimer:self->_timer];
  [(PowerUIDemoCECManager *)self unregisterTimer:self->_analyticsTimer];
  [(PowerUIDemoCECManager *)self unregisterTimer:self->_unpluggedTimer];
  [(PowerUIDemoCECManager *)self unregisterTimer:self->_queryForecastTimer];
}

- (void)loadStateFromDefaults
{
  v60 = *MEMORY[0x277D85DE8];
  self->_currentPhase = [(NSUserDefaults *)self->_defaults integerForKey:@"currentPhase"];
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"pluggedInDateInterval"];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CBEAA8];
    [v3 doubleValue];
    v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
    lastPluggedInDate = self->_lastPluggedInDate;
    self->_lastPluggedInDate = v6;
  }

  v8 = [(NSUserDefaults *)self->_defaults objectForKey:@"unpluggedDateInterval"];

  if (v8)
  {
    v9 = MEMORY[0x277CBEAA8];
    [v8 doubleValue];
    v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    lastUnpluggedDate = self->_lastUnpluggedDate;
    self->_lastUnpluggedDate = v10;
  }

  v12 = [(NSUserDefaults *)self->_defaults objectForKey:@"lastPauseChargingCheckDate"];

  if (v12)
  {
    v13 = MEMORY[0x277CBEAA8];
    [v12 doubleValue];
    v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
    pauseChargingCheckDate = self->_pauseChargingCheckDate;
    self->_pauseChargingCheckDate = v14;
  }

  v16 = [(NSUserDefaults *)self->_defaults objectForKey:@"lastEngagementCheckDate"];

  if (v16)
  {
    v17 = MEMORY[0x277CBEAA8];
    [v16 doubleValue];
    v18 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
    lastEngagementCheckDate = self->_lastEngagementCheckDate;
    self->_lastEngagementCheckDate = v18;
  }

  v20 = [(NSUserDefaults *)self->_defaults objectForKey:@"pluggedInBatteryLevel"];

  if (v20)
  {
    self->_pluggedInBatteryLevel = [v20 intValue];
  }

  v21 = [(NSUserDefaults *)self->_defaults objectForKey:@"requeryForecastTries"];

  if (v21)
  {
    v22 = [v21 intValue];
  }

  else
  {
    v22 = 0;
  }

  self->_requeryForecastTries = v22;
  v23 = [(NSUserDefaults *)self->_defaults objectForKey:@"currentState"];

  if (v23)
  {
    v24 = [v23 unsignedIntegerValue];
    self->_currentState = v24;
    self->_isDemoCECEnabled = v24 == 1;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v26 = MEMORY[0x277CCABB0];
    currentPhase = self->_currentPhase;
    v39 = log;
    v28 = [v26 numberWithUnsignedInteger:currentPhase];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentState];
    v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDemoCECEnabled];
    v31 = self->_lastPluggedInDate;
    v32 = self->_lastUnpluggedDate;
    v33 = self->_pauseChargingCheckDate;
    v34 = self->_lastEngagementCheckDate;
    pluggedInBatteryLevel = self->_pluggedInBatteryLevel;
    requeryForecastTries = self->_requeryForecastTries;
    v36 = [(PowerUICECGridDataManager *)self->_gridDataManager engagementDecisionReason];
    *buf = 138414594;
    v41 = v28;
    v42 = 2112;
    v43 = v29;
    v44 = 2112;
    v45 = v30;
    v46 = 2112;
    v47 = v31;
    v48 = 2112;
    v49 = v32;
    v50 = 2112;
    v51 = v33;
    v52 = 2048;
    v53 = pluggedInBatteryLevel;
    v54 = 2112;
    v55 = v34;
    v56 = 2048;
    v57 = requeryForecastTries;
    v58 = 2048;
    v59 = v36;
    _os_log_impl(&dword_21B766000, v39, OS_LOG_TYPE_DEFAULT, "DemoCECManager Loaded state from defaults. Current phase: %@, current state: %@, isDemoCECEnabled %@, lastPluggedInDate %@, lastUnpluggedDate %@, pauseChargingCheckDate %@, pluggedInBatteryLevel %ld, lastEngagementCheckDate %@, requeryForecastTries %ld, engagementDecisionReason %lu", buf, 0x66u);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)loadState
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [PowerUICECUtilities deviceWasRestartedWithDefaults:self->_defaults];
  defaults = self->_defaults;
  v5 = +[PowerUISmartChargeUtilities getCurrentBootSessionUUID];
  [(NSUserDefaults *)defaults setObject:v5 forKey:@"bootUUIDOnLastInit"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = log;
    v9 = [v7 numberWithBool:v3];
    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "DemoCECManager initializing. Was the device restarted: %@", &v15, 0xCu);
  }

  v10 = [(NSUserDefaults *)self->_defaults objectForKey:@"pluggedInDateInterval"];
  v11 = [(NSUserDefaults *)self->_defaults objectForKey:@"lastEngagementCheckDate"];
  v12 = v11;
  if (v10 && v11)
  {
    [(PowerUIDemoCECManager *)self loadStateFromDefaults];
    [(NSUserDefaults *)self->_defaults setBool:v3 forKey:@"deviceWasRestarted"];
  }

  else
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "Missing last plugged in date or last engagement check date in defaults. Starting from fresh state to allow for new evaluation.", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerCleanSegmentTimer
{
  v12 = *MEMORY[0x277D85DE8];
  [(PowerUICECGridDataManager *)self->_gridDataManager timeToNextCleanInterval];
  v4 = v3;
  if (v3 <= 0.0)
  {
    log = self->_log;
    v8 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v4 == 0.0)
    {
      if (v8)
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "No future clean intervals: not registering clean-segment timer.", &v10, 2u);
      }
    }

    else
    {
      if (v8)
      {
        v10 = 134217984;
        v11 = 0x4014000000000000;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Unable to compute time until next clean session. Defaulting to registering %.0f minute timer.", &v10, 0xCu);
      }

      [(PowerUIDemoCECManager *)self registerCleanSegmentTimer:self->_timer afterTime:300.0 withInterval:300.0];
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    timer = self->_timer;
    v6 = *MEMORY[0x277D85DE8];

    [PowerUIDemoCECManager registerCleanSegmentTimer:"registerCleanSegmentTimer:afterTime:withInterval:" afterTime:timer withInterval:?];
  }
}

- (void)registerCleanSegmentTimer:(id)a3 afterTime:(double)a4 withInterval:(double)a5
{
  v8 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIDemoCECManager registerCleanSegmentTimer:a4 afterTime:? withInterval:?];
  }

  v10 = a5 * 1000000000.0;
  if (a5 == 1.84467441e19)
  {
    v10 = 1.84467441e19;
  }

  v11 = v10;
  v12 = dispatch_walltime(0, (a4 * 1000000000.0));
  dispatch_source_set_timer(v8, v12, v11, 0xDF8475800uLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PowerUIDemoCECManager_registerCleanSegmentTimer_afterTime_withInterval___block_invoke;
  block[3] = &unk_2782D3EA8;
  v16 = v8;
  v13 = registerCleanSegmentTimer_afterTime_withInterval__timerToken;
  v14 = v8;
  if (v13 != -1)
  {
    dispatch_once(&registerCleanSegmentTimer_afterTime_withInterval__timerToken, block);
  }
}

- (void)registerReevaluateEngagementTimer:(id)a3 afterTime:(double)a4 withInterval:(double)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v17 = a4 / 60.0;
    v18 = 2048;
    v19 = a5 / 60.0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Registering timer to re-evaluate engagement in the current session for waitTime: %.0f minutes and interval: %.0f minutes", buf, 0x16u);
  }

  v10 = dispatch_walltime(0, (a4 * 1000000000.0));
  dispatch_source_set_timer(v8, v10, (a5 * 1000000000.0), 0xDF8475800uLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__PowerUIDemoCECManager_registerReevaluateEngagementTimer_afterTime_withInterval___block_invoke;
  block[3] = &unk_2782D3EA8;
  v15 = v8;
  v11 = registerReevaluateEngagementTimer_afterTime_withInterval__timerToken;
  v12 = v8;
  if (v11 != -1)
  {
    dispatch_once(&registerReevaluateEngagementTimer_afterTime_withInterval__timerToken, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerAnalyticsTimer:(id)a3 afterTime:(double)a4 withInterval:(double)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v17 = a4 / 60.0;
    v18 = 2048;
    v19 = a5 / 60.0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Registering analytics timer for waitTime: %.0f minutes and interval: %.0f minutes", buf, 0x16u);
  }

  v10 = dispatch_walltime(0, (a4 * 1000000000.0));
  dispatch_source_set_timer(v8, v10, (a5 * 1000000000.0), 0xDF8475800uLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PowerUIDemoCECManager_registerAnalyticsTimer_afterTime_withInterval___block_invoke;
  block[3] = &unk_2782D3EA8;
  v15 = v8;
  v11 = registerAnalyticsTimer_afterTime_withInterval__timerToken;
  v12 = v8;
  if (v11 != -1)
  {
    dispatch_once(&registerAnalyticsTimer_afterTime_withInterval__timerToken, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerUnpluggedTimer:(id)a3 afterTime:(double)a4 withInterval:(double)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v17 = a4 / 60.0;
    v18 = 2048;
    v19 = a5 / 60.0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Registering unplugged check timer for waitTime: %.0f minutes and interval: %.0f minutes", buf, 0x16u);
  }

  v10 = dispatch_walltime(0, (a4 * 1000000000.0));
  dispatch_source_set_timer(v8, v10, (a5 * 1000000000.0), 0xDF8475800uLL);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PowerUIDemoCECManager_registerUnpluggedTimer_afterTime_withInterval___block_invoke;
  block[3] = &unk_2782D3EA8;
  v15 = v8;
  v11 = registerUnpluggedTimer_afterTime_withInterval__timerToken;
  v12 = v8;
  if (v11 != -1)
  {
    dispatch_once(&registerUnpluggedTimer_afterTime_withInterval__timerToken, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)unregisterTimer:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [PowerUIDemoCECManager unregisterTimer:];
  }

  dispatch_source_set_timer(v4, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (BOOL)shouldEngageDemoCEC
{
  v18 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Evaluating engagement for current plug-in.", &v14, 2u);
  }

  v4 = [(PowerUICECGridDataManager *)self->_gridDataManager shouldEngageForPluggedInTime:28800.0];
  if (v4)
  {
    if (+[PowerUISmartChargeUtilities isiPhone])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    [(PowerUICECGridDataManager *)self->_gridDataManager setupDemoChargingTimeOverForecastHorizon:v5 withKChargingSegments:28800.0];
  }

  else
  {
    v6 = [(PowerUICECGridDataManager *)self->_gridDataManager balancingAuthorityName];
    v7 = [(PowerUICECGridDataManager *)self->_gridDataManager engagementDecisionReason];
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218242;
      v15 = v7;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Evaluated and decided not to engage: no forecast available or not enough variation in grid. (engagementDecisionReason: %lu, balancingAuthority: %@)", &v14, 0x16u);
    }
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  lastEngagementCheckDate = self->_lastEngagementCheckDate;
  self->_lastEngagementCheckDate = v9;

  defaults = self->_defaults;
  [(NSDate *)self->_lastEngagementCheckDate timeIntervalSinceReferenceDate];
  [(NSUserDefaults *)defaults setDouble:@"lastEngagementCheckDate" forKey:?];
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)shouldReevaluateEngagement
{
  v21 = *MEMORY[0x277D85DE8];
  lastEngagementCheckDate = self->_lastEngagementCheckDate;
  if (!lastEngagementCheckDate)
  {
    goto LABEL_6;
  }

  [(NSDate *)lastEngagementCheckDate timeIntervalSinceNow];
  if (v4 >= -28800.0)
  {
    result = 0;
    goto LABEL_13;
  }

  if (self->_lastEngagementCheckDate)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_lastEngagementCheckDate;
      v7 = log;
      [(NSDate *)v6 timeIntervalSinceNow];
      v15 = 134218498;
      v8 = self->_lastEngagementCheckDate;
      v16 = v9 / -3600.0;
      v17 = 2112;
      v18 = v8;
      v19 = 2048;
      v20 = 0x4020000000000000;
      _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "Last evaluated engagement %.0lf hours ago (at: %@). Re-evaluating whether or not to engage for the next %.0lf hours.", &v15, 0x20u);
    }
  }

  else
  {
LABEL_6:
    v10 = self->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = 8.0;
      _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "No previous evaluation check date set. Re-evaluating whether or not to engage for the next %.0lf hours.", &v15, 0xCu);
    }
  }

  v11 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecEngagement"];
  v12 = v11;
  if (self->_lastEngagementCheckDate && v11)
  {
    [(PowerUIDemoCECManager *)self recordAnalytics];
  }

  [(PowerUIDemoCECManager *)self resetState];

  result = 1;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)evaluateEngagement
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUIDemoCECManager *)self shouldEngageDemoCEC];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Should engage %d", v7, 8u);
  }

  [(PowerUIDemoCECManager *)self recordEngagementEvaluation:v3];
  [(PowerUIDemoCECManager *)self recordStartWallEnergyAccum];
  if (v3)
  {
    [(PowerUIDemoCECManager *)self recordSystemLoadAccum];
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)updatePhaseFrom:(unint64_t)a3 to:(unint64_t)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
  v8 = [PowerUISmartChargeUtilities isPluggedInWithContext:self->_context];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    phaseDescriptions = self->_phaseDescriptions;
    v11 = MEMORY[0x277CCABB0];
    v12 = log;
    v13 = [v11 numberWithUnsignedInteger:a3];
    v14 = [(NSDictionary *)phaseDescriptions objectForKeyedSubscript:v13];
    v15 = self->_phaseDescriptions;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v17 = [(NSDictionary *)v15 objectForKeyedSubscript:v16];
    v19 = 134219266;
    v20 = a3;
    v21 = 2048;
    v22 = a4;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v17;
    v27 = 2048;
    v28 = v7;
    v29 = 1024;
    v30 = v8;
    _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "Demo CEC Phase update from %lu to %lu (%@ --> %@); BatteryLevel %ld, PluggedIn %d", &v19, 0x3Au);
  }

  self->_currentPhase = a4;
  [(NSUserDefaults *)self->_defaults setInteger:a4 forKey:@"currentPhase"];
  if (self->_currentPhase != 20)
  {
    [(PowerUIChargingController *)self->_chargingController clearChargeLimitForLimitType:4];
    self->_isChargingPaused = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)startSessionTimers
{
  [(PowerUIDemoCECManager *)self registerCleanSegmentTimer];

  [(PowerUIDemoCECManager *)self startSystemLoadAccumTimer];
}

- (void)handleEngagement
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Engaging for the current session.", v4, 2u);
  }

  [(PowerUIDemoCECManager *)self updatePhaseFrom:self->_currentPhase to:20];
  [(PowerUIDemoCECManager *)self evaluateShouldChargeNow];
}

- (void)handleEmergencyCharge
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Enabling emergency charge.", v4, 2u);
  }

  [(PowerUIDemoCECManager *)self updatePhaseFrom:self->_currentPhase to:30];
  [(PowerUIDemoCECManager *)self recordChargingStateChange:1 atBatteryLevel:[PowerUISmartChargeUtilities duringCleanInterval:"currentBatteryLevelWithContext:" currentBatteryLevelWithContext:?], 0];
  [(PowerUIDemoCECManager *)self unregisterTimer:self->_timer];
}

- (void)handlePauseChargingAboveMaxSOC:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = 90;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Pausing charging while SOC is above %ld.", &v15, 0xCu);
  }

  isChargingPaused = self->_isChargingPaused;
  [(PowerUIChargingController *)self->_chargingController setChargeLimitTo:a3 forLimitType:4];
  self->_isChargingPaused = 1;
  if (!isChargingPaused)
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = v7;
      v10 = [v8 numberWithBool:1];
      v11 = [MEMORY[0x277CCABB0] numberWithInt:!self->_isChargingPaused];
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Demo CEC changed charging states. Previously was charging = %@, now is charging = %@.", &v15, 0x16u);
    }

    v12 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
    if ([(PowerUIDemoCECManager *)self isEngaged])
    {
      v13 = [(PowerUICECGridDataManager *)self->_gridDataManager shouldChargeNow];
    }

    else
    {
      v13 = 0;
    }

    [(PowerUIDemoCECManager *)self recordChargingStateChange:!self->_isChargingPaused atBatteryLevel:v12 duringCleanInterval:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleDisengagement
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Exiting from a session previously engaged/deemed eligible", buf, 2u);
  }

  v4 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecEngagement"];
  v5 = v4;
  if (self->_lastEngagementCheckDate)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "Sending analytics for session.", v8, 2u);
    }

    [(PowerUIDemoCECManager *)self recordAnalytics];
  }

  [(PowerUIDemoCECManager *)self resetState];
}

- (void)evaluateShouldChargeNow
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithBool:a2 & 1];
  OUTLINED_FUNCTION_3_0(&dword_21B766000, v6, v7, "Charging state changed: %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleCallback:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
  v6 = [PowerUISmartChargeUtilities isPluggedInWithContext:self->_context];
  v7 = [(PowerUICECGridDataManager *)self->_gridDataManager engagementDecisionReason];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    currentPhase = self->_currentPhase;
    *v47 = 138413314;
    *&v47[4] = v4;
    *&v47[12] = 2048;
    *&v47[14] = currentPhase;
    *&v47[22] = 2048;
    v48 = v7;
    v49 = 2048;
    v50 = v5;
    v51 = 1024;
    v52 = v6;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Evaluating phase. Trigger: %@ (CurrentPhase %lu engagementDecisionReason %lu batteryLevel %ld, isPluggedIn %d)", v47, 0x30u);
  }

  v10 = [v4 isEqualToString:@"Query forecast timer"];
  v11 = self->_currentPhase;
  if (v11 > 19)
  {
    if (v11 == 20)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [PowerUIDemoCECManager handleCallback:];
      }

      if (v5 <= 50)
      {
        v30 = self->_log;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 134218240;
          *&v47[4] = v5;
          *&v47[12] = 2048;
          *&v47[14] = 50;
          v31 = "SOC fell below acceptable limit (batteryLevel = %ld <= kEmergencyChargeSocStartThreshold = %ld). Deciding to emergency charge regardless of grid.";
          goto LABEL_47;
        }

LABEL_59:
        [(PowerUIDemoCECManager *)self handleEmergencyCharge:*v47];
        goto LABEL_105;
      }

      if ([(PowerUIDemoCECManager *)self shouldReevaluateEngagement]&& [(PowerUIDemoCECManager *)self evaluateEngagement])
      {
        v25 = self->_log;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 0;
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if (v5 < 90)
      {
        [(PowerUIDemoCECManager *)self evaluateShouldChargeNow];
        goto LABEL_105;
      }

      v38 = self->_log;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    if (v11 != 30)
    {
LABEL_32:
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUIDemoCECManager handleCallback:];
      }

      goto LABEL_105;
    }

    v19 = self->_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 0;
      _os_log_impl(&dword_21B766000, v19, OS_LOG_TYPE_DEFAULT, "Emergency charging", v47, 2u);
    }

    v20 = self->_log;
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v5 < 75)
    {
      if (v21)
      {
        *v47 = 134218240;
        *&v47[4] = v5;
        *&v47[12] = 2048;
        *&v47[14] = 75;
        _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Still emergency charging. Not yet at acceptable SOC limit (= batteryLevel %ld < kEmergencyChargeSocEndThreshold = %ld).", v47, 0x16u);
      }

      if (![(PowerUIDemoCECManager *)self shouldReevaluateEngagement])
      {
        goto LABEL_105;
      }

      v32 = [(PowerUIDemoCECManager *)self evaluateEngagement];
      v25 = self->_log;
      v33 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (v32)
      {
        if (v33)
        {
          *v47 = 0;
          _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Evaluated and decided to engage", v47, 2u);
        }

        [(PowerUIDemoCECManager *)self handleEngagement];
        [(PowerUIDemoCECManager *)self startSessionTimers];
        goto LABEL_59;
      }

      if (!v33)
      {
        goto LABEL_104;
      }

      *v47 = 0;
    }

    else
    {
      if (v21)
      {
        *v47 = 134218240;
        *&v47[4] = v5;
        *&v47[12] = 2048;
        *&v47[14] = 75;
        _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Charged to acceptable limit (= batteryLevel %ld >= kEmergencyChargeSocEndThreshold = %ld). Ending emergency charge.", v47, 0x16u);
      }

      v22 = [(PowerUIDemoCECManager *)self isWithinEngagedSession];
      v23 = self->_log;
      if (v22)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 134217984;
          *&v47[4] = 0x4020000000000000;
          _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "Previously determined engagement opportunity before emergency charging. Checking if we're still within the %.0lf hour session.", v47, 0xCu);
        }

        if (![(PowerUIDemoCECManager *)self shouldReevaluateEngagement])
        {
          [(PowerUIDemoCECManager *)self handleEngagement];
          goto LABEL_105;
        }

        v24 = [(PowerUIDemoCECManager *)self evaluateEngagement];
        v25 = self->_log;
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          if (v26)
          {
            *v47 = 0;
LABEL_78:
            _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Evaluated and decided to engage", v47, 2u);
          }

LABEL_79:
          [(PowerUIDemoCECManager *)self handleEngagement];
          [(PowerUIDemoCECManager *)self startSessionTimers];
          goto LABEL_105;
        }

        if (v26)
        {
          *v47 = 0;
          goto LABEL_103;
        }

LABEL_104:
        [(PowerUIDemoCECManager *)self updatePhaseFrom:self->_currentPhase to:10, *v47];
        goto LABEL_105;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUIDemoCECManager handleCallback:];
      }

      [(PowerUIDemoCECManager *)self clearAnalytics];
      v41 = [(PowerUIDemoCECManager *)self evaluateEngagement];
      v25 = self->_log;
      v42 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (v41)
      {
        if (v42)
        {
          *v47 = 0;
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if (!v42)
      {
        goto LABEL_104;
      }

      *v47 = 0;
    }

LABEL_103:
    _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Evaluated and decided not to engage", v47, 2u);
    goto LABEL_104;
  }

  if (v11)
  {
    if (v11 == 10)
    {
      if (v7 == 1)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        if (![(PowerUIDemoCECManager *)self evaluateEngagement])
        {
          gridDataManager = self->_gridDataManager;
          ++self->_requeryForecastTries;
          v14 = [(PowerUICECGridDataManager *)gridDataManager engagementDecisionReason];
          if (v14 != 1)
          {
            goto LABEL_15;
          }

          v15 = self->_log;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            requeryForecastTries = self->_requeryForecastTries;
            *v47 = 134217984;
            *&v47[4] = requeryForecastTries;
            _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "Tried to requery forecast for the %ld time, but still missing forecast.", v47, 0xCu);
          }

          if (self->_requeryForecastTries >= 3)
          {
LABEL_15:
            v17 = self->_log;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = self->_requeryForecastTries;
              *v47 = 134218240;
              *&v47[4] = v18;
              *&v47[12] = 1024;
              *&v47[14] = v14 == 1;
              _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "No longer re-querying forecast. requeryForecastTries: %ld , stillMissingForecast: %d", v47, 0x12u);
            }

            [(PowerUIDemoCECManager *)self unregisterTimer:self->_queryForecastTimer];
          }

          goto LABEL_105;
        }

LABEL_50:
        v25 = self->_log;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 0;
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if ([(PowerUIDemoCECManager *)self shouldReevaluateEngagement]&& [(PowerUIDemoCECManager *)self evaluateEngagement])
      {
        goto LABEL_50;
      }

      v36 = self->_log;
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (v5 >= 90)
      {
        if (v37)
        {
          goto LABEL_98;
        }

        goto LABEL_99;
      }

      if (!v37)
      {
        goto LABEL_105;
      }

      *v47 = 0;
      v35 = "Remaining in evaluated and not-engaged phase.";
      v43 = v36;
LABEL_83:
      _os_log_impl(&dword_21B766000, v43, OS_LOG_TYPE_DEFAULT, v35, v47, 2u);
      goto LABEL_105;
    }

    goto LABEL_32;
  }

  if (!self->_isDemoCECEnabled)
  {
    v34 = self->_log;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_105;
    }

    *v47 = 0;
    v35 = "Demo CEC is either not supported or disabled. Skipping";
LABEL_82:
    v43 = v34;
    goto LABEL_83;
  }

  if (!v6)
  {
    v34 = self->_log;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_105;
    }

    *v47 = 0;
    v35 = "Device no longer plugged into a power source.";
    goto LABEL_82;
  }

  v27 = [(PowerUIDemoCECManager *)self evaluateEngagement];
  v28 = self->_log;
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (v29)
    {
      *v47 = 0;
      _os_log_impl(&dword_21B766000, v28, OS_LOG_TYPE_DEFAULT, "Evaluated and decided to engage", v47, 2u);
    }

    [(PowerUIDemoCECManager *)self handleEngagement];
    [(PowerUIDemoCECManager *)self startSessionTimers];
    if (v5 <= 50)
    {
      v30 = self->_log;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 134218240;
        *&v47[4] = v5;
        *&v47[12] = 2048;
        *&v47[14] = 50;
        v31 = "SOC is below acceptable limit (batteryLevel = %ld <= kEmergencyChargeSocStartThreshold = %ld). Deciding to emergency charge regardless of grid.";
LABEL_47:
        _os_log_impl(&dword_21B766000, v30, OS_LOG_TYPE_DEFAULT, v31, v47, 0x16u);
        goto LABEL_59;
      }

      goto LABEL_59;
    }

    if (v5 < 90)
    {
      goto LABEL_105;
    }

    v38 = self->_log;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
LABEL_71:
      *v47 = 134218240;
      *&v47[4] = v5;
      *&v47[12] = 2048;
      *&v47[14] = 90;
      _os_log_impl(&dword_21B766000, v38, OS_LOG_TYPE_DEFAULT, "SOC is above upper charge limit (batteryLevel = %ld >= kUpperChargeLimit = %ld). Pausing charging regardless of grid.", v47, 0x16u);
    }

LABEL_72:
    v39 = self;
    v40 = 50;
LABEL_100:
    [(PowerUIDemoCECManager *)v39 handlePauseChargingAboveMaxSOC:v40, *v47, *&v47[8]];
    goto LABEL_105;
  }

  if (v29)
  {
    *v47 = 0;
    _os_log_impl(&dword_21B766000, v28, OS_LOG_TYPE_DEFAULT, "Evaluated and decided not to engage", v47, 2u);
  }

  [(PowerUIDemoCECManager *)self updatePhaseFrom:self->_currentPhase to:10];
  if ([(PowerUICECGridDataManager *)self->_gridDataManager engagementDecisionReason]== 1)
  {
    [(PowerUIDemoCECManager *)self registerReevaluateEngagementTimer:self->_queryForecastTimer afterTime:600.0 withInterval:600.0];
  }

  if (v5 >= 90)
  {
    v36 = self->_log;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
LABEL_98:
      *v47 = 134218240;
      *&v47[4] = v5;
      *&v47[12] = 2048;
      *&v47[14] = 90;
      _os_log_impl(&dword_21B766000, v36, OS_LOG_TYPE_DEFAULT, "SOC is above upper charge limit (batteryLevel = %ld >= kUpperChargeLimit = %ld). Pausing charging regardless of grid.", v47, 0x16u);
    }

LABEL_99:
    v39 = self;
    v40 = 90;
    goto LABEL_100;
  }

LABEL_105:
  v44 = self->_log;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = self->_currentPhase;
    *v47 = 134217984;
    *&v47[4] = v45;
    _os_log_impl(&dword_21B766000, v44, OS_LOG_TYPE_DEFAULT, "Current Phase is now %lu", v47, 0xCu);
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)handlePowerUICECStateChange:(unint64_t)a3 withHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = log;
    v10 = [v8 numberWithUnsignedInteger:a3];
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Demo CEC State: %@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__PowerUIDemoCECManager_handlePowerUICECStateChange_withHandler___block_invoke;
  block[3] = &unk_2782D4378;
  v15 = v6;
  v16 = a3;
  block[4] = self;
  v12 = v6;
  dispatch_async(queue, block);

  v13 = *MEMORY[0x277D85DE8];
}

void __65__PowerUIDemoCECManager_handlePowerUICECStateChange_withHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2 >= 2)
  {
    v4 = *(a1 + 40);
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:1 userInfo:0];
    (*(v4 + 16))(v4, 0);
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v3 = *(a1 + 32);
    if (v2 == 1)
    {
      *(v3 + 112) = 1;
      *(*(a1 + 32) + 9) = 1;
      [*(*(a1 + 32) + 64) removeObjectForKey:@"disabled"];
    }

    else
    {
      *(v3 + 112) = 0;
      *(*(a1 + 32) + 9) = 0;
      [*(*(a1 + 32) + 64) setBool:1 forKey:@"disabled"];
    }

    v6 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x277CCABB0];
      v8 = *(*(a1 + 32) + 112);
      v9 = v6;
      v10 = [v7 numberWithUnsignedInteger:v8];
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Demo CEC State set to: %@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 64) setInteger:*(*(a1 + 32) + 112) forKey:@"currentState"];
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) handleCallback:@"User state setting"];
    v11 = *MEMORY[0x277D85DE8];
  }
}

- (void)monitorDemoCecIsEnabledChange
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  v4 = *MEMORY[0x277D29548];
  v5 = [MEMORY[0x277CCABD8] mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__PowerUIDemoCECManager_monitorDemoCecIsEnabledChange__block_invoke;
  v7[3] = &unk_2782D43A0;
  v7[4] = self;
  v6 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:v7];
}

void __54__PowerUIDemoCECManager_monitorDemoCecIsEnabledChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PowerUIDemoCECManager_monitorDemoCecIsEnabledChange__block_invoke_2;
  block[3] = &unk_2782D3EA8;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)startSystemLoadAccumTimer
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 60;
  _os_log_error_impl(&dword_21B766000, log, OS_LOG_TYPE_ERROR, "Unable to get the current interval start time. Setting a default timer starting %ld mins from now", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)monitorBatteryStateOfChargeChange
{
  v25[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CFE360];
  v4 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v5 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v6 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v7 = MEMORY[0x277CBEC38];
  v8 = [v3 predicateForKeyPath:v4 withFormat:@"SELF.%@.value.externalConnected = %@ AND SELF.%@.value <= %@", v5, MEMORY[0x277CBEC38], v6, &unk_282D4E308];

  v9 = MEMORY[0x277CFE360];
  v10 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v11 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v12 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v13 = [v9 predicateForKeyPath:v10 withFormat:@"SELF.%@.value.externalConnected = %@ AND SELF.%@.value = %@", v11, v7, v12, &unk_282D4E320];

  v14 = MEMORY[0x277CFE360];
  v15 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v16 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v17 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v18 = [v14 predicateForKeyPath:v15 withFormat:@"SELF.%@.value.externalConnected = %@ AND SELF.%@.value >= %@", v16, v7, v17, &unk_282D4E338];

  v19 = MEMORY[0x277CFE360];
  v25[0] = v8;
  v25[1] = v13;
  v25[2] = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v21 = [v19 orPredicateWithSubpredicates:v20];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __58__PowerUIDemoCECManager_monitorBatteryStateOfChargeChange__block_invoke;
  v24[3] = &unk_2782D4138;
  v24[4] = self;
  v22 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.powerui.democec.battery" contextualPredicate:v21 clientIdentifier:@"com.apple.powerui.democec.batterySocLevel" callback:v24];
  [(_CDLocalContext *)self->_context registerCallback:v22];

  v23 = *MEMORY[0x277D85DE8];
}

void __58__PowerUIDemoCECManager_monitorBatteryStateOfChargeChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__PowerUIDemoCECManager_monitorBatteryStateOfChargeChange__block_invoke_2;
  block[3] = &unk_2782D3EA8;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)monitorPluggedInChange
{
  v3 = MEMORY[0x277CFE360];
  v4 = [MEMORY[0x277CFE338] keyPathForPluginStatus];
  v5 = [v3 predicateForChangeAtKeyPath:v4];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__PowerUIDemoCECManager_monitorPluggedInChange__block_invoke;
  v7[3] = &unk_2782D4138;
  v7[4] = self;
  v6 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.powerui.democec.unplug" contextualPredicate:v5 clientIdentifier:@"com.apple.powerui.democec.pluggedIn" callback:v7];
  [(_CDLocalContext *)self->_context registerCallback:v6];
}

void __47__PowerUIDemoCECManager_monitorPluggedInChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PowerUIDemoCECManager_monitorPluggedInChange__block_invoke_2;
  block[3] = &unk_2782D3EA8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __47__PowerUIDemoCECManager_monitorPluggedInChange__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [PowerUISmartChargeUtilities isPluggedInWithContext:*(*(a1 + 32) + 32)];
  v3 = +[PowerUICECUtilities resetStateOnUnplug];
  v4 = *(a1 + 32);
  if (v2)
  {
    v5 = v4[3];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v30) = 1;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Plugged In %d", buf, 8u);
    }

    v6 = *(a1 + 32);
    if (v6[15] == 0 || v3)
    {
      v7 = v6[4];
      v8 = [MEMORY[0x277CFE338] keyPathForPluginStatus];
      v9 = [v7 lastModifiedDateForContextualKeyPath:v8];

      v10 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v9;
        _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Setting lastPluggedIn date to %@", buf, 0xCu);
      }

      objc_storeStrong((*(a1 + 32) + 120), v9);
      v11 = *(a1 + 32);
      v12 = *(v11 + 64);
      [*(v11 + 120) timeIntervalSinceReferenceDate];
      [v12 setDouble:@"pluggedInDateInterval" forKey:?];
      v13 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:*(*(a1 + 32) + 32)];
      v14 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v30 = v13;
        _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "Setting lastPluggedIn battery level to %ld", buf, 0xCu);
      }

      *(*(a1 + 32) + 144) = v13;
      [*(*(a1 + 32) + 64) setInteger:*(*(a1 + 32) + 144) forKey:@"pluggedInBatteryLevel"];
LABEL_17:

      goto LABEL_18;
    }

    v15 = v6[3];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(a1 + 32) + 120);
      *buf = 138412290;
      v30 = v16;
      _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "Plugged in after a temporary unplug. Keeping lastPluggedInDate unchanged (%@).", buf, 0xCu);
    }
  }

  else
  {
    if (!v3)
    {
      v17 = v4[4];
      v18 = [MEMORY[0x277CFE338] keyPathForPluginStatus];
      v19 = [v17 lastModifiedDateForContextualKeyPath:v18];

      v20 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v19;
        _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Setting lastUnplugged date to %@", buf, 0xCu);
      }

      v21 = *(a1 + 32);
      v22 = *(v21 + 128);
      *(v21 + 128) = v19;
      v9 = v19;

      v23 = *(a1 + 32);
      v24 = *(v23 + 64);
      [*(v23 + 128) timeIntervalSinceReferenceDate];
      [v24 setDouble:@"unpluggedDateInterval" forKey:?];
      [*(a1 + 32) registerUnpluggedTimer:*(*(a1 + 32) + 80) afterTime:1800.0 withInterval:1.84467441e19];
      goto LABEL_17;
    }

    [v4 resetState];
  }

LABEL_18:
  v25 = *(a1 + 32);
  v26 = *(v25 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PowerUIDemoCECManager_monitorPluggedInChange__block_invoke_133;
  block[3] = &unk_2782D3EA8;
  block[4] = v25;
  dispatch_async(v26, block);
  v27 = *MEMORY[0x277D85DE8];
}

- (void)monitorBatteryNotifications
{
  [(PowerUIDemoCECManager *)self monitorBatteryStateOfChargeChange];

  [(PowerUIDemoCECManager *)self monitorPluggedInChange];
}

- (void)checkPluggedInState
{
  v14 = *MEMORY[0x277D85DE8];
  if (![PowerUISmartChargeUtilities isPluggedInWithContext:self->_context])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x277CBEAA8];
      v5 = log;
      v6 = [v4 now];
      v8 = 134218498;
      v9 = 0x403E000000000000;
      v10 = 2112;
      v11 = @"pluggedInDateInterval";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Device no longer plugged into a power source after waiting %.0f mins (lastUnpluggedDate: %@,  current time: %@). Disengaging and resetting state.", &v8, 0x20u);
    }

    [(PowerUIDemoCECManager *)self handleDisengagement];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setEnabledState:(BOOL)a3
{
  if (a3)
  {
    self->_currentState = 1;
    self->_isDemoCECEnabled = 1;
    [(NSUserDefaults *)self->_defaults removeObjectForKey:@"disabled"];
  }

  else
  {
    self->_currentState = 0;
    self->_isDemoCECEnabled = 0;
    [(NSUserDefaults *)self->_defaults setBool:1 forKey:@"disabled"];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [(PowerUIDemoCECManager *)&self->_currentState setEnabledState:?];
  }

  [(NSUserDefaults *)self->_defaults setInteger:self->_currentState forKey:@"currentState"];
}

- (BOOL)isEnabled
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = +[PowerUICECUtilities isDemoCecFlagEnabledForStore];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "DemoCEC flag enabled for store: %d", v7, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)handleIsEnabledChange
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUIDemoCECManager *)self isEnabled];
  if (self->_isDemoCECEnabled == v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x277CCABB0];
      currentState = self->_currentState;
      v7 = log;
      v8 = [v5 numberWithUnsignedInteger:currentState];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "isEnabled check returned same state (%@) as before. Doing nothing.", &v13, 0xCu);
    }
  }

  else
  {
    v9 = v3;
    [(PowerUIDemoCECManager *)self setEnabledState:v3];
    v10 = self->_log;
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Demo CEC now enabled. Triggering callback to evaluate engagement.", &v13, 2u);
      }

      [(PowerUIDemoCECManager *)self handleCallback:@"Feature enabled"];
    }

    else
    {
      if (v11)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Demo CEC no longer enabled. Resetting state.", &v13, 2u);
      }

      [(PowerUIDemoCECManager *)self resetState];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isWithinEngagedSession
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecEngagement"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    log = self->_log;
    v5 = 0;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Engagement result missing. Assuming device was not in an active engaged session.", v8, 2u);
      v5 = 0;
    }
  }

  return v5;
}

- (void)recordSystemLoadAccum
{
  v33 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = log;
    v6 = [v4 now];
    *buf = 138412290;
    v28 = v6;
    _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Acknowledged record system load timer at time %@", buf, 0xCu);
  }

  v7 = +[PowerUISmartChargeUtilities batteryProperties];
  v8 = [v7 objectForKeyedSubscript:@"PowerTelemetryData"];
  v9 = [PowerUISmartChargeUtilities numberForKey:@"AccumulatedSystemLoad" fromDict:v8 withDefault:-999];
  if ([v9 isEqual:&unk_282D4E350])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIDemoCECManager recordSystemLoadAccum];
    }
  }

  else
  {
    v10 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecSysLoadTimeline"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 mutableCopy];
    }

    else
    {
      v12 = [MEMORY[0x277CBEB38] dictionary];
    }

    v13 = v12;
    v14 = [(PowerUICECGridDataManager *)self->_gridDataManager startTimeCurrentIntervalWithinForecastHorizon:28800.0];
    if (v14)
    {
      v15 = +[PowerUISmartChargeUtilities dateFormatter];
      v16 = [v15 stringFromDate:v14];

      [v13 setObject:v9 forKeyedSubscript:v16];
      [(NSUserDefaults *)self->_defaults setObject:v13 forKey:@"demoCecSysLoadTimeline"];
      v17 = self->_log;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v28 = v9;
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = v13;
        _os_log_debug_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEBUG, "Logged new accumulated load value of %@ for interval start date %@. Updated list of all logged values: %@.", buf, 0x20u);
      }
    }

    else
    {
      v25 = v13;
      v26 = v11;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [PowerUIDemoCECManager recordSystemLoadAccum];
      }

      v16 = [(PowerUICECGridDataManager *)self->_gridDataManager lastIntervalStartTimeOverForecastHorizon:28800.0];
      v18 = [v16 dateByAddingTimeInterval:60.0];
      gridDataManager = self->_gridDataManager;
      v20 = [MEMORY[0x277CBEAA8] now];
      LODWORD(gridDataManager) = [(PowerUICECGridDataManager *)gridDataManager time:v20 isWithinIntervalWithStart:v18];

      if (gridDataManager)
      {
        v21 = +[PowerUISmartChargeUtilities dateFormatter];
        v22 = v18;
        v23 = [v21 stringFromDate:v18];

        v13 = v25;
        [v25 setObject:v9 forKeyedSubscript:v23];
        [(NSUserDefaults *)self->_defaults setObject:v25 forKey:@"demoCecSysLoadTimeline"];

        v11 = v26;
      }

      else
      {
        v22 = v18;
        v11 = v26;
        v13 = v25;
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [PowerUIDemoCECManager recordSystemLoadAccum];
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)recordStartWallEnergyAccum
{
  v3 = +[PowerUISmartChargeUtilities batteryProperties];
  v4 = [v3 objectForKeyedSubscript:@"PowerTelemetryData"];
  v5 = [PowerUISmartChargeUtilities numberForKey:@"AccumulatedWallEnergyEstimate" fromDict:v4 withDefault:-999];
  if ([v5 isEqual:&unk_282D4E350])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIDemoCECManager recordStartWallEnergyAccum];
    }
  }

  else
  {
    [(NSUserDefaults *)self->_defaults setObject:v5 forKey:@"demoCecAccumWallEnergyStart"];
  }
}

- (double)totalWallEnergyOverSession
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecAccumWallEnergyStart"];
  if (v3)
  {
    v4 = +[PowerUISmartChargeUtilities batteryProperties];
    v5 = [v4 objectForKeyedSubscript:@"PowerTelemetryData"];
    v6 = [PowerUISmartChargeUtilities numberForKey:@"AccumulatedWallEnergyEstimate" fromDict:v5 withDefault:-999];
    if ([v6 isEqual:&unk_282D4E350])
    {
      v7 = -1.0;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUIDemoCECManager totalWallEnergyOverSession];
      }
    }

    else
    {
      [v6 doubleValue];
      v9 = v8;
      [v3 doubleValue];
      v7 = (v9 - v10) * 0.000001;
      if (v7 >= 0.0)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 134217984;
          v19 = v7;
          _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Wall energy estimate over session %.2f Wh", &v18, 0xCu);
        }
      }

      else
      {
        v11 = [(NSUserDefaults *)self->_defaults objectForKey:@"deviceWasRestarted"];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 BOOLValue];
        }

        else
        {
          v13 = 0;
        }

        v15 = self->_log;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v18 = 138413058;
          v19 = *&v3;
          v20 = 2112;
          v21 = v6;
          v22 = 1024;
          v23 = v13;
          v24 = 2048;
          v25 = -1;
          _os_log_error_impl(&dword_21B766000, v15, OS_LOG_TYPE_ERROR, "Total wall energy computed over the session was negative (start value: %@. end value: %@. The device may have been restarted (deviceWasRestarted: %d), or the accumulator may have exceeded the 64-bit max. Returning %ld.", &v18, 0x26u);
        }

        v7 = -1.0;
      }
    }
  }

  else
  {
    v7 = -1.0;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIDemoCECManager totalWallEnergyOverSession];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)dateDictionaryFromDefaults:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [(NSUserDefaults *)self->_defaults objectForKey:a3];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    *&v8 = 138412290;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [PowerUISmartChargeUtilities dateFormatter:v19];
        v14 = [v13 dateFromString:v12];

        if (v14)
        {
          v15 = [v6 objectForKeyedSubscript:v12];
          [v5 setObject:v15 forKeyedSubscript:v14];
        }

        else
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            *buf = v19;
            v25 = v12;
            _os_log_debug_impl(&dword_21B766000, log, OS_LOG_TYPE_DEBUG, "Bad date formatting: unable to parse string date: %@ into date.", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (double)systemLoadEmissionSavings:(int64_t)a3
{
  v67[1] = *MEMORY[0x277D85DE8];
  v5 = [(PowerUIDemoCECManager *)self dateDictionaryFromDefaults:@"demoCecSysLoadTimeline"];
  v6 = [(PowerUICECGridDataManager *)self->_gridDataManager lastIntervalStartTimeOverForecastHorizon:28800.0];
  v7 = [v6 dateByAddingTimeInterval:60.0];
  v56 = v5;
  v8 = [v5 objectForKey:v7];

  if (!v8)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUIDemoCECManager systemLoadEmissionSavings:];
    }

    [(PowerUIDemoCECManager *)self recordSystemLoadAccum];
    v9 = [(PowerUIDemoCECManager *)self dateDictionaryFromDefaults:@"demoCecSysLoadTimeline"];

    v56 = v9;
  }

  v10 = [(PowerUICECGridDataManager *)self->_gridDataManager storedForecastForDemoAnalyticsWithForecastHorizon:28800.0];
  v11 = [v10 mutableCopy];

  if (v11 && [v11 count])
  {
    v12 = [v56 allKeys];
    v13 = [v12 mutableCopy];

    v14 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
    v67[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
    [v13 sortUsingDescriptors:v15];

    v16 = [PowerUICECGridDataForecastEntry alloc];
    v17 = [v13 lastObject];
    v18 = [(PowerUICECGridDataForecastEntry *)v16 initWithDate:v17 forecastValue:&unk_282D4E368];

    [v11 addObject:v18];
    v19 = 0.0;
    v20 = 0.0;
    if ([v11 count] != 1)
    {
      v49 = v18;
      v50 = v14;
      v51 = v13;
      v52 = a3;
      v55 = self;
      v53 = v7;
      v54 = v6;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 1;
      do
      {
        v26 = v24;
        v27 = v23;
        v28 = [v11 objectAtIndexedSubscript:{v21, v49, v50, v51, v52, v53, v54}];
        v21 = v25;
        v29 = [v11 objectAtIndexedSubscript:v25];
        v30 = [v28 forecastDate];
        v24 = [v56 objectForKeyedSubscript:v30];

        v31 = [v29 forecastDate];
        v23 = [v56 objectForKeyedSubscript:v31];

        if (v24 && v23)
        {
          [v23 doubleValue];
          v33 = v32;
          [v24 doubleValue];
          v35 = v33 - v34;
          v36 = [v28 forecastValue];

          if (v35 >= 0.0)
          {
            [v36 doubleValue];
            v20 = v20 + v35 / 3600000000.0 * v45;
            v19 = v19 + v35;
          }

          else
          {
            log = v55->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              v38 = log;
              v39 = [v28 forecastDate];
              v40 = [v29 forecastDate];
              *buf = 138413314;
              v58 = v39;
              v59 = 2112;
              v60 = v40;
              v61 = 2112;
              v62 = v24;
              v63 = 2112;
              v64 = v23;
              v65 = 2048;
              v66 = v35;
              _os_log_impl(&dword_21B766000, v38, OS_LOG_TYPE_DEFAULT, "System load computed over the interval from %@ - %@ was negative. Previous accumulated load value: %@, current accumulated load value: %@, delta: %f. The device may have been restarted, or the accumulator may have exceeded the 64-bit max. Not using this hour's (load x emissions) in the savings computation.", buf, 0x34u);
            }
          }

          v22 = v36;
        }

        else
        {
          v41 = v55->_log;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = v41;
            v43 = [v28 forecastDate];
            v44 = [v29 forecastDate];
            *buf = 138412546;
            v58 = v43;
            v59 = 2112;
            v60 = v44;
            _os_log_impl(&dword_21B766000, v42, OS_LOG_TYPE_DEFAULT, "Missing system load values for either the start or end of the interval (%@ - %@). Unable to compute the load over the interval. Not using this hour's (load x emissions) in the savings computation.", buf, 0x16u);
          }
        }

        v25 = v21 + 1;
      }

      while ([v11 count] - 1 > v21);

      v7 = v53;
      v6 = v54;
      v13 = v51;
      a3 = v52;
      v18 = v49;
      v14 = v50;
    }

    v46 = v20 + v19 / -3600000000.0 * a3;
  }

  else
  {
    v46 = -1.0;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIDemoCECManager systemLoadEmissionSavings:];
    }
  }

  v47 = *MEMORY[0x277D85DE8];
  return v46;
}

- (id)chargeHistoryAnalytics:(BOOL)a3
{
  v3 = a3;
  v124 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:&unk_282D4EDB8];
  v6 = +[PowerUICECGridDataManager sharedInstance];
  [v6 averageEmissionsOverForecastHorizon:28800.0];
  v8 = v7;

  if (v8 == -1.0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      lastEngagementCheckDate = self->_lastEngagementCheckDate;
      *buf = 138412546;
      v121 = lastEngagementCheckDate;
      v122 = 2048;
      v123 = -1;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Missing average emissions for session starting %@. Defaulting to %ld.", buf, 0x16u);
    }
  }

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [v5 setObject:v11 forKeyedSubscript:@"avgEmissions"];

  [(PowerUIDemoCECManager *)self totalWallEnergyOverSession];
  v13 = v12;
  if (v12 == -1.0)
  {
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v121 = -1;
      _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "Unable to compute total wall energy used over session. Defaulting to %ld.", buf, 0xCu);
    }
  }

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  [v5 setObject:v15 forKeyedSubscript:@"totalWallEnergy"];

  if (!v3)
  {
    goto LABEL_76;
  }

  v89 = v5;
  v16 = [(NSUserDefaults *)self->_defaults objectForKey:@"demoCecChargingStatusTimeline"];
  v96 = self;
  v17 = self->_log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v121 = v16;
    _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "Charging history timeline %@", buf, 0xCu);
  }

  v18 = [v16 allKeys];
  v19 = [MEMORY[0x277CBEB18] array];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v111 objects:v119 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v112;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v112 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v111 + 1) + 8 * i);
        v26 = +[PowerUISmartChargeUtilities dateFormatter];
        v27 = [v26 dateFromString:v25];

        if (v27)
        {
          [v19 addObject:v27];
        }

        else
        {
          v28 = v96->_log;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [(PowerUIDemoCECManager *)&v109 chargeHistoryAnalytics:v110, v28];
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v111 objects:v119 count:16];
    }

    while (v22);
  }

  v87 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
  v118 = v87;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
  v30 = [v19 sortedArrayUsingDescriptors:v29];

  v31 = [MEMORY[0x277CBEB18] array];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v32 = v30;
  v33 = [v32 countByEnumeratingWithState:&v105 objects:v117 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v106;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v106 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "indexOfObject:", *(*(&v105 + 1) + 8 * j))}];
        [v31 addObject:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v105 objects:v117 count:16];
    }

    while (v34);
  }

  v38 = [MEMORY[0x277CBEB18] array];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v39 = v31;
  v40 = [v39 countByEnumeratingWithState:&v101 objects:v116 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v102;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v102 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [v20 objectAtIndex:{objc_msgSend(*(*(&v101 + 1) + 8 * k), "integerValue")}];
        [v38 addObject:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v101 objects:v116 count:16];
    }

    while (v41);
  }

  v92 = v32;

  v45 = [MEMORY[0x277CBEB18] array];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v46 = v38;
  v47 = [v46 countByEnumeratingWithState:&v97 objects:v115 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v98;
    do
    {
      for (m = 0; m != v48; ++m)
      {
        if (*v98 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = [v16 objectForKey:*(*(&v97 + 1) + 8 * m)];
        [v45 addObject:v51];
      }

      v48 = [v46 countByEnumeratingWithState:&v97 objects:v115 count:16];
    }

    while (v48);
  }

  v53 = 0;
  if (![v92 count])
  {
    v90 = 0;
    v54 = 0;
    v55 = 0;
    v57 = 0.0;
    goto LABEL_62;
  }

  v88 = 0;
  v90 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0.0;
  *&v52 = 138412290;
  v86 = v52;
  v57 = 0.0;
  v58 = v92;
  do
  {
    v59 = v55;
    v60 = v54;
    v61 = v58;
    v62 = v59;
    v63 = [v61 objectAtIndexedSubscript:{v53, v86}];

    v95 = [v45 objectAtIndexedSubscript:v53];

    if (!v60)
    {
      goto LABEL_53;
    }

    v93 = v63;
    [v63 timeIntervalSinceDate:v60];
    v65 = v64;
    v94 = v62;
    v66 = [v62 objectForKey:@"chargingStateIsCharging"];
    if (([v66 BOOLValue] & 1) == 0)
    {

      goto LABEL_52;
    }

    v67 = [v95 objectForKey:@"chargingStateIsCharging"];
    v91 = [v67 BOOLValue];

    if (v91)
    {
      goto LABEL_52;
    }

    v56 = v56 + v65;
    v68 = [v94 objectForKey:@"wasCleanInterval"];
    v69 = [v68 BOOLValue];

    if (!v69)
    {
      v57 = v57 + v65;
    }

    v70 = +[PowerUICECGridDataManager sharedInstance];
    v71 = [v70 emissionsForTime:v60 overForecastHorizon:28800.0];

    if (v71 != -1)
    {
      v88 += v71;
      ++v90;
LABEL_52:
      v63 = v93;
      v62 = v94;
      goto LABEL_53;
    }

    v72 = v96->_log;
    v63 = v93;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *buf = v86;
      v121 = v60;
      _os_log_error_impl(&dword_21B766000, v72, OS_LOG_TYPE_ERROR, "Missing emissions for charge time %@", buf, 0xCu);
    }

    v62 = v94;
LABEL_53:
    v54 = v63;

    v55 = v95;
    ++v53;
    v58 = v92;
  }

  while ([v92 count] > v53);
  if (v56 > 0.0)
  {
    v73 = [MEMORY[0x277CCABB0] numberWithDouble:v56 / 60.0];
    [v89 setObject:v73 forKeyedSubscript:@"totalChargeTime"];

    v53 = v88;
    goto LABEL_64;
  }

  v53 = v88;
LABEL_62:
  v74 = v96->_log;
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    [PowerUIDemoCECManager chargeHistoryAnalytics:v74];
  }

LABEL_64:
  v75 = [MEMORY[0x277CCABB0] numberWithDouble:v57 / 60.0];
  [v89 setObject:v75 forKeyedSubscript:@"emergencyChargeTime"];

  if (v90)
  {
    v76 = v53 / v90;
  }

  else
  {
    v77 = v96->_log;
    v76 = -1;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v121 = -1;
      _os_log_impl(&dword_21B766000, v77, OS_LOG_TYPE_DEFAULT, "Unable to compute average emissions over charging periods. Defaulting to %ld.", buf, 0xCu);
    }
  }

  v78 = [MEMORY[0x277CCABB0] numberWithInteger:v76];
  [v89 setObject:v78 forKeyedSubscript:@"chargingEmissions"];

  v79 = MEMORY[0x277CCABB0];
  [(PowerUIDemoCECManager *)v96 systemLoadEmissionSavings:v76];
  v80 = [v79 numberWithDouble:?];
  [v89 setObject:v80 forKeyedSubscript:@"emissionsSavingsFromSysLoad"];

  if (v13 == -1.0 || v76 == -1 || v8 == -1.0)
  {
    v83 = v96->_log;
    v82 = v54;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v121 = -1;
      _os_log_impl(&dword_21B766000, v83, OS_LOG_TYPE_DEFAULT, "Unable to compute emissions savings from wall energy over session. Defaulting to %ld.", buf, 0xCu);
    }

    [v89 setObject:&unk_282D4E380 forKeyedSubscript:@"emissionsSavingsFromWallEnergy"];
  }

  else
  {
    v81 = [MEMORY[0x277CCABB0] numberWithDouble:v13 * 0.001 * (v8 - v76)];
    [v89 setObject:v81 forKeyedSubscript:@"emissionsSavingsFromWallEnergy"];

    v82 = v54;
  }

  v5 = v89;
LABEL_76:
  v84 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)sessionEndCECAnalytics
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(PowerUIDemoCECManager *)self isWithinEngagedSession];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  [v3 setObject:v5 forKeyedSubscript:@"engaged"];

  if (!v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PowerUICECGridDataManager engagementDecisionReason](self->_gridDataManager, "engagementDecisionReason")}];
    [v3 setObject:v6 forKeyedSubscript:@"notEngagedReason"];
  }

  v7 = [(PowerUICECGridDataManager *)self->_gridDataManager balancingAuthorityName];
  [v3 setObject:v7 forKeyedSubscript:@"balancingAuthority"];

  lastEngagementCheckDate = self->_lastEngagementCheckDate;
  if (lastEngagementCheckDate)
  {
    [(NSDate *)lastEngagementCheckDate timeIntervalSinceNow];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:(v9 / -60.0)];
    [v3 setObject:v10 forKeyedSubscript:@"sessionLength"];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [PowerUIDemoCECManager sessionEndCECAnalytics];
  }

  v11 = [(NSUserDefaults *)self->_defaults objectForKey:@"deviceWasRestarted"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 BOOLValue];
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [v3 setObject:v14 forKeyedSubscript:@"deviceWasRestarted"];

  v15 = [(PowerUIDemoCECManager *)self chargeHistoryAnalytics:v4];
  [v3 addEntriesFromDictionary:v15];

  return v3;
}

- (void)recordAnalytics
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUIDemoCECManager *)self sessionEndCECAnalytics];
  if ([v3 count])
  {
    v6 = v3;
    AnalyticsSendEventLazy();
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Reported Demo CEC metrics to CoreAnalytics %@", buf, 0xCu);
  }

  [(PowerUIDemoCECManager *)self clearAnalytics];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)clearAnalytics
{
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"demoCecEngagement"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"demoCecChargingStatusTimeline"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"demoCecAccumWallEnergyStart"];
  defaults = self->_defaults;

  [(NSUserDefaults *)defaults removeObjectForKey:@"demoCecSysLoadTimeline"];
}

- (void)registerCleanSegmentTimer:(os_log_t)log afterTime:(double)a2 withInterval:.cold.1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2 / 60.0;
  _os_log_debug_impl(&dword_21B766000, log, OS_LOG_TYPE_DEBUG, "Registering clean segment timer for waitTime: %.0f minutes", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setEnabledState:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *a1;
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  OUTLINED_FUNCTION_3_0(&dword_21B766000, v6, v7, "Demo CEC State set to: %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)chargeHistoryAnalytics:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_21B766000, log, OS_LOG_TYPE_DEBUG, "Bad date formatting: unable to parse string date into date. Not including in analytics.", buf, 2u);
}

- (void)chargeHistoryAnalytics:(os_log_t)log .cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = -1;
  _os_log_error_impl(&dword_21B766000, log, OS_LOG_TYPE_ERROR, "Error computing total charge time. Defaulting to %ld.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end