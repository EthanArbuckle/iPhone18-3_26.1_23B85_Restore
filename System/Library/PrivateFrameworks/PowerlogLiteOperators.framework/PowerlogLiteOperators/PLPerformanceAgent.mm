@interface PLPerformanceAgent
+ (BOOL)shouldCreateJetsamPriorityTable;
+ (id)entryEventIntervalDefinitionExperiment;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionAPFSFragmentation;
+ (id)entryEventPointDefinitionCodePrewarming;
+ (id)entryEventPointDefinitionDiskFragmentation;
+ (id)entryEventPointDefinitionDiskUsage;
+ (id)entryEventPointDefinitionIdleReaper;
+ (id)entryEventPointDefinitionJetsamPriority;
+ (id)entryEventPointDefinitionRollout;
+ (id)entryEventPointDefinitionSystemMemory;
+ (id)entryEventPointDefinitionVMTunables;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLPerformanceAgent)init;
- (id)descriptionForMemoryPressure:(int)a3;
- (int)convertCodePrewarmingSysctl:(id)a3;
- (int)countFD:(int)a3;
- (void)initOperatorDependancies;
- (void)log;
- (void)logEventIntervalExperiment;
- (void)logEventPointAPFSFragmentation;
- (void)logEventPointAPFSFragmentationWithContainer:(const char *)a3;
- (void)logEventPointCodePrewarming;
- (void)logEventPointDiskFragmentation;
- (void)logEventPointDiskUsage;
- (void)logEventPointIdleReaper;
- (void)logEventPointJetsamPrority;
- (void)logEventPointRollout;
- (void)logEventPointSystemMemory:(BOOL)a3;
- (void)logEventPointSystemMemoryPerProcess:(id)a3;
- (void)logEventPointVMTunables;
- (void)logSharedCacheStatisticsToCA:(id)a3;
- (void)logSystemMemoryToCA:(id)a3;
@end

@implementation PLPerformanceAgent

uint64_t __46__PLPerformanceAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  [*(a1 + 32) logEventPointSystemMemory:1];
  [*(a1 + 32) logEventPointDiskUsage];
  [*(a1 + 32) logEventPointJetsamPrority];
  [*(a1 + 32) logEventPointIdleReaper];
  v2 = *(a1 + 32);

  return [v2 logEventPointCodePrewarming];
}

- (void)logEventPointCodePrewarming
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [@"kern.trial_experiment_id" UTF8String];
  size = 0;
  if (sysctlbyname(v3, 0, &size, 0, 0))
  {
    v4 = PLLogPerformance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 138412546;
      v19 = @"kern.trial_experiment_id";
      v20 = 1024;
      v21 = v14;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "Unable to retrieve size for %@ sysctl value, defaulting to empty string: %{errno}d", buf, 0x12u);
    }
  }

  else
  {
    v5 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (sysctlbyname(v3, v5, &size, 0, 0))
    {
      v6 = PLLogPerformance();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v15 = *__error();
        *buf = 138412546;
        v19 = @"kern.trial_experiment_id";
        v20 = 1024;
        v21 = v15;
        _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "Unable to get %@ sysctl value: %{errno}d", buf, 0x12u);
      }

      free(v5);
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
      free(v5);
      v8 = objc_alloc(MEMORY[0x277D3F190]);
      v9 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"CodePrewarming"];
      v10 = [v8 initWithEntryKey:v9];

      v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLPerformanceAgent convertCodePrewarmingSysctl:](self, "convertCodePrewarmingSysctl:", v7)}];
      [v10 setObject:v11 forKeyedSubscript:@"State"];

      v12 = PLLogPerformance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v10 dictionary];
        *buf = 138412290;
        v19 = v16;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "CodePrewarming sysctls: %@", buf, 0xCu);
      }

      [(PLOperator *)self logEntry:v10];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F3071 = result;
  return result;
}

+ (BOOL)shouldCreateJetsamPriorityTable
{
  if (qword_2811F30A8 != -1)
  {
    dispatch_once(&qword_2811F30A8, &__block_literal_global_41);
  }

  return _MergedGlobals_3;
}

uint64_t __53__PLPerformanceAgent_shouldCreateJetsamPriorityTable__block_invoke()
{
  result = [MEMORY[0x277D3F208] isiOS];
  _MergedGlobals_3 = result;
  return result;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLPerformanceAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v15[9] = *MEMORY[0x277D85DE8];
  v2 = +[PLPerformanceAgent entryEventPointDefinitionSystemMemory];
  v15[0] = v2;
  v14[1] = @"DiskUsage";
  v3 = +[PLPerformanceAgent entryEventPointDefinitionDiskUsage];
  v15[1] = v3;
  v14[2] = @"DiskFragmentation";
  v4 = +[PLPerformanceAgent entryEventPointDefinitionDiskFragmentation];
  v15[2] = v4;
  v14[3] = @"JetsamPriority";
  v5 = +[PLPerformanceAgent entryEventPointDefinitionJetsamPriority];
  v15[3] = v5;
  v14[4] = @"APFSFragmentation";
  v6 = +[PLPerformanceAgent entryEventPointDefinitionAPFSFragmentation];
  v15[4] = v6;
  v14[5] = @"Rollout";
  v7 = +[PLPerformanceAgent entryEventPointDefinitionRollout];
  v15[5] = v7;
  v14[6] = @"VMTunables";
  v8 = +[PLPerformanceAgent entryEventPointDefinitionVMTunables];
  v15[6] = v8;
  v14[7] = @"IdleReaper";
  v9 = +[PLPerformanceAgent entryEventPointDefinitionIdleReaper];
  v15[7] = v9;
  v14[8] = @"CodePrewarming";
  v10 = +[PLPerformanceAgent entryEventPointDefinitionCodePrewarming];
  v15[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:9];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionSystemMemory
{
  v87[3] = *MEMORY[0x277D85DE8];
  v86[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v84[0] = *MEMORY[0x277D3F568];
  v84[1] = v2;
  v85[0] = &unk_282C1BCA8;
  v85[1] = MEMORY[0x277CBEC38];
  v84[2] = *MEMORY[0x277D3F4F8];
  v85[2] = MEMORY[0x277CBEC38];
  v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  v87[0] = v77;
  v86[1] = *MEMORY[0x277D3F540];
  v82[0] = @"FreeCount";
  v76 = [MEMORY[0x277D3F198] sharedInstance];
  v75 = [v76 commonTypeDict_IntegerFormat];
  v83[0] = v75;
  v82[1] = @"WiredCount";
  v74 = [MEMORY[0x277D3F198] sharedInstance];
  v73 = [v74 commonTypeDict_IntegerFormat];
  v83[1] = v73;
  v82[2] = @"CompressorPageCount";
  v72 = [MEMORY[0x277D3F198] sharedInstance];
  v71 = [v72 commonTypeDict_IntegerFormat];
  v83[2] = v71;
  v82[3] = @"PurgeableCount";
  v70 = [MEMORY[0x277D3F198] sharedInstance];
  v69 = [v70 commonTypeDict_IntegerFormat];
  v83[3] = v69;
  v82[4] = @"Purges";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_IntegerFormat];
  v83[4] = v67;
  v82[5] = @"Faults";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_IntegerFormat];
  v83[5] = v65;
  v82[6] = @"ZeroFills";
  v64 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v64 commonTypeDict_IntegerFormat];
  v83[6] = v63;
  v82[7] = @"Reactivations";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_IntegerFormat];
  v83[7] = v61;
  v82[8] = @"PageIns";
  v60 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v60 commonTypeDict_IntegerFormat];
  v83[8] = v59;
  v82[9] = @"PageOuts";
  v58 = [MEMORY[0x277D3F198] sharedInstance];
  v57 = [v58 commonTypeDict_IntegerFormat];
  v83[9] = v57;
  v82[10] = @"Decompressions";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_IntegerFormat];
  v83[10] = v55;
  v82[11] = @"Compressions";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_IntegerFormat];
  v83[11] = v53;
  v82[12] = @"SwapIns";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_IntegerFormat];
  v83[12] = v51;
  v82[13] = @"SwapOuts";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_IntegerFormat];
  v83[13] = v49;
  v82[14] = @"CompressedPageCount";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_IntegerFormat];
  v83[14] = v47;
  v82[15] = @"InternalPageCount";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_IntegerFormat];
  v83[15] = v45;
  v82[16] = @"ExternalPageCount";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_IntegerFormat];
  v83[16] = v43;
  v82[17] = @"SwapAvailSize";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_IntegerFormat];
  v83[17] = v41;
  v82[18] = @"SwapUsedSize";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_IntegerFormat];
  v83[18] = v39;
  v82[19] = @"MemoryPressureLevel";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_StringFormat];
  v83[19] = v37;
  v82[20] = @"FreeVnodeCount";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_IntegerFormat];
  v83[20] = v35;
  v82[21] = @"SharedCacheVirtualSize";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_IntegerFormat];
  v83[21] = v33;
  v82[22] = @"SharedCacheResidentSize";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_IntegerFormat];
  v83[22] = v31;
  v82[23] = @"SharedCacheResidencyPercent";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v83[23] = v29;
  v82[24] = @"PagesGrabbed";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v83[24] = v27;
  v82[25] = @"IdlePhysFootprint";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v83[25] = v25;
  v82[26] = @"IdleWired";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v83[26] = v23;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:27];
  v87[1] = v22;
  v86[2] = *MEMORY[0x277D3F500];
  v80[0] = @"key";
  v78[0] = @"ProcessName";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_StringFormat_withProcessName];
  v79[0] = v20;
  v78[1] = @"PG_indiv";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v79[1] = v18;
  v78[2] = @"PG_upl";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v79[2] = v16;
  v78[3] = @"PG_iopl";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v15 commonTypeDict_IntegerFormat];
  v79[3] = v3;
  v78[4] = @"PG_kern";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v79[4] = v5;
  v78[5] = @"PG_other";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v79[5] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:6];
  v81[0] = v8;
  v80[1] = @"value";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v81[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
  v87[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionDiskUsage
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1BCB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"FreeSize";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"SystemSize";
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

+ (id)entryEventPointDefinitionDiskFragmentation
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1BCB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"INDPoolFull";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_RealFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventPointDefinitionAPFSFragmentation
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_282C1BCB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"container";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v14[0] = v4;
  v13[1] = @"fragmentedExtent";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v14[1] = v6;
  v13[2] = @"fileCount";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventPointDefinitionJetsamPriority
{
  v38[2] = *MEMORY[0x277D85DE8];
  if (+[PLPerformanceAgent shouldCreateJetsamPriorityTable])
  {
    v37[0] = *MEMORY[0x277D3F4E8];
    v35 = *MEMORY[0x277D3F568];
    v36 = &unk_282C1BCC8;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v38[0] = v32;
    v37[1] = *MEMORY[0x277D3F540];
    v33[0] = @"pid";
    v31 = [MEMORY[0x277D3F198] sharedInstance];
    v30 = [v31 commonTypeDict_IntegerFormat];
    v34[0] = v30;
    v33[1] = @"name";
    v29 = [MEMORY[0x277D3F198] sharedInstance];
    v28 = [v29 commonTypeDict_StringFormat];
    v34[1] = v28;
    v33[2] = @"priority";
    v27 = [MEMORY[0x277D3F198] sharedInstance];
    v26 = [v27 commonTypeDict_IntegerFormat];
    v34[2] = v26;
    v33[3] = @"footprint";
    v25 = [MEMORY[0x277D3F198] sharedInstance];
    v24 = [v25 commonTypeDict_IntegerFormat];
    v34[3] = v24;
    v33[4] = @"peakFootprint";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v34[4] = v22;
    v33[5] = @"activeLimit";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v34[5] = v20;
    v33[6] = @"activeLimitIsHard";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_BoolFormat];
    v34[6] = v18;
    v33[7] = @"inactiveLimit";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v34[7] = v16;
    v33[8] = @"inactiveLimitIsHard";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_BoolFormat];
    v34[8] = v14;
    v33[9] = @"frozen";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_BoolFormat];
    v34[9] = v3;
    v33[10] = @"pressuredExit";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_BoolFormat];
    v34[10] = v5;
    v33[11] = @"fds";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v34[11] = v7;
    v33[12] = @"machPorts";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v34[12] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:13];
    v38[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionRollout
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1BCB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"rolloutID";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v11[1] = @"deploymentID";
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

+ (id)entryEventPointDefinitionVMTunables
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1BCB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"BallastOffset";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventPointDefinitionIdleReaper
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1BCD8;
  v25[1] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"Enabled";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v23[0] = v19;
  v22[1] = @"MinAgeSecs";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v23[1] = v17;
  v22[2] = @"ThresholdMB";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[2] = v15;
  v22[3] = @"RescanSecs";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v23[3] = v4;
  v22[4] = @"SweepCount";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v23[4] = v6;
  v22[5] = @"TotalKills";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v23[5] = v8;
  v22[6] = @"TotalFreedMB";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v23[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionCodePrewarming
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1BCB8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"State";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventIntervalDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Experiment";
  v2 = +[PLPerformanceAgent entryEventIntervalDefinitionExperiment];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventIntervalDefinitionExperiment
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v21 = *MEMORY[0x277D3F568];
  v22 = &unk_282C1BCE8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"namespace";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat];
  v20[0] = v16;
  v19[1] = @"experimentID";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_StringFormat];
  v20[1] = v14;
  v19[2] = @"treatmentID";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_StringFormat];
  v20[2] = v3;
  v19[3] = @"deploymentID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[3] = v5;
  v19[4] = @"startDate";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_DateFormat];
  v20[4] = v7;
  v19[5] = @"EndDate";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_DateFormat];
  v20[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLPerformanceAgent)init
{
  v3.receiver = self;
  v3.super_class = PLPerformanceAgent;
  return [(PLAgent *)&v3 init];
}

- (void)initOperatorDependancies
{
  v39[1] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] internalBuild] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
  {
    if ([MEMORY[0x277D3F208] isiOS] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isARMMac"))
    {
      v3 = 1;
    }

    else
    {
      v3 = [MEMORY[0x277D3F208] isWatch];
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"TGOnDeviceInferenceProviderService", @"VisualGenerationInference", @"aned", 0}];
  systemMemoryProcessNames = self->_systemMemoryProcessNames;
  self->_systemMemoryProcessNames = v4;

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke;
  v33[3] = &unk_2782597E8;
  v33[4] = self;
  v6 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v33];
  batteryLevelChanged = self->_batteryLevelChanged;
  self->_batteryLevelChanged = v6;

  if (v3)
  {
    v8 = objc_alloc(MEMORY[0x277D3F1A8]);
    v9 = [(PLOperator *)self workQueue];
    v36[0] = &unk_282C10050;
    v36[1] = &unk_282C10068;
    v37[0] = &unk_282C1BCB8;
    v37[1] = &unk_282C10080;
    v36[2] = &unk_282C10098;
    v37[2] = &unk_282C100B0;
    v38 = @"ID";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
    v39[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_295;
    v32[3] = &unk_2782597E8;
    v32[4] = self;
    v12 = [v8 initWithWorkQueue:v9 forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v11 withBlock:v32];
    batteryEntryLogged = self->_batteryEntryLogged;
    self->_batteryEntryLogged = v12;
  }

  v14 = objc_alloc(MEMORY[0x277D3F1F0]);
  v15 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v16 = *MEMORY[0x277CBE580];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_298;
  v31[3] = &unk_2782597E8;
  v31[4] = self;
  v17 = [v14 initWithWorkQueue:v15 forNotification:v16 withBlock:v31];

  [(PLPerformanceAgent *)self setDailyTaskNotification:v17];
  v18 = objc_alloc(MEMORY[0x277D3F160]);
  v19 = [(PLOperator *)self workQueue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_2_316;
  v30[3] = &unk_2782597E8;
  v30[4] = self;
  v20 = [v18 initWithWorkQueue:v19 forNotification:@"com.apple.trial.NamespaceUpdate.MEMORY_ANALYSIS_LLM_OVERHEAD" requireState:1 withBlock:v30];
  llmOverheadNotification = self->_llmOverheadNotification;
  self->_llmOverheadNotification = v20;

  v22 = objc_alloc(MEMORY[0x277D3F160]);
  v23 = [(PLOperator *)self workQueue];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_320;
  v29[3] = &unk_2782597E8;
  v29[4] = self;
  v24 = [v22 initWithWorkQueue:v23 forNotification:@"com.apple.trial.NamespaceUpdate.COREOS_GMPOWER_VM_TUNING_PAGE_SHORTAGE_THRESHOLDS" requireState:1 withBlock:v29];
  vmTuningNotification = self->_vmTuningNotification;
  self->_vmTuningNotification = v24;

  [(PLPerformanceAgent *)self logEventIntervalExperiment];
  [(PLPerformanceAgent *)self logEventPointRollout];
  self->_randomSample = arc4random_uniform(0x30u);
  self->_sampleCounter = 0;
  v26 = PLLogPerformance();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    randomSample = self->_randomSample;
    *buf = 67109120;
    v35 = randomSample;
    _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "Picked random sample value as %d for sending stats to CA", buf, 8u);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_295(uint64_t a1)
{
  v2 = PLLogPerformance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Logging SystemMemory stats for new EventBackward_Battery entry logged", v4, 2u);
  }

  return [*(a1 + 32) logEventPointSystemMemory:0];
}

void __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_298(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[3] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_2;
    block[3] = &unk_27825A310;
    v27 = @"DailyTasks";
    v28 = v11;
    if (qword_2811F30B0 != -1)
    {
      dispatch_once(&qword_2811F30B0, block);
    }

    v12 = byte_2811F3071;

    if (v12)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"DailyTasks notification!"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent initOperatorDependancies]_block_invoke"];
      [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:528];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", location, 0xCu);
      }
    }
  }

  objc_initWeak(location, *(a1 + 32));
  v19 = objc_alloc(MEMORY[0x277D3F250]);
  v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:30.0];
  v21 = [*(a1 + 32) workQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_310;
  v24[3] = &unk_27825A810;
  objc_copyWeak(&v25, location);
  v22 = [v19 initWithFireDate:v20 withInterval:0 withTolerance:0 repeats:v21 withUserInfo:v24 withQueue:0.0 withBlock:0.0];

  [v22 arm];
  objc_destroyWeak(&v25);
  objc_destroyWeak(location);

  v23 = *MEMORY[0x277D85DE8];
}

void __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_310(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logEventPointDiskFragmentation];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 logEventPointAPFSFragmentation];
}

uint64_t __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_2_316(uint64_t a1)
{
  v2 = PLLogPerformance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_INFO, "MEMORY_ANALYSIS_LLM_OVERHEAD was fired, logging Trial data", v4, 2u);
  }

  [*(a1 + 32) logEventIntervalExperiment];
  return [*(a1 + 32) logEventPointRollout];
}

uint64_t __46__PLPerformanceAgent_initOperatorDependancies__block_invoke_320(uint64_t a1)
{
  v2 = PLLogPerformance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_INFO, "COREOS_GMPOWER_VM_TUNING_PAGE_SHORTAGE_THRESHOLDS was fired, logging Trial data", v4, 2u);
  }

  [*(a1 + 32) logEventIntervalExperiment];
  [*(a1 + 32) logEventPointRollout];
  [*(a1 + 32) logEventPointVMTunables];
  return [*(a1 + 32) logEventPointIdleReaper];
}

- (void)logEventIntervalExperiment
{
  v27[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F180], "liteMode"))
  {
    goto LABEL_12;
  }

  v3 = objc_opt_new();
  v4 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"Experiment"];
  v5 = [MEMORY[0x277D73648] defaultProvider];
  if (([MEMORY[0x277D3F208] seedBuild] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild"))
  {
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Logging all Active Trials deployed on-device", buf, 2u);
    }

    v24 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __48__PLPerformanceAgent_logEventIntervalExperiment__block_invoke;
    v21[3] = &unk_27825A838;
    v7 = &v22;
    v22 = v4;
    v8 = &v23;
    v23 = v3;
    v9 = &v24;
    [v5 enumerateActiveExperimentsForEnvironment:0 error:&v24 block:v21];
  }

  else
  {
    if ([MEMORY[0x277D3F208] internalBuild] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "seedBuild"))
    {
      v10 = 0;
      goto LABEL_9;
    }

    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "Logging Sampled set of Active Trials deployed on-device", buf, 2u);
    }

    v20 = 0;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __48__PLPerformanceAgent_logEventIntervalExperiment__block_invoke_334;
    v17 = &unk_27825A838;
    v7 = &v18;
    v18 = v4;
    v8 = &v19;
    v19 = v3;
    v9 = &v20;
    [v5 enumerateSampledActiveExperimentsForEnvironment:0 correlationID:@"com.apple.powerlog" error:&v20 block:&v14];
  }

  v10 = *v9;

LABEL_9:
  if ([v3 count])
  {
    v26 = v4;
    v27[0] = v3;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [(PLOperator *)self logEntries:v11 withGroupID:v4];
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
}

void __48__PLPerformanceAgent_logEventIntervalExperiment__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [v4 namespaces];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v21 + 1) + 8 * v10) name];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v12 = objc_opt_new();
    v13 = [v5 componentsJoinedByString:{@", "}];
    [v12 setObject:v13 forKeyedSubscript:@"namespace"];

    v14 = [v4 experimentId];
    [v12 setObject:v14 forKeyedSubscript:@"experimentID"];

    v15 = [v4 treatmentId];
    [v12 setObject:v15 forKeyedSubscript:@"treatmentID"];

    v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "deploymentId")}];
    [v12 setObject:v16 forKeyedSubscript:@"deploymentID"];

    v17 = [v4 date];
    [v12 setObject:v17 forKeyedSubscript:@"startDate"];

    v18 = [MEMORY[0x277CBEAA8] date];
    [v12 setObject:v18 forKeyedSubscript:@"EndDate"];

    v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withRawData:v12];
    [*(a1 + 40) addObject:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __48__PLPerformanceAgent_logEventIntervalExperiment__block_invoke_334(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [v4 namespaces];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v21 + 1) + 8 * v10) name];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v12 = objc_opt_new();
    v13 = [v5 componentsJoinedByString:{@", "}];
    [v12 setObject:v13 forKeyedSubscript:@"namespace"];

    v14 = [v4 experimentId];
    [v12 setObject:v14 forKeyedSubscript:@"experimentID"];

    v15 = [v4 treatmentId];
    [v12 setObject:v15 forKeyedSubscript:@"treatmentID"];

    v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "deploymentId")}];
    [v12 setObject:v16 forKeyedSubscript:@"deploymentID"];

    v17 = [v4 date];
    [v12 setObject:v17 forKeyedSubscript:@"startDate"];

    v18 = [MEMORY[0x277CBEAA8] date];
    [v12 setObject:v18 forKeyedSubscript:@"EndDate"];

    v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withRawData:v12];
    [*(a1 + 40) addObject:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)descriptionForMemoryPressure:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_27825A880[a3 - 1];
  }
}

- (void)logSystemMemoryToCA:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v37 = 0;
  v36 = 4;
  if (!sysctlbyname("vm.pagesize", &v37, &v36, 0, 0))
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [v3 objectForKeyedSubscript:@"WiredCount"];
    v7 = [v6 unsignedLongLongValue];
    v8 = [v5 numberWithUnsignedLongLong:(v7 * v37) >> 10];
    [v4 setObject:v8 forKeyedSubscript:@"wired_down"];

    v9 = MEMORY[0x277CCABB0];
    v10 = [v3 objectForKeyedSubscript:@"ExternalPageCount"];
    v11 = [v10 unsignedLongLongValue];
    v12 = [v9 numberWithUnsignedLongLong:(v11 * v37) >> 10];
    [v4 setObject:v12 forKeyedSubscript:@"file_backed"];

    v13 = MEMORY[0x277CCABB0];
    v14 = [v3 objectForKeyedSubscript:@"CompressorPageCount"];
    v15 = [v14 unsignedLongLongValue];
    v16 = [v13 numberWithUnsignedLongLong:(v15 * v37) >> 10];
    [v4 setObject:v16 forKeyedSubscript:@"occupied_by_compressor"];

    v17 = MEMORY[0x277CCABB0];
    v18 = [v3 objectForKeyedSubscript:@"CompressedPageCount"];
    v19 = [v18 unsignedLongLongValue];
    v20 = [v17 numberWithUnsignedLongLong:(v19 * v37) >> 10];
    [v4 setObject:v20 forKeyedSubscript:@"stored_in_compressor"];

    v21 = MEMORY[0x277CCABB0];
    v22 = [v3 objectForKeyedSubscript:@"FreeCount"];
    v23 = [v22 unsignedLongLongValue];
    v24 = [v21 numberWithUnsignedLongLong:(v23 * v37) >> 10];
    [v4 setObject:v24 forKeyedSubscript:@"free"];

    v25 = MEMORY[0x277CCABB0];
    v26 = [v3 objectForKeyedSubscript:@"IdlePhysFootprint"];
    v27 = [v26 unsignedLongLongValue];
    v28 = [v25 numberWithUnsignedLongLong:(v27 * v37) >> 10];
    [v4 setObject:v28 forKeyedSubscript:@"idle_phys_footprint"];

    v29 = MEMORY[0x277CCABB0];
    v30 = [v3 objectForKeyedSubscript:@"IdleWired"];
    v31 = [v30 unsignedLongLongValue];
    v32 = [v29 numberWithUnsignedLongLong:(v31 * v37) >> 10];
    [v4 setObject:v32 forKeyedSubscript:@"idle_wired"];

    v33 = PLLogPerformance();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v39 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "Log System Memory Stats to CA %@", buf, 0xCu);
    }

    v35 = v4;
    AnalyticsSendEventLazy();
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)logSharedCacheStatisticsToCA:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 objectForKeyedSubscript:@"SharedCacheVirtualSize"];
  [v5 setObject:v6 forKeyedSubscript:@"virtual_shared_cache"];

  v7 = [v4 objectForKeyedSubscript:@"SharedCacheResidentSize"];
  [v5 setObject:v7 forKeyedSubscript:@"resident_shared_cache"];

  v8 = [v4 objectForKeyedSubscript:@"SharedCacheResidencyPercent"];

  [v5 setObject:v8 forKeyedSubscript:@"shared_cache_resident_percent"];
  v9 = PLLogPerformance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Log Shared Cache Stats to CA %@", buf, 0xCu);
  }

  v12 = v5;
  v10 = v5;
  AnalyticsSendEventLazy();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointSystemMemoryPerProcess:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (qword_2811F30C0 != -1)
  {
    dispatch_once(&qword_2811F30C0, &__block_literal_global_386);
  }

  v5 = proc_listpids(1u, 0, 0, 0);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    v7 = v5;
    v8 = malloc_type_malloc(v5, 0x100004052888210uLL);
    if (v8)
    {
      v9 = v8;
      memset(v8, 255, v7);
      v10 = proc_listpids(1u, 0, v9, v6);
      v11 = malloc_type_malloc(48 * qword_2811F30B8, 0x1000040EED21634uLL);
      if (v11)
      {
        v13 = v11;
        v42 = v9;
        if (v10 >= 4)
        {
          v45 = 0;
          if (v10 >> 2 <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = v10 >> 2;
          }

          v17 = 0x277D3F000uLL;
          v18 = 0x2811ED000uLL;
          *&v12 = 134218242;
          v41 = v12;
          v19 = v9;
          v43 = v4;
          v44 = self;
          do
          {
            v21 = *v19++;
            v20 = v21;
            v22 = [*(v17 + 600) fullProcessNameForPid:{v21, v41}];
            if ([*(&self->super.super.super.isa + *(v18 + 2160)) containsObject:v22])
            {
              v23 = PLLogPerformance();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buffer[0]) = 138412290;
                *(buffer + 4) = v22;
                _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "SystemMemory found processName:%@ pid", buffer, 0xCu);
              }

              if (v20 == -1)
              {
                v46 = -1;
              }

              else
              {
                v53 = 0u;
                v54 = 0u;
                memset(buffer, 0, sizeof(buffer));
                v24 = proc_pid_rusage(v20, 0, buffer);
                if (v24)
                {
                  v25 = v24;
                  v26 = PLLogPerformance();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109376;
                    *v50 = v25;
                    *&v50[4] = 1024;
                    *&v50[6] = v20;
                    _os_log_error_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_ERROR, "SystemMemory retVal failed with %d for pid %d", buf, 0xEu);
                  }

                  v27 = -1;
                }

                else
                {
                  v27 = buffer[6];
                  v26 = PLLogPerformance();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = v41;
                    *v50 = v27;
                    *&v50[8] = 2112;
                    v51 = v22;
                    _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "SystemMemory pageins : %llu for processName: %@", buf, 0x16u);
                  }
                }

                v46 = v27;
              }

              bzero(v13, 48 * qword_2811F30B8);
              if ((ledger() & 0x80000000) != 0)
              {
                v40 = PLLogPerformance();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buffer[0]) = 0;
                  _os_log_error_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_ERROR, "SystemMemory pages_grabbed failure", buffer, 2u);
                }
              }

              else
              {
                v28 = *(v13 + 6 * dword_2811F3084);
                v29 = *(v13 + 6 * dword_2811F3090);
                v30 = *(v13 + 6 * dword_2811F308C);
                v31 = *(v13 + 6 * dword_2811F3088);
                v32 = v28 - v31 - (v30 + v29);
                v33 = PLLogPerformance();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(buffer[0]) = 138413570;
                  *(buffer + 4) = v22;
                  WORD2(buffer[1]) = 2048;
                  *(&buffer[1] + 6) = v28;
                  HIWORD(buffer[2]) = 2048;
                  buffer[3] = v29;
                  LOWORD(buffer[4]) = 2048;
                  *(&buffer[4] + 2) = v30;
                  WORD1(buffer[5]) = 2048;
                  *(&buffer[5] + 4) = v31;
                  WORD2(buffer[6]) = 2048;
                  *(&buffer[6] + 6) = (v28 - v31 - (v30 + v29));
                  _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "SystemMemory processName: %@ \n pages_grabbed: %lld, upl: %lld, iopl: %lld, kern: %lld, other:%lld", buffer, 0x3Eu);
                }

                v48[0] = v22;
                v47[0] = @"ProcessName";
                v47[1] = @"PG_indiv";
                v34 = [MEMORY[0x277CCABB0] numberWithLongLong:v28];
                v48[1] = v34;
                v47[2] = @"PG_upl";
                v35 = [MEMORY[0x277CCABB0] numberWithLongLong:v29];
                v48[2] = v35;
                v47[3] = @"PG_iopl";
                v36 = [MEMORY[0x277CCABB0] numberWithLongLong:v30];
                v48[3] = v36;
                v47[4] = @"PG_kern";
                v37 = [MEMORY[0x277CCABB0] numberWithLongLong:v31];
                v48[4] = v37;
                v47[5] = @"PG_other";
                v38 = [MEMORY[0x277CCABB0] numberWithLongLong:v32];
                v48[5] = v38;
                v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:6];

                v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v46];
                v4 = v43;
                [v43 setObject:v40 forKeyedSubscript:v39];
                v45 = v39;
                self = v44;
              }

              v17 = 0x277D3F000;

              v18 = 0x2811ED000;
            }

            --v16;
          }

          while (v16);
        }

        else
        {
          v45 = 0;
        }

        free(v42);
        free(v13);
      }

      else
      {
        v14 = PLLogPerformance();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buffer[0]) = 0;
          _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, "SystemMemory Error Failed to allocate memory for ledger values", buffer, 2u);
        }

        free(v9);
      }
    }
  }

  [(PLOperator *)self logEntry:v4];

  v15 = *MEMORY[0x277D85DE8];
}

void __58__PLPerformanceAgent_logEventPointSystemMemoryPerProcess___block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processIdentifier];

  if ((ledger() & 0x80000000) == 0)
  {
    qword_2811F30B8 = *(&v14 + 1);
    v2 = malloc_type_malloc(96 * *(&v14 + 1), 0x1000040565EDBD2uLL);
    if (v2)
    {
      if ((ledger() & 0x80000000) == 0)
      {
        v3 = qword_2811F30B8;
        if (qword_2811F30B8 >= 1)
        {
          v4 = 0;
          v5 = v2;
          while (strcmp(v5, "pages_grabbed"))
          {
            if (!strcmp(v5, "pages_grabbed_kern"))
            {
              v6 = &dword_2811F3088;
              goto LABEL_14;
            }

            if (!strcmp(v5, "pages_grabbed_iopl"))
            {
              v6 = &dword_2811F308C;
              goto LABEL_14;
            }

            if (!strcmp(v5, "pages_grabbed_upl"))
            {
              v6 = &dword_2811F3090;
LABEL_14:
              *v6 = v4;
            }

            ++v4;
            v5 += 96;
            if (v3 == v4)
            {
              goto LABEL_24;
            }
          }

          v6 = &dword_2811F3084;
          goto LABEL_14;
        }

        goto LABEL_24;
      }

      v8 = PLLogPerformance();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

LABEL_24:
        free(v2);
        goto LABEL_25;
      }

      LOWORD(v11[0]) = 0;
      v9 = "SystemMemory Error Failed to get ledger_template_info";
    }

    else
    {
      v8 = PLLogPerformance();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      LOWORD(v11[0]) = 0;
      v9 = "SystemMemory Error Failed to allocate memory for ledger_template_info";
    }

    _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, v9, v11, 2u);
    goto LABEL_23;
  }

  v7 = PLLogPerformance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v11[0] = 67109120;
    v11[1] = v1;
    _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "SystemMemory ERROR GETTING LEDGER INFO FOR MYSELF %d", v11, 8u);
  }

LABEL_25:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointSystemMemory:(BOOL)a3
{
  v100 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] fullMode] && objc_msgSend(MEMORY[0x277D3F208], "internalBuild"))
  {
    v5 = [MEMORY[0x277D3F208] isiOS];
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v6 = 1;
  }

  else if ([MEMORY[0x277D3F180] taskMode])
  {
    v6 = [MEMORY[0x277D3F208] isWatch] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x21CEDD9B0]();
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  v78 = 0u;
  v79 = 0u;
  *host_info64_out = 0u;
  host_info64_outCnt = 40;
  v8 = host_statistics64(v7, 4, host_info64_out, &host_info64_outCnt);
  v9 = MEMORY[0x277D85F48];
  if (!v8)
  {
    v10 = objc_alloc(MEMORY[0x277D3F190]);
    v11 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SystemMemory"];
    v12 = [v10 initWithEntryKey:v11];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(host_info64_out[0] - HIDWORD(v82))];
    [v12 setObject:v13 forKeyedSubscript:@"FreeCount"];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:host_info64_out[3]];
    [v12 setObject:v14 forKeyedSubscript:@"WiredCount"];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v78];
    [v12 setObject:v15 forKeyedSubscript:@"ZeroFills"];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v78 + 1)];
    [v12 setObject:v16 forKeyedSubscript:@"Reactivations"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v79];
    [v12 setObject:v17 forKeyedSubscript:@"PageIns"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v79 + 1)];
    [v12 setObject:v18 forKeyedSubscript:@"PageOuts"];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v80];
    [v12 setObject:v19 forKeyedSubscript:@"Faults"];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v82];
    [v12 setObject:v20 forKeyedSubscript:@"Purges"];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v82)];
    [v12 setObject:v21 forKeyedSubscript:@"PurgeableCount"];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v83];
    [v12 setObject:v22 forKeyedSubscript:@"Decompressions"];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v83 + 1)];
    [v12 setObject:v23 forKeyedSubscript:@"Compressions"];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v84];
    [v12 setObject:v24 forKeyedSubscript:@"SwapIns"];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v84 + 1)];
    [v12 setObject:v25 forKeyedSubscript:@"SwapOuts"];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v85];
    [v12 setObject:v26 forKeyedSubscript:@"CompressorPageCount"];

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:DWORD2(v85)];
    [v12 setObject:v27 forKeyedSubscript:@"ExternalPageCount"];

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v85)];
    [v12 setObject:v28 forKeyedSubscript:@"InternalPageCount"];

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v86];
    [v12 setObject:v29 forKeyedSubscript:@"CompressedPageCount"];

    v75 = 0uLL;
    if (!PLProcessMetricsForIdleBand(&v75))
    {
      v30 = [MEMORY[0x277CCABB0] numberWithLongLong:v75.i64[1] / 1024];
      [v12 setObject:v30 forKeyedSubscript:@"IdlePhysFootprint"];

      v31 = [MEMORY[0x277CCABB0] numberWithLongLong:v75.i64[0] / 1024];
      [v12 setObject:v31 forKeyedSubscript:@"IdleWired"];
    }

    v92 = 0x500000002;
    v73 = 0u;
    v74 = 0u;
    v72 = 32;
    if (!sysctl(&v92, 2u, &v73, &v72, 0, 0))
    {
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v73 + 1)];
      [v12 setObject:v32 forKeyedSubscript:@"SwapAvailSize"];

      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v74];
      [v12 setObject:v33 forKeyedSubscript:@"SwapUsedSize"];
    }

    v71 = 1;
    v70 = 4;
    if (!sysctlbyname("kern.memorystatus_vm_pressure_level", &v71, &v70, 0, 0))
    {
      v34 = [(PLPerformanceAgent *)self descriptionForMemoryPressure:v71];
      [v12 setObject:v34 forKeyedSubscript:@"MemoryPressureLevel"];
    }

    v69 = 0;
    v70 = 4;
    if (sysctlbyname("kern.free_vnodes", &v69, &v70, 0, 0))
    {
      v35 = PLLogPerformance();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_ERROR, "Error getting free vnode count from sysctl", &buf, 2u);
      }
    }

    else
    {
      v36 = [MEMORY[0x277CCABB0] numberWithInt:v69];
      [v12 setObject:v36 forKeyedSubscript:@"FreeVnodeCount"];

      v35 = PLLogPerformance();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v69;
        _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "Freevnode count %d", &buf, 8u);
      }
    }

    if (v6)
    {
      v37 = *v9;
      v91 = 0;
      if (!dyld_process_create_for_task())
      {
        v44 = PLLogPerformance();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v63 = mach_error_string(v91);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v63;
          _os_log_error_impl(&dword_21A4C6000, v44, OS_LOG_TYPE_ERROR, "failed to create dyld process:%s", &buf, 0xCu);
        }

        v45 = 0;
        mapped_size = 0;
        v46 = v91;
        goto LABEL_54;
      }

      if (dyld_process_snapshot_create_for_process())
      {
        v67 = v6;
        if (dyld_process_snapshot_get_shared_cache())
        {
          mapped_size = dyld_shared_cache_get_mapped_size();
          base_address = dyld_shared_cache_get_base_address();
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = mapped_size;
            _os_log_debug_impl(&dword_21A4C6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "sharedRegionSize = %llu", &buf, 0xCu);
          }

          v40 = 0;
          size = 0;
          v98 = 0u;
          memset(v99, 0, sizeof(v99));
          buf = 0u;
          v97 = 0u;
          infoCnt = 19;
          address = base_address;
          v66 = mapped_size;
          v41 = __CFADD__(base_address, mapped_size);
          v42 = base_address + mapped_size;
          if (!v41)
          {
            v40 = 0;
            while (1)
            {
              nesting_depth = 1;
              v91 = mach_vm_region_recurse(v37, &address, &size, &nesting_depth, &buf, &infoCnt);
              if (v91 == 1)
              {
                break;
              }

              if (HIBYTE(v98) <= 5u && ((1 << SHIBYTE(v98)) & 0x32) != 0)
              {
                v40 += DWORD2(v97);
              }

              address += size;
              if (address > v42)
              {
                goto LABEL_51;
              }
            }

            v50 = PLLogPerformance();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v65 = mach_error_string(v91);
              *v93 = 136315138;
              *&v93[4] = v65;
              _os_log_error_impl(&dword_21A4C6000, v50, OS_LOG_TYPE_ERROR, "reached last region:%s", v93, 0xCu);
            }
          }

LABEL_51:
          v45 = *MEMORY[0x277D85F80] * v40;
          v51 = PLLogPerformance();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *v93 = 134218240;
            *&v93[4] = v45;
            v94 = 2048;
            v95 = mapped_size;
            _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "sharedCacheResidentSize = %llu sharedCacheVirtualSize = %llu", v93, 0x16u);
          }

          dyld_process_dispose();
          dyld_process_snapshot_dispose();
          v46 = v91;
          v6 = v67;
LABEL_54:
          v9 = MEMORY[0x277D85F48];
          if (v46)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        v49 = PLLogPerformance();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_ERROR, "failed to get shared cache", &buf, 2u);
        }

        dyld_process_dispose();
        dyld_process_snapshot_dispose();
        v9 = MEMORY[0x277D85F48];
      }

      else
      {
        v47 = PLLogPerformance();
        v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
        v9 = MEMORY[0x277D85F48];
        if (v48)
        {
          v64 = mach_error_string(v91);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v64;
          _os_log_error_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_ERROR, "failed to create snapshot of the process:%s", &buf, 0xCu);
        }

        dyld_process_dispose();
        v45 = 0;
        mapped_size = 0;
        if (!v91)
        {
LABEL_55:
          [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{mapped_size >> 10, v66}];
          v68 = v6;
          v52 = v5;
          v54 = v53 = mapped_size;
          [v12 setObject:v54 forKeyedSubscript:@"SharedCacheVirtualSize"];

          v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v45 >> 10];
          [v12 setObject:v55 forKeyedSubscript:@"SharedCacheResidentSize"];

          v56 = v53;
          v5 = v52;
          v6 = v68;
          v57 = v45 * 100.0 / v56;
          *&v57 = v57;
          *&v57 = roundf(*&v57);
          v58 = [MEMORY[0x277CCABB0] numberWithFloat:v57];
          [v12 setObject:v58 forKeyedSubscript:@"SharedCacheResidencyPercent"];
        }
      }
    }

LABEL_56:
    *v93 = 0;
    v70 = 8;
    if (sysctlbyname("vm.pages_grabbed", v93, &v70, 0, 0))
    {
      v59 = PLLogPerformance();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_21A4C6000, v59, OS_LOG_TYPE_ERROR, "Error getting pages grabbed from sysctl", &buf, 2u);
      }
    }

    else
    {
      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v93];
      [v12 setObject:v60 forKeyedSubscript:@"PagesGrabbed"];

      v59 = PLLogPerformance();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = *v93;
        _os_log_debug_impl(&dword_21A4C6000, v59, OS_LOG_TYPE_DEBUG, "Pages Grabbed count %llu", &buf, 0xCu);
      }
    }

    if (v5)
    {
      [(PLPerformanceAgent *)self logEventPointSystemMemoryPerProcess:v12];
      if (!v6)
      {
        goto LABEL_66;
      }
    }

    else
    {
      [(PLOperator *)self logEntry:v12];
      if (!v6)
      {
LABEL_66:
        sampleCounter = self->_sampleCounter;
        if (sampleCounter == self->_randomSample)
        {
          [(PLPerformanceAgent *)self logSystemMemoryToCA:v12];
          sampleCounter = self->_sampleCounter;
        }

        self->_sampleCounter = sampleCounter + 1;

        goto LABEL_69;
      }
    }

    [(PLPerformanceAgent *)self logSharedCacheStatisticsToCA:v12, v66];
    goto LABEL_66;
  }

LABEL_69:
  mach_port_deallocate(*v9, v7);
  v62 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointVMTunables
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D3F190]);
  v4 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"VMTunables"];
  v5 = [v3 initWithEntryKey:v4];

  v6 = [MEMORY[0x277D73660] clientWithIdentifier:227];
  v7 = [v6 levelForFactor:@"BallastOffset" withNamespaceName:@"COREOS_GMPOWER_VM_TUNING_PAGE_SHORTAGE_THRESHOLDS"];
  v8 = [v7 longValue];
  v9 = PLLogPerformance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134217984;
    v14 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "logEventPointVMTunables VM_TUNING_PAGE_SHORTAGE_THRESHOLDS ballast offset: %lu", &v13, 0xCu);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  if (v10)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
    [v5 setObject:v11 forKeyedSubscript:@"BallastOffset"];
  }

  else
  {
    [v5 setObject:&unk_282C100C8 forKeyedSubscript:@"BallastOffset"];
  }

  [(PLOperator *)self logEntry:v5];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointIdleReaper
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D3F190]);
  v4 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"IdleReaper"];
  v5 = [v3 initWithEntryKey:v4];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_enabled"}];
  [v5 setObject:v6 forKeyedSubscript:@"Enabled"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_min_age_secs"}];
  [v5 setObject:v7 forKeyedSubscript:@"MinAgeSecs"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_threshold_mb"}];
  [v5 setObject:v8 forKeyedSubscript:@"ThresholdMB"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_rescan_secs"}];
  [v5 setObject:v9 forKeyedSubscript:@"RescanSecs"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_stats_sweep_count"}];
  [v5 setObject:v10 forKeyedSubscript:@"SweepCount"];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_stats_total_kills"}];
  [v5 setObject:v11 forKeyedSubscript:@"TotalKills"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "grabSysctlValue:", @"kern.memorystatus.reaper_stats_total_freed_mb"}];
  [v5 setObject:v12 forKeyedSubscript:@"TotalFreedMB"];

  v13 = PLLogPerformance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v5 dictionary];
    v16 = 138412290;
    v17 = v15;
    _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "IdleReaper sysctls: %@", &v16, 0xCu);
  }

  [(PLOperator *)self logEntry:v5];
  v14 = *MEMORY[0x277D85DE8];
}

- (int)convertCodePrewarmingSysctl:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"on"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"off"])
  {
    v4 = 0;
  }

  else
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, " Unknown code prewarming sysctl %@", &v8, 0xCu);
    }

    v4 = -1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)logEventPointDiskUsage
{
  v26 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] isTaskFullEPLMode])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = 0;
    v4 = [v3 attributesOfFileSystemForPath:@"/" error:&v23];
    v5 = v23;
    if (v4)
    {
      v6 = objc_alloc(MEMORY[0x277D3F190]);
      v7 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"DiskUsage"];
      v8 = [v6 initWithEntryKey:v7];

      v9 = MEMORY[0x277CCABB0];
      v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]];
      v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "unsignedIntegerValue") & 0xFFFFFFFFFFFFFC00}];
      [v8 setObject:v11 forKeyedSubscript:@"FreeSize"];

      v12 = MEMORY[0x277CCABB0];
      v13 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA1D8]];
      v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "unsignedIntegerValue") & 0xFFFFFFFFFFFFFC00}];
      [v8 setObject:v14 forKeyedSubscript:@"SystemSize"];

      [(PLOperator *)self logEntry:v8];
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_12;
      }

      v15 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__PLPerformanceAgent_logEventPointDiskUsage__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v15;
      if (qword_2811F30C8 != -1)
      {
        dispatch_once(&qword_2811F30C8, block);
      }

      if (byte_2811F3072 != 1)
      {
        goto LABEL_12;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not get root dir attributes. Error: %@", v5];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
      v18 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointDiskUsage]"];
      [v16 logMessage:v8 fromFile:v18 fromFunction:v19 fromLineNumber:1022];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

LABEL_12:
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLPerformanceAgent_logEventPointDiskUsage__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3072 = result;
  return result;
}

- (void)logEventPointDiskFragmentation
{
  if ([MEMORY[0x277D3F180] isTaskFullEPLMode])
  {
    IndirectionTableStatistics = ASP_GetIndirectionTableStatistics();
    if (IndirectionTableStatistics)
    {
      v12 = IndirectionTableStatistics;
      v4 = [(__CFDictionary *)IndirectionTableStatistics objectForKeyedSubscript:@"INDPool"];
      IndirectionTableStatistics = v12;
      if (v4)
      {
        v5 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"INDPool"];
        v6 = [v5 objectForKeyedSubscript:@"INDPoolFull"];

        IndirectionTableStatistics = v12;
        if (v6)
        {
          v7 = objc_alloc(MEMORY[0x277D3F190]);
          v8 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"DiskFragmentation"];
          v9 = [v7 initWithEntryKey:v8];

          v10 = [(__CFDictionary *)v12 objectForKeyedSubscript:@"INDPool"];
          v11 = [v10 objectForKeyedSubscript:@"INDPoolFull"];
          [v9 setObject:v11 forKeyedSubscript:@"INDPoolFull"];

          [(PLOperator *)self logEntry:v9];
          IndirectionTableStatistics = v12;
        }
      }
    }
  }
}

- (void)logEventPointJetsamPrority
{
  v2 = MEMORY[0x28223BE20](self, a2);
  v99 = *MEMORY[0x277D85DE8];
  if (+[PLPerformanceAgent shouldCreateJetsamPriorityTable])
  {
    v3 = 0x277D3F000uLL;
    if ([MEMORY[0x277D3F180] eplEnabled])
    {
      v4 = memorystatus_control();
      if (v4 < 1)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v11 = objc_opt_class();
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke_460;
          v67[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v67[4] = v11;
          if (qword_2811F30E8 != -1)
          {
            dispatch_once(&qword_2811F30E8, v67);
          }

          if (byte_2811F3076 == 1)
          {
            v12 = MEMORY[0x277CCACA8];
            v13 = __error();
            v14 = [v12 stringWithFormat:@"Could not get jetsam priority list size: %s\n", strerror(*v13)];
            v15 = MEMORY[0x277D3F178];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
            v17 = [v16 lastPathComponent];
            v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointJetsamPrority]"];
            [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:1114];

            v19 = PLLogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              buffer = 138412290;
              v97 = v14;
              _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", &buffer, 0xCu);
            }
          }
        }
      }

      else
      {
        v5 = malloc_type_malloc(v4, 0x1000040504FFAC1uLL);
        v6 = memorystatus_control();
        if (v6 > 0)
        {
          v7 = v6;
          v62 = v5;
          v8 = objc_opt_new();
          v9 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"JetsamPriority"];
          v65 = [MEMORY[0x277CBEAA8] monotonicDate];
          if (v7 < 0x18)
          {
LABEL_6:
            v73 = v9;
            v74 = v8;
            v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
            [v2 logEntries:v10 withGroupID:v9];

            free(v62);
            goto LABEL_22;
          }

          v30 = v7 / 0x18uLL;
          v31 = v62;
          v63 = v9;
          v64 = v8;
          while (1)
          {
            context = objc_autoreleasePoolPush();
            v32 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withDate:v65];
            v33 = [MEMORY[0x277CCABB0] numberWithInt:*v31];
            [v32 setObject:v33 forKeyedSubscript:@"pid"];

            bzero(&buffer, 0x1000uLL);
            proc_pidpath(*v31, &buffer, 0x1000u);
            v98 = 0;
            v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:basename(&buffer)];
            [v32 setObject:v34 forKeyedSubscript:@"name"];

            v70 = 0;
            v71 = 0;
            v35 = *v31;
            if (memorystatus_control() && [*(v3 + 384) debugEnabled])
            {
              v36 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke_448;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v36;
              if (qword_2811F30D8 != -1)
              {
                dispatch_once(&qword_2811F30D8, block);
              }

              if (byte_2811F3074 == 1)
              {
                v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Warning: Failed to get memory limit info for pid %d.  Limits will appear as 0MB and not fatal.\n", *v31];
                v38 = MEMORY[0x277D3F178];
                v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
                v40 = [v39 lastPathComponent];
                v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointJetsamPrority]"];
                [v38 logMessage:v37 fromFile:v40 fromFunction:v41 fromLineNumber:1080];

                v42 = PLLogCommon();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                {
                  LODWORD(v77[0]) = 138412290;
                  *(v77 + 4) = v37;
                  _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "%@", v77, 0xCu);
                }

                v3 = 0x277D3F000uLL;
                v9 = v63;
                v8 = v64;
              }
            }

            v43 = [MEMORY[0x277CCABB0] numberWithInt:v70];
            [v32 setObject:v43 forKeyedSubscript:@"activeLimit"];

            v44 = [MEMORY[0x277CCABB0] numberWithInt:v71];
            [v32 setObject:v44 forKeyedSubscript:@"inactiveLimit"];

            v45 = [MEMORY[0x277CCABB0] numberWithInt:BYTE4(v70) & 1];
            [v32 setObject:v45 forKeyedSubscript:@"activeLimitIsHard"];

            v46 = [MEMORY[0x277CCABB0] numberWithInt:BYTE4(v71) & 1];
            [v32 setObject:v46 forKeyedSubscript:@"inactiveLimitIsHard"];

            v95 = 0;
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            *v77 = 0u;
            v78 = 0u;
            if (proc_pid_rusage(*v31, 4, v77))
            {
              if (![*(v3 + 384) debugEnabled])
              {
                goto LABEL_42;
              }

              v47 = objc_opt_class();
              v68[0] = MEMORY[0x277D85DD0];
              v68[1] = 3221225472;
              v68[2] = __48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke_454;
              v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v68[4] = v47;
              if (qword_2811F30E0 != -1)
              {
                dispatch_once(&qword_2811F30E0, v68);
              }

              if (byte_2811F3075 != 1)
              {
                goto LABEL_42;
              }

              v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Warning: Could not get rusage for pid %d.\n", *v31];
              v49 = MEMORY[0x277D3F178];
              v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
              v51 = [v50 lastPathComponent];
              v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointJetsamPrority]"];
              [v49 logMessage:v48 fromFile:v51 fromFunction:v52 fromLineNumber:1090];

              v53 = PLLogCommon();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v76 = v48;
                _os_log_debug_impl(&dword_21A4C6000, v53, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v3 = 0x277D3F000;
              v9 = v63;
              v8 = v64;
            }

            else
            {
              v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v92];
              [v32 setObject:v54 forKeyedSubscript:@"peakFootprint"];

              v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v81 + 1)];
              [v32 setObject:v48 forKeyedSubscript:@"footprint"];
            }

LABEL_42:
            v55 = [MEMORY[0x277CCABB0] numberWithInt:v31[1]];
            [v32 setObject:v55 forKeyedSubscript:@"priority"];

            v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v31[5] & 0x10];
            [v32 setObject:v56 forKeyedSubscript:@"pressuredExit"];

            v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v31[5] & 2];
            [v32 setObject:v57 forKeyedSubscript:@"frozen"];

            v58 = [v2 countFD:*v31];
            if (v58 != -1)
            {
              v59 = [MEMORY[0x277CCABB0] numberWithInt:v58];
              [v32 setObject:v59 forKeyedSubscript:@"fds"];
            }

            v60 = [v2 countMachPort:*v31];
            if (v60 != -1)
            {
              v61 = [MEMORY[0x277CCABB0] numberWithInt:v60];
              [v32 setObject:v61 forKeyedSubscript:@"machPorts"];
            }

            [v8 addObject:v32];

            objc_autoreleasePoolPop(context);
            v31 += 6;
            if (!--v30)
            {
              goto LABEL_6;
            }
          }
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v20 = objc_opt_class();
          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke;
          v72[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v72[4] = v20;
          if (qword_2811F30D0 != -1)
          {
            dispatch_once(&qword_2811F30D0, v72);
          }

          if (byte_2811F3073 == 1)
          {
            v21 = MEMORY[0x277CCACA8];
            v22 = __error();
            v23 = [v21 stringWithFormat:@"Error: Could not get jetsam priority list: %s\n", strerror(*v22)];
            v24 = MEMORY[0x277D3F178];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
            v26 = [v25 lastPathComponent];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointJetsamPrority]"];
            [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:1057];

            v28 = PLLogCommon();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              buffer = 138412290;
              v97 = v23;
              _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", &buffer, 0xCu);
            }
          }
        }

        free(v5);
      }
    }
  }

LABEL_22:
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3073 = result;
  return result;
}

uint64_t __48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke_448(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3074 = result;
  return result;
}

uint64_t __48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke_454(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3075 = result;
  return result;
}

uint64_t __48__PLPerformanceAgent_logEventPointJetsamPrority__block_invoke_460(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3076 = result;
  return result;
}

- (int)countFD:(int)a3
{
  v4 = proc_pidinfo(a3, 1, 0, 0, 0);
  if (v4 < 1)
  {
    return -1;
  }

  v5 = v4;
  v6 = malloc_type_malloc(v4, 0x100004000313F17uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = (proc_pidinfo(a3, 1, 0, v6, v5) >> 3);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v7 + 1;
    while (1)
    {
      if (*v10 == 1)
      {
        memset(v13, 0, sizeof(v13));
        v11 = proc_pidfdinfo(a3, *(v10 - 1), 1, v13, 176);
        if (v11 <= 0)
        {
          if (*__error() != 2)
          {
LABEL_15:
            free(v7);
            return -1;
          }
        }

        else
        {
          if (v11 < 0xB0)
          {
            goto LABEL_15;
          }

          ++v9;
        }
      }

      v10 += 2;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }
  }

  v9 = 0;
LABEL_14:
  free(v7);
  return v9;
}

uint64_t __36__PLPerformanceAgent_countMachPort___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3077 = result;
  return result;
}

uint64_t __36__PLPerformanceAgent_countMachPort___block_invoke_469(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3078 = result;
  return result;
}

- (void)logEventPointAPFSFragmentation
{
  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    if ([MEMORY[0x277D3F180] isTaskFullEPLMode])
    {
      v3 = [(PLOperator *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke;
      block[3] = &unk_2782591D0;
      block[4] = self;
      dispatch_async(v3, block);
    }
  }
}

void __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  existing = 0;
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("AppleAPFSContainer");
  if (IOServiceGetMatchingServices(v2, v3, &existing))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v4 = *(a1 + 32);
      v5 = objc_opt_class();
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_2;
      v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v44[4] = v5;
      if (qword_2811F3100 != -1)
      {
        dispatch_once(&qword_2811F3100, v44);
      }

      if (byte_2811F3079 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to scan IORegistry for APFS container object."];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointAPFSFragmentation]_block_invoke"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:1188];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buffer[0]) = 138412290;
          *(buffer + 4) = v6;
LABEL_39:
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buffer, 0xCu);
          goto LABEL_36;
        }

        goto LABEL_36;
      }
    }

    goto LABEL_37;
  }

  v12 = IOIteratorNext(existing);
  if (v12)
  {
    v13 = *MEMORY[0x277CBECE8];
    v14 = v12;
    while (1)
    {
      parent = 0;
      properties = 0;
      if (IORegistryEntryGetParentEntry(v14, "IOService", &parent))
      {
        break;
      }

      if (!IORegistryEntryCreateCFProperties(parent, &properties, v13, 0))
      {
        Value = CFDictionaryGetValue(properties, @"BSD Name");
        memset(buffer, 0, sizeof(buffer));
        if (Value && CFStringGetCString(Value, buffer, 64, 0x8000100u))
        {
          [*(a1 + 32) logEventPointAPFSFragmentationWithContainer:buffer];
        }

        CFRelease(properties);
        IOObjectRelease(parent);
        IOObjectRelease(v14);
        goto LABEL_28;
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v23 = *(a1 + 32);
        v24 = objc_opt_class();
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_484;
        v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v40[4] = v24;
        if (qword_2811F3110 != -1)
        {
          dispatch_once(&qword_2811F3110, v40);
        }

        if (byte_2811F307B == 1)
        {
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to fetch IORegistry properties for APFS container object."];
          v25 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
          v27 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointAPFSFragmentation]_block_invoke_2"];
          [v25 logMessage:v17 fromFile:v27 fromFunction:v28 fromLineNumber:1203];

          v22 = PLLogCommon();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
LABEL_23:

            goto LABEL_28;
          }

LABEL_30:
          LODWORD(buffer[0]) = 138412290;
          *(buffer + 4) = v17;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buffer, 0xCu);
          goto LABEL_23;
        }
      }

LABEL_28:
      v14 = IOIteratorNext(existing);
      if (!v14)
      {
        IOObjectRelease(existing);
        goto LABEL_37;
      }
    }

    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_28;
    }

    v15 = *(a1 + 32);
    v16 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_480;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v16;
    if (qword_2811F3108 != -1)
    {
      dispatch_once(&qword_2811F3108, block);
    }

    if (byte_2811F307A != 1)
    {
      goto LABEL_28;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to scan IORegistry for APFS container object."];
    v18 = MEMORY[0x277D3F178];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
    v20 = [v19 lastPathComponent];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointAPFSFragmentation]_block_invoke_2"];
    [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:1199];

    v22 = PLLogCommon();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  IOObjectRelease(existing);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v30 = *(a1 + 32);
    v31 = objc_opt_class();
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_493;
    v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v39[4] = v31;
    if (qword_2811F3118 != -1)
    {
      dispatch_once(&qword_2811F3118, v39);
    }

    if (byte_2811F307C == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"no APFS containers found."];
      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
      v34 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointAPFSFragmentation]_block_invoke_2"];
      [v32 logMessage:v6 fromFile:v34 fromFunction:v35 fromLineNumber:1218];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buffer[0]) = 138412290;
        *(buffer + 4) = v6;
        goto LABEL_39;
      }

LABEL_36:
    }
  }

LABEL_37:
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3079 = result;
  return result;
}

uint64_t __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_480(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F307A = result;
  return result;
}

uint64_t __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_484(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F307B = result;
  return result;
}

uint64_t __52__PLPerformanceAgent_logEventPointAPFSFragmentation__block_invoke_493(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F307C = result;
  return result;
}

- (void)logEventPointAPFSFragmentationWithContainer:(const char *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __66__PLPerformanceAgent_logEventPointAPFSFragmentationWithContainer___block_invoke;
    v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v24[4] = v4;
    if (qword_2811F3120 != -1)
    {
      dispatch_once(&qword_2811F3120, v24);
    }

    if (byte_2811F307D == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"logEventPointAPFSFragmentationWithContainer:%s\n", a3];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointAPFSFragmentationWithContainer:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1227];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v23 = 0;
  valuePtr = 0;
  APFSGetFragmentationHistogram();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__PLPerformanceAgent_logEventPointAPFSFragmentationWithContainer___block_invoke_502;
    v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v21[4] = v11;
    if (qword_2811F3128 != -1)
    {
      dispatch_once(&qword_2811F3128, v21);
    }

    if (byte_2811F307E == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to get fragmentation histogram for %s", a3];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLPerformanceAgent.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLPerformanceAgent logEventPointAPFSFragmentationWithContainer:]"];
      v17 = v13;
      v18 = v12;
      [v17 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:1233];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __66__PLPerformanceAgent_logEventPointAPFSFragmentationWithContainer___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F307D = result;
  return result;
}

uint64_t __66__PLPerformanceAgent_logEventPointAPFSFragmentationWithContainer___block_invoke_502(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F307E = result;
  return result;
}

uint64_t __66__PLPerformanceAgent_logEventPointAPFSFragmentationWithContainer___block_invoke_508(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F307F = result;
  return result;
}

uint64_t __66__PLPerformanceAgent_logEventPointAPFSFragmentationWithContainer___block_invoke_514(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3080 = result;
  return result;
}

- (void)logEventPointRollout
{
  v31[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F180], "liteMode"))
  {
    goto LABEL_12;
  }

  v3 = objc_opt_new();
  v4 = [(PLOperator *)PLPerformanceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Rollout"];
  v5 = [MEMORY[0x277D73648] defaultProvider];
  v6 = [MEMORY[0x277CBEAA8] monotonicDate];
  if (([MEMORY[0x277D3F208] seedBuild] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild"))
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Logging All Active Rollouts deployed on-device", buf, 2u);
    }

    v28 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__PLPerformanceAgent_logEventPointRollout__block_invoke;
    v24[3] = &unk_27825A860;
    v8 = &v25;
    v25 = v4;
    v9 = &v26;
    v26 = v6;
    v10 = &v27;
    v27 = v3;
    v11 = &v28;
    [v5 enumerateActiveRolloutsWithError:&v28 block:v24];
  }

  else
  {
    if ([MEMORY[0x277D3F208] internalBuild] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "seedBuild"))
    {
      v12 = 0;
      goto LABEL_9;
    }

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Logging Sampled Set of Active Rollouts deployed on-device", buf, 2u);
    }

    v23 = 0;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __42__PLPerformanceAgent_logEventPointRollout__block_invoke_519;
    v19 = &unk_27825A860;
    v8 = &v20;
    v20 = v4;
    v9 = &v21;
    v21 = v6;
    v10 = &v22;
    v22 = v3;
    v11 = &v23;
    [v5 enumerateSampledActiveRolloutsForCorrelationID:@"com.apple.powerlog" error:&v23 block:&v16];
  }

  v12 = *v11;

LABEL_9:
  if ([v3 count])
  {
    v30 = v4;
    v31[0] = v3;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [(PLOperator *)self logEntries:v13 withGroupID:v4];
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
}

void __42__PLPerformanceAgent_logEventPointRollout__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v9 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
  v5 = [v4 rolloutId];
  [v9 setObject:v5 forKeyedSubscript:@"rolloutID"];

  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 deploymentId];

  v8 = [v6 numberWithInt:v7];
  [v9 setObject:v8 forKeyedSubscript:@"deploymentID"];

  [*(a1 + 48) addObject:v9];
}

void __42__PLPerformanceAgent_logEventPointRollout__block_invoke_519(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v9 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
  v5 = [v4 rolloutId];
  [v9 setObject:v5 forKeyedSubscript:@"rolloutID"];

  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 deploymentId];

  v8 = [v6 numberWithInt:v7];
  [v9 setObject:v8 forKeyedSubscript:@"deploymentID"];

  [*(a1 + 48) addObject:v9];
}

- (void)log
{
  [(PLPerformanceAgent *)self logEventPointSystemMemory:1];
  [(PLPerformanceAgent *)self logEventPointDiskUsage];
  [(PLPerformanceAgent *)self logEventPointJetsamPrority];
  [(PLPerformanceAgent *)self logEventPointDiskFragmentation];
  [(PLPerformanceAgent *)self logEventPointAPFSFragmentation];
  [(PLPerformanceAgent *)self logEventPointVMTunables];
  [(PLPerformanceAgent *)self logEventPointIdleReaper];

  [(PLPerformanceAgent *)self logEventPointCodePrewarming];
}

@end