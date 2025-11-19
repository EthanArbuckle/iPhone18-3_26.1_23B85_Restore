@interface PLPersistentConnectionAgent
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLPersistentConnectionAgent)init;
- (void)log;
- (void)logEventForwardConfig;
- (void)logEventPointCache;
@end

@implementation PLPersistentConnectionAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLPersistentConnectionAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20 = @"Cache";
  v18[0] = *MEMORY[0x277D3F4E8];
  v16 = *MEMORY[0x277D3F568];
  v17 = &unk_2870FEF10;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[0] = v2;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"CacheId";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v15[0] = v4;
  v14[1] = @"CacheInterval";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v15[1] = v6;
  v14[2] = @"CacheAge";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v15[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitions
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18 = @"Config";
  v16[0] = *MEMORY[0x277D3F4E8];
  v14 = *MEMORY[0x277D3F568];
  v15 = &unk_2870FEF10;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v2;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"Enabled";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v12[1] = @"PollingInterval";
  v13[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v13[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PLPersistentConnectionAgent)init
{
  v18.receiver = self;
  v18.super_class = PLPersistentConnectionAgent;
  v2 = [(PLAgent *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D3F160]);
    v4 = *MEMORY[0x277D3A198];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __35__PLPersistentConnectionAgent_init__block_invoke;
    v16[3] = &unk_279A58F10;
    v5 = v2;
    v17 = v5;
    v6 = [v3 initWithOperator:v5 forNotification:v4 requireState:0 withBlock:v16];
    intervalChangedNotification = v5->_intervalChangedNotification;
    v5->_intervalChangedNotification = v6;

    v8 = objc_alloc(MEMORY[0x277D3F160]);
    v9 = *MEMORY[0x277D3A1B0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __35__PLPersistentConnectionAgent_init__block_invoke_37;
    v14[3] = &unk_279A58F10;
    v10 = v5;
    v15 = v10;
    v11 = [v8 initWithOperator:v10 forNotification:v9 requireState:0 withBlock:v14];
    preferencesChangedNotification = v10->_preferencesChangedNotification;
    v10->_preferencesChangedNotification = v11;
  }

  return v2;
}

uint64_t __35__PLPersistentConnectionAgent_init__block_invoke(uint64_t a1)
{
  v2 = PLLogPersistentConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __35__PLPersistentConnectionAgent_init__block_invoke_cold_1(v2);
  }

  return [*(a1 + 32) log];
}

uint64_t __35__PLPersistentConnectionAgent_init__block_invoke_37(uint64_t a1)
{
  v2 = PLLogPersistentConnection();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __35__PLPersistentConnectionAgent_init__block_invoke_37_cold_1(v2);
  }

  return [*(a1 + 32) log];
}

- (void)log
{
  [(PLPersistentConnectionAgent *)self logEventForwardConfig];

  [(PLPersistentConnectionAgent *)self logEventPointCache];
}

- (void)logEventPointCache
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25EE16000, a2, OS_LOG_TYPE_DEBUG, "Cache = %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardConfig
{
  v6 = [(PLOperator *)PLPersistentConnectionAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Config"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLPersistentConnectionAgent pushEnabled](self, "pushEnabled")}];
  [v3 setObject:v4 forKeyedSubscript:@"Enabled"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PLPersistentConnectionAgent pollingInterval](self, "pollingInterval")}];
  [v3 setObject:v5 forKeyedSubscript:@"PollingInterval"];

  [(PLOperator *)self logEntry:v3];
}

@end