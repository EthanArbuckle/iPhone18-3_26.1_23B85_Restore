@interface PLBLMDebugService
+ (BOOL)isModelTriggerRun;
+ (id)entryEventNoneDefinitionBLMDebug;
+ (id)entryEventNoneDefinitions;
+ (void)load;
- (PLBLMDebugService)init;
- (id)Testservice:(id)testservice;
- (id)respondBLMDDebugQuery:(id)query;
- (void)debugTrigger;
- (void)initOperatorDependancies;
- (void)registerTrigger:(id)trigger;
- (void)triggerLoggersNow:(id)now;
- (void)triggerSelectorAtDate:(id)date withSelector:(SEL)selector withUseInfo:(id)info;
@end

@implementation PLBLMDebugService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLBLMDebugService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventNoneDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"BLMQADebug";
  entryEventNoneDefinitionBLMDebug = [self entryEventNoneDefinitionBLMDebug];
  v7[0] = entryEventNoneDefinitionBLMDebug;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventNoneDefinitionBLMDebug
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v27 = *MEMORY[0x277D3F568];
  v28 = &unk_282C1C4B8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"trigger_name";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v26[0] = commonTypeDict_StringFormat;
  v25[1] = @"trigger_start_time";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v26[1] = commonTypeDict_DateFormat;
  v25[2] = @"trigger_stop_time";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v26[2] = commonTypeDict_DateFormat2;
  v25[3] = @"trigger_start_time_monotonic";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
  v26[3] = commonTypeDict_DateFormat3;
  v25[4] = @"trigger_stop_time_monotonic";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat4 = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v26[4] = commonTypeDict_DateFormat4;
  v25[5] = @"trigger_diff_time";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]6 commonTypeDict_RealFormat];
  v26[5] = commonTypeDict_RealFormat;
  v25[6] = @"rootnodeid";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v26[6] = commonTypeDict_IntegerFormat;
  v25[7] = @"railpower";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat2 = [mEMORY[0x277D3F198]8 commonTypeDict_RealFormat];
  v26[7] = commonTypeDict_RealFormat2;
  v25[8] = @"SafeTime";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat3 = [mEMORY[0x277D3F198]9 commonTypeDict_RealFormat];
  v26[8] = commonTypeDict_RealFormat3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:9];
  v30[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)isModelTriggerRun
{
  if (qword_2811F4CE0 != -1)
  {
    dispatch_once(&qword_2811F4CE0, &__block_literal_global_37);
  }

  return _MergedGlobals_1_34;
}

uint64_t __38__PLBLMDebugService_isModelTriggerRun__block_invoke()
{
  result = [MEMORY[0x277D3F180] BOOLForKey:@"ModelTrigger"];
  _MergedGlobals_1_34 = result;
  return result;
}

- (PLBLMDebugService)init
{
  v20 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && objc_msgSend(MEMORY[0x277D3F208], "internalBuild") && ((objc_msgSend(MEMORY[0x277D3F180], "isDevBoard") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F180], "debugEnabled") & 1) != 0 || +[PLBLMDebugService isModelTriggerRun](PLBLMDebugService, "isModelTriggerRun")))
  {
    v17.receiver = self;
    v17.super_class = PLBLMDebugService;
    v3 = [(PLOperator *)&v17 init];
    if (v3)
    {
      v4 = objc_opt_new();
      triggers = v3->_triggers;
      v3->_triggers = v4;

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v6 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __25__PLBLMDebugService_init__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v6;
        if (qword_2811F4CE8 != -1)
        {
          dispatch_once(&qword_2811F4CE8, block);
        }

        if (byte_2811F4CD1 == 1)
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Inited Trigger"];
          v8 = MEMORY[0x277D3F178];
          v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
          lastPathComponent = [v9 lastPathComponent];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService init]"];
          [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:105];

          v12 = PLLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v19 = v7;
            _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

uint64_t __25__PLBLMDebugService_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD1 = result;
  return result;
}

- (void)initOperatorDependancies
{
  v32 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild] && ((objc_msgSend(MEMORY[0x277D3F180], "isDevBoard") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F180], "debugEnabled") & 1) != 0 || +[PLBLMDebugService isModelTriggerRun](PLBLMDebugService, "isModelTriggerRun")))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v3 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__PLBLMDebugService_initOperatorDependancies__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v3;
      if (qword_2811F4CF0 != -1)
      {
        dispatch_once(&qword_2811F4CF0, block);
      }

      if (byte_2811F4CD2 == 1)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initoperators for triggers"];
        v5 = MEMORY[0x277D3F178];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
        lastPathComponent = [v6 lastPathComponent];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService initOperatorDependancies]"];
        [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:115];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v4;
          _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v10 = objc_alloc(MEMORY[0x277D3F270]);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __45__PLBLMDebugService_initOperatorDependancies__block_invoke_66;
    v28[3] = &unk_27825A1D8;
    v28[4] = self;
    v27 = [v10 initWithOperator:self withRegistration:&unk_282C184B8 withBlock:v28];
    [(PLBLMDebugService *)self setXpcListenerBLMDebugTrigger:v27];
    v11 = *MEMORY[0x277D3F5C8];
    v26 = [(PLOperator *)PLIOReportAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"EnergyModel"];
    v25 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v26 withBlock:&__block_literal_global_76];
    [(PLBLMDebugService *)self setIoreportCallback:v25];
    v24 = [(PLOperator *)PLProcessNetworkAgent entryKeyForType:v11 andName:@"Usage"];
    v12 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v24 withBlock:&__block_literal_global_79];
    [(PLBLMDebugService *)self setProcessnetworkCallback:v12];
    v13 = [(PLOperator *)PLWifiAgent entryKeyForType:v11 andName:@"DiffProperties"];
    v14 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v13 withBlock:&__block_literal_global_82];
    [(PLBLMDebugService *)self setWifiCallback:v14];
    v15 = *MEMORY[0x277D3F5E0];
    v16 = +[PLBBAgent getNameBBReport];
    v17 = [(PLOperator *)PLBBAgent entryKeyForType:v15 andName:v16];

    v18 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v17 withBlock:&__block_literal_global_85];
    [(PLBLMDebugService *)self setBbCallback:v18];
    v19 = [(PLOperator *)PLBluetoothAgent entryKeyForType:v11 andName:@"PowerProfileStats"];
    v20 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v19 withBlock:&__block_literal_global_88];
    [(PLBLMDebugService *)self setBtCallback:v20];
    v21 = [(PLOperator *)PLDisplayAgent entryKeyForType:v11 andName:@"APLStats"];
    v22 = [objc_alloc(MEMORY[0x277D3F1A8]) initWithOperator:self forEntryKey:v21 withBlock:&__block_literal_global_91];
    [(PLBLMDebugService *)self setDisplayAPLCallback:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PLBLMDebugService_initOperatorDependancies__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD2 = result;
  return result;
}

void __45__PLBLMDebugService_initOperatorDependancies__block_invoke_66(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  v7 = a5;
  v8 = [v6 stringWithFormat:@"Asked Trigger: %@", v7];
  v9 = MEMORY[0x277D3F178];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
  v11 = [v10 lastPathComponent];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService initOperatorDependancies]_block_invoke"];
  [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:118];

  v13 = PLLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  [*(a1 + 32) registerTrigger:v7];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerTrigger:(id)trigger
{
  v43 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __37__PLBLMDebugService_registerTrigger___block_invoke;
    v37 = &__block_descriptor_40_e5_v8__0lu32l8;
    v38 = v5;
    if (qword_2811F4CF8 != -1)
    {
      dispatch_once(&qword_2811F4CF8, &block);
    }

    if (byte_2811F4CD3 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got a trigger %@", triggerCopy, block, v35, v36, v37, v38];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService registerTrigger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:162];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = [triggerCopy objectForKeyedSubscript:@"trigger_name"];
  v13 = objc_opt_new();
  triggers = [(PLBLMDebugService *)self triggers];
  [triggers setObject:v13 forKeyedSubscript:v12];

  v15 = [triggerCopy objectForKeyedSubscript:@"trigger_start_time"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [triggerCopy objectForKeyedSubscript:@"trigger_diff_time"];
  [v18 doubleValue];
  v20 = v19;

  if (v17 == -1.0)
  {
    [(PLBLMDebugService *)self triggerLoggersNow:0];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  }

  else
  {
    v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v17];
    monotonicDate = [v22 convertFromSystemToMonotonic];

    [(PLBLMDebugService *)self triggerSelectorAtDate:monotonicDate withSelector:sel_triggerLoggersNow_ withUseInfo:0];
  }

  v23 = [monotonicDate dateByAddingTimeInterval:v20];
  v24 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v23 sinceDate:65.0];
  triggers2 = [(PLBLMDebugService *)self triggers];
  v26 = [triggers2 objectForKeyedSubscript:v12];
  [v26 setObject:monotonicDate forKeyedSubscript:@"trigger_start_time"];

  triggers3 = [(PLBLMDebugService *)self triggers];
  v28 = [triggers3 objectForKeyedSubscript:v12];
  [v28 setObject:v23 forKeyedSubscript:@"trigger_stop_time"];

  v29 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
  triggers4 = [(PLBLMDebugService *)self triggers];
  v31 = [triggers4 objectForKeyedSubscript:v12];
  [v31 setObject:v29 forKeyedSubscript:@"trigger_diff_time"];

  [(PLBLMDebugService *)self triggerSelectorAtDate:v23 withSelector:sel_triggerLoggersNow_ withUseInfo:0];
  v39 = @"trigger_name";
  v40 = v12;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  [(PLBLMDebugService *)self triggerSelectorAtDate:v24 withSelector:sel_respondBLMDDebugQuery_ withUseInfo:v32];

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PLBLMDebugService_registerTrigger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD3 = result;
  return result;
}

- (void)triggerSelectorAtDate:(id)date withSelector:(SEL)selector withUseInfo:(id)info
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  infoCopy = info;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__PLBLMDebugService_triggerSelectorAtDate_withSelector_withUseInfo___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F4D00 != -1)
    {
      dispatch_once(&qword_2811F4D00, block);
    }

    if (byte_2811F4CD4 == 1)
    {
      infoCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"setting time at date %@ %@", dateCopy, infoCopy];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService triggerSelectorAtDate:withSelector:withUseInfo:]"];
      [v12 logMessage:infoCopy fromFile:lastPathComponent fromFunction:v15 fromLineNumber:189];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = infoCopy;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v17 = objc_alloc(MEMORY[0x277CBEBB8]);
  convertFromMonotonicToSystem = [dateCopy convertFromMonotonicToSystem];
  v19 = [v17 initWithFireDate:convertFromMonotonicToSystem interval:self target:selector selector:infoCopy userInfo:0 repeats:0.0];

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:v19 forMode:*MEMORY[0x277CBE640]];

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __68__PLBLMDebugService_triggerSelectorAtDate_withSelector_withUseInfo___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD4 = result;
  return result;
}

- (void)triggerLoggersNow:(id)now
{
  v23 = *MEMORY[0x277D85DE8];
  nowCopy = now;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __39__PLBLMDebugService_triggerLoggersNow___block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v5;
    if (qword_2811F4D08 != -1)
    {
      dispatch_once(&qword_2811F4D08, &block);
    }

    if (byte_2811F4CD5 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Triggering Now %@", nowCopy, block, v17, v18, v19, v20];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService triggerLoggersNow:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:199];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = objc_opt_new();
  [MEMORY[0x277D3F258] postNotificationName:@"PLBatteryAgent_EventBackward_Battery.filtered.Level_0_1.Level_7_1800.Level_8_300" object:self userInfo:v12];
  displayAPLCallback = [(PLBLMDebugService *)self displayAPLCallback];
  [displayAPLCallback requestEntry];

  sleep(1u);
  bbCallback = [(PLBLMDebugService *)self bbCallback];
  [bbCallback requestEntry];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PLBLMDebugService_triggerLoggersNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD5 = result;
  return result;
}

- (id)respondBLMDDebugQuery:(id)query
{
  v66 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v5 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __43__PLBLMDebugService_respondBLMDDebugQuery___block_invoke;
    v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v62[4] = v6;
    if (qword_2811F4D10 != -1)
    {
      dispatch_once(&qword_2811F4D10, v62);
    }

    if (byte_2811F4CD6 == 1)
    {
      queryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"responding to query %@", queryCopy];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService respondBLMDDebugQuery:]"];
      [v8 logMessage:queryCopy fromFile:lastPathComponent fromFunction:v11 fromLineNumber:217];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v65 = queryCopy;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  userInfo = [queryCopy userInfo];
  v14 = objc_opt_new();
  v15 = [userInfo objectForKeyedSubscript:@"trigger_name"];
  triggers = [(PLBLMDebugService *)self triggers];
  v17 = [triggers objectForKey:v15];

  if (v17)
  {
    v53 = queryCopy;
    [v14 setObject:v15 forKeyedSubscript:@"trigger_name"];
    triggers2 = [(PLBLMDebugService *)self triggers];
    [triggers2 objectForKeyedSubscript:v15];
    v20 = v19 = v15;
    [v20 objectForKeyedSubscript:@"trigger_start_time"];
    v21 = v55 = userInfo;
    [v14 setObject:v21 forKeyedSubscript:@"trigger_start_time"];

    triggers3 = [(PLBLMDebugService *)self triggers];
    v51 = v19;
    v23 = [triggers3 objectForKeyedSubscript:v19];
    v24 = [v23 objectForKeyedSubscript:@"trigger_stop_time"];
    [v14 setObject:v24 forKeyedSubscript:@"trigger_stop_time"];

    v25 = [v14 objectForKeyedSubscript:@"trigger_start_time"];
    userInfo = v55;
    v26 = [v14 objectForKeyedSubscript:@"trigger_stop_time"];
    [v25 timeIntervalSince1970];
    v28 = v27;
    [v26 timeIntervalSince1970];
    v30 = v29;

    v31 = objc_opt_new();
    v52 = v14;
    [v14 setObject:v31 forKeyedSubscript:@"trigger_rail_data"];

    deviceRootNodeIDs = [MEMORY[0x277D3F0C0] deviceRootNodeIDs];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v33 = [deviceRootNodeIDs countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = v30 - v28;
      v56 = *v59;
      v54 = deviceRootNodeIDs;
      do
      {
        v36 = 0;
        do
        {
          if (*v59 != v56)
          {
            objc_enumerationMutation(deviceRootNodeIDs);
          }

          intValue = [*(*(&v58 + 1) + 8 * v36) intValue];
          v38 = [userInfo objectForKeyedSubscript:@"trigger_name"];
          v39 = [(PLBLMDebugService *)self logRailData:intValue withTriggerName:v38 inTimeRange:v28, v35];

          if ([*(v5 + 384) debugEnabled])
          {
            v40 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __43__PLBLMDebugService_respondBLMDDebugQuery___block_invoke_122;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v40;
            if (qword_2811F4D18 != -1)
            {
              dispatch_once(&qword_2811F4D18, block);
            }

            if (byte_2811F4CD7 == 1)
            {
              selfCopy = self;
              v42 = v5;
              v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Written %@", v39];
              v44 = MEMORY[0x277D3F178];
              v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBLMDebugService.m"];
              lastPathComponent2 = [v45 lastPathComponent];
              v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBLMDebugService respondBLMDDebugQuery:]"];
              [v44 logMessage:v43 fromFile:lastPathComponent2 fromFunction:v47 fromLineNumber:232];

              v48 = PLLogCommon();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v65 = v43;
                _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = v42;
              self = selfCopy;
              deviceRootNodeIDs = v54;
              userInfo = v55;
            }
          }

          ++v36;
        }

        while (v34 != v36);
        v34 = [deviceRootNodeIDs countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v34);
    }

    v14 = v52;
    queryCopy = v53;
    v15 = v51;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __43__PLBLMDebugService_respondBLMDDebugQuery___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD6 = result;
  return result;
}

uint64_t __43__PLBLMDebugService_respondBLMDDebugQuery___block_invoke_122(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD7 = result;
  return result;
}

uint64_t __61__PLBLMDebugService_logRailData_withTriggerName_inTimeRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD8 = result;
  return result;
}

uint64_t __51__PLBLMDebugService_energyForRootNodeID_withRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CD9 = result;
  return result;
}

uint64_t __51__PLBLMDebugService_energyForRootNodeID_withRange___block_invoke_143(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CDA = result;
  return result;
}

uint64_t __51__PLBLMDebugService_energyForRootNodeID_withRange___block_invoke_149(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4CDB = result;
  return result;
}

- (id)Testservice:(id)testservice
{
  v4 = objc_opt_new();
  [v4 setObject:&unk_282C11940 forKeyedSubscript:@"trigger_start_time"];
  [v4 setObject:&unk_282C11958 forKeyedSubscript:@"trigger_diff_time"];
  [v4 setObject:@"Abcd" forKeyedSubscript:@"trigger_name"];
  [(PLBLMDebugService *)self registerTrigger:v4];

  return 0;
}

- (void)debugTrigger
{
  v3 = objc_alloc(MEMORY[0x277D3F250]);
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  workQueue = [(PLOperator *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__PLBLMDebugService_debugTrigger__block_invoke;
  v8[3] = &unk_278259C40;
  v8[4] = self;
  v6 = [v3 initWithFireDate:v4 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v8 withQueue:20.0 withBlock:0.0];
  debugTimers = self->_debugTimers;
  self->_debugTimers = v6;
}

@end