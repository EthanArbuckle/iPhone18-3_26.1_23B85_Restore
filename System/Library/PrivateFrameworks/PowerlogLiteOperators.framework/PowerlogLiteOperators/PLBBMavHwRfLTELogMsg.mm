@interface PLBBMavHwRfLTELogMsg
+ (id)entryEventBackwardDefinitionBBMav10HwRfLTE;
+ (id)entryEventBackwardDefinitionBBMav13HwRfLTE;
- (PLBBMavHwRfLTELogMsg)init;
- (id)logEventBackwardBBMav10HwRfLTE;
- (id)logEventBackwardBBMav13HwRfLTE;
- (void)addPairWithKey:(id)key andWithVal:(id)val;
- (void)populateEntry:(id)entry;
- (void)populateMav13Entry:(id)entry;
- (void)refreshMav10BBRfAllRats;
- (void)refreshMav13BBRfLTE;
- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type;
- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal;
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
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg init]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:43];

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

- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type
{
  v52 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  nameCopy = name;
  typeCopy = type;
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
      v45 = typeCopy;
      v12 = nameCopy;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:62];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v13;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v12;
      typeCopy = v45;
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
      v20 = typeCopy;
      v44 = typeCopy;
      v21 = nameCopy;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", nameCopy, v44];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      lastPathComponent2 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      [v23 logMessage:v22 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:63];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v22;
        _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v21;
      typeCopy = v20;
    }
  }

  v28 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [entryCopy setObject:v28 forKeyedSubscript:@"SeqNum"];

  v29 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [entryCopy setObject:v29 forKeyedSubscript:@"BBDate"];

  v30 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"TimeCal"];
  [entryCopy setObject:v30 forKeyedSubscript:@"TimeCal"];

  agent = [(PLBBMsgRoot *)self agent];

  if (!agent && [MEMORY[0x277D3F180] debugEnabled])
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
      v46 = typeCopy;
      v33 = nameCopy;
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      lastPathComponent3 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      [v35 logMessage:v34 fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:70];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v34;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v33;
      typeCopy = v46;
    }
  }

  v40 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v40 convertFromBasebandToMonotonic];
  [entryCopy setEntryDate:convertFromBasebandToMonotonic];

  agent2 = [(PLBBMsgRoot *)self agent];
  [agent2 logEntry:entryCopy];

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

- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal
{
  v30 = *MEMORY[0x277D85DE8];
  numCopy = num;
  dateCopy = date;
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
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:83];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (numCopy && dateCopy)
  {
    [(NSMutableDictionary *)self->_commonInfo setObject:numCopy forKey:@"SeqNum"];
    [(NSMutableDictionary *)self->_commonInfo setObject:dateCopy forKey:@"BBDate"];
    commonInfo = self->_commonInfo;
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:cal];
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
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v20 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:85];

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

- (void)addPairWithKey:(id)key andWithVal:(id)val
{
  v36 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valCopy = val;
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
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg addPairWithKey:andWithVal:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:101];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
  if (keyCopy)
  {
    if (debugEnabled)
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
        valCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", keyCopy, valCopy];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg addPairWithKey:andWithVal:]"];
        [v18 logMessage:valCopy fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:107];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = valCopy;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    kvPairs = [(PLBBMavHwRfLTELogMsg *)self kvPairs];
    [kvPairs setObject:valCopy forKey:keyCopy];
LABEL_17:

    goto LABEL_25;
  }

  if (debugEnabled)
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
      kvPairs = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: nil key for kvPair not expected, return"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfLTELogMsg.m"];
      lastPathComponent3 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg addPairWithKey:andWithVal:]"];
      [v25 logMessage:kvPairs fromFile:lastPathComponent3 fromFunction:v28 fromLineNumber:104];

      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = kvPairs;
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v43[0] = commonTypeDict_IntegerFormat;
  v42[1] = @"BBDate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v43[1] = commonTypeDict_DateFormat;
  v42[2] = @"LogDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v43[2] = commonTypeDict_RealFormat;
  v42[3] = @"DupMode";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v43[3] = commonTypeDict_IntegerFormat2;
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
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg logEventBackwardBBMav10HwRfLTE]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:196];

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

- (void)populateEntry:(id)entry
{
  commonInfo = self->_commonInfo;
  entryCopy = entry;
  v6 = [(NSMutableDictionary *)commonInfo objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v6 convertFromBasebandToMonotonic];
  [entryCopy setEntryDate:convertFromBasebandToMonotonic];

  v8 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [entryCopy setObject:v8 forKeyedSubscript:@"SeqNum"];

  v9 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [entryCopy setObject:v9 forKeyedSubscript:@"BBDate"];

  logDuration = [(PLBBMavHwRfLTELogMsg *)self logDuration];
  [entryCopy setObject:logDuration forKeyedSubscript:@"LogDuration"];

  dupMode = [(PLBBMavHwRfLTELogMsg *)self dupMode];
  [entryCopy setObject:dupMode forKeyedSubscript:@"DupMode"];

  caFreqInfo = [(PLBBMavHwRfLTELogMsg *)self caFreqInfo];
  [entryCopy setObject:caFreqInfo forKeyedSubscript:@"CAFreqInfo"];

  dlC0TBSzCnt = [(PLBBMavHwRfLTELogMsg *)self dlC0TBSzCnt];
  [entryCopy setObject:dlC0TBSzCnt forKeyedSubscript:@"C0TBSzArr"];

  dlC1TBSzCnt = [(PLBBMavHwRfLTELogMsg *)self dlC1TBSzCnt];
  [entryCopy setObject:dlC1TBSzCnt forKeyedSubscript:@"C1TBSzArr"];

  txPwrCnt = [(PLBBMavHwRfLTELogMsg *)self txPwrCnt];
  [entryCopy setObject:txPwrCnt forKeyedSubscript:@"TxPwrBktArr"];

  caSCCCnt = [(PLBBMavHwRfLTELogMsg *)self caSCCCnt];
  [entryCopy setObject:caSCCCnt forKeyedSubscript:@"CASCCStateArr"];

  actRxTxCnt = [(PLBBMavHwRfLTELogMsg *)self actRxTxCnt];
  [entryCopy setObject:actRxTxCnt forKeyedSubscript:@"kRfActRxTxArr"];

  sleepStateCnt = [(PLBBMavHwRfLTELogMsg *)self sleepStateCnt];
  [entryCopy setObject:sleepStateCnt forKeyedSubscript:@"SleepStateArr"];
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v73[0] = commonTypeDict_IntegerFormat;
  v72[1] = @"BBDate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v73[1] = commonTypeDict_DateFormat;
  v72[2] = @"LogDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v73[2] = commonTypeDict_RealFormat;
  v72[3] = @"DupMode";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v73[3] = commonTypeDict_IntegerFormat2;
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
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfLTELogMsg logEventBackwardBBMav13HwRfLTE]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:349];

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

- (void)populateMav13Entry:(id)entry
{
  commonInfo = self->_commonInfo;
  entryCopy = entry;
  v6 = [(NSMutableDictionary *)commonInfo objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v6 convertFromBasebandToMonotonic];
  [entryCopy setEntryDate:convertFromBasebandToMonotonic];

  v8 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"SeqNum"];
  [entryCopy setObject:v8 forKeyedSubscript:@"SeqNum"];

  v9 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"BBDate"];
  [entryCopy setObject:v9 forKeyedSubscript:@"BBDate"];

  logDuration = [(PLBBMavHwRfLTELogMsg *)self logDuration];
  [entryCopy setObject:logDuration forKeyedSubscript:@"LogDuration"];

  dupMode = [(PLBBMavHwRfLTELogMsg *)self dupMode];
  [entryCopy setObject:dupMode forKeyedSubscript:@"DupMode"];

  caFreqInfo = [(PLBBMavHwRfLTELogMsg *)self caFreqInfo];
  [entryCopy setObject:caFreqInfo forKeyedSubscript:@"CAFreqInfo"];

  dlC0TBSzCnt = [(PLBBMavHwRfLTELogMsg *)self dlC0TBSzCnt];
  [entryCopy setObject:dlC0TBSzCnt forKeyedSubscript:@"C0TBSzArr"];

  dlC1TBSzCnt = [(PLBBMavHwRfLTELogMsg *)self dlC1TBSzCnt];
  [entryCopy setObject:dlC1TBSzCnt forKeyedSubscript:@"C1TBSzArr"];

  txPwrCnt = [(PLBBMavHwRfLTELogMsg *)self txPwrCnt];
  [entryCopy setObject:txPwrCnt forKeyedSubscript:@"TxPwrBktArr"];

  caSCCCnt = [(PLBBMavHwRfLTELogMsg *)self caSCCCnt];
  [entryCopy setObject:caSCCCnt forKeyedSubscript:@"CASCCStateArr"];

  actRxTxPriCCCnt = [(PLBBMavHwRfLTELogMsg *)self actRxTxPriCCCnt];
  [entryCopy setObject:actRxTxPriCCCnt forKeyedSubscript:@"RfActRxTxPCCArr"];

  actRxTxSecCCCnt = [(PLBBMavHwRfLTELogMsg *)self actRxTxSecCCCnt];
  [entryCopy setObject:actRxTxSecCCCnt forKeyedSubscript:@"RfActRxTxSCCArr"];

  actRxTxPriSecCCCnt = [(PLBBMavHwRfLTELogMsg *)self actRxTxPriSecCCCnt];
  [entryCopy setObject:actRxTxPriSecCCCnt forKeyedSubscript:@"RfActRxTxPCCSCCArr"];

  sleepStateIdleCnt = [(PLBBMavHwRfLTELogMsg *)self sleepStateIdleCnt];
  [entryCopy setObject:sleepStateIdleCnt forKeyedSubscript:@"SleepStateIdleArr"];

  sleepStateConnCnt = [(PLBBMavHwRfLTELogMsg *)self sleepStateConnCnt];
  [entryCopy setObject:sleepStateConnCnt forKeyedSubscript:@"SleepStateConnArr"];

  rsrpIdleCnt = [(PLBBMavHwRfLTELogMsg *)self rsrpIdleCnt];
  [entryCopy setObject:rsrpIdleCnt forKeyedSubscript:@"RfRSRPIdleArr"];

  rsrpConnCnt = [(PLBBMavHwRfLTELogMsg *)self rsrpConnCnt];
  [entryCopy setObject:rsrpConnCnt forKeyedSubscript:@"RfRSRPConnArr"];

  sinrIdleCnt = [(PLBBMavHwRfLTELogMsg *)self sinrIdleCnt];
  [entryCopy setObject:sinrIdleCnt forKeyedSubscript:@"RfSINRIdleArr"];

  sinrConnCnt = [(PLBBMavHwRfLTELogMsg *)self sinrConnCnt];
  [entryCopy setObject:sinrConnCnt forKeyedSubscript:@"RfSINRConnArr"];

  arxStateCnt = [(PLBBMavHwRfLTELogMsg *)self arxStateCnt];
  [entryCopy setObject:arxStateCnt forKeyedSubscript:@"RfARXArr"];

  nlicStateCnt = [(PLBBMavHwRfLTELogMsg *)self nlicStateCnt];
  [entryCopy setObject:nlicStateCnt forKeyedSubscript:@"RfNLICArr"];

  bpeStats = [(PLBBMavHwRfLTELogMsg *)self bpeStats];
  [entryCopy setObject:bpeStats forKeyedSubscript:@"RfBPEArr"];
}

@end