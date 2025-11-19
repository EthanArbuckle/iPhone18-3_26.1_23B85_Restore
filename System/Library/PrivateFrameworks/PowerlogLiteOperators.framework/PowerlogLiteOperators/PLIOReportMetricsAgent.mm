@interface PLIOReportMetricsAgent
+ (void)load;
- (BOOL)allowlistedChannel:(id)a3;
- (BOOL)isDynamicTable:(id)a3;
- (BOOL)skipCurrentIteration:(id)a3 forChannel:(id)a4;
- (IOReportGroupChecks)initGroupChecks;
- (PLIOReportMetricsAgent)init;
- (id)buildBaseSet:(IOReportGroupChecks *)a3;
- (id)buildCustomSet:(IOReportGroupChecks *)a3;
- (id)buildScreenStateSet:(IOReportGroupChecks *)a3;
- (id)buildSnapshotSet:(IOReportGroupChecks *)a3;
- (id)channelDictionaryWithChannelSet:(id)a3;
- (id)createCategoryString:(id)a3 forSubgroup:(id)a4;
- (id)sampleDeltaForChannelGroup:(id)a3;
- (id)sampleSnapshotForChannelGroup:(id)a3;
- (void)initOperatorDependancies;
- (void)log;
- (void)logDisplayOffAPWake;
- (void)logDisplayOffAPWakeStats;
- (void)logIOReportEntry:(id)a3 forCategory:(id)a4 withEntryDate:(id)a5 withAPWakeTime:(double)a6 isInterval:(BOOL)a7;
- (void)logIOReportIntervals:(id)a3 forChannelGroup:(id)a4;
- (void)logIOReportSnapshots:(id)a3;
- (void)logInit;
- (void)logSBC;
- (void)logScreenStateChange;
- (void)sampleDeltaForChannelSets;
- (void)startDisplayOffPeriodicTimer;
- (void)stopDisplayOffPeriodicTimer;
- (void)subscribeToChannelSets;
@end

@implementation PLIOReportMetricsAgent

- (void)logSBC
{
  v3 = [(PLIOReportMetricsAgent *)self sampleChannelsSignificantBattery];
  v4 = [(PLIOReportMetricsAgent *)self sampleDeltaForChannelGroup:v3];
  v5 = [(PLIOReportMetricsAgent *)self sampleChannelsSignificantBattery];
  [(PLIOReportMetricsAgent *)self logIOReportIntervals:v4 forChannelGroup:v5];

  if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "liteMode"))
  {
    v7 = [(PLIOReportMetricsAgent *)self sampleChannelsCustom];
    v6 = [(PLIOReportMetricsAgent *)self sampleSnapshotForChannelGroup:v7];
    [(PLIOReportMetricsAgent *)self logIOReportSnapshots:v6];
  }
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLIOReportMetricsAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLIOReportMetricsAgent)init
{
  if ([MEMORY[0x277D3F180] BOOLForKey:@"DynamicIOReportMetricEnable" ifNotSet:1])
  {
    v6.receiver = self;
    v6.super_class = PLIOReportMetricsAgent;
    self = [(PLAgent *)&v6 init];
    v3 = self;
  }

  else
  {
    v4 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "IOReport Metrics: Dynamic telemetry disabled", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  [(PLIOReportMetricsAgent *)self subscribeToChannelSets];
  [(PLIOReportMetricsAgent *)self sampleDeltaForChannelSets];
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLIOReportMetricsAgent *)self setLastEntryDate:v3];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke;
  v19[3] = &unk_2782597E8;
  v19[4] = self;
  v4 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v19];
  [(PLIOReportMetricsAgent *)self setBatteryLevelChangedNotifications:v4];

  if ([MEMORY[0x277D3F180] taskMode])
  {
    v5 = objc_alloc(MEMORY[0x277D3F1F0]);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_2;
    v18[3] = &unk_2782597E8;
    v18[4] = self;
    v6 = [v5 initWithOperator:self forNotification:@"com.apple.powerlog.EnhancedScreenState" withBlock:v18];
    enhancedScreenStateChangeListener = self->_enhancedScreenStateChangeListener;
    self->_enhancedScreenStateChangeListener = v6;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_23;
  v17[3] = &unk_2782597E8;
  v17[4] = self;
  v8 = [MEMORY[0x277D3F1A8] displayOffNotificationWithOperator:self withBlock:v17];
  [(PLIOReportMetricsAgent *)self setDisplayOffNotification:v8];

  if ([MEMORY[0x277D3F180] taskMode])
  {
    v9 = [MEMORY[0x277D3F220] sharedInstance];
    [(PLIOReportMetricsAgent *)self setStateTracker:v9];

    v10 = [(PLIOReportMetricsAgent *)self stateTracker];
    [v10 registerForStates:8 withOperator:self withBlock:&__block_literal_global_27];

    if ([MEMORY[0x277D3F208] hasAOD])
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_3;
      v16[3] = &unk_2782597E8;
      v16[4] = self;
      v11 = [MEMORY[0x277D3F1A8] displayOffOrAODNotificationWithOperator:self withBlock:v16];
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_29;
      v15[3] = &unk_2782597E8;
      v15[4] = self;
      v11 = [MEMORY[0x277D3F1A8] displayOffNotificationWithOperator:self withBlock:v15];
    }

    v12 = v11;
    [(PLIOReportMetricsAgent *)self setDisplayOffNotification:v11];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_30;
    v14[3] = &unk_2782597E8;
    v14[4] = self;
    v13 = [MEMORY[0x277D3F1A8] displayOnNotificationWithOperator:self withBlock:v14];
    [(PLIOReportMetricsAgent *)self setDisplayOnNotification:v13];
  }
}

void __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogIOReportMetrics();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification for ScreenState change: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logScreenStateChange];
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_23(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) logScreenStateChange];
  }

  return result;
}

uint64_t __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "AOD case: Received Display OFF Notification", v4, 2u);
    }

    return [*(v2 + 32) startDisplayOffPeriodicTimer];
  }

  return result;
}

uint64_t __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_29(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Non-AOD case: Received Display OFF Notification", v4, 2u);
    }

    return [*(v2 + 32) startDisplayOffPeriodicTimer];
  }

  return result;
}

uint64_t __50__PLIOReportMetricsAgent_initOperatorDependancies__block_invoke_30(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Received Display ON Notification", v4, 2u);
    }

    return [*(v2 + 32) stopDisplayOffPeriodicTimer];
  }

  return result;
}

- (IOReportGroupChecks)initGroupChecks
{
  v2 = [MEMORY[0x277D3F180] liteMode];
  v3 = [MEMORY[0x277D3F180] taskMode];
  v4 = [MEMORY[0x277D3F180] fullMode];
  v5 = [MEMORY[0x277D3F208] isWatch];
  v6 = [MEMORY[0x277D3F208] isiPhone];
  v7 = [MEMORY[0x277D3F208] internalBuild];
  v8 = 0x10000000000;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = 0x100000000;
  if (!v6)
  {
    v9 = 0;
  }

  v10 = 0x1000000;
  if (!v5)
  {
    v10 = 0;
  }

  v11 = 0x10000;
  if (!v4)
  {
    v11 = 0;
  }

  v12 = 256;
  if (!v3)
  {
    v12 = 0;
  }

  return (v12 | v2 | v11 | v10 | v9 | v8);
}

- (id)buildBaseSet:(IOReportGroupChecks *)a3
{
  v39[18] = *MEMORY[0x277D85DE8];
  v38[0] = @"AMC Stats,Perf Counters";
  if (a3->var2)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3->var1 && a3->var3;
  }

  v35 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v39[0] = v35;
  v38[1] = @"DCP,scanout stats";
  v5 = a3->var2 && a3->var4;
  v34 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v39[1] = v34;
  v38[2] = @"SoC Stats,Events";
  if (a3->var2)
  {
    v6 = 1;
  }

  else
  {
    v6 = a3->var1 && a3->var3;
  }

  v33 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v39[2] = v33;
  v38[3] = @"SoC Stats,PMGR Counters";
  if (a3->var2)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3->var1 && a3->var3;
  }

  v32 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v39[3] = v32;
  v38[4] = @"SoC Stats,Device States";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:a3->var2];
  v39[4] = v31;
  v38[5] = @"AOP-EXCLAVE,Power";
  v8 = a3->var1 || a3->var2;
  v30 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  v39[5] = v30;
  v38[6] = @"ISP,IOP State";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:a3->var2];
  v39[6] = v29;
  v38[7] = @"AOP2,Performance";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:a3->var2];
  v39[7] = v28;
  v38[8] = @"AOP2,Power";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:a3->var2];
  v39[8] = v26;
  v38[9] = @"GPU Stats,GPU Power Controller States";
  v9 = (a3->var2 || a3->var0) && a3->var5;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{v9, v26}];
  v39[9] = v10;
  v38[10] = @"PMP,DCS Ceiling";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:a3->var2];
  v39[10] = v11;
  v38[11] = @"PMP,DCS Floor";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:a3->var2];
  v39[11] = v12;
  v38[12] = @"PMP,SOC Floor";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:a3->var2];
  v39[12] = v13;
  v38[13] = @"PMP,PMC AVE Floor";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:a3->var2];
  v39[13] = v14;
  v38[14] = @"PMP,PMC DCS Floor";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:a3->var2];
  v39[14] = v15;
  v38[15] = @"PMP,PMC DISP Floor";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:a3->var2];
  v39[15] = v16;
  v38[16] = @"PMP,PMC SOC Floor";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:a3->var2];
  v39[16] = v17;
  v38[17] = @"PMP,PMC RMBS";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:a3->var2];
  v39[17] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:18];

  v20 = objc_opt_new();
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __39__PLIOReportMetricsAgent_buildBaseSet___block_invoke;
  v36[3] = &unk_27825CDE8;
  v37 = v20;
  v21 = v20;
  [v19 enumerateKeysAndObjectsUsingBlock:v36];
  if ([v21 count])
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

void __39__PLIOReportMetricsAgent_buildBaseSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "Base set has following subscription %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)buildScreenStateSet:(IOReportGroupChecks *)a3
{
  v33[17] = *MEMORY[0x277D85DE8];
  v32[0] = @"AMC Stats,Perf Counters";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[0] = v29;
  v32[1] = @"DCP,scanout stats";
  v4 = a3->var1 && a3->var4;
  v28 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v33[1] = v28;
  v32[2] = @"AOP2,Performance";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[2] = v27;
  v32[3] = @"AOP2,Power";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[3] = v26;
  v32[4] = @"GPU Stats,GPU Power Controller States";
  v5 = a3->var1 && a3->var5;
  v25 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v33[4] = v25;
  v32[5] = @"PMP,DCS Ceiling";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[5] = v24;
  v32[6] = @"PMP,DCS Floor";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[6] = v23;
  v32[7] = @"PMP,SOC Floor";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[7] = v22;
  v32[8] = @"PMP,PMC AVE Floor";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[8] = v6;
  v32[9] = @"PMP,PMC DCS Floor";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[9] = v7;
  v32[10] = @"PMP,PMC DISP Floor";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[10] = v8;
  v32[11] = @"PMP,PMC SOC Floor";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[11] = v9;
  v32[12] = @"PMP,PMC RMBS";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[12] = v10;
  v32[13] = @"SoC Stats,Events";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[13] = v11;
  v32[14] = @"SoC Stats,PMGR Counters";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[14] = v12;
  v32[15] = @"SoC Stats,Device States";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[15] = v13;
  v32[16] = @"ISP,IOP State";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:a3->var1];
  v33[16] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:17];

  v16 = objc_opt_new();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __46__PLIOReportMetricsAgent_buildScreenStateSet___block_invoke;
  v30[3] = &unk_27825CDE8;
  v31 = v16;
  v17 = v16;
  [v15 enumerateKeysAndObjectsUsingBlock:v30];
  if ([v17 count])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

void __46__PLIOReportMetricsAgent_buildScreenStateSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "ScreenState set has following subscription %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)buildSnapshotSet:(IOReportGroupChecks *)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = @"SoC Stats,AON Fuse";
  v3 = a3->var1 || a3->var2;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v18[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

  v6 = objc_opt_new();
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __43__PLIOReportMetricsAgent_buildSnapshotSet___block_invoke;
  v15 = &unk_27825CDE8;
  v16 = v6;
  v7 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:&v12];
  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void __43__PLIOReportMetricsAgent_buildSnapshotSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "Snapshot set has following subscription %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)buildCustomSet:(IOReportGroupChecks *)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = @"ISP,ISP Events";
  v3 = a3->var1 || a3->var2;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v17[1] = @"ANS2,MSP0";
  v18[0] = v4;
  v18[1] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v6 = objc_opt_new();
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __41__PLIOReportMetricsAgent_buildCustomSet___block_invoke;
  v15 = &unk_27825CDE8;
  v16 = v6;
  v7 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:&v12];
  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void __41__PLIOReportMetricsAgent_buildCustomSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
    v6 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_INFO, "Snapshot set has following subscription %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)channelDictionaryWithChannelSet:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = IOReportCopyFilteredChannels();
  if (IOReportGetChannelCount())
  {
    Subscription = IOReportCreateSubscription();
    if (v4)
    {
      CFRelease(v4);
    }

    if (!Subscription)
    {
      goto LABEL_10;
    }

    if (IOReportGetChannelCount())
    {
      v6 = objc_opt_new();
      [v6 setObject:Subscription forKeyedSubscript:@"subscription"];

      [v6 setObject:0 forKeyedSubscript:@"subscribedChannels"];
      goto LABEL_11;
    }

    CFRelease(Subscription);
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  CFRelease(v7);
LABEL_10:
  v6 = 0;
LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __58__PLIOReportMetricsAgent_channelDictionaryWithChannelSet___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = IOReportChannelGetGroup();
  v4 = IOReportChannelGetSubGroup();
  if (v4)
  {
    v5 = [v3 stringByAppendingString:{@", "}];
    v6 = [v5 stringByAppendingString:v4];
  }

  else
  {
    v6 = v3;
  }

  v7 = [*(a1 + 32) containsObject:v6];
  v8 = PLLogIOReportMetrics();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "!!! Retain: groupSubgroupObj = %@ !!!", &v13, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    if (v9)
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "!!! Remove: groupSubgroupObj = %@ !!!", &v13, 0xCu);
    }

    v10 = 16;
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)subscribeToChannelSets
{
  v3 = [(PLIOReportMetricsAgent *)self initGroupChecks];
  v16 = v3;
  v17 = WORD2(v3);
  v4 = [(PLIOReportMetricsAgent *)self buildBaseSet:&v16];
  if (v4)
  {
    v5 = [(PLIOReportMetricsAgent *)self channelDictionaryWithChannelSet:v4];
    sampleChannelsSignificantBattery = self->_sampleChannelsSignificantBattery;
    self->_sampleChannelsSignificantBattery = v5;
  }

  v7 = [(PLIOReportMetricsAgent *)self buildScreenStateSet:&v16];
  if (v7)
  {
    v8 = [(PLIOReportMetricsAgent *)self channelDictionaryWithChannelSet:v7];
    sampleChannelsScreenState = self->_sampleChannelsScreenState;
    self->_sampleChannelsScreenState = v8;
  }

  v10 = [(PLIOReportMetricsAgent *)self buildSnapshotSet:&v16];
  if (v10)
  {
    v11 = [(PLIOReportMetricsAgent *)self channelDictionaryWithChannelSet:v10];
    sampleChannelsSnapshot = self->_sampleChannelsSnapshot;
    self->_sampleChannelsSnapshot = v11;
  }

  v13 = [(PLIOReportMetricsAgent *)self buildCustomSet:&v16];
  if (v13)
  {
    v14 = [(PLIOReportMetricsAgent *)self channelDictionaryWithChannelSet:v13];
    sampleChannelsCustom = self->_sampleChannelsCustom;
    self->_sampleChannelsCustom = v14;
  }
}

- (void)sampleDeltaForChannelSets
{
  if (self->_sampleChannelsSignificantBattery)
  {
    v3 = [(PLIOReportMetricsAgent *)self sampleDeltaForChannelGroup:?];
  }

  if (self->_sampleChannelsScreenState)
  {
    v4 = [(PLIOReportMetricsAgent *)self sampleDeltaForChannelGroup:?];
  }
}

- (id)sampleDeltaForChannelGroup:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    v5 = [v3 objectForKey:@"currentSample"];
    [v3 setObject:v5 forKeyedSubscript:@"lastSample"];

    v6 = [v3 objectForKey:@"currentSampleAPWakeTime"];
    [v3 setObject:v6 forKeyedSubscript:@"lastSampleAPWakeTime"];

    [v3 objectForKey:@"subscription"];
    [v3 objectForKey:@"subscribedChannels"];
    Samples = IOReportCreateSamples();
    [v3 setObject:Samples forKeyedSubscript:@"currentSample"];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
    [v3 setObject:v8 forKeyedSubscript:@"currentSampleAPWakeTime"];

    v9 = [v3 objectForKey:@"lastSample"];

    if (v9)
    {
      [v3 objectForKey:@"lastSample"];
      [v3 objectForKey:@"currentSample"];
      SamplesDelta = IOReportCreateSamplesDelta();
      [v3 removeObjectForKey:@"lastSample"];
      goto LABEL_7;
    }

    v11 = [v3 objectForKey:@"currentSample"];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
  }

  SamplesDelta = v11;
LABEL_7:
  objc_autoreleasePoolPop(v4);

  return SamplesDelta;
}

- (id)sampleSnapshotForChannelGroup:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 objectForKeyedSubscript:@"subscription"];

  v6 = [v3 objectForKeyedSubscript:@"subscribedChannels"];
  v7 = v6;
  Samples = 0;
  if (v3 && v5 && v6)
  {
    v9 = [v3 objectForKey:@"lastSample"];

    if (v9)
    {
      Samples = [v3 objectForKeyedSubscript:@"lastSample"];
      if (!IOReportUpdateSamples())
      {
        [v3 removeObjectForKey:@"lastSample"];
        goto LABEL_9;
      }
    }

    else
    {
      Samples = IOReportCreateSamples();
      if (!Samples)
      {
        goto LABEL_9;
      }
    }

    [v3 setObject:Samples forKeyedSubscript:@"lastSample"];
  }

LABEL_9:

  objc_autoreleasePoolPop(v4);

  return Samples;
}

- (void)log
{
  [(PLIOReportMetricsAgent *)self logInit];
  [(PLIOReportMetricsAgent *)self logSBC];

  [(PLIOReportMetricsAgent *)self logScreenStateChange];
}

- (void)logInit
{
  v4 = [(PLIOReportMetricsAgent *)self sampleChannelsSnapshot];
  v3 = [(PLIOReportMetricsAgent *)self sampleSnapshotForChannelGroup:v4];
  [(PLIOReportMetricsAgent *)self logIOReportSnapshots:v3];
}

- (void)logScreenStateChange
{
  v3 = [(PLIOReportMetricsAgent *)self sampleChannelsScreenState];
  v4 = [(PLIOReportMetricsAgent *)self sampleDeltaForChannelGroup:v3];
  v5 = [(PLIOReportMetricsAgent *)self sampleChannelsScreenState];
  [(PLIOReportMetricsAgent *)self logIOReportIntervals:v4 forChannelGroup:v5];

  if ([MEMORY[0x277D3F180] taskMode])
  {
    v7 = [(PLIOReportMetricsAgent *)self sampleChannelsCustom];
    v6 = [(PLIOReportMetricsAgent *)self sampleSnapshotForChannelGroup:v7];
    [(PLIOReportMetricsAgent *)self logIOReportSnapshots:v6];
  }
}

- (void)logDisplayOffAPWake
{
  v5 = [(PLIOReportMetricsAgent *)self sampleChannelsScreenState];
  v3 = [(PLIOReportMetricsAgent *)self sampleDeltaForChannelGroup:v5];
  v4 = [(PLIOReportMetricsAgent *)self sampleChannelsScreenState];
  [(PLIOReportMetricsAgent *)self logIOReportIntervals:v3 forChannelGroup:v4];
}

- (void)logIOReportSnapshots:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"IOReportChannelGroups"];
  v6 = [v5 allKeys];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__PLIOReportMetricsAgent_logIOReportSnapshots___block_invoke;
  v8[3] = &unk_278259C90;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __47__PLIOReportMetricsAgent_logIOReportSnapshots___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:@"IOReportChannelGroups"];
  v5 = [v4 objectForKey:v3];

  v6 = [v5 objectForKey:@"IOReportChannelGroups"];
  v7 = [v6 allKeys];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__PLIOReportMetricsAgent_logIOReportSnapshots___block_invoke_2;
  v11[3] = &unk_278259CE0;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v8;
  v14 = v3;
  v9 = v3;
  v10 = v5;
  [v7 enumerateObjectsUsingBlock:v11];
}

void __47__PLIOReportMetricsAgent_logIOReportSnapshots___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:@"IOReportChannelGroups"];
  v7 = [v5 objectForKey:v4];

  v6 = [*(a1 + 40) createCategoryString:*(a1 + 48) forSubgroup:v4];

  [*(a1 + 40) logIOReportEntry:v7 forCategory:v6 withEntryDate:0 withAPWakeTime:0 isInterval:0.0];
}

- (void)logIOReportIntervals:(id)a3 forChannelGroup:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if (v6)
  {
    v35 = v8;
    v43 = [MEMORY[0x277CBEAA8] monotonicDate];
    v9 = [v7 objectForKey:@"currentSampleAPWakeTime"];
    v10 = [v9 unsignedLongLongValue];

    v36 = v7;
    v11 = [v7 objectForKey:@"lastSampleAPWakeTime"];
    v12 = [v11 unsignedLongLongValue];

    [MEMORY[0x277D3F258] secondsFromMachTime:v10];
    v14 = v13;
    [MEMORY[0x277D3F258] secondsFromMachTime:v12];
    v16 = v15;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v17 = [v6 objectForKey:@"IOReportChannelGroups"];
    v18 = [v17 allKeys];

    obj = v18;
    v40 = [v18 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v40)
    {
      v19 = v14 - v16;
      v38 = *v49;
      v39 = v6;
      do
      {
        v20 = 0;
        do
        {
          if (*v49 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v42 = v20;
          v21 = *(*(&v48 + 1) + 8 * v20);
          context = objc_autoreleasePoolPush();
          v22 = [v6 objectForKey:@"IOReportChannelGroups"];
          v23 = [v22 objectForKey:v21];

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v24 = [v23 objectForKey:@"IOReportChannelGroups"];
          v25 = [v24 allKeys];

          v26 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v45;
            do
            {
              v29 = 0;
              do
              {
                if (*v45 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v44 + 1) + 8 * v29);
                v31 = [v23 objectForKey:@"IOReportChannelGroups"];
                v32 = [v31 objectForKey:v30];

                v33 = [(PLIOReportMetricsAgent *)self createCategoryString:v21 forSubgroup:v30];
                [(PLIOReportMetricsAgent *)self logIOReportEntry:v32 forCategory:v33 withEntryDate:v43 withAPWakeTime:1 isInterval:v19];

                ++v29;
              }

              while (v27 != v29);
              v27 = [v25 countByEnumeratingWithState:&v44 objects:v52 count:16];
            }

            while (v27);
          }

          objc_autoreleasePoolPop(context);
          v20 = v42 + 1;
          v6 = v39;
        }

        while (v42 + 1 != v40);
        v40 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v40);
    }

    [(PLIOReportMetricsAgent *)self setLastEntryDate:v43];
    v8 = v35;
    v7 = v36;
  }

  objc_autoreleasePoolPop(v8);

  v34 = *MEMORY[0x277D85DE8];
}

- (void)logIOReportEntry:(id)a3 forCategory:(id)a4 withEntryDate:(id)a5 withAPWakeTime:(double)a6 isInterval:(BOOL)a7
{
  v7 = a7;
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = objc_autoreleasePoolPush();
  v16 = [MEMORY[0x277CBEB38] dictionary];
  v17 = objc_opt_new();
  v18 = [(PLIOReportMetricsAgent *)self isDynamicTable:v13];
  if (v7)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
    [v16 setObject:v19 forKeyedSubscript:@"APWakeTime"];

    [v16 setObject:v14 forKeyedSubscript:@"timestampEnd"];
  }

  v20 = v13;
  v21 = v17;
  v22 = v16;
  IOReportIterate();
  if (v18)
  {
    [v22 setObject:v21 forKeyedSubscript:@"__PPSKVPairs__"];
  }

  v23 = PLLogIOReportMetrics();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v27 = v20;
    v28 = 2112;
    v29 = v22;
    _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "IOReportMetrics: category = %@, payload = %@", buf, 0x16u);
  }

  v24 = [(PLIOReportMetricsAgent *)self lastEntryDate];
  [(PLOperator *)self logForSubsystem:@"IOReportMetrics" category:v20 data:v22 date:v24];

  objc_autoreleasePoolPop(v15);
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __95__PLIOReportMetricsAgent_logIOReportEntry_forCategory_withEntryDate_withAPWakeTime_isInterval___block_invoke(uint64_t a1, uint64_t a2)
{
  v51[2] = *MEMORY[0x277D85DE8];
  v4 = IOReportChannelGetChannelName();
  if ([*(a1 + 32) skipCurrentIteration:*(a1 + 40) forChannel:v4])
  {
    goto LABEL_2;
  }

  Format = IOReportChannelGetFormat();
  if (Format != 3)
  {
    if (Format != 2)
    {
      if (Format == 1)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
        v8 = v7;
        if (v4 && v7)
        {
          if (*(a1 + 64) == 1)
          {
            if ([v7 unsignedIntegerValue])
            {
              v9 = *(a1 + 48);
              v50[0] = @"Channel";
              v50[1] = @"Value";
              v51[0] = v4;
              v51[1] = v8;
              v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
              [v9 addObject:v10];
            }
          }

          else
          {
            [*(a1 + 56) setObject:v7 forKeyedSubscript:v4];
          }
        }
      }

      goto LABEL_49;
    }

    if ([MEMORY[0x277D3F208] internalBuild] && objc_msgSend(*(a1 + 40), "isEqualToString:", @"SoCStatsDeviceStates"))
    {
      if (![*(a1 + 32) allowlistedChannel:v4])
      {
LABEL_2:
        v5 = 16;
        goto LABEL_50;
      }

      v11 = PLLogIOReportMetrics();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v4;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "IOReportMetrics: Device States channel %@ is allowlisted", buf, 0xCu);
      }
    }

    Count = IOReportStateGetCount();
    if (Count < 1)
    {
LABEL_49:
      v5 = 0;
      goto LABEL_50;
    }

    v13 = Count;
    v14 = 0;
    v15 = 0x277CCA000uLL;
    while (1)
    {
      v16 = IOReportStateGetNameForIndex();
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if ([v16 caseInsensitiveCompare:@"OFF"] && objc_msgSend(v17, "caseInsensitiveCompare:", @"INACT") && objc_msgSend(v17, "caseInsensitiveCompare:", @"PWROFF"))
      {
        goto LABEL_25;
      }

LABEL_34:

      v14 = (v14 + 1);
      if (v13 == v14)
      {
        goto LABEL_49;
      }
    }

    v17 = [*(v15 + 3240) stringWithFormat:@"%d", v14];
LABEL_25:
    v18 = [*(v15 + 3240) stringWithFormat:@"%@_%@", v4, v17];
    v19 = MEMORY[0x277CCABB0];
    IOReportStateGetDutyCycle();
    v20 = [v19 numberWithDouble:?];
    v21 = v20;
    if (v18)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      if (*(a1 + 64) == 1)
      {
        [v20 doubleValue];
        if (v23 >= 0.0)
        {
          v24 = *(a1 + 48);
          v47[0] = @"Channel";
          v47[1] = @"DutyCycle";
          v48[0] = v18;
          v48[1] = v21;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
          v26 = v24;
          v15 = 0x277CCA000;
          [v26 addObject:v25];
        }
      }

      else
      {
        [*(a1 + 56) setObject:v20 forKeyedSubscript:v18];
      }
    }

    goto LABEL_34;
  }

  *buf = 0;
  BucketCount = IOReportHistogramGetBucketCount();
  if (BucketCount >= 1)
  {
    v28 = BucketCount;
    v29 = 0;
    v30 = 0x277CCA000uLL;
    do
    {
      IOReportHistogramGetBucketBounds();
      IOReportChannelGetUnit();
      v31 = MEMORY[0x277CCACA8];
      IOReportScaleValue();
      v33 = v32;
      IOReportScaleValue();
      v35 = [v31 stringWithFormat:@"%.1f%@-%.1f%@", v33, @"ms", v34, @"ms"];
      v36 = [*(v30 + 2992) numberWithUnsignedLongLong:IOReportHistogramGetBucketHits()];
      v37 = v36;
      if (v35)
      {
        v38 = v36 == 0;
      }

      else
      {
        v38 = 1;
      }

      if (!v38)
      {
        if (*(a1 + 64) == 1)
        {
          v39 = *(a1 + 48);
          v45[0] = @"Channel";
          v45[1] = @"DutyCycle";
          v46[0] = v35;
          v46[1] = v36;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
          v40 = a2;
          v42 = v41 = v30;
          [v39 addObject:v42];

          v30 = v41;
          a2 = v40;
        }

        else
        {
          [*(a1 + 56) setObject:v36 forKeyedSubscript:v35];
        }
      }

      ++v29;
    }

    while (v28 != v29);
  }

  v5 = 0;
LABEL_50:

  v43 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)startDisplayOffPeriodicTimer
{
  if (!self->_displayOffTimer)
  {
    v3 = MEMORY[0x277D3F1E0];
    v4 = [MEMORY[0x277CBEAA8] monotonicDate];
    v5 = [(PLOperator *)self workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__PLIOReportMetricsAgent_startDisplayOffPeriodicTimer__block_invoke;
    v10[3] = &unk_27825B230;
    v10[4] = self;
    v6 = [v3 scheduledTimerWithMonotonicFireDate:v4 withInterval:v5 withQueue:v10 withBlock:180.0];
    displayOffTimer = self->_displayOffTimer;
    self->_displayOffTimer = v6;

    v8 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Display OFF timer started", v9, 2u);
    }
  }
}

- (void)stopDisplayOffPeriodicTimer
{
  displayOffTimer = self->_displayOffTimer;
  if (displayOffTimer)
  {
    [(PLMonotonicTimer *)displayOffTimer cancel];
    v4 = self->_displayOffTimer;
    self->_displayOffTimer = 0;

    v5 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Display OFF timer stopped", v6, 2u);
    }
  }
}

- (void)logDisplayOffAPWakeStats
{
  v9 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] taskMode])
  {
    v3 = [(PLStateTrackingComposition *)self->_stateTracker getCurrState:8];
    v4 = [v3 BOOLValue];
    v5 = PLLogIOReportMetrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8[0] = 67109120;
      v8[1] = v4;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "logDisplayOffAPWakeStats: AP ON is %d", v8, 8u);
    }

    if (v4)
    {
      v6 = PLLogIOReportMetrics();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v8[0]) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Log table entries at display OFF + AP ON occurrence", v8, 2u);
      }

      [(PLIOReportMetricsAgent *)self logDisplayOffAPWake];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)createCategoryString:(id)a3 forSubgroup:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [v5 stringByAppendingString:a4];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = [v7 mutableCopy];
  [v9 replaceOccurrencesOfString:@" " withString:&stru_282B650A0 options:0 range:{0, objc_msgSend(v9, "length")}];

  return v9;
}

- (BOOL)allowlistedChannel:(id)a3
{
  v3 = a3;
  if (qword_2811F4C90 != -1)
  {
    dispatch_once(&qword_2811F4C90, &__block_literal_global_179);
  }

  if (qword_2811F4C88)
  {
    v4 = [qword_2811F4C88 containsObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __45__PLIOReportMetricsAgent_allowlistedChannel___block_invoke()
{
  result = [MEMORY[0x277D3F208] isiPhone];
  if (result)
  {
    result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    if (result >= 1001021)
    {
      qword_2811F4C88 = [MEMORY[0x277CBEB98] setWithObjects:{@"ATC0_COMMON", @"ATC0_USB", @"VENC0_DMA", @"VENC1_DMA", @"VENC0_SYS", @"VENC1_SYS", @"VENC0_PIPE4", @"VENC1_PIPE4", @"VENC0_PIPE5", @"VENC1_PIPE5", @"VENC0_ME0", @"VENC1_ME0", @"VENC0_ME1", @"VENC1_ME1", @"ISP_SYS", @"ISP_CPU", @"ISP_FE", 0}];

      return MEMORY[0x2821F96F8]();
    }
  }

  return result;
}

- (BOOL)isDynamicTable:(id)a3
{
  v3 = a3;
  v4 = ([v3 isEqualToString:@"ANS2MSP0"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"AOP2Power") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"AOP-EXCLAVEPower") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"DCPscanoutstats") & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", @"ISPISPEvents");

  return v4;
}

- (BOOL)skipCurrentIteration:(id)a3 forChannel:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 isEqualToString:@"ISPISPEvents"] && !objc_msgSend(v6, "hasPrefix:", @"DPE_") || objc_msgSend(v5, "isEqualToString:", @"AOP2Performance") && (objc_msgSend(v6, "hasPrefix:", @"Thread time") & 1) == 0;

  return v7;
}

@end