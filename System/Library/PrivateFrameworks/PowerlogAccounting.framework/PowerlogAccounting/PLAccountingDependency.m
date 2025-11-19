@interface PLAccountingDependency
- (NSMutableSet)observingOwnerIDs;
- (PLAccountingDependencyManager)manager;
- (id)description;
- (void)activate;
- (void)deactivate;
- (void)didReceiveOwner:(id)a3;
- (void)updateWithEndDate:(id)a3;
@end

@implementation PLAccountingDependency

- (NSMutableSet)observingOwnerIDs
{
  observingOwnerIDs = self->_observingOwnerIDs;
  if (!observingOwnerIDs)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = self->_observingOwnerIDs;
    self->_observingOwnerIDs = v4;

    observingOwnerIDs = self->_observingOwnerIDs;
  }

  return observingOwnerIDs;
}

- (void)activate
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EDCD000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (PLAccountingDependencyManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (void)deactivate
{
  v25 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PLAccountingDependency_deactivate__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (deactivate_defaultOnce != -1)
    {
      dispatch_once(&deactivate_defaultOnce, block);
    }

    if (deactivate_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"self=%@", self];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency deactivate]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:112];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(PLAccountingDependency *)self observingOwnerIDs];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [(PLAccountingDependency *)self manager];
        [v16 stopObservingOwnerID:v15 forDependency:self];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v12);
  }

  [(PLAccountingDependency *)self setObservingOwnerIDs:0];
  v17 = [(PLAccountingDependency *)self manager];
  [v17 canFreeDependency:self];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __34__PLAccountingDependency_activate__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  activate_classDebugEnabled = result;
  return result;
}

uint64_t __34__PLAccountingDependency_activate__block_invoke_17(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  activate_classDebugEnabled_16 = result;
  return result;
}

uint64_t __34__PLAccountingDependency_activate__block_invoke_23(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  activate_classDebugEnabled_22 = result;
  return result;
}

uint64_t __34__PLAccountingDependency_activate__block_invoke_29(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  activate_classDebugEnabled_28 = result;
  return result;
}

uint64_t __34__PLAccountingDependency_activate__block_invoke_35(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  activate_classDebugEnabled_34 = result;
  return result;
}

- (void)didReceiveOwner:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLAccountingDependency_didReceiveOwner___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didReceiveOwner__defaultOnce != -1)
    {
      dispatch_once(&didReceiveOwner__defaultOnce, block);
    }

    if (didReceiveOwner__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"owner=%@, self=%@", v4, self];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency didReceiveOwner:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:73];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (v4)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __42__PLAccountingDependency_didReceiveOwner___block_invoke_44;
      v54[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v54[4] = v12;
      if (didReceiveOwner__defaultOnce_42 != -1)
      {
        dispatch_once(&didReceiveOwner__defaultOnce_42, v54);
      }

      if (didReceiveOwner__classDebugEnabled_43 == 1)
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = [(PLAccountingDependency *)self observingOwnerIDs];
        v15 = [v13 stringWithFormat:@"observingOwnerIDs=%@", v14];

        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
        v18 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency didReceiveOwner:]"];
        [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:77];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    v21 = [(PLAccountingDependency *)self observingOwnerIDs];
    v22 = [v4 ID];
    v23 = [v21 containsObject:v22];

    if (v23)
    {
      v24 = [v4 range];
      v25 = [v24 endDate];
      v26 = [(PLAccountingDependency *)self range];
      v27 = [v26 endDate];
      [v25 timeIntervalSinceDate:v27];
      v29 = v28;

      if (v29 >= -1.0)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v30 = objc_opt_class();
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __42__PLAccountingDependency_didReceiveOwner___block_invoke_47;
          v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v53[4] = v30;
          if (didReceiveOwner__defaultOnce_45 != -1)
          {
            dispatch_once(&didReceiveOwner__defaultOnce_45, v53);
          }

          if (didReceiveOwner__classDebugEnabled_46 == 1)
          {
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"owner exceeds dependency's range"];
            v32 = MEMORY[0x277D3F178];
            v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
            v34 = [v33 lastPathComponent];
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency didReceiveOwner:]"];
            [v32 logMessage:v31 fromFile:v34 fromFunction:v35 fromLineNumber:82];

            v36 = PLLogCommon();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        v37 = [(PLAccountingDependency *)self observingOwnerIDs];
        v38 = [v4 ID];
        [v37 removeObject:v38];

        v39 = [(PLAccountingDependency *)self manager];
        v40 = [v4 ID];
        [v39 stopObservingOwnerID:v40 forDependency:self];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v41 = objc_opt_class();
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __42__PLAccountingDependency_didReceiveOwner___block_invoke_53;
          v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v52[4] = v41;
          if (didReceiveOwner__defaultOnce_51 != -1)
          {
            dispatch_once(&didReceiveOwner__defaultOnce_51, v52);
          }

          if (didReceiveOwner__classDebugEnabled_52 == 1)
          {
            v42 = MEMORY[0x277CCACA8];
            v43 = [(PLAccountingDependency *)self observingOwnerIDs];
            v44 = [v42 stringWithFormat:@"observingOwnerIDs.count=%i", objc_msgSend(v43, "count")];

            v45 = MEMORY[0x277D3F178];
            v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
            v47 = [v46 lastPathComponent];
            v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency didReceiveOwner:]"];
            [v45 logMessage:v44 fromFile:v47 fromFunction:v48 fromLineNumber:89];

            v49 = PLLogCommon();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        v50 = [(PLAccountingDependency *)self observingOwnerIDs];
        v51 = [v50 count];

        if (!v51)
        {
          [(PLAccountingDependency *)self deactivate];
        }
      }
    }
  }
}

uint64_t __42__PLAccountingDependency_didReceiveOwner___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveOwner__classDebugEnabled = result;
  return result;
}

uint64_t __42__PLAccountingDependency_didReceiveOwner___block_invoke_44(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveOwner__classDebugEnabled_43 = result;
  return result;
}

uint64_t __42__PLAccountingDependency_didReceiveOwner___block_invoke_47(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveOwner__classDebugEnabled_46 = result;
  return result;
}

uint64_t __42__PLAccountingDependency_didReceiveOwner___block_invoke_53(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveOwner__classDebugEnabled_52 = result;
  return result;
}

- (void)updateWithEndDate:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__PLAccountingDependency_updateWithEndDate___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (updateWithEndDate__defaultOnce != -1)
    {
      dispatch_once(&updateWithEndDate__defaultOnce, block);
    }

    if (updateWithEndDate__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"endDate=%@, self=%@", v4, self];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency updateWithEndDate:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:99];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v12 = [(PLAccountingDependency *)self range];
  v13 = [v12 endDate];
  [v4 timeIntervalSinceDate:v13];
  v15 = v14;

  if (v15 >= 0.0)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v28 = objc_opt_class();
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __44__PLAccountingDependency_updateWithEndDate___block_invoke_59;
      v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v34[4] = v28;
      if (updateWithEndDate__defaultOnce_57 != -1)
      {
        dispatch_once(&updateWithEndDate__defaultOnce_57, v34);
      }

      if (updateWithEndDate__classDebugEnabled_58 == 1)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot push endDate further into the future"];
        v29 = MEMORY[0x277D3F178];
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
        v31 = [v30 lastPathComponent];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency updateWithEndDate:]"];
        [v29 logMessage:v22 fromFile:v31 fromFunction:v32 fromLineNumber:103];

        v27 = PLLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        goto LABEL_21;
      }
    }
  }

  else
  {
    v16 = [(PLAccountingDependency *)self range];
    v17 = [v16 startDate];
    v18 = [PLAccountingRange rangeWithStartDate:v17 withEndDate:v4];
    [(PLAccountingDependency *)self setRange:v18];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v19 = objc_opt_class();
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __44__PLAccountingDependency_updateWithEndDate___block_invoke_66;
      v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v33[4] = v19;
      if (updateWithEndDate__defaultOnce_64 != -1)
      {
        dispatch_once(&updateWithEndDate__defaultOnce_64, v33);
      }

      if (updateWithEndDate__classDebugEnabled_65 == 1)
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = [(PLAccountingDependency *)self range];
        v22 = [v20 stringWithFormat:@"range=%@", v21];

        v23 = MEMORY[0x277D3F178];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
        v25 = [v24 lastPathComponent];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency updateWithEndDate:]"];
        [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:108];

        v27 = PLLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

LABEL_21:
      }
    }
  }
}

uint64_t __44__PLAccountingDependency_updateWithEndDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateWithEndDate__classDebugEnabled = result;
  return result;
}

uint64_t __44__PLAccountingDependency_updateWithEndDate___block_invoke_59(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateWithEndDate__classDebugEnabled_58 = result;
  return result;
}

uint64_t __44__PLAccountingDependency_updateWithEndDate___block_invoke_66(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  updateWithEndDate__classDebugEnabled_65 = result;
  return result;
}

uint64_t __36__PLAccountingDependency_deactivate__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  deactivate_classDebugEnabled = result;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PLAccountingDependency *)self ID];
  v5 = [(PLAccountingDependency *)self range];
  v6 = [v3 stringWithFormat:@"(ID=%@, range=%@)", v4, v5];

  return v6;
}

@end