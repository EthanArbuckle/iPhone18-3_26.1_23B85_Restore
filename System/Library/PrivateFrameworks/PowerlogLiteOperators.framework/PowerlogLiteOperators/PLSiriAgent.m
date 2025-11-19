@interface PLSiriAgent
+ (id)entryEventForwardASREvent;
+ (id)entryEventForwardDefinitionDictationConnection;
+ (id)entryEventForwardDefinitionSiriConfig;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventIntervalSelfTriggerSuppression;
+ (id)entryEventPointDefinitionSiriWakes;
+ (id)entryEventPointDefinitions;
+ (id)entryEventPointSelfTriggerSuppressionDetected;
+ (void)load;
- (PLSiriAgent)init;
- (unint64_t)convertASREvent:(id)a3;
- (unint64_t)convertMode:(id)a3;
- (unint64_t)convertRecognition:(id)a3;
- (unint64_t)convertSiriEvent:(id)a3;
- (void)initOperatorDependancies;
- (void)logEventForwardASREvent:(id)a3;
- (void)logEventForwardDictationConnection:(id)a3;
- (void)logEventForwardSiriConfig:(id)a3;
- (void)logEventIntervalSelfTriggerSuppression:(id)a3;
- (void)logEventPointSelfTriggerSuppressionDetected:(id)a3;
- (void)logEventPointSiriWakes:(id)a3;
@end

@implementation PLSiriAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLSiriAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"SiriWakes";
  v3 = [a1 entryEventPointDefinitionSiriWakes];
  v8[1] = @"SelfTriggerSuppressionDetected";
  v9[0] = v3;
  v4 = [a1 entryEventPointSelfTriggerSuppressionDetected];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventPointDefinitionSiriWakes
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_282C1BDF8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"phID";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v14[0] = v4;
  v13[1] = @"secondPassState";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v14[1] = v6;
  v13[2] = @"secondPassScore";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventPointSelfTriggerSuppressionDetected
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_282C1BDF8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"AudioClientType";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v14[0] = v4;
  v13[1] = @"AudioPlaybackRouteType";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v14[1] = v6;
  v13[2] = @"AudioSourceType";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventForwardDefinitions
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"ASR";
  v3 = [a1 entryEventForwardASREvent];
  v10[0] = v3;
  v9[1] = @"DictationConnection";
  v4 = [a1 entryEventForwardDefinitionDictationConnection];
  v10[1] = v4;
  v9[2] = @"SiriConfig";
  v5 = [a1 entryEventForwardDefinitionSiriConfig];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardASREvent
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_282C1BDF8;
  v19[1] = MEMORY[0x277CBEC38];
  v18[2] = *MEMORY[0x277D3F4F0];
  v19[2] = &unk_282C14088;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"ASREvent";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v17[0] = v4;
  v16[1] = @"ApplicationName";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat_withBundleID];
  v17[1] = v6;
  v16[2] = @"Language";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v17[2] = v8;
  v16[3] = @"ModelVersion";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v17[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionDictationConnection
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_282C1BDF8;
  v23[1] = MEMORY[0x277CBEC38];
  v22[2] = *MEMORY[0x277D3F4F0];
  v23[2] = &unk_282C140A0;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"SiriEvent";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v21[0] = v17;
  v20[1] = @"Mode";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v21[1] = v15;
  v20[2] = @"startReason";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v21[2] = v4;
  v20[3] = @"stopReason";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v21[3] = v6;
  v20[4] = @"appBundleID";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat_withBundleID];
  v21[4] = v8;
  v20[5] = @"Recognition";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v21[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionSiriConfig
{
  v18[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isAppleTV])
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_282C1BDF8;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v3;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"HeySiriEnabled";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_BoolFormat];
    v14[0] = v5;
    v13[1] = @"Language";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_StringFormat];
    v14[1] = v7;
    v13[2] = @"ModelVersion";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_StringFormat];
    v14[2] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v18[1] = v10;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)entryEventIntervalDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"SelfTriggerSuppression";
  v2 = [a1 entryEventIntervalSelfTriggerSuppression];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventIntervalSelfTriggerSuppression
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v21 = *MEMORY[0x277D3F568];
  v22 = &unk_282C1BDF8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"AudioClientType";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v20[0] = v16;
  v19[1] = @"AudioPlaybackRouteType";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v20[1] = v14;
  v19[2] = @"AudioSourceType";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v20[2] = v3;
  v19[3] = @"NumSelfTriggers";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[3] = v5;
  v19[4] = @"DurationSec";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v20[4] = v7;
  v19[5] = @"timestampEnd";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_DateFormat];
  v20[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLSiriAgent)init
{
  v3.receiver = self;
  v3.super_class = PLSiriAgent;
  return [(PLAgent *)&v3 init];
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__PLSiriAgent_initOperatorDependancies__block_invoke;
  v20[3] = &unk_27825A1D8;
  v20[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C17270 withBlock:v20];
  [(PLSiriAgent *)self setAsrEventListener:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __39__PLSiriAgent_initOperatorDependancies__block_invoke_114;
  v19[3] = &unk_27825A1D8;
  v19[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_282C17298 withBlock:v19];
  [(PLSiriAgent *)self setDictationConnectionListener:v6];

  v7 = objc_alloc(MEMORY[0x277D3F270]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__PLSiriAgent_initOperatorDependancies__block_invoke_119;
  v18[3] = &unk_27825A1D8;
  v18[4] = self;
  v8 = [v7 initWithOperator:self withRegistration:&unk_282C172C0 withBlock:v18];
  [(PLSiriAgent *)self setSelfTriggerSuppressionDetectedListener:v8];

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __39__PLSiriAgent_initOperatorDependancies__block_invoke_127;
  v17[3] = &unk_27825A1D8;
  v17[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_282C172E8 withBlock:v17];
  [(PLSiriAgent *)self setSelfTriggerSuppressionProcessingListener:v10];

  v11 = objc_alloc(MEMORY[0x277D3F270]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__PLSiriAgent_initOperatorDependancies__block_invoke_132;
  v16[3] = &unk_27825A1D8;
  v16[4] = self;
  v12 = [v11 initWithOperator:self withRegistration:&unk_282C17310 withBlock:v16];
  [(PLSiriAgent *)self setSiriWakesListener:v12];

  if (([MEMORY[0x277D3F208] isAppleTV] & 1) == 0)
  {
    v13 = objc_alloc(MEMORY[0x277D3F270]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__PLSiriAgent_initOperatorDependancies__block_invoke_137;
    v15[3] = &unk_27825A1D8;
    v15[4] = self;
    v14 = [v13 initWithOperator:self withRegistration:&unk_282C17338 withBlock:v15];
    [(PLSiriAgent *)self setSiriConfigListener:v14];
  }
}

void __39__PLSiriAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ESConnection payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardASREvent:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __39__PLSiriAgent_initOperatorDependancies__block_invoke_114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "DictationConnection payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardDictationConnection:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __39__PLSiriAgent_initOperatorDependancies__block_invoke_119(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SelfTriggerSuppressionDetected payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointSelfTriggerSuppressionDetected:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __39__PLSiriAgent_initOperatorDependancies__block_invoke_127(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SelfTriggerSuppressionEvent payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalSelfTriggerSuppression:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __39__PLSiriAgent_initOperatorDependancies__block_invoke_132(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SiriWakes payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointSiriWakes:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __39__PLSiriAgent_initOperatorDependancies__block_invoke_137(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogSiri();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SiriConfig payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSiriConfig:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointSelfTriggerSuppressionDetected:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v14 = [(PLOperator *)PLSiriAgent entryKeyForType:v4 andName:@"SelfTriggerSuppressionDetected"];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v5 objectForKeyedSubscript:@"DetectedTime"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v14 withDate:v9];
  v11 = [v5 objectForKeyedSubscript:@"PhoneCallConnected"];
  [v10 setObject:v11 forKeyedSubscript:@"AudioClientType"];

  v12 = [v5 objectForKeyedSubscript:@"AudioPlaybackRouteType"];
  [v10 setObject:v12 forKeyedSubscript:@"AudioPlaybackRouteType"];

  v13 = [v5 objectForKeyedSubscript:@"AudioSourceType"];

  [v10 setObject:v13 forKeyedSubscript:@"AudioSourceType"];
  [(PLOperator *)self logEntry:v10];
}

- (void)logEventPointSiriWakes:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v6 = [(PLOperator *)PLSiriAgent entryKeyForType:v4 andName:@"SiriWakes"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:v5];

  v8 = PLLogSiri();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v7 objectForKeyedSubscript:@"secondPassState"];
    v13 = 138412290;
    v14 = v12;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "logEventPointSiriWakes: secondPassState value: %@", &v13, 0xCu);
  }

  v9 = [v7 objectForKeyedSubscript:@"secondPassState"];
  v10 = [v9 intValue];

  if (v10 == 11)
  {
    [v7 setObject:&unk_282C102C0 forKeyedSubscript:@"secondPassState"];
  }

  [(PLOperator *)self logEntry:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)convertASREvent:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"preheatSpeechRecognitionWithAssetConfig"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"startSpeechRecognitionWithParameters"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"createSpeechProfileWithLanguage"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"compileAllAssetsWithCompletion"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"didFinishRecognitionWithError"])
  {
    v4 = 4;
  }

  else
  {
    v5 = PLLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Unknown/Other ASR siriEvent %@", &v8, 0xCu);
    }

    v4 = 5;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)logEventForwardASREvent:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v10 = [(PLOperator *)PLSiriAgent entryKeyForType:v4 andName:@"ASR"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"ASR Event"];

  v8 = [(PLSiriAgent *)self convertASREvent:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"ASREvent"];

  [(PLOperator *)self logEntry:v6];
}

- (unint64_t)convertMode:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"Location"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Person"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Text"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PhonemeTranscription"])
  {
    v4 = 3;
  }

  else
  {
    v5 = PLLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Unknown Dictation mode %@", &v8, 0xCu);
    }

    v4 = 4;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (unint64_t)convertRecognition:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"on-device"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"server"])
  {
    v4 = 1;
  }

  else
  {
    v5 = PLLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Unknown/Other Dictation recognition %@", &v8, 0xCu);
    }

    v4 = 2;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (unint64_t)convertSiriEvent:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"Dictation start"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Dictation stop"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Dictation endSession"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Dictation pause"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Dictation resume"])
  {
    v4 = 3;
  }

  else
  {
    v5 = PLLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Unknown/Other Dictation siriEvent %@", &v8, 0xCu);
    }

    v4 = 5;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)logEventForwardDictationConnection:(id)a3
{
  v15 = a3;
  v4 = [(PLOperator *)PLSiriAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"DictationConnection"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v15];
  v6 = [v15 objectForKeyedSubscript:@"Siri Event"];
  v7 = [(PLSiriAgent *)self convertSiriEvent:v6];

  if (v7 != 5)
  {
    if (v7 == 1)
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [v15 objectForKeyedSubscript:@"mode"];
      v10 = [v8 numberWithUnsignedInteger:{-[PLSiriAgent convertMode:](self, "convertMode:", v9)}];
      [v5 setObject:v10 forKeyedSubscript:@"Mode"];

      v11 = MEMORY[0x277CCABB0];
      v12 = [v15 objectForKeyedSubscript:@"recognition"];
      v13 = [v11 numberWithUnsignedInteger:{-[PLSiriAgent convertRecognition:](self, "convertRecognition:", v12)}];
      [v5 setObject:v13 forKeyedSubscript:@"Recognition"];
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    [v5 setObject:v14 forKeyedSubscript:@"SiriEvent"];

    [(PLOperator *)self logEntry:v5];
  }
}

- (void)logEventForwardSiriConfig:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLSiriAgent entryKeyForType:v4 andName:@"SiriConfig"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventIntervalSelfTriggerSuppression:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v20 = [(PLOperator *)PLSiriAgent entryKeyForType:v4 andName:@"SelfTriggerSuppression"];
  v6 = MEMORY[0x277CBEAA8];
  v7 = [v5 objectForKeyedSubscript:@"StartTime"];
  [v7 doubleValue];
  v8 = [v6 dateWithTimeIntervalSince1970:?];

  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v20 withDate:v9];
  v11 = [v5 objectForKeyedSubscript:@"PhoneCallConnected"];
  [v10 setObject:v11 forKeyedSubscript:@"AudioClientType"];

  v12 = [v5 objectForKeyedSubscript:@"AudioPlaybackRouteType"];
  [v10 setObject:v12 forKeyedSubscript:@"AudioPlaybackRouteType"];

  v13 = [v5 objectForKeyedSubscript:@"AudioSourceType"];
  [v10 setObject:v13 forKeyedSubscript:@"AudioSourceType"];

  v14 = [v5 objectForKeyedSubscript:@"DurationSec"];
  [v10 setObject:v14 forKeyedSubscript:@"DurationSec"];

  v15 = [v5 objectForKeyedSubscript:@"NumSelfTriggersInInterval"];
  [v10 setObject:v15 forKeyedSubscript:@"NumSelfTriggers"];

  v16 = MEMORY[0x277CBEAA8];
  v17 = [v5 objectForKeyedSubscript:@"StopTime"];

  [v17 doubleValue];
  v18 = [v16 dateWithTimeIntervalSince1970:?];

  v19 = [v18 convertFromSystemToMonotonic];

  [v10 setObject:v19 forKeyedSubscript:@"timestampEnd"];
  [(PLOperator *)self logEntry:v10];
}

@end