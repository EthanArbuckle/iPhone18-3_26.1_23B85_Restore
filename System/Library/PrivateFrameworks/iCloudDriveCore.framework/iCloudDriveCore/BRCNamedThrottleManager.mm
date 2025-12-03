@interface BRCNamedThrottleManager
- (BRCNamedThrottleManager)initWithDB:(id)b;
- (void)cleanNamedThrottleTable:(id)table;
- (void)dumpToContext:(id)context;
- (void)throttle:(id)throttle subCategory:(id)category withRules:(id)rules onQueue:(id)queue block:(id)block;
@end

@implementation BRCNamedThrottleManager

- (BRCNamedThrottleManager)initWithDB:(id)b
{
  bCopy = b;
  v11.receiver = self;
  v11.super_class = BRCNamedThrottleManager;
  v6 = [(BRCNamedThrottleManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_db, b);
    v8 = OSVersion();
    currentOSVersion = v7->_currentOSVersion;
    v7->_currentOSVersion = v8;
  }

  return v7;
}

- (void)cleanNamedThrottleTable:(id)table
{
  tableCopy = table;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BRCNamedThrottleManager *)v4 cleanNamedThrottleTable:v5];
  }

  v6 = time(0);
  v7 = OSVersion();
  [tableCopy execute:{@"DELETE FROM named_throttles_history WHERE expiration < %ld AND (allow_same_build = 1 OR os_version != %@)", v6, v7}];

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(BRCNamedThrottleManager *)tableCopy cleanNamedThrottleTable:v8, v9];
  }
}

- (void)throttle:(id)throttle subCategory:(id)category withRules:(id)rules onQueue:(id)queue block:(id)block
{
  throttleCopy = throttle;
  categoryCopy = category;
  queueCopy = queue;
  blockCopy = block;
  v14 = self->_db;
  v15 = self->_currentOSVersion;
  rulesCopy = rules;
  v17 = time(0);
  v18 = [rulesCopy objectForKeyedSubscript:@"waitBetweenThrottleRuns"];
  longValue = [v18 longValue];
  v20 = 86400;
  if (longValue)
  {
    v21 = longValue;
  }

  else
  {
    v21 = 86400;
  }

  v22 = [rulesCopy objectForKeyedSubscript:@"waitBetweenSubCatagoryRuns"];
  longValue2 = [v22 longValue];
  if (longValue2)
  {
    v20 = longValue2;
  }

  v24 = [rulesCopy objectForKeyedSubscript:@"allowOnSameBuild"];

  bOOLValue = [v24 BOOLValue];
  serialQueue = [(BRCPQLConnection *)self->_db serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__BRCNamedThrottleManager_throttle_subCategory_withRules_onQueue_block___block_invoke;
  block[3] = &unk_2785065D8;
  v36 = v14;
  v37 = throttleCopy;
  v42 = v17;
  v43 = v21;
  v45 = bOOLValue;
  v38 = categoryCopy;
  v39 = v15;
  v44 = v20;
  v40 = queueCopy;
  v41 = blockCopy;
  v27 = blockCopy;
  v28 = queueCopy;
  v29 = v15;
  v30 = categoryCopy;
  v31 = throttleCopy;
  v32 = v14;
  dispatch_async(serialQueue, block);
}

void __72__BRCNamedThrottleManager_throttle_subCategory_withRules_onQueue_block___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) numberWithSQL:{@"SELECT MAX(last_run) FROM named_throttles_history WHERE throttle_id = %@", *(a1 + 40)}];
  v3 = v2;
  if (!v2)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if ([v2 longValue] <= *(a1 + 80) - *(a1 + 88))
  {
    v7 = *(a1 + 40);
    v6 = [*(a1 + 32) fetch:{@"SELECT last_run, os_version FROM named_throttles_history WHERE throttle_id = %@ AND sub_category = %@", v7, *(a1 + 48)}];
LABEL_8:
    if ([v6 next])
    {
      v8 = *(a1 + 80);
      v9 = (v8 - [v6 longAtIndex:0]);
      v10 = 1;
      v11 = [v6 stringAtIndex:1];
      if ((*(a1 + 104) & 1) == 0)
      {
        v10 = [*(a1 + 56) isEqualToString:v11] ^ 1;
      }

      v12 = *(a1 + 96);
      if (v9 >= v12)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0;
      }

      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(a1 + 40);
        v24 = *(a1 + 48);
        v25 = *(a1 + 96);
        v26 = *(a1 + 56);
        v27 = @"NO";
        if (v13)
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        if (v10)
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        if (v9 >= v12)
        {
          v27 = @"YES";
        }

        *buf = 138414594;
        v43 = v23;
        v44 = 2112;
        v45 = v24;
        v46 = 2048;
        v47 = v9;
        v48 = 2048;
        v49 = v25;
        v50 = 2112;
        v51 = v11;
        v52 = 2112;
        v53 = v26;
        v54 = 2112;
        v55 = v28;
        v56 = 2112;
        v57 = v29;
        v58 = 2112;
        v59 = v27;
        v60 = 2112;
        v61 = v14;
        _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Throttler %@,%@: last run: %ld seconds ago, minimal time: %ld seconds, os build: %@, current os build: %@, should invoke: %@. OS build Rule result: %@, Time Limit Rule Result: %@%@", buf, 0x66u);
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(a1 + 40);
        v31 = *(a1 + 48);
        *buf = 138412802;
        v43 = v30;
        v44 = 2112;
        v45 = v31;
        v46 = 2112;
        v47 = v18;
        _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] Throttler %@,%@: no history found, should invoke: YES%@", buf, 0x20u);
      }
    }

    v20 = *(a1 + 40);
    [*(a1 + 32) execute:{@"INSERT OR REPLACE INTO named_throttles_history (throttle_id, sub_category, last_run, os_version, expiration, allow_same_build) VALUES (%@, %@, %ld, %@, %ld, %d)", v20, *(a1 + 48), *(a1 + 80), *(a1 + 56), *(a1 + 96) + *(a1 + 80), *(a1 + 104)}];
    v21 = *(a1 + 32);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __72__BRCNamedThrottleManager_throttle_subCategory_withRules_onQueue_block___block_invoke_2;
    v37[3] = &unk_278500048;
    v16 = &v38;
    v38 = *(a1 + 64);
    v39 = *(a1 + 72);
    [v21 scheduleFlushWithCheckpoint:0 whenFlushed:v37];

    goto LABEL_21;
  }

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v32 = *(a1 + 40);
    v33 = *(a1 + 48);
    v34 = *(a1 + 80);
    v35 = [v3 longValue];
    v36 = *(a1 + 88);
    *buf = 138413314;
    v43 = v32;
    v44 = 2112;
    v45 = v33;
    v46 = 2048;
    v47 = (v34 - v35);
    v48 = 2048;
    v49 = v36;
    v50 = 2112;
    v51 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Throttler %@,%@: throttle id last run: %ld seconds ago, minimal time: %ld seconds, should invoke: NO%@", buf, 0x34u);
  }

LABEL_16:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__BRCNamedThrottleManager_throttle_subCategory_withRules_onQueue_block___block_invoke_22;
  block[3] = &unk_278501520;
  v16 = &v41;
  v17 = *(a1 + 64);
  v41 = *(a1 + 72);
  dispatch_async(v17, block);
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
}

void __72__BRCNamedThrottleManager_throttle_subCategory_withRules_onQueue_block___block_invoke_22(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] brc_errorThrottledWithDescription:@"Throttled by named throttle manager"];
  (*(v1 + 16))(v1, v2);
}

void __72__BRCNamedThrottleManager_throttle_subCategory_withRules_onQueue_block___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__BRCNamedThrottleManager_throttle_subCategory_withRules_onQueue_block___block_invoke_3;
  block[3] = &unk_278501520;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)dumpToContext:(id)context
{
  contextCopy = context;
  [contextCopy writeLineWithFormat:&stru_2837504F0];
  [contextCopy writeLineWithFormat:@"Named Throttle History"];
  [contextCopy writeLineWithFormat:@"-----------------------------------------------------"];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  dumpDateFormat = [v5 dumpDateFormat];
  [v4 setDateFormat:dumpDateFormat];

  v7 = [(BRCPQLConnection *)self->_db fetch:@"SELECT throttle_id, sub_category, last_run, os_version, expiration, allow_same_build FROM named_throttles_history LIMIT 100"];
  if ([v7 next])
  {
    do
    {
      v8 = [v7 stringAtIndex:0];
      v9 = [v7 stringAtIndex:1];
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v7, "longAtIndex:", 2)}];
      v11 = [v7 stringAtIndex:3];
      v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v7, "longAtIndex:", 4)}];
      v13 = [v7 BOOLAtIndex:5];
      v14 = [v4 stringFromDate:v10];
      v15 = [v4 stringFromDate:v12];
      v16 = v15;
      v17 = @"no";
      if (v13)
      {
        v17 = @"yes";
      }

      [contextCopy writeLineWithFormat:@"|<%@, %@>|last run:%@|os version:%@|expiration:%@|allow same build:%@", v8, v9, v14, v11, v15, v17];
    }

    while (([v7 next] & 1) != 0);
  }

  [contextCopy writeLineWithFormat:&stru_2837504F0];
}

@end