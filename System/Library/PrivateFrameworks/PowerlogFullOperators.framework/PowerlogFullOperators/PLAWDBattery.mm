@interface PLAWDBattery
+ (id)entryAggregateDefinitionAwdBattery;
+ (id)entryAggregateDefinitions;
+ (id)getSharedObjWithOperator:(id)operator;
- (BOOL)isDeviceCharging:(id)charging;
- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn;
- (void)addEntryToBatteryTable:(id)table withValue:(double)value;
- (void)finalizeBatteryTable;
- (void)handleBatteryCallback:(id)callback;
- (void)handleDisplayCallback:(id)callback;
- (void)initBatteryStats;
- (void)processEnergyConsumedAndAddEntry:(double)entry withVoltage:(double)voltage;
- (void)reInitBatteryStats;
- (void)resetBatteryTable;
- (void)startMetricCollection:(id)collection;
- (void)stopMetricCollection:(id)collection;
@end

@implementation PLAWDBattery

+ (id)getSharedObjWithOperator:(id)operator
{
  v3 = plAwdBattery;
  if (!plAwdBattery)
  {
    operatorCopy = operator;
    v5 = [(PLAWDAuxMetrics *)[PLAWDBattery alloc] initWithOperator:operatorCopy];

    v6 = plAwdBattery;
    plAwdBattery = v5;

    v3 = plAwdBattery;
  }

  return v3;
}

+ (id)entryAggregateDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"BatteryMetrics";
  entryAggregateDefinitionAwdBattery = [self entryAggregateDefinitionAwdBattery];
  v7[0] = entryAggregateDefinitionAwdBattery;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryAggregateDefinitionAwdBattery
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_2870FEE40;
  v23[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v3;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"BatteryMetricsKey";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v20[1] = @"BatteryMetricsValue";
  v21[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat_aggregateFunction_sum = [mEMORY[0x277D3F198]2 commonTypeDict_RealFormat_aggregateFunction_sum];
  v21[1] = commonTypeDict_RealFormat_aggregateFunction_sum;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[1] = v8;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_2870FEE50;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_2870FEE50;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v25[2] = v10;
  v24[3] = *MEMORY[0x277D3F488];
  v15 = @"BatteryMetricsValue";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v25[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)startMetricCollection:(id)collection
{
  v36[1] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  runningMetrics = [(PLAWDAuxMetrics *)self runningMetrics];
  [runningMetrics addObject:collectionCopy];

  if ([collectionCopy longValue] == 2031623)
  {
    [(PLAWDBattery *)self initBatteryStats];
    collectionCopy = [MEMORY[0x277D3F688] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F750]];
    v7 = objc_alloc(MEMORY[0x277D3F1A8]);
    operator = [(PLAWDAuxMetrics *)self operator];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __38__PLAWDBattery_startMetricCollection___block_invoke;
    v32[3] = &unk_279A58F10;
    v32[4] = self;
    v9 = [v7 initWithOperator:operator forEntryKey:collectionCopy withBlock:v32];

    [(PLAWDBattery *)self setBatteryEventCallback:v9];
    if ([MEMORY[0x277D3F6A0] shouldLogDisplay])
    {
      v10 = [MEMORY[0x277D3F6A0] entryKeyForType:*MEMORY[0x277D3F5E8] andName:*MEMORY[0x277D3F7B0]];
      v11 = objc_alloc(MEMORY[0x277D3F1A8]);
      operator2 = [(PLAWDAuxMetrics *)self operator];
      v33 = &unk_2870FEF80;
      v34 = @"Backlight";
      v35 = @"Block";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v36[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __38__PLAWDBattery_startMetricCollection___block_invoke_53;
      v31[3] = &unk_279A58F10;
      v31[4] = self;
      v15 = [v11 initWithOperator:operator2 forEntryKey:v10 withFilter:v14 withBlock:v31];

      [(PLAWDBattery *)self setDisplayEventCallback:v15];
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__PLAWDBattery_startMetricCollection___block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v16;
      if (startMetricCollection__defaultOnce_1 != -1)
      {
        dispatch_once(&startMetricCollection__defaultOnce_1, block);
      }

      if (startMetricCollection__classDebugEnabled_1 == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Start Battery collection ", @"*******PLAWDMetricsService*******"];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
        lastPathComponent = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery startMetricCollection:]"];
        [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:104];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v23 = objc_opt_class();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __38__PLAWDBattery_startMetricCollection___block_invoke_67;
    v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v29[4] = v23;
    if (startMetricCollection__defaultOnce_65 != -1)
    {
      dispatch_once(&startMetricCollection__defaultOnce_65, v29);
    }

    if (startMetricCollection__classDebugEnabled_66 == 1)
    {
      collectionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported metric for battery class %@", collectionCopy];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
      lastPathComponent2 = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery startMetricCollection:]"];
      [v24 logMessage:collectionCopy fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:108];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }

      goto LABEL_17;
    }
  }

LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __38__PLAWDBattery_startMetricCollection___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleBatteryCallback:a2];
  }

  return result;
}

uint64_t __38__PLAWDBattery_startMetricCollection___block_invoke_53(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleDisplayCallback:a2];
  }

  return result;
}

uint64_t __38__PLAWDBattery_startMetricCollection___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startMetricCollection__classDebugEnabled_1 = result;
  return result;
}

uint64_t __38__PLAWDBattery_startMetricCollection___block_invoke_67(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startMetricCollection__classDebugEnabled_66 = result;
  return result;
}

- (void)stopMetricCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy longValue] == 2031623)
  {
    [(PLAWDBattery *)self setBatteryEventCallback:0];
    [(PLAWDBattery *)self setDisplayEventCallback:0];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __37__PLAWDBattery_stopMetricCollection___block_invoke;
      v19 = &__block_descriptor_40_e5_v8__0lu32l8;
      v20 = v5;
      if (stopMetricCollection__defaultOnce_1 != -1)
      {
        dispatch_once(&stopMetricCollection__defaultOnce_1, &block);
      }

      if (stopMetricCollection__classDebugEnabled_1 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Stop Battery collection ", @"*******PLAWDMetricsService*******", block, v17, v18, v19, v20];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
        lastPathComponent = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery stopMetricCollection:]"];
        [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:119];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }
      }
    }
  }

  runningMetrics = [(PLAWDAuxMetrics *)self runningMetrics];
  [runningMetrics removeObject:collectionCopy];

  runningMetrics2 = [(PLAWDAuxMetrics *)self runningMetrics];
  v14 = [runningMetrics2 count];

  if (!v14)
  {
    v15 = plAwdBattery;
    plAwdBattery = 0;
  }
}

uint64_t __37__PLAWDBattery_stopMetricCollection___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopMetricCollection__classDebugEnabled_1 = result;
  return result;
}

- (void)initBatteryStats
{
  [(PLAWDBattery *)self setBatterySubmitCnt:0];
  [(PLAWDBattery *)self setPrevDisplayON:0];
  [(PLAWDBattery *)self setDispOnOffCnt:0];
  [(PLAWDBattery *)self setPrevDispTimeStamp:0.0];
  [(PLAWDBattery *)self setPrevCapacity:0.0];
  [(PLAWDBattery *)self setPrevVoltage:0.0];
  [(PLAWDBattery *)self setPrevDeviceCharging:0];
  [(PLAWDBattery *)self resetBatteryTable];
  v3 = [MEMORY[0x277D3F688] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F750]];
  operator = [(PLAWDAuxMetrics *)self operator];
  storage = [operator storage];
  v6 = [storage lastEntryForKey:v3];

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  [(PLAWDBattery *)self setPrevDispTimeStamp:?];
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"Voltage"];
    [v8 doubleValue];
    [(PLAWDBattery *)self setPrevVoltage:?];

    [(PLAWDBattery *)self setPrevDeviceCharging:[(PLAWDBattery *)self isDeviceCharging:v6]];
    v9 = [v6 objectForKeyedSubscript:@"CurrentCapacity"];
    [v9 doubleValue];
    [(PLAWDBattery *)self setPrevCapacity:?];
  }

  if ([MEMORY[0x277D3F6A0] shouldLogDisplay] && !-[PLAWDBattery prevDeviceCharging](self, "prevDeviceCharging"))
  {
    v10 = [MEMORY[0x277D3F6A0] entryKeyForType:*MEMORY[0x277D3F5E8] andName:*MEMORY[0x277D3F7B0]];
    operator2 = [(PLAWDAuxMetrics *)self operator];
    storage2 = [operator2 storage];
    v13 = [storage2 lastEntryForKey:v10 withFilters:&unk_2870FF2C8];

    if (v13)
    {
      v14 = [v13 objectForKeyedSubscript:@"Active"];
      -[PLAWDBattery setPrevDisplayON:](self, "setPrevDisplayON:", [v14 BOOLValue]);
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __32__PLAWDBattery_initBatteryStats__block_invoke;
    v32 = &__block_descriptor_40_e5_v8__0lu32l8;
    v33 = v15;
    if (initBatteryStats_defaultOnce != -1)
    {
      dispatch_once(&initBatteryStats_defaultOnce, &block);
    }

    if (initBatteryStats_classDebugEnabled == 1)
    {
      v16 = MEMORY[0x277CCACA8];
      [(PLAWDBattery *)self prevVoltage];
      v18 = v17;
      prevDeviceCharging = [(PLAWDBattery *)self prevDeviceCharging];
      [(PLAWDBattery *)self prevCapacity];
      v21 = v20;
      prevDisplayON = [(PLAWDBattery *)self prevDisplayON];
      v23 = [v16 stringWithFormat:@"%@ : Initialize Battery metrics: prevVoltage=%f prevIsCharging=%d prevCapacity=%f prevDisplayOn=%d", @"*******PLAWDMetricsService*******", v18, prevDeviceCharging, v21, prevDisplayON, block, v30, v31, v32, v33];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
      lastPathComponent = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery initBatteryStats]"];
      [v24 logMessage:v23 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:166];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __32__PLAWDBattery_initBatteryStats__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  initBatteryStats_classDebugEnabled = result;
  return result;
}

- (void)reInitBatteryStats
{
  [(PLAWDBattery *)self resetBatteryTable];
  [(PLAWDBattery *)self setDispOnOffCnt:0];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  [(PLAWDBattery *)self setPrevDispTimeStamp:?];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __34__PLAWDBattery_reInitBatteryStats__block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v4;
    if (reInitBatteryStats_defaultOnce != -1)
    {
      dispatch_once(&reInitBatteryStats_defaultOnce, &block);
    }

    if (reInitBatteryStats_classDebugEnabled == 1)
    {
      v5 = MEMORY[0x277CCACA8];
      [(PLAWDBattery *)self prevVoltage];
      v7 = v6;
      prevDeviceCharging = [(PLAWDBattery *)self prevDeviceCharging];
      [(PLAWDBattery *)self prevCapacity];
      v10 = v9;
      prevDisplayON = [(PLAWDBattery *)self prevDisplayON];
      v12 = [v5 stringWithFormat:@"%@ : Re-Init Battery metrics: prevVoltage=%f prevIsCharging=%d prevCapacity=%f prevDisplayOn=%d", @"*******PLAWDMetricsService*******", v7, prevDeviceCharging, v10, prevDisplayON, block, v19, v20, v21, v22];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery reInitBatteryStats]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:178];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __34__PLAWDBattery_reInitBatteryStats__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reInitBatteryStats_classDebugEnabled = result;
  return result;
}

- (BOOL)isDeviceCharging:(id)charging
{
  chargingCopy = charging;
  v5 = [chargingCopy objectForKeyedSubscript:@"AdapterInfo"];
  bOOLValue = [v5 BOOLValue];

  entryDate = [chargingCopy entryDate];

  if (bOOLValue)
  {
    [(PLAWDAuxMetrics *)&v10 handleChargerChangeWithState:1 withDate:entryDate, v9.receiver, v9.super_class, self, PLAWDBattery];
  }

  else
  {
    [(PLAWDAuxMetrics *)&v9 handleChargerChangeWithState:0 withDate:entryDate, self, PLAWDBattery, v10.receiver, v10.super_class];
  }

  return bOOLValue;
}

- (void)resetBatteryTable
{
  v3 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"BatteryMetrics"];
  v4.receiver = self;
  v4.super_class = PLAWDBattery;
  [(PLAWDAuxMetrics *)&v4 resetTableWithEntryKey:v3];
}

- (void)addEntryToBatteryTable:(id)table withValue:(double)value
{
  v6 = *MEMORY[0x277D3F5B8];
  tableCopy = table;
  v11 = [(PLOperator *)PLAWDMetricsService entryKeyForType:v6 andName:@"BatteryMetrics"];
  v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v8 setObject:tableCopy forKeyedSubscript:@"BatteryMetricsKey"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  [v8 setObject:v9 forKeyedSubscript:@"BatteryMetricsValue"];

  operator = [(PLAWDAuxMetrics *)self operator];
  [operator logEntry:v8];
}

- (void)processEnergyConsumedAndAddEntry:(double)entry withVoltage:(double)voltage
{
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  v9 = v8;

  [(PLAWDBattery *)self prevDispTimeStamp];
  v11 = v9 - v10;
  if ([(PLAWDBattery *)self prevDisplayON]&& ![(PLAWDBattery *)self dispOnOffCnt])
  {
    if (entry > 0.0)
    {
      [(PLAWDBattery *)self addEntryToBatteryTable:@"DrainDisplayOn" withValue:entry * voltage];
    }

    [(PLAWDBattery *)self addEntryToBatteryTable:@"DurationDispOn" withValue:v11];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v24 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __61__PLAWDBattery_processEnergyConsumedAndAddEntry_withVoltage___block_invoke;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v24;
      if (processEnergyConsumedAndAddEntry_withVoltage__defaultOnce != -1)
      {
        dispatch_once(&processEnergyConsumedAndAddEntry_withVoltage__defaultOnce, v46);
      }

      if (processEnergyConsumedAndAddEntry_withVoltage__classDebugEnabled == 1)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Battery Event: EnergyConsumed: DurationDispOn =%f", @"*******PLAWDMetricsService*******", *&v11];
        v25 = MEMORY[0x277D3F178];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
        lastPathComponent = [v26 lastPathComponent];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery processEnergyConsumedAndAddEntry:withVoltage:]"];
        [v25 logMessage:v13 fromFile:lastPathComponent fromFunction:v28 fromLineNumber:217];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        goto LABEL_28;
      }
    }
  }

  else if ([(PLAWDBattery *)self prevDisplayON]|| [(PLAWDBattery *)self dispOnOffCnt])
  {
    if (entry > 0.0)
    {
      [(PLAWDBattery *)self addEntryToBatteryTable:@"DrainPartialDisplayOn" withValue:entry * voltage];
    }

    if ([(PLAWDBattery *)self prevDisplayON])
    {
      [(PLAWDBattery *)self addEntryToBatteryTable:@"DurationPartialDispOn" withValue:v11];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v12 = objc_opt_class();
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __61__PLAWDBattery_processEnergyConsumedAndAddEntry_withVoltage___block_invoke_106;
        v45[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v45[4] = v12;
        if (processEnergyConsumedAndAddEntry_withVoltage__defaultOnce_104 != -1)
        {
          dispatch_once(&processEnergyConsumedAndAddEntry_withVoltage__defaultOnce_104, v45);
        }

        if (processEnergyConsumedAndAddEntry_withVoltage__classDebugEnabled_105 == 1)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Battery Event: EnergyConsumed: DurationPartialDispOn =%f", @"*******PLAWDMetricsService*******", *&v11];
          v14 = MEMORY[0x277D3F178];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
          lastPathComponent2 = [v15 lastPathComponent];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery processEnergyConsumedAndAddEntry:withVoltage:]"];
          [v14 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:227];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

LABEL_28:
        }
      }
    }

    else
    {
      [(PLAWDBattery *)self addEntryToBatteryTable:@"DurationPartialDispOff" withValue:v11];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v19 = objc_opt_class();
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __61__PLAWDBattery_processEnergyConsumedAndAddEntry_withVoltage___block_invoke_112;
        v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v44[4] = v19;
        if (processEnergyConsumedAndAddEntry_withVoltage__defaultOnce_110 != -1)
        {
          dispatch_once(&processEnergyConsumedAndAddEntry_withVoltage__defaultOnce_110, v44);
        }

        if (processEnergyConsumedAndAddEntry_withVoltage__classDebugEnabled_111 == 1)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Battery Event: EnergyConsumed: DurationPartialDispOff =%f", @"*******PLAWDMetricsService*******", *&v11];
          v20 = MEMORY[0x277D3F178];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
          lastPathComponent3 = [v21 lastPathComponent];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery processEnergyConsumedAndAddEntry:withVoltage:]"];
          [v20 logMessage:v13 fromFile:lastPathComponent3 fromFunction:v23 fromLineNumber:231];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

          goto LABEL_28;
        }
      }
    }
  }

  else if (entry > 0.0)
  {
    [(PLAWDBattery *)self addEntryToBatteryTable:@"DrainDisplayOff" withValue:entry * voltage];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v29 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = __61__PLAWDBattery_processEnergyConsumedAndAddEntry_withVoltage___block_invoke_118;
    v42 = &__block_descriptor_40_e5_v8__0lu32l8;
    v43 = v29;
    if (processEnergyConsumedAndAddEntry_withVoltage__defaultOnce_116 != -1)
    {
      dispatch_once(&processEnergyConsumedAndAddEntry_withVoltage__defaultOnce_116, &block);
    }

    if (processEnergyConsumedAndAddEntry_withVoltage__classDebugEnabled_117 == 1)
    {
      v30 = MEMORY[0x277CCACA8];
      prevDisplayON = [(PLAWDBattery *)self prevDisplayON];
      dispOnOffCnt = [(PLAWDBattery *)self dispOnOffCnt];
      v33 = [v30 stringWithFormat:@"%@ Battery Event: EnergyConsumed=%f Display On=%d dispOnOffCnt=%lu ", @"*******PLAWDMetricsService*******", entry * voltage, prevDisplayON, dispOnOffCnt, block, v40, v41, v42, v43];
      v34 = MEMORY[0x277D3F178];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
      lastPathComponent4 = [v35 lastPathComponent];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery processEnergyConsumedAndAddEntry:withVoltage:]"];
      [v34 logMessage:v33 fromFile:lastPathComponent4 fromFunction:v37 fromLineNumber:234];

      v38 = PLLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  [(PLAWDBattery *)self setPrevDispTimeStamp:v9];
  [(PLAWDBattery *)self setDispOnOffCnt:0];
}

uint64_t __61__PLAWDBattery_processEnergyConsumedAndAddEntry_withVoltage___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  processEnergyConsumedAndAddEntry_withVoltage__classDebugEnabled = result;
  return result;
}

uint64_t __61__PLAWDBattery_processEnergyConsumedAndAddEntry_withVoltage___block_invoke_106(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  processEnergyConsumedAndAddEntry_withVoltage__classDebugEnabled_105 = result;
  return result;
}

uint64_t __61__PLAWDBattery_processEnergyConsumedAndAddEntry_withVoltage___block_invoke_112(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  processEnergyConsumedAndAddEntry_withVoltage__classDebugEnabled_111 = result;
  return result;
}

uint64_t __61__PLAWDBattery_processEnergyConsumedAndAddEntry_withVoltage___block_invoke_118(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  processEnergyConsumedAndAddEntry_withVoltage__classDebugEnabled_117 = result;
  return result;
}

- (void)handleBatteryCallback:(id)callback
{
  v4 = [callback objectForKey:@"entry"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"CurrentCapacity"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [v5 objectForKeyedSubscript:@"Voltage"];
    [v9 doubleValue];
    v11 = v10;

    v12 = [(PLAWDBattery *)self isDeviceCharging:v5];
    [(PLAWDBattery *)self prevCapacity];
    v14 = v13;
    [(PLAWDBattery *)self prevVoltage];
    v16 = v15;
    [(PLAWDBattery *)self prevCapacity];
    if (v17 <= 0.0)
    {
LABEL_18:
      [(PLAWDBattery *)self setPrevVoltage:v11];
      [(PLAWDBattery *)self setPrevDeviceCharging:v12];
      [(PLAWDBattery *)self setPrevCapacity:v8];
      goto LABEL_19;
    }

    v18 = vabdd_f64(v8, v14);
    v19 = (v11 + v16) / 2000.0;
    prevDeviceCharging = [(PLAWDBattery *)self prevDeviceCharging];
    if (v12)
    {
      if (!prevDeviceCharging)
      {
        goto LABEL_5;
      }
    }

    else if (!prevDeviceCharging)
    {
LABEL_5:
      if (![(PLAWDBattery *)self prevDeviceCharging])
      {
        [(PLAWDBattery *)self processEnergyConsumedAndAddEntry:v18 withVoltage:v19];
      }

      goto LABEL_18;
    }

    v21 = v8 - v14;
    if (v8 - v14 != 0.0)
    {
      v22 = v18 * v19;
      [(PLAWDBattery *)self addEntryToBatteryTable:@"EnergyCharged" withValue:v22];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v23 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        *&v21 = 3221225472;
        block[1] = 3221225472;
        block[2] = __38__PLAWDBattery_handleBatteryCallback___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v23;
        if (handleBatteryCallback__defaultOnce_0 != -1)
        {
          dispatch_once(&handleBatteryCallback__defaultOnce_0, block);
        }

        if (handleBatteryCallback__classDebugEnabled_0 == 1)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Battery Event: energyCharged=%f", @"*******PLAWDMetricsService*******", *&v22];
          v25 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
          lastPathComponent = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery handleBatteryCallback:]"];
          [v25 logMessage:v24 fromFile:lastPathComponent fromFunction:v28 fromLineNumber:268];

          v29 = PLLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }
        }
      }
    }

    if (!v12)
    {
      [(PLAWDBattery *)self setDispOnOffCnt:0, v21];
      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      [monotonicDate timeIntervalSince1970];
      [(PLAWDBattery *)self setPrevDispTimeStamp:?];
    }

    goto LABEL_18;
  }

LABEL_19:
}

uint64_t __38__PLAWDBattery_handleBatteryCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleBatteryCallback__classDebugEnabled_0 = result;
  return result;
}

- (void)handleDisplayCallback:(id)callback
{
  v4 = [callback objectForKey:@"entry"];
  if (!v4)
  {
    goto LABEL_11;
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:@"Active"];
  bOOLValue = [v8 BOOLValue];

  if (![(PLAWDBattery *)self prevDeviceCharging])
  {
    prevDisplayON = [(PLAWDBattery *)self prevDisplayON];
    if (bOOLValue)
    {
      if (prevDisplayON)
      {
        goto LABEL_3;
      }

      [(PLAWDBattery *)self setDispOnOffCnt:[(PLAWDBattery *)self dispOnOffCnt]+ 1];
      [(PLAWDBattery *)self prevDispTimeStamp];
      [(PLAWDBattery *)self addEntryToBatteryTable:@"DurationPartialDispOff" withValue:v7 - v18];
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_3;
      }

      v19 = objc_opt_class();
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __38__PLAWDBattery_handleDisplayCallback___block_invoke;
      v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v38[4] = v19;
      if (handleDisplayCallback__defaultOnce != -1)
      {
        dispatch_once(&handleDisplayCallback__defaultOnce, v38);
      }

      if (handleDisplayCallback__classDebugEnabled != 1)
      {
        goto LABEL_3;
      }

      v20 = MEMORY[0x277CCACA8];
      [(PLAWDBattery *)self prevDispTimeStamp];
      v22 = [v20 stringWithFormat:@"%@ :DurationPartialDispOff =%f", @"*******PLAWDMetricsService*******", v7 - v21];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
      lastPathComponent = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery handleDisplayCallback:]"];
      [v23 logMessage:v22 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:301];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }

    else
    {
      if (!prevDisplayON)
      {
        goto LABEL_3;
      }

      [(PLAWDBattery *)self setDispOnOffCnt:[(PLAWDBattery *)self dispOnOffCnt]+ 1];
      [(PLAWDBattery *)self prevDispTimeStamp];
      [(PLAWDBattery *)self addEntryToBatteryTable:@"DurationPartialDispOn" withValue:v7 - v28];
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_3;
      }

      v29 = objc_opt_class();
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __38__PLAWDBattery_handleDisplayCallback___block_invoke_133;
      v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v37[4] = v29;
      if (handleDisplayCallback__defaultOnce_131 != -1)
      {
        dispatch_once(&handleDisplayCallback__defaultOnce_131, v37);
      }

      if (handleDisplayCallback__classDebugEnabled_132 != 1)
      {
        goto LABEL_3;
      }

      v30 = MEMORY[0x277CCACA8];
      [(PLAWDBattery *)self prevDispTimeStamp];
      v22 = [v30 stringWithFormat:@"%@ :DurationPartialDispOn =%f", @"*******PLAWDMetricsService*******", v7 - v31];
      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
      lastPathComponent2 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery handleDisplayCallback:]"];
      [v32 logMessage:v22 fromFile:lastPathComponent2 fromFunction:v35 fromLineNumber:306];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

LABEL_3:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__PLAWDBattery_handleDisplayCallback___block_invoke_139;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (handleDisplayCallback__defaultOnce_137 != -1)
    {
      dispatch_once(&handleDisplayCallback__defaultOnce_137, block);
    }

    if (handleDisplayCallback__classDebugEnabled_138 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ AWD-Battery:DisplayEvent: currDisplayOn=%d self.prevDisplayON=%d dispOnOffCnt=%lu", @"*******PLAWDMetricsService*******", bOOLValue, -[PLAWDBattery prevDisplayON](self, "prevDisplayON"), -[PLAWDBattery dispOnOffCnt](self, "dispOnOffCnt")];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
      lastPathComponent3 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery handleDisplayCallback:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent3 fromFunction:v15 fromLineNumber:310];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  [(PLAWDBattery *)self setPrevDisplayON:bOOLValue];
  [(PLAWDBattery *)self setPrevDispTimeStamp:v7];
LABEL_11:
}

uint64_t __38__PLAWDBattery_handleDisplayCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleDisplayCallback__classDebugEnabled = result;
  return result;
}

uint64_t __38__PLAWDBattery_handleDisplayCallback___block_invoke_133(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleDisplayCallback__classDebugEnabled_132 = result;
  return result;
}

uint64_t __38__PLAWDBattery_handleDisplayCallback___block_invoke_139(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleDisplayCallback__classDebugEnabled_138 = result;
  return result;
}

- (void)finalizeBatteryTable
{
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [monotonicDate timeIntervalSince1970];
  v5 = v4;

  [(PLAWDBattery *)self prevDispTimeStamp];
  v7 = v6;
  if ([(PLAWDBattery *)self prevDeviceCharging])
  {
    goto LABEL_2;
  }

  v15 = v5 - v7;
  prevDisplayON = [(PLAWDBattery *)self prevDisplayON];
  dispOnOffCnt = [(PLAWDBattery *)self dispOnOffCnt];
  if (prevDisplayON)
  {
    if (dispOnOffCnt)
    {
      if ([(PLAWDBattery *)self dispOnOffCnt]>= 1)
      {
        [(PLAWDBattery *)self addEntryToBatteryTable:@"DurationPartialDispOn" withValue:v15];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v18 = objc_opt_class();
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __36__PLAWDBattery_finalizeBatteryTable__block_invoke_148;
          v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v37[4] = v18;
          if (finalizeBatteryTable_defaultOnce_146 != -1)
          {
            dispatch_once(&finalizeBatteryTable_defaultOnce_146, v37);
          }

          if (finalizeBatteryTable_classDebugEnabled_147 == 1)
          {
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Finalize Battery table :DurationPartialDispOn =%f", @"*******PLAWDMetricsService*******", *&v15];
            v20 = MEMORY[0x277D3F178];
            v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
            lastPathComponent = [v21 lastPathComponent];
            v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery finalizeBatteryTable]"];
            [v20 logMessage:v19 fromFile:lastPathComponent fromFunction:v23 fromLineNumber:331];

            v24 = PLLogCommon();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              [PLAWDDisplay startMetricCollection:];
            }

LABEL_32:
          }
        }
      }
    }

    else
    {
      [(PLAWDBattery *)self addEntryToBatteryTable:@"DurationDispOn" withValue:v15];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v30 = objc_opt_class();
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __36__PLAWDBattery_finalizeBatteryTable__block_invoke;
        v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v38[4] = v30;
        if (finalizeBatteryTable_defaultOnce != -1)
        {
          dispatch_once(&finalizeBatteryTable_defaultOnce, v38);
        }

        if (finalizeBatteryTable_classDebugEnabled == 1)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Finalize Battery table :DurationDispOn =%f", @"*******PLAWDMetricsService*******", *&v15];
          v31 = MEMORY[0x277D3F178];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
          lastPathComponent2 = [v32 lastPathComponent];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery finalizeBatteryTable]"];
          [v31 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:327];

          v24 = PLLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

          goto LABEL_32;
        }
      }
    }
  }

  else if (dispOnOffCnt >= 1)
  {
    [(PLAWDBattery *)self addEntryToBatteryTable:@"DurationPartialDispOff" withValue:v15];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v25 = objc_opt_class();
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __36__PLAWDBattery_finalizeBatteryTable__block_invoke_154;
      v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v36[4] = v25;
      if (finalizeBatteryTable_defaultOnce_152 != -1)
      {
        dispatch_once(&finalizeBatteryTable_defaultOnce_152, v36);
      }

      if (finalizeBatteryTable_classDebugEnabled_153 == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Finalize Battery table :DurationPartialDispOff =%f", @"*******PLAWDMetricsService*******", *&v15];
        v26 = MEMORY[0x277D3F178];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
        lastPathComponent3 = [v27 lastPathComponent];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery finalizeBatteryTable]"];
        [v26 logMessage:v19 fromFile:lastPathComponent3 fromFunction:v29 fromLineNumber:337];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [PLAWDDisplay startMetricCollection:];
        }

        goto LABEL_32;
      }
    }
  }

LABEL_2:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PLAWDBattery_finalizeBatteryTable__block_invoke_160;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (finalizeBatteryTable_defaultOnce_158 != -1)
    {
      dispatch_once(&finalizeBatteryTable_defaultOnce_158, block);
    }

    if (finalizeBatteryTable_classDebugEnabled_159 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Finalize Battery table", @"*******PLAWDMetricsService*******"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
      lastPathComponent4 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery finalizeBatteryTable]"];
      [v10 logMessage:v9 fromFile:lastPathComponent4 fromFunction:v13 fromLineNumber:342];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __36__PLAWDBattery_finalizeBatteryTable__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  finalizeBatteryTable_classDebugEnabled = result;
  return result;
}

uint64_t __36__PLAWDBattery_finalizeBatteryTable__block_invoke_148(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  finalizeBatteryTable_classDebugEnabled_147 = result;
  return result;
}

uint64_t __36__PLAWDBattery_finalizeBatteryTable__block_invoke_154(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  finalizeBatteryTable_classDebugEnabled_153 = result;
  return result;
}

uint64_t __36__PLAWDBattery_finalizeBatteryTable__block_invoke_160(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  finalizeBatteryTable_classDebugEnabled_159 = result;
  return result;
}

- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn
{
  v71 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  connCopy = conn;
  v8 = [connCopy newMetricContainerWithIdentifier:{objc_msgSend(serverCopy, "unsignedIntValue")}];
  v9 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:-86400.0];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [v9 timeIntervalSince1970];
  v12 = v11;
  [monotonicDate timeIntervalSince1970];
  v14 = v13;

  if ([serverCopy longValue] == 2031623)
  {
    if (v8)
    {
      [(PLAWDBattery *)self finalizeBatteryTable];
      v15 = [(PLOperator *)PLAWDMetricsService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"BatteryMetrics"];
      operator = [(PLAWDAuxMetrics *)self operator];
      storage = [operator storage];
      v18 = [storage aggregateEntriesForKey:v15 withBucketLength:86400.0 inTimeIntervalRange:{v12, v14 - v12}];

      v19 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v18];
      v20 = objc_opt_new();
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v21 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__PLAWDBattery_submitDataToAWDServer_withAwdConn___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v21;
        if (submitDataToAWDServer_withAwdConn__defaultOnce_0 != -1)
        {
          dispatch_once(&submitDataToAWDServer_withAwdConn__defaultOnce_0, block);
        }

        if (submitDataToAWDServer_withAwdConn__classDebugEnabled_0 == 1)
        {
          v58 = v18;
          v60 = v15;
          v62 = v8;
          v22 = v19;
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : %@", @"*******PLAWDMetricsService*******", v19];
          v24 = MEMORY[0x277D3F178];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
          lastPathComponent = [v25 lastPathComponent];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery submitDataToAWDServer:withAwdConn:]"];
          [v24 logMessage:v23 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:362];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [PLAWDDisplay startMetricCollection:];
          }

          v15 = v60;
          v8 = v62;
          v18 = v58;
          v19 = v22;
        }
      }

      if (v20)
      {
        v59 = v18;
        v61 = v15;
        v63 = v8;
        v56 = connCopy;
        [v20 setTimestamp:{objc_msgSend(connCopy, "getAWDTimestamp")}];
        [v20 setEnergyConsumedDisplayOnMicroWatt:0];
        [v20 setEnergyConsumedDisplayOffMicroWatt:0];
        [v20 setEnergyConsumedPartailDispOnMicrowatt:0];
        [v20 setEnergyChargedMicroWatt:0];
        [v20 setDurationDispOn:0];
        [v20 setDurationPartialDispOn:0];
        [v20 setDurationPartialDispOff:0];
        [v20 setCycleCountKey:0];
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v57 = v19;
        v29 = v19;
        v30 = [v29 countByEnumeratingWithState:&v65 objects:v70 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v66;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v66 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v65 + 1) + 8 * i);
              v35 = [v34 objectForKeyedSubscript:@"BatteryMetricsKey"];
              v36 = [v34 objectForKeyedSubscript:@"BatteryMetricsValue"];
              [v36 doubleValue];
              v38 = v37;

              if ([v35 isEqualToString:@"DrainDisplayOn"])
              {
                [v20 setEnergyConsumedDisplayOnMicroWatt:(v38 * 1000.0)];
              }

              else if ([v35 isEqualToString:@"DrainDisplayOff"])
              {
                [v20 setEnergyConsumedDisplayOffMicroWatt:(v38 * 1000.0)];
              }

              else if ([v35 isEqualToString:@"DrainPartialDisplayOn"])
              {
                [v20 setEnergyConsumedPartailDispOnMicrowatt:(v38 * 1000.0)];
              }

              else if ([v35 isEqualToString:@"EnergyCharged"])
              {
                [v20 setEnergyChargedMicroWatt:(v38 * 1000.0)];
              }

              else if ([v35 isEqualToString:@"DurationDispOn"])
              {
                [v20 setDurationDispOn:(v38 * 1000.0)];
              }

              else if ([v35 isEqualToString:@"DurationPartialDispOn"])
              {
                [v20 setDurationPartialDispOn:(v38 * 1000.0)];
              }

              else if ([v35 isEqualToString:@"DurationPartialDispOff"])
              {
                [v20 setDurationPartialDispOff:(v38 * 1000.0)];
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v65 objects:v70 count:16];
          }

          while (v31);
        }

        v39 = [MEMORY[0x277D3F688] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F750]];
        operator2 = [(PLAWDAuxMetrics *)self operator];
        storage2 = [operator2 storage];
        v42 = [storage2 lastEntryForKey:v39];

        if (v42)
        {
          v43 = [v42 objectForKeyedSubscript:@"CycleCount"];
          [v43 doubleValue];
          v45 = v44;

          [v20 setCycleCountKey:v45];
        }

        [(PLAWDBattery *)self setBatterySubmitCnt:[(PLAWDBattery *)self batterySubmitCnt]+ 1];
        v19 = v57;
        v8 = v63;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v46 = objc_opt_class();
          v64[0] = MEMORY[0x277D85DD0];
          v64[1] = 3221225472;
          v64[2] = __50__PLAWDBattery_submitDataToAWDServer_withAwdConn___block_invoke_173;
          v64[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v64[4] = v46;
          if (submitDataToAWDServer_withAwdConn__defaultOnce_171 != -1)
          {
            dispatch_once(&submitDataToAWDServer_withAwdConn__defaultOnce_171, v64);
          }

          if (submitDataToAWDServer_withAwdConn__classDebugEnabled_172 == 1)
          {
            v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ : Submit Battery stats: submit cnt=%ld", @"*******PLAWDMetricsService*******", -[PLAWDBattery batterySubmitCnt](self, "batterySubmitCnt")];
            v48 = MEMORY[0x277D3F178];
            v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDBattery.m"];
            lastPathComponent2 = [v49 lastPathComponent];
            v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDBattery submitDataToAWDServer:withAwdConn:]"];
            [v48 logMessage:v47 fromFile:lastPathComponent2 fromFunction:v51 fromLineNumber:412];

            v52 = PLLogCommon();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              [PLAWDDisplay startMetricCollection:];
            }

            v8 = v63;
            v19 = v57;
          }
        }

        [v8 setMetric:v20];

        connCopy = v56;
        v18 = v59;
        v15 = v61;
      }
    }

    [(PLAWDBattery *)self reInitBatteryStats];
    v53 = [connCopy submitMetric:v8];
  }

  else
  {
    v53 = 0;
  }

  v54 = *MEMORY[0x277D85DE8];
  return v53;
}

uint64_t __50__PLAWDBattery_submitDataToAWDServer_withAwdConn___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitDataToAWDServer_withAwdConn__classDebugEnabled_0 = result;
  return result;
}

uint64_t __50__PLAWDBattery_submitDataToAWDServer_withAwdConn___block_invoke_173(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitDataToAWDServer_withAwdConn__classDebugEnabled_172 = result;
  return result;
}

@end