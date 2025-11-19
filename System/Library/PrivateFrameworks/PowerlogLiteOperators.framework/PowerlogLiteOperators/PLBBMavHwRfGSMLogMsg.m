@interface PLBBMavHwRfGSMLogMsg
+ (id)entryEventBackwardDefinitionBBMavHwRfGSM;
- (PLBBMavHwRfGSMLogMsg)init;
- (id)logEventBackwardBBMavHwRfGSM;
- (void)addPairWithKey:(id)a3 andWithVal:(id)a4;
- (void)logEventBackwardGroupEntriesMav10BBHwRfWcdma;
- (void)populateEntry:(id)a3;
- (void)refreshRequest;
- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5;
- (void)setHeaderWithSeqNum:(id)a3 andDate:(id)a4 andTimeCal:(double)a5;
@end

@implementation PLBBMavHwRfGSMLogMsg

- (PLBBMavHwRfGSMLogMsg)init
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__PLBBMavHwRfGSMLogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F60B8 != -1)
    {
      dispatch_once(&qword_2811F60B8, block);
    }

    if (_MergedGlobals_1_43 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfGSMLogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfGSMLogMsg.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfGSMLogMsg init]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:43];

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
  v17.super_class = PLBBMavHwRfGSMLogMsg;
  v10 = [(PLBBMavHwRfGSMLogMsg *)&v17 init];
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

uint64_t __28__PLBBMavHwRfGSMLogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_43 = result;
  return result;
}

- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277D3F180];
  v11 = a3;
  if ([v10 debugEnabled])
  {
    v12 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PLBBMavHwRfGSMLogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v12;
    if (qword_2811F60C0 != -1)
    {
      dispatch_once(&qword_2811F60C0, block);
    }

    if (byte_2811F60A9 == 1)
    {
      v36 = v9;
      v37 = v8;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfGSMLogMsg sendAndLogPLEntry:withName:withType:]"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfGSMLogMsg.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfGSMLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:62];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v41 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v36;
      v8 = v37;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __60__PLBBMavHwRfGSMLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372;
    v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v38[4] = v19;
    if (qword_2811F60C8 != -1)
    {
      dispatch_once(&qword_2811F60C8, v38);
    }

    if (byte_2811F60AA == 1)
    {
      v20 = v9;
      v21 = v8;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", v8, v9];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfGSMLogMsg.m"];
      v25 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfGSMLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:63];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v41 = v22;
        _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = v21;
      v9 = v20;
    }
  }

  v28 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [v11 setObject:v28 forKeyedSubscript:@"SeqNum"];

  v29 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [v11 setObject:v29 forKeyedSubscript:@"BBDate"];

  v30 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"TimeCal"];
  [v11 setObject:v30 forKeyedSubscript:@"TimeCal"];

  v31 = [(PLBBMavHwRfGSMLogMsg *)self connState];
  [v11 setObject:v31 forKeyedSubscript:@"ConnStates"];

  v32 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  v33 = [v32 convertFromBasebandToMonotonic];
  [v11 setEntryDate:v33];

  v34 = [(PLBasebandMessage *)self agent];
  [v34 logEntry:v11];

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __60__PLBBMavHwRfGSMLogMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F60A9 = result;
  return result;
}

uint64_t __60__PLBBMavHwRfGSMLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F60AA = result;
  return result;
}

- (void)setHeaderWithSeqNum:(id)a3 andDate:(id)a4 andTimeCal:(double)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLBBMavHwRfGSMLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F60D0 != -1)
    {
      dispatch_once(&qword_2811F60D0, block);
    }

    if (byte_2811F60AB == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfGSMLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfGSMLogMsg.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfGSMLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:81];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v8 && v9)
  {
    [(NSMutableDictionary *)self->_commonInfo setObject:v8 forKey:@"SeqNum"];
    [(NSMutableDictionary *)self->_commonInfo setObject:v9 forKey:@"BBDate"];
    commonInfo = self->_commonInfo;
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    [(NSMutableDictionary *)commonInfo setValue:v18 forKey:@"TimeCal"];
LABEL_11:

    goto LABEL_19;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __63__PLBBMavHwRfGSMLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_381;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v19;
    if (qword_2811F60D8 != -1)
    {
      dispatch_once(&qword_2811F60D8, v26);
    }

    if (byte_2811F60AC == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to set seqNum, date, timeCal"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfGSMLogMsg.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfGSMLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v20 logMessage:v18 fromFile:v22 fromFunction:v23 fromLineNumber:83];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_11;
    }
  }

LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __63__PLBBMavHwRfGSMLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F60AB = result;
  return result;
}

uint64_t __63__PLBBMavHwRfGSMLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_381(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F60AC = result;
  return result;
}

- (void)addPairWithKey:(id)a3 andWithVal:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PLBBMavHwRfGSMLogMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F60E0 != -1)
    {
      dispatch_once(&qword_2811F60E0, block);
    }

    if (byte_2811F60AD == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfGSMLogMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfGSMLogMsg.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfGSMLogMsg addPairWithKey:andWithVal:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:99];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v15 = [MEMORY[0x277D3F180] debugEnabled];
  if (v6)
  {
    if (v15)
    {
      v16 = objc_opt_class();
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __50__PLBBMavHwRfGSMLogMsg_addPairWithKey_andWithVal___block_invoke_394;
      v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v31[4] = v16;
      if (qword_2811F60F0 != -1)
      {
        dispatch_once(&qword_2811F60F0, v31);
      }

      if (byte_2811F60AF == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", v6, v7];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfGSMLogMsg.m"];
        v20 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfGSMLogMsg addPairWithKey:andWithVal:]"];
        [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:105];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = v17;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v23 = [(PLBBMavHwRfGSMLogMsg *)self kvPairs];
    [v23 setObject:v7 forKey:v6];
LABEL_17:

    goto LABEL_25;
  }

  if (v15)
  {
    v24 = objc_opt_class();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __50__PLBBMavHwRfGSMLogMsg_addPairWithKey_andWithVal___block_invoke_388;
    v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v32[4] = v24;
    if (qword_2811F60E8 != -1)
    {
      dispatch_once(&qword_2811F60E8, v32);
    }

    if (byte_2811F60AE == 1)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: nil key for kvPair not expected, return"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfGSMLogMsg.m"];
      v27 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfGSMLogMsg addPairWithKey:andWithVal:]"];
      [v25 logMessage:v23 fromFile:v27 fromFunction:v28 fromLineNumber:102];

      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_17;
    }
  }

LABEL_25:

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLBBMavHwRfGSMLogMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F60AD = result;
  return result;
}

uint64_t __50__PLBBMavHwRfGSMLogMsg_addPairWithKey_andWithVal___block_invoke_388(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F60AE = result;
  return result;
}

uint64_t __50__PLBBMavHwRfGSMLogMsg_addPairWithKey_andWithVal___block_invoke_394(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F60AF = result;
  return result;
}

+ (id)entryEventBackwardDefinitionBBMavHwRfGSM
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_282C1C6B8;
  v22[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v21[2] = *MEMORY[0x277D3F548];
  v21[3] = v3;
  v22[2] = @"refreshRequestHandler";
  v22[3] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v24[0] = v4;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"SeqNum";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v20[0] = v6;
  v19[1] = @"BBDate";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_DateFormat];
  v20[1] = v8;
  v19[2] = @"LogDuration";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v20[2] = v10;
  v19[3] = @"ConnStates";
  v11 = *MEMORY[0x277D3F598];
  v17[0] = *MEMORY[0x277D3F5A8];
  v17[1] = v11;
  v18[0] = &unk_282C11DC0;
  v18[1] = &unk_282C11DD8;
  v17[2] = *MEMORY[0x277D3F5A0];
  v18[2] = &unk_282C11DF0;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v20[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v24[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)refreshRequest
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (id)logEventBackwardBBMavHwRfGSM
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBMavHwRfGSM"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  [(PLBBMavHwRfGSMLogMsg *)self populateEntry:v4];
  v8[0] = @"entry";
  v8[1] = @"entryKey";
  v9[0] = v4;
  v9[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)logEventBackwardGroupEntriesMav10BBHwRfWcdma
{
  v30 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__PLBBMavHwRfGSMLogMsg_logEventBackwardGroupEntriesMav10BBHwRfWcdma__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F60F8 != -1)
    {
      dispatch_once(&qword_2811F60F8, block);
    }

    if (byte_2811F60B0 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfGSMLogMsg logEventBackwardGroupEntriesMav10BBHwRfWcdma]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfGSMLogMsg.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfGSMLogMsg logEventBackwardGroupEntriesMav10BBHwRfWcdma]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:163];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLBasebandMessage *)self agent];

  if (!v10 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__PLBBMavHwRfGSMLogMsg_logEventBackwardGroupEntriesMav10BBHwRfWcdma__block_invoke_418;
    v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v24[4] = v11;
    if (qword_2811F6100 != -1)
    {
      dispatch_once(&qword_2811F6100, v24);
    }

    if (byte_2811F60B1 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfGSMLogMsg.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfGSMLogMsg logEventBackwardGroupEntriesMav10BBHwRfWcdma]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:165];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v18 = [(PLBasebandMessage *)self agent];
  v19 = [(PLBBMavHwRfGSMLogMsg *)self groupEntryKey];
  v26 = v19;
  v20 = [(PLBBMavHwRfGSMLogMsg *)self groupArrEntries];
  v27 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v22 = [(PLBBMavHwRfGSMLogMsg *)self groupEntryKey];
  [v18 logEntries:v21 withGroupID:v22];

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __68__PLBBMavHwRfGSMLogMsg_logEventBackwardGroupEntriesMav10BBHwRfWcdma__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F60B0 = result;
  return result;
}

uint64_t __68__PLBBMavHwRfGSMLogMsg_logEventBackwardGroupEntriesMav10BBHwRfWcdma__block_invoke_418(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F60B1 = result;
  return result;
}

- (void)populateEntry:(id)a3
{
  commonInfo = self->_commonInfo;
  v5 = a3;
  v6 = [(NSMutableDictionary *)commonInfo objectForKey:@"BBDate"];
  v7 = [v6 convertFromBasebandToMonotonic];
  [v5 setEntryDate:v7];

  v8 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [v5 setObject:v8 forKeyedSubscript:@"SeqNum"];

  v9 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [v5 setObject:v9 forKeyedSubscript:@"BBDate"];

  v10 = [(PLBBMavHwRfGSMLogMsg *)self logDuration];
  [v5 setObject:v10 forKeyedSubscript:@"LogDuration"];

  v11 = [(PLBBMavHwRfGSMLogMsg *)self connState];
  [v5 setObject:v11 forKeyedSubscript:@"ConnStates"];
}

@end