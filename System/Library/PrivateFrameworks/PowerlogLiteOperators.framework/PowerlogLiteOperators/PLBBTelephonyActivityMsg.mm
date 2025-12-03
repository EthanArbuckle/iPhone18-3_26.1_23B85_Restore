@interface PLBBTelephonyActivityMsg
+ (id)entryEventPointDefinitionTelephonyActivity;
- (void)logPointIntervalTelephonyActivity;
- (void)logPointIntervalTelephonyActivityAirplaneModeChange;
- (void)refreshTelephonyActivity;
- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type;
@end

@implementation PLBBTelephonyActivityMsg

- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type
{
  v39 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  nameCopy = name;
  typeCopy = type;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__PLBBTelephonyActivityMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F4CA0 != -1)
    {
      dispatch_once(&qword_2811F4CA0, block);
    }

    if (_MergedGlobals_1_33 == 1)
    {
      v34 = typeCopy;
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBTelephonyActivityMsg sendAndLogPLEntry:withName:withType:]"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyActivityMsg.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyActivityMsg sendAndLogPLEntry:withName:withType:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:23];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      typeCopy = v34;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __64__PLBBTelephonyActivityMsg_sendAndLogPLEntry_withName_withType___block_invoke_17;
    v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v35[4] = v18;
    if (qword_2811F4CA8 != -1)
    {
      dispatch_once(&qword_2811F4CA8, v35);
    }

    if (byte_2811F4C99 == 1)
    {
      v19 = typeCopy;
      typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", nameCopy, typeCopy];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyActivityMsg.m"];
      lastPathComponent2 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyActivityMsg sendAndLogPLEntry:withName:withType:]"];
      [v21 logMessage:typeCopy fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:24];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = typeCopy;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      typeCopy = v19;
    }
  }

  agent = [(PLBBMsgRoot *)self agent];
  [agent logEntry:entryCopy];

  if ([MEMORY[0x277D3F208] isBasebandProto])
  {
    agent2 = [(PLBBMsgRoot *)self agent];
    dictionary = [entryCopy dictionary];
    entryDate = [entryCopy entryDate];
    [agent2 logForSubsystem:@"BasebandMetrics" category:@"TelephonyActivity" data:dictionary date:entryDate];
  }

  if ([MEMORY[0x277D3F208] isBasebandDale])
  {
    agent3 = [(PLBBMsgRoot *)self agent];
    dictionary2 = [entryCopy dictionary];
    entryDate2 = [entryCopy entryDate];
    [agent3 logForSubsystem:@"BasebandMetrics" category:@"TelephonyActivity" data:dictionary2 date:entryDate2];
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __64__PLBBTelephonyActivityMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_33 = result;
  return result;
}

uint64_t __64__PLBBTelephonyActivityMsg_sendAndLogPLEntry_withName_withType___block_invoke_17(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4C99 = result;
  return result;
}

+ (id)entryEventPointDefinitionTelephonyActivity
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v32[0] = *MEMORY[0x277D3F568];
  v32[1] = v2;
  v33[0] = &unk_282C1C488;
  v33[1] = MEMORY[0x277CBEC28];
  v32[2] = *MEMORY[0x277D3F548];
  v33[2] = @"refreshRequestHandler";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v35[0] = v29;
  v34[1] = *MEMORY[0x277D3F540];
  v30[0] = @"activeBand";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v31[0] = commonTypeDict_StringFormat;
  v30[1] = @"dataStatus";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v31[1] = commonTypeDict_StringFormat2;
  v30[2] = @"currentRat";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v31[2] = commonTypeDict_StringFormat3;
  v30[3] = @"preferredRat";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v31[3] = commonTypeDict_StringFormat4;
  v30[4] = @"campedRat";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_StringFormat];
  v31[4] = commonTypeDict_StringFormat5;
  v30[5] = @"callStatus";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v31[5] = commonTypeDict_StringFormat6;
  v30[6] = @"airplaneMode";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v31[6] = commonTypeDict_StringFormat7;
  v30[7] = @"simStatus";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v31[7] = commonTypeDict_StringFormat8;
  v30[8] = @"subsId";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v31[8] = commonTypeDict_IntegerFormat;
  v30[9] = @"signalStrength";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v31[9] = commonTypeDict_IntegerFormat2;
  v30[10] = @"signalBars";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v31[10] = commonTypeDict_IntegerFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
  v35[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)refreshTelephonyActivity
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PLBBTelephonyActivityMsg_refreshTelephonyActivity__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F4CB0 != -1)
    {
      dispatch_once(&qword_2811F4CB0, block);
    }

    if (byte_2811F4C9A == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBTelephonyActivityMsg refreshTelephonyActivity]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyActivityMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyActivityMsg refreshTelephonyActivity]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:86];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__PLBBTelephonyActivityMsg_refreshTelephonyActivity__block_invoke_68;
    v18[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v18[4] = v10;
    if (qword_2811F4CB8 != -1)
    {
      dispatch_once(&qword_2811F4CB8, v18);
    }

    if (byte_2811F4C9B == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Refresh not implemented"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyActivityMsg.m"];
      lastPathComponent2 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyActivityMsg refreshTelephonyActivity]"];
      [v12 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v15 fromLineNumber:87];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PLBBTelephonyActivityMsg_refreshTelephonyActivity__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4C9A = result;
  return result;
}

uint64_t __52__PLBBTelephonyActivityMsg_refreshTelephonyActivity__block_invoke_68(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4C9B = result;
  return result;
}

- (void)logPointIntervalTelephonyActivityAirplaneModeChange
{
  v22 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __79__PLBBTelephonyActivityMsg_logPointIntervalTelephonyActivityAirplaneModeChange__block_invoke;
    v18 = &__block_descriptor_40_e5_v8__0lu32l8;
    v19 = v3;
    if (qword_2811F4CC0 != -1)
    {
      dispatch_once(&qword_2811F4CC0, &block);
    }

    if (byte_2811F4C9C == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBTelephonyActivityMsg logPointIntervalTelephonyActivityAirplaneModeChange]", block, v16, v17, v18, v19];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyActivityMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyActivityMsg logPointIntervalTelephonyActivityAirplaneModeChange]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:94];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D3F5E8];
  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"TelephonyActivity"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  [v12 setObject:0 forKeyedSubscript:@"activeBand"];
  [v12 setObject:0 forKeyedSubscript:@"dataStatus"];
  [v12 setObject:0 forKeyedSubscript:@"currentRat"];
  [v12 setObject:0 forKeyedSubscript:@"preferredRat"];
  [v12 setObject:0 forKeyedSubscript:@"campedRat"];
  [v12 setObject:0 forKeyedSubscript:@"callStatus"];
  airplaneMode = [(PLBBTelephonyActivityMsg *)self airplaneMode];
  [v12 setObject:airplaneMode forKeyedSubscript:@"airplaneMode"];

  [v12 setObject:0 forKeyedSubscript:@"simStatus"];
  [v12 setObject:0 forKeyedSubscript:@"signalStrength"];
  [v12 setObject:0 forKeyedSubscript:@"signalBars"];
  [(PLBBTelephonyActivityMsg *)self sendAndLogPLEntry:v12 withName:@"TelephonyActivity" withType:v10];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __79__PLBBTelephonyActivityMsg_logPointIntervalTelephonyActivityAirplaneModeChange__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4C9C = result;
  return result;
}

- (void)logPointIntervalTelephonyActivity
{
  v31 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __61__PLBBTelephonyActivityMsg_logPointIntervalTelephonyActivity__block_invoke;
    v27 = &__block_descriptor_40_e5_v8__0lu32l8;
    v28 = v3;
    if (qword_2811F4CC8 != -1)
    {
      dispatch_once(&qword_2811F4CC8, &block);
    }

    if (byte_2811F4C9D == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBTelephonyActivityMsg logPointIntervalTelephonyActivity]", block, v25, v26, v27, v28];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyActivityMsg.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyActivityMsg logPointIntervalTelephonyActivity]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:118];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D3F5E8];
  v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"TelephonyActivity"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  activeBand = [(PLBBTelephonyActivityMsg *)self activeBand];
  [v12 setObject:activeBand forKeyedSubscript:@"activeBand"];

  dataStatus = [(PLBBTelephonyActivityMsg *)self dataStatus];
  [v12 setObject:dataStatus forKeyedSubscript:@"dataStatus"];

  currentRat = [(PLBBTelephonyActivityMsg *)self currentRat];
  [v12 setObject:currentRat forKeyedSubscript:@"currentRat"];

  preferredRat = [(PLBBTelephonyActivityMsg *)self preferredRat];
  [v12 setObject:preferredRat forKeyedSubscript:@"preferredRat"];

  campedRat = [(PLBBTelephonyActivityMsg *)self campedRat];
  [v12 setObject:campedRat forKeyedSubscript:@"campedRat"];

  callStatus = [(PLBBTelephonyActivityMsg *)self callStatus];
  [v12 setObject:callStatus forKeyedSubscript:@"callStatus"];

  airplaneMode = [(PLBBTelephonyActivityMsg *)self airplaneMode];
  [v12 setObject:airplaneMode forKeyedSubscript:@"airplaneMode"];

  simStatus = [(PLBBTelephonyActivityMsg *)self simStatus];
  [v12 setObject:simStatus forKeyedSubscript:@"simStatus"];

  signalStrength = [(PLBBTelephonyActivityMsg *)self signalStrength];
  [v12 setObject:signalStrength forKeyedSubscript:@"signalStrength"];

  signalBars = [(PLBBTelephonyActivityMsg *)self signalBars];
  [v12 setObject:signalBars forKeyedSubscript:@"signalBars"];

  [(PLBBTelephonyActivityMsg *)self sendAndLogPLEntry:v12 withName:@"TelephonyActivity" withType:v10];
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __61__PLBBTelephonyActivityMsg_logPointIntervalTelephonyActivity__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4C9D = result;
  return result;
}

@end