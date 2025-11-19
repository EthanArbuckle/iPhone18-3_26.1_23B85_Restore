@interface PLMav2BasebandHardwareMessage
- (BOOL)parseData:(id)a3;
- (PLMav2BasebandHardwareMessage)initWithData:(id)a3;
- (id)indexToRAT:(unint64_t)a3;
- (void)logHeaderWithLogger:(id)a3;
- (void)logRFWithLogger2:(id)a3;
- (void)logWithLogger:(id)a3;
@end

@implementation PLMav2BasebandHardwareMessage

- (PLMav2BasebandHardwareMessage)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLMav2BasebandHardwareMessage;
  v5 = [(PLBasebandHardwareMessage *)&v9 initWithData:v4];
  v6 = v5;
  if (!v5 || ([(PLMav2BasebandHardwareMessage *)v5 setRx:0], [(PLMav2BasebandHardwareMessage *)v6 setTx:0], v7 = 0, [(PLMav2BasebandHardwareMessage *)v6 parseData:v4]))
  {
    v7 = v6;
  }

  return v7;
}

- (BOOL)parseData:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 bytes];
  self->super._header = (v5 + 13);
  if ([(PLBasebandHardwareMessage *)self revision]<= 2)
  {
    v6 = v5 + 29;
    [(PLBasebandHardwareMessage *)self setLogDuration:self->super._header->var3 - self->super._header->var2];
    if (self->super._header->var1)
    {
      self->super._system = v6;
      v6 = v5 + 49;
      var1 = self->super._header->var1;
      if (var1 >= 4)
      {
        self->super._armPerf = v6;
        v6 = v5 + 89;
        var1 = self->super._header->var1;
      }

      if (var1 >= 3)
      {
        self->super._mdsp = v6;
        self->super._mdm = (v6 + 60);
        self->super._adsp = (v6 + 76);
        self->super._adm = (v6 + 136);
        self->super._gps = (v6 + 152);
        self->super._usb = (v6 + 168);
        self->super._uart = (v6 + 184);
        self->super._spi = (v6 + 216);
        if (self->super._header->var1 < 6)
        {
          v6 += 232;
        }

        else
        {
          [(PLMav2BasebandHardwareMessage *)self setRx:v6 + 232];
          [(PLMav2BasebandHardwareMessage *)self setTx:v6 + 832];
          v6 += 1072;
        }
      }
    }

    v8 = v6 - [v4 bytes];
    if (v8 <= [v4 length])
    {
      v10 = 1;
      goto LABEL_15;
    }

    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218498;
      v14 = v6 - [v4 bytes];
      v15 = 2048;
      v16 = [v4 length];
      v17 = 2080;
      v18 = "[PLMav2BasebandHardwareMessage parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", &v13, 0x20u);
    }
  }

  v10 = 0;
LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)logWithLogger:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = PLMav2BasebandHardwareMessage;
  [(PLBasebandHardwareMessage *)&v25 logRawWithLogger:a3];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLMav2BasebandHardwareMessage_logWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (qword_2811F7740 != -1)
    {
      dispatch_once(&qword_2811F7740, block);
    }

    if (_MergedGlobals_87 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav2BasebandHardwareMessage logWithLogger:]"];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav2BasebandHardwareMessage.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav2BasebandHardwareMessage logWithLogger:]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:114];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = objc_alloc_init(PLBBMavLogMsg);
  v12 = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v11 setAgent:v12];

  [(PLBBMavLogMsg *)v11 setError:&stru_282B650A0];
  v13 = [(PLBasebandMessage *)self seqNum];
  v14 = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBMavLogMsg *)v11 setHeaderWithSeqNum:v13 andDate:v14 andTimeCal:?];

  [(PLMav2BasebandHardwareMessage *)self logHeaderWithLogger:v11];
  [(PLBasebandHardwareMessage *)self logProcessorWithLogger:v11];
  [(PLBasebandHardwareMessage *)self logModemAppWithLogger:v11];
  [(PLBasebandHardwareMessage *)self logPeripheralsWithLogger:v11];
  [(PLBBMavLogMsg *)v11 addToGroupPLBBMav2HwOther];
  [(PLMav2BasebandHardwareMessage *)self logRFWithLogger2:v11];
  [(PLBBMavLogMsg *)v11 logEventBackwardGrpEntriesBBMavHw];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __47__PLMav2BasebandHardwareMessage_logWithLogger___block_invoke_377;
    v23[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v23[4] = v15;
    if (qword_2811F7748 != -1)
    {
      dispatch_once(&qword_2811F7748, v23);
    }

    if (byte_2811F7739 == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoding BB HW RF completed"];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav2BasebandHardwareMessage.m"];
      v19 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav2BasebandHardwareMessage logWithLogger:]"];
      [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:136];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v16;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLMav2BasebandHardwareMessage_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_87 = result;
  return result;
}

uint64_t __47__PLMav2BasebandHardwareMessage_logWithLogger___block_invoke_377(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7739 = result;
  return result;
}

- (void)logHeaderWithLogger:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PLMav2BasebandHardwareMessage;
  [(PLBasebandHardwareMessage *)&v23 logHeaderWithLogger:v4];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __53__PLMav2BasebandHardwareMessage_logHeaderWithLogger___block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v5;
    if (qword_2811F7750 != -1)
    {
      dispatch_once(&qword_2811F7750, &block);
    }

    if (byte_2811F773A == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav2BasebandHardwareMessage logHeaderWithLogger:]", block, v19, v20, v21, v22];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav2BasebandHardwareMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav2BasebandHardwareMessage logHeaderWithLogger:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:143];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = v4;
  header = self->super._header;
  if (header)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:header->var3];
    [v12 setBbHwCurrTimeStamp:v14];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->super._header->var2];
    [v12 setBbHwLastTimeStamp:v15];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->super._header->var3 - self->super._header->var2];
    [v12 setBbHwLogDurationInTicks:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLMav2BasebandHardwareMessage_logHeaderWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F773A = result;
  return result;
}

- (void)logRFWithLogger2:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __50__PLMav2BasebandHardwareMessage_logRFWithLogger2___block_invoke;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v5;
    if (qword_2811F7758 != -1)
    {
      dispatch_once(&qword_2811F7758, v47);
    }

    if (byte_2811F773B == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLMav2BasebandHardwareMessage logRFWithLogger2:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav2BasebandHardwareMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav2BasebandHardwareMessage logRFWithLogger2:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:155];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v49 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v44 = v4;
  v12 = objc_opt_new();
  v13 = [(PLBasebandMessage *)self agent];
  [v12 setAgent:v13];

  [v12 setError:&stru_282B650A0];
  v14 = [(PLBasebandMessage *)self seqNum];
  v15 = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [v12 setHeaderWithSeqNum:v14 andDate:v15 andTimeCal:?];

  if ([(PLMav2BasebandHardwareMessage *)self rx]&& [(PLMav2BasebandHardwareMessage *)self tx])
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 80;
    while (1)
    {
      v20 = [(PLMav2BasebandHardwareMessage *)self indexToRAT:v18];
      if ([v20 length])
      {
        [v12 setRat:v20];
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBasebandHardwareMessage logDuration](self, "logDuration")}];
        [v12 setLogDuration:v21];

        v22 = [MEMORY[0x277CCABB0] numberWithInt:v18];
        [v12 setRadioTech:v22];

        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBasebandHardwareMessage logDuration](self, "logDuration")}];
        [v12 setBbHwLogDurationInTicks:v23];

        v24 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav2BasebandHardwareMessage *)self rx]+ v16 ofSize:4];
        [v12 setRssiModeCount:v24];

        v25 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav2BasebandHardwareMessage *)self rx]+ v19 ofSize:13];
        [v12 setRx0RssiPowerHist:v25];

        v26 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav2BasebandHardwareMessage *)self rx]+ v19 + 260 ofSize:13];
        [v12 setRx1RssiPowerHist:v26];

        v27 = [(PLBasebandHardwareMessage *)self convertUint32ArrayToNSArray:[(PLMav2BasebandHardwareMessage *)self tx]+ v17 ofSize:12];
        [v12 setTxPowerHist:v27];

        v28 = [v12 logEventBackwardGrpEntriesBBMavHwOtherPerRAT];
        v29 = [v28 objectForKey:@"entry"];
        v30 = [v28 objectForKey:@"name"];
        [v44 addToGroupPLBBMavHwEntry:v29 withEntryKey:v30];
      }

      else
      {
        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_20;
        }

        v31 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__PLMav2BasebandHardwareMessage_logRFWithLogger2___block_invoke_392;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v31;
        if (qword_2811F7768 != -1)
        {
          dispatch_once(&qword_2811F7768, block);
        }

        if (byte_2811F773D != 1)
        {
          goto LABEL_20;
        }

        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: RAT unknown, cannot record"];
        v42 = MEMORY[0x277D3F178];
        v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav2BasebandHardwareMessage.m"];
        v32 = [v43 lastPathComponent];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav2BasebandHardwareMessage logRFWithLogger2:]"];
        [v42 logMessage:v28 fromFile:v32 fromFunction:v33 fromLineNumber:179];

        v29 = PLLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v49 = v28;
          _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

LABEL_20:
      ++v18;
      v19 += 52;
      v17 += 48;
      v16 += 16;
      if (v19 == 340)
      {
        goto LABEL_30;
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v34 = objc_opt_class();
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __50__PLMav2BasebandHardwareMessage_logRFWithLogger2___block_invoke_386;
    v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v46[4] = v34;
    if (qword_2811F7760 != -1)
    {
      dispatch_once(&qword_2811F7760, v46);
    }

    if (byte_2811F773C == 1)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BB HW RF <RAT> is expected but not present"];
      v36 = MEMORY[0x277D3F178];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLMav2BasebandHardwareMessage.m"];
      v38 = [v37 lastPathComponent];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMav2BasebandHardwareMessage logRFWithLogger2:]"];
      [v36 logMessage:v35 fromFile:v38 fromFunction:v39 fromLineNumber:168];

      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v49 = v35;
        _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [v12 appendToError:@"Error: BB HW RF <RAT> is expected but not present"];
  [v12 logEventBackwardMavBBHwOtherPerRAT];
LABEL_30:

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLMav2BasebandHardwareMessage_logRFWithLogger2___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F773B = result;
  return result;
}

uint64_t __50__PLMav2BasebandHardwareMessage_logRFWithLogger2___block_invoke_386(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F773C = result;
  return result;
}

uint64_t __50__PLMav2BasebandHardwareMessage_logRFWithLogger2___block_invoke_392(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F773D = result;
  return result;
}

- (id)indexToRAT:(unint64_t)a3
{
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2uLL:
        v4 = kPL1xEVDO;
        break;
      case 3uLL:
        v4 = kPLWCDMA;
        break;
      case 4uLL:
        v3 = @"NONE";
        goto LABEL_13;
      default:
        goto LABEL_16;
    }

LABEL_12:
    v3 = *v4;
    goto LABEL_13;
  }

  if (!a3)
  {
    v4 = kPLGSM;
    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v4 = kPLCDMA2K;
    goto LABEL_12;
  }

LABEL_16:
  v3 = @"Unknown";
LABEL_13:

  return v3;
}

@end