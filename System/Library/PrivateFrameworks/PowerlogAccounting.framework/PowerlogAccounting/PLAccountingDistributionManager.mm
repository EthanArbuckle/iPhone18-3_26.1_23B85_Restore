@interface PLAccountingDistributionManager
+ (double)freeTimerInterval;
- (PLAccountingDistributionManager)init;
- (PLAccountingDistributionManagerDelegate)delegate;
- (id)dependencyIDsForOwner:(id)owner;
- (id)ownerIDsForDependency:(id)dependency;
- (void)addDistributionEvent:(id)event;
- (void)addEnergyEstimate:(id)estimate withNow:(id)now;
- (void)closeLastDistributionEventForwardWithDistributionID:(id)d withEndDate:(id)date;
- (void)didDistributeEnergyEstimate:(id)estimate;
- (void)didDistributeToChildEnergyEstimate:(id)estimate fromParentEnergyEstimate:(id)energyEstimate;
- (void)reloadDependenciesNewerThanDate:(id)date;
@end

@implementation PLAccountingDistributionManager

- (PLAccountingDistributionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PLAccountingDistributionManager)init
{
  v3.receiver = self;
  v3.super_class = PLAccountingDistributionManager;
  return [(PLAccountingOwnerDependencyManager *)&v3 init];
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
    block[2] = __61__PLAccountingDistributionManager_addEnergyEstimate_withNow___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (addEnergyEstimate_withNow__defaultOnce_0 != -1)
    {
      dispatch_once(&addEnergyEstimate_withNow__defaultOnce_0, block);
    }

    if (addEnergyEstimate_withNow__classDebugEnabled_0 == 1)
    {
      nowCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEstimate=%@, now=%@", estimateCopy, nowCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager addEnergyEstimate:withNow:]"];
      [v10 logMessage:nowCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:26];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (estimateCopy && nowCopy)
  {
    if ([estimateCopy numAncestors] < 100)
    {
      estimateCopy = [[PLAccountingDistributionOwner alloc] initWithEnergyEstimate:estimateCopy];
      distributionRuleID = [estimateCopy distributionRuleID];
      intValue = [distributionRuleID intValue];

      if (intValue < 1)
      {
        if ([estimateCopy writeToDB])
        {
          [estimateCopy setDistributionDate:nowCopy];
          delegate = [(PLAccountingDistributionManager *)self delegate];
          [delegate didDistributeEnergyEstimate:estimateCopy];
        }
      }

      else
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v23 = objc_opt_class();
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __61__PLAccountingDistributionManager_addEnergyEstimate_withNow___block_invoke_20;
          v31[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v31[4] = v23;
          if (addEnergyEstimate_withNow__defaultOnce_18 != -1)
          {
            dispatch_once(&addEnergyEstimate_withNow__defaultOnce_18, v31);
          }

          if (addEnergyEstimate_withNow__classDebugEnabled_19 == 1)
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"rule exists"];
            v25 = MEMORY[0x277D3F178];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
            lastPathComponent2 = [v26 lastPathComponent];
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager addEnergyEstimate:withNow:]"];
            [v25 logMessage:v24 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:39];

            v29 = PLLogCommon();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        [(PLAccountingOwnerDependencyManager *)self addOwner:estimateCopy];
      }

      [(PLAccountingOwnerDependencyManager *)self notifyDependenciesWithOwner:estimateCopy];
    }

    else
    {
      estimateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: possible accounting distribution loop detected for energyEstimate=%@", estimateCopy];
      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
      lastPathComponent3 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager addEnergyEstimate:withNow:]"];
      [v16 logMessage:estimateCopy fromFile:lastPathComponent3 fromFunction:v19 fromLineNumber:31];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

uint64_t __61__PLAccountingDistributionManager_addEnergyEstimate_withNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addEnergyEstimate_withNow__classDebugEnabled_0 = result;
  return result;
}

uint64_t __61__PLAccountingDistributionManager_addEnergyEstimate_withNow___block_invoke_20(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addEnergyEstimate_withNow__classDebugEnabled_19 = result;
  return result;
}

- (void)addDistributionEvent:(id)event
{
  eventCopy = event;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLAccountingDistributionManager_addDistributionEvent___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (addDistributionEvent__defaultOnce != -1)
    {
      dispatch_once(&addDistributionEvent__defaultOnce, block);
    }

    if (addDistributionEvent__classDebugEnabled == 1)
    {
      eventCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionEvent=%@", eventCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager addDistributionEvent:]"];
      [v7 logMessage:eventCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:52];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (eventCopy)
  {
    v12 = [[PLAccountingDistributionDependency alloc] initWithDistributionEvent:eventCopy];
    v13 = +[PLAccountingDistributionRuleManager sharedInstance];
    distributionID = [eventCopy distributionID];
    v15 = [v13 distributionRulesForDistributionID:distributionID];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __56__PLAccountingDistributionManager_addDistributionEvent___block_invoke_31;
      v23[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v23[4] = v16;
      if (addDistributionEvent__defaultOnce_29 != -1)
      {
        dispatch_once(&addDistributionEvent__defaultOnce_29, v23);
      }

      if (addDistributionEvent__classDebugEnabled_30 == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionRules=%@", v15];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager addDistributionEvent:]"];
        [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:59];

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

uint64_t __56__PLAccountingDistributionManager_addDistributionEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addDistributionEvent__classDebugEnabled = result;
  return result;
}

uint64_t __56__PLAccountingDistributionManager_addDistributionEvent___block_invoke_31(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addDistributionEvent__classDebugEnabled_30 = result;
  return result;
}

- (void)closeLastDistributionEventForwardWithDistributionID:(id)d withEndDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__PLAccountingDistributionManager_closeLastDistributionEventForwardWithDistributionID_withEndDate___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (closeLastDistributionEventForwardWithDistributionID_withEndDate__defaultOnce != -1)
    {
      dispatch_once(&closeLastDistributionEventForwardWithDistributionID_withEndDate__defaultOnce, block);
    }

    if (closeLastDistributionEventForwardWithDistributionID_withEndDate__classDebugEnabled == 1)
    {
      dateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionID=%@, endDate=%@", dCopy, dateCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager closeLastDistributionEventForwardWithDistributionID:withEndDate:]"];
      [v10 logMessage:dateCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:71];

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
    v16 = [&unk_2870F87F8 objectAtIndexedSubscript:{objc_msgSend(dCopy, "intValue")}];
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
      v25[2] = __99__PLAccountingDistributionManager_closeLastDistributionEventForwardWithDistributionID_withEndDate___block_invoke_49;
      v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v25[4] = v18;
      if (closeLastDistributionEventForwardWithDistributionID_withEndDate__defaultOnce_47 != -1)
      {
        dispatch_once(&closeLastDistributionEventForwardWithDistributionID_withEndDate__defaultOnce_47, v25);
      }

      if (closeLastDistributionEventForwardWithDistributionID_withEndDate__classDebugEnabled_48 == 1)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"directionality=%i not allowed for closing", intValue2];
        v20 = MEMORY[0x277D3F178];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
        lastPathComponent2 = [v21 lastPathComponent];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager closeLastDistributionEventForwardWithDistributionID:withEndDate:]"];
        [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:76];

        v24 = PLLogCommon();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }
  }
}

uint64_t __99__PLAccountingDistributionManager_closeLastDistributionEventForwardWithDistributionID_withEndDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  closeLastDistributionEventForwardWithDistributionID_withEndDate__classDebugEnabled = result;
  return result;
}

uint64_t __99__PLAccountingDistributionManager_closeLastDistributionEventForwardWithDistributionID_withEndDate___block_invoke_49(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  closeLastDistributionEventForwardWithDistributionID_withEndDate__classDebugEnabled_48 = result;
  return result;
}

+ (double)freeTimerInterval
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__PLAccountingDistributionManager_freeTimerInterval__block_invoke;
  v4[3] = &unk_279A55D20;
  v5 = @"PLAccountingDistributionManager_freeTimerInterval";
  v6 = 0x409C200000000000;
  if (freeTimerInterval_defaultOnce_0 != -1)
  {
    dispatch_once(&freeTimerInterval_defaultOnce_0, v4);
  }

  v2 = *&freeTimerInterval_objectForKey_0;

  return v2;
}

uint64_t __52__PLAccountingDistributionManager_freeTimerInterval__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] doubleForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  freeTimerInterval_objectForKey_0 = v2;
  return result;
}

- (void)reloadDependenciesNewerThanDate:(id)date
{
  v115 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = 0x277D3F000uLL;
  selfCopy = self;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v110[0] = MEMORY[0x277D85DD0];
    v110[1] = 3221225472;
    v110[2] = __67__PLAccountingDistributionManager_reloadDependenciesNewerThanDate___block_invoke;
    v110[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v110[4] = v6;
    if (reloadDependenciesNewerThanDate__defaultOnce_0 != -1)
    {
      dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_0, v110);
    }

    if (reloadDependenciesNewerThanDate__classDebugEnabled_0 == 1)
    {
      v7 = dateCopy;
      dateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"date=%@", dateCopy];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager reloadDependenciesNewerThanDate:]"];
      [v9 logMessage:dateCopy fromFile:lastPathComponent fromFunction:v12 fromLineNumber:90];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      dateCopy = v7;
      self = selfCopy;
      v5 = 0x277D3F000uLL;
    }
  }

  if (dateCopy)
  {
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v15 = [dateCopy isEqualToDate:distantFuture];

    if ((v15 & 1) == 0)
    {
      v86 = dateCopy;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      obj = +[PLAccountingEngine allDistributionIDs];
      v88 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
      if (!v88)
      {
        goto LABEL_83;
      }

      v87 = *v107;
      v84 = *MEMORY[0x277D3F420];
      v83 = *MEMORY[0x277D3F418];
      v89 = *MEMORY[0x277D3F410];
      v16 = 0x277CCA000uLL;
      while (1)
      {
        v17 = 0;
        do
        {
          if (*v107 != v87)
          {
            objc_enumerationMutation(obj);
          }

          v93 = v17;
          v18 = *(*(&v106 + 1) + 8 * v17);
          if ([*(v5 + 384) debugEnabled])
          {
            v19 = objc_opt_class();
            v105[0] = MEMORY[0x277D85DD0];
            v105[1] = 3221225472;
            v105[2] = __67__PLAccountingDistributionManager_reloadDependenciesNewerThanDate___block_invoke_63;
            v105[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v105[4] = v19;
            if (reloadDependenciesNewerThanDate__defaultOnce_61 != -1)
            {
              dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_61, v105);
            }

            if (reloadDependenciesNewerThanDate__classDebugEnabled_62 == 1)
            {
              v20 = [*(v16 + 3240) stringWithFormat:@"distributionID=%@", v18];
              v21 = MEMORY[0x277D3F178];
              v22 = [*(v16 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
              lastPathComponent2 = [v22 lastPathComponent];
              v24 = [*(v16 + 3240) stringWithUTF8String:"-[PLAccountingDistributionManager reloadDependenciesNewerThanDate:]"];
              [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:95];

              v25 = PLLogCommon();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v113 = v20;
                _os_log_debug_impl(&dword_25EDCD000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v16 = 0x277CCA000uLL;
            }
          }

          v26 = [&unk_2870F8810 objectAtIndexedSubscript:{objc_msgSend(v18, "intValue")}];
          intValue = [v26 intValue];

          if ([*(v5 + 384) debugEnabled])
          {
            v27 = objc_opt_class();
            v104[0] = MEMORY[0x277D85DD0];
            v104[1] = 3221225472;
            v104[2] = __67__PLAccountingDistributionManager_reloadDependenciesNewerThanDate___block_invoke_72;
            v104[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v104[4] = v27;
            if (reloadDependenciesNewerThanDate__defaultOnce_70_0 != -1)
            {
              dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_70_0, v104);
            }

            if (reloadDependenciesNewerThanDate__classDebugEnabled_71_0 == 1)
            {
              v28 = [*(v16 + 3240) stringWithFormat:@"directionality=%i", intValue];
              v29 = MEMORY[0x277D3F178];
              v30 = [*(v16 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
              lastPathComponent3 = [v30 lastPathComponent];
              v32 = [*(v16 + 3240) stringWithUTF8String:"-[PLAccountingDistributionManager reloadDependenciesNewerThanDate:]"];
              [v29 logMessage:v28 fromFile:lastPathComponent3 fromFunction:v32 fromLineNumber:99];

              v33 = PLLogCommon();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v113 = v28;
                _os_log_debug_impl(&dword_25EDCD000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          v34 = 0;
          if (intValue > 2)
          {
            if (intValue == 3)
            {
              v35 = +[PLAccountingDistributionEventIntervalEntry entryKey];
              v42 = *(v16 + 3240);
              [v86 timeIntervalSince1970];
              [v42 stringWithFormat:@"(timestamp+%@) >= %f", v83, v43, v79, v80, v81];
              goto LABEL_39;
            }

            v35 = 0;
            if (intValue == 4)
            {
              v35 = +[PLAccountingDistributionEventPointEntry entryKey];
              v39 = *(v16 + 3240);
              [v86 timeIntervalSince1970];
              [v39 stringWithFormat:@"(timestamp+%@) >= %f", v84, v40, v79, v80, v81];
              v34 = LABEL_39:;
            }
          }

          else
          {
            if (intValue == 1)
            {
              v35 = +[PLAccountingDistributionEventForwardEntry entryKey];
              v36 = *(v16 + 3240);
              [v86 timeIntervalSince1970];
              v82 = v41;
              v38 = v84;
              goto LABEL_37;
            }

            v35 = 0;
            if (intValue == 2)
            {
              v35 = +[PLAccountingDistributionEventBackwardEntry entryKey];
              v36 = *(v16 + 3240);
              [v86 timeIntervalSince1970];
              v82 = v37;
              v38 = v83;
LABEL_37:
              [v36 stringWithFormat:@"ID >= (SELECT MIN(ID)-1 FROM '%@' WHERE (%@ = %@ AND (timestamp+%@) >= %f))", v35, v89, v18, v38, v82];
              goto LABEL_39;
            }
          }

          v91 = v34;
          v79 = v18;
          v80 = v34;
          v44 = [*(v16 + 3240) stringWithFormat:@"SELECT * FROM '%@' WHERE (%@ = %@ AND (%@))", v35, v89];;
          if ([*(v5 + 384) debugEnabled])
          {
            v45 = objc_opt_class();
            v103[0] = MEMORY[0x277D85DD0];
            v103[1] = 3221225472;
            v103[2] = __67__PLAccountingDistributionManager_reloadDependenciesNewerThanDate___block_invoke_91;
            v103[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v103[4] = v45;
            if (reloadDependenciesNewerThanDate__defaultOnce_89_0 != -1)
            {
              dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_89_0, v103);
            }

            if (reloadDependenciesNewerThanDate__classDebugEnabled_90_0 == 1)
            {
              v46 = [*(v16 + 3240) stringWithFormat:@"distributionQuery=%@", v44];
              v47 = MEMORY[0x277D3F178];
              v48 = [*(v16 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
              lastPathComponent4 = [v48 lastPathComponent];
              v50 = [*(v16 + 3240) stringWithUTF8String:"-[PLAccountingDistributionManager reloadDependenciesNewerThanDate:]"];
              [v47 logMessage:v46 fromFile:lastPathComponent4 fromFunction:v50 fromLineNumber:128];

              v51 = PLLogCommon();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v113 = v46;
                _os_log_debug_impl(&dword_25EDCD000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
          storage = [mEMORY[0x277D3F2A0] storage];
          v54 = [storage entriesForKey:v35 withQuery:v44];

          v90 = v44;
          if ([*(v5 + 384) debugEnabled])
          {
            v55 = objc_opt_class();
            v102[0] = MEMORY[0x277D85DD0];
            v102[1] = 3221225472;
            v102[2] = __67__PLAccountingDistributionManager_reloadDependenciesNewerThanDate___block_invoke_98;
            v102[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v102[4] = v55;
            if (reloadDependenciesNewerThanDate__defaultOnce_96_0 != -1)
            {
              dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_96_0, v102);
            }

            if (reloadDependenciesNewerThanDate__classDebugEnabled_97_0 == 1)
            {
              v56 = [*(v16 + 3240) stringWithFormat:@"distributionEvents=%@", v54];
              v57 = MEMORY[0x277D3F178];
              v58 = [*(v16 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
              lastPathComponent5 = [v58 lastPathComponent];
              v60 = [*(v16 + 3240) stringWithUTF8String:"-[PLAccountingDistributionManager reloadDependenciesNewerThanDate:]"];
              [v57 logMessage:v56 fromFile:lastPathComponent5 fromFunction:v60 fromLineNumber:132];

              v61 = PLLogCommon();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v113 = v56;
                _os_log_debug_impl(&dword_25EDCD000, v61, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          v92 = v35;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v95 = v54;
          v62 = [v95 countByEnumeratingWithState:&v98 objects:v111 count:16];
          if (!v62)
          {
            v64 = 0;
            goto LABEL_81;
          }

          v63 = v62;
          v64 = 0;
          v65 = *v99;
          v66 = intValue;
          do
          {
            v67 = 0;
            do
            {
              if (*v99 != v65)
              {
                objc_enumerationMutation(v95);
              }

              v68 = *(*(&v98 + 1) + 8 * v67);
              if ([*(v5 + 384) debugEnabled])
              {
                v69 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __67__PLAccountingDistributionManager_reloadDependenciesNewerThanDate___block_invoke_104;
                block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                block[4] = v69;
                if (reloadDependenciesNewerThanDate__defaultOnce_102_0 != -1)
                {
                  dispatch_once(&reloadDependenciesNewerThanDate__defaultOnce_102_0, block);
                }

                if (reloadDependenciesNewerThanDate__classDebugEnabled_103_0 == 1)
                {
                  v70 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionEvent=%@, lastDistributionEvent=%@", v68, v64];
                  v71 = MEMORY[0x277D3F178];
                  v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
                  lastPathComponent6 = [v72 lastPathComponent];
                  v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager reloadDependenciesNewerThanDate:]"];
                  [v71 logMessage:v70 fromFile:lastPathComponent6 fromFunction:v74 fromLineNumber:137];

                  v75 = PLLogCommon();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v113 = v70;
                    _os_log_debug_impl(&dword_25EDCD000, v75, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  self = selfCopy;
                  v5 = 0x277D3F000;
                  v66 = intValue;
                }
              }

              if (v66 > 2)
              {
                if (v66 == 3)
                {
                  delegate = [(PLAccountingDistributionManager *)self delegate];
                  [delegate addDistributionEventInterval:v68];
                }

                else
                {
                  if (v66 != 4)
                  {
                    goto LABEL_77;
                  }

                  delegate = [(PLAccountingDistributionManager *)self delegate];
                  [delegate addDistributionEventPoint:v68];
                }
              }

              else
              {
                if (v66 == 1)
                {
                  delegate2 = [(PLAccountingDistributionManager *)self delegate];
                  [delegate2 addDistributionEventIntervalWithLastDistributionEventForward:v64 withDistributionEventForward:v68];
                }

                else
                {
                  if (v66 != 2)
                  {
                    goto LABEL_77;
                  }

                  delegate2 = [(PLAccountingDistributionManager *)self delegate];
                  [delegate2 addDistributionEventIntervalWithLastDistributionEventBackward:v64 withDistributionEventBackward:v68];
                }

                v66 = intValue;
                delegate = v64;
                v64 = v68;
              }

LABEL_77:
              ++v67;
            }

            while (v63 != v67);
            v63 = [v95 countByEnumeratingWithState:&v98 objects:v111 count:16];
          }

          while (v63);
LABEL_81:

          v17 = v93 + 1;
          v16 = 0x277CCA000;
        }

        while (v93 + 1 != v88);
        v88 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
        if (!v88)
        {
LABEL_83:

          dateCopy = v86;
          break;
        }
      }
    }
  }

  v78 = *MEMORY[0x277D85DE8];
}

uint64_t __67__PLAccountingDistributionManager_reloadDependenciesNewerThanDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_0 = result;
  return result;
}

uint64_t __67__PLAccountingDistributionManager_reloadDependenciesNewerThanDate___block_invoke_63(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_62 = result;
  return result;
}

uint64_t __67__PLAccountingDistributionManager_reloadDependenciesNewerThanDate___block_invoke_72(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_71_0 = result;
  return result;
}

uint64_t __67__PLAccountingDistributionManager_reloadDependenciesNewerThanDate___block_invoke_91(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_90_0 = result;
  return result;
}

uint64_t __67__PLAccountingDistributionManager_reloadDependenciesNewerThanDate___block_invoke_98(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_97_0 = result;
  return result;
}

uint64_t __67__PLAccountingDistributionManager_reloadDependenciesNewerThanDate___block_invoke_104(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reloadDependenciesNewerThanDate__classDebugEnabled_103_0 = result;
  return result;
}

- (void)didDistributeToChildEnergyEstimate:(id)estimate fromParentEnergyEstimate:(id)energyEstimate
{
  estimateCopy = estimate;
  energyEstimateCopy = energyEstimate;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __95__PLAccountingDistributionManager_didDistributeToChildEnergyEstimate_fromParentEnergyEstimate___block_invoke;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v8;
    if (didDistributeToChildEnergyEstimate_fromParentEnergyEstimate__defaultOnce != -1)
    {
      dispatch_once(&didDistributeToChildEnergyEstimate_fromParentEnergyEstimate__defaultOnce, v22);
    }

    if (didDistributeToChildEnergyEstimate_fromParentEnergyEstimate__classDebugEnabled == 1)
    {
      energyEstimateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"childEnergyEstimate=%@, parentEnergyEstimate=%@", estimateCopy, energyEstimateCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager didDistributeToChildEnergyEstimate:fromParentEnergyEstimate:]"];
      [v10 logMessage:energyEstimateCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:169];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  delegate = [(PLAccountingDistributionManager *)self delegate];
  workQueue = [delegate workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__PLAccountingDistributionManager_didDistributeToChildEnergyEstimate_fromParentEnergyEstimate___block_invoke_111;
  block[3] = &unk_279A55D98;
  block[4] = self;
  v20 = estimateCopy;
  v21 = energyEstimateCopy;
  v17 = energyEstimateCopy;
  v18 = estimateCopy;
  dispatch_async(workQueue, block);
}

uint64_t __95__PLAccountingDistributionManager_didDistributeToChildEnergyEstimate_fromParentEnergyEstimate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didDistributeToChildEnergyEstimate_fromParentEnergyEstimate__classDebugEnabled = result;
  return result;
}

void __95__PLAccountingDistributionManager_didDistributeToChildEnergyEstimate_fromParentEnergyEstimate___block_invoke_111(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didCreateChildEnergyEstimate:*(a1 + 40) withParentEnergyEstimate:*(a1 + 48)];
}

- (void)didDistributeEnergyEstimate:(id)estimate
{
  estimateCopy = estimate;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__PLAccountingDistributionManager_didDistributeEnergyEstimate___block_invoke;
    v17[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v17[4] = v5;
    if (didDistributeEnergyEstimate__defaultOnce != -1)
    {
      dispatch_once(&didDistributeEnergyEstimate__defaultOnce, v17);
    }

    if (didDistributeEnergyEstimate__classDebugEnabled == 1)
    {
      estimateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEstimate=%@", estimateCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager didDistributeEnergyEstimate:]"];
      [v7 logMessage:estimateCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:177];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  delegate = [(PLAccountingDistributionManager *)self delegate];
  workQueue = [delegate workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PLAccountingDistributionManager_didDistributeEnergyEstimate___block_invoke_115;
  block[3] = &unk_279A55DC0;
  block[4] = self;
  v16 = estimateCopy;
  v14 = estimateCopy;
  dispatch_async(workQueue, block);
}

uint64_t __63__PLAccountingDistributionManager_didDistributeEnergyEstimate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didDistributeEnergyEstimate__classDebugEnabled = result;
  return result;
}

void __63__PLAccountingDistributionManager_didDistributeEnergyEstimate___block_invoke_115(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didDistributeEnergyEstimate:*(a1 + 40)];
}

- (id)dependencyIDsForOwner:(id)owner
{
  ownerCopy = owner;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PLAccountingDistributionManager_dependencyIDsForOwner___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (dependencyIDsForOwner__defaultOnce_0 != -1)
    {
      dispatch_once(&dependencyIDsForOwner__defaultOnce_0, block);
    }

    if (dependencyIDsForOwner__classDebugEnabled_0 == 1)
    {
      ownerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"owner=%@", ownerCopy];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager dependencyIDsForOwner:]"];
      [v6 logMessage:ownerCopy fromFile:lastPathComponent fromFunction:v9 fromLineNumber:185];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (ownerCopy)
  {
    v11 = +[PLAccountingDistributionRuleManager sharedInstance];
    v12 = [ownerCopy ID];
    v13 = [v11 ruleForRuleID:v12];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __57__PLAccountingDistributionManager_dependencyIDsForOwner___block_invoke_121;
      v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v25[4] = v14;
      if (dependencyIDsForOwner__defaultOnce_119_0 != -1)
      {
        dispatch_once(&dependencyIDsForOwner__defaultOnce_119_0, v25);
      }

      if (dependencyIDsForOwner__classDebugEnabled_120_0 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionRule=%@", v13];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
        lastPathComponent2 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager dependencyIDsForOwner:]"];
        [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:189];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    if (v13)
    {
      v21 = MEMORY[0x277CBEB58];
      distributionID = [v13 distributionID];
      v23 = [v21 setWithObject:distributionID];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

uint64_t __57__PLAccountingDistributionManager_dependencyIDsForOwner___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependencyIDsForOwner__classDebugEnabled_0 = result;
  return result;
}

uint64_t __57__PLAccountingDistributionManager_dependencyIDsForOwner___block_invoke_121(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependencyIDsForOwner__classDebugEnabled_120_0 = result;
  return result;
}

- (id)ownerIDsForDependency:(id)dependency
{
  v49 = *MEMORY[0x277D85DE8];
  dependencyCopy = dependency;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PLAccountingDistributionManager_ownerIDsForDependency___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (ownerIDsForDependency__defaultOnce_0 != -1)
    {
      dispatch_once(&ownerIDsForDependency__defaultOnce_0, block);
    }

    if (ownerIDsForDependency__classDebugEnabled_0 == 1)
    {
      dependencyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency=%@", dependencyCopy];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager ownerIDsForDependency:]"];
      [v6 logMessage:dependencyCopy fromFile:lastPathComponent fromFunction:v9 fromLineNumber:197];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (dependencyCopy)
  {
    v11 = +[PLAccountingDistributionRuleManager sharedInstance];
    v12 = [dependencyCopy ID];
    v13 = [v11 distributionRulesForDistributionID:v12];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v14 = objc_opt_class();
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __57__PLAccountingDistributionManager_ownerIDsForDependency___block_invoke_131;
      v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v46[4] = v14;
      if (ownerIDsForDependency__defaultOnce_129 != -1)
      {
        dispatch_once(&ownerIDsForDependency__defaultOnce_129, v46);
      }

      if (ownerIDsForDependency__classDebugEnabled_130 == 1)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionRules=%@", v13];
        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
        lastPathComponent2 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager ownerIDsForDependency:]"];
        [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:202];

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

            v27 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v42 + 1) + 8 * i), "entryID")}];
            [v21 addObject:v27];
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
        v39 = __57__PLAccountingDistributionManager_ownerIDsForDependency___block_invoke_135;
        v40 = &__block_descriptor_40_e5_v8__0lu32l8;
        v41 = v28;
        if (ownerIDsForDependency__defaultOnce_133 != -1)
        {
          dispatch_once(&ownerIDsForDependency__defaultOnce_133, &v37);
        }

        if (ownerIDsForDependency__classDebugEnabled_134 == 1)
        {
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionRuleIDs=%@", v21, v37, v38, v39, v40, v41, v42];
          v30 = MEMORY[0x277D3F178];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Distribution/PLAccountingDistributionManager.m"];
          lastPathComponent3 = [v31 lastPathComponent];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionManager ownerIDsForDependency:]"];
          [v30 logMessage:v29 fromFile:lastPathComponent3 fromFunction:v33 fromLineNumber:209];

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

uint64_t __57__PLAccountingDistributionManager_ownerIDsForDependency___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ownerIDsForDependency__classDebugEnabled_0 = result;
  return result;
}

uint64_t __57__PLAccountingDistributionManager_ownerIDsForDependency___block_invoke_131(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ownerIDsForDependency__classDebugEnabled_130 = result;
  return result;
}

uint64_t __57__PLAccountingDistributionManager_ownerIDsForDependency___block_invoke_135(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ownerIDsForDependency__classDebugEnabled_134 = result;
  return result;
}

@end