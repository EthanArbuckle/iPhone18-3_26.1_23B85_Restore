@interface PLBBTelephonyRegMsg
+ (id)bbEuLogMsgNameTelephonyReg;
- (PLBBTelephonyRegMsg)init;
- (id)humanReadableDataIndicator:(id)indicator;
- (id)humanReadableRegistrationStatus:(id)status;
- (void)fillPLEntryAndSend:(id)send;
- (void)logEventPointTelephonyRegistration;
- (void)logEventPointTelephonyRegistrationAtInit;
- (void)processTelReg;
- (void)refreshTelephonyReg;
- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type;
- (void)setAttrCellID:(id)d;
- (void)setAttrDataActive:(id)active;
- (void)setAttrDataAttached:(id)attached;
- (void)setAttrDataIndicator:(id)indicator;
- (void)setAttrHomeNetwork:(id)network;
- (void)setAttrLac:(id)lac;
- (void)setAttrOperatorName:(id)name;
- (void)setAttrRegistrationStatus:(id)status;
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
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg refreshTelephonyReg]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:37];

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
      lastPathComponent2 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg refreshTelephonyReg]"];
      [v12 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v15 fromLineNumber:38];

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
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v29[0] = commonTypeDict_StringFormat;
  v28[1] = @"lac";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v29[1] = commonTypeDict_IntegerFormat;
  v28[2] = @"cellId";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v29[2] = commonTypeDict_IntegerFormat2;
  v28[3] = @"home";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]4 commonTypeDict_BoolFormat];
  v29[3] = commonTypeDict_BoolFormat;
  v28[4] = @"dataAttached";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_BoolFormat];
  v29[4] = commonTypeDict_BoolFormat2;
  v28[5] = @"dataActive";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]6 commonTypeDict_BoolFormat];
  v29[5] = commonTypeDict_BoolFormat3;
  v28[6] = @"dataInd";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]7 commonTypeDict_StringFormat];
  v29[6] = commonTypeDict_StringFormat2;
  v28[7] = @"status";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]8 commonTypeDict_StringFormat];
  v29[7] = commonTypeDict_StringFormat3;
  v28[8] = @"serviceOpt";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v29[8] = commonTypeDict_IntegerFormat3;
  v28[9] = @"subsId";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v29[9] = commonTypeDict_IntegerFormat4;
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
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg logEventPointTelephonyRegistrationAtInit]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:69];

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
      lastPathComponent2 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg logEventPointTelephonyRegistrationAtInit]"];
      [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:85];

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
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg logEventPointTelephonyRegistration]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:92];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  telRegInfo = [(PLBBTelephonyRegMsg *)self telRegInfo];

  if (telRegInfo)
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

- (void)fillPLEntryAndSend:(id)send
{
  sendCopy = send;
  if ([(PLBBTelephonyRegMsg *)self changed])
  {
    operatorName = [(PLBBTelephonyRegMsg *)self operatorName];
    [sendCopy setObject:operatorName forKeyedSubscript:@"operator"];

    v5 = [(PLBBTelephonyRegMsg *)self lac];
    [sendCopy setObject:v5 forKeyedSubscript:@"lac"];

    cellID = [(PLBBTelephonyRegMsg *)self cellID];
    [sendCopy setObject:cellID forKeyedSubscript:@"cellId"];

    homeNetwork = [(PLBBTelephonyRegMsg *)self homeNetwork];
    [sendCopy setObject:homeNetwork forKeyedSubscript:@"home"];

    dataAttached = [(PLBBTelephonyRegMsg *)self dataAttached];
    [sendCopy setObject:dataAttached forKeyedSubscript:@"dataAttached"];

    dataActive = [(PLBBTelephonyRegMsg *)self dataActive];
    [sendCopy setObject:dataActive forKeyedSubscript:@"dataActive"];

    dataIndicator = [(PLBBTelephonyRegMsg *)self dataIndicator];
    [sendCopy setObject:dataIndicator forKeyedSubscript:@"dataInd"];

    registrationStatus = [(PLBBTelephonyRegMsg *)self registrationStatus];
    [sendCopy setObject:registrationStatus forKeyedSubscript:@"status"];

    [(PLBBTelephonyRegMsg *)self sendAndLogPLEntry:sendCopy withName:@"TelephonyRegistration" withType:*MEMORY[0x277D3F5D0]];
    if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
    {
      agent = [(PLBasebandMessage *)self agent];
      [agent createOOSAccountingEvent:sendCopy];
    }

    [(PLBBTelephonyRegMsg *)self setChanged:0];
  }
}

- (void)processTelReg
{
  telRegInfo = [(PLBBTelephonyRegMsg *)self telRegInfo];
  v4 = [telRegInfo objectForKey:@"kCTRegistrationCellChangedNotification"];
  v5 = [v4 isEqualToString:@"Valid"];

  if (v5)
  {
    telRegInfo2 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v7 = [telRegInfo2 objectForKey:*MEMORY[0x277CC3BF0]];
    [(PLBBTelephonyRegMsg *)self setCellID:v7];

    telRegInfo3 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v9 = *MEMORY[0x277CC3CC0];
    v10 = [telRegInfo3 objectForKey:*MEMORY[0x277CC3CC0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      telRegInfo4 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v12 = [telRegInfo4 objectForKey:v9];

      if (!v12)
      {
        goto LABEL_7;
      }

      [(PLBBTelephonyRegMsg *)self setAttrLac:v12];
      telRegInfo3 = v12;
    }

    else
    {
    }
  }

LABEL_7:
  telRegInfo5 = [(PLBBTelephonyRegMsg *)self telRegInfo];
  v14 = [telRegInfo5 objectForKey:@"kCTRegistrationStatusChangedNotification"];
  v15 = [v14 isEqualToString:@"Valid"];

  if (v15)
  {
    telRegInfo6 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v17 = *MEMORY[0x277CC3E40];
    v18 = [telRegInfo6 objectForKey:*MEMORY[0x277CC3E40]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      telRegInfo7 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v20 = [telRegInfo7 objectForKey:v17];
    }

    else
    {
      v20 = 0;
    }

    telRegInfo8 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v22 = *MEMORY[0x277CC3CB8];
    v23 = [telRegInfo8 objectForKey:*MEMORY[0x277CC3CB8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      telRegInfo9 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v25 = [telRegInfo9 objectForKey:v22];
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

  telRegInfo10 = [(PLBBTelephonyRegMsg *)self telRegInfo];
  v28 = [telRegInfo10 objectForKey:@"kCTRegistrationDataStatusChangedNotification"];
  v29 = [v28 isEqualToString:@"Valid"];

  if (v29)
  {
    telRegInfo11 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v31 = *MEMORY[0x277CC3C28];
    v32 = [telRegInfo11 objectForKey:*MEMORY[0x277CC3C28]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      telRegInfo12 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v34 = [telRegInfo12 objectForKey:v31];
    }

    else
    {
      v34 = 0;
    }

    telRegInfo13 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v36 = *MEMORY[0x277CC3C20];
    v37 = [telRegInfo13 objectForKey:*MEMORY[0x277CC3C20]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      telRegInfo14 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v39 = [telRegInfo14 objectForKey:v36];
    }

    else
    {
      v39 = 0;
    }

    telRegInfo15 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v41 = *MEMORY[0x277CC3C48];
    v42 = [telRegInfo15 objectForKey:*MEMORY[0x277CC3C48]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      telRegInfo16 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v44 = [telRegInfo16 objectForKey:v41];
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

  telRegInfo17 = [(PLBBTelephonyRegMsg *)self telRegInfo];
  v47 = [telRegInfo17 objectForKey:@"kCTRegistrationOperatorNameChangedNotification"];
  v48 = [v47 isEqualToString:@"Valid"];

  if (v48)
  {
    telRegInfo18 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v50 = [telRegInfo18 objectForKey:*MEMORY[0x277CC3D50]];
    [(PLBBTelephonyRegMsg *)self setAttrOperatorName:v50];
  }

  else
  {
    v51 = *MEMORY[0x277CBECE8];
    telRegInfo18 = CTRegistrationCopyOperatorName();
    [(PLBBTelephonyRegMsg *)self setAttrOperatorName:telRegInfo18];
  }

  telRegInfo19 = [(PLBBTelephonyRegMsg *)self telRegInfo];
  v53 = [telRegInfo19 objectForKey:@"kCTTimeUpdateNotification"];
  v54 = [v53 isEqualToString:@"Valid"];

  if (v54)
  {
    telRegInfo20 = [(PLBBTelephonyRegMsg *)self telRegInfo];
    v56 = *MEMORY[0x277CC4310];
    v61 = telRegInfo20;
    v57 = [telRegInfo20 objectForKey:*MEMORY[0x277CC4310]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      telRegInfo21 = [(PLBBTelephonyRegMsg *)self telRegInfo];
      v59 = [telRegInfo21 objectForKey:v56];

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

- (void)sendAndLogPLEntry:(id)entry withName:(id)name withType:(id)type
{
  v41 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  nameCopy = name;
  typeCopy = type;
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
      v35 = typeCopy;
      v36 = nameCopy;
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBTelephonyRegMsg sendAndLogPLEntry:withName:withType:]"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyRegMsg.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg sendAndLogPLEntry:withName:withType:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:192];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      typeCopy = v35;
      nameCopy = v36;
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
      v19 = typeCopy;
      v20 = nameCopy;
      typeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Sending PLEntry: name=%@ type=%@", nameCopy, typeCopy];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBTelephonyRegMsg.m"];
      lastPathComponent2 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBTelephonyRegMsg sendAndLogPLEntry:withName:withType:]"];
      [v22 logMessage:typeCopy fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:193];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v40 = typeCopy;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      nameCopy = v20;
      typeCopy = v19;
    }
  }

  if ([MEMORY[0x277D3F208] isBasebandProto])
  {
    agent = [(PLBasebandMessage *)self agent];
    dictionary = [entryCopy dictionary];
    entryDate = [entryCopy entryDate];
    [agent logForSubsystem:@"BasebandMetrics" category:@"TelephonyRegistration" data:dictionary date:entryDate];
  }

  if ([MEMORY[0x277D3F208] isBasebandDale])
  {
    agent2 = [(PLBasebandMessage *)self agent];
    dictionary2 = [entryCopy dictionary];
    entryDate2 = [entryCopy entryDate];
    [agent2 logForSubsystem:@"BasebandMetrics" category:@"TelephonyRegistration" data:dictionary2 date:entryDate2];
  }

  agent3 = [(PLBasebandMessage *)self agent];
  [agent3 logEntry:entryCopy];

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

- (void)setAttrCellID:(id)d
{
  dCopy = d;
  cellID = [(PLBBTelephonyRegMsg *)self cellID];
  v5 = [cellID isEqual:dCopy];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setCellID:dCopy];
    if ([MEMORY[0x277D3F180] fullMode])
    {
      [(PLBBTelephonyRegMsg *)self setChanged:1];
    }
  }
}

- (void)setAttrLac:(id)lac
{
  lacCopy = lac;
  v4 = [(PLBBTelephonyRegMsg *)self lac];
  v5 = [v4 isEqual:lacCopy];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setLac:lacCopy];
    if ([MEMORY[0x277D3F180] fullMode])
    {
      [(PLBBTelephonyRegMsg *)self setChanged:1];
    }
  }
}

- (void)setAttrDataAttached:(id)attached
{
  attachedCopy = attached;
  dataAttached = [(PLBBTelephonyRegMsg *)self dataAttached];
  v5 = [dataAttached isEqual:attachedCopy];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setDataAttached:attachedCopy];
    if ([MEMORY[0x277D3F180] fullMode])
    {
      [(PLBBTelephonyRegMsg *)self setChanged:1];
    }
  }
}

- (void)setAttrDataActive:(id)active
{
  activeCopy = active;
  dataActive = [(PLBBTelephonyRegMsg *)self dataActive];
  v5 = [dataActive isEqual:activeCopy];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setDataActive:activeCopy];
    if ([MEMORY[0x277D3F180] fullMode])
    {
      [(PLBBTelephonyRegMsg *)self setChanged:1];
    }
  }
}

- (void)setAttrDataIndicator:(id)indicator
{
  indicatorCopy = indicator;
  dataIndicator = [(PLBBTelephonyRegMsg *)self dataIndicator];
  v5 = [dataIndicator isEqual:indicatorCopy];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setDataIndicator:indicatorCopy];
    [(PLBBTelephonyRegMsg *)self setChanged:1];
  }
}

- (void)setAttrHomeNetwork:(id)network
{
  networkCopy = network;
  homeNetwork = [(PLBBTelephonyRegMsg *)self homeNetwork];
  v5 = [homeNetwork isEqual:networkCopy];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setHomeNetwork:networkCopy];
    if ([MEMORY[0x277D3F180] fullMode])
    {
      [(PLBBTelephonyRegMsg *)self setChanged:1];
    }
  }
}

- (void)setAttrRegistrationStatus:(id)status
{
  statusCopy = status;
  if (!statusCopy)
  {
    statusCopy = CTRegistrationGetStatus();
  }

  registrationStatus = [(PLBBTelephonyRegMsg *)self registrationStatus];
  v5 = [registrationStatus isEqual:statusCopy];

  if ((v5 & 1) == 0)
  {
    [(PLBBTelephonyRegMsg *)self setRegistrationStatus:statusCopy];
    [(PLBBTelephonyRegMsg *)self setChanged:1];
  }
}

- (void)setAttrOperatorName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:&stru_282B650A0] & 1) != 0 || !objc_msgSend(nameCopy, "length"))
  {

    nameCopy = 0;
  }

  operatorName = [(PLBBTelephonyRegMsg *)self operatorName];
  if ([operatorName isEqual:nameCopy])
  {
  }

  else
  {
    operatorName2 = [(PLBBTelephonyRegMsg *)self operatorName];
    if ([operatorName2 length])
    {

      v6 = nameCopy;
    }

    else
    {
      v7 = [nameCopy length];

      v6 = nameCopy;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    nameCopy = v6;
    [(PLBBTelephonyRegMsg *)self setOperatorName:v6];
    [(PLBBTelephonyRegMsg *)self setChanged:1];
  }

  v6 = nameCopy;
LABEL_11:
}

- (id)humanReadableRegistrationStatus:(id)status
{
  if (status)
  {
    statusCopy = status;
    v4 = [statusCopy substringFromIndex:{objc_msgSend(@"kCTRegistrationStatus", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)humanReadableDataIndicator:(id)indicator
{
  if (indicator)
  {
    indicatorCopy = indicator;
    v4 = [indicatorCopy substringFromIndex:{objc_msgSend(@"kCTRegistrationDataIndicator", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end