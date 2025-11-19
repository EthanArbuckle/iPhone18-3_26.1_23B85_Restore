@interface PLCoalitionAgent
+ (id)entryAggregateDefinitionNANDStats;
+ (id)entryAggregateDefinitions;
+ (id)entryEventIntervalDefinitionCoalitionUsage;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionCoalitionDrop;
+ (id)entryEventPointDefinitionCoalitionMemory;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)shouldLogCoalitionObject:(id)a3 withEndObject:(id)a4;
- (PLCoalitionAgent)init;
- (double)getANEEnergyFromEntry:(id)a3;
- (double)getCPUEnergyFromEntry:(id)a3;
- (double)getCPUVoucherTimeFromEntry:(id)a3;
- (double)getCPUWeightFromEntry:(id)a3;
- (double)getGPUEnergyFromEntry:(id)a3;
- (double)getGPUTimeFromEntry:(id)a3;
- (double)getGPUWeightFromEntry:(id)a3;
- (id)buildPLEntryDiffWithStartObject:(id)a3 withEndObject:(id)a4 withStartDate:(id)a5 withEndDate:(id)a6;
- (id)processPerAppLogicalWritesWithInfo:(id)a3;
- (unint64_t)readPropertyFromRegistry:(__CFString *)a3;
- (void)addAccountingEventsFromCoalitions:(id)a3;
- (void)getCoalitionInfoWithHFLFlag:(BOOL)a3;
- (void)getStorageCapacity;
- (void)handleStateChangeForCoalitions;
- (void)initOperatorDependancies;
- (void)log;
- (void)logAggregateNANDStatsWithInfo:(id)a3;
- (void)logCoalitionObjectDifference:(id)a3;
- (void)logCoalitionObjectMemory:(id)a3;
- (void)logToAggd:(id)a3;
@end

@implementation PLCoalitionAgent

void __44__PLCoalitionAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogCoalition();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "Coalitions: Received SBC notification!", v5, 2u);
  }

  [*(a1 + 32) logEventIntervalCoalitionIntervalWithHFLFlag:0];
  v3 = *(a1 + 32);
  v4 = [v3 lastCoalitionObjectDictionary];
  [v3 logCoalitionObjectMemory:v4];
}

void __44__PLCoalitionAgent_initOperatorDependancies__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogCoalition();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification from ThermalMonitor: %@", &v10, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"Source"];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"Source"];
    if ([v6 isEqual:&unk_282C11C70])
    {

LABEL_7:
      [*(a1 + 32) logEventIntervalCoalitionIntervalWithHFLFlag:0];
      goto LABEL_8;
    }

    v7 = [v3 objectForKeyedSubscript:@"Source"];
    v8 = [v7 isEqual:&unk_282C11C88];

    if (v8)
    {
      goto LABEL_7;
    }
  }

LABEL_8:

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLCoalitionAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryAggregateDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"NANDStats";
  v2 = +[PLCoalitionAgent entryAggregateDefinitionNANDStats];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryAggregateDefinitionNANDStats
{
  v23[4] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F490];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_282C1C638;
  v21[1] = MEMORY[0x277CBEC38];
  v20[2] = *MEMORY[0x277D3F4A0];
  v21[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v23[0] = v3;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"BundleId";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v18[1] = @"LogicalWrites";
  v19[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v19[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v23[1] = v8;
  v22[2] = *MEMORY[0x277D3F478];
  v16 = &unk_282C1C648;
  v14 = *MEMORY[0x277D3F470];
  v15 = &unk_282C1C658;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v22[3] = *MEMORY[0x277D3F488];
  v23[2] = v10;
  v23[3] = &unk_282C14C70;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"CoalitionDrops";
  v2 = +[PLCoalitionAgent entryEventPointDefinitionCoalitionDrop];
  v7[1] = @"CoalitionMemory";
  v8[0] = v2;
  v3 = +[PLCoalitionAgent entryEventPointDefinitionCoalitionMemory];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventPointDefinitionCoalitionDrop
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1C638;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"bufferSize";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"finalSize";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventPointDefinitionCoalitionMemory
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1C668;
  v29[1] = MEMORY[0x277CBEC38];
  v28[2] = *MEMORY[0x277D3F4A0];
  v29[2] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"LaunchdCoalitionId";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v27[0] = v23;
  v26[1] = @"LaunchdName";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat_withBundleID];
  v27[1] = v21;
  v26[2] = @"memory_wired_size";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v27[2] = v19;
  v26[3] = @"memory_purgeable_size";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v27[3] = v17;
  v26[4] = @"memory_anonmem_size";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v27[4] = v15;
  v26[5] = @"memory_compressed_size";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v27[5] = v4;
  v26[6] = @"process_count";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v27[6] = v6;
  v26[7] = @"CompressedLifetime";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v27[7] = v8;
  v26[8] = @"Swapins";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v27[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"CoalitionInterval";
  v2 = +[PLCoalitionAgent entryEventIntervalDefinitionCoalitionUsage];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventIntervalDefinitionCoalitionUsage
{
  v92[2] = *MEMORY[0x277D85DE8];
  v91[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v89[0] = *MEMORY[0x277D3F568];
  v89[1] = v2;
  v90[0] = &unk_282C1C678;
  v90[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F548];
  v89[2] = *MEMORY[0x277D3F4A0];
  v89[3] = v3;
  v90[2] = MEMORY[0x277CBEC38];
  v90[3] = @"logEventIntervalCoalitionIntervalWithoutHighFreqLogging";
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:4];
  v92[0] = v86;
  v91[1] = *MEMORY[0x277D3F540];
  v87[0] = @"LaunchdCoalitionId";
  v85 = [MEMORY[0x277D3F198] sharedInstance];
  v84 = [v85 commonTypeDict_IntegerFormat];
  v88[0] = v84;
  v87[1] = @"LaunchdName";
  v83 = [MEMORY[0x277D3F198] sharedInstance];
  v82 = [v83 commonTypeDict_StringFormat_withBundleID];
  v88[1] = v82;
  v87[2] = @"BundleId";
  v81 = [MEMORY[0x277D3F198] sharedInstance];
  v80 = [v81 commonTypeDict_StringFormat_withBundleID];
  v88[2] = v80;
  v87[3] = @"tasks_started";
  v79 = [MEMORY[0x277D3F198] sharedInstance];
  v78 = [v79 commonTypeDict_RealFormat];
  v88[3] = v78;
  v87[4] = @"tasks_exited";
  v77 = [MEMORY[0x277D3F198] sharedInstance];
  v76 = [v77 commonTypeDict_RealFormat];
  v88[4] = v76;
  v87[5] = @"time_nonempty";
  v75 = [MEMORY[0x277D3F198] sharedInstance];
  v74 = [v75 commonTypeDict_RealFormat];
  v88[5] = v74;
  v87[6] = @"cpu_time";
  v73 = [MEMORY[0x277D3F198] sharedInstance];
  v72 = [v73 commonTypeDict_RealFormat];
  v88[6] = v72;
  v87[7] = @"cpu_instructions";
  v71 = [MEMORY[0x277D3F198] sharedInstance];
  v70 = [v71 commonTypeDict_IntegerFormat];
  v88[7] = v70;
  v87[8] = @"interrupt_wakeups";
  v69 = [MEMORY[0x277D3F198] sharedInstance];
  v68 = [v69 commonTypeDict_RealFormat];
  v88[8] = v68;
  v87[9] = @"platform_idle_wakeups";
  v67 = [MEMORY[0x277D3F198] sharedInstance];
  v66 = [v67 commonTypeDict_RealFormat];
  v88[9] = v66;
  v87[10] = @"bytesread";
  v65 = [MEMORY[0x277D3F198] sharedInstance];
  v64 = [v65 commonTypeDict_RealFormat];
  v88[10] = v64;
  v87[11] = @"byteswritten";
  v63 = [MEMORY[0x277D3F198] sharedInstance];
  v62 = [v63 commonTypeDict_RealFormat];
  v88[11] = v62;
  v87[12] = @"logical_immediate_writes";
  v61 = [MEMORY[0x277D3F198] sharedInstance];
  v60 = [v61 commonTypeDict_RealFormat];
  v88[12] = v60;
  v87[13] = @"logical_deferred_writes";
  v59 = [MEMORY[0x277D3F198] sharedInstance];
  v58 = [v59 commonTypeDict_RealFormat];
  v88[13] = v58;
  v87[14] = @"logical_invalidated_writes";
  v57 = [MEMORY[0x277D3F198] sharedInstance];
  v56 = [v57 commonTypeDict_RealFormat];
  v88[14] = v56;
  v87[15] = @"logical_metadata_writes";
  v55 = [MEMORY[0x277D3F198] sharedInstance];
  v54 = [v55 commonTypeDict_RealFormat];
  v88[15] = v54;
  v87[16] = @"gpu_time";
  v53 = [MEMORY[0x277D3F198] sharedInstance];
  v52 = [v53 commonTypeDict_RealFormat];
  v88[16] = v52;
  v87[17] = @"gpu_energy_nj";
  v51 = [MEMORY[0x277D3F198] sharedInstance];
  v50 = [v51 commonTypeDict_IntegerFormat];
  v88[17] = v50;
  v87[18] = @"gpu_energy_nj_billed_to_me";
  v49 = [MEMORY[0x277D3F198] sharedInstance];
  v48 = [v49 commonTypeDict_IntegerFormat];
  v88[18] = v48;
  v87[19] = @"gpu_energy_nj_billed_to_others";
  v47 = [MEMORY[0x277D3F198] sharedInstance];
  v46 = [v47 commonTypeDict_IntegerFormat];
  v88[19] = v46;
  v87[20] = @"cpu_time_billed_to_me";
  v45 = [MEMORY[0x277D3F198] sharedInstance];
  v44 = [v45 commonTypeDict_RealFormat];
  v88[20] = v44;
  v87[21] = @"cpu_time_billed_to_others";
  v43 = [MEMORY[0x277D3F198] sharedInstance];
  v42 = [v43 commonTypeDict_RealFormat];
  v88[21] = v42;
  v87[22] = @"timestampEnd";
  v41 = [MEMORY[0x277D3F198] sharedInstance];
  v40 = [v41 commonTypeDict_DateFormat];
  v88[22] = v40;
  v87[23] = @"energy";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_IntegerFormat];
  v88[23] = v38;
  v87[24] = @"energy_billed_to_me";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_IntegerFormat];
  v88[24] = v36;
  v87[25] = @"energy_billed_to_others";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_IntegerFormat];
  v88[25] = v34;
  v87[26] = @"cpu_time_eqos_0";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_RealFormat];
  v88[26] = v32;
  v87[27] = @"cpu_time_eqos_1";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_RealFormat];
  v88[27] = v30;
  v87[28] = @"cpu_time_eqos_2";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_RealFormat];
  v88[28] = v28;
  v87[29] = @"cpu_time_eqos_3";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_RealFormat];
  v88[29] = v26;
  v87[30] = @"cpu_time_eqos_4";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_RealFormat];
  v88[30] = v24;
  v87[31] = @"cpu_time_eqos_5";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_RealFormat];
  v88[31] = v22;
  v87[32] = @"cpu_time_eqos_6";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_RealFormat];
  v88[32] = v20;
  v87[33] = @"ane_time";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_RealFormat];
  v88[33] = v18;
  v87[34] = @"ane_energy_nj";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v88[34] = v16;
  v87[35] = @"cpu_ptime";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_RealFormat];
  v88[35] = v5;
  v87[36] = @"cpu_pinstructions";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v88[36] = v7;
  v87[37] = @"cpu_pcycles";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v88[37] = v9;
  v87[38] = @"cpu_cycles";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_IntegerFormat];
  v88[38] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:39];
  v92[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (PLCoalitionAgent)init
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = PLCoalitionAgent;
  v2 = [(PLAgent *)&v17 init];
  v3 = v2;
  if (v2)
  {
    driveCapacity = v2->_driveCapacity;
    v2->_driveCapacity = @"Unknown";

    v5 = [MEMORY[0x277CBEAA8] monotonicDate];
    v6 = [v5 dateByAddingTimeInterval:arc4random_uniform(0x15180u)];
    reportMemoryStatsAfterTime = v3->_reportMemoryStatsAfterTime;
    v3->_reportMemoryStatsAfterTime = v6;

    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v15 = v3->_reportMemoryStatsAfterTime;
      *buf = 138412290;
      v19 = v15;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Picked random time in next 24 hours for sending stats to CA: %@", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CBEAA8] monotonicDate];
    v10 = [v9 dateByAddingTimeInterval:arc4random_uniform(0xE10u)];
    reportHighFrequencyMemoryStatsAfterTime = v3->_reportHighFrequencyMemoryStatsAfterTime;
    v3->_reportHighFrequencyMemoryStatsAfterTime = v10;

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = v3->_reportHighFrequencyMemoryStatsAfterTime;
      *buf = 138412290;
      v19 = v16;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "Picked random time in next hour for sending high frequency stats to CA: %@", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)initOperatorDependancies
{
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__PLCoalitionAgent_initOperatorDependancies__block_invoke;
  v18[3] = &unk_2782597E8;
  v18[4] = self;
  v3 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v18];
  batteryLevelChanged = self->_batteryLevelChanged;
  self->_batteryLevelChanged = v3;

  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277D3F220] sharedInstance];
  [(PLCoalitionAgent *)self setStateTracker:v5];

  v6 = [(PLCoalitionAgent *)self stateTracker];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__PLCoalitionAgent_initOperatorDependancies__block_invoke_440;
  v15[3] = &unk_278259C18;
  objc_copyWeak(&v16, &location);
  [v6 registerForStates:1 withOperator:self withBlock:v15];

  [(PLCoalitionAgent *)self getStorageCapacity];
  v7 = objc_alloc(MEMORY[0x277D3F1F0]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__PLCoalitionAgent_initOperatorDependancies__block_invoke_2;
  v14[3] = &unk_2782597E8;
  v14[4] = self;
  v8 = [v7 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v14];
  thermalMonitorListener = self->_thermalMonitorListener;
  self->_thermalMonitorListener = v8;

  v10 = objc_alloc(MEMORY[0x277D3F278]);
  v11 = [(PLOperator *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__PLCoalitionAgent_initOperatorDependancies__block_invoke_467;
  v13[3] = &unk_278259810;
  v13[4] = self;
  v12 = [v10 initWithWorkQueue:v11 withRegistration:&unk_282C18A58 withBlock:v13];
  [(PLCoalitionAgent *)self setLogicalWritesResponder:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __44__PLCoalitionAgent_initOperatorDependancies__block_invoke_440(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleStateChangeForCoalitions];
}

id __44__PLCoalitionAgent_initOperatorDependancies__block_invoke_467(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "LogicalWritesPerApp query received with info: %@", &v14, 0xCu);
  }

  v8 = [*(a1 + 32) processPerAppLogicalWritesWithInfo:v6];
  v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v8];
  v10 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D3F180] doubleForKey:@"LastUpgradeSystemTimestamp"];
  v11 = [v10 numberWithDouble:?];
  [v9 setObject:v11 forKeyedSubscript:@"lastUpgradeTimestamp"];

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)handleStateChangeForCoalitions
{
  v3 = [(PLCoalitionAgent *)self lastDate];
  v4 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = fabs(v5);

  if (v6 <= 300.0)
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "Frequent Plugged / Unplugged events, not logging to Coalitions", v8, 2u);
    }
  }

  else
  {

    [(PLCoalitionAgent *)self logEventIntervalCoalitionIntervalWithHFLFlag:0];
  }
}

- (void)getStorageCapacity
{
  v3 = [(PLCoalitionAgent *)self readPropertyFromRegistry:@"Device Characteristics"];
  if (v3 || (v3 = [(PLCoalitionAgent *)self readPropertyFromRegistry:@"Controller Characteristics"]) != 0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", (v3 / 1000000000.0)];
    [(PLCoalitionAgent *)self setDriveCapacity:v4];
  }

  else
  {

    [(PLCoalitionAgent *)self setDriveCapacity:@"Unknown"];
  }
}

- (unint64_t)readPropertyFromRegistry:(__CFString *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  existing = 0;
  valuePtr = 0;
  v4 = *MEMORY[0x277CD28A0];
  v5 = IOServiceMatching("IOMedia");
  MatchingServices = IOServiceGetMatchingServices(v4, v5, &existing);
  if (MatchingServices)
  {
    v7 = MatchingServices;
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v26) = v7;
      _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, "IOServiceGetMatchingServices kernResult %x\n", buf, 8u);
    }

    result = 0;
    goto LABEL_23;
  }

  v10 = IOIteratorNext(existing);
  if (v10)
  {
    v11 = v10;
    v12 = *MEMORY[0x277CBECE8];
    do
    {
      v13 = IORegistryEntrySearchCFProperty(v11, "IOService", a3, v12, 3u);
      IOObjectRelease(v11);
      if (!v13)
      {
        break;
      }

      v14 = CFGetTypeID(v13);
      TypeID = CFDictionaryGetTypeID();
      ValueAtIndex = v13;
      if (v14 != TypeID)
      {
        v17 = CFGetTypeID(v13);
        if (v17 != CFArrayGetTypeID())
        {
          v21 = PLLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v26 = a3;
            v27 = 2112;
            v28 = v13;
            _os_log_error_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_ERROR, "Unknown datatype for property: %@ data : %@", buf, 0x16u);
          }

          goto LABEL_17;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
      }

      Value = CFDictionaryGetValue(ValueAtIndex, @"capacity");
      if (Value)
      {
        v19 = Value;
        v20 = CFGetTypeID(Value);
        if (v20 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v19, kCFNumberSInt64Type, &valuePtr);
          CFRelease(v13);
          break;
        }
      }

      CFRelease(v13);
LABEL_17:
      v11 = IOIteratorNext(existing);
    }

    while (v11);
  }

  if (existing)
  {
    IOObjectRelease(existing);
  }

  result = valuePtr;
LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_503(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) isDaemonXPCService];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 processName];
    if (v5)
    {
      v6 = [*(a1 + 32) processName];
      [v2 setObject:v6 forKeyedSubscript:@"daemon_procname"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"daemon_procname"];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "jetsam_priority")}];
    [v2 setObject:v9 forKeyedSubscript:@"daemon_jetsam_priority"];

    v10 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F258] secondsFromMachTime:{objc_msgSend(*(a1 + 32), "timeAtPriorityMATU")}];
    v11 = [v10 numberWithDouble:?];
    [v2 setObject:v11 forKeyedSubscript:@"daemon_time_at_jetsam_priority"];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "process_active")}];
    [v2 setObject:v12 forKeyedSubscript:@"daemon_active"];
    v36 = @"daemon_memory_limit_increased";
    v37 = @"daemon_footprint_over_limit";
    v34 = @"daemon_memory_limit_hard";
    v35 = @"daemon_memory_limit_active";
    v13 = @"daemon_memory_limit_mb";
    v14 = @"daemon_interval_peak_neural_footprint_kb";
    v15 = @"daemon_neural_footprint_kb";
    v16 = @"daemon_interval_peak_footprint";
    v17 = @"daemon_peak_footprint";
    v18 = @"daemon_footprint";
  }

  else
  {
    v7 = [v4 bundleId];
    if (v7)
    {
      v8 = [*(a1 + 32) bundleId];
      [v2 setObject:v8 forKeyedSubscript:@"app_bundleid"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"app_bundleid"];
    }

    v19 = [*(a1 + 32) bundleVersion];
    if (v19)
    {
      v20 = [*(a1 + 32) bundleVersion];
      [v2 setObject:v20 forKeyedSubscript:@"app_bundleversion"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"app_bundleversion"];
    }

    v21 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "jetsam_priority")}];
    [v2 setObject:v21 forKeyedSubscript:@"app_jetsam_priority"];

    v22 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F258] secondsFromMachTime:{objc_msgSend(*(a1 + 32), "timeAtPriorityMATU")}];
    v12 = [v22 numberWithDouble:?];
    [v2 setObject:v12 forKeyedSubscript:@"app_time_at_jetsam_priority"];
    v36 = @"app_memory_limit_increased";
    v37 = @"app_footprint_over_limit";
    v34 = @"app_memory_limit_hard";
    v35 = @"app_memory_limit_active";
    v13 = @"app_memory_limit_mb";
    v14 = @"app_interval_peak_neural_footprint_kb";
    v15 = @"app_neural_footprint_kb";
    v16 = @"app_interval_peak_footprint";
    v17 = @"app_peak_footprint";
    v18 = @"app_footprint";
  }

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "phys_footprint_size") >> 10}];
  [v2 setObject:v23 forKeyedSubscript:v18];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "peak_phys_footprint") >> 10}];
  [v2 setObject:v24 forKeyedSubscript:v17];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "interval_peak_phys_footprint") >> 10}];
  [v2 setObject:v25 forKeyedSubscript:v16];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "neural_footprint") >> 10}];
  [v2 setObject:v26 forKeyedSubscript:v15];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "interval_peak_neural_footprint") >> 10}];
  [v2 setObject:v27 forKeyedSubscript:v14];

  v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "memoryLimitMB")}];
  [v2 setObject:v28 forKeyedSubscript:v13];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isLimitHard")}];
  [v2 setObject:v29 forKeyedSubscript:v34];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isActiveLimit")}];
  [v2 setObject:v30 forKeyedSubscript:v35];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isLimitIncreased")}];
  [v2 setObject:v31 forKeyedSubscript:v36];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  [v2 setObject:v32 forKeyedSubscript:v37];

  return v2;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D3F258];
  v3 = [*(a1 + 32) processLaunchdName];
  v4 = [v2 intervalPeakCADictionaryForLaunchdName:v3 intervalMaxKB:{objc_msgSend(*(a1 + 32), "interval_peak_phys_footprint") >> 10}];

  return v4;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_3(uint64_t a1)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15[0] = @"launchd_name";
  v2 = [*(a1 + 32) processLaunchdName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v16[0] = v4;
  v15[1] = @"procname";
  v5 = [*(a1 + 32) processName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"UNKNOWN";
  }

  v16[1] = v7;
  v15[2] = @"bundleid";
  v8 = [*(a1 + 32) bundleId];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"UNKNOWN";
  }

  v16[2] = v10;
  v15[3] = @"is_daemon_or_xpc_service";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isDaemonXPCService")}];
  v16[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) isDaemonXPCService];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 processName];
    if (v5)
    {
      v6 = [*(a1 + 32) processName];
      [v2 setObject:v6 forKeyedSubscript:@"daemon_procname"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"daemon_procname"];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "jetsam_priority")}];
    [v2 setObject:v9 forKeyedSubscript:@"daemon_jetsam_priority"];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "process_active")}];
    [v2 setObject:v10 forKeyedSubscript:@"daemon_active"];
    v11 = @"daemon_footprint_over_limit";
    v12 = @"daemon_footprint_kb";
  }

  else
  {
    v7 = [v4 bundleId];
    if (v7)
    {
      v8 = [*(a1 + 32) bundleId];
      [v2 setObject:v8 forKeyedSubscript:@"app_bundleid"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"app_bundleid"];
    }

    v13 = [*(a1 + 32) bundleVersion];
    if (v13)
    {
      v14 = [*(a1 + 32) bundleVersion];
      [v2 setObject:v14 forKeyedSubscript:@"app_bundleversion"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"app_bundleversion"];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "jetsam_priority")}];
    [v2 setObject:v10 forKeyedSubscript:@"app_jetsam_priority"];
    v11 = @"app_footprint_over_limit";
    v12 = @"app_footprint_kb";
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "phys_footprint_size") >> 10}];
  [v2 setObject:v15 forKeyedSubscript:v12];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  [v2 setObject:v16 forKeyedSubscript:v11];

  return v2;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_5(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) isDaemonXPCService];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 processName];
    if (v5)
    {
      v6 = [*(a1 + 32) processName];
      [v2 setObject:v6 forKeyedSubscript:@"daemon_procname"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"daemon_procname"];
    }

    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "jetsam_priority")}];
    [v2 setObject:v9 forKeyedSubscript:@"daemon_jetsam_priority"];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "process_active")}];
    [v2 setObject:v10 forKeyedSubscript:@"daemon_active"];
    v11 = @"daemon_neural_footprint_kb";
  }

  else
  {
    v7 = [v4 bundleId];
    if (v7)
    {
      v8 = [*(a1 + 32) bundleId];
      [v2 setObject:v8 forKeyedSubscript:@"app_bundleid"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"app_bundleid"];
    }

    v12 = [*(a1 + 32) bundleVersion];
    if (v12)
    {
      v13 = [*(a1 + 32) bundleVersion];
      [v2 setObject:v13 forKeyedSubscript:@"app_bundleversion"];
    }

    else
    {
      [v2 setObject:@"UNKNOWN" forKeyedSubscript:@"app_bundleversion"];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 32), "jetsam_priority")}];
    [v2 setObject:v10 forKeyedSubscript:@"app_jetsam_priority"];
    v11 = @"app_neural_footprint_kb";
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "neural_footprint") >> 10}];
  [v2 setObject:v14 forKeyedSubscript:v11];

  return v2;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_6(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 unsignedLongValue];

  v10[0] = *(a1 + 40);
  v9[0] = @"at_priority";
  v9[1] = @"footprint_sum_kb";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3 >> 10];
  v10[1] = v4;
  v9[2] = @"system_uptime_hours";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_7(uint64_t a1)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 unsignedLongValue];

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"priority%@", *(a1 + 40), @"memory_type"];
  v11[0] = v4;
  v10[1] = @"memory_kb";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3 >> 10];
  v11[1] = v5;
  v10[2] = @"system_uptime_hours";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_8(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 unsignedLongValue];

  v10[0] = *(a1 + 40);
  v9[0] = @"at_or_above_priority";
  v9[1] = @"footprint_sum_kb";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3 >> 10];
  v10[1] = v4;
  v9[2] = @"system_uptime_hours";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_9(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 unsignedLongValue];

  v10[0] = *(a1 + 40);
  v9[0] = @"at_or_below_priority";
  v9[1] = @"footprint_sum_kb";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3 >> 10];
  v10[1] = v4;
  v9[2] = @"system_uptime_hours";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_10(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 32)];
  [v1 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"footprints_report"];

  return v1;
}

id __87__PLCoalitionAgent_logToCAProcessMemory_andAccumulatedMemory_dailyReport_systemUptime___block_invoke_11(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v10[0] = v3;
  v9[0] = @"memory_type";
  v9[1] = @"memory_kb";
  v4 = [v2 objectForKeyedSubscript:?];
  v10[1] = v4;
  v9[2] = @"system_uptime_hours";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)logCoalitionObjectMemory:(id)a3
{
  v154 = *MEMORY[0x277D85DE8];
  v95 = a3;
  v4 = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [(NSDate *)self->_reportMemoryStatsAfterTime compare:v4];
  v94 = self;
  v6 = [(NSDate *)self->_reportHighFrequencyMemoryStatsAfterTime compare:v4];
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v82 = @"Not";
    reportMemoryStatsAfterTime = self->_reportMemoryStatsAfterTime;
    *buf = 138412802;
    if (v5 == NSOrderedAscending)
    {
      v82 = &stru_282B650A0;
    }

    *&buf[4] = v82;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    *&buf[22] = 2112;
    *&buf[24] = reportMemoryStatsAfterTime;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Should %@ Log to CoreAnalytics (current_time=%@ is greater than report_stats_time=%@)", buf, 0x20u);
  }

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v84 = @"Not";
    reportHighFrequencyMemoryStatsAfterTime = self->_reportHighFrequencyMemoryStatsAfterTime;
    *buf = 138412802;
    if (v6 == NSOrderedAscending)
    {
      v84 = &stru_282B650A0;
    }

    *&buf[4] = v84;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    *&buf[22] = 2112;
    *&buf[24] = reportHighFrequencyMemoryStatsAfterTime;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Should %@ Log to High Frequency CoreAnalytics (current_time=%@ is greater than high_freq_report_stats_time=%@)", buf, 0x20u);
  }

  if (([MEMORY[0x277D3F180] isTaskFullEPLMode] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "hasGenerativeModelSystems") & 1) != 0 || (v5 != NSOrderedAscending ? (v9 = v6 == NSOrderedAscending) : (v9 = 1), v9))
  {
    v10 = proc_listpids(1u, 0, 0, 0);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = v10;
      v12 = v10;
      v13 = malloc_type_malloc(v10, 0x100004052888210uLL);
      if (v13)
      {
        v14 = v13;
        v90 = v6;
        v88 = v4;
        memset(v13, 255, v12);
        v98 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v92 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v86 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        v91 = objc_alloc_init(OverallMemoryUsage);
        v89 = v14;
        v15 = proc_listpids(1u, 0, v14, v11);
        if (v15 >= 4)
        {
          v50 = v14;
          v52 = v5 == NSOrderedAscending || v6 == NSOrderedAscending;
          if (v15 >> 2 <= 1)
          {
            v53 = 1;
          }

          else
          {
            v53 = v15 >> 2;
          }

          do
          {
            v55 = *v50++;
            v54 = v55;
            if (v55 >= 1)
            {
              memset(buffer, 0, sizeof(buffer));
              if (proc_pidinfo(v54, 18, 0, buffer, 192) == 192 && DWORD1(buffer[0]) != 5)
              {
                v106 = 0;
                memset(v105, 0, sizeof(v105));
                if (proc_pidinfo(v54, 20, 1uLL, v105, 40) == 40)
                {
                  v56 = *&v105[0];
                  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v105[0]];
                  v58 = [v98 objectForKeyedSubscript:v57];

                  if (!v58)
                  {
                    v58 = objc_alloc_init(CoalitionMemoryUsage);
                    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v56];
                    [v98 setObject:v58 forKeyedSubscript:v59];
                  }

                  v104 = 0;
                  if (v52)
                  {
                    v104 = [MEMORY[0x277D3F258] getProcessMemoryLimit:v54];
                  }

                  v152 = 0;
                  v151 = 0u;
                  v150 = 0u;
                  v149 = 0u;
                  v148 = 0u;
                  v146 = 0u;
                  v147 = 0u;
                  v144 = 0u;
                  v145 = 0u;
                  v142 = 0u;
                  v143 = 0u;
                  v140 = 0u;
                  v141 = 0u;
                  v138 = 0u;
                  v139 = 0u;
                  v136 = 0u;
                  v137 = 0u;
                  *v134 = 0u;
                  v135 = 0u;
                  v60 = proc_pid_rusage(v54, 4, v134);
                  if (v60)
                  {
                    v61 = v60;
                    v62 = PLLogCommon();
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 67109376;
                      *&buf[4] = v61;
                      *&buf[8] = 1024;
                      *&buf[10] = v54;
                      _os_log_error_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_ERROR, "rusage failed with %d for pid %d", buf, 0xEu);
                    }
                  }

                  else
                  {
                    if (v5 == NSOrderedAscending)
                    {
                      service_name_from_pid = xpc_get_service_name_from_pid();
                      if (service_name_from_pid)
                      {
                        v64 = service_name_from_pid;
                        v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:service_name_from_pid];
                        free(v64);
                      }

                      else
                      {
                        v62 = 0;
                      }

                      v65 = proc_reset_footprint_interval();
                      if (v65)
                      {
                        v66 = v65;
                        v67 = PLLogCommon();
                        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 67109376;
                          *&buf[4] = v66;
                          *&buf[8] = 1024;
                          *&buf[10] = v54;
                          _os_log_debug_impl(&dword_21A4C6000, v67, OS_LOG_TYPE_DEBUG, "proc_reset_footprint_interval failed with %d for pid %d", buf, 0xEu);
                        }
                      }
                    }

                    else
                    {
                      v62 = 0;
                    }

                    v68 = [(CoalitionMemoryUsage *)v58 wired_size];
                    [(CoalitionMemoryUsage *)v58 setWired_size:*(&v137 + 1) + v68];
                    v69 = [(CoalitionMemoryUsage *)v58 phys_footprint_size];
                    [(CoalitionMemoryUsage *)v58 setPhys_footprint_size:*(&v138 + 1) + v69];
                    [(CoalitionMemoryUsage *)v58 setProcess_phys_footprint_size:*(&v138 + 1)];
                    [(CoalitionMemoryUsage *)v58 setProcess_peak_phys_footprint:v149];
                    [(CoalitionMemoryUsage *)v58 setProcess_count:[(CoalitionMemoryUsage *)v58 process_count]+ 1];
                    *tn = 0;
                    v133 = 0;
                    memset(v132, 0, sizeof(v132));
                    v130 = 0u;
                    v131 = 0u;
                    v128 = 0u;
                    v129 = 0u;
                    v126 = 0u;
                    v127 = 0u;
                    v124 = 0u;
                    v125 = 0u;
                    v122 = 0u;
                    v123 = 0u;
                    v120 = 0u;
                    v121 = 0u;
                    v118 = 0u;
                    v119 = 0u;
                    v116 = 0u;
                    v117 = 0u;
                    v114 = 0u;
                    v115 = 0u;
                    v113 = 0u;
                    memset(buf, 0, sizeof(buf));
                    v70 = task_name_for_pid(*MEMORY[0x277D85F48], v54, &tn[1]);
                    if (v70)
                    {
                      v71 = v70;
                      v72 = PLLogCommon();
                      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                      {
                        *v110 = 67109376;
                        *&v110[4] = v71;
                        LOWORD(v111) = 1024;
                        *(&v111 + 2) = v54;
                        _os_log_error_impl(&dword_21A4C6000, v72, OS_LOG_TYPE_ERROR, "task_name_for_pid failed with %d for pid %d", v110, 0xEu);
                      }
                    }

                    else
                    {
                      tn[0] = 93;
                      v73 = task_info(tn[1], 0x17u, buf, tn);
                      if (v73)
                      {
                        v74 = v73;
                        v75 = PLLogCommon();
                        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                        {
                          *v110 = 67109376;
                          *&v110[4] = v74;
                          LOWORD(v111) = 1024;
                          *(&v111 + 2) = v54;
                          _os_log_error_impl(&dword_21A4C6000, v75, OS_LOG_TYPE_ERROR, "task_info failed with %d for pid %d", v110, 0xEu);
                        }
                      }

                      else
                      {
                        v76 = [(CoalitionMemoryUsage *)v58 purgeable_size];
                        [(CoalitionMemoryUsage *)v58 setPurgeable_size:*(&v117 + 1) + v76];
                        v77 = [(CoalitionMemoryUsage *)v58 compressed_size];
                        [(CoalitionMemoryUsage *)v58 setCompressed_size:*(&v118 + 1) + v77];
                        v78 = [(CoalitionMemoryUsage *)v58 compressed_lifetime];
                        [(CoalitionMemoryUsage *)v58 setCompressed_lifetime:*(&v119 + 1) + v78];
                        [(CoalitionMemoryUsage *)v58 setLedger_swapins:*(v132 + 12) + [(CoalitionMemoryUsage *)v58 ledger_swapins]];
                      }

                      mach_port_deallocate(*MEMORY[0x277D85F48], tn[1]);
                    }

                    *v110 = 0;
                    v111 = 0;
                    *v110 = [MEMORY[0x277D3F258] getJetsamPriority:v54];
                    v111 = v79;
                    [(CoalitionMemoryUsage *)v58 setProcess_jetsam_priority:*v110];
                    if (v5 == NSOrderedAscending || v90 == NSOrderedAscending || !*v110)
                    {
                      v80 = [MEMORY[0x277D3F258] cleanLaunchdName:v62];
                      v81 = [(PLCoalitionAgent *)v94 processMemoryUsageWithPid:v54 withLaunchdName:v80 withRusage:v134 withJetsamInfo:v110 withLimitInfo:&v104];

                      [v92 addObject:v81];
                      -[OverallMemoryUsage addProcessFootprint:withPriority:](v91, "addProcessFootprint:withPriority:", [v81 phys_footprint_size], objc_msgSend(v81, "jetsam_priority"));
                    }
                  }
                }
              }
            }

            --v53;
          }

          while (v53);
        }

        v87 = v5;
        v16 = objc_opt_new();
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        obj = [v98 allKeys];
        v17 = [obj countByEnumeratingWithState:&v99 objects:v109 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v100;
          v93 = *MEMORY[0x277D3F5E8];
          do
          {
            v20 = 0;
            v96 = v18;
            do
            {
              if (*v100 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v99 + 1) + 8 * v20);
              v22 = [v98 objectForKeyedSubscript:v21];
              if ([v22 phys_footprint_size] >= 0xE4E1C0)
              {
                v23 = v16;
                v24 = [v95 objectForKeyedSubscript:v21];
                v25 = objc_alloc(MEMORY[0x277D3F190]);
                v26 = [(PLOperator *)PLCoalitionAgent entryKeyForType:v93 andName:@"CoalitionMemory"];
                v27 = [(PLCoalitionAgent *)v94 currentDate];
                v28 = [v25 initWithEntryKey:v26 withDate:v27];

                v29 = [v24 bundleID];
                LODWORD(v26) = [v29 isEqualToString:&stru_282B650A0];

                if (v26)
                {
                  v30 = [v24 launchdName];
                  if (v30)
                  {
                    v31 = [v24 launchdName];
                    [v28 setObject:v31 forKeyedSubscript:@"LaunchdName"];

LABEL_25:
                    [v28 setObject:v21 forKeyedSubscript:@"LaunchdCoalitionId"];
                    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v22, "wired_size")}];
                    [v28 setObject:v34 forKeyedSubscript:@"memory_wired_size"];

                    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v22, "purgeable_size")}];
                    [v28 setObject:v35 forKeyedSubscript:@"memory_purgeable_size"];

                    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v22, "phys_footprint_size")}];
                    [v28 setObject:v36 forKeyedSubscript:@"memory_anonmem_size"];

                    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v22, "compressed_size")}];
                    [v28 setObject:v37 forKeyedSubscript:@"memory_compressed_size"];

                    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v22, "process_count")}];
                    [v28 setObject:v38 forKeyedSubscript:@"process_count"];

                    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v22, "process_phys_footprint_size")}];
                    [v28 setObject:v39 forKeyedSubscript:@"process_phys_footprint"];

                    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v22, "process_peak_phys_footprint")}];
                    [v28 setObject:v40 forKeyedSubscript:@"peak_phys_footprint"];

                    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v22, "compressed_lifetime")}];
                    [v28 setObject:v41 forKeyedSubscript:@"CompressedLifetime"];

                    v42 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v22, "ledger_swapins")}];
                    [v28 setObject:v42 forKeyedSubscript:@"Swapins"];

                    v16 = v23;
                    [v23 addObject:v28];

                    v18 = v96;
                    goto LABEL_26;
                  }

                  v32 = v28;
                  v33 = @"Unnamed_launchdName";
                }

                else
                {
                  v30 = [v24 bundleID];
                  v32 = v28;
                  v33 = v30;
                }

                [v32 setObject:v33 forKeyedSubscript:@"LaunchdName"];
                goto LABEL_25;
              }

LABEL_26:

              ++v20;
            }

            while (v18 != v20);
            v18 = [obj countByEnumeratingWithState:&v99 objects:v109 count:16];
          }

          while (v18);
        }

        v4 = v88;
        if (v87 == NSOrderedAscending || v90 == NSOrderedAscending)
        {
          if (v87 == NSOrderedAscending)
          {
            v43 = [MEMORY[0x277CBEAA8] distantFuture];
            v44 = v94->_reportMemoryStatsAfterTime;
            v94->_reportMemoryStatsAfterTime = v43;
          }

          v45 = [v88 dateByAddingTimeInterval:arc4random_uniform(0xE10u) + 1800.0];
          v46 = v94->_reportHighFrequencyMemoryStatsAfterTime;
          v94->_reportHighFrequencyMemoryStatsAfterTime = v45;

          [(PLCoalitionAgent *)v94 logToCAProcessMemory:v92 andAccumulatedMemory:v91 dailyReport:v87 == NSOrderedAscending systemUptime:v86];
        }

        v47 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CoalitionMemory"];
        if ([v16 count])
        {
          v107 = v47;
          v108 = v16;
          v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
          [(PLOperator *)v94 logEntries:v48 withGroupID:v47];
        }

        free(v89);
      }
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldLogCoalitionObject:(id)a3 withEndObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_6;
  }

  v8 = [v6 coalStruct];
  v9 = [v8 pointerValue];

  v10 = [v5 coalStruct];
  v11 = [v10 pointerValue];

  [MEMORY[0x277D3F258] secondsFromMachTime:v9[3] - v11[3]];
  if (v12 > 1.0)
  {
    goto LABEL_6;
  }

  [MEMORY[0x277D3F258] secondsFromMachTime:v9[9] - v11[9]];
  if (v13 <= 1.0 && ([MEMORY[0x277D3F258] secondsFromMachTime:v9[10] - v11[10]], v14 <= 1.0) && (objc_msgSend(MEMORY[0x277D3F258], "secondsFromMachTime:", v9[8] - v11[8]), v15 <= 1.0))
  {
    [MEMORY[0x277D3F258] secondsFromMachTime:v9[38] - v11[38]];
    v16 = v18 > 1.0;
  }

  else
  {
LABEL_6:
    v16 = 1;
  }

  return v16;
}

- (void)logToAggd:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [v4 objectForKeyedSubscript:@"BundleId"];
  v7 = v6;
  if (v6 && ![v6 isEqualToString:&stru_282B650A0])
  {
    v8 = [PLApplicationAgent appVersionForBundle:v7];
    if ([v8 length])
    {
      [v5 setObject:v7 forKeyedSubscript:@"process_name"];
      [v5 setObject:v8 forKeyedSubscript:@"version"];
      v9 = [v7 stringByAppendingFormat:@".ver.%@", v8];

      v7 = v9;
    }
  }

  else
  {
    [v4 objectForKeyedSubscript:@"LaunchdName"];
    v7 = v8 = v7;
  }

  if (![v5 count])
  {
    [v5 setObject:v7 forKeyedSubscript:@"process_name"];
    [v5 setObject:@"unknown" forKeyedSubscript:@"version"];
  }

  v10 = [(PLCoalitionAgent *)self driveCapacity];
  v38 = v5;
  [v5 setObject:v10 forKeyedSubscript:@"capacity"];

  v11 = [v4 objectForKeyedSubscript:@"bytesread"];
  v37 = [v11 unsignedLongLongValue];

  v12 = [v4 objectForKeyedSubscript:@"byteswritten"];
  v13 = [v12 unsignedLongLongValue];

  v14 = [v4 objectForKeyedSubscript:@"fs_metadata_writes"];
  v15 = [v14 unsignedLongLongValue];

  v16 = [v4 objectForKeyedSubscript:@"pm_writes"];
  v17 = [v16 unsignedLongLongValue];

  v18 = [v4 objectForKeyedSubscript:@"logical_deferred_writes"];
  v19 = [v18 unsignedLongLongValue];
  v20 = [v4 objectForKeyedSubscript:@"logical_immediate_writes"];
  v21 = [v20 unsignedLongLongValue] + v19;
  v22 = [v4 objectForKeyedSubscript:@"logical_metadata_writes"];
  v23 = v21 + [v22 unsignedLongLongValue];
  v24 = [v4 objectForKeyedSubscript:@"logical_invalidated_writes"];
  v25 = v23 - [v24 unsignedLongLongValue];

  MEMORY[0x21CEDCD40]([@"com.apple.power.coalition.logical_bytes_written" stringByAppendingFormat:@".%@", v7], v25);
  MEMORY[0x21CEDCD40]([@"com.apple.power.coalition.bytesread" stringByAppendingFormat:@".%@", v7], v37);
  MEMORY[0x21CEDCD40]([@"com.apple.power.coalition.byteswritten" stringByAppendingFormat:@".%@", v7], v13);
  if (v25 > 0x4C4B40 || v13 > 0x4C4B40 || v15 > 0x4C4B40 || v17 > 0x4C4B40 || v37 >= 0x1312D01)
  {
    v40 = v38;
    AnalyticsSendEventLazy();
  }

  v26 = [v4 objectForKeyedSubscript:@"cpu_time"];
  v27 = [v26 unsignedLongLongValue];

  v28 = [v4 objectForKeyedSubscript:@"platform_idle_wakeups"];
  [v28 unsignedLongLongValue];

  v29 = [v4 objectForKeyedSubscript:@"interrupt_wakeups"];
  [v29 unsignedLongLongValue];

  v30 = [v4 objectForKeyedSubscript:@"bytesread"];
  [v30 unsignedLongLongValue];

  v31 = [v4 objectForKeyedSubscript:@"logical_immediate_writes"];
  [v31 unsignedLongLongValue];

  v32 = [v4 objectForKeyedSubscript:@"logical_deferred_writes"];
  [v32 unsignedLongLongValue];

  v33 = [v4 objectForKeyedSubscript:@"logical_metadata_writes"];
  [v33 unsignedLongLongValue];

  v34 = [v4 objectForKeyedSubscript:@"logical_invalidated_writes"];
  [v34 unsignedLongLongValue];

  v35 = [v4 objectForKeyedSubscript:@"gpu_time"];
  v36 = [v35 unsignedLongLongValue];

  if (v25 > 0x4C4B40 || v27 > 5 || v36)
  {
    v39 = v7;
    AnalyticsSendEventLazy();
  }
}

id __30__PLCoalitionAgent_logToAggd___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a1[4]];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[5]];
  [v2 setObject:v3 forKeyedSubscript:@"bytes_read"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  [v2 setObject:v4 forKeyedSubscript:@"bytes_written"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[7]];
  [v2 setObject:v5 forKeyedSubscript:@"logical_writes"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[8]];
  [v2 setObject:v6 forKeyedSubscript:@"fs_metadata_writes"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[9]];
  [v2 setObject:v7 forKeyedSubscript:@"pm_writes"];

  return v2;
}

id __30__PLCoalitionAgent_logToAggd___block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:a1[4] forKeyedSubscript:@"label"];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[5]];
  [v2 setObject:v3 forKeyedSubscript:@"cpu_time"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  [v2 setObject:v4 forKeyedSubscript:@"wakeups"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[7]];
  [v2 setObject:v5 forKeyedSubscript:@"interrupts"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[8]];
  [v2 setObject:v6 forKeyedSubscript:@"disk_bytes_read"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[9]];
  [v2 setObject:v7 forKeyedSubscript:@"bytes_written_immediate"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[10]];
  [v2 setObject:v8 forKeyedSubscript:@"bytes_written_deferred"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[11]];
  [v2 setObject:v9 forKeyedSubscript:@"bytes_written_meta"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[12]];
  [v2 setObject:v10 forKeyedSubscript:@"bytes_written_inv"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[13]];
  [v2 setObject:v11 forKeyedSubscript:@"gpu_time"];

  return v2;
}

- (id)buildPLEntryDiffWithStartObject:(id)a3 withEndObject:(id)a4 withStartDate:(id)a5 withEndDate:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc(MEMORY[0x277D3F190]);
  v14 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CoalitionInterval"];
  v15 = [v13 initWithEntryKey:v14 withDate:v11];

  v126 = v12;
  [v15 setObject:v12 forKeyedSubscript:@"timestampEnd"];
  v16 = [v10 launchdName];
  [v15 setObject:v16 forKeyedSubscript:@"LaunchdName"];

  v17 = [v10 bundleID];
  [v15 setObject:v17 forKeyedSubscript:@"BundleId"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "coalitionID")}];
  [v15 setObject:v18 forKeyedSubscript:@"LaunchdCoalitionId"];

  v128 = v10;
  v19 = [v10 coalStruct];
  v20 = [v19 pointerValue];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v20];
  [v15 setObject:v21 forKeyedSubscript:@"tasks_started"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[1]];
  [v15 setObject:v22 forKeyedSubscript:@"tasks_exited"];

  if (v9)
  {
    v125 = v9;
    v23 = [v9 coalStruct];
    v24 = [v23 pointerValue];

    v25 = MEMORY[0x277CCABB0];
    v26 = v20[2];
    v27 = v24[2];
    if (v26 < v27)
    {
      v27 = 0;
    }

    [MEMORY[0x277D3F258] secondsFromMachTime:v26 - v27];
    v28 = [v25 numberWithDouble:?];
    [v15 setObject:v28 forKeyedSubscript:@"time_nonempty"];

    v29 = MEMORY[0x277CCABB0];
    v30 = v20[3];
    v31 = v24[3];
    if (v30 < v31)
    {
      v31 = 0;
    }

    [MEMORY[0x277D3F258] secondsFromMachTime:v30 - v31];
    v32 = [v29 numberWithDouble:?];
    [v15 setObject:v32 forKeyedSubscript:@"cpu_time"];

    v33 = v20[31];
    v34 = v24[31];
    if (v33 < v34)
    {
      v34 = 0;
    }

    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v33 - v34];
    [v15 setObject:v35 forKeyedSubscript:@"cpu_instructions"];

    v36 = v20[32];
    v37 = v24[32];
    if (v36 < v37)
    {
      v37 = 0;
    }

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36 - v37];
    [v15 setObject:v38 forKeyedSubscript:@"cpu_cycles"];

    v39 = MEMORY[0x277CCABB0];
    v40 = v20[8];
    v41 = v24[8];
    if (v40 < v41)
    {
      v41 = 0;
    }

    [MEMORY[0x277D3F258] secondsFromMachTime:v40 - v41];
    v42 = [v39 numberWithDouble:?];
    [v15 setObject:v42 forKeyedSubscript:@"gpu_time"];

    v43 = v20[41];
    v44 = v24[41];
    if (v43 < v44)
    {
      v44 = 0;
    }

    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v43 - v44];
    [v15 setObject:v45 forKeyedSubscript:@"gpu_energy_nj"];

    v46 = v20[42];
    v47 = v24[42];
    if (v46 < v47)
    {
      v47 = 0;
    }

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v46 - v47];
    [v15 setObject:v48 forKeyedSubscript:@"gpu_energy_nj_billed_to_me"];

    v49 = v20[43];
    v50 = v24[43];
    if (v49 < v50)
    {
      v50 = 0;
    }

    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v49 - v50];
    [v15 setObject:v51 forKeyedSubscript:@"gpu_energy_nj_billed_to_others"];

    v52 = MEMORY[0x277CCABB0];
    v53 = v20[9];
    v54 = v24[9];
    if (v53 < v54)
    {
      v54 = 0;
    }

    [MEMORY[0x277D3F258] secondsFromMachTime:v53 - v54];
    v55 = [v52 numberWithDouble:?];
    [v15 setObject:v55 forKeyedSubscript:@"cpu_time_billed_to_me"];

    v56 = MEMORY[0x277CCABB0];
    v57 = v20[10];
    v58 = v24[10];
    if (v57 < v58)
    {
      v58 = 0;
    }

    [MEMORY[0x277D3F258] secondsFromMachTime:v57 - v58];
    v59 = [v56 numberWithDouble:?];
    [v15 setObject:v59 forKeyedSubscript:@"cpu_time_billed_to_others"];

    v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[39] - v24[39]];
    [v15 setObject:v60 forKeyedSubscript:@"ane_energy_nj"];

    v61 = MEMORY[0x277CCABB0];
    v62 = v20[38];
    v63 = v24[38];
    if (v62 < v63)
    {
      v63 = 0;
    }

    [MEMORY[0x277D3F258] secondsFromMachTime:v62 - v63];
    v64 = [v61 numberWithDouble:?];
    [v15 setObject:v64 forKeyedSubscript:@"ane_time"];

    v65 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[4] - v24[4]];
    [v15 setObject:v65 forKeyedSubscript:@"interrupt_wakeups"];

    v66 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[5] - v24[5]];
    [v15 setObject:v66 forKeyedSubscript:@"platform_idle_wakeups"];

    v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[6] - v24[6]];
    [v15 setObject:v67 forKeyedSubscript:@"bytesread"];

    v68 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[7] - v24[7]];
    [v15 setObject:v68 forKeyedSubscript:@"byteswritten"];

    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[12] - v24[12]];
    [v15 setObject:v69 forKeyedSubscript:@"logical_immediate_writes"];

    v70 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[13] - v24[13]];
    [v15 setObject:v70 forKeyedSubscript:@"logical_deferred_writes"];

    v71 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[14] - v24[14]];
    [v15 setObject:v71 forKeyedSubscript:@"logical_invalidated_writes"];

    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[15] - v24[15]];
    [v15 setObject:v72 forKeyedSubscript:@"logical_metadata_writes"];

    v73 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[33] - v24[33]];
    [v15 setObject:v73 forKeyedSubscript:@"fs_metadata_writes"];

    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[34] - v24[34]];
    [v15 setObject:v74 forKeyedSubscript:@"pm_writes"];

    v75 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[11] - v24[11]];
    [v15 setObject:v75 forKeyedSubscript:@"energy"];

    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[20] - v24[20]];
    [v15 setObject:v76 forKeyedSubscript:@"energy_billed_to_me"];

    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[21] - v24[21]];
    [v15 setObject:v77 forKeyedSubscript:@"energy_billed_to_others"];

    for (i = 0; i != 7; ++i)
    {
      v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"cpu_time_eqos_%d", i];
      v80 = MEMORY[0x277CCABB0];
      [MEMORY[0x277D3F258] secondsFromMachTime:v20[i + 24] - v24[i + 24]];
      v81 = [v80 numberWithDouble:?];
      [v15 setObject:v81 forKeyedSubscript:v79];
    }

    v82 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F258] secondsFromMachTime:v20[22] - v24[22]];
    v83 = [v82 numberWithDouble:?];
    [v15 setObject:v83 forKeyedSubscript:@"cpu_ptime"];

    v84 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[36] - v24[36]];
    [v15 setObject:v84 forKeyedSubscript:@"cpu_pcycles"];

    v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[35] - v24[35]];
    v9 = v125;
  }

  else
  {
    v86 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F258] secondsFromMachTime:v20[2]];
    v87 = [v86 numberWithDouble:?];
    [v15 setObject:v87 forKeyedSubscript:@"time_nonempty"];

    v88 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F258] secondsFromMachTime:v20[3]];
    v89 = [v88 numberWithDouble:?];
    [v15 setObject:v89 forKeyedSubscript:@"cpu_time"];

    v90 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[31]];
    [v15 setObject:v90 forKeyedSubscript:@"cpu_instructions"];

    v91 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[32]];
    [v15 setObject:v91 forKeyedSubscript:@"cpu_cycles"];

    v92 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F258] secondsFromMachTime:v20[8]];
    v93 = [v92 numberWithDouble:?];
    [v15 setObject:v93 forKeyedSubscript:@"gpu_time"];

    v94 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[41]];
    [v15 setObject:v94 forKeyedSubscript:@"gpu_energy_nj"];

    v95 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[42]];
    [v15 setObject:v95 forKeyedSubscript:@"gpu_energy_nj_billed_to_me"];

    v96 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[43]];
    [v15 setObject:v96 forKeyedSubscript:@"gpu_energy_nj_billed_to_others"];

    v97 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F258] secondsFromMachTime:v20[9]];
    v98 = [v97 numberWithDouble:?];
    [v15 setObject:v98 forKeyedSubscript:@"cpu_time_billed_to_me"];

    v99 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F258] secondsFromMachTime:v20[10]];
    v100 = [v99 numberWithDouble:?];
    [v15 setObject:v100 forKeyedSubscript:@"cpu_time_billed_to_others"];

    v101 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[39]];
    [v15 setObject:v101 forKeyedSubscript:@"ane_energy_nj"];

    v102 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F258] secondsFromMachTime:v20[38]];
    v103 = [v102 numberWithDouble:?];
    [v15 setObject:v103 forKeyedSubscript:@"ane_time"];

    v104 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[4]];
    [v15 setObject:v104 forKeyedSubscript:@"interrupt_wakeups"];

    v105 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[5]];
    [v15 setObject:v105 forKeyedSubscript:@"platform_idle_wakeups"];

    v106 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[6]];
    [v15 setObject:v106 forKeyedSubscript:@"bytesread"];

    v107 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[7]];
    [v15 setObject:v107 forKeyedSubscript:@"byteswritten"];

    v108 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[12]];
    [v15 setObject:v108 forKeyedSubscript:@"logical_immediate_writes"];

    v109 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[13]];
    [v15 setObject:v109 forKeyedSubscript:@"logical_deferred_writes"];

    v110 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[14]];
    [v15 setObject:v110 forKeyedSubscript:@"logical_invalidated_writes"];

    v111 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[15]];
    [v15 setObject:v111 forKeyedSubscript:@"logical_metadata_writes"];

    v112 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[33]];
    [v15 setObject:v112 forKeyedSubscript:@"fs_metadata_writes"];

    v113 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[34]];
    [v15 setObject:v113 forKeyedSubscript:@"pm_writes"];

    v114 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[11]];
    [v15 setObject:v114 forKeyedSubscript:@"energy"];

    v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[20]];
    [v15 setObject:v115 forKeyedSubscript:@"energy_billed_to_me"];

    v116 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[21]];
    [v15 setObject:v116 forKeyedSubscript:@"energy_billed_to_others"];

    for (j = 0; j != 7; ++j)
    {
      v118 = [MEMORY[0x277CCACA8] stringWithFormat:@"cpu_time_eqos_%d", j];
      v119 = MEMORY[0x277CCABB0];
      [MEMORY[0x277D3F258] secondsFromMachTime:v20[j + 24]];
      v120 = [v119 numberWithDouble:?];
      [v15 setObject:v120 forKeyedSubscript:v118];
    }

    v121 = MEMORY[0x277CCABB0];
    [MEMORY[0x277D3F258] secondsFromMachTime:v20[22]];
    v122 = [v121 numberWithDouble:?];
    [v15 setObject:v122 forKeyedSubscript:@"cpu_ptime"];

    v123 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[36]];
    [v15 setObject:v123 forKeyedSubscript:@"cpu_pcycles"];

    v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20[35]];
  }

  [v15 setObject:v85 forKeyedSubscript:@"cpu_pinstructions"];

  [(PLCoalitionAgent *)self logToAggd:v15];
  if ([v128 isUIKitApp])
  {
    [(PLCoalitionAgent *)self logAggregateNANDStatsWithInfo:v15];
  }

  return v15;
}

- (void)logCoalitionObjectDifference:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
  if (v5)
  {
    v6 = v5;
    v7 = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEB18] array];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v10 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__PLCoalitionAgent_logCoalitionObjectDifference___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v10;
        if (qword_2811F3158 != -1)
        {
          dispatch_once(&qword_2811F3158, block);
        }

        if (_MergedGlobals_3_0 == 1)
        {
          v11 = MEMORY[0x277CCACA8];
          v12 = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
          v13 = [v11 stringWithFormat:@"newCoalitionObjectDictionary=%@\nself.lastCoalitionObjectDictionary=%@", v4, v12];

          v14 = MEMORY[0x277D3F178];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLCoalitionAgent.m"];
          v16 = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCoalitionAgent logCoalitionObjectDifference:]"];
          [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:1358];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v61 = v13;
            _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v50 = v9;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v48 = v4;
      v19 = v4;
      v20 = [v19 countByEnumeratingWithState:&v52 objects:v59 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v53;
        v49 = v19;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v53 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v52 + 1) + 8 * i);
            v25 = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
            v26 = [v25 objectForKeyedSubscript:v24];
            v27 = [v19 objectForKeyedSubscript:v24];
            v28 = [(PLCoalitionAgent *)self shouldLogCoalitionObject:v26 withEndObject:v27];

            if (v28)
            {
              v29 = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
              v30 = [v29 objectForKeyedSubscript:v24];
              v31 = [v19 objectForKeyedSubscript:v24];
              v32 = [(PLCoalitionAgent *)self lastDate];
              v33 = [(PLCoalitionAgent *)self currentDate];
              [(PLCoalitionAgent *)self buildPLEntryDiffWithStartObject:v30 withEndObject:v31 withStartDate:v32 withEndDate:v33];
              v34 = self;
              v35 = v21;
              v37 = v36 = v22;

              [v50 addObject:v37];
              v22 = v36;
              v21 = v35;
              self = v34;
              v19 = v49;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v52 objects:v59 count:16];
        }

        while (v21);
      }

      if ([v50 count])
      {
        v38 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CoalitionInterval"];
        v57 = v38;
        v58 = v50;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        [(PLOperator *)self logEntries:v39 withGroupID:v38];
      }

      [(PLCoalitionAgent *)self addAccountingEventsFromCoalitions:v50];
      v4 = v48;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v40 = objc_opt_class();
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __49__PLCoalitionAgent_logCoalitionObjectDifference___block_invoke_776;
        v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v51[4] = v40;
        if (qword_2811F3160 != -1)
        {
          dispatch_once(&qword_2811F3160, v51);
        }

        if (byte_2811F3141 == 1)
        {
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"New way %@", v50];
          v42 = MEMORY[0x277D3F178];
          v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLCoalitionAgent.m"];
          v44 = [v43 lastPathComponent];
          v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCoalitionAgent logCoalitionObjectDifference:]"];
          [v42 logMessage:v41 fromFile:v44 fromFunction:v45 fromLineNumber:1375];

          v46 = PLLogCommon();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v61 = v41;
            _os_log_debug_impl(&dword_21A4C6000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLCoalitionAgent_logCoalitionObjectDifference___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_3_0 = result;
  return result;
}

uint64_t __49__PLCoalitionAgent_logCoalitionObjectDifference___block_invoke_776(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3141 = result;
  return result;
}

- (void)addAccountingEventsFromCoalitions:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v59 = objc_opt_new();
    v58 = objc_opt_new();
    v5 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v57 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v66;
      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v66 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v65 + 1) + 8 * i);
          [(PLCoalitionAgent *)self getCPUWeightFromEntry:v14, v57];
          v12 = v12 + v15;
          [(PLCoalitionAgent *)self getGPUWeightFromEntry:v14];
          v11 = v11 + v16;
          [(PLCoalitionAgent *)self getANEEnergyFromEntry:v14];
          v10 = v10 + v17;
        }

        v8 = [v6 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v61 objects:v69 count:16];
    v20 = v58;
    if (v19)
    {
      v21 = v19;
      v22 = *v62;
      v60 = v5;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v62 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v61 + 1) + 8 * j);
          v25 = [MEMORY[0x277D3F258] getIdentifierFromEntry:{v24, v57}];
          if (v12 > 0.0)
          {
            [(PLCoalitionAgent *)self getCPUWeightFromEntry:v24];
            if (v26 > 0.0)
            {
              v27 = v26 / v12;
              v28 = [v59 objectForKey:v25];

              v29 = MEMORY[0x277CCABB0];
              if (v28)
              {
                v30 = [v59 objectForKeyedSubscript:v25];
                [v30 doubleValue];
                v32 = [v29 numberWithDouble:v27 + v31];
                [v59 setObject:v32 forKeyedSubscript:v25];
              }

              else
              {
                v30 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
                [v59 setObject:v30 forKeyedSubscript:v25];
              }

              v20 = v58;
              v5 = v60;
            }
          }

          if (v11 > 0.0)
          {
            [(PLCoalitionAgent *)self getGPUWeightFromEntry:v24];
            if (v33 > 0.0)
            {
              v34 = v33 / v11;
              v35 = [v20 objectForKey:v25];

              v36 = MEMORY[0x277CCABB0];
              if (v35)
              {
                v37 = [v20 objectForKeyedSubscript:v25];
                [v37 doubleValue];
                v39 = [v36 numberWithDouble:v34 + v38];
                [v20 setObject:v39 forKeyedSubscript:v25];
              }

              else
              {
                v37 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
                [v20 setObject:v37 forKeyedSubscript:v25];
              }

              v5 = v60;
            }
          }

          if (v10 > 0.0)
          {
            [(PLCoalitionAgent *)self getANEEnergyFromEntry:v24];
            if (v40 > 0.0)
            {
              v41 = v40 / v10;
              v42 = [v5 objectForKey:v25];

              v43 = MEMORY[0x277CCABB0];
              if (v42)
              {
                v44 = [v5 objectForKeyedSubscript:v25];
                [v44 doubleValue];
                v46 = [v43 numberWithDouble:v41 + v45];
                [v5 setObject:v46 forKeyedSubscript:v25];
              }

              else
              {
                v44 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
                [v5 setObject:v44 forKeyedSubscript:v25];
              }
            }
          }
        }

        v21 = [v18 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v21);
    }

    v47 = [MEMORY[0x277D3F0C0] sharedInstance];
    v48 = [(PLCoalitionAgent *)self currentDate];
    [v47 createDistributionEventBackwardWithDistributionID:33 withChildNodeNameToWeight:v59 withEndDate:v48];

    v49 = [MEMORY[0x277D3F0C0] sharedInstance];
    v50 = [(PLCoalitionAgent *)self currentDate];
    [v49 createDistributionEventBackwardWithDistributionID:34 withChildNodeNameToWeight:v20 withEndDate:v50];

    v51 = [(PLCoalitionAgent *)self currentDate];
    v52 = [v51 dateByAddingTimeInterval:-5.0];

    v53 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v53 createDistributionEventBackwardWithDistributionID:52 withChildNodeNameToWeight:v5 withEndDate:v52];

    v54 = [MEMORY[0x277D3F0C0] sharedInstance];
    v55 = [(PLCoalitionAgent *)self currentDate];
    [v54 createDistributionEventBackwardWithDistributionID:52 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withEndDate:v55];

    v4 = v57;
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (double)getCPUEnergyFromEntry:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"energy"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [v3 objectForKeyedSubscript:@"energy_billed_to_me"];
  [v7 doubleValue];
  v9 = v6 + v8;
  v10 = [v3 objectForKeyedSubscript:@"energy_billed_to_others"];

  [v10 doubleValue];
  v12 = v9 - v11;

  result = 0.0;
  if (v12 >= 0.0)
  {
    return v12;
  }

  return result;
}

- (double)getCPUVoucherTimeFromEntry:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"cpu_time"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [v3 objectForKeyedSubscript:@"cpu_time_billed_to_me"];
  [v7 doubleValue];
  v9 = v6 + v8;
  v10 = [v3 objectForKeyedSubscript:@"cpu_time_billed_to_others"];

  [v10 doubleValue];
  v12 = v9 - v11;

  result = 0.0;
  if (v12 >= 0.0)
  {
    return v12;
  }

  return result;
}

- (double)getGPUEnergyFromEntry:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"gpu_energy_nj"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [v3 objectForKeyedSubscript:@"gpu_energy_nj_billed_to_me"];
  [v7 doubleValue];
  v9 = v6 + v8;
  v10 = [v3 objectForKeyedSubscript:@"gpu_energy_nj_billed_to_others"];

  [v10 doubleValue];
  v12 = v9 - v11;

  result = 0.0;
  if (v12 >= 0.0)
  {
    return v12;
  }

  return result;
}

- (double)getGPUTimeFromEntry:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"gpu_time"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)getCPUWeightFromEntry:(id)a3
{
  v4 = a3;
  if (qword_2811F3168 != -1)
  {
    dispatch_once(&qword_2811F3168, &__block_literal_global_782);
  }

  if (byte_2811F3142)
  {
    [(PLCoalitionAgent *)self getCPUVoucherTimeFromEntry:v4];
  }

  else
  {
    [(PLCoalitionAgent *)self getCPUEnergyFromEntry:v4];
  }

  v6 = v5;

  return v6;
}

uint64_t __42__PLCoalitionAgent_getCPUWeightFromEntry___block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLSoCClassIsOneOf:{1001003, 1001004, 1001005, 1001006, 1001007, 1001008, 1001009, 0}];
  if (result)
  {
    byte_2811F3142 = 1;
  }

  return result;
}

- (double)getGPUWeightFromEntry:(id)a3
{
  v4 = a3;
  if (qword_2811F3170 != -1)
  {
    dispatch_once(&qword_2811F3170, &__block_literal_global_784);
  }

  if (byte_2811F3143 == 1)
  {
    [(PLCoalitionAgent *)self getGPUEnergyFromEntry:v4];
  }

  else
  {
    [(PLCoalitionAgent *)self getGPUTimeFromEntry:v4];
  }

  v6 = v5;

  return v6;
}

uint64_t __42__PLCoalitionAgent_getGPUWeightFromEntry___block_invoke()
{
  result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
  if (result > 1001018)
  {
    result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
    if (result != 1001020)
    {
      result = [MEMORY[0x277D3F208] kPLSoCClassOfDevice];
      if (result != 1001028)
      {
        byte_2811F3143 = 1;
      }
    }
  }

  return result;
}

- (void)getCoalitionInfoWithHFLFlag:(BOOL)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v54 = objc_opt_new();
  v4 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLCoalitionAgent *)self setCurrentDate:v4];

  v5 = proc_listcoalitions();
  v6 = (2 * v5);
  v7 = malloc_type_malloc(v6, 0x1000040451B5BE8uLL);
  v8 = proc_listcoalitions();
  v9 = v8;
  if (v8 > 2 * v5)
  {
    v10 = objc_alloc(MEMORY[0x277D3F190]);
    v11 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CoalitionDrops"];
    [(PLCoalitionAgent *)self currentDate];
    v13 = v12 = v7;
    v14 = [v10 initWithEntryKey:v11 withDate:v13];

    v15 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    [v14 setObject:v15 forKeyedSubscript:@"finalSize"];

    v16 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    [v14 setObject:v16 forKeyedSubscript:@"bufferSize"];

    [(PLOperator *)self logEntry:v14];
    [(PLCoalitionAgent *)self logToAggd:v14];
    if (v12)
    {
      free(v12);
    }

    v17 = v54;
    goto LABEL_41;
  }

  v18 = (v8 >> 4);
  v53 = v7;
  if (v18 >= 1)
  {
    v51 = *MEMORY[0x277D863D8];
    key = *MEMORY[0x277D863D0];
    v19 = v7;
    while (1)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = malloc_type_malloc(0x168uLL, 0x1000040DAE56E47uLL);
      v22 = *v19;
      v23 = coalition_info_resource_usage();
      if (!v23)
      {
        break;
      }

      v24 = v23;
      if (v21)
      {
        free(v21);
      }

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_26;
      }

      v25 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__PLCoalitionAgent_getCoalitionInfoWithHFLFlag___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v25;
      if (qword_2811F3178 != -1)
      {
        dispatch_once(&qword_2811F3178, block);
      }

      if (byte_2811F3144 != 1)
      {
        goto LABEL_26;
      }

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot retrieve coalition information returnVal=%d", v24];;
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLCoalitionAgent.m"];
      v29 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLCoalitionAgent getCoalitionInfoWithHFLFlag:]"];
      [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:1579];

      v31 = PLLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v26;
        _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

LABEL_25:

LABEL_26:
      objc_autoreleasePoolPop(v20);
      v19 += 2;
      if (!--v18)
      {
        goto LABEL_39;
      }
    }

    v32 = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v19];
    v34 = [v32 objectForKeyedSubscript:v33];

    if (v34)
    {
      v31 = [v34 bundleID];
      v26 = [v34 launchdName];
      v35 = [v34 isUIKitApp];
LABEL_24:
      v39 = [(PLCoalitionAgent *)self currentDate];
      v40 = [(PLCoalitionAgent *)self buildPLCoalitionDataObject:v21 withBundleId:v31 withLaunchdName:v26 withDate:v39 withCoalitionId:*v19 isApp:v35];
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v19];
      [v54 setObject:v40 forKeyedSubscript:v41];

      goto LABEL_25;
    }

    v36 = *v19;
    v37 = xpc_coalition_copy_info();
    v38 = v37;
    if (!v37 || MEMORY[0x21CEDE6E0](v37) != MEMORY[0x277D86468])
    {
      v35 = 0;
      v31 = &stru_282B650A0;
      if (*v19 == 1)
      {
        v26 = @"com.apple.kernel_task";
      }

      else
      {
        v26 = &stru_282B650A0;
      }

      goto LABEL_23;
    }

    string = xpc_dictionary_get_string(v38, key);
    v43 = string;
    if (*v19 == 1)
    {
      v35 = 0;
      v26 = @"com.apple.kernel_task";
      if (string)
      {
LABEL_30:
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:v43];
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v50 = string;
      v44 = xpc_dictionary_get_string(v38, v51);
      if (v44)
      {
        v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:v44];
      }

      else
      {
        v45 = @"Unnamed_launchdName";
      }

      v35 = [(__CFString *)v45 hasPrefix:@"UIKitApplication:"];
      v26 = [(__CFString *)v45 stringByReplacingOccurrencesOfString:@"UIKitApplication:" withString:&stru_282B650A0];

      v46 = [(__CFString *)v26 rangeOfString:@"["];
      if (v46 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v47 = [(__CFString *)v26 substringToIndex:v46];

        v26 = v47;
      }

      v43 = v50;
      if (v50)
      {
        goto LABEL_30;
      }
    }

    v31 = &stru_282B650A0;
    goto LABEL_23;
  }

  if (v7)
  {
LABEL_39:
    free(v53);
  }

  v17 = v54;
  [(PLCoalitionAgent *)self logCoalitionObjectDifference:v54];
  [(PLCoalitionAgent *)self setLastCoalitionObjectDictionary:v54];
  v48 = [(PLCoalitionAgent *)self currentDate];
  [(PLCoalitionAgent *)self setLastDate:v48];

LABEL_41:
  v49 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLCoalitionAgent_getCoalitionInfoWithHFLFlag___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3144 = result;
  return result;
}

- (double)getANEEnergyFromEntry:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"ane_energy_nj"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (id)processPerAppLogicalWritesWithInfo:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [MEMORY[0x277CBEAA8] nearestMidnightAfterDate:v4];
  v6 = [v5 dateByAddingTimeInterval:-1209600.0];
  v7 = v5;
  [v6 timeIntervalSince1970];
  v9 = v8;
  [v7 timeIntervalSince1970];
  v11 = v10;

  v12 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"NANDStats"];
  v13 = [(PLOperator *)self storage];
  v14 = [v13 aggregateEntriesForKey:v12 withBucketLength:86400.0 inTimeIntervalRange:{v9, v11 - v9}];

  v15 = [v32 objectForKeyedSubscript:@"LogicalWriteThresholdPerDay"];
  v16 = [v15 unsignedIntegerValue];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = 104857600;
  }

  v18 = PLLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v17;
    _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "LogicalWriteThresholdPerDay: %lu", &buf, 0xCu);
  }

  v19 = [MEMORY[0x277CBEB58] set];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __55__PLCoalitionAgent_processPerAppLogicalWritesWithInfo___block_invoke;
  v41[3] = &unk_27825EF80;
  v43 = v17;
  v20 = v19;
  v42 = v20;
  [v14 enumerateObjectsUsingBlock:v41];
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = 14;
  do
  {
    v23 = [MEMORY[0x277CBEB38] dictionary];
    [v21 addObject:v23];

    --v22;
  }

  while (v22);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__11;
  v49 = __Block_byref_object_dispose__11;
  v50 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __55__PLCoalitionAgent_processPerAppLogicalWritesWithInfo___block_invoke_805;
  v33[3] = &unk_27825EFA8;
  v24 = v20;
  v34 = v24;
  p_buf = &buf;
  v38 = v39;
  v25 = v6;
  v35 = v25;
  v26 = v21;
  v36 = v26;
  [v14 enumerateObjectsUsingBlock:v33];
  v44[0] = @"responseStartTimestamp";
  v27 = MEMORY[0x277CCABB0];
  [v25 timeIntervalSince1970];
  v28 = [v27 numberWithDouble:?];
  v44[1] = @"queryResultsPerDay";
  v45[0] = v28;
  v45[1] = v26;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(v39, 8);

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __55__PLCoalitionAgent_processPerAppLogicalWritesWithInfo___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 objectForKeyedSubscript:@"BundleId"];
  v4 = [v3 hasPrefix:@"Unspecified"];

  if ((v4 & 1) == 0)
  {
    v5 = [v10 objectForKeyedSubscript:@"LogicalWrites"];
    v6 = [v5 unsignedIntegerValue];
    v7 = *(a1 + 40);

    if (v6 > v7)
    {
      v8 = *(a1 + 32);
      v9 = [v10 objectForKeyedSubscript:@"BundleId"];
      [v8 addObject:v9];
    }
  }
}

void __55__PLCoalitionAgent_processPerAppLogicalWritesWithInfo___block_invoke_805(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v16 = v3;
  v5 = [v3 objectForKeyedSubscript:@"BundleId"];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v16 entryDate];
    v7 = [v6 isEqualToDate:*(*(*(a1 + 56) + 8) + 40)];

    if ((v7 & 1) == 0)
    {
      v8 = [v16 entryDate];
      v9 = [v8 convertFromMonotonicToSystem];

      [v9 timeIntervalSinceDate:*(a1 + 40)];
      *(*(*(a1 + 64) + 8) + 24) = (v10 / 86400.0);
      if ((*(*(*(a1 + 64) + 8) + 24) & 0x80000000) != 0)
      {
LABEL_6:

        goto LABEL_7;
      }

      v11 = [v16 entryDate];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v9 = [v16 objectForKeyedSubscript:@"LogicalWrites"];
    v14 = [*(a1 + 48) objectAtIndexedSubscript:*(*(*(a1 + 64) + 8) + 24)];
    v15 = [v16 objectForKeyedSubscript:@"BundleId"];
    [v14 setObject:v9 forKeyedSubscript:v15];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)log
{
  [(PLCoalitionAgent *)self logEventIntervalCoalitionIntervalWithHFLFlag:0];
  v3 = [(PLCoalitionAgent *)self lastCoalitionObjectDictionary];
  [(PLCoalitionAgent *)self logCoalitionObjectMemory:v3];
}

- (void)logAggregateNANDStatsWithInfo:(id)a3
{
  v18 = a3;
  v4 = [v18 objectForKeyedSubscript:@"logical_deferred_writes"];
  v5 = [v4 intValue];
  v6 = [v18 objectForKeyedSubscript:@"logical_immediate_writes"];
  v7 = [v6 intValue] + v5;
  v8 = [v18 objectForKeyedSubscript:@"logical_metadata_writes"];
  v9 = v7 + [v8 intValue];
  v10 = [v18 objectForKeyedSubscript:@"logical_invalidated_writes"];
  v11 = v9 - [v10 intValue];

  if (v11 >= 102400)
  {
    v12 = [(PLOperator *)PLCoalitionAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"NANDStats"];
    v13 = objc_alloc(MEMORY[0x277D3F190]);
    v14 = [v18 entryDate];
    v15 = [v13 initWithEntryKey:v12 withDate:v14];

    v16 = [v18 objectForKeyedSubscript:@"LaunchdName"];
    [v15 setObject:v16 forKeyedSubscript:@"BundleId"];

    v17 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    [v15 setObject:v17 forKeyedSubscript:@"LogicalWrites"];

    [(PLOperator *)self logEntry:v15];
  }
}

@end