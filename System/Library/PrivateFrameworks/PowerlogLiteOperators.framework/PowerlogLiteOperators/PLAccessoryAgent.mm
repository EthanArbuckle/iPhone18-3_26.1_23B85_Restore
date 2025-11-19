@interface PLAccessoryAgent
+ (id)entryEventPointDefinitions;
+ (id)entryEventPointDefinitionsReceivedPush;
+ (void)load;
- (PLAccessoryAgent)init;
- (void)accessoryConnectionAttached:(id)a3 type:(int)a4;
- (void)accessoryConnectionDetached:(id)a3;
- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4;
- (void)initOperatorDependancies;
@end

@implementation PLAccessoryAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAccessoryAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"Accessory";
  v2 = [a1 entryEventPointDefinitionsReceivedPush];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventPointDefinitionsReceivedPush
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C178;
  v17[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"Connected";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v15[0] = v5;
  v14[1] = @"EndpointType";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"AccessoryType";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLAccessoryAgent)init
{
  if ([MEMORY[0x277D3F208] hasCapability:7])
  {
    v5.receiver = self;
    v5.super_class = PLAccessoryAgent;
    self = [(PLAgent *)&v5 init];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(PLAccessoryAgent *)self setConnectedEndpoints:v3];

  v4 = [MEMORY[0x277CFD210] sharedInstance];
  [(PLAccessoryAgent *)self setAccConnectionInfo:v4];

  v5 = [(PLAccessoryAgent *)self accConnectionInfo];
  [v5 registerDelegate:self];
}

- (void)accessoryConnectionAttached:(id)a3 type:(int)a4
{
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Accessory connected", v5, 2u);
  }

  [MEMORY[0x277D3F258] postNotificationName:@"PLCAAccessoryAttachedNotification" object:0 userInfo:0];
}

- (void)accessoryConnectionDetached:(id)a3
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEFAULT, "Accessory disconnected", v4, 2u);
  }

  [MEMORY[0x277D3F258] postNotificationName:@"PLCAAccessoryDetachedNotification" object:0 userInfo:0];
}

- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEFAULT, "Accessory detached: %@, %@", &v17, 0x16u);
  }

  v9 = [(PLAccessoryAgent *)self connectedEndpoints];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = [(PLOperator *)PLAccessoryAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Accessory"];
    v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
    [v12 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"Connected"];
    v13 = [v10 objectForKeyedSubscript:@"EndpointType"];
    [v12 setObject:v13 forKeyedSubscript:@"EndpointType"];

    v14 = [v10 objectForKeyedSubscript:@"AccessoryType"];
    [v12 setObject:v14 forKeyedSubscript:@"AccessoryType"];

    [(PLOperator *)self logEntry:v12];
    v15 = [(PLAccessoryAgent *)self connectedEndpoints];
    [v15 setObject:0 forKeyedSubscript:v6];
  }

  else
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v6;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "Accessory property does not exist: %@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end