@interface PLBBMav16BHwRfLTELogMsg
+ (id)entryEventBackwardDefinitionBBMav16BHwRfLTE;
- (PLBBMav16BHwRfLTELogMsg)init;
- (id)logEventBackwardBBMav16BHwRfLTE;
- (void)addPairWithKey:(id)key andWithVal:(id)val;
- (void)populateMav16BEntry:(id)entry;
- (void)refreshMav16BBBRfLTE;
- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type;
- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal;
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
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg init]"];
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
    block[2] = __63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F40E8 != -1)
    {
      dispatch_once(&qword_2811F40E8, block);
    }

    if (byte_2811F40D1 == 1)
    {
      v45 = typeCopy;
      v12 = nameCopy;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMav16BHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
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
    v48[2] = __63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372;
    v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v48[4] = v19;
    if (qword_2811F40F0 != -1)
    {
      dispatch_once(&qword_2811F40F0, v48);
    }

    if (byte_2811F40D2 == 1)
    {
      v20 = typeCopy;
      v44 = typeCopy;
      v21 = nameCopy;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", nameCopy, v44];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent2 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
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
    v47[2] = __63__PLBBMav16BHwRfLTELogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v32;
    if (qword_2811F40F8 != -1)
    {
      dispatch_once(&qword_2811F40F8, v47);
    }

    if (byte_2811F40D3 == 1)
    {
      v46 = typeCopy;
      v33 = nameCopy;
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent3 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg sendAndLogPLEntry:withName:withType:]"];
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
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
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
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
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
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg addPairWithKey:andWithVal:]"];
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
      v31[2] = __53__PLBBMav16BHwRfLTELogMsg_addPairWithKey_andWithVal___block_invoke_397;
      v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v31[4] = v16;
      if (qword_2811F4120 != -1)
      {
        dispatch_once(&qword_2811F4120, v31);
      }

      if (byte_2811F40D8 == 1)
      {
        valCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", keyCopy, valCopy];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg addPairWithKey:andWithVal:]"];
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

    kvPairs = [(PLBBMav16BHwRfLTELogMsg *)self kvPairs];
    [kvPairs setObject:valCopy forKey:keyCopy];
LABEL_17:

    goto LABEL_25;
  }

  if (debugEnabled)
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
      kvPairs = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: nil key for kvPair not expected, return"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMav16BHwRfLTELogMsg.m"];
      lastPathComponent3 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg addPairWithKey:andWithVal:]"];
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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v120[0] = commonTypeDict_IntegerFormat;
  v119[1] = @"BBDate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v120[1] = commonTypeDict_DateFormat;
  v119[2] = @"LogDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v120[2] = commonTypeDict_RealFormat;
  v119[3] = @"DupMode";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v120[3] = commonTypeDict_IntegerFormat2;
  v119[4] = @"PCC_Band";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v120[4] = commonTypeDict_IntegerFormat3;
  v119[5] = @"PCC_BW";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v120[5] = commonTypeDict_IntegerFormat4;
  v119[6] = @"SCC1_Band";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v120[6] = commonTypeDict_IntegerFormat5;
  v119[7] = @"SCC1_BW";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v120[7] = commonTypeDict_IntegerFormat6;
  v119[8] = @"SCC2_Band";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v120[8] = commonTypeDict_IntegerFormat7;
  v119[9] = @"SCC2_BW";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v120[9] = commonTypeDict_IntegerFormat8;
  v119[10] = @"SCC3_Band";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v120[10] = commonTypeDict_IntegerFormat9;
  v119[11] = @"SCC3_BW";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]12 commonTypeDict_IntegerFormat];
  v120[11] = commonTypeDict_IntegerFormat10;
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
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v120[24] = commonTypeDict_IntegerFormat11;
  v119[25] = @"uSleep_PCC";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat12 = [mEMORY[0x277D3F198]14 commonTypeDict_IntegerFormat];
  v120[25] = commonTypeDict_IntegerFormat12;
  v119[26] = @"uSleep_SCC1";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat13 = [mEMORY[0x277D3F198]15 commonTypeDict_IntegerFormat];
  v120[26] = commonTypeDict_IntegerFormat13;
  v119[27] = @"uSleep_SCC2";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat14 = [mEMORY[0x277D3F198]16 commonTypeDict_IntegerFormat];
  v120[27] = commonTypeDict_IntegerFormat14;
  v119[28] = @"uSleep_SCC3";
  mEMORY[0x277D3F198]17 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat15 = [mEMORY[0x277D3F198]17 commonTypeDict_IntegerFormat];
  v120[28] = commonTypeDict_IntegerFormat15;
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
  mEMORY[0x277D3F198]18 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat16 = [mEMORY[0x277D3F198]18 commonTypeDict_IntegerFormat];
  v120[33] = commonTypeDict_IntegerFormat16;
  v119[34] = @"SCC1_ARX_Off";
  mEMORY[0x277D3F198]19 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat17 = [mEMORY[0x277D3F198]19 commonTypeDict_IntegerFormat];
  v120[34] = commonTypeDict_IntegerFormat17;
  v119[35] = @"SCC2_ARX_Off";
  mEMORY[0x277D3F198]20 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat18 = [mEMORY[0x277D3F198]20 commonTypeDict_IntegerFormat];
  v120[35] = commonTypeDict_IntegerFormat18;
  v119[36] = @"SCC3_ARX_Off";
  mEMORY[0x277D3F198]21 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat19 = [mEMORY[0x277D3F198]21 commonTypeDict_IntegerFormat];
  v120[36] = commonTypeDict_IntegerFormat19;
  v119[37] = @"PCC_ARX_Baseline";
  mEMORY[0x277D3F198]22 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat20 = [mEMORY[0x277D3F198]22 commonTypeDict_IntegerFormat];
  v120[37] = commonTypeDict_IntegerFormat20;
  v119[38] = @"SCC1_ARX_Baseline";
  mEMORY[0x277D3F198]23 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat21 = [mEMORY[0x277D3F198]23 commonTypeDict_IntegerFormat];
  v120[38] = commonTypeDict_IntegerFormat21;
  v119[39] = @"SCC2_ARX_Baseline";
  mEMORY[0x277D3F198]24 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat22 = [mEMORY[0x277D3F198]24 commonTypeDict_IntegerFormat];
  v120[39] = commonTypeDict_IntegerFormat22;
  v119[40] = @"SCC3_ARX_Baseline";
  mEMORY[0x277D3F198]25 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat23 = [mEMORY[0x277D3F198]25 commonTypeDict_IntegerFormat];
  v120[40] = commonTypeDict_IntegerFormat23;
  v119[41] = @"PCC_ARX_QICE";
  mEMORY[0x277D3F198]26 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat24 = [mEMORY[0x277D3F198]26 commonTypeDict_IntegerFormat];
  v120[41] = commonTypeDict_IntegerFormat24;
  v119[42] = @"SCC1_ARX_QICE";
  mEMORY[0x277D3F198]27 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat25 = [mEMORY[0x277D3F198]27 commonTypeDict_IntegerFormat];
  v120[42] = commonTypeDict_IntegerFormat25;
  v119[43] = @"SCC2_ARX_QICE";
  mEMORY[0x277D3F198]28 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat26 = [mEMORY[0x277D3F198]28 commonTypeDict_IntegerFormat];
  v120[43] = commonTypeDict_IntegerFormat26;
  v119[44] = @"SCC3_ARX_QICE";
  mEMORY[0x277D3F198]29 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat27 = [mEMORY[0x277D3F198]29 commonTypeDict_IntegerFormat];
  v120[44] = commonTypeDict_IntegerFormat27;
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
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMav16BHwRfLTELogMsg logEventBackwardBBMav16BHwRfLTE]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:264];

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

- (void)populateMav16BEntry:(id)entry
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

  logDuration = [(PLBBMav16BHwRfLTELogMsg *)self logDuration];
  [entryCopy setObject:logDuration forKeyedSubscript:@"LogDuration"];

  dupMode = [(PLBBMav16BHwRfLTELogMsg *)self dupMode];
  [entryCopy setObject:dupMode forKeyedSubscript:@"DupMode"];

  pCCFreq = [(PLBBMav16BHwRfLTELogMsg *)self PCCFreq];
  [entryCopy setObject:pCCFreq forKeyedSubscript:@"PCC_Band"];

  pCCBw = [(PLBBMav16BHwRfLTELogMsg *)self PCCBw];
  [entryCopy setObject:pCCBw forKeyedSubscript:@"PCC_BW"];

  sCC1Freq = [(PLBBMav16BHwRfLTELogMsg *)self SCC1Freq];
  [entryCopy setObject:sCC1Freq forKeyedSubscript:@"SCC1_Band"];

  sCC1Bw = [(PLBBMav16BHwRfLTELogMsg *)self SCC1Bw];
  [entryCopy setObject:sCC1Bw forKeyedSubscript:@"SCC1_BW"];

  sCC2Freq = [(PLBBMav16BHwRfLTELogMsg *)self SCC2Freq];
  [entryCopy setObject:sCC2Freq forKeyedSubscript:@"SCC2_Band"];

  sCC2Bw = [(PLBBMav16BHwRfLTELogMsg *)self SCC2Bw];
  [entryCopy setObject:sCC2Bw forKeyedSubscript:@"SCC2_BW"];

  sCC3Freq = [(PLBBMav16BHwRfLTELogMsg *)self SCC3Freq];
  [entryCopy setObject:sCC3Freq forKeyedSubscript:@"SCC3_Band"];

  sCC3Bw = [(PLBBMav16BHwRfLTELogMsg *)self SCC3Bw];
  [entryCopy setObject:sCC3Bw forKeyedSubscript:@"SCC3_BW"];

  dlTBSzCnt = [(PLBBMav16BHwRfLTELogMsg *)self dlTBSzCnt];
  [entryCopy setObject:dlTBSzCnt forKeyedSubscript:@"DLTBSzArr"];

  txPwrCnt = [(PLBBMav16BHwRfLTELogMsg *)self txPwrCnt];
  [entryCopy setObject:txPwrCnt forKeyedSubscript:@"TxPwrBktArr"];

  caSCCCnt = [(PLBBMav16BHwRfLTELogMsg *)self caSCCCnt];
  [entryCopy setObject:caSCCCnt forKeyedSubscript:@"CASCCStateArr"];

  ulCaSCCCnt = [(PLBBMav16BHwRfLTELogMsg *)self ulCaSCCCnt];
  [entryCopy setObject:ulCaSCCCnt forKeyedSubscript:@"ULCACStateArr"];

  actRxTxCnt = [(PLBBMav16BHwRfLTELogMsg *)self actRxTxCnt];
  [entryCopy setObject:actRxTxCnt forKeyedSubscript:@"kRfActRxTxArr"];

  sleepStateIdleCnt = [(PLBBMav16BHwRfLTELogMsg *)self sleepStateIdleCnt];
  [entryCopy setObject:sleepStateIdleCnt forKeyedSubscript:@"SleepStateIdleArr"];

  sleepStateConnCnt = [(PLBBMav16BHwRfLTELogMsg *)self sleepStateConnCnt];
  [entryCopy setObject:sleepStateConnCnt forKeyedSubscript:@"SleepStateConnArr"];

  rsrpIdleCnt = [(PLBBMav16BHwRfLTELogMsg *)self rsrpIdleCnt];
  [entryCopy setObject:rsrpIdleCnt forKeyedSubscript:@"RfRSRPIdleArr"];

  rsrpConnCnt = [(PLBBMav16BHwRfLTELogMsg *)self rsrpConnCnt];
  [entryCopy setObject:rsrpConnCnt forKeyedSubscript:@"RfRSRPConnArr"];

  sinrIdleCnt = [(PLBBMav16BHwRfLTELogMsg *)self sinrIdleCnt];
  [entryCopy setObject:sinrIdleCnt forKeyedSubscript:@"RfSINRIdleArr"];

  sinrConnCnt = [(PLBBMav16BHwRfLTELogMsg *)self sinrConnCnt];
  [entryCopy setObject:sinrConnCnt forKeyedSubscript:@"RfSINRConnArr"];

  arxStateCnt = [(PLBBMav16BHwRfLTELogMsg *)self arxStateCnt];
  [entryCopy setObject:arxStateCnt forKeyedSubscript:@"RfARXArr"];

  nlicStateCnt = [(PLBBMav16BHwRfLTELogMsg *)self nlicStateCnt];
  [entryCopy setObject:nlicStateCnt forKeyedSubscript:@"RfNLICArr"];

  bpeStats = [(PLBBMav16BHwRfLTELogMsg *)self bpeStats];
  [entryCopy setObject:bpeStats forKeyedSubscript:@"RfBPEArr"];

  ardRxDOff = [(PLBBMav16BHwRfLTELogMsg *)self ardRxDOff];
  [entryCopy setObject:ardRxDOff forKeyedSubscript:@"ARD_RxD_Off_Duration"];

  uSleepPCCCnt = [(PLBBMav16BHwRfLTELogMsg *)self uSleepPCCCnt];
  [entryCopy setObject:uSleepPCCCnt forKeyedSubscript:@"uSleep_PCC"];

  uSleepSCC1Cnt = [(PLBBMav16BHwRfLTELogMsg *)self uSleepSCC1Cnt];
  [entryCopy setObject:uSleepSCC1Cnt forKeyedSubscript:@"uSleep_SCC1"];

  uSleepSCC2Cnt = [(PLBBMav16BHwRfLTELogMsg *)self uSleepSCC2Cnt];
  [entryCopy setObject:uSleepSCC2Cnt forKeyedSubscript:@"uSleep_SCC2"];

  uSleepSCC3Cnt = [(PLBBMav16BHwRfLTELogMsg *)self uSleepSCC3Cnt];
  [entryCopy setObject:uSleepSCC3Cnt forKeyedSubscript:@"uSleep_SCC3"];

  hsicPCC = [(PLBBMav16BHwRfLTELogMsg *)self hsicPCC];
  [entryCopy setObject:hsicPCC forKeyedSubscript:@"HSIC_PCC_OffOn"];

  hsicSCC1 = [(PLBBMav16BHwRfLTELogMsg *)self hsicSCC1];
  [entryCopy setObject:hsicSCC1 forKeyedSubscript:@"HSIC_SCC1_OffOn"];

  hsicSCC2 = [(PLBBMav16BHwRfLTELogMsg *)self hsicSCC2];
  [entryCopy setObject:hsicSCC2 forKeyedSubscript:@"HSIC_SCC2_OffOn"];

  hsicSCC3 = [(PLBBMav16BHwRfLTELogMsg *)self hsicSCC3];
  [entryCopy setObject:hsicSCC3 forKeyedSubscript:@"HSIC_SCC3_OffOn"];

  arxOffPCC = [(PLBBMav16BHwRfLTELogMsg *)self arxOffPCC];
  [entryCopy setObject:arxOffPCC forKeyedSubscript:@"PCC_ARX_Off"];

  arxOffSCC1 = [(PLBBMav16BHwRfLTELogMsg *)self arxOffSCC1];
  [entryCopy setObject:arxOffSCC1 forKeyedSubscript:@"SCC1_ARX_Off"];

  arxOffSCC2 = [(PLBBMav16BHwRfLTELogMsg *)self arxOffSCC2];
  [entryCopy setObject:arxOffSCC2 forKeyedSubscript:@"SCC2_ARX_Off"];

  arxOffSCC3 = [(PLBBMav16BHwRfLTELogMsg *)self arxOffSCC3];
  [entryCopy setObject:arxOffSCC3 forKeyedSubscript:@"SCC3_ARX_Off"];

  arxBaselinePCC = [(PLBBMav16BHwRfLTELogMsg *)self arxBaselinePCC];
  [entryCopy setObject:arxBaselinePCC forKeyedSubscript:@"PCC_ARX_Baseline"];

  arxBaselineSCC1 = [(PLBBMav16BHwRfLTELogMsg *)self arxBaselineSCC1];
  [entryCopy setObject:arxBaselineSCC1 forKeyedSubscript:@"SCC1_ARX_Baseline"];

  arxBaselineSCC2 = [(PLBBMav16BHwRfLTELogMsg *)self arxBaselineSCC2];
  [entryCopy setObject:arxBaselineSCC2 forKeyedSubscript:@"SCC2_ARX_Baseline"];

  arxBaselineSCC3 = [(PLBBMav16BHwRfLTELogMsg *)self arxBaselineSCC3];
  [entryCopy setObject:arxBaselineSCC3 forKeyedSubscript:@"SCC3_ARX_Baseline"];

  arxQicePCC = [(PLBBMav16BHwRfLTELogMsg *)self arxQicePCC];
  [entryCopy setObject:arxQicePCC forKeyedSubscript:@"PCC_ARX_QICE"];

  arxQiceSCC1 = [(PLBBMav16BHwRfLTELogMsg *)self arxQiceSCC1];
  [entryCopy setObject:arxQiceSCC1 forKeyedSubscript:@"SCC1_ARX_QICE"];

  arxQiceSCC2 = [(PLBBMav16BHwRfLTELogMsg *)self arxQiceSCC2];
  [entryCopy setObject:arxQiceSCC2 forKeyedSubscript:@"SCC2_ARX_QICE"];

  arxQiceSCC3 = [(PLBBMav16BHwRfLTELogMsg *)self arxQiceSCC3];
  [entryCopy setObject:arxQiceSCC3 forKeyedSubscript:@"SCC3_ARX_QICE"];
}

@end