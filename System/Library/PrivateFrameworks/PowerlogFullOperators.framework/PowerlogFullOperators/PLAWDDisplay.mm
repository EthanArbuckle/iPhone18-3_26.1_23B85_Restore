@interface PLAWDDisplay
+ (id)entryAggregateDefinitionAwdDisplayAndAls;
+ (id)entryAggregateDefinitions;
+ (id)getSharedObjWithOperator:(id)a3;
- (BOOL)submitDataToAWDServer:(id)a3 withAwdConn:(id)a4;
- (int64_t)getBklbucketIdx:(int64_t)a3 withLux:(int64_t)a4;
- (int64_t)getLuxBucket:(int64_t)a3;
- (int64_t)getUAmpsBucket:(int64_t)a3;
- (void)addEntryToDisplayAlsTable:(id)a3 withValue:(double)a4;
- (void)finalizeDisplayAlsTable;
- (void)handleAlsEnabledCallback:(id)a3;
- (void)handleAlsUserPreferencesCallback:(id)a3;
- (void)handleBacklightCallback:(id)a3;
- (void)handleBatteryCallback:(id)a3;
- (void)handleDisplayCallback:(id)a3;
- (void)handleTouchCallback:(id)a3;
- (void)initDisplayBacklightAlsStats;
- (void)initTouchStats;
- (void)reInitDisplayBacklightAlsStats;
- (void)registerForDisplayAgentNotifications;
- (void)registerForTouchNotifications;
- (void)resetDisplayAlsTable;
- (void)startMetricCollection:(id)a3;
- (void)stopMetricCollection:(id)a3;
@end

@implementation PLAWDDisplay

+ (id)getSharedObjWithOperator:(id)a3
{
  v3 = plAwdDisplay;
  if (!plAwdDisplay)
  {
    v4 = a3;
    v5 = [(PLAWDAuxMetrics *)[PLAWDDisplay alloc] initWithOperator:v4];

    v6 = plAwdDisplay;
    plAwdDisplay = v5;

    v3 = plAwdDisplay;
  }

  return v3;
}

+ (id)entryAggregateDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"DisplayAlsMetrics";
  v2 = [a1 entryAggregateDefinitionAwdDisplayAndAls];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryAggregateDefinitionAwdDisplayAndAls
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_2870FEDF0;
  v23[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v3;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"MetricsKey";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v20[1] = @"MetricsValue";
  v21[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_RealFormat_aggregateFunction_sum];
  v21[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_2870FEE00;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_2870FEE00;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v25[2] = v10;
  v24[3] = *MEMORY[0x277D3F488];
  v15 = @"MetricsValue";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)startMetricCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 longValue];
  if (v5 == 2031625)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v13 = objc_opt_class();
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __38__PLAWDDisplay_startMetricCollection___block_invoke_64;
      v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v21[4] = v13;
      if (startMetricCollection__defaultOnce_62 != -1)
      {
        dispatch_once(&startMetricCollection__defaultOnce_62, v21);
      }

      if (startMetricCollection__classDebugEnabled_63 == 1)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Start Touch collection", @"*******PLAWDMetricsService*******"];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
        v17 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay startMetricCollection:]"];
        [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:122];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    [(PLAWDDisplay *)self initTouchStats];
    [(PLAWDDisplay *)self registerForTouchNotifications];
  }

  else if (v5 == 2031622)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v6 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__PLAWDDisplay_startMetricCollection___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v6;
      if (startMetricCollection__defaultOnce != -1)
      {
        dispatch_once(&startMetricCollection__defaultOnce, block);
      }

      if (startMetricCollection__classDebugEnabled == 1)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Start Display/Backlight/Als collection", @"*******PLAWDMetricsService*******"];
        v8 = MEMORY[0x277D3F178];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay startMetricCollection:]"];
        [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:112];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    [(PLAWDDisplay *)self initDisplayBacklightAlsStats];
    [(PLAWDDisplay *)self registerForDisplayAgentNotifications];
  }

  v20 = [(PLAWDAuxMetrics *)self runningMetrics];
  [v20 addObject:v4];
}

uint64_t __38__PLAWDDisplay_startMetricCollection___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startMetricCollection__classDebugEnabled = result;
  return result;
}

uint64_t __38__PLAWDDisplay_startMetricCollection___block_invoke_64(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startMetricCollection__classDebugEnabled_63 = result;
  return result;
}

- (void)stopMetricCollection:(id)a3
{
  v4 = a3;
  v5 = [(PLAWDAuxMetrics *)self runningMetrics];
  [v5 removeObject:v4];

  v6 = [v4 longValue];
  if (v6 == 2031625)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __37__PLAWDDisplay_stopMetricCollection___block_invoke_73;
      v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v24[4] = v14;
      if (stopMetricCollection__defaultOnce_71 != -1)
      {
        dispatch_once(&stopMetricCollection__defaultOnce_71, v24);
      }

      if (stopMetricCollection__classDebugEnabled_72 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Stop Touch collection.", @"*******PLAWDMetricsService*******"];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay stopMetricCollection:]"];
        [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:154];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

    [(PLAWDDisplay *)self setTouchEventCallback:0];
  }

  else if (v6 == 2031622)
  {
    [(PLAWDDisplay *)self setDisplayEventCallback:0];
    [(PLAWDDisplay *)self setBacklightEventCallback:0];
    [(PLAWDDisplay *)self setAlsUserPreferencesEventCallback:0];
    [(PLAWDDisplay *)self setBatteryEventCallback:0];
    [(PLAWDDisplay *)self setBacklightRailCallback:0];
    [(PLAWDDisplay *)self setAlsEnabledEventCallback:0];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__PLAWDDisplay_stopMetricCollection___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (stopMetricCollection__defaultOnce != -1)
      {
        dispatch_once(&stopMetricCollection__defaultOnce, block);
      }

      if (stopMetricCollection__classDebugEnabled == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Stop Display/Backlight/Als collection.", @"*******PLAWDMetricsService*******"];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
        v11 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay stopMetricCollection:]"];
        [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:149];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }
  }

  v21 = [(PLAWDAuxMetrics *)self runningMetrics];
  v22 = [v21 count];

  if (!v22)
  {
    v23 = plAwdDisplay;
    plAwdDisplay = 0;
  }
}

uint64_t __37__PLAWDDisplay_stopMetricCollection___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopMetricCollection__classDebugEnabled = result;
  return result;
}

uint64_t __37__PLAWDDisplay_stopMetricCollection___block_invoke_73(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopMetricCollection__classDebugEnabled_72 = result;
  return result;
}

- (void)registerForTouchNotifications
{
  v3 = [MEMORY[0x277D3F6A0] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F790]];
  v4 = objc_alloc(MEMORY[0x277D3F1A8]);
  v5 = [(PLAWDAuxMetrics *)self operator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__PLAWDDisplay_registerForTouchNotifications__block_invoke;
  v8[3] = &unk_279A58F10;
  v8[4] = self;
  v6 = [v4 initWithOperator:v5 forEntryKey:v3 withBlock:v8];

  [(PLAWDDisplay *)self setTouchEventCallback:v6];
  v7 = [(PLAWDDisplay *)self touchEventCallback];
  [v7 requestEntry];
}

uint64_t __45__PLAWDDisplay_registerForTouchNotifications__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleTouchCallback:a2];
  }

  return result;
}

- (void)registerForDisplayAgentNotifications
{
  v3 = &off_25EE41000;
  if ([MEMORY[0x277D3F6A0] shouldLogDisplay])
  {
    v4 = [MEMORY[0x277D3F6A0] entryKeyForType:*MEMORY[0x277D3F5E8] andName:*MEMORY[0x277D3F7B0]];
    v5 = objc_alloc(MEMORY[0x277D3F1A8]);
    v6 = [(PLAWDAuxMetrics *)self operator];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __52__PLAWDDisplay_registerForDisplayAgentNotifications__block_invoke;
    v35[3] = &unk_279A58F10;
    v35[4] = self;
    v7 = [v5 initWithOperator:v6 forEntryKey:v4 withBlock:v35];

    [(PLAWDDisplay *)self setDisplayEventCallback:v7];
    if ([(PLAWDDisplay *)self prevMieOn])
    {
      v8 = [(PLAWDDisplay *)self displayEventCallback];
      [v8 requestEntry];
    }

    v9 = *MEMORY[0x277D3F5D0];
    v10 = [MEMORY[0x277D3F6A0] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F7A8]];
    v11 = objc_alloc(MEMORY[0x277D3F1A8]);
    v12 = [(PLAWDAuxMetrics *)self operator];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __52__PLAWDDisplay_registerForDisplayAgentNotifications__block_invoke_2;
    v34[3] = &unk_279A58F10;
    v34[4] = self;
    v13 = [v11 initWithOperator:v12 forEntryKey:v10 withBlock:v34];

    [(PLAWDDisplay *)self setBacklightEventCallback:v13];
    v3 = &off_25EE41000;
  }

  else
  {
    v9 = *MEMORY[0x277D3F5D0];
  }

  if (([MEMORY[0x277D3F208] isMac] & 1) == 0)
  {
    v14 = [MEMORY[0x277D3F6A0] entryKeyForType:v9 andName:*MEMORY[0x277D3F7A0]];
    v15 = objc_alloc(MEMORY[0x277D3F1A8]);
    v16 = [(PLAWDAuxMetrics *)self operator];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = *(v3 + 120);
    v33[2] = __52__PLAWDDisplay_registerForDisplayAgentNotifications__block_invoke_3;
    v33[3] = &unk_279A58F10;
    v33[4] = self;
    v17 = [v15 initWithOperator:v16 forEntryKey:v14 withBlock:v33];

    [(PLAWDDisplay *)self setAlsUserPreferencesEventCallback:v17];
  }

  v18 = [MEMORY[0x277D3F688] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F750]];
  v19 = objc_alloc(MEMORY[0x277D3F1A8]);
  v20 = [(PLAWDAuxMetrics *)self operator];
  v28 = MEMORY[0x277D85DD0];
  v29 = *(v3 + 120);
  v21 = v29;
  v30 = __52__PLAWDDisplay_registerForDisplayAgentNotifications__block_invoke_4;
  v31 = &unk_279A58F10;
  v32 = self;
  v22 = [v19 initWithOperator:v20 forEntryKey:v18 withBlock:&v28];

  [(PLAWDDisplay *)self setBatteryEventCallback:v22];
  v23 = [MEMORY[0x277D3F6A0] entryKeyForType:v9 andName:*MEMORY[0x277D3F798]];
  v24 = objc_alloc(MEMORY[0x277D3F1A8]);
  v25 = [(PLAWDAuxMetrics *)self operator];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = v21;
  v27[2] = __52__PLAWDDisplay_registerForDisplayAgentNotifications__block_invoke_5;
  v27[3] = &unk_279A58F10;
  v27[4] = self;
  v26 = [v24 initWithOperator:v25 forEntryKey:v23 withBlock:v27];

  [(PLAWDDisplay *)self setAlsEnabledEventCallback:v26];
}

uint64_t __52__PLAWDDisplay_registerForDisplayAgentNotifications__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleDisplayCallback:a2];
  }

  return result;
}

uint64_t __52__PLAWDDisplay_registerForDisplayAgentNotifications__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleBacklightCallback:a2];
  }

  return result;
}

uint64_t __52__PLAWDDisplay_registerForDisplayAgentNotifications__block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleAlsUserPreferencesCallback:a2];
  }

  return result;
}

uint64_t __52__PLAWDDisplay_registerForDisplayAgentNotifications__block_invoke_4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleBatteryCallback:a2];
  }

  return result;
}

uint64_t __52__PLAWDDisplay_registerForDisplayAgentNotifications__block_invoke_5(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleAlsEnabledCallback:a2];
  }

  return result;
}

- (void)initTouchStats
{
  [(PLAWDDisplay *)self setTouchSubmitCnt:0];
  v3 = [MEMORY[0x277D3F6A0] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F790]];
  v4 = [(PLAWDAuxMetrics *)self operator];
  v5 = [v4 storage];
  v6 = [v5 lastEntryForKey:v3];

  if (v6)
  {
    v7 = [v6 entryID];
  }

  else
  {
    v7 = -1;
  }

  [(PLAWDDisplay *)self setStartTouchEntryId:v7];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__PLAWDDisplay_initTouchStats__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (initTouchStats_defaultOnce != -1)
    {
      dispatch_once(&initTouchStats_defaultOnce, block);
    }

    if (initTouchStats_classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Init Touch stats: startTouchEntryId=%lld", @"*******PLAWDMetricsService*******", -[PLAWDDisplay startTouchEntryId](self, "startTouchEntryId")];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay initTouchStats]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:251];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __30__PLAWDDisplay_initTouchStats__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initTouchStats_classDebugEnabled = result;
  return result;
}

- (void)initDisplayBacklightAlsStats
{
  v61[1] = *MEMORY[0x277D85DE8];
  [(PLAWDDisplay *)self setDispSubmitCnt:0];
  [(PLAWDDisplay *)self setPrevDisplayOn:0];
  [(PLAWDDisplay *)self setPrevMieOn:0];
  [(PLAWDDisplay *)self setPrevDeviceCharging:0];
  [(PLAWDDisplay *)self setPrevBklBucketIdx:-1];
  [(PLAWDDisplay *)self setBklTimeStamp:0.0];
  [(PLAWDDisplay *)self setDisplayOnTimeStamp:0.0];
  [(PLAWDDisplay *)self setMieOnTimeStamp:0.0];
  [(PLAWDDisplay *)self setPrevBklPower:0.0];
  [(PLAWDDisplay *)self setBklPowerRailTimeStamp:0.0];
  [(PLAWDDisplay *)self resetDisplayAlsTable];
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLAWDDisplay *)self setPrevAlsOn:0];
  v4 = *MEMORY[0x277D3F5D0];
  v5 = [MEMORY[0x277D3F6A0] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F798]];
  v6 = [(PLAWDAuxMetrics *)self operator];
  v7 = [v6 storage];
  v8 = [v7 lastEntryForKey:v5];

  if (v8 && ([v8 objectForKeyedSubscript:@"ALSEnabled"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v10))
  {
    v54 = 1;
    [(PLAWDDisplay *)self setPrevAlsOn:1];
    [(PLAWDDisplay *)self addEntryToDisplayAlsTable:@"AlsEnableCnt" withValue:1.0];
  }

  else
  {
    v54 = 0;
  }

  if ([MEMORY[0x277D3F6A0] shouldLogDisplay])
  {
    v55 = v5;
    v57 = v3;
    v11 = [MEMORY[0x277D3F6A0] entryKeyForType:*MEMORY[0x277D3F5E8] andName:*MEMORY[0x277D3F7B0]];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"Block", @"Backlight"];
    v13 = [(PLAWDAuxMetrics *)self operator];
    v14 = [v13 storage];
    v53 = v12;
    v61[0] = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
    v16 = [v14 lastEntryForKey:v11 withFilters:v15];

    if (v16)
    {
      v17 = [v16 objectForKeyedSubscript:@"Active"];
      -[PLAWDDisplay setPrevDisplayOn:](self, "setPrevDisplayOn:", [v17 BOOLValue]);

      if ([(PLAWDDisplay *)self prevDisplayOn])
      {
        [(PLAWDDisplay *)self addEntryToDisplayAlsTable:@"DisplayOnCount" withValue:1.0];
        [v57 timeIntervalSince1970];
        [(PLAWDDisplay *)self setDisplayOnTimeStamp:?];
      }
    }

    if ([(PLAWDDisplay *)self prevDisplayOn])
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"Block", @"MIE"];
      v19 = [(PLAWDAuxMetrics *)self operator];
      v20 = [v19 storage];
      v52 = v18;
      v60 = v18;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
      v22 = [v20 lastEntryForKey:v11 withFilters:v21];

      if (v22)
      {
        v23 = [v22 objectForKeyedSubscript:@"Active"];
        -[PLAWDDisplay setPrevMieOn:](self, "setPrevMieOn:", [v23 BOOLValue]);

        if ([(PLAWDDisplay *)self prevMieOn])
        {
          [(PLAWDDisplay *)self addEntryToDisplayAlsTable:@"MieOnCount" withValue:1.0];
          [v57 timeIntervalSince1970];
          [(PLAWDDisplay *)self setMieOnTimeStamp:?];
        }
      }

      v24 = [MEMORY[0x277D3F6A0] entryKeyForType:v4 andName:*MEMORY[0x277D3F7A8]];
      v25 = [(PLAWDAuxMetrics *)self operator];
      v26 = [v25 storage];
      v27 = [v26 lastEntryForKey:v24];

      if (v27)
      {
        v28 = [v27 objectForKeyedSubscript:@"uAmps"];
        v29 = [v28 longValue];

        v30 = [v27 objectForKeyedSubscript:@"lux"];
        v31 = [v30 longValue];

        [(PLAWDDisplay *)self setPrevBklBucketIdx:[(PLAWDDisplay *)self getBklbucketIdx:v29 withLux:v31]];
        [v57 timeIntervalSince1970];
        [(PLAWDDisplay *)self setBklTimeStamp:?];
      }
    }

    v5 = v55;
    v3 = v57;
  }

  v32 = [MEMORY[0x277D3F688] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F750]];
  v33 = [(PLAWDAuxMetrics *)self operator];
  v34 = [v33 storage];
  v35 = [v34 lastEntryForKey:v32];

  if (v35)
  {
    v36 = [v35 objectForKeyedSubscript:@"AdapterInfo"];
    if ([v36 BOOLValue])
    {
      v37 = [v35 objectForKeyedSubscript:@"IsCharging"];
      -[PLAWDDisplay setPrevDeviceCharging:](self, "setPrevDeviceCharging:", [v37 BOOLValue]);
    }

    else
    {
      [(PLAWDDisplay *)self setPrevDeviceCharging:0];
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v38 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PLAWDDisplay_initDisplayBacklightAlsStats__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v38;
    if (initDisplayBacklightAlsStats_defaultOnce != -1)
    {
      dispatch_once(&initDisplayBacklightAlsStats_defaultOnce, block);
    }

    if (initDisplayBacklightAlsStats_classDebugEnabled == 1)
    {
      v56 = v5;
      v58 = v3;
      v39 = MEMORY[0x277CCACA8];
      v40 = [(PLAWDDisplay *)self prevDisplayOn];
      v41 = [(PLAWDDisplay *)self prevBklBucketIdx];
      v42 = [(PLAWDDisplay *)self prevMieOn];
      v43 = [(PLAWDDisplay *)self prevDeviceCharging];
      [(PLAWDDisplay *)self prevBklPower];
      v45 = [v39 stringWithFormat:@"%@ : Initialize Display/Backlight/Als: Display-On=%d Backlight-Idx=%ld Mie-On=%d Als-Enabled=%d Plugged=%d bklPower=%f", @"*******PLAWDMetricsService*******", v40, v41, v42, v54, v43, v44];
      v46 = MEMORY[0x277D3F178];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
      v48 = [v47 lastPathComponent];
      v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay initDisplayBacklightAlsStats]"];
      [v46 logMessage:v45 fromFile:v48 fromFunction:v49 fromLineNumber:341];

      v50 = PLLogCommon();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }

      v5 = v56;
      v3 = v58;
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLAWDDisplay_initDisplayBacklightAlsStats__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initDisplayBacklightAlsStats_classDebugEnabled = result;
  return result;
}

- (void)reInitDisplayBacklightAlsStats
{
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  if ([(PLAWDDisplay *)self prevDisplayOn])
  {
    [v3 timeIntervalSince1970];
    [(PLAWDDisplay *)self setDisplayOnTimeStamp:?];
    [v3 timeIntervalSince1970];
    [(PLAWDDisplay *)self setBklTimeStamp:?];
    [v3 timeIntervalSince1970];
    [(PLAWDDisplay *)self setBklPowerRailTimeStamp:?];
    if (![(PLAWDDisplay *)self prevMieOn])
    {
      goto LABEL_6;
    }

    [v3 timeIntervalSince1970];
    v5 = v4;
  }

  else
  {
    [(PLAWDDisplay *)self setPrevBklBucketIdx:-1];
    v5 = 0.0;
    [(PLAWDDisplay *)self setBklTimeStamp:0.0];
    [(PLAWDDisplay *)self setDisplayOnTimeStamp:0.0];
  }

  [(PLAWDDisplay *)self setMieOnTimeStamp:v5];
LABEL_6:
  [(PLAWDDisplay *)self resetDisplayAlsTable];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __46__PLAWDDisplay_reInitDisplayBacklightAlsStats__block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v6;
    if (reInitDisplayBacklightAlsStats_defaultOnce != -1)
    {
      dispatch_once(&reInitDisplayBacklightAlsStats_defaultOnce, &block);
    }

    if (reInitDisplayBacklightAlsStats_classDebugEnabled == 1)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [(PLAWDDisplay *)self prevDisplayOn];
      v9 = [(PLAWDDisplay *)self prevBklBucketIdx];
      v10 = [(PLAWDDisplay *)self prevMieOn];
      v11 = [(PLAWDDisplay *)self prevDeviceCharging];
      v12 = [v7 stringWithFormat:@"%@ : Re- Initialize Display/Backlight/Als: Display-On=%d Backlight-Idx=%ld Mie-On=%d Plugged=%d", @"*******PLAWDMetricsService*******", v8, v9, v10, v11, block, v19, v20, v21, v22];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay reInitDisplayBacklightAlsStats]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:365];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __46__PLAWDDisplay_reInitDisplayBacklightAlsStats__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reInitDisplayBacklightAlsStats_classDebugEnabled = result;
  return result;
}

- (void)resetDisplayAlsTable
{
  v3 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"DisplayAlsMetrics"];
  v4.receiver = self;
  v4.super_class = PLAWDDisplay;
  [(PLAWDAuxMetrics *)&v4 resetTableWithEntryKey:v3];
}

- (void)addEntryToDisplayAlsTable:(id)a3 withValue:(double)a4
{
  v6 = *MEMORY[0x277D3F5B8];
  v7 = a3;
  v11 = [(PLOperator *)PLAWDMetricsService entryKeyForType:v6 andName:@"DisplayAlsMetrics"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v8 setObject:v7 forKeyedSubscript:@"MetricsKey"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v8 setObject:v9 forKeyedSubscript:@"MetricsValue"];

  v10 = [(PLAWDAuxMetrics *)self operator];
  [v10 logEntry:v8];
}

- (int64_t)getLuxBucket:(int64_t)a3
{
  v4 = [(PLAWDDisplay *)self prevAlsOn];
  v5 = 5;
  if (a3 <= 1001)
  {
    v5 = -1;
  }

  if ((a3 - 501) >= 0x1F4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 4;
  }

  if ((a3 - 301) >= 0xC8)
  {
    v7 = v6;
  }

  else
  {
    v7 = 3;
  }

  if ((a3 - 101) >= 0xC8)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  if ((a3 - 31) >= 0x46)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  if ((a3 - 1) >= 0x1E)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v4)
  {
    return v10;
  }

  else
  {
    return 6;
  }
}

- (int64_t)getUAmpsBucket:(int64_t)a3
{
  if (a3 < 1001)
  {
    return 0;
  }

  if (a3 < 0x1389)
  {
    return 1;
  }

  if (a3 < 0x2711)
  {
    return 2;
  }

  if (a3 != 10001 && a3 < 0x3A99)
  {
    return 3;
  }

  if (a3 <= 0x3A98)
  {
    return -1;
  }

  return 4;
}

- (int64_t)getBklbucketIdx:(int64_t)a3 withLux:(int64_t)a4
{
  v6 = [(PLAWDDisplay *)self getLuxBucket:a4];
  v7 = [(PLAWDDisplay *)self getUAmpsBucket:a3];
  v8 = 5 * v6 + v7;
  if (!v6)
  {
    v8 = v7;
  }

  if (v7 < 0)
  {
    v8 = -1;
  }

  if (v6 >= 0)
  {
    return v8;
  }

  else
  {
    return -1;
  }
}

uint64_t __47__PLAWDDisplay_updateDisplayMetrics_withState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateDisplayMetrics_withState__classDebugEnabled = result;
  return result;
}

uint64_t __47__PLAWDDisplay_updateDisplayMetrics_withState___block_invoke_130(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateDisplayMetrics_withState__classDebugEnabled_129 = result;
  return result;
}

uint64_t __47__PLAWDDisplay_updateDisplayMetrics_withState___block_invoke_136(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateDisplayMetrics_withState__classDebugEnabled_135 = result;
  return result;
}

uint64_t __47__PLAWDDisplay_updateDisplayMetrics_withState___block_invoke_142(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateDisplayMetrics_withState__classDebugEnabled_141 = result;
  return result;
}

uint64_t __33__PLAWDDisplay_updateMieMetrics___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateMieMetrics__classDebugEnabled = result;
  return result;
}

- (void)handleTouchCallback:(id)a3
{
  v4 = a3;
  if ([(PLAWDDisplay *)self startTouchEntryId]< 0)
  {
    v5 = [v4 objectForKey:@"entry"];
    v6 = v5;
    if (v5)
    {
      -[PLAWDDisplay setStartTouchEntryId:](self, "setStartTouchEntryId:", [v5 entryID]);
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__PLAWDDisplay_handleTouchCallback___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (handleTouchCallback__defaultOnce != -1)
      {
        dispatch_once(&handleTouchCallback__defaultOnce, block);
      }

      if (handleTouchCallback__classDebugEnabled == 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Touch Callback: startTouchEntryId=%lld", @"*******PLAWDMetricsService*******", -[PLAWDDisplay startTouchEntryId](self, "startTouchEntryId")];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
        v11 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay handleTouchCallback:]"];
        [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:511];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }
  }
}

uint64_t __36__PLAWDDisplay_handleTouchCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleTouchCallback__classDebugEnabled = result;
  return result;
}

- (void)handleDisplayCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  if (v4)
  {
    v11 = v4;
    v5 = [v4 objectForKeyedSubscript:@"Active"];
    v6 = [v5 BOOLValue];

    v7 = [v11 objectForKeyedSubscript:@"Block"];
    v8 = [v7 isEqualToString:@"Backlight"];

    if (v8)
    {
      [(PLAWDDisplay *)self updateDisplayMetrics:1 withState:v6];
    }

    else
    {
      v9 = [v11 objectForKeyedSubscript:@"Block"];
      v10 = [v9 isEqualToString:@"MIE"];

      v4 = v11;
      if (!v10)
      {
        goto LABEL_7;
      }

      [(PLAWDDisplay *)self updateMieMetrics:v6];
    }

    v4 = v11;
  }

LABEL_7:
}

- (void)handleBacklightCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"Brightness"];
    [v6 doubleValue];
    v8 = v7;

    if (v8 <= 0.0)
    {
      v12 = -1;
    }

    else
    {
      v9 = [v5 objectForKeyedSubscript:@"uAmps"];
      v10 = [v9 longValue];
      v11 = [v5 objectForKeyedSubscript:@"lux"];
      v12 = -[PLAWDDisplay getBklbucketIdx:withLux:](self, "getBklbucketIdx:withLux:", v10, [v11 longValue]);
    }

    if ([(PLAWDDisplay *)self prevBklBucketIdx]!= v12)
    {
      if ([(PLAWDDisplay *)self prevBklBucketIdx]< 0)
      {
        v18 = 0.0;
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[PLAWDDisplay prevBklBucketIdx](self, "prevBklBucketIdx")];
        v14 = [v5 entryDate];
        [v14 timeIntervalSince1970];
        v16 = v15;
        [(PLAWDDisplay *)self bklTimeStamp];
        v18 = v16 - v17;

        if (v18 > 0.0)
        {
          [(PLAWDDisplay *)self addEntryToDisplayAlsTable:v13 withValue:v18];
        }
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v19 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __40__PLAWDDisplay_handleBacklightCallback___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v19;
        if (handleBacklightCallback__defaultOnce != -1)
        {
          dispatch_once(&handleBacklightCallback__defaultOnce, block);
        }

        if (handleBacklightCallback__classDebugEnabled == 1)
        {
          v20 = MEMORY[0x277CCACA8];
          v21 = [v5 objectForKeyedSubscript:@"uAmps"];
          v22 = [v21 unsignedLongValue];
          v23 = [v5 objectForKeyedSubscript:@"lux"];
          v24 = [v20 stringWithFormat:@"%@ :Backlight Event: MicroAmps=%lu Lux=%lu prevBucketIdx=%ld duration=%f newBucketIdx=%ld", @"*******PLAWDMetricsService*******", v22, objc_msgSend(v23, "unsignedLongValue"), -[PLAWDDisplay prevBklBucketIdx](self, "prevBklBucketIdx"), *&v18, v12];

          v25 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
          v27 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay handleBacklightCallback:]"];
          [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:577];

          v29 = PLLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }
        }
      }

      if (v12 < 0)
      {
        [(PLAWDDisplay *)self setPrevBklBucketIdx:-1];
      }

      else
      {
        [(PLAWDDisplay *)self setPrevBklBucketIdx:v12];
        v30 = [v5 entryDate];
        [v30 timeIntervalSince1970];
        [(PLAWDDisplay *)self setBklTimeStamp:?];
      }
    }
  }
}

uint64_t __40__PLAWDDisplay_handleBacklightCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBacklightCallback__classDebugEnabled = result;
  return result;
}

- (void)handleAlsUserPreferencesCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  if (v4)
  {
    [(PLAWDDisplay *)self addEntryToDisplayAlsTable:@"AlsCount" withValue:1.0];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __49__PLAWDDisplay_handleAlsUserPreferencesCallback___block_invoke;
      v15 = &__block_descriptor_40_e5_v8__0lu32l8;
      v16 = v5;
      if (handleAlsUserPreferencesCallback__defaultOnce != -1)
      {
        dispatch_once(&handleAlsUserPreferencesCallback__defaultOnce, &block);
      }

      if (handleAlsUserPreferencesCallback__classDebugEnabled == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : ALS Curve changed by user", @"*******PLAWDMetricsService*******", block, v13, v14, v15, v16];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
        v9 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay handleAlsUserPreferencesCallback:]"];
        [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:596];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }
  }
}

uint64_t __49__PLAWDDisplay_handleAlsUserPreferencesCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleAlsUserPreferencesCallback__classDebugEnabled = result;
  return result;
}

- (void)handleBatteryCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"AdapterInfo"];
    v7 = [v6 BOOLValue];

    if ([(PLAWDDisplay *)self prevDisplayOn]&& v7 != [(PLAWDDisplay *)self prevDeviceCharging])
    {
      [(PLAWDDisplay *)self updateDisplayMetrics:0 withState:v7];
    }

    v8 = [(PLAWDDisplay *)self prevDeviceCharging];
    if (v7)
    {
      if (v8)
      {
        goto LABEL_24;
      }

      v9 = [MEMORY[0x277CBEAA8] monotonicDate];
      [v9 timeIntervalSince1970];
      v11 = v10;

      [(PLAWDDisplay *)self bklPowerRailTimeStamp];
      v13 = (v11 - v12) / 3600.0;
      [(PLAWDDisplay *)self prevBklPower];
      if (v14 > 0.0 && v13 > 0.0)
      {
        [(PLAWDDisplay *)self prevBklPower];
        [(PLAWDDisplay *)self addEntryToDisplayAlsTable:@"BacklightPower" withValue:v13 * v15];
      }

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_24;
      }

      v16 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__PLAWDDisplay_handleBatteryCallback___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v16;
      if (handleBatteryCallback__defaultOnce != -1)
      {
        dispatch_once(&handleBatteryCallback__defaultOnce, block);
      }

      if (handleBatteryCallback__classDebugEnabled != 1)
      {
        goto LABEL_24;
      }

      v17 = MEMORY[0x277CCACA8];
      [(PLAWDDisplay *)self prevBklPower];
      v19 = [v17 stringWithFormat:@"%@ : BacklightPowerRail: Charger event - mWhr=%f ", @"*******PLAWDMetricsService*******", v13 * v18];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay handleBatteryCallback:]"];
      [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:619];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_24;
      }

      v25 = [MEMORY[0x277CBEAA8] monotonicDate];
      [v25 timeIntervalSince1970];
      [(PLAWDDisplay *)self setBklPowerRailTimeStamp:?];

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_24;
      }

      v26 = objc_opt_class();
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __38__PLAWDDisplay_handleBatteryCallback___block_invoke_172;
      v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v31[4] = v26;
      if (handleBatteryCallback__defaultOnce_170 != -1)
      {
        dispatch_once(&handleBatteryCallback__defaultOnce_170, v31);
      }

      if (handleBatteryCallback__classDebugEnabled_171 != 1)
      {
        goto LABEL_24;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : BacklightPowerRail: Charger event - update timestamp ", @"*******PLAWDMetricsService*******"];
      v27 = MEMORY[0x277D3F178];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
      v29 = [v28 lastPathComponent];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay handleBatteryCallback:]"];
      [v27 logMessage:v19 fromFile:v29 fromFunction:v30 fromLineNumber:624];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }

LABEL_24:
    [(PLAWDDisplay *)self setPrevDeviceCharging:v7];
  }
}

uint64_t __38__PLAWDDisplay_handleBatteryCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBatteryCallback__classDebugEnabled = result;
  return result;
}

uint64_t __38__PLAWDDisplay_handleBatteryCallback___block_invoke_172(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBatteryCallback__classDebugEnabled_171 = result;
  return result;
}

- (void)handleAlsEnabledCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"ALSEnabled"];
    v7 = [v6 BOOLValue];

    if (v7 != [(PLAWDDisplay *)self prevAlsOn])
    {
      [(PLAWDDisplay *)self addEntryToDisplayAlsTable:@"AlsEnableCnt" withValue:1.0];
      [(PLAWDDisplay *)self setPrevAlsOn:v7];
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__PLAWDDisplay_handleAlsEnabledCallback___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v8;
      if (handleAlsEnabledCallback__defaultOnce != -1)
      {
        dispatch_once(&handleAlsEnabledCallback__defaultOnce, block);
      }

      if (handleAlsEnabledCallback__classDebugEnabled == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : ALS state changed by user. alsOn=%d", @"*******PLAWDMetricsService*******", v7];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
        v12 = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay handleAlsEnabledCallback:]"];
        [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:640];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }
  }
}

uint64_t __41__PLAWDDisplay_handleAlsEnabledCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleAlsEnabledCallback__classDebugEnabled = result;
  return result;
}

- (void)finalizeDisplayAlsTable
{
  v3 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v3 timeIntervalSince1970];
  v5 = v4;

  if ([(PLAWDDisplay *)self prevDisplayOn])
  {
    [(PLAWDDisplay *)self displayOnTimeStamp];
    v7 = v5 - v6;
    if (v5 - v6 > 0.0)
    {
      if ([(PLAWDDisplay *)self prevDeviceCharging])
      {
        v8 = @"PluggedDispOnDur";
      }

      else
      {
        v8 = @"UnpluggedDispOnDur";
      }

      [(PLAWDDisplay *)self addEntryToDisplayAlsTable:v8 withValue:v7];
    }

    if ([(PLAWDDisplay *)self prevMieOn])
    {
      [(PLAWDDisplay *)self mieOnTimeStamp];
      if (v5 - v9 > 0.0)
      {
        [(PLAWDDisplay *)self addEntryToDisplayAlsTable:@"MieOnDur" withValue:?];
      }
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", -[PLAWDDisplay prevBklBucketIdx](self, "prevBklBucketIdx")];
    [(PLAWDDisplay *)self bklTimeStamp];
    if (v5 - v11 > 0.0)
    {
      [(PLAWDDisplay *)self addEntryToDisplayAlsTable:v10 withValue:?];
    }

    [(PLAWDDisplay *)self bklPowerRailTimeStamp];
    v13 = v12;
    if (![(PLAWDDisplay *)self prevDeviceCharging])
    {
      [(PLAWDDisplay *)self prevBklPower];
      if (v14 > 0.0)
      {
        v15 = (v5 - v13) / 3600.0;
        if (v15 > 0.0)
        {
          [(PLAWDDisplay *)self prevBklPower];
          [(PLAWDDisplay *)self addEntryToDisplayAlsTable:@"BacklightPower" withValue:v15 * v16];
        }
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __39__PLAWDDisplay_finalizeDisplayAlsTable__block_invoke;
      v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v34[4] = v17;
      if (finalizeDisplayAlsTable_defaultOnce != -1)
      {
        dispatch_once(&finalizeDisplayAlsTable_defaultOnce, v34);
      }

      if (finalizeDisplayAlsTable_classDebugEnabled == 1)
      {
        v18 = MEMORY[0x277CCACA8];
        [(PLAWDDisplay *)self prevBklPower];
        v20 = [v18 stringWithFormat:@"%@ : Finalize Display table backlightpower=%f dur=%f", @"*******PLAWDMetricsService*******", v19, *&v7];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
        v23 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay finalizeDisplayAlsTable]"];
        [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:672];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v26 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLAWDDisplay_finalizeDisplayAlsTable__block_invoke_184;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v26;
    if (finalizeDisplayAlsTable_defaultOnce_182 != -1)
    {
      dispatch_once(&finalizeDisplayAlsTable_defaultOnce_182, block);
    }

    if (finalizeDisplayAlsTable_classDebugEnabled_183 == 1)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Finalize Display table", @"*******PLAWDMetricsService*******"];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
      v30 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay finalizeDisplayAlsTable]"];
      [v28 logMessage:v27 fromFile:v30 fromFunction:v31 fromLineNumber:676];

      v32 = PLLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __39__PLAWDDisplay_finalizeDisplayAlsTable__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  finalizeDisplayAlsTable_classDebugEnabled = result;
  return result;
}

uint64_t __39__PLAWDDisplay_finalizeDisplayAlsTable__block_invoke_184(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  finalizeDisplayAlsTable_classDebugEnabled_183 = result;
  return result;
}

- (BOOL)submitDataToAWDServer:(id)a3 withAwdConn:(id)a4
{
  v258 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 newMetricContainerWithIdentifier:{objc_msgSend(v6, "unsignedIntValue")}];
  v9 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
  v10 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v9 timeIntervalSince1970];
  v12 = v11;
  [v10 timeIntervalSince1970];
  v14 = v13;

  if (v8)
  {
    v15 = [v6 longValue];
    if (v15 == 2031625)
    {
      v52 = [(PLAWDDisplay *)self touchEventCallback];
      [v52 requestEntry];

      sleep(5u);
      v16 = [MEMORY[0x277D3F6A0] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F790]];
      v53 = [(PLAWDAuxMetrics *)self operator];
      v54 = [v53 storage];
      v19 = [v54 entryForKey:v16 withID:{-[PLAWDDisplay startTouchEntryId](self, "startTouchEntryId")}];

      v55 = [(PLAWDAuxMetrics *)self operator];
      v56 = [v55 storage];
      v20 = [v56 lastEntryForKey:v16];

      v21 = objc_opt_new();
      if (v21)
      {
        [v21 setTimestamp:{objc_msgSend(v7, "getAWDTimestamp")}];
        [v21 setTouchStateOnDuration:0];
        [v21 setTouchStateOffDuration:0];
        [v21 setTouchStateActiveDuration:0];
        [v21 setTouchStateReadyDuration:0];
        [v21 setTouchStateAnticipateDuration:0];
        [v21 setTouchStateOthersDuration:0];
        v57 = 0.0;
        v233 = v16;
        v246 = v21;
        if (v19 && v20)
        {
          v58 = [v20 objectForKeyedSubscript:@"On"];
          [v58 doubleValue];
          v60 = v59;
          v61 = [v19 objectForKeyedSubscript:@"On"];
          [v61 doubleValue];
          v63 = v60 - v62;

          if (v63 > 0.0)
          {
            [v246 setTouchStateOnDuration:v63];
          }

          v64 = [v20 objectForKeyedSubscript:@"Off"];
          [v64 doubleValue];
          v66 = v65;
          v67 = [v19 objectForKeyedSubscript:@"Off"];
          [v67 doubleValue];
          v69 = v66 - v68;

          if (v69 > 0.0)
          {
            [v246 setTouchStateOffDuration:v69];
          }

          v70 = [v20 objectForKeyedSubscript:@"Active"];
          [v70 doubleValue];
          v72 = v71;
          v73 = [v19 objectForKeyedSubscript:@"Active"];
          [v73 doubleValue];
          v75 = v72 - v74;

          if (v75 > 0.0)
          {
            [v246 setTouchStateActiveDuration:v75];
          }

          v76 = [v20 objectForKeyedSubscript:@"Ready"];
          [v76 doubleValue];
          v78 = v77;
          v79 = [v19 objectForKeyedSubscript:@"Ready"];
          [v79 doubleValue];
          v81 = v78 - v80;

          if (v81 > 0.0)
          {
            [v246 setTouchStateReadyDuration:v81];
          }

          v226 = self;
          v228 = v8;
          v230 = v7;
          v82 = [v20 objectForKeyedSubscript:@"Anticipate"];
          [v82 doubleValue];
          v84 = v83;
          v85 = [v19 objectForKeyedSubscript:@"Anticipate"];
          [v85 doubleValue];
          v87 = v84 - v86;

          if (v87 > 0.0)
          {
            [v246 setTouchStateAnticipateDuration:v87];
          }

          v241 = [v20 objectForKeyedSubscript:@"AutoReady"];
          [v241 doubleValue];
          v89 = v88;
          v236 = [v20 objectForKeyedSubscript:@"AutoScan"];
          [v236 doubleValue];
          v91 = v89 + v90;
          v224 = [v20 objectForKeyedSubscript:@"FaceDetected"];
          [v224 doubleValue];
          v93 = v91 + v92;
          v221 = [v20 objectForKeyedSubscript:@"StationaryFingers"];
          [v221 doubleValue];
          v95 = v93 + v94;
          v219 = [v20 objectForKeyedSubscript:@"UILock"];
          [v219 doubleValue];
          v97 = v95 + v96;
          v217 = [v20 objectForKeyedSubscript:@"Unknown"];
          [v217 doubleValue];
          v99 = v97 + v98;
          v215 = [v20 objectForKeyedSubscript:@"VSFOMCal"];
          [v215 doubleValue];
          v101 = v99 + v100;
          v102 = [v19 objectForKeyedSubscript:@"AutoReady"];
          [v102 doubleValue];
          v104 = v103;
          v105 = [v19 objectForKeyedSubscript:@"AutoScan"];
          [v105 doubleValue];
          v107 = v104 + v106;
          v108 = [v19 objectForKeyedSubscript:@"FaceDetected"];
          [v108 doubleValue];
          v110 = v107 + v109;
          v111 = [v19 objectForKeyedSubscript:@"StationaryFingers"];
          [v111 doubleValue];
          v113 = v110 + v112;
          v114 = [v19 objectForKeyedSubscript:@"UILock"];
          [v114 doubleValue];
          v116 = v113 + v115;
          [v19 objectForKeyedSubscript:@"Unknown"];
          v118 = v117 = v20;
          [v118 doubleValue];
          v120 = v116 + v119;
          [v19 objectForKeyedSubscript:@"VSFOMCal"];
          v122 = v121 = v19;
          [v122 doubleValue];
          v57 = v101 - (v120 + v123);

          v19 = v121;
          v20 = v117;

          v21 = v246;
          [v246 setTouchStateOthersDuration:v57];
          v8 = v228;
          v7 = v230;
          self = v226;
        }

        v124 = self;
        [(PLAWDDisplay *)self setTouchSubmitCnt:[(PLAWDDisplay *)self touchSubmitCnt]+ 1];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v125 = objc_opt_class();
          v248[0] = MEMORY[0x277D85DD0];
          v248[1] = 3221225472;
          v248[2] = __50__PLAWDDisplay_submitDataToAWDServer_withAwdConn___block_invoke_272;
          v248[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v248[4] = v125;
          if (submitDataToAWDServer_withAwdConn__defaultOnce_270 != -1)
          {
            dispatch_once(&submitDataToAWDServer_withAwdConn__defaultOnce_270, v248);
          }

          if (submitDataToAWDServer_withAwdConn__classDebugEnabled_271 == 1)
          {
            v237 = v20;
            v242 = v19;
            v126 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Submit Touch stats: submit cnt=%ld metric=%@", @"*******PLAWDMetricsService*******", -[PLAWDDisplay touchSubmitCnt](self, "touchSubmitCnt"), v21];
            v127 = MEMORY[0x277D3F178];
            v128 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
            v129 = [v128 lastPathComponent];
            v130 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay submitDataToAWDServer:withAwdConn:]"];
            [v127 logMessage:v126 fromFile:v129 fromFunction:v130 fromLineNumber:893];

            v131 = PLLogCommon();
            if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
            {
              [PLAWDDisplay startMetricCollection:];
            }

            v20 = v237;
            v19 = v242;
            v21 = v246;
          }
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v132 = objc_opt_class();
          v247[0] = MEMORY[0x277D85DD0];
          v247[1] = 3221225472;
          v247[2] = __50__PLAWDDisplay_submitDataToAWDServer_withAwdConn___block_invoke_278;
          v247[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v247[4] = v132;
          if (submitDataToAWDServer_withAwdConn__defaultOnce_276 != -1)
          {
            dispatch_once(&submitDataToAWDServer_withAwdConn__defaultOnce_276, v247);
          }

          if (submitDataToAWDServer_withAwdConn__classDebugEnabled_277 == 1)
          {
            v229 = v8;
            v231 = v7;
            v225 = v6;
            v220 = MEMORY[0x277CCACA8];
            v218 = [v19 entryID];
            v216 = [v20 entryID];
            v227 = [v20 objectForKeyedSubscript:@"On"];
            [v227 doubleValue];
            v134 = v133;
            v222 = [v19 objectForKeyedSubscript:@"On"];
            [v222 doubleValue];
            v136 = v134 - v135;
            v137 = v19;
            [v20 objectForKeyedSubscript:@"Off"];
            v139 = v138 = v20;
            [v139 doubleValue];
            v141 = v140;
            v142 = [v19 objectForKeyedSubscript:@"Off"];
            [v142 doubleValue];
            v144 = v141 - v143;
            v145 = [v138 objectForKeyedSubscript:@"Ready"];
            [v145 doubleValue];
            v147 = v146;
            v148 = [v19 objectForKeyedSubscript:@"Ready"];
            [v148 doubleValue];
            v150 = v147 - v149;
            v151 = [v138 objectForKeyedSubscript:@"Anticipate"];
            [v151 doubleValue];
            v153 = v152;
            v154 = [v137 objectForKeyedSubscript:@"Anticipate"];
            [v154 doubleValue];
            v156 = v153 - v155;
            v238 = v138;
            v157 = [v138 objectForKeyedSubscript:@"Active"];
            [v157 doubleValue];
            v159 = v158;
            v243 = v137;
            v160 = [v137 objectForKeyedSubscript:@"Active"];
            [v160 doubleValue];
            v162 = [v220 stringWithFormat:@"%@ : Submit Touch stats: start.entryId=%llu end.entryId=%llu On=%f Off=%f Ready=%f Anticipate=%f Active=%f Others=%f", @"*******PLAWDMetricsService*******", v218, v216, *&v136, *&v144, *&v150, *&v156, v159 - v161, *&v57];

            v163 = MEMORY[0x277D3F178];
            v164 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
            v165 = [v164 lastPathComponent];
            v166 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay submitDataToAWDServer:withAwdConn:]"];
            [v163 logMessage:v162 fromFile:v165 fromFunction:v166 fromLineNumber:895];

            v167 = PLLogCommon();
            if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
            {
              [PLAWDDisplay startMetricCollection:];
            }

            v6 = v225;
            v8 = v229;
            v7 = v231;
            self = v124;
            v20 = v238;
            v19 = v243;
            v21 = v246;
          }
        }

        [v8 setMetric:v21];
        v16 = v233;
      }

      if (v20)
      {
        -[PLAWDDisplay setStartTouchEntryId:](self, "setStartTouchEntryId:", [v20 entryID]);
      }

      else
      {
        [(PLAWDDisplay *)self setStartTouchEntryId:-1];
        v168 = [(PLAWDDisplay *)self touchEventCallback];
        [v168 requestEntry];
      }

      goto LABEL_104;
    }

    if (v15 == 2031622)
    {
      [(PLAWDDisplay *)self finalizeDisplayAlsTable];
      v16 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"DisplayAlsMetrics"];
      v17 = [(PLAWDAuxMetrics *)self operator];
      v18 = [v17 storage];
      v19 = [v18 aggregateEntriesForKey:v16 withBucketLength:86400.0 inTimeIntervalRange:{v12, v14 - v12}];

      v20 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v19];
      v21 = objc_opt_new();
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v22 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__PLAWDDisplay_submitDataToAWDServer_withAwdConn___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v22;
        if (submitDataToAWDServer_withAwdConn__defaultOnce != -1)
        {
          dispatch_once(&submitDataToAWDServer_withAwdConn__defaultOnce, block);
        }

        if (submitDataToAWDServer_withAwdConn__classDebugEnabled == 1)
        {
          v239 = v19;
          v244 = v21;
          v234 = v20;
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : %@", @"*******PLAWDMetricsService*******", v20];
          v24 = MEMORY[0x277D3F178];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
          v26 = [v25 lastPathComponent];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay submitDataToAWDServer:withAwdConn:]"];
          [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:698];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

          v20 = v234;
          v19 = v239;
          v21 = v244;
        }
      }

      if (v21)
      {
        v240 = v19;
        v232 = v16;
        [v21 setTimestamp:{objc_msgSend(v7, "getAWDTimestamp")}];
        memset(v257, 0, 140);
        [v21 setPluggedDisplayOnDuration:0];
        [v21 setUnpluggedDisplayOnDuration:0];
        [v21 setDispOnCount:0];
        [v21 setMieCount:0];
        [v21 setMieDuration:0];
        [v21 setTotalDisplayPower:0];
        [v21 setTotalBacklightPower:0];
        [v21 setAlsAutoBrightnessChangeCount:0];
        [v21 setAlsAutoBrightnessLux:0];
        [v21 setAlsAutoBrightnessSlider:0];
        [v21 setAlsBrightnessEnableCnt:0];
        [v21 setDisplayIdlePercentage:0];
        [v21 setAlsAutoBrightnessCurveE0A:0];
        [v21 setAlsAutoBrightnessCurveE0B:0];
        [v21 setAlsAutoBrightnessCurveE1:0];
        [v21 setAlsAutoBrightnessCurveE2:0];
        [v21 setAlsAutoBrightnessCurveL0A:0];
        [v21 setAlsAutoBrightnessCurveL0B:0];
        [v21 setAlsAutoBrightnessCurveL1:0];
        [v21 setAlsAutoBrightnessCurveL2:0];
        [v21 setAlsAutoBrightnessSlider:0];
        v245 = v21;
        [v21 setAlsAutoBrightnessCurveEdynth:0];
        v253 = 0u;
        v254 = 0u;
        v251 = 0u;
        v252 = 0u;
        v235 = v20;
        v29 = v20;
        v30 = [v29 countByEnumeratingWithState:&v251 objects:v256 count:16];
        if (v30)
        {
          v31 = v30;
          v223 = v6;
          v32 = *v252;
          v33 = 0.0;
          v34 = 0.0;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v252 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v36 = *(*(&v251 + 1) + 8 * i);
              v37 = [v36 objectForKeyedSubscript:@"MetricsKey"];
              v38 = [v36 objectForKeyedSubscript:@"MetricsValue"];
              [v38 doubleValue];
              v40 = v39;

              if ([v37 isEqualToString:@"UnpluggedDispOnDur"])
              {
                v34 = v34 + v40;
                [v245 setUnpluggedDisplayOnDuration:(v40 * 1000.0)];
              }

              else if ([v37 isEqualToString:@"PluggedDispOnDur"])
              {
                v34 = v34 + v40;
                [v245 setPluggedDisplayOnDuration:(v40 * 1000.0)];
              }

              else if ([v37 isEqualToString:@"DisplayOnCount"])
              {
                [v245 setDispOnCount:v40];
              }

              else if ([v37 isEqualToString:@"MieOnCount"])
              {
                [v245 setMieCount:v40];
              }

              else if ([v37 isEqualToString:@"MieOnDur"])
              {
                [v245 setMieDuration:(v40 * 1000.0)];
              }

              else if ([v37 isEqualToString:@"DisplayPower"])
              {
                [v245 setTotalDisplayPower:(v40 * 1000.0)];
              }

              else if ([v37 isEqualToString:@"BacklightPower"])
              {
                [v245 setTotalBacklightPower:(v40 * 1000.0)];
              }

              else if ([v37 isEqualToString:@"IdlePercentDur"])
              {
                v33 = v40;
              }

              else if ([v37 isEqualToString:@"AlsCount"])
              {
                [v245 setAlsAutoBrightnessChangeCount:v40];
              }

              else if ([v37 isEqualToString:@"AlsEnableCnt"])
              {
                [v245 setAlsBrightnessEnableCnt:v40];
              }

              else
              {
                v41 = [v37 intValue];
                if ((v41 & 0x80000000) == 0)
                {
                  *(v257 + v41) = (v40 * 1000.0);
                }
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v251 objects:v256 count:16];
          }

          while (v31);

          v6 = v223;
          v19 = v240;
          if (v34 > 0.0)
          {
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v42 = objc_opt_class();
              v250[0] = MEMORY[0x277D85DD0];
              v250[1] = 3221225472;
              v250[2] = __50__PLAWDDisplay_submitDataToAWDServer_withAwdConn___block_invoke_194;
              v250[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v250[4] = v42;
              if (submitDataToAWDServer_withAwdConn__defaultOnce_192 != -1)
              {
                dispatch_once(&submitDataToAWDServer_withAwdConn__defaultOnce_192, v250);
              }

              if (submitDataToAWDServer_withAwdConn__classDebugEnabled_193 == 1)
              {
                v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Submit Disp idle duration: dispDur=%f dispIdleDur=%f", @"*******PLAWDMetricsService*******", *&v34, *&v33];
                v44 = MEMORY[0x277D3F178];
                v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
                v46 = [v45 lastPathComponent];
                v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay submitDataToAWDServer:withAwdConn:]"];
                [v44 logMessage:v43 fromFile:v46 fromFunction:v47 fromLineNumber:779];

                v48 = PLLogCommon();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                {
                  [PLAWDDisplay startMetricCollection:];
                }

                v19 = v240;
              }
            }

            v49 = v33 * 100.0 / v34;
            if (v49 > 0.0 && v49 <= 100.0)
            {
              [v245 setDisplayIdlePercentage:v49];
            }
          }
        }

        else
        {
        }

        v169 = objc_alloc_init(MEMORY[0x277CBEB18]);
        for (j = 0; j != 140; j += 4)
        {
          v171 = objc_alloc_init(MEMORY[0x277D817D8]);
          [v171 setBucketDuration:*(v257 + j)];
          [v169 addObject:v171];
        }

        v21 = v245;
        [v245 setBacklightBuckets:v169];
        if (([MEMORY[0x277D3F208] isMac] & 1) == 0)
        {
          v172 = [MEMORY[0x277D3F6A0] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F7A0]];
          v173 = [(PLAWDAuxMetrics *)self operator];
          v174 = [v173 storage];
          v175 = [v174 lastEntryForKey:v172];

          if (v175)
          {
            v176 = [v175 objectForKeyedSubscript:@"E0a"];
            [v176 doubleValue];
            v178 = v177;

            [v245 setAlsAutoBrightnessCurveE0A:v178];
            v179 = [v175 objectForKeyedSubscript:@"E0b"];
            [v179 doubleValue];
            v181 = v180;

            [v245 setAlsAutoBrightnessCurveE0B:v181];
            v182 = [v175 objectForKeyedSubscript:@"E1"];
            [v182 doubleValue];
            v184 = v183;

            [v245 setAlsAutoBrightnessCurveE1:v184];
            v185 = [v175 objectForKeyedSubscript:@"E2"];
            [v185 doubleValue];
            v187 = v186;

            [v245 setAlsAutoBrightnessCurveE2:v187];
            v188 = [v175 objectForKeyedSubscript:@"L0a"];
            [v188 doubleValue];
            v190 = v189;

            [v245 setAlsAutoBrightnessCurveL0A:v190];
            v191 = [v175 objectForKeyedSubscript:@"L0b"];
            [v191 doubleValue];
            v193 = v192;

            [v245 setAlsAutoBrightnessCurveL0B:v193];
            v194 = [v175 objectForKeyedSubscript:@"L1"];
            [v194 doubleValue];
            v196 = v195;

            [v245 setAlsAutoBrightnessCurveL1:v196];
            v197 = [v175 objectForKeyedSubscript:@"L2"];
            [v197 doubleValue];
            v199 = v198;

            [v245 setAlsAutoBrightnessCurveL2:v199];
            v200 = [v175 objectForKeyedSubscript:@"S"];
            [v200 doubleValue];
            v202 = v201;

            [v245 setAlsAutoBrightnessSlider:v202];
            v203 = [v175 objectForKeyedSubscript:@"Lux"];
            [v203 doubleValue];
            v205 = v204;

            [v245 setAlsAutoBrightnessLux:v205];
          }

          v21 = v245;
        }

        [(PLAWDDisplay *)self setDispSubmitCnt:[(PLAWDDisplay *)self dispSubmitCnt]+ 1];
        v20 = v235;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v206 = objc_opt_class();
          v249[0] = MEMORY[0x277D85DD0];
          v249[1] = 3221225472;
          v249[2] = __50__PLAWDDisplay_submitDataToAWDServer_withAwdConn___block_invoke_232;
          v249[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v249[4] = v206;
          if (submitDataToAWDServer_withAwdConn__defaultOnce_230 != -1)
          {
            dispatch_once(&submitDataToAWDServer_withAwdConn__defaultOnce_230, v249);
          }

          if (submitDataToAWDServer_withAwdConn__classDebugEnabled_231 == 1)
          {
            v207 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Submit Display stats: submit cnt=%ld ", @"*******PLAWDMetricsService*******", -[PLAWDDisplay dispSubmitCnt](self, "dispSubmitCnt")];
            v208 = MEMORY[0x277D3F178];
            v209 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDDisplay.m"];
            v210 = [v209 lastPathComponent];
            v211 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDDisplay submitDataToAWDServer:withAwdConn:]"];
            [v208 logMessage:v207 fromFile:v210 fromFunction:v211 fromLineNumber:835];

            v212 = PLLogCommon();
            if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
            {
              [PLAWDDisplay startMetricCollection:];
            }

            v20 = v235;
            v19 = v240;
            v21 = v245;
          }
        }

        [v8 setMetric:v21];

        v16 = v232;
      }

      [(PLAWDDisplay *)self reInitDisplayBacklightAlsStats];
LABEL_104:
      v51 = [v7 submitMetric:v8];

      goto LABEL_105;
    }

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

LABEL_105:

  v213 = *MEMORY[0x277D85DE8];
  return v51;
}

uint64_t __50__PLAWDDisplay_submitDataToAWDServer_withAwdConn___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitDataToAWDServer_withAwdConn__classDebugEnabled = result;
  return result;
}

uint64_t __50__PLAWDDisplay_submitDataToAWDServer_withAwdConn___block_invoke_194(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitDataToAWDServer_withAwdConn__classDebugEnabled_193 = result;
  return result;
}

uint64_t __50__PLAWDDisplay_submitDataToAWDServer_withAwdConn___block_invoke_232(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitDataToAWDServer_withAwdConn__classDebugEnabled_231 = result;
  return result;
}

uint64_t __50__PLAWDDisplay_submitDataToAWDServer_withAwdConn___block_invoke_272(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitDataToAWDServer_withAwdConn__classDebugEnabled_271 = result;
  return result;
}

uint64_t __50__PLAWDDisplay_submitDataToAWDServer_withAwdConn___block_invoke_278(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitDataToAWDServer_withAwdConn__classDebugEnabled_277 = result;
  return result;
}

- (void)startMetricCollection:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE16000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end