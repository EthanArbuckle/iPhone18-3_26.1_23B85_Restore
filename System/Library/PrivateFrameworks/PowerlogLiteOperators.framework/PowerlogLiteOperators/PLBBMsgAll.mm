@interface PLBBMsgAll
+ (id)entryEventNoneBBMsgAll;
- (void)logEventNoneBBMsgAll;
- (void)refreshBBMsgAll;
- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type;
@end

@implementation PLBBMsgAll

+ (id)entryEventNoneBBMsgAll
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v3 = *MEMORY[0x277D3F548];
  v21[2] = *MEMORY[0x277D3F508];
  v21[3] = v3;
  v22[0] = &unk_282C1BD88;
  v22[1] = MEMORY[0x277CBEC28];
  v22[2] = MEMORY[0x277CBEC28];
  v22[3] = @"refreshRequestHandler";
  v21[4] = *MEMORY[0x277D3F558];
  v22[4] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"Payload";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v20[0] = commonTypeDict_StringFormat;
  v19[1] = @"Error";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v20[1] = commonTypeDict_StringFormat2;
  v19[2] = @"Type";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v20[2] = commonTypeDict_IntegerFormat;
  v19[3] = @"SeqNum";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v20[3] = commonTypeDict_IntegerFormat2;
  v19[4] = @"BBDate";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_DateFormat = [mEMORY[0x277D3F198]5 commonTypeDict_DateFormat];
  v20[4] = commonTypeDict_DateFormat;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v24[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)refreshBBMsgAll
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __29__PLBBMsgAll_refreshBBMsgAll__block_invoke;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v3;
    if (qword_2811F3FB8 != -1)
    {
      dispatch_once(&qword_2811F3FB8, &block);
    }

    if (_MergedGlobals_1_10 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgAll refreshBBMsgAll]", block, v12, v13, v14, v15];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgAll.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgAll refreshBBMsgAll]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:58];

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

uint64_t __29__PLBBMsgAll_refreshBBMsgAll__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_10 = result;
  return result;
}

- (void)logEventNoneBBMsgAll
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __34__PLBBMsgAll_logEventNoneBBMsgAll__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v3;
    if (qword_2811F3FC0 != -1)
    {
      dispatch_once(&qword_2811F3FC0, &block);
    }

    if (byte_2811F3FB1 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgAll logEventNoneBBMsgAll]", block, v15, v16, v17, v18];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgAll.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgAll logEventNoneBBMsgAll]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:65];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D3F5E0];
  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"BBMsgAll"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [(PLBBMsgAll *)self sendAndLogPLEntry:v12 withName:@"BBMsgAll" withType:v10];

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __34__PLBBMsgAll_logEventNoneBBMsgAll__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3FB1 = result;
  return result;
}

- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type
{
  v46 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  nameCopy = name;
  typeCopy = type;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PLBBMsgAll_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F3FC8 != -1)
    {
      dispatch_once(&qword_2811F3FC8, block);
    }

    if (byte_2811F3FB2 == 1)
    {
      v40 = typeCopy;
      v41 = nameCopy;
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgAll sendAndLogPLEntry:withName:withType:]"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgAll.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgAll sendAndLogPLEntry:withName:withType:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:81];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      typeCopy = v40;
      nameCopy = v41;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __50__PLBBMsgAll_sendAndLogPLEntry_withName_withType___block_invoke_32;
    v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v42[4] = v18;
    if (qword_2811F3FD0 != -1)
    {
      dispatch_once(&qword_2811F3FD0, v42);
    }

    if (byte_2811F3FB3 == 1)
    {
      v19 = typeCopy;
      v20 = nameCopy;
      typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", nameCopy, typeCopy];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgAll.m"];
      lastPathComponent2 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgAll sendAndLogPLEntry:withName:withType:]"];
      [v22 logMessage:typeCopy fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:82];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = typeCopy;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v20;
      typeCopy = v19;
    }
  }

  payload = [(PLBBMsgAll *)self payload];
  [entryCopy setObject:payload forKeyedSubscript:@"Payload"];

  msgType = [(PLBBMsgRoot *)self msgType];
  [entryCopy setObject:msgType forKeyedSubscript:@"Type"];

  seqNum = [(PLBBMsgAll *)self seqNum];
  [entryCopy setObject:seqNum forKeyedSubscript:@"SeqNum"];

  bbDate = [(PLBBMsgAll *)self bbDate];
  [entryCopy setObject:bbDate forKeyedSubscript:@"BBDate"];

  error = [(PLBBMsgAll *)self error];
  [entryCopy setObject:error forKeyedSubscript:@"Error"];

  bbDate2 = [(PLBBMsgAll *)self bbDate];

  if (bbDate2)
  {
    bbDate3 = [(PLBBMsgAll *)self bbDate];
    convertFromBasebandToMonotonic = [bbDate3 convertFromBasebandToMonotonic];
    [entryCopy setEntryDate:convertFromBasebandToMonotonic];
  }

  if ([MEMORY[0x277D3F208] isBasebandProto])
  {
    agent = [(PLBBMsgRoot *)self agent];
    dictionary = [entryCopy dictionary];
    entryDate = [entryCopy entryDate];
    [agent logForSubsystem:@"BasebandMetrics" category:@"MessageAll" data:dictionary date:entryDate];
  }

  agent2 = [(PLBBMsgRoot *)self agent];
  [agent2 logEntry:entryCopy];

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PLBBMsgAll_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3FB2 = result;
  return result;
}

uint64_t __50__PLBBMsgAll_sendAndLogPLEntry_withName_withType___block_invoke_32(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F3FB3 = result;
  return result;
}

@end