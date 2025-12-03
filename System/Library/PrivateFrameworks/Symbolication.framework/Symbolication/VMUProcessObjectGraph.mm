@interface VMUProcessObjectGraph
- ($938B03310D06493B2963E5A84CB75A7E)autoreleasePoolOffsets;
- (BOOL)is64bit;
- (BOOL)nodeDetailIsAutoreleasePoolContentPage:(id)page;
- (NSString)binaryImagesDescription;
- (NSString)processDescriptionString;
- (NSString)processName;
- (VMUClassInfoMap)realizedClasses;
- (VMUProcessObjectGraph)initWithArchived:(id)archived version:(int64_t)version options:(unint64_t)options diskLogs:(id)logs error:(id *)error;
- (VMUProcessObjectGraph)initWithPid:(int)pid nodes:(_VMUBlockNode *)nodes nodeCount:zoneNames:classInfoMap:regions:pthreadOffsets:userMarked:autoreleasePoolOffsets:;
- (VMUTaskMemoryScanner)scanner;
- (_CSArchitecture)parseMacOSArchitectureFromProcessDescription;
- (_VMURange)binarySectionRangeContainingAddress:(unint64_t)address;
- (_VMURange)dyldSharedCacheRange;
- (_VMURange)rangeForSymbolName:(id)name inRegion:(id)region;
- (_VMURange)regionSymbolRangeContainingAddress:(unint64_t)address;
- (id)_descriptionForRegionAddress:(unint64_t)address withOffset:(unint64_t)offset showSegment:(BOOL)segment;
- (id)binarySectionNameForAddress:(unint64_t)address;
- (id)copyWithZone:(_NSZone *)zone;
- (id)leakedNodesGraph;
- (id)regionSymbolNameForAddress:(unint64_t)address;
- (id)sampleBacktracesString;
- (id)vmuVMRegionForAddress:(unint64_t)address;
- (id)zoneNameForIndex:(unsigned int)index;
- (unint64_t)ledgerValueForKey:(id)key keyExists:(BOOL *)exists;
- (unsigned)enumerateReferencesFromDataRegion:(id)region atGlobalSymbol:(id)symbol withBlock:(id)block;
- (unsigned)enumerateRegionsWithBlock:(id)block;
- (unsigned)nodeReferencedFromDataRegion:(id)region byGlobalSymbol:(id)symbol;
- (void)_deriveObjcClassStructureRanges;
- (void)_generateSymbolStoreFromExistingGraph;
- (void)_reorderLabelsWithNodeNameMap:(unsigned int *)map;
- (void)archiveDictionaryRepresentation:(id)representation options:(unint64_t)options;
- (void)copyUserMarked;
- (void)dealloc;
- (void)markLeafNodes:(void *)nodes;
- (void)markReachableNodesFromRoots:(void *)roots inMap:(void *)map options:(unsigned int)options;
- (void)markRootNodes:(void *)nodes;
- (void)parseAddressesFromNodeLabelsIntoSymbolStore;
- (void)refineEdges:(unsigned int)edges withOptions:(unsigned int)options markingInvalid:(void *)invalid;
- (void)refineTypesWithOverlay:(id)overlay;
- (void)removeWeakEdges;
- (void)resymbolicateNonObjectsUsingStackBacktrace;
- (void)resymbolicatePrivateMaps;
- (void)setBinaryImagesDescription:(id)description;
- (void)setProcessDescriptionString:(id)string;
- (void)setProcessName:(id)name;
- (void)setUserMarked:(void *)marked;
@end

@implementation VMUProcessObjectGraph

- (VMUProcessObjectGraph)initWithPid:(int)pid nodes:(_VMUBlockNode *)nodes nodeCount:zoneNames:classInfoMap:regions:pthreadOffsets:userMarked:autoreleasePoolOffsets:
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v41[3] = *MEMORY[0x1E69E9840];
  v15 = v5;
  v37 = v9;
  v16 = v8;
  v36 = v42;
  v39.receiver = self;
  v39.super_class = VMUProcessObjectGraph;
  v17 = [(VMUObjectGraph *)&v39 initWithNodesNoCopy:nodes nodeCount:v11];
  v18 = v17;
  if (v17)
  {
    v38.receiver = v17;
    v38.super_class = VMUProcessObjectGraph;
    [(VMUObjectGraph *)&v38 setIndexedClassInfos:v37];
    *(&v18->super._referencingCount + 1) = pid;
    LODWORD(v18->_scanner) = *MEMORY[0x1E69E9AC8];
    HIDWORD(v18->_scanner) = *MEMORY[0x1E69E9AB0];
    objc_storeStrong(&v18->_regionCount, v10);
    objc_storeStrong(&v18->_machAbsolute, v8);
    LODWORD(v18->_regions) = [v16 count];
    v19 = objc_opt_new();
    binaryImagesDescription = v18->_binaryImagesDescription;
    v18->_binaryImagesDescription = v19;

    v21 = objc_opt_new();
    threadNameRanges = v18->_threadNameRanges;
    v18->_threadNameRanges = v21;

    v23 = objc_opt_new();
    binarySectionNameRanges = v18->_binarySectionNameRanges;
    v18->_binarySectionNameRanges = v23;

    objc_storeStrong(&v18->_gotObjcClassStructureRanges, v42);
    v40[0] = @"parentPageOffset";
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v44[1]];
    v41[0] = v25;
    v40[1] = @"firstEntryOffset";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v44[2]];
    v41[1] = v26;
    v40[2] = @"childPageOffset";
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v44[6]];
    v41[2] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
    pthreadOffsets = v18->_pthreadOffsets;
    v18->_pthreadOffsets = v28;

    v30 = objc_opt_new();
    symbolStore = v18->_symbolStore;
    v18->_symbolStore = v30;

    LODWORD(v18->_physicalFootprintPeak) = 0;
    if (v43)
    {
      v32 = ((*v43 + 7) >> 3) + 4;
      v33 = malloc_type_malloc(v32, 0xEE1F7B8EuLL);
      memcpy(v33, v43, v32);
      v18->_autoreleasePoolOffsets = v33;
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)dealloc
{
  autoreleasePoolOffsets = self->_autoreleasePoolOffsets;
  if (autoreleasePoolOffsets)
  {
    free(autoreleasePoolOffsets);
    self->_autoreleasePoolOffsets = 0;
  }

  v4.receiver = self;
  v4.super_class = VMUProcessObjectGraph;
  [(VMUObjectGraph *)&v4 dealloc];
}

- (VMUProcessObjectGraph)initWithArchived:(id)archived version:(int64_t)version options:(unint64_t)options diskLogs:(id)logs error:(id *)error
{
  v171[3] = *MEMORY[0x1E69E9840];
  archivedCopy = archived;
  logsCopy = logs;
  v169.receiver = self;
  v169.super_class = VMUProcessObjectGraph;
  v14 = [(VMUObjectGraph *)&v169 initWithArchived:archivedCopy version:version options:options diskLogs:logsCopy error:error];
  if (!v14)
  {
LABEL_97:
    v93 = v14;
    goto LABEL_98;
  }

  v156 = logsCopy;
  v168 = 0;
  if (error)
  {
    errorCopy = error;
  }

  else
  {
    errorCopy = &v168;
  }

  v16 = [archivedCopy objectForKeyedSubscript:@"processGraphInfo"];
  v17 = [v16 objectForKeyedSubscript:@"pid"];
  v14[49] = [v17 intValue];

  v18 = [v16 objectForKeyedSubscript:@"processName"];
  v19 = [v18 copy];
  v20 = *(v14 + 31);
  *(v14 + 31) = v19;

  v21 = [v16 objectForKeyedSubscript:@"processDescriptionString"];
  v22 = [v21 copy];
  v23 = *(v14 + 32);
  *(v14 + 32) = v22;

  v24 = [v16 objectForKeyedSubscript:@"isTranslatedByRosetta"];
  *(v14 + 264) = [v24 BOOLValue];

  v25 = [v16 objectForKeyedSubscript:@"binaryImagesDescription"];
  v26 = [VMUDirectedGraph _unarchivedObject:v25 ofClass:objc_opt_class() options:options];
  v27 = *(v14 + 35);
  *(v14 + 35) = v26;

  if (kVMUPrintArchivingTiming == 1)
  {
    fwrite("[Binary Images List] \n\n", 0x17uLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  v28 = [v16 objectForKeyedSubscript:@"showsPhysFootprint"];
  *(v14 + 380) = [v28 BOOLValue];

  v29 = [v16 objectForKeyedSubscript:@"didPhysFootprintDirtyAccounting"];
  *(v14 + 381) = [v29 BOOLValue];

  v30 = [v16 objectForKeyedSubscript:@"vmPageSize"];
  v14[52] = [v30 unsignedIntValue];

  v31 = [v16 objectForKeyedSubscript:@"kernPageSize"];
  v14[53] = [v31 unsignedIntValue];

  if (!v14[52])
  {
    v14[52] = v14[53];
  }

  v32 = [v16 objectForKeyedSubscript:@"dyldSharedCacheBase"];
  unsignedLongLongValue = [v32 unsignedLongLongValue];

  v34 = [v16 objectForKeyedSubscript:@"dyldSharedCacheLength"];
  unsignedLongLongValue2 = [v34 unsignedLongLongValue];

  *(v14 + 57) = unsignedLongLongValue;
  *(v14 + 58) = unsignedLongLongValue2;
  v36 = [v16 objectForKeyedSubscript:@"zoneNames"];
  v37 = [v36 copy];
  v38 = *(v14 + 30);
  *(v14 + 30) = v37;

  v39 = [v16 objectForKeyedSubscript:@"regionCount"];
  v14[58] = [v39 unsignedIntValue];

  v40 = [v16 objectForKeyedSubscript:@"machTime"];
  *(v14 + 27) = [v40 unsignedLongLongValue];

  v41 = [v16 objectForKeyedSubscript:@"snapshotDate"];
  v42 = [v41 copy];
  v43 = *(v14 + 54);
  *(v14 + 54) = v42;

  v44 = [v16 objectForKeyedSubscript:@"physFootprint"];
  *(v14 + 45) = [v44 unsignedLongLongValue];

  v45 = [v16 objectForKeyedSubscript:@"physFootprintPeak"];
  *(v14 + 46) = [v45 unsignedLongLongValue];

  v46 = [v16 objectForKeyedSubscript:@"pthreadOffsets"];
  v47 = [v46 copy];
  v48 = *(v14 + 40);
  *(v14 + 40) = v47;

  v49 = [v16 objectForKeyedSubscript:@"objectContentLevel"];
  v14[96] = [v49 unsignedIntValue];

  v14[97] = v14[96];
  v50 = [v16 objectForKeyedSubscript:@"srcAddressToExtraAutoreleaseCountDict"];
  optionsCopy = options;
  v51 = [VMUDirectedGraph _unarchivedObject:v50 ofClass:objc_opt_class() options:options];

  if (v51)
  {
    v52 = [[VMUSimpleDeserializer alloc] initWithData:v51];
    v53 = [(VMUSimpleDeserializer *)v52 deserialize32WithError:errorCopy];
    if (*errorCopy)
    {
LABEL_61:

      v93 = 0;
      goto LABEL_98;
    }

    v54 = v53;
    v153 = archivedCopy;
    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[srcAddressToExtraAutoreleaseCountDict] Count: %u\n\n", v53);
    }

    v55 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v54];
    if (v54)
    {
      while (1)
      {
        v56 = [(VMUSimpleDeserializer *)v52 deserialize64WithError:errorCopy];
        if (*errorCopy)
        {
          break;
        }

        v57 = v56;
        v58 = [(VMUSimpleDeserializer *)v52 deserialize32WithError:errorCopy];
        if (*errorCopy)
        {
          break;
        }

        v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v58];
        v60 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v57];
        [v55 setObject:v59 forKeyedSubscript:v60];

        if (!--v54)
        {
          goto LABEL_17;
        }
      }

      archivedCopy = v153;
      goto LABEL_61;
    }

LABEL_17:
    v61 = *(v14 + 49);
    *(v14 + 49) = v55;

    archivedCopy = v153;
  }

  v154 = archivedCopy;
  v62 = [v16 objectForKeyedSubscript:@"VMUVMRegionCurrentVersion"];
  integerValue = [v62 integerValue];

  if (integerValue > [objc_opt_class() version] || !v14[58])
  {
    v67 = 0;
    v152 = 0;
    v14[58] = 0;
LABEL_68:
    v98 = [v16 objectForKey:@"autoreleasePoolOffsets"];

    if (v98)
    {
      v99 = [v16 objectForKeyedSubscript:@"autoreleasePoolOffsets"];
      v100 = [v99 copy];
      v101 = *(v14 + 41);
      *(v14 + 41) = v100;
    }

    else
    {
      v170[0] = @"parentPageOffset";
      v102 = MEMORY[0x1E696AD98];
      if ([v14 is64bit])
      {
        v103 = 32;
      }

      else
      {
        v103 = 24;
      }

      v99 = [v102 numberWithUnsignedInt:v103];
      v171[0] = v99;
      v170[1] = @"firstEntryOffset";
      v104 = MEMORY[0x1E696AD98];
      if ([v14 is64bit])
      {
        v105 = 56;
      }

      else
      {
        v105 = 40;
      }

      v101 = [v104 numberWithUnsignedInt:v105];
      v171[1] = v101;
      v170[2] = @"childPageOffset";
      v106 = MEMORY[0x1E696AD98];
      if ([v14 is64bit])
      {
        v107 = 40;
      }

      else
      {
        v107 = 28;
      }

      v108 = [v106 numberWithUnsignedInt:v107];
      v171[2] = v108;
      v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v171 forKeys:v170 count:3];
      v110 = *(v14 + 41);
      *(v14 + 41) = v109;
    }

    v111 = [v16 objectForKeyedSubscript:@"threadNameRanges"];
    v112 = [VMUDirectedGraph _unarchivedObject:v111 ofClass:objc_opt_class() options:optionsCopy];
    v113 = *(v14 + 36);
    *(v14 + 36) = v112;

    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Thread Name Ranges] Count: %u  Uniqued string count: %u\n\n", [*(v14 + 36) count], objc_msgSend(*(v14 + 36), "uniquedStringCount"));
    }

    v114 = [v16 objectForKeyedSubscript:@"binarySectionNameRanges"];
    v115 = [VMUDirectedGraph _unarchivedObject:v114 ofClass:objc_opt_class() options:optionsCopy];
    v116 = *(v14 + 37);
    *(v14 + 37) = v115;

    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Binary Section Name Ranges] Count: %u  Uniqued string count: %u\n\n", [*(v14 + 37) count], objc_msgSend(*(v14 + 37), "uniquedStringCount"));
    }

    v117 = [v16 objectForKeyedSubscript:@"regionSymbolNameRanges"];
    v118 = [VMUDirectedGraph _unarchivedObject:v117 ofClass:objc_opt_class() options:optionsCopy];
    v119 = *(v14 + 38);
    *(v14 + 38) = v118;

    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Region Symbol Name Ranges] Count: %u  Uniqued string count: %u\n\n", [*(v14 + 38) count], objc_msgSend(*(v14 + 38), "uniquedStringCount"));
    }

    v120 = [v16 objectForKeyedSubscript:@"nodeLabels"];
    v121 = [VMUDirectedGraph _unarchivedObject:v120 ofClass:objc_opt_class() options:optionsCopy];
    v122 = *(v14 + 53);
    *(v14 + 53) = v121;

    v123 = *(v14 + 53);
    if (v123)
    {
      if (kVMUPrintArchivingTiming)
      {
        fprintf(*MEMORY[0x1E69E9848], "[Node Labels] Count: %u  Uniqued string count: %u\n\n", [v123 count], objc_msgSend(*(v14 + 53), "uniquedStringCount"));
      }
    }

    else if (kVMUPrintArchivingTiming)
    {
      fwrite("[Node Labels] NO NODE LABELS\n\n", 0x1EuLL, 1uLL, *MEMORY[0x1E69E9848]);
    }

    v124 = [v16 objectForKeyedSubscript:@"userMarked"];
    *(v14 + 42) = [VMUDirectedGraph _copyUnarchived:v124 length:0 options:optionsCopy];

    v125 = [v16 objectForKeyedSubscript:@"symbolStore"];
    v126 = [VMUDirectedGraph _unarchivedObject:v125 ofClass:objc_opt_class() options:optionsCopy];
    v127 = *(v14 + 52);
    *(v14 + 52) = v126;

    if (kVMUPrintArchivingTiming == 1)
    {
      fwrite("[Symbol Store] \n\n", 0x11uLL, 1uLL, *MEMORY[0x1E69E9848]);
    }

    [*(v14 + 52) setGraph:v14];
    v128 = [v16 objectForKeyedSubscript:@"stackLogReader"];
    v129 = [VMUDirectedGraph _unarchivedObject:v128 ofClass:objc_opt_class() options:optionsCopy];
    v130 = *(v14 + 43);
    *(v14 + 43) = v129;

    v131 = *(v14 + 43);
    if (v131)
    {
      [v131 setGraph:v14];
      [*(v14 + 43) setDiskLogs:v156];
      indexedClassInfos = [v14 indexedClassInfos];
      hasClassInfosDerivedFromStackBacktraces = [indexedClassInfos hasClassInfosDerivedFromStackBacktraces];

      if ((hasClassInfosDerivedFromStackBacktraces & 1) == 0)
      {
        v134 = *(v14 + 43);
        indexedClassInfos2 = [v14 indexedClassInfos];
        v159[0] = MEMORY[0x1E69E9820];
        v159[1] = 3221225472;
        v159[2] = __73__VMUProcessObjectGraph_initWithArchived_version_options_diskLogs_error___block_invoke_2;
        v159[3] = &unk_1E8277A38;
        v136 = v14;
        v160 = v136;
        [v134 identifyNonObjectsUsingStackBacktraces:v136 classInfoMap:indexedClassInfos2 classInfoSetterBlock:v159];

        indexedClassInfos3 = [v136 indexedClassInfos];
        v158.receiver = v136;
        v158.super_class = VMUProcessObjectGraph;
        [(VMUObjectGraph *)&v158 setIndexedClassInfos:indexedClassInfos3];
      }
    }

    v138 = [v16 objectForKeyedSubscript:@"backtraces"];
    v139 = MEMORY[0x1E695DFD8];
    v140 = objc_opt_class();
    v141 = [v139 setWithObjects:{v140, objc_opt_class(), 0}];
    v142 = [VMUDirectedGraph _unarchivedObject:v138 ofClasses:v141 options:optionsCopy];
    v143 = *(v14 + 51);
    *(v14 + 51) = v142;

    v144 = [v16 objectForKeyedSubscript:@"idleExitStatus"];
    v14[94] = [v144 unsignedIntValue];

    v145 = [v16 objectForKeyedSubscript:@"ledger"];
    v146 = *(v14 + 56);
    *(v14 + 56) = v145;

    archivedCopy = v154;
    logsCopy = v156;
    goto LABEL_97;
  }

  v64 = [v16 objectForKeyedSubscript:@"regionData"];
  v150 = [VMUDirectedGraph _copyUnarchived:v64 length:0 options:optionsCopy];

  if (kVMUPrintArchivingTiming == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "[VM Regions] Count: %u\n\n", v14[58]);
  }

  v65 = [v16 objectForKeyedSubscript:@"regionDataSerializer"];
  if (!v65)
  {
    v66 = [v16 objectForKeyedSubscript:@"regionDataSerializerCompressed"];
    v65 = [VMUDirectedGraph _unarchivedObject:v66 ofClass:objc_opt_class() options:optionsCopy];

    if (kVMUPrintArchivingTiming == 1)
    {
      fwrite("[VM Region list string content] \n\n", 0x22uLL, 1uLL, *MEMORY[0x1E69E9848]);
    }
  }

  v151 = v51;
  v149 = v65;
  v155 = [[VMUSimpleDeserializer alloc] initWithData:v65];
  v67 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14[58]];
  if (!v14[58])
  {
LABEL_29:
    free(v150);
    v72 = [v16 objectForKeyedSubscript:@"regionDataExtra"];
    v73 = optionsCopy;
    v74 = [VMUDirectedGraph _copyUnarchived:v72 length:0 options:optionsCopy];

    if (v74)
    {
      if (kVMUPrintArchivingTiming == 1)
      {
        fprintf(*MEMORY[0x1E69E9848], "[Region Data Extra] Count: %u\n\n", v14[58]);
      }

      if (v14[58])
      {
        v75 = 0;
        v76 = v74;
        do
        {
          v77 = [v67 objectAtIndexedSubscript:v75];
          [v77 setVMRegionDataExtra:v76];

          ++v75;
          v76 += 16;
        }

        while (v75 < v14[58]);
      }

      free(v74);
      v73 = optionsCopy;
    }

    v78 = [v16 objectForKeyedSubscript:@"regionAttributesData"];
    v79 = [VMUDirectedGraph _copyUnarchived:v78 length:0 options:v73];

    if (v79)
    {
      if (kVMUPrintArchivingTiming == 1)
      {
        fprintf(*MEMORY[0x1E69E9848], "[Region Attributes Data] Count: %u\n\n", v14[58]);
      }

      if (v14[58])
      {
        v80 = 0;
        v81 = v79;
        do
        {
          v82 = [v67 objectAtIndexedSubscript:v80];
          [v82 setVMRegionAttributeStatusData:v81];

          ++v80;
          v81 += 2;
        }

        while (v80 < v14[58]);
      }

      free(v79);
      v73 = optionsCopy;
    }

    v83 = [v16 objectForKeyedSubscript:@"exclaveFlagData"];
    v84 = [VMUDirectedGraph _copyUnarchived:v83 length:0 options:v73];

    v51 = v151;
    if (v84)
    {
      if (kVMUPrintArchivingTiming == 1)
      {
        fprintf(*MEMORY[0x1E69E9848], "[Exclave Flag Data] Count: %u\n\n", v14[58]);
      }

      if (v14[58])
      {
        v85 = 0;
        v86 = v84;
        do
        {
          v87 = [v67 objectAtIndexedSubscript:v85];
          [v87 setVMRegionExclaveFlagsData:v86];

          ++v85;
          v86 += 4;
        }

        while (v85 < v14[58]);
      }

      free(v84);
    }

    objc_storeStrong(v14 + 28, v67);
    nodeNamespaceSize = [v14 nodeNamespaceSize];
    v89 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
    *v89 = nodeNamespaceSize;
    if (*(v14 + 380) == 1 && (*(v14 + 381) & 1) == 0)
    {
      v94 = ownedPhysFootprintAdjustmentForMemgraph(v67, v14 + 58, *(v14 + 57), *(v14 + 58));
      *(v14 + 381) = 1;
      if (v94)
      {
        v95 = v94;
        v164[0] = MEMORY[0x1E69E9820];
        v164[1] = 3221225472;
        v164[2] = __73__VMUProcessObjectGraph_initWithArchived_version_options_diskLogs_error___block_invoke;
        v164[3] = &unk_1E82798A0;
        v96 = v14;
        v165 = v96;
        v97 = v95;
        v166 = v97;
        v167 = v89;
        [v96 reverseEnumerateNodesWithBlock:v164];
        [v96 removeMarkedNodes:v89];
        v152 = v97;
        [v67 removeObject:v97];
      }

      else
      {
        v152 = 0;
      }

      v91 = v149;
    }

    else
    {
      v90 = [v14 nodeNamespaceSize] - 1;
      v161 = 0;
      v162 = 0;
      v163 = 0;
      [v14 nodeDetails:v90];
      v91 = v149;
      if (VMUGraphNodeType_IsVMRegion(0))
      {
        v92 = [v14 vmuVMRegionForNode:v90];
        if (!v92)
        {
          if (*v89 > v90)
          {
            *(v89 + (v90 >> 3) + 4) |= 1 << (v90 & 7);
          }

          [v14 removeMarkedNodes:v89];
        }
      }

      v152 = 0;
    }

    free(v89);

    goto LABEL_68;
  }

  v68 = 0;
  v69 = v150;
  while (1)
  {
    v70 = [[VMUVMRegion alloc] initWithVMRegionData:v69 encodedVersion:integerValue simpleSerializer:v155 error:errorCopy];
    v71 = v70;
    if (*errorCopy)
    {
      break;
    }

    [v67 addObject:v70];

    ++v68;
    v69 += 128;
    if (v68 >= v14[58])
    {
      goto LABEL_29;
    }
  }

  v93 = 0;
LABEL_98:

  v147 = *MEMORY[0x1E69E9840];
  return v93;
}

void __73__VMUProcessObjectGraph_initWithArchived_version_options_diskLogs_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v6 = [*(a1 + 32) vmuVMRegionForNode:a2];
  if (v6 == *(a1 + 40))
  {
    v7 = *(a1 + 48);
    if (*v7 > v4)
    {
      *(v7 + (v4 >> 3) + 4) |= 1 << (v4 & 7);
    }

    *a3 = 1;
  }
}

id __73__VMUProcessObjectGraph_initWithArchived_version_options_diskLogs_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = VMUProcessObjectGraph;
  return objc_msgSendSuper2(&v4, sel_setClassInfoIndex_forNode_, a3, a2);
}

- (void)archiveDictionaryRepresentation:(id)representation options:(unint64_t)options
{
  representationCopy = representation;
  stackLogReader = self->_stackLogReader;
  if (stackLogReader)
  {
    signpostID = [(VMUGraphStackLogReader *)stackLogReader signpostID];
    stackLogReader = self->_stackLogReader;
    if (signpostID)
    {
      logHandle = [(VMUGraphStackLogReader *)stackLogReader logHandle];
      signpostID2 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
      if ((signpostID2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = signpostID2;
        if (os_signpost_enabled(logHandle))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, v11, "VMUProcessObjectGraph", "", buf, 2u);
        }
      }

      stackLogReader = self->_stackLogReader;
    }
  }

  [(VMUGraphStackLogReader *)stackLogReader endEvent:"VMUProcessObjectGraph"];
  [(VMUGraphStackLogReader *)self->_stackLogReader startWithCategory:"VMUProcessObjectGraph" message:"archiving VMUObjectGraph and VMUDirectedGraph"];
  v12 = self->_stackLogReader;
  if (v12)
  {
    logHandle2 = [(VMUGraphStackLogReader *)v12 logHandle];
    signpostID3 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
    if ((signpostID3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = signpostID3;
      if (os_signpost_enabled(logHandle2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VMUProcessObjectGraph", "archiving VMUObjectGraph and VMUDirectedGraph", buf, 2u);
      }
    }
  }

  v161.receiver = self;
  v161.super_class = VMUProcessObjectGraph;
  [(VMUObjectGraph *)&v161 archiveDictionaryRepresentation:representationCopy options:options];
  v16 = self->_stackLogReader;
  if (v16)
  {
    signpostID4 = [(VMUGraphStackLogReader *)v16 signpostID];
    v16 = self->_stackLogReader;
    if (signpostID4)
    {
      logHandle3 = [(VMUGraphStackLogReader *)v16 logHandle];
      signpostID5 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
      if ((signpostID5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = signpostID5;
        if (os_signpost_enabled(logHandle3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, v20, "VMUProcessObjectGraph", "", buf, 2u);
        }
      }

      v16 = self->_stackLogReader;
    }
  }

  [(VMUGraphStackLogReader *)v16 endEvent:"VMUProcessObjectGraph"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(VMUObjectGraph *)self internalizeNodes];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:*(&self->super._referencingCount + 1)];
  [dictionary setObject:v22 forKeyedSubscript:@"pid"];

  zoneNames = self->_zoneNames;
  if (zoneNames)
  {
    [dictionary setObject:zoneNames forKeyedSubscript:@"processName"];
  }

  processName = self->_processName;
  if (processName)
  {
    [dictionary setObject:processName forKeyedSubscript:@"processDescriptionString"];
  }

  if (LOBYTE(self->_processDescriptionString) == 1)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [dictionary setObject:v25 forKeyedSubscript:@"isTranslatedByRosetta"];
  }

  executablePath = self->_executablePath;
  v27 = 0x1E8277000uLL;
  if (executablePath)
  {
    v28 = [VMUDirectedGraph _archivedObject:executablePath options:options];
    [dictionary setObject:v28 forKeyedSubscript:@"binaryImagesDescription"];

    if (kVMUPrintArchivingTiming == 1)
    {
      fwrite("[Binary Images List] \n\n", 0x17uLL, 1uLL, *MEMORY[0x1E69E9848]);
    }
  }

  v29 = [MEMORY[0x1E696AD98] numberWithBool:BYTE4(self->_physicalFootprintPeak)];
  [dictionary setObject:v29 forKeyedSubscript:@"showsPhysFootprint"];

  v30 = [MEMORY[0x1E696AD98] numberWithBool:BYTE5(self->_physicalFootprintPeak)];
  [dictionary setObject:v30 forKeyedSubscript:@"didPhysFootprintDirtyAccounting"];

  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(self->_scanner)];
  [dictionary setObject:v31 forKeyedSubscript:@"vmPageSize"];

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(self->_scanner)];
  [dictionary setObject:v32 forKeyedSubscript:@"kernPageSize"];

  v33 = *&self->_regionCount;
  if (v33)
  {
    [dictionary setObject:v33 forKeyedSubscript:@"zoneNames"];
  }

  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(self->_regions)];
  [dictionary setObject:v34 forKeyedSubscript:@"regionCount"];

  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&self->_vmPageSize];
  [dictionary setObject:v35 forKeyedSubscript:@"machTime"];

  [dictionary setObject:self->_nodeLabels forKeyedSubscript:@"snapshotDate"];
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_debugTimer];
  [dictionary setObject:v36 forKeyedSubscript:@"physFootprint"];

  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_physicalFootprint];
  [dictionary setObject:v37 forKeyedSubscript:@"physFootprintPeak"];

  [dictionary setObject:*&self->_gotObjcClassStructureRanges forKeyedSubscript:@"pthreadOffsets"];
  [dictionary setObject:self->_pthreadOffsets forKeyedSubscript:@"autoreleasePoolOffsets"];
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_idleExitStatus];
  [dictionary setObject:v38 forKeyedSubscript:@"objectContentLevel"];

  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_ledger];
  [dictionary setObject:v39 forKeyedSubscript:@"dyldSharedCacheBase"];

  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_dyldSharedCacheRange.location];
  [dictionary setObject:v40 forKeyedSubscript:@"dyldSharedCacheLength"];

  if ([*&self->_objectContentLevel count])
  {
    v41 = objc_opt_new();
    [v41 serialize32:{objc_msgSend(*&self->_objectContentLevel, "count")}];
    v42 = *&self->_objectContentLevel;
    v159[0] = MEMORY[0x1E69E9820];
    v159[1] = 3221225472;
    v159[2] = __65__VMUProcessObjectGraph_archiveDictionaryRepresentation_options___block_invoke;
    v159[3] = &unk_1E82798C8;
    v43 = v41;
    v160 = v43;
    [v42 enumerateKeysAndObjectsUsingBlock:v159];
    copyContiguousData = [v43 copyContiguousData];
    v45 = [VMUDirectedGraph _archivedObject:copyContiguousData options:options];
    [dictionary setObject:v45 forKeyedSubscript:@"srcAddressToExtraAutoreleaseCountDict"];

    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[srcAddressToExtraAutoreleaseCountDict] Count: %lu\n\n", [*&self->_objectContentLevel count]);
    }

    v27 = 0x1E8277000uLL;
  }

  v46 = self->_stackLogReader;
  if (v46)
  {
    signpostID6 = [(VMUGraphStackLogReader *)v46 signpostID];
    v46 = self->_stackLogReader;
    optionsCopy6 = options;
    if (signpostID6)
    {
      logHandle4 = [(VMUGraphStackLogReader *)v46 logHandle];
      signpostID7 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
      if ((signpostID7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v51 = signpostID7;
        if (os_signpost_enabled(logHandle4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_END, v51, "VMUProcessObjectGraph", "", buf, 2u);
        }
      }

      v46 = self->_stackLogReader;
    }
  }

  else
  {
    optionsCopy6 = options;
  }

  [(VMUGraphStackLogReader *)v46 endEvent:"VMUProcessObjectGraph"];
  [(VMUGraphStackLogReader *)self->_stackLogReader startWithCategory:"VMUProcessObjectGraph" message:"archiving region data"];
  v52 = self->_stackLogReader;
  if (v52)
  {
    logHandle5 = [(VMUGraphStackLogReader *)v52 logHandle];
    signpostID8 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
    if ((signpostID8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v55 = signpostID8;
      if (os_signpost_enabled(logHandle5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_BEGIN, v55, "VMUProcessObjectGraph", "archiving region data", buf, 2u);
      }
    }
  }

  if (LODWORD(self->_regions))
  {
    v56 = objc_opt_new();
    v57 = malloc_type_calloc(LODWORD(self->_regions) << 7, 1uLL, 0x145F532AuLL);
    v58 = v57;
    v158 = v57;
    if (LODWORD(self->_regions))
    {
      v59 = 0;
      v60 = v57;
      do
      {
        v61 = [self->_machAbsolute objectAtIndexedSubscript:v59];
        [v61 getVMRegionData:v60 withSimpleSerializer:v56];

        ++v59;
        regions_low = LODWORD(self->_regions);
        v60 += 128;
      }

      while (v59 < regions_low);
      v63 = regions_low << 7;
      v58 = v158;
      optionsCopy6 = options;
      v27 = 0x1E8277000;
    }

    else
    {
      v63 = 0;
    }

    v64 = [*(v27 + 432) _archivedBytes:v58 length:v63 options:optionsCopy6];
    [dictionary setObject:v64 forKeyedSubscript:@"regionData"];

    if (kVMUPrintArchivingTiming)
    {
      fprintf(*MEMORY[0x1E69E9848], "[VM Regions] Count: %u\n\n", LODWORD(self->_regions));
    }

    v65 = malloc_type_malloc(16 * LODWORD(self->_regions), 0x1000040451B5BE8uLL);
    v66 = v65;
    v157 = v65;
    if (LODWORD(self->_regions))
    {
      v67 = 0;
      v68 = v65;
      do
      {
        v69 = [self->_machAbsolute objectAtIndexedSubscript:v67];
        [v69 getVMRegionDataExtra:v68];

        ++v67;
        v70 = LODWORD(self->_regions);
        v68 += 16;
      }

      while (v67 < v70);
      v71 = 16 * v70;
      optionsCopy6 = options;
      v27 = 0x1E8277000;
      v66 = v157;
    }

    else
    {
      v71 = 0;
    }

    v72 = [*(v27 + 432) _archivedBytes:v66 length:v71 options:optionsCopy6];
    [dictionary setObject:v72 forKeyedSubscript:@"regionDataExtra"];

    if (kVMUPrintArchivingTiming)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Region Data Extra] Count: %u\n\n", LODWORD(self->_regions));
    }

    v73 = malloc_type_calloc(2 * LODWORD(self->_regions), 1uLL, 0x4678D00CuLL);
    v74 = v73;
    v156 = v73;
    if (LODWORD(self->_regions))
    {
      v75 = representationCopy;
      v76 = 0;
      v77 = v73;
      do
      {
        v78 = [self->_machAbsolute objectAtIndexedSubscript:v76];
        [v78 getVMRegionAttributeStatusData:v77];

        ++v76;
        v79 = LODWORD(self->_regions);
        v77 += 2;
      }

      while (v76 < v79);
      v80 = 2 * v79;
      representationCopy = v75;
      optionsCopy6 = options;
      v27 = 0x1E8277000;
      v74 = v156;
    }

    else
    {
      v80 = 0;
    }

    v81 = [*(v27 + 432) _archivedBytes:v74 length:v80 options:optionsCopy6];
    [dictionary setObject:v81 forKeyedSubscript:@"regionAttributesData"];

    if (kVMUPrintArchivingTiming)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Region Attributes Data] Count: %u\n\n", LODWORD(self->_regions));
    }

    if (LODWORD(self->_regions))
    {
      v82 = [self->_machAbsolute objectAtIndexedSubscript:0];
      v83 = v82[232];

      if (v83 == 1)
      {
        v84 = malloc_type_malloc(4 * LODWORD(self->_regions), 0x100004052888210uLL);
        v85 = v84;
        if (LODWORD(self->_regions))
        {
          v155 = representationCopy;
          v86 = 0;
          v87 = v84;
          do
          {
            v88 = [self->_machAbsolute objectAtIndexedSubscript:v86];
            [v88 getVMRegionExclaveFlagsData:v87];

            ++v86;
            v89 = LODWORD(self->_regions);
            v87 += 4;
          }

          while (v86 < v89);
          v90 = 4 * v89;
          representationCopy = v155;
          optionsCopy6 = options;
        }

        else
        {
          v90 = 0;
        }

        v91 = [VMUDirectedGraph _archivedBytes:v85 length:v90 options:optionsCopy6];
        [dictionary setObject:v91 forKeyedSubscript:@"exclaveFlagData"];

        free(v85);
        if (kVMUPrintArchivingTiming)
        {
          fprintf(*MEMORY[0x1E69E9848], "[Exclave Flag Data] Count: %u\n\n", LODWORD(self->_regions));
        }
      }
    }

    copyContiguousData2 = [v56 copyContiguousData];
    v93 = [VMUDirectedGraph _archivedObject:copyContiguousData2 options:optionsCopy6];
    [dictionary setObject:v93 forKeyedSubscript:@"regionDataSerializerCompressed"];

    if (kVMUPrintArchivingTiming == 1)
    {
      fwrite("[VM Region list string content] \n\n", 0x22uLL, 1uLL, *MEMORY[0x1E69E9848]);
    }

    v94 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objc_opt_class(), "version")}];
    [dictionary setObject:v94 forKeyedSubscript:@"VMUVMRegionCurrentVersion"];

    free(v158);
    free(v157);
    free(v156);
  }

  v95 = self->_stackLogReader;
  if (v95)
  {
    signpostID9 = [(VMUGraphStackLogReader *)v95 signpostID];
    v95 = self->_stackLogReader;
    if (signpostID9)
    {
      logHandle6 = [(VMUGraphStackLogReader *)v95 logHandle];
      signpostID10 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
      if ((signpostID10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v99 = signpostID10;
        if (os_signpost_enabled(logHandle6))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle6, OS_SIGNPOST_INTERVAL_END, v99, "VMUProcessObjectGraph", "", buf, 2u);
        }
      }

      v95 = self->_stackLogReader;
    }
  }

  [(VMUGraphStackLogReader *)v95 endEvent:"VMUProcessObjectGraph"];
  [(VMUGraphStackLogReader *)self->_stackLogReader startWithCategory:"VMUProcessObjectGraph" message:"archiving thread / binary / regionSymbol to range mappings"];
  v100 = self->_stackLogReader;
  if (v100)
  {
    logHandle7 = [(VMUGraphStackLogReader *)v100 logHandle];
    signpostID11 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
    if ((signpostID11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v103 = signpostID11;
      if (os_signpost_enabled(logHandle7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle7, OS_SIGNPOST_INTERVAL_BEGIN, v103, "VMUProcessObjectGraph", "archiving thread / binary / regionSymbol to range mappings", buf, 2u);
      }
    }
  }

  v104 = [VMUDirectedGraph _archivedObject:self->_binaryImagesDescription options:optionsCopy6];
  [dictionary setObject:v104 forKeyedSubscript:@"threadNameRanges"];

  if (kVMUPrintArchivingTiming == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "[Thread Name Ranges] Count: %u  Uniqued string count: %u\n\n", [(NSString *)self->_binaryImagesDescription count], [(NSString *)self->_binaryImagesDescription uniquedStringCount]);
  }

  v105 = [VMUDirectedGraph _archivedObject:self->_threadNameRanges options:optionsCopy6];
  [dictionary setObject:v105 forKeyedSubscript:@"binarySectionNameRanges"];

  if (kVMUPrintArchivingTiming == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "[Binary Section Name Ranges] Count: %u  Uniqued string count: %u\n\n", [(VMURangeToStringMap *)self->_threadNameRanges count], [(VMURangeToStringMap *)self->_threadNameRanges uniquedStringCount]);
  }

  v106 = [VMUDirectedGraph _archivedObject:self->_binarySectionNameRanges options:optionsCopy6];
  [dictionary setObject:v106 forKeyedSubscript:@"regionSymbolNameRanges"];

  if (kVMUPrintArchivingTiming == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "[Region Symbol Name Ranges] Count: %u  Uniqued string count: %u\n\n", [(VMURangeToStringMap *)self->_binarySectionNameRanges count], [(VMURangeToStringMap *)self->_binarySectionNameRanges uniquedStringCount]);
  }

  v107 = self->_stackLogReader;
  if (v107)
  {
    signpostID12 = [(VMUGraphStackLogReader *)v107 signpostID];
    v107 = self->_stackLogReader;
    if (signpostID12)
    {
      logHandle8 = [(VMUGraphStackLogReader *)v107 logHandle];
      signpostID13 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
      if ((signpostID13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v111 = signpostID13;
        if (os_signpost_enabled(logHandle8))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle8, OS_SIGNPOST_INTERVAL_END, v111, "VMUProcessObjectGraph", "", buf, 2u);
        }
      }

      v107 = self->_stackLogReader;
    }
  }

  [(VMUGraphStackLogReader *)v107 endEvent:"VMUProcessObjectGraph"];
  if ([(VMUSymbolStore *)self->_symbolStore count])
  {
    v112 = self->_stackLogReader;
    if (v112)
    {
      signpostID14 = [(VMUGraphStackLogReader *)v112 signpostID];
      v112 = self->_stackLogReader;
      if (signpostID14)
      {
        logHandle9 = [(VMUGraphStackLogReader *)v112 logHandle];
        signpostID15 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
        if ((signpostID15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v116 = signpostID15;
          if (os_signpost_enabled(logHandle9))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle9, OS_SIGNPOST_INTERVAL_END, v116, "VMUProcessObjectGraph", "", buf, 2u);
          }
        }

        v112 = self->_stackLogReader;
      }
    }

    [(VMUGraphStackLogReader *)v112 endEvent:"VMUProcessObjectGraph"];
    [(VMUGraphStackLogReader *)self->_stackLogReader startWithCategory:"VMUProcessObjectGraph" message:"archiving node labels"];
    v117 = self->_stackLogReader;
    if (v117)
    {
      logHandle10 = [(VMUGraphStackLogReader *)v117 logHandle];
      signpostID16 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
      if ((signpostID16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v120 = signpostID16;
        if (os_signpost_enabled(logHandle10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle10, OS_SIGNPOST_INTERVAL_BEGIN, v120, "VMUProcessObjectGraph", "archiving node labels", buf, 2u);
        }
      }
    }

    v121 = [VMUDirectedGraph _archivedObject:self->_symbolStore options:optionsCopy6];
    [dictionary setObject:v121 forKeyedSubscript:@"nodeLabels"];

    v122 = self->_stackLogReader;
    if (v122)
    {
      signpostID17 = [(VMUGraphStackLogReader *)v122 signpostID];
      v122 = self->_stackLogReader;
      if (signpostID17)
      {
        logHandle11 = [(VMUGraphStackLogReader *)v122 logHandle];
        signpostID18 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
        if ((signpostID18 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v126 = signpostID18;
          if (os_signpost_enabled(logHandle11))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle11, OS_SIGNPOST_INTERVAL_END, v126, "VMUProcessObjectGraph", "", buf, 2u);
          }
        }

        v122 = self->_stackLogReader;
      }
    }

    [(VMUGraphStackLogReader *)v122 endEvent:"VMUProcessObjectGraph"];
    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Node Labels] Count: %u  Uniqued string count: %u\n\n", [(VMUSymbolStore *)self->_symbolStore count], [(VMUSymbolStore *)self->_symbolStore uniquedStringCount]);
    }
  }

  else if (kVMUPrintArchivingTiming == 1)
  {
    fwrite("[Node Labels] NO NODE LABELS\n\n", 0x1EuLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  if (self->_autoreleasePoolOffsets)
  {
    v127 = self->_stackLogReader;
    if (v127)
    {
      signpostID19 = [(VMUGraphStackLogReader *)v127 signpostID];
      v127 = self->_stackLogReader;
      if (signpostID19)
      {
        logHandle12 = [(VMUGraphStackLogReader *)v127 logHandle];
        signpostID20 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
        if ((signpostID20 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v131 = signpostID20;
          if (os_signpost_enabled(logHandle12))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle12, OS_SIGNPOST_INTERVAL_END, v131, "VMUProcessObjectGraph", "", buf, 2u);
          }
        }

        v127 = self->_stackLogReader;
      }
    }

    [(VMUGraphStackLogReader *)v127 endEvent:"VMUProcessObjectGraph"];
    [(VMUGraphStackLogReader *)self->_stackLogReader startWithCategory:"VMUProcessObjectGraph" message:"archiving userMarked"];
    v132 = self->_stackLogReader;
    if (v132)
    {
      logHandle13 = [(VMUGraphStackLogReader *)v132 logHandle];
      signpostID21 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
      if ((signpostID21 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v135 = signpostID21;
        if (os_signpost_enabled(logHandle13))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle13, OS_SIGNPOST_INTERVAL_BEGIN, v135, "VMUProcessObjectGraph", "archiving userMarked", buf, 2u);
        }
      }
    }

    v136 = (self->_autoreleasePoolOffsets->super.isa + 7) >> 3;
    v137 = [VMUDirectedGraph _archivedBytes:"_archivedBytes:length:options:" length:? options:?];
    [dictionary setObject:v137 forKeyedSubscript:@"userMarked"];

    v138 = self->_stackLogReader;
    if (v138)
    {
      signpostID22 = [(VMUGraphStackLogReader *)v138 signpostID];
      v138 = self->_stackLogReader;
      if (signpostID22)
      {
        logHandle14 = [(VMUGraphStackLogReader *)v138 logHandle];
        signpostID23 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
        if ((signpostID23 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v142 = signpostID23;
          if (os_signpost_enabled(logHandle14))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle14, OS_SIGNPOST_INTERVAL_END, v142, "VMUProcessObjectGraph", "", buf, 2u);
          }
        }

        v138 = self->_stackLogReader;
      }
    }

    [(VMUGraphStackLogReader *)v138 endEvent:"VMUProcessObjectGraph"];
  }

  userMarked = self->_userMarked;
  if (userMarked)
  {
    v144 = [VMUDirectedGraph _archivedObject:userMarked options:optionsCopy6];
    [dictionary setObject:v144 forKeyedSubscript:@"stackLogReader"];
  }

  v145 = *&self->_hasClassInfosDerivedFromStackBacktraces;
  if (v145)
  {
    v146 = [VMUDirectedGraph _archivedObject:v145 options:optionsCopy6];
    [dictionary setObject:v146 forKeyedSubscript:@"backtraces"];
  }

  backtraces = self->_backtraces;
  if (backtraces)
  {
    v148 = [VMUDirectedGraph _archivedObject:backtraces options:optionsCopy6];
    [dictionary setObject:v148 forKeyedSubscript:@"symbolStore"];
  }

  v149 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VMUProcessObjectGraph idleExitStatus](self, "idleExitStatus")}];
  [dictionary setObject:v149 forKeyedSubscript:@"idleExitStatus"];

  [dictionary setObject:self->_serializationOptions forKeyedSubscript:@"ledger"];
  [representationCopy setObject:dictionary forKeyedSubscript:@"processGraphInfo"];
  v150 = self->_stackLogReader;
  if (v150)
  {
    signpostID24 = [(VMUGraphStackLogReader *)v150 signpostID];
    v150 = self->_stackLogReader;
    if (signpostID24)
    {
      logHandle15 = [(VMUGraphStackLogReader *)v150 logHandle];
      signpostID25 = [(VMUGraphStackLogReader *)self->_stackLogReader signpostID];
      if ((signpostID25 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v154 = signpostID25;
        if (os_signpost_enabled(logHandle15))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle15, OS_SIGNPOST_INTERVAL_END, v154, "VMUProcessObjectGraph", "", buf, 2u);
        }
      }

      v150 = self->_stackLogReader;
    }
  }

  [(VMUGraphStackLogReader *)v150 endEvent:"VMUProcessObjectGraph"];
}

uint64_t __65__VMUProcessObjectGraph_archiveDictionaryRepresentation_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 serialize64:{objc_msgSend(a2, "unsignedLongLongValue")}];
  v7 = *(a1 + 32);
  v8 = [v6 unsignedIntValue];

  return [v7 serialize32:v8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = VMUProcessObjectGraph;
  v4 = [(VMUObjectGraph *)&v9 copyWithZone:zone];
  *(v4 + 49) = *(&self->super._referencingCount + 1);
  *(v4 + 26) = self->_scanner;
  *(v4 + 27) = *&self->_vmPageSize;
  objc_storeStrong(v4 + 28, self->_machAbsolute);
  *(v4 + 58) = self->_regions;
  objc_storeStrong(v4 + 30, *&self->_regionCount);
  objc_storeStrong(v4 + 31, self->_zoneNames);
  objc_storeStrong(v4 + 32, self->_processName);
  objc_storeStrong(v4 + 35, self->_executablePath);
  *(v4 + 380) = BYTE4(self->_physicalFootprintPeak);
  *(v4 + 381) = BYTE5(self->_physicalFootprintPeak);
  objc_storeStrong(v4 + 36, self->_binaryImagesDescription);
  objc_storeStrong(v4 + 37, self->_threadNameRanges);
  objc_storeStrong(v4 + 38, self->_binarySectionNameRanges);
  objc_storeStrong(v4 + 40, *&self->_gotObjcClassStructureRanges);
  objc_storeStrong(v4 + 41, self->_pthreadOffsets);
  autoreleasePoolOffsets = self->_autoreleasePoolOffsets;
  if (autoreleasePoolOffsets)
  {
    v6 = ((LODWORD(autoreleasePoolOffsets->super.isa) + 7) >> 3) + 4;
    v7 = malloc_type_malloc(v6, 0xEE1F7B8EuLL);
    memcpy(v7, autoreleasePoolOffsets, v6);
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 42) = v7;
  objc_storeStrong(v4 + 43, self->_userMarked);
  objc_storeStrong(v4 + 49, *&self->_objectContentLevel);
  *(v4 + 96) = self->_idleExitStatus;
  *(v4 + 97) = *&self->_showsPhysFootprint;
  objc_storeStrong(v4 + 51, *&self->_hasClassInfosDerivedFromStackBacktraces);
  objc_storeStrong(v4 + 52, self->_backtraces);
  objc_storeStrong(v4 + 53, self->_symbolStore);
  *(v4 + 94) = self->_physicalFootprintPeak;
  objc_storeStrong(v4 + 56, self->_serializationOptions);
  return v4;
}

- (id)binarySectionNameForAddress:(unint64_t)address
{
  backtraces = self->_backtraces;
  if (backtraces && ([(NSArray *)backtraces symbolicator], (CSIsNull() & 1) == 0) && ([(NSArray *)self->_backtraces symbolicator], CSSymbolicatorGetSectionWithAddressAtTime(), (Name = CSRegionGetName()) != 0))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  }

  else
  {
    v7 = [(VMURangeToStringMap *)self->_threadNameRanges stringForAddress:address];
  }

  return v7;
}

- (_VMURange)binarySectionRangeContainingAddress:(unint64_t)address
{
  backtraces = self->_backtraces;
  if (!backtraces || ([(NSArray *)backtraces symbolicator], (CSIsNull() & 1) != 0) || ([(NSArray *)self->_backtraces symbolicator], CSSymbolicatorGetSectionWithAddressAtTime(), (CSIsNull() & 1) != 0) || (Range = CSRegionGetRange(), Range == 0x7FFFFFFFFFFFFFFFLL))
  {
    Range = [(VMURangeToStringMap *)self->_threadNameRanges rangeContainingAddress:address];
  }

  result.length = v7;
  result.location = Range;
  return result;
}

- (void)_deriveObjcClassStructureRanges
{
  if ((self->_regionSymbolNameRanges & 1) == 0)
  {
    v3 = +[VMUClassInfo sizeofClassStructure];
    realizedClasses = [(VMUProcessObjectGraph *)self realizedClasses];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__VMUProcessObjectGraph__deriveObjcClassStructureRanges__block_invoke;
    v5[3] = &unk_1E82798F0;
    v5[4] = self;
    v5[5] = v3;
    [realizedClasses enumerateInfosWithBlock:v5];

    LOBYTE(self->_regionSymbolNameRanges) = 1;
  }
}

void __56__VMUProcessObjectGraph__deriveObjcClassStructureRanges__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v11 = v5;
    v6 = ([v5 infoType] & 9) == 0;
    v5 = v11;
    if (!v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = MEMORY[0x1E696AEC0];
      v9 = [v11 className];
      v10 = [v8 stringWithFormat:@"OBJC_CLASS_$_%@", v9];

      [*(*(a1 + 32) + 304) setString:v10 forRange:{a2, *(a1 + 40)}];
      objc_autoreleasePoolPop(v7);
      v5 = v11;
    }
  }
}

- (id)regionSymbolNameForAddress:(unint64_t)address
{
  if ((self->_regionSymbolNameRanges & 1) == 0)
  {
    [(VMUProcessObjectGraph *)self _deriveObjcClassStructureRanges];
  }

  backtraces = self->_backtraces;
  if (backtraces && ([(NSArray *)backtraces symbolicator], (CSIsNull() & 1) == 0) && ([(NSArray *)self->_backtraces symbolicator], CSSymbolicatorGetSymbolWithAddressAtTime(), (Name = CSSymbolGetName()) != 0))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
  }

  else
  {
    v7 = [(VMURangeToStringMap *)self->_binarySectionNameRanges stringForAddress:address];
  }

  return v7;
}

- (_VMURange)regionSymbolRangeContainingAddress:(unint64_t)address
{
  if ((self->_regionSymbolNameRanges & 1) == 0)
  {
    [(VMUProcessObjectGraph *)self _deriveObjcClassStructureRanges];
  }

  backtraces = self->_backtraces;
  if (!backtraces || ([(NSArray *)backtraces symbolicator], (CSIsNull() & 1) != 0) || ([(NSArray *)self->_backtraces symbolicator], CSSymbolicatorGetSymbolWithAddressAtTime(), (CSIsNull() & 1) != 0) || (Range = CSSymbolGetRange(), Range == 0x7FFFFFFFFFFFFFFFLL))
  {
    Range = [(VMURangeToStringMap *)self->_binarySectionNameRanges rangeContainingAddress:address];
  }

  result.length = v7;
  result.location = Range;
  return result;
}

- (_VMURange)rangeForSymbolName:(id)name inRegion:(id)region
{
  nameCopy = name;
  regionCopy = region;
  v8 = regionCopy;
  v9 = 0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (nameCopy && regionCopy)
  {
    backtraces = self->_backtraces;
    if (!backtraces || (-[NSArray symbolicator](backtraces, "symbolicator"), (CSIsNull() & 1) != 0) || (-[NSArray symbolicator](self->_backtraces, "symbolicator"), v12 = v8[1], CSSymbolicatorGetSymbolWithAddressAtTime(), (CSIsNull() & 1) != 0) || (v13 = [nameCopy UTF8String], Name = CSSymbolGetName(), strcmp(v13, Name)) || (Range = CSSymbolGetRange(), Range == 0x7FFFFFFFFFFFFFFFLL))
    {
      Range = [(VMURangeToStringMap *)self->_binarySectionNameRanges rangeForString:nameCopy startingAtAddress:v8[1]];
    }

    v10 = Range;
    v9 = v16;
  }

  v17 = v10;
  v18 = v9;
  result.length = v18;
  result.location = v17;
  return result;
}

- (unsigned)enumerateReferencesFromDataRegion:(id)region atGlobalSymbol:(id)symbol withBlock:(id)block
{
  regionCopy = region;
  symbolCopy = symbol;
  blockCopy = block;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__VMUProcessObjectGraph_enumerateReferencesFromDataRegion_atGlobalSymbol_withBlock___block_invoke;
  v15[3] = &unk_1E8279940;
  v15[4] = self;
  v11 = regionCopy;
  v16 = v11;
  v12 = symbolCopy;
  v17 = v12;
  v13 = blockCopy;
  v18 = v13;
  v19 = &v20;
  [(VMUObjectGraph *)self enumerateObjectsWithBlock:v15];
  LODWORD(self) = *(v21 + 6);

  _Block_object_dispose(&v20, 8);
  return self;
}

void __84__VMUProcessObjectGraph_enumerateReferencesFromDataRegion_atGlobalSymbol_withBlock___block_invoke(uint64_t a1, uint64_t a2, __int128 *a3, _BYTE *a4)
{
  if (*(a3 + 1) >> 60 == 2)
  {
    v27 = v4;
    v28 = v5;
    v10 = [*(a1 + 32) vmuVMRegionForNode:a2];
    v11 = [v10 type];
    if ([v11 hasPrefix:@"__DATA"])
    {
      v12 = [v10 path];
      v13 = [v12 lastPathComponent];
      v14 = [v13 isEqualToString:*(a1 + 40)];

      if (v14)
      {
        v15 = [*(a1 + 32) rangeForSymbolName:*(a1 + 48) inRegion:v10];
        v16 = *(a1 + 32);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __84__VMUProcessObjectGraph_enumerateReferencesFromDataRegion_atGlobalSymbol_withBlock___block_invoke_2;
        v20[3] = &unk_1E8279918;
        v23 = *a3;
        v24 = *(a3 + 2);
        v25 = v15;
        v26 = v17;
        v18 = *(a1 + 56);
        v19 = *(a1 + 64);
        v21 = v18;
        v22 = v19;
        [v16 enumerateReferencesOfNode:a2 withBlock:v20];
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          *a4 = 1;
        }
      }
    }

    else
    {
    }
  }
}

void *__84__VMUProcessObjectGraph_enumerateReferencesFromDataRegion_atGlobalSymbol_withBlock___block_invoke_2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v6 = result;
  if (*(a5 + 8) + result[6] - result[9] >= result[10])
  {
    if (*(*(result[5] + 8) + 24))
    {
      *a6 = 1;
    }
  }

  else
  {
    v7 = result[4];
    v8 = *(v6[4] + 16);
    v9 = *(a5 + 16);
    v10[0] = *a5;
    v10[1] = v9;
    v11 = *(a5 + 32);
    result = v8(v7, a2, a3, a4, v10);
    ++*(*(v6[5] + 8) + 24);
  }

  return result;
}

- (unsigned)nodeReferencedFromDataRegion:(id)region byGlobalSymbol:(id)symbol
{
  regionCopy = region;
  symbolCopy = symbol;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__VMUProcessObjectGraph_nodeReferencedFromDataRegion_byGlobalSymbol___block_invoke;
  v9[3] = &unk_1E8279968;
  v9[4] = &v10;
  [(VMUProcessObjectGraph *)self enumerateReferencesFromDataRegion:regionCopy atGlobalSymbol:symbolCopy withBlock:v9];
  LODWORD(self) = *(v11 + 6);
  _Block_object_dispose(&v10, 8);

  return self;
}

- (VMUClassInfoMap)realizedClasses
{
  v4.receiver = self;
  v4.super_class = VMUProcessObjectGraph;
  indexedClassInfos = [(VMUObjectGraph *)&v4 indexedClassInfos];

  return indexedClassInfos;
}

- (id)zoneNameForIndex:(unsigned int)index
{
  if ([*&self->_regionCount count] <= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [*&self->_regionCount objectAtIndex:index];
  }

  return v5;
}

- (unsigned)enumerateRegionsWithBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  if (LODWORD(self->_regions))
  {
    v5 = 0;
    do
    {
      v6 = [self->_machAbsolute objectAtIndexedSubscript:v5];
      blockCopy[2](blockCopy, v6, &v8);

      ++v5;
    }

    while (v5 < LODWORD(self->_regions) && (v8 & 1) == 0);
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v5;
}

- (void)_reorderLabelsWithNodeNameMap:(unsigned int *)map
{
  v5 = objc_opt_new();
  nodeNamespaceSize = [(VMUDirectedGraph *)self nodeNamespaceSize];
  if (nodeNamespaceSize)
  {
    v7 = 0;
    v8 = nodeNamespaceSize;
    do
    {
      if (map[v7] != -1)
      {
        v9 = [(VMUSymbolStore *)self->_symbolStore stringForNode:v7];
        [(VMUSymbolStore *)v5 setString:v9 forNode:map[v7]];
      }

      ++v7;
    }

    while (v8 != v7);
  }

  symbolStore = self->_symbolStore;
  self->_symbolStore = v5;
}

uint64_t __80__VMUProcessObjectGraph__renameWithNodeMap_nodeNamespace_edgeMap_edgeNamespace___block_invoke(uint64_t result, unsigned int a2)
{
  v2 = *(result + 32);
  v3 = *(*(result + 40) + 4 * a2);
  if (*v2 > v3)
  {
    *(v2 + (v3 >> 3) + 4) |= 1 << (v3 & 7);
  }

  return result;
}

- (void)copyUserMarked
{
  autoreleasePoolOffsets = self->_autoreleasePoolOffsets;
  if (!autoreleasePoolOffsets)
  {
    return 0;
  }

  v3 = ((LODWORD(autoreleasePoolOffsets->super.isa) + 7) >> 3) + 4;
  v4 = malloc_type_malloc(v3, 0xEE1F7B8EuLL);

  return memcpy(v4, autoreleasePoolOffsets, v3);
}

- (void)setUserMarked:(void *)marked
{
  if (marked)
  {
    autoreleasePoolOffsets = self->_autoreleasePoolOffsets;
    if (autoreleasePoolOffsets)
    {
      free(autoreleasePoolOffsets);
    }

    v6 = ((*marked + 7) >> 3) + 4;
    v7 = malloc_type_malloc(v6, 0xEE1F7B8EuLL);
    memcpy(v7, marked, v6);
    self->_autoreleasePoolOffsets = v7;
  }
}

- (NSString)processDescriptionString
{
  if (self->_processName)
  {
    return self->_processName;
  }

  else
  {
    return @"< process and analysis tool header unavailable >\n";
  }
}

- (void)setProcessDescriptionString:(id)string
{
  v4 = [string copy];
  processName = self->_processName;
  self->_processName = v4;
}

- (NSString)binaryImagesDescription
{
  if (self->_executablePath)
  {
    return self->_executablePath;
  }

  else
  {
    return @"< binary images list unavailable >\n";
  }
}

- (void)setBinaryImagesDescription:(id)description
{
  v4 = [description copy];
  executablePath = self->_executablePath;
  self->_executablePath = v4;
}

- (NSString)processName
{
  if (self->_zoneNames)
  {
    return self->_zoneNames;
  }

  else
  {
    return @"Unknown";
  }
}

- (void)setProcessName:(id)name
{
  v4 = [name copy];
  zoneNames = self->_zoneNames;
  self->_zoneNames = v4;
}

- (BOOL)is64bit
{
  if (!LODWORD(self->_regions))
  {
    return 1;
  }

  lastObject = [self->_machAbsolute lastObject];
  v3 = lastObject[1] > 0x100000000uLL;

  return v3;
}

- (id)sampleBacktracesString
{
  if (*&self->_hasClassInfosDerivedFromStackBacktraces && (backtraces = self->_backtraces) != 0 && ([(NSArray *)backtraces symbolicator], (CSIsNull() & 1) == 0))
  {
    v6 = [[VMUFakeSampler alloc] initWithProcessObjectGraph:self];
    v7 = *&self->_hasClassInfosDerivedFromStackBacktraces;
    symbolicator = [(NSArray *)self->_backtraces symbolicator];
    v10 = [VMUCallTreeNode rootForSamples:v7 symbolicator:symbolicator sampler:v9 options:v6, 0];
    v11 = [v10 fullOutputWithThreshold:5];
    v4 = [(NSString *)self->_processName mutableCopy];
    [v4 appendString:v11];
    [v4 appendFormat:@"\n%@", self->_executablePath];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)ledgerValueForKey:(id)key keyExists:(BOOL *)exists
{
  keyCopy = key;
  ledger = [(VMUProcessObjectGraph *)self ledger];
  v8 = [ledger objectForKeyedSubscript:keyCopy];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (exists)
    {
      *exists = 1;
    }

    unsignedLongLongValue = [v8 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
    if (exists)
    {
      *exists = 0;
    }
  }

  return unsignedLongLongValue;
}

- (id)_descriptionForRegionAddress:(unint64_t)address withOffset:(unint64_t)offset showSegment:(BOOL)segment
{
  segmentCopy = segment;
  v8 = offset + address;
  address = [(VMUProcessObjectGraph *)self binarySectionNameForAddress:offset + address];
  v10 = [(VMUProcessObjectGraph *)self binarySectionRangeContainingAddress:v8];
  v11 = [(VMUProcessObjectGraph *)self regionSymbolNameForAddress:v8];
  v12 = [(VMUProcessObjectGraph *)self regionSymbolRangeContainingAddress:v8];
  v13 = v12;
  v14 = &stru_1F461F9C8;
  if (v12 != 0x7FFFFFFFFFFFFFFFLL && v8 > v12)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@" + %llu", v8 - v12];
  }

  if (!address)
  {
    if (v11)
    {
      if ([v11 isEqualToString:@"<PTHREAD_T>"])
      {
        v15 = v8 - v13;
        if (v8 <= v13)
        {
          v23 = 0;
          goto LABEL_30;
        }

        v16 = [*&self->_gotObjcClassStructureRanges objectForKeyedSubscript:@"FirstTLSslotKey"];
        v17 = [v16 unsignedLongLongValue] + v13;

        v18 = [*&self->_gotObjcClassStructureRanges objectForKeyedSubscript:@"LastTLSslotKey"];
        unsignedLongLongValue = [v18 unsignedLongLongValue];

        if (v8 >= v17 && v8 <= unsignedLongLongValue + v13)
        {
          pointerSize = [(VMUDirectedGraph *)self pointerSize];
          v29 = [kVMUThreadSpecificDataKeyString stringByAppendingFormat:@" %llu", (v8 - v17) / pointerSize];
LABEL_29:
          v23 = v29;
LABEL_30:
          address = 0;
          goto LABEL_31;
        }

        v21 = [*&self->_gotObjcClassStructureRanges objectForKeyedSubscript:@"StartRoutineArgumentOffsetKey"];
        unsignedLongLongValue2 = [v21 unsignedLongLongValue];

        if (v15 == unsignedLongLongValue2)
        {
          address = 0;
          v23 = @"pthread start routine argument";
          goto LABEL_31;
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"pthread_t structure %+4lld", v15, v30];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v11, v14];
      }
    }

    else
    {
      v26 = "";
      if (segmentCopy)
      {
        v26 = "region ";
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%s+ %llu", v26, offset];
    }
    v29 = ;
    goto LABEL_29;
  }

  if (v11)
  {
    if (segmentCopy)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: '%@'%@", address, v11, v14];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v11, v14, v31];
    }
  }

  else
  {
    if (!segmentCopy)
    {
      v24 = [address rangeOfString:@" "];
      if (v24)
      {
        v25 = [address substringFromIndex:v24 + 1];

        address = v25;
      }
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ + %llu", address, v8 - v10, v31];
  }
  v23 = ;
LABEL_31:

  return v23;
}

- (id)vmuVMRegionForAddress:(unint64_t)address
{
  v5 = [self->_machAbsolute count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    addressCopy = address;
    while (1)
    {
      v9 = v8 + (v6 >> 1);
      if (v9 >= [self->_machAbsolute count])
      {
        if (v7 == [self->_machAbsolute count] - 1)
        {
          goto LABEL_13;
        }

        --v9;
      }

      v19 = v9;
      v10 = v9;
      do
      {
        v11 = [self->_machAbsolute objectAtIndexedSubscript:v10];
        v12 = v11[132];

        ++v10;
      }

      while ((v12 & 1) != 0);
      v13 = [self->_machAbsolute objectAtIndexedSubscript:v10 - 1];
      range = [v13 range];
      v16 = v15;

      if (addressCopy - range < v16)
      {
        break;
      }

      if (addressCopy < range)
      {
        v6 >>= 1;
      }

      else
      {
        v8 = v10;
        v6 += ~(v6 >> 1);
      }

      v7 = v19;
      if (!v6)
      {
LABEL_13:
        v5 = 0;
        goto LABEL_15;
      }
    }

    v5 = [self->_machAbsolute objectAtIndexedSubscript:v10 - 1];
  }

LABEL_15:

  return v5;
}

- (void)refineTypesWithOverlay:(id)overlay
{
  v3.receiver = self;
  v3.super_class = VMUProcessObjectGraph;
  [(VMUObjectGraph *)&v3 _refineTypesWithOverlay:overlay];
}

- (void)refineEdges:(unsigned int)edges withOptions:(unsigned int)options markingInvalid:(void *)invalid
{
  optionsCopy = options;
  if ([(VMUProcessObjectGraph *)self is64bit])
  {
    v9 = 7;
  }

  else
  {
    v9 = 3;
  }

  if (optionsCopy)
  {
    nodeNamespaceSize = [(VMUDirectedGraph *)self nodeNamespaceSize];
    v10 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
    *v10 = nodeNamespaceSize;
  }

  else
  {
    v10 = 0;
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__VMUProcessObjectGraph_refineEdges_withOptions_markingInvalid___block_invoke;
  v13[3] = &unk_1E82799B0;
  v13[4] = self;
  v13[5] = v16;
  v15 = (optionsCopy & 2) == 0;
  v13[8] = v9;
  v13[9] = invalid;
  v13[6] = v18;
  v13[7] = v22;
  edgesCopy = edges;
  v13[10] = v10;
  [(VMUDirectedGraph *)self _internalAccessRawEdgesWithBlock:v13];
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__VMUProcessObjectGraph_refineEdges_withOptions_markingInvalid___block_invoke_2;
    v12[3] = &unk_1E82799D8;
    v12[7] = v10;
    v12[8] = invalid;
    v12[4] = self;
    v12[5] = v18;
    v12[6] = v20;
    [(VMUDirectedGraph *)self _internalAccessRawEdgesWithBlock:v12];
    free(v10);
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
}

void *__64__VMUProcessObjectGraph_refineEdges_withOptions_markingInvalid___block_invoke(void *result, unsigned int *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      if (*a2 <= 0xFFFFFFFA)
      {
        ++*(*(v4[5] + 8) + 24);
        v12 = 0;
        v13 = 0;
        v14 = 0;
        result = v4[4];
        if (result)
        {
          result = [result _rawReferenceInfoWithName:*a2];
        }

        if ((*(v4 + 92) & 1) == 0 && (v4[8] & v12) != 0)
        {
          v6 = v4[9];
          v7 = *a2;
          if (*v6 > v7)
          {
            *(v6 + (v7 >> 3) + 4) |= 1 << (v7 & 7);
          }

          ++*(*(v4[6] + 8) + 24);
          ++*(*(v4[7] + 8) + 24);
        }

        if (((*(v4 + 22) >> v13) & 1) == 0)
        {
          v8 = v4[9];
          v9 = *a2;
          if (*v8 > v9)
          {
            *(v8 + (v9 >> 3) + 4) |= 1 << (v9 & 7);
          }

          ++*(*(v4[6] + 8) + 24);
        }

        v10 = v4[10];
        if (v10)
        {
          if (!v14)
          {
            v11 = a2[2];
            if (a2[1] != v11 && *v10 > v11)
            {
              *(v10 + (v11 >> 3) + 4) |= 1 << (v11 & 7);
            }
          }
        }
      }

      a2 += 3;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *__64__VMUProcessObjectGraph_refineEdges_withOptions_markingInvalid___block_invoke_2(void *result, unsigned int *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      if (*a2 <= 0xFFFFFFFA)
      {
        v6 = v4[7];
        v7 = a2[2];
        if (*v6 > v7 && ((*(v6 + (v7 >> 3) + 4) >> (v7 & 7)) & 1) != 0)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          result = v4[4];
          if (result)
          {
            result = [result _rawReferenceInfoWithName:?];
            if (v12)
            {
              v8 = v4[8];
              v9 = *a2;
              if (*v8 > v9)
              {
                *(v8 + (v9 >> 3) + 4) |= 1 << (v9 & 7);
              }

              ++*(*(v4[5] + 8) + 24);
              ++*(*(v4[6] + 8) + 24);
            }
          }
        }
      }

      a2 += 3;
      --v5;
    }

    while (v5);
  }

  return result;
}

- (void)markReachableNodesFromRoots:(void *)roots inMap:(void *)map options:(unsigned int)options
{
  optionsCopy = options;
  [(VMUObjectGraph *)self internalizeNodes];
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v9 = 4 * [(VMUDirectedGraph *)self nodeNamespaceSize];
  v10 = malloc_type_malloc(v9, 0x100004052888210uLL);
  mapCopy = map;
  __pattern4[0] = -1;
  memset_pattern4(v10, __pattern4, v9);
  selfCopy = self;
  nodeNamespaceSize = [(VMUDirectedGraph *)self nodeNamespaceSize];
  v12 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v12 = nodeNamespaceSize;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__VMUProcessObjectGraph_markReachableNodesFromRoots_inMap_options___block_invoke;
  aBlock[3] = &unk_1E8277FE8;
  aBlock[4] = &v70;
  aBlock[5] = v10;
  v57 = v12;
  aBlock[6] = v12;
  v13 = _Block_copy(aBlock);
  v16 = *roots;
  v15 = roots + 4;
  v14 = v16;
  if (v16)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = v17 >> 3;
      v20 = v15[v19];
      v21 = v18;
      if (v15[v19])
      {
        do
        {
          if (v20)
          {
            v13[2](v13, v21 - 1);
          }

          if (v20 < 2)
          {
            break;
          }

          v20 >>= 1;
          v22 = v21++ >= v14;
        }

        while (!v22);
      }

      v17 += 8;
      v18 += 8;
    }

    while (v17 < v14);
  }

  v23 = v71 + 3;
  v24 = *(v71 + 6);
  v26 = v57;
  v25 = selfCopy;
  if (v24)
  {
    v56 = optionsCopy & 1;
    v27 = 1;
    v55 = v10;
    v54 = optionsCopy;
    do
    {
      v28 = v24 - 1;
      *v23 = v28;
      v29 = v10[v28];
      v30 = (optionsCopy & 2) != 0 && [(VMUProcessObjectGraph *)v25 nodeIsAutoreleasePoolContentPage:v10[v28]];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __67__VMUProcessObjectGraph_markReachableNodesFromRoots_inMap_options___block_invoke_2;
      v65[3] = &unk_1E8279A00;
      v65[4] = v25;
      v67 = v26;
      v68 = v30;
      v31 = v13;
      v66 = v31;
      [(VMUDirectedGraph *)v25 _internalEnumerateEdgesOfNode:v29 withBlock:v65];
      if (((*(v71 + 6) == 0) & v27) == 1)
      {
        v32 = ((*v26 + 7) >> 3) + 4;
        v33 = malloc_type_malloc(v32, 0xEE1F7B8EuLL);
        memcpy(v33, v26, v32);
        v34 = *v33;
        v35 = (*v33 + 7);
        if (v35 >= 8)
        {
          v36 = v33 + 1;
          v37 = v35 >> 3;
          do
          {
            *v36 = ~*v36;
            ++v36;
            --v37;
          }

          while (v37);
        }

        v38 = v34 & 7;
        if (v38)
        {
          *(v33 + (v35 >> 3) + 3) ^= -1 << v38;
        }

        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v60 = __67__VMUProcessObjectGraph_markReachableNodesFromRoots_inMap_options___block_invoke_3;
        v61 = &unk_1E8279A28;
        v62 = v25;
        v64 = v56;
        v63 = v31;
        v39 = v59;
        v41 = v33 + 1;
        v40 = *v33;
        if (*v33)
        {
          v42 = 0;
          v43 = 1;
          do
          {
            v44 = v42 >> 3;
            v45 = *(v41 + v44);
            v46 = v43;
            if (*(v41 + v44))
            {
              do
              {
                if (v45)
                {
                  v60(v39, v46 - 1);
                }

                if (v45 < 2)
                {
                  break;
                }

                v45 >>= 1;
                v22 = v46++ >= v40;
              }

              while (!v22);
            }

            v42 += 8;
            v43 += 8;
          }

          while (v42 < v40);
        }

        free(v33);
        v27 = 0;
        v10 = v55;
        optionsCopy = v54;
        v26 = v57;
        v25 = selfCopy;
      }

      v23 = v71 + 3;
      v24 = *(v71 + 6);
    }

    while (v24);
  }

  v47 = *mapCopy;
  if (*mapCopy >= *v26)
  {
    v47 = *v26;
  }

  v48 = (v47 + 7);
  if (v48 >= 8)
  {
    v49 = (v26 + 1);
    v50 = mapCopy + 1;
    v51 = v48 >> 3;
    do
    {
      v52 = *v49++;
      *v50++ |= v52;
      --v51;
    }

    while (v51);
  }

  if (v10)
  {
    free(v10);
  }

  free(v26);

  _Block_object_dispose(&v70, 8);
}

void *__67__VMUProcessObjectGraph_markReachableNodesFromRoots_inMap_options___block_invoke(void *result, unsigned int a2)
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

uint64_t __67__VMUProcessObjectGraph_markReachableNodesFromRoots_inMap_options___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = VMUIsOwningReference([*(a1 + 32) scanTypeOfReferenceWithName:a2]);
  if (result)
  {
    v9 = *(a1 + 48);
    if (*v9 <= a6 || ((*(v9 + (a6 >> 3) + 4) >> (a6 & 7)) & 1) == 0)
    {
      if (*(a1 + 56) != 1 || (result = [*(a1 + 32) nodeIsAutoreleasePoolContentPage:a6], result))
      {
        v10 = *(*(a1 + 40) + 16);

        return v10();
      }
    }
  }

  return result;
}

uint64_t __67__VMUProcessObjectGraph_markReachableNodesFromRoots_inMap_options___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    result = [result nodeDetails:a2];
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    result = VMUGraphNodeType_IsVMRegion(0);
    if (result)
    {
      return (*(*(a1 + 40) + 16))();
    }
  }

  return result;
}

- (id)leakedNodesGraph
{
  nodeNamespaceSize = [(VMUDirectedGraph *)self nodeNamespaceSize];
  v4 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v4 = nodeNamespaceSize;
  v5 = VMUCreateRootNodeMarkingMap(self);
  [(VMUProcessObjectGraph *)self markReachableNodesFromRoots:v5 inMap:v4 options:0];
  v6 = *v4;
  v7 = (*v4 + 7);
  if (v7 >= 8)
  {
    v8 = v4 + 1;
    v9 = v7 >> 3;
    do
    {
      *v8 = ~*v8;
      ++v8;
      --v9;
    }

    while (v9);
  }

  v10 = v6 & 7;
  if (v10)
  {
    *(v4 + (v7 >> 3) + 3) ^= -1 << v10;
  }

  v11 = [(VMUDirectedGraph *)self subgraphWithMarkedNodes:v4];
  free(v4);
  free(v5);

  return v11;
}

- ($938B03310D06493B2963E5A84CB75A7E)autoreleasePoolOffsets
{
  v3 = [(NSDictionary *)self->_pthreadOffsets objectForKeyedSubscript:@"parentPageOffset"];
  intValue = [v3 intValue];
  v5 = [(NSDictionary *)self->_pthreadOffsets objectForKeyedSubscript:@"childPageOffset"];
  intValue2 = [v5 intValue];
  v7 = [(NSDictionary *)self->_pthreadOffsets objectForKeyedSubscript:@"firstEntryOffset"];
  intValue3 = [v7 intValue];

  v9 = intValue | (intValue2 << 32);
  v10 = intValue3;
  result.var0 = v9;
  result.var1 = HIDWORD(v9);
  result.var2 = v10;
  return result;
}

- (BOOL)nodeDetailIsAutoreleasePoolContentPage:(id)page
{
  if (*(page.var0 + 8) >> 60 != 1)
  {
    return 0;
  }

  className = [*(page.var0 + 16) className];
  v5 = [className isEqualToString:@"@autoreleasepool content"];

  return v5;
}

- (void)removeWeakEdges
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__VMUProcessObjectGraph_removeWeakEdges__block_invoke;
  v2[3] = &unk_1E8279A78;
  v2[4] = self;
  [(VMUDirectedGraph *)self withEdgeMarkingMap:v2];
}

uint64_t __40__VMUProcessObjectGraph_removeWeakEdges__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__VMUProcessObjectGraph_removeWeakEdges__block_invoke_2;
  v6[3] = &unk_1E8279A50;
  v6[4] = v4;
  v6[5] = a2;
  [v4 enumerateEdgesWithBlock:v6];
  return [*(a1 + 32) removeMarkedEdges:a2];
}

void *__40__VMUProcessObjectGraph_removeWeakEdges__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  result = *(a1 + 32);
  if (!result || ((result = [result referenceInfoWithName:a2], (v8 - 1) <= 1) ? (v5 = v9 == 0) : (v5 = 0), !v5))
  {
    v6 = *(a1 + 40);
    if (*v6 > v2)
    {
      *(v6 + (v2 >> 3) + 4) |= 1 << (v2 & 7);
    }
  }

  return result;
}

- (void)markRootNodes:(void *)nodes
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__VMUProcessObjectGraph_markRootNodes___block_invoke;
  v3[3] = &__block_descriptor_40_e25_v44__0I8___Qb60b4__12_B36l;
  v3[4] = nodes;
  [(VMUObjectGraph *)self enumerateObjectsWithBlock:v3];
}

BOOL __39__VMUProcessObjectGraph_markRootNodes___block_invoke(uint64_t a1, unsigned int a2, uint64_t a3)
{
  result = VMUGraphNodeIsRoot(a3);
  if (result)
  {
    v6 = *(a1 + 32);
    if (*v6 > a2)
    {
      *(v6 + (a2 >> 3) + 4) |= 1 << (a2 & 7);
    }
  }

  return result;
}

- (void)markLeafNodes:(void *)nodes
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__VMUProcessObjectGraph_markLeafNodes___block_invoke;
  v3[3] = &unk_1E8279AC8;
  v3[4] = self;
  v3[5] = nodes;
  [(VMUObjectGraph *)self enumerateObjectsWithBlock:v3];
}

void __39__VMUProcessObjectGraph_markLeafNodes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__VMUProcessObjectGraph_markLeafNodes___block_invoke_2;
  v6[3] = &unk_1E8279AA0;
  v6[4] = &v7;
  [v4 enumerateEdgesOfNode:a2 withBlock:v6];
  if (!*(v8 + 6))
  {
    v5 = *(a1 + 40);
    if (*v5 > v2)
    {
      *(v5 + (v2 >> 3) + 4) |= 1 << (v2 & 7);
    }
  }

  _Block_object_dispose(&v7, 8);
}

- (void)resymbolicatePrivateMaps
{
  [(VMUSymbolStore *)self->_symbolStore resymbolicateObjectDescriptionStringsWithGraph:self];
  binarySectionNameRanges = self->_binarySectionNameRanges;
  symbolicator = [(NSArray *)self->_backtraces symbolicator];
  [(VMURangeToStringMap *)binarySectionNameRanges resymbolicateStringsWithSymbolicator:symbolicator, v5];

  [(VMUProcessObjectGraph *)self resymbolicateNonObjectsUsingStackBacktrace];
}

- (void)resymbolicateNonObjectsUsingStackBacktrace
{
  userMarked = self->_userMarked;
  if (userMarked)
  {
    indexedClassInfos = [(VMUObjectGraph *)self indexedClassInfos];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__VMUProcessObjectGraph_resymbolicateNonObjectsUsingStackBacktrace__block_invoke;
    v7[3] = &unk_1E8277A38;
    v7[4] = self;
    [userMarked identifyNonObjectsUsingStackBacktraces:self classInfoMap:indexedClassInfos classInfoSetterBlock:v7];

    indexedClassInfos2 = [(VMUObjectGraph *)self indexedClassInfos];
    v6.receiver = self;
    v6.super_class = VMUProcessObjectGraph;
    [(VMUObjectGraph *)&v6 setIndexedClassInfos:indexedClassInfos2];
  }
}

id __67__VMUProcessObjectGraph_resymbolicateNonObjectsUsingStackBacktrace__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = VMUProcessObjectGraph;
  return objc_msgSendSuper2(&v4, sel_setClassInfoIndex_forNode_, a3, a2);
}

- (_CSArchitecture)parseMacOSArchitectureFromProcessDescription
{
  v23 = *MEMORY[0x1E69E9840];
  processName = self->_processName;
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v5 = [(NSString *)processName componentsSeparatedByCharactersInSet:newlineCharacterSet];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 hasPrefix:{@"Code Type", v18}])
        {
          if ([v11 containsString:@"X86-64"])
          {
            v12 = 0x301000007;
            goto LABEL_19;
          }

          if ([v11 containsString:@"ARM64E"])
          {
            v12 = 0x20100000CLL;
            goto LABEL_19;
          }

          if ([v11 containsString:@"ARM64"])
          {
            v13 = [VMUProcessDescription parseBinaryImagesDescription:self->_executablePath];
            v14 = [v13 objectAtIndexedSubscript:0];
            v15 = [v14 objectForKeyedSubscript:@"ExecutablePath"];

            v12 = 0x20100000CLL;
            if (([v15 hasPrefix:@"/System"] & 1) == 0 && !objc_msgSend(v15, "hasPrefix:", @"/usr"))
            {
              v12 = 16777228;
            }

            goto LABEL_19;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_19:

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)parseAddressesFromNodeLabelsIntoSymbolStore
{
  symbolStore = self->_symbolStore;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__VMUProcessObjectGraph_parseAddressesFromNodeLabelsIntoSymbolStore__block_invoke;
  v3[3] = &unk_1E8279AF0;
  v3[4] = self;
  [(VMUSymbolStore *)symbolStore enumerateHexAddressesInStrings:v3];
}

- (void)_generateSymbolStoreFromExistingGraph
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [VMUProcessDescription symbolicatorFromBinaryImagesDescription:self->_executablePath withArchitecture:[(VMUProcessObjectGraph *)self parseMacOSArchitectureFromProcessDescription]];
  v5 = [[VMUSymbolStore alloc] initWithSymbolicator:v3 debugTimer:v4, 0];
  objc_storeStrong(&self->_backtraces, v5);
  [(NSArray *)self->_backtraces setGraph:self];
  binarySectionNameRanges = self->_binarySectionNameRanges;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__VMUProcessObjectGraph__generateSymbolStoreFromExistingGraph__block_invoke;
  v20[3] = &unk_1E8279AF0;
  v20[4] = self;
  [(VMURangeToStringMap *)binarySectionNameRanges enumerateHexAddressesInStrings:v20];
  [(VMUProcessObjectGraph *)self parseAddressesFromNodeLabelsIntoSymbolStore];
  userMarked = self->_userMarked;
  if (userMarked)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__VMUProcessObjectGraph__generateSymbolStoreFromExistingGraph__block_invoke_2;
    v19[3] = &unk_1E8279AF0;
    v19[4] = self;
    [userMarked enumerateUniquingTable:v19];
  }

  v8 = *&self->_hasClassInfosDerivedFromStackBacktraces;
  if (v8)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(NSArray *)self->_backtraces addBacktrace:*(*(&v15 + 1) + 8 * v13++) origin:0, v15];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v11);
    }
  }

  CSRelease();

  v14 = *MEMORY[0x1E69E9840];
}

- (VMUTaskMemoryScanner)scanner
{
  WeakRetained = objc_loadWeakRetained(&self->_pid);

  return WeakRetained;
}

- (_VMURange)dyldSharedCacheRange
{
  p_ledger = &self->_ledger;
  ledger = self->_ledger;
  v4 = p_ledger[1];
  result.length = v4;
  result.location = ledger;
  return result;
}

@end