@interface PLHealthKitAgent
+ (id)entryEventPointDefinitions;
+ (void)load;
- (void)initOperatorDependancies;
@end

@implementation PLHealthKitAgent

+ (void)load
{
  v2 = MEMORY[0x277D3F170];
  v3 = objc_opt_class();

  [v2 registerOperator:v3];
}

+ (id)entryEventPointDefinitions
{
  v63[2] = *MEMORY[0x277D85DE8];
  v62[0] = @"HealthKitQuery";
  v59 = *MEMORY[0x277D3F4E8];
  v2 = v59;
  v4 = *MEMORY[0x277D3F4A0];
  v57[0] = *MEMORY[0x277D3F568];
  v3 = v57[0];
  v57[1] = v4;
  v58[0] = &unk_282C1C968;
  v58[1] = MEMORY[0x277CBEC38];
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
  v61[0] = v48;
  v60 = *MEMORY[0x277D3F540];
  v5 = v60;
  v55[0] = @"clientID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v56[0] = commonTypeDict_IntegerFormat;
  v55[1] = @"bundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v56[1] = commonTypeDict_StringFormat_withBundleID;
  v55[2] = @"queryID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v56[2] = commonTypeDict_StringFormat;
  v55[3] = @"queryType";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v56[3] = commonTypeDict_StringFormat2;
  v55[4] = @"totalDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]5 commonTypeDict_RealFormat];
  v56[4] = commonTypeDict_RealFormat;
  v55[5] = @"isBackgroundQuery";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]6 commonTypeDict_BoolFormat];
  v56[5] = commonTypeDict_BoolFormat;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:6];
  v61[1] = v35;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v59 count:2];
  v62[1] = @"HealthKitCloudSync";
  v63[0] = v34;
  v51 = v3;
  v52 = &unk_282C1C978;
  v53[0] = v2;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v53[1] = v5;
  v54[0] = v33;
  v49[0] = @"options";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v50[0] = commonTypeDict_IntegerFormat2;
  v49[1] = @"reason";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v50[1] = commonTypeDict_IntegerFormat3;
  v49[2] = @"operation";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v50[2] = commonTypeDict_IntegerFormat4;
  v49[3] = @"zone-count";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v50[3] = commonTypeDict_IntegerFormat5;
  v49[4] = @"rebase-reason";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v50[4] = commonTypeDict_IntegerFormat6;
  v49[5] = @"deadline";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v50[5] = commonTypeDict_IntegerFormat7;
  v49[6] = @"epoch-change";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v50[6] = commonTypeDict_IntegerFormat8;
  v49[7] = @"status";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v50[7] = commonTypeDict_IntegerFormat9;
  v49[8] = @"result";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]15 commonTypeDict_BoolFormat];
  v50[8] = commonTypeDict_BoolFormat2;
  v49[9] = @"upload";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]16 commonTypeDict_BoolFormat];
  v50[9] = commonTypeDict_BoolFormat3;
  v49[10] = @"download";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat4 = [mEMORY[0x277D3F198]17 commonTypeDict_BoolFormat];
  v50[10] = commonTypeDict_BoolFormat4;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:11];
  v54[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v63[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    if ([MEMORY[0x277D3F180] fullMode])
    {
      v3 = [MEMORY[0x277D3F208] isWatch] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }

    internalBuild = [MEMORY[0x277D3F208] internalBuild];
    if (internalBuild)
    {
      LOBYTE(internalBuild) = [MEMORY[0x277D3F208] isWatch];
    }

    if ((v3 | internalBuild))
    {
      if ([MEMORY[0x277D3F258] isHealthDataSubmissionAllowed])
      {
        v5 = objc_alloc(MEMORY[0x277D3F270]);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __44__PLHealthKitAgent_initOperatorDependancies__block_invoke;
        v12[3] = &unk_27825A1D8;
        v12[4] = self;
        v6 = [v5 initWithOperator:self withRegistration:&unk_282C19250 withBlock:v12];
        queryHandler = self->_queryHandler;
        self->_queryHandler = v6;
      }
    }

    v8 = objc_alloc(MEMORY[0x277D3F270]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__PLHealthKitAgent_initOperatorDependancies__block_invoke_96;
    v11[3] = &unk_27825A1D8;
    v11[4] = self;
    v9 = [v8 initWithOperator:self withRegistration:&unk_282C19278 withBlock:v11];
    cloudSyncHandler = self->_cloudSyncHandler;
    self->_cloudSyncHandler = v9;
  }
}

void __44__PLHealthKitAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogHealthKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412290;
    v21 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "HealthKitQuery payload: %@", &v20, 0xCu);
  }

  v8 = [(PLOperator *)PLHealthKitAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"HealthKitQuery"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v10 = [v6 objectForKeyedSubscript:@"clientId"];
  [v9 setObject:v10 forKeyedSubscript:@"clientID"];

  v11 = [v6 objectForKeyedSubscript:@"bundleId"];
  [v9 setObject:v11 forKeyedSubscript:@"bundleID"];

  v12 = [v6 objectForKeyedSubscript:@"queryId"];
  [v9 setObject:v12 forKeyedSubscript:@"queryID"];

  v13 = [v6 objectForKeyedSubscript:@"queryType"];
  [v9 setObject:v13 forKeyedSubscript:@"queryType"];

  v14 = [v6 objectForKeyedSubscript:@"totalDuration"];
  [v9 setObject:v14 forKeyedSubscript:@"totalDuration"];

  v15 = [v6 objectForKeyedSubscript:@"isBackgroundQuery"];
  v16 = MEMORY[0x277CBEC38];
  v17 = [v15 isEqual:MEMORY[0x277CBEC38]];

  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = MEMORY[0x277CBEC28];
  }

  [v9 setObject:v18 forKeyedSubscript:@"isBackgroundQuery"];
  [*(a1 + 32) logEntry:v9];

  v19 = *MEMORY[0x277D85DE8];
}

void __44__PLHealthKitAgent_initOperatorDependancies__block_invoke_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogHealthKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v22 = 138412290;
    v23 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "HealthKitCloudSync Payload: %@", &v22, 0xCu);
  }

  v8 = [(PLOperator *)PLHealthKitAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"HealthKitCloudSync"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v10 = [v6 objectForKeyedSubscript:@"options"];
  [v9 setObject:v10 forKeyedSubscript:@"options"];

  v11 = [v6 objectForKeyedSubscript:@"reason"];
  [v9 setObject:v11 forKeyedSubscript:@"reason"];

  v12 = [v6 objectForKeyedSubscript:@"operation"];
  [v9 setObject:v12 forKeyedSubscript:@"operation"];

  v13 = [v6 objectForKeyedSubscript:@"zone-count"];
  [v9 setObject:v13 forKeyedSubscript:@"zone-count"];

  v14 = [v6 objectForKeyedSubscript:@"rebase-reason"];
  [v9 setObject:v14 forKeyedSubscript:@"rebase-reason"];

  v15 = [v6 objectForKeyedSubscript:@"deadline"];
  [v9 setObject:v15 forKeyedSubscript:@"deadline"];

  v16 = [v6 objectForKeyedSubscript:@"epoch-change"];
  [v9 setObject:v16 forKeyedSubscript:@"epoch-change"];

  v17 = [v6 objectForKeyedSubscript:@"status"];
  [v9 setObject:v17 forKeyedSubscript:@"status"];

  v18 = [v6 objectForKeyedSubscript:@"result"];
  [v9 setObject:v18 forKeyedSubscript:@"result"];

  v19 = [v6 objectForKeyedSubscript:@"upload"];
  [v9 setObject:v19 forKeyedSubscript:@"upload"];

  v20 = [v6 objectForKeyedSubscript:@"download"];
  [v9 setObject:v20 forKeyedSubscript:@"download"];

  [*(a1 + 32) logEntry:v9];
  v21 = *MEMORY[0x277D85DE8];
}

@end