@interface PLEduAgent
+ (id)entryEventPointDefinitionMode;
+ (id)entryEventPointDefinitionSyncBubble;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLEduAgent)init;
- (void)initOperatorDependancies;
- (void)logEventPointMode;
@end

@implementation PLEduAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLEduAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Mode";
  v2 = +[PLEduAgent entryEventPointDefinitionMode];
  v7[1] = @"SyncBubble";
  v8[0] = v2;
  v3 = +[PLEduAgent entryEventPointDefinitionSyncBubble];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventPointDefinitionMode
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C108;
  v13[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"EduMode";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventPointDefinitionSyncBubble
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1C118;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"status";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (PLEduAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLEduAgent;
    self = [(PLAgent *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__PLEduAgent_initOperatorDependancies__block_invoke;
  v6[3] = &unk_27825A1D8;
  v6[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C179F0 withBlock:v6];
  syncBubbleStatusNotification = self->_syncBubbleStatusNotification;
  self->_syncBubbleStatusNotification = v4;
}

void __38__PLEduAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogEdu();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SYNCBUBBLE STATUS payload=%@", &v11, 0xCu);
  }

  v8 = [(PLOperator *)PLEduAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SyncBubble"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [*(a1 + 32) logEntry:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointMode
{
  v5 = [(PLOperator *)PLEduAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Mode"];
  v3 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F258], "isEduMode")}];
  [v3 setObject:v4 forKeyedSubscript:@"EduMode"];

  [(PLOperator *)self logEntry:v3];
}

@end