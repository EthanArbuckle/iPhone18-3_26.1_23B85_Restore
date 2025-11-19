@interface PLSoCAgent
+ (id)entryEventPointDefinitionLifetimeServoStats;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLSoCAgent)init;
- (id)requestLTSStats;
- (void)log;
- (void)logEventPointLifetimeServoStats:(id)a3;
- (void)registerForTaskingEndNotification;
- (void)registerForTaskingStartNotification;
- (void)taskingEndNotificationReceived:(id)a3;
- (void)taskingStartNotificationReceived:(id)a3;
- (void)triggerLTSStats;
@end

@implementation PLSoCAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLSoCAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"LifetimeServoStats";
  v2 = [a1 entryEventPointDefinitionLifetimeServoStats];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventPointDefinitionLifetimeServoStats
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_28714B988;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"VTBucket";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v11[1] = @"VTCount";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (PLSoCAgent)init
{
  v5.receiver = self;
  v5.super_class = PLSoCAgent;
  v2 = [(PLAgent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLSoCAgent *)v2 registerForTaskingStartNotification];
  }

  return v3;
}

- (void)registerForTaskingStartNotification
{
  if ([MEMORY[0x277D3F180] taskMode])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel_taskingStartNotificationReceived_ name:*MEMORY[0x277D3F648] object:0];
  }
}

- (void)registerForTaskingEndNotification
{
  if ([MEMORY[0x277D3F180] taskMode])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel_taskingEndNotificationReceived_ name:*MEMORY[0x277D3F638] object:0];
  }
}

- (void)taskingStartNotificationReceived:(id)a3
{
  v4 = PLLogSoC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_DEFAULT, "Received tasking start notification", v5, 2u);
  }

  [(PLSoCAgent *)self triggerLTSStats];
}

- (void)taskingEndNotificationReceived:(id)a3
{
  v4 = PLLogSoC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_DEFAULT, "Received tasking end notification", v5, 2u);
  }

  [(PLSoCAgent *)self triggerLTSStats];
}

- (void)triggerLTSStats
{
  v3 = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__PLSoCAgent_triggerLTSStats__block_invoke;
  block[3] = &unk_279A5BDC0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __29__PLSoCAgent_triggerLTSStats__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestLTSStats];
  v3 = PLLogSoC();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __29__PLSoCAgent_triggerLTSStats__block_invoke_cold_1(v2, v4);
    }

    [*(a1 + 32) logEventPointLifetimeServoStats:v2];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __29__PLSoCAgent_triggerLTSStats__block_invoke_cold_2();
    }
  }
}

- (id)requestLTSStats
{
  mach_service = xpc_connection_create_mach_service("com.apple.powerdatad", MEMORY[0x277D85CD0], 0);
  v3 = mach_service;
  if (!mach_service)
  {
    v6 = PLLogSoC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PLSoCAgent requestLTSStats];
    }

    goto LABEL_12;
  }

  v4 = MEMORY[0x277D85CD0];
  xpc_connection_set_target_queue(mach_service, MEMORY[0x277D85CD0]);

  xpc_connection_set_event_handler(v3, &__block_literal_global_32);
  xpc_connection_resume(v3);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    v6 = PLLogSoC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PLSoCAgent requestLTSStats];
    }

LABEL_12:
    v10 = 0;
    goto LABEL_19;
  }

  v6 = v5;
  xpc_dictionary_set_BOOL(v5, "LTSStats", 1);
  v7 = xpc_connection_send_message_with_reply_sync(v3, v6);
  v8 = v7;
  if (v7)
  {
    if (MEMORY[0x25F8D2C50](v7) == MEMORY[0x277D86468])
    {
      v10 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v9 = PLLogSoC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PLSoCAgent requestLTSStats];
      }

      v10 = 0;
    }

    xpc_connection_cancel(v3);
  }

  else
  {
    v11 = PLLogSoC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PLSoCAgent requestLTSStats];
    }

    v10 = 0;
  }

LABEL_19:

  return v10;
}

- (void)log
{
  if (os_variant_is_darwinos())
  {

    [(PLSoCAgent *)self triggerLTSStats];
  }
}

- (void)logEventPointLifetimeServoStats:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 now];
  v7 = [v6 convertFromSystemToMonotonic];

  v8 = [v5 objectForKeyedSubscript:@"LTSStats"];

  v9 = [(PLOperator *)PLSoCAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"LifetimeServoStats"];
  v10 = [MEMORY[0x277CBEB18] array];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __46__PLSoCAgent_logEventPointLifetimeServoStats___block_invoke;
  v19 = &unk_279A5D1C8;
  v11 = v9;
  v20 = v11;
  v12 = v7;
  v21 = v12;
  v13 = v10;
  v22 = v13;
  [v8 enumerateKeysAndObjectsUsingBlock:&v16];
  if ([v13 count])
  {
    v23 = v11;
    v24[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [(PLOperator *)self logEntries:v14 withGroupID:v11];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __46__PLSoCAgent_logEventPointLifetimeServoStats___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PLSoCAgent_logEventPointLifetimeServoStats___block_invoke_2;
  v7[3] = &unk_279A5EB20;
  v8 = a1[4];
  v9 = a1[5];
  v10 = v5;
  v11 = a1[6];
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __46__PLSoCAgent_logEventPointLifetimeServoStats___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D3F190];
  v6 = a3;
  v7 = a2;
  v12 = [[v5 alloc] initWithEntryKey:*(a1 + 32) withDate:*(a1 + 40)];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", *(a1 + 48), v7];

  [v12 setObject:v8 forKeyedSubscript:@"VTBucket"];
  v9 = MEMORY[0x277CCABB0];
  v10 = [v6 unsignedLongLongValue];

  v11 = [v9 numberWithUnsignedLongLong:v10];
  [v12 setObject:v11 forKeyedSubscript:@"VTCount"];

  [*(a1 + 56) addObject:v12];
}

void __29__PLSoCAgent_triggerLTSStats__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25EE51000, a2, OS_LOG_TYPE_DEBUG, "Received callback from PowerDataD: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end