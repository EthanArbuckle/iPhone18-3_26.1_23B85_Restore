@interface PLBBMav16HwRfLTELogMsg
+ (id)entryEventBackwardDefinitionBBMav16HwRfLTE;
- (PLBBMav16HwRfLTELogMsg)init;
- (id)logEventBackwardBBMav16HwRfLTE;
- (void)addPairWithKey:(id)key andWithVal:(id)val;
- (void)populateMav16Entry:(id)entry;
- (void)refreshMav16BBRfLTE;
- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type;
- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal;
@end

@implementation PLBBMav16HwRfLTELogMsg

- (PLBBMav16HwRfLTELogMsg)init
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__PLBBMav16HwRfLTELogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F48A0 != -1)
    {
      dispatch_once(&qword_2811F48A0, block);
    }

    if (_MergedGlobals_1_27 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwRfLTELogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg init]"];
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
  v17.super_class = PLBBMav16HwRfLTELogMsg;
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

uint64_t __30__PLBBMav16HwRfLTELogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_27 = result;
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
    block[2] = __62__PLBBMav16HwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F48A8 != -1)
    {
      dispatch_once(&qword_2811F48A8, block);
    }

    if (byte_2811F4891 == 1)
    {
      v45 = typeCopy;
      v12 = nameCopy;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
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
    v48[2] = __62__PLBBMav16HwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372;
    v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v48[4] = v19;
    if (qword_2811F48B0 != -1)
    {
      dispatch_once(&qword_2811F48B0, v48);
    }

    if (byte_2811F4892 == 1)
    {
      v20 = typeCopy;
      v44 = typeCopy;
      v21 = nameCopy;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", nameCopy, v44];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent2 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
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
    v47[2] = __62__PLBBMav16HwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v32;
    if (qword_2811F48B8 != -1)
    {
      dispatch_once(&qword_2811F48B8, v47);
    }

    if (byte_2811F4893 == 1)
    {
      v46 = typeCopy;
      v33 = nameCopy;
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent3 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
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

uint64_t __62__PLBBMav16HwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4891 = result;
  return result;
}

uint64_t __62__PLBBMav16HwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4892 = result;
  return result;
}

uint64_t __62__PLBBMav16HwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4893 = result;
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
    block[2] = __65__PLBBMav16HwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F48C0 != -1)
    {
      dispatch_once(&qword_2811F48C0, block);
    }

    if (byte_2811F4894 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
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
    v26[2] = __65__PLBBMav16HwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_384;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v19;
    if (qword_2811F48C8 != -1)
    {
      dispatch_once(&qword_2811F48C8, v26);
    }

    if (byte_2811F4895 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to set seqNum, date, timeCal"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
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

uint64_t __65__PLBBMav16HwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4894 = result;
  return result;
}

uint64_t __65__PLBBMav16HwRfLTELogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_384(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4895 = result;
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
    block[2] = __52__PLBBMav16HwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F48D0 != -1)
    {
      dispatch_once(&qword_2811F48D0, block);
    }

    if (byte_2811F4896 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwRfLTELogMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg addPairWithKey:andWithVal:]"];
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
      v31[2] = __52__PLBBMav16HwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_397;
      v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v31[4] = v16;
      if (qword_2811F48E0 != -1)
      {
        dispatch_once(&qword_2811F48E0, v31);
      }

      if (byte_2811F4898 == 1)
      {
        valCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", keyCopy, valCopy];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg addPairWithKey:andWithVal:]"];
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

    kvPairs = [(PLBBMav16HwRfLTELogMsg *)self kvPairs];
    [kvPairs setObject:valCopy forKey:keyCopy];
LABEL_17:

    goto LABEL_25;
  }

  if (debugEnabled)
  {
    v24 = objc_opt_class();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __52__PLBBMav16HwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_391;
    v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v32[4] = v24;
    if (qword_2811F48D8 != -1)
    {
      dispatch_once(&qword_2811F48D8, v32);
    }

    if (byte_2811F4897 == 1)
    {
      kvPairs = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: nil key for kvPair not expected, return"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent3 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg addPairWithKey:andWithVal:]"];
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

uint64_t __52__PLBBMav16HwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4896 = result;
  return result;
}

uint64_t __52__PLBBMav16HwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_391(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4897 = result;
  return result;
}

uint64_t __52__PLBBMav16HwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_397(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4898 = result;
  return result;
}

+ (id)entryEventBackwardDefinitionBBMav16HwRfLTE
{
  v118[2] = *MEMORY[0x277D85DE8];
  v117[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v115[0] = *MEMORY[0x277D3F568];
  v115[1] = v2;
  v116[0] = &unk_282C1C168;
  v116[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v115[2] = *MEMORY[0x277D3F548];
  v115[3] = v3;
  v116[2] = @"refreshMav16BBRfLTE";
  v116[3] = MEMORY[0x277CBEC38];
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:4];
  v118[0] = v67;
  v117[1] = *MEMORY[0x277D3F540];
  v113[0] = @"SeqNum";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v114[0] = commonTypeDict_IntegerFormat;
  v113[1] = @"BBDate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v114[1] = commonTypeDict_DateFormat;
  v113[2] = @"LogDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v114[2] = commonTypeDict_RealFormat;
  v113[3] = @"DupMode";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v114[3] = commonTypeDict_IntegerFormat2;
  v113[4] = @"PCC_Band";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v114[4] = commonTypeDict_IntegerFormat3;
  v113[5] = @"PCC_BW";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v114[5] = commonTypeDict_IntegerFormat4;
  v113[6] = @"SCC1_Band";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v114[6] = commonTypeDict_IntegerFormat5;
  v113[7] = @"SCC1_BW";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v114[7] = commonTypeDict_IntegerFormat6;
  v113[8] = @"SCC2_Band";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v114[8] = commonTypeDict_IntegerFormat7;
  v113[9] = @"SCC2_BW";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v114[9] = commonTypeDict_IntegerFormat8;
  v113[10] = @"DLTBSzArr";
  v5 = *MEMORY[0x277D3F598];
  v110[0] = *MEMORY[0x277D3F5A8];
  v4 = v110[0];
  v110[1] = v5;
  v112[0] = &unk_282C11478;
  v112[1] = &unk_282C11490;
  v111 = *MEMORY[0x277D3F5A0];
  v6 = v111;
  v112[2] = &unk_282C114A8;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v110 count:3];
  v114[10] = v46;
  v113[11] = @"TxPwrBktArr";
  v108[0] = v4;
  v108[1] = v5;
  v109[0] = &unk_282C11478;
  v109[1] = &unk_282C114C0;
  v108[2] = v6;
  v109[2] = &unk_282C114A8;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:3];
  v114[11] = v45;
  v113[12] = @"CASCCStateArr";
  v106[0] = v4;
  v106[1] = v5;
  v107[0] = &unk_282C11478;
  v107[1] = &unk_282C114D8;
  v106[2] = v6;
  v107[2] = &unk_282C114A8;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:3];
  v114[12] = v44;
  v113[13] = @"ULCACStateArr";
  v104[0] = v4;
  v104[1] = v5;
  v105[0] = &unk_282C11478;
  v105[1] = &unk_282C114F0;
  v104[2] = v6;
  v105[2] = &unk_282C114A8;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:3];
  v114[13] = v43;
  v113[14] = @"kRfActRxTxArr";
  v102[0] = v4;
  v102[1] = v5;
  v103[0] = &unk_282C11478;
  v103[1] = &unk_282C114D8;
  v102[2] = v6;
  v103[2] = &unk_282C114A8;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:3];
  v114[14] = v42;
  v113[15] = @"SleepStateIdleArr";
  v100[0] = v4;
  v100[1] = v5;
  v101[0] = &unk_282C11478;
  v101[1] = &unk_282C11508;
  v100[2] = v6;
  v101[2] = &unk_282C114A8;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:3];
  v114[15] = v41;
  v113[16] = @"SleepStateConnArr";
  v98[0] = v4;
  v98[1] = v5;
  v99[0] = &unk_282C11478;
  v99[1] = &unk_282C11508;
  v98[2] = v6;
  v99[2] = &unk_282C114A8;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:3];
  v114[16] = v40;
  v113[17] = @"RfRSRPIdleArr";
  v96[0] = v4;
  v96[1] = v5;
  v97[0] = &unk_282C11478;
  v97[1] = &unk_282C114D8;
  v96[2] = v6;
  v97[2] = &unk_282C114A8;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:3];
  v114[17] = v39;
  v113[18] = @"RfRSRPConnArr";
  v94[0] = v4;
  v94[1] = v5;
  v95[0] = &unk_282C11478;
  v95[1] = &unk_282C114D8;
  v94[2] = v6;
  v95[2] = &unk_282C114A8;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:3];
  v114[18] = v38;
  v113[19] = @"RfSINRIdleArr";
  v92[0] = v4;
  v92[1] = v5;
  v93[0] = &unk_282C11478;
  v93[1] = &unk_282C114D8;
  v92[2] = v6;
  v93[2] = &unk_282C114A8;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:3];
  v114[19] = v37;
  v113[20] = @"RfSINRConnArr";
  v90[0] = v4;
  v90[1] = v5;
  v91[0] = &unk_282C11478;
  v91[1] = &unk_282C114D8;
  v90[2] = v6;
  v91[2] = &unk_282C114A8;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:3];
  v114[20] = v36;
  v113[21] = @"RfNLICArr";
  v88[0] = v4;
  v88[1] = v5;
  v89[0] = &unk_282C11478;
  v89[1] = &unk_282C114F0;
  v88[2] = v6;
  v89[2] = &unk_282C114A8;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:3];
  v114[21] = v35;
  v113[22] = @"RfBPEArr";
  v86[0] = v4;
  v86[1] = v5;
  v87[0] = &unk_282C11478;
  v87[1] = &unk_282C11520;
  v86[2] = v6;
  v87[2] = &unk_282C114A8;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:3];
  v114[22] = v34;
  v113[23] = @"ARD_RxD_Off_Duration";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v114[23] = commonTypeDict_IntegerFormat9;
  v113[24] = @"uSleep_PCC";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v114[24] = commonTypeDict_IntegerFormat10;
  v113[25] = @"uSleep_SCC1";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v114[25] = commonTypeDict_IntegerFormat11;
  v113[26] = @"uSleep_SCC2";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v114[26] = commonTypeDict_IntegerFormat12;
  v113[27] = @"HSIC_PCC_OffOn";
  v84[0] = v4;
  v84[1] = v5;
  v85[0] = &unk_282C11478;
  v85[1] = &unk_282C11538;
  v84[2] = v6;
  v85[2] = &unk_282C114A8;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  v114[27] = v25;
  v113[28] = @"HSIC_SCC1_OffOn";
  v82[0] = v4;
  v82[1] = v5;
  v83[0] = &unk_282C11478;
  v83[1] = &unk_282C11538;
  v82[2] = v6;
  v83[2] = &unk_282C114A8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:3];
  v114[28] = v24;
  v113[29] = @"HSIC_SCC2_OffOn";
  v80[0] = v4;
  v80[1] = v5;
  v81[0] = &unk_282C11478;
  v81[1] = &unk_282C11538;
  v80[2] = v6;
  v81[2] = &unk_282C114A8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
  v114[29] = v23;
  v113[30] = @"PCC_ARX_Off";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v114[30] = commonTypeDict_IntegerFormat13;
  v113[31] = @"SCC1_ARX_Off";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v114[31] = commonTypeDict_IntegerFormat14;
  v113[32] = @"SCC2_ARX_Off";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v114[32] = commonTypeDict_IntegerFormat15;
  v113[33] = @"PCC_ARX_Baseline";
  v78[0] = v4;
  v78[1] = v5;
  v79[0] = &unk_282C11478;
  v79[1] = &unk_282C114F0;
  v78[2] = v6;
  v79[2] = &unk_282C114A8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:3];
  v114[33] = v16;
  v113[34] = @"SCC1_ARX_Baseline";
  v76[0] = v4;
  v76[1] = v5;
  v77[0] = &unk_282C11478;
  v77[1] = &unk_282C114F0;
  v76[2] = v6;
  v77[2] = &unk_282C114A8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:3];
  v114[34] = v15;
  v113[35] = @"SCC2_ARX_Baseline";
  v74[0] = v4;
  v74[1] = v5;
  v75[0] = &unk_282C11478;
  v75[1] = &unk_282C114F0;
  v74[2] = v6;
  v75[2] = &unk_282C114A8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:3];
  v114[35] = v7;
  v113[36] = @"PCC_ARX_QICE";
  v72[0] = v4;
  v72[1] = v5;
  v73[0] = &unk_282C11478;
  v73[1] = &unk_282C114F0;
  v72[2] = v6;
  v73[2] = &unk_282C114A8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:3];
  v114[36] = v8;
  v113[37] = @"SCC1_ARX_QICE";
  v70[0] = v4;
  v70[1] = v5;
  v71[0] = &unk_282C11478;
  v71[1] = &unk_282C114F0;
  v70[2] = v6;
  v71[2] = &unk_282C114A8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:3];
  v114[37] = v9;
  v113[38] = @"SCC2_ARX_QICE";
  v68[0] = v4;
  v68[1] = v5;
  v69[0] = &unk_282C11478;
  v69[1] = &unk_282C114F0;
  v68[2] = v6;
  v69[2] = &unk_282C114A8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:3];
  v114[38] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:39];
  v118[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)refreshMav16BBRfLTE
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (id)logEventBackwardBBMav16HwRfLTE
{
  v24 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __56__PLBBMav16HwRfLTELogMsg_logEventBackwardBBMav16HwRfLTE__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v3;
    if (qword_2811F48E8 != -1)
    {
      dispatch_once(&qword_2811F48E8, &block);
    }

    if (byte_2811F4899 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16HwRfLTELogMsg logEventBackwardBBMav16HwRfLTE]", block, v16, v17, v18, v19];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16HwRfLTELogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16HwRfLTELogMsg logEventBackwardBBMav16HwRfLTE]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:265];

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
  [(PLBBMav16HwRfLTELogMsg *)self populateMav16Entry:v11];
  v20[0] = @"entry";
  v20[1] = @"entryKey";
  v21[0] = v11;
  v21[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __56__PLBBMav16HwRfLTELogMsg_logEventBackwardBBMav16HwRfLTE__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4899 = result;
  return result;
}

- (void)populateMav16Entry:(id)entry
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

  logDuration = [(PLBBMav16HwRfLTELogMsg *)self logDuration];
  [entryCopy setObject:logDuration forKeyedSubscript:@"LogDuration"];

  dupMode = [(PLBBMav16HwRfLTELogMsg *)self dupMode];
  [entryCopy setObject:dupMode forKeyedSubscript:@"DupMode"];

  pCCFreq = [(PLBBMav16HwRfLTELogMsg *)self PCCFreq];
  [entryCopy setObject:pCCFreq forKeyedSubscript:@"PCC_Band"];

  pCCBw = [(PLBBMav16HwRfLTELogMsg *)self PCCBw];
  [entryCopy setObject:pCCBw forKeyedSubscript:@"PCC_BW"];

  sCC1Freq = [(PLBBMav16HwRfLTELogMsg *)self SCC1Freq];
  [entryCopy setObject:sCC1Freq forKeyedSubscript:@"SCC1_Band"];

  sCC1Bw = [(PLBBMav16HwRfLTELogMsg *)self SCC1Bw];
  [entryCopy setObject:sCC1Bw forKeyedSubscript:@"SCC1_BW"];

  sCC2Freq = [(PLBBMav16HwRfLTELogMsg *)self SCC2Freq];
  [entryCopy setObject:sCC2Freq forKeyedSubscript:@"SCC2_Band"];

  sCC2Bw = [(PLBBMav16HwRfLTELogMsg *)self SCC2Bw];
  [entryCopy setObject:sCC2Bw forKeyedSubscript:@"SCC2_BW"];

  dlTBSzCnt = [(PLBBMav16HwRfLTELogMsg *)self dlTBSzCnt];
  [entryCopy setObject:dlTBSzCnt forKeyedSubscript:@"DLTBSzArr"];

  txPwrCnt = [(PLBBMav16HwRfLTELogMsg *)self txPwrCnt];
  [entryCopy setObject:txPwrCnt forKeyedSubscript:@"TxPwrBktArr"];

  caSCCCnt = [(PLBBMav16HwRfLTELogMsg *)self caSCCCnt];
  [entryCopy setObject:caSCCCnt forKeyedSubscript:@"CASCCStateArr"];

  ulCaSCCCnt = [(PLBBMav16HwRfLTELogMsg *)self ulCaSCCCnt];
  [entryCopy setObject:ulCaSCCCnt forKeyedSubscript:@"ULCACStateArr"];

  actRxTxCnt = [(PLBBMav16HwRfLTELogMsg *)self actRxTxCnt];
  [entryCopy setObject:actRxTxCnt forKeyedSubscript:@"kRfActRxTxArr"];

  sleepStateIdleCnt = [(PLBBMav16HwRfLTELogMsg *)self sleepStateIdleCnt];
  [entryCopy setObject:sleepStateIdleCnt forKeyedSubscript:@"SleepStateIdleArr"];

  sleepStateConnCnt = [(PLBBMav16HwRfLTELogMsg *)self sleepStateConnCnt];
  [entryCopy setObject:sleepStateConnCnt forKeyedSubscript:@"SleepStateConnArr"];

  rsrpIdleCnt = [(PLBBMav16HwRfLTELogMsg *)self rsrpIdleCnt];
  [entryCopy setObject:rsrpIdleCnt forKeyedSubscript:@"RfRSRPIdleArr"];

  rsrpConnCnt = [(PLBBMav16HwRfLTELogMsg *)self rsrpConnCnt];
  [entryCopy setObject:rsrpConnCnt forKeyedSubscript:@"RfRSRPConnArr"];

  sinrIdleCnt = [(PLBBMav16HwRfLTELogMsg *)self sinrIdleCnt];
  [entryCopy setObject:sinrIdleCnt forKeyedSubscript:@"RfSINRIdleArr"];

  sinrConnCnt = [(PLBBMav16HwRfLTELogMsg *)self sinrConnCnt];
  [entryCopy setObject:sinrConnCnt forKeyedSubscript:@"RfSINRConnArr"];

  arxStateCnt = [(PLBBMav16HwRfLTELogMsg *)self arxStateCnt];
  [entryCopy setObject:arxStateCnt forKeyedSubscript:@"RfARXArr"];

  nlicStateCnt = [(PLBBMav16HwRfLTELogMsg *)self nlicStateCnt];
  [entryCopy setObject:nlicStateCnt forKeyedSubscript:@"RfNLICArr"];

  bpeStats = [(PLBBMav16HwRfLTELogMsg *)self bpeStats];
  [entryCopy setObject:bpeStats forKeyedSubscript:@"RfBPEArr"];

  ardRxDOff = [(PLBBMav16HwRfLTELogMsg *)self ardRxDOff];
  [entryCopy setObject:ardRxDOff forKeyedSubscript:@"ARD_RxD_Off_Duration"];

  uSleepPCCCnt = [(PLBBMav16HwRfLTELogMsg *)self uSleepPCCCnt];
  [entryCopy setObject:uSleepPCCCnt forKeyedSubscript:@"uSleep_PCC"];

  uSleepSCC1Cnt = [(PLBBMav16HwRfLTELogMsg *)self uSleepSCC1Cnt];
  [entryCopy setObject:uSleepSCC1Cnt forKeyedSubscript:@"uSleep_SCC1"];

  uSleepSCC2Cnt = [(PLBBMav16HwRfLTELogMsg *)self uSleepSCC2Cnt];
  [entryCopy setObject:uSleepSCC2Cnt forKeyedSubscript:@"uSleep_SCC2"];

  hsicPCC = [(PLBBMav16HwRfLTELogMsg *)self hsicPCC];
  [entryCopy setObject:hsicPCC forKeyedSubscript:@"HSIC_PCC_OffOn"];

  hsicSCC1 = [(PLBBMav16HwRfLTELogMsg *)self hsicSCC1];
  [entryCopy setObject:hsicSCC1 forKeyedSubscript:@"HSIC_SCC1_OffOn"];

  hsicSCC2 = [(PLBBMav16HwRfLTELogMsg *)self hsicSCC2];
  [entryCopy setObject:hsicSCC2 forKeyedSubscript:@"HSIC_SCC2_OffOn"];

  arxOffPCC = [(PLBBMav16HwRfLTELogMsg *)self arxOffPCC];
  [entryCopy setObject:arxOffPCC forKeyedSubscript:@"PCC_ARX_Off"];

  arxOffSCC1 = [(PLBBMav16HwRfLTELogMsg *)self arxOffSCC1];
  [entryCopy setObject:arxOffSCC1 forKeyedSubscript:@"SCC1_ARX_Off"];

  arxOffSCC2 = [(PLBBMav16HwRfLTELogMsg *)self arxOffSCC2];
  [entryCopy setObject:arxOffSCC2 forKeyedSubscript:@"SCC2_ARX_Off"];

  arxBaselinePCC = [(PLBBMav16HwRfLTELogMsg *)self arxBaselinePCC];
  [entryCopy setObject:arxBaselinePCC forKeyedSubscript:@"PCC_ARX_Baseline"];

  arxBaselineSCC1 = [(PLBBMav16HwRfLTELogMsg *)self arxBaselineSCC1];
  [entryCopy setObject:arxBaselineSCC1 forKeyedSubscript:@"SCC1_ARX_Baseline"];

  arxBaselineSCC2 = [(PLBBMav16HwRfLTELogMsg *)self arxBaselineSCC2];
  [entryCopy setObject:arxBaselineSCC2 forKeyedSubscript:@"SCC2_ARX_Baseline"];

  arxQicePCC = [(PLBBMav16HwRfLTELogMsg *)self arxQicePCC];
  [entryCopy setObject:arxQicePCC forKeyedSubscript:@"PCC_ARX_QICE"];

  arxQiceSCC1 = [(PLBBMav16HwRfLTELogMsg *)self arxQiceSCC1];
  [entryCopy setObject:arxQiceSCC1 forKeyedSubscript:@"SCC1_ARX_QICE"];

  arxQiceSCC2 = [(PLBBMav16HwRfLTELogMsg *)self arxQiceSCC2];
  [entryCopy setObject:arxQiceSCC2 forKeyedSubscript:@"SCC2_ARX_QICE"];
}

@end