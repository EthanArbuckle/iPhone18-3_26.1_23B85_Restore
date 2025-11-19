@interface PLMav5BasebandHardwareMessage
- (BOOL)parseData:(id)a3;
- (PLMav5BasebandHardwareMessage)initWithData:(id)a3;
- (id)indexToRAT:(unint64_t)a3;
- (void)logAPPSWithLogger:(id)a3;
- (void)logClockWithLogger:(id)a3;
- (void)logLPASSWithLogger:(id)a3;
- (void)logModemAppWithLogger:(id)a3;
- (void)logPeripheralsWithLogger:(id)a3;
- (void)logProtocolWithLogger:(id)a3 withCount:(unsigned int)a4;
- (void)logRFWithLogger2:(id)a3;
- (void)logRPMWithLogger:(id)a3;
- (void)logWithLogger:(id)a3;
@end

@implementation PLMav5BasebandHardwareMessage

- (PLMav5BasebandHardwareMessage)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLMav5BasebandHardwareMessage;
  v5 = [(PLMav4BasebandHardwareMessage *)&v9 initWithData:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_3;
  }

  [(PLMav5BasebandHardwareMessage *)v5 setRpm:0];
  [(PLMav5BasebandHardwareMessage *)v6 setApps:0];
  [(PLMav5BasebandHardwareMessage *)v6 setApps_sleep:0];
  [(PLMav5BasebandHardwareMessage *)v6 setApps_sleep_veto:0];
  [(PLMav5BasebandHardwareMessage *)v6 setLpass:0];
  [(PLMav5BasebandHardwareMessage *)v6 setMdsp:0];
  [(PLMav5BasebandHardwareMessage *)v6 setQdsp:0];
  [(PLMav5BasebandHardwareMessage *)v6 setMpss_sleep:0];
  [(PLMav5BasebandHardwareMessage *)v6 setMpss_sleep_veto:0];
  [(PLMav5BasebandHardwareMessage *)v6 setUsb:0];
  [(PLMav5BasebandHardwareMessage *)v6 setGps_dpo:0];
  [(PLMav5BasebandHardwareMessage *)v6 setRx:0];
  [(PLMav5BasebandHardwareMessage *)v6 setRx_sqa:0];
  [(PLMav5BasebandHardwareMessage *)v6 setTx:0];
  [(PLMav5BasebandHardwareMessage *)v6 setProtocol:0];
  [(PLMav5BasebandHardwareMessage *)v6 setClock:0];
  v7 = 0;
  if ([(PLMav5BasebandHardwareMessage *)v6 parseData:v4])
  {
LABEL_3:
    v7 = v6;
  }

  return v7;
}

- (BOOL)parseData:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 bytes];
  v6 = &v5[2 * (*v5 == 129)];
  [(PLMav4BasebandHardwareMessage *)self setHeader:v6 + 13];
  v7 = v6 + 33;
  [(PLMav4BasebandHardwareMessage *)self setLogDuration:([(PLMav4BasebandHardwareMessage *)self header][16] - [(PLMav4BasebandHardwareMessage *)self header][12])];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __43__PLMav5BasebandHardwareMessage_parseData___block_invoke;
    v27 = &__block_descriptor_40_e5_v8__0lu32l8;
    v28 = v8;
    if (qword_2811F7C00 != -1)
    {
      dispatch_once(&qword_2811F7C00, &block);
    }

    if (_MergedGlobals_100 == 1)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [(PLMav4BasebandHardwareMessage *)self logDuration];
      v11 = [v9 stringWithFormat:@"Mav5 hw log duration set as %u", v10, block, v25, v26, v27, v28];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage parseData:]"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:98];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([(PLMav4BasebandHardwareMessage *)self level])
  {
    [(PLMav5BasebandHardwareMessage *)self setRpm:v6 + 33];
    v7 = v6 + 49;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 2)
  {
    [(PLMav5BasebandHardwareMessage *)self setApps:v7];
    [(PLMav5BasebandHardwareMessage *)self setApps_sleep:v7 + 24];
    v7 += 32;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 3)
  {
    [(PLMav5BasebandHardwareMessage *)self setUsb:v7];
    [(PLMav4BasebandHardwareMessage *)self setUart:v7 + 12];
    [(PLMav4BasebandHardwareMessage *)self setSpi:v7 + 20];
    [(PLMav4BasebandHardwareMessage *)self setAdm:v7 + 28];
    v7 += 36;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 4)
  {
    [(PLMav5BasebandHardwareMessage *)self setLpass:v7];
    v7 += 8;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 5)
  {
    [(PLMav5BasebandHardwareMessage *)self setApps_sleep_veto:v7];
    [(PLMav5BasebandHardwareMessage *)self setMpss_sleep_veto:v7 + 4];
    [(PLMav5BasebandHardwareMessage *)self setMdsp:v7 + 16];
    [(PLMav5BasebandHardwareMessage *)self setQdsp:v7 + 56];
    [(PLMav4BasebandHardwareMessage *)self setGps:v7 + 96];
    [(PLMav5BasebandHardwareMessage *)self setGps_dpo:v7 + 104];
    [(PLMav5BasebandHardwareMessage *)self setMpss_sleep:v7 + 112];
    v7 += 120;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 6)
  {
    [(PLMav5BasebandHardwareMessage *)self setRx:v7];
    [(PLMav5BasebandHardwareMessage *)self setTx:v7 + 600];
    [(PLMav5BasebandHardwareMessage *)self setRx_sqa:v7 + 840];
    [(PLMav5BasebandHardwareMessage *)self setProtocol:v7 + 1280];
    v7 += 1600;
  }

  if ([(PLMav4BasebandHardwareMessage *)self level]>= 7)
  {
    [(PLMav5BasebandHardwareMessage *)self setClock:v7];
    v7 += 836;
  }

  v17 = &v7[-[v4 bytes]];
  v18 = [v4 length];
  if (v17 > v18)
  {
    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = &v7[-[v4 bytes]];
      v23 = [v4 length];
      *buf = 134218498;
      v30 = v22;
      v31 = 2048;
      v32 = v23;
      v33 = 2080;
      v34 = "[PLMav5BasebandHardwareMessage parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v17 <= v18;
}

uint64_t __43__PLMav5BasebandHardwareMessage_parseData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_100 = result;
  return result;
}

- (void)logWithLogger:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = PLMav5BasebandHardwareMessage;
  [(PLBasebandHardwareMessage *)&v26 logRawWithLogger:v4];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLMav5BasebandHardwareMessage_logWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7C08 != -1)
    {
      dispatch_once(&qword_2811F7C08, block);
    }

    if (byte_2811F7BD9 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav5BasebandHardwareMessage logWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logWithLogger:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:205];

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
  v13 = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v12 setAgent:v13];

  [(PLBBMavLogMsg *)v12 setError:@"not set"];
  v14 = [(PLBasebandMessage *)self seqNum];
  v15 = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v12 setHeaderWithSeqNum:v14 andDate:v15 andTimeCal:?];

  if ([(PLMav4BasebandHardwareMessage *)self sw_rev]!= 4)
  {
    v17 = [MEMORY[0x277CCAB68] string];
    [v17 appendFormat:@" Version Mismatch: Baseband_sw_rev=%d Powerlog_supported_sw_rev=%d", -[PLMav4BasebandHardwareMessage sw_rev](self, "sw_rev"), 4];
    [(PLBBMavLogMsg *)v12 setError:v17];
    [(PLBBMavLogMsg *)v12 setType:@"BB HW Error"];
    [(PLBBMavLogMsg *)v12 logEventBackwardMavBBHwOther];
LABEL_19:

    goto LABEL_20;
  }

  [(PLMav4BasebandHardwareMessage *)self logHeaderWithLogger:v12];
  [(PLMav5BasebandHardwareMessage *)self logRPMWithLogger:v12];
  [(PLMav5BasebandHardwareMessage *)self logAPPSWithLogger:v12];
  [(PLMav5BasebandHardwareMessage *)self logLPASSWithLogger:v12];
  [(PLMav5BasebandHardwareMessage *)self logModemAppWithLogger:v4];
  [(PLMav5BasebandHardwareMessage *)self logPeripheralsWithLogger:v12];
  [(PLMav5BasebandHardwareMessage *)self logProtocolWithLogger:v12 withCount:5];
  if ([MEMORY[0x277D3F180] fullMode])
  {
    [(PLMav5BasebandHardwareMessage *)self logClockWithLogger:v4];
  }

  [(PLBBMavLogMsg *)v12 addToGroupPLBBMavHwOther];
  [(PLMav5BasebandHardwareMessage *)self logRFWithLogger2:v12];
  [(PLBBMavLogMsg *)v12 logEventBackwardGrpEntriesBBMavHw];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v16 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __47__PLMav5BasebandHardwareMessage_logWithLogger___block_invoke_387;
    v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v24[4] = v16;
    if (qword_2811F7C10 != -1)
    {
      dispatch_once(&qword_2811F7C10, v24);
    }

    if (byte_2811F7BDA == 1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoding BB HW RF completed"];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v20 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logWithLogger:]"];
      [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:250];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

LABEL_20:

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLMav5BasebandHardwareMessage_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BD9 = result;
  return result;
}

uint64_t __47__PLMav5BasebandHardwareMessage_logWithLogger___block_invoke_387(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BDA = result;
  return result;
}

- (void)logRPMWithLogger:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PLMav5BasebandHardwareMessage_logRPMWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7C18 != -1)
    {
      dispatch_once(&qword_2811F7C18, block);
    }

    if (byte_2811F7BDB == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav5BasebandHardwareMessage logRPMWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRPMWithLogger:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:255];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = v4;
  if ([(PLMav5BasebandHardwareMessage *)self rpm])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLMav5BasebandHardwareMessage rpm](self, "rpm")}];
    [v12 setRpmXOShutDuration:v13];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage rpm](self, "rpm")[4]}];
    [v12 setRpmXOShutCnt:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage rpm](self, "rpm")[8]}];
    [v12 setRpmVDDMinDuration:v15];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage rpm](self, "rpm")[12]}];
    [v12 setRpmVDDMinEnterCnt:v16];
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __50__PLMav5BasebandHardwareMessage_logRPMWithLogger___block_invoke_394;
      v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v33[4] = v17;
      if (qword_2811F7C20 != -1)
      {
        dispatch_once(&qword_2811F7C20, v33);
      }

      if (byte_2811F7BDC == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"RPM=<unknown>"];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
        v21 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRPMWithLogger:]"];
        [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:285];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v36 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v12 appendToError:@"RPM=<unknown> "];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v24 = objc_opt_class();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __50__PLMav5BasebandHardwareMessage_logRPMWithLogger___block_invoke_403;
    v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v32[4] = v24;
    if (qword_2811F7C28 != -1)
    {
      dispatch_once(&qword_2811F7C28, v32);
    }

    if (byte_2811F7BDD == 1)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW RPM"];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v28 = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRPMWithLogger:]"];
      [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:289];

      v30 = PLLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v25;
        _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLMav5BasebandHardwareMessage_logRPMWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BDB = result;
  return result;
}

uint64_t __50__PLMav5BasebandHardwareMessage_logRPMWithLogger___block_invoke_394(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BDC = result;
  return result;
}

uint64_t __50__PLMav5BasebandHardwareMessage_logRPMWithLogger___block_invoke_403(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BDD = result;
  return result;
}

- (void)logAPPSWithLogger:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PLMav5BasebandHardwareMessage *)self apps])
  {
    v5 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self apps] ofSize:6];
    [v4 setAppsPerfStateCountHist:v5];
LABEL_3:

    goto LABEL_11;
  }

  [v4 appendToError:@"Perf_Level=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F7C30 != -1)
    {
      dispatch_once(&qword_2811F7C30, block);
    }

    if (byte_2811F7BDE == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Perf_Level=<unknown>"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logAPPSWithLogger:]"];
      [v7 logMessage:v5 fromFile:v9 fromFunction:v10 fromLineNumber:313];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v44 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_3;
    }
  }

LABEL_11:
  if ([(PLMav5BasebandHardwareMessage *)self apps_sleep])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLMav5BasebandHardwareMessage apps_sleep](self, "apps_sleep")}];
    [v4 setCxoShutDownDuration:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage apps_sleep](self, "apps_sleep")[4]}];
    [v4 setCxoShutDownCount:v13];
LABEL_13:

    goto LABEL_21;
  }

  [v4 appendToError:@"Sleep_Stats=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke_418;
    v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v41[4] = v14;
    if (qword_2811F7C38 != -1)
    {
      dispatch_once(&qword_2811F7C38, v41);
    }

    if (byte_2811F7BDF == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Stats=<unknown>"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v17 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logAPPSWithLogger:]"];
      [v15 logMessage:v13 fromFile:v17 fromFunction:v18 fromLineNumber:332];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v44 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_13;
    }
  }

LABEL_21:
  if ([(PLMav5BasebandHardwareMessage *)self apps_sleep_veto])
  {
    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self apps_sleep_veto] ofSize:1];
    [v4 setAppsSleepVeto:v20];
LABEL_23:

    goto LABEL_31;
  }

  [v4 appendToError:@"Sleep_Veto_Duration=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v21 = objc_opt_class();
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke_427;
    v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v40[4] = v21;
    if (qword_2811F7C40 != -1)
    {
      dispatch_once(&qword_2811F7C40, v40);
    }

    if (byte_2811F7BE0 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep_Veto_Duration=<unknown>"];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v24 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logAPPSWithLogger:]"];
      [v22 logMessage:v20 fromFile:v24 fromFunction:v25 fromLineNumber:353];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v44 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }

LABEL_31:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v27 = objc_opt_class();
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke_433;
    v38 = &__block_descriptor_40_e5_v8__0lu32l8;
    v39 = v27;
    if (qword_2811F7C48 != -1)
    {
      dispatch_once(&qword_2811F7C48, &v35);
    }

    if (byte_2811F7BE1 == 1)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW APPS", v35, v36, v37, v38, v39];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v31 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logAPPSWithLogger:]"];
      [v29 logMessage:v28 fromFile:v31 fromFunction:v32 fromLineNumber:357];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v44 = v28;
        _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BDE = result;
  return result;
}

uint64_t __51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke_418(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BDF = result;
  return result;
}

uint64_t __51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke_427(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE0 = result;
  return result;
}

uint64_t __51__PLMav5BasebandHardwareMessage_logAPPSWithLogger___block_invoke_433(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE1 = result;
  return result;
}

- (void)logLPASSWithLogger:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PLMav5BasebandHardwareMessage *)self lpass])
  {
    v5 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self lpass] ofSize:2];
    [v4 setLpassOnOffState:v5];
LABEL_3:

    goto LABEL_11;
  }

  [v4 appendToError:@"LPASS State=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PLMav5BasebandHardwareMessage_logLPASSWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F7C50 != -1)
    {
      dispatch_once(&qword_2811F7C50, block);
    }

    if (byte_2811F7BE2 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"LPASS State=<unknown>"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logLPASSWithLogger:]"];
      [v7 logMessage:v5 fromFile:v9 fromFunction:v10 fromLineNumber:374];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_3;
    }
  }

LABEL_11:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __52__PLMav5BasebandHardwareMessage_logLPASSWithLogger___block_invoke_445;
    v23 = &__block_descriptor_40_e5_v8__0lu32l8;
    v24 = v12;
    if (qword_2811F7C58 != -1)
    {
      dispatch_once(&qword_2811F7C58, &v20);
    }

    if (byte_2811F7BE3 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW LPASS", v20, v21, v22, v23, v24];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logLPASSWithLogger:]"];
      [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:377];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PLMav5BasebandHardwareMessage_logLPASSWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE2 = result;
  return result;
}

uint64_t __52__PLMav5BasebandHardwareMessage_logLPASSWithLogger___block_invoke_445(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE3 = result;
  return result;
}

- (void)logModemAppWithLogger:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PLMav5BasebandHardwareMessage *)self mpss_sleep])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*-[PLMav5BasebandHardwareMessage mpss_sleep](self, "mpss_sleep")}];
    [v4 setMpssCxoShutDownDuration:v5];

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage mpss_sleep](self, "mpss_sleep")[4]}];
    [v4 setMpssCxoShutDownCount:v6];
LABEL_3:

    goto LABEL_11;
  }

  [v4 appendToError:@"MPSS CXO_Shutdown=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F7C60 != -1)
    {
      dispatch_once(&qword_2811F7C60, block);
    }

    if (byte_2811F7BE4 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"MPSS CXO_Shutdown=<unknown>"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logModemAppWithLogger:]"];
      [v8 logMessage:v6 fromFile:v10 fromFunction:v11 fromLineNumber:399];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v60 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_3;
    }
  }

LABEL_11:
  if ([(PLMav5BasebandHardwareMessage *)self mpss_sleep_veto])
  {
    v13 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self mpss_sleep_veto] ofSize:3];
    [v4 setMpssSleepVeto:v13];
LABEL_13:

    goto LABEL_21;
  }

  [v4 appendToError:@"MPSS_Sleep_Veto_Duration=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_460;
    v57[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v57[4] = v14;
    if (qword_2811F7C68 != -1)
    {
      dispatch_once(&qword_2811F7C68, v57);
    }

    if (byte_2811F7BE5 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"MPSS_Sleep_Veto_Duration=<unknown>"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v17 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logModemAppWithLogger:]"];
      [v15 logMessage:v13 fromFile:v17 fromFunction:v18 fromLineNumber:415];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v60 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_13;
    }
  }

LABEL_21:
  if ([(PLMav5BasebandHardwareMessage *)self mdsp])
  {
    v20 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self mdsp] ofSize:10];
    [v4 setMpssSleepVeto:v20];
LABEL_23:

    goto LABEL_31;
  }

  [v4 appendToError:@"MDSP=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v21 = objc_opt_class();
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_469;
    v56[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v56[4] = v21;
    if (qword_2811F7C70 != -1)
    {
      dispatch_once(&qword_2811F7C70, v56);
    }

    if (byte_2811F7BE6 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"MPSS_Sleep_Veto_Duration=<unknown>"];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v24 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logModemAppWithLogger:]"];
      [v22 logMessage:v20 fromFile:v24 fromFunction:v25 fromLineNumber:434];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v60 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }

LABEL_31:
  if ([(PLMav5BasebandHardwareMessage *)self qdsp])
  {
    v27 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self qdsp] ofSize:10];
    [v4 setMpssSleepVeto:v27];
LABEL_33:

    goto LABEL_41;
  }

  [v4 appendToError:@"QDSP=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v28 = objc_opt_class();
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_475;
    v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v55[4] = v28;
    if (qword_2811F7C78 != -1)
    {
      dispatch_once(&qword_2811F7C78, v55);
    }

    if (byte_2811F7BE7 == 1)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"QDSP=<unknown>"];
      v29 = MEMORY[0x277D3F178];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v31 = [v30 lastPathComponent];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logModemAppWithLogger:]"];
      [v29 logMessage:v27 fromFile:v31 fromFunction:v32 fromLineNumber:453];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v60 = v27;
        _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_33;
    }
  }

LABEL_41:
  if ([(PLMav4BasebandHardwareMessage *)self adm])
  {
    v34 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self adm] ofSize:2];
    [v4 setMpssSleepVeto:v34];
LABEL_43:

    goto LABEL_51;
  }

  [v4 appendToError:@"ADM=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v35 = objc_opt_class();
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_484;
    v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v54[4] = v35;
    if (qword_2811F7C80 != -1)
    {
      dispatch_once(&qword_2811F7C80, v54);
    }

    if (byte_2811F7BE8 == 1)
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"ADM=<unknown>"];
      v36 = MEMORY[0x277D3F178];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v38 = [v37 lastPathComponent];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logModemAppWithLogger:]"];
      [v36 logMessage:v34 fromFile:v38 fromFunction:v39 fromLineNumber:470];

      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v60 = v34;
        _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_43;
    }
  }

LABEL_51:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v41 = objc_opt_class();
    v49 = MEMORY[0x277D85DD0];
    v50 = 3221225472;
    v51 = __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_490;
    v52 = &__block_descriptor_40_e5_v8__0lu32l8;
    v53 = v41;
    if (qword_2811F7C88 != -1)
    {
      dispatch_once(&qword_2811F7C88, &v49);
    }

    if (byte_2811F7BE9 == 1)
    {
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW MPSS", v49, v50, v51, v52, v53];
      v43 = MEMORY[0x277D3F178];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v45 = [v44 lastPathComponent];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logModemAppWithLogger:]"];
      [v43 logMessage:v42 fromFile:v45 fromFunction:v46 fromLineNumber:476];

      v47 = PLLogCommon();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v60 = v42;
        _os_log_debug_impl(&dword_21A4C6000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE4 = result;
  return result;
}

uint64_t __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_460(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE5 = result;
  return result;
}

uint64_t __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_469(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE6 = result;
  return result;
}

uint64_t __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_475(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE7 = result;
  return result;
}

uint64_t __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_484(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE8 = result;
  return result;
}

uint64_t __55__PLMav5BasebandHardwareMessage_logModemAppWithLogger___block_invoke_490(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BE9 = result;
  return result;
}

- (void)logPeripheralsWithLogger:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(PLMav5BasebandHardwareMessage *)self usb])
  {
    v5 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self usb] ofSize:3];
    [v4 setUsbStateCountHist:v5];
LABEL_3:

    goto LABEL_11;
  }

  [v4 appendToError:@"USB=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F7C90 != -1)
    {
      dispatch_once(&qword_2811F7C90, block);
    }

    if (byte_2811F7BEA == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"USB=<unknown>"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v7 logMessage:v5 fromFile:v9 fromFunction:v10 fromLineNumber:498];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_3;
    }
  }

LABEL_11:
  if ([(PLMav4BasebandHardwareMessage *)self spi])
  {
    v12 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self spi] ofSize:2];
    [v4 setSpiOnOffState:v12];
LABEL_13:

    goto LABEL_21;
  }

  [v4 appendToError:@"SPI=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_505;
    v56[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v56[4] = v13;
    if (qword_2811F7C98 != -1)
    {
      dispatch_once(&qword_2811F7C98, v56);
    }

    if (byte_2811F7BEB == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"USB=<unknown>"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v14 logMessage:v12 fromFile:v16 fromFunction:v17 fromLineNumber:516];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_13;
    }
  }

LABEL_21:
  if ([(PLMav4BasebandHardwareMessage *)self uart])
  {
    v19 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self uart] ofSize:2];
    [v4 setUartOnOffState:v19];
LABEL_23:

    goto LABEL_31;
  }

  [v4 appendToError:@"UART=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v20 = objc_opt_class();
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_511;
    v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v55[4] = v20;
    if (qword_2811F7CA0 != -1)
    {
      dispatch_once(&qword_2811F7CA0, v55);
    }

    if (byte_2811F7BEC == 1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"UART=<unknown>"];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v23 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v21 logMessage:v19 fromFile:v23 fromFunction:v24 fromLineNumber:535];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v19;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }

LABEL_31:
  if ([(PLMav4BasebandHardwareMessage *)self gps])
  {
    v26 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav4BasebandHardwareMessage *)self gps] ofSize:2];
    [v4 setGpsOnOff:v26];
LABEL_33:

    goto LABEL_41;
  }

  [v4 appendToError:@"GPS=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v27 = objc_opt_class();
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_520;
    v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v54[4] = v27;
    if (qword_2811F7CA8 != -1)
    {
      dispatch_once(&qword_2811F7CA8, v54);
    }

    if (byte_2811F7BED == 1)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPS=<unknown>"];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v30 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v28 logMessage:v26 fromFile:v30 fromFunction:v31 fromLineNumber:554];

      v32 = PLLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v26;
        _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_33;
    }
  }

LABEL_41:
  if ([(PLMav5BasebandHardwareMessage *)self gps_dpo])
  {
    v33 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self gps_dpo] ofSize:2];
    [v4 setGpsDPOOnOff:v33];
LABEL_43:

    goto LABEL_51;
  }

  [v4 appendToError:@"GPS_DPO=<unknown> "];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v34 = objc_opt_class();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_529;
    v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v53[4] = v34;
    if (qword_2811F7CB0 != -1)
    {
      dispatch_once(&qword_2811F7CB0, v53);
    }

    if (byte_2811F7BEE == 1)
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPS_DPO=<unknown>"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v37 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v35 logMessage:v33 fromFile:v37 fromFunction:v38 fromLineNumber:572];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v33;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_43;
    }
  }

LABEL_51:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v40 = objc_opt_class();
    v48 = MEMORY[0x277D85DD0];
    v49 = 3221225472;
    v50 = __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_535;
    v51 = &__block_descriptor_40_e5_v8__0lu32l8;
    v52 = v40;
    if (qword_2811F7CB8 != -1)
    {
      dispatch_once(&qword_2811F7CB8, &v48);
    }

    if (byte_2811F7BEF == 1)
    {
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Peripherals", v48, v49, v50, v51, v52];
      v42 = MEMORY[0x277D3F178];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v44 = [v43 lastPathComponent];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logPeripheralsWithLogger:]"];
      [v42 logMessage:v41 fromFile:v44 fromFunction:v45 fromLineNumber:578];

      v46 = PLLogCommon();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v59 = v41;
        _os_log_debug_impl(&dword_21A4C6000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BEA = result;
  return result;
}

uint64_t __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_505(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BEB = result;
  return result;
}

uint64_t __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_511(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BEC = result;
  return result;
}

uint64_t __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_520(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BED = result;
  return result;
}

uint64_t __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_529(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BEE = result;
  return result;
}

uint64_t __58__PLMav5BasebandHardwareMessage_logPeripheralsWithLogger___block_invoke_535(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BEF = result;
  return result;
}

- (void)logRFWithLogger2:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke;
    v70[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v70[4] = v5;
    if (qword_2811F7CC0 != -1)
    {
      dispatch_once(&qword_2811F7CC0, v70);
    }

    if (byte_2811F7BF0 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav5BasebandHardwareMessage logRFWithLogger2:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRFWithLogger2:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:584];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v72 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v62 = v4;
  v12 = objc_alloc_init(PLBBMavLogMsg);
  v13 = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v12 setAgent:v13];

  [(PLBBMavLogMsg *)v12 setError:&stru_282B650A0];
  v14 = [(PLBasebandMessage *)self seqNum];
  v15 = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v12 setHeaderWithSeqNum:v14 andDate:v15 andTimeCal:?];

  if ([(PLMav5BasebandHardwareMessage *)self rx]&& [(PLMav5BasebandHardwareMessage *)self rx_sqa]&& [(PLMav5BasebandHardwareMessage *)self tx])
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 80;
    v20 = 220;
    v21 = v62;
    while (1)
    {
      v22 = [(PLMav5BasebandHardwareMessage *)self indexToRAT:v18];
      if ([v22 length])
      {
        [(PLBBMavLogMsg *)v12 setRat:v22];
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage logDuration](self, "logDuration")}];
        [(PLBBMavLogMsg *)v12 setLogDuration:v23];

        v24 = [MEMORY[0x277CCABB0] numberWithInt:v18];
        [(PLBBMavLogMsg *)v12 setRadioTech:v24];

        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{(-[PLMav4BasebandHardwareMessage header](self, "header")[16] - -[PLMav4BasebandHardwareMessage header](self, "header")[12])}];
        [(PLBBMavLogMsg *)v12 setBbHwLogDurationInTicks:v25];

        v65 = v16;
        v26 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self rx]+ v16 ofSize:4];
        [(PLBBMavLogMsg *)v12 setRssiModeCount:v26];

        v27 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self rx]+ v19 ofSize:13];
        [(PLBBMavLogMsg *)v12 setRx0RssiPowerHist:v27];

        v28 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self rx]+ v19 + 260 ofSize:13];
        [(PLBBMavLogMsg *)v12 setRx1RssiPowerHist:v28];

        v29 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self rx_sqa]+ v20 - 220 ofSize:11];
        [(PLBBMavLogMsg *)v12 setRx0SQAPowerHist:v29];

        v30 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self rx_sqa]+ v20 ofSize:11];
        [(PLBBMavLogMsg *)v12 setRx1SQAPowerHist:v30];

        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLMav4BasebandHardwareMessage logDuration](self, "logDuration")}];
        [(PLBBMavLogMsg *)v12 setLogDuration:v31];

        v66 = v22;
        v21 = v62;
        [(PLBBMavLogMsg *)v12 setRat:v22];
        v32 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav5BasebandHardwareMessage *)self tx]+ v17 ofSize:12];
        [(PLBBMavLogMsg *)v12 setTxPowerHist:v32];

        v33 = [v62 protocolStateHistDict];
        v34 = [MEMORY[0x277CCABB0] numberWithInt:v18];
        v35 = [v33 objectForKey:v34];

        if (v35)
        {
          [(PLBBMavLogMsg *)v12 setProtocolStateHist:v35];
        }

        v63 = v35;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v36 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke_556;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v36;
          if (qword_2811F7CD8 != -1)
          {
            dispatch_once(&qword_2811F7CD8, block);
          }

          if (byte_2811F7BF3 == 1)
          {
            v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW RF %@", v66];
            v61 = MEMORY[0x277D3F178];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
            v39 = [v38 lastPathComponent];
            v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRFWithLogger2:]"];
            [v61 logMessage:v37 fromFile:v39 fromFunction:v40 fromLineNumber:654];

            v41 = v37;
            v42 = PLLogCommon();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v72 = v41;
              _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v21 = v62;
          }
        }

        v43 = [(PLBBMavLogMsg *)v12 logEventBackwardGrpEntriesBBMavHwOtherPerRAT];
        v44 = [v43 objectForKey:@"entry"];
        v45 = [v43 objectForKey:@"name"];
        [v21 addToGroupPLBBMavHwEntry:v44 withEntryKey:v45];
      }

      else
      {
        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_31;
        }

        v47 = objc_opt_class();
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke_550;
        v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v68[4] = v47;
        if (qword_2811F7CD0 != -1)
        {
          dispatch_once(&qword_2811F7CD0, v68);
        }

        if (byte_2811F7BF2 != 1)
        {
          goto LABEL_31;
        }

        v65 = v16;
        v66 = v22;
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: RAT unknown, cannot record"];
        v64 = MEMORY[0x277D3F178];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
        v50 = [v49 lastPathComponent];
        v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRFWithLogger2:]"];
        v52 = v64;
        v63 = v48;
        [v52 logMessage:v48 fromFile:v50 fromFunction:v51 fromLineNumber:609];

        v43 = PLLogCommon();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v63;
          v72 = v63;
          _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          v21 = v62;
          v16 = v65;
          goto LABEL_24;
        }

        v21 = v62;
      }

      v46 = v63;
      v16 = v65;
LABEL_24:

      v22 = v66;
LABEL_31:

      ++v18;
      v19 += 52;
      v17 += 48;
      v20 += 44;
      v16 += 16;
      if (v19 == 340)
      {
        goto LABEL_42;
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v53 = objc_opt_class();
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke_544;
    v69[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v69[4] = v53;
    if (qword_2811F7CC8 != -1)
    {
      dispatch_once(&qword_2811F7CC8, v69);
    }

    if (byte_2811F7BF1 == 1)
    {
      v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW RF <RAT> is expected but not present"];
      v55 = MEMORY[0x277D3F178];
      v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v57 = [v56 lastPathComponent];
      v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logRFWithLogger2:]"];
      [v55 logMessage:v54 fromFile:v57 fromFunction:v58 fromLineNumber:598];

      v59 = PLLogCommon();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v72 = v54;
        _os_log_debug_impl(&dword_21A4C6000, v59, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLBBMavLogMsg *)v12 appendToError:@"Error: BB HW RF <RAT> is expected but not present"];
  [(PLBBMavLogMsg *)v12 logEventBackwardMavBBHwOtherPerRAT];
  v21 = v62;
LABEL_42:

  v60 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF0 = result;
  return result;
}

uint64_t __50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke_544(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF1 = result;
  return result;
}

uint64_t __50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke_550(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF2 = result;
  return result;
}

uint64_t __50__PLMav5BasebandHardwareMessage_logRFWithLogger2___block_invoke_556(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF3 = result;
  return result;
}

- (void)logProtocolWithLogger:(id)a3 withCount:(unsigned int)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke;
    v63[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v63[4] = v8;
    if (qword_2811F7CE0 != -1)
    {
      dispatch_once(&qword_2811F7CE0, v63);
    }

    if (byte_2811F7BF4 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav5BasebandHardwareMessage logProtocolWithLogger:withCount:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logProtocolWithLogger:withCount:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:819];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v65 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v55 = v6;
  v54 = objc_opt_new();
  if ([(PLMav5BasebandHardwareMessage *)self protocol])
  {
    if (a4)
    {
      v57 = 0;
      v15 = 0;
      v16 = 0;
      v53 = a4;
      v17 = 0x277CCA000uLL;
      v18 = 0x278257000uLL;
      do
      {
        v19 = v16;
        v56 = v15;
        v58 = [(PLMav5BasebandHardwareMessage *)self indexToRAT:v15];
        v59 = [MEMORY[0x277CCAB68] string];
        v16 = objc_opt_new();

        if ([(PLMav5BasebandHardwareMessage *)self protocol])
        {
          v20 = -16;
          v21 = v57;
          v22 = off_27825E5D8;
          do
          {
            if ([(PLMav5BasebandHardwareMessage *)self protocol][v21])
            {
              v23 = [(PLMav5BasebandHardwareMessage *)self protocol][v21];
              v24 = [(PLMav4BasebandHardwareMessage *)self logDuration];
              if ((v20 + 16) <= 0xE)
              {
                [v59 appendString:*v22];
              }

              if ([*(v7 + 384) debugEnabled])
              {
                v25 = *(v18 + 2896);
                v26 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke_615;
                block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                block[4] = v26;
                if (qword_2811F7CE8 != -1)
                {
                  dispatch_once(&qword_2811F7CE8, block);
                }

                if (byte_2811F7BF5 == 1)
                {
                  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Protocol State: RAT [%@], Log [%@], percent [%f]= ", v58, v59, ((v23 * 100.0) / v24)];
                  v28 = MEMORY[0x277D3F178];
                  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
                  v30 = [v29 lastPathComponent];
                  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logProtocolWithLogger:withCount:]"];
                  [v28 logMessage:v27 fromFile:v30 fromFunction:v31 fromLineNumber:859];

                  v32 = PLLogCommon();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v65 = v27;
                    _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v7 = 0x277D3F000;
                  v17 = 0x277CCA000uLL;
                  v18 = 0x278257000;
                }
              }

              v33 = [*(v17 + 2992) numberWithUnsignedInt:{-[PLMav5BasebandHardwareMessage protocol](self, "protocol")[v21]}];
              [v16 addObject:v33];
            }

            else
            {
              [v16 addObject:&unk_282C11928];
            }

            ++v22;
            v21 += 4;
          }

          while (!__CFADD__(v20++, 1));
        }

        v35 = [*(v17 + 2992) numberWithInt:v56];
        [v55 setRadioTech:v35];

        v36 = [*(v17 + 2992) numberWithInt:v56];
        [v54 setObject:v16 forKey:v36];

        if ([*(v7 + 384) debugEnabled])
        {
          v37 = *(v18 + 2896);
          v38 = objc_opt_class();
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke_622;
          v61[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v61[4] = v38;
          if (qword_2811F7CF0 != -1)
          {
            dispatch_once(&qword_2811F7CF0, v61);
          }

          if (byte_2811F7BF6 == 1)
          {
            v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW Protocol %@", v58];
            v40 = MEMORY[0x277D3F178];
            v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
            v42 = [v41 lastPathComponent];
            v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logProtocolWithLogger:withCount:]"];
            [v40 logMessage:v39 fromFile:v42 fromFunction:v43 fromLineNumber:873];

            v44 = PLLogCommon();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v65 = v39;
              _os_log_debug_impl(&dword_21A4C6000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v7 = 0x277D3F000;
            v17 = 0x277CCA000;
            v18 = 0x278257000;
          }
        }

        v15 = v56 + 1;
        v57 += 64;
      }

      while (v56 + 1 != v53);
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v45 = objc_opt_class();
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke_628;
      v60[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v60[4] = v45;
      if (qword_2811F7CF8 != -1)
      {
        dispatch_once(&qword_2811F7CF8, v60);
      }

      if (byte_2811F7BF7 == 1)
      {
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW Protocol is expected but not present"];
        v47 = MEMORY[0x277D3F178];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
        v49 = [v48 lastPathComponent];
        v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logProtocolWithLogger:withCount:]"];
        [v47 logMessage:v46 fromFile:v49 fromFunction:v50 fromLineNumber:879];

        v51 = PLLogCommon();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v65 = v46;
          _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v55 appendToError:@"Error: BB HW Protocol is expected but not present. "];
    [v55 logEventBackwardMavBBHwOtherPerRAT];
  }

  [v55 setProtocolStateHistDict:v54];

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t __65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF4 = result;
  return result;
}

uint64_t __65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke_615(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF5 = result;
  return result;
}

uint64_t __65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke_622(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF6 = result;
  return result;
}

uint64_t __65__PLMav5BasebandHardwareMessage_logProtocolWithLogger_withCount___block_invoke_628(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF7 = result;
  return result;
}

- (void)logClockWithLogger:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PLMav5BasebandHardwareMessage_logClockWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7D00 != -1)
    {
      dispatch_once(&qword_2811F7D00, block);
    }

    if (byte_2811F7BF8 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav5BasebandHardwareMessage logClockWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logClockWithLogger:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:889];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = v4;
  if ([(PLMav5BasebandHardwareMessage *)self clock])
  {
    for (i = 0; i != 114; ++i)
    {
      if ([(PLMav5BasebandHardwareMessage *)self clock][4 * i])
      {
        v14 = [(PLMav5BasebandHardwareMessage *)self clock][4 * i] * 100.0;
        v15 = v14 / [(PLMav4BasebandHardwareMessage *)self logDuration];
        v16 = v15;
        if (v16 > 0.01)
        {
          v17 = apps_clock_names_0[i];
          v18 = [MEMORY[0x277CCAB68] stringWithFormat:@"%.02f%%", *&v16];
          [v12 addPairWithKey:v17 andWithVal:v18];
        }
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __52__PLMav5BasebandHardwareMessage_logClockWithLogger___block_invoke_640;
      v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v42[4] = v19;
      if (qword_2811F7D08 != -1)
      {
        dispatch_once(&qword_2811F7D08, v42);
      }

      if (byte_2811F7BF9 == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW APPS Clock"];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
        v23 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logClockWithLogger:]"];
        [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:912];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v45 = v20;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v26 = mpss_clock_names;
    for (j = 456; j != 836; j += 4)
    {
      if ([(PLMav5BasebandHardwareMessage *)self clock][j])
      {
        v28 = [(PLMav5BasebandHardwareMessage *)self clock][j] * 100.0;
        v29 = v28 / [(PLMav4BasebandHardwareMessage *)self logDuration];
        v30 = v29;
        if (v30 > 0.01)
        {
          v31 = *v26;
          v32 = [MEMORY[0x277CCAB68] stringWithFormat:@"%.02f%%", *&v30];
          [v12 addPairWithKey:v31 andWithVal:v32];
        }
      }

      ++v26;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v33 = objc_opt_class();
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __52__PLMav5BasebandHardwareMessage_logClockWithLogger___block_invoke_646;
      v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v41[4] = v33;
      if (qword_2811F7D10 != -1)
      {
        dispatch_once(&qword_2811F7D10, v41);
      }

      if (byte_2811F7BFA == 1)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded BB HW MPSS Clock"];
        v35 = MEMORY[0x277D3F178];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav5BasebandHardwareMessage.m"];
        v37 = [v36 lastPathComponent];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav5BasebandHardwareMessage logClockWithLogger:]"];
        [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:932];

        v39 = PLLogCommon();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v45 = v34;
          _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [v12 setType:@"BB HW APPS Clock"];
  }

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PLMav5BasebandHardwareMessage_logClockWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF8 = result;
  return result;
}

uint64_t __52__PLMav5BasebandHardwareMessage_logClockWithLogger___block_invoke_640(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BF9 = result;
  return result;
}

uint64_t __52__PLMav5BasebandHardwareMessage_logClockWithLogger___block_invoke_646(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7BFA = result;
  return result;
}

- (id)indexToRAT:(unint64_t)a3
{
  if (a3 > 4)
  {
    v4 = &stru_282B650A0;
  }

  else
  {
    v4 = *off_27825E650[a3];
  }

  return v4;
}

@end