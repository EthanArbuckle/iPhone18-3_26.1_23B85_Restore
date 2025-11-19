@interface PLAWDWifiBT
+ (id)entryAggregateDefinitionAwdBT;
+ (id)entryAggregateDefinitionAwdWifi;
+ (id)entryAggregateDefinitions;
+ (id)getSharedObjWithOperator:(id)a3;
- (BOOL)submitBtDataToAWDServer:(id)a3 withAwdConn:(id)a4;
- (BOOL)submitDataToAWDServer:(id)a3 withAwdConn:(id)a4;
- (BOOL)submitWiFiDataToAWDServer:(id)a3 withAwdConn:(id)a4;
- (void)addEntryToBTTable:(id)a3 withValue:(double)a4;
- (void)addEntryToWiFiTable:(id)a3 withValue:(double)a4 andBand:(id)a5;
- (void)handleBTCallback:(id)a3;
- (void)handleBTPowerCallback:(id)a3;
- (void)handleWifiCallback:(id)a3;
- (void)resetBTTable;
- (void)resetWifiTable;
- (void)startBtMetricCollection;
- (void)startMetricCollection:(id)a3;
- (void)startWifiMetricCollection;
- (void)stopMetricCollection:(id)a3;
@end

@implementation PLAWDWifiBT

+ (id)getSharedObjWithOperator:(id)a3
{
  v3 = plAwdWifiBT;
  if (!plAwdWifiBT)
  {
    v4 = a3;
    v5 = [(PLAWDAuxMetrics *)[PLAWDWifiBT alloc] initWithOperator:v4];

    v6 = plAwdWifiBT;
    plAwdWifiBT = v5;

    v3 = plAwdWifiBT;
  }

  return v3;
}

+ (id)entryAggregateDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"AwdWifi";
  v3 = [a1 entryAggregateDefinitionAwdWifi];
  v8[1] = @"AwdBT";
  v9[0] = v3;
  v4 = [a1 entryAggregateDefinitionAwdBT];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)startMetricCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 longValue];
  if (v5 == 2031624)
  {
    [(PLAWDWifiBT *)self startBtMetricCollection];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v13 = objc_opt_class();
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __37__PLAWDWifiBT_startMetricCollection___block_invoke_102;
      v19[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v19[4] = v13;
      if (startMetricCollection__defaultOnce_100 != -1)
      {
        dispatch_once(&startMetricCollection__defaultOnce_100, v19);
      }

      if (startMetricCollection__classDebugEnabled_101 == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Start BT collection ", @"*******PLAWDMetricsService*******"];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
        v16 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT startMetricCollection:]"];
        [v14 logMessage:v7 fromFile:v16 fromFunction:v17 fromLineNumber:98];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        goto LABEL_15;
      }
    }
  }

  else if (v5 == 2031621)
  {
    [(PLAWDWifiBT *)self startWifiMetricCollection];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v6 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__PLAWDWifiBT_startMetricCollection___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (startMetricCollection__defaultOnce_2 != -1)
      {
        dispatch_once(&startMetricCollection__defaultOnce_2, block);
      }

      if (startMetricCollection__classDebugEnabled_2 == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Start Wifi collection ", @"*******PLAWDMetricsService*******"];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT startMetricCollection:]"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:92];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

LABEL_15:
      }
    }
  }

  v18 = [(PLAWDAuxMetrics *)self runningMetrics];
  [v18 addObject:v4];
}

uint64_t __37__PLAWDWifiBT_startMetricCollection___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startMetricCollection__classDebugEnabled_2 = result;
  return result;
}

uint64_t __37__PLAWDWifiBT_startMetricCollection___block_invoke_102(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startMetricCollection__classDebugEnabled_101 = result;
  return result;
}

- (void)stopMetricCollection:(id)a3
{
  v4 = a3;
  v5 = [(PLAWDAuxMetrics *)self runningMetrics];
  [v5 removeObject:v4];

  v6 = [v4 longValue];
  if (v6 == 2031624)
  {
    [(PLAWDWifiBT *)self setBtEventCallback:0];
    [(PLAWDWifiBT *)self setBtPowerCallback:0];
    [(PLAWDWifiBT *)self setBtRailCallback:0];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __36__PLAWDWifiBT_stopMetricCollection___block_invoke_111;
      v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v22[4] = v14;
      if (stopMetricCollection__defaultOnce_109 != -1)
      {
        dispatch_once(&stopMetricCollection__defaultOnce_109, v22);
      }

      if (stopMetricCollection__classDebugEnabled_110 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Stop BT collection ", @"*******PLAWDMetricsService*******"];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
        v17 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT stopMetricCollection:]"];
        [v15 logMessage:v8 fromFile:v17 fromFunction:v18 fromLineNumber:123];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        goto LABEL_15;
      }
    }
  }

  else if (v6 == 2031621)
  {
    [(PLAWDWifiBT *)self setWifiEventCallback:0];
    [(PLAWDWifiBT *)self setWifiRailCallback:0];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__PLAWDWifiBT_stopMetricCollection___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (stopMetricCollection__defaultOnce_2 != -1)
      {
        dispatch_once(&stopMetricCollection__defaultOnce_2, block);
      }

      if (stopMetricCollection__classDebugEnabled_2 == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Stop Wifi collection ", @"*******PLAWDMetricsService*******"];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
        v11 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT stopMetricCollection:]"];
        [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:116];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

LABEL_15:
      }
    }
  }

  v19 = [(PLAWDAuxMetrics *)self runningMetrics];
  v20 = [v19 count];

  if (!v20)
  {
    v21 = plAwdWifiBT;
    plAwdWifiBT = 0;
  }
}

uint64_t __36__PLAWDWifiBT_stopMetricCollection___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopMetricCollection__classDebugEnabled_2 = result;
  return result;
}

uint64_t __36__PLAWDWifiBT_stopMetricCollection___block_invoke_111(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopMetricCollection__classDebugEnabled_110 = result;
  return result;
}

- (BOOL)submitDataToAWDServer:(id)a3 withAwdConn:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 longValue];
  if (v8 == 2031624)
  {
    [(PLAWDWifiBT *)self submitBtDataToAWDServer:v6 withAwdConn:v7];
  }

  else
  {
    if (v8 != 2031621)
    {
      v9 = 0;
      goto LABEL_7;
    }

    [(PLAWDWifiBT *)self submitWiFiDataToAWDServer:v6 withAwdConn:v7];
  }

  v9 = 1;
LABEL_7:

  return v9;
}

+ (id)entryAggregateDefinitionAwdWifi
{
  v27[4] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_2870FEE70;
  v25[1] = MEMORY[0x277CBEC28];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v16;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"WifiState";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v15 commonTypeDict_StringFormat];
  v23[0] = v3;
  v22[1] = @"Band";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v23[1] = v5;
  v22[2] = @"Value";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_RealFormat_aggregateFunction_sum];
  v23[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v27[1] = v8;
  v26[2] = *MEMORY[0x277D3F478];
  v20 = &unk_2870FEE80;
  v18 = *MEMORY[0x277D3F470];
  v19 = &unk_2870FEE80;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v27[2] = v10;
  v26[3] = *MEMORY[0x277D3F488];
  v17 = @"Value";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v27[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)startWifiMetricCollection
{
  [(PLAWDWifiBT *)self setWifiSubmitCnt:0];
  [(PLAWDWifiBT *)self resetWifiTable];
  [(PLAWDWifiBT *)self setIsWiFiRailStart:1];
  [(PLAWDWifiBT *)self setIsWiFiStart:1];
  v3 = [MEMORY[0x277D3F6E0] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F7F8]];
  v4 = objc_alloc(MEMORY[0x277D3F1A8]);
  v5 = [(PLAWDAuxMetrics *)self operator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__PLAWDWifiBT_startWifiMetricCollection__block_invoke;
  v8[3] = &unk_279A58F10;
  v8[4] = self;
  v6 = [v4 initWithOperator:v5 forEntryKey:v3 withBlock:v8];

  [(PLAWDWifiBT *)self setWifiEventCallback:v6];
  v7 = [(PLAWDWifiBT *)self wifiEventCallback];
  [v7 requestEntry];
}

uint64_t __40__PLAWDWifiBT_startWifiMetricCollection__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleWifiCallback:a2];
  }

  return result;
}

- (void)resetWifiTable
{
  v3 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AwdWifi"];
  v4.receiver = self;
  v4.super_class = PLAWDWifiBT;
  [(PLAWDAuxMetrics *)&v4 resetTableWithEntryKey:v3];
}

- (void)addEntryToWiFiTable:(id)a3 withValue:(double)a4 andBand:(id)a5
{
  v8 = *MEMORY[0x277D3F5B8];
  v9 = a5;
  v10 = a3;
  v14 = [(PLOperator *)PLAWDMetricsService entryKeyForType:v8 andName:@"AwdWifi"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14];
  [v11 setObject:v10 forKeyedSubscript:@"WifiState"];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v11 setObject:v12 forKeyedSubscript:@"Value"];

  [v11 setObject:v9 forKeyedSubscript:@"Band"];
  v13 = [(PLAWDAuxMetrics *)self operator];
  [v13 logEntry:v11];
}

- (void)handleWifiCallback:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"entry"];
  if (!v5)
  {
    goto LABEL_146;
  }

  v249 = v4;
  if ([(PLAWDWifiBT *)self isWiFiStart])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v6 = objc_opt_class();
      v265[0] = MEMORY[0x277D85DD0];
      v265[1] = 3221225472;
      v265[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke;
      v265[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v265[4] = v6;
      v7 = v265;
      if (handleWifiCallback__defaultOnce != -1)
      {
        dispatch_once(&handleWifiCallback__defaultOnce, v7);
      }

      if (handleWifiCallback__classDebugEnabled == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Wifi first DiffProperty entry", @"*******PLAWDMetricsService*******"];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
        v11 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
        [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:243];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    [(PLAWDWifiBT *)self setIsWiFiStart:0];
    v264.receiver = self;
    v264.super_class = PLAWDWifiBT;
    if ([(PLAWDAuxMetrics *)&v264 dropFirstEntryReceived:v5 usingFilter:0 andStartTime:0])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v14 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_135;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v14;
        if (handleWifiCallback__defaultOnce_133 != -1)
        {
          dispatch_once(&handleWifiCallback__defaultOnce_133, block);
        }

        if (handleWifiCallback__classDebugEnabled_134 == 1)
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Wifi DiffProperty first entry - dropped - %@", @"*******PLAWDMetricsService*******", v5];
          v16 = MEMORY[0x277D3F178];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
          v18 = [v17 lastPathComponent];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
          [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:248];

          v20 = PLLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

          goto LABEL_145;
        }
      }

      goto LABEL_146;
    }
  }

  v21 = [v5 objectForKeyedSubscript:@"CurrentChannel"];
  [v21 doubleValue];
  v23 = v22;

  if (v23 <= 13.0)
  {
    v27 = @"band_2p4_ghz";
  }

  else
  {
    v24 = [v5 objectForKeyedSubscript:@"CurrentBandwidth"];
    [v24 doubleValue];
    v26 = v25;

    if (v26 == 20.0)
    {
      v27 = @"band_5p02_ghz";
    }

    else
    {
      v239 = [v5 objectForKeyedSubscript:@"CurrentBandwidth"];
      [v239 doubleValue];
      v241 = v240;

      if (v241 == 40.0)
      {
        v27 = @"band_5p04_ghz";
      }

      else
      {
        v242 = [v5 objectForKeyedSubscript:@"CurrentBandwidth"];
        [v242 doubleValue];
        v244 = v243;

        if (v244 == 80.0)
        {
          v27 = @"band_5p08_ghz";
        }

        else
        {
          v27 = 0;
        }
      }
    }
  }

  v28 = [v5 objectForKeyedSubscript:@"TimeDuration"];
  [v28 doubleValue];
  v30 = v29;

  if (v30 > 0.0)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v31 = objc_opt_class();
      v262[0] = MEMORY[0x277D85DD0];
      v262[1] = 3221225472;
      v262[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_150;
      v262[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v262[4] = v31;
      v32 = v262;
      if (handleWifiCallback__defaultOnce_148 != -1)
      {
        dispatch_once(&handleWifiCallback__defaultOnce_148, v32);
      }

      if (handleWifiCallback__classDebugEnabled_149 == 1)
      {
        v33 = MEMORY[0x277CCACA8];
        v34 = [v5 objectForKeyedSubscript:@"TimeDuration"];
        [v34 doubleValue];
        v36 = [v33 stringWithFormat:@"kPLWATimeDuration = %f", v35];

        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
        v39 = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
        [v37 logMessage:v36 fromFile:v39 fromFunction:v40 fromLineNumber:266];

        v41 = PLLogCommon();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    v42 = [v5 objectForKeyedSubscript:@"TimeDuration"];
    [v42 doubleValue];
    [(PLAWDWifiBT *)self addEntryToWiFiTable:@"WifiTotalDuration" withValue:v27 andBand:?];
  }

  v43 = [v5 objectForKeyedSubscript:@"PMDuration"];
  [v43 doubleValue];
  if (v44 == 0.0)
  {
    v45 = [v5 objectForKeyedSubscript:@"MPCDuration"];
    [v45 doubleValue];
    v47 = v46;

    if (v47 == 0.0)
    {
      goto LABEL_50;
    }
  }

  else
  {
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v48 = objc_opt_class();
    v261[0] = MEMORY[0x277D85DD0];
    v261[1] = 3221225472;
    v261[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_162;
    v261[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v261[4] = v48;
    v49 = v261;
    if (handleWifiCallback__defaultOnce_160 != -1)
    {
      dispatch_once(&handleWifiCallback__defaultOnce_160, v49);
    }

    if (handleWifiCallback__classDebugEnabled_161 == 1)
    {
      v50 = MEMORY[0x277CCACA8];
      v51 = [v5 objectForKeyedSubscript:@"PMDuration"];
      [v51 doubleValue];
      v53 = [v50 stringWithFormat:@"kPLWAPMDuration = %f", v52];

      v54 = MEMORY[0x277D3F178];
      v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
      v56 = [v55 lastPathComponent];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
      [v54 logMessage:v53 fromFile:v56 fromFunction:v57 fromLineNumber:273];

      v58 = PLLogCommon();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v59 = objc_opt_class();
    v260[0] = MEMORY[0x277D85DD0];
    v260[1] = 3221225472;
    v260[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_168;
    v260[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v260[4] = v59;
    v60 = v260;
    if (handleWifiCallback__defaultOnce_166 != -1)
    {
      dispatch_once(&handleWifiCallback__defaultOnce_166, v60);
    }

    if (handleWifiCallback__classDebugEnabled_167 == 1)
    {
      v61 = MEMORY[0x277CCACA8];
      v62 = [v5 objectForKeyedSubscript:@"MPCDuration"];
      [v62 doubleValue];
      v64 = [v61 stringWithFormat:@"kPLWAMPCDuration = %f", v63];

      v65 = MEMORY[0x277D3F178];
      v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
      v67 = [v66 lastPathComponent];
      v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
      [v65 logMessage:v64 fromFile:v67 fromFunction:v68 fromLineNumber:274];

      v69 = PLLogCommon();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  v70 = [v5 objectForKeyedSubscript:@"PMDuration"];
  [v70 doubleValue];
  v72 = v71;
  v73 = [v5 objectForKeyedSubscript:@"MPCDuration"];
  [v73 doubleValue];
  [(PLAWDWifiBT *)self addEntryToWiFiTable:@"WifiSleepTime" withValue:v27 andBand:v72 + v74];

LABEL_50:
  v75 = [v5 objectForKeyedSubscript:@"TXDuration"];
  [v75 doubleValue];
  v77 = v76;

  if (v77 > 0.0)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v78 = objc_opt_class();
      v259[0] = MEMORY[0x277D85DD0];
      v259[1] = 3221225472;
      v259[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_177;
      v259[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v259[4] = v78;
      v79 = v259;
      if (handleWifiCallback__defaultOnce_175 != -1)
      {
        dispatch_once(&handleWifiCallback__defaultOnce_175, v79);
      }

      if (handleWifiCallback__classDebugEnabled_176 == 1)
      {
        v80 = MEMORY[0x277CCACA8];
        v81 = [v5 objectForKeyedSubscript:@"TXDuration"];
        [v81 doubleValue];
        v83 = [v80 stringWithFormat:@"kPLWATXDuration = %f", v82];

        v84 = MEMORY[0x277D3F178];
        v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
        v86 = [v85 lastPathComponent];
        v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
        [v84 logMessage:v83 fromFile:v86 fromFunction:v87 fromLineNumber:281];

        v88 = PLLogCommon();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    v89 = [v5 objectForKeyedSubscript:@"TXDuration"];
    [v89 doubleValue];
    [(PLAWDWifiBT *)self addEntryToWiFiTable:@"WifiTxDuration" withValue:v27 andBand:?];
  }

  v90 = [v5 objectForKeyedSubscript:@"RXDuration"];
  [v90 doubleValue];
  v92 = v91;

  if (v92 > 0.0)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v93 = objc_opt_class();
      v258[0] = MEMORY[0x277D85DD0];
      v258[1] = 3221225472;
      v258[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_186;
      v258[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v258[4] = v93;
      v94 = v258;
      if (handleWifiCallback__defaultOnce_184 != -1)
      {
        dispatch_once(&handleWifiCallback__defaultOnce_184, v94);
      }

      if (handleWifiCallback__classDebugEnabled_185 == 1)
      {
        v95 = MEMORY[0x277CCACA8];
        v96 = [v5 objectForKeyedSubscript:@"RXDuration"];
        [v96 doubleValue];
        v98 = [v95 stringWithFormat:@"kPLWARXDuration = %f", v97];

        v99 = MEMORY[0x277D3F178];
        v100 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
        v101 = [v100 lastPathComponent];
        v102 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
        [v99 logMessage:v98 fromFile:v101 fromFunction:v102 fromLineNumber:288];

        v103 = PLLogCommon();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    v104 = [v5 objectForKeyedSubscript:@"RXDuration"];
    [v104 doubleValue];
    [(PLAWDWifiBT *)self addEntryToWiFiTable:@"WifiRxDuration" withValue:v27 andBand:?];
  }

  v105 = [v5 objectForKeyedSubscript:@"HSICActiveDuration"];
  [v105 doubleValue];
  v107 = v106;

  if (v107 > 0.0)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v108 = objc_opt_class();
      v257[0] = MEMORY[0x277D85DD0];
      v257[1] = 3221225472;
      v257[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_195;
      v257[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v257[4] = v108;
      v109 = v257;
      if (handleWifiCallback__defaultOnce_193 != -1)
      {
        dispatch_once(&handleWifiCallback__defaultOnce_193, v109);
      }

      if (handleWifiCallback__classDebugEnabled_194 == 1)
      {
        v110 = MEMORY[0x277CCACA8];
        v111 = [v5 objectForKeyedSubscript:@"HSICActiveDuration"];
        [v111 doubleValue];
        v113 = [v110 stringWithFormat:@"kPLWATXDuration = %f", v112];

        v114 = MEMORY[0x277D3F178];
        v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
        v116 = [v115 lastPathComponent];
        v117 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
        [v114 logMessage:v113 fromFile:v116 fromFunction:v117 fromLineNumber:295];

        v118 = PLLogCommon();
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    v119 = [v5 objectForKeyedSubscript:@"HSICActiveDuration"];
    [v119 doubleValue];
    [(PLAWDWifiBT *)self addEntryToWiFiTable:@"WifiHsicDuration" withValue:v27 andBand:?];
  }

  v120 = [v5 objectForKeyedSubscript:@"PNOScanSSIDDuration"];
  [v120 doubleValue];
  if (v121 == 0.0)
  {
    v122 = [v5 objectForKeyedSubscript:@"PNOBSSIDDuration"];
    [v122 doubleValue];
    if (v123 == 0.0)
    {
      v124 = [v5 objectForKeyedSubscript:@"RoamScanDuration"];
      [v124 doubleValue];
      if (v125 == 0.0)
      {
        v126 = [v5 objectForKeyedSubscript:@"AssociatedScanDuration"];
        [v126 doubleValue];
        if (v127 == 0.0)
        {
          v128 = [v5 objectForKeyedSubscript:@"OtherScanDuration"];
          [v128 doubleValue];
          if (v129 == 0.0)
          {
            v248 = [v5 objectForKeyedSubscript:@"UserScanDuration"];
            [v248 doubleValue];
            if (v130 == 0.0)
            {
              v247 = [v5 objectForKeyedSubscript:@"ScanDuration"];
              [v247 doubleValue];
              v246 = v245;

              if (v246 == 0.0)
              {
                goto LABEL_139;
              }

              goto LABEL_89;
            }
          }
        }
      }
    }
  }

LABEL_89:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v131 = objc_opt_class();
    v256[0] = MEMORY[0x277D85DD0];
    v256[1] = 3221225472;
    v256[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_219;
    v256[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v256[4] = v131;
    v132 = v256;
    if (handleWifiCallback__defaultOnce_217 != -1)
    {
      dispatch_once(&handleWifiCallback__defaultOnce_217, v132);
    }

    if (handleWifiCallback__classDebugEnabled_218 == 1)
    {
      v133 = MEMORY[0x277CCACA8];
      v134 = [v5 objectForKeyedSubscript:@"PNOScanSSIDDuration"];
      [v134 doubleValue];
      v136 = [v133 stringWithFormat:@"kPLWAPNOScanSSIDDuration = %f", v135];

      v137 = MEMORY[0x277D3F178];
      v138 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
      v139 = [v138 lastPathComponent];
      v140 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
      [v137 logMessage:v136 fromFile:v139 fromFunction:v140 fromLineNumber:305];

      v141 = PLLogCommon();
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v142 = objc_opt_class();
    v255[0] = MEMORY[0x277D85DD0];
    v255[1] = 3221225472;
    v255[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_225;
    v255[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v255[4] = v142;
    v143 = v255;
    if (handleWifiCallback__defaultOnce_223 != -1)
    {
      dispatch_once(&handleWifiCallback__defaultOnce_223, v143);
    }

    if (handleWifiCallback__classDebugEnabled_224 == 1)
    {
      v144 = MEMORY[0x277CCACA8];
      v145 = [v5 objectForKeyedSubscript:@"PNOBSSIDDuration"];
      [v145 doubleValue];
      v147 = [v144 stringWithFormat:@"kPLWAPNOScanBSSIDDuration = %f", v146];

      v148 = MEMORY[0x277D3F178];
      v149 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
      v150 = [v149 lastPathComponent];
      v151 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
      [v148 logMessage:v147 fromFile:v150 fromFunction:v151 fromLineNumber:306];

      v152 = PLLogCommon();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v153 = objc_opt_class();
    v254[0] = MEMORY[0x277D85DD0];
    v254[1] = 3221225472;
    v254[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_231;
    v254[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v254[4] = v153;
    v154 = v254;
    if (handleWifiCallback__defaultOnce_229 != -1)
    {
      dispatch_once(&handleWifiCallback__defaultOnce_229, v154);
    }

    if (handleWifiCallback__classDebugEnabled_230 == 1)
    {
      v155 = MEMORY[0x277CCACA8];
      v156 = [v5 objectForKeyedSubscript:@"RoamScanDuration"];
      [v156 doubleValue];
      v158 = [v155 stringWithFormat:@"kPLWARoamScanDuration = %f", v157];

      v159 = MEMORY[0x277D3F178];
      v160 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
      v161 = [v160 lastPathComponent];
      v162 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
      [v159 logMessage:v158 fromFile:v161 fromFunction:v162 fromLineNumber:307];

      v163 = PLLogCommon();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v164 = objc_opt_class();
    v253[0] = MEMORY[0x277D85DD0];
    v253[1] = 3221225472;
    v253[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_237;
    v253[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v253[4] = v164;
    v165 = v253;
    if (handleWifiCallback__defaultOnce_235 != -1)
    {
      dispatch_once(&handleWifiCallback__defaultOnce_235, v165);
    }

    if (handleWifiCallback__classDebugEnabled_236 == 1)
    {
      v166 = MEMORY[0x277CCACA8];
      v167 = [v5 objectForKeyedSubscript:@"AssociatedScanDuration"];
      [v167 doubleValue];
      v169 = [v166 stringWithFormat:@"kPLWAAssociatedScanDuration = %f", v168];

      v170 = MEMORY[0x277D3F178];
      v171 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
      v172 = [v171 lastPathComponent];
      v173 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
      [v170 logMessage:v169 fromFile:v172 fromFunction:v173 fromLineNumber:308];

      v174 = PLLogCommon();
      if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v175 = objc_opt_class();
    v252[0] = MEMORY[0x277D85DD0];
    v252[1] = 3221225472;
    v252[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_243;
    v252[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v252[4] = v175;
    v176 = v252;
    if (handleWifiCallback__defaultOnce_241 != -1)
    {
      dispatch_once(&handleWifiCallback__defaultOnce_241, v176);
    }

    if (handleWifiCallback__classDebugEnabled_242 == 1)
    {
      v177 = MEMORY[0x277CCACA8];
      v178 = [v5 objectForKeyedSubscript:@"OtherScanDuration"];
      [v178 doubleValue];
      v180 = [v177 stringWithFormat:@"kPLWAOtherScanDuration = %f", v179];

      v181 = MEMORY[0x277D3F178];
      v182 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
      v183 = [v182 lastPathComponent];
      v184 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
      [v181 logMessage:v180 fromFile:v183 fromFunction:v184 fromLineNumber:309];

      v185 = PLLogCommon();
      if (os_log_type_enabled(v185, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v186 = objc_opt_class();
    v251[0] = MEMORY[0x277D85DD0];
    v251[1] = 3221225472;
    v251[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_249;
    v251[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v251[4] = v186;
    v187 = v251;
    if (handleWifiCallback__defaultOnce_247 != -1)
    {
      dispatch_once(&handleWifiCallback__defaultOnce_247, v187);
    }

    if (handleWifiCallback__classDebugEnabled_248 == 1)
    {
      v188 = MEMORY[0x277CCACA8];
      v189 = [v5 objectForKeyedSubscript:@"UserScanDuration"];
      [v189 doubleValue];
      v191 = [v188 stringWithFormat:@"kPLWAUserScanDuration = %f", v190];

      v192 = MEMORY[0x277D3F178];
      v193 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
      v194 = [v193 lastPathComponent];
      v195 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
      [v192 logMessage:v191 fromFile:v194 fromFunction:v195 fromLineNumber:310];

      v196 = PLLogCommon();
      if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v197 = objc_opt_class();
    v250[0] = MEMORY[0x277D85DD0];
    v250[1] = 3221225472;
    v250[2] = __34__PLAWDWifiBT_handleWifiCallback___block_invoke_255;
    v250[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v250[4] = v197;
    v198 = v250;
    if (handleWifiCallback__defaultOnce_253 != -1)
    {
      dispatch_once(&handleWifiCallback__defaultOnce_253, v198);
    }

    if (handleWifiCallback__classDebugEnabled_254 == 1)
    {
      v199 = MEMORY[0x277CCACA8];
      v200 = [v5 objectForKeyedSubscript:@"ScanDuration"];
      [v200 doubleValue];
      v202 = [v199 stringWithFormat:@"kPLWAScanDuration = %f", v201];

      v203 = MEMORY[0x277D3F178];
      v204 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
      v205 = [v204 lastPathComponent];
      v206 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleWifiCallback:]"];
      [v203 logMessage:v202 fromFile:v205 fromFunction:v206 fromLineNumber:311];

      v207 = PLLogCommon();
      if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  v208 = [v5 objectForKeyedSubscript:@"PNOScanSSIDDuration"];
  [v208 doubleValue];
  v210 = v209;
  v211 = [v5 objectForKeyedSubscript:@"PNOBSSIDDuration"];
  [v211 doubleValue];
  v213 = v210 + v212;
  v214 = [v5 objectForKeyedSubscript:@"RoamScanDuration"];
  [v214 doubleValue];
  v216 = v213 + v215;
  v217 = [v5 objectForKeyedSubscript:@"AssociatedScanDuration"];
  [v217 doubleValue];
  v219 = v216 + v218;
  v220 = [v5 objectForKeyedSubscript:@"OtherScanDuration"];
  [v220 doubleValue];
  v222 = v219 + v221;
  v223 = [v5 objectForKeyedSubscript:@"UserScanDuration"];
  [v223 doubleValue];
  v225 = v222 + v224;
  v226 = [v5 objectForKeyedSubscript:@"ScanDuration"];
  [v226 doubleValue];
  [(PLAWDWifiBT *)self addEntryToWiFiTable:@"WifiScanDuration" withValue:v27 andBand:v225 + v227];

LABEL_139:
  v228 = [v5 objectForKeyedSubscript:@"FRTSDuration"];
  [v228 doubleValue];
  v230 = v229;

  if (v230 > 0.0)
  {
    v231 = [v5 objectForKeyedSubscript:@"FRTSDuration"];
    [v231 doubleValue];
    [(PLAWDWifiBT *)self addEntryToWiFiTable:@"WifiFrtsDuration" withValue:v27 andBand:?];
  }

  v232 = [v5 objectForKeyedSubscript:@"PCIESuspendDuration"];
  [v232 doubleValue];
  v234 = v233;

  if (v234 > 0.0)
  {
    v235 = [v5 objectForKeyedSubscript:@"PCIESuspendDuration"];
    [v235 doubleValue];
    [(PLAWDWifiBT *)self addEntryToWiFiTable:@"WifiPcieSuspendDuration" withValue:v27 andBand:?];
  }

  v236 = [v5 objectForKeyedSubscript:@"PCIEActiveDuration"];
  [v236 doubleValue];
  v238 = v237;

  v4 = v249;
  if (v238 > 0.0)
  {
    v15 = [v5 objectForKeyedSubscript:@"PCIEActiveDuration"];
    [v15 doubleValue];
    [(PLAWDWifiBT *)self addEntryToWiFiTable:@"WifiPcieActiveDuration" withValue:v27 andBand:?];
LABEL_145:
  }

LABEL_146:
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_135(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_134 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_150(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_149 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_162(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_161 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_168(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_167 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_177(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_176 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_186(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_185 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_195(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_194 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_219(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_218 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_225(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_224 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_231(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_230 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_237(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_236 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_243(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_242 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_249(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_248 = result;
  return result;
}

uint64_t __34__PLAWDWifiBT_handleWifiCallback___block_invoke_255(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleWifiCallback__classDebugEnabled_254 = result;
  return result;
}

- (BOOL)submitWiFiDataToAWDServer:(id)a3 withAwdConn:(id)a4
{
  v93 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 newMetricContainerWithIdentifier:{objc_msgSend(a3, "unsignedIntValue")}];
  if (v7)
  {
    v8 = [(PLAWDWifiBT *)self wifiEventCallback];
    [v8 requestEntry];

    sleep(5u);
    v9 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
    v10 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v9 timeIntervalSince1970];
    v12 = v11;
    [v10 timeIntervalSince1970];
    v14 = v13 - v12;

    v15 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AwdWifi"];
    v16 = [(PLAWDAuxMetrics *)self operator];
    v17 = [v16 storage];
    v18 = [v17 aggregateEntriesForKey:v15 withBucketLength:86400.0 inTimeIntervalRange:{v12, v14}];

    v83 = v18;
    v19 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v18];
    v20 = objc_opt_new();
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v21 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__PLAWDWifiBT_submitWiFiDataToAWDServer_withAwdConn___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v21;
      if (submitWiFiDataToAWDServer_withAwdConn__defaultOnce != -1)
      {
        dispatch_once(&submitWiFiDataToAWDServer_withAwdConn__defaultOnce, block);
      }

      if (submitWiFiDataToAWDServer_withAwdConn__classDebugEnabled == 1)
      {
        v81 = v19;
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : %@", @"*******PLAWDMetricsService*******", v19];
        v23 = MEMORY[0x277D3F178];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
        v25 = [v24 lastPathComponent];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT submitWiFiDataToAWDServer:withAwdConn:]"];
        [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:357];

        v27 = PLLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        v19 = v81;
      }
    }

    if (v20)
    {
      v78 = v15;
      v79 = v7;
      v80 = self;
      [v20 setTimestamp:0];
      [v20 setWifi2P4GHzRxDuration:0];
      [v20 setWifi2P4GHzTxDuration:0];
      [v20 setWifi5GHz20MHzRxDuration:0];
      [v20 setWifi5GHz20MHzTxDuration:0];
      [v20 setWifi5GHz40MHzRxDuration:0];
      [v20 setWifi5GHz40MHzTxDuration:0];
      [v20 setWifi5GHz80MHzRxDuration:0];
      [v20 setWifi5GHz80MHzTxDuration:0];
      [v20 setWifiFRTSDuration:0];
      [v20 setWifiHsicActiveDuration:0];
      [v20 setWifiPcieL0Duration:0];
      [v20 setWifiPcieL10Duration:0];
      [v20 setWifiPcieL11Duration:0];
      [v20 setWifiPcieL12Duration:0];
      [v20 setWifiScanDuration:0];
      [v20 setWifiSleepDuration:0];
      [v20 setWifiTotalDuration:0];
      [v20 setWifiTotalPowerMicroWatt:0];
      [v20 setTimestamp:{objc_msgSend(v6, "getAWDTimestamp")}];
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v82 = v19;
      v28 = v19;
      v29 = [v28 countByEnumeratingWithState:&v87 objects:v92 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v88;
        v32 = @"WifiPcieActiveDuration";
        v84 = v28;
        do
        {
          v33 = 0;
          do
          {
            v34 = v32;
            if (*v88 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v35 = *(*(&v87 + 1) + 8 * v33);
            v36 = objc_alloc(MEMORY[0x277CCACA8]);
            v37 = [v35 objectForKeyedSubscript:@"WifiState"];
            v38 = [v36 initWithFormat:@"%@", v37];

            if ([v38 isEqualToString:@"WifiTotalDuration"])
            {
              v39 = [v35 objectForKeyedSubscript:@"Value"];
              [v39 doubleValue];
              [v20 setWifiTotalDuration:v40];
LABEL_29:

              v32 = v34;
              goto LABEL_30;
            }

            if ([v38 isEqualToString:@"WifiScanDuration"])
            {
              v39 = [v35 objectForKeyedSubscript:@"Value"];
              [v39 doubleValue];
              [v20 setWifiScanDuration:v41];
              goto LABEL_29;
            }

            if ([v38 isEqualToString:@"WifiTxDuration"])
            {
              v42 = objc_alloc(MEMORY[0x277CCACA8]);
              v43 = [v35 objectForKeyedSubscript:@"Band"];
              v39 = [v42 initWithFormat:@"%@", v43];

              if ([v39 isEqualToString:@"band_2p4_ghz"])
              {
                v44 = [v35 objectForKeyedSubscript:@"Value"];
                [v44 doubleValue];
                [v20 setWifi2P4GHzTxDuration:v45];
                goto LABEL_27;
              }

              if ([v39 isEqualToString:@"band_5p02_ghz"])
              {
                v44 = [v35 objectForKeyedSubscript:@"Value"];
                [v44 doubleValue];
                [v20 setWifi5GHz20MHzTxDuration:v49];
LABEL_27:
                v28 = v84;
              }

              else
              {
                v28 = v84;
                if ([v39 isEqualToString:@"band_5p04_ghz"])
                {
                  v44 = [v35 objectForKeyedSubscript:@"Value"];
                  [v44 doubleValue];
                  [v20 setWifi5GHz40MHzTxDuration:v52];
                }

                else
                {
                  if (![v39 isEqualToString:@"band_5p08_ghz"])
                  {
                    goto LABEL_29;
                  }

                  v44 = [v35 objectForKeyedSubscript:@"Value"];
                  [v44 doubleValue];
                  [v20 setWifi5GHz80MHzTxDuration:v55];
                }
              }

              goto LABEL_28;
            }

            if ([v38 isEqualToString:@"WifiRxDuration"])
            {
              v46 = objc_alloc(MEMORY[0x277CCACA8]);
              v47 = [v35 objectForKeyedSubscript:@"Band"];
              v39 = [v46 initWithFormat:@"%@", v47];

              if ([v39 isEqualToString:@"band_2p4_ghz"])
              {
                v44 = [v35 objectForKeyedSubscript:@"Value"];
                [v44 doubleValue];
                [v20 setWifi2P4GHzRxDuration:v48];
                goto LABEL_27;
              }

              v28 = v84;
              if ([v39 isEqualToString:@"band_5p02_ghz"])
              {
                v44 = [v35 objectForKeyedSubscript:@"Value"];
                [v44 doubleValue];
                [v20 setWifi5GHz20MHzRxDuration:v51];
              }

              else if ([v39 isEqualToString:@"band_5p04_ghz"])
              {
                v44 = [v35 objectForKeyedSubscript:@"Value"];
                [v44 doubleValue];
                [v20 setWifi5GHz40MHzRxDuration:v54];
              }

              else
              {
                if (![v39 isEqualToString:@"band_5p08_ghz"])
                {
                  goto LABEL_29;
                }

                v44 = [v35 objectForKeyedSubscript:@"Value"];
                [v44 doubleValue];
                [v20 setWifi5GHz80MHzRxDuration:v57];
              }

LABEL_28:

              goto LABEL_29;
            }

            if ([v38 isEqualToString:@"WifiSleepTime"])
            {
              v39 = [v35 objectForKeyedSubscript:@"Value"];
              [v39 doubleValue];
              [v20 setWifiSleepDuration:v50];
              goto LABEL_29;
            }

            if ([v38 isEqualToString:@"WifiFrtsDuration"])
            {
              v39 = [v35 objectForKeyedSubscript:@"Value"];
              [v39 doubleValue];
              [v20 setWifiFRTSDuration:v53];
              goto LABEL_29;
            }

            if ([v38 isEqualToString:@"WifiHsicDuration"])
            {
              v39 = [v35 objectForKeyedSubscript:@"Value"];
              [v39 doubleValue];
              [v20 setWifiHsicActiveDuration:v56];
              goto LABEL_29;
            }

            if ([v38 isEqualToString:@"WifiTotalPower"])
            {
              v39 = [v35 objectForKeyedSubscript:@"Value"];
              [v39 doubleValue];
              [v20 setWifiTotalPowerMicroWatt:v58];
              goto LABEL_29;
            }

            v32 = v34;
            if ([v38 isEqualToString:v34])
            {
              v39 = [v35 objectForKeyedSubscript:v34];
              [v39 doubleValue];
              [v20 setWifiPcieL0Duration:v59];
              goto LABEL_29;
            }

            if ([v38 isEqualToString:@"WifiPcieSuspendDuration"])
            {
              v39 = [v35 objectForKeyedSubscript:@"WifiPcieSuspendDuration"];
              [v39 doubleValue];
              [v20 setWifiPcieL12Duration:v60];
              goto LABEL_29;
            }

LABEL_30:

            ++v33;
          }

          while (v30 != v33);
          v61 = [v28 countByEnumeratingWithState:&v87 objects:v92 count:16];
          v30 = v61;
        }

        while (v61);
      }

      v7 = v79;
      [v79 setMetric:v20];
      self = v80;
      [(PLAWDWifiBT *)v80 setWifiSubmitCnt:[(PLAWDWifiBT *)v80 wifiSubmitCnt]+ 1];
      v19 = v82;
      v15 = v78;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v62 = objc_opt_class();
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __53__PLAWDWifiBT_submitWiFiDataToAWDServer_withAwdConn___block_invoke_278;
        v86[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v86[4] = v62;
        if (submitWiFiDataToAWDServer_withAwdConn__defaultOnce_276 != -1)
        {
          dispatch_once(&submitWiFiDataToAWDServer_withAwdConn__defaultOnce_276, v86);
        }

        if (submitWiFiDataToAWDServer_withAwdConn__classDebugEnabled_277 == 1)
        {
          v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"Submit WiFi stats: submit cnt = %ld", -[PLAWDWifiBT wifiSubmitCnt](v80, "wifiSubmitCnt")];
          v64 = MEMORY[0x277D3F178];
          v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
          v66 = [v65 lastPathComponent];
          v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT submitWiFiDataToAWDServer:withAwdConn:]"];
          [v64 logMessage:v63 fromFile:v66 fromFunction:v67 fromLineNumber:444];

          v68 = PLLogCommon();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

          v19 = v82;
        }
      }
    }

    v69 = v83;
    goto LABEL_63;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v70 = objc_opt_class();
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __53__PLAWDWifiBT_submitWiFiDataToAWDServer_withAwdConn___block_invoke_284;
    v85[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v85[4] = v70;
    if (submitWiFiDataToAWDServer_withAwdConn__defaultOnce_282 != -1)
    {
      dispatch_once(&submitWiFiDataToAWDServer_withAwdConn__defaultOnce_282, v85);
    }

    if (submitWiFiDataToAWDServer_withAwdConn__classDebugEnabled_283 == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Submit WiFi stats: Empty container!!", @"*******PLAWDMetricsService*******"];
      v71 = MEMORY[0x277D3F178];
      v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
      v73 = [v72 lastPathComponent];
      v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT submitWiFiDataToAWDServer:withAwdConn:]"];
      [v71 logMessage:v15 fromFile:v73 fromFunction:v74 fromLineNumber:448];

      v69 = PLLogCommon();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }

LABEL_63:
    }
  }

  [(PLAWDWifiBT *)self resetWifiTable];
  v75 = [v6 submitMetric:v7];

  v76 = *MEMORY[0x277D85DE8];
  return v75;
}

uint64_t __53__PLAWDWifiBT_submitWiFiDataToAWDServer_withAwdConn___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitWiFiDataToAWDServer_withAwdConn__classDebugEnabled = result;
  return result;
}

uint64_t __53__PLAWDWifiBT_submitWiFiDataToAWDServer_withAwdConn___block_invoke_278(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitWiFiDataToAWDServer_withAwdConn__classDebugEnabled_277 = result;
  return result;
}

uint64_t __53__PLAWDWifiBT_submitWiFiDataToAWDServer_withAwdConn___block_invoke_284(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitWiFiDataToAWDServer_withAwdConn__classDebugEnabled_283 = result;
  return result;
}

+ (id)entryAggregateDefinitionAwdBT
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_2870FEE90;
  v23[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v3;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"BTState";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v20[1] = @"BTValue";
  v21[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_RealFormat_aggregateFunction_sum];
  v21[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_2870FEE80;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_2870FEE80;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v25[2] = v10;
  v24[3] = *MEMORY[0x277D3F488];
  v15 = @"BTValue";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)startBtMetricCollection
{
  [(PLAWDWifiBT *)self setBtSubmitCnt:0];
  [(PLAWDWifiBT *)self resetBTTable];
  [(PLAWDWifiBT *)self setIsBTStart:1];
  [(PLAWDWifiBT *)self setIsBTRailStart:1];
  v3 = [MEMORY[0x277D3F690] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F760]];
  v4 = objc_alloc(MEMORY[0x277D3F1A8]);
  v5 = [(PLAWDAuxMetrics *)self operator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__PLAWDWifiBT_startBtMetricCollection__block_invoke;
  v14[3] = &unk_279A58F10;
  v14[4] = self;
  v6 = [v4 initWithOperator:v5 forEntryKey:v3 withBlock:v14];

  [(PLAWDWifiBT *)self setBtEventCallback:v6];
  v7 = [(PLAWDWifiBT *)self btEventCallback];
  [v7 requestEntry];

  v8 = [MEMORY[0x277D3F690] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F758]];
  v9 = objc_alloc(MEMORY[0x277D3F1A8]);
  v10 = [(PLAWDAuxMetrics *)self operator];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__PLAWDWifiBT_startBtMetricCollection__block_invoke_2;
  v13[3] = &unk_279A58F10;
  v13[4] = self;
  v11 = [v9 initWithOperator:v10 forEntryKey:v8 withBlock:v13];

  [(PLAWDWifiBT *)self setBtPowerCallback:v11];
  v12 = [(PLAWDWifiBT *)self btPowerCallback];
  [v12 requestEntry];
}

uint64_t __38__PLAWDWifiBT_startBtMetricCollection__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleBTCallback:a2];
  }

  return result;
}

uint64_t __38__PLAWDWifiBT_startBtMetricCollection__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleBTPowerCallback:a2];
  }

  return result;
}

- (void)resetBTTable
{
  v3 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AwdBT"];
  v4.receiver = self;
  v4.super_class = PLAWDWifiBT;
  [(PLAWDAuxMetrics *)&v4 resetTableWithEntryKey:v3];
}

- (void)addEntryToBTTable:(id)a3 withValue:(double)a4
{
  v6 = *MEMORY[0x277D3F5B8];
  v7 = a3;
  v11 = [(PLOperator *)PLAWDMetricsService entryKeyForType:v6 andName:@"AwdBT"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v8 setObject:v7 forKeyedSubscript:@"BTState"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v8 setObject:v9 forKeyedSubscript:@"BTValue"];

  v10 = [(PLAWDAuxMetrics *)self operator];
  [v10 logEntry:v8];
}

- (void)handleBTCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  sleep(1u);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__PLAWDWifiBT_handleBTCallback___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (handleBTCallback__defaultOnce != -1)
    {
      dispatch_once(&handleBTCallback__defaultOnce, block);
    }

    if (handleBTCallback__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s - %@", "-[PLAWDWifiBT handleBTCallback:]", v4];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleBTCallback:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:557];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  if (v4)
  {
    v12 = [(PLAWDAuxMetrics *)self operator];
    v13 = [v12 storage];
    v14 = [v4 entryKey];
    v15 = [v13 entryForKey:v14 withID:{objc_msgSend(v4, "entryID") - 1}];

    if (v15)
    {
      v16 = [v15 objectForKeyedSubscript:@"DeviceConnected"];
      v17 = [v16 BOOLValue];

      if (v17)
      {
        v18 = [v4 entryDate];
        [v18 timeIntervalSince1970];
        v20 = v19;
        v21 = [v15 entryDate];
        v22 = [v21 laterDate:0];
        [v22 timeIntervalSince1970];
        v24 = v20 - v23;

        if (v24 > 0.0)
        {
          [(PLAWDWifiBT *)self addEntryToBTTable:@"Connected" withValue:v24];
        }
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v25 = objc_opt_class();
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __32__PLAWDWifiBT_handleBTCallback___block_invoke_299;
        v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v32[4] = v25;
        if (handleBTCallback__defaultOnce_297 != -1)
        {
          dispatch_once(&handleBTCallback__defaultOnce_297, v32);
        }

        if (handleBTCallback__classDebugEnabled_298 == 1)
        {
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"BT ConnectedStateCallback - %@", v15];
          v27 = MEMORY[0x277D3F178];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
          v29 = [v28 lastPathComponent];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleBTCallback:]"];
          [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:567];

          v31 = PLLogCommon();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }
        }
      }
    }
  }
}

uint64_t __32__PLAWDWifiBT_handleBTCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBTCallback__classDebugEnabled = result;
  return result;
}

uint64_t __32__PLAWDWifiBT_handleBTCallback___block_invoke_299(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBTCallback__classDebugEnabled_298 = result;
  return result;
}

- (void)handleBTPowerCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  if (v4)
  {
    if (![(PLAWDWifiBT *)self isBTStart])
    {
      goto LABEL_17;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __37__PLAWDWifiBT_handleBTPowerCallback___block_invoke;
      v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v47[4] = v5;
      if (handleBTPowerCallback__defaultOnce != -1)
      {
        dispatch_once(&handleBTPowerCallback__defaultOnce, v47);
      }

      if (handleBTPowerCallback__classDebugEnabled == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : BT Properties first entry", @"*******PLAWDMetricsService*******"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleBTPowerCallback:]"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:578];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    [(PLAWDWifiBT *)self setIsBTStart:0];
    v46.receiver = self;
    v46.super_class = PLAWDWifiBT;
    if ([(PLAWDAuxMetrics *)&v46 dropFirstEntryReceived:v4 usingFilter:0 andStartTime:0])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v12 = objc_opt_class();
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __37__PLAWDWifiBT_handleBTPowerCallback___block_invoke_308;
        v45[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v45[4] = v12;
        if (handleBTPowerCallback__defaultOnce_306 != -1)
        {
          dispatch_once(&handleBTPowerCallback__defaultOnce_306, v45);
        }

        if (handleBTPowerCallback__classDebugEnabled_307 == 1)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : BT Properties first entry - dropped", @"*******PLAWDMetricsService*******"];
          v14 = MEMORY[0x277D3F178];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
          v16 = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleBTPowerCallback:]"];
          [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:583];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

LABEL_31:
        }
      }
    }

    else
    {
LABEL_17:
      sleep(1u);
      v19 = [v4 objectForKeyedSubscript:@"TXPower"];
      [v19 doubleValue];
      v21 = v20;

      if (v21 > 0.0)
      {
        v22 = [v4 objectForKeyedSubscript:@"TXPower"];
        [v22 doubleValue];
        [(PLAWDWifiBT *)self addEntryToBTTable:@"PowerTx" withValue:?];
      }

      v23 = [v4 objectForKeyedSubscript:@"RXPower"];
      [v23 doubleValue];
      v25 = v24;

      if (v25 > 0.0)
      {
        v26 = [v4 objectForKeyedSubscript:@"RXPower"];
        [v26 doubleValue];
        [(PLAWDWifiBT *)self addEntryToBTTable:@"PowerRx" withValue:?];
      }

      v27 = [v4 objectForKeyedSubscript:@"SleepPower"];
      [v27 doubleValue];
      v29 = v28;

      if (v29 > 0.0)
      {
        v30 = [v4 objectForKeyedSubscript:@"SleepPower"];
        [v30 doubleValue];
        [(PLAWDWifiBT *)self addEntryToBTTable:@"PowerSleep" withValue:?];
      }

      v31 = [v4 objectForKeyedSubscript:@"OtherPower"];
      [v31 doubleValue];
      v33 = v32;

      if (v33 > 0.0)
      {
        v34 = [v4 objectForKeyedSubscript:@"OtherPower"];
        [v34 doubleValue];
        [(PLAWDWifiBT *)self addEntryToBTTable:@"PowerOther" withValue:?];
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v35 = objc_opt_class();
        block = MEMORY[0x277D85DD0];
        v41 = 3221225472;
        v42 = __37__PLAWDWifiBT_handleBTPowerCallback___block_invoke_326;
        v43 = &__block_descriptor_40_e5_v8__0lu32l8;
        v44 = v35;
        if (handleBTPowerCallback__defaultOnce_324 != -1)
        {
          dispatch_once(&handleBTPowerCallback__defaultOnce_324, &block);
        }

        if (handleBTPowerCallback__classDebugEnabled_325 == 1)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"BT Properties Callback - %@", v4, block, v41, v42, v43, v44];
          v36 = MEMORY[0x277D3F178];
          v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
          v38 = [v37 lastPathComponent];
          v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT handleBTPowerCallback:]"];
          [v36 logMessage:v13 fromFile:v38 fromFunction:v39 fromLineNumber:606];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

          goto LABEL_31;
        }
      }
    }
  }
}

uint64_t __37__PLAWDWifiBT_handleBTPowerCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBTPowerCallback__classDebugEnabled = result;
  return result;
}

uint64_t __37__PLAWDWifiBT_handleBTPowerCallback___block_invoke_308(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBTPowerCallback__classDebugEnabled_307 = result;
  return result;
}

uint64_t __37__PLAWDWifiBT_handleBTPowerCallback___block_invoke_326(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBTPowerCallback__classDebugEnabled_325 = result;
  return result;
}

- (BOOL)submitBtDataToAWDServer:(id)a3 withAwdConn:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 newMetricContainerWithIdentifier:{objc_msgSend(a3, "unsignedIntValue")}];
  if (v7)
  {
    v8 = [(PLAWDWifiBT *)self btEventCallback];
    [v8 requestEntry];

    sleep(5u);
    v9 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
    v10 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v9 timeIntervalSince1970];
    v12 = v11;
    [v10 timeIntervalSince1970];
    v14 = v13 - v12;

    v15 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AwdBT"];
    v16 = [(PLAWDAuxMetrics *)self operator];
    v17 = [v16 storage];
    v18 = [v17 aggregateEntriesForKey:v15 withBucketLength:86400.0 inTimeIntervalRange:{v12, v14}];

    v19 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v18];
    v20 = objc_opt_new();
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v21 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__PLAWDWifiBT_submitBtDataToAWDServer_withAwdConn___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v21;
      if (submitBtDataToAWDServer_withAwdConn__defaultOnce != -1)
      {
        dispatch_once(&submitBtDataToAWDServer_withAwdConn__defaultOnce, block);
      }

      if (submitBtDataToAWDServer_withAwdConn__classDebugEnabled == 1)
      {
        v64 = v19;
        v66 = v15;
        v22 = v20;
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : %@", @"*******PLAWDMetricsService*******", v19];
        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
        v26 = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT submitBtDataToAWDServer:withAwdConn:]"];
        [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:628];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        v19 = v64;
        v15 = v66;
        v20 = v22;
      }
    }

    if (v20)
    {
      v61 = v18;
      v62 = v7;
      v67 = v15;
      v63 = self;
      [v20 setBtConnectedDuration:0];
      [v20 setBtOthersDuration:0];
      [v20 setBtRxDuration:0];
      [v20 setBtTxDuration:0];
      [v20 setBtSleepDuration:0];
      [v20 setBtTotalPowerMicroWatt:0];
      v29 = v20;
      [v20 setTimestamp:{objc_msgSend(v6, "getAWDTimestamp")}];
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v65 = v19;
      v30 = v19;
      v31 = [v30 countByEnumeratingWithState:&v70 objects:v75 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v71;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v71 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v70 + 1) + 8 * i);
            v36 = objc_alloc(MEMORY[0x277CCACA8]);
            v37 = [v35 objectForKeyedSubscript:@"BTState"];
            v38 = [v36 initWithFormat:@"%@", v37];

            if ([v38 isEqualToString:@"PowerOther"])
            {
              v39 = [v35 objectForKeyedSubscript:@"BTValue"];
              [v39 doubleValue];
              [v29 setBtOthersDuration:v40];
            }

            else if ([v38 isEqualToString:@"PowerRx"])
            {
              v39 = [v35 objectForKeyedSubscript:@"BTValue"];
              [v39 doubleValue];
              [v29 setBtRxDuration:v41];
            }

            else if ([v38 isEqualToString:@"PowerTx"])
            {
              v39 = [v35 objectForKeyedSubscript:@"BTValue"];
              [v39 doubleValue];
              [v29 setBtTxDuration:v42];
            }

            else if ([v38 isEqualToString:@"PowerSleep"])
            {
              v39 = [v35 objectForKeyedSubscript:@"BTValue"];
              [v39 doubleValue];
              [v29 setBtSleepDuration:v43];
            }

            else if ([v38 isEqualToString:@"Connected"])
            {
              v39 = [v35 objectForKeyedSubscript:@"BTValue"];
              [v39 doubleValue];
              [v29 setBtConnectedDuration:v44];
            }

            else
            {
              if (![v38 isEqualToString:@"BTTotalPower"])
              {
                goto LABEL_28;
              }

              v39 = [v35 objectForKeyedSubscript:@"BTValue"];
              [v39 doubleValue];
              [v29 setBtTotalPowerMicroWatt:v45];
            }

LABEL_28:
          }

          v32 = [v30 countByEnumeratingWithState:&v70 objects:v75 count:16];
        }

        while (v32);
      }

      v7 = v62;
      v20 = v29;
      [v62 setMetric:v29];
      self = v63;
      [(PLAWDWifiBT *)v63 setBtSubmitCnt:[(PLAWDWifiBT *)v63 btSubmitCnt]+ 1];
      v19 = v65;
      v15 = v67;
      v18 = v61;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v46 = objc_opt_class();
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __51__PLAWDWifiBT_submitBtDataToAWDServer_withAwdConn___block_invoke_333;
        v69[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v69[4] = v46;
        if (submitBtDataToAWDServer_withAwdConn__defaultOnce_331 != -1)
        {
          dispatch_once(&submitBtDataToAWDServer_withAwdConn__defaultOnce_331, v69);
        }

        if (submitBtDataToAWDServer_withAwdConn__classDebugEnabled_332 == 1)
        {
          v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Submit BT stats: submit cnt = %ld", -[PLAWDWifiBT btSubmitCnt](v63, "btSubmitCnt")];
          v48 = MEMORY[0x277D3F178];
          v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
          v50 = [v49 lastPathComponent];
          v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT submitBtDataToAWDServer:withAwdConn:]"];
          [v48 logMessage:v47 fromFile:v50 fromFunction:v51 fromLineNumber:665];

          v52 = PLLogCommon();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

          v19 = v65;
          v15 = v67;
          v20 = v29;
        }
      }
    }

    goto LABEL_38;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v53 = objc_opt_class();
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __51__PLAWDWifiBT_submitBtDataToAWDServer_withAwdConn___block_invoke_339;
    v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v68[4] = v53;
    if (submitBtDataToAWDServer_withAwdConn__defaultOnce_337 != -1)
    {
      dispatch_once(&submitBtDataToAWDServer_withAwdConn__defaultOnce_337, v68);
    }

    if (submitBtDataToAWDServer_withAwdConn__classDebugEnabled_338 == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Submit BT stats: Empty container!!", @"*******PLAWDMetricsService*******"];
      v54 = MEMORY[0x277D3F178];
      v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDWifiBT.m"];
      v56 = [v55 lastPathComponent];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDWifiBT submitBtDataToAWDServer:withAwdConn:]"];
      [v54 logMessage:v15 fromFile:v56 fromFunction:v57 fromLineNumber:669];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }

LABEL_38:
    }
  }

  [(PLAWDWifiBT *)self resetBTTable];
  v58 = [v6 submitMetric:v7];

  v59 = *MEMORY[0x277D85DE8];
  return v58;
}

uint64_t __51__PLAWDWifiBT_submitBtDataToAWDServer_withAwdConn___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitBtDataToAWDServer_withAwdConn__classDebugEnabled = result;
  return result;
}

uint64_t __51__PLAWDWifiBT_submitBtDataToAWDServer_withAwdConn___block_invoke_333(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitBtDataToAWDServer_withAwdConn__classDebugEnabled_332 = result;
  return result;
}

uint64_t __51__PLAWDWifiBT_submitBtDataToAWDServer_withAwdConn___block_invoke_339(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitBtDataToAWDServer_withAwdConn__classDebugEnabled_338 = result;
  return result;
}

@end