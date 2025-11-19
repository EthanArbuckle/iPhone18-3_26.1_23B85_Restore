@interface PLAccountingNodeManager
+ (id)sharedInstance;
- (PLAccountingNodeManager)init;
- (id)childNodeIDsFromChildNodeNames:(id)a3;
- (id)nodeNameForNodeID:(id)a3;
- (void)removeNodeReferenceFromCache:(id)a3;
- (void)setupNodes;
@end

@implementation PLAccountingNodeManager

+ (id)sharedInstance
{
  v3 = [MEMORY[0x277D3F2A0] sharedCore];
  v4 = [v3 storage];
  v5 = [v4 storageLocked];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__PLAccountingNodeManager_sharedInstance__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (sharedInstance_onceToken_2 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_2, block);
    }

    v6 = sharedInstance_sharedInstance_2;
  }

  return v6;
}

- (PLAccountingNodeManager)init
{
  v5.receiver = self;
  v5.super_class = PLAccountingNodeManager;
  v2 = [(PLAccountingNodeManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_nodeMappingLock._os_unfair_lock_opaque = 0;
    [(PLAccountingNodeManager *)v2 setupNodes];
  }

  return v3;
}

uint64_t __41__PLAccountingNodeManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance_2 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

uint64_t __57__PLAccountingNodeManager_nodeIDForNodeName_isPermanent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  nodeIDForNodeName_isPermanent__classDebugEnabled = result;
  return result;
}

uint64_t __57__PLAccountingNodeManager_nodeIDForNodeName_isPermanent___block_invoke_18(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  nodeIDForNodeName_isPermanent__classDebugEnabled_17 = result;
  return result;
}

uint64_t __57__PLAccountingNodeManager_nodeIDForNodeName_isPermanent___block_invoke_24(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  nodeIDForNodeName_isPermanent__classDebugEnabled_23 = result;
  return result;
}

uint64_t __57__PLAccountingNodeManager_nodeIDForNodeName_isPermanent___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  nodeIDForNodeName_isPermanent__classDebugEnabled_32 = result;
  return result;
}

- (id)nodeNameForNodeID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_nodeMappingLock);
  v5 = [(PLAccountingNodeManager *)self nodeIDToNodeName];
  v6 = [v5 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_nodeMappingLock);

  return v6;
}

- (void)removeNodeReferenceFromCache:(id)a3
{
  v4 = a3;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLAccountingNodeManager removeNodeReferenceFromCache:v5];
  }

  v6 = [v4 userInfo];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 userInfo];
    v9 = [v8 count];

    if (v9)
    {
      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingNodeManager removeNodeReferenceFromCache:v10];
      }

      v11 = [v4 userInfo];
      v12 = [v11 allKeys];

      os_unfair_lock_lock(&self->_nodeMappingLock);
      v13 = [(PLAccountingNodeManager *)self nodeIDToNodeName];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __56__PLAccountingNodeManager_removeNodeReferenceFromCache___block_invoke;
      v19[3] = &unk_279A560B8;
      v20 = v12;
      v14 = v12;
      v15 = [v13 keysOfEntriesPassingTest:v19];

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __56__PLAccountingNodeManager_removeNodeReferenceFromCache___block_invoke_2;
      v17[3] = &unk_279A560E0;
      v17[4] = self;
      v18 = v4;
      [v15 enumerateObjectsUsingBlock:v17];
      v16 = [(PLAccountingNodeManager *)self nodeNameToNodeID];
      [v16 removeObjectsForKeys:v14];

      os_unfair_lock_unlock(&self->_nodeMappingLock);
    }
  }
}

void __56__PLAccountingNodeManager_removeNodeReferenceFromCache___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nodeIDToNodeName];
  v5 = [v4 objectForKeyedSubscript:v3];

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __56__PLAccountingNodeManager_removeNodeReferenceFromCache___block_invoke_2_cold_1(v5, a1, v6);
  }

  v7 = [*(a1 + 40) userInfo];
  v8 = [v7 objectForKeyedSubscript:v5];
  v9 = [v8 objectForKeyedSubscript:@"MaskedName"];
  v10 = [*(a1 + 32) nodeIDToNodeName];
  [v10 setObject:v9 forKeyedSubscript:v3];
}

- (id)childNodeIDsFromChildNodeNames:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__PLAccountingNodeManager_childNodeIDsFromChildNodeNames___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (childNodeIDsFromChildNodeNames__defaultOnce != -1)
    {
      dispatch_once(&childNodeIDsFromChildNodeNames__defaultOnce, block);
    }

    if (childNodeIDsFromChildNodeNames__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"childNodeNames=%@", v4];
      v7 = MEMORY[0x277D3F178];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager childNodeIDsFromChildNodeNames:]"];
      [v7 logMessage:v6 fromFile:v9 fromFunction:v10 fromLineNumber:142];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(PLAccountingNodeManager *)self nodeIDForNodeName:*(*(&v33 + 1) + 8 * i) isPermanent:0];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v15);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = objc_opt_class();
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __58__PLAccountingNodeManager_childNodeIDsFromChildNodeNames___block_invoke_47;
    v31 = &__block_descriptor_40_e5_v8__0lu32l8;
    v32 = v19;
    if (childNodeIDsFromChildNodeNames__defaultOnce_45 != -1)
    {
      dispatch_once(&childNodeIDsFromChildNodeNames__defaultOnce_45, &v28);
    }

    if (childNodeIDsFromChildNodeNames__classDebugEnabled_46 == 1)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"childNodeIDs=%@", v12, v28, v29, v30, v31, v32, v33];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      v23 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager childNodeIDsFromChildNodeNames:]"];
      [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:152];

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __58__PLAccountingNodeManager_childNodeIDsFromChildNodeNames___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  childNodeIDsFromChildNodeNames__classDebugEnabled = result;
  return result;
}

uint64_t __58__PLAccountingNodeManager_childNodeIDsFromChildNodeNames___block_invoke_47(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  childNodeIDsFromChildNodeNames__classDebugEnabled_46 = result;
  return result;
}

- (void)setupNodes
{
  os_unfair_lock_lock(&self->_nodeMappingLock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke;
  block[3] = &unk_279A55E80;
  block[4] = self;
  if (setupNodes_onceToken != -1)
  {
    dispatch_once(&setupNodes_onceToken, block);
  }

  os_unfair_lock_unlock(&self->_nodeMappingLock);
}

void __37__PLAccountingNodeManager_setupNodes__block_invoke(uint64_t a1)
{
  v136[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 32) setNodeNameToNodeID:v2];

  v3 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 32) setNodeIDToNodeName:v3];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel_removeNodeReferenceFromCache_ name:@"PLAppDeletionActivityStarted" object:0];

  v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"ID" withValue:&unk_2870F86F0 withComparisonOperation:5];
  v6 = +[PLAccountingNodeEntry entryKey];
  v7 = MEMORY[0x277CBEB98];
  v8 = [MEMORY[0x277D3F2A0] sharedCore];
  v9 = [v8 storage];
  v109 = v5;
  v136[0] = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:1];
  v110 = v6;
  v11 = [v9 entriesForKey:v6 withComparisons:v10];
  v12 = [v7 setWithArray:v11];

  v13 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v14 = *(a1 + 32);
    v15 = objc_opt_class();
    v130[0] = MEMORY[0x277D85DD0];
    v130[1] = 3221225472;
    v130[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_65;
    v130[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v130[4] = v15;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_1 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_1, v130);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_1 == 1)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"reservedNodesInDB=%@", v12];
      v17 = MEMORY[0x277D3F178];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      v19 = [v18 lastPathComponent];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_2"];
      [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:176];

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v13 = 0x277D3F000uLL;
    }
  }

  v22 = +[PLAccountingEngine deviceRootNodeIDs];
  v23 = [v22 mutableCopy];

  [v23 addObject:&unk_2870F8708];
  [v23 addObject:&unk_2870F86F0];
  v24 = 0x279A55000;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v25 = *(a1 + 32);
    v26 = objc_opt_class();
    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_74;
    v129[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v129[4] = v26;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_72 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_72, v129);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_73 == 1)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"reservedNodeIDs=%@", v23];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      v30 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_2"];
      [v28 logMessage:v27 fromFile:v30 fromFunction:v31 fromLineNumber:182];

      v32 = PLLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }

      v13 = 0x277D3F000uLL;
      v24 = 0x279A55000uLL;
    }
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = v23;
  v33 = [obj countByEnumeratingWithState:&v125 objects:v135 count:16];
  v111 = v12;
  if (v33)
  {
    v34 = v33;
    v113 = *MEMORY[0x277D3F3D8];
    v114 = *v126;
    do
    {
      v35 = 0;
      do
      {
        if (*v126 != v114)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v125 + 1) + 8 * v35);
        v37 = [objc_alloc(*(v24 + 2472)) initWithRootNodeID:v36];
        [v37 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v113];
        if ([*(v13 + 384) debugEnabled])
        {
          v38 = *(a1 + 32);
          v39 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_80;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v39;
          if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_78 != -1)
          {
            dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_78, block);
          }

          if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_79 == 1)
          {
            v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"reservedNode=%@", v37];
            v41 = MEMORY[0x277D3F178];
            v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
            v43 = [v42 lastPathComponent];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_2"];
            [v41 logMessage:v40 fromFile:v43 fromFunction:v44 fromLineNumber:187];

            v45 = PLLogCommon();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v134 = v40;
              _os_log_debug_impl(&dword_25EDCD000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v12 = v111;
            v13 = 0x277D3F000uLL;
            v24 = 0x279A55000;
          }
        }

        if (([v12 containsObject:v37] & 1) == 0)
        {
          v46 = [MEMORY[0x277D3F2A0] sharedCore];
          v47 = [v46 storage];
          [v47 blockingWriteEntry:v37 withCompletionBlock:&__block_literal_global_86];

          if ([*(v13 + 384) debugEnabled])
          {
            v48 = *(a1 + 32);
            v49 = objc_opt_class();
            v123[0] = MEMORY[0x277D85DD0];
            v123[1] = 3221225472;
            v123[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_2;
            v123[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v123[4] = v49;
            if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_87 != -1)
            {
              dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_87, v123);
            }

            if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_88 == 1)
            {
              v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"added to DB reservedNode=%@", v37];
              v51 = MEMORY[0x277D3F178];
              v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
              v53 = [v52 lastPathComponent];
              v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_3"];
              [v51 logMessage:v50 fromFile:v53 fromFunction:v54 fromLineNumber:192];

              v55 = PLLogCommon();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v134 = v50;
                _os_log_debug_impl(&dword_25EDCD000, v55, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v12 = v111;
              v13 = 0x277D3F000;
              v24 = 0x279A55000;
            }
          }
        }

        v56 = [*(a1 + 32) nodeNameToNodeID];
        v57 = [v37 name];
        [v56 setObject:v36 forKeyedSubscript:v57];

        v58 = [v37 name];
        v59 = [*(a1 + 32) nodeIDToNodeName];
        [v59 setObject:v58 forKeyedSubscript:v36];

        ++v35;
      }

      while (v34 != v35);
      v34 = [obj countByEnumeratingWithState:&v125 objects:v135 count:16];
    }

    while (v34);
  }

  v60 = [MEMORY[0x277D3F2A0] sharedCore];
  v61 = [v60 storage];
  [v61 flushCachesWithReason:v110];

  v62 = [MEMORY[0x277D3F228] sharedStorageCache];
  [v62 clearLastEntryCacheForEntryKey:v110];

  v63 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"ID" withValue:&unk_2870F86F0 withComparisonOperation:2];
  v64 = MEMORY[0x277CBEB98];
  v65 = [MEMORY[0x277D3F2A0] sharedCore];
  v66 = [v65 storage];
  v115 = v63;
  v132 = v63;
  v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
  v68 = [v66 entriesForKey:v110 withComparisons:v67];
  v69 = [v64 setWithArray:v68];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v70 = *(a1 + 32);
    v71 = objc_opt_class();
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_96;
    v122[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v122[4] = v71;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_94 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_94, v122);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_95 == 1)
    {
      v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"otherNodesInDB=%@", v69];
      v73 = MEMORY[0x277D3F178];
      v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      v75 = [v74 lastPathComponent];
      v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_2"];
      [v73 logMessage:v72 fromFile:v75 fromFunction:v76 fromLineNumber:210];

      v77 = PLLogCommon();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v78 = v69;
  v79 = [v78 countByEnumeratingWithState:&v118 objects:v131 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v119;
    do
    {
      for (i = 0; i != v80; ++i)
      {
        if (*v119 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = *(*(&v118 + 1) + 8 * i);
        v84 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v83, "entryID")}];
        v85 = [v83 name];
        if (v85)
        {
          v86 = [*(a1 + 32) nodeNameToNodeID];
          [v86 setObject:v84 forKeyedSubscript:v85];

          v87 = [*(a1 + 32) nodeIDToNodeName];
          [v87 setObject:v85 forKeyedSubscript:v84];
        }
      }

      v80 = [v78 countByEnumeratingWithState:&v118 objects:v131 count:16];
    }

    while (v80);
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v88 = *(a1 + 32);
    v89 = objc_opt_class();
    v117[0] = MEMORY[0x277D85DD0];
    v117[1] = 3221225472;
    v117[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_102;
    v117[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v117[4] = v89;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_100 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_100, v117);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_101 == 1)
    {
      v90 = MEMORY[0x277CCACA8];
      v91 = [*(a1 + 32) nodeNameToNodeID];
      v92 = [v90 stringWithFormat:@"nodeNameToNodeID=%@", v91];

      v93 = MEMORY[0x277D3F178];
      v94 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      v95 = [v94 lastPathComponent];
      v96 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_2"];
      [v93 logMessage:v92 fromFile:v95 fromFunction:v96 fromLineNumber:219];

      v97 = PLLogCommon();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v98 = *(a1 + 32);
    v99 = objc_opt_class();
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __37__PLAccountingNodeManager_setupNodes__block_invoke_105;
    v116[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v116[4] = v99;
    if (PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_103 != -1)
    {
      dispatch_once(&PLSubmissionAnalyticsStateSuccess_block_invoke_defaultOnce_103, v116);
    }

    if (PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_104 == 1)
    {
      v100 = MEMORY[0x277CCACA8];
      v101 = [*(a1 + 32) nodeIDToNodeName];
      v102 = [v100 stringWithFormat:@"nodeIDToNodeName=%@", v101];

      v103 = MEMORY[0x277D3F178];
      v104 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/PLAccountingNodeManager.m"];
      v105 = [v104 lastPathComponent];
      v106 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeManager setupNodes]_block_invoke_2"];
      [v103 logMessage:v102 fromFile:v105 fromFunction:v106 fromLineNumber:220];

      v107 = PLLogCommon();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDependency activate];
      }
    }
  }

  v108 = *MEMORY[0x277D85DE8];
}

uint64_t __37__PLAccountingNodeManager_setupNodes__block_invoke_65(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_1 = result;
  return result;
}

uint64_t __37__PLAccountingNodeManager_setupNodes__block_invoke_74(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_73 = result;
  return result;
}

uint64_t __37__PLAccountingNodeManager_setupNodes__block_invoke_80(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_79 = result;
  return result;
}

uint64_t __37__PLAccountingNodeManager_setupNodes__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_88 = result;
  return result;
}

uint64_t __37__PLAccountingNodeManager_setupNodes__block_invoke_96(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_95 = result;
  return result;
}

uint64_t __37__PLAccountingNodeManager_setupNodes__block_invoke_102(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_101 = result;
  return result;
}

uint64_t __37__PLAccountingNodeManager_setupNodes__block_invoke_105(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PLSubmissionAnalyticsStateSuccess_block_invoke_classDebugEnabled_104 = result;
  return result;
}

void __56__PLAccountingNodeManager_removeNodeReferenceFromCache___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [*(a2 + 40) userInfo];
  v6 = [v5 objectForKeyedSubscript:a1];
  v7 = [v6 objectForKeyedSubscript:@"MaskedName"];
  v9 = 138412546;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  _os_log_debug_impl(&dword_25EDCD000, a3, OS_LOG_TYPE_DEBUG, "Obfuscating the node id cache for %@ with %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end