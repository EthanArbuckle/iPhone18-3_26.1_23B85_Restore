@interface PLNfcAgent
+ (id)entryEventForwardDefinitionCard;
+ (id)entryEventForwardDefinitionField;
+ (id)entryEventForwardDefinitionLPEM;
+ (id)entryEventForwardDefinitionTSMCommunication;
+ (id)entryEventForwardDefinitionTransaction;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionAccessoryPower;
+ (id)entryEventIntervalDefinitionPower;
+ (id)entryEventIntervalDefinitions;
+ (id)parseLPEMFromData:(id)a3;
+ (void)load;
- (PLNfcAgent)init;
- (unsigned)getNFCHarwareState;
- (void)fieldChangedWithEntry:(id)a3;
- (void)initOperatorDependancies;
- (void)initTaskOperatorDependancies;
- (void)logEventForwardLPEM;
- (void)retrieveAndLogNfcAccessoryPowerCountersWithRetry:(BOOL)a3;
- (void)retrieveAndLogNfcPowerCountersWithRetry:(BOOL)a3;
- (void)setUpNfcPowerCounterRetrieval;
- (void)setupLPEMCounter;
- (void)setupNfcAccessoryPowerCounterRetrieval;
@end

@implementation PLNfcAgent

void __38__PLNfcAgent_initOperatorDependancies__block_invoke_172(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogNfc();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLNfcAgent:: Field Notification fired with payload=%@", &v11, 0xCu);
  }

  v8 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Field"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [*(a1 + 32) fieldChangedWithEntry:v9];
  [*(a1 + 32) logEntry:v9];

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLNfcAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"Card";
  v3 = [a1 entryEventForwardDefinitionCard];
  v12[0] = v3;
  v11[1] = @"Field";
  v4 = [a1 entryEventForwardDefinitionField];
  v12[1] = v4;
  v11[2] = @"Transaction";
  v5 = [a1 entryEventForwardDefinitionTransaction];
  v12[2] = v5;
  v11[3] = @"TSMCommunication";
  v6 = [a1 entryEventForwardDefinitionTSMCommunication];
  v12[3] = v6;
  v11[4] = @"LPEM";
  v7 = [a1 entryEventForwardDefinitionLPEM];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitionCard
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1C878;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"AuthorizedStatus";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionField
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1C878;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"State";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitionTransaction
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1C878;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Status";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionTSMCommunication
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1C878;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Status";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionLPEM
{
  v33[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasLPEM])
  {
    v32[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F580];
    v30[0] = *MEMORY[0x277D3F568];
    v30[1] = v2;
    v31[0] = &unk_282C1C878;
    v31[1] = MEMORY[0x277CBEC38];
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v33[0] = v27;
    v32[1] = *MEMORY[0x277D3F540];
    v28[0] = @"BTCC";
    v26 = [MEMORY[0x277D3F198] sharedInstance];
    v25 = [v26 commonTypeDict_IntegerFormat];
    v29[0] = v25;
    v28[1] = @"BTCT";
    v24 = [MEMORY[0x277D3F198] sharedInstance];
    v23 = [v24 commonTypeDict_IntegerFormat];
    v29[1] = v23;
    v28[2] = @"SRSC";
    v22 = [MEMORY[0x277D3F198] sharedInstance];
    v21 = [v22 commonTypeDict_IntegerFormat];
    v29[2] = v21;
    v28[3] = @"SRST";
    v20 = [MEMORY[0x277D3F198] sharedInstance];
    v19 = [v20 commonTypeDict_IntegerFormat];
    v29[3] = v19;
    v28[4] = @"SRUC";
    v18 = [MEMORY[0x277D3F198] sharedInstance];
    v17 = [v18 commonTypeDict_IntegerFormat];
    v29[4] = v17;
    v28[5] = @"SRLC";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_IntegerFormat];
    v29[5] = v15;
    v28[6] = @"SERESET";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_IntegerFormat];
    v29[6] = v4;
    v28[7] = @"ROLL";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_IntegerFormat];
    v29[7] = v6;
    v28[8] = @"BTENTRY";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_IntegerFormat];
    v29[8] = v8;
    v28[9] = @"BTEXIT";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v29[9] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
    v33[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Power";
  v2 = +[PLNfcAgent entryEventIntervalDefinitionPower];
  v7[1] = @"AccessoryPower";
  v8[0] = v2;
  v3 = +[PLNfcAgent entryEventIntervalDefinitionAccessoryPower];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventIntervalDefinitionPower
{
  v37[2] = *MEMORY[0x277D85DE8];
  v36[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v34[0] = *MEMORY[0x277D3F568];
  v34[1] = v2;
  v35[0] = &unk_282C1C888;
  v35[1] = MEMORY[0x277CBEC38];
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v37[0] = v31;
  v36[1] = *MEMORY[0x277D3F540];
  v32[0] = @"idleTime";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v33[0] = v29;
  v32[1] = @"rfTime";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v33[1] = v27;
  v32[2] = @"sleepTime";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v33[2] = v25;
  v32[3] = @"SEUptime";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v33[3] = v23;
  v32[4] = @"lpcdFalseDetectCount";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v33[4] = v21;
  v32[5] = @"falseDetect";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v33[5] = v19;
  v32[6] = @"timestampEnd";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_DateFormat];
  v33[6] = v17;
  v32[7] = @"expressUpTime";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v33[7] = v15;
  v32[8] = @"fieldDetectUpTime";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v33[8] = v4;
  v32[9] = @"uiccUpCounter";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v33[9] = v6;
  v32[10] = @"jcopUpCounter";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v33[10] = v8;
  v32[11] = @"mboxStatus";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v33[11] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:12];
  v37[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitionAccessoryPower
{
  v30[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasCapability:7])
  {
    v29[0] = *MEMORY[0x277D3F4E8];
    v27 = *MEMORY[0x277D3F568];
    v28 = &unk_282C1C878;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v30[0] = v24;
    v29[1] = *MEMORY[0x277D3F540];
    v25[0] = @"idleTime";
    v23 = [MEMORY[0x277D3F198] sharedInstance];
    v22 = [v23 commonTypeDict_IntegerFormat];
    v26[0] = v22;
    v25[1] = @"rfTime";
    v21 = [MEMORY[0x277D3F198] sharedInstance];
    v20 = [v21 commonTypeDict_IntegerFormat];
    v26[1] = v20;
    v25[2] = @"sleepTime";
    v19 = [MEMORY[0x277D3F198] sharedInstance];
    v18 = [v19 commonTypeDict_IntegerFormat];
    v26[2] = v18;
    v25[3] = @"SEUptime";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v26[3] = v16;
    v25[4] = @"lpcdFalseDetectCount";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v14 = [v15 commonTypeDict_IntegerFormat];
    v26[4] = v14;
    v25[5] = @"falseDetect";
    v2 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v2 commonTypeDict_IntegerFormat];
    v26[5] = v3;
    v25[6] = @"vGpioFalseDetectCount";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v26[6] = v5;
    v25[7] = @"vGpioFalseDetectCountWithTags";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v26[7] = v7;
    v25[8] = @"timestampEnd";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_DateFormat];
    v26[8] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:9];
    v30[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLNfcAgent)init
{
  if ([MEMORY[0x277D3F208] hasNFC])
  {
    v5.receiver = self;
    v5.super_class = PLNfcAgent;
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
  if ([(PLOperator *)self isDebugEnabled])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, logFieldChangedNotificationReceived, @"com.apple.powerlogd.PLNfcAgent.logFieldChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v4 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"nfc"];
  v5 = [v4 objectForKeyedSubscript:@"field"];
  [v5 doubleValue];
  [(PLNfcAgent *)self setOnPower:?];

  v6 = objc_alloc(MEMORY[0x277D3F270]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__PLNfcAgent_initOperatorDependancies__block_invoke;
  v17[3] = &unk_27825A1D8;
  v17[4] = self;
  v7 = [v6 initWithOperator:self withRegistration:&unk_282C18FA8 withBlock:v17];
  [(PLNfcAgent *)self setCardNotification:v7];

  v8 = objc_alloc(MEMORY[0x277D3F270]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__PLNfcAgent_initOperatorDependancies__block_invoke_172;
  v16[3] = &unk_27825A1D8;
  v16[4] = self;
  v9 = [v8 initWithOperator:self withRegistration:&unk_282C18FD0 withBlock:v16];
  [(PLNfcAgent *)self setFieldNotification:v9];

  v10 = objc_alloc(MEMORY[0x277D3F270]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__PLNfcAgent_initOperatorDependancies__block_invoke_177;
  v15[3] = &unk_27825A1D8;
  v15[4] = self;
  v11 = [v10 initWithOperator:self withRegistration:&unk_282C18FF8 withBlock:v15];
  [(PLNfcAgent *)self setTransactionNotification:v11];

  v12 = objc_alloc(MEMORY[0x277D3F270]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__PLNfcAgent_initOperatorDependancies__block_invoke_182;
  v14[3] = &unk_27825A1D8;
  v14[4] = self;
  v13 = [v12 initWithOperator:self withRegistration:&unk_282C19020 withBlock:v14];
  [(PLNfcAgent *)self setTsmCommunicationNotification:v13];

  [(PLNfcAgent *)self setupNfcAccessoryPowerCounterRetrieval];
}

void __38__PLNfcAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogNfc();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLNfcAgent:: Card notification with payload=%@", &v12, 0xCu);
  }

  v8 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Card"];
  v9 = *(a1 + 32);
  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [v9 logEntry:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __38__PLNfcAgent_initOperatorDependancies__block_invoke_177(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogNfc();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLNfcAgent:: Transaction otification fired with payload=%@", &v12, 0xCu);
  }

  v8 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Transaction"];
  v9 = *(a1 + 32);
  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [v9 logEntry:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __38__PLNfcAgent_initOperatorDependancies__block_invoke_182(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogNfc();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLNfcAgent:: TSMCommunication Notification fired with payload=%@", &v12, 0xCu);
  }

  v8 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"TSMCommunication"];
  v9 = *(a1 + 32);
  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [v9 logEntry:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setupLPEMCounter
{
  if ([MEMORY[0x277D3F208] hasLPEM])
  {
    self->_nfcConnectionRetryCount = 0;
    v3 = objc_alloc(MEMORY[0x277D3F250]);
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
    v5 = [(PLOperator *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__PLNfcAgent_setupLPEMCounter__block_invoke;
    v8[3] = &unk_278259C40;
    v8[4] = self;
    v6 = [v3 initWithFireDate:v4 withInterval:1 withTolerance:0 repeats:v5 withUserInfo:v8 withQueue:300.0 withBlock:0.0];
    nfcConnectionRetryTimer = self->_nfcConnectionRetryTimer;
    self->_nfcConnectionRetryTimer = v6;
  }
}

uint64_t __30__PLNfcAgent_setupLPEMCounter__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getNFCHarwareState];
  result = *(a1 + 32);
  if (v2 != 4)
  {
    if (v2 == 2)
    {
      [result logEventForwardLPEM];
      result = *(a1 + 32);
    }

    else
    {
      ++*(result + 48);
      result = *(a1 + 32);
      if (*(result + 48) < 5)
      {
        return result;
      }
    }
  }

  v4 = *(result + 128);

  return [v4 invalidate];
}

- (void)initTaskOperatorDependancies
{
  [(PLNfcAgent *)self setupLPEMCounter];

  [(PLNfcAgent *)self setUpNfcPowerCounterRetrieval];
}

- (void)setUpNfcPowerCounterRetrieval
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D2C840] sharedHardwareManager];
  v17 = 0;
  v4 = [v3 queryHardwareSupport:&v17];
  v5 = v17;

  if (v4 == 4)
  {
    v6 = PLLogNfc();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Initial check: NF hardware not supported, error message: %@", buf, 0xCu);
    }

    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x277D2C840] sharedHardwareManager];
    v16 = v5;
    v6 = [v8 getPowerCounters:&v16];
    v7 = v16;

    v9 = PLLogNfc();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Initial NFC power counters: %@, error: %@", buf, 0x16u);
    }

    v10 = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLNfcAgent *)self setLastPowerCountersLogTime:v10];

    v11 = PLLogNfc();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = [(PLNfcAgent *)self lastPowerCountersLogTime];
      *buf = 138412290;
      v19 = v14;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "NFC power logging start time: %@", buf, 0xCu);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__PLNfcAgent_setUpNfcPowerCounterRetrieval__block_invoke;
    v15[3] = &unk_2782597E8;
    v15[4] = self;
    v12 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v15];
    [(PLNfcAgent *)self setNfcPowerCountersNotification:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setupNfcAccessoryPowerCounterRetrieval
{
  v18 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] hasCapability:7])
  {
    v3 = [MEMORY[0x277D2C8B0] sharedHardwareManager];
    v13 = 0;
    v4 = [v3 getPowerCounters:&v13];
    v5 = v13;

    v6 = PLLogNfc();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Initial NFC accessory power counters: %@, error: %@", buf, 0x16u);
    }

    if (!v5)
    {
      v7 = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLNfcAgent *)self setLastAccessoryPowerCountersLogTime:v7];

      v8 = PLLogNfc();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v11 = [(PLNfcAgent *)self lastAccessoryPowerCountersLogTime];
        *buf = 138412290;
        v15 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "NFC accessory power logging start time: %@", buf, 0xCu);
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __52__PLNfcAgent_setupNfcAccessoryPowerCounterRetrieval__block_invoke;
      v12[3] = &unk_2782597E8;
      v12[4] = self;
      v9 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v12];
      [(PLNfcAgent *)self setNfcAccessoryPowerCounterNotification:v9];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)retrieveAndLogNfcPowerCountersWithRetry:(BOOL)a3
{
  v3 = a3;
  v32 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D2C840] sharedHardwareManager];
  v27 = 0;
  v6 = [v5 getPowerCounters:&v27];
  v7 = v27;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = v7;
    v10 = PLLogNfc();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v29 = v6;
      v30 = 2112;
      v31 = v9;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Power counters not valid: %@, error: %@", buf, 0x16u);
    }

    v26 = 0;
    v11 = [v5 queryHardwareSupport:&v26];
    v12 = v26;
    if (v11 == 4)
    {
      v13 = PLLogNfc();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "NF hardware state is not supported, error message: %@", buf, 0xCu);
      }
    }

    else if (v3)
    {
      v22 = PLLogNfc();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v29) = v11;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "Retry NF power counters query once with current HW state: %d", buf, 8u);
      }

      v23 = dispatch_time(0, 30000000000);
      v24 = [(PLOperator *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__PLNfcAgent_retrieveAndLogNfcPowerCountersWithRetry___block_invoke;
      block[3] = &unk_2782591D0;
      block[4] = self;
      dispatch_after(v23, v24, block);
    }
  }

  else
  {
    v14 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"Power"];
    v15 = PLLogNfc();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Received valid NFC power counters: %@", buf, 0xCu);
    }

    v17 = [MEMORY[0x277CBEAA8] monotonicDate];
    v18 = PLLogNfc();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = v17;
      _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "NFC power logging end time: %@", buf, 0xCu);
    }

    v19 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14 withRawData:v6];
    v20 = [(PLNfcAgent *)self lastPowerCountersLogTime];
    [v19 setEntryDate:v20];

    [v19 setObject:v17 forKeyedSubscript:@"timestampEnd"];
    [(PLOperator *)self logEntry:v19];
    [(PLNfcAgent *)self setLastPowerCountersLogTime:v17];

    v12 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)retrieveAndLogNfcAccessoryPowerCountersWithRetry:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D2C8B0] sharedHardwareManager];
  v22 = 0;
  v6 = [v5 getPowerCounters:&v22];
  v7 = v22;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = PLLogNfc();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Accessory power counters not valid: %@, error: %@", buf, 0x16u);
    }

    if (v3)
    {
      v10 = PLLogNfc();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "Retry NF power counters query once", buf, 2u);
      }

      v11 = dispatch_time(0, 30000000000);
      v12 = [(PLOperator *)self workQueue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __63__PLNfcAgent_retrieveAndLogNfcAccessoryPowerCountersWithRetry___block_invoke;
      v21[3] = &unk_2782591D0;
      v21[4] = self;
      dispatch_after(v11, v12, v21);
    }
  }

  else
  {
    v13 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"AccessoryPower"];
    v14 = PLLogNfc();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Received valid NFC accessory power counters: %@", buf, 0xCu);
    }

    v16 = [MEMORY[0x277CBEAA8] monotonicDate];
    v17 = PLLogNfc();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v24 = v16;
      _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "NFC accessory power logging end time: %@", buf, 0xCu);
    }

    v18 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:v6];
    v19 = [(PLNfcAgent *)self lastAccessoryPowerCountersLogTime];
    [v18 setEntryDate:v19];

    [v18 setObject:v16 forKeyedSubscript:@"timestampEnd"];
    [(PLOperator *)self logEntry:v18];
    [(PLNfcAgent *)self setLastAccessoryPowerCountersLogTime:v16];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unsigned)getNFCHarwareState
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D2C840] sharedHardwareManager];
  v8 = 0;
  v3 = [v2 queryHardwareSupport:&v8];
  v4 = v8;

  if (v4)
  {
    v5 = PLLogNfc();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "failed to get the hardware state: %@", buf, 0xCu);
    }

    v3 = 1;
LABEL_9:

    goto LABEL_10;
  }

  if (v3 == 4)
  {
    v5 = PLLogNfc();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v10 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "The hardware is not supported: %@", buf, 0xCu);
    }

    v3 = 4;
    goto LABEL_9;
  }

LABEL_10:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)logEventForwardLPEM
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__14;
  v9[4] = __Block_byref_object_dispose__14;
  v10 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__14;
  v7[4] = __Block_byref_object_dispose__14;
  v8 = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy__14;
  v5[4] = __Block_byref_object_dispose__14;
  v6 = 0;
  v3 = dispatch_get_global_queue(2, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__PLNfcAgent_logEventForwardLPEM__block_invoke;
  v4[3] = &unk_278261378;
  v4[6] = v7;
  v4[7] = v5;
  v4[4] = self;
  v4[5] = v9;
  dispatch_async(v3, v4);

  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(v9, 8);
}

void __33__PLNfcAgent_logEventForwardLPEM__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D2C840] sharedHardwareManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__PLNfcAgent_logEventForwardLPEM__block_invoke_2;
  v5[3] = &unk_278261350;
  v3 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = [v2 startSecureElementLoggingSession:v5];
}

void __33__PLNfcAgent_logEventForwardLPEM__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = PLLogNfc();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v48 = v8;
      v9 = "failed to start  logEventForwardLPEM%@";
LABEL_10:
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
    }
  }

  else
  {
    v10 = [MEMORY[0x277D2C868] embeddedSecureElement];
    v11 = [v10 serialNumber];
    v12 = *(*(a1 + 40) + 8);
    obj = *(v12 + 40);
    v13 = [v5 getLogs:4 forSEID:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v7 = PLLogNfc();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v16 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v48 = v16;
        v9 = "failed to get logs%@";
        goto LABEL_10;
      }
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277CBEA90]);
      v18 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"A000000704E000010002"];
      v19 = [v18 objectForKeyedSubscript:@"FixedBuffer"];
      v20 = [v17 initWithData:v19];
      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = [MEMORY[0x277D2C868] embeddedSecureElement];
      v24 = [v23 serialNumber];
      v25 = [v5 clearLogs:4 forSEID:v24];
      v26 = *(*(a1 + 40) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        goto LABEL_12;
      }

      v7 = PLLogNfc();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v28 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v48 = v28;
        v9 = "failed to clear the log: %@";
        goto LABEL_10;
      }
    }
  }

LABEL_12:
  [v5 endSession];
  v29 = [PLNfcAgent parseLPEMFromData:*(*(*(a1 + 56) + 8) + 40)];
  v30 = *(*(a1 + 48) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v29;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v32 = [(PLOperator *)PLNfcAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LPEM"];
    v33 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v32 withRawData:*(*(*(a1 + 48) + 8) + 40)];
    [*(a1 + 32) logEntry:v33];
    v34 = [v33 objectForKeyedSubscript:@"BTCC"];
    [v34 intValue];
    ADClientSetValueForScalarKey();

    v35 = [v33 objectForKeyedSubscript:@"BTCT"];
    [v35 intValue];
    ADClientSetValueForScalarKey();

    v36 = [v33 objectForKeyedSubscript:@"SRSC"];
    [v36 intValue];
    ADClientSetValueForScalarKey();

    v37 = [v33 objectForKeyedSubscript:@"SRST"];
    [v37 intValue];
    ADClientSetValueForScalarKey();

    v38 = [v33 objectForKeyedSubscript:@"SRUC"];
    [v38 intValue];
    ADClientSetValueForScalarKey();

    v39 = [v33 objectForKeyedSubscript:@"SRLC"];
    [v39 intValue];
    ADClientSetValueForScalarKey();

    v40 = [v33 objectForKeyedSubscript:@"SERESET"];
    [v40 intValue];
    ADClientSetValueForScalarKey();

    v41 = [v33 objectForKeyedSubscript:@"ROLL"];
    [v41 intValue];
    ADClientSetValueForScalarKey();

    v42 = [v33 objectForKeyedSubscript:@"BTENTRY"];
    [v42 intValue];
    ADClientSetValueForScalarKey();

    v43 = [v33 objectForKeyedSubscript:@"BTEXIT"];
    [v43 intValue];
    ADClientSetValueForScalarKey();

    v44 = v33;
    AnalyticsSendEventLazy();
  }

  v45 = *MEMORY[0x277D85DE8];
}

id __33__PLNfcAgent_logEventForwardLPEM__block_invoke_225(uint64_t a1)
{
  v36[10] = *MEMORY[0x277D85DE8];
  v35[0] = @"BTCC";
  v2 = MEMORY[0x277CCABB0];
  v34 = [*(a1 + 32) objectForKeyedSubscript:?];
  v33 = [v2 numberWithInt:{objc_msgSend(v34, "intValue")}];
  v36[0] = v33;
  v35[1] = @"BTCT";
  v3 = MEMORY[0x277CCABB0];
  v32 = [*(a1 + 32) objectForKeyedSubscript:?];
  v31 = [v3 numberWithInt:{objc_msgSend(v32, "intValue")}];
  v36[1] = v31;
  v35[2] = @"SRSC";
  v4 = MEMORY[0x277CCABB0];
  v30 = [*(a1 + 32) objectForKeyedSubscript:?];
  v29 = [v4 numberWithInt:{objc_msgSend(v30, "intValue")}];
  v36[2] = v29;
  v35[3] = @"SRST";
  v5 = MEMORY[0x277CCABB0];
  v28 = [*(a1 + 32) objectForKeyedSubscript:?];
  v27 = [v5 numberWithInt:{objc_msgSend(v28, "intValue")}];
  v36[3] = v27;
  v35[4] = @"SRUC";
  v6 = MEMORY[0x277CCABB0];
  v26 = [*(a1 + 32) objectForKeyedSubscript:?];
  v25 = [v6 numberWithInt:{objc_msgSend(v26, "intValue")}];
  v36[4] = v25;
  v35[5] = @"SRLC";
  v7 = MEMORY[0x277CCABB0];
  v24 = [*(a1 + 32) objectForKeyedSubscript:?];
  v8 = [v7 numberWithInt:{objc_msgSend(v24, "intValue")}];
  v36[5] = v8;
  v35[6] = @"SERESET";
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) objectForKeyedSubscript:?];
  v11 = [v9 numberWithInt:{objc_msgSend(v10, "intValue")}];
  v36[6] = v11;
  v35[7] = @"ROLL";
  v12 = MEMORY[0x277CCABB0];
  v13 = [*(a1 + 32) objectForKeyedSubscript:?];
  v14 = [v12 numberWithInt:{objc_msgSend(v13, "intValue")}];
  v36[7] = v14;
  v35[8] = @"BTENTRY";
  v15 = MEMORY[0x277CCABB0];
  v16 = [*(a1 + 32) objectForKeyedSubscript:?];
  v17 = [v15 numberWithInt:{objc_msgSend(v16, "intValue")}];
  v36[8] = v17;
  v35[9] = @"BTEXIT";
  v18 = MEMORY[0x277CCABB0];
  v19 = [*(a1 + 32) objectForKeyedSubscript:?];
  v20 = [v18 numberWithInt:{objc_msgSend(v19, "intValue")}];
  v36[9] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:10];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)fieldChangedWithEntry:(id)a3
{
  v10 = a3;
  v4 = [v10 objectForKeyedSubscript:@"State"];
  v5 = [v4 BOOLValue];

  v6 = [MEMORY[0x277D3F0C0] sharedInstance];
  v7 = 0.0;
  if (v5)
  {
    [(PLNfcAgent *)self onPower];
    v7 = v8;
  }

  v9 = [v10 entryDate];
  [v6 createPowerEventForwardWithRootNodeID:16 withPower:v9 withStartDate:v7];

  [(PLOperator *)self logEntry:v10];
}

+ (id)parseLPEMFromData:(id)a3
{
  v20[10] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length] < 0x10)
  {
    v5 = PLLogNfc();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Not able to parse the LPEM, mismatch of length", buf, 2u);
    }

    v13 = 0;
  }

  else
  {
    v4 = [v3 bytes];
    v19[0] = @"BTCC";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*v4];
    v20[0] = v5;
    v19[1] = @"BTCT";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v4 + 1)];
    v20[1] = v17;
    v19[2] = @"SRSC";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4[5]];
    v20[2] = v16;
    v19[3] = @"SRST";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v4 + 6)];
    v20[3] = v6;
    v19[4] = @"SRUC";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4[10]];
    v20[4] = v7;
    v19[5] = @"SRLC";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4[11]];
    v20[5] = v8;
    v19[6] = @"SERESET";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4[12]];
    v20[6] = v9;
    v19[7] = @"ROLL";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4[13]];
    v20[7] = v10;
    v19[8] = @"BTENTRY";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4[14]];
    v20[8] = v11;
    v19[9] = @"BTEXIT";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v4[15]];
    v20[9] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end