@interface PLAccountingQualificationEventEntry
+ (void)load;
- (BOOL)isEmptyEvent;
- (BOOL)isEqualContentsWithEvent:(id)a3;
- (NSSet)childNodeIDs;
- (NSSet)childNodeNames;
- (PLAccountingQualificationEventEntry)initWithQualificationID:(id)a3 withChildNodeIDs:(id)a4 withRange:(id)a5;
- (PLAccountingQualificationEventEntry)initWithQualificationID:(id)a3 withChildNodeNames:(id)a4 withRange:(id)a5;
- (int)instanceDirectionality;
@end

@implementation PLAccountingQualificationEventEntry

- (NSSet)childNodeIDs
{
  v28 = *MEMORY[0x277D85DE8];
  if (!self->_childNodeIDs && [(PLEntry *)self existsInDB])
  {
    [(PLEntry *)self loadDynamicKeys];
    v3 = [MEMORY[0x277CBEB58] set];
    v4 = MEMORY[0x277CBEB98];
    v5 = MEMORY[0x277D3F198];
    v6 = [(PLEntry *)self entryKey];
    v7 = [v5 keyConfigsForEntryKey:v6];
    v8 = [v7 allKeys];
    v9 = [v4 setWithArray:v8];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(PLEntry *)self keys];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      v14 = *MEMORY[0x277D3F448];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          if (([v9 containsObject:v16] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v16 objectForKeyedSubscript:v14];
            }

            else
            {
              v17 = v16;
            }

            v18 = v17;
            if (v17)
            {
              [(NSSet *)v3 addObject:v17];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    childNodeIDs = self->_childNodeIDs;
    self->_childNodeIDs = v3;
  }

  v20 = self->_childNodeIDs;
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (int)instanceDirectionality
{
  v2 = [(PLAccountingQualificationEventEntry *)self qualificationID];
  v3 = [&unk_2870F8780 objectAtIndexedSubscript:{objc_msgSend(v2, "intValue")}];
  v4 = [v3 intValue];

  return v4;
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccountingQualificationEventEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLAccountingQualificationEventEntry)initWithQualificationID:(id)a3 withChildNodeNames:(id)a4 withRange:(id)a5
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = +[PLAccountingNodeManager sharedInstance];
  v13 = [v10 allObjects];

  v14 = [v12 childNodeIDsFromChildNodeNames:v13];
  v15 = [v8 setWithArray:v14];

  v16 = [(PLAccountingQualificationEventEntry *)self initWithQualificationID:v11 withChildNodeIDs:v15 withRange:v9];
  return v16;
}

- (PLAccountingQualificationEventEntry)initWithQualificationID:(id)a3 withChildNodeIDs:(id)a4 withRange:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 intValue] < 1)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_20;
  }

  v11 = +[PLAccountingEngine allQualificationIDs];
  v12 = [v11 containsObject:v8];

  v13 = 0;
  if (v9 && v12)
  {
    v38.receiver = self;
    v38.super_class = PLAccountingQualificationEventEntry;
    v14 = [(PLAccountingEventEntry *)&v38 initWithRange:v10];
    self = v14;
    if (v14)
    {
      [(PLEntry *)v14 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3F458]];
      v15 = [(PLAccountingQualificationEventEntry *)self instanceDirectionality];
      v16 = [objc_opt_class() classDirectionality];
      if (v15 != v16 && v16 != 3)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Directionality mismatch for qualificationID=%@", v8];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/Qualification/PLAccountingQualificationEventEntry.m"];
        v20 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationEventEntry initWithQualificationID:withChildNodeIDs:withRange:]"];
        [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:45];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDistributionEventEntry initWithDistributionID:v17 withChildNodeIDToWeight:v22 withRange:?];
        }

        goto LABEL_10;
      }

      v33 = v9;
      objc_storeStrong(&self->_childNodeIDs, a4);
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v23 = self->_childNodeIDs;
      v24 = [(NSSet *)v23 countByEnumeratingWithState:&v34 objects:v41 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v35;
        v27 = *MEMORY[0x277D3F448];
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v34 + 1) + 8 * i);
            v39 = v27;
            v40 = v29;
            v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            [(PLEntry *)self setObject:&unk_2870F80C0 forKeyedSubscript:v30];
          }

          v25 = [(NSSet *)v23 countByEnumeratingWithState:&v34 objects:v41 count:16];
        }

        while (v25);
      }

      v9 = v33;
    }

    self = self;
    v13 = self;
  }

LABEL_20:

  v31 = *MEMORY[0x277D85DE8];
  return v13;
}

- (NSSet)childNodeNames
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(PLAccountingQualificationEventEntry *)self childNodeIDs];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = +[PLAccountingNodeManager sharedInstance];
        v11 = [v10 nodeNameForNodeID:v9];

        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isEqualContentsWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingQualificationEventEntry *)self childNodeIDs];
  v6 = [v4 childNodeIDs];

  LOBYTE(v4) = [v5 isEqualToSet:v6];
  return v4;
}

- (BOOL)isEmptyEvent
{
  v2 = [(PLAccountingQualificationEventEntry *)self childNodeIDs];
  v3 = [v2 count] == 0;

  return v3;
}

@end