@interface PLAccountingDistributionRuleManager
+ (id)rulesPath;
+ (id)sharedInstance;
- (NSMutableDictionary)distributionIDToDistributionRules;
- (NSMutableDictionary)rootNodeIDToNodeIDToDistributionRule;
- (id)distributionRuleForRootNodeID:(id)d andNodeID:(id)iD;
- (id)distributionRulesForDistributionID:(id)d;
- (id)regex;
- (id)ruleWithString:(id)string withEntryDate:(id)date;
- (void)indexRule:(id)rule;
@end

@implementation PLAccountingDistributionRuleManager

+ (id)sharedInstance
{
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  storageLocked = [storage storageLocked];

  if (storageLocked)
  {
    v6 = 0;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PLAccountingDistributionRuleManager_sharedInstance__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (sharedInstance_onceToken_0 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_0, block);
    }

    v6 = sharedInstance_sharedInstance_0;
  }

  return v6;
}

- (NSMutableDictionary)distributionIDToDistributionRules
{
  distributionIDToDistributionRules = self->_distributionIDToDistributionRules;
  if (!distributionIDToDistributionRules)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_distributionIDToDistributionRules;
    self->_distributionIDToDistributionRules = dictionary;

    distributionIDToDistributionRules = self->_distributionIDToDistributionRules;
  }

  return distributionIDToDistributionRules;
}

- (NSMutableDictionary)rootNodeIDToNodeIDToDistributionRule
{
  rootNodeIDToNodeIDToDistributionRule = self->_rootNodeIDToNodeIDToDistributionRule;
  if (!rootNodeIDToNodeIDToDistributionRule)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_rootNodeIDToNodeIDToDistributionRule;
    self->_rootNodeIDToNodeIDToDistributionRule = dictionary;

    rootNodeIDToNodeIDToDistributionRule = self->_rootNodeIDToNodeIDToDistributionRule;
  }

  return rootNodeIDToNodeIDToDistributionRule;
}

uint64_t __53__PLAccountingDistributionRuleManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance_0 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (id)distributionRuleForRootNodeID:(id)d andNodeID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__PLAccountingDistributionRuleManager_distributionRuleForRootNodeID_andNodeID___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (distributionRuleForRootNodeID_andNodeID__defaultOnce != -1)
    {
      dispatch_once(&distributionRuleForRootNodeID_andNodeID__defaultOnce, block);
    }

    if (distributionRuleForRootNodeID_andNodeID__classDebugEnabled == 1)
    {
      iDCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeID=%@, nodeID=%@", dCopy, iDCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingDistributionRuleManager.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionRuleManager distributionRuleForRootNodeID:andNodeID:]"];
      [v10 logMessage:iDCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:36];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  rootNodeIDToNodeIDToDistributionRule = [(PLAccountingDistributionRuleManager *)self rootNodeIDToNodeIDToDistributionRule];
  v16 = [rootNodeIDToNodeIDToDistributionRule objectForKeyedSubscript:dCopy];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v17 = objc_opt_class();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __79__PLAccountingDistributionRuleManager_distributionRuleForRootNodeID_andNodeID___block_invoke_18;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v17;
    if (distributionRuleForRootNodeID_andNodeID__defaultOnce_16 != -1)
    {
      dispatch_once(&distributionRuleForRootNodeID_andNodeID__defaultOnce_16, v26);
    }

    if (distributionRuleForRootNodeID_andNodeID__classDebugEnabled_17 == 1)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"nodeIDToDistributionRule=%@", v16];
      v19 = MEMORY[0x277D3F178];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingDistributionRuleManager.m"];
      lastPathComponent2 = [v20 lastPathComponent];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionRuleManager distributionRuleForRootNodeID:andNodeID:]"];
      [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:40];

      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if (v16)
  {
    v24 = [v16 objectForKeyedSubscript:iDCopy];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t __79__PLAccountingDistributionRuleManager_distributionRuleForRootNodeID_andNodeID___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  distributionRuleForRootNodeID_andNodeID__classDebugEnabled = result;
  return result;
}

uint64_t __79__PLAccountingDistributionRuleManager_distributionRuleForRootNodeID_andNodeID___block_invoke_18(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  distributionRuleForRootNodeID_andNodeID__classDebugEnabled_17 = result;
  return result;
}

- (id)distributionRulesForDistributionID:(id)d
{
  dCopy = d;
  distributionIDToDistributionRules = [(PLAccountingDistributionRuleManager *)self distributionIDToDistributionRules];
  v6 = [distributionIDToDistributionRules objectForKeyedSubscript:dCopy];

  return v6;
}

- (id)regex
{
  regex = self->_regex;
  if (!regex)
  {
    v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([-.\\w]*) -> .* \\[label=([-\\w]*): ([-\\w]*)]" options:0 error:0];
    v5 = self->_regex;
    self->_regex = v4;

    regex = self->_regex;
  }

  return regex;
}

+ (id)rulesPath
{
  v2 = MEMORY[0x277CCACA8];
  kPLDeviceClassName = [MEMORY[0x277D3F208] kPLDeviceClassName];
  v4 = [v2 stringWithFormat:@"Distribution_Rules_%@.txt", kPLDeviceClassName];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  stringByDeletingPathExtension = [(__CFString *)v4 stringByDeletingPathExtension];
  pathExtension = [(__CFString *)v4 pathExtension];
  v8 = [v5 pathForResource:stringByDeletingPathExtension ofType:pathExtension];

  if (!v8)
  {
    v9 = MEMORY[0x277CCACA8];
    kPLDeviceClassName2 = [MEMORY[0x277D3F208] kPLDeviceClassName];
    v11 = [v9 stringWithFormat:@"ERROR: Could not find distribution rules file for %@", kPLDeviceClassName2];

    v12 = MEMORY[0x277D3F178];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingDistributionRuleManager.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLAccountingDistributionRuleManager rulesPath]"];
    [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:87];

    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PLAccountingDependency activate];
    }

    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = @"Distribution_Rules_N41.txt";
    stringByDeletingPathExtension2 = [@"Distribution_Rules_N41.txt" stringByDeletingPathExtension];
    pathExtension2 = [@"Distribution_Rules_N41.txt" pathExtension];
    v8 = [v17 pathForResource:stringByDeletingPathExtension2 ofType:pathExtension2];
  }

  return v8;
}

- (id)ruleWithString:(id)string withEntryDate:(id)date
{
  stringCopy = string;
  dateCopy = date;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__PLAccountingDistributionRuleManager_ruleWithString_withEntryDate___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (ruleWithString_withEntryDate__defaultOnce != -1)
    {
      dispatch_once(&ruleWithString_withEntryDate__defaultOnce, block);
    }

    if (ruleWithString_withEntryDate__classDebugEnabled == 1)
    {
      dateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"str=%@, entryDate=%@", stringCopy, dateCopy];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingDistributionRuleManager.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionRuleManager ruleWithString:withEntryDate:]"];
      [v10 logMessage:dateCopy fromFile:lastPathComponent fromFunction:v13 fromLineNumber:98];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  regex = [(PLAccountingDistributionRuleManager *)self regex];
  v16 = [regex firstMatchInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];

  if (v16)
  {
    v17 = [v16 rangeAtIndex:1];
    v19 = [stringCopy substringWithRange:{v17, v18}];
    v20 = +[PLAccountingNodeManager sharedInstance];
    v21 = [v20 nodeIDForNodeName:v19 isPermanent:1];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v22 = objc_opt_class();
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __68__PLAccountingDistributionRuleManager_ruleWithString_withEntryDate___block_invoke_45;
      v65[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v65[4] = v22;
      if (ruleWithString_withEntryDate__defaultOnce_43 != -1)
      {
        dispatch_once(&ruleWithString_withEntryDate__defaultOnce_43, v65);
      }

      if (ruleWithString_withEntryDate__classDebugEnabled_44 == 1)
      {
        v56 = dateCopy;
        v60 = v19;
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"nodeName=%@, nodeID=%@", v19, v21];
        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingDistributionRuleManager.m"];
        lastPathComponent2 = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionRuleManager ruleWithString:withEntryDate:]"];
        [v24 logMessage:v23 fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:109];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [PLAccountingDependency activate];
        }

        dateCopy = v56;
        v19 = v60;
      }
    }

    if (v21)
    {
      v29 = [v16 rangeAtIndex:2];
      v31 = [stringCopy substringWithRange:{v29, v30}];
      v32 = +[PLAccountingNodeManager sharedInstance];
      v59 = [v32 nodeIDForNodeName:v31 isPermanent:1];

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v33 = objc_opt_class();
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __68__PLAccountingDistributionRuleManager_ruleWithString_withEntryDate___block_invoke_51;
        v64[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v64[4] = v33;
        if (ruleWithString_withEntryDate__defaultOnce_49 != -1)
        {
          dispatch_once(&ruleWithString_withEntryDate__defaultOnce_49, v64);
        }

        if (ruleWithString_withEntryDate__classDebugEnabled_50 == 1)
        {
          v61 = v19;
          v54 = v31;
          v57 = dateCopy;
          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeName=%@, rootNodeID=%@", v31, v59];
          v35 = MEMORY[0x277D3F178];
          v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingDistributionRuleManager.m"];
          lastPathComponent3 = [v36 lastPathComponent];
          v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionRuleManager ruleWithString:withEntryDate:]"];
          [v35 logMessage:v34 fromFile:lastPathComponent3 fromFunction:v38 fromLineNumber:115];

          v39 = PLLogCommon();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            [PLAccountingDependency activate];
          }

          v31 = v54;
          dateCopy = v57;
          v19 = v61;
        }
      }

      v40 = v59;
      if (v59)
      {
        v62 = v19;
        v41 = dateCopy;
        v42 = [v16 rangeAtIndex:3];
        v44 = [stringCopy substringWithRange:{v42, v43}];
        v45 = [PLAccountingEngine distributionIDForDistributionName:v44];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v46 = objc_opt_class();
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __68__PLAccountingDistributionRuleManager_ruleWithString_withEntryDate___block_invoke_58;
          v63[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v63[4] = v46;
          if (ruleWithString_withEntryDate__defaultOnce_56 != -1)
          {
            dispatch_once(&ruleWithString_withEntryDate__defaultOnce_56, v63);
          }

          if (ruleWithString_withEntryDate__classDebugEnabled_57 == 1)
          {
            v55 = v31;
            v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"distributionName=%@, distributionID=%@", v44, v45];
            v58 = MEMORY[0x277D3F178];
            v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingDistributionRuleManager.m"];
            lastPathComponent4 = [v48 lastPathComponent];
            v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionRuleManager ruleWithString:withEntryDate:]"];
            [v58 logMessage:v47 fromFile:lastPathComponent4 fromFunction:v50 fromLineNumber:120];

            v51 = PLLogCommon();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              [PLAccountingDependency activate];
            }

            v31 = v55;
            v40 = v59;
          }
        }

        if (v45)
        {
          v52 = [[PLAccountingDistributionRuleEntry alloc] initWithNodeID:v21 withRootNodeID:v40 withDistributionID:v45 withEntryDate:v41];
        }

        else
        {
          v52 = 0;
        }

        dateCopy = v41;
        v19 = v62;
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = 0;
  }

  return v52;
}

uint64_t __68__PLAccountingDistributionRuleManager_ruleWithString_withEntryDate___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ruleWithString_withEntryDate__classDebugEnabled = result;
  return result;
}

uint64_t __68__PLAccountingDistributionRuleManager_ruleWithString_withEntryDate___block_invoke_45(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ruleWithString_withEntryDate__classDebugEnabled_44 = result;
  return result;
}

uint64_t __68__PLAccountingDistributionRuleManager_ruleWithString_withEntryDate___block_invoke_51(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ruleWithString_withEntryDate__classDebugEnabled_50 = result;
  return result;
}

uint64_t __68__PLAccountingDistributionRuleManager_ruleWithString_withEntryDate___block_invoke_58(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  ruleWithString_withEntryDate__classDebugEnabled_57 = result;
  return result;
}

- (void)indexRule:(id)rule
{
  ruleCopy = rule;
  v37.receiver = self;
  v37.super_class = PLAccountingDistributionRuleManager;
  [(PLAccountingRuleManager *)&v37 indexRule:ruleCopy];
  v5 = ruleCopy;
  rootNodeIDToNodeIDToDistributionRule = [(PLAccountingDistributionRuleManager *)self rootNodeIDToNodeIDToDistributionRule];
  rootNodeID = [v5 rootNodeID];
  dictionary = [rootNodeIDToNodeIDToDistributionRule objectForKeyedSubscript:rootNodeID];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    rootNodeIDToNodeIDToDistributionRule2 = [(PLAccountingDistributionRuleManager *)self rootNodeIDToNodeIDToDistributionRule];
    rootNodeID2 = [v5 rootNodeID];
    [rootNodeIDToNodeIDToDistributionRule2 setObject:dictionary forKeyedSubscript:rootNodeID2];
  }

  nodeID = [v5 nodeID];
  [dictionary setObject:v5 forKeyedSubscript:nodeID];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v12 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PLAccountingDistributionRuleManager_indexRule___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v12;
    if (indexRule__defaultOnce != -1)
    {
      dispatch_once(&indexRule__defaultOnce, block);
    }

    if (indexRule__classDebugEnabled == 1)
    {
      v13 = MEMORY[0x277CCACA8];
      rootNodeIDToNodeIDToDistributionRule3 = [(PLAccountingDistributionRuleManager *)self rootNodeIDToNodeIDToDistributionRule];
      v15 = [v13 stringWithFormat:@"rootNodeIDToNodeIDToDistributionRule=%@", rootNodeIDToNodeIDToDistributionRule3];

      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingDistributionRuleManager.m"];
      lastPathComponent = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionRuleManager indexRule:]"];
      [v16 logMessage:v15 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:143];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  distributionIDToDistributionRules = [(PLAccountingDistributionRuleManager *)self distributionIDToDistributionRules];
  distributionID = [v5 distributionID];
  array = [distributionIDToDistributionRules objectForKeyedSubscript:distributionID];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    distributionIDToDistributionRules2 = [(PLAccountingDistributionRuleManager *)self distributionIDToDistributionRules];
    distributionID2 = [v5 distributionID];
    [distributionIDToDistributionRules2 setObject:array forKeyedSubscript:distributionID2];
  }

  [array addObject:v5];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v26 = objc_opt_class();
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __49__PLAccountingDistributionRuleManager_indexRule___block_invoke_68;
    v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v35[4] = v26;
    if (indexRule__defaultOnce_66 != -1)
    {
      dispatch_once(&indexRule__defaultOnce_66, v35);
    }

    if (indexRule__classDebugEnabled_67 == 1)
    {
      v27 = MEMORY[0x277CCACA8];
      distributionIDToDistributionRules3 = [(PLAccountingDistributionRuleManager *)self distributionIDToDistributionRules];
      v29 = [v27 stringWithFormat:@"distributionIDToDistributionRules=%@", distributionIDToDistributionRules3];

      v30 = MEMORY[0x277D3F178];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Rule Managers/PLAccountingDistributionRuleManager.m"];
      lastPathComponent2 = [v31 lastPathComponent];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingDistributionRuleManager indexRule:]"];
      [v30 logMessage:v29 fromFile:lastPathComponent2 fromFunction:v33 fromLineNumber:152];

      v34 = PLLogCommon();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }
}

uint64_t __49__PLAccountingDistributionRuleManager_indexRule___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  indexRule__classDebugEnabled = result;
  return result;
}

uint64_t __49__PLAccountingDistributionRuleManager_indexRule___block_invoke_68(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  indexRule__classDebugEnabled_67 = result;
  return result;
}

@end