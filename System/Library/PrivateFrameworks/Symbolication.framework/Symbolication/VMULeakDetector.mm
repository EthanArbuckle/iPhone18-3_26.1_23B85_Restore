@interface VMULeakDetector
+ (id)_consolidatedRootLeakDescriptionsForTree:(id)tree;
+ (id)referenceDescription:(id *)description dstDescription:(id)dstDescription is64bit:(BOOL)is64bit;
- (VMULeakDetector)initWithVMUTask:(id)task graph:(id)graph scanner:(id)scanner stackLogReader:(id)reader;
- (id)scannerOrGraph;
- (unsigned)detectLeaksWithError:(id *)error;
- (unsigned)doNormalLeakDetectionWithError:(id *)error;
- (void)buildLeakTree;
- (void)dealloc;
- (void)printContents:(void *)contents size:(unint64_t)size;
- (void)printLeakTree;
- (void)printout:(const char *)printout;
@end

@implementation VMULeakDetector

- (VMULeakDetector)initWithVMUTask:(id)task graph:(id)graph scanner:(id)scanner stackLogReader:(id)reader
{
  taskCopy = task;
  graphCopy = graph;
  scannerCopy = scanner;
  readerCopy = reader;
  v21.receiver = self;
  v21.super_class = VMULeakDetector;
  v15 = [(VMULeakDetector *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_scanner, scanner);
    objc_storeStrong(&v16->_stackLogReader, reader);
    objc_storeStrong(&v16->_graph, graph);
    objc_storeStrong(&v16->_task, task);
    v16->_showBinaryContents = 0;
    *&v16->_showLeakedVMregions = 0;
    scanner = v16->_scanner;
    if (scanner)
    {
      objectContentLevel = [(VMUTaskMemoryScanner *)scanner objectContentLevel];
    }

    else
    {
      objectContentLevel = 3;
    }

    v16->_objectContentLevel = objectContentLevel;
    *&v16->_checkAbandoned = 0;
    v16->_referenceTreeShowRegionVirtualSize = 0;
    v16->_max_contents_bytes = 128;
    v16->_numExcluded = 0;
    v16->_outputFile = *MEMORY[0x1E69E9858];
    outputString = v16->_outputString;
    v16->_outputString = 0;
  }

  return v16;
}

- (void)printout:(const char *)printout
{
  if (self->_outputString || self->_outputFile)
  {
    v8 = &v9;
    if (self->_outputString)
    {
      v7 = 0;
      if (vasprintf(&v7, printout, v8) < 0 || !v7)
      {
        [VMULeakDetector printout:];
      }

      outputString = self->_outputString;
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      [(NSMutableString *)outputString appendString:v5];

      free(v7);
    }

    else
    {
      outputFile = self->_outputFile;
      if (outputFile)
      {
        vfprintf(outputFile, printout, v8);
      }
    }
  }
}

- (id)scannerOrGraph
{
  scanner = self->_scanner;
  if (!scanner)
  {
    scanner = self->_graph;
  }

  return scanner;
}

- (void)printContents:(void *)contents size:(unint64_t)size
{
  if (!contents)
  {
    v17 = "< content unavailable >\n";
    goto LABEL_24;
  }

  max_contents_bytes = self->_max_contents_bytes;
  if (max_contents_bytes >= size)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = self->_max_contents_bytes;
  }

  if (sizeCopy >= 4)
  {
    contentsCopy = contents;
    sizeCopy2 = size;
    v8 = sizeCopy >> 2;
    do
    {
      [(VMULeakDetector *)self printout:"\t"];
      if (v8 >= 4)
      {
        v9 = 4;
      }

      else
      {
        v9 = v8;
      }

      v10 = v9;
      v11 = contentsCopy;
      do
      {
        v12 = *v11++;
        [(VMULeakDetector *)self printout:"0x%08x ", v12];
        --v10;
      }

      while (v10);
      [(VMULeakDetector *)self printout:"\t"];
      if ((4 * v9) <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = (4 * v9);
      }

      v14 = contentsCopy;
      do
      {
        v16 = *v14;
        v14 = (v14 + 1);
        v15 = v16;
        if ((v16 - 32) >= 0x5F)
        {
          v15 = 46;
        }

        [(VMULeakDetector *)self printout:"%c", v15];
        --v13;
      }

      while (v13);
      [(VMULeakDetector *)self printout:"\n"];
      contentsCopy += v9;
      v8 -= v9;
    }

    while (v8);
    max_contents_bytes = self->_max_contents_bytes;
    size = sizeCopy2;
  }

  if (max_contents_bytes < size)
  {
    v17 = "\t...\n";
LABEL_24:

    [(VMULeakDetector *)self printout:v17];
  }
}

+ (id)referenceDescription:(id *)description dstDescription:(id)dstDescription is64bit:(BOOL)is64bit
{
  is64bitCopy = is64bit;
  dstDescriptionCopy = dstDescription;
  v8 = *(description->var0 + 2);
  v9 = 3;
  if (is64bitCopy)
  {
    v9 = 7;
  }

  if ((description->var1.var0 & v9) != 0 && *(description->var0 + 1) >> 60 != 3)
  {
    dstDescriptionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unaligned +%lld:  --> %@", description->var1.var0, dstDescriptionCopy];

    dstDescriptionCopy = dstDescriptionCopy;
  }

  else
  {
    displayName = [*(description->var2 + 2) displayName];
    v11 = [displayName hasSuffix:@"Storage"]);

    if ((v11 & 1) == 0)
    {
      v12 = [v8 fieldAtOrBeforeOffset:LODWORD(description->var1.var0)];
      v13 = v12;
      if (v12)
      {
        var0 = description->var1.var0;
        v15 = var0 - [v12 offset];
        v23 = 0;
        v16 = [v13 getLeafFieldAtOffset:v15 leafOffset:&v23];
        v17 = [v13 fullIvarNameAtOffset:v15];
        v18 = VMUScanTypeKeywordDescription([v16 scanType]);
        if (v18 && *v18)
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s ", v18];
        }

        else
        {
          v19 = &stru_1F461F9C8;
        }

        dstDescriptionCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ --> %@", v19, v17, dstDescriptionCopy];

        dstDescriptionCopy = dstDescriptionCopy2;
      }
    }
  }

  return dstDescriptionCopy;
}

- (void)buildLeakTree
{
  v165 = *MEMORY[0x1E69E9840];
  v2 = [(VMUDirectedGraph *)self->_graph subgraphWithMarkedNodes:self->_leakedNodes];
  [(VMULeakDetector *)self setLeakedGraph:v2];

  v121 = malloc_type_calloc([(VMUDirectedGraph *)self->_leakedGraph nodeNamespaceSize], 8uLL, 0x80040B8603338uLL);
  v113 = [[VMUCallTreeRootWithBacktrace alloc] initWithSymbolicator:0 sampler:0 options:0, 0];
  v160 = 0;
  v161 = &v160;
  v162 = 0x2020000000;
  v163 = 0;
  v3 = 4 * [(VMUDirectedGraph *)self->_leakedGraph nodeNamespaceSize];
  LODWORD(__pattern4._pi) = -1;
  v112 = malloc_type_malloc(v3, 0x100004052888210uLL);
  memset_pattern4(v112, &__pattern4, v3);
  LODWORD(v3) = [(VMUDirectedGraph *)self->_leakedGraph nodeNamespaceSize];
  v4 = malloc_type_calloc(1uLL, ((v3 + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v4 = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__VMULeakDetector_buildLeakTree__block_invoke;
  aBlock[3] = &unk_1E8277FE8;
  aBlock[5] = v112;
  aBlock[4] = &v160;
  v111 = v4;
  aBlock[6] = v4;
  v5 = _Block_copy(aBlock);
  selfCopy5 = self;
  v7 = [(VMUProcessObjectGraph *)self->_leakedGraph copy];
  debugTimer = self->_debugTimer;
  if (debugTimer)
  {
    signpostID = [(VMUDebugTimer *)debugTimer signpostID];
    debugTimer = self->_debugTimer;
    if (signpostID)
    {
      logHandle = [(VMUDebugTimer *)debugTimer logHandle];
      signpostID2 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, signpostID2, "buildLeakTree", "", &__pattern4, 2u);
      }

      selfCopy5 = self;
      debugTimer = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)debugTimer endEvent:"buildLeakTree"];
  [(VMUDebugTimer *)selfCopy5->_debugTimer startWithCategory:"buildLeakTree" message:"identifying strongly-connected-components (cycles) in the graph"];
  v12 = selfCopy5->_debugTimer;
  if (v12)
  {
    logHandle2 = [(VMUDebugTimer *)v12 logHandle];
    signpostID3 = [(VMUDebugTimer *)selfCopy5->_debugTimer signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle2))
    {
      LOWORD(__pattern4._pi) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "buildLeakTree", "identifying strongly-connected-components (cycles) in the graph", &__pattern4, 2u);
    }

    selfCopy5 = self;
  }

  leakedGraph = selfCopy5->_leakedGraph;
  v158[0] = MEMORY[0x1E69E9820];
  v158[1] = 3221225472;
  v158[2] = __32__VMULeakDetector_buildLeakTree__block_invoke_63;
  v158[3] = &unk_1E8278010;
  v158[4] = selfCopy5;
  [(VMUObjectGraph *)leakedGraph stronglyConnectedComponentSearch:0xFFFFFFFFLL withRecorder:v158];
  v16 = selfCopy5->_debugTimer;
  if (v16)
  {
    signpostID4 = [(VMUDebugTimer *)v16 signpostID];
    v16 = selfCopy5->_debugTimer;
    if (signpostID4)
    {
      logHandle3 = [(VMUDebugTimer *)v16 logHandle];
      signpostID5 = [(VMUDebugTimer *)selfCopy5->_debugTimer signpostID];
      if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle3))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, signpostID5, "buildLeakTree", "", &__pattern4, 2u);
      }

      selfCopy5 = self;
      v16 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v16 endEvent:"buildLeakTree"];
  [(VMUDebugTimer *)selfCopy5->_debugTimer startWithCategory:"buildLeakTree" message:"identifying root leaks and cycles"];
  v20 = selfCopy5->_debugTimer;
  if (v20)
  {
    logHandle4 = [(VMUDebugTimer *)v20 logHandle];
    signpostID6 = [(VMUDebugTimer *)selfCopy5->_debugTimer signpostID];
    if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle4))
    {
      LOWORD(__pattern4._pi) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_BEGIN, signpostID6, "buildLeakTree", "identifying root leaks and cycles", &__pattern4, 2u);
    }

    selfCopy5 = self;
  }

  v114 = selfCopy5->_stackLogReader;
  if (v114)
  {
    v23 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:256];
    if ([(VMUStackLogReader *)v114 inspectingLiveProcess]&& [(VMUStackLogReader *)v114 usesLiteMode])
    {
      for (i = 0; i < [v7 zoneCount]; i = (i + 1))
      {
        v25 = [v7 zoneNameForIndex:i];
        if ([v25 hasPrefix:@"MallocStackLoggingLiteZone"])
        {
          v26 = [v25 hasPrefix:@"MallocStackLoggingLiteZone_Wrapper"];

          if ((v26 & 1) == 0)
          {

            goto LABEL_35;
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v23 = 0;
  }

  LODWORD(i) = -1;
LABEL_35:
  nodeNamespaceSize = [(VMUDirectedGraph *)self->_leakedGraph nodeNamespaceSize];
  v120 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v120 = nodeNamespaceSize;
  invertedGraph = [(VMUDirectedGraph *)self->_leakedGraph invertedGraph];
  v29 = objc_opt_new();
  v148[0] = MEMORY[0x1E69E9820];
  v148[1] = 3221225472;
  v148[2] = __32__VMULeakDetector_buildLeakTree__block_invoke_68;
  v148[3] = &unk_1E8278060;
  v30 = invertedGraph;
  v149 = v30;
  selfCopy6 = self;
  v106 = v29;
  v151 = v106;
  v156 = v120;
  v110 = v5;
  v155 = v110;
  v117 = v114;
  v152 = v117;
  v116 = v7;
  v153 = v116;
  v157 = i;
  table = v23;
  v154 = table;
  [v30 enumerateObjectsWithBlock:v148];

  if (v114 && (![(VMUStackLogReader *)v117 usesLiteMode]|| ([(VMUStackLogReader *)v117 inspectingLiveProcess]& 1) == 0))
  {
    v31 = self->_debugTimer;
    if (v31)
    {
      signpostID7 = [(VMUDebugTimer *)v31 signpostID];
      v31 = self->_debugTimer;
      if (signpostID7)
      {
        logHandle5 = [(VMUDebugTimer *)v31 logHandle];
        signpostID8 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle5))
        {
          LOWORD(__pattern4._pi) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_END, signpostID8, "buildLeakTree", "", &__pattern4, 2u);
        }

        v31 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v31 endEvent:"buildLeakTree"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"buildLeakTree" message:"enumerate stack logs to populate rootLeakAddressToStackIDMap"];
    v35 = self->_debugTimer;
    if (v35)
    {
      logHandle6 = [(VMUDebugTimer *)v35 logHandle];
      signpostID9 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle6))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle6, OS_SIGNPOST_INTERVAL_BEGIN, signpostID9, "buildLeakTree", "enumerate stack logs to populate rootLeakAddressToStackIDMap", &__pattern4, 2u);
      }
    }

    v146[0] = MEMORY[0x1E69E9820];
    v146[1] = 3221225472;
    v146[2] = __32__VMULeakDetector_buildLeakTree__block_invoke_79;
    v146[3] = &unk_1E8278088;
    v147 = table;
    [(VMUStackLogReader *)v117 enumerateMSLRecordsAndPayloads:v146];
  }

  v38 = objc_opt_new();
  [(VMULeakDetector *)self setLeakTreeRootsArray:v38];

  if (v114)
  {
    selfCopy8 = self;
    v40 = self->_debugTimer;
    if (v40)
    {
      signpostID10 = [(VMUDebugTimer *)v40 signpostID];
      v40 = self->_debugTimer;
      if (signpostID10)
      {
        logHandle7 = [(VMUDebugTimer *)v40 logHandle];
        signpostID11 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle7))
        {
          LOWORD(__pattern4._pi) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle7, OS_SIGNPOST_INTERVAL_END, signpostID11, "buildLeakTree", "", &__pattern4, 2u);
        }

        selfCopy8 = self;
        v40 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v40 endEvent:"buildLeakTree", v106];
    [(VMUDebugTimer *)selfCopy8->_debugTimer startWithCategory:"buildLeakTree" message:"invert rootLeakAddressToStackIDMap to produce stackID --> {size, count, root-leak-call-tree-root} map"];
    v44 = selfCopy8->_debugTimer;
    if (v44)
    {
      logHandle8 = [(VMUDebugTimer *)v44 logHandle];
      signpostID12 = [(VMUDebugTimer *)selfCopy8->_debugTimer signpostID];
      if (signpostID12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle8))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle8, OS_SIGNPOST_INTERVAL_BEGIN, signpostID12, "buildLeakTree", "invert rootLeakAddressToStackIDMap to produce stackID --> {size,count,root-leak-call-tree-root} map", &__pattern4, 2u);
      }
    }

    v119 = malloc_type_calloc([v116 nodeNamespaceSize], 8uLL, 0x80040B8603338uLL);
    v118 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:0];
    memset(&__pattern4, 0, sizeof(__pattern4));
    NSEnumerateMapTable(&__pattern4, table);
    value = 0;
    key = 0;
    while (NSNextMapEnumeratorPair(&__pattern4, &key, &value))
    {
      v47 = NSMapGet(v118, value);
      if (!v47)
      {
        v48 = objc_autoreleasePoolPush();
        v47 = [[VMUCallTreeRootWithBacktrace alloc] initWithSymbolicator:0 sampler:0 options:0, 0];
        if (self->_fullStacks)
        {
          v49 = 68;
        }

        else
        {
          v49 = 64;
        }

        v50 = [(VMUStackLogReader *)v117 symbolicatedBacktraceForStackID:value options:v49];
        [(VMUCallTreeRootWithBacktrace *)v47 setBacktraceString:v50];

        [(NSMutableArray *)self->_leakTreeRootsArray addObject:v47];
        NSMapInsert(v118, value, v47);
        objc_autoreleasePoolPop(v48);
      }
    }

    NSEndMapTableEnumeration(&__pattern4);
  }

  else
  {
    v118 = 0;
    v119 = 0;
  }

  selfCopy10 = self;
  v115 = kVMURootRetainCycle[0];
  v109 = [(__CFString *)v115 length];
  v52 = self->_debugTimer;
  if (v52)
  {
    signpostID13 = [(VMUDebugTimer *)v52 signpostID];
    v52 = self->_debugTimer;
    if (signpostID13)
    {
      logHandle9 = [(VMUDebugTimer *)v52 logHandle];
      signpostID14 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle9))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle9, OS_SIGNPOST_INTERVAL_END, signpostID14, "buildLeakTree", "", &__pattern4, 2u);
      }

      selfCopy10 = self;
      v52 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v52 endEvent:"buildLeakTree", v106];
  [(VMUDebugTimer *)selfCopy10->_debugTimer startWithCategory:"buildLeakTree" message:"building call tree from references"];
  v56 = selfCopy10->_debugTimer;
  if (v56)
  {
    logHandle10 = [(VMUDebugTimer *)v56 logHandle];
    signpostID15 = [(VMUDebugTimer *)self->_debugTimer signpostID];
    if (signpostID15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle10))
    {
      LOWORD(__pattern4._pi) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle10, OS_SIGNPOST_INTERVAL_BEGIN, signpostID15, "buildLeakTree", "building call tree from references", &__pattern4, 2u);
    }
  }

  if (*(v161 + 6))
  {
    v59 = 0;
    do
    {
      v60 = objc_autoreleasePoolPush();
      v61 = v112[v59];
      v62 = v113;
      v63 = v121[v61];
      if (v63)
      {
        v64 = v63;
        if (v114)
        {
          v65 = v119[v61];

          v62 = v65;
        }
      }

      else
      {
        memset(&__pattern4, 0, sizeof(__pattern4));
        selfCopy12 = self;
        if (v116)
        {
          [v116 nodeDetails:v61];
        }

        if ([(VMUDirectedGraph *)self->_leakedGraph parentGroupForNode:v61]== -1)
        {
          v67 = @"ROOT LEAK: ";
        }

        else
        {
          v67 = v115;
        }

        if (v114)
        {
          v68 = NSMapGet(table, __pattern4._pi);
          if (v68)
          {
            v69 = NSMapGet(v118, v68);

            v119[v61] = v69;
            v62 = v69;
            selfCopy12 = self;
          }
        }

        v70 = [(VMULeakDetector *)selfCopy12 nodeDescription:v61 usingDetails:&__pattern4];
        v71 = [(__CFString *)v67 stringByAppendingString:v70];

        if (self->_groupByType)
        {
          [(VMUCallTreeRoot *)v62 addChildWithName:v71 address:0 count:1 numBytes:__pattern4._si & 0xFFFFFFFFFFFFFFFLL toNode:v62];
        }

        else
        {
          [(VMUCallTreeRoot *)v62 addUniqueChildWithName:v71 address:__pattern4._pi count:1 numBytes:__pattern4._si & 0xFFFFFFFFFFFFFFFLL toNode:v62 isLeafNode:0];
        }
        v64 = ;
        v121[v61] = v64;
      }

      if (*v120 > v61 && ((*(v120 + (v61 >> 3) + 4) >> (v61 & 7)) & 1) != 0 && (v72 = v64) != 0)
      {
        v73 = v72;
        v74 = 0;
        do
        {
          parent = [v73 parent];
          if (parent)
          {
            parent2 = [v73 parent];
            v76Parent = [parent2 parent];
            v78 = v76Parent == 0;

            if (v78)
            {
              name = [v73 name];

              v74 = name;
            }
          }

          parent3 = [v73 parent];

          v73 = parent3;
        }

        while (parent3);
      }

      else
      {
        v74 = 0;
      }

      __pattern4._pi = 0;
      __pattern4._si = &__pattern4;
      __pattern4._bs = 0x2020000000;
      v143 = 0;
      v127[0] = MEMORY[0x1E69E9820];
      v127[1] = 3221225472;
      v127[2] = __32__VMULeakDetector_buildLeakTree__block_invoke_87;
      v127[3] = &unk_1E82780B0;
      v137 = v121;
      v81 = v74;
      v128 = v81;
      p_pattern4 = &__pattern4;
      v138 = v109;
      v82 = v116;
      v129 = v82;
      v83 = v62;
      v130 = v83;
      v84 = v64;
      v131 = v84;
      v139 = v111;
      v135 = v110;
      selfCopy13 = self;
      v140 = v120;
      v133 = v115;
      v134 = v117;
      v141 = v119;
      [v82 enumerateReferencesOfNode:v61 withBlock:v127];

      _Block_object_dispose(&__pattern4, 8);
      objc_autoreleasePoolPop(v60);
      ++v59;
    }

    while (v59 != *(v161 + 6));
  }

  v85 = self->_debugTimer;
  if (v85)
  {
    signpostID16 = [(VMUDebugTimer *)v85 signpostID];
    v85 = self->_debugTimer;
    if (signpostID16)
    {
      logHandle11 = [(VMUDebugTimer *)v85 logHandle];
      signpostID17 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle11))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle11, OS_SIGNPOST_INTERVAL_END, signpostID17, "buildLeakTree", "", &__pattern4, 2u);
      }

      v85 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v85 endEvent:"buildLeakTree"];
  free(v112);
  free(v111);
  free(v120);
  free(v121);
  free(v119);

  selfCopy16 = self;
  if ([(VMUCallTreeNode *)v113 numChildren])
  {
    [(NSMutableArray *)self->_leakTreeRootsArray addObject:v113];
  }

  v90 = self->_debugTimer;
  if (v90)
  {
    signpostID18 = [(VMUDebugTimer *)v90 signpostID];
    v90 = self->_debugTimer;
    if (signpostID18)
    {
      logHandle12 = [(VMUDebugTimer *)v90 logHandle];
      signpostID19 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle12))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle12, OS_SIGNPOST_INTERVAL_END, signpostID19, "buildLeakTree", "", &__pattern4, 2u);
      }

      selfCopy16 = self;
      v90 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v90 endEvent:"buildLeakTree"];
  [(VMUDebugTimer *)selfCopy16->_debugTimer startWithCategory:"buildLeakTree" message:"addChildCountsIntoNode"];
  v94 = selfCopy16->_debugTimer;
  if (v94)
  {
    logHandle13 = [(VMUDebugTimer *)v94 logHandle];
    signpostID20 = [(VMUDebugTimer *)selfCopy16->_debugTimer signpostID];
    if (signpostID20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle13))
    {
      LOWORD(__pattern4._pi) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle13, OS_SIGNPOST_INTERVAL_BEGIN, signpostID20, "buildLeakTree", "addChildCountsIntoNode", &__pattern4, 2u);
    }

    selfCopy16 = self;
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v97 = selfCopy16->_leakTreeRootsArray;
  v98 = [(NSMutableArray *)v97 countByEnumeratingWithState:&v123 objects:v164 count:16];
  if (v98)
  {
    v99 = *v124;
    do
    {
      for (j = 0; j != v98; ++j)
      {
        if (*v124 != v99)
        {
          objc_enumerationMutation(v97);
        }

        [*(*(&v123 + 1) + 8 * j) addChildCountsIntoNode];
      }

      v98 = [(NSMutableArray *)v97 countByEnumeratingWithState:&v123 objects:v164 count:16];
    }

    while (v98);
  }

  [(NSMutableArray *)self->_leakTreeRootsArray sortUsingSelector:sel_comparePuttingRetainCycleNodesAtTop_];
  v101 = self->_debugTimer;
  if (v101)
  {
    signpostID21 = [(VMUDebugTimer *)v101 signpostID];
    v101 = self->_debugTimer;
    if (signpostID21)
    {
      logHandle14 = [(VMUDebugTimer *)v101 logHandle];
      signpostID22 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle14))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle14, OS_SIGNPOST_INTERVAL_END, signpostID22, "buildLeakTree", "", &__pattern4, 2u);
      }

      v101 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v101 endEvent:"buildLeakTree"];

  _Block_object_dispose(&v160, 8);
  v105 = *MEMORY[0x1E69E9840];
}

void *__32__VMULeakDetector_buildLeakTree__block_invoke(void *result, unsigned int a2)
{
  v2 = result[5];
  v3 = *(result[4] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *(v2 + 4 * v4) = a2;
  v5 = result[6];
  if (*v5 > a2)
  {
    *(v5 + (a2 >> 3) + 4) |= 1 << (a2 & 7);
  }

  return result;
}

uint64_t __32__VMULeakDetector_buildLeakTree__block_invoke_63(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    return [*(*(result + 32) + 128) addGroupNodeForNodes:a2 count:a3];
  }

  return result;
}

void __32__VMULeakDetector_buildLeakTree__block_invoke_68(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ([*(a1 + 32) isRootNode:a2])
  {
    if ([*(*(a1 + 40) + 128) isGroupNode:v2])
    {
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x2020000000;
      v41 = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 0;
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2020000000;
      v35 = 0;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = -1;
      key = 0;
      p_key = &key;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__2;
      v28 = __Block_byref_object_dispose__2;
      v29 = 0;
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = *(v5 + 128);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __32__VMULeakDetector_buildLeakTree__block_invoke_69;
      v15 = &unk_1E8278038;
      v16 = v5;
      v17 = v4;
      v18 = &key;
      v19 = &v36;
      v20 = &v30;
      v7 = *(a1 + 88);
      v22 = v40;
      v23 = v7;
      v21 = v34;
      [v6 enumerateMembersOfGroupNode:v2 withBlock:&v12];
      v2 = *(v31 + 6);
      if (*(v37 + 6) == 6)
      {
        [*(a1 + 48) addObject:{p_key[5], v12, v13, v14, v15, v16}];
      }

      _Block_object_dispose(&key, 8);
      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(v34, 8);
      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(v40, 8);
    }

    (*(*(a1 + 80) + 16))();
    v8 = *(a1 + 56);
    if (v8)
    {
      key = 0;
      p_key = 0;
      v26 = 0;
      if (*(a1 + 64))
      {
        [*(a1 + 64) nodeDetails:v2];
        v8 = *(a1 + 56);
      }

      if ([v8 inspectingLiveProcess] && objc_msgSend(*(a1 + 56), "usesLiteMode"))
      {
        v9 = [*(a1 + 64) vmuVMRegionForNode:v2];
        v10 = v9;
        if (v9 && *(v9 + 148) == *(a1 + 96))
        {
          [*(a1 + 56) liteMSLPayloadforMallocAddress:key size:p_key & 0xFFFFFFFFFFFFFFFLL];
          uniquing_table_index = msl_payload_get_uniquing_table_index();
        }

        else
        {
          uniquing_table_index = -1;
        }
      }

      else
      {
        uniquing_table_index = -1;
      }

      NSMapInsert(*(a1 + 72), key, uniquing_table_index);
    }
  }
}

void __32__VMULeakDetector_buildLeakTree__block_invoke_69(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1[4] + 128);
  if (v4)
  {
    [v4 nodeDetails:a2];
  }

  v5 = *(a1[7] + 8);
  if (!*(v5 + 24))
  {
    *(v5 + 24) = 1;
    *(*(a1[8] + 8) + 24) = v2;
  }

  if (*(*(a1[7] + 8) + 24) != 5)
  {
    *(*(a1[9] + 8) + 24) = 0;
  }

  v6 = a1[11];
  if (*v6 > v2)
  {
    *(v6 + (v2 >> 3) + 4) |= 1 << (v2 & 7);
  }

  ++*(*(a1[10] + 8) + 24);
}

void __32__VMULeakDetector_buildLeakTree__block_invoke_79(uint64_t a1, char a2, void *key)
{
  if ((a2 & 0x12) != 0)
  {
    if (!NSMapGet(*(a1 + 32), key))
    {
      return;
    }

    uniquing_table_index = msl_payload_get_uniquing_table_index();
    v6 = *(a1 + 32);
    v7 = key;
  }

  else
  {
    if ((a2 & 0x24) == 0 || !NSMapGet(*(a1 + 32), key))
    {
      return;
    }

    v6 = *(a1 + 32);
    v7 = key;
    uniquing_table_index = -1;
  }

  NSMapInsert(v6, v7, uniquing_table_index);
}

void __32__VMULeakDetector_buildLeakTree__block_invoke_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (VMUIsOwningReference(*(a5 + 4)))
  {
    v9 = *(*(a1 + 104) + 8 * a4);
    v10 = v9;
    if (v9 && (v11 = *(a1 + 32), [v9 name], v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = objc_msgSend(v11, "isEqualToString:", v12), v12, v11))
    {
      if (*(*(*(a1 + 96) + 8) + 24))
      {
LABEL_25:

        goto LABEL_26;
      }

      v13 = [v10 name];
      v14 = [v13 substringFromIndex:*(a1 + 112)];

      v15 = [@"CYCLE BACK TO " stringByAppendingString:v14];
      v16 = [*(a1 + 40) is64bit];
      v17 = a5[1];
      v35 = *a5;
      v36 = v17;
      v37 = *(a5 + 4);
      v18 = [VMULeakDetector referenceDescription:&v35 dstDescription:v15 is64bit:v16];

      v19 = [*(a1 + 48) addChildWithName:v18 address:0 count:0 numBytes:0 toNode:*(a1 + 56)];
      *(*(*(a1 + 96) + 8) + 24) = 1;
    }

    else
    {
      v20 = *(a1 + 120);
      if (*v20 > a4 && ((*(v20 + (a4 >> 3) + 4) >> (a4 & 7)) & 1) != 0)
      {
        goto LABEL_25;
      }

      (*(*(a1 + 88) + 16))();
      v21 = *(a5 + 4);
      v22 = [*(a1 + 64) nodeDescription:a4 usingDetails:v21];
      v23 = *(a1 + 128);
      if (*v23 > a4 && ((*(v23 + (a4 >> 3) + 4) >> (a4 & 7)) & 1) != 0)
      {
        v24 = [*(a1 + 72) stringByAppendingString:v22];

        v22 = v24;
      }

      v25 = [*(a1 + 40) is64bit];
      v26 = a5[1];
      v35 = *a5;
      v36 = v26;
      v37 = *(a5 + 4);
      v14 = [VMULeakDetector referenceDescription:&v35 dstDescription:v22 is64bit:v25];

      if ((*(*(a1 + 64) + 17) & 1) == 0 && VMUGraphNodeType_IsVMRegion(v21[1] >> 60))
      {
        v27 = [*(a1 + 40) vmuVMRegionForNode:a4];
        v28 = v27;
        v21[1] = v21[1] & 0xF000000000000000 | (v27[22] + v27[23] - v27[24]) & 0xFFFFFFFFFFFFFFFLL;
        if ((*(*(a1 + 64) + 16) & 1) == 0)
        {
          v29 = MEMORY[0x1E696AEC0];
          v30 = VMUMemorySizeString(v27[23]);
          v31 = [v29 stringWithFormat:@"%@  dirty: %s  swapped: %s", v14, v30, VMUMemorySizeString(v28[22])];

          v32 = v28[24];
          if (v32)
          {
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  purgableVolatile: %s", v31, VMUMemorySizeString(v32)];
          }

          else
          {
            v14 = v31;
          }
        }
      }

      v18 = *(a1 + 56);
      v33 = *(a1 + 48);
      if (*(*(a1 + 64) + 16) == 1)
      {
        [v33 addChildWithName:v14 address:0 count:1 numBytes:v21[1] & 0xFFFFFFFFFFFFFFFLL toNode:v18];
      }

      else
      {
        [v33 addUniqueChildWithName:v14 address:*v21 count:1 numBytes:v21[1] & 0xFFFFFFFFFFFFFFFLL toNode:v18 isLeafNode:0];
      }
      v34 = ;

      *(*(a1 + 104) + 8 * a4) = v34;
      if (*(a1 + 80))
      {
        *(*(a1 + 136) + 8 * a4) = *(a1 + 48);
      }

      v10 = v34;
    }

    goto LABEL_25;
  }

LABEL_26:
  objc_autoreleasePoolPop(v8);
}

+ (id)_consolidatedRootLeakDescriptionsForTree:(id)tree
{
  v33 = *MEMORY[0x1E69E9840];
  treeCopy = tree;
  if (_consolidatedRootLeakDescriptionsForTree__onceToken != -1)
  {
    +[VMULeakDetector _consolidatedRootLeakDescriptionsForTree:];
  }

  v4 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = treeCopy;
  obj = [treeCopy sortedChildren];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name containsString:@": 0x"];

        if (v11)
        {
          v12 = &_consolidatedRootLeakDescriptionsForTree__rootLeakMallocTypeNameRegex;
          v13 = @"$1: malloc[$2]";
        }

        else
        {
          name2 = [v9 name];
          v15 = [name2 containsString:@": VM: "];

          v12 = &_consolidatedRootLeakDescriptionsForTree__rootLeakTypeNameRegex;
          if (v15)
          {
            v12 = &_consolidatedRootLeakDescriptionsForTree__rootLeakVMRegionTypeNameRegex;
            v13 = @"$1: $2";
          }

          else
          {
            v13 = @"$1: <$2>";
          }
        }

        v16 = *v12;
        name3 = [v9 name];
        name4 = [v9 name];
        v19 = [v16 stringByReplacingMatchesInString:name3 options:0 range:0 withTemplate:{objc_msgSend(name4, "length"), v13}];

        LODWORD(name4) = [v9 count];
        v20 = name4 - [v9 sumOfChildCounts];
        v21 = [v4 objectForKeyedSubscript:v19];
        v22 = v21;
        if (v21)
        {
          v20 = [v21 unsignedIntValue] + v20;
        }

        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
        [v4 setObject:v23 forKeyedSubscript:v19];
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v4;
}

void __60__VMULeakDetector__consolidatedRootLeakDescriptionsForTree___block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(ROOT LEAK|CYCLE): 0x[0-9a-f]+ \\[(.*)\\].*" options:0 error:0];
  v1 = _consolidatedRootLeakDescriptionsForTree__rootLeakMallocTypeNameRegex;
  _consolidatedRootLeakDescriptionsForTree__rootLeakMallocTypeNameRegex = v0;

  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(ROOT LEAK|CYCLE): (VM: .*)  0x.*" options:0 error:0];
  v3 = _consolidatedRootLeakDescriptionsForTree__rootLeakVMRegionTypeNameRegex;
  _consolidatedRootLeakDescriptionsForTree__rootLeakVMRegionTypeNameRegex = v2;

  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(ROOT LEAK|CYCLE): <(.*) 0x[0-9a-f]+>* \\[\\d+\\].*" options:0 error:0];
  v5 = _consolidatedRootLeakDescriptionsForTree__rootLeakTypeNameRegex;
  _consolidatedRootLeakDescriptionsForTree__rootLeakTypeNameRegex = v4;
}

- (void)printLeakTree
{
  v59 = *MEMORY[0x1E69E9840];
  debugTimer = self->_debugTimer;
  if (debugTimer)
  {
    signpostID = [(VMUDebugTimer *)debugTimer signpostID];
    debugTimer = self->_debugTimer;
    if (signpostID)
    {
      logHandle = [(VMUDebugTimer *)debugTimer logHandle];
      signpostID2 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = signpostID2;
        if (os_signpost_enabled(logHandle))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, v7, "printLeakTree", "", buf, 2u);
        }
      }

      debugTimer = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)debugTimer endEvent:"printLeakTree"];
  [(VMUDebugTimer *)self->_debugTimer startWithCategory:"printLeakTree" message:""];
  v8 = self->_debugTimer;
  if (v8)
  {
    logHandle2 = [(VMUDebugTimer *)v8 logHandle];
    signpostID3 = [(VMUDebugTimer *)self->_debugTimer signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = signpostID3;
      if (os_signpost_enabled(logHandle2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, v11, "printLeakTree", "", buf, 2u);
      }
    }
  }

  if ([(NSMutableArray *)self->_leakTreeRootsArray count]== 1)
  {
    v12 = 74;
  }

  else
  {
    v12 = 76;
  }

  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = self->_leakTreeRootsArray;
  v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v53;
    v42 = *v53;
    v43 = v12;
    do
    {
      v16 = 0;
      v44 = v14;
      do
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v52 + 1) + 8 * v16);
        if (self->_stackLogReader)
        {
          backtraceString = [*(*(&v52 + 1) + 8 * v16) backtraceString];
          v19 = VMUBacktraceIsExcludedMarker;

          if (backtraceString == v19)
          {
            self->_numExcluded += [v17 count];
            goto LABEL_41;
          }

          v47 = v16;
          backtraceString2 = [v17 backtraceString];
          v21 = [backtraceString2 length];

          if (v21)
          {
            v45 = v17;
            v22 = [VMULeakDetector _consolidatedRootLeakDescriptionsForTree:v17];
            v23 = [v22 keysSortedByValueUsingComparator:&__block_literal_global_134];
            lastObject = [v23 lastObject];
            [(VMULeakDetector *)self printout:"STACK OF "];
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v25 = v23;
            v26 = [v25 countByEnumeratingWithState:&v48 objects:v57 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v49;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v49 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v48 + 1) + 8 * i);
                  v31 = [v22 objectForKeyedSubscript:v30];
                  unsignedIntValue = [v31 unsignedIntValue];

                  if (unsignedIntValue <= 1)
                  {
                    v33 = "INSTANCE";
                  }

                  else
                  {
                    v33 = "INSTANCES";
                  }

                  -[VMULeakDetector printout:](self, "printout:", "%u %s OF '%s'", unsignedIntValue, v33, [v30 UTF8String]);
                  if (v30 == lastObject)
                  {
                    v34 = ":";
                  }

                  else
                  {
                    v34 = ", ";
                  }

                  [(VMULeakDetector *)self printout:v34];
                }

                v27 = [v25 countByEnumeratingWithState:&v48 objects:v57 count:16];
              }

              while (v27);
            }

            v17 = v45;
            backtraceString3 = [v45 backtraceString];
            -[VMULeakDetector printout:](self, "printout:", "%s\n", [backtraceString3 UTF8String]);

            v12 = v43;
            v14 = v44;
            v15 = v42;
          }

          else
          {
            [(VMULeakDetector *)self printout:"NO STACK\n"];
          }

          [(VMULeakDetector *)self printout:"====\n"];
          v16 = v47;
        }

        [v17 printCallTreeToFile:self->_outputFile cumulativeOutput:self->_outputString options:v12];
        [(VMULeakDetector *)self printout:"\n"];
LABEL_41:
        ++v16;
      }

      while (v16 != v14);
      v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v14);
  }

  v36 = self->_debugTimer;
  if (v36)
  {
    signpostID4 = [(VMUDebugTimer *)v36 signpostID];
    v36 = self->_debugTimer;
    if (signpostID4)
    {
      logHandle3 = [(VMUDebugTimer *)v36 logHandle];
      signpostID5 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v40 = signpostID5;
        if (os_signpost_enabled(logHandle3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, v40, "printLeakTree", "", buf, 2u);
        }
      }

      v36 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v36 endEvent:"printLeakTree"];
  v41 = *MEMORY[0x1E69E9840];
}

- (unsigned)detectLeaksWithError:(id *)error
{
  v46[1] = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__VMULeakDetector_detectLeaksWithError___block_invoke;
  aBlock[3] = &unk_1E82780F8;
  aBlock[4] = self;
  aBlock[5] = &v41;
  aBlock[6] = &v37;
  v5 = _Block_copy(aBlock);
  [(VMUObjectGraph *)self->_graph enumerateObjectsWithBlock:v5];
  self->_allocationsCount = *(v38 + 6);
  self->_allocationsSize = v42[3];
  if (![(VMULeakDetector *)self checkTaskExistence])
  {
LABEL_25:
    v22 = 0;
    goto LABEL_26;
  }

  if (!self->_allocationsCount)
  {
    if (error)
    {
      v23 = MEMORY[0x1E696ABC0];
      v45 = @"message";
      v46[0] = @"unable to inspect heap ranges of target process; it may be using a malloc replacement library without the required support";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      *error = [v23 errorWithDomain:@"VMULeakDetectorDomain" code:1 userInfo:v24];
    }

    goto LABEL_25;
  }

  debugTimer = self->_debugTimer;
  if (debugTimer)
  {
    signpostID = [(VMUDebugTimer *)debugTimer signpostID];
    debugTimer = self->_debugTimer;
    if (signpostID)
    {
      logHandle = [(VMUDebugTimer *)debugTimer logHandle];
      signpostID2 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, signpostID2, "VMULeakDetector", "", buf, 2u);
      }

      debugTimer = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)debugTimer endEvent:"VMULeakDetector"];
  [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMULeakDetector" message:"scan for leaks"];
  v10 = self->_debugTimer;
  if (v10)
  {
    logHandle2 = [(VMUDebugTimer *)v10 logHandle];
    signpostID3 = [(VMUDebugTimer *)self->_debugTimer signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "VMULeakDetector", "scan for leaks", buf, 2u);
    }
  }

  nodeNamespaceSize = [(VMUDirectedGraph *)self->_graph nodeNamespaceSize];
  v14 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v14 = nodeNamespaceSize;
  [(VMULeakDetector *)self setLeakedNodes:v14];
  if (self->_checkAbandoned)
  {
    [(VMULeakDetector *)self setAbandoned:[(VMUProcessObjectGraph *)self->_graph copyUserMarked]];
  }

  graph = self->_graph;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __40__VMULeakDetector_detectLeaksWithError___block_invoke_157;
  v30 = &unk_1E8278120;
  selfCopy = self;
  v33 = &v41;
  v34 = &v37;
  v32 = v5;
  VMUWithRootNodeMarkingMap(graph, &v27);
  v16 = self->_debugTimer;
  if (v16)
  {
    v17 = [(VMUDebugTimer *)v16 signpostID:v27];
    v16 = self->_debugTimer;
    if (v17)
    {
      logHandle3 = [(VMUDebugTimer *)v16 logHandle];
      signpostID4 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, signpostID4, "VMULeakDetector", "", buf, 2u);
      }

      v16 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v16 endEvent:"VMULeakDetector", v27, v28, v29, v30, selfCopy];
  leakedAllocationsCount = self->_leakedAllocationsCount;
  numExcluded = self->_numExcluded;

  v22 = leakedAllocationsCount - numExcluded;
LABEL_26:

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  v25 = *MEMORY[0x1E69E9840];
  return v22;
}

BOOL __40__VMULeakDetector_detectLeaksWithError___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1[4] + 8) & 1) != 0 || !(result = VMUGraphNodeType_IsVMRegion(*(a3 + 8) >> 60)))
  {
    result = VMUGraphNodeIsRoot(a3);
    if (!result)
    {
      *(*(a1[5] + 8) + 24) += *(a3 + 8) & 0xFFFFFFFFFFFFFFFLL;
      ++*(*(a1[6] + 8) + 24);
    }
  }

  return result;
}

uint64_t __40__VMULeakDetector_detectLeaksWithError___block_invoke_157(void *a1, uint64_t a2)
{
  [*(a1[4] + 48) markReachableNodesFromRoots:a2 inMap:*(a1[4] + 112) options:*(a1[4] + 8)];
  v3 = *(a1[4] + 112);
  v4 = *v3;
  v5 = (*v3 + 7);
  if (v5 >= 8)
  {
    v6 = v3 + 1;
    v7 = v5 >> 3;
    do
    {
      *v6 = ~*v6;
      ++v6;
      --v7;
    }

    while (v7);
  }

  v8 = v4 & 7;
  if (v8)
  {
    *(v3 + (v5 >> 3) + 3) ^= 255 << v8;
  }

  *(*(a1[7] + 8) + 24) = 0;
  *(*(a1[6] + 8) + 24) = 0;
  [*(a1[4] + 48) enumerateMarkedObjects:*(a1[4] + 112) withBlock:a1[5]];
  *(a1[4] + 144) = *(*(a1[7] + 8) + 24);
  *(a1[4] + 160) = *(*(a1[6] + 8) + 24);
  *(*(a1[7] + 8) + 24) = 0;
  *(*(a1[6] + 8) + 24) = 0;
  result = [*(a1[4] + 48) enumerateMarkedObjects:*(a1[4] + 104) withBlock:a1[5]];
  *(a1[4] + 148) = *(*(a1[7] + 8) + 24);
  *(a1[4] + 168) = *(*(a1[6] + 8) + 24);
  return result;
}

- (unsigned)doNormalLeakDetectionWithError:(id *)error
{
  [(VMULeakDetector *)self detectLeaksWithError:?];
  if (*error)
  {
    return 0;
  }

  result = [(VMULeakDetector *)self checkTaskExistence];
  if (result)
  {
    [(VMULeakDetector *)self printout:"Process %d: %u nodes malloced for %llu KB\n", [(VMUProcessObjectGraph *)self->_graph pid], self->_allocationsCount, (self->_allocationsSize + 1023) >> 10];
    v6 = [(VMUProcessObjectGraph *)self->_graph pid];
    leakedAllocationsCount = self->_leakedAllocationsCount;
    if (leakedAllocationsCount == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "s";
    }

    [(VMULeakDetector *)self printout:"Process %d: %u leak%s for %llu total leaked bytes.\n", v6, leakedAllocationsCount, v8, self->_leakedAllocationsSize];
    if (self->_abandonedSize)
    {
      v9 = [(VMUProcessObjectGraph *)self->_graph pid];
      abandonedCount = self->_abandonedCount;
      if (abandonedCount == 1)
      {
        v11 = "";
      }

      else
      {
        v11 = "s";
      }

      [(VMULeakDetector *)self printout:"Process %d: %u object%s abandoned for %llu total abandoned bytes.\n", v9, abandonedCount, v11, self->_abandonedSize];
    }

    if (!self->_suppressOutput)
    {
      [(VMULeakDetector *)self printout:"\n"];
      if (self->_abandoned || self->_showListOfLeaks)
      {
        graph = self->_graph;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __50__VMULeakDetector_doNormalLeakDetectionWithError___block_invoke;
        v16[3] = &unk_1E8278148;
        v16[4] = self;
        VMUEnumerateVMAnnotatedMallocObjectsWithBlock(graph, v16);
      }

      else
      {
        [(VMULeakDetector *)self buildLeakTree];
        if ([(VMULeakDetector *)self outputFile]|| ([(VMULeakDetector *)self outputString], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
        {
          [(VMULeakDetector *)self printLeakTree];
        }
      }
    }

    numExcluded = self->_numExcluded;
    if (numExcluded)
    {
      if (numExcluded == 1)
      {
        v14 = "";
      }

      else
      {
        v14 = "s";
      }

      [(VMULeakDetector *)self printout:"\n%u leak%s excluded (not printed)\n", self->_numExcluded, v14];
    }

    if ([(VMULeakDetector *)self outputFile])
    {
      fflush([(VMULeakDetector *)self outputFile]);
    }

    return self->_leakedAllocationsCount - self->_numExcluded;
  }

  return result;
}

void *__50__VMULeakDetector_doNormalLeakDetectionWithError___block_invoke(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  v6 = result[14];
  if (*v6 > a2 && ((*(v6 + (a2 >> 3) + 4) >> (a2 & 7)) & 1) != 0)
  {
    v9 = *a3;
    v10 = *(a3 + 2);
    v7 = "Leak";
    return [result printLeak:v7 node:a2 details:&v9 region:a4 stop:a5];
  }

  v8 = result[13];
  if (v8 && *v8 > a2 && ((*(v8 + (a2 >> 3) + 4) >> (a2 & 7)) & 1) != 0)
  {
    v9 = *a3;
    v10 = *(a3 + 2);
    v7 = "Abandoned";
    return [result printLeak:v7 node:a2 details:&v9 region:a4 stop:a5];
  }

  return result;
}

- (void)dealloc
{
  abandoned = self->_abandoned;
  if (abandoned)
  {
    free(abandoned);
    self->_abandoned = 0;
  }

  leakedNodes = self->_leakedNodes;
  if (leakedNodes)
  {
    free(leakedNodes);
    self->_leakedNodes = 0;
  }

  if (self->_fcloseOutput)
  {
    outputFile = self->_outputFile;
    if (outputFile)
    {
      fclose(outputFile);
      self->_outputFile = 0;
    }
  }

  v6.receiver = self;
  v6.super_class = VMULeakDetector;
  [(VMULeakDetector *)&v6 dealloc];
}

@end