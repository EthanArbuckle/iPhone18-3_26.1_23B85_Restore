@interface PLAccountingOwner
- (BOOL)hasRun;
- (NSMutableDictionary)dependencyIDToDependenciesInRange;
- (NSMutableSet)observingDependencyIDs;
- (NSString)description;
- (PLAccountingOwnerManager)manager;
- (void)activate;
- (void)addDependency:(id)dependency;
- (void)allRun;
- (void)deactivate;
- (void)didReceiveDependency:(id)dependency;
@end

@implementation PLAccountingOwner

- (void)activate
{
  v113 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __29__PLAccountingOwner_activate__block_invoke;
    v107[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v107[4] = v3;
    if (activate_defaultOnce_0 != -1)
    {
      dispatch_once(&activate_defaultOnce_0, v107);
    }

    if (activate_classDebugEnabled_0 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"self=%@", self];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner activate]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:39];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  manager = [(PLAccountingOwner *)self manager];
  v85 = [manager dependencyIDsForOwner:self];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __29__PLAccountingOwner_activate__block_invoke_17;
    v106[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v106[4] = v11;
    if (activate_defaultOnce_15_0 != -1)
    {
      dispatch_once(&activate_defaultOnce_15_0, v106);
    }

    if (activate_classDebugEnabled_16_0 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"initialObservingDependencyIDs=%@", v85];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
      lastPathComponent2 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner activate]"];
      [v13 logMessage:v12 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:43];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = [v85 copy];
  v88 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
  if (v88)
  {
    v87 = *v103;
    do
    {
      v18 = 0;
      do
      {
        if (*v103 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v102 + 1) + 8 * v18);
        manager2 = [(PLAccountingOwner *)self manager];
        range = [(PLAccountingOwner *)self range];
        v22 = [manager2 dependenciesWithDependencyID:v19 withRange:range];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v23 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __29__PLAccountingOwner_activate__block_invoke_23;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v23;
          if (activate_defaultOnce_21_0 != -1)
          {
            dispatch_once(&activate_defaultOnce_21_0, block);
          }

          if (activate_classDebugEnabled_22_0 == 1)
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependencyID=%@, dependencies=%@", v19, v22];
            v25 = MEMORY[0x277D3F178];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
            lastPathComponent3 = [v26 lastPathComponent];
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner activate]"];
            [v25 logMessage:v24 fromFile:lastPathComponent3 fromFunction:v28 fromLineNumber:48];

            v29 = PLLogCommon();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v111 = v24;
              _os_log_debug_impl(&dword_25EDCD000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v30 = v22;
        v31 = [v30 countByEnumeratingWithState:&v97 objects:v109 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v98;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v98 != v33)
              {
                objc_enumerationMutation(v30);
              }

              [(PLAccountingOwner *)self addDependency:*(*(&v97 + 1) + 8 * i)];
            }

            v32 = [v30 countByEnumeratingWithState:&v97 objects:v109 count:16];
          }

          while (v32);
        }

        manager3 = [(PLAccountingOwner *)self manager];
        v36 = [manager3 _lastDependencyForDependencyID:v19];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v37 = objc_opt_class();
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = __29__PLAccountingOwner_activate__block_invoke_29;
          v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v96[4] = v37;
          if (activate_defaultOnce_27_0 != -1)
          {
            dispatch_once(&activate_defaultOnce_27_0, v96);
          }

          if (activate_classDebugEnabled_28_0 == 1)
          {
            v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"lastDependency=%@", v36];
            v39 = MEMORY[0x277D3F178];
            v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
            lastPathComponent4 = [v40 lastPathComponent];
            v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner activate]"];
            [v39 logMessage:v38 fromFile:lastPathComponent4 fromFunction:v42 fromLineNumber:57];

            v43 = PLLogCommon();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v111 = v38;
              _os_log_debug_impl(&dword_25EDCD000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        if (v36)
        {
          range2 = [v36 range];
          endDate = [range2 endDate];
          range3 = [(PLAccountingOwner *)self range];
          endDate2 = [range3 endDate];
          [endDate timeIntervalSinceDate:endDate2];
          v49 = v48;

          if (v49 >= -1.0)
          {
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v50 = objc_opt_class();
              v95[0] = MEMORY[0x277D85DD0];
              v95[1] = 3221225472;
              v95[2] = __29__PLAccountingOwner_activate__block_invoke_35;
              v95[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v95[4] = v50;
              if (activate_defaultOnce_33_0 != -1)
              {
                dispatch_once(&activate_defaultOnce_33_0, v95);
              }

              if (activate_classDebugEnabled_34_0 == 1)
              {
                v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency's range has surpassed the range of this owner"];
                v52 = MEMORY[0x277D3F178];
                v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
                lastPathComponent5 = [v53 lastPathComponent];
                v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner activate]"];
                [v52 logMessage:v51 fromFile:lastPathComponent5 fromFunction:v55 fromLineNumber:59];

                v56 = PLLogCommon();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v111 = v51;
                  _os_log_debug_impl(&dword_25EDCD000, v56, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }
              }
            }

            [v85 removeObject:v19];
          }
        }

        ++v18;
      }

      while (v18 != v88);
      v88 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
    }

    while (v88);
  }

  [(PLAccountingOwner *)self setObservingDependencyIDs:v85];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v57 = objc_opt_class();
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __29__PLAccountingOwner_activate__block_invoke_41;
    v94[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v94[4] = v57;
    if (activate_defaultOnce_39 != -1)
    {
      dispatch_once(&activate_defaultOnce_39, v94);
    }

    if (activate_classDebugEnabled_40 == 1)
    {
      v58 = MEMORY[0x277CCACA8];
      observingDependencyIDs = [(PLAccountingOwner *)self observingDependencyIDs];
      v60 = [v58 stringWithFormat:@"observingDependencyIDs=%@", observingDependencyIDs];

      v61 = MEMORY[0x277D3F178];
      v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
      lastPathComponent6 = [v62 lastPathComponent];
      v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner activate]"];
      [v61 logMessage:v60 fromFile:lastPathComponent6 fromFunction:v64 fromLineNumber:66];

      v65 = PLLogCommon();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  observingDependencyIDs2 = [(PLAccountingOwner *)self observingDependencyIDs];
  v67 = [observingDependencyIDs2 countByEnumeratingWithState:&v90 objects:v108 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v91;
    do
    {
      for (j = 0; j != v68; ++j)
      {
        if (*v91 != v69)
        {
          objc_enumerationMutation(observingDependencyIDs2);
        }

        v71 = *(*(&v90 + 1) + 8 * j);
        manager4 = [(PLAccountingOwner *)self manager];
        [manager4 startObservingDependencyID:v71 forOwner:self];
      }

      v68 = [observingDependencyIDs2 countByEnumeratingWithState:&v90 objects:v108 count:16];
    }

    while (v68);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v73 = objc_opt_class();
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __29__PLAccountingOwner_activate__block_invoke_47;
    v89[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v89[4] = v73;
    if (activate_defaultOnce_45 != -1)
    {
      dispatch_once(&activate_defaultOnce_45, v89);
    }

    if (activate_classDebugEnabled_46 == 1)
    {
      v74 = MEMORY[0x277CCACA8];
      observingDependencyIDs3 = [(PLAccountingOwner *)self observingDependencyIDs];
      v76 = [v74 stringWithFormat:@"observingDependencyIDs.count=%i", objc_msgSend(observingDependencyIDs3, "count")];

      v77 = MEMORY[0x277D3F178];
      v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
      lastPathComponent7 = [v78 lastPathComponent];
      v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner activate]"];
      [v77 logMessage:v76 fromFile:lastPathComponent7 fromFunction:v80 fromLineNumber:74];

      v81 = PLLogCommon();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  observingDependencyIDs4 = [(PLAccountingOwner *)self observingDependencyIDs];
  v83 = [observingDependencyIDs4 count];

  if (!v83)
  {
    [(PLAccountingOwner *)self allRun];
  }

  v84 = *MEMORY[0x277D85DE8];
}

- (PLAccountingOwnerManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (NSMutableDictionary)dependencyIDToDependenciesInRange
{
  dependencyIDToDependenciesInRange = self->_dependencyIDToDependenciesInRange;
  if (!dependencyIDToDependenciesInRange)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_dependencyIDToDependenciesInRange;
    self->_dependencyIDToDependenciesInRange = dictionary;

    dependencyIDToDependenciesInRange = self->_dependencyIDToDependenciesInRange;
  }

  return dependencyIDToDependenciesInRange;
}

- (NSMutableSet)observingDependencyIDs
{
  observingDependencyIDs = self->_observingDependencyIDs;
  if (!observingDependencyIDs)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = self->_observingDependencyIDs;
    self->_observingDependencyIDs = v4;

    observingDependencyIDs = self->_observingDependencyIDs;
  }

  return observingDependencyIDs;
}

- (void)allRun
{
  v27 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__PLAccountingOwner_allRun__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (allRun_defaultOnce != -1)
    {
      dispatch_once(&allRun_defaultOnce, block);
    }

    if (allRun_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"self=%@", self];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner allRun]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:151];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (![(PLAccountingOwner *)self hasRun])
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    runDate = self->_runDate;
    self->_runDate = monotonicDate;

    [(PLAccountingOwner *)self setRunDate:self->_runDate];
    [(PLAccountingOwner *)self run];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    observingDependencyIDs = [(PLAccountingOwner *)self observingDependencyIDs];
    v13 = [observingDependencyIDs countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(observingDependencyIDs);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          manager = [(PLAccountingOwner *)self manager];
          [manager stopObservingDependencyID:v17 forOwner:self];
        }

        v14 = [observingDependencyIDs countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v14);
    }

    [(PLAccountingOwner *)self setDependencyIDToDependenciesInRange:0];
    manager2 = [(PLAccountingOwner *)self manager];
    [manager2 canFreeOwner:self];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)deactivate
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __31__PLAccountingOwner_deactivate__block_invoke;
    v13 = &__block_descriptor_40_e5_v8__0lu32l8;
    v14 = v3;
    if (deactivate_defaultOnce_0 != -1)
    {
      dispatch_once(&deactivate_defaultOnce_0, &block);
    }

    if (deactivate_classDebugEnabled_0 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"self=%@", self, block, v11, v12, v13, v14];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
      lastPathComponent = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner deactivate]"];
      [v5 logMessage:v4 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:116];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  [(PLAccountingOwner *)self allRun];
}

- (BOOL)hasRun
{
  runDate = [(PLAccountingOwner *)self runDate];
  v3 = runDate != 0;

  return v3;
}

uint64_t __29__PLAccountingOwner_activate__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  activate_classDebugEnabled_0 = result;
  return result;
}

uint64_t __29__PLAccountingOwner_activate__block_invoke_17(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  activate_classDebugEnabled_16_0 = result;
  return result;
}

uint64_t __29__PLAccountingOwner_activate__block_invoke_23(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  activate_classDebugEnabled_22_0 = result;
  return result;
}

uint64_t __29__PLAccountingOwner_activate__block_invoke_29(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  activate_classDebugEnabled_28_0 = result;
  return result;
}

uint64_t __29__PLAccountingOwner_activate__block_invoke_35(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  activate_classDebugEnabled_34_0 = result;
  return result;
}

uint64_t __29__PLAccountingOwner_activate__block_invoke_41(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  activate_classDebugEnabled_40 = result;
  return result;
}

uint64_t __29__PLAccountingOwner_activate__block_invoke_47(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  activate_classDebugEnabled_46 = result;
  return result;
}

- (void)didReceiveDependency:(id)dependency
{
  dependencyCopy = dependency;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLAccountingOwner_didReceiveDependency___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (didReceiveDependency__defaultOnce != -1)
    {
      dispatch_once(&didReceiveDependency__defaultOnce, block);
    }

    if (didReceiveDependency__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency=%@, self=%@", dependencyCopy, self];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner didReceiveDependency:]"];
      [v7 logMessage:v6 fromFile:lastPathComponent fromFunction:v10 fromLineNumber:81];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (dependencyCopy && ![(PLAccountingOwner *)self hasRun])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __42__PLAccountingOwner_didReceiveDependency___block_invoke_56;
      v76[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v76[4] = v12;
      if (didReceiveDependency__defaultOnce_54 != -1)
      {
        dispatch_once(&didReceiveDependency__defaultOnce_54, v76);
      }

      if (didReceiveDependency__classDebugEnabled_55 == 1)
      {
        v13 = MEMORY[0x277CCACA8];
        range = [dependencyCopy range];
        range2 = [(PLAccountingOwner *)self range];
        v16 = [v13 stringWithFormat:@"dependency.range=%@, self.range=%@", range, range2];

        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
        lastPathComponent2 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner didReceiveDependency:]"];
        [v17 logMessage:v16 fromFile:lastPathComponent2 fromFunction:v20 fromLineNumber:87];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v22 = objc_opt_class();
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __42__PLAccountingOwner_didReceiveDependency___block_invoke_62;
      v75[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v75[4] = v22;
      if (didReceiveDependency__defaultOnce_60 != -1)
      {
        dispatch_once(&didReceiveDependency__defaultOnce_60, v75);
      }

      if (didReceiveDependency__classDebugEnabled_61 == 1)
      {
        v23 = MEMORY[0x277CCACA8];
        observingDependencyIDs = [(PLAccountingOwner *)self observingDependencyIDs];
        v25 = [v23 stringWithFormat:@"observingDependencyIDs=%@", observingDependencyIDs];

        v26 = MEMORY[0x277D3F178];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
        lastPathComponent3 = [v27 lastPathComponent];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner didReceiveDependency:]"];
        [v26 logMessage:v25 fromFile:lastPathComponent3 fromFunction:v29 fromLineNumber:90];

        v30 = PLLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    observingDependencyIDs2 = [(PLAccountingOwner *)self observingDependencyIDs];
    v32 = [dependencyCopy ID];
    v33 = [observingDependencyIDs2 containsObject:v32];

    if (v33)
    {
      range3 = [dependencyCopy range];
      range4 = [(PLAccountingOwner *)self range];
      v36 = [range3 overlaps:range4];

      if (v36)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v37 = objc_opt_class();
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __42__PLAccountingOwner_didReceiveDependency___block_invoke_65;
          v74[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v74[4] = v37;
          if (didReceiveDependency__defaultOnce_63 != -1)
          {
            dispatch_once(&didReceiveDependency__defaultOnce_63, v74);
          }

          if (didReceiveDependency__classDebugEnabled_64 == 1)
          {
            v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency overlaps owner's range"];
            v39 = MEMORY[0x277D3F178];
            v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
            lastPathComponent4 = [v40 lastPathComponent];
            v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner didReceiveDependency:]"];
            [v39 logMessage:v38 fromFile:lastPathComponent4 fromFunction:v42 fromLineNumber:95];

            v43 = PLLogCommon();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        [(PLAccountingOwner *)self addDependency:dependencyCopy];
      }

      range5 = [dependencyCopy range];
      endDate = [range5 endDate];
      range6 = [(PLAccountingOwner *)self range];
      endDate2 = [range6 endDate];
      [endDate timeIntervalSinceDate:endDate2];
      v49 = v48;

      if (v49 >= -1.0)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v50 = objc_opt_class();
          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v73[2] = __42__PLAccountingOwner_didReceiveDependency___block_invoke_71;
          v73[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v73[4] = v50;
          if (didReceiveDependency__defaultOnce_69 != -1)
          {
            dispatch_once(&didReceiveDependency__defaultOnce_69, v73);
          }

          if (didReceiveDependency__classDebugEnabled_70 == 1)
          {
            v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"dependency exceeds owner's range"];
            v52 = MEMORY[0x277D3F178];
            v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
            lastPathComponent5 = [v53 lastPathComponent];
            v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner didReceiveDependency:]"];
            [v52 logMessage:v51 fromFile:lastPathComponent5 fromFunction:v55 fromLineNumber:101];

            v56 = PLLogCommon();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        observingDependencyIDs3 = [(PLAccountingOwner *)self observingDependencyIDs];
        v58 = [dependencyCopy ID];
        [observingDependencyIDs3 removeObject:v58];

        manager = [(PLAccountingOwner *)self manager];
        v60 = [dependencyCopy ID];
        [manager stopObservingDependencyID:v60 forOwner:self];

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v61 = objc_opt_class();
          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __42__PLAccountingOwner_didReceiveDependency___block_invoke_77;
          v72[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v72[4] = v61;
          if (didReceiveDependency__defaultOnce_75 != -1)
          {
            dispatch_once(&didReceiveDependency__defaultOnce_75, v72);
          }

          if (didReceiveDependency__classDebugEnabled_76 == 1)
          {
            v62 = MEMORY[0x277CCACA8];
            observingDependencyIDs4 = [(PLAccountingOwner *)self observingDependencyIDs];
            v64 = [v62 stringWithFormat:@"observingDependencyIDs.count=%i", objc_msgSend(observingDependencyIDs4, "count")];

            v65 = MEMORY[0x277D3F178];
            v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
            lastPathComponent6 = [v66 lastPathComponent];
            v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner didReceiveDependency:]"];
            [v65 logMessage:v64 fromFile:lastPathComponent6 fromFunction:v68 fromLineNumber:108];

            v69 = PLLogCommon();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }
          }
        }

        observingDependencyIDs5 = [(PLAccountingOwner *)self observingDependencyIDs];
        v71 = [observingDependencyIDs5 count];

        if (!v71)
        {
          [(PLAccountingOwner *)self allRun];
        }
      }
    }
  }
}

uint64_t __42__PLAccountingOwner_didReceiveDependency___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveDependency__classDebugEnabled = result;
  return result;
}

uint64_t __42__PLAccountingOwner_didReceiveDependency___block_invoke_56(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveDependency__classDebugEnabled_55 = result;
  return result;
}

uint64_t __42__PLAccountingOwner_didReceiveDependency___block_invoke_62(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveDependency__classDebugEnabled_61 = result;
  return result;
}

uint64_t __42__PLAccountingOwner_didReceiveDependency___block_invoke_65(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveDependency__classDebugEnabled_64 = result;
  return result;
}

uint64_t __42__PLAccountingOwner_didReceiveDependency___block_invoke_71(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveDependency__classDebugEnabled_70 = result;
  return result;
}

uint64_t __42__PLAccountingOwner_didReceiveDependency___block_invoke_77(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  didReceiveDependency__classDebugEnabled_76 = result;
  return result;
}

uint64_t __31__PLAccountingOwner_deactivate__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  deactivate_classDebugEnabled_0 = result;
  return result;
}

- (void)addDependency:(id)dependency
{
  dependencyCopy = dependency;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__PLAccountingOwner_addDependency___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (addDependency__defaultOnce != -1)
    {
      dispatch_once(&addDependency__defaultOnce, block);
    }

    if (addDependency__classDebugEnabled == 1)
    {
      dependencyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"self=%@, dependencyInRange=%@", self, dependencyCopy];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner addDependency:]"];
      [v7 logMessage:dependencyCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:139];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  dependencyIDToDependenciesInRange = [(PLAccountingOwner *)self dependencyIDToDependenciesInRange];
  v13 = [dependencyCopy ID];
  array = [dependencyIDToDependenciesInRange objectForKeyedSubscript:v13];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    dependencyIDToDependenciesInRange2 = [(PLAccountingOwner *)self dependencyIDToDependenciesInRange];
    v16 = [dependencyCopy ID];
    [dependencyIDToDependenciesInRange2 setObject:array forKeyedSubscript:v16];
  }

  [array addObject:dependencyCopy];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __35__PLAccountingOwner_addDependency___block_invoke_86;
    v30 = &__block_descriptor_40_e5_v8__0lu32l8;
    v31 = v17;
    if (addDependency__defaultOnce_84 != -1)
    {
      dispatch_once(&addDependency__defaultOnce_84, &v27);
    }

    if (addDependency__classDebugEnabled_85 == 1)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [dependencyCopy ID];
      dependencyIDToDependenciesInRange3 = [(PLAccountingOwner *)self dependencyIDToDependenciesInRange];
      v21 = [v18 stringWithFormat:@"dependencyInRange.ID=%@, dependencyIDToDependenciesInRange=%@", v19, dependencyIDToDependenciesInRange3, v27, v28, v29, v30, v31];

      v22 = MEMORY[0x277D3F178];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/General Owner Dependency/PLAccountingOwner.m"];
      lastPathComponent2 = [v23 lastPathComponent];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingOwner addDependency:]"];
      [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:147];

      v26 = PLLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

uint64_t __35__PLAccountingOwner_addDependency___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addDependency__classDebugEnabled = result;
  return result;
}

uint64_t __35__PLAccountingOwner_addDependency___block_invoke_86(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addDependency__classDebugEnabled_85 = result;
  return result;
}

uint64_t __27__PLAccountingOwner_allRun__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  allRun_classDebugEnabled = result;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PLAccountingOwner *)self ID];
  range = [(PLAccountingOwner *)self range];
  v6 = [v3 stringWithFormat:@"(ID=%@, range=%@)", v4, range];

  return v6;
}

@end