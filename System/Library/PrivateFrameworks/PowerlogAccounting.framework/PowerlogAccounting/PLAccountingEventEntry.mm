@interface PLAccountingEventEntry
- (PLAccountingEventEntry)initWithRange:(id)a3;
- (PLAccountingRange)range;
- (id)rangeSinceEvent:(id)a3;
- (void)mergeWithEvent:(id)a3;
- (void)setRange:(id)a3;
@end

@implementation PLAccountingEventEntry

- (PLAccountingRange)range
{
  v2 = self;
  objc_sync_enter(v2);
  range = v2->_range;
  if (!range)
  {
    v4 = [(PLEntry *)v2 entryDate];
    v5 = [(PLEntry *)v2 objectForKeyedSubscript:@"StartOffset"];
    [v5 doubleValue];
    v7 = [v4 dateByAddingTimeInterval:v6 / 1000.0];

    v8 = [(PLEntry *)v2 entryDate];
    v9 = [(PLEntry *)v2 objectForKeyedSubscript:@"EndOffset"];
    [v9 doubleValue];
    v11 = [v8 dateByAddingTimeInterval:v10 / 1000.0];

    if ([objc_opt_class() classDirectionality] == 4)
    {
      v12 = v7;
    }

    else
    {
      v12 = v11;
    }

    v13 = [PLAccountingRange rangeWithStartDate:v7 withEndDate:v12];
    v14 = v2->_range;
    v2->_range = v13;

    range = v2->_range;
  }

  v15 = range;
  objc_sync_exit(v2);

  return v15;
}

- (PLAccountingEventEntry)initWithRange:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [objc_opt_class() entryKey];
    v20.receiver = self;
    v20.super_class = PLAccountingEventEntry;
    v7 = [(PLEntry *)&v20 initWithEntryKey:v6];

    if (v7)
    {
      v7->_used = 0;
      objc_storeStrong(&v7->_range, a3);
      v8 = [v5 startDate];
      v9 = [v5 endDate];
      if (v8)
      {
        v10 = MEMORY[0x277CCABB0];
        v11 = [(PLEntry *)v7 entryDate];
        [v8 timeIntervalSinceDate:v11];
        v13 = [v10 numberWithDouble:v12 * 1000.0];
        [(PLEntry *)v7 setObject:v13 forKeyedSubscript:@"StartOffset"];
      }

      if (v9 && [objc_opt_class() classDirectionality] != 4)
      {
        v14 = MEMORY[0x277CCABB0];
        v15 = [(PLEntry *)v7 entryDate];
        [v9 timeIntervalSinceDate:v15];
        v17 = [v14 numberWithDouble:v16 * 1000.0];
        [(PLEntry *)v7 setObject:v17 forKeyedSubscript:@"EndOffset"];
      }
    }

    self = v7;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)setRange:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (![(PLAccountingRange *)v6->_range isEqual:v5])
  {
    objc_storeStrong(&v6->_range, a3);
    v7 = [v5 startDate];
    v8 = [v5 endDate];
    v9 = [MEMORY[0x277D3F2A0] sharedCore];
    v10 = [v9 storage];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__PLAccountingEventEntry_setRange___block_invoke;
    v13[3] = &unk_279A55D98;
    v11 = v7;
    v14 = v11;
    v15 = v6;
    v12 = v8;
    v16 = v12;
    [v10 blockingUpdateEntry:v6 withBlock:v13];
  }

  objc_sync_exit(v6);
}

void __35__PLAccountingEventEntry_setRange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [*(a1 + 40) entryDate];
    [v2 timeIntervalSinceDate:v4];
    v6 = [v3 numberWithDouble:v5 * 1000.0];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:@"StartOffset"];
  }

  if (*(a1 + 48))
  {
    v7 = *(a1 + 40);
    if ([objc_opt_class() classDirectionality] != 4)
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = *(a1 + 48);
      v12 = [*(a1 + 40) entryDate];
      [v9 timeIntervalSinceDate:v12];
      v11 = [v8 numberWithDouble:v10 * 1000.0];
      [*(a1 + 40) setObject:v11 forKeyedSubscript:@"EndOffset"];
    }
  }
}

- (id)rangeSinceEvent:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() classDirectionality];
  v6 = 0;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_33;
      }

      v30 = objc_opt_class();
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __42__PLAccountingEventEntry_rangeSinceEvent___block_invoke_31;
      v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v47[4] = v30;
      if (rangeSinceEvent__defaultOnce_29 != -1)
      {
        dispatch_once(&rangeSinceEvent__defaultOnce_29, v47);
      }

      if (rangeSinceEvent__classDebugEnabled_30 != 1)
      {
        goto LABEL_33;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"interval"];
      v31 = MEMORY[0x277D3F178];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/PLAccountingEventEntry.m"];
      v33 = [v32 lastPathComponent];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEventEntry rangeSinceEvent:]"];
      [v31 logMessage:v19 fromFile:v33 fromFunction:v34 fromLineNumber:91];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }

    else
    {
      v7 = 0;
      if (v5 != 4)
      {
        goto LABEL_35;
      }

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_33;
      }

      v18 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __42__PLAccountingEventEntry_rangeSinceEvent___block_invoke_37;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v18;
      if (rangeSinceEvent__defaultOnce_35 != -1)
      {
        dispatch_once(&rangeSinceEvent__defaultOnce_35, v46);
      }

      if (rangeSinceEvent__classDebugEnabled_36 != 1)
      {
        goto LABEL_33;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"point"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/PLAccountingEventEntry.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEventEntry rangeSinceEvent:]"];
      [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:96];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }

    goto LABEL_32;
  }

  if (v5 != 1)
  {
    v7 = 0;
    if (v5 != 2)
    {
      goto LABEL_35;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __42__PLAccountingEventEntry_rangeSinceEvent___block_invoke_25;
      v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v48[4] = v8;
      if (rangeSinceEvent__defaultOnce_23 != -1)
      {
        dispatch_once(&rangeSinceEvent__defaultOnce_23, v48);
      }

      if (rangeSinceEvent__classDebugEnabled_24 == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"backward"];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/PLAccountingEventEntry.m"];
        v12 = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEventEntry rangeSinceEvent:]"];
        [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:86];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    v15 = [v4 range];
    v7 = [v15 endDate];

    v16 = [(PLAccountingEventEntry *)self range];
    v17 = [v16 endDate];
    goto LABEL_34;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v25 = objc_opt_class();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __42__PLAccountingEventEntry_rangeSinceEvent___block_invoke;
    v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v49[4] = v25;
    if (rangeSinceEvent__defaultOnce != -1)
    {
      dispatch_once(&rangeSinceEvent__defaultOnce, v49);
    }

    if (rangeSinceEvent__classDebugEnabled == 1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"forward"];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/PLAccountingEventEntry.m"];
      v28 = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEventEntry rangeSinceEvent:]"];
      [v26 logMessage:v19 fromFile:v28 fromFunction:v29 fromLineNumber:81];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

LABEL_32:
    }
  }

LABEL_33:
  v35 = [v4 range];
  v7 = [v35 startDate];

  v16 = [(PLAccountingEventEntry *)self range];
  v17 = [v16 startDate];
LABEL_34:
  v6 = v17;

LABEL_35:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v36 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLAccountingEventEntry_rangeSinceEvent___block_invoke_43;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v36;
    if (rangeSinceEvent__defaultOnce_41 != -1)
    {
      dispatch_once(&rangeSinceEvent__defaultOnce_41, block);
    }

    if (rangeSinceEvent__classDebugEnabled_42 == 1)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"startDate=%@, endDate=%@", v7, v6];
      v38 = MEMORY[0x277D3F178];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/PLAccountingEventEntry.m"];
      v40 = [v39 lastPathComponent];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEventEntry rangeSinceEvent:]"];
      [v38 logMessage:v37 fromFile:v40 fromFunction:v41 fromLineNumber:100];

      v42 = PLLogCommon();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v43 = [PLAccountingRange rangeWithStartDate:v7 withEndDate:v6];

  return v43;
}

uint64_t __42__PLAccountingEventEntry_rangeSinceEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rangeSinceEvent__classDebugEnabled = result;
  return result;
}

uint64_t __42__PLAccountingEventEntry_rangeSinceEvent___block_invoke_25(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rangeSinceEvent__classDebugEnabled_24 = result;
  return result;
}

uint64_t __42__PLAccountingEventEntry_rangeSinceEvent___block_invoke_31(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rangeSinceEvent__classDebugEnabled_30 = result;
  return result;
}

uint64_t __42__PLAccountingEventEntry_rangeSinceEvent___block_invoke_37(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rangeSinceEvent__classDebugEnabled_36 = result;
  return result;
}

uint64_t __42__PLAccountingEventEntry_rangeSinceEvent___block_invoke_43(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rangeSinceEvent__classDebugEnabled_42 = result;
  return result;
}

- (void)mergeWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingEventEntry *)self instanceDirectionality];
  if (v5 == [v4 instanceDirectionality])
  {
    v6 = [objc_opt_class() classDirectionality];
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v27 = objc_opt_class();
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __41__PLAccountingEventEntry_mergeWithEvent___block_invoke_52;
          v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v42[4] = v27;
          if (mergeWithEvent__defaultOnce_50 != -1)
          {
            dispatch_once(&mergeWithEvent__defaultOnce_50, v42);
          }

          if (mergeWithEvent__classDebugEnabled_51 == 1)
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"interval"];
            v29 = MEMORY[0x277D3F178];
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/PLAccountingEventEntry.m"];
            v31 = [v30 lastPathComponent];
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEventEntry mergeWithEvent:]"];
            [v29 logMessage:v28 fromFile:v31 fromFunction:v32 fromLineNumber:125];

            v33 = PLLogCommon();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        v14 = [(PLAccountingEventEntry *)self range];
        v15 = [v14 startDate];
        v34 = [v4 range];
        v35 = [v34 endDate];
        v36 = [PLAccountingRange rangeWithStartDate:v15 withEndDate:v35];
        [(PLAccountingEventEntry *)self setRange:v36];

        goto LABEL_35;
      }

      if (v6 == 4 && [MEMORY[0x277D3F180] debugEnabled])
      {
        v17 = objc_opt_class();
        v37 = MEMORY[0x277D85DD0];
        v38 = 3221225472;
        v39 = __41__PLAccountingEventEntry_mergeWithEvent___block_invoke_55;
        v40 = &__block_descriptor_40_e5_v8__0lu32l8;
        v41 = v17;
        if (mergeWithEvent__defaultOnce_53 != -1)
        {
          dispatch_once(&mergeWithEvent__defaultOnce_53, &v37);
        }

        if (mergeWithEvent__classDebugEnabled_54 == 1)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"point", v37, v38, v39, v40, v41];
          v18 = MEMORY[0x277D3F178];
          v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/PLAccountingEventEntry.m"];
          v20 = [v19 lastPathComponent];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEventEntry mergeWithEvent:]"];
          [v18 logMessage:v14 fromFile:v20 fromFunction:v21 fromLineNumber:130];

          v15 = PLLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }

          goto LABEL_35;
        }
      }
    }

    else if (v6 == 1)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v22 = objc_opt_class();
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __41__PLAccountingEventEntry_mergeWithEvent___block_invoke;
        v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v44[4] = v22;
        if (mergeWithEvent__defaultOnce != -1)
        {
          dispatch_once(&mergeWithEvent__defaultOnce, v44);
        }

        if (mergeWithEvent__classDebugEnabled == 1)
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"forward"];
          v23 = MEMORY[0x277D3F178];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/PLAccountingEventEntry.m"];
          v25 = [v24 lastPathComponent];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEventEntry mergeWithEvent:]"];
          [v23 logMessage:v14 fromFile:v25 fromFunction:v26 fromLineNumber:116];

          v15 = PLLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }

          goto LABEL_35;
        }
      }
    }

    else if (v6 == 2)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v7 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __41__PLAccountingEventEntry_mergeWithEvent___block_invoke_49;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v7;
        if (mergeWithEvent__defaultOnce_47 != -1)
        {
          dispatch_once(&mergeWithEvent__defaultOnce_47, block);
        }

        if (mergeWithEvent__classDebugEnabled_48 == 1)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"backward"];
          v9 = MEMORY[0x277D3F178];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/PLAccountingEventEntry.m"];
          v11 = [v10 lastPathComponent];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingEventEntry mergeWithEvent:]"];
          [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:120];

          v13 = PLLogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      v14 = [v4 range];
      v15 = [v14 endDate];
      v16 = [PLAccountingRange rangeWithStartDate:0 withEndDate:v15];
      [(PLAccountingEventEntry *)self setRange:v16];

LABEL_35:
    }
  }
}

uint64_t __41__PLAccountingEventEntry_mergeWithEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  mergeWithEvent__classDebugEnabled = result;
  return result;
}

uint64_t __41__PLAccountingEventEntry_mergeWithEvent___block_invoke_49(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  mergeWithEvent__classDebugEnabled_48 = result;
  return result;
}

uint64_t __41__PLAccountingEventEntry_mergeWithEvent___block_invoke_52(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  mergeWithEvent__classDebugEnabled_51 = result;
  return result;
}

uint64_t __41__PLAccountingEventEntry_mergeWithEvent___block_invoke_55(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  mergeWithEvent__classDebugEnabled_54 = result;
  return result;
}

@end