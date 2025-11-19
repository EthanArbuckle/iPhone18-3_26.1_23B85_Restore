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
  v24 = &unk_28714B5C8;
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
  v20[0] = &unk_28714B5C8;
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
  v25[0] = &unk_28714B5D8;
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
  v25[0] = &unk_28714B5C8;
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
  v21[0] = &unk_28714B5C8;
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
  v15[0] = &unk_28714B5C8;
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
  v15[0] = &unk_28714B5C8;
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
  v17[0] = &unk_28714B5C8;
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
  v17[0] = &unk_28714B5C8;
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
  v13[0] = &unk_28714B5C8;
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
  v22[0] = &unk_28714B5E8;
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
    v12 = &unk_28714B5C8;
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
    v21[0] = &unk_28714B5C8;
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
  v17[0] = &unk_28714B5C8;
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
  v28[0] = &unk_28714B5F8;
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
  v23[0] = &unk_28714B5D8;
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
  v29[0] = &unk_28714B5C8;
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
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25EE51000, a1, a3, "ProcDirtyStats: Picked random time in next 24 hours for sending stats to CA: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_DEFAULT, "ProcessMonitor: Received SBC notification!", v5, 2u);
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
    __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  [*(a1 + 32) logProcDirtyStats];
  [*(a1 + 32) logThreadStats];
  return [*(a1 + 32) logEventPointAppNapEnabled];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogProcessMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_428_cold_1();
  }

  [*(a1 + 32) logEventPointAppResumePredictions:v6];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_437(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogProcessMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_437_cold_1();
  }

  [*(a1 + 32) logEventPointAppNotFrozen:v6];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_442(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogProcessMonitor();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_442_cold_1();
  }

  [*(a1 + 32) logEventForwardAppResumeInferredCarry:v6];
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
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "MemoryKills query received with info: %@", &v14, 0xCu);
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
      __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_454_cold_1();
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
    *v8 = 0;
    _os_log_impl(&dword_25EE51000, v2, OS_LOG_TYPE_INFO, "HUD Terminations query received", v8, 2u);
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
      __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_469_cold_1();
    }

    v5 = 0;
  }

  return v5;
}

- (void)updateProcessExitSummary
{
  v3 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ProcessExitHistogram"];
  v4 = [(PLOperator *)self storage];
  self->_processExitSummaryCount = [v4 countOfEntriesForKey:v3];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke;
    v15[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v15[4] = v5;
    if (updateProcessExitSummary_defaultOnce != -1)
    {
      dispatch_once(&updateProcessExitSummary_defaultOnce, v15);
    }

    if (updateProcessExitSummary_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v12 = dispatch_time(0, 86400000000000);
  v13 = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_477;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_after(v12, v13, block);
}

uint64_t __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateProcessExitSummary_classDebugEnabled = result;
  return result;
}

void __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_477(uint64_t a1)
{
  [*(a1 + 32) setProcessExitSummaryCount:0];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_2;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v3;
    if (kPLProcessMonitorAgentAddProcessesOfInterestNotificationName_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLProcessMonitorAgentAddProcessesOfInterestNotificationName_block_invoke_defaultOnce, &block);
    }

    if (kPLProcessMonitorAgentAddProcessesOfInterestNotificationName_block_invoke_classDebugEnabled == 1)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [*(a1 + 32) processExitSummaryCount];
      v6 = [v4 stringWithFormat:@"Reset processExitSummaryCount = %d\n", v5, block, v13, v14, v15, v16];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent updateProcessExitSummary]_block_invoke"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:805];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __49__PLProcessMonitorAgent_updateProcessExitSummary__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLProcessMonitorAgentAddProcessesOfInterestNotificationName_block_invoke_classDebugEnabled = result;
  return result;
}

- (void)enableProcessExitLogging
{
  v7 = *MEMORY[0x277D85DE8];
  strerror(a1);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLProcessMonitorAgent_enableProcessExitLogging__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  enableProcessExitLogging_classDebugEnabled = result;
  return result;
}

- (void)disableProcessExitLogging
{
  [(PLProcessMonitorAgent *)self setLaunchServiceStatsEnabled:0];
  v2 = launch_service_stats_disable_4ppse();
  v3 = [MEMORY[0x277D3F180] debugEnabled];
  if (v2)
  {
    if (v3)
    {
      v4 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke_489;
      v19 = &__block_descriptor_40_e5_v8__0lu32l8;
      v20 = v4;
      if (disableProcessExitLogging_defaultOnce_487 != -1)
      {
        dispatch_once(&disableProcessExitLogging_defaultOnce_487, &block);
      }

      if (disableProcessExitLogging_classDebugEnabled_488 == 1)
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to disable launch_service_stats(%d):%s", v2, strerror(v2), block, v17, v18, v19, v20];
        v6 = MEMORY[0x277D3F178];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent disableProcessExitLogging]"];
        [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:836];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

LABEL_14:
      }
    }
  }

  else if (v3)
  {
    v11 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke;
    v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v21[4] = v11;
    if (disableProcessExitLogging_defaultOnce != -1)
    {
      dispatch_once(&disableProcessExitLogging_defaultOnce, v21);
    }

    if (disableProcessExitLogging_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_14;
    }
  }
}

uint64_t __50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  disableProcessExitLogging_classDebugEnabled = result;
  return result;
}

uint64_t __50__PLProcessMonitorAgent_disableProcessExitLogging__block_invoke_489(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  disableProcessExitLogging_classDebugEnabled_488 = result;
  return result;
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
  v7 = 0x279A5A000uLL;
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
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
      v7 = 0x279A5A000;
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

  if ([v6 count] && (objc_msgSend(*(v7 + 3824), "isPowerlogHelperd") & 1) == 0 && (objc_msgSend(*(v7 + 3824), "isPerfPowerMetricd") & 1) == 0)
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

- (id)getFrozenProcesses
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(v25, 0, sizeof(v25));
  if (memorystatus_control() < 1)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __43__PLProcessMonitorAgent_getFrozenProcesses__block_invoke;
      v23 = &__block_descriptor_40_e5_v8__0lu32l8;
      v24 = v9;
      if (getFrozenProcesses_defaultOnce != -1)
      {
        dispatch_once(&getFrozenProcesses_defaultOnce, &block);
      }

      if (getFrozenProcesses_classDebugEnabled == 1)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = __error();
        v12 = strerror(*v11);
        v13 = [v10 stringWithFormat:@"Error: Could not get frozen process list: %s\n", v12, block, v21, v22, v23, v24];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
        v16 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent getFrozenProcesses]"];
        [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:976];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v8 = 0;
  }

  else
  {
    v3 = LODWORD(v25[0]);
    if (LODWORD(v25[0]))
    {
      v4 = (v25 | 0xC);
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

  return v8;
}

uint64_t __43__PLProcessMonitorAgent_getFrozenProcesses__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getFrozenProcesses_classDebugEnabled = result;
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
  v4[3] = &unk_279A5C600;
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
  v4[3] = &unk_279A5C600;
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
  ledgerDataAtIndex_forPid__classDebugEnabled = result;
  return result;
}

uint64_t __50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke_513(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ledgerDataAtIndex_forPid__classDebugEnabled_512 = result;
  return result;
}

uint64_t __50__PLProcessMonitorAgent_ledgerDataAtIndex_forPid___block_invoke_519(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ledgerDataAtIndex_forPid__classDebugEnabled_518 = result;
  return result;
}

- (void)log
{
  [(PLProcessMonitorAgent *)self updateProcessMonitorCache];
  [(PLProcessMonitorAgent *)self logEventIntervalProcessMonitorIntervalUsingCache];
  [(PLProcessMonitorAgent *)self logEventPointMemoryTracking];
  [(PLProcessMonitorAgent *)self logEventIntervalKernelTaskMonitor];

  [(PLProcessMonitorAgent *)self logProcessExit];
}

- (void)logEventPointMemoryTracking
{
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
        if (logEventPointMemoryTracking_defaultOnce != -1)
        {
          dispatch_once(&logEventPointMemoryTracking_defaultOnce, block);
        }

        if (logEventPointMemoryTracking_classDebugEnabled == 1)
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
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
      mstats(&v24);
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:v24.bytes_total * 0.0009765625];
      [v4 setObject:v13 forKeyedSubscript:@"HeapTotal"];

      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v24.bytes_used * 0.0009765625];
      [v4 setObject:v14 forKeyedSubscript:@"HeapUsed"];

      v15 = [MEMORY[0x277CCABB0] numberWithDouble:v24.bytes_free * 0.0009765625];
      [v4 setObject:v15 forKeyedSubscript:@"HeapFree"];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v16 = objc_opt_class();
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_541;
        v23[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v23[4] = v16;
        if (logEventPointMemoryTracking_defaultOnce_539 != -1)
        {
          dispatch_once(&logEventPointMemoryTracking_defaultOnce_539, v23);
        }

        if (logEventPointMemoryTracking_classDebugEnabled_540 == 1)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"heap: total=%f used=%f free=%f", v24.bytes_total * 0.0009765625, v24.bytes_used * 0.0009765625, v24.bytes_free * 0.0009765625];
          v18 = MEMORY[0x277D3F178];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLProcessMonitorAgent.m"];
          v20 = [v19 lastPathComponent];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLProcessMonitorAgent logEventPointMemoryTracking]"];
          [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:1130];

          v22 = PLLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      [(PLOperator *)self logEntry:v4];
    }
  }
}

uint64_t __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointMemoryTracking_classDebugEnabled = result;
  return result;
}

uint64_t __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_529(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointMemoryTracking_classDebugEnabled_528 = result;
  return result;
}

uint64_t __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_535(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointMemoryTracking_classDebugEnabled_534 = result;
  return result;
}

uint64_t __52__PLProcessMonitorAgent_logEventPointMemoryTracking__block_invoke_541(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointMemoryTracking_classDebugEnabled_540 = result;
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
                  v19 = [PLUtilities bundleIDFromPid:v14];
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
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __39__PLProcessMonitorAgent_logProcessExit__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ProcessExitSummaryRowThreshold"];
  logProcessExit_objectForKey = result;
  return result;
}

uint64_t __39__PLProcessMonitorAgent_logProcessExit__block_invoke_553(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ThresholdToSkipAppExitDetail"];
  logProcessExit_objectForKey_552 = result;
  return result;
}

uint64_t __39__PLProcessMonitorAgent_logProcessExit__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ThresholdToSkipProcessExitDetail"];
  logProcessExit_objectForKey_555 = result;
  return result;
}

- (void)logEventPointProcessExit:(id)a3 excludeProcesses:(id)a4 withStats:(id *)a5 withDate:(id)a6 withNowInSec:(unint64_t)a7
{
  v67 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v49 = a4;
  v47 = a6;
  v41 = v10;
  v11 = [v10 allKeys];
  v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_558];

  v46 = objc_opt_new();
  v45 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ProcessExit"];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v12;
  v42 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v42)
  {
    v40 = *v60;
    v13 = 0x277CCA000uLL;
    do
    {
      v14 = 0;
      do
      {
        if (*v60 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v14;
        v15 = [v41 objectForKeyedSubscript:*(*(&v59 + 1) + 8 * v14)];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v48 = v15;
        v51 = [v48 countByEnumeratingWithState:&v55 objects:v65 count:16];
        if (v51)
        {
          v50 = *v56;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v56 != v50)
              {
                objc_enumerationMutation(v48);
              }

              v17 = *(*(&v55 + 1) + 8 * i);
              v18 = objc_autoreleasePoolPush();
              v19 = (a5->var1 + 59 * [v17 intValue]);
              v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_array_get_string(a5->var0, *v19)}];
              if (([v49 containsObject:v20] & 1) == 0)
              {
                v21 = [v47 dateByAddingTimeInterval:(a7 - *(v19 + 3)) / -1000.0];
                v22 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v45 withDate:v21];
                v23 = [*(v13 + 2992) numberWithInt:v19[5]];
                [v22 setObject:v23 forKeyedSubscript:@"PID"];

                v24 = *v19;
                if (xpc_array_get_count(a5->var0) > v24)
                {
                  [v22 setObject:v20 forKeyedSubscript:@"ProcessName"];
                }

                v25 = *(v19 + 3);
                v26 = *(v19 + 1);
                if (v25 > v26 && v26 != 0)
                {
                  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v25 - v26];
                  [v22 setObject:v28 forKeyedSubscript:@"timeSinceSpawn"];
                }

                if (v19[6] != -1)
                {
                  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
                  [v22 setObject:v29 forKeyedSubscript:@"lastTimeToRelaunch"];
                }

                v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(v19 + 28)];
                [v22 setObject:v30 forKeyedSubscript:@"ReasonNamespace"];

                v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v19 + 29)];
                [v22 setObject:v31 forKeyedSubscript:@"ReasonCode"];

                v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v19 + 49)];
                [v22 setObject:v32 forKeyedSubscript:@"JetsamPriority"];

                [v46 addObject:v22];
              }

              if ([v20 hasPrefix:@"UIKitApplication:"])
              {
                v33 = [v20 stringByReplacingOccurrencesOfString:@"UIKitApplication:" withString:&stru_287103958];

                v34 = [v33 rangeOfString:@"["];
                if (v34 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v35 = [v33 substringToIndex:v34];
                  goto LABEL_28;
                }
              }

              else
              {
                if ([v20 hasPrefix:@"application."])
                {
                  v35 = [PLUtilities cleanLaunchdApplicationMacOS:v20];
                  v33 = v20;
LABEL_28:

                  v33 = v35;
                  goto LABEL_30;
                }

                v33 = v20;
              }

LABEL_30:
              if (([v33 containsString:@"/"] & 1) == 0)
              {
                if (v19[6] != -1)
                {
                  v54 = v33;
                  AnalyticsSendEventLazy();
                }

                v53 = v33;
                AnalyticsSendEventLazy();
                v52 = v53;
                AnalyticsSendEventLazy();
              }

              objc_autoreleasePoolPop(v18);
              v13 = 0x277CCA000;
            }

            v51 = [v48 countByEnumeratingWithState:&v55 objects:v65 count:16];
          }

          while (v51);
        }

        v14 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v42);
  }

  if ([v46 count])
  {
    v63 = v45;
    v64 = v46;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    [(PLOperator *)self logEntries:v36 withGroupID:v45];
  }

  v37 = *MEMORY[0x277D85DE8];
}

id __99__PLProcessMonitorAgent_logEventPointProcessExit_excludeProcesses_withStats_withDate_withNowInSec___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 40) + 55) == -1)
  {
    v3 = @"N/A";
  }

  else
  {
    v2 = [PLUtilities processNameForPid:?];
    v3 = v2;
    if (!v2 || [(__CFString *)v2 isEqualToString:&stru_287103958])
    {

      v3 = @"UNKNOWN";
    }
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  [v4 setObject:v6 forKeyedSubscript:@"procname"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v5[1] + 24)];
  [v4 setObject:v7 forKeyedSubscript:@"time_to_relaunch_ms"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v5[1] + 51)];
  [v4 setObject:v8 forKeyedSubscript:@"launch_reason"];

  [v4 setObject:v3 forKeyedSubscript:@"launch_instigating_process"];
  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __99__PLProcessMonitorAgent_logEventPointProcessExit_excludeProcesses_withStats_withDate_withNowInSec___block_invoke_2_cold_1(v5);
  }

  return v4;
}

id __99__PLProcessMonitorAgent_logEventPointProcessExit_excludeProcesses_withStats_withDate_withNowInSec___block_invoke_593(uint64_t a1)
{
  v2 = [PLUtilities intervalPeakCADictionaryForLaunchdName:*(a1 + 32) intervalMaxKB:*(*(a1 + 40) + 41)];
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
    _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_INFO, "LastHourKills Query is %@", buf, 0xCu);
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
    _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_INFO, "LastHourKills Result Count is %lu and result %@", buf, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)getProcessExits:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v26 = PLLogProcessMonitor();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [PLProcessMonitorAgent getProcessExits:];
    }

    goto LABEL_14;
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
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v31 = v7;
      v32 = 2048;
      v33 = v9;
      v34 = 2048;
      v35 = v11;
      _os_log_error_impl(&dword_25EE51000, v26, OS_LOG_TYPE_ERROR, "Invalid payload sent to query lastNHours %lld reasonCode %lld reasonNamespace %lld", buf, 0x20u);
    }

LABEL_14:
    v27 = 0;
    goto LABEL_15;
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
    v31 = v19;
    _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_INFO, "MemoryKills Query is %@", buf, 0xCu);
  }

  v21 = [(PLOperator *)self storage];
  v22 = [v21 connection];
  v23 = [v22 performQuery:v19];

  v24 = PLLogProcessMonitor();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v23 count];
    *buf = 134218242;
    v31 = v25;
    v32 = 2112;
    v33 = v23;
    _os_log_impl(&dword_25EE51000, v24, OS_LOG_TYPE_INFO, "MemoryKills Result Count is %lu and result %@", buf, 0x16u);
  }

  v26 = v23;
  v27 = v26;
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)logEventPointSystemFreezerStats
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Entry for System Freezer Stats : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointFreezerStats
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
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

    v12 = [PLUtilities bundleIDFromPid:v5];
    [v7 setObject:v12 forKeyedSubscript:@"BundleID"];

    v13 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 40) withRawData:v7];
    [*(a1 + 48) addObject:v13];
  }
}

uint64_t __50__PLProcessMonitorAgent_logEventPointFreezerStats__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointFreezerStats_classDebugEnabled = result;
  return result;
}

- (void)logEventPointFreezerDemotion
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = [(PLProcessMonitorAgent *)self diffFreezerProcs];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(PLOperator *)PLProcessMonitorAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"FreezerDemotion"];
    v6 = [(PLProcessMonitorAgent *)self diffFreezerProcs];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke_642;
    v19 = &unk_279A5C140;
    v7 = v5;
    v20 = v7;
    v8 = v4;
    v21 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:&v16];

    if ([v8 count])
    {
      v23 = v7;
      v24[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
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
    if (logEventPointFreezerDemotion_defaultOnce != -1)
    {
      dispatch_once(&logEventPointFreezerDemotion_defaultOnce, block);
    }

    if (logEventPointFreezerDemotion_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
  logEventPointFreezerDemotion_classDebugEnabled = result;
  return result;
}

void __53__PLProcessMonitorAgent_logEventPointFreezerDemotion__block_invoke_642(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 intValue];
  if (![PLUtilities getJetsamPriority:v5])
  {
    v6 = objc_opt_new();
    [v6 setObject:v10 forKeyedSubscript:@"ProcessName"];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:v5];
    [v6 setObject:v7 forKeyedSubscript:@"PID"];

    v8 = [PLUtilities bundleIDFromPid:v5];
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
    v19 = &unk_279A5D830;
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
    v19 = &unk_279A5D830;
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
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)getJetsamSnapshotEntries:(jetsam_snapshot *)a3
{
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
      [PLProcessMonitorAgent getJetsamSnapshotEntries:];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchSnapshotWithFlags:(unsigned int)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = memorystatus_control();
  if ((v4 & 0x80000000) != 0)
  {
    v7 = PLLogProcessMonitor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLProcessMonitorAgent fetchSnapshotWithFlags:];
    }

    goto LABEL_20;
  }

  v5 = v4;
  if (!v4)
  {
    v7 = PLLogProcessMonitor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLProcessMonitorAgent fetchSnapshotWithFlags:];
    }

    goto LABEL_20;
  }

  v6 = v4;
  if (v4 >= 0xC9 && __ROR8__(0x8E38E38E38E38E39 * (v4 - 200), 5) >= 0xE38E38E38E38E4uLL)
  {
    v7 = PLLogProcessMonitor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLProcessMonitorAgent fetchSnapshotWithFlags:];
    }

LABEL_20:

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v8 = malloc_type_malloc(v4, 0xBEEDDA51uLL);
  if (!v8)
  {
    v7 = PLLogProcessMonitor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLProcessMonitorAgent fetchSnapshotWithFlags:];
    }

    goto LABEL_20;
  }

  v9 = v8;
  if (memorystatus_control() != v5)
  {
    v16 = PLLogProcessMonitor();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PLProcessMonitorAgent fetchSnapshotWithFlags:];
    }

    free(v9);
    goto LABEL_21;
  }

  v10 = (v5 - 200) / 0x120;
  if (v10 < v9[24])
  {
    v11 = PLLogProcessMonitor();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v9[24];
      v17 = 134218240;
      v18 = (v6 - 200) / 0x120uLL;
      v19 = 2048;
      v20 = v12;
      _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_INFO, "Got fewer jetsam entries from the kernel; received %zu, expected %zu", &v17, 0x16u);
    }

    v9[24] = v10;
  }

  v13 = [(PLProcessMonitorAgent *)self getJetsamSnapshotEntries:v9];
  free(v9);
LABEL_22:
  v14 = *MEMORY[0x277D85DE8];

  return v13;
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
  v2 = [(PLProcessMonitorAgent *)self fetchSnapshotWithFlags:0];
  v3 = PLLogProcessMonitor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLProcessMonitorAgent getJetsamSnapshotEntries:];
  }

  return v2;
}

- (void)logProcDirtyStats
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

id __42__PLProcessMonitorAgent_logProcDirtyStats__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = (a1 + 56);
  v4 = [PLUtilities binaryPathForPid:*(a1 + 56)];
  v5 = [v4 lastPathComponent];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"Unknown";
  }

  [v2 setObject:v6 forKeyedSubscript:@"daemon_procname"];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v2 setObject:v7 forKeyedSubscript:@"time_dirty_seconds"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  [v2 setObject:v8 forKeyedSubscript:@"lifetime_seconds"];

  if (v5)
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v5];

    if (v9)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:v5];
      [v2 setObject:v10 forKeyedSubscript:@"jse_idle_time"];
    }
  }

  v11 = *(a1 + 60);
  if (!v11)
  {
    v12 = *(a1 + 48);
    if (v12 <= 0.0)
    {
      v11 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40) / v12 * 100.0];
      [v2 setObject:v13 forKeyedSubscript:@"percent_dirty"];

      v11 = *(a1 + 60);
    }
  }

  v14 = [MEMORY[0x277CCABB0] numberWithShort:v11];
  [v2 setObject:v14 forKeyedSubscript:@"collection_status"];

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __42__PLProcessMonitorAgent_logProcDirtyStats__block_invoke_cold_1(v3);
  }

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
          if (logEventBackwardProcessExitHistogram_withStats_withDate__defaultOnce != -1)
          {
            dispatch_once(&logEventBackwardProcessExitHistogram_withStats_withDate__defaultOnce, block);
          }

          if (logEventBackwardProcessExitHistogram_withStats_withDate__classDebugEnabled == 1)
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
              _os_log_debug_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
    if (logEventBackwardProcessExitHistogram_withStats_withDate__defaultOnce_680 != -1)
    {
      dispatch_once(&logEventBackwardProcessExitHistogram_withStats_withDate__defaultOnce_680, v48);
    }

    if (logEventBackwardProcessExitHistogram_withStats_withDate__classDebugEnabled_681 == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
  logEventBackwardProcessExitHistogram_withStats_withDate__classDebugEnabled = result;
  return result;
}

uint64_t __81__PLProcessMonitorAgent_logEventBackwardProcessExitHistogram_withStats_withDate___block_invoke_682(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventBackwardProcessExitHistogram_withStats_withDate__classDebugEnabled_681 = result;
  return result;
}

- (void)logEventIntervalProcessMonitorIntervalUsingCache
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (int)get_kthread_list:(unint64_t *)a3
{
  v23 = 0u;
  memset(buffer, 0, sizeof(buffer));
  proc_pidinfo(0, 4, 0, buffer, 96);
  v4 = DWORD1(v23);
  v5 = 8 * SDWORD1(v23);
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
          return 0;
        }

        if (v8 >= v6)
        {
          *a3 = v7;
          return v6 >> 3;
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
      return v9 / 8;
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
      if (get_kthread_list__defaultOnce != -1)
      {
        dispatch_once(&get_kthread_list__defaultOnce, block);
      }

      if (get_kthread_list__classDebugEnabled == 1)
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    return -1;
  }

  return v4;
}

uint64_t __42__PLProcessMonitorAgent_get_kthread_list___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  get_kthread_list__classDebugEnabled = result;
  return result;
}

- (void)logEventIntervalKernelTaskMonitor
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __58__PLProcessMonitorAgent_logEventIntervalKernelTaskMonitor__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventIntervalKernelTaskMonitor_classDebugEnabled = result;
  return result;
}

uint64_t __58__PLProcessMonitorAgent_logEventIntervalKernelTaskMonitor__block_invoke_707(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventIntervalKernelTaskMonitor_classDebugEnabled_706 = result;
  return result;
}

+ (unint64_t)PIDToCoalitionID:(int)a3
{
  v15 = 0;
  memset(buffer, 0, sizeof(buffer));
  v3 = proc_pidinfo(a3, 20, 1uLL, buffer, 40);
  if (v3 == 40)
  {
    return *&buffer[0];
  }

  v5 = v3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLProcessMonitorAgent_PIDToCoalitionID___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (PIDToCoalitionID__defaultOnce != -1)
    {
      dispatch_once(&PIDToCoalitionID__defaultOnce, block);
    }

    if (PIDToCoalitionID__classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  return -v5;
}

uint64_t __42__PLProcessMonitorAgent_PIDToCoalitionID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PIDToCoalitionID__classDebugEnabled = result;
  return result;
}

+ (BOOL)enableThreadStatsLogging
{
  if (enableThreadStatsLogging_onceToken != -1)
  {
    +[PLProcessMonitorAgent enableThreadStatsLogging];
  }

  return enableThreadStatsLogging_threadStatsEnabled;
}

void __49__PLProcessMonitorAgent_enableThreadStatsLogging__block_invoke()
{
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v0 = [MEMORY[0x277D3F180] BOOLForKey:@"PLThreadStats_Enabled" ifNotSet:0];
    enableThreadStatsLogging_threadStatsEnabled = v0;
    if (!v0)
    {
      return;
    }
  }

  else if ((enableThreadStatsLogging_threadStatsEnabled & 1) == 0)
  {
    return;
  }

  v1 = PLLogCommon();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_25EE51000, v1, OS_LOG_TYPE_INFO, "thread stats: enabled", v2, 2u);
  }
}

- (void)initializeThreadStatsLogging
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
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
    v16[3] = &unk_279A5D8A8;
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
        _os_log_impl(&dword_25EE51000, v12, OS_LOG_TYPE_INFO, "thread stats: logging %lu entries", buf, 0xCu);
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
    v10[3] = &unk_279A5D880;
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
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v23 = self;
    v6 = PLLogProcessMonitor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PLProcessMonitorAgent logEventBackwardAppLaunchTimeSeries:];
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
      [PLProcessMonitorAgent logEventBackwardAppLaunchTimeSeries:];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_428_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got callback for PLProcessMonitorAgent_EventPoint_AppResumePredictions: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_437_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got callback for PLProcessMonitorAgent_EventPoint_AppNotFrozen: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_442_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got callback for PLProcessMonitorAgent_EventForward_AppResumeInferredCarry: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_454_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__PLProcessMonitorAgent_initOperatorDependancies__block_invoke_469_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __99__PLProcessMonitorAgent_logEventPointProcessExit_excludeProcesses_withStats_withDate_withNowInSec___block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getProcessExits:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getJetsamSnapshotEntries:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "getJSEIdleTime: memoryJetsamEntries %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchSnapshotWithFlags:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchSnapshotWithFlags:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchSnapshotWithFlags:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchSnapshotWithFlags:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchSnapshotWithFlags:.cold.5()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__PLProcessMonitorAgent_logProcDirtyStats__block_invoke_cold_1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardAppLaunchTimeSeries:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got payload for App Launch Signposts : %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardAppLaunchTimeSeries:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end