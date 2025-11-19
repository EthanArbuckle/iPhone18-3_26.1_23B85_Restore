@interface PLBBMavHwRfLTELogMsg
+ (id)entryEventBackwardDefinitionBBMav10HwRfLTE;
+ (id)entryEventBackwardDefinitionBBMav13HwRfLTE;
- (PLBBMavHwRfLTELogMsg)init;
- (id)logEventBackwardBBMav10HwRfLTE;
- (id)logEventBackwardBBMav13HwRfLTE;
- (void)addPairWithKey:(id)a3 andWithVal:(id)a4;
- (void)populateEntry:(id)a3;
- (void)populateMav13Entry:(id)a3;
- (void)refreshMav10BBRfAllRats;
- (void)refreshMav13BBRfLTE;
- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5;
- (void)setHeaderWithSeqNum:(id)a3 andDate:(id)a4 andTimeCal:(double)a5;
@end

@implementation PLBBMavHwRfLTELogMsg

- (PLBBMavHwRfLTELogMsg)init
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__PLBBMavHwRfLTELogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6CE8 != -1)
    {
      dispatch_once(&qword_2811F6CE8, block);
    }

    if (_MergedGlobals_1_64 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfLTELogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg init]"];
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
  v17.super_class = PLBBMavHwRfLTELogMsg;
  v10 = [(PLBBMsgRoot *)&v17 init];
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

uint64_t __28__PLBBMavHwRfLTELogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_64 = result;
  return result;
}

- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PLBBMavHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F6CF0 != -1)
    {
      dispatch_once(&qword_2811F6CF0, block);
    }

    if (byte_2811F6CD9 == 1)
    {
      v45 = v10;
      v12 = v9;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:62];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v12;
      v10 = v45;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __60__PLBBMavHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372;
    v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v48[4] = v19;
    if (qword_2811F6CF8 != -1)
    {
      dispatch_once(&qword_2811F6CF8, v48);
    }

    if (byte_2811F6CDA == 1)
    {
      v20 = v10;
      v44 = v10;
      v21 = v9;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", v9, v44];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      v25 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:63];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v22;
        _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v21;
      v10 = v20;
    }
  }

  v28 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [v8 setObject:v28 forKeyedSubscript:@"SeqNum"];

  v29 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [v8 setObject:v29 forKeyedSubscript:@"BBDate"];

  v30 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"TimeCal"];
  [v8 setObject:v30 forKeyedSubscript:@"TimeCal"];

  v31 = [(PLBBMsgRoot *)self agent];

  if (!v31 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __60__PLBBMavHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v32;
    if (qword_2811F6D00 != -1)
    {
      dispatch_once(&qword_2811F6D00, v47);
    }

    if (byte_2811F6CDB == 1)
    {
      v46 = v10;
      v33 = v9;
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      v37 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      [v35 logMessage:v34 fromFile:v37 fromFunction:v38 fromLineNumber:70];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v34;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v33;
      v10 = v46;
    }
  }

  v40 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  v41 = [v40 convertFromBasebandToMonotonic];
  [v8 setEntryDate:v41];

  v42 = [(PLBBMsgRoot *)self agent];
  [v42 logEntry:v8];

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __60__PLBBMavHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6CD9 = result;
  return result;
}

uint64_t __60__PLBBMavHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6CDA = result;
  return result;
}

uint64_t __60__PLBBMavHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6CDB = result;
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
    block[2] = __63__PLBBMavHwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F6D08 != -1)
    {
      dispatch_once(&qword_2811F6D08, block);
    }

    if (byte_2811F6CDC == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:83];

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
    v26[2] = __63__PLBBMavHwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_384;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v19;
    if (qword_2811F6D10 != -1)
    {
      dispatch_once(&qword_2811F6D10, v26);
    }

    if (byte_2811F6CDD == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to set seqNum, date, timeCal"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v20 logMessage:v18 fromFile:v22 fromFunction:v23 fromLineNumber:85];

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

uint64_t __63__PLBBMavHwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6CDC = result;
  return result;
}

uint64_t __63__PLBBMavHwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_384(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6CDD = result;
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
    block[2] = __50__PLBBMavHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F6D18 != -1)
    {
      dispatch_once(&qword_2811F6D18, block);
    }

    if (byte_2811F6CDE == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfLTELogMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg addPairWithKey:andWithVal:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:101];

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
      v31[2] = __50__PLBBMavHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_397;
      v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v31[4] = v16;
      if (qword_2811F6D28 != -1)
      {
        dispatch_once(&qword_2811F6D28, v31);
      }

      if (byte_2811F6CE0 == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", v6, v7];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
        v20 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg addPairWithKey:andWithVal:]"];
        [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:107];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = v17;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v23 = [(PLBBMavHwRfLTELogMsg *)self kvPairs];
    [v23 setObject:v7 forKey:v6];
LABEL_17:

    goto LABEL_25;
  }

  if (v15)
  {
    v24 = objc_opt_class();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __50__PLBBMavHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_391;
    v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v32[4] = v24;
    if (qword_2811F6D20 != -1)
    {
      dispatch_once(&qword_2811F6D20, v32);
    }

    if (byte_2811F6CDF == 1)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: nil key for kvPair not expected, return"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      v27 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg addPairWithKey:andWithVal:]"];
      [v25 logMessage:v23 fromFile:v27 fromFunction:v28 fromLineNumber:104];

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

uint64_t __50__PLBBMavHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6CDE = result;
  return result;
}

uint64_t __50__PLBBMavHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_391(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6CDF = result;
  return result;
}

uint64_t __50__PLBBMavHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_397(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6CE0 = result;
  return result;
}

+ (id)entryEventBackwardDefinitionBBMav10HwRfLTE
{
  v47[2] = *MEMORY[0x277D85DE8];
  v46[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v44[0] = *MEMORY[0x277D3F568];
  v44[1] = v2;
  v45[0] = &unk_282C1CDF8;
  v45[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v44[2] = *MEMORY[0x277D3F548];
  v44[3] = v3;
  v45[2] = @"refreshRequestHandler";
  v45[3] = MEMORY[0x277CBEC38];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];
  v47[0] = v26;
  v46[1] = *MEMORY[0x277D3F540];
  v42[0] = @"SeqNum";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v43[0] = v24;
  v42[1] = @"BBDate";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_DateFormat];
  v43[1] = v22;
  v42[2] = @"LogDuration";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_RealFormat];
  v43[2] = v20;
  v42[3] = @"DupMode";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v43[3] = v18;
  v42[4] = @"CAFreqInfo";
  v5 = *MEMORY[0x277D3F598];
  v39[0] = *MEMORY[0x277D3F5A8];
  v4 = v39[0];
  v39[1] = v5;
  v41[0] = &unk_282C135C0;
  v41[1] = &unk_282C135D8;
  v40 = *MEMORY[0x277D3F5A0];
  v6 = v40;
  v41[2] = &unk_282C135F0;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v39 count:3];
  v43[4] = v17;
  v42[5] = @"C0TBSzArr";
  v37[0] = v4;
  v37[1] = v5;
  v38[0] = &unk_282C135C0;
  v38[1] = &unk_282C13608;
  v37[2] = v6;
  v38[2] = &unk_282C135F0;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  v43[5] = v16;
  v42[6] = @"C1TBSzArr";
  v35[0] = v4;
  v35[1] = v5;
  v36[0] = &unk_282C135C0;
  v36[1] = &unk_282C13608;
  v35[2] = v6;
  v36[2] = &unk_282C135F0;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
  v43[6] = v15;
  v42[7] = @"TxPwrBktArr";
  v33[0] = v4;
  v33[1] = v5;
  v34[0] = &unk_282C135C0;
  v34[1] = &unk_282C13620;
  v33[2] = v6;
  v34[2] = &unk_282C135F0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v43[7] = v7;
  v42[8] = @"CASCCStateArr";
  v31[0] = v4;
  v31[1] = v5;
  v32[0] = &unk_282C135C0;
  v32[1] = &unk_282C135D8;
  v31[2] = v6;
  v32[2] = &unk_282C135F0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v43[8] = v8;
  v42[9] = @"kRfActRxTxArr";
  v29[0] = v4;
  v29[1] = v5;
  v30[0] = &unk_282C135C0;
  v30[1] = &unk_282C13638;
  v29[2] = v6;
  v30[2] = &unk_282C135F0;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v43[9] = v9;
  v42[10] = @"SleepStateArr";
  v27[0] = v4;
  v27[1] = v5;
  v28[0] = &unk_282C135C0;
  v28[1] = &unk_282C13638;
  v27[2] = v6;
  v28[2] = &unk_282C135F0;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v43[10] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:11];
  v47[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)refreshMav10BBRfAllRats
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (id)logEventBackwardBBMav10HwRfLTE
{
  v24 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __54__PLBBMavHwRfLTELogMsg_logEventBackwardBBMav10HwRfLTE__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v3;
    if (qword_2811F6D30 != -1)
    {
      dispatch_once(&qword_2811F6D30, &block);
    }

    if (byte_2811F6CE1 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfLTELogMsg logEventBackwardBBMav10HwRfLTE]", block, v16, v17, v18, v19];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg logEventBackwardBBMav10HwRfLTE]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:196];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBMavHwRfLTE"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  [(PLBBMavHwRfLTELogMsg *)self populateEntry:v11];
  v20[0] = @"entry";
  v20[1] = @"entryKey";
  v21[0] = v11;
  v21[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __54__PLBBMavHwRfLTELogMsg_logEventBackwardBBMav10HwRfLTE__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6CE1 = result;
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

  v10 = [(PLBBMavHwRfLTELogMsg *)self logDuration];
  [v5 setObject:v10 forKeyedSubscript:@"LogDuration"];

  v11 = [(PLBBMavHwRfLTELogMsg *)self dupMode];
  [v5 setObject:v11 forKeyedSubscript:@"DupMode"];

  v12 = [(PLBBMavHwRfLTELogMsg *)self caFreqInfo];
  [v5 setObject:v12 forKeyedSubscript:@"CAFreqInfo"];

  v13 = [(PLBBMavHwRfLTELogMsg *)self dlC0TBSzCnt];
  [v5 setObject:v13 forKeyedSubscript:@"C0TBSzArr"];

  v14 = [(PLBBMavHwRfLTELogMsg *)self dlC1TBSzCnt];
  [v5 setObject:v14 forKeyedSubscript:@"C1TBSzArr"];

  v15 = [(PLBBMavHwRfLTELogMsg *)self txPwrCnt];
  [v5 setObject:v15 forKeyedSubscript:@"TxPwrBktArr"];

  v16 = [(PLBBMavHwRfLTELogMsg *)self caSCCCnt];
  [v5 setObject:v16 forKeyedSubscript:@"CASCCStateArr"];

  v17 = [(PLBBMavHwRfLTELogMsg *)self actRxTxCnt];
  [v5 setObject:v17 forKeyedSubscript:@"kRfActRxTxArr"];

  v18 = [(PLBBMavHwRfLTELogMsg *)self sleepStateCnt];
  [v5 setObject:v18 forKeyedSubscript:@"SleepStateArr"];
}

+ (id)entryEventBackwardDefinitionBBMav13HwRfLTE
{
  v77[2] = *MEMORY[0x277D85DE8];
  v76[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v74[0] = *MEMORY[0x277D3F568];
  v74[1] = v2;
  v75[0] = &unk_282C1CE08;
  v75[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v74[2] = *MEMORY[0x277D3F548];
  v74[3] = v3;
  v75[2] = @"refreshMav13BBRfLTE";
  v75[3] = MEMORY[0x277CBEC38];
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:4];
  v77[0] = v36;
  v76[1] = *MEMORY[0x277D3F540];
  v72[0] = @"SeqNum";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_IntegerFormat];
  v73[0] = v34;
  v72[1] = @"BBDate";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_DateFormat];
  v73[1] = v32;
  v72[2] = @"LogDuration";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_RealFormat];
  v73[2] = v30;
  v72[3] = @"DupMode";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_IntegerFormat];
  v73[3] = v28;
  v72[4] = @"CAFreqInfo";
  v5 = *MEMORY[0x277D3F598];
  v69[0] = *MEMORY[0x277D3F5A8];
  v4 = v69[0];
  v69[1] = v5;
  v71[0] = &unk_282C135C0;
  v71[1] = &unk_282C135D8;
  v70 = *MEMORY[0x277D3F5A0];
  v6 = v70;
  v71[2] = &unk_282C135F0;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v69 count:3];
  v73[4] = v27;
  v72[5] = @"C0TBSzArr";
  v67[0] = v4;
  v67[1] = v5;
  v68[0] = &unk_282C135C0;
  v68[1] = &unk_282C13650;
  v67[2] = v6;
  v68[2] = &unk_282C135F0;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:3];
  v73[5] = v26;
  v72[6] = @"C1TBSzArr";
  v65[0] = v4;
  v65[1] = v5;
  v66[0] = &unk_282C135C0;
  v66[1] = &unk_282C13650;
  v65[2] = v6;
  v66[2] = &unk_282C135F0;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
  v73[6] = v25;
  v72[7] = @"TxPwrBktArr";
  v63[0] = v4;
  v63[1] = v5;
  v64[0] = &unk_282C135C0;
  v64[1] = &unk_282C13620;
  v63[2] = v6;
  v64[2] = &unk_282C135F0;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:3];
  v73[7] = v24;
  v72[8] = @"CASCCStateArr";
  v61[0] = v4;
  v61[1] = v5;
  v62[0] = &unk_282C135C0;
  v62[1] = &unk_282C135D8;
  v61[2] = v6;
  v62[2] = &unk_282C135F0;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:3];
  v73[8] = v23;
  v72[9] = @"RfActRxTxPCCArr";
  v59[0] = v4;
  v59[1] = v5;
  v60[0] = &unk_282C135C0;
  v60[1] = &unk_282C13668;
  v59[2] = v6;
  v60[2] = &unk_282C135F0;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:3];
  v73[9] = v22;
  v72[10] = @"RfActRxTxSCCArr";
  v57[0] = v4;
  v57[1] = v5;
  v58[0] = &unk_282C135C0;
  v58[1] = &unk_282C13668;
  v57[2] = v6;
  v58[2] = &unk_282C135F0;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
  v73[10] = v21;
  v72[11] = @"RfActRxTxPCCSCCArr";
  v55[0] = v4;
  v55[1] = v5;
  v56[0] = &unk_282C135C0;
  v56[1] = &unk_282C13668;
  v55[2] = v6;
  v56[2] = &unk_282C135F0;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
  v73[11] = v20;
  v72[12] = @"SleepStateIdleArr";
  v53[0] = v4;
  v53[1] = v5;
  v54[0] = &unk_282C135C0;
  v54[1] = &unk_282C13680;
  v53[2] = v6;
  v54[2] = &unk_282C135F0;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
  v73[12] = v19;
  v72[13] = @"SleepStateConnArr";
  v51[0] = v4;
  v51[1] = v5;
  v52[0] = &unk_282C135C0;
  v52[1] = &unk_282C13680;
  v51[2] = v6;
  v52[2] = &unk_282C135F0;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
  v73[13] = v18;
  v72[14] = @"RfRSRPIdleArr";
  v49[0] = v4;
  v49[1] = v5;
  v50[0] = &unk_282C135C0;
  v50[1] = &unk_282C13638;
  v49[2] = v6;
  v50[2] = &unk_282C135F0;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
  v73[14] = v17;
  v72[15] = @"RfRSRPConnArr";
  v47[0] = v4;
  v47[1] = v5;
  v48[0] = &unk_282C135C0;
  v48[1] = &unk_282C13638;
  v47[2] = v6;
  v48[2] = &unk_282C135F0;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
  v73[15] = v16;
  v72[16] = @"RfSINRIdleArr";
  v45[0] = v4;
  v45[1] = v5;
  v46[0] = &unk_282C135C0;
  v46[1] = &unk_282C13638;
  v45[2] = v6;
  v46[2] = &unk_282C135F0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
  v73[16] = v7;
  v72[17] = @"RfSINRConnArr";
  v43[0] = v4;
  v43[1] = v5;
  v44[0] = &unk_282C135C0;
  v44[1] = &unk_282C13638;
  v43[2] = v6;
  v44[2] = &unk_282C135F0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];
  v73[17] = v8;
  v72[18] = @"RfARXArr";
  v41[0] = v4;
  v41[1] = v5;
  v42[0] = &unk_282C135C0;
  v42[1] = &unk_282C13698;
  v41[2] = v6;
  v42[2] = &unk_282C135F0;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
  v73[18] = v9;
  v72[19] = @"RfNLICArr";
  v39[0] = v4;
  v39[1] = v5;
  v40[0] = &unk_282C135C0;
  v40[1] = &unk_282C136B0;
  v39[2] = v6;
  v40[2] = &unk_282C135F0;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:3];
  v73[19] = v10;
  v72[20] = @"RfBPEArr";
  v37[0] = v4;
  v37[1] = v5;
  v38[0] = &unk_282C135C0;
  v38[1] = &unk_282C13668;
  v37[2] = v6;
  v38[2] = &unk_282C135F0;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  v73[20] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:21];
  v77[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)refreshMav13BBRfLTE
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (id)logEventBackwardBBMav13HwRfLTE
{
  v24 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __54__PLBBMavHwRfLTELogMsg_logEventBackwardBBMav13HwRfLTE__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v3;
    if (qword_2811F6D38 != -1)
    {
      dispatch_once(&qword_2811F6D38, &block);
    }

    if (byte_2811F6CE2 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfLTELogMsg logEventBackwardBBMav13HwRfLTE]", block, v16, v17, v18, v19];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg logEventBackwardBBMav13HwRfLTE]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:349];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBMavHwRfLTE"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  [(PLBBMavHwRfLTELogMsg *)self populateMav13Entry:v11];
  v20[0] = @"entry";
  v20[1] = @"entryKey";
  v21[0] = v11;
  v21[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __54__PLBBMavHwRfLTELogMsg_logEventBackwardBBMav13HwRfLTE__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6CE2 = result;
  return result;
}

- (void)populateMav13Entry:(id)a3
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

  v10 = [(PLBBMavHwRfLTELogMsg *)self logDuration];
  [v5 setObject:v10 forKeyedSubscript:@"LogDuration"];

  v11 = [(PLBBMavHwRfLTELogMsg *)self dupMode];
  [v5 setObject:v11 forKeyedSubscript:@"DupMode"];

  v12 = [(PLBBMavHwRfLTELogMsg *)self caFreqInfo];
  [v5 setObject:v12 forKeyedSubscript:@"CAFreqInfo"];

  v13 = [(PLBBMavHwRfLTELogMsg *)self dlC0TBSzCnt];
  [v5 setObject:v13 forKeyedSubscript:@"C0TBSzArr"];

  v14 = [(PLBBMavHwRfLTELogMsg *)self dlC1TBSzCnt];
  [v5 setObject:v14 forKeyedSubscript:@"C1TBSzArr"];

  v15 = [(PLBBMavHwRfLTELogMsg *)self txPwrCnt];
  [v5 setObject:v15 forKeyedSubscript:@"TxPwrBktArr"];

  v16 = [(PLBBMavHwRfLTELogMsg *)self caSCCCnt];
  [v5 setObject:v16 forKeyedSubscript:@"CASCCStateArr"];

  v17 = [(PLBBMavHwRfLTELogMsg *)self actRxTxPriCCCnt];
  [v5 setObject:v17 forKeyedSubscript:@"RfActRxTxPCCArr"];

  v18 = [(PLBBMavHwRfLTELogMsg *)self actRxTxSecCCCnt];
  [v5 setObject:v18 forKeyedSubscript:@"RfActRxTxSCCArr"];

  v19 = [(PLBBMavHwRfLTELogMsg *)self actRxTxPriSecCCCnt];
  [v5 setObject:v19 forKeyedSubscript:@"RfActRxTxPCCSCCArr"];

  v20 = [(PLBBMavHwRfLTELogMsg *)self sleepStateIdleCnt];
  [v5 setObject:v20 forKeyedSubscript:@"SleepStateIdleArr"];

  v21 = [(PLBBMavHwRfLTELogMsg *)self sleepStateConnCnt];
  [v5 setObject:v21 forKeyedSubscript:@"SleepStateConnArr"];

  v22 = [(PLBBMavHwRfLTELogMsg *)self rsrpIdleCnt];
  [v5 setObject:v22 forKeyedSubscript:@"RfRSRPIdleArr"];

  v23 = [(PLBBMavHwRfLTELogMsg *)self rsrpConnCnt];
  [v5 setObject:v23 forKeyedSubscript:@"RfRSRPConnArr"];

  v24 = [(PLBBMavHwRfLTELogMsg *)self sinrIdleCnt];
  [v5 setObject:v24 forKeyedSubscript:@"RfSINRIdleArr"];

  v25 = [(PLBBMavHwRfLTELogMsg *)self sinrConnCnt];
  [v5 setObject:v25 forKeyedSubscript:@"RfSINRConnArr"];

  v26 = [(PLBBMavHwRfLTELogMsg *)self arxStateCnt];
  [v5 setObject:v26 forKeyedSubscript:@"RfARXArr"];

  v27 = [(PLBBMavHwRfLTELogMsg *)self nlicStateCnt];
  [v5 setObject:v27 forKeyedSubscript:@"RfNLICArr"];

  v28 = [(PLBBMavHwRfLTELogMsg *)self bpeStats];
  [v5 setObject:v28 forKeyedSubscript:@"RfBPEArr"];
}

@end