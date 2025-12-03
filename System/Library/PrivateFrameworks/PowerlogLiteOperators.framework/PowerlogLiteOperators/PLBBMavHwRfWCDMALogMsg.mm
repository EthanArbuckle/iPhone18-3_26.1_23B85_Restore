@interface PLBBMavHwRfWCDMALogMsg
+ (id)entryEventBackwardDefinitionBBMav16BHwRfWCDMA;
+ (id)entryEventBackwardDefinitionBBMav16HwRfWCDMA;
+ (id)entryEventBackwardDefinitionBBMavHwRfWCDMA;
- (PLBBMavHwRfWCDMALogMsg)init;
- (id)logEventBackwardBBMavHwRfWCDMA;
- (void)addPairWithKey:(id)key andWithVal:(id)val;
- (void)populateEntry:(id)entry;
- (void)refreshRequest;
- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type;
- (void)setHeaderWithSeqNum:(id)num andDate:(id)date andTimeCal:(double)cal;
@end

@implementation PLBBMavHwRfWCDMALogMsg

- (PLBBMavHwRfWCDMALogMsg)init
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__PLBBMavHwRfWCDMALogMsg_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F63C0 != -1)
    {
      dispatch_once(&qword_2811F63C0, block);
    }

    if (_MergedGlobals_1_53 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfWCDMALogMsg init]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfWCDMALogMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfWCDMALogMsg init]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:39];

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
  v17.super_class = PLBBMavHwRfWCDMALogMsg;
  v10 = [(PLBBMavHwRfWCDMALogMsg *)&v17 init];
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

uint64_t __30__PLBBMavHwRfWCDMALogMsg_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_53 = result;
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
    block[2] = __62__PLBBMavHwRfWCDMALogMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F63C8 != -1)
    {
      dispatch_once(&qword_2811F63C8, block);
    }

    if (byte_2811F63B1 == 1)
    {
      v45 = typeCopy;
      v12 = nameCopy;
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfWCDMALogMsg sendAndLogPLEntry:withName:withType:]"];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfWCDMALogMsg.m"];
      lastPathComponent = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfWCDMALogMsg sendAndLogPLEntry:withName:withType:]"];
      [v14 logMessage:v13 fromFile:lastPathComponent fromFunction:v17 fromLineNumber:58];

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
    v48[2] = __62__PLBBMavHwRfWCDMALogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372;
    v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v48[4] = v19;
    if (qword_2811F63D0 != -1)
    {
      dispatch_once(&qword_2811F63D0, v48);
    }

    if (byte_2811F63B2 == 1)
    {
      v20 = typeCopy;
      v44 = typeCopy;
      v21 = nameCopy;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", nameCopy, v44];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfWCDMALogMsg.m"];
      lastPathComponent2 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfWCDMALogMsg sendAndLogPLEntry:withName:withType:]"];
      [v23 logMessage:v22 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:59];

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

  agent = [(PLBasebandMessage *)self agent];

  if (!agent && [MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = objc_opt_class();
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __62__PLBBMavHwRfWCDMALogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378;
    v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v47[4] = v32;
    if (qword_2811F63D8 != -1)
    {
      dispatch_once(&qword_2811F63D8, v47);
    }

    if (byte_2811F63B3 == 1)
    {
      v46 = typeCopy;
      v33 = nameCopy;
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfWCDMALogMsg.m"];
      lastPathComponent3 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfWCDMALogMsg sendAndLogPLEntry:withName:withType:]"];
      [v35 logMessage:v34 fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:66];

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

  agent2 = [(PLBasebandMessage *)self agent];
  [agent2 logEntry:entryCopy];

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t __62__PLBBMavHwRfWCDMALogMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F63B1 = result;
  return result;
}

uint64_t __62__PLBBMavHwRfWCDMALogMsg_sendAndLogPLEntry_withName_withType___block_invoke_372(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F63B2 = result;
  return result;
}

uint64_t __62__PLBBMavHwRfWCDMALogMsg_sendAndLogPLEntry_withName_withType___block_invoke_378(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F63B3 = result;
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
    block[2] = __65__PLBBMavHwRfWCDMALogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (qword_2811F63E0 != -1)
    {
      dispatch_once(&qword_2811F63E0, block);
    }

    if (byte_2811F63B4 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfWCDMALogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfWCDMALogMsg.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfWCDMALogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:78];

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
    v26[2] = __65__PLBBMavHwRfWCDMALogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_384;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v19;
    if (qword_2811F63E8 != -1)
    {
      dispatch_once(&qword_2811F63E8, v26);
    }

    if (byte_2811F63B5 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"unable to set seqNum, date, timeCal"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfWCDMALogMsg.m"];
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfWCDMALogMsg setHeaderWithSeqNum:andDate:andTimeCal:]"];
      [v20 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:80];

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

uint64_t __65__PLBBMavHwRfWCDMALogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F63B4 = result;
  return result;
}

uint64_t __65__PLBBMavHwRfWCDMALogMsg_setHeaderWithSeqNum_andDate_andTimeCal___block_invoke_384(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F63B5 = result;
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
    block[2] = __52__PLBBMavHwRfWCDMALogMsg_addPairWithKey_andWithVal___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (qword_2811F63F0 != -1)
    {
      dispatch_once(&qword_2811F63F0, block);
    }

    if (byte_2811F63B6 == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMavHwRfWCDMALogMsg addPairWithKey:andWithVal:]"];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfWCDMALogMsg.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfWCDMALogMsg addPairWithKey:andWithVal:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:96];

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
      v31[2] = __52__PLBBMavHwRfWCDMALogMsg_addPairWithKey_andWithVal___block_invoke_397;
      v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v31[4] = v16;
      if (qword_2811F6400 != -1)
      {
        dispatch_once(&qword_2811F6400, v31);
      }

      if (byte_2811F63B8 == 1)
      {
        valCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Add KVPair [%@, %@]", keyCopy, valCopy];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfWCDMALogMsg.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfWCDMALogMsg addPairWithKey:andWithVal:]"];
        [v18 logMessage:valCopy fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:102];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v35 = valCopy;
          _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    kvPairs = [(PLBBMavHwRfWCDMALogMsg *)self kvPairs];
    [kvPairs setObject:valCopy forKey:keyCopy];
LABEL_17:

    goto LABEL_25;
  }

  if (debugEnabled)
  {
    v24 = objc_opt_class();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __52__PLBBMavHwRfWCDMALogMsg_addPairWithKey_andWithVal___block_invoke_391;
    v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v32[4] = v24;
    if (qword_2811F63F8 != -1)
    {
      dispatch_once(&qword_2811F63F8, v32);
    }

    if (byte_2811F63B7 == 1)
    {
      kvPairs = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: nil key for kvPair not expected, return"];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMavHwRfWCDMALogMsg.m"];
      lastPathComponent3 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMavHwRfWCDMALogMsg addPairWithKey:andWithVal:]"];
      [v25 logMessage:kvPairs fromFile:lastPathComponent3 fromFunction:v28 fromLineNumber:99];

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

uint64_t __52__PLBBMavHwRfWCDMALogMsg_addPairWithKey_andWithVal___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F63B6 = result;
  return result;
}

uint64_t __52__PLBBMavHwRfWCDMALogMsg_addPairWithKey_andWithVal___block_invoke_391(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F63B7 = result;
  return result;
}

uint64_t __52__PLBBMavHwRfWCDMALogMsg_addPairWithKey_andWithVal___block_invoke_397(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F63B8 = result;
  return result;
}

+ (id)entryEventBackwardDefinitionBBMavHwRfWCDMA
{
  v58[2] = *MEMORY[0x277D85DE8];
  v57[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v55[0] = *MEMORY[0x277D3F568];
  v55[1] = v2;
  v56[0] = &unk_282C1C9A8;
  v56[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v55[2] = *MEMORY[0x277D3F548];
  v55[3] = v3;
  v56[2] = @"refreshRequestHandler";
  v56[3] = MEMORY[0x277CBEC38];
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
  v58[0] = v35;
  v57[1] = *MEMORY[0x277D3F540];
  v53[0] = @"SeqNum";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v54[0] = commonTypeDict_IntegerFormat;
  v53[1] = @"BBDate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v54[1] = commonTypeDict_DateFormat;
  v53[2] = @"LogDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v54[2] = commonTypeDict_RealFormat;
  v53[3] = @"SCEqTypeDuration";
  v5 = *MEMORY[0x277D3F598];
  v50[0] = *MEMORY[0x277D3F5A8];
  v4 = v50[0];
  v50[1] = v5;
  v52[0] = &unk_282C12AE0;
  v52[1] = &unk_282C12AF8;
  v51 = *MEMORY[0x277D3F5A0];
  v6 = v51;
  v52[2] = &unk_282C12B10;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v50 count:3];
  v54[3] = v28;
  v53[4] = @"DCEqTypeDuration";
  v48[0] = v4;
  v48[1] = v5;
  v49[0] = &unk_282C12AE0;
  v49[1] = &unk_282C12AF8;
  v48[2] = v6;
  v49[2] = &unk_282C12B10;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
  v54[4] = v27;
  v53[5] = @"SCQSetNumCell";
  v46[0] = v4;
  v46[1] = v5;
  v47[0] = &unk_282C12AE0;
  v47[1] = &unk_282C12B28;
  v46[2] = v6;
  v47[2] = &unk_282C12B10;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
  v54[5] = v26;
  v53[6] = @"DCQSetNumCell";
  v44[0] = v4;
  v44[1] = v5;
  v45[0] = &unk_282C12AE0;
  v45[1] = &unk_282C12B28;
  v44[2] = v6;
  v45[2] = &unk_282C12B10;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
  v54[6] = v25;
  v53[7] = @"TimeInCarrierMode";
  v42[0] = v4;
  v42[1] = v5;
  v43[0] = &unk_282C12AE0;
  v43[1] = &unk_282C12B40;
  v42[2] = v6;
  v43[2] = &unk_282C12B10;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
  v54[7] = v24;
  v53[8] = @"DurationInRabMode";
  v40[0] = v4;
  v40[1] = v5;
  v41[0] = &unk_282C12AE0;
  v41[1] = &unk_282C12B28;
  v40[2] = v6;
  v41[2] = &unk_282C12B10;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  v54[8] = v23;
  v53[9] = @"DurationInPsRabType";
  v38[0] = v4;
  v38[1] = v5;
  v39[0] = &unk_282C12AE0;
  v39[1] = &unk_282C12B28;
  v38[2] = v6;
  v39[2] = &unk_282C12B10;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  v54[9] = v22;
  v53[10] = @"TxPwrBktArr";
  v36[0] = v4;
  v36[1] = v5;
  v37[0] = &unk_282C12AE0;
  v37[1] = &unk_282C12B58;
  v36[2] = v6;
  v37[2] = &unk_282C12B10;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
  v54[10] = v21;
  v53[11] = @"CPCRxOnCnt";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v54[11] = commonTypeDict_IntegerFormat2;
  v53[12] = @"CPCRxTxOffCnt";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v54[12] = commonTypeDict_IntegerFormat3;
  v53[13] = @"CPCTimeCnt";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v54[13] = commonTypeDict_IntegerFormat4;
  v53[14] = @"CPCEnergy";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v54[14] = commonTypeDict_IntegerFormat5;
  v53[15] = @"FetCnt";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v54[15] = commonTypeDict_IntegerFormat6;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:16];
  v58[1] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)entryEventBackwardDefinitionBBMav16HwRfWCDMA
{
  v58[2] = *MEMORY[0x277D85DE8];
  v57[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v55[0] = *MEMORY[0x277D3F568];
  v55[1] = v2;
  v56[0] = &unk_282C1C9A8;
  v56[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v55[2] = *MEMORY[0x277D3F548];
  v55[3] = v3;
  v56[2] = @"refreshRequestHandler";
  v56[3] = MEMORY[0x277CBEC38];
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
  v58[0] = v35;
  v57[1] = *MEMORY[0x277D3F540];
  v53[0] = @"SeqNum";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v54[0] = commonTypeDict_IntegerFormat;
  v53[1] = @"BBDate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v54[1] = commonTypeDict_DateFormat;
  v53[2] = @"LogDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v54[2] = commonTypeDict_RealFormat;
  v53[3] = @"SCEqTypeDuration";
  v5 = *MEMORY[0x277D3F598];
  v50[0] = *MEMORY[0x277D3F5A8];
  v4 = v50[0];
  v50[1] = v5;
  v52[0] = &unk_282C12AE0;
  v52[1] = &unk_282C12AF8;
  v51 = *MEMORY[0x277D3F5A0];
  v6 = v51;
  v52[2] = &unk_282C12B10;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v50 count:3];
  v54[3] = v28;
  v53[4] = @"DCEqTypeDuration";
  v48[0] = v4;
  v48[1] = v5;
  v49[0] = &unk_282C12AE0;
  v49[1] = &unk_282C12AF8;
  v48[2] = v6;
  v49[2] = &unk_282C12B10;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
  v54[4] = v27;
  v53[5] = @"SCQSetNumCell";
  v46[0] = v4;
  v46[1] = v5;
  v47[0] = &unk_282C12AE0;
  v47[1] = &unk_282C12B28;
  v46[2] = v6;
  v47[2] = &unk_282C12B10;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
  v54[5] = v26;
  v53[6] = @"DCQSetNumCell";
  v44[0] = v4;
  v44[1] = v5;
  v45[0] = &unk_282C12AE0;
  v45[1] = &unk_282C12B28;
  v44[2] = v6;
  v45[2] = &unk_282C12B10;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
  v54[6] = v25;
  v53[7] = @"TimeInCarrierMode";
  v42[0] = v4;
  v42[1] = v5;
  v43[0] = &unk_282C12AE0;
  v43[1] = &unk_282C12B40;
  v42[2] = v6;
  v43[2] = &unk_282C12B10;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
  v54[7] = v24;
  v53[8] = @"DurationInRabMode";
  v40[0] = v4;
  v40[1] = v5;
  v41[0] = &unk_282C12AE0;
  v41[1] = &unk_282C12B28;
  v40[2] = v6;
  v41[2] = &unk_282C12B10;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  v54[8] = v23;
  v53[9] = @"DurationInPsRabType";
  v38[0] = v4;
  v38[1] = v5;
  v39[0] = &unk_282C12AE0;
  v39[1] = &unk_282C12B28;
  v38[2] = v6;
  v39[2] = &unk_282C12B10;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  v54[9] = v22;
  v53[10] = @"TxPwrBktArr";
  v36[0] = v4;
  v36[1] = v5;
  v37[0] = &unk_282C12AE0;
  v37[1] = &unk_282C12B70;
  v36[2] = v6;
  v37[2] = &unk_282C12B10;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
  v54[10] = v21;
  v53[11] = @"CPCRxOnCnt";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v54[11] = commonTypeDict_IntegerFormat2;
  v53[12] = @"CPCRxTxOffCnt";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v54[12] = commonTypeDict_IntegerFormat3;
  v53[13] = @"CPCTimeCnt";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v54[13] = commonTypeDict_IntegerFormat4;
  v53[14] = @"CPCEnergy";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v54[14] = commonTypeDict_IntegerFormat5;
  v53[15] = @"FetCnt";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v54[15] = commonTypeDict_IntegerFormat6;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:16];
  v58[1] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)entryEventBackwardDefinitionBBMav16BHwRfWCDMA
{
  v58[2] = *MEMORY[0x277D85DE8];
  v57[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v55[0] = *MEMORY[0x277D3F568];
  v55[1] = v2;
  v56[0] = &unk_282C1C9A8;
  v56[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F558];
  v55[2] = *MEMORY[0x277D3F548];
  v55[3] = v3;
  v56[2] = @"refreshRequestHandler";
  v56[3] = MEMORY[0x277CBEC38];
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
  v58[0] = v35;
  v57[1] = *MEMORY[0x277D3F540];
  v53[0] = @"SeqNum";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v54[0] = commonTypeDict_IntegerFormat;
  v53[1] = @"BBDate";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]2 commonTypeDict_DateFormat];
  v54[1] = commonTypeDict_DateFormat;
  v53[2] = @"LogDuration";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_RealFormat = [mEMORY[0x277D3F198]3 commonTypeDict_RealFormat];
  v54[2] = commonTypeDict_RealFormat;
  v53[3] = @"SCEqTypeDuration";
  v5 = *MEMORY[0x277D3F598];
  v50[0] = *MEMORY[0x277D3F5A8];
  v4 = v50[0];
  v50[1] = v5;
  v52[0] = &unk_282C12AE0;
  v52[1] = &unk_282C12AF8;
  v51 = *MEMORY[0x277D3F5A0];
  v6 = v51;
  v52[2] = &unk_282C12B10;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v50 count:3];
  v54[3] = v28;
  v53[4] = @"DCEqTypeDuration";
  v48[0] = v4;
  v48[1] = v5;
  v49[0] = &unk_282C12AE0;
  v49[1] = &unk_282C12AF8;
  v48[2] = v6;
  v49[2] = &unk_282C12B10;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
  v54[4] = v27;
  v53[5] = @"SCQSetNumCell";
  v46[0] = v4;
  v46[1] = v5;
  v47[0] = &unk_282C12AE0;
  v47[1] = &unk_282C12B28;
  v46[2] = v6;
  v47[2] = &unk_282C12B10;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
  v54[5] = v26;
  v53[6] = @"DCQSetNumCell";
  v44[0] = v4;
  v44[1] = v5;
  v45[0] = &unk_282C12AE0;
  v45[1] = &unk_282C12B28;
  v44[2] = v6;
  v45[2] = &unk_282C12B10;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
  v54[6] = v25;
  v53[7] = @"TimeInCarrierMode";
  v42[0] = v4;
  v42[1] = v5;
  v43[0] = &unk_282C12AE0;
  v43[1] = &unk_282C12B40;
  v42[2] = v6;
  v43[2] = &unk_282C12B10;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
  v54[7] = v24;
  v53[8] = @"DurationInRabMode";
  v40[0] = v4;
  v40[1] = v5;
  v41[0] = &unk_282C12AE0;
  v41[1] = &unk_282C12B28;
  v40[2] = v6;
  v41[2] = &unk_282C12B10;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  v54[8] = v23;
  v53[9] = @"DurationInPsRabType";
  v38[0] = v4;
  v38[1] = v5;
  v39[0] = &unk_282C12AE0;
  v39[1] = &unk_282C12B28;
  v38[2] = v6;
  v39[2] = &unk_282C12B10;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  v54[9] = v22;
  v53[10] = @"TxPwrBktArr";
  v36[0] = v4;
  v36[1] = v5;
  v37[0] = &unk_282C12AE0;
  v37[1] = &unk_282C12B58;
  v36[2] = v6;
  v37[2] = &unk_282C12B10;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
  v54[10] = v21;
  v53[11] = @"CPCRxOnCnt";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v54[11] = commonTypeDict_IntegerFormat2;
  v53[12] = @"CPCRxTxOffCnt";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v54[12] = commonTypeDict_IntegerFormat3;
  v53[13] = @"CPCTimeCnt";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v54[13] = commonTypeDict_IntegerFormat4;
  v53[14] = @"CPCEnergy";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v54[14] = commonTypeDict_IntegerFormat5;
  v53[15] = @"FetCnt";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v54[15] = commonTypeDict_IntegerFormat6;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:16];
  v58[1] = v15;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];

  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)refreshRequest
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (id)logEventBackwardBBMavHwRfWCDMA
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BBMavHwRfWCDMA"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  [(PLBBMavHwRfWCDMALogMsg *)self populateEntry:v4];
  v8[0] = @"entry";
  v8[1] = @"entryKey";
  v9[0] = v4;
  v9[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
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

  logDuration = [(PLBBMavHwRfWCDMALogMsg *)self logDuration];
  [entryCopy setObject:logDuration forKeyedSubscript:@"LogDuration"];

  sCEqStatCnt = [(PLBBMavHwRfWCDMALogMsg *)self SCEqStatCnt];
  [entryCopy setObject:sCEqStatCnt forKeyedSubscript:@"SCEqTypeDuration"];

  dCEqStatCnt = [(PLBBMavHwRfWCDMALogMsg *)self DCEqStatCnt];
  [entryCopy setObject:dCEqStatCnt forKeyedSubscript:@"DCEqTypeDuration"];

  sCQsetEqStatCnt = [(PLBBMavHwRfWCDMALogMsg *)self SCQsetEqStatCnt];
  [entryCopy setObject:sCQsetEqStatCnt forKeyedSubscript:@"SCQSetNumCell"];

  dCQsetEqStatCnt = [(PLBBMavHwRfWCDMALogMsg *)self DCQsetEqStatCnt];
  [entryCopy setObject:dCQsetEqStatCnt forKeyedSubscript:@"DCQSetNumCell"];

  durInCarrierMode = [(PLBBMavHwRfWCDMALogMsg *)self DurInCarrierMode];
  [entryCopy setObject:durInCarrierMode forKeyedSubscript:@"TimeInCarrierMode"];

  rABModeCnt = [(PLBBMavHwRfWCDMALogMsg *)self RABModeCnt];
  [entryCopy setObject:rABModeCnt forKeyedSubscript:@"DurationInRabMode"];

  txPwrBucket = [(PLBBMavHwRfWCDMALogMsg *)self TxPwrBucket];
  [entryCopy setObject:txPwrBucket forKeyedSubscript:@"TxPwrBktArr"];

  rABTypeCnt = [(PLBBMavHwRfWCDMALogMsg *)self RABTypeCnt];
  [entryCopy setObject:rABTypeCnt forKeyedSubscript:@"DurationInPsRabType"];

  fetCnt = [(PLBBMavHwRfWCDMALogMsg *)self fetCnt];
  [entryCopy setObject:fetCnt forKeyedSubscript:@"FetCnt"];

  cpcRxOnCnt = [(PLBBMavHwRfWCDMALogMsg *)self cpcRxOnCnt];
  [entryCopy setObject:cpcRxOnCnt forKeyedSubscript:@"CPCRxOnCnt"];

  cpcRxTxOffCnt = [(PLBBMavHwRfWCDMALogMsg *)self cpcRxTxOffCnt];
  [entryCopy setObject:cpcRxTxOffCnt forKeyedSubscript:@"CPCRxTxOffCnt"];

  cpcTimeCnt = [(PLBBMavHwRfWCDMALogMsg *)self cpcTimeCnt];
  [entryCopy setObject:cpcTimeCnt forKeyedSubscript:@"CPCTimeCnt"];

  cpcEnergy = [(PLBBMavHwRfWCDMALogMsg *)self cpcEnergy];
  [entryCopy setObject:cpcEnergy forKeyedSubscript:@"CPCEnergy"];
}

@end