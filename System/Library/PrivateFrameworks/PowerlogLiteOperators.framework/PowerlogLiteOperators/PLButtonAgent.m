@interface PLButtonAgent
+ (id)entryEventBackwardDefinitionTrackpadPowerState;
+ (id)entryEventForwardDefinitionActionButtonInteraction;
+ (id)entryEventForwardDefinitionActionButtonSelection;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLButtonAgent)init;
- (int64_t)interactionTypeStringToEnum:(id)a3;
- (void)initOperatorDependancies;
- (void)logEventBackwardCaptureButtonAction:(id)a3;
- (void)logEventForwardActionButtonInteraction:(id)a3;
- (void)logEventForwardActionButtonSelection:(id)a3;
- (void)logEventForwardSmartCover:(__IOHIDEvent *)a3;
- (void)logEventPointButton:(__IOHIDEvent *)a3;
@end

@implementation PLButtonAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLButtonAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = @"Button";
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_282C1C608;
  v16[1] = MEMORY[0x277CBEC28];
  v15[2] = *MEMORY[0x277D3F550];
  v16[2] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"ButtonType";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v13[1] = @"EventType";
  v14[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v18[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventForwardDefinitionActionButtonInteraction
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1C618;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"type";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionActionButtonSelection
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1C628;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"action";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v11[1] = @"sub-action";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitions
{
  v23[3] = *MEMORY[0x277D85DE8];
  v22[0] = @"CoverState";
  v20[0] = *MEMORY[0x277D3F4E8];
  v3 = *MEMORY[0x277D3F4F8];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v3;
  v19[0] = &unk_282C1C618;
  v19[1] = MEMORY[0x277CBEC28];
  v18[2] = *MEMORY[0x277D3F550];
  v19[2] = MEMORY[0x277CBEC28];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"Side";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v16[1] = @"State";
  v17[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v17[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v21[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v9;
  v22[1] = @"ActionButtonSelection";
  v10 = [a1 entryEventForwardDefinitionActionButtonSelection];
  v23[1] = v10;
  v22[2] = @"ActionButtonInteraction";
  v11 = [a1 entryEventForwardDefinitionActionButtonInteraction];
  v23[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionTrackpadPowerState
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1C618;
  v15[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"ActiveDurationMs";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"ReadyDurationMs";
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

- (PLButtonAgent)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLButtonAgent;
    self = [(PLAgent *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __41__PLButtonAgent_initOperatorDependancies__block_invoke;
  v20[3] = &unk_27825A1D8;
  v20[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C189B8 withBlock:v20];
  [(PLButtonAgent *)self setCaptureButtonActionListener:v4];

  v5 = objc_alloc(MEMORY[0x277D3F270]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __41__PLButtonAgent_initOperatorDependancies__block_invoke_101;
  v19[3] = &unk_27825A1D8;
  v19[4] = self;
  v6 = [v5 initWithOperator:self withRegistration:&unk_282C189E0 withBlock:v19];
  [(PLButtonAgent *)self setButtonSelectionChangedListener:v6];

  v7 = objc_alloc(MEMORY[0x277D3F270]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__PLButtonAgent_initOperatorDependancies__block_invoke_106;
  v18[3] = &unk_27825A1D8;
  v18[4] = self;
  v8 = [v7 initWithOperator:self withRegistration:&unk_282C18A08 withBlock:v18];
  [(PLButtonAgent *)self setButtonSelectionListener:v8];

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__PLButtonAgent_initOperatorDependancies__block_invoke_111;
  v17[3] = &unk_27825A1D8;
  v17[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_282C18A30 withBlock:v17];
  [(PLButtonAgent *)self setButtonInteractionListener:v10];

  v11 = objc_alloc(MEMORY[0x277D3F1C0]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__PLButtonAgent_initOperatorDependancies__block_invoke_113;
  v16[3] = &unk_27825EEB8;
  v16[4] = self;
  v12 = [v11 initWithOperator:self forUsagePage:11 andUsage:1 withBlock:v16];
  [(PLButtonAgent *)self setButtonEvent:v12];

  if ([MEMORY[0x277D3F208] isiPhone])
  {
    v13 = objc_alloc(MEMORY[0x277D3F1C0]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__PLButtonAgent_initOperatorDependancies__block_invoke_2;
    v15[3] = &unk_27825EEB8;
    v15[4] = self;
    v14 = [v13 initWithOperator:self forUsagePage:65280 andUsage:41 withBlock:v15];
    [(PLButtonAgent *)self setSmartCoverEvent:v14];
  }
}

void __41__PLButtonAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Button action payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardCaptureButtonAction:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __41__PLButtonAgent_initOperatorDependancies__block_invoke_101(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogButton();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ActionButtonSelectionChanged payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardActionButtonSelection:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __41__PLButtonAgent_initOperatorDependancies__block_invoke_106(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogButton();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ActionButtonSelection Daily payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardActionButtonSelection:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __41__PLButtonAgent_initOperatorDependancies__block_invoke_111(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogButton();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ActionButtonInteraction payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardActionButtonInteraction:v6];
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLButtonAgent_initOperatorDependancies__block_invoke_113(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) logEventPointButton:a2];
  v4 = *(a1 + 32);

  return [v4 logEventForwardSmartCover:a2];
}

- (void)logEventPointButton:(__IOHIDEvent *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (IOHIDEventGetType() == 3 && IOHIDEventGetIntegerValue() == 12)
  {
    v4 = [(PLOperator *)PLButtonAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Button"];
    IntegerValue = IOHIDEventGetIntegerValue();
    v6 = IOHIDEventGetIntegerValue();
    TimeStamp = IOHIDEventGetTimeStamp();
    v8 = mach_absolute_time();
    v9 = [MEMORY[0x277CBEAA8] monotonicDate];
    [MEMORY[0x277D3F258] secondsFromMachTime:v8];
    v11 = v10;
    [MEMORY[0x277D3F258] secondsFromMachTime:TimeStamp];
    v13 = [v9 dateByAddingTimeInterval:-(v11 - v12)];
    v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withDate:v13];
    v15 = PLLogButton();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = 134217984;
      v20 = IntegerValue;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Button event: State %llu", &v19, 0xCu);
    }

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IntegerValue];
    [v14 setObject:v16 forKeyedSubscript:@"ButtonType"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
    [v14 setObject:v17 forKeyedSubscript:@"EventType"];

    [(PLOperator *)self logEntry:v14];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardActionButtonInteraction:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v10 = [(PLOperator *)PLButtonAgent entryKeyForType:v4 andName:@"ActionButtonInteraction"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v7 = [v5 objectForKeyedSubscript:@"type"];

  v8 = [(PLButtonAgent *)self interactionTypeStringToEnum:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"type"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardActionButtonSelection:(id)a3
{
  v11 = a3;
  v4 = [(PLOperator *)PLButtonAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ActionButtonSelection"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v11];
  v6 = [v11 objectForKeyedSubscript:@"action"];
  if ([v6 containsString:@"Camera"])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v11 objectForKeyedSubscript:@"action"];
    v7 = [v8 containsString:@"Focus"];
  }

  v9 = [v11 objectForKeyedSubscript:@"param_value"];

  if (v9 && v7)
  {
    v10 = [v11 objectForKeyedSubscript:@"param_value"];
    [v5 setObject:v10 forKeyedSubscript:@"sub-action"];
  }

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardSmartCover:(__IOHIDEvent *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (IOHIDEventGetType() == 3 && IOHIDEventGetIntegerValue() == 65289)
  {
    v4 = [(PLOperator *)PLButtonAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"CoverState"];
    IntegerValue = IOHIDEventGetIntegerValue();
    v6 = PLLogButton();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v19 = 134217984;
      v20 = IntegerValue;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "SmartCover event: State %llu", &v19, 0xCu);
    }

    TimeStamp = IOHIDEventGetTimeStamp();
    v8 = mach_absolute_time();
    v9 = [MEMORY[0x277CBEAA8] monotonicDate];
    [MEMORY[0x277D3F258] secondsFromMachTime:v8];
    v11 = v10;
    [MEMORY[0x277D3F258] secondsFromMachTime:TimeStamp];
    v13 = [v9 dateByAddingTimeInterval:-(v11 - v12)];
    v14 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withDate:v13];
    v15 = IOHIDEventGetIntegerValue();
    if (v15 == 1)
    {
      v16 = &unk_282C11BE0;
    }

    else
    {
      if (v15 != 16)
      {
LABEL_10:

        goto LABEL_11;
      }

      v16 = &unk_282C11BF8;
    }

    [v14 setObject:v16 forKeyedSubscript:@"Side"];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:IntegerValue];
    [v14 setObject:v17 forKeyedSubscript:@"State"];

    [(PLOperator *)self logEntry:v14];
    goto LABEL_10;
  }

LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardCaptureButtonAction:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 objectForKeyedSubscript:&unk_282C11BE0];
  [v5 setObject:v6 forKeyedSubscript:@"FullPress"];

  v7 = [v4 objectForKeyedSubscript:&unk_282C11C10];
  [v5 setObject:v7 forKeyedSubscript:@"HalfPress"];

  v8 = [v4 objectForKeyedSubscript:&unk_282C11C28];
  [v5 setObject:v8 forKeyedSubscript:@"Touch"];

  v9 = [v4 objectForKeyedSubscript:@"TouchTimeInterval"];

  [v9 doubleValue];
  v11 = v10;

  LODWORD(v12) = llround(v11);
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  [v5 setObject:v13 forKeyedSubscript:@"TouchTimeInterval"];

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Button action updated payload: %@", &v16, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"Button" category:@"CaptureButtonAction" data:v5];
  v15 = *MEMORY[0x277D85DE8];
}

- (int64_t)interactionTypeStringToEnum:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Pressed"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LongPressed"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Suppressed"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end