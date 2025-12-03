@interface PLAccountingDependency
- (NSMutableSet)observingOwnerIDs;
- (PLAccountingDependencyManager)manager;
- (id)description;
- (void)activate;
- (void)deactivate;
- (void)didReceiveOwner:(id)owner;
- (void)updateWithEndDate:(id)date;
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
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency deactivate]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:112];

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
  observingOwnerIDs = [(PLAccountingDependency *)self observingOwnerIDs];
  v11 = [observingOwnerIDs countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(observingOwnerIDs);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        manager = [(PLAccountingDependency *)self manager];
        [manager stopObservingOwnerID:v15 forDependency:self];
      }

      v12 = [observingOwnerIDs countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v12);
  }

  [(PLAccountingDependency *)self setObservingOwnerIDs:0];
  manager2 = [(PLAccountingDependency *)self manager];
  [manager2 canFreeDependency:self];

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

- (void)didReceiveOwner:(id)owner
{
  ownerCopy = owner;
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
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"owner=%@, self=%@", ownerCopy, self];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency didReceiveOwner:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:73];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (ownerCopy)
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
        observingOwnerIDs = [(PLAccountingDependency *)self observingOwnerIDs];
        v15 = [v13 stringWithFormat:@"observingOwnerIDs=%@", observingOwnerIDs];

        v16 = MEMORY[0x277D3F178];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
        lastPathComponent2 = [v17 lastPathComponent];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency didReceiveOwner:]"];
        [v16 logMessage:v15 fromFile:lastPathComponent2 fromFunction:v19 fromLineNumber:77];

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    observingOwnerIDs2 = [(PLAccountingDependency *)self observingOwnerIDs];
    v22 = [ownerCopy ID];
    v23 = [observingOwnerIDs2 containsObject:v22];

    if (v23)
    {
      range = [ownerCopy range];
      endDate = [range endDate];
      range2 = [(PLAccountingDependency *)self range];
      endDate2 = [range2 endDate];
      [endDate timeIntervalSinceDate:endDate2];
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
            lastPathComponent3 = [v33 lastPathComponent];
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency didReceiveOwner:]"];
            [v32 logMessage:v31 fromFile:lastPathComponent3 fromFunction:v35 fromLineNumber:82];

            v36 = PLLogCommon();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        observingOwnerIDs3 = [(PLAccountingDependency *)self observingOwnerIDs];
        v38 = [ownerCopy ID];
        [observingOwnerIDs3 removeObject:v38];

        manager = [(PLAccountingDependency *)self manager];
        v40 = [ownerCopy ID];
        [manager stopObservingOwnerID:v40 forDependency:self];

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
            observingOwnerIDs4 = [(PLAccountingDependency *)self observingOwnerIDs];
            v44 = [v42 stringWithFormat:@"observingOwnerIDs.count=%i", objc_msgSend(observingOwnerIDs4, "count")];

            v45 = MEMORY[0x277D3F178];
            v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
            lastPathComponent4 = [v46 lastPathComponent];
            v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency didReceiveOwner:]"];
            [v45 logMessage:v44 fromFile:lastPathComponent4 fromFunction:v48 fromLineNumber:89];

            v49 = PLLogCommon();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        observingOwnerIDs5 = [(PLAccountingDependency *)self observingOwnerIDs];
        v51 = [observingOwnerIDs5 count];

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

- (void)updateWithEndDate:(id)date
{
  dateCopy = date;
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
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"endDate=%@, self=%@", dateCopy, self];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency updateWithEndDate:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:99];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  range = [(PLAccountingDependency *)self range];
  endDate = [range endDate];
  [dateCopy timeIntervalSinceDate:endDate];
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
        lastPathComponent2 = [v30 lastPathComponent];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency updateWithEndDate:]"];
        [v29 logMessage:v22 fromFile:lastPathComponent2 fromFunction:v32 fromLineNumber:103];

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
    range2 = [(PLAccountingDependency *)self range];
    startDate = [range2 startDate];
    v18 = [PLAccountingRange rangeWithStartDate:startDate withEndDate:dateCopy];
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
        range3 = [(PLAccountingDependency *)self range];
        v22 = [v20 stringWithFormat:@"range=%@", range3];

        v23 = MEMORY[0x277D3F178];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingDependency.m"];
        lastPathComponent3 = [v24 lastPathComponent];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDependency updateWithEndDate:]"];
        [v23 logMessage:v22 fromFile:lastPathComponent3 fromFunction:v26 fromLineNumber:108];

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
  range = [(PLAccountingDependency *)self range];
  v6 = [v3 stringWithFormat:@"(ID=%@, range=%@)", v4, range];

  return v6;
}

@end