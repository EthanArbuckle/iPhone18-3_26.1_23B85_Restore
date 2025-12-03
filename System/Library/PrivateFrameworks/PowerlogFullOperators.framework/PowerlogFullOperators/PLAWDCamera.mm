@interface PLAWDCamera
+ (id)entryAggregateDefinitionAwdCamera;
+ (id)entryAggregateDefinitions;
+ (id)getSharedObjWithOperator:(id)operator;
- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn;
- (void)addEntryToCameraTable:(id)table withValue:(double)value;
- (void)handleBackCameraCallback:(id)callback;
- (void)handleCameraCallback:(id)callback;
- (void)handleFrontCameraCallback:(id)callback;
- (void)handleTorchCameraCallback:(id)callback;
- (void)initCameraStats;
- (void)reInitCameraStats;
- (void)resetCameraTable;
- (void)startMetricCollection:(id)collection;
- (void)stopMetricCollection:(id)collection;
@end

@implementation PLAWDCamera

+ (id)getSharedObjWithOperator:(id)operator
{
  v3 = plAwdCamera;
  if (!plAwdCamera)
  {
    operatorCopy = operator;
    v5 = [(PLAWDAuxMetrics *)[PLAWDCamera alloc] initWithOperator:operatorCopy];

    v6 = plAwdCamera;
    plAwdCamera = v5;

    v3 = plAwdCamera;
  }

  return v3;
}

+ (id)entryAggregateDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = kPLAWDAggregateNameCameraMetrics;
  entryAggregateDefinitionAwdCamera = [self entryAggregateDefinitionAwdCamera];
  v7[0] = entryAggregateDefinitionAwdCamera;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryAggregateDefinitionAwdCamera
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_2870FEEC0;
  v23[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v3;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = kPLAWDCameraMetricsKey;
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v20[1] = kPLAWDCameraMetricsValue;
  v21[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat_aggregateFunction_sum];
  v21[1] = commonTypeDict_RealFormat_aggregateFunction_sum;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_2870FEED0;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_2870FEED0;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v25[2] = v10;
  v24[3] = *MEMORY[0x277D3F488];
  v15 = kPLAWDCameraMetricsValue;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)startMetricCollection:(id)collection
{
  collectionCopy = collection;
  runningMetrics = [(PLAWDAuxMetrics *)self runningMetrics];
  [runningMetrics addObject:collectionCopy];

  longValue = [collectionCopy longValue];
  if (longValue == 2031627)
  {
    [(PLAWDCamera *)self initCameraStats];
    v7 = *MEMORY[0x277D3F5D0];
    v8 = [MEMORY[0x277D3F698] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F770]];
    v9 = objc_alloc(MEMORY[0x277D3F1A8]);
    operator = [(PLAWDAuxMetrics *)self operator];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __37__PLAWDCamera_startMetricCollection___block_invoke;
    v29[3] = &unk_279A58F10;
    v29[4] = self;
    v11 = [v9 initWithOperator:operator forEntryKey:v8 withBlock:v29];

    [(PLAWDCamera *)self setCameraEventCallback:v11];
    v12 = [MEMORY[0x277D3F698] entryKeyForType:v7 andName:*MEMORY[0x277D3F778]];
    v13 = objc_alloc(MEMORY[0x277D3F1A8]);
    operator2 = [(PLAWDAuxMetrics *)self operator];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __37__PLAWDCamera_startMetricCollection___block_invoke_2;
    v28[3] = &unk_279A58F10;
    v28[4] = self;
    v15 = [v13 initWithOperator:operator2 forEntryKey:v12 withBlock:v28];

    [(PLAWDCamera *)self setCameraEventCallbackTorch:v15];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __37__PLAWDCamera_startMetricCollection___block_invoke_3;
      v26 = &__block_descriptor_40_e5_v8__0lu32l8;
      v27 = v16;
      if (startMetricCollection__defaultOnce_3 != -1)
      {
        dispatch_once(&startMetricCollection__defaultOnce_3, &block);
      }

      if (startMetricCollection__classDebugEnabled_3 == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Start Camera collection ", @"*******PLAWDMetricsService*******", block, v24, v25, v26, v27];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCamera.m"];
        lastPathComponent = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCamera startMetricCollection:]"];
        [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:97];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }
  }
}

uint64_t __37__PLAWDCamera_startMetricCollection___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleCameraCallback:a2];
  }

  return result;
}

uint64_t __37__PLAWDCamera_startMetricCollection___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleTorchCameraCallback:a2];
  }

  return result;
}

uint64_t __37__PLAWDCamera_startMetricCollection___block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startMetricCollection__classDebugEnabled_3 = result;
  return result;
}

- (void)stopMetricCollection:(id)collection
{
  collectionCopy = collection;
  runningMetrics = [(PLAWDAuxMetrics *)self runningMetrics];
  [runningMetrics removeObject:collectionCopy];

  longValue = [collectionCopy longValue];
  if (longValue == 2031627)
  {
    [(PLAWDCamera *)self setCameraEventCallback:0];
    [(PLAWDCamera *)self setCameraEventCallbackTorch:0];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __36__PLAWDCamera_stopMetricCollection___block_invoke;
      v20 = &__block_descriptor_40_e5_v8__0lu32l8;
      v21 = v7;
      if (stopMetricCollection__defaultOnce_3 != -1)
      {
        dispatch_once(&stopMetricCollection__defaultOnce_3, &block);
      }

      if (stopMetricCollection__classDebugEnabled_3 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Stop Camera collection ", @"*******PLAWDMetricsService*******", block, v18, v19, v20, v21];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCamera.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCamera stopMetricCollection:]"];
        [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:114];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }
  }

  runningMetrics2 = [(PLAWDAuxMetrics *)self runningMetrics];
  v15 = [runningMetrics2 count];

  if (!v15)
  {
    v16 = plAwdCamera;
    plAwdCamera = 0;
  }
}

uint64_t __36__PLAWDCamera_stopMetricCollection___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopMetricCollection__classDebugEnabled_3 = result;
  return result;
}

- (void)initCameraStats
{
  [(PLAWDCamera *)self setPrevFrontCameraState:0];
  [(PLAWDCamera *)self setPrevBackCameraState:0];
  [(PLAWDCamera *)self setPrevTorchCameraState:0];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __30__PLAWDCamera_initCameraStats__block_invoke;
    v13 = &__block_descriptor_40_e5_v8__0lu32l8;
    v14 = v3;
    if (initCameraStats_defaultOnce != -1)
    {
      dispatch_once(&initCameraStats_defaultOnce, &block);
    }

    if (initCameraStats_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : init Camera stats: ", @"*******PLAWDMetricsService*******", block, v11, v12, v13, v14];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCamera.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCamera initCameraStats]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:130];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  [(PLAWDCamera *)self resetCameraTable];
}

uint64_t __30__PLAWDCamera_initCameraStats__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initCameraStats_classDebugEnabled = result;
  return result;
}

- (void)reInitCameraStats
{
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  v5 = v4;

  if ([(PLAWDCamera *)self prevFrontCameraState])
  {
    [(PLAWDCamera *)self setFrontCameraTimestamp:v5];
  }

  if ([(PLAWDCamera *)self prevBackCameraState])
  {
    [(PLAWDCamera *)self setBackCameraTimestamp:v5];
  }

  if ([(PLAWDCamera *)self prevTorchCameraState])
  {
    [(PLAWDCamera *)self setTorchCameraTimestamp:v5];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __32__PLAWDCamera_reInitCameraStats__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v6;
    if (reInitCameraStats_defaultOnce != -1)
    {
      dispatch_once(&reInitCameraStats_defaultOnce, &block);
    }

    if (reInitCameraStats_classDebugEnabled == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Re-init Camera stats: ", @"*******PLAWDMetricsService*******", block, v14, v15, v16, v17];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCamera.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCamera reInitCameraStats]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:149];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  [(PLAWDCamera *)self resetCameraTable];
}

uint64_t __32__PLAWDCamera_reInitCameraStats__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reInitCameraStats_classDebugEnabled = result;
  return result;
}

- (void)resetCameraTable
{
  v3 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:kPLAWDAggregateNameCameraMetrics];
  v4.receiver = self;
  v4.super_class = PLAWDCamera;
  [(PLAWDAuxMetrics *)&v4 resetTableWithEntryKey:v3];
}

- (void)addEntryToCameraTable:(id)table withValue:(double)value
{
  v6 = *MEMORY[0x277D3F5B8];
  v7 = kPLAWDAggregateNameCameraMetrics;
  tableCopy = table;
  v12 = [(PLOperator *)PLAWDMetricsService entryKeyForType:v6 andName:v7];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  [v9 setObject:tableCopy forKeyedSubscript:kPLAWDCameraMetricsKey];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  [v9 setObject:v10 forKeyedSubscript:kPLAWDCameraMetricsValue];

  operator = [(PLAWDAuxMetrics *)self operator];
  [operator logEntry:v9];
}

- (void)handleCameraCallback:(id)callback
{
  callbackCopy = callback;
  v4 = [callbackCopy objectForKey:@"entry"];
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x277D3F768];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F768]];

    if (v7)
    {
      v8 = [v5 objectForKeyedSubscript:v6];
      intValue = [v8 intValue];

      if ([MEMORY[0x277D3F698] isBackFacingCamera:intValue])
      {
        [(PLAWDCamera *)self handleBackCameraCallback:callbackCopy];
      }

      else if ([MEMORY[0x277D3F698] isFrontFacingCamera:intValue])
      {
        [(PLAWDCamera *)self handleFrontCameraCallback:callbackCopy];
      }
    }
  }
}

- (void)handleFrontCameraCallback:(id)callback
{
  v4 = [callback objectForKey:@"entry"];
  if (v4)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [monotonicDate timeIntervalSince1970];
    v7 = v6;

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F788]];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      [(PLAWDCamera *)self setFrontCameraTimestamp:v7];
    }

    else if ([(PLAWDCamera *)self prevFrontCameraState])
    {
      [(PLAWDCamera *)self frontCameraTimestamp];
      if (v7 - v10 > 0.0)
      {
        [(PLAWDCamera *)self addEntryToCameraTable:kPLAWDFrontCameraOnDuration withValue:?];
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v11 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __41__PLAWDCamera_handleFrontCameraCallback___block_invoke;
      v23 = &__block_descriptor_40_e5_v8__0lu32l8;
      v24 = v11;
      if (handleFrontCameraCallback__defaultOnce != -1)
      {
        dispatch_once(&handleFrontCameraCallback__defaultOnce, &block);
      }

      if (handleFrontCameraCallback__classDebugEnabled == 1)
      {
        v12 = MEMORY[0x277CCACA8];
        prevFrontCameraState = [(PLAWDCamera *)self prevFrontCameraState];
        v14 = [v12 stringWithFormat:@"%@ : FrontCameraCallback: currState=%d prevState=%d  ", @"*******PLAWDMetricsService*******", bOOLValue, prevFrontCameraState, block, v21, v22, v23, v24];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCamera.m"];
        lastPathComponent = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCamera handleFrontCameraCallback:]"];
        [v15 logMessage:v14 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:200];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    [(PLAWDCamera *)self setPrevFrontCameraState:bOOLValue];
  }
}

uint64_t __41__PLAWDCamera_handleFrontCameraCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleFrontCameraCallback__classDebugEnabled = result;
  return result;
}

- (void)handleBackCameraCallback:(id)callback
{
  v4 = [callback objectForKey:@"entry"];
  if (v4)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [monotonicDate timeIntervalSince1970];
    v7 = v6;

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F788]];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      [(PLAWDCamera *)self setBackCameraTimestamp:v7];
    }

    else if ([(PLAWDCamera *)self prevBackCameraState])
    {
      [(PLAWDCamera *)self backCameraTimestamp];
      if (v7 - v10 > 0.0)
      {
        [(PLAWDCamera *)self addEntryToCameraTable:kPLAWDBackCameraOnDuration withValue:?];
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v11 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __40__PLAWDCamera_handleBackCameraCallback___block_invoke;
      v23 = &__block_descriptor_40_e5_v8__0lu32l8;
      v24 = v11;
      if (handleBackCameraCallback__defaultOnce != -1)
      {
        dispatch_once(&handleBackCameraCallback__defaultOnce, &block);
      }

      if (handleBackCameraCallback__classDebugEnabled == 1)
      {
        v12 = MEMORY[0x277CCACA8];
        prevBackCameraState = [(PLAWDCamera *)self prevBackCameraState];
        v14 = [v12 stringWithFormat:@"%@ : BackCameraCallback: currState=%d prevState=%d  ", @"*******PLAWDMetricsService*******", bOOLValue, prevBackCameraState, block, v21, v22, v23, v24];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCamera.m"];
        lastPathComponent = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCamera handleBackCameraCallback:]"];
        [v15 logMessage:v14 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:222];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    [(PLAWDCamera *)self setPrevBackCameraState:bOOLValue];
  }
}

uint64_t __40__PLAWDCamera_handleBackCameraCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBackCameraCallback__classDebugEnabled = result;
  return result;
}

- (void)handleTorchCameraCallback:(id)callback
{
  v4 = [callback objectForKey:@"entry"];
  if (v4)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [monotonicDate timeIntervalSince1970];
    v7 = v6;

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F780]];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      [(PLAWDCamera *)self setTorchCameraTimestamp:v7];
    }

    else if ([(PLAWDCamera *)self prevTorchCameraState])
    {
      [(PLAWDCamera *)self torchCameraTimestamp];
      if (v7 - v10 > 0.0)
      {
        [(PLAWDCamera *)self addEntryToCameraTable:kPLAWDTorchCameraOnDuration withValue:?];
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v11 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __41__PLAWDCamera_handleTorchCameraCallback___block_invoke;
      v23 = &__block_descriptor_40_e5_v8__0lu32l8;
      v24 = v11;
      if (handleTorchCameraCallback__defaultOnce != -1)
      {
        dispatch_once(&handleTorchCameraCallback__defaultOnce, &block);
      }

      if (handleTorchCameraCallback__classDebugEnabled == 1)
      {
        v12 = MEMORY[0x277CCACA8];
        prevTorchCameraState = [(PLAWDCamera *)self prevTorchCameraState];
        v14 = [v12 stringWithFormat:@"%@ : TorchCameraCallback: currState=%d prevState=%d  ", @"*******PLAWDMetricsService*******", bOOLValue, prevTorchCameraState, block, v21, v22, v23, v24];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCamera.m"];
        lastPathComponent = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCamera handleTorchCameraCallback:]"];
        [v15 logMessage:v14 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:244];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    [(PLAWDCamera *)self setPrevTorchCameraState:bOOLValue];
  }
}

uint64_t __41__PLAWDCamera_handleTorchCameraCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleTorchCameraCallback__classDebugEnabled = result;
  return result;
}

- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn
{
  v68 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  connCopy = conn;
  v8 = [connCopy newMetricContainerWithIdentifier:{objc_msgSend(serverCopy, "unsignedIntValue")}];
  v9 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [v9 timeIntervalSince1970];
  v12 = v11;
  [monotonicDate timeIntervalSince1970];
  v14 = v13;

  if ([serverCopy longValue] == 2031627)
  {
    if (v8)
    {
      v15 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:kPLAWDAggregateNameCameraMetrics];
      operator = [(PLAWDAuxMetrics *)self operator];
      storage = [operator storage];
      v59 = v15;
      v18 = [storage aggregateEntriesForKey:v15 withBucketLength:86400.0 inTimeIntervalRange:{v12, v14 - v12}];

      v58 = v18;
      v19 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v18];
      v20 = objc_opt_new();
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v21 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__PLAWDCamera_submitDataToAWDServer_withAwdConn___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v21;
        if (submitDataToAWDServer_withAwdConn__defaultOnce_1 != -1)
        {
          dispatch_once(&submitDataToAWDServer_withAwdConn__defaultOnce_1, block);
        }

        if (submitDataToAWDServer_withAwdConn__classDebugEnabled_1 == 1)
        {
          v60 = v20;
          v56 = v19;
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregatedResults=%@", v19];
          v23 = MEMORY[0x277D3F178];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCamera.m"];
          lastPathComponent = [v24 lastPathComponent];
          v26 = v22;
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCamera submitDataToAWDServer:withAwdConn:]"];
          [v23 logMessage:v26 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:268];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

          v19 = v56;
          v20 = v60;
        }
      }

      if (v20)
      {
        v55 = v8;
        [v20 setTimestamp:{objc_msgSend(connCopy, "getAWDTimestamp")}];
        monotonicDate2 = [MEMORY[0x277CBEAA8] monotonicDate];
        [monotonicDate2 timeIntervalSince1970];
        v31 = v30;

        [v20 setCameraFrontOnDuration:0];
        [v20 setCameraBackOnDuration:0];
        [v20 setCameraTorchOnDuration:0];
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v57 = v19;
        v32 = v19;
        v33 = [v32 countByEnumeratingWithState:&v62 objects:v67 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v63;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v63 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v62 + 1) + 8 * i);
              v38 = [v37 objectForKeyedSubscript:kPLAWDCameraMetricsKey];
              v39 = [v37 objectForKeyedSubscript:kPLAWDCameraMetricsValue];
              [v39 doubleValue];
              v41 = v40;

              if ([v38 isEqualToString:kPLAWDFrontCameraOnDuration])
              {
                if ([(PLAWDCamera *)self prevFrontCameraState])
                {
                  [(PLAWDCamera *)self frontCameraTimestamp];
                  v41 = v41 + v31 - v42;
                  [(PLAWDCamera *)self setFrontCameraTimestamp:v31];
                }

                [v20 setCameraFrontOnDuration:(v41 * 1000.0)];
              }

              else if ([v38 isEqualToString:kPLAWDBackCameraOnDuration])
              {
                if ([(PLAWDCamera *)self prevBackCameraState])
                {
                  [(PLAWDCamera *)self backCameraTimestamp];
                  v41 = v41 + v31 - v43;
                  [(PLAWDCamera *)self setBackCameraTimestamp:v31];
                }

                [v20 setCameraBackOnDuration:(v41 * 1000.0)];
              }

              else if ([v38 isEqualToString:kPLAWDTorchCameraOnDuration])
              {
                if ([(PLAWDCamera *)self prevTorchCameraState])
                {
                  [(PLAWDCamera *)self torchCameraTimestamp];
                  v41 = v41 + v31 - v44;
                  [(PLAWDCamera *)self setTorchCameraTimestamp:v31];
                }

                [v20 setCameraTorchOnDuration:(v41 * 1000.0)];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v62 objects:v67 count:16];
          }

          while (v34);
        }

        [(PLAWDCamera *)self setCameraSubmitCnt:[(PLAWDCamera *)self cameraSubmitCnt]+ 1];
        v8 = v55;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v45 = objc_opt_class();
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __49__PLAWDCamera_submitDataToAWDServer_withAwdConn___block_invoke_75;
          v61[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v61[4] = v45;
          if (submitDataToAWDServer_withAwdConn__defaultOnce_73 != -1)
          {
            dispatch_once(&submitDataToAWDServer_withAwdConn__defaultOnce_73, v61);
          }

          if (submitDataToAWDServer_withAwdConn__classDebugEnabled_74 == 1)
          {
            v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Submit Camera stats: submit cnt=%ld ", @"*******PLAWDMetricsService*******", -[PLAWDCamera cameraSubmitCnt](self, "cameraSubmitCnt")];
            v47 = MEMORY[0x277D3F178];
            v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCamera.m"];
            lastPathComponent2 = [v48 lastPathComponent];
            v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCamera submitDataToAWDServer:withAwdConn:]"];
            [v47 logMessage:v46 fromFile:lastPathComponent2 fromFunction:v50 fromLineNumber:309];

            v51 = PLLogCommon();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              [PLAWDDisplay startMetricCollection:];
            }
          }
        }

        [v55 setMetric:v20];
        v19 = v57;
      }
    }

    [(PLAWDCamera *)self reInitCameraStats];
    v52 = [connCopy submitMetric:v8];
  }

  else
  {
    v52 = 0;
  }

  v53 = *MEMORY[0x277D85DE8];
  return v52;
}

uint64_t __49__PLAWDCamera_submitDataToAWDServer_withAwdConn___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitDataToAWDServer_withAwdConn__classDebugEnabled_1 = result;
  return result;
}

uint64_t __49__PLAWDCamera_submitDataToAWDServer_withAwdConn___block_invoke_75(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitDataToAWDServer_withAwdConn__classDebugEnabled_74 = result;
  return result;
}

@end