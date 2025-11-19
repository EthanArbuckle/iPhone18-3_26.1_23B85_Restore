@interface PowerUIDrainAnalyzer
+ (id)sharedInstance;
- (PowerUIDrainAnalyzer)init;
- (void)monitorPluggedInStatus;
- (void)recordAnalytics;
- (void)recordPredictionResultAndTime;
- (void)resetState;
- (void)scheduleAnalyticsActivity;
- (void)scheduleLowSOCPrediction;
- (void)updateLPMAndMinSOC;
@end

@implementation PowerUIDrainAnalyzer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[PowerUIDrainAnalyzer sharedInstance];
  }

  v3 = sharedInstance_drainAnalyzer;

  return v3;
}

uint64_t __38__PowerUIDrainAnalyzer_sharedInstance__block_invoke()
{
  sharedInstance_drainAnalyzer = objc_alloc_init(PowerUIDrainAnalyzer);

  return MEMORY[0x2821F96F8]();
}

- (PowerUIDrainAnalyzer)init
{
  v27.receiver = self;
  v27.super_class = PowerUIDrainAnalyzer;
  v2 = [(PowerUIDrainAnalyzer *)&v27 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerui.drainAnalyzer", "");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.powerui.drainAnalyzer.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.powerui.drainAnalyzer.notify.queue", v8);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v9;

    v11 = [MEMORY[0x277CFE318] userContext];
    context = v2->_context;
    v2->_context = v11;

    v13 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.lowSOCAnalyzer"];
    defaults = v2->_defaults;
    v2->_defaults = v13;

    v15 = [(NSUserDefaults *)v2->_defaults objectForKey:@"minSOC"];
    if (v15)
    {
      v16 = [(NSUserDefaults *)v2->_defaults objectForKey:@"minSOC"];
      v2->_minBatteryLevel = [v16 integerValue];
    }

    else
    {
      v2->_minBatteryLevel = 100;
    }

    [(PowerUIDrainAnalyzer *)v2 monitorPluggedInStatus];
    out_token = 0;
    v17 = v2->_notificationQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __28__PowerUIDrainAnalyzer_init__block_invoke;
    handler[3] = &unk_2782D3E60;
    v18 = v2;
    v25 = v18;
    notify_register_dispatch("com.apple.powerui.drainAnalyzer.predictLowSOC", &out_token, v17, handler);
    v23 = 0;
    v19 = v2->_notificationQueue;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __28__PowerUIDrainAnalyzer_init__block_invoke_2;
    v21[3] = &unk_2782D3E60;
    v22 = v18;
    notify_register_dispatch("com.apple.powerui.drainAnalyzer.lowSOCAnalytics", &v23, v19, v21);
  }

  return v2;
}

uint64_t __28__PowerUIDrainAnalyzer_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) recordPredictionResultAndTime];
  v2 = *(a1 + 32);

  return [v2 resetState];
}

uint64_t __28__PowerUIDrainAnalyzer_init__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) recordPredictionResultAndTime];
  [*(a1 + 32) recordAnalytics];
  v2 = *(a1 + 32);

  return [v2 resetState];
}

- (void)monitorPluggedInStatus
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PowerUIDrainAnalyzer_monitorPluggedInStatus__block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__PowerUIDrainAnalyzer_monitorPluggedInStatus__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CFE360];
  v3 = [MEMORY[0x277CFE338] keyPathForPluginStatus];
  v4 = [v2 predicateForChangeAtKeyPath:v3];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__PowerUIDrainAnalyzer_monitorPluggedInStatus__block_invoke_2;
  v6[3] = &unk_2782D4138;
  v6[4] = *(a1 + 32);
  v5 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.powerui.lowSOCAnalyzer.pluggedIn" contextualPredicate:v4 clientIdentifier:@"com.apple.powerui.lowSOCAnalyzer.pluggedIn" callback:v6];
  [*(*(a1 + 32) + 16) registerCallback:v5];
}

void __46__PowerUIDrainAnalyzer_monitorPluggedInStatus__block_invoke_2(uint64_t a1)
{
  v2 = [PowerUISmartChargeUtilities isPluggedInWithContext:*(*(a1 + 32) + 16)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3[5];
    v5 = [MEMORY[0x277CBEAA8] date];
    [v4 setObject:v5 forKey:@"pluggedinTime"];

    v6 = [*(*(a1 + 32) + 40) objectForKey:@"predictionTime"];
    if (v6)
    {
      v7 = v6;
      [*(a1 + 32) updateLPMAndMinSOC];
      v6 = v7;
    }
  }

  else
  {

    [v3 scheduleLowSOCPrediction];
  }
}

- (void)scheduleLowSOCPrediction
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"pluggedinTime"];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Device pluggedin at %@", buf, 0xCu);
  }

  [v3 timeIntervalSinceNow];
  v6 = v5;
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"pluggedinTime"];
  if (v6 <= -10800.0)
  {
    v8 = [(NSUserDefaults *)self->_defaults objectForKey:@"predictionTime"];
    v9 = v8;
    if (v8 && ([v8 timeIntervalSinceNow], v10 > -86400.0))
    {
      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Analytics from prediction in last 24 hours not recorded. Skipping Low SOC prediction", buf, 2u);
      }
    }

    else
    {
      v12 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v12, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
      xpc_dictionary_set_BOOL(v12, *MEMORY[0x277D86230], 1);
      xpc_dictionary_set_BOOL(v12, *MEMORY[0x277D86360], 0);
      xpc_dictionary_set_int64(v12, *MEMORY[0x277D86270], 7200);
      xpc_dictionary_set_int64(v12, *MEMORY[0x277D86250], 7200);
      xpc_dictionary_set_BOOL(v12, *MEMORY[0x277D86380], 1);
      xpc_dictionary_set_BOOL(v12, *MEMORY[0x277D863A0], 1);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __48__PowerUIDrainAnalyzer_scheduleLowSOCPrediction__block_invoke;
      handler[3] = &unk_2782D48D8;
      handler[4] = self;
      xpc_activity_register("com.apple.powerui.lowSOCPrediction.prediction", v12, handler);
    }
  }

  else
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v7, OS_LOG_TYPE_DEFAULT, "Device pluggedin for less than 3 hours. Skipping Low SOC prediction", buf, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __48__PowerUIDrainAnalyzer_scheduleLowSOCPrediction__block_invoke(uint64_t a1, xpc_activity_t activity)
{
  v10 = *MEMORY[0x277D85DE8];
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    [*(a1 + 32) recordPredictionResultAndTime];
    *(*(a1 + 32) + 48) = 101;
    [*(a1 + 32) updateLPMAndMinSOC];
    v6 = *(a1 + 32);
    v7 = *MEMORY[0x277D85DE8];

    [v6 scheduleAnalyticsActivity];
  }

  else
  {
    if (!state)
    {
      v4 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v8 = 136315138;
        v9 = "com.apple.powerui.lowSOCPrediction.prediction";
        _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_INFO, "Checking in for %s!", &v8, 0xCu);
      }
    }

    v5 = *MEMORY[0x277D85DE8];
  }
}

- (void)scheduleAnalyticsActivity
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(v3, *MEMORY[0x277D86270], 120);
  xpc_dictionary_set_int64(v3, *MEMORY[0x277D86250], 21600);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D863A0], 1);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__PowerUIDrainAnalyzer_scheduleAnalyticsActivity__block_invoke;
  handler[3] = &unk_2782D48D8;
  handler[4] = self;
  xpc_activity_register("com.apple.powerui.lowSOCPrediction.analytics", v3, handler);
}

void __49__PowerUIDrainAnalyzer_scheduleAnalyticsActivity__block_invoke(uint64_t a1, xpc_activity_t activity)
{
  v10 = *MEMORY[0x277D85DE8];
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    [*(a1 + 32) recordAnalytics];
    v6 = *(a1 + 32);
    v7 = *MEMORY[0x277D85DE8];

    [v6 resetState];
  }

  else
  {
    if (!state)
    {
      v4 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v8 = 136315138;
        v9 = "com.apple.powerui.lowSOCPrediction.analytics";
        _os_log_impl(&dword_21B766000, v4, OS_LOG_TYPE_INFO, "Checking in for %s!", &v8, 0xCu);
      }
    }

    v5 = *MEMORY[0x277D85DE8];
  }
}

- (void)recordPredictionResultAndTime
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
  v4 = [MEMORY[0x277D36CC8] predictor];
  v5 = [v4 lowSOCPredictionOutput];
  v6 = [v5 lowSOCPredicted];
  log = self->_log;
  v8 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *v22 = 134217984;
      *&v22[4] = 15;
      v9 = "Predicted to hit low SOC: %ld%%";
LABEL_6:
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, v9, v22, 0xCu);
    }
  }

  else if (v8)
  {
    *v22 = 134217984;
    *&v22[4] = 15;
    v9 = "Not predicted to hit low SOC: %ld%%";
    goto LABEL_6;
  }

  defaults = self->_defaults;
  v11 = [v5 modelVersion];
  [(NSUserDefaults *)defaults setObject:v11 forKey:@"modelVersion"];

  v12 = self->_defaults;
  v13 = [MEMORY[0x277CBEAA8] date];
  [(NSUserDefaults *)v12 setObject:v13 forKey:@"predictionTime"];

  v14 = self->_defaults;
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [(NSUserDefaults *)v14 setObject:v15 forKey:@"predictionResult"];

  v16 = self->_defaults;
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  [(NSUserDefaults *)v16 setObject:v17 forKey:@"startSOC"];

  v18 = self->_defaults;
  v19 = MEMORY[0x277CCABB0];
  [v5 confidence];
  v20 = [v19 numberWithDouble:?];
  [(NSUserDefaults *)v18 setObject:v20 forKey:@"predictionConfidence"];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateLPMAndMinSOC
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PowerUIDrainAnalyzer_updateLPMAndMinSOC__block_invoke;
  block[3] = &unk_2782D3EA8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __42__PowerUIDrainAnalyzer_updateLPMAndMinSOC__block_invoke(uint64_t a1)
{
  v2 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:*(*(a1 + 32) + 16)];
  v3 = *(a1 + 32);
  if (v2 < *(v3 + 48))
  {
    *(v3 + 48) = v2;
    v4 = *(*(a1 + 32) + 40);
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
    [v4 setObject:v5 forKey:@"minSOC"];

    v6 = *(*(a1 + 32) + 40);
    v7 = [MEMORY[0x277CBEAA8] date];
    [v6 setObject:v7 forKey:@"kDefaultsMinSOCDate"];
  }

  v8 = [MEMORY[0x277CCAC38] processInfo];
  v9 = [v8 isLowPowerModeEnabled];

  if (v9)
  {
    v10 = MEMORY[0x277CBEC38];
    v11 = *(*(a1 + 32) + 40);

    [v11 setObject:v10 forKey:@"wasInLPM"];
  }
}

- (void)recordAnalytics
{
  v44 = *MEMORY[0x277D85DE8];
  [(PowerUIDrainAnalyzer *)self updateLPMAndMinSOC];
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"predictionTime"];
  if (v3)
  {
    v4 = [(NSUserDefaults *)self->_defaults objectForKey:@"predictionResult"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 BOOLValue];
      v7 = [(NSUserDefaults *)self->_defaults objectForKey:@"startSOC"];
      if (v7)
      {
        v8 = [(NSUserDefaults *)self->_defaults objectForKey:@"startSOC"];
        v9 = [v8 integerValue];
      }

      else
      {
        v9 = -1;
      }

      v12 = [(NSUserDefaults *)self->_defaults objectForKey:@"wasInLPM"];
      if (v12)
      {
        v13 = [(NSUserDefaults *)self->_defaults objectForKey:@"wasInLPM"];
        v14 = [v13 BOOLValue];
      }

      else
      {
        v14 = 0;
      }

      v15 = [MEMORY[0x277CBEB38] dictionary];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
      [v15 setObject:v16 forKeyedSubscript:@"startSOC"];

      v17 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context];
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
      [v15 setObject:v18 forKeyedSubscript:@"endSOC"];

      v19 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minBatteryLevel];
      [v15 setObject:v19 forKeyedSubscript:@"minSOC"];

      v20 = [(NSUserDefaults *)self->_defaults objectForKey:@"kDefaultsMinSOCDate"];
      v21 = MEMORY[0x277CCABB0];
      [v20 timeIntervalSinceNow];
      v23 = [v21 numberWithDouble:v22 / -60.0];
      [v15 setObject:v23 forKeyedSubscript:@"minSOCDate"];

      v24 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      [v15 setObject:v24 forKeyedSubscript:@"wasLowSOCPredicted"];

      v25 = [(NSUserDefaults *)self->_defaults objectForKey:@"predictionConfidence"];
      if (v25)
      {
        v26 = [(NSUserDefaults *)self->_defaults objectForKey:@"predictionConfidence"];
        [v26 doubleValue];
        v28 = v27;
      }

      else
      {
        v28 = 0.0;
      }

      v29 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
      [v15 setObject:v29 forKeyedSubscript:@"predictionConfidence"];

      v30 = MEMORY[0x277CCABB0];
      [v3 timeIntervalSinceNow];
      v32 = [v30 numberWithDouble:v31 / -60.0];
      [v15 setObject:v32 forKeyedSubscript:@"intervalFromPrediction"];

      v33 = [MEMORY[0x277CCABB0] numberWithInteger:self->_minBatteryLevel - 15];
      [v15 setObject:v33 forKeyedSubscript:@"minSOCDiff"];

      v34 = [MEMORY[0x277CCABB0] numberWithBool:v14];
      [v15 setObject:v34 forKeyedSubscript:@"wasInLPM"];

      if (self->_minBatteryLevel > 15)
      {
        v35 = MEMORY[0x277CBEC28];
        [v15 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"wasActualLowSOC"];
        v36 = MEMORY[0x277CBEC38];
      }

      else
      {
        v35 = MEMORY[0x277CBEC38];
        [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"wasActualLowSOC"];
        v36 = MEMORY[0x277CBEC28];
      }

      if (v6)
      {
        v37 = v35;
      }

      else
      {
        v37 = v36;
      }

      [v15 setObject:v37 forKeyedSubscript:@"isPredictionTrue"];
      v38 = [(NSUserDefaults *)self->_defaults objectForKey:@"modelVersion"];
      [v15 setObject:v38 forKeyedSubscript:@"modelInfo"];

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v15;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Sending to analytics %@", buf, 0xCu);
      }

      if ([v15 count])
      {
        v41 = v15;
        AnalyticsSendEventLazy();
      }
    }

    else
    {
      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(PowerUIDrainAnalyzer *)v11 recordAnalytics];
      }
    }
  }

  else
  {
    v10 = self->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(PowerUIDrainAnalyzer *)v10 recordAnalytics];
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)resetState
{
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"predictionTime"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"predictionResult"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"wasInLPM"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"startSOC"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"minSOC"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"modelVersion"];
  self->_minBatteryLevel = 100;
}

@end