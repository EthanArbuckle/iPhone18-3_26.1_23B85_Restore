@interface PLBBTelephonyActivityMsg
+ (id)entryEventPointDefinitionTelephonyActivity;
- (void)logPointIntervalTelephonyActivity;
- (void)logPointIntervalTelephonyActivityAirplaneModeChange;
- (void)refreshTelephonyActivity;
- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5;
@end

@implementation PLBBTelephonyActivityMsg

- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
      v34 = v10;
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBTelephonyActivityMsg sendAndLogPLEntry:withName:withType:]"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyActivityMsg.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyActivityMsg sendAndLogPLEntry:withName:withType:]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:23];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v10 = v34;
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
      v19 = v10;
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", v9, v10];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyActivityMsg.m"];
      v23 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyActivityMsg sendAndLogPLEntry:withName:withType:]"];
      [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:24];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v38 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v10 = v19;
    }
  }

  v26 = [(PLBBMsgRoot *)self agent];
  [v26 logEntry:v8];

  if ([MEMORY[0x277D3F208] isBasebandProto])
  {
    v27 = [(PLBBMsgRoot *)self agent];
    v28 = [v8 dictionary];
    v29 = [v8 entryDate];
    [v27 logForSubsystem:@"BasebandMetrics" category:@"TelephonyActivity" data:v28 date:v29];
  }

  if ([MEMORY[0x277D3F208] isBasebandDale])
  {
    v30 = [(PLBBMsgRoot *)self agent];
    v31 = [v8 dictionary];
    v32 = [v8 entryDate];
    [v30 logForSubsystem:@"BasebandMetrics" category:@"TelephonyActivity" data:v31 date:v32];
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
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_StringFormat];
  v31[0] = v27;
  v30[1] = @"dataStatus";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_StringFormat];
  v31[1] = v25;
  v30[2] = @"currentRat";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_StringFormat];
  v31[2] = v23;
  v30[3] = @"preferredRat";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat];
  v31[3] = v21;
  v30[4] = @"campedRat";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_StringFormat];
  v31[4] = v19;
  v30[5] = @"callStatus";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat];
  v31[5] = v17;
  v30[6] = @"airplaneMode";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v31[6] = v15;
  v30[7] = @"simStatus";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v31[7] = v4;
  v30[8] = @"subsId";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v31[8] = v6;
  v30[9] = @"signalStrength";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v31[9] = v8;
  v30[10] = @"signalBars";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v31[10] = v10;
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
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyActivityMsg refreshTelephonyActivity]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:86];

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
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyActivityMsg refreshTelephonyActivity]"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:87];

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
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyActivityMsg logPointIntervalTelephonyActivityAirplaneModeChange]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:94];

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
  v13 = [(PLBBTelephonyActivityMsg *)self airplaneMode];
  [v12 setObject:v13 forKeyedSubscript:@"airplaneMode"];

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
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyActivityMsg logPointIntervalTelephonyActivity]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:118];

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
  v13 = [(PLBBTelephonyActivityMsg *)self activeBand];
  [v12 setObject:v13 forKeyedSubscript:@"activeBand"];

  v14 = [(PLBBTelephonyActivityMsg *)self dataStatus];
  [v12 setObject:v14 forKeyedSubscript:@"dataStatus"];

  v15 = [(PLBBTelephonyActivityMsg *)self currentRat];
  [v12 setObject:v15 forKeyedSubscript:@"currentRat"];

  v16 = [(PLBBTelephonyActivityMsg *)self preferredRat];
  [v12 setObject:v16 forKeyedSubscript:@"preferredRat"];

  v17 = [(PLBBTelephonyActivityMsg *)self campedRat];
  [v12 setObject:v17 forKeyedSubscript:@"campedRat"];

  v18 = [(PLBBTelephonyActivityMsg *)self callStatus];
  [v12 setObject:v18 forKeyedSubscript:@"callStatus"];

  v19 = [(PLBBTelephonyActivityMsg *)self airplaneMode];
  [v12 setObject:v19 forKeyedSubscript:@"airplaneMode"];

  v20 = [(PLBBTelephonyActivityMsg *)self simStatus];
  [v12 setObject:v20 forKeyedSubscript:@"simStatus"];

  v21 = [(PLBBTelephonyActivityMsg *)self signalStrength];
  [v12 setObject:v21 forKeyedSubscript:@"signalStrength"];

  v22 = [(PLBBTelephonyActivityMsg *)self signalBars];
  [v12 setObject:v22 forKeyedSubscript:@"signalBars"];

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