@interface SOSCoreAnalyticsReporter
+ (BOOL)_firstPartyEnablementForTrigger:(int64_t)a3;
+ (BOOL)_thirdPartyEnablementForTrigger:(int64_t)a3;
+ (BOOL)isSensitiveTrigger:(int64_t)a3;
+ (id)SOSCoordinationDeviceString:(int64_t)a3;
+ (id)sharedInstance;
+ (void)_AnalyticsSendEventLazy:(id)a3 data:(id)a4;
- (void)reportSOSCancelationTimeout:(int64_t)a3;
- (void)reportSOSEvent:(id)a3 callDuration:(int64_t)a4 isHandoffTrigger:(BOOL)a5 onWristState:(int64_t)a6;
- (void)reportSOSRejectedWithTrigger:(int64_t)a3 currentTriggerMechanism:(int64_t)a4;
- (void)reportSOSTriggerHandoff:(int64_t)a3 source:(int64_t)a4 destination:(int64_t)a5 result:(int64_t)a6;
- (void)reportSOSTriggered:(int64_t)a3;
- (void)reportSOSUserCancelled:(int64_t)a3 lastFlowState:(int64_t)a4 countdownValue:(int64_t)a5;
@end

@implementation SOSCoreAnalyticsReporter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SOSCoreAnalyticsReporter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sosCoreAnalyticsReporter;

  return v2;
}

uint64_t __42__SOSCoreAnalyticsReporter_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sosCoreAnalyticsReporter = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)reportSOSTriggered:(int64_t)a3
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 isSafetyDataSubmissionAllowed];

  if (v4)
  {
    AnalyticsSendEventLazy();
  }

  else
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSCoreAnalyticsReport, not reporting SOS trigger because Safety data collection is OFF", buf, 2u);
    }
  }
}

id __47__SOSCoreAnalyticsReporter_reportSOSTriggered___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"triggerMechanism";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)reportSOSUserCancelled:(int64_t)a3 lastFlowState:(int64_t)a4 countdownValue:(int64_t)a5
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"triggerMechanism";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v13[0] = v7;
  v12[1] = @"lastFlowState2";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v13[1] = v8;
  v12[2] = @"lastCountdownValue";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v13[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [SOSCoreAnalyticsReporter _AnalyticsSendEventLazy:@"com.apple.sos.user_canceled" data:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)reportSOSTriggerHandoff:(int64_t)a3 source:(int64_t)a4 destination:(int64_t)a5 result:(int64_t)a6
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15[0] = @"triggerMechanism";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v16[0] = v9;
  v15[1] = @"handoffSourceDescription";
  v10 = [SOSCoreAnalyticsReporter SOSCoordinationDeviceString:a4];
  v16[1] = v10;
  v15[2] = @"handoffDestinationDescription";
  v11 = [SOSCoreAnalyticsReporter SOSCoordinationDeviceString:a5];
  v16[2] = v11;
  v15[3] = @"handoffResult";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  v16[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  [SOSCoreAnalyticsReporter _AnalyticsSendEventLazy:@"com.apple.sos.trigger.handoff" data:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)reportSOSRejectedWithTrigger:(int64_t)a3 currentTriggerMechanism:(int64_t)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"currentTriggerMechanism";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v9[1] = @"rejectedTriggerMechanism";
  v10[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [SOSCoreAnalyticsReporter _AnalyticsSendEventLazy:@"com.apple.sos.trigger.already_active" data:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)reportSOSCancelationTimeout:(int64_t)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"triggerMechanism";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [SOSCoreAnalyticsReporter _AnalyticsSendEventLazy:@"com.apple.sos.user_cancelation_timeout" data:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)reportSOSEvent:(id)a3 callDuration:(int64_t)a4 isHandoffTrigger:(BOOL)a5 onWristState:(int64_t)a6
{
  v28 = a5;
  v30[8] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = +[SOSCoreAnalyticsReporter _firstPartyEnablementForTrigger:](SOSCoreAnalyticsReporter, "_firstPartyEnablementForTrigger:", [v8 trigger]);
  v10 = +[SOSCoreAnalyticsReporter _thirdPartyEnablementForTrigger:](SOSCoreAnalyticsReporter, "_thirdPartyEnablementForTrigger:", [v8 trigger]);
  v11 = [v8 timeOfResolution];
  v12 = [v8 timeOfDetection];
  [v11 timeIntervalSinceDate:v12];
  v14 = v13;

  v15 = a6 == 1;
  v29[0] = @"triggerMechanism";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "trigger")}];
  v30[0] = v16;
  v29[1] = @"3rdPartyFeatureEnablement";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  v30[1] = v17;
  v29[2] = @"callDuration";
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v30[2] = v18;
  v29[3] = @"eventDuration";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  v30[3] = v19;
  v29[4] = @"eventResolution";
  v20 = MEMORY[0x277CCABB0];
  v21 = [v8 resolution];

  v22 = [v20 numberWithInteger:v21];
  v30[4] = v22;
  v29[5] = @"featureEnablement";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v30[5] = v23;
  v29[6] = @"wasHandoffTrigger";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:v28];
  v30[6] = v24;
  v29[7] = @"watchOnWrist";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:v15];
  v30[7] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:8];
  [SOSCoreAnalyticsReporter _AnalyticsSendEventLazy:@"com.apple.sos.event" data:v26];

  v27 = *MEMORY[0x277D85DE8];
}

id __68__SOSCoreAnalyticsReporter_reportSOSShouldPlayAudioDuringCountdown___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"shouldPlayAudioDuringCountdown";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __67__SOSCoreAnalyticsReporter_reportSOSAutomaticCallCountdownEnabled___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"automaticCallCountdownEnabled";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __67__SOSCoreAnalyticsReporter_reportSOSLongPressTriggersEmergencySOS___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"longPressTriggersEmergencySOS";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __60__SOSCoreAnalyticsReporter_reportSOSAutomaticNewtonEnabled___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"fallDetectionEnabled";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __56__SOSCoreAnalyticsReporter_reportSOSNumberOfVoiceLoops___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"numberOfVoiceLoops";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (BOOL)isSensitiveTrigger:(int64_t)a3
{
  if (a3 >= 0xA)
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SOSCoreAnalyticsReporter *)a3 isSensitiveTrigger:v5, v6, v7, v8, v9, v10, v11];
    }

    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = 0xA0u >> a3;
  }

  return v4 & 1;
}

+ (void)_AnalyticsSendEventLazy:(id)a3 data:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"triggerMechanism"];
  if (+[SOSCoreAnalyticsReporter isSensitiveTrigger:](SOSCoreAnalyticsReporter, "isSensitiveTrigger:", [v7 integerValue]))
  {
    v8 = [MEMORY[0x277D262A0] sharedConnection];
    v9 = [v8 isSafetyDataSubmissionAllowed];

    if ((v9 & 1) == 0)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v10 addEntriesFromDictionary:v6];
      [v10 setObject:&unk_2875D2B90 forKeyedSubscript:@"triggerMechanism"];
      v11 = [v10 copy];

      v6 = v11;
    }
  }

  v13 = v6;
  v12 = v6;
  AnalyticsSendEventLazy();
}

+ (BOOL)_firstPartyEnablementForTrigger:(int64_t)a3
{
  result = 0;
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {

        return +[SOSUtilities newtonTriggersEmergencySOS];
      }
    }

    else
    {
      if (a3 == 7)
      {

        return +[SOSUtilities kappaTriggersEmergencySOS];
      }

      if (a3 != 8)
      {
        if (a3 == 9)
        {
          return result;
        }

LABEL_19:
        v5 = sos_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(SOSCoreAnalyticsReporter *)a3 _firstPartyEnablementForTrigger:v5, v6, v7, v8, v9, v10, v11];
        }

        return 0;
      }
    }

    return 1;
  }

  if (a3 <= 2)
  {
    if ((a3 - 1) < 2)
    {

      return +[SOSUtilities isCallWithSideButtonPressesEnabled];
    }

    if (!a3)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (a3 == 3)
  {

    return +[SOSUtilities isCallWithVolumeLockHoldEnabled];
  }

  else
  {

    return +[SOSUtilities longPressTriggersEmergencySOS];
  }
}

+ (BOOL)_thirdPartyEnablementForTrigger:(int64_t)a3
{
  if (a3 > 9)
  {
    v7 = sos_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SOSCoreAnalyticsReporter *)a3 _thirdPartyEnablementForTrigger:v7, v8, v9, v10, v11, v12, v13];
    }

    return 0;
  }

  if (((1 << a3) & 0x35F) != 0)
  {
    return 0;
  }

  if (a3 != 5)
  {
    return +[SOSUtilities getKappaThirdPartyActiveAppBundle]!= 0;
  }

  v6 = TCCAccessCopyBundleIdentifiersForService();
  v4 = [v6 count] != 0;

  return v4;
}

+ (id)SOSCoordinationDeviceString:(int64_t)a3
{
  v3 = @"none";
  if (a3 == 1)
  {
    v3 = @"watch";
  }

  if (a3 == 2)
  {
    return @"phone";
  }

  else
  {
    return v3;
  }
}

+ (void)isSensitiveTrigger:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4(&dword_264323000, a2, a3, "SOSCoreAnalyticsReporter,isSensitiveTrigger,unrecognized SOSTriggerMechanism %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_firstPartyEnablementForTrigger:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4(&dword_264323000, a2, a3, "SOSCoreAnalyticsReporter,_firstPartyEnablementForTrigger,unrecognized SOSTriggerMechanism %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_thirdPartyEnablementForTrigger:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4(&dword_264323000, a2, a3, "SOSCoreAnalyticsReporter,_thirdPartyEnablementForTrigger,unrecognized SOSTriggerMechanism %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end