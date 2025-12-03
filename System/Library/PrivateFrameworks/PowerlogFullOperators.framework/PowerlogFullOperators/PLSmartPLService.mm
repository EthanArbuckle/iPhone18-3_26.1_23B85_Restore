@interface PLSmartPLService
+ (id)entryEventPointDefinitionSample;
+ (id)entryEventPointDefinitionSmartTrigger;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLSmartPLService)init;
- (void)initOperatorDependancies;
- (void)logEventPointHeap;
- (void)logEventPointSample;
- (void)logEventPointSampleForProcessName:(id)name;
- (void)logEventPointSmartPLFiredFromAuxilary:(Class)auxilary withReason:(id)reason;
- (void)logEventPointStackShotWithReason:(id)reason;
- (void)logEventPointVMMap;
@end

@implementation PLSmartPLService

+ (id)entryEventPointDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"SmartTrigger";
  entryEventPointDefinitionSmartTrigger = [self entryEventPointDefinitionSmartTrigger];
  v8[1] = @"Sample";
  v9[0] = entryEventPointDefinitionSmartTrigger;
  entryEventPointDefinitionSample = [self entryEventPointDefinitionSample];
  v9[1] = entryEventPointDefinitionSample;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventPointDefinitionSmartTrigger
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F498];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_2870FEE60;
  v15[1] = MEMORY[0x277CBEC38];
  v14[2] = *MEMORY[0x277D3F550];
  v15[2] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"Helper";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v12[1] = @"Reason";
  v13[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v13[1] = commonTypeDict_StringFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointDefinitionSample
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_2870FEE60;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"PID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v14[0] = commonTypeDict_IntegerFormat;
  v13[1] = @"ProcessName";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v14[1] = commonTypeDict_StringFormat;
  v13[2] = @"Sample";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v14[2] = commonTypeDict_StringFormat2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLSmartPLService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLSmartPLService)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PLSmartPLService;
    v4 = [(PLOperator *)&v8 init];
    if (v4)
    {
      v5 = objc_opt_new();
      smartPLHelpers = v4->_smartPLHelpers;
      v4->_smartPLHelpers = v5;
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  v10 = objc_opt_new();
  [v10 startWithOperator:self];
  smartPLHelpers = [(PLSmartPLService *)self smartPLHelpers];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [smartPLHelpers setObject:v10 forKeyedSubscript:v5];

  if ([MEMORY[0x277D3F180] BOOLForKey:@"MemoryTrackingEnabled" ifNotSet:0])
  {
    v6 = objc_opt_new();
    [v6 startWithOperator:self];
    smartPLHelpers2 = [(PLSmartPLService *)self smartPLHelpers];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [smartPLHelpers2 setObject:v6 forKeyedSubscript:v9];
  }
}

- (void)logEventPointSmartPLFiredFromAuxilary:(Class)auxilary withReason:(id)reason
{
  v6 = *MEMORY[0x277D3F5E8];
  reasonCopy = reason;
  v10 = [(PLOperator *)PLSmartPLService entryKeyForType:v6 andName:@"SmartTrigger"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v9 = NSStringFromClass(auxilary);
  [v8 setObject:v9 forKeyedSubscript:@"Helper"];

  [v8 setObject:reasonCopy forKeyedSubscript:@"Resason"];
  [(PLOperator *)self logEntry:v8];
}

- (void)logEventPointHeap
{
  [(PLSmartPLService *)self logEventPointHeapForProcessName:@"PerfPowerServicesExtended"];

  [(PLSmartPLService *)self logEventPointHeapForProcessName:@"aggregated"];
}

- (void)logEventPointVMMap
{
  [(PLSmartPLService *)self logEventPointVMMapForProcessName:@"PerfPowerServicesExtended"];

  [(PLSmartPLService *)self logEventPointVMMapForProcessName:@"aggregated"];
}

- (void)logEventPointStackShotWithReason:(id)reason
{
  reasonCopy = reason;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__PLSmartPLService_logEventPointStackShotWithReason___block_invoke;
  v9[3] = &unk_279A58FF0;
  v9[4] = self;
  if (logEventPointStackShotWithReason__defaultOnce != -1)
  {
    dispatch_once(&logEventPointStackShotWithReason__defaultOnce, v9);
  }

  v5 = logEventPointStackShotWithReason__objectForKey;
  if (logEventPointStackShotWithReason__objectForKey >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Powerlog: %@ %d of %ld", reasonCopy, v6, v5];
      WriteStackshotReport_async();

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PLSmartPLService_logEventPointStackShotWithReason___block_invoke_2;
      block[3] = &unk_279A58FF0;
      block[4] = self;
      if (logEventPointStackShotWithReason__defaultOnce_79 != -1)
      {
        dispatch_once(&logEventPointStackShotWithReason__defaultOnce_79, block);
      }

      sleep(logEventPointStackShotWithReason__objectForKey_80);
      ++v6;
    }

    while (v5 != v6);
  }
}

uint64_t __53__PLSmartPLService_logEventPointStackShotWithReason___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"StackShotCount"];
  logEventPointStackShotWithReason__objectForKey = result;
  return result;
}

uint64_t __53__PLSmartPLService_logEventPointStackShotWithReason___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"StackShotDelay"];
  logEventPointStackShotWithReason__objectForKey_80 = result;
  return result;
}

- (void)logEventPointSample
{
  [(PLSmartPLService *)self logEventPointSampleForProcessName:@"PerfPowerServicesExtended"];

  [(PLSmartPLService *)self logEventPointSampleForProcessName:@"aggregated"];
}

- (void)logEventPointSampleForProcessName:(id)name
{
  nameCopy = name;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PLOperator *)PLSmartPLService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Sample"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  [v7 setObject:nameCopy forKeyedSubscript:@"ProcessName"];
  v8 = pidFromHint();
  v9 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  [v7 setObject:v9 forKeyedSubscript:@"PID"];

  v10 = 0x277D3F000uLL;
  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (v8 < 2)
  {
    if (debugEnabled)
    {
      v22 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __54__PLSmartPLService_logEventPointSampleForProcessName___block_invoke_102;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v22;
      if (logEventPointSampleForProcessName__defaultOnce_100 != -1)
      {
        dispatch_once(&logEventPointSampleForProcessName__defaultOnce_100, v46);
      }

      if (logEventPointSampleForProcessName__classDebugEnabled_101 == 1)
      {
        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid pid (%d) for %@ no sample for you!", v8, nameCopy];
        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLSmartPLService.m"];
        lastPathComponent = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSmartPLService logEventPointSampleForProcessName:]"];
        [v24 logMessage:nameCopy fromFile:lastPathComponent fromFunction:v27 fromLineNumber:174];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        v10 = 0x277D3F000;
      }
    }

    [v7 setObject:@"invalid PID" forKeyedSubscript:@"Sample"];
  }

  else
  {
    if (debugEnabled)
    {
      v12 = objc_opt_class();
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __54__PLSmartPLService_logEventPointSampleForProcessName___block_invoke;
      v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v50[4] = v12;
      if (logEventPointSampleForProcessName__defaultOnce != -1)
      {
        dispatch_once(&logEventPointSampleForProcessName__defaultOnce, v50);
      }

      if (logEventPointSampleForProcessName__classDebugEnabled == 1)
      {
        v43 = v5;
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"generating sample for %@(%d)", nameCopy, v8];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLSmartPLService.m"];
        lastPathComponent2 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSmartPLService logEventPointSampleForProcessName:]"];
        [v14 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:163];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        v5 = v43;
        v10 = 0x277D3F000uLL;
      }
    }

    v19 = [objc_alloc(MEMORY[0x277D6AF98]) initWithPID:v8 options:17];
    if (v19)
    {
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __54__PLSmartPLService_logEventPointSampleForProcessName___block_invoke_89;
      v49[3] = &unk_279A58FF0;
      v49[4] = self;
      if (logEventPointSampleForProcessName__defaultOnce_88 != -1)
      {
        dispatch_once(&logEventPointSampleForProcessName__defaultOnce_88, v49);
      }

      v20 = logEventPointSampleForProcessName__objectForKey;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __54__PLSmartPLService_logEventPointSampleForProcessName___block_invoke_2;
      v48[3] = &unk_279A58FF0;
      v48[4] = self;
      if (logEventPointSampleForProcessName__defaultOnce_90 != -1)
      {
        dispatch_once(&logEventPointSampleForProcessName__defaultOnce_90, v48);
      }

      [v19 sampleForDuration:v20 interval:logEventPointSampleForProcessName__objectForKey_91];
      [v19 stopSampling];
      outputString = [v19 outputString];
      [v7 setObject:outputString forKeyedSubscript:@"Sample"];
    }

    else
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v29 = objc_opt_class();
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __54__PLSmartPLService_logEventPointSampleForProcessName___block_invoke_3;
        v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v47[4] = v29;
        if (logEventPointSampleForProcessName__defaultOnce_92 != -1)
        {
          dispatch_once(&logEventPointSampleForProcessName__defaultOnce_92, v47);
        }

        if (logEventPointSampleForProcessName__classDebugEnabled_93 == 1)
        {
          v44 = v5;
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"no sampler inited for %@(%d)", nameCopy, v8];
          v31 = MEMORY[0x277D3F178];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLSmartPLService.m"];
          lastPathComponent3 = [v32 lastPathComponent];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSmartPLService logEventPointSampleForProcessName:]"];
          [v31 logMessage:v30 fromFile:lastPathComponent3 fromFunction:v34 fromLineNumber:170];

          v35 = PLLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

          v5 = v44;
          v10 = 0x277D3F000uLL;
        }
      }

      [v7 setObject:@"Error forKeyedSubscript:{no sampler inited", @"Sample"}];
    }
  }

  [(PLOperator *)self logEntry:v7];
  if ([*(v10 + 384) debugEnabled])
  {
    v36 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__PLSmartPLService_logEventPointSampleForProcessName___block_invoke_111;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v36;
    if (logEventPointSampleForProcessName__defaultOnce_109 != -1)
    {
      dispatch_once(&logEventPointSampleForProcessName__defaultOnce_109, block);
    }

    if (logEventPointSampleForProcessName__classDebugEnabled_110 == 1)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Logged!"];
      v38 = MEMORY[0x277D3F178];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLSmartPLService.m"];
      lastPathComponent4 = [v39 lastPathComponent];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSmartPLService logEventPointSampleForProcessName:]"];
      [v38 logMessage:v37 fromFile:lastPathComponent4 fromFunction:v41 fromLineNumber:179];

      v42 = PLLogCommon();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t __54__PLSmartPLService_logEventPointSampleForProcessName___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointSampleForProcessName__classDebugEnabled = result;
  return result;
}

uint64_t __54__PLSmartPLService_logEventPointSampleForProcessName___block_invoke_89(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"SampleDuration"];
  logEventPointSampleForProcessName__objectForKey = result;
  return result;
}

uint64_t __54__PLSmartPLService_logEventPointSampleForProcessName___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"SampleInterval"];
  logEventPointSampleForProcessName__objectForKey_91 = result;
  return result;
}

uint64_t __54__PLSmartPLService_logEventPointSampleForProcessName___block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointSampleForProcessName__classDebugEnabled_93 = result;
  return result;
}

uint64_t __54__PLSmartPLService_logEventPointSampleForProcessName___block_invoke_102(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointSampleForProcessName__classDebugEnabled_101 = result;
  return result;
}

uint64_t __54__PLSmartPLService_logEventPointSampleForProcessName___block_invoke_111(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logEventPointSampleForProcessName__classDebugEnabled_110 = result;
  return result;
}

@end