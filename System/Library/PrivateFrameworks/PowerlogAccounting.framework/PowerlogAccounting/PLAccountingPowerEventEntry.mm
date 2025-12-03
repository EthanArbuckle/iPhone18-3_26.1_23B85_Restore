@interface PLAccountingPowerEventEntry
+ (BOOL)isValidPower:(double)power forRootNodeID:(id)d;
+ (double)minPowerDifference;
+ (double)minPowerPercentageDifference;
+ (void)load;
- (BOOL)isEqualContentsWithEvent:(id)event;
- (PLAccountingPowerEventEntry)initWithRootNodeID:(id)d withPower:(double)power withRange:(id)range;
- (double)power;
- (int)instanceDirectionality;
@end

@implementation PLAccountingPowerEventEntry

- (int)instanceDirectionality
{
  rootNodeID = [(PLAccountingPowerEventEntry *)self rootNodeID];
  v3 = [&unk_2870F88E8 objectAtIndexedSubscript:{objc_msgSend(rootNodeID, "intValue")}];
  intValue = [v3 intValue];

  return intValue;
}

- (double)power
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:*MEMORY[0x277D3F430]];
  [v2 doubleValue];
  v4 = v3 / 1000.0;

  return v4;
}

+ (double)minPowerDifference
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__PLAccountingPowerEventEntry_minPowerDifference__block_invoke;
  v4[3] = &unk_279A55E58;
  v5 = @"PLAccountingDebugService_Debug";
  v6 = 0;
  if (minPowerDifference_defaultOnce != -1)
  {
    dispatch_once(&minPowerDifference_defaultOnce, v4);
  }

  v2 = minPowerDifference_objectForKey;

  result = 3.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

+ (double)minPowerPercentageDifference
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__PLAccountingPowerEventEntry_minPowerPercentageDifference__block_invoke;
  v4[3] = &unk_279A55E58;
  v5 = @"PLAccountingDebugService_Debug";
  v6 = 0;
  if (minPowerPercentageDifference_defaultOnce != -1)
  {
    dispatch_once(&minPowerPercentageDifference_defaultOnce, v4);
  }

  v2 = minPowerPercentageDifference_objectForKey;

  result = 3.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingPowerEventEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __49__PLAccountingPowerEventEntry_minPowerDifference__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  minPowerDifference_objectForKey = result;
  return result;
}

uint64_t __59__PLAccountingPowerEventEntry_minPowerPercentageDifference__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  minPowerPercentageDifference_objectForKey = result;
  return result;
}

+ (BOOL)isValidPower:(double)power forRootNodeID:(id)d
{
  dCopy = d;
  if (power < 0.0)
  {
    if (![MEMORY[0x277D3F180] debugEnabled])
    {
      goto LABEL_16;
    }

    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLAccountingPowerEventEntry_isValidPower_forRootNodeID___block_invoke_19;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (isValidPower_forRootNodeID__defaultOnce_17 != -1)
    {
      dispatch_once(&isValidPower_forRootNodeID__defaultOnce_17, block);
    }

    if (isValidPower_forRootNodeID__classDebugEnabled_18 != 1)
    {
      goto LABEL_16;
    }

    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Negative power of %.2f mWh received for rootNodeID:%@", *&power, dCopy];
    v8 = MEMORY[0x277D3F178];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/Power/PLAccountingPowerEventEntry.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAccountingPowerEventEntry isValidPower:forRootNodeID:]"];
    [v8 logMessage:dCopy fromFile:lastPathComponent fromFunction:v11 fromLineNumber:37];

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLAccountingDependency activate];
    }

    goto LABEL_15;
  }

  if (power <= 10000.0)
  {
    v18 = 1;
    goto LABEL_18;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __58__PLAccountingPowerEventEntry_isValidPower_forRootNodeID___block_invoke_25;
    v23 = &__block_descriptor_40_e5_v8__0lu32l8;
    v24 = v13;
    if (isValidPower_forRootNodeID__defaultOnce_23 != -1)
    {
      dispatch_once(&isValidPower_forRootNodeID__defaultOnce_23, &v20);
    }

    if (isValidPower_forRootNodeID__classDebugEnabled_24 == 1)
    {
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR:  %.2f mWh received for rootNodeID:%@ exceeds max threshold of %d", *&power, dCopy, 10000, v20, v21, v22, v23, v24];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/Power/PLAccountingPowerEventEntry.m"];
      lastPathComponent2 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAccountingPowerEventEntry isValidPower:forRootNodeID:]"];
      [v14 logMessage:dCopy fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:40];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

LABEL_15:
    }
  }

LABEL_16:
  v18 = 0;
LABEL_18:

  return v18;
}

uint64_t __58__PLAccountingPowerEventEntry_isValidPower_forRootNodeID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  isValidPower_forRootNodeID__classDebugEnabled = result;
  return result;
}

uint64_t __58__PLAccountingPowerEventEntry_isValidPower_forRootNodeID___block_invoke_19(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  isValidPower_forRootNodeID__classDebugEnabled_18 = result;
  return result;
}

uint64_t __58__PLAccountingPowerEventEntry_isValidPower_forRootNodeID___block_invoke_25(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  isValidPower_forRootNodeID__classDebugEnabled_24 = result;
  return result;
}

- (PLAccountingPowerEventEntry)initWithRootNodeID:(id)d withPower:(double)power withRange:(id)range
{
  dCopy = d;
  rangeCopy = range;
  if ([dCopy intValue] < 1 || (+[PLAccountingEngine deviceRootNodeIDs](PLAccountingEngine, "deviceRootNodeIDs"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", dCopy), v10, !v11) || !objc_msgSend(objc_opt_class(), "isValidPower:forRootNodeID:", dCopy, power))
  {
LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  v22.receiver = self;
  v22.super_class = PLAccountingPowerEventEntry;
  v12 = [(PLAccountingEventEntry *)&v22 initWithRange:rangeCopy];
  self = v12;
  if (v12)
  {
    [(PLEntry *)v12 setObject:dCopy forKeyedSubscript:*MEMORY[0x277D3F438]];
    v13 = [MEMORY[0x277CCABB0] numberWithLong:llround(power * 1000.0)];
    [(PLEntry *)self setObject:v13 forKeyedSubscript:*MEMORY[0x277D3F430]];

    LODWORD(v13) = [(PLAccountingPowerEventEntry *)self instanceDirectionality];
    if (v13 != [objc_opt_class() classDirectionality])
    {
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Directionality mismatch for rootNodeID=%@", dCopy];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/Power/PLAccountingPowerEventEntry.m"];
      lastPathComponent = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingPowerEventEntry initWithRootNodeID:withPower:withRange:]"];
      [v16 logMessage:dCopy fromFile:lastPathComponent fromFunction:v19 fromLineNumber:69];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      goto LABEL_10;
    }
  }

  self = self;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (BOOL)isEqualContentsWithEvent:(id)event
{
  eventCopy = event;
  [(PLAccountingPowerEventEntry *)self power];
  if (v5 == 0.0)
  {
    [eventCopy power];
    v7 = v6 == 0.0;
  }

  else
  {
    [(PLAccountingPowerEventEntry *)self power];
    v9 = v8;
    [eventCopy power];
    v11 = vabdd_f64(v9, v10);
    [objc_opt_class() minPowerDifference];
    if (v11 <= v12)
    {
      v7 = 1;
    }

    else
    {
      [(PLAccountingPowerEventEntry *)self power];
      v14 = v13;
      [eventCopy power];
      v16 = vabdd_f64(v14, v15);
      [(PLAccountingPowerEventEntry *)self power];
      v18 = v16 / v17 * 100.0;
      [objc_opt_class() minPowerPercentageDifference];
      v7 = v18 <= v19;
    }
  }

  return v7;
}

@end