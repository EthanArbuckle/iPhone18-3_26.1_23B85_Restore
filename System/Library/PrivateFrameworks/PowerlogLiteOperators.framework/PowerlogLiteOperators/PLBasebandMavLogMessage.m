@interface PLBasebandMavLogMessage
- (BOOL)parseData:(id)a3;
- (PLBasebandMavLogMessage)initWithData:(id)a3;
- (id)tooShortErrorString;
- (void)logWithLogger:(id)a3;
@end

@implementation PLBasebandMavLogMessage

- (PLBasebandMavLogMessage)initWithData:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLBasebandMavLogMessage_initWithData___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7D30 != -1)
    {
      dispatch_once(&qword_2811F7D30, block);
    }

    if (_MergedGlobals_102 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMavLogMessage initWithData:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMavLogMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMavLogMessage initWithData:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:22];

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
  v18.super_class = PLBasebandMavLogMessage;
  v12 = [(PLBasebandMessage *)&v18 initWithData:v4];
  v13 = v12;
  if (!v12 || (v12->_header = 0, payload = v12->_payload, v12->_payload = 0, payload, v15 = 0, [(PLBasebandMavLogMessage *)v13 parseData:v4]))
  {
    v15 = v13;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __40__PLBasebandMavLogMessage_initWithData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_102 = result;
  return result;
}

- (BOOL)parseData:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __37__PLBasebandMavLogMessage_parseData___block_invoke;
    v27 = &__block_descriptor_40_e5_v8__0lu32l8;
    v28 = v5;
    if (qword_2811F7D38 != -1)
    {
      dispatch_once(&qword_2811F7D38, &block);
    }

    if (byte_2811F7D29 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMavLogMessage parseData:]", block, v25, v26, v27, v28];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMavLogMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMavLogMessage parseData:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:35];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = [v4 bytes];
  v13 = &v12[2 * (*v12 == 129)];
  [(PLBasebandMavLogMessage *)self setHeader:v13];
  v14 = v13 + 13;
  v15 = [(PLBasebandMavLogMessage *)self header][1];
  v16 = v15 - 12;
  if (v15 >= 0xD && (v17 = &v14[v16 - [v4 bytes]], v17 <= objc_msgSend(v4, "length")))
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:v16];
    [(PLBasebandMavLogMessage *)self setPayload:v18];
    v19 = 1;
  }

  else
  {
    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = &v14[v16 - [v4 bytes]];
      v23 = [v4 length];
      *buf = 134218498;
      v30 = v22;
      v31 = 2048;
      v32 = v23;
      v33 = 2080;
      v34 = "[PLBasebandMavLogMessage parseData:]";
      _os_log_error_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_ERROR, "Expected data length %lu but got %lu in %s", buf, 0x20u);
    }

    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __37__PLBasebandMavLogMessage_parseData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D29 = result;
  return result;
}

- (void)logWithLogger:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLBasebandMavLogMessage_logWithLogger___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F7D40 != -1)
    {
      dispatch_once(&qword_2811F7D40, block);
    }

    if (byte_2811F7D2A == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMavLogMessage logWithLogger:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMavLogMessage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMavLogMessage logWithLogger:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:67];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v13.receiver = self;
  v13.super_class = PLBasebandMavLogMessage;
  [(PLBasebandMessage *)&v13 logWithLogger:v4];
  [(PLBasebandMavLogMessage *)self header];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLBasebandMavLogMessage_logWithLogger___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D2A = result;
  return result;
}

uint64_t __49__PLBasebandMavLogMessage_stringForUnknownBytes___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D2B = result;
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
    v15 = __46__PLBasebandMavLogMessage_tooShortErrorString__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (qword_2811F7D50 != -1)
    {
      dispatch_once(&qword_2811F7D50, &block);
    }

    if (byte_2811F7D2C == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMavLogMessage tooShortErrorString]", block, v14, v15, v16, v17];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMavLogMessage.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMavLogMessage tooShortErrorString]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:125];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"short_length!(%d)", -[PLBasebandMavLogMessage header](self, "header")[1]];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __46__PLBasebandMavLogMessage_tooShortErrorString__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D2C = result;
  return result;
}

@end