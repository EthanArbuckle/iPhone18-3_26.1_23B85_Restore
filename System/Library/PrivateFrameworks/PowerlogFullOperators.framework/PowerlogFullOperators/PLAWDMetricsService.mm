@interface PLAWDMetricsService
+ (id)entryAggregateDefinitions;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)connectToAWDServer;
- (BOOL)initAWDInterface;
- (PLAWDMetricsService)init;
- (void)auxClassWrapper:(id)wrapper withAction:(int64_t)action;
- (void)initOperatorDependancies;
@end

@implementation PLAWDMetricsService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAWDMetricsService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (BOOL)connectToAWDServer
{
  awdServerConn = [(PLAWDMetricsService *)self awdServerConn];

  if (awdServerConn)
  {
    return 1;
  }

  v4 = 1;
  v5 = [objc_alloc(MEMORY[0x277D7BC58]) initWithComponentId:31 andBlockOnConfiguration:1];
  [(PLAWDMetricsService *)self setAwdServerConn:v5];

  awdServerConn2 = [(PLAWDMetricsService *)self awdServerConn];

  if (!awdServerConn2)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __41__PLAWDMetricsService_connectToAWDServer__block_invoke;
      v18 = &__block_descriptor_40_e5_v8__0lu32l8;
      v19 = v7;
      if (connectToAWDServer_defaultOnce != -1)
      {
        dispatch_once(&connectToAWDServer_defaultOnce, &block);
      }

      if (connectToAWDServer_classDebugEnabled == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Connection to awd server failed!", @"*******PLAWDMetricsService*******", block, v16, v17, v18, v19];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAWDMetricsService.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDMetricsService connectToAWDServer]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:49];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    return 0;
  }

  return v4;
}

uint64_t __41__PLAWDMetricsService_connectToAWDServer__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  connectToAWDServer_classDebugEnabled = result;
  return result;
}

+ (id)entryAggregateDefinitions
{
  v2 = objc_opt_new();
  v3 = +[PLAWDAudio entryAggregateDefinitions];
  [v2 addEntriesFromDictionary:v3];

  v4 = +[PLAWDNetworkUsage entryAggregateDefinitions];
  [v2 addEntriesFromDictionary:v4];

  v5 = +[PLAWDCpuAP entryAggregateDefinitions];
  [v2 addEntriesFromDictionary:v5];

  v6 = +[PLAWDWifiBT entryAggregateDefinitions];
  [v2 addEntriesFromDictionary:v6];

  v7 = +[PLAWDDisplay entryAggregateDefinitions];
  [v2 addEntriesFromDictionary:v7];

  v8 = +[PLAWDBattery entryAggregateDefinitions];
  [v2 addEntriesFromDictionary:v8];

  v9 = +[PLAWDCamera entryAggregateDefinitions];
  [v2 addEntriesFromDictionary:v9];

  v10 = +[PLAWDBB entryAggregateDefinitions];
  [v2 addEntriesFromDictionary:v10];

  return v2;
}

+ (id)entryEventPointDefinitions
{
  v2 = objc_opt_new();
  v3 = +[(PLAWDAuxMetrics *)PLAWDAudio];
  [v2 addEntriesFromDictionary:v3];

  v4 = +[(PLAWDAuxMetrics *)PLAWDNetworkUsage];
  [v2 addEntriesFromDictionary:v4];

  v5 = +[(PLAWDAuxMetrics *)PLAWDCpuAP];
  [v2 addEntriesFromDictionary:v5];

  v6 = +[(PLAWDAuxMetrics *)PLAWDWifiBT];
  [v2 addEntriesFromDictionary:v6];

  v7 = +[(PLAWDAuxMetrics *)PLAWDDisplay];
  [v2 addEntriesFromDictionary:v7];

  v8 = +[(PLAWDAuxMetrics *)PLAWDBattery];
  [v2 addEntriesFromDictionary:v8];

  v9 = +[(PLAWDAuxMetrics *)PLAWDCamera];
  [v2 addEntriesFromDictionary:v9];

  v10 = +[(PLAWDAuxMetrics *)PLAWDBB];
  [v2 addEntriesFromDictionary:v10];

  return v2;
}

- (PLAWDMetricsService)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PLAWDMetricsService;
    v4 = [(PLOperator *)&v18 init];
    if (v4)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v5 = objc_opt_class();
        block = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __27__PLAWDMetricsService_init__block_invoke;
        v16 = &__block_descriptor_40_e5_v8__0lu32l8;
        v17 = v5;
        if (init_defaultOnce_0 != -1)
        {
          dispatch_once(&init_defaultOnce_0, &block);
        }

        if (init_classDebugEnabled_0 == 1)
        {
          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : init", @"*******PLAWDMetricsService*******", block, v14, v15, v16, v17];
          v7 = MEMORY[0x277D3F178];
          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAWDMetricsService.m"];
          lastPathComponent = [v8 lastPathComponent];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDMetricsService init]"];
          [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:95];

          v11 = PLLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }
        }
      }

      [(PLAWDMetricsService *)v4 setAwdServerConn:0];
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

uint64_t __27__PLAWDMetricsService_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_0 = result;
  return result;
}

- (void)initOperatorDependancies
{
  if (self && !-[PLAWDMetricsService initAWDInterface](self, "initAWDInterface") && [MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __47__PLAWDMetricsService_initOperatorDependancies__block_invoke;
    v13 = &__block_descriptor_40_e5_v8__0lu32l8;
    v14 = v3;
    if (initOperatorDependancies_defaultOnce != -1)
    {
      dispatch_once(&initOperatorDependancies_defaultOnce, &block);
    }

    if (initOperatorDependancies_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: initAWDInterface Failed!", @"*******PLAWDMetricsService*******", block, v11, v12, v13, v14];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAWDMetricsService.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDMetricsService initOperatorDependancies]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:109];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  [(PLOperator *)self defaultBoolForKey:@"simulatedMode"];
}

uint64_t __47__PLAWDMetricsService_initOperatorDependancies__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initOperatorDependancies_classDebugEnabled = result;
  return result;
}

- (void)auxClassWrapper:(id)wrapper withAction:(int64_t)action
{
  wrapperCopy = wrapper;
  if (action == 2)
  {
    if (![(PLAWDMetricsService *)self connectToAWDServer])
    {
      goto LABEL_9;
    }

    classDictionary = [(PLAWDMetricsService *)self classDictionary];
    v7 = [classDictionary objectForKey:wrapperCopy];
    v8 = [v7 getSharedObjWithOperator:self];
    awdServerConn = [(PLAWDMetricsService *)self awdServerConn];
    [v8 submitDataToAWDServer:wrapperCopy withAwdConn:awdServerConn];
  }

  else if (action == 1)
  {
    classDictionary = [(PLAWDMetricsService *)self classDictionary];
    v7 = [classDictionary objectForKey:wrapperCopy];
    v8 = [v7 getSharedObjWithOperator:self];
    [v8 stopMetricCollection:wrapperCopy];
  }

  else
  {
    if (action)
    {
      goto LABEL_9;
    }

    classDictionary = [(PLAWDMetricsService *)self classDictionary];
    v7 = [classDictionary objectForKey:wrapperCopy];
    v8 = [v7 getSharedObjWithOperator:self];
    [v8 startMetricCollection:wrapperCopy];
  }

LABEL_9:
}

- (BOOL)initAWDInterface
{
  v42 = *MEMORY[0x277D85DE8];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __39__PLAWDMetricsService_initAWDInterface__block_invoke;
  v40[3] = &unk_279A59130;
  v40[4] = self;
  v3 = MEMORY[0x25F8D0F80](v40, a2);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(PLAWDMetricsService *)self setCurrRunningMetrics:v4];

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(PLAWDMetricsService *)self setClassDictionary:v5];

  classDictionary = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary setObject:objc_opt_class() forKey:&unk_2870FEFF8];

  classDictionary2 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary2 setObject:objc_opt_class() forKey:&unk_2870FF010];

  classDictionary3 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary3 setObject:objc_opt_class() forKey:&unk_2870FF028];

  classDictionary4 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary4 setObject:objc_opt_class() forKey:&unk_2870FF040];

  classDictionary5 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary5 setObject:objc_opt_class() forKey:&unk_2870FF058];

  classDictionary6 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary6 setObject:objc_opt_class() forKey:&unk_2870FF070];

  classDictionary7 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary7 setObject:objc_opt_class() forKey:&unk_2870FF088];

  classDictionary8 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary8 setObject:objc_opt_class() forKey:&unk_2870FF0A0];

  classDictionary9 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary9 setObject:objc_opt_class() forKey:&unk_2870FF0B8];

  classDictionary10 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary10 setObject:objc_opt_class() forKey:&unk_2870FF0D0];

  classDictionary11 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary11 setObject:objc_opt_class() forKey:&unk_2870FF0E8];

  classDictionary12 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary12 setObject:objc_opt_class() forKey:&unk_2870FF100];

  classDictionary13 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary13 setObject:objc_opt_class() forKey:&unk_2870FF118];

  classDictionary14 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary14 setObject:objc_opt_class() forKey:&unk_2870FF130];

  classDictionary15 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary15 setObject:objc_opt_class() forKey:&unk_2870FF148];

  classDictionary16 = [(PLAWDMetricsService *)self classDictionary];
  [classDictionary16 setObject:objc_opt_class() forKey:&unk_2870FF160];

  connectToAWDServer = [(PLAWDMetricsService *)self connectToAWDServer];
  if (connectToAWDServer)
  {
    classDictionary17 = [(PLAWDMetricsService *)self classDictionary];
    allKeys = [classDictionary17 allKeys];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = allKeys;
    v26 = [v25 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v37;
      do
      {
        v29 = 0;
        do
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v36 + 1) + 8 * v29);
          awdServerConn = [(PLAWDMetricsService *)self awdServerConn];
          [awdServerConn registerQueriableMetricCallback:v3 forIdentifier:{objc_msgSend(v30, "unsignedIntValue")}];

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v27);
    }

    awdServerConn2 = [(PLAWDMetricsService *)self awdServerConn];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __39__PLAWDMetricsService_initAWDInterface__block_invoke_77;
    v35[3] = &unk_279A59158;
    v35[4] = self;
    [awdServerConn2 registerConfigChangeCallback:v35];
  }

  v33 = *MEMORY[0x277D85DE8];
  return connectToAWDServer;
}

void __39__PLAWDMetricsService_initAWDInterface__block_invoke(uint64_t a1, uint64_t a2)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLAWDMetricsService_initAWDInterface__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : AWD Submit data callback: metricType=%d", @"*******PLAWDMetricsService*******", a2];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAWDMetricsService.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDMetricsService initAWDInterface]_block_invoke"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:218];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  v12 = [*(a1 + 32) currRunningMetrics];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v14 = [v12 containsObject:v13];

  if (v14)
  {
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    [v15 auxClassWrapper:v16 withAction:2];
  }
}

uint64_t __39__PLAWDMetricsService_initAWDInterface__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled = result;
  return result;
}

void __39__PLAWDMetricsService_initAWDInterface__block_invoke_77(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLAWDMetricsService_initAWDInterface__block_invoke_2_78;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : AWD config change callback: %@", @"*******PLAWDMetricsService*******", v3];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLAWDMetricsService.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDMetricsService initAWDInterface]_block_invoke"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:255];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  v12 = objc_opt_new();
  [*(a1 + 32) setUpdateRunningMetrics:v12];

  if (v3)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = v3;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v37 + 1) + 8 * i);
          v19 = [*(a1 + 32) updateRunningMetrics];
          [v19 addObject:v18];

          v20 = [*(a1 + 32) currRunningMetrics];
          v21 = [v20 containsObject:v18];

          v22 = *(a1 + 32);
          if (v21)
          {
            v23 = [v22 currRunningMetrics];
            [v23 removeObject:v18];
          }

          else
          {
            [v22 auxClassWrapper:v18 withAction:0];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v15);
    }
  }

  v24 = [*(a1 + 32) currRunningMetrics];
  v25 = [v24 count];

  if (v25)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = [*(a1 + 32) currRunningMetrics];
    v27 = [v26 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v34;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(a1 + 32) auxClassWrapper:*(*(&v33 + 1) + 8 * j) withAction:1];
        }

        v28 = [v26 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v28);
    }
  }

  v31 = [*(a1 + 32) updateRunningMetrics];
  [*(a1 + 32) setCurrRunningMetrics:v31];

  [*(a1 + 32) setUpdateRunningMetrics:0];
  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PLAWDMetricsService_initAWDInterface__block_invoke_2_78(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled = result;
  return result;
}

@end