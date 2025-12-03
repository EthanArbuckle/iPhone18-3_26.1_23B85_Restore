@interface PLBBMavLogMsg
+ (id)entryEventBackwardMav1BBHwOtherPerRAT;
+ (id)entryEventBackwardMavBBHwOther;
+ (id)entryEventBackwardMavBBHwOtherPerRAT;
+ (id)entryEventMavBBMav10HwOther;
+ (id)entryEventMavBBMav13HwOther;
+ (id)entryEventMavBBMav16BHwOther;
+ (id)entryEventMavBBMav16HwOther;
+ (id)entryEventMavBBMav2HwOther;
+ (id)entryEventMavBBMav4HwOther;
- (PLBBMavLogMsg)init;
- (id)internaLogEventBackwardBBMav1HwOtherPerRAT;
- (id)internaLogEventBackwardBBMavHwOtherPerRAT;
- (id)logEventBackwardGrpEntriesBBMav1HwOtherPerRAT;
- (id)logEventBackwardGrpEntriesBBMavHwOtherPerRAT;
- (void)addPairWithKey:(id)key andWithVal:(id)val;
- (void)addToGroupPLBBMav10HwOther;
- (void)addToGroupPLBBMav13HwOther;
- (void)addToGroupPLBBMav16BHwOther;
- (void)addToGroupPLBBMav16HwOther;
- (void)addToGroupPLBBMav2HwOther;
- (void)addToGroupPLBBMav4HwOther;
- (void)addToGroupPLBBMavHwEntry:(id)entry withEntryKey:(id)key;
- (void)addToGroupPLBBMavHwOther;
- (void)appendToError:(id)error;
- (void)logEventBackwardGrpEntriesBBMavHw;
- (void)logEventBackwardMav10BBHwOther;
- (void)logEventBackwardMav13BBHwOther;
- (void)logEventBackwardMav16BBBHwOther;
- (void)logEventBackwardMav16BBHwOther;
- (void)logEventBackwardMav1BBHwOtherPerRAT;
- (void)logEventBackwardMavBBHwOther;
- (void)logEventBackwardMavBBHwOtherPerRAT;
- (void)logGrpEntriesMavBBHwOtherPerRat;
- (void)populateEntryBBMav10HwOther:(id)other;
- (void)populateEntryBBMav13HwOther:(id)other;
- (void)populateEntryBBMav16BHwOther:(id)other;
- (void)populateEntryBBMav16HwOther:(id)other;
- (void)populateEntryBBMav1HwOtherPerRAT:(id)t;
- (void)populateEntryBBMav2HwOther:(id)other;
- (void)populateEntryBBMav4HwOther:(id)other;
- (void)populateEntryBBMavHwOther:(id)other;
- (void)populateEntryBBMavHwOtherPerRAT:(id)t;
- (void)refreshBBMav10HwOther;
- (void)refreshBBMav13HwOther;
- (void)refreshBBMav16BHwOther;
- (void)refreshBBMav16HwOther;
- (void)refreshBBMav2HwOther;
- (void)refreshBBMav4HwOther;
- (void)refreshMav1BBHwOtherPerRAT;
- (void)refreshMavBBHwOther;
- (void)refreshMavBBHwOtherPerRAT;
- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type;
- (void)setDate:(id)date;
- (void)setError:(id)error;
- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal;
- (void)setLogDuration:(id)duration;
- (void)setMavBBHwValue:(id)value forKey:(id)key;
- (void)setRat:(id)rat;
- (void)setTxPwr:(id)pwr;
- (void)setType:(id)type;
@end

@implementation PLBBMavLogMsg

- (PLBBMavLogMsg)init
{
  v25 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __21__PLBBMavLogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6B28 != -1)
    {
      dispatch_once(&qword_2811F6B28, block);
    }

    if (_MergedGlobals_1_62 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg init]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:46];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v21.receiver = self;
  v21.super_class = PLBBMavLogMsg;
  v10 = [(PLBBMavLogMsg *)&v21 init];
  if (v10)
  {
    v11 = objc_opt_new();
    commonInfo = v10->_commonInfo;
    v10->_commonInfo = v11;

    v13 = objc_opt_new();
    kvPairs = v10->_kvPairs;
    v10->_kvPairs = v13;

    v15 = objc_opt_new();
    groupArrEntries = v10->_groupArrEntries;
    v10->_groupArrEntries = v15;

    v17 = objc_opt_new();
    groupDict = v10->_groupDict;
    v10->_groupDict = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __21__PLBBMavLogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_62 = result;
  return result;
}

- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type
{
  v58 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  nameCopy = name;
  typeCopy = type;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PLBBMavLogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F6B30 != -1)
    {
      dispatch_once(&qword_2811F6B30, block);
    }

    if (byte_2811F6AF1 == 1)
    {
      v12 = typeCopy;
      v13 = nameCopy;
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg sendAndLogPLEntry:withName:withType:]"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v15 logMessage:v14 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:66];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v13;
      typeCopy = v12;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v20 = objc_opt_class();
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __53__PLBBMavLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_373;
    v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v54[4] = v20;
    if (qword_2811F6B38 != -1)
    {
      dispatch_once(&qword_2811F6B38, v54);
    }

    if (byte_2811F6AF2 == 1)
    {
      v21 = typeCopy;
      v51 = typeCopy;
      v22 = nameCopy;
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", nameCopy, v51];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent2 = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v24 logMessage:v23 fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:67];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v22;
      typeCopy = v21;
    }
  }

  commonInfo = [(PLBBMavLogMsg *)self commonInfo];
  v30 = [commonInfo objectForKey:@"SeqNum"];
  [entryCopy setObject:v30 forKeyedSubscript:@"SeqNum"];

  commonInfo2 = [(PLBBMavLogMsg *)self commonInfo];
  v32 = [commonInfo2 objectForKey:@"BBDate"];
  [entryCopy setObject:v32 forKeyedSubscript:@"BBDate"];

  commonInfo3 = [(PLBBMavLogMsg *)self commonInfo];
  v34 = [commonInfo3 objectForKey:@"TimeCal"];
  [entryCopy setObject:v34 forKeyedSubscript:@"TimeCal"];

  commonInfo4 = [(PLBBMavLogMsg *)self commonInfo];
  v36 = [commonInfo4 objectForKey:@"Error"];
  [entryCopy setObject:v36 forKeyedSubscript:@"Error"];

  agent = [(PLBasebandMessage *)self agent];

  if (!agent && [MEMORY[0x277D3F180] debugEnabled])
  {
    v38 = objc_opt_class();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __53__PLBBMavLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_382;
    v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v53[4] = v38;
    if (qword_2811F6B40 != -1)
    {
      dispatch_once(&qword_2811F6B40, v53);
    }

    if (byte_2811F6AF3 == 1)
    {
      v52 = typeCopy;
      v39 = nameCopy;
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v41 = MEMORY[0x277D3F178];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent3 = [v42 lastPathComponent];
      v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg sendAndLogPLEntry:withName:withType:]"];
      [v41 logMessage:v40 fromFile:lastPathComponent3 fromFunction:v44 fromLineNumber:75];

      v45 = PLLogCommon();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v40;
        _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v39;
      typeCopy = v52;
    }
  }

  commonInfo5 = [(PLBBMavLogMsg *)self commonInfo];
  v47 = [commonInfo5 objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v47 convertFromBasebandToMonotonic];
  [entryCopy setEntryDate:convertFromBasebandToMonotonic];

  agent2 = [(PLBasebandMessage *)self agent];
  [agent2 logEntry:entryCopy];

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t __53__PLBBMavLogMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AF1 = result;
  return result;
}

uint64_t __53__PLBBMavLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_373(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AF2 = result;
  return result;
}

uint64_t __53__PLBBMavLogMsg_sendAndLogPLEntry_withName_withType___block_invoke_382(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AF3 = result;
  return result;
}

- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal
{
  v33 = *MEMORY[0x277D85DE8];
  numCopy = num;
  v9 = MEMORY[0x277D3F180];
  dateCopy = date;
  if ([v9 debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLBBMavLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F6B48 != -1)
    {
      dispatch_once(&qword_2811F6B48, block);
    }

    if (byte_2811F6AF4 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:86];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v18 = numCopy;
  if (!numCopy)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __56__PLBBMavLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_388;
      v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v29[4] = v19;
      if (qword_2811F6B50 != -1)
      {
        dispatch_once(&qword_2811F6B50, v29);
      }

      if (byte_2811F6AF5 == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to set seqNum(%@)", 0];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
        lastPathComponent2 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
        [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:88];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32 = v20;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v18 = &unk_282C13290;
  }

  [(NSMutableDictionary *)self->_commonInfo setObject:v18 forKey:@"SeqNum"];
  [(NSMutableDictionary *)self->_commonInfo setObject:dateCopy forKey:@"BBDate"];

  commonInfo = self->_commonInfo;
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:cal];
  [(NSMutableDictionary *)commonInfo setValue:v27 forKey:@"TimeCal"];

  [(PLBBMavLogMsg *)self setGroupID:@"MavLogMsg"];
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PLBBMavLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AF4 = result;
  return result;
}

uint64_t __56__PLBBMavLogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_388(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AF5 = result;
  return result;
}

- (void)addPairWithKey:(id)key andWithVal:(id)val
{
  v32 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valCopy = val;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLBBMavLogMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F6B58 != -1)
    {
      dispatch_once(&qword_2811F6B58, block);
    }

    if (byte_2811F6AF6 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg addPairWithKey:andWithVal:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:107];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (keyCopy)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v15 = objc_opt_class();
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __43__PLBBMavLogMsg_addPairWithKey_andWithVal___block_invoke_399;
      v27 = &__block_descriptor_40_e5_v8__0lu32l8;
      v28 = v15;
      if (qword_2811F6B60 != -1)
      {
        dispatch_once(&qword_2811F6B60, &v24);
      }

      if (byte_2811F6AF7 == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", keyCopy, valCopy, v24, v25, v26, v27, v28];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
        lastPathComponent2 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg addPairWithKey:andWithVal:]"];
        [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:109];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v16;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    kvPairs = [(PLBBMavLogMsg *)self kvPairs];
    [kvPairs setObject:valCopy forKey:keyCopy];
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLBBMavLogMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AF6 = result;
  return result;
}

uint64_t __43__PLBBMavLogMsg_addPairWithKey_andWithVal___block_invoke_399(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AF7 = result;
  return result;
}

- (void)setTxPwr:(id)pwr
{
  v20 = *MEMORY[0x277D85DE8];
  pwrCopy = pwr;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __26__PLBBMavLogMsg_setTxPwr___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (qword_2811F6B68 != -1)
    {
      dispatch_once(&qword_2811F6B68, &block);
    }

    if (byte_2811F6AF8 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg setTxPwr:]", block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg setTxPwr:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:116];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(NSMutableDictionary *)self->_commonInfo setObject:pwrCopy forKey:@"TxPwr"];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __26__PLBBMavLogMsg_setTxPwr___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AF8 = result;
  return result;
}

- (void)setDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __25__PLBBMavLogMsg_setDate___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (qword_2811F6B70 != -1)
    {
      dispatch_once(&qword_2811F6B70, &block);
    }

    if (byte_2811F6AF9 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg setDate:]", block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg setDate:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:137];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(NSMutableDictionary *)self->_commonInfo setObject:dateCopy forKey:@"BBDate"];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __25__PLBBMavLogMsg_setDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AF9 = result;
  return result;
}

- (void)setError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __26__PLBBMavLogMsg_setError___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (qword_2811F6B78 != -1)
    {
      dispatch_once(&qword_2811F6B78, &block);
    }

    if (byte_2811F6AFA == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg setError:]", block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg setError:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:143];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(NSMutableDictionary *)self->_commonInfo setObject:errorCopy forKey:@"Error"];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __26__PLBBMavLogMsg_setError___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AFA = result;
  return result;
}

- (void)appendToError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __31__PLBBMavLogMsg_appendToError___block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v5;
    if (qword_2811F6B80 != -1)
    {
      dispatch_once(&qword_2811F6B80, &block);
    }

    if (byte_2811F6AFB == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg appendToError:]", block, v18, v19, v20, v21];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg appendToError:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:148];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = [(NSMutableDictionary *)self->_commonInfo objectForKey:@"Error"];
  v13 = [v12 mutableCopy];

  if (v13)
  {
    [v13 appendString:errorCopy];
    commonInfo = self->_commonInfo;
    v15 = v13;
  }

  else
  {
    commonInfo = self->_commonInfo;
    v15 = errorCopy;
  }

  [(NSMutableDictionary *)commonInfo setObject:v15 forKey:@"Error"];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __31__PLBBMavLogMsg_appendToError___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AFB = result;
  return result;
}

- (void)setLogDuration:(id)duration
{
  v29 = *MEMORY[0x277D85DE8];
  durationCopy = duration;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__PLBBMavLogMsg_setLogDuration___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6B88 != -1)
    {
      dispatch_once(&qword_2811F6B88, block);
    }

    if (byte_2811F6AFC == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg setLogDuration:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg setLogDuration:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:163];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = MEMORY[0x277CCABB0];
  *&v13 = vcvts_n_f32_s32([durationCopy intValue], 0xFuLL);
  v14 = [v12 numberWithFloat:v13];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __32__PLBBMavLogMsg_setLogDuration___block_invoke_408;
    v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v25[4] = v15;
    if (qword_2811F6B90 != -1)
    {
      dispatch_once(&qword_2811F6B90, v25);
    }

    if (byte_2811F6AFD == 1)
    {
      v16 = MEMORY[0x277CCACA8];
      [v14 floatValue];
      v18 = [v16 stringWithFormat:@"Hw log duration inserted as %f", v17];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg setLogDuration:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:165];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(NSMutableDictionary *)self->_commonInfo setObject:v14 forKey:@"LogDuration"];

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __32__PLBBMavLogMsg_setLogDuration___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AFC = result;
  return result;
}

uint64_t __32__PLBBMavLogMsg_setLogDuration___block_invoke_408(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AFD = result;
  return result;
}

- (void)setRat:(id)rat
{
  v20 = *MEMORY[0x277D85DE8];
  ratCopy = rat;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __24__PLBBMavLogMsg_setRat___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (qword_2811F6B98 != -1)
    {
      dispatch_once(&qword_2811F6B98, &block);
    }

    if (byte_2811F6AFE == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg setRat:]", block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg setRat:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:170];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(NSMutableDictionary *)self->_commonInfo setObject:ratCopy forKey:@"Rat"];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __24__PLBBMavLogMsg_setRat___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AFE = result;
  return result;
}

- (void)refreshMavBBHwOther
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __36__PLBBMavLogMsg_refreshMavBBHwOther__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v4;
    if (qword_2811F6BA0 != -1)
    {
      dispatch_once(&qword_2811F6BA0, &block);
    }

    if (byte_2811F6AFF == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg refreshMavBBHwOther]", block, v16, v17, v18, v19];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg refreshMavBBHwOther]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:179];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:v12];

  objc_autoreleasePoolPop(v3);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __36__PLBBMavLogMsg_refreshMavBBHwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AFF = result;
  return result;
}

+ (id)entryEventBackwardMavBBHwOther
{
  v111[2] = *MEMORY[0x277D85DE8];
  v110[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v108[0] = *MEMORY[0x277D3F568];
  v108[1] = v2;
  v109[0] = &unk_282C1CD48;
  v109[1] = @"refreshRequestHandler";
  v108[2] = *MEMORY[0x277D3F558];
  v109[2] = MEMORY[0x277CBEC38];
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:3];
  v111[0] = v72;
  v110[1] = *MEMORY[0x277D3F540];
  v106[0] = @"Error";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v107[0] = commonTypeDict_BoolFormat;
  v106[1] = @"SeqNum";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v107[1] = commonTypeDict_IntegerFormat;
  v106[2] = @"BBDate";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v107[2] = commonTypeDict_DateFormat;
  v106[3] = @"TimeCal";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v107[3] = commonTypeDict_IntegerFormat2;
  v106[4] = @"SWRevision";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v107[4] = commonTypeDict_IntegerFormat3;
  v106[5] = @"HWRevision";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v107[5] = commonTypeDict_IntegerFormat4;
  v106[6] = @"HWStatsType";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v107[6] = commonTypeDict_IntegerFormat5;
  v106[7] = @"HwStatsLength";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v107[7] = commonTypeDict_IntegerFormat6;
  v106[8] = @"HwStatsLevel";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v107[8] = commonTypeDict_IntegerFormat7;
  v106[9] = @"LastTimestamp";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v107[9] = commonTypeDict_IntegerFormat8;
  v106[10] = @"CurrentTimestamp";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v107[10] = commonTypeDict_IntegerFormat9;
  v106[11] = @"LogDuration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v107[11] = commonTypeDict_IntegerFormat10;
  v106[12] = @"RPMXOShutdownDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v107[12] = commonTypeDict_IntegerFormat11;
  v106[13] = @"RPMXOShutdownCount";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v107[13] = commonTypeDict_IntegerFormat12;
  v106[14] = @"RPMVDDMinDuration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v107[14] = commonTypeDict_IntegerFormat13;
  v106[15] = @"RPMVDDMinEnterCount";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v107[15] = commonTypeDict_IntegerFormat14;
  v106[16] = @"AppsPerfStateCountHistogram";
  v4 = *MEMORY[0x277D3F598];
  v103[0] = *MEMORY[0x277D3F5A8];
  v3 = v103[0];
  v103[1] = v4;
  v105[0] = &unk_282C132A8;
  v105[1] = &unk_282C132C0;
  v104 = *MEMORY[0x277D3F5A0];
  v5 = v104;
  v105[2] = &unk_282C132D8;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v103 count:3];
  v107[16] = v39;
  v106[17] = @"CXOShutdownDuration";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v107[17] = commonTypeDict_IntegerFormat15;
  v106[18] = @"CXOShutdownCount";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v107[18] = commonTypeDict_IntegerFormat16;
  v106[19] = @"USBStateCountHistogram";
  v101[0] = v3;
  v101[1] = v4;
  v102[0] = &unk_282C132A8;
  v102[1] = &unk_282C132F0;
  v101[2] = v5;
  v102[2] = &unk_282C132D8;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:3];
  v107[19] = v34;
  v106[20] = @"UARTOnOffStateHistogram";
  v99[0] = v3;
  v99[1] = v4;
  v100[0] = &unk_282C132A8;
  v100[1] = &unk_282C13308;
  v99[2] = v5;
  v100[2] = &unk_282C132D8;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:3];
  v107[20] = v33;
  v106[21] = @"SPIOnOffStateHistogram";
  v97[0] = v3;
  v97[1] = v4;
  v98[0] = &unk_282C132A8;
  v98[1] = &unk_282C13308;
  v97[2] = v5;
  v98[2] = &unk_282C132D8;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:3];
  v107[21] = v32;
  v106[22] = @"ADMOnOffStateHistogram";
  v95[0] = v3;
  v95[1] = v4;
  v96[0] = &unk_282C132A8;
  v96[1] = &unk_282C13308;
  v95[2] = v5;
  v96[2] = &unk_282C132D8;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:3];
  v107[22] = v31;
  v106[23] = @"LPASSOnOffStateHistogram";
  v93[0] = v3;
  v93[1] = v4;
  v94[0] = &unk_282C132A8;
  v94[1] = &unk_282C13308;
  v93[2] = v5;
  v94[2] = &unk_282C132D8;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:3];
  v107[23] = v30;
  v106[24] = @"APPSSleepVetoState";
  v91[0] = v3;
  v91[1] = v4;
  v92[0] = &unk_282C132A8;
  v92[1] = &unk_282C13320;
  v91[2] = v5;
  v92[2] = &unk_282C132D8;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:3];
  v107[24] = v29;
  v106[25] = @"MPSSSleepVetoHistogram";
  v89[0] = v3;
  v89[1] = v4;
  v90[0] = &unk_282C132A8;
  v90[1] = &unk_282C132F0;
  v89[2] = v5;
  v90[2] = &unk_282C132D8;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:3];
  v107[25] = v28;
  v106[26] = @"MDSPConfigCountHistogram";
  v87[0] = v3;
  v87[1] = v4;
  v88[0] = &unk_282C132A8;
  v88[1] = &unk_282C13338;
  v87[2] = v5;
  v88[2] = &unk_282C132D8;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:3];
  v107[26] = v27;
  v106[27] = @"QDSPConfigCountHistogram";
  v85[0] = v3;
  v85[1] = v4;
  v86[0] = &unk_282C132A8;
  v86[1] = &unk_282C13338;
  v85[2] = v5;
  v86[2] = &unk_282C132D8;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:3];
  v107[27] = v26;
  v106[28] = @"GPSOnOffStateHistogram";
  v83[0] = v3;
  v83[1] = v4;
  v84[0] = &unk_282C132A8;
  v84[1] = &unk_282C13308;
  v83[2] = v5;
  v84[2] = &unk_282C132D8;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:3];
  v107[28] = v25;
  v106[29] = @"GPSDPOOnOffStateHistogram";
  v81[0] = v3;
  v81[1] = v4;
  v82[0] = &unk_282C132A8;
  v82[1] = &unk_282C13308;
  v81[2] = v5;
  v82[2] = &unk_282C132D8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:3];
  v107[29] = v24;
  v106[30] = @"GPSDPOBins";
  v79[0] = v3;
  v79[1] = v4;
  v80[0] = &unk_282C132A8;
  v80[1] = &unk_282C132C0;
  v79[2] = v5;
  v80[2] = &unk_282C132D8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:3];
  v107[30] = v23;
  v106[31] = @"MPSSCXOShutdownDuration";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v107[31] = commonTypeDict_IntegerFormat17;
  v106[32] = @"MPSSCXOShutdownCount";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v107[32] = commonTypeDict_IntegerFormat18;
  v106[33] = @"MCPMVetoNumHistogram";
  v77[0] = v3;
  v77[1] = v4;
  v78[0] = &unk_282C132A8;
  v78[1] = &unk_282C132C0;
  v77[2] = v5;
  v78[2] = &unk_282C132D8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];
  v107[33] = v18;
  v106[34] = @"NPAVetoMask";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v107[34] = commonTypeDict_IntegerFormat19;
  v106[35] = @"NPAVetoClientNumHistogram";
  v75[0] = v3;
  v75[1] = v4;
  v76[0] = &unk_282C132A8;
  v76[1] = &unk_282C13350;
  v75[2] = v5;
  v76[2] = &unk_282C132D8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
  v107[35] = v7;
  v106[36] = @"AppsClockStateDurationStr";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]22 commonTypeDict_StringFormat];
  v107[36] = commonTypeDict_StringFormat;
  v106[37] = @"MpssClockStateDurationStr";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]23 commonTypeDict_StringFormat];
  v107[37] = commonTypeDict_StringFormat2;
  v106[38] = @"HsicStateSleepVetoNum";
  v73[0] = v3;
  v73[1] = v4;
  v74[0] = &unk_282C132A8;
  v74[1] = &unk_282C13368;
  v73[2] = v5;
  v74[2] = &unk_282C132D8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:3];
  v107[38] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:39];
  v111[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)logEventBackwardMavBBHwOther
{
  v25 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLBBMavLogMsg_logEventBackwardMavBBHwOther__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6BA8 != -1)
    {
      dispatch_once(&qword_2811F6BA8, block);
    }

    if (byte_2811F6B00 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg logEventBackwardMavBBHwOther]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardMavBBHwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:290];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D3F5C8];
  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [(PLBBMavLogMsg *)self populateEntryBBMavHwOther:v12];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __45__PLBBMavLogMsg_logEventBackwardMavBBHwOther__block_invoke_514;
    v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v21[4] = v13;
    if (qword_2811F6BB0 != -1)
    {
      dispatch_once(&qword_2811F6BB0, v21);
    }

    if (byte_2811F6B01 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"About to send to log at %s", "-[PLBBMavLogMsg logEventBackwardMavBBHwOther]"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardMavBBHwOther]"];
      [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:296];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLBBMavLogMsg *)self sendAndLogPLEntry:v12 withName:@"MavBBHwOther" withType:v10];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PLBBMavLogMsg_logEventBackwardMavBBHwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B00 = result;
  return result;
}

uint64_t __45__PLBBMavLogMsg_logEventBackwardMavBBHwOther__block_invoke_514(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B01 = result;
  return result;
}

- (void)logEventBackwardGrpEntriesBBMavHw
{
  v26 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PLBBMavLogMsg_logEventBackwardGrpEntriesBBMavHw__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6BB8 != -1)
    {
      dispatch_once(&qword_2811F6BB8, block);
    }

    if (byte_2811F6B02 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg logEventBackwardGrpEntriesBBMavHw]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardGrpEntriesBBMavHw]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:331];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  agent = [(PLBasebandMessage *)self agent];

  if (!agent && [MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __50__PLBBMavLogMsg_logEventBackwardGrpEntriesBBMavHw__block_invoke_523;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v11;
    if (qword_2811F6BC0 != -1)
    {
      dispatch_once(&qword_2811F6BC0, v22);
    }

    if (byte_2811F6B03 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent2 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardGrpEntriesBBMavHw]"];
      [v13 logMessage:v12 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:333];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  agent2 = [(PLBasebandMessage *)self agent];
  groupDict = [(PLBBMavLogMsg *)self groupDict];
  groupEntryKey = [(PLBBMavLogMsg *)self groupEntryKey];
  [agent2 logEntries:groupDict withGroupID:groupEntryKey];

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLBBMavLogMsg_logEventBackwardGrpEntriesBBMavHw__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B02 = result;
  return result;
}

uint64_t __50__PLBBMavLogMsg_logEventBackwardGrpEntriesBBMavHw__block_invoke_523(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B03 = result;
  return result;
}

- (void)addToGroupPLBBMavHwEntry:(id)entry withEntryKey:(id)key
{
  keyCopy = key;
  entryCopy = entry;
  groupDict = [(PLBBMavLogMsg *)self groupDict];
  v8 = [groupDict objectForKeyedSubscript:keyCopy];

  if (!v8)
  {
    array = [MEMORY[0x277CBEB18] array];
    groupDict2 = [(PLBBMavLogMsg *)self groupDict];
    [groupDict2 setObject:array forKeyedSubscript:keyCopy];
  }

  groupDict3 = [(PLBBMavLogMsg *)self groupDict];
  v12 = [groupDict3 objectForKeyedSubscript:keyCopy];
  [v12 addObject:entryCopy];
}

- (void)addToGroupPLBBMavHwOther
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __41__PLBBMavLogMsg_addToGroupPLBBMavHwOther__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (qword_2811F6BC8 != -1)
    {
      dispatch_once(&qword_2811F6BC8, &block);
    }

    if (byte_2811F6B04 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg addToGroupPLBBMavHwOther]", block, v14, v15, v16, v17];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg addToGroupPLBBMavHwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:352];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  [(PLBBMavLogMsg *)self setGroupEntryKey:v10];
  [(PLBBMavLogMsg *)self populateEntryBBMavHwOther:v11];
  [(PLBBMavLogMsg *)self addToGroupPLBBMavHwEntry:v11 withEntryKey:v10];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLBBMavLogMsg_addToGroupPLBBMavHwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B04 = result;
  return result;
}

- (void)populateEntryBBMavHwOther:(id)other
{
  otherCopy = other;
  bbSwRev = [(PLBBMavLogMsg *)self bbSwRev];
  [otherCopy setObject:bbSwRev forKeyedSubscript:@"SWRevision"];

  bbHwRev = [(PLBBMavLogMsg *)self bbHwRev];
  [otherCopy setObject:bbHwRev forKeyedSubscript:@"HWRevision"];

  bbHwStatsType = [(PLBBMavLogMsg *)self bbHwStatsType];
  [otherCopy setObject:bbHwStatsType forKeyedSubscript:@"HWStatsType"];

  bbHwStatsLength = [(PLBBMavLogMsg *)self bbHwStatsLength];
  [otherCopy setObject:bbHwStatsLength forKeyedSubscript:@"HwStatsLength"];

  bbHwStatsLevel = [(PLBBMavLogMsg *)self bbHwStatsLevel];
  [otherCopy setObject:bbHwStatsLevel forKeyedSubscript:@"HwStatsLevel"];

  bbHwCurrTimeStamp = [(PLBBMavLogMsg *)self bbHwCurrTimeStamp];
  [otherCopy setObject:bbHwCurrTimeStamp forKeyedSubscript:@"CurrentTimestamp"];

  bbHwLastTimeStamp = [(PLBBMavLogMsg *)self bbHwLastTimeStamp];
  [otherCopy setObject:bbHwLastTimeStamp forKeyedSubscript:@"LastTimestamp"];

  bbHwLogDurationInTicks = [(PLBBMavLogMsg *)self bbHwLogDurationInTicks];
  [otherCopy setObject:bbHwLogDurationInTicks forKeyedSubscript:@"LogDuration"];

  commonInfo = [(PLBBMavLogMsg *)self commonInfo];
  v14 = [commonInfo objectForKey:@"BBDate"];
  [otherCopy setObject:v14 forKeyedSubscript:@"BBDate"];

  commonInfo2 = [(PLBBMavLogMsg *)self commonInfo];
  v16 = [commonInfo2 objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v16 convertFromBasebandToMonotonic];
  [otherCopy setEntryDate:convertFromBasebandToMonotonic];

  rpmXOShutDuration = [(PLBBMavLogMsg *)self rpmXOShutDuration];
  [otherCopy setObject:rpmXOShutDuration forKeyedSubscript:@"RPMXOShutdownDuration"];

  rpmXOShutCnt = [(PLBBMavLogMsg *)self rpmXOShutCnt];
  [otherCopy setObject:rpmXOShutCnt forKeyedSubscript:@"RPMXOShutdownCount"];

  rpmVDDMinDuration = [(PLBBMavLogMsg *)self rpmVDDMinDuration];
  [otherCopy setObject:rpmVDDMinDuration forKeyedSubscript:@"RPMVDDMinDuration"];

  rpmVDDMinEnterCnt = [(PLBBMavLogMsg *)self rpmVDDMinEnterCnt];
  [otherCopy setObject:rpmVDDMinEnterCnt forKeyedSubscript:@"RPMVDDMinEnterCount"];

  appsPerfStateCountHist = [(PLBBMavLogMsg *)self appsPerfStateCountHist];
  [otherCopy setObject:appsPerfStateCountHist forKeyedSubscript:@"AppsPerfStateCountHistogram"];

  cxoShutDownDuration = [(PLBBMavLogMsg *)self cxoShutDownDuration];
  [otherCopy setObject:cxoShutDownDuration forKeyedSubscript:@"CXOShutdownDuration"];

  cxoShutDownCount = [(PLBBMavLogMsg *)self cxoShutDownCount];
  [otherCopy setObject:cxoShutDownCount forKeyedSubscript:@"CXOShutdownCount"];

  usbStateCountHist = [(PLBBMavLogMsg *)self usbStateCountHist];
  [otherCopy setObject:usbStateCountHist forKeyedSubscript:@"USBStateCountHistogram"];

  uartOnOffState = [(PLBBMavLogMsg *)self uartOnOffState];
  [otherCopy setObject:uartOnOffState forKeyedSubscript:@"UARTOnOffStateHistogram"];

  spiOnOffState = [(PLBBMavLogMsg *)self spiOnOffState];
  [otherCopy setObject:spiOnOffState forKeyedSubscript:@"SPIOnOffStateHistogram"];

  admOnOffState = [(PLBBMavLogMsg *)self admOnOffState];
  [otherCopy setObject:admOnOffState forKeyedSubscript:@"ADMOnOffStateHistogram"];

  lpassOnOffState = [(PLBBMavLogMsg *)self lpassOnOffState];
  [otherCopy setObject:lpassOnOffState forKeyedSubscript:@"LPASSOnOffStateHistogram"];

  appsSleepVeto = [(PLBBMavLogMsg *)self appsSleepVeto];
  [otherCopy setObject:appsSleepVeto forKeyedSubscript:@"APPSSleepVetoState"];

  mpssSleepVeto = [(PLBBMavLogMsg *)self mpssSleepVeto];
  [otherCopy setObject:mpssSleepVeto forKeyedSubscript:@"MPSSSleepVetoHistogram"];

  mdspConfigCount = [(PLBBMavLogMsg *)self mdspConfigCount];
  [otherCopy setObject:mdspConfigCount forKeyedSubscript:@"MDSPConfigCountHistogram"];

  qdspConfigCount = [(PLBBMavLogMsg *)self qdspConfigCount];
  [otherCopy setObject:qdspConfigCount forKeyedSubscript:@"QDSPConfigCountHistogram"];

  gpsOnOff = [(PLBBMavLogMsg *)self gpsOnOff];
  [otherCopy setObject:gpsOnOff forKeyedSubscript:@"GPSOnOffStateHistogram"];

  gpsDPOOnOff = [(PLBBMavLogMsg *)self gpsDPOOnOff];
  [otherCopy setObject:gpsDPOOnOff forKeyedSubscript:@"GPSDPOOnOffStateHistogram"];

  gpsDPOBin = [(PLBBMavLogMsg *)self gpsDPOBin];
  [otherCopy setObject:gpsDPOBin forKeyedSubscript:@"GPSDPOBins"];

  mpssCxoShutDownDuration = [(PLBBMavLogMsg *)self mpssCxoShutDownDuration];
  [otherCopy setObject:mpssCxoShutDownDuration forKeyedSubscript:@"MPSSCXOShutdownDuration"];

  mpssCxoShutDownCount = [(PLBBMavLogMsg *)self mpssCxoShutDownCount];
  [otherCopy setObject:mpssCxoShutDownCount forKeyedSubscript:@"MPSSCXOShutdownCount"];

  mcpmVetoNumHistogram = [(PLBBMavLogMsg *)self mcpmVetoNumHistogram];
  [otherCopy setObject:mcpmVetoNumHistogram forKeyedSubscript:@"MCPMVetoNumHistogram"];

  npaVetoMask = [(PLBBMavLogMsg *)self npaVetoMask];
  [otherCopy setObject:npaVetoMask forKeyedSubscript:@"NPAVetoMask"];

  npaVetoClientNumHistogram = [(PLBBMavLogMsg *)self npaVetoClientNumHistogram];
  [otherCopy setObject:npaVetoClientNumHistogram forKeyedSubscript:@"NPAVetoClientNumHistogram"];

  appsClockStateDurationStr = [(PLBBMavLogMsg *)self appsClockStateDurationStr];
  [otherCopy setObject:appsClockStateDurationStr forKeyedSubscript:@"AppsClockStateDurationStr"];

  mpssClockStateDurationStr = [(PLBBMavLogMsg *)self mpssClockStateDurationStr];
  [otherCopy setObject:mpssClockStateDurationStr forKeyedSubscript:@"MpssClockStateDurationStr"];

  hsicStateSleepVetoNum = [(PLBBMavLogMsg *)self hsicStateSleepVetoNum];
  [otherCopy setObject:hsicStateSleepVetoNum forKeyedSubscript:@"HsicStateSleepVetoNum"];
}

- (void)refreshMavBBHwOtherPerRAT
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __42__PLBBMavLogMsg_refreshMavBBHwOtherPerRAT__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v4;
    if (qword_2811F6BD0 != -1)
    {
      dispatch_once(&qword_2811F6BD0, &block);
    }

    if (byte_2811F6B05 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg refreshMavBBHwOtherPerRAT]", block, v16, v17, v18, v19];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg refreshMavBBHwOtherPerRAT]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:436];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOtherPerRAT"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:v12];

  objc_autoreleasePoolPop(v3);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBBMavLogMsg_refreshMavBBHwOtherPerRAT__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B05 = result;
  return result;
}

+ (id)entryEventBackwardMavBBHwOtherPerRAT
{
  v50[2] = *MEMORY[0x277D85DE8];
  v49[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v47[0] = *MEMORY[0x277D3F568];
  v47[1] = v2;
  v48[0] = &unk_282C1CD48;
  v48[1] = @"refreshRequestHandler";
  v47[2] = *MEMORY[0x277D3F558];
  v48[2] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
  v50[0] = v29;
  v49[1] = *MEMORY[0x277D3F540];
  v45[0] = @"Error";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v46[0] = commonTypeDict_BoolFormat;
  v45[1] = @"SeqNum";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v46[1] = commonTypeDict_IntegerFormat;
  v45[2] = @"BBDate";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v46[2] = commonTypeDict_DateFormat;
  v45[3] = @"TimeCal";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v46[3] = commonTypeDict_IntegerFormat2;
  v45[4] = @"LogDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v46[4] = commonTypeDict_IntegerFormat3;
  v45[5] = @"RadioTech";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v46[5] = commonTypeDict_IntegerFormat4;
  v45[6] = @"RSSIModeCount";
  v4 = *MEMORY[0x277D3F598];
  v42[0] = *MEMORY[0x277D3F5A8];
  v3 = v42[0];
  v42[1] = v4;
  v44[0] = &unk_282C132A8;
  v44[1] = &unk_282C13380;
  v43 = *MEMORY[0x277D3F5A0];
  v5 = v43;
  v44[2] = &unk_282C132D8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v42 count:3];
  v46[6] = v16;
  v45[7] = @"Rx0RSSIPowerHist";
  v40[0] = v3;
  v40[1] = v4;
  v41[0] = &unk_282C132A8;
  v41[1] = &unk_282C13398;
  v40[2] = v5;
  v41[2] = &unk_282C132D8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  v46[7] = v15;
  v45[8] = @"Rx1RSSIPowerHist";
  v38[0] = v3;
  v38[1] = v4;
  v39[0] = &unk_282C132A8;
  v39[1] = &unk_282C13398;
  v38[2] = v5;
  v39[2] = &unk_282C132D8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  v46[8] = v6;
  v45[9] = @"Rx0SQAPowerHist";
  v36[0] = v3;
  v36[1] = v4;
  v37[0] = &unk_282C132A8;
  v37[1] = &unk_282C133B0;
  v36[2] = v5;
  v37[2] = &unk_282C132D8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
  v46[9] = v7;
  v45[10] = @"Rx1SQAPowerHist";
  v34[0] = v3;
  v34[1] = v4;
  v35[0] = &unk_282C132A8;
  v35[1] = &unk_282C133B0;
  v34[2] = v5;
  v35[2] = &unk_282C132D8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
  v46[10] = v8;
  v45[11] = @"TxPowerHist";
  v32[0] = v3;
  v32[1] = v4;
  v33[0] = &unk_282C132A8;
  v33[1] = &unk_282C133C8;
  v32[2] = v5;
  v33[2] = &unk_282C132D8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v46[11] = v9;
  v45[12] = @"ProtocolStateHist";
  v30[0] = v3;
  v30[1] = v4;
  v31[0] = &unk_282C132A8;
  v31[1] = &unk_282C133E0;
  v30[2] = v5;
  v31[2] = &unk_282C132D8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v46[12] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:13];
  v50[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)internaLogEventBackwardBBMavHwOtherPerRAT
{
  v25 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __58__PLBBMavLogMsg_internaLogEventBackwardBBMavHwOtherPerRAT__block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v3;
    if (qword_2811F6BD8 != -1)
    {
      dispatch_once(&qword_2811F6BD8, &block);
    }

    if (byte_2811F6B06 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg internaLogEventBackwardBBMavHwOtherPerRAT]", block, v17, v18, v19, v20];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg internaLogEventBackwardBBMavHwOtherPerRAT]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:484];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D3F5C8];
  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOtherPerRAT"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [(PLBBMavLogMsg *)self populateEntryBBMavHwOtherPerRAT:v12];
  v21[0] = @"entry";
  v21[1] = @"name";
  v22[0] = v12;
  v22[1] = v11;
  v21[2] = @"type";
  v22[2] = v10;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __58__PLBBMavLogMsg_internaLogEventBackwardBBMavHwOtherPerRAT__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B06 = result;
  return result;
}

- (void)logEventBackwardMavBBHwOtherPerRAT
{
  v22 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __51__PLBBMavLogMsg_logEventBackwardMavBBHwOtherPerRAT__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v3;
    if (qword_2811F6BE0 != -1)
    {
      dispatch_once(&qword_2811F6BE0, &block);
    }

    if (byte_2811F6B07 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg logEventBackwardMavBBHwOtherPerRAT]", block, v16, v17, v18, v19];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardMavBBHwOtherPerRAT]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:498];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  internaLogEventBackwardBBMavHwOtherPerRAT = [(PLBBMavLogMsg *)self internaLogEventBackwardBBMavHwOtherPerRAT];
  v11 = [internaLogEventBackwardBBMavHwOtherPerRAT objectForKey:@"entry"];
  v12 = [internaLogEventBackwardBBMavHwOtherPerRAT objectForKey:@"name"];
  v13 = [internaLogEventBackwardBBMavHwOtherPerRAT objectForKey:@"type"];
  [(PLBBMavLogMsg *)self sendAndLogPLEntry:v11 withName:v12 withType:v13];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __51__PLBBMavLogMsg_logEventBackwardMavBBHwOtherPerRAT__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B07 = result;
  return result;
}

- (id)logEventBackwardGrpEntriesBBMavHwOtherPerRAT
{
  v25 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __61__PLBBMavLogMsg_logEventBackwardGrpEntriesBBMavHwOtherPerRAT__block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v3;
    if (qword_2811F6BE8 != -1)
    {
      dispatch_once(&qword_2811F6BE8, &block);
    }

    if (byte_2811F6B08 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg logEventBackwardGrpEntriesBBMavHwOtherPerRAT]", block, v17, v18, v19, v20];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardGrpEntriesBBMavHwOtherPerRAT]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:509];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  internaLogEventBackwardBBMavHwOtherPerRAT = [(PLBBMavLogMsg *)self internaLogEventBackwardBBMavHwOtherPerRAT];
  v21[0] = @"entry";
  v11 = [internaLogEventBackwardBBMavHwOtherPerRAT objectForKey:?];
  v21[1] = @"name";
  v22[0] = v11;
  v12 = [internaLogEventBackwardBBMavHwOtherPerRAT objectForKey:?];
  v22[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __61__PLBBMavLogMsg_logEventBackwardGrpEntriesBBMavHwOtherPerRAT__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B08 = result;
  return result;
}

- (void)populateEntryBBMavHwOtherPerRAT:(id)t
{
  tCopy = t;
  commonInfo = [(PLBBMavLogMsg *)self commonInfo];
  v5 = [commonInfo objectForKey:@"SeqNum"];
  [tCopy setObject:v5 forKeyedSubscript:@"SeqNum"];

  commonInfo2 = [(PLBBMavLogMsg *)self commonInfo];
  v7 = [commonInfo2 objectForKey:@"BBDate"];
  [tCopy setObject:v7 forKeyedSubscript:@"BBDate"];

  commonInfo3 = [(PLBBMavLogMsg *)self commonInfo];
  v9 = [commonInfo3 objectForKey:@"TimeCal"];
  [tCopy setObject:v9 forKeyedSubscript:@"TimeCal"];

  commonInfo4 = [(PLBBMavLogMsg *)self commonInfo];
  v11 = [commonInfo4 objectForKey:@"Error"];
  [tCopy setObject:v11 forKeyedSubscript:@"Error"];

  commonInfo5 = [(PLBBMavLogMsg *)self commonInfo];
  v13 = [commonInfo5 objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v13 convertFromBasebandToMonotonic];
  [tCopy setEntryDate:convertFromBasebandToMonotonic];

  bbHwLogDurationInTicks = [(PLBBMavLogMsg *)self bbHwLogDurationInTicks];
  [tCopy setObject:bbHwLogDurationInTicks forKeyedSubscript:@"LogDuration"];

  radioTech = [(PLBBMavLogMsg *)self radioTech];
  [tCopy setObject:radioTech forKeyedSubscript:@"RadioTech"];

  rssiModeCount = [(PLBBMavLogMsg *)self rssiModeCount];
  [tCopy setObject:rssiModeCount forKeyedSubscript:@"RSSIModeCount"];

  rx0RssiPowerHist = [(PLBBMavLogMsg *)self rx0RssiPowerHist];
  [tCopy setObject:rx0RssiPowerHist forKeyedSubscript:@"Rx0RSSIPowerHist"];

  rx1RssiPowerHist = [(PLBBMavLogMsg *)self rx1RssiPowerHist];
  [tCopy setObject:rx1RssiPowerHist forKeyedSubscript:@"Rx1RSSIPowerHist"];

  rx0SQAPowerHist = [(PLBBMavLogMsg *)self rx0SQAPowerHist];
  [tCopy setObject:rx0SQAPowerHist forKeyedSubscript:@"Rx0SQAPowerHist"];

  rx1SQAPowerHist = [(PLBBMavLogMsg *)self rx1SQAPowerHist];
  [tCopy setObject:rx1SQAPowerHist forKeyedSubscript:@"Rx1SQAPowerHist"];

  txPowerHist = [(PLBBMavLogMsg *)self txPowerHist];
  [tCopy setObject:txPowerHist forKeyedSubscript:@"TxPowerHist"];

  protocolStateHist = [(PLBBMavLogMsg *)self protocolStateHist];
  [tCopy setObject:protocolStateHist forKeyedSubscript:@"ProtocolStateHist"];

  txPowerHist2 = [(PLBBMavLogMsg *)self txPowerHist];
  v25 = [txPowerHist2 count];

  if (v25)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      txPowerHist3 = [(PLBBMavLogMsg *)self txPowerHist];
      v29 = [txPowerHist3 objectAtIndexedSubscript:v26];
      v27 += [v29 intValue];

      ++v26;
      txPowerHist4 = [(PLBBMavLogMsg *)self txPowerHist];
      v31 = [txPowerHist4 count];
    }

    while (v31 > v26);
    v32 = v27 == 0;
  }

  else
  {
    v32 = 1;
  }

  bbHwLogDurationInTicks2 = [(PLBBMavLogMsg *)self bbHwLogDurationInTicks];
  intValue = [bbHwLogDurationInTicks2 intValue];
  protocolStateHist2 = [(PLBBMavLogMsg *)self protocolStateHist];
  v36 = [protocolStateHist2 objectAtIndexedSubscript:0];
  intValue2 = [v36 intValue];

  if (intValue == intValue2 && v32)
  {
    [tCopy setWriteToDB:0];
  }
}

- (void)logGrpEntriesMavBBHwOtherPerRat
{
  v30 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLBBMavLogMsg_logGrpEntriesMavBBHwOtherPerRat__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6BF0 != -1)
    {
      dispatch_once(&qword_2811F6BF0, block);
    }

    if (byte_2811F6B09 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg logGrpEntriesMavBBHwOtherPerRat]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logGrpEntriesMavBBHwOtherPerRat]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:552];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  agent = [(PLBasebandMessage *)self agent];

  if (!agent && [MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __48__PLBBMavLogMsg_logGrpEntriesMavBBHwOtherPerRat__block_invoke_545;
    v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v24[4] = v11;
    if (qword_2811F6BF8 != -1)
    {
      dispatch_once(&qword_2811F6BF8, v24);
    }

    if (byte_2811F6B0A == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent2 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logGrpEntriesMavBBHwOtherPerRat]"];
      [v13 logMessage:v12 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:554];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  agent2 = [(PLBasebandMessage *)self agent];
  groupEntryKey = [(PLBBMavLogMsg *)self groupEntryKey];
  v26 = groupEntryKey;
  groupArrEntries = [(PLBBMavLogMsg *)self groupArrEntries];
  v27 = groupArrEntries;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  groupEntryKey2 = [(PLBBMavLogMsg *)self groupEntryKey];
  [agent2 logEntries:v21 withGroupID:groupEntryKey2];

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLBBMavLogMsg_logGrpEntriesMavBBHwOtherPerRat__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B09 = result;
  return result;
}

uint64_t __48__PLBBMavLogMsg_logGrpEntriesMavBBHwOtherPerRat__block_invoke_545(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B0A = result;
  return result;
}

- (void)setType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __25__PLBBMavLogMsg_setType___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v5;
    if (qword_2811F6C00 != -1)
    {
      dispatch_once(&qword_2811F6C00, &block);
    }

    if (byte_2811F6B0B == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg setType:]", block, v14, v15, v16, v17];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg setType:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:561];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(NSMutableDictionary *)self->_commonInfo setObject:typeCopy forKey:@"Type"];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __25__PLBBMavLogMsg_setType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B0B = result;
  return result;
}

- (void)setMavBBHwValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  kvPairs = [(PLBBMavLogMsg *)self kvPairs];
  [kvPairs setObject:valueCopy forKey:keyCopy];
}

- (void)logEventBackwardMav1BBHwOtherPerRAT
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __52__PLBBMavLogMsg_logEventBackwardMav1BBHwOtherPerRAT__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v3;
    if (qword_2811F6C08 != -1)
    {
      dispatch_once(&qword_2811F6C08, &block);
    }

    if (byte_2811F6B0C == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg logEventBackwardMav1BBHwOtherPerRAT]", block, v15, v16, v17, v18];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardMav1BBHwOtherPerRAT]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:590];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D3F5C8];
  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOtherPerRAT"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [(PLBBMavLogMsg *)self sendAndLogPLEntry:v12 withName:@"MavBBHwOtherPerRAT" withType:v10];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PLBBMavLogMsg_logEventBackwardMav1BBHwOtherPerRAT__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B0C = result;
  return result;
}

+ (id)entryEventBackwardMav1BBHwOtherPerRAT
{
  v40[2] = *MEMORY[0x277D85DE8];
  v39[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v37[0] = *MEMORY[0x277D3F568];
  v37[1] = v2;
  v38[0] = &unk_282C1CD58;
  v38[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v37[2] = *MEMORY[0x277D3F548];
  v37[3] = v3;
  v38[2] = @"refreshRequestHandler";
  v38[3] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v40[0] = v25;
  v39[1] = *MEMORY[0x277D3F540];
  v35[0] = @"BBDate";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198] commonTypeDict_DateFormat];
  v36[0] = commonTypeDict_DateFormat;
  v35[1] = @"Error";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v36[1] = commonTypeDict_StringFormat;
  v35[2] = @"RxTicks";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v36[2] = commonTypeDict_IntegerFormat;
  v35[3] = @"TxTicks";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v36[3] = commonTypeDict_StringFormat2;
  v35[4] = @"LogDuration";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v36[4] = commonTypeDict_IntegerFormat2;
  v35[5] = @"RSSIModeCount";
  v5 = *MEMORY[0x277D3F598];
  v32[0] = *MEMORY[0x277D3F5A8];
  v4 = v32[0];
  v32[1] = v5;
  v34[0] = &unk_282C132A8;
  v34[1] = &unk_282C13380;
  v33 = *MEMORY[0x277D3F5A0];
  v6 = v33;
  v34[2] = &unk_282C132D8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v32 count:3];
  v36[5] = v7;
  v35[6] = @"Rx0RSSIPowerHist";
  v30[0] = v4;
  v30[1] = v5;
  v31[0] = &unk_282C132A8;
  v31[1] = &unk_282C13398;
  v30[2] = v6;
  v31[2] = &unk_282C132D8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v36[6] = v8;
  v35[7] = @"TxPowerHist1x";
  v28[0] = v4;
  v28[1] = v5;
  v29[0] = &unk_282C132A8;
  v29[1] = &unk_282C133C8;
  v28[2] = v6;
  v29[2] = &unk_282C132D8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v36[7] = v9;
  v35[8] = @"TxPowerHistEVDO";
  v26[0] = v4;
  v26[1] = v5;
  v27[0] = &unk_282C132A8;
  v27[1] = &unk_282C133C8;
  v26[2] = v6;
  v27[2] = &unk_282C132D8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v36[8] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:9];
  v40[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)refreshMav1BBHwOtherPerRAT
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __43__PLBBMavLogMsg_refreshMav1BBHwOtherPerRAT__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v4;
    if (qword_2811F6C10 != -1)
    {
      dispatch_once(&qword_2811F6C10, &block);
    }

    if (byte_2811F6B0D == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg refreshMav1BBHwOtherPerRAT]", block, v16, v17, v18, v19];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg refreshMav1BBHwOtherPerRAT]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:640];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOtherPerRAT"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:v12];

  objc_autoreleasePoolPop(v3);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLBBMavLogMsg_refreshMav1BBHwOtherPerRAT__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B0D = result;
  return result;
}

- (void)populateEntryBBMav1HwOtherPerRAT:(id)t
{
  tCopy = t;
  commonInfo = [(PLBBMavLogMsg *)self commonInfo];
  v6 = [commonInfo objectForKey:@"SeqNum"];
  [tCopy setObject:v6 forKeyedSubscript:@"SeqNum"];

  commonInfo2 = [(PLBBMavLogMsg *)self commonInfo];
  v8 = [commonInfo2 objectForKey:@"BBDate"];
  [tCopy setObject:v8 forKeyedSubscript:@"BBDate"];

  commonInfo3 = [(PLBBMavLogMsg *)self commonInfo];
  v10 = [commonInfo3 objectForKey:@"TimeCal"];
  [tCopy setObject:v10 forKeyedSubscript:@"TimeCal"];

  commonInfo4 = [(PLBBMavLogMsg *)self commonInfo];
  v12 = [commonInfo4 objectForKey:@"Error"];
  [tCopy setObject:v12 forKeyedSubscript:@"Error"];

  commonInfo5 = [(PLBBMavLogMsg *)self commonInfo];
  v14 = [commonInfo5 objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v14 convertFromBasebandToMonotonic];
  [tCopy setEntryDate:convertFromBasebandToMonotonic];

  rxTicks = [(PLBBMavLogMsg *)self rxTicks];
  [tCopy setObject:rxTicks forKeyedSubscript:@"RxTicks"];

  txTicks = [(PLBBMavLogMsg *)self txTicks];
  [tCopy setObject:txTicks forKeyedSubscript:@"TxTicks"];

  rx0RssiPowerHist = [(PLBBMavLogMsg *)self rx0RssiPowerHist];
  [tCopy setObject:rx0RssiPowerHist forKeyedSubscript:@"Rx0RSSIPowerHist"];

  rssiModeCount = [(PLBBMavLogMsg *)self rssiModeCount];
  [tCopy setObject:rssiModeCount forKeyedSubscript:@"RSSIModeCount"];

  bbHwLogDurationInTicks = [(PLBBMavLogMsg *)self bbHwLogDurationInTicks];
  [tCopy setObject:bbHwLogDurationInTicks forKeyedSubscript:@"LogDuration"];

  txPowerHist1x = [(PLBBMavLogMsg *)self txPowerHist1x];
  [tCopy setObject:txPowerHist1x forKeyedSubscript:@"TxPowerHist1x"];

  txPowerHistEVDO = [(PLBBMavLogMsg *)self txPowerHistEVDO];
  [tCopy setObject:txPowerHistEVDO forKeyedSubscript:@"TxPowerHistEVDO"];
}

- (id)logEventBackwardGrpEntriesBBMav1HwOtherPerRAT
{
  v25 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __62__PLBBMavLogMsg_logEventBackwardGrpEntriesBBMav1HwOtherPerRAT__block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v3;
    if (qword_2811F6C18 != -1)
    {
      dispatch_once(&qword_2811F6C18, &block);
    }

    if (byte_2811F6B0E == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg logEventBackwardGrpEntriesBBMav1HwOtherPerRAT]", block, v17, v18, v19, v20];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardGrpEntriesBBMav1HwOtherPerRAT]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:672];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  internaLogEventBackwardBBMav1HwOtherPerRAT = [(PLBBMavLogMsg *)self internaLogEventBackwardBBMav1HwOtherPerRAT];
  v21[0] = @"entry";
  v11 = [internaLogEventBackwardBBMav1HwOtherPerRAT objectForKey:?];
  v21[1] = @"name";
  v22[0] = v11;
  v12 = [internaLogEventBackwardBBMav1HwOtherPerRAT objectForKey:?];
  v22[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __62__PLBBMavLogMsg_logEventBackwardGrpEntriesBBMav1HwOtherPerRAT__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B0E = result;
  return result;
}

- (id)internaLogEventBackwardBBMav1HwOtherPerRAT
{
  v25 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __59__PLBBMavLogMsg_internaLogEventBackwardBBMav1HwOtherPerRAT__block_invoke;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v3;
    if (qword_2811F6C20 != -1)
    {
      dispatch_once(&qword_2811F6C20, &block);
    }

    if (byte_2811F6B0F == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg internaLogEventBackwardBBMav1HwOtherPerRAT]", block, v17, v18, v19, v20];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg internaLogEventBackwardBBMav1HwOtherPerRAT]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:680];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D3F5C8];
  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOtherPerRAT"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [(PLBBMavLogMsg *)self populateEntryBBMav1HwOtherPerRAT:v12];
  v21[0] = @"entry";
  v21[1] = @"name";
  v22[0] = v12;
  v22[1] = v11;
  v21[2] = @"type";
  v22[2] = v10;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __59__PLBBMavLogMsg_internaLogEventBackwardBBMav1HwOtherPerRAT__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B0F = result;
  return result;
}

- (void)refreshBBMav2HwOther
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __37__PLBBMavLogMsg_refreshBBMav2HwOther__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v4;
    if (qword_2811F6C28 != -1)
    {
      dispatch_once(&qword_2811F6C28, &block);
    }

    if (byte_2811F6B10 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg refreshBBMav2HwOther]", block, v16, v17, v18, v19];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg refreshBBMav2HwOther]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:697];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:v12];

  objc_autoreleasePoolPop(v3);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PLBBMavLogMsg_refreshBBMav2HwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B10 = result;
  return result;
}

+ (id)entryEventMavBBMav2HwOther
{
  v85[2] = *MEMORY[0x277D85DE8];
  v84[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v82[0] = *MEMORY[0x277D3F568];
  v82[1] = v2;
  v83[0] = &unk_282C1CD68;
  v83[1] = @"refreshRequestHandler";
  v82[2] = *MEMORY[0x277D3F558];
  v83[2] = MEMORY[0x277CBEC38];
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:3];
  v85[0] = v50;
  v84[1] = *MEMORY[0x277D3F540];
  v80[0] = @"Error";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v81[0] = commonTypeDict_BoolFormat;
  v80[1] = @"Type";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v81[1] = commonTypeDict_IntegerFormat;
  v80[2] = @"SeqNum";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v81[2] = commonTypeDict_IntegerFormat2;
  v80[3] = @"BBDate";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
  v81[3] = commonTypeDict_DateFormat;
  v80[4] = @"TimeCal";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v81[4] = commonTypeDict_IntegerFormat3;
  v80[5] = @"SWRevision";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v81[5] = commonTypeDict_IntegerFormat4;
  v80[6] = @"HWRevision";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v81[6] = commonTypeDict_IntegerFormat5;
  v80[7] = @"HWStatsType";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v81[7] = commonTypeDict_IntegerFormat6;
  v80[8] = @"HwStatsLength";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v81[8] = commonTypeDict_IntegerFormat7;
  v80[9] = @"HwStatsLevel";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v81[9] = commonTypeDict_IntegerFormat8;
  v80[10] = @"LastTimestamp";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v81[10] = commonTypeDict_IntegerFormat9;
  v80[11] = @"CurrentTimestamp";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v81[11] = commonTypeDict_IntegerFormat10;
  v80[12] = @"LogDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v81[12] = commonTypeDict_IntegerFormat11;
  v80[13] = @"ProcSystemState";
  v4 = *MEMORY[0x277D3F598];
  v77[0] = *MEMORY[0x277D3F5A8];
  v3 = v77[0];
  v77[1] = v4;
  v79[0] = &unk_282C132A8;
  v79[1] = &unk_282C132F0;
  v78 = *MEMORY[0x277D3F5A0];
  v5 = v78;
  v79[2] = &unk_282C132D8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v77 count:3];
  v81[13] = v23;
  v80[14] = @"ProcArmPerfState";
  v75[0] = v3;
  v75[1] = v4;
  v76[0] = &unk_282C132A8;
  v76[1] = &unk_282C133F8;
  v75[2] = v5;
  v76[2] = &unk_282C132D8;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
  v81[14] = v22;
  v80[15] = @"ModemAppMdspState";
  v73[0] = v3;
  v73[1] = v4;
  v74[0] = &unk_282C132A8;
  v74[1] = &unk_282C13308;
  v73[2] = v5;
  v74[2] = &unk_282C132D8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:3];
  v81[15] = v21;
  v80[16] = @"ModemAppMdspClockState";
  v71[0] = v3;
  v71[1] = v4;
  v72[0] = &unk_282C132A8;
  v72[1] = &unk_282C13308;
  v71[2] = v5;
  v72[2] = &unk_282C132D8;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:3];
  v81[16] = v20;
  v80[17] = @"ModemAppMdspSpeed";
  v69[0] = v3;
  v69[1] = v4;
  v70[0] = &unk_282C132A8;
  v70[1] = &unk_282C13410;
  v69[2] = v5;
  v70[2] = &unk_282C132D8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:3];
  v81[17] = v19;
  v80[18] = @"ModemAppMdmState";
  v67[0] = v3;
  v67[1] = v4;
  v68[0] = &unk_282C132A8;
  v68[1] = &unk_282C13308;
  v67[2] = v5;
  v68[2] = &unk_282C132D8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:3];
  v81[18] = v18;
  v80[19] = @"ModemAppAdspState";
  v65[0] = v3;
  v65[1] = v4;
  v66[0] = &unk_282C132A8;
  v66[1] = &unk_282C13308;
  v65[2] = v5;
  v66[2] = &unk_282C132D8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
  v81[19] = v17;
  v80[20] = @"ModemAppAdspClockState";
  v63[0] = v3;
  v63[1] = v4;
  v64[0] = &unk_282C132A8;
  v64[1] = &unk_282C13308;
  v63[2] = v5;
  v64[2] = &unk_282C132D8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:3];
  v81[20] = v16;
  v80[21] = @"ModemAppAdspSpeed";
  v61[0] = v3;
  v61[1] = v4;
  v62[0] = &unk_282C132A8;
  v62[1] = &unk_282C13410;
  v61[2] = v5;
  v62[2] = &unk_282C132D8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:3];
  v81[21] = v15;
  v80[22] = @"ModemAppAdmState";
  v59[0] = v3;
  v59[1] = v4;
  v60[0] = &unk_282C132A8;
  v60[1] = &unk_282C13308;
  v59[2] = v5;
  v60[2] = &unk_282C132D8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:3];
  v81[22] = v14;
  v80[23] = @"PeripheralUSBState";
  v57[0] = v3;
  v57[1] = v4;
  v58[0] = &unk_282C132A8;
  v58[1] = &unk_282C13308;
  v57[2] = v5;
  v58[2] = &unk_282C132D8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
  v81[23] = v6;
  v80[24] = @"PeripheralSPIState";
  v55[0] = v3;
  v55[1] = v4;
  v56[0] = &unk_282C132A8;
  v56[1] = &unk_282C13308;
  v55[2] = v5;
  v56[2] = &unk_282C132D8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
  v81[24] = v7;
  v80[25] = @"PeripheralGPSState";
  v53[0] = v3;
  v53[1] = v4;
  v54[0] = &unk_282C132A8;
  v54[1] = &unk_282C13308;
  v53[2] = v5;
  v54[2] = &unk_282C132D8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
  v81[25] = v8;
  v80[26] = @"PeripheralUARTState";
  v51[0] = v3;
  v51[1] = v4;
  v52[0] = &unk_282C132A8;
  v52[1] = &unk_282C13308;
  v51[2] = v5;
  v52[2] = &unk_282C132D8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
  v81[26] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:27];
  v85[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)populateEntryBBMav2HwOther:(id)other
{
  otherCopy = other;
  bbSwRev = [(PLBBMavLogMsg *)self bbSwRev];
  [otherCopy setObject:bbSwRev forKeyedSubscript:@"SWRevision"];

  bbHwRev = [(PLBBMavLogMsg *)self bbHwRev];
  [otherCopy setObject:bbHwRev forKeyedSubscript:@"HWRevision"];

  commonInfo = [(PLBBMavLogMsg *)self commonInfo];
  v8 = [commonInfo objectForKey:@"BBDate"];
  [otherCopy setObject:v8 forKeyedSubscript:@"BBDate"];

  bbHwStatsType = [(PLBBMavLogMsg *)self bbHwStatsType];
  [otherCopy setObject:bbHwStatsType forKeyedSubscript:@"HWStatsType"];

  bbHwStatsLength = [(PLBBMavLogMsg *)self bbHwStatsLength];
  [otherCopy setObject:bbHwStatsLength forKeyedSubscript:@"HwStatsLength"];

  bbHwStatsLevel = [(PLBBMavLogMsg *)self bbHwStatsLevel];
  [otherCopy setObject:bbHwStatsLevel forKeyedSubscript:@"HwStatsLevel"];

  bbHwCurrTimeStamp = [(PLBBMavLogMsg *)self bbHwCurrTimeStamp];
  [otherCopy setObject:bbHwCurrTimeStamp forKeyedSubscript:@"CurrentTimestamp"];

  bbHwLastTimeStamp = [(PLBBMavLogMsg *)self bbHwLastTimeStamp];
  [otherCopy setObject:bbHwLastTimeStamp forKeyedSubscript:@"LastTimestamp"];

  bbHwLogDurationInTicks = [(PLBBMavLogMsg *)self bbHwLogDurationInTicks];
  [otherCopy setObject:bbHwLogDurationInTicks forKeyedSubscript:@"LogDuration"];

  bbHwMsgType = [(PLBBMavLogMsg *)self bbHwMsgType];
  [otherCopy setObject:bbHwMsgType forKeyedSubscript:@"Type"];

  commonInfo2 = [(PLBBMavLogMsg *)self commonInfo];
  v17 = [commonInfo2 objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v17 convertFromBasebandToMonotonic];
  [otherCopy setEntryDate:convertFromBasebandToMonotonic];

  bbHwProcSystemState = [(PLBBMavLogMsg *)self bbHwProcSystemState];
  [otherCopy setObject:bbHwProcSystemState forKeyedSubscript:@"ProcSystemState"];

  bbHwProcArmPerfState = [(PLBBMavLogMsg *)self bbHwProcArmPerfState];
  [otherCopy setObject:bbHwProcArmPerfState forKeyedSubscript:@"ProcArmPerfState"];

  bbHwModemAppMdspState = [(PLBBMavLogMsg *)self bbHwModemAppMdspState];
  [otherCopy setObject:bbHwModemAppMdspState forKeyedSubscript:@"ModemAppMdspState"];

  bbHwModemAppMdspClockState = [(PLBBMavLogMsg *)self bbHwModemAppMdspClockState];
  [otherCopy setObject:bbHwModemAppMdspClockState forKeyedSubscript:@"ModemAppMdspClockState"];

  bbHwModemAppMdspSpeed = [(PLBBMavLogMsg *)self bbHwModemAppMdspSpeed];
  [otherCopy setObject:bbHwModemAppMdspSpeed forKeyedSubscript:@"ModemAppMdspSpeed"];

  bbHwModemAppMdmState = [(PLBBMavLogMsg *)self bbHwModemAppMdmState];
  [otherCopy setObject:bbHwModemAppMdmState forKeyedSubscript:@"ModemAppMdmState"];

  bbHwModemAppAdspState = [(PLBBMavLogMsg *)self bbHwModemAppAdspState];
  [otherCopy setObject:bbHwModemAppAdspState forKeyedSubscript:@"ModemAppAdspState"];

  bbHwModemAppAdspClockState = [(PLBBMavLogMsg *)self bbHwModemAppAdspClockState];
  [otherCopy setObject:bbHwModemAppAdspClockState forKeyedSubscript:@"ModemAppAdspClockState"];

  bbHwModemAppAdspSpeed = [(PLBBMavLogMsg *)self bbHwModemAppAdspSpeed];
  [otherCopy setObject:bbHwModemAppAdspSpeed forKeyedSubscript:@"ModemAppAdspSpeed"];

  bbHwModemAppAdmState = [(PLBBMavLogMsg *)self bbHwModemAppAdmState];
  [otherCopy setObject:bbHwModemAppAdmState forKeyedSubscript:@"ModemAppAdmState"];

  bbHwPeripheralUSBState = [(PLBBMavLogMsg *)self bbHwPeripheralUSBState];
  [otherCopy setObject:bbHwPeripheralUSBState forKeyedSubscript:@"PeripheralUSBState"];

  bbHwPeripheralSPIState = [(PLBBMavLogMsg *)self bbHwPeripheralSPIState];
  [otherCopy setObject:bbHwPeripheralSPIState forKeyedSubscript:@"PeripheralSPIState"];

  bbHwPeripheralGPSState = [(PLBBMavLogMsg *)self bbHwPeripheralGPSState];
  [otherCopy setObject:bbHwPeripheralGPSState forKeyedSubscript:@"PeripheralGPSState"];

  bbHwPeripheralUARTState = [(PLBBMavLogMsg *)self bbHwPeripheralUARTState];
  [otherCopy setObject:bbHwPeripheralUARTState forKeyedSubscript:@"PeripheralUARTState"];
}

- (void)addToGroupPLBBMav2HwOther
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __42__PLBBMavLogMsg_addToGroupPLBBMav2HwOther__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (qword_2811F6C30 != -1)
    {
      dispatch_once(&qword_2811F6C30, &block);
    }

    if (byte_2811F6B11 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg addToGroupPLBBMav2HwOther]", block, v14, v15, v16, v17];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg addToGroupPLBBMav2HwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:830];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  [(PLBBMavLogMsg *)self setGroupEntryKey:v10];
  [(PLBBMavLogMsg *)self populateEntryBBMav2HwOther:v11];
  [(PLBBMavLogMsg *)self addToGroupPLBBMavHwEntry:v11 withEntryKey:v10];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBBMavLogMsg_addToGroupPLBBMav2HwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B11 = result;
  return result;
}

- (void)refreshBBMav4HwOther
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __37__PLBBMavLogMsg_refreshBBMav4HwOther__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v4;
    if (qword_2811F6C38 != -1)
    {
      dispatch_once(&qword_2811F6C38, &block);
    }

    if (byte_2811F6B12 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg refreshBBMav4HwOther]", block, v16, v17, v18, v19];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg refreshBBMav4HwOther]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:848];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setIsErrorEntry:1];
  agent = [(PLBasebandMessage *)self agent];
  [agent logEntry:v12];

  objc_autoreleasePoolPop(v3);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PLBBMavLogMsg_refreshBBMav4HwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B12 = result;
  return result;
}

+ (id)entryEventMavBBMav4HwOther
{
  v79[2] = *MEMORY[0x277D85DE8];
  v78[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v76[0] = *MEMORY[0x277D3F568];
  v76[1] = v2;
  v77[0] = &unk_282C1CD78;
  v77[1] = @"refreshRequestHandler";
  v76[2] = *MEMORY[0x277D3F558];
  v77[2] = MEMORY[0x277CBEC38];
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v79[0] = v48;
  v78[1] = *MEMORY[0x277D3F540];
  v74[0] = @"Error";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v75[0] = commonTypeDict_BoolFormat;
  v74[1] = @"Type";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v75[1] = commonTypeDict_IntegerFormat;
  v74[2] = @"SeqNum";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v75[2] = commonTypeDict_IntegerFormat2;
  v74[3] = @"BBDate";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]4 commonTypeDict_DateFormat];
  v75[3] = commonTypeDict_DateFormat;
  v74[4] = @"TimeCal";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v75[4] = commonTypeDict_IntegerFormat3;
  v74[5] = @"SWRevision";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v75[5] = commonTypeDict_IntegerFormat4;
  v74[6] = @"HWRevision";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v75[6] = commonTypeDict_IntegerFormat5;
  v74[7] = @"HWStatsType";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v75[7] = commonTypeDict_IntegerFormat6;
  v74[8] = @"HwStatsLength";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v75[8] = commonTypeDict_IntegerFormat7;
  v74[9] = @"HwStatsLevel";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v75[9] = commonTypeDict_IntegerFormat8;
  v74[10] = @"LastTimestamp";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v75[10] = commonTypeDict_IntegerFormat9;
  v74[11] = @"CurrentTimestamp";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v75[11] = commonTypeDict_IntegerFormat10;
  v74[12] = @"LogDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v75[12] = commonTypeDict_IntegerFormat11;
  v74[13] = @"ProcSystemState";
  v4 = *MEMORY[0x277D3F598];
  v71[0] = *MEMORY[0x277D3F5A8];
  v3 = v71[0];
  v71[1] = v4;
  v73[0] = &unk_282C132A8;
  v73[1] = &unk_282C132F0;
  v72 = *MEMORY[0x277D3F5A0];
  v5 = v72;
  v73[2] = &unk_282C132D8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v71 count:3];
  v75[13] = v21;
  v74[14] = @"ProcArmPerfState";
  v69[0] = v3;
  v69[1] = v4;
  v70[0] = &unk_282C132A8;
  v70[1] = &unk_282C13368;
  v69[2] = v5;
  v70[2] = &unk_282C132D8;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:3];
  v75[14] = v20;
  v74[15] = @"ModemAppMdspSpeed";
  v67[0] = v3;
  v67[1] = v4;
  v68[0] = &unk_282C132A8;
  v68[1] = &unk_282C13410;
  v67[2] = v5;
  v68[2] = &unk_282C132D8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:3];
  v75[15] = v19;
  v74[16] = @"ModemAppMdmState";
  v65[0] = v3;
  v65[1] = v4;
  v66[0] = &unk_282C132A8;
  v66[1] = &unk_282C13308;
  v65[2] = v5;
  v66[2] = &unk_282C132D8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
  v75[16] = v18;
  v74[17] = @"ModemAppQdspSpeed";
  v63[0] = v3;
  v63[1] = v4;
  v64[0] = &unk_282C132A8;
  v64[1] = &unk_282C13410;
  v63[2] = v5;
  v64[2] = &unk_282C132D8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:3];
  v75[17] = v17;
  v74[18] = @"ModemAppAdmState";
  v61[0] = v3;
  v61[1] = v4;
  v62[0] = &unk_282C132A8;
  v62[1] = &unk_282C13308;
  v61[2] = v5;
  v62[2] = &unk_282C132D8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:3];
  v75[18] = v16;
  v74[19] = @"PeripheralUSBState";
  v59[0] = v3;
  v59[1] = v4;
  v60[0] = &unk_282C132A8;
  v60[1] = &unk_282C13308;
  v59[2] = v5;
  v60[2] = &unk_282C132D8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:3];
  v75[19] = v15;
  v74[20] = @"PeripheralSPIState";
  v57[0] = v3;
  v57[1] = v4;
  v58[0] = &unk_282C132A8;
  v58[1] = &unk_282C13308;
  v57[2] = v5;
  v58[2] = &unk_282C132D8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
  v75[20] = v14;
  v74[21] = @"PeripheralGPSState";
  v55[0] = v3;
  v55[1] = v4;
  v56[0] = &unk_282C132A8;
  v56[1] = &unk_282C13308;
  v55[2] = v5;
  v56[2] = &unk_282C132D8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
  v75[21] = v6;
  v74[22] = @"PeripheralUARTState";
  v53[0] = v3;
  v53[1] = v4;
  v54[0] = &unk_282C132A8;
  v54[1] = &unk_282C13308;
  v53[2] = v5;
  v54[2] = &unk_282C132D8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
  v75[22] = v7;
  v74[23] = @"SleepVetoClientListQdsp";
  v51[0] = v3;
  v51[1] = v4;
  v52[0] = &unk_282C132A8;
  v52[1] = &unk_282C13380;
  v51[2] = v5;
  v52[2] = &unk_282C132D8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
  v75[23] = v8;
  v74[24] = @"SleepVetoClientListArm";
  v49[0] = v3;
  v49[1] = v4;
  v50[0] = &unk_282C132A8;
  v50[1] = &unk_282C13380;
  v49[2] = v5;
  v50[2] = &unk_282C132D8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
  v75[24] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:25];
  v79[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)populateEntryBBMav4HwOther:(id)other
{
  otherCopy = other;
  bbSwRev = [(PLBBMavLogMsg *)self bbSwRev];
  [otherCopy setObject:bbSwRev forKeyedSubscript:@"SWRevision"];

  bbHwRev = [(PLBBMavLogMsg *)self bbHwRev];
  [otherCopy setObject:bbHwRev forKeyedSubscript:@"HWRevision"];

  commonInfo = [(PLBBMavLogMsg *)self commonInfo];
  v8 = [commonInfo objectForKey:@"BBDate"];
  [otherCopy setObject:v8 forKeyedSubscript:@"BBDate"];

  bbHwStatsType = [(PLBBMavLogMsg *)self bbHwStatsType];
  [otherCopy setObject:bbHwStatsType forKeyedSubscript:@"HWStatsType"];

  bbHwStatsLength = [(PLBBMavLogMsg *)self bbHwStatsLength];
  [otherCopy setObject:bbHwStatsLength forKeyedSubscript:@"HwStatsLength"];

  bbHwStatsLevel = [(PLBBMavLogMsg *)self bbHwStatsLevel];
  [otherCopy setObject:bbHwStatsLevel forKeyedSubscript:@"HwStatsLevel"];

  bbHwCurrTimeStamp = [(PLBBMavLogMsg *)self bbHwCurrTimeStamp];
  [otherCopy setObject:bbHwCurrTimeStamp forKeyedSubscript:@"CurrentTimestamp"];

  bbHwLastTimeStamp = [(PLBBMavLogMsg *)self bbHwLastTimeStamp];
  [otherCopy setObject:bbHwLastTimeStamp forKeyedSubscript:@"LastTimestamp"];

  bbHwLogDurationInTicks = [(PLBBMavLogMsg *)self bbHwLogDurationInTicks];
  [otherCopy setObject:bbHwLogDurationInTicks forKeyedSubscript:@"LogDuration"];

  bbHwMsgType = [(PLBBMavLogMsg *)self bbHwMsgType];
  [otherCopy setObject:bbHwMsgType forKeyedSubscript:@"Type"];

  commonInfo2 = [(PLBBMavLogMsg *)self commonInfo];
  v17 = [commonInfo2 objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v17 convertFromBasebandToMonotonic];
  [otherCopy setEntryDate:convertFromBasebandToMonotonic];

  bbHwProcSystemState = [(PLBBMavLogMsg *)self bbHwProcSystemState];
  [otherCopy setObject:bbHwProcSystemState forKeyedSubscript:@"ProcSystemState"];

  bbHwProcArmPerfState = [(PLBBMavLogMsg *)self bbHwProcArmPerfState];
  [otherCopy setObject:bbHwProcArmPerfState forKeyedSubscript:@"ProcArmPerfState"];

  bbHwModemAppMdspSpeed = [(PLBBMavLogMsg *)self bbHwModemAppMdspSpeed];
  [otherCopy setObject:bbHwModemAppMdspSpeed forKeyedSubscript:@"ModemAppMdspSpeed"];

  bbHwModemAppMdmState = [(PLBBMavLogMsg *)self bbHwModemAppMdmState];
  [otherCopy setObject:bbHwModemAppMdmState forKeyedSubscript:@"ModemAppMdmState"];

  bbHwModemAppQdspSpeed = [(PLBBMavLogMsg *)self bbHwModemAppQdspSpeed];
  [otherCopy setObject:bbHwModemAppQdspSpeed forKeyedSubscript:@"ModemAppQdspSpeed"];

  bbHwModemAppAdmState = [(PLBBMavLogMsg *)self bbHwModemAppAdmState];
  [otherCopy setObject:bbHwModemAppAdmState forKeyedSubscript:@"ModemAppAdmState"];

  bbHwPeripheralGPSState = [(PLBBMavLogMsg *)self bbHwPeripheralGPSState];
  [otherCopy setObject:bbHwPeripheralGPSState forKeyedSubscript:@"PeripheralGPSState"];

  bbHwPeripheralUSBState = [(PLBBMavLogMsg *)self bbHwPeripheralUSBState];
  [otherCopy setObject:bbHwPeripheralUSBState forKeyedSubscript:@"PeripheralUSBState"];

  bbHwPeripheralUARTState = [(PLBBMavLogMsg *)self bbHwPeripheralUARTState];
  [otherCopy setObject:bbHwPeripheralUARTState forKeyedSubscript:@"PeripheralUARTState"];

  bbHwPeripheralSPIState = [(PLBBMavLogMsg *)self bbHwPeripheralSPIState];
  [otherCopy setObject:bbHwPeripheralSPIState forKeyedSubscript:@"PeripheralSPIState"];

  bbHwSleepVetoClientListQdsp = [(PLBBMavLogMsg *)self bbHwSleepVetoClientListQdsp];
  [otherCopy setObject:bbHwSleepVetoClientListQdsp forKeyedSubscript:@"SleepVetoClientListQdsp"];

  bbHwSleepVetoClientListArm = [(PLBBMavLogMsg *)self bbHwSleepVetoClientListArm];
  [otherCopy setObject:bbHwSleepVetoClientListArm forKeyedSubscript:@"SleepVetoClientListArm"];
}

- (void)addToGroupPLBBMav4HwOther
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __42__PLBBMavLogMsg_addToGroupPLBBMav4HwOther__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (qword_2811F6C40 != -1)
    {
      dispatch_once(&qword_2811F6C40, &block);
    }

    if (byte_2811F6B13 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg addToGroupPLBBMav4HwOther]", block, v14, v15, v16, v17];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg addToGroupPLBBMav4HwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:965];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  [(PLBBMavLogMsg *)self setGroupEntryKey:v10];
  [(PLBBMavLogMsg *)self populateEntryBBMav4HwOther:v11];
  [(PLBBMavLogMsg *)self addToGroupPLBBMavHwEntry:v11 withEntryKey:v10];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBBMavLogMsg_addToGroupPLBBMav4HwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B13 = result;
  return result;
}

- (void)refreshBBMav10HwOther
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __38__PLBBMavLogMsg_refreshBBMav10HwOther__block_invoke;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v3;
    if (qword_2811F6C48 != -1)
    {
      dispatch_once(&qword_2811F6C48, &block);
    }

    if (byte_2811F6B14 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg refreshBBMav10HwOther]", block, v12, v13, v14, v15];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg refreshBBMav10HwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:982];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __38__PLBBMavLogMsg_refreshBBMav10HwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B14 = result;
  return result;
}

+ (id)entryEventMavBBMav10HwOther
{
  v108[2] = *MEMORY[0x277D85DE8];
  v107[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v105[0] = *MEMORY[0x277D3F568];
  v105[1] = v2;
  v106[0] = &unk_282C1CD88;
  v106[1] = @"refreshMavBBHwOther";
  v105[2] = *MEMORY[0x277D3F558];
  v106[2] = MEMORY[0x277CBEC38];
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:3];
  v108[0] = v71;
  v107[1] = *MEMORY[0x277D3F540];
  v103[0] = @"Error";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v104[0] = commonTypeDict_BoolFormat;
  v103[1] = @"SeqNum";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v104[1] = commonTypeDict_IntegerFormat;
  v103[2] = @"BBDate";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v104[2] = commonTypeDict_DateFormat;
  v103[3] = @"TimeCal";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v104[3] = commonTypeDict_IntegerFormat2;
  v103[4] = @"SWRevision";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v104[4] = commonTypeDict_IntegerFormat3;
  v103[5] = @"HWRevision";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v104[5] = commonTypeDict_IntegerFormat4;
  v103[6] = @"HWStatsType";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v104[6] = commonTypeDict_IntegerFormat5;
  v103[7] = @"HwStatsLength";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v104[7] = commonTypeDict_IntegerFormat6;
  v103[8] = @"HwStatsLevel";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v104[8] = commonTypeDict_IntegerFormat7;
  v103[9] = @"LastTimestamp";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v104[9] = commonTypeDict_IntegerFormat8;
  v103[10] = @"CurrentTimestamp";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v104[10] = commonTypeDict_IntegerFormat9;
  v103[11] = @"LogDuration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v104[11] = commonTypeDict_IntegerFormat10;
  v103[12] = @"RPMXOShutdownDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v104[12] = commonTypeDict_IntegerFormat11;
  v103[13] = @"RPMXOShutdownCount";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v104[13] = commonTypeDict_IntegerFormat12;
  v103[14] = @"RPMVDDMinDuration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v104[14] = commonTypeDict_IntegerFormat13;
  v103[15] = @"RPMVDDMinEnterCount";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v104[15] = commonTypeDict_IntegerFormat14;
  v103[16] = @"AppsPerfStateCountHistogram";
  v4 = *MEMORY[0x277D3F598];
  v100[0] = *MEMORY[0x277D3F5A8];
  v3 = v100[0];
  v100[1] = v4;
  v102[0] = &unk_282C132A8;
  v102[1] = &unk_282C13410;
  v101 = *MEMORY[0x277D3F5A0];
  v5 = v101;
  v102[2] = &unk_282C132D8;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v100 count:3];
  v104[16] = v38;
  v103[17] = @"CXOShutdownDuration";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v104[17] = commonTypeDict_IntegerFormat15;
  v103[18] = @"CXOShutdownCount";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v104[18] = commonTypeDict_IntegerFormat16;
  v103[19] = @"USBStateCountHistogram";
  v98[0] = v3;
  v98[1] = v4;
  v99[0] = &unk_282C132A8;
  v99[1] = &unk_282C132F0;
  v98[2] = v5;
  v99[2] = &unk_282C132D8;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:3];
  v104[19] = v33;
  v103[20] = @"UARTOnOffStateHistogram";
  v96[0] = v3;
  v96[1] = v4;
  v97[0] = &unk_282C132A8;
  v97[1] = &unk_282C13308;
  v96[2] = v5;
  v97[2] = &unk_282C132D8;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:3];
  v104[20] = v32;
  v103[21] = @"SPIOnOffStateHistogram";
  v94[0] = v3;
  v94[1] = v4;
  v95[0] = &unk_282C132A8;
  v95[1] = &unk_282C13308;
  v94[2] = v5;
  v95[2] = &unk_282C132D8;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:3];
  v104[21] = v31;
  v103[22] = @"ADMOnOffStateHistogram";
  v92[0] = v3;
  v92[1] = v4;
  v93[0] = &unk_282C132A8;
  v93[1] = &unk_282C13308;
  v92[2] = v5;
  v93[2] = &unk_282C132D8;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:3];
  v104[22] = v30;
  v103[23] = @"LPASSOnOffStateHistogram";
  v90[0] = v3;
  v90[1] = v4;
  v91[0] = &unk_282C132A8;
  v91[1] = &unk_282C13308;
  v90[2] = v5;
  v91[2] = &unk_282C132D8;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:3];
  v104[23] = v29;
  v103[24] = @"APPSSleepVetoState";
  v88[0] = v3;
  v88[1] = v4;
  v89[0] = &unk_282C132A8;
  v89[1] = &unk_282C13320;
  v88[2] = v5;
  v89[2] = &unk_282C132D8;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:3];
  v104[24] = v28;
  v103[25] = @"MPSSSleepVetoHistogram";
  v86[0] = v3;
  v86[1] = v4;
  v87[0] = &unk_282C132A8;
  v87[1] = &unk_282C132F0;
  v86[2] = v5;
  v87[2] = &unk_282C132D8;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];
  v104[25] = v27;
  v103[26] = @"QDSPConfigCountHistogram";
  v84[0] = v3;
  v84[1] = v4;
  v85[0] = &unk_282C132A8;
  v85[1] = &unk_282C13428;
  v84[2] = v5;
  v85[2] = &unk_282C132D8;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  v104[26] = v26;
  v103[27] = @"GPSOnOffStateHistogram";
  v82[0] = v3;
  v82[1] = v4;
  v83[0] = &unk_282C132A8;
  v83[1] = &unk_282C13308;
  v82[2] = v5;
  v83[2] = &unk_282C132D8;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:3];
  v104[27] = v25;
  v103[28] = @"GPSDPOOnOffStateHistogram";
  v80[0] = v3;
  v80[1] = v4;
  v81[0] = &unk_282C132A8;
  v81[1] = &unk_282C13308;
  v80[2] = v5;
  v81[2] = &unk_282C132D8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
  v104[28] = v24;
  v103[29] = @"GPSDPOBins";
  v78[0] = v3;
  v78[1] = v4;
  v79[0] = &unk_282C132A8;
  v79[1] = &unk_282C132C0;
  v78[2] = v5;
  v79[2] = &unk_282C132D8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:3];
  v104[29] = v23;
  v103[30] = @"MPSSCXOShutdownDuration";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v104[30] = commonTypeDict_IntegerFormat17;
  v103[31] = @"MPSSCXOShutdownCount";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v104[31] = commonTypeDict_IntegerFormat18;
  v103[32] = @"MCPMVetoNumHistogram";
  v76[0] = v3;
  v76[1] = v4;
  v77[0] = &unk_282C132A8;
  v77[1] = &unk_282C133C8;
  v76[2] = v5;
  v77[2] = &unk_282C132D8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v104[32] = v18;
  v103[33] = @"NPAVetoMask";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v104[33] = commonTypeDict_IntegerFormat19;
  v103[34] = @"NPAVetoClientNumHistogram";
  v74[0] = v3;
  v74[1] = v4;
  v75[0] = &unk_282C132A8;
  v75[1] = &unk_282C13350;
  v74[2] = v5;
  v75[2] = &unk_282C132D8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:3];
  v104[34] = v7;
  v103[35] = @"AppsClockStateDurationStr";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]22 commonTypeDict_StringFormat];
  v104[35] = commonTypeDict_StringFormat;
  v103[36] = @"MpssClockStateDurationStr";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]23 commonTypeDict_StringFormat];
  v104[36] = commonTypeDict_StringFormat2;
  v103[37] = @"HsicStateSleepVetoNum";
  v72[0] = v3;
  v72[1] = v4;
  v73[0] = &unk_282C132A8;
  v73[1] = &unk_282C13368;
  v72[2] = v5;
  v73[2] = &unk_282C132D8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:3];
  v104[37] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:38];
  v108[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)logEventBackwardMav10BBHwOther
{
  v25 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBBMavLogMsg_logEventBackwardMav10BBHwOther__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6C50 != -1)
    {
      dispatch_once(&qword_2811F6C50, block);
    }

    if (byte_2811F6B15 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg logEventBackwardMav10BBHwOther]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardMav10BBHwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1081];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D3F5C8];
  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [(PLBBMavLogMsg *)self populateEntryBBMav10HwOther:v12];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __47__PLBBMavLogMsg_logEventBackwardMav10BBHwOther__block_invoke_569;
    v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v21[4] = v13;
    if (qword_2811F6C58 != -1)
    {
      dispatch_once(&qword_2811F6C58, v21);
    }

    if (byte_2811F6B16 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"About to send to log at %s", "-[PLBBMavLogMsg logEventBackwardMav10BBHwOther]"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardMav10BBHwOther]"];
      [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:1087];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLBBMavLogMsg *)self sendAndLogPLEntry:v12 withName:@"MavBBHwOther" withType:v10];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLBBMavLogMsg_logEventBackwardMav10BBHwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B15 = result;
  return result;
}

uint64_t __47__PLBBMavLogMsg_logEventBackwardMav10BBHwOther__block_invoke_569(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B16 = result;
  return result;
}

- (void)addToGroupPLBBMav10HwOther
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __43__PLBBMavLogMsg_addToGroupPLBBMav10HwOther__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (qword_2811F6C60 != -1)
    {
      dispatch_once(&qword_2811F6C60, &block);
    }

    if (byte_2811F6B17 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg addToGroupPLBBMav10HwOther]", block, v14, v15, v16, v17];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg addToGroupPLBBMav10HwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1096];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  [(PLBBMavLogMsg *)self setGroupEntryKey:v10];
  [(PLBBMavLogMsg *)self populateEntryBBMav10HwOther:v11];
  [(PLBBMavLogMsg *)self addToGroupPLBBMavHwEntry:v11 withEntryKey:v10];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLBBMavLogMsg_addToGroupPLBBMav10HwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B17 = result;
  return result;
}

- (void)populateEntryBBMav10HwOther:(id)other
{
  otherCopy = other;
  commonInfo = [(PLBBMavLogMsg *)self commonInfo];
  v6 = [commonInfo objectForKey:@"BBDate"];
  [otherCopy setObject:v6 forKeyedSubscript:@"BBDate"];

  commonInfo2 = [(PLBBMavLogMsg *)self commonInfo];
  v8 = [commonInfo2 objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v8 convertFromBasebandToMonotonic];
  [otherCopy setEntryDate:convertFromBasebandToMonotonic];

  bbSwRev = [(PLBBMavLogMsg *)self bbSwRev];
  [otherCopy setObject:bbSwRev forKeyedSubscript:@"SWRevision"];

  bbHwRev = [(PLBBMavLogMsg *)self bbHwRev];
  [otherCopy setObject:bbHwRev forKeyedSubscript:@"HWRevision"];

  bbHwStatsType = [(PLBBMavLogMsg *)self bbHwStatsType];
  [otherCopy setObject:bbHwStatsType forKeyedSubscript:@"HWStatsType"];

  bbHwStatsLength = [(PLBBMavLogMsg *)self bbHwStatsLength];
  [otherCopy setObject:bbHwStatsLength forKeyedSubscript:@"HwStatsLength"];

  bbHwStatsLevel = [(PLBBMavLogMsg *)self bbHwStatsLevel];
  [otherCopy setObject:bbHwStatsLevel forKeyedSubscript:@"HwStatsLevel"];

  bbHwCurrTimeStamp = [(PLBBMavLogMsg *)self bbHwCurrTimeStamp];
  [otherCopy setObject:bbHwCurrTimeStamp forKeyedSubscript:@"CurrentTimestamp"];

  bbHwLastTimeStamp = [(PLBBMavLogMsg *)self bbHwLastTimeStamp];
  [otherCopy setObject:bbHwLastTimeStamp forKeyedSubscript:@"LastTimestamp"];

  bbHwLogDurationInTicks = [(PLBBMavLogMsg *)self bbHwLogDurationInTicks];
  [otherCopy setObject:bbHwLogDurationInTicks forKeyedSubscript:@"LogDuration"];

  rpmXOShutDuration = [(PLBBMavLogMsg *)self rpmXOShutDuration];
  [otherCopy setObject:rpmXOShutDuration forKeyedSubscript:@"RPMXOShutdownDuration"];

  rpmXOShutCnt = [(PLBBMavLogMsg *)self rpmXOShutCnt];
  [otherCopy setObject:rpmXOShutCnt forKeyedSubscript:@"RPMXOShutdownCount"];

  rpmVDDMinDuration = [(PLBBMavLogMsg *)self rpmVDDMinDuration];
  [otherCopy setObject:rpmVDDMinDuration forKeyedSubscript:@"RPMVDDMinDuration"];

  rpmVDDMinEnterCnt = [(PLBBMavLogMsg *)self rpmVDDMinEnterCnt];
  [otherCopy setObject:rpmVDDMinEnterCnt forKeyedSubscript:@"RPMVDDMinEnterCount"];

  appsPerfStateCountHist = [(PLBBMavLogMsg *)self appsPerfStateCountHist];
  [otherCopy setObject:appsPerfStateCountHist forKeyedSubscript:@"AppsPerfStateCountHistogram"];

  cxoShutDownDuration = [(PLBBMavLogMsg *)self cxoShutDownDuration];
  [otherCopy setObject:cxoShutDownDuration forKeyedSubscript:@"CXOShutdownDuration"];

  cxoShutDownCount = [(PLBBMavLogMsg *)self cxoShutDownCount];
  [otherCopy setObject:cxoShutDownCount forKeyedSubscript:@"CXOShutdownCount"];

  usbStateCountHist = [(PLBBMavLogMsg *)self usbStateCountHist];
  [otherCopy setObject:usbStateCountHist forKeyedSubscript:@"USBStateCountHistogram"];

  uartOnOffState = [(PLBBMavLogMsg *)self uartOnOffState];
  [otherCopy setObject:uartOnOffState forKeyedSubscript:@"UARTOnOffStateHistogram"];

  spiOnOffState = [(PLBBMavLogMsg *)self spiOnOffState];
  [otherCopy setObject:spiOnOffState forKeyedSubscript:@"SPIOnOffStateHistogram"];

  admOnOffState = [(PLBBMavLogMsg *)self admOnOffState];
  [otherCopy setObject:admOnOffState forKeyedSubscript:@"ADMOnOffStateHistogram"];

  lpassOnOffState = [(PLBBMavLogMsg *)self lpassOnOffState];
  [otherCopy setObject:lpassOnOffState forKeyedSubscript:@"LPASSOnOffStateHistogram"];

  appsSleepVeto = [(PLBBMavLogMsg *)self appsSleepVeto];
  [otherCopy setObject:appsSleepVeto forKeyedSubscript:@"APPSSleepVetoState"];

  mpssSleepVeto = [(PLBBMavLogMsg *)self mpssSleepVeto];
  [otherCopy setObject:mpssSleepVeto forKeyedSubscript:@"MPSSSleepVetoHistogram"];

  qdspConfigCount = [(PLBBMavLogMsg *)self qdspConfigCount];
  [otherCopy setObject:qdspConfigCount forKeyedSubscript:@"QDSPConfigCountHistogram"];

  gpsOnOff = [(PLBBMavLogMsg *)self gpsOnOff];
  [otherCopy setObject:gpsOnOff forKeyedSubscript:@"GPSOnOffStateHistogram"];

  gpsDPOOnOff = [(PLBBMavLogMsg *)self gpsDPOOnOff];
  [otherCopy setObject:gpsDPOOnOff forKeyedSubscript:@"GPSDPOOnOffStateHistogram"];

  gpsDPOBin = [(PLBBMavLogMsg *)self gpsDPOBin];
  [otherCopy setObject:gpsDPOBin forKeyedSubscript:@"GPSDPOBins"];

  mpssCxoShutDownDuration = [(PLBBMavLogMsg *)self mpssCxoShutDownDuration];
  [otherCopy setObject:mpssCxoShutDownDuration forKeyedSubscript:@"MPSSCXOShutdownDuration"];

  mpssCxoShutDownCount = [(PLBBMavLogMsg *)self mpssCxoShutDownCount];
  [otherCopy setObject:mpssCxoShutDownCount forKeyedSubscript:@"MPSSCXOShutdownCount"];

  mcpmVetoNumHistogram = [(PLBBMavLogMsg *)self mcpmVetoNumHistogram];
  [otherCopy setObject:mcpmVetoNumHistogram forKeyedSubscript:@"MCPMVetoNumHistogram"];

  npaVetoMask = [(PLBBMavLogMsg *)self npaVetoMask];
  [otherCopy setObject:npaVetoMask forKeyedSubscript:@"NPAVetoMask"];

  npaVetoClientNumHistogram = [(PLBBMavLogMsg *)self npaVetoClientNumHistogram];
  [otherCopy setObject:npaVetoClientNumHistogram forKeyedSubscript:@"NPAVetoClientNumHistogram"];

  appsClockStateDurationStr = [(PLBBMavLogMsg *)self appsClockStateDurationStr];
  [otherCopy setObject:appsClockStateDurationStr forKeyedSubscript:@"AppsClockStateDurationStr"];

  mpssClockStateDurationStr = [(PLBBMavLogMsg *)self mpssClockStateDurationStr];
  [otherCopy setObject:mpssClockStateDurationStr forKeyedSubscript:@"MpssClockStateDurationStr"];

  hsicStateSleepVetoNum = [(PLBBMavLogMsg *)self hsicStateSleepVetoNum];
  [otherCopy setObject:hsicStateSleepVetoNum forKeyedSubscript:@"HsicStateSleepVetoNum"];
}

- (void)refreshBBMav13HwOther
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __38__PLBBMavLogMsg_refreshBBMav13HwOther__block_invoke;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v3;
    if (qword_2811F6C68 != -1)
    {
      dispatch_once(&qword_2811F6C68, &block);
    }

    if (byte_2811F6B18 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg refreshBBMav13HwOther]", block, v12, v13, v14, v15];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg refreshBBMav13HwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1172];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __38__PLBBMavLogMsg_refreshBBMav13HwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B18 = result;
  return result;
}

+ (id)entryEventMavBBMav13HwOther
{
  v96[2] = *MEMORY[0x277D85DE8];
  v95[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v93[0] = *MEMORY[0x277D3F568];
  v93[1] = v2;
  v94[0] = &unk_282C1CD98;
  v94[1] = @"refreshMavBBHwOther";
  v93[2] = *MEMORY[0x277D3F558];
  v94[2] = MEMORY[0x277CBEC38];
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:3];
  v96[0] = v67;
  v95[1] = *MEMORY[0x277D3F540];
  v91[0] = @"Error";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v92[0] = commonTypeDict_BoolFormat;
  v91[1] = @"SeqNum";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v92[1] = commonTypeDict_IntegerFormat;
  v91[2] = @"BBDate";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v92[2] = commonTypeDict_DateFormat;
  v91[3] = @"TimeCal";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v92[3] = commonTypeDict_IntegerFormat2;
  v91[4] = @"SWRevision";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v92[4] = commonTypeDict_IntegerFormat3;
  v91[5] = @"HWRevision";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v92[5] = commonTypeDict_IntegerFormat4;
  v91[6] = @"HWStatsType";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v92[6] = commonTypeDict_IntegerFormat5;
  v91[7] = @"HwStatsLength";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v92[7] = commonTypeDict_IntegerFormat6;
  v91[8] = @"HwStatsLevel";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v92[8] = commonTypeDict_IntegerFormat7;
  v91[9] = @"LastTimestamp";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v92[9] = commonTypeDict_IntegerFormat8;
  v91[10] = @"CurrentTimestamp";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v92[10] = commonTypeDict_IntegerFormat9;
  v91[11] = @"LogDuration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v92[11] = commonTypeDict_IntegerFormat10;
  v91[12] = @"RPMXOShutdownDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v92[12] = commonTypeDict_IntegerFormat11;
  v91[13] = @"RPMXOShutdownCount";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v92[13] = commonTypeDict_IntegerFormat12;
  v91[14] = @"RPMVDDMinDuration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v92[14] = commonTypeDict_IntegerFormat13;
  v91[15] = @"RPMVDDMinEnterCount";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v92[15] = commonTypeDict_IntegerFormat14;
  v91[16] = @"AppsPerfStateCountHistogram";
  v4 = *MEMORY[0x277D3F598];
  v88[0] = *MEMORY[0x277D3F5A8];
  v3 = v88[0];
  v88[1] = v4;
  v90[0] = &unk_282C132A8;
  v90[1] = &unk_282C132C0;
  v89 = *MEMORY[0x277D3F5A0];
  v5 = v89;
  v90[2] = &unk_282C132D8;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v88 count:3];
  v92[16] = v34;
  v91[17] = @"CXOShutdownDuration";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v92[17] = commonTypeDict_IntegerFormat15;
  v91[18] = @"CXOShutdownCount";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v92[18] = commonTypeDict_IntegerFormat16;
  v91[19] = @"LPASSOnOffStateHistogram";
  v86[0] = v3;
  v86[1] = v4;
  v87[0] = &unk_282C132A8;
  v87[1] = &unk_282C13308;
  v86[2] = v5;
  v87[2] = &unk_282C132D8;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];
  v92[19] = v29;
  v91[20] = @"APPSSleepVetoState";
  v84[0] = v3;
  v84[1] = v4;
  v85[0] = &unk_282C132A8;
  v85[1] = &unk_282C13410;
  v84[2] = v5;
  v85[2] = &unk_282C132D8;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  v92[20] = v28;
  v91[21] = @"MPSSSleepVetoHistogram";
  v82[0] = v3;
  v82[1] = v4;
  v83[0] = &unk_282C132A8;
  v83[1] = &unk_282C13440;
  v82[2] = v5;
  v83[2] = &unk_282C132D8;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:3];
  v92[21] = v27;
  v91[22] = @"QDSPConfigCountHistogram";
  v80[0] = v3;
  v80[1] = v4;
  v81[0] = &unk_282C132A8;
  v81[1] = &unk_282C133C8;
  v80[2] = v5;
  v81[2] = &unk_282C132D8;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
  v92[22] = v26;
  v91[23] = @"GPSOnOffStateHistogram";
  v78[0] = v3;
  v78[1] = v4;
  v79[0] = &unk_282C132A8;
  v79[1] = &unk_282C13308;
  v78[2] = v5;
  v79[2] = &unk_282C132D8;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:3];
  v92[23] = v25;
  v91[24] = @"GPSDPOOnOffStateHistogram";
  v76[0] = v3;
  v76[1] = v4;
  v77[0] = &unk_282C132A8;
  v77[1] = &unk_282C13308;
  v76[2] = v5;
  v77[2] = &unk_282C132D8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v92[24] = v24;
  v91[25] = @"GPSDPOBins";
  v74[0] = v3;
  v74[1] = v4;
  v75[0] = &unk_282C132A8;
  v75[1] = &unk_282C132C0;
  v74[2] = v5;
  v75[2] = &unk_282C132D8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:3];
  v92[25] = v23;
  v91[26] = @"MPSSCXOShutdownDuration";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v92[26] = commonTypeDict_IntegerFormat17;
  v91[27] = @"MPSSCXOShutdownCount";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v92[27] = commonTypeDict_IntegerFormat18;
  v91[28] = @"MCPMVetoNumHistogram";
  v72[0] = v3;
  v72[1] = v4;
  v73[0] = &unk_282C132A8;
  v73[1] = &unk_282C133C8;
  v72[2] = v5;
  v73[2] = &unk_282C132D8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:3];
  v92[28] = v18;
  v91[29] = @"NPAVetoMask";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v92[29] = commonTypeDict_IntegerFormat19;
  v91[30] = @"NPAVetoClientNumHistogram";
  v70[0] = v3;
  v70[1] = v4;
  v71[0] = &unk_282C132A8;
  v71[1] = &unk_282C13350;
  v70[2] = v5;
  v71[2] = &unk_282C132D8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:3];
  v92[30] = v6;
  v91[31] = @"AppsClockStateDurationStr";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]22 commonTypeDict_StringFormat];
  v92[31] = commonTypeDict_StringFormat;
  v91[32] = @"MpssClockStateDurationStr";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]23 commonTypeDict_StringFormat];
  v92[32] = commonTypeDict_StringFormat2;
  v91[33] = @"PCIEStateHistogram";
  v68[0] = v3;
  v68[1] = v4;
  v69[0] = &unk_282C132A8;
  v69[1] = &unk_282C132F0;
  v68[2] = v5;
  v69[2] = &unk_282C132D8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:3];
  v92[33] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:34];
  v96[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)logEventBackwardMav13BBHwOther
{
  v25 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBBMavLogMsg_logEventBackwardMav13BBHwOther__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6C70 != -1)
    {
      dispatch_once(&qword_2811F6C70, block);
    }

    if (byte_2811F6B19 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg logEventBackwardMav13BBHwOther]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardMav13BBHwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1247];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D3F5C8];
  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [(PLBBMavLogMsg *)self populateEntryBBMav13HwOther:v12];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __47__PLBBMavLogMsg_logEventBackwardMav13BBHwOther__block_invoke_576;
    v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v21[4] = v13;
    if (qword_2811F6C78 != -1)
    {
      dispatch_once(&qword_2811F6C78, v21);
    }

    if (byte_2811F6B1A == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"About to send to log at %s", "-[PLBBMavLogMsg logEventBackwardMav13BBHwOther]"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardMav13BBHwOther]"];
      [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:1253];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLBBMavLogMsg *)self sendAndLogPLEntry:v12 withName:@"MavBBHwOther" withType:v10];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLBBMavLogMsg_logEventBackwardMav13BBHwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B19 = result;
  return result;
}

uint64_t __47__PLBBMavLogMsg_logEventBackwardMav13BBHwOther__block_invoke_576(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B1A = result;
  return result;
}

- (void)addToGroupPLBBMav13HwOther
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __43__PLBBMavLogMsg_addToGroupPLBBMav13HwOther__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (qword_2811F6C80 != -1)
    {
      dispatch_once(&qword_2811F6C80, &block);
    }

    if (byte_2811F6B1B == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg addToGroupPLBBMav13HwOther]", block, v14, v15, v16, v17];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg addToGroupPLBBMav13HwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1262];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  [(PLBBMavLogMsg *)self setGroupEntryKey:v10];
  [(PLBBMavLogMsg *)self populateEntryBBMav13HwOther:v11];
  [(PLBBMavLogMsg *)self addToGroupPLBBMavHwEntry:v11 withEntryKey:v10];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLBBMavLogMsg_addToGroupPLBBMav13HwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B1B = result;
  return result;
}

- (void)populateEntryBBMav13HwOther:(id)other
{
  otherCopy = other;
  commonInfo = [(PLBBMavLogMsg *)self commonInfo];
  v6 = [commonInfo objectForKey:@"BBDate"];
  [otherCopy setObject:v6 forKeyedSubscript:@"BBDate"];

  commonInfo2 = [(PLBBMavLogMsg *)self commonInfo];
  v8 = [commonInfo2 objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v8 convertFromBasebandToMonotonic];
  [otherCopy setEntryDate:convertFromBasebandToMonotonic];

  bbSwRev = [(PLBBMavLogMsg *)self bbSwRev];
  [otherCopy setObject:bbSwRev forKeyedSubscript:@"SWRevision"];

  bbHwRev = [(PLBBMavLogMsg *)self bbHwRev];
  [otherCopy setObject:bbHwRev forKeyedSubscript:@"HWRevision"];

  bbHwStatsType = [(PLBBMavLogMsg *)self bbHwStatsType];
  [otherCopy setObject:bbHwStatsType forKeyedSubscript:@"HWStatsType"];

  bbHwStatsLength = [(PLBBMavLogMsg *)self bbHwStatsLength];
  [otherCopy setObject:bbHwStatsLength forKeyedSubscript:@"HwStatsLength"];

  bbHwStatsLevel = [(PLBBMavLogMsg *)self bbHwStatsLevel];
  [otherCopy setObject:bbHwStatsLevel forKeyedSubscript:@"HwStatsLevel"];

  bbHwCurrTimeStamp = [(PLBBMavLogMsg *)self bbHwCurrTimeStamp];
  [otherCopy setObject:bbHwCurrTimeStamp forKeyedSubscript:@"CurrentTimestamp"];

  bbHwLastTimeStamp = [(PLBBMavLogMsg *)self bbHwLastTimeStamp];
  [otherCopy setObject:bbHwLastTimeStamp forKeyedSubscript:@"LastTimestamp"];

  bbHwLogDurationInTicks = [(PLBBMavLogMsg *)self bbHwLogDurationInTicks];
  [otherCopy setObject:bbHwLogDurationInTicks forKeyedSubscript:@"LogDuration"];

  rpmXOShutDuration = [(PLBBMavLogMsg *)self rpmXOShutDuration];
  [otherCopy setObject:rpmXOShutDuration forKeyedSubscript:@"RPMXOShutdownDuration"];

  rpmXOShutCnt = [(PLBBMavLogMsg *)self rpmXOShutCnt];
  [otherCopy setObject:rpmXOShutCnt forKeyedSubscript:@"RPMXOShutdownCount"];

  rpmVDDMinDuration = [(PLBBMavLogMsg *)self rpmVDDMinDuration];
  [otherCopy setObject:rpmVDDMinDuration forKeyedSubscript:@"RPMVDDMinDuration"];

  rpmVDDMinEnterCnt = [(PLBBMavLogMsg *)self rpmVDDMinEnterCnt];
  [otherCopy setObject:rpmVDDMinEnterCnt forKeyedSubscript:@"RPMVDDMinEnterCount"];

  appsPerfStateCountHist = [(PLBBMavLogMsg *)self appsPerfStateCountHist];
  [otherCopy setObject:appsPerfStateCountHist forKeyedSubscript:@"AppsPerfStateCountHistogram"];

  cxoShutDownDuration = [(PLBBMavLogMsg *)self cxoShutDownDuration];
  [otherCopy setObject:cxoShutDownDuration forKeyedSubscript:@"CXOShutdownDuration"];

  cxoShutDownCount = [(PLBBMavLogMsg *)self cxoShutDownCount];
  [otherCopy setObject:cxoShutDownCount forKeyedSubscript:@"CXOShutdownCount"];

  lpassOnOffState = [(PLBBMavLogMsg *)self lpassOnOffState];
  [otherCopy setObject:lpassOnOffState forKeyedSubscript:@"LPASSOnOffStateHistogram"];

  appsSleepVeto = [(PLBBMavLogMsg *)self appsSleepVeto];
  [otherCopy setObject:appsSleepVeto forKeyedSubscript:@"APPSSleepVetoState"];

  mpssSleepVeto = [(PLBBMavLogMsg *)self mpssSleepVeto];
  [otherCopy setObject:mpssSleepVeto forKeyedSubscript:@"MPSSSleepVetoHistogram"];

  qdspConfigCount = [(PLBBMavLogMsg *)self qdspConfigCount];
  [otherCopy setObject:qdspConfigCount forKeyedSubscript:@"QDSPConfigCountHistogram"];

  gpsOnOff = [(PLBBMavLogMsg *)self gpsOnOff];
  [otherCopy setObject:gpsOnOff forKeyedSubscript:@"GPSOnOffStateHistogram"];

  gpsDPOOnOff = [(PLBBMavLogMsg *)self gpsDPOOnOff];
  [otherCopy setObject:gpsDPOOnOff forKeyedSubscript:@"GPSDPOOnOffStateHistogram"];

  gpsDPOBin = [(PLBBMavLogMsg *)self gpsDPOBin];
  [otherCopy setObject:gpsDPOBin forKeyedSubscript:@"GPSDPOBins"];

  mpssCxoShutDownDuration = [(PLBBMavLogMsg *)self mpssCxoShutDownDuration];
  [otherCopy setObject:mpssCxoShutDownDuration forKeyedSubscript:@"MPSSCXOShutdownDuration"];

  mpssCxoShutDownCount = [(PLBBMavLogMsg *)self mpssCxoShutDownCount];
  [otherCopy setObject:mpssCxoShutDownCount forKeyedSubscript:@"MPSSCXOShutdownCount"];

  mcpmVetoNumHistogram = [(PLBBMavLogMsg *)self mcpmVetoNumHistogram];
  [otherCopy setObject:mcpmVetoNumHistogram forKeyedSubscript:@"MCPMVetoNumHistogram"];

  pcieStateHistogram = [(PLBBMavLogMsg *)self pcieStateHistogram];
  [otherCopy setObject:pcieStateHistogram forKeyedSubscript:@"PCIEStateHistogram"];
}

- (void)refreshBBMav16HwOther
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __38__PLBBMavLogMsg_refreshBBMav16HwOther__block_invoke;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v3;
    if (qword_2811F6C88 != -1)
    {
      dispatch_once(&qword_2811F6C88, &block);
    }

    if (byte_2811F6B1C == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg refreshBBMav16HwOther]", block, v12, v13, v14, v15];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg refreshBBMav16HwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1329];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __38__PLBBMavLogMsg_refreshBBMav16HwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B1C = result;
  return result;
}

+ (id)entryEventMavBBMav16HwOther
{
  v96[2] = *MEMORY[0x277D85DE8];
  v95[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v93[0] = *MEMORY[0x277D3F568];
  v93[1] = v2;
  v94[0] = &unk_282C133C8;
  v94[1] = @"refreshMavBBHwOther";
  v93[2] = *MEMORY[0x277D3F558];
  v94[2] = MEMORY[0x277CBEC38];
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:3];
  v96[0] = v67;
  v95[1] = *MEMORY[0x277D3F540];
  v91[0] = @"Error";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v92[0] = commonTypeDict_BoolFormat;
  v91[1] = @"SeqNum";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v92[1] = commonTypeDict_IntegerFormat;
  v91[2] = @"BBDate";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v92[2] = commonTypeDict_DateFormat;
  v91[3] = @"TimeCal";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v92[3] = commonTypeDict_IntegerFormat2;
  v91[4] = @"SWRevision";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v92[4] = commonTypeDict_IntegerFormat3;
  v91[5] = @"HWRevision";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v92[5] = commonTypeDict_IntegerFormat4;
  v91[6] = @"HWStatsType";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v92[6] = commonTypeDict_IntegerFormat5;
  v91[7] = @"HwStatsLength";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v92[7] = commonTypeDict_IntegerFormat6;
  v91[8] = @"HwStatsLevel";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v92[8] = commonTypeDict_IntegerFormat7;
  v91[9] = @"LastTimestamp";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v92[9] = commonTypeDict_IntegerFormat8;
  v91[10] = @"CurrentTimestamp";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v92[10] = commonTypeDict_IntegerFormat9;
  v91[11] = @"LogDuration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v92[11] = commonTypeDict_IntegerFormat10;
  v91[12] = @"RPMXOShutdownDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v92[12] = commonTypeDict_IntegerFormat11;
  v91[13] = @"RPMXOShutdownCount";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v92[13] = commonTypeDict_IntegerFormat12;
  v91[14] = @"RPMVDDMinDuration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v92[14] = commonTypeDict_IntegerFormat13;
  v91[15] = @"RPMVDDMinEnterCount";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v92[15] = commonTypeDict_IntegerFormat14;
  v91[16] = @"AppsPerfStateCountHistogram";
  v4 = *MEMORY[0x277D3F598];
  v88[0] = *MEMORY[0x277D3F5A8];
  v3 = v88[0];
  v88[1] = v4;
  v90[0] = &unk_282C132A8;
  v90[1] = &unk_282C133F8;
  v89 = *MEMORY[0x277D3F5A0];
  v5 = v89;
  v90[2] = &unk_282C132D8;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v88 count:3];
  v92[16] = v34;
  v91[17] = @"CXOShutdownDuration";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v92[17] = commonTypeDict_IntegerFormat15;
  v91[18] = @"CXOShutdownCount";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v92[18] = commonTypeDict_IntegerFormat16;
  v91[19] = @"LPASSOnOffStateHistogram";
  v86[0] = v3;
  v86[1] = v4;
  v87[0] = &unk_282C132A8;
  v87[1] = &unk_282C13308;
  v86[2] = v5;
  v87[2] = &unk_282C132D8;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];
  v92[19] = v29;
  v91[20] = @"APPSSleepVetoState";
  v84[0] = v3;
  v84[1] = v4;
  v85[0] = &unk_282C132A8;
  v85[1] = &unk_282C13380;
  v84[2] = v5;
  v85[2] = &unk_282C132D8;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  v92[20] = v28;
  v91[21] = @"MPSSSleepVetoHistogram";
  v82[0] = v3;
  v82[1] = v4;
  v83[0] = &unk_282C132A8;
  v83[1] = &unk_282C13458;
  v82[2] = v5;
  v83[2] = &unk_282C132D8;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:3];
  v92[21] = v27;
  v91[22] = @"QDSPConfigCountHistogram";
  v80[0] = v3;
  v80[1] = v4;
  v81[0] = &unk_282C132A8;
  v81[1] = &unk_282C133E0;
  v80[2] = v5;
  v81[2] = &unk_282C132D8;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
  v92[22] = v26;
  v91[23] = @"GPSOnOffStateHistogram";
  v78[0] = v3;
  v78[1] = v4;
  v79[0] = &unk_282C132A8;
  v79[1] = &unk_282C13308;
  v78[2] = v5;
  v79[2] = &unk_282C132D8;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:3];
  v92[23] = v25;
  v91[24] = @"GPSDPOOnOffStateHistogram";
  v76[0] = v3;
  v76[1] = v4;
  v77[0] = &unk_282C132A8;
  v77[1] = &unk_282C13308;
  v76[2] = v5;
  v77[2] = &unk_282C132D8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v92[24] = v24;
  v91[25] = @"GPSDPOBins";
  v74[0] = v3;
  v74[1] = v4;
  v75[0] = &unk_282C132A8;
  v75[1] = &unk_282C132C0;
  v74[2] = v5;
  v75[2] = &unk_282C132D8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:3];
  v92[25] = v23;
  v91[26] = @"MPSSCXOShutdownDuration";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v92[26] = commonTypeDict_IntegerFormat17;
  v91[27] = @"MPSSCXOShutdownCount";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v92[27] = commonTypeDict_IntegerFormat18;
  v91[28] = @"MCPMVetoNumHistogram";
  v72[0] = v3;
  v72[1] = v4;
  v73[0] = &unk_282C132A8;
  v73[1] = &unk_282C13398;
  v72[2] = v5;
  v73[2] = &unk_282C132D8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:3];
  v92[28] = v18;
  v91[29] = @"NPAVetoMask";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v92[29] = commonTypeDict_IntegerFormat19;
  v91[30] = @"NPAVetoClientNumHistogram";
  v70[0] = v3;
  v70[1] = v4;
  v71[0] = &unk_282C132A8;
  v71[1] = &unk_282C13350;
  v70[2] = v5;
  v71[2] = &unk_282C132D8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:3];
  v92[30] = v7;
  v91[31] = @"AppsClockStateDurationStr";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]22 commonTypeDict_StringFormat];
  v92[31] = commonTypeDict_StringFormat;
  v91[32] = @"MpssClockStateDurationStr";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]23 commonTypeDict_StringFormat];
  v92[32] = commonTypeDict_StringFormat2;
  v91[33] = @"PCIEStateHistogram";
  v68[0] = v3;
  v68[1] = v4;
  v69[0] = &unk_282C132A8;
  v69[1] = &unk_282C132F0;
  v68[2] = v5;
  v69[2] = &unk_282C132D8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:3];
  v92[33] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:34];
  v96[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)logEventBackwardMav16BBHwOther
{
  v25 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBBMavLogMsg_logEventBackwardMav16BBHwOther__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6C90 != -1)
    {
      dispatch_once(&qword_2811F6C90, block);
    }

    if (byte_2811F6B1D == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg logEventBackwardMav16BBHwOther]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardMav16BBHwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1405];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D3F5C8];
  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [(PLBBMavLogMsg *)self populateEntryBBMav16HwOther:v12];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __47__PLBBMavLogMsg_logEventBackwardMav16BBHwOther__block_invoke_581;
    v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v21[4] = v13;
    if (qword_2811F6C98 != -1)
    {
      dispatch_once(&qword_2811F6C98, v21);
    }

    if (byte_2811F6B1E == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"About to send to log at %s", "-[PLBBMavLogMsg logEventBackwardMav16BBHwOther]"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardMav16BBHwOther]"];
      [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:1411];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLBBMavLogMsg *)self sendAndLogPLEntry:v12 withName:@"MavBBHwOther" withType:v10];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLBBMavLogMsg_logEventBackwardMav16BBHwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B1D = result;
  return result;
}

uint64_t __47__PLBBMavLogMsg_logEventBackwardMav16BBHwOther__block_invoke_581(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B1E = result;
  return result;
}

- (void)addToGroupPLBBMav16HwOther
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __43__PLBBMavLogMsg_addToGroupPLBBMav16HwOther__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (qword_2811F6CA0 != -1)
    {
      dispatch_once(&qword_2811F6CA0, &block);
    }

    if (byte_2811F6B1F == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg addToGroupPLBBMav16HwOther]", block, v14, v15, v16, v17];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg addToGroupPLBBMav16HwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1420];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  [(PLBBMavLogMsg *)self setGroupEntryKey:v10];
  [(PLBBMavLogMsg *)self populateEntryBBMav16HwOther:v11];
  [(PLBBMavLogMsg *)self addToGroupPLBBMavHwEntry:v11 withEntryKey:v10];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLBBMavLogMsg_addToGroupPLBBMav16HwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B1F = result;
  return result;
}

- (void)populateEntryBBMav16HwOther:(id)other
{
  otherCopy = other;
  commonInfo = [(PLBBMavLogMsg *)self commonInfo];
  v6 = [commonInfo objectForKey:@"BBDate"];
  [otherCopy setObject:v6 forKeyedSubscript:@"BBDate"];

  commonInfo2 = [(PLBBMavLogMsg *)self commonInfo];
  v8 = [commonInfo2 objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v8 convertFromBasebandToMonotonic];
  [otherCopy setEntryDate:convertFromBasebandToMonotonic];

  bbSwRev = [(PLBBMavLogMsg *)self bbSwRev];
  [otherCopy setObject:bbSwRev forKeyedSubscript:@"SWRevision"];

  bbHwRev = [(PLBBMavLogMsg *)self bbHwRev];
  [otherCopy setObject:bbHwRev forKeyedSubscript:@"HWRevision"];

  bbHwStatsType = [(PLBBMavLogMsg *)self bbHwStatsType];
  [otherCopy setObject:bbHwStatsType forKeyedSubscript:@"HWStatsType"];

  bbHwStatsLength = [(PLBBMavLogMsg *)self bbHwStatsLength];
  [otherCopy setObject:bbHwStatsLength forKeyedSubscript:@"HwStatsLength"];

  bbHwStatsLevel = [(PLBBMavLogMsg *)self bbHwStatsLevel];
  [otherCopy setObject:bbHwStatsLevel forKeyedSubscript:@"HwStatsLevel"];

  bbHwCurrTimeStamp = [(PLBBMavLogMsg *)self bbHwCurrTimeStamp];
  [otherCopy setObject:bbHwCurrTimeStamp forKeyedSubscript:@"CurrentTimestamp"];

  bbHwLastTimeStamp = [(PLBBMavLogMsg *)self bbHwLastTimeStamp];
  [otherCopy setObject:bbHwLastTimeStamp forKeyedSubscript:@"LastTimestamp"];

  bbHwLogDurationInTicks = [(PLBBMavLogMsg *)self bbHwLogDurationInTicks];
  [otherCopy setObject:bbHwLogDurationInTicks forKeyedSubscript:@"LogDuration"];

  rpmXOShutDuration = [(PLBBMavLogMsg *)self rpmXOShutDuration];
  [otherCopy setObject:rpmXOShutDuration forKeyedSubscript:@"RPMXOShutdownDuration"];

  rpmXOShutCnt = [(PLBBMavLogMsg *)self rpmXOShutCnt];
  [otherCopy setObject:rpmXOShutCnt forKeyedSubscript:@"RPMXOShutdownCount"];

  rpmVDDMinDuration = [(PLBBMavLogMsg *)self rpmVDDMinDuration];
  [otherCopy setObject:rpmVDDMinDuration forKeyedSubscript:@"RPMVDDMinDuration"];

  rpmVDDMinEnterCnt = [(PLBBMavLogMsg *)self rpmVDDMinEnterCnt];
  [otherCopy setObject:rpmVDDMinEnterCnt forKeyedSubscript:@"RPMVDDMinEnterCount"];

  appsPerfStateCountHist = [(PLBBMavLogMsg *)self appsPerfStateCountHist];
  [otherCopy setObject:appsPerfStateCountHist forKeyedSubscript:@"AppsPerfStateCountHistogram"];

  cxoShutDownDuration = [(PLBBMavLogMsg *)self cxoShutDownDuration];
  [otherCopy setObject:cxoShutDownDuration forKeyedSubscript:@"CXOShutdownDuration"];

  cxoShutDownCount = [(PLBBMavLogMsg *)self cxoShutDownCount];
  [otherCopy setObject:cxoShutDownCount forKeyedSubscript:@"CXOShutdownCount"];

  lpassOnOffState = [(PLBBMavLogMsg *)self lpassOnOffState];
  [otherCopy setObject:lpassOnOffState forKeyedSubscript:@"LPASSOnOffStateHistogram"];

  appsSleepVeto = [(PLBBMavLogMsg *)self appsSleepVeto];
  [otherCopy setObject:appsSleepVeto forKeyedSubscript:@"APPSSleepVetoState"];

  mpssSleepVeto = [(PLBBMavLogMsg *)self mpssSleepVeto];
  [otherCopy setObject:mpssSleepVeto forKeyedSubscript:@"MPSSSleepVetoHistogram"];

  qdspConfigCount = [(PLBBMavLogMsg *)self qdspConfigCount];
  [otherCopy setObject:qdspConfigCount forKeyedSubscript:@"QDSPConfigCountHistogram"];

  gpsOnOff = [(PLBBMavLogMsg *)self gpsOnOff];
  [otherCopy setObject:gpsOnOff forKeyedSubscript:@"GPSOnOffStateHistogram"];

  gpsDPOOnOff = [(PLBBMavLogMsg *)self gpsDPOOnOff];
  [otherCopy setObject:gpsDPOOnOff forKeyedSubscript:@"GPSDPOOnOffStateHistogram"];

  gpsDPOBin = [(PLBBMavLogMsg *)self gpsDPOBin];
  [otherCopy setObject:gpsDPOBin forKeyedSubscript:@"GPSDPOBins"];

  mpssCxoShutDownDuration = [(PLBBMavLogMsg *)self mpssCxoShutDownDuration];
  [otherCopy setObject:mpssCxoShutDownDuration forKeyedSubscript:@"MPSSCXOShutdownDuration"];

  mpssCxoShutDownCount = [(PLBBMavLogMsg *)self mpssCxoShutDownCount];
  [otherCopy setObject:mpssCxoShutDownCount forKeyedSubscript:@"MPSSCXOShutdownCount"];

  mcpmVetoNumHistogram = [(PLBBMavLogMsg *)self mcpmVetoNumHistogram];
  [otherCopy setObject:mcpmVetoNumHistogram forKeyedSubscript:@"MCPMVetoNumHistogram"];

  pcieStateHistogram = [(PLBBMavLogMsg *)self pcieStateHistogram];
  [otherCopy setObject:pcieStateHistogram forKeyedSubscript:@"PCIEStateHistogram"];
}

- (void)refreshBBMav16BHwOther
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __39__PLBBMavLogMsg_refreshBBMav16BHwOther__block_invoke;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v3;
    if (qword_2811F6CA8 != -1)
    {
      dispatch_once(&qword_2811F6CA8, &block);
    }

    if (byte_2811F6B20 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg refreshBBMav16BHwOther]", block, v12, v13, v14, v15];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg refreshBBMav16BHwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1487];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PLBBMavLogMsg_refreshBBMav16BHwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B20 = result;
  return result;
}

+ (id)entryEventMavBBMav16BHwOther
{
  v99[2] = *MEMORY[0x277D85DE8];
  v98[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v96[0] = *MEMORY[0x277D3F568];
  v96[1] = v2;
  v97[0] = &unk_282C13398;
  v97[1] = @"refreshMavBBHwOther";
  v96[2] = *MEMORY[0x277D3F558];
  v97[2] = MEMORY[0x277CBEC38];
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:3];
  v99[0] = v68;
  v98[1] = *MEMORY[0x277D3F540];
  v94[0] = @"Error";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v95[0] = commonTypeDict_BoolFormat;
  v94[1] = @"SeqNum";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v95[1] = commonTypeDict_IntegerFormat;
  v94[2] = @"BBDate";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]3 commonTypeDict_DateFormat];
  v95[2] = commonTypeDict_DateFormat;
  v94[3] = @"TimeCal";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v95[3] = commonTypeDict_IntegerFormat2;
  v94[4] = @"SWRevision";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v95[4] = commonTypeDict_IntegerFormat3;
  v94[5] = @"HWRevision";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v95[5] = commonTypeDict_IntegerFormat4;
  v94[6] = @"HWStatsType";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v95[6] = commonTypeDict_IntegerFormat5;
  v94[7] = @"HwStatsLength";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v95[7] = commonTypeDict_IntegerFormat6;
  v94[8] = @"HwStatsLevel";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v95[8] = commonTypeDict_IntegerFormat7;
  v94[9] = @"LastTimestamp";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v95[9] = commonTypeDict_IntegerFormat8;
  v94[10] = @"CurrentTimestamp";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v95[10] = commonTypeDict_IntegerFormat9;
  v94[11] = @"LogDuration";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v95[11] = commonTypeDict_IntegerFormat10;
  v94[12] = @"RPMXOShutdownDuration";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v95[12] = commonTypeDict_IntegerFormat11;
  v94[13] = @"RPMXOShutdownCount";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v95[13] = commonTypeDict_IntegerFormat12;
  v94[14] = @"RPMVDDMinDuration";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v95[14] = commonTypeDict_IntegerFormat13;
  v94[15] = @"RPMVDDMinEnterCount";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v95[15] = commonTypeDict_IntegerFormat14;
  v94[16] = @"AppsPerfStateCountHistogram";
  v4 = *MEMORY[0x277D3F598];
  v91[0] = *MEMORY[0x277D3F5A8];
  v3 = v91[0];
  v91[1] = v4;
  v93[0] = &unk_282C132A8;
  v93[1] = &unk_282C13368;
  v92 = *MEMORY[0x277D3F5A0];
  v5 = v92;
  v93[2] = &unk_282C132D8;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v91 count:3];
  v95[16] = v35;
  v94[17] = @"CXOShutdownDuration";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v95[17] = commonTypeDict_IntegerFormat15;
  v94[18] = @"CXOShutdownCount";
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v95[18] = commonTypeDict_IntegerFormat16;
  v94[19] = @"LPASSOnOffStateHistogram";
  v89[0] = v3;
  v89[1] = v4;
  v90[0] = &unk_282C132A8;
  v90[1] = &unk_282C13308;
  v89[2] = v5;
  v90[2] = &unk_282C132D8;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:3];
  v95[19] = v30;
  v94[20] = @"APPSSleepVetoState";
  v87[0] = v3;
  v87[1] = v4;
  v88[0] = &unk_282C132A8;
  v88[1] = &unk_282C13380;
  v87[2] = v5;
  v88[2] = &unk_282C132D8;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:3];
  v95[20] = v29;
  v94[21] = @"MPSSSleepVetoHistogram";
  v85[0] = v3;
  v85[1] = v4;
  v86[0] = &unk_282C132A8;
  v86[1] = &unk_282C13458;
  v85[2] = v5;
  v86[2] = &unk_282C132D8;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:3];
  v95[21] = v28;
  v94[22] = @"QDSPConfigCountHistogram";
  v83[0] = v3;
  v83[1] = v4;
  v84[0] = &unk_282C132A8;
  v84[1] = &unk_282C133E0;
  v83[2] = v5;
  v84[2] = &unk_282C132D8;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:3];
  v95[22] = v27;
  v94[23] = @"GPSOnOffStateHistogram";
  v81[0] = v3;
  v81[1] = v4;
  v82[0] = &unk_282C132A8;
  v82[1] = &unk_282C13308;
  v81[2] = v5;
  v82[2] = &unk_282C132D8;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:3];
  v95[23] = v26;
  v94[24] = @"GPSDPOOnOffStateHistogram";
  v79[0] = v3;
  v79[1] = v4;
  v80[0] = &unk_282C132A8;
  v80[1] = &unk_282C13308;
  v79[2] = v5;
  v80[2] = &unk_282C132D8;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:3];
  v95[24] = v25;
  v94[25] = @"GPSDPOBins";
  v77[0] = v3;
  v77[1] = v4;
  v78[0] = &unk_282C132A8;
  v78[1] = &unk_282C132C0;
  v77[2] = v5;
  v78[2] = &unk_282C132D8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];
  v95[25] = v24;
  v94[26] = @"MPSSCXOShutdownDuration";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v95[26] = commonTypeDict_IntegerFormat17;
  v94[27] = @"MPSSCXOShutdownCount";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v95[27] = commonTypeDict_IntegerFormat18;
  v94[28] = @"MCPMVetoNumHistogram";
  v75[0] = v3;
  v75[1] = v4;
  v76[0] = &unk_282C132A8;
  v76[1] = &unk_282C13470;
  v75[2] = v5;
  v76[2] = &unk_282C132D8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
  v95[28] = v19;
  v94[29] = @"ProtocolActivityHistogram";
  v73[0] = v3;
  v73[1] = v4;
  v74[0] = &unk_282C132A8;
  v74[1] = &unk_282C132C0;
  v73[2] = v5;
  v74[2] = &unk_282C132D8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:3];
  v95[29] = v18;
  v94[30] = @"NPAVetoMask";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v95[30] = commonTypeDict_IntegerFormat19;
  v94[31] = @"NPAVetoClientNumHistogram";
  v71[0] = v3;
  v71[1] = v4;
  v72[0] = &unk_282C132A8;
  v72[1] = &unk_282C13350;
  v71[2] = v5;
  v72[2] = &unk_282C132D8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:3];
  v95[31] = v6;
  v94[32] = @"AppsClockStateDurationStr";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]22 commonTypeDict_StringFormat];
  v95[32] = commonTypeDict_StringFormat;
  v94[33] = @"MpssClockStateDurationStr";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]23 commonTypeDict_StringFormat];
  v95[33] = commonTypeDict_StringFormat2;
  v94[34] = @"PCIEStateHistogram";
  v69[0] = v3;
  v69[1] = v4;
  v70[0] = &unk_282C132A8;
  v70[1] = &unk_282C132F0;
  v69[2] = v5;
  v70[2] = &unk_282C132D8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:3];
  v95[34] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:35];
  v99[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)logEventBackwardMav16BBBHwOther
{
  v25 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PLBBMavLogMsg_logEventBackwardMav16BBBHwOther__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6CB0 != -1)
    {
      dispatch_once(&qword_2811F6CB0, block);
    }

    if (byte_2811F6B21 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg logEventBackwardMav16BBBHwOther]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardMav16BBBHwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1566];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D3F5C8];
  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [(PLBBMavLogMsg *)self populateEntryBBMav16BHwOther:v12];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __48__PLBBMavLogMsg_logEventBackwardMav16BBBHwOther__block_invoke_589;
    v21[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v21[4] = v13;
    if (qword_2811F6CB8 != -1)
    {
      dispatch_once(&qword_2811F6CB8, v21);
    }

    if (byte_2811F6B22 == 1)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"About to send to log at %s", "-[PLBBMavLogMsg logEventBackwardMav16BBBHwOther]"];
      v15 = MEMORY[0x277D3F178];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent2 = [v16 lastPathComponent];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg logEventBackwardMav16BBBHwOther]"];
      [v15 logMessage:v14 fromFile:lastPathComponent2 fromFunction:v18 fromLineNumber:1572];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v14;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLBBMavLogMsg *)self sendAndLogPLEntry:v12 withName:@"MavBBHwOther" withType:v10];

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PLBBMavLogMsg_logEventBackwardMav16BBBHwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B21 = result;
  return result;
}

uint64_t __48__PLBBMavLogMsg_logEventBackwardMav16BBBHwOther__block_invoke_589(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B22 = result;
  return result;
}

- (void)addToGroupPLBBMav16BHwOther
{
  v20 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __44__PLBBMavLogMsg_addToGroupPLBBMav16BHwOther__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v3;
    if (qword_2811F6CC0 != -1)
    {
      dispatch_once(&qword_2811F6CC0, &block);
    }

    if (byte_2811F6B23 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavLogMsg addToGroupPLBBMav16BHwOther]", block, v14, v15, v16, v17];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavLogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavLogMsg addToGroupPLBBMav16BHwOther]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1581];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"MavBBHwOther"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  [(PLBBMavLogMsg *)self setGroupEntryKey:v10];
  [(PLBBMavLogMsg *)self populateEntryBBMav16BHwOther:v11];
  [(PLBBMavLogMsg *)self addToGroupPLBBMavHwEntry:v11 withEntryKey:v10];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLBBMavLogMsg_addToGroupPLBBMav16BHwOther__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6B23 = result;
  return result;
}

- (void)populateEntryBBMav16BHwOther:(id)other
{
  otherCopy = other;
  commonInfo = [(PLBBMavLogMsg *)self commonInfo];
  v6 = [commonInfo objectForKey:@"BBDate"];
  [otherCopy setObject:v6 forKeyedSubscript:@"BBDate"];

  commonInfo2 = [(PLBBMavLogMsg *)self commonInfo];
  v8 = [commonInfo2 objectForKey:@"BBDate"];
  convertFromBasebandToMonotonic = [v8 convertFromBasebandToMonotonic];
  [otherCopy setEntryDate:convertFromBasebandToMonotonic];

  bbSwRev = [(PLBBMavLogMsg *)self bbSwRev];
  [otherCopy setObject:bbSwRev forKeyedSubscript:@"SWRevision"];

  bbHwRev = [(PLBBMavLogMsg *)self bbHwRev];
  [otherCopy setObject:bbHwRev forKeyedSubscript:@"HWRevision"];

  bbHwStatsType = [(PLBBMavLogMsg *)self bbHwStatsType];
  [otherCopy setObject:bbHwStatsType forKeyedSubscript:@"HWStatsType"];

  bbHwStatsLength = [(PLBBMavLogMsg *)self bbHwStatsLength];
  [otherCopy setObject:bbHwStatsLength forKeyedSubscript:@"HwStatsLength"];

  bbHwStatsLevel = [(PLBBMavLogMsg *)self bbHwStatsLevel];
  [otherCopy setObject:bbHwStatsLevel forKeyedSubscript:@"HwStatsLevel"];

  bbHwCurrTimeStamp = [(PLBBMavLogMsg *)self bbHwCurrTimeStamp];
  [otherCopy setObject:bbHwCurrTimeStamp forKeyedSubscript:@"CurrentTimestamp"];

  bbHwLastTimeStamp = [(PLBBMavLogMsg *)self bbHwLastTimeStamp];
  [otherCopy setObject:bbHwLastTimeStamp forKeyedSubscript:@"LastTimestamp"];

  bbHwLogDurationInTicks = [(PLBBMavLogMsg *)self bbHwLogDurationInTicks];
  [otherCopy setObject:bbHwLogDurationInTicks forKeyedSubscript:@"LogDuration"];

  rpmXOShutDuration = [(PLBBMavLogMsg *)self rpmXOShutDuration];
  [otherCopy setObject:rpmXOShutDuration forKeyedSubscript:@"RPMXOShutdownDuration"];

  rpmXOShutCnt = [(PLBBMavLogMsg *)self rpmXOShutCnt];
  [otherCopy setObject:rpmXOShutCnt forKeyedSubscript:@"RPMXOShutdownCount"];

  rpmVDDMinDuration = [(PLBBMavLogMsg *)self rpmVDDMinDuration];
  [otherCopy setObject:rpmVDDMinDuration forKeyedSubscript:@"RPMVDDMinDuration"];

  rpmVDDMinEnterCnt = [(PLBBMavLogMsg *)self rpmVDDMinEnterCnt];
  [otherCopy setObject:rpmVDDMinEnterCnt forKeyedSubscript:@"RPMVDDMinEnterCount"];

  appsPerfStateCountHist = [(PLBBMavLogMsg *)self appsPerfStateCountHist];
  [otherCopy setObject:appsPerfStateCountHist forKeyedSubscript:@"AppsPerfStateCountHistogram"];

  cxoShutDownDuration = [(PLBBMavLogMsg *)self cxoShutDownDuration];
  [otherCopy setObject:cxoShutDownDuration forKeyedSubscript:@"CXOShutdownDuration"];

  cxoShutDownCount = [(PLBBMavLogMsg *)self cxoShutDownCount];
  [otherCopy setObject:cxoShutDownCount forKeyedSubscript:@"CXOShutdownCount"];

  lpassOnOffState = [(PLBBMavLogMsg *)self lpassOnOffState];
  [otherCopy setObject:lpassOnOffState forKeyedSubscript:@"LPASSOnOffStateHistogram"];

  appsSleepVeto = [(PLBBMavLogMsg *)self appsSleepVeto];
  [otherCopy setObject:appsSleepVeto forKeyedSubscript:@"APPSSleepVetoState"];

  mpssSleepVeto = [(PLBBMavLogMsg *)self mpssSleepVeto];
  [otherCopy setObject:mpssSleepVeto forKeyedSubscript:@"MPSSSleepVetoHistogram"];

  qdspConfigCount = [(PLBBMavLogMsg *)self qdspConfigCount];
  [otherCopy setObject:qdspConfigCount forKeyedSubscript:@"QDSPConfigCountHistogram"];

  gpsOnOff = [(PLBBMavLogMsg *)self gpsOnOff];
  [otherCopy setObject:gpsOnOff forKeyedSubscript:@"GPSOnOffStateHistogram"];

  gpsDPOOnOff = [(PLBBMavLogMsg *)self gpsDPOOnOff];
  [otherCopy setObject:gpsDPOOnOff forKeyedSubscript:@"GPSDPOOnOffStateHistogram"];

  gpsDPOBin = [(PLBBMavLogMsg *)self gpsDPOBin];
  [otherCopy setObject:gpsDPOBin forKeyedSubscript:@"GPSDPOBins"];

  mpssCxoShutDownDuration = [(PLBBMavLogMsg *)self mpssCxoShutDownDuration];
  [otherCopy setObject:mpssCxoShutDownDuration forKeyedSubscript:@"MPSSCXOShutdownDuration"];

  mpssCxoShutDownCount = [(PLBBMavLogMsg *)self mpssCxoShutDownCount];
  [otherCopy setObject:mpssCxoShutDownCount forKeyedSubscript:@"MPSSCXOShutdownCount"];

  mcpmVetoNumHistogram = [(PLBBMavLogMsg *)self mcpmVetoNumHistogram];
  [otherCopy setObject:mcpmVetoNumHistogram forKeyedSubscript:@"MCPMVetoNumHistogram"];

  protocolActivityHistogram = [(PLBBMavLogMsg *)self ProtocolActivityHistogram];
  [otherCopy setObject:protocolActivityHistogram forKeyedSubscript:@"ProtocolActivityHistogram"];

  pcieStateHistogram = [(PLBBMavLogMsg *)self pcieStateHistogram];
  [otherCopy setObject:pcieStateHistogram forKeyedSubscript:@"PCIEStateHistogram"];
}

@end