@interface BBSmartPL
- (PLSmartPLService)operator;
- (PLTelephonyConnection)connection;
- (void)handleMavBBHwOtherCallback:(id)a3;
- (void)startWithOperator:(id)a3;
- (void)triggerBBCoreDump;
@end

@implementation BBSmartPL

- (void)startWithOperator:(id)a3
{
  v4 = a3;
  [(BBSmartPL *)self setOperator:v4];
  v5 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(BBSmartPL *)self setLastLogDate:v5];

  [(BBSmartPL *)self setLogDuration:0.0];
  [(BBSmartPL *)self setCxoDuration:0.0];
  v6 = [MEMORY[0x277D3F6D8] sharedTelephonyConnection];
  [(BBSmartPL *)self setConnection:v6];

  v7 = [MEMORY[0x277D3F680] entryKeyForType:*MEMORY[0x277D3F5C8] andName:*MEMORY[0x277D3F748]];
  v8 = objc_alloc(MEMORY[0x277D3F1A8]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__BBSmartPL_startWithOperator___block_invoke;
  v10[3] = &unk_279A58F10;
  v10[4] = self;
  v9 = [v8 initWithOperator:v4 forEntryKey:v7 withBlock:v10];

  [(BBSmartPL *)self setBbHwOtherCallback:v9];
}

uint64_t __31__BBSmartPL_startWithOperator___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) handleMavBBHwOtherCallback:a2];
  }

  return result;
}

- (void)triggerBBCoreDump
{
  v2 = [(BBSmartPL *)self connection];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Auto-trigger of core dump by Powerlog: smartPL"];
  v4 = [v2 requestBasebandCoreDump:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Core dump failed"];
    v6 = MEMORY[0x277D3F178];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/SmartPL/BBSmartPL.m"];
    v8 = [v7 lastPathComponent];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[BBSmartPL triggerBBCoreDump]"];
    [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:52];

    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(PLAWDNetworkUsage *)v5 handleNameConnectionCallback:v10];
    }
  }
}

- (void)handleMavBBHwOtherCallback:(id)a3
{
  v4 = [a3 objectForKey:@"entry"];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F728]];
  [v5 doubleValue];
  v7 = v6;
  [(BBSmartPL *)self logDuration];
  [(BBSmartPL *)self setLogDuration:v7 + v8];

  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3F708]];
  [v9 doubleValue];
  v11 = v10;
  [(BBSmartPL *)self cxoDuration];
  [(BBSmartPL *)self setCxoDuration:v11 + v12];

  v13 = [v4 entryDate];
  v14 = [(BBSmartPL *)self lastLogDate];
  [v13 timeIntervalSinceDate:v14];
  v16 = v15;

  if (v16 >= 1200.0)
  {
    v17 = [MEMORY[0x277D3F680] entryKeyForType:*MEMORY[0x277D3F5E8] andName:*MEMORY[0x277D3F700]];
    v18 = [(BBSmartPL *)self operator];
    v19 = [v18 storage];
    v20 = [v19 lastEntryForKey:v17];

    v21 = [v20 objectForKeyedSubscript:@"callStatus"];
    if ([v21 isEqualToString:@"Inactive"])
    {
      [(BBSmartPL *)self cxoDuration];
      v23 = v22;
      [(BBSmartPL *)self logDuration];
      if (v23 / v24 < 0.0)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v25 = objc_opt_class();
          block = MEMORY[0x277D85DD0];
          v45 = 3221225472;
          v46 = __40__BBSmartPL_handleMavBBHwOtherCallback___block_invoke;
          v47 = &__block_descriptor_40_e5_v8__0lu32l8;
          v48 = v25;
          if (handleMavBBHwOtherCallback__defaultOnce != -1)
          {
            dispatch_once(&handleMavBBHwOtherCallback__defaultOnce, &block);
          }

          if (handleMavBBHwOtherCallback__classDebugEnabled == 1)
          {
            v26 = MEMORY[0x277CCACA8];
            [(BBSmartPL *)self cxoDuration];
            v28 = v27;
            [(BBSmartPL *)self logDuration];
            v30 = [v26 stringWithFormat:@"SMARTPL - trigger Core Dump%f", v28 / v29, block, v45, v46, v47, v48];
            v31 = MEMORY[0x277D3F178];
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/SmartPL/BBSmartPL.m"];
            v33 = [v32 lastPathComponent];
            v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[BBSmartPL handleMavBBHwOtherCallback:]"];
            [v31 logMessage:v30 fromFile:v33 fromFunction:v34 fromLineNumber:74];

            v35 = PLLogCommon();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              [(PLAWDNetworkUsage *)v30 handleNameConnectionCallback:v35];
            }
          }
        }

        [(BBSmartPL *)self triggerBBCoreDump];
        v36 = [(BBSmartPL *)self operator];
        v37 = objc_opt_class();
        v38 = MEMORY[0x277CCACA8];
        [(BBSmartPL *)self cxoDuration];
        v40 = v39;
        [(BBSmartPL *)self logDuration];
        v42 = [v38 stringWithFormat:@"cxoDuration/logDuration=%f", v40 / v41];
        [v36 logEventPointSmartPLFiredFromAuxilary:v37 withReason:v42];
      }
    }

    v43 = [MEMORY[0x277CBEAA8] monotonicDate];
    [(BBSmartPL *)self setLastLogDate:v43];

    [(BBSmartPL *)self setLogDuration:0.0];
    [(BBSmartPL *)self setCxoDuration:0.0];
  }
}

uint64_t __40__BBSmartPL_handleMavBBHwOtherCallback___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleMavBBHwOtherCallback__classDebugEnabled = result;
  return result;
}

- (PLSmartPLService)operator
{
  WeakRetained = objc_loadWeakRetained(&self->_operator);

  return WeakRetained;
}

- (PLTelephonyConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end