@interface PLDiscretionaryEnergyMonitor
- (PLDiscretionaryEnergyMonitor)initWithCompletionBlock:(id)a3;
- (PLDiscretionaryEnergyMonitor)initWithDebugMode:(BOOL)a3 andMockData:(id)a4 andCompletionBlock:(id)a5;
- (double)getPowerlogEnergySum:(id)a3;
- (id)createPowerlogQueryTimer;
- (id)createQuickEnergyAccumulatorTimer;
- (void)accumulateQuickEnergy;
- (void)createQuickEnergyAccumulatorTimer;
- (void)generateEnergyReport;
- (void)incrementCPUEnergy:(double)a3;
- (void)incrementNetworkEnergy:(double)a3;
- (void)logEnergyReport:(id)a3;
- (void)logPowerlogResponse:(id)a3;
- (void)logQuickEnergySnapshots;
- (void)queryPowerlogForDiscretionaryEnergy;
- (void)reportChargingStatus:(BOOL)a3;
- (void)reportStartEvent:(id)a3 withInfo:(id)a4;
- (void)reportStopEvent:(id)a3 withInfo:(id)a4;
- (void)runCompletionBlockWithEnergyResponse:(id)a3;
- (void)setStateForNotification:(id)a3 withState:(id)a4;
- (void)setupNotificationListeners;
- (void)testHighVolumeStartStopReporting:(id)a3 withInfo:(id)a4 withNumIterations:(double)a5;
- (void)updateMockData:(id)a3;
@end

@implementation PLDiscretionaryEnergyMonitor

- (PLDiscretionaryEnergyMonitor)initWithCompletionBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLDiscretionaryEnergyMonitor;
  v5 = [(PLDiscretionaryEnergyMonitor *)&v10 init];
  if (v5)
  {
    v6 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_DEFAULT, "Initializing PLDiscretionaryEnergyMonitor...", v9, 2u);
    }

    v5 = [(PLDiscretionaryEnergyMonitor *)v5 initWithDebugMode:0 andMockData:0 andCompletionBlock:v4];
    v7 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BACB7000, v7, OS_LOG_TYPE_DEFAULT, "Finished initializing PLDiscretionaryEnergyMonitor...", v9, 2u);
    }
  }

  return v5;
}

- (PLDiscretionaryEnergyMonitor)initWithDebugMode:(BOOL)a3 andMockData:(id)a4 andCompletionBlock:(id)a5
{
  v6 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v26.receiver = self;
  v26.super_class = PLDiscretionaryEnergyMonitor;
  v10 = [(PLDiscretionaryEnergyMonitor *)&v26 init];
  v11 = v10;
  if (v10)
  {
    [(PLDiscretionaryEnergyMonitor *)v10 setCompletionBlock:v9];
    v12 = discretionaryEnergyMonitorQueue();
    [(PLDiscretionaryEnergyMonitor *)v11 setWorkQueue:v12];

    [(PLDiscretionaryEnergyMonitor *)v11 setMockData:0];
    v13 = v6 && +[PLModelingUtilities internalBuild];
    [(PLDiscretionaryEnergyMonitor *)v11 setDebugMode:v13];
    if ([(PLDiscretionaryEnergyMonitor *)v11 debugMode])
    {
      v14 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v8;
        _os_log_impl(&dword_1BACB7000, v14, OS_LOG_TYPE_INFO, "Initializing in debug mode with mockData=%@", buf, 0xCu);
      }

      if (v8)
      {
        v15 = [v8 mutableCopy];
        [(PLDiscretionaryEnergyMonitor *)v11 setMockData:v15];

        v16 = [(PLDiscretionaryEnergyMonitor *)v11 mockData];
        v17 = [v16 objectForKeyedSubscript:@"LastPowerlogResponseMock"];
        [(PLDiscretionaryEnergyMonitor *)v11 setLastPowerlogResponse:v17];
      }
    }

    else if (+[PLModelingUtilities internalBuild])
    {
      [(PLDiscretionaryEnergyMonitor *)v11 setupNotificationListeners];
    }

    [(PLDiscretionaryEnergyMonitor *)v11 setAccumulatedCPUEnergy:0.0];
    [(PLDiscretionaryEnergyMonitor *)v11 setAccumulatedNetworkEnergy:0.0];
    [(PLDiscretionaryEnergyMonitor *)v11 setLastReportedTotalEnergy:0.0];
    [(PLDiscretionaryEnergyMonitor *)v11 setPowerlogEnergyLast:0.0];
    [(PLDiscretionaryEnergyMonitor *)v11 setPowerlogEnergyPrevious:0.0];
    v18 = [(PLDiscretionaryEnergyMonitor *)v11 createPowerlogQueryTimer];
    [(PLDiscretionaryEnergyMonitor *)v11 setPowerlogQueryTimer:v18];

    v19 = [(PLDiscretionaryEnergyMonitor *)v11 createQuickEnergyAccumulatorTimer];
    [(PLDiscretionaryEnergyMonitor *)v11 setQuickEnergyAccumulatorTimer:v19];

    v20 = objc_opt_new();
    [(PLDiscretionaryEnergyMonitor *)v11 setQuickEnergySnapshots:v20];

    [(PLDiscretionaryEnergyMonitor *)v11 queryPowerlogForDiscretionaryEnergy];
    [(PLDiscretionaryEnergyMonitor *)v11 accumulateQuickEnergy];
    [(PLDiscretionaryEnergyMonitor *)v11 setIsCharging:0];
    v21 = [PLDiscretionaryIntervalManager alloc];
    v22 = [(PLDiscretionaryEnergyMonitor *)v11 mockData];
    v23 = [(PLDiscretionaryIntervalManager *)v21 initWithEnergyMonitor:v11 andMockData:v22];
    [(PLDiscretionaryEnergyMonitor *)v11 setIntervalManager:v23];
  }

  v24 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)reportStartEvent:(id)a3 withInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryEnergyMonitor reportStartEvent:withInfo:];
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PLDiscretionaryEnergyMonitor_reportStartEvent_withInfo___block_invoke;
  block[3] = &unk_1E7F18808;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(workQueue, block);
}

void __58__PLDiscretionaryEnergyMonitor_reportStartEvent_withInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) intervalManager];
  [v2 handleStartEvent:*(a1 + 40) withInfo:*(a1 + 48)];
}

- (void)reportStopEvent:(id)a3 withInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryEnergyMonitor reportStopEvent:withInfo:];
  }

  v9 = dispatch_time(0, 1000000000);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PLDiscretionaryEnergyMonitor_reportStopEvent_withInfo___block_invoke;
  block[3] = &unk_1E7F18808;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_after(v9, workQueue, block);
}

void __57__PLDiscretionaryEnergyMonitor_reportStopEvent_withInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) intervalManager];
  [v2 handleStopEvent:*(a1 + 40) withInfo:*(a1 + 48)];
}

- (void)generateEnergyReport
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 lastPowerlogResponse];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __52__PLDiscretionaryEnergyMonitor_generateEnergyReport__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __52__PLDiscretionaryEnergyMonitor_generateEnergyReport__block_invoke_cold_1(a1, v7);
  }

  v9 = *(a1 + 32);
  v10 = [v7 timestamp];
  [v9 timeIntervalSinceDate:v10];
  v12 = v11;

  if (v12 <= 60.0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }

  else
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (void)queryPowerlogForDiscretionaryEnergy
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PLDiscretionaryEnergyMonitor_queryPowerlogForDiscretionaryEnergy__block_invoke;
  block[3] = &unk_1E7F187A0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __67__PLDiscretionaryEnergyMonitor_queryPowerlogForDiscretionaryEnergy__block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&dword_1BACB7000, v2, OS_LOG_TYPE_INFO, "Querying powerlog for discretionary energy", &v33, 2u);
  }

  if ([*(a1 + 32) debugMode])
  {
    v3 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_INFO, "Not querying for powerlog response in debug mode, using lastPowerlogResponse instead", &v33, 2u);
    }

    v4 = [*(a1 + 32) lastPowerlogResponse];
  }

  else
  {
    v4 = PLQueryRegistered(24, @"BLMReportEnergyDuet", 0);
  }

  v5 = v4;
  v6 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v33 = 138412290;
    v34 = v5;
    _os_log_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_INFO, "Powerlog response: %@", &v33, 0xCu);
  }

  if (!v5 || ([v5 objectForKeyedSubscript:@"PermissionUnknown"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __67__PLDiscretionaryEnergyMonitor_queryPowerlogForDiscretionaryEnergy__block_invoke_cold_2();
    }

    goto LABEL_32;
  }

  [*(a1 + 32) logPowerlogResponse:v5];
  v8 = [*(a1 + 32) lastPowerlogResponse];

  if (v8)
  {
    v8 = [*(a1 + 32) lastPowerlogResponse];
  }

  v9 = [v5 objectForKeyedSubscript:@"BLMEnergyResponseTimestamp"];
  [*(a1 + 32) setPowerlogTimestampLast:v9];

  [*(a1 + 32) getPowerlogEnergySum:v5];
  [*(a1 + 32) setPowerlogEnergyLast:?];
  [*(a1 + 32) setLastPowerlogResponse:v5];
  if (!v8)
  {
    goto LABEL_29;
  }

  v10 = [v8 objectForKeyedSubscript:@"BLMEnergyResponseTimestamp"];
  [*(a1 + 32) setPowerlogTimestampPrevious:v10];
  [*(a1 + 32) getPowerlogEnergySum:v8];
  [*(a1 + 32) setPowerlogEnergyPrevious:?];
  v11 = [*(a1 + 32) powerlogTimestampLast];

  v12 = 1;
  if (v10)
  {
    if (v11)
    {
      v13 = [*(a1 + 32) powerlogTimestampLast];
      [v13 timeIntervalSinceDate:v10];
      v15 = v14;

      if (v15 > 0.0)
      {
        [*(a1 + 32) powerlogEnergyLast];
        v17 = v16;
        [*(a1 + 32) powerlogEnergyPrevious];
        [*(a1 + 32) setPowerlogEnergyDiff:v17 - v18];
        v19 = PLLogDiscretionaryEnergyMonitor();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          [*(a1 + 32) powerlogEnergyPrevious];
          v21 = v20;
          [*(a1 + 32) powerlogEnergyLast];
          v23 = v22;
          [*(a1 + 32) powerlogEnergyDiff];
          v25 = v24;
          v26 = [*(a1 + 32) powerlogTimestampPrevious];
          v27 = [*(a1 + 32) powerlogTimestampLast];
          v33 = 134219010;
          v34 = v21;
          v35 = 2048;
          v36 = v23;
          v37 = 2048;
          v38 = v25;
          v39 = 2112;
          v40 = v26;
          v41 = 2112;
          v42 = v27;
          _os_log_impl(&dword_1BACB7000, v19, OS_LOG_TYPE_DEFAULT, "New Powerlog Accounting Energy: previousPowerlogEnergySum=%f, lastPowerlogEnergySum=%f, powerlogEnergyDiff=%f from previousResponseTimestamp=%@ to lastResponseTimestamp=%@", &v33, 0x34u);
        }

        v12 = 0;
      }
    }
  }

  v28 = [*(a1 + 32) powerlogTimestampLast];
  if (!v28)
  {

LABEL_29:
    v31 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      __67__PLDiscretionaryEnergyMonitor_queryPowerlogForDiscretionaryEnergy__block_invoke_cold_1();
    }

    [*(a1 + 32) generateEnergyReport];
    goto LABEL_32;
  }

  v29 = v28;
  v30 = [*(a1 + 32) powerlogTimestampPrevious];
  if (!v30)
  {
    v12 = 0;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:

  v32 = *MEMORY[0x1E69E9840];
}

- (void)runCompletionBlockWithEnergyResponse:(id)a3
{
  v6 = a3;
  v4 = [(PLDiscretionaryEnergyMonitor *)self completionBlock];

  if (v4)
  {
    v5 = [(PLDiscretionaryEnergyMonitor *)self completionBlock];
    (v5)[2](v5, v6);
  }
}

- (id)createPowerlogQueryTimer
{
  v3 = dispatch_get_global_queue(-32768, 0);
  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);

  v5 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v4, v5, 0x8BB2C97000uLL, 0x165A0BC00uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __56__PLDiscretionaryEnergyMonitor_createPowerlogQueryTimer__block_invoke;
  handler[3] = &unk_1E7F187A0;
  handler[4] = self;
  dispatch_source_set_event_handler(v4, handler);
  dispatch_resume(v4);

  return v4;
}

- (id)createQuickEnergyAccumulatorTimer
{
  v3 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryEnergyMonitor createQuickEnergyAccumulatorTimer];
  }

  v4 = dispatch_get_global_queue(-32768, 0);
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);

  v6 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v5, v6, 0xDF8475800uLL, 0x165A0BC00uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __65__PLDiscretionaryEnergyMonitor_createQuickEnergyAccumulatorTimer__block_invoke;
  handler[3] = &unk_1E7F187A0;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(v5);

  return v5;
}

- (void)accumulateQuickEnergy
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PLDiscretionaryEnergyMonitor_accumulateQuickEnergy__block_invoke;
  block[3] = &unk_1E7F187A0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __53__PLDiscretionaryEnergyMonitor_accumulateQuickEnergy__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&dword_1BACB7000, v2, OS_LOG_TYPE_INFO, "accumulating quick energy", &v28, 2u);
  }

  v3 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) accumulatedCPUEnergy];
    v5 = v4;
    [*(a1 + 32) accumulatedNetworkEnergy];
    v7 = v6;
    [*(a1 + 32) accumulatedCPUEnergy];
    v9 = v8;
    [*(a1 + 32) accumulatedNetworkEnergy];
    v28 = 134218496;
    v29 = v5;
    v30 = 2048;
    v31 = v7;
    v32 = 2048;
    v33 = v9 + v10;
    _os_log_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_DEFAULT, "Creating quick energy snapshot, cpuEnergyTotal=%f, networkEnergyTotal=%f, totalEnergy=%f", &v28, 0x20u);
  }

  v11 = [PLQuickEnergySnapshot alloc];
  v13 = *(a1 + 32);
  v12 = (a1 + 32);
  [v13 accumulatedCPUEnergy];
  v15 = v14;
  [*v12 accumulatedNetworkEnergy];
  v17 = [(PLQuickEnergySnapshot *)v11 initWithEnergies:v15 andNetworkEnergy:v16];
  v18 = [*v12 quickEnergySnapshots];
  v19 = [v18 count];

  v20 = [*v12 quickEnergySnapshots];
  v21 = v20;
  if (v19)
  {
    v22 = [v20 lastObject];

    [(PLQuickEnergySnapshot *)v17 computeEnergyDiff:v22];
    if (v23 >= 1.0)
    {
      v25 = [*v12 quickEnergySnapshots];
      [v25 addObject:v17];

      [*v12 generateEnergyReport];
      v24 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = [*v12 quickEnergySnapshots];
        v28 = 138412290;
        v29 = v26;
        _os_log_impl(&dword_1BACB7000, v24, OS_LOG_TYPE_INFO, "quickEnergySnapshots=%@", &v28, 0xCu);
      }
    }

    else
    {
      v24 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        __53__PLDiscretionaryEnergyMonitor_accumulateQuickEnergy__block_invoke_cold_1();
      }
    }
  }

  else
  {
    [v20 addObject:v17];

    v22 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __53__PLDiscretionaryEnergyMonitor_accumulateQuickEnergy__block_invoke_cold_2(v12);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (double)getPowerlogEnergySum:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"BLMEnergyForDuet"];
  v5 = [v4 count];

  if (v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v6 = [v3 objectForKeyedSubscript:@"BLMEnergyForDuet"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__PLDiscretionaryEnergyMonitor_getPowerlogEnergySum___block_invoke;
    v9[3] = &unk_1E7F18858;
    v9[4] = &v10;
    [v6 enumerateObjectsUsingBlock:v9];
    v7 = v11[3];

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

void __53__PLDiscretionaryEnergyMonitor_getPowerlogEnergySum___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"energy"];
  [v4 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v3 + *(*(*(a1 + 32) + 8) + 24);
}

- (void)reportChargingStatus:(BOOL)a3
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PLDiscretionaryEnergyMonitor_reportChargingStatus___block_invoke;
  v4[3] = &unk_1E7F18880;
  v4[4] = self;
  v5 = a3;
  dispatch_async(workQueue, v4);
}

uint64_t __53__PLDiscretionaryEnergyMonitor_reportChargingStatus___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isCharging")}];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    v13 = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_1BACB7000, v2, OS_LOG_TYPE_DEFAULT, "Setting chargingStatus from isCharging=%@ to isCharging=%@", &v13, 0x16u);
  }

  if (([*(a1 + 32) isCharging] & 1) == 0 && *(a1 + 40) == 1)
  {
    v5 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __53__PLDiscretionaryEnergyMonitor_reportChargingStatus___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) intervalManager];
    [v6 handleOpenIntervalTimer];

    v7 = [*(a1 + 32) intervalManager];
    [v7 disableQuickEnergy];
  }

  if ([*(a1 + 32) isCharging] && (*(a1 + 40) & 1) == 0)
  {
    v8 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __53__PLDiscretionaryEnergyMonitor_reportChargingStatus___block_invoke_cold_1();
    }

    v9 = [*(a1 + 32) intervalManager];
    [v9 handleOpenIntervalTimer];

    v10 = [*(a1 + 32) intervalManager];
    [v10 enableQuickEnergy];
  }

  result = [*(a1 + 32) setIsCharging:*(a1 + 40)];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)incrementCPUEnergy:(double)a3
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke;
  v4[3] = &unk_1E7F188A8;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(workQueue, v4);
}

void __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCharging];
  v3 = PLLogDiscretionaryEnergyMonitor();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke_cold_2();
    }
  }

  else
  {
    if (v4)
    {
      __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke_cold_1(a1);
    }

    v5 = *(a1 + 32);
    [v5 accumulatedCPUEnergy];
    [v5 setAccumulatedCPUEnergy:v6 + *(a1 + 40)];
  }
}

- (void)incrementNetworkEnergy:(double)a3
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__PLDiscretionaryEnergyMonitor_incrementNetworkEnergy___block_invoke;
  v4[3] = &unk_1E7F188A8;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(workQueue, v4);
}

void __55__PLDiscretionaryEnergyMonitor_incrementNetworkEnergy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCharging];
  v3 = PLLogDiscretionaryEnergyMonitor();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke_cold_2();
    }
  }

  else
  {
    if (v4)
    {
      __55__PLDiscretionaryEnergyMonitor_incrementNetworkEnergy___block_invoke_cold_1(a1);
    }

    v5 = *(a1 + 32);
    [v5 accumulatedNetworkEnergy];
    [v5 setAccumulatedNetworkEnergy:v6 + *(a1 + 40)];
  }
}

- (void)testHighVolumeStartStopReporting:(id)a3 withInfo:(id)a4 withNumIterations:(double)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2048;
    v19 = a5;
    _os_log_impl(&dword_1BACB7000, v10, OS_LOG_TYPE_DEFAULT, "Testing high volume start/stops for activityName=%@, withInfo=%@ for %f iterations", &v14, 0x20u);
  }

  if (a5 > 0.0)
  {
    v11 = 1;
    do
    {
      [(PLDiscretionaryEnergyMonitor *)self reportStartEvent:v8 withInfo:v9];
      [(PLDiscretionaryEnergyMonitor *)self reportStopEvent:v8 withInfo:v9];
      v12 = v11++;
    }

    while (v12 < a5);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setupNotificationListeners
{
  v3 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_DEFAULT, "Setting up debug listeners", v16, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, didReceiveNotification, @"com.apple.energybudgetingdebug.quickEnergySnapshots", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, self, didReceiveNotification, @"com.apple.energybudgetingdebug.queryPowerlog", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, self, didReceiveNotification, @"com.apple.energybudgetingdebug.generateEnergyReport", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v7, self, didReceiveNotification, @"com.apple.energybudgetingdebug.discretionaryIntervals", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v8, self, didReceiveNotification, @"com.apple.energybudgetingdebug.lastPowerlogEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v9, self, didReceiveNotification, @"com.apple.energybudgetingdebug.lastPowerlogTimestamp", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v10, self, didReceiveNotification, @"com.apple.energybudgetingdebug.chargingStatus", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v11, self, didReceiveNotification, @"com.apple.energybudgetingdebug.lastReportedTotalEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v12 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v12, self, didReceiveNotification, @"com.apple.energybudgetingdebug.lastReportedCPUEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v13 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v13, self, didReceiveNotification, @"com.apple.energybudgetingdebug.lastReportedNetworkEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v14 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v14, self, didReceiveNotification, @"com.apple.energybudgetingdebug.accumulatedCPUEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v15 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v15, self, didReceiveNotification, @"com.apple.energybudgetingdebug.accumulatedNetworkEnergy", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)setStateForNotification:(id)a3 withState:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1BACB7000, v7, OS_LOG_TYPE_INFO, "Setting state=%@ for notificationName=%@", &v10, 0x16u);
  }

  v10 = 0;
  if (notify_register_check([v5 UTF8String], &v10))
  {
    v8 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLDiscretionaryEnergyMonitor setStateForNotification:withState:];
    }

LABEL_9:

    goto LABEL_10;
  }

  if (notify_set_state(v10, [v6 unsignedLongLongValue]))
  {
    v8 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLDiscretionaryEnergyMonitor setStateForNotification:withState:];
    }

    goto LABEL_9;
  }

LABEL_10:

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateMockData:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLDiscretionaryEnergyMonitor *)self debugMode];
  v6 = PLLogDiscretionaryEnergyMonitor();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&dword_1BACB7000, v7, OS_LOG_TYPE_INFO, "Updating to mockData=%@", &v15, 0xCu);
    }

    v7 = [v4 mutableCopy];
    v8 = [v7 objectForKeyedSubscript:@"LastPowerlogResponseMock"];
    v9 = [(PLDiscretionaryEnergyMonitor *)self mockData];
    [v9 setObject:v8 forKeyedSubscript:@"LastPowerlogResponseMock"];

    v10 = [(PLDiscretionaryEnergyMonitor *)self mockData];
    v11 = [v10 objectForKeyedSubscript:@"LastPowerlogResponseMock"];
    [(PLDiscretionaryEnergyMonitor *)self setLastPowerlogResponse:v11];

    v12 = [v7 objectForKeyedSubscript:@"CPUCoalitionsMock"];
    v13 = [(PLDiscretionaryEnergyMonitor *)self mockData];
    [v13 setObject:v12 forKeyedSubscript:@"CPUCoalitionsMock"];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [PLDiscretionaryEnergyMonitor updateMockData:];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)logPowerlogResponse:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"BLMEnergyForDuet"];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_525];

  v5 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v3 objectForKeyedSubscript:@"BLMEnergyResponseTimestamp"];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1BACB7000, v5, OS_LOG_TYPE_INFO, "EnergyResponseTimestamp: %@", &v10, 0xCu);
  }

  v7 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v3 objectForKeyedSubscript:@"BLMUUIDForDuet"];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1BACB7000, v7, OS_LOG_TYPE_INFO, "UUIDForDuet: %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __52__PLDiscretionaryEnergyMonitor_logPowerlogResponse___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_INFO, "%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)logQuickEnergySnapshots
{
  v2 = [(PLDiscretionaryEnergyMonitor *)self quickEnergySnapshots];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_530];
}

void __55__PLDiscretionaryEnergyMonitor_logQuickEnergySnapshots__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_INFO, "%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)logEnergyReport:(id)a3
{
  v3 = a3;
  v4 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryEnergyMonitor logEnergyReport:];
  }

  PLLogRegisteredEvent(70, @"DASEnergyReport", v3);
}

- (void)reportStartEvent:withInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1BACB7000, v0, v1, "Reporting startEvent activityName=%@, info=%@ from energyMonitor");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)reportStopEvent:withInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1BACB7000, v0, v1, "Reporting stopEvent activityName=%@, info=%@ from energyMonitor");
  v2 = *MEMORY[0x1E69E9840];
}

void __52__PLDiscretionaryEnergyMonitor_generateEnergyReport__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 timestamp];
  [v2 timeIntervalSinceDate:v3];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void __67__PLDiscretionaryEnergyMonitor_queryPowerlogForDiscretionaryEnergy__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__PLDiscretionaryEnergyMonitor_queryPowerlogForDiscretionaryEnergy__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)createQuickEnergyAccumulatorTimer
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __53__PLDiscretionaryEnergyMonitor_accumulateQuickEnergy__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __53__PLDiscretionaryEnergyMonitor_accumulateQuickEnergy__block_invoke_cold_2(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*a1 quickEnergySnapshots];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __53__PLDiscretionaryEnergyMonitor_reportChargingStatus___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __51__PLDiscretionaryEnergyMonitor_incrementCPUEnergy___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__PLDiscretionaryEnergyMonitor_incrementNetworkEnergy___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setStateForNotification:withState:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setStateForNotification:withState:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateMockData:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logEnergyReport:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end