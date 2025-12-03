@interface SmartPLMemoryTracking
+ (id)defaults;
- (PLSmartPLService)operator;
- (void)handleMemoryTracking:(id)tracking;
- (void)startWithOperator:(id)operator;
@end

@implementation SmartPLMemoryTracking

+ (id)defaults
{
  v2 = [&unk_2870FF308 mutableCopy];
  if (([MEMORY[0x277D3F258] isFullModeDaemon] & 1) == 0)
  {
    if ([MEMORY[0x277D3F208] is64Bit])
    {
      v3 = &unk_2870FF268;
    }

    else
    {
      v3 = &unk_2870FF280;
    }

    [v2 setObject:v3 forKeyedSubscript:@"MemoryTrackingTriggerThreshold"];
  }

  return v2;
}

- (void)startWithOperator:(id)operator
{
  [(SmartPLMemoryTracking *)self setOperator:operator];
  v4 = [MEMORY[0x277D3F6B8] entryKeyForType:*MEMORY[0x277D3F5E8] andName:*MEMORY[0x277D3F7D8]];
  v5 = objc_alloc(MEMORY[0x277D3F1A8]);
  operator = [(SmartPLMemoryTracking *)self operator];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__SmartPLMemoryTracking_startWithOperator___block_invoke;
  v8[3] = &unk_279A58F10;
  v8[4] = self;
  v7 = [v5 initWithOperator:operator forEntryKey:v4 withBlock:v8];

  [(SmartPLMemoryTracking *)self setMemoryTrackingNotification:v7];
}

void __43__SmartPLMemoryTracking_startWithOperator___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:@"entry"];
  [v2 handleMemoryTracking:v3];
}

- (void)handleMemoryTracking:(id)tracking
{
  trackingCopy = tracking;
  v5 = +[SmartPLMemoryTracking defaults];
  v6 = [v5 objectForKeyedSubscript:@"MemoryTrackingDirtyPercent"];
  [v6 floatValue];
  v8 = v7;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SmartPLMemoryTracking_handleMemoryTracking___block_invoke;
  block[3] = &unk_279A593E0;
  v34 = @"MemoryTrackingDirtyPercent";
  v35 = v8;
  if (handleMemoryTracking__defaultOnce != -1)
  {
    dispatch_once(&handleMemoryTracking__defaultOnce, block);
  }

  v9 = *&handleMemoryTracking__objectForKey;

  v10 = [v5 objectForKeyedSubscript:@"MemoryTrackingOverhead"];
  [v10 floatValue];
  v12 = v11;

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __46__SmartPLMemoryTracking_handleMemoryTracking___block_invoke_2;
  v30[3] = &unk_279A593E0;
  v31 = @"MemoryTrackingOverhead";
  v32 = v12;
  if (handleMemoryTracking__defaultOnce_34 != -1)
  {
    dispatch_once(&handleMemoryTracking__defaultOnce_34, v30);
  }

  v13 = *&handleMemoryTracking__objectForKey_35;

  v14 = [v5 objectForKeyedSubscript:@"MemoryTrackingTriggerThreshold"];
  [v14 floatValue];
  v16 = v15;

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __46__SmartPLMemoryTracking_handleMemoryTracking___block_invoke_3;
  v27[3] = &unk_279A593E0;
  v28 = @"MemoryTrackingTriggerThreshold";
  v29 = v16;
  if (handleMemoryTracking__defaultOnce_36 != -1)
  {
    dispatch_once(&handleMemoryTracking__defaultOnce_36, v27);
  }

  v17 = *&handleMemoryTracking__objectForKey_37;

  v18 = [trackingCopy objectForKeyedSubscript:@"MallocSize"];

  [v18 doubleValue];
  v20 = v13 + v19 * v9;

  if (v20 > v17)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"dirtyMemoryGuess greater than threshold %f", *&v20];
    operator = [(SmartPLMemoryTracking *)self operator];
    [operator logEventPointSmartPLFiredFromAuxilary:objc_opt_class() withReason:v21];

    operator2 = [(SmartPLMemoryTracking *)self operator];
    [operator2 logEventPointStackShotWithReason:v21];

    operator3 = [(SmartPLMemoryTracking *)self operator];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    [operator3 logEventPointSampleForProcessName:processName];
  }
}

uint64_t __46__SmartPLMemoryTracking_handleMemoryTracking___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] doubleForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  handleMemoryTracking__objectForKey = v2;
  return result;
}

uint64_t __46__SmartPLMemoryTracking_handleMemoryTracking___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] doubleForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  handleMemoryTracking__objectForKey_35 = v2;
  return result;
}

uint64_t __46__SmartPLMemoryTracking_handleMemoryTracking___block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] doubleForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  handleMemoryTracking__objectForKey_37 = v2;
  return result;
}

- (PLSmartPLService)operator
{
  WeakRetained = objc_loadWeakRetained(&self->_operator);

  return WeakRetained;
}

@end