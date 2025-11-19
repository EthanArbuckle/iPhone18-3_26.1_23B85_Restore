@interface PLAccountingOwnerDependencyManager
- (PLAccountingOwnerDependencyManager)init;
- (id)_lastDependencyForDependencyID:(id)a3;
- (id)dependenciesWithDependencyID:(id)a3 withRange:(id)a4;
- (id)lastDependencyForDependencyID:(id)a3;
- (id)lastOwnerForOwnerID:(id)a3;
- (void)addDependency:(id)a3;
- (void)addOwner:(id)a3;
- (void)canFreeDependency:(id)a3;
- (void)canFreeOwner:(id)a3;
- (void)freeExpiredDependenciesAtNow:(id)a3;
- (void)freeExpiredOwnersAtNow:(id)a3;
- (void)notifyDependenciesWithOwner:(id)a3;
- (void)notifyOwnersWithDependency:(id)a3;
- (void)startObservingDependencyID:(id)a3 forOwner:(id)a4;
- (void)startObservingOwnerID:(id)a3 forDependency:(id)a4;
- (void)stopObservingDependencyID:(id)a3 forOwner:(id)a4;
- (void)stopObservingOwnerID:(id)a3 forDependency:(id)a4;
- (void)updateLastDependencyID:(id)a3 withEndDate:(id)a4;
@end

@implementation PLAccountingOwnerDependencyManager

void __42__PLAccountingOwnerDependencyManager_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) freeExpiredOwnersAtNow:v2];
  [*(a1 + 32) freeExpiredDependenciesAtNow:v2];
}

- (PLAccountingOwnerDependencyManager)init
{
  v41.receiver = self;
  v41.super_class = PLAccountingOwnerDependencyManager;
  v2 = [(PLAccountingOwnerDependencyManager *)&v41 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    dependencyIDToObservingOwners = v2->_dependencyIDToObservingOwners;
    v2->_dependencyIDToObservingOwners = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    dependencyIDToDependencies = v2->_dependencyIDToDependencies;
    v2->_dependencyIDToDependencies = v7;

    v2->_numDependencies = 0;
    v9 = [MEMORY[0x277CBEB38] dictionary];
    ownerIDToObservingDependencies = v2->_ownerIDToObservingDependencies;
    v2->_ownerIDToObservingDependencies = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    ownerIDToLastOwner = v2->_ownerIDToLastOwner;
    v2->_ownerIDToLastOwner = v11;

    v13 = [MEMORY[0x277CBEB58] set];
    ownersRepository = v2->_ownersRepository;
    v2->_ownersRepository = v13;

    v15 = objc_alloc(MEMORY[0x277D3F250]);
    v16 = MEMORY[0x277CBEAA8];
    [objc_opt_class() freeTimerInterval];
    v18 = [v16 dateWithTimeIntervalSinceNow:v17 * 0.25];
    [objc_opt_class() freeTimerInterval];
    v20 = v19 * 0.25;
    v21 = [(PLAccountingOwnerDependencyManager *)v2 workQueue];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __42__PLAccountingOwnerDependencyManager_init__block_invoke;
    v39[3] = &unk_279A56068;
    v22 = v2;
    v40 = v22;
    v23 = [v15 initWithFireDate:v18 withInterval:1 withTolerance:0 repeats:v21 withUserInfo:v39 withQueue:v20 withBlock:0.0];
    freeTimer = v22->_freeTimer;
    v22->_freeTimer = v23;

    v25 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __42__PLAccountingOwnerDependencyManager_init__block_invoke_2;
    v36 = &unk_279A55D70;
    v37 = @"free";
    v38 = v25;
    if (init_defaultOnce != -1)
    {
      dispatch_once(&init_defaultOnce, &block);
    }

    v26 = init_classDebugEnabled;

    if (v26 == 1)
    {
      v27 = MEMORY[0x277CCACA8];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v27 stringWithFormat:@"com.apple.powerlogd.%@.testFree", v29, block, v34, v35, v36];

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v22, testFree, v30, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return v2;
}

uint64_t __42__PLAccountingOwnerDependencyManager_init__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  init_classDebugEnabled = result;
  return result;
}

- (void)addOwner:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingOwnerDependencyManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke;
  v7[3] = &unk_279A55DC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(v5, v7);
}

void __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_0, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_0 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"owner=%@", *(a1 + 40)];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addOwner:]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:71];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (*(a1 + 40))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_29;
      v79[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v79[4] = v11;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_27 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_27, v79);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_28 == 1)
      {
        v12 = MEMORY[0x277CCACA8];
        v13 = [*(a1 + 40) ID];
        v14 = [v12 stringWithFormat:@"owner.ID=%@", v13];

        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v17 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addOwner:]_block_invoke_2"];
        [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:74];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    v20 = [*(a1 + 32) ownersRepository];
    [v20 addObject:*(a1 + 40)];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v21 = *(a1 + 32);
      v22 = objc_opt_class();
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_36;
      v78[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v78[4] = v22;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_34 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_34, v78);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_35 == 1)
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = [*(a1 + 32) ownersRepository];
        v25 = [v23 stringWithFormat:@"ownersRepository=%@", v24];

        v26 = MEMORY[0x277D3F178];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v28 = [v27 lastPathComponent];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addOwner:]_block_invoke_2"];
        [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:78];

        v30 = PLLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    v31 = *(a1 + 40);
    v32 = [*(a1 + 32) ownerIDToLastOwner];
    v33 = [*(a1 + 40) ID];
    [v32 setObject:v31 forKeyedSubscript:v33];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v34 = *(a1 + 32);
      v35 = objc_opt_class();
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_42;
      v77[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v77[4] = v35;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_40 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_40, v77);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_41 == 1)
      {
        v36 = MEMORY[0x277CCACA8];
        v37 = [*(a1 + 32) ownerIDToLastOwner];
        v38 = [v36 stringWithFormat:@"ownerIDToLastOwner=%@", v37];

        v39 = MEMORY[0x277D3F178];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v41 = [v40 lastPathComponent];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addOwner:]_block_invoke_2"];
        [v39 logMessage:v38 fromFile:v41 fromFunction:v42 fromLineNumber:82];

        v43 = PLLogCommon();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    [*(a1 + 40) setManager:*(a1 + 32)];
    [*(a1 + 40) activate];
    v44 = [*(a1 + 32) ownersRepository];
    v45 = [v44 count];
    v46 = *(a1 + 32);
    v47 = [objc_opt_class() maxOwners];

    if (v45 > v47)
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v48 = [*(a1 + 32) ownersRepository];
      v49 = [v48 countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = 0;
        v52 = *v74;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v74 != v52)
            {
              objc_enumerationMutation(v48);
            }

            v54 = *(*(&v73 + 1) + 8 * i);
            if (!v51)
            {
              goto LABEL_38;
            }

            v55 = [*(*(&v73 + 1) + 8 * i) activationDate];
            v56 = [v51 activationDate];
            [v55 timeIntervalSinceDate:v56];
            v58 = v57;

            if (v58 < 0.0)
            {
LABEL_38:
              v59 = v54;

              v51 = v59;
            }
          }

          v50 = [v48 countByEnumeratingWithState:&v73 objects:v81 count:16];
        }

        while (v50);
      }

      else
      {
        v51 = 0;
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v60 = *(a1 + 32);
        v61 = objc_opt_class();
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_48;
        v70[3] = &unk_279A55D70;
        v71 = @"free";
        v72 = v61;
        if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_46 != -1)
        {
          dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_46, v70);
        }

        v62 = PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_47;

        if (v62 == 1)
        {
          v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"freeing owner=%@", v51];
          v64 = MEMORY[0x277D3F178];
          v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
          v66 = [v65 lastPathComponent];
          v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addOwner:]_block_invoke_2"];
          [v64 logMessage:v63 fromFile:v66 fromFunction:v67 fromLineNumber:96];

          v68 = PLLogCommon();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      [v51 deactivate];
    }
  }

  v69 = *MEMORY[0x277D85DE8];
}

uint64_t __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_0 = result;
  return result;
}

uint64_t __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_29(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_28 = result;
  return result;
}

uint64_t __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_36(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_35 = result;
  return result;
}

uint64_t __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_42(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_41 = result;
  return result;
}

uint64_t __47__PLAccountingOwnerDependencyManager_addOwner___block_invoke_48(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_47 = result;
  return result;
}

- (void)notifyDependenciesWithOwner:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingOwnerDependencyManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__PLAccountingOwnerDependencyManager_notifyDependenciesWithOwner___block_invoke;
  v7[3] = &unk_279A55DC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(v5, v7);
}

void __66__PLAccountingOwnerDependencyManager_notifyDependenciesWithOwner___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__PLAccountingOwnerDependencyManager_notifyDependenciesWithOwner___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_0, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_0 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"owner=%@", *(a1 + 40)];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager notifyDependenciesWithOwner:]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:104];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (*(a1 + 40))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __66__PLAccountingOwnerDependencyManager_notifyDependenciesWithOwner___block_invoke_54;
      v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v33[4] = v11;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_52 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_2_defaultOnce_52, v33);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_53 == 1)
      {
        v12 = MEMORY[0x277CCACA8];
        v13 = [*(a1 + 32) ownerIDToObservingDependencies];
        v14 = [v12 stringWithFormat:@"ownerIDToObservingDependencies=%@", v13];

        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v17 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager notifyDependenciesWithOwner:]_block_invoke_2"];
        [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:108];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = [*(a1 + 32) ownerIDToObservingDependencies];
    v21 = [*(a1 + 40) ID];
    v22 = [v20 objectForKeyedSubscript:v21];
    v23 = [v22 copy];

    v24 = [v23 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v30;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v29 + 1) + 8 * i) didReceiveOwner:*(a1 + 40)];
        }

        v25 = [v23 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v25);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __66__PLAccountingOwnerDependencyManager_notifyDependenciesWithOwner___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_0 = result;
  return result;
}

uint64_t __66__PLAccountingOwnerDependencyManager_notifyDependenciesWithOwner___block_invoke_54(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_2_classDebugEnabled_53 = result;
  return result;
}

- (void)addDependency:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingOwnerDependencyManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke;
  v7[3] = &unk_279A55DC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(v5, v7);
}

void __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke(uint64_t a1)
{
  v102 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_0, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_0 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency=%@", *(a1 + 40)];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addDependency:]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:117];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (*(a1 + 40))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_64;
      v98[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v98[4] = v11;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_62 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_62, v98);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_63 == 1)
      {
        v12 = MEMORY[0x277CCACA8];
        v13 = [*(a1 + 40) ID];
        v14 = [v12 stringWithFormat:@"dependency.ID=%@", v13];

        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v17 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addDependency:]_block_invoke_2"];
        [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:120];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    v20 = [*(a1 + 32) dependencyIDToDependencies];
    v21 = [*(a1 + 40) ID];
    v22 = [v20 objectForKeyedSubscript:v21];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v23 = *(a1 + 32);
      v24 = objc_opt_class();
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_71;
      v97[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v97[4] = v24;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_69 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_69, v97);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_70 == 1)
      {
        v25 = v22;
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"before dependencies=%@", v22];
        v27 = MEMORY[0x277D3F178];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v29 = [v28 lastPathComponent];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addDependency:]_block_invoke_2"];
        [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:124];

        v31 = PLLogCommon();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        v22 = v25;
      }
    }

    if (!v22)
    {
      v22 = [MEMORY[0x277CBEB18] array];
      v32 = [*(a1 + 32) dependencyIDToDependencies];
      v33 = [*(a1 + 40) ID];
      [v32 setObject:v22 forKeyedSubscript:v33];
    }

    [v22 addObject:*(a1 + 40)];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v34 = *(a1 + 32);
      v35 = objc_opt_class();
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_78;
      v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v96[4] = v35;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_76 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_76, v96);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_77 == 1)
      {
        v36 = v22;
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"after dependencies=%@", v22];
        v38 = MEMORY[0x277D3F178];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v40 = [v39 lastPathComponent];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addDependency:]_block_invoke_2"];
        [v38 logMessage:v37 fromFile:v40 fromFunction:v41 fromLineNumber:130];

        v42 = PLLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        v22 = v36;
      }
    }

    [*(a1 + 40) setManager:*(a1 + 32)];
    [*(a1 + 40) activate];
    v43 = *(a1 + 32);
    v44 = [v43 numDependencies];
    [v43 setNumDependencies:(v44 + 1)];
    v45 = *(a1 + 32);
    if (v44 >= [objc_opt_class() maxDependencies])
    {
      v76 = a1;
      v77 = v22;
      [*(a1 + 32) dependencyIDToDependencies];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v80 = v95 = 0u;
      obj = [v80 allKeys];
      v81 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
      v46 = 0;
      if (!v81)
      {
        goto LABEL_55;
      }

      v79 = *v93;
      v47 = 0x277CBE000uLL;
      while (1)
      {
        v48 = 0;
        do
        {
          if (*v93 != v79)
          {
            objc_enumerationMutation(obj);
          }

          v82 = v48;
          v49 = *(*(&v92 + 1) + 8 * v48);
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v50 = [v80 objectForKeyedSubscript:v49];
          v51 = [v50 copy];

          v84 = v51;
          v52 = [v51 countByEnumeratingWithState:&v88 objects:v100 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v89;
            v83 = *v89;
            do
            {
              for (i = 0; i != v53; ++i)
              {
                if (*v89 != v54)
                {
                  objc_enumerationMutation(v84);
                }

                v56 = *(*(&v88 + 1) + 8 * i);
                v57 = [v56 range];
                v58 = [v57 endDate];
                v59 = [*(v47 + 2728) distantFuture];
                if ([v58 isEqualToDate:v59])
                {

                  goto LABEL_50;
                }

                if (!v46)
                {

LABEL_49:
                  v57 = v46;
                  v46 = v56;
LABEL_50:

                  continue;
                }

                v60 = [v56 activationDate];
                [v46 activationDate];
                v61 = v46;
                v63 = v62 = v47;
                [v60 timeIntervalSinceDate:v63];
                v65 = v64;

                v47 = v62;
                v46 = v61;

                v54 = v83;
                if (v65 < 0.0)
                {
                  goto LABEL_49;
                }
              }

              v53 = [v84 countByEnumeratingWithState:&v88 objects:v100 count:16];
            }

            while (v53);
          }

          v48 = v82 + 1;
        }

        while (v82 + 1 != v81);
        v81 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
        if (!v81)
        {
LABEL_55:

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v66 = *(v76 + 32);
            v67 = objc_opt_class();
            v85[0] = MEMORY[0x277D85DD0];
            v85[1] = 3221225472;
            v85[2] = __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_84;
            v85[3] = &unk_279A55D70;
            v86 = @"free";
            v87 = v67;
            if (PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_82 != -1)
            {
              dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_3_defaultOnce_82, v85);
            }

            v68 = PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_83;

            if (v68 == 1)
            {
              v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"freeing dependency=%@", v46];
              v70 = MEMORY[0x277D3F178];
              v71 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
              v72 = [v71 lastPathComponent];
              v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager addDependency:]_block_invoke_2"];
              [v70 logMessage:v69 fromFile:v72 fromFunction:v73 fromLineNumber:148];

              v74 = PLLogCommon();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
              {
                [PLAccountingDependency activate];
              }
            }
          }

          [v46 deactivate];

          v22 = v77;
          break;
        }
      }
    }
  }

  v75 = *MEMORY[0x277D85DE8];
}

uint64_t __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_0 = result;
  return result;
}

uint64_t __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_64(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_63 = result;
  return result;
}

uint64_t __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_71(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_70 = result;
  return result;
}

uint64_t __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_78(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_77 = result;
  return result;
}

uint64_t __52__PLAccountingOwnerDependencyManager_addDependency___block_invoke_84(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_3_classDebugEnabled_83 = result;
  return result;
}

- (void)notifyOwnersWithDependency:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingOwnerDependencyManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__PLAccountingOwnerDependencyManager_notifyOwnersWithDependency___block_invoke;
  v7[3] = &unk_279A55DC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(v5, v7);
}

void __65__PLAccountingOwnerDependencyManager_notifyOwnersWithDependency___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__PLAccountingOwnerDependencyManager_notifyOwnersWithDependency___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_4_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_4_defaultOnce_0, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_4_classDebugEnabled_0 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency=%@", *(a1 + 40)];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager notifyOwnersWithDependency:]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:156];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (*(a1 + 40))
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __65__PLAccountingOwnerDependencyManager_notifyOwnersWithDependency___block_invoke_90;
      v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v33[4] = v11;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_4_defaultOnce_88 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_4_defaultOnce_88, v33);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_4_classDebugEnabled_89 == 1)
      {
        v12 = MEMORY[0x277CCACA8];
        v13 = [*(a1 + 32) dependencyIDToObservingOwners];
        v14 = [v12 stringWithFormat:@"dependencyIDToObservingOwners=%@", v13];

        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v17 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager notifyOwnersWithDependency:]_block_invoke_2"];
        [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:160];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = [*(a1 + 32) dependencyIDToObservingOwners];
    v21 = [*(a1 + 40) ID];
    v22 = [v20 objectForKeyedSubscript:v21];
    v23 = [v22 copy];

    v24 = [v23 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v30;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v29 + 1) + 8 * i) didReceiveDependency:*(a1 + 40)];
        }

        v25 = [v23 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v25);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __65__PLAccountingOwnerDependencyManager_notifyOwnersWithDependency___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_4_classDebugEnabled_0 = result;
  return result;
}

uint64_t __65__PLAccountingOwnerDependencyManager_notifyOwnersWithDependency___block_invoke_90(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_4_classDebugEnabled_89 = result;
  return result;
}

- (void)updateLastDependencyID:(id)a3 withEndDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLAccountingOwnerDependencyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke;
  block[3] = &unk_279A55D98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async_and_wait(v8, block);
}

void __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_0 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_0, block);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_0 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencyID=%@, endDate=%@", *(a1 + 40), *(a1 + 48)];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager updateLastDependencyID:withEndDate:]_block_invoke"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:170];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if ([*(a1 + 40) intValue] >= 1 && *(a1 + 48))
  {
    v10 = [*(a1 + 32) dependencyIDToDependencies];
    v11 = [v10 objectForKeyedSubscript:*(a1 + 40)];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_100;
      v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v43[4] = v13;
      if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_98 != -1)
      {
        dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_98, v43);
      }

      if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_99 == 1)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencies=%@", v11];
        v15 = MEMORY[0x277D3F178];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v17 = [v16 lastPathComponent];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager updateLastDependencyID:withEndDate:]_block_invoke_2"];
        [v15 logMessage:v14 fromFile:v17 fromFunction:v18 fromLineNumber:175];

        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    if (v11)
    {
      v20 = [v11 lastObject];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v21 = *(a1 + 32);
        v22 = objc_opt_class();
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_107;
        v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v42[4] = v22;
        if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_105 != -1)
        {
          dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_105, v42);
        }

        if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_106 == 1)
        {
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastDependency=%@", v20];
          v24 = MEMORY[0x277D3F178];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
          v26 = [v25 lastPathComponent];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager updateLastDependencyID:withEndDate:]_block_invoke_2"];
          [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:180];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }

      v29 = [v20 range];
      v30 = [v29 endDate];
      v31 = [MEMORY[0x277CBEAA8] distantFuture];
      v32 = [v30 isEqualToDate:v31];

      if (v32)
      {
        [v20 updateWithEndDate:*(a1 + 48)];
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v33 = *(a1 + 32);
        v34 = objc_opt_class();
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_113;
        v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v41[4] = v34;
        if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_111 != -1)
        {
          dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_5_defaultOnce_111, v41);
        }

        if (PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_112 == 1)
        {
          v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"after update: lastDependency=%@", v20];
          v36 = MEMORY[0x277D3F178];
          v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
          v38 = [v37 lastPathComponent];
          v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager updateLastDependencyID:withEndDate:]_block_invoke_2"];
          [v36 logMessage:v35 fromFile:v38 fromFunction:v39 fromLineNumber:186];

          v40 = PLLogCommon();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }
        }
      }
    }
  }
}

uint64_t __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_0 = result;
  return result;
}

uint64_t __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_100(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_99 = result;
  return result;
}

uint64_t __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_107(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_106 = result;
  return result;
}

uint64_t __73__PLAccountingOwnerDependencyManager_updateLastDependencyID_withEndDate___block_invoke_113(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_5_classDebugEnabled_112 = result;
  return result;
}

- (id)lastDependencyForDependencyID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = [(PLAccountingOwnerDependencyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__PLAccountingOwnerDependencyManager_lastDependencyForDependencyID___block_invoke;
  block[3] = &unk_279A56090;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_async_and_wait(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __68__PLAccountingOwnerDependencyManager_lastDependencyForDependencyID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lastDependencyForDependencyID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_lastDependencyForDependencyID:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToDependencies];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 lastObject];

  return v7;
}

- (id)dependenciesWithDependencyID:(id)a3 withRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0x277D3F000uLL;
  v9 = &off_25EE04000;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (dependenciesWithDependencyID_withRange__defaultOnce != -1)
    {
      dispatch_once(&dependenciesWithDependencyID_withRange__defaultOnce, block);
    }

    if (dependenciesWithDependencyID_withRange__classDebugEnabled == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencyID=%@, range=%@", v6, v7];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager dependenciesWithDependencyID:withRange:]"];
      [v12 logMessage:v11 fromFile:v14 fromFunction:v15 fromLineNumber:217];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v9 = &off_25EE04000;
      v8 = 0x277D3F000uLL;
    }
  }

  v17 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToDependencies];
  v18 = [v17 objectForKeyedSubscript:v6];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke_122;
    v67[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v67[4] = v19;
    if (dependenciesWithDependencyID_withRange__defaultOnce_120 != -1)
    {
      dispatch_once(&dependenciesWithDependencyID_withRange__defaultOnce_120, v67);
    }

    if (dependenciesWithDependencyID_withRange__classDebugEnabled_121 == 1)
    {
      v20 = v7;
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencies=%@", v18];
      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v24 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager dependenciesWithDependencyID:withRange:]"];
      [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:220];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v7 = v20;
      v9 = &off_25EE04000;
      v8 = 0x277D3F000uLL;
    }
  }

  if (v18)
  {
    v27 = [v7 startDate];
    if (v27 && [v18 count])
    {
      v28 = v7;
      v29 = 0;
      do
      {
        v30 = [v18 objectAtIndexedSubscript:v29];
        v31 = [v30 range];
        v32 = [v31 endDate];
        [v32 timeIntervalSinceDate:v27];
        v34 = v33;

        if (v34 >= 1.0)
        {
          break;
        }

        ++v29;
      }

      while ([v18 count] > v29);
      v7 = v28;
      v9 = &off_25EE04000;
      v8 = 0x277D3F000;
    }

    else
    {
      v29 = 0;
    }

    if ([*(v8 + 384) debugEnabled])
    {
      v35 = objc_opt_class();
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = *(v9 + 140);
      v66[2] = __77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke_125;
      v66[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v66[4] = v35;
      if (dependenciesWithDependencyID_withRange__defaultOnce_123 != -1)
      {
        dispatch_once(&dependenciesWithDependencyID_withRange__defaultOnce_123, v66);
      }

      if (dependenciesWithDependencyID_withRange__classDebugEnabled_124 == 1)
      {
        v36 = v7;
        v37 = v6;
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"startIndex=%i", v29];
        v39 = MEMORY[0x277D3F178];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v41 = [v40 lastPathComponent];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager dependenciesWithDependencyID:withRange:]"];
        [v39 logMessage:v38 fromFile:v41 fromFunction:v42 fromLineNumber:237];

        v43 = PLLogCommon();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        v6 = v37;
        v7 = v36;
        v9 = &off_25EE04000;
      }
    }

    LODWORD(v44) = [v18 count];
    v45 = (v44 - 1);
    v46 = [v7 endDate];
    if (v46 && v29 < v44)
    {
      v61 = v7;
      v63 = v6;
      v44 = v44;
      while (1)
      {
        v47 = [v18 objectAtIndexedSubscript:--v44];
        v48 = [v47 range];
        v49 = [v48 startDate];
        [v46 timeIntervalSinceDate:v49];
        v51 = v50;

        if (v51 >= 1.0)
        {
          break;
        }

        v45 = (v45 - 1);
        if (v44 <= v29)
        {
          v45 = (v29 - 1);
          break;
        }
      }

      v7 = v61;
      v6 = v63;
      v9 = &off_25EE04000;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v52 = objc_opt_class();
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = *(v9 + 140);
      v65[2] = __77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke_131;
      v65[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v65[4] = v52;
      if (dependenciesWithDependencyID_withRange__defaultOnce_129 != -1)
      {
        dispatch_once(&dependenciesWithDependencyID_withRange__defaultOnce_129, v65);
      }

      if (dependenciesWithDependencyID_withRange__classDebugEnabled_130 == 1)
      {
        v62 = v7;
        v64 = v6;
        v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"endIndex=%i", v45];
        v54 = MEMORY[0x277D3F178];
        v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
        v56 = [v55 lastPathComponent];
        v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager dependenciesWithDependencyID:withRange:]"];
        [v54 logMessage:v53 fromFile:v56 fromFunction:v57 fromLineNumber:251];

        v58 = PLLogCommon();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        v7 = v62;
        v6 = v64;
      }
    }

    if (v45 >= v29)
    {
      v59 = [v18 subarrayWithRange:{v29, v45 - v29 + 1}];
    }

    else
    {
      v59 = 0;
    }
  }

  else
  {
    v59 = 0;
  }

  return v59;
}

uint64_t __77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependenciesWithDependencyID_withRange__classDebugEnabled = result;
  return result;
}

uint64_t __77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke_122(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependenciesWithDependencyID_withRange__classDebugEnabled_121 = result;
  return result;
}

uint64_t __77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke_125(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependenciesWithDependencyID_withRange__classDebugEnabled_124 = result;
  return result;
}

uint64_t __77__PLAccountingOwnerDependencyManager_dependenciesWithDependencyID_withRange___block_invoke_131(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dependenciesWithDependencyID_withRange__classDebugEnabled_130 = result;
  return result;
}

- (void)startObservingDependencyID:(id)a3 forOwner:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__PLAccountingOwnerDependencyManager_startObservingDependencyID_forOwner___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (startObservingDependencyID_forOwner__defaultOnce != -1)
    {
      dispatch_once(&startObservingDependencyID_forOwner__defaultOnce, block);
    }

    if (startObservingDependencyID_forOwner__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencyID=%@, owner=%@", v6, v7];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager startObservingDependencyID:forOwner:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:259];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v15 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToObservingOwners];
  v16 = [v15 objectForKeyedSubscript:v6];

  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB58] set];
    v17 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToObservingOwners];
    [v17 setObject:v16 forKeyedSubscript:v6];
  }

  [v16 addObject:v7];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__PLAccountingOwnerDependencyManager_startObservingDependencyID_forOwner___block_invoke_140;
    v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v27[4] = v18;
    if (startObservingDependencyID_forOwner__defaultOnce_138 != -1)
    {
      dispatch_once(&startObservingDependencyID_forOwner__defaultOnce_138, v27);
    }

    if (startObservingDependencyID_forOwner__classDebugEnabled_139 == 1)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToObservingOwners];
      v21 = [v19 stringWithFormat:@"dependencyIDToObservingOwners=%@", v20];

      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v24 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager startObservingDependencyID:forOwner:]"];
      [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:267];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

uint64_t __74__PLAccountingOwnerDependencyManager_startObservingDependencyID_forOwner___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startObservingDependencyID_forOwner__classDebugEnabled = result;
  return result;
}

uint64_t __74__PLAccountingOwnerDependencyManager_startObservingDependencyID_forOwner___block_invoke_140(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startObservingDependencyID_forOwner__classDebugEnabled_139 = result;
  return result;
}

- (void)stopObservingDependencyID:(id)a3 forOwner:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__PLAccountingOwnerDependencyManager_stopObservingDependencyID_forOwner___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (stopObservingDependencyID_forOwner__defaultOnce != -1)
    {
      dispatch_once(&stopObservingDependencyID_forOwner__defaultOnce, block);
    }

    if (stopObservingDependencyID_forOwner__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencyID=%@, owner=%@", v6, v7];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager stopObservingDependencyID:forOwner:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:273];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v15 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToObservingOwners];
  v16 = [v15 objectForKeyedSubscript:v6];

  [v16 removeObject:v7];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __73__PLAccountingOwnerDependencyManager_stopObservingDependencyID_forOwner___block_invoke_143;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v17;
    if (stopObservingDependencyID_forOwner__defaultOnce_141 != -1)
    {
      dispatch_once(&stopObservingDependencyID_forOwner__defaultOnce_141, v26);
    }

    if (stopObservingDependencyID_forOwner__classDebugEnabled_142 == 1)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToObservingOwners];
      v20 = [v18 stringWithFormat:@"dependencyIDToObservingOwners=%@", v19];

      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v23 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager stopObservingDependencyID:forOwner:]"];
      [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:277];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

uint64_t __73__PLAccountingOwnerDependencyManager_stopObservingDependencyID_forOwner___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopObservingDependencyID_forOwner__classDebugEnabled = result;
  return result;
}

uint64_t __73__PLAccountingOwnerDependencyManager_stopObservingDependencyID_forOwner___block_invoke_143(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopObservingDependencyID_forOwner__classDebugEnabled_142 = result;
  return result;
}

- (void)canFreeOwner:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__PLAccountingOwnerDependencyManager_canFreeOwner___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (canFreeOwner__defaultOnce != -1)
    {
      dispatch_once(&canFreeOwner__defaultOnce, block);
    }

    if (canFreeOwner__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"owner=%@", v4];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager canFreeOwner:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:282];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v12 = [(PLAccountingOwnerDependencyManager *)self ownersRepository];
  [v12 removeObject:v4];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v13 = objc_opt_class();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __51__PLAccountingOwnerDependencyManager_canFreeOwner___block_invoke_146;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v13;
    if (canFreeOwner__defaultOnce_144 != -1)
    {
      dispatch_once(&canFreeOwner__defaultOnce_144, v22);
    }

    if (canFreeOwner__classDebugEnabled_145 == 1)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [(PLAccountingOwnerDependencyManager *)self ownersRepository];
      v16 = [v14 stringWithFormat:@"ownersRepository=%@", v15];

      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v19 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager canFreeOwner:]"];
      [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:285];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

uint64_t __51__PLAccountingOwnerDependencyManager_canFreeOwner___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  canFreeOwner__classDebugEnabled = result;
  return result;
}

uint64_t __51__PLAccountingOwnerDependencyManager_canFreeOwner___block_invoke_146(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  canFreeOwner__classDebugEnabled_145 = result;
  return result;
}

- (id)lastOwnerForOwnerID:(id)a3
{
  v4 = a3;
  v5 = [(PLAccountingOwnerDependencyManager *)self ownerIDToLastOwner];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)startObservingOwnerID:(id)a3 forDependency:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__PLAccountingOwnerDependencyManager_startObservingOwnerID_forDependency___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (startObservingOwnerID_forDependency__defaultOnce != -1)
    {
      dispatch_once(&startObservingOwnerID_forDependency__defaultOnce, block);
    }

    if (startObservingOwnerID_forDependency__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ownerID=%@, dependency=%@", v6, v7];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager startObservingOwnerID:forDependency:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:303];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v15 = [(PLAccountingOwnerDependencyManager *)self ownerIDToObservingDependencies];
  v16 = [v15 objectForKeyedSubscript:v6];

  if (!v16)
  {
    v16 = [MEMORY[0x277CBEB58] set];
    v17 = [(PLAccountingOwnerDependencyManager *)self ownerIDToObservingDependencies];
    [v17 setObject:v16 forKeyedSubscript:v6];
  }

  [v16 addObject:v7];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v18 = objc_opt_class();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__PLAccountingOwnerDependencyManager_startObservingOwnerID_forDependency___block_invoke_152;
    v27[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v27[4] = v18;
    if (startObservingOwnerID_forDependency__defaultOnce_150 != -1)
    {
      dispatch_once(&startObservingOwnerID_forDependency__defaultOnce_150, v27);
    }

    if (startObservingOwnerID_forDependency__classDebugEnabled_151 == 1)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [(PLAccountingOwnerDependencyManager *)self ownerIDToObservingDependencies];
      v21 = [v19 stringWithFormat:@"ownerIDToObservingDependencies=%@", v20];

      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v24 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager startObservingOwnerID:forDependency:]"];
      [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:311];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

uint64_t __74__PLAccountingOwnerDependencyManager_startObservingOwnerID_forDependency___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startObservingOwnerID_forDependency__classDebugEnabled = result;
  return result;
}

uint64_t __74__PLAccountingOwnerDependencyManager_startObservingOwnerID_forDependency___block_invoke_152(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  startObservingOwnerID_forDependency__classDebugEnabled_151 = result;
  return result;
}

- (void)stopObservingOwnerID:(id)a3 forDependency:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__PLAccountingOwnerDependencyManager_stopObservingOwnerID_forDependency___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (stopObservingOwnerID_forDependency__defaultOnce != -1)
    {
      dispatch_once(&stopObservingOwnerID_forDependency__defaultOnce, block);
    }

    if (stopObservingOwnerID_forDependency__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ownerID=%@, dependency=%@", v6, v7];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager stopObservingOwnerID:forDependency:]"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:317];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v15 = [(PLAccountingOwnerDependencyManager *)self ownerIDToObservingDependencies];
  v16 = [v15 objectForKeyedSubscript:v6];
  [v16 removeObject:v7];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __73__PLAccountingOwnerDependencyManager_stopObservingOwnerID_forDependency___block_invoke_155;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v17;
    if (stopObservingOwnerID_forDependency__defaultOnce_153 != -1)
    {
      dispatch_once(&stopObservingOwnerID_forDependency__defaultOnce_153, v26);
    }

    if (stopObservingOwnerID_forDependency__classDebugEnabled_154 == 1)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [(PLAccountingOwnerDependencyManager *)self ownerIDToObservingDependencies];
      v20 = [v18 stringWithFormat:@"ownerIDToObservingDependencies=%@", v19];

      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v23 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager stopObservingOwnerID:forDependency:]"];
      [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:320];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

uint64_t __73__PLAccountingOwnerDependencyManager_stopObservingOwnerID_forDependency___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopObservingOwnerID_forDependency__classDebugEnabled = result;
  return result;
}

uint64_t __73__PLAccountingOwnerDependencyManager_stopObservingOwnerID_forDependency___block_invoke_155(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  stopObservingOwnerID_forDependency__classDebugEnabled_154 = result;
  return result;
}

- (void)canFreeDependency:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PLAccountingOwnerDependencyManager_canFreeDependency___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (canFreeDependency__defaultOnce != -1)
    {
      dispatch_once(&canFreeDependency__defaultOnce, block);
    }

    if (canFreeDependency__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency=%@", v4];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager canFreeDependency:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:325];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v12 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToDependencies];
  v13 = [v4 ID];
  v14 = [v12 objectForKeyedSubscript:v13];
  [v14 removeObject:v4];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __56__PLAccountingOwnerDependencyManager_canFreeDependency___block_invoke_158;
    v24[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v24[4] = v15;
    if (canFreeDependency__defaultOnce_156 != -1)
    {
      dispatch_once(&canFreeDependency__defaultOnce_156, v24);
    }

    if (canFreeDependency__classDebugEnabled_157 == 1)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [(PLAccountingOwnerDependencyManager *)self dependencyIDToDependencies];
      v18 = [v16 stringWithFormat:@"dependencyIDToDependencies=%@", v17];

      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager canFreeDependency:]"];
      [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:328];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  [(PLAccountingOwnerDependencyManager *)self setNumDependencies:[(PLAccountingOwnerDependencyManager *)self numDependencies]- 1];
}

uint64_t __56__PLAccountingOwnerDependencyManager_canFreeDependency___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  canFreeDependency__classDebugEnabled = result;
  return result;
}

uint64_t __56__PLAccountingOwnerDependencyManager_canFreeDependency___block_invoke_158(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  canFreeDependency__classDebugEnabled_157 = result;
  return result;
}

- (void)freeExpiredOwnersAtNow:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0x277D3F000uLL;
  v57 = v4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke;
    v74[3] = &unk_279A55D70;
    v75 = @"free";
    v76 = v6;
    if (freeExpiredOwnersAtNow__defaultOnce != -1)
    {
      dispatch_once(&freeExpiredOwnersAtNow__defaultOnce, v74);
    }

    v7 = freeExpiredOwnersAtNow__classDebugEnabled;

    if (v7 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"now=%@, class=%@", v4, objc_opt_class()];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager freeExpiredOwnersAtNow:]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:350];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v4 = v57;
      v5 = 0x277D3F000uLL;
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = objc_opt_class();
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke_167;
    v71[3] = &unk_279A55D70;
    v72 = @"free";
    v73 = v14;
    if (freeExpiredOwnersAtNow__defaultOnce_165 != -1)
    {
      dispatch_once(&freeExpiredOwnersAtNow__defaultOnce_165, v71);
    }

    v15 = freeExpiredOwnersAtNow__classDebugEnabled_166;

    if (v15 == 1)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [(PLAccountingOwnerDependencyManager *)self ownersRepository];
      v18 = [v17 copy];
      v19 = [v16 stringWithFormat:@"ownersRepositoryCopy=%@, class=%@", v18, objc_opt_class()];

      v20 = MEMORY[0x277D3F178];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v22 = [v21 lastPathComponent];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager freeExpiredOwnersAtNow:]"];
      [v20 logMessage:v19 fromFile:v22 fromFunction:v23 fromLineNumber:352];

      v24 = PLLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v4 = v57;
      v5 = 0x277D3F000uLL;
    }
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v25 = [(PLAccountingOwnerDependencyManager *)self ownersRepository];
  v26 = [v25 copy];

  obj = v26;
  v27 = [v26 countByEnumeratingWithState:&v67 objects:v79 count:16];
  if (v27)
  {
    v28 = v27;
    v60 = *v68;
    do
    {
      v29 = 0;
      v58 = v28;
      do
      {
        if (*v68 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v67 + 1) + 8 * v29);
        v31 = [v30 range];
        v32 = [v31 endDate];

        v33 = [v30 activationDate];
        if (v32)
        {
          v34 = [v32 laterDate:v33];

          v33 = v34;
        }

        if ([*(v5 + 384) debugEnabled])
        {
          v35 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke_173;
          block[3] = &unk_279A55D70;
          v65 = @"free";
          v66 = v35;
          if (freeExpiredOwnersAtNow__defaultOnce_171 != -1)
          {
            dispatch_once(&freeExpiredOwnersAtNow__defaultOnce_171, block);
          }

          v36 = freeExpiredOwnersAtNow__classDebugEnabled_172;

          if (v36 == 1)
          {
            v37 = MEMORY[0x277CCACA8];
            v38 = [v30 activationDate];
            v39 = [v37 stringWithFormat:@"lastValidDate=%@, endDate=%@, activationDate=%@, class=%@", v33, v32, v38, objc_opt_class()];

            v40 = MEMORY[0x277D3F178];
            v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
            v42 = [v41 lastPathComponent];
            v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager freeExpiredOwnersAtNow:]"];
            [v40 logMessage:v39 fromFile:v42 fromFunction:v43 fromLineNumber:356];

            v44 = PLLogCommon();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v78 = v39;
              _os_log_debug_impl(&dword_25EDCD000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v4 = v57;
            v28 = v58;
            v5 = 0x277D3F000uLL;
          }
        }

        [v4 timeIntervalSinceDate:v33];
        v46 = v45;
        [objc_opt_class() freeTimerInterval];
        if (v46 > v47)
        {
          if ([*(v5 + 384) debugEnabled])
          {
            v48 = objc_opt_class();
            v61[0] = MEMORY[0x277D85DD0];
            v61[1] = 3221225472;
            v61[2] = __61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke_179;
            v61[3] = &unk_279A55D70;
            v62 = @"free";
            v63 = v48;
            if (freeExpiredOwnersAtNow__defaultOnce_177 != -1)
            {
              dispatch_once(&freeExpiredOwnersAtNow__defaultOnce_177, v61);
            }

            v49 = freeExpiredOwnersAtNow__classDebugEnabled_178;

            if (v49 == 1)
            {
              v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"freeing owner=%@, class=%@", v30, objc_opt_class()];
              v51 = MEMORY[0x277D3F178];
              v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
              v53 = [v52 lastPathComponent];
              v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager freeExpiredOwnersAtNow:]"];
              [v51 logMessage:v50 fromFile:v53 fromFunction:v54 fromLineNumber:360];

              v55 = PLLogCommon();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v78 = v50;
                _os_log_debug_impl(&dword_25EDCD000, v55, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v4 = v57;
              v28 = v58;
              v5 = 0x277D3F000;
            }
          }

          [v30 deactivate];
        }

        ++v29;
      }

      while (v28 != v29);
      v28 = [obj countByEnumeratingWithState:&v67 objects:v79 count:16];
    }

    while (v28);
  }

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t __61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  freeExpiredOwnersAtNow__classDebugEnabled = result;
  return result;
}

uint64_t __61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke_167(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  freeExpiredOwnersAtNow__classDebugEnabled_166 = result;
  return result;
}

uint64_t __61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke_173(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  freeExpiredOwnersAtNow__classDebugEnabled_172 = result;
  return result;
}

uint64_t __61__PLAccountingOwnerDependencyManager_freeExpiredOwnersAtNow___block_invoke_179(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  freeExpiredOwnersAtNow__classDebugEnabled_178 = result;
  return result;
}

- (void)freeExpiredDependenciesAtNow:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = 0x277D3F000uLL;
  v46 = self;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __67__PLAccountingOwnerDependencyManager_freeExpiredDependenciesAtNow___block_invoke;
    v60[3] = &unk_279A55D70;
    v61 = @"free";
    v62 = v6;
    if (freeExpiredDependenciesAtNow__defaultOnce != -1)
    {
      dispatch_once(&freeExpiredDependenciesAtNow__defaultOnce, v60);
    }

    v7 = freeExpiredDependenciesAtNow__classDebugEnabled;

    if (v7 == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"now=%@", v4];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager freeExpiredDependenciesAtNow:]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:368];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      self = v46;
      v5 = 0x277D3F000uLL;
    }
  }

  [(PLAccountingOwnerDependencyManager *)self dependencyIDToDependencies];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v42 = v59 = 0u;
  obj = [v42 allKeys];
  v43 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v43)
  {
    v41 = *v57;
    v45 = v4;
    do
    {
      v14 = 0;
      do
      {
        if (*v57 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v14;
        v15 = *(*(&v56 + 1) + 8 * v14);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v16 = [v42 objectForKeyedSubscript:v15];
        v17 = [v16 copy];

        v48 = v17;
        v18 = [v17 countByEnumeratingWithState:&v52 objects:v65 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v53;
          v47 = *v53;
          do
          {
            v21 = 0;
            do
            {
              if (*v53 != v20)
              {
                objc_enumerationMutation(v48);
              }

              v22 = *(*(&v52 + 1) + 8 * v21);
              v23 = [v22 range];
              v24 = [v23 endDate];

              v25 = [v22 activationDate];
              if (v24)
              {
                v26 = [v24 laterDate:v25];

                v25 = v26;
              }

              [v4 timeIntervalSinceDate:v25];
              v28 = v27;
              [objc_opt_class() freeTimerInterval];
              if (v28 > v29)
              {
                if ([*(v5 + 384) debugEnabled])
                {
                  v30 = objc_opt_class();
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __67__PLAccountingOwnerDependencyManager_freeExpiredDependenciesAtNow___block_invoke_188;
                  block[3] = &unk_279A55D70;
                  v50 = @"free";
                  v51 = v30;
                  if (freeExpiredDependenciesAtNow__defaultOnce_186 != -1)
                  {
                    dispatch_once(&freeExpiredDependenciesAtNow__defaultOnce_186, block);
                  }

                  v31 = freeExpiredDependenciesAtNow__classDebugEnabled_187;

                  v32 = v31 == 1;
                  v20 = v47;
                  if (v32)
                  {
                    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"freeing dependency=%@", v22];
                    v34 = MEMORY[0x277D3F178];
                    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwnerDependencyManager.m"];
                    v36 = [v35 lastPathComponent];
                    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwnerDependencyManager freeExpiredDependenciesAtNow:]"];
                    [v34 logMessage:v33 fromFile:v36 fromFunction:v37 fromLineNumber:378];

                    v38 = PLLogCommon();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v64 = v33;
                      _os_log_debug_impl(&dword_25EDCD000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }

                    v4 = v45;
                    v5 = 0x277D3F000;
                    v20 = v47;
                  }
                }

                [v22 deactivate];
              }

              ++v21;
            }

            while (v19 != v21);
            v19 = [v48 countByEnumeratingWithState:&v52 objects:v65 count:16];
          }

          while (v19);
        }

        v14 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v43);
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __67__PLAccountingOwnerDependencyManager_freeExpiredDependenciesAtNow___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  freeExpiredDependenciesAtNow__classDebugEnabled = result;
  return result;
}

uint64_t __67__PLAccountingOwnerDependencyManager_freeExpiredDependenciesAtNow___block_invoke_188(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  freeExpiredDependenciesAtNow__classDebugEnabled_187 = result;
  return result;
}

@end