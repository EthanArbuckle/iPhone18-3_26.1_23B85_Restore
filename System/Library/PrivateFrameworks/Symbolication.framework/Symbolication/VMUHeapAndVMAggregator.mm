@interface VMUHeapAndVMAggregator
- (NSArray)heapZoneAggregates;
- (VMUHeapAndVMAggregator)initWithGraph:(id)graph options:(id)options;
- (id)_classDisplayName:(id)name;
- (void)_countAllocation:(id)allocation inRegion:(id)region;
- (void)analyzeMemgraph;
@end

@implementation VMUHeapAndVMAggregator

- (VMUHeapAndVMAggregator)initWithGraph:(id)graph options:(id)options
{
  graphCopy = graph;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = VMUHeapAndVMAggregator;
  v9 = [(VMUHeapAndVMAggregator *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_heapAndVMOptions, options);
    objc_storeStrong(&v10->_graph, graph);
    classFilterPatternMatcher = [(VMUHeapAndVMAggregatorOptions *)v10->_heapAndVMOptions classFilterPatternMatcher];
    classFilterPatternMatcher = v10->_classFilterPatternMatcher;
    v10->_classFilterPatternMatcher = classFilterPatternMatcher;

    v13 = [VMUClassInfo classInfoWithClassName:@"non-object" binaryPath:&stru_1F461F9C8 type:0];
    nonObjectInfo = v10->_nonObjectInfo;
    v10->_nonObjectInfo = v13;
  }

  return v10;
}

- (NSArray)heapZoneAggregates
{
  v2 = [(NSMutableArray *)self->_heapZoneAggregates copy];

  return v2;
}

- (id)_classDisplayName:(id)name
{
  heapAndVMOptions = self->_heapAndVMOptions;
  nameCopy = name;
  if ([(VMUHeapAndVMAggregatorOptions *)heapAndVMOptions showRawClassNames])
  {
    [nameCopy className];
  }

  else
  {
    [nameCopy displayName];
  }
  v5 = ;

  return v5;
}

- (void)_countAllocation:(id)allocation inRegion:(id)region
{
  regionCopy = region;
  genericInfo = [*(allocation.var0 + 16) genericInfo];
  nonObjectInfo = genericInfo;
  if (!genericInfo)
  {
    nonObjectInfo = self->_nonObjectInfo;
  }

  v8 = nonObjectInfo;

  [(VMUMallocZoneAggregate *)self->_allZonesAggregate incrementAllocationCountForClassInfo:v8 size:*(allocation.var0 + 8) & 0xFFFFFFFFFFFFFFFLL];
  if ([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions separateByZone])
  {
    v9 = [(NSMutableArray *)self->_heapZoneAggregates objectAtIndexedSubscript:regionCopy[37]];
    [v9 incrementAllocationCountForClassInfo:v8 size:*(allocation.var0 + 8) & 0xFFFFFFFFFFFFFFFLL];
  }
}

- (void)analyzeMemgraph
{
  v91 = *MEMORY[0x1E69E9840];
  debugTimer = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  if (debugTimer)
  {
    debugTimer2 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    signpostID = [debugTimer2 signpostID];

    if (signpostID)
    {
      debugTimer3 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      logHandle = [debugTimer3 logHandle];

      debugTimer4 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      signpostID2 = [debugTimer4 signpostID];

      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, signpostID2, "VMUHeapAndVMAggregator", "", buf, 2u);
      }
    }
  }

  debugTimer5 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  [debugTimer5 endEvent:"VMUHeapAndVMAggregator"];

  debugTimer6 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  [debugTimer6 startWithCategory:"VMUHeapAndVMAggregator" message:"counting allocations"];

  debugTimer7 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];

  if (debugTimer7)
  {
    debugTimer8 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    logHandle2 = [debugTimer8 logHandle];

    debugTimer9 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    signpostID3 = [debugTimer9 signpostID];

    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "VMUHeapAndVMAggregator", "counting allocations", buf, 2u);
    }
  }

  v16 = [[VMUMallocZoneAggregate alloc] initWithZoneName:0 options:self->_heapAndVMOptions];
  allZonesAggregate = self->_allZonesAggregate;
  self->_allZonesAggregate = v16;

  if ([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions separateByZone])
  {
    array = [MEMORY[0x1E695DF70] array];
    heapZoneAggregates = self->_heapZoneAggregates;
    self->_heapZoneAggregates = array;

    if ([(VMUCommonGraphInterface *)self->_graph zoneCount])
    {
      v20 = 0;
      do
      {
        v21 = self->_heapZoneAggregates;
        v22 = [[VMUMallocZoneAggregate alloc] initWithZoneName:0 options:self->_heapAndVMOptions];
        [(NSMutableArray *)v21 addObject:v22];

        ++v20;
      }

      while (v20 < [(VMUCommonGraphInterface *)self->_graph zoneCount]);
    }
  }

  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x2020000000;
  v89 = 0;
  selfCopy2 = self;
  nodeNamespaceSize = [(VMUCommonGraphInterface *)self->_graph nodeNamespaceSize];
  zoneCount = [(VMUCommonGraphInterface *)self->_graph zoneCount];
  v67 = objc_opt_new();
  if ([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions guessNonObjects])
  {
    __b = malloc_type_malloc(4 * nodeNamespaceSize, 0x100004052888210uLL);
    *buf = -1;
    memset_pattern4(__b, buf, 4 * nodeNamespaceSize);
  }

  else
  {
    __b = 0;
  }

  if (([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions scope]== 2 || [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions scope]== 1) && [(VMUCommonGraphInterface *)self->_graph isMemberOfClass:objc_opt_class()])
  {
    v24 = [[VMUVMRegionIdentifier alloc] initWithGraph:self->_graph options:0];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    zoneNames = [(VMUVMRegionIdentifier *)v24 zoneNames];
    v26 = [zoneNames countByEnumeratingWithState:&v84 objects:v90 count:16];
    if (v26)
    {
      v27 = *v85;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v85 != v27)
          {
            objc_enumerationMutation(zoneNames);
          }

          v29 = *(*(&v84 + 1) + 8 * i);
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          *buf = 0u;
          if (v24)
          {
            [(VMUVMRegionIdentifier *)v24 computedStatisticsForZoneWithName:v29];
            if (*(&v83 + 1))
            {
              v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VM: %@ fragmentation", v29];
              v31 = [VMUClassInfo classInfoWithClassName:v30 binaryPath:&stru_1F461F9C8 type:0];
              [(VMUMallocZoneAggregate *)self->_allZonesAggregate modifySize:*(&v83 + 1) count:1 forClassInfo:v31];
            }
          }
        }

        v26 = [zoneNames countByEnumeratingWithState:&v84 objects:v90 count:16];
      }

      while (v26);
    }

    selfCopy2 = self;
  }

  graph = selfCopy2->_graph;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __41__VMUHeapAndVMAggregator_analyzeMemgraph__block_invoke;
  v73[3] = &unk_1E827AB10;
  v77 = nodeNamespaceSize;
  v75 = v88;
  v73[4] = selfCopy2;
  v76 = __b;
  v33 = v67;
  v74 = v33;
  v78 = zoneCount;
  [(VMUCommonGraphInterface *)graph enumerateRegionsWithBlock:v73];

  debugTimer10 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  if (debugTimer10)
  {
    debugTimer11 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    v36 = [debugTimer11 signpostID] == 0;

    if (!v36)
    {
      debugTimer12 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      logHandle3 = [debugTimer12 logHandle];

      debugTimer13 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      signpostID4 = [debugTimer13 signpostID];

      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, signpostID4, "VMUHeapAndVMAggregator", "", buf, 2u);
      }
    }
  }

  debugTimer14 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  [debugTimer14 endEvent:"VMUHeapAndVMAggregator"];

  if ([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions guessNonObjects])
  {
    debugTimer15 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    if (debugTimer15)
    {
      debugTimer16 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      v44 = [debugTimer16 signpostID] == 0;

      if (!v44)
      {
        debugTimer17 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
        logHandle4 = [debugTimer17 logHandle];

        debugTimer18 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
        signpostID5 = [debugTimer18 signpostID];

        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_END, signpostID5, "VMUHeapAndVMAggregator", "", buf, 2u);
        }
      }
    }

    debugTimer19 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    [debugTimer19 endEvent:"VMUHeapAndVMAggregator"];

    debugTimer20 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    [debugTimer20 startWithCategory:"VMUHeapAndVMAggregator" message:"enumerating references for guessNonObjects"];

    debugTimer21 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];

    if (debugTimer21)
    {
      debugTimer22 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      logHandle5 = [debugTimer22 logHandle];

      debugTimer23 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      signpostID6 = [debugTimer23 signpostID];

      if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_BEGIN, signpostID6, "VMUHeapAndVMAggregator", "enumerating references for guessNonObjects", buf, 2u);
      }
    }

    v56 = objc_autoreleasePoolPush();
    v57 = self->_graph;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __41__VMUHeapAndVMAggregator_analyzeMemgraph__block_invoke_23;
    v72[3] = &unk_1E827AB38;
    v72[4] = self;
    v72[5] = __b;
    [(VMUCommonGraphInterface *)v57 enumerateReferencesWithBlock:v72];
    objc_autoreleasePoolPop(v56);
    debugTimer24 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    if (debugTimer24)
    {
      debugTimer25 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      v60 = [debugTimer25 signpostID] == 0;

      if (!v60)
      {
        debugTimer26 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
        logHandle6 = [debugTimer26 logHandle];

        debugTimer27 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
        signpostID7 = [debugTimer27 signpostID];

        if (signpostID7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle6))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle6, OS_SIGNPOST_INTERVAL_END, signpostID7, "VMUHeapAndVMAggregator", "", buf, 2u);
        }
      }
    }

    debugTimer28 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    [debugTimer28 endEvent:"VMUHeapAndVMAggregator"];

    free(__b);
  }

  _Block_object_dispose(v88, 8);
  v66 = *MEMORY[0x1E69E9840];
}

void __41__VMUHeapAndVMAggregator_analyzeMemgraph__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v6 = *(v4 + 8);
  v5 = v4 + 8;
  if (*(v6 + 24) < *(a1 + 64))
  {
    v7 = 0x1E8277000uLL;
    do
    {
      v26 = 0;
      v25 = 0uLL;
      v8 = *(a1 + 32);
      v9 = *(v8 + 16);
      if (v9)
      {
        [v9 nodeDetails:*(*v5 + 24)];
        v8 = *(a1 + 32);
      }

      v10 = [*(v8 + 8) scope];
      if (v10 == 2)
      {
        v11 = *(&v25 + 1);
        if (*(&v25 + 1) >> 60 != 5)
        {
          goto LABEL_28;
        }
      }

      else if (v10 == 1)
      {
        v11 = *(&v25 + 1);
        if (*(&v25 + 1) >> 60 != 1)
        {
          if (!VMUGraphNodeType_IsVMRegion(*(&v25 + 1) >> 60))
          {
            goto LABEL_28;
          }

          v11 = *(&v25 + 1);
        }
      }

      else
      {
        if (v10)
        {
          abort();
        }

        v11 = *(&v25 + 1);
        if (*(&v25 + 1) >> 60 != 1)
        {
          goto LABEL_28;
        }
      }

      if ((v11 & 0xFFFFFFFFFFFFFFFLL) != 0)
      {
        if (v25 >= v3[2] + v3[1])
        {
          break;
        }

        v12 = *(*(a1 + 32) + 48);
        if (!v12)
        {
          goto LABEL_19;
        }

        v23 = v25;
        v24 = v26;
        if ([v12 matchesNodeDetails:&v23 orNodeDescription:0])
        {
          v11 = *(&v25 + 1);
LABEL_19:
          if (v11 >> 60 == 1)
          {
            v13 = *(a1 + 32);
            v23 = v25;
            v24 = v26;
            [v13 _countAllocation:&v23 inRegion:v3];
            if ([*(*(a1 + 32) + 8) guessNonObjects])
            {
              *(*(a1 + 56) + 4 * *(*(*(a1 + 48) + 8) + 24)) = *(v3 + 37) + 1;
            }
          }

          else if (VMUGraphNodeType_IsVMRegion(v11 >> 60) && ([v3 isMallocHeapRelated] & 1) == 0)
          {
            v14 = v3[22] + v3[23];
            v15 = v3[24];
            v16 = v14 - v15;
            if (v14 != v15)
            {
              v17 = v7;
              v18 = [*(a1 + 40) objectForKeyedSubscript:v3[4]];
              if (!v18)
              {
                v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VM: %@", v3[4]];
                v18 = [*(v17 + 408) classInfoWithClassName:v19 binaryPath:&stru_1F461F9C8 type:0];
                [*(a1 + 40) setObject:v18 forKeyedSubscript:v3[4]];
              }

              [*(*(a1 + 32) + 24) modifySize:v16 count:1 forClassInfo:v18];

              v7 = v17;
            }
          }
        }
      }

LABEL_28:
      ++*(*(*(a1 + 48) + 8) + 24);
      v20 = *(a1 + 48);
      v21 = *(v20 + 8);
      v5 = v20 + 8;
    }

    while (*(v21 + 24) < *(a1 + 64));
  }

  if ([*(*(a1 + 32) + 8) separateByZone] && *(v3 + 37) < *(a1 + 68))
  {
    v22 = [*(*(a1 + 32) + 32) objectAtIndexedSubscript:?];
    [v22 incrementVirtualSize:v3[2]];
  }
}

void __41__VMUHeapAndVMAggregator_analyzeMemgraph__block_invoke_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 24))
  {
    v35 = v5;
    v36 = v6;
    v7 = a4;
    v9 = *(a1 + 40);
    v10 = *(v9 + 4 * a4);
    if (v10)
    {
      if (*(v9 + 4 * a3) == v10)
      {
        v33 = 0;
        v34 = 0;
        v32 = 0;
        v12 = *(*(a1 + 32) + 16);
        if (v12 && ([v12 nodeDetails:a4], v14 = *(*(a1 + 32) + 16), v30 = 0uLL, v31 = 0, v14))
        {
          [v14 nodeDetails:a3];
          v15 = v31;
          v16 = v15;
          if (v15)
          {
            if (!v34)
            {
              v17 = [v15 className];
              v18 = [v17 hasSuffix:@"Storage"]);

              if ((v18 & 1) == 0)
              {
                v19 = *(a1 + 32);
                v20 = *(v19 + 48);
                if (!v20)
                {
LABEL_12:
                  v21 = *(v19 + 24);
                  if ([*(*(a1 + 32) + 8) separateByZone])
                  {
                    v22 = [*(*(a1 + 32) + 32) objectAtIndexedSubscript:(*(*(a1 + 40) + 4 * v7) - 1)];

                    v21 = v22;
                  }

                  [v21 modifySize:-(v33 & 0xFFFFFFFFFFFFFFFLL) count:-1 forClassInfo:*(*(a1 + 32) + 40)];
                  if ([*(*(a1 + 32) + 8) sumObjectFields])
                  {
                    [v21 modifySize:v33 & 0xFFFFFFFFFFFFFFFLL count:0 forClassInfo:v16];
                  }

                  else
                  {
                    v23 = objc_autoreleasePoolPush();
                    v24 = [*(a1 + 32) _classDisplayName:v16];
                    v25 = [v24 stringByAppendingFormat:@"[%llu]", *(a5 + 8)];

                    v26 = [v16 binaryPath];
                    v27 = +[VMUClassInfo classInfoWithClassName:binaryPath:type:](VMUClassInfo, "classInfoWithClassName:binaryPath:type:", v25, v26, [v16 infoType]);

                    [v21 modifySize:v33 & 0xFFFFFFFFFFFFFFFLL count:1 forClassInfo:v27];
                    objc_autoreleasePoolPop(v23);
                  }

                  *(*(a1 + 40) + 4 * v7) = 0;

                  goto LABEL_17;
                }

                v28 = v30;
                v29 = v31;
                if ([v20 matchesNodeDetails:&v28 orNodeDescription:0])
                {
                  v19 = *(a1 + 32);
                  goto LABEL_12;
                }
              }
            }
          }
        }

        else
        {
          v16 = 0;
          v30 = 0uLL;
          v31 = 0;
        }

LABEL_17:
      }
    }
  }
}

@end