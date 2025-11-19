@interface PLSmartConnectorAgent
+ (id)entryEventForwardDefinitionEAStatus;
+ (id)entryEventForwardDefinitionStatus;
+ (id)entryEventForwardDefinitions;
+ (void)load;
- (PLSmartConnectorAgent)init;
- (void)externalAccessoryConnected:(id)a3;
- (void)externalAccessoryDisconnected:(id)a3;
- (void)initOperatorDependancies;
- (void)log;
- (void)logEventForwardEAAccessory:(id)a3;
- (void)logEventForwardStatus:(id)a3 withName:(id)a4 withModel:(id)a5 andVersionInfo:(id)a6;
- (void)reArmCallback;
@end

@implementation PLSmartConnectorAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLSmartConnectorAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Status";
  v2 = +[PLSmartConnectorAgent entryEventForwardDefinitionStatus];
  v7[1] = @"EAStatus";
  v8[0] = v2;
  v3 = +[PLSmartConnectorAgent entryEventForwardDefinitionEAStatus];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventForwardDefinitionStatus
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1C3B8;
  v15[1] = MEMORY[0x277CBEC28];
  v14[2] = *MEMORY[0x277D3F558];
  v15[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"ConnectState";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v12[1] = @"AccessoryID";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardDefinitionEAStatus
{
  v17[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v16[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F550];
    v14[0] = *MEMORY[0x277D3F568];
    v14[1] = v2;
    v15[0] = &unk_282C1C3C8;
    v15[1] = MEMORY[0x277CBEC28];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v17[0] = v3;
    v16[1] = *MEMORY[0x277D3F540];
    v12[0] = @"ConnectState";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_BoolFormat];
    v12[1] = @"AccessoryID";
    v13[0] = v5;
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v17[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PLSmartConnectorAgent)init
{
  if ([MEMORY[0x277D3F208] hasCapability:2])
  {
    v15.receiver = self;
    v15.super_class = PLSmartConnectorAgent;
    v3 = [(PLAgent *)&v15 init];
    v4 = v3;
    if (v3)
    {
      [(PLSmartConnectorAgent *)v3 setTimer:0];
      v5 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
      [(PLSmartConnectorAgent *)v4 setPreStatus:v5];

      v6 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
      [(PLSmartConnectorAgent *)v4 setCurStatus:v6];

      v7 = objc_alloc(MEMORY[0x277D3F1C8]);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __29__PLSmartConnectorAgent_init__block_invoke;
      v13[3] = &unk_27825CE10;
      v8 = v4;
      v14 = v8;
      v9 = [v7 initWithOperator:v8 forService:@"AppleOrionManager" withBlock:v13];
      iokitOrion = v8->_iokitOrion;
      v8->_iokitOrion = v9;
    }

    self = v4;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __29__PLSmartConnectorAgent_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) timer];

  if (v4)
  {
    v5 = [*(a1 + 32) timer];
    [v5 invalidate];

    [*(a1 + 32) setTimer:0];
  }

  objc_initWeak(&location, *(a1 + 32));
  v6 = objc_alloc(MEMORY[0x277D3F250]);
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.8];
  v8 = [*(a1 + 32) workQueue];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __29__PLSmartConnectorAgent_init__block_invoke_2;
  v26 = &unk_27825A810;
  objc_copyWeak(&v27, &location);
  v9 = [v6 initWithFireDate:v7 withInterval:0 withTolerance:0 repeats:v8 withUserInfo:&v23 withQueue:0.0 withBlock:0.0];
  v10 = *(a1 + 32);
  v11 = *(v10 + 56);
  *(v10 + 56) = v9;

  [*(*(a1 + 32) + 56) arm];
  v12 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:a2];
  v13 = [v12 objectForKeyedSubscript:@"IOAccessoryDetect"];
  [*(a1 + 32) setCurStatus:v13];

  v14 = [v12 objectForKeyedSubscript:@"IOAccessoryAccessoryName"];
  [*(a1 + 32) setCurName:v14];

  v15 = [v12 objectForKeyedSubscript:@"IOAccessoryAccessoryModelNumber"];
  [*(a1 + 32) setCurModel:v15];

  v16 = [v12 objectForKeyedSubscript:@"IOAccessoryAccessoryVersionInfo"];
  [*(a1 + 32) setCurVersion:v16];

  v17 = PLLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 32) curStatus];
    v19 = [*(a1 + 32) curModel];
    v20 = [*(a1 + 32) curVersion];
    v21 = [*(a1 + 32) curName];
    *buf = 138413058;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    v33 = 2112;
    v34 = v20;
    v35 = 2112;
    v36 = v21;
    _os_log_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEFAULT, "Update from accessory state: %@, model: %@, version: %@, name: %@", buf, 0x2Au);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  v22 = *MEMORY[0x277D85DE8];
}

void __29__PLSmartConnectorAgent_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reArmCallback];
}

- (void)initOperatorDependancies
{
  if ([MEMORY[0x277D3F208] isiPad])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel_externalAccessoryConnected_ name:*MEMORY[0x277CC5E88] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel_externalAccessoryDisconnected_ name:*MEMORY[0x277CC5E90] object:0];
  }
}

- (void)reArmCallback
{
  v6 = [(PLSmartConnectorAgent *)self curStatus];
  v3 = [(PLSmartConnectorAgent *)self curName];
  v4 = [(PLSmartConnectorAgent *)self curModel];
  v5 = [(PLSmartConnectorAgent *)self curVersion];
  [(PLSmartConnectorAgent *)self logEventForwardStatus:v6 withName:v3 withModel:v4 andVersionInfo:v5];
}

- (void)externalAccessoryConnected:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__PLSmartConnectorAgent_externalAccessoryConnected___block_invoke;
  v7[3] = &unk_278259658;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__PLSmartConnectorAgent_externalAccessoryConnected___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) userInfo];
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "[SC]: received connection notification, %@", &v8, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC5E98]];
  [v4 logEventForwardEAAccessory:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)externalAccessoryDisconnected:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PLSmartConnectorAgent_externalAccessoryDisconnected___block_invoke;
  v7[3] = &unk_278259658;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __55__PLSmartConnectorAgent_externalAccessoryDisconnected___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) userInfo];
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEFAULT, "[SC]: received disconnection notification, %@", &v8, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC5E98]];
  [v4 logEventForwardEAAccessory:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)log
{
  v3 = MEMORY[0x277D3F1C8];
  v4 = [(PLSmartConnectorAgent *)self iokitOrion];
  v9 = [v3 snapshotFromIOEntry:{objc_msgSend(v4, "service")}];

  v5 = [v9 objectForKeyedSubscript:@"IOAccessoryDetect"];
  v6 = [v9 objectForKeyedSubscript:@"IOAccessoryAccessoryName"];
  v7 = [v9 objectForKeyedSubscript:@"IOAccessoryAccessoryModelNumber"];
  v8 = [v9 objectForKeyedSubscript:@"IOAccessoryAccessoryVersionInfo"];
  [(PLSmartConnectorAgent *)self logEventForwardStatus:v5 withName:v6 withModel:v7 andVersionInfo:v8];
}

- (void)logEventForwardStatus:(id)a3 withName:(id)a4 withModel:(id)a5 andVersionInfo:(id)a6
{
  v20 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v20)
  {
    v13 = [(PLSmartConnectorAgent *)self preStatus];
    v14 = [v13 isEqualToNumber:v20];

    if ((v14 & 1) == 0)
    {
      if (v10)
      {
        if (v11)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = [(PLSmartConnectorAgent *)self preName];
        if (v11)
        {
LABEL_5:
          if (v12)
          {
            goto LABEL_6;
          }

LABEL_12:
          v12 = [(PLSmartConnectorAgent *)self preVersion];
LABEL_6:
          v15 = [(PLOperator *)PLSmartConnectorAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Status"];
          v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15];
          [v16 setObject:v20 forKeyedSubscript:@"ConnectState"];
          if ([v11 isEqualToString:@"A2261"])
          {
            v17 = 2;
          }

          else if ([v11 isEqualToString:@"A1998"])
          {
            v17 = 3;
          }

          else if ([v11 isEqualToString:@"A2480"])
          {
            v17 = 7;
          }

          else if ([v11 isEqualToString:@"YU0040"])
          {
            v17 = 4;
          }

          else
          {
            if (![v11 isEqualToString:@"YU0043"])
            {
              goto LABEL_24;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v12 bytes] || !objc_msgSend(v12, "length"))
            {
              goto LABEL_24;
            }

            v18 = *[v12 bytes];
            if (v18 == 23)
            {
              v17 = 5;
              goto LABEL_27;
            }

            if (v18 != 25)
            {
LABEL_24:
              if ([v10 isEqualToString:@"Apple iPad Pro Smart Keyboard"])
              {
                v17 = 0;
              }

              else
              {
                v17 = [v10 isEqualToString:@"Magic Keyboard"] ^ 1;
              }

              goto LABEL_27;
            }

            v17 = 6;
          }

LABEL_27:
          v19 = [MEMORY[0x277CCABB0] numberWithShort:v17];
          [v16 setObject:v19 forKeyedSubscript:@"AccessoryID"];

          [(PLOperator *)self logEntry:v16];
          [(PLSmartConnectorAgent *)self setPreStatus:v20];
          [(PLSmartConnectorAgent *)self setPreName:v10];
          [(PLSmartConnectorAgent *)self setPreModel:v11];
          [(PLSmartConnectorAgent *)self setPreVersion:v12];

          goto LABEL_28;
        }
      }

      v11 = [(PLSmartConnectorAgent *)self preModel];
      if (v12)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

LABEL_28:
}

- (void)logEventForwardEAAccessory:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = PLLogCommon();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    LOWORD(v26) = 0;
    v16 = "[SC]: EAAccessory is nil";
    v17 = v15;
    v18 = 2;
LABEL_12:
    _os_log_error_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_ERROR, v16, &v26, v18);
    goto LABEL_20;
  }

  v5 = [v4 modelNumber];
  if (!v5 || (v6 = v5, [v4 firmwareRevision], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v15 = PLLogCommon();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v26 = 138412290;
    v27 = v4;
    v16 = "[SC]: EAAccessory missing info, %@";
    v17 = v15;
    v18 = 12;
    goto LABEL_12;
  }

  v8 = [v4 modelNumber];
  v9 = [v8 isEqualToString:@"Y-U0040"];

  if ((v9 & 1) == 0)
  {
    v19 = [v4 modelNumber];
    v20 = [v19 isEqualToString:@"Y-U0043"];

    if (v20)
    {
      v21 = [v4 firmwareRevision];
      v22 = [v21 hasPrefix:@"23."];

      if (v22)
      {
        v10 = 5;
        goto LABEL_7;
      }

      v23 = [v4 firmwareRevision];
      v24 = [v23 hasPrefix:@"25."];

      if (v24)
      {
        v10 = 6;
        goto LABEL_7;
      }
    }

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEFAULT, "[SC]: Skip matching the accessory", &v26, 2u);
    }

LABEL_20:

    goto LABEL_21;
  }

  v10 = 4;
LABEL_7:
  v11 = [(PLOperator *)PLSmartConnectorAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"EAStatus"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isConnected")}];
  [v12 setObject:v13 forKeyedSubscript:@"ConnectState"];

  v14 = [MEMORY[0x277CCABB0] numberWithShort:v10];
  [v12 setObject:v14 forKeyedSubscript:@"AccessoryID"];

  [(PLOperator *)self logEntry:v12];
LABEL_21:

  v25 = *MEMORY[0x277D85DE8];
}

@end