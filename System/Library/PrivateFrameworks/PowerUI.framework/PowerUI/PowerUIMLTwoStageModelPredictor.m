@interface PowerUIMLTwoStageModelPredictor
- (MLModel)durationModel;
- (MLModel)engageModel;
- (PowerUIMLTwoStageModelPredictor)initWithDefaultsDomain:(id)a3 withContextStore:(id)a4 withTrialManager:(id)a5;
- (PowerUIModelQueryResult)chargingDecision:(SEL)a3 withPluginDate:(unint64_t)a4 withPluginBatteryLevel:(id)a5 forDate:(double)a6 withLog:(id)a7;
- (double)adjustedChargingDecision:(unint64_t)a3 withPluginDate:(id)a4 withPluginBatteryLevel:(double)a5 forDate:(id)a6 forStatus:(BOOL)a7;
- (double)getHourBinID:(id)a3 forHourBin:(unint64_t)a4;
- (double)loadAdjustedHoursForModel:(id)a3;
- (double)loadMinInputChargeDuration;
- (double)loadThresholdForModel:(id)a3;
- (id)adjustDeadlineForReengagement;
- (id)arrayWithShape:(id)a3 values:(id)a4 type:(int64_t)a5;
- (id)convertInputFeaturesToNeuralFeatures:(id)a3;
- (id)durationModelBoltID;
- (id)engagementModelBoltID;
- (id)getInputFeaturesWithPluginDate:(id)a3 withPluginBatteryLevel:(double)a4 forDate:(id)a5 withLog:(id)a6;
- (id)predictFullChargeDateWithBatteryLevel:(unint64_t)a3;
- (id)timeStringFromDate:(id)a3;
- (void)deleteCompiledModels;
- (void)deleteUpdatedModels;
- (void)engageModel;
- (void)loadDurationModelFromURL:(id)a3;
- (void)loadEngagementModelFromURL:(id)a3;
- (void)loadTrial;
- (void)resetSavedDeadline;
- (void)setPluginDate:(id)a3;
@end

@implementation PowerUIMLTwoStageModelPredictor

- (MLModel)engageModel
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = 0x2782D3000uLL;
  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Beginning of engageModel"];
  os_unfair_lock_lock(&self->_loadModelLock);
  if (!self->_engageModel)
  {
    v4 = [(PowerUITrialManager *)self->_trialManager loadTrialEngageModelByDeletingExistingModel:0];
    engageModel = self->_engageModel;
    self->_engageModel = v4;

    v6 = self->_engageModel;
    log = self->_log;
    v8 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Trial engage model found!", buf, 2u);
      }

      v9 = 0;
      v10 = 0;
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Trial engage model not found...falling back to default model", buf, 2u);
      }

      v11 = MEMORY[0x277CBEBC0];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 pathForResource:@"engageModel" ofType:@"mlmodelc"];
      v9 = [v11 fileURLWithPath:v13];

      v40 = 0;
      v14 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v9 error:&v40];
      v10 = v40;
      v15 = self->_engageModel;
      self->_engageModel = v14;

      if (v10 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUIMLTwoStageModelPredictor engageModel];
      }
    }

    [(PowerUIMLTwoStageModelPredictor *)self loadThresholdForModel:self->_engageModel];
    self->_threshold = v16;
    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_engageModel;
      v19 = v17;
      v37 = [(MLModel *)v18 modelDescription];
      v36 = [v37 metadata];
      v20 = *MEMORY[0x277CBFE90];
      [v36 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
      v21 = v39 = v9;
      [v21 objectForKeyedSubscript:@"model_version"];
      v22 = v38 = v10;
      v23 = [(MLModel *)self->_engageModel modelDescription];
      v24 = [v23 metadata];
      v25 = [v24 objectForKeyedSubscript:v20];
      v26 = [v25 objectForKeyedSubscript:@"bolt_id"];
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:self->_threshold];
      *buf = 138413058;
      v42 = @"engageModel";
      v43 = 2112;
      v44 = v22;
      v45 = 2112;
      v46 = v26;
      v47 = 2112;
      v48 = v27;
      _os_log_impl(&dword_21B766000, v19, OS_LOG_TYPE_DEFAULT, "Engagement model: %@.%@ from bolt job = %@ (threshold = %@)", buf, 0x2Au);

      v10 = v38;
      v9 = v39;

      v3 = 0x2782D3000;
    }

    else
    {
      v20 = *MEMORY[0x277CBFE90];
    }

    v28 = *(v3 + 2480);
    v29 = [(MLModel *)self->_engageModel modelDescription];
    v30 = [v29 metadata];
    v31 = [v30 objectForKeyedSubscript:v20];
    v32 = [v31 objectForKeyedSubscript:@"model_version"];
    [v28 setString:v32 forPreferenceKey:@"engageBoltID" inDomain:self->_defaultsDomain];
  }

  os_unfair_lock_unlock(&self->_loadModelLock);
  [*(v3 + 2480) logMemoryUsageInternalForEvent:@"End of loadModelFromPath"];
  v33 = self->_engageModel;
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (MLModel)durationModel
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = 0x2782D3000uLL;
  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Beginning of durationModel"];
  os_unfair_lock_lock(&self->_loadModelLock);
  if (!self->_durationModel)
  {
    v4 = [(PowerUITrialManager *)self->_trialManager loadTrialDurationModelByDeletingExistingModel:0];
    durationModel = self->_durationModel;
    self->_durationModel = v4;

    v6 = self->_durationModel;
    log = self->_log;
    v8 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Trial duration model found!", buf, 2u);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Trial duration model not found...falling back to default model", buf, 2u);
      }

      v9 = MEMORY[0x277CBEBC0];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 pathForResource:@"durationModel" ofType:@"mlmodelc"];
      v12 = [v9 fileURLWithPath:v11];

      v13 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v12 error:0];
      v14 = self->_durationModel;
      self->_durationModel = v13;
    }

    [(PowerUIMLTwoStageModelPredictor *)self loadAdjustedHoursForModel:self->_durationModel];
    self->_adjustedDuration = v15;
    v16 = self->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_durationModel;
      v18 = v16;
      v36 = [(MLModel *)v17 modelDescription];
      v35 = [v36 metadata];
      v19 = *MEMORY[0x277CBFE90];
      v20 = [v35 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
      v21 = [v20 objectForKeyedSubscript:@"model_version"];
      v22 = [(MLModel *)self->_durationModel modelDescription];
      v23 = [v22 metadata];
      v24 = [v23 objectForKeyedSubscript:v19];
      v25 = [v24 objectForKeyedSubscript:@"bolt_id"];
      v26 = [MEMORY[0x277CCABB0] numberWithDouble:self->_adjustedDuration];
      *buf = 138413058;
      v38 = @"durationModel";
      v39 = 2112;
      v40 = v21;
      v41 = 2112;
      v42 = v25;
      v43 = 2112;
      v44 = v26;
      _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, "Duration model: %@.%@ from bolt job = %@ (adjusted duration = %@)", buf, 0x2Au);

      v3 = 0x2782D3000;
    }

    else
    {
      v19 = *MEMORY[0x277CBFE90];
    }

    v27 = *(v3 + 2480);
    v28 = [(MLModel *)self->_durationModel modelDescription];
    v29 = [v28 metadata];
    v30 = [v29 objectForKeyedSubscript:v19];
    v31 = [v30 objectForKeyedSubscript:@"model_version"];
    [v27 setString:v31 forPreferenceKey:@"durationBoltID" inDomain:self->_defaultsDomain];
  }

  os_unfair_lock_unlock(&self->_loadModelLock);
  [*(v3 + 2480) logMemoryUsageInternalForEvent:@"End of durationModel"];
  v32 = self->_durationModel;
  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)timeStringFromDate:(id)a3
{
  v3 = timeStringFromDate__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [PowerUIMLTwoStageModelPredictor timeStringFromDate:];
  }

  v5 = [timeStringFromDate__formatter stringFromDate:v4];

  return v5;
}

uint64_t __54__PowerUIMLTwoStageModelPredictor_timeStringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = timeStringFromDate__formatter;
  timeStringFromDate__formatter = v0;

  [timeStringFromDate__formatter setDateStyle:1];
  v2 = timeStringFromDate__formatter;

  return [v2 setTimeStyle:1];
}

- (PowerUIMLTwoStageModelPredictor)initWithDefaultsDomain:(id)a3 withContextStore:(id)a4 withTrialManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30.receiver = self;
  v30.super_class = PowerUIMLTwoStageModelPredictor;
  v12 = [(PowerUIMLTwoStageModelPredictor *)&v30 init];
  v13 = v12;
  if (v12)
  {
    v12->_loadModelLock._os_unfair_lock_opaque = 0;
    v14 = os_log_create("com.apple.powerui.smartcharging", "mltwostagemodelpredictor");
    log = v13->_log;
    v13->_log = v14;

    v16 = os_log_create("com.apple.powerui.smartcharging", "mltwostagemodelpredictorStatusLog");
    statusLog = v13->_statusLog;
    v13->_statusLog = v16;

    objc_storeStrong(&v13->_defaultsDomain, a3);
    objc_storeStrong(&v13->_context, a4);
    v18 = [PowerUISmartChargeUtilities dateForPreferenceKey:@"twoStageModelOutput" inDomain:v13->_defaultsDomain];
    deadline = v13->_deadline;
    v13->_deadline = v18;

    v20 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"twoStageModelEngagementResult" inDomain:v13->_defaultsDomain];
    [v20 doubleValue];
    v13->_lastEngagementResult = v21;

    v22 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"twoStageModelDurationResult" inDomain:v13->_defaultsDomain];
    [v22 doubleValue];
    v13->_lastDurationResult = v23;

    objc_storeStrong(&v13->_trialManager, a5);
    [(PowerUIMLTwoStageModelPredictor *)v13 loadMinInputChargeDuration];
    v13->_minInputChargeDuration = v24;
    v13->_threshold = 1.0;
    v25 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"twoStageModelConfidenceOverride" inDomain:v13->_defaultsDomain];
    confidenceOverride = v13->_confidenceOverride;
    v13->_confidenceOverride = v25;

    v27 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"twoStageModelDurationOverride" inDomain:v13->_defaultsDomain];
    durationOverride = v13->_durationOverride;
    v13->_durationOverride = v27;
  }

  return v13;
}

- (void)loadTrial
{
  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Beginning of loadTrial"];
  v3 = [(PowerUITrialManager *)self->_trialManager loadTrialEngageModelByDeletingExistingModel:1];
  engageModel = self->_engageModel;
  self->_engageModel = v3;

  v5 = [(PowerUITrialManager *)self->_trialManager loadTrialDurationModelByDeletingExistingModel:1];
  durationModel = self->_durationModel;
  self->_durationModel = v5;

  [(PowerUIMLTwoStageModelPredictor *)self loadThresholdForModel:self->_engageModel];
  self->_threshold = v7;
  [(PowerUIMLTwoStageModelPredictor *)self loadAdjustedHoursForModel:self->_durationModel];
  self->_adjustedDuration = v8;
  [(PowerUIMLTwoStageModelPredictor *)self loadMinInputChargeDuration];
  self->_minInputChargeDuration = v9;
  [(PowerUIMLTwoStageModelPredictor *)self resetSavedDeadline];

  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"End of loadTrial"];
}

- (double)loadThresholdForModel:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PowerUITrialManager *)self->_trialManager loadTrialThreshold];
  v6 = v5;
  if (v5 <= 0.0)
  {
    v7 = [v4 modelDescription];
    v8 = [v7 metadata];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
    v10 = [v9 objectForKeyedSubscript:@"threshold"];
    [v10 doubleValue];
    v6 = v11;

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = v6;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Failed to load trial threshold. Falling back to default %lf", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)loadAdjustedHoursForModel:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(PowerUITrialManager *)self->_trialManager loadTrialAdjustedHours];
  v6 = v5;
  if (v5 <= 0.0)
  {
    v7 = [v4 modelDescription];
    v8 = [v7 metadata];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
    v10 = [v9 objectForKeyedSubscript:@"leeway"];
    [v10 doubleValue];
    v6 = v11;

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = v6;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Failed to load trial adjusted hours. Falling back to default %lf", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)loadMinInputChargeDuration
{
  v10 = *MEMORY[0x277D85DE8];
  [(PowerUITrialManager *)self->_trialManager loadTrialMinInputChargeDuration];
  v4 = v3;
  if (v3 <= 0.0)
  {
    log = self->_log;
    v4 = 600.0;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = 0x4082C00000000000;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Failed to load trial minimum duration for model input. Falling back to default %lf", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)arrayWithShape:(id)a3 values:(id)a4 type:(int64_t)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    if (!v8)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      v19[0] = v11;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    }

    v12 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v8 dataType:a5 error:0];
    if (v12 && [v10 count])
    {
      v13 = 0;
      do
      {
        v14 = [v10 objectAtIndexedSubscript:v13];
        [v12 setObject:v14 atIndexedSubscript:v13];

        ++v13;
      }

      while (v13 < [v10 count]);
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Values not present", v18, 2u);
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)engagementModelBoltID
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [PowerUISmartChargeUtilities readStringForPreferenceKey:@"engageBoltID" inDomain:self->_defaultsDomain];
  if (!v3)
  {
    v4 = [(PowerUIMLTwoStageModelPredictor *)self engageModel];
    v5 = [v4 modelDescription];
    v6 = [v5 metadata];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
    v3 = [v7 objectForKeyedSubscript:@"model_version"];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Engagement model bolt ID is %@", &v12, 0xCu);
  }

  if (v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = @"Unknown";
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)durationModelBoltID
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [PowerUISmartChargeUtilities readStringForPreferenceKey:@"durationBoltID" inDomain:self->_defaultsDomain];
  if (!v3)
  {
    v4 = [(PowerUIMLTwoStageModelPredictor *)self durationModel];
    v5 = [v4 modelDescription];
    v6 = [v5 metadata];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
    v3 = [v7 objectForKeyedSubscript:@"model_version"];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Duration model bolt ID is %@", &v12, 0xCu);
  }

  if (v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = @"Unknown";
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setPluginDate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [PowerUISmartChargeUtilities batteryLevelAtDate:v5];
  self->_pluginBatteryLevel = v6;
  objc_storeStrong(&self->_pluginDate, a3);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    pluginDate = self->_pluginDate;
    v9 = log;
    v10 = [(PowerUIMLTwoStageModelPredictor *)self timeStringFromDate:pluginDate];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pluginBatteryLevel];
    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Plugin date set to %@, plugin battery level to %@", &v13, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (double)getHourBinID:(id)a3 forHourBin:(unint64_t)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a3;
  v7 = [v5 currentCalendar];
  v8 = [v7 components:32 fromDate:v6];

  v9 = [v8 hour] / a4;
  return v9;
}

- (id)predictFullChargeDateWithBatteryLevel:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_deadline)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      deadline = self->_deadline;
      v17 = 138412290;
      v18 = deadline;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Returning saved deadline: %@", &v17, 0xCu);
    }
  }

  else
  {
    pluginDate = self->_pluginDate;
    pluginBatteryLevel = self->_pluginBatteryLevel;
    v9 = [MEMORY[0x277CBEAA8] date];
    [(PowerUIMLTwoStageModelPredictor *)self adjustedChargingDecision:a3 withPluginDate:pluginDate withPluginBatteryLevel:v9 forDate:0 forStatus:pluginBatteryLevel];
    v11 = v10;

    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v11];
    v13 = self->_deadline;
    self->_deadline = v12;

    [PowerUISmartChargeUtilities setDate:self->_deadline forPreferenceKey:@"twoStageModelOutput" inDomain:self->_defaultsDomain];
  }

  v14 = self->_deadline;
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (double)adjustedChargingDecision:(unint64_t)a3 withPluginDate:(id)a4 withPluginBatteryLevel:(double)a5 forDate:(id)a6 forStatus:(BOOL)a7
{
  v7 = a7;
  v28 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = 88;
  if (v7)
  {
    v13 = 96;
  }

  v14 = *(&self->super.isa + v13);
  [(PowerUIMLTwoStageModelPredictor *)self chargingDecision:a3 withPluginDate:a4 withPluginBatteryLevel:v12 forDate:v14 withLog:a5];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = 0;
    _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "MLTwoStageModel output %f hours", buf, 0xCu);
  }

  v15 = 0.0 - self->_adjustedDuration;
  v16 = v14;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v15 < 0.0)
    {
      v17 = @"Distant Past";
    }

    else
    {
      v17 = [v12 dateByAddingTimeInterval:v15 * 3600.0];
    }

    adjustedDuration = self->_adjustedDuration;
    *buf = 138412802;
    v23 = v17;
    v24 = 2048;
    v25 = adjustedDuration;
    v26 = 2048;
    v27 = v15;
    _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "SmartCharge: %@ duration post adjustment of %f hours, is %f hours", buf, 0x20u);
    if (v15 >= 0.0)
    {
    }
  }

  if (!v7)
  {
    self->_lastDurationResult = v15;
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    [PowerUISmartChargeUtilities setNumber:v19 forPreferenceKey:@"twoStageModelDurationResult" inDomain:self->_defaultsDomain];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15 * 3600.0;
}

- (id)getInputFeaturesWithPluginDate:(id)a3 withPluginBatteryLevel:(double)a4 forDate:(id)a5 withLog:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = MEMORY[0x277CBEA80];
  v13 = a5;
  v14 = [v12 currentCalendar];
  v15 = [v14 components:32 fromDate:v13];

  v16 = [v15 hour];
  [v10 timeIntervalSinceDate:v13];
  v18 = v17;

  v19 = [PowerUISmartChargeUtilities pluginEventsBefore:v10 withMinimumDuration:self->_minInputChargeDuration withMinimumPlugoutBatteryLevel:75.0 ignoringDisconnectsShorterThan:300.0];
  v20 = v11;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
    v25 = 138412290;
    v26 = v21;
    _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Found %@ events for featurization", &v25, 0xCu);
  }

  if ([v19 count])
  {
    v22 = [(PowerUIMLTwoStageModelPredictor *)self getInputFeatures:v19 events:a4 pluginBatteryLevel:v10 timeFromPlugin:v20 pluginDate:v16 withLog:-v18];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (PowerUIModelQueryResult)chargingDecision:(SEL)a3 withPluginDate:(unint64_t)a4 withPluginBatteryLevel:(id)a5 forDate:(double)a6 withLog:(id)a7
{
  v60 = *MEMORY[0x277D85DE8];
  v13 = a8;
  v14 = a7;
  v15 = a5;
  v16 = os_transaction_create();
  v17 = [(PowerUIMLTwoStageModelPredictor *)self getInputFeaturesWithPluginDate:v15 withPluginBatteryLevel:v14 forDate:v13 withLog:a6];

  *&retstr->var0 = 0;
  *&retstr->var1 = vdupq_n_s64(0xC0F869F000000000);
  if (v17 || self->_durationOverride && self->_confidenceOverride)
  {
    v18 = [(PowerUIMLTwoStageModelPredictor *)self engageModel];
    v19 = [v18 predictionFromFeatures:v17 error:0];

    v20 = [v19 featureValueForName:@"classProbability"];
    v21 = [v20 dictionaryValue];

    v22 = v13;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      [v21 description];
      v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v57 = v23;
      _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_DEFAULT, "Engagement model raw output %@", buf, 0xCu);
    }

    v24 = [v21 objectForKeyedSubscript:&unk_282D4E0B0];
    [v24 doubleValue];
    v26 = v25;

    if (self->_confidenceOverride && +[PowerUISmartChargeUtilities isInternalBuild])
    {
      v27 = v22;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        [(NSNumber *)self->_confidenceOverride doubleValue];
        *buf = 134217984;
        v57 = v28;
        _os_log_impl(&dword_21B766000, v27, OS_LOG_TYPE_DEFAULT, "Confidence override exists: %f", buf, 0xCu);
      }

      [(NSNumber *)self->_confidenceOverride doubleValue];
      v26 = v29;
    }

    if (self->_statusLog != v22)
    {
      self->_lastEngagementResult = v26;
      v30 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
      [PowerUISmartChargeUtilities setNumber:v30 forPreferenceKey:@"twoStageModelEngagementResult" inDomain:self->_defaultsDomain];
    }

    threshold = self->_threshold;
    v32 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v26 <= threshold)
    {
      if (v32)
      {
        v48 = self->_threshold;
        *buf = 134218240;
        v57 = v26;
        v58 = 2048;
        v59 = v48;
        _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_DEFAULT, "Engagement model says NO (Prob %lf < Threshold %lf)", buf, 0x16u);
      }

      retstr->var1 = -99999.0;
      retstr->var2 = v26;
    }

    else
    {
      if (v32)
      {
        v33 = self->_threshold;
        *buf = 134218240;
        v57 = v26;
        v58 = 2048;
        v59 = v33;
        _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_DEFAULT, "Engagement model says YES (Prob %lf > Threshold %lf)", buf, 0x16u);
      }

      v52 = v21;
      v53 = v19;
      v54 = v16;
      v55 = v13;
      retstr->var0 = 1;
      retstr->var2 = v26;
      v34 = [(PowerUIMLTwoStageModelPredictor *)self durationModel];
      v35 = [v34 predictionFromFeatures:v17 error:0];

      v51 = v35;
      v36 = [v35 featureValueForName:@"duration_pred"];
      [v36 doubleValue];
      v38 = v37;

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v57 = v38;
        _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_DEFAULT, "Regression model output: %lf", buf, 0xCu);
      }

      v39 = [(PowerUIMLTwoStageModelPredictor *)self durationModel];
      v40 = [v39 modelDescription];
      v41 = [v40 metadata];
      v42 = [v41 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
      v43 = [v42 objectForKeyedSubscript:@"adjust_duration_by_confidence"];
      v44 = [v43 BOOLValue];

      v19 = v53;
      v16 = v54;
      v21 = v52;
      if (v44)
      {
        v38 = v26 * v38;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v57 = v38;
          _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_DEFAULT, "Duration adjusted by confidence: %lf", buf, 0xCu);
        }
      }

      if (self->_durationOverride)
      {
        v13 = v55;
        if (+[PowerUISmartChargeUtilities isInternalBuild])
        {
          v45 = v22;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            [(NSNumber *)self->_durationOverride doubleValue];
            *buf = 134217984;
            v57 = v46;
            _os_log_impl(&dword_21B766000, v45, OS_LOG_TYPE_DEFAULT, "Duration override exists: %f", buf, 0xCu);
          }

          [(NSNumber *)self->_durationOverride doubleValue];
          v38 = v47;
        }
      }

      else
      {
        v13 = v55;
      }

      retstr->var1 = v38;
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [PowerUIMLTwoStageModelPredictor chargingDecision:v13 withPluginDate:? withPluginBatteryLevel:? forDate:? withLog:?];
  }

  v50 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)convertInputFeaturesToNeuralFeatures:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Convert model input features for neural model", buf, 2u);
  }

  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [v4 dictionary];
  v8 = [(PowerUIMLTwoStageModelPredictor *)self getMultiArrayForFeatureDict:v7];

  [v6 setObject:v8 forKeyedSubscript:@"layer1_input"];
  v13 = 0;
  v9 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v6 error:&v13];
  v10 = v13;
  if (v10)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIMLTwoStageModelPredictor convertInputFeaturesToNeuralFeatures:];
    }

    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

- (void)resetSavedDeadline
{
  deadline = self->_deadline;
  self->_deadline = 0;

  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_lastEngagementResult = _Q0;
  [PowerUISmartChargeUtilities setDate:self->_deadline forPreferenceKey:@"twoStageModelOutput" inDomain:self->_defaultsDomain];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastEngagementResult];
  [PowerUISmartChargeUtilities setNumber:v9 forPreferenceKey:@"twoStageModelEngagementResult" inDomain:self->_defaultsDomain];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastDurationResult];
  [PowerUISmartChargeUtilities setNumber:v10 forPreferenceKey:@"twoStageModelDurationResult" inDomain:self->_defaultsDomain];
}

- (void)deleteCompiledModels
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  v4 = [(PowerUITrialManager *)self->_trialManager loadTrialEngageModelByDeletingExistingModel:1];
  if (v4)
  {
    os_unfair_lock_lock(&self->_loadModelLock);
    objc_storeStrong(&self->_engageModel, v4);
    [(PowerUIMLTwoStageModelPredictor *)self loadThresholdForModel:self->_engageModel];
    self->_threshold = v5;
    os_unfair_lock_unlock(&self->_loadModelLock);
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x277CCABB0];
      threshold = self->_threshold;
      v9 = log;
      v10 = [v7 numberWithDouble:threshold];
      v19 = 138412290;
      v20 = v10;
      _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Trial engage model found! Threshold: %@", &v19, 0xCu);
    }
  }

  v11 = [(PowerUITrialManager *)self->_trialManager loadTrialDurationModelByDeletingExistingModel:1];

  if (v11)
  {
    os_unfair_lock_lock(&self->_loadModelLock);
    objc_storeStrong(&self->_durationModel, v11);
    [(PowerUIMLTwoStageModelPredictor *)self loadAdjustedHoursForModel:self->_durationModel];
    self->_adjustedDuration = v12;
    os_unfair_lock_unlock(&self->_loadModelLock);
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x277CCABB0];
      adjustedDuration = self->_adjustedDuration;
      v16 = v13;
      v17 = [v14 numberWithDouble:adjustedDuration];
      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Trial duration model found! adjustedDuration = %@", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)deleteUpdatedModels
{
  v30[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = MEMORY[0x277CBEBC0];
  v30[0] = @"/var/mobile/Library/PowerUI";
  v30[1] = @"updatedClassifier.modelc";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v6 = [v4 fileURLWithPathComponents:v5];

  v7 = [v6 path];
  v24 = 0;
  v8 = [v3 removeItemAtPath:v7 error:&v24];
  v9 = v24;

  if ((v8 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = log;
      v12 = [v6 path];
      *buf = 138412546;
      v27 = v12;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
    }
  }

  v13 = MEMORY[0x277CBEBC0];
  v25[0] = @"/var/mobile/Library/PowerUI";
  v25[1] = @"updatedRegressor.modelc";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v15 = [v13 fileURLWithPathComponents:v14];

  v16 = [v15 path];
  v23 = v9;
  v17 = [v3 removeItemAtPath:v16 error:&v23];
  v18 = v23;

  if ((v17 & 1) == 0)
  {
    v19 = self->_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v15 path];
      *buf = 138412546;
      v27 = v21;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)loadEngagementModelFromURL:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock(&self->_loadModelLock);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Reload engagement model: %@", buf, 0xCu);
  }

  v12 = 0;
  v7 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v5 error:&v12];
  v8 = v12;
  engageModel = self->_engageModel;
  self->_engageModel = v7;

  if (v8)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIMLTwoStageModelPredictor engageModel];
    }
  }

  else
  {
    objc_storeStrong(&self->_compiledClassifier, a3);
    [(PowerUIMLTwoStageModelPredictor *)self loadThresholdForModel:self->_engageModel];
    self->_threshold = v10;
  }

  os_unfair_lock_unlock(&self->_loadModelLock);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)loadDurationModelFromURL:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock(&self->_loadModelLock);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Reload duration model: %@", buf, 0xCu);
  }

  v12 = 0;
  v7 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v5 error:&v12];
  v8 = v12;
  durationModel = self->_durationModel;
  self->_durationModel = v7;

  if (v8)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIMLTwoStageModelPredictor engageModel];
    }
  }

  else
  {
    objc_storeStrong(&self->_compiledRegressor, a3);
    [(PowerUIMLTwoStageModelPredictor *)self loadAdjustedHoursForModel:self->_durationModel];
    self->_adjustedDuration = v10;
  }

  os_unfair_lock_unlock(&self->_loadModelLock);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)adjustDeadlineForReengagement
{
  if (self->_deadline)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [v3 earlierDate:self->_deadline];
    deadline = self->_deadline;

    if (v4 == deadline)
    {
      v6 = [(NSDate *)self->_deadline dateByAddingTimeInterval:86400.0];
      v7 = self->_deadline;
      self->_deadline = v6;

      [PowerUISmartChargeUtilities setDate:self->_deadline forPreferenceKey:@"twoStageModelOutput" inDomain:self->_defaultsDomain];
    }

    v8 = self->_deadline;
  }

  else
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];
  }

  return v8;
}

- (void)engageModel
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_21B766000, v0, v1, "Error loading model from path: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)convertInputFeaturesToNeuralFeatures:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_21B766000, v0, v1, "Error while creating feature provider: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end