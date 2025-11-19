@interface PLBBMavHwRfHDRLogMsg
+ (id)entryEventBackwardDefinitionBBMavHwRfHDR;
- (PLBBMavHwRfHDRLogMsg)init;
- (id)logEventBackwardBBMavHwRfHDR;
- (void)addPairWithKey:(id)a3 andWithVal:(id)a4;
- (void)populateEntry:(id)a3;
- (void)refreshRequest;
- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5;
- (void)setHeaderWithSeqNum:(id)a3 andDate:(id)a4 andTimeCal:(double)a5;
@end

@implementation PLBBMavHwRfHDRLogMsg

- (PLBBMavHwRfHDRLogMsg)init
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__PLBBMavHwRfHDRLogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F61D0 != -1)
    {
      dispatch_once(&qword_2811F61D0, block);
    }

    if (_MergedGlobals_1_47 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfHDRLogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg init]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:39];

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
  v17.super_class = PLBBMavHwRfHDRLogMsg;
  v10 = [(PLBBMavHwRfHDRLogMsg *)&v17 init];
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

uint64_t __28__PLBBMavHwRfHDRLogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_47 = result;
  return result;
}

- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277D3F180];
  v11 = a3;
  if ([v10 debugEnabled])
  {
    v12 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PLBBMavHwRfHDRLogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v12;
    if (qword_2811F61D8 != -1)
    {
      dispatch_once(&qword_2811F61D8, block);
    }

    if (byte_2811F61C9 == 1)
    {
      v34 = v9;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfHDRLogMsg sendAndLogPLEntry:withName:withType:]"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      v16 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:58];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v34;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __60__PLBBMavHwRfHDRLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372;
    v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v35[4] = v19;
    if (qword_2811F61E0 != -1)
    {
      dispatch_once(&qword_2811F61E0, v35);
    }

    if (byte_2811F61CA == 1)
    {
      v20 = v9;
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", v8, v9];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      v24 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:59];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = v21;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v20;
    }
  }

  v27 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [v11 setObject:v27 forKeyedSubscript:@"SeqNum"];

  v28 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [v11 setObject:v28 forKeyedSubscript:@"BBDate"];

  v29 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"TimeCal"];
  [v11 setObject:v29 forKeyedSubscript:@"TimeCal"];

  v30 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  v31 = [v30 convertFromBasebandToMonotonic];
  [v11 setEntryDate:v31];

  v32 = [(PLBasebandMessage *)self agent];
  [v32 logEntry:v11];

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __60__PLBBMavHwRfHDRLogMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61C9 = result;
  return result;
}

uint64_t __60__PLBBMavHwRfHDRLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61CA = result;
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
    block[2] = __63__PLBBMavHwRfHDRLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F61E8 != -1)
    {
      dispatch_once(&qword_2811F61E8, block);
    }

    if (byte_2811F61CB == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfHDRLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:76];

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
    v26[2] = __63__PLBBMavHwRfHDRLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_378;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v19;
    if (qword_2811F61F0 != -1)
    {
      dispatch_once(&qword_2811F61F0, v26);
    }

    if (byte_2811F61CC == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to set seqNum, date, timeCal"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v20 logMessage:v18 fromFile:v22 fromFunction:v23 fromLineNumber:78];

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

uint64_t __63__PLBBMavHwRfHDRLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61CB = result;
  return result;
}

uint64_t __63__PLBBMavHwRfHDRLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_378(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61CC = result;
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
    block[2] = __50__PLBBMavHwRfHDRLogMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F61F8 != -1)
    {
      dispatch_once(&qword_2811F61F8, block);
    }

    if (byte_2811F61CD == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfHDRLogMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg addPairWithKey:andWithVal:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:94];

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
      v31[2] = __50__PLBBMavHwRfHDRLogMsg_addPairWithKey_andWithVal___block_invoke_391;
      v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v31[4] = v16;
      if (qword_2811F6208 != -1)
      {
        dispatch_once(&qword_2811F6208, v31);
      }

      if (byte_2811F61CF == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", v6, v7];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
        v20 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg addPairWithKey:andWithVal:]"];
        [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:100];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = v17;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v23 = [(PLBBMavHwRfHDRLogMsg *)self kvPairs];
    [v23 setObject:v7 forKey:v6];
LABEL_17:

    goto LABEL_25;
  }

  if (v15)
  {
    v24 = objc_opt_class();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __50__PLBBMavHwRfHDRLogMsg_addPairWithKey_andWithVal___block_invoke_385;
    v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v32[4] = v24;
    if (qword_2811F6200 != -1)
    {
      dispatch_once(&qword_2811F6200, v32);
    }

    if (byte_2811F61CE == 1)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: nil key for kvPair not expected, return"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfHDRLogMsg.m"];
      v27 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfHDRLogMsg addPairWithKey:andWithVal:]"];
      [v25 logMessage:v23 fromFile:v27 fromFunction:v28 fromLineNumber:97];

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

uint64_t __50__PLBBMavHwRfHDRLogMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61CD = result;
  return result;
}

uint64_t __50__PLBBMavHwRfHDRLogMsg_addPairWithKey_andWithVal___block_invoke_385(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61CE = result;
  return result;
}

uint64_t __50__PLBBMavHwRfHDRLogMsg_addPairWithKey_andWithVal___block_invoke_391(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F61CF = result;
  return result;
}

+ (id)entryEventBackwardDefinitionBBMavHwRfHDR
{
  v32[2] = *MEMORY[0x277D85DE8];
  v31[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v29[0] = *MEMORY[0x277D3F568];
  v29[1] = v2;
  v30[0] = &unk_282C1C868;
  v30[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v29[2] = *MEMORY[0x277D3F548];
  v29[3] = v3;
  v30[2] = @"refreshRequestHandler";
  v30[3] = MEMORY[0x277CBEC38];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
  v32[0] = v26;
  v31[1] = *MEMORY[0x277D3F540];
  v27[0] = @"SeqNum";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_IntegerFormat];
  v28[0] = v24;
  v27[1] = @"BBDate";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_DateFormat];
  v28[1] = v22;
  v27[2] = @"LogDuration";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_RealFormat];
  v28[2] = v20;
  v27[3] = @"SDTXOnFrames";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_RealFormat];
  v28[3] = v18;
  v27[4] = @"SDTXOffFrames";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_RealFormat];
  v28[4] = v16;
  v27[5] = @"LTXOnFrames";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_RealFormat];
  v28[5] = v5;
  v27[6] = @"LDTXOffFrames";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_RealFormat];
  v28[6] = v7;
  v27[7] = @"TTXOnFrames";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_RealFormat];
  v28[7] = v9;
  v27[8] = @"TDTXOffFrames";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_RealFormat];
  v28[8] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:9];
  v32[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)refreshRequest
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (id)logEventBackwardBBMavHwRfHDR
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBMavHwRfHDR"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  [(PLBBMavHwRfHDRLogMsg *)self populateEntry:v4];
  v8[0] = @"entry";
  v8[1] = @"entryKey";
  v9[0] = v4;
  v9[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)populateEntry:(id)a3
{
  commonInfo = self->_commonInfo;
  v5 = a3;
  v6 = [(NSMutableDictionary *)commonInfo objectForKey:@"BBDate"];
  v7 = [v6 convertFromBasebandToMonotonic];
  [v5 setEntryDate:v7];

  v8 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [v5 setObject:v8 forKeyedSubscript:@"BBDate"];

  v9 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [v5 setObject:v9 forKeyedSubscript:@"SeqNum"];

  v10 = [(PLBBMavHwRfHDRLogMsg *)self logDuration];
  [v5 setObject:v10 forKeyedSubscript:@"LogDuration"];

  v11 = [(PLBBMavHwRfHDRLogMsg *)self sDTXOnFrame];
  [v5 setObject:v11 forKeyedSubscript:@"SDTXOnFrames"];

  v12 = [(PLBBMavHwRfHDRLogMsg *)self sDTXOffFrame];
  [v5 setObject:v12 forKeyedSubscript:@"SDTXOffFrames"];

  v13 = [(PLBBMavHwRfHDRLogMsg *)self lDTXOnFrame];
  [v5 setObject:v13 forKeyedSubscript:@"LTXOnFrames"];

  v14 = [(PLBBMavHwRfHDRLogMsg *)self lDTXOffFrame];
  [v5 setObject:v14 forKeyedSubscript:@"LDTXOffFrames"];

  v15 = [(PLBBMavHwRfHDRLogMsg *)self tDTXOnFrame];
  [v5 setObject:v15 forKeyedSubscript:@"TTXOnFrames"];

  v16 = [(PLBBMavHwRfHDRLogMsg *)self tDTXOffFrame];
  [v5 setObject:v16 forKeyedSubscript:@"TDTXOffFrames"];
}

@end