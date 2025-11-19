@interface PLSMCMetricsAgent
+ (BOOL)isEnabled;
+ (BOOL)shouldModelDisplayPowerFromSMC;
+ (BOOL)supportsSMC;
+ (id)parsePMUEvents:(unint64_t)a3;
+ (void)load;
+ (void)reportPMUEventsToCA:(id)a3;
- (BOOL)accumSupported;
- (BOOL)anyVirtualTemperatureAboveThreshold;
- (BOOL)isThermalMitigationAboveThreshold;
- (BOOL)isThermalPressureFanNoiseAboveThreshold;
- (BOOL)writeSMCKey:(id)a3 withValue:(unint64_t)a4;
- (PLSMCMetricsAgent)init;
- (const)isKeyOSAccumSupported:(id)a3;
- (id)getAllKeys;
- (id)getAllowedAccumulatedKeys;
- (id)getAllowedInstantKeys;
- (id)getAllowedKeys:(id)a3;
- (id)getAllowedPowerDeliveryKeys;
- (id)getOSAccumListFrom:(id)a3;
- (id)getTVKeys;
- (id)getValueFromAccumSample:(id)a3 lastSample:(id)a4;
- (id)handleNonNumericKeys:(unsigned int)a3 keyInfo:(id *)a4;
- (id)handleNumericKeys:(unsigned int)a3 keyInfo:(id *)a4 keyName:(id)a5 ret:(char)a6;
- (id)readAccumSMCKey:(id)a3 toOutput:(id *)a4;
- (id)readSMCKey:(id)a3;
- (id)sampleAccumulatedKeys:(id)a3;
- (void)dealloc;
- (void)handleSleepWakeStateChange;
- (void)initOSMetrics;
- (void)initOperatorDependancies;
- (void)log;
- (void)logAccumlatedLookUpTable;
- (void)logAccumulatedKeysToPL:(BOOL)a3 ToCA:(BOOL)a4;
- (void)logDisplayPower;
- (void)logEventPointInstantKeys;
- (void)logPowerDeliveryKeys;
- (void)logSMCLookUpTable;
- (void)logThermalKeysToCoreAnalytics;
- (void)powerDeliveryCallback;
- (void)thermalMonitorCallback;
@end

@implementation PLSMCMetricsAgent

uint64_t __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  v2 = PLLogSMCMetrics();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Daily logging of look-up tables", v4, 2u);
  }

  [*(a1 + 32) logSMCLookUpTable];
  result = [*(a1 + 32) accumSupported];
  if (result)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      return [*(a1 + 32) logAccumlatedLookUpTable];
    }
  }

  return result;
}

- (void)thermalMonitorCallback
{
  v11 = *MEMORY[0x277D85DE8];
  [(PLSMCMetricsAgent *)self setLoggingCounter:[(PLSMCMetricsAgent *)self loggingCounter]+ 1];
  v3 = PLLogSMCMetrics();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(PLSMCMetricsAgent *)self monitorCadence];
    v6[0] = 67109632;
    v6[1] = v5;
    v7 = 1024;
    v8 = [(PLSMCMetricsAgent *)self loggingThreshold];
    v9 = 1024;
    v10 = [(PLSMCMetricsAgent *)self loggingCounter];
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Monitoring timer callback (interval %ds, threshold %d, count %d)", v6, 0x14u);
  }

  if ([(PLSMCMetricsAgent *)self anyVirtualTemperatureAboveThreshold])
  {
    [(PLSMCMetricsAgent *)self logEventPointInstantKeys];
  }

  if (os_variant_is_darwinos())
  {
    [(PLSMCMetricsAgent *)self logEventPointInstantKeys];
    [(PLSMCMetricsAgent *)self logAccumulatedKeysToPL:1 ToCA:1];
  }

  if ([(PLSMCMetricsAgent *)self loggingCounter]>= 0x1E)
  {
    [(PLSMCMetricsAgent *)self logThermalKeysToCoreAnalytics];
    [(PLSMCMetricsAgent *)self logAccumulatedKeysToPL:1 ToCA:1];
    [(PLSMCMetricsAgent *)self setLoggingCounter:0];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)anyVirtualTemperatureAboveThreshold
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(PLSMCMetricsAgent *)self getTVKeys];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if (([v8 isEqualToString:@"TVD0"] & 1) == 0)
        {
          v9 = [(PLSMCMetricsAgent *)self readSMCKey:v8];
          v10 = v9;
          if (v9)
          {
            [v9 floatValue];
            if (v11 > 35.0)
            {

              v12 = 1;
              goto LABEL_14;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)getTVKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__PLSMCMetricsAgent_getTVKeys__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3D88 != -1)
  {
    dispatch_once(&qword_2811F3D88, block);
  }

  return qword_2811F3D80;
}

- (void)powerDeliveryCallback
{
  v6 = *MEMORY[0x277D85DE8];
  [(PLSMCMetricsAgent *)self setPowerDeliveryCounter:[(PLSMCMetricsAgent *)self powerDeliveryCounter]+ 1];
  v3 = PLLogSMCMetrics();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109120;
    v5[1] = [(PLSMCMetricsAgent *)self powerDeliveryCounter];
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Power delivery callback (count %d)", v5, 8u);
  }

  if ([(PLSMCMetricsAgent *)self powerDeliveryCounter]>= 0x5A)
  {
    [(PLSMCMetricsAgent *)self logPowerDeliveryKeys];
    [(PLSMCMetricsAgent *)self setPowerDeliveryCounter:0];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)log
{
  [(PLSMCMetricsAgent *)self logEventPointInstantKeys];
  if ([(PLSMCMetricsAgent *)self accumSupported]&& _os_feature_enabled_impl())
  {

    [(PLSMCMetricsAgent *)self logAccumulatedKeysToPL:1 ToCA:1];
  }
}

- (void)logEventPointInstantKeys
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  loggedInstantKeysArray = self->_loggedInstantKeysArray;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__PLSMCMetricsAgent_logEventPointInstantKeys__block_invoke;
  v11[3] = &unk_278259CE0;
  v11[4] = self;
  v6 = v3;
  v12 = v6;
  v13 = v4;
  v7 = v4;
  [(NSArray *)loggedInstantKeysArray enumerateObjectsUsingBlock:v11];
  v8 = PLLogSMCMetrics();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Logging SMC Payload: %@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v7 setObject:v9 forKeyedSubscript:@"timestamp"];

  [MEMORY[0x277D3F258] postNotificationName:@"ThermalEntryNotification" object:self userInfo:v7];
  [(PLOperator *)self logForSubsystem:@"SMC" category:@"InstantKeyValues" data:v6];

  v10 = *MEMORY[0x277D85DE8];
}

void __45__PLSMCMetricsAgent_logEventPointInstantKeys__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) readSMCKey:v12];
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"Key", a3];
    [v7 setObject:v6 forKeyedSubscript:v8];

    [*(a1 + 48) setObject:v6 forKeyedSubscript:v12];
    if (os_variant_is_darwinos())
    {
      v9 = MEMORY[0x277D3F200];
      v10 = [*(a1 + 32) instantGaugeArray];
      v11 = [v10 objectAtIndex:a3];
      [v6 doubleValue];
      [v9 setGauge:v11 withValue:?];
    }
  }

  objc_autoreleasePoolPop(v5);
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLSMCMetricsAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLSMCMetricsAgent)init
{
  v23.receiver = self;
  v23.super_class = PLSMCMetricsAgent;
  v2 = [(PLAgent *)&v23 init];
  v3 = v2;
  if (v2)
  {
    monitorTimer = v2->_monitorTimer;
    v2->_monitorTimer = 0;

    v3->_loggingCounter = 0;
    v3->_cycleCountInterval = 0.0;
    v3->_powerDeliveryCounter = 0;
    lastFocalSampleDate = v3->_lastFocalSampleDate;
    v3->_lastFocalSampleDate = 0;

    lastAccumlatedSample = v3->_lastAccumlatedSample;
    v3->_lastAccumlatedSample = 0;

    v7 = [MEMORY[0x277CBEB98] set];
    availableKeys = v3->_availableKeys;
    v3->_availableKeys = v7;

    lastDisplayAccumlatedSample = v3->_lastDisplayAccumlatedSample;
    v3->_lastDisplayAccumlatedSample = 0;

    v10 = [MEMORY[0x277CBEA60] array];
    loggedInstantKeysArray = v3->_loggedInstantKeysArray;
    v3->_loggedInstantKeysArray = v10;

    v12 = [MEMORY[0x277CBEB18] array];
    accumGaugeArray = v3->_accumGaugeArray;
    v3->_accumGaugeArray = v12;

    v14 = [MEMORY[0x277CBEB18] array];
    instantGaugeArray = v3->_instantGaugeArray;
    v3->_instantGaugeArray = v14;

    v16 = [MEMORY[0x277CBEA60] array];
    loggedAccumulatedKeysArray = v3->_loggedAccumulatedKeysArray;
    v3->_loggedAccumulatedKeysArray = v16;

    v18 = [MEMORY[0x277CBEA60] array];
    loggedPowerDeliveryKeysArray = v3->_loggedPowerDeliveryKeysArray;
    v3->_loggedPowerDeliveryKeysArray = v18;

    v3->_smcConnection = SMCOpenConnectionWithDefaultService();
    v20 = [MEMORY[0x277CBEAA8] monotonicDate];
    lastDisplayAccumulatedSampleEndDate = v3->_lastDisplayAccumulatedSampleEndDate;
    v3->_lastDisplayAccumulatedSampleEndDate = v20;
  }

  return v3;
}

+ (BOOL)isEnabled
{
  if (!+[PLSMCMetricsAgent supportsSMC])
  {
    v3 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v7 = 0;
    v4 = "SMC telemetry is not supported";
    v5 = &v7;
LABEL_10:
    _os_log_error_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
    goto LABEL_7;
  }

  if ([MEMORY[0x277D3F180] longForKey:@"SMCMonitorCadence" ifNotSet:20])
  {
    return 1;
  }

  v3 = PLLogSMCMetrics();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 0;
    v4 = "SMC telemetry is disabled";
    v5 = &v6;
    goto LABEL_10;
  }

LABEL_7:

  return 0;
}

- (void)initOperatorDependancies
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = [(PLSMCMetricsAgent *)self getAllKeys];
  availableKeys = self->_availableKeys;
  self->_availableKeys = v3;

  v5 = PLLogSMCMetrics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v39 = [(NSSet *)self->_availableKeys count];
    v40 = self->_availableKeys;
    LODWORD(location) = 67109378;
    HIDWORD(location) = v39;
    v57 = 2112;
    v58 = v40;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "List of all SMC Keys (count %d): %@", &location, 0x12u);
  }

  v6 = [(PLSMCMetricsAgent *)self getAllowedInstantKeys];
  [v6 intersectSet:self->_availableKeys];

  v7 = [(PLSMCMetricsAgent *)self getAllowedInstantKeys];
  v8 = [v7 allObjects];
  loggedInstantKeysArray = self->_loggedInstantKeysArray;
  self->_loggedInstantKeysArray = v8;

  v10 = PLLogSMCMetrics();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v41 = [(PLSMCMetricsAgent *)self loggedInstantKeysArray];
    v42 = [v41 count];
    v43 = [(PLSMCMetricsAgent *)self loggedInstantKeysArray];
    LODWORD(location) = 67109378;
    HIDWORD(location) = v42;
    v57 = 2112;
    v58 = v43;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "List of collected instant SMC keys (count %d): %@", &location, 0x12u);
  }

  v11 = [(PLSMCMetricsAgent *)self getAllowedAccumulatedKeys];
  [v11 intersectSet:self->_availableKeys];

  v12 = [(PLSMCMetricsAgent *)self getAllowedAccumulatedKeys];
  v13 = [v12 allObjects];
  v14 = [(PLSMCMetricsAgent *)self getOSAccumListFrom:v13];
  loggedAccumulatedKeysArray = self->_loggedAccumulatedKeysArray;
  self->_loggedAccumulatedKeysArray = v14;

  v16 = PLLogSMCMetrics();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v44 = [(PLSMCMetricsAgent *)self loggedAccumulatedKeysArray];
    v45 = [v44 count];
    v46 = [(PLSMCMetricsAgent *)self loggedAccumulatedKeysArray];
    LODWORD(location) = 67109378;
    HIDWORD(location) = v45;
    v57 = 2112;
    v58 = v46;
    _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "List of collected accumulated keys (count %d): %@", &location, 0x12u);
  }

  v17 = [(PLSMCMetricsAgent *)self getAllowedPowerDeliveryKeys];
  [v17 intersectsSet:self->_availableKeys];

  v18 = [(PLSMCMetricsAgent *)self getAllowedPowerDeliveryKeys];
  v19 = [v18 allObjects];
  loggedPowerDeliveryKeysArray = self->_loggedPowerDeliveryKeysArray;
  self->_loggedPowerDeliveryKeysArray = v19;

  v21 = PLLogSMCMetrics();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v47 = [(PLSMCMetricsAgent *)self getAllowedPowerDeliveryKeys];
    v48 = [v47 count];
    v49 = [(PLSMCMetricsAgent *)self getAllowedPowerDeliveryKeys];
    LODWORD(location) = 67109378;
    HIDWORD(location) = v48;
    v57 = 2112;
    v58 = v49;
    _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "List of collected power delivery SMC keys (count %d): %@", &location, 0x12u);
  }

  [(PLSMCMetricsAgent *)self initOSMetrics];
  self->_monitorCadence = [MEMORY[0x277D3F180] longForKey:@"SMCMonitorCadence" ifNotSet:20];
  [(PLSMCMetricsAgent *)self logSMCLookUpTable];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke;
  v55[3] = &unk_2782597E8;
  v55[4] = self;
  v22 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v55];
  sbc = self->_sbc;
  self->_sbc = v22;

  v24 = objc_alloc(MEMORY[0x277D3F1F0]);
  v25 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v26 = *MEMORY[0x277CBE580];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_2;
  v54[3] = &unk_2782597E8;
  v54[4] = self;
  v27 = [v24 initWithWorkQueue:v25 forNotification:v26 withBlock:v54];

  [(PLSMCMetricsAgent *)self setDailyTaskNotification:v27];
  if ([(PLSMCMetricsAgent *)self accumSupported]&& _os_feature_enabled_impl())
  {
    [(PLSMCMetricsAgent *)self logAccumlatedLookUpTable];
    objc_initWeak(&location, self);
    v28 = [MEMORY[0x277D3F220] sharedInstance];
    [(PLSMCMetricsAgent *)self setStateTracker:v28];

    v29 = [(PLSMCMetricsAgent *)self stateTracker];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_54;
    v52[3] = &unk_278259C18;
    objc_copyWeak(&v53, &location);
    [v29 registerForStates:57 withOperator:self withBlock:v52];

    if (+[PLSMCMetricsAgent shouldModelDisplayPowerFromSMC])
    {
      [(PLSMCMetricsAgent *)self logDisplayPower];
      v30 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
      v31 = objc_alloc(MEMORY[0x277D3F1A8]);
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_2_56;
      v51[3] = &unk_2782597E8;
      v51[4] = self;
      v32 = [v31 initWithOperator:self forEntryKey:v30 withFilter:MEMORY[0x277CBEC10] withBlock:v51];
      [(PLSMCMetricsAgent *)self setScreenStateNotification:v32];
    }

    objc_destroyWeak(&v53);
    objc_destroyWeak(&location);
  }

  v33 = objc_alloc(MEMORY[0x277D3F250]);
  v34 = [MEMORY[0x277CBEAA8] date];
  monitorCadence = self->_monitorCadence;
  v36 = [(PLOperator *)self workQueue];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_3;
  v50[3] = &unk_278259C40;
  v50[4] = self;
  v37 = [v33 initWithFireDate:v34 withInterval:1 withTolerance:0 repeats:v36 withUserInfo:v50 withQueue:monitorCadence withBlock:0.0];
  [(PLSMCMetricsAgent *)self setMonitorTimer:v37];

  v38 = *MEMORY[0x277D85DE8];
}

void __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSleepWakeStateChange];
}

uint64_t __45__PLSMCMetricsAgent_initOperatorDependancies__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) thermalMonitorCallback];
  v2 = *(a1 + 32);

  return [v2 powerDeliveryCallback];
}

- (void)initOSMetrics
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_variant_is_darwinos())
  {
    v3 = [MEMORY[0x277D3F200] createMetricGroup:@"SMC" withDimensions:0];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = [(PLSMCMetricsAgent *)self loggedInstantKeysArray];
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        v8 = 0;
        do
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [MEMORY[0x277D3F200] createGauge:v3 withLabel:*(*(&v23 + 1) + 8 * v8)];
          v10 = [(PLSMCMetricsAgent *)self instantGaugeArray];
          [v10 addObject:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v6);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [(PLSMCMetricsAgent *)self loggedAccumulatedKeysArray];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [MEMORY[0x277D3F200] createGauge:v3 withLabel:*(*(&v19 + 1) + 8 * v15)];
          v17 = [(PLSMCMetricsAgent *)self accumGaugeArray];
          [v17 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v13);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)logSMCLookUpTable
{
  loggedInstantKeysArray = self->_loggedInstantKeysArray;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__PLSMCMetricsAgent_logSMCLookUpTable__block_invoke;
  v3[3] = &unk_278259C68;
  v3[4] = self;
  [(NSArray *)loggedInstantKeysArray enumerateObjectsUsingBlock:v3];
}

void __38__PLSMCMetricsAgent_logSMCLookUpTable__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"Key", a3];
    v13[0] = @"KeyIndex";
    v13[1] = @"KeyName";
    v14[0] = v7;
    v14[1] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v9 = PLLogSMCMetrics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Logging SMC Look-up table: %@", buf, 0xCu);
    }

    [*(a1 + 32) logForSubsystem:@"SMC" category:@"InstantLookUpTable" data:v8];
  }

  objc_autoreleasePoolPop(v6);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logThermalKeysToCoreAnalytics
{
  v3 = objc_autoreleasePoolPush();
  stateTracker = self->_stateTracker;
  v5 = [MEMORY[0x277CBEAA8] monotonicDate];
  v6 = [(PLStateTrackingComposition *)stateTracker getState:1 beforeDate:v5];

  v7 = self->_stateTracker;
  v8 = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = [(PLStateTrackingComposition *)v7 getState:8 beforeDate:v8];

  v10 = self->_stateTracker;
  v11 = [MEMORY[0x277CBEAA8] monotonicDate];
  v12 = [(PLStateTrackingComposition *)v10 getState:64 beforeDate:v11];
  v13 = [v12 BOOLValue];

  v14 = PLLogSMCMetrics();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Log Thermal Aggregated Keys to CA", buf, 2u);
  }

  v15 = MEMORY[0x277CBEB38];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v13 ^ 1u];
  v17 = [v15 dictionaryWithObjectsAndKeys:{v6, @"Plugged", v9, @"Wake", v16, @"Active", 0}];

  loggedInstantKeysArray = self->_loggedInstantKeysArray;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __50__PLSMCMetricsAgent_logThermalKeysToCoreAnalytics__block_invoke;
  v22[3] = &unk_278259C90;
  v22[4] = self;
  v19 = v17;
  v23 = v19;
  [(NSArray *)loggedInstantKeysArray enumerateObjectsUsingBlock:v22];
  v21 = v19;
  v20 = v19;
  AnalyticsSendEventLazy();

  objc_autoreleasePoolPop(v3);
}

void __50__PLSMCMetricsAgent_logThermalKeysToCoreAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) readSMCKey:v3];
  if (([v3 isEqualToString:@"SDTO"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"xPDS") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TH0b") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"mlf0") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"mlf1") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"mlf2") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Ts0P") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TVM0") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"TH0A") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"vofi") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"vopi"))
  {
    v5 = [v3 stringByAppendingString:@"_"];

    v3 = v5;
  }

  if ([v3 isEqualToString:@"SDTO"])
  {
    [v4 doubleValue];
    [MEMORY[0x277D3F258] roundToSigFigDouble:1 withSigFig:?];
    v7 = 10.0;
    v8 = v6 >= 5.0 && v6 < 10.0;
    if (!v8)
    {
      v7 = v6;
    }

    v8 = v6 < 5.0;
    v9 = 1.0;
    if (!v8)
    {
      v9 = v7;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];

    v4 = v10;
  }

  v11 = PLLogSMCMetrics();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "logging key to CA: %@", &v13, 0xCu);
  }

  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKey:v3];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logPowerDeliveryKeys
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_loggedPowerDeliveryKeysArray count])
  {
    v4 = 241;
    *&v3 = 67109120;
    v10 = v3;
    do
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
      if ([(PLSMCMetricsAgent *)self writeSMCKey:@"SATR" withValue:v4 - 240])
      {
        loggedPowerDeliveryKeysArray = self->_loggedPowerDeliveryKeysArray;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __41__PLSMCMetricsAgent_logPowerDeliveryKeys__block_invoke;
        v11[3] = &unk_278259D08;
        v11[4] = self;
        v12 = v5;
        v13 = v4 + 16;
        [(NSArray *)loggedPowerDeliveryKeysArray enumerateObjectsUsingBlock:v11];
        if (![(PLSMCMetricsAgent *)self writeSMCKey:@"SATR" withValue:v4])
        {
          v7 = PLLogSMCMetrics();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = v10;
            v15 = v4 - 240;
            _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Could not clear counts for rail mode %d", buf, 8u);
          }
        }
      }

      else
      {
        v8 = PLLogSMCMetrics();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = v10;
          v15 = v4 - 240;
          _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "Could not set threshold rail mode to %d", buf, 8u);
        }
      }

      ++v4;
    }

    while (v4 != 247);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __41__PLSMCMetricsAgent_logPowerDeliveryKeys__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) readSMCKey:v3];
  if (v5)
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:@"Key"];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:@"Value"];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 48)];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:@"RailMode"];

    v7 = PLLogSMCMetrics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v10 = 138412290;
      v11 = v9;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Logging Power Delivery Payload: %@", &v10, 0xCu);
    }

    [*(a1 + 32) logForSubsystem:@"SMC" category:@"PowerDeliveryCLVRKeys" data:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)logAccumulatedKeysToPL:(BOOL)a3 ToCA:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = [(PLSMCMetricsAgent *)self sampleAccumulatedKeys:self->_loggedAccumulatedKeysArray];
  v9 = [(PLSMCMetricsAgent *)self lastAccumlatedSample];
  v10 = [(PLSMCMetricsAgent *)self getValueFromAccumSample:v8 lastSample:v9];

  if (v10)
  {
    v30 = v4;
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v12 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v11 setObject:v12 forKeyedSubscript:@"timestampEnd"];

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_cycleCountInterval];
    [v11 setObject:v13 forKeyedSubscript:@"CycleCountDiff"];

    if (self->_cycleCountInterval <= 0.0)
    {
      v15 = [v11 objectForKeyedSubscript:@"timestampEnd"];
    }

    else
    {
      v14 = [MEMORY[0x277CBEAA8] monotonicDate];
      v15 = [v14 dateByAddingTimeInterval:-self->_cycleCountInterval];
    }

    loggedAccumulatedKeysArray = self->_loggedAccumulatedKeysArray;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __49__PLSMCMetricsAgent_logAccumulatedKeysToPL_ToCA___block_invoke;
    v32[3] = &unk_278259CE0;
    v17 = v10;
    v33 = v17;
    v18 = v11;
    v34 = v18;
    v35 = self;
    [(NSArray *)loggedAccumulatedKeysArray enumerateObjectsUsingBlock:v32];
    v19 = PLLogSMCMetrics();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v37 = v17;
      _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "Accumulated Payload: %@", buf, 0xCu);
    }

    v20 = v15;
    if (v5)
    {
      [(PLOperator *)self logForSubsystem:@"SMC" category:@"AccumulatedKeyValues" data:v18 date:v15];
      [v17 setObject:v15 forKeyedSubscript:@"timestamp"];
      v21 = [MEMORY[0x277CBEAA8] monotonicDate];
      [v17 setObject:v21 forKeyedSubscript:@"timestampEnd"];

      [MEMORY[0x277D3F258] postNotificationName:@"PowerEntryNotification" object:self userInfo:v17];
      self->_cycleCountInterval = 0.0;
      [(PLSMCMetricsAgent *)self setLastAccumlatedSample:v8];
    }

    if (v30)
    {
      stateTracker = self->_stateTracker;
      v23 = [MEMORY[0x277CBEAA8] monotonicDate];
      v24 = [(PLStateTrackingComposition *)stateTracker getState:1 beforeDate:v23];

      v25 = self->_stateTracker;
      v26 = [MEMORY[0x277CBEAA8] monotonicDate];
      v27 = [(PLStateTrackingComposition *)v25 getState:8 beforeDate:v26];

      if (v24 && v27)
      {
        [v17 setObject:v24 forKey:@"Plugged"];
        [v17 setObject:v27 forKey:@"Wake"];
        v28 = PLLogSMCMetrics();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "Log Accumulated Keys to CA", buf, 2u);
        }

        v31 = v17;
        AnalyticsSendEventLazy();
      }
    }
  }

  objc_autoreleasePoolPop(v7);
  v29 = *MEMORY[0x277D85DE8];
}

void __49__PLSMCMetricsAgent_logAccumulatedKeysToPL_ToCA___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) objectForKeyedSubscript:v12];
  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"Key", a3];
    [v7 setObject:v6 forKeyedSubscript:v8];

    if (os_variant_is_darwinos())
    {
      v9 = MEMORY[0x277D3F200];
      v10 = [*(a1 + 48) accumGaugeArray];
      v11 = [v10 objectAtIndex:a3];
      [v6 doubleValue];
      [v9 setGauge:v11 withValue:?];
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)logAccumlatedLookUpTable
{
  v10 = *MEMORY[0x277D85DE8];
  loggedAccumulatedKeysArray = self->_loggedAccumulatedKeysArray;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__PLSMCMetricsAgent_logAccumlatedLookUpTable__block_invoke;
  v7[3] = &unk_278259C68;
  v7[4] = self;
  [(NSArray *)loggedAccumulatedKeysArray enumerateObjectsUsingBlock:v7];
  v4 = PLLogSMCMetrics();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = self->_loggedAccumulatedKeysArray;
    *buf = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Accumulated Payload%@", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __45__PLSMCMetricsAgent_logAccumlatedLookUpTable__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"Key", a3];
    v13[0] = @"KeyIndex";
    v13[1] = @"KeyName";
    v14[0] = v7;
    v14[1] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v9 = PLLogSMCMetrics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Logging Accumulated Look-up table: %@", buf, 0xCu);
    }

    [*(a1 + 32) logForSubsystem:@"SMC" category:@"AccumulatedLookUpTable" data:v8];
  }

  objc_autoreleasePoolPop(v6);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logDisplayPower
{
  v3 = [(PLSMCMetricsAgent *)self sampleAccumulatedKeys:&unk_282C13F80];
  if (v3)
  {
    v4 = [(PLSMCMetricsAgent *)self lastDisplayAccumlatedSample];
    v5 = [(PLSMCMetricsAgent *)self getValueFromAccumSample:v3 lastSample:v4];

    if (v5)
    {
      [(PLOperator *)self logForSubsystem:@"SMC" category:@"DisplayPower" data:v5];
      v6 = [v5 objectForKeyedSubscript:@"PDEP"];
      [v6 doubleValue];
      v8 = v7;
      v9 = [v5 objectForKeyedSubscript:@"PDLP"];
      [v9 doubleValue];
      v11 = (v8 + v10) * 1000.0;

      v12 = [(PLSMCMetricsAgent *)self lastDisplayAccumulatedSampleEndDate];
      v13 = [MEMORY[0x277D3F0C0] sharedInstance];
      v14 = [MEMORY[0x277CBEAA8] monotonicDate];
      [v13 createPowerEventIntervalWithRootNodeID:56 withPower:v12 withStartDate:v14 withEndDate:v11];

      [(PLSMCMetricsAgent *)self setLastDisplayAccumlatedSample:v3];
      v15 = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLSMCMetricsAgent *)self setLastDisplayAccumulatedSampleEndDate:v15];
    }
  }

  else
  {
    v16 = PLLogSMCMetrics();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_ERROR, "Failed to sample OSAccumulator channel", v17, 2u);
    }
  }
}

- (id)getValueFromAccumSample:(id)a3 lastSample:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = objc_opt_new();
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0xBFF0000000000000;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__PLSMCMetricsAgent_getValueFromAccumSample_lastSample___block_invoke;
    v14[3] = &unk_278259D30;
    v8 = v7;
    v15 = v8;
    v16 = &v22;
    v17 = &v18;
    [v6 enumerateKeysAndObjectsUsingBlock:v14];
    if ([v23[5] count] && ((v9 = v19, v10 = v19[3], !v8) || v10 > 1.0))
    {
      self->_cycleCountInterval = v10;
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:v9[3]];
      [v23[5] setObject:v12 forKeyedSubscript:@"CycleCountDiff"];

      v11 = v23[5];
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __56__PLSMCMetricsAgent_getValueFromAccumSample_lastSample___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  if (!v9)
  {
    if (![v7 cycleCount])
    {
      v11 = 0;
      goto LABEL_19;
    }

    [v7 channelValue];
    v18 = v19 / [v7 cycleCount];
    v17 = [v7 cycleCount];
    v11 = 0;
    goto LABEL_12;
  }

  v10 = [v9 objectForKeyedSubscript:v23];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 cycleCount];
    if (v12 < [v7 cycleCount])
    {
      [v7 channelValue];
      v14 = v13;
      [v11 channelValue];
      v16 = v15;
      v17 = [v7 cycleCount] - v12;
      if (v17 < 1)
      {
        goto LABEL_19;
      }

      v18 = (v14 - v16) / v17;
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  if (![v7 cycleCount] || objc_msgSend(v7, "cycleCount") == v12)
  {
    goto LABEL_19;
  }

  [v7 channelValue];
  v18 = v20 / [v7 cycleCount];
  v17 = [v7 cycleCount];
LABEL_12:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  [*(*(a1[5] + 8) + 40) setObject:v21 forKeyedSubscript:v23];

  v22 = *(a1[6] + 8);
  if (*(v22 + 24) == -1.0)
  {
    *(v22 + 24) = v17;
    if ([v7 variant] == 2)
    {
      *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) / 1000.0;
    }

    if (*(*(a1[6] + 8) + 24) <= 1.0 && a1[4])
    {
      *a4 = 1;
    }
  }

LABEL_19:

  objc_autoreleasePoolPop(v8);
}

- (id)sampleAccumulatedKeys:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionary];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__PLSMCMetricsAgent_sampleAccumulatedKeys___block_invoke;
  v11[3] = &unk_278259C90;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v5 enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __43__PLSMCMetricsAgent_sampleAccumulatedKeys___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v10 = 0;
  v5 = [*(a1 + 32) readAccumSMCKey:v3 toOutput:&v9];

  if (v5)
  {
    v6 = [*(a1 + 32) readAccumSMCKey:v3 toOutput:&v9];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v3];
  }

  v7 = PLLogSMCMetrics();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v12 = v3;
    v13 = 2048;
    v14 = v9;
    v15 = 1024;
    v16 = v10;
    v17 = 1024;
    v18 = BYTE4(v10);
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AccumulatedKeys: keyName=%@, channelValue=%f, cycleCount=%d, variant=%d", buf, 0x22u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)readAccumSMCKey:(id)a3 toOutput:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  [v6 UTF8String];
  v8 = SMCMakeUInt32Key();
  if (![(PLSMCMetricsAgent *)self isKeyOSAccumSupported:v6])
  {
    v9 = PLLogSMCMetrics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 67109120;
      LODWORD(v18) = v8;
      v10 = "Failed to fetch channelInfo for key %u";
      v11 = v9;
      v12 = 8;
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  [(PLSMCMetricsAgent *)self smcConnection];
  if (SMCOSAccumSampleChannel())
  {
    v9 = PLLogSMCMetrics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      v10 = "SMCOSAccumSampleChannel fails";
      v11 = v9;
      v12 = 2;
LABEL_16:
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, v10, &v17, v12);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  var1 = a4->var1;
  if (!var1)
  {
    v9 = PLLogSMCMetrics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[PLSMCMetricsAgent readAccumSMCKey:toOutput:]";
      v19 = 1024;
      v20 = v8;
      v10 = "%s: Returned cycleCount is zero for %u key, returning kSMCReturnError";
      v11 = v9;
      v12 = 18;
      goto LABEL_16;
    }

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v13 = [PLSMCAccumOutputObject objectWithChannelValue:var1 cycleCount:a4->var2 variant:a4->var0];
  v9 = PLLogSMCMetrics();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Accumulated key: %@", &v17, 0xCu);
  }

LABEL_7:

  objc_autoreleasePoolPop(v7);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (const)isKeyOSAccumSupported:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (v4 && ([v4 UTF8String], SMCMakeUInt32Key()) && (-[PLSMCMetricsAgent smcConnection](self, "smcConnection"), !SMCGetKeyInfo()))
  {
    [(PLSMCMetricsAgent *)self smcConnection];
    ChannelInfoForKey = SMCAccumGetChannelInfoForKey();
  }

  else
  {
    ChannelInfoForKey = 0;
  }

  objc_autoreleasePoolPop(v5);

  v6 = *MEMORY[0x277D85DE8];
  return ChannelInfoForKey;
}

- (BOOL)accumSupported
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__PLSMCMetricsAgent_accumSupported__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3D48 != -1)
  {
    dispatch_once(&qword_2811F3D48, block);
  }

  return _MergedGlobals_1_0;
}

uint64_t __35__PLSMCMetricsAgent_accumSupported__block_invoke(uint64_t a1)
{
  [*(a1 + 32) smcConnection];
  result = SMCOSAccumIsSupported();
  _MergedGlobals_1_0 = result;
  return result;
}

- (void)handleSleepWakeStateChange
{
  [(PLSMCMetricsAgent *)self setLastAccumlatedSample:0];
  if ([(PLStateTrackingComposition *)self->_stateTracker stateChanged:32])
  {
    v3 = [(PLStateTrackingComposition *)self->_stateTracker getLastState:32];
    v4 = [v3 BOOLValue];

    if (v4)
    {
      [(PLSMCMetricsAgent *)self logAccumulatedKeysToPL:1 ToCA:1];
    }
  }

  if (+[PLSMCMetricsAgent shouldModelDisplayPowerFromSMC]&& [(PLSMCMetricsAgent *)self accumSupported])
  {
    lastDisplayAccumlatedSample = self->_lastDisplayAccumlatedSample;
    self->_lastDisplayAccumlatedSample = 0;

    v6 = [MEMORY[0x277CBEAA8] monotonicDate];
    lastDisplayAccumulatedSampleEndDate = self->_lastDisplayAccumulatedSampleEndDate;
    self->_lastDisplayAccumulatedSampleEndDate = v6;

    [(PLSMCMetricsAgent *)self logDisplayPower];
  }
}

- (void)dealloc
{
  if ([(PLSMCMetricsAgent *)self smcConnection])
  {
    [(PLSMCMetricsAgent *)self smcConnection];
    SMCCloseConnection();
  }

  v3.receiver = self;
  v3.super_class = PLSMCMetricsAgent;
  [(PLAgent *)&v3 dealloc];
}

- (id)handleNumericKeys:(unsigned int)a3 keyInfo:(id *)a4 keyName:(id)a5 ret:(char)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a5;
  [(PLSMCMetricsAgent *)self smcConnection];
  v9 = SMCReadKeyAsNumericWithKnownKeyInfo();
  if (v9)
  {
    v10 = v9;
    v11 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

LABEL_4:
      v12 = 0;
      goto LABEL_10;
    }

    *buf = 67109120;
    v34 = v10;
    v20 = "SMCReadKeyAsNumeric error: %d";
LABEL_26:
    _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, v20, buf, 8u);
    goto LABEL_3;
  }

  var0 = a4->var2.var0.var0;
  if (var0)
  {
    if (var0 == 2 || var0 == 1)
    {
      HIDWORD(v14) = 0;
      *&v14 = 0.0;
      v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
      goto LABEL_9;
    }

    v21 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_18:

      goto LABEL_4;
    }

    v28 = a4->var2.var0.var0;
    *buf = 67109120;
    v34 = v28;
    v29 = "Unknown numeric SMC type: %d";
    v30 = v21;
    v31 = 8;
LABEL_39:
    _os_log_error_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
    goto LABEL_18;
  }

  if (!a4->var2.var0.var1)
  {
    var1 = a4->var1;
    if ((var1 & 4) == 0)
    {
      if ((var1 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      var3 = a4->var3;
      if (var3 > 3)
      {
        if (var3 == 4)
        {
          v24 = MEMORY[0x277CCABB0];
          goto LABEL_49;
        }

        if (var3 == 8)
        {
          v24 = MEMORY[0x277CCABB0];
          goto LABEL_49;
        }
      }

      else
      {
        if (var3 == 1)
        {
          v24 = MEMORY[0x277CCABB0];
          goto LABEL_49;
        }

        if (var3 == 2)
        {
          v24 = MEMORY[0x277CCABB0];
LABEL_49:
          v15 = [v24 numberWithUnsignedLong:0];
          goto LABEL_9;
        }
      }

      v21 = PLLogSMCMetrics();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

LABEL_46:
      v32 = a4->var3;
      *buf = 67109378;
      v34 = v32;
      v35 = 2112;
      v36 = v8;
      v29 = "Unsupported key size %d for SMC key %@.";
      v30 = v21;
      v31 = 18;
      goto LABEL_39;
    }

    v25 = a4->var3;
    if (v25 > 3)
    {
      if (v25 == 4)
      {
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:bswap32(0)];
        goto LABEL_9;
      }

      if (v25 == 8)
      {
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bswap64(0)];
        goto LABEL_9;
      }
    }

    else
    {
      if (v25 == 1)
      {
        v26 = MEMORY[0x277CCABB0];
        v27 = 0;
        goto LABEL_43;
      }

      if (v25 == 2)
      {
        v26 = MEMORY[0x277CCABB0];
        v27 = bswap32(0) >> 16;
LABEL_43:
        v15 = [v26 numberWithUnsignedShort:v27];
        goto LABEL_9;
      }
    }

    v21 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

  [(PLSMCMetricsAgent *)self smcConnection];
  v18 = SMCReadKey();
  if (v18)
  {
    v19 = v18;
    v11 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 67109120;
    v34 = v19;
    v20 = "SMCReadKey error: %d";
    goto LABEL_26;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInt:0];
LABEL_9:
  v12 = v15;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)handleNonNumericKeys:(unsigned int)a3 keyInfo:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!strcmp(&a4->var2, "ioft"))
  {
    *buf = 0;
    [(PLSMCMetricsAgent *)self smcConnection];
    v8 = SMCReadKey();
    if (v8)
    {
      v9 = v8;
      v10 = PLLogSMCMetrics();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

LABEL_12:
        v7 = 0;
        goto LABEL_13;
      }

      v17[0] = 67109120;
      v17[1] = v9;
      v11 = v17;
LABEL_19:
      _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "SMCReadKey error: %d", v11, 8u);
      goto LABEL_11;
    }

    v16 = *buf * 0.0000152587891;
    *&v16 = v16;
    v7 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  }

  else
  {
    if (strcmp(&a4->var2, "flag"))
    {
      if (!strcmp(&a4->var2, "hex_"))
      {
        *buf = 0;
        [(PLSMCMetricsAgent *)self smcConnection];
        var3 = a4->var3;
        if (!SMCReadKey())
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*buf];
          goto LABEL_13;
        }
      }

      goto LABEL_12;
    }

    v17[0] = 0;
    [(PLSMCMetricsAgent *)self smcConnection];
    v12 = SMCReadKey();
    if (v12)
    {
      v13 = v12;
      v10 = PLLogSMCMetrics();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 67109120;
      *&buf[4] = v13;
      v11 = buf;
      goto LABEL_19;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17[0]];
  }

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)readSMCKey:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v12 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      v11 = 0;
      goto LABEL_14;
    }

    *buf = 0;
    v13 = "Invalid key name";
    v14 = v12;
    v15 = 2;
LABEL_18:
    _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    goto LABEL_10;
  }

  [v4 UTF8String];
  v6 = SMCMakeUInt32Key();
  if (!v6)
  {
    v12 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 67109120;
    *&buf[4] = 0;
    v13 = "SMCMakeUInt32Key error: %d";
    v14 = v12;
    v15 = 8;
    goto LABEL_18;
  }

  v7 = v6;
  memset(buf, 0, sizeof(buf));
  v20 = 0;
  [(PLSMCMetricsAgent *)self smcConnection];
  v8 = SMCGetKeyInfo();
  if (v8)
  {
    v9 = v8;
    v10 = PLLogSMCMetrics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v18 = 67109120;
      *&v18[4] = v9;
      _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "SMCGetKeyInfo error: %d", v18, 8u);
    }

    v11 = 0;
  }

  else
  {
    *v18 = *buf;
    *&v18[16] = v20;
    v11 = [(PLSMCMetricsAgent *)self handleNumericKeys:v7 keyInfo:v18 keyName:v5 ret:0];
    v10 = PLLogSMCMetrics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v18 = 138412546;
      *&v18[4] = v5;
      *&v18[12] = 2112;
      *&v18[14] = v11;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Read keys %@: %@", v18, 0x16u);
    }
  }

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)writeSMCKey:(id)a3 withValue:(unint64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v13 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      goto LABEL_10;
    }

    *v27 = 0;
    v14 = "Not a valid key name";
    v15 = v13;
    v16 = 2;
LABEL_16:
    _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, v14, v27, v16);
    goto LABEL_9;
  }

  [v6 UTF8String];
  v8 = SMCMakeUInt32Key();
  if (!v8)
  {
    v13 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *v27 = 67109120;
    *&v27[4] = 0;
    v14 = "SMCMakeUInt32Key for %u key returned 0";
    v15 = v13;
    v16 = 8;
    goto LABEL_16;
  }

  v9 = v8;
  *v27 = 0;
  v28 = 0;
  v29 = 0;
  [(PLSMCMetricsAgent *)self smcConnection];
  v10 = SMCGetKeyInfo();
  if (v10)
  {
    v11 = v10;
    v12 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

LABEL_10:
      v17 = 0;
      goto LABEL_11;
    }

    *buf = 67109376;
    *v25 = v9;
    *&v25[4] = 1024;
    *&v25[6] = v11;
    v20 = "SMCGetKeyInfo for %u key failed with %d";
LABEL_14:
    _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, v20, buf, 0xEu);
    goto LABEL_5;
  }

  [(PLSMCMetricsAgent *)self smcConnection];
  v21 = SMCWriteKeyAsNumeric();
  if (v21)
  {
    v22 = v21;
    v12 = PLLogSMCMetrics();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 67109376;
    *v25 = v9;
    *&v25[4] = 1024;
    *&v25[6] = v22;
    v20 = "Writing to %u numeric key failed with %d";
    goto LABEL_14;
  }

  v23 = PLLogSMCMetrics();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *v25 = v7;
    *&v25[8] = 2048;
    v26 = a4;
    _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@: %llu", buf, 0x16u);
  }

  v17 = 1;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)getAllKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PLSMCMetricsAgent_getAllKeys__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3D58 != -1)
  {
    dispatch_once(&qword_2811F3D58, block);
  }

  return qword_2811F3D50;
}

void __31__PLSMCMetricsAgent_getAllKeys__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = qword_2811F3D50;
  qword_2811F3D50 = v2;

  v4 = 0;
  do
  {
    v5 = objc_autoreleasePoolPush();
    v10 = 0;
    [*(a1 + 32) smcConnection];
    v6 = SMCGetKeyFromIndex();
    if (!v6)
    {
      SMCUInt32ToString();
      v7 = qword_2811F3D50;
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
      [v7 addObject:v8];
    }

    objc_autoreleasePoolPop(v5);
    ++v4;
  }

  while (v6 != -4);
}

- (id)getAllowedKeys:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = getAllowedKeys__keyList;
  getAllowedKeys__keyList = v4;

  v6 = [MEMORY[0x277D3F258] getAllowblocklist];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 objectForKeyedSubscript:{v3, 0}];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        if (v12)
        {
          if ([v3 isEqualToString:@"PLSMCAgent_EventBackward_PowerAccumulatedKeys"])
          {
            v14 = [v12 substringToIndex:4];
            [getAllowedKeys__keyList addObject:v14];
          }

          else
          {
            [getAllowedKeys__keyList addObject:v12];
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v15 = getAllowedKeys__keyList;
  v16 = getAllowedKeys__keyList;

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)getAllowedInstantKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PLSMCMetricsAgent_getAllowedInstantKeys__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3D68 != -1)
  {
    dispatch_once(&qword_2811F3D68, block);
  }

  return qword_2811F3D60;
}

uint64_t __42__PLSMCMetricsAgent_getAllowedInstantKeys__block_invoke(uint64_t a1)
{
  qword_2811F3D60 = [*(a1 + 32) getAllowedKeys:@"PLSMCAgent_EventPoint_ThermalInstantKeys"];

  return MEMORY[0x2821F96F8]();
}

- (id)getAllowedAccumulatedKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLSMCMetricsAgent_getAllowedAccumulatedKeys__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3D78 != -1)
  {
    dispatch_once(&qword_2811F3D78, block);
  }

  return qword_2811F3D70;
}

uint64_t __46__PLSMCMetricsAgent_getAllowedAccumulatedKeys__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accumSupported];
  if (result)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      qword_2811F3D70 = [*(a1 + 32) getAllowedKeys:@"PLSMCAgent_EventBackward_PowerAccumulatedKeys"];

      return MEMORY[0x2821F96F8]();
    }
  }

  return result;
}

void __30__PLSMCMetricsAgent_getTVKeys__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = qword_2811F3D80;
  qword_2811F3D80 = v2;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(*(a1 + 32) + 136);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 hasPrefix:{@"TV", v11}])
        {
          [qword_2811F3D80 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)getAllowedPowerDeliveryKeys
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PLSMCMetricsAgent_getAllowedPowerDeliveryKeys__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F3D98 != -1)
  {
    dispatch_once(&qword_2811F3D98, block);
  }

  return qword_2811F3D90;
}

uint64_t __48__PLSMCMetricsAgent_getAllowedPowerDeliveryKeys__block_invoke(uint64_t a1)
{
  qword_2811F3D90 = [*(a1 + 32) getAllowedKeys:@"PLSMCAgent_EventBackward_PowerDeliveryCLVRKeys"];

  return MEMORY[0x2821F96F8]();
}

- (id)getOSAccumListFrom:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__PLSMCMetricsAgent_getOSAccumListFrom___block_invoke;
  v10[3] = &unk_278259658;
  v11 = v4;
  v12 = self;
  v5 = qword_2811F3DA8;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&qword_2811F3DA8, v10);
  }

  v7 = qword_2811F3DA0;
  v8 = qword_2811F3DA0;

  return v7;
}

uint64_t __40__PLSMCMetricsAgent_getOSAccumListFrom___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = qword_2811F3DA0;
  qword_2811F3DA0 = v2;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PLSMCMetricsAgent_getOSAccumListFrom___block_invoke_2;
  v6[3] = &unk_278259C68;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [v4 enumerateObjectsUsingBlock:v6];
}

void __40__PLSMCMetricsAgent_getOSAccumListFrom___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) isKeyOSAccumSupported:v4])
  {
    [qword_2811F3DA0 addObject:v4];
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)isThermalPressureFanNoiseAboveThreshold
{
  v3 = [(PLSMCMetricsAgent *)self readSMCKey:@"mTPL"];
  v4 = [(PLSMCMetricsAgent *)self readSMCKey:@"fdBA"];
  v5 = v3 && [v3 integerValue] > 0 || v4 && objc_msgSend(v4, "integerValue") > 22;

  return v5;
}

- (BOOL)isThermalMitigationAboveThreshold
{
  v2 = [(PLSMCMetricsAgent *)self readSMCKey:@"mxTM"];
  v3 = v2;
  v4 = v2 && [v2 integerValue] > 7;

  return v4;
}

+ (BOOL)shouldModelDisplayPowerFromSMC
{
  if (qword_2811F3DB0 != -1)
  {
    dispatch_once(&qword_2811F3DB0, &__block_literal_global_215);
  }

  return byte_2811F3D31;
}

uint64_t __51__PLSMCMetricsAgent_shouldModelDisplayPowerFromSMC__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLDisplayClassIsOneOf:{1002057, 0}];
  byte_2811F3D31 = result;
  return result;
}

+ (BOOL)supportsSMC
{
  if ([MEMORY[0x277D3F1B8] isVirtualDevice])
  {
    v2 = PLLogSMCMetrics();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_ERROR, "SMC is not supported on virtual devices", v5, 2u);
    }

    v3 = 0;
  }

  else
  {
    if (qword_2811F3DB8 != -1)
    {
      dispatch_once(&qword_2811F3DB8, &__block_literal_global_219);
    }

    v3 = byte_2811F3D32;
  }

  return v3 & 1;
}

uint64_t __32__PLSMCMetricsAgent_supportsSMC__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  byte_2811F3D32 = result > 1001014;
  return result;
}

+ (id)parsePMUEvents:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if ([&unk_282C13F98 count])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [&unk_282C13F98 objectAtIndexedSubscript:v6];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:(a3 >> v5)];
      [v4 setObject:v8 forKeyedSubscript:v7];

      ++v6;
      v5 += 8;
    }

    while (v6 < [&unk_282C13F98 count]);
  }

  return v4;
}

+ (void)reportPMUEventsToCA:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![v3 unsignedLongLongValue])
  {
    if (byte_2811F3D33)
    {
      goto LABEL_10;
    }

    if (qword_2811F3DC0 != -1)
    {
      dispatch_once(&qword_2811F3DC0, &__block_literal_global_242);
    }
  }

  v4 = [v3 unsignedLongLongValue];
  v5 = [PLSMCMetricsAgent parsePMUEvents:v4];
  if (v5)
  {
    v6 = PLLogSMCMetrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "PMU events: %llu -> %@", buf, 0x16u);
    }

    v8 = v5;
    AnalyticsSendEventLazy();
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
}

void __41__PLSMCMetricsAgent_reportPMUEventsToCA___block_invoke()
{
  v0 = PLLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_21A4C6000, v0, OS_LOG_TYPE_INFO, "PMU events: pushed empty event", v1, 2u);
  }

  byte_2811F3D33 = 1;
}

@end