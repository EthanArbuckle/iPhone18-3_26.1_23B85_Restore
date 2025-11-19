@interface PLBackupRestoreAgent
+ (void)load;
- (PLBackupRestoreAgent)init;
- (void)didChangeEvent:(id)a3 toState:(BOOL)a4;
- (void)handleFastPassCallback:(id)a3;
- (void)initOperatorDependancies;
- (void)logEventForwardBackupRestore;
- (void)updateBackupState;
- (void)updateRestoreState;
@end

@implementation PLBackupRestoreAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLBackupRestoreAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLBackupRestoreAgent)init
{
  v42 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "nonUIBuild"))
  {
    v3 = 0;
  }

  else
  {
    v39.receiver = self;
    v39.super_class = PLBackupRestoreAgent;
    v4 = [(PLAgent *)&v39 init];
    v5 = v4;
    if (v4)
    {
      [(PLBackupRestoreAgent *)v4 logEventForwardBackupRestore];
      v6 = objc_alloc_init(MEMORY[0x277D28A48]);
      backupRestoreManager = v5->_backupRestoreManager;
      v5->_backupRestoreManager = v6;

      v5->_backupState = 0;
      v5->_restoreState = 0;
      if ([(PLOperator *)v5 isDebugEnabled])
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBackupRestoreAgent::init: _backupState=%i, _restoreState=%i", v5->_backupState, v5->_restoreState];
        v9 = MEMORY[0x277D3F178];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLBackupRestoreAgent.m"];
        v11 = [v10 lastPathComponent];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBackupRestoreAgent init]"];
        [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:96];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          out_token = 138412290;
          v41 = v8;
          _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", &out_token, 0xCu);
        }
      }

      out_token = -1;
      v14 = [*MEMORY[0x277D28A90] UTF8String];
      v15 = [(PLOperator *)v5 workQueue];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __28__PLBackupRestoreAgent_init__block_invoke;
      handler[3] = &unk_278260C40;
      v16 = v5;
      v38 = v16;
      notify_register_dispatch(v14, &out_token, v15, handler);

      v36 = -1;
      v17 = *MEMORY[0x277D28AA8];
      v18 = [*MEMORY[0x277D28AA8] UTF8String];
      v19 = [(PLOperator *)v16 workQueue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __28__PLBackupRestoreAgent_init__block_invoke_33;
      v34[3] = &unk_278260C40;
      v20 = v16;
      v35 = v20;
      notify_register_dispatch(v18, &v36, v19, v34);

      v21 = objc_alloc(MEMORY[0x277D3F160]);
      v22 = [(PLOperator *)v20 workQueue];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __28__PLBackupRestoreAgent_init__block_invoke_38;
      v32[3] = &unk_2782597E8;
      v23 = v20;
      v33 = v23;
      v24 = [v21 initWithWorkQueue:v22 forNotification:v17 requireState:1 withBlock:v32];
      [(PLBackupRestoreAgent *)v23 setBackupRestoreNotification:v24];

      v25 = objc_alloc(MEMORY[0x277D3F1A8]);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __28__PLBackupRestoreAgent_init__block_invoke_41;
      v30[3] = &unk_2782597E8;
      v26 = v23;
      v31 = v26;
      v27 = [v25 initWithOperator:v26 forEntryKey:@"XPCMetrics_OngoingRestore_14_2" withBlock:v30];
      [(PLBackupRestoreAgent *)v26 setFastPassCallback:v27];
    }

    self = v5;
    v3 = self;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __28__PLBackupRestoreAgent_init__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isDebugEnabled])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBackupRestoreAgent::kMBManagerBackupStateChangedNotification fired"];
    v3 = MEMORY[0x277D3F178];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLBackupRestoreAgent.m"];
    v5 = [v4 lastPathComponent];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBackupRestoreAgent init]_block_invoke"];
    [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:101];

    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v2;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
    }
  }

  result = [*(a1 + 32) updateBackupState];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __28__PLBackupRestoreAgent_init__block_invoke_33(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isDebugEnabled])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBackupRestoreAgent::kMBManagerRestoreStateChangedNotification fired"];
    v3 = MEMORY[0x277D3F178];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLBackupRestoreAgent.m"];
    v5 = [v4 lastPathComponent];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBackupRestoreAgent init]_block_invoke"];
    [v3 logMessage:v2 fromFile:v5 fromFunction:v6 fromLineNumber:108];

    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v2;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "%@", &v10, 0xCu);
    }
  }

  result = [*(a1 + 32) updateRestoreState];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __28__PLBackupRestoreAgent_init__block_invoke_38(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Backup restore state changed. UserInfo: %@", &v6, 0xCu);
  }

  [*(a1 + 32) logEventForwardBackupRestore];
  v5 = *MEMORY[0x277D85DE8];
}

void __28__PLBackupRestoreAgent_init__block_invoke_41(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Fast Pass Process state changed. Notification Received", &v7, 2u);
  }

  if (v3)
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Fast Pass Process state changed. User info:%@", &v7, 0xCu);
    }

    [*(a1 + 32) handleFastPassCallback:v3];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleFastPassCallback:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v52 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Ongoing Restore: Fast Pass Process state changed. UserInfo: %@", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CBEAA8] monotonicDate];
  v6 = [v3 objectForKey:@"entry"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"state"];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 objectForKeyedSubscript:@"processName"];

      if (v10)
      {
        v11 = [v7 objectForKeyedSubscript:@"state"];
        v12 = [v11 intValue];

        v13 = [v7 objectForKeyedSubscript:@"processName"];
        v14 = PLLogCommon();
        v15 = v14;
        if (v12 > 29)
        {
          if (v12 == 30)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Ongoing Restore: Fast Pass Process state Stopped", buf, 2u);
            }

            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v15 = v13;
            v28 = [v15 countByEnumeratingWithState:&v40 objects:v49 count:16];
            if (!v28)
            {
              goto LABEL_45;
            }

            v29 = v28;
            v35 = v13;
            v30 = *v41;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v41 != v30)
                {
                  objc_enumerationMutation(v15);
                }

                v32 = *(*(&v40 + 1) + 8 * i);
                v33 = [MEMORY[0x277D3F0C0] sharedInstance];
                [v33 createQualificationEventForwardWithQualificationID:16 withRemovingChildNodeName:v32 withStartDate:v5];
              }

              v29 = [v15 countByEnumeratingWithState:&v40 objects:v49 count:16];
            }

            while (v29);
            goto LABEL_44;
          }

          if (v12 == 60)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Ongoing Restore: Fast Pass Process state Completed", buf, 2u);
            }

            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v15 = v13;
            v22 = [v15 countByEnumeratingWithState:&v36 objects:v48 count:16];
            if (!v22)
            {
              goto LABEL_45;
            }

            v23 = v22;
            v35 = v13;
            v24 = *v37;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v37 != v24)
                {
                  objc_enumerationMutation(v15);
                }

                v26 = *(*(&v36 + 1) + 8 * j);
                v27 = [MEMORY[0x277D3F0C0] sharedInstance];
                [v27 createQualificationEventForwardWithQualificationID:16 withRemovingChildNodeName:v26 withStartDate:v5];
              }

              v23 = [v15 countByEnumeratingWithState:&v36 objects:v48 count:16];
            }

            while (v23);
            goto LABEL_44;
          }
        }

        else
        {
          if (v12 == 10)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Ongoing Restore: Fast Pass Process state Scheduled", buf, 2u);
            }

            goto LABEL_45;
          }

          if (v12 == 20)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "Ongoing Restore: Fast Pass Process state Start", buf, 2u);
            }

            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v15 = v13;
            v16 = [v15 countByEnumeratingWithState:&v44 objects:v50 count:16];
            if (!v16)
            {
              goto LABEL_45;
            }

            v17 = v16;
            v35 = v13;
            v18 = *v45;
            do
            {
              for (k = 0; k != v17; ++k)
              {
                if (*v45 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v44 + 1) + 8 * k);
                v21 = [MEMORY[0x277D3F0C0] sharedInstance];
                [v21 createQualificationEventForwardWithQualificationID:16 withAddingChildNodeName:v20 withStartDate:v5];
              }

              v17 = [v15 countByEnumeratingWithState:&v44 objects:v50 count:16];
            }

            while (v17);
LABEL_44:
            v13 = v35;
LABEL_45:

            goto LABEL_46;
          }
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, "Ongoing Restore: DAS Fast Pass State is invalid: Not one of scheduled, started, stopped or fully done", buf, 2u);
        }

        goto LABEL_45;
      }
    }
  }

LABEL_46:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F208] nonUIBuild] & 1) == 0)
  {
    [(PLBackupRestoreAgent *)self updateBackupState];
    [(PLBackupRestoreAgent *)self updateRestoreState];
    v4 = [MEMORY[0x277D3F0C0] sharedInstance];
    v3 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v4 createDistributionEventForwardWithDistributionID:39 withChildNodeNameToWeight:&unk_282C1A3F8 withStartDate:v3];
  }
}

- (void)didChangeEvent:(id)a3 toState:(BOOL)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([MEMORY[0x277D3F208] nonUIBuild] & 1) == 0 && ((objc_msgSend(v5, "isEqualToString:", @"Backup") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"Restore")))
  {
    v6 = [MEMORY[0x277CBEAA8] monotonicDate];
    if (a4)
    {
      v15 = v5;
      v16[0] = &unk_282C1CE28;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v8 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v8 createDistributionEventForwardWithDistributionID:12 withChildNodeNameToWeight:v7 withStartDate:v6];

      v13 = v5;
      v14 = &unk_282C1CE28;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    }

    else
    {
      v10 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v10 createDistributionEventForwardWithDistributionID:12 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:v6];

      v9 = &unk_282C1A420;
    }

    v11 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v11 createDistributionEventForwardWithDistributionID:39 withChildNodeNameToWeight:v9 withStartDate:v6];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateBackupState
{
  v4 = [(PLBackupRestoreAgent *)self backupRestoreManager];
  v3 = [v4 backupState];
  -[PLBackupRestoreAgent setBackupState:](self, "setBackupState:", [v3 state] == 2);
}

- (void)updateRestoreState
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(PLBackupRestoreAgent *)self backupRestoreManager];
  v4 = [v3 restoreState];
  v5 = [v4 state];

  [(PLBackupRestoreAgent *)self setRestoreState:v5 == 2];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __42__PLBackupRestoreAgent_updateRestoreState__block_invoke;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v6;
    if (qword_2811F6DF0 != -1)
    {
      dispatch_once(&qword_2811F6DF0, &block);
    }

    if (_MergedGlobals_1_67 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLBackupRestoreAgent::restoreState:%d", v5, block, v18, v19, v20, v21];
      v8 = MEMORY[0x277D3F178];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLBackupRestoreAgent.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBackupRestoreAgent updateRestoreState]"];
      [v8 logMessage:v7 fromFile:v10 fromFunction:v11 fromLineNumber:229];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v7;
        _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v13 = (v5 - 1) < 3;
  v14 = MEMORY[0x277D3F180];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [v14 setObject:v15 forKey:@"ongoingRestore" forApplicationID:@"com.apple.powerlogd" saveToDisk:1];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLBackupRestoreAgent_updateRestoreState__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_67 = result;
  return result;
}

- (void)logEventForwardBackupRestore
{
  v14 = *MEMORY[0x277D85DE8];
  state64 = 0;
  v3 = [(PLBackupRestoreAgent *)self backupRestoreNotification];
  state = notify_get_state([v3 stateToken], &state64);

  v5 = PLLogCommon();
  v6 = v5;
  if (state)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "Restore state Unavailable", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v13 = state64;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "backupRestore state %llu", buf, 0xCu);
    }

    v10 = @"State";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:state64];
    v11 = v7;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    [(PLOperator *)self logForSubsystem:@"BackupMetrics" category:@"RestoreState" data:v6];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end