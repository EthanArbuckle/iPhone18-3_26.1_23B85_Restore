@interface VMUHeapAndVMAggregator
- (NSArray)heapZoneAggregates;
- (VMUHeapAndVMAggregator)initWithGraph:(id)a3 options:(id)a4;
- (id)_classDisplayName:(id)a3;
- (void)_countAllocation:(id)a3 inRegion:(id)a4;
- (void)analyzeMemgraph;
@end

@implementation VMUHeapAndVMAggregator

- (VMUHeapAndVMAggregator)initWithGraph:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = VMUHeapAndVMAggregator;
  v9 = [(VMUHeapAndVMAggregator *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_heapAndVMOptions, a4);
    objc_storeStrong(&v10->_graph, a3);
    v11 = [(VMUHeapAndVMAggregatorOptions *)v10->_heapAndVMOptions classFilterPatternMatcher];
    classFilterPatternMatcher = v10->_classFilterPatternMatcher;
    v10->_classFilterPatternMatcher = v11;

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

- (id)_classDisplayName:(id)a3
{
  heapAndVMOptions = self->_heapAndVMOptions;
  v4 = a3;
  if ([(VMUHeapAndVMAggregatorOptions *)heapAndVMOptions showRawClassNames])
  {
    [v4 className];
  }

  else
  {
    [v4 displayName];
  }
  v5 = ;

  return v5;
}

- (void)_countAllocation:(id)a3 inRegion:(id)a4
{
  v10 = a4;
  v6 = [*(a3.var0 + 16) genericInfo];
  nonObjectInfo = v6;
  if (!v6)
  {
    nonObjectInfo = self->_nonObjectInfo;
  }

  v8 = nonObjectInfo;

  [(VMUMallocZoneAggregate *)self->_allZonesAggregate incrementAllocationCountForClassInfo:v8 size:*(a3.var0 + 8) & 0xFFFFFFFFFFFFFFFLL];
  if ([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions separateByZone])
  {
    v9 = [(NSMutableArray *)self->_heapZoneAggregates objectAtIndexedSubscript:v10[37]];
    [v9 incrementAllocationCountForClassInfo:v8 size:*(a3.var0 + 8) & 0xFFFFFFFFFFFFFFFLL];
  }
}

- (void)analyzeMemgraph
{
  v91 = *MEMORY[0x1E69E9840];
  v2 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  if (v2)
  {
    v3 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    v4 = [v3 signpostID];

    if (v4)
    {
      v5 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      v6 = [v5 logHandle];

      v7 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      v8 = [v7 signpostID];

      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v6, OS_SIGNPOST_INTERVAL_END, v8, "VMUHeapAndVMAggregator", "", buf, 2u);
      }
    }
  }

  v9 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  [v9 endEvent:"VMUHeapAndVMAggregator"];

  v10 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  [v10 startWithCategory:"VMUHeapAndVMAggregator" message:"counting allocations"];

  v11 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];

  if (v11)
  {
    v12 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    v13 = [v12 logHandle];

    v14 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    v15 = [v14 signpostID];

    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VMUHeapAndVMAggregator", "counting allocations", buf, 2u);
    }
  }

  v16 = [[VMUMallocZoneAggregate alloc] initWithZoneName:0 options:self->_heapAndVMOptions];
  allZonesAggregate = self->_allZonesAggregate;
  self->_allZonesAggregate = v16;

  if ([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions separateByZone])
  {
    v18 = [MEMORY[0x1E695DF70] array];
    heapZoneAggregates = self->_heapZoneAggregates;
    self->_heapZoneAggregates = v18;

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
  v23 = self;
  v69 = [(VMUCommonGraphInterface *)self->_graph nodeNamespaceSize];
  v68 = [(VMUCommonGraphInterface *)self->_graph zoneCount];
  v67 = objc_opt_new();
  if ([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions guessNonObjects])
  {
    __b = malloc_type_malloc(4 * v69, 0x100004052888210uLL);
    *buf = -1;
    memset_pattern4(__b, buf, 4 * v69);
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
    v25 = [(VMUVMRegionIdentifier *)v24 zoneNames];
    v26 = [v25 countByEnumeratingWithState:&v84 objects:v90 count:16];
    if (v26)
    {
      v27 = *v85;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v85 != v27)
          {
            objc_enumerationMutation(v25);
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

        v26 = [v25 countByEnumeratingWithState:&v84 objects:v90 count:16];
      }

      while (v26);
    }

    v23 = self;
  }

  graph = v23->_graph;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __41__VMUHeapAndVMAggregator_analyzeMemgraph__block_invoke;
  v73[3] = &unk_1E827AB10;
  v77 = v69;
  v75 = v88;
  v73[4] = v23;
  v76 = __b;
  v33 = v67;
  v74 = v33;
  v78 = v68;
  [(VMUCommonGraphInterface *)graph enumerateRegionsWithBlock:v73];

  v34 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  if (v34)
  {
    v35 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    v36 = [v35 signpostID] == 0;

    if (!v36)
    {
      v37 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      v38 = [v37 logHandle];

      v39 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      v40 = [v39 signpostID];

      if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v38, OS_SIGNPOST_INTERVAL_END, v40, "VMUHeapAndVMAggregator", "", buf, 2u);
      }
    }
  }

  v41 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  [v41 endEvent:"VMUHeapAndVMAggregator"];

  if ([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions guessNonObjects])
  {
    v42 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    if (v42)
    {
      v43 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      v44 = [v43 signpostID] == 0;

      if (!v44)
      {
        v45 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
        v46 = [v45 logHandle];

        v47 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
        v48 = [v47 signpostID];

        if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v46, OS_SIGNPOST_INTERVAL_END, v48, "VMUHeapAndVMAggregator", "", buf, 2u);
        }
      }
    }

    v49 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    [v49 endEvent:"VMUHeapAndVMAggregator"];

    v50 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    [v50 startWithCategory:"VMUHeapAndVMAggregator" message:"enumerating references for guessNonObjects"];

    v51 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];

    if (v51)
    {
      v52 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      v53 = [v52 logHandle];

      v54 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      v55 = [v54 signpostID];

      if (v55 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v53, OS_SIGNPOST_INTERVAL_BEGIN, v55, "VMUHeapAndVMAggregator", "enumerating references for guessNonObjects", buf, 2u);
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
    v58 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    if (v58)
    {
      v59 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      v60 = [v59 signpostID] == 0;

      if (!v60)
      {
        v61 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
        v62 = [v61 logHandle];

        v63 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
        v64 = [v63 signpostID];

        if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v62, OS_SIGNPOST_INTERVAL_END, v64, "VMUHeapAndVMAggregator", "", buf, 2u);
        }
      }
    }

    v65 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    [v65 endEvent:"VMUHeapAndVMAggregator"];

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