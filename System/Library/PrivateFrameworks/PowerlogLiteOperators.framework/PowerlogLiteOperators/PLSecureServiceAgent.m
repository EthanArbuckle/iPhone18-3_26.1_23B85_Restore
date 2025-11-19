@interface PLSecureServiceAgent
+ (id)entryEventPointDefinitionConnectionState;
+ (id)entryEventPointDefinitionSummary;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLSecureServiceAgent)init;
- (void)initOperatorDependancies;
- (void)logEventPointConnectionState:(id)a3 withEvent:(int64_t)a4;
- (void)logEventPointPeriodicReport:(id)a3;
@end

@implementation PLSecureServiceAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLSecureServiceAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"ConnectionState";
  v2 = +[PLSecureServiceAgent entryEventPointDefinitionConnectionState];
  v7[1] = @"Summary";
  v8[0] = v2;
  v3 = +[PLSecureServiceAgent entryEventPointDefinitionSummary];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventPointDefinitionConnectionState
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_282C1BF28;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"keyId";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v16[0] = v3;
  v15[1] = @"UUID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v16[1] = v5;
  v15[2] = @"EventType";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v16[2] = v7;
  v15[3] = @"Confidence";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionSummary
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1BF28;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"ActiveConnections";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"ConnectionCount";
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

- (PLSecureServiceAgent)init
{
  v19 = *MEMORY[0x277D85DE8];
  if (+[PLSecureServiceAgent isSecureServiceSupported])
  {
    v16.receiver = self;
    v16.super_class = PLSecureServiceAgent;
    v3 = [(PLAgent *)&v16 init];
    v4 = v3;
    if (v3)
    {
      v3->_numBTConn = 0;
      v3->_periodicReportCount = 0;
      v3->_prevActiveKeys = -1;
      v3->_numEntries = 0;
      v3->_previousEvent = -1;
      previousHash = v3->_previousHash;
      v3->_previousHash = 0;
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_13;
      }

      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __28__PLSecureServiceAgent_init__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v7;
      if (qword_2811F4320 != -1)
      {
        dispatch_once(&qword_2811F4320, block);
      }

      if (_MergedGlobals_1_20 != 1)
      {
        goto LABEL_13;
      }

      previousHash = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent: failed to init"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent init]"];
      [v8 logMessage:previousHash fromFile:v10 fromFunction:v11 fromLineNumber:130];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = previousHash;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

LABEL_13:
    self = v4;
    v6 = self;
    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __28__PLSecureServiceAgent_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_20 = result;
  return result;
}

- (void)initOperatorDependancies
{
  [(PLOperator *)self defaultDoubleForKey:@"EntriesPerHourTimer"];
  v4 = v3;
  v5 = objc_alloc(MEMORY[0x277D3F250]);
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v4];
  v7 = [(PLOperator *)self workQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke;
  v25[3] = &unk_278259C40;
  v25[4] = self;
  v8 = [v5 initWithFireDate:v6 withInterval:1 withTolerance:0 repeats:v7 withUserInfo:v25 withQueue:v4 withBlock:0.0];
  entriesPerHourTimer = self->_entriesPerHourTimer;
  self->_entriesPerHourTimer = v8;

  v10 = objc_alloc(MEMORY[0x277D3F270]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_81;
  v24[3] = &unk_27825A1D8;
  v24[4] = self;
  v11 = [v10 initWithOperator:self withRegistration:&unk_282C17658 withBlock:v24];
  [(PLSecureServiceAgent *)self setDaemonLaunchListener:v11];

  v12 = objc_alloc(MEMORY[0x277D3F270]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_94;
  v23[3] = &unk_27825A1D8;
  v23[4] = self;
  v13 = [v12 initWithOperator:self withRegistration:&unk_282C17680 withBlock:v23];
  [(PLSecureServiceAgent *)self setConnectionListener:v13];

  v14 = objc_alloc(MEMORY[0x277D3F270]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_106;
  v22[3] = &unk_27825A1D8;
  v22[4] = self;
  v15 = [v14 initWithOperator:self withRegistration:&unk_282C176A8 withBlock:v22];
  [(PLSecureServiceAgent *)self setDisconnectionListener:v15];

  v16 = objc_alloc(MEMORY[0x277D3F270]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_118;
  v21[3] = &unk_27825A1D8;
  v21[4] = self;
  v17 = [v16 initWithOperator:self withRegistration:&unk_282C176D0 withBlock:v21];
  [(PLSecureServiceAgent *)self setDeviceIntentListener:v17];

  v18 = objc_alloc(MEMORY[0x277D3F270]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_130;
  v20[3] = &unk_27825A1D8;
  v20[4] = self;
  v19 = [v18 initWithOperator:self withRegistration:&unk_282C176F8 withBlock:v20];
  [(PLSecureServiceAgent *)self setPeriodicReportListener:v19];
}

void __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setNumEntries:0];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v3;
    if (qword_2811F4328 != -1)
    {
      dispatch_once(&qword_2811F4328, &block);
    }

    if (byte_2811F4311 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Timer Credit refreshed %lu", *(*(a1 + 32) + 120), block, v12, v13, v14, v15];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent initOperatorDependancies]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:141];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4311 = result;
  return result;
}

void __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_81(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_82;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F4330 != -1)
    {
      dispatch_once(&qword_2811F4330, block);
    }

    if (byte_2811F4312 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Daemon Launch State =%@ for %@", v8, v7];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent initOperatorDependancies]_block_invoke"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:145];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointConnectionState:v8 withEvent:0];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_82(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4312 = result;
  return result;
}

void __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_95;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F4338 != -1)
    {
      dispatch_once(&qword_2811F4338, block);
    }

    if (byte_2811F4313 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Connection State=%@ for %@", v8, v7];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent initOperatorDependancies]_block_invoke"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:150];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointConnectionState:v8 withEvent:1];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_95(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4313 = result;
  return result;
}

void __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_106(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_107;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F4340 != -1)
    {
      dispatch_once(&qword_2811F4340, block);
    }

    if (byte_2811F4314 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Disconnection Connection State=%@ for %@", v8, v7];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent initOperatorDependancies]_block_invoke"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:155];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointConnectionState:v8 withEvent:2];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_107(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4314 = result;
  return result;
}

void __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_118(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_119;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F4348 != -1)
    {
      dispatch_once(&qword_2811F4348, block);
    }

    if (byte_2811F4315 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Device Intent State=%@ for %@", v8, v7];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent initOperatorDependancies]_block_invoke"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:160];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointConnectionState:v8 withEvent:3];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_119(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4315 = result;
  return result;
}

void __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_130(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_131;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F4350 != -1)
    {
      dispatch_once(&qword_2811F4350, block);
    }

    if (byte_2811F4316 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Periodic Report State=%@ for %@", v8, v7];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent initOperatorDependancies]_block_invoke"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:165];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) logEventPointPeriodicReport:v8];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLSecureServiceAgent_initOperatorDependancies__block_invoke_2_131(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4316 = result;
  return result;
}

- (void)logEventPointConnectionState:(id)a3 withEvent:(int64_t)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v6 objectForKeyedSubscript:@"UUID"];
    v10 = [v8 stringWithFormat:@"%lu", objc_msgSend(v9, "hash")];

    if ((a4 - 1) <= 1 && [(NSString *)self->_previousHash isEqualToString:v10]&& self->_previousEvent == a4)
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_29;
      }

      v11 = objc_opt_class();
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __63__PLSecureServiceAgent_logEventPointConnectionState_withEvent___block_invoke;
      v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v36[4] = v11;
      if (qword_2811F4358 != -1)
      {
        dispatch_once(&qword_2811F4358, v36);
      }

      if (byte_2811F4317 != 1)
      {
        goto LABEL_29;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Too many connect/disconnects, avoiding duplicates=%@", v7];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent logEventPointConnectionState:withEvent:]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:180];

      v17 = PLLogCommon();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
LABEL_23:

LABEL_29:
        goto LABEL_30;
      }

      *buf = 138412290;
      v38 = v12;
LABEL_32:
      _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_23;
    }

    v18 = a4;
    if (a4 != 1)
    {
      if (a4 != 2)
      {
        v19 = a4 == 3;
        if ((a4 - 1) >= 3)
        {
          [(PLSecureServiceAgent *)self numEntries];
          goto LABEL_26;
        }

LABEL_17:
        [(PLSecureServiceAgent *)self setNumEntries:[(PLSecureServiceAgent *)self numEntries]+ 1];
        if ([(PLSecureServiceAgent *)self numEntries]> 10)
        {
          if (![MEMORY[0x277D3F180] debugEnabled])
          {
            goto LABEL_29;
          }

          v20 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __63__PLSecureServiceAgent_logEventPointConnectionState_withEvent___block_invoke_145;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v20;
          if (qword_2811F4360 != -1)
          {
            dispatch_once(&qword_2811F4360, block);
          }

          if (byte_2811F4318 != 1)
          {
            goto LABEL_29;
          }

          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLSecureServiceAgent:: Too many connect/disconnects=%@", v7];
          v21 = MEMORY[0x277D3F178];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSecureServiceAgent.m"];
          v23 = [v22 lastPathComponent];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSecureServiceAgent logEventPointConnectionState:withEvent:]"];
          [v21 logMessage:v12 fromFile:v23 fromFunction:v24 fromLineNumber:212];

          v17 = PLLogCommon();
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_23;
          }

          *buf = 138412290;
          v38 = v12;
          goto LABEL_32;
        }

LABEL_26:
        v25 = [(PLOperator *)PLSecureServiceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ConnectionState"];
        v26 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v25];
        [v26 setObject:v10 forKeyedSubscript:@"keyId"];
        v27 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
        [v26 setObject:v27 forKeyedSubscript:@"EventType"];

        v28 = [v7 objectForKeyedSubscript:@"PeerUUID"];
        [v26 setObject:v28 forKeyedSubscript:@"UUID"];

        if (v19)
        {
          v29 = MEMORY[0x277CCABB0];
          v30 = [v7 objectForKeyedSubscript:@"ConfidenceLevel"];
          [v30 floatValue];
          *&v32 = v31 * 100.0;
          v33 = [v29 numberWithFloat:v32];
          [v26 setObject:v33 forKeyedSubscript:@"Confidence"];
        }

        [(PLOperator *)self logEntry:v26];
        self->_previousEvent = a4;
        objc_storeStrong(&self->_previousHash, v10);

        goto LABEL_29;
      }

      if ([(PLSecureServiceAgent *)self numBTConn]<= 0)
      {
LABEL_16:
        v19 = 0;
        goto LABEL_17;
      }

      v18 = -1;
    }

    [(PLSecureServiceAgent *)self setNumBTConn:[(PLSecureServiceAgent *)self numBTConn]+ v18];
    goto LABEL_16;
  }

LABEL_30:

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __63__PLSecureServiceAgent_logEventPointConnectionState_withEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4317 = result;
  return result;
}

uint64_t __63__PLSecureServiceAgent_logEventPointConnectionState_withEvent___block_invoke_145(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4318 = result;
  return result;
}

- (void)logEventPointPeriodicReport:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    [(PLSecureServiceAgent *)self setPeriodicReportCount:[(PLSecureServiceAgent *)self periodicReportCount]+ 1];
    v5 = [v13 objectForKeyedSubscript:@"NumberOfActiveKeys"];
    v6 = [v5 integerValue];
    if (v6 == [(PLSecureServiceAgent *)self prevActiveKeys])
    {
      v7 = [(PLSecureServiceAgent *)self periodicReportCount];

      v4 = v13;
      if (v7 >= 4)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v8 = [v13 objectForKeyedSubscript:@"NumberOfActiveKeys"];
    -[PLSecureServiceAgent setPrevActiveKeys:](self, "setPrevActiveKeys:", [v8 integerValue]);

    v9 = [(PLOperator *)PLSecureServiceAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"Summary"];
    v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
    v11 = [v13 objectForKeyedSubscript:@"NumberOfActiveKeys"];
    [v10 setObject:v11 forKeyedSubscript:@"ActiveConnections"];

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PLSecureServiceAgent numBTConn](self, "numBTConn")}];
    [v10 setObject:v12 forKeyedSubscript:@"ConnectionCount"];

    [(PLOperator *)self logEntry:v10];
    v4 = v13;
  }

LABEL_7:
}

@end