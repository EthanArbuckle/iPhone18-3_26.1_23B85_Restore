@interface PLAccountingDistributionEventEntry
+ (id)mergingDenyList;
+ (void)load;
- (BOOL)canMergeWithEvent:(id)a3;
- (BOOL)distributeRangeWeightedTotal;
- (BOOL)isEmptyEvent;
- (BOOL)isEqualContentsWithEvent:(id)a3;
- (NSDictionary)childNodeIDToWeight;
- (NSDictionary)childNodeNameToWeight;
- (PLAccountingDistributionEventEntry)initWithDistributionID:(id)a3 withChildNodeIDToWeight:(id)a4 withRange:(id)a5;
- (PLAccountingDistributionEventEntry)initWithDistributionID:(id)a3 withChildNodeNameToWeight:(id)a4 withRange:(id)a5;
- (int)instanceDirectionality;
@end

@implementation PLAccountingDistributionEventEntry

- (int)instanceDirectionality
{
  v2 = [(PLAccountingDistributionEventEntry *)self distributionID];
  v3 = [&unk_2870F8738 objectAtIndexedSubscript:{objc_msgSend(v2, "intValue")}];
  v4 = [v3 intValue];

  return v4;
}

+ (id)mergingDenyList
{
  if (mergingDenyList_onceToken != -1)
  {
    +[PLAccountingDistributionEventEntry mergingDenyList];
  }

  v3 = mergingDenyList__mergingDenyList;

  return v3;
}

- (NSDictionary)childNodeIDToWeight
{
  v33 = *MEMORY[0x277D85DE8];
  if (!self->_childNodeIDToWeight && [(PLEntry *)self existsInDB])
  {
    [(PLEntry *)self loadDynamicKeys];
    v27 = [MEMORY[0x277CBEB38] dictionary];
    v3 = MEMORY[0x277CBEB98];
    v4 = MEMORY[0x277D3F198];
    v5 = [(PLEntry *)self entryKey];
    v6 = [v4 keyConfigsForEntryKey:v5];
    v7 = [v6 allKeys];
    v8 = [v3 setWithArray:v7];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [(PLEntry *)self keys];
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      v26 = *MEMORY[0x277D3F408];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          if (([v8 containsObject:v14] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 objectForKeyedSubscript:v26];
            }

            else
            {
              v15 = v14;
            }

            v16 = v15;
            v17 = [(PLEntry *)self objectForKeyedSubscript:v14];

            if (v17)
            {
              v18 = MEMORY[0x277CCABB0];
              v19 = [(PLEntry *)self objectForKeyedSubscript:v14];
              [v19 doubleValue];
              v21 = [v18 numberWithDouble:v20 / 100.0];
              [(NSDictionary *)v27 setObject:v21 forKeyedSubscript:v16];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    childNodeIDToWeight = self->_childNodeIDToWeight;
    self->_childNodeIDToWeight = v27;
  }

  v23 = self->_childNodeIDToWeight;
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)distributeRangeWeightedTotal
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->__distributeRangeWeightedTotal)
  {
    distributeRangeWeightedTotal = 1;
  }

  else
  {
    self->__distributeRangeWeightedTotal = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [&unk_2870F8750 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(&unk_2870F8750);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          v9 = [(PLAccountingDistributionEventEntry *)self distributionID];
          LODWORD(v8) = [v9 isEqualToNumber:v8];

          if (v8)
          {
            self->__distributeRangeWeightedTotal = 1;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [&unk_2870F8750 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    distributeRangeWeightedTotal = self->__distributeRangeWeightedTotal;
  }

  v10 = *MEMORY[0x277D85DE8];
  return distributeRangeWeightedTotal;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingDistributionEventEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLAccountingDistributionEventEntry)initWithDistributionID:(id)a3 withChildNodeNameToWeight:(id)a4 withRange:(id)a5
{
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v10 allValues];
  v13 = +[PLAccountingNodeManager sharedInstance];
  v14 = [v10 allKeys];

  v15 = [v13 childNodeIDsFromChildNodeNames:v14];
  v16 = [v8 dictionaryWithObjects:v12 forKeys:v15];

  v17 = [(PLAccountingDistributionEventEntry *)self initWithDistributionID:v11 withChildNodeIDToWeight:v16 withRange:v9];
  return v17;
}

- (PLAccountingDistributionEventEntry)initWithDistributionID:(id)a3 withChildNodeIDToWeight:(id)a4 withRange:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 intValue] < 1)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v11 = +[PLAccountingEngine allDistributionIDs];
  v12 = [v11 containsObject:v8];

  v13 = 0;
  if (v9 && v12)
  {
    v47.receiver = self;
    v47.super_class = PLAccountingDistributionEventEntry;
    v14 = [(PLAccountingEventEntry *)&v47 initWithRange:v10];
    self = v14;
    if (v14)
    {
      [(PLEntry *)v14 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3F410]];
      v15 = [(PLAccountingDistributionEventEntry *)self instanceDirectionality];
      v42 = self;
      v16 = [objc_opt_class() classDirectionality];
      if (v15 != v16 && v16 != 3)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Directionality mismatch for distributionID=%@", v8];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/Distribution/PLAccountingDistributionEventEntry.m"];
        v20 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionEventEntry initWithDistributionID:withChildNodeIDToWeight:withRange:]"];
        [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:54];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDistributionEventEntry initWithDistributionID:v17 withChildNodeIDToWeight:v22 withRange:?];
        }

        v13 = 0;
        goto LABEL_23;
      }

      v40 = v10;
      v23 = [v9 mutableCopy];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v41 = v9;
      v24 = v9;
      v25 = [v24 countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v44;
        v28 = *MEMORY[0x277D3F408];
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v44 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v43 + 1) + 8 * i);
            v31 = [v24 objectForKeyedSubscript:v30];
            [v31 doubleValue];
            if (v32 >= 0.005)
            {
              v33 = MEMORY[0x277CCABB0];
              [v31 doubleValue];
              v35 = [v33 numberWithLong:llround(v34 * 100.0)];
              v48 = v28;
              v49 = v30;
              v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
              [(PLEntry *)v42 setObject:v35 forKeyedSubscript:v36];
            }

            else
            {
              [(NSDictionary *)v23 removeObjectForKey:v30];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v43 objects:v50 count:16];
        }

        while (v26);
      }

      self = v42;
      childNodeIDToWeight = v42->_childNodeIDToWeight;
      v42->_childNodeIDToWeight = v23;

      v9 = v41;
      v10 = v40;
    }

    self = self;
    v13 = self;
  }

LABEL_23:

  v38 = *MEMORY[0x277D85DE8];
  return v13;
}

- (NSDictionary)childNodeNameToWeight
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(PLAccountingDistributionEventEntry *)self childNodeIDToWeight];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = +[PLAccountingNodeManager sharedInstance];
        v11 = [v10 nodeNameForNodeID:v9];

        if (v11)
        {
          v12 = [(PLAccountingDistributionEventEntry *)self childNodeIDToWeight];
          v13 = [v12 objectForKeyedSubscript:v9];
          [v3 setObject:v13 forKeyedSubscript:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

void __53__PLAccountingDistributionEventEntry_mergingDenyList__block_invoke()
{
  v0 = mergingDenyList__mergingDenyList;
  mergingDenyList__mergingDenyList = &unk_2870F8768;
}

- (BOOL)isEqualContentsWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingDistributionEventEntry *)self childNodeIDToWeight];
  v6 = [v4 childNodeIDToWeight];

  LOBYTE(v4) = [v5 isEqualToDictionary:v6];
  return v4;
}

- (BOOL)canMergeWithEvent:(id)a3
{
  v3 = a3;
  v4 = +[PLAccountingDistributionEventEntry mergingDenyList];
  v5 = [v3 distributionID];

  LOBYTE(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

- (BOOL)isEmptyEvent
{
  v2 = [(PLAccountingDistributionEventEntry *)self childNodeIDToWeight];
  v3 = [v2 count] == 0;

  return v3;
}

- (void)initWithDistributionID:(uint64_t)a1 withChildNodeIDToWeight:(NSObject *)a2 withRange:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25EDCD000, a2, OS_LOG_TYPE_DEBUG, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end