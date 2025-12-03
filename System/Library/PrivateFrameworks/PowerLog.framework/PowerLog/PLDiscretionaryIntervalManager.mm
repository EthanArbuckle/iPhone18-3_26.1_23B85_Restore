@interface PLDiscretionaryIntervalManager
- (PLDiscretionaryEnergyMonitor)discretionaryEnergyMonitor;
- (PLDiscretionaryIntervalManager)initWithEnergyMonitor:(id)monitor andMockData:(id)data;
- (id)coalesceIntervals:(id)intervals;
- (id)createOpenIntervalTimer;
- (id)createPowerlogReportTimer;
- (void)createOpenIntervalTimer;
- (void)createPowerlogReportTimer;
- (void)handleOpenIntervalTimer;
- (void)handlePowerlogReportTimer;
- (void)handleStartEvent:(id)event withInfo:(id)info;
- (void)handleStopEvent:(id)event withInfo:(id)info;
- (void)logActivityNameToInvolvedIdentifiers;
- (void)logDiscretionaryIntervals;
- (void)reportIntervalsToPowerlog;
@end

@implementation PLDiscretionaryIntervalManager

- (PLDiscretionaryIntervalManager)initWithEnergyMonitor:(id)monitor andMockData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  monitorCopy = monitor;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = PLDiscretionaryIntervalManager;
  v8 = [(PLDiscretionaryIntervalManager *)&v17 init];
  if (v8)
  {
    v9 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = dataCopy;
      _os_log_impl(&dword_1BACB7000, v9, OS_LOG_TYPE_DEFAULT, "Initializing DiscretionaryIntervalManager, with mockData=%@", buf, 0xCu);
    }

    [(PLDiscretionaryIntervalManager *)v8 setMockData:dataCopy];
    v10 = objc_opt_new();
    [(PLDiscretionaryIntervalManager *)v8 setIdentifierToDiscretionaryIntervals:v10];

    v11 = objc_opt_new();
    [(PLDiscretionaryIntervalManager *)v8 setActivityNameToInvolvedIdentifiers:v11];

    [(PLDiscretionaryIntervalManager *)v8 setDiscretionaryEnergyMonitor:monitorCopy];
    [(PLDiscretionaryIntervalManager *)v8 setQuickEnergyEnabled:1];
    createOpenIntervalTimer = [(PLDiscretionaryIntervalManager *)v8 createOpenIntervalTimer];
    [(PLDiscretionaryIntervalManager *)v8 setOpenIntervalTimer:createOpenIntervalTimer];

    createPowerlogReportTimer = [(PLDiscretionaryIntervalManager *)v8 createPowerlogReportTimer];
    [(PLDiscretionaryIntervalManager *)v8 setPowerlogReportTimer:createPowerlogReportTimer];

    v14 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BACB7000, v14, OS_LOG_TYPE_DEFAULT, "Finished initializing DiscretionaryIntervalManager", buf, 2u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)handleStartEvent:(id)event withInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  v8 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager handleStartEvent:withInfo:];
  }

  v9 = [infoCopy objectForKeyedSubscript:@"involvedIdentifiers"];
  activityNameToInvolvedIdentifiers = [(PLDiscretionaryIntervalManager *)self activityNameToInvolvedIdentifiers];
  [activityNameToInvolvedIdentifiers setObject:v9 forKeyedSubscript:eventCopy];

  v11 = [infoCopy objectForKeyedSubscript:@"involvedIdentifiers"];
  v12 = [infoCopy objectForKeyedSubscript:@"requiresNetwork"];
  LODWORD(activityNameToInvolvedIdentifiers) = [v12 BOOLValue];

  if (activityNameToInvolvedIdentifiers)
  {
    v13 = [v11 mutableCopy];

    [v13 addObject:@"discretionaryNetworkTasks"];
    v11 = v13;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__PLDiscretionaryIntervalManager_handleStartEvent_withInfo___block_invoke;
  v16[3] = &unk_1E7F186B8;
  v16[4] = self;
  v17 = infoCopy;
  v14 = infoCopy;
  [v11 enumerateObjectsUsingBlock:v16];
  v15 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager handleStartEvent:? withInfo:?];
  }
}

void __60__PLDiscretionaryIntervalManager_handleStartEvent_withInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifierToDiscretionaryIntervals];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [*(a1 + 32) identifierToDiscretionaryIntervals];
    [v6 setObject:v5 forKeyedSubscript:v3];
  }

  if ([v5 count] && (objc_msgSend(v5, "lastObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isClosed"), v7, (v8 & 1) == 0))
  {
    v15 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __60__PLDiscretionaryIntervalManager_handleStartEvent_withInfo___block_invoke_cold_1();
    }

    v16 = [v5 lastObject];
    [v16 openCount];
    [v16 setOpenCount:v17 + 1.0];

    v14 = [v5 lastObject];
    [(PLDiscretionaryInterval *)v14 startCount];
    [(PLDiscretionaryInterval *)v14 setStartCount:v18 + 1.0];
  }

  else
  {
    v9 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __60__PLDiscretionaryIntervalManager_handleStartEvent_withInfo___block_invoke_cold_2();
    }

    v10 = [PLDiscretionaryInterval alloc];
    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) quickEnergyEnabled];
    v13 = [*(a1 + 32) mockData];
    v14 = [(PLDiscretionaryInterval *)v10 initWithIdentifier:v3 andInfo:v11 andSnapshottingEnabled:v12 andMockData:v13];

    [v5 addObject:v14];
  }
}

- (void)handleStopEvent:(id)event withInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  v8 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager handleStopEvent:withInfo:];
  }

  activityNameToInvolvedIdentifiers = [(PLDiscretionaryIntervalManager *)self activityNameToInvolvedIdentifiers];
  v10 = [activityNameToInvolvedIdentifiers objectForKeyedSubscript:eventCopy];

  if (v10)
  {
    v11 = [infoCopy mutableCopy];
    v12 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLDiscretionaryIntervalManager handleStopEvent:? withInfo:?];
    }

    activityNameToInvolvedIdentifiers2 = [(PLDiscretionaryIntervalManager *)self activityNameToInvolvedIdentifiers];
    v14 = [activityNameToInvolvedIdentifiers2 objectForKeyedSubscript:eventCopy];
    [v11 setObject:v14 forKeyedSubscript:@"involvedIdentifiers"];

    v15 = [v11 objectForKeyedSubscript:@"involvedIdentifiers"];
    v16 = [v15 mutableCopy];

    v17 = [infoCopy objectForKeyedSubscript:@"requiresNetwork"];
    bOOLValue = [v17 BOOLValue];

    if (bOOLValue)
    {
      [v16 addObject:@"discretionaryNetworkTasks"];
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke;
    v20[3] = &unk_1E7F18708;
    v20[4] = self;
    [v16 enumerateObjectsUsingBlock:v20];
    v19 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PLDiscretionaryIntervalManager handleStopEvent:? withInfo:?];
    }
  }

  else
  {
    v11 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PLDiscretionaryIntervalManager handleStopEvent:eventCopy withInfo:self];
    }
  }
}

void __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifierToDiscretionaryIntervals];
  v5 = [v4 objectForKeyedSubscript:v3];

  if ([v5 count])
  {
    v6 = [v5 lastObject];
    if ([v6 isClosed])
    {
      v7 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_cold_2();
      }

LABEL_15:

      goto LABEL_16;
    }

    [v6 openCount];
    [v6 setOpenCount:v8 + -1.0];
    if ([v6 shouldClose])
    {
      if ([*(a1 + 32) quickEnergyEnabled])
      {
        [*(a1 + 32) reportQuickEnergyForInterval:v6 withIdentifier:v3 andAdjustSnapshotToNow:0];
      }

      [v6 closeInterval];
      v9 = [*(a1 + 32) activityNameToInvolvedIdentifiers];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_345;
      v14[3] = &unk_1E7F186E0;
      v15 = v3;
      v10 = [v9 keysOfEntriesPassingTest:v14];

      if ([v10 count])
      {
        v11 = [*(a1 + 32) activityNameToInvolvedIdentifiers];
        v12 = [v10 allObjects];
        [v11 removeObjectsForKeys:v12];
      }

      v13 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_cold_1();
      }

      v7 = v15;
      goto LABEL_15;
    }
  }

  else
  {
    v6 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_cold_3();
    }
  }

LABEL_16:
}

- (void)reportIntervalsToPowerlog
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__PLDiscretionaryIntervalManager_reportIntervalsToPowerlog__block_invoke(id *a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v37 = a2;
  v4 = a3;
  v5 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __59__PLDiscretionaryIntervalManager_reportIntervalsToPowerlog__block_invoke_cold_1();
  }

  v6 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v49 count:16];
  v35 = v6;
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v39;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        v14 = [v13 originalStartDate];
        v15 = [v13 endDate];
        if (([v13 isClosed] & 1) == 0)
        {
          [v13 checkOpenIntervalDuration:v37];
          v10 |= v16 > 600.0;
          v17 = [MEMORY[0x1E695DF00] date];

          v48 = v13;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
          v19 = [v18 mutableCopy];
          v6 = v35;
          [a1[4] setObject:v19 forKeyedSubscript:v37];

          v15 = v17;
        }

        v46[0] = @"startDate";
        v46[1] = @"endDate";
        v47[0] = v14;
        v47[1] = v15;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
        v21 = [v20 mutableCopy];
        [v6 addObject:v21];
      }

      v9 = [v7 countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v9);

    if (v10)
    {
      [a1[5] logActivityNameToInvolvedIdentifiers];
    }
  }

  else
  {
  }

  if (([v37 isEqualToString:@"discretionaryNetworkTasks"] & 1) == 0)
  {
    v22 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __59__PLDiscretionaryIntervalManager_reportIntervalsToPowerlog__block_invoke_cold_2();
    }

    v23 = objc_opt_new();
    [v23 setObject:&unk_1F38E30B0 forKeyedSubscript:@"updateType"];
    v24 = MEMORY[0x1E695DEC8];
    v25 = [a1[5] coalesceIntervals:v6];
    v26 = [v24 arrayWithArray:v25];
    [v23 setObject:v26 forKeyedSubscript:@"eventIntervals"];

    v27 = v37;
    v28 = +[PLCPUEnergySnapshot identifierToAccountingName];
    v29 = [v28 objectForKeyedSubscript:v27];

    if (v29)
    {
      v30 = +[PLCPUEnergySnapshot identifierToAccountingName];
      v31 = [v30 objectForKeyedSubscript:v27];

      v32 = PLLogDiscretionaryEnergyMonitor();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v43 = v27;
        v44 = 2112;
        v45 = v31;
        _os_log_impl(&dword_1BACB7000, v32, OS_LOG_TYPE_INFO, "Adjusting identifier=%@ to accountingName=%@ before reporting to powerlog", buf, 0x16u);
      }
    }

    else
    {
      v31 = v27;
    }

    v6 = v35;
    [v23 setObject:v31 forKeyedSubscript:@"bundleID"];
    v33 = [v23 mutableCopy];
    [a1[6] addObject:v33];
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __59__PLDiscretionaryIntervalManager_reportIntervalsToPowerlog__block_invoke_365(uint64_t a1, void *a2)
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

- (id)coalesceIntervals:(id)intervals
{
  v28 = *MEMORY[0x1E69E9840];
  intervalsCopy = intervals;
  v4 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager coalesceIntervals:];
  }

  array = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = intervalsCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if (v8)
        {
          v12 = [*(*(&v23 + 1) + 8 * i) objectForKeyedSubscript:@"startDate"];
          v13 = [v8 objectForKeyedSubscript:@"endDate"];
          [v12 timeIntervalSinceDate:v13];
          v15 = v14;

          v16 = -v15;
          if (v15 >= 0.0)
          {
            v16 = v15;
          }

          if (v16 >= 5.0)
          {
            [array addObject:v8];
            v18 = v11;

            v8 = v18;
          }

          else
          {
            v17 = [v11 objectForKeyedSubscript:@"endDate"];
            [v8 setObject:v17 forKeyedSubscript:@"endDate"];
          }
        }

        else
        {
          v8 = [*(*(&v23 + 1) + 8 * i) mutableCopy];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);

    if (v8)
    {
      [array addObject:v8];
    }
  }

  else
  {

    v8 = 0;
  }

  v19 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager coalesceIntervals:];
  }

  v20 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)handleOpenIntervalTimer
{
  v3 = discretionaryEnergyMonitorQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke;
  block[3] = &unk_1E7F187A0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke(uint64_t a1)
{
  v2 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) identifierToDiscretionaryIntervals];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke_369;
  v4[3] = &unk_1E7F18778;
  v4[4] = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke_369(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 lastObject];
  v8 = [v6 lastObject];

  LOBYTE(v6) = [v8 isClosed];
  if ((v6 & 1) == 0 && [*(a1 + 32) quickEnergyEnabled])
  {
    v9 = PLLogDiscretionaryEnergyMonitor();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke_369_cold_1();
    }

    [*(a1 + 32) reportQuickEnergyForInterval:v7 withIdentifier:v5 andAdjustSnapshotToNow:1];
  }
}

- (void)handlePowerlogReportTimer
{
  v3 = discretionaryEnergyMonitorQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PLDiscretionaryIntervalManager_handlePowerlogReportTimer__block_invoke;
  block[3] = &unk_1E7F187A0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __59__PLDiscretionaryIntervalManager_handlePowerlogReportTimer__block_invoke(uint64_t a1)
{
  v2 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__PLDiscretionaryIntervalManager_handlePowerlogReportTimer__block_invoke_cold_1();
  }

  return [*(a1 + 32) reportIntervalsToPowerlog];
}

- (id)createOpenIntervalTimer
{
  v3 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager createOpenIntervalTimer];
  }

  v4 = dispatch_get_global_queue(-32768, 0);
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);

  v6 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v5, v6, 0xDF8475800uLL, 0x165A0BC00uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __57__PLDiscretionaryIntervalManager_createOpenIntervalTimer__block_invoke;
  handler[3] = &unk_1E7F187A0;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(v5);

  return v5;
}

- (id)createPowerlogReportTimer
{
  v3 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLDiscretionaryIntervalManager createPowerlogReportTimer];
  }

  v4 = dispatch_get_global_queue(-32768, 0);
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);

  v6 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(v5, v6, 0x8BB2C97000uLL, 0x165A0BC00uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __59__PLDiscretionaryIntervalManager_createPowerlogReportTimer__block_invoke;
  handler[3] = &unk_1E7F187A0;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(v5);

  return v5;
}

- (void)logActivityNameToInvolvedIdentifiers
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    activityNameToInvolvedIdentifiers = [(PLDiscretionaryIntervalManager *)self activityNameToInvolvedIdentifiers];
    v7 = 134217984;
    v8 = [activityNameToInvolvedIdentifiers count];
    _os_log_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_INFO, "Logging activityNameToInvolvedIdentifiers, count=%lu", &v7, 0xCu);
  }

  activityNameToInvolvedIdentifiers2 = [(PLDiscretionaryIntervalManager *)self activityNameToInvolvedIdentifiers];
  [activityNameToInvolvedIdentifiers2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_372];

  v6 = *MEMORY[0x1E69E9840];
}

void __70__PLDiscretionaryIntervalManager_logActivityNameToInvolvedIdentifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_INFO, "activityName=%@, involvedIdentifiers=%@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)logDiscretionaryIntervals
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifierToDiscretionaryIntervals = [(PLDiscretionaryIntervalManager *)self identifierToDiscretionaryIntervals];
    v7 = 134217984;
    v8 = [identifierToDiscretionaryIntervals count];
    _os_log_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_DEFAULT, "Logging identifierToDiscretionaryIntervals, count=%lu", &v7, 0xCu);
  }

  identifierToDiscretionaryIntervals2 = [(PLDiscretionaryIntervalManager *)self identifierToDiscretionaryIntervals];
  [identifierToDiscretionaryIntervals2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_374];

  v6 = *MEMORY[0x1E69E9840];
}

void __59__PLDiscretionaryIntervalManager_logDiscretionaryIntervals__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLLogDiscretionaryEnergyMonitor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v27 = v4;
    v28 = 2048;
    v29 = [v5 count];
    _os_log_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_INFO, "identifier=%@, intervalCount=%lu", buf, 0x16u);
  }

  v20 = v4;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = PLLogDiscretionaryEnergyMonitor();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [v11 originalStartDate];
          v14 = [v11 currentStartDate];
          v15 = [v11 endDate];
          [v11 openCount];
          v17 = v16;
          [v11 startCount];
          *buf = 138413314;
          v27 = v13;
          v28 = 2112;
          v29 = v14;
          v30 = 2112;
          v31 = v15;
          v32 = 2048;
          v33 = v17;
          v34 = 2048;
          v35 = v18;
          _os_log_impl(&dword_1BACB7000, v12, OS_LOG_TYPE_INFO, "-> interval: originalStartDate=%@, currentStartDate=%@, endDate=%@, openCount=%f, startCount=%f", buf, 0x34u);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v36 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (PLDiscretionaryEnergyMonitor)discretionaryEnergyMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_discretionaryEnergyMonitor);

  return WeakRetained;
}

- (void)handleStartEvent:withInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1BACB7000, v0, v1, "handling start event for activityName=%@ with info=%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleStartEvent:(void *)a1 withInfo:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifierToDiscretionaryIntervals];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __60__PLDiscretionaryIntervalManager_handleStartEvent_withInfo___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __60__PLDiscretionaryIntervalManager_handleStartEvent_withInfo___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleStopEvent:withInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1BACB7000, v0, v1, "handling stop event for activityName=%@ with info=%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)handleStopEvent:(void *)a1 withInfo:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 activityNameToInvolvedIdentifiers];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleStopEvent:(void *)a1 withInfo:.cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifierToDiscretionaryIntervals];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleStopEvent:(uint64_t)a1 withInfo:(void *)a2 .cold.4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 activityNameToInvolvedIdentifiers];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1BACB7000, v0, v1, "closed interval=%@ for identifier=%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __59__PLDiscretionaryIntervalManager_handleStopEvent_withInfo___block_invoke_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __59__PLDiscretionaryIntervalManager_reportIntervalsToPowerlog__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1BACB7000, v0, v1, "Processing identifier=%@ and intervals=%@");
  v2 = *MEMORY[0x1E69E9840];
}

void __59__PLDiscretionaryIntervalManager_reportIntervalsToPowerlog__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)coalesceIntervals:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)coalesceIntervals:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__PLDiscretionaryIntervalManager_handleOpenIntervalTimer__block_invoke_369_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __59__PLDiscretionaryIntervalManager_handlePowerlogReportTimer__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createOpenIntervalTimer
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createPowerlogReportTimer
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end