@interface PLBBEurekaLogMsg
+ (id)bbEuLogMsgNameLTESleepMgrStats;
- (PLBBEurekaLogMsg)init;
- (void)addPairWithKey:(id)a3 andWithVal:(id)a4;
- (void)logEventBackwardLTESleepMgrStatsWithVer:(id)a3 andML1State:(id)a4 andSES:(id)a5 andSDS:(id)a6 andStDur:(id)a7 andDSlpDur:(id)a8 andLSlpDur:(id)a9;
- (void)refreshLTESleepMgrStats;
- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5;
- (void)setError:(id)a3;
- (void)setHeaderWithSeqNum:(id)a3 andDate:(id)a4 andTimeCal:(double)a5;
- (void)setPayload:(id)a3;
@end

@implementation PLBBEurekaLogMsg

- (PLBBEurekaLogMsg)init
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__PLBBEurekaLogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6D70 != -1)
    {
      dispatch_once(&qword_2811F6D70, block);
    }

    if (_MergedGlobals_1_66 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg init]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:40];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v17.receiver = self;
  v17.super_class = PLBBEurekaLogMsg;
  v10 = [(PLBBEurekaLogMsg *)&v17 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    commonInfo = v10->_commonInfo;
    v10->_commonInfo = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    kvPairs = v10->_kvPairs;
    v10->_kvPairs = v13;

    v10->_inited = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __24__PLBBEurekaLogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_66 = result;
  return result;
}

uint64_t __33__PLBBEurekaLogMsg_setEventCode___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D61 = result;
  return result;
}

uint64_t __33__PLBBEurekaLogMsg_setEventCode___block_invoke_19(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D62 = result;
  return result;
}

- (void)setPayload:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__PLBBEurekaLogMsg_setPayload___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6D88 != -1)
    {
      dispatch_once(&qword_2811F6D88, block);
    }

    if (byte_2811F6D63 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg setPayload:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg setPayload:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:87];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v4)
  {
    [(NSMutableDictionary *)self->_commonInfo setValue:v4 forKey:@"Payload"];
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __31__PLBBEurekaLogMsg_setPayload___block_invoke_28;
    v20[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v20[4] = v12;
    if (qword_2811F6D90 != -1)
    {
      dispatch_once(&qword_2811F6D90, v20);
    }

    if (byte_2811F6D64 == 1)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad payload"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg setPayload:]"];
      [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:89];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __31__PLBBEurekaLogMsg_setPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D63 = result;
  return result;
}

uint64_t __31__PLBBEurekaLogMsg_setPayload___block_invoke_28(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D64 = result;
  return result;
}

- (void)setError:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __29__PLBBEurekaLogMsg_setError___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (qword_2811F6D98 != -1)
    {
      dispatch_once(&qword_2811F6D98, &block);
    }

    if (byte_2811F6D65 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg setError:]", block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg setError:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:100];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v4)
  {
    [(NSMutableDictionary *)self->_commonInfo setValue:v4 forKey:@"Error"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __29__PLBBEurekaLogMsg_setError___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D65 = result;
  return result;
}

- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLBBEurekaLogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F6DA0 != -1)
    {
      dispatch_once(&qword_2811F6DA0, block);
    }

    if (byte_2811F6D66 == 1)
    {
      v12 = v10;
      v13 = v9;
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg sendAndLogPLEntry:withName:withType:]"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      v17 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:117];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v54 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v13;
      v10 = v12;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v20 = objc_opt_class();
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __56__PLBBEurekaLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_40;
    v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v51[4] = v20;
    if (qword_2811F6DA8 != -1)
    {
      dispatch_once(&qword_2811F6DA8, v51);
    }

    if (byte_2811F6D67 == 1)
    {
      v21 = v10;
      v48 = v10;
      v22 = v9;
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", v9, v48];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      v26 = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:118];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v54 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v22;
      v10 = v21;
    }
  }

  v29 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v8 setObject:v29 forKeyedSubscript:@"EventCode"];

  v30 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v8 setObject:v30 forKeyedSubscript:@"Payload"];

  v31 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v8 setObject:v31 forKeyedSubscript:@"Error"];

  v32 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [v8 setObject:v32 forKeyedSubscript:@"SeqNum"];

  v33 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [v8 setObject:v33 forKeyedSubscript:@"BBDate"];

  v34 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"TimeCal"];
  [v8 setObject:v34 forKeyedSubscript:@"TimeCal"];

  v35 = [(PLBasebandMessage *)self agent];

  if (!v35 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v36 = objc_opt_class();
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __56__PLBBEurekaLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_46;
    v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v50[4] = v36;
    if (qword_2811F6DB0 != -1)
    {
      dispatch_once(&qword_2811F6DB0, v50);
    }

    if (byte_2811F6D68 == 1)
    {
      v49 = v10;
      v37 = v9;
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v39 = MEMORY[0x277D3F178];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      v41 = [v40 lastPathComponent];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v39 logMessage:v38 fromFile:v41 fromFunction:v42 fromLineNumber:129];

      v43 = PLLogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v54 = v38;
        _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v37;
      v10 = v49;
    }
  }

  v44 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  v45 = [v44 convertFromBasebandToMonotonic];
  [v8 setEntryDate:v45];

  v46 = [(PLBasebandMessage *)self agent];
  [v46 logEntry:v8];

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PLBBEurekaLogMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D66 = result;
  return result;
}

uint64_t __56__PLBBEurekaLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_40(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D67 = result;
  return result;
}

uint64_t __56__PLBBEurekaLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_46(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D68 = result;
  return result;
}

- (void)setHeaderWithSeqNum:(id)a3 andDate:(id)a4 andTimeCal:(double)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277D3F180];
  v10 = a4;
  if ([v9 debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PLBBEurekaLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F6DB8 != -1)
    {
      dispatch_once(&qword_2811F6DB8, block);
    }

    if (byte_2811F6D69 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:144];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v18 = v8;
  if (!v8)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __59__PLBBEurekaLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_52;
      v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v29[4] = v19;
      if (qword_2811F6DC0 != -1)
      {
        dispatch_once(&qword_2811F6DC0, v29);
      }

      if (byte_2811F6D6A == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to set seqNum(%@), zero it", 0];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
        v23 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
        [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:146];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32 = v20;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v18 = &unk_282C136E0;
  }

  [(NSMutableDictionary *)self->_commonInfo setObject:v18 forKey:@"SeqNum"];
  [(NSMutableDictionary *)self->_commonInfo setValue:v10 forKey:@"BBDate"];

  commonInfo = self->_commonInfo;
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  [(NSMutableDictionary *)commonInfo setValue:v27 forKey:@"TimeCal"];

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __59__PLBBEurekaLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D69 = result;
  return result;
}

uint64_t __59__PLBBEurekaLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_52(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D6A = result;
  return result;
}

- (void)addPairWithKey:(id)a3 andWithVal:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLBBEurekaLogMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F6DC8 != -1)
    {
      dispatch_once(&qword_2811F6DC8, block);
    }

    if (byte_2811F6D6B == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg addPairWithKey:andWithVal:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:161];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v6)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v15 = objc_opt_class();
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __46__PLBBEurekaLogMsg_addPairWithKey_andWithVal___block_invoke_59;
      v27 = &__block_descriptor_40_e5_v8__0lu32l8;
      v28 = v15;
      if (qword_2811F6DD0 != -1)
      {
        dispatch_once(&qword_2811F6DD0, &v24);
      }

      if (byte_2811F6D6C == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", v6, v7, v24, v25, v26, v27, v28];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg addPairWithKey:andWithVal:]"];
        [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:163];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v16;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v22 = [(PLBBEurekaLogMsg *)self kvPairs];
    [v22 setObject:v7 forKey:v6];
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __46__PLBBEurekaLogMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D6B = result;
  return result;
}

uint64_t __46__PLBBEurekaLogMsg_addPairWithKey_andWithVal___block_invoke_59(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D6C = result;
  return result;
}

- (void)refreshLTESleepMgrStats
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __43__PLBBEurekaLogMsg_refreshLTESleepMgrStats__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v4;
    if (qword_2811F6DD8 != -1)
    {
      dispatch_once(&qword_2811F6DD8, &block);
    }

    if (byte_2811F6D6D == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg refreshLTESleepMgrStats]", block, v16, v17, v18, v19];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg refreshLTESleepMgrStats]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:183];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"LTESleepMgrStats"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  v13 = [(PLBasebandMessage *)self agent];
  [v13 logEntry:v12];

  objc_autoreleasePoolPop(v3);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLBBEurekaLogMsg_refreshLTESleepMgrStats__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D6D = result;
  return result;
}

+ (id)bbEuLogMsgNameLTESleepMgrStats
{
  v36[2] = *MEMORY[0x277D85DE8];
  v35[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v33[0] = *MEMORY[0x277D3F568];
  v33[1] = v2;
  v3 = *MEMORY[0x277D3F548];
  v33[2] = *MEMORY[0x277D3F508];
  v33[3] = v3;
  v34[0] = &unk_282C1CE18;
  v34[1] = MEMORY[0x277CBEC28];
  v34[2] = MEMORY[0x277CBEC28];
  v34[3] = @"refreshRequestHandler";
  v33[4] = *MEMORY[0x277D3F558];
  v34[4] = MEMORY[0x277CBEC38];
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:5];
  v36[0] = v30;
  v35[1] = *MEMORY[0x277D3F540];
  v31[0] = @"EventCode";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_IntegerFormat];
  v32[0] = v28;
  v31[1] = @"Payload";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_StringFormat];
  v32[1] = v26;
  v31[2] = @"Error";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_BoolFormat];
  v32[2] = v24;
  v31[3] = @"Version";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_IntegerFormat];
  v32[3] = v22;
  v31[4] = @"ML1State";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v32[4] = v20;
  v31[5] = @"SleepEnableSclk";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v32[5] = v18;
  v31[6] = @"SleepDisabledSclk";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v32[6] = v16;
  v31[7] = @"StateDuration";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v32[7] = v5;
  v31[8] = @"DeepSleepDuration";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v32[8] = v7;
  v31[9] = @"LightSleepDuration";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v32[9] = v9;
  v31[10] = @"BBDate";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_DateFormat];
  v32[10] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:11];
  v36[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)logEventBackwardLTESleepMgrStatsWithVer:(id)a3 andML1State:(id)a4 andSES:(id)a5 andSDS:(id)a6 andStDur:(id)a7 andDSlpDur:(id)a8 andLSlpDur:(id)a9
{
  v42 = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277D3F180];
  v38 = a9;
  v37 = a8;
  v36 = a7;
  v35 = a6;
  v34 = a5;
  v17 = a4;
  v18 = a3;
  if ([v16 debugEnabled])
  {
    v19 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117__PLBBEurekaLogMsg_logEventBackwardLTESleepMgrStatsWithVer_andML1State_andSES_andSDS_andStDur_andDSlpDur_andLSlpDur___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v19;
    if (qword_2811F6DE0 != -1)
    {
      dispatch_once(&qword_2811F6DE0, block);
    }

    if (byte_2811F6D6E == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBEurekaLogMsg logEventBackwardLTESleepMgrStatsWithVer:andML1State:andSES:andSDS:andStDur:andDSlpDur:andLSlpDur:]"];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBEurekaLogMsg.m"];
      v23 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBEurekaLogMsg logEventBackwardLTESleepMgrStatsWithVer:andML1State:andSES:andSDS:andStDur:andDSlpDur:andLSlpDur:]"];
      [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:234];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v41 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v26 = *MEMORY[0x277D3F5C8];
  v27 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"LTESleepMgrStats"];
  v28 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v27];
  v29 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"EventCode"];
  [v28 setObject:v29 forKeyedSubscript:@"EventCode"];

  v30 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Payload"];
  [v28 setObject:v30 forKeyedSubscript:@"Payload"];

  v31 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  [v28 setObject:v31 forKeyedSubscript:@"Error"];

  [v28 setObject:v18 forKeyedSubscript:@"Version"];
  [v28 setObject:v17 forKeyedSubscript:@"ML1State"];

  [v28 setObject:v34 forKeyedSubscript:@"SleepEnableSclk"];
  [v28 setObject:v35 forKeyedSubscript:@"SleepDisabledSclk"];

  [v28 setObject:v36 forKeyedSubscript:@"StateDuration"];
  [v28 setObject:v37 forKeyedSubscript:@"DeepSleepDuration"];

  [v28 setObject:v38 forKeyedSubscript:@"LightSleepDuration"];
  [(PLBBEurekaLogMsg *)self sendAndLogPLEntry:v28 withName:@"LTESleepMgrStats" withType:v26];
  v32 = [(PLBasebandMessage *)self agent];
  [v32 modelLTESLEEPMGRPower:v28];

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __117__PLBBEurekaLogMsg_logEventBackwardLTESleepMgrStatsWithVer_andML1State_andSES_andSDS_andStDur_andDSlpDur_andLSlpDur___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6D6E = result;
  return result;
}

@end