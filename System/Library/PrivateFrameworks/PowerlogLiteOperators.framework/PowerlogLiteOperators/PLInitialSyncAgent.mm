@interface PLInitialSyncAgent
+ (id)entryEventIntervalDefinitions;
+ (void)load;
- (void)initOperatorDependancies;
- (void)logInitialSyncActivityFromEvent:(id)a3;
- (void)logInitialSyncFromEvent:(id)a3;
@end

@implementation PLInitialSyncAgent

+ (void)load
{
  v2 = MEMORY[0x277D3F170];
  v3 = objc_opt_class();

  [v2 registerOperator:v3];
}

+ (id)entryEventIntervalDefinitions
{
  v40[2] = *MEMORY[0x277D85DE8];
  v39[0] = @"InitialSync";
  v36 = *MEMORY[0x277D3F4E8];
  v2 = v36;
  v34 = *MEMORY[0x277D3F568];
  v3 = v34;
  v35 = &unk_282C1C498;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v38[0] = v25;
  v37 = *MEMORY[0x277D3F540];
  v4 = v37;
  v32[0] = @"count";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v33[0] = v23;
  v32[1] = @"timestampEnd";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_DateFormat];
  v33[1] = v21;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v38[1] = v20;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v36 count:2];
  v39[1] = @"InitialSyncActivity";
  v40[0] = v19;
  v29 = &unk_282C1C498;
  v30[0] = v2;
  v28 = v3;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v30[1] = v4;
  v31[0] = v18;
  v26[0] = @"activityID";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v17 commonTypeDict_StringFormat];
  v27[0] = v5;
  v26[1] = @"errorDescription";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v27[1] = v7;
  v26[2] = @"success";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v27[2] = v9;
  v26[3] = @"timestampEnd";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_DateFormat];
  v27[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v31[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v40[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v3 = objc_alloc(MEMORY[0x277D3F270]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__PLInitialSyncAgent_initOperatorDependancies__block_invoke;
    v6[3] = &unk_27825A1D8;
    v6[4] = self;
    v4 = [v3 initWithOperator:self withRegistration:&unk_282C18468 withBlock:v6];
    xpcHandler = self->_xpcHandler;
    self->_xpcHandler = v4;
  }
}

void __46__PLInitialSyncAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v7 = a5;
  if ([v8 isEqualToString:@"InitialSyncActivity"])
  {
    [*(a1 + 32) logInitialSyncActivityFromEvent:v7];
  }

  else if ([v8 isEqualToString:@"InitialSync"])
  {
    [*(a1 + 32) logInitialSyncFromEvent:v7];
  }
}

- (void)logInitialSyncActivityFromEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"state"];
  v6 = [(PLOperator *)PLInitialSyncAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"InitialSyncActivity"];
  if ([v5 isEqualToString:@"start"])
  {
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
    v8 = [v4 objectForKeyedSubscript:@"activity"];
    [v7 setObject:v8 forKeyedSubscript:@"activityID"];

    [(PLOperator *)self logEntry:v7];
LABEL_10:

    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"end"])
  {
    v9 = [(PLOperator *)self storage];
    v7 = [v9 lastEntryForKey:v6];

    if (v7 && ([v7 objectForKeyedSubscript:@"timestampEnd"], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __54__PLInitialSyncAgent_logInitialSyncActivityFromEvent___block_invoke;
      v17[3] = &unk_278259658;
      v18 = v7;
      v19 = v4;
      [(PLOperator *)self updateEntry:v18 withBlock:v17];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withDate:0];
      v12 = [MEMORY[0x277CBEAA8] monotonicDate];
      [v11 setObject:v12 forKeyedSubscript:@"timestampEnd"];

      v13 = [v4 objectForKeyedSubscript:@"activity"];
      [v11 setObject:v13 forKeyedSubscript:@"activityID"];

      v14 = [v4 objectForKeyedSubscript:@"success"];
      [v11 setObject:v14 forKeyedSubscript:@"success"];

      v15 = [v4 objectForKeyedSubscript:@"success"];
      LOBYTE(v14) = [v15 BOOLValue];

      if ((v14 & 1) == 0)
      {
        v16 = [v4 objectForKeyedSubscript:@"error"];
        [v11 setObject:v16 forKeyedSubscript:@"errorDescription"];
      }

      [(PLOperator *)self logEntry:v11];
    }

    goto LABEL_10;
  }

LABEL_11:
}

void __54__PLInitialSyncAgent_logInitialSyncActivityFromEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"timestampEnd"];

  v3 = [*(a1 + 40) objectForKeyedSubscript:@"success"];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"success"];

  v4 = [*(a1 + 40) objectForKeyedSubscript:@"success"];
  LOBYTE(v3) = [v4 BOOLValue];

  if ((v3 & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"error"];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"errorDescription"];
  }
}

- (void)logInitialSyncFromEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"state"];
  v6 = [(PLOperator *)PLInitialSyncAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"InitialSync"];
  if ([v5 isEqualToString:@"start"])
  {
    v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
    v8 = [v4 objectForKeyedSubscript:@"activityCount"];
    [v7 setObject:v8 forKeyedSubscript:@"count"];

    [(PLOperator *)self logEntry:v7];
LABEL_8:

    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"end"])
  {
    v9 = [(PLOperator *)self storage];
    v7 = [v9 lastEntryForKey:v6];

    if (v7 && ([v7 objectForKeyedSubscript:@"timestampEnd"], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __46__PLInitialSyncAgent_logInitialSyncFromEvent___block_invoke;
      v14[3] = &unk_2782591D0;
      v15 = v7;
      [(PLOperator *)self updateEntry:v15 withBlock:v14];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withDate:0];
      v12 = [MEMORY[0x277CBEAA8] monotonicDate];
      [v11 setObject:v12 forKeyedSubscript:@"timestampEnd"];

      v13 = [v4 objectForKeyedSubscript:@"activityCount"];
      [v11 setObject:v13 forKeyedSubscript:@"count"];

      [(PLOperator *)self logEntry:v11];
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __46__PLInitialSyncAgent_logInitialSyncFromEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"timestampEnd"];
}

@end