@interface PLMDNSAgent
+ (id)entryEventBackwardDefinitionClientSummary;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventPointDefinitions;
+ (id)entryEventPointDefinitionsReceivedMDNSEvent;
+ (void)load;
- (PLMDNSAgent)init;
- (void)initOperatorDependancies;
- (void)logEventBackwardClientSummary:(id)summary;
- (void)logEventPointMDNS:(id)s forEvent:(id)event;
@end

@implementation PLMDNSAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLMDNSAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"MDNSEvent";
  entryEventPointDefinitionsReceivedMDNSEvent = [self entryEventPointDefinitionsReceivedMDNSEvent];
  v7[0] = entryEventPointDefinitionsReceivedMDNSEvent;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventPointDefinitionsReceivedMDNSEvent
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_282C1BE08;
  v21[1] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"eventName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v19[0] = commonTypeDict_IntegerFormat;
  v18[1] = @"clientName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v19[1] = commonTypeDict_StringFormat;
  v18[2] = @"clientPID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v19[2] = commonTypeDict_IntegerFormat2;
  v18[3] = @"recordType";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v19[3] = commonTypeDict_StringFormat2;
  v18[4] = @"service";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v19[4] = commonTypeDict_StringFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"ClientSummary";
  entryEventBackwardDefinitionClientSummary = [self entryEventBackwardDefinitionClientSummary];
  v7[0] = entryEventBackwardDefinitionClientSummary;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventBackwardDefinitionClientSummary
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1BE08;
  v29[1] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"clientName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198] commonTypeDict_StringFormat_withProcessName];
  v27[0] = commonTypeDict_StringFormat_withProcessName;
  v26[1] = @"carryoverCountAWDL";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v27[1] = commonTypeDict_IntegerFormat;
  v26[2] = @"carryoverCountInfra";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v27[2] = commonTypeDict_IntegerFormat2;
  v26[3] = @"durationAWDL";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v27[3] = commonTypeDict_IntegerFormat3;
  v26[4] = @"durationInfra";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v27[4] = commonTypeDict_IntegerFormat4;
  v26[5] = @"startCountAWDL";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v27[5] = commonTypeDict_IntegerFormat5;
  v26[6] = @"startCountInfra";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v27[6] = commonTypeDict_IntegerFormat6;
  v26[7] = @"stopCountAWDL";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v27[7] = commonTypeDict_IntegerFormat7;
  v26[8] = @"stopCountInfra";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v27[8] = commonTypeDict_IntegerFormat8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v31[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLMDNSAgent)init
{
  v3.receiver = self;
  v3.super_class = PLMDNSAgent;
  return [(PLAgent *)&v3 init];
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __39__PLMDNSAgent_initOperatorDependancies__block_invoke;
  v23[3] = &unk_27825A1D8;
  v23[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C17360 withBlock:v23];
  [(PLMDNSAgent *)self setStartBrowse:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __39__PLMDNSAgent_initOperatorDependancies__block_invoke_91;
  v22[3] = &unk_27825A1D8;
  v22[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_282C17388 withBlock:v22];
  [(PLMDNSAgent *)self setStopBrowse:v6];

  v7 = objc_alloc(MEMORY[0x277D3F270]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __39__PLMDNSAgent_initOperatorDependancies__block_invoke_96;
  v21[3] = &unk_27825A1D8;
  v21[4] = self;
  v8 = [v7 initWithOperator:self withRegistration:&unk_282C173B0 withBlock:v21];
  [(PLMDNSAgent *)self setStartAdvertise:v8];

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__PLMDNSAgent_initOperatorDependancies__block_invoke_101;
  v20[3] = &unk_27825A1D8;
  v20[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_282C173D8 withBlock:v20];
  [(PLMDNSAgent *)self setStopAdvertise:v10];

  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __39__PLMDNSAgent_initOperatorDependancies__block_invoke_106;
  v19[3] = &unk_27825A1D8;
  v19[4] = self;
  v12 = [v11 initWithOperator:self withRegistration:&unk_282C17400 withBlock:v19];
  [(PLMDNSAgent *)self setStartResolve:v12];

  v13 = objc_alloc(MEMORY[0x277D3F270]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__PLMDNSAgent_initOperatorDependancies__block_invoke_111;
  v18[3] = &unk_27825A1D8;
  v18[4] = self;
  v14 = [v13 initWithOperator:self withRegistration:&unk_282C17428 withBlock:v18];
  [(PLMDNSAgent *)self setStopResolve:v14];

  v15 = objc_alloc(MEMORY[0x277D3F270]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__PLMDNSAgent_initOperatorDependancies__block_invoke_121;
  v17[3] = &unk_27825A1D8;
  v17[4] = self;
  v16 = [v15 initWithOperator:self withRegistration:&unk_282C17450 withBlock:v17];
  [(PLMDNSAgent *)self setClientSummary:v16];
}

void __39__PLMDNSAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogMDNS();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "PLMDNSAgent:: AWDL Browse state with payload=%@ for %@", &v11, 0x16u);
  }

  [*(a1 + 32) logEventPointMDNS:v8 forEvent:@"startAWDLBrowse"];
  v10 = *MEMORY[0x277D85DE8];
}

void __39__PLMDNSAgent_initOperatorDependancies__block_invoke_91(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogMDNS();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "PLMDNSAgent:: AWDL Browse with payload=%@ for %@", &v11, 0x16u);
  }

  [*(a1 + 32) logEventPointMDNS:v8 forEvent:@"stopAWDLBrowse"];
  v10 = *MEMORY[0x277D85DE8];
}

void __39__PLMDNSAgent_initOperatorDependancies__block_invoke_96(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogMDNS();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "PLMDNSAgent:: AWDL Advertise with payload=%@ for %@", &v11, 0x16u);
  }

  [*(a1 + 32) logEventPointMDNS:v8 forEvent:@"startAWDLAdvertise"];
  v10 = *MEMORY[0x277D85DE8];
}

void __39__PLMDNSAgent_initOperatorDependancies__block_invoke_101(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogMDNS();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "PLMDNSAgent:: AWDL Advertise with payload=%@ for %@", &v11, 0x16u);
  }

  [*(a1 + 32) logEventPointMDNS:v8 forEvent:@"stopAWDLAdvertise"];
  v10 = *MEMORY[0x277D85DE8];
}

void __39__PLMDNSAgent_initOperatorDependancies__block_invoke_106(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogMDNS();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "PLMDNSAgent:: AWDL Resolve with payload=%@ for %@", &v11, 0x16u);
  }

  [*(a1 + 32) logEventPointMDNS:v8 forEvent:@"startAWDLResolve"];
  v10 = *MEMORY[0x277D85DE8];
}

void __39__PLMDNSAgent_initOperatorDependancies__block_invoke_111(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogMDNS();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v7;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "PLMDNSAgent:: AWDL Resolve with payload=%@ for %@", &v13, 0x16u);
  }

  [*(a1 + 32) logEventPointMDNS:v8 forEvent:@"stopAWDLResolve"];
  v10 = [(PLOperator *)PLMDNSAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"stopAWDLResolve"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withRawData:v8];
  [*(a1 + 32) logEntry:v11];

  v12 = *MEMORY[0x277D85DE8];
}

void __39__PLMDNSAgent_initOperatorDependancies__block_invoke_121(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = PLLogMDNS();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "mDNSResponder eventName: %@ | payload= %@", &v11, 0x16u);
  }

  [*(a1 + 32) logEventBackwardClientSummary:v8];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointMDNS:(id)s forEvent:(id)event
{
  eventCopy = event;
  v6 = *MEMORY[0x277D3F5E8];
  sCopy = s;
  v8 = [(PLOperator *)PLMDNSAgent entryKeyForType:v6 andName:@"MDNSEvent"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:sCopy];

  if ([eventCopy isEqualToString:@"startAWDLAdvertise"])
  {
    v10 = 3;
  }

  else if ([eventCopy isEqualToString:@"stopAWDLAdvertise"])
  {
    v10 = 4;
  }

  else if ([eventCopy isEqualToString:@"startAWDLBrowse"])
  {
    v10 = 1;
  }

  else if ([eventCopy isEqualToString:@"stopAWDLBrowse"])
  {
    v10 = 2;
  }

  else if ([eventCopy isEqualToString:@"startAWDLResolve"])
  {
    v10 = 5;
  }

  else if ([eventCopy isEqualToString:@"stopAWDLResolve"])
  {
    v10 = 6;
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  [v9 setObject:v11 forKeyedSubscript:@"eventName"];

  [(PLOperator *)self logEntry:v9];
}

- (void)logEventBackwardClientSummary:(id)summary
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D3F5C8];
  summaryCopy = summary;
  v6 = [(PLOperator *)PLMDNSAgent entryKeyForType:v4 andName:@"ClientSummary"];
  array = [MEMORY[0x277CBEB18] array];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __45__PLMDNSAgent_logEventBackwardClientSummary___block_invoke;
  v17 = &unk_27825B638;
  v9 = v6;
  v18 = v9;
  v10 = monotonicDate;
  v19 = v10;
  v11 = array;
  v20 = v11;
  [summaryCopy enumerateKeysAndObjectsUsingBlock:&v14];

  if ([v11 count])
  {
    v21 = v9;
    v22[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    [(PLOperator *)self logEntries:v12 withGroupID:v9];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __45__PLMDNSAgent_logEventBackwardClientSummary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
    [v7 setObject:v5 forKeyedSubscript:@"clientName"];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __45__PLMDNSAgent_logEventBackwardClientSummary___block_invoke_125;
    v14 = &unk_27825B610;
    v8 = v7;
    v15 = v8;
    v16 = v6;
    [v16 enumerateKeysAndObjectsUsingBlock:&v11];
    v9 = PLLogMDNS();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "logEventBackwardClientSummary summary entry: %@ for clientName %@", buf, 0x16u);
    }

    [*(a1 + 48) addObject:{v8, v11, v12, v13, v14}];
  }

  else
  {
    v8 = PLLogMDNS();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "logEventBackwardClientSummary payload for clientName %@ is not NSDictionary", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __45__PLMDNSAgent_logEventBackwardClientSummary___block_invoke_125(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 objectForKeyedSubscript:v5];
  v6 = [v3 numberWithInt:{objc_msgSend(v7, "intValue")}];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

@end