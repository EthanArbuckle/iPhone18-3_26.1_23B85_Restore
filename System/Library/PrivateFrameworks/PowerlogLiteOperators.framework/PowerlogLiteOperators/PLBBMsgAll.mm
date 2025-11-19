@interface PLBBMsgAll
+ (id)entryEventNoneBBMsgAll;
- (void)logEventNoneBBMsgAll;
- (void)refreshBBMsgAll;
- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5;
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
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat];
  v20[0] = v16;
  v19[1] = @"Error";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v20[1] = v5;
  v19[2] = @"Type";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v20[2] = v7;
  v19[3] = @"SeqNum";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v20[3] = v9;
  v19[4] = @"BBDate";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_DateFormat];
  v20[4] = v11;
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
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgAll refreshBBMsgAll]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:58];

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
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgAll logEventNoneBBMsgAll]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:65];

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

- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
      v40 = v10;
      v41 = v9;
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBMsgAll sendAndLogPLEntry:withName:withType:]"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgAll.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgAll sendAndLogPLEntry:withName:withType:]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:81];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v10 = v40;
      v9 = v41;
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
      v19 = v10;
      v20 = v9;
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", v9, v10];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBMsgAll.m"];
      v24 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBMsgAll sendAndLogPLEntry:withName:withType:]"];
      [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:82];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = v21;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v20;
      v10 = v19;
    }
  }

  v27 = [(PLBBMsgAll *)self payload];
  [v8 setObject:v27 forKeyedSubscript:@"Payload"];

  v28 = [(PLBBMsgRoot *)self msgType];
  [v8 setObject:v28 forKeyedSubscript:@"Type"];

  v29 = [(PLBBMsgAll *)self seqNum];
  [v8 setObject:v29 forKeyedSubscript:@"SeqNum"];

  v30 = [(PLBBMsgAll *)self bbDate];
  [v8 setObject:v30 forKeyedSubscript:@"BBDate"];

  v31 = [(PLBBMsgAll *)self error];
  [v8 setObject:v31 forKeyedSubscript:@"Error"];

  v32 = [(PLBBMsgAll *)self bbDate];

  if (v32)
  {
    v33 = [(PLBBMsgAll *)self bbDate];
    v34 = [v33 convertFromBasebandToMonotonic];
    [v8 setEntryDate:v34];
  }

  if ([MEMORY[0x277D3F208] isBasebandProto])
  {
    v35 = [(PLBBMsgRoot *)self agent];
    v36 = [v8 dictionary];
    v37 = [v8 entryDate];
    [v35 logForSubsystem:@"BasebandMetrics" category:@"MessageAll" data:v36 date:v37];
  }

  v38 = [(PLBBMsgRoot *)self agent];
  [v38 logEntry:v8];

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