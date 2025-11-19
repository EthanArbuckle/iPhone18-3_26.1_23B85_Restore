@interface PLBBTelephonyRegMsg
+ (id)bbEuLogMsgNameTelephonyReg;
- (PLBBTelephonyRegMsg)init;
- (id)humanReadableDataIndicator:(id)a3;
- (id)humanReadableRegistrationStatus:(id)a3;
- (void)fillPLEntryAndSend:(id)a3;
- (void)logEventPointTelephonyRegistration;
- (void)logEventPointTelephonyRegistrationAtInit;
- (void)processTelReg;
- (void)refreshTelephonyReg;
- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5;
- (void)setAttrCellID:(id)a3;
- (void)setAttrDataActive:(id)a3;
- (void)setAttrDataAttached:(id)a3;
- (void)setAttrDataIndicator:(id)a3;
- (void)setAttrHomeNetwork:(id)a3;
- (void)setAttrLac:(id)a3;
- (void)setAttrOperatorName:(id)a3;
- (void)setAttrRegistrationStatus:(id)a3;
@end

@implementation PLBBTelephonyRegMsg

- (PLBBTelephonyRegMsg)init
{
  v3.receiver = self;
  v3.super_class = PLBBTelephonyRegMsg;
  result = [(PLBBTelephonyRegMsg *)&v3 init];
  if (result)
  {
    result->_changed = 0;
  }

  return result;
}

- (void)refreshTelephonyReg
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLBBTelephonyRegMsg_refreshTelephonyReg__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6AB8 != -1)
    {
      dispatch_once(&qword_2811F6AB8, block);
    }

    if (_MergedGlobals_1_61 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBTelephonyRegMsg refreshTelephonyReg]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyRegMsg.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg refreshTelephonyReg]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:37];

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
    v18[2] = __42__PLBBTelephonyRegMsg_refreshTelephonyReg__block_invoke_17;
    v18[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v18[4] = v10;
    if (qword_2811F6AC0 != -1)
    {
      dispatch_once(&qword_2811F6AC0, v18);
    }

    if (byte_2811F6AB1 == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Refresh not implemented"];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyRegMsg.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg refreshTelephonyReg]"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:38];

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

uint64_t __42__PLBBTelephonyRegMsg_refreshTelephonyReg__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_61 = result;
  return result;
}

uint64_t __42__PLBBTelephonyRegMsg_refreshTelephonyReg__block_invoke_17(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AB1 = result;
  return result;
}

+ (id)bbEuLogMsgNameTelephonyReg
{
  v33[2] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_282C1CD38;
  v31[1] = MEMORY[0x277CBEC28];
  v30[2] = *MEMORY[0x277D3F548];
  v31[2] = @"refreshRequestHandler";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v33[0] = v27;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"operator";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_StringFormat];
  v29[0] = v25;
  v28[1] = @"lac";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v29[1] = v23;
  v28[2] = @"cellId";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v29[2] = v21;
  v28[3] = @"home";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_BoolFormat];
  v29[3] = v19;
  v28[4] = @"dataAttached";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_BoolFormat];
  v29[4] = v17;
  v28[5] = @"dataActive";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_BoolFormat];
  v29[5] = v15;
  v28[6] = @"dataInd";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v29[6] = v4;
  v28[7] = @"status";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v29[7] = v6;
  v28[8] = @"serviceOpt";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v29[8] = v8;
  v28[9] = @"subsId";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v29[9] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  v33[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)logEventPointTelephonyRegistrationAtInit
{
  v30 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PLBBTelephonyRegMsg_logEventPointTelephonyRegistrationAtInit__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6AC8 != -1)
    {
      dispatch_once(&qword_2811F6AC8, block);
    }

    if (byte_2811F6AB2 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBTelephonyRegMsg logEventPointTelephonyRegistrationAtInit]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyRegMsg.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg logEventPointTelephonyRegistrationAtInit]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:69];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLBBTelephonyRegMsg *)self setAttrCellID:0];
  [(PLBBTelephonyRegMsg *)self setAttrLac:0];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:CTRegistrationGetDataAttached() != 0];
  [(PLBBTelephonyRegMsg *)self setAttrDataAttached:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:CTRegistrationGetDataContextActive() != 0];
  [(PLBBTelephonyRegMsg *)self setAttrDataActive:v11];

  v12 = [(PLBBTelephonyRegMsg *)self humanReadableDataIndicator:CTRegistrationGetDataIndicator()];
  [(PLBBTelephonyRegMsg *)self setAttrDataIndicator:v12];

  [(PLBBTelephonyRegMsg *)self setAttrHomeNetwork:0];
  v13 = [(PLBBTelephonyRegMsg *)self humanReadableRegistrationStatus:CTRegistrationGetStatus()];
  [(PLBBTelephonyRegMsg *)self setAttrRegistrationStatus:v13];

  v14 = *MEMORY[0x277CBECE8];
  v15 = CTRegistrationCopyOperatorName();
  [(PLBBTelephonyRegMsg *)self setAttrOperatorName:v15];
  [(PLBBTelephonyRegMsg *)self setChanged:1];
  v16 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"TelephonyRegistration"];
  v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __63__PLBBTelephonyRegMsg_logEventPointTelephonyRegistrationAtInit__block_invoke_60;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v18;
    if (qword_2811F6AD0 != -1)
    {
      dispatch_once(&qword_2811F6AD0, v26);
    }

    if (byte_2811F6AB3 == 1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Send Telephony Registration msgs at Init"];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyRegMsg.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg logEventPointTelephonyRegistrationAtInit]"];
      [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:85];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = v19;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLBBTelephonyRegMsg *)self fillPLEntryAndSend:v17];

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __63__PLBBTelephonyRegMsg_logEventPointTelephonyRegistrationAtInit__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AB2 = result;
  return result;
}

uint64_t __63__PLBBTelephonyRegMsg_logEventPointTelephonyRegistrationAtInit__block_invoke_60(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AB3 = result;
  return result;
}

- (void)logEventPointTelephonyRegistration
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __57__PLBBTelephonyRegMsg_logEventPointTelephonyRegistration__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v3;
    if (qword_2811F6AD8 != -1)
    {
      dispatch_once(&qword_2811F6AD8, &block);
    }

    if (byte_2811F6AB4 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBTelephonyRegMsg logEventPointTelephonyRegistration]", block, v15, v16, v17, v18];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyRegMsg.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg logEventPointTelephonyRegistration]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:92];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLBBTelephonyRegMsg *)self telRegInfo];

  if (v10)
  {
    v11 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"TelephonyRegistration"];
    v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
    [(PLBBTelephonyRegMsg *)self processTelReg];
    [(PLBBTelephonyRegMsg *)self fillPLEntryAndSend:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __57__PLBBTelephonyRegMsg_logEventPointTelephonyRegistration__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AB4 = result;
  return result;
}

- (void)fillPLEntryAndSend:(id)a3
{
  v13 = a3;
  if ([(PLBBTelephonyRegMsg *)self changed])
  {
    v4 = [(PLBBTelephonyRegMsg *)self operatorName];
    [v13 setObject:v4 forKeyedSubscript:@"operator"];

    v5 = [(PLBBTelephonyRegMsg *)self lac];
    [v13 setObject:v5 forKeyedSubscript:@"lac"];

    v6 = [(PLBBTelephonyRegMsg *)self cellID];
    [v13 setObject:v6 forKeyedSubscript:@"cellId"];

    v7 = [(PLBBTelephonyRegMsg *)self homeNetwork];
    [v13 setObject:v7 forKeyedSubscript:@"home"];

    v8 = [(PLBBTelephonyRegMsg *)self dataAttached];
    [v13 setObject:v8 forKeyedSubscript:@"dataAttached"];

    v9 = [(PLBBTelephonyRegMsg *)self dataActive];
    [v13 setObject:v9 forKeyedSubscript:@"dataActive"];

    v10 = [(PLBBTelephonyRegMsg *)self dataIndicator];
    [v13 setObject:v10 forKeyedSubscript:@"dataInd"];

    v11 = [(PLBBTelephonyRegMsg *)self registrationStatus];
    [v13 setObject:v11 forKeyedSubscript:@"status"];

    [(PLBBTelephonyRegMsg *)self sendAndLogPLEntry:v13 withName:@"TelephonyRegistration" withType:*MEMORY[0x277D3F5D0]];
    if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
    {
      v12 = [(PLBasebandMessage *)self agent];
      [v12 createOOSAccountingEvent:v13];
    }

    [(PLBBTelephonyRegMsg *)self setChanged:0];
  }
}

- (void)processTelReg
{
  v3 = [(PLBBTelephonyRegMsg *)self telRegInfo];
  v4 = [v3 objectForKey:@"kCTRegistrationCellChangedNotification"];
  v5 = [v4 isEqualToString:@"Valid"];

  if (v5)
  {
    v6 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v7 = [v6 objectForKey:*MEMORY[0x277CC3BF0]];
    [(PLBBTelephonyRegMsg *)self setCellID:v7];

    v8 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v9 = *MEMORY[0x277CC3CC0];
    v10 = [v8 objectForKey:*MEMORY[0x277CC3CC0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v12 = [v11 objectForKey:v9];

      if (!v12)
      {
        goto LABEL_7;
      }

      [(PLBBTelephonyRegMsg *)self setAttrLac:v12];
      v8 = v12;
    }

    else
    {
    }
  }

LABEL_7:
  v13 = [(PLBBTelephonyRegMsg *)self telRegInfo];
  v14 = [v13 objectForKey:@"kCTRegistrationStatusChangedNotification"];
  v15 = [v14 isEqualToString:@"Valid"];

  if (v15)
  {
    v16 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v17 = *MEMORY[0x277CC3E40];
    v18 = [v16 objectForKey:*MEMORY[0x277CC3E40]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v20 = [v19 objectForKey:v17];
    }

    else
    {
      v20 = 0;
    }

    v21 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v22 = *MEMORY[0x277CC3CB8];
    v23 = [v21 objectForKey:*MEMORY[0x277CC3CB8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v25 = [v24 objectForKey:v22];
    }

    else
    {
      v25 = 0;
    }

    if (v20)
    {
      v26 = [(PLBBTelephonyRegMsg *)self humanReadableRegistrationStatus:v20];
      [(PLBBTelephonyRegMsg *)self setAttrRegistrationStatus:v26];
    }

    if (v25)
    {
      [(PLBBTelephonyRegMsg *)self setAttrHomeNetwork:v25];
    }
  }

  v27 = [(PLBBTelephonyRegMsg *)self telRegInfo];
  v28 = [v27 objectForKey:@"kCTRegistrationDataStatusChangedNotification"];
  v29 = [v28 isEqualToString:@"Valid"];

  if (v29)
  {
    v30 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v31 = *MEMORY[0x277CC3C28];
    v32 = [v30 objectForKey:*MEMORY[0x277CC3C28]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v34 = [v33 objectForKey:v31];
    }

    else
    {
      v34 = 0;
    }

    v35 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v36 = *MEMORY[0x277CC3C20];
    v37 = [v35 objectForKey:*MEMORY[0x277CC3C20]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v39 = [v38 objectForKey:v36];
    }

    else
    {
      v39 = 0;
    }

    v40 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v41 = *MEMORY[0x277CC3C48];
    v42 = [v40 objectForKey:*MEMORY[0x277CC3C48]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v44 = [v43 objectForKey:v41];
    }

    else
    {
      v44 = 0;
    }

    if (v34)
    {
      [(PLBBTelephonyRegMsg *)self setAttrDataAttached:v34];
    }

    if (v39)
    {
      [(PLBBTelephonyRegMsg *)self setAttrDataActive:v39];
    }

    if (v44)
    {
      v45 = [(PLBBTelephonyRegMsg *)self humanReadableDataIndicator:v44];
      [(PLBBTelephonyRegMsg *)self setAttrDataIndicator:v45];
    }
  }

  v46 = [(PLBBTelephonyRegMsg *)self telRegInfo];
  v47 = [v46 objectForKey:@"kCTRegistrationOperatorNameChangedNotification"];
  v48 = [v47 isEqualToString:@"Valid"];

  if (v48)
  {
    v49 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v50 = [v49 objectForKey:*MEMORY[0x277CC3D50]];
    [(PLBBTelephonyRegMsg *)self setAttrOperatorName:v50];
  }

  else
  {
    v51 = *MEMORY[0x277CBECE8];
    v49 = CTRegistrationCopyOperatorName();
    [(PLBBTelephonyRegMsg *)self setAttrOperatorName:v49];
  }

  v52 = [(PLBBTelephonyRegMsg *)self telRegInfo];
  v53 = [v52 objectForKey:@"kCTTimeUpdateNotification"];
  v54 = [v53 isEqualToString:@"Valid"];

  if (v54)
  {
    v55 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v56 = *MEMORY[0x277CC4310];
    v61 = v55;
    v57 = [v55 objectForKey:*MEMORY[0x277CC4310]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v59 = [v58 objectForKey:v56];

      if (!v59)
      {
        return;
      }

      [(PLBBTelephonyRegMsg *)self setTimeUpdate:v59];
      v60 = v59;
    }

    else
    {

      v60 = v61;
    }
  }
}

- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PLBBTelephonyRegMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F6AE0 != -1)
    {
      dispatch_once(&qword_2811F6AE0, block);
    }

    if (byte_2811F6AB5 == 1)
    {
      v35 = v10;
      v36 = v9;
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBTelephonyRegMsg sendAndLogPLEntry:withName:withType:]"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyRegMsg.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg sendAndLogPLEntry:withName:withType:]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:192];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v10 = v35;
      v9 = v36;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __59__PLBBTelephonyRegMsg_sendAndLogPLEntry_withName_withType___block_invoke_86;
    v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v37[4] = v18;
    if (qword_2811F6AE8 != -1)
    {
      dispatch_once(&qword_2811F6AE8, v37);
    }

    if (byte_2811F6AB6 == 1)
    {
      v19 = v10;
      v20 = v9;
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", v9, v10];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyRegMsg.m"];
      v24 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg sendAndLogPLEntry:withName:withType:]"];
      [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:193];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = v21;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v20;
      v10 = v19;
    }
  }

  if ([MEMORY[0x277D3F208] isBasebandProto])
  {
    v27 = [(PLBasebandMessage *)self agent];
    v28 = [v8 dictionary];
    v29 = [v8 entryDate];
    [v27 logForSubsystem:@"BasebandMetrics" category:@"TelephonyRegistration" data:v28 date:v29];
  }

  if ([MEMORY[0x277D3F208] isBasebandDale])
  {
    v30 = [(PLBasebandMessage *)self agent];
    v31 = [v8 dictionary];
    v32 = [v8 entryDate];
    [v30 logForSubsystem:@"BasebandMetrics" category:@"TelephonyRegistration" data:v31 date:v32];
  }

  v33 = [(PLBasebandMessage *)self agent];
  [v33 logEntry:v8];

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __59__PLBBTelephonyRegMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AB5 = result;
  return result;
}

uint64_t __59__PLBBTelephonyRegMsg_sendAndLogPLEntry_withName_withType___block_invoke_86(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6AB6 = result;
  return result;
}

- (void)setAttrCellID:(id)a3
{
  v6 = a3;
  v4 = [(PLBBTelephonyRegMsg *)self cellID];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setCellID:v6];
    if ([MEMORY[0x277D3F180] fullMode])
    {
      [(PLBBTelephonyRegMsg *)self setChanged:1];
    }
  }
}

- (void)setAttrLac:(id)a3
{
  v6 = a3;
  v4 = [(PLBBTelephonyRegMsg *)self lac];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setLac:v6];
    if ([MEMORY[0x277D3F180] fullMode])
    {
      [(PLBBTelephonyRegMsg *)self setChanged:1];
    }
  }
}

- (void)setAttrDataAttached:(id)a3
{
  v6 = a3;
  v4 = [(PLBBTelephonyRegMsg *)self dataAttached];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setDataAttached:v6];
    if ([MEMORY[0x277D3F180] fullMode])
    {
      [(PLBBTelephonyRegMsg *)self setChanged:1];
    }
  }
}

- (void)setAttrDataActive:(id)a3
{
  v6 = a3;
  v4 = [(PLBBTelephonyRegMsg *)self dataActive];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setDataActive:v6];
    if ([MEMORY[0x277D3F180] fullMode])
    {
      [(PLBBTelephonyRegMsg *)self setChanged:1];
    }
  }
}

- (void)setAttrDataIndicator:(id)a3
{
  v6 = a3;
  v4 = [(PLBBTelephonyRegMsg *)self dataIndicator];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setDataIndicator:v6];
    [(PLBBTelephonyRegMsg *)self setChanged:1];
  }
}

- (void)setAttrHomeNetwork:(id)a3
{
  v6 = a3;
  v4 = [(PLBBTelephonyRegMsg *)self homeNetwork];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setHomeNetwork:v6];
    if ([MEMORY[0x277D3F180] fullMode])
    {
      [(PLBBTelephonyRegMsg *)self setChanged:1];
    }
  }
}

- (void)setAttrRegistrationStatus:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v6 = CTRegistrationGetStatus();
  }

  v4 = [(PLBBTelephonyRegMsg *)self registrationStatus];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setRegistrationStatus:v6];
    [(PLBBTelephonyRegMsg *)self setChanged:1];
  }
}

- (void)setAttrOperatorName:(id)a3
{
  v8 = a3;
  if (([v8 isEqualToString:&stru_282B650A0] & 1) != 0 || !objc_msgSend(v8, "length"))
  {

    v8 = 0;
  }

  v4 = [(PLBBTelephonyRegMsg *)self operatorName];
  if ([v4 isEqual:v8])
  {
  }

  else
  {
    v5 = [(PLBBTelephonyRegMsg *)self operatorName];
    if ([v5 length])
    {

      v6 = v8;
    }

    else
    {
      v7 = [v8 length];

      v6 = v8;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    v8 = v6;
    [(PLBBTelephonyRegMsg *)self setOperatorName:v6];
    [(PLBBTelephonyRegMsg *)self setChanged:1];
  }

  v6 = v8;
LABEL_11:
}

- (id)humanReadableRegistrationStatus:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 substringFromIndex:{objc_msgSend(@"kCTRegistrationStatus", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)humanReadableDataIndicator:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 substringFromIndex:{objc_msgSend(@"kCTRegistrationDataIndicator", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end