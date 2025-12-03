@interface PowerUIMLTwoStageModelPredictor
- (MLModel)durationModel;
- (MLModel)engageModel;
- (PowerUIMLTwoStageModelPredictor)initWithDefaultsDomain:(id)domain withContextStore:(id)store withTrialManager:(id)manager;
- (PowerUIModelQueryResult)chargingDecision:(SEL)decision withPluginDate:(unint64_t)date withPluginBatteryLevel:(id)level forDate:(double)forDate withLog:(id)log;
- (double)adjustedChargingDecision:(unint64_t)decision withPluginDate:(id)date withPluginBatteryLevel:(double)level forDate:(id)forDate forStatus:(BOOL)status;
- (double)getHourBinID:(id)d forHourBin:(unint64_t)bin;
- (double)loadAdjustedHoursForModel:(id)model;
- (double)loadMinInputChargeDuration;
- (double)loadThresholdForModel:(id)model;
- (id)adjustDeadlineForReengagement;
- (id)arrayWithShape:(id)shape values:(id)values type:(int64_t)type;
- (id)convertInputFeaturesToNeuralFeatures:(id)features;
- (id)durationModelBoltID;
- (id)engagementModelBoltID;
- (id)getInputFeaturesWithPluginDate:(id)date withPluginBatteryLevel:(double)level forDate:(id)forDate withLog:(id)log;
- (id)predictFullChargeDateWithBatteryLevel:(unint64_t)level;
- (id)timeStringFromDate:(id)date;
- (void)deleteCompiledModels;
- (void)deleteUpdatedModels;
- (void)engageModel;
- (void)loadDurationModelFromURL:(id)l;
- (void)loadEngagementModelFromURL:(id)l;
- (void)loadTrial;
- (void)resetSavedDeadline;
- (void)setPluginDate:(id)date;
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
      modelDescription = [(MLModel *)v18 modelDescription];
      metadata = [modelDescription metadata];
      v20 = *MEMORY[0x277CBFE90];
      [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
      v21 = v39 = v9;
      [v21 objectForKeyedSubscript:@"model_version"];
      v22 = v38 = v10;
      modelDescription2 = [(MLModel *)self->_engageModel modelDescription];
      metadata2 = [modelDescription2 metadata];
      v25 = [metadata2 objectForKeyedSubscript:v20];
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
    modelDescription3 = [(MLModel *)self->_engageModel modelDescription];
    metadata3 = [modelDescription3 metadata];
    v31 = [metadata3 objectForKeyedSubscript:v20];
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
      modelDescription = [(MLModel *)v17 modelDescription];
      metadata = [modelDescription metadata];
      v19 = *MEMORY[0x277CBFE90];
      v20 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
      v21 = [v20 objectForKeyedSubscript:@"model_version"];
      modelDescription2 = [(MLModel *)self->_durationModel modelDescription];
      metadata2 = [modelDescription2 metadata];
      v24 = [metadata2 objectForKeyedSubscript:v19];
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
    modelDescription3 = [(MLModel *)self->_durationModel modelDescription];
    metadata3 = [modelDescription3 metadata];
    v30 = [metadata3 objectForKeyedSubscript:v19];
    v31 = [v30 objectForKeyedSubscript:@"model_version"];
    [v27 setString:v31 forPreferenceKey:@"durationBoltID" inDomain:self->_defaultsDomain];
  }

  os_unfair_lock_unlock(&self->_loadModelLock);
  [*(v3 + 2480) logMemoryUsageInternalForEvent:@"End of durationModel"];
  v32 = self->_durationModel;
  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)timeStringFromDate:(id)date
{
  v3 = timeStringFromDate__onceToken;
  dateCopy = date;
  if (v3 != -1)
  {
    [PowerUIMLTwoStageModelPredictor timeStringFromDate:];
  }

  v5 = [timeStringFromDate__formatter stringFromDate:dateCopy];

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

- (PowerUIMLTwoStageModelPredictor)initWithDefaultsDomain:(id)domain withContextStore:(id)store withTrialManager:(id)manager
{
  domainCopy = domain;
  storeCopy = store;
  managerCopy = manager;
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

    objc_storeStrong(&v13->_defaultsDomain, domain);
    objc_storeStrong(&v13->_context, store);
    v18 = [PowerUISmartChargeUtilities dateForPreferenceKey:@"twoStageModelOutput" inDomain:v13->_defaultsDomain];
    deadline = v13->_deadline;
    v13->_deadline = v18;

    v20 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"twoStageModelEngagementResult" inDomain:v13->_defaultsDomain];
    [v20 doubleValue];
    v13->_lastEngagementResult = v21;

    v22 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"twoStageModelDurationResult" inDomain:v13->_defaultsDomain];
    [v22 doubleValue];
    v13->_lastDurationResult = v23;

    objc_storeStrong(&v13->_trialManager, manager);
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

- (double)loadThresholdForModel:(id)model
{
  v17 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  [(PowerUITrialManager *)self->_trialManager loadTrialThreshold];
  v6 = v5;
  if (v5 <= 0.0)
  {
    modelDescription = [modelCopy modelDescription];
    metadata = [modelDescription metadata];
    v9 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
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

- (double)loadAdjustedHoursForModel:(id)model
{
  v17 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  [(PowerUITrialManager *)self->_trialManager loadTrialAdjustedHours];
  v6 = v5;
  if (v5 <= 0.0)
  {
    modelDescription = [modelCopy modelDescription];
    metadata = [modelDescription metadata];
    v9 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
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

- (id)arrayWithShape:(id)shape values:(id)values type:(int64_t)type
{
  v19[1] = *MEMORY[0x277D85DE8];
  shapeCopy = shape;
  valuesCopy = values;
  v10 = valuesCopy;
  if (valuesCopy)
  {
    if (!shapeCopy)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(valuesCopy, "count")}];
      v19[0] = v11;
      shapeCopy = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    }

    v12 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:shapeCopy dataType:type error:0];
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
    engageModel = [(PowerUIMLTwoStageModelPredictor *)self engageModel];
    modelDescription = [engageModel modelDescription];
    metadata = [modelDescription metadata];
    v7 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
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
    durationModel = [(PowerUIMLTwoStageModelPredictor *)self durationModel];
    modelDescription = [durationModel modelDescription];
    metadata = [modelDescription metadata];
    v7 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
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

- (void)setPluginDate:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [PowerUISmartChargeUtilities batteryLevelAtDate:dateCopy];
  self->_pluginBatteryLevel = v6;
  objc_storeStrong(&self->_pluginDate, date);
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

- (double)getHourBinID:(id)d forHourBin:(unint64_t)bin
{
  v5 = MEMORY[0x277CBEA80];
  dCopy = d;
  currentCalendar = [v5 currentCalendar];
  v8 = [currentCalendar components:32 fromDate:dCopy];

  v9 = [v8 hour] / bin;
  return v9;
}

- (id)predictFullChargeDateWithBatteryLevel:(unint64_t)level
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
    date = [MEMORY[0x277CBEAA8] date];
    [(PowerUIMLTwoStageModelPredictor *)self adjustedChargingDecision:level withPluginDate:pluginDate withPluginBatteryLevel:date forDate:0 forStatus:pluginBatteryLevel];
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

- (double)adjustedChargingDecision:(unint64_t)decision withPluginDate:(id)date withPluginBatteryLevel:(double)level forDate:(id)forDate forStatus:(BOOL)status
{
  statusCopy = status;
  v28 = *MEMORY[0x277D85DE8];
  forDateCopy = forDate;
  v13 = 88;
  if (statusCopy)
  {
    v13 = 96;
  }

  v14 = *(&self->super.isa + v13);
  [(PowerUIMLTwoStageModelPredictor *)self chargingDecision:decision withPluginDate:date withPluginBatteryLevel:forDateCopy forDate:v14 withLog:level];
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
      v17 = [forDateCopy dateByAddingTimeInterval:v15 * 3600.0];
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

  if (!statusCopy)
  {
    self->_lastDurationResult = v15;
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    [PowerUISmartChargeUtilities setNumber:v19 forPreferenceKey:@"twoStageModelDurationResult" inDomain:self->_defaultsDomain];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15 * 3600.0;
}

- (id)getInputFeaturesWithPluginDate:(id)date withPluginBatteryLevel:(double)level forDate:(id)forDate withLog:(id)log
{
  v27 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  logCopy = log;
  v12 = MEMORY[0x277CBEA80];
  forDateCopy = forDate;
  currentCalendar = [v12 currentCalendar];
  v15 = [currentCalendar components:32 fromDate:forDateCopy];

  hour = [v15 hour];
  [dateCopy timeIntervalSinceDate:forDateCopy];
  v18 = v17;

  v19 = [PowerUISmartChargeUtilities pluginEventsBefore:dateCopy withMinimumDuration:self->_minInputChargeDuration withMinimumPlugoutBatteryLevel:75.0 ignoringDisconnectsShorterThan:300.0];
  v20 = logCopy;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
    v25 = 138412290;
    v26 = v21;
    _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Found %@ events for featurization", &v25, 0xCu);
  }

  if ([v19 count])
  {
    v22 = [(PowerUIMLTwoStageModelPredictor *)self getInputFeatures:v19 events:level pluginBatteryLevel:dateCopy timeFromPlugin:v20 pluginDate:hour withLog:-v18];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (PowerUIModelQueryResult)chargingDecision:(SEL)decision withPluginDate:(unint64_t)date withPluginBatteryLevel:(id)level forDate:(double)forDate withLog:(id)log
{
  v60 = *MEMORY[0x277D85DE8];
  v13 = a8;
  logCopy = log;
  levelCopy = level;
  v16 = os_transaction_create();
  v17 = [(PowerUIMLTwoStageModelPredictor *)self getInputFeaturesWithPluginDate:levelCopy withPluginBatteryLevel:logCopy forDate:v13 withLog:forDate];

  *&retstr->var0 = 0;
  *&retstr->var1 = vdupq_n_s64(0xC0F869F000000000);
  if (v17 || self->_durationOverride && self->_confidenceOverride)
  {
    engageModel = [(PowerUIMLTwoStageModelPredictor *)self engageModel];
    v19 = [engageModel predictionFromFeatures:v17 error:0];

    v20 = [v19 featureValueForName:@"classProbability"];
    dictionaryValue = [v20 dictionaryValue];

    v22 = v13;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      [dictionaryValue description];
      v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v57 = v23;
      _os_log_impl(&dword_21B766000, v22, OS_LOG_TYPE_DEFAULT, "Engagement model raw output %@", buf, 0xCu);
    }

    v24 = [dictionaryValue objectForKeyedSubscript:&unk_282D4E0B0];
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

      v52 = dictionaryValue;
      v53 = v19;
      v54 = v16;
      v55 = v13;
      retstr->var0 = 1;
      retstr->var2 = v26;
      durationModel = [(PowerUIMLTwoStageModelPredictor *)self durationModel];
      v35 = [durationModel predictionFromFeatures:v17 error:0];

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

      durationModel2 = [(PowerUIMLTwoStageModelPredictor *)self durationModel];
      modelDescription = [durationModel2 modelDescription];
      metadata = [modelDescription metadata];
      v42 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
      v43 = [v42 objectForKeyedSubscript:@"adjust_duration_by_confidence"];
      bOOLValue = [v43 BOOLValue];

      v19 = v53;
      v16 = v54;
      dictionaryValue = v52;
      if (bOOLValue)
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

- (id)convertInputFeaturesToNeuralFeatures:(id)features
{
  featuresCopy = features;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Convert model input features for neural model", buf, 2u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [featuresCopy dictionary];
  v8 = [(PowerUIMLTwoStageModelPredictor *)self getMultiArrayForFeatureDict:dictionary2];

  [dictionary setObject:v8 forKeyedSubscript:@"layer1_input"];
  v13 = 0;
  v9 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:dictionary error:&v13];
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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = MEMORY[0x277CBEBC0];
  v30[0] = @"/var/mobile/Library/PowerUI";
  v30[1] = @"updatedClassifier.modelc";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v6 = [v4 fileURLWithPathComponents:v5];

  path = [v6 path];
  v24 = 0;
  v8 = [defaultManager removeItemAtPath:path error:&v24];
  v9 = v24;

  if ((v8 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v11 = log;
      path2 = [v6 path];
      *buf = 138412546;
      v27 = path2;
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

  path3 = [v15 path];
  v23 = v9;
  v17 = [defaultManager removeItemAtPath:path3 error:&v23];
  v18 = v23;

  if ((v17 & 1) == 0)
  {
    v19 = self->_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      path4 = [v15 path];
      *buf = 138412546;
      v27 = path4;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)loadEngagementModelFromURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  os_unfair_lock_lock(&self->_loadModelLock);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = lCopy;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Reload engagement model: %@", buf, 0xCu);
  }

  v12 = 0;
  v7 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:lCopy error:&v12];
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
    objc_storeStrong(&self->_compiledClassifier, l);
    [(PowerUIMLTwoStageModelPredictor *)self loadThresholdForModel:self->_engageModel];
    self->_threshold = v10;
  }

  os_unfair_lock_unlock(&self->_loadModelLock);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)loadDurationModelFromURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  os_unfair_lock_lock(&self->_loadModelLock);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = lCopy;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Reload duration model: %@", buf, 0xCu);
  }

  v12 = 0;
  v7 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:lCopy error:&v12];
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
    objc_storeStrong(&self->_compiledRegressor, l);
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
    date = [MEMORY[0x277CBEAA8] date];
    v4 = [date earlierDate:self->_deadline];
    deadline = self->_deadline;

    if (v4 == deadline)
    {
      v6 = [(NSDate *)self->_deadline dateByAddingTimeInterval:86400.0];
      v7 = self->_deadline;
      self->_deadline = v6;

      [PowerUISmartChargeUtilities setDate:self->_deadline forPreferenceKey:@"twoStageModelOutput" inDomain:self->_defaultsDomain];
    }

    distantPast = self->_deadline;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  return distantPast;
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