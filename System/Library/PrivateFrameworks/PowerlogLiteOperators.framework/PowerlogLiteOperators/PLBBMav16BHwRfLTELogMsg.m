@interface PLBBMav16BHwRfLTELogMsg
+ (id)entryEventBackwardDefinitionBBMav16BHwRfLTE;
- (PLBBMav16BHwRfLTELogMsg)init;
- (id)logEventBackwardBBMav16BHwRfLTE;
- (void)addPairWithKey:(id)a3 andWithVal:(id)a4;
- (void)populateMav16BEntry:(id)a3;
- (void)refreshMav16BBBRfLTE;
- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5;
- (void)setHeaderWithSeqNum:(id)a3 andDate:(id)a4 andTimeCal:(double)a5;
@end

@implementation PLBBMav16BHwRfLTELogMsg

- (PLBBMav16BHwRfLTELogMsg)init
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__PLBBMav16BHwRfLTELogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F40E0 != -1)
    {
      dispatch_once(&qword_2811F40E0, block);
    }

    if (_MergedGlobals_1_15 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwRfLTELogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg init]"];
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
  v17.super_class = PLBBMav16BHwRfLTELogMsg;
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

uint64_t __31__PLBBMav16BHwRfLTELogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_15 = result;
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
    block[2] = __63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F40E8 != -1)
    {
      dispatch_once(&qword_2811F40E8, block);
    }

    if (byte_2811F40D1 == 1)
    {
      v45 = v10;
      v12 = v9;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
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
    v48[2] = __63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372;
    v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v48[4] = v19;
    if (qword_2811F40F0 != -1)
    {
      dispatch_once(&qword_2811F40F0, v48);
    }

    if (byte_2811F40D2 == 1)
    {
      v20 = v10;
      v44 = v10;
      v21 = v9;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", v9, v44];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      v25 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
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
    v47[2] = __63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v32;
    if (qword_2811F40F8 != -1)
    {
      dispatch_once(&qword_2811F40F8, v47);
    }

    if (byte_2811F40D3 == 1)
    {
      v46 = v10;
      v33 = v9;
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      v37 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
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

uint64_t __63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D1 = result;
  return result;
}

uint64_t __63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D2 = result;
  return result;
}

uint64_t __63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D3 = result;
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
    block[2] = __66__PLBBMav16BHwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F4100 != -1)
    {
      dispatch_once(&qword_2811F4100, block);
    }

    if (byte_2811F40D4 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
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
    v26[2] = __66__PLBBMav16BHwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_384;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v19;
    if (qword_2811F4108 != -1)
    {
      dispatch_once(&qword_2811F4108, v26);
    }

    if (byte_2811F40D5 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to set seqNum, date, timeCal"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
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

uint64_t __66__PLBBMav16BHwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D4 = result;
  return result;
}

uint64_t __66__PLBBMav16BHwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_384(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D5 = result;
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
    block[2] = __53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F4110 != -1)
    {
      dispatch_once(&qword_2811F4110, block);
    }

    if (byte_2811F40D6 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwRfLTELogMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg addPairWithKey:andWithVal:]"];
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
      v31[2] = __53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_397;
      v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v31[4] = v16;
      if (qword_2811F4120 != -1)
      {
        dispatch_once(&qword_2811F4120, v31);
      }

      if (byte_2811F40D8 == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", v6, v7];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
        v20 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg addPairWithKey:andWithVal:]"];
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

    v23 = [(PLBBMav16BHwRfLTELogMsg *)self kvPairs];
    [v23 setObject:v7 forKey:v6];
LABEL_17:

    goto LABEL_25;
  }

  if (v15)
  {
    v24 = objc_opt_class();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_391;
    v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v32[4] = v24;
    if (qword_2811F4118 != -1)
    {
      dispatch_once(&qword_2811F4118, v32);
    }

    if (byte_2811F40D7 == 1)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: nil key for kvPair not expected, return"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      v27 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg addPairWithKey:andWithVal:]"];
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

uint64_t __53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D6 = result;
  return result;
}

uint64_t __53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_391(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D7 = result;
  return result;
}

uint64_t __53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_397(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D8 = result;
  return result;
}

+ (id)entryEventBackwardDefinitionBBMav16BHwRfLTE
{
  v124[2] = *MEMORY[0x277D85DE8];
  v123[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v121[0] = *MEMORY[0x277D3F568];
  v121[1] = v2;
  v122[0] = &unk_282C1BE18;
  v122[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v121[2] = *MEMORY[0x277D3F548];
  v121[3] = v3;
  v122[2] = @"refreshMav16BBBRfLTE";
  v122[3] = MEMORY[0x277CBEC38];
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:4];
  v124[0] = v85;
  v123[1] = *MEMORY[0x277D3F540];
  v119[0] = @"SeqNum";
  v84 = [MEMORY[0x277D3F198] sharedInstance];
  v83 = [v84 commonTypeDict_IntegerFormat];
  v120[0] = v83;
  v119[1] = @"BBDate";
  v82 = [MEMORY[0x277D3F198] sharedInstance];
  v81 = [v82 commonTypeDict_DateFormat];
  v120[1] = v81;
  v119[2] = @"LogDuration";
  v80 = [MEMORY[0x277D3F198] sharedInstance];
  v79 = [v80 commonTypeDict_RealFormat];
  v120[2] = v79;
  v119[3] = @"DupMode";
  v78 = [MEMORY[0x277D3F198] sharedInstance];
  v77 = [v78 commonTypeDict_IntegerFormat];
  v120[3] = v77;
  v119[4] = @"PCC_Band";
  v76 = [MEMORY[0x277D3F198] sharedInstance];
  v75 = [v76 commonTypeDict_IntegerFormat];
  v120[4] = v75;
  v119[5] = @"PCC_BW";
  v74 = [MEMORY[0x277D3F198] sharedInstance];
  v73 = [v74 commonTypeDict_IntegerFormat];
  v120[5] = v73;
  v119[6] = @"SCC1_Band";
  v72 = [MEMORY[0x277D3F198] sharedInstance];
  v71 = [v72 commonTypeDict_IntegerFormat];
  v120[6] = v71;
  v119[7] = @"SCC1_BW";
  v70 = [MEMORY[0x277D3F198] sharedInstance];
  v69 = [v70 commonTypeDict_IntegerFormat];
  v120[7] = v69;
  v119[8] = @"SCC2_Band";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_IntegerFormat];
  v120[8] = v67;
  v119[9] = @"SCC2_BW";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_IntegerFormat];
  v120[9] = v65;
  v119[10] = @"SCC3_Band";
  v64 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v64 commonTypeDict_IntegerFormat];
  v120[10] = v63;
  v119[11] = @"SCC3_BW";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_IntegerFormat];
  v120[11] = v61;
  v119[12] = @"DLTBSzArr";
  v5 = *MEMORY[0x277D3F598];
  v116[0] = *MEMORY[0x277D3F5A8];
  v4 = v116[0];
  v116[1] = v5;
  v118[0] = &unk_282C102F0;
  v118[1] = &unk_282C10308;
  v117 = *MEMORY[0x277D3F5A0];
  v6 = v117;
  v118[2] = &unk_282C10320;
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v116 count:3];
  v120[12] = v60;
  v119[13] = @"TxPwrBktArr";
  v114[0] = v4;
  v114[1] = v5;
  v115[0] = &unk_282C102F0;
  v115[1] = &unk_282C10338;
  v114[2] = v6;
  v115[2] = &unk_282C10320;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:3];
  v120[13] = v59;
  v119[14] = @"CASCCStateArr";
  v112[0] = v4;
  v112[1] = v5;
  v113[0] = &unk_282C102F0;
  v113[1] = &unk_282C10350;
  v112[2] = v6;
  v113[2] = &unk_282C10320;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:3];
  v120[14] = v58;
  v119[15] = @"ULCACStateArr";
  v110[0] = v4;
  v110[1] = v5;
  v111[0] = &unk_282C102F0;
  v111[1] = &unk_282C10368;
  v110[2] = v6;
  v111[2] = &unk_282C10320;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:3];
  v120[15] = v57;
  v119[16] = @"kRfActRxTxArr";
  v108[0] = v4;
  v108[1] = v5;
  v109[0] = &unk_282C102F0;
  v109[1] = &unk_282C10380;
  v108[2] = v6;
  v109[2] = &unk_282C10320;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:3];
  v120[16] = v56;
  v119[17] = @"SleepStateIdleArr";
  v106[0] = v4;
  v106[1] = v5;
  v107[0] = &unk_282C102F0;
  v107[1] = &unk_282C10398;
  v106[2] = v6;
  v107[2] = &unk_282C10320;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:3];
  v120[17] = v55;
  v119[18] = @"SleepStateConnArr";
  v104[0] = v4;
  v104[1] = v5;
  v105[0] = &unk_282C102F0;
  v105[1] = &unk_282C10398;
  v104[2] = v6;
  v105[2] = &unk_282C10320;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:3];
  v120[18] = v54;
  v119[19] = @"RfRSRPIdleArr";
  v102[0] = v4;
  v102[1] = v5;
  v103[0] = &unk_282C102F0;
  v103[1] = &unk_282C10380;
  v102[2] = v6;
  v103[2] = &unk_282C10320;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:3];
  v120[19] = v53;
  v119[20] = @"RfRSRPConnArr";
  v100[0] = v4;
  v100[1] = v5;
  v101[0] = &unk_282C102F0;
  v101[1] = &unk_282C10380;
  v100[2] = v6;
  v101[2] = &unk_282C10320;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:3];
  v120[20] = v52;
  v119[21] = @"RfSINRIdleArr";
  v98[0] = v4;
  v98[1] = v5;
  v99[0] = &unk_282C102F0;
  v99[1] = &unk_282C10380;
  v98[2] = v6;
  v99[2] = &unk_282C10320;
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:3];
  v120[21] = v51;
  v119[22] = @"RfSINRConnArr";
  v96[0] = v4;
  v96[1] = v5;
  v97[0] = &unk_282C102F0;
  v97[1] = &unk_282C10380;
  v96[2] = v6;
  v97[2] = &unk_282C10320;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:3];
  v120[22] = v50;
  v119[23] = @"RfNLICArr";
  v94[0] = v4;
  v94[1] = v5;
  v95[0] = &unk_282C102F0;
  v95[1] = &unk_282C10368;
  v94[2] = v6;
  v95[2] = &unk_282C10320;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:3];
  v120[23] = v49;
  v119[24] = @"ARD_RxD_Off_Duration";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_IntegerFormat];
  v120[24] = v47;
  v119[25] = @"uSleep_PCC";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_IntegerFormat];
  v120[25] = v45;
  v119[26] = @"uSleep_SCC1";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_IntegerFormat];
  v120[26] = v43;
  v119[27] = @"uSleep_SCC2";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_IntegerFormat];
  v120[27] = v41;
  v119[28] = @"uSleep_SCC3";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_IntegerFormat];
  v120[28] = v39;
  v119[29] = @"HSIC_PCC_OffOn";
  v92[0] = v4;
  v92[1] = v5;
  v93[0] = &unk_282C102F0;
  v93[1] = &unk_282C103B0;
  v92[2] = v6;
  v93[2] = &unk_282C10320;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:3];
  v120[29] = v38;
  v119[30] = @"HSIC_SCC1_OffOn";
  v90[0] = v4;
  v90[1] = v5;
  v91[0] = &unk_282C102F0;
  v91[1] = &unk_282C103B0;
  v90[2] = v6;
  v91[2] = &unk_282C10320;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:3];
  v120[30] = v37;
  v119[31] = @"HSIC_SCC2_OffOn";
  v88[0] = v4;
  v88[1] = v5;
  v89[0] = &unk_282C102F0;
  v89[1] = &unk_282C103B0;
  v88[2] = v6;
  v89[2] = &unk_282C10320;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:3];
  v120[31] = v36;
  v119[32] = @"HSIC_SCC3_OffOn";
  v86[0] = v4;
  v86[1] = v5;
  v87[0] = &unk_282C102F0;
  v87[1] = &unk_282C103B0;
  v86[2] = v6;
  v87[2] = &unk_282C10320;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];
  v120[32] = v35;
  v119[33] = @"PCC_ARX_Off";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_IntegerFormat];
  v120[33] = v33;
  v119[34] = @"SCC1_ARX_Off";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_IntegerFormat];
  v120[34] = v31;
  v119[35] = @"SCC2_ARX_Off";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v120[35] = v29;
  v119[36] = @"SCC3_ARX_Off";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v120[36] = v27;
  v119[37] = @"PCC_ARX_Baseline";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v120[37] = v25;
  v119[38] = @"SCC1_ARX_Baseline";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v120[38] = v23;
  v119[39] = @"SCC2_ARX_Baseline";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v120[39] = v21;
  v119[40] = @"SCC3_ARX_Baseline";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v120[40] = v19;
  v119[41] = @"PCC_ARX_QICE";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v120[41] = v8;
  v119[42] = @"SCC1_ARX_QICE";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v120[42] = v10;
  v119[43] = @"SCC2_ARX_QICE";
  v11 = [MEMORY[0x277D3F198] sharedInstance];
  v12 = [v11 commonTypeDict_IntegerFormat];
  v120[43] = v12;
  v119[44] = @"SCC3_ARX_QICE";
  v13 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v13 commonTypeDict_IntegerFormat];
  v120[44] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:45];
  v124[1] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];

  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)refreshMav16BBBRfLTE
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (id)logEventBackwardBBMav16BHwRfLTE
{
  v24 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __58__PLBBMav16BHwRfLTELogMsg_logEventBackwardBBMav16BHwRfLTE__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v3;
    if (qword_2811F4128 != -1)
    {
      dispatch_once(&qword_2811F4128, &block);
    }

    if (byte_2811F40D9 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwRfLTELogMsg logEventBackwardBBMav16BHwRfLTE]", block, v16, v17, v18, v19];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg logEventBackwardBBMav16BHwRfLTE]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:264];

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
  [(PLBBMav16BHwRfLTELogMsg *)self populateMav16BEntry:v11];
  v20[0] = @"entry";
  v20[1] = @"entryKey";
  v21[0] = v11;
  v21[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __58__PLBBMav16BHwRfLTELogMsg_logEventBackwardBBMav16BHwRfLTE__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F40D9 = result;
  return result;
}

- (void)populateMav16BEntry:(id)a3
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

  v10 = [(PLBBMav16BHwRfLTELogMsg *)self logDuration];
  [v5 setObject:v10 forKeyedSubscript:@"LogDuration"];

  v11 = [(PLBBMav16BHwRfLTELogMsg *)self dupMode];
  [v5 setObject:v11 forKeyedSubscript:@"DupMode"];

  v12 = [(PLBBMav16BHwRfLTELogMsg *)self PCCFreq];
  [v5 setObject:v12 forKeyedSubscript:@"PCC_Band"];

  v13 = [(PLBBMav16BHwRfLTELogMsg *)self PCCBw];
  [v5 setObject:v13 forKeyedSubscript:@"PCC_BW"];

  v14 = [(PLBBMav16BHwRfLTELogMsg *)self SCC1Freq];
  [v5 setObject:v14 forKeyedSubscript:@"SCC1_Band"];

  v15 = [(PLBBMav16BHwRfLTELogMsg *)self SCC1Bw];
  [v5 setObject:v15 forKeyedSubscript:@"SCC1_BW"];

  v16 = [(PLBBMav16BHwRfLTELogMsg *)self SCC2Freq];
  [v5 setObject:v16 forKeyedSubscript:@"SCC2_Band"];

  v17 = [(PLBBMav16BHwRfLTELogMsg *)self SCC2Bw];
  [v5 setObject:v17 forKeyedSubscript:@"SCC2_BW"];

  v18 = [(PLBBMav16BHwRfLTELogMsg *)self SCC3Freq];
  [v5 setObject:v18 forKeyedSubscript:@"SCC3_Band"];

  v19 = [(PLBBMav16BHwRfLTELogMsg *)self SCC3Bw];
  [v5 setObject:v19 forKeyedSubscript:@"SCC3_BW"];

  v20 = [(PLBBMav16BHwRfLTELogMsg *)self dlTBSzCnt];
  [v5 setObject:v20 forKeyedSubscript:@"DLTBSzArr"];

  v21 = [(PLBBMav16BHwRfLTELogMsg *)self txPwrCnt];
  [v5 setObject:v21 forKeyedSubscript:@"TxPwrBktArr"];

  v22 = [(PLBBMav16BHwRfLTELogMsg *)self caSCCCnt];
  [v5 setObject:v22 forKeyedSubscript:@"CASCCStateArr"];

  v23 = [(PLBBMav16BHwRfLTELogMsg *)self ulCaSCCCnt];
  [v5 setObject:v23 forKeyedSubscript:@"ULCACStateArr"];

  v24 = [(PLBBMav16BHwRfLTELogMsg *)self actRxTxCnt];
  [v5 setObject:v24 forKeyedSubscript:@"kRfActRxTxArr"];

  v25 = [(PLBBMav16BHwRfLTELogMsg *)self sleepStateIdleCnt];
  [v5 setObject:v25 forKeyedSubscript:@"SleepStateIdleArr"];

  v26 = [(PLBBMav16BHwRfLTELogMsg *)self sleepStateConnCnt];
  [v5 setObject:v26 forKeyedSubscript:@"SleepStateConnArr"];

  v27 = [(PLBBMav16BHwRfLTELogMsg *)self rsrpIdleCnt];
  [v5 setObject:v27 forKeyedSubscript:@"RfRSRPIdleArr"];

  v28 = [(PLBBMav16BHwRfLTELogMsg *)self rsrpConnCnt];
  [v5 setObject:v28 forKeyedSubscript:@"RfRSRPConnArr"];

  v29 = [(PLBBMav16BHwRfLTELogMsg *)self sinrIdleCnt];
  [v5 setObject:v29 forKeyedSubscript:@"RfSINRIdleArr"];

  v30 = [(PLBBMav16BHwRfLTELogMsg *)self sinrConnCnt];
  [v5 setObject:v30 forKeyedSubscript:@"RfSINRConnArr"];

  v31 = [(PLBBMav16BHwRfLTELogMsg *)self arxStateCnt];
  [v5 setObject:v31 forKeyedSubscript:@"RfARXArr"];

  v32 = [(PLBBMav16BHwRfLTELogMsg *)self nlicStateCnt];
  [v5 setObject:v32 forKeyedSubscript:@"RfNLICArr"];

  v33 = [(PLBBMav16BHwRfLTELogMsg *)self bpeStats];
  [v5 setObject:v33 forKeyedSubscript:@"RfBPEArr"];

  v34 = [(PLBBMav16BHwRfLTELogMsg *)self ardRxDOff];
  [v5 setObject:v34 forKeyedSubscript:@"ARD_RxD_Off_Duration"];

  v35 = [(PLBBMav16BHwRfLTELogMsg *)self uSleepPCCCnt];
  [v5 setObject:v35 forKeyedSubscript:@"uSleep_PCC"];

  v36 = [(PLBBMav16BHwRfLTELogMsg *)self uSleepSCC1Cnt];
  [v5 setObject:v36 forKeyedSubscript:@"uSleep_SCC1"];

  v37 = [(PLBBMav16BHwRfLTELogMsg *)self uSleepSCC2Cnt];
  [v5 setObject:v37 forKeyedSubscript:@"uSleep_SCC2"];

  v38 = [(PLBBMav16BHwRfLTELogMsg *)self uSleepSCC3Cnt];
  [v5 setObject:v38 forKeyedSubscript:@"uSleep_SCC3"];

  v39 = [(PLBBMav16BHwRfLTELogMsg *)self hsicPCC];
  [v5 setObject:v39 forKeyedSubscript:@"HSIC_PCC_OffOn"];

  v40 = [(PLBBMav16BHwRfLTELogMsg *)self hsicSCC1];
  [v5 setObject:v40 forKeyedSubscript:@"HSIC_SCC1_OffOn"];

  v41 = [(PLBBMav16BHwRfLTELogMsg *)self hsicSCC2];
  [v5 setObject:v41 forKeyedSubscript:@"HSIC_SCC2_OffOn"];

  v42 = [(PLBBMav16BHwRfLTELogMsg *)self hsicSCC3];
  [v5 setObject:v42 forKeyedSubscript:@"HSIC_SCC3_OffOn"];

  v43 = [(PLBBMav16BHwRfLTELogMsg *)self arxOffPCC];
  [v5 setObject:v43 forKeyedSubscript:@"PCC_ARX_Off"];

  v44 = [(PLBBMav16BHwRfLTELogMsg *)self arxOffSCC1];
  [v5 setObject:v44 forKeyedSubscript:@"SCC1_ARX_Off"];

  v45 = [(PLBBMav16BHwRfLTELogMsg *)self arxOffSCC2];
  [v5 setObject:v45 forKeyedSubscript:@"SCC2_ARX_Off"];

  v46 = [(PLBBMav16BHwRfLTELogMsg *)self arxOffSCC3];
  [v5 setObject:v46 forKeyedSubscript:@"SCC3_ARX_Off"];

  v47 = [(PLBBMav16BHwRfLTELogMsg *)self arxBaselinePCC];
  [v5 setObject:v47 forKeyedSubscript:@"PCC_ARX_Baseline"];

  v48 = [(PLBBMav16BHwRfLTELogMsg *)self arxBaselineSCC1];
  [v5 setObject:v48 forKeyedSubscript:@"SCC1_ARX_Baseline"];

  v49 = [(PLBBMav16BHwRfLTELogMsg *)self arxBaselineSCC2];
  [v5 setObject:v49 forKeyedSubscript:@"SCC2_ARX_Baseline"];

  v50 = [(PLBBMav16BHwRfLTELogMsg *)self arxBaselineSCC3];
  [v5 setObject:v50 forKeyedSubscript:@"SCC3_ARX_Baseline"];

  v51 = [(PLBBMav16BHwRfLTELogMsg *)self arxQicePCC];
  [v5 setObject:v51 forKeyedSubscript:@"PCC_ARX_QICE"];

  v52 = [(PLBBMav16BHwRfLTELogMsg *)self arxQiceSCC1];
  [v5 setObject:v52 forKeyedSubscript:@"SCC1_ARX_QICE"];

  v53 = [(PLBBMav16BHwRfLTELogMsg *)self arxQiceSCC2];
  [v5 setObject:v53 forKeyedSubscript:@"SCC2_ARX_QICE"];

  v54 = [(PLBBMav16BHwRfLTELogMsg *)self arxQiceSCC3];
  [v5 setObject:v54 forKeyedSubscript:@"SCC3_ARX_QICE"];
}

@end