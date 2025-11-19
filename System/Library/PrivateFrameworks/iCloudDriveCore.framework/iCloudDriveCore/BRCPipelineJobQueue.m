@interface BRCPipelineJobQueue
- (BRCPipelineJobQueue)init;
- (void)addJob:(id)a3 withGroupIdentifier:(id)a4;
- (void)dequeueHighestQualityOfServiceJobsWithHandler:(id)a3;
- (void)dumpToContext:(id)a3;
- (void)removeJob:(id)a3 withGroupIdentifier:(id)a4;
@end

@implementation BRCPipelineJobQueue

- (BRCPipelineJobQueue)init
{
  v8.receiver = self;
  v8.super_class = BRCPipelineJobQueue;
  v2 = [(BRCPipelineJobQueue *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    qosToGroupingToJobMapping = v2->_qosToGroupingToJobMapping;
    v2->_qosToGroupingToJobMapping = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
    activeQOSValues = v2->_activeQOSValues;
    v2->_activeQOSValues = v5;
  }

  return v2;
}

- (void)addJob:(id)a3 withGroupIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v8 = [v12 qualityOfService];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v10 = [(NSMutableDictionary *)v7->_qosToGroupingToJobMapping objectForKey:v9];
  if (!v10)
  {
    v10 = objc_opt_new();
    [(NSMutableDictionary *)v7->_qosToGroupingToJobMapping setObject:v10 forKeyedSubscript:v9];
    [(NSMutableIndexSet *)v7->_activeQOSValues addIndex:v8];
  }

  v11 = [v10 objectForKeyedSubscript:v6];
  if (!v11)
  {
    v11 = objc_opt_new();
    [v10 setObject:v11 forKeyedSubscript:v6];
  }

  [v11 addObject:v12];

  objc_sync_exit(v7);
}

- (void)removeJob:(id)a3 withGroupIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v8 = [v12 qualityOfService];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v10 = [(NSMutableDictionary *)v7->_qosToGroupingToJobMapping objectForKey:v9];
  v11 = [v10 objectForKeyedSubscript:v6];
  [v11 removeObject:v12];
  if (![v11 count])
  {
    [v10 setObject:0 forKeyedSubscript:v6];
    if (![v10 count])
    {
      [(NSMutableDictionary *)v7->_qosToGroupingToJobMapping removeObjectForKey:v9];
      [(NSMutableIndexSet *)v7->_activeQOSValues removeIndex:v8];
    }
  }

  objc_sync_exit(v7);
}

- (void)dequeueHighestQualityOfServiceJobsWithHandler:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(NSMutableDictionary *)v5->_qosToGroupingToJobMapping count])
  {
    v18 = [(NSMutableIndexSet *)v5->_activeQOSValues lastIndex];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v7 = [(NSMutableDictionary *)v5->_qosToGroupingToJobMapping objectForKey:v6];
    if (![v7 count])
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(BRCPipelineJobQueue *)v16 dequeueHighestQualityOfServiceJobsWithHandler:v17];
      }
    }

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__14;
    v35 = __Block_byref_object_dispose__14;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__14;
    v29 = __Block_byref_object_dispose__14;
    v30 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __69__BRCPipelineJobQueue_dequeueHighestQualityOfServiceJobsWithHandler___block_invoke;
    v24[3] = &unk_2785020A0;
    v24[4] = &v31;
    v24[5] = &v25;
    [v7 enumerateKeysAndObjectsUsingBlock:v24];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v32[5];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v37 count:16];
    v19 = v7;
    v10 = v6;
    v11 = 0;
    if (v9)
    {
      v12 = *v21;
      while (2)
      {
        v13 = 0;
        v14 = v11 + 1;
        v11 += v9;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v8);
          }

          if ((v4[2](v4, *(*(&v20 + 1) + 8 * v13)) & 1) == 0)
          {
            v11 = v14;
            goto LABEL_13;
          }

          ++v13;
          ++v14;
        }

        while (v9 != v13);
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v37 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    if (v11 == [v32[5] count])
    {
      [v19 setObject:0 forKeyedSubscript:v26[5]];
      if (![v19 count])
      {
        [(NSMutableDictionary *)v5->_qosToGroupingToJobMapping setObject:0 forKeyedSubscript:v10];
        [(NSMutableIndexSet *)v5->_activeQOSValues removeIndex:v18];
      }
    }

    else
    {
      [v32[5] removeObjectsInRange:{0, v11}];
    }

    _Block_object_dispose(&v25, 8);

    _Block_object_dispose(&v31, 8);
  }

  objc_sync_exit(v5);

  v15 = *MEMORY[0x277D85DE8];
}

void __69__BRCPipelineJobQueue_dequeueHighestQualityOfServiceJobsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  *a4 = 1;
}

- (void)dumpToContext:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  activeQOSValues = v5->_activeQOSValues;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__BRCPipelineJobQueue_dumpToContext___block_invoke;
  v8[3] = &unk_2785020F0;
  v7 = v4;
  v9 = v7;
  v10 = v5;
  [(NSMutableIndexSet *)activeQOSValues enumerateIndexesWithOptions:2 usingBlock:v8];

  objc_sync_exit(v5);
}

void __37__BRCPipelineJobQueue_dumpToContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = BRCPrettyPrintEnumWithContext(a2, &brc_qos_entries, 0);
  [v4 writeLineWithFormat:@"%@", v5];

  [*(a1 + 32) pushIndentation];
  v6 = *(*(a1 + 40) + 8);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__BRCPipelineJobQueue_dumpToContext___block_invoke_2;
  v9[3] = &unk_2785020C8;
  v10 = *(a1 + 32);
  [v8 enumerateKeysAndObjectsUsingBlock:v9];
  [*(a1 + 32) popIndentation];
}

void __37__BRCPipelineJobQueue_dumpToContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB68] null];

  if (v7 != v5)
  {
    [*(a1 + 32) writeLineWithFormat:@"%@", v5];
    [*(a1 + 32) pushIndentation];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v12++) dumpToContext:*(a1 + 32)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = [MEMORY[0x277CBEB68] null];

  if (v13 != v5)
  {
    [*(a1 + 32) popIndentation];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)dequeueHighestQualityOfServiceJobsWithHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: groupToJobsMap.count > 0%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end