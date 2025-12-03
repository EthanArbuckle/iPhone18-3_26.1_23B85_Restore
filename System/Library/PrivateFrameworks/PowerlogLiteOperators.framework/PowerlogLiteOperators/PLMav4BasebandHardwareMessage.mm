@interface PLMav4BasebandHardwareMessage
- (BOOL)parseData:(id)data;
- (PLMav4BasebandHardwareMessage)initWithData:(id)data;
- (id)indexToRAT:(unint64_t)t;
- (void)logHeaderWithLogger:(id)logger;
- (void)logModemAppWithLogger:(id)logger;
- (void)logPeripheralsWithLogger:(id)logger;
- (void)logProcessorWithLogger:(id)logger;
- (void)logRFWithLogger2:(id)logger2;
- (void)logSleepWithLogger:(id)logger;
- (void)logWithLogger:(id)logger;
@end

@implementation PLMav4BasebandHardwareMessage

- (PLMav4BasebandHardwareMessage)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = PLMav4BasebandHardwareMessage;
  v5 = [(PLBasebandHardwareMessage *)&v9 initWithData:dataCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_3;
  }

  [(PLMav4BasebandHardwareMessage *)v5 setHeader:0];
  [(PLMav4BasebandHardwareMessage *)v6 setSystem:0];
  [(PLMav4BasebandHardwareMessage *)v6 setArmPerf:0];
  [(PLMav4BasebandHardwareMessage *)v6 setMdsp:0];
  [(PLMav4BasebandHardwareMessage *)v6 setMdm:0];
  [(PLMav4BasebandHardwareMessage *)v6 setQdsp:0];
  [(PLMav4BasebandHardwareMessage *)v6 setAdm:0];
  [(PLMav4BasebandHardwareMessage *)v6 setGps:0];
  [(PLMav4BasebandHardwareMessage *)v6 setUsb:0];
  [(PLMav4BasebandHardwareMessage *)v6 setUart:0];
  [(PLMav4BasebandHardwareMessage *)v6 setSpi:0];
  [(PLMav4BasebandHardwareMessage *)v6 setRx:0];
  [(PLMav4BasebandHardwareMessage *)v6 setTx:0];
  [(PLMav4BasebandHardwareMessage *)v6 setSleep_qdsp:0];
  [(PLMav4BasebandHardwareMessage *)v6 setSleep_arm:0];
  v7 = 0;
  if ([(PLMav4BasebandHardwareMessage *)v6 parseData:dataCopy])
  {
LABEL_3:
    v7 = v6;
  }

  return v7;
}

- (BOOL)parseData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  [(PLMav4BasebandHardwareMessage *)self setHeader:bytes + 13];
  v6 = bytes + 33;
  [(PLMav4BasebandHardwareMessage *)self setLogDuration:([(PLMav4BasebandHardwareMessage *)self header][16] - [(PLMav4BasebandHardwareMessage *)self header][12])];
  if ([(PLMav4BasebandHardwareMessage *)self level])
  {
    [(PLMav4BasebandHardwareMessage *)self setSystem:bytes + 33];
    v6 = bytes + 45;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 4)
  {
    [(PLMav4BasebandHardwareMessage *)self setArmPerf:v6];
    v6 += 32;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 3)
  {
    [(PLMav4BasebandHardwareMessage *)self setMdsp:v6];
    [(PLMav4BasebandHardwareMessage *)self setMdm:v6 + 20];
    [(PLMav4BasebandHardwareMessage *)self setQdsp:v6 + 28];
    [(PLMav4BasebandHardwareMessage *)self setAdm:v6 + 48];
    [(PLMav4BasebandHardwareMessage *)self setGps:v6 + 56];
    [(PLMav4BasebandHardwareMessage *)self setUsb:v6 + 64];
    [(PLMav4BasebandHardwareMessage *)self setUart:v6 + 72];
    [(PLMav4BasebandHardwareMessage *)self setSpi:v6 + 80];
    v6 += 88;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 6)
  {
    [(PLMav4BasebandHardwareMessage *)self setRx:v6];
    [(PLMav4BasebandHardwareMessage *)self setTx:v6 + 600];
    [(PLMav4BasebandHardwareMessage *)self setSleep_qdsp:v6 + 840];
    [(PLMav4BasebandHardwareMessage *)self setSleep_arm:v6 + 892];
    v6 += 944;
  }

  v7 = v6 - [dataCopy bytes];
  v8 = [dataCopy length];
  if (v7 > v8)
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218498;
      v13 = v6 - [dataCopy bytes];
      v14 = 2048;
      v15 = [dataCopy length];
      v16 = 2080;
      v17 = "[PLMav4BasebandHardwareMessage parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7 <= v8;
}

- (void)logWithLogger:(id)logger
{
  v29 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  v26.receiver = self;
  v26.super_class = PLMav4BasebandHardwareMessage;
  [(PLBasebandHardwareMessage *)&v26 logRawWithLogger:loggerCopy];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLMav4BasebandHardwareMessage_logWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7E70 != -1)
    {
      dispatch_once(&qword_2811F7E70, block);
    }

    if (_MergedGlobals_109 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav4BasebandHardwareMessage logWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav4BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav4BasebandHardwareMessage logWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:151];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = objc_alloc_init(PLBBMavLogMsg);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v12 setAgent:agent];

  [(PLBBMavLogMsg *)v12 setError:@"not set"];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v12 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  [(PLMav4BasebandHardwareMessage *)self logHeaderWithLogger:v12];
  [(PLMav4BasebandHardwareMessage *)self logProcessorWithLogger:v12];
  [(PLMav4BasebandHardwareMessage *)self logModemAppWithLogger:v12];
  [(PLMav4BasebandHardwareMessage *)self logPeripheralsWithLogger:v12];
  if ([MEMORY[0x277D3F180] fullMode])
  {
    [(PLMav4BasebandHardwareMessage *)self logSleepWithLogger:loggerCopy];
  }

  [(PLBBMavLogMsg *)v12 addToGroupPLBBMav4HwOther];
  [(PLMav4BasebandHardwareMessage *)self logRFWithLogger2:v12];
  [(PLBBMavLogMsg *)v12 logEventBackwardGrpEntriesBBMavHw];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __47__PLMav4BasebandHardwareMessage_logWithLogger___block_invoke_377;
    v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v24[4] = v16;
    if (qword_2811F7E78 != -1)
    {
      dispatch_once(&qword_2811F7E78, v24);
    }

    if (byte_2811F7E61 == 1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoding Mav4 BB HW RF completed"];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav4BasebandHardwareMessage.m"];
      lastPathComponent2 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav4BasebandHardwareMessage logWithLogger:]"];
      [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:177];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLMav4BasebandHardwareMessage_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_109 = result;
  return result;
}

uint64_t __47__PLMav4BasebandHardwareMessage_logWithLogger___block_invoke_377(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E61 = result;
  return result;
}

- (void)logHeaderWithLogger:(id)logger
{
  v41 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PLMav4BasebandHardwareMessage_logHeaderWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7E80 != -1)
    {
      dispatch_once(&qword_2811F7E80, block);
    }

    if (byte_2811F7E62 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav4BasebandHardwareMessage logHeaderWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav4BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav4BasebandHardwareMessage logHeaderWithLogger:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:182];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = loggerCopy;
  if ([(PLMav4BasebandHardwareMessage *)self header])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[PLMav4BasebandHardwareMessage sw_rev](self, "sw_rev")}];
    [v12 setBbSwRev:v13];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[PLMav4BasebandHardwareMessage hw_rev](self, "hw_rev")}];
    [v12 setBbHwRev:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[PLMav4BasebandHardwareMessage header](self, "header")[4]}];
    [v12 setBbHwStatsType:v15];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[PLMav4BasebandHardwareMessage header](self, "header")[6]}];
    [v12 setBbHwStatsLength:v16];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage header](self, "header")[8]}];
    [v12 setBbHwStatsLevel:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage header](self, "header")[16]}];
    [v12 setBbHwCurrTimeStamp:v18];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage header](self, "header")[12]}];
    [v12 setBbHwLastTimeStamp:v19];

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{(-[PLMav4BasebandHardwareMessage header](self, "header")[16] - -[PLMav4BasebandHardwareMessage header](self, "header")[12])}];
    [v12 setBbHwLogDurationInTicks:v20];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v21 = objc_opt_class();
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __53__PLMav4BasebandHardwareMessage_logHeaderWithLogger___block_invoke_384;
      v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v37[4] = v21;
      if (qword_2811F7E88 != -1)
      {
        dispatch_once(&qword_2811F7E88, v37);
      }

      if (byte_2811F7E63 == 1)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"BB HW: bad header"];
        v23 = MEMORY[0x277D3F178];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav4BasebandHardwareMessage.m"];
        lastPathComponent2 = [v24 lastPathComponent];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav4BasebandHardwareMessage logHeaderWithLogger:]"];
        [v23 logMessage:v22 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:199];

        v27 = PLLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v40 = v22;
          _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v12 appendToError:@"Bad Header"];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v28 = objc_opt_class();
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __53__PLMav4BasebandHardwareMessage_logHeaderWithLogger___block_invoke_393;
    v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v36[4] = v28;
    if (qword_2811F7E90 != -1)
    {
      dispatch_once(&qword_2811F7E90, v36);
    }

    if (byte_2811F7E64 == 1)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Log"];
      v30 = MEMORY[0x277D3F178];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav4BasebandHardwareMessage.m"];
      lastPathComponent3 = [v31 lastPathComponent];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav4BasebandHardwareMessage logHeaderWithLogger:]"];
      [v30 logMessage:v29 fromFile:lastPathComponent3 fromFunction:v33 fromLineNumber:203];

      v34 = PLLogCommon();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = v29;
        _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLMav4BasebandHardwareMessage_logHeaderWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E62 = result;
  return result;
}

uint64_t __53__PLMav4BasebandHardwareMessage_logHeaderWithLogger___block_invoke_384(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E63 = result;
  return result;
}

uint64_t __53__PLMav4BasebandHardwareMessage_logHeaderWithLogger___block_invoke_393(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E64 = result;
  return result;
}

- (void)logProcessorWithLogger:(id)logger
{
  v18 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([(PLMav4BasebandHardwareMessage *)self system])
  {
    self->super.super.ticksInGoodState = [(PLMav4BasebandHardwareMessage *)self system][8];
    v5 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self system] ofSize:3];
    [loggerCopy setBbHwProcSystemState:v5];
  }

  else
  {
    [loggerCopy appendToError:@"System_State=<unknown>"];
  }

  if ([(PLMav4BasebandHardwareMessage *)self armPerf])
  {
    v6 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self armPerf] ofSize:8];
    [loggerCopy setBbHwProcArmPerfState:v6];
  }

  else
  {
    [loggerCopy appendToError:@"ARM_Perf_Level=<unknown>"];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLMav4BasebandHardwareMessage_logProcessorWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F7E98 != -1)
    {
      dispatch_once(&qword_2811F7E98, block);
    }

    if (byte_2811F7E65 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Processor"];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav4BasebandHardwareMessage.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav4BasebandHardwareMessage logProcessorWithLogger:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:232];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PLMav4BasebandHardwareMessage_logProcessorWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E65 = result;
  return result;
}

- (void)logModemAppWithLogger:(id)logger
{
  v20 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([(PLMav4BasebandHardwareMessage *)self mdsp])
  {
    v5 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self mdsp] ofSize:5];
    [loggerCopy setBbHwModemAppMdspSpeed:v5];
  }

  else
  {
    [loggerCopy appendToError:@"Q6FW_Speed=<unknown>"];
  }

  if ([(PLMav4BasebandHardwareMessage *)self mdm])
  {
    v6 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self mdm] ofSize:2];
    [loggerCopy setBbHwModemAppMdmState:v6];
  }

  else
  {
    [loggerCopy appendToError:@"MDM=<unknown>"];
  }

  if ([(PLMav4BasebandHardwareMessage *)self qdsp])
  {
    v7 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self qdsp] ofSize:5];
    [loggerCopy setBbHwModemAppQdspSpeed:v7];
  }

  else
  {
    [loggerCopy appendToError:@"Q6SW_Speed=<unknown>"];
  }

  if ([(PLMav4BasebandHardwareMessage *)self adm])
  {
    v8 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self adm] ofSize:2];
    [loggerCopy setBbHwModemAppAdmState:v8];
  }

  else
  {
    [loggerCopy appendToError:@"ADM=<unknown>"];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLMav4BasebandHardwareMessage_logModemAppWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F7EA0 != -1)
    {
      dispatch_once(&qword_2811F7EA0, block);
    }

    if (byte_2811F7E66 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Modem/App"];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav4BasebandHardwareMessage.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav4BasebandHardwareMessage logModemAppWithLogger:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:278];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLMav4BasebandHardwareMessage_logModemAppWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E66 = result;
  return result;
}

- (void)logPeripheralsWithLogger:(id)logger
{
  v20 = *MEMORY[0x277D85DE8];
  loggerCopy = logger;
  if ([(PLMav4BasebandHardwareMessage *)self gps])
  {
    v5 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self gps] ofSize:2];
    [loggerCopy setBbHwPeripheralGPSState:v5];
  }

  else
  {
    [loggerCopy appendToError:@"GPS=<unknown>"];
  }

  if ([(PLMav4BasebandHardwareMessage *)self usb])
  {
    v6 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self usb] ofSize:2];
    [loggerCopy setBbHwPeripheralUSBState:v6];
  }

  else
  {
    [loggerCopy appendToError:@"USB=<unknown>"];
  }

  if ([(PLMav4BasebandHardwareMessage *)self spi])
  {
    v7 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self spi] ofSize:2];
    [loggerCopy setBbHwPeripheralSPIState:v7];
  }

  else
  {
    [loggerCopy appendToError:@"SPI_Clock=<unknown>"];
  }

  if ([(PLMav4BasebandHardwareMessage *)self uart])
  {
    v8 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self uart] ofSize:2];
    [loggerCopy setBbHwPeripheralUARTState:v8];
  }

  else
  {
    [loggerCopy appendToError:@"UART_Clock=<unknown>"];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLMav4BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F7EA8 != -1)
    {
      dispatch_once(&qword_2811F7EA8, block);
    }

    if (byte_2811F7E67 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Peripherals"];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav4BasebandHardwareMessage.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav4BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:325];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __58__PLMav4BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E67 = result;
  return result;
}

- (void)logRFWithLogger2:(id)logger2
{
  v65 = *MEMORY[0x277D85DE8];
  logger2Copy = logger2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __50__PLMav4BasebandHardwareMessage_logRFWithLogger2___block_invoke;
    v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v62[4] = v5;
    if (qword_2811F7EB0 != -1)
    {
      dispatch_once(&qword_2811F7EB0, v62);
    }

    if (byte_2811F7E68 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav4BasebandHardwareMessage logRFWithLogger2:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav4BasebandHardwareMessage.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav4BasebandHardwareMessage logRFWithLogger2:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:330];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v64 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v56 = logger2Copy;
  v12 = objc_alloc_init(PLBBMavLogMsg);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v12 setAgent:agent];

  [(PLBBMavLogMsg *)v12 setError:&stru_282B650A0];
  seqNum = [(PLBasebandMessage *)self seqNum];
  date = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v12 setHeaderWithSeqNum:seqNum andDate:date andTimeCal:?];

  selfCopy = self;
  if (![(PLMav4BasebandHardwareMessage *)self rx]|| ![(PLMav4BasebandHardwareMessage *)self tx])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __50__PLMav4BasebandHardwareMessage_logRFWithLogger2___block_invoke_441;
      v61[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v61[4] = v16;
      if (qword_2811F7EB8 != -1)
      {
        dispatch_once(&qword_2811F7EB8, v61);
      }

      if (byte_2811F7E69 == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW RF <RAT> is expected but not present"];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav4BasebandHardwareMessage.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav4BasebandHardwareMessage logRFWithLogger2:]"];
        [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:343];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v64 = v17;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        self = selfCopy;
      }
    }

    [(PLBBMavLogMsg *)v12 appendToError:@"Error: BB HW RF <RAT> is expected but not present"];
    [(PLBBMavLogMsg *)v12 logEventBackwardMavBBHwOtherPerRAT];
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  for (i = 340; i != 600; i += 52)
  {
    v27 = [(PLMav4BasebandHardwareMessage *)self indexToRAT:v25];
    if ([v27 length])
    {
      [(PLBBMavLogMsg *)v12 setRat:v27];
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage logDuration](self, "logDuration")}];
      [(PLBBMavLogMsg *)v12 setLogDuration:v28];

      v29 = [MEMORY[0x277CCABB0] numberWithInt:v25];
      [(PLBBMavLogMsg *)v12 setRadioTech:v29];

      v30 = MEMORY[0x277CCABB0];
      v57 = v27;
      v31 = [(PLMav4BasebandHardwareMessage *)self header][16];
      v32 = (v31 - [(PLMav4BasebandHardwareMessage *)self header][12]);
      v27 = v57;
      v33 = [v30 numberWithUnsignedInt:v32];
      [(PLBBMavLogMsg *)v12 setBbHwLogDurationInTicks:v33];

      v34 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self rx]+ v23 ofSize:4];
      [(PLBBMavLogMsg *)v12 setRssiModeCount:v34];

      v35 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self rx]+ i - 260 ofSize:13];
      [(PLBBMavLogMsg *)v12 setRx0RssiPowerHist:v35];

      v36 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self rx]+ i ofSize:13];
      [(PLBBMavLogMsg *)v12 setRx1RssiPowerHist:v36];

      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage logDuration](self, "logDuration")}];
      [(PLBBMavLogMsg *)v12 setLogDuration:v37];

      [(PLBBMavLogMsg *)v12 setRat:v57];
      if (i == 548)
      {
        [MEMORY[0x277CBEA60] arrayWithObjects:{&unk_282C125B8, &unk_282C125B8, &unk_282C125B8, &unk_282C125B8, &unk_282C125B8, &unk_282C125B8, &unk_282C125B8, &unk_282C125B8, &unk_282C125B8, &unk_282C125B8, &unk_282C125B8, 0}];
      }

      else
      {
        [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self tx]+ v24 ofSize:12];
      }
      v45 = ;
      [(PLBBMavLogMsg *)v12 setTxPowerHist:v45];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v46 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__PLMav4BasebandHardwareMessage_logRFWithLogger2___block_invoke_455;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v46;
        if (qword_2811F7EC8 != -1)
        {
          dispatch_once(&qword_2811F7EC8, block);
        }

        if (byte_2811F7E6B == 1)
        {
          v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded Mav4 BB HW RF %@", v57];
          v48 = MEMORY[0x277D3F178];
          v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav4BasebandHardwareMessage.m"];
          lastPathComponent3 = [v49 lastPathComponent];
          v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav4BasebandHardwareMessage logRFWithLogger2:]"];
          [v48 logMessage:v47 fromFile:lastPathComponent3 fromFunction:v51 fromLineNumber:399];

          v52 = PLLogCommon();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v64 = v47;
            _os_log_debug_impl(&dword_21A4C6000, v52, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          self = selfCopy;
          v27 = v57;
        }
      }

      logEventBackwardGrpEntriesBBMavHwOtherPerRAT = [(PLBBMavLogMsg *)v12 logEventBackwardGrpEntriesBBMavHwOtherPerRAT];
      v44 = [logEventBackwardGrpEntriesBBMavHwOtherPerRAT objectForKey:@"entry"];
      v53 = [logEventBackwardGrpEntriesBBMavHwOtherPerRAT objectForKey:@"name"];
      [v56 addToGroupPLBBMavHwEntry:v44 withEntryKey:v53];

LABEL_38:
      goto LABEL_39;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v38 = objc_opt_class();
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __50__PLMav4BasebandHardwareMessage_logRFWithLogger2___block_invoke_447;
      v60[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v60[4] = v38;
      if (qword_2811F7EC0 != -1)
      {
        dispatch_once(&qword_2811F7EC0, v60);
      }

      if (byte_2811F7E6A == 1)
      {
        v58 = v27;
        logEventBackwardGrpEntriesBBMavHwOtherPerRAT = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: RAT unknown, cannot record"];
        v40 = MEMORY[0x277D3F178];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav4BasebandHardwareMessage.m"];
        lastPathComponent4 = [v41 lastPathComponent];
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav4BasebandHardwareMessage logRFWithLogger2:]"];
        [v40 logMessage:logEventBackwardGrpEntriesBBMavHwOtherPerRAT fromFile:lastPathComponent4 fromFunction:v43 fromLineNumber:356];

        v44 = PLLogCommon();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v64 = logEventBackwardGrpEntriesBBMavHwOtherPerRAT;
          _os_log_debug_impl(&dword_21A4C6000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        self = selfCopy;
        v27 = v58;
        goto LABEL_38;
      }
    }

LABEL_39:

    ++v25;
    v24 += 48;
    v23 += 16;
  }

  v54 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLMav4BasebandHardwareMessage_logRFWithLogger2___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E68 = result;
  return result;
}

uint64_t __50__PLMav4BasebandHardwareMessage_logRFWithLogger2___block_invoke_441(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E69 = result;
  return result;
}

uint64_t __50__PLMav4BasebandHardwareMessage_logRFWithLogger2___block_invoke_447(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E6A = result;
  return result;
}

uint64_t __50__PLMav4BasebandHardwareMessage_logRFWithLogger2___block_invoke_455(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7E6B = result;
  return result;
}

- (void)logSleepWithLogger:(id)logger
{
  loggerCopy = logger;
  if ([(PLMav4BasebandHardwareMessage *)self sleep_qdsp])
  {
    for (i = 0; i != 52; i += 13)
    {
      if ([(PLMav4BasebandHardwareMessage *)self sleep_qdsp])
      {
        v5 = [(PLBasebandHardwareMessage *)self convertUint8ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self sleep_qdsp]+ i ofSize:13];
        [loggerCopy setBbHwSleepVetoClientListQdsp:v5];
      }
    }
  }

  [loggerCopy setType:@"BB HW Sleep Veto QDSP"];
  if ([(PLMav4BasebandHardwareMessage *)self sleep_arm])
  {
    for (j = 0; j != 52; j += 13)
    {
      v7 = [(PLBasebandHardwareMessage *)self convertUint8ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self sleep_arm]+ j ofSize:13];
      [loggerCopy setBbHwSleepVetoClientListQdsp:v7];
    }
  }

  [loggerCopy setType:@"BB HW Sleep Veto ARM"];
}

- (id)indexToRAT:(unint64_t)t
{
  if (t > 4)
  {
    v4 = &stru_282B650A0;
  }

  else
  {
    v4 = *off_278260FA8[t];
  }

  return v4;
}

@end