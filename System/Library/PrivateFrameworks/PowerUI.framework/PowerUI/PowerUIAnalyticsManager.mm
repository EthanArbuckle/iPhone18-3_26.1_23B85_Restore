@interface PowerUIAnalyticsManager
+ (id)sharedInstance;
+ (int)convertTimelineStringToOBCEvent:(id)event;
+ (int)obcModeOfOperationToBiomeModeOfOperation:(unint64_t)operation;
- (BOOL)submitEngagementEventWithBatteryLevel:(id)level targetSoC:(id)c predictedEndOfCharge:(id)charge modeOfOperation:(int)operation eventType:(int)type;
- (BOOL)submitGaugingEventWithUpdateType:(int)type qmaxState:(int)state daysSinceQMax:(id)max ocvState:(int)ocvState daysSinceOCV:(id)v fullChargeState:(int)chargeState daysSinceFullChargeAttempt:(id)attempt;
- (PowerUIAnalyticsManager)init;
- (id)chargingStatisticsForSessionBetween:(id)between and:(id)and;
- (id)chargingStatisticsFrom:(id)from to:(id)to;
- (id)chargingStatisticsSince:(id)since;
- (id)gaugingMitigationStatisticsSince:(id)since;
- (id)stringFromEngagementEvent:(id)event;
- (void)printExistingEvents;
@end

@implementation PowerUIAnalyticsManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PowerUIAnalyticsManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __41__PowerUIAnalyticsManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (PowerUIAnalyticsManager)init
{
  v11.receiver = self;
  v11.super_class = PowerUIAnalyticsManager;
  v2 = [(PowerUIAnalyticsManager *)&v11 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerui.smartcharging", "analyticsmanager");
    log = v2->_log;
    v2->_log = v3;

    v5 = v2->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Log created", v10, 2u);
    }

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.poweruianalyticsmanager.eventsubmissionqueue", v6);
    eventSubmissionQueue = v2->_eventSubmissionQueue;
    v2->_eventSubmissionQueue = v7;
  }

  return v2;
}

+ (int)convertTimelineStringToOBCEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"EligibleForIdle"])
  {
    v4 = 7;
  }

  else if ([eventCopy isEqualToString:@"Plugin"])
  {
    v4 = 6;
  }

  else if ([eventCopy isEqualToString:@"Unplug"])
  {
    v4 = 12;
  }

  else if ([eventCopy isEqualToString:@"FullyCharged"])
  {
    v4 = 10;
  }

  else if ([eventCopy isEqualToString:@"Engaged"])
  {
    v4 = 8;
  }

  else if ([eventCopy isEqualToString:@"TopOff"] & 1) != 0 || (objc_msgSend(eventCopy, "isEqualToString:", @"Interrupted"))
  {
    v4 = 9;
  }

  else if ([eventCopy isEqualToString:@"Disabled"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
    if (([eventCopy isEqualToString:@"TempDisabled"] & 1) == 0)
    {
      if ([eventCopy isEqualToString:@"TemporarilyDisabled"])
      {
        v4 = 3;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

+ (int)obcModeOfOperationToBiomeModeOfOperation:(unint64_t)operation
{
  if (operation - 1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_21B8482C8[operation - 1];
  }
}

- (void)printExistingEvents
{
  v3 = BiomeLibrary();
  device = [v3 Device];
  charging = [device Charging];
  smartCharging = [charging SmartCharging];
  publisher = [smartCharging publisher];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__PowerUIAnalyticsManager_printExistingEvents__block_invoke_2;
  v9[3] = &unk_2782D3F10;
  v9[4] = self;
  v8 = [publisher sinkWithCompletion:&__block_literal_global_2 receiveInput:v9];
}

void __46__PowerUIAnalyticsManager_printExistingEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CBEAA8];
    log = v3;
    v5 = a2;
    [v5 timestamp];
    v6 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
    v7 = [v5 eventBody];
    v8 = [v7 batteryLevel];
    v9 = [v5 eventBody];
    v10 = [v9 targetSoC];
    v11 = [v5 eventBody];
    [v11 predictedEndOfCharge];
    v13 = v12;
    v14 = [v5 eventBody];
    [v14 mode];
    v15 = BMDeviceSmartChargingModeOfOperationAsString();
    v16 = [v5 eventBody];

    [v16 obcEvent];
    v17 = BMDeviceSmartChargingOBCEventAsString();
    *buf = 138413570;
    v21 = v6;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v10;
    v26 = 2048;
    v27 = v13;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v17;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Event (%@): SoC: %d - TargetSoC: %d - PredictedEoC: %f - Mode: %@ - event: %@", buf, 0x36u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)submitEngagementEventWithBatteryLevel:(id)level targetSoC:(id)c predictedEndOfCharge:(id)charge modeOfOperation:(int)operation eventType:(int)type
{
  levelCopy = level;
  cCopy = c;
  chargeCopy = charge;
  if (type)
  {
    eventSubmissionQueue = self->_eventSubmissionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __122__PowerUIAnalyticsManager_submitEngagementEventWithBatteryLevel_targetSoC_predictedEndOfCharge_modeOfOperation_eventType___block_invoke;
    block[3] = &unk_2782D3F38;
    v19 = levelCopy;
    v20 = cCopy;
    operationCopy = operation;
    typeCopy = type;
    v21 = chargeCopy;
    selfCopy = self;
    dispatch_sync(eventSubmissionQueue, block);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Unknown engagement event for AnalyticsManager, do not add to stream", buf, 2u);
    }
  }

  return type != 0;
}

void __122__PowerUIAnalyticsManager_submitEngagementEventWithBatteryLevel_targetSoC_predictedEndOfCharge_modeOfOperation_eventType___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = os_transaction_create();
  v3 = objc_alloc(MEMORY[0x277CF1120]);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = MEMORY[0x277CCABB0];
  [*(a1 + 48) timeIntervalSinceReferenceDate];
  v7 = [v6 numberWithDouble:?];
  v8 = [v3 initWithBatteryLevel:v4 targetSoC:v5 predictedEndOfCharge:v7 mode:*(a1 + 64) obcEvent:*(a1 + 68)];

  v9 = BiomeLibrary();
  v10 = [v9 Device];
  v11 = [v10 Charging];
  v12 = [v11 SmartCharging];
  v13 = [v12 source];
  [v13 sendEvent:v8];

  v14 = *(*(a1 + 56) + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [v8 obcEvent];
    v17 = [v8 mode];
    v18 = [v8 batteryLevel];
    v19 = [v8 targetSoC];
    [v8 predictedEndOfCharge];
    v22[0] = 67110144;
    v22[1] = v16;
    v23 = 1024;
    v24 = v17;
    v25 = 1024;
    v26 = v18;
    v27 = 1024;
    v28 = v19;
    v29 = 2048;
    v30 = v20;
    _os_log_impl(&dword_21B766000, v15, OS_LOG_TYPE_DEFAULT, "Sent engagementEvent: EventType: %d - Mode: %d - SoC: %d - TargetSoC: %d - PredictedEoC: %f", v22, 0x24u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)submitGaugingEventWithUpdateType:(int)type qmaxState:(int)state daysSinceQMax:(id)max ocvState:(int)ocvState daysSinceOCV:(id)v fullChargeState:(int)chargeState daysSinceFullChargeAttempt:(id)attempt
{
  maxCopy = max;
  vCopy = v;
  attemptCopy = attempt;
  log = self->_log;
  if (type)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUIAnalyticsManager submitGaugingEventWithUpdateType:? qmaxState:? daysSinceQMax:? ocvState:? daysSinceOCV:? fullChargeState:? daysSinceFullChargeAttempt:?];
    }

    eventSubmissionQueue = self->_eventSubmissionQueue;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __149__PowerUIAnalyticsManager_submitGaugingEventWithUpdateType_qmaxState_daysSinceQMax_ocvState_daysSinceOCV_fullChargeState_daysSinceFullChargeAttempt___block_invoke;
    v21[3] = &unk_2782D3F60;
    typeCopy = type;
    stateCopy = state;
    v22 = maxCopy;
    ocvStateCopy = ocvState;
    v23 = vCopy;
    chargeStateCopy = chargeState;
    v24 = attemptCopy;
    selfCopy = self;
    dispatch_async(eventSubmissionQueue, v21);
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Unknown gauging event for AnalyticsManager, do not add to stream", buf, 2u);
  }

  return type != 0;
}

void __149__PowerUIAnalyticsManager_submitGaugingEventWithUpdateType_qmaxState_daysSinceQMax_ocvState_daysSinceOCV_fullChargeState_daysSinceFullChargeAttempt___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CF10A0]) initWithUpdateType:*(a1 + 64) qmaxState:*(a1 + 68) daysSinceQMax:*(a1 + 32) ocvState:*(a1 + 72) daysSinceOCV:*(a1 + 40) fullChargeState:*(a1 + 76) daysSinceFullChargeAttempt:*(a1 + 48)];
  v3 = BiomeLibrary();
  v4 = [v3 Device];
  v5 = [v4 Charging];
  v6 = [v5 BatteryGauging];
  v7 = [v6 source];
  [v7 sendEvent:v2];

  v8 = *(*(a1 + 56) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v2 updateType];
    [v2 qmaxState];
    v11 = BMDeviceBatteryGaugingQMaxStateAsString();
    v12 = [v2 daysSinceQMax];
    [v2 ocvState];
    v13 = BMDeviceBatteryGaugingOCVStateAsString();
    v14 = [v2 daysSinceOCV];
    [v2 fullChargeState];
    v15 = BMDeviceBatteryGaugingPeriodicFullChargeStateAsString();
    *buf = 67110658;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 1024;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 1024;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    v29 = 1024;
    v30 = [v2 daysSinceFullChargeAttempt];
    _os_log_impl(&dword_21B766000, v9, OS_LOG_TYPE_DEFAULT, "Sent gauging Event: Type: %d - qmaxState: %@ - daysSinceQMax: %d - ocvState: %@ - daysSinceOCV: %d - fullChargeState: %@ - daysSinceFullChargeAttempt: %d", buf, 0x38u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)stringFromEngagementEvent:(id)event
{
  v18 = MEMORY[0x277CCACA8];
  v3 = MEMORY[0x277CBEAA8];
  eventCopy = event;
  [eventCopy timestamp];
  v5 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  eventBody = [eventCopy eventBody];
  batteryLevel = [eventBody batteryLevel];
  eventBody2 = [eventCopy eventBody];
  targetSoC = [eventBody2 targetSoC];
  eventBody3 = [eventCopy eventBody];
  [eventBody3 predictedEndOfCharge];
  v12 = v11;
  eventBody4 = [eventCopy eventBody];
  mode = [eventBody4 mode];
  eventBody5 = [eventCopy eventBody];

  v16 = [v18 stringWithFormat:@"%@: SoC: %d - TargetSoC: %d - PredictedEoC: %f - Mode: %d - event: %d", v5, batteryLevel, targetSoC, v12, mode, objc_msgSend(eventBody5, "obcEvent")];

  return v16;
}

- (id)chargingStatisticsForSessionBetween:(id)between and:(id)and
{
  v84[8] = *MEMORY[0x277D85DE8];
  betweenCopy = between;
  andCopy = and;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x3032000000;
  v81[3] = __Block_byref_object_copy__0;
  v81[4] = __Block_byref_object_dispose__0;
  v82 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__0;
  v79 = __Block_byref_object_dispose__0;
  v80 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x3032000000;
  v73[3] = __Block_byref_object_copy__0;
  v73[4] = __Block_byref_object_dispose__0;
  v74 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__0;
  v71[4] = __Block_byref_object_dispose__0;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__0;
  v69 = __Block_byref_object_dispose__0;
  v70 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v64 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v62[3] = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__0;
  v60 = __Block_byref_object_dispose__0;
  v61 = &stru_282D0B728;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__0;
  v46 = __Block_byref_object_dispose__0;
  v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  v8 = 8;
  do
  {
    [v43[5] addObject:&unk_282D4E0C8];
    --v8;
  }

  while (v8);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v9 = BiomeLibrary();
  device = [v9 Device];
  charging = [device Charging];
  smartCharging = [charging SmartCharging];
  publisher = [smartCharging publisher];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke;
  v31[3] = &unk_2782D3F88;
  v14 = betweenCopy;
  v32 = v14;
  v15 = andCopy;
  v33 = v15;
  v16 = [publisher filterWithIsIncluded:v31];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_2;
  v30[3] = &unk_2782D3E10;
  v30[4] = self;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_72;
  v29[3] = &unk_2782D3FB0;
  v29[4] = self;
  v29[5] = v81;
  v29[6] = &v56;
  v29[7] = v73;
  v29[8] = v71;
  v29[9] = &v42;
  v29[10] = v63;
  v29[11] = &v34;
  v29[12] = v62;
  v29[13] = &v75;
  v29[14] = &v65;
  v29[15] = &v52;
  v29[16] = &v48;
  v29[17] = &v38;
  v17 = [v16 sinkWithCompletion:v30 receiveInput:v29];

  v83[0] = @"pluginTime";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v53[3]];
  v19 = v18;
  if (v76[5])
  {
    v20 = &unk_282D4E0E0;
  }

  else
  {
    v20 = &unk_282D4E0C8;
  }

  v84[0] = v18;
  v84[1] = v20;
  v83[1] = @"wasOBCEligible";
  v83[2] = @"eligibleIdleTime";
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v49[3]];
  v22 = v43[5];
  v84[2] = v21;
  v84[3] = v22;
  v83[3] = @"idleTimes";
  v83[4] = @"reachedTargetSoC";
  if (v66[5])
  {
    v23 = &unk_282D4E0E0;
  }

  else
  {
    v23 = &unk_282D4E0C8;
  }

  v84[4] = v23;
  v83[5] = @"wasUndercharged";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:*(v39 + 24)];
  v84[5] = v24;
  v83[6] = @"wasTempDisabled";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:*(v35 + 24)];
  v84[6] = v25;
  v83[7] = @"sessionDescription";
  v84[7] = v57[5];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:8];

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v63, 8);
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(v71, 8);
  _Block_object_dispose(v73, 8);

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(v81, 8);

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

BOOL __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timestamp];
  v5 = v4;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  if (v5 >= v6)
  {
    [v3 timestamp];
    v9 = v8;
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    v7 = v9 <= v10;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_2_cold_1(v3);
    }
  }
}

void __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_72(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 40) || ([v3 eventBody], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "obcEvent"), v5, v6 == 6))
  {
    v7 = [v4 eventBody];
    v8 = [v7 obcEvent];

    switch(v8)
    {
      case 0:
        v10 = *(a1 + 32);
        v9 = (a1 + 32);
        v11 = [v10 log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_72_cold_5(v9, v4);
        }

        break;
      case 1:
        v98 = MEMORY[0x277CCACA8];
        v99 = *(*(*(a1 + 48) + 8) + 40);
        v100 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v15 = [v100 dateWithTimeIntervalSinceReferenceDate:?];
        v16 = [PowerUISmartChargeUtilities timeStringFromDate:v15];
        [v98 stringWithFormat:@"%@ Device was restarted at %@.", v99, v16];
        goto LABEL_50;
      case 2:
        v95 = MEMORY[0x277CCACA8];
        v96 = *(*(*(a1 + 48) + 8) + 40);
        v97 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v15 = [v97 dateWithTimeIntervalSinceReferenceDate:?];
        v16 = [PowerUISmartChargeUtilities timeStringFromDate:v15];
        [v95 stringWithFormat:@"%@ PowerUI restarted at %@.", v96, v16];
        goto LABEL_50;
      case 3:
        v77 = MEMORY[0x277CCACA8];
        v78 = *(*(*(a1 + 48) + 8) + 40);
        v79 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v80 = [v79 dateWithTimeIntervalSinceReferenceDate:?];
        v81 = [PowerUISmartChargeUtilities timeStringFromDate:v80];
        v82 = [v77 stringWithFormat:@"%@ OBC was temp disabled at %@.", v78, v81];
        v83 = *(*(a1 + 48) + 8);
        v84 = *(v83 + 40);
        *(v83 + 40) = v82;

        if (*(*(*(a1 + 56) + 8) + 40))
        {
          v85 = MEMORY[0x277CBEAA8];
          [v4 timestamp];
          v86 = [v85 dateWithTimeIntervalSinceReferenceDate:?];
          v87 = *(*(a1 + 64) + 8);
          v88 = *(v87 + 40);
          *(v87 + 40) = v86;

          v89 = MEMORY[0x277CCABB0];
          v90 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndexedSubscript:*(*(*(a1 + 80) + 8) + 24)];
          [v90 doubleValue];
          v92 = v91;
          [*(*(*(a1 + 64) + 8) + 40) timeIntervalSinceDate:*(*(*(a1 + 56) + 8) + 40)];
          v94 = [v89 numberWithDouble:v92 + v93];
          [*(*(*(a1 + 72) + 8) + 40) setObject:v94 atIndexedSubscript:*(*(*(a1 + 80) + 8) + 24)];
        }

        *(*(*(a1 + 88) + 8) + 24) = 1;
        goto LABEL_54;
      case 4:
        v22 = MEMORY[0x277CCACA8];
        v23 = *(*(*(a1 + 48) + 8) + 40);
        v24 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v25 = [v24 dateWithTimeIntervalSinceReferenceDate:?];
        v26 = [PowerUISmartChargeUtilities timeStringFromDate:v25];
        v27 = [v22 stringWithFormat:@"%@ OBC was feature disabled at %@.", v23, v26];
        v28 = *(*(a1 + 48) + 8);
        v29 = *(v28 + 40);
        *(v28 + 40) = v27;

        if (!*(*(*(a1 + 56) + 8) + 40))
        {
          goto LABEL_54;
        }

        v30 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v31 = [v30 dateWithTimeIntervalSinceReferenceDate:?];
        v32 = *(*(a1 + 64) + 8);
        v33 = *(v32 + 40);
        *(v32 + 40) = v31;

        v34 = MEMORY[0x277CCABB0];
        v35 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndexedSubscript:*(*(*(a1 + 80) + 8) + 24)];
        [v35 doubleValue];
        v37 = v36;
        [*(*(*(a1 + 64) + 8) + 40) timeIntervalSinceDate:*(*(*(a1 + 56) + 8) + 40)];
        v39 = [v34 numberWithDouble:v37 + v38];
        [*(*(*(a1 + 72) + 8) + 40) setObject:v39 atIndexedSubscript:*(*(*(a1 + 80) + 8) + 24)];

        goto LABEL_45;
      case 6:
        if (*(*(*(a1 + 40) + 8) + 40))
        {
          v43 = [*(a1 + 32) log];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_72_cold_4((a1 + 32), v4);
          }
        }

        v44 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v45 = [v44 dateWithTimeIntervalSinceReferenceDate:?];
        v46 = *(*(a1 + 40) + 8);
        v47 = *(v46 + 40);
        *(v46 + 40) = v45;

        v48 = MEMORY[0x277CCACA8];
        v49 = *(*(*(a1 + 48) + 8) + 40);
        v50 = [PowerUISmartChargeUtilities timeStringFromDate:*(*(*(a1 + 40) + 8) + 40)];
        v51 = [v48 stringWithFormat:@"%@ Device was plugged in at %@.", v49, v50];
        v52 = *(*(a1 + 48) + 8);
        v53 = *(v52 + 40);
        *(v52 + 40) = v51;

        break;
      case 7:
        v101 = [v4 eventBody];
        v102 = [v101 batteryLevel];

        if (v102 == 80)
        {
          +[PowerUISmartChargeUtilities cachedHistorical80ToFullDuration];
          *(*(*(a1 + 96) + 8) + 24) = v103;
        }

        else
        {
          v134 = [v4 eventBody];
          v135 = +[PowerUISmartChargeUtilities historicalFullChargeDurationStartingAt:withMinimumPluginDuration:](PowerUISmartChargeUtilities, "historicalFullChargeDurationStartingAt:withMinimumPluginDuration:", [v134 batteryLevel], 300);

          if ([v135 count] >= 3)
          {
            v136 = [v135 sortedArrayUsingSelector:sel_compare_];
            v137 = [v136 subarrayWithRange:{1, objc_msgSend(v136, "count") - 2}];

            v135 = v137;
          }

          [v135 percentile:0.9];
          *(*(*(a1 + 96) + 8) + 24) = v138 / 60.0;
        }

        v139 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v140 = [v139 dateWithTimeIntervalSinceReferenceDate:?];
        v141 = *(*(a1 + 104) + 8);
        v142 = *(v141 + 40);
        *(v141 + 40) = v140;

        v143 = MEMORY[0x277CCACA8];
        v144 = *(*(*(a1 + 48) + 8) + 40);
        v145 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v15 = [v145 dateWithTimeIntervalSinceReferenceDate:?];
        v16 = [PowerUISmartChargeUtilities timeStringFromDate:v15];
        [v143 stringWithFormat:@"%@ Device became OBC eligible at %@.", v144, v16];
        goto LABEL_50;
      case 8:
        v104 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v105 = [v104 dateWithTimeIntervalSinceReferenceDate:?];
        v106 = *(*(a1 + 56) + 8);
        v107 = *(v106 + 40);
        *(v106 + 40) = v105;

        v108 = [v4 eventBody];
        *(*(*(a1 + 80) + 8) + 24) = [v108 mode];

        v109 = MEMORY[0x277CCACA8];
        v110 = *(*(*(a1 + 48) + 8) + 40);
        v111 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v15 = [v111 dateWithTimeIntervalSinceReferenceDate:?];
        v16 = [PowerUISmartChargeUtilities timeStringFromDate:v15];
        [v109 stringWithFormat:@"%@ PowerUI started controlling charging at %@.", v110, v16];
        goto LABEL_50;
      case 9:
        if (*(*(*(a1 + 56) + 8) + 40))
        {
          v119 = MEMORY[0x277CBEAA8];
          [v4 timestamp];
          v120 = [v119 dateWithTimeIntervalSinceReferenceDate:?];
          v121 = *(*(a1 + 64) + 8);
          v122 = *(v121 + 40);
          *(v121 + 40) = v120;

          v123 = MEMORY[0x277CCABB0];
          v124 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndexedSubscript:*(*(*(a1 + 80) + 8) + 24)];
          [v124 doubleValue];
          v126 = v125;
          [*(*(*(a1 + 64) + 8) + 40) timeIntervalSinceDate:*(*(*(a1 + 56) + 8) + 40)];
          v128 = [v123 numberWithDouble:v126 + v127];
          [*(*(*(a1 + 72) + 8) + 40) setObject:v128 atIndexedSubscript:*(*(*(a1 + 80) + 8) + 24)];

          v129 = MEMORY[0x277CCACA8];
          v130 = *(*(*(a1 + 48) + 8) + 40);
          v35 = [PowerUISmartChargeUtilities timeStringFromDate:*(*(*(a1 + 64) + 8) + 40)];
          v131 = [v129 stringWithFormat:@"%@ PowerUI stopped controlling charging at %@.", v130, v35];
          v132 = *(*(a1 + 48) + 8);
          v133 = *(v132 + 40);
          *(v132 + 40) = v131;

LABEL_45:
        }

        else
        {
          v149 = [*(a1 + 32) log];
          if (os_log_type_enabled(v149, OS_LOG_TYPE_FAULT))
          {
            __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_72_cold_3(v149);
          }

          v150 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Error: Found charging pause end, but not charging pause start.", *(*(*(a1 + 48) + 8) + 40)];
          v151 = *(*(a1 + 48) + 8);
          v152 = *(v151 + 40);
          *(v151 + 40) = v150;
        }

LABEL_54:
        v153 = *(*(a1 + 64) + 8);
        v154 = *(v153 + 40);
        *(v153 + 40) = 0;

        v155 = *(*(a1 + 56) + 8);
        v156 = *(v155 + 40);
        *(v155 + 40) = 0;

        break;
      case 10:
        v112 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v113 = [v112 dateWithTimeIntervalSinceReferenceDate:?];
        v114 = *(*(a1 + 112) + 8);
        v115 = *(v114 + 40);
        *(v114 + 40) = v113;

        v116 = MEMORY[0x277CCACA8];
        v117 = *(*(*(a1 + 48) + 8) + 40);
        v118 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v15 = [v118 dateWithTimeIntervalSinceReferenceDate:?];
        v16 = [PowerUISmartChargeUtilities timeStringFromDate:v15];
        [v116 stringWithFormat:@"%@ Device reached target SoC at %@.", v117, v16];
        goto LABEL_50;
      case 11:
        v17 = *(*(a1 + 112) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = 0;

        v19 = MEMORY[0x277CCACA8];
        v20 = *(*(*(a1 + 48) + 8) + 40);
        v21 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v15 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
        v16 = [PowerUISmartChargeUtilities timeStringFromDate:v15];
        [v19 stringWithFormat:@"%@ Device lost target SoC at %@.", v20, v16];
        goto LABEL_50;
      case 12:
        [v4 timestamp];
        v55 = v54;
        [*(*(*(a1 + 40) + 8) + 40) timeIntervalSinceReferenceDate];
        *(*(*(a1 + 120) + 8) + 24) = v55 - v56;
        if (*(*(*(a1 + 104) + 8) + 40))
        {
          [v4 timestamp];
          v58 = v57;
          [*(*(*(a1 + 104) + 8) + 40) timeIntervalSinceReferenceDate];
          *(*(*(a1 + 128) + 8) + 24) = (v58 - v59) / 60.0;
          *(*(*(a1 + 128) + 8) + 24) = fmax(*(*(*(a1 + 128) + 8) + 24) - *(*(*(a1 + 96) + 8) + 24), 0.0);
        }

        if (*(*(*(a1 + 56) + 8) + 40))
        {
          if (!*(*(*(a1 + 64) + 8) + 40))
          {
            v60 = MEMORY[0x277CCABB0];
            v61 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndexedSubscript:*(*(*(a1 + 80) + 8) + 24)];
            [v61 doubleValue];
            v63 = v62;
            [v4 timestamp];
            v65 = v64;
            [*(*(*(a1 + 56) + 8) + 40) timeIntervalSinceReferenceDate];
            v67 = [v60 numberWithDouble:v63 + v65 - v66];
            [*(*(*(a1 + 72) + 8) + 40) setObject:v67 atIndexedSubscript:*(*(*(a1 + 80) + 8) + 24)];

            if (!*(*(*(a1 + 80) + 8) + 24))
            {
              v68 = [*(a1 + 32) log];
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_72_cold_1(a1 + 56, v4, v68);
              }
            }
          }
        }

        v69 = [*(a1 + 32) log];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_72_cold_2(v69);
        }

        if ([*(*(*(a1 + 72) + 8) + 40) count])
        {
          v70 = 0;
          do
          {
            if (!*(*(*(a1 + 112) + 8) + 40))
            {
              v71 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndexedSubscript:v70];
              [v71 doubleValue];
              v73 = v72;

              if (v73 > 0.0)
              {
                *(*(*(a1 + 136) + 8) + 24) = 1;
              }
            }

            ++v70;
          }

          while ([*(*(*(a1 + 72) + 8) + 40) count] > v70);
        }

        v74 = MEMORY[0x277CCACA8];
        v75 = *(*(*(a1 + 48) + 8) + 40);
        v76 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v15 = [v76 dateWithTimeIntervalSinceReferenceDate:?];
        v16 = [PowerUISmartChargeUtilities timeStringFromDate:v15];
        [v74 stringWithFormat:@"%@ Device was plugged out at %@.", v75, v16];
        goto LABEL_50;
      case 13:
        v40 = MEMORY[0x277CCACA8];
        v41 = *(*(*(a1 + 48) + 8) + 40);
        v42 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v15 = [v42 dateWithTimeIntervalSinceReferenceDate:?];
        v16 = [PowerUISmartChargeUtilities timeStringFromDate:v15];
        [v40 stringWithFormat:@"%@ SMC charge token was created at %@.", v41, v16];
        goto LABEL_50;
      case 14:
        v12 = MEMORY[0x277CCACA8];
        v13 = *(*(*(a1 + 48) + 8) + 40);
        v14 = MEMORY[0x277CBEAA8];
        [v4 timestamp];
        v15 = [v14 dateWithTimeIntervalSinceReferenceDate:?];
        v16 = [PowerUISmartChargeUtilities timeStringFromDate:v15];
        [v12 stringWithFormat:@"%@ SMC charge token was dismissed at %@.", v13, v16];
        v146 = LABEL_50:;
        v147 = *(*(a1 + 48) + 8);
        v148 = *(v147 + 40);
        *(v147 + 40) = v146;

        break;
      default:
        break;
    }
  }
}

- (id)chargingStatisticsSince:(id)since
{
  v4 = MEMORY[0x277CBEAA8];
  sinceCopy = since;
  v6 = [v4 now];
  v7 = [(PowerUIAnalyticsManager *)self chargingStatisticsFrom:sinceCopy to:v6];

  return v7;
}

- (id)chargingStatisticsFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v7 = os_transaction_create();
  v93[0] = 0;
  v93[1] = v93;
  v93[2] = 0x3032000000;
  v93[3] = __Block_byref_object_copy__0;
  v93[4] = __Block_byref_object_dispose__0;
  v94 = 0;
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x3032000000;
  v91[3] = __Block_byref_object_copy__0;
  v91[4] = __Block_byref_object_dispose__0;
  v92 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__0;
  v57 = __Block_byref_object_dispose__0;
  v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__0;
  v51 = __Block_byref_object_dispose__0;
  v52 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  v8 = 8;
  do
  {
    [v54[5] addObject:&unk_282D4E0C8];
    [v48[5] addObject:&unk_282D4E0C8];
    --v8;
  }

  while (v8);
  v9 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:fromCopy endDate:toCopy maxEvents:0 lastN:0 reversed:0];
  v10 = BiomeLibrary();
  device = [v10 Device];
  charging = [device Charging];
  smartCharging = [charging SmartCharging];
  v14 = [smartCharging publisherWithOptions:v9];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __53__PowerUIAnalyticsManager_chargingStatisticsFrom_to___block_invoke;
  v46[3] = &unk_2782D3E10;
  v46[4] = self;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __53__PowerUIAnalyticsManager_chargingStatisticsFrom_to___block_invoke_123;
  v45[3] = &unk_2782D3FD8;
  v45[4] = self;
  v45[5] = v93;
  v45[6] = v91;
  v45[7] = &v79;
  v45[8] = &v87;
  v45[9] = &v67;
  v45[10] = &v75;
  v45[11] = &v71;
  v45[12] = &v83;
  v45[13] = &v53;
  v45[14] = &v47;
  v45[15] = &v59;
  v45[16] = &v63;
  v15 = [v14 sinkWithCompletion:v46 receiveInput:v45];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = [MEMORY[0x277CCABB0] numberWithInt:*(v80 + 6)];
  [dictionary setObject:v17 forKeyedSubscript:@"numberChargeSessions"];

  v18 = [MEMORY[0x277CCABB0] numberWithInt:*(v76 + 6)];
  [dictionary setObject:v18 forKeyedSubscript:@"numberChargeSessionsWithEligibleTime"];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:*(v68 + 6)];
  [dictionary setObject:v19 forKeyedSubscript:@"numberChargeSessionsReachingTargetSoC"];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:*(v72 + 6)];
  [dictionary setObject:v20 forKeyedSubscript:@"numberUnderCharges"];

  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v88[3] / 3600.0];
  [dictionary setObject:v21 forKeyedSubscript:@"totalTime"];

  v22 = [MEMORY[0x277CCABB0] numberWithDouble:v84[3] / 60.0];
  [dictionary setObject:v22 forKeyedSubscript:@"totalEligible"];

  v23 = [MEMORY[0x277CCABB0] numberWithInt:*(v60 + 6)];
  [dictionary setObject:v23 forKeyedSubscript:@"totalFullDisableEvents"];

  v24 = [MEMORY[0x277CCABB0] numberWithInt:*(v64 + 6)];
  [dictionary setObject:v24 forKeyedSubscript:@"totalTempDisableEvents"];

  for (i = 0; [v54[5] count] > i; ++i)
  {
    v26 = MEMORY[0x277CCABB0];
    v27 = [v54[5] objectAtIndexedSubscript:i];
    [v27 doubleValue];
    v29 = [v26 numberWithDouble:v28 / 3600.0];
    v30 = BMDeviceSmartChargingModeOfOperationAsString();
    [dictionary setObject:v29 forKeyedSubscript:v30];
  }

  v43 = v9;
  v31 = 0;
  v32 = 0;
  while ([v48[5] count] > v31)
  {
    if (v31)
    {
      v33 = [v48[5] objectAtIndexedSubscript:v31];
      v34 = [v33 intValue] > 0;

      v32 |= v34;
    }

    v35 = MEMORY[0x277CCACA8];
    v36 = BMDeviceSmartChargingModeOfOperationAsString();
    v37 = [v35 stringWithFormat:@"%@%@", v36, @"Count"];

    v38 = MEMORY[0x277CCABB0];
    v39 = [v48[5] objectAtIndexedSubscript:v31];
    v40 = [v38 numberWithInt:{objc_msgSend(v39, "intValue")}];
    [dictionary setObject:v40 forKeyedSubscript:v37];

    ++v31;
  }

  v41 = [MEMORY[0x277CCABB0] numberWithBool:v32 & 1];
  [dictionary setObject:v41 forKeyedSubscript:@"sawEngagement"];

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(v91, 8);

  _Block_object_dispose(v93, 8);

  return dictionary;
}

void __53__PowerUIAnalyticsManager_chargingStatisticsFrom_to___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_2_cold_1(v3);
    }
  }
}

void __53__PowerUIAnalyticsManager_chargingStatisticsFrom_to___block_invoke_123(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 obcEvent];

  if (v5 == 6)
  {
    v6 = MEMORY[0x277CBEAA8];
    [v3 timestamp];
    v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    if (!*(*(*(a1 + 40) + 8) + 40) || ([v3 eventBody], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "obcEvent"), v10, v11 != 12))
    {
      v45 = [v3 eventBody];
      v46 = [v45 obcEvent];

      if (v46 == 4)
      {
        v47 = *(a1 + 120);
      }

      else
      {
        v48 = [v3 eventBody];
        v49 = [v48 obcEvent];

        if (v49 != 3)
        {
          goto LABEL_25;
        }

        v47 = *(a1 + 128);
      }

      ++*(*(v47 + 8) + 24);
      goto LABEL_25;
    }

    v12 = MEMORY[0x277CBEAA8];
    [v3 timestamp];
    v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = [*(a1 + 32) log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(*(*(a1 + 40) + 8) + 40);
      v18 = *(*(*(a1 + 48) + 8) + 40);
      v51 = 138412546;
      v52 = v17;
      v53 = 2112;
      v54 = v18;
      _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_INFO, "Found plugin between %@ and %@:", &v51, 0x16u);
    }

    v19 = [*(a1 + 32) chargingStatisticsForSessionBetween:*(*(*(a1 + 40) + 8) + 40) and:*(*(*(a1 + 48) + 8) + 40)];
    v20 = [*(a1 + 32) log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v51 = 138412290;
      v52 = v19;
      _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_INFO, "Session: %@", &v51, 0xCu);
    }

    ++*(*(*(a1 + 56) + 8) + 24);
    v21 = [v19 objectForKeyedSubscript:@"pluginTime"];
    *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) + [v21 intValue];

    v22 = [v19 objectForKeyedSubscript:@"reachedTargetSoC"];
    v23 = [v22 BOOLValue];

    if (v23)
    {
      ++*(*(*(a1 + 72) + 8) + 24);
    }

    v24 = [v19 objectForKeyedSubscript:@"eligibleIdleTime"];
    v25 = [v24 intValue];

    if (v25 >= 1)
    {
      ++*(*(*(a1 + 80) + 8) + 24);
      v26 = [v19 objectForKeyedSubscript:@"wasUndercharged"];
      v27 = [v26 BOOLValue];

      if (v27)
      {
        ++*(*(*(a1 + 88) + 8) + 24);
      }
    }

    *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 96) + 8) + 24) + v25;
    v28 = [v19 objectForKeyedSubscript:@"idleTimes"];
    if ([v28 count])
    {
      v29 = 0;
      do
      {
        v30 = [v28 objectAtIndexedSubscript:v29];
        [v30 doubleValue];
        v32 = v31;

        if (v32 > 0.0)
        {
          v33 = MEMORY[0x277CCABB0];
          v34 = [*(*(*(a1 + 104) + 8) + 40) objectAtIndexedSubscript:v29];
          [v34 doubleValue];
          v36 = v35;
          v37 = [v28 objectAtIndexedSubscript:v29];
          [v37 doubleValue];
          v39 = [v33 numberWithDouble:v36 + v38];
          [*(*(*(a1 + 104) + 8) + 40) setObject:v39 atIndexedSubscript:v29];

          v40 = MEMORY[0x277CCABB0];
          v41 = [*(*(*(a1 + 112) + 8) + 40) objectAtIndexedSubscript:v29];
          v42 = [v40 numberWithInt:{objc_msgSend(v41, "intValue") + 1}];
          [*(*(*(a1 + 112) + 8) + 40) setObject:v42 atIndexedSubscript:v29];
        }

        ++v29;
      }

      while ([v28 count] > v29);
    }

    v43 = *(*(a1 + 40) + 8);
    v44 = *(v43 + 40);
    *(v43 + 40) = 0;
  }

LABEL_25:

  v50 = *MEMORY[0x277D85DE8];
}

- (id)gaugingMitigationStatisticsSince:(id)since
{
  sinceCopy = since;
  v28 = os_transaction_create();
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__0;
  v36[4] = __Block_byref_object_dispose__0;
  v37 = 0;
  v3 = objc_alloc(MEMORY[0x277CF1A50]);
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v33 = [v3 initWithStartDate:sinceCopy endDate:distantFuture maxEvents:0 lastN:0 reversed:0];

  v32 = BiomeLibrary();
  device = [v32 Device];
  charging = [device Charging];
  smartCharging = [charging SmartCharging];
  v7 = [smartCharging publisherWithOptions:v33];
  v8 = BiomeLibrary();
  device2 = [v8 Device];
  charging2 = [device2 Charging];
  batteryGauging = [charging2 BatteryGauging];
  v12 = [batteryGauging publisherWithOptions:v33];
  v13 = [v7 orderedMergeWithOther:v12 comparator:&__block_literal_global_161];
  v14 = [v13 filterWithIsIncluded:&__block_literal_global_163];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __60__PowerUIAnalyticsManager_gaugingMitigationStatisticsSince___block_invoke_3;
  v35[3] = &unk_2782D3E10;
  v35[4] = self;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __60__PowerUIAnalyticsManager_gaugingMitigationStatisticsSince___block_invoke_164;
  v34[3] = &unk_2782D4020;
  v34[4] = v40;
  v34[5] = v36;
  v34[6] = &v74;
  v34[7] = &v70;
  v34[8] = &v66;
  v34[9] = &v62;
  v34[10] = &v58;
  v34[11] = v38;
  v34[12] = &v42;
  v34[13] = &v78;
  v34[14] = &v54;
  v34[15] = &v50;
  v34[16] = &v46;
  v15 = [v14 sinkWithCompletion:v35 receiveInput:v34];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = [MEMORY[0x277CCABB0] numberWithInt:*(v79 + 6)];
  [dictionary setObject:v17 forKeyedSubscript:@"nrOfDOD0AtQualifiedQmaxUpdates"];

  v18 = [MEMORY[0x277CCABB0] numberWithInt:*(v75 + 6)];
  [dictionary setObject:v18 forKeyedSubscript:@"nrOfQMaxTooOld"];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:*(v71 + 6)];
  [dictionary setObject:v19 forKeyedSubscript:@"nrOfDOD0TooSmall"];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:*(v67 + 6)];
  [dictionary setObject:v20 forKeyedSubscript:@"nrOfQMaxRequested"];

  v21 = [MEMORY[0x277CCABB0] numberWithInt:*(v63 + 6)];
  [dictionary setObject:v21 forKeyedSubscript:@"nrOfOCVRequested"];

  v22 = [MEMORY[0x277CCABB0] numberWithInt:*(v59 + 6)];
  [dictionary setObject:v22 forKeyedSubscript:@"nrOfPeriodicFullChargeRequested"];

  v23 = [MEMORY[0x277CCABB0] numberWithInt:*(v55 + 6)];
  [dictionary setObject:v23 forKeyedSubscript:@"maxDaysSinceQmax"];

  v24 = [MEMORY[0x277CCABB0] numberWithInt:*(v51 + 6)];
  [dictionary setObject:v24 forKeyedSubscript:@"maxDaysSinceOCV"];

  v25 = [MEMORY[0x277CCABB0] numberWithInt:*(v47 + 6)];
  [dictionary setObject:v25 forKeyedSubscript:@"maxDaysSinceLastFullCharge"];

  v26 = [MEMORY[0x277CCABB0] numberWithInt:*(v43 + 6)];
  [dictionary setObject:v26 forKeyedSubscript:@"nrOfSessionsReachingFullCharge"];

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);

  return dictionary;
}

uint64_t __60__PowerUIAnalyticsManager_gaugingMitigationStatisticsSince___block_invoke(uint64_t a1, void *a2, void *a3)
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

BOOL __60__PowerUIAnalyticsManager_gaugingMitigationStatisticsSince___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 eventBody];
    if ([v5 obcEvent] == 6)
    {
      v6 = 1;
    }

    else
    {
      v7 = [v2 eventBody];
      v6 = [v7 obcEvent] == 12;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void __60__PowerUIAnalyticsManager_gaugingMitigationStatisticsSince___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__PowerUIAnalyticsManager_gaugingMitigationStatisticsSince___block_invoke_3_cold_1(v3);
    }
  }
}

void __60__PowerUIAnalyticsManager_gaugingMitigationStatisticsSince___block_invoke_164(void *a1, void *a2)
{
  v38 = a2;
  v3 = [v38 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [v38 eventBody];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 obcEvent];

    if (v7 == 6)
    {
      *(*(a1[4] + 8) + 24) = 1;
    }

    else
    {
      v12 = [v38 eventBody];
      v13 = [v12 obcEvent];

      if (v13 == 12)
      {
        if (*(*(a1[4] + 8) + 24) == 1)
        {
          v14 = *(*(a1[5] + 8) + 40);
          if (v14)
          {
            v15 = [v14 qmaxState] - 2;
            if (v15 <= 2)
            {
              v16 = *(a1[v15 + 6] + 8);
              ++*(v16 + 24);
            }

            if ([*(*(a1[5] + 8) + 40) ocvState] == 2)
            {
              ++*(*(a1[9] + 8) + 24);
            }

            if ([*(*(a1[5] + 8) + 40) fullChargeState] == 2)
            {
              ++*(*(a1[10] + 8) + 24);
            }

            if (*(*(a1[11] + 8) + 24) == 1)
            {
              ++*(*(a1[12] + 8) + 24);
            }
          }
        }

        *(*(a1[4] + 8) + 24) = 0;
        *(*(a1[11] + 8) + 24) = 0;
        v17 = *(a1[5] + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = 0;
      }
    }
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      v9 = v38;
      v10 = [v9 eventBody];
      v11 = [v10 updateType];

      if (v11 == 2)
      {
        ++*(*(a1[13] + 8) + 24);
      }

      else if (*(*(a1[4] + 8) + 24) == 1)
      {
        v19 = [v9 eventBody];
        v20 = [v19 updateType];

        if (v20 == 3)
        {
          *(*(a1[11] + 8) + 24) = 1;
        }

        else
        {
          v21 = [v9 eventBody];
          v22 = [v21 updateType];

          if (v22 == 1)
          {
            if (!*(*(a1[5] + 8) + 40))
            {
              v23 = [v9 eventBody];
              v24 = *(a1[5] + 8);
              v25 = *(v24 + 40);
              *(v24 + 40) = v23;
            }

            v26 = [v9 eventBody];
            v27 = [v26 daysSinceQMax];
            v28 = *(*(a1[14] + 8) + 24);

            if (v27 > v28)
            {
              v29 = [v9 eventBody];
              *(*(a1[14] + 8) + 24) = [v29 daysSinceQMax];
            }

            v30 = [v9 eventBody];
            v31 = [v30 daysSinceOCV];
            v32 = *(*(a1[15] + 8) + 24);

            if (v31 > v32)
            {
              v33 = [v9 eventBody];
              *(*(a1[15] + 8) + 24) = [v33 daysSinceOCV];
            }

            v34 = [v9 eventBody];
            v35 = [v34 daysSinceFullChargeAttempt];
            v36 = *(*(a1[16] + 8) + 24);

            if (v35 > v36)
            {
              v37 = [v9 eventBody];
              *(*(a1[16] + 8) + 24) = [v37 daysSinceFullChargeAttempt];
            }
          }
        }
      }
    }
  }
}

void __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_2_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting chargingExperience biome events in chargingStatisticsSince: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_72_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [PowerUISmartChargeUtilities timeStringFromDate:*(*(*a1 + 8) + 40)];
  v6 = MEMORY[0x277CBEAA8];
  [a2 timestamp];
  v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
  v8 = [PowerUISmartChargeUtilities timeStringFromDate:v7];
  v10 = 138412546;
  v11 = v5;
  v12 = 2112;
  v13 = v8;
  _os_log_error_impl(&dword_21B766000, a3, OS_LOG_TYPE_ERROR, "Unaccounted OBC engagement time from %@ to %@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_72_cold_4(id *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*a1 stringFromEngagementEvent:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Second plugin event without unplug: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __67__PowerUIAnalyticsManager_chargingStatisticsForSessionBetween_and___block_invoke_72_cold_5(id *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*a1 stringFromEngagementEvent:a2];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Charging event with unknown state: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __60__PowerUIAnalyticsManager_gaugingMitigationStatisticsSince___block_invoke_3_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_21B766000, v3, v4, "Error getting gauging mitigation events in analytics manager: %s", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end