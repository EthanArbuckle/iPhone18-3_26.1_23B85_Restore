@interface PowerUIIntelligenceManager
- (PowerUIIntelligenceManager)initWithDefaultsDomain:(id)a3 withContextStore:(id)a4 withTrialManager:(id)a5;
- (id)queryPredictedPlugoutDate;
- (id)ttrURLforBadPredictionsWithStateDictionary:(id)a3;
- (void)handleCallback;
- (void)postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes:(int64_t)a3 andActualDurationMinutes:(int64_t)a4 andConfidence:(double)a5 didMeetThreshold:(int)a6 andWasWireless:(BOOL)a7 andPredictionScheme:(id)a8;
- (void)postPluginNotificationWithPredictorOutput:(id)a3 andError:(id)a4 andState:(id)a5;
- (void)removePluginNotification;
@end

@implementation PowerUIIntelligenceManager

- (PowerUIIntelligenceManager)initWithDefaultsDomain:(id)a3 withContextStore:(id)a4 withTrialManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = PowerUIIntelligenceManager;
  v12 = [(PowerUIIntelligenceManager *)&v21 init];
  if (v12)
  {
    v13 = os_log_create("com.apple.powerui.smartcharging.intelligence", "manager");
    log = v12->_log;
    v12->_log = v13;

    objc_storeStrong(&v12->_context, a4);
    objc_storeStrong(&v12->_trialManager, a5);
    v15 = [MEMORY[0x277D36CD0] predictor];
    chargingPredictor = v12->_chargingPredictor;
    v12->_chargingPredictor = v15;

    objc_storeStrong(&v12->_defaultsDomain, a3);
    lastPluginPredictionInfo = v12->_lastPluginPredictionInfo;
    v12->_lastPluginPredictionInfo = 0;

    v18 = v12->_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_DEFAULT, "Init powerui intelligence manager", v20, 2u);
    }
  }

  return v12;
}

- (id)queryPredictedPlugoutDate
{
  v2 = objc_opt_new();

  return v2;
}

- (void)handleCallback
{
  v118[3] = *MEMORY[0x277D85DE8];
  v3 = [(PowerUIIntelligenceManager *)self context];
  v4 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [(PowerUIIntelligenceManager *)self context];
    v7 = [PowerUISmartChargeUtilities isPluggedInWithContext:v6];

    if (+[PowerUISmartChargeUtilities isiPhone](PowerUISmartChargeUtilities, "isiPhone") && +[PowerUISmartChargeUtilities isInternalBuild])
    {
      v8 = [PowerUISmartChargeUtilities numberForPreferenceKey:@"chargingIntelligenceNotificationEnabled" inDomain:self->_defaultsDomain];
      v9 = [v8 BOOLValue];
    }

    else
    {
      v9 = 0;
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v109 = v7;
      *&v109[4] = 1024;
      *&v109[6] = v9;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Handling callback in intelligence manager isPluggedIn: %d, notificationsEnabled: %d", buf, 0xEu);
    }

    if (v7)
    {
      chargingPredictor = self->_chargingPredictor;
      v107 = 0;
      v12 = [(_OSChargingPredictor *)chargingPredictor chargePredictionOutputOfScheme:1 withError:&v107];
      v13 = v107;
      v14 = self->_chargingPredictor;
      v106 = v13;
      v102 = [(_OSChargingPredictor *)v14 chargePredictionOutputOfScheme:0 withError:&v106];
      v15 = v106;

      v16 = self->_chargingPredictor;
      v105 = 0;
      v17 = [(_OSChargingPredictor *)v16 chargePredictionOutputOfScheme:6 withError:&v105];
      v103 = v105;
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v109 = v103;
        _os_log_impl(&dword_21B766000, v18, OS_LOG_TYPE_INFO, "draError: %@", buf, 0xCu);
      }

      if (v9)
      {
        [(PowerUIIntelligenceManager *)self postPluginNotificationWithPredictorOutput:v17 andError:v15 andState:v5];
      }

      v100 = v5;
      v101 = v15;
      v97 = +[PowerUISmartChargeUtilities lastPluggedInDate];
      v117[0] = @"predictedDurationSeconds";
      v19 = MEMORY[0x277CCABB0];
      [v102 chargingDuration];
      v20 = [v19 numberWithDouble:?];
      v118[0] = v20;
      v117[1] = @"confidence";
      v21 = MEMORY[0x277CCABB0];
      [v102 confidence];
      v22 = [v21 numberWithDouble:?];
      v118[1] = v22;
      v117[2] = @"meetsThreshold";
      v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v102, "meetsSystemConfidenceThreshold")}];
      v118[2] = v23;
      v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:3];

      v115[0] = @"predictedDurationSeconds";
      v24 = MEMORY[0x277CCABB0];
      [v12 chargingDuration];
      v25 = [v24 numberWithDouble:?];
      v116[0] = v25;
      v115[1] = @"confidence";
      v26 = MEMORY[0x277CCABB0];
      [v12 confidence];
      v27 = [v26 numberWithDouble:?];
      v116[1] = v27;
      v115[2] = @"meetsThreshold";
      v99 = v12;
      v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "meetsSystemConfidenceThreshold")}];
      v116[2] = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:3];

      v113[0] = @"predictedDurationSeconds";
      v30 = MEMORY[0x277CCABB0];
      [v17 chargingDuration];
      v31 = [v30 numberWithDouble:?];
      v114[0] = v31;
      v113[1] = @"confidence";
      v32 = MEMORY[0x277CCABB0];
      [v17 confidence];
      v33 = [v32 numberWithDouble:?];
      v114[1] = v33;
      v113[2] = @"engagementDecision";
      v98 = v17;
      v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "meetsSystemConfidenceThreshold")}];
      v35 = v34;
      v36 = MEMORY[0x277CBEC38];
      if (!v103)
      {
        v36 = MEMORY[0x277CBEC28];
      }

      v114[2] = v34;
      v114[3] = v36;
      v113[3] = @"returnedError";
      v113[4] = @"isWireless";
      v37 = MEMORY[0x277CCABB0];
      v38 = [(PowerUIIntelligenceManager *)self context];
      v39 = [v37 numberWithBool:{+[PowerUISmartChargeUtilities deviceConnectedToWirelessChargerWithContext:](PowerUISmartChargeUtilities, "deviceConnectedToWirelessChargerWithContext:", v38)}];
      v114[4] = v39;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:5];

      v111[0] = @"classicPredictionInfo";
      v111[1] = @"onPluginPredictionInfo";
      v112[0] = v96;
      v112[1] = v29;
      v111[2] = @"draPredictionInfo";
      v111[3] = @"pluginDate";
      v112[2] = v40;
      v112[3] = v97;
      v111[4] = @"isWireless";
      v41 = MEMORY[0x277CCABB0];
      v42 = [(PowerUIIntelligenceManager *)self context];
      v43 = [v41 numberWithBool:{+[PowerUISmartChargeUtilities deviceConnectedToWirelessChargerWithContext:](PowerUISmartChargeUtilities, "deviceConnectedToWirelessChargerWithContext:", v42)}];
      v112[4] = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:5];

      objc_storeStrong(&self->_lastPluginPredictionInfo, v44);
      [PowerUISmartChargeUtilities setDict:v44 forPreferenceKey:@"intelligence-manager-predictions" inDomain:self->_defaultsDomain];
      v45 = self->_log;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v109 = v44;
        _os_log_impl(&dword_21B766000, v45, OS_LOG_TYPE_INFO, "Wrote prediction information %@ to defaults", buf, 0xCu);
      }

LABEL_18:
      v46 = v99;
      v5 = v100;
      v47 = v101;
LABEL_31:

      goto LABEL_32;
    }

    [(PowerUIIntelligenceManager *)self removePluginNotification];
    lastPluginPredictionInfo = self->_lastPluginPredictionInfo;
    if (lastPluginPredictionInfo)
    {
      v47 = lastPluginPredictionInfo;
      [(NSDictionary *)self->_lastPluginPredictionInfo objectForKeyedSubscript:@"pluginDate"];
    }

    else
    {
      v47 = [PowerUISmartChargeUtilities readDictForPreferenceKey:@"intelligence-manager-predictions" inDomain:self->_defaultsDomain];
      +[PowerUISmartChargeUtilities lastPluggedInDate];
    }
    v46 = ;
    [PowerUISmartChargeUtilities setDict:MEMORY[0x277CBEC10] forPreferenceKey:@"intelligence-manager-predictions" inDomain:self->_defaultsDomain];
    v49 = self->_lastPluginPredictionInfo;
    self->_lastPluginPredictionInfo = 0;

    if (v47 && [(NSDictionary *)v47 count]&& v46)
    {
      v50 = [(NSDictionary *)v47 objectForKeyedSubscript:@"pluginDate"];
      [v46 timeIntervalSinceDate:v50];
      v52 = fabs(v51);

      if (v52 <= 300.0)
      {
        v59 = [(NSDictionary *)v47 objectForKey:@"classicPredictionInfo"];
        if (v59)
        {
          v60 = v59;
          v61 = [(NSDictionary *)v47 objectForKey:@"onPluginPredictionInfo"];

          if (v61)
          {
            v62 = [MEMORY[0x277CBEAA8] now];
            [v62 timeIntervalSinceDate:v46];
            v104 = (v63 / 60.0);

            v64 = self->_log;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v109 = v46;
              _os_log_impl(&dword_21B766000, v64, OS_LOG_TYPE_INFO, "Logging metrics for charge session started at %@", buf, 0xCu);
            }

            v100 = v5;
            v101 = v47;
            v65 = [(NSDictionary *)v47 objectForKeyedSubscript:@"classicPredictionInfo"];
            v66 = self->_log;
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B766000, v66, OS_LOG_TYPE_DEFAULT, "Posting metrics from classic predictions", buf, 2u);
            }

            v67 = [v65 objectForKeyedSubscript:@"predictedDurationSeconds"];
            v68 = [v67 integerValue] / 60;

            v69 = [v65 objectForKeyedSubscript:@"confidence"];
            [v69 doubleValue];
            v71 = v70;
            v72 = [v65 objectForKeyedSubscript:@"meetsThreshold"];
            v73 = [v72 integerValue];
            v74 = [(NSDictionary *)v101 objectForKeyedSubscript:@"isWireless"];
            -[PowerUIIntelligenceManager postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes:andActualDurationMinutes:andConfidence:didMeetThreshold:andWasWireless:andPredictionScheme:](self, "postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes:andActualDurationMinutes:andConfidence:didMeetThreshold:andWasWireless:andPredictionScheme:", v68, v104, v73, [v74 BOOLValue], @"classic", v71);

            v75 = [(NSDictionary *)v101 objectForKeyedSubscript:@"onPluginPredictionInfo"];
            v76 = self->_log;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B766000, v76, OS_LOG_TYPE_DEFAULT, "Posting metrics from on plugin predictions", buf, 2u);
            }

            v99 = v46;
            v77 = [v75 objectForKeyedSubscript:@"predictedDurationSeconds"];
            v78 = [v77 integerValue] / 60;

            [(PowerUIIntelligenceManager *)self postAnalyticsEventForOldEventTypeWithPredictedDurationMinutes:v78 andActualDurationMinutes:v104];
            v79 = [v75 objectForKeyedSubscript:@"confidence"];
            [v79 doubleValue];
            v81 = v80;
            v82 = [v75 objectForKeyedSubscript:@"meetsThreshold"];
            v83 = [v82 integerValue];
            v84 = [(NSDictionary *)v101 objectForKeyedSubscript:@"isWireless"];
            -[PowerUIIntelligenceManager postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes:andActualDurationMinutes:andConfidence:didMeetThreshold:andWasWireless:andPredictionScheme:](self, "postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes:andActualDurationMinutes:andConfidence:didMeetThreshold:andWasWireless:andPredictionScheme:", v78, v104, v83, [v84 BOOLValue], @"onplugin", v81);

            v85 = [(NSDictionary *)v101 objectForKeyedSubscript:@"draPredictionInfo"];
            v86 = self->_log;
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B766000, v86, OS_LOG_TYPE_DEFAULT, "Posting metrics from DRA predictions", buf, 2u);
            }

            v87 = [v85 objectForKeyedSubscript:@"predictedDurationSeconds"];
            v88 = [v87 integerValue] / 60;

            v89 = [v85 objectForKeyedSubscript:@"engagementDecision"];
            v90 = [v89 BOOLValue];
            v91 = [v85 objectForKeyedSubscript:@"isWireless"];
            v92 = [v91 BOOLValue];
            v93 = [v85 objectForKeyedSubscript:@"returnedError"];
            -[PowerUIIntelligenceManager postAnalyticsEventForDynamicRuntimeAllocationWithPredictedDurationMinutes:andActualDurationMinutes:andEngagementDecision:andWasWireless:andSPIError:](self, "postAnalyticsEventForDynamicRuntimeAllocationWithPredictedDurationMinutes:andActualDurationMinutes:andEngagementDecision:andWasWireless:andSPIError:", v88, v104, v90, v92, [v93 BOOLValue]);

            goto LABEL_18;
          }
        }

        v94 = self->_log;
        if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        *buf = 138412290;
        *v109 = v47;
        v54 = "Corrupted saved prediction doesn't contain classic/plugin prediction info %@";
        v55 = v94;
        v56 = 12;
      }

      else
      {
        v53 = self->_log;
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        *buf = 138412546;
        *v109 = v47;
        *&v109[8] = 2112;
        v110 = v46;
        v54 = "Can't retrieve information on plugin that matches the saved prediction, \n saved info: %@ \n biome info %@";
        v55 = v53;
        v56 = 22;
      }
    }

    else
    {
      v57 = self->_log;
      if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      *buf = 0;
      v54 = "Prediction for previous plugin not found";
      v55 = v57;
      v56 = 2;
    }

    _os_log_impl(&dword_21B766000, v55, OS_LOG_TYPE_DEFAULT, v54, buf, v56);
    goto LABEL_31;
  }

LABEL_32:

  v58 = *MEMORY[0x277D85DE8];
}

id __117__PowerUIIntelligenceManager_postAnalyticsEventForOldEventTypeWithPredictedDurationMinutes_andActualDurationMinutes___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  *&v3 = *(a1 + 40) / 60.0;
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  [v2 setObject:v4 forKeyedSubscript:@"actualDuration"];

  *&v5 = *(a1 + 48) / 60.0;
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v2 setObject:v6 forKeyedSubscript:@"predictedDuration"];

  *&v7 = (*(a1 + 48) - *(a1 + 40)) / 60.0;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [v2 setObject:v8 forKeyedSubscript:@"durationDelta"];

  v9 = [*(a1 + 32) log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v2;
    v14 = 2112;
    v15 = @"com.apple.smartcharging.plugoutpredictions";
    _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Logged %@ to %@ event in CA", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes:(int64_t)a3 andActualDurationMinutes:(int64_t)a4 andConfidence:(double)a5 didMeetThreshold:(int)a6 andWasWireless:(BOOL)a7 andPredictionScheme:(id)a8
{
  v9 = a8;
  v8 = v9;
  AnalyticsSendEventLazy();
}

id __183__PowerUIIntelligenceManager_postAnalyticsEventForNewEventTypeWithPredictedDurationMinutes_andActualDurationMinutes_andConfidence_didMeetThreshold_andWasWireless_andPredictionScheme___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithInt:(30 * (*(a1 + 48) / 30))];
  [v2 setObject:v3 forKeyedSubscript:@"actualDuration"];

  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"actualDurationTrueValue"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:(30 * (*(a1 + 56) / 30))];
  [v2 setObject:v5 forKeyedSubscript:@"predictedDuration"];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  [v2 setObject:v6 forKeyedSubscript:@"predictedDurationTrueValue"];

  v7 = *(a1 + 56) - *(a1 + 48);
  v8 = [MEMORY[0x277CCABB0] numberWithInt:(15 * (v7 / 15))];
  [v2 setObject:v8 forKeyedSubscript:@"durationDelta"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  [v2 setObject:v9 forKeyedSubscript:@"durationDeltaTrueValue"];

  LODWORD(v10) = vcvtmd_s64_f64(*(a1 + 64) * 10.0);
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  [v2 setObject:v11 forKeyedSubscript:@"confidenceTrueValue"];

  LODWORD(v12) = vcvtmd_s64_f64(*(a1 + 64) * 10.0);
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  [v2 setObject:v13 forKeyedSubscript:@"confidence"];

  v14 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 72)];
  [v2 setObject:v14 forKeyedSubscript:@"meetsThreshold"];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"obc-v1-isWireless=%d-%@", *(a1 + 76), *(a1 + 32)];
  [v2 setObject:v15 forKeyedSubscript:@"modelInfo"];

  v16 = [*(a1 + 40) log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v2;
    v21 = 2112;
    v22 = @"com.apple.smartcharging.plugoutpredictions.discrete.v2";
    _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Logged %@ to %@ event in CA", buf, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v2;
}

id __178__PowerUIIntelligenceManager_postAnalyticsEventForDynamicRuntimeAllocationWithPredictedDurationMinutes_andActualDurationMinutes_andEngagementDecision_andWasWireless_andSPIError___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithLong:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"actualDuration"];

  v4 = [MEMORY[0x277CCABB0] numberWithLong:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"predictedDuration"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  [v2 setObject:v5 forKeyedSubscript:@"engagementDecision"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 57)];
  [v2 setObject:v6 forKeyedSubscript:@"queryReturnedError"];

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v7 > v8];
  [v2 setObject:v9 forKeyedSubscript:@"overpredicted"];

  v10 = *(a1 + 40);
  if (v7 <= v8)
  {
    v11 = 0;
    if (v10 < 1)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = *(a1 + 48) / v10;
    }
  }

  else
  {
    v11 = v10 * 1.5 > *(a1 + 48);
    v12 = 1.0;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:v11];
  [v2 setObject:v13 forKeyedSubscript:@"withinFiftyPercent"];

  *&v14 = v12;
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  [v2 setObject:v15 forKeyedSubscript:@"utilization"];

  v16 = [*(a1 + 32) log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = v2;
    v21 = 2112;
    v22 = @"com.apple.smartcharging.plugoutpredictions.dra";
    _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "Logged %@ to %@ event in CA", &v19, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)postPluginNotificationWithPredictorOutput:(id)a3 andError:(id)a4 andState:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    if ([v9 code] == 3)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        v12 = "Plugin Notification error: Not enough history, do not post";
LABEL_12:
        _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, v12, &v25, 2u);
      }
    }

    else
    {
      if (v9)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Prediction failed, please file a radar by tapping the notification"];
        v14 = self->_log;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [v9 localizedDescription];
          v25 = 138412290;
          v26 = v16;
          _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "Error querying the predictor %@", &v25, 0xCu);
        }

        v17 = +[PowerUINotificationManager sharedInstance];
        v18 = [(PowerUIIntelligenceManager *)self ttrURLforBadPredictionsWithStateDictionary:v10];
        v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:30.0];
        v20 = [v17 postInternalChargingIntelligenceNotificationWithChargingStatus:1 information:v13 url:v18 validUntil:v19];
      }

      else
      {
        v13 = +[PowerUINotificationManager sharedInstance];
        [v8 chargingDuration];
        v22 = v21;
        [v8 confidence];
        [v13 postInternalChargeDurationNotificationWithDuration:v22 withConfidence:v23];
      }

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        v12 = "Posted plugin notification ";
        goto LABEL_12;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)removePluginNotification
{
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    v3 = +[PowerUINotificationManager sharedInstance];
    [v3 cancelNotificationRequestWithIdentifier:@"charging-intelligence-notification"];

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Removed plugin notification", v5, 2u);
    }
  }
}

- (id)ttrURLforBadPredictionsWithStateDictionary:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  context = self->_context;
  v5 = a3;
  v6 = [PowerUISmartChargeUtilities currentBatteryLevelWithContext:context];
  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = [PowerUISmartChargeUtilities timeStringFromDate:v9];
  v11 = [v7 stringWithFormat:@"tap-to-radar://new?Title=Duration Predictor Failure (Unplugged at %@ percent)&Classification=Serious Bug&ComponentID=971083&ComponentName=PowerUI&ComponentVersion=all&Reproducible=Sometimes&Description=PLEASE ANSWER THESE QUESTIONS TO AID DEBUGGING:\n\n* Why did you unplug your device at %@?\n* Do you usually leave your device charged for a while at this time?\n* Is this your regular carry device? \n\n\n DebugInfo:\n %@", v8, v10, v5];

  v12 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v12];

  v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v14;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "TTR URL is %@", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

@end