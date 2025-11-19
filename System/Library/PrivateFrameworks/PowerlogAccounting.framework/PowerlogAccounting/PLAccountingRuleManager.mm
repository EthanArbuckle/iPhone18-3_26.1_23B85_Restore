@interface PLAccountingRuleManager
+ (id)decryptData:(id)a3 withKey:(id)a4;
+ (id)firstLineWithFile:(id)a3;
- (NSMutableDictionary)ruleIDToRule;
- (PLAccountingRuleManager)init;
- (id)ruleForRuleID:(id)a3;
- (id)rulesFromFileWithForceLoad:(BOOL)a3;
- (void)indexRule:(id)a3;
- (void)loadRules;
@end

@implementation PLAccountingRuleManager

- (NSMutableDictionary)ruleIDToRule
{
  ruleIDToRule = self->_ruleIDToRule;
  if (!ruleIDToRule)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_ruleIDToRule;
    self->_ruleIDToRule = v4;

    ruleIDToRule = self->_ruleIDToRule;
  }

  return ruleIDToRule;
}

- (PLAccountingRuleManager)init
{
  v5.receiver = self;
  v5.super_class = PLAccountingRuleManager;
  v2 = [(PLAccountingRuleManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PLAccountingRuleManager *)v2 loadRules];
  }

  return v3;
}

- (id)ruleForRuleID:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLAccountingRuleManager_ruleForRuleID___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (ruleForRuleID__defaultOnce != -1)
    {
      dispatch_once(&ruleForRuleID__defaultOnce, block);
    }

    if (ruleForRuleID__classDebugEnabled == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [(PLAccountingRuleManager *)self ruleIDToRule];
      v8 = [v6 stringWithFormat:@"ruleID=%@, ruleIDToRule=%@", v4, v7];

      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager ruleForRuleID:]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:37];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v14 = [(PLAccountingRuleManager *)self ruleIDToRule];
  v15 = [v14 objectForKeyedSubscript:v4];

  return v15;
}

uint64_t __41__PLAccountingRuleManager_ruleForRuleID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ruleForRuleID__classDebugEnabled = result;
  return result;
}

- (void)indexRule:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __37__PLAccountingRuleManager_indexRule___block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v5;
    if (indexRule__defaultOnce_1 != -1)
    {
      dispatch_once(&indexRule__defaultOnce_1, &block);
    }

    if (indexRule__classDebugEnabled_1 == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"rule=%@", v4, block, v15, v16, v17, v18];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager indexRule:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:42];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v12 = [(PLAccountingRuleManager *)self ruleIDToRule];
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "entryID")}];
  [v12 setObject:v4 forKeyedSubscript:v13];
}

uint64_t __37__PLAccountingRuleManager_indexRule___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  indexRule__classDebugEnabled_1 = result;
  return result;
}

- (void)loadRules
{
  v124 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3F2A0] sharedCore];
  v4 = [v3 storage];
  v5 = [objc_opt_class() rulesEntryKey];
  v91 = [v4 entriesForKey:v5];

  v6 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = __36__PLAccountingRuleManager_loadRules__block_invoke;
    v117[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v117[4] = v7;
    if (loadRules_defaultOnce != -1)
    {
      dispatch_once(&loadRules_defaultOnce, v117);
    }

    if (loadRules_classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"rulesFromDB=%@", v91];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager loadRules]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:62];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v14 = -[PLAccountingRuleManager rulesFromFileWithForceLoad:](self, "rulesFromFileWithForceLoad:", [v91 count] == 0);
  v88 = v14;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v15 = objc_opt_class();
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __36__PLAccountingRuleManager_loadRules__block_invoke_25;
    v116[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v116[4] = v15;
    if (loadRules_defaultOnce_23 != -1)
    {
      dispatch_once(&loadRules_defaultOnce_23, v116);
    }

    if (loadRules_classDebugEnabled_24 == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"rulesFromFile=%@", v14];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      v19 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager loadRules]"];
      [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:67];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v14 = v88;
    }
  }

  if (v14)
  {
    v22 = [MEMORY[0x277CBEB98] setWithArray:v91];
    v23 = [MEMORY[0x277CBEB98] setWithArray:v14];
    v90 = v22;
    v24 = [v22 mutableCopy];
    v89 = v23;
    [v24 minusSet:v23];
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v112 objects:v123 count:16];
    v94 = v25;
    if (v26)
    {
      v27 = v26;
      v28 = *v113;
      do
      {
        v29 = 0;
        do
        {
          if (*v113 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v112 + 1) + 8 * v29);
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v31 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __36__PLAccountingRuleManager_loadRules__block_invoke_32;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v31;
            if (loadRules_defaultOnce_30 != -1)
            {
              dispatch_once(&loadRules_defaultOnce_30, block);
            }

            if (loadRules_classDebugEnabled_31 == 1)
            {
              v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"ruleToDelete=%@", v30];
              v33 = MEMORY[0x277D3F178];
              v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
              v35 = [v34 lastPathComponent];
              v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager loadRules]"];
              [v33 logMessage:v32 fromFile:v35 fromFunction:v36 fromLineNumber:78];

              v37 = PLLogCommon();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v122 = v32;
                _os_log_debug_impl(&dword_25EDCD000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v6 = 0x277D3F000uLL;
              v25 = v94;
            }
          }

          v38 = [MEMORY[0x277D3F2A0] sharedCore];
          v39 = [v38 storage];
          [v39 deleteEntry:v30];

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v112 objects:v123 count:16];
      }

      while (v27);
    }

    v40 = [v89 mutableCopy];
    [v40 minusSet:v90];
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v41 = v40;
    v42 = [v41 countByEnumeratingWithState:&v107 objects:v120 count:16];
    v93 = v41;
    if (v42)
    {
      v43 = v42;
      v44 = *v108;
      do
      {
        v45 = 0;
        do
        {
          if (*v108 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v107 + 1) + 8 * v45);
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v47 = objc_opt_class();
            v106[0] = MEMORY[0x277D85DD0];
            v106[1] = 3221225472;
            v106[2] = __36__PLAccountingRuleManager_loadRules__block_invoke_38;
            v106[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v106[4] = v47;
            if (loadRules_defaultOnce_36 != -1)
            {
              dispatch_once(&loadRules_defaultOnce_36, v106);
            }

            if (loadRules_classDebugEnabled_37 == 1)
            {
              v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"ruleToAdd=%@", v46];
              v49 = MEMORY[0x277D3F178];
              v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
              v51 = [v50 lastPathComponent];
              v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager loadRules]"];
              [v49 logMessage:v48 fromFile:v51 fromFunction:v52 fromLineNumber:86];

              v53 = PLLogCommon();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v122 = v48;
                _os_log_debug_impl(&dword_25EDCD000, v53, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v6 = 0x277D3F000uLL;
              v41 = v93;
            }
          }

          v54 = [MEMORY[0x277D3F2A0] sharedCore];
          v55 = [v54 storage];
          [v55 blockingWriteEntry:v46 withCompletionBlock:&__block_literal_global_14];

          [(PLAccountingRuleManager *)self indexRule:v46];
          ++v45;
        }

        while (v43 != v45);
        v43 = [v41 countByEnumeratingWithState:&v107 objects:v120 count:16];
      }

      while (v43);
    }

    v56 = [v90 mutableCopy];
    [v56 intersectSet:v89];
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v57 = v56;
    v58 = [v57 countByEnumeratingWithState:&v102 objects:v119 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v103;
      v61 = &dependencyIDsForOwner__defaultOnce;
      v92 = self;
      do
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v103 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v63 = *(*(&v102 + 1) + 8 * i);
          if ([*(v6 + 384) debugEnabled])
          {
            v64 = objc_opt_class();
            v101[0] = MEMORY[0x277D85DD0];
            v101[1] = 3221225472;
            v101[2] = __36__PLAccountingRuleManager_loadRules__block_invoke_2;
            v101[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v101[4] = v64;
            if (v61[482] != -1)
            {
              dispatch_once(&loadRules_defaultOnce_43, v101);
            }

            if (loadRules_classDebugEnabled_44 == 1)
            {
              v65 = v57;
              v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"ruleInBoth=%@", v63];
              v67 = MEMORY[0x277D3F178];
              v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
              v69 = [v68 lastPathComponent];
              v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager loadRules]"];
              [v67 logMessage:v66 fromFile:v69 fromFunction:v70 fromLineNumber:95];

              v71 = PLLogCommon();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v122 = v66;
                _os_log_debug_impl(&dword_25EDCD000, v71, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v6 = 0x277D3F000;
              v57 = v65;
              self = v92;
              v61 = &dependencyIDsForOwner__defaultOnce;
            }
          }

          [(PLAccountingRuleManager *)self indexRule:v63];
        }

        v59 = [v57 countByEnumeratingWithState:&v102 objects:v119 count:16];
      }

      while (v59);
    }

    v72 = v90;
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v72 = v91;
    v73 = [v72 countByEnumeratingWithState:&v97 objects:v118 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v98;
      v76 = &dependencyIDsForOwner__defaultOnce;
      v95 = *v98;
      do
      {
        for (j = 0; j != v74; ++j)
        {
          if (*v98 != v75)
          {
            objc_enumerationMutation(v72);
          }

          v78 = *(*(&v97 + 1) + 8 * j);
          if ([*(v6 + 384) debugEnabled])
          {
            v79 = objc_opt_class();
            v96[0] = MEMORY[0x277D85DD0];
            v96[1] = 3221225472;
            v96[2] = __36__PLAccountingRuleManager_loadRules__block_invoke_50;
            v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v96[4] = v79;
            if (v76[484] != -1)
            {
              dispatch_once(&loadRules_defaultOnce_48, v96);
            }

            if (loadRules_classDebugEnabled_49 == 1)
            {
              v80 = v72;
              v81 = [MEMORY[0x277CCACA8] stringWithFormat:@"ruleFromDB=%@", v78];
              v82 = MEMORY[0x277D3F178];
              v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
              v84 = [v83 lastPathComponent];
              v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager loadRules]"];
              [v82 logMessage:v81 fromFile:v84 fromFunction:v85 fromLineNumber:102];

              v86 = PLLogCommon();
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v122 = v81;
                _os_log_debug_impl(&dword_25EDCD000, v86, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v6 = 0x277D3F000;
              v72 = v80;
              v75 = v95;
              v76 = &dependencyIDsForOwner__defaultOnce;
            }
          }

          [(PLAccountingRuleManager *)self indexRule:v78];
        }

        v74 = [v72 countByEnumeratingWithState:&v97 objects:v118 count:16];
      }

      while (v74);
    }
  }

  v87 = *MEMORY[0x277D85DE8];
}

uint64_t __36__PLAccountingRuleManager_loadRules__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  loadRules_classDebugEnabled = result;
  return result;
}

uint64_t __36__PLAccountingRuleManager_loadRules__block_invoke_25(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  loadRules_classDebugEnabled_24 = result;
  return result;
}

uint64_t __36__PLAccountingRuleManager_loadRules__block_invoke_32(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  loadRules_classDebugEnabled_31 = result;
  return result;
}

uint64_t __36__PLAccountingRuleManager_loadRules__block_invoke_38(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  loadRules_classDebugEnabled_37 = result;
  return result;
}

uint64_t __36__PLAccountingRuleManager_loadRules__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  loadRules_classDebugEnabled_44 = result;
  return result;
}

uint64_t __36__PLAccountingRuleManager_loadRules__block_invoke_50(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  loadRules_classDebugEnabled_49 = result;
  return result;
}

- (id)rulesFromFileWithForceLoad:(BOOL)a3
{
  v105 = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_class() rulesPath];
  if (v5)
  {
    v6 = [objc_opt_class() firstLineWithFile:v5];
    v7 = 0x277CCA000uLL;
    if ([v6 rangeOfString:@"Error"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** ERROR: parsing error in file %@", v5];
      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      v34 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
      [v32 logMessage:v8 fromFile:v34 fromFunction:v35 fromLineNumber:120];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v91 = 0;
      goto LABEL_65;
    }

    v8 = [v6 substringFromIndex:3];
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"%@_storedHash", v11];

    v13 = 0x277D3F000uLL;
    v14 = [MEMORY[0x277D3F180] objectForKey:v12];
    v88 = self;
    v87 = v14;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v15 = objc_opt_class();
      v101[0] = MEMORY[0x277D85DD0];
      v101[1] = 3221225472;
      v101[2] = __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke;
      v101[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v101[4] = v15;
      if (rulesFromFileWithForceLoad__defaultOnce != -1)
      {
        dispatch_once(&rulesFromFileWithForceLoad__defaultOnce, v101);
      }

      if (rulesFromFileWithForceLoad__classDebugEnabled == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"firstLine=%@, fileHash=%@, storedHash=%@", v6, v8, v14];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
        [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:128];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        v14 = v87;
        v7 = 0x277CCA000uLL;
        self = v88;
        v13 = 0x277D3F000uLL;
      }
    }

    if (!a3 && v14 && [v8 isEqualToString:v14])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_69;
      }

      v22 = objc_opt_class();
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_71;
      v100[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v100[4] = v22;
      if (rulesFromFileWithForceLoad__defaultOnce_69 != -1)
      {
        dispatch_once(&rulesFromFileWithForceLoad__defaultOnce_69, v100);
      }

      if (rulesFromFileWithForceLoad__classDebugEnabled_70 != 1)
      {
LABEL_69:
        v91 = 0;
        goto LABEL_64;
      }

      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"hashes match, skipping parsing"];
      v90 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      v25 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
      [v90 logMessage:v23 fromFile:v25 fromFunction:v26 fromLineNumber:132];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v91 = 0;
    }

    else
    {
      [MEMORY[0x277D3F180] setObject:v8 forKey:v12 saveToDisk:1];
      v36 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
      v86 = v36;
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v37 = objc_opt_class();
        v99[0] = MEMORY[0x277D85DD0];
        v99[1] = 3221225472;
        v99[2] = __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_78;
        v99[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v99[4] = v37;
        if (rulesFromFileWithForceLoad__defaultOnce_76 != -1)
        {
          dispatch_once(&rulesFromFileWithForceLoad__defaultOnce_76, v99);
        }

        if (rulesFromFileWithForceLoad__classDebugEnabled_77 == 1)
        {
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"fileBytes.length=%lu", objc_msgSend(v36, "length")];
          v39 = MEMORY[0x277D3F178];
          v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
          v41 = [v40 lastPathComponent];
          v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
          [v39 logMessage:v38 fromFile:v41 fromFunction:v42 fromLineNumber:141];

          v43 = PLLogCommon();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }

          v7 = 0x277CCA000uLL;
          self = v88;
          v13 = 0x277D3F000uLL;
          v36 = v86;
        }
      }

      v81 = [v36 subdataWithRange:{89, objc_msgSend(v36, "length") - 89}];
      v44 = [objc_opt_class() decryptData:v81 withKey:@"563e097d3dea5165"];
      v45 = MEMORY[0x277CCACA8];
      v80 = v44;
      v46 = [v45 stringWithUTF8String:{objc_msgSend(v80, "bytes")}];
      v47 = [MEMORY[0x277CCA900] newlineCharacterSet];
      v79 = v46;
      v48 = [v46 componentsSeparatedByCharactersInSet:v47];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v49 = objc_opt_class();
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_88;
        v98[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v98[4] = v49;
        if (rulesFromFileWithForceLoad__defaultOnce_86 != -1)
        {
          dispatch_once(&rulesFromFileWithForceLoad__defaultOnce_86, v98);
        }

        if (rulesFromFileWithForceLoad__classDebugEnabled_87 == 1)
        {
          v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"allLines=%@", v48];
          v51 = MEMORY[0x277D3F178];
          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
          v53 = [v52 lastPathComponent];
          v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
          [v51 logMessage:v50 fromFile:v53 fromFunction:v54 fromLineNumber:150];

          v55 = PLLogCommon();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }

          v7 = 0x277CCA000uLL;
          self = v88;
          v13 = 0x277D3F000uLL;
        }
      }

      v82 = v12;
      v83 = v8;
      v84 = v6;
      v85 = v5;
      v91 = [MEMORY[0x277CBEB18] array];
      v56 = [MEMORY[0x277CBEAA8] monotonicDate];
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      obj = v48;
      v57 = [obj countByEnumeratingWithState:&v94 objects:v104 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v95;
        do
        {
          v60 = 0;
          do
          {
            if (*v95 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v61 = *(*(&v94 + 1) + 8 * v60);
            if ([*(v13 + 384) debugEnabled])
            {
              v62 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_96;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v62;
              if (rulesFromFileWithForceLoad__defaultOnce_94 != -1)
              {
                dispatch_once(&rulesFromFileWithForceLoad__defaultOnce_94, block);
              }

              if (rulesFromFileWithForceLoad__classDebugEnabled_95 == 1)
              {
                v63 = [*(v7 + 3240) stringWithFormat:@"line=%@", v61];
                v64 = MEMORY[0x277D3F178];
                v65 = [*(v7 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
                v66 = [v65 lastPathComponent];
                v67 = [*(v7 + 3240) stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
                [v64 logMessage:v63 fromFile:v66 fromFunction:v67 fromLineNumber:156];

                v68 = PLLogCommon();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v103 = v63;
                  _os_log_debug_impl(&dword_25EDCD000, v68, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v7 = 0x277CCA000uLL;
                self = v88;
                v13 = 0x277D3F000uLL;
              }
            }

            v69 = [(PLAccountingRuleManager *)self ruleWithString:v61 withEntryDate:v56];
            if ([*(v13 + 384) debugEnabled])
            {
              v70 = objc_opt_class();
              v92[0] = MEMORY[0x277D85DD0];
              v92[1] = 3221225472;
              v92[2] = __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_102;
              v92[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v92[4] = v70;
              if (rulesFromFileWithForceLoad__defaultOnce_100 != -1)
              {
                dispatch_once(&rulesFromFileWithForceLoad__defaultOnce_100, v92);
              }

              if (rulesFromFileWithForceLoad__classDebugEnabled_101 == 1)
              {
                v71 = [*(v7 + 3240) stringWithFormat:@"rule=%@", v69];
                v72 = MEMORY[0x277D3F178];
                v73 = [*(v7 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
                v74 = [v73 lastPathComponent];
                v75 = [*(v7 + 3240) stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
                [v72 logMessage:v71 fromFile:v74 fromFunction:v75 fromLineNumber:160];

                v76 = PLLogCommon();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v103 = v71;
                  _os_log_debug_impl(&dword_25EDCD000, v76, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v7 = 0x277CCA000;
                self = v88;
                v13 = 0x277D3F000;
              }
            }

            if (v69)
            {
              [v91 addObject:v69];
            }

            ++v60;
          }

          while (v58 != v60);
          v58 = [obj countByEnumeratingWithState:&v94 objects:v104 count:16];
        }

        while (v58);
      }

      [(PLAccountingRuleManager *)self setRegex:0];
      v6 = v84;
      v5 = v85;
      v12 = v82;
      v8 = v83;
      v23 = v86;
      v14 = v87;
      v27 = v81;
    }

LABEL_64:
LABEL_65:

    goto LABEL_66;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** ERROR: missing rules file %@", 0];
  v28 = MEMORY[0x277D3F178];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
  v30 = [v29 lastPathComponent];
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingRuleManager rulesFromFileWithForceLoad:]"];
  [v28 logMessage:v6 fromFile:v30 fromFunction:v31 fromLineNumber:111];

  v8 = PLLogCommon();
  v91 = 0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLAccountingDependency activate];
    v91 = 0;
  }

LABEL_66:

  v77 = *MEMORY[0x277D85DE8];

  return v91;
}

uint64_t __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rulesFromFileWithForceLoad__classDebugEnabled = result;
  return result;
}

uint64_t __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_71(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rulesFromFileWithForceLoad__classDebugEnabled_70 = result;
  return result;
}

uint64_t __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_78(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rulesFromFileWithForceLoad__classDebugEnabled_77 = result;
  return result;
}

uint64_t __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_88(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rulesFromFileWithForceLoad__classDebugEnabled_87 = result;
  return result;
}

uint64_t __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_96(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rulesFromFileWithForceLoad__classDebugEnabled_95 = result;
  return result;
}

uint64_t __54__PLAccountingRuleManager_rulesFromFileWithForceLoad___block_invoke_102(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  rulesFromFileWithForceLoad__classDebugEnabled_101 = result;
  return result;
}

+ (id)firstLineWithFile:(id)a3
{
  MEMORY[0x28223BE20](a1, a2, a3);
  v4 = v3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = v3;
  v6 = fopen([v4 UTF8String], "r");
  if (v6)
  {
    v7 = v6;
    v19 = 0;
    v8 = fscanf(v6, "%4096[^\n]%n%*c", v20, &v19);
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__PLAccountingRuleManager_firstLineWithFile___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v9;
      if (firstLineWithFile__defaultOnce != -1)
      {
        dispatch_once(&firstLineWithFile__defaultOnce, block);
      }

      if (firstLineWithFile__classDebugEnabled == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"buffer=%s, bytesRead=%i", v20, v19];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
        v13 = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAccountingRuleManager firstLineWithFile:]"];
        [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:189];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }
      }
    }

    fclose(v7);
    if (v8)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v20];
    }

    else
    {
      v6 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __45__PLAccountingRuleManager_firstLineWithFile___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  firstLineWithFile__classDebugEnabled = result;
  return result;
}

+ (id)decryptData:(id)a3 withKey:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  key[0] = 0;
  key[1] = 0;
  v30 = 0;
  [a4 getCString:key maxLength:17 encoding:4];
  dataOut = malloc_type_malloc([v5 length] + 16, 0x63EE837BuLL);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v7 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__PLAccountingRuleManager_decryptData_withKey___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v7;
    if (decryptData_withKey__defaultOnce != -1)
    {
      dispatch_once(&decryptData_withKey__defaultOnce, block);
    }

    if (decryptData_withKey__classDebugEnabled == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"encryptedData.length=%lu", objc_msgSend(v5, "length")];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAccountingRuleManager decryptData:withKey:]"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:215];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v27 = 0;
  v14 = CCCrypt(1u, 0, 3u, key, 0x10uLL, 0, [v5 bytes], objc_msgSend(v5, "length"), dataOut, objc_msgSend(v5, "length") + 16, &v27);
  v15 = 0;
  v16 = v27;
  *(dataOut + v27) = 0;
  if (!v14)
  {
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:dataOut length:v16 + 1];
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __47__PLAccountingRuleManager_decryptData_withKey___block_invoke_113;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v17;
    if (decryptData_withKey__defaultOnce_111 != -1)
    {
      dispatch_once(&decryptData_withKey__defaultOnce_111, v26);
    }

    if (decryptData_withKey__classDebugEnabled_112 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"numBytesDecrypted=%lu", v27];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingRuleManager.m"];
      v21 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAccountingRuleManager decryptData:withKey:]"];
      [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:236];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  free(dataOut);

  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __47__PLAccountingRuleManager_decryptData_withKey___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  decryptData_withKey__classDebugEnabled = result;
  return result;
}

uint64_t __47__PLAccountingRuleManager_decryptData_withKey___block_invoke_113(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  decryptData_withKey__classDebugEnabled_112 = result;
  return result;
}

@end