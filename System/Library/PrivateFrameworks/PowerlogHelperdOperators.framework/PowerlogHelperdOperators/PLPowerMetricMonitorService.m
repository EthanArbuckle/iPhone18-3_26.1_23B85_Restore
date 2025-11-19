@interface PLPowerMetricMonitorService
+ (void)load;
- (BOOL)_pidIsValid:(int)a3;
- (BOOL)_queryCurrentAudioState;
- (BOOL)_supportsGPUCoalitions;
- (BOOL)_supportsSMCDisplayPower;
- (BOOL)isMonitoringMetrics;
- (BOOL)isPluggedIn;
- (PLPowerMetricMonitorService)init;
- (double)_computeCPUCostWithCPUTicks:(id)a3;
- (double)_computeDisplayCostWithAvgRed:(int)a3 avgGreen:(int)a4 avgBlue:(int)a5;
- (double)_computeGPUCostWithGPUSec:(id)a3;
- (double)_computeLocationCostWithWifiCost:(int)a3 gpsCost:(int)a4 cellCost:(int)a5 skyhookCost:(int)a6;
- (double)_computeNetworkingCostWithWifiIn:(int)a3 wifiOut:(int)a4 cellIn:(int)a5 cellOut:(int)a6;
- (double)_getGPUTotalTime;
- (double)_parseAverageFPS:(id)a3;
- (double)batteryCapacity;
- (double)metricNormalizer;
- (id)_convertToWattsFromMilliwatts:(id)a3;
- (id)_getCurrentPlayingSessions;
- (id)collectMetricsWithTimeout:(double)a3;
- (timeval)lastRawSleepTime;
- (unint64_t)queryLastSleepTimeMCT;
- (unint64_t)queryLastWakeTimeMCT;
- (void)_accountingMetrics;
- (void)_agentDidUpdateWithEntryKey:(id)a3;
- (void)_calculateAccumSystemLoad:(id)a3;
- (void)_calculateAndStoreSleepDuration;
- (void)_cancelBrightnessTimer;
- (void)_cancelMetricCollectionTimeoutTimer;
- (void)_cancelMetricCollectionTimer;
- (void)_cleanUp;
- (void)_collectMetricsWithTimeout:(double)a3 completionHandler:(id)a4;
- (void)_computeEnergyScoreForProcess;
- (void)_getCurrentPlayingSessions;
- (void)_getGPUTotalTime;
- (void)_handleAudioServerConnectionDied:(id)a3;
- (void)_handleDisplayLayoutUpdate:(id)a3;
- (void)_handlePowerNotification:(unsigned int)a3 argument:(void *)a4;
- (void)_handleSessionPlayingDidChange:(id)a3;
- (void)_metricCollectionTimedOut;
- (void)_parseAMCSample:(id)a3;
- (void)_parseApplicationMetricsFromEntry:(id)a3;
- (void)_parseDisplayAPLMetricsFromEntry:(id)a3 cacheMetrics:(BOOL)a4;
- (void)_parseDisplayAZLMetricsFromEntry:(id)a3;
- (void)_parseDisplayBacklightPowerMetricsFromEntry:(id)a3;
- (void)_parseEnergyModelOrPMPMetricsFromSample:(id)a3 withSampleDuration:(double)a4 sourceChannel:(int64_t)a5;
- (void)_parseGasGaugeMetricsFromEntry:(id)a3;
- (void)_parseLocationMetricsFromEntry:(id)a3;
- (void)_parseProcessNetworkMetricsFromEntry:(id)a3;
- (void)_parseSMCMetricsFromEntry:(id)a3;
- (void)_parseWifiPowerMetricsFromEntry:(id)a3;
- (void)_postAgentNotificationWithProcess:(id)a3;
- (void)_queryCumulativeNetworkBytes;
- (void)_queryCurrentAudioState;
- (void)_registerNotificationWithAgent:(Class)a3 type:(id)a4 tableName:(id)a5 isProcessSpecific:(BOOL)a6 minRequestInterval:(double)a7 block:(id)a8;
- (void)_sampleCoalitions;
- (void)_sampleGPUTime;
- (void)_setUpAgents;
- (void)_setUpIOReporting;
- (void)_setUpSleepWakeMonitoring;
- (void)_setupAudioSessionMonitoring;
- (void)_setupBatteryMetrics;
- (void)_setupMetrics;
- (void)_startBrightnessTimer;
- (void)_startMetricCollectionTimeoutTimerWithTimeout:(double)a3 block:(id)a4;
- (void)_startMetricCollectionTimerWithInterval:(double)a3 block:(id)a4;
- (void)_tearDownAudioSessionMonitoring;
- (void)_tearDownSleepWakeMonitoring;
- (void)_updateAudioActiveMetrics;
- (void)_updateBatteryMetrics;
- (void)_updateDisplayMetrics;
- (void)_updateIOReportStats;
- (void)_updateMetricsWithThermalState;
- (void)addBrightnessSample;
- (void)addMonitoredProcessWithPID:(int)a3 error:(id *)a4;
- (void)addMonitoredProcessesWithPIDs:(id)a3 error:(id *)a4;
- (void)allClientsDidDisconnect;
- (void)disableAccounting;
- (void)enableAccounting;
- (void)initOperatorDependancies;
- (void)invalidateScreenStateUpdates;
- (void)removeMonitoredProcessWithPID:(int)a3;
- (void)setMetricCollectionTimerUpdateInterval:(double)a3;
- (void)setUpForMonitoring;
- (void)setUpScreenStateUpdates;
- (void)startMonitoring;
@end

@implementation PLPowerMetricMonitorService

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLPowerMetricMonitorService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLPowerMetricMonitorService)init
{
  if (+[PLUtilities isPowerlogHelperd])
  {
    v3 = 0;
  }

  else
  {
    v37.receiver = self;
    v37.super_class = PLPowerMetricMonitorService;
    v4 = [(PLOperator *)&v37 init];
    v5 = v4;
    if (v4)
    {
      v4->_isMonitoring = 0;
      v4->_isCollectingMetrics = 0;
      v4->_isReadyToMonitor = 0;
      v4->_startedSetUp = 0;
      v6 = [MEMORY[0x277D3A100] sharedInstance];
      metricMonitorService = v5->_metricMonitorService;
      v5->_metricMonitorService = v6;

      [(PPSMetricMonitorService *)v5->_metricMonitorService setDelegate:v5];
      v8 = [MEMORY[0x277CBEB38] dictionary];
      trackedProcesses = v5->_trackedProcesses;
      v5->_trackedProcesses = v8;

      v10 = [MEMORY[0x277CBEB38] dictionary];
      screenState = v5->_screenState;
      v5->_screenState = v10;

      v12 = objc_alloc_init(MEMORY[0x277D3A0E8]);
      metrics = v5->_metrics;
      v5->_metrics = v12;

      v14 = objc_alloc_init(MEMORY[0x277D3A0E8]);
      cachedMetrics = v5->_cachedMetrics;
      v5->_cachedMetrics = v14;

      v16 = [MEMORY[0x277CBEAA8] monotonicDate];
      objc_storeStrong(&v5->_currQueryTime, v16);
      lastQueryTime = v5->_lastQueryTime;
      v5->_lastQueryTime = v16;
      v18 = v16;

      v5->_currQueryCount = 0;
      v5->_lastQueryCount = 0;
      v19 = [MEMORY[0x277CBEB58] set];
      systemMetricEntryKeys = v5->_systemMetricEntryKeys;
      v5->_systemMetricEntryKeys = v19;

      v21 = [MEMORY[0x277CBEB58] set];
      processSpecificMetricEntryKeys = v5->_processSpecificMetricEntryKeys;
      v5->_processSpecificMetricEntryKeys = v21;

      v23 = [MEMORY[0x277CBEB58] set];
      entryKeysToCollect = v5->_entryKeysToCollect;
      v5->_entryKeysToCollect = v23;

      v25 = [MEMORY[0x277CBEB58] set];
      entryKeysRequested = v5->_entryKeysRequested;
      v5->_entryKeysRequested = v25;

      v27 = [MEMORY[0x277CBEB58] set];
      entryKeysCollected = v5->_entryKeysCollected;
      v5->_entryKeysCollected = v27;

      v29 = [MEMORY[0x277CBEB38] dictionary];
      entryKeyToEntryInfo = v5->_entryKeyToEntryInfo;
      v5->_entryKeyToEntryInfo = v29;

      v31 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v32 = dispatch_queue_create("com.apple.PerfPowerMetricMonitor.monitorQueue", v31);
      monitorQueue = v5->_monitorQueue;
      v5->_monitorQueue = v32;

      v34 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"DisplayCost", @"CPUCost", @"NetworkCost", @"LocationCost", @"CurrentApplicationState", @"GPUCost", @"CurrentThermalState", @"InducedThermalState", 0}];
      energyScoringEntities = v5->_energyScoringEntities;
      v5->_energyScoringEntities = v34;

      v5->_accumSystemLoadCount = 0.0;
      v5->_accumSystemLoad = 0.0;
      v5->_networkCumulativeCount = 0;
      v5->_gpuTotalTime = 0.0;
      v5->_prevGpuTotalTime = 0.0;
      v5->_accountingEnabled = 0;
      v5->_totalCell = 0.0;
      v5->_totalWiFi = 0.0;
      v5->_prevCumulativeWiFiOutBytes = 0;
      v5->_prevCumulativeWiFiInBytes = 0;
      v5->_prevCumulativeCellularOutBytes = 0;
      v5->_prevCumulativeCellularInBytes = 0;
      v5->_receivedNetworkUpdate = 0;
      v5->_rootDomainConnect = 0;
      v5->_pmNotifier = 0;
      v5->_systemPowerPortRef = 0;
      v5->_lastSleepTime = 0;
      v5->_lastSleepDuration = 0;
      v5->_lastWakeTime = 0;
      v5->_currentPowerState = 0;
    }

    self = v5;
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v2 = [(PLPowerMetricMonitorService *)self metricMonitorService];
  [v2 startXPCListener];
}

- (void)_cleanUp
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  [(PLPowerMetricMonitorService *)self setIsMonitoring:0];
  [(PLPowerMetricMonitorService *)self setIsReadyToMonitor:0];
  [(PLPowerMetricMonitorService *)self setStartedSetUp:0];
  v4 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysToCollect:v4];

  v5 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysRequested:v5];

  v6 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysCollected:v6];

  v7 = [(PLPowerMetricMonitorService *)self trackedProcesses];
  [v7 removeAllObjects];

  v8 = [(PLPowerMetricMonitorService *)self mainDisplayMonitor];

  if (v8)
  {
    v9 = [(PLPowerMetricMonitorService *)self mainDisplayMonitor];
    [v9 invalidate];

    [(PLPowerMetricMonitorService *)self setMainDisplayMonitor:0];
  }

  v10 = [(PLPowerMetricMonitorService *)self screenState];
  [v10 removeAllObjects];

  [(PLPowerMetricMonitorService *)self _tearDownSleepWakeMonitoring];
  iokitPowerSource = self->_iokitPowerSource;
  self->_iokitPowerSource = 0;

  [(PLPowerMetricMonitorService *)self setLastSleepTime:0];
  [(PLPowerMetricMonitorService *)self setLastSleepDuration:0];
  [(PLPowerMetricMonitorService *)self setLastWakeTime:0];

  [(PLPowerMetricMonitorService *)self setCurrentPowerState:0];
}

- (BOOL)isMonitoringMetrics
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PLPowerMetricMonitorService_isMonitoringMetrics__block_invoke;
  v5[3] = &unk_279A5C3D0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __50__PLPowerMetricMonitorService_isMonitoringMetrics__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isMonitoring];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setUpForMonitoring
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__PLPowerMetricMonitorService_setUpForMonitoring__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStartedSetUp:1];
  v2 = [*(a1 + 32) monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PLPowerMetricMonitorService_setUpForMonitoring__block_invoke_2;
  block[3] = &unk_279A5BDC0;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

uint64_t __49__PLPowerMetricMonitorService_setUpForMonitoring__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setUpAgents];
  [*(a1 + 32) _setUpIOReporting];
  [*(a1 + 32) _setUpSleepWakeMonitoring];
  [*(a1 + 32) _setupBatteryMetrics];
  v2 = *(a1 + 32);

  return [v2 setIsReadyToMonitor:1];
}

- (void)setUpScreenStateUpdates
{
  v3 = [MEMORY[0x277D0AD18] configurationForDefaultMainDisplayMonitor];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PLPowerMetricMonitorService_setUpScreenStateUpdates__block_invoke;
  v6[3] = &unk_279A5C420;
  v6[4] = self;
  [v3 setTransitionHandler:v6];
  v4 = [MEMORY[0x277D0AD10] monitorWithConfiguration:v3];
  mainDisplayMonitor = self->_mainDisplayMonitor;
  self->_mainDisplayMonitor = v4;
}

void __54__PLPowerMetricMonitorService_setUpScreenStateUpdates__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) monitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__PLPowerMetricMonitorService_setUpScreenStateUpdates__block_invoke_2;
  v7[3] = &unk_279A5C3F8;
  v7[4] = *(a1 + 32);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)invalidateScreenStateUpdates
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PLPowerMetricMonitorService_invalidateScreenStateUpdates__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __59__PLPowerMetricMonitorService_invalidateScreenStateUpdates__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mainDisplayMonitor];

  if (v2)
  {
    v3 = [*(a1 + 32) mainDisplayMonitor];
    [v3 invalidate];

    [*(a1 + 32) setMainDisplayMonitor:0];
  }

  v4 = [*(a1 + 32) screenState];
  [v4 removeAllObjects];
}

- (void)_setupMetrics
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__PLPowerMetricMonitorService__setupMetrics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) metrics];
  v7 = [v6 processMetrics];
  v8 = [v7 objectForKeyedSubscript:v24];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D3A110]);
    [v9 setPid:{objc_msgSend(v5, "pid")}];
    v10 = [v5 name];
    [v9 setProcessName:v10];

    v11 = [v5 bundleId];
    [v9 setBundleID:v11];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "coalitionID")}];
    [v9 setCoalitionID:v12];

    v13 = [*(a1 + 32) metrics];
    v14 = [v13 processMetrics];
    v15 = [v14 mutableCopy];

    [v15 setObject:v9 forKeyedSubscript:v24];
    v16 = [*(a1 + 32) metrics];
    [v16 setProcessMetrics:v15];

    v17 = MEMORY[0x277D3A108];
    v18 = [v5 applicationState];
    v19 = [v5 lastActiveStart];
    v20 = [v17 sampleWithValue:v18 timestamp:v19];
    v21 = [*(a1 + 32) metrics];
    v22 = [v21 processMetrics];
    v23 = [v22 objectForKeyedSubscript:v24];
    [v23 setApplicationState:v20];
  }
}

- (void)startMonitoring
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLPowerMetricMonitorService_startMonitoring__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __46__PLPowerMetricMonitorService_startMonitoring__block_invoke(uint64_t a1)
{
  v2 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_DEFAULT, "Starting to monitor", buf, 2u);
  }

  if ([*(a1 + 32) isMonitoring])
  {
    v3 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __46__PLPowerMetricMonitorService_startMonitoring__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) setIsMonitoring:1];
    v4 = PLLogPowerMetricMonitor();
    if (os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_25EE51000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "startMonitoring", &unk_25F04A375, v7, 2u);
    }

    v5 = [*(a1 + 32) entryKeysToCollect];
    v6 = [*(a1 + 32) systemMetricEntryKeys];
    [v5 unionSet:v6];

    [*(a1 + 32) _setupMetrics];
  }
}

- (void)allClientsDidDisconnect
{
  v3 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_DEFAULT, "All clients disconnected", buf, 2u);
  }

  v4 = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PLPowerMetricMonitorService_allClientsDidDisconnect__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __54__PLPowerMetricMonitorService_allClientsDidDisconnect__block_invoke(uint64_t a1)
{
  v2 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__PLPowerMetricMonitorService_allClientsDidDisconnect__block_invoke_cold_1();
  }

  [*(a1 + 32) _cancelMetricCollectionTimer];
  [*(a1 + 32) _cancelBrightnessTimer];
  [*(a1 + 32) _cancelMetricCollectionTimeoutTimer];
  [*(a1 + 32) _cleanUp];
  v3 = [MEMORY[0x277D3F1D8] sharedManager];
  [v3 signalInactive];
}

- (void)enableAccounting
{
  [(PLPowerMetricMonitorService *)self setUpScreenStateUpdates];

  [(PLPowerMetricMonitorService *)self setAccountingEnabled:1];
}

- (void)disableAccounting
{
  [(PLPowerMetricMonitorService *)self setAccountingEnabled:0];

  [(PLPowerMetricMonitorService *)self invalidateScreenStateUpdates];
}

- (void)_accountingMetrics
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__PLPowerMetricMonitorService__accountingMetrics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 screenState];
  v8 = [v6 bundleId];

  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = MEMORY[0x277D3A108];
    v11 = MEMORY[0x277CCABB0];
    v32 = [*(a1 + 32) metrics];
    v31 = [v32 displayPower];
    [v31 doubleValue];
    v13 = v12;
    [v9 doubleValue];
    v15 = [v11 numberWithDouble:v13 * v14];
    v16 = [*(a1 + 32) metrics];
    v17 = [v16 displayPower];
    v18 = [v17 timestamp];
    v19 = [v10 sampleWithValue:v15 timestamp:v18];
    v20 = [*(a1 + 32) metrics];
    v21 = [v20 processMetrics];
    v22 = [v21 objectForKeyedSubscript:v33];
    [v22 setDisplayPower:v19];

    v23 = MEMORY[0x277D3A108];
    v24 = [*(a1 + 32) metrics];
    v25 = [v24 displayPower];
    v26 = [v25 timestamp];
    v27 = [v23 sampleWithValue:v9 timestamp:v26];
    v28 = [*(a1 + 32) metrics];
    v29 = [v28 processMetrics];
    v30 = [v29 objectForKeyedSubscript:v33];
    [v30 setWeightOnScreen:v27];
  }
}

- (id)collectMetricsWithTimeout:(double)a3
{
  v5 = dispatch_semaphore_create(0);
  v6 = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke;
  block[3] = &unk_279A5C470;
  v12 = a3;
  block[4] = self;
  v11 = v5;
  v7 = v5;
  dispatch_sync(v6, block);

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [(PLPowerMetricMonitorService *)self metrics];

  return v8;
}

void __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke(uint64_t a1)
{
  v2 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_cold_1(a1);
  }

  if ([*(a1 + 32) isMonitoring])
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_273;
    v6[3] = &unk_279A5C3F8;
    v6[4] = v3;
    v7 = *(a1 + 40);
    [v3 _collectMetricsWithTimeout:v6 completionHandler:v4];
  }

  else
  {
    v5 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_cold_2();
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }
}

intptr_t __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_273(uint64_t a1)
{
  v2 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_273_cold_1();
  }

  v3 = [*(a1 + 32) trackedProcesses];
  v4 = [v3 count];

  if (v4)
  {
    [*(a1 + 32) _computeEnergyScoreForProcess];
  }

  [*(a1 + 32) _updateDisplayMetrics];
  if ([*(a1 + 32) accountingEnabled])
  {
    [*(a1 + 32) _accountingMetrics];
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)addMonitoredProcessWithPID:(int)a3 error:(id *)a4
{
  v7 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService addMonitoredProcessWithPID:error:];
  }

  v8 = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke;
  block[3] = &unk_279A5C498;
  v10 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(v8, block);
}

void __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 48);
  if ([*(a1 + 32) _pidIsValid:*(a1 + 48)])
  {
    v3 = [*(a1 + 32) trackedProcesses];
    if (!v3)
    {
      goto LABEL_4;
    }

    v4 = v3;
    v5 = [*(a1 + 32) trackedProcesses];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
LABEL_4:
      v8 = [[PLProcessMetadata alloc] initWithPid:*(a1 + 48)];
      v9 = [*(a1 + 32) trackedProcesses];
      v10 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
      [v9 setObject:v8 forKeyedSubscript:v10];

      v11 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke_cold_2();
      }

      v12 = *(a1 + 32);
      v13 = [v12 trackedProcesses];
      v14 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
      v15 = [v13 objectForKeyedSubscript:v14];
      [v12 _postAgentNotificationWithProcess:v15];

      v16 = [*(a1 + 32) entryKeysToCollect];
      v17 = [*(a1 + 32) processSpecificMetricEntryKeys];
      [v16 unionSet:v17];

      goto LABEL_11;
    }
  }

  else
  {
    v18 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke_cold_1(v2);
    }

    if (*(a1 + 40))
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D3A118];
      v22 = *MEMORY[0x277CCA450];
      v23[0] = @"Invalid PID";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      **(a1 + 40) = [v19 errorWithDomain:v20 code:4 userInfo:v8];
LABEL_11:
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addMonitoredProcessesWithPIDs:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) intValue];
        v16 = 0;
        [(PLPowerMetricMonitorService *)self addMonitoredProcessWithPID:v11 error:&v16];
        v12 = v16;
        if (v12)
        {
          v13 = PLLogPowerMetricMonitor();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(PLPowerMetricMonitorService *)v21 addMonitoredProcessesWithPIDs:v12 error:&v22, v13];
          }

          v14 = v12;
          *a4 = v12;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeMonitoredProcessWithPID:(int)a3
{
  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke;
  v6[3] = &unk_279A5C4C0;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

void __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke(uint64_t a1)
{
  v2 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) trackedProcesses];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) trackedProcesses];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    [v6 setObject:0 forKeyedSubscript:v7];
  }

  else
  {
    v6 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke_cold_2((a1 + 40));
    }
  }

  v8 = [*(a1 + 32) trackedProcesses];
  v9 = [v8 count];

  if (!v9)
  {
    v10 = [*(a1 + 32) entryKeysToCollect];
    v11 = [*(a1 + 32) processSpecificMetricEntryKeys];
    [v10 minusSet:v11];
  }
}

- (double)batteryCapacity
{
  if (batteryCapacity_onceToken != -1)
  {
    [PLPowerMetricMonitorService batteryCapacity];
  }

  return *&batteryCapacity_batteryCapacity;
}

uint64_t __46__PLPowerMetricMonitorService_batteryCapacity__block_invoke()
{
  result = +[PLUtilities defaultBatteryEnergyCapacity];
  batteryCapacity_batteryCapacity = v1;
  return result;
}

- (double)metricNormalizer
{
  if (metricNormalizer_onceToken != -1)
  {
    [PLPowerMetricMonitorService metricNormalizer];
  }

  return *&metricNormalizer_val;
}

uint64_t __47__PLPowerMetricMonitorService_metricNormalizer__block_invoke()
{
  result = [MEMORY[0x277D3F208] isDeviceClass:102030];
  if (result)
  {
    goto LABEL_2;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102031];
  if (result)
  {
    v1 = 3.080002;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102036];
  if (result)
  {
    goto LABEL_2;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102037];
  if (result)
  {
    v1 = 2.940002;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102040];
  if (result)
  {
    v1 = 2.600006;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102041];
  if (result)
  {
    v1 = 2.649994;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102045];
  v1 = 3.300003;
  if (result)
  {
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102046];
  if (result)
  {
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102049];
  if (result)
  {
    v1 = 2.729996;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102050];
  if (result)
  {
    goto LABEL_2;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102054];
  if (result)
  {
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102055];
  v1 = 3.349991;
  if (result)
  {
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102060];
  v2 = 0x400666601BC98A22;
  if (result)
  {
LABEL_21:
    v1 = *&v2;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102061];
  if (result)
  {
LABEL_2:
    v1 = 3.0;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102058];
  if (result)
  {
    v1 = 3.049988;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102059];
  if (result)
  {
    v1 = 3.599991;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102032];
  if (result)
  {
    v1 = 2.800003;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102035];
  v1 = 3.0;
  if (result)
  {
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102039];
  if (result)
  {
LABEL_31:
    v1 = 2.699997;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102043];
  if (result)
  {
    v1 = 2.599991;
    goto LABEL_5;
  }

  result = [MEMORY[0x277D3F208] isDeviceClass:102044];
  v1 = 2.649994;
  if ((result & 1) == 0)
  {
    result = [MEMORY[0x277D3F208] isDeviceClass:102047];
    v1 = 3.100006;
    if ((result & 1) == 0)
    {
      result = [MEMORY[0x277D3F208] isDeviceClass:102048];
      if ((result & 1) == 0)
      {
        result = [MEMORY[0x277D3F208] isDeviceClass:102052];
        v1 = 3.349991;
        if ((result & 1) == 0)
        {
          result = [MEMORY[0x277D3F208] isDeviceClass:102053];
          v1 = 3.599991;
          if ((result & 1) == 0)
          {
            result = [MEMORY[0x277D3F208] isDeviceClass:102034];
            if (result)
            {
              goto LABEL_31;
            }

            result = [MEMORY[0x277D3F208] isDeviceClass:102038];
            v1 = 2.699997;
            if ((result & 1) == 0)
            {
              result = [MEMORY[0x277D3F208] isDeviceClass:102033];
              v1 = 2.0;
              if ((result & 1) == 0)
              {
                result = [MEMORY[0x277D3F208] isDeviceClass:102042];
                if (result)
                {
                  v1 = 2.7;
                  goto LABEL_5;
                }

                result = [MEMORY[0x277D3F208] isDeviceClass:102056];
                v1 = 2.799988;
                if ((result & 1) == 0)
                {
                  result = [MEMORY[0x277D3F208] isDeviceClass:100050];
                  v1 = 3.2;
                  if ((result & 1) == 0)
                  {
                    result = [MEMORY[0x277D3F208] isDeviceClass:100051];
                    if ((result & 1) == 0)
                    {
                      result = [MEMORY[0x277D3F208] isDeviceClass:100062];
                      v1 = 3.199997;
                      if ((result & 1) == 0)
                      {
                        result = [MEMORY[0x277D3F208] isDeviceClass:100063];
                        if ((result & 1) == 0)
                        {
                          result = [MEMORY[0x277D3F208] isDeviceClass:100068];
                          if ((result & 1) == 0)
                          {
                            result = [MEMORY[0x277D3F208] isDeviceClass:100069];
                            if ((result & 1) == 0)
                            {
                              result = [MEMORY[0x277D3F208] isDeviceClass:100086];
                              v1 = 4.0;
                              if ((result & 1) == 0)
                              {
                                result = [MEMORY[0x277D3F208] isDeviceClass:100087];
                                if ((result & 1) == 0)
                                {
                                  result = [MEMORY[0x277D3F208] isDeviceClass:100042];
                                  v1 = 5.0;
                                  if ((result & 1) == 0)
                                  {
                                    result = [MEMORY[0x277D3F208] isDeviceClass:100043];
                                    if ((result & 1) == 0)
                                    {
                                      result = [MEMORY[0x277D3F208] isDeviceClass:100052];
                                      if ((result & 1) == 0)
                                      {
                                        result = [MEMORY[0x277D3F208] isDeviceClass:100053];
                                        if ((result & 1) == 0)
                                        {
                                          result = [MEMORY[0x277D3F208] isDeviceClass:100066];
                                          v1 = 6.249985;
                                          if ((result & 1) == 0)
                                          {
                                            result = [MEMORY[0x277D3F208] isDeviceClass:100067];
                                            if ((result & 1) == 0)
                                            {
                                              result = [MEMORY[0x277D3F208] isDeviceClass:100074];
                                              v2 = 0x401266640A6B93CDLL;
                                              if (result)
                                              {
                                                goto LABEL_21;
                                              }

                                              result = [MEMORY[0x277D3F208] isDeviceClass:100075];
                                              if (result)
                                              {
                                                v1 = 5.299988;
                                                goto LABEL_5;
                                              }

                                              result = [MEMORY[0x277D3F208] isDeviceClass:100076];
                                              if (result)
                                              {
LABEL_63:
                                                v1 = 5.5;
                                                goto LABEL_5;
                                              }

                                              result = [MEMORY[0x277D3F208] isDeviceClass:100077];
                                              if (result)
                                              {
                                                v1 = 5.699997;
                                                goto LABEL_5;
                                              }

                                              result = [MEMORY[0x277D3F208] isDeviceClass:100088];
                                              v1 = 5.399994;
                                              if ((result & 1) == 0)
                                              {
                                                result = [MEMORY[0x277D3F208] isDeviceClass:100089];
                                                if ((result & 1) == 0)
                                                {
                                                  result = [MEMORY[0x277D3F208] isDeviceClass:100090];
                                                  v1 = 5.899994;
                                                  if ((result & 1) == 0)
                                                  {
                                                    result = [MEMORY[0x277D3F208] isDeviceClass:100091];
                                                    if ((result & 1) == 0)
                                                    {
                                                      result = [MEMORY[0x277D3F208] isDeviceClass:100040];
                                                      v1 = 3.4;
                                                      if ((result & 1) == 0)
                                                      {
                                                        result = [MEMORY[0x277D3F208] isDeviceClass:100041];
                                                        if ((result & 1) == 0)
                                                        {
                                                          result = [MEMORY[0x277D3F208] isDeviceClass:100064];
                                                          v1 = 3.448929;
                                                          if ((result & 1) == 0)
                                                          {
                                                            result = [MEMORY[0x277D3F208] isDeviceClass:100065];
                                                            if ((result & 1) == 0)
                                                            {
                                                              result = [MEMORY[0x277D3F208] isDeviceClass:100084];
                                                              v1 = 3.449997;
                                                              if ((result & 1) == 0)
                                                              {
                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100085];
                                                                if ((result & 1) == 0)
                                                                {
                                                                  result = [MEMORY[0x277D3F208] isDeviceClass:100046];
                                                                  v1 = 4.2;
                                                                  if ((result & 1) == 0)
                                                                  {
                                                                    result = [MEMORY[0x277D3F208] isDeviceClass:100047];
                                                                    if ((result & 1) == 0)
                                                                    {
                                                                      result = [MEMORY[0x277D3F208] isDeviceClass:100048];
                                                                      if ((result & 1) == 0)
                                                                      {
                                                                        result = [MEMORY[0x277D3F208] isDeviceClass:100049];
                                                                        if ((result & 1) == 0)
                                                                        {
                                                                          result = [MEMORY[0x277D3F208] isDeviceClass:100054];
                                                                          v1 = 4.199997;
                                                                          if ((result & 1) == 0)
                                                                          {
                                                                            result = [MEMORY[0x277D3F208] isDeviceClass:100056];
                                                                            if ((result & 1) == 0)
                                                                            {
                                                                              result = [MEMORY[0x277D3F208] isDeviceClass:100057];
                                                                              if ((result & 1) == 0)
                                                                              {
                                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100058];
                                                                                if (result)
                                                                                {
                                                                                  v1 = 4.6;
                                                                                  goto LABEL_5;
                                                                                }

                                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100060];
                                                                                if (result)
                                                                                {
                                                                                  goto LABEL_21;
                                                                                }

                                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100061];
                                                                                v1 = 4.599991;
                                                                                if (result)
                                                                                {
                                                                                  goto LABEL_5;
                                                                                }

                                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100070];
                                                                                if (result)
                                                                                {
                                                                                  goto LABEL_63;
                                                                                }

                                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100071];
                                                                                v1 = 5.5;
                                                                                if ((result & 1) == 0)
                                                                                {
                                                                                  result = [MEMORY[0x277D3F208] isDeviceClass:100072];
                                                                                  v1 = 5.599991;
                                                                                  if ((result & 1) == 0)
                                                                                  {
                                                                                    result = [MEMORY[0x277D3F208] isDeviceClass:100073];
                                                                                    if ((result & 1) == 0)
                                                                                    {
                                                                                      result = [MEMORY[0x277D3F208] isDeviceClass:100080];
                                                                                      v1 = 8.599991;
                                                                                      if ((result & 1) == 0)
                                                                                      {
                                                                                        result = [MEMORY[0x277D3F208] isDeviceClass:100081];
                                                                                        if ((result & 1) == 0)
                                                                                        {
                                                                                          result = [MEMORY[0x277D3F208] isDeviceClass:100078];
                                                                                          v1 = 7.799988;
                                                                                          if ((result & 1) == 0)
                                                                                          {
                                                                                            result = [MEMORY[0x277D3F208] isDeviceClass:100079];
                                                                                            if ((result & 1) == 0)
                                                                                            {
                                                                                              result = [MEMORY[0x277D3F208] isDeviceClass:100092];
                                                                                              v1 = 11.0;
                                                                                              if ((result & 1) == 0)
                                                                                              {
                                                                                                result = [MEMORY[0x277D3F208] isDeviceClass:100093];
                                                                                                if ((result & 1) == 0)
                                                                                                {
                                                                                                  result = [MEMORY[0x277D3F208] isDeviceClass:100094];
                                                                                                  v1 = 11.5;
                                                                                                  if ((result & 1) == 0)
                                                                                                  {
                                                                                                    result = [MEMORY[0x277D3F208] isDeviceClass:100095];
                                                                                                    if (result)
                                                                                                    {
                                                                                                      v1 = 11.5;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v1 = 3.0;
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_5:
  metricNormalizer_val = *&v1;
  return result;
}

- (void)addBrightnessSample
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PLPowerMetricMonitorService *)self brightnessSystemClient];
  v17 = [v4 copyPropertyForKey:@"DisplayBrightness"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v17 objectForKeyedSubscript:@"NitsPhysical"];
    [v5 doubleValue];
    v7 = v6;
    [(PLPowerMetricMonitorService *)self brightness];
    [(PLPowerMetricMonitorService *)self setBrightness:v7 + v8];

    v9 = [v17 objectForKeyedSubscript:@"EDRHeadroom"];
    [v9 doubleValue];
    v11 = v10;
    [(PLPowerMetricMonitorService *)self edrHeadroom];
    [(PLPowerMetricMonitorService *)self setEdrHeadroom:v11 + v12];

    v13 = [v17 objectForKeyedSubscript:@"Brightness"];
    [v13 doubleValue];
    v15 = v14;
    [(PLPowerMetricMonitorService *)self brightnessSum];
    [(PLPowerMetricMonitorService *)self setBrightnessSum:v15 + v16];

    [(PLPowerMetricMonitorService *)self setSampleCount:[(PLPowerMetricMonitorService *)self sampleCount]+ 1];
  }
}

- (void)_setUpAgents
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  if (+[PLSMCAgent supportsBasicSMC])
  {
    v4 = objc_opt_class();
    v5 = *MEMORY[0x277D3F5E8];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke;
    v31[3] = &unk_279A5C4E8;
    v31[4] = self;
    v6 = v31;
  }

  else
  {
    v4 = objc_opt_class();
    v5 = *MEMORY[0x277D3F5E8];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_2;
    v30[3] = &unk_279A5C4E8;
    v30[4] = self;
    v6 = v30;
  }

  [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v4 type:v5 tableName:@"MetricMonitorInstantKeys" isProcessSpecific:0 minRequestInterval:v6 block:0.0];
  v7 = objc_alloc_init(MEMORY[0x277CFD390]);
  brightnessSystemClient = self->_brightnessSystemClient;
  self->_brightnessSystemClient = v7;

  v9 = objc_opt_class();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_3;
  v29[3] = &unk_279A5C4E8;
  v29[4] = self;
  [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v9 type:v5 tableName:@"MetricMonitorInstantKeys" isProcessSpecific:0 minRequestInterval:v29 block:1.0];
  [(PLPowerMetricMonitorService *)self _setupAudioSessionMonitoring];
  v10 = [MEMORY[0x277D3F208] hasCapability:0];
  v11 = MEMORY[0x277D3F5C8];
  if ((v10 & 1) != 0 || [MEMORY[0x277D3F208] hasCapability:8])
  {
    v12 = [MEMORY[0x277D3F208] hasCapability:8];
    v13 = objc_opt_class();
    v14 = *v11;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_4;
    v28[3] = &unk_279A5C510;
    v28[4] = self;
    *&v28[5] = v12;
    [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v13 type:v14 tableName:@"APLStats" isProcessSpecific:0 minRequestInterval:v28 block:v12];
    v15 = *MEMORY[0x277D3F5D0];
  }

  else
  {
    v16 = objc_opt_class();
    v15 = *MEMORY[0x277D3F5D0];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_5;
    v27[3] = &unk_279A5C4E8;
    v27[4] = self;
    [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v16 type:v15 tableName:@"DisplayBacklight" isProcessSpecific:0 minRequestInterval:v27 block:0.0];
  }

  v17 = objc_opt_class();
  v18 = *MEMORY[0x277D3F5D8];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_6;
  v26[3] = &unk_279A5C4E8;
  v26[4] = self;
  [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v17 type:v18 tableName:@"UsageDiff" isProcessSpecific:1 minRequestInterval:v26 block:5.0];
  v19 = objc_opt_class();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_7;
  v25[3] = &unk_279A5C4E8;
  v25[4] = self;
  [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v19 type:v5 tableName:@"ClientStatus" isProcessSpecific:1 minRequestInterval:v25 block:0.0];
  v20 = objc_opt_class();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_8;
  v24[3] = &unk_279A5C4E8;
  v24[4] = self;
  [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v20 type:v15 tableName:@"Application" isProcessSpecific:1 minRequestInterval:v24 block:0.0];
  if ([MEMORY[0x277D3F208] hasCapability:8])
  {
    v21 = objc_opt_class();
    v22 = *v11;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_9;
    v23[3] = &unk_279A5C4E8;
    v23[4] = self;
    [(PLPowerMetricMonitorService *)self _registerNotificationWithAgent:v21 type:v22 tableName:@"AZLStats" isProcessSpecific:0 minRequestInterval:v23 block:1.0];
  }
}

void __43__PLPowerMetricMonitorService__setUpAgents__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setReceivedNetworkUpdate:1];
  [*(a1 + 32) _queryCumulativeNetworkBytes];
  [*(a1 + 32) _parseProcessNetworkMetricsFromEntry:v4];
}

- (void)_registerNotificationWithAgent:(Class)a3 type:(id)a4 tableName:(id)a5 isProcessSpecific:(BOOL)a6 minRequestInterval:(double)a7 block:(id)a8
{
  v9 = a6;
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v17);

  v18 = [(objc_class *)a3 entryKeyForType:v16 andName:v15];

  v19 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _registerNotificationWithAgent:type:tableName:isProcessSpecific:minRequestInterval:block:];
  }

  v20 = objc_alloc(MEMORY[0x277D3F1A8]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __120__PLPowerMetricMonitorService__registerNotificationWithAgent_type_tableName_isProcessSpecific_minRequestInterval_block___block_invoke;
  v27[3] = &unk_279A5C560;
  v27[4] = self;
  v21 = v14;
  v29 = v21;
  v22 = v18;
  v28 = v22;
  v23 = [v20 initWithOperator:self forEntryKey:v22 withBlock:v27];
  v24 = [[PLEntryInfo alloc] initWithNotificationComposition:v23 minRequestInterval:a7];
  v25 = [(PLPowerMetricMonitorService *)self entryKeyToEntryInfo];
  [v25 setObject:v24 forKeyedSubscript:v22];

  if (v9)
  {
    [(PLPowerMetricMonitorService *)self processSpecificMetricEntryKeys];
  }

  else
  {
    [(PLPowerMetricMonitorService *)self systemMetricEntryKeys];
  }
  v26 = ;
  [v26 addObject:v22];
}

void __120__PLPowerMetricMonitorService__registerNotificationWithAgent_type_tableName_isProcessSpecific_minRequestInterval_block___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] monitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __120__PLPowerMetricMonitorService__registerNotificationWithAgent_type_tableName_isProcessSpecific_minRequestInterval_block___block_invoke_2;
  v6[3] = &unk_279A5C538;
  v6[4] = a1[4];
  v7 = v3;
  v9 = a1[6];
  v8 = a1[5];
  v5 = v3;
  dispatch_async(v4, v6);
}

void __120__PLPowerMetricMonitorService__registerNotificationWithAgent_type_tableName_isProcessSpecific_minRequestInterval_block___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isCollectingMetrics])
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:@"entry"];
    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) _agentDidUpdateWithEntryKey:*(a1 + 48)];
  }

  else
  {
    v2 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __120__PLPowerMetricMonitorService__registerNotificationWithAgent_type_tableName_isProcessSpecific_minRequestInterval_block___block_invoke_2_cold_1(a1);
    }
  }
}

- (void)_postAgentNotificationWithProcess:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [v3 bundleId];

  if (v7)
  {
    v8 = [v3 bundleId];
    [v4 addObject:v8];

    v9 = [v3 bundleId];
    v10 = v6;
  }

  else
  {
    v11 = [v3 name];

    if (!v11)
    {
      goto LABEL_6;
    }

    v9 = [v3 name];
    v10 = v4;
  }

  [v10 addObject:v9];

LABEL_6:
  v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "pid")}];
  [v5 addObject:v12];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v24 = @"entry";
  v25[0] = v4;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  [v13 postNotificationName:@"PLProcessNetworkAgent.addProcessesOfInterest" object:0 userInfo:v14];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  v22 = @"entry";
  v23 = v5;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [v15 postNotificationName:@"PLProcessMonitorAgent.addProcessesOfInterest" object:0 userInfo:v16];

  if (v6)
  {
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = @"entry";
    v21 = v6;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [v17 postNotificationName:@"PLLocationAgent.addProcessesOfInterest" object:0 userInfo:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_setUpIOReporting
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"Energy Model" andSubGroup:0];
  [(PLPowerMetricMonitorService *)self setEnergyModelStats:v4];

  v5 = [(PLPowerMetricMonitorService *)self energyModelStats];

  if (!v5)
  {
    v6 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _setUpIOReporting];
    }
  }

  if ([MEMORY[0x277D3F208] hasDCP])
  {
    v7 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"DCP" andSubGroup:@"swap"];
    [(PLPowerMetricMonitorService *)self setDcpSwapStats:v7];

    v8 = [(PLPowerMetricMonitorService *)self dcpSwapStats];

    if (!v8)
    {
      v9 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _setUpIOReporting];
      }
    }

    v10 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"DCP" andSubGroup:@"scanout"];
    [(PLPowerMetricMonitorService *)self setDcpScanoutStats:v10];

    v11 = [(PLPowerMetricMonitorService *)self dcpScanoutStats];

    if (!v11)
    {
      v12 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _setUpIOReporting];
      }
    }

    v13 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"DCP" andSubGroup:@"display stats"];
    [(PLPowerMetricMonitorService *)self setDcpDisplayStats:v13];

    v14 = [(PLPowerMetricMonitorService *)self dcpDisplayStats];

    if (!v14)
    {
      v15 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _setUpIOReporting];
      }
    }
  }

  if (+[PLPowerMetricMonitorService deviceUsesPMPCounters])
  {
    v16 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"PMP" andSubGroup:@"Energy Counters"];
    [(PLPowerMetricMonitorService *)self setPmpCountersStats:v16];

    v17 = [(PLPowerMetricMonitorService *)self pmpCountersStats];

    if (!v17)
    {
      v18 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _setUpIOReporting];
      }
    }
  }

  v19 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"AMC Stats" andSubGroup:@"Perf Counters"];
  [(PLPowerMetricMonitorService *)self setAmcStats:v19];

  v20 = [(PLPowerMetricMonitorService *)self amcStats];

  if (!v20)
  {
    v21 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _setUpIOReporting];
    }
  }
}

- (void)_setupAudioSessionMonitoring
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__PLPowerMetricMonitorService__setupAudioSessionMonitoring__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained monitorQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__PLPowerMetricMonitorService__setupAudioSessionMonitoring__block_invoke_2;
    v7[3] = &unk_279A5C3F8;
    v7[4] = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __59__PLPowerMetricMonitorService__setupAudioSessionMonitoring__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained monitorQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__PLPowerMetricMonitorService__setupAudioSessionMonitoring__block_invoke_4;
    v7[3] = &unk_279A5C3F8;
    v7[4] = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)_tearDownAudioSessionMonitoring
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  if ([(PLPowerMetricMonitorService *)self isMonitoringAudio])
  {
    v4 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_INFO, "Tearing down audio session monitoring", buf, 2u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = [(PLPowerMetricMonitorService *)self audioNotificationObservers];
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        v9 = 0;
        do
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v28 + 1) + 8 * v9);
          v11 = [MEMORY[0x277CCAB98] defaultCenter];
          [v11 removeObserver:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v7);
    }

    v12 = [(PLPowerMetricMonitorService *)self audioNotificationObservers];
    [v12 removeAllObjects];

    [(PLPowerMetricMonitorService *)self setIsMonitoringAudio:0];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = [(PLPowerMetricMonitorService *)self metrics];
    v14 = [v13 processMetrics];

    v15 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * v18);
          v20 = [(PLPowerMetricMonitorService *)self metrics];
          v21 = [v20 processMetrics];
          v22 = [v21 objectForKeyedSubscript:v19];
          [v22 setAudioActive:0];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v16);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queryCurrentAudioState
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277D26E60] sharedInstance];
  v5 = [v4 attributeForKey:*MEMORY[0x277D26C78]];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(PLPowerMetricMonitorService *)self audioIsActive];
    [(PLPowerMetricMonitorService *)self setCurrentPlayingSessions:v5];
    -[PLPowerMetricMonitorService setAudioIsActive:](self, "setAudioIsActive:", [v5 count] != 0);
    if (v6 != [(PLPowerMetricMonitorService *)self audioIsActive])
    {
      v7 = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLPowerMetricMonitorService *)self setLastAudioStateChangeDate:v7];

      v8 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(PLPowerMetricMonitorService *)v6 _queryCurrentAudioState];
      }

      [(PLPowerMetricMonitorService *)self _updateAudioActiveMetrics];
    }

    v9 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(PLPowerMetricMonitorService *)self _queryCurrentAudioState];
    }

    v10 = 1;
  }

  else
  {
    [(PLPowerMetricMonitorService *)self _updateAudioActiveMetrics];
    v9 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _queryCurrentAudioState];
    }

    v10 = 0;
  }

  return v10;
}

- (id)_getCurrentPlayingSessions
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277D26E60] sharedInstance];
  v5 = [v4 attributeForKey:*MEMORY[0x277D26C78]];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(PLPowerMetricMonitorService *)self setCurrentPlayingSessions:v5];
    v6 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(PLPowerMetricMonitorService *)v5 _getCurrentPlayingSessions];
    }

    v7 = v5;
  }

  else
  {
    v8 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _getCurrentPlayingSessions];
    }

    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (void)_updateAudioActiveMetrics
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  if ([(PLPowerMetricMonitorService *)self audioIsActive])
  {
    v4 = [(PLPowerMetricMonitorService *)self currentPlayingSessions];
    v5 = [v4 count];

    if (v5)
    {
      v6 = MEMORY[0x277CBEB58];
      v7 = [(PLPowerMetricMonitorService *)self currentPlayingSessions];
      v8 = [v6 setWithCapacity:{objc_msgSend(v7, "count")}];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v9 = [(PLPowerMetricMonitorService *)self currentPlayingSessions];
      v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v33;
        v13 = MEMORY[0x277D26C90];
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = [*(*(&v32 + 1) + 8 * i) objectForKeyedSubscript:*v13];
            if (v15)
            {
              [v8 addObject:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v11);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = [(PLPowerMetricMonitorService *)self metrics];
      v17 = [v16 processMetrics];

      v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v28 + 1) + 8 * j);
            v23 = [v8 containsObject:v22];
            v24 = [(PLPowerMetricMonitorService *)self metrics];
            v25 = [v24 processMetrics];
            v26 = [v25 objectForKeyedSubscript:v22];
            [v26 setAudioActive:v23];
          }

          v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v19);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleSessionPlayingDidChange:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v5);

  v6 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _handleSessionPlayingDidChange:v4];
  }

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D26DC0]];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [(PLPowerMetricMonitorService *)self audioIsActive];
    [(PLPowerMetricMonitorService *)self setCurrentPlayingSessions:v8];
    -[PLPowerMetricMonitorService setAudioIsActive:](self, "setAudioIsActive:", [v8 count] != 0);
    if (v9 != [(PLPowerMetricMonitorService *)self audioIsActive])
    {
      v10 = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLPowerMetricMonitorService *)self setLastAudioStateChangeDate:v10];

      v11 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = @"active";
        if (v9)
        {
          v15 = @"active";
        }

        else
        {
          v15 = @"inactive";
        }

        if (![(PLPowerMetricMonitorService *)self audioIsActive])
        {
          v14 = @"inactive";
        }

        v16 = [v8 count];
        v17 = [(PLPowerMetricMonitorService *)self lastAudioStateChangeDate];
        v18 = 138413058;
        v19 = v15;
        v20 = 2112;
        v21 = v14;
        v22 = 2048;
        v23 = v16;
        v24 = 2112;
        v25 = v17;
        _os_log_debug_impl(&dword_25EE51000, v11, OS_LOG_TYPE_DEBUG, "Audio state changed: %@ -> %@, sessions: %lu at %@", &v18, 0x2Au);
      }

      [(PLPowerMetricMonitorService *)self _updateAudioActiveMetrics];
    }
  }

  else
  {
    v12 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _handleSessionPlayingDidChange:];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleAudioServerConnectionDied:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v4);

  v5 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [PLPowerMetricMonitorService _handleAudioServerConnectionDied:];
  }

  [(PLPowerMetricMonitorService *)self setIsMonitoringAudio:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(PLPowerMetricMonitorService *)self audioNotificationObservers];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [MEMORY[0x277CCAB98] defaultCenter];
        [v12 removeObserver:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v13 = [(PLPowerMetricMonitorService *)self audioNotificationObservers];
  [v13 removeAllObjects];

  v14 = dispatch_time(0, 1000000000);
  v15 = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PLPowerMetricMonitorService__handleAudioServerConnectionDied___block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_after(v14, v15, block);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_collectMetricsWithTimeout:(double)a3 completionHandler:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v7);

  v8 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _collectMetricsWithTimeout:completionHandler:];
  }

  [(PLPowerMetricMonitorService *)self _cancelMetricCollectionTimeoutTimer];
  if ([(PLPowerMetricMonitorService *)self isCollectingMetrics])
  {
    v9 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _collectMetricsWithTimeout:completionHandler:];
    }

    [(PLPowerMetricMonitorService *)self _metricCollectionTimedOut];
  }

  v10 = [(PLPowerMetricMonitorService *)self currQueryTime];
  [(PLPowerMetricMonitorService *)self setLastQueryTime:v10];

  [(PLPowerMetricMonitorService *)self setLastQueryCount:[(PLPowerMetricMonitorService *)self currQueryCount]];
  v11 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLPowerMetricMonitorService *)self setCurrQueryTime:v11];

  [(PLPowerMetricMonitorService *)self setCurrQueryCount:[(PLPowerMetricMonitorService *)self lastQueryCount]+ 1];
  v12 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysRequested:v12];

  v13 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysCollected:v13];

  [(PLPowerMetricMonitorService *)self setReceivedNetworkUpdate:0];
  v14 = objc_alloc_init(MEMORY[0x277D3A0E8]);
  [(PLPowerMetricMonitorService *)self setMetrics:v14];

  v15 = [(PLPowerMetricMonitorService *)self cachedMetrics];
  v16 = [v15 copy];
  [(PLPowerMetricMonitorService *)self setMetrics:v16];

  v17 = [(PLPowerMetricMonitorService *)self trackedProcesses];
  LOBYTE(v16) = [v17 count] == 0;

  if ((v16 & 1) == 0)
  {
    v18 = [MEMORY[0x277CBEB38] dictionary];
    v19 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke;
    v59[3] = &unk_279A5C5B0;
    v59[4] = self;
    v60 = v18;
    v20 = v18;
    [v19 enumerateKeysAndObjectsUsingBlock:v59];

    v21 = [(PLPowerMetricMonitorService *)self metrics];
    [v21 setProcessMetrics:v20];
  }

  objc_initWeak(&location, self);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_2;
  v55[3] = &unk_279A5C5D8;
  objc_copyWeak(&v57, &location);
  v49 = v6;
  v56 = v49;
  [(PLPowerMetricMonitorService *)self setMetricCollectionCompletionHandler:v55];
  [(PLPowerMetricMonitorService *)self setIsCollectingMetrics:1];
  v22 = [(PLPowerMetricMonitorService *)self entryKeysToCollect];
  v23 = [v22 count] == 0;

  if (!v23)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v24 = [(PLPowerMetricMonitorService *)self entryKeysToCollect];
    v25 = [v24 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (!v25)
    {
      goto LABEL_22;
    }

    v26 = *v52;
    while (1)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v52 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v51 + 1) + 8 * i);
        v29 = [(PLPowerMetricMonitorService *)self entryKeyToEntryInfo];
        v30 = [v29 objectForKeyedSubscript:v28];

        [v30 minRequestInterval];
        if (v31 == 0.0)
        {
          v32 = [v30 notificationComposition];
          [v32 requestEntry];

          v33 = [(PLPowerMetricMonitorService *)self entryKeysRequested];
          [v33 addObject:v28];
        }

        else
        {
          v34 = [v30 lastQueryDate];
          [v34 timeIntervalSinceNow];
          v36 = v35;
          [v30 minRequestInterval];
          v38 = v37 < -v36;

          if (!v38)
          {
            goto LABEL_20;
          }

          v39 = [v30 notificationComposition];
          [v39 requestEntry];

          v40 = [(PLPowerMetricMonitorService *)self entryKeysRequested];
          [v40 addObject:v28];

          v33 = [MEMORY[0x277CBEAA8] now];
          v41 = [(PLPowerMetricMonitorService *)self entryKeyToEntryInfo];
          v42 = [v41 objectForKeyedSubscript:v28];
          [v42 setLastQueryDate:v33];
        }

LABEL_20:
      }

      v25 = [v24 countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (!v25)
      {
LABEL_22:

        break;
      }
    }
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_3;
  v50[3] = &unk_279A5C600;
  *&v50[5] = a3;
  v50[4] = self;
  [(PLPowerMetricMonitorService *)self _startMetricCollectionTimeoutTimerWithTimeout:v50 block:a3];
  [(PLPowerMetricMonitorService *)self _updateIOReportStats];
  [(PLPowerMetricMonitorService *)self _updateMetricsWithThermalState];
  [(PLPowerMetricMonitorService *)self _sampleCoalitions];
  if (![(PLPowerMetricMonitorService *)self _supportsGPUCoalitions])
  {
    [(PLPowerMetricMonitorService *)self _sampleGPUTime];
  }

  [(PLPowerMetricMonitorService *)self _updateAudioActiveMetrics];
  v43 = MEMORY[0x277CCABB0];
  v44 = [(PLPowerMetricMonitorService *)self currQueryTime];
  v45 = [(PLPowerMetricMonitorService *)self lastQueryTime];
  [v44 timeIntervalSinceDate:v45];
  v46 = [v43 numberWithDouble:?];
  v47 = [(PLPowerMetricMonitorService *)self metrics];
  [v47 setSampleTime:v46];

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);

  v48 = *MEMORY[0x277D85DE8];
}

void __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) metrics];
  v7 = [v6 processMetrics];
  v8 = [v7 objectForKeyedSubscript:v58];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D3A110]);
    [v9 setPid:{objc_msgSend(v5, "pid")}];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "coalitionID")}];
    [v9 setCoalitionID:v10];

    v11 = [v5 name];
    [v9 setProcessName:v11];

    v12 = [v5 bundleId];
    [v9 setBundleID:v12];

    [*(a1 + 40) setObject:v9 forKeyedSubscript:v58];
    v13 = MEMORY[0x277D3A108];
    v14 = [v5 applicationState];
    v15 = [v5 lastActiveStart];
    v16 = [v13 sampleWithValue:v14 timestamp:v15];
    v17 = [*(a1 + 40) objectForKeyedSubscript:v58];
    [v17 setApplicationState:v16];

    v18 = [*(a1 + 32) cachedMetrics];
    v19 = [v18 processMetrics];
    v20 = [v19 objectForKeyedSubscript:v58];
    v21 = [v20 networkCost];
    v22 = [*(a1 + 40) objectForKeyedSubscript:v58];
    [v22 setNetworkCost:v21];

    v23 = [*(a1 + 32) cachedMetrics];
    v24 = [v23 processMetrics];
    v25 = [v24 objectForKeyedSubscript:v58];
    v26 = [v25 wifiIn];
    v27 = [*(a1 + 40) objectForKeyedSubscript:v58];
    [v27 setWifiIn:v26];

    v28 = [*(a1 + 32) cachedMetrics];
    v29 = [v28 processMetrics];
    v30 = [v29 objectForKeyedSubscript:v58];
    v31 = [v30 wifiOut];
    v32 = [*(a1 + 40) objectForKeyedSubscript:v58];
    [v32 setWifiOut:v31];

    v33 = [*(a1 + 32) cachedMetrics];
    v34 = [v33 processMetrics];
    v35 = [v34 objectForKeyedSubscript:v58];
    v36 = [v35 cellIn];
    v37 = [*(a1 + 40) objectForKeyedSubscript:v58];
    [v37 setCellIn:v36];

    v38 = [*(a1 + 32) cachedMetrics];
    v39 = [v38 processMetrics];
    v40 = [v39 objectForKeyedSubscript:v58];
    v41 = [v40 cellOut];
    v42 = [*(a1 + 40) objectForKeyedSubscript:v58];
    [v42 setCellOut:v41];

    v43 = [*(a1 + 32) cachedMetrics];
    v44 = [v43 processMetrics];
    v45 = [v44 objectForKeyedSubscript:v58];
    [v45 setNetworkCost:0];

    v46 = [*(a1 + 32) cachedMetrics];
    v47 = [v46 processMetrics];
    v48 = [v47 objectForKeyedSubscript:v58];
    [v48 setWifiIn:0];

    v49 = [*(a1 + 32) cachedMetrics];
    v50 = [v49 processMetrics];
    v51 = [v50 objectForKeyedSubscript:v58];
    [v51 setWifiOut:0];

    v52 = [*(a1 + 32) cachedMetrics];
    v53 = [v52 processMetrics];
    v54 = [v53 objectForKeyedSubscript:v58];
    [v54 setCellIn:0];

    v55 = [*(a1 + 32) cachedMetrics];
    v56 = [v55 processMetrics];
    v57 = [v56 objectForKeyedSubscript:v58];
    [v57 setCellOut:0];
  }
}

void __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsCollectingMetrics:0];
  if ((a2 & 1) == 0)
  {
    [WeakRetained _cancelMetricCollectionTimeoutTimer];
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

uint64_t __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_3_cold_1(a1);
  }

  return [*(a1 + 32) _metricCollectionTimedOut];
}

- (void)_metricCollectionTimedOut
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_agentDidUpdateWithEntryKey:(id)a3
{
  v4 = a3;
  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v5);

  if ([(PLPowerMetricMonitorService *)self isCollectingMetrics])
  {
    v6 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLPowerMetricMonitorService _agentDidUpdateWithEntryKey:];
    }

    v7 = [(PLPowerMetricMonitorService *)self entryKeysCollected];
    v8 = [v7 containsObject:v4];

    if ((v8 & 1) == 0)
    {
      v9 = [(PLPowerMetricMonitorService *)self entryKeysCollected];
      [v9 addObject:v4];

      v10 = [(PLPowerMetricMonitorService *)self entryKeysCollected];
      v11 = [v10 count];
      v12 = [(PLPowerMetricMonitorService *)self entryKeysRequested];
      v13 = [v12 count];

      if (v11 == v13)
      {
        v14 = [(PLPowerMetricMonitorService *)self metricCollectionCompletionHandler];

        if (v14)
        {
          v15 = [(PLPowerMetricMonitorService *)self metricCollectionCompletionHandler];
          v15[2](v15, 0);

          [(PLPowerMetricMonitorService *)self setMetricCollectionCompletionHandler:0];
        }
      }
    }
  }
}

- (void)_updateIOReportStats
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PLPowerMetricMonitorService *)self energyModelStats];

  if (v4)
  {
    v5 = [(PLPowerMetricMonitorService *)self energyModelStats];
    [v5 updateStats];

    v6 = [(PLPowerMetricMonitorService *)self energyModelStats];
    v7 = [v6 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:1];

    if (v7)
    {
      v8 = [(PLPowerMetricMonitorService *)self energyModelStats];
      v9 = [v8 sampleTime];
      v10 = [(PLPowerMetricMonitorService *)self energyModelStats];
      v11 = [v10 sampleTimePrevious];
      [v9 timeIntervalSinceDate:v11];
      v13 = v12;

      [(PLPowerMetricMonitorService *)self _parseEnergyModelOrPMPMetricsFromSample:v7 withSampleDuration:0 sourceChannel:v13];
    }
  }

  v14 = [(PLPowerMetricMonitorService *)self dcpSwapStats];

  if (v14)
  {
    v15 = [(PLPowerMetricMonitorService *)self dcpSwapStats];
    [v15 updateStats];

    v16 = [(PLPowerMetricMonitorService *)self dcpSwapStats];
    v17 = [v16 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:0];

    if (v17)
    {
      [(PLPowerMetricMonitorService *)self _parseAverageFPS:v17];
      v18 = MEMORY[0x277D3A108];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v20 = [(PLPowerMetricMonitorService *)self dcpSwapStats];
      v21 = [v20 sampleTime];
      v22 = [v18 sampleWithValue:v19 timestamp:v21];
      v23 = [(PLPowerMetricMonitorService *)self metrics];
      [v23 setDisplayFPS:v22];
    }
  }

  v24 = [(PLPowerMetricMonitorService *)self dcpScanoutStats];

  if (v24)
  {
    v25 = [(PLPowerMetricMonitorService *)self dcpScanoutStats];
    [v25 updateStats];

    v26 = [(PLPowerMetricMonitorService *)self dcpScanoutStats];
    v27 = [v26 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:0];

    if (v27)
    {
      [(PLPowerMetricMonitorService *)self _parseAverageFPS:v27];
      v28 = MEMORY[0x277D3A108];
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v30 = [(PLPowerMetricMonitorService *)self dcpScanoutStats];
      v31 = [v30 sampleTime];
      v32 = [v28 sampleWithValue:v29 timestamp:v31];
      v33 = [(PLPowerMetricMonitorService *)self metrics];
      [v33 setScanoutFPS:v32];
    }
  }

  v34 = [(PLPowerMetricMonitorService *)self dcpDisplayStats];

  if (v34)
  {
    v35 = [(PLPowerMetricMonitorService *)self dcpDisplayStats];
    [v35 updateStats];

    v36 = [(PLPowerMetricMonitorService *)self dcpDisplayStats];
    v37 = [v36 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:0];

    if (v37)
    {
      v38 = [v37 objectForKeyedSubscript:@"power"];
      [v38 doubleValue];
      v40 = v39 / 1000000.0;

      v41 = MEMORY[0x277D3A108];
      v42 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
      v43 = [(PLPowerMetricMonitorService *)self dcpDisplayStats];
      v44 = [v43 sampleTime];
      v45 = [v41 sampleWithValue:v42 timestamp:v44];
      v46 = [(PLPowerMetricMonitorService *)self metrics];
      [v46 setDisplayEnergy:v45];
    }
  }

  if (+[PLPowerMetricMonitorService deviceUsesPMPCounters])
  {
    v47 = [(PLPowerMetricMonitorService *)self pmpCountersStats];

    if (v47)
    {
      v48 = [(PLPowerMetricMonitorService *)self pmpCountersStats];
      [v48 updateStats];

      v49 = [(PLPowerMetricMonitorService *)self pmpCountersStats];
      v50 = [v49 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:1];

      if (v50)
      {
        v51 = [(PLPowerMetricMonitorService *)self pmpCountersStats];
        v52 = [v51 sampleTime];
        v53 = [(PLPowerMetricMonitorService *)self pmpCountersStats];
        v54 = [v53 sampleTimePrevious];
        [v52 timeIntervalSinceDate:v54];
        v56 = v55;

        [(PLPowerMetricMonitorService *)self _parseEnergyModelOrPMPMetricsFromSample:v50 withSampleDuration:1 sourceChannel:v56];
      }
    }
  }

  v57 = [(PLPowerMetricMonitorService *)self amcStats];

  if (v57)
  {
    v58 = [(PLPowerMetricMonitorService *)self amcStats];
    [v58 updateStats];

    v59 = [(PLPowerMetricMonitorService *)self amcStats];
    v60 = [v59 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:1];

    if (v60)
    {
      [(PLPowerMetricMonitorService *)self _parseAMCSample:v60];
    }

    else
    {
      v61 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _updateIOReportStats];
      }
    }
  }
}

- (void)_parseDisplayAPLMetricsFromEntry:(id)a3 cacheMetrics:(BOOL)a4
{
  v4 = a4;
  v39 = a3;
  v6 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v6);

  if (![(PLPowerMetricMonitorService *)self _supportsSMCDisplayPower])
  {
    v7 = [v39 objectForKeyedSubscript:@"AvgPower"];
    v8 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v7];

    v9 = MEMORY[0x277D3A108];
    v10 = [v39 entryDate];
    v11 = [v9 sampleWithValue:v8 timestamp:v10];
    v12 = [(PLPowerMetricMonitorService *)self metrics];
    [v12 setDisplayPower:v11];
  }

  v13 = [v39 objectForKeyedSubscript:@"AvgAPL"];
  v14 = MEMORY[0x277D3A108];
  v15 = [v39 entryDate];
  v16 = [v14 sampleWithValue:v13 timestamp:v15];
  v17 = [(PLPowerMetricMonitorService *)self metrics];
  [v17 setDisplayAPL:v16];

  v18 = [v39 objectForKeyedSubscript:@"AvgRed"];
  v19 = [v18 intValue];
  v20 = [v39 objectForKeyedSubscript:@"AvgGreen"];
  v21 = [v20 intValue];
  v22 = [v39 objectForKeyedSubscript:@"AvgBlue"];
  -[PLPowerMetricMonitorService _computeDisplayCostWithAvgRed:avgGreen:avgBlue:](self, "_computeDisplayCostWithAvgRed:avgGreen:avgBlue:", v19, v21, [v22 intValue]);
  v24 = v23;

  v25 = MEMORY[0x277D3A108];
  v26 = [MEMORY[0x277CCABB0] numberWithInt:v24];
  v27 = [v39 entryDate];
  v28 = [v25 sampleWithValue:v26 timestamp:v27];
  v29 = [(PLPowerMetricMonitorService *)self metrics];
  [v29 setDisplayCost:v28];

  if (v4)
  {
    if (![(PLPowerMetricMonitorService *)self _supportsSMCDisplayPower])
    {
      v30 = [(PLPowerMetricMonitorService *)self metrics];
      v31 = [v30 displayPower];
      v32 = [(PLPowerMetricMonitorService *)self cachedMetrics];
      [v32 setDisplayPower:v31];
    }

    v33 = [(PLPowerMetricMonitorService *)self metrics];
    v34 = [v33 displayAPL];
    v35 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [v35 setDisplayAPL:v34];

    v36 = [(PLPowerMetricMonitorService *)self metrics];
    v37 = [v36 displayCost];
    v38 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [v38 setDisplayCost:v37];
  }
}

- (void)_parseDisplayAZLMetricsFromEntry:(id)a3
{
  v19 = a3;
  v4 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v19 objectForKeyedSubscript:@"AZLAccum"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v19 objectForKeyedSubscript:@"BLFrameCount"];
  [v8 doubleValue];
  v10 = v9;

  if (v10 != 0.0)
  {
    v11 = MEMORY[0x277D3A108];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v10 * 0.000000953674316];
    v13 = [v19 entryDate];
    v14 = [v11 sampleWithValue:v12 timestamp:v13];
    v15 = [(PLPowerMetricMonitorService *)self metrics];
    [v15 setDisplayAZL:v14];

    v16 = [(PLPowerMetricMonitorService *)self metrics];
    v17 = [v16 displayAZL];
    v18 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [v18 setDisplayAZL:v17];
  }
}

- (void)_parseDisplayBacklightPowerMetricsFromEntry:(id)a3
{
  v11 = a3;
  v4 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v4);

  if (![(PLPowerMetricMonitorService *)self _supportsSMCDisplayPower])
  {
    v5 = [v11 objectForKeyedSubscript:@"DisplayPower"];
    v6 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v5];

    v7 = MEMORY[0x277D3A108];
    v8 = [v11 entryDate];
    v9 = [v7 sampleWithValue:v6 timestamp:v8];
    v10 = [(PLPowerMetricMonitorService *)self metrics];
    [v10 setDisplayPower:v9];
  }
}

- (void)_parseEnergyModelOrPMPMetricsFromSample:(id)a3 withSampleDuration:(double)a4 sourceChannel:(int64_t)a5
{
  v8 = a3;
  v9 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v9);

  if (a4 > 0.0)
  {
    v10 = [MEMORY[0x277CBEAA8] monotonicDate];
    v11 = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    if (a5 == 1 || v11 > 1001015)
    {
      v215 = a5;
      v217 = v11;
      v13 = [v8 objectForKeyedSubscript:@"DRAM"];
      [v13 doubleValue];
      v15 = v14 / a4 * 1.2;

      v16 = MEMORY[0x277D3A108];
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
      v18 = [MEMORY[0x277CBEAA8] monotonicDate];
      v19 = [v16 sampleWithValue:v17 timestamp:v18];
      v20 = [(PLPowerMetricMonitorService *)self metrics];
      [v20 setDramPower:v19];

      v21 = [v8 objectForKeyedSubscript:@"ANE"];
      [v21 doubleValue];
      v23 = v22 / a4 * 1.2;

      v24 = MEMORY[0x277D3A108];
      v25 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
      v26 = [MEMORY[0x277CBEAA8] monotonicDate];
      v27 = [v24 sampleWithValue:v25 timestamp:v26];
      v28 = [(PLPowerMetricMonitorService *)self metrics];
      [v28 setAnePower:v27];

      [v8 objectForKeyedSubscript:@"SOC_REST"];
      v29 = v219 = v10;
      [v29 doubleValue];
      v31 = v30;
      v32 = [v8 objectForKeyedSubscript:@"AVE"];
      [v32 doubleValue];
      v34 = v31 + v33;
      v35 = [v8 objectForKeyedSubscript:@"DCS"];
      [v35 doubleValue];
      v37 = v34 + v36;
      v38 = [v8 objectForKeyedSubscript:@"DISP"];
      [v38 doubleValue];
      v40 = v37 + v39;
      v41 = [v8 objectForKeyedSubscript:@"ISP"];
      [v41 doubleValue];
      v43 = v40 + v42;
      v44 = [v8 objectForKeyedSubscript:@"MSR"];
      [v44 doubleValue];
      v46 = v43 + v45;
      v47 = [v8 objectForKeyedSubscript:@"VDEC"];
      [v47 doubleValue];
      v49 = v46 + v48;
      v50 = [v8 objectForKeyedSubscript:@"SOC_AON"];
      [v50 doubleValue];
      v52 = v49 + v51;

      v10 = v219;
      v53 = MEMORY[0x277D3A108];
      v54 = [MEMORY[0x277CCABB0] numberWithDouble:v52 / a4 * 1.2];
      v55 = [MEMORY[0x277CBEAA8] monotonicDate];
      v56 = [v53 sampleWithValue:v54 timestamp:v55];
      v57 = [(PLPowerMetricMonitorService *)self metrics];
      [v57 setOtherSocPower:v56];

      v58 = [v8 objectForKeyedSubscript:@"GPU SRAM"];
      [v58 doubleValue];
      v60 = v59;

      v61 = MEMORY[0x277D3A108];
      v62 = [MEMORY[0x277CCABB0] numberWithDouble:v60];
      v63 = [v61 sampleWithValue:v62 timestamp:v219];
      v64 = [(PLPowerMetricMonitorService *)self metrics];
      [v64 setGpuSRAMEnergy:v63];

      v65 = [v8 objectForKeyedSubscript:@"ANE"];
      [v65 doubleValue];
      v67 = v66;

      v68 = MEMORY[0x277D3A108];
      v69 = [MEMORY[0x277CCABB0] numberWithDouble:v67];
      v70 = [v68 sampleWithValue:v69 timestamp:v219];
      v71 = [(PLPowerMetricMonitorService *)self metrics];
      [v71 setAneEnergy:v70];

      v72 = [v8 objectForKeyedSubscript:@"DCS"];
      [v72 doubleValue];
      v74 = v73;

      v75 = MEMORY[0x277D3A108];
      v76 = [MEMORY[0x277CCABB0] numberWithDouble:v74];
      v77 = [v75 sampleWithValue:v76 timestamp:v219];
      v78 = [(PLPowerMetricMonitorService *)self metrics];
      [v78 setDcsEnergy:v77];

      v79 = [v8 objectForKeyedSubscript:@"DRAM"];
      [v79 doubleValue];
      v81 = v80;

      v82 = MEMORY[0x277D3A108];
      v83 = [MEMORY[0x277CCABB0] numberWithDouble:v81];
      v84 = [v82 sampleWithValue:v83 timestamp:v219];
      v85 = [(PLPowerMetricMonitorService *)self metrics];
      [v85 setDramEnergy:v84];

      v86 = [v8 objectForKeyedSubscript:@"PCIe Port 0 Energy"];

      if (v86)
      {
        v87 = [v8 objectForKeyedSubscript:@"PCIe Port 0 Energy"];
        [v87 doubleValue];
        v89 = v88 + 0.0;
      }

      else
      {
        v89 = 0.0;
      }

      v90 = [v8 objectForKeyedSubscript:@"PCIe Port 1 Energy"];

      if (v90)
      {
        v91 = [v8 objectForKeyedSubscript:@"PCIe Port 1 Energy"];
        [v91 doubleValue];
        v89 = v89 + v92;
      }

      v93 = [v8 objectForKeyedSubscript:@"PCIe Port 2 Energy"];

      if (v93)
      {
        v94 = [v8 objectForKeyedSubscript:@"PCIe Port 2 Energy"];
        [v94 doubleValue];
        v89 = v89 + v95;
      }

      v96 = MEMORY[0x277D3A108];
      v97 = [MEMORY[0x277CCABB0] numberWithDouble:v89];
      v98 = [v96 sampleWithValue:v97 timestamp:v219];
      v99 = [(PLPowerMetricMonitorService *)self metrics];
      [v99 setPcieEnergy:v98];

      v11 = v217;
      if (v215)
      {
        goto LABEL_20;
      }
    }

    else if (a5)
    {
LABEL_20:

      goto LABEL_21;
    }

    v100 = MEMORY[0x277CCABB0];
    v218 = v11;
    v101 = [v8 objectForKeyedSubscript:@"CPU Energy"];
    [v101 doubleValue];
    v103 = [v100 numberWithDouble:v102 / a4 * 1.2];

    v104 = MEMORY[0x277D3A108];
    v105 = [MEMORY[0x277CBEAA8] monotonicDate];
    v216 = v103;
    v106 = [v104 sampleWithValue:v103 timestamp:v105];
    v107 = [(PLPowerMetricMonitorService *)self metrics];
    [v107 setCpuPower:v106];

    v108 = MEMORY[0x277CCABB0];
    v109 = [v8 objectForKeyedSubscript:@"GPU Energy"];
    [v109 doubleValue];
    v111 = [v108 numberWithDouble:v110 / a4 * 1.2];

    v112 = MEMORY[0x277D3A108];
    v113 = [MEMORY[0x277CBEAA8] monotonicDate];
    v114 = [v112 sampleWithValue:v111 timestamp:v113];
    [(PLPowerMetricMonitorService *)self metrics];
    v115 = v220 = v10;
    [v115 setGpuPower:v114];

    v10 = v220;
    v116 = [v8 objectForKeyedSubscript:@"CPU Energy"];
    [v116 doubleValue];
    v118 = v117;

    v119 = MEMORY[0x277D3A108];
    v120 = [MEMORY[0x277CCABB0] numberWithDouble:v118];
    v121 = [v119 sampleWithValue:v120 timestamp:v220];
    v122 = [(PLPowerMetricMonitorService *)self metrics];
    [v122 setCpuEnergy:v121];

    v123 = [v8 objectForKeyedSubscript:@"GPU Energy"];
    [v123 doubleValue];
    v125 = v124;
    v214 = v124;

    v126 = MEMORY[0x277D3A108];
    v127 = [MEMORY[0x277CCABB0] numberWithDouble:v125];
    v128 = [v126 sampleWithValue:v127 timestamp:v220];
    v129 = [(PLPowerMetricMonitorService *)self metrics];
    [v129 setGpuEnergy:v128];

    v130 = [v8 objectForKeyedSubscript:@"ECPM"];
    [v130 doubleValue];
    v213 = v131;

    v132 = [v8 objectForKeyedSubscript:@"PCPM"];
    [v132 doubleValue];
    v212 = v133;

    v134 = [v8 objectForKeyedSubscript:@"ECPM_SRAM"];
    [v134 doubleValue];
    v211 = v135;

    v136 = [v8 objectForKeyedSubscript:@"PCPM_SRAM"];
    [v136 doubleValue];
    v210 = v137;

    v138 = [v8 objectForKeyedSubscript:@"ECPU"];
    [v138 doubleValue];
    v209 = v139;

    v140 = [v8 objectForKeyedSubscript:@"PCPU"];
    [v140 doubleValue];
    v208 = v141;

    v142 = [v8 objectForKeyedSubscript:@"ISP"];
    [v142 doubleValue];
    v207 = v143;

    v144 = [v8 objectForKeyedSubscript:@"AVE"];
    [v144 doubleValue];
    v206 = v145;

    v146 = [v8 objectForKeyedSubscript:@"MSR"];
    [v146 doubleValue];
    v205 = v147;

    v148 = [v8 objectForKeyedSubscript:@"DISP"];
    [v148 doubleValue];
    v204 = v149;

    v150 = [v8 objectForKeyedSubscript:@"DISPEXT"];
    [v150 doubleValue];
    v152 = v151;

    v153 = [v8 objectForKeyedSubscript:@"VDEC"];
    [v153 doubleValue];
    v155 = v154;

    v156 = [v8 objectForKeyedSubscript:@"SOC_AON"];
    [v156 doubleValue];
    v158 = v157;

    v159 = [v8 objectForKeyedSubscript:@"GPU SRAM"];
    [v159 doubleValue];
    v203 = a4;
    v161 = v160;

    v162 = [v8 objectForKeyedSubscript:@"ANE"];
    [v162 doubleValue];
    v164 = v163;

    v165 = [v8 objectForKeyedSubscript:@"SOC_REST"];
    [v165 doubleValue];
    v167 = v166;

    v168 = [v8 objectForKeyedSubscript:@"DCS"];
    [v168 doubleValue];
    v170 = v169;

    v171 = [v8 objectForKeyedSubscript:@"DRAM"];
    [v171 doubleValue];
    v173 = v172;

    v174 = MEMORY[0x277D3A108];
    v175 = [MEMORY[0x277CCABB0] numberWithDouble:v167 + v158 + v155 + v152 + v204 + v205 + v206 + v207 + v214 + v213 + v212 + v211 + v210 + v209 + v208 + v161 + v164 + v170 + v173];
    v176 = [v174 sampleWithValue:v175 timestamp:v220];
    v177 = [(PLPowerMetricMonitorService *)self metrics];
    [v177 setPackageEnergy:v176];

    if (v218 < 1001011)
    {
      v178 = MEMORY[0x277CCABB0];
      v179 = [v8 objectForKeyedSubscript:@"DRAM Energy"];
      [v179 doubleValue];
      v181 = [v178 numberWithDouble:v180 / v203 * 1.2];

      v182 = MEMORY[0x277D3A108];
      v183 = [MEMORY[0x277CBEAA8] monotonicDate];
      v184 = [v182 sampleWithValue:v181 timestamp:v183];
      v185 = [(PLPowerMetricMonitorService *)self metrics];
      [v185 setDramPower:v184];

      v186 = [v8 objectForKeyedSubscript:@"Rest of SoC Energy"];
      [v186 doubleValue];
      v188 = v187;
      v189 = [v8 objectForKeyedSubscript:@"ISP Energy"];
      [v189 doubleValue];
      v191 = v188 + v190;
      v192 = [v8 objectForKeyedSubscript:@"VDEC Energy"];
      [v192 doubleValue];
      v194 = v191 + v193;
      v195 = [v8 objectForKeyedSubscript:@"VENC Energy"];
      [v195 doubleValue];
      v197 = v194 + v196;

      v10 = v220;
      v198 = [MEMORY[0x277CCABB0] numberWithDouble:v197 / v203 * 1.2];
      v199 = MEMORY[0x277D3A108];
      v200 = [MEMORY[0x277CBEAA8] monotonicDate];
      v201 = [v199 sampleWithValue:v198 timestamp:v200];
      v202 = [(PLPowerMetricMonitorService *)self metrics];
      [v202 setOtherSocPower:v201];
    }

    goto LABEL_20;
  }

  v12 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [PLPowerMetricMonitorService _parseEnergyModelOrPMPMetricsFromSample:withSampleDuration:sourceChannel:];
  }

LABEL_21:
}

- (double)_parseAverageFPS:(id)a3
{
  v4 = a3;
  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v5);

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = +[PLDisplayAgent dcpSubFrameMap];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__PLPowerMetricMonitorService__parseAverageFPS___block_invoke;
  v12[3] = &unk_279A5C628;
  v7 = v4;
  v13 = v7;
  v14 = &v20;
  v15 = &v16;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];

  v8 = v17[3];
  v9 = 0.0;
  if (v8 != 0.0)
  {
    v10 = v21[3];
    if (v10 != 0.0)
    {
      v9 = 1.0 / (v8 / v10);
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v9;
}

double __48__PLPowerMetricMonitorService__parseAverageFPS___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  [v7 doubleValue];
  v9 = v8;

  *(*(a1[5] + 8) + 24) = v9 + *(*(a1[5] + 8) + 24);
  [v6 doubleValue];
  v11 = v10;

  v12 = *(a1[6] + 8);
  result = *(v12 + 24) + v9 * (1.0 / v11);
  *(v12 + 24) = result;
  return result;
}

- (void)_parseAMCSample:(id)a3
{
  v4 = a3;
  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v5);

  v33 = [MEMORY[0x277CBEAA8] monotonicDate];
  v6 = [v4 objectForKeyedSubscript:@"DCS"];
  [v6 doubleValue];
  v8 = v7;

  v9 = MEMORY[0x277D3A108];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v11 = [v9 sampleWithValue:v10 timestamp:v33];
  v12 = [(PLPowerMetricMonitorService *)self metrics];
  [v12 setDramBytes:v11];

  v13 = [v4 objectForKeyedSubscript:@"ANE DCS RD"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v4 objectForKeyedSubscript:@"ANE DCS WR"];
  [v16 doubleValue];
  v18 = v17;

  v19 = MEMORY[0x277D3A108];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v15 + v18];
  v21 = [v19 sampleWithValue:v20 timestamp:v33];
  v22 = [(PLPowerMetricMonitorService *)self metrics];
  [v22 setAneDCSBytes:v21];

  v23 = [v4 objectForKeyedSubscript:@"ANE RD"];
  [v23 doubleValue];
  v25 = v24;

  v26 = [v4 objectForKeyedSubscript:@"ANE WR"];

  [v26 doubleValue];
  v28 = v27;

  v29 = MEMORY[0x277D3A108];
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:v25 + v28];
  v31 = [v29 sampleWithValue:v30 timestamp:v33];
  v32 = [(PLPowerMetricMonitorService *)self metrics];
  [v32 setAneFabricBytes:v31];
}

- (void)_parseSMCMetricsFromEntry:(id)a3
{
  v4 = a3;
  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 objectForKeyedSubscript:@"B0AP"];
  v7 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v6];

  v8 = MEMORY[0x277D3A108];
  v9 = [v4 entryDate];
  v77 = v7;
  v10 = [v8 sampleWithValue:v7 timestamp:v9];
  v11 = [(PLPowerMetricMonitorService *)self metrics];
  [v11 setBatteryPower:v10];

  v12 = [v4 objectForKeyedSubscript:@"zSPi"];
  v13 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v12];

  v14 = MEMORY[0x277D3A108];
  v15 = [v4 entryDate];
  v76 = v13;
  v16 = [v14 sampleWithValue:v13 timestamp:v15];
  v17 = [(PLPowerMetricMonitorService *)self metrics];
  [v17 setDcInputPower:v16];

  v18 = [v4 objectForKeyedSubscript:@"CHAS"];
  v19 = MEMORY[0x277D3A108];
  v20 = [v4 entryDate];
  v21 = [v19 sampleWithValue:v18 timestamp:v20];
  v22 = [(PLPowerMetricMonitorService *)self metrics];
  [v22 setChargingRate:v21];

  v23 = [v4 objectForKeyedSubscript:@"xRPE"];
  v24 = MEMORY[0x277D3A108];
  v25 = [v4 entryDate];
  v75 = v23;
  v26 = [v24 sampleWithValue:v23 timestamp:v25];
  v27 = [(PLPowerMetricMonitorService *)self metrics];
  [v27 setCellularPower:v26];

  v28 = [v4 objectForKeyedSubscript:@"TVMx"];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v31 = [v4 objectForKeyedSubscript:@"TVRM"];
    v32 = v31;
    if (v31)
    {
      v30 = v31;
    }

    else
    {
      v33 = [v4 objectForKeyedSubscript:@"TVBM"];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = [v4 objectForKeyedSubscript:@"TVBH"];
      }

      v30 = v35;
    }
  }

  if ([MEMORY[0x277D3F208] isDeviceClass:102058])
  {
    v36 = [v4 objectForKeyedSubscript:@"TVBE"];

    v30 = v36;
  }

  v37 = MEMORY[0x277D3A108];
  v38 = [v4 entryDate];
  v39 = [v37 sampleWithValue:v30 timestamp:v38];
  v40 = [(PLPowerMetricMonitorService *)self metrics];
  [v40 setSkinTemperature:v39];

  v41 = [v4 objectForKeyedSubscript:@"TB0T"];
  v42 = MEMORY[0x277D3A108];
  v43 = [v4 entryDate];
  v44 = [v42 sampleWithValue:v41 timestamp:v43];
  v45 = [(PLPowerMetricMonitorService *)self metrics];
  [v45 setBatteryTemperature:v44];

  v46 = 0x277CCA000;
  if ([(PLPowerMetricMonitorService *)self _supportsSMCDisplayPower])
  {
    v73 = [v4 objectForKeyedSubscript:@"PDEP"];
    v47 = [v4 objectForKeyedSubscript:@"PDLP"];
    v48 = MEMORY[0x277CCABB0];
    [v73 doubleValue];
    v50 = v49;
    [v47 doubleValue];
    v52 = [v48 numberWithDouble:v50 + v51];
    v53 = v41;
    v54 = v18;
    v55 = MEMORY[0x277D3A108];
    v56 = [v4 entryDate];
    v57 = [v55 sampleWithValue:v52 timestamp:v56];
    v58 = [(PLPowerMetricMonitorService *)self metrics];
    [v58 setDisplayPower:v57];

    v18 = v54;
    v41 = v53;

    v46 = 0x277CCA000uLL;
  }

  if (v18)
  {
    v59 = [v4 objectForKeyedSubscript:@"zSLi"];
    v74 = v18;
    [v18 doubleValue];
    if (v60 == 0.0)
    {
      v61 = *(v46 + 2992);
      v62 = [v4 objectForKeyedSubscript:@"B0AP"];
      [v62 doubleValue];
      v64 = [v61 numberWithDouble:-v63];
    }

    else
    {
      v64 = v59;
    }

    v66 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v64];

    v67 = MEMORY[0x277D3A108];
    v68 = [v4 entryDate];
    v69 = [v67 sampleWithValue:v66 timestamp:v68];
    v70 = [(PLPowerMetricMonitorService *)self metrics];
    [v70 setSystemLoadPower:v69];

    v71 = [*(v46 + 2992) numberWithInt:v59 != 0];
    v72 = [(PLPowerMetricMonitorService *)self metrics];
    [v72 setIsSystemPowerAvailableWhileCharging:v71 != 0];

    [(PLPowerMetricMonitorService *)self _calculateAccumSystemLoad:v4];
    v18 = v74;
  }

  else
  {
    v65 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      [PLPowerMetricMonitorService _parseSMCMetricsFromEntry:];
    }
  }
}

- (void)_setupBatteryMetrics
{
  v3 = *MEMORY[0x277CD28A0];
  v4 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:MatchingService];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"ExternalConnected"];
      [(PLPowerMetricMonitorService *)self setChargerConnected:[v9 BOOLValue]];
    }

    else
    {
      v9 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _setupBatteryMetrics];
      }
    }

    IOObjectRelease(v6);
  }

  else
  {
    v8 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _setupBatteryMetrics];
    }
  }

  [(PLPowerMetricMonitorService *)self _updateBatteryMetrics];
}

- (void)_updateBatteryMetrics
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277D3F1C8]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__PLPowerMetricMonitorService__updateBatteryMetrics__block_invoke;
  v7[3] = &unk_279A5C650;
  objc_copyWeak(&v8, &location);
  v5 = [v4 initWithOperator:self forService:@"IOPMPowerSource" withBlock:v7];
  iokitPowerSource = self->_iokitPowerSource;
  self->_iokitPowerSource = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __52__PLPowerMetricMonitorService__updateBatteryMetrics__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a3 == -536723200 && WeakRetained)
  {
    v8 = WeakRetained;
    v6 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2];
    v7 = [v6 objectForKeyedSubscript:@"ExternalConnected"];
    [v8 setChargerConnected:{objc_msgSend(v7, "BOOLValue")}];

    WeakRetained = v8;
  }
}

- (void)_parseWifiPowerMetricsFromEntry:(id)a3
{
  v4 = a3;
  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 objectForKeyedSubscript:@"WifiPower"];
  v31 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v6];

  v7 = MEMORY[0x277D3A108];
  v8 = [v4 entryDate];
  v9 = [v7 sampleWithValue:v31 timestamp:v8];
  v10 = [(PLPowerMetricMonitorService *)self metrics];
  [v10 setWifiPower:v9];

  v11 = [v4 objectForKeyedSubscript:@"AWDLDown"];
  LODWORD(v8) = [v11 BOOLValue];

  v12 = MEMORY[0x277D3A108];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v8 ^ 1];
  v14 = [v4 entryDate];
  v15 = [v12 sampleWithValue:v13 timestamp:v14];
  v16 = [(PLPowerMetricMonitorService *)self metrics];
  [v16 setWifiAWDLStatus:v15];

  v17 = MEMORY[0x277D3A108];
  v18 = [v4 objectForKeyedSubscript:@"AWDLRanging"];
  v19 = [v4 entryDate];

  v20 = [v17 sampleWithValue:v18 timestamp:v19];
  v21 = [(PLPowerMetricMonitorService *)self metrics];
  [v21 setWifiAWDLRange:v20];

  v22 = [(PLPowerMetricMonitorService *)self metrics];
  v23 = [v22 wifiPower];
  v24 = [(PLPowerMetricMonitorService *)self cachedMetrics];
  [v24 setWifiPower:v23];

  v25 = [(PLPowerMetricMonitorService *)self metrics];
  v26 = [v25 wifiAWDLStatus];
  v27 = [(PLPowerMetricMonitorService *)self cachedMetrics];
  [v27 setWifiAWDLStatus:v26];

  v28 = [(PLPowerMetricMonitorService *)self metrics];
  v29 = [v28 wifiAWDLRange];
  v30 = [(PLPowerMetricMonitorService *)self cachedMetrics];
  [v30 setWifiAWDLRange:v29];
}

- (void)_parseGasGaugeMetricsFromEntry:(id)a3
{
  v14 = a3;
  v4 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v14 objectForKeyedSubscript:@"GasGaugePower"];
  [v5 doubleValue];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v8 = MEMORY[0x277D3A108];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / -1000.0];
    v10 = [v14 entryDate];
    v11 = [v8 sampleWithValue:v9 timestamp:v10];
    v12 = [(PLPowerMetricMonitorService *)self metrics];
    [v12 setSystemLoadPower:v11];
  }

  v13 = [(PLPowerMetricMonitorService *)self metrics];
  [v13 setIsSystemPowerAvailableWhileCharging:0];
}

- (void)_parseProcessNetworkMetricsFromEntry:(id)a3
{
  v107 = *MEMORY[0x277D85DE8];
  v95 = a3;
  v4 = PLLogPower();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _parseProcessNetworkMetricsFromEntry:];
  }

  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v95 objectForKeyedSubscript:@"BundleName"];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v9 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v10 = [v9 allKeys];

    obj = v10;
    v11 = [v10 countByEnumeratingWithState:&v100 objects:v106 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v101;
      *&v12 = 138412290;
      v89 = v12;
      v90 = *v101;
      v91 = v8;
      do
      {
        v15 = 0;
        v92 = v13;
        do
        {
          if (*v101 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v100 + 1) + 8 * v15);
          v17 = [(PLPowerMetricMonitorService *)self trackedProcesses];
          v18 = [v17 objectForKeyedSubscript:v16];
          v19 = [v18 bundleId];

          if ([v19 isEqualToString:v8])
          {
            v94 = v19;
            v20 = PLLogPowerMetricMonitor();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = v89;
              v105 = v95;
              _os_log_debug_impl(&dword_25EE51000, v20, OS_LOG_TYPE_DEBUG, "ProcessNetworkEntry=%@", buf, 0xCu);
            }

            v99 = [v95 objectForKeyedSubscript:@"WifiIn"];
            v98 = [v95 objectForKeyedSubscript:@"WifiOut"];
            v97 = [v95 objectForKeyedSubscript:@"CellIn"];
            v96 = [v95 objectForKeyedSubscript:@"CellOut"];
            v21 = MEMORY[0x277D3A108];
            v22 = [v95 entryDate];
            v23 = [v21 sampleWithValue:v99 timestamp:v22];
            v24 = [(PLPowerMetricMonitorService *)self metrics];
            v25 = [v24 processMetrics];
            v26 = [v25 objectForKeyedSubscript:v16];
            [v26 setWifiIn:v23];

            v27 = MEMORY[0x277D3A108];
            v28 = [v95 entryDate];
            v29 = [v27 sampleWithValue:v98 timestamp:v28];
            v30 = [(PLPowerMetricMonitorService *)self metrics];
            v31 = [v30 processMetrics];
            v32 = [v31 objectForKeyedSubscript:v16];
            [v32 setWifiOut:v29];

            v33 = MEMORY[0x277D3A108];
            v34 = [v95 entryDate];
            v35 = [v33 sampleWithValue:v97 timestamp:v34];
            v36 = [(PLPowerMetricMonitorService *)self metrics];
            v37 = [v36 processMetrics];
            v38 = [v37 objectForKeyedSubscript:v16];
            [v38 setCellIn:v35];

            v39 = MEMORY[0x277D3A108];
            v40 = [v95 entryDate];
            v41 = [v39 sampleWithValue:v96 timestamp:v40];
            v42 = [(PLPowerMetricMonitorService *)self metrics];
            v43 = [v42 processMetrics];
            v44 = [v43 objectForKeyedSubscript:v16];
            [v44 setCellOut:v41];

            v45 = [(PLPowerMetricMonitorService *)self metrics];
            v46 = [v45 processMetrics];
            v47 = [v46 objectForKeyedSubscript:v16];
            v48 = [v47 wifiIn];
            v49 = [(PLPowerMetricMonitorService *)self cachedMetrics];
            v50 = [v49 processMetrics];
            v51 = [v50 objectForKeyedSubscript:v16];
            [v51 setWifiIn:v48];

            v52 = [(PLPowerMetricMonitorService *)self metrics];
            v53 = [v52 processMetrics];
            v54 = [v53 objectForKeyedSubscript:v16];
            v55 = [v54 wifiOut];
            v56 = [(PLPowerMetricMonitorService *)self metrics];
            v57 = [v56 processMetrics];
            v58 = [v57 objectForKeyedSubscript:v16];
            [v58 setWifiOut:v55];

            v59 = [(PLPowerMetricMonitorService *)self metrics];
            v60 = [v59 processMetrics];
            v61 = [v60 objectForKeyedSubscript:v16];
            v62 = [v61 cellIn];
            v63 = [(PLPowerMetricMonitorService *)self metrics];
            v64 = [v63 processMetrics];
            v65 = [v64 objectForKeyedSubscript:v16];
            [v65 setCellIn:v62];

            v66 = [(PLPowerMetricMonitorService *)self metrics];
            v67 = [v66 processMetrics];
            v68 = [v67 objectForKeyedSubscript:v16];
            v69 = [v68 cellOut];
            v70 = [(PLPowerMetricMonitorService *)self metrics];
            v71 = [v70 processMetrics];
            v72 = [v71 objectForKeyedSubscript:v16];
            [v72 setCellOut:v69];

            -[PLPowerMetricMonitorService _computeNetworkingCostWithWifiIn:wifiOut:cellIn:cellOut:](self, "_computeNetworkingCostWithWifiIn:wifiOut:cellIn:cellOut:", [v99 intValue], objc_msgSend(v98, "intValue"), objc_msgSend(v97, "intValue"), objc_msgSend(v96, "intValue"));
            v74 = MEMORY[0x277D3A108];
            v75 = [MEMORY[0x277CCABB0] numberWithInt:v73];
            v76 = [v95 entryDate];
            v77 = [v74 sampleWithValue:v75 timestamp:v76];
            v78 = [(PLPowerMetricMonitorService *)self metrics];
            v79 = [v78 processMetrics];
            v80 = [v79 objectForKeyedSubscript:v16];
            [v80 setNetworkCost:v77];

            v81 = [(PLPowerMetricMonitorService *)self metrics];
            v82 = [v81 processMetrics];
            v83 = [v82 objectForKeyedSubscript:v16];
            v84 = [v83 networkCost];
            v85 = [(PLPowerMetricMonitorService *)self cachedMetrics];
            v86 = [v85 processMetrics];
            v87 = [v86 objectForKeyedSubscript:v16];
            [v87 setNetworkCost:v84];

            v14 = v90;
            v8 = v91;
            v13 = v92;
            v19 = v94;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v100 objects:v106 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v8 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _parseProcessNetworkMetricsFromEntry:];
    }
  }

  v88 = *MEMORY[0x277D85DE8];
}

- (void)_queryCumulativeNetworkBytes
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_parseLocationMetricsFromEntry:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"BundleId"];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEB68] null];

      if (v8 != v9)
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v10 = [(PLPowerMetricMonitorService *)self trackedProcesses];
        v11 = [v10 allKeys];

        obj = v11;
        v12 = [v11 countByEnumeratingWithState:&v56 objects:v62 count:16];
        if (!v12)
        {
          goto LABEL_22;
        }

        v14 = v12;
        v15 = *v57;
        *&v13 = 138412290;
        v50 = v13;
        v52 = *v57;
        v53 = v8;
        v51 = self;
        while (1)
        {
          v16 = 0;
          v54 = v14;
          do
          {
            if (*v57 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v56 + 1) + 8 * v16);
            v18 = [(PLPowerMetricMonitorService *)self trackedProcesses];
            v19 = [v18 objectForKeyedSubscript:v17];
            v20 = [v19 bundleId];

            if ([v20 isEqualToString:v8])
            {
              v21 = [v4 objectForKeyedSubscript:@"timestampEnd"];
              if (v21)
              {

                goto LABEL_12;
              }

              v29 = [v4 objectForKeyedSubscript:@"LocationDesiredAccuracy"];

              if (v29)
              {
                v30 = PLLogPowerMetricMonitor();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v50;
                  v61 = v8;
                  _os_log_debug_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEBUG, "location start signal; bundleId=%@", buf, 0xCu);
                }

                v31 = MEMORY[0x277D3A108];
                v32 = [v4 entryDate];
                v33 = [v31 sampleWithValue:MEMORY[0x277CBEC38] timestamp:v32];
                v34 = [(PLPowerMetricMonitorService *)self metrics];
                v35 = [v34 processMetrics];
                v36 = [v35 objectForKeyedSubscript:v17];
                [v36 setOngoingLocation:v33];

                v37 = MEMORY[0x277CCABB0];
                [(PLPowerMetricMonitorService *)self _computeLocationCostWithWifiCost:0 gpsCost:1 cellCost:0 skyhookCost:0];
                v24 = [v37 numberWithDouble:?];
                v38 = MEMORY[0x277D3A108];
                v39 = [v4 entryDate];
                v40 = [v38 sampleWithValue:v24 timestamp:v39];
                v41 = [(PLPowerMetricMonitorService *)self metrics];
                v42 = [v41 processMetrics];
                [v42 objectForKeyedSubscript:v17];
                v44 = v43 = v4;
                [v44 setLocationCost:v40];

                v45 = MEMORY[0x277D3A108];
                v25 = [v43 objectForKeyedSubscript:@"LocationDesiredAccuracy"];
                v26 = [v43 entryDate];
                v27 = [v45 sampleWithValue:v25 timestamp:v26];
                v28 = [(PLPowerMetricMonitorService *)v51 metrics];
                v46 = [v28 processMetrics];
                v47 = [v46 objectForKeyedSubscript:v17];
                [v47 setLocationDesiredAccuracy:v27];

                v4 = v43;
                self = v51;
              }

              else
              {
LABEL_12:
                v22 = PLLogPowerMetricMonitor();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v50;
                  v61 = v8;
                  _os_log_debug_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEBUG, "location terminate signal; bundleId=%@", buf, 0xCu);
                }

                v23 = MEMORY[0x277D3A108];
                v24 = [v4 entryDate];
                v25 = [v23 sampleWithValue:MEMORY[0x277CBEC28] timestamp:v24];
                v26 = [(PLPowerMetricMonitorService *)self metrics];
                v27 = [v26 processMetrics];
                v28 = [v27 objectForKeyedSubscript:v17];
                [v28 setOngoingLocation:v25];
              }

              v15 = v52;
              v8 = v53;
              v14 = v54;
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
          if (!v14)
          {
LABEL_22:

            break;
          }
        }
      }
    }
  }

  else
  {
    v48 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _parseProcessNetworkMetricsFromEntry:];
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)_parseApplicationMetricsFromEntry:(id)a3
{
  v4 = a3;
  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:@"pid"];
    v9 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v10 = [v9 objectForKeyedSubscript:v8];

    if (v10)
    {
      v11 = [v4 objectForKeyedSubscript:@"State"];
      v12 = MEMORY[0x277D3A108];
      v13 = [v4 entryDate];
      v14 = [v12 sampleWithValue:v11 timestamp:v13];
      v15 = [(PLPowerMetricMonitorService *)self metrics];
      v16 = [v15 processMetrics];
      v17 = [v16 objectForKeyedSubscript:v8];
      [v17 setApplicationState:v14];

      v18 = [(PLPowerMetricMonitorService *)self trackedProcesses];
      v19 = [v18 objectForKeyedSubscript:v8];
      [v19 setApplicationState:v11];

      v20 = [v8 intValue];
      v21 = [v11 intValue];
      v22 = [(PLPowerMetricMonitorService *)self currQueryTime];
      [(PLPowerMetricMonitorService *)self _setLastActiveStartTimeAndLastSuspendTimeWithPid:v20 appState:v21 currentTime:v22];
    }

    else
    {
      v23 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [PLPowerMetricMonitorService _parseApplicationMetricsFromEntry:];
      }
    }
  }

  else
  {
    v8 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, "Not currently tracking a PID", v24, 2u);
    }
  }
}

- (void)_updateMetricsWithThermalState
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  if (_updateMetricsWithThermalState_onceToken != -1)
  {
    [PLPowerMetricMonitorService _updateMetricsWithThermalState];
  }

  state64 = 0;
  notify_get_state(_updateMetricsWithThermalState_thermalStateToken, &state64);
  v4 = state64;
  v5 = [(PLPowerMetricMonitorService *)self metrics];
  [v5 setThermalPressure:v4];

  v6 = [_updateMetricsWithThermalState_cltmDefaults stringForKey:@"thermalSimulationMode"];
  v7 = v6;
  if (v6)
  {
    if ([v6 isEqualToString:@"nominal"])
    {
      v8 = 0;
    }

    else if ([v7 isEqualToString:@"light"])
    {
      v8 = 10;
    }

    else if ([v7 isEqualToString:@"moderate"])
    {
      v8 = 20;
    }

    else if ([v7 isEqualToString:@"heavy"])
    {
      v8 = 30;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = -1;
  }

  v9 = [(PLPowerMetricMonitorService *)self metrics];
  [v9 setInducedThermalPressure:v8];
}

uint64_t __61__PLPowerMetricMonitorService__updateMetricsWithThermalState__block_invoke()
{
  notify_register_check(*MEMORY[0x277D85E48], &_updateMetricsWithThermalState_thermalStateToken);
  _updateMetricsWithThermalState_cltmDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cltm"];

  return MEMORY[0x2821F96F8]();
}

- (id)_convertToWattsFromMilliwatts:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  [a3 doubleValue];
  v5 = v4 / 1000.0;

  return [v3 numberWithDouble:v5];
}

- (void)_startBrightnessTimer
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  [(PLPowerMetricMonitorService *)self _cancelBrightnessTimer];
  v4 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_INFO, "Starting timer needed for display metrics", buf, 2u);
  }

  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);
  [(PLPowerMetricMonitorService *)self setDisplayUpdatesTimer:v6];

  v7 = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];
  v8 = dispatch_time(0, 0);
  dispatch_source_set_timer(v7, v8, 0x3B9ACA00uLL, 0);

  v9 = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __52__PLPowerMetricMonitorService__startBrightnessTimer__block_invoke;
  handler[3] = &unk_279A5BDC0;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);

  v10 = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];
  dispatch_resume(v10);
}

- (void)_handleDisplayLayoutUpdate:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = [v4 elements];
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (!v7)
    {
LABEL_20:

      goto LABEL_21;
    }

    v8 = v7;
    v9 = *v35;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        [v12 frame];
        v14 = v13;
        [v12 frame];
        v10 = v10 + v14 * v15;
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);

    if (v10 != 0.0)
    {
      v16 = objc_opt_new();
      [(PLPowerMetricMonitorService *)self setScreenState:v16];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v6 = [v5 elements];
      v17 = [v6 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v6);
            }

            v21 = *(*(&v30 + 1) + 8 * j);
            v22 = [v21 bundleIdentifier];
            if (v22)
            {
              [v21 bundleIdentifier];
            }

            else
            {
              [v21 identifier];
            }
            v23 = ;

            [v21 frame];
            v25 = v24;
            [v21 frame];
            v27 = [MEMORY[0x277CCABB0] numberWithDouble:v25 * v26 / v10];
            v28 = [(PLPowerMetricMonitorService *)self screenState];
            [v28 setObject:v27 forKeyedSubscript:v23];
          }

          v18 = [v6 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v18);
      }

      goto LABEL_20;
    }
  }

LABEL_21:

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)_supportsSMCDisplayPower
{
  if (_supportsSMCDisplayPower_onceToken != -1)
  {
    [PLPowerMetricMonitorService _supportsSMCDisplayPower];
  }

  return _supportsSMCDisplayPower_smc_display_power_supported;
}

uint64_t __55__PLPowerMetricMonitorService__supportsSMCDisplayPower__block_invoke()
{
  result = [MEMORY[0x277D3F208] hasCapability:0];
  if (result)
  {
    result = [MEMORY[0x277D3F208] isiPad];
    if (result)
    {
      _supportsSMCDisplayPower_smc_display_power_supported = 1;
    }
  }

  return result;
}

- (double)_computeDisplayCostWithAvgRed:(int)a3 avgGreen:(int)a4 avgBlue:(int)a5
{
  v5 = (a4 / 255.0 * 0.25 + a3 / 255.0 * 0.31 + a5 * 0.44 / 255.0) * 600.0;
  v6 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _computeDisplayCostWithAvgRed:avgGreen:avgBlue:];
  }

  return v5;
}

- (double)_computeNetworkingCostWithWifiIn:(int)a3 wifiOut:(int)a4 cellIn:(int)a5 cellOut:(int)a6
{
  v6 = (a4 + a3 + a5 + a6);
  v7 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _computeNetworkingCostWithWifiIn:wifiOut:cellIn:cellOut:];
  }

  return v6;
}

- (double)_computeLocationCostWithWifiCost:(int)a3 gpsCost:(int)a4 cellCost:(int)a5 skyhookCost:(int)a6
{
  if (a3 <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 50;
  }

  if (a4 <= 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 200;
  }

  v8 = v7 | v6;
  if (a5 <= 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 100;
  }

  if (a6 <= 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 50;
  }

  v11 = (v8 + v9 + v10);
  if (v11 < 50.0)
  {
    v11 = 50.0;
  }

  v12 = fmin(v11, 200.0);
  v13 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _computeLocationCostWithWifiCost:gpsCost:cellCost:skyhookCost:];
  }

  return v12;
}

- (double)_computeGPUCostWithGPUSec:(id)a3
{
  v4 = a3;
  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v5);

  [v4 doubleValue];
  v7 = v6;

  v8 = [(PLPowerMetricMonitorService *)self currQueryTime];
  v9 = [(PLPowerMetricMonitorService *)self lastQueryTime];
  [v8 timeIntervalSinceDate:v9];
  v11 = v10;

  if (v11 * 1000000000.0 > 0.0)
  {
    v7 = fmin(v7 / (v11 * 1000000000.0) * 1000.0 * 0.5, 1000.0);
  }

  v12 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _computeGPUCostWithGPUSec:];
  }

  return v7;
}

- (double)_computeCPUCostWithCPUTicks:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v5);

  [v4 doubleValue];
  v7 = v6;

  [PLUtilities secondsFromMachTime:v7];
  v9 = v8;
  v10 = [(PLPowerMetricMonitorService *)self currQueryTime];
  v11 = [(PLPowerMetricMonitorService *)self lastQueryTime];
  [v10 timeIntervalSinceDate:v11];
  v13 = v12;

  if (v13 > 0.0)
  {
    v9 = fmin(v9 / v13 * 1000.0 * 0.5, 1000.0);
  }

  v14 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = 134217984;
    v18 = v9;
    _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_INFO, "CPU Cost=%f", &v17, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_updateDisplayMetrics
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  if ([(PLPowerMetricMonitorService *)self sampleCount])
  {
    v4 = MEMORY[0x277D3A108];
    v5 = MEMORY[0x277CCABB0];
    [(PLPowerMetricMonitorService *)self brightness];
    v7 = [v5 numberWithDouble:{v6 / -[PLPowerMetricMonitorService sampleCount](self, "sampleCount")}];
    v8 = [MEMORY[0x277CBEAA8] monotonicDate];
    v9 = [v4 sampleWithValue:v7 timestamp:v8];
    v10 = [(PLPowerMetricMonitorService *)self metrics];
    [v10 setBrightness:v9];

    v11 = MEMORY[0x277D3A108];
    v12 = MEMORY[0x277CCABB0];
    [(PLPowerMetricMonitorService *)self edrHeadroom];
    v14 = [v12 numberWithDouble:{v13 / -[PLPowerMetricMonitorService sampleCount](self, "sampleCount")}];
    v15 = [MEMORY[0x277CBEAA8] monotonicDate];
    v16 = [v11 sampleWithValue:v14 timestamp:v15];
    v17 = [(PLPowerMetricMonitorService *)self metrics];
    [v17 setEdrHeadroom:v16];

    [(PLPowerMetricMonitorService *)self brightnessSum];
    [(PLPowerMetricMonitorService *)self setBrightnessPercentage:v18 / [(PLPowerMetricMonitorService *)self sampleCount]];
    v19 = [(PLPowerMetricMonitorService *)self metrics];
    v20 = [v19 brightness];
    v21 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [v21 setBrightness:v20];

    v22 = [(PLPowerMetricMonitorService *)self metrics];
    v23 = [v22 edrHeadroom];
    v24 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [v24 setEdrHeadroom:v23];

    [(PLPowerMetricMonitorService *)self setEdrHeadroom:0.0];
    [(PLPowerMetricMonitorService *)self setBrightness:0.0];
    [(PLPowerMetricMonitorService *)self setBrightnessSum:0.0];

    [(PLPowerMetricMonitorService *)self setSampleCount:0];
  }

  else
  {
    v25 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    v26 = [v25 brightness];
    v27 = [(PLPowerMetricMonitorService *)self metrics];
    [v27 setBrightness:v26];

    v30 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    v28 = [v30 edrHeadroom];
    v29 = [(PLPowerMetricMonitorService *)self metrics];
    [v29 setEdrHeadroom:v28];
  }
}

- (void)_computeEnergyScoreForProcess
{
  v263 = *MEMORY[0x277D85DE8];
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  v229 = self;
  v4 = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v5 = [v4 count];

  if (v5)
  {
    v235 = objc_opt_new();
    v6 = objc_opt_new();
    v7 = [(PLPowerMetricMonitorService *)self costElement];

    if (!v7)
    {
      v8 = +[PLDTCostElement getCostElementInstance];
      [(PLPowerMetricMonitorService *)self setCostElement:v8];
    }

    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    v9 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v10 = [v9 allKeys];

    obj = v10;
    v223 = [v10 countByEnumeratingWithState:&v241 objects:v262 count:16];
    if (v223)
    {
      v222 = *v242;
      v228 = v6;
      do
      {
        v11 = 0;
        do
        {
          if (*v242 != v222)
          {
            objc_enumerationMutation(obj);
          }

          v226 = v11;
          v12 = *(*(&v241 + 1) + 8 * v11);
          v260[0] = @"cost";
          v13 = MEMORY[0x277CCABB0];
          v14 = [(PLPowerMetricMonitorService *)v229 metrics];
          v15 = [v14 processMetrics];
          v16 = [v15 objectForKeyedSubscript:v12];
          v17 = [v16 cpuCost];
          v18 = [v17 value];
          [v18 doubleValue];
          v19 = [v13 numberWithDouble:?];
          v260[1] = @"overhead";
          v261[0] = v19;
          v261[1] = &unk_2871458E0;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v261 forKeys:v260 count:2];
          [v228 setObject:v20 forKeyedSubscript:@"CPUCost"];

          v258[0] = @"cost";
          v21 = MEMORY[0x277CCABB0];
          v22 = [(PLPowerMetricMonitorService *)v229 metrics];
          v23 = [v22 processMetrics];
          v24 = [v23 objectForKeyedSubscript:v12];
          v25 = [v24 networkCost];
          v26 = [v25 value];
          [v26 doubleValue];
          v27 = [v21 numberWithDouble:?];
          v258[1] = @"overhead";
          v259[0] = v27;
          v259[1] = &unk_2871458E0;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v259 forKeys:v258 count:2];
          [v228 setObject:v28 forKeyedSubscript:@"NetworkCost"];

          v256[0] = @"cost";
          v29 = MEMORY[0x277CCABB0];
          v30 = [(PLPowerMetricMonitorService *)v229 metrics];
          v31 = [v30 processMetrics];
          v32 = [v31 objectForKeyedSubscript:v12];
          v33 = [v32 locationCost];
          v34 = [v33 value];
          [v34 doubleValue];
          v35 = [v29 numberWithDouble:?];
          v256[1] = @"overhead";
          v257[0] = v35;
          v257[1] = &unk_2871458E0;
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v257 forKeys:v256 count:2];
          [v228 setObject:v36 forKeyedSubscript:@"LocationCost"];

          v254[0] = @"cost";
          v37 = MEMORY[0x277CCABB0];
          v38 = [(PLPowerMetricMonitorService *)v229 metrics];
          v39 = [v38 processMetrics];
          v40 = [v39 objectForKeyedSubscript:v12];
          v41 = [v40 applicationState];
          v42 = [v41 value];
          [v42 doubleValue];
          v43 = [v37 numberWithDouble:?];
          v254[1] = @"overhead";
          v255[0] = v43;
          v255[1] = &unk_2871458E0;
          v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v255 forKeys:v254 count:2];
          [v228 setObject:v44 forKeyedSubscript:@"CurrentApplicationState"];

          v252[0] = @"cost";
          v45 = MEMORY[0x277CCABB0];
          v46 = [(PLPowerMetricMonitorService *)v229 metrics];
          v47 = [v46 processMetrics];
          v231 = v12;
          v48 = [v47 objectForKeyedSubscript:v12];
          v49 = [v48 gpuCost];
          v50 = [v49 value];
          [v50 doubleValue];
          v51 = [v45 numberWithDouble:?];
          v252[1] = @"overhead";
          v253[0] = v51;
          v253[1] = &unk_2871458E0;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v253 forKeys:v252 count:2];
          [v228 setObject:v52 forKeyedSubscript:@"GPUCost"];

          v6 = v228;
          v250[0] = @"cost";
          v53 = MEMORY[0x277CCABB0];
          v54 = [(PLPowerMetricMonitorService *)v229 metrics];
          v55 = [v53 numberWithInteger:{objc_msgSend(v54, "thermalPressure")}];
          v250[1] = @"overhead";
          v251[0] = v55;
          v251[1] = &unk_2871458E0;
          v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v251 forKeys:v250 count:2];
          [v228 setObject:v56 forKeyedSubscript:@"CurrentThermalState"];

          v57 = [(PLPowerMetricMonitorService *)v229 metrics];
          v58 = [v57 inducedThermalPressure];

          if (v58 == -1)
          {
            v61 = 0;
          }

          else
          {
            v59 = MEMORY[0x277CCABB0];
            v60 = [(PLPowerMetricMonitorService *)v229 metrics];
            v61 = [v59 numberWithInteger:{objc_msgSend(v60, "inducedThermalPressure")}];
          }

          if (v61)
          {
            v62 = v61;
          }

          else
          {
            v62 = &unk_2871458F8;
          }

          v248[0] = @"cost";
          v248[1] = @"overhead";
          v249[0] = v62;
          v249[1] = &unk_2871458F8;
          v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v249 forKeys:v248 count:2];
          [v228 setObject:v63 forKeyedSubscript:@"InducedThermalState"];

          if ([MEMORY[0x277D3F208] hasCapability:0])
          {
            v64 = [(PLPowerMetricMonitorService *)v229 metrics];
            v65 = [v64 processMetrics];
            v66 = [v65 objectForKeyedSubscript:v231];
            v67 = [v66 applicationState];
            v68 = [v67 value];
            [v68 doubleValue];
            v70 = v69;

            if (v70 == 8.0)
            {
              v71 = MEMORY[0x277CCABB0];
              v72 = [(PLPowerMetricMonitorService *)v229 metrics];
              v73 = [v72 displayCost];
              v74 = [v73 value];
              [v74 doubleValue];
              v75 = [v71 numberWithDouble:?];
            }

            else
            {
              v75 = 0;
            }

            v224 = v75;
            if (v75)
            {
              v76 = v75;
            }

            else
            {
              v76 = &unk_2871458E0;
            }

            v246[0] = @"cost";
            v246[1] = @"overhead";
            v247[0] = v76;
            v247[1] = &unk_2871458E0;
            v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v247 forKeys:v246 count:2];
            [v228 setObject:v77 forKeyedSubscript:@"DisplayCost"];
          }

          else
          {
            v224 = 0;
          }

          v239 = 0u;
          v240 = 0u;
          v237 = 0u;
          v238 = 0u;
          v227 = [(PLPowerMetricMonitorService *)v229 energyScoringEntities];
          v233 = [v227 countByEnumeratingWithState:&v237 objects:v245 count:16];
          v225 = v61;
          if (!v233)
          {
            v78 = 0.0;
            v79 = 0.0;
            goto LABEL_59;
          }

          v232 = *v238;
          v78 = 0.0;
          v79 = 0.0;
          do
          {
            v80 = 0;
            do
            {
              if (*v238 != v232)
              {
                objc_enumerationMutation(v227);
              }

              v81 = *(*(&v237 + 1) + 8 * v80);
              v82 = [v6 objectForKey:v81];

              if (v82)
              {
                v236 = v80;
                v234 = v81;
                if ([v81 isEqualToString:@"NetworkCost"])
                {
                  v83 = [(PLPowerMetricMonitorService *)v229 costElement];
                  v84 = [v6 objectForKeyedSubscript:@"NetworkCost"];
                  v85 = [v84 objectForKeyedSubscript:@"cost"];
                  [v85 doubleValue];
                  v87 = v86;
                  v88 = [(PLPowerMetricMonitorService *)v229 lastQueryTime];
                  [v83 addNetworkingEvent:v88 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:8 withQueryCount:{-[PLPowerMetricMonitorService lastQueryCount](v229, "lastQueryCount"), v87}];

                  v230 = [(PLPowerMetricMonitorService *)v229 costElement];
                  v89 = [(PLPowerMetricMonitorService *)v229 currQueryTime];
                  v90 = [v231 intValue];
                  v91 = [(PLPowerMetricMonitorService *)v229 trackedProcesses];
                  v92 = [v91 objectForKeyedSubscript:v231];
                  v93 = [v92 lastActiveStart];
                  v94 = [(PLPowerMetricMonitorService *)v229 trackedProcesses];
                  v95 = [v94 objectForKeyedSubscript:v231];
                  v96 = [v95 lastSuspendStart];
                  v97 = [v230 getNetworkingCostUptoTime:v89 withPid:v90 withLastActiveStart:v93 withLastSuspendStart:v96 withAppState:8 withQueryCount:{-[PLPowerMetricMonitorService currQueryCount](v229, "currQueryCount")}];
                  [v235 setObject:v97 forKeyedSubscript:@"NetworkCost"];

                  v98 = [v235 objectForKeyedSubscript:@"NetworkCost"];
                  v99 = [v98 objectForKeyedSubscript:@"cost"];
                  [v99 doubleValue];
                  v79 = v79 + v100;

                  v101 = [v235 objectForKeyedSubscript:@"NetworkCost"];
                  v102 = [v101 objectForKeyedSubscript:@"overhead"];
                  [v102 doubleValue];
                  v78 = v78 + v103;

                  v104 = MEMORY[0x277D3A108];
                  v105 = MEMORY[0x277CCABB0];
                  v106 = [v235 objectForKeyedSubscript:@"NetworkCost"];
                  v107 = [v106 objectForKeyedSubscript:@"cost"];
                  [v107 doubleValue];
                  v108 = [v105 numberWithDouble:?];
                  v109 = [(PLPowerMetricMonitorService *)v229 trackedProcesses];
                  v110 = [v109 objectForKeyedSubscript:v231];
                  v111 = [v110 lastActiveStart];
                  v112 = [v104 sampleWithValue:v108 timestamp:v111];
                  v113 = v106;
                  v114 = [(PLPowerMetricMonitorService *)v229 metrics];
                  v115 = [v114 processMetrics];
                  v116 = [v115 objectForKeyedSubscript:v231];
                  [v116 setNetworkCost:v112];

                  v81 = v234;
                  v6 = v228;

                  goto LABEL_40;
                }

                if ([v81 isEqualToString:@"LocationCost"])
                {
                  v117 = [(PLPowerMetricMonitorService *)v229 costElement];
                  v118 = [v6 objectForKeyedSubscript:@"LocationCost"];
                  v119 = [v118 objectForKeyedSubscript:@"cost"];
                  [v119 doubleValue];
                  v121 = v120;
                  v122 = [(PLPowerMetricMonitorService *)v229 lastQueryTime];
                  [v117 addLocationEvent:v122 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:{8, v121}];

                  v123 = [(PLPowerMetricMonitorService *)v229 costElement];
                  v124 = [(PLPowerMetricMonitorService *)v229 currQueryTime];
                  v125 = [v231 intValue];
                  v126 = [(PLPowerMetricMonitorService *)v229 trackedProcesses];
                  v127 = [v126 objectForKeyedSubscript:v231];
                  v128 = [v127 lastActiveStart];
                  v129 = [(PLPowerMetricMonitorService *)v229 trackedProcesses];
                  v130 = [v129 objectForKeyedSubscript:v231];
                  v131 = [v130 lastSuspendStart];
                  v132 = [v123 getLocationCostUptoTime:v124 withPid:v125 withLastActiveStart:v128 withLastSuspendStart:v131 withAppState:8];
                  v133 = v235;
                  [v235 setObject:v132 forKeyedSubscript:@"LocationCost"];

                  v6 = v228;
                  v134 = v235;
                  v135 = @"LocationCost";
                  goto LABEL_34;
                }

                if ([v81 isEqualToString:@"CPUCost"])
                {
                  v141 = [(PLPowerMetricMonitorService *)v229 costElement];
                  v142 = [v6 objectForKeyedSubscript:@"CPUCost"];
                  v143 = [v142 objectForKeyedSubscript:@"cost"];
                  [v143 doubleValue];
                  v145 = v144;
                  v146 = [(PLPowerMetricMonitorService *)v229 lastQueryTime];
                  [v141 addCpuEvent:v146 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:{8, v145}];

                  v147 = [(PLPowerMetricMonitorService *)v229 costElement];
                  v148 = [(PLPowerMetricMonitorService *)v229 currQueryTime];
                  v149 = [v231 intValue];
                  v150 = [(PLPowerMetricMonitorService *)v229 trackedProcesses];
                  v151 = [v150 objectForKeyedSubscript:v231];
                  v152 = [v151 lastActiveStart];
                  v153 = [(PLPowerMetricMonitorService *)v229 trackedProcesses];
                  v154 = [v153 objectForKeyedSubscript:v231];
                  v155 = [v154 lastSuspendStart];
                  v156 = [v147 getCpuCostUptoTime:v148 withPid:v149 withLastActiveStart:v152 withLastSuspendStart:v155 withAppState:8];
                  [v235 setObject:v156 forKeyedSubscript:@"CPUCost"];

                  v6 = v228;
                  v157 = [v235 objectForKeyedSubscript:@"CPUCost"];
                  v158 = [v157 objectForKeyedSubscript:@"cost"];
                  [v158 doubleValue];
                  v79 = v79 + v159;

                  v81 = v234;
                  v139 = v235;
                  v140 = @"CPUCost";
                  goto LABEL_39;
                }

                if ([v81 isEqualToString:@"GPUCost"])
                {
                  v160 = [(PLPowerMetricMonitorService *)v229 costElement];
                  v161 = [v6 objectForKeyedSubscript:@"GPUCost"];
                  v162 = [v161 objectForKeyedSubscript:@"cost"];
                  [v162 doubleValue];
                  v164 = v163;
                  v165 = [(PLPowerMetricMonitorService *)v229 lastQueryTime];
                  [v160 addGpuEvent:v165 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:{8, v164}];

                  v166 = [(PLPowerMetricMonitorService *)v229 costElement];
                  v167 = [(PLPowerMetricMonitorService *)v229 currQueryTime];
                  v168 = [v231 intValue];
                  v169 = [(PLPowerMetricMonitorService *)v229 trackedProcesses];
                  v170 = [v169 objectForKeyedSubscript:v231];
                  v171 = [v170 lastActiveStart];
                  v172 = [(PLPowerMetricMonitorService *)v229 trackedProcesses];
                  v173 = [v172 objectForKeyedSubscript:v231];
                  v174 = [v173 lastSuspendStart];
                  v175 = [v166 getGpuCostUptoTime:v167 withPid:v168 withLastActiveStart:v171 withLastSuspendStart:v174 withAppState:8];
                  [v235 setObject:v175 forKeyedSubscript:@"GPUCost"];

                  v6 = v228;
                  v176 = [v235 objectForKeyedSubscript:@"GPUCost"];
                  v177 = [v176 objectForKeyedSubscript:@"cost"];
                  [v177 doubleValue];
                  v79 = v79 + v178;

                  v81 = v234;
                  v139 = v235;
                  v140 = @"GPUCost";
                  goto LABEL_39;
                }

                if ([MEMORY[0x277D3F208] hasCapability:0] && objc_msgSend(v81, "isEqualToString:", @"DisplayCost"))
                {
                  v189 = [(PLPowerMetricMonitorService *)v229 costElement];
                  v190 = [v6 objectForKeyedSubscript:@"DisplayCost"];
                  v191 = [v190 objectForKeyedSubscript:@"cost"];
                  [v191 doubleValue];
                  v193 = v192;
                  v194 = [(PLPowerMetricMonitorService *)v229 lastQueryTime];
                  [v189 addDisplayEvent:v194 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:{8, v193}];

                  v195 = [(PLPowerMetricMonitorService *)v229 costElement];
                  v196 = [(PLPowerMetricMonitorService *)v229 currQueryTime];
                  v197 = [v231 intValue];
                  v198 = [(PLPowerMetricMonitorService *)v229 trackedProcesses];
                  v199 = [v198 objectForKeyedSubscript:v231];
                  v200 = [v199 lastActiveStart];
                  v201 = [(PLPowerMetricMonitorService *)v229 trackedProcesses];
                  v202 = [v201 objectForKeyedSubscript:v231];
                  v203 = [v202 lastSuspendStart];
                  v204 = [v195 getDisplayCostUptoTime:v196 withPid:v197 withLastActiveStart:v200 withLastSuspendStart:v203 withAppState:8];
                  v133 = v235;
                  [v235 setObject:v204 forKeyedSubscript:@"DisplayCost"];

                  v6 = v228;
                  v134 = v235;
                  v135 = @"DisplayCost";
LABEL_34:
                  v136 = [v134 objectForKeyedSubscript:v135];
                  v137 = [v136 objectForKeyedSubscript:@"cost"];
                  [v137 doubleValue];
                  v79 = v79 + v138;

                  v81 = v234;
                  v139 = v133;
                  v140 = v135;
LABEL_39:
                  v113 = [v139 objectForKeyedSubscript:v140];
                  v179 = [v113 objectForKeyedSubscript:@"overhead"];
                  [v179 doubleValue];
                  v78 = v78 + v180;
                }

                else
                {
                  v113 = [v6 objectForKeyedSubscript:v81];
                  [v235 setObject:v113 forKeyedSubscript:v81];
                }

LABEL_40:

                if ([v81 isEqualToString:@"CurrentApplicationState"])
                {
                  v181 = [v235 objectForKeyedSubscript:v81];
                  v182 = [v181 objectForKeyedSubscript:@"cost"];
                  [v182 doubleValue];
                  if (v183 == 4.0 || ([v81 isEqualToString:@"CurrentThermalState"] & 1) == 0)
                  {
                  }

                  else
                  {
                    v184 = [v81 isEqualToString:@"InducedThermalState"];

                    if (v184)
                    {
LABEL_49:
                      v80 = v236;
                      goto LABEL_50;
                    }
                  }
                }

                if ([v81 isEqualToString:@"CurrentApplicationState"])
                {
                  v185 = [v235 objectForKeyedSubscript:v81];
                  v186 = [v185 objectForKeyedSubscript:@"cost"];
                  [v186 doubleValue];
                  v188 = v187;

                  if (v188 == 4.0)
                  {
                    v79 = v79 + 200.0;
                  }
                }

                goto LABEL_49;
              }

LABEL_50:
              ++v80;
            }

            while (v233 != v80);
            v205 = [v227 countByEnumeratingWithState:&v237 objects:v245 count:16];
            v233 = v205;
          }

          while (v205);
LABEL_59:

          v206 = MEMORY[0x277D3A108];
          v207 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
          v208 = [MEMORY[0x277CBEAA8] monotonicDate];
          v209 = [v206 sampleWithValue:v207 timestamp:v208];
          v210 = [(PLPowerMetricMonitorService *)v229 metrics];
          v211 = [v210 processMetrics];
          v212 = [v211 objectForKeyedSubscript:v231];
          [v212 setEnergyCost:v209];

          v213 = MEMORY[0x277D3A108];
          v214 = [MEMORY[0x277CCABB0] numberWithDouble:v78];
          v215 = [MEMORY[0x277CBEAA8] monotonicDate];
          v216 = [v213 sampleWithValue:v214 timestamp:v215];
          v217 = [(PLPowerMetricMonitorService *)v229 metrics];
          v218 = [v217 processMetrics];
          v219 = [v218 objectForKeyedSubscript:v231];
          [v219 setEnergyOverhead:v216];

          v11 = v226 + 1;
        }

        while (v226 + 1 != v223);
        v223 = [obj countByEnumeratingWithState:&v241 objects:v262 count:16];
      }

      while (v223);
    }
  }

  else
  {
    v235 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
    {
      [PLPowerMetricMonitorService _parseProcessNetworkMetricsFromEntry:];
    }
  }

  v220 = *MEMORY[0x277D85DE8];
}

- (BOOL)_pidIsValid:(int)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    result = 0;
  }

  else
  {
    v4 = proc_listpids(1u, 0, 0, 0);
    memset(__b, 255, sizeof(__b));
    proc_listpids(1u, 0, __b, 4096);
    result = 0;
    if (v4 >= 4)
    {
      v6 = 0;
      do
      {
        v7 = __b[v6];
        result = v7 == a3;
        if (v7 == a3)
        {
          break;
        }

        if (v6 > 0x3FE)
        {
          break;
        }

        ++v6;
      }

      while (v4 >> 2 > v6);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_startMetricCollectionTimerWithInterval:(double)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v7);

  [(PLPowerMetricMonitorService *)self _cancelMetricCollectionTimer];
  if (a3 >= 0.2)
  {
    v9 = [(PLPowerMetricMonitorService *)self monitorQueue];
    v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v9);
    [(PLPowerMetricMonitorService *)self setMetricCollectionRepeatingTimer:v10];

    v11 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
    dispatch_source_set_timer(v11, 0, (a3 * 1000000000.0), 0x989680uLL);

    v12 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
    dispatch_source_set_event_handler(v12, v6);

    v8 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
    dispatch_resume(v8);
  }

  else
  {
    v8 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [PLPowerMetricMonitorService _startMetricCollectionTimerWithInterval:block:];
    }
  }
}

- (void)setMetricCollectionTimerUpdateInterval:(double)a3
{
  v5 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v5);

  if (a3 >= 0.2)
  {
    v7 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];

    if (v7)
    {
      v8 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
      dispatch_source_set_timer(v8, 0, (a3 * 1000000000.0), 0x989680uLL);
    }
  }

  else
  {
    v6 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [PLPowerMetricMonitorService _startMetricCollectionTimerWithInterval:block:];
    }
  }
}

- (void)_cancelMetricCollectionTimer
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];

  if (v4)
  {
    v5 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
    dispatch_source_cancel(v5);

    [(PLPowerMetricMonitorService *)self setMetricCollectionRepeatingTimer:0];
  }
}

- (void)_startMetricCollectionTimeoutTimerWithTimeout:(double)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v7);

  [(PLPowerMetricMonitorService *)self _cancelMetricCollectionTimeoutTimer];
  v8 = [(PLPowerMetricMonitorService *)self monitorQueue];
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);
  [(PLPowerMetricMonitorService *)self setMetricCollectionTimeoutTimer:v9];

  v10 = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];
  v11 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);

  v12 = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];
  dispatch_source_set_event_handler(v12, v6);

  v13 = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];
  dispatch_resume(v13);
}

- (void)_cancelMetricCollectionTimeoutTimer
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];

  if (v4)
  {
    v5 = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];
    dispatch_source_cancel(v5);

    [(PLPowerMetricMonitorService *)self setMetricCollectionTimeoutTimer:0];
  }
}

- (void)_cancelBrightnessTimer
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_INFO, "Cancelling timer needed for display metrics", v7, 2u);
  }

  v5 = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];

  if (v5)
  {
    v6 = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];
    dispatch_source_cancel(v6);

    [(PLPowerMetricMonitorService *)self setDisplayUpdatesTimer:0];
  }

  [(PLPowerMetricMonitorService *)self setBrightness:0.0];
  [(PLPowerMetricMonitorService *)self setBrightnessPercentage:0.0];
  [(PLPowerMetricMonitorService *)self setBrightnessSum:0.0];
  [(PLPowerMetricMonitorService *)self setSampleCount:0];
  [(PLPowerMetricMonitorService *)self setEdrHeadroom:0.0];
}

- (BOOL)_supportsGPUCoalitions
{
  if (_supportsGPUCoalitions_onceToken != -1)
  {
    [PLPowerMetricMonitorService _supportsGPUCoalitions];
  }

  return _supportsGPUCoalitions_gpu_coliations_supported;
}

uint64_t __53__PLPowerMetricMonitorService__supportsGPUCoalitions__block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  if (result == 1001018 || (result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice], result == 1001019) || (result = objc_msgSend(MEMORY[0x277D3F208], "kPLSoCClassOfDevice"), result > 1001020))
  {
    _supportsGPUCoalitions_gpu_coliations_supported = 1;
  }

  return result;
}

- (double)_getGPUTotalTime
{
  v2 = proc_listcoalitions();
  v3 = malloc_type_malloc(2 * v2, 0x1000040451B5BE8uLL);
  v4 = proc_listcoalitions();
  if (v4 > 2 * v2)
  {
    v5 = -1.0;
    if (!v3)
    {
      return v5;
    }

    goto LABEL_18;
  }

  v5 = 0.0;
  if (v4 >= 0x10)
  {
    if (v4 >> 4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 >> 4;
    }

    v7 = v3;
    do
    {
      v8 = malloc_type_malloc(0x168uLL, 0x1000040DAE56E47uLL);
      v9 = *v7;
      v7 += 2;
      if (coalition_info_resource_usage())
      {
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v5 = v5 + v8[8];
      }

      free(v8);
LABEL_14:
      --v6;
    }

    while (v6);
  }

  v10 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _getGPUTotalTime];
  }

  if (v3)
  {
LABEL_18:
    free(v3);
  }

  return v5;
}

- (void)_sampleGPUTime
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  [(PLPowerMetricMonitorService *)self _getGPUTotalTime];
  v5 = v4;
  [(PLPowerMetricMonitorService *)self prevGpuTotalTime];
  if (v6 != 0.0)
  {
    [(PLPowerMetricMonitorService *)self prevGpuTotalTime];
    [(PLPowerMetricMonitorService *)self setGpuTotalTime:v5 - v7];
  }

  [(PLPowerMetricMonitorService *)self setPrevGpuTotalTime:v5];
}

- (void)_sampleCoalitions
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke;
    v7[3] = &unk_279A5C448;
    v7[4] = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = malloc_type_malloc(0x168uLL, 0x1000040DAE56E47uLL);
  [v6 coalitionID];
  if (!coalition_info_resource_usage())
  {
    v9 = objc_alloc_init(PLCoalitionSample);
    [(PLCoalitionSample *)v9 setInstructions:v7[31]];
    [(PLCoalitionSample *)v9 setPInstructions:v7[35]];
    [(PLCoalitionSample *)v9 setBytesread:v7[6]];
    [(PLCoalitionSample *)v9 setByteswritten:v7[7]];
    [(PLCoalitionSample *)v9 setGpuTime:v7[8]];
    [(PLCoalitionSample *)v9 setGpuEnergy:v7[42] + v7[41] - v7[43]];
    [(PLCoalitionSample *)v9 setCpuTime:v7[9] + v7[3] - v7[10]];
    [(PLCoalitionSample *)v9 setAneEnergy:v7[39]];
    [(PLCoalitionSample *)v9 setAneTime:v7[38]];
    [(PLCoalitionSample *)v9 setCpuEnergy:v7[20] + v7[11] - v7[21]];
    [(PLCoalitionSample *)v9 setQOSUtility:v7[27]];
    [(PLCoalitionSample *)v9 setQOSBackground:v7[26]];
    [(PLCoalitionSample *)v9 setQOSUserInitiated:v7[29]];
    [(PLCoalitionSample *)v9 setQOSUserInteractive:v7[30]];
    [(PLCoalitionSample *)v9 setQOSDefault:v7[28]];
    [(PLCoalitionSample *)v9 setQOSMaintenance:v7[25]];
    [(PLCoalitionSample *)v9 setQOSUnspecified:v7[24]];
    v10 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_2();
    }

    v11 = [v6 coalitionSample];
    v12 = PLLogPowerMetricMonitor();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      v156 = v6;
      if (v13)
      {
        __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_3();
      }

      v14 = [(PLCoalitionSample *)v9 instructions];
      v145 = v14 - [v11 instructions];
      v15 = [(PLCoalitionSample *)v9 pInstructions];
      v141 = v15 - [v11 pInstructions];
      v16 = [(PLCoalitionSample *)v9 bytesread];
      v137 = v16 - [v11 bytesread];
      v17 = [(PLCoalitionSample *)v9 byteswritten];
      v133 = v17 - [v11 byteswritten];
      v18 = [(PLCoalitionSample *)v9 gpuTime];
      v19 = v18 - [v11 gpuTime];
      v20 = [(PLCoalitionSample *)v9 gpuEnergy];
      v129 = v20 - [v11 gpuEnergy];
      v21 = [(PLCoalitionSample *)v9 cpuTime];
      v22 = v21 - [v11 cpuTime];
      v23 = [(PLCoalitionSample *)v9 aneEnergy];
      v127 = v23 - [v11 aneEnergy];
      v24 = [(PLCoalitionSample *)v9 aneTime];
      v125 = v24 - [v11 aneTime];
      v25 = [(PLCoalitionSample *)v9 cpuEnergy];
      v131 = v25 - [v11 cpuEnergy];
      v26 = [(PLCoalitionSample *)v9 QOSUtility];
      v135 = v26 - [v11 QOSUtility];
      v27 = [(PLCoalitionSample *)v9 QOSBackground];
      v139 = v27 - [v11 QOSBackground];
      v28 = [(PLCoalitionSample *)v9 QOSUserInitiated];
      v143 = v28 - [v11 QOSUserInitiated];
      v29 = [(PLCoalitionSample *)v9 QOSUserInteractive];
      v147 = v29 - [v11 QOSUserInteractive];
      v30 = [(PLCoalitionSample *)v9 QOSDefault];
      v149 = v30 - [v11 QOSDefault];
      v31 = [(PLCoalitionSample *)v9 QOSMaintenance];
      v151 = v31 - [v11 QOSMaintenance];
      v32 = [(PLCoalitionSample *)v9 QOSUnspecified];
      v153 = v32 - [v11 QOSUnspecified];
      v124 = [MEMORY[0x277CBEAA8] monotonicDate];
      v158 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19];
      v154 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22];
      v33 = MEMORY[0x277CCABB0];
      [*(a1 + 32) _computeGPUCostWithGPUSec:v158];
      v152 = [v33 numberWithDouble:?];
      v34 = MEMORY[0x277CCABB0];
      [*(a1 + 32) _computeCPUCostWithCPUTicks:v154];
      v157 = [v34 numberWithDouble:?];
      v35 = MEMORY[0x277CCABB0];
      v36 = [*(a1 + 32) currQueryTime];
      v37 = [*(a1 + 32) lastQueryTime];
      [v36 timeIntervalSinceDate:v37];
      v38 = [v35 numberWithDouble:?];
      v39 = [*(a1 + 32) metrics];
      [v39 processMetrics];
      v40 = v155 = v11;
      [v40 objectForKeyedSubscript:v5];
      v41 = v159 = v5;
      [v41 setSampleTime:v38];

      v42 = [MEMORY[0x277D3A108] sampleWithValue:v152 timestamp:v124];
      v43 = [*(a1 + 32) metrics];
      v44 = [v43 processMetrics];
      v45 = [v44 objectForKeyedSubscript:v159];
      [v45 setGpuCost:v42];

      v46 = [MEMORY[0x277D3A108] sampleWithValue:v157 timestamp:v124];
      v47 = [*(a1 + 32) metrics];
      v48 = [v47 processMetrics];
      v49 = [v48 objectForKeyedSubscript:v159];
      [v49 setCpuCost:v46];

      v50 = [MEMORY[0x277D3A108] sampleWithValue:v158 timestamp:v124];
      v51 = [*(a1 + 32) metrics];
      v52 = [v51 processMetrics];
      v53 = [v52 objectForKeyedSubscript:v159];
      [v53 setGpuTime:v50];

      v146 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v145];
      v54 = [MEMORY[0x277D3A108] sampleWithValue:v146 timestamp:v124];
      v55 = [*(a1 + 32) metrics];
      v56 = [v55 processMetrics];
      v57 = [v56 objectForKeyedSubscript:v159];
      [v57 setCpuInstructions:v54];

      v142 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v141];
      v58 = [MEMORY[0x277D3A108] sampleWithValue:v142 timestamp:v124];
      v59 = [*(a1 + 32) metrics];
      v60 = [v59 processMetrics];
      v61 = [v60 objectForKeyedSubscript:v159];
      [v61 setCpuPInstructions:v58];

      v138 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v137];
      v62 = [MEMORY[0x277D3A108] sampleWithValue:v138 timestamp:v124];
      v63 = [*(a1 + 32) metrics];
      v64 = [v63 processMetrics];
      v65 = [v64 objectForKeyedSubscript:v159];
      [v65 setBytesRead:v62];

      v134 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v133];
      v66 = [MEMORY[0x277D3A108] sampleWithValue:v134 timestamp:v124];
      v67 = [*(a1 + 32) metrics];
      v68 = [v67 processMetrics];
      v69 = [v68 objectForKeyedSubscript:v159];
      [v69 setBytesWritten:v66];

      v128 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v127];
      v70 = [MEMORY[0x277D3A108] sampleWithValue:v128 timestamp:v124];
      v71 = [*(a1 + 32) metrics];
      v72 = [v71 processMetrics];
      v73 = [v72 objectForKeyedSubscript:v159];
      [v73 setAneEnergy:v70];

      v74 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v125];
      v126 = [v74 numberWithDouble:?];
      v75 = [MEMORY[0x277D3A108] sampleWithValue:v126 timestamp:v124];
      v76 = [*(a1 + 32) metrics];
      v77 = [v76 processMetrics];
      v78 = [v77 objectForKeyedSubscript:v159];
      [v78 setAneTime:v75];

      v130 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v129];
      v79 = [MEMORY[0x277D3A108] sampleWithValue:v130 timestamp:v124];
      v80 = [*(a1 + 32) metrics];
      v81 = [v80 processMetrics];
      v82 = [v81 objectForKeyedSubscript:v159];
      [v82 setGpuEnergy:v79];

      v132 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v131];
      v83 = [MEMORY[0x277D3A108] sampleWithValue:v132 timestamp:v124];
      v84 = [*(a1 + 32) metrics];
      v85 = [v84 processMetrics];
      v86 = [v85 objectForKeyedSubscript:v159];
      [v86 setCpuEnergy:v83];

      v87 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v135];
      v136 = [v87 numberWithDouble:?];
      v88 = [MEMORY[0x277D3A108] sampleWithValue:v136 timestamp:v124];
      v89 = [*(a1 + 32) metrics];
      v90 = [v89 processMetrics];
      v91 = [v90 objectForKeyedSubscript:v159];
      [v91 setQosUtility:v88];

      v92 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v139];
      v140 = [v92 numberWithDouble:?];
      v93 = [MEMORY[0x277D3A108] sampleWithValue:v140 timestamp:v124];
      v94 = [*(a1 + 32) metrics];
      v95 = [v94 processMetrics];
      v96 = [v95 objectForKeyedSubscript:v159];
      [v96 setQosBackground:v93];

      v97 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v143];
      v144 = [v97 numberWithDouble:?];
      v98 = [MEMORY[0x277D3A108] sampleWithValue:v144 timestamp:v124];
      v99 = [*(a1 + 32) metrics];
      v100 = [v99 processMetrics];
      v101 = [v100 objectForKeyedSubscript:v159];
      [v101 setQosUserInitiated:v98];

      v102 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v147];
      v148 = [v102 numberWithDouble:?];
      v103 = [MEMORY[0x277D3A108] sampleWithValue:v148 timestamp:v124];
      v104 = [*(a1 + 32) metrics];
      v105 = [v104 processMetrics];
      v106 = [v105 objectForKeyedSubscript:v159];
      [v106 setQosUserInteractive:v103];

      v107 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v149];
      v150 = [v107 numberWithDouble:?];
      v108 = [MEMORY[0x277D3A108] sampleWithValue:v150 timestamp:v124];
      v109 = [*(a1 + 32) metrics];
      v110 = [v109 processMetrics];
      v111 = [v110 objectForKeyedSubscript:v159];
      [v111 setQosDefault:v108];

      v112 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v151];
      v113 = [v112 numberWithDouble:?];
      v114 = [MEMORY[0x277D3A108] sampleWithValue:v113 timestamp:v124];
      v115 = [*(a1 + 32) metrics];
      v116 = [v115 processMetrics];
      v117 = [v116 objectForKeyedSubscript:v159];
      [v117 setQosMaintenance:v114];

      v118 = MEMORY[0x277CCABB0];
      [PLUtilities secondsFromMachTime:v153];
      v119 = [v118 numberWithDouble:?];
      v120 = [MEMORY[0x277D3A108] sampleWithValue:v119 timestamp:v124];
      v12 = v124;
      v121 = [*(a1 + 32) metrics];
      v122 = [v121 processMetrics];
      v123 = [v122 objectForKeyedSubscript:v159];
      [v123 setQosUnspecified:v120];

      v11 = v155;
      v5 = v159;

      v6 = v156;
    }

    else if (v13)
    {
      __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_4();
    }

    [v6 setCoalitionSample:v9];
    goto LABEL_15;
  }

  v8 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_1();
  }

  if (v7)
  {
LABEL_15:
    free(v7);
  }
}

- (void)_calculateAccumSystemLoad:(id)a3
{
  v4 = a3;
  [(PLPowerMetricMonitorService *)self accumSystemLoad];
  v6 = v5;
  v7 = [v4 objectForKeyedSubscript:@"zSLa"];
  v8 = [v4 objectForKeyedSubscript:@"zSLc"];
  if (v6 != 0.0)
  {
    v9 = MEMORY[0x277CCABB0];
    [v7 doubleValue];
    v11 = v10;
    [(PLPowerMetricMonitorService *)self accumSystemLoad];
    v13 = [v9 numberWithDouble:v11 - v12];
    v14 = MEMORY[0x277CCABB0];
    [v8 doubleValue];
    v16 = v15;
    [(PLPowerMetricMonitorService *)self accumSystemLoadCount];
    v18 = [v14 numberWithDouble:v16 - v17];
    [v18 doubleValue];
    v20 = v19;
    [v13 doubleValue];
    if (v20 == 0.0 || v21 == 0.0)
    {
      v35 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [PLPowerMetricMonitorService _calculateAccumSystemLoad:];
      }

      v29 = [v4 objectForKeyedSubscript:@"zSLi"];
    }

    else
    {
      [v18 doubleValue];
      v23 = v22;
      [v13 doubleValue];
      if (v23 < 0.0 || v24 < 0.0)
      {
        v41 = PLLogPowerMetricMonitor();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [PLPowerMetricMonitorService _calculateAccumSystemLoad:];
        }

        v42 = [(PLPowerMetricMonitorService *)self metrics];
        [v42 setAccumSystemLoad:0];

        v30 = 0;
        goto LABEL_15;
      }

      v25 = MEMORY[0x277CCABB0];
      [v13 doubleValue];
      v27 = v26;
      [v18 doubleValue];
      v29 = [v25 numberWithDouble:v27 / v28];
    }

    v36 = v29;
    v30 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v29];

    v37 = MEMORY[0x277D3A108];
    v38 = [v4 entryDate];
    v39 = [v37 sampleWithValue:v30 timestamp:v38];
    v40 = [(PLPowerMetricMonitorService *)self metrics];
    [v40 setAccumSystemLoad:v39];

LABEL_15:
    [v7 doubleValue];
    [(PLPowerMetricMonitorService *)self setAccumSystemLoad:?];
    [v8 doubleValue];
    [(PLPowerMetricMonitorService *)self setAccumSystemLoadCount:?];

    goto LABEL_16;
  }

  [v7 doubleValue];
  [(PLPowerMetricMonitorService *)self setAccumSystemLoad:?];
  [v8 doubleValue];
  [(PLPowerMetricMonitorService *)self setAccumSystemLoadCount:?];
  v30 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:0];
  v31 = MEMORY[0x277D3A108];
  v32 = [v4 entryDate];
  v33 = [v31 sampleWithValue:v30 timestamp:v32];
  v34 = [(PLPowerMetricMonitorService *)self metrics];
  [v34 setAccumSystemLoad:v33];

LABEL_16:
}

- (BOOL)isPluggedIn
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PLPowerMetricMonitorService_isPluggedIn__block_invoke;
  v5[3] = &unk_279A5C3D0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __42__PLPowerMetricMonitorService_isPluggedIn__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) chargerConnected];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setUpSleepWakeMonitoring
{
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_INFO, "Setting up sleep/wake monitoring.", buf, 2u);
  }

  if ([(PLPowerMetricMonitorService *)self systemPowerPortRef])
  {
    v5 = PLLogPowerMetricMonitor();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_7:

      return;
    }

    *v14 = 0;
    v6 = "Sleep/wake monitoring already set up.";
    v7 = v14;
LABEL_6:
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
    goto LABEL_7;
  }

  [(PLPowerMetricMonitorService *)self setCurrentPowerState:1];
  v8 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, "Current State Initialized: Awake", v13, 2u);
  }

  [(PLPowerMetricMonitorService *)self setRootDomainConnect:IORegisterForSystemPower(self, &self->_systemPowerPortRef, PowerChangedCallback_0, &self->_pmNotifier)];
  if ([(PLPowerMetricMonitorService *)self rootDomainConnect]&& [(PLPowerMetricMonitorService *)self systemPowerPortRef])
  {
    v9 = [(PLPowerMetricMonitorService *)self systemPowerPortRef];
    v10 = [(PLPowerMetricMonitorService *)self monitorQueue];
    IONotificationPortSetDispatchQueue(v9, v10);

    v5 = PLLogPowerMetricMonitor();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v12 = 0;
    v6 = "Successfully registered for sleep/wake notifications.";
    v7 = &v12;
    goto LABEL_6;
  }

  v11 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [PLPowerMetricMonitorService _setUpSleepWakeMonitoring];
  }

  self->_rootDomainConnect = 0;
  self->_systemPowerPortRef = 0;
  self->_pmNotifier = 0;
}

- (void)_tearDownSleepWakeMonitoring
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v3);

  v4 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_INFO, "Tearing down sleep/wake monitoring.", &v10, 2u);
  }

  if ([(PLPowerMetricMonitorService *)self systemPowerPortRef])
  {
    IONotificationPortSetDispatchQueue([(PLPowerMetricMonitorService *)self systemPowerPortRef], 0);
    IONotificationPortDestroy([(PLPowerMetricMonitorService *)self systemPowerPortRef]);
    [(PLPowerMetricMonitorService *)self setSystemPowerPortRef:0];
  }

  if ([(PLPowerMetricMonitorService *)self rootDomainConnect])
  {
    IODeregisterForSystemPower(&self->_pmNotifier);
    IOObjectRelease([(PLPowerMetricMonitorService *)self rootDomainConnect]);
    [(PLPowerMetricMonitorService *)self setRootDomainConnect:0];
    [(PLPowerMetricMonitorService *)self setPmNotifier:0];
  }

  v5 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "Sleep/wake monitoring teardown complete.", &v10, 2u);
  }

  if ([(PLPowerMetricMonitorService *)self currentPowerState])
  {
    v6 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(PLPowerMetricMonitorService *)self currentPowerState];
      v8 = "Sleeping";
      if (v7 == 1)
      {
        v8 = "Awake";
      }

      v10 = 136446210;
      v11 = v8;
      _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_INFO, "Current State Final: %{public}s", &v10, 0xCu);
    }
  }

  [(PLPowerMetricMonitorService *)self setCurrentPowerState:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handlePowerNotification:(unsigned int)a3 argument:(void *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(v7);

  v8 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _handlePowerNotification:argument:];
  }

  v9 = [(PLPowerMetricMonitorService *)self currentPowerState];
  HIDWORD(v11) = a3 + 536870288;
  LODWORD(v11) = a3 + 536870288;
  v10 = v11 >> 4;
  v12 = PLLogPowerMetricMonitor();
  v13 = v12;
  if (v10 <= 1)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_24;
      }

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      *v19 = 0;
      v14 = "SystemWillSleep received.";
    }

    else
    {
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
LABEL_23:

        [(PLPowerMetricMonitorService *)self setCurrentPowerState:2];
        IOAllowPowerChange([(PLPowerMetricMonitorService *)self rootDomainConnect], a4);
        goto LABEL_27;
      }

      *v19 = 0;
      v14 = "CanSystemSleep received.";
    }

    _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_INFO, v14, v19, 2u);
    goto LABEL_23;
  }

  switch(v10)
  {
    case 2:
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_INFO, "SystemWillNotSleep received.", v19, 2u);
      }

      if ([(PLPowerMetricMonitorService *)self currentPowerState]== 2)
      {
        [(PLPowerMetricMonitorService *)self setCurrentPowerState:1];
      }

      break;
    case 9:
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_INFO, "SystemHasPoweredOn received.", v19, 2u);
      }

      [(PLPowerMetricMonitorService *)self setCurrentPowerState:1];
      [(PLPowerMetricMonitorService *)self _calculateAndStoreSleepDuration];
      break;
    case 11:
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_INFO, "SystemWillPowerOn received.", v19, 2u);
      }

LABEL_26:

      break;
    default:
LABEL_24:
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLPowerMetricMonitorService _handlePowerNotification:argument:];
      }

      goto LABEL_26;
  }

LABEL_27:
  if ([(PLPowerMetricMonitorService *)self currentPowerState]!= v9 && [(PLPowerMetricMonitorService *)self currentPowerState])
  {
    v15 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [(PLPowerMetricMonitorService *)self currentPowerState];
      v17 = "Sleeping";
      if (v16 == 1)
      {
        v17 = "Awake";
      }

      *v19 = 136446210;
      *&v19[4] = v17;
      _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_INFO, "Current State Changed: %{public}s", v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_calculateAndStoreSleepDuration
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (unint64_t)queryLastSleepTimeMCT
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__PLPowerMetricMonitorService_queryLastSleepTimeMCT__block_invoke;
  v6[3] = &unk_279A5C3D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __52__PLPowerMetricMonitorService_queryLastSleepTimeMCT__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lastSleepTime];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)queryLastWakeTimeMCT
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(PLPowerMetricMonitorService *)self monitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__PLPowerMetricMonitorService_queryLastWakeTimeMCT__block_invoke;
  v6[3] = &unk_279A5C3D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __51__PLPowerMetricMonitorService_queryLastWakeTimeMCT__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lastWakeTime];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (timeval)lastRawSleepTime
{
  objc_copyStruct(v4, &self->_lastRawSleepTime, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.tv_usec = v3;
  result.tv_sec = v2;
  return result;
}

void __54__PLPowerMetricMonitorService_allClientsDidDisconnect__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke_273_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addMonitoredProcessWithPID:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke_cold_1(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addMonitoredProcessesWithPIDs:(void *)a3 error:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 description];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_25EE51000, a4, OS_LOG_TYPE_ERROR, "Error while trying to addMonitoredProcessWithPID: %@", a1, 0xCu);
}

void __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke_cold_2(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_registerNotificationWithAgent:type:tableName:isProcessSpecific:minRequestInterval:block:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __120__PLPowerMetricMonitorService__registerNotificationWithAgent_type_tableName_isProcessSpecific_minRequestInterval_block___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queryCurrentAudioState
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 audioIsActive];
  [a2 count];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_getCurrentPlayingSessions
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleSessionPlayingDidChange:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 userInfo];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_collectMetricsWithTimeout:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) entryKeysRequested];
  v4 = [*(a1 + 32) entryKeysCollected];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_agentDidUpdateWithEntryKey:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_parseEnergyModelOrPMPMetricsFromSample:withSampleDuration:sourceChannel:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_parseSMCMetricsFromEntry:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_parseProcessNetworkMetricsFromEntry:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_parseApplicationMetricsFromEntry:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_computeDisplayCostWithAvgRed:avgGreen:avgBlue:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_computeNetworkingCostWithWifiIn:wifiOut:cellIn:cellOut:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_computeLocationCostWithWifiCost:gpsCost:cellCost:skyhookCost:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_computeGPUCostWithGPUSec:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startMetricCollectionTimerWithInterval:block:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_7_1();
  _os_log_fault_impl(&dword_25EE51000, v0, OS_LOG_TYPE_FAULT, "Interval %f s is lower than minimum %f s; aborting", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_getGPUTotalTime
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_25EE51000, v1, OS_LOG_TYPE_DEBUG, "sampling coalitions for %@ -> %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_calculateAccumSystemLoad:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handlePowerNotification:argument:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handlePowerNotification:argument:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end