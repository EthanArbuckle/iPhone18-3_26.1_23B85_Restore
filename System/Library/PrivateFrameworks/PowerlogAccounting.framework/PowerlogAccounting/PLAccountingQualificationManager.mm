@interface PLAccountingQualificationManager
+ (double)freeTimerInterval;
- (PLAccountingQualificationManagerDelegate)delegate;
- (id)dependencyIDsForOwner:(id)owner;
- (id)ownerIDsForDependency:(id)dependency;
- (void)addEnergyEstimate:(id)estimate withNow:(id)now;
- (void)addQualificationEvent:(id)event;
- (void)closeLastQualificationEventForwardWithQualificationID:(id)d withEndDate:(id)date;
- (void)didQualifyEnergyEvent:(id)event withRootNodeID:(id)d withQualificationID:(id)iD;
- (void)reloadDependenciesNewerThanDate:(id)date;
@end

@implementation PLAccountingQualificationManager

- (PLAccountingQualificationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addEnergyEstimate:(id)estimate withNow:(id)now
{
  estimateCopy = estimate;
  nowCopy = now;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__PLAccountingQualificationManager_addEnergyEstimate_withNow___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (addEnergyEstimate_withNow__defaultOnce != -1)
    {
      dispatch_once(&addEnergyEstimate_withNow__defaultOnce, block);
    }

    if (addEnergyEstimate_withNow__classDebugEnabled == 1)
    {
      nowCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEstimate=%@, now=%@", estimateCopy, nowCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationManager addEnergyEstimate:withNow:]"];
      [v10 logMessage:nowCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:19];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (estimateCopy && nowCopy)
  {
    v15 = [[PLAccountingQualificationOwner alloc] initWithEnergyEstimate:estimateCopy];
    qualificationRuleIDSum = [estimateCopy qualificationRuleIDSum];
    if ([qualificationRuleIDSum longLongValue])
    {
      [estimateCopy terminationRatio];
      v18 = v17;
      [estimateCopy energy];
      v20 = v19;
      [estimateCopy correctionEnergy];
      v22 = v18 * (v20 + v21);
      +[PLAccountingEngine minEnergy];
      v24 = v23;

      if (v22 > v24)
      {
        [(PLAccountingOwnerDependencyManager *)self addOwner:v15];
LABEL_16:
        [(PLAccountingOwnerDependencyManager *)self notifyDependenciesWithOwner:v15];

        goto LABEL_17;
      }
    }

    else
    {
    }

    if ([estimateCopy writeToDB])
    {
      [estimateCopy setQualificationDate:nowCopy];
      delegate = [(PLAccountingQualificationManager *)self delegate];
      [delegate didQualifyEnergyEvent:estimateCopy withRootNodeID:&unk_2870F8138 withQualificationID:&unk_2870F8138];
    }

    goto LABEL_16;
  }

LABEL_17:
}

uint64_t __62__PLAccountingQualificationManager_addEnergyEstimate_withNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addEnergyEstimate_withNow__classDebugEnabled = result;
  return result;
}

- (void)addQualificationEvent:(id)event
{
  eventCopy = event;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLAccountingQualificationManager_addQualificationEvent___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (addQualificationEvent__defaultOnce != -1)
    {
      dispatch_once(&addQualificationEvent__defaultOnce, block);
    }

    if (addQualificationEvent__classDebugEnabled == 1)
    {
      eventCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEvent=%@", eventCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationManager addQualificationEvent:]"];
      [v7 logMessage:eventCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:39];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (eventCopy)
  {
    v12 = [[PLAccountingQualificationDependency alloc] initWithQualificationEvent:eventCopy];
    v13 = +[PLAccountingQualificationRuleManager sharedInstance];
    qualificationID = [eventCopy qualificationID];
    v15 = [v13 qualificationRulesForQualificationID:qualificationID];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __58__PLAccountingQualificationManager_addQualificationEvent___block_invoke_24;
      v23[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v23[4] = v16;
      if (addQualificationEvent__defaultOnce_22 != -1)
      {
        dispatch_once(&addQualificationEvent__defaultOnce_22, v23);
      }

      if (addQualificationEvent__classDebugEnabled_23 == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationRules=%@", v15];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationManager addQualificationEvent:]"];
        [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:46];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    if (v15 && [v15 count])
    {
      [(PLAccountingOwnerDependencyManager *)self addDependency:v12];
    }

    [(PLAccountingOwnerDependencyManager *)self notifyOwnersWithDependency:v12];
  }
}

uint64_t __58__PLAccountingQualificationManager_addQualificationEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addQualificationEvent__classDebugEnabled = result;
  return result;
}

uint64_t __58__PLAccountingQualificationManager_addQualificationEvent___block_invoke_24(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addQualificationEvent__classDebugEnabled_23 = result;
  return result;
}

- (void)closeLastQualificationEventForwardWithQualificationID:(id)d withEndDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__PLAccountingQualificationManager_closeLastQualificationEventForwardWithQualificationID_withEndDate___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (closeLastQualificationEventForwardWithQualificationID_withEndDate__defaultOnce != -1)
    {
      dispatch_once(&closeLastQualificationEventForwardWithQualificationID_withEndDate__defaultOnce, block);
    }

    if (closeLastQualificationEventForwardWithQualificationID_withEndDate__classDebugEnabled == 1)
    {
      dateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationID=%@, endDate=%@", dCopy, dateCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationManager closeLastQualificationEventForwardWithQualificationID:withEndDate:]"];
      [v10 logMessage:dateCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:58];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  intValue = [dCopy intValue];
  if (dateCopy && intValue >= 1)
  {
    v16 = [&unk_2870F8798 objectAtIndexedSubscript:{objc_msgSend(dCopy, "intValue")}];
    intValue2 = [v16 intValue];

    if (intValue2 == 1)
    {
      [(PLAccountingOwnerDependencyManager *)self updateLastDependencyID:dCopy withEndDate:dateCopy];
    }

    else if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v18 = objc_opt_class();
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __102__PLAccountingQualificationManager_closeLastQualificationEventForwardWithQualificationID_withEndDate___block_invoke_41;
      v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v25[4] = v18;
      if (closeLastQualificationEventForwardWithQualificationID_withEndDate__defaultOnce_39 != -1)
      {
        dispatch_once(&closeLastQualificationEventForwardWithQualificationID_withEndDate__defaultOnce_39, v25);
      }

      if (closeLastQualificationEventForwardWithQualificationID_withEndDate__classDebugEnabled_40 == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"directionality=%i not allowed for closing", intValue2];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
        lastPathComponent2 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationManager closeLastQualificationEventForwardWithQualificationID:withEndDate:]"];
        [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:63];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }
  }
}

uint64_t __102__PLAccountingQualificationManager_closeLastQualificationEventForwardWithQualificationID_withEndDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  closeLastQualificationEventForwardWithQualificationID_withEndDate__classDebugEnabled = result;
  return result;
}

uint64_t __102__PLAccountingQualificationManager_closeLastQualificationEventForwardWithQualificationID_withEndDate___block_invoke_41(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  closeLastQualificationEventForwardWithQualificationID_withEndDate__classDebugEnabled_40 = result;
  return result;
}

+ (double)freeTimerInterval
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__PLAccountingQualificationManager_freeTimerInterval__block_invoke;
  v4[3] = &unk_279A55D20;
  v5 = @"PLAccountingQualificationManager_freeTimerInterval";
  v6 = 0x40A5180000000000;
  if (freeTimerInterval_defaultOnce != -1)
  {
    dispatch_once(&freeTimerInterval_defaultOnce, v4);
  }

  v2 = *&freeTimerInterval_objectForKey;

  return v2;
}

uint64_t __53__PLAccountingQualificationManager_freeTimerInterval__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] doubleForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  freeTimerInterval_objectForKey = v2;
  return result;
}

- (void)reloadDependenciesNewerThanDate:(id)date
{
  v118 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v4 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke;
    v113[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v113[4] = v5;
    if (reloadDependenciesNewerThanDate__defaultOnce != -1)
    {
      dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce, v113);
    }

    if (reloadDependenciesNewerThanDate__classDebugEnabled == 1)
    {
      dateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"date=%@", dateCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationManager reloadDependenciesNewerThanDate:]"];
      [v7 logMessage:dateCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:77];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v12 = dateCopy;
  if (dateCopy)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v14 = [dateCopy isEqualToDate:distantFuture];

    v12 = dateCopy;
    if ((v14 & 1) == 0)
    {
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      obj = +[PLAccountingEngine allQualificationIDs];
      v90 = [obj countByEnumeratingWithState:&v109 objects:v117 count:16];
      if (v90)
      {
        v89 = *v110;
        v86 = *MEMORY[0x277D3F460];
        v85 = *MEMORY[0x277D3F450];
        v15 = 0x277CCA000uLL;
        do
        {
          v16 = 0;
          do
          {
            if (*v110 != v89)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v109 + 1) + 8 * v16);
            if ([*(v4 + 384) debugEnabled])
            {
              v18 = objc_opt_class();
              v108[0] = MEMORY[0x277D85DD0];
              v108[1] = 3221225472;
              v108[2] = __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke_54;
              v108[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v108[4] = v18;
              if (reloadDependenciesNewerThanDate__defaultOnce_52 != -1)
              {
                dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_52, v108);
              }

              if (reloadDependenciesNewerThanDate__classDebugEnabled_53 == 1)
              {
                v19 = [*(v15 + 3240) stringWithFormat:@"qualificationID=%@", v17];
                v20 = MEMORY[0x277D3F178];
                v21 = [*(v15 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
                lastPathComponent2 = [v21 lastPathComponent];
                v23 = [*(v15 + 3240) stringWithUTF8String:"-[PLAccountingQualificationManager reloadDependenciesNewerThanDate:]"];
                [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:82];

                v24 = PLLogCommon();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v116 = v19;
                  _os_log_debug_impl(&dword_25EDCD000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }
            }

            if ([*(v4 + 384) debugEnabled])
            {
              v25 = objc_opt_class();
              v107[0] = MEMORY[0x277D85DD0];
              v107[1] = 3221225472;
              v107[2] = __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke_60;
              v107[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v107[4] = v25;
              if (reloadDependenciesNewerThanDate__defaultOnce_58 != -1)
              {
                dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_58, v107);
              }

              if (reloadDependenciesNewerThanDate__classDebugEnabled_59 == 1)
              {
                v26 = [*(v15 + 3240) stringWithFormat:@"PLAccountingQualificationIDDirectionalities=%@", &unk_2870F87B0];
                v27 = MEMORY[0x277D3F178];
                v28 = [*(v15 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
                lastPathComponent3 = [v28 lastPathComponent];
                v30 = [*(v15 + 3240) stringWithUTF8String:"-[PLAccountingQualificationManager reloadDependenciesNewerThanDate:]"];
                [v27 logMessage:v26 fromFile:lastPathComponent3 fromFunction:v30 fromLineNumber:85];

                v31 = PLLogCommon();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v116 = v26;
                  _os_log_debug_impl(&dword_25EDCD000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }
            }

            v32 = [&unk_2870F87C8 objectAtIndexedSubscript:{objc_msgSend(v17, "intValue")}];
            selfCopy = [v32 intValue];

            v96 = selfCopy;
            if ([*(v4 + 384) debugEnabled])
            {
              v34 = objc_opt_class();
              v106[0] = MEMORY[0x277D85DD0];
              v106[1] = 3221225472;
              v106[2] = __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke_72;
              v106[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v106[4] = v34;
              if (reloadDependenciesNewerThanDate__defaultOnce_70 != -1)
              {
                dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_70, v106);
              }

              if (reloadDependenciesNewerThanDate__classDebugEnabled_71 == 1)
              {
                selfCopy = [*(v15 + 3240) stringWithFormat:@"directionality=%i", selfCopy];
                v36 = MEMORY[0x277D3F178];
                v37 = [*(v15 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
                lastPathComponent4 = [v37 lastPathComponent];
                v39 = [*(v15 + 3240) stringWithUTF8String:"-[PLAccountingQualificationManager reloadDependenciesNewerThanDate:]"];
                [v36 logMessage:selfCopy fromFile:lastPathComponent4 fromFunction:v39 fromLineNumber:87];

                v40 = PLLogCommon();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v116 = selfCopy;
                  _os_log_debug_impl(&dword_25EDCD000, v40, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                LODWORD(selfCopy) = v96;
              }
            }

            v41 = 0;
            if (selfCopy > 2)
            {
              if (selfCopy == 3)
              {
                v42 = +[PLAccountingQualificationEventIntervalEntry entryKey];
                v49 = *(v15 + 3240);
                [dateCopy timeIntervalSince1970];
                [v49 stringWithFormat:@"(timestamp+%@) >= %f", v85, v50, v83];
              }

              else
              {
                v42 = 0;
                if (selfCopy != 4)
                {
                  goto LABEL_47;
                }

                v42 = +[PLAccountingQualificationEventPointEntry entryKey];
                v46 = *(v15 + 3240);
                [dateCopy timeIntervalSince1970];
                [v46 stringWithFormat:@"(timestamp+%@) >= %f", v86, v47, v83];
              }
            }

            else
            {
              if (selfCopy == 1)
              {
                v42 = +[PLAccountingQualificationEventForwardEntry entryKey];
                v43 = *(v15 + 3240);
                [dateCopy timeIntervalSince1970];
                v84 = v48;
                v45 = v86;
              }

              else
              {
                v42 = 0;
                if (selfCopy != 2)
                {
                  goto LABEL_47;
                }

                v42 = +[PLAccountingQualificationEventBackwardEntry entryKey];
                v43 = *(v15 + 3240);
                [dateCopy timeIntervalSince1970];
                v84 = v44;
                v45 = v85;
              }

              [v43 stringWithFormat:@"ID >= (SELECT MIN(ID)-1 FROM '%@' WHERE (timestamp+%@) >= %f)", v42, v45, v84];
            }
            v41 = ;
LABEL_47:
            v91 = v41;
            v94 = [*(v15 + 3240) stringWithFormat:@"SELECT * FROM '%@' WHERE (%@)", v42, v41];;
            if ([*(v4 + 384) debugEnabled])
            {
              v51 = objc_opt_class();
              v105[0] = MEMORY[0x277D85DD0];
              v105[1] = 3221225472;
              v105[2] = __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke_91;
              v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v105[4] = v51;
              if (reloadDependenciesNewerThanDate__defaultOnce_89 != -1)
              {
                dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_89, v105);
              }

              if (reloadDependenciesNewerThanDate__classDebugEnabled_90 == 1)
              {
                v52 = [*(v15 + 3240) stringWithFormat:@"qualificationQuery=%@", v94];
                v53 = MEMORY[0x277D3F178];
                v54 = [*(v15 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
                lastPathComponent5 = [v54 lastPathComponent];
                v56 = [*(v15 + 3240) stringWithUTF8String:"-[PLAccountingQualificationManager reloadDependenciesNewerThanDate:]"];
                [v53 logMessage:v52 fromFile:lastPathComponent5 fromFunction:v56 fromLineNumber:116];

                v57 = PLLogCommon();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v116 = v52;
                  _os_log_debug_impl(&dword_25EDCD000, v57, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                LODWORD(selfCopy) = v96;
              }
            }

            mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
            storage = [mEMORY[0x277D3F2A0] storage];
            v60 = [storage entriesForKey:v42 withQuery:v94];

            v93 = v16;
            if ([*(v4 + 384) debugEnabled])
            {
              v61 = objc_opt_class();
              v104[0] = MEMORY[0x277D85DD0];
              v104[1] = 3221225472;
              v104[2] = __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke_98;
              v104[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v104[4] = v61;
              if (reloadDependenciesNewerThanDate__defaultOnce_96 != -1)
              {
                dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_96, v104);
              }

              if (reloadDependenciesNewerThanDate__classDebugEnabled_97 == 1)
              {
                v62 = [*(v15 + 3240) stringWithFormat:@"qualificationEvents=%@", v60];
                v63 = MEMORY[0x277D3F178];
                v64 = [*(v15 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
                lastPathComponent6 = [v64 lastPathComponent];
                v66 = [*(v15 + 3240) stringWithUTF8String:"-[PLAccountingQualificationManager reloadDependenciesNewerThanDate:]"];
                [v63 logMessage:v62 fromFile:lastPathComponent6 fromFunction:v66 fromLineNumber:120];

                v67 = PLLogCommon();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v116 = v62;
                  _os_log_debug_impl(&dword_25EDCD000, v67, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                LODWORD(selfCopy) = v96;
              }
            }

            v92 = v42;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v68 = v60;
            v98 = [v68 countByEnumeratingWithState:&v100 objects:v114 count:16];
            v69 = 0;
            if (v98)
            {
              v97 = *v101;
              v95 = v68;
              do
              {
                v70 = 0;
                do
                {
                  if (*v101 != v97)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v71 = *(*(&v100 + 1) + 8 * v70);
                  if ([*(v4 + 384) debugEnabled])
                  {
                    v72 = objc_opt_class();
                    block[0] = MEMORY[0x277D85DD0];
                    block[1] = 3221225472;
                    block[2] = __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke_104;
                    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                    block[4] = v72;
                    if (reloadDependenciesNewerThanDate__defaultOnce_102 != -1)
                    {
                      dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_102, block);
                    }

                    if (reloadDependenciesNewerThanDate__classDebugEnabled_103 == 1)
                    {
                      v73 = v4;
                      selfCopy = self;
                      v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEvent=%@, lastQualificationEvent=%@", v71, v69];
                      v75 = MEMORY[0x277D3F178];
                      v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
                      lastPathComponent7 = [v76 lastPathComponent];
                      v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationManager reloadDependenciesNewerThanDate:]"];
                      [v75 logMessage:v74 fromFile:lastPathComponent7 fromFunction:v78 fromLineNumber:125];

                      v79 = PLLogCommon();
                      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v116 = v74;
                        _os_log_debug_impl(&dword_25EDCD000, v79, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                      }

                      self = selfCopy;
                      v4 = v73;
                      v68 = v95;
                      LODWORD(selfCopy) = v96;
                    }
                  }

                  if (selfCopy > 2)
                  {
                    if (selfCopy == 3)
                    {
                      delegate = [(PLAccountingQualificationManager *)self delegate];
                      [delegate addQualificationEventInterval:v71];
                    }

                    else
                    {
                      if (selfCopy != 4)
                      {
                        goto LABEL_84;
                      }

                      delegate = [(PLAccountingQualificationManager *)self delegate];
                      [delegate addQualificationEventPoint:v71];
                    }
                  }

                  else
                  {
                    if (selfCopy == 1)
                    {
                      delegate2 = [(PLAccountingQualificationManager *)self delegate];
                      [delegate2 addQualificationEventIntervalWithLastQualificationEventForward:v69 withQualificationEventForward:v71];
                    }

                    else
                    {
                      if (selfCopy != 2)
                      {
                        goto LABEL_84;
                      }

                      delegate2 = [(PLAccountingQualificationManager *)self delegate];
                      [delegate2 addQualificationEventIntervalWithLastQualificationEventBackward:v69 withQualificationEventBackward:v71];
                    }

                    delegate = v69;
                    v69 = v71;
                  }

LABEL_84:
                  ++v70;
                }

                while (v98 != v70);
                v98 = [v68 countByEnumeratingWithState:&v100 objects:v114 count:16];
              }

              while (v98);
            }

            v16 = v93 + 1;
            v15 = 0x277CCA000;
          }

          while (v93 + 1 != v90);
          v90 = [obj countByEnumeratingWithState:&v109 objects:v117 count:16];
        }

        while (v90);
      }

      v12 = dateCopy;
    }
  }

  v82 = *MEMORY[0x277D85DE8];
}

uint64_t __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled = result;
  return result;
}

uint64_t __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke_54(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_53 = result;
  return result;
}

uint64_t __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke_60(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_59 = result;
  return result;
}

uint64_t __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke_72(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_71 = result;
  return result;
}

uint64_t __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke_91(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_90 = result;
  return result;
}

uint64_t __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke_98(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_97 = result;
  return result;
}

uint64_t __68__PLAccountingQualificationManager_reloadDependenciesNewerThanDate___block_invoke_104(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_103 = result;
  return result;
}

- (void)didQualifyEnergyEvent:(id)event withRootNodeID:(id)d withQualificationID:(id)iD
{
  eventCopy = event;
  dCopy = d;
  iDCopy = iD;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __93__PLAccountingQualificationManager_didQualifyEnergyEvent_withRootNodeID_withQualificationID___block_invoke;
    v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v31[4] = v11;
    if (didQualifyEnergyEvent_withRootNodeID_withQualificationID__defaultOnce != -1)
    {
      dispatch_once(&didQualifyEnergyEvent_withRootNodeID_withQualificationID__defaultOnce, v31);
    }

    if (didQualifyEnergyEvent_withRootNodeID_withQualificationID__classDebugEnabled == 1)
    {
      iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationEnergyEvent=%@, rootNodeID=%@, qualificationID=%@", eventCopy, dCopy, iDCopy];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationManager didQualifyEnergyEvent:withRootNodeID:withQualificationID:]"];
      [v13 logMessage:iDCopy fromFile:lastPathComponent fromFunction:v16 fromLineNumber:158];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v18 = PLLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [PLAccountingQualificationManager didQualifyEnergyEvent:withRootNodeID:withQualificationID:];
  }

  range = [eventCopy range];
  endDate = [range endDate];
  v21 = [endDate copy];
  [(PLAccountingQualificationManager *)self setLastQualifiedEnergyEventDate:v21];

  delegate = [(PLAccountingQualificationManager *)self delegate];
  workQueue = [delegate workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__PLAccountingQualificationManager_didQualifyEnergyEvent_withRootNodeID_withQualificationID___block_invoke_111;
  block[3] = &unk_279A55D48;
  block[4] = self;
  v28 = eventCopy;
  v29 = dCopy;
  v30 = iDCopy;
  v24 = iDCopy;
  v25 = dCopy;
  v26 = eventCopy;
  dispatch_async(workQueue, block);
}

uint64_t __93__PLAccountingQualificationManager_didQualifyEnergyEvent_withRootNodeID_withQualificationID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didQualifyEnergyEvent_withRootNodeID_withQualificationID__classDebugEnabled = result;
  return result;
}

void __93__PLAccountingQualificationManager_didQualifyEnergyEvent_withRootNodeID_withQualificationID___block_invoke_111(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didQualifyEnergyEvent:*(a1 + 40) withRootNodeID:*(a1 + 48) withQualificationID:*(a1 + 56)];
}

- (id)dependencyIDsForOwner:(id)owner
{
  v49 = *MEMORY[0x277D85DE8];
  ownerCopy = owner;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLAccountingQualificationManager_dependencyIDsForOwner___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (dependencyIDsForOwner__defaultOnce != -1)
    {
      dispatch_once(&dependencyIDsForOwner__defaultOnce, block);
    }

    if (dependencyIDsForOwner__classDebugEnabled == 1)
    {
      ownerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"owner=%@", ownerCopy];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationManager dependencyIDsForOwner:]"];
      [v6 logMessage:ownerCopy fromFile:lastPathComponent fromFunction:v9 fromLineNumber:170];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (ownerCopy)
  {
    v11 = +[PLAccountingQualificationRuleManager sharedInstance];
    v12 = [ownerCopy ID];
    v13 = [v11 qualificationRulesForRootNodeID:v12];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __58__PLAccountingQualificationManager_dependencyIDsForOwner___block_invoke_117;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v14;
      if (dependencyIDsForOwner__defaultOnce_115 != -1)
      {
        dispatch_once(&dependencyIDsForOwner__defaultOnce_115, v46);
      }

      if (dependencyIDsForOwner__classDebugEnabled_116 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationRules=%@", v13];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
        lastPathComponent2 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationManager dependencyIDsForOwner:]"];
        [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:175];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    if (v13)
    {
      v21 = [MEMORY[0x277CBEB58] set];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v22 = v13;
      v23 = [v22 countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v43;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(v22);
            }

            qualificationID = [*(*(&v42 + 1) + 8 * i) qualificationID];
            [v21 addObject:qualificationID];
          }

          v24 = [v22 countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v24);
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v28 = objc_opt_class();
        v37 = MEMORY[0x277D85DD0];
        v38 = 3221225472;
        v39 = __58__PLAccountingQualificationManager_dependencyIDsForOwner___block_invoke_121;
        v40 = &__block_descriptor_40_e5_v8__0lu32l8;
        v41 = v28;
        if (dependencyIDsForOwner__defaultOnce_119 != -1)
        {
          dispatch_once(&dependencyIDsForOwner__defaultOnce_119, &v37);
        }

        if (dependencyIDsForOwner__classDebugEnabled_120 == 1)
        {
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"qualificationIDs=%@", v21, v37, v38, v39, v40, v41, v42];
          v30 = MEMORY[0x277D3F178];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
          lastPathComponent3 = [v31 lastPathComponent];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationManager dependencyIDsForOwner:]"];
          [v30 logMessage:v29 fromFile:lastPathComponent3 fromFunction:v33 fromLineNumber:182];

          v34 = PLLogCommon();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __58__PLAccountingQualificationManager_dependencyIDsForOwner___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependencyIDsForOwner__classDebugEnabled = result;
  return result;
}

uint64_t __58__PLAccountingQualificationManager_dependencyIDsForOwner___block_invoke_117(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependencyIDsForOwner__classDebugEnabled_116 = result;
  return result;
}

uint64_t __58__PLAccountingQualificationManager_dependencyIDsForOwner___block_invoke_121(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependencyIDsForOwner__classDebugEnabled_120 = result;
  return result;
}

- (id)ownerIDsForDependency:(id)dependency
{
  dependencyCopy = dependency;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __58__PLAccountingQualificationManager_ownerIDsForDependency___block_invoke;
    v16 = &__block_descriptor_40_e5_v8__0lu32l8;
    v17 = v4;
    if (ownerIDsForDependency__defaultOnce != -1)
    {
      dispatch_once(&ownerIDsForDependency__defaultOnce, &block);
    }

    if (ownerIDsForDependency__classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency=%@", dependencyCopy, block, v14, v15, v16, v17];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Qualification/PLAccountingQualificationManager.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingQualificationManager ownerIDsForDependency:]"];
      [v6 logMessage:v5 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:188];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (dependencyCopy)
  {
    v11 = [MEMORY[0x277CBEB58] setWithObject:&unk_2870F8150];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __58__PLAccountingQualificationManager_ownerIDsForDependency___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ownerIDsForDependency__classDebugEnabled = result;
  return result;
}

- (void)didQualifyEnergyEvent:withRootNodeID:withQualificationID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EDCD000, v0, v1, "didQualifyEnergyEvent=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end