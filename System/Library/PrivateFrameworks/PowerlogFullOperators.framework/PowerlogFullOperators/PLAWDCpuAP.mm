@interface PLAWDCpuAP
+ (id)entryAggregateDefinitionAwdAp;
+ (id)entryAggregateDefinitionAwdCpu;
+ (id)entryAggregateDefinitions;
+ (id)getSharedObjWithOperator:(id)operator;
- (BOOL)submitApDataToAWDServer:(id)server withAwdConn:(id)conn;
- (BOOL)submitCpuDataToAWDServer:(id)server withAwdConn:(id)conn;
- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn;
- (void)addEntryToApMetricsTable:(id)table withValue:(double)value;
- (void)handleIOReportEnergyCallback:(id)callback;
- (void)handleWakeCallback:(id)callback;
- (void)resetApTable;
- (void)startApMetricCollection:(id)collection;
- (void)startMetricCollection:(id)collection;
- (void)stopMetricCollection:(id)collection;
@end

@implementation PLAWDCpuAP

+ (id)getSharedObjWithOperator:(id)operator
{
  v3 = plAwdCpuAp;
  if (!plAwdCpuAp)
  {
    operatorCopy = operator;
    v5 = [(PLAWDAuxMetrics *)[PLAWDCpuAP alloc] initWithOperator:operatorCopy];

    v6 = plAwdCpuAp;
    plAwdCpuAp = v5;

    v3 = plAwdCpuAp;
  }

  return v3;
}

+ (id)entryAggregateDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"ApMetrics";
  entryAggregateDefinitionAwdAp = [self entryAggregateDefinitionAwdAp];
  v8[1] = @"CpuMetrics";
  v9[0] = entryAggregateDefinitionAwdAp;
  entryAggregateDefinitionAwdCpu = [self entryAggregateDefinitionAwdCpu];
  v9[1] = entryAggregateDefinitionAwdCpu;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)startMetricCollection:(id)collection
{
  collectionCopy = collection;
  runningMetrics = [(PLAWDAuxMetrics *)self runningMetrics];
  [runningMetrics addObject:collectionCopy];

  longValue = [collectionCopy longValue];
  if (longValue == 2031620)
  {
    [(PLAWDCpuAP *)self startCpuMetricCollection:collectionCopy];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __36__PLAWDCpuAP_startMetricCollection___block_invoke_54;
      v19[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v19[4] = v14;
      if (startMetricCollection__defaultOnce_52 != -1)
      {
        dispatch_once(&startMetricCollection__defaultOnce_52, v19);
      }

      if (startMetricCollection__classDebugEnabled_53 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Start CpuLoad collection", @"*******PLAWDMetricsService*******"];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
        lastPathComponent = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP startMetricCollection:]"];
        [v15 logMessage:v8 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:77];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        goto LABEL_15;
      }
    }
  }

  else if (longValue == 2031634)
  {
    [(PLAWDCpuAP *)self startApMetricCollection:collectionCopy];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__PLAWDCpuAP_startMetricCollection___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (startMetricCollection__defaultOnce_0 != -1)
      {
        dispatch_once(&startMetricCollection__defaultOnce_0, block);
      }

      if (startMetricCollection__classDebugEnabled_0 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Start ApData collection", @"*******PLAWDMetricsService*******"];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
        lastPathComponent2 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP startMetricCollection:]"];
        [v9 logMessage:v8 fromFile:lastPathComponent2 fromFunction:v12 fromLineNumber:72];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

LABEL_15:
      }
    }
  }
}

uint64_t __36__PLAWDCpuAP_startMetricCollection___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startMetricCollection__classDebugEnabled_0 = result;
  return result;
}

uint64_t __36__PLAWDCpuAP_startMetricCollection___block_invoke_54(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startMetricCollection__classDebugEnabled_53 = result;
  return result;
}

- (void)stopMetricCollection:(id)collection
{
  collectionCopy = collection;
  runningMetrics = [(PLAWDAuxMetrics *)self runningMetrics];
  [runningMetrics removeObject:collectionCopy];

  longValue = [collectionCopy longValue];
  if (longValue == 2031620)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __35__PLAWDCpuAP_stopMetricCollection___block_invoke_63;
      v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v22[4] = v14;
      if (stopMetricCollection__defaultOnce_61 != -1)
      {
        dispatch_once(&stopMetricCollection__defaultOnce_61, v22);
      }

      if (stopMetricCollection__classDebugEnabled_62 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Stop CpuLoad collection", @"*******PLAWDMetricsService*******"];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
        lastPathComponent = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP stopMetricCollection:]"];
        [v15 logMessage:v8 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:98];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        goto LABEL_15;
      }
    }
  }

  else if (longValue == 2031634)
  {
    [(PLAWDCpuAP *)self setIoreportEnergyEventCallback:0];
    [(PLAWDCpuAP *)self setMonitorEventCallback:0];
    [(PLAWDCpuAP *)self setWakeEventCallback:0];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __35__PLAWDCpuAP_stopMetricCollection___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (stopMetricCollection__defaultOnce_0 != -1)
      {
        dispatch_once(&stopMetricCollection__defaultOnce_0, block);
      }

      if (stopMetricCollection__classDebugEnabled_0 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Stop ApData collection", @"*******PLAWDMetricsService*******"];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
        lastPathComponent2 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP stopMetricCollection:]"];
        [v9 logMessage:v8 fromFile:lastPathComponent2 fromFunction:v12 fromLineNumber:94];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

LABEL_15:
      }
    }
  }

  runningMetrics2 = [(PLAWDAuxMetrics *)self runningMetrics];
  v20 = [runningMetrics2 count];

  if (!v20)
  {
    v21 = plAwdCpuAp;
    plAwdCpuAp = 0;
  }
}

uint64_t __35__PLAWDCpuAP_stopMetricCollection___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopMetricCollection__classDebugEnabled_0 = result;
  return result;
}

uint64_t __35__PLAWDCpuAP_stopMetricCollection___block_invoke_63(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopMetricCollection__classDebugEnabled_62 = result;
  return result;
}

- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn
{
  serverCopy = server;
  connCopy = conn;
  longValue = [serverCopy longValue];
  if (longValue == 2031620)
  {
    [(PLAWDCpuAP *)self submitCpuDataToAWDServer:serverCopy withAwdConn:connCopy];
  }

  else
  {
    if (longValue != 2031634)
    {
      v9 = 0;
      goto LABEL_7;
    }

    [(PLAWDCpuAP *)self submitApDataToAWDServer:serverCopy withAwdConn:connCopy];
  }

  v9 = 1;
LABEL_7:

  return v9;
}

+ (id)entryAggregateDefinitionAwdAp
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_2870FEE10;
  v23[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v3;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"ApSource";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v20[1] = @"ApValue";
  v21[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat_aggregateFunction_sum];
  v21[1] = commonTypeDict_RealFormat_aggregateFunction_sum;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_2870FEE20;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_2870FEE20;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v25[2] = v10;
  v24[3] = *MEMORY[0x277D3F488];
  v15 = @"ApValue";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)startApMetricCollection:(id)collection
{
  [(PLAWDCpuAP *)self setApSubmitCnt:0];
  [(PLAWDCpuAP *)self resetApTable];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLAWDCpuAP *)self setSleepStartTime:monotonicDate];

  [(PLAWDCpuAP *)self setIsIoreportEnergy:1];
  v5 = [MEMORY[0x277D3F6A8] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F7C8]];
  v6 = objc_alloc(MEMORY[0x277D3F1A8]);
  operator = [(PLAWDAuxMetrics *)self operator];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__PLAWDCpuAP_startApMetricCollection___block_invoke;
  v15[3] = &unk_279A58F10;
  v15[4] = self;
  v8 = [v6 initWithOperator:operator forEntryKey:v5 withBlock:v15];

  [(PLAWDCpuAP *)self setIoreportEnergyEventCallback:v8];
  ioreportEnergyEventCallback = [(PLAWDCpuAP *)self ioreportEnergyEventCallback];
  [ioreportEnergyEventCallback requestEntry];

  v10 = [MEMORY[0x277D3F6D0] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F7F0]];
  v11 = objc_alloc(MEMORY[0x277D3F1A8]);
  operator2 = [(PLAWDAuxMetrics *)self operator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__PLAWDCpuAP_startApMetricCollection___block_invoke_2;
  v14[3] = &unk_279A58F10;
  v14[4] = self;
  v13 = [v11 initWithOperator:operator2 forEntryKey:v10 withBlock:v14];

  [(PLAWDCpuAP *)self setWakeEventCallback:v13];
}

uint64_t __38__PLAWDCpuAP_startApMetricCollection___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleIOReportEnergyCallback:a2];
  }

  return result;
}

uint64_t __38__PLAWDCpuAP_startApMetricCollection___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleWakeCallback:a2];
  }

  return result;
}

- (void)addEntryToApMetricsTable:(id)table withValue:(double)value
{
  v6 = *MEMORY[0x277D3F5B8];
  tableCopy = table;
  v11 = [(PLOperator *)PLAWDMetricsService entryKeyForType:v6 andName:@"ApMetrics"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v8 setObject:tableCopy forKeyedSubscript:@"ApSource"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  [v8 setObject:v9 forKeyedSubscript:@"ApValue"];

  operator = [(PLAWDAuxMetrics *)self operator];
  [operator logEntry:v8];
}

- (void)handleIOReportEnergyCallback:(id)callback
{
  v4 = [callback objectForKey:@"entry"];
  if (v4)
  {
    if (![(PLAWDCpuAP *)self isIoreportEnergy])
    {
      goto LABEL_17;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __43__PLAWDCpuAP_handleIOReportEnergyCallback___block_invoke;
      v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v50[4] = v5;
      if (handleIOReportEnergyCallback__defaultOnce != -1)
      {
        dispatch_once(&handleIOReportEnergyCallback__defaultOnce, v50);
      }

      if (handleIOReportEnergyCallback__classDebugEnabled == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Ioreport CPU/SoC/GPU energy first entry", @"*******PLAWDMetricsService*******"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP handleIOReportEnergyCallback:]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:188];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    [(PLAWDCpuAP *)self setIsIoreportEnergy:0];
    v49.receiver = self;
    v49.super_class = PLAWDCpuAP;
    if (![(PLAWDAuxMetrics *)&v49 dropFirstEntryReceived:v4 usingFilter:0 andStartTime:0])
    {
LABEL_17:
      v19 = MEMORY[0x277CBEAA8];
      v20 = [v4 objectForKeyedSubscript:@"SampleTime"];
      [v20 doubleValue];
      v22 = -v21;
      entryDate = [v4 entryDate];
      v13 = [v19 dateWithTimeInterval:entryDate sinceDate:v22];

      entryDate2 = [v4 entryDate];
      v47.receiver = self;
      v47.super_class = PLAWDCpuAP;
      LOBYTE(entryDate) = [(PLAWDAuxMetrics *)&v47 doesInterfereWithChargerWithStartDate:v13 withEndDate:entryDate2];

      if ((entryDate & 1) == 0)
      {
        v25 = [v4 objectForKeyedSubscript:@"CPU Energy"];
        [v25 doubleValue];
        v27 = v26;

        if (v27 > 0.0)
        {
          v28 = [v4 objectForKeyedSubscript:@"CPU Energy"];
          [v28 doubleValue];
          [(PLAWDCpuAP *)self addEntryToApMetricsTable:@"CPU" withValue:v29 / 3600.0];
        }

        v30 = [v4 objectForKeyedSubscript:@"GPU Energy"];
        [v30 doubleValue];
        v32 = v31;

        if (v32 > 0.0)
        {
          v33 = [v4 objectForKeyedSubscript:@"GPU Energy"];
          [v33 doubleValue];
          [(PLAWDCpuAP *)self addEntryToApMetricsTable:@"GPU" withValue:v34 / 3600.0];
        }

        v35 = [v4 objectForKeyedSubscript:@"SoC Energy"];
        [v35 doubleValue];
        v37 = v36;

        if (v37 != 0.0)
        {
          v38 = [v4 objectForKeyedSubscript:@"SoC Energy"];
          [v38 doubleValue];
          [(PLAWDCpuAP *)self addEntryToApMetricsTable:@"SOC" withValue:v39 / 3600.0];
        }
      }

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_32;
      }

      v40 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__PLAWDCpuAP_handleIOReportEnergyCallback___block_invoke_107;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v40;
      if (handleIOReportEnergyCallback__defaultOnce_105 != -1)
      {
        dispatch_once(&handleIOReportEnergyCallback__defaultOnce_105, block);
      }

      if (handleIOReportEnergyCallback__classDebugEnabled_106 != 1)
      {
        goto LABEL_32;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Cpu/Soc/Gpu energy entry= %@", @"*******PLAWDMetricsService*******", v4];
      v41 = MEMORY[0x277D3F178];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
      lastPathComponent2 = [v42 lastPathComponent];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP handleIOReportEnergyCallback:]"];
      [v41 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v44 fromLineNumber:214];

      v45 = PLLogCommon();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }

LABEL_31:
LABEL_32:

      goto LABEL_33;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __43__PLAWDCpuAP_handleIOReportEnergyCallback___block_invoke_87;
      v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v48[4] = v12;
      if (handleIOReportEnergyCallback__defaultOnce_85 != -1)
      {
        dispatch_once(&handleIOReportEnergyCallback__defaultOnce_85, v48);
      }

      if (handleIOReportEnergyCallback__classDebugEnabled_86 == 1)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Ioreport CPU/SoC/GPU energy first entry - dropped", @"*******PLAWDMetricsService*******"];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
        lastPathComponent3 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP handleIOReportEnergyCallback:]"];
        [v14 logMessage:v13 fromFile:lastPathComponent3 fromFunction:v17 fromLineNumber:193];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        goto LABEL_31;
      }
    }
  }

LABEL_33:
}

uint64_t __43__PLAWDCpuAP_handleIOReportEnergyCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleIOReportEnergyCallback__classDebugEnabled = result;
  return result;
}

uint64_t __43__PLAWDCpuAP_handleIOReportEnergyCallback___block_invoke_87(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleIOReportEnergyCallback__classDebugEnabled_86 = result;
  return result;
}

uint64_t __43__PLAWDCpuAP_handleIOReportEnergyCallback___block_invoke_107(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleIOReportEnergyCallback__classDebugEnabled_106 = result;
  return result;
}

- (void)handleWakeCallback:(id)callback
{
  v4 = [callback objectForKey:@"entry"];
  v5 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"ApMetrics"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  operator = [(PLAWDAuxMetrics *)self operator];
  storage = [operator storage];
  entryKey = [v4 entryKey];
  v10 = [storage entryForKey:entryKey withID:{objc_msgSend(v4, "entryID") - 1}];

  v11 = [v10 objectForKeyedSubscript:@"State"];
  [v11 doubleValue];
  v13 = v12;

  if (v13 == 4.0)
  {
    entryDate = [v4 entryDate];
    [(PLAWDCpuAP *)self setSleepStartTime:entryDate];
  }

  entryDate2 = [v4 objectForKeyedSubscript:@"State"];
  [entryDate2 doubleValue];
  if (v16 == 4.0)
  {
    v17 = [v10 objectForKeyedSubscript:@"State"];
    [v17 doubleValue];
    v19 = v18;

    if (v19 != 4.0)
    {
      goto LABEL_7;
    }

    [v6 setObject:@"Awake" forKeyedSubscript:@"ApSource"];
    v20 = MEMORY[0x277CCABB0];
    entryDate2 = [v10 entryDate];
    sleepStartTime = [(PLAWDCpuAP *)self sleepStartTime];
    [entryDate2 timeIntervalSinceDate:sleepStartTime];
    v22 = [v20 numberWithDouble:?];
    [v6 setObject:v22 forKeyedSubscript:@"ApValue"];
  }

LABEL_7:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v23 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __33__PLAWDCpuAP_handleWakeCallback___block_invoke;
    v33 = &__block_descriptor_40_e5_v8__0lu32l8;
    v34 = v23;
    if (handleWakeCallback__defaultOnce != -1)
    {
      dispatch_once(&handleWakeCallback__defaultOnce, &block);
    }

    if (handleWakeCallback__classDebugEnabled == 1)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"From WakeCallback - %@", v4, block, v31, v32, v33, v34];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
      lastPathComponent = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP handleWakeCallback:]"];
      [v25 logMessage:v24 fromFile:lastPathComponent fromFunction:v28 fromLineNumber:236];

      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __33__PLAWDCpuAP_handleWakeCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWakeCallback__classDebugEnabled = result;
  return result;
}

- (void)resetApTable
{
  v3 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"ApMetrics"];
  v4.receiver = self;
  v4.super_class = PLAWDCpuAP;
  [(PLAWDAuxMetrics *)&v4 resetTableWithEntryKey:v3];
}

- (BOOL)submitApDataToAWDServer:(id)server withAwdConn:(id)conn
{
  v75 = *MEMORY[0x277D85DE8];
  connCopy = conn;
  v7 = [connCopy newMetricContainerWithIdentifier:{objc_msgSend(server, "unsignedIntValue")}];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [v8 timeIntervalSince1970];
    v11 = v10;
    [monotonicDate timeIntervalSince1970];
    v13 = v12 - v11;

    v14 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"ApMetrics"];
    operator = [(PLAWDAuxMetrics *)self operator];
    storage = [operator storage];
    v17 = [storage aggregateEntriesForKey:v14 withBucketLength:86400.0 inTimeIntervalRange:{v11, v13}];

    v18 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v17];
    v19 = objc_opt_new();
    v20 = 0x277D3F000uLL;
    v21 = &off_25EE41000;
    v66 = v18;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v22 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__PLAWDCpuAP_submitApDataToAWDServer_withAwdConn___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v22;
      if (submitApDataToAWDServer_withAwdConn__defaultOnce != -1)
      {
        dispatch_once(&submitApDataToAWDServer_withAwdConn__defaultOnce, block);
      }

      if (submitApDataToAWDServer_withAwdConn__classDebugEnabled == 1)
      {
        v63 = v19;
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : %@", @"*******PLAWDMetricsService*******", v18];
        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
        lastPathComponent = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP submitApDataToAWDServer:withAwdConn:]"];
        [v24 logMessage:v23 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:280];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        v19 = v63;
        v18 = v66;
        v21 = &off_25EE41000;
        v20 = 0x277D3F000;
      }
    }

    if (v19)
    {
      v60 = v14;
      v61 = v7;
      selfCopy = self;
      v64 = connCopy;
      [v19 setTimestamp:{objc_msgSend(connCopy, "getAWDTimestamp")}];
      [v19 setSocPowerMicroWatt:0];
      [v19 setCpuPowerMicroWatt:0];
      [v19 setGpuPowerMicroWatt:0];
      [v19 setDramPowerMicroWatt:0];
      v29 = v19;
      [v19 setApAwakeDuration:0];
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v30 = v18;
      v31 = [v30 countByEnumeratingWithState:&v69 objects:v74 count:16];
      if (!v31)
      {
        goto LABEL_28;
      }

      v32 = v31;
      v33 = *v70;
      while (1)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v70 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v69 + 1) + 8 * i);
          v36 = objc_alloc(MEMORY[0x277CCACA8]);
          v37 = [v35 objectForKeyedSubscript:@"ApSource"];
          v38 = [v36 initWithFormat:@"%@", v37];

          if ([v38 isEqualToString:@"CPU"])
          {
            v39 = [v35 objectForKeyedSubscript:@"ApValue"];
            [v39 doubleValue];
            [v29 setCpuPowerMicroWatt:(v40 * 1000.0)];
          }

          else if ([v38 isEqualToString:@"GPU"])
          {
            v39 = [v35 objectForKeyedSubscript:@"ApValue"];
            [v39 doubleValue];
            [v29 setGpuPowerMicroWatt:(v41 * 1000.0)];
          }

          else if ([v38 isEqualToString:@"SOC"])
          {
            v39 = [v35 objectForKeyedSubscript:@"ApValue"];
            [v39 doubleValue];
            [v29 setSocPowerMicroWatt:(v42 * 1000.0)];
          }

          else if ([v38 isEqualToString:@"DRAM"])
          {
            v39 = [v35 objectForKeyedSubscript:@"ApValue"];
            [v39 doubleValue];
            [v29 setDramPowerMicroWatt:(v43 * 1000.0)];
          }

          else
          {
            if (![v38 isEqualToString:@"Awake"])
            {
              goto LABEL_26;
            }

            v39 = [v35 objectForKeyedSubscript:@"ApValue"];
            [v39 doubleValue];
            [v29 setApAwakeDuration:v44];
          }

LABEL_26:
        }

        v32 = [v30 countByEnumeratingWithState:&v69 objects:v74 count:16];
        if (!v32)
        {
LABEL_28:

          v7 = v61;
          v19 = v29;
          [v61 setMetric:v29];
          self = selfCopy;
          connCopy = v64;
          v14 = v60;
          v18 = v66;
          v21 = &off_25EE41000;
          v20 = 0x277D3F000uLL;
          break;
        }
      }
    }

    [(PLAWDCpuAP *)self setApSubmitCnt:[(PLAWDCpuAP *)self apSubmitCnt]+ 1];
    if ([*(v20 + 384) debugEnabled])
    {
      v45 = objc_opt_class();
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = *(v21 + 120);
      v68[2] = __50__PLAWDCpuAP_submitApDataToAWDServer_withAwdConn___block_invoke_128;
      v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v68[4] = v45;
      if (submitApDataToAWDServer_withAwdConn__defaultOnce_126 != -1)
      {
        dispatch_once(&submitApDataToAWDServer_withAwdConn__defaultOnce_126, v68);
      }

      if (submitApDataToAWDServer_withAwdConn__classDebugEnabled_127 == 1)
      {
        v65 = v19;
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Submit ApData stats: submit cnt=%ld", @"*******PLAWDMetricsService*******", -[PLAWDCpuAP apSubmitCnt](self, "apSubmitCnt")];
        v47 = MEMORY[0x277D3F178];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
        lastPathComponent2 = [v48 lastPathComponent];
        v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP submitApDataToAWDServer:withAwdConn:]"];
        [v47 logMessage:v46 fromFile:lastPathComponent2 fromFunction:v50 fromLineNumber:313];

        v51 = PLLogCommon();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        v19 = v65;
        v18 = v66;
      }
    }

    goto LABEL_37;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v52 = objc_opt_class();
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __50__PLAWDCpuAP_submitApDataToAWDServer_withAwdConn___block_invoke_134;
    v67[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v67[4] = v52;
    if (submitApDataToAWDServer_withAwdConn__defaultOnce_132 != -1)
    {
      dispatch_once(&submitApDataToAWDServer_withAwdConn__defaultOnce_132, v67);
    }

    if (submitApDataToAWDServer_withAwdConn__classDebugEnabled_133 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Submit ApData stats: Empty container!!", @"*******PLAWDMetricsService*******"];
      v53 = MEMORY[0x277D3F178];
      v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
      lastPathComponent3 = [v54 lastPathComponent];
      v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP submitApDataToAWDServer:withAwdConn:]"];
      [v53 logMessage:v14 fromFile:lastPathComponent3 fromFunction:v56 fromLineNumber:316];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }

LABEL_37:
    }
  }

  [(PLAWDCpuAP *)self resetApTable];
  v57 = [connCopy submitMetric:v7];

  v58 = *MEMORY[0x277D85DE8];
  return v57;
}

uint64_t __50__PLAWDCpuAP_submitApDataToAWDServer_withAwdConn___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitApDataToAWDServer_withAwdConn__classDebugEnabled = result;
  return result;
}

uint64_t __50__PLAWDCpuAP_submitApDataToAWDServer_withAwdConn___block_invoke_128(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitApDataToAWDServer_withAwdConn__classDebugEnabled_127 = result;
  return result;
}

uint64_t __50__PLAWDCpuAP_submitApDataToAWDServer_withAwdConn___block_invoke_134(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitApDataToAWDServer_withAwdConn__classDebugEnabled_133 = result;
  return result;
}

+ (id)entryAggregateDefinitionAwdCpu
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_2870FEE10;
  v23[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v3;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"ProcessName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v20[1] = @"ProcessTime";
  v21[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat_aggregateFunction_sum];
  v21[1] = commonTypeDict_RealFormat_aggregateFunction_sum;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_2870FEE20;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_2870FEE20;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v25[2] = v10;
  v24[3] = *MEMORY[0x277D3F488];
  v15 = @"ApValue";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)submitCpuDataToAWDServer:(id)server withAwdConn:(id)conn
{
  v56 = *MEMORY[0x277D85DE8];
  connCopy = conn;
  v46 = [connCopy newMetricContainerWithIdentifier:{objc_msgSend(server, "unsignedIntValue")}];
  v7 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [v7 timeIntervalSince1970];
  v10 = v9;
  [monotonicDate timeIntervalSince1970];
  v12 = v11 - v10;

  v13 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"ApMetrics"];
  operator = [(PLAWDAuxMetrics *)self operator];
  storage = [operator storage];
  v43 = v13;
  v16 = [storage aggregateEntriesForKey:v13 withBucketLength:86400.0 inTimeIntervalRange:{v10, v12}];

  v42 = v16;
  v17 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v16];
  v44 = connCopy;
  v45 = objc_alloc_init(MEMORY[0x277D81920]);
  [v45 setTimestamp:{objc_msgSend(connCopy, "getAWDTimestamp")}];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v50;
    do
    {
      v22 = 0;
      do
      {
        if (*v50 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v49 + 1) + 8 * v22);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v24 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __51__PLAWDCpuAP_submitCpuDataToAWDServer_withAwdConn___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v24;
          if (submitCpuDataToAWDServer_withAwdConn__defaultOnce != -1)
          {
            dispatch_once(&submitCpuDataToAWDServer_withAwdConn__defaultOnce, block);
          }

          if (submitCpuDataToAWDServer_withAwdConn__classDebugEnabled == 1)
          {
            v25 = v18;
            selfCopy = self;
            v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"dbEntry = %@ metric = %@ metricContainer = %@", v23, v45, v46];
            v28 = MEMORY[0x277D3F178];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
            lastPathComponent = [v29 lastPathComponent];
            v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP submitCpuDataToAWDServer:withAwdConn:]"];
            [v28 logMessage:v27 fromFile:lastPathComponent fromFunction:v31 fromLineNumber:371];

            v32 = PLLogCommon();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v54 = v27;
              _os_log_debug_impl(&dword_25EE16000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = selfCopy;
            v18 = v25;
          }
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v20);
  }

  [(PLAWDCpuAP *)self setCpuLoadSubmitCnt:[(PLAWDCpuAP *)self cpuLoadSubmitCnt]+ 1];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v33 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __51__PLAWDCpuAP_submitCpuDataToAWDServer_withAwdConn___block_invoke_144;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v33;
    if (submitCpuDataToAWDServer_withAwdConn__defaultOnce_142 != -1)
    {
      dispatch_once(&submitCpuDataToAWDServer_withAwdConn__defaultOnce_142, v47);
    }

    if (submitCpuDataToAWDServer_withAwdConn__classDebugEnabled_143 == 1)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Submit cpuLoad stats: submit cnt=%ld", @"*******PLAWDMetricsService*******", -[PLAWDCpuAP cpuLoadSubmitCnt](self, "cpuLoadSubmitCnt")];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDCpuAP.m"];
      lastPathComponent2 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDCpuAP submitCpuDataToAWDServer:withAwdConn:]"];
      [v35 logMessage:v34 fromFile:lastPathComponent2 fromFunction:v38 fromLineNumber:375];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __51__PLAWDCpuAP_submitCpuDataToAWDServer_withAwdConn___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitCpuDataToAWDServer_withAwdConn__classDebugEnabled = result;
  return result;
}

uint64_t __51__PLAWDCpuAP_submitCpuDataToAWDServer_withAwdConn___block_invoke_144(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitCpuDataToAWDServer_withAwdConn__classDebugEnabled_143 = result;
  return result;
}

@end