@interface PLBasebandEurekaLogMessage
- (BOOL)parseData:(id)a3;
- (PLBasebandEurekaLogMessage)initWithData:(id)a3;
- (id)payloadString;
- (id)tooShortErrorString;
- (unsigned)eventCode;
- (void)logWithLogger:(id)a3;
@end

@implementation PLBasebandEurekaLogMessage

- (PLBasebandEurekaLogMessage)initWithData:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLBasebandEurekaLogMessage_initWithData___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7ED8 != -1)
    {
      dispatch_once(&qword_2811F7ED8, block);
    }

    if (_MergedGlobals_110 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandEurekaLogMessage initWithData:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaLogMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaLogMessage initWithData:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:23];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v18.receiver = self;
  v18.super_class = PLBasebandEurekaLogMessage;
  v12 = [(PLBasebandMessage *)&v18 initWithData:v4];
  v13 = v12;
  if (!v12 || (v12->_header = 0, payload = v12->_payload, v12->_payload = 0, payload, v15 = 0, [(PLBasebandEurekaLogMessage *)v13 parseData:v4]))
  {
    v15 = v13;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __43__PLBasebandEurekaLogMessage_initWithData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_110 = result;
  return result;
}

- (BOOL)parseData:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __40__PLBasebandEurekaLogMessage_parseData___block_invoke;
    v28 = &__block_descriptor_40_e5_v8__0lu32l8;
    v29 = v5;
    if (qword_2811F7EE0 != -1)
    {
      dispatch_once(&qword_2811F7EE0, &block);
    }

    if (byte_2811F7ED1 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandEurekaLogMessage parseData:]", block, v26, v27, v28, v29];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaLogMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaLogMessage parseData:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:36];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = [v4 bytes];
  v13 = &v12[2 * (*v12 == 129)];
  self->_header = v13;
  v14 = &v13->var3[7];
  v15 = [(PLBasebandEurekaLogMessage *)self header][1];
  v16 = v15 - 12;
  if (v15 >= 0xD && (v17 = &v14[v16 - [v4 bytes]], v17 <= objc_msgSend(v4, "length")))
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:v16];
    p_super = &self->_payload->super;
    self->_payload = v20;
    v19 = 1;
  }

  else
  {
    p_super = PLLogCommon();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v23 = &v14[v16 - [v4 bytes]];
      v24 = [v4 length];
      *buf = 134218498;
      v31 = v23;
      v32 = 2048;
      v33 = v24;
      v34 = 2080;
      v35 = "[PLBasebandEurekaLogMessage parseData:]";
      _os_log_error_impl(&dword_21A4C6000, p_super, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", buf, 0x20u);
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __40__PLBasebandEurekaLogMessage_parseData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7ED1 = result;
  return result;
}

- (id)payloadString
{
  v3 = [(PLBasebandEurekaLogMessage *)self payload];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(PLBasebandEurekaLogMessage *)self payload];
    v6 = [v4 stringWithFormat:@"%@", v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)logWithLogger:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PLBasebandEurekaLogMessage_logWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7EE8 != -1)
    {
      dispatch_once(&qword_2811F7EE8, block);
    }

    if (byte_2811F7ED2 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandEurekaLogMessage logWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaLogMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaLogMessage logWithLogger:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:93];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v42.receiver = self;
  v42.super_class = PLBasebandEurekaLogMessage;
  [(PLBasebandMessage *)&v42 logWithLogger:v4];
  v12 = objc_opt_new();
  v13 = objc_alloc_init(PLBBEurekaLogMsg);
  v14 = [(PLBasebandMessage *)self agent];
  [(PLBasebandMessage *)v13 setAgent:v14];

  [(PLBBEurekaLogMsg *)v13 setEventCode:[(PLBasebandEurekaLogMessage *)self eventCode]];
  [(PLBBEurekaLogMsg *)v13 setError:@"notSet"];
  v15 = [(PLBasebandMessage *)self seqNum];
  v16 = [(PLBasebandMessage *)self date];
  [(PLBasebandMessage *)self timeCal];
  [(PLBBEurekaLogMsg *)v13 setHeaderWithSeqNum:v15 andDate:v16 andTimeCal:?];

  v17 = [(PLBasebandEurekaLogMessage *)self payload];

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = [(PLBasebandEurekaLogMessage *)self payloadString];
    v20 = [v18 initWithString:v19];
    [(PLBBEurekaLogMsg *)v13 setPayload:v20];
  }

  if ([(PLBasebandEurekaLogMessage *)self header][3] == 45452)
  {
    if ([(PLBasebandEurekaLogMessage *)self header][1] > 0x27u)
    {
      v41 = v4;
      v22 = [(PLBasebandEurekaLogMessage *)self payload];
      v23 = [v22 bytes];

      v24 = *(v23 + 4);
      if (([MEMORY[0x277D3F208] isBasebandClass:1003001] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003002))
      {
        v25 = *(v23 + 5);
        v39 = *(v23 + 6);
        v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*v23];
        v26 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v23[4]];
        v27 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v23 + 2)];
        v28 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:(*(v23 + 2) + 1)];
        v29 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v24];
        v30 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v25];
        v31 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v39];
        [(PLBBEurekaLogMsg *)v13 logEventBackwardLTESleepMgrStatsWithVer:v21 andML1State:v26 andSES:v27 andSDS:v28 andStDur:v29 andDSlpDur:v30 andLSlpDur:v31];
      }

      else
      {
        v40 = *(v23 + 6) + *(v23 + 7);
        v38 = *(v23 + 8);
        v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:*v23];
        v26 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:v23[4]];
        v32 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v23 + 2)];
        v33 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v23 + 3)];
        v34 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v23 + 4)];
        v35 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:*(v23 + 5)];
        v36 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:(v40 + v38)];
        [(PLBBEurekaLogMsg *)v13 logEventBackwardLTESleepMgrStatsWithVer:v21 andML1State:v26 andSES:v32 andSDS:v33 andStDur:v34 andDSlpDur:v35 andLSlpDur:v36];
      }

      v4 = v41;
    }

    else
    {
      v21 = [(PLBasebandEurekaLogMessage *)self tooShortErrorString];
      [(PLBBEurekaLogMsg *)v13 setError:v21];
    }
  }

  [(PLBasebandMessage *)self logEntry:@"BB Event" withBody:v12];

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBasebandEurekaLogMessage_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7ED2 = result;
  return result;
}

- (unsigned)eventCode
{
  v19 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __39__PLBasebandEurekaLogMessage_eventCode__block_invoke;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v3;
    if (qword_2811F7EF0 != -1)
    {
      dispatch_once(&qword_2811F7EF0, &block);
    }

    if (byte_2811F7ED3 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandEurekaLogMessage eventCode]", block, v13, v14, v15, v16];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaLogMessage.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaLogMessage eventCode]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:175];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  result = [(PLBasebandEurekaLogMessage *)self header][3];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __39__PLBasebandEurekaLogMessage_eventCode__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7ED3 = result;
  return result;
}

uint64_t __52__PLBasebandEurekaLogMessage_stringForUnknownBytes___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7ED4 = result;
  return result;
}

- (id)tooShortErrorString
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __49__PLBasebandEurekaLogMessage_tooShortErrorString__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (qword_2811F7F00 != -1)
    {
      dispatch_once(&qword_2811F7F00, &block);
    }

    if (byte_2811F7ED5 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandEurekaLogMessage tooShortErrorString]", block, v14, v15, v16, v17];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandEurekaLogMessage.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandEurekaLogMessage tooShortErrorString]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:208];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"short_length!(%d)", -[PLBasebandEurekaLogMessage header](self, "header")[1]];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __49__PLBasebandEurekaLogMessage_tooShortErrorString__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7ED5 = result;
  return result;
}

@end