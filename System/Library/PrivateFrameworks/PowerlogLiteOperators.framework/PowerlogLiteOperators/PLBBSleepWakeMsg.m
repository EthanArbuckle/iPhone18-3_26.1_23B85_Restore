@interface PLBBSleepWakeMsg
+ (id)entryEventPointDefinitionSleepWakeActivityIceABM;
+ (id)entryEventPointDefinitionSleepWakeActivityMavABM;
- (void)logEventPointSleepWakeABM;
- (void)refreshSleepWakeActivity;
- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5;
@end

@implementation PLBBSleepWakeMsg

- (void)sendAndLogPLEntry:(id)a3 withName:(id)a4 withType:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLBBSleepWakeMsg_sendAndLogPLEntry_withName_withType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F4138 != -1)
    {
      dispatch_once(&qword_2811F4138, block);
    }

    if (_MergedGlobals_1_16 == 1)
    {
      v35 = v9;
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Sending PLEntry: name=%@ type=%@", "-[PLBBSleepWakeMsg sendAndLogPLEntry:withName:withType:]", v9, v10];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBSleepWakeMsg.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBSleepWakeMsg sendAndLogPLEntry:withName:withType:]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:43];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v35;
    }
  }

  v18 = [(PLBBMsgRoot *)self agent];

  if (!v18 && [MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __56__PLBBSleepWakeMsg_sendAndLogPLEntry_withName_withType___block_invoke_17;
    v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v36[4] = v19;
    if (qword_2811F4140 != -1)
    {
      dispatch_once(&qword_2811F4140, v36);
    }

    if (byte_2811F4131 == 1)
    {
      v20 = v9;
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad agent"];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBSleepWakeMsg.m"];
      v24 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBSleepWakeMsg sendAndLogPLEntry:withName:withType:]"];
      [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:46];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v39 = v21;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v9 = v20;
    }
  }

  if ([MEMORY[0x277D3F208] isBasebandProto])
  {
    v27 = [(PLBBMsgRoot *)self agent];
    v28 = [v8 dictionary];
    v29 = [v8 entryDate];
    [v27 logForSubsystem:@"BasebandMetrics" category:@"SleepWakeABM" data:v28 date:v29];
  }

  if ([MEMORY[0x277D3F208] isBasebandDale])
  {
    v30 = [(PLBBMsgRoot *)self agent];
    v31 = [v8 dictionary];
    v32 = [v8 entryDate];
    [v30 logForSubsystem:@"BasebandMetrics" category:@"SleepWakeABM" data:v31 date:v32];
  }

  if (([MEMORY[0x277D3F208] isBasebandMav] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
  {
    v33 = [(PLBBMsgRoot *)self agent];
    [v33 logEntry:v8];
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __56__PLBBSleepWakeMsg_sendAndLogPLEntry_withName_withType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_16 = result;
  return result;
}

uint64_t __56__PLBBSleepWakeMsg_sendAndLogPLEntry_withName_withType___block_invoke_17(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4131 = result;
  return result;
}

+ (id)entryEventPointDefinitionSleepWakeActivityMavABM
{
  v33[2] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_282C1BE28;
  v31[1] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v33[0] = v27;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"WakeChannel";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_IntegerFormat];
  v29[0] = v25;
  v28[1] = @"WakeData";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_StringFormat];
  v29[1] = v23;
  v28[2] = @"WakeDataParsed";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat];
  v29[2] = v21;
  v28[3] = @"WakeSubType";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v29[3] = v19;
  v28[4] = @"WakeType";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v29[4] = v17;
  v28[5] = @"QmiSvcType";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v29[5] = v15;
  v28[6] = @"QmiClientId";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v29[6] = v4;
  v28[7] = @"QmiMsgId";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v29[7] = v6;
  v28[8] = @"QmiLen";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v29[8] = v8;
  v28[9] = @"IsCmas";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_BoolFormat];
  v29[9] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  v33[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionSleepWakeActivityIceABM
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v32[0] = *MEMORY[0x277D3F568];
  v32[1] = v2;
  v33[0] = &unk_282C1BE38;
  v33[1] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v35[0] = v29;
  v34[1] = *MEMORY[0x277D3F540];
  v30[0] = @"WakeChannel";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v31[0] = v27;
  v30[1] = @"WakeData";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_StringFormat];
  v31[1] = v25;
  v30[2] = @"WakeDataParsed";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_StringFormat];
  v31[2] = v23;
  v30[3] = @"WakeSubType";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_IntegerFormat];
  v31[3] = v21;
  v30[4] = @"WakeType";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v31[4] = v19;
  v30[5] = @"AriGroupID";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v31[5] = v17;
  v30[6] = @"AriMsgID";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v31[6] = v15;
  v30[7] = @"AriLength";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v31[7] = v4;
  v30[8] = @"AriMsgName";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v31[8] = v6;
  v30[9] = @"AriSeqNum";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v31[9] = v8;
  v30[10] = @"IsCmas";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_BoolFormat];
  v31[10] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
  v35[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)refreshSleepWakeActivity
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (void)logEventPointSleepWakeABM
{
  v128 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v127 = "[PLBBSleepWakeMsg logEventPointSleepWakeABM]";
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v122 = 3221225472;
    v123 = __45__PLBBSleepWakeMsg_logEventPointSleepWakeABM__block_invoke;
    v124 = &__block_descriptor_40_e5_v8__0lu32l8;
    v125 = v4;
    if (qword_2811F4148 != -1)
    {
      dispatch_once(&qword_2811F4148, &block);
    }

    if (byte_2811F4132 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBSleepWakeMsg logEventPointSleepWakeABM]", block, v122, v123, v124, v125];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBSleepWakeMsg.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBSleepWakeMsg logEventPointSleepWakeABM]"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:170];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v127 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [MEMORY[0x277D3F208] isBasebandIce];
  v12 = MEMORY[0x277D3F5E8];
  if ((v11 & 1) != 0 || [MEMORY[0x277D3F208] isBasebandIBIS] || objc_msgSend(MEMORY[0x277D3F208], "isBasebandDale"))
  {
    v13 = *v12;
    v14 = @"SleepWakeActivityIceABM";
  }

  else
  {
    v56 = [MEMORY[0x277D3F208] isBasebandProto];
    v13 = *v12;
    if (v56)
    {
      v14 = @"SleepWakeActivitySinopeABM";
    }

    else
    {
      v14 = @"SleepWakeActivityMavABM";
    }
  }

  v15 = [(PLOperator *)PLBBAgent entryKeyForType:v13 andName:v14];
  v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v15];
  if (v16)
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = [(PLBBSleepWakeMsg *)self bbWakeChannel];
    v19 = [v17 numberWithInt:{objc_msgSend(v18, "intValue")}];
    [v16 setObject:v19 forKeyedSubscript:@"WakeChannel"];

    if ([MEMORY[0x277D3F208] isBasebandIce])
    {
      v20 = off_278257D78;
    }

    else if ([MEMORY[0x277D3F208] isBasebandMav])
    {
      v20 = off_278257DD0;
    }

    else
    {
      if (![MEMORY[0x277D3F208] isBasebandProto])
      {
        goto LABEL_27;
      }

      v20 = off_278257EE0;
    }

    v28 = [(__objc2_class *)*v20 convertToStringData:self->_bbWakeDataBin];
    [v16 setObject:v28 forKeyedSubscript:@"WakeData"];

LABEL_27:
    if ([MEMORY[0x277D3F180] fullMode])
    {
      v29 = [(PLBBSleepWakeMsg *)self bbWakeDataParsed];
      [v16 setObject:v29 forKeyedSubscript:@"WakeDataParsed"];
    }

    v30 = [(PLBBSleepWakeMsg *)self bbWakeType];
    v31 = [v30 isEqualToString:@"DATA"];

    if (v31)
    {
      v32 = PLLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "BB Agent: Wake Type - Data", buf, 2u);
      }

      [v16 setObject:&unk_282C103E0 forKeyedSubscript:@"WakeType"];
      v33 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v34 = [v33 isEqualToString:@"IP"];

      if (v34)
      {
        v35 = PLLogCommon();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          bbWakeDataParsed = self->_bbWakeDataParsed;
          *buf = 138412290;
          v127 = bbWakeDataParsed;
          _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "BB Agent: Wake Sub Type - IP Wake %@", buf, 0xCu);
        }

        [v16 setObject:&unk_282C103F8 forKeyedSubscript:@"WakeSubType"];
        [v16 setObject:0 forKeyedSubscript:@"WakeData"];
        v36 = @"WakeDataParsed";
        v37 = v16;
        v38 = 0;
        goto LABEL_102;
      }

      goto LABEL_99;
    }

    v39 = [(PLBBSleepWakeMsg *)self bbWakeType];
    v40 = [v39 isEqualToString:@"CONTROL"];

    if (v40)
    {
      v41 = PLLogCommon();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "BB Agent: Wake Type - Control", buf, 2u);
      }

      [v16 setObject:&unk_282C10428 forKeyedSubscript:@"WakeType"];
      v42 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v43 = [v42 isEqualToString:@"ARI"];

      if (v43)
      {
        [v16 setObject:&unk_282C10440 forKeyedSubscript:@"WakeSubType"];
        v44 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyARIGroupID"];
        [v16 setObject:v44 forKeyedSubscript:@"AriGroupID"];

        v45 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyARIMsgID"];
        [v16 setObject:v45 forKeyedSubscript:@"AriMsgID"];

        v46 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyARILength"];
        [v16 setObject:v46 forKeyedSubscript:@"AriLength"];

        v47 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyARIMsgName"];
        [v16 setObject:v47 forKeyedSubscript:@"AriMsgName"];

        v48 = self->_bbWakeDataParsed;
        v49 = @"kKeyARISeqNumber";
LABEL_41:
        v50 = [(NSDictionary *)v48 objectForKeyedSubscript:v49];
        v51 = @"AriSeqNum";
LABEL_49:
        [v16 setObject:v50 forKeyedSubscript:v51];

LABEL_103:
        v118 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyBasebandWakeFromCMAS"];

        if (v118)
        {
          v119 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyBasebandWakeFromCMAS"];
          [v16 setObject:v119 forKeyedSubscript:@"IsCmas"];
        }

        else
        {
          [v16 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"IsCmas"];
        }

        [(PLBBSleepWakeMsg *)self sendAndLogPLEntry:v16 withName:@"SleepWakeActivityABM" withType:v13];
        goto LABEL_107;
      }

      v57 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v58 = [v57 isEqualToString:@"QMI"];

      if (v58)
      {
        [v16 setObject:&unk_282C10428 forKeyedSubscript:@"WakeSubType"];
        v59 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyQMIServiceType"];
        [v16 setObject:v59 forKeyedSubscript:@"QmiSvcType"];

        v60 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyQMIClientID"];
        [v16 setObject:v60 forKeyedSubscript:@"QmiClientId"];

        v61 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyQMIMsgID"];
        [v16 setObject:v61 forKeyedSubscript:@"QmiMsgId"];

        v62 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyQMIMsgType"];
        [v16 setObject:v62 forKeyedSubscript:@"QmiMsgType"];

        v50 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyQMILength"];
        v51 = @"QmiLen";
        goto LABEL_49;
      }

      v69 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v70 = [v69 isEqualToString:@"MIPC"];

      if (v70)
      {
        [v16 setObject:&unk_282C10458 forKeyedSubscript:@"WakeSubType"];
        v71 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyMIPCClientID"];
        [v16 setObject:v71 forKeyedSubscript:@"AriGroupID"];

        v72 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyMIPCMsgID"];
        [v16 setObject:v72 forKeyedSubscript:@"AriMsgID"];

        v73 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyMIPCLength"];
        [v16 setObject:v73 forKeyedSubscript:@"AriLength"];

        v74 = [(NSDictionary *)self->_bbWakeDataParsed objectForKeyedSubscript:@"kKeyMIPCMsgStr"];
        [v16 setObject:v74 forKeyedSubscript:@"AriMsgName"];

        v48 = self->_bbWakeDataParsed;
        v49 = @"kKeyMIPCTrxID";
        goto LABEL_41;
      }

LABEL_99:
      v38 = &unk_282C10410;
      goto LABEL_100;
    }

    v52 = [(PLBBSleepWakeMsg *)self bbWakeType];
    v53 = [v52 isEqualToString:@"TRACE"];

    if (v53)
    {
      [v16 setObject:&unk_282C10440 forKeyedSubscript:@"WakeType"];
      v54 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v55 = [v54 isEqualToString:@"DIAG"];

      if (v55)
      {
LABEL_44:
        v38 = &unk_282C10470;
        goto LABEL_100;
      }

      v67 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v68 = [v67 isEqualToString:@"STT"];

      if (!v68)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v63 = [(PLBBSleepWakeMsg *)self bbWakeType];
      v64 = [v63 isEqualToString:@"OTHER"];

      if (!v64)
      {
        v38 = &unk_282C10410;
        v36 = @"WakeType";
LABEL_101:
        v37 = v16;
LABEL_102:
        [v37 setObject:v38 forKeyedSubscript:v36];
        goto LABEL_103;
      }

      [v16 setObject:&unk_282C104A0 forKeyedSubscript:@"WakeType"];
      v65 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v66 = [v65 isEqualToString:@"QMI"];

      if (v66)
      {
        v38 = &unk_282C10428;
        goto LABEL_100;
      }

      v75 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v76 = [v75 isEqualToString:@"ARI"];

      if (v76)
      {
        v38 = &unk_282C10440;
        goto LABEL_100;
      }

      v77 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v78 = [v77 isEqualToString:@"CMAS"];

      if (v78)
      {
        v38 = &unk_282C103E0;
        goto LABEL_100;
      }

      v80 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v81 = [v80 isEqualToString:@"PAGING"];

      if (v81)
      {
        v38 = &unk_282C104A0;
        goto LABEL_100;
      }

      v82 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v83 = [v82 isEqualToString:@"SERIAL"];

      if (v83)
      {
        v38 = &unk_282C104B8;
        goto LABEL_100;
      }

      v84 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v85 = [v84 isEqualToString:@"HSIC"];

      if (v85)
      {
        v38 = &unk_282C104D0;
        goto LABEL_100;
      }

      v86 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v87 = [v86 isEqualToString:@"PCI"];

      if (v87)
      {
        v38 = &unk_282C104E8;
        goto LABEL_100;
      }

      v88 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v89 = [v88 isEqualToString:@"DIAG"];

      if (v89)
      {
        goto LABEL_44;
      }

      v90 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
      v91 = [v90 isEqualToString:@"STT"];

      if (!v91)
      {
        v92 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
        v93 = [v92 isEqualToString:@"UART"];

        if (v93)
        {
          v38 = &unk_282C10500;
        }

        else
        {
          v94 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
          v95 = [v94 isEqualToString:@"QMAP"];

          if (v95)
          {
            v38 = &unk_282C10518;
          }

          else
          {
            v96 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
            v97 = [v96 isEqualToString:@"ADAM"];

            if (v97)
            {
              v38 = &unk_282C10530;
            }

            else
            {
              v98 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
              v99 = [v98 isEqualToString:@"IP"];

              if (v99)
              {
                v38 = &unk_282C103F8;
              }

              else
              {
                v100 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
                v101 = [v100 isEqualToString:@"MIPC"];

                if (v101)
                {
                  v38 = &unk_282C10458;
                }

                else
                {
                  v102 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
                  v103 = [v102 isEqualToString:@"IQ"];

                  if (v103)
                  {
                    v38 = &unk_282C10548;
                  }

                  else
                  {
                    v104 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
                    v105 = [v104 isEqualToString:@"MD"];

                    if (v105)
                    {
                      v38 = &unk_282C10560;
                    }

                    else
                    {
                      v106 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
                      v107 = [v106 isEqualToString:@"CCCI"];

                      if (v107)
                      {
                        v38 = &unk_282C10578;
                      }

                      else
                      {
                        v108 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
                        v109 = [v108 isEqualToString:@"AT"];

                        if (v109)
                        {
                          v38 = &unk_282C10590;
                        }

                        else
                        {
                          v110 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
                          v111 = [v110 isEqualToString:@"PASSTHROUGH"];

                          if (v111)
                          {
                            v38 = &unk_282C105A8;
                          }

                          else
                          {
                            v112 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
                            v113 = [v112 isEqualToString:@"NVRAM"];

                            if (v113)
                            {
                              v38 = &unk_282C105C0;
                            }

                            else
                            {
                              v114 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
                              v115 = [v114 isEqualToString:@"MCU"];

                              if (v115)
                              {
                                v38 = &unk_282C105D8;
                              }

                              else
                              {
                                v116 = [(PLBBSleepWakeMsg *)self bbWakeSubType];
                                v117 = [v116 isEqualToString:@"MUMTAS"];

                                if (!v117)
                                {
                                  goto LABEL_99;
                                }

                                v38 = &unk_282C105F0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_100:
        v36 = @"WakeSubType";
        goto LABEL_101;
      }
    }

    v38 = &unk_282C10488;
    goto LABEL_100;
  }

  v21 = PLLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "BB Agent: Unable to allocate wake entry", buf, 2u);
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** Error *** unable to allocate PLEntry"];
  v23 = MEMORY[0x277D3F178];
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/PLBBSleepWakeMsg.m"];
  v25 = [v24 lastPathComponent];
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBSleepWakeMsg logEventPointSleepWakeABM]"];
  [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:199];

  v27 = PLLogCommon();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v127 = v22;
    _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

LABEL_107:
  v120 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PLBBSleepWakeMsg_logEventPointSleepWakeABM__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4132 = result;
  return result;
}

@end