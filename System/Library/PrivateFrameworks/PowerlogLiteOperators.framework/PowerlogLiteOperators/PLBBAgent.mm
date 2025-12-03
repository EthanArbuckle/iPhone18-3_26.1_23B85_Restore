@interface PLBBAgent
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventForwardSDM;
+ (id)entryEventNoneBBReport;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionCommandInfo;
+ (id)entryEventPointDefinitions;
+ (id)entryIceMsgLite;
+ (id)humanReadableStateFromKey:(id)key;
+ (id)indexToRat:(unint64_t)rat;
+ (void)load;
- (BOOL)isChangedAndSetAirplaneMode;
- (BOOL)isTimeToRequestReport;
- (BOOL)setupChannel:(id)channel withLogCodes:(id)codes andEvents:(id)events andExtracode:(id)extracode;
- (PLBBAgent)init;
- (double)translateChannelRBsToChannelBW:(double)w;
- (float)translateTransBW:(int)w;
- (id)getKeyForLTEBw:(double)bw;
- (id)getKeyForNRBw:(double)bw;
- (id)humanReadableDataActiveString;
- (id)humanReadableDataIndicator:(id)indicator;
- (id)humanReadableRegistrationStatus:(id)status;
- (id)humanReadableSimStatusString;
- (id)setupIOKitNotifications;
- (int64_t)getSubsIdFromCTContext:(id)context;
- (void)accountVoicePower:(id)power state:(id)state;
- (void)bootStateChange:(id)change;
- (void)cacheCommitTimerFired;
- (void)callStatusChanged:(id)changed;
- (void)cancelCacheCommitTimer;
- (void)cellChanged:(id)changed cell:(id)cell;
- (void)channel:(id)channel hasDataAvailable:(id)available;
- (void)channelDidBecomeInvalid:(id)invalid;
- (void)checkKICEChannelTimeout;
- (void)commitBBCacheWithClientInfo:(int64_t)info;
- (void)createOOSAccountingEvent:(id)event;
- (void)dataStatus:(id)status dataStatusInfo:(id)info;
- (void)dealloc;
- (void)displayStatusChanged:(id)changed status:(id)status;
- (void)eventToCommitCacheOccurred;
- (void)eventToFlushCacheOccurred;
- (void)flushBBCacheWithClientInfo:(int64_t)info;
- (void)handlePLBasebandEventNotification:(id)notification;
- (void)handlePostCDRXCapability;
- (void)initCacheCommitTimer;
- (void)initOperatorDependancies;
- (void)loadOOSModelValues;
- (void)log;
- (void)logBasebandConfig;
- (void)logDSDSEventForwardTelephonyRegistrationWithKVPairs:(id)pairs subsId:(int64_t)id andOperator:(id)operator;
- (void)logDSDSEventPointTelephonyActivityWithSubsId:(int64_t)id context:(id)context callStatus:(id)status simStatus:(id)simStatus signalInfo:(id)info RATselection:(id)tselection andCurrCampedRAT:(id)t;
- (void)logEntries:(id)entries withGroupID:(id)d;
- (void)logEntry:(id)entry;
- (void)logEventNoneBBReportBy:(int64_t)by withAction:(int64_t)action;
- (void)logMessage:(id)message andState:(id)state;
- (void)logOperatorName;
- (void)logTelephonyActivity;
- (void)logTelephonyActivityAtInit;
- (void)logTelephonyActivityDSDSAtInit;
- (void)logTelephonyRegMsgWith:(id)with;
- (void)logTelephonyRegistrationAtInit;
- (void)logTelephonyRegistrationDSDSAtInit;
- (void)metricMessage:(id)message;
- (void)metricMessageDebugLog:(id)log;
- (void)modelGPSPower:(id)power;
- (void)modelLTESLEEPMGRPower:(id)power;
- (void)modelMav10BBHWPower:(id)power;
- (void)modelMavBBHWOtherPerRATPower:(id)power;
- (void)modelOOSPower:(id)power;
- (void)modelScanPower:(id)power;
- (void)modelStateTransitionPower:(id)power rat:(id)rat state:(id)state;
- (void)operatorNameChanged:(id)changed name:(id)name;
- (void)postCDRXCapability:(BOOL)capability;
- (void)processTimeUpdateInfoDict:(id)dict;
- (void)ratSelectionChanged:(id)changed selection:(id)selection;
- (void)reconnectTimerFired;
- (void)refreshBBReport;
- (void)refreshRequestHandler;
- (void)registerForAirplaneModeChange;
- (void)registerForICEModelMetricsNotifications:(id)notifications;
- (void)registerForMAVModelMetricsNotifications:(id)notifications;
- (void)registerForSinopeModelMetricsNotifications:(id)notifications;
- (void)resetCacheCommitTimer;
- (void)scheduleFlushPostCacheCommit;
- (void)scheduleReconnect;
- (void)setOpName:(id)name;
- (void)setupBBChannelsWithAction:(int64_t)action;
- (void)setupKICEChannels;
- (void)setupKICEChannelsForDebug;
- (void)setupMavABMChannel;
- (void)setupTelephonyActivityChannels;
- (void)setupTelephonyRegistrationChannels;
- (void)setupTimeUpdateChannel;
- (void)signalStrengthChanged:(id)changed info:(id)info;
- (void)simStatusDidChange:(id)change status:(id)status;
- (void)telephonyActivityNotificationCB_Agent:(id)agent withName:(__CFString *)name;
- (void)triggerMessage:(id)message;
- (void)wakeMessage:(id)message;
@end

@implementation PLBBAgent

- (void)checkKICEChannelTimeout
{
  v16 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __36__PLBBAgent_checkKICEChannelTimeout__block_invoke;
    v13[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v13[4] = v3;
    if (qword_2811F5280 != -1)
    {
      dispatch_once(&qword_2811F5280, v13);
    }

    if (byte_2811F4F9B == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent checkKICEChannelTimeout]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent checkKICEChannelTimeout]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:547];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_1024;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);

  v11 = *MEMORY[0x277D85DE8];
}

void __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_1024(uint64_t a1)
{
  v92 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  v3 = [*(a1 + 32) lastBBActivityTimestamp];
  [v2 timeIntervalSinceDate:v3];
  v5 = fabs(v4);

  v6 = [MEMORY[0x277D3F180] debugEnabled];
  if (v5 <= 7200.0)
  {
    if (v6)
    {
      v34 = objc_opt_class();
      v78 = MEMORY[0x277D85DD0];
      v79 = 3221225472;
      v80 = __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_1074;
      v81 = &__block_descriptor_40_e5_v8__0lu32l8;
      v82 = v34;
      if (qword_2811F52B0 != -1)
      {
        dispatch_once(&qword_2811F52B0, &v78);
      }

      if (byte_2811F4FA1 == 1)
      {
        v35 = MEMORY[0x277CCACA8];
        v36 = [*(a1 + 32) lastBBActivityTimestamp];
        v19 = [v35 stringWithFormat:@"no reset needed! lastEventTimestamp=%@ timeIntevalSinceLastEvent=%f triggerTimeInterval=%f", v36, *&v5, 0x40BC200000000000, v78, v79, v80, v81, v82];

        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        v39 = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent checkKICEChannelTimeout]_block_invoke_2"];
        [v37 logMessage:v19 fromFile:v39 fromFunction:v40 fromLineNumber:586];

        v33 = PLLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v91 = v19;
          _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        goto LABEL_54;
      }
    }
  }

  else
  {
    if (v6)
    {
      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_2;
      block[3] = &unk_27825A310;
      v88 = @"Critical";
      v89 = v7;
      if (qword_2811F5288 != -1)
      {
        dispatch_once(&qword_2811F5288, block);
      }

      v8 = byte_2811F4F9C;

      if (v8 == 1)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = MEMORY[0x277D3F268];
        v11 = [*(a1 + 32) lastBBActivityTimestamp];
        v12 = [v10 formattedStringForDate:v11];
        v13 = [v9 stringWithFormat:@"Trigger reset of channel! lastEventTimestamp=%@ timeIntevalSinceLastEvent=%f triggerTimeInterval=%f", v12, *&v5, 0x40BC200000000000];

        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        v16 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent checkKICEChannelTimeout]_block_invoke"];
        [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:552];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v91 = v13;
          _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (([MEMORY[0x277D3F208] isBasebandProto] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandMav") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v20 = [*(a1 + 32) abmClient];

      v21 = [MEMORY[0x277D3F180] debugEnabled];
      if (v20)
      {
        if (v21)
        {
          v22 = *(a1 + 32);
          v23 = objc_opt_class();
          v85[0] = MEMORY[0x277D85DD0];
          v85[1] = 3221225472;
          v85[2] = __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_1042;
          v85[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v85[4] = v23;
          if (qword_2811F5298 != -1)
          {
            dispatch_once(&qword_2811F5298, v85);
          }

          if (byte_2811F4F9E == 1)
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLABMClient exists"];
            v25 = MEMORY[0x277D3F178];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
            v27 = [v26 lastPathComponent];
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent checkKICEChannelTimeout]_block_invoke_2"];
            [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:563];

            v29 = PLLogCommon();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v91 = v24;
              _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v30 = MEMORY[0x277CCACA8];
        v31 = [*(a1 + 32) abmClient];
        v32 = [v31 getBasebandBootState];
        v33 = [v30 stringWithFormat:@"%@", v32];
      }

      else
      {
        if (v21)
        {
          v41 = *(a1 + 32);
          v42 = objc_opt_class();
          v86[0] = MEMORY[0x277D85DD0];
          v86[1] = 3221225472;
          v86[2] = __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_1029;
          v86[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v86[4] = v42;
          if (qword_2811F5290 != -1)
          {
            dispatch_once(&qword_2811F5290, v86);
          }

          if (byte_2811F4F9D == 1)
          {
            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLABMClient lost, init again"];
            v44 = MEMORY[0x277D3F178];
            v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
            v46 = [v45 lastPathComponent];
            v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent checkKICEChannelTimeout]_block_invoke_2"];
            [v44 logMessage:v43 fromFile:v46 fromFunction:v47 fromLineNumber:559];

            v48 = PLLogCommon();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v91 = v43;
              _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"ICEChannelReset"];
        [*(a1 + 32) setupKICEChannels];
      }

      v49 = [*(a1 + 32) abmClient];
      v50 = [v49 getBasebandTimeAndLatency];

      if (v50)
      {
        v51 = [v50 time];
        [v50 latency];
        v53 = [v51 dateByAddingTimeInterval:-v52];
        v54 = [v53 convertFromBasebandToMonotonic];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v55 = *(a1 + 32);
          v56 = objc_opt_class();
          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_1054;
          v83[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v83[4] = v56;
          if (qword_2811F52A8 != -1)
          {
            dispatch_once(&qword_2811F52A8, v83);
          }

          if (byte_2811F4FA0 == 1)
          {
            v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBBAgent iceChannelTimeout::currentTime=%@", v54];
            v58 = MEMORY[0x277D3F178];
            v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
            v60 = [v59 lastPathComponent];
            v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent checkKICEChannelTimeout]_block_invoke_2"];
            [v58 logMessage:v57 fromFile:v60 fromFunction:v61 fromLineNumber:572];

            v62 = PLLogCommon();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v91 = v57;
              _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v63 = MEMORY[0x277CCACA8];
        v64 = [*(a1 + 32) abmClient];
        v65 = [v64 getBasebandBootState];
        v66 = [v63 stringWithFormat:@"%@", v65];

        v67 = [MEMORY[0x277D3F268] formattedStringForDate:v54];
        v33 = v66;
      }

      else
      {
        if (![MEMORY[0x277D3F180] debugEnabled])
        {
          goto LABEL_52;
        }

        v68 = *(a1 + 32);
        v69 = objc_opt_class();
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_1048;
        v84[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v84[4] = v69;
        if (qword_2811F52A0 != -1)
        {
          dispatch_once(&qword_2811F52A0, v84);
        }

        if (byte_2811F4F9F != 1)
        {
LABEL_52:
          v67 = 0;
          goto LABEL_53;
        }

        v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to query baseband timestamp"];
        v70 = MEMORY[0x277D3F178];
        v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        v72 = [v71 lastPathComponent];
        v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent checkKICEChannelTimeout]_block_invoke_2"];
        [v70 logMessage:v54 fromFile:v72 fromFunction:v73 fromLineNumber:569];

        v74 = PLLogCommon();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v91 = v54;
          _os_log_debug_impl(&dword_21A4C6000, v74, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v67 = 0;
      }

LABEL_53:
      [v19 setObject:v33 forKeyedSubscript:@"BBState"];
      [v19 setObject:v67 forKeyedSubscript:@"BBTime"];
      v75 = objc_opt_new();
      [v75 setAgent:*(a1 + 32)];
      [v75 setMsgProcErr:0];
      v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"ChannelTimeout:", v19];
      [v75 setPayload:v76];

      [v75 setMsgType:&unk_282C11CB8];
      [v75 logEventNoneBBMsgAll];

LABEL_54:
    }
  }

  v77 = *MEMORY[0x277D85DE8];
}

void __37__PLBBAgent_initOperatorDependancies__block_invoke_3_1579(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    v16 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification from ThermalMonitor: %@", &v15, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"Source"];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 objectForKeyedSubscript:@"Source"];
    v8 = [v7 isEqual:&unk_282C11CE8];

    if (v8)
    {
      if (([MEMORY[0x277D3F208] isBasebandProto] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandMav"))
      {
        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v15 = 138412290;
          v16 = v3;
          _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Recieved trigger for sysdiagnose: %@", &v15, 0xCu);
        }

        if ([MEMORY[0x277D3F208] isBasebandMavToAllowSysdiagnoseTrigger])
        {
          v10 = &__block_literal_global_44;
          v11 = 8;
LABEL_13:
          [*(a1 + 32) logEventNoneBBReportBy:4 withAction:v11];
          v12 = dispatch_time(0, 1000000000);
          v13 = [*(a1 + 32) workQueue];
          dispatch_after(v12, v13, v10);

          goto LABEL_14;
        }

        if ([MEMORY[0x277D3F208] isBasebandProto])
        {
          v10 = &__block_literal_global_1586;
          v11 = 7;
          goto LABEL_13;
        }
      }
    }
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
}

void __37__PLBBAgent_initOperatorDependancies__block_invoke_2_1571(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  v4 = [v3 objectForKeyedSubscript:@"callStatus"];
  v5 = [v3 objectForKeyedSubscript:@"campedRat"];
  if (([MEMORY[0x277D3F208] isBasebandClass:1003001] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003002))
  {
    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    if ([v7 isBBDataStandard] && objc_msgSend(v4, "isEqualToString:", @"Active"))
    {
      v8 = [MEMORY[0x277D3F0C0] sharedInstance];
      v23 = @"BB-PhoneCall";
      v24[0] = &unk_282C1C688;
      v9 = MEMORY[0x277CBEAC0];
      v10 = v24;
      v11 = &v23;
LABEL_6:
      v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
      v13 = [v3 entryDate];
      [v8 createDistributionEventForwardWithDistributionID:6 withChildNodeNameToWeight:v12 withStartDate:v13];
      v14 = 0;
LABEL_10:

      [*v6 setIsBBDataStandard:v14];
      goto LABEL_18;
    }

    if (([*v6 isBBDataStandard] & 1) == 0 && objc_msgSend(v4, "isEqualToString:", @"Inactive"))
    {
      v8 = [MEMORY[0x277D3F0C0] sharedInstance];
      v21 = @"BB-Standard";
      v22 = &unk_282C1C688;
      v14 = 1;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v13 = [v3 entryDate];
      [v8 createDistributionEventForwardWithDistributionID:6 withChildNodeNameToWeight:v12 withStartDate:v13];
      goto LABEL_10;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = *(a1 + 32);
        v6 = (a1 + 32);
        if ([v15 isBBDataStandard] && objc_msgSend(v4, "isEqualToString:", @"Active") && objc_msgSend(v5, "isEqualToString:", @"LTE"))
        {
          v8 = [MEMORY[0x277D3F0C0] sharedInstance];
          v19 = @"BB-PhoneCall";
          v20 = &unk_282C1C688;
          v9 = MEMORY[0x277CBEAC0];
          v10 = &v20;
          v11 = &v19;
          goto LABEL_6;
        }

        if (([*v6 isBBDataStandard] & 1) == 0 && ((objc_msgSend(v4, "isEqualToString:", @"Inactive") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"LTE") & 1) == 0))
        {
          v8 = [MEMORY[0x277D3F0C0] sharedInstance];
          v17 = @"BB-Standard";
          v18 = &unk_282C1C688;
          v14 = 1;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
          v13 = [v3 entryDate];
          [v8 createDistributionEventForwardWithDistributionID:6 withChildNodeNameToWeight:v12 withStartDate:v13];
          goto LABEL_10;
        }
      }
    }
  }

LABEL_18:

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLBBAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)eventToFlushCacheOccurred
{
  v18 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __38__PLBBAgent_eventToFlushCacheOccurred__block_invoke;
    v15[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v15[4] = v3;
    if (qword_2811F5268 != -1)
    {
      dispatch_once(&qword_2811F5268, v15);
    }

    if (_MergedGlobals_1_41 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent eventToFlushCacheOccurred]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent eventToFlushCacheOccurred]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:525];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PLBBAgent_eventToFlushCacheOccurred__block_invoke_1007;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);

  workQueue2 = [(PLOperator *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__PLBBAgent_eventToFlushCacheOccurred__block_invoke_2;
  v13[3] = &unk_2782591D0;
  v13[4] = self;
  dispatch_async(workQueue2, v13);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __38__PLBBAgent_eventToFlushCacheOccurred__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_41 = result;
  return result;
}

void __38__PLBBAgent_eventToFlushCacheOccurred__block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  v3 = [*(a1 + 32) lastBBActivityTimestamp];
  [v2 timeIntervalSinceDate:v3];
  v5 = fabs(v4);

  v6 = [MEMORY[0x277D3F180] debugEnabled];
  if (v5 <= 7200.0)
  {
    if (v6)
    {
      v21 = objc_opt_class();
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __38__PLBBAgent_eventToFlushCacheOccurred__block_invoke_1020;
      v34 = &__block_descriptor_40_e5_v8__0lu32l8;
      v35 = v21;
      if (qword_2811F5278 != -1)
      {
        dispatch_once(&qword_2811F5278, &v31);
      }

      if (byte_2811F4F9A == 1)
      {
        v22 = MEMORY[0x277CCACA8];
        v23 = [*(a1 + 32) lastBBActivityTimestamp];
        v24 = [v22 stringWithFormat:@"no reset needed! lastEventTimestamp=%@ timeIntevalSinceLastEvent=%f triggerTimeInterval=%f", v23, *&v5, 0x40BC200000000000, v31, v32, v33, v34, v35];

        v25 = MEMORY[0x277D3F178];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        v27 = [v26 lastPathComponent];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent eventToFlushCacheOccurred]_block_invoke_2"];
        [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:539];

        v29 = PLLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v40 = v24;
          _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if (v6)
    {
      v7 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__PLBBAgent_eventToFlushCacheOccurred__block_invoke_3;
      block[3] = &unk_27825A310;
      v37 = @"Critical";
      v38 = v7;
      if (qword_2811F5270 != -1)
      {
        dispatch_once(&qword_2811F5270, block);
      }

      v8 = byte_2811F4F99;

      if (v8 == 1)
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = MEMORY[0x277D3F268];
        v11 = [*(a1 + 32) lastBBActivityTimestamp];
        v12 = [v10 formattedStringForDate:v11];
        v13 = [v9 stringWithFormat:@"Trigger reset of channel! lastEventTimestamp=%@ timeIntevalSinceLastEvent=%f triggerTimeInterval=%f", v12, *&v5, 0x40BC200000000000];

        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        v16 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent eventToFlushCacheOccurred]_block_invoke_2"];
        [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:535];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v40 = v13;
          _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v19 = *(a1 + 32);
    v20 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v19 setLastBBActivityTimestamp:v20];

    [*(a1 + 32) scheduleReconnect];
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __38__PLBBAgent_eventToFlushCacheOccurred__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F4F99 = result;
  return result;
}

uint64_t __38__PLBBAgent_eventToFlushCacheOccurred__block_invoke_1020(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4F9A = result;
  return result;
}

uint64_t __36__PLBBAgent_checkKICEChannelTimeout__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4F9B = result;
  return result;
}

uint64_t __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F4F9C = result;
  return result;
}

uint64_t __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_1029(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4F9D = result;
  return result;
}

uint64_t __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_1042(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4F9E = result;
  return result;
}

uint64_t __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_1048(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4F9F = result;
  return result;
}

uint64_t __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_1054(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FA0 = result;
  return result;
}

uint64_t __36__PLBBAgent_checkKICEChannelTimeout__block_invoke_1074(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FA1 = result;
  return result;
}

- (void)eventToCommitCacheOccurred
{
  v16 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39__PLBBAgent_eventToCommitCacheOccurred__block_invoke;
    v13[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v13[4] = v3;
    if (qword_2811F52B8 != -1)
    {
      dispatch_once(&qword_2811F52B8, v13);
    }

    if (byte_2811F4FA2 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent eventToCommitCacheOccurred]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent eventToCommitCacheOccurred]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:593];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PLBBAgent_eventToCommitCacheOccurred__block_invoke_1075;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(workQueue, block);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PLBBAgent_eventToCommitCacheOccurred__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FA2 = result;
  return result;
}

- (void)reconnectTimerFired
{
  channelReconnectTimer = [(PLBBAgent *)self channelReconnectTimer];

  if (channelReconnectTimer)
  {
    channelReconnectTimer2 = [(PLBBAgent *)self channelReconnectTimer];
    [channelReconnectTimer2 invalidate];
  }

  [(PLBBAgent *)self setChannelReconnectTimer:0];

  [(PLBBAgent *)self setupBBChannelsWithAction:2];
}

- (void)scheduleReconnect
{
  [(PLBasebandLogChannel *)self->streamingChannel close];
  [(PLBasebandLogChannel *)self->cachedChannel close];
  channelReconnectTimer = [(PLBBAgent *)self channelReconnectTimer];
  timerActive = [channelReconnectTimer timerActive];

  if ((timerActive & 1) == 0)
  {
    v5 = objc_alloc(MEMORY[0x277D3F250]);
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:60.0];
    workQueue = [(PLOperator *)self workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__PLBBAgent_scheduleReconnect__block_invoke;
    v9[3] = &unk_278259C40;
    v9[4] = self;
    v8 = [v5 initWithFireDate:v6 withInterval:0 withTolerance:0 repeats:workQueue withUserInfo:v9 withQueue:0.0 withBlock:0.0];
    [(PLBBAgent *)self setChannelReconnectTimer:v8];
  }
}

- (void)channelDidBecomeInvalid:(id)invalid
{
  v24 = *MEMORY[0x277D85DE8];
  invalidCopy = invalid;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__PLBBAgent_channelDidBecomeInvalid___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F52C0 != -1)
    {
      dispatch_once(&qword_2811F52C0, block);
    }

    if (byte_2811F4FA3 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent channelDidBecomeInvalid:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent channelDidBecomeInvalid:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:623];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (([MEMORY[0x277D3F208] isBasebandProto] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandMav") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __37__PLBBAgent_channelDidBecomeInvalid___block_invoke_1080;
      v20[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v20[4] = v12;
      if (qword_2811F52C8 != -1)
      {
        dispatch_once(&qword_2811F52C8, v20);
      }

      if (byte_2811F4FA4 == 1)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"channelDidBecomeInvalid not valid for Protobuf channel"];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent2 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent channelDidBecomeInvalid:]"];
        [v14 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:625];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v23 = v13;
          _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      __assert_rtn("[PLBBAgent channelDidBecomeInvalid:]", "PLBBAgent.m", 626, "0");
    }
  }

  else
  {
    [(PLBBAgent *)self scheduleReconnect];
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PLBBAgent_channelDidBecomeInvalid___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FA3 = result;
  return result;
}

uint64_t __37__PLBBAgent_channelDidBecomeInvalid___block_invoke_1080(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FA4 = result;
  return result;
}

- (void)channel:(id)channel hasDataAvailable:(id)available
{
  v26 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  availableCopy = available;
  v8 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __38__PLBBAgent_channel_hasDataAvailable___block_invoke;
    v22 = &__block_descriptor_40_e5_v8__0lu32l8;
    v23 = v9;
    if (qword_2811F52D0 != -1)
    {
      dispatch_once(&qword_2811F52D0, &block);
    }

    if (byte_2811F4FA5 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s \n CT channel has data available", "-[PLBBAgent channel:hasDataAvailable:]", block, v20, v21, v22, v23];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent channel:hasDataAvailable:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:635];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16 = [PLBasebandMessage messageWithData:availableCopy];
  [v16 setAgent:self];
  [v16 logWithLogger:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 eventCode] == 2275)
  {
    [(PLBBAgent *)self postCDRXCapability:1];
  }

  objc_autoreleasePoolPop(v8);
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLBBAgent *)self setLastBBActivityTimestamp:monotonicDate];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __38__PLBBAgent_channel_hasDataAvailable___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FA5 = result;
  return result;
}

- (void)metricMessageDebugLog:(id)log
{
  logCopy = log;
  if ([MEMORY[0x277D3F208] isBasebandMav])
  {
    v5 = *MEMORY[0x277D3F5E0];
    v6 = @"BBMAVMsgMetricDump";
  }

  else
  {
    isBasebandProto = [MEMORY[0x277D3F208] isBasebandProto];
    v5 = *MEMORY[0x277D3F5E0];
    if (isBasebandProto)
    {
      v6 = @"BBSinopeMsgMetricDump";
    }

    else
    {
      v6 = @"BBICEMsgMetricDump";
    }
  }

  v8 = [(PLOperator *)PLBBAgent entryKeyForType:v5 andName:v6];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  if (v9)
  {
    v10 = *MEMORY[0x277D3F2B0];
    v11 = [logCopy objectForKeyedSubscript:*MEMORY[0x277D3F2B0]];
    [v9 setObject:v11 forKeyedSubscript:v10];

    v12 = *MEMORY[0x277D3F2B8];
    v13 = [logCopy objectForKeyedSubscript:*MEMORY[0x277D3F2B8]];
    v14 = [PLICEBBMetricUtility convertToStringData:v13];
    [v9 setObject:v14 forKeyedSubscript:v12];

    v15 = *MEMORY[0x277D3F2C8];
    v16 = [logCopy objectForKeyedSubscript:*MEMORY[0x277D3F2C8]];
    [v9 setObject:v16 forKeyedSubscript:v15];

    v17 = *MEMORY[0x277D3F2C0];
    v18 = [logCopy objectForKeyedSubscript:*MEMORY[0x277D3F2C0]];
    [v9 setObject:v18 forKeyedSubscript:v17];

    v19 = *MEMORY[0x277D3F2A8];
    v20 = [logCopy objectForKeyedSubscript:*MEMORY[0x277D3F2A8]];
    [v9 setObject:v20 forKeyedSubscript:v19];

    if ([MEMORY[0x277D3F208] isBasebandProto])
    {
      dictionary = [v9 dictionary];
      entryDate = [v9 entryDate];
      [(PLOperator *)self logForSubsystem:@"BasebandMetrics" category:@"MsgMetricDump" data:dictionary date:entryDate];
    }

    if (([MEMORY[0x277D3F208] isBasebandMav] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
    {
      [(PLBBAgent *)self logEntry:v9];
    }
  }

  else
  {
    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_error_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_ERROR, "metricMessage Unable to allocate memory for PLEntry", v24, 2u);
    }
  }
}

- (void)metricMessage:(id)message
{
  v56 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __27__PLBBAgent_metricMessage___block_invoke;
    v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v53[4] = v5;
    if (qword_2811F52D8 != -1)
    {
      dispatch_once(&qword_2811F52D8, v53);
    }

    if (byte_2811F4FA6 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent metricMessage:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent metricMessage:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:717];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v55 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = objc_opt_class();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__PLBBAgent_metricMessage___block_invoke_1102;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = v12;
  if (qword_2811F52E0 != -1)
  {
    dispatch_once(&qword_2811F52E0, block);
  }

  if (byte_2811F4FA7 == 1)
  {
    [(PLBBAgent *)self metricMessageDebugLog:messageCopy];
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLBBAgent *)self setLastBBActivityTimestamp:monotonicDate];

  if ([MEMORY[0x277D3F208] isBasebandMav])
  {
    v14 = +[PLMAVBBMetric sharedInstance];
    if (!v14)
    {
      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, "BBAgent Unable to access shared object", buf, 2u);
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        __assert_rtn("[PLBBAgent metricMessage:]", "PLBBAgent.m", 731, "0");
      }
    }

    v16 = *MEMORY[0x277D3F2C0];
    v17 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2C0]];
    if ([v17 intValue] == 680000)
    {

      goto LABEL_37;
    }

    v35 = [messageCopy objectForKeyedSubscript:v16];
    intValue = [v35 intValue];

    if (intValue == 703488)
    {
LABEL_37:
      if ([(PLOperator *)self isDebugEnabled])
      {
        messageCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"periodic MAV metric handler: %@", messageCopy];
        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent2 = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent metricMessage:]"];
        [v37 logMessage:messageCopy fromFile:lastPathComponent2 fromFunction:v40 fromLineNumber:736];

        v34 = PLLogCommon();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_39;
        }

        *buf = 138412290;
        v55 = messageCopy;
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    if ([(PLOperator *)self isDebugEnabled])
    {
      messageCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"aperiodic MAV metric handler: %@", messageCopy];
      v47 = MEMORY[0x277D3F178];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent3 = [v48 lastPathComponent];
      v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent metricMessage:]"];
      [v47 logMessage:messageCopy2 fromFile:lastPathComponent3 fromFunction:v50 fromLineNumber:743];

      v46 = PLLogCommon();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_47;
      }

      *buf = 138412290;
      v55 = messageCopy2;
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if (![MEMORY[0x277D3F208] isBasebandProto])
  {
    v14 = +[PLICEBBMetric sharedInstance];
    if (!v14)
    {
      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_ERROR, "BBAgent Unable to access shared object", buf, 2u);
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        __assert_rtn("[PLBBAgent metricMessage:]", "PLBBAgent.m", 778, "0");
      }
    }

    v16 = *MEMORY[0x277D3F2C0];
    v26 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2C0]];
    intValue2 = [v26 intValue];

    isDebugEnabled = [(PLOperator *)self isDebugEnabled];
    if (intValue2 == 1)
    {
      if (isDebugEnabled)
      {
        messageCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"periodic ICE metric handler: %@", messageCopy];
        v30 = MEMORY[0x277D3F178];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent4 = [v31 lastPathComponent];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent metricMessage:]"];
        [v30 logMessage:messageCopy fromFile:lastPathComponent4 fromFunction:v33 fromLineNumber:783];

        v34 = PLLogCommon();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
LABEL_39:

          goto LABEL_40;
        }

        *buf = 138412290;
        v55 = messageCopy;
LABEL_51:
        _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        goto LABEL_39;
      }

LABEL_40:
      v22 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2B0]];
      v23 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2B8]];
      v24 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2C8]];
LABEL_41:
      [v14 queuePeriodicMetricId:v22 payload:v23 forTrigger:v24];
      goto LABEL_49;
    }

    if (isDebugEnabled)
    {
      messageCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"aperiodic ICE metric handler: %@", messageCopy];
      v42 = MEMORY[0x277D3F178];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent5 = [v43 lastPathComponent];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent metricMessage:]"];
      [v42 logMessage:messageCopy2 fromFile:lastPathComponent5 fromFunction:v45 fromLineNumber:790];

      v46 = PLLogCommon();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
LABEL_47:

        goto LABEL_48;
      }

      *buf = 138412290;
      v55 = messageCopy2;
LABEL_53:
      _os_log_debug_impl(&dword_21A4C6000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_47;
    }

LABEL_48:
    v22 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2B0]];
    v23 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2B8]];
    v24 = [messageCopy objectForKeyedSubscript:v16];
    [v14 queueAperiodicMetricId:v22 payload:v23 profileId:v24];
    goto LABEL_49;
  }

  v18 = PLLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v55 = "[PLBBAgent metricMessage:]";
    _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "[BBAgent] : in @%s", buf, 0xCu);
  }

  v14 = +[PLSinopeBBMetric sharedInstance];
  if (!v14)
  {
    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_ERROR, "BBAgent Unable to access shared object", buf, 2u);
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      __assert_rtn("[PLBBAgent metricMessage:]", "PLBBAgent.m", 755, "0");
    }
  }

  v20 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2C0]];
  intValue3 = [v20 intValue];

  v22 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2B0]];
  v23 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2B8]];
  v24 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2C8]];
  if (intValue3 == 1625)
  {
    goto LABEL_41;
  }

  [v14 queueAperiodicMetricId:v22 payload:v23 forTrigger:v24];
LABEL_49:

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __27__PLBBAgent_metricMessage___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FA6 = result;
  return result;
}

uint64_t __27__PLBBAgent_metricMessage___block_invoke_1102(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FA7 = result;
  return result;
}

- (void)triggerMessage:(id)message
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __28__PLBBAgent_triggerMessage___block_invoke;
    v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v40[4] = v5;
    if (qword_2811F52E8 != -1)
    {
      dispatch_once(&qword_2811F52E8, v40);
    }

    if (byte_2811F4FA8 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent triggerMessage:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent triggerMessage:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:800];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v42 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = objc_opt_class();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__PLBBAgent_triggerMessage___block_invoke_1120;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = v12;
  if (qword_2811F52F0 != -1)
  {
    dispatch_once(&qword_2811F52F0, block);
  }

  if (byte_2811F4FA9 == 1)
  {
    if ([MEMORY[0x277D3F208] isBasebandMav])
    {
      v13 = *MEMORY[0x277D3F5E0];
      v14 = @"BBMAVMsgTriggerDump";
    }

    else
    {
      isBasebandProto = [MEMORY[0x277D3F208] isBasebandProto];
      v13 = *MEMORY[0x277D3F5E0];
      if (isBasebandProto)
      {
        v14 = @"BBSinopeMsgTriggerDump";
      }

      else
      {
        v14 = @"BBICEMsgTriggerDump";
      }
    }

    v16 = [(PLOperator *)PLBBAgent entryKeyForType:v13 andName:v14];
    v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16];
    if (v17)
    {
      v18 = *MEMORY[0x277D3F2D0];
      v19 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2D0]];
      [v17 setObject:v19 forKeyedSubscript:v18];

      v20 = *MEMORY[0x277D3F2D8];
      v21 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2D8]];
      [v17 setObject:v21 forKeyedSubscript:v20];

      v22 = *MEMORY[0x277D3F2E8];
      v23 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2E8]];
      [v17 setObject:v23 forKeyedSubscript:v22];

      v24 = *MEMORY[0x277D3F2E0];
      v25 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2E0]];
      [v17 setObject:v25 forKeyedSubscript:v24];

      v26 = *MEMORY[0x277D3F2A8];
      v27 = [messageCopy objectForKeyedSubscript:*MEMORY[0x277D3F2A8]];
      [v17 setObject:v27 forKeyedSubscript:v26];

      if ([MEMORY[0x277D3F208] isBasebandProto])
      {
        dictionary = [v17 dictionary];
        entryDate = [v17 entryDate];
        [(PLOperator *)self logForSubsystem:@"BasebandMetrics" category:@"MsgTriggerDump" data:dictionary date:entryDate];
      }

      if (([MEMORY[0x277D3F208] isBasebandMav] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
      {
        [(PLBBAgent *)self logEntry:v17];
      }
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v30 = objc_opt_class();
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __28__PLBBAgent_triggerMessage___block_invoke_2;
      v38[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v38[4] = v30;
      if (qword_2811F52F8 != -1)
      {
        dispatch_once(&qword_2811F52F8, v38);
      }

      if (byte_2811F4FAA == 1)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBBICEMsg unable to allocate memory for PLEntry"];
        v32 = MEMORY[0x277D3F178];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent2 = [v33 lastPathComponent];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent triggerMessage:]"];
        [v32 logMessage:v31 fromFile:lastPathComponent2 fromFunction:v35 fromLineNumber:821];

        v36 = PLLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v42 = v31;
          _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __28__PLBBAgent_triggerMessage___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FA8 = result;
  return result;
}

uint64_t __28__PLBBAgent_triggerMessage___block_invoke_1120(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FA9 = result;
  return result;
}

uint64_t __28__PLBBAgent_triggerMessage___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FAA = result;
  return result;
}

- (void)wakeMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__PLBBAgent_wakeMessage___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F5300 != -1)
    {
      dispatch_once(&qword_2811F5300, block);
    }

    if (byte_2811F4FAB == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent wakeMessage:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent wakeMessage:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:842];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([(PLOperator *)self isDebugEnabled])
  {
    v12 = objc_opt_new();
    [v12 setAgent:self];
    [v12 setMsgProcErr:0];
    messageCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"SleepWakeDataABM:", messageCopy];
    [v12 setPayload:messageCopy];

    [v12 setMsgType:&unk_282C11CD0];
    [v12 logEventNoneBBMsgAll];
  }

  v14 = objc_opt_new();
  [v14 setAgent:self];
  [v14 setMsgProcErr:0];
  [v14 setSwReason:@"baseband"];
  v15 = [messageCopy objectForKeyedSubscript:@"kKeyBasebandWakeType"];
  [v14 setBbWakeType:v15];

  v16 = [messageCopy objectForKeyedSubscript:@"kKeyBasebandWakeSubType"];
  [v14 setBbWakeSubType:v16];

  v17 = [messageCopy objectForKeyedSubscript:@"kKeyBasebandWakeChannel"];

  if (v17)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [messageCopy objectForKeyedSubscript:@"kKeyBasebandWakeChannel"];
    v20 = [v18 stringWithFormat:@"%@", v19];
    [v14 setBbWakeChannel:v20];
  }

  v21 = [messageCopy objectForKeyedSubscript:@"kKeyBasebandWakeData"];

  if (v21)
  {
    v22 = [messageCopy objectForKeyedSubscript:@"kKeyBasebandWakeData"];
    [v14 setBbWakeDataBin:v22];
  }

  v23 = [messageCopy objectForKeyedSubscript:@"kKeyBasebandWakeDataParsed"];

  if (v23)
  {
    v24 = [messageCopy objectForKeyedSubscript:@"kKeyBasebandWakeDataParsed"];
    [v14 setBbWakeDataParsed:v24];
  }

  [v14 logEventPointSleepWakeABM];

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __25__PLBBAgent_wakeMessage___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FAB = result;
  return result;
}

- (void)bootStateChange:(id)change
{
  v20 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __29__PLBBAgent_bootStateChange___block_invoke;
    v17[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v17[4] = v5;
    if (qword_2811F5308 != -1)
    {
      dispatch_once(&qword_2811F5308, v17);
    }

    if (byte_2811F4FAC == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent bootStateChange:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent bootStateChange:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:874];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__PLBBAgent_bootStateChange___block_invoke_1150;
  block[3] = &unk_278259658;
  block[4] = self;
  v16 = changeCopy;
  v13 = changeCopy;
  dispatch_async(workQueue, block);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __29__PLBBAgent_bootStateChange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FAC = result;
  return result;
}

void __29__PLBBAgent_bootStateChange___block_invoke_1150(uint64_t a1)
{
  v5 = objc_opt_new();
  [v5 setAgent:*(a1 + 32)];
  [v5 setMsgProcErr:0];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"BootStateChange:", *(a1 + 40)];
  [v5 setPayload:v2];

  [v5 setMsgType:&unk_282C11CB8];
  [v5 logEventNoneBBMsgAll];
  v3 = [*(a1 + 40) objectForKey:@"KeyBasebandBootState"];
  v4 = [v3 isEqualToString:@"BasebandBootStateIsReady"];

  if (v4)
  {
    if (([MEMORY[0x277D3F208] isBasebandProto] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandMav") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
    {
      [*(a1 + 32) setupKICEChannels];
    }

    else
    {
      [*(a1 + 32) setupMavABMChannel];
      [*(a1 + 32) setupBBChannelsWithAction:0];
    }
  }
}

- (void)handlePLBasebandEventNotification:(id)notification
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy__12;
  v7[4] = __Block_byref_object_dispose__12;
  notificationCopy = notification;
  v8 = notificationCopy;
  workQueue = [(PLOperator *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__PLBBAgent_handlePLBasebandEventNotification___block_invoke;
  v6[3] = &unk_27825F6D0;
  v6[4] = self;
  v6[5] = v7;
  dispatch_async(workQueue, v6);

  _Block_object_dispose(v7, 8);
}

void __47__PLBBAgent_handlePLBasebandEventNotification___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    v3 = [v2 userInfo];

    if (v3)
    {
      v4 = [*(*(*(a1 + 40) + 8) + 40) userInfo];
      v5 = [v4 objectForKeyedSubscript:@"rat"];
      if ([v5 caseInsensitiveCompare:@"LTE"])
      {
      }

      else
      {
        v6 = [v4 objectForKeyedSubscript:@"state"];
        v7 = [v6 caseInsensitiveCompare:@"Connected"];

        if (!v7)
        {
          [qword_2811F5310 timeIntervalSinceNow];
          if (fabs(v8) > 30.0 && qword_2811F5318 == 0)
          {
            objc_initWeak(&location, *(a1 + 32));
            v10 = objc_alloc(MEMORY[0x277D3F250]);
            v11 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:30.0];
            v12 = [*(a1 + 32) workQueue];
            v15 = MEMORY[0x277D85DD0];
            v16 = 3221225472;
            v17 = __47__PLBBAgent_handlePLBasebandEventNotification___block_invoke_2;
            v18 = &unk_27825A810;
            objc_copyWeak(&v19, &location);
            v13 = [v10 initWithFireDate:v11 withInterval:0 withTolerance:0 repeats:v12 withUserInfo:&v15 withQueue:0.0 withBlock:0.0];
            v14 = qword_2811F5318;
            qword_2811F5318 = v13;

            [qword_2811F5318 arm];
            objc_destroyWeak(&v19);
            objc_destroyWeak(&location);
          }
        }
      }
    }
  }
}

void __47__PLBBAgent_handlePLBasebandEventNotification___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handlePostCDRXCapability];
}

- (void)handlePostCDRXCapability
{
  [(PLBBAgent *)self postCDRXCapability:0];
  v2 = qword_2811F5318;
  qword_2811F5318 = 0;
}

- (void)postCDRXCapability:(BOOL)capability
{
  capabilityCopy = capability;
  v21 = *MEMORY[0x277D85DE8];
  if (qword_2811F5318)
  {
    [qword_2811F5318 invalidate];
    v4 = qword_2811F5318;
    qword_2811F5318 = 0;
  }

  if (capabilityCopy)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v6 = qword_2811F5310;
    qword_2811F5310 = monotonicDate;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__PLBBAgent_postCDRXCapability___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F5320 != -1)
    {
      dispatch_once(&qword_2811F5320, block);
    }

    if (byte_2811F4FAD == 1)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277D3F268] formattedStringForDate:qword_2811F5310];
      v10 = NSStringFromBOOL();
      v11 = [v8 stringWithFormat:@"%@ %@", v9, v10];

      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent postCDRXCapability:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:942];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        out_token = 138412290;
        v20 = v11;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", &out_token, 0xCu);
      }
    }
  }

  out_token = 0;
  if (!notify_register_check("com.apple.powerlog.BasebandHasCDRXCapability", &out_token))
  {
    if (!notify_set_state(out_token, capabilityCopy))
    {
      notify_post("com.apple.powerlog.BasebandHasCDRXCapability");
    }

    notify_cancel(out_token);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __32__PLBBAgent_postCDRXCapability___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FAD = result;
  return result;
}

+ (id)entryEventPointDefinitions
{
  v39 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isBasebandMav])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v2 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__PLBBAgent_entryEventPointDefinitions__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v2;
      if (qword_2811F5328 != -1)
      {
        dispatch_once(&qword_2811F5328, block);
      }

      if (byte_2811F4FAE == 1)
      {
        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"KMAV point defs"];
        v4 = MEMORY[0x277D3F178];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent = [v5 lastPathComponent];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBBAgent entryEventPointDefinitions]"];
        [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:966];

        v8 = PLLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v38 = v3;
          _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v35[0] = @"SleepWakeActivityMavABM";
    v9 = +[PLBBSleepWakeMsg entryEventPointDefinitionSleepWakeActivityMavABM];
    v36[0] = v9;
    v35[1] = @"TelephonyActivity";
    v10 = +[PLBBTelephonyActivityMsg entryEventPointDefinitionTelephonyActivity];
    v36[1] = v10;
    v35[2] = @"CommandInfo";
    v11 = +[PLBBAgent entryEventPointDefinitionCommandInfo];
    v36[2] = v11;
    v12 = MEMORY[0x277CBEAC0];
    v13 = v36;
    v14 = v35;
    goto LABEL_10;
  }

  if (([MEMORY[0x277D3F208] isBasebandProto] & 1) == 0)
  {
    if ([MEMORY[0x277D3F208] isBasebandIce])
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v18 = objc_opt_class();
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __39__PLBBAgent_entryEventPointDefinitions__block_invoke_1174;
        v28 = &__block_descriptor_40_e5_v8__0lu32l8;
        v29 = v18;
        if (qword_2811F5330 != -1)
        {
          dispatch_once(&qword_2811F5330, &v25);
        }

        if (byte_2811F4FAF == 1)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"KICE point defs", v25, v26, v27, v28, v29];
          v20 = MEMORY[0x277D3F178];
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
          lastPathComponent2 = [v21 lastPathComponent];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBBAgent entryEventPointDefinitions]"];
          [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:984];

          v24 = PLLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v38 = v19;
            _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v33[0] = @"SleepWakeActivityIceABM";
      v9 = [PLBBSleepWakeMsg entryEventPointDefinitionSleepWakeActivityIceABM:v25];
      v33[1] = @"TelephonyActivity";
      v34[0] = v9;
      v10 = +[PLBBTelephonyActivityMsg entryEventPointDefinitionTelephonyActivity];
      v34[1] = v10;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
      goto LABEL_11;
    }

    v31[0] = @"CMCDMAExitCode";
    v9 = +[PLBBEurekaEventMsg bbEuEvMsgNameCMCDMAExit];
    v32[0] = v9;
    v31[1] = @"SleepWakeActivityMavABM";
    v10 = +[PLBBSleepWakeMsg entryEventPointDefinitionSleepWakeActivityMavABM];
    v32[1] = v10;
    v31[2] = @"TelephonyActivity";
    v11 = +[PLBBTelephonyActivityMsg entryEventPointDefinitionTelephonyActivity];
    v32[2] = v11;
    v12 = MEMORY[0x277CBEAC0];
    v13 = v32;
    v14 = v31;
LABEL_10:
    v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:3];

LABEL_11:
    goto LABEL_14;
  }

  v15 = MEMORY[0x277CBEC10];
LABEL_14:
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __39__PLBBAgent_entryEventPointDefinitions__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FAE = result;
  return result;
}

uint64_t __39__PLBBAgent_entryEventPointDefinitions__block_invoke_1174(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FAF = result;
  return result;
}

+ (id)entryEventPointDefinitionCommandInfo
{
  v18[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v17[0] = *MEMORY[0x277D3F4E8];
    v15 = *MEMORY[0x277D3F568];
    v16 = &unk_282C1C688;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18[0] = v2;
    v17[1] = *MEMORY[0x277D3F540];
    v13[0] = @"commandType";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v14[0] = commonTypeDict_IntegerFormat;
    v13[1] = @"commandResult";
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
    v14[1] = commonTypeDict_BoolFormat;
    v13[2] = @"commandResultDescription";
    mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_StringFormat = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
    v14[2] = commonTypeDict_StringFormat;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v18[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventForwardDefinitions
{
  v32 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isBasebandMav] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v3 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__PLBBAgent_entryEventForwardDefinitions__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v3;
      if (qword_2811F5338 != -1)
      {
        dispatch_once(&qword_2811F5338, block);
      }

      if (byte_2811F4FB0 == 1)
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"KICE forward defs"];
        v5 = MEMORY[0x277D3F178];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent = [v6 lastPathComponent];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBBAgent entryEventForwardDefinitions]"];
        [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1026];

        v9 = PLLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v4;
          _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v28[0] = @"TelephonyRegistration";
    v10 = +[PLBBTelephonyRegMsg bbEuLogMsgNameTelephonyReg];
    v28[1] = @"SDM";
    v29[0] = v10;
    entryEventForwardSDM = [self entryEventForwardSDM];
    v29[1] = entryEventForwardSDM;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    goto LABEL_11;
  }

  if (([MEMORY[0x277D3F208] isBasebandProto] & 1) == 0)
  {
    if ([MEMORY[0x277D3F208] isBasebandClass:1003003] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003002))
    {
      v24[0] = @"TelephonyRegistration";
      v10 = +[PLBBTelephonyRegMsg bbEuLogMsgNameTelephonyReg];
      v25[0] = v10;
      v24[1] = @"SDEventActionCode";
      entryEventForwardSDM = +[PLBBEurekaEventMsg bbEuEvMsgNameSDEventActionCode];
      v25[1] = entryEventForwardSDM;
      v24[2] = @"WCDMARRCState";
      v15 = +[PLBBEurekaEventMsg bbEuEvMsgNameWCDMARRCState];
      v25[2] = v15;
      v24[3] = @"LTERRCState";
      v16 = +[PLBBEurekaEventMsg bbEuEvMsgNameLTERRCState];
      v25[3] = v16;
      v24[4] = @"UTRANRRCState";
      v17 = +[PLBBEurekaEventMsg bbEuEvMsgUTRANRRCState];
      v25[4] = v17;
      v24[5] = @"GSML1State";
      v18 = +[PLBBEurekaEventMsg bbEuEvMsgNameGSML1State];
      v25[5] = v18;
      v24[6] = @"CMCallEventOrigCode";
      v19 = +[PLBBEurekaEventMsg bbEuEvMsgNameCMCallEventOrigV2];
      v25[6] = v19;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v25;
      v22 = v24;
    }

    else
    {
      v26[0] = @"TelephonyRegistration";
      v10 = +[PLBBTelephonyRegMsg bbEuLogMsgNameTelephonyReg];
      v27[0] = v10;
      v26[1] = @"SDEventActionCode";
      entryEventForwardSDM = +[PLBBEurekaEventMsg bbEuEvMsgNameSDEventActionCode];
      v27[1] = entryEventForwardSDM;
      v26[2] = @"WCDMARRCState";
      v15 = +[PLBBEurekaEventMsg bbEuEvMsgNameWCDMARRCState];
      v27[2] = v15;
      v26[3] = @"LTERRCState";
      v16 = +[PLBBEurekaEventMsg bbEuEvMsgNameLTERRCState];
      v27[3] = v16;
      v26[4] = @"UTRANRRCState";
      v17 = +[PLBBEurekaEventMsg bbEuEvMsgUTRANRRCState];
      v27[4] = v17;
      v26[5] = @"GSML1State";
      v18 = +[PLBBEurekaEventMsg bbEuEvMsgNameGSML1State];
      v27[5] = v18;
      v26[6] = @"CMCallEventOrigCode";
      v19 = +[PLBBEurekaEventMsg bbEuEvMsgNameCMCallEventOrig];
      v27[6] = v19;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v27;
      v22 = v26;
    }

    v12 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:7];

LABEL_11:
    goto LABEL_12;
  }

  v12 = MEMORY[0x277CBEC10];
LABEL_12:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __41__PLBBAgent_entryEventForwardDefinitions__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FB0 = result;
  return result;
}

+ (id)entryEventBackwardDefinitions
{
  v65[11] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isBasebandClass:1003007])
  {
    v64[0] = @"LTESleepMgrStats";
    v45 = +[PLBBEurekaLogMsg bbEuLogMsgNameLTESleepMgrStats];
    v65[0] = v45;
    v64[1] = @"MavBBHwOther";
    v44 = +[PLBBMavLogMsg entryEventMavBBMav16BHwOther];
    v65[1] = v44;
    v64[2] = @"MavBBHwOtherPerRAT";
    v2 = +[PLBBMavLogMsg entryEventBackwardMavBBHwOtherPerRAT];
    v65[2] = v2;
    v64[3] = @"BBMavHwRfLTE";
    v3 = +[PLBBMav16BHwRfLTELogMsg entryEventBackwardDefinitionBBMav16BHwRfLTE];
    v65[3] = v3;
    v64[4] = @"BBMavHwRfWCDMA";
    v4 = +[PLBBMavHwRfWCDMALogMsg entryEventBackwardDefinitionBBMav16BHwRfWCDMA];
    v65[4] = v4;
    v64[5] = @"BBMavHwRfGSM";
    v5 = +[PLBBMavHwRfGSMLogMsg entryEventBackwardDefinitionBBMavHwRfGSM];
    v65[5] = v5;
    v64[6] = @"BBMavHwRfTDS";
    v6 = +[PLBBMavHwRfTDSLogMsg entryEventBackwardDefinitionBBMavHwRfTDS];
    v65[6] = v6;
    v64[7] = @"BBMavHwRf1x";
    v7 = +[PLBBMavHwRf1xLogMsg entryEventBackwardDefinitionBBMavHwRf1x];
    v65[7] = v7;
    v64[8] = @"BBMavHwRfHDR";
    v8 = +[PLBBMavHwRfHDRLogMsg entryEventBackwardDefinitionBBMavHwRfHDR];
    v65[8] = v8;
    v64[9] = @"BBMavHwRfOos";
    v9 = +[PLBBMavHwRfOOSLogMsg entryEventBackwardDefinitionOOSPerRat];
    v65[9] = v9;
    v64[10] = @"CMCallEventEndCode";
    v10 = +[PLBBEurekaEventMsg bbEuEvMsgNameCMCallEventEndV2];
    v65[10] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:11];

LABEL_10:
    v18 = v44;
    v19 = v45;
LABEL_11:

    goto LABEL_12;
  }

  if ([MEMORY[0x277D3F208] isBasebandClass:1003005])
  {
    v62[0] = @"LTESleepMgrStats";
    v45 = +[PLBBEurekaLogMsg bbEuLogMsgNameLTESleepMgrStats];
    v63[0] = v45;
    v62[1] = @"MavBBHwOther";
    v44 = +[PLBBMavLogMsg entryEventMavBBMav16HwOther];
    v63[1] = v44;
    v62[2] = @"MavBBHwOtherPerRAT";
    v2 = +[PLBBMavLogMsg entryEventBackwardMavBBHwOtherPerRAT];
    v63[2] = v2;
    v62[3] = @"BBMavHwRfLTE";
    v3 = +[PLBBMav16HwRfLTELogMsg entryEventBackwardDefinitionBBMav16HwRfLTE];
    v63[3] = v3;
    v62[4] = @"BBMavHwRfWCDMA";
    v4 = +[PLBBMavHwRfWCDMALogMsg entryEventBackwardDefinitionBBMav16HwRfWCDMA];
    v63[4] = v4;
    v62[5] = @"BBMavHwRfGSM";
    v5 = +[PLBBMavHwRfGSMLogMsg entryEventBackwardDefinitionBBMavHwRfGSM];
    v63[5] = v5;
    v62[6] = @"BBMavHwRfTDS";
    v6 = +[PLBBMavHwRfTDSLogMsg entryEventBackwardDefinitionBBMavHwRfTDS];
    v63[6] = v6;
    v62[7] = @"BBMavHwRf1x";
    v7 = +[PLBBMavHwRf1xLogMsg entryEventBackwardDefinitionBBMavHwRf1x];
    v63[7] = v7;
    v62[8] = @"BBMavHwRfHDR";
    v12 = +[PLBBMavHwRfHDRLogMsg entryEventBackwardDefinitionBBMavHwRfHDR];
    v63[8] = v12;
    v62[9] = @"BBMavHwRfOos";
    v13 = +[PLBBMavHwRfOOSLogMsg entryEventBackwardDefinitionOOSPerRat];
    v63[9] = v13;
    v62[10] = @"CMCallEventEndCode";
    v14 = +[PLBBEurekaEventMsg bbEuEvMsgNameCMCallEventEndV2];
    v63[10] = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v63;
    v17 = v62;
LABEL_9:
    v11 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:11];

    goto LABEL_10;
  }

  if ([MEMORY[0x277D3F208] isBasebandClass:1003004])
  {
    v60[0] = @"LTESleepMgrStats";
    v45 = +[PLBBEurekaLogMsg bbEuLogMsgNameLTESleepMgrStats];
    v61[0] = v45;
    v60[1] = @"MavBBHwOther";
    v44 = +[PLBBMavLogMsg entryEventMavBBMav13HwOther];
    v61[1] = v44;
    v60[2] = @"MavBBHwOtherPerRAT";
    v2 = +[PLBBMavLogMsg entryEventBackwardMavBBHwOtherPerRAT];
    v61[2] = v2;
    v60[3] = @"BBMavHwRfLTE";
    v3 = +[PLBBMavHwRfLTELogMsg entryEventBackwardDefinitionBBMav13HwRfLTE];
    v61[3] = v3;
    v60[4] = @"BBMavHwRfWCDMA";
    v4 = +[PLBBMavHwRfWCDMALogMsg entryEventBackwardDefinitionBBMavHwRfWCDMA];
    v61[4] = v4;
    v60[5] = @"BBMavHwRfGSM";
    v5 = +[PLBBMavHwRfGSMLogMsg entryEventBackwardDefinitionBBMavHwRfGSM];
    v61[5] = v5;
    v60[6] = @"BBMavHwRfTDS";
    v6 = +[PLBBMavHwRfTDSLogMsg entryEventBackwardDefinitionBBMavHwRfTDS];
    v61[6] = v6;
    v60[7] = @"BBMavHwRf1x";
    v7 = +[PLBBMavHwRf1xLogMsg entryEventBackwardDefinitionBBMavHwRf1x];
    v61[7] = v7;
    v60[8] = @"BBMavHwRfHDR";
    v12 = +[PLBBMavHwRfHDRLogMsg entryEventBackwardDefinitionBBMavHwRfHDR];
    v61[8] = v12;
    v60[9] = @"BBMavHwRfOos";
    v13 = +[PLBBMavHwRfOOSLogMsg entryEventBackwardDefinitionOOSPerRat];
    v61[9] = v13;
    v60[10] = @"CMCallEventEndCode";
    v14 = +[PLBBEurekaEventMsg bbEuEvMsgNameCMCallEventEndV2];
    v61[10] = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v61;
    v17 = v60;
    goto LABEL_9;
  }

  if ([MEMORY[0x277D3F208] isBasebandClass:1003003])
  {
    v58[0] = @"LTESleepMgrStats";
    v45 = +[PLBBEurekaLogMsg bbEuLogMsgNameLTESleepMgrStats];
    v59[0] = v45;
    v58[1] = @"MavBBHwOther";
    v44 = +[PLBBMavLogMsg entryEventMavBBMav10HwOther];
    v59[1] = v44;
    v58[2] = @"MavBBHwOtherPerRAT";
    v2 = +[PLBBMavLogMsg entryEventBackwardMavBBHwOtherPerRAT];
    v59[2] = v2;
    v58[3] = @"BBMavHwRfLTE";
    v3 = +[PLBBMavHwRfLTELogMsg entryEventBackwardDefinitionBBMav10HwRfLTE];
    v59[3] = v3;
    v58[4] = @"BBMavHwRfWCDMA";
    v4 = +[PLBBMavHwRfWCDMALogMsg entryEventBackwardDefinitionBBMavHwRfWCDMA];
    v59[4] = v4;
    v58[5] = @"BBMavHwRfGSM";
    v5 = +[PLBBMavHwRfGSMLogMsg entryEventBackwardDefinitionBBMavHwRfGSM];
    v59[5] = v5;
    v58[6] = @"BBMavHwRfTDS";
    v6 = +[PLBBMavHwRfTDSLogMsg entryEventBackwardDefinitionBBMavHwRfTDS];
    v59[6] = v6;
    v58[7] = @"BBMavHwRf1x";
    v7 = +[PLBBMavHwRf1xLogMsg entryEventBackwardDefinitionBBMavHwRf1x];
    v59[7] = v7;
    v58[8] = @"BBMavHwRfHDR";
    v12 = +[PLBBMavHwRfHDRLogMsg entryEventBackwardDefinitionBBMavHwRfHDR];
    v59[8] = v12;
    v58[9] = @"BBMavHwRfOos";
    v13 = +[PLBBMavHwRfOOSLogMsg entryEventBackwardDefinitionOOSPerRat];
    v59[9] = v13;
    v58[10] = @"CMCallEventEndCode";
    v14 = +[PLBBEurekaEventMsg bbEuEvMsgNameCMCallEventEndV2];
    v59[10] = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v59;
    v17 = v58;
    goto LABEL_9;
  }

  if ([MEMORY[0x277D3F208] isBasebandClass:1003002])
  {
    v56[0] = @"LTESleepMgrStats";
    v19 = +[PLBBEurekaLogMsg bbEuLogMsgNameLTESleepMgrStats];
    v57[0] = v19;
    v56[1] = @"MavBBHwOther";
    v18 = +[PLBBMavLogMsg entryEventBackwardMavBBHwOther];
    v57[1] = v18;
    v56[2] = @"MavBBHwOtherPerRAT";
    v22 = +[PLBBMavLogMsg entryEventBackwardMavBBHwOtherPerRAT];
    v57[2] = v22;
    v56[3] = @"CMCallEventEndCode";
    v23 = +[PLBBEurekaEventMsg bbEuEvMsgNameCMCallEventEndV2];
    v57[3] = v23;
    v24 = MEMORY[0x277CBEAC0];
    v25 = v57;
    v26 = v56;
LABEL_19:
    v11 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:4];

    goto LABEL_11;
  }

  if ([MEMORY[0x277D3F208] isBasebandClass:1003001])
  {
    v54[0] = @"LTESleepMgrStats";
    v19 = +[PLBBEurekaLogMsg bbEuLogMsgNameLTESleepMgrStats];
    v55[0] = v19;
    v54[1] = @"MavBBHwOther";
    v18 = +[PLBBMavLogMsg entryEventBackwardMavBBHwOther];
    v55[1] = v18;
    v54[2] = @"MavBBHwOtherPerRAT";
    v22 = +[PLBBMavLogMsg entryEventBackwardMavBBHwOtherPerRAT];
    v55[2] = v22;
    v54[3] = @"CMCallEventEndCode";
    v23 = +[PLBBEurekaEventMsg bbEuEvMsgNameCMCallEventEnd];
    v55[3] = v23;
    v24 = MEMORY[0x277CBEAC0];
    v25 = v55;
    v26 = v54;
    goto LABEL_19;
  }

  if ([MEMORY[0x277D3F208] isBasebandMav])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v27 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__PLBBAgent_entryEventBackwardDefinitions__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v27;
      if (qword_2811F5340 != -1)
      {
        dispatch_once(&qword_2811F5340, block);
      }

      if (byte_2811F4FB1 == 1)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"KMAV backward defs"];
        v29 = MEMORY[0x277D3F178];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent = [v30 lastPathComponent];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBBAgent entryEventBackwardDefinitions]"];
        [v29 logMessage:v28 fromFile:lastPathComponent fromFunction:v32 fromLineNumber:1277];

        v33 = PLLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v53 = v28;
          _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v50[0] = @"BBMavPeriodicMetrics";
    v19 = +[PLMAVBBHardwareMessage entryEventBackwardDefinitionBBMavPeriodicMetrics];
    v50[1] = @"BBMavEventMetrics";
    v51[0] = v19;
    v18 = +[PLMAVBBHardwareMessage entryEventBackwardDefinitionBBMavEventMetrics];
    v51[1] = v18;
    v34 = MEMORY[0x277CBEAC0];
    v35 = v51;
    v36 = v50;
LABEL_38:
    v11 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:2];
    goto LABEL_11;
  }

  if ([MEMORY[0x277D3F208] isBasebandIce])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v37 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __42__PLBBAgent_entryEventBackwardDefinitions__block_invoke_1210;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v37;
      if (qword_2811F5348 != -1)
      {
        dispatch_once(&qword_2811F5348, v46);
      }

      if (byte_2811F4FB2 == 1)
      {
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"KICE backward defs"];
        v39 = MEMORY[0x277D3F178];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent2 = [v40 lastPathComponent];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBBAgent entryEventBackwardDefinitions]"];
        [v39 logMessage:v38 fromFile:lastPathComponent2 fromFunction:v42 fromLineNumber:1287];

        v43 = PLLogCommon();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v53 = v38;
          _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v48[0] = @"BBIcePeriodicMetrics";
    v19 = +[PLICEBBHardwareMessage entryEventBackwardDefinitionBBIcePeriodicMetrics];
    v48[1] = @"BBIceEventMetrics";
    v49[0] = v19;
    v18 = +[PLICEBBHardwareMessage entryEventBackwardDefinitionBBIceEventMetrics];
    v49[1] = v18;
    v34 = MEMORY[0x277CBEAC0];
    v35 = v49;
    v36 = v48;
    goto LABEL_38;
  }

  v11 = MEMORY[0x277CBEC10];
LABEL_12:
  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __42__PLBBAgent_entryEventBackwardDefinitions__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FB1 = result;
  return result;
}

uint64_t __42__PLBBAgent_entryEventBackwardDefinitions__block_invoke_1210(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FB2 = result;
  return result;
}

+ (id)entryEventNoneDefinitions
{
  v22[5] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isBasebandMav])
  {
    v21[0] = @"BBMAVMsgTriggerDump";
    v3 = +[PLBBICEMsg msgTriggerTableSchema];
    v22[0] = v3;
    v21[1] = @"BBMAVMsgMetricDump";
    v4 = +[PLBBICEMsg msgMetricTableSchema];
    v22[1] = v4;
    v5 = +[PLBBAgent getNameBBReport];
    v21[2] = v5;
    entryEventNoneBBReport = [self entryEventNoneBBReport];
    v22[2] = entryEventNoneBBReport;
    v21[3] = @"BBMsgLite";
    entryIceMsgLite = [self entryIceMsgLite];
    v22[3] = entryIceMsgLite;
    v21[4] = @"BBMsgAll";
    entryEventNoneBBReport2 = +[PLBBMsgAll entryEventNoneBBMsgAll];
    v22[4] = entryEventNoneBBReport2;
    v9 = MEMORY[0x277CBEAC0];
    v10 = v22;
    v11 = v21;
LABEL_3:
    v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:5];

    goto LABEL_6;
  }

  if (([MEMORY[0x277D3F208] isBasebandProto] & 1) == 0)
  {
    if ([MEMORY[0x277D3F208] isBasebandIce])
    {
      v19[0] = @"BBICEMsgTriggerDump";
      v3 = +[PLBBICEMsg msgTriggerTableSchema];
      v20[0] = v3;
      v19[1] = @"BBICEMsgMetricDump";
      v4 = +[PLBBICEMsg msgMetricTableSchema];
      v20[1] = v4;
      v5 = +[PLBBAgent getNameBBReport];
      v19[2] = v5;
      entryEventNoneBBReport = [self entryEventNoneBBReport];
      v20[2] = entryEventNoneBBReport;
      v19[3] = @"BBMsgLite";
      entryIceMsgLite = [self entryIceMsgLite];
      v20[3] = entryIceMsgLite;
      v19[4] = @"BBMsgAll";
      entryEventNoneBBReport2 = +[PLBBMsgAll entryEventNoneBBMsgAll];
      v20[4] = entryEventNoneBBReport2;
      v9 = MEMORY[0x277CBEAC0];
      v10 = v20;
      v11 = v19;
    }

    else if ([MEMORY[0x277D3F208] isBasebandClass:1003003] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003002))
    {
      v15[0] = @"CMCallEventConnCode";
      v3 = +[PLBBEurekaEventMsg bbEuEvMsgNameCMCallEventConnV2];
      v16[0] = v3;
      v15[1] = @"BBEurekaEventMsgLite";
      v4 = +[PLBBEurekaEventMsg bbEuEvMsgNameBBEurekaMsgLite];
      v16[1] = v4;
      v15[2] = @"EventNotProcessed";
      v5 = +[PLBBEurekaEventMsg bbEuEvMsgEventNotProcessed];
      v16[2] = v5;
      v15[3] = @"BBMsgAll";
      entryEventNoneBBReport = +[PLBBMsgAll entryEventNoneBBMsgAll];
      v16[3] = entryEventNoneBBReport;
      entryIceMsgLite = +[PLBBAgent getNameBBReport];
      v15[4] = entryIceMsgLite;
      entryEventNoneBBReport2 = [self entryEventNoneBBReport];
      v16[4] = entryEventNoneBBReport2;
      v9 = MEMORY[0x277CBEAC0];
      v10 = v16;
      v11 = v15;
    }

    else
    {
      v17[0] = @"CMCallEventConnCode";
      v3 = +[PLBBEurekaEventMsg bbEuEvMsgNameCMCallEventConn];
      v18[0] = v3;
      v17[1] = @"BBEurekaEventMsgLite";
      v4 = +[PLBBEurekaEventMsg bbEuEvMsgNameBBEurekaMsgLite];
      v18[1] = v4;
      v17[2] = @"EventNotProcessed";
      v5 = +[PLBBEurekaEventMsg bbEuEvMsgEventNotProcessed];
      v18[2] = v5;
      v17[3] = @"BBMsgAll";
      entryEventNoneBBReport = +[PLBBMsgAll entryEventNoneBBMsgAll];
      v18[3] = entryEventNoneBBReport;
      entryIceMsgLite = +[PLBBAgent getNameBBReport];
      v17[4] = entryIceMsgLite;
      entryEventNoneBBReport2 = [self entryEventNoneBBReport];
      v18[4] = entryEventNoneBBReport2;
      v9 = MEMORY[0x277CBEAC0];
      v10 = v18;
      v11 = v17;
    }

    goto LABEL_3;
  }

  v12 = MEMORY[0x277CBEC10];
LABEL_6:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLBBAgent)init
{
  v38 = *MEMORY[0x277D85DE8];
  if (![MEMORY[0x277D3F208] hasBaseband])
  {
LABEL_29:
    selfCopy = 0;
    goto LABEL_30;
  }

  v35.receiver = self;
  v35.super_class = PLBBAgent;
  v3 = [(PLAgent *)&v35 init];
  self = v3;
  if (!v3)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v15 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __17__PLBBAgent_init__block_invoke_1230;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v15;
      if (qword_2811F5360 != -1)
      {
        dispatch_once(&qword_2811F5360, block);
      }

      if (byte_2811F4FB5 == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBBAgent: failed to init"];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent init]"];
        [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:1409];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v37 = v16;
          _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    goto LABEL_21;
  }

  v3->_agentInited = 0;
  v4 = +[PLTelephonyConnection sharedTelephonyConnection];
  self->_connection = v4;
  if (!v4)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v5 = objc_opt_class();
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __17__PLBBAgent_init__block_invoke;
      v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v34[4] = v5;
      if (qword_2811F5350 != -1)
      {
        dispatch_once(&qword_2811F5350, v34);
      }

      if (byte_2811F4FB3 == 1)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"no telephony connection"];
        v7 = MEMORY[0x277D3F178];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent2 = [v8 lastPathComponent];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent init]"];
        [v7 logMessage:v6 fromFile:lastPathComponent2 fromFunction:v10 fromLineNumber:1394];

        v11 = PLLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v37 = v6;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    [MEMORY[0x277D3F180] debugEnabled];
  }

  self->_lastBBProtoPower = 0.0;
  self->_lastGWPower = 0.0;
  connection = self->_connection;
  if (!connection)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v23 = objc_opt_class();
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __17__PLBBAgent_init__block_invoke_1224;
      v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v33[4] = v23;
      if (qword_2811F5358 != -1)
      {
        dispatch_once(&qword_2811F5358, v33);
      }

      if (byte_2811F4FB4 == 1)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BBAgent no connection"];
        v25 = MEMORY[0x277D3F178];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent3 = [v26 lastPathComponent];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent init]"];
        [v25 logMessage:v24 fromFile:lastPathComponent3 fromFunction:v28 fromLineNumber:1401];

        v29 = PLLogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v37 = v24;
          _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    goto LABEL_29;
  }

  [(PLTelephonyConnection *)connection setObserverAgent:self];
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  currentCallList = self->_currentCallList;
  self->_currentCallList = v13;

  self->_lteCurrentState = 0;
LABEL_21:
  self = self;
  selfCopy = self;
LABEL_30:

  v30 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

uint64_t __17__PLBBAgent_init__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FB3 = result;
  return result;
}

uint64_t __17__PLBBAgent_init__block_invoke_1224(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FB4 = result;
  return result;
}

uint64_t __17__PLBBAgent_init__block_invoke_1230(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FB5 = result;
  return result;
}

- (void)setupTelephonyRegistrationChannels
{
  connection = [(PLBBAgent *)self connection];
  [connection registerCallback:TelephonyNotificationCB forTelephonyNotification:*MEMORY[0x277CC3BE8]];

  connection2 = [(PLBBAgent *)self connection];
  [connection2 registerCallback:TelephonyNotificationCB forTelephonyNotification:*MEMORY[0x277CC3E48]];

  connection3 = [(PLBBAgent *)self connection];
  [connection3 registerCallback:TelephonyNotificationCB forTelephonyNotification:*MEMORY[0x277CC3CB0]];

  connection4 = [(PLBBAgent *)self connection];
  [connection4 registerCallback:TelephonyNotificationCB forTelephonyNotification:*MEMORY[0x277CC3D58]];

  connection5 = [(PLBBAgent *)self connection];
  [connection5 registerCallback:TelephonyNotificationCB forTelephonyNotification:*MEMORY[0x277CC4310]];
}

uint64_t __72__PLBBAgent_connectionStateChanged_connection_dataConnectionStatusInfo___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FB6 = result;
  return result;
}

- (void)dataStatus:(id)status dataStatusInfo:(id)info
{
  v65 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  infoCopy = info;
  isBasebandDSDS = [MEMORY[0x277D3F208] isBasebandDSDS];
  if (!infoCopy || !isBasebandDSDS)
  {
    goto LABEL_25;
  }

  v9 = [(PLBBAgent *)self getSubsIdFromCTContext:statusCopy];
  v10 = v9;
  v59 = v9;
  if (v9 == -1)
  {
    v21 = 1;
    goto LABEL_15;
  }

  indicator = [infoCopy indicator];
  dsdsRegMsgs = [(PLBBAgent *)self dsdsRegMsgs];
  v13 = [dsdsRegMsgs objectAtIndexedSubscript:v10];
  if (indicator != [v13 dataIndicator])
  {
    goto LABEL_11;
  }

  dataBearerSoMask = [infoCopy dataBearerSoMask];
  dsdsRegMsgs2 = [(PLBBAgent *)self dsdsRegMsgs];
  v16 = [dsdsRegMsgs2 objectAtIndexedSubscript:v10];
  serviceOpt = [v16 serviceOpt];

  if (dataBearerSoMask != serviceOpt)
  {
    goto LABEL_12;
  }

  if ([MEMORY[0x277D3F258] isFullModeDaemon])
  {
    dsdsRegMsgs = [(PLBBAgent *)self dsdsRegMsgs];
    v13 = [dsdsRegMsgs objectAtIndexedSubscript:v10];
    if ([v13 dataAttached] != -1)
    {
      dsdsRegMsgs3 = [(PLBBAgent *)self dsdsRegMsgs];
      v19 = [dsdsRegMsgs3 objectAtIndexedSubscript:v10];
      dataAttached = [v19 dataAttached];
      LOBYTE(dataAttached) = (dataAttached == 0) ^ [infoCopy attached];

      if (dataAttached)
      {
        goto LABEL_9;
      }

LABEL_12:
      indicator2 = [infoCopy indicator];
      dsdsRegMsgs4 = [(PLBBAgent *)self dsdsRegMsgs];
      v24 = [dsdsRegMsgs4 objectAtIndexedSubscript:v10];
      [v24 setDataIndicator:indicator2];

      dataBearerSoMask2 = [infoCopy dataBearerSoMask];
      dsdsRegMsgs5 = [(PLBBAgent *)self dsdsRegMsgs];
      v27 = [dsdsRegMsgs5 objectAtIndexedSubscript:v10];
      [v27 setServiceOpt:dataBearerSoMask2];

      if ([MEMORY[0x277D3F258] isFullModeDaemon])
      {
        attached = [infoCopy attached];
        dsdsRegMsgs6 = [(PLBBAgent *)self dsdsRegMsgs];
        v30 = [dsdsRegMsgs6 objectAtIndexedSubscript:v10];
        [v30 setDataAttached:attached];
      }

      v21 = 1;
      goto LABEL_15;
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_9:
  v21 = 0;
LABEL_15:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v31 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLBBAgent_dataStatus_dataStatusInfo___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v31;
    if (qword_2811F5370 != -1)
    {
      dispatch_once(&qword_2811F5370, block);
    }

    if (byte_2811F4FB7 == 1)
    {
      v53 = v10;
      v57 = MEMORY[0x277CCACA8];
      v56 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(infoCopy, "attached")}];
      indicator3 = [infoCopy indicator];
      indicatorOverride = [infoCopy indicatorOverride];
      v52 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(infoCopy, "roamAllowed")}];
      radioTechnology = [infoCopy radioTechnology];
      dataBearerSoMask3 = [infoCopy dataBearerSoMask];
      v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(infoCopy, "dataPlanSignalingReductionOverride")}];
      v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(infoCopy, "cellularDataPossible")}];
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(infoCopy, "activeContexts")}];
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(infoCopy, "totalActiveContexts")}];
      v36 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(infoCopy, "inHomeCountry")}];
      v58 = [v57 stringWithFormat:@"dataStatus:dataStatusInfo: called with subsId: %d                               attached: %@                               indicator: %d                               indicatorOverride: %d                               roamAllowed: %@                               radioTechnology: %d                               dataBearerSoMask: %d                               dataPlanSignalingReductionOverride: %@                               cellularDataPossible: %@                               activeContexts: %@                               totalActiveContexts: %@                               inHomeCountry: %@", v59, v56, indicator3, indicatorOverride, v52, radioTechnology, dataBearerSoMask3, v32, v33, v34, v35, v36];

      v37 = MEMORY[0x277D3F178];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v38 lastPathComponent];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent dataStatus:dataStatusInfo:]"];
      [v37 logMessage:v58 fromFile:lastPathComponent fromFunction:v40 fromLineNumber:1539];

      v41 = PLLogCommon();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v64 = v58;
        _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v10 = v53;
    }
  }

  dsdsRegMsgs7 = [(PLBBAgent *)self dsdsRegMsgs];
  v43 = [dsdsRegMsgs7 objectAtIndexedSubscript:v10];
  operatorName = [v43 operatorName];

  if (v21)
  {
    v61[0] = @"dataAttached";
    v45 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(infoCopy, "attached")}];
    v62[0] = v45;
    v61[1] = @"dataInd";
    v46 = dataIndicatorToString([infoCopy indicator]);
    v62[1] = v46;
    v61[2] = @"serviceOpt";
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(infoCopy, "dataBearerSoMask")}];
    v62[2] = v47;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:3];

    [(PLBBAgent *)self logDSDSEventForwardTelephonyRegistrationWithKVPairs:v48 subsId:v59 andOperator:operatorName];
  }

LABEL_25:
  v49 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PLBBAgent_dataStatus_dataStatusInfo___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FB7 = result;
  return result;
}

- (void)operatorNameChanged:(id)changed name:(id)name
{
  v32 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  nameCopy = name;
  isBasebandDSDS = [MEMORY[0x277D3F208] isBasebandDSDS];
  if (!nameCopy || !isBasebandDSDS)
  {
    goto LABEL_17;
  }

  v9 = [(PLBBAgent *)self getSubsIdFromCTContext:changedCopy];
  if (v9 == -1)
  {
    goto LABEL_7;
  }

  dsdsRegMsgs = [(PLBBAgent *)self dsdsRegMsgs];
  v11 = [dsdsRegMsgs objectAtIndexedSubscript:v9];
  operatorName = [v11 operatorName];
  v13 = [nameCopy isEqualToString:operatorName];

  if ((v13 & 1) == 0)
  {
    dsdsRegMsgs2 = [(PLBBAgent *)self dsdsRegMsgs];
    v16 = [dsdsRegMsgs2 objectAtIndexedSubscript:v9];
    [v16 setOperatorName:nameCopy];

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v14 = 1;
LABEL_8:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __38__PLBBAgent_operatorNameChanged_name___block_invoke;
    v28 = &__block_descriptor_40_e5_v8__0lu32l8;
    v29 = v17;
    if (qword_2811F5378 != -1)
    {
      dispatch_once(&qword_2811F5378, &block);
    }

    if (byte_2811F4FB8 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"operatorNameChanged:name: called with subsId: %d", v9, block, v26, v27, v28, v29];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent operatorNameChanged:name:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent fromFunction:v22 fromLineNumber:1569];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ((v14 & 1) == 0)
  {
    [(PLBBAgent *)self logDSDSEventForwardTelephonyRegistrationWithKVPairs:0 subsId:v9 andOperator:nameCopy];
  }

LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __38__PLBBAgent_operatorNameChanged_name___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FB8 = result;
  return result;
}

- (void)displayStatusChanged:(id)changed status:(id)status
{
  v55 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  statusCopy = status;
  isBasebandDSDS = [MEMORY[0x277D3F208] isBasebandDSDS];
  if (!statusCopy || !isBasebandDSDS)
  {
    goto LABEL_24;
  }

  v9 = [(PLBBAgent *)self getSubsIdFromCTContext:changedCopy];
  registrationDisplayStatus = [statusCopy registrationDisplayStatus];
  v11 = removeCTPrefixFromString(@"kCTRegistrationStatus", registrationDisplayStatus);

  v49 = v9;
  if (v9 == -1)
  {
    v23 = 1;
    v13 = -1;
    goto LABEL_14;
  }

  dsdsRegMsgs = [(PLBBAgent *)self dsdsRegMsgs];
  v13 = v9;
  v14 = [dsdsRegMsgs objectAtIndexedSubscript:v9];
  status = [v14 status];
  v16 = v11;
  v17 = [v11 isEqualToString:status];

  if (!v17)
  {
    goto LABEL_11;
  }

  if ([MEMORY[0x277D3F258] isFullModeDaemon])
  {
    dsdsRegMsgs2 = [(PLBBAgent *)self dsdsRegMsgs];
    v19 = [dsdsRegMsgs2 objectAtIndexedSubscript:v9];
    if ([v19 isHome] == -1)
    {
    }

    else
    {
      dsdsRegMsgs3 = [(PLBBAgent *)self dsdsRegMsgs];
      v21 = [dsdsRegMsgs3 objectAtIndexedSubscript:v9];
      v47 = dsdsRegMsgs2;
      isHome = [v21 isHome];
      LOBYTE(isHome) = (isHome == 0) ^ [statusCopy isInHomeCountry];

      if (isHome)
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    dsdsRegMsgs4 = [(PLBBAgent *)self dsdsRegMsgs];
    v25 = [dsdsRegMsgs4 objectAtIndexedSubscript:v9];
    [v25 setStatus:v16];

    v11 = v16;
    if ([MEMORY[0x277D3F258] isFullModeDaemon])
    {
      isInHomeCountry = [statusCopy isInHomeCountry];
      dsdsRegMsgs5 = [(PLBBAgent *)self dsdsRegMsgs];
      v28 = [dsdsRegMsgs5 objectAtIndexedSubscript:v9];
      [v28 setIsHome:isInHomeCountry];
    }

    v23 = 1;
    goto LABEL_14;
  }

LABEL_8:
  v23 = 0;
  v11 = v16;
LABEL_14:
  dsdsRegMsgs6 = [(PLBBAgent *)self dsdsRegMsgs];
  v30 = [dsdsRegMsgs6 objectAtIndexedSubscript:v13];
  operatorName = [v30 operatorName];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLBBAgent_displayStatusChanged_status___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v32;
    if (qword_2811F5380 != -1)
    {
      dispatch_once(&qword_2811F5380, block);
    }

    if (byte_2811F4FB9 == 1)
    {
      v48 = v11;
      v33 = MEMORY[0x277CCACA8];
      registrationDisplayStatus2 = [statusCopy registrationDisplayStatus];
      v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statusCopy, "isInHomeCountry")}];
      v36 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statusCopy, "changedDueToSimRemoval")}];
      v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statusCopy, "isRegistrationForcedHome")}];
      v38 = [v33 stringWithFormat:@"displayStatusChanged:status: called with subsId: %d                               registrationDisplayStatus: %@                               isInHomeCountry: %@                               changedDueToSimRemoval: %@                               isRegistrationForcedHome: %@", v49, registrationDisplayStatus2, v35, v36, v37];

      v39 = MEMORY[0x277D3F178];
      v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v40 lastPathComponent];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent displayStatusChanged:status:]"];
      [v39 logMessage:v38 fromFile:lastPathComponent fromFunction:v42 fromLineNumber:1619];

      v43 = PLLogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v54 = v38;
        _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v11 = v48;
    }
  }

  if (v23)
  {
    v51[0] = @"home";
    v44 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(statusCopy, "isInHomeCountry")}];
    v51[1] = @"status";
    v52[0] = v44;
    v52[1] = v11;
    v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];

    [(PLBBAgent *)self logDSDSEventForwardTelephonyRegistrationWithKVPairs:v45 subsId:v49 andOperator:operatorName];
  }

LABEL_24:
  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLBBAgent_displayStatusChanged_status___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FB9 = result;
  return result;
}

- (void)signalStrengthChanged:(id)changed info:(id)info
{
  v35 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  infoCopy = info;
  isBasebandDSDS = [MEMORY[0x277D3F208] isBasebandDSDS];
  if (!infoCopy || !isBasebandDSDS)
  {
    goto LABEL_19;
  }

  v9 = [(PLBBAgent *)self getSubsIdFromCTContext:changedCopy];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  if (v9 == -1)
  {
    goto LABEL_8;
  }

  dsdsActivityMsgs = [(PLBBAgent *)self dsdsActivityMsgs];
  v12 = [dsdsActivityMsgs objectAtIndexedSubscript:v9];
  signalStrengthLogTimestamp = [v12 signalStrengthLogTimestamp];
  [monotonicDate timeIntervalSinceDate:signalStrengthLogTimestamp];
  v15 = v14;

  if (v15 >= 60.0 || v15 <= 0.0)
  {
    dsdsActivityMsgs2 = [(PLBBAgent *)self dsdsActivityMsgs];
    v18 = [dsdsActivityMsgs2 objectAtIndexedSubscript:v9];
    [v18 setSignalStrengthLogTimestamp:monotonicDate];

    bars = [infoCopy bars];
    dsdsActivityMsgs3 = [(PLBBAgent *)self dsdsActivityMsgs];
    v21 = [dsdsActivityMsgs3 objectAtIndexedSubscript:v9];
    [v21 setSignalBars:bars];

LABEL_8:
    v16 = 1;
    goto LABEL_9;
  }

  v16 = 0;
LABEL_9:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v22 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLBBAgent_signalStrengthChanged_info___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v22;
    if (qword_2811F5388 != -1)
    {
      dispatch_once(&qword_2811F5388, block);
    }

    if (byte_2811F4FBA == 1)
    {
      v31 = monotonicDate;
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"signalStrengthChanged:info: called with subsId: %d", v9];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent signalStrengthChanged:info:]"];
      [v24 logMessage:v23 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:1650];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v34 = v23;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      monotonicDate = v31;
    }
  }

  if (v16)
  {
    bars2 = [infoCopy bars];
    [(PLBBAgent *)self logDSDSEventPointTelephonyActivityWithSubsId:v9 context:0 callStatus:0 simStatus:0 signalInfo:bars2 RATselection:0 andCurrCampedRAT:0];
  }

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PLBBAgent_signalStrengthChanged_info___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FBA = result;
  return result;
}

- (void)cellChanged:(id)changed cell:(id)cell
{
  v51 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  cellCopy = cell;
  isBasebandDSDS = [MEMORY[0x277D3F208] isBasebandDSDS];
  if (cellCopy && isBasebandDSDS)
  {
    v9 = [(PLBBAgent *)self getSubsIdFromCTContext:changedCopy];
    v10 = *MEMORY[0x277CC3DE0];
    v11 = [cellCopy objectForKeyedSubscript:*MEMORY[0x277CC3DE0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [cellCopy objectForKeyedSubscript:v10];

      if (v12)
      {
        v45 = v12;
        v13 = removeCTPrefixFromString(@"kCTRegistrationRadioAccessTechnology", v12);
        if (v9 == -1)
        {
          v19 = 0;
        }

        else
        {
          dsdsActivityMsgs = [(PLBBAgent *)self dsdsActivityMsgs];
          v43 = v9;
          v15 = v9;
          v16 = [dsdsActivityMsgs objectAtIndexedSubscript:v9];
          campedRAT = [v16 campedRAT];
          v18 = [v13 isEqualToString:campedRAT];

          if (v18)
          {
            v19 = 1;
          }

          else
          {
            dsdsActivityMsgs2 = [(PLBBAgent *)self dsdsActivityMsgs];
            v21 = [dsdsActivityMsgs2 objectAtIndexedSubscript:v15];
            [v21 setCampedRAT:v13];

            v19 = 0;
          }

          v9 = v43;
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v22 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __30__PLBBAgent_cellChanged_cell___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v22;
          if (qword_2811F5390 != -1)
          {
            dispatch_once(&qword_2811F5390, block);
          }

          if (byte_2811F4FBB == 1)
          {
            v41 = v13;
            v44 = v9;
            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"cellChanged:cell: called with subsId: %d", v9];
            v24 = MEMORY[0x277D3F178];
            v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
            lastPathComponent = [v25 lastPathComponent];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent cellChanged:cell:]"];
            [v24 logMessage:v23 fromFile:lastPathComponent fromFunction:v27 fromLineNumber:1682];

            v28 = PLLogCommon();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v50 = v23;
              _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v13 = v41;
            v9 = v44;
          }
        }

        if ((v19 & 1) == 0)
        {
          [(PLBBAgent *)self logDSDSEventPointTelephonyActivityWithSubsId:v9 context:changedCopy callStatus:0 simStatus:0 signalInfo:0 RATselection:0 andCurrCampedRAT:v13];
        }

        if ([MEMORY[0x277D3F258] isFullModeDaemon])
        {
          v29 = *MEMORY[0x277CC3BF0];
          v30 = [cellCopy objectForKeyedSubscript:*MEMORY[0x277CC3BF0]];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = [cellCopy objectForKeyedSubscript:v29];
          }

          else
          {
            v31 = 0;
          }

          v32 = *MEMORY[0x277CC3CC0];
          v33 = [cellCopy objectForKeyedSubscript:*MEMORY[0x277CC3CC0]];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = [cellCopy objectForKeyedSubscript:v32];
          }

          else
          {
            v34 = 0;
          }

          if (v31 | v34)
          {
            v47[0] = @"cellId";
            v47[1] = @"lac";
            v48[0] = v31;
            v48[1] = v34;
            [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
            v35 = v42 = v13;
            dsdsRegMsgs = [(PLBBAgent *)self dsdsRegMsgs];
            [dsdsRegMsgs objectAtIndexedSubscript:v9];
            v38 = v37 = v9;
            operatorName = [v38 operatorName];

            [(PLBBAgent *)self logDSDSEventForwardTelephonyRegistrationWithKVPairs:v35 subsId:v37 andOperator:operatorName];
            v13 = v42;
          }
        }
      }
    }

    else
    {
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __30__PLBBAgent_cellChanged_cell___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FBB = result;
  return result;
}

- (void)simStatusDidChange:(id)change status:(id)status
{
  v23 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  statusCopy = status;
  if ([MEMORY[0x277D3F208] isBasebandDSDS])
  {
    if (statusCopy)
    {
      v8 = [(PLBBAgent *)self getSubsIdFromCTContext:changeCopy];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v9 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __39__PLBBAgent_simStatusDidChange_status___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v9;
        if (qword_2811F5398 != -1)
        {
          dispatch_once(&qword_2811F5398, block);
        }

        if (byte_2811F4FBC == 1)
        {
          statusCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"simStatusDidChange:status: called with subsId: %d, status: %@", v8, statusCopy];
          v11 = MEMORY[0x277D3F178];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
          lastPathComponent = [v12 lastPathComponent];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent simStatusDidChange:status:]"];
          [v11 logMessage:statusCopy fromFile:lastPathComponent fromFunction:v14 fromLineNumber:1711];

          v15 = PLLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v22 = statusCopy;
            _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v16 = removeCTPrefixFromString(@"kCTSIMSupportSIMStatus", statusCopy);

      if (v8 != -1)
      {
        dsdsActivityMsgs = [(PLBBAgent *)self dsdsActivityMsgs];
        v18 = [dsdsActivityMsgs objectAtIndexedSubscript:v8];
        [v18 setSimStatus:v16];
      }

      [(PLBBAgent *)self logDSDSEventPointTelephonyActivityWithSubsId:v8 context:changeCopy callStatus:0 simStatus:v16 signalInfo:0 RATselection:0 andCurrCampedRAT:0];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = statusCopy;
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PLBBAgent_simStatusDidChange_status___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FBC = result;
  return result;
}

- (void)ratSelectionChanged:(id)changed selection:(id)selection
{
  v49 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  selectionCopy = selection;
  isBasebandDSDS = [MEMORY[0x277D3F208] isBasebandDSDS];
  if (!selectionCopy || !isBasebandDSDS)
  {
    goto LABEL_26;
  }

  v9 = [MEMORY[0x277CC3798] contextWithServiceDescriptor:changedCopy];
  v10 = [(PLBBAgent *)self getSubsIdFromCTContext:v9];
  selection = [selectionCopy selection];
  v12 = removeCTPrefixFromString(@"kCTRegistrationRATSelection", selection);

  if ([v12 isEqualToString:@"NRStandAlone"])
  {
    v13 = @"NR_SA";
  }

  else
  {
    if (![v12 isEqualToString:@"NRNonStandAlone"])
    {
      goto LABEL_8;
    }

    v13 = @"NR_NSA";
  }

  v12 = v13;
LABEL_8:
  if (v10 != -1)
  {
    v44 = v9;
    v41 = changedCopy;
    dsdsActivityMsgs = [(PLBBAgent *)self dsdsActivityMsgs];
    v15 = v10;
    v16 = [dsdsActivityMsgs objectAtIndexedSubscript:v10];
    currentRAT = [v16 currentRAT];
    v42 = v10;
    if ([v12 isEqualToString:currentRAT])
    {
      preferred = [selectionCopy preferred];
      [(PLBBAgent *)self dsdsActivityMsgs];
      v19 = v39 = self;
      v20 = [v19 objectAtIndexedSubscript:v15];
      preferredRAT = [v20 preferredRAT];
      v38 = [preferred isEqualToString:preferredRAT];

      self = v39;
      if (v38)
      {
        v22 = 1;
LABEL_15:
        changedCopy = v41;
        v10 = v42;
        v9 = v44;
        goto LABEL_16;
      }
    }

    else
    {
    }

    dsdsActivityMsgs2 = [(PLBBAgent *)self dsdsActivityMsgs];
    v24 = [dsdsActivityMsgs2 objectAtIndexedSubscript:v15];
    [v24 setCurrentRAT:v12];

    preferred2 = [selectionCopy preferred];
    v26 = removeCTPrefixFromString(@"kCTRegistrationRATSelection", preferred2);
    dsdsActivityMsgs3 = [(PLBBAgent *)self dsdsActivityMsgs];
    [dsdsActivityMsgs3 objectAtIndexedSubscript:v15];
    v29 = v28 = self;
    [v29 setPreferredRAT:v26];

    self = v28;
    v22 = 0;
    goto LABEL_15;
  }

  v22 = 0;
LABEL_16:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v30 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLBBAgent_ratSelectionChanged_selection___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v30;
    if (qword_2811F53A0 != -1)
    {
      dispatch_once(&qword_2811F53A0, block);
    }

    if (byte_2811F4FBD == 1)
    {
      v43 = v10;
      v45 = v9;
      selfCopy = self;
      selectionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ratSelectionChanged:selection: called with subsId: %d, selection: %@", v10, selectionCopy];
      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent ratSelectionChanged:selection:]"];
      [v32 logMessage:selectionCopy fromFile:lastPathComponent fromFunction:v35 fromLineNumber:1751];

      v36 = PLLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v48 = selectionCopy;
        _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      self = selfCopy;
      v10 = v43;
      v9 = v45;
    }
  }

  if ((v22 & 1) == 0)
  {
    [(PLBBAgent *)self logDSDSEventPointTelephonyActivityWithSubsId:v10 context:v9 callStatus:0 simStatus:0 signalInfo:0 RATselection:selectionCopy andCurrCampedRAT:0];
  }

LABEL_26:
  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLBBAgent_ratSelectionChanged_selection___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FBD = result;
  return result;
}

- (void)callStatusChanged:(id)changed
{
  if ([MEMORY[0x277D3F208] isBasebandDSDS])
  {
    callCenter = [(PLBBAgent *)self callCenter];
    currentCalls = [callCenter currentCalls];

    telephonyClientQueue = [(PLBBAgent *)self telephonyClientQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__PLBBAgent_callStatusChanged___block_invoke;
    v8[3] = &unk_278259658;
    v9 = currentCalls;
    selfCopy = self;
    v7 = currentCalls;
    dispatch_async(telephonyClientQueue, v8);
  }
}

void __31__PLBBAgent_callStatusChanged___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = -1;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__12;
  v46 = __Block_byref_object_dispose__12;
  v47 = 0;
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) objectAtIndex:0];
    if ([*(a1 + 32) count] <= 1)
    {
      v3 = [*(a1 + 40) translateCallStatus:{objc_msgSend(v2, "status")}];
    }

    else
    {
      v3 = @"Multiple";
    }

    v9 = [*(a1 + 40) telephonyClient];
    v41 = 0;
    v10 = [v9 getSubscriptionInfoWithError:&v41];
    v11 = v41;

    if (v10)
    {
      v12 = [v10 subscriptionsInUse];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __31__PLBBAgent_callStatusChanged___block_invoke_2;
      v34[3] = &unk_27825F6F8;
      v13 = v2;
      v14 = *(a1 + 40);
      v35 = v13;
      v36 = v14;
      v38 = &v52;
      v39 = &v42;
      v37 = v3;
      v40 = &v48;
      [v12 enumerateObjectsUsingBlock:v34];

      v15 = v35;
    }

    else
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_19;
      }

      v16 = *(a1 + 40);
      v17 = objc_opt_class();
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __31__PLBBAgent_callStatusChanged___block_invoke_3;
      v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v33[4] = v17;
      if (qword_2811F53A8 != -1)
      {
        dispatch_once(&qword_2811F53A8, v33);
      }

      if (byte_2811F4FBE != 1)
      {
        goto LABEL_19;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not determine CoreTelephony Subscription Info. Error: %@", v11];
      v31 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      v19 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent callStatusChanged:]_block_invoke"];
      [v31 logMessage:v15 fromFile:v19 fromFunction:v20 fromLineNumber:1810];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

LABEL_19:
    goto LABEL_21;
  }

  v4 = 0;
  *(v49 + 24) = 1;
  v3 = @"Inactive";
  while (1)
  {
    v5 = [*(a1 + 40) dsdsActivityMsgs];
    v6 = [v5 objectAtIndexedSubscript:v4];
    v7 = [v6 callStatus];
    v8 = v7 == @"Inactive";

    if (!v8)
    {
      break;
    }

    if (++v4 == 4)
    {
      goto LABEL_22;
    }
  }

  v53[3] = v4;
  v2 = [*(a1 + 40) dsdsActivityMsgs];
  v11 = [v2 objectAtIndexedSubscript:v4];
  v3 = @"Inactive";
  [v11 setCallStatus:@"Inactive"];
LABEL_21:

LABEL_22:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v22 = *(a1 + 40);
    v23 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__PLBBAgent_callStatusChanged___block_invoke_1321;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v23;
    if (qword_2811F53B0 != -1)
    {
      dispatch_once(&qword_2811F53B0, block);
    }

    if (byte_2811F4FBF == 1)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"callStatusChanged:status: called with subsId: %d callStatus: %@", v53[3], v3];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      v27 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent callStatusChanged:]_block_invoke_2"];
      [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:1815];

      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v57 = v24;
        _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (*(v49 + 24) == 1)
  {
    [*(a1 + 40) logDSDSEventPointTelephonyActivityWithSubsId:v53[3] context:v43[5] callStatus:v3 simStatus:0 signalInfo:0 RATselection:0 andCurrCampedRAT:0];
  }

  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  v30 = *MEMORY[0x277D85DE8];
}

void __31__PLBBAgent_callStatusChanged___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v7 = [*(a1 + 32) localSenderIdentity];
  v8 = [v7 UUID];

  v9 = [v15 uuid];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) getSubsIdFromCTContext:v15];
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v11 = *(*(*(a1 + 56) + 8) + 24);
    if (v11 != -1)
    {
      v12 = *(a1 + 48);
      v13 = [*(a1 + 40) dsdsActivityMsgs];
      v14 = [v13 objectAtIndexedSubscript:v11];
      [v14 setCallStatus:v12];
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t __31__PLBBAgent_callStatusChanged___block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FBE = result;
  return result;
}

uint64_t __31__PLBBAgent_callStatusChanged___block_invoke_1321(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FBF = result;
  return result;
}

uint64_t __46__PLBBAgent_smartDataModeChanged_userEnabled___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FC0 = result;
  return result;
}

- (void)logTelephonyRegistrationDSDSAtInit
{
  v28 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBBAgent_logTelephonyRegistrationDSDSAtInit__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F53C0 != -1)
    {
      dispatch_once(&qword_2811F53C0, block);
    }

    if (byte_2811F4FC1 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent logTelephonyRegistrationDSDSAtInit]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logTelephonyRegistrationDSDSAtInit]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1853];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  telephonyClient = [(PLBBAgent *)self telephonyClient];
  v24 = 0;
  v11 = [telephonyClient getSubscriptionInfoWithError:&v24];
  v12 = v24;

  if (v11)
  {
    subscriptions = [v11 subscriptions];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __47__PLBBAgent_logTelephonyRegistrationDSDSAtInit__block_invoke_1353;
    v23[3] = &unk_27825F720;
    v23[4] = self;
    [subscriptions enumerateObjectsUsingBlock:v23];
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __47__PLBBAgent_logTelephonyRegistrationDSDSAtInit__block_invoke_1359;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v14;
    if (qword_2811F53D0 != -1)
    {
      dispatch_once(&qword_2811F53D0, v22);
    }

    if (byte_2811F4FC3 == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not determine CoreTelephony Subscription Info. Error: %@", v12];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent2 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logTelephonyRegistrationDSDSAtInit]"];
      [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:1876];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLBBAgent_logTelephonyRegistrationDSDSAtInit__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FC1 = result;
  return result;
}

void __47__PLBBAgent_logTelephonyRegistrationDSDSAtInit__block_invoke_1353(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 getSubsIdFromCTContext:v4];
  v6 = [*(a1 + 32) telephonyClient];
  v30 = 0;
  v7 = [v6 getDataStatus:v4 error:&v30];
  v8 = v30;

  v9 = dataIndicatorToString([v7 indicator]);
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "dataBearerSoMask")}];
  v11 = [*(a1 + 32) telephonyClient];
  v29 = v8;
  v12 = [v11 getLocalizedOperatorName:v4 error:&v29];
  v13 = v29;

  v14 = [*(a1 + 32) telephonyClient];
  v28 = v13;
  v15 = [v14 copyRegistrationStatus:v4 error:&v28];

  v16 = v28;
  if (!v16 && v5 != -1)
  {
    v31[0] = @"dataInd";
    v31[1] = @"serviceOpt";
    v32[0] = v9;
    v32[1] = v10;
    v31[2] = @"status";
    v17 = removeCTPrefixFromString(@"kCTRegistrationStatus", v15);
    v32[2] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

    [*(a1 + 32) logDSDSEventForwardTelephonyRegistrationWithKVPairs:v18 subsId:v5 andOperator:v12];
LABEL_4:

    goto LABEL_12;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = *(a1 + 32);
    v20 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBBAgent_logTelephonyRegistrationDSDSAtInit__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v20;
    if (qword_2811F53C8 != -1)
    {
      dispatch_once(&qword_2811F53C8, block);
    }

    if (byte_2811F4FC2 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to query TelephonyRegistration Messages At Init. Error: %@ SubsId: %d", v16, v5];
      v26 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logTelephonyRegistrationDSDSAtInit]_block_invoke"];
      [v26 logMessage:v18 fromFile:v22 fromFunction:v23 fromLineNumber:1869];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v34 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_4;
    }
  }

LABEL_12:

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLBBAgent_logTelephonyRegistrationDSDSAtInit__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FC2 = result;
  return result;
}

uint64_t __47__PLBBAgent_logTelephonyRegistrationDSDSAtInit__block_invoke_1359(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FC3 = result;
  return result;
}

- (void)logTelephonyActivityDSDSAtInit
{
  v28 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__PLBBAgent_logTelephonyActivityDSDSAtInit__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F53D8 != -1)
    {
      dispatch_once(&qword_2811F53D8, block);
    }

    if (byte_2811F4FC4 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent logTelephonyActivityDSDSAtInit]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logTelephonyActivityDSDSAtInit]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:1881];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  telephonyClient = [(PLBBAgent *)self telephonyClient];
  v24 = 0;
  v11 = [telephonyClient getSubscriptionInfoWithError:&v24];
  v12 = v24;

  if (v11)
  {
    subscriptions = [v11 subscriptions];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__PLBBAgent_logTelephonyActivityDSDSAtInit__block_invoke_1360;
    v23[3] = &unk_27825F720;
    v23[4] = self;
    [subscriptions enumerateObjectsUsingBlock:v23];
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __43__PLBBAgent_logTelephonyActivityDSDSAtInit__block_invoke_1367;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v14;
    if (qword_2811F53E8 != -1)
    {
      dispatch_once(&qword_2811F53E8, v22);
    }

    if (byte_2811F4FC6 == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not determine CoreTelephony Subscription Info. Error: %@", v12];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent2 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logTelephonyActivityDSDSAtInit]"];
      [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:1926];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v27 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLBBAgent_logTelephonyActivityDSDSAtInit__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FC4 = result;
  return result;
}

void __43__PLBBAgent_logTelephonyActivityDSDSAtInit__block_invoke_1360(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) getSubsIdFromCTContext:v3];
  v5 = [MEMORY[0x277CC3718] descriptorWithSubscriptionContext:v3];
  v6 = [*(a1 + 32) telephonyClient];
  v67 = 0;
  v7 = [v6 copyRadioAccessTechnology:v3 error:&v67];
  v8 = v67;

  v9 = [*(a1 + 32) dsdsActivityMsgs];
  v60 = v4;
  v10 = [v9 objectAtIndexedSubscript:v4];
  v58 = [v10 callStatus];

  v11 = [*(a1 + 32) telephonyClient];
  v66 = v8;
  v12 = [v11 getSIMStatus:v3 error:&v66];
  v13 = v66;

  v14 = [*(a1 + 32) telephonyClient];
  v65 = v13;
  v56 = v3;
  v15 = [v14 getSignalStrengthInfo:v3 error:&v65];
  v16 = v65;

  v17 = [*(a1 + 32) telephonyClient];
  v64 = v16;
  v61 = v5;
  v18 = [v17 getRatSelectionMask:v5 error:&v64];
  v19 = v64;

  v20 = v15;
  v21 = [v15 bars];
  v22 = [*(a1 + 32) dsdsActivityMsgs];
  v23 = [v22 objectAtIndexedSubscript:v4];
  [v23 setSignalBars:v21];

  v59 = v7;
  v24 = removeCTPrefixFromString(@"kCTRegistrationRadioAccessTechnology", v7);
  v25 = [*(a1 + 32) dsdsActivityMsgs];
  v26 = [v25 objectAtIndexedSubscript:v4];
  [v26 setCampedRAT:v24];

  v57 = v12;
  v27 = removeCTPrefixFromString(@"kCTSIMSupportSIMStatus", v12);
  v28 = [*(a1 + 32) dsdsActivityMsgs];
  v29 = [v28 objectAtIndexedSubscript:v4];
  [v29 setSimStatus:v27];

  v30 = [v18 selection];
  v31 = removeCTPrefixFromString(@"kCTRegistrationRATSelection", v30);

  if ([v31 isEqualToString:@"NRStandAlone"])
  {
    v32 = @"NR_SA";
LABEL_5:

    v31 = v32;
    goto LABEL_6;
  }

  if ([v31 isEqualToString:@"NRNonStandAlone"])
  {
    v32 = @"NR_NSA";
    goto LABEL_5;
  }

LABEL_6:
  v33 = [*(a1 + 32) telephonyClient];
  v63 = v19;
  v34 = [v33 smartDataMode:v61 error:&v63];
  v35 = v63;

  v36 = [*(a1 + 32) dsdsActivityMsgs];
  v37 = [v36 objectAtIndexedSubscript:v4];
  [v37 setCurrentRAT:v31];

  v38 = [v18 preferred];
  v39 = removeCTPrefixFromString(@"kCTRegistrationRATSelection", v38);
  v40 = [*(a1 + 32) dsdsActivityMsgs];
  v41 = [v40 objectAtIndexedSubscript:v4];
  [v41 setPreferredRAT:v39];

  if (v35 || v60 == -1)
  {
    v46 = v61;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v47 = *(a1 + 32);
      v48 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__PLBBAgent_logTelephonyActivityDSDSAtInit__block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v48;
      if (qword_2811F53E0 != -1)
      {
        dispatch_once(&qword_2811F53E0, block);
      }

      if (byte_2811F4FC5 == 1)
      {
        v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to query TelephonyActivity Messages At Init. Error: %@ SubsId: %d", v35, v60];
        v50 = MEMORY[0x277D3F178];
        v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        v52 = [v51 lastPathComponent];
        v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logTelephonyActivityDSDSAtInit]_block_invoke"];
        [v50 logMessage:v49 fromFile:v52 fromFunction:v53 fromLineNumber:1917];

        v54 = PLLogCommon();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v69 = v49;
          _os_log_debug_impl(&dword_21A4C6000, v54, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v46 = v61;
      }
    }
  }

  else
  {
    v42 = *(a1 + 32);
    v43 = removeCTPrefixFromString(@"kCTSIMSupportSIMStatus", v57);
    v44 = [v20 bars];
    v45 = removeCTPrefixFromString(@"kCTRegistrationRadioAccessTechnology", v59);
    [v42 logDSDSEventPointTelephonyActivityWithSubsId:v60 context:v56 callStatus:v58 simStatus:v43 signalInfo:v44 RATselection:v18 andCurrCampedRAT:v45];

    v46 = v61;
    if ([MEMORY[0x277D3F208] kPLBasebandClassOfDevice] >= 1003012)
    {
      [*(a1 + 32) logDSDSEventForwardSDMwithSubsId:v60 SDMEnable:v34];
    }
  }

  v55 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLBBAgent_logTelephonyActivityDSDSAtInit__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FC5 = result;
  return result;
}

uint64_t __43__PLBBAgent_logTelephonyActivityDSDSAtInit__block_invoke_1367(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FC6 = result;
  return result;
}

- (int64_t)getSubsIdFromCTContext:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (!contextCopy)
  {
    goto LABEL_15;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __36__PLBBAgent_getSubsIdFromCTContext___block_invoke;
    v25 = &__block_descriptor_40_e5_v8__0lu32l8;
    v26 = v4;
    if (qword_2811F53F0 != -1)
    {
      dispatch_once(&qword_2811F53F0, &block);
    }

    if (byte_2811F4FC7 == 1)
    {
      v5 = MEMORY[0x277CCACA8];
      slotID = [contextCopy slotID];
      userDataPreferred = [contextCopy userDataPreferred];
      userDefaultVoice = [contextCopy userDefaultVoice];
      v9 = [v5 stringWithFormat:@"Slot ID %d, data preferred: %@, default voice: %@", slotID, userDataPreferred, userDefaultVoice, block, v23, v24, v25, v26];

      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent getSubsIdFromCTContext:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:1935];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([contextCopy slotID] == 1)
  {
    userDataPreferred2 = [contextCopy userDataPreferred];
    bOOLValue = [userDataPreferred2 BOOLValue];

    v17 = bOOLValue ^ 1u;
    goto LABEL_16;
  }

  if ([contextCopy slotID] != 2)
  {
LABEL_15:
    v17 = -1;
    goto LABEL_16;
  }

  userDataPreferred3 = [contextCopy userDataPreferred];
  bOOLValue2 = [userDataPreferred3 BOOLValue];

  if (bOOLValue2)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __36__PLBBAgent_getSubsIdFromCTContext___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FC7 = result;
  return result;
}

- (void)logDSDSEventForwardTelephonyRegistrationWithKVPairs:(id)pairs subsId:(int64_t)id andOperator:(id)operator
{
  v8 = *MEMORY[0x277D3F5D0];
  operatorCopy = operator;
  pairsCopy = pairs;
  v11 = [(PLOperator *)PLBBAgent entryKeyForType:v8 andName:@"TelephonyRegistration"];
  v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:id];
  [v12 setObject:v13 forKeyedSubscript:@"subsId"];

  [v12 setObject:operatorCopy forKeyedSubscript:@"operator"];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__PLBBAgent_logDSDSEventForwardTelephonyRegistrationWithKVPairs_subsId_andOperator___block_invoke;
  v17[3] = &unk_27825F748;
  v14 = v12;
  v18 = v14;
  [pairsCopy enumerateKeysAndObjectsUsingBlock:v17];

  if ([MEMORY[0x277D3F208] isBasebandProto])
  {
    dictionary = [v14 dictionary];
    entryDate = [v14 entryDate];
    [(PLOperator *)self logForSubsystem:@"BasebandMetrics" category:@"TelephonyRegistration" data:dictionary date:entryDate];
  }

  [(PLBBAgent *)self logEntry:v14];
}

- (void)logDSDSEventPointTelephonyActivityWithSubsId:(int64_t)id context:(id)context callStatus:(id)status simStatus:(id)simStatus signalInfo:(id)info RATselection:(id)tselection andCurrCampedRAT:(id)t
{
  statusCopy = status;
  simStatusCopy = simStatus;
  infoCopy = info;
  tselectionCopy = tselection;
  tCopy = t;
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  workQueue = [(PLOperator *)self workQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __128__PLBBAgent_logDSDSEventPointTelephonyActivityWithSubsId_context_callStatus_simStatus_signalInfo_RATselection_andCurrCampedRAT___block_invoke;
  v27[3] = &unk_27825F770;
  v28 = monotonicDate;
  v29 = statusCopy;
  selfCopy = self;
  v31 = simStatusCopy;
  v32 = infoCopy;
  v33 = tselectionCopy;
  v34 = tCopy;
  idCopy = id;
  v21 = tCopy;
  v22 = tselectionCopy;
  v23 = infoCopy;
  v24 = simStatusCopy;
  v25 = statusCopy;
  v26 = monotonicDate;
  dispatch_async(workQueue, v27);
}

void __128__PLBBAgent_logDSDSEventPointTelephonyActivityWithSubsId_context_callStatus_simStatus_signalInfo_RATselection_andCurrCampedRAT___block_invoke(uint64_t a1)
{
  v34 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"TelephonyActivity"];
  v2 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v34];
  v3 = *(a1 + 88);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  [v2 setObject:v4 forKeyedSubscript:@"subsId"];

  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"timestamp"];
  [v2 setObject:airplaneModeCurrent forKeyedSubscript:@"airplaneMode"];
  v5 = *(a1 + 40);
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"callStatus"];
  }

  else if (*(a1 + 88) != -1)
  {
    v6 = [*(a1 + 48) dsdsActivityMsgs];
    v7 = [v6 objectAtIndexedSubscript:v3];
    v8 = [v7 callStatus];
    [v2 setObject:v8 forKeyedSubscript:@"callStatus"];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    [v2 setObject:v9 forKeyedSubscript:@"simStatus"];
  }

  else if (*(a1 + 88) != -1)
  {
    v10 = [*(a1 + 48) dsdsActivityMsgs];
    v11 = [v10 objectAtIndexedSubscript:v3];
    v12 = [v11 simStatus];
    [v2 setObject:v12 forKeyedSubscript:@"simStatus"];
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    [v2 setObject:v13 forKeyedSubscript:@"signalBars"];
  }

  else if (*(a1 + 88) != -1)
  {
    v14 = [*(a1 + 48) dsdsActivityMsgs];
    v15 = [v14 objectAtIndexedSubscript:v3];
    v16 = [v15 signalBars];
    [v2 setObject:v16 forKeyedSubscript:@"signalBars"];
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = [v17 selection];
    v19 = removeCTPrefixFromString(@"kCTRegistrationRATSelection", v18);

    if ([v19 isEqualToString:@"NRStandAlone"])
    {
      v20 = @"NR_SA";
    }

    else
    {
      if (![v19 isEqualToString:@"NRNonStandAlone"])
      {
LABEL_21:
        [v2 setObject:v19 forKeyedSubscript:@"currentRat"];
        v24 = [*(a1 + 72) preferred];
        v25 = removeCTPrefixFromString(@"kCTRegistrationRATSelection", v24);
        goto LABEL_22;
      }

      v20 = @"NR_NSA";
    }

    v19 = v20;
    goto LABEL_21;
  }

  if (*(a1 + 88) == -1)
  {
    goto LABEL_23;
  }

  v21 = [*(a1 + 48) dsdsActivityMsgs];
  v22 = [v21 objectAtIndexedSubscript:v3];
  v23 = [v22 currentRAT];
  [v2 setObject:v23 forKeyedSubscript:@"currentRat"];

  v19 = [*(a1 + 48) dsdsActivityMsgs];
  v24 = [v19 objectAtIndexedSubscript:v3];
  v25 = [v24 preferredRAT];
LABEL_22:
  v26 = v25;
  [v2 setObject:v25 forKeyedSubscript:@"preferredRat"];

LABEL_23:
  v27 = *(a1 + 80);
  if (v27)
  {
    [v2 setObject:v27 forKeyedSubscript:@"campedRat"];
  }

  else if (*(a1 + 88) != -1)
  {
    v28 = [*(a1 + 48) dsdsActivityMsgs];
    v29 = [v28 objectAtIndexedSubscript:v3];
    v30 = [v29 campedRAT];
    [v2 setObject:v30 forKeyedSubscript:@"campedRat"];
  }

  if (([MEMORY[0x277D3F208] isBasebandMav] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
  {
    [*(a1 + 48) logEntry:v2];
  }

  if ([MEMORY[0x277D3F208] isBasebandProto])
  {
    v31 = *(a1 + 48);
    v32 = [v2 dictionary];
    v33 = [v2 entryDate];
    [v31 logForSubsystem:@"BasebandMetrics" category:@"TelephonyActivity" data:v32 date:v33];
  }
}

uint64_t __56__PLBBAgent_logDSDSEventForwardSDMwithSubsId_SDMEnable___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FC8 = result;
  return result;
}

- (void)setupKICEChannels
{
  v60 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D3F120] = [MEMORY[0x277D3F120] sharedABMClient];
  [(PLBBAgent *)self setAbmClient:mEMORY[0x277D3F120]];

  abmClient = [(PLBBAgent *)self abmClient];

  if (abmClient)
  {
    abmClient2 = [(PLBBAgent *)self abmClient];
    [abmClient2 setDelegate:self];

    abmClient3 = [(PLBBAgent *)self abmClient];
    removeDeviceConfig = [abmClient3 removeDeviceConfig];

    if ([MEMORY[0x277D3F208] internalBuild])
    {
      -[PLBBAgent logCommandInfo:result:resultDescription:](self, "logCommandInfo:result:resultDescription:", 1, [removeDeviceConfig isEqual:@"kSuccess"], removeDeviceConfig);
    }

    if ([MEMORY[0x277D3F208] isBasebandMav])
    {
      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Add MAV DeviceConfig for ABM", buf, 2u);
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v9 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __30__PLBBAgent_setupKICEChannels__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v9;
        if (qword_2811F5400 != -1)
        {
          dispatch_once(&qword_2811F5400, block);
        }

        if (byte_2811F4FC9 == 1)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add MAV DeviceConfig for ABM"];
          v11 = MEMORY[0x277D3F178];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
          lastPathComponent = [v12 lastPathComponent];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupKICEChannels]"];
          [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:2137];

          v15 = PLLogCommon();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v59 = v10;
            _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      abmClient4 = [(PLBBAgent *)self abmClient];
      addMavDeviceConfig = [abmClient4 addMavDeviceConfig];

      if ([MEMORY[0x277D3F208] internalBuild])
      {
        if ([addMavDeviceConfig isEqual:@"kSuccess"])
        {
          selfCopy2 = self;
          v19 = 1;
        }

        else
        {
          selfCopy2 = self;
          v19 = 0;
        }

        [(PLBBAgent *)selfCopy2 logCommandInfo:0 result:v19 resultDescription:addMavDeviceConfig];
      }

      removeDeviceConfig = addMavDeviceConfig;
    }

    else
    {
      isBasebandProto = [MEMORY[0x277D3F208] isBasebandProto];
      v27 = PLLogCommon();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
      if (isBasebandProto)
      {
        if (v28)
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "Add Sinope DeviceConfig for ABM", buf, 2u);
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v29 = objc_opt_class();
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __30__PLBBAgent_setupKICEChannels__block_invoke_1423;
          v56[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v56[4] = v29;
          if (qword_2811F5408 != -1)
          {
            dispatch_once(&qword_2811F5408, v56);
          }

          if (byte_2811F4FCA == 1)
          {
            v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add Sinope DeviceConfig for ABM"];
            v31 = MEMORY[0x277D3F178];
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
            lastPathComponent2 = [v32 lastPathComponent];
            v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupKICEChannels]"];
            [v31 logMessage:v30 fromFile:lastPathComponent2 fromFunction:v34 fromLineNumber:2152];

            v35 = PLLogCommon();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v59 = v30;
              _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        abmClient5 = [(PLBBAgent *)self abmClient];
        [abmClient5 addSinopeDeviceConfig];
      }

      else
      {
        if (v28)
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "Add ICE DeviceConfig for ABM", buf, 2u);
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v37 = objc_opt_class();
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __30__PLBBAgent_setupKICEChannels__block_invoke_1429;
          v55[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v55[4] = v37;
          if (qword_2811F5410 != -1)
          {
            dispatch_once(&qword_2811F5410, v55);
          }

          if (byte_2811F4FCB == 1)
          {
            v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add ICE DeviceConfig for ABM"];
            v39 = MEMORY[0x277D3F178];
            v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
            lastPathComponent3 = [v40 lastPathComponent];
            v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupKICEChannels]"];
            [v39 logMessage:v38 fromFile:lastPathComponent3 fromFunction:v42 fromLineNumber:2158];

            v43 = PLLogCommon();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v59 = v38;
              _os_log_debug_impl(&dword_21A4C6000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        abmClient5 = [(PLBBAgent *)self abmClient];
        [abmClient5 addICEDeviceConfig];
      }
    }

    abmClient6 = [(PLBBAgent *)self abmClient];
    [abmClient6 regMetricListener];

    abmClient7 = [(PLBBAgent *)self abmClient];
    [abmClient7 regBBWakeListener];

    abmClient8 = [(PLBBAgent *)self abmClient];
    [abmClient8 regBootStateListener];

    abmClient9 = [(PLBBAgent *)self abmClient];
    [abmClient9 startListening];

    if ([MEMORY[0x277D3F208] isBasebandMav])
    {
      v48 = +[PLMAVBBMetric sharedInstance];
      v49 = v48;
      if (v48)
      {
        [v48 setLogAgent:self];
        [(PLBBAgent *)self registerForMAVModelMetricsNotifications:@"MAV_METRIC_PROD"];
        v50 = @"PLBBAgentMAVModel";
LABEL_51:
        v52 = &unk_282C11CE8;
LABEL_54:
        [v49 registerForNotifClient:v50 andProfile:v52];
      }
    }

    else if ([MEMORY[0x277D3F208] isBasebandProto])
    {
      v51 = +[PLSinopeBBMetric sharedInstance];
      v49 = v51;
      if (v51)
      {
        [v51 setLogAgent:self];
        [(PLBBAgent *)self registerForSinopeModelMetricsNotifications:@"SINOPE_METRIC_PROD"];
        v50 = @"PLBBAgentSinopeModel";
        goto LABEL_51;
      }
    }

    else
    {
      v53 = +[PLICEBBMetric sharedInstance];
      v49 = v53;
      if (v53)
      {
        [v53 setLogAgent:self];
        [(PLBBAgent *)self registerForICEModelMetricsNotifications:@"METRIC_PROD"];
        v50 = @"PLBBAgentICEModel";
        v52 = &unk_282C11D00;
        goto LABEL_54;
      }
    }

    goto LABEL_56;
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to init PLABMClient"];
  v21 = MEMORY[0x277D3F178];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
  lastPathComponent4 = [v22 lastPathComponent];
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupKICEChannels]"];
  [v21 logMessage:v20 fromFile:lastPathComponent4 fromFunction:v24 fromLineNumber:2118];

  v25 = PLLogCommon();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v59 = v20;
    _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  [MEMORY[0x277D3F180] debugEnabled];
LABEL_56:
  v54 = *MEMORY[0x277D85DE8];
}

uint64_t __30__PLBBAgent_setupKICEChannels__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FC9 = result;
  return result;
}

uint64_t __30__PLBBAgent_setupKICEChannels__block_invoke_1423(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FCA = result;
  return result;
}

uint64_t __30__PLBBAgent_setupKICEChannels__block_invoke_1429(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FCB = result;
  return result;
}

- (void)setupKICEChannelsForDebug
{
  v54 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D3F120] = [MEMORY[0x277D3F120] sharedABMClient];
  v4 = mEMORY[0x277D3F120];
  if (mEMORY[0x277D3F120])
  {
    [mEMORY[0x277D3F120] setDelegate:self];
    removeDeviceConfig = [v4 removeDeviceConfig];
    if ([MEMORY[0x277D3F208] internalBuild])
    {
      -[PLBBAgent logCommandInfo:result:resultDescription:](self, "logCommandInfo:result:resultDescription:", 1, [removeDeviceConfig isEqual:@"kSuccess"], removeDeviceConfig);
    }

    if ([MEMORY[0x277D3F208] isBasebandMav])
    {
      v6 = PLLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Add MAV DeviceConfig for ABM", buf, 2u);
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v7 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __38__PLBBAgent_setupKICEChannelsForDebug__block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v7;
        if (qword_2811F5418 != -1)
        {
          dispatch_once(&qword_2811F5418, block);
        }

        if (byte_2811F4FCC == 1)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add MAV DeviceConfigDebug for ABM"];
          v9 = MEMORY[0x277D3F178];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
          lastPathComponent = [v10 lastPathComponent];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupKICEChannelsForDebug]"];
          [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:2218];

          v13 = PLLogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v53 = v8;
            _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      abmClient = [(PLBBAgent *)self abmClient];
      addMavDeviceConfigDebug = [abmClient addMavDeviceConfigDebug];

      if ([MEMORY[0x277D3F208] internalBuild])
      {
        if ([addMavDeviceConfigDebug isEqual:@"kSuccess"])
        {
          selfCopy2 = self;
          v17 = 1;
        }

        else
        {
          selfCopy2 = self;
          v17 = 0;
        }

        [(PLBBAgent *)selfCopy2 logCommandInfo:2 result:v17 resultDescription:addMavDeviceConfigDebug];
      }

      removeDeviceConfig = addMavDeviceConfigDebug;
    }

    else
    {
      isBasebandProto = [MEMORY[0x277D3F208] isBasebandProto];
      v25 = PLLogCommon();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
      if (isBasebandProto)
      {
        if (v26)
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "Add Sinope DeviceConfig for ABM", buf, 2u);
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v27 = objc_opt_class();
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __38__PLBBAgent_setupKICEChannelsForDebug__block_invoke_1460;
          v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v50[4] = v27;
          if (qword_2811F5420 != -1)
          {
            dispatch_once(&qword_2811F5420, v50);
          }

          if (byte_2811F4FCD == 1)
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add Sinope DeviceConfigDebug for ABM"];
            v29 = MEMORY[0x277D3F178];
            v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
            lastPathComponent2 = [v30 lastPathComponent];
            v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupKICEChannelsForDebug]"];
            [v29 logMessage:v28 fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:2233];

            v33 = PLLogCommon();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v53 = v28;
              _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        abmClient2 = [(PLBBAgent *)self abmClient];
        [abmClient2 addSinopeDeviceConfigDebug];
      }

      else
      {
        if (v26)
        {
          *buf = 0;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "Add ICE DeviceConfig for ABM", buf, 2u);
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v35 = objc_opt_class();
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __38__PLBBAgent_setupKICEChannelsForDebug__block_invoke_1466;
          v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v49[4] = v35;
          if (qword_2811F5428 != -1)
          {
            dispatch_once(&qword_2811F5428, v49);
          }

          if (byte_2811F4FCE == 1)
          {
            v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Add ICE DeviceConfigDebug for ABM"];
            v37 = MEMORY[0x277D3F178];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
            lastPathComponent3 = [v38 lastPathComponent];
            v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupKICEChannelsForDebug]"];
            [v37 logMessage:v36 fromFile:lastPathComponent3 fromFunction:v40 fromLineNumber:2239];

            v41 = PLLogCommon();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v53 = v36;
              _os_log_debug_impl(&dword_21A4C6000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        abmClient2 = [(PLBBAgent *)self abmClient];
        [abmClient2 addICEDeviceConfigDebug];
      }
    }

    [v4 regMetricListener];
    [v4 regBBWakeListener];
    [v4 regBootStateListener];
    [v4 startListening];
    if ([MEMORY[0x277D3F208] isBasebandMav])
    {
      v42 = +[PLMAVBBMetric sharedInstance];
      v43 = v42;
      if (v42)
      {
        [v42 setLogAgent:self];
        [(PLBBAgent *)self registerForMAVModelMetricsNotifications:@"MAV_METRIC_PROD"];
        v44 = @"PLBBAgentMAVModel";
LABEL_51:
        v46 = &unk_282C11CE8;
LABEL_54:
        [v43 registerForNotifClient:v44 andProfile:v46];
      }
    }

    else if ([MEMORY[0x277D3F208] kPLBasebandClassOfDevice] == 1003018)
    {
      v45 = +[PLSinopeBBMetric sharedInstance];
      v43 = v45;
      if (v45)
      {
        [v45 setLogAgent:self];
        [(PLBBAgent *)self registerForSinopeModelMetricsNotifications:@"SINOPE_METRIC_PROD"];
        v44 = @"PLBBAgentSinopeModel";
        goto LABEL_51;
      }
    }

    else
    {
      v47 = +[PLICEBBMetric sharedInstance];
      v43 = v47;
      if (v47)
      {
        [v47 setLogAgent:self];
        [(PLBBAgent *)self registerForICEModelMetricsNotifications:@"METRIC_PROD"];
        v44 = @"PLBBAgentICEModel";
        v46 = &unk_282C11D00;
        goto LABEL_54;
      }
    }

    goto LABEL_56;
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to init PLABMClient"];
  v19 = MEMORY[0x277D3F178];
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
  lastPathComponent4 = [v20 lastPathComponent];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupKICEChannelsForDebug]"];
  [v19 logMessage:v18 fromFile:lastPathComponent4 fromFunction:v22 fromLineNumber:2199];

  v23 = PLLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v53 = v18;
    _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  [MEMORY[0x277D3F180] debugEnabled];
LABEL_56:

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t __38__PLBBAgent_setupKICEChannelsForDebug__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FCC = result;
  return result;
}

uint64_t __38__PLBBAgent_setupKICEChannelsForDebug__block_invoke_1460(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FCD = result;
  return result;
}

uint64_t __38__PLBBAgent_setupKICEChannelsForDebug__block_invoke_1466(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FCE = result;
  return result;
}

- (void)setupMavABMChannel
{
  v19 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D3F120] = [MEMORY[0x277D3F120] sharedABMClient];
  [(PLBBAgent *)self setAbmClient:mEMORY[0x277D3F120]];

  abmClient = [(PLBBAgent *)self abmClient];

  if (abmClient)
  {
    abmClient2 = [(PLBBAgent *)self abmClient];
    [abmClient2 setDelegate:self];

    abmClient3 = [(PLBBAgent *)self abmClient];
    [abmClient3 regBBWakeListener];

    abmClient4 = [(PLBBAgent *)self abmClient];
    [abmClient4 regBootStateListener];

    abmClient5 = [(PLBBAgent *)self abmClient];
    [abmClient5 startListening];
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to init PLABMClient"];
    v10 = MEMORY[0x277D3F178];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupMavABMChannel]"];
    [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:2282];

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v15 = *MEMORY[0x277D85DE8];
  }
}

- (void)registerForICEModelMetricsNotifications:(id)notifications
{
  v4 = MEMORY[0x277D3F1F0];
  notificationsCopy = notifications;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__PLBBAgent_registerForICEModelMetricsNotifications___block_invoke;
  v10[3] = &unk_2782597E8;
  v10[4] = self;
  v8 = [v6 initWithWorkQueue:v7 forNotification:notificationsCopy withBlock:v10];

  bbICEModelLTEMetricsNotification = self->_bbICEModelLTEMetricsNotification;
  self->_bbICEModelLTEMetricsNotification = v8;
}

- (void)registerForSinopeModelMetricsNotifications:(id)notifications
{
  v4 = MEMORY[0x277D3F1F0];
  notificationsCopy = notifications;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__PLBBAgent_registerForSinopeModelMetricsNotifications___block_invoke;
  v10[3] = &unk_2782597E8;
  v10[4] = self;
  v8 = [v6 initWithWorkQueue:v7 forNotification:notificationsCopy withBlock:v10];

  bbSinopeModelMetricsNotification = self->_bbSinopeModelMetricsNotification;
  self->_bbSinopeModelMetricsNotification = v8;
}

- (void)registerForMAVModelMetricsNotifications:(id)notifications
{
  v4 = MEMORY[0x277D3F1F0];
  notificationsCopy = notifications;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__PLBBAgent_registerForMAVModelMetricsNotifications___block_invoke;
  v10[3] = &unk_2782597E8;
  v10[4] = self;
  v8 = [v6 initWithWorkQueue:v7 forNotification:notificationsCopy withBlock:v10];

  bbICEModelLTEMetricsNotification = self->_bbICEModelLTEMetricsNotification;
  self->_bbICEModelLTEMetricsNotification = v8;
}

- (void)setupTimeUpdateChannel
{
  connection = [(PLBBAgent *)self connection];
  [connection registerCallback:TimeUpdateNotificationCB forTelephonyNotification:*MEMORY[0x277CC4310]];
}

- (void)setupTelephonyActivityChannels
{
  [(PLBBAgent *)self setSimStatus:CTSIMSupportGetSIMStatus()];
  connection = [(PLBBAgent *)self connection];
  [connection registerCallback:TelephonyActivityNotificationCB forTelephonyNotification:*MEMORY[0x277CC3A40]];

  connection2 = [(PLBBAgent *)self connection];
  [connection2 registerCallback:TelephonyActivityNotificationCB forTelephonyNotification:*MEMORY[0x277CC3950]];

  connection3 = [(PLBBAgent *)self connection];
  [connection3 registerCallback:TelephonyActivityNotificationCB forTelephonyNotification:*MEMORY[0x277CC37E8]];

  connection4 = [(PLBBAgent *)self connection];
  [connection4 registerCallback:TelephonyActivityNotificationCB forTelephonyNotification:*MEMORY[0x277CC37D0]];

  connection5 = [(PLBBAgent *)self connection];
  [connection5 registerCallback:TelephonyActivityNotificationCB forTelephonyNotification:*MEMORY[0x277CC3A18]];

  connection6 = [(PLBBAgent *)self connection];
  [connection6 registerCallback:TelephonyActivityNotificationCB forTelephonyNotification:*MEMORY[0x277CC3B00]];

  connection7 = [(PLBBAgent *)self connection];
  [connection7 registerCallback:TelephonyActivityNotificationCB forTelephonyNotification:*MEMORY[0x277CC3AF8]];

  connection8 = [(PLBBAgent *)self connection];
  [connection8 registerCallback:TelephonyActivityNotificationCB forTelephonyNotification:*MEMORY[0x277CC3EC8]];

  [(PLBBAgent *)self setLastReportedSignal:0];
  [(PLBBAgent *)self setInDCH:0];
  [(PLBBAgent *)self setInUTBF:0];
  operatorName = self->_operatorName;
  self->_operatorName = 0;

  [(PLBBAgent *)self setChanged:1];
}

- (BOOL)setupChannel:(id)channel withLogCodes:(id)codes andEvents:(id)events andExtracode:(id)extracode
{
  v33 = *MEMORY[0x277D85DE8];
  channelCopy = channel;
  codesCopy = codes;
  eventsCopy = events;
  extracodeCopy = extracode;
  if ([codesCopy count] || objc_msgSend(eventsCopy, "count"))
  {
    if (![channelCopy openWithConnection:self->_connection])
    {
      v14 = 0;
      goto LABEL_7;
    }

    [channelCopy enableLogCodes:codesCopy andEvents:eventsCopy andExtraCode:extracodeCopy];
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __62__PLBBAgent_setupChannel_withLogCodes_andEvents_andExtracode___block_invoke;
    v28 = &unk_27825A310;
    v29 = @"Critical";
    v30 = v17;
    if (qword_2811F5430 != -1)
    {
      dispatch_once(&qword_2811F5430, &v25);
    }

    v18 = byte_2811F4FCF;

    if (v18 == 1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty log and event codes - leaving channel disabled", v25, v26, v27, v28];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupChannel:withLogCodes:andEvents:andExtracode:]"];
      [v20 logMessage:v19 fromFile:lastPathComponent fromFunction:v23 fromLineNumber:2364];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v19;
        _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v14 = 1;
LABEL_7:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __62__PLBBAgent_setupChannel_withLogCodes_andEvents_andExtracode___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F4FCF = result;
  return result;
}

- (void)setupBBChannelsWithAction:(int64_t)action
{
  v237 = *MEMORY[0x277D85DE8];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLBBAgent *)self setLastBBActivityTimestamp:monotonicDate];

  v125 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v123 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v124 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(PLBBAgent *)self logEventNoneBBReportBy:0 withAction:action];
  v6 = objc_opt_new();
  cachedChannel = self->cachedChannel;
  self->cachedChannel = v6;

  [(PLBasebandLogChannel *)self->cachedChannel setDelegate:self];
  selfCopy = self;
  [(PLBasebandLogChannel *)self->cachedChannel setCachingEnabled:1];
  v8 = MEMORY[0x277CBEA60];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:45452];
  v127 = [v8 arrayWithObjects:{v9, 0}];

  v10 = MEMORY[0x277CBEA60];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:28978];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:45309];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:45310];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:45311];
  v139 = [v10 arrayWithObjects:{v11, v12, v13, v14, 0}];

  v15 = MEMORY[0x277CBEA60];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:311];
  v17 = [MEMORY[0x277CCABB0] numberWithInt:389];
  v18 = [MEMORY[0x277CCABB0] numberWithInt:424];
  v19 = [MEMORY[0x277CCABB0] numberWithInt:571];
  v129 = [v15 arrayWithObjects:{v16, v17, v18, v19, 0}];

  v20 = MEMORY[0x277CBEA60];
  v21 = [MEMORY[0x277CCABB0] numberWithInt:629];
  v22 = [MEMORY[0x277CCABB0] numberWithInt:630];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:631];
  v128 = [v20 arrayWithObjects:{v21, v22, v23, 0}];

  v24 = MEMORY[0x277CBEA60];
  v25 = [MEMORY[0x277CCABB0] numberWithInt:621];
  v26 = [MEMORY[0x277CCABB0] numberWithInt:622];
  v138 = [v24 arrayWithObjects:{v25, v26, 0}];

  v149 = MEMORY[0x277CBEA60];
  v229 = [MEMORY[0x277CCABB0] numberWithInt:275];
  v226 = [MEMORY[0x277CCABB0] numberWithInt:301];
  v223 = [MEMORY[0x277CCABB0] numberWithInt:302];
  v220 = [MEMORY[0x277CCABB0] numberWithInt:303];
  v217 = [MEMORY[0x277CCABB0] numberWithInt:312];
  v214 = [MEMORY[0x277CCABB0] numberWithInt:320];
  v211 = [MEMORY[0x277CCABB0] numberWithInt:324];
  v208 = [MEMORY[0x277CCABB0] numberWithInt:325];
  v205 = [MEMORY[0x277CCABB0] numberWithInt:336];
  v202 = [MEMORY[0x277CCABB0] numberWithInt:338];
  v196 = [MEMORY[0x277CCABB0] numberWithInt:349];
  v199 = [MEMORY[0x277CCABB0] numberWithInt:350];
  v184 = [MEMORY[0x277CCABB0] numberWithInt:351];
  v193 = [MEMORY[0x277CCABB0] numberWithInt:360];
  v178 = [MEMORY[0x277CCABB0] numberWithInt:362];
  v190 = [MEMORY[0x277CCABB0] numberWithInt:370];
  v187 = [MEMORY[0x277CCABB0] numberWithInt:375];
  v181 = [MEMORY[0x277CCABB0] numberWithInt:393];
  v166 = [MEMORY[0x277CCABB0] numberWithInt:414];
  v175 = [MEMORY[0x277CCABB0] numberWithInt:425];
  v146 = [MEMORY[0x277CCABB0] numberWithInt:427];
  v172 = [MEMORY[0x277CCABB0] numberWithInt:433];
  v143 = [MEMORY[0x277CCABB0] numberWithInt:434];
  v169 = [MEMORY[0x277CCABB0] numberWithInt:445];
  v163 = [MEMORY[0x277CCABB0] numberWithInt:446];
  v160 = [MEMORY[0x277CCABB0] numberWithInt:530];
  v140 = [MEMORY[0x277CCABB0] numberWithInt:531];
  v157 = [MEMORY[0x277CCABB0] numberWithInt:532];
  v154 = [MEMORY[0x277CCABB0] numberWithInt:533];
  v151 = [MEMORY[0x277CCABB0] numberWithInt:635];
  v136 = [MEMORY[0x277CCABB0] numberWithInt:897];
  v27 = [MEMORY[0x277CCABB0] numberWithInt:1049];
  v132 = [MEMORY[0x277CCABB0] numberWithInt:1119];
  v130 = [MEMORY[0x277CCABB0] numberWithInt:1121];
  v28 = [MEMORY[0x277CCABB0] numberWithInt:1299];
  v29 = [MEMORY[0x277CCABB0] numberWithInt:1300];
  v30 = [MEMORY[0x277CCABB0] numberWithInt:1301];
  v31 = [MEMORY[0x277CCABB0] numberWithInt:1549];
  v32 = [MEMORY[0x277CCABB0] numberWithInt:1550];
  v135 = [v149 arrayWithObjects:{v229, v226, v223, v220, v217, v214, v211, v208, v205, v202, v196, v199, v184, v193, v178, v190, v187, v181, v166, v175, v146, v172, v143, v169, v163, v160, v140, v157, v154, v151, v136, v27, v132, v130, v28, v29, v30, v31, v32, 0}];

  v33 = MEMORY[0x277CBEA60];
  v34 = [MEMORY[0x277CCABB0] numberWithInt:1606];
  v35 = [MEMORY[0x277CCABB0] numberWithInt:1130];
  v36 = [MEMORY[0x277CCABB0] numberWithInt:1924];
  v150 = [v33 arrayWithObjects:{v34, v35, v36, 0}];

  v161 = MEMORY[0x277CBEA60];
  v230 = [MEMORY[0x277CCABB0] numberWithInt:1889];
  v227 = [MEMORY[0x277CCABB0] numberWithInt:1890];
  v224 = [MEMORY[0x277CCABB0] numberWithInt:1607];
  v221 = [MEMORY[0x277CCABB0] numberWithInt:1608];
  v218 = [MEMORY[0x277CCABB0] numberWithInt:1930];
  v215 = [MEMORY[0x277CCABB0] numberWithInt:1931];
  v209 = [MEMORY[0x277CCABB0] numberWithInt:1970];
  v212 = [MEMORY[0x277CCABB0] numberWithInt:1971];
  v197 = [MEMORY[0x277CCABB0] numberWithInt:1989];
  v206 = [MEMORY[0x277CCABB0] numberWithInt:1990];
  v191 = [MEMORY[0x277CCABB0] numberWithInt:415];
  v203 = [MEMORY[0x277CCABB0] numberWithInt:564];
  v200 = [MEMORY[0x277CCABB0] numberWithInt:619];
  v194 = [MEMORY[0x277CCABB0] numberWithInt:1010];
  v179 = [MEMORY[0x277CCABB0] numberWithInt:1210];
  v188 = [MEMORY[0x277CCABB0] numberWithInt:565];
  v158 = [MEMORY[0x277CCABB0] numberWithInt:1496];
  v185 = [MEMORY[0x277CCABB0] numberWithInt:1497];
  v155 = [MEMORY[0x277CCABB0] numberWithInt:1223];
  v182 = [MEMORY[0x277CCABB0] numberWithInt:1224];
  v176 = [MEMORY[0x277CCABB0] numberWithInt:1226];
  v173 = [MEMORY[0x277CCABB0] numberWithInt:1227];
  v152 = [MEMORY[0x277CCABB0] numberWithInt:1604];
  v170 = [MEMORY[0x277CCABB0] numberWithInt:538];
  v167 = [MEMORY[0x277CCABB0] numberWithInt:1072];
  v164 = [MEMORY[0x277CCABB0] numberWithInt:1036];
  v147 = [MEMORY[0x277CCABB0] numberWithInt:300];
  v144 = [MEMORY[0x277CCABB0] numberWithInt:1120];
  v37 = [MEMORY[0x277CCABB0] numberWithInt:1076];
  v141 = [MEMORY[0x277CCABB0] numberWithInt:1465];
  v38 = [MEMORY[0x277CCABB0] numberWithInt:1466];
  v39 = [MEMORY[0x277CCABB0] numberWithInt:2260];
  v40 = [MEMORY[0x277CCABB0] numberWithInt:2261];
  v41 = [MEMORY[0x277CCABB0] numberWithInt:2262];
  v42 = [MEMORY[0x277CCABB0] numberWithInt:2284];
  v137 = [v161 arrayWithObjects:{v230, v227, v224, v221, v218, v215, v209, v212, v197, v206, v191, v203, v200, v194, v179, v188, v158, v185, v155, v182, v176, v173, v152, v170, v167, v164, v147, v144, v37, v141, v38, v39, v40, v41, v42, 0}];

  v43 = MEMORY[0x277CBEA60];
  v44 = [MEMORY[0x277CCABB0] numberWithInt:2275];
  v45 = [MEMORY[0x277CCABB0] numberWithInt:2274];
  v46 = [MEMORY[0x277CCABB0] numberWithInt:2276];
  v47 = [MEMORY[0x277CCABB0] numberWithInt:2265];
  v148 = [v43 arrayWithObjects:{v44, v45, v46, v47, 0}];

  v48 = MEMORY[0x277CBEA60];
  v49 = [MEMORY[0x277CCABB0] numberWithInt:6144];
  v50 = [MEMORY[0x277CCABB0] numberWithInt:16678];
  v51 = [MEMORY[0x277CCABB0] numberWithInt:33];
  v52 = [MEMORY[0x277CCABB0] numberWithInt:34];
  v53 = [MEMORY[0x277CCABB0] numberWithInt:35];
  v54 = [MEMORY[0x277CCABB0] numberWithInt:36];
  v55 = [MEMORY[0x277CCABB0] numberWithInt:37];
  v131 = [v48 arrayWithObjects:{v49, v50, v51, v52, v53, v54, v55, 0}];

  v56 = MEMORY[0x277CBEA60];
  v57 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v231 = [v56 arrayWithObjects:{v57, 0}];

  v58 = MEMORY[0x277CBEA60];
  v59 = [MEMORY[0x277CCABB0] numberWithInt:2011];
  v60 = [MEMORY[0x277CCABB0] numberWithInt:2471];
  v61 = [MEMORY[0x277CCABB0] numberWithInt:2472];
  v62 = [MEMORY[0x277CCABB0] numberWithInt:2473];
  v145 = [v58 arrayWithObjects:{v59, v60, v61, v62, 0}];

  v63 = MEMORY[0x277CBEA60];
  v64 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v142 = [v63 arrayWithObjects:{v64, 0}];

  v133 = MEMORY[0x277CBEA60];
  v228 = [MEMORY[0x277CCABB0] numberWithInt:316];
  v225 = [MEMORY[0x277CCABB0] numberWithInt:2258];
  v222 = [MEMORY[0x277CCABB0] numberWithInt:2273];
  v219 = [MEMORY[0x277CCABB0] numberWithInt:2270];
  v216 = [MEMORY[0x277CCABB0] numberWithInt:2271];
  v213 = [MEMORY[0x277CCABB0] numberWithInt:2279];
  v210 = [MEMORY[0x277CCABB0] numberWithInt:1615];
  v207 = [MEMORY[0x277CCABB0] numberWithInt:2287];
  v204 = [MEMORY[0x277CCABB0] numberWithInt:625];
  v198 = [MEMORY[0x277CCABB0] numberWithInt:1613];
  v201 = [MEMORY[0x277CCABB0] numberWithInt:1614];
  v186 = [MEMORY[0x277CCABB0] numberWithInt:2006];
  v195 = [MEMORY[0x277CCABB0] numberWithInt:2007];
  v180 = [MEMORY[0x277CCABB0] numberWithInt:2028];
  v192 = [MEMORY[0x277CCABB0] numberWithInt:2029];
  v189 = [MEMORY[0x277CCABB0] numberWithInt:2131];
  v183 = [MEMORY[0x277CCABB0] numberWithInt:2176];
  v168 = [MEMORY[0x277CCABB0] numberWithInt:2177];
  v177 = [MEMORY[0x277CCABB0] numberWithInt:2244];
  v122 = [MEMORY[0x277CCABB0] numberWithInt:2245];
  v174 = [MEMORY[0x277CCABB0] numberWithInt:1807];
  v121 = [MEMORY[0x277CCABB0] numberWithInt:1808];
  v171 = [MEMORY[0x277CCABB0] numberWithInt:2476];
  v165 = [MEMORY[0x277CCABB0] numberWithInt:2477];
  v162 = [MEMORY[0x277CCABB0] numberWithInt:2478];
  v120 = [MEMORY[0x277CCABB0] numberWithInt:567];
  v159 = [MEMORY[0x277CCABB0] numberWithInt:568];
  v156 = [MEMORY[0x277CCABB0] numberWithInt:1013];
  v153 = [MEMORY[0x277CCABB0] numberWithInt:1131];
  v119 = [MEMORY[0x277CCABB0] numberWithInt:1132];
  v118 = [MEMORY[0x277CCABB0] numberWithInt:2288];
  v65 = [MEMORY[0x277CCABB0] numberWithInt:2289];
  v117 = [MEMORY[0x277CCABB0] numberWithInt:2290];
  v66 = [MEMORY[0x277CCABB0] numberWithInt:2493];
  v67 = [MEMORY[0x277CCABB0] numberWithInt:2494];
  v68 = [MEMORY[0x277CCABB0] numberWithInt:2485];
  v69 = [MEMORY[0x277CCABB0] numberWithInt:2486];
  v70 = [MEMORY[0x277CCABB0] numberWithInt:2488];
  v134 = [v133 arrayWithObjects:{v228, v225, v222, v219, v216, v213, v210, v207, v204, v198, v201, v186, v195, v180, v192, v189, v183, v168, v177, v122, v174, v121, v171, v165, v162, v120, v159, v156, v153, v119, v118, v65, v117, v66, v67, v68, v69, v70, 0}];

  v71 = MEMORY[0x277CBEA60];
  v72 = [MEMORY[0x277CCABB0] numberWithInt:2521];
  v73 = [MEMORY[0x277CCABB0] numberWithInt:2549];
  v74 = [MEMORY[0x277CCABB0] numberWithInt:2555];
  v75 = [MEMORY[0x277CCABB0] numberWithInt:2556];
  v76 = [MEMORY[0x277CCABB0] numberWithInt:2557];
  v77 = [MEMORY[0x277CCABB0] numberWithInt:2558];
  v78 = [MEMORY[0x277CCABB0] numberWithInt:2559];
  v79 = [MEMORY[0x277CCABB0] numberWithInt:2560];
  v80 = [v71 arrayWithObjects:{v72, v73, v74, v75, v76, v77, v78, v79, 0}];

  v81 = v127;
  [v123 addObjectsFromArray:v231];
  kPLBasebandClassOfDevice = [MEMORY[0x277D3F208] kPLBasebandClassOfDevice];
  if ((kPLBasebandClassOfDevice - 1003001) < 5 || kPLBasebandClassOfDevice == 1003007)
  {
    [v123 addObjectsFromArray:v127];
  }

  v83 = v129;
  v84 = selfCopy;
  if ([MEMORY[0x277D3F180] fullMode])
  {
    kPLBasebandClassOfDevice2 = [MEMORY[0x277D3F208] kPLBasebandClassOfDevice];
    if ((kPLBasebandClassOfDevice2 - 1003002) >= 4)
    {
      v86 = v139;
      if (kPLBasebandClassOfDevice2 == 1003001)
      {
        goto LABEL_6;
      }

      if (kPLBasebandClassOfDevice2 != 1003007)
      {
        goto LABEL_7;
      }
    }

    [v123 addObjectsFromArray:v139];
    v86 = v131;
LABEL_6:
    [v123 addObjectsFromArray:v86];
  }

LABEL_7:
  [v125 addObjectsFromArray:v129];
  kPLBasebandClassOfDevice3 = [MEMORY[0x277D3F208] kPLBasebandClassOfDevice];
  if ((kPLBasebandClassOfDevice3 - 1003002) < 4 || kPLBasebandClassOfDevice3 == 1003007)
  {
    [v125 addObjectsFromArray:v150];
    [v125 addObjectsFromArray:v148];
    [v125 addObjectsFromArray:v145];
    v88 = v124;
    v89 = v142;
LABEL_9:
    [v88 addObjectsFromArray:v89];
    goto LABEL_10;
  }

  if (kPLBasebandClassOfDevice3 == 1003001)
  {
    [v125 addObjectsFromArray:v150];
    [v125 addObjectsFromArray:v148];
    v88 = v125;
    v89 = v128;
    goto LABEL_9;
  }

LABEL_10:
  if (![MEMORY[0x277D3F180] fullMode])
  {
    goto LABEL_17;
  }

  [v125 addObjectsFromArray:v135];
  kPLBasebandClassOfDevice4 = [MEMORY[0x277D3F208] kPLBasebandClassOfDevice];
  if (kPLBasebandClassOfDevice4 <= 1003002)
  {
    v92 = v137;
    v93 = v138;
    if (kPLBasebandClassOfDevice4 == 1003001)
    {
      goto LABEL_16;
    }

    v91 = v137;
    v93 = v138;
    v92 = v134;
    if (kPLBasebandClassOfDevice4 == 1003002)
    {
LABEL_15:
      [v125 addObjectsFromArray:v91];
LABEL_16:
      [v125 addObjectsFromArray:v92];
      [v125 addObjectsFromArray:v93];
    }
  }

  else if ((kPLBasebandClassOfDevice4 - 1003003) < 3 || kPLBasebandClassOfDevice4 == 1003007)
  {
    [v125 addObjectsFromArray:v137];
    v91 = v134;
    v92 = v138;
    v93 = v80;
    goto LABEL_15;
  }

LABEL_17:
  if ([(PLBBAgent *)selfCopy setupChannel:selfCopy->cachedChannel withLogCodes:v123 andEvents:v125 andExtracode:v124])
  {
    [(PLBasebandLogChannel *)selfCopy->cachedChannel setChannelTimeout:10.0];
    v94 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v95 = [v123 containsObject:v94];

    if (v95)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v96 = objc_opt_class();
        v233[0] = MEMORY[0x277D85DD0];
        v233[1] = 3221225472;
        v233[2] = __39__PLBBAgent_setupBBChannelsWithAction___block_invoke_1483;
        v233[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v233[4] = v96;
        if (qword_2811F5440 != -1)
        {
          dispatch_once(&qword_2811F5440, v233);
        }

        if (byte_2811F4FD1 == 1)
        {
          420000 = [MEMORY[0x277CCACA8] stringWithFormat:@"Hw log level %d, win size %d", 6, 420000];
          v98 = MEMORY[0x277D3F178];
          v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
          lastPathComponent = [v99 lastPathComponent];
          v101 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupBBChannelsWithAction:]"];
          [v98 logMessage:420000 fromFile:lastPathComponent fromFunction:v101 fromLineNumber:2705];

          v102 = PLLogCommon();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v236 = 420000;
            _os_log_debug_impl(&dword_21A4C6000, v102, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v84 = selfCopy;
          v81 = v127;
          v83 = v129;
        }
      }

      [(PLBasebandLogChannel *)v84->cachedChannel setHardwareLoggingLevel:6 withWindowSize:420000];
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v103 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__PLBBAgent_setupBBChannelsWithAction___block_invoke_1489;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v103;
      if (qword_2811F5448 != -1)
      {
        dispatch_once(&qword_2811F5448, block);
      }

      if (byte_2811F4FD2 == 1)
      {
        v104 = v81;
        v105 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initializing BB channels complete"];
        v106 = MEMORY[0x277D3F178];
        v107 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent2 = [v107 lastPathComponent];
        v109 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupBBChannelsWithAction:]"];
        [v106 logMessage:v105 fromFile:lastPathComponent2 fromFunction:v109 fromLineNumber:2710];

        v110 = PLLogCommon();
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v236 = v105;
LABEL_52:
          _os_log_debug_impl(&dword_21A4C6000, v110, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          goto LABEL_38;
        }

        goto LABEL_38;
      }
    }
  }

  else
  {
    [(PLBBAgent *)selfCopy scheduleReconnect];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v111 = objc_opt_class();
      v234[0] = MEMORY[0x277D85DD0];
      v234[1] = 3221225472;
      v234[2] = __39__PLBBAgent_setupBBChannelsWithAction___block_invoke;
      v234[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v234[4] = v111;
      if (qword_2811F5438 != -1)
      {
        dispatch_once(&qword_2811F5438, v234);
      }

      if (byte_2811F4FD0 == 1)
      {
        v104 = v127;
        v105 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: need to schedule reconnect"];
        v112 = MEMORY[0x277D3F178];
        v113 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent3 = [v113 lastPathComponent];
        v115 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupBBChannelsWithAction:]"];
        [v112 logMessage:v105 fromFile:lastPathComponent3 fromFunction:v115 fromLineNumber:2697];

        v110 = PLLogCommon();
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v236 = v105;
          goto LABEL_52;
        }

LABEL_38:
        v81 = v104;
        v83 = v129;
      }
    }
  }

  v116 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PLBBAgent_setupBBChannelsWithAction___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FD0 = result;
  return result;
}

uint64_t __39__PLBBAgent_setupBBChannelsWithAction___block_invoke_1483(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FD1 = result;
  return result;
}

uint64_t __39__PLBBAgent_setupBBChannelsWithAction___block_invoke_1489(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FD2 = result;
  return result;
}

- (id)setupIOKitNotifications
{
  v46 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v3 = *MEMORY[0x277CD28A0];
    v4 = IONotificationPortCreate(*MEMORY[0x277CD28A0]);
    self->ioNotifyPort = v4;
    workQueue = [(PLOperator *)self workQueue];
    IONotificationPortSetDispatchQueue(v4, workQueue);

    v6 = IOServiceMatching("AppleBaseband");
    MatchingService = IOServiceGetMatchingService(v3, v6);
    self->baseband_service = MatchingService;
    debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
    if (!MatchingService)
    {
      if (!debugEnabled)
      {
        goto LABEL_23;
      }

      v25 = objc_opt_class();
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __36__PLBBAgent_setupIOKitNotifications__block_invoke;
      v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v43[4] = v25;
      if (qword_2811F5450 != -1)
      {
        dispatch_once(&qword_2811F5450, v43);
      }

      if (byte_2811F4FD3 != 1)
      {
        goto LABEL_23;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not find %s service\n", "AppleBaseband"];
      v26 = MEMORY[0x277D3F178];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v27 lastPathComponent];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupIOKitNotifications]"];
      [v26 logMessage:v19 fromFile:lastPathComponent fromFunction:v29 fromLineNumber:2723];

      v24 = PLLogCommon();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v45 = v19;
      goto LABEL_36;
    }

    if (debugEnabled)
    {
      v9 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__PLBBAgent_setupIOKitNotifications__block_invoke_1499;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v9;
      if (qword_2811F5458 != -1)
      {
        dispatch_once(&qword_2811F5458, block);
      }

      if (byte_2811F4FD4 == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"found matching service for baseband"];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent2 = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupIOKitNotifications]"];
        [v11 logMessage:v10 fromFile:lastPathComponent2 fromFunction:v14 fromLineNumber:2726];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v45 = v10;
          _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v16 = IOServiceAddInterestNotification(self->ioNotifyPort, self->baseband_service, "IOGeneralInterest", BasebandResetCallback, self, &self->notificationRef);
    debugEnabled2 = [MEMORY[0x277D3F180] debugEnabled];
    if (v16)
    {
      if (!debugEnabled2)
      {
        goto LABEL_23;
      }

      v18 = objc_opt_class();
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __36__PLBBAgent_setupIOKitNotifications__block_invoke_1506;
      v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v41[4] = v18;
      if (qword_2811F5460 != -1)
      {
        dispatch_once(&qword_2811F5460, v41);
      }

      if (byte_2811F4FD5 != 1)
      {
        goto LABEL_23;
      }

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error calling IOServiceAddInterestNotification (0x%08x)", v16];
      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent3 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupIOKitNotifications]"];
      [v20 logMessage:v19 fromFile:lastPathComponent3 fromFunction:v23 fromLineNumber:2733];

      v24 = PLLogCommon();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
LABEL_22:

LABEL_23:
        selfCopy = 0;
        goto LABEL_32;
      }

      *buf = 138412290;
      v45 = v19;
LABEL_36:
      _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      goto LABEL_22;
    }

    if (debugEnabled2)
    {
      v31 = objc_opt_class();
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __36__PLBBAgent_setupIOKitNotifications__block_invoke_1512;
      v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v40[4] = v31;
      if (qword_2811F5468 != -1)
      {
        dispatch_once(&qword_2811F5468, v40);
      }

      if (byte_2811F4FD6 == 1)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Subscribed to notification for baseband"];
        v33 = MEMORY[0x277D3F178];
        v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent4 = [v34 lastPathComponent];
        v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent setupIOKitNotifications]"];
        [v33 logMessage:v32 fromFile:lastPathComponent4 fromFunction:v36 fromLineNumber:2736];

        v37 = PLLogCommon();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v45 = v32;
          _os_log_debug_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }
  }

  selfCopy = self;
LABEL_32:
  v38 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

uint64_t __36__PLBBAgent_setupIOKitNotifications__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FD3 = result;
  return result;
}

uint64_t __36__PLBBAgent_setupIOKitNotifications__block_invoke_1499(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FD4 = result;
  return result;
}

uint64_t __36__PLBBAgent_setupIOKitNotifications__block_invoke_1506(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FD5 = result;
  return result;
}

uint64_t __36__PLBBAgent_setupIOKitNotifications__block_invoke_1512(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FD6 = result;
  return result;
}

- (BOOL)isTimeToRequestReport
{
  lastReportRequestDate = [(PLBBAgent *)self lastReportRequestDate];

  if (lastReportRequestDate)
  {
    lastReportRequestDate2 = [(PLBBAgent *)self lastReportRequestDate];
    [lastReportRequestDate2 timeIntervalSinceNow];
    v6 = v5;

    if (v6 >= -300.0)
    {
      v9 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __34__PLBBAgent_isTimeToRequestReport__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v9;
      if (qword_2811F5470 != -1)
      {
        dispatch_once(&qword_2811F5470, block);
      }

      if (byte_2811F4FD7 != 1)
      {
        return 0;
      }

      lastReportRequestDate3 = [(PLBBAgent *)self lastReportRequestDate];
      [lastReportRequestDate3 timeIntervalSinceNow];
      v12 = v11;

      if (v12 >= -30.0)
      {
        return 0;
      }
    }
  }

  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLBBAgent *)self setLastReportRequestDate:monotonicDate];

  return 1;
}

uint64_t __34__PLBBAgent_isTimeToRequestReport__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FD7 = result;
  return result;
}

- (void)cacheCommitTimerFired
{
  v18 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __34__PLBBAgent_cacheCommitTimerFired__block_invoke;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v3;
    if (qword_2811F5478 != -1)
    {
      dispatch_once(&qword_2811F5478, &block);
    }

    if (byte_2811F4FD8 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent cacheCommitTimerFired]", block, v12, v13, v14, v15];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent cacheCommitTimerFired]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:2769];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [(PLBBAgent *)self logEventNoneBBReportBy:1 withAction:3];
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __34__PLBBAgent_cacheCommitTimerFired__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FD8 = result;
  return result;
}

- (void)scheduleFlushPostCacheCommit
{
  v17 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__PLBBAgent_scheduleFlushPostCacheCommit__block_invoke;
    v14[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v14[4] = v3;
    if (qword_2811F5480 != -1)
    {
      dispatch_once(&qword_2811F5480, v14);
    }

    if (byte_2811F4FD9 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent scheduleFlushPostCacheCommit]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent scheduleFlushPostCacheCommit]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:2775];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = dispatch_time(0, 30000000000);
  workQueue = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PLBBAgent_scheduleFlushPostCacheCommit__block_invoke_1516;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_after(v10, workQueue, block);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLBBAgent_scheduleFlushPostCacheCommit__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FD9 = result;
  return result;
}

- (void)initCacheCommitTimer
{
  v19 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__PLBBAgent_initCacheCommitTimer__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F5488 != -1)
    {
      dispatch_once(&qword_2811F5488, block);
    }

    if (byte_2811F4FDA == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent initCacheCommitTimer]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent initCacheCommitTimer]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:2785];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = objc_alloc(MEMORY[0x277D3F250]);
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
  workQueue = [(PLOperator *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__PLBBAgent_initCacheCommitTimer__block_invoke_1517;
  v15[3] = &unk_278259C40;
  v15[4] = self;
  v13 = [v10 initWithFireDate:v11 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v15 withQueue:300.0 withBlock:0.0];
  [(PLBBAgent *)self setCacheCommitTimer:v13];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __33__PLBBAgent_initCacheCommitTimer__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FDA = result;
  return result;
}

uint64_t __33__PLBBAgent_initCacheCommitTimer__block_invoke_1517(uint64_t a1)
{
  [*(a1 + 32) cacheCommitTimerFired];
  v2 = *(a1 + 32);

  return [v2 scheduleFlushPostCacheCommit];
}

- (void)cancelCacheCommitTimer
{
  cacheCommitTimer = [(PLBBAgent *)self cacheCommitTimer];
  [cacheCommitTimer setTimerActive:0];
}

- (void)resetCacheCommitTimer
{
  cacheCommitTimer = [(PLBBAgent *)self cacheCommitTimer];
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
  [cacheCommitTimer setFireDate:v2];
}

- (void)initOperatorDependancies
{
  v104 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__PLBBAgent_initOperatorDependancies__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F5490 != -1)
    {
      dispatch_once(&qword_2811F5490, block);
    }

    if (byte_2811F4FDB == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent initOperatorDependancies]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent initOperatorDependancies]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:2807];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v103 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  [(PLBBAgent *)self setDsdsRegMsgs:array];

  array2 = [MEMORY[0x277CBEB18] array];
  [(PLBBAgent *)self setDsdsActivityMsgs:array2];

  v12 = 4;
  do
  {
    dsdsRegMsgs = [(PLBBAgent *)self dsdsRegMsgs];
    v14 = objc_alloc_init(PLBBTelephonyDsdsRegMsg);
    [dsdsRegMsgs addObject:v14];

    dsdsActivityMsgs = [(PLBBAgent *)self dsdsActivityMsgs];
    v16 = objc_alloc_init(PLBBTelephonyDsdsActivityMsg);
    [dsdsActivityMsgs addObject:v16];

    --v12;
  }

  while (v12);
  if ([MEMORY[0x277D3F208] isBasebandDSDS])
  {
    v17 = dispatch_queue_create("Telephony Client Queue", 0);
    telephonyClientQueue = self->_telephonyClientQueue;
    self->_telephonyClientQueue = v17;

    v19 = objc_alloc(MEMORY[0x277CC37B0]);
    telephonyClientQueue = [(PLBBAgent *)self telephonyClientQueue];
    v21 = [v19 initWithQueue:telephonyClientQueue];
    telephonyClient = self->_telephonyClient;
    self->_telephonyClient = v21;

    [(CoreTelephonyClient *)self->_telephonyClient setDelegate:self];
    v23 = MEMORY[0x277D6EDF8];
    telephonyClientQueue2 = [(PLBBAgent *)self telephonyClientQueue];
    v25 = [v23 callCenterWithQueue:telephonyClientQueue2];
    callCenter = self->_callCenter;
    self->_callCenter = v25;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_callStatusChanged_ name:*MEMORY[0x277D6EFF0] object:0];
  }

  self->_isBBOOS = 0;
  self->_isFirstTimeAccountingOOS = 1;
  self->_isBBDataStandard = 1;
  [(PLBBAgent *)self logBasebandConfig];
  [(PLBBAgent *)self setupTelephonyRegistrationChannels];
  [(PLBBAgent *)self setupTelephonyActivityChannels];
  [(PLBBAgent *)self setupTimeUpdateChannel];
  if (([MEMORY[0x277D3F208] isBasebandProto] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandMav") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
  {
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __37__PLBBAgent_initOperatorDependancies__block_invoke_1527;
    v92[3] = &unk_2782597E8;
    v92[4] = self;
    v28 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v92];
    batteryLevelChanged = self->_batteryLevelChanged;
    self->_batteryLevelChanged = v28;

    [(PLBBAgent *)self setupKICEChannels];
LABEL_16:
    [(PLBBAgent *)self setAgentInited:1];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v30 = objc_opt_class();
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __37__PLBBAgent_initOperatorDependancies__block_invoke_1535;
      v90[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v90[4] = v30;
      if (qword_2811F54A0 != -1)
      {
        dispatch_once(&qword_2811F54A0, v90);
      }

      if (byte_2811F4FDD == 1)
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Setup TelephonyRegistration init"];
        v32 = MEMORY[0x277D3F178];
        v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent2 = [v33 lastPathComponent];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent initOperatorDependancies]"];
        [v32 logMessage:v31 fromFile:lastPathComponent2 fromFunction:v35 fromLineNumber:2873];

        v36 = PLLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v103 = v31;
          _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v37 = objc_opt_new();
    [(PLBBAgent *)self setTelRegMsgHelper:v37];

    telRegMsgHelper = [(PLBBAgent *)self telRegMsgHelper];
    [telRegMsgHelper setAgent:self];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v39 = objc_opt_class();
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __37__PLBBAgent_initOperatorDependancies__block_invoke_1541;
      v89[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v89[4] = v39;
      if (qword_2811F54A8 != -1)
      {
        dispatch_once(&qword_2811F54A8, v89);
      }

      if (byte_2811F4FDE == 1)
      {
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Setup TelephonyActivity init"];
        v41 = MEMORY[0x277D3F178];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent3 = [v42 lastPathComponent];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent initOperatorDependancies]"];
        [v41 logMessage:v40 fromFile:lastPathComponent3 fromFunction:v44 fromLineNumber:2878];

        v45 = PLLogCommon();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v103 = v40;
          _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v46 = objc_opt_new();
    [(PLBBAgent *)self setTelActMsgHelper:v46];

    telActMsgHelper = [(PLBBAgent *)self telActMsgHelper];
    [telActMsgHelper setAgent:self];

    [(PLBBAgent *)self logTelephonyRegistrationAtInit];
    [(PLBBAgent *)self logTelephonyActivityAtInit];
    v48 = objc_alloc(MEMORY[0x277D3F160]);
    v49 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __37__PLBBAgent_initOperatorDependancies__block_invoke_1549;
    v88[3] = &unk_2782597E8;
    v88[4] = self;
    v50 = [v48 initWithWorkQueue:v49 forNotification:@"com.apple.powerlogd.bbreport" requireState:0 withBlock:v88];
    [(PLBBAgent *)self setCfNotifyBBReport:v50];

    v51 = objc_alloc(MEMORY[0x277D3F160]);
    v52 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __37__PLBBAgent_initOperatorDependancies__block_invoke_2_1553;
    v87[3] = &unk_2782597E8;
    v87[4] = self;
    v53 = [v51 initWithWorkQueue:v52 forNotification:@"com.apple.powerlogd.bbreport30s" requireState:0 withBlock:v87];
    [(PLBBAgent *)self setCfNotifyBBReport30s:v53];

    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __37__PLBBAgent_initOperatorDependancies__block_invoke_3;
    v86[3] = &unk_2782597E8;
    v86[4] = self;
    v54 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v86];
    [(PLBBAgent *)self setCanSleepNotification:v54];

    v55 = objc_alloc(MEMORY[0x277D3F1A8]);
    v98 = &unk_282C11D18;
    v99 = &unk_282C11D30;
    v100[0] = @"State";
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
    v100[1] = @"Event";
    v101[0] = v56;
    v96 = &unk_282C11D18;
    v97 = &unk_282C11D48;
    v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    v101[1] = v57;
    v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:2];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __37__PLBBAgent_initOperatorDependancies__block_invoke_1570;
    v85[3] = &unk_2782597E8;
    v85[4] = self;
    v59 = [v55 initWithOperator:self forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" withFilter:v58 withBlock:v85];
    [(PLBBAgent *)self setDidNotSleepNotification:v59];

    v60 = objc_alloc(MEMORY[0x277D3F1A8]);
    v61 = [(PLOperator *)PLBBAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"TelephonyActivity"];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __37__PLBBAgent_initOperatorDependancies__block_invoke_2_1571;
    v84[3] = &unk_2782597E8;
    v84[4] = self;
    v62 = [v60 initWithOperator:self forEntryKey:v61 withBlock:v84];
    [(PLBBAgent *)self setTelephonyActivityNotification:v62];

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    v94 = @"BB-Standard";
    v95 = &unk_282C1C688;
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:6 withChildNodeNameToWeight:v64 withStartDate:monotonicDate];

    v66 = objc_alloc(MEMORY[0x277D3F1F0]);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __37__PLBBAgent_initOperatorDependancies__block_invoke_3_1579;
    v83[3] = &unk_2782597E8;
    v83[4] = self;
    v67 = [v66 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v83];
    thermalMonitorListener = self->_thermalMonitorListener;
    self->_thermalMonitorListener = v67;

    v69 = objc_alloc(MEMORY[0x277D3F278]);
    workQueue = [(PLOperator *)self workQueue];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __37__PLBBAgent_initOperatorDependancies__block_invoke_3_1598;
    v82[3] = &unk_278259810;
    v82[4] = self;
    v71 = [v69 initWithWorkQueue:workQueue withRegistration:&unk_282C18AA8 withBlock:v82];

    [(PLBBAgent *)self setBBLogsSysdiagnoseResponder:v71];
    objc_storeStrong(&qword_2811F5260, self);
    v72 = PLLogCommon();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v72, OS_LOG_TYPE_DEBUG, "BBAgent: End of initOperatorDependencies", buf, 2u);
    }

    goto LABEL_33;
  }

  setupIOKitNotifications = [(PLBBAgent *)self setupIOKitNotifications];

  if (setupIOKitNotifications)
  {
    [(PLBBAgent *)self setupMavABMChannel];
    [(PLBBAgent *)self setupBBChannelsWithAction:0];
    [(PLBasebandLogChannel *)self->cachedChannel flush];
    [(PLBBAgent *)self initCacheCommitTimer];
    goto LABEL_16;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v75 = objc_opt_class();
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __37__PLBBAgent_initOperatorDependancies__block_invoke_2;
    v91[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v91[4] = v75;
    if (qword_2811F5498 != -1)
    {
      dispatch_once(&qword_2811F5498, v91);
    }

    if (byte_2811F4FDC == 1)
    {
      v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: BBAgent no ioKitNotifications"];
      v77 = MEMORY[0x277D3F178];
      v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent4 = [v78 lastPathComponent];
      v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent initOperatorDependancies]"];
      [v77 logMessage:v76 fromFile:lastPathComponent4 fromFunction:v80 fromLineNumber:2855];

      v81 = PLLogCommon();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v103 = v76;
        _os_log_debug_impl(&dword_21A4C6000, v81, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

LABEL_33:
  v73 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PLBBAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FDB = result;
  return result;
}

uint64_t __37__PLBBAgent_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FDC = result;
  return result;
}

uint64_t __37__PLBBAgent_initOperatorDependancies__block_invoke_1535(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FDD = result;
  return result;
}

uint64_t __37__PLBBAgent_initOperatorDependancies__block_invoke_1541(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FDE = result;
  return result;
}

void __37__PLBBAgent_initOperatorDependancies__block_invoke_1583()
{
  v0 = +[PLMAVBBMetric sharedInstance];
  [v0 flushPeriodicMetrics];
}

void __37__PLBBAgent_initOperatorDependancies__block_invoke_2_1584()
{
  v0 = +[PLSinopeBBMetric sharedInstance];
  [v0 flushPeriodicMetrics];
}

void *__37__PLBBAgent_initOperatorDependancies__block_invoke_3_1598(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "XPC Call from TS Sysdiagnose", buf, 2u);
  }

  if ([MEMORY[0x277D3F208] isBasebandMavToAllowSysdiagnoseTrigger])
  {
    v3 = PLLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Assert flush supported", v11, 2u);
    }

    v4 = &unk_282C18AD0;
    v5 = 8;
  }

  else
  {
    v6 = [MEMORY[0x277D3F208] isBasebandProto];
    v3 = PLLogCommon();
    v7 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v7)
      {
        *v10 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Assert flush not supported", v10, 2u);
      }

      v4 = &unk_282C18AF8;
    }

    else
    {
      if (v7)
      {
        *v9 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Assert flush not supported", v9, 2u);
      }

      v4 = &unk_282C18B20;
    }

    v5 = 7;
  }

  [*(a1 + 32) logEventNoneBBReportBy:4 withAction:v5];
  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D6EFF0] object:0];

  v4.receiver = self;
  v4.super_class = PLBBAgent;
  [(PLAgent *)&v4 dealloc];
}

- (void)logEntry:(id)entry
{
  v53 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v50.receiver = self;
  v50.super_class = PLBBAgent;
  [(PLOperator *)&v50 logEntry:entryCopy];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __22__PLBBAgent_logEntry___block_invoke;
    v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v49[4] = v5;
    if (qword_2811F54B0 != -1)
    {
      dispatch_once(&qword_2811F54B0, v49);
    }

    if (byte_2811F4FDF == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent logEntry:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logEntry:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:3027];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v52 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = objc_opt_class();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__PLBBAgent_logEntry___block_invoke_1621;
  block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  block[4] = v12;
  if (qword_2811F54B8 != -1)
  {
    dispatch_once(&qword_2811F54B8, block);
  }

  if (byte_2811F4FE0 == 1)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\n\n\n\nAgent has sent PL Entry"];
    v14 = MEMORY[0x277D3F178];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
    lastPathComponent2 = [v15 lastPathComponent];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logEntry:]"];
    [v14 logMessage:v13 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:3030];

    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v52 = v13;
      _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** START of PLEntry ***"];
    v20 = MEMORY[0x277D3F178];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
    lastPathComponent3 = [v21 lastPathComponent];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logEntry:]"];
    [v20 logMessage:v19 fromFile:lastPathComponent3 fromFunction:v23 fromLineNumber:3031];

    v24 = PLLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v52 = v19;
      _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v25 = MEMORY[0x277CCACA8];
    entryKey = [entryCopy entryKey];
    v27 = [v25 stringWithFormat:@"Name: %@\n", entryKey];

    v28 = MEMORY[0x277D3F178];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
    lastPathComponent4 = [v29 lastPathComponent];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logEntry:]"];
    [v28 logMessage:v27 fromFile:lastPathComponent4 fromFunction:v31 fromLineNumber:3032];

    v32 = PLLogCommon();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v52 = v27;
      _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v33 = MEMORY[0x277CCACA8];
    v34 = [entryCopy description];
    v35 = [v33 stringWithFormat:@"Description:%@\n", v34];

    v36 = MEMORY[0x277D3F178];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
    lastPathComponent5 = [v37 lastPathComponent];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logEntry:]"];
    [v36 logMessage:v35 fromFile:lastPathComponent5 fromFunction:v39 fromLineNumber:3033];

    v40 = PLLogCommon();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v52 = v35;
      _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** END of PLEntry ***\n\n\n\n\n"];
    v42 = MEMORY[0x277D3F178];
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
    lastPathComponent6 = [v43 lastPathComponent];
    v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logEntry:]"];
    [v42 logMessage:v41 fromFile:lastPathComponent6 fromFunction:v45 fromLineNumber:3034];

    v46 = PLLogCommon();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v52 = v41;
      _os_log_debug_impl(&dword_21A4C6000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t __22__PLBBAgent_logEntry___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FDF = result;
  return result;
}

uint64_t __22__PLBBAgent_logEntry___block_invoke_1621(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FE0 = result;
  return result;
}

- (void)logEntries:(id)entries withGroupID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v23.receiver = self;
  v23.super_class = PLBBAgent;
  [(PLOperator *)&v23 logEntries:entriesCopy withGroupID:d];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __36__PLBBAgent_logEntries_withGroupID___block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v7;
    if (qword_2811F54C0 != -1)
    {
      dispatch_once(&qword_2811F54C0, &block);
    }

    if (byte_2811F4FE1 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent logEntries:withGroupID:]", block, v19, v20, v21, v22];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logEntries:withGroupID:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:3046];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F208] isBasebandMavLeg])
  {
    [(PLBBAgent *)self modelMav10BBHWPower:entriesCopy];
  }

  else
  {
    [(PLBBAgent *)self modelMavBBHWOtherPerRATPower:entriesCopy];
  }

  v14 = [entriesCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOther"];

  if (v14)
  {
    v15 = [entriesCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOther"];
    v16 = [v15 objectAtIndexedSubscript:0];

    [(PLBBAgent *)self modelGPSPower:v16];
  }

  if (([MEMORY[0x277D3F208] isBasebandClass:1003001] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003002) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandMavLeg"))
  {
    [(PLBBAgent *)self modelScanPower:entriesCopy];
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __36__PLBBAgent_logEntries_withGroupID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FE1 = result;
  return result;
}

- (void)log
{
  v31 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __16__PLBBAgent_log__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F54C8 != -1)
    {
      dispatch_once(&qword_2811F54C8, block);
    }

    if (byte_2811F4FE2 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent log]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent log]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:3069];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (([MEMORY[0x277D3F208] isBasebandProto] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandMav") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __16__PLBBAgent_log__block_invoke_1641;
      v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v27[4] = v10;
      if (qword_2811F54D0 != -1)
      {
        dispatch_once(&qword_2811F54D0, v27);
      }

      if (byte_2811F4FE3 == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBBAgent:log for Protobuf platforms"];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent2 = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent log]"];
        [v12 logMessage:v11 fromFile:lastPathComponent2 fromFunction:v15 fromLineNumber:3072];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v11;
          _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v17 = 7;
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __16__PLBBAgent_log__block_invoke_1647;
      v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v26[4] = v19;
      if (qword_2811F54D8 != -1)
      {
        dispatch_once(&qword_2811F54D8, v26);
      }

      if (byte_2811F4FE4 == 1)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBBAgent:log for Mav"];
        v21 = MEMORY[0x277D3F178];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent3 = [v22 lastPathComponent];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent log]"];
        [v21 logMessage:v20 fromFile:lastPathComponent3 fromFunction:v24 fromLineNumber:3075];

        v25 = PLLogCommon();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v20;
          _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v17 = 4;
    [(PLBBAgent *)self logEventNoneBBReportBy:4 withAction:3];
  }

  [(PLBBAgent *)self logEventNoneBBReportBy:4 withAction:v17];
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __16__PLBBAgent_log__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FE2 = result;
  return result;
}

uint64_t __16__PLBBAgent_log__block_invoke_1641(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FE3 = result;
  return result;
}

uint64_t __16__PLBBAgent_log__block_invoke_1647(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FE4 = result;
  return result;
}

- (void)flushBBCacheWithClientInfo:(int64_t)info
{
  v36 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLBBAgent_flushBBCacheWithClientInfo___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F54E0 != -1)
    {
      dispatch_once(&qword_2811F54E0, block);
    }

    if (byte_2811F4FE5 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent flushBBCacheWithClientInfo:]"];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent flushBBCacheWithClientInfo:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:3083];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __40__PLBBAgent_flushBBCacheWithClientInfo___block_invoke_1653;
    v32[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v32[4] = v12;
    if (qword_2811F54E8 != -1)
    {
      dispatch_once(&qword_2811F54E8, v32);
    }

    if (byte_2811F4FE6 == 1)
    {
      info = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBBAgent log method called by:%ld", info];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent2 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent flushBBCacheWithClientInfo:]"];
      [v14 logMessage:info fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:3084];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = info;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([(PLBBAgent *)self agentInited])
  {
    [(PLBBAgent *)self eventToFlushCacheOccurred];
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __40__PLBBAgent_flushBBCacheWithClientInfo___block_invoke_1659;
    v30 = &__block_descriptor_40_e5_v8__0lu32l8;
    v31 = v19;
    if (qword_2811F54F0 != -1)
    {
      dispatch_once(&qword_2811F54F0, &v27);
    }

    if (byte_2811F4FE7 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: PLBBAgent log method called by %ld before init", info, v27, v28, v29, v30, v31];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent3 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent flushBBCacheWithClientInfo:]"];
      [v21 logMessage:v20 fromFile:lastPathComponent3 fromFunction:v24 fromLineNumber:3087];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v20;
        _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PLBBAgent_flushBBCacheWithClientInfo___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FE5 = result;
  return result;
}

uint64_t __40__PLBBAgent_flushBBCacheWithClientInfo___block_invoke_1653(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FE6 = result;
  return result;
}

uint64_t __40__PLBBAgent_flushBBCacheWithClientInfo___block_invoke_1659(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FE7 = result;
  return result;
}

- (void)commitBBCacheWithClientInfo:(int64_t)info
{
  v24 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLBBAgent_commitBBCacheWithClientInfo___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F54F8 != -1)
    {
      dispatch_once(&qword_2811F54F8, block);
    }

    if (byte_2811F4FE8 == 1)
    {
      info = [MEMORY[0x277CCACA8] stringWithFormat:@"%s client: %ld", "-[PLBBAgent commitBBCacheWithClientInfo:]", info];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent commitBBCacheWithClientInfo:]"];
      [v7 logMessage:info fromFile:lastPathComponent fromFunction:v10 fromLineNumber:3096];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = info;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if ([(PLBBAgent *)self agentInited])
  {
    [(PLBBAgent *)self eventToCommitCacheOccurred];
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __41__PLBBAgent_commitBBCacheWithClientInfo___block_invoke_1668;
    v20[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v20[4] = v12;
    if (qword_2811F5500 != -1)
    {
      dispatch_once(&qword_2811F5500, v20);
    }

    if (byte_2811F4FE9 == 1)
    {
      info2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: method called by %ld before init", info];
      v14 = MEMORY[0x277D3F178];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent2 = [v15 lastPathComponent];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent commitBBCacheWithClientInfo:]"];
      [v14 logMessage:info2 fromFile:lastPathComponent2 fromFunction:v17 fromLineNumber:3100];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = info2;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLBBAgent_commitBBCacheWithClientInfo___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FE8 = result;
  return result;
}

uint64_t __41__PLBBAgent_commitBBCacheWithClientInfo___block_invoke_1668(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FE9 = result;
  return result;
}

- (void)logTelephonyRegMsgWith:(id)with
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D3F180];
  withCopy = with;
  if ([v4 debugEnabled])
  {
    v6 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PLBBAgent_logTelephonyRegMsgWith___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v6;
    if (qword_2811F5508 != -1)
    {
      dispatch_once(&qword_2811F5508, block);
    }

    if (byte_2811F4FEA == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent logTelephonyRegMsgWith:]"];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logTelephonyRegMsgWith:]"];
      [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:3124];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  telRegMsgHelper = [(PLBBAgent *)self telRegMsgHelper];
  [telRegMsgHelper setTelRegInfo:withCopy];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __36__PLBBAgent_logTelephonyRegMsgWith___block_invoke_1674;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v14;
    if (qword_2811F5510 != -1)
    {
      dispatch_once(&qword_2811F5510, v22);
    }

    if (byte_2811F4FEB == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded Telephony Registration msgs"];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent2 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logTelephonyRegMsgWith:]"];
      [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:3130];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [telRegMsgHelper logEventPointTelephonyRegistration];

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __36__PLBBAgent_logTelephonyRegMsgWith___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FEA = result;
  return result;
}

uint64_t __36__PLBBAgent_logTelephonyRegMsgWith___block_invoke_1674(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FEB = result;
  return result;
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
    v4 = @"<unknown>";
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
    v4 = @"<unknown>";
  }

  return v4;
}

+ (id)humanReadableStateFromKey:(id)key
{
  keyCopy = key;
  if ([keyCopy hasPrefix:@"kCTRegistrationBasebandState"])
  {
    v4 = [keyCopy substringFromIndex:{objc_msgSend(@"kCTRegistrationBasebandState", "length")}];
  }

  else
  {
    v4 = keyCopy;
  }

  v5 = v4;

  return v5;
}

- (void)logTelephonyRegistrationAtInit
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[PLBBAgent logTelephonyRegistrationAtInit]";
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __43__PLBBAgent_logTelephonyRegistrationAtInit__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v4;
    if (qword_2811F5518 != -1)
    {
      dispatch_once(&qword_2811F5518, &block);
    }

    if (byte_2811F4FEC == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent logTelephonyRegistrationAtInit]", block, v14, v15, v16, v17];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logTelephonyRegistrationAtInit]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:3163];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  telRegMsgHelper = [(PLBBAgent *)self telRegMsgHelper];
  [telRegMsgHelper logEventPointTelephonyRegistrationAtInit];
  [(PLBBAgent *)self logTelephonyRegistrationDSDSAtInit];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __43__PLBBAgent_logTelephonyRegistrationAtInit__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FEC = result;
  return result;
}

- (void)logTelephonyActivityAtInit
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[PLBBAgent logTelephonyActivityAtInit]";
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __39__PLBBAgent_logTelephonyActivityAtInit__block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v4;
    if (qword_2811F5520 != -1)
    {
      dispatch_once(&qword_2811F5520, &block);
    }

    if (byte_2811F4FED == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent logTelephonyActivityAtInit]", block, v14, v15, v16, v17];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logTelephonyActivityAtInit]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:3174];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  telActMsgHelper = [(PLBBAgent *)self telActMsgHelper];
  [(PLBBAgent *)self registerForAirplaneModeChange];
  if ([(PLBBAgent *)self isChangedAndSetAirplaneMode])
  {
    [telActMsgHelper setAirplaneMode:airplaneModeCurrent];
    [telActMsgHelper logPointIntervalTelephonyActivityAirplaneModeChange];
  }

  [(PLBBAgent *)self logTelephonyActivityDSDSAtInit];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PLBBAgent_logTelephonyActivityAtInit__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FED = result;
  return result;
}

+ (id)entryIceMsgLite
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C688;
  v17[1] = @"refreshRequestHandler";
  v16[2] = *MEMORY[0x277D3F558];
  v17[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"value_enabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v15[0] = commonTypeDict_StringFormat;
  v14[1] = @"value_history";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v15[1] = commonTypeDict_StringFormat2;
  v14[2] = @"unit";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_StringFormat];
  v15[2] = commonTypeDict_StringFormat3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventNoneBBReport
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F548];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1C698;
  v15[1] = @"refreshBBReport";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"ClientName";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v12[1] = @"ClientAction";
  v13[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v13[1] = commonTypeDict_IntegerFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardSDM
{
  v16[2] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] kPLBasebandClassOfDevice] < 1003012)
  {
    v8 = MEMORY[0x277CBEC10];
  }

  else
  {
    v15[0] = *MEMORY[0x277D3F4E8];
    v13 = *MEMORY[0x277D3F568];
    v14 = &unk_282C1C688;
    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v16[0] = v2;
    v15[1] = *MEMORY[0x277D3F540];
    v11[0] = @"SDMState";
    mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
    v11[1] = @"subsId";
    v12[0] = commonTypeDict_IntegerFormat;
    mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
    commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
    v12[1] = commonTypeDict_IntegerFormat2;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v16[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)refreshBBReport
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v20 = "[PLBBAgent refreshBBReport]";
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __28__PLBBAgent_refreshBBReport__block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v5;
    if (qword_2811F5528 != -1)
    {
      dispatch_once(&qword_2811F5528, &block);
    }

    if (byte_2811F4FEE == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent refreshBBReport]", block, v15, v16, v17, v18];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent refreshBBReport]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:3246];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (([MEMORY[0x277D3F180] debugEnabled] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F180], "isDevBoard") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F180], "isModelTrigger"))
  {
    if (([MEMORY[0x277D3F208] isBasebandProto] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandMav") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
    {
      if ([MEMORY[0x277D3F208] kPLBasebandClassOfDevice] <= 1003014)
      {
        v12 = 7;
      }

      else
      {
        v12 = 8;
      }
    }

    else
    {
      v12 = 4;
      [(PLBBAgent *)self logEventNoneBBReportBy:4 withAction:3];
    }

    [(PLBBAgent *)self logEventNoneBBReportBy:4 withAction:v12];
  }

  objc_autoreleasePoolPop(v3);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __28__PLBBAgent_refreshBBReport__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FEE = result;
  return result;
}

- (void)logEventNoneBBReportBy:(int64_t)by withAction:(int64_t)action
{
  v48 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLBBAgent_logEventNoneBBReportBy_withAction___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F5530 != -1)
    {
      dispatch_once(&qword_2811F5530, block);
    }

    if (byte_2811F4FEF == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent logEventNoneBBReportBy:withAction:]"];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logEventNoneBBReportBy:withAction:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:3266];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        byCopy = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (([MEMORY[0x277D3F180] debugEnabled] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F180], "fullMode") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild"))
  {
    v14 = *MEMORY[0x277D3F5E0];
    v15 = +[PLBBAgent getNameBBReport];
    v16 = [(PLOperator *)PLBBAgent entryKeyForType:v14 andName:v15];

    v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:by];
    [v17 setObject:v18 forKeyedSubscript:@"ClientName"];

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:action];
    [v17 setObject:v19 forKeyedSubscript:@"ClientAction"];

    if ([MEMORY[0x277D3F208] isBasebandProto])
    {
      dictionary = [v17 dictionary];
      entryDate = [v17 entryDate];
      [(PLOperator *)self logForSubsystem:@"BasebandMetrics" category:@"Report" data:dictionary date:entryDate];
    }

    if (([MEMORY[0x277D3F208] isBasebandMav] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
    {
      [(PLBBAgent *)self logEntry:v17];
    }
  }

  v22 = PLLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    byCopy = by;
    v46 = 2048;
    actionCopy = action;
    _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "logEventNoneBBReportBy Client %ld, Action %ld", buf, 0x16u);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v23 = objc_opt_class();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __47__PLBBAgent_logEventNoneBBReportBy_withAction___block_invoke_1718;
    v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v42[4] = v23;
    if (qword_2811F5538 != -1)
    {
      dispatch_once(&qword_2811F5538, v42);
    }

    if (byte_2811F4FF0 == 1)
    {
      action = [MEMORY[0x277CCACA8] stringWithFormat:@"Client: %ld, Action: %ld", by, action];
      v25 = MEMORY[0x277D3F178];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent2 = [v26 lastPathComponent];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logEventNoneBBReportBy:withAction:]"];
      [v25 logMessage:action fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:3290];

      v29 = PLLogCommon();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        byCopy = action;
        _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (action > 6)
  {
    if (action == 7)
    {
      if ([MEMORY[0x277D3F208] isBasebandProto])
      {
        mEMORY[0x277D3F120] = [MEMORY[0x277D3F120] sharedABMClient];
        action2 = mEMORY[0x277D3F120];
        v32 = 8323087;
        v33 = 1625;
        goto LABEL_44;
      }

      if (![MEMORY[0x277D3F208] isBasebandMav])
      {
        goto LABEL_46;
      }

      mEMORY[0x277D3F120] = [MEMORY[0x277D3F120] sharedABMClient];
      action2 = mEMORY[0x277D3F120];
      v32 = 520207;
    }

    else
    {
      if (action != 8)
      {
        goto LABEL_34;
      }

      mEMORY[0x277D3F120] = [MEMORY[0x277D3F120] sharedABMClient];
      action2 = mEMORY[0x277D3F120];
      v32 = 703488;
    }

    v33 = 0;
LABEL_44:
    [mEMORY[0x277D3F120] triggerPeriodicMetrics:v32 andprofileId:v33];
LABEL_45:

    goto LABEL_46;
  }

  if (action == 3)
  {
    [(PLBBAgent *)self commitBBCacheWithClientInfo:by];
    goto LABEL_46;
  }

  if (action == 4)
  {
    [(PLBBAgent *)self flushBBCacheWithClientInfo:by];
    goto LABEL_46;
  }

LABEL_34:
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v34 = objc_opt_class();
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __47__PLBBAgent_logEventNoneBBReportBy_withAction___block_invoke_1724;
    v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v41[4] = v34;
    if (qword_2811F5540 != -1)
    {
      dispatch_once(&qword_2811F5540, v41);
    }

    if (byte_2811F4FF1 == 1)
    {
      action2 = [MEMORY[0x277CCACA8] stringWithFormat:@"***NOOP*** Client: %ld, Action: %ld", by, action];
      v35 = MEMORY[0x277D3F178];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent3 = [v36 lastPathComponent];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logEventNoneBBReportBy:withAction:]"];
      [v35 logMessage:action2 fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:3310];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        byCopy = action2;
        _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_45;
    }
  }

LABEL_46:
  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLBBAgent_logEventNoneBBReportBy_withAction___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FEF = result;
  return result;
}

uint64_t __47__PLBBAgent_logEventNoneBBReportBy_withAction___block_invoke_1718(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FF0 = result;
  return result;
}

uint64_t __47__PLBBAgent_logEventNoneBBReportBy_withAction___block_invoke_1724(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FF1 = result;
  return result;
}

- (void)modelLTESLEEPMGRPower:(id)power
{
  v54 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  mavRevStringQuery = [MEMORY[0x277D3F258] MavRevStringQuery];
  if (([MEMORY[0x277D3F208] isBasebandClass:1003001] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003002))
  {
    v5 = [powerCopy objectForKeyedSubscript:@"ML1State"];
    [v5 doubleValue];
    v7 = v6;

    v8 = [powerCopy objectForKeyedSubscript:@"StateDuration"];
    [v8 doubleValue];
    v10 = v9 / 1000.0;

    v11 = [powerCopy objectForKeyedSubscript:@"LightSleepDuration"];
    [v11 doubleValue];
    v13 = v12;

    v14 = [powerCopy objectForKeyedSubscript:@"DeepSleepDuration"];
    [v14 doubleValue];
    v16 = v15;

    entryDate = [powerCopy entryDate];
    v18 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"baseband"];
    v19 = [v18 objectForKeyedSubscript:mavRevStringQuery];
    v20 = [v19 objectForKeyedSubscript:@"LTE"];
    v21 = [v20 objectForKeyedSubscript:@"SleepStateAwakePower"];
    [v21 doubleValue];
    v23 = v22;

    v24 = [v18 objectForKeyedSubscript:mavRevStringQuery];
    v25 = [v24 objectForKeyedSubscript:@"LTE"];
    v26 = [v25 objectForKeyedSubscript:@"SleepStateLightSleepPower"];
    [v26 doubleValue];
    v28 = v27;

    v29 = 0.0;
    if (v7 > 0.0)
    {
      v30 = v13 / 1000.0;
      v31 = v10 - v13 / 1000.0 - v16 / 1000.0;
      if (v31 >= 0.0 && v30 >= 0.0)
      {
        v29 = v30 * v28 + v31 * v23;
      }
    }

    if (LTESleepMgrStatCumulativeTimestamp)
    {
      [LTESleepMgrStatLastTimestamp timeIntervalSince1970];
      v33 = v32;
      [LTESleepMgrStatCumulativeTimestamp timeIntervalSince1970];
      v35 = v34;
      [entryDate timeIntervalSince1970];
      v37 = 0.0;
      if (v33 < v35 && v35 < v36)
      {
        v38 = v36 - v35;
        if (v38 > 0.0)
        {
          v37 = (v29 - *&LTESleepMgrStatCumulativeEnergy) / v38;
        }
      }
    }

    else
    {
      v37 = 0.0;
      if (v10 > 0.0)
      {
        v37 = v29 / v10;
      }
    }

    LTESleepMgrStatLastEnergy = 0;
    objc_storeStrong(&LTESleepMgrStatLastTimestamp, entryDate);
    LTESleepMgrStatCumulativeEnergy = 0;
    v39 = LTESleepMgrStatCumulativeTimestamp;
    LTESleepMgrStatCumulativeTimestamp = 0;

    [entryDate timeIntervalSince1970];
    v41 = v40;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v42 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __35__PLBBAgent_modelLTESLEEPMGRPower___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v42;
      if (qword_2811F5548 != -1)
      {
        dispatch_once(&qword_2811F5548, block);
      }

      if (byte_2811F4FF2 == 1)
      {
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"SleepStats --> Model power: %f, power=%f", v41, *&v37];
        v44 = MEMORY[0x277D3F178];
        v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent = [v45 lastPathComponent];
        v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelLTESLEEPMGRPower:]"];
        [v44 logMessage:v43 fromFile:lastPathComponent fromFunction:v47 fromLineNumber:3409];

        v48 = PLLogCommon();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v53 = v43;
          _os_log_debug_impl(&dword_21A4C6000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0] createPowerEventBackwardWithRootNodeID:21 withPower:entryDate withEndDate:v37];
  }

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t __35__PLBBAgent_modelLTESLEEPMGRPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FF2 = result;
  return result;
}

- (void)modelStateTransitionPower:(id)power rat:(id)rat state:(id)state
{
  v40 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  ratCopy = rat;
  stateCopy = state;
  mavRevStringQuery = [MEMORY[0x277D3F258] MavRevStringQuery];
  if (([MEMORY[0x277D3F208] isBasebandMavLeg] & 1) == 0)
  {
    if ([ratCopy isEqualToString:@"LTE"] && ((objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003002) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003001)))
    {
      if ([stateCopy isEqualToString:@"Connected"])
      {
        selfCopy2 = self;
        v13 = 1;
      }

      else
      {
        selfCopy2 = self;
        v13 = 0;
      }

      [(PLBBAgent *)selfCopy2 setLteCurrentState:v13];
    }

    else
    {
      v14 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"baseband"];
      v15 = [v14 objectForKeyedSubscript:mavRevStringQuery];
      v16 = [v15 objectForKeyedSubscript:ratCopy];
      v17 = [v16 objectForKeyedSubscript:stateCopy];

      if (v17)
      {
        v18 = [v14 objectForKeyedSubscript:mavRevStringQuery];
        v19 = [v18 objectForKeyedSubscript:ratCopy];
        v20 = [v19 objectForKeyedSubscript:stateCopy];
        [v20 doubleValue];
        v22 = v21;
      }

      else
      {
        v22 = 0.0;
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v23 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__PLBBAgent_modelStateTransitionPower_rat_state___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v23;
        if (qword_2811F5550 != -1)
        {
          dispatch_once(&qword_2811F5550, block);
        }

        if (byte_2811F4FF3 == 1)
        {
          v24 = MEMORY[0x277CCACA8];
          v25 = [v14 objectForKeyedSubscript:mavRevStringQuery];
          v26 = [v25 objectForKeyedSubscript:ratCopy];
          v27 = [v26 objectForKeyedSubscript:stateCopy];
          v36 = [v24 stringWithFormat:@"Model RRC state transistion: mavVersion=%@, rat=%@, state=%@, basebandModel=%@", mavRevStringQuery, ratCopy, stateCopy, v27];

          v28 = MEMORY[0x277D3F178];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
          lastPathComponent = [v29 lastPathComponent];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelStateTransitionPower:rat:state:]"];
          [v28 logMessage:v36 fromFile:lastPathComponent fromFunction:v31 fromLineNumber:3447];

          v32 = PLLogCommon();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v39 = v36;
            _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      entryDate = [powerCopy entryDate];
      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      [(PLBBAgent *)self lastBBProtoPower];
      [mEMORY[0x277D3F0C0] createPowerEventBackwardWithRootNodeID:22 withPower:entryDate withEndDate:?];

      [(PLBBAgent *)self setLastBBProtoPower:v22];
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t __49__PLBBAgent_modelStateTransitionPower_rat_state___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FF3 = result;
  return result;
}

- (void)modelMav10BBHWPower:(id)power
{
  v1175 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  v4 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];

  v1134 = powerCopy;
  if (!v4)
  {
    v1156 = 0;
    v1155 = 0;
    v1159 = 0;
    v8 = 0;
    v1157 = 0;
    v1158 = 0;
    goto LABEL_28;
  }

  v1171 = 0u;
  v1169 = 0u;
  v1170 = 0u;
  v1168 = 0u;
  v5 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
  v6 = [v5 countByEnumeratingWithState:&v1168 objects:v1174 count:16];
  if (!v6)
  {
    v1156 = 0;
    v1155 = 0;
    v1159 = 0;
    v8 = 0;
    v1157 = 0;
    v1158 = 0;
    goto LABEL_27;
  }

  v7 = v6;
  v1156 = 0;
  v1155 = 0;
  v1159 = 0;
  v8 = 0;
  v1157 = 0;
  v1158 = 0;
  v9 = *v1169;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v1169 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v1168 + 1) + 8 * i);
      v12 = [v11 objectForKeyedSubscript:@"RadioTech"];
      intValue = [v12 intValue];

      if (intValue > 2)
      {
        switch(intValue)
        {
          case 3:
            v14 = v1159;
            v1159 = v11;
            break;
          case 4:
            v14 = v1155;
            v1155 = v11;
            break;
          case 5:
            v14 = v1156;
            v1156 = v11;
            break;
          default:
            continue;
        }

        v15 = v8;
        goto LABEL_21;
      }

      if (!intValue)
      {
        v14 = v1158;
        v15 = v8;
        v1158 = v11;
LABEL_21:
        v16 = v11;

        v8 = v15;
        continue;
      }

      if (intValue == 1)
      {
        v14 = v1157;
        v15 = v8;
        v1157 = v11;
        goto LABEL_21;
      }

      v14 = v8;
      v15 = v11;
      if (intValue == 2)
      {
        goto LABEL_21;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v1168 objects:v1174 count:16];
  }

  while (v7);
LABEL_27:

  powerCopy = v1134;
LABEL_28:
  v17 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRf1x"];
  if (v17)
  {
    v18 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRf1x"];
    v1130 = [v18 objectAtIndexedSubscript:0];
  }

  else
  {
    v1130 = 0;
  }

  v19 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRfHDR"];
  if (v19)
  {
    v20 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRfHDR"];
    v1129 = [v20 objectAtIndexedSubscript:0];
  }

  else
  {
    v1129 = 0;
  }

  v21 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRfGSM"];
  if (v21)
  {
    v22 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRfGSM"];
    v1122 = [v22 objectAtIndexedSubscript:0];
  }

  else
  {
    v1122 = 0;
  }

  v23 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRfWCDMA"];
  if (v23)
  {
    v24 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRfWCDMA"];
    v25 = [v24 objectAtIndexedSubscript:0];
  }

  else
  {
    v25 = 0;
  }

  v26 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRfLTE"];
  if (v26)
  {
    v27 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRfLTE"];
    v1131 = [v27 objectAtIndexedSubscript:0];
  }

  else
  {
    v1131 = 0;
  }

  v28 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRfTDS"];
  if (v28)
  {
    v29 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRfTDS"];
    v1132 = [v29 objectAtIndexedSubscript:0];
  }

  else
  {
    v1132 = 0;
  }

  v30 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOther"];
  v31 = [v30 objectAtIndexedSubscript:0];

  entryDate = [v31 entryDate];
  v1118 = v31;
  v33 = [v31 objectForKeyedSubscript:@"LogDuration"];
  [v33 doubleValue];
  v35 = v34;

  mavRevStringQuery = [MEMORY[0x277D3F258] MavRevStringQuery];
  if (v35 <= 0.0)
  {
    goto LABEL_321;
  }

  v36 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"baseband"];
  v1104 = 0.0;
  v1109 = 0.0;
  v1110 = 0.0;
  v37 = 0.0;
  v1127 = v25;
  v1128 = entryDate;
  v1154 = v36;
  if (v1130)
  {
    v38 = [v1130 objectForKeyedSubscript:@"DTxOn"];
    [v38 doubleValue];
    v40 = v39;
    v41 = [v36 objectForKeyedSubscript:mavRevStringQuery];
    v42 = [v41 objectForKeyedSubscript:@"CDMA2K"];
    v43 = [v42 objectForKeyedSubscript:@"DTxOn"];
    [v43 doubleValue];
    v45 = v40 * v44;

    v46 = [v1130 objectForKeyedSubscript:@"DurationInCallType"];
    v47 = [v46 objectAtIndexedSubscript:1];
    [v47 doubleValue];
    v49 = v48;
    v50 = [v36 objectForKeyedSubscript:mavRevStringQuery];
    v51 = [v50 objectForKeyedSubscript:@"CDMA2K"];
    v52 = [v51 objectForKeyedSubscript:@"Voice"];
    [v52 doubleValue];
    v54 = v49 * v53;

    v1142 = [v46 objectAtIndexedSubscript:2];
    [v1142 doubleValue];
    v56 = v55;
    [v46 objectAtIndexedSubscript:3];
    v58 = v57 = v36;
    [v58 doubleValue];
    v60 = v56 + v59;
    v61 = [v46 objectAtIndexedSubscript:4];
    [v61 doubleValue];
    v63 = v60 + v62;
    v1147 = v46;
    v64 = [v46 objectAtIndexedSubscript:5];
    [v64 doubleValue];
    v66 = v63 + v65;
    v67 = [v57 objectForKeyedSubscript:mavRevStringQuery];
    v68 = [v67 objectForKeyedSubscript:@"CDMA2K"];
    v69 = [v68 objectForKeyedSubscript:@"Connected"];
    [v69 doubleValue];
    v71 = v66 * v70;

    v72 = 0.0;
    v73 = 0.0;
    if (v1158)
    {
      v74 = [v1158 objectForKeyedSubscript:@"TxPowerHist"];
      for (j = 0; j != 12; ++j)
      {
        v76 = [v74 objectAtIndexedSubscript:j];
        [v76 doubleValue];
        v78 = v77;
        v79 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
        v80 = [v79 objectForKeyedSubscript:@"CDMA2K"];
        v81 = [v80 objectForKeyedSubscript:@"txPower"];
        v82 = [v81 objectAtIndexedSubscript:j];
        [v82 doubleValue];
        v73 = v73 + v78 * v83;
      }

      v37 = 0.0;
      for (k = 8; k != 12; ++k)
      {
        v85 = [v74 objectAtIndexedSubscript:k];
        [v85 doubleValue];
        v37 = v37 + v86;
      }

      entryDate = v1128;
    }

    v87 = v45 / v35 + v73 / v35;
    if (v87 <= 0.0)
    {
      v89 = 0.0;
      powerCopy = v1134;
      v25 = v1127;
      v36 = v1154;
    }

    else
    {
      v88 = v54 + v71;
      v89 = 0.0;
      powerCopy = v1134;
      v25 = v1127;
      v36 = v1154;
      if (v54 + v71 > 0.0)
      {
        v89 = v54 * v87 / v88;
        v72 = v71 * v87 / v88;
      }
    }

    v1109 = v71 / v35 + v72;
    v1110 = v54 / v35 + v89;
  }

  v1133 = v35;
  if (v1129 && v1157)
  {
    v1148 = [v1157 objectForKeyedSubscript:@"ProtocolStateHist"];
    v90 = [v1148 objectAtIndexedSubscript:8];
    [v90 doubleValue];
    v92 = v91;

    v93 = [v36 objectForKeyedSubscript:mavRevStringQuery];
    v94 = [v93 objectForKeyedSubscript:@"1xEVDO"];
    v95 = [v94 objectForKeyedSubscript:@"Connected"];
    [v95 doubleValue];
    v1143 = v96;

    v97 = [v1129 objectForKeyedSubscript:@"SDTXOnFrames"];
    [v97 doubleValue];
    v99 = v98;

    v100 = [v1129 objectForKeyedSubscript:@"SDTXOffFrames"];
    [v100 doubleValue];
    v102 = v101;

    v103 = [v1129 objectForKeyedSubscript:@"LTXOnFrames"];
    [v103 doubleValue];
    v105 = v104;

    v106 = [v1129 objectForKeyedSubscript:@"LTXOffFrames"];
    [v106 doubleValue];
    v108 = v107;

    v109 = [v1129 objectForKeyedSubscript:@"TTXOnFrames"];
    [v109 doubleValue];
    v111 = v110;

    v112 = [v1129 objectForKeyedSubscript:@"TTXOffFrames"];
    [v112 doubleValue];
    v114 = v113;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v115 = objc_opt_class();
      v1167[0] = MEMORY[0x277D85DD0];
      v1167[1] = 3221225472;
      v1167[2] = __33__PLBBAgent_modelMav10BBHWPower___block_invoke;
      v1167[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v1167[4] = v115;
      v116 = v1167;
      if (qword_2811F5558 != -1)
      {
        dispatch_once(&qword_2811F5558, v116);
      }

      if (byte_2811F4FF4 == 1)
      {
        v114 = [MEMORY[0x277CCACA8] stringWithFormat:@"EVDO stats: %f %f %f %f %f %f", *&v99, v102, *&v105, v108, v111, v114];
        v118 = MEMORY[0x277D3F178];
        v119 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent = [v119 lastPathComponent];
        v121 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelMav10BBHWPower:]"];
        [v118 logMessage:v114 fromFile:lastPathComponent fromFunction:v121 fromLineNumber:3677];

        v122 = PLLogCommon();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v1173 = v114;
          _os_log_debug_impl(&dword_21A4C6000, v122, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v123 = v92 * v1143;
    if (v99 + v105 <= v92)
    {
      v124 = [v36 objectForKeyedSubscript:mavRevStringQuery];
      v125 = [v124 objectForKeyedSubscript:@"1xEVDO"];
      v126 = [v125 objectForKeyedSubscript:@"DTXSavings"];
      [v126 doubleValue];
      v128 = (v99 + v105) * v127;

      v123 = v123 - v128;
    }

    v35 = v1133;
    v129 = [v1157 objectForKeyedSubscript:@"TxPowerHist"];
    v130 = 0;
    v131 = 0.0;
    do
    {
      v132 = [v129 objectAtIndexedSubscript:v130];
      [v132 doubleValue];
      v134 = v133;
      v135 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
      v136 = [v135 objectForKeyedSubscript:@"1xEVDO"];
      v137 = [v136 objectForKeyedSubscript:@"txPower"];
      v138 = [v137 objectAtIndexedSubscript:v130];
      [v138 doubleValue];
      v131 = v131 + v134 * v139;

      ++v130;
    }

    while (v130 != 12);
    for (m = 8; m != 12; ++m)
    {
      v141 = [v129 objectAtIndexedSubscript:m];
      [v141 doubleValue];
      v37 = v37 + v142;
    }

    v1104 = v123 / v1133 + v131 / v1133;

    powerCopy = v1134;
    v25 = v1127;
    entryDate = v1128;
    v36 = v1154;
  }

  v1113 = 0.0;
  if (v1122)
  {
    v143 = [v1122 objectForKeyedSubscript:@"ConnStates"];
    v144 = [v143 objectAtIndexedSubscript:1];
    [v144 doubleValue];
    v146 = v145;
    v147 = [v36 objectForKeyedSubscript:mavRevStringQuery];
    v148 = [v147 objectForKeyedSubscript:@"GSM"];
    v149 = [v148 objectForKeyedSubscript:@"ConnStates"];
    v150 = [v149 objectAtIndexedSubscript:1];
    [v150 doubleValue];
    v152 = v146 * v151;

    v1149 = v143;
    v153 = [v143 objectAtIndexedSubscript:2];
    [v153 doubleValue];
    v155 = v154;
    v156 = [v36 objectForKeyedSubscript:mavRevStringQuery];
    v157 = [v156 objectForKeyedSubscript:@"GSM"];
    v158 = [v157 objectForKeyedSubscript:@"ConnStates"];
    v159 = [v158 objectAtIndexedSubscript:2];
    [v159 doubleValue];
    v161 = v155 * v160;

    if (v8)
    {
      v162 = [v8 objectForKeyedSubscript:@"TxPowerHist"];
      v163 = 0;
      v164 = 0.0;
      do
      {
        v165 = [v162 objectAtIndexedSubscript:v163];
        [v165 doubleValue];
        v167 = v166;
        v168 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
        v169 = [v168 objectForKeyedSubscript:@"GSM"];
        v170 = [v169 objectForKeyedSubscript:@"txPower"];
        v171 = [v170 objectAtIndexedSubscript:v163];
        [v171 doubleValue];
        v164 = v164 + v167 * v172;

        ++v163;
      }

      while (v163 != 12);
      for (n = 8; n != 12; ++n)
      {
        v174 = [v162 objectAtIndexedSubscript:n];
        [v174 doubleValue];
        v37 = v37 + v175;
      }

      v176 = [v8 objectForKeyedSubscript:@"RSSIModeCount"];
      v177 = [v176 objectAtIndexedSubscript:1];
      [v177 doubleValue];
      v179 = v178;
      v180 = [v176 objectAtIndexedSubscript:2];
      [v180 doubleValue];
      v182 = v179 + v181;
      v183 = [v176 objectAtIndexedSubscript:3];
      [v183 doubleValue];
      v185 = v182 + v184;
      v186 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
      v187 = [v186 objectForKeyedSubscript:@"GSM"];
      v188 = [v187 objectForKeyedSubscript:@"RX"];
      [v188 doubleValue];
      v190 = v185 * v189;

      v191 = v164 / v35 + v190 / v35;
      v192 = 0.0;
      if (v191 <= 0.0)
      {
        v193 = 0.0;
      }

      else
      {
        v192 = v152 * v191 / (v152 + v161);
        if (v152 + v161 > 0.0)
        {
          v193 = v161 * v191 / (v152 + v161);
        }

        else
        {
          v192 = 0.0;
          v193 = 0.0;
        }
      }

      powerCopy = v1134;
      v25 = v1127;
      entryDate = v1128;
      v36 = v1154;
    }

    else
    {
      v192 = 0.0;
      v193 = 0.0;
      entryDate = v1128;
      v36 = v1154;
      v25 = v1127;
    }

    v1097 = v161 / v35 + v193;
    v1098 = v152 / v35 + v192;
  }

  else
  {
    v1097 = 0.0;
    v1098 = 0.0;
  }

  v194 = 0x277D3F000;
  if (v25)
  {
    v195 = 0.0;
    v196 = 0.0;
    if (v1159)
    {
      v197 = [v1159 objectForKeyedSubscript:@"ProtocolStateHist"];
      v198 = [v197 objectAtIndexedSubscript:6];
      [v198 doubleValue];
      v196 = v199;
    }

    v1119 = [v25 objectForKeyedSubscript:@"TxPwrBktArr"];
    v200 = [v25 objectForKeyedSubscript:@"DurationInPsRabType"];
    v201 = [v25 objectForKeyedSubscript:@"DurationInRabMode"];
    v1150 = [v25 objectForKeyedSubscript:@"SCEqTypeDuration"];
    v1138 = [v25 objectForKeyedSubscript:@"DCEqTypeDuration"];
    v1135 = [v25 objectForKeyedSubscript:@"SCQSetNumCell"];
    v1124 = [v25 objectForKeyedSubscript:@"DCQSetNumCell"];
    v1144 = [v25 objectForKeyedSubscript:@"TimeInCarrierMode"];
    v202 = [v25 objectForKeyedSubscript:@"FetCnt"];

    if (v202)
    {
      v203 = [v25 objectForKeyedSubscript:@"FetCnt"];
      [v203 doubleValue];
      v195 = v204;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v205 = objc_opt_class();
      v1166[0] = MEMORY[0x277D85DD0];
      v1166[1] = 3221225472;
      v1166[2] = __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1754;
      v1166[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v1166[4] = v205;
      v206 = v1166;
      if (qword_2811F5560 != -1)
      {
        dispatch_once(&qword_2811F5560, v206);
      }

      if (byte_2811F4FF5 == 1)
      {
        v207 = [MEMORY[0x277CCACA8] stringWithFormat:@"DurationInRabType = %@, DurationInRabMode = %@, SCEqTypeDuration = %@, DCEqTypeDuration = %@, SCQSetNumCell = %@, DCQSetNumCell = %@, TimeInCarrierMode=%@, fetCount=%f", v200, v201, v1150, v1138, v1135, v1124, v1144, *&v195];
        v208 = MEMORY[0x277D3F178];
        v209 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent2 = [v209 lastPathComponent];
        v211 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelMav10BBHWPower:]"];
        [v208 logMessage:v207 fromFile:lastPathComponent2 fromFunction:v211 fromLineNumber:3787];

        v212 = PLLogCommon();
        if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v1173 = v207;
          _os_log_debug_impl(&dword_21A4C6000, v212, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v1085 = v195;
    v213 = [v36 objectForKeyedSubscript:mavRevStringQuery];
    v214 = [v213 objectForKeyedSubscript:@"WCDMA"];
    v215 = [v214 objectForKeyedSubscript:@"Cell_FACH"];
    [v215 doubleValue];
    v1081 = v216;

    v217 = [v201 objectAtIndexedSubscript:1];
    [v217 doubleValue];
    v1115 = v218;

    v219 = [v201 objectAtIndexedSubscript:2];
    [v219 doubleValue];
    v1114 = v220;

    v1090 = v201;
    v221 = [v201 objectAtIndexedSubscript:3];
    [v221 doubleValue];
    v1111 = v222;

    v223 = [v36 objectForKeyedSubscript:mavRevStringQuery];
    v224 = [v223 objectForKeyedSubscript:@"WCDMA"];
    v225 = [v224 objectForKeyedSubscript:@"RabMode"];
    v226 = [v225 objectAtIndexedSubscript:1];
    [v226 doubleValue];
    v1078 = v227;

    v228 = [v36 objectForKeyedSubscript:mavRevStringQuery];
    v229 = [v228 objectForKeyedSubscript:@"WCDMA"];
    v230 = [v229 objectForKeyedSubscript:@"RabMode"];
    v231 = [v230 objectAtIndexedSubscript:2];
    [v231 doubleValue];
    v1073 = v232;

    v233 = [v36 objectForKeyedSubscript:mavRevStringQuery];
    v234 = [v233 objectForKeyedSubscript:@"WCDMA"];
    v235 = [v234 objectForKeyedSubscript:@"RabMode"];
    v236 = [v235 objectAtIndexedSubscript:3];
    [v236 doubleValue];
    v1069 = v237;

    v1105 = [v200 objectAtIndexedSubscript:1];
    [v1105 doubleValue];
    v239 = v238;
    v1099 = [v36 objectForKeyedSubscript:mavRevStringQuery];
    v1059 = [v1099 objectForKeyedSubscript:@"WCDMA"];
    v1055 = [v1059 objectForKeyedSubscript:@"RabType"];
    v1051 = [v1055 objectAtIndexedSubscript:1];
    [v1051 doubleValue];
    v241 = v240;
    v1047 = [v200 objectAtIndexedSubscript:2];
    [v1047 doubleValue];
    v243 = v242;
    v244 = [v36 objectForKeyedSubscript:mavRevStringQuery];
    v245 = [v244 objectForKeyedSubscript:@"WCDMA"];
    v246 = [v245 objectForKeyedSubscript:@"RabType"];
    v247 = [v246 objectAtIndexedSubscript:2];
    [v247 doubleValue];
    v249 = v243 * v248;
    v1095 = v200;
    v250 = [v200 objectAtIndexedSubscript:3];
    [v250 doubleValue];
    v1066 = v251;
    v252 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v253 = [v252 objectForKeyedSubscript:@"WCDMA"];
    v254 = [v253 objectForKeyedSubscript:@"RabType"];
    v255 = [v254 objectAtIndexedSubscript:3];
    [v255 doubleValue];
    v1063 = v256;

    v257 = [v1150 objectAtIndexedSubscript:2];
    [v257 doubleValue];
    v259 = v258;
    v260 = [v1138 objectAtIndexedSubscript:2];
    [v260 doubleValue];
    v262 = v261;

    v1100 = 0.0;
    v263 = v259 <= v262;
    v264 = 0.0;
    if (!v263)
    {
      v265 = [v1150 objectAtIndexedSubscript:2];
      [v265 doubleValue];
      v267 = v266;
      v268 = [v1138 objectAtIndexedSubscript:2];
      [v268 doubleValue];
      v270 = v267 - v269;
      v271 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
      v272 = [v271 objectForKeyedSubscript:@"WCDMA"];
      v273 = [v272 objectForKeyedSubscript:@"SCeq"];
      v274 = [v273 objectAtIndexedSubscript:1];
      [v274 doubleValue];
      v264 = v270 * v275 + 0.0;
    }

    v276 = v249 + v239 * v241;
    v277 = [v1138 objectAtIndexedSubscript:2];
    [v277 doubleValue];
    v279 = v278;
    v280 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v281 = [v280 objectForKeyedSubscript:@"WCDMA"];
    v282 = [v281 objectForKeyedSubscript:@"DCeq"];
    v283 = [v282 objectAtIndexedSubscript:2];
    [v283 doubleValue];
    v285 = v264 + v279 * v284;

    v286 = [v1135 objectAtIndexedSubscript:2];
    [v286 doubleValue];
    v288 = v287;
    v289 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v290 = [v289 objectForKeyedSubscript:@"WCDMA"];
    v291 = [v290 objectForKeyedSubscript:@"SCeq"];
    v292 = [v291 objectAtIndexedSubscript:1];
    [v292 doubleValue];
    v1060 = v285 + v288 * v293;

    v294 = [v1135 objectAtIndexedSubscript:3];
    [v294 doubleValue];
    v1056 = v295;
    v296 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v297 = [v296 objectForKeyedSubscript:@"WCDMA"];
    v298 = [v297 objectForKeyedSubscript:@"SCeq"];
    v299 = [v298 objectAtIndexedSubscript:2];
    [v299 doubleValue];
    v1052 = v300;

    v1106 = [v1135 objectAtIndexedSubscript:1];
    [v1106 doubleValue];
    v302 = v301;
    v1043 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v1041 = [v1043 objectForKeyedSubscript:@"WCDMA"];
    v1040 = [v1041 objectForKeyedSubscript:@"SCqset"];
    v1039 = [v1040 objectAtIndexedSubscript:1];
    [v1039 doubleValue];
    v304 = v303;
    v1038 = [v1135 objectAtIndexedSubscript:2];
    [v1038 doubleValue];
    v306 = v305;
    v1037 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v1036 = [v1037 objectForKeyedSubscript:@"WCDMA"];
    v1035 = [v1036 objectForKeyedSubscript:@"SCqset"];
    v1034 = [v1035 objectAtIndexedSubscript:2];
    [v1034 doubleValue];
    v308 = v306 * v307 + v302 * v304;
    v1033 = [v1135 objectAtIndexedSubscript:3];
    [v1033 doubleValue];
    v310 = v309;
    v1032 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v1031 = [v1032 objectForKeyedSubscript:@"WCDMA"];
    v1030 = [v1031 objectForKeyedSubscript:@"SCqset"];
    v1029 = [v1030 objectAtIndexedSubscript:3];
    [v1029 doubleValue];
    v312 = v308 + v310 * v311;
    v1028 = [v1124 objectAtIndexedSubscript:1];
    [v1028 doubleValue];
    v314 = v313;
    v1027 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v1026 = [v1027 objectForKeyedSubscript:@"WCDMA"];
    v1025 = [v1026 objectForKeyedSubscript:@"DCqset"];
    v1024 = [v1025 objectAtIndexedSubscript:1];
    [v1024 doubleValue];
    v316 = v312 + v314 * v315;
    v1023 = [v1124 objectAtIndexedSubscript:2];
    [v1023 doubleValue];
    v318 = v317;
    v319 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v320 = [v319 objectForKeyedSubscript:@"WCDMA"];
    v321 = [v320 objectForKeyedSubscript:@"DCqset"];
    v322 = [v321 objectAtIndexedSubscript:2];
    [v322 doubleValue];
    v1048 = v316 + v318 * v323;
    v324 = [v1124 objectAtIndexedSubscript:3];
    [v324 doubleValue];
    v1046 = v325;
    v326 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v327 = [v326 objectForKeyedSubscript:@"WCDMA"];
    v328 = [v327 objectForKeyedSubscript:@"DCqset"];
    v329 = [v328 objectAtIndexedSubscript:3];
    [v329 doubleValue];
    v1045 = v330;

    v331 = [v1144 objectAtIndexedSubscript:1];
    [v331 doubleValue];
    v1044 = v332;
    v333 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v334 = [v333 objectForKeyedSubscript:@"WCDMA"];
    v335 = [v334 objectForKeyedSubscript:@"DC"];
    [v335 doubleValue];
    v1042 = v336;

    v1107 = [v1159 objectForKeyedSubscript:@"RSSIModeCount"];
    v337 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v338 = [v337 objectForKeyedSubscript:@"WCDMA"];
    v339 = [v338 objectForKeyedSubscript:@"RXD"];
    v340 = [v339 objectForKeyedSubscript:@"DC"];
    [v340 doubleValue];
    v342 = v341;

    v343 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v344 = [v343 objectForKeyedSubscript:@"WCDMA"];
    v345 = [v344 objectForKeyedSubscript:@"RXD"];
    v346 = [v345 objectForKeyedSubscript:@"SC"];
    [v346 doubleValue];
    v348 = v347;

    v349 = [v1144 objectAtIndexedSubscript:0];
    [v349 doubleValue];
    v351 = v350;
    v352 = [v1144 objectAtIndexedSubscript:1];
    [v352 doubleValue];
    v354 = v351 + v353;

    if (v354 > 0.0)
    {
      v355 = [v1107 objectAtIndexedSubscript:3];
      [v355 doubleValue];
      v357 = v356;
      v358 = [v1144 objectAtIndexedSubscript:0];
      [v358 doubleValue];
      v360 = v359 / v354;
      v361 = [v1144 objectAtIndexedSubscript:1];
      [v361 doubleValue];
      v1100 = v357 * (v342 * (v362 / v354) + v348 * v360);
    }

    v1082 = v196 * v1081;
    v363 = v1114 * v1073;
    v364 = v1111 * v1069;
    v365 = v276 + v1066 * v1063;
    v366 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v367 = [v366 objectForKeyedSubscript:@"WCDMA"];
    v368 = [v367 objectForKeyedSubscript:@"FetCnt"];
    [v368 doubleValue];
    v370 = v1085 * v369;

    if ([MEMORY[0x277D3F208] isBasebandClass:1003003])
    {
      v1070 = 8;
      v371 = 12;
    }

    else
    {
      v371 = 12;
      if ([MEMORY[0x277D3F208] isBasebandClass:1003004])
      {
        v1070 = 8;
      }

      else
      {
        v373 = [MEMORY[0x277D3F208] isBasebandClass:1003005];
        if (v373)
        {
          v374 = 12;
        }

        else
        {
          v374 = 8;
        }

        v1070 = v374;
        if (v373)
        {
          v371 = 16;
        }

        else
        {
          v371 = 12;
        }
      }
    }

    v375 = 0;
    v1083 = v1082 / v1133;
    v1086 = v1115 * v1078 / v1133;
    v1074 = v364 / v1133;
    v1079 = v363 / v1133;
    v376 = v371;
    v377 = 0.0;
    v378 = v370 / v1133;
    do
    {
      v379 = [v1119 objectAtIndexedSubscript:v375];
      [v379 doubleValue];
      v381 = v380;
      v382 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
      v383 = [v382 objectForKeyedSubscript:@"WCDMA"];
      v384 = [v383 objectForKeyedSubscript:@"txPower"];
      v385 = [v384 objectAtIndexedSubscript:v375];
      [v385 doubleValue];
      v377 = v377 + v381 * v386;

      ++v375;
    }

    while (v376 != v375);
    if (v1070 >= v376)
    {
      powerCopy = v1134;
      v25 = v1127;
      entryDate = v1128;
      v388 = v1119;
    }

    else
    {
      v387 = v1070;
      powerCopy = v1134;
      v25 = v1127;
      entryDate = v1128;
      v388 = v1119;
      do
      {
        v389 = [v1119 objectAtIndexedSubscript:v387];
        [v389 doubleValue];
        v37 = v37 + v390;

        ++v387;
      }

      while (v376 != v387);
    }

    v391 = v365 / v1133 + (v1060 + v1056 * v1052) / v1133 + (v1048 + v1046 * v1045) / v1133 + v1044 * v1042 / v1133 + v1100 / v1133 + v377 / v1133;
    if (v391 > v378)
    {
      v391 = v391 - v378;
    }

    v392 = v1115 + v1114 + v1111;
    v393 = 0.0;
    v394 = 0.0;
    v194 = 0x277D3F000;
    if (v392 > 0.0)
    {
      if (v1115 + v1111 > 0.0)
      {
        v394 = (v1115 + v1111 * 0.5) * v391 / v392;
      }

      if (v1114 + v1111 > 0.0)
      {
        v393 = (v1114 + v1111 * 0.5) * v391 / v392;
      }
    }

    v372 = v1083 + v1079 + v1074 + v393;
    v35 = v1133;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v395 = objc_opt_class();
      v1165[0] = MEMORY[0x277D85DD0];
      v1165[1] = 3221225472;
      v1165[2] = __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1760;
      v1165[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v1165[4] = v395;
      v396 = v1165;
      if (qword_2811F5568 != -1)
      {
        dispatch_once(&qword_2811F5568, v396);
      }

      if (byte_2811F4FF6 == 1)
      {
        v397 = [MEMORY[0x277CCACA8] stringWithFormat:@"wcdmaDataPower = %f, wcdmaFACHPower = %f, wcdmaPSonlyPower = %f, wcdmaMRABPower = %f, wcdmaDataAdder = %f", *&v372, *&v1083, *&v1079, *&v1074, *&v393];
        v398 = MEMORY[0x277D3F178];
        v399 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent3 = [v399 lastPathComponent];
        v401 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelMav10BBHWPower:]"];
        [v398 logMessage:v397 fromFile:lastPathComponent3 fromFunction:v401 fromLineNumber:3936];

        v402 = PLLogCommon();
        if (os_log_type_enabled(v402, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v1173 = v397;
          _os_log_debug_impl(&dword_21A4C6000, v402, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        entryDate = v1128;
        v25 = v1127;
      }
    }

    v1113 = v1086 + v394;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v403 = objc_opt_class();
      v1164[0] = MEMORY[0x277D85DD0];
      v1164[1] = 3221225472;
      v1164[2] = __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1766;
      v1164[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v1164[4] = v403;
      v404 = v1164;
      if (qword_2811F5570 != -1)
      {
        dispatch_once(&qword_2811F5570, v404);
      }

      if (byte_2811F4FF7 == 1)
      {
        v405 = [MEMORY[0x277CCACA8] stringWithFormat:@"wcdmaVoicePower = %f, wcdmaCSonlyPower = %f, wcdmaVoiceAdder = %f", *&v1113, *&v1086, *&v394];
        v406 = MEMORY[0x277D3F178];
        v407 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
        lastPathComponent4 = [v407 lastPathComponent];
        v409 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelMav10BBHWPower:]"];
        [v406 logMessage:v405 fromFile:lastPathComponent4 fromFunction:v409 fromLineNumber:3937];

        v410 = PLLogCommon();
        if (os_log_type_enabled(v410, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v1173 = v405;
          _os_log_debug_impl(&dword_21A4C6000, v410, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        entryDate = v1128;
        v25 = v1127;
      }
    }
  }

  else
  {
    v372 = 0.0;
  }

  v1108 = 0.0;
  v1096 = v372;
  if (!v1131)
  {
    v447 = 0.0;
    v448 = v1154;
    goto LABEL_270;
  }

  v1084 = [v1131 objectForKeyedSubscript:@"SleepStateArr"];
  v1080 = [v1131 objectForKeyedSubscript:@"SleepStateConnArr"];
  v1151 = [v1131 objectForKeyedSubscript:@"TxPwrBktArr"];
  v1116 = [v1131 objectForKeyedSubscript:@"CAFreqInfo"];
  v411 = [v1131 objectForKeyedSubscript:@"C0TBSzArr"];
  v412 = [v1131 objectForKeyedSubscript:@"C1TBSzArr"];
  v1125 = [v1131 objectForKeyedSubscript:@"DLTBSzArr"];
  v1112 = [v1131 objectForKeyedSubscript:@"CASCCStateArr"];
  v413 = [v1131 objectForKeyedSubscript:@"DupMode"];
  longValue = [v413 longValue];

  v1136 = v412;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v415 = objc_opt_class();
    v1163[0] = MEMORY[0x277D85DD0];
    v1163[1] = 3221225472;
    v1163[2] = __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1772;
    v1163[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v1163[4] = v415;
    v416 = v1163;
    if (qword_2811F5578 != -1)
    {
      dispatch_once(&qword_2811F5578, v416);
    }

    if (byte_2811F4FF8 == 1)
    {
      v1112 = [MEMORY[0x277CCACA8] stringWithFormat:@"C0TBSz = %@, C1TBSz = %@, carrierAggregationStates = %@", v411, v412, v1112];
      v418 = MEMORY[0x277D3F178];
      v419 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent5 = [v419 lastPathComponent];
      v421 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelMav10BBHWPower:]"];
      [v418 logMessage:v1112 fromFile:lastPathComponent5 fromFunction:v421 fromLineNumber:3955];

      v422 = PLLogCommon();
      if (os_log_type_enabled(v422, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v1173 = v1112;
        _os_log_debug_impl(&dword_21A4C6000, v422, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v194 = 0x277D3F000uLL;
    }
  }

  v423 = @"FDD";
  if (longValue == 1)
  {
    v423 = @"TDD";
  }

  v1145 = v423;
  v1139 = v411;
  if ([*(v194 + 520) isBasebandClass:?])
  {
    v424 = [v1084 objectAtIndexedSubscript:1];
    [v424 doubleValue];
    v426 = v425;

    v427 = [v1084 objectAtIndexedSubscript:2];
    [v427 doubleValue];
    v429 = v428;
    v430 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v431 = [v430 objectForKeyedSubscript:@"LTE"];
    v432 = [v431 objectForKeyedSubscript:@"SemiLite"];
    [v432 doubleValue];
    v434 = v433;
    v1101 = [v1084 objectAtIndexedSubscript:3];
    [v1101 doubleValue];
    v436 = v435;
    v1091 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v1087 = [v1091 objectForKeyedSubscript:@"LTE"];
    v1075 = [v1087 objectForKeyedSubscript:@"FullLite"];
    [v1075 doubleValue];
    v438 = v436 * v437 + v429 * v434;
    v439 = [v1084 objectAtIndexedSubscript:4];
    [v439 doubleValue];
    v441 = v440;
    v442 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v443 = [v442 objectForKeyedSubscript:@"LTE"];
    v444 = [v443 objectForKeyedSubscript:@"DeepLite"];
    [v444 doubleValue];
    v446 = v438 + v441 * v445;
  }

  else
  {
    v449 = [v1080 objectAtIndexedSubscript:1];
    [v449 doubleValue];
    v426 = v450;

    v1067 = [v1080 objectAtIndexedSubscript:2];
    [v1067 doubleValue];
    v452 = v451;
    v1071 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v1061 = [v1071 objectForKeyedSubscript:@"LTE"];
    v1064 = [v1061 objectForKeyedSubscript:@"MacroSleep"];
    [v1064 doubleValue];
    v454 = v453;
    v1101 = [v1080 objectAtIndexedSubscript:3];
    [v1101 doubleValue];
    v456 = v455;
    v1091 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v1087 = [v1091 objectForKeyedSubscript:@"LTE"];
    v1075 = [v1087 objectForKeyedSubscript:@"LightSleep"];
    [v1075 doubleValue];
    v458 = v456 * v457 + v452 * v454;
    v1057 = [v1080 objectAtIndexedSubscript:4];
    [v1057 doubleValue];
    v460 = v459;
    v1049 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v1053 = [v1049 objectForKeyedSubscript:@"LTE"];
    v444 = [v1053 objectForKeyedSubscript:@"DeepLightSleep"];
    [v444 doubleValue];
    v462 = v458 + v460 * v461;
    v463 = [v1080 objectAtIndexedSubscript:5];
    [v463 doubleValue];
    v465 = v464;
    v466 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v467 = [v466 objectForKeyedSubscript:@"LTE"];
    v468 = [v467 objectForKeyedSubscript:@"QuickDeepLightSleep"];
    [v468 doubleValue];
    v470 = v462 + v465 * v469;
    v471 = [v1080 objectAtIndexedSubscript:6];
    [v471 doubleValue];
    v473 = v472;
    v474 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v475 = [v474 objectForKeyedSubscript:@"LTE"];
    v476 = [v475 objectForKeyedSubscript:@"DeepSleep"];
    [v476 doubleValue];
    v446 = v470 + v473 * v477;

    v194 = 0x277D3F000uLL;
    v427 = v1067;

    v439 = v1057;
    v442 = v1049;

    v431 = v1061;
    v443 = v1053;

    v432 = v1064;
    v430 = v1071;
  }

  if (([*(v194 + 520) isBasebandClass:1003003] & 1) != 0 || objc_msgSend(*(v194 + 520), "isBasebandClass:", 1003004))
  {
    v478 = [v1116 objectAtIndexedSubscript:0];
  }

  else
  {
    v478 = [v1131 objectForKeyedSubscript:@"PCC_Band"];
  }

  v479 = v478;
  [v478 doubleValue];
  v481 = v480;

  v1076 = MEMORY[0x277CBEB98];
  v1102 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v1072 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v1092 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v1068 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v1088 = [MEMORY[0x277CCABB0] numberWithInt:7];
  v1065 = [MEMORY[0x277CCABB0] numberWithInt:9];
  v1062 = [MEMORY[0x277CCABB0] numberWithInt:10];
  v1058 = [MEMORY[0x277CCABB0] numberWithInt:15];
  v1054 = [MEMORY[0x277CCABB0] numberWithInt:16];
  v1050 = [MEMORY[0x277CCABB0] numberWithInt:22];
  v482 = [MEMORY[0x277CCABB0] numberWithInt:23];
  v483 = [MEMORY[0x277CCABB0] numberWithInt:24];
  v484 = [MEMORY[0x277CCABB0] numberWithInt:25];
  v485 = [MEMORY[0x277CCABB0] numberWithInt:30];
  v486 = [v1076 setWithObjects:{v1102, v1072, v1092, v1068, v1088, v1065, v1062, v1058, v1054, v1050, v482, v483, v484, v485, 0}];

  v487 = [MEMORY[0x277CCABB0] numberWithInt:v481];
  v488 = [v486 containsObject:v487];
  v489 = @"txPowerLowBand";
  if (v488)
  {
    v489 = @"txPowerHighBand";
  }

  v1103 = v489;

  v490 = [MEMORY[0x277CCABB0] numberWithInt:v481];
  v1089 = v486;
  v491 = [v486 containsObject:v490];

  v492 = 0.0;
  if (v491)
  {
    v493 = 0x277D3F000uLL;
    v494 = mavRevStringQuery;
    v495 = v1154;
    v496 = v1112;
    if (([MEMORY[0x277D3F208] isBasebandClass:1003004] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003005) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003007))
    {
      v497 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
      v498 = [v497 objectForKeyedSubscript:@"LTE"];
      v499 = [v498 objectForKeyedSubscript:@"elnaAdder"];
      [v499 doubleValue];
      v492 = v500;
    }
  }

  else
  {
    v494 = mavRevStringQuery;
    v495 = v1154;
    v493 = 0x277D3F000uLL;
    v496 = v1112;
  }

  if (([MEMORY[0x277D3F208] isBasebandClass:1003003] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003004))
  {
    v501 = [v496 objectAtIndexedSubscript:3];
    [v501 doubleValue];
    v503 = v426 - v502;
    v504 = [v495 objectForKeyedSubscript:v494];
    v505 = [v504 objectForKeyedSubscript:@"LTE"];
    v506 = [v505 objectForKeyedSubscript:@"Active"];
    v507 = [v506 objectForKeyedSubscript:v1145];
    [v507 doubleValue];
    v509 = v503 * (v492 + v508) / v35;
  }

  else if ([MEMORY[0x277D3F208] isBasebandClass:1003005])
  {
    v1093 = [v496 objectAtIndexedSubscript:1];
    [v1093 doubleValue];
    v517 = v426 - v516;
    v518 = [v496 objectAtIndexedSubscript:2];
    [v518 doubleValue];
    v520 = v517 - v519;
    v521 = [v496 objectAtIndexedSubscript:3];
    [v521 doubleValue];
    v523 = v520 - v522;
    [v496 objectAtIndexedSubscript:4];
    v524 = v494;
    v526 = v525 = v495;
    [v526 doubleValue];
    v528 = v523 - v527;
    v529 = [v496 objectAtIndexedSubscript:5];
    [v529 doubleValue];
    v531 = v528 - v530;
    v532 = [v525 objectForKeyedSubscript:v524];
    v533 = [v532 objectForKeyedSubscript:@"LTE"];
    v534 = [v533 objectForKeyedSubscript:@"Active"];
    v535 = [v534 objectForKeyedSubscript:v1145];
    [v535 doubleValue];
    v537 = v531 * (v492 + v536) / v35;

    v493 = 0x277D3F000;
    v501 = [v496 objectAtIndexedSubscript:4];
    [v501 doubleValue];
    v539 = v538;
    v504 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v505 = [v504 objectForKeyedSubscript:@"LTE"];
    v506 = [v505 objectForKeyedSubscript:@"ActiveCA1configured"];
    v507 = [v506 objectForKeyedSubscript:v1145];
    [v507 doubleValue];
    v509 = v537 + v539 * v540 / v35;
  }

  else
  {
    v592 = 0.0;
    for (ii = 1; ii != 10; ++ii)
    {
      v594 = [v496 objectAtIndexedSubscript:ii];
      [v594 doubleValue];
      v592 = v592 + v595;
    }

    v596 = 0.0;
    if (v426 > v592)
    {
      v597 = [v495 objectForKeyedSubscript:v494];
      v598 = [v597 objectForKeyedSubscript:@"LTE"];
      v599 = [v598 objectForKeyedSubscript:@"Active"];
      v600 = [v599 objectForKeyedSubscript:v1145];
      [v600 doubleValue];
      v596 = (v426 - v592) * (v492 + v601) / v35;
    }

    v602 = [v496 objectAtIndexedSubscript:1];
    [v602 doubleValue];
    v604 = v603;
    v605 = [v495 objectForKeyedSubscript:v494];
    v606 = [v605 objectForKeyedSubscript:@"LTE"];
    v607 = [v606 objectForKeyedSubscript:@"ActiveCA1configured"];
    v608 = [v607 objectForKeyedSubscript:v1145];
    [v608 doubleValue];
    v610 = v596 + v604 * v609 / v35;

    v611 = [v496 objectAtIndexedSubscript:2];
    [v611 doubleValue];
    v613 = v612;
    v614 = [v495 objectForKeyedSubscript:v494];
    v615 = [v614 objectForKeyedSubscript:@"LTE"];
    v616 = [v615 objectForKeyedSubscript:@"ActiveCA2configured"];
    v617 = [v616 objectForKeyedSubscript:v1145];
    [v617 doubleValue];
    v619 = v610 + v613 * v618 / v35;

    v501 = [v496 objectAtIndexedSubscript:3];
    [v501 doubleValue];
    v621 = v620;
    v504 = [v495 objectForKeyedSubscript:v494];
    v505 = [v504 objectForKeyedSubscript:@"LTE"];
    v506 = [v505 objectForKeyedSubscript:@"ActiveCA3configured"];
    v507 = [v506 objectForKeyedSubscript:v1145];
    [v507 doubleValue];
    v509 = v619 + v621 * v622 / v35;
    v493 = 0x277D3F000;
  }

  if (v509 >= 0.0)
  {
    v510 = v509;
  }

  else
  {
    v510 = 0.0;
  }

  if (([*(v493 + 520) isBasebandClass:1003003] & 1) != 0 || objc_msgSend(*(v493 + 520), "isBasebandClass:", 1003004))
  {
    v511 = [v1116 objectAtIndexedSubscript:2];

    v512 = mavRevStringQuery;
    v513 = v1154;
    if (v511)
    {
      v514 = MEMORY[0x277CCACA8];
      v515 = [v1116 objectAtIndexedSubscript:2];
      goto LABEL_186;
    }
  }

  else
  {
    v541 = [v1131 objectForKeyedSubscript:@"PCC_BW"];

    v512 = mavRevStringQuery;
    v513 = v1154;
    if (v541)
    {
      v514 = MEMORY[0x277CCACA8];
      v515 = [v1131 objectForKeyedSubscript:@"PCC_BW"];
LABEL_186:
      v542 = v515;
      v543 = [v514 stringWithFormat:@"%i", objc_msgSend(v515, "intValue")];

      v544 = [v513 objectForKeyedSubscript:v512];
      v545 = [v544 objectForKeyedSubscript:@"LTE"];
      v546 = [v545 objectForKeyedSubscript:@"NonCAMultiplier"];
      v547 = [v546 objectForKeyedSubscript:v543];
      [v547 doubleValue];
      v549 = v548;

      if (v549 > 0.0)
      {
        v510 = v510 * v549;
      }

      v493 = 0x277D3F000uLL;
    }
  }

  if (([*(v493 + 520) isBasebandClass:1003003] & 1) != 0 || objc_msgSend(*(v493 + 520), "isBasebandClass:", 1003004))
  {
    v550 = [v1112 objectAtIndexedSubscript:3];
    [v550 doubleValue];
    v552 = v551;
    v553 = [v513 objectForKeyedSubscript:v512];
    v554 = [v553 objectForKeyedSubscript:@"LTE"];
    v555 = [v554 objectForKeyedSubscript:@"ActiveCA"];
    v556 = [v555 objectForKeyedSubscript:v1145];
    [v556 doubleValue];
    v558 = 0.0;
    v559 = v35;
    v560 = 0.0;
    v561 = 0.0;
    v1094 = v552 * v557 / v559;
  }

  else
  {
    if ([*(v493 + 520) isBasebandClass:1003005])
    {
      v562 = [v1112 objectAtIndexedSubscript:1];
      [v562 doubleValue];
      v564 = v563;
      v565 = [v513 objectForKeyedSubscript:v512];
      v566 = [v565 objectForKeyedSubscript:@"LTE"];
      v567 = [v566 objectForKeyedSubscript:@"ActiveCA2configured"];
      v568 = [v567 objectForKeyedSubscript:v1145];
      [v568 doubleValue];
      v570 = v564 * v569 / v35;

      v571 = [v1112 objectAtIndexedSubscript:2];
      [v571 doubleValue];
      v573 = v572;
      v574 = [v513 objectForKeyedSubscript:v512];
      v575 = [v574 objectForKeyedSubscript:@"LTE"];
      v576 = [v575 objectForKeyedSubscript:@"Active2CA1configured"];
      v577 = [v576 objectForKeyedSubscript:v1145];
      [v577 doubleValue];
      v579 = v570 + v573 * v578 / v35;

      v580 = [v1112 objectAtIndexedSubscript:3];
      [v580 doubleValue];
      v582 = v581;
      v583 = [v513 objectForKeyedSubscript:v512];
      v584 = [v583 objectForKeyedSubscript:@"LTE"];
      v585 = [v584 objectForKeyedSubscript:@"Active2CA"];
      v586 = [v585 objectForKeyedSubscript:v1145];
      [v586 doubleValue];
      v588 = v579 + v582 * v587 / v35;

      v550 = [v1112 objectAtIndexedSubscript:5];
      [v550 doubleValue];
      v590 = v589;
      v553 = [v513 objectForKeyedSubscript:v512];
      v554 = [v553 objectForKeyedSubscript:@"LTE"];
      v555 = [v554 objectForKeyedSubscript:@"Active3CA"];
      v556 = [v555 objectForKeyedSubscript:v1145];
      [v556 doubleValue];
      v1094 = v588 + v590 * v591 / v35;
      v558 = 0.0;
      v560 = 0.0;
      v561 = 0.0;
    }

    else
    {
      v623 = [v1112 objectAtIndexedSubscript:4];
      [v623 doubleValue];
      v625 = v624;
      v626 = [v513 objectForKeyedSubscript:v512];
      v627 = [v626 objectForKeyedSubscript:@"LTE"];
      v628 = [v627 objectForKeyedSubscript:@"Active2CA"];
      v629 = [v628 objectForKeyedSubscript:v1145];
      [v629 doubleValue];
      v631 = v625 * v630 / v35;

      v632 = [v1112 objectAtIndexedSubscript:5];
      [v632 doubleValue];
      v634 = v633;
      v635 = [v513 objectForKeyedSubscript:v512];
      v636 = [v635 objectForKeyedSubscript:@"LTE"];
      v637 = [v636 objectForKeyedSubscript:@"Active2CA1configured"];
      v638 = [v637 objectForKeyedSubscript:v1145];
      [v638 doubleValue];
      v640 = v631 + v634 * v639 / v35;

      v641 = [v1112 objectAtIndexedSubscript:6];
      [v641 doubleValue];
      v643 = v642;
      v644 = [v513 objectForKeyedSubscript:v512];
      v645 = [v644 objectForKeyedSubscript:@"LTE"];
      v646 = [v645 objectForKeyedSubscript:@"Active2CA2configured"];
      v647 = [v646 objectForKeyedSubscript:v1145];
      [v647 doubleValue];
      v558 = v640 + v643 * v648 / v35;

      v649 = [v1112 objectAtIndexedSubscript:7];
      [v649 doubleValue];
      v651 = v650;
      v652 = [v513 objectForKeyedSubscript:v512];
      v653 = [v652 objectForKeyedSubscript:@"LTE"];
      v654 = [v653 objectForKeyedSubscript:@"Active3CA"];
      v655 = [v654 objectForKeyedSubscript:v1145];
      [v655 doubleValue];
      v657 = v651 * v656 / v35;

      v658 = [v1112 objectAtIndexedSubscript:8];
      [v658 doubleValue];
      v660 = v659;
      v661 = [v513 objectForKeyedSubscript:v512];
      v662 = [v661 objectForKeyedSubscript:@"LTE"];
      v663 = [v662 objectForKeyedSubscript:@"Active3CA1configured"];
      v664 = [v663 objectForKeyedSubscript:v1145];
      [v664 doubleValue];
      v666 = v35;
      v560 = v657 + v660 * v665 / v35;

      v550 = [v1112 objectAtIndexedSubscript:9];
      [v550 doubleValue];
      v668 = v667;
      v553 = [v513 objectForKeyedSubscript:v512];
      v554 = [v553 objectForKeyedSubscript:@"LTE"];
      v555 = [v554 objectForKeyedSubscript:@"Active4CA"];
      v556 = [v555 objectForKeyedSubscript:v1145];
      [v556 doubleValue];
      v1094 = 0.0;
      v561 = v668 * v669 / v666;
    }

    v493 = 0x277D3F000uLL;
  }

  v670 = v1151;
  if (([*(v493 + 520) isBasebandClass:1003003] & 1) != 0 || objc_msgSend(*(v493 + 520), "isBasebandClass:", 1003004))
  {
    v671 = [v1116 objectAtIndexedSubscript:2];
    v672 = mavRevStringQuery;
    v673 = v1154;
    if (v671)
    {
      v674 = v671;
      v675 = [v1116 objectAtIndexedSubscript:3];

      v676 = v1133;
      if (v675)
      {
        v677 = [v1116 objectAtIndexedSubscript:2];
        [v677 doubleValue];
        [(PLBBAgent *)self translateChannelRBsToChannelBW:?];
        v679 = v678;
        v680 = [v1116 objectAtIndexedSubscript:3];
        [v680 doubleValue];
        [(PLBBAgent *)self translateChannelRBsToChannelBW:?];
        v682 = v679 + v681;
        goto LABEL_206;
      }

      goto LABEL_230;
    }

LABEL_229:
    v676 = v1133;
    goto LABEL_230;
  }

  v692 = [*(v493 + 520) isBasebandClass:1003005];
  v693 = [v1131 objectForKeyedSubscript:@"PCC_BW"];
  v682 = v693;
  v672 = mavRevStringQuery;
  v673 = v1154;
  if (!v692)
  {
    if (v693)
    {
      v703 = [v1131 objectForKeyedSubscript:@"SCC1_BW"];

      if (v703)
      {
        v704 = [v1131 objectForKeyedSubscript:@"PCC_BW"];
        [v704 doubleValue];
        [(PLBBAgent *)self translateChannelRBsToChannelBW:?];
        v706 = v705;
        v707 = [v1131 objectForKeyedSubscript:@"SCC1_BW"];
        [v707 doubleValue];
        [(PLBBAgent *)self translateChannelRBsToChannelBW:?];
        v709 = v706 + v708;

        v709 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", v709];
        v711 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
        v712 = [v711 objectForKeyedSubscript:@"LTE"];
        v713 = [v712 objectForKeyedSubscript:@"2CAMultiplier"];
        v714 = [v713 objectForKeyedSubscript:v709];
        [v714 doubleValue];
        v716 = v715;

        v672 = mavRevStringQuery;
        if (v716 > 0.0)
        {
          v558 = v558 * v716;
        }
      }

      v717 = v1131;
    }

    else
    {
      v717 = v1131;
    }

    v718 = [v717 objectForKeyedSubscript:@"PCC_BW"];
    if (!v718)
    {
      goto LABEL_228;
    }

    v731 = v718;
    v720 = [v717 objectForKeyedSubscript:@"SCC1_BW"];
    if (v720)
    {
      v721 = v720;
      v722 = [v717 objectForKeyedSubscript:@"SCC2_BW"];

      if (!v722)
      {
LABEL_228:
        v1094 = v561 + v558 + v560;
        goto LABEL_229;
      }

      v723 = [v717 objectForKeyedSubscript:@"PCC_BW"];
      [v723 doubleValue];
      [(PLBBAgent *)self translateChannelRBsToChannelBW:?];
      v725 = v724;
      v726 = [v717 objectForKeyedSubscript:@"SCC1_BW"];
      [v726 doubleValue];
      [(PLBBAgent *)self translateChannelRBsToChannelBW:?];
      v728 = v725 + v727;
      v729 = [v717 objectForKeyedSubscript:@"SCC2_BW"];
      [v729 doubleValue];
      [(PLBBAgent *)self translateChannelRBsToChannelBW:?];
      v731 = v728 + v730;

      v731 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", v731];
      v732 = [v1154 objectForKeyedSubscript:v672];
      v733 = [v732 objectForKeyedSubscript:@"LTE"];
      v734 = [v733 objectForKeyedSubscript:@"3CAMultiplier"];
      [v734 objectForKeyedSubscript:v731];
      v736 = v735 = v672;
      [v736 doubleValue];
      v738 = v737;

      v672 = v735;
      if (v738 > 0.0)
      {
        v560 = v560 * v738;
      }
    }

    goto LABEL_228;
  }

  if (!v693)
  {
    goto LABEL_229;
  }

  v694 = [v1131 objectForKeyedSubscript:@"SCC1_BW"];
  v676 = v1133;
  if (v694)
  {
    v695 = v694;
    v696 = [v1131 objectForKeyedSubscript:@"SCC2_BW"];

    if (!v696)
    {
      goto LABEL_230;
    }

    v677 = [v1131 objectForKeyedSubscript:@"PCC_BW"];
    [v677 doubleValue];
    [(PLBBAgent *)self translateChannelRBsToChannelBW:?];
    v698 = v697;
    v680 = [v1131 objectForKeyedSubscript:@"SCC1_BW"];
    [v680 doubleValue];
    [(PLBBAgent *)self translateChannelRBsToChannelBW:?];
    v700 = v698 + v699;
    v701 = [v1131 objectForKeyedSubscript:@"SCC2_BW"];
    [v701 doubleValue];
    [(PLBBAgent *)self translateChannelRBsToChannelBW:?];
    v682 = v700 + v702;

LABEL_206:
    v682 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i", v682];
    v684 = [v673 objectForKeyedSubscript:v672];
    v685 = [v684 objectForKeyedSubscript:@"LTE"];
    v686 = [v685 objectForKeyedSubscript:@"CAMultiplier"];
    [v686 objectForKeyedSubscript:v682];
    v688 = v687 = v672;
    [v688 doubleValue];
    v690 = v689;

    v672 = v687;
    v691 = v1094;
    if (v690 > 0.0)
    {
      v691 = v1094 * v690;
    }

    v1094 = v691;
  }

LABEL_230:
  v739 = 0;
  v740 = 0.0;
  v741 = v446 / v676;
  do
  {
    v742 = [v670 objectAtIndexedSubscript:v739];
    [v742 doubleValue];
    v744 = v743;
    v745 = [v673 objectForKeyedSubscript:v672];
    v746 = [v745 objectForKeyedSubscript:@"LTE"];
    v747 = [v746 objectForKeyedSubscript:v1103];
    [v747 objectAtIndexedSubscript:v739];
    v748 = v673;
    v750 = v749 = v672;
    [v750 doubleValue];
    v740 = v740 + v744 * v751;

    v672 = v749;
    v673 = v748;

    v670 = v1151;
    ++v739;
  }

  while (v739 != 12);
  for (jj = 8; jj != 12; ++jj)
  {
    v753 = [v1151 objectAtIndexedSubscript:jj];
    [v753 doubleValue];
    v37 = v37 + v754;
  }

  if ([MEMORY[0x277D3F208] isBasebandClass:1003003])
  {
    v755 = 0.0;
    v756 = 1;
    v757 = 0.0;
    do
    {
      v758 = [v1139 objectAtIndexedSubscript:v756];
      [v758 doubleValue];
      v760 = v759;
      v761 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
      v762 = [v761 objectForKeyedSubscript:@"LTE"];
      v763 = [v762 objectForKeyedSubscript:@"C0TBSz"];
      v764 = [v763 objectForKeyedSubscript:v1145];
      v765 = [v764 objectAtIndexedSubscript:v756];
      [v765 doubleValue];
      v757 = v757 + v760 * v766;

      v767 = [v1136 objectAtIndexedSubscript:v756];
      [v767 doubleValue];
      v769 = v768;
      v770 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
      v771 = [v770 objectForKeyedSubscript:@"LTE"];
      v772 = [v771 objectForKeyedSubscript:@"C1TBSz"];
      v773 = [v772 objectForKeyedSubscript:v1145];
      v774 = [v773 objectAtIndexedSubscript:v756];
      [v774 doubleValue];
      v755 = v755 + v769 * v775;

      ++v756;
    }

    while (v756 != 16);
    goto LABEL_241;
  }

  if ([MEMORY[0x277D3F208] isBasebandClass:1003004])
  {
    v755 = 0.0;
    v776 = 1;
    v757 = 0.0;
    do
    {
      v777 = [v1139 objectAtIndexedSubscript:v776];
      [v777 doubleValue];
      v779 = v778;
      v780 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
      v781 = [v780 objectForKeyedSubscript:@"LTE"];
      v782 = [v781 objectForKeyedSubscript:@"C0TBSz"];
      v783 = [v782 objectForKeyedSubscript:v1145];
      v784 = [v783 objectAtIndexedSubscript:v776];
      [v784 doubleValue];
      v757 = v757 + v779 * v785;

      v786 = [v1136 objectAtIndexedSubscript:v776];
      [v786 doubleValue];
      v788 = v787;
      v789 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
      v790 = [v789 objectForKeyedSubscript:@"LTE"];
      v791 = [v790 objectForKeyedSubscript:@"C1TBSz"];
      v792 = [v791 objectForKeyedSubscript:v1145];
      v793 = [v792 objectAtIndexedSubscript:v776];
      [v793 doubleValue];
      v755 = v755 + v788 * v794;

      ++v776;
    }

    while (v776 != 18);
LABEL_241:
    v795 = v757 + v755;
    v676 = v1133;
    v796 = v1125;
  }

  else
  {
    v1012 = mavRevStringQuery;
    v796 = v1125;
    if (([MEMORY[0x277D3F208] isBasebandClass:1003005] & 1) != 0 || (v795 = 0.0, objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003007)))
    {
      v795 = 0.0;
      for (kk = 1; kk != 17; ++kk)
      {
        v1014 = [v796 objectAtIndexedSubscript:kk];
        [v1014 doubleValue];
        v1016 = v1015;
        v1017 = [v1154 objectForKeyedSubscript:v1012];
        v1018 = [v1017 objectForKeyedSubscript:@"LTE"];
        v1019 = [v1018 objectForKeyedSubscript:@"C0TBSz"];
        v1020 = [v1019 objectForKeyedSubscript:v1145];
        v1021 = [v1020 objectAtIndexedSubscript:kk];
        [v1021 doubleValue];
        v795 = v795 + v1016 * v1022;

        v796 = v1125;
        v1012 = mavRevStringQuery;
      }
    }
  }

  v797 = v740 / v676;
  v1120 = v795 / v676;
  if (([MEMORY[0x277D3F208] isBasebandClass:1003004] & 1) != 0 || (v798 = 0.0, v799 = 0.0, v800 = 0.0, objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003005)))
  {
    v801 = [v1131 objectForKeyedSubscript:@"RfBPEArr"];
    v802 = [v801 objectAtIndexedSubscript:7];
    [v802 doubleValue];
    v1077 = v510;
    v804 = v803 * 3.7 / (v1133 * 0.0000305175781) / 1000.0;

    v805 = [v801 objectAtIndexedSubscript:6];
    [v805 doubleValue];
    v807 = v797;
    v808 = v741;
    v809 = v806 * 3.7 / (v1133 * 0.0000305175781) / 1000.0;

    v810 = [v801 objectAtIndexedSubscript:5];
    [v810 doubleValue];
    v800 = v811 * 3.7 / (v1133 * 0.0000305175781) / 1000.0;

    if (v804 > 3000.0 || v804 < 0.0)
    {
      v798 = 0.0;
    }

    else
    {
      v798 = v804;
    }

    v510 = v1077;
    if (v809 > 3000.0 || v809 < 0.0)
    {
      v799 = 0.0;
    }

    else
    {
      v799 = v809;
    }

    v741 = v808;
    v797 = v807;
    if (v800 > 3000.0 || v800 < 0.0)
    {
      v800 = 0.0;
    }
  }

  v447 = v741 + v510 + v1094 + v797 + v1120 + v798 + v799 + v800;
  powerCopy = v1134;
  v25 = v1127;
  entryDate = v1128;
  v448 = v1154;
  v815 = v1116;
  v816 = v1103;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v817 = objc_opt_class();
    v1162[0] = MEMORY[0x277D85DD0];
    v1162[1] = 3221225472;
    v1162[2] = __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1782;
    v1162[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v1162[4] = v817;
    v818 = v1162;
    if (qword_2811F5580 != -1)
    {
      dispatch_once(&qword_2811F5580, v818);
    }

    if (byte_2811F4FF9 == 1)
    {
      v819 = [MEMORY[0x277CCACA8] stringWithFormat:@"lteSleepPowerAdder=%f, lteNonCaActivePowerAdder=%f, CAActivePowerAdder=%f, lteTxPowerAdder=%f, TBSzPowerAdder=%f, lnaAdder=%f, nlicAdder=%f, advRxAdder=%f, ltePower=%f", *&v741, *&v510, *&v1094, *&v797, *&v1120, *&v798, *&v799, *&v800, *&v447];
      v820 = MEMORY[0x277D3F178];
      v821 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent6 = [v821 lastPathComponent];
      v823 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelMav10BBHWPower:]"];
      [v820 logMessage:v819 fromFile:lastPathComponent6 fromFunction:v823 fromLineNumber:4246];

      v824 = PLLogCommon();
      if (os_log_type_enabled(v824, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v1173 = v819;
        _os_log_debug_impl(&dword_21A4C6000, v824, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      entryDate = v1128;
      v815 = v1116;
      v796 = v1125;
      v816 = v1103;
      v25 = v1127;
    }
  }

LABEL_270:
  v1152 = v447;
  if (v1132)
  {
    v825 = [v1132 objectForKeyedSubscript:@"SrvcType"];
    v826 = [v825 objectAtIndexedSubscript:0];
    [v826 doubleValue];
    v828 = v827;
    v829 = [v448 objectForKeyedSubscript:mavRevStringQuery];
    v830 = [v829 objectForKeyedSubscript:@"UTRAN"];
    v831 = [v830 objectForKeyedSubscript:@"SrvcType"];
    v832 = [v831 objectAtIndexedSubscript:0];
    [v832 doubleValue];
    v833 = 0.0;
    v835 = v828 * v834 + 0.0;

    v836 = [v825 objectAtIndexedSubscript:1];
    [v836 doubleValue];
    v838 = v837;
    v839 = [v448 objectForKeyedSubscript:mavRevStringQuery];
    v840 = [v839 objectForKeyedSubscript:@"UTRAN"];
    v841 = [v840 objectForKeyedSubscript:@"SrvcType"];
    v842 = [v841 objectAtIndexedSubscript:1];
    [v842 doubleValue];
    v844 = v838 * v843 + 0.0;

    v845 = [v825 objectAtIndexedSubscript:2];
    [v845 doubleValue];
    v847 = v846;
    v848 = [v448 objectForKeyedSubscript:mavRevStringQuery];
    v849 = [v848 objectForKeyedSubscript:@"UTRAN"];
    v850 = [v849 objectForKeyedSubscript:@"SrvcType"];
    v851 = [v850 objectAtIndexedSubscript:2];
    [v851 doubleValue];
    v853 = v844 + v847 * v852;

    v854 = [v825 objectAtIndexedSubscript:5];
    [v854 doubleValue];
    v856 = v855;
    v857 = [v448 objectForKeyedSubscript:mavRevStringQuery];
    v858 = [v857 objectForKeyedSubscript:@"UTRAN"];
    v859 = [v858 objectForKeyedSubscript:@"SrvcType"];
    v860 = [v859 objectAtIndexedSubscript:5];
    [v860 doubleValue];
    v862 = v853 + v856 * v861;

    v1146 = v825;
    v863 = [v825 objectAtIndexedSubscript:3];
    [v863 doubleValue];
    v865 = v864;
    v866 = [v448 objectForKeyedSubscript:mavRevStringQuery];
    v867 = [v866 objectForKeyedSubscript:@"UTRAN"];
    v868 = [v867 objectForKeyedSubscript:@"SrvcType"];
    v869 = [v868 objectAtIndexedSubscript:0];
    [v869 doubleValue];
    v871 = v835 + v865 * v870;

    v872 = [v825 objectAtIndexedSubscript:3];
    [v872 doubleValue];
    v874 = v873;
    v875 = [v448 objectForKeyedSubscript:mavRevStringQuery];
    [v875 objectForKeyedSubscript:@"UTRAN"];
    v877 = v876 = v448;
    v878 = [v877 objectForKeyedSubscript:@"SrvcType"];
    v879 = [v878 objectAtIndexedSubscript:3];
    [v879 doubleValue];
    v881 = v880;
    v882 = [v876 objectForKeyedSubscript:mavRevStringQuery];
    v883 = [v882 objectForKeyedSubscript:@"UTRAN"];
    v884 = [v883 objectForKeyedSubscript:@"SrvcType"];
    v885 = [v884 objectAtIndexedSubscript:0];
    [v885 doubleValue];
    v887 = v862 + v874 * (v881 - v886);

    v888 = [v1146 objectAtIndexedSubscript:4];
    [v888 doubleValue];
    v890 = v889;
    v891 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v892 = [v891 objectForKeyedSubscript:@"UTRAN"];
    v893 = [v892 objectForKeyedSubscript:@"SrvcType"];
    v894 = [v893 objectAtIndexedSubscript:0];
    [v894 doubleValue];
    v896 = v871 + v890 * v895;

    v1140 = [v1146 objectAtIndexedSubscript:4];
    [v1140 doubleValue];
    v898 = v897;
    v899 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v900 = [v899 objectForKeyedSubscript:@"UTRAN"];
    v901 = [v900 objectForKeyedSubscript:@"SrvcType"];
    v902 = [v901 objectAtIndexedSubscript:4];
    [v902 doubleValue];
    v904 = v903;
    v905 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v906 = [v905 objectForKeyedSubscript:@"UTRAN"];
    v907 = [v906 objectForKeyedSubscript:@"SrvcType"];
    v908 = [v907 objectAtIndexedSubscript:0];
    [v908 doubleValue];
    v910 = v887 + v898 * (v904 - v909);

    v911 = [v1132 objectForKeyedSubscript:@"RxDState"];
    v912 = [v911 objectAtIndexedSubscript:1];
    [v912 doubleValue];
    v1141 = v913;
    v914 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
    v915 = [v914 objectForKeyedSubscript:@"UTRAN"];
    v916 = [v915 objectForKeyedSubscript:@"RxDState"];
    v917 = [v916 objectAtIndexedSubscript:1];
    [v917 doubleValue];
    v1137 = v918;

    if (v1156)
    {
      v1121 = v896;
      v1126 = v911;
      v919 = [v1156 objectForKeyedSubscript:@"RSSIModeCount"];
      v920 = [v919 objectAtIndexedSubscript:1];
      [v920 doubleValue];
      v922 = v921;
      v923 = [v919 objectAtIndexedSubscript:2];
      [v923 doubleValue];
      v925 = v924;
      v1117 = v919;
      v926 = [v919 objectAtIndexedSubscript:3];
      [v926 doubleValue];
      v928 = v927;
      v929 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
      v930 = [v929 objectForKeyedSubscript:@"UTRAN"];
      v931 = [v930 objectForKeyedSubscript:@"RX"];
      [v931 doubleValue];
      v933 = v932;

      v934 = [v1156 objectForKeyedSubscript:@"TxPowerHist"];
      v935 = 0;
      v936 = 0.0;
      do
      {
        v937 = [v934 objectAtIndexedSubscript:v935];
        [v937 doubleValue];
        v939 = v938;
        v940 = [v1154 objectForKeyedSubscript:mavRevStringQuery];
        v941 = [v940 objectForKeyedSubscript:@"UTRAN"];
        v942 = [v941 objectForKeyedSubscript:@"txPower"];
        v943 = [v942 objectAtIndexedSubscript:v935];
        [v943 doubleValue];
        v936 = v936 + v939 * v944;

        ++v935;
      }

      while (v935 != 12);
      v945 = v922 + v925 + v928;
      for (mm = 8; mm != 12; ++mm)
      {
        v947 = [v934 objectAtIndexedSubscript:mm];
        [v947 doubleValue];
        v37 = v37 + v948;
      }

      v949 = v1133;
      v833 = v945 * v933 / v1133;
      v950 = v936 / v1133;

      powerCopy = v1134;
      v951 = v1146;
      v911 = v1126;
      v896 = v1121;
    }

    else
    {
      v950 = 0.0;
      powerCopy = v1134;
      v949 = v1133;
      v951 = v1146;
    }

    v953 = v896 / v949;
    v952 = v910 / v949;
    v954 = [v951 objectAtIndexedSubscript:0];
    [v954 doubleValue];
    v956 = v955;
    v957 = [v951 objectAtIndexedSubscript:3];
    [v957 doubleValue];
    v959 = v956 + v958;
    v960 = [v951 objectAtIndexedSubscript:4];
    [v960 doubleValue];
    v962 = v959 + v961;

    v963 = [v951 objectAtIndexedSubscript:1];
    [v963 doubleValue];
    v965 = v964;
    v966 = [v951 objectAtIndexedSubscript:2];
    [v966 doubleValue];
    v968 = v965 + v967;
    v969 = [v951 objectAtIndexedSubscript:3];
    [v969 doubleValue];
    v971 = v968 + v970;
    v972 = [v951 objectAtIndexedSubscript:4];
    [v972 doubleValue];
    v974 = v971 + v973;
    v975 = [v951 objectAtIndexedSubscript:5];
    [v975 doubleValue];
    v977 = v974 + v976;

    v978 = v962 + v977;
    v25 = v1127;
    v448 = v1154;
    if (v962 + v977 > 0.0)
    {
      v979 = v1141 * v1137 / v949 + v833 + v950;
      v953 = v953 + v979 * v962 / v978;
      v952 = v952 + v979 * v977 / v978;
    }

    entryDate = v1128;
    v1108 = v953;
  }

  else
  {
    v952 = 0.0;
  }

  if (v1109 >= 0.0)
  {
    v980 = v1109;
  }

  else
  {
    v980 = 0.0;
  }

  if (v1104 >= 0.0)
  {
    v981 = v1104;
  }

  else
  {
    v981 = 0.0;
  }

  if (v1097 >= 0.0)
  {
    v982 = v1097;
  }

  else
  {
    v982 = 0.0;
  }

  if (v1096 >= 0.0)
  {
    v983 = v1096;
  }

  else
  {
    v983 = 0.0;
  }

  if (v1152 >= 0.0)
  {
    v984 = v1152;
  }

  else
  {
    v984 = 0.0;
  }

  v985 = v980 + v981 + v982 + v983 + v984 + v952;
  if (v985 > 3000.0 || v985 < 0.0)
  {
    v987 = 0.0;
  }

  else
  {
    v987 = v980 + v981 + v982 + v983 + v984 + v952;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v988 = objc_opt_class();
    v1161[0] = MEMORY[0x277D85DD0];
    v1161[1] = 3221225472;
    v1161[2] = __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1794;
    v1161[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v1161[4] = v988;
    v989 = v1161;
    if (qword_2811F5588 != -1)
    {
      dispatch_once(&qword_2811F5588, v989);
    }

    if (byte_2811F4FFA == 1)
    {
      v990 = v25;
      v991 = [MEMORY[0x277CCACA8] stringWithFormat:@"cdma2kDataPower=%f, evdoPower=%f, gsmDataPower=%f, wcdmaDataPower=%f, ltePower=%f, tdscdmaDataPower=%f, basebandDataPower=%f, BBDate=%@", *&v980, *&v981, *&v982, *&v983, *&v984, *&v952, *&v987, entryDate];
      v992 = MEMORY[0x277D3F178];
      v993 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent7 = [v993 lastPathComponent];
      v995 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelMav10BBHWPower:]"];
      [v992 logMessage:v991 fromFile:lastPathComponent7 fromFunction:v995 fromLineNumber:4346];

      v996 = PLLogCommon();
      if (os_log_type_enabled(v996, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v1173 = v991;
        _os_log_debug_impl(&dword_21A4C6000, v996, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      entryDate = v1128;
      v25 = v990;
    }
  }

  mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
  [mEMORY[0x277D3F0C0] createPowerEventBackwardWithRootNodeID:37 withPower:entryDate withEndDate:v987];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v998 = objc_opt_class();
    v1160[0] = MEMORY[0x277D85DD0];
    v1160[1] = 3221225472;
    v1160[2] = __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1800;
    v1160[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v1160[4] = v998;
    v999 = v1160;
    if (qword_2811F5590 != -1)
    {
      dispatch_once(&qword_2811F5590, v999);
    }

    if (byte_2811F4FFB == 1)
    {
      v1000 = [MEMORY[0x277CCACA8] stringWithFormat:@"cdma2kVoicePower=%f, wcdmaVoicePower=%f, gsmVoicePower=%f, tdscdmaVoicePower=%f", *&v1110, *&v1113, *&v1098, *&v1108];
      v1001 = MEMORY[0x277D3F178];
      v1002 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent8 = [v1002 lastPathComponent];
      v1004 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelMav10BBHWPower:]"];
      [v1001 logMessage:v1000 fromFile:lastPathComponent8 fromFunction:v1004 fromLineNumber:4354];

      v1005 = PLLogCommon();
      if (os_log_type_enabled(v1005, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v1173 = v1000;
        _os_log_debug_impl(&dword_21A4C6000, v1005, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      entryDate = v1128;
      v25 = v1127;
    }
  }

  mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
  [mEMORY[0x277D3F0C0]2 createPowerEventBackwardWithRootNodeID:38 withPower:entryDate withEndDate:v1098 + v1110 + v1113 + v1108];

  v1007 = [entryDate dateByAddingTimeInterval:v1133 * -0.0000305175781];
  mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
  v1009 = mEMORY[0x277D3F0C0]3;
  if (v37 / v1133 <= 0.100000001)
  {
    v1010 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v1010 = &unk_282C14C88;
  }

  [mEMORY[0x277D3F0C0]3 createQualificationEventForwardWithQualificationID:1 withChildNodeNames:v1010 withStartDate:v1007];

LABEL_321:
  v1011 = *MEMORY[0x277D85DE8];
}

uint64_t __33__PLBBAgent_modelMav10BBHWPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FF4 = result;
  return result;
}

uint64_t __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1754(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FF5 = result;
  return result;
}

uint64_t __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1760(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FF6 = result;
  return result;
}

uint64_t __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1766(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FF7 = result;
  return result;
}

uint64_t __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1772(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FF8 = result;
  return result;
}

uint64_t __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1782(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FF9 = result;
  return result;
}

uint64_t __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1794(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FFA = result;
  return result;
}

uint64_t __33__PLBBAgent_modelMav10BBHWPower___block_invoke_1800(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FFB = result;
  return result;
}

- (double)translateChannelRBsToChannelBW:(double)w
{
  v3 = 0.0;
  if (w != 0.0)
  {
    v3 = 20.0;
    if (w != 100.0)
    {
      v3 = 15.0;
      if (w != 75.0)
      {
        v3 = 10.0;
        if (w != 50.0)
        {
          v3 = 5.0;
          if (w != 25.0)
          {
            v3 = 3.0;
            if (w != 15.0)
            {
              return 1.5;
            }
          }
        }
      }
    }
  }

  return v3;
}

- (void)modelMavBBHWOtherPerRATPower:(id)power
{
  powerCopy = power;
  v4 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];

  if (v4)
  {
    v5 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
    v6 = [v5 count];

    if (v6)
    {
      v7 = 0;
      while (1)
      {
        v8 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
        v9 = [v8 objectAtIndexedSubscript:v7];

        if (!v9)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v10 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOther"];
      v11 = [v10 objectAtIndexedSubscript:0];

      if (v11)
      {
        v12 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOther"];
        v13 = [v12 objectAtIndexedSubscript:0];

        entryDate = [v13 entryDate];
        v15 = [v13 objectForKeyedSubscript:@"LogDuration"];
        [v15 doubleValue];
        v17 = v16;

        if (v17 > 0.0)
        {
          v125 = v17;
          v126 = v13;
          mavRevStringQuery = [MEMORY[0x277D3F258] MavRevStringQuery];
          v19 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"baseband"];
          v127 = entryDate;
          selfCopy = self;
          if ([MEMORY[0x277D3F208] isBasebandClass:?])
          {
            goto LABEL_10;
          }

          v20 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
          v23 = 0.0;
          v24 = 0.0;
          v25 = 0.0;
          v26 = 0.0;
          v27 = 0.0;
          if ([MEMORY[0x277D3F208] isBasebandClass:1003002])
          {
LABEL_10:
            v28 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
            v29 = [v28 objectAtIndexedSubscript:0];

            v30 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
            v31 = [v30 objectAtIndexedSubscript:1];

            v32 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
            v33 = [v32 objectAtIndexedSubscript:2];

            v34 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
            v35 = [v34 objectAtIndexedSubscript:3];

            v123 = v29;
            v131 = [v29 objectForKeyedSubscript:@"TxPowerHist"];
            v122 = v31;
            v129 = [v31 objectForKeyedSubscript:@"TxPowerHist"];
            v121 = v33;
            v136 = [v33 objectForKeyedSubscript:@"TxPowerHist"];
            v133 = [v35 objectForKeyedSubscript:@"TxPowerHist"];
            v36 = 0;
            v27 = 0.0;
            v26 = 0.0;
            v25 = 0.0;
            v24 = 0.0;
            v23 = 0.0;
            v22 = 0.0;
            v21 = 0.0;
            v20 = 0.0;
            do
            {
              v37 = [v131 objectAtIndexedSubscript:v36];
              [v37 doubleValue];
              v27 = v27 + v38;

              v39 = [v129 objectAtIndexedSubscript:v36];
              [v39 doubleValue];
              v138 = v26 + v40;

              v41 = [v136 objectAtIndexedSubscript:v36];
              [v41 doubleValue];
              v25 = v25 + v42;

              v43 = [v133 objectAtIndexedSubscript:v36];
              [v43 doubleValue];
              v24 = v24 + v44;

              v45 = [v131 objectAtIndexedSubscript:v36];
              [v45 doubleValue];
              v47 = v46;
              v48 = [v19 objectForKeyedSubscript:mavRevStringQuery];
              v49 = [v48 objectForKeyedSubscript:@"CDMA2K"];
              v50 = [v49 objectForKeyedSubscript:@"txPower"];
              v51 = [v50 objectAtIndexedSubscript:v36];
              [v51 doubleValue];
              v23 = v23 + v47 * v52;

              v53 = [v129 objectAtIndexedSubscript:v36];
              [v53 doubleValue];
              v55 = v54;
              v56 = [v19 objectForKeyedSubscript:mavRevStringQuery];
              v57 = [v56 objectForKeyedSubscript:@"1xEVDO"];
              v58 = [v57 objectForKeyedSubscript:@"txPower"];
              v59 = [v58 objectAtIndexedSubscript:v36];
              [v59 doubleValue];
              v22 = v22 + v55 * v60;

              v61 = [v136 objectAtIndexedSubscript:v36];
              [v61 doubleValue];
              v63 = v62;
              v64 = [v19 objectForKeyedSubscript:mavRevStringQuery];
              v65 = [v64 objectForKeyedSubscript:@"GSM"];
              v66 = [v65 objectForKeyedSubscript:@"txPower"];
              v67 = [v66 objectAtIndexedSubscript:v36];
              [v67 doubleValue];
              v20 = v20 + v63 * v68;

              v69 = [v133 objectAtIndexedSubscript:v36];
              [v69 doubleValue];
              v71 = v70;
              v72 = [v19 objectForKeyedSubscript:mavRevStringQuery];
              v73 = [v72 objectForKeyedSubscript:@"WCDMA"];
              v74 = [v73 objectForKeyedSubscript:@"txPower"];
              v75 = [v74 objectAtIndexedSubscript:v36];
              [v75 doubleValue];
              v21 = v21 + v71 * v76;
              v26 = v138;

              ++v36;
            }

            while (v36 != 12);

            entryDate = v127;
            self = selfCopy;
          }

          v130 = v21;
          v137 = v27;
          v139 = v26;
          if (([MEMORY[0x277D3F208] isBasebandClass:1003001] & 1) != 0 || (v77 = 0.0, v78 = 0.0, objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003002)))
          {
            v79 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
            v80 = [v79 objectAtIndexedSubscript:4];

            v134 = v80;
            v81 = [v80 objectForKeyedSubscript:@"TxPowerHist"];
            v82 = 0;
            v78 = 0.0;
            v77 = 0.0;
            do
            {
              v83 = [v81 objectAtIndexedSubscript:v82];
              [v83 doubleValue];
              v78 = v78 + v84;

              v85 = [v81 objectAtIndexedSubscript:v82];
              [v85 doubleValue];
              v87 = v86;
              v88 = [v19 objectForKeyedSubscript:mavRevStringQuery];
              v89 = [v88 objectForKeyedSubscript:@"LTE"];
              v90 = [v89 objectForKeyedSubscript:@"txPower"];
              v91 = [v90 objectAtIndexedSubscript:v82];
              [v91 doubleValue];
              v77 = v77 + v87 * v92;

              ++v82;
            }

            while (v82 != 12);

            entryDate = v127;
            self = selfCopy;
            v26 = v139;
          }

          v132 = v25;
          v135 = v24;
          v93 = 0.0;
          v94 = 0.0;
          if ([MEMORY[0x277D3F208] isBasebandClass:1003002])
          {
            v95 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
            v96 = [v95 objectAtIndexedSubscript:5];

            v124 = v96;
            v97 = [v96 objectForKeyedSubscript:@"TxPowerHist"];
            for (i = 0; i != 12; ++i)
            {
              v99 = [v97 objectAtIndexedSubscript:i];
              [v99 doubleValue];
              v94 = v94 + v100;

              v101 = [v97 objectAtIndexedSubscript:i];
              [v101 doubleValue];
              v103 = v102;
              v104 = [v19 objectForKeyedSubscript:mavRevStringQuery];
              v105 = [v104 objectForKeyedSubscript:@"UTRAN"];
              v106 = [v105 objectForKeyedSubscript:@"txPower"];
              v107 = [v106 objectAtIndexedSubscript:i];
              [v107 doubleValue];
              v93 = v93 + v103 * v108;
            }

            entryDate = v127;
            self = selfCopy;
            v26 = v139;
          }

          v109 = v23 / v137;
          if (v137 <= 0.0)
          {
            v109 = 0.0;
          }

          v110 = v22 / v26;
          if (v26 <= 0.0)
          {
            v110 = 0.0;
          }

          v111 = v20 / v132;
          if (v132 <= 0.0)
          {
            v111 = 0.0;
          }

          v112 = v130 / v135;
          if (v135 <= 0.0)
          {
            v112 = 0.0;
          }

          v113 = v77 / v78;
          if (v78 <= 0.0)
          {
            v113 = 0.0;
          }

          v114 = v93 / v94;
          if (v94 <= 0.0)
          {
            v114 = 0.0;
          }

          v115 = v112 + v111 + v110 + v109 + v113 + v114;
          mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
          [mEMORY[0x277D3F0C0] createPowerEventBackwardWithRootNodeID:45 withPower:entryDate withEndDate:v115];

          mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
          [(PLBBAgent *)self lastBBProtoPower];
          [mEMORY[0x277D3F0C0]2 createPowerEventBackwardWithRootNodeID:22 withPower:entryDate withEndDate:?];

          if ((([MEMORY[0x277D3F208] isBasebandClass:1003001] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003002)) && !-[PLBBAgent lteCurrentState](self, "lteCurrentState"))
          {
            mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
            [mEMORY[0x277D3F0C0]3 createPowerEventBackwardWithRootNodeID:21 withPower:entryDate withEndDate:0.0];
          }

          if (v115 > 100.0)
          {
            v119 = [entryDate dateByAddingTimeInterval:v125 * -0.0000305175781];
            mEMORY[0x277D3F0C0]4 = [MEMORY[0x277D3F0C0] sharedInstance];
            [mEMORY[0x277D3F0C0]4 createQualificationEventForwardWithQualificationID:1 withChildNodeNames:&unk_282C14CA0 withStartDate:v119];
          }

          v13 = v126;
        }
      }
    }
  }
}

- (float)translateTransBW:(int)w
{
  if (w > 5)
  {
    return 50.0;
  }

  else
  {
    return flt_21AA221A8[w];
  }
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FFC = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2233(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FFD = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2239(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FFE = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2245(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F4FFF = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2251(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5000 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2257(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5001 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2263(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5002 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2269(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5003 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2275(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5004 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2281(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5005 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2287(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5006 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2293(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5007 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2299(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5008 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2305(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5009 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2311(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F500A = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2317(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F500B = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2323(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F500C = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2329(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F500D = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2335(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F500E = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2341(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F500F = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2347(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5010 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2353(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5011 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2359(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5012 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2365(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5013 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2371(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5014 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2377(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5015 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2383(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5016 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2389(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5017 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2395(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5018 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2401(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5019 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2407(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F501A = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2413(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F501B = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2419(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F501C = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2425(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F501D = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2431(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F501E = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2437(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F501F = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2443(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5020 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2449(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5021 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2455(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5022 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2461(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5023 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2467(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5024 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2473(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5025 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2479(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5026 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2485(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5027 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2491(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5028 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2497(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5029 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2503(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F502A = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2509(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F502B = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2515(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F502C = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2521(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F502D = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2527(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F502E = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2533(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F502F = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2539(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5030 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2545(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5031 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2551(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5032 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2557(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5033 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2563(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5034 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2569(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5035 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2575(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5036 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2581(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5037 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2587(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5038 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2593(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5039 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2599(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F503A = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2605(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F503B = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2611(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F503C = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2617(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F503D = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2623(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F503E = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2629(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F503F = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2635(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5040 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2641(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5041 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2647(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5042 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2653(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5043 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2659(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5044 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2662(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5045 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2668(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5046 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2674(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5047 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2680(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5048 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2686(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5049 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2689(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F504A = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2692(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F504B = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2698(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F504C = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2704(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F504D = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2710(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F504E = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2716(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F504F = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2719(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5050 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2722(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5051 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2728(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5052 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2734(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5053 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2740(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5054 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2746(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5055 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2752(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5056 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2758(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5057 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2764(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5058 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2770(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5059 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2776(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F505A = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2782(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F505B = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2788(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F505C = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2794(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F505D = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2800(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F505E = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2806(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F505F = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2812(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5060 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2818(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5061 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2824(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5062 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2830(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5063 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2836(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5064 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2842(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5065 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2848(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5066 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2854(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5067 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2860(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5068 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2866(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5069 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2872(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F506A = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2878(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F506B = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2884(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F506C = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2890(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F506D = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2896(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F506E = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2902(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F506F = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2908(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5070 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2914(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5071 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2920(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5072 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2926(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5073 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2932(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5074 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2938(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5075 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2944(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5076 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2950(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5077 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2956(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5078 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2962(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5079 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2968(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F507A = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2974(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F507B = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2980(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F507C = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2986(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F507D = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2992(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F507E = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_2998(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F507F = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3004(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5080 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3010(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5081 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3016(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5082 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3022(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5083 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3028(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5084 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3034(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5085 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3040(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5086 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3046(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5087 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3052(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5088 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3058(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5089 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3064(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F508A = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3070(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F508B = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3076(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F508C = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3082(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F508D = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3088(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F508E = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3094(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F508F = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3100(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5090 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3106(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5091 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3112(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5092 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3118(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5093 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3124(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5094 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3130(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5095 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3136(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5096 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3142(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5097 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3148(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5098 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3154(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5099 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3160(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F509A = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3166(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F509B = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3172(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F509C = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3178(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F509D = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3184(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F509E = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3190(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F509F = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3196(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50A0 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3202(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50A1 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3208(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50A2 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3214(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50A3 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3220(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50A4 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3226(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50A5 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3232(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50A6 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3238(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50A7 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3244(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50A8 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3250(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50A9 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3256(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50AA = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3262(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50AB = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3268(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50AC = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3274(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50AD = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3280(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50AE = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3286(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50AF = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3292(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50B0 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3298(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50B1 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3304(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50B2 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3310(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50B3 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3316(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50B4 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3322(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50B5 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3328(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50B6 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3334(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50B7 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3340(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50B8 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3346(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50B9 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3352(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50BA = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3358(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50BB = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3364(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50BC = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3370(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50BD = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3376(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50BE = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3382(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50BF = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3388(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50C0 = result;
  return result;
}

uint64_t __28__PLBBAgent_modelBB16Power___block_invoke_3400(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50C1 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50C2 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3406(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50C3 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3412(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50C4 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3418(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50C5 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3424(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50C6 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3430(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50C7 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3436(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50C8 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3442(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50C9 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3448(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50CA = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3454(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50CB = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3460(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50CC = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3466(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50CD = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3472(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50CE = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3478(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50CF = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3484(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50D0 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3490(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50D1 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3496(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50D2 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3502(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50D3 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3508(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50D4 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3514(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50D5 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3520(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50D6 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3526(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50D7 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3532(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50D8 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3538(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50D9 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3544(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50DA = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3550(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50DB = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3556(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50DC = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3562(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50DD = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3568(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50DE = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3574(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50DF = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3580(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50E0 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3586(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50E1 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3592(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50E2 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3598(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50E3 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3604(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50E4 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3610(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50E5 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3616(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50E6 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3622(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50E7 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3628(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50E8 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3634(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50E9 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3640(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50EA = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3646(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50EB = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3652(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50EC = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3658(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50ED = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3664(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50EE = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3670(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50EF = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3676(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50F0 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3682(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50F1 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3688(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50F2 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3694(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50F3 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3700(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50F4 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3706(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50F5 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3712(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50F6 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3718(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50F7 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3724(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50F8 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3730(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50F9 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3736(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50FA = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3742(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50FB = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3748(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50FC = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3754(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50FD = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3760(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50FE = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3766(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F50FF = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3772(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5100 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3778(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5101 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3784(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5102 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3790(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5103 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3796(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5104 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3802(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5105 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3808(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5106 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3814(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5107 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3820(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5108 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3826(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5109 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3832(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F510A = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3838(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F510B = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3841(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F510C = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3847(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F510D = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3853(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F510E = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3859(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F510F = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3865(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5110 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3871(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5111 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3877(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5112 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3883(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5113 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3889(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5114 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3895(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5115 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3901(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5116 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3907(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5117 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3913(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5118 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3919(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5119 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3925(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F511A = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3931(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F511B = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3937(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F511C = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3943(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F511D = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3949(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F511E = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3955(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F511F = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3961(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5120 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3967(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5121 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3973(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5122 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3979(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5123 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3985(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5124 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3991(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5125 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_3997(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5126 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4003(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5127 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4009(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5128 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4015(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5129 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4021(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F512A = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4027(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F512B = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4033(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F512C = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4039(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F512D = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4045(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F512E = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4051(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F512F = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4057(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5130 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4063(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5131 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4069(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5132 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4075(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5133 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4081(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5134 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4087(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5135 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4093(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5136 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4099(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5137 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4105(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5138 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4111(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5139 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4117(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F513A = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4123(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F513B = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4129(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F513C = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4135(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F513D = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4141(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F513E = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4147(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F513F = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4153(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5140 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4159(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5141 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4165(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5142 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4171(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5143 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4177(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5144 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4183(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5145 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4189(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5146 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4195(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5147 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4201(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5148 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4207(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5149 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4213(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F514A = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4219(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F514B = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4225(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F514C = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4231(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F514D = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4237(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F514E = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4243(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F514F = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4249(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5150 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4255(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5151 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4261(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5152 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4267(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5153 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4273(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5154 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4279(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5155 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4285(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5156 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4291(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5157 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4297(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5158 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4303(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5159 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4309(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F515A = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4315(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F515B = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4321(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F515C = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4327(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F515D = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4333(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F515E = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4339(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F515F = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4345(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5160 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4351(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5161 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4357(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5162 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4363(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5163 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4369(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5164 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4375(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5165 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4381(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5166 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4387(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5167 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4393(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5168 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4399(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5169 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4405(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F516A = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4411(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F516B = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4417(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F516C = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4423(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F516D = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4429(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F516E = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4435(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F516F = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4441(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5170 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4447(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5171 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4453(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5172 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4459(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5173 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4465(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5174 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4471(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5175 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4477(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5176 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4483(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5177 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4489(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5178 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4495(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5179 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4501(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F517A = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4507(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F517B = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4513(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F517C = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4519(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F517D = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4525(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F517E = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4531(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F517F = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4537(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5180 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4543(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5181 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4549(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5182 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4555(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5183 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4561(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5184 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4564(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5185 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4567(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5186 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4570(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5187 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4573(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5188 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4579(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5189 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4585(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F518A = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4591(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F518B = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4597(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F518C = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4603(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F518D = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4609(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F518E = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4615(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F518F = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4621(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5190 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4627(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5191 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4633(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5192 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4639(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5193 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4645(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5194 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4651(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5195 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4657(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5196 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4663(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5197 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4669(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5198 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4675(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5199 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4681(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F519A = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4687(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F519B = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4693(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F519C = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4699(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F519D = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4702(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F519E = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4705(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F519F = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4708(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51A0 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4711(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51A1 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4717(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51A2 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4720(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51A3 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4726(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51A4 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4732(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51A5 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4738(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51A6 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4744(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51A7 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4750(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51A8 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4756(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51A9 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4762(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51AA = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4768(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51AB = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4774(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51AC = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4780(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51AD = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4786(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51AE = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4792(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51AF = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4798(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51B0 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4804(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51B1 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4810(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51B2 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4816(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51B3 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4819(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51B4 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4822(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51B5 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4825(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51B6 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4828(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51B7 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4831(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51B8 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4834(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51B9 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4837(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51BA = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4840(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51BB = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4843(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51BC = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4846(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51BD = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4849(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51BE = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4852(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51BF = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4858(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51C0 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4864(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51C1 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4867(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51C2 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4873(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51C3 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4876(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51C4 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4879(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51C5 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4885(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51C6 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelMavPower___block_invoke_4894(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51C7 = result;
  return result;
}

- (id)getKeyForNRBw:(double)bw
{
  if (bw <= 0.0)
  {
    return 0;
  }

  if (bw < 40.0)
  {
    return @"39";
  }

  if (bw < 60.0)
  {
    return @"40";
  }

  if (bw < 80.0)
  {
    return @"60";
  }

  if (bw >= 100.0 || bw < 80.0)
  {
    return @"100";
  }

  else
  {
    return @"80";
  }
}

- (id)getKeyForLTEBw:(double)bw
{
  if (bw <= 0.0)
  {
    return 0;
  }

  if (bw < 1.5)
  {
    return @"1.4";
  }

  if (bw < 3.0)
  {
    return @"1.5";
  }

  if (bw < 5.0)
  {
    return @"3";
  }

  if (bw < 10.0)
  {
    return @"5";
  }

  if (bw < 15.0)
  {
    return @"10";
  }

  if (bw >= 20.0 || bw < 15.0)
  {
    return @"20";
  }

  else
  {
    return @"15";
  }
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51C8 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_4933(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51C9 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_4939(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51CA = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_4945(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51CB = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_4960(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51CC = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_4966(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51CD = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_4978(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51CE = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_4984(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51CF = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_4990(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51D0 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_4996(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51D1 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5002(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51D2 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5008(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51D3 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5014(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51D4 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5020(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51D5 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5026(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51D6 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5032(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51D7 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5038(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51D8 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5044(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51D9 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5050(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51DA = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5056(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51DB = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5062(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51DC = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5074(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51DD = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5080(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51DE = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5086(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51DF = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5092(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51E0 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5098(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51E1 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5116(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51E2 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5122(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51E3 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5128(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51E4 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5134(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51E5 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5140(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51E6 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5146(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51E7 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5152(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51E8 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5158(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51E9 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5164(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51EA = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5170(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51EB = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5182(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51EC = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5188(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51ED = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5194(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51EE = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5203(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51EF = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5209(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51F0 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5215(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51F1 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5230(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51F2 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5236(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51F3 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5242(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51F4 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5248(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51F5 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5254(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51F6 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5260(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51F7 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5266(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51F8 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5272(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51F9 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5278(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51FA = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5284(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51FB = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5290(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51FC = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5296(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51FD = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5302(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51FE = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5308(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F51FF = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5314(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5200 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5320(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5201 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5326(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5202 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5332(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5203 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5338(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5204 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5344(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5205 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5350(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5206 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5356(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5207 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5362(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5208 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5365(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5209 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5371(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F520A = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5377(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F520B = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5383(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F520C = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5389(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F520D = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5395(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F520E = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5401(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F520F = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5407(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5210 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5413(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5211 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5419(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5212 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5425(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5213 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5431(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5214 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5437(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5215 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5443(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5216 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5449(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5217 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5455(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5218 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5461(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5219 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5467(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F521A = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5473(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F521B = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5479(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F521C = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5485(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F521D = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5491(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F521E = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5494(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F521F = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5506(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5220 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5509(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5221 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5512(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5222 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5518(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5223 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5521(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5224 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5524(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5225 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5527(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5226 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5530(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5227 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5533(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5228 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5536(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5229 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5539(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F522A = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5551(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F522B = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5554(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F522C = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5557(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F522D = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5563(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F522E = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5566(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F522F = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5569(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5230 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5572(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5231 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5575(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5232 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5578(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5233 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5581(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5234 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5584(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5235 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5587(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5236 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5590(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5237 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5593(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5238 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5596(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5239 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5599(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F523A = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5605(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F523B = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5611(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F523C = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5617(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F523D = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5623(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F523E = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5629(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F523F = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5635(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5240 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5644(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5241 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5650(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5242 = result;
  return result;
}

uint64_t __30__PLBBAgent_modelSinopePower___block_invoke_5656(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5243 = result;
  return result;
}

+ (id)indexToRat:(unint64_t)rat
{
  if (rat > 5)
  {
    return &stru_282B650A0;
  }

  else
  {
    return off_27825F8D0[rat];
  }
}

- (void)modelScanPower:(id)power
{
  v167 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  v4 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];

  if (!v4)
  {
    goto LABEL_63;
  }

  v5 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
  v6 = [v5 count];

  v160 = v6;
  if (!v6)
  {
    goto LABEL_63;
  }

  mavRevStringQuery = [MEMORY[0x277D3F258] MavRevStringQuery];
  v8 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOther"];
  v9 = [v8 objectAtIndexedSubscript:0];

  entryDate = [v9 entryDate];
  v11 = [v9 objectForKeyedSubscript:@"LogDuration"];
  [v11 doubleValue];
  v13 = v12;

  if (v13 <= 0.0)
  {
    goto LABEL_62;
  }

  v140 = v9;
  v141 = entryDate;
  v157 = mavRevStringQuery;
  v158 = powerCopy;
  v159 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"baseband"];
  v14 = 0;
  v15 = 0.0;
  v16 = 0.0;
  do
  {
    v17 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
    v18 = [v17 objectAtIndexedSubscript:v14];

    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
    v20 = [v19 objectAtIndexedSubscript:v14];
    v21 = [v20 objectForKeyedSubscript:@"RadioTech"];
    intValue = [v21 intValue];

    v23 = [PLBBAgent indexToRat:intValue];
    if (!v23)
    {
      goto LABEL_61;
    }

    v24 = v23;
    v25 = [v159 objectForKeyedSubscript:mavRevStringQuery];
    v26 = [v25 objectForKeyedSubscript:v24];
    v27 = [v26 objectForKeyedSubscript:@"SCAN"];
    [v27 doubleValue];
    v29 = v28;

    v30 = [v159 objectForKeyedSubscript:mavRevStringQuery];
    v31 = [v30 objectForKeyedSubscript:v24];
    v32 = [v31 objectForKeyedSubscript:@"CELL_SEL_RESEL"];
    [v32 doubleValue];
    v34 = v33;

    v35 = [v159 objectForKeyedSubscript:mavRevStringQuery];
    v36 = [v35 objectForKeyedSubscript:v24];
    v37 = [v36 objectForKeyedSubscript:@"IDLE"];
    [v37 doubleValue];

    v38 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
    v39 = [v38 objectAtIndexedSubscript:v14];

    v40 = [v39 objectForKeyedSubscript:@"ProtocolStateHist"];
    v41 = [v40 objectAtIndexedSubscript:2];
    [v41 doubleValue];
    v43 = v42;

    if ([MEMORY[0x277D3F208] isBasebandClass:1003001] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003002))
    {
      v44 = 12;
    }

    else
    {
      if (![MEMORY[0x277D3F208] isBasebandMavLeg])
      {
        goto LABEL_11;
      }

      v44 = 11;
    }

    v45 = [v40 objectAtIndexedSubscript:v44];
    [v45 doubleValue];
    v15 = v46;

LABEL_11:
    v47 = [v40 objectAtIndexedSubscript:3];
    [v47 doubleValue];

    v16 = v16 + v34 * v15 + v43 * v29;
LABEL_12:
    ++v14;
  }

  while (v160 != v14);
  v48 = [MEMORY[0x277D3F208] isBasebandClass:1003001];
  if ((v48 & 1) != 0 || [MEMORY[0x277D3F208] isBasebandClass:1003002])
  {
    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    [mEMORY[0x277D3F0C0] createPowerEventBackwardWithRootNodeID:46 withPower:v141 withEndDate:v16 / v13];
  }

  if (![MEMORY[0x277D3F208] isBasebandMavLeg])
  {
    goto LABEL_61;
  }

  v50 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];

  v51 = 0.0;
  if (!v50)
  {
    v64 = 0;
    v161 = 0;
    v67 = 0.0;
    v68 = v141;
    v63 = v159;
    goto LABEL_51;
  }

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v52 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_MavBBHwOtherPerRAT"];
  v53 = [v52 countByEnumeratingWithState:&v162 objects:v166 count:16];
  if (!v53)
  {
    v64 = 0;
    v161 = 0;
    v67 = 0.0;
    v68 = v141;
    v63 = v159;
    goto LABEL_50;
  }

  v54 = v53;
  v55 = 0;
  v161 = 0;
  v56 = *v163;
  while (2)
  {
    v57 = 0;
    while (2)
    {
      if (*v163 != v56)
      {
        objc_enumerationMutation(v52);
      }

      v58 = *(*(&v162 + 1) + 8 * v57);
      v59 = [v58 objectForKeyedSubscript:@"RadioTech"];
      intValue2 = [v59 intValue];

      if (intValue2)
      {
        if (intValue2 == 1)
        {
          v61 = v161;
          v161 = v58;
          goto LABEL_30;
        }
      }

      else
      {
        v61 = v55;
        v55 = v58;
LABEL_30:
        v62 = v58;
      }

      if (v54 != ++v57)
      {
        continue;
      }

      break;
    }

    v54 = [v52 countByEnumeratingWithState:&v162 objects:v166 count:16];
    if (v54)
    {
      continue;
    }

    break;
  }

  v63 = v159;
  v64 = v55;
  if (v55)
  {
    v65 = [v55 objectForKeyedSubscript:@"ProtocolStateHist"];
    v66 = [v65 objectAtIndexedSubscript:2];
    [v66 doubleValue];
    v67 = 0.0;
    v68 = v141;
    if (v69 >= v13)
    {
      goto LABEL_37;
    }

    v70 = [v65 objectAtIndexedSubscript:3];
    [v70 doubleValue];
    v72 = v71;

    if (v72 < v13)
    {
      v73 = [v65 objectAtIndexedSubscript:2];
      [v73 doubleValue];
      v75 = v74;
      v76 = [v159 objectForKeyedSubscript:v157];
      v77 = [v76 objectForKeyedSubscript:@"CDMA2K"];
      v78 = [v77 objectForKeyedSubscript:@"SCAN"];
      [v78 doubleValue];
      v80 = v75 * v79 + 0.0;

      v66 = [v65 objectAtIndexedSubscript:3];
      [v66 doubleValue];
      v82 = v81;
      v83 = [v159 objectForKeyedSubscript:v157];
      v84 = [v83 objectForKeyedSubscript:@"CDMA2K"];
      v85 = [v84 objectForKeyedSubscript:@"CELL_SEL_RESEL"];
      [v85 doubleValue];
      v67 = v80 + v82 * v86;

LABEL_37:
    }

    v64 = v55;
  }

  else
  {
    v67 = 0.0;
    v68 = v141;
  }

  if (v161)
  {
    v52 = [v161 objectForKeyedSubscript:@"ProtocolStateHist"];
    v87 = [v52 objectAtIndexedSubscript:2];
    [v87 doubleValue];
    if (v88 >= v13)
    {
      goto LABEL_46;
    }

    v89 = [v52 objectAtIndexedSubscript:3];
    [v89 doubleValue];
    v91 = v90;

    if (v91 >= v13)
    {
      v64 = v55;
    }

    else
    {
      v92 = [v52 objectAtIndexedSubscript:2];
      [v92 doubleValue];
      v94 = v93;
      v95 = [v159 objectForKeyedSubscript:v157];
      v96 = [v95 objectForKeyedSubscript:@"1xEVDO"];
      v97 = [v96 objectForKeyedSubscript:@"SCAN"];
      [v97 doubleValue];
      v99 = v67 + v94 * v98;

      v87 = [v52 objectAtIndexedSubscript:3];
      [v87 doubleValue];
      v101 = v100;
      v63 = v159;
      v102 = [v159 objectForKeyedSubscript:v157];
      v103 = [v102 objectForKeyedSubscript:@"1xEVDO"];
      v104 = [v103 objectForKeyedSubscript:@"CELL_SEL_RESEL"];
      [v104 doubleValue];
      v67 = v99 + v101 * v105;

      v64 = v55;
LABEL_46:
    }

    powerCopy = v158;
LABEL_50:
  }

  else
  {
    v161 = 0;
    powerCopy = v158;
  }

LABEL_51:
  v106 = [powerCopy objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRfOos"];

  if (v106)
  {
    v139 = v64;
    v107 = [v158 objectForKeyedSubscript:@"PLBBAgent_EventBackward_BBMavHwRfOos"];
    v108 = [v107 objectAtIndexedSubscript:0];

    v145 = [v108 objectForKeyedSubscript:@"oosGsmPssiStatTicks"];
    v144 = [v108 objectForKeyedSubscript:@"oosWcdmaPssiStatTicks"];
    v143 = [v108 objectForKeyedSubscript:@"oosLtePssiStatTicks"];
    v138 = v108;
    v142 = [v108 objectForKeyedSubscript:@"oosTdsPssiStatTicks"];
    for (i = 0; i != 6; ++i)
    {
      v156 = [v145 objectAtIndexedSubscript:i];
      [v156 doubleValue];
      v111 = v110;
      v155 = [v63 objectForKeyedSubscript:v157];
      v154 = [v155 objectForKeyedSubscript:@"GSM"];
      v153 = [v154 objectForKeyedSubscript:@"Pssi"];
      v152 = [v153 objectAtIndexedSubscript:i];
      [v152 doubleValue];
      v113 = v112;
      v151 = [v144 objectAtIndexedSubscript:i];
      [v151 doubleValue];
      v115 = v114;
      v150 = [v63 objectForKeyedSubscript:v157];
      v149 = [v150 objectForKeyedSubscript:@"WCDMA"];
      v148 = [v149 objectForKeyedSubscript:@"Pssi"];
      v147 = [v148 objectAtIndexedSubscript:i];
      [v147 doubleValue];
      v117 = v115 * v116 + v111 * v113;
      v146 = [v143 objectAtIndexedSubscript:i];
      [v146 doubleValue];
      v119 = v118;
      v120 = [v63 objectForKeyedSubscript:v157];
      v121 = [v120 objectForKeyedSubscript:@"LTE"];
      v122 = [v121 objectForKeyedSubscript:@"Pssi"];
      v123 = [v122 objectAtIndexedSubscript:i];
      [v123 doubleValue];
      v125 = v117 + v119 * v124;
      v126 = [v142 objectAtIndexedSubscript:i];
      [v126 doubleValue];
      v128 = v127;
      v129 = [v159 objectForKeyedSubscript:v157];
      v130 = [v129 objectForKeyedSubscript:@"UTRAN"];
      v131 = [v130 objectForKeyedSubscript:@"Pssi"];
      v132 = [v131 objectAtIndexedSubscript:i];
      [v132 doubleValue];
      v67 = v67 + v125 + v128 * v133;

      v63 = v159;
    }

    v51 = v67 / v13;

    v68 = v141;
    v64 = v139;
  }

  v134 = 0.0;
  if (v51 >= 0.0)
  {
    v134 = v51;
  }

  if (v134 <= 2000.0)
  {
    v135 = v134;
  }

  else
  {
    v135 = 2000.0;
  }

  mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
  [mEMORY[0x277D3F0C0]2 createPowerEventBackwardWithRootNodeID:47 withPower:v68 withEndDate:v135];

  powerCopy = v158;
LABEL_61:

  mavRevStringQuery = v157;
  v9 = v140;
  entryDate = v141;
LABEL_62:

LABEL_63:
  v137 = *MEMORY[0x277D85DE8];
}

- (void)loadOOSModelValues
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PLBBAgent_loadOOSModelValues__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (loadOOSModelValues_onceToken != -1)
  {
    dispatch_once(&loadOOSModelValues_onceToken, block);
  }
}

void __31__PLBBAgent_loadOOSModelValues__block_invoke(uint64_t a1)
{
  v12 = [MEMORY[0x277D3F258] MavRevStringQuery];
  v2 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"baseband"];
  v3 = [v2 objectForKeyedSubscript:v12];
  v4 = [v3 objectForKeyedSubscript:@"OOS"];
  v5 = [v4 objectForKeyedSubscript:@"gw"];
  [v5 doubleValue];
  [*(a1 + 32) setOosGWPower:?];

  v6 = [v2 objectForKeyedSubscript:v12];
  v7 = [v6 objectForKeyedSubscript:@"OOS"];
  v8 = [v7 objectForKeyedSubscript:@"cdma"];
  [v8 doubleValue];
  [*(a1 + 32) setOosCDMAPower:?];

  v9 = [v2 objectForKeyedSubscript:v12];
  v10 = [v9 objectForKeyedSubscript:@"OOS"];
  v11 = [v10 objectForKeyedSubscript:@"hdr"];
  [v11 doubleValue];
  [*(a1 + 32) setOosHDRPower:?];
}

- (void)modelOOSPower:(id)power
{
  powerCopy = power;
  [(PLBBAgent *)self loadOOSModelValues];
  v4 = [powerCopy objectForKeyedSubscript:@"Event"];
  intValue = [v4 intValue];

  v6 = [powerCopy objectForKeyedSubscript:@"Action"];
  intValue2 = [v6 intValue];

  if (intValue2 != 11)
  {
    if ((intValue - 1001) < 2 || !intValue2)
    {
      entryDate = [powerCopy entryDate];
      [entryDate timeIntervalSinceDate:self->_lastOOSTimestamp];
      v20 = v19;

      self->_totalOosGWScanEnergy = self->_totalOosGWScanEnergy + v20 * self->_lastGWPower;
      self->_lastGWPower = 0.0;
      entryDate2 = [powerCopy entryDate];
      lastOOSTimestamp = self->_lastOOSTimestamp;
      self->_lastOOSTimestamp = entryDate2;
LABEL_21:

      goto LABEL_22;
    }

    if (intValue == 801)
    {
      if (self->_lastOOSTimestamp)
      {
        entryDate3 = [powerCopy entryDate];
        [entryDate3 timeIntervalSinceDate:self->_lastOOSTimestamp];
        v16 = v24;

        if (v16 < 0.15)
        {
          v17 = &OBJC_IVAR___PLBBAgent__oosHDRPower;
          goto LABEL_16;
        }
      }

      v25 = 368;
      oosHDRPower = self->_oosHDRPower;
      totalOosHDRScanEnergy = self->_totalOosHDRScanEnergy;
    }

    else
    {
      if (intValue != 301)
      {
        goto LABEL_22;
      }

      if (self->_lastOOSTimestamp)
      {
        entryDate4 = [powerCopy entryDate];
        [entryDate4 timeIntervalSinceDate:self->_lastOOSTimestamp];
        v16 = v15;

        if (v16 < 0.15)
        {
          v17 = &OBJC_IVAR___PLBBAgent__oosCDMAPower;
LABEL_16:
          v26 = *v17;
          v25 = v17[1];
          v27 = *(&self->super.super.super.isa + v25) + v16 * *(&self->super.super.super.isa + v26);
LABEL_20:
          *(&self->super.super.super.isa + v25) = v27;
          entryDate5 = [powerCopy entryDate];
          lastOOSTimestamp = self->_lastOOSTimestamp;
          self->_lastOOSTimestamp = entryDate5;
          goto LABEL_21;
        }
      }

      v25 = 360;
      oosHDRPower = self->_oosCDMAPower;
      totalOosHDRScanEnergy = self->_totalOosCDMAScanEnergy;
    }

    v27 = totalOosHDRScanEnergy + oosHDRPower * 0.15;
    goto LABEL_20;
  }

  oosGWPower = self->_oosGWPower;
  if (self->_lastGWPower != oosGWPower)
  {
    entryDate6 = [powerCopy entryDate];
    v10 = self->_lastOOSTimestamp;
    self->_lastOOSTimestamp = entryDate6;

    entryDate7 = [powerCopy entryDate];
    [entryDate7 timeIntervalSinceDate:self->_lastOOSTimestamp];
    v13 = v12;

    self->_totalOosGWScanEnergy = self->_totalOosGWScanEnergy + v13 * self->_lastGWPower;
    oosGWPower = self->_oosGWPower;
  }

  self->_lastGWPower = oosGWPower;
LABEL_22:
}

- (void)modelGPSPower:(id)power
{
  v141 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  mavRevStringQuery = [MEMORY[0x277D3F258] MavRevStringQuery];
  v5 = [MEMORY[0x277D3F258] powerModelForOperatorName:@"baseband"];
  if (([MEMORY[0x277D3F208] isBasebandClass:1003002] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003003) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003004) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003005) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandClass:", 1003007))
  {
    v6 = [v5 objectForKeyedSubscript:mavRevStringQuery];
    v7 = [v6 objectForKeyedSubscript:@"GPS"];
    v8 = [v7 objectForKeyedSubscript:@"gps_dpo_bins_80ms"];
    [v8 doubleValue];
    v127 = v9;

    v10 = [v5 objectForKeyedSubscript:mavRevStringQuery];
    v11 = [v10 objectForKeyedSubscript:@"GPS"];
    v12 = [v11 objectForKeyedSubscript:@"gps_dpo_bins_200ms"];
    [v12 doubleValue];
    v126 = v13;

    v14 = [v5 objectForKeyedSubscript:mavRevStringQuery];
    v15 = [v14 objectForKeyedSubscript:@"GPS"];
    v16 = [v15 objectForKeyedSubscript:@"gps_dpo_bins_400ms"];
    [v16 doubleValue];
    v125 = v17;

    v18 = [v5 objectForKeyedSubscript:mavRevStringQuery];
    v19 = [v18 objectForKeyedSubscript:@"GPS"];
    v20 = [v19 objectForKeyedSubscript:@"gps_dpo_bins_1000ms"];
    [v20 doubleValue];
    v124 = v21;

    v22 = [v5 objectForKeyedSubscript:mavRevStringQuery];
    v23 = [v22 objectForKeyedSubscript:@"GPS"];
    v24 = [v23 objectForKeyedSubscript:@"gps_dpo_bins_unknown"];
    [v24 doubleValue];
    v123 = v25;

    v26 = [v5 objectForKeyedSubscript:mavRevStringQuery];
    v27 = [v26 objectForKeyedSubscript:@"GPS"];
    v28 = [v27 objectForKeyedSubscript:@"gps_dpo_bins_aborted"];
    [v28 doubleValue];
    v122 = v29;

    v30 = [powerCopy objectForKeyedSubscript:@"GPSOnOffStateHistogram"];
    v31 = [powerCopy objectForKeyedSubscript:@"GPSDPOOnOffStateHistogram"];
    v32 = [powerCopy objectForKeyedSubscript:@"GPSDPOBins"];
    v33 = [powerCopy objectForKeyedSubscript:@"LogDuration"];
    [v33 doubleValue];
    v35 = v34;

    v36 = [v30 objectAtIndexedSubscript:0];
    [v36 doubleValue];
    v129 = v37;

    v38 = [v30 objectAtIndexedSubscript:1];
    [v38 doubleValue];
    v40 = v39;

    v41 = [v31 objectAtIndexedSubscript:0];
    [v41 doubleValue];
    v43 = v42;

    v44 = [v31 objectAtIndexedSubscript:1];
    [v44 doubleValue];
    v46 = v45;

    v47 = [v32 objectAtIndexedSubscript:0];
    [v47 doubleValue];
    v121 = v48;

    v49 = [v32 objectAtIndexedSubscript:1];
    [v49 doubleValue];
    v120 = v50;

    v51 = [v32 objectAtIndexedSubscript:2];
    [v51 doubleValue];
    v53 = v52;

    v54 = [v32 objectAtIndexedSubscript:3];
    [v54 doubleValue];
    v56 = v55;

    v57 = [v32 objectAtIndexedSubscript:4];
    [v57 doubleValue];
    v59 = v58;

    v60 = [v32 objectAtIndexedSubscript:5];
    [v60 doubleValue];
    v62 = v61;

    if (v129 + v40 >= v35 && v43 + v46 >= v35)
    {
      v63 = 0.0;
      if (v35 > 0.0)
      {
        v63 = (v126 * v120 + v121 * v127 + v53 * v125 + v56 * v124 + v59 * v123 + v62 * v122) / v35 * 32768.0;
      }

LABEL_11:
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v64 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __27__PLBBAgent_modelGPSPower___block_invoke_5740;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v64;
        if (qword_2811F39E8 != -1)
        {
          dispatch_once(&qword_2811F39E8, block);
        }

        if (byte_2811F5248 == 1)
        {
          v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"modelGPSPower: Add %f to rail", *&v63];
          v66 = MEMORY[0x277D3F178];
          v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
          lastPathComponent = [v67 lastPathComponent];
          v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelGPSPower:]"];
          [v66 logMessage:v65 fromFile:lastPathComponent fromFunction:v69 fromLineNumber:11510];

          v70 = PLLogCommon();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v140 = v65;
            _os_log_debug_impl(&dword_21A4C6000, v70, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate = [powerCopy entryDate];
      [mEMORY[0x277D3F0C0] createPowerEventBackwardWithRootNodeID:48 withPower:entryDate withEndDate:v63];
LABEL_19:

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ([MEMORY[0x277D3F208] isBasebandClass:1003001])
  {
    v74 = [v5 objectForKeyedSubscript:mavRevStringQuery];
    v75 = [v74 objectForKeyedSubscript:@"GPS"];
    v76 = [v75 objectForKeyedSubscript:@"gps_dpo"];
    [v76 doubleValue];
    v78 = v77;

    v30 = [powerCopy objectForKeyedSubscript:@"GPSOnOffStateHistogram"];
    v31 = [powerCopy objectForKeyedSubscript:@"GPSDPOOnOffStateHistogram"];
    v79 = [powerCopy objectForKeyedSubscript:@"LogDuration"];
    [v79 doubleValue];
    v81 = v80;

    v82 = [v30 objectAtIndexedSubscript:0];
    [v82 doubleValue];
    v84 = v83;

    v85 = [v30 objectAtIndexedSubscript:1];
    [v85 doubleValue];
    v87 = v86;

    v88 = [v31 objectAtIndexedSubscript:0];
    [v88 doubleValue];
    v90 = v89;

    v91 = [v31 objectAtIndexedSubscript:1];
    [v91 doubleValue];
    v93 = v92;

    v95 = v84 + v87;
    if (v95 < v81 || (v94 = v90 + v93, v90 + v93 < v81))
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v107 = objc_opt_class();
        v138[0] = MEMORY[0x277D85DD0];
        v138[1] = 3221225472;
        v138[2] = __27__PLBBAgent_modelGPSPower___block_invoke;
        v138[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v138[4] = v107;
        if (qword_2811F39C8 != -1)
        {
          dispatch_once(&qword_2811F39C8, v138);
        }

        if (byte_2811F5244 == 1)
        {
          v108 = [MEMORY[0x277CCACA8] stringWithFormat:@"gpsOnDuration + gpsOffDuration = %f", *&v95];
          v132 = MEMORY[0x277D3F178];
          v109 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
          lastPathComponent2 = [v109 lastPathComponent];
          v111 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelGPSPower:]"];
          [v132 logMessage:v108 fromFile:lastPathComponent2 fromFunction:v111 fromLineNumber:11478];

          v112 = v108;
          v113 = PLLogCommon();
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v140 = v112;
            _os_log_debug_impl(&dword_21A4C6000, v113, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate2 = [powerCopy entryDate];
      [mEMORY[0x277D3F0C0]2 createPowerEventBackwardWithRootNodeID:48 withPower:entryDate2 withEndDate:0.0];
    }

    else
    {
      if (v87 >= v93)
      {
        v87 = v93;
      }

      if (v81 > 0.0)
      {
        v63 = v78 * v87 / v81;
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v96 = objc_opt_class();
          v137[0] = MEMORY[0x277D85DD0];
          v137[1] = 3221225472;
          v137[2] = __27__PLBBAgent_modelGPSPower___block_invoke_5722;
          v137[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v137[4] = v96;
          if (qword_2811F39D0 != -1)
          {
            dispatch_once(&qword_2811F39D0, v137);
          }

          if (byte_2811F5245 == 1)
          {
            v97 = [MEMORY[0x277CCACA8] stringWithFormat:@"gpsDPOOnDuration = %f, logDuration = %f, power = %f", *&v87, *&v81, *&v63];
            v130 = MEMORY[0x277D3F178];
            v128 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
            lastPathComponent3 = [v128 lastPathComponent];
            v99 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelGPSPower:]"];
            v100 = v130;
            v131 = v97;
            [v100 logMessage:v97 fromFile:lastPathComponent3 fromFunction:v99 fromLineNumber:11495];

            v101 = PLLogCommon();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v140 = v131;
              _os_log_debug_impl(&dword_21A4C6000, v101, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        goto LABEL_11;
      }

      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_21;
      }

      v116 = objc_opt_class();
      v136[0] = MEMORY[0x277D85DD0];
      v136[1] = 3221225472;
      v136[2] = __27__PLBBAgent_modelGPSPower___block_invoke_5728;
      v136[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v136[4] = v116;
      if (qword_2811F39D8 != -1)
      {
        dispatch_once(&qword_2811F39D8, v136);
      }

      if (byte_2811F5246 != 1)
      {
LABEL_21:

        goto LABEL_22;
      }

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277CCACA8] stringWithFormat:@"modelGPSPower: LogDuration is zero"];
      v133 = MEMORY[0x277D3F178];
      v117 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent4 = [v117 lastPathComponent];
      v119 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelGPSPower:]"];
      [v133 logMessage:mEMORY[0x277D3F0C0]2 fromFile:lastPathComponent4 fromFunction:v119 fromLineNumber:11497];

      entryDate2 = PLLogCommon();
      if (os_log_type_enabled(entryDate2, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v140 = mEMORY[0x277D3F0C0]2;
        _os_log_debug_impl(&dword_21A4C6000, entryDate2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    goto LABEL_21;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v102 = objc_opt_class();
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = __27__PLBBAgent_modelGPSPower___block_invoke_5734;
    v135[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v135[4] = v102;
    if (qword_2811F39E0 != -1)
    {
      dispatch_once(&qword_2811F39E0, v135);
    }

    if (byte_2811F5247 == 1)
    {
      mEMORY[0x277D3F0C0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Mav version not found, return"];
      v103 = MEMORY[0x277D3F178];
      v104 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent5 = [v104 lastPathComponent];
      v106 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent modelGPSPower:]"];
      [v103 logMessage:mEMORY[0x277D3F0C0] fromFile:lastPathComponent5 fromFunction:v106 fromLineNumber:11502];

      entryDate = PLLogCommon();
      if (os_log_type_enabled(entryDate, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v140 = mEMORY[0x277D3F0C0];
        _os_log_debug_impl(&dword_21A4C6000, entryDate, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

LABEL_22:

  v73 = *MEMORY[0x277D85DE8];
}

uint64_t __27__PLBBAgent_modelGPSPower___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5244 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelGPSPower___block_invoke_5722(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5245 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelGPSPower___block_invoke_5728(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5246 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelGPSPower___block_invoke_5734(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5247 = result;
  return result;
}

uint64_t __27__PLBBAgent_modelGPSPower___block_invoke_5740(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5248 = result;
  return result;
}

- (void)accountVoicePower:(id)power state:(id)state
{
  powerCopy = power;
  stateCopy = state;
  if (([MEMORY[0x277D3F208] isBasebandMavLeg] & 1) == 0)
  {
    v7 = [powerCopy objectForKey:@"callId"];

    if (v7)
    {
      if ([stateCopy isEqualToString:@"voice_start"])
      {
        currentCallList = [(PLBBAgent *)self currentCallList];
        [currentCallList count];

        currentCallList2 = [(PLBBAgent *)self currentCallList];
        v10 = [powerCopy objectForKeyedSubscript:@"callId"];
        v11 = [v10 description];
        [currentCallList2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v11];

LABEL_8:
        goto LABEL_9;
      }

      if ([stateCopy isEqualToString:@"voice_end"])
      {
        currentCallList3 = [(PLBBAgent *)self currentCallList];
        v13 = [powerCopy objectForKeyedSubscript:@"callId"];
        v14 = [v13 description];
        v15 = [currentCallList3 objectForKey:v14];

        if (v15)
        {
          currentCallList4 = [(PLBBAgent *)self currentCallList];
          v17 = [powerCopy objectForKeyedSubscript:@"callId"];
          v18 = [v17 description];
          [currentCallList4 removeObjectForKey:v18];

          currentCallList2 = [(PLBBAgent *)self currentCallList];
          [currentCallList2 count];
          goto LABEL_8;
        }
      }
    }
  }

LABEL_9:
}

- (void)createOOSAccountingEvent:(id)event
{
  eventCopy = event;
  v4 = [eventCopy objectForKey:@"status"];

  if (v4)
  {
    v5 = [eventCopy objectForKeyedSubscript:@"status"];
    v6 = [v5 description];
    if ([v6 isEqualToString:@"NotRegistered"])
    {
      v7 = 1;
    }

    else
    {
      v8 = [eventCopy objectForKeyedSubscript:@"status"];
      v9 = [v8 description];
      v7 = [v9 isEqualToString:@"EmergencyOnly"];
    }

    if ([(PLBBAgent *)self isFirstTimeAccountingOOS])
    {
      [(PLBBAgent *)self setIsBBOOS:v7 ^ 1];
      [(PLBBAgent *)self setIsFirstTimeAccountingOOS:0];
    }

    isBBOOS = [(PLBBAgent *)self isBBOOS];
    if (v7)
    {
      if (isBBOOS)
      {
        goto LABEL_13;
      }

      v11 = &unk_282C14D00;
      v12 = &unk_282C18B48;
    }

    else
    {
      if (!isBBOOS)
      {
        goto LABEL_13;
      }

      v11 = MEMORY[0x277CBEBF8];
      v12 = MEMORY[0x277CBEC10];
    }

    mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
    entryDate = [eventCopy entryDate];
    [mEMORY[0x277D3F0C0] createDistributionEventForwardWithDistributionID:40 withChildNodeNameToWeight:v12 withStartDate:entryDate];

    mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
    entryDate2 = [eventCopy entryDate];
    [mEMORY[0x277D3F0C0]2 createQualificationEventForwardWithQualificationID:1 withChildNodeNames:v11 withStartDate:entryDate2];

    [(PLBBAgent *)self setIsBBOOS:v7];
  }

LABEL_13:

  MEMORY[0x2821F96F8]();
}

- (void)registerForAirplaneModeChange
{
  v26 = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    bundleIdentifier = [processInfo processName];
  }

  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = self;
  v6 = SCPreferencesCreate(0, bundleIdentifier, @"com.apple.radios.plist");
  qword_2811F39F0 = v6;
  if (v6)
  {
    SCPreferencesSetCallback(v6, preferencesChanged, &context);
    v7 = qword_2811F39F0;
    workQueue = [(PLOperator *)self workQueue];
    SCPreferencesSetDispatchQueue(v7, workQueue);
LABEL_5:

    goto LABEL_13;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __42__PLBBAgent_registerForAirplaneModeChange__block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v9;
    if (qword_2811F39F8 != -1)
    {
      dispatch_once(&qword_2811F39F8, &block);
    }

    if (byte_2811F5249 == 1)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = SCError();
      workQueue = [v10 stringWithFormat:@"Unable to create preferences handle: %s", SCErrorString(v11), block, v19, v20, v21, v22, context.version, context.info, context.retain, context.release, context.copyDescription];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent registerForAirplaneModeChange]"];
      [v12 logMessage:workQueue fromFile:lastPathComponent fromFunction:v15 fromLineNumber:11691];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = workQueue;
        _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_5;
    }
  }

LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBBAgent_registerForAirplaneModeChange__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5249 = result;
  return result;
}

- (BOOL)isChangedAndSetAirplaneMode
{
  v25 = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    bundleIdentifier = [processInfo processName];
  }

  v5 = SCPreferencesCreateWithAuthorization(*MEMORY[0x277CBECE8], bundleIdentifier, @"com.apple.radios.plist", 0);
  if (SCPreferencesGetValue(v5, @"AirplaneMode") == *MEMORY[0x277CBED28])
  {
    v6 = @"on";
  }

  else
  {
    v6 = @"off";
  }

  v7 = v6;
  CFRelease(v5);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __40__PLBBAgent_isChangedAndSetAirplaneMode__block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v8;
    if (qword_2811F3A08 != -1)
    {
      dispatch_once(&qword_2811F3A08, &block);
    }

    if (byte_2811F524B == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Airplane mode %@", v7, block, v19, v20, v21, v22];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent isChangedAndSetAirplaneMode]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:11751];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v24 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v15 = [airplaneModeCurrent isEqualToString:v7];
  if ((v15 & 1) == 0)
  {
    objc_storeStrong(&airplaneModeCurrent, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15 ^ 1;
}

uint64_t __40__PLBBAgent_isChangedAndSetAirplaneMode__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F524B = result;
  return result;
}

- (void)telephonyActivityNotificationCB_Agent:(id)agent withName:(__CFString *)name
{
  v23 = *MEMORY[0x277D85DE8];
  agentCopy = agent;
  if (name)
  {
    CFRetain(name);
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PLBBAgent_telephonyActivityNotificationCB_Agent_withName___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F3A10 != -1)
    {
      dispatch_once(&qword_2811F3A10, block);
    }

    if (byte_2811F524C == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad name in Tel Act CB"];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent telephonyActivityNotificationCB_Agent:withName:]"];
      [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:11767];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  workQueue = [(PLOperator *)self workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__PLBBAgent_telephonyActivityNotificationCB_Agent_withName___block_invoke_5800;
  v17[3] = &unk_27825CFA0;
  v18 = agentCopy;
  nameCopy = name;
  v17[4] = self;
  v15 = agentCopy;
  dispatch_async(workQueue, v17);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __60__PLBBAgent_telephonyActivityNotificationCB_Agent_withName___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F524C = result;
  return result;
}

void __60__PLBBAgent_telephonyActivityNotificationCB_Agent_withName___block_invoke_5800(uint64_t a1)
{
  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC3D58]))
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) objectForKey:*MEMORY[0x277CC3D50]];
    [v2 setOpName:v3];
LABEL_3:

    goto LABEL_14;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC3A40]))
  {
    v4 = [*(a1 + 40) objectForKey:*MEMORY[0x277CC3A38]];
    v5 = [*(a1 + 32) lastReportedSignal];
    v6 = [v5 integerValue];
    v7 = v6 - [v4 integerValue];
    if (v7 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = -v7;
    }

    if (v8 >= 6)
    {
      [*(a1 + 32) setChanged:1];
    }

    goto LABEL_10;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC3A18]))
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __60__PLBBAgent_telephonyActivityNotificationCB_Agent_withName___block_invoke_2;
    v26[3] = &unk_27825F748;
    v9 = *(a1 + 40);
    v26[4] = *(a1 + 32);
    [v9 enumerateKeysAndObjectsUsingBlock:v26];
LABEL_13:
    [*(a1 + 32) setChanged:1];
    goto LABEL_14;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC3EC8]))
  {
    v12 = *(a1 + 32);
    v3 = [*(a1 + 40) objectForKey:*MEMORY[0x277CC3EC0]];
    [v12 setSimStatus:v3];
    goto LABEL_3;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC3950]))
  {
    goto LABEL_13;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC37E8]))
  {
    [*(a1 + 32) setChanged:1];
    [*(a1 + 32) logEventNoneBBReportBy:5 withAction:3];
    goto LABEL_14;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC37D0]))
  {
    goto LABEL_13;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC3B00]))
  {
    v4 = *(a1 + 40);
    v13 = [v4 objectForKey:*MEMORY[0x277CC3B08]];
    v14 = [v13 intValue];
    v15 = *(a1 + 32);
    v16 = @"Unknown SMS/MMS";
    if (v14 == 2)
    {
      v16 = @"MMS";
    }

    if (v14 == 1)
    {
      v17 = @"SMS";
    }

    else
    {
      v17 = v16;
    }

    v18 = @"Sent";
LABEL_42:
    [v15 logMessage:v17 andState:v18];

LABEL_10:
    goto LABEL_14;
  }

  if (CFEqual(*(a1 + 48), *MEMORY[0x277CC3AF8]))
  {
    v4 = *(a1 + 40);
    v13 = [v4 objectForKey:*MEMORY[0x277CC3B08]];
    v19 = [v13 intValue];
    v15 = *(a1 + 32);
    v20 = @"Unknown SMS/MMS";
    if (v19 == 2)
    {
      v20 = @"MMS";
    }

    if (v19 == 1)
    {
      v17 = @"SMS";
    }

    else
    {
      v17 = v20;
    }

    v18 = @"Received";
    goto LABEL_42;
  }

LABEL_14:
  if ([*(a1 + 32) changed])
  {
    [*(a1 + 32) logTelephonyActivity];
    [*(a1 + 32) setChanged:0];
    v10 = objc_opt_class();
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __60__PLBBAgent_telephonyActivityNotificationCB_Agent_withName___block_invoke_3;
    v24 = &__block_descriptor_40_e5_v8__0lu32l8;
    v25 = v10;
    if (qword_2811F3A18 != -1)
    {
      dispatch_once(&qword_2811F3A18, &v21);
    }

    if (byte_2811F524D == 1)
    {
      [*(a1 + 32) logEventNoneBBReportBy:6 withAction:{4, v21, v22, v23, v24, v25}];
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }
}

void __60__PLBBAgent_telephonyActivityNotificationCB_Agent_withName___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 isEqualToString:*MEMORY[0x277CC3BD0]])
  {
    [*(a1 + 32) setInDCH:v5];
  }

  else if ([v6 isEqualToString:*MEMORY[0x277CC3BD8]])
  {
    [*(a1 + 32) setInUTBF:v5];
  }
}

uint64_t __60__PLBBAgent_telephonyActivityNotificationCB_Agent_withName___block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F524D = result;
  return result;
}

- (void)logTelephonyActivity
{
  v44 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v41 = 0;
  v39 = 0;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__PLBBAgent_logTelephonyActivity__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F3A20 != -1)
    {
      dispatch_once(&qword_2811F3A20, block);
    }

    if (byte_2811F524E == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent logTelephonyActivity]"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logTelephonyActivity]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:11870];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  connection = [(PLBBAgent *)self connection];
  v36 = 0;
  v37 = 0;
  v35 = 0;
  [connection getRAT:&v37 preferredRAT:&v36 campedRAT:&v35];
  v11 = v37;
  v12 = v36;
  v13 = v35;

  connection2 = [(PLBBAgent *)self connection];
  [connection2 getSignalStrength:&v41 asPercentage:&v40 withBars:&v39];

  telActMsgHelper = [(PLBBAgent *)self telActMsgHelper];
  [telActMsgHelper setActiveBand:0];
  humanReadableDataActiveString = [(PLBBAgent *)self humanReadableDataActiveString];
  [telActMsgHelper setDataStatus:humanReadableDataActiveString];

  [telActMsgHelper setCurrentRat:v11];
  [telActMsgHelper setPreferredRat:v12];
  [telActMsgHelper setCampedRat:v13];
  connection3 = [(PLBBAgent *)self connection];
  currentCallStatus = [connection3 currentCallStatus];
  [telActMsgHelper setCallStatus:currentCallStatus];

  [telActMsgHelper setAirplaneMode:airplaneModeCurrent];
  humanReadableSimStatusString = [(PLBBAgent *)self humanReadableSimStatusString];
  [telActMsgHelper setSimStatus:humanReadableSimStatusString];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:v41];
  [telActMsgHelper setSignalStrength:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithInteger:v39];
  [telActMsgHelper setSignalBars:v21];

  v22 = [MEMORY[0x277CCABB0] numberWithLong:v41];
  [(PLBBAgent *)self setLastReportedSignal:v22];

  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    operatorName = [(PLBBAgent *)self operatorName];

    if (operatorName)
    {
      if (![(PLBBAgent *)self changed])
      {
        [(PLBBAgent *)self logOperatorName];
      }
    }

    else
    {
      v24 = *MEMORY[0x277CBECE8];
      v25 = CTRegistrationCopyOperatorName();
      [(PLBBAgent *)self setOperatorName:v25];
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v26 = objc_opt_class();
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __33__PLBBAgent_logTelephonyActivity__block_invoke_5818;
    v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v34[4] = v26;
    if (qword_2811F3A28 != -1)
    {
      dispatch_once(&qword_2811F3A28, v34);
    }

    if (byte_2811F524F == 1)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decoded Telephony activity line"];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent2 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logTelephonyActivity]"];
      [v28 logMessage:v27 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:11918];

      v32 = PLLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v27;
        _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [telActMsgHelper logPointIntervalTelephonyActivity];

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __33__PLBBAgent_logTelephonyActivity__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F524E = result;
  return result;
}

uint64_t __33__PLBBAgent_logTelephonyActivity__block_invoke_5818(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F524F = result;
  return result;
}

- (void)logMessage:(id)message andState:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__PLBBAgent_logMessage_andState___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (qword_2811F3A30 != -1)
    {
      dispatch_once(&qword_2811F3A30, block);
    }

    if (byte_2811F5250 == 1)
    {
      stateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Messages: type=%@ state=%@;", messageCopy, stateCopy];;
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logMessage:andState:]"];
      [v9 logMessage:stateCopy fromFile:lastPathComponent fromFunction:v12 fromLineNumber:11924];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v17 = stateCopy;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __33__PLBBAgent_logMessage_andState___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5250 = result;
  return result;
}

- (void)setOpName:(id)name
{
  nameCopy = name;
  if (([(NSString *)self->_operatorName isEqual:?]& 1) == 0)
  {
    v4 = [nameCopy copy];
    operatorName = self->_operatorName;
    self->_operatorName = v4;

    [(PLBBAgent *)self logOperatorName];
  }
}

- (void)logOperatorName
{
  operatorName = [(PLBBAgent *)self operatorName];
  if (operatorName)
  {
    v5 = operatorName;
    operatorName2 = [(PLBBAgent *)self operatorName];
    [operatorName2 isEqualToString:&stru_282B650A0];

    operatorName = v5;
  }
}

- (id)humanReadableDataActiveString
{
  inDCH = [(PLBBAgent *)self inDCH];
  if (inDCH)
  {
  }

  else
  {
    inUTBF = [(PLBBAgent *)self inUTBF];

    if (!inUTBF)
    {
      return 0;
    }
  }

  inDCH2 = [(PLBBAgent *)self inDCH];
  if ([inDCH2 BOOLValue])
  {
    inUTBF2 = [(PLBBAgent *)self inUTBF];
    bOOLValue = [inUTBF2 BOOLValue];

    if (bOOLValue)
    {
      return @"DCH/UTBF";
    }
  }

  else
  {
  }

  inDCH3 = [(PLBBAgent *)self inDCH];
  bOOLValue2 = [inDCH3 BOOLValue];

  if (bOOLValue2)
  {
    return @"Active";
  }

  inUTBF3 = [(PLBBAgent *)self inUTBF];
  bOOLValue3 = [inUTBF3 BOOLValue];

  if (bOOLValue3)
  {
    return @"UTBF";
  }

  else
  {
    return @"inactive";
  }
}

- (id)humanReadableSimStatusString
{
  simStatus = [(PLBBAgent *)self simStatus];
  if (simStatus && (v4 = simStatus, -[PLBBAgent simStatus](self, "simStatus"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:&stru_282B650A0], v5, v4, (v6 & 1) == 0))
  {
    simStatus2 = [(PLBBAgent *)self simStatus];
    v7 = [simStatus2 substringFromIndex:{objc_msgSend(*MEMORY[0x277CC3EC0], "length")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)processTimeUpdateInfoDict:(id)dict
{
  dictCopy = dict;
  [MEMORY[0x277D3F258] postNotificationName:@"BasebandTimeChangeNotification" object:self userInfo:dictCopy];
  v5 = objc_opt_class();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PLBBAgent_processTimeUpdateInfoDict___block_invoke;
  block[3] = &unk_27825A310;
  v10 = @"Critical";
  v11 = v5;
  if (qword_2811F3A38 != -1)
  {
    dispatch_once(&qword_2811F3A38, block);
  }

  v6 = byte_2811F5251;

  if (v6 == 1)
  {
    v7 = objc_opt_new();
    [v7 setAgent:self];
    [v7 setMsgProcErr:0];
    dictCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"TimeUpdate Dict: %@", dictCopy];
    [v7 setPayload:dictCopy];

    [v7 logEventNoneBBMsgAll];
  }
}

uint64_t __39__PLBBAgent_processTimeUpdateInfoDict___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F5251 = result;
  return result;
}

- (void)refreshRequestHandler
{
  v13 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__PLBBAgent_refreshRequestHandler__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (qword_2811F3A40 != -1)
    {
      dispatch_once(&qword_2811F3A40, block);
    }

    if (byte_2811F5252 == 1)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"refreshRequestHandler not implemented"];
      v4 = MEMORY[0x277D3F178];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v5 lastPathComponent];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent refreshRequestHandler]"];
      [v4 logMessage:v3 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:12020];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v12 = v3;
        _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __34__PLBBAgent_refreshRequestHandler__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5252 = result;
  return result;
}

- (void)logBasebandConfig
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = 0x278257000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__PLBBAgent_logBasebandConfig__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (qword_2811F3A48 != -1)
    {
      dispatch_once(&qword_2811F3A48, block);
    }

    if (byte_2811F5253 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "-[PLBBAgent logBasebandConfig]"];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Radios/PLBBAgent.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBBAgent logBasebandConfig]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:12026];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v3 = 0x278257000uLL;
    }
  }

  v11 = objc_alloc_init(PLBBEurekaEventMsg);
  [(PLBasebandMessage *)v11 setAgent:self];
  [(PLBBEurekaEventMsg *)v11 setEventCode:0];
  [(PLBBEurekaEventMsg *)v11 setError:&stru_282B650A0];
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLBBEurekaEventMsg *)v11 setHeaderWithSeqNum:&unk_282C11D60 andDate:monotonicDate andTimeCal:0.0];

  v13 = 0;
  v25 = *MEMORY[0x277D3F5E0];
  do
  {
    v14 = logBasebandConfig_basebandConfigPropertyKeys[v13];
    connection = [(PLBBAgent *)self connection];
    v16 = [connection getProperty:@"enabled" forTrace:v14];

    if (!v16)
    {
      v16 = @"null";
    }

    connection2 = [(PLBBAgent *)self connection];
    v18 = [connection2 getProperty:@"history" forTrace:v14];

    if (!v18)
    {
      v18 = @"null";
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@)", v16, v18];
    [(PLBBEurekaEventMsg *)v11 addPairWithKey:v14 andWithVal:v19];

    if (([MEMORY[0x277D3F208] isBasebandProto] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isBasebandMav") & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
    {
      v20 = [*(v3 + 2896) entryKeyForType:v25 andName:@"BBMsgLite"];
      v21 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v20];
      [v21 setObject:v14 forKeyedSubscript:@"unit"];
      [v21 setObject:v16 forKeyedSubscript:@"value_enabled"];
      [v21 setObject:v18 forKeyedSubscript:@"value_history"];
      if ([MEMORY[0x277D3F208] isBasebandProto])
      {
        dictionary = [v21 dictionary];
        entryDate = [v21 entryDate];
        [(PLOperator *)self logForSubsystem:@"BasebandMetrics" category:@"MessageLite" data:dictionary date:entryDate];

        v3 = 0x278257000;
      }

      if (([MEMORY[0x277D3F208] isBasebandIce] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandMav"))
      {
        [(PLBBAgent *)self logEntry:v21];
      }
    }

    ++v13;
  }

  while (v13 != 11);
  if (([MEMORY[0x277D3F208] isBasebandMav] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isBasebandIce"))
  {
    [(PLBBEurekaEventMsg *)v11 logEventForwardBBEurekaEventMsgLite];
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __30__PLBBAgent_logBasebandConfig__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F5253 = result;
  return result;
}

@end