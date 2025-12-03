@interface PLAWDAuxMetrics
+ (id)getSharedObjWithOperator:(id)operator;
- (BOOL)doesInterfereWithChargerWithStartDate:(id)date withEndDate:(id)endDate;
- (BOOL)dropFirstEntryReceived:(id)received usingFilter:(id)filter andStartTime:(id)time;
- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn;
- (PLAWDAuxMetrics)initWithOperator:(id)operator;
- (PLOperator)operator;
- (double)getRailEnergyWithEntry:(id)entry withFilter:(id)filter isRailForward:(BOOL)forward;
- (void)handleChargerChangeWithState:(BOOL)state withDate:(id)date;
- (void)resetTableWithEntryKey:(id)key;
- (void)startMetricCollection:(id)collection;
- (void)stopMetricCollection:(id)collection;
@end

@implementation PLAWDAuxMetrics

- (PLAWDAuxMetrics)initWithOperator:(id)operator
{
  operatorCopy = operator;
  if (self)
  {
    [(PLAWDAuxMetrics *)self setOperator:operatorCopy];
  }

  v5 = objc_opt_new();
  [(PLAWDAuxMetrics *)self setRunningMetrics:v5];

  if (initWithOperator__onceToken != -1)
  {
    [PLAWDAuxMetrics initWithOperator:];
  }

  return self;
}

uint64_t __36__PLAWDAuxMetrics_initWithOperator___block_invoke()
{
  v0 = objc_opt_new();
  v1 = startChargerPeriods;
  startChargerPeriods = v0;

  v2 = objc_opt_new();
  v3 = endChargerPeriods;
  endChargerPeriods = v2;

  awdStartTime = [MEMORY[0x277CBEAA8] monotonicDate];

  return MEMORY[0x2821F96F8]();
}

+ (id)getSharedObjWithOperator:(id)operator
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __44__PLAWDAuxMetrics_getSharedObjWithOperator___block_invoke;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v3;
    if (getSharedObjWithOperator__defaultOnce != -1)
    {
      dispatch_once(&getSharedObjWithOperator__defaultOnce, &block);
    }

    if (getSharedObjWithOperator__classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAWD AUX class %@ not implementing getSharedObj", objc_opt_class(), block, v12, v13, v14, v15];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDAuxMetrics.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAWDAuxMetrics getSharedObjWithOperator:]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:49];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  return 0;
}

uint64_t __44__PLAWDAuxMetrics_getSharedObjWithOperator___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getSharedObjWithOperator__classDebugEnabled = result;
  return result;
}

- (void)startMetricCollection:(id)collection
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __41__PLAWDAuxMetrics_startMetricCollection___block_invoke;
    v13 = &__block_descriptor_40_e5_v8__0lu32l8;
    v14 = v3;
    if (startMetricCollection__defaultOnce_4 != -1)
    {
      dispatch_once(&startMetricCollection__defaultOnce_4, &block);
    }

    if (startMetricCollection__classDebugEnabled_4 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAWD AUX class %@ not implementing startMetricCollection", objc_opt_class(), block, v11, v12, v13, v14];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDAuxMetrics.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDAuxMetrics startMetricCollection:]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:55];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __41__PLAWDAuxMetrics_startMetricCollection___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startMetricCollection__classDebugEnabled_4 = result;
  return result;
}

- (void)stopMetricCollection:(id)collection
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __40__PLAWDAuxMetrics_stopMetricCollection___block_invoke;
    v13 = &__block_descriptor_40_e5_v8__0lu32l8;
    v14 = v3;
    if (stopMetricCollection__defaultOnce_4 != -1)
    {
      dispatch_once(&stopMetricCollection__defaultOnce_4, &block);
    }

    if (stopMetricCollection__classDebugEnabled_4 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAWD AUX class %@ not implementing stopMetricCollection", objc_opt_class(), block, v11, v12, v13, v14];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDAuxMetrics.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDAuxMetrics stopMetricCollection:]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:60];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }
}

uint64_t __40__PLAWDAuxMetrics_stopMetricCollection___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopMetricCollection__classDebugEnabled_4 = result;
  return result;
}

- (BOOL)submitDataToAWDServer:(id)server withAwdConn:(id)conn
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __53__PLAWDAuxMetrics_submitDataToAWDServer_withAwdConn___block_invoke;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v4;
    if (submitDataToAWDServer_withAwdConn__defaultOnce_2 != -1)
    {
      dispatch_once(&submitDataToAWDServer_withAwdConn__defaultOnce_2, &block);
    }

    if (submitDataToAWDServer_withAwdConn__classDebugEnabled_2 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLAWD AUX class %@ not implementing submitDataToAWDServer", objc_opt_class(), block, v13, v14, v15, v16];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/AwdLibrary/PLAWDAuxMetrics.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAWDAuxMetrics submitDataToAWDServer:withAwdConn:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:65];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAWDDisplay startMetricCollection:];
      }
    }
  }

  return 0;
}

uint64_t __53__PLAWDAuxMetrics_submitDataToAWDServer_withAwdConn___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  submitDataToAWDServer_withAwdConn__classDebugEnabled_2 = result;
  return result;
}

- (void)resetTableWithEntryKey:(id)key
{
  keyCopy = key;
  operator = [(PLAWDAuxMetrics *)self operator];
  storage = [operator storage];
  [storage deleteAllEntriesForKey:keyCopy];
}

- (void)handleChargerChangeWithState:(BOOL)state withDate:(id)date
{
  stateCopy = state;
  dateCopy = date;
  v5 = [startChargerPeriods count];
  if (stateCopy)
  {
    if (v5 != [endChargerPeriods count])
    {
      goto LABEL_7;
    }

    v6 = &startChargerPeriods;
LABEL_6:
    [*v6 addObject:dateCopy];
LABEL_7:
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-7200.0];
    while ([endChargerPeriods count])
    {
      v9 = [endChargerPeriods objectAtIndexedSubscript:0];
      v10 = [v8 compare:v9];

      if (v10 != 1)
      {
        break;
      }

      [startChargerPeriods removeObjectAtIndex:0];
      [endChargerPeriods removeObjectAtIndex:0];
    }

    goto LABEL_12;
  }

  if (v5)
  {
    v7 = [startChargerPeriods count];
    v6 = &endChargerPeriods;
    if (v7 == [endChargerPeriods count])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
}

- (BOOL)doesInterfereWithChargerWithStartDate:(id)date withEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  if ([startChargerPeriods count])
  {
    v7 = [startChargerPeriods count];
    v8 = [endChargerPeriods count];
    if ([startChargerPeriods count])
    {
      for (i = 0; [startChargerPeriods count] > i; ++i)
      {
        if (v7 == v8 || i != [startChargerPeriods count] - 1)
        {
          v12 = [startChargerPeriods objectAtIndexedSubscript:i];
          if ([dateCopy compare:v12] == -1)
          {
            v13 = [startChargerPeriods objectAtIndexedSubscript:i];
            v14 = [endDateCopy compare:v13];

            if (v14 == 1)
            {
              goto LABEL_20;
            }
          }

          else
          {
          }

          v15 = [endChargerPeriods objectAtIndexedSubscript:i];
          if ([dateCopy compare:v15] == -1)
          {
            v16 = [endChargerPeriods objectAtIndexedSubscript:i];
            v17 = [endDateCopy compare:v16];

            if (v17 == 1)
            {
              goto LABEL_20;
            }
          }

          else
          {
          }

          v18 = [startChargerPeriods objectAtIndexedSubscript:i];
          if ([dateCopy compare:v18] == 1)
          {
            v19 = [endChargerPeriods objectAtIndexedSubscript:i];
            v20 = [endDateCopy compare:v19];

            if (v20 == -1)
            {
LABEL_20:
              v21 = 1;
              goto LABEL_21;
            }
          }

          else
          {
          }
        }

        else
        {
          v10 = [startChargerPeriods objectAtIndexedSubscript:i];
          v11 = [dateCopy compare:v10];

          if (v11 == 1)
          {
            goto LABEL_20;
          }
        }
      }
    }
  }

  v21 = 0;
LABEL_21:

  return v21;
}

- (double)getRailEnergyWithEntry:(id)entry withFilter:(id)filter isRailForward:(BOOL)forward
{
  entryCopy = entry;
  filterCopy = filter;
  if (entryCopy)
  {
    operator = [(PLAWDAuxMetrics *)self operator];
    storage = [operator storage];
    entryKey = [entryCopy entryKey];
    v13 = [storage entriesForKey:entryKey startingFromRowID:objc_msgSend(entryCopy count:"entryID") - 1 withFilters:{-1, filterCopy}];

    if ([v13 count] == 1)
    {
      v14 = [v13 objectAtIndexedSubscript:0];
      if (v14)
      {
        if (forward)
        {
          goto LABEL_7;
        }

        if (!awdStartTime)
        {
          goto LABEL_7;
        }

        [awdStartTime timeIntervalSince1970];
        v16 = v15;
        entryDate = [v14 entryDate];
        [entryDate timeIntervalSince1970];
        v19 = v16 - v18;

        entryDate2 = [entryCopy entryDate];
        [entryDate2 timeIntervalSince1970];
        v22 = v21;
        [awdStartTime timeIntervalSince1970];
        v24 = v22 - v23;

        if (v24 >= v19)
        {
LABEL_7:
          entryDate3 = [v14 entryDate];
          entryDate4 = [entryCopy entryDate];
          [(PLAWDAuxMetrics *)self doesInterfereWithChargerWithStartDate:entryDate3 withEndDate:entryDate4];
        }
      }
    }
  }

  return 0.0;
}

- (BOOL)dropFirstEntryReceived:(id)received usingFilter:(id)filter andStartTime:(id)time
{
  receivedCopy = received;
  timeCopy = time;
  v10 = timeCopy;
  v11 = 1;
  if (receivedCopy && timeCopy)
  {
    filterCopy = filter;
    operator = [(PLAWDAuxMetrics *)self operator];
    storage = [operator storage];
    entryKey = [receivedCopy entryKey];
    v16 = [storage entriesForKey:entryKey startingFromRowID:objc_msgSend(receivedCopy count:"entryID") - 1 withFilters:{-1, filterCopy}];

    if ([v16 count] == 1)
    {
      v17 = [v16 objectAtIndexedSubscript:0];
      if (v17)
      {
        [v10 timeIntervalSince1970];
        v19 = v18;
        entryDate = [v17 entryDate];
        [entryDate timeIntervalSince1970];
        v22 = v19 - v21;

        entryDate2 = [receivedCopy entryDate];
        [entryDate2 timeIntervalSince1970];
        v25 = v24;
        [v10 timeIntervalSince1970];
        v27 = v25 - v26;

        v11 = v27 <= v22;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  return v11;
}

- (PLOperator)operator
{
  WeakRetained = objc_loadWeakRetained(&self->_operator);

  return WeakRetained;
}

@end