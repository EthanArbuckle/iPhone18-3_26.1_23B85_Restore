@interface PowerUIMLAudioAccessoryModelPredictor
- (BOOL)deviceHasAtLeastOneLongConnection:(id)a3 forReferenceDate:(id)a4;
- (BOOL)isSufficientDataAvailableForEngagementForDevice:(id)a3;
- (MLModel)highUsageEngageModel;
- (MLModel)highUsageRegressionModel;
- (MLModel)lowUsageEngageModel;
- (MLModel)lowUsageRegressionModel;
- (PowerUIMLAudioAccessoryModelPredictor)init;
- (double)historicalMeaningfulUnderchargeRate:(id)a3;
- (id)chargingDecisionForDate:(id)a3 forAudioAccessory:(id)a4;
- (id)getBTConnectionEventsUpTo:(id)a3 withMinimumDuration:(double)a4 withLimit:(unsigned int)a5 forDevice:(id)a6;
- (id)getInputFeaturesForDate:(id)a3 withEventsInDescendingOrder:(id)a4 withLog:(id)a5;
@end

@implementation PowerUIMLAudioAccessoryModelPredictor

- (PowerUIMLAudioAccessoryModelPredictor)init
{
  v17.receiver = self;
  v17.super_class = PowerUIMLAudioAccessoryModelPredictor;
  v2 = [(PowerUIMLAudioAccessoryModelPredictor *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = os_log_create("com.apple.powerui.smartcharging.AudioAccessory", "mlaudioaccessorymodelpredictor");
    log = v3->_log;
    v3->_log = v4;

    v6 = v3->_log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16[0] = 0;
      _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Initializing PowerUIMLAudioAccessoryModelPredictor...", v16, 2u);
    }

    v7 = os_log_create("com.apple.powerui.smartcharging", "mlaudioaccessorymodelpredictorStatusLog");
    statusLog = v3->_statusLog;
    v3->_statusLog = v7;

    v9 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"MinimumNumberOfDaysOfHistory" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 intValue];
    }

    else
    {
      v11 = 14;
    }

    v3->_minimumDaysOfHistory = v11;
    v12 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"MinimumNumberOfPreviousConnections" inDomain:@"com.apple.smartcharging.topoffprotection.audioaccessories"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 intValue];
    }

    else
    {
      v14 = 10;
    }

    v3->_minimumNumberOfPreviousConnections = v14;
    v3->_lastUsedLeeway = -1.0;
  }

  return v3;
}

- (MLModel)highUsageEngageModel
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_highUsageEngageModel)
  {
    v3 = os_transaction_create();
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"base_engage" ofType:@"mlmodelc"];

    v6 = MEMORY[0x277CBFF20];
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v8 = [v6 modelWithContentsOfURL:v7 error:0];
    highUsageEngageModel = self->_highUsageEngageModel;
    self->_highUsageEngageModel = v8;

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Created highUsageEngageModel object lazily.", v13, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = self->_highUsageEngageModel;

  return v11;
}

- (MLModel)highUsageRegressionModel
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_highUsageRegressionModel)
  {
    v3 = os_transaction_create();
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"base_duration" ofType:@"mlmodelc"];

    v6 = MEMORY[0x277CBFF20];
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v8 = [v6 modelWithContentsOfURL:v7 error:0];
    highUsageRegressionModel = self->_highUsageRegressionModel;
    self->_highUsageRegressionModel = v8;

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Created highUsageRegressionModel object lazily.", v13, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = self->_highUsageRegressionModel;

  return v11;
}

- (MLModel)lowUsageEngageModel
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lowUsageEngageModel)
  {
    v3 = os_transaction_create();
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"easy_engage" ofType:@"mlmodelc"];

    v6 = MEMORY[0x277CBFF20];
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v16 = 0;
    v8 = [v6 modelWithContentsOfURL:v7 error:&v16];
    v9 = v16;
    lowUsageEngageModel = self->_lowUsageEngageModel;
    self->_lowUsageEngageModel = v8;

    if (v9)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Error loading low usage engagement model: %@", buf, 0xCu);
      }
    }

    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "Created lowUsageEngageModel object lazily.", buf, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = self->_lowUsageEngageModel;
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (MLModel)lowUsageRegressionModel
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lowUsageRegressionModel)
  {
    v3 = os_transaction_create();
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"long_duration" ofType:@"mlmodelc"];

    v6 = MEMORY[0x277CBFF20];
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v16 = 0;
    v8 = [v6 modelWithContentsOfURL:v7 error:&v16];
    v9 = v16;
    lowUsageRegressionModel = self->_lowUsageRegressionModel;
    self->_lowUsageRegressionModel = v8;

    if (v9)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Error loading low usage regression model: %@", buf, 0xCu);
      }
    }

    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "Created lowUsageRegressionModel object lazily.", buf, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = self->_lowUsageRegressionModel;
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)chargingDecisionForDate:(id)a3 forAudioAccessory:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v72 = *&v6;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "chargingDecisionForDate %@ was called", buf, 0xCu);
  }

  v9 = os_transaction_create();
  v10 = [(PowerUIMLAudioAccessoryModelPredictor *)self getBTConnectionEventsForPredictionUpTo:v6 forDevice:v7];
  v11 = [PowerUISmartChargeUtilities concatenateChargeSessions:v10 withMaxDeltaSecondsBetweenEvents:10];

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = v12;
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    *buf = 138412290;
    v72 = *&v15;
    _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "Found %@ events for featurization", buf, 0xCu);
  }

  if ([v11 count] >= self->_minimumNumberOfPreviousConnections)
  {
    v19 = [v11 reverseObjectEnumerator];
    v18 = [v19 allObjects];

    [PowerUIPredictorHelper meanEventDuration:v18];
    v21 = v20;
    [PowerUIPredictorHelper medianTimeBetweenDescendingEvents:v18];
    v23 = v22;
    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v72 = v21;
      v73 = 2048;
      v74 = v23;
      _os_log_impl(&dword_21B766000, v24, OS_LOG_TYPE_DEFAULT, "meanEventDuration: %f - medianTimeBetweenEvents: %f", buf, 0x16u);
    }

    v66 = v9;
    if (v21 >= 1400.0)
    {
      v25 = [(PowerUIMLAudioAccessoryModelPredictor *)self highUsageEngageModel];
      if (v23 >= 139200.0)
      {
        v68 = [(PowerUIMLAudioAccessoryModelPredictor *)self lowUsageRegressionModel];
        v26 = 0.88;
      }

      else
      {
        v68 = [(PowerUIMLAudioAccessoryModelPredictor *)self highUsageRegressionModel];
        v26 = 0.82;
      }
    }

    else
    {
      v25 = [(PowerUIMLAudioAccessoryModelPredictor *)self lowUsageEngageModel];
      if (v23 >= 139200.0)
      {
        v68 = [(PowerUIMLAudioAccessoryModelPredictor *)self lowUsageRegressionModel];
        v26 = 0.84;
      }

      else
      {
        v68 = [(PowerUIMLAudioAccessoryModelPredictor *)self highUsageRegressionModel];
        v26 = 0.75;
      }
    }

    self->_lastUsedLeeway = 9.375;
    v27 = [v25 modelDescription];
    v28 = [v27 metadata];
    v29 = [v28 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
    v30 = [v29 objectForKeyedSubscript:@"model_version"];
    v67 = [v30 stringValue];

    v31 = self->_log;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = MEMORY[0x277CCABB0];
      v33 = v31;
      v34 = [v32 numberWithDouble:v26];
      v35 = [MEMORY[0x277CCABB0] numberWithDouble:9.375];
      *buf = 138412802;
      v72 = *&v34;
      v73 = 2112;
      v74 = *&v35;
      v75 = 2112;
      v76 = v67;
      _os_log_impl(&dword_21B766000, v33, OS_LOG_TYPE_DEFAULT, "threshold: %@ - leeway: %@ - model version: %@", buf, 0x20u);
    }

    v36 = [(PowerUIMLAudioAccessoryModelPredictor *)self getInputFeaturesForDate:v6 withEventsInDescendingOrder:v18 withLog:self->_log];
    v70 = 0;
    v65 = v25;
    v37 = [v25 predictionFromFeatures:v36 error:&v70];
    v38 = v70;
    if (v38 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [PowerUIMLAudioAccessoryModelPredictor chargingDecisionForDate:forAudioAccessory:];
    }

    v39 = [v37 featureValueForName:@"classProbability"];
    v40 = [v39 dictionaryValue];

    v41 = self->_log;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      v43 = [v40 description];
      *buf = 138412290;
      v72 = *&v43;
      _os_log_impl(&dword_21B766000, v42, OS_LOG_TYPE_DEFAULT, "Engagement model raw output %@", buf, 0xCu);
    }

    v44 = [v40 objectForKeyedSubscript:&unk_282D4E098];
    [v44 doubleValue];
    v46 = v45;

    v69 = v38;
    v47 = [v68 predictionFromFeatures:v36 error:&v69];
    v48 = v69;

    if (v48)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUIMLAudioAccessoryModelPredictor chargingDecisionForDate:forAudioAccessory:];
      }
    }

    else if (!v38)
    {
      v57 = [v47 featureValueForName:@"duration_pred"];
      [v57 doubleValue];
      v59 = v58;

      v60 = self->_log;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v72 = v59;
        _os_log_impl(&dword_21B766000, v60, OS_LOG_TYPE_DEFAULT, "Unadjusted regression model output %lf", buf, 0xCu);
      }

      v61 = v59 + -9.375;
      v62 = self->_log;
      v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
      if (v46 > v26)
      {
        if (v63)
        {
          *buf = 134218240;
          v72 = v46;
          v73 = 2048;
          v74 = v26;
          _os_log_impl(&dword_21B766000, v62, OS_LOG_TYPE_DEFAULT, "Engagement model says YES (Prob %lf > Threshold %lf)", buf, 0x16u);
        }

        if (v61 > 0.0 && v61 <= 4320.0)
        {
          v53 = v67;
          v54 = [[PowerUIModelPredictionContainer alloc] initWithEngagementConfidence:v67 withSmartChargeDuration:v46 withModelVersion:v61];
          goto LABEL_32;
        }

        v64 = self->_log;
        v53 = v67;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v72 = v61;
          _os_log_impl(&dword_21B766000, v64, OS_LOG_TYPE_DEFAULT, "... but smartChargeDuration out of bound (%lf)", buf, 0xCu);
        }

        v49 = [PowerUIModelPredictionContainer alloc];
        v52 = 3;
        v50 = v46;
        v51 = v61;
LABEL_31:
        v54 = [(PowerUIModelPredictionContainer *)v49 initInvalidEntry:v52 withEngagementConfidence:v53 withSmartChargeDuration:v50 withModelVersion:v51];
LABEL_32:
        v17 = v54;

        v9 = v66;
        goto LABEL_33;
      }

      if (v63)
      {
        *buf = 134218240;
        v72 = v46;
        v73 = 2048;
        v74 = v26;
        _os_log_impl(&dword_21B766000, v62, OS_LOG_TYPE_DEFAULT, "... but engagement model says NO (Prob %lf < Threshold %lf)", buf, 0x16u);
      }

      v49 = [PowerUIModelPredictionContainer alloc];
      v52 = 2;
      v50 = v46;
      v51 = v61;
LABEL_30:
      v53 = v67;
      goto LABEL_31;
    }

    v49 = [PowerUIModelPredictionContainer alloc];
    v50 = 0.0;
    v51 = 0.0;
    v52 = 5;
    goto LABEL_30;
  }

  v16 = self->_log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [PowerUIMLAudioAccessoryModelPredictor chargingDecisionForDate:v16 forAudioAccessory:v11];
  }

  v17 = [[PowerUIModelPredictionContainer alloc] initInvalidEntry:1 withEngagementConfidence:@"Unknown" withSmartChargeDuration:0.0 withModelVersion:0.0];
  v18 = v11;
LABEL_33:

  v55 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)getInputFeaturesForDate:(id)a3 withEventsInDescendingOrder:(id)a4 withLog:(id)a5
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [v10 components:608 fromDate:v7];

  v12 = [v11 hour];
  v13 = v12;
  v14 = 0.0;
  if ([PowerUISmartChargeUtilities isWeekend:v7])
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = [PowerUIPredictorHelper timeBetweenUsesForSortedDescendingByAgeEvents:v8 forHourBin:1 atDate:v7 addAtDate:1];
  v17 = [PowerUIPredictorHelper timeBetweenUsesForSortedDescendingByAgeEvents:v8 forHourBin:2 atDate:v7 addAtDate:1];
  v18 = [PowerUIPredictorHelper timeBetweenUsesForSortedDescendingByAgeEvents:v8 forHourBin:4 atDate:v7 addAtDate:1];
  v19 = [PowerUIPredictorHelper timeBetweenUsesForSortedDescendingByAgeEvents:v8 forHourBin:24 atDate:v7 addAtDate:1];
  [PowerUIPredictorHelper medianOf:v16];
  v21 = v20;
  [PowerUIPredictorHelper medianOf:v17];
  v23 = v22;
  [PowerUIPredictorHelper medianOf:v18];
  v25 = v24;
  [PowerUIPredictorHelper medianOf:v19];
  v60 = v26;
  [PowerUIPredictorHelper standardDeviationOf:v16];
  v61 = v27;
  v68 = v17;
  [PowerUIPredictorHelper standardDeviationOf:v17];
  v62 = v28;
  v67 = v18;
  [PowerUIPredictorHelper standardDeviationOf:v18];
  v63 = v29;
  v66 = v19;
  [PowerUIPredictorHelper standardDeviationOf:v19];
  v65 = v30;
  v70 = v9;
  v31 = [PowerUIPredictorHelper getUsageBucketsForEvents:v8 forDate:v7 withLog:v9];
  v69 = v11;
  +[PowerUIPredictorHelper hoursUntilUseFromBucketedUsage:withCurrentHour:withComponentsMinutes:](PowerUIPredictorHelper, "hoursUntilUseFromBucketedUsage:withCurrentHour:withComponentsMinutes:", v31, v12, [v11 minute]);
  v64 = v32;
  [(PowerUIMLAudioAccessoryModelPredictor *)self historicalMeaningfulUnderchargeRate:v8];
  v34 = v33;
  v35 = [MEMORY[0x277CBEB38] dictionary];
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  [v35 setObject:v36 forKeyedSubscript:@"hour"];

  v37 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
  [v35 setObject:v37 forKeyedSubscript:@"is_weekend"];

  v38 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
  [v35 setObject:v38 forKeyedSubscript:@"meaningful_undercharge_rolling_average"];

  v39 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
  [v35 setObject:v39 forKeyedSubscript:@"classic_time_between_uses_med_dur_1"];

  v40 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
  [v35 setObject:v40 forKeyedSubscript:@"classic_time_between_uses_med_dur_2"];

  v41 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
  [v35 setObject:v41 forKeyedSubscript:@"classic_time_between_uses_med_dur_4"];

  v42 = [MEMORY[0x277CCABB0] numberWithDouble:v60];
  [v35 setObject:v42 forKeyedSubscript:@"classic_time_between_uses_med_dur_24"];

  v43 = [MEMORY[0x277CCABB0] numberWithDouble:v61];
  [v35 setObject:v43 forKeyedSubscript:@"classic_time_between_uses_std_dur_1"];

  v44 = [MEMORY[0x277CCABB0] numberWithDouble:v62];
  [v35 setObject:v44 forKeyedSubscript:@"classic_time_between_uses_std_dur_2"];

  v45 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
  [v35 setObject:v45 forKeyedSubscript:@"classic_time_between_uses_std_dur_4"];

  v46 = [MEMORY[0x277CCABB0] numberWithDouble:v65];
  [v35 setObject:v46 forKeyedSubscript:@"classic_time_between_uses_std_dur_24"];

  v47 = [MEMORY[0x277CCABB0] numberWithDouble:v64];
  [v35 setObject:v47 forKeyedSubscript:@"hours_until_use"];

  v48 = 0;
  do
  {
    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"hour_plus_%d", v48];
    v50 = (v13 + v14);
    if (v50 > 23)
    {
      v50 -= 24;
    }

    v51 = MEMORY[0x277CCABB0];
    v52 = [v31 objectAtIndexedSubscript:v50];
    [v52 doubleValue];
    v53 = [v51 numberWithDouble:?];
    [v35 setObject:v53 forKeyedSubscript:v49];

    v14 = v14 + 1.0;
    v48 = (v48 + 1);
  }

  while (v48 != 6);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = v35;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "ml input dict: %@", buf, 0xCu);
  }

  v72 = 0;
  v55 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:v35 error:&v72];
  v56 = v72;
  if (v56)
  {
    v57 = self->_log;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v74 = v56;
      _os_log_impl(&dword_21B766000, v57, OS_LOG_TYPE_DEFAULT, "Error creating input features: %@", buf, 0xCu);
    }
  }

  v58 = *MEMORY[0x277D85DE8];

  return v55;
}

- (BOOL)isSufficientDataAvailableForEngagementForDevice:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_minimumNumberOfPreviousConnections > 0)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [(PowerUIMLAudioAccessoryModelPredictor *)self getBTConnectionEventsForPredictionUpTo:v5 forDevice:v4];
    if ([v6 count] >= self->_minimumNumberOfPreviousConnections)
    {
      v18 = [v6 firstObject];
      v19 = [v18 startDate];
      [v5 timeIntervalSinceDate:v19];
      v21 = v20;

      if (v21 < self->_minimumDaysOfHistory * 86400.0)
      {
        v10 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v10 setDateFormat:@"yyyy-MM-dd 'at' HH:mm"];
        v22 = self->_log;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          log = v22;
          v31 = [v6 firstObject];
          v23 = [v31 startDate];
          v24 = [v10 stringFromDate:v23];
          v25 = [v24 UTF8String];
          v26 = [MEMORY[0x277CCABB0] numberWithDouble:v21 / 86400.0];
          v27 = [MEMORY[0x277CCABB0] numberWithInt:self->_minimumDaysOfHistory];
          *buf = 136315650;
          v33 = v25;
          v34 = 2112;
          v35 = v26;
          v36 = 2112;
          v37 = v27;
          _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Oldest connection event (%s) younger than %@ < %@ days. Disengage.", buf, 0x20u);
        }

        goto LABEL_12;
      }

      v8 = 1;
    }

    else
    {
      v7 = self->_log;
      v8 = 0;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = MEMORY[0x277CCABB0];
        v10 = v7;
        v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_minimumNumberOfPreviousConnections];
        *buf = 138412546;
        v33 = v11;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Not enough connection events: %@ < %@. Disengage.", buf, 0x16u);

LABEL_12:
        v8 = 0;
      }
    }

    goto LABEL_14;
  }

  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x277CCABB0];
    minimumNumberOfPreviousConnections = self->_minimumNumberOfPreviousConnections;
    v16 = v13;
    v17 = [v14 numberWithInt:minimumNumberOfPreviousConnections];
    *buf = 138412290;
    v33 = v17;
    _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Minimum number of required connections is %@ < 1. Proceed.", buf, 0xCu);
  }

  v8 = 1;
LABEL_14:

  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)getBTConnectionEventsUpTo:(id)a3 withMinimumDuration:(double)a4 withLimit:(unsigned int)a5 forDevice:(id)a6
{
  v9 = a3;
  v10 = a6;
  v28 = os_transaction_create();
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = [MEMORY[0x277CBEB18] array];
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy_;
  v41[4] = __Block_byref_object_dispose_;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy_;
  v39[4] = __Block_byref_object_dispose_;
  v40 = 0;
  v11 = objc_alloc(MEMORY[0x277CF1A50]);
  v12 = [v9 dateByAddingTimeInterval:-2592000.0];
  v33 = [v11 initWithStartDate:v12 endDate:v9 maxEvents:a5 lastN:0 reversed:0];
  v34 = v9;

  v13 = objc_alloc(MEMORY[0x277CF1A50]);
  v14 = [v9 dateByAddingTimeInterval:-5184000.0];
  v30 = [v13 initWithStartDate:v14 endDate:v9 maxEvents:0 lastN:0 reversed:0];

  v32 = BiomeLibrary();
  v31 = [v32 Device];
  v15 = [v31 Wireless];
  v16 = [v15 Bluetooth];
  v17 = [v16 publisherWithOptions:v33];
  v18 = BiomeLibrary();
  v19 = [v18 Device];
  v20 = [v19 TimeZone];
  v21 = [v20 publisherWithOptions:v30];
  v22 = [v17 orderedMergeWithOther:v21 comparator:&__block_literal_global];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __107__PowerUIMLAudioAccessoryModelPredictor_getBTConnectionEventsUpTo_withMinimumDuration_withLimit_forDevice___block_invoke_2;
  v37[3] = &unk_2782D3DE8;
  v23 = v10;
  v38 = v23;
  v24 = [v22 filterWithIsIncluded:v37];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __107__PowerUIMLAudioAccessoryModelPredictor_getBTConnectionEventsUpTo_withMinimumDuration_withLimit_forDevice___block_invoke_3;
  v36[3] = &unk_2782D3E10;
  v36[4] = self;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __107__PowerUIMLAudioAccessoryModelPredictor_getBTConnectionEventsUpTo_withMinimumDuration_withLimit_forDevice___block_invoke_179;
  v35[3] = &unk_2782D3E38;
  v35[4] = self;
  v35[5] = v41;
  *&v35[8] = a4;
  v35[6] = v39;
  v35[7] = &v43;
  v25 = [v24 sinkWithCompletion:v36 receiveInput:v35];

  v26 = [MEMORY[0x277CBEA60] arrayWithArray:v44[5]];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(&v43, 8);

  return v26;
}

uint64_t __107__PowerUIMLAudioAccessoryModelPredictor_getBTConnectionEventsUpTo_withMinimumDuration_withLimit_forDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __107__PowerUIMLAudioAccessoryModelPredictor_getBTConnectionEventsUpTo_withMinimumDuration_withLimit_forDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 eventBody];
    v7 = [v6 address];
    v8 = [v7 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

void __107__PowerUIMLAudioAccessoryModelPredictor_getBTConnectionEventsUpTo_withMinimumDuration_withLimit_forDevice___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = *(*(a1 + 32) + 64);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __107__PowerUIMLAudioAccessoryModelPredictor_getBTConnectionEventsUpTo_withMinimumDuration_withLimit_forDevice___block_invoke_3_cold_1(v4, v3);
    }
  }
}

void __107__PowerUIMLAudioAccessoryModelPredictor_getBTConnectionEventsUpTo_withMinimumDuration_withLimit_forDevice___block_invoke_179(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = v4;
    v9 = *(*(a1 + 32) + 64);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __107__PowerUIMLAudioAccessoryModelPredictor_getBTConnectionEventsUpTo_withMinimumDuration_withLimit_forDevice___block_invoke_179_cold_1(v9, v8);
    }

    v10 = [v8 eventBody];
    if ([v10 starting])
    {
      v11 = *(*(*(a1 + 48) + 8) + 40);

      if (!v11)
      {
        v12 = *(*(a1 + 48) + 8);
        v13 = v8;
        v14 = *(v12 + 40);
        *(v12 + 40) = v13;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v14 = [v8 eventBody];
    if (([v14 starting] & 1) == 0)
    {
      v15 = *(*(*(a1 + 48) + 8) + 40);

      if (!v15)
      {
LABEL_17:

        goto LABEL_18;
      }

      v16 = [*(*(*(a1 + 40) + 8) + 40) eventBody];
      v17 = 0.0;
      if ([v16 hasSecondsFromGMT])
      {
        v18 = [*(*(*(a1 + 40) + 8) + 40) eventBody];
        [v18 secondsFromGMT];
        v17 = v19;
      }

      v20 = MEMORY[0x277CBEAA8];
      [*(*(*(a1 + 48) + 8) + 40) timestamp];
      v14 = [v20 dateWithTimeIntervalSinceReferenceDate:v17 + v21];
      v22 = MEMORY[0x277CBEAA8];
      [v8 timestamp];
      v24 = [v22 dateWithTimeIntervalSinceReferenceDate:v17 + v23];
      [v24 timeIntervalSinceDate:v14];
      if (v25 >= *(a1 + 64))
      {
        v26 = *(*(*(a1 + 56) + 8) + 40);
        v27 = [[PowerUIChargeSession alloc] initWithStartDate:v14 withEndDate:v24 withStartSoC:0 withEndSoC:0];
        [v26 addObject:v27];
      }

      v28 = *(*(a1 + 48) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
LABEL_18:
  objc_autoreleasePoolPop(v5);
}

- (BOOL)deviceHasAtLeastOneLongConnection:(id)a3 forReferenceDate:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:a4 sinceDate:-2592000.0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      v14 = [v13 startDate];
      v15 = [v7 earlierDate:v14];
      v16 = [v13 startDate];

      if (v15 == v16)
      {
        break;
      }

      v17 = [v13 endDate];
      v18 = [v13 startDate];
      [v17 timeIntervalSinceDate:v18];
      v20 = v19;

      if (v20 >= 10800.0)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "At least one long engagement was found.", v26, 2u);
        }

        v22 = 1;
        goto LABEL_15;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v21 = self->_log;
  v22 = 0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_21B766000, v21, OS_LOG_TYPE_DEFAULT, "No long engagements were found.", v26, 2u);
    v22 = 0;
  }

LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (double)historicalMeaningfulUnderchargeRate:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = (v4 - 2);
    v7 = v4 & 0x7FFFFFFF;
    v8 = v4 - 1;
    do
    {
      v37 = v5;
      v9 = v7 - 1;
      v10 = [v3 objectAtIndexedSubscript:{v7 - 1, v7}];
      v11 = [v10 endDate];
      v12 = [v11 dateByAddingTimeInterval:9000.0];

      v13 = [v3 objectAtIndexedSubscript:v9];
      v14 = [v13 endDate];
      v35 = v9;
      v15 = [v3 objectAtIndexedSubscript:v9];
      v16 = [v15 startDate];
      [v14 timeIntervalSinceDate:v16];
      v18 = v17;

      v19 = v8;
      v36 = v6;
      v20 = v6;
      do
      {
        v21 = [v3 objectAtIndexedSubscript:v20];
        v22 = [v21 startDate];
        v23 = [v12 earlierDate:v22];
        v24 = [v3 objectAtIndexedSubscript:v20];
        v25 = [v24 startDate];

        if (v23 != v25)
        {
          break;
        }

        v26 = [v3 objectAtIndexedSubscript:v20];
        v27 = [v26 endDate];
        v28 = [v27 earlierDate:v12];
        v29 = [v3 objectAtIndexedSubscript:v20];
        v30 = [v29 startDate];
        [v28 timeIntervalSinceDate:v30];
        v18 = v18 + v31;

        --v20;
        --v19;
      }

      while (v19 > 0);
      v5 = v37;
      if (v18 > 7200.0)
      {
        v5 = v37 + 1;
      }

      v7 = v35;
      v6 = v36 - 1;
      --v8;
    }

    while (v34 > 2);
  }

  v32 = 0.0;
  if ([v3 count] && v5)
  {
    v32 = v5 / [v3 count];
  }

  return v32;
}

- (void)chargingDecisionForDate:forAudioAccessory:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_21B766000, v0, v1, "Error getting engagement model predictions: %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)chargingDecisionForDate:forAudioAccessory:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_21B766000, v0, v1, "Error getting regression model predictions: %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)chargingDecisionForDate:(void *)a1 forAudioAccessory:(void *)a2 .cold.3(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_21B766000, v4, v6, "Only %@ events were found, charging decision should not have been queried for device.", v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __107__PowerUIMLAudioAccessoryModelPredictor_getBTConnectionEventsUpTo_withMinimumDuration_withLimit_forDevice___block_invoke_3_cold_1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 error];
  v5 = [v4 description];
  [v5 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_21B766000, v3, v6, "Error getting bluetooth biome events: %s", v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __107__PowerUIMLAudioAccessoryModelPredictor_getBTConnectionEventsUpTo_withMinimumDuration_withLimit_forDevice___block_invoke_179_cold_1(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEAA8];
  v4 = a1;
  [a2 timestamp];
  v5 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v6 = MEMORY[0x277CCABB0];
  v7 = [a2 eventBody];
  v8 = [v6 numberWithBool:{objc_msgSend(v7, "starting")}];
  v10 = 138412546;
  v11 = v5;
  v12 = 2112;
  v13 = v8;
  _os_log_debug_impl(&dword_21B766000, v4, OS_LOG_TYPE_DEBUG, "bluetooth event: %@ - starting :%@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end