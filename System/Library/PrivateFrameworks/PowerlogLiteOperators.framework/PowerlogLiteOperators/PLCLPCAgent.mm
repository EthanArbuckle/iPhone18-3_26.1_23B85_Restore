@interface PLCLPCAgent
+ (id)entryEventIntervalDefinitionAccumulators;
+ (id)entryEventIntervalDefinitionCPUClusterAccumulators;
+ (id)entryEventIntervalDefinitionLostPerformance;
+ (id)entryEventIntervalDefinitionTGAccumulators;
+ (id)entryEventIntervalDefinitionTGCPUClusterAccumulators;
+ (id)entryEventIntervalDefinitionTGInfo;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventNoneAccumulatorsLookup;
+ (id)entryEventNoneCPUClusterAccumulatorsLookup;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventNoneLostPerformanceLookup;
+ (void)load;
- (BOOL)configureAccumulators;
- (BOOL)configureCPUClusterAccumulators;
- (BOOL)configureLostPerformance;
- (BOOL)configureTGAccumulators;
- (BOOL)configureTGCPUClusterAccumulators;
- (BOOL)configureTGInfo;
- (BOOL)setupStats;
- (BOOL)setupStatsForCPUCluster;
- (PLCLPCAgent)init;
- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4;
- (void)addToLookupTableAndCache:(unint64_t)a3 forEntryKey:(id)a4 andLookupMap:(id)a5;
- (void)constructCache:(id)a3 forEntryKey:(id)a4;
- (void)createLookupCache:(id)a3;
- (void)createLookupMaps;
- (void)initOperatorDependancies;
- (void)logCLPCCPUClusterAccumulators:(id)a3;
- (void)logCLPCLostPerformance:(id)a3;
- (void)logCLPCStatsAccumulators:(id)a3;
- (void)logCLPCTGAccumulators:(id)a3;
- (void)logCLPCTGCPUClusterAccumulators:(id)a3;
- (void)logCLPCTGInfo:(id)a3;
- (void)logLookupTable:(id)a3 withEntryKey:(id)a4;
- (void)setEntryKeys;
- (void)setUpDisplayStateChangeNotification;
- (void)setupTimer;
@end

@implementation PLCLPCAgent

void __25__PLCLPCAgent_setupTimer__block_invoke(uint64_t a1)
{
  v2 = PLLogCLPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Fired the 10 minute timer for CLPC Stats", buf, 2u);
  }

  v3 = MEMORY[0x277CCABB0];
  v4 = [*(a1 + 32) lastEntryDate];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [v3 numberWithDouble:?];

  v6 = [*(a1 + 32) provider];
  v19 = 0;
  [v6 setPreviousTimestamp:v5 error:&v19];
  v7 = v19;

  if (v7)
  {
    v8 = PLLogCLPC();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v18 = "Previous timestamp failed to set";
LABEL_16:
    _os_log_error_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_5;
  }

  v9 = [*(a1 + 32) provider];
  v10 = [v9 readDeltaStats:0];
  v11 = *(a1 + 32);
  v12 = *(v11 + 88);
  *(v11 + 88) = v10;

  v13 = *(a1 + 32);
  if (!v13[11])
  {
    v8 = PLLogCLPC();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v18 = "readDeltaStats failed to return results in 10 minute Timer";
    goto LABEL_16;
  }

  v14 = [v13 CPUClusterProvider];
  v15 = [v14 readDeltaStats:0];
  v16 = *(a1 + 32);
  v17 = *(v16 + 112);
  *(v16 + 112) = v15;

  if (!*(*(a1 + 32) + 112))
  {
    v8 = PLLogCLPC();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v18 = "readDeltaStats failed to return results in 10 minute Timer for CPU Cluster";
    goto LABEL_16;
  }

  v8 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) logCLPCLostPerformance:v8];
  [*(a1 + 32) logCLPCStatsAccumulators:v8];
  [*(a1 + 32) logCLPCCPUClusterAccumulators:v8];
  if ([MEMORY[0x277D3F180] fullMode])
  {
    [*(a1 + 32) logCLPCTGInfo:v8];
    [*(a1 + 32) logCLPCTGAccumulators:v8];
    [*(a1 + 32) logCLPCTGCPUClusterAccumulators:v8];
  }

  [*(a1 + 32) setLastEntryDate:v8];
  [*(a1 + 32) setLastCPUClusterEntryDate:v8];
LABEL_5:
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLCLPCAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLCLPCAgent)init
{
  if (shouldUseNewCLPCPath())
  {
    v6.receiver = self;
    v6.super_class = PLCLPCAgent;
    self = [(PLAgent *)&v6 init];
    v3 = self;
  }

  else
  {
    v4 = PLLogCLPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "New CLPC path is not available", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

+ (id)entryEventNoneDefinitions
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"LostPerformanceLookup";
  v3 = [a1 entryEventNoneLostPerformanceLookup];
  v10[0] = v3;
  v9[1] = @"AccumulatorsLookup";
  v4 = [a1 entryEventNoneAccumulatorsLookup];
  v10[1] = v4;
  v9[2] = @"CPUClusterAccumulatorsLookup";
  v5 = [a1 entryEventNoneCPUClusterAccumulatorsLookup];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventNoneLostPerformanceLookup
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C988;
  v13[1] = &unk_282C12AB0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"ObfuscatedValue";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventNoneAccumulatorsLookup
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C988;
  v13[1] = &unk_282C12AB0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"ObfuscatedValue";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventNoneCPUClusterAccumulatorsLookup
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C998;
  v13[1] = &unk_282C12AB0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"ObfuscatedValue";
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
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"LostPerformance";
  v3 = [a1 entryEventIntervalDefinitionLostPerformance];
  v13[0] = v3;
  v12[1] = @"Accumulators";
  v4 = [a1 entryEventIntervalDefinitionAccumulators];
  v13[1] = v4;
  v12[2] = @"CPUClusterAccumulators";
  v5 = [a1 entryEventIntervalDefinitionCPUClusterAccumulators];
  v13[2] = v5;
  v12[3] = @"TGInfo";
  v6 = [a1 entryEventIntervalDefinitionTGInfo];
  v13[3] = v6;
  v12[4] = @"TGAccumulators";
  v7 = [a1 entryEventIntervalDefinitionTGAccumulators];
  v13[4] = v7;
  v12[5] = @"TGCPUClusterAccumulators";
  v8 = [a1 entryEventIntervalDefinitionTGCPUClusterAccumulators];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventIntervalDefinitionLostPerformance
{
  v33[3] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_282C1C998;
  v31[1] = MEMORY[0x277CBEC38];
  v30[2] = *MEMORY[0x277D3F4F8];
  v31[2] = MEMORY[0x277CBEC38];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v33[0] = v23;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"timestampEnd";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_DateFormat];
  v29[0] = v21;
  v28[1] = @"DeviceType";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v29[1] = v19;
  v28[2] = @"ClusterIndex";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v29[2] = v17;
  v28[3] = @"APWakeTime";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v29[3] = v15;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v33[1] = v3;
  v32[2] = *MEMORY[0x277D3F500];
  v26[0] = @"key";
  v24[0] = @"ObfuscatedID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v24[1] = @"Transitions";
  v25[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v25[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v26[1] = @"value";
  v27[0] = v8;
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v27[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v33[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitionAccumulators
{
  v27[3] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1C998;
  v25[1] = MEMORY[0x277CBEC38];
  v24[2] = *MEMORY[0x277D3F4F8];
  v25[2] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v27[0] = v17;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"timestampEnd";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_DateFormat];
  v22[1] = @"APWakeTime";
  v23[0] = v15;
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v23[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v27[1] = v5;
  v26[2] = *MEMORY[0x277D3F500];
  v20[0] = @"key";
  v18 = @"ObfuscatedID";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v19 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v20[1] = @"value";
  v21[0] = v8;
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v21[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v27[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitionCPUClusterAccumulators
{
  v29[3] = *MEMORY[0x277D85DE8];
  v28[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v26[0] = *MEMORY[0x277D3F568];
  v26[1] = v2;
  v27[0] = &unk_282C1C998;
  v27[1] = MEMORY[0x277CBEC38];
  v26[2] = *MEMORY[0x277D3F4F8];
  v27[2] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v29[0] = v19;
  v28[1] = *MEMORY[0x277D3F540];
  v24[0] = @"timestampEnd";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_DateFormat];
  v25[0] = v17;
  v24[1] = @"ClusterIndex";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v25[1] = v15;
  v24[2] = @"APWakeTime";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v25[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v29[1] = v5;
  v28[2] = *MEMORY[0x277D3F500];
  v22[0] = @"key";
  v20 = @"ObfuscatedID";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v21 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v22[1] = @"value";
  v23[0] = v8;
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v23[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v29[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitionTGInfo
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v19 = *MEMORY[0x277D3F568];
  v20 = &unk_282C1C998;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"timestampEnd";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_DateFormat];
  v18[0] = v14;
  v17[1] = @"APWakeTime";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v18[1] = v3;
  v17[2] = @"TGID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v18[2] = v5;
  v17[3] = @"TGType";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v18[3] = v7;
  v17[4] = @"TGName";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v18[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventIntervalDefinitionTGAccumulators
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25[0] = *MEMORY[0x277D3F4E8];
  v23 = *MEMORY[0x277D3F568];
  v24 = &unk_282C1C998;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v26[0] = v20;
  v25[1] = *MEMORY[0x277D3F540];
  v21[0] = @"timestampEnd";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_DateFormat];
  v22[0] = v18;
  v21[1] = @"APWakeTime";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v22[1] = v16;
  v21[2] = @"TGID";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v22[2] = v14;
  v21[3] = @"ActiveTime";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v22[3] = v3;
  v21[4] = @"GPURunnableTime";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v22[4] = v5;
  v21[5] = @"ANEResidency";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v22[5] = v7;
  v21[6] = @"ANEEnergy";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v22[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
  v26[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventIntervalDefinitionTGCPUClusterAccumulators
{
  v28[2] = *MEMORY[0x277D85DE8];
  v27[0] = *MEMORY[0x277D3F4E8];
  v25 = *MEMORY[0x277D3F568];
  v26 = &unk_282C1C998;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v28[0] = v22;
  v27[1] = *MEMORY[0x277D3F540];
  v23[0] = @"timestampEnd";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_DateFormat];
  v24[0] = v20;
  v23[1] = @"APWakeTime";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v24[1] = v18;
  v23[2] = @"TGID";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v24[2] = v16;
  v23[3] = @"ClusterIndex";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v24[3] = v14;
  v23[4] = @"CPUResidency";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v24[4] = v3;
  v23[5] = @"CPUEnergy";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v24[5] = v5;
  v23[6] = @"CPUCycles";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v24[6] = v7;
  v23[7] = @"CPUInstructions";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v24[7] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:8];
  v28[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)initOperatorDependancies
{
  v46 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v3 = [MEMORY[0x277D3A138] createClient:&v43];
  v4 = v43;
  provider = self->_provider;
  self->_provider = v3;

  if (v4)
  {
    v6 = PLLogCLPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v4;
      v7 = "Error creating CLPC client %@";
LABEL_26:
      v18 = v6;
      v19 = 12;
LABEL_27:
      _os_log_error_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_ERROR, v7, buf, v19);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v42 = 0;
  v8 = [MEMORY[0x277D3A138] createClient:&v42];
  v4 = v42;
  CPUClusterProvider = self->_CPUClusterProvider;
  self->_CPUClusterProvider = v8;

  if (!v4)
  {
    v11 = objc_opt_new();
    selection = self->_selection;
    self->_selection = v11;

    if (self->_selection)
    {
      v13 = objc_opt_new();
      CPUClusterSelection = self->_CPUClusterSelection;
      self->_CPUClusterSelection = v13;

      if (self->_selection)
      {
        if ([(PLCLPCAgent *)self configureLostPerformance])
        {
          if ([(PLCLPCAgent *)self configureAccumulators])
          {
            if ([(PLCLPCAgent *)self configureCPUClusterAccumulators])
            {
              if ([MEMORY[0x277D3F180] fullMode])
              {
                v15 = PLLogCLPC();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "In full-mode. Configuring TG Stats", buf, 2u);
                }

                v16 = [(PLCLPCAgent *)self provider];
                v41 = 0;
                [v16 setNumberOfThreadGroups:&unk_282C12AC8 error:&v41];
                v4 = v41;

                if (v4)
                {
                  v6 = PLLogCLPC();
                  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_6;
                  }

                  *buf = 0;
                  v7 = "Failed to set up the number of TG";
LABEL_55:
                  v18 = v6;
                  v19 = 2;
                  goto LABEL_27;
                }

                if (![(PLCLPCAgent *)self configureTGInfo])
                {
                  v6 = PLLogCLPC();
                  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_6;
                  }

                  *buf = 0;
                  v7 = "TG Info Stats configuration failed";
                  goto LABEL_55;
                }

                if (![(PLCLPCAgent *)self configureTGAccumulators])
                {
                  v6 = PLLogCLPC();
                  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_6;
                  }

                  *buf = 0;
                  v7 = "TG Accumulators Stats configuration failed";
                  goto LABEL_55;
                }

                if (![(PLCLPCAgent *)self configureTGCPUClusterAccumulators])
                {
                  v6 = PLLogCLPC();
                  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_6;
                  }

                  *buf = 0;
                  v7 = "TG CPU Cluster Accumulators Stats configuration failed";
                  goto LABEL_55;
                }
              }

              v20 = [(PLCLPCAgent *)self provider];
              v21 = [(PLCLPCAgent *)self selection];
              v40 = 0;
              [v20 enableStats:v21 error:&v40];
              v4 = v40;

              if (v4)
              {
                v6 = PLLogCLPC();
                if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_6;
                }

                *buf = 138412290;
                v45 = v4;
                v7 = "enableStats failed with %@";
                goto LABEL_26;
              }

              v22 = [(PLCLPCAgent *)self CPUClusterProvider];
              v23 = [(PLCLPCAgent *)self CPUClusterSelection];
              v39 = 0;
              [v22 enableStats:v23 error:&v39];
              v4 = v39;

              if (v4)
              {
                v6 = PLLogCLPC();
                if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_6;
                }

                *buf = 138412290;
                v45 = v4;
                v7 = "enableStats failed for CPU Cluster with %@";
                goto LABEL_26;
              }

              [(PLCLPCAgent *)self setEntryKeys];
              v24 = [MEMORY[0x277CBEAA8] monotonicDate];
              [(PLCLPCAgent *)self setLastEntryDate:v24];

              v25 = [MEMORY[0x277CBEAA8] monotonicDate];
              [(PLCLPCAgent *)self setLastCPUClusterEntryDate:v25];

              v26 = MEMORY[0x277CCABB0];
              v27 = [(PLCLPCAgent *)self lastEntryDate];
              [v27 timeIntervalSinceReferenceDate];
              v28 = [v26 numberWithDouble:?];

              v29 = [(PLCLPCAgent *)self provider];
              v38 = 0;
              [v29 setPreviousTimestamp:v28 error:&v38];
              v4 = v38;

              if (v4)
              {
                v30 = PLLogCLPC();
                if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_46;
                }

                *buf = 0;
                v37 = "Previous timestamp failed to set";
              }

              else
              {
                v31 = [(PLCLPCAgent *)self provider];
                v32 = [v31 readDeltaStats:0];
                readResults = self->_readResults;
                self->_readResults = v32;

                if (self->_readResults)
                {
                  v34 = [(PLCLPCAgent *)self CPUClusterProvider];
                  v35 = [v34 readDeltaStats:0];
                  CPUClusterReadResults = self->_CPUClusterReadResults;
                  self->_CPUClusterReadResults = v35;

                  if (self->_CPUClusterReadResults)
                  {
                    [(PLCLPCAgent *)self createLookupMaps];
                    [(PLCLPCAgent *)self setupTimer];
                    [(PLCLPCAgent *)self setUpDisplayStateChangeNotification];
                    goto LABEL_47;
                  }

                  v30 = PLLogCLPC();
                  if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
LABEL_46:

LABEL_47:
                    goto LABEL_7;
                  }

                  *buf = 0;
                  v37 = "readDeltaStats failed to return results for CPU Cluster";
                }

                else
                {
                  v30 = PLLogCLPC();
                  if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_46;
                  }

                  *buf = 0;
                  v37 = "readDeltaStats failed to return results";
                }
              }

              _os_log_error_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_ERROR, v37, buf, 2u);
              goto LABEL_46;
            }

            v4 = PLLogCLPC();
            if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_7;
            }

            *buf = 0;
            v17 = "CPU Cluster Accumulators configuration failed";
          }

          else
          {
            v4 = PLLogCLPC();
            if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_7;
            }

            *buf = 0;
            v17 = "Accumulators configuration failed";
          }
        }

        else
        {
          v4 = PLLogCLPC();
          if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

          *buf = 0;
          v17 = "Lost Performance configuration failed";
        }
      }

      else
      {
        v4 = PLLogCLPC();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        *buf = 0;
        v17 = "Error creating selection for CPU Cluster";
      }
    }

    else
    {
      v4 = PLLogCLPC();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      *buf = 0;
      v17 = "Error creating selection";
    }

    _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_7;
  }

  v6 = PLLogCLPC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v45 = v4;
    v7 = "Error creating CLPC client for CPU Cluster %@";
    goto LABEL_26;
  }

LABEL_6:

LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)configureLostPerformance
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(PLCLPCAgent *)self selection];
  v7 = 0;
  [v2 selectStatsOfSchema:4 error:&v7];
  v3 = v7;

  if (v3)
  {
    v4 = PLLogCLPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "selectStat for Lost Perf failed with %@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 == 0;
}

- (BOOL)configureAccumulators
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(PLCLPCAgent *)self selection];
  v25 = 0;
  [v3 selectStat:0x100000000 error:&v25];
  v4 = v25;

  if (v4)
  {
    v5 = PLLogCLPC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v4;
      v6 = "selectStat failed for Package Power Zone with %@";
LABEL_28:
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
    }
  }

  else
  {
    v7 = [(PLCLPCAgent *)self selection];
    v24 = 0;
    [v7 selectStat:0x100000002 error:&v24];
    v4 = v24;

    if (v4)
    {
      v5 = PLLogCLPC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v4;
        v6 = "selectStat failed for Package Energy Estimate with %@";
        goto LABEL_28;
      }
    }

    else
    {
      v8 = [(PLCLPCAgent *)self selection];
      v23 = 0;
      [v8 selectStat:0x100000003 error:&v23];
      v4 = v23;

      if (v4)
      {
        v5 = PLLogCLPC();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v4;
          v6 = "selectStat failed for CPU Energy Estimate with %@";
          goto LABEL_28;
        }
      }

      else
      {
        v9 = [(PLCLPCAgent *)self selection];
        v22 = 0;
        [v9 selectStat:0x100000004 error:&v22];
        v4 = v22;

        if (v4)
        {
          v5 = PLLogCLPC();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v4;
            v6 = "selectStat failed for ANE Energy Estimate with %@";
            goto LABEL_28;
          }
        }

        else
        {
          v10 = [(PLCLPCAgent *)self selection];
          v21 = 0;
          [v10 selectStat:0x100000005 error:&v21];
          v4 = v21;

          if (v4)
          {
            v5 = PLLogCLPC();
            if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v27 = v4;
              v6 = "selectStat failed for GPU Energy Estimate with %@";
              goto LABEL_28;
            }
          }

          else
          {
            v11 = [(PLCLPCAgent *)self selection];
            v20 = 0;
            [v11 selectStat:0x100000007 error:&v20];
            v4 = v20;

            if (v4)
            {
              v5 = PLLogCLPC();
              if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v27 = v4;
                v6 = "selectStat failed for Active Background SFI with %@";
                goto LABEL_28;
              }
            }

            else
            {
              v12 = [(PLCLPCAgent *)self selection];
              v19 = 0;
              [v12 selectStat:0x100000008 error:&v19];
              v4 = v19;

              if (v4)
              {
                v5 = PLLogCLPC();
                if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v27 = v4;
                  v6 = "selectStat failed for Active Utility DVFM  with %@";
                  goto LABEL_28;
                }
              }

              else
              {
                v13 = [(PLCLPCAgent *)self selection];
                v18 = 0;
                [v13 selectStat:0x100000009 error:&v18];
                v4 = v18;

                if (v4)
                {
                  v5 = PLLogCLPC();
                  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v27 = v4;
                    v6 = "selectStat failed for Active Utility SFI with %@";
                    goto LABEL_28;
                  }
                }

                else
                {
                  v14 = [(PLCLPCAgent *)self selection];
                  v17 = 0;
                  [v14 selectStat:0x10000000ALL error:&v17];
                  v4 = v17;

                  if (!v4)
                  {
                    result = 1;
                    goto LABEL_30;
                  }

                  v5 = PLLogCLPC();
                  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v27 = v4;
                    v6 = "selectStat failed for Thread Group Power Limiter with %@";
                    goto LABEL_28;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  result = 0;
LABEL_30:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)configureCPUClusterAccumulators
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(PLCLPCAgent *)self CPUClusterSelection];
  v7 = 0;
  [v2 selectStatsOfSchema:3 error:&v7];
  v3 = v7;

  if (v3)
  {
    v4 = PLLogCLPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "selectStat failed for CPU Cluster Accumulator with %@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 == 0;
}

- (BOOL)configureTGInfo
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(PLCLPCAgent *)self selection];
  v7 = 0;
  [v2 selectStatsOfSchema:8 error:&v7];
  v3 = v7;

  if (v3)
  {
    v4 = PLLogCLPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "selectStat failed for TG Info with %@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 == 0;
}

- (BOOL)configureTGAccumulators
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(PLCLPCAgent *)self selection];
  v7 = 0;
  [v2 selectStatsOfSchema:9 error:&v7];
  v3 = v7;

  if (v3)
  {
    v4 = PLLogCLPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "selectStat failed for TG Accumulators with %@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 == 0;
}

- (BOOL)configureTGCPUClusterAccumulators
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(PLCLPCAgent *)self selection];
  v7 = 0;
  [v2 selectStatsOfSchema:10 error:&v7];
  v3 = v7;

  if (v3)
  {
    v4 = PLLogCLPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v3;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "selectStat failed for TG CPU Cluster Accumulator with %@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3 == 0;
}

- (void)setEntryKeys
{
  v2 = *MEMORY[0x277D3F5E0];
  v3 = [(PLOperator *)PLCLPCAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"LostPerformanceLookup"];
  v4 = lostPerformanceLookupEntryKey;
  lostPerformanceLookupEntryKey = v3;

  v5 = [(PLOperator *)PLCLPCAgent entryKeyForType:v2 andName:@"AccumulatorsLookup"];
  v6 = accumulatorsLookupEntryKey;
  accumulatorsLookupEntryKey = v5;

  v7 = [(PLOperator *)PLCLPCAgent entryKeyForType:v2 andName:@"CPUClusterAccumulatorsLookup"];
  cpuClusterAccumulatorsLookupEntryKey = v7;

  MEMORY[0x2821F96F8](v7);
}

- (void)createLookupMaps
{
  v3 = [(PLCLPCAgent *)self setupStats];
  v4 = [(PLCLPCAgent *)self setupStatsForCPUCluster];
  if (v3)
  {
    if (v4)
    {
      return;
    }

    v5 = PLLogCLPC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      v6 = "setupStatsForCPUCluster failed";
      v7 = &v8;
LABEL_9:
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    }
  }

  else
  {
    v5 = PLLogCLPC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "setupStats failed";
      v7 = buf;
      goto LABEL_9;
    }
  }
}

- (BOOL)setupStats
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__16;
  readResults = self->_readResults;
  v6[4] = __Block_byref_object_dispose__16;
  v7 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__PLCLPCAgent_setupStats__block_invoke;
  v5[3] = &unk_278261780;
  v5[5] = v6;
  v5[6] = &v8;
  v5[4] = self;
  [(CLPCReportingReadResult *)readResults enumerate:v5];
  v3 = *(v9 + 24);
  _Block_object_dispose(v6, 8);

  _Block_object_dispose(&v8, 8);
  return (v3 & 1) == 0;
}

uint64_t __25__PLCLPCAgent_setupStats__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 == 4)
  {
    v6 = &lostPerformanceLookupEntryKey;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v6 = &accumulatorsLookupEntryKey;
LABEL_5:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *v6);
    v7 = [v5 schema];
    v8 = [v7 columns];

    [*(a1 + 32) constructCache:v8 forEntryKey:*(*(*(a1 + 40) + 8) + 40)];
    goto LABEL_9;
  }

  v9 = PLLogCLPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = a2;
    _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_INFO, "Enumerating on schema %lu not permitted", &v12, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)setupStatsForCPUCluster
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__16;
  CPUClusterReadResults = self->_CPUClusterReadResults;
  v6[4] = __Block_byref_object_dispose__16;
  v7 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__PLCLPCAgent_setupStatsForCPUCluster__block_invoke;
  v5[3] = &unk_278261780;
  v5[5] = v6;
  v5[6] = &v8;
  v5[4] = self;
  [(CLPCReportingReadResult *)CPUClusterReadResults enumerate:v5];
  v3 = *(v9 + 24);
  _Block_object_dispose(v6, 8);

  _Block_object_dispose(&v8, 8);
  return (v3 & 1) == 0;
}

uint64_t __38__PLCLPCAgent_setupStatsForCPUCluster__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 == 3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), cpuClusterAccumulatorsLookupEntryKey);
    v6 = [v5 schema];
    v7 = [v6 columns];

    [*(a1 + 32) constructCache:v7 forEntryKey:*(*(*(a1 + 40) + 8) + 40)];
  }

  else
  {
    v8 = PLLogCLPC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 134217984;
      v12 = a2;
      _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_INFO, "Enumerating on schema %lu not permitted in setupStats for CPU Cluster", &v11, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)setupTimer
{
  v3 = objc_alloc(MEMORY[0x277D3F250]);
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:600.0];
  v5 = [(PLOperator *)self workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __25__PLCLPCAgent_setupTimer__block_invoke;
  v10[3] = &unk_278259C40;
  v10[4] = self;
  v6 = [v3 initWithFireDate:v4 withInterval:1 withTolerance:0 repeats:v5 withUserInfo:v10 withQueue:600.0 withBlock:0.0];
  tenMinuteTimer = self->_tenMinuteTimer;
  self->_tenMinuteTimer = v6;

  v8 = PLLogCLPC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Initialized a timer for CLPC Stats", v9, 2u);
  }
}

- (void)setUpDisplayStateChangeNotification
{
  if ([MEMORY[0x277D3F180] taskMode])
  {
    v3 = [MEMORY[0x277D3F220] sharedInstance];
    [(PLCLPCAgent *)self setStateTracker:v3];

    v4 = [(PLCLPCAgent *)self stateTracker];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__PLCLPCAgent_setUpDisplayStateChangeNotification__block_invoke;
    v8[3] = &unk_2782591D0;
    v8[4] = self;
    [v4 registerForStates:4 withOperator:self withBlock:v8];

    v5 = PLLogCLPC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      v6 = "Initialized display state notification for CPU Cluster Stats";
LABEL_7:
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, v6, v7, 2u);
    }
  }

  else
  {
    v5 = PLLogCLPC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      v6 = "Skipping display state change notification because we are not in task mode";
      goto LABEL_7;
    }
  }
}

void __50__PLCLPCAgent_setUpDisplayStateChangeNotification__block_invoke(uint64_t a1)
{
  v2 = PLLogCLPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Display state change notification", buf, 2u);
  }

  v3 = [*(a1 + 32) CPUClusterProvider];
  v4 = [v3 readDeltaStats:0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 112);
  *(v5 + 112) = v4;

  if (*(*(a1 + 32) + 112))
  {
    v7 = [MEMORY[0x277CBEAA8] monotonicDate];
    [*(a1 + 32) logCLPCCPUClusterAccumulators:v7];
    [*(a1 + 32) setLastCPUClusterEntryDate:v7];
  }

  else
  {
    v7 = PLLogCLPC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "readDeltaStats failed to return results in screen state notification for CPU Cluster", v8, 2u);
    }
  }
}

- (void)logLookupTable:(id)a3 withEntryKey:(id)a4
{
  v34 = self;
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if ([v6 isEqualToString:lostPerformanceLookupEntryKey])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v36 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v46;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v45 + 1) + 8 * i);
          if ([v13 type] == 3)
          {
            v14 = [v13 valueID];
            v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
            [v15 setObject:v14 forKeyedSubscript:@"ObfuscatedValue"];
            [v7 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v10);
    }
  }

  else if ([v6 isEqualToString:accumulatorsLookupEntryKey])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v36 = v5;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v42;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v41 + 1) + 8 * j);
          if ([v21 type] == 1 && objc_msgSend(v21, "statID") != 1)
          {
            v22 = [v21 valueID];
            v23 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
            [v23 setObject:v22 forKeyedSubscript:@"ObfuscatedValue"];
            [v7 addObject:v23];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v18);
    }
  }

  else
  {
    if (![v6 isEqualToString:cpuClusterAccumulatorsLookupEntryKey])
    {
      goto LABEL_36;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = v5;
    v24 = v5;
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v37 + 1) + 8 * k);
          if ([v29 type] == 1 && objc_msgSend(v29, "statID") != 1)
          {
            v30 = [v29 valueID];
            v31 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
            [v31 setObject:v30 forKeyedSubscript:@"ObfuscatedValue"];
            [v7 addObject:v31];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v26);
    }
  }

  v5 = v36;

LABEL_36:
  if ([v7 count])
  {
    v49 = v6;
    v50 = v7;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    [v35 logEntries:v32 withGroupID:v6];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)createLookupCache:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D3F2A0] sharedCore];
  v5 = [v4 storage];
  v6 = [v5 entriesForKey:v3];

  v7 = PLLogCLPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v59 = v3;
    v60 = 2048;
    v61 = [v6 count];
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Entries  in %@ lookup table %lu", buf, 0x16u);
  }

  if ([v3 isEqualToString:lostPerformanceLookupEntryKey])
  {
    v42 = v3;
    v8 = objc_opt_new();
    v9 = qword_2811F6390;
    qword_2811F6390 = v8;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v41 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v52;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v52 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v51 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:{@"ObfuscatedValue", v41}];
          v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "entryID")}];
          [qword_2811F6390 setObject:v17 forKeyedSubscript:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v12);
    }

    v18 = PLLogCLPC();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_34;
    }

    *buf = 138412290;
    v59 = qword_2811F6390;
    v19 = "Lost Perf Lookup map is %@";
LABEL_33:
    _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, v19, buf, 0xCu);
LABEL_34:
    v6 = v41;
    v3 = v42;

    goto LABEL_35;
  }

  if ([v3 isEqualToString:accumulatorsLookupEntryKey])
  {
    v42 = v3;
    v20 = objc_opt_new();
    v21 = qword_2811F6398;
    qword_2811F6398 = v20;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v41 = v6;
    v22 = v6;
    v23 = [v22 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v48;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v47 + 1) + 8 * j);
          v28 = [v27 objectForKeyedSubscript:{@"ObfuscatedValue", v41}];
          v29 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v27, "entryID")}];
          [qword_2811F6398 setObject:v29 forKeyedSubscript:v28];
        }

        v24 = [v22 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v24);
    }

    v18 = PLLogCLPC();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_34;
    }

    *buf = 138412290;
    v59 = qword_2811F6398;
    v19 = "Accumulators Lookup map is %@";
    goto LABEL_33;
  }

  if ([v3 isEqualToString:cpuClusterAccumulatorsLookupEntryKey])
  {
    v42 = v3;
    v30 = objc_opt_new();
    v31 = qword_2811F63A0;
    qword_2811F63A0 = v30;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = v6;
    v32 = v6;
    v33 = [v32 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v44;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v43 + 1) + 8 * k);
          v38 = [v37 objectForKeyedSubscript:{@"ObfuscatedValue", v41}];
          v39 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v37, "entryID")}];
          [qword_2811F63A0 setObject:v39 forKeyedSubscript:v38];
        }

        v34 = [v32 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v34);
    }

    v18 = PLLogCLPC();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_34;
    }

    *buf = 138412290;
    v59 = qword_2811F63A0;
    v19 = "CPU Cluster Stats Accumulators Lookup map is %@";
    goto LABEL_33;
  }

LABEL_35:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)constructCache:(id)a3 forEntryKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D3F2A0] sharedCore];
  v8 = [v7 storage];
  v9 = [v8 countOfEntriesForKey:v6];

  if (!v9)
  {
    [(PLCLPCAgent *)self logLookupTable:v10 withEntryKey:v6];
  }

  [(PLCLPCAgent *)self createLookupCache:v6];
}

- (void)addToLookupTableAndCache:(unint64_t)a3 forEntryKey:(id)a4 andLookupMap:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = PLLogCLPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138412290;
    v22 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "adding a new lookup ID in %@", &v21, 0xCu);
  }

  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v11 setObject:v12 forKeyedSubscript:@"ObfuscatedValue"];

  [(PLOperator *)self logEntry:v11];
  v13 = PLLogCLPC();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v21 = 134218242;
    v22 = a3;
    v23 = 2112;
    v24 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "added lookup ID %llu in %@", &v21, 0x16u);
  }

  v14 = PLLogCLPC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138412290;
    v22 = v9;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "adding a new lookup ID in %@", &v21, 0xCu);
  }

  v15 = [(PLOperator *)self storage];
  v16 = [v15 lastEntryForKey:v8];

  v17 = [v16 objectForKeyedSubscript:@"ObfuscatedValue"];
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "entryID")}];
  [v9 setObject:v18 forKeyedSubscript:v17];

  v19 = PLLogCLPC();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138412290;
    v22 = v9;
    _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "Lookup map is %@", &v21, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)logCLPCLostPerformance:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLCLPCAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"LostPerformance"];
  readResults = self->_readResults;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__PLCLPCAgent_logCLPCLostPerformance___block_invoke;
  v9[3] = &unk_2782617A8;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  [(CLPCReportingReadResult *)readResults enumerate:v9];
}

uint64_t __38__PLCLPCAgent_logCLPCLostPerformance___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (a2 == 4)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = [v4 rows];
    v52 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (!v52)
    {
      goto LABEL_33;
    }

    v51 = *v59;
    *&v6 = 134217984;
    v49 = v6;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v59 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v7;
        v8 = *(*(&v58 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x277D3F1E8]);
        v10 = *(a1 + 32);
        v11 = [*(a1 + 40) lastEntryDate];
        v12 = [v9 initWithEntryKey:v10 withDate:v11];

        v56 = v12;
        [v12 setObject:*(a1 + 48) forKeyedSubscript:@"timestampEnd"];
        if ([v8 count])
        {
          v13 = 0;
          v57 = 0;
          v55 = 0;
          while (1)
          {
            v14 = [v8 objectAtIndexedSubscript:{v13, v49}];
            v15 = [v14 unsignedLongLongValue];

            v16 = [v5 schema];
            v17 = [v16 columns];
            v18 = [v17 objectAtIndexedSubscript:v13];
            v19 = [v18 type];

            v20 = [v5 schema];
            v21 = [v20 columns];
            v22 = [v21 objectAtIndexedSubscript:v13];
            v23 = [v22 valueID];
            v24 = [v23 unsignedLongLongValue];

            if (v19 > 2)
            {
              if (v19 == 3)
              {
                v57 = v15;
              }

              else if (v19 == 4)
              {
                if (v57)
                {
                  v33 = qword_2811F6390;
                  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
                  v35 = [v33 objectForKeyedSubscript:v34];

                  if (!v35)
                  {
                    [*(a1 + 40) addToLookupTableAndCache:v24 forEntryKey:lostPerformanceLookupEntryKey andLookupMap:qword_2811F6390];
                    v36 = PLLogCLPC();
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
                    {
                      *buf = v49;
                      v65 = v24;
                      _os_log_fault_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_FAULT, "Missing Lost Performance lookup entry for ID %llu:", buf, 0xCu);
                    }
                  }

                  v62[0] = @"ObfuscatedID";
                  v37 = qword_2811F6390;
                  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
                  v39 = [v37 objectForKeyedSubscript:v38];
                  v62[1] = @"Transitions";
                  v63[0] = v39;
                  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
                  v63[1] = v40;
                  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];

                  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v57];
                  [v56 setObject:v42 forKeyedSubscript:v41];

                  v57 = 0;
                  v55 = v41;
                }

                else
                {
                  v57 = 0;
                }
              }

              goto LABEL_28;
            }

            if (v19 == 1)
            {
              break;
            }

            if (v19 == 2)
            {
              v25 = [v5 schema];
              v26 = [v25 columns];
              v27 = [v26 objectAtIndexedSubscript:v13];
              v28 = [v27 metadataType];

              if (v28 == 2)
              {
                v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
                v30 = v56;
                v31 = v29;
                v32 = @"DeviceType";
              }

              else
              {
                v43 = [v5 schema];
                v44 = [v43 columns];
                v45 = [v44 objectAtIndexedSubscript:v13];
                v46 = [v45 metadataType];

                if (v46 != 1)
                {
                  goto LABEL_28;
                }

                v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
                v30 = v56;
                v31 = v29;
                v32 = @"ClusterIndex";
              }

              goto LABEL_23;
            }

LABEL_28:
            if ([v8 count] <= ++v13)
            {
              goto LABEL_31;
            }
          }

          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
          v30 = v56;
          v31 = v29;
          v32 = @"APWakeTime";
LABEL_23:
          [v30 setObject:v31 forKeyedSubscript:v32];

          goto LABEL_28;
        }

        v55 = 0;
LABEL_31:
        [*(a1 + 40) logEntry:{v56, v49}];

        v7 = v53 + 1;
      }

      while (v53 + 1 != v52);
      v52 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (!v52)
      {
LABEL_33:

        break;
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)logCLPCStatsAccumulators:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLCLPCAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"Accumulators"];
  readResults = self->_readResults;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__PLCLPCAgent_logCLPCStatsAccumulators___block_invoke;
  v9[3] = &unk_2782617A8;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  [(CLPCReportingReadResult *)readResults enumerate:v9];
}

uint64_t __40__PLCLPCAgent_logCLPCStatsAccumulators___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2 == 1)
  {
    v6 = objc_alloc(MEMORY[0x277D3F1E8]);
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) lastEntryDate];
    v9 = [v6 initWithEntryKey:v7 withDate:v8];

    v42 = a1;
    v10 = *(a1 + 48);
    v11 = v9;
    [v9 setObject:v10 forKeyedSubscript:@"timestampEnd"];
    v12 = [v5 rows];
    v13 = [v12 objectAtIndexedSubscript:0];

    v15 = v5;
    if ([v13 count])
    {
      v16 = 0;
      v43 = 0;
      *&v14 = 134217984;
      v41 = v14;
      do
      {
        v17 = [v13 objectAtIndexedSubscript:{v16, v41}];
        v18 = [v17 unsignedLongLongValue];

        if (v18)
        {
          v19 = [v15 schema];
          v20 = [v19 columns];
          v21 = [v20 objectAtIndexedSubscript:v16];
          v22 = [v21 statID];

          if (v22 == 1)
          {
            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18];
            [v11 setObject:v23 forKeyedSubscript:@"APWakeTime"];
          }

          else
          {
            v24 = v15;
            v25 = v11;
            v26 = [v24 schema];
            v27 = [v26 columns];
            v28 = [v27 objectAtIndexedSubscript:v16];
            v29 = [v28 valueID];
            v30 = [v29 unsignedLongLongValue];

            v31 = qword_2811F6398;
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
            v33 = [v31 objectForKeyedSubscript:v32];

            if (!v33)
            {
              [*(v42 + 40) addToLookupTableAndCache:v30 forEntryKey:accumulatorsLookupEntryKey andLookupMap:qword_2811F6398];
              v34 = PLLogCLPC();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
              {
                *buf = v41;
                v47 = v30;
                _os_log_fault_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_FAULT, "Missing Accumulators lookup entry for ID %llu:", buf, 0xCu);
              }
            }

            v44 = @"ObfuscatedID";
            v35 = qword_2811F6398;
            v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
            v37 = [v35 objectForKeyedSubscript:v36];
            v45 = v37;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];

            v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18];
            v11 = v25;
            [v25 setObject:v23 forKeyedSubscript:v38];
            v43 = v38;
            v15 = v5;
          }
        }

        ++v16;
      }

      while ([v13 count] > v16);
    }

    else
    {
      v43 = 0;
    }

    [*(v42 + 40) logEntry:v11];

    v5 = v15;
  }

  v39 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)logCLPCCPUClusterAccumulators:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLCLPCAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"CPUClusterAccumulators"];
  CPUClusterReadResults = self->_CPUClusterReadResults;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__PLCLPCAgent_logCLPCCPUClusterAccumulators___block_invoke;
  v9[3] = &unk_2782617A8;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  [(CLPCReportingReadResult *)CPUClusterReadResults enumerate:v9];
}

uint64_t __45__PLCLPCAgent_logCLPCCPUClusterAccumulators___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (a2 == 3)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [v4 rows];
    v46 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (!v46)
    {
      goto LABEL_27;
    }

    v45 = *v52;
    *&v6 = 134217984;
    v43 = v6;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v52 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v7;
        v8 = *(*(&v51 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x277D3F1E8]);
        v10 = *(a1 + 32);
        v11 = [*(a1 + 40) lastCPUClusterEntryDate];
        v12 = [v9 initWithEntryKey:v10 withDate:v11];

        v50 = v12;
        [v12 setObject:*(a1 + 48) forKeyedSubscript:@"timestampEnd"];
        if ([v8 count])
        {
          v13 = 0;
          v49 = 0;
          while (1)
          {
            v14 = [v8 objectAtIndexedSubscript:{v13, v43}];
            v15 = [v14 unsignedLongLongValue];

            v16 = [v5 schema];
            v17 = [v16 columns];
            v18 = [v17 objectAtIndexedSubscript:v13];
            v19 = [v18 type];

            v20 = [v5 schema];
            v21 = [v20 columns];
            v22 = [v21 objectAtIndexedSubscript:v13];
            v23 = [v22 valueID];
            v24 = [v23 unsignedLongLongValue];

            if (v19 == 2)
            {
              break;
            }

            if (v19 == 1)
            {
              v25 = [v5 schema];
              v26 = [v25 columns];
              v27 = [v26 objectAtIndexedSubscript:v13];
              v28 = [v27 statID];

              if (v28 == 1)
              {
                v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
                v30 = v50;
                v31 = v29;
                v32 = @"APWakeTime";
                goto LABEL_14;
              }

              if (!v15)
              {
                goto LABEL_16;
              }

              v33 = qword_2811F63A0;
              v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
              v35 = [v33 objectForKeyedSubscript:v34];

              if (!v35)
              {
                [*(a1 + 40) addToLookupTableAndCache:v24 forEntryKey:cpuClusterAccumulatorsLookupEntryKey andLookupMap:qword_2811F63A0];
                v36 = PLLogCLPC();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
                {
                  *buf = v43;
                  v58 = v24;
                  _os_log_fault_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_FAULT, "Missing CPU Cluster Accumulators lookup entry for ID %llu:", buf, 0xCu);
                }
              }

              v55 = @"ObfuscatedID";
              v37 = qword_2811F63A0;
              v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
              v39 = [v37 objectForKeyedSubscript:v38];
              v56 = v39;
              v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];

              v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
              [v50 setObject:v29 forKeyedSubscript:v40];
              v49 = v40;
LABEL_15:
            }

LABEL_16:
            if ([v8 count] <= ++v13)
            {
              goto LABEL_25;
            }
          }

          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
          v30 = v50;
          v31 = v29;
          v32 = @"ClusterIndex";
LABEL_14:
          [v30 setObject:v31 forKeyedSubscript:v32];
          goto LABEL_15;
        }

        v49 = 0;
LABEL_25:
        [*(a1 + 40) logEntry:{v50, v43}];

        v7 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v46 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (!v46)
      {
LABEL_27:

        break;
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)logCLPCTGInfo:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLCLPCAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"TGInfo"];
  readResults = self->_readResults;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__PLCLPCAgent_logCLPCTGInfo___block_invoke;
  v9[3] = &unk_2782617A8;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  [(CLPCReportingReadResult *)readResults enumerate:v9];
}

uint64_t __29__PLCLPCAgent_logCLPCTGInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (a2 == 8)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [v4 rows];
    v34 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (!v34)
    {
      goto LABEL_35;
    }

    v33 = *v39;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v6;
        v7 = *(*(&v38 + 1) + 8 * v6);
        v8 = objc_alloc(MEMORY[0x277D3F1E8]);
        v9 = *(a1 + 32);
        v10 = [*(a1 + 40) lastEntryDate];
        v11 = [v8 initWithEntryKey:v9 withDate:v10];

        [v11 setObject:*(a1 + 48) forKeyedSubscript:@"timestampEnd"];
        if ([v7 count])
        {
          v12 = 0;
          while (1)
          {
            v13 = [v7 objectAtIndexedSubscript:v12];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v15 = [v7 objectAtIndexedSubscript:v12];
            v16 = v15;
            if (isKindOfClass)
            {
              v17 = [v15 unsignedLongLongValue];

              v18 = 0;
            }

            else
            {
              objc_opt_class();
              v19 = objc_opt_isKindOfClass();

              if (v19)
              {
                v18 = [v7 objectAtIndexedSubscript:v12];
              }

              else
              {
                v20 = PLLogCLPC();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_ERROR, "Invalid value sent for Thread Group Info", buf, 2u);
                }

                v18 = 0;
              }

              v17 = 0;
            }

            v21 = [v5 schema];
            v22 = [v21 columns];
            v23 = [v22 objectAtIndexedSubscript:v12];
            v24 = [v23 statID];

            if (v24 > 0x7FFFFFFFFLL)
            {
              if (v24 != 0x800000000)
              {
                if (v24 == 0x800000001)
                {
                  if (v18)
                  {
                    [v11 setObject:v18 forKeyedSubscript:@"TGName"];
                  }

                  else
                  {
                    v29 = PLLogCLPC();
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_FAULT, "TG Stats sent invalid value for CLPCReportingStatID_Name", buf, 2u);
                    }
                  }
                }

                goto LABEL_28;
              }

              v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v17];
              v26 = v11;
              v27 = v25;
              v28 = @"TGType";
              goto LABEL_27;
            }

            if (v24 == 1)
            {
              break;
            }

            if (v24 == 2)
            {
              v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v17];
              v26 = v11;
              v27 = v25;
              v28 = @"TGID";
LABEL_27:
              [v26 setObject:v27 forKeyedSubscript:v28];
            }

LABEL_28:

            if ([v7 count] <= ++v12)
            {
              goto LABEL_33;
            }
          }

          v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v17];
          v26 = v11;
          v27 = v25;
          v28 = @"APWakeTime";
          goto LABEL_27;
        }

LABEL_33:
        [*(a1 + 40) logEntry:v11];

        v6 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (!v34)
      {
LABEL_35:

        break;
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)logCLPCTGAccumulators:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLCLPCAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"TGAccumulators"];
  readResults = self->_readResults;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__PLCLPCAgent_logCLPCTGAccumulators___block_invoke;
  v9[3] = &unk_2782617A8;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  [(CLPCReportingReadResult *)readResults enumerate:v9];
}

uint64_t __37__PLCLPCAgent_logCLPCTGAccumulators___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2 == 9)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [v5 rows];
    v27 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v27)
    {
      goto LABEL_26;
    }

    v25 = *v30;
    v26 = a1;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v7;
        v8 = *(*(&v29 + 1) + 8 * v7);
        v9 = objc_alloc(MEMORY[0x277D3F1E8]);
        v10 = *(a1 + 32);
        v11 = [*(a1 + 40) lastEntryDate];
        v12 = [v9 initWithEntryKey:v10 withDate:v11];

        [v12 setObject:*(a1 + 48) forKeyedSubscript:@"timestampEnd"];
        if ([v8 count])
        {
          for (i = 0; [v8 count] > i; ++i)
          {
            v14 = [v8 objectAtIndexedSubscript:i];
            v15 = [v14 unsignedLongLongValue];

            v16 = [v6 schema];
            v17 = [v16 columns];
            v18 = [v17 objectAtIndexedSubscript:i];
            v19 = [v18 statID];

            if (v19 > 0x900000000)
            {
              switch(v19)
              {
                case 0x900000001:
                  v20 = @"GPURunnableTime";
                  goto LABEL_22;
                case 0x900000002:
                  v20 = @"ANEResidency";
                  goto LABEL_22;
                case 0x900000003:
                  v20 = @"ANEEnergy";
                  goto LABEL_22;
              }
            }

            else
            {
              switch(v19)
              {
                case 1:
                  v20 = @"APWakeTime";
                  goto LABEL_22;
                case 2:
                  v20 = @"TGID";
                  goto LABEL_22;
                case 0x900000000:
                  v20 = @"ActiveTime";
LABEL_22:
                  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
                  [v12 setObject:v21 forKeyedSubscript:v20];

                  break;
              }
            }
          }
        }

        a1 = v26;
        [*(v26 + 40) logEntry:v12];

        v7 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v27)
      {
LABEL_26:

        break;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)logCLPCTGCPUClusterAccumulators:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLCLPCAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"TGCPUClusterAccumulators"];
  readResults = self->_readResults;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__PLCLPCAgent_logCLPCTGCPUClusterAccumulators___block_invoke;
  v9[3] = &unk_2782617A8;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  [(CLPCReportingReadResult *)readResults enumerate:v9];
}

uint64_t __47__PLCLPCAgent_logCLPCTGCPUClusterAccumulators___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2 == 10)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [v5 rows];
    v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v35)
    {
      goto LABEL_29;
    }

    v33 = *v37;
    v34 = a1;
    while (1)
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = objc_alloc(MEMORY[0x277D3F1E8]);
        v10 = *(a1 + 32);
        v11 = [*(a1 + 40) lastEntryDate];
        v12 = [v9 initWithEntryKey:v10 withDate:v11];

        [v12 setObject:*(a1 + 48) forKeyedSubscript:@"timestampEnd"];
        if ([v8 count])
        {
          v13 = 0;
          while (1)
          {
            v14 = [v8 objectAtIndexedSubscript:v13];
            v15 = [v14 unsignedLongLongValue];

            v16 = [v6 schema];
            v17 = [v16 columns];
            v18 = [v17 objectAtIndexedSubscript:v13];
            v19 = [v18 type];

            if (v19 == 3)
            {
              v25 = [v6 schema];
              v26 = [v25 columns];
              v27 = [v26 objectAtIndexedSubscript:v13];
              v28 = [v27 statID];

              v24 = @"CPUResidency";
              if (v28 != 0xA00000000)
              {
                goto LABEL_26;
              }

              goto LABEL_25;
            }

            if (v19 == 2)
            {
              break;
            }

            if (v19 == 1)
            {
              v20 = [v6 schema];
              v21 = [v20 columns];
              v22 = [v21 objectAtIndexedSubscript:v13];
              v23 = [v22 statID];

              if (v23 <= 0xA00000000)
              {
                v24 = @"APWakeTime";
                if (v23 == 1)
                {
                  goto LABEL_25;
                }

                if (v23 == 2)
                {
                  v24 = @"TGID";
                  goto LABEL_25;
                }
              }

              else
              {
                switch(v23)
                {
                  case 0xA00000001:
                    v24 = @"CPUEnergy";
                    goto LABEL_25;
                  case 0xA00000002:
                    v24 = @"CPUCycles";
                    goto LABEL_25;
                  case 0xA00000003:
                    v24 = @"CPUInstructions";
LABEL_25:
                    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
                    [v12 setObject:v29 forKeyedSubscript:v24];

                    break;
                }
              }
            }

LABEL_26:
            if ([v8 count] <= ++v13)
            {
              goto LABEL_27;
            }
          }

          v24 = @"ClusterIndex";
          goto LABEL_25;
        }

LABEL_27:
        a1 = v34;
        [*(v34 + 40) logEntry:v12];
      }

      v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v35)
      {
LABEL_29:

        break;
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4
{
  v4 = a3;
  if (([v4 isEqualToString:lostPerformanceLookupEntryKey] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", accumulatorsLookupEntryKey) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", cpuClusterAccumulatorsLookupEntryKey))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"ID < 0"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end