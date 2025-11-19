@interface PLProcessMonitorAgent
+ (BOOL)enableThreadStatsLogging;
+ (id)entryEventBackwardAppLaunchTimeSeries;
+ (id)entryEventBackwardDefinitionThreadStats;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventBackwardProcessExitHistogram;
+ (id)entryEventForwardAppResumeInferredCarry;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventForwardProcessID;
+ (id)entryEventIntervalDefinitionKernelTaskMonitor;
+ (id)entryEventIntervalDefinitionProcessMonitorDiff;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointAppNapEnabled;
+ (id)entryEventPointAppNotFrozen;
+ (id)entryEventPointAppResumePredictions;
+ (id)entryEventPointDefinitions;
+ (id)entryEventPointFreezerDemotion;
+ (id)entryEventPointFreezerStats;
+ (id)entryEventPointMemoryTracking;
+ (id)entryEventPointProcessExit;
+ (id)entryEventPointProcessSnapshot;
+ (id)entryEventPointSharedCacheReslid;
+ (id)entryEventPointSystemFreezerStats;
+ (unint64_t)PIDToCoalitionID:(int)a3;
+ (void)load;
- (PLProcessMonitorAgent)init;
- (id)fetchSnapshotWithFlags:(unsigned int)a3;
- (id)getAllProcessExitsInLastHour;
- (id)getFrozenProcesses;
- (id)getJSEIdleTime;
- (id)getJetsamSnapshotEntries:(jetsam_snapshot *)a3;
- (id)getProcessExits:(id)a3;
- (id)getProcessName:(char *)a3;
- (id)getProcessesNotInFreezer:(id)a3 withCurrentProcesses:(id)a4;
- (int)getFrozenToSwapLedgerIndex:(int64_t)a3;
- (int)getLedgerIndex:(int64_t)a3 forKey:(id)a4;
- (int)getProcDirtyTimeLedgerIndex:(int64_t)a3;
- (int)get_kthread_list:(unint64_t *)a3;
- (void)disableProcessExitLogging;
- (void)enableProcessExitLogging;
- (void)initOperatorDependancies;
- (void)initializeThreadStatsLogging;
- (void)log;
- (void)logEventBackwardAppLaunchTimeSeries:(id)a3;
- (void)logEventBackwardProcessExitHistogram:(id)a3 withStats:(id *)a4 withDate:(id)a5;
- (void)logEventForwardAppResumeInferredCarry:(id)a3;
- (void)logEventIntervalKernelTaskMonitor;
- (void)logEventIntervalProcessMonitorIntervalUsingCache;
- (void)logEventPointAppNapEnabled;
- (void)logEventPointAppNotFrozen:(id)a3;
- (void)logEventPointAppResumePredictions:(id)a3;
- (void)logEventPointFreezerDemotion;
- (void)logEventPointFreezerStats;
- (void)logEventPointMemoryTracking;
- (void)logEventPointProcessExit:(id)a3 excludeProcesses:(id)a4 withStats:(id *)a5 withDate:(id)a6 withNowInSec:(unint64_t)a7;
- (void)logEventPointProcessSnapshot;
- (void)logEventPointSystemFreezerStats;
- (void)logProcDirtyStats;
- (void)logProcessExit;
- (void)logThreadStats;
- (void)processesOfInterest:(id)a3;
- (void)updateProcessExitSummary;
- (void)updateProcessMonitorCache;
@end

@implementation PLProcessMonitorAgent

uint64_t __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "ProcessMonitor: Received SBC notification!", buf, 2u);
  }

  [*(a1 + 32) updateProcessMonitorCache];
  [*(a1 + 32) logEventIntervalProcessMonitorIntervalUsingCache];
  [*(a1 + 32) logEventPointMemoryTracking];
  [*(a1 + 32) logEventIntervalKernelTaskMonitor];
  [*(a1 + 32) logProcessExit];
  [*(a1 + 32) logEventPointFreezerStats];
  [*(a1 + 32) logEventPointFreezerDemotion];
  [*(a1 + 32) logEventPointSystemFreezerStats];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: BatteryLevelChanged -> should log to CoreAnalytics?", v5, 2u);
  }

  [*(a1 + 32) logProcDirtyStats];
  [*(a1 + 32) logThreadStats];
  return [*(a1 + 32) logEventPointAppNapEnabled];
}

- (void)updateProcessMonitorCache
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = objc_opt_new();
  v34 = 0;
  v6 = objc_opt_new();
  memset(__b, 255, sizeof(__b));
  v7 = 0x277D3F000uLL;
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    v8 = [(PLProcessMonitorAgent *)self processes];
    v9 = [v8 count];

    if (v9)
    {
      v29 = v3;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v10 = [(PLProcessMonitorAgent *)self processes];
      v11 = [v10 countByEnumeratingWithState:&v30 objects:v56 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v31;
        do
        {
          v14 = 0;
          do
          {
            if (*v31 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v30 + 1) + 8 * v14);
            v16 = objc_autoreleasePoolPush();
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v37 = 0u;
            -[PLProcessMonitorAgent getCpuUsageAndMemoryForPid:withBuffer:withNewProcessArray:withTotalCpu:withActiveProcesses:](self, "getCpuUsageAndMemoryForPid:withBuffer:withNewProcessArray:withTotalCpu:withActiveProcesses:", [v15 intValue], &v37, v6, &v34, v5);
            objc_autoreleasePoolPop(v16);
            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v30 objects:v56 count:16];
        }

        while (v12);
      }

      v3 = v29;
      v7 = 0x277D3F000;
    }
  }

  else
  {
    v17 = proc_listpids(1u, 0, 0, 0);
    proc_listpids(1u, 0, __b, 4096);
    if (v17 >= 4)
    {
      v18 = 0;
      v19 = v17 >> 2;
      do
      {
        v20 = objc_autoreleasePoolPush();
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = 0u;
        [(PLProcessMonitorAgent *)self getCpuUsageAndMemoryForPid:__b[v18] withBuffer:&v37 withNewProcessArray:v6 withTotalCpu:&v34 withActiveProcesses:v5];
        objc_autoreleasePoolPop(v20);
        if (v18 > 0x3FE)
        {
          break;
        }

        ++v18;
      }

      while (v19 > v18);
    }
  }

  if ([v6 count] && (objc_msgSend(*(v7 + 600), "isPowerlogHelperd") & 1) == 0 && (objc_msgSend(*(v7 + 600), "isPerfPowerMetricd") & 1) == 0)
  {
    v21 = [v6 objectAtIndexedSubscript:0];
    v22 = [v21 entryKey];
    v35 = v22;
    v36 = v6;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [v6 objectAtIndexedSubscript:0];
    v25 = v24 = v3;
    v26 = [v25 entryKey];
    [(PLOperator *)self logEntries:v23 withGroupID:v26];

    v3 = v24;
  }

  [(PLProcessMonitorAgent *)self setLastCPUTimeDict:v5];
  v27 = [(PLProcessMonitorAgent *)self currentCachedDate];
  [(PLProcessMonitorAgent *)self setPreviousCacheDate:v27];

  [(PLProcessMonitorAgent *)self setCurrentCachedDate:v4];
  [(PLProcessMonitorAgent *)self setCurrentCachedTotalCPUTime:v34];

  objc_autoreleasePoolPop(v3);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)log
{
  [(PLProcessMonitorAgent *)self updateProcessMonitorCache];
  [(PLProcessMonitorAgent *)self logEventIntervalProcessMonitorIntervalUsingCache];
  [(PLProcessMonitorAgent *)self logEventPointMemoryTracking];
  [(PLProcessMonitorAgent *)self logEventIntervalKernelTaskMonitor];

  [(PLProcessMonitorAgent *)self logProcessExit];
}

- (void)logEventIntervalProcessMonitorIntervalUsingCache
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(PLProcessMonitorAgent *)self previousCacheDate];

  if (v3)
  {
    v4 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ProcessMonitorInterval"];
    v5 = objc_alloc(MEMORY[0x277D3F1E8]);
    v6 = [(PLProcessMonitorAgent *)self previousCacheDate];
    v7 = [v5 initWithEntryKey:v4 withDate:v6];

    v8 = [(PLProcessMonitorAgent *)self currentCachedDate];
    [v7 setObject:v8 forKeyedSubscript:@"timestampEnd"];

    [(PLProcessMonitorAgent *)self currentCachedTotalCPUTime];
    if (v9 > 0.0)
    {
      v26 = v4;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = [(PLProcessMonitorAgent *)self lastCPUTimeDict];
      v11 = [v10 allKeys];

      v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          v15 = 0;
          do
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v27 + 1) + 8 * v15);
            v17 = [(PLProcessMonitorAgent *)self lastCPUTimeDict];
            v18 = [v17 objectForKeyedSubscript:v16];

            v19 = [v18 cpu_time_diff];
            [(PLProcessMonitorAgent *)self currentCachedTotalCPUTime];
            if (v19 / v20 > 0.01)
            {
              v21 = -[PLProcessMonitorAgent processMonitorMultiKeyFromProcessID:](self, "processMonitorMultiKeyFromProcessID:", [v16 intValue]);
              if (v21)
              {
                v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v18, "cpu_time_diff")}];
                [v7 setObject:v22 forKeyedSubscript:v21];
              }
            }

            if ([v18 shared_cache_reslid])
            {
              v23 = PLLogProcessMonitor();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                v24 = [v16 intValue];
                *buf = 67109120;
                v32 = v24;
                _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "Cache reslid for %d", buf, 8u);
              }

              -[PLProcessMonitorAgent logEventPointSharedCacheReslid:](self, "logEventPointSharedCacheReslid:", [v16 intValue]);
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v13);
      }

      v4 = v26;
    }

    [(PLOperator *)self logEntry:v7];
  }

  else
  {
    v4 = PLLogProcessMonitor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "ProcessMonitor cache not set yet", buf, 2u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointMemoryTracking
{
  v32 = *MEMORY[0x277D85DE8];
  if ([(PLOperator *)self isDebugEnabled])
  {
    v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"MemoryTracking"];
    v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
    v28 = 0;
    v27 = 0;
    memset(&stats, 0, sizeof(stats));
    v5 = *MEMORY[0x277D85F48];
    if (malloc_get_all_zones())
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v6 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v6;
        if (qword_2811F4E10 != -1)
        {
          dispatch_once(&qword_2811F4E10, block);
        }

        if (byte_2811F4DA9 == 1)
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"error with malloc_get_all_zones"];
          v8 = MEMORY[0x277D3F178];
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
          v10 = [v9 lastPathComponent];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointMemoryTracking]"];
          [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:1107];

          v12 = PLLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(v31.bytes_total) = 138412290;
            *(&v31.bytes_total + 4) = v7;
            _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", &v31, 0xCu);
          }
        }
      }
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
      mstats(&v31);
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:v31.bytes_total * 0.0009765625];
      [v4 setObject:v13 forKeyedSubscript:@"HeapTotal"];

      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v31.bytes_used * 0.0009765625];
      [v4 setObject:v14 forKeyedSubscript:@"HeapUsed"];

      v15 = [MEMORY[0x277CCABB0] numberWithDouble:v31.bytes_free * 0.0009765625];
      [v4 setObject:v15 forKeyedSubscript:@"HeapFree"];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v16 = objc_opt_class();
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_541;
        v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v24[4] = v16;
        if (qword_2811F4E28 != -1)
        {
          dispatch_once(&qword_2811F4E28, v24);
        }

        if (byte_2811F4DAC == 1)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"heap: total=%f used=%f free=%f", v31.bytes_total * 0.0009765625, v31.bytes_used * 0.0009765625, v31.bytes_free * 0.0009765625];
          v18 = MEMORY[0x277D3F178];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
          v20 = [v19 lastPathComponent];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointMemoryTracking]"];
          [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:1130];

          v22 = PLLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v30 = v17;
            _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      [(PLOperator *)self logEntry:v4];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)logEventIntervalKernelTaskMonitor
{
  v2 = self;
  v96 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v3 = [(PLProcessMonitorAgent *)self get_kthread_list:&v83];
  if (v3 != -1)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEAA8] monotonicDate];
    v6 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"KernelTaskMonitor"];
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v74 = [MEMORY[0x277CBEB18] array];
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    *buf = 0u;
    v8 = [MEMORY[0x277D3F258] getHardwarePerfLevels];
    if (v8 - 3 > 0xFFFFFFFD)
    {
      v16 = v8;
      v75 = 40 * v8 + 8;
      v17 = malloc_type_malloc(v75, 0xB95FC73EuLL);
      if (v17)
      {
        v71 = v6;
        v72 = v2;
        v76 = v17;
        v69 = v5;
        if (v4 < 1)
        {
          v20 = 0.0;
        }

        else
        {
          v70 = v16;
          v18 = 0;
          v19 = 8 * v4;
          v20 = 0.0;
          v68 = v7;
          v73 = v19;
          do
          {
            v21 = objc_autoreleasePoolPush();
            *buf = 0u;
            v90 = 0u;
            v91 = 0u;
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            v22 = proc_pidinfo(0, 15, *(v83 + v18), buf, 112);
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v23 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __58__PLProcessMonitorAgent_logEventIntervalKernelTaskMonitor__block_invoke_707;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v23;
              if (qword_2811F4E90 != -1)
              {
                dispatch_once(&qword_2811F4E90, block);
              }

              if (byte_2811F4DB3 == 1)
              {
                v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"retval = %d", v22];
                v25 = MEMORY[0x277D3F178];
                v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
                v27 = [v26 lastPathComponent];
                v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventIntervalKernelTaskMonitor]"];
                [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:2026];

                v29 = PLLogCommon();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  *v87 = 138412290;
                  *v88 = v24;
                  _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", v87, 0xCu);
                }
              }
            }

            if ((BYTE12(v90) & 2) == 0)
            {
              v30 = [(PLProcessMonitorAgent *)v2 lastEntryDate];

              if (v30)
              {
                v31 = *(v83 + v18);
                v32 = objc_alloc_init(KernelTaskMonitorStats);
                [(KernelTaskMonitorStats *)v32 setThread_id:v31];
                [(KernelTaskMonitorStats *)v32 setCpu_time:(*&buf[8] + *buf) / 1000000000.0];
                v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v92];
                [(KernelTaskMonitorStats *)v32 setThread_name:v33];
                bzero(v76, v75);
                v34 = proc_pidinfo(0, 34, v31, v76, v75);
                if (v75 == v34)
                {
                  [(KernelTaskMonitorStats *)v32 setCpu_energy_p:v76[5] + [(KernelTaskMonitorStats *)v32 cpu_energy_p]];
                  if (v70 >= 2)
                  {
                    [(KernelTaskMonitorStats *)v32 setCpu_energy_e:v76[10] + [(KernelTaskMonitorStats *)v32 cpu_energy_e]];
                  }

                  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
                  [v7 setObject:v32 forKeyedSubscript:v35];

                  v36 = [(PLProcessMonitorAgent *)v2 lastThreadIdToKTMonitorEntryDict];
                  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
                  v38 = [v36 objectForKeyedSubscript:v37];

                  if (v38)
                  {
                    v39 = [v38 thread_name];
                    v40 = [(KernelTaskMonitorStats *)v32 thread_name];
                    v41 = [v39 isEqualToString:v40];

                    if (v41)
                    {
                      v42 = objc_alloc(MEMORY[0x277D3F190]);
                      v43 = [(PLProcessMonitorAgent *)v72 lastEntryDate];
                      v44 = [v42 initWithEntryKey:v71 withDate:v43];

                      [v44 setObject:v69 forKeyedSubscript:@"timestampEnd"];
                      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
                      [v44 setObject:v45 forKeyedSubscript:@"ThreadID"];

                      v46 = [v38 thread_name];
                      [v44 setObject:v46 forKeyedSubscript:@"ThreadName"];

                      [(KernelTaskMonitorStats *)v32 cpu_time];
                      v48 = v47;
                      [v38 cpu_time];
                      v50 = v48 - v49;
                      v51 = [MEMORY[0x277CCABB0] numberWithDouble:v50];
                      [v44 setObject:v51 forKeyedSubscript:@"CPUTime"];

                      if (v50 > 0.0)
                      {
                        v52 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[KernelTaskMonitorStats cpu_energy_p](v32, "cpu_energy_p") - -[NSObject cpu_energy_p](v38, "cpu_energy_p")}];
                        [v44 setObject:v52 forKeyedSubscript:@"CPUEnergyP"];

                        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[KernelTaskMonitorStats cpu_energy_e](v32, "cpu_energy_e") - -[NSObject cpu_energy_e](v38, "cpu_energy_e")}];
                        [v44 setObject:v53 forKeyedSubscript:@"CPUEnergyE"];

                        [v74 addObject:v44];
                      }

                      v20 = v20 + v50;
                    }

                    v7 = v68;
                  }

                  v2 = v72;
                }

                else
                {
                  v54 = v34;
                  v38 = PLLogProcessMonitor();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                  {
                    *v87 = 67109376;
                    *v88 = v54;
                    *&v88[4] = 2048;
                    *&v88[6] = v75;
                    _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "threadcounts syscall return size = %d, expected size = %zu", v87, 0x12u);
                  }
                }

                v19 = v73;
              }
            }

            objc_autoreleasePoolPop(v21);
            v18 += 8;
          }

          while (v19 != v18);
        }

        free(v76);
        free(v83);
        v55 = [(PLProcessMonitorAgent *)v2 lastEntryDate];

        v5 = v69;
        v6 = v71;
        if (v55)
        {
          v56 = objc_opt_new();
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v57 = v74;
          v58 = [v57 countByEnumeratingWithState:&v77 objects:v86 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v78;
            do
            {
              for (i = 0; i != v59; ++i)
              {
                if (*v78 != v60)
                {
                  objc_enumerationMutation(v57);
                }

                v62 = *(*(&v77 + 1) + 8 * i);
                v63 = [v62 objectForKeyedSubscript:@"CPUTime"];
                [v63 doubleValue];
                v65 = v64 / v20;

                if (v65 > 0.01)
                {
                  [v56 addObject:v62];
                }
              }

              v59 = [v57 countByEnumeratingWithState:&v77 objects:v86 count:16];
            }

            while (v59);
          }

          v6 = v71;
          v2 = v72;
          if ([v56 count])
          {
            v84 = v71;
            v85 = v56;
            v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
            [(PLOperator *)v72 logEntries:v66 withGroupID:v71];
          }
        }

        [(PLProcessMonitorAgent *)v2 setLastEntryDate:v69];
        [(PLProcessMonitorAgent *)v2 setLastThreadIdToKTMonitorEntryDict:v7];
        goto LABEL_55;
      }

      v9 = PLLogProcessMonitor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v87 = 0;
        v10 = "Error in allocating memory for proc_threadcounts";
        goto LABEL_59;
      }
    }

    else
    {
      v9 = PLLogProcessMonitor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v87 = 0;
        v10 = "Error in retrieving hardware performance levels";
LABEL_59:
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, v10, v87, 2u);
      }
    }

LABEL_55:
LABEL_56:

    goto LABEL_57;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __58__PLProcessMonitorAgent_logEventIntervalKernelTaskMonitor__block_invoke;
    v82[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v82[4] = v11;
    if (qword_2811F4E88 != -1)
    {
      dispatch_once(&qword_2811F4E88, v82);
    }

    if (byte_2811F4DB2 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error in retrieving thread id list"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventIntervalKernelTaskMonitor]"];
      [v12 logMessage:v5 fromFile:v14 fromFunction:v15 fromLineNumber:1992];

      v6 = PLLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v5;
        _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_56;
    }
  }

LABEL_57:
  v67 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLProcessMonitorAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v17[10] = *MEMORY[0x277D85DE8];
  v16[0] = @"MemoryTracking";
  v15 = [a1 entryEventPointMemoryTracking];
  v17[0] = v15;
  v16[1] = @"ProcessSnapshot";
  v3 = [a1 entryEventPointProcessSnapshot];
  v17[1] = v3;
  v16[2] = @"ProcessExit";
  v4 = [a1 entryEventPointProcessExit];
  v17[2] = v4;
  v16[3] = @"FreezerStats";
  v5 = [a1 entryEventPointFreezerStats];
  v17[3] = v5;
  v16[4] = @"FreezerDemotion";
  v6 = [a1 entryEventPointFreezerDemotion];
  v17[4] = v6;
  v16[5] = @"SharedCacheReslid";
  v7 = [a1 entryEventPointSharedCacheReslid];
  v17[5] = v7;
  v16[6] = @"AppResumePredictions";
  v8 = [a1 entryEventPointAppResumePredictions];
  v17[6] = v8;
  v16[7] = @"AppNotFrozen";
  v9 = [a1 entryEventPointAppNotFrozen];
  v17[7] = v9;
  v16[8] = @"SystemFreezerStats";
  v10 = [a1 entryEventPointSystemFreezerStats];
  v17[8] = v10;
  v16[9] = @"AppNapEnabled";
  v11 = [a1 entryEventPointAppNapEnabled];
  v17[9] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:10];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointMemoryTracking
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v23 = *MEMORY[0x277D3F568];
  v24 = &unk_282C1C598;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[0] = v20;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"HeapTotal";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_RealFormat];
  v22[0] = v18;
  v21[1] = @"HeapUsed";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_RealFormat];
  v22[1] = v16;
  v21[2] = @"HeapFree";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_RealFormat];
  v22[2] = v14;
  v21[3] = @"MallocBlocks";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v22[3] = v3;
  v21[4] = @"MallocSize";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_RealFormat];
  v22[4] = v5;
  v21[5] = @"MallocMaxSize";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_RealFormat];
  v22[5] = v7;
  v21[6] = @"MallocAllocated";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_RealFormat];
  v22[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
  v26[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointProcessSnapshot
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v19[0] = *MEMORY[0x277D3F568];
  v19[1] = v2;
  v20[0] = &unk_282C1C598;
  v20[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F580];
  v19[2] = *MEMORY[0x277D3F550];
  v19[3] = v3;
  v20[2] = MEMORY[0x277CBEC28];
  v20[3] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"PID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v18[0] = v5;
  v17[1] = @"BundleID";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat_withBundleID];
  v18[1] = v7;
  v17[2] = @"PhyFootprint";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v18[2] = v9;
  v17[3] = @"StartOrder";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_IntegerFormat];
  v18[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v22[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventPointProcessExit
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1C5A8;
  v25[1] = MEMORY[0x277CBEC38];
  v24[2] = *MEMORY[0x277D3F4A0];
  v25[2] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"PID";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v23[0] = v19;
  v22[1] = @"ProcessName";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat_withProcessName];
  v23[1] = v17;
  v22[2] = @"timeSinceSpawn";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[2] = v15;
  v22[3] = @"lastTimeToRelaunch";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v23[3] = v4;
  v22[4] = @"ReasonNamespace";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v23[4] = v6;
  v22[5] = @"ReasonCode";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v23[5] = v8;
  v22[6] = @"JetsamPriority";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v23[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointSystemFreezerStats
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1C598;
  v25[1] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"RemainingPages";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v23[0] = v19;
  v22[1] = @"ThawCount";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v23[1] = v17;
  v22[2] = @"ThawPercentage";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[2] = v15;
  v22[3] = @"RefreezeAvgBytes";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v23[3] = v4;
  v22[4] = @"ThawsPerGB";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v23[4] = v6;
  v22[5] = @"SwapTotal";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v23[5] = v8;
  v22[6] = @"SwapUsed";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v23[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointFreezerStats
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_282C1C598;
  v21[1] = MEMORY[0x277CBEC38];
  v20[2] = *MEMORY[0x277D3F4A0];
  v21[2] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"PID";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v19[0] = v15;
  v18[1] = @"ProcessName";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat_withProcessName];
  v19[1] = v4;
  v18[2] = @"Credits";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v19[2] = v6;
  v18[3] = @"Debits";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v19[3] = v8;
  v18[4] = @"Balance";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v19[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointFreezerDemotion
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1C598;
  v15[1] = MEMORY[0x277CBEC38];
  v14[2] = *MEMORY[0x277D3F4A0];
  v15[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"PID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"ProcessName";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat_withProcessName];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointSharedCacheReslid
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1C598;
  v15[1] = MEMORY[0x277CBEC38];
  v14[2] = *MEMORY[0x277D3F4A0];
  v15[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"PID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"ProcessName";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat_withProcessName];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointAppResumePredictions
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C598;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"BundleID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v15[0] = v5;
  v14[1] = @"PredictionScore";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_RealFormat];
  v15[1] = v7;
  v14[2] = @"PredictionType";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointAppNotFrozen
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C598;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"BundleID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v15[0] = v5;
  v14[1] = @"PID";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"Reason";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointAppNapEnabled
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C598;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"PID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"ProcessID";
  v3 = [a1 entryEventForwardProcessID];
  v8[1] = @"AppResumeInferredCarry";
  v9[0] = v3;
  v4 = [a1 entryEventForwardAppResumeInferredCarry];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventForwardProcessID
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_282C1C5B8;
  v22[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F4A0];
  v21[2] = *MEMORY[0x277D3F4D8];
  v21[3] = v3;
  v22[2] = MEMORY[0x277CBEC38];
  v22[3] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"PID";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v20[0] = v16;
  v19[1] = @"BundleID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v20[1] = v5;
  v19[2] = @"ProcessName";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat_withProcessName];
  v20[2] = v7;
  v19[3] = @"CoalitionID";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v20[3] = v9;
  v19[4] = @"PUUID";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_StringFormat];
  v20[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v24[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventForwardAppResumeInferredCarry
{
  v14[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v13[0] = *MEMORY[0x277D3F4E8];
    v11 = *MEMORY[0x277D3F568];
    v12 = &unk_282C1C598;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v2;
    v13[1] = *MEMORY[0x277D3F540];
    v9 = @"CarryType";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v10 = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v14[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventBackwardDefinitions
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"ProcessExitHistogram";
  v3 = [a1 entryEventBackwardProcessExitHistogram];
  v10[0] = v3;
  v9[1] = @"ThreadStats";
  v4 = [a1 entryEventBackwardDefinitionThreadStats];
  v10[1] = v4;
  v9[2] = @"AppLaunchTimeSeries";
  v5 = [a1 entryEventBackwardAppLaunchTimeSeries];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventBackwardDefinitionThreadStats
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (+[PLProcessMonitorAgent enableThreadStatsLogging])
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F4D8];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_282C1C598;
    v21[1] = MEMORY[0x277CBEC38];
    v20[2] = *MEMORY[0x277D3F4A0];
    v21[2] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"PID";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v19[0] = v15;
    v18[1] = @"ProcessName";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_StringFormat_withProcessName];
    v19[1] = v4;
    v18[2] = @"ThreadName";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_StringFormat];
    v19[2] = v6;
    v18[3] = @"SysTime";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v19[3] = v8;
    v18[4] = @"UsrTime";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v19[4] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v23[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardAppLaunchTimeSeries
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C598;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"BundleID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v15[0] = v5;
  v14[1] = @"Duration";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"IsForeground";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_BoolFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventIntervalDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"ProcessMonitorInterval";
  v3 = [a1 entryEventIntervalDefinitionProcessMonitorDiff];
  v8[1] = @"KernelTaskMonitor";
  v9[0] = v3;
  v4 = [a1 entryEventIntervalDefinitionKernelTaskMonitor];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventIntervalDefinitionProcessMonitorDiff
{
  v30[3] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v27[0] = *MEMORY[0x277D3F568];
  v27[1] = v2;
  v28[0] = &unk_282C1C5C8;
  v28[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4A0];
  v27[2] = *MEMORY[0x277D3F4D8];
  v27[3] = v3;
  v28[2] = MEMORY[0x277CBEC38];
  v28[3] = MEMORY[0x277CBEC38];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v30[0] = v20;
  v29[1] = *MEMORY[0x277D3F540];
  v25 = @"timestampEnd";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_DateFormat];
  v26 = v18;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v30[1] = v17;
  v29[2] = *MEMORY[0x277D3F500];
  v23[0] = @"key";
  v21[0] = @"PID";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v16 commonTypeDict_IntegerFormat];
  v22[0] = v4;
  v21[1] = @"ProcessName";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat_withProcessName];
  v22[1] = v6;
  v21[2] = @"BundleID";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat_withBundleID];
  v22[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v23[1] = @"value";
  v24[0] = v9;
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_IntegerFormat];
  v24[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v30[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventIntervalDefinitionKernelTaskMonitor
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_282C1C5A8;
  v23[1] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"timestampEnd";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_DateFormat];
  v21[0] = v17;
  v20[1] = @"ThreadID";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v21[1] = v15;
  v20[2] = @"ThreadName";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v21[2] = v4;
  v20[3] = @"CPUTime";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v21[3] = v6;
  v20[4] = @"CPUEnergyP";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v21[4] = v8;
  v20[5] = @"CPUEnergyE";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v21[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardProcessExitHistogram
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C598;
  v29[1] = MEMORY[0x277CBEC38];
  v28[2] = *MEMORY[0x277D3F4A0];
  v29[2] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"ProcessName";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_StringFormat_withProcessName];
  v27[0] = v23;
  v26[1] = @"lastTimeToRelaunch";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v27[1] = v21;
  v26[2] = @"ReasonNamespace";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v27[2] = v19;
  v26[3] = @"ReasonCode";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v27[3] = v17;
  v26[4] = @"0s-5s";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v27[4] = v15;
  v26[5] = @"5s-10s";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v27[5] = v4;
  v26[6] = @"10s-60s";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v27[6] = v6;
  v26[7] = @"60s+";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v27[7] = v8;
  v26[8] = @"UnknownDuration";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v27[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLProcessMonitorAgent)init
{
  v10.receiver = self;
  v10.super_class = PLProcessMonitorAgent;
  v2 = [(PLAgent *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    processes = v2->_processes;
    v2->_processes = v3;

    v2->_launchServiceStatsEnabled = 0;
    v2->_processExitSummaryCount = 0;
    diffFreezerProcs = v2->_diffFreezerProcs;
    v2->_diffFreezerProcs = 0;

    lastFreezerProcs = v2->_lastFreezerProcs;
    v2->_lastFreezerProcs = 0;

    lastCPUTimeDict = v2->_lastCPUTimeDict;
    v2->_lastCPUTimeDict = 0;

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v2 selector:sel_processesOfInterest_ name:@"PLProcessMonitorAgent.addProcessesOfInterest" object:0];
  }

  return v2;
}

- (void)processesOfInterest:(id)a3
{
  v4 = [a3 userInfo];
  if (v4)
  {
    v8 = v4;
    v5 = [v4 objectForKeyedSubscript:@"entry"];
    if (v5)
    {
      v6 = [(PLProcessMonitorAgent *)self processes];
      v7 = [v8 objectForKeyedSubscript:@"entry"];
      [v6 unionSet:v7];
    }

    v4 = v8;
  }
}

- (void)initOperatorDependancies
{
  v33 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    [(PLProcessMonitorAgent *)self enableProcessExitLogging];
  }

  [(PLProcessMonitorAgent *)self initializeThreadStatsLogging];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke;
  v30[3] = &unk_2782597E8;
  v30[4] = self;
  v3 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v30];
  batteryLevelChanged = self->_batteryLevelChanged;
  self->_batteryLevelChanged = v3;

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_428;
  v29[3] = &unk_27825A1D8;
  v29[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_282C188C8 withBlock:v29];
  appResumePredictionsListener = self->_appResumePredictionsListener;
  self->_appResumePredictionsListener = v6;

  v8 = objc_alloc(MEMORY[0x277D3F270]);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_437;
  v28[3] = &unk_27825A1D8;
  v28[4] = self;
  v9 = [v8 initWithOperator:self withRegistration:&unk_282C188F0 withBlock:v28];
  appNotFrozenListener = self->_appNotFrozenListener;
  self->_appNotFrozenListener = v9;

  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v11 = objc_alloc(MEMORY[0x277D3F270]);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_442;
    v27[3] = &unk_27825A1D8;
    v27[4] = self;
    v12 = [v11 initWithOperator:self withRegistration:&unk_282C18918 withBlock:v27];
    appResumeInferredCarryListener = self->_appResumeInferredCarryListener;
    self->_appResumeInferredCarryListener = v12;
  }

  v14 = [MEMORY[0x277CBEAA8] monotonicDate];
  v15 = [v14 dateByAddingTimeInterval:arc4random_uniform(0x15180u)];
  v16 = _reportProcDirtyStatsAfterTime;
  _reportProcDirtyStatsAfterTime = v15;

  v17 = PLLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = _reportProcDirtyStatsAfterTime;
    _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: Picked random time in next 24 hours for sending stats to CA: %@", buf, 0xCu);
  }

  v18 = objc_alloc(MEMORY[0x277D3F278]);
  v19 = [(PLOperator *)self workQueue];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_454;
  v26[3] = &unk_278259810;
  v26[4] = self;
  v20 = [v18 initWithWorkQueue:v19 withRegistration:&unk_282C18940 withBlock:v26];
  [(PLProcessMonitorAgent *)self setMemoryKillsResponder:v20];

  v21 = objc_alloc(MEMORY[0x277D3F278]);
  v22 = [(PLOperator *)self workQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_469;
  v25[3] = &unk_278259810;
  v25[4] = self;
  v23 = [v21 initWithWorkQueue:v22 withRegistration:&unk_282C18968 withBlock:v25];
  [(PLProcessMonitorAgent *)self setHudKillsResponder:v23];

  v24 = *MEMORY[0x277D85DE8];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogProcessMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLProcessMonitorAgent_EventPoint_AppResumePredictions: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointAppResumePredictions:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_437(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogProcessMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLProcessMonitorAgent_EventPoint_AppNotFrozen: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointAppNotFrozen:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_442(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogProcessMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got callback for PLProcessMonitorAgent_EventForward_AppResumeInferredCarry: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAppResumeInferredCarry:v6];
  v8 = *MEMORY[0x277D85DE8];
}

id __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogProcessMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "MemoryKills query received with info: %@", &v14, 0xCu);
  }

  v8 = [*(a1 + 32) getProcessExits:v6];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = objc_opt_new();
    [v10 setObject:v9 forKeyedSubscript:@"ProcessExits"];
  }

  else
  {
    v11 = PLLogProcessMonitor();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "MemoryKills query did not succeed", &v14, 2u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

id __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_469(uint64_t a1)
{
  v2 = PLLogProcessMonitor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_INFO, "HUD Terminations query received", buf, 2u);
  }

  v3 = [*(a1 + 32) getAllProcessExitsInLastHour];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = objc_opt_new();
    [v5 setObject:v4 forKeyedSubscript:@"ProcessExits"];
  }

  else
  {
    v6 = PLLogProcessMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "HUD Terminations query did not succeed", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (void)updateProcessExitSummary
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  v4 = [(PLOperator *)self storage];
  self->_processExitSummaryCount = [v4 countOfEntriesForKey:v3];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke;
    v16[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v16[4] = v5;
    if (qword_2811F4DC8 != -1)
    {
      dispatch_once(&qword_2811F4DC8, v16);
    }

    if (_MergedGlobals_1_38 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Init processExitSummaryCount = %d\n", self->_processExitSummaryCount];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent updateProcessExitSummary]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:799];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = dispatch_time(0, 86400000000000);
  v13 = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_477;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_after(v12, v13, block);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_38 = result;
  return result;
}

void __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_477(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setProcessExitSummaryCount:0];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_2;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (qword_2811F4DD0 != -1)
    {
      dispatch_once(&qword_2811F4DD0, &block);
    }

    if (byte_2811F4DA1 == 1)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [*(a1 + 32) processExitSummaryCount];
      v6 = [v4 stringWithFormat:@"Reset processExitSummaryCount = %d\n", v5, block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent updateProcessExitSummary]_block_invoke"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:805];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA1 = result;
  return result;
}

- (void)enableProcessExitLogging
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  if (launch_service_stats_is_enabled_4ppse())
  {
    [(PLProcessMonitorAgent *)self setLaunchServiceStatsEnabled:1];
    v3 = PLLogProcessMonitor();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_INFO, "launch_service_stats is enabled", buf, 2u);
    }

LABEL_7:

    goto LABEL_8;
  }

  [(PLProcessMonitorAgent *)self updateProcessExitSummary];
  v4 = launch_service_stats_enable_4ppse();
  if (v4)
  {
    v5 = v4;
    v3 = PLLogProcessMonitor();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v16[0] = v5;
      LOWORD(v16[1]) = 2080;
      *(&v16[1] + 2) = strerror(v5);
      _os_log_error_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_ERROR, "Failed to enable launch_service_stats(%d):%s", buf, 0x12u);
    }

    goto LABEL_7;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLProcessMonitorAgent_enableProcessExitLogging__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F4DD8 != -1)
    {
      dispatch_once(&qword_2811F4DD8, block);
    }

    if (byte_2811F4DA2 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"launch_service_stats enabled."];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent enableProcessExitLogging]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:821];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v16 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLProcessMonitorAgent *)self setLaunchServiceStatsEnabled:1];
LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLProcessMonitorAgent_enableProcessExitLogging__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA2 = result;
  return result;
}

- (void)disableProcessExitLogging
{
  v25 = *MEMORY[0x277D85DE8];
  [(PLProcessMonitorAgent *)self setLaunchServiceStatsEnabled:0];
  v2 = launch_service_stats_disable_4ppse();
  v3 = [MEMORY[0x277D3F180] debugEnabled];
  if (v2)
  {
    if (v3)
    {
      v4 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke_489;
      v20 = &__block_descriptor_40_e5_v8__0lu32l8;
      v21 = v4;
      if (qword_2811F4DE8 != -1)
      {
        dispatch_once(&qword_2811F4DE8, &block);
      }

      if (byte_2811F4DA4 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to disable launch_service_stats(%d):%s", v2, strerror(v2), block, v18, v19, v20, v21];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent disableProcessExitLogging]"];
        [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:836];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v24 = v5;
LABEL_16:
          _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }
  }

  else if (v3)
  {
    v11 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v11;
    if (qword_2811F4DE0 != -1)
    {
      dispatch_once(&qword_2811F4DE0, v22);
    }

    if (byte_2811F4DA3 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"launch_service_stats successfully disabled."];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent disableProcessExitLogging]"];
      [v12 logMessage:v5 fromFile:v14 fromFunction:v15 fromLineNumber:833];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v5;
        goto LABEL_16;
      }

LABEL_13:
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA3 = result;
  return result;
}

uint64_t __50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke_489(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA4 = result;
  return result;
}

- (id)getFrozenProcesses
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(v26, 0, sizeof(v26));
  if (memorystatus_control() < 1)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __43__PLProcessMonitorAgent_getFrozenProcesses__block_invoke;
      v24 = &__block_descriptor_40_e5_v8__0lu32l8;
      v25 = v9;
      if (qword_2811F4DF0 != -1)
      {
        dispatch_once(&qword_2811F4DF0, &block);
      }

      if (byte_2811F4DA5 == 1)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = __error();
        v12 = strerror(*v11);
        v13 = [v10 stringWithFormat:@"Error: Could not get frozen process list: %s\n", v12, block, v22, v23, v24, v25];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
        v16 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent getFrozenProcesses]"];
        [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:976];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v28 = v13;
          _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v8 = 0;
  }

  else
  {
    v3 = LODWORD(v26[0]);
    if (LODWORD(v26[0]))
    {
      v4 = (v26 | 0xC);
      do
      {
        if (*v4)
        {
          v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
          v6 = [MEMORY[0x277CCABB0] numberWithInt:*(v4 - 1)];
          if (v5)
          {
            v7 = v5;
          }

          else
          {
            v7 = @"Unknown Name";
          }

          [v2 setObject:v7 forKey:v6];
        }

        v4 += 40;
        --v3;
      }

      while (v3);
    }

    v8 = v2;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __43__PLProcessMonitorAgent_getFrozenProcesses__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA5 = result;
  return result;
}

- (id)getProcessesNotInFreezer:(id)a3 withCurrentProcesses:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v6 objectForKeyedSubscript:{v13, v18}];

        if (!v14)
        {
          v15 = [v8 objectForKeyedSubscript:v13];
          [v7 setObject:v15 forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (int)getLedgerIndex:(int64_t)a3 forKey:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a4;
  if ((ledger() & 0x80000000) == 0)
  {
    v5 = malloc_type_malloc(0, 0x1000040565EDBD2uLL);
    if (v5)
    {
      v6 = v5;
      ledger();
      free(v6);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return -1;
}

- (int)getFrozenToSwapLedgerIndex:(int64_t)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__PLProcessMonitorAgent_getFrozenToSwapLedgerIndex___block_invoke;
  v4[3] = &unk_27825D6C0;
  v4[4] = self;
  v4[5] = a3;
  if (getFrozenToSwapLedgerIndex__onceToken != -1)
  {
    dispatch_once(&getFrozenToSwapLedgerIndex__onceToken, v4);
  }

  return getFrozenToSwapLedgerIndex__frozenToSwapOffset;
}

uint64_t __52__PLProcessMonitorAgent_getFrozenToSwapLedgerIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getLedgerIndex:*(a1 + 40) forKey:@"frozen_to_swap"];
  getFrozenToSwapLedgerIndex__frozenToSwapOffset = result;
  return result;
}

- (int)getProcDirtyTimeLedgerIndex:(int64_t)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__PLProcessMonitorAgent_getProcDirtyTimeLedgerIndex___block_invoke;
  v4[3] = &unk_27825D6C0;
  v4[4] = self;
  v4[5] = a3;
  if (getProcDirtyTimeLedgerIndex__onceToken != -1)
  {
    dispatch_once(&getProcDirtyTimeLedgerIndex__onceToken, v4);
  }

  return getProcDirtyTimeLedgerIndex__procDirtyTimeOffset;
}

uint64_t __53__PLProcessMonitorAgent_getProcDirtyTimeLedgerIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) getLedgerIndex:*(a1 + 40) forKey:@"memorystatus_dirty_time"];
  getProcDirtyTimeLedgerIndex__procDirtyTimeOffset = result;
  return result;
}

uint64_t __50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA6 = result;
  return result;
}

uint64_t __50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke_513(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA7 = result;
  return result;
}

uint64_t __50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke_519(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA8 = result;
  return result;
}

uint64_t __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DA9 = result;
  return result;
}

uint64_t __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_529(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DAA = result;
  return result;
}

uint64_t __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_535(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DAB = result;
  return result;
}

uint64_t __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_541(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DAC = result;
  return result;
}

- (void)logEventPointProcessSnapshot
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = proc_listpids(1u, 0, 0, 0);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    v5 = v3;
    v6 = malloc_type_malloc(v3, 0x100004052888210uLL);
    if (v6)
    {
      v7 = v6;
      v45 = self;
      memset(v6, 255, v5);
      v46 = v7;
      v8 = proc_listpids(1u, 0, v7, v4);
      v9 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ProcessSnapshot"];
      v10 = objc_opt_new();
      v11 = objc_opt_new();
      if (v8 >= 4)
      {
        if (v8 >> 2 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v8 >> 2;
        }

        v13 = 0x277D3F000uLL;
        do
        {
          v15 = *v7++;
          v14 = v15;
          if (v15 >= 1)
          {
            memset(buffer, 0, sizeof(buffer));
            if (proc_pidinfo(v14, 18, 0, buffer, 192) == 192 && DWORD1(buffer[0]) != 5)
            {
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              *v59 = 0u;
              v60 = 0u;
              if (!proc_pid_rusage(v14, 0, v59))
              {
                v16 = [objc_alloc(*(v13 + 400)) initWithEntryKey:v9];
                if (v16)
                {
                  [MEMORY[0x277CCABB0] numberWithInt:v14];
                  v18 = v17 = v13;
                  [v16 setObject:v18 forKeyedSubscript:@"PID"];

                  v13 = v17;
                  v19 = [MEMORY[0x277D3F258] bundleIDFromPid:v14];
                  [v16 setObject:v19 forKeyedSubscript:@"BundleID"];

                  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v63 + 1)];
                  [v16 setObject:v20 forKeyedSubscript:@"PhyFootprint"];

                  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v64];
                  [v16 setObject:v21 forKeyedSubscript:@"StartOrder"];

                  [v10 addObject:v16];
                  v22 = [v16 objectForKeyedSubscript:@"StartOrder"];
                  [v11 addObject:v22];
                }
              }
            }
          }

          --v12;
        }

        while (v12);
      }

      v44 = v9;
      v23 = [v11 count];
      v24 = objc_opt_new();
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v25 = v11;
      v26 = [v25 countByEnumeratingWithState:&v51 objects:v58 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v52;
        do
        {
          v29 = 0;
          v30 = v23;
          do
          {
            if (*v52 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v51 + 1) + 8 * v29);
            v23 = (v30 - 1);
            v32 = [MEMORY[0x277CCABB0] numberWithInt:v30];
            [v24 setObject:v32 forKeyedSubscript:v31];

            ++v29;
            v30 = v23;
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v51 objects:v58 count:16];
        }

        while (v27);
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v33 = v43;
      v34 = [v33 countByEnumeratingWithState:&v47 objects:v57 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v48;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v48 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v47 + 1) + 8 * i);
            v39 = [v38 objectForKeyedSubscript:@"StartOrder"];
            v40 = [v24 objectForKeyedSubscript:v39];
            [v38 setObject:v40 forKeyedSubscript:@"StartOrder"];
          }

          v35 = [v33 countByEnumeratingWithState:&v47 objects:v57 count:16];
        }

        while (v35);
      }

      v55 = v44;
      v56 = v33;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      [(PLOperator *)v45 logEntries:v41 withGroupID:v44];

      free(v46);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)logProcessExit
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(PLProcessMonitorAgent *)self launchServiceStatsEnabled])
  {
    processExitSummaryCount = self->_processExitSummaryCount;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39__PLProcessMonitorAgent_logProcessExit__block_invoke;
    v19[3] = &unk_2782591D0;
    v19[4] = self;
    if (qword_2811F4E30 != -1)
    {
      dispatch_once(&qword_2811F4E30, v19);
    }

    if (processExitSummaryCount <= qword_2811F4E38)
    {
      xarray = 0;
      v17 = 0;
      v18 = 0;
      v5 = _launch_service_stats_copy_4ppse_impl();
      v6 = PLLogProcessMonitor();
      v7 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v8 = strerror(v5);
          *buf = 67109378;
          v21 = v5;
          v22 = 2080;
          v23 = v8;
          _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch launch_service_stats(%d):%s", buf, 0x12u);
        }
      }

      else
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          v21 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Got %d process exit records", buf, 8u);
        }

        context = objc_autoreleasePoolPush();
        v13 = [MEMORY[0x277CBEAA8] monotonicDate];
        v12 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        v9 = objc_opt_new();
        v15 = objc_opt_new();
        v14 = objc_opt_new();
        [(PLProcessMonitorAgent *)self logEventPointProcessExit:v9 excludeProcesses:v14 withStats:&xarray withDate:v13 withNowInSec:v12 / 0xF4240];
        [(PLProcessMonitorAgent *)self logEventBackwardProcessExitHistogram:v15 withStats:&xarray withDate:v13];

        objc_autoreleasePoolPop(context);
        if (v17)
        {
          free(v17);
        }

        v7 = xarray;
        xarray = 0;
      }
    }

    else
    {
      v4 = PLLogProcessMonitor();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(xarray) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "ProcessExitSummaryCount exceeds threshold and logging skipped.", &xarray, 2u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PLProcessMonitorAgent_logProcessExit__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ProcessExitSummaryRowThreshold"];
  qword_2811F4E38 = result;
  return result;
}

uint64_t __39__PLProcessMonitorAgent_logProcessExit__block_invoke_553(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ThresholdToSkipAppExitDetail"];
  qword_2811F4E48 = result;
  return result;
}

uint64_t __39__PLProcessMonitorAgent_logProcessExit__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ThresholdToSkipProcessExitDetail"];
  qword_2811F4E58 = result;
  return result;
}

- (void)logEventPointProcessExit:(id)a3 excludeProcesses:(id)a4 withStats:(id *)a5 withDate:(id)a6 withNowInSec:(unint64_t)a7
{
  v69 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v51 = a4;
  v49 = a6;
  v42 = v10;
  v11 = [v10 allKeys];
  v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_558];

  v48 = objc_opt_new();
  v47 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ProcessExit"];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v12;
  v43 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v43)
  {
    v41 = *v62;
    v13 = *MEMORY[0x277D3F670];
    v45 = *MEMORY[0x277D3F660];
    v14 = 0x277CCA000uLL;
    do
    {
      v15 = 0;
      do
      {
        if (*v62 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v15;
        v16 = [v42 objectForKeyedSubscript:*(*(&v61 + 1) + 8 * v15)];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v50 = v16;
        v53 = [v50 countByEnumeratingWithState:&v57 objects:v67 count:16];
        if (v53)
        {
          v52 = *v58;
          do
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v58 != v52)
              {
                objc_enumerationMutation(v50);
              }

              v18 = *(*(&v57 + 1) + 8 * i);
              v19 = objc_autoreleasePoolPush();
              v20 = (a5->var1 + 59 * [v18 intValue]);
              v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_array_get_string(a5->var0, *v20)}];
              if (([v51 containsObject:v21] & 1) == 0)
              {
                v22 = [v49 dateByAddingTimeInterval:(a7 - *(v20 + 3)) / -1000.0];
                v23 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v47 withDate:v22];
                v24 = [*(v14 + 2992) numberWithInt:v20[5]];
                [v23 setObject:v24 forKeyedSubscript:@"PID"];

                v25 = *v20;
                if (xpc_array_get_count(a5->var0) > v25)
                {
                  [v23 setObject:v21 forKeyedSubscript:@"ProcessName"];
                }

                v26 = *(v20 + 3);
                v27 = *(v20 + 1);
                if (v26 > v27 && v27 != 0)
                {
                  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v26 - v27];
                  [v23 setObject:v29 forKeyedSubscript:@"timeSinceSpawn"];
                }

                if (v20[6] != -1)
                {
                  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
                  [v23 setObject:v30 forKeyedSubscript:@"lastTimeToRelaunch"];
                }

                v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v20 + 28)];
                [v23 setObject:v31 forKeyedSubscript:@"ReasonNamespace"];

                v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v20 + 29)];
                [v23 setObject:v32 forKeyedSubscript:@"ReasonCode"];

                v33 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v20 + 49)];
                [v23 setObject:v33 forKeyedSubscript:@"JetsamPriority"];

                [v48 addObject:v23];
              }

              if ([v21 hasPrefix:v13])
              {
                v34 = [v21 stringByReplacingOccurrencesOfString:v13 withString:&stru_282B650A0];

                v35 = [v34 rangeOfString:@"["];
                if (v35 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v36 = [v34 substringToIndex:v35];
                  goto LABEL_28;
                }
              }

              else
              {
                if ([v21 hasPrefix:v45])
                {
                  v36 = [MEMORY[0x277D3F258] cleanLaunchdApplicationMacOS:v21];
                  v34 = v21;
LABEL_28:

                  v34 = v36;
                  goto LABEL_30;
                }

                v34 = v21;
              }

LABEL_30:
              if (([v34 containsString:@"/"] & 1) == 0)
              {
                if (v20[6] != -1)
                {
                  v56 = v34;
                  AnalyticsSendEventLazy();
                }

                v55 = v34;
                AnalyticsSendEventLazy();
                v54 = v55;
                AnalyticsSendEventLazy();
              }

              objc_autoreleasePoolPop(v19);
              v14 = 0x277CCA000;
            }

            v53 = [v50 countByEnumeratingWithState:&v57 objects:v67 count:16];
          }

          while (v53);
        }

        v15 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
    }

    while (v43);
  }

  if ([v48 count])
  {
    v65 = v47;
    v66 = v48;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    [(PLOperator *)self logEntries:v37 withGroupID:v47];
  }

  v38 = *MEMORY[0x277D85DE8];
}

id __99__PLProcessMonitorAgent_logEventPointProcessExit_excludeProcesses_withStats_withDate_withNowInSec___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 40) + 55) == -1)
  {
    v3 = @"N/A";
  }

  else
  {
    v2 = [MEMORY[0x277D3F258] processNameForPid:?];
    v3 = v2;
    if (!v2 || [(__CFString *)v2 isEqualToString:&stru_282B650A0])
    {

      v3 = @"UNKNOWN";
    }
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v4 setObject:*(a1 + 32) forKeyedSubscript:@"procname"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 40) + 24)];
  [v4 setObject:v5 forKeyedSubscript:@"time_to_relaunch_ms"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 40) + 51)];
  [v4 setObject:v6 forKeyedSubscript:@"launch_reason"];

  [v4 setObject:v3 forKeyedSubscript:@"launch_instigating_process"];
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ProcessRelaunchTime: processName %@'s statistics: %@", &v11, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

id __99__PLProcessMonitorAgent_logEventPointProcessExit_excludeProcesses_withStats_withDate_withNowInSec___block_invoke_593(uint64_t a1)
{
  v2 = [MEMORY[0x277D3F258] intervalPeakCADictionaryForLaunchdName:*(a1 + 32) intervalMaxKB:*(*(a1 + 40) + 41)];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  [v2 setObject:v3 forKeyedSubscript:@"is_uikit_app"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  [v2 setObject:v4 forKeyedSubscript:@"is_mac_app"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(*(a1 + 40) + 28)];
  [v2 setObject:v5 forKeyedSubscript:@"exit_reason_namespace"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(a1 + 40) + 29)];
  [v2 setObject:v6 forKeyedSubscript:@"exit_reason_code"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 40) + 37)];
  [v2 setObject:v7 forKeyedSubscript:@"lifetime_peak_footprint_kb"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(*(a1 + 40) + 49)];
  [v2 setObject:v8 forKeyedSubscript:@"jetsam_priority"];

  return v2;
}

- (id)getAllProcessExitsInLastHour
{
  v23 = *MEMORY[0x277D85DE8];
  [(PLProcessMonitorAgent *)self logProcessExit];
  v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  v4 = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [v4 dateByAddingTimeInterval:-3600.0];
  v6 = MEMORY[0x277CCACA8];
  [v5 timeIntervalSince1970];
  v8 = v7;
  [v4 timeIntervalSince1970];
  v10 = [v6 stringWithFormat:@"SELECT ID, %@, %@, %@, timestamp from %@ WHERE timestamp > %f AND timestamp <= %f", @"ProcessName", @"ReasonNamespace", @"ReasonCode", v3, v8, v9];
  v11 = PLLogProcessMonitor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_INFO, "LastHourKills Query is %@", buf, 0xCu);
  }

  v12 = [(PLOperator *)self storage];
  v13 = [v12 connection];
  v14 = [v13 performQuery:v10];

  v15 = PLLogProcessMonitor();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v14 count];
    *buf = 134218242;
    v20 = v16;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_INFO, "LastHourKills Result Count is %lu and result %@", buf, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)getProcessExits:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v26 = PLLogProcessMonitor();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v27 = 0;
      goto LABEL_14;
    }

    *buf = 0;
    v28 = "Nil payload sent to query";
    v29 = v26;
    v30 = 2;
LABEL_18:
    _os_log_error_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
    goto LABEL_13;
  }

  v6 = [v4 objectForKeyedSubscript:@"lastNHours"];
  v7 = [v6 longLongValue];

  v8 = [v5 objectForKeyedSubscript:@"ReasonCode"];
  v9 = [v8 longLongValue];

  v10 = [v5 objectForKeyedSubscript:@"ReasonNamespace"];
  v11 = [v10 longLongValue];

  if (v7 > 0x18 || v9 < 0 || v11 < 0)
  {
    v26 = PLLogProcessMonitor();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 134218496;
    v34 = v7;
    v35 = 2048;
    v36 = v9;
    v37 = 2048;
    v38 = v11;
    v28 = "Invalid payload sent to query lastNHours %lld reasonCode %lld reasonNamespace %lld";
    v29 = v26;
    v30 = 32;
    goto LABEL_18;
  }

  v12 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  v13 = [MEMORY[0x277CBEAA8] monotonicDate];
  v14 = [v13 dateByAddingTimeInterval:v7 * -3600.0];
  v15 = MEMORY[0x277CCACA8];
  [v14 timeIntervalSince1970];
  v17 = v16;
  [v13 timeIntervalSince1970];
  v19 = [v15 stringWithFormat:@"SELECT %@ as LaunchdName, SUM(0s-5s + 10s-60s + 5s-10s + 60s+ + UnknownDuration) as count from %@ WHERE %@ = %lld AND %@ = %lld AND timestamp > %f AND timestamp <= %f GROUP BY %@", @"ProcessName", v12, @"ReasonNamespace", v11, @"ReasonCode", v9, v17, v18, @"ProcessName"];;
  v20 = PLLogProcessMonitor();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v19;
    _os_log_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_INFO, "MemoryKills Query is %@", buf, 0xCu);
  }

  v21 = [(PLOperator *)self storage];
  v22 = [v21 connection];
  v23 = [v22 performQuery:v19];

  v24 = PLLogProcessMonitor();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v23 count];
    *buf = 134218242;
    v34 = v25;
    v35 = 2112;
    v36 = v23;
    _os_log_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_INFO, "MemoryKills Result Count is %lu and result %@", buf, 0x16u);
  }

  v26 = v23;
  v27 = v26;
LABEL_14:

  v31 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)logEventPointSystemFreezerStats
{
  v38 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v33 = 0;
  v34 = 4;
  v32 = 8;
  v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SystemFreezerStats"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  v5 = MEMORY[0x277CCABB0];
  if (sysctlbyname("kern.memorystatus_freeze_budget_pages_remaining", &v33, &v32, 0, 0))
  {
    v6 = -1;
  }

  else
  {
    v6 = v33;
  }

  v7 = [v5 numberWithUnsignedLongLong:v6];
  [v4 setObject:v7 forKeyedSubscript:@"RemainingPages"];

  v8 = MEMORY[0x277CCABB0];
  if (sysctlbyname("kern.memorystatus_thaw_count", &v35, &v34, 0, 0))
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = v35;
  }

  v10 = [v8 numberWithUnsignedInt:v9];
  [v4 setObject:v10 forKeyedSubscript:@"ThawCount"];

  v11 = MEMORY[0x277CCABB0];
  if (sysctlbyname("kern.memorystatus_freezer_thaw_percentage", &v33, &v32, 0, 0))
  {
    v12 = -1;
  }

  else
  {
    v12 = v33;
  }

  v13 = [v11 numberWithUnsignedLongLong:v12];
  [v4 setObject:v13 forKeyedSubscript:@"ThawPercentage"];

  v14 = sysctlbyname("kern.memorystatus_freeze_pageouts", &v33, &v32, 0, 0);
  v15 = v33;
  if (v14)
  {
    v15 = -1;
  }

  if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [v4 setObject:&unk_282C11B80 forKeyedSubscript:@"ThawsPerGB"];
  }

  else
  {
    v16 = vcvtd_n_f64_u64(*MEMORY[0x277D85F80] * v15, 0x1EuLL);
    v17 = MEMORY[0x277CCABB0];
    v18 = sysctlbyname("kern.memorystatus_thaw_count_since_boot", &v33, &v32, 0, 0);
    v19 = v33;
    if (v18)
    {
      v19 = 1.84467441e19;
    }

    v20 = [v17 numberWithDouble:v19 / v16];
    [v4 setObject:v20 forKeyedSubscript:@"ThawsPerGB"];
  }

  if (sysctlbyname("kern.memorystatus_freezer_refreeze_count", &v33, &v32, 0, 0))
  {
    v21 = -1;
  }

  else
  {
    v21 = v33;
  }

  if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    [v4 setObject:&unk_282C11B80 forKeyedSubscript:@"RefreezeAvgBytes"];
  }

  else
  {
    v22 = sysctlbyname("kern.memorystatus_freezer_bytes_refrozen", &v33, &v32, 0, 0);
    v23 = v33;
    if (v22)
    {
      v23 = -1;
    }

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23 / v21];
    [v4 setObject:v24 forKeyedSubscript:@"RefreezeAvgBytes"];
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 32;
  if (!sysctlbyname("vm.swapusage", &v30, &v29, 0, 0))
  {
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
    [v4 setObject:v25 forKeyedSubscript:@"SwapUsed"];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
    [v4 setObject:v26 forKeyedSubscript:@"SwapTotal"];
  }

  v27 = PLLogProcessMonitor();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v37 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "Entry for System Freezer Stats : %@", buf, 0xCu);
  }

  [(PLOperator *)self logEntry:v4];
  v28 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointFreezerStats
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [(PLProcessMonitorAgent *)self getFrozenProcesses];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 allKeys];
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = -[PLProcessMonitorAgent getFrozenToSwapLedgerIndex:](self, "getFrozenToSwapLedgerIndex:", [v6 intValue]);

    if (v7 == -1)
    {
      v10 = PLLogProcessMonitor();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = @"frozen_to_swap";
        _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "Ledger does not have key %@", buf, 0xCu);
      }
    }

    else
    {
      v8 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"FreezerStats"];
      v9 = objc_opt_new();
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __50__PLProcessMonitorAgent_logEventPointFreezerStats__block_invoke;
      v34 = &unk_27825EA40;
      v35 = self;
      v38 = v7;
      v10 = v8;
      v36 = v10;
      v11 = v9;
      v37 = v11;
      [v4 enumerateKeysAndObjectsUsingBlock:&v31];
      if ([v11 count])
      {
        v39 = v10;
        v40 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        [(PLOperator *)self logEntries:v12 withGroupID:v10];
      }

      v13 = [(PLProcessMonitorAgent *)self lastFreezerProcs];

      if (v13)
      {
        v14 = [(PLProcessMonitorAgent *)self lastFreezerProcs];
        v15 = [(PLProcessMonitorAgent *)self getProcessesNotInFreezer:v14 withCurrentProcesses:v4];
        [(PLProcessMonitorAgent *)self setDiffFreezerProcs:v15];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v16 = objc_opt_class();
          block = MEMORY[0x277D85DD0];
          v27 = 3221225472;
          v28 = __50__PLProcessMonitorAgent_logEventPointFreezerStats__block_invoke_2;
          v29 = &__block_descriptor_40_e5_v8__0lu32l8;
          v30 = v16;
          if (qword_2811F4E60 != -1)
          {
            dispatch_once(&qword_2811F4E60, &block);
          }

          if (byte_2811F4DAD == 1)
          {
            v17 = MEMORY[0x277CCACA8];
            v18 = [(PLProcessMonitorAgent *)self diffFreezerProcs];
            v19 = [v17 stringWithFormat:@"Processes that moved out of freezer %@", v18, block, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36];

            v20 = MEMORY[0x277D3F178];
            v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
            v22 = [v21 lastPathComponent];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointFreezerStats]"];
            [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:1499];

            v24 = PLLogCommon();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v42 = v19;
              _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }
      }

      [(PLProcessMonitorAgent *)self setLastFreezerProcs:v4];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __50__PLProcessMonitorAgent_logEventPointFreezerStats__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = [a2 intValue];
  v6 = [*(a1 + 32) ledgerDataAtIndex:*(a1 + 56) forPid:v5];
  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "credit") / 1024}];
    [v7 setObject:v8 forKeyedSubscript:@"Credits"];

    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "debit") / 1024}];
    [v7 setObject:v9 forKeyedSubscript:@"Debits"];

    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "balance") / 1024}];
    [v7 setObject:v10 forKeyedSubscript:@"Balance"];

    [v7 setObject:v14 forKeyedSubscript:@"ProcessName"];
    v11 = [MEMORY[0x277CCABB0] numberWithLong:v5];
    [v7 setObject:v11 forKeyedSubscript:@"PID"];

    v12 = [MEMORY[0x277D3F258] bundleIDFromPid:v5];
    [v7 setObject:v12 forKeyedSubscript:@"BundleID"];

    v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 40) withRawData:v7];
    [*(a1 + 48) addObject:v13];
  }
}

uint64_t __50__PLProcessMonitorAgent_logEventPointFreezerStats__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DAD = result;
  return result;
}

- (void)logEventPointFreezerDemotion
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(PLProcessMonitorAgent *)self diffFreezerProcs];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"FreezerDemotion"];
    v6 = [(PLProcessMonitorAgent *)self diffFreezerProcs];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke_642;
    v16[3] = &unk_27825EA68;
    v7 = v5;
    v17 = v7;
    v8 = v4;
    v18 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:v16];

    if ([v8 count])
    {
      v20 = v7;
      v21 = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [(PLOperator *)self logEntries:v9 withGroupID:v7];
    }

LABEL_5:
    goto LABEL_12;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F4E68 != -1)
    {
      dispatch_once(&qword_2811F4E68, block);
    }

    if (byte_2811F4DAE == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"No processes were evicted out of freezer"];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointFreezerDemotion]"];
      [v11 logMessage:v8 fromFile:v13 fromFunction:v14 fromLineNumber:1508];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_5;
    }
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DAE = result;
  return result;
}

void __53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke_642(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 intValue];
  if (![MEMORY[0x277D3F258] getJetsamPriority:v5])
  {
    v6 = objc_opt_new();
    [v6 setObject:v10 forKeyedSubscript:@"ProcessName"];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [v6 setObject:v7 forKeyedSubscript:@"PID"];

    v8 = [MEMORY[0x277D3F258] bundleIDFromPid:v5];
    [v6 setObject:v8 forKeyedSubscript:@"BundleID"];

    v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withRawData:v6];
    [*(a1 + 40) addObject:v9];
  }
}

- (void)logEventPointAppResumePredictions:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = a3;
    v6 = [v4 now];
    v7 = [v6 convertFromSystemToMonotonic];

    v8 = [v5 objectForKeyedSubscript:@"appResumePredictions"];

    v9 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppResumePredictions"];
    v10 = [MEMORY[0x277CBEB18] array];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __59__PLProcessMonitorAgent_logEventPointAppResumePredictions___block_invoke;
    v19 = &unk_27825EA90;
    v11 = v9;
    v20 = v11;
    v12 = v7;
    v21 = v12;
    v13 = v10;
    v22 = v13;
    [v8 enumerateObjectsUsingBlock:&v16];
    if ([v13 count])
    {
      v23 = v11;
      v24[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      [(PLOperator *)self logEntries:v14 withGroupID:v11];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __59__PLProcessMonitorAgent_logEventPointAppResumePredictions___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];

  [v5 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v5];
}

- (void)logEventPointAppNotFrozen:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = a3;
    v6 = [v4 now];
    v7 = [v6 convertFromSystemToMonotonic];

    v8 = [v5 objectForKeyedSubscript:@"Applications"];

    v9 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppNotFrozen"];
    v10 = [MEMORY[0x277CBEB18] array];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __51__PLProcessMonitorAgent_logEventPointAppNotFrozen___block_invoke;
    v19 = &unk_27825EA90;
    v11 = v9;
    v20 = v11;
    v12 = v7;
    v21 = v12;
    v13 = v10;
    v22 = v13;
    [v8 enumerateObjectsUsingBlock:&v16];
    if ([v13 count])
    {
      v23 = v11;
      v24[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      [(PLOperator *)self logEntries:v14 withGroupID:v11];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __51__PLProcessMonitorAgent_logEventPointAppNotFrozen___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];

  [v5 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v5];
}

- (void)logEventPointAppNapEnabled
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = proc_listpids(1u, 0, 0, 0);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    v5 = v3;
    v6 = malloc_type_malloc(v3, 0x100004052888210uLL);
    if (v6)
    {
      v7 = v6;
      v20 = self;
      memset(v6, 255, v5);
      v8 = proc_listpids(1u, 0, v7, v4);
      v9 = [MEMORY[0x277CBEAA8] monotonicDate];
      v10 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AppNapEnabled"];
      v11 = objc_opt_new();
      if (v8 >= 4)
      {
        if (v8 >> 2 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v8 >> 2;
        }

        v13 = v7;
        do
        {
          v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withDate:v9];
          v16 = *v13++;
          v15 = v16;
          if (v16 >= 1)
          {
            memset(buffer, 0, sizeof(buffer));
            if (proc_pidinfo(v15, 18, 0, buffer, 192) == 192 && DWORD1(buffer[0]) != 5 && (BYTE2(buffer[0]) & 0x80) != 0)
            {
              v17 = [MEMORY[0x277CCABB0] numberWithInt:v15];
              [v14 setObject:v17 forKeyedSubscript:@"PID"];

              [v11 addObject:v14];
            }
          }

          --v12;
        }

        while (v12);
      }

      if ([v11 count])
      {
        v21 = v10;
        v22 = v11;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        [(PLOperator *)v20 logEntries:v18 withGroupID:v10];
      }

      free(v7);
    }

    else
    {
      v9 = PLLogProcessMonitor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buffer[0]) = 0;
        _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "Not enough memory to log AppNap Enabled, returning.", buffer, 2u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)getJetsamSnapshotEntries:(jetsam_snapshot *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = objc_opt_new();
    if (a3->var4)
    {
      v6 = 0;
      var1 = a3->var5[0].var1;
      do
      {
        v8 = [(PLProcessMonitorAgent *)self getProcessName:var1];
        if (v8)
        {
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(var1 + 204)];
          [v5 setObject:v9 forKeyedSubscript:v8];
        }

        ++v6;
        var1 += 288;
      }

      while (a3->var4 > v6);
    }

    v10 = PLLogProcessMonitor();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "getJSEIdleTime: memoryJetsamEntries %@", &v13, 0xCu);
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchSnapshotWithFlags:(unsigned int)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = memorystatus_control();
  if ((v4 & 0x80000000) != 0)
  {
    v7 = PLLogProcessMonitor();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v11 = __error();
    v12 = strerror(*v11);
    v28 = 136315138;
    *v29 = v12;
    v8 = "memorystatus_control(MEMORYSTATUS_CMD_GET_JETSAM_SNAPSHOT) failed: %s";
LABEL_18:
    v9 = v7;
    v10 = 12;
    goto LABEL_19;
  }

  v5 = v4;
  if (!v4)
  {
    v7 = PLLogProcessMonitor();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v20 = __error();
    v21 = strerror(*v20);
    v28 = 136315138;
    *v29 = v21;
    v8 = "kernel returned (0) from memorystatus_control(MEMORYSTATUS_CMD_GET_JETSAM_SNAPSHOT) -- no jetsam data available %s";
    goto LABEL_18;
  }

  v6 = v4;
  if (v4 >= 0xC9 && __ROR8__(0x8E38E38E38E38E39 * (v4 - 200), 5) >= 0xE38E38E38E38E4uLL)
  {
    v7 = PLLogProcessMonitor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v28 = 134218240;
      *v29 = v5 - 200;
      *&v29[8] = 2048;
      *&v29[10] = 288;
      v8 = "memorystatus_control gave snapshot size (%lu) not multiple of jetsam entry type (%lu)";
      v9 = v7;
      v10 = 22;
LABEL_19:
      _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, v8, &v28, v10);
    }

LABEL_21:

LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v13 = malloc_type_malloc(v4, 0xBEEDDA51uLL);
  if (!v13)
  {
    v7 = PLLogProcessMonitor();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v28 = 67109120;
    *v29 = v5;
    v8 = "unable to allocate %d bytes for jetsam snapshot";
    v9 = v7;
    v10 = 8;
    goto LABEL_19;
  }

  v14 = v13;
  v15 = memorystatus_control();
  if (v15 != v5)
  {
    v24 = v15;
    v25 = PLLogProcessMonitor();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = __error();
      v27 = strerror(*v26);
      v28 = 67109378;
      *v29 = v24;
      *&v29[4] = 2080;
      *&v29[6] = v27;
      _os_log_error_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_ERROR, "memorystatus_control returned unexpected value - %d: %s", &v28, 0x12u);
    }

    free(v14);
    goto LABEL_22;
  }

  v16 = (v5 - 200) / 0x120;
  if (v16 < v14[24])
  {
    v17 = PLLogProcessMonitor();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v14[24];
      v28 = 134218240;
      *v29 = (v6 - 200) / 0x120uLL;
      *&v29[8] = 2048;
      *&v29[10] = v18;
      _os_log_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_INFO, "Got fewer jetsam entries from the kernel; received %zu, expected %zu", &v28, 0x16u);
    }

    v14[24] = v16;
  }

  v19 = [(PLProcessMonitorAgent *)self getJetsamSnapshotEntries:v14];
  free(v14);
LABEL_23:
  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)getProcessName:(char *)a3
{
  *&v10[4071] = *MEMORY[0x277D85DE8];
  bzero(v10, 0xFDFuLL);
  v4 = *(a3 + 1);
  v8[0] = *a3;
  v8[1] = v4;
  v9 = a3[32];
  if (LOBYTE(v8[0]))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  }

  else
  {
    v5 = @"Unknown";
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getJSEIdleTime
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [(PLProcessMonitorAgent *)self fetchSnapshotWithFlags:0];
  v3 = PLLogProcessMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "getJSEIdleTime: memoryJetsamEntries %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)logProcDirtyStats
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  v4 = [_reportProcDirtyStatsAfterTime compare:v3];
  v5 = PLLogCommon();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4 != -1)
  {
    if (v6)
    {
      LODWORD(buffer[0]) = 138412546;
      *(buffer + 4) = v3;
      WORD6(buffer[0]) = 2112;
      *(buffer + 14) = _reportProcDirtyStatsAfterTime;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: Should Not Log to CoreAnalytics (current_time=%@ is not greater than report_stats_time=%@)", buffer, 0x16u);
    }

    goto LABEL_4;
  }

  if (v6)
  {
    LODWORD(buffer[0]) = 138412546;
    *(buffer + 4) = v3;
    WORD6(buffer[0]) = 2112;
    *(buffer + 14) = _reportProcDirtyStatsAfterTime;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: Should Log to CoreAnalytics (current_time=%@ is greater than report_stats_time=%@)", buffer, 0x16u);
  }

  v8 = [MEMORY[0x277CBEAA8] monotonicDate];
  v9 = [v8 dateByAddingTimeInterval:arc4random_uniform(0x15180u)];
  v10 = _reportProcDirtyStatsAfterTime;
  _reportProcDirtyStatsAfterTime = v9;

  v5 = [(PLProcessMonitorAgent *)self getJSEIdleTime];
  v11 = proc_listpids(1u, 0, 0, 0);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v11;
    v13 = v11;
    v14 = malloc_type_malloc(v11, 0x100004052888210uLL);
    if (v14)
    {
      v15 = v14;
      memset(v14, 255, v13);
      v16 = proc_listpids(1u, 0, v15, v12);
      if (v16 < 4)
      {
        goto LABEL_10;
      }

      if (v16 >> 2 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16 >> 2;
      }

      v18 = 0x277D3F000uLL;
      v19 = v15;
      v30 = v15;
      while (1)
      {
        v21 = *v19++;
        v20 = v21;
        if (v21 < 1)
        {
          goto LABEL_36;
        }

        memset(buffer, 0, sizeof(buffer));
        if (proc_pidinfo(v20, 18, 0, buffer, 192) != 192 || DWORD1(buffer[0]) == 5)
        {
          goto LABEL_36;
        }

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v33[0]) = 67109120;
          HIDWORD(v33[0]) = v20;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: pid %d is not corpse, check if it is daemon", v33, 8u);
        }

        if (![*(v18 + 600) isDaemonOrAppleXPCService:v20])
        {
          goto LABEL_36;
        }

        v23 = [(PLProcessMonitorAgent *)self getProcDirtyTimeLedgerIndex:v20];
        if (v23 == -1)
        {
          v29 = PLLogProcessMonitor();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v33[0]) = 138412290;
            *(v33 + 4) = @"memorystatus_dirty_time";
            _os_log_error_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_ERROR, "Ledger does not have key %@", v33, 0xCu);
          }

LABEL_10:
          free(v15);
          goto LABEL_4;
        }

        v24 = [(PLProcessMonitorAgent *)self ledgerDataAtIndex:v23 forPid:v20];
        v25 = v24;
        if (!v24)
        {
          v27 = PLLogCommon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v33[0]) = 0;
            _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: Error getting process dirty via ledger", v33, 2u);
          }

          goto LABEL_35;
        }

        [v24 balance];
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        *v33 = 0u;
        v34 = 0u;
        if (proc_pid_rusage(v20, 0, v33))
        {
          break;
        }

        [*(v18 + 600) secondsFromMachTime:mach_absolute_time() - v38];
        if (v28 <= 0.0)
        {
          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: Error encouncetered due to process lifetime <= 0", buf, 2u);
          }

          goto LABEL_33;
        }

LABEL_34:
        v15 = v30;
LABEL_35:
        v31 = v5;
        AnalyticsSendEventLazy();

        v18 = 0x277D3F000;
LABEL_36:
        if (!--v17)
        {
          goto LABEL_10;
        }
      }

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: Error getting lifetime via rusage", buf, 2u);
      }

LABEL_33:

      goto LABEL_34;
    }
  }

LABEL_4:

  v7 = *MEMORY[0x277D85DE8];
}

id __42__PLProcessMonitorAgent_logProcDirtyStats__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277D3F258] binaryPathForPid:*(a1 + 56)];
  v4 = [v3 lastPathComponent];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Unknown";
  }

  [v2 setObject:v5 forKeyedSubscript:@"daemon_procname"];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v2 setObject:v6 forKeyedSubscript:@"time_dirty_seconds"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  [v2 setObject:v7 forKeyedSubscript:@"lifetime_seconds"];

  if (v4)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v4];

    if (v8)
    {
      v9 = [*(a1 + 32) objectForKeyedSubscript:v4];
      [v2 setObject:v9 forKeyedSubscript:@"jse_idle_time"];
    }
  }

  v10 = *(a1 + 60);
  if (!v10)
  {
    v11 = *(a1 + 48);
    if (v11 <= 0.0)
    {
      v10 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40) / v11 * 100.0];
      [v2 setObject:v12 forKeyedSubscript:@"percent_dirty"];

      v10 = *(a1 + 60);
    }
  }

  v13 = [MEMORY[0x277CCABB0] numberWithShort:v10];
  [v2 setObject:v13 forKeyedSubscript:@"collection_status"];

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 56);
    v18[0] = 67109378;
    v18[1] = v17;
    v19 = 2112;
    v20 = v2;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "ProcDirtyStats: pid %d's statistics: %@", v18, 0x12u);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)logEventForwardAppResumeInferredCarry:(id)a3
{
  if (a3)
  {
    v4 = *MEMORY[0x277D3F5D0];
    v5 = a3;
    v9 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:v4 andName:@"AppResumeInferredCarry"];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:v5];

    [(PLOperator *)self logEntry:v6];
    v7 = [v6 dictionary];
    v8 = [v6 entryDate];
    [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"AppResumeInferredCarry" data:v7 date:v8];
  }
}

- (void)logEventBackwardProcessExitHistogram:(id)a3 withStats:(id *)a4 withDate:(id)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  context = objc_autoreleasePoolPush();
  v43 = objc_opt_new();
  v46 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = v7;
  v41 = v8;
  v44 = v9;
  v47 = [v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v47)
  {
    v45 = *v51;
    do
    {
      v10 = 0;
      do
      {
        if (*v51 != v45)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v50 + 1) + 8 * v10);
        v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v46 withDate:v8];
        v13 = [v9 objectForKey:v11];
        v14 = [v11 labelIdx];
        if (xpc_array_get_count(a4->var0) > v14)
        {
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_array_get_string(a4->var0, objc_msgSend(v11, "labelIdx"))}];
          [v12 setObject:v15 forKeyedSubscript:@"ProcessName"];

          if ([v11 lastTTR] != -1)
          {
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v11, "lastTTR")}];
            [v12 setObject:v16 forKeyedSubscript:@"lastTimeToRelaunch"];
          }

          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v11, "exitReasonNamespace")}];
          [v12 setObject:v17 forKeyedSubscript:@"ReasonNamespace"];

          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v11, "exitReasonCode")}];
          [v12 setObject:v18 forKeyedSubscript:@"ReasonCode"];

          v19 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "duration_0")}];
          [v12 setObject:v19 forKeyedSubscript:@"0s-5s"];

          v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "duration_5")}];
          [v12 setObject:v20 forKeyedSubscript:@"5s-10s"];

          v21 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "duration_10")}];
          [v12 setObject:v21 forKeyedSubscript:@"10s-60s"];

          v22 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "duration_60_above")}];
          [v12 setObject:v22 forKeyedSubscript:@"60s+"];

          v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "duration_unknown")}];
          [v12 setObject:v23 forKeyedSubscript:@"UnknownDuration"];

          [v43 addObject:v12];
LABEL_10:
          v9 = v44;
          goto LABEL_18;
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v24 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __81__PLProcessMonitorAgent_logEventBackwardProcessExitHistogram_withStats_withDate___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v24;
          if (qword_2811F4E70 != -1)
          {
            dispatch_once(&qword_2811F4E70, block);
          }

          if (byte_2811F4DAF == 1)
          {
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: process exit buffer label index out of range."];
            v26 = MEMORY[0x277D3F178];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
            v28 = [v27 lastPathComponent];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventBackwardProcessExitHistogram:withStats:withDate:]"];
            [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:1824];

            v30 = PLLogCommon();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v57 = v25;
              _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v8 = v41;
            goto LABEL_10;
          }
        }

LABEL_18:

        ++v10;
      }

      while (v47 != v10);
      v47 = [v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v47);
  }

  if ([v43 count])
  {
    v54 = v46;
    v55 = v43;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [(PLOperator *)self logEntries:v31 withGroupID:v46];
  }

  self->_processExitSummaryCount += [v43 count];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = objc_opt_class();
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __81__PLProcessMonitorAgent_logEventBackwardProcessExitHistogram_withStats_withDate___block_invoke_682;
    v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v48[4] = v32;
    if (qword_2811F4E78 != -1)
    {
      dispatch_once(&qword_2811F4E78, v48);
    }

    if (byte_2811F4DB0 == 1)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"processExitSummaryCount = %d\n", self->_processExitSummaryCount, context];
      v34 = MEMORY[0x277D3F178];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      v36 = [v35 lastPathComponent];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventBackwardProcessExitHistogram:withStats:withDate:]"];
      [v34 logMessage:v33 fromFile:v36 fromFunction:v37 fromLineNumber:1849];

      v38 = PLLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v33;
        _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = v41;
      v9 = v44;
    }
  }

  objc_autoreleasePoolPop(context);
  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __81__PLProcessMonitorAgent_logEventBackwardProcessExitHistogram_withStats_withDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DAF = result;
  return result;
}

uint64_t __81__PLProcessMonitorAgent_logEventBackwardProcessExitHistogram_withStats_withDate___block_invoke_682(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DB0 = result;
  return result;
}

- (int)get_kthread_list:(unint64_t *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  memset(buffer, 0, sizeof(buffer));
  proc_pidinfo(0, 4, 0, buffer, 96);
  v4 = DWORD1(v24);
  v5 = 8 * SDWORD1(v24);
  v6 = v5 + 120;
  v7 = malloc_type_malloc(v5 + 120, 0xE68BAF4DuLL);
  v8 = proc_pidinfo(0, 28, 0, v7, v5 + 120);
  if (v8)
  {
    v9 = v8;
    if (v8 == v5)
    {
      *a3 = v7;
    }

    else
    {
      if (v8 >= v5)
      {
        if (v8 <= v5)
        {
          v4 = 0;
          goto LABEL_20;
        }

        if (v8 >= v6)
        {
          *a3 = v7;
          v4 = v6 >> 3;
          goto LABEL_20;
        }

        v17 = v8;
        v18 = v7;
        v19 = 4293379919;
      }

      else
      {
        v17 = v8;
        v18 = v7;
        v19 = 2272517343;
      }

      *a3 = malloc_type_realloc(v18, v17, v19);
      v4 = v9 / 8;
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLProcessMonitorAgent_get_kthread_list___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (qword_2811F4E80 != -1)
      {
        dispatch_once(&qword_2811F4E80, block);
      }

      if (byte_2811F4DB1 == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"proc_pidinfo(PROC_PIDLISTTHREADIDS) failed"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
        v14 = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent get_kthread_list:]"];
        [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:1953];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v4 = -1;
  }

LABEL_20:
  v20 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __42__PLProcessMonitorAgent_get_kthread_list___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DB1 = result;
  return result;
}

uint64_t __58__PLProcessMonitorAgent_logEventIntervalKernelTaskMonitor__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DB2 = result;
  return result;
}

uint64_t __58__PLProcessMonitorAgent_logEventIntervalKernelTaskMonitor__block_invoke_707(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DB3 = result;
  return result;
}

+ (unint64_t)PIDToCoalitionID:(int)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  memset(buffer, 0, sizeof(buffer));
  v3 = proc_pidinfo(a3, 20, 1uLL, buffer, 40);
  if (v3 == 40)
  {
    result = *&buffer[0];
  }

  else
  {
    v5 = v3;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v6 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLProcessMonitorAgent_PIDToCoalitionID___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (qword_2811F4E98 != -1)
      {
        dispatch_once(&qword_2811F4E98, block);
      }

      if (byte_2811F4DB4 == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"proc_pidinfo(PROC_PIDCOALITIONINFO) failed\n"];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLProcessMonitorAgent PIDToCoalitionID:]"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:2117];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v18 = v7;
          _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    result = -v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __42__PLProcessMonitorAgent_PIDToCoalitionID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4DB4 = result;
  return result;
}

+ (BOOL)enableThreadStatsLogging
{
  if (qword_2811F4EA0 != -1)
  {
    dispatch_once(&qword_2811F4EA0, &__block_literal_global_716);
  }

  return byte_2811F4DB5;
}

void __49__PLProcessMonitorAgent_enableThreadStatsLogging__block_invoke()
{
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v0 = [MEMORY[0x277D3F180] BOOLForKey:@"PLThreadStats_Enabled" ifNotSet:0];
    byte_2811F4DB5 = v0;
    if (!v0)
    {
      return;
    }
  }

  else if ((byte_2811F4DB5 & 1) == 0)
  {
    return;
  }

  v1 = PLLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_21A4C6000, v1, OS_LOG_TYPE_INFO, "thread stats: enabled", v2, 2u);
  }
}

- (void)initializeThreadStatsLogging
{
  v14 = *MEMORY[0x277D85DE8];
  if (+[PLProcessMonitorAgent enableThreadStatsLogging])
  {
    v3 = objc_alloc(MEMORY[0x277D3F240]);
    v4 = *MEMORY[0x277D3F658];
    v5 = *MEMORY[0x277D3F650];
    v11 = 0;
    v6 = [v3 initWithTimeFilter:v5 withPercentFilter:0 withProcessThreadMapping:&v11 withError:v4];
    v7 = v11;
    [(PLProcessMonitorAgent *)self setThreadStats:v6];

    if (v7)
    {
      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "thread stats: error initializing: %@", buf, 0xCu);
      }

      [(PLProcessMonitorAgent *)self setThreadStats:0];
    }

    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_INFO, "thread stats: initialized", buf, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logThreadStats
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(PLProcessMonitorAgent *)self threadStats];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] monotonicDate];
    v5 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ThreadStats"];
    v6 = [(PLProcessMonitorAgent *)self threadStats];
    v7 = [v6 diffSinceLastSnapshot];

    v8 = [MEMORY[0x277CBEB18] array];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__PLProcessMonitorAgent_logThreadStats__block_invoke;
    v16[3] = &unk_27825EB08;
    v9 = v5;
    v17 = v9;
    v10 = v4;
    v18 = v10;
    v11 = v8;
    v19 = v11;
    [v7 enumerateKeysAndObjectsUsingBlock:v16];
    if ([v11 count])
    {
      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v11 count];
        *buf = 134217984;
        v23 = v13;
        _os_log_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_INFO, "thread stats: logging %lu entries", buf, 0xCu);
      }

      v20 = v9;
      v21 = v11;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [(PLOperator *)self logEntries:v14 withGroupID:v9];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __39__PLProcessMonitorAgent_logThreadStats__block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 threadNameToInfo];
  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "pid")}];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__PLProcessMonitorAgent_logThreadStats__block_invoke_2;
    v10[3] = &unk_27825EAE0;
    v11 = a1[4];
    v12 = a1[5];
    v13 = v8;
    v14 = v5;
    v15 = a1[6];
    v9 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __39__PLProcessMonitorAgent_logThreadStats__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D3F190];
  v6 = a3;
  v7 = a2;
  v14 = [[v5 alloc] initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
  [v14 setObject:*(a1 + 48) forKeyedSubscript:@"PID"];
  [v14 setObject:*(a1 + 56) forKeyedSubscript:@"ProcessName"];
  [v14 setObject:v7 forKeyedSubscript:@"ThreadName"];

  [v6 systemTime];
  v9 = (v8 * 1000.0);
  [v6 userTime];
  v11 = v10;

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
  [v14 setObject:v12 forKeyedSubscript:@"SysTime"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v11 * 1000.0)];
  [v14 setObject:v13 forKeyedSubscript:@"UsrTime"];

  [*(a1 + 64) addObject:v14];
}

- (void)logEventBackwardAppLaunchTimeSeries:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v23 = self;
    v6 = PLLogProcessMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Got payload for App Launch Signposts : %@", buf, 0xCu);
    }

    v7 = objc_opt_new();
    v8 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"AppLaunchTimeSeries"];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        v12 = 0;
        do
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v26 + 1) + 8 * v12);
          v14 = objc_opt_new();
          v15 = [v13 objectForKeyedSubscript:@"bundleID"];
          [v14 setObject:v15 forKeyedSubscript:@"BundleID"];

          v16 = [v13 objectForKeyedSubscript:@"IsForeground"];
          [v14 setObject:v16 forKeyedSubscript:@"IsForeground"];

          v17 = [v13 objectForKeyedSubscript:@"duration"];
          [v14 setObject:v17 forKeyedSubscript:@"Duration"];

          v18 = [v13 objectForKeyedSubscript:@"beginDate"];
          v19 = [v18 convertFromSystemToMonotonic];

          v20 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v14];
          [v20 setEntryDate:v19];
          [v7 addObject:v20];

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v30 = v8;
      v31 = v7;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [(PLOperator *)v23 logEntries:v21 withGroupID:v8];
    }

    v5 = v24;
  }

  else
  {
    v7 = PLLogProcessMonitor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Empty App Launch Payload", buf, 2u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end