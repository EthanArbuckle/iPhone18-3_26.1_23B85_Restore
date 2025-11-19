@interface PowerUICECPredictedTimeManager
+ (PowerUICECPredictedTimeManager)managerWithContextStore:(id)a3 withHandler:(id)a4;
- (BOOL)hasSufficientTimeForFullCharge;
- (BOOL)testOverrideForSignalMonitors;
- (PowerUICECPredictedTimeManager)initWithContextStore:(id)a3 withHandler:(id)a4;
- (double)leewayForConfidence:(double)a3;
- (double)timeToFullChargeFromBatteryLevel:(unint64_t)a3;
- (id)deadlineFromMonitors;
- (id)predictedUnplugTime;
- (id)testingOverrideForPredictedUnplugTime;
- (void)monitor:(id)a3 maySuggestNewFullChargeDeadline:(id)a4;
- (void)resetState;
- (void)startAllMonitoring;
- (void)stopAllMonitoring;
@end

@implementation PowerUICECPredictedTimeManager

- (PowerUICECPredictedTimeManager)initWithContextStore:(id)a3 withHandler:(id)a4
{
  v45[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v44.receiver = self;
  v44.super_class = PowerUICECPredictedTimeManager;
  v9 = [(PowerUICECPredictedTimeManager *)&v44 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.powerui.cec", "predictedTimeManager");
    log = v9->_log;
    v9->_log = v10;

    objc_storeStrong(&v9->_context, a3);
    debugStatus = v9->_debugStatus;
    v9->_debugStatus = &stru_282D0B728;

    v13 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.cec"];
    defaults = v9->_defaults;
    v9->_defaults = v13;

    v9->_predictionLeeway = 18000.0;
    v15 = [[PowerUITrialManager alloc] initWithDefaultsDomain:@"com.apple.powerui.cec"];
    trialManager = v9->_trialManager;
    v9->_trialManager = v15;

    v9->_tBypassSignals = [(NSUserDefaults *)v9->_defaults BOOLForKey:@"testBypassSignals"];
    v17 = +[PowerUIBatteryMitigationManager sharedManager];
    batteryMitigationManager = v9->_batteryMitigationManager;
    v9->_batteryMitigationManager = v17;

    v19 = [(NSUserDefaults *)v9->_defaults objectForKey:@"testModelDuration"];
    v20 = v19;
    if (v19)
    {
      v21 = MEMORY[0x277CBEAA8];
      [v19 doubleValue];
      v22 = [v21 dateWithTimeIntervalSinceNow:?];
      tModelPredition = v9->_tModelPredition;
      v9->_tModelPredition = v22;
    }

    v24 = [MEMORY[0x277D36CD0] predictor];
    pluggedInPredictor = v9->_pluggedInPredictor;
    v9->_pluggedInPredictor = v24;

    v26 = [(NSUserDefaults *)v9->_defaults objectForKey:@"predictedDeadline"];

    v27 = MEMORY[0x277CBEAA8];
    if (v26)
    {
      [v26 doubleValue];
      [v27 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantFuture];
    }
    v28 = ;
    deadline = v9->_deadline;
    v9->_deadline = v28;

    v30 = [(NSUserDefaults *)v9->_defaults objectForKey:@"predictedModelDeadline"];

    if (v30)
    {
      v31 = MEMORY[0x277CBEAA8];
      [v30 doubleValue];
      v32 = [v31 dateWithTimeIntervalSinceReferenceDate:?];
      modelDeadline = v9->_modelDeadline;
      v9->_modelDeadline = v32;
    }

    v34 = [PowerUIAlarmSignalMonitor monitorWithDelegate:v9 trialManager:v9->_trialManager withContext:v9->_context];
    v45[0] = v34;
    v35 = [PowerUIWalletSignalMonitor monitorWithDelegate:v9];
    v45[1] = v35;
    v36 = [PowerUICalendarSignalMonitor monitorWithDelegate:v9 trialManager:v9->_trialManager withContext:v9->_context];
    v45[2] = v36;
    v37 = [PowerUILocationSignalMonitor monitorWithDelegate:v9 trialManager:v9->_trialManager withContext:v9->_context];
    v45[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    monitors = v9->_monitors;
    v9->_monitors = v38;

    v40 = MEMORY[0x21CEF8A60](v8);
    handler = v9->_handler;
    v9->_handler = v40;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (PowerUICECPredictedTimeManager)managerWithContextStore:(id)a3 withHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__PowerUICECPredictedTimeManager_managerWithContextStore_withHandler___block_invoke;
  v13[3] = &unk_2782D50B8;
  v14 = v5;
  v15 = v6;
  v7 = managerWithContextStore_withHandler__onceToken;
  v8 = v6;
  v9 = v5;
  if (v7 != -1)
  {
    dispatch_once(&managerWithContextStore_withHandler__onceToken, v13);
  }

  v10 = managerWithContextStore_withHandler__manager;
  v11 = managerWithContextStore_withHandler__manager;

  return v10;
}

uint64_t __70__PowerUICECPredictedTimeManager_managerWithContextStore_withHandler___block_invoke(uint64_t a1)
{
  managerWithContextStore_withHandler__manager = [[PowerUICECPredictedTimeManager alloc] initWithContextStore:*(a1 + 32) withHandler:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (void)startAllMonitoring
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_monitors;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) startMonitoring];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopAllMonitoring
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_monitors;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) stopMonitoring];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)testOverrideForSignalMonitors
{
  v3 = [(NSUserDefaults *)self->_defaults BOOLForKey:@"testBypassSignals"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "TestMode: Bypass Signals set", v6, 2u);
    }
  }

  return v3;
}

- (id)deadlineFromMonitors
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUICECPredictedTimeManager *)self testOverrideForSignalMonitors];
  self->_tBypassSignals = v3;
  if (v3)
  {
    debugStatus = self->_debugStatus;
    v5 = @"\n";
    if (!debugStatus)
    {
      v5 = &stru_282D0B728;
    }

    v6 = MEMORY[0x277CCACA8];
    v7 = v5;
    v8 = [v6 stringWithFormat:@"%@%@%@", debugStatus, v7, @"Signal monitors overriden"];
    v9 = self->_debugStatus;
    self->_debugStatus = v8;

    v10 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] distantFuture];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = self->_monitors;
    v11 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v7 = 0;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v15 requiredFullChargeDate];
          if (v16)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v33 = v15;
              v34 = 2112;
              v35 = v16;
              _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Monitor %@ suggested %@", buf, 0x16u);
            }

            v18 = [v10 earlierDate:v16];

            if ([v18 isEqualToDate:v16])
            {
              v19 = MEMORY[0x277CCACA8];
              v20 = [MEMORY[0x277CCA968] localizedStringFromDate:v16 dateStyle:1 timeStyle:1];
              v21 = [v19 stringWithFormat:@"Monitor %@ suggested %@", v15, v20];

              v7 = v21;
            }

            v10 = v18;
          }
        }

        v12 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v12);
    }

    else
    {
      v7 = 0;
    }

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", self->_debugStatus, 0];
    v23 = self->_debugStatus;
    self->_debugStatus = v22;

    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v10;
      _os_log_impl(&dword_21B766000, v24, OS_LOG_TYPE_DEFAULT, "Monitors suggested: %@", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)hasSufficientTimeForFullCharge
{
  v43 = *MEMORY[0x277D85DE8];
  debugStatus = self->_debugStatus;
  self->_debugStatus = &stru_282D0B728;

  v4 = [(PowerUICECPredictedTimeManager *)self predictedUnplugTime];
  v5 = [(PowerUICECPredictedTimeManager *)self deadlineFromMonitors];
  v6 = [(NSDate *)v4 earlierDate:v5];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v4;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Model Deadline is %@", buf, 0xCu);
  }

  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v5;
    _os_log_impl(&dword_21B766000, v8, OS_LOG_TYPE_DEFAULT, "Signal Deadline is %@", buf, 0xCu);
  }

  v9 = self->_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v6;
    _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Deadline is %@", buf, 0xCu);
  }

  v10 = [(NSDate *)v6 dateByAddingTimeInterval:-1800.0];

  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v10;
    _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Deadline post buffer is %@", buf, 0xCu);
  }

  if ([(PowerUIBatteryMitigationManager *)self->_batteryMitigationManager mitigationsCurrentlyEnabled])
  {
    v12 = [MEMORY[0x277CBEAA8] distantPast];

    v10 = v12;
  }

  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v10;
    _os_log_impl(&dword_21B766000, v13, OS_LOG_TYPE_DEFAULT, "Deadline post battery mitigations is %@", buf, 0xCu);
  }

  [(PowerUICECPredictedTimeManager *)self timeToFullChargeFromBatteryLevel:[PowerUISmartChargeUtilities currentBatteryLevelWithContext:self->_context]];
  v15 = v14;
  v16 = self->_log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = v16;
    v19 = [v17 numberWithDouble:v15];
    *buf = 138412290;
    v42 = v19;
    _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, "Time to full charge is %@", buf, 0xCu);
  }

  [(NSDate *)self->_deadline timeIntervalSinceReferenceDate];
  v21 = v20;
  [(NSDate *)v10 timeIntervalSinceReferenceDate];
  if (!self->_deadline || v22 < v21)
  {
    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v10;
      _os_log_impl(&dword_21B766000, v23, OS_LOG_TYPE_DEFAULT, "Setting new deadline %@", buf, 0xCu);
    }

    objc_storeStrong(&self->_deadline, v10);
    defaults = self->_defaults;
    [(NSDate *)self->_deadline timeIntervalSinceReferenceDate];
    [(NSUserDefaults *)defaults setDouble:@"predictedDeadline" forKey:?];
  }

  v25 = self->_log;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    deadline = self->_deadline;
    *buf = 138412290;
    v42 = deadline;
    _os_log_impl(&dword_21B766000, v25, OS_LOG_TYPE_DEFAULT, "Final deadline is %@", buf, 0xCu);
  }

  v27 = MEMORY[0x277CCACA8];
  v28 = [MEMORY[0x277CCA968] localizedStringFromDate:self->_deadline dateStyle:1 timeStyle:1];
  v29 = [v27 stringWithFormat:@"Final deadline is %@", v28];

  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", self->_debugStatus, v29];
  v31 = self->_debugStatus;
  self->_debugStatus = v30;

  v32 = MEMORY[0x277CCACA8];
  [(NSDate *)self->_deadline timeIntervalSinceNow];
  v34 = [v32 stringWithFormat:@"Time to full charge %d mins, Time from deadline %d mins", (v15 / 60), (v33 / 60)];

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", self->_debugStatus, v34];
  v36 = self->_debugStatus;
  self->_debugStatus = v35;

  [(NSDate *)self->_deadline timeIntervalSinceNow];
  v38 = v37 > v15;

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

- (id)testingOverrideForPredictedUnplugTime
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"testModelDuration"];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CBEAA8];
    [v3 doubleValue];
    v6 = [v5 dateWithTimeIntervalSinceNow:?];
    tModelPredition = self->_tModelPredition;
    self->_tModelPredition = v6;

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_tModelPredition;
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "TestMode: ModelPrediction set to %@", &v14, 0xCu);
    }
  }

  v10 = self->_tModelPredition;
  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (double)leewayForConfidence:(double)a3
{
  v23 = *MEMORY[0x277D85DE8];
  [(PowerUITrialManager *)self->_trialManager doubleFactorForName:@"thresholdForCECWithPluginModel"];
  v6 = v5;
  [(PowerUITrialManager *)self->_trialManager doubleFactorForName:@"leewayForCECWithPluginModel"];
  v8 = v7;
  log = self->_log;
  v10 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v6 == 0.0 || v8 == 0.0)
  {
    v6 = 0.575;
    v8 = 18900.0;
    if (!v10)
    {
      goto LABEL_8;
    }

    LOWORD(v17) = 0;
    v11 = "Trial parameter loading failed resorting to defaults";
    v12 = log;
    v13 = 2;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_8;
    }

    v17 = 134218240;
    v18 = v6;
    v19 = 2048;
    v20 = v8;
    v11 = "Loaded threshold %f and leeway %f from trial ";
    v12 = log;
    v13 = 22;
  }

  _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_INFO, v11, &v17, v13);
LABEL_8:
  v14 = self->_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = 134218496;
    v18 = a3;
    v19 = 2048;
    v20 = v6;
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_INFO, "Evaluating confidence %f with threshold of %f and leeway of %f", &v17, 0x20u);
  }

  result = INFINITY;
  if (v6 < a3)
  {
    result = v8;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)predictedUnplugTime
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUICECPredictedTimeManager *)self testingOverrideForPredictedUnplugTime];
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCA968] localizedStringFromDate:v3 dateStyle:1 timeStyle:1];
    v6 = [v4 stringWithFormat:@"ML model deadline is overriden to %@", v5];

    objc_storeStrong(&self->_debugStatus, v6);
    v7 = v3;
LABEL_5:
    v11 = v7;
    goto LABEL_6;
  }

  modelDeadline = self->_modelDeadline;
  if (modelDeadline)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA968] localizedStringFromDate:modelDeadline dateStyle:1 timeStyle:1];
    v6 = [v9 stringWithFormat:@"Cached ML model predicted deadline %@", v10];

    objc_storeStrong(&self->_debugStatus, v6);
    v7 = self->_modelDeadline;
    goto LABEL_5;
  }

  pluggedInPredictor = self->_pluggedInPredictor;
  v35 = 0;
  v15 = [(_OSChargingPredictor *)pluggedInPredictor chargePredictionOutputOfScheme:1 withError:&v35];
  v16 = v35;
  if (v16)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v18 = log;
      v19 = [v16 localizedDescription];
      *buf = 138412290;
      v37 = *&v19;
      _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, "Error querying the predictor through the client %@", buf, 0xCu);
    }
  }

  [v15 confidence];
  v21 = v20;
  [v15 chargingDuration];
  v23 = v22;
  [(PowerUICECPredictedTimeManager *)self leewayForConfidence:v21];
  self->_predictionLeeway = v24;
  v25 = fmin(fmax(v23 - v24, 0.0), 36000.0);
  v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v25];
  v27 = self->_log;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    predictionLeeway = self->_predictionLeeway;
    *buf = 134218754;
    v37 = v25;
    v38 = 2112;
    v39 = v26;
    v40 = 2048;
    v41 = predictionLeeway;
    v42 = 2048;
    v43 = v21;
    _os_log_impl(&dword_21B766000, v27, OS_LOG_TYPE_DEFAULT, "OSIntelligence predicts device to be plugged in for %lf until %@ after leeway of %lf with confidence %lf", buf, 0x2Au);
  }

  if (v21 <= 0.575)
  {
    v30 = self->_log;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v30, OS_LOG_TYPE_DEFAULT, "Prediction model not confident. Setting an earlier date", buf, 2u);
    }

    v29 = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    v29 = v26;
  }

  v31 = self->_modelDeadline;
  self->_modelDeadline = v29;

  defaults = self->_defaults;
  [(NSDate *)self->_modelDeadline timeIntervalSinceReferenceDate];
  [(NSUserDefaults *)defaults setDouble:@"predictedModelDeadline" forKey:?];
  v33 = MEMORY[0x277CCACA8];
  v34 = [MEMORY[0x277CCA968] localizedStringFromDate:self->_modelDeadline dateStyle:1 timeStyle:1];
  v6 = [v33 stringWithFormat:@"ML model predicted deadline %@ (confidence %lf)", v34, *&v21];

  objc_storeStrong(&self->_debugStatus, v6);
  v11 = self->_modelDeadline;

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (double)timeToFullChargeFromBatteryLevel:(unint64_t)a3
{
  if (a3 == 80)
  {
    v3 = [PowerUISmartChargeUtilities historicalFullChargeDurationStartingAt:80 withMinimumPluginDuration:1200];
    if ([v3 count] >= 3)
    {
      v4 = [v3 sortedArrayUsingSelector:sel_compare_];
      v5 = [v4 subarrayWithRange:{1, objc_msgSend(v4, "count") - 2}];

      v3 = v5;
    }

    [v3 percentile:0.95];
    v7 = v6;
    if ([v3 count] < 4)
    {
      v8 = 5400.0;
    }

    else
    {
      v8 = fmax(fmin(v7 / 60.0, 180.0), 40.0) * 60.0;
    }
  }

  else if (a3 - 31 > 0x2B)
  {
    return 14400.0;
  }

  else
  {
    return (60 * (170 - a3) + 15);
  }

  return v8;
}

- (void)monitor:(id)a3 maySuggestNewFullChargeDeadline:(id)a4
{
  [a4 timeIntervalSinceDate:self->_deadline];
  if (v5 < 0.0)
  {
    v6 = *(self->_handler + 2);

    v6();
  }
}

- (void)resetState
{
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"predictedDeadline"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"predictedModelDeadline"];
  deadline = self->_deadline;
  self->_deadline = 0;

  modelDeadline = self->_modelDeadline;
  self->_modelDeadline = 0;

  [(PowerUICECPredictedTimeManager *)self stopAllMonitoring];
}

@end