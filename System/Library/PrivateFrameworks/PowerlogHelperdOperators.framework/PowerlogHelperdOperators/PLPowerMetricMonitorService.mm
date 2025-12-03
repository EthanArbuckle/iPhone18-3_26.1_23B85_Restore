@interface PLPowerMetricMonitorService
+ (void)load;
- (BOOL)_pidIsValid:(int)valid;
- (BOOL)_queryCurrentAudioState;
- (BOOL)_supportsGPUCoalitions;
- (BOOL)_supportsSMCDisplayPower;
- (BOOL)isMonitoringMetrics;
- (BOOL)isPluggedIn;
- (PLPowerMetricMonitorService)init;
- (double)_computeCPUCostWithCPUTicks:(id)ticks;
- (double)_computeDisplayCostWithAvgRed:(int)red avgGreen:(int)green avgBlue:(int)blue;
- (double)_computeGPUCostWithGPUSec:(id)sec;
- (double)_computeLocationCostWithWifiCost:(int)cost gpsCost:(int)gpsCost cellCost:(int)cellCost skyhookCost:(int)skyhookCost;
- (double)_computeNetworkingCostWithWifiIn:(int)in wifiOut:(int)out cellIn:(int)cellIn cellOut:(int)cellOut;
- (double)_getGPUTotalTime;
- (double)_parseAverageFPS:(id)s;
- (double)batteryCapacity;
- (double)metricNormalizer;
- (id)_convertToWattsFromMilliwatts:(id)milliwatts;
- (id)_getCurrentPlayingSessions;
- (id)collectMetricsWithTimeout:(double)timeout;
- (timeval)lastRawSleepTime;
- (unint64_t)queryLastSleepTimeMCT;
- (unint64_t)queryLastWakeTimeMCT;
- (void)_accountingMetrics;
- (void)_agentDidUpdateWithEntryKey:(id)key;
- (void)_calculateAccumSystemLoad:(id)load;
- (void)_calculateAndStoreSleepDuration;
- (void)_cancelBrightnessTimer;
- (void)_cancelMetricCollectionTimeoutTimer;
- (void)_cancelMetricCollectionTimer;
- (void)_cleanUp;
- (void)_collectMetricsWithTimeout:(double)timeout completionHandler:(id)handler;
- (void)_computeEnergyScoreForProcess;
- (void)_getCurrentPlayingSessions;
- (void)_getGPUTotalTime;
- (void)_handleAudioServerConnectionDied:(id)died;
- (void)_handleDisplayLayoutUpdate:(id)update;
- (void)_handlePowerNotification:(unsigned int)notification argument:(void *)argument;
- (void)_handleSessionPlayingDidChange:(id)change;
- (void)_metricCollectionTimedOut;
- (void)_parseAMCSample:(id)sample;
- (void)_parseApplicationMetricsFromEntry:(id)entry;
- (void)_parseDisplayAPLMetricsFromEntry:(id)entry cacheMetrics:(BOOL)metrics;
- (void)_parseDisplayAZLMetricsFromEntry:(id)entry;
- (void)_parseDisplayBacklightPowerMetricsFromEntry:(id)entry;
- (void)_parseEnergyModelOrPMPMetricsFromSample:(id)sample withSampleDuration:(double)duration sourceChannel:(int64_t)channel;
- (void)_parseGasGaugeMetricsFromEntry:(id)entry;
- (void)_parseLocationMetricsFromEntry:(id)entry;
- (void)_parseProcessNetworkMetricsFromEntry:(id)entry;
- (void)_parseSMCMetricsFromEntry:(id)entry;
- (void)_parseWifiPowerMetricsFromEntry:(id)entry;
- (void)_postAgentNotificationWithProcess:(id)process;
- (void)_queryCumulativeNetworkBytes;
- (void)_queryCurrentAudioState;
- (void)_registerNotificationWithAgent:(Class)agent type:(id)type tableName:(id)name isProcessSpecific:(BOOL)specific minRequestInterval:(double)interval block:(id)block;
- (void)_sampleCoalitions;
- (void)_sampleGPUTime;
- (void)_setUpAgents;
- (void)_setUpIOReporting;
- (void)_setUpSleepWakeMonitoring;
- (void)_setupAudioSessionMonitoring;
- (void)_setupBatteryMetrics;
- (void)_setupMetrics;
- (void)_startBrightnessTimer;
- (void)_startMetricCollectionTimeoutTimerWithTimeout:(double)timeout block:(id)block;
- (void)_startMetricCollectionTimerWithInterval:(double)interval block:(id)block;
- (void)_tearDownAudioSessionMonitoring;
- (void)_tearDownSleepWakeMonitoring;
- (void)_updateAudioActiveMetrics;
- (void)_updateBatteryMetrics;
- (void)_updateDisplayMetrics;
- (void)_updateIOReportStats;
- (void)_updateMetricsWithThermalState;
- (void)addBrightnessSample;
- (void)addMonitoredProcessWithPID:(int)d error:(id *)error;
- (void)addMonitoredProcessesWithPIDs:(id)ds error:(id *)error;
- (void)allClientsDidDisconnect;
- (void)disableAccounting;
- (void)enableAccounting;
- (void)initOperatorDependancies;
- (void)invalidateScreenStateUpdates;
- (void)removeMonitoredProcessWithPID:(int)d;
- (void)setMetricCollectionTimerUpdateInterval:(double)interval;
- (void)setUpForMonitoring;
- (void)setUpScreenStateUpdates;
- (void)startMonitoring;
@end

@implementation PLPowerMetricMonitorService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLPowerMetricMonitorService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLPowerMetricMonitorService)init
{
  if (+[PLUtilities isPowerlogHelperd])
  {
    selfCopy = 0;
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
      mEMORY[0x277D3A100] = [MEMORY[0x277D3A100] sharedInstance];
      metricMonitorService = v5->_metricMonitorService;
      v5->_metricMonitorService = mEMORY[0x277D3A100];

      [(PPSMetricMonitorService *)v5->_metricMonitorService setDelegate:v5];
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      trackedProcesses = v5->_trackedProcesses;
      v5->_trackedProcesses = dictionary;

      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      screenState = v5->_screenState;
      v5->_screenState = dictionary2;

      v12 = objc_alloc_init(MEMORY[0x277D3A0E8]);
      metrics = v5->_metrics;
      v5->_metrics = v12;

      v14 = objc_alloc_init(MEMORY[0x277D3A0E8]);
      cachedMetrics = v5->_cachedMetrics;
      v5->_cachedMetrics = v14;

      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      objc_storeStrong(&v5->_currQueryTime, monotonicDate);
      lastQueryTime = v5->_lastQueryTime;
      v5->_lastQueryTime = monotonicDate;
      v18 = monotonicDate;

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

      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      entryKeyToEntryInfo = v5->_entryKeyToEntryInfo;
      v5->_entryKeyToEntryInfo = dictionary3;

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
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  metricMonitorService = [(PLPowerMetricMonitorService *)self metricMonitorService];
  [metricMonitorService startXPCListener];
}

- (void)_cleanUp
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  [(PLPowerMetricMonitorService *)self setIsMonitoring:0];
  [(PLPowerMetricMonitorService *)self setIsReadyToMonitor:0];
  [(PLPowerMetricMonitorService *)self setStartedSetUp:0];
  v4 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysToCollect:v4];

  v5 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysRequested:v5];

  v6 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysCollected:v6];

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  [trackedProcesses removeAllObjects];

  mainDisplayMonitor = [(PLPowerMetricMonitorService *)self mainDisplayMonitor];

  if (mainDisplayMonitor)
  {
    mainDisplayMonitor2 = [(PLPowerMetricMonitorService *)self mainDisplayMonitor];
    [mainDisplayMonitor2 invalidate];

    [(PLPowerMetricMonitorService *)self setMainDisplayMonitor:0];
  }

  screenState = [(PLPowerMetricMonitorService *)self screenState];
  [screenState removeAllObjects];

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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PLPowerMetricMonitorService_isMonitoringMetrics__block_invoke;
  v5[3] = &unk_279A5C3D0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(monitorQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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
  configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD18] configurationForDefaultMainDisplayMonitor];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__PLPowerMetricMonitorService_setUpScreenStateUpdates__block_invoke;
  v6[3] = &unk_279A5C420;
  v6[4] = self;
  [configurationForDefaultMainDisplayMonitor setTransitionHandler:v6];
  v4 = [MEMORY[0x277D0AD10] monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PLPowerMetricMonitorService_invalidateScreenStateUpdates__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_sync(monitorQueue, block);
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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLPowerMetricMonitorService_startMonitoring__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_async(monitorQueue, block);
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

  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PLPowerMetricMonitorService_allClientsDidDisconnect__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_async(monitorQueue, block);
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

- (id)collectMetricsWithTimeout:(double)timeout
{
  v5 = dispatch_semaphore_create(0);
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PLPowerMetricMonitorService_collectMetricsWithTimeout___block_invoke;
  block[3] = &unk_279A5C470;
  timeoutCopy = timeout;
  block[4] = self;
  v11 = v5;
  v7 = v5;
  dispatch_sync(monitorQueue, block);

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  metrics = [(PLPowerMetricMonitorService *)self metrics];

  return metrics;
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

- (void)addMonitoredProcessWithPID:(int)d error:(id *)error
{
  v7 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService addMonitoredProcessWithPID:error:];
  }

  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PLPowerMetricMonitorService_addMonitoredProcessWithPID_error___block_invoke;
  block[3] = &unk_279A5C498;
  dCopy = d;
  block[4] = self;
  block[5] = error;
  dispatch_sync(monitorQueue, block);
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

- (void)addMonitoredProcessesWithPIDs:(id)ds error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [dsCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        intValue = [*(*(&v17 + 1) + 8 * v10) intValue];
        v16 = 0;
        [(PLPowerMetricMonitorService *)self addMonitoredProcessWithPID:intValue error:&v16];
        v12 = v16;
        if (v12)
        {
          v13 = PLLogPowerMetricMonitor();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(PLPowerMetricMonitorService *)v21 addMonitoredProcessesWithPIDs:v12 error:&v22, v13];
          }

          v14 = v12;
          *error = v12;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [dsCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeMonitoredProcessWithPID:(int)d
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__PLPowerMetricMonitorService_removeMonitoredProcessWithPID___block_invoke;
  v6[3] = &unk_279A5C4C0;
  dCopy = d;
  v6[4] = self;
  dispatch_async(monitorQueue, v6);
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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  brightnessSystemClient = [(PLPowerMetricMonitorService *)self brightnessSystemClient];
  v17 = [brightnessSystemClient copyPropertyForKey:@"DisplayBrightness"];

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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

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

- (void)_registerNotificationWithAgent:(Class)agent type:(id)type tableName:(id)name isProcessSpecific:(BOOL)specific minRequestInterval:(double)interval block:(id)block
{
  specificCopy = specific;
  blockCopy = block;
  nameCopy = name;
  typeCopy = type;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v18 = [(objc_class *)agent entryKeyForType:typeCopy andName:nameCopy];

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
  v21 = blockCopy;
  v29 = v21;
  v22 = v18;
  v28 = v22;
  v23 = [v20 initWithOperator:self forEntryKey:v22 withBlock:v27];
  v24 = [[PLEntryInfo alloc] initWithNotificationComposition:v23 minRequestInterval:interval];
  entryKeyToEntryInfo = [(PLPowerMetricMonitorService *)self entryKeyToEntryInfo];
  [entryKeyToEntryInfo setObject:v24 forKeyedSubscript:v22];

  if (specificCopy)
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

- (void)_postAgentNotificationWithProcess:(id)process
{
  v25[1] = *MEMORY[0x277D85DE8];
  processCopy = process;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  bundleId = [processCopy bundleId];

  if (bundleId)
  {
    bundleId2 = [processCopy bundleId];
    [v4 addObject:bundleId2];

    bundleId3 = [processCopy bundleId];
    v10 = v6;
  }

  else
  {
    name = [processCopy name];

    if (!name)
    {
      goto LABEL_6;
    }

    bundleId3 = [processCopy name];
    v10 = v4;
  }

  [v10 addObject:bundleId3];

LABEL_6:
  v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(processCopy, "pid")}];
  [v5 addObject:v12];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v24 = @"entry";
  v25[0] = v4;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  [defaultCenter postNotificationName:@"PLProcessNetworkAgent.addProcessesOfInterest" object:0 userInfo:v14];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v22 = @"entry";
  v23 = v5;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [defaultCenter2 postNotificationName:@"PLProcessMonitorAgent.addProcessesOfInterest" object:0 userInfo:v16];

  if (v6)
  {
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = @"entry";
    v21 = v6;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [defaultCenter3 postNotificationName:@"PLLocationAgent.addProcessesOfInterest" object:0 userInfo:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_setUpIOReporting
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v4 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"Energy Model" andSubGroup:0];
  [(PLPowerMetricMonitorService *)self setEnergyModelStats:v4];

  energyModelStats = [(PLPowerMetricMonitorService *)self energyModelStats];

  if (!energyModelStats)
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

    dcpSwapStats = [(PLPowerMetricMonitorService *)self dcpSwapStats];

    if (!dcpSwapStats)
    {
      v9 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _setUpIOReporting];
      }
    }

    v10 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"DCP" andSubGroup:@"scanout"];
    [(PLPowerMetricMonitorService *)self setDcpScanoutStats:v10];

    dcpScanoutStats = [(PLPowerMetricMonitorService *)self dcpScanoutStats];

    if (!dcpScanoutStats)
    {
      v12 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PLPowerMetricMonitorService _setUpIOReporting];
      }
    }

    v13 = [objc_alloc(MEMORY[0x277D3F1D0]) initWithGroup:@"DCP" andSubGroup:@"display stats"];
    [(PLPowerMetricMonitorService *)self setDcpDisplayStats:v13];

    dcpDisplayStats = [(PLPowerMetricMonitorService *)self dcpDisplayStats];

    if (!dcpDisplayStats)
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

    pmpCountersStats = [(PLPowerMetricMonitorService *)self pmpCountersStats];

    if (!pmpCountersStats)
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

  amcStats = [(PLPowerMetricMonitorService *)self amcStats];

  if (!amcStats)
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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

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
    audioNotificationObservers = [(PLPowerMetricMonitorService *)self audioNotificationObservers];
    v6 = [audioNotificationObservers countByEnumeratingWithState:&v28 objects:v34 count:16];
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
            objc_enumerationMutation(audioNotificationObservers);
          }

          v10 = *(*(&v28 + 1) + 8 * v9);
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter removeObserver:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [audioNotificationObservers countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v7);
    }

    audioNotificationObservers2 = [(PLPowerMetricMonitorService *)self audioNotificationObservers];
    [audioNotificationObservers2 removeAllObjects];

    [(PLPowerMetricMonitorService *)self setIsMonitoringAudio:0];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    metrics = [(PLPowerMetricMonitorService *)self metrics];
    processMetrics = [metrics processMetrics];

    v15 = [processMetrics countByEnumeratingWithState:&v24 objects:v33 count:16];
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
            objc_enumerationMutation(processMetrics);
          }

          v19 = *(*(&v24 + 1) + 8 * v18);
          metrics2 = [(PLPowerMetricMonitorService *)self metrics];
          processMetrics2 = [metrics2 processMetrics];
          v22 = [processMetrics2 objectForKeyedSubscript:v19];
          [v22 setAudioActive:0];

          ++v18;
        }

        while (v16 != v18);
        v16 = [processMetrics countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v16);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queryCurrentAudioState
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  mEMORY[0x277D26E60] = [MEMORY[0x277D26E60] sharedInstance];
  v5 = [mEMORY[0x277D26E60] attributeForKey:*MEMORY[0x277D26C78]];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    audioIsActive = [(PLPowerMetricMonitorService *)self audioIsActive];
    [(PLPowerMetricMonitorService *)self setCurrentPlayingSessions:v5];
    -[PLPowerMetricMonitorService setAudioIsActive:](self, "setAudioIsActive:", [v5 count] != 0);
    if (audioIsActive != [(PLPowerMetricMonitorService *)self audioIsActive])
    {
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLPowerMetricMonitorService *)self setLastAudioStateChangeDate:monotonicDate];

      v8 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(PLPowerMetricMonitorService *)audioIsActive _queryCurrentAudioState];
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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  mEMORY[0x277D26E60] = [MEMORY[0x277D26E60] sharedInstance];
  v5 = [mEMORY[0x277D26E60] attributeForKey:*MEMORY[0x277D26C78]];

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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if ([(PLPowerMetricMonitorService *)self audioIsActive])
  {
    currentPlayingSessions = [(PLPowerMetricMonitorService *)self currentPlayingSessions];
    v5 = [currentPlayingSessions count];

    if (v5)
    {
      v6 = MEMORY[0x277CBEB58];
      currentPlayingSessions2 = [(PLPowerMetricMonitorService *)self currentPlayingSessions];
      v8 = [v6 setWithCapacity:{objc_msgSend(currentPlayingSessions2, "count")}];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      currentPlayingSessions3 = [(PLPowerMetricMonitorService *)self currentPlayingSessions];
      v10 = [currentPlayingSessions3 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
              objc_enumerationMutation(currentPlayingSessions3);
            }

            v15 = [*(*(&v32 + 1) + 8 * i) objectForKeyedSubscript:*v13];
            if (v15)
            {
              [v8 addObject:v15];
            }
          }

          v11 = [currentPlayingSessions3 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v11);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      metrics = [(PLPowerMetricMonitorService *)self metrics];
      processMetrics = [metrics processMetrics];

      v18 = [processMetrics countByEnumeratingWithState:&v28 objects:v36 count:16];
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
              objc_enumerationMutation(processMetrics);
            }

            v22 = *(*(&v28 + 1) + 8 * j);
            v23 = [v8 containsObject:v22];
            metrics2 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics2 = [metrics2 processMetrics];
            v26 = [processMetrics2 objectForKeyedSubscript:v22];
            [v26 setAudioActive:v23];
          }

          v19 = [processMetrics countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v19);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handleSessionPlayingDidChange:(id)change
{
  v26 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v6 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _handleSessionPlayingDidChange:changeCopy];
  }

  userInfo = [changeCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D26DC0]];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    audioIsActive = [(PLPowerMetricMonitorService *)self audioIsActive];
    [(PLPowerMetricMonitorService *)self setCurrentPlayingSessions:v8];
    -[PLPowerMetricMonitorService setAudioIsActive:](self, "setAudioIsActive:", [v8 count] != 0);
    if (audioIsActive != [(PLPowerMetricMonitorService *)self audioIsActive])
    {
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLPowerMetricMonitorService *)self setLastAudioStateChangeDate:monotonicDate];

      v11 = PLLogPowerMetricMonitor();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = @"active";
        if (audioIsActive)
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
        lastAudioStateChangeDate = [(PLPowerMetricMonitorService *)self lastAudioStateChangeDate];
        v18 = 138413058;
        v19 = v15;
        v20 = 2112;
        v21 = v14;
        v22 = 2048;
        v23 = v16;
        v24 = 2112;
        v25 = lastAudioStateChangeDate;
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

- (void)_handleAudioServerConnectionDied:(id)died
{
  v23 = *MEMORY[0x277D85DE8];
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

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
  audioNotificationObservers = [(PLPowerMetricMonitorService *)self audioNotificationObservers];
  v7 = [audioNotificationObservers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(audioNotificationObservers);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter removeObserver:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [audioNotificationObservers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  audioNotificationObservers2 = [(PLPowerMetricMonitorService *)self audioNotificationObservers];
  [audioNotificationObservers2 removeAllObjects];

  v14 = dispatch_time(0, 1000000000);
  monitorQueue2 = [(PLPowerMetricMonitorService *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PLPowerMetricMonitorService__handleAudioServerConnectionDied___block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_after(v14, monitorQueue2, block);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_collectMetricsWithTimeout:(double)timeout completionHandler:(id)handler
{
  v62 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

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

  currQueryTime = [(PLPowerMetricMonitorService *)self currQueryTime];
  [(PLPowerMetricMonitorService *)self setLastQueryTime:currQueryTime];

  [(PLPowerMetricMonitorService *)self setLastQueryCount:[(PLPowerMetricMonitorService *)self currQueryCount]];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLPowerMetricMonitorService *)self setCurrQueryTime:monotonicDate];

  [(PLPowerMetricMonitorService *)self setCurrQueryCount:[(PLPowerMetricMonitorService *)self lastQueryCount]+ 1];
  v12 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysRequested:v12];

  v13 = [MEMORY[0x277CBEB58] set];
  [(PLPowerMetricMonitorService *)self setEntryKeysCollected:v13];

  [(PLPowerMetricMonitorService *)self setReceivedNetworkUpdate:0];
  v14 = objc_alloc_init(MEMORY[0x277D3A0E8]);
  [(PLPowerMetricMonitorService *)self setMetrics:v14];

  cachedMetrics = [(PLPowerMetricMonitorService *)self cachedMetrics];
  v16 = [cachedMetrics copy];
  [(PLPowerMetricMonitorService *)self setMetrics:v16];

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  LOBYTE(v16) = [trackedProcesses count] == 0;

  if ((v16 & 1) == 0)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke;
    v59[3] = &unk_279A5C5B0;
    v59[4] = self;
    v60 = dictionary;
    v20 = dictionary;
    [trackedProcesses2 enumerateKeysAndObjectsUsingBlock:v59];

    metrics = [(PLPowerMetricMonitorService *)self metrics];
    [metrics setProcessMetrics:v20];
  }

  objc_initWeak(&location, self);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __76__PLPowerMetricMonitorService__collectMetricsWithTimeout_completionHandler___block_invoke_2;
  v55[3] = &unk_279A5C5D8;
  objc_copyWeak(&v57, &location);
  v49 = handlerCopy;
  v56 = v49;
  [(PLPowerMetricMonitorService *)self setMetricCollectionCompletionHandler:v55];
  [(PLPowerMetricMonitorService *)self setIsCollectingMetrics:1];
  entryKeysToCollect = [(PLPowerMetricMonitorService *)self entryKeysToCollect];
  v23 = [entryKeysToCollect count] == 0;

  if (!v23)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    entryKeysToCollect2 = [(PLPowerMetricMonitorService *)self entryKeysToCollect];
    v25 = [entryKeysToCollect2 countByEnumeratingWithState:&v51 objects:v61 count:16];
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
          objc_enumerationMutation(entryKeysToCollect2);
        }

        v28 = *(*(&v51 + 1) + 8 * i);
        entryKeyToEntryInfo = [(PLPowerMetricMonitorService *)self entryKeyToEntryInfo];
        v30 = [entryKeyToEntryInfo objectForKeyedSubscript:v28];

        [v30 minRequestInterval];
        if (v31 == 0.0)
        {
          notificationComposition = [v30 notificationComposition];
          [notificationComposition requestEntry];

          entryKeysRequested = [(PLPowerMetricMonitorService *)self entryKeysRequested];
          [entryKeysRequested addObject:v28];
        }

        else
        {
          lastQueryDate = [v30 lastQueryDate];
          [lastQueryDate timeIntervalSinceNow];
          v36 = v35;
          [v30 minRequestInterval];
          v38 = v37 < -v36;

          if (!v38)
          {
            goto LABEL_20;
          }

          notificationComposition2 = [v30 notificationComposition];
          [notificationComposition2 requestEntry];

          entryKeysRequested2 = [(PLPowerMetricMonitorService *)self entryKeysRequested];
          [entryKeysRequested2 addObject:v28];

          entryKeysRequested = [MEMORY[0x277CBEAA8] now];
          entryKeyToEntryInfo2 = [(PLPowerMetricMonitorService *)self entryKeyToEntryInfo];
          v42 = [entryKeyToEntryInfo2 objectForKeyedSubscript:v28];
          [v42 setLastQueryDate:entryKeysRequested];
        }

LABEL_20:
      }

      v25 = [entryKeysToCollect2 countByEnumeratingWithState:&v51 objects:v61 count:16];
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
  *&v50[5] = timeout;
  v50[4] = self;
  [(PLPowerMetricMonitorService *)self _startMetricCollectionTimeoutTimerWithTimeout:v50 block:timeout];
  [(PLPowerMetricMonitorService *)self _updateIOReportStats];
  [(PLPowerMetricMonitorService *)self _updateMetricsWithThermalState];
  [(PLPowerMetricMonitorService *)self _sampleCoalitions];
  if (![(PLPowerMetricMonitorService *)self _supportsGPUCoalitions])
  {
    [(PLPowerMetricMonitorService *)self _sampleGPUTime];
  }

  [(PLPowerMetricMonitorService *)self _updateAudioActiveMetrics];
  v43 = MEMORY[0x277CCABB0];
  currQueryTime2 = [(PLPowerMetricMonitorService *)self currQueryTime];
  lastQueryTime = [(PLPowerMetricMonitorService *)self lastQueryTime];
  [currQueryTime2 timeIntervalSinceDate:lastQueryTime];
  v46 = [v43 numberWithDouble:?];
  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setSampleTime:v46];

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

- (void)_agentDidUpdateWithEntryKey:(id)key
{
  keyCopy = key;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if ([(PLPowerMetricMonitorService *)self isCollectingMetrics])
  {
    v6 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLPowerMetricMonitorService _agentDidUpdateWithEntryKey:];
    }

    entryKeysCollected = [(PLPowerMetricMonitorService *)self entryKeysCollected];
    v8 = [entryKeysCollected containsObject:keyCopy];

    if ((v8 & 1) == 0)
    {
      entryKeysCollected2 = [(PLPowerMetricMonitorService *)self entryKeysCollected];
      [entryKeysCollected2 addObject:keyCopy];

      entryKeysCollected3 = [(PLPowerMetricMonitorService *)self entryKeysCollected];
      v11 = [entryKeysCollected3 count];
      entryKeysRequested = [(PLPowerMetricMonitorService *)self entryKeysRequested];
      v13 = [entryKeysRequested count];

      if (v11 == v13)
      {
        metricCollectionCompletionHandler = [(PLPowerMetricMonitorService *)self metricCollectionCompletionHandler];

        if (metricCollectionCompletionHandler)
        {
          metricCollectionCompletionHandler2 = [(PLPowerMetricMonitorService *)self metricCollectionCompletionHandler];
          metricCollectionCompletionHandler2[2](metricCollectionCompletionHandler2, 0);

          [(PLPowerMetricMonitorService *)self setMetricCollectionCompletionHandler:0];
        }
      }
    }
  }
}

- (void)_updateIOReportStats
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  energyModelStats = [(PLPowerMetricMonitorService *)self energyModelStats];

  if (energyModelStats)
  {
    energyModelStats2 = [(PLPowerMetricMonitorService *)self energyModelStats];
    [energyModelStats2 updateStats];

    energyModelStats3 = [(PLPowerMetricMonitorService *)self energyModelStats];
    v7 = [energyModelStats3 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:1];

    if (v7)
    {
      energyModelStats4 = [(PLPowerMetricMonitorService *)self energyModelStats];
      sampleTime = [energyModelStats4 sampleTime];
      energyModelStats5 = [(PLPowerMetricMonitorService *)self energyModelStats];
      sampleTimePrevious = [energyModelStats5 sampleTimePrevious];
      [sampleTime timeIntervalSinceDate:sampleTimePrevious];
      v13 = v12;

      [(PLPowerMetricMonitorService *)self _parseEnergyModelOrPMPMetricsFromSample:v7 withSampleDuration:0 sourceChannel:v13];
    }
  }

  dcpSwapStats = [(PLPowerMetricMonitorService *)self dcpSwapStats];

  if (dcpSwapStats)
  {
    dcpSwapStats2 = [(PLPowerMetricMonitorService *)self dcpSwapStats];
    [dcpSwapStats2 updateStats];

    dcpSwapStats3 = [(PLPowerMetricMonitorService *)self dcpSwapStats];
    v17 = [dcpSwapStats3 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:0];

    if (v17)
    {
      [(PLPowerMetricMonitorService *)self _parseAverageFPS:v17];
      v18 = MEMORY[0x277D3A108];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      dcpSwapStats4 = [(PLPowerMetricMonitorService *)self dcpSwapStats];
      sampleTime2 = [dcpSwapStats4 sampleTime];
      v22 = [v18 sampleWithValue:v19 timestamp:sampleTime2];
      metrics = [(PLPowerMetricMonitorService *)self metrics];
      [metrics setDisplayFPS:v22];
    }
  }

  dcpScanoutStats = [(PLPowerMetricMonitorService *)self dcpScanoutStats];

  if (dcpScanoutStats)
  {
    dcpScanoutStats2 = [(PLPowerMetricMonitorService *)self dcpScanoutStats];
    [dcpScanoutStats2 updateStats];

    dcpScanoutStats3 = [(PLPowerMetricMonitorService *)self dcpScanoutStats];
    v27 = [dcpScanoutStats3 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:0];

    if (v27)
    {
      [(PLPowerMetricMonitorService *)self _parseAverageFPS:v27];
      v28 = MEMORY[0x277D3A108];
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      dcpScanoutStats4 = [(PLPowerMetricMonitorService *)self dcpScanoutStats];
      sampleTime3 = [dcpScanoutStats4 sampleTime];
      v32 = [v28 sampleWithValue:v29 timestamp:sampleTime3];
      metrics2 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics2 setScanoutFPS:v32];
    }
  }

  dcpDisplayStats = [(PLPowerMetricMonitorService *)self dcpDisplayStats];

  if (dcpDisplayStats)
  {
    dcpDisplayStats2 = [(PLPowerMetricMonitorService *)self dcpDisplayStats];
    [dcpDisplayStats2 updateStats];

    dcpDisplayStats3 = [(PLPowerMetricMonitorService *)self dcpDisplayStats];
    v37 = [dcpDisplayStats3 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:0];

    if (v37)
    {
      v38 = [v37 objectForKeyedSubscript:@"power"];
      [v38 doubleValue];
      v40 = v39 / 1000000.0;

      v41 = MEMORY[0x277D3A108];
      v42 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
      dcpDisplayStats4 = [(PLPowerMetricMonitorService *)self dcpDisplayStats];
      sampleTime4 = [dcpDisplayStats4 sampleTime];
      v45 = [v41 sampleWithValue:v42 timestamp:sampleTime4];
      metrics3 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics3 setDisplayEnergy:v45];
    }
  }

  if (+[PLPowerMetricMonitorService deviceUsesPMPCounters])
  {
    pmpCountersStats = [(PLPowerMetricMonitorService *)self pmpCountersStats];

    if (pmpCountersStats)
    {
      pmpCountersStats2 = [(PLPowerMetricMonitorService *)self pmpCountersStats];
      [pmpCountersStats2 updateStats];

      pmpCountersStats3 = [(PLPowerMetricMonitorService *)self pmpCountersStats];
      v50 = [pmpCountersStats3 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:1];

      if (v50)
      {
        pmpCountersStats4 = [(PLPowerMetricMonitorService *)self pmpCountersStats];
        sampleTime5 = [pmpCountersStats4 sampleTime];
        pmpCountersStats5 = [(PLPowerMetricMonitorService *)self pmpCountersStats];
        sampleTimePrevious2 = [pmpCountersStats5 sampleTimePrevious];
        [sampleTime5 timeIntervalSinceDate:sampleTimePrevious2];
        v56 = v55;

        [(PLPowerMetricMonitorService *)self _parseEnergyModelOrPMPMetricsFromSample:v50 withSampleDuration:1 sourceChannel:v56];
      }
    }
  }

  amcStats = [(PLPowerMetricMonitorService *)self amcStats];

  if (amcStats)
  {
    amcStats2 = [(PLPowerMetricMonitorService *)self amcStats];
    [amcStats2 updateStats];

    amcStats3 = [(PLPowerMetricMonitorService *)self amcStats];
    v60 = [amcStats3 calculateDeltaFromPreviousSamplesConvertingUnitToUnityScale:1];

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

- (void)_parseDisplayAPLMetricsFromEntry:(id)entry cacheMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if (![(PLPowerMetricMonitorService *)self _supportsSMCDisplayPower])
  {
    v7 = [entryCopy objectForKeyedSubscript:@"AvgPower"];
    v8 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v7];

    v9 = MEMORY[0x277D3A108];
    entryDate = [entryCopy entryDate];
    v11 = [v9 sampleWithValue:v8 timestamp:entryDate];
    metrics = [(PLPowerMetricMonitorService *)self metrics];
    [metrics setDisplayPower:v11];
  }

  v13 = [entryCopy objectForKeyedSubscript:@"AvgAPL"];
  v14 = MEMORY[0x277D3A108];
  entryDate2 = [entryCopy entryDate];
  v16 = [v14 sampleWithValue:v13 timestamp:entryDate2];
  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setDisplayAPL:v16];

  v18 = [entryCopy objectForKeyedSubscript:@"AvgRed"];
  intValue = [v18 intValue];
  v20 = [entryCopy objectForKeyedSubscript:@"AvgGreen"];
  intValue2 = [v20 intValue];
  v22 = [entryCopy objectForKeyedSubscript:@"AvgBlue"];
  -[PLPowerMetricMonitorService _computeDisplayCostWithAvgRed:avgGreen:avgBlue:](self, "_computeDisplayCostWithAvgRed:avgGreen:avgBlue:", intValue, intValue2, [v22 intValue]);
  v24 = v23;

  v25 = MEMORY[0x277D3A108];
  v26 = [MEMORY[0x277CCABB0] numberWithInt:v24];
  entryDate3 = [entryCopy entryDate];
  v28 = [v25 sampleWithValue:v26 timestamp:entryDate3];
  metrics3 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics3 setDisplayCost:v28];

  if (metricsCopy)
  {
    if (![(PLPowerMetricMonitorService *)self _supportsSMCDisplayPower])
    {
      metrics4 = [(PLPowerMetricMonitorService *)self metrics];
      displayPower = [metrics4 displayPower];
      cachedMetrics = [(PLPowerMetricMonitorService *)self cachedMetrics];
      [cachedMetrics setDisplayPower:displayPower];
    }

    metrics5 = [(PLPowerMetricMonitorService *)self metrics];
    displayAPL = [metrics5 displayAPL];
    cachedMetrics2 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [cachedMetrics2 setDisplayAPL:displayAPL];

    metrics6 = [(PLPowerMetricMonitorService *)self metrics];
    displayCost = [metrics6 displayCost];
    cachedMetrics3 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [cachedMetrics3 setDisplayCost:displayCost];
  }
}

- (void)_parseDisplayAZLMetricsFromEntry:(id)entry
{
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v5 = [entryCopy objectForKeyedSubscript:@"AZLAccum"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [entryCopy objectForKeyedSubscript:@"BLFrameCount"];
  [v8 doubleValue];
  v10 = v9;

  if (v10 != 0.0)
  {
    v11 = MEMORY[0x277D3A108];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v10 * 0.000000953674316];
    entryDate = [entryCopy entryDate];
    v14 = [v11 sampleWithValue:v12 timestamp:entryDate];
    metrics = [(PLPowerMetricMonitorService *)self metrics];
    [metrics setDisplayAZL:v14];

    metrics2 = [(PLPowerMetricMonitorService *)self metrics];
    displayAZL = [metrics2 displayAZL];
    cachedMetrics = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [cachedMetrics setDisplayAZL:displayAZL];
  }
}

- (void)_parseDisplayBacklightPowerMetricsFromEntry:(id)entry
{
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if (![(PLPowerMetricMonitorService *)self _supportsSMCDisplayPower])
  {
    v5 = [entryCopy objectForKeyedSubscript:@"DisplayPower"];
    v6 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v5];

    v7 = MEMORY[0x277D3A108];
    entryDate = [entryCopy entryDate];
    v9 = [v7 sampleWithValue:v6 timestamp:entryDate];
    metrics = [(PLPowerMetricMonitorService *)self metrics];
    [metrics setDisplayPower:v9];
  }
}

- (void)_parseEnergyModelOrPMPMetricsFromSample:(id)sample withSampleDuration:(double)duration sourceChannel:(int64_t)channel
{
  sampleCopy = sample;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if (duration > 0.0)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    kPLSoCClassOfDevice = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    if (channel == 1 || kPLSoCClassOfDevice > 1001015)
    {
      channelCopy = channel;
      v217 = kPLSoCClassOfDevice;
      v13 = [sampleCopy objectForKeyedSubscript:@"DRAM"];
      [v13 doubleValue];
      v15 = v14 / duration * 1.2;

      v16 = MEMORY[0x277D3A108];
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
      monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
      v19 = [v16 sampleWithValue:v17 timestamp:monotonicDate2];
      metrics = [(PLPowerMetricMonitorService *)self metrics];
      [metrics setDramPower:v19];

      v21 = [sampleCopy objectForKeyedSubscript:@"ANE"];
      [v21 doubleValue];
      v23 = v22 / duration * 1.2;

      v24 = MEMORY[0x277D3A108];
      v25 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
      monotonicDate3 = [MEMORY[0x277CBEAA8] monotonicDate];
      v27 = [v24 sampleWithValue:v25 timestamp:monotonicDate3];
      metrics2 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics2 setAnePower:v27];

      [sampleCopy objectForKeyedSubscript:@"SOC_REST"];
      v29 = v219 = monotonicDate;
      [v29 doubleValue];
      v31 = v30;
      v32 = [sampleCopy objectForKeyedSubscript:@"AVE"];
      [v32 doubleValue];
      v34 = v31 + v33;
      v35 = [sampleCopy objectForKeyedSubscript:@"DCS"];
      [v35 doubleValue];
      v37 = v34 + v36;
      v38 = [sampleCopy objectForKeyedSubscript:@"DISP"];
      [v38 doubleValue];
      v40 = v37 + v39;
      v41 = [sampleCopy objectForKeyedSubscript:@"ISP"];
      [v41 doubleValue];
      v43 = v40 + v42;
      v44 = [sampleCopy objectForKeyedSubscript:@"MSR"];
      [v44 doubleValue];
      v46 = v43 + v45;
      v47 = [sampleCopy objectForKeyedSubscript:@"VDEC"];
      [v47 doubleValue];
      v49 = v46 + v48;
      v50 = [sampleCopy objectForKeyedSubscript:@"SOC_AON"];
      [v50 doubleValue];
      v52 = v49 + v51;

      monotonicDate = v219;
      v53 = MEMORY[0x277D3A108];
      v54 = [MEMORY[0x277CCABB0] numberWithDouble:v52 / duration * 1.2];
      monotonicDate4 = [MEMORY[0x277CBEAA8] monotonicDate];
      v56 = [v53 sampleWithValue:v54 timestamp:monotonicDate4];
      metrics3 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics3 setOtherSocPower:v56];

      v58 = [sampleCopy objectForKeyedSubscript:@"GPU SRAM"];
      [v58 doubleValue];
      v60 = v59;

      v61 = MEMORY[0x277D3A108];
      v62 = [MEMORY[0x277CCABB0] numberWithDouble:v60];
      v63 = [v61 sampleWithValue:v62 timestamp:v219];
      metrics4 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics4 setGpuSRAMEnergy:v63];

      v65 = [sampleCopy objectForKeyedSubscript:@"ANE"];
      [v65 doubleValue];
      v67 = v66;

      v68 = MEMORY[0x277D3A108];
      v69 = [MEMORY[0x277CCABB0] numberWithDouble:v67];
      v70 = [v68 sampleWithValue:v69 timestamp:v219];
      metrics5 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics5 setAneEnergy:v70];

      v72 = [sampleCopy objectForKeyedSubscript:@"DCS"];
      [v72 doubleValue];
      v74 = v73;

      v75 = MEMORY[0x277D3A108];
      v76 = [MEMORY[0x277CCABB0] numberWithDouble:v74];
      v77 = [v75 sampleWithValue:v76 timestamp:v219];
      metrics6 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics6 setDcsEnergy:v77];

      v79 = [sampleCopy objectForKeyedSubscript:@"DRAM"];
      [v79 doubleValue];
      v81 = v80;

      v82 = MEMORY[0x277D3A108];
      v83 = [MEMORY[0x277CCABB0] numberWithDouble:v81];
      v84 = [v82 sampleWithValue:v83 timestamp:v219];
      metrics7 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics7 setDramEnergy:v84];

      v86 = [sampleCopy objectForKeyedSubscript:@"PCIe Port 0 Energy"];

      if (v86)
      {
        v87 = [sampleCopy objectForKeyedSubscript:@"PCIe Port 0 Energy"];
        [v87 doubleValue];
        v89 = v88 + 0.0;
      }

      else
      {
        v89 = 0.0;
      }

      v90 = [sampleCopy objectForKeyedSubscript:@"PCIe Port 1 Energy"];

      if (v90)
      {
        v91 = [sampleCopy objectForKeyedSubscript:@"PCIe Port 1 Energy"];
        [v91 doubleValue];
        v89 = v89 + v92;
      }

      v93 = [sampleCopy objectForKeyedSubscript:@"PCIe Port 2 Energy"];

      if (v93)
      {
        v94 = [sampleCopy objectForKeyedSubscript:@"PCIe Port 2 Energy"];
        [v94 doubleValue];
        v89 = v89 + v95;
      }

      v96 = MEMORY[0x277D3A108];
      v97 = [MEMORY[0x277CCABB0] numberWithDouble:v89];
      v98 = [v96 sampleWithValue:v97 timestamp:v219];
      metrics8 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics8 setPcieEnergy:v98];

      kPLSoCClassOfDevice = v217;
      if (channelCopy)
      {
        goto LABEL_20;
      }
    }

    else if (channel)
    {
LABEL_20:

      goto LABEL_21;
    }

    v100 = MEMORY[0x277CCABB0];
    v218 = kPLSoCClassOfDevice;
    v101 = [sampleCopy objectForKeyedSubscript:@"CPU Energy"];
    [v101 doubleValue];
    v103 = [v100 numberWithDouble:v102 / duration * 1.2];

    v104 = MEMORY[0x277D3A108];
    monotonicDate5 = [MEMORY[0x277CBEAA8] monotonicDate];
    v216 = v103;
    v106 = [v104 sampleWithValue:v103 timestamp:monotonicDate5];
    metrics9 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics9 setCpuPower:v106];

    v108 = MEMORY[0x277CCABB0];
    v109 = [sampleCopy objectForKeyedSubscript:@"GPU Energy"];
    [v109 doubleValue];
    v111 = [v108 numberWithDouble:v110 / duration * 1.2];

    v112 = MEMORY[0x277D3A108];
    monotonicDate6 = [MEMORY[0x277CBEAA8] monotonicDate];
    v114 = [v112 sampleWithValue:v111 timestamp:monotonicDate6];
    [(PLPowerMetricMonitorService *)self metrics];
    v115 = v220 = monotonicDate;
    [v115 setGpuPower:v114];

    monotonicDate = v220;
    v116 = [sampleCopy objectForKeyedSubscript:@"CPU Energy"];
    [v116 doubleValue];
    v118 = v117;

    v119 = MEMORY[0x277D3A108];
    v120 = [MEMORY[0x277CCABB0] numberWithDouble:v118];
    v121 = [v119 sampleWithValue:v120 timestamp:v220];
    metrics10 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics10 setCpuEnergy:v121];

    v123 = [sampleCopy objectForKeyedSubscript:@"GPU Energy"];
    [v123 doubleValue];
    v125 = v124;
    v214 = v124;

    v126 = MEMORY[0x277D3A108];
    v127 = [MEMORY[0x277CCABB0] numberWithDouble:v125];
    v128 = [v126 sampleWithValue:v127 timestamp:v220];
    metrics11 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics11 setGpuEnergy:v128];

    v130 = [sampleCopy objectForKeyedSubscript:@"ECPM"];
    [v130 doubleValue];
    v213 = v131;

    v132 = [sampleCopy objectForKeyedSubscript:@"PCPM"];
    [v132 doubleValue];
    v212 = v133;

    v134 = [sampleCopy objectForKeyedSubscript:@"ECPM_SRAM"];
    [v134 doubleValue];
    v211 = v135;

    v136 = [sampleCopy objectForKeyedSubscript:@"PCPM_SRAM"];
    [v136 doubleValue];
    v210 = v137;

    v138 = [sampleCopy objectForKeyedSubscript:@"ECPU"];
    [v138 doubleValue];
    v209 = v139;

    v140 = [sampleCopy objectForKeyedSubscript:@"PCPU"];
    [v140 doubleValue];
    v208 = v141;

    v142 = [sampleCopy objectForKeyedSubscript:@"ISP"];
    [v142 doubleValue];
    v207 = v143;

    v144 = [sampleCopy objectForKeyedSubscript:@"AVE"];
    [v144 doubleValue];
    v206 = v145;

    v146 = [sampleCopy objectForKeyedSubscript:@"MSR"];
    [v146 doubleValue];
    v205 = v147;

    v148 = [sampleCopy objectForKeyedSubscript:@"DISP"];
    [v148 doubleValue];
    v204 = v149;

    v150 = [sampleCopy objectForKeyedSubscript:@"DISPEXT"];
    [v150 doubleValue];
    v152 = v151;

    v153 = [sampleCopy objectForKeyedSubscript:@"VDEC"];
    [v153 doubleValue];
    v155 = v154;

    v156 = [sampleCopy objectForKeyedSubscript:@"SOC_AON"];
    [v156 doubleValue];
    v158 = v157;

    v159 = [sampleCopy objectForKeyedSubscript:@"GPU SRAM"];
    [v159 doubleValue];
    durationCopy = duration;
    v161 = v160;

    v162 = [sampleCopy objectForKeyedSubscript:@"ANE"];
    [v162 doubleValue];
    v164 = v163;

    v165 = [sampleCopy objectForKeyedSubscript:@"SOC_REST"];
    [v165 doubleValue];
    v167 = v166;

    v168 = [sampleCopy objectForKeyedSubscript:@"DCS"];
    [v168 doubleValue];
    v170 = v169;

    v171 = [sampleCopy objectForKeyedSubscript:@"DRAM"];
    [v171 doubleValue];
    v173 = v172;

    v174 = MEMORY[0x277D3A108];
    v173 = [MEMORY[0x277CCABB0] numberWithDouble:v167 + v158 + v155 + v152 + v204 + v205 + v206 + v207 + v214 + v213 + v212 + v211 + v210 + v209 + v208 + v161 + v164 + v170 + v173];
    v176 = [v174 sampleWithValue:v173 timestamp:v220];
    metrics12 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics12 setPackageEnergy:v176];

    if (v218 < 1001011)
    {
      v178 = MEMORY[0x277CCABB0];
      v179 = [sampleCopy objectForKeyedSubscript:@"DRAM Energy"];
      [v179 doubleValue];
      v181 = [v178 numberWithDouble:v180 / durationCopy * 1.2];

      v182 = MEMORY[0x277D3A108];
      monotonicDate7 = [MEMORY[0x277CBEAA8] monotonicDate];
      v184 = [v182 sampleWithValue:v181 timestamp:monotonicDate7];
      metrics13 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics13 setDramPower:v184];

      v186 = [sampleCopy objectForKeyedSubscript:@"Rest of SoC Energy"];
      [v186 doubleValue];
      v188 = v187;
      v189 = [sampleCopy objectForKeyedSubscript:@"ISP Energy"];
      [v189 doubleValue];
      v191 = v188 + v190;
      v192 = [sampleCopy objectForKeyedSubscript:@"VDEC Energy"];
      [v192 doubleValue];
      v194 = v191 + v193;
      v195 = [sampleCopy objectForKeyedSubscript:@"VENC Energy"];
      [v195 doubleValue];
      v197 = v194 + v196;

      monotonicDate = v220;
      v198 = [MEMORY[0x277CCABB0] numberWithDouble:v197 / durationCopy * 1.2];
      v199 = MEMORY[0x277D3A108];
      monotonicDate8 = [MEMORY[0x277CBEAA8] monotonicDate];
      v201 = [v199 sampleWithValue:v198 timestamp:monotonicDate8];
      metrics14 = [(PLPowerMetricMonitorService *)self metrics];
      [metrics14 setOtherSocPower:v201];
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

- (double)_parseAverageFPS:(id)s
{
  sCopy = s;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

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
  v7 = sCopy;
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

- (void)_parseAMCSample:(id)sample
{
  sampleCopy = sample;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v6 = [sampleCopy objectForKeyedSubscript:@"DCS"];
  [v6 doubleValue];
  v8 = v7;

  v9 = MEMORY[0x277D3A108];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v11 = [v9 sampleWithValue:v10 timestamp:monotonicDate];
  metrics = [(PLPowerMetricMonitorService *)self metrics];
  [metrics setDramBytes:v11];

  v13 = [sampleCopy objectForKeyedSubscript:@"ANE DCS RD"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [sampleCopy objectForKeyedSubscript:@"ANE DCS WR"];
  [v16 doubleValue];
  v18 = v17;

  v19 = MEMORY[0x277D3A108];
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v15 + v18];
  v21 = [v19 sampleWithValue:v20 timestamp:monotonicDate];
  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setAneDCSBytes:v21];

  v23 = [sampleCopy objectForKeyedSubscript:@"ANE RD"];
  [v23 doubleValue];
  v25 = v24;

  v26 = [sampleCopy objectForKeyedSubscript:@"ANE WR"];

  [v26 doubleValue];
  v28 = v27;

  v29 = MEMORY[0x277D3A108];
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:v25 + v28];
  v31 = [v29 sampleWithValue:v30 timestamp:monotonicDate];
  metrics3 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics3 setAneFabricBytes:v31];
}

- (void)_parseSMCMetricsFromEntry:(id)entry
{
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v6 = [entryCopy objectForKeyedSubscript:@"B0AP"];
  v7 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v6];

  v8 = MEMORY[0x277D3A108];
  entryDate = [entryCopy entryDate];
  v77 = v7;
  v10 = [v8 sampleWithValue:v7 timestamp:entryDate];
  metrics = [(PLPowerMetricMonitorService *)self metrics];
  [metrics setBatteryPower:v10];

  v12 = [entryCopy objectForKeyedSubscript:@"zSPi"];
  v13 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v12];

  v14 = MEMORY[0x277D3A108];
  entryDate2 = [entryCopy entryDate];
  v76 = v13;
  v16 = [v14 sampleWithValue:v13 timestamp:entryDate2];
  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setDcInputPower:v16];

  v18 = [entryCopy objectForKeyedSubscript:@"CHAS"];
  v19 = MEMORY[0x277D3A108];
  entryDate3 = [entryCopy entryDate];
  v21 = [v19 sampleWithValue:v18 timestamp:entryDate3];
  metrics3 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics3 setChargingRate:v21];

  v23 = [entryCopy objectForKeyedSubscript:@"xRPE"];
  v24 = MEMORY[0x277D3A108];
  entryDate4 = [entryCopy entryDate];
  v75 = v23;
  v26 = [v24 sampleWithValue:v23 timestamp:entryDate4];
  metrics4 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics4 setCellularPower:v26];

  v28 = [entryCopy objectForKeyedSubscript:@"TVMx"];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v31 = [entryCopy objectForKeyedSubscript:@"TVRM"];
    v32 = v31;
    if (v31)
    {
      v30 = v31;
    }

    else
    {
      v33 = [entryCopy objectForKeyedSubscript:@"TVBM"];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = [entryCopy objectForKeyedSubscript:@"TVBH"];
      }

      v30 = v35;
    }
  }

  if ([MEMORY[0x277D3F208] isDeviceClass:102058])
  {
    v36 = [entryCopy objectForKeyedSubscript:@"TVBE"];

    v30 = v36;
  }

  v37 = MEMORY[0x277D3A108];
  entryDate5 = [entryCopy entryDate];
  v39 = [v37 sampleWithValue:v30 timestamp:entryDate5];
  metrics5 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics5 setSkinTemperature:v39];

  v41 = [entryCopy objectForKeyedSubscript:@"TB0T"];
  v42 = MEMORY[0x277D3A108];
  entryDate6 = [entryCopy entryDate];
  v44 = [v42 sampleWithValue:v41 timestamp:entryDate6];
  metrics6 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics6 setBatteryTemperature:v44];

  v46 = 0x277CCA000;
  if ([(PLPowerMetricMonitorService *)self _supportsSMCDisplayPower])
  {
    v73 = [entryCopy objectForKeyedSubscript:@"PDEP"];
    v47 = [entryCopy objectForKeyedSubscript:@"PDLP"];
    v48 = MEMORY[0x277CCABB0];
    [v73 doubleValue];
    v50 = v49;
    [v47 doubleValue];
    v52 = [v48 numberWithDouble:v50 + v51];
    v53 = v41;
    v54 = v18;
    v55 = MEMORY[0x277D3A108];
    entryDate7 = [entryCopy entryDate];
    v57 = [v55 sampleWithValue:v52 timestamp:entryDate7];
    metrics7 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics7 setDisplayPower:v57];

    v18 = v54;
    v41 = v53;

    v46 = 0x277CCA000uLL;
  }

  if (v18)
  {
    v59 = [entryCopy objectForKeyedSubscript:@"zSLi"];
    v74 = v18;
    [v18 doubleValue];
    if (v60 == 0.0)
    {
      v61 = *(v46 + 2992);
      v62 = [entryCopy objectForKeyedSubscript:@"B0AP"];
      [v62 doubleValue];
      v64 = [v61 numberWithDouble:-v63];
    }

    else
    {
      v64 = v59;
    }

    v66 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v64];

    v67 = MEMORY[0x277D3A108];
    entryDate8 = [entryCopy entryDate];
    v69 = [v67 sampleWithValue:v66 timestamp:entryDate8];
    metrics8 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics8 setSystemLoadPower:v69];

    v71 = [*(v46 + 2992) numberWithInt:v59 != 0];
    metrics9 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics9 setIsSystemPowerAvailableWhileCharging:v71 != 0];

    [(PLPowerMetricMonitorService *)self _calculateAccumSystemLoad:entryCopy];
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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

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

- (void)_parseWifiPowerMetricsFromEntry:(id)entry
{
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v6 = [entryCopy objectForKeyedSubscript:@"WifiPower"];
  v31 = [(PLPowerMetricMonitorService *)self _convertToWattsFromMilliwatts:v6];

  v7 = MEMORY[0x277D3A108];
  entryDate = [entryCopy entryDate];
  v9 = [v7 sampleWithValue:v31 timestamp:entryDate];
  metrics = [(PLPowerMetricMonitorService *)self metrics];
  [metrics setWifiPower:v9];

  v11 = [entryCopy objectForKeyedSubscript:@"AWDLDown"];
  LODWORD(entryDate) = [v11 BOOLValue];

  v12 = MEMORY[0x277D3A108];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:entryDate ^ 1];
  entryDate2 = [entryCopy entryDate];
  v15 = [v12 sampleWithValue:v13 timestamp:entryDate2];
  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setWifiAWDLStatus:v15];

  v17 = MEMORY[0x277D3A108];
  v18 = [entryCopy objectForKeyedSubscript:@"AWDLRanging"];
  entryDate3 = [entryCopy entryDate];

  v20 = [v17 sampleWithValue:v18 timestamp:entryDate3];
  metrics3 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics3 setWifiAWDLRange:v20];

  metrics4 = [(PLPowerMetricMonitorService *)self metrics];
  wifiPower = [metrics4 wifiPower];
  cachedMetrics = [(PLPowerMetricMonitorService *)self cachedMetrics];
  [cachedMetrics setWifiPower:wifiPower];

  metrics5 = [(PLPowerMetricMonitorService *)self metrics];
  wifiAWDLStatus = [metrics5 wifiAWDLStatus];
  cachedMetrics2 = [(PLPowerMetricMonitorService *)self cachedMetrics];
  [cachedMetrics2 setWifiAWDLStatus:wifiAWDLStatus];

  metrics6 = [(PLPowerMetricMonitorService *)self metrics];
  wifiAWDLRange = [metrics6 wifiAWDLRange];
  cachedMetrics3 = [(PLPowerMetricMonitorService *)self cachedMetrics];
  [cachedMetrics3 setWifiAWDLRange:wifiAWDLRange];
}

- (void)_parseGasGaugeMetricsFromEntry:(id)entry
{
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v5 = [entryCopy objectForKeyedSubscript:@"GasGaugePower"];
  [v5 doubleValue];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v8 = MEMORY[0x277D3A108];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / -1000.0];
    entryDate = [entryCopy entryDate];
    v11 = [v8 sampleWithValue:v9 timestamp:entryDate];
    metrics = [(PLPowerMetricMonitorService *)self metrics];
    [metrics setSystemLoadPower:v11];
  }

  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setIsSystemPowerAvailableWhileCharging:0];
}

- (void)_parseProcessNetworkMetricsFromEntry:(id)entry
{
  v107 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v4 = PLLogPower();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _parseProcessNetworkMetricsFromEntry:];
  }

  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v7 = [trackedProcesses count];

  if (v7)
  {
    v8 = [entryCopy objectForKeyedSubscript:@"BundleName"];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    allKeys = [trackedProcesses2 allKeys];

    obj = allKeys;
    v11 = [allKeys countByEnumeratingWithState:&v100 objects:v106 count:16];
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
          trackedProcesses3 = [(PLPowerMetricMonitorService *)self trackedProcesses];
          v18 = [trackedProcesses3 objectForKeyedSubscript:v16];
          bundleId = [v18 bundleId];

          if ([bundleId isEqualToString:v8])
          {
            v94 = bundleId;
            v20 = PLLogPowerMetricMonitor();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = v89;
              v105 = entryCopy;
              _os_log_debug_impl(&dword_25EE51000, v20, OS_LOG_TYPE_DEBUG, "ProcessNetworkEntry=%@", buf, 0xCu);
            }

            v99 = [entryCopy objectForKeyedSubscript:@"WifiIn"];
            v98 = [entryCopy objectForKeyedSubscript:@"WifiOut"];
            v97 = [entryCopy objectForKeyedSubscript:@"CellIn"];
            v96 = [entryCopy objectForKeyedSubscript:@"CellOut"];
            v21 = MEMORY[0x277D3A108];
            entryDate = [entryCopy entryDate];
            v23 = [v21 sampleWithValue:v99 timestamp:entryDate];
            metrics = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics = [metrics processMetrics];
            v26 = [processMetrics objectForKeyedSubscript:v16];
            [v26 setWifiIn:v23];

            v27 = MEMORY[0x277D3A108];
            entryDate2 = [entryCopy entryDate];
            v29 = [v27 sampleWithValue:v98 timestamp:entryDate2];
            metrics2 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics2 = [metrics2 processMetrics];
            v32 = [processMetrics2 objectForKeyedSubscript:v16];
            [v32 setWifiOut:v29];

            v33 = MEMORY[0x277D3A108];
            entryDate3 = [entryCopy entryDate];
            v35 = [v33 sampleWithValue:v97 timestamp:entryDate3];
            metrics3 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics3 = [metrics3 processMetrics];
            v38 = [processMetrics3 objectForKeyedSubscript:v16];
            [v38 setCellIn:v35];

            v39 = MEMORY[0x277D3A108];
            entryDate4 = [entryCopy entryDate];
            v41 = [v39 sampleWithValue:v96 timestamp:entryDate4];
            metrics4 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics4 = [metrics4 processMetrics];
            v44 = [processMetrics4 objectForKeyedSubscript:v16];
            [v44 setCellOut:v41];

            metrics5 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics5 = [metrics5 processMetrics];
            v47 = [processMetrics5 objectForKeyedSubscript:v16];
            wifiIn = [v47 wifiIn];
            cachedMetrics = [(PLPowerMetricMonitorService *)self cachedMetrics];
            processMetrics6 = [cachedMetrics processMetrics];
            v51 = [processMetrics6 objectForKeyedSubscript:v16];
            [v51 setWifiIn:wifiIn];

            metrics6 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics7 = [metrics6 processMetrics];
            v54 = [processMetrics7 objectForKeyedSubscript:v16];
            wifiOut = [v54 wifiOut];
            metrics7 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics8 = [metrics7 processMetrics];
            v58 = [processMetrics8 objectForKeyedSubscript:v16];
            [v58 setWifiOut:wifiOut];

            metrics8 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics9 = [metrics8 processMetrics];
            v61 = [processMetrics9 objectForKeyedSubscript:v16];
            cellIn = [v61 cellIn];
            metrics9 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics10 = [metrics9 processMetrics];
            v65 = [processMetrics10 objectForKeyedSubscript:v16];
            [v65 setCellIn:cellIn];

            metrics10 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics11 = [metrics10 processMetrics];
            v68 = [processMetrics11 objectForKeyedSubscript:v16];
            cellOut = [v68 cellOut];
            metrics11 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics12 = [metrics11 processMetrics];
            v72 = [processMetrics12 objectForKeyedSubscript:v16];
            [v72 setCellOut:cellOut];

            -[PLPowerMetricMonitorService _computeNetworkingCostWithWifiIn:wifiOut:cellIn:cellOut:](self, "_computeNetworkingCostWithWifiIn:wifiOut:cellIn:cellOut:", [v99 intValue], objc_msgSend(v98, "intValue"), objc_msgSend(v97, "intValue"), objc_msgSend(v96, "intValue"));
            v74 = MEMORY[0x277D3A108];
            v75 = [MEMORY[0x277CCABB0] numberWithInt:v73];
            entryDate5 = [entryCopy entryDate];
            v77 = [v74 sampleWithValue:v75 timestamp:entryDate5];
            metrics12 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics13 = [metrics12 processMetrics];
            v80 = [processMetrics13 objectForKeyedSubscript:v16];
            [v80 setNetworkCost:v77];

            metrics13 = [(PLPowerMetricMonitorService *)self metrics];
            processMetrics14 = [metrics13 processMetrics];
            v83 = [processMetrics14 objectForKeyedSubscript:v16];
            networkCost = [v83 networkCost];
            cachedMetrics2 = [(PLPowerMetricMonitorService *)self cachedMetrics];
            processMetrics15 = [cachedMetrics2 processMetrics];
            v87 = [processMetrics15 objectForKeyedSubscript:v16];
            [v87 setNetworkCost:networkCost];

            v14 = v90;
            v8 = v91;
            v13 = v92;
            bundleId = v94;
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

- (void)_parseLocationMetricsFromEntry:(id)entry
{
  v63 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v7 = [trackedProcesses count];

  if (v7)
  {
    v8 = [entryCopy objectForKeyedSubscript:@"BundleId"];
    if (v8)
    {
      null = [MEMORY[0x277CBEB68] null];

      if (v8 != null)
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
        allKeys = [trackedProcesses2 allKeys];

        obj = allKeys;
        v12 = [allKeys countByEnumeratingWithState:&v56 objects:v62 count:16];
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
        selfCopy = self;
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
            trackedProcesses3 = [(PLPowerMetricMonitorService *)self trackedProcesses];
            v19 = [trackedProcesses3 objectForKeyedSubscript:v17];
            bundleId = [v19 bundleId];

            if ([bundleId isEqualToString:v8])
            {
              v21 = [entryCopy objectForKeyedSubscript:@"timestampEnd"];
              if (v21)
              {

                goto LABEL_12;
              }

              v29 = [entryCopy objectForKeyedSubscript:@"LocationDesiredAccuracy"];

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
                entryDate = [entryCopy entryDate];
                v33 = [v31 sampleWithValue:MEMORY[0x277CBEC38] timestamp:entryDate];
                metrics = [(PLPowerMetricMonitorService *)self metrics];
                processMetrics = [metrics processMetrics];
                v36 = [processMetrics objectForKeyedSubscript:v17];
                [v36 setOngoingLocation:v33];

                v37 = MEMORY[0x277CCABB0];
                [(PLPowerMetricMonitorService *)self _computeLocationCostWithWifiCost:0 gpsCost:1 cellCost:0 skyhookCost:0];
                entryDate4 = [v37 numberWithDouble:?];
                v38 = MEMORY[0x277D3A108];
                entryDate2 = [entryCopy entryDate];
                v40 = [v38 sampleWithValue:entryDate4 timestamp:entryDate2];
                metrics2 = [(PLPowerMetricMonitorService *)self metrics];
                processMetrics2 = [metrics2 processMetrics];
                [processMetrics2 objectForKeyedSubscript:v17];
                v44 = v43 = entryCopy;
                [v44 setLocationCost:v40];

                v45 = MEMORY[0x277D3A108];
                v25 = [v43 objectForKeyedSubscript:@"LocationDesiredAccuracy"];
                entryDate3 = [v43 entryDate];
                processMetrics4 = [v45 sampleWithValue:v25 timestamp:entryDate3];
                metrics3 = [(PLPowerMetricMonitorService *)selfCopy metrics];
                processMetrics3 = [metrics3 processMetrics];
                v47 = [processMetrics3 objectForKeyedSubscript:v17];
                [v47 setLocationDesiredAccuracy:processMetrics4];

                entryCopy = v43;
                self = selfCopy;
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
                entryDate4 = [entryCopy entryDate];
                v25 = [v23 sampleWithValue:MEMORY[0x277CBEC28] timestamp:entryDate4];
                entryDate3 = [(PLPowerMetricMonitorService *)self metrics];
                processMetrics4 = [entryDate3 processMetrics];
                metrics3 = [processMetrics4 objectForKeyedSubscript:v17];
                [metrics3 setOngoingLocation:v25];
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

- (void)_parseApplicationMetricsFromEntry:(id)entry
{
  entryCopy = entry;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v7 = [trackedProcesses count];

  if (v7)
  {
    v8 = [entryCopy objectForKeyedSubscript:@"pid"];
    trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v10 = [trackedProcesses2 objectForKeyedSubscript:v8];

    if (v10)
    {
      v11 = [entryCopy objectForKeyedSubscript:@"State"];
      v12 = MEMORY[0x277D3A108];
      entryDate = [entryCopy entryDate];
      v14 = [v12 sampleWithValue:v11 timestamp:entryDate];
      metrics = [(PLPowerMetricMonitorService *)self metrics];
      processMetrics = [metrics processMetrics];
      v17 = [processMetrics objectForKeyedSubscript:v8];
      [v17 setApplicationState:v14];

      trackedProcesses3 = [(PLPowerMetricMonitorService *)self trackedProcesses];
      v19 = [trackedProcesses3 objectForKeyedSubscript:v8];
      [v19 setApplicationState:v11];

      intValue = [v8 intValue];
      intValue2 = [v11 intValue];
      currQueryTime = [(PLPowerMetricMonitorService *)self currQueryTime];
      [(PLPowerMetricMonitorService *)self _setLastActiveStartTimeAndLastSuspendTimeWithPid:intValue appState:intValue2 currentTime:currQueryTime];
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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if (_updateMetricsWithThermalState_onceToken != -1)
  {
    [PLPowerMetricMonitorService _updateMetricsWithThermalState];
  }

  state64 = 0;
  notify_get_state(_updateMetricsWithThermalState_thermalStateToken, &state64);
  v4 = state64;
  metrics = [(PLPowerMetricMonitorService *)self metrics];
  [metrics setThermalPressure:v4];

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

  metrics2 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics2 setInducedThermalPressure:v8];
}

uint64_t __61__PLPowerMetricMonitorService__updateMetricsWithThermalState__block_invoke()
{
  notify_register_check(*MEMORY[0x277D85E48], &_updateMetricsWithThermalState_thermalStateToken);
  _updateMetricsWithThermalState_cltmDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cltm"];

  return MEMORY[0x2821F96F8]();
}

- (id)_convertToWattsFromMilliwatts:(id)milliwatts
{
  v3 = MEMORY[0x277CCABB0];
  [milliwatts doubleValue];
  v5 = v4 / 1000.0;

  return [v3 numberWithDouble:v5];
}

- (void)_startBrightnessTimer
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  [(PLPowerMetricMonitorService *)self _cancelBrightnessTimer];
  v4 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_INFO, "Starting timer needed for display metrics", buf, 2u);
  }

  monitorQueue2 = [(PLPowerMetricMonitorService *)self monitorQueue];
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, monitorQueue2);
  [(PLPowerMetricMonitorService *)self setDisplayUpdatesTimer:v6];

  displayUpdatesTimer = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];
  v8 = dispatch_time(0, 0);
  dispatch_source_set_timer(displayUpdatesTimer, v8, 0x3B9ACA00uLL, 0);

  displayUpdatesTimer2 = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __52__PLPowerMetricMonitorService__startBrightnessTimer__block_invoke;
  handler[3] = &unk_279A5BDC0;
  handler[4] = self;
  dispatch_source_set_event_handler(displayUpdatesTimer2, handler);

  displayUpdatesTimer3 = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];
  dispatch_resume(displayUpdatesTimer3);
}

- (void)_handleDisplayLayoutUpdate:(id)update
{
  v40 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = updateCopy;
  if (updateCopy)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    elements = [updateCopy elements];
    v7 = [elements countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(elements);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        [v12 frame];
        v14 = v13;
        [v12 frame];
        v10 = v10 + v14 * v15;
      }

      v8 = [elements countByEnumeratingWithState:&v34 objects:v39 count:16];
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
      elements = [v5 elements];
      v17 = [elements countByEnumeratingWithState:&v30 objects:v38 count:16];
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
              objc_enumerationMutation(elements);
            }

            v21 = *(*(&v30 + 1) + 8 * j);
            bundleIdentifier = [v21 bundleIdentifier];
            if (bundleIdentifier)
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
            screenState = [(PLPowerMetricMonitorService *)self screenState];
            [screenState setObject:v27 forKeyedSubscript:v23];
          }

          v18 = [elements countByEnumeratingWithState:&v30 objects:v38 count:16];
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

- (double)_computeDisplayCostWithAvgRed:(int)red avgGreen:(int)green avgBlue:(int)blue
{
  v5 = (green / 255.0 * 0.25 + red / 255.0 * 0.31 + blue * 0.44 / 255.0) * 600.0;
  v6 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _computeDisplayCostWithAvgRed:avgGreen:avgBlue:];
  }

  return v5;
}

- (double)_computeNetworkingCostWithWifiIn:(int)in wifiOut:(int)out cellIn:(int)cellIn cellOut:(int)cellOut
{
  v6 = (out + in + cellIn + cellOut);
  v7 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _computeNetworkingCostWithWifiIn:wifiOut:cellIn:cellOut:];
  }

  return v6;
}

- (double)_computeLocationCostWithWifiCost:(int)cost gpsCost:(int)gpsCost cellCost:(int)cellCost skyhookCost:(int)skyhookCost
{
  if (cost <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 50;
  }

  if (gpsCost <= 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 200;
  }

  v8 = v7 | v6;
  if (cellCost <= 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 100;
  }

  if (skyhookCost <= 0)
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

- (double)_computeGPUCostWithGPUSec:(id)sec
{
  secCopy = sec;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  [secCopy doubleValue];
  v7 = v6;

  currQueryTime = [(PLPowerMetricMonitorService *)self currQueryTime];
  lastQueryTime = [(PLPowerMetricMonitorService *)self lastQueryTime];
  [currQueryTime timeIntervalSinceDate:lastQueryTime];
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

- (double)_computeCPUCostWithCPUTicks:(id)ticks
{
  v19 = *MEMORY[0x277D85DE8];
  ticksCopy = ticks;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  [ticksCopy doubleValue];
  v7 = v6;

  [PLUtilities secondsFromMachTime:v7];
  v9 = v8;
  currQueryTime = [(PLPowerMetricMonitorService *)self currQueryTime];
  lastQueryTime = [(PLPowerMetricMonitorService *)self lastQueryTime];
  [currQueryTime timeIntervalSinceDate:lastQueryTime];
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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if ([(PLPowerMetricMonitorService *)self sampleCount])
  {
    v4 = MEMORY[0x277D3A108];
    v5 = MEMORY[0x277CCABB0];
    [(PLPowerMetricMonitorService *)self brightness];
    v7 = [v5 numberWithDouble:{v6 / -[PLPowerMetricMonitorService sampleCount](self, "sampleCount")}];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v9 = [v4 sampleWithValue:v7 timestamp:monotonicDate];
    metrics = [(PLPowerMetricMonitorService *)self metrics];
    [metrics setBrightness:v9];

    v11 = MEMORY[0x277D3A108];
    v12 = MEMORY[0x277CCABB0];
    [(PLPowerMetricMonitorService *)self edrHeadroom];
    v14 = [v12 numberWithDouble:{v13 / -[PLPowerMetricMonitorService sampleCount](self, "sampleCount")}];
    monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
    v16 = [v11 sampleWithValue:v14 timestamp:monotonicDate2];
    metrics2 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics2 setEdrHeadroom:v16];

    [(PLPowerMetricMonitorService *)self brightnessSum];
    [(PLPowerMetricMonitorService *)self setBrightnessPercentage:v18 / [(PLPowerMetricMonitorService *)self sampleCount]];
    metrics3 = [(PLPowerMetricMonitorService *)self metrics];
    brightness = [metrics3 brightness];
    cachedMetrics = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [cachedMetrics setBrightness:brightness];

    metrics4 = [(PLPowerMetricMonitorService *)self metrics];
    edrHeadroom = [metrics4 edrHeadroom];
    cachedMetrics2 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    [cachedMetrics2 setEdrHeadroom:edrHeadroom];

    [(PLPowerMetricMonitorService *)self setEdrHeadroom:0.0];
    [(PLPowerMetricMonitorService *)self setBrightness:0.0];
    [(PLPowerMetricMonitorService *)self setBrightnessSum:0.0];

    [(PLPowerMetricMonitorService *)self setSampleCount:0];
  }

  else
  {
    cachedMetrics3 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    brightness2 = [cachedMetrics3 brightness];
    metrics5 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics5 setBrightness:brightness2];

    cachedMetrics4 = [(PLPowerMetricMonitorService *)self cachedMetrics];
    edrHeadroom2 = [cachedMetrics4 edrHeadroom];
    metrics6 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics6 setEdrHeadroom:edrHeadroom2];
  }
}

- (void)_computeEnergyScoreForProcess
{
  v263 = *MEMORY[0x277D85DE8];
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  selfCopy = self;
  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v5 = [trackedProcesses count];

  if (v5)
  {
    v235 = objc_opt_new();
    v6 = objc_opt_new();
    costElement = [(PLPowerMetricMonitorService *)self costElement];

    if (!costElement)
    {
      v8 = +[PLDTCostElement getCostElementInstance];
      [(PLPowerMetricMonitorService *)self setCostElement:v8];
    }

    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    allKeys = [trackedProcesses2 allKeys];

    obj = allKeys;
    v223 = [allKeys countByEnumeratingWithState:&v241 objects:v262 count:16];
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
          metrics = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics = [metrics processMetrics];
          v16 = [processMetrics objectForKeyedSubscript:v12];
          cpuCost = [v16 cpuCost];
          value = [cpuCost value];
          [value doubleValue];
          v19 = [v13 numberWithDouble:?];
          v260[1] = @"overhead";
          v261[0] = v19;
          v261[1] = &unk_2871458E0;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v261 forKeys:v260 count:2];
          [v228 setObject:v20 forKeyedSubscript:@"CPUCost"];

          v258[0] = @"cost";
          v21 = MEMORY[0x277CCABB0];
          metrics2 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics2 = [metrics2 processMetrics];
          v24 = [processMetrics2 objectForKeyedSubscript:v12];
          networkCost = [v24 networkCost];
          value2 = [networkCost value];
          [value2 doubleValue];
          v27 = [v21 numberWithDouble:?];
          v258[1] = @"overhead";
          v259[0] = v27;
          v259[1] = &unk_2871458E0;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v259 forKeys:v258 count:2];
          [v228 setObject:v28 forKeyedSubscript:@"NetworkCost"];

          v256[0] = @"cost";
          v29 = MEMORY[0x277CCABB0];
          metrics3 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics3 = [metrics3 processMetrics];
          v32 = [processMetrics3 objectForKeyedSubscript:v12];
          locationCost = [v32 locationCost];
          value3 = [locationCost value];
          [value3 doubleValue];
          v35 = [v29 numberWithDouble:?];
          v256[1] = @"overhead";
          v257[0] = v35;
          v257[1] = &unk_2871458E0;
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v257 forKeys:v256 count:2];
          [v228 setObject:v36 forKeyedSubscript:@"LocationCost"];

          v254[0] = @"cost";
          v37 = MEMORY[0x277CCABB0];
          metrics4 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics4 = [metrics4 processMetrics];
          v40 = [processMetrics4 objectForKeyedSubscript:v12];
          applicationState = [v40 applicationState];
          value4 = [applicationState value];
          [value4 doubleValue];
          v43 = [v37 numberWithDouble:?];
          v254[1] = @"overhead";
          v255[0] = v43;
          v255[1] = &unk_2871458E0;
          v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v255 forKeys:v254 count:2];
          [v228 setObject:v44 forKeyedSubscript:@"CurrentApplicationState"];

          v252[0] = @"cost";
          v45 = MEMORY[0x277CCABB0];
          metrics5 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics5 = [metrics5 processMetrics];
          v231 = v12;
          v48 = [processMetrics5 objectForKeyedSubscript:v12];
          gpuCost = [v48 gpuCost];
          value5 = [gpuCost value];
          [value5 doubleValue];
          v51 = [v45 numberWithDouble:?];
          v252[1] = @"overhead";
          v253[0] = v51;
          v253[1] = &unk_2871458E0;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v253 forKeys:v252 count:2];
          [v228 setObject:v52 forKeyedSubscript:@"GPUCost"];

          v6 = v228;
          v250[0] = @"cost";
          v53 = MEMORY[0x277CCABB0];
          metrics6 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          v55 = [v53 numberWithInteger:{objc_msgSend(metrics6, "thermalPressure")}];
          v250[1] = @"overhead";
          v251[0] = v55;
          v251[1] = &unk_2871458E0;
          v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v251 forKeys:v250 count:2];
          [v228 setObject:v56 forKeyedSubscript:@"CurrentThermalState"];

          metrics7 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          inducedThermalPressure = [metrics7 inducedThermalPressure];

          if (inducedThermalPressure == -1)
          {
            v61 = 0;
          }

          else
          {
            v59 = MEMORY[0x277CCABB0];
            metrics8 = [(PLPowerMetricMonitorService *)selfCopy metrics];
            v61 = [v59 numberWithInteger:{objc_msgSend(metrics8, "inducedThermalPressure")}];
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
            metrics9 = [(PLPowerMetricMonitorService *)selfCopy metrics];
            processMetrics6 = [metrics9 processMetrics];
            v66 = [processMetrics6 objectForKeyedSubscript:v231];
            applicationState2 = [v66 applicationState];
            value6 = [applicationState2 value];
            [value6 doubleValue];
            v70 = v69;

            if (v70 == 8.0)
            {
              v71 = MEMORY[0x277CCABB0];
              metrics10 = [(PLPowerMetricMonitorService *)selfCopy metrics];
              displayCost = [metrics10 displayCost];
              value7 = [displayCost value];
              [value7 doubleValue];
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
          energyScoringEntities = [(PLPowerMetricMonitorService *)selfCopy energyScoringEntities];
          v233 = [energyScoringEntities countByEnumeratingWithState:&v237 objects:v245 count:16];
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
                objc_enumerationMutation(energyScoringEntities);
              }

              v81 = *(*(&v237 + 1) + 8 * v80);
              v82 = [v6 objectForKey:v81];

              if (v82)
              {
                v236 = v80;
                v234 = v81;
                if ([v81 isEqualToString:@"NetworkCost"])
                {
                  costElement2 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  v84 = [v6 objectForKeyedSubscript:@"NetworkCost"];
                  v85 = [v84 objectForKeyedSubscript:@"cost"];
                  [v85 doubleValue];
                  v87 = v86;
                  lastQueryTime = [(PLPowerMetricMonitorService *)selfCopy lastQueryTime];
                  [costElement2 addNetworkingEvent:lastQueryTime atTime:objc_msgSend(v231 withPid:"intValue") withAppState:8 withQueryCount:{-[PLPowerMetricMonitorService lastQueryCount](selfCopy, "lastQueryCount"), v87}];

                  costElement3 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  currQueryTime = [(PLPowerMetricMonitorService *)selfCopy currQueryTime];
                  intValue = [v231 intValue];
                  trackedProcesses3 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v92 = [trackedProcesses3 objectForKeyedSubscript:v231];
                  lastActiveStart = [v92 lastActiveStart];
                  trackedProcesses4 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v95 = [trackedProcesses4 objectForKeyedSubscript:v231];
                  lastSuspendStart = [v95 lastSuspendStart];
                  v97 = [costElement3 getNetworkingCostUptoTime:currQueryTime withPid:intValue withLastActiveStart:lastActiveStart withLastSuspendStart:lastSuspendStart withAppState:8 withQueryCount:{-[PLPowerMetricMonitorService currQueryCount](selfCopy, "currQueryCount")}];
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
                  trackedProcesses5 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v110 = [trackedProcesses5 objectForKeyedSubscript:v231];
                  lastActiveStart2 = [v110 lastActiveStart];
                  v112 = [v104 sampleWithValue:v108 timestamp:lastActiveStart2];
                  v113 = v106;
                  metrics11 = [(PLPowerMetricMonitorService *)selfCopy metrics];
                  processMetrics7 = [metrics11 processMetrics];
                  v116 = [processMetrics7 objectForKeyedSubscript:v231];
                  [v116 setNetworkCost:v112];

                  v81 = v234;
                  v6 = v228;

                  goto LABEL_40;
                }

                if ([v81 isEqualToString:@"LocationCost"])
                {
                  costElement4 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  v118 = [v6 objectForKeyedSubscript:@"LocationCost"];
                  v119 = [v118 objectForKeyedSubscript:@"cost"];
                  [v119 doubleValue];
                  v121 = v120;
                  lastQueryTime2 = [(PLPowerMetricMonitorService *)selfCopy lastQueryTime];
                  [costElement4 addLocationEvent:lastQueryTime2 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:{8, v121}];

                  costElement5 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  currQueryTime2 = [(PLPowerMetricMonitorService *)selfCopy currQueryTime];
                  intValue2 = [v231 intValue];
                  trackedProcesses6 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v127 = [trackedProcesses6 objectForKeyedSubscript:v231];
                  lastActiveStart3 = [v127 lastActiveStart];
                  trackedProcesses7 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v130 = [trackedProcesses7 objectForKeyedSubscript:v231];
                  lastSuspendStart2 = [v130 lastSuspendStart];
                  v132 = [costElement5 getLocationCostUptoTime:currQueryTime2 withPid:intValue2 withLastActiveStart:lastActiveStart3 withLastSuspendStart:lastSuspendStart2 withAppState:8];
                  v133 = v235;
                  [v235 setObject:v132 forKeyedSubscript:@"LocationCost"];

                  v6 = v228;
                  v134 = v235;
                  v135 = @"LocationCost";
                  goto LABEL_34;
                }

                if ([v81 isEqualToString:@"CPUCost"])
                {
                  costElement6 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  v142 = [v6 objectForKeyedSubscript:@"CPUCost"];
                  v143 = [v142 objectForKeyedSubscript:@"cost"];
                  [v143 doubleValue];
                  v145 = v144;
                  lastQueryTime3 = [(PLPowerMetricMonitorService *)selfCopy lastQueryTime];
                  [costElement6 addCpuEvent:lastQueryTime3 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:{8, v145}];

                  costElement7 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  currQueryTime3 = [(PLPowerMetricMonitorService *)selfCopy currQueryTime];
                  intValue3 = [v231 intValue];
                  trackedProcesses8 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v151 = [trackedProcesses8 objectForKeyedSubscript:v231];
                  lastActiveStart4 = [v151 lastActiveStart];
                  trackedProcesses9 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v154 = [trackedProcesses9 objectForKeyedSubscript:v231];
                  lastSuspendStart3 = [v154 lastSuspendStart];
                  v156 = [costElement7 getCpuCostUptoTime:currQueryTime3 withPid:intValue3 withLastActiveStart:lastActiveStart4 withLastSuspendStart:lastSuspendStart3 withAppState:8];
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
                  costElement8 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  v161 = [v6 objectForKeyedSubscript:@"GPUCost"];
                  v162 = [v161 objectForKeyedSubscript:@"cost"];
                  [v162 doubleValue];
                  v164 = v163;
                  lastQueryTime4 = [(PLPowerMetricMonitorService *)selfCopy lastQueryTime];
                  [costElement8 addGpuEvent:lastQueryTime4 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:{8, v164}];

                  costElement9 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  currQueryTime4 = [(PLPowerMetricMonitorService *)selfCopy currQueryTime];
                  intValue4 = [v231 intValue];
                  trackedProcesses10 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v170 = [trackedProcesses10 objectForKeyedSubscript:v231];
                  lastActiveStart5 = [v170 lastActiveStart];
                  trackedProcesses11 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v173 = [trackedProcesses11 objectForKeyedSubscript:v231];
                  lastSuspendStart4 = [v173 lastSuspendStart];
                  v175 = [costElement9 getGpuCostUptoTime:currQueryTime4 withPid:intValue4 withLastActiveStart:lastActiveStart5 withLastSuspendStart:lastSuspendStart4 withAppState:8];
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
                  costElement10 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  v190 = [v6 objectForKeyedSubscript:@"DisplayCost"];
                  v191 = [v190 objectForKeyedSubscript:@"cost"];
                  [v191 doubleValue];
                  v193 = v192;
                  lastQueryTime5 = [(PLPowerMetricMonitorService *)selfCopy lastQueryTime];
                  [costElement10 addDisplayEvent:lastQueryTime5 atTime:objc_msgSend(v231 withPid:"intValue") withAppState:{8, v193}];

                  costElement11 = [(PLPowerMetricMonitorService *)selfCopy costElement];
                  currQueryTime5 = [(PLPowerMetricMonitorService *)selfCopy currQueryTime];
                  intValue5 = [v231 intValue];
                  trackedProcesses12 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v199 = [trackedProcesses12 objectForKeyedSubscript:v231];
                  lastActiveStart6 = [v199 lastActiveStart];
                  trackedProcesses13 = [(PLPowerMetricMonitorService *)selfCopy trackedProcesses];
                  v202 = [trackedProcesses13 objectForKeyedSubscript:v231];
                  lastSuspendStart5 = [v202 lastSuspendStart];
                  v204 = [costElement11 getDisplayCostUptoTime:currQueryTime5 withPid:intValue5 withLastActiveStart:lastActiveStart6 withLastSuspendStart:lastSuspendStart5 withAppState:8];
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
            v205 = [energyScoringEntities countByEnumeratingWithState:&v237 objects:v245 count:16];
            v233 = v205;
          }

          while (v205);
LABEL_59:

          v206 = MEMORY[0x277D3A108];
          v207 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
          monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
          v209 = [v206 sampleWithValue:v207 timestamp:monotonicDate];
          metrics12 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics8 = [metrics12 processMetrics];
          v212 = [processMetrics8 objectForKeyedSubscript:v231];
          [v212 setEnergyCost:v209];

          v213 = MEMORY[0x277D3A108];
          v214 = [MEMORY[0x277CCABB0] numberWithDouble:v78];
          monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
          v216 = [v213 sampleWithValue:v214 timestamp:monotonicDate2];
          metrics13 = [(PLPowerMetricMonitorService *)selfCopy metrics];
          processMetrics9 = [metrics13 processMetrics];
          v219 = [processMetrics9 objectForKeyedSubscript:v231];
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

- (BOOL)_pidIsValid:(int)valid
{
  v10 = *MEMORY[0x277D85DE8];
  if (valid < 1)
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
        result = v7 == valid;
        if (v7 == valid)
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

- (void)_startMetricCollectionTimerWithInterval:(double)interval block:(id)block
{
  blockCopy = block;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  [(PLPowerMetricMonitorService *)self _cancelMetricCollectionTimer];
  if (interval >= 0.2)
  {
    monitorQueue2 = [(PLPowerMetricMonitorService *)self monitorQueue];
    v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, monitorQueue2);
    [(PLPowerMetricMonitorService *)self setMetricCollectionRepeatingTimer:v10];

    metricCollectionRepeatingTimer = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
    dispatch_source_set_timer(metricCollectionRepeatingTimer, 0, (interval * 1000000000.0), 0x989680uLL);

    metricCollectionRepeatingTimer2 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
    dispatch_source_set_event_handler(metricCollectionRepeatingTimer2, blockCopy);

    metricCollectionRepeatingTimer3 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
    dispatch_resume(metricCollectionRepeatingTimer3);
  }

  else
  {
    metricCollectionRepeatingTimer3 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(metricCollectionRepeatingTimer3, OS_LOG_TYPE_FAULT))
    {
      [PLPowerMetricMonitorService _startMetricCollectionTimerWithInterval:block:];
    }
  }
}

- (void)setMetricCollectionTimerUpdateInterval:(double)interval
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  if (interval >= 0.2)
  {
    metricCollectionRepeatingTimer = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];

    if (metricCollectionRepeatingTimer)
    {
      metricCollectionRepeatingTimer2 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
      dispatch_source_set_timer(metricCollectionRepeatingTimer2, 0, (interval * 1000000000.0), 0x989680uLL);
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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  metricCollectionRepeatingTimer = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];

  if (metricCollectionRepeatingTimer)
  {
    metricCollectionRepeatingTimer2 = [(PLPowerMetricMonitorService *)self metricCollectionRepeatingTimer];
    dispatch_source_cancel(metricCollectionRepeatingTimer2);

    [(PLPowerMetricMonitorService *)self setMetricCollectionRepeatingTimer:0];
  }
}

- (void)_startMetricCollectionTimeoutTimerWithTimeout:(double)timeout block:(id)block
{
  blockCopy = block;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  [(PLPowerMetricMonitorService *)self _cancelMetricCollectionTimeoutTimer];
  monitorQueue2 = [(PLPowerMetricMonitorService *)self monitorQueue];
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, monitorQueue2);
  [(PLPowerMetricMonitorService *)self setMetricCollectionTimeoutTimer:v9];

  metricCollectionTimeoutTimer = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];
  v11 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_source_set_timer(metricCollectionTimeoutTimer, v11, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);

  metricCollectionTimeoutTimer2 = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];
  dispatch_source_set_event_handler(metricCollectionTimeoutTimer2, blockCopy);

  metricCollectionTimeoutTimer3 = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];
  dispatch_resume(metricCollectionTimeoutTimer3);
}

- (void)_cancelMetricCollectionTimeoutTimer
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  metricCollectionTimeoutTimer = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];

  if (metricCollectionTimeoutTimer)
  {
    metricCollectionTimeoutTimer2 = [(PLPowerMetricMonitorService *)self metricCollectionTimeoutTimer];
    dispatch_source_cancel(metricCollectionTimeoutTimer2);

    [(PLPowerMetricMonitorService *)self setMetricCollectionTimeoutTimer:0];
  }
}

- (void)_cancelBrightnessTimer
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v4 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_INFO, "Cancelling timer needed for display metrics", v7, 2u);
  }

  displayUpdatesTimer = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];

  if (displayUpdatesTimer)
  {
    displayUpdatesTimer2 = [(PLPowerMetricMonitorService *)self displayUpdatesTimer];
    dispatch_source_cancel(displayUpdatesTimer2);

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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  trackedProcesses = [(PLPowerMetricMonitorService *)self trackedProcesses];
  v5 = [trackedProcesses count];

  if (v5)
  {
    trackedProcesses2 = [(PLPowerMetricMonitorService *)self trackedProcesses];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__PLPowerMetricMonitorService__sampleCoalitions__block_invoke;
    v7[3] = &unk_279A5C448;
    v7[4] = self;
    [trackedProcesses2 enumerateKeysAndObjectsUsingBlock:v7];
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

- (void)_calculateAccumSystemLoad:(id)load
{
  loadCopy = load;
  [(PLPowerMetricMonitorService *)self accumSystemLoad];
  v6 = v5;
  v7 = [loadCopy objectForKeyedSubscript:@"zSLa"];
  v8 = [loadCopy objectForKeyedSubscript:@"zSLc"];
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

      v29 = [loadCopy objectForKeyedSubscript:@"zSLi"];
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

        metrics = [(PLPowerMetricMonitorService *)self metrics];
        [metrics setAccumSystemLoad:0];

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
    entryDate = [loadCopy entryDate];
    v39 = [v37 sampleWithValue:v30 timestamp:entryDate];
    metrics2 = [(PLPowerMetricMonitorService *)self metrics];
    [metrics2 setAccumSystemLoad:v39];

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
  entryDate2 = [loadCopy entryDate];
  v33 = [v31 sampleWithValue:v30 timestamp:entryDate2];
  metrics3 = [(PLPowerMetricMonitorService *)self metrics];
  [metrics3 setAccumSystemLoad:v33];

LABEL_16:
}

- (BOOL)isPluggedIn
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PLPowerMetricMonitorService_isPluggedIn__block_invoke;
  v5[3] = &unk_279A5C3D0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(monitorQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __42__PLPowerMetricMonitorService_isPluggedIn__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) chargerConnected];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setUpSleepWakeMonitoring
{
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

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
    systemPowerPortRef = [(PLPowerMetricMonitorService *)self systemPowerPortRef];
    monitorQueue2 = [(PLPowerMetricMonitorService *)self monitorQueue];
    IONotificationPortSetDispatchQueue(systemPowerPortRef, monitorQueue2);

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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

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
      currentPowerState = [(PLPowerMetricMonitorService *)self currentPowerState];
      v8 = "Sleeping";
      if (currentPowerState == 1)
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

- (void)_handlePowerNotification:(unsigned int)notification argument:(void *)argument
{
  v20 = *MEMORY[0x277D85DE8];
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  dispatch_assert_queue_V2(monitorQueue);

  v8 = PLLogPowerMetricMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLPowerMetricMonitorService _handlePowerNotification:argument:];
  }

  currentPowerState = [(PLPowerMetricMonitorService *)self currentPowerState];
  HIDWORD(v11) = notification + 536870288;
  LODWORD(v11) = notification + 536870288;
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
        IOAllowPowerChange([(PLPowerMetricMonitorService *)self rootDomainConnect], argument);
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
  if ([(PLPowerMetricMonitorService *)self currentPowerState]!= currentPowerState && [(PLPowerMetricMonitorService *)self currentPowerState])
  {
    v15 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      currentPowerState2 = [(PLPowerMetricMonitorService *)self currentPowerState];
      v17 = "Sleeping";
      if (currentPowerState2 == 1)
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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__PLPowerMetricMonitorService_queryLastSleepTimeMCT__block_invoke;
  v6[3] = &unk_279A5C3D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(monitorQueue, v6);

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
  monitorQueue = [(PLPowerMetricMonitorService *)self monitorQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__PLPowerMetricMonitorService_queryLastWakeTimeMCT__block_invoke;
  v6[3] = &unk_279A5C3D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(monitorQueue, v6);

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
  [self audioIsActive];
  [a2 count];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_getCurrentPlayingSessions
{
  v7 = *MEMORY[0x277D85DE8];
  [self count];
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