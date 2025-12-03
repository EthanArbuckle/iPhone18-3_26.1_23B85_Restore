@interface PLBasebandMessage
+ (id)messageWithData:(id)data;
- (BOOL)isCalibratedDateGood;
- (BOOL)isTimestampValid:(char *)valid;
- (NSDate)calibratedTimestamp;
- (NSDate)timestamp;
- (PLBasebandMessage)initWithData:(id)data;
- (void)dealloc;
- (void)logEntry:(id)entry withBody:(id)body;
- (void)logMsgAll;
- (void)logWithLogger:(id)logger;
@end

@implementation PLBasebandMessage

+ (id)messageWithData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = &bytes[2 * (*bytes == 129)];
  v6 = *v5;
  if (v6 <= 3)
  {
    goto LABEL_21;
  }

  if (v6 == 4)
  {
    v7 = *(v5 + 3);
    if ((v7 - 33) < 5)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v8 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __37__PLBasebandMessage_messageWithData___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v8;
        if (qword_2811F7DA0 != -1)
        {
          dispatch_once(&qword_2811F7DA0, block);
        }

        if (_MergedGlobals_104 == 1)
        {
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Mav health mon msgs"];
          v10 = MEMORY[0x277D3F178];
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMessage.m"];
          lastPathComponent = [v11 lastPathComponent];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBasebandMessage messageWithData:]"];
          [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:149];

          v14 = PLLogCommon();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v22 = v9;
            _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      goto LABEL_21;
    }

    if (v7 == 1)
    {
      v16 = *(v5 + 15);
      if (v16 <= 3)
      {
        if (v16 == 1 || v16 == 2 || v16 == 3)
        {
          goto LABEL_21;
        }
      }

      else if (v16 > 6)
      {
        if (v16 == 7 || v16 == 8)
        {
          goto LABEL_21;
        }
      }

      else if (v16 == 4 || v16 == 5)
      {
        goto LABEL_21;
      }

      MGIsDeviceOneOfType();
    }
  }

  else if (v6 == 255 && *(v5 + 3) != 3)
  {
    v15 = 0;
    goto LABEL_22;
  }

LABEL_21:
  v15 = objc_opt_class();
LABEL_22:
  v17 = [[v15 alloc] initWithData:dataCopy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __37__PLBasebandMessage_messageWithData___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_104 = result;
  return result;
}

- (PLBasebandMessage)initWithData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = PLBasebandMessage;
  v6 = [(PLBasebandMessage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->rawData, data);
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    apTimestamp = v7->_apTimestamp;
    v7->_apTimestamp = monotonicDate;
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PLBasebandMessage;
  [(PLBasebandMessage *)&v2 dealloc];
}

- (BOOL)isTimestampValid:(char *)valid
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __38__PLBasebandMessage_isTimestampValid___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v4;
    if (qword_2811F7DA8 != -1)
    {
      dispatch_once(&qword_2811F7DA8, &block);
    }

    if (byte_2811F7D99 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMessage isTimestampValid:]", block, v14, v15, v16, v17];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMessage.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMessage isTimestampValid:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:205];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  result = bswap64(*valid) != 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __38__PLBasebandMessage_isTimestampValid___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D99 = result;
  return result;
}

- (NSDate)timestamp
{
  v30 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__PLBasebandMessage_timestamp__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F7DB0 != -1)
    {
      dispatch_once(&qword_2811F7DB0, block);
    }

    if (byte_2811F7D9A == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMessage timestamp]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMessage.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMessage timestamp]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:253];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  bytes = [(NSData *)self->rawData bytes];
  v11 = &bytes[2 * (*bytes == 129)];
  v12 = *v11;
  v13 = v12 > 8;
  v14 = (1 << v12) & 0x116;
  if (v13 || v14 == 0)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v18 = objc_opt_class();
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __30__PLBasebandMessage_timestamp__block_invoke_391;
      v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v27[4] = v18;
      if (qword_2811F7DB8 != -1)
      {
        dispatch_once(&qword_2811F7DB8, v27);
      }

      if (byte_2811F7D9B == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown BB msg type, ret current date"];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMessage.m"];
        lastPathComponent2 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMessage timestamp]"];
        [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:280];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v19;
          _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    *buf = *(v11 + 5);
    if ([(PLBasebandMessage *)self isTimestampValid:buf])
    {
      v16 = 5 * (*buf >> 16) + *buf / 0x2667u + 2;
      monotonicDate = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(1000 * ((v16 >> 2) - 1000 * (((v16 >> 2) * 0x4189374BC6A7F0uLL) >> 64))) / 1000000.0 + (((v16 * 0x10624DD2F1A9FCuLL) >> 64) + 315964800)];
      goto LABEL_22;
    }
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
LABEL_22:
  v25 = *MEMORY[0x277D85DE8];

  return monotonicDate;
}

uint64_t __30__PLBasebandMessage_timestamp__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D9A = result;
  return result;
}

uint64_t __30__PLBasebandMessage_timestamp__block_invoke_391(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D9B = result;
  return result;
}

- (NSDate)calibratedTimestamp
{
  v24 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __40__PLBasebandMessage_calibratedTimestamp__block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v3;
    if (qword_2811F7DC0 != -1)
    {
      dispatch_once(&qword_2811F7DC0, &block);
    }

    if (byte_2811F7D9C == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMessage calibratedTimestamp]", block, v18, v19, v20, v21];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMessage.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMessage calibratedTimestamp]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:294];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = MEMORY[0x277CBEAA8];
  [(PLBasebandMessage *)self timeCalibration];
  v12 = v11;
  timestamp = [(PLBasebandMessage *)self timestamp];
  v14 = [v10 dateWithTimeInterval:timestamp sinceDate:v12];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __40__PLBasebandMessage_calibratedTimestamp__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D9C = result;
  return result;
}

- (BOOL)isCalibratedDateGood
{
  v24 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __41__PLBasebandMessage_isCalibratedDateGood__block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v3;
    if (qword_2811F7DC8 != -1)
    {
      dispatch_once(&qword_2811F7DC8, &block);
    }

    if (byte_2811F7D9D == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMessage isCalibratedDateGood]", block, v18, v19, v20, v21];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMessage.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMessage isCalibratedDateGood]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:303];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  calibratedTimestamp = [(PLBasebandMessage *)self calibratedTimestamp];
  apTimestamp = [(PLBasebandMessage *)self apTimestamp];
  [calibratedTimestamp timeIntervalSinceDate:apTimestamp];
  v13 = v12;

  result = v13 >= 0.0 && v13 <= 60.0 || v13 < 0.0 && v13 > -86400.0;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __41__PLBasebandMessage_isCalibratedDateGood__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D9D = result;
  return result;
}

- (void)logWithLogger:(id)logger
{
  bytes = [(NSData *)self->rawData bytes];
  if (*bytes == 129)
  {
    v5 = bytes;
    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedChar:bytes[1]];
    seqNum = self->_seqNum;
    self->_seqNum = v6;

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5[2]];
    msgType = self->_msgType;
    self->_msgType = v8;
  }

  v10 = [(NSData *)self->rawData description];
  pload = self->_pload;
  self->_pload = v10;

  [(PLBasebandMessage *)self logEntry:@"Baseband Log" withBody:0];
}

- (void)logEntry:(id)entry withBody:(id)body
{
  if (![(PLBasebandMessage *)self isCalibratedDateGood:entry])
  {
    apTimestamp = [(PLBasebandMessage *)self apTimestamp];
    timestamp = [(PLBasebandMessage *)self timestamp];
    [apTimestamp timeIntervalSinceDate:timestamp];
    v8 = v7;

    [(PLBasebandMessage *)self setTimeCalibration:v8];
  }

  timestamp2 = [(PLBasebandMessage *)self timestamp];
  date = self->_date;
  self->_date = timestamp2;

  [(PLBasebandMessage *)self timeCalibration];
  self->_timeCal = v11;
  v12 = objc_opt_class();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PLBasebandMessage_logEntry_withBody___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = v12;
  if (qword_2811F7DD0 != -1)
  {
    dispatch_once(&qword_2811F7DD0, block);
  }

  if (byte_2811F7D9E == 1)
  {
    [(PLBasebandMessage *)self logMsgAll];
  }
}

uint64_t __39__PLBasebandMessage_logEntry_withBody___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D9E = result;
  return result;
}

- (void)logMsgAll
{
  v24 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __30__PLBasebandMessage_logMsgAll__block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v3;
    if (qword_2811F7DD8 != -1)
    {
      dispatch_once(&qword_2811F7DD8, &block);
    }

    if (byte_2811F7D9F == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBasebandMessage logMsgAll]", block, v18, v19, v20, v21];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBasebandMessage.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBasebandMessage logMsgAll]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:419];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = objc_alloc_init(PLBBMsgAll);
  agent = [(PLBasebandMessage *)self agent];
  [(PLBBMsgRoot *)v10 setAgent:agent];

  pload = [(PLBasebandMessage *)self pload];
  [(PLBBMsgAll *)v10 setPayload:pload];

  seqNum = [(PLBasebandMessage *)self seqNum];
  [(PLBBMsgAll *)v10 setSeqNum:seqNum];

  date = [(PLBasebandMessage *)self date];
  [(PLBBMsgAll *)v10 setBbDate:date];

  [(PLBBMsgAll *)v10 setError:@"no error"];
  msgType = [(PLBasebandMessage *)self msgType];
  [(PLBBMsgRoot *)v10 setMsgType:msgType];

  [(PLBBMsgAll *)v10 logEventNoneBBMsgAll];
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __30__PLBasebandMessage_logMsgAll__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F7D9F = result;
  return result;
}

@end