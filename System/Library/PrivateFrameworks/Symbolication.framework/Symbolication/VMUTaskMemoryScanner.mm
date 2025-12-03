@interface VMUTaskMemoryScanner
+ (void)initialize;
- ($61A80719B04F7407D3E47539F1B23CAA)nodeDetails:(VMUTaskMemoryScanner *)self;
- (BOOL)_callRemoteMallocEnumerators:(unsigned int)enumerators error:(id *)error block:(id)block;
- (BOOL)_suspend;
- (BOOL)addAllNodesFromTaskWithError:(id *)error;
- (BOOL)addMallocNodesFromTaskWithError:(id *)error;
- (BOOL)addRootNodesFromTaskWithError:(id *)error;
- (BOOL)doesTargetProcessHaveObjCPatches;
- (BOOL)hasClassInfosDerivedFromStackBacktraces;
- (VMUTaskMemoryScanner)initWithVMUTask:(id)task options:(unint64_t)options;
- (_VMUBlockNode)_untypedMallocBlockNodeReferencedFromAddress:;
- (_VMURange)_rangeOfClassStructureForPossibleUnrealizedSwiftClassWithIsa:(unint64_t)isa;
- (_VMURegionNode)validateAddressRangeForSwiftRemoteMirror:(VMUTaskMemoryScanner *)self allowUnusedSplitLibs:(_VMURegionNode *)libs;
- (const)getCachedScanInfoForClassWithIsa:(unsigned int)isa classInfo:(id)info scanCaches:(_VMUScanLocationCache *)caches;
- (id)_cachedVariantForGenericInfo:(id)info variantKey:(unint64_t)key;
- (id)_readonlyRegionRanges;
- (id)_recursivelyIdentifySwiftAsyncTaskSlabs:(unint64_t)slabs containerRange:(_VMURange)range remoteBlock:(unint64_t)block mappedBlock:(unint64_t)mappedBlock asyncTaskSlabMetadataIsa:(unint64_t)isa nestingLevel:(unsigned int)level;
- (id)classInfoForObjectAtAddress:(unint64_t)address;
- (id)processSnapshotGraphWithOptions:(unint64_t)options;
- (id)vmuVMRegionForAddress:(unint64_t)address;
- (id)zoneNameForIndex:(unsigned int)index;
- (id)zoneNameForNode:(unsigned int)node;
- (uint64_t)_recordFakeRootRefsForMallocBlock:(_DWORD *)block indexInSwiftTaskAllocationBlockIndexes:(uint64_t)indexes recorder:;
- (uint64_t)_shouldScanVMregion:(uint64_t)mregion;
- (unint64_t)_lengthOfMappedFileOfRegion:(id)region;
- (unint64_t)ledgerValueForKey:(id)key keyExists:(BOOL *)exists;
- (unsigned)_nodeForAddress:(unint64_t)address checkMaxInteriorOffset:(BOOL)offset;
- (unsigned)_removeFalsePositiveLeakedVMregionsFromNodes:(unsigned int *)nodes nodeCount:(unsigned int)count recorder:(id)recorder;
- (unsigned)enumerateMarkedObjects:(void *)objects withBlock:(id)block;
- (unsigned)enumerateObjectsWithBlock:(id)block;
- (unsigned)enumerateReferencesWithBlock:(id)block;
- (unsigned)enumerateRegionsWithBlock:(id)block;
- (unsigned)mallocNodeCount;
- (unsigned)nodeForAddress:(unint64_t)address;
- (void)_addSpecialNodesFromTask;
- (void)_addThreadNodesFromTask;
- (void)_buildRegionFirstBlockIndexOnPageArrays;
- (void)_findMarkedAbandonedBlocks;
- (void)_findSwiftClassesInExclaveCore;
- (void)_fixupBlockIsas;
- (void)_identifyAttributeGraphAllocationsIfPreciseIdentificationIsUnavailable;
- (void)_identifyNonObjectsPointedToByTypedIvars;
- (void)_identifyNonObjectsPointingToSwiftMetadata;
- (void)_identifyNonObjectsUsingStackBacktrace;
- (void)_identifyObjCClassStructureBlocks;
- (void)_identifySwiftAsyncTaskSlabs;
- (void)_identifySwiftTypeNameCache;
- (void)_identifyXPCDictionaryStorageReferencedByBlock:(_VMUBlockNode *)block;
- (void)_registerVariant:(id)variant forGenericInfo:(id)info variantKey:(unint64_t)key;
- (void)_shortenScannableRangeOfMappedFile:(unsigned int)file;
- (void)_sortAndClassifyBlocks;
- (void)_withOrderedNodeMapper:(id)mapper;
- (void)_withReaderBlockForHeapEnumeration:(id)enumeration;
- (void)addMallocNodes:(id)nodes;
- (void)applyTypeOverlayToMutableInfo:(id)info;
- (void)contentForNode:(unsigned int)node;
- (void)copyUserMarked;
- (void)dealloc;
- (void)detachFromTask;
- (void)mapDyldSharedCacheFromTargetWithRegions:(id)regions;
- (void)printRuntimeMetadataInfo;
- (void)refineTypesWithOverlay:(id)overlay;
- (void)scanLocalMemory:(uint64_t)memory atOffset:(unsigned int)offset node:(unint64_t)node length:(uint64_t)length isa:(uint64_t)isa scanCaches:(void *)caches fieldInfo:(unsigned int)info stride:(uint64_t)self0 recorder:;
- (void)scanNodesWithReferenceRecorder:(id)recorder;
- (void)setClassStructureFieldScanValueAtSourceAddress:(void *)address toCorrectedAddress:(void *)correctedAddress;
- (void)setNodeScanningLogger:(id)logger;
- (void)setObjectContentLevel:(unsigned int)level;
- (void)setReferenceScanningLogger:(id)logger;
- (void)unmapAllRegions;
@end

@implementation VMUTaskMemoryScanner

- (void)dealloc
{
  [(VMUTaskMemoryScanner *)self detachFromTask];
  blocks = self->_blocks;
  if (blocks && !self->_processObjectGraph)
  {
    free(blocks);
    self->_blocks = 0;
  }

  [(VMUTaskMemoryCache *)self->_memoryCache setRegionInfoBlock:0];
  if (self->_regionsCount)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      regions = self->_regions;
      memoryCache = self->_memoryCache;
      v8 = self->_objectIdentifier;
      v9 = memoryCache;
      v10 = v9;
      v11 = regions + v4;
      if (*(&regions[1].var0 + v4))
      {
        if (v11 == *(v11 + 7))
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = ___unmapRegion_block_invoke;
          aBlock[3] = &unk_1E8277CB0;
          v23 = v9;
          v25 = regions + v4;
          v24 = v8;
          v26 = regions;
          v12 = _Block_copy(aBlock);
          v12[2]();
        }

        else
        {
          *(regions + v4 + 40) &= 1uLL;
          *(v11 + 6) = 0;
          *(v11 + 7) = 0;
        }
      }

      v13 = *(&self->_regions->var1 + v4);
      if (v13)
      {
        free(v13);
        *(&self->_regions->var1 + v4) = 0;
      }

      ++v5;
      v4 += 64;
    }

    while (v5 < self->_regionsCount);
  }

  v14 = self->_regions;
  if (v14)
  {
    free(v14);
    self->_regions = 0;
  }

  zones = self->_zones;
  if (zones)
  {
    free(zones);
    self->_zones = 0;
  }

  instanceValues = self->_instanceValues;
  if (instanceValues)
  {
    free(instanceValues);
  }

  self->_instanceValues = 0;
  swiftTaskAllocationBlockIndexes = self->_swiftTaskAllocationBlockIndexes;
  if (swiftTaskAllocationBlockIndexes)
  {
    free(swiftTaskAllocationBlockIndexes);
    self->_swiftTaskAllocationBlockIndexes = 0;
  }

  regionMap = self->_regionMap;
  if (regionMap)
  {
    var3 = regionMap->var3;
    if (var3)
    {
      free(var3);
    }

    free(regionMap);
  }

  userMarkedAbandoned = self->_userMarkedAbandoned;
  if (userMarkedAbandoned)
  {
    free(userMarkedAbandoned);
    self->_userMarkedAbandoned = 0;
  }

  [(VMUTaskMemoryScanner *)self _destroyLinearClassInfos];
  v21.receiver = self;
  v21.super_class = VMUTaskMemoryScanner;
  [(VMUTaskMemoryScanner *)&v21 dealloc];
}

- (void)detachFromTask
{
  if (![(VMUTask *)self->_task isCore])
  {
    if ([(VMUTask *)self->_task taskPort])
    {
      if ([(VMUTask *)self->_task taskPort]!= -1)
      {
        [(VMUTask *)self->_task taskPort];
        if ((VMUTaskIsSelf() & 1) == 0)
        {
          v3 = task_resume2(self->_suspensionToken);
          if (v3)
          {
            v4 = v3;
            if (task_exists(self->_task))
            {
              v5 = *MEMORY[0x1E69E9848];
              v6 = mach_error_string(v4);
              fprintf(v5, "Unable to resume target task: %s (%d)\n", v6, v4);
            }
          }

          task = self->_task;
          self->_task = 0;

          [(VMUTaskMemoryScanner *)self setNodeScanningLogger:0];

          [(VMUTaskMemoryScanner *)self setReferenceScanningLogger:0];
        }
      }
    }
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = getenv("VMUEnumeratorValidation");
    v6 = 0;
    if (v2)
    {
      v3 = *v2;
      v4 = (v3 - 48) > 0x3E || ((1 << (v3 - 48)) & 0x4000000040000001) == 0;
      if (v4 && v3 != 0)
      {
        v6 = 1;
      }
    }

    s_enumeratorDebugging = v6;
    v7 = 0;
    if (pthread_create(&v7, 0, _determine_pthread_offsets, 0x123456789ABCDEF1))
    {
      fwrite("couldn't create new pthread for determine_pthread_offsets\n", 0x3AuLL, 1uLL, *MEMORY[0x1E69E9848]);
      exit(1);
    }

    pthread_join(v7, 0);
  }
}

- (void)unmapAllRegions
{
  if (self->_regionsCount)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      regions = self->_regions;
      memoryCache = self->_memoryCache;
      v7 = self->_objectIdentifier;
      v8 = memoryCache;
      v9 = v8;
      v10 = regions + v3;
      if (*(&regions[1].var0 + v3))
      {
        if (v10 == *(v10 + 7))
        {
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = ___unmapRegion_block_invoke;
          v12[3] = &unk_1E8277CB0;
          v13 = v8;
          v15 = regions + v3;
          v14 = v7;
          v16 = regions;
          v11 = _Block_copy(v12);
          v11[2]();
        }

        else
        {
          *(regions + v3 + 40) &= 1uLL;
          *(v10 + 6) = 0;
          *(v10 + 7) = 0;
        }
      }

      ++v4;
      v3 += 64;
    }

    while (v4 < self->_regionsCount);
  }

  [(VMUTaskMemoryCache *)self->_memoryCache flushMemoryCache];
  [(VMUObjectIdentifier *)self->_objectIdentifier flushRemoteMirrorMemoryCache];
}

- (VMUTaskMemoryScanner)initWithVMUTask:(id)task options:(unint64_t)options
{
  taskCopy = task;
  v130.receiver = self;
  v130.super_class = VMUTaskMemoryScanner;
  v8 = [(VMUTaskMemoryScanner *)&v130 init];
  if (!v8)
  {
    v11 = 0;
    goto LABEL_6;
  }

  v9 = v8;
  v10 = +[VMUDebugTimer sharedTimerIfCreated];
  objc_storeStrong(&v9->_task, task);
  v9->_pid = [(VMUTask *)v9->_task pid];
  if ([(VMUTask *)v9->_task pid]< 0)
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    NSLog(&cfstr_InvalidTaskPor.isa, v14);

    goto LABEL_8;
  }

  if ([taskCopy taskType] == 2)
  {
    NSLog(&cfstr_Vmutaskmemorys.isa);
LABEL_8:

LABEL_102:
    v11 = 0;
LABEL_103:
    v12 = 0;
    goto LABEL_104;
  }

  if (v10)
  {
    if ([v10 signpostID])
    {
      logHandle = [v10 logHandle];
      signpostID = [v10 signpostID];
      if ((signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = signpostID;
        if (os_signpost_enabled(logHandle))
        {
          LOWORD(buf[0]) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, v17, "initMemoryScanner", "", buf, 2u);
        }
      }
    }

    [v10 endEvent:"initMemoryScanner"];
    [v10 startWithCategory:"initMemoryScanner" message:"building VMUProcessDescription"];
    logHandle2 = [v10 logHandle];
    signpostID2 = [v10 signpostID];
    if ((signpostID2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = signpostID2;
      if (os_signpost_enabled(logHandle2))
      {
        LOWORD(buf[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, v20, "initMemoryScanner", "building VMUProcessDescription", buf, 2u);
      }
    }
  }

  else
  {
    [0 endEvent:"initMemoryScanner"];
    [0 startWithCategory:"initMemoryScanner" message:"building VMUProcessDescription"];
  }

  processDescription = [(VMUTask *)v9->_task processDescription];
  if ([processDescription pid] >= 1)
  {
    v22 = [processDescription description];
    processDescriptionString = v9->_processDescriptionString;
    v9->_processDescriptionString = v22;

    date = [processDescription date];
    suspendDate = v9->_suspendDate;
    v9->_suspendDate = date;

    processName = [processDescription processName];
    processName = v9->_processName;
    v9->_processName = processName;

    if ((options & 0x8000) != 0)
    {
      binaryImagesDescription = [processDescription binaryImagesDescription];
      binaryImagesDescription = v9->_binaryImagesDescription;
      v9->_binaryImagesDescription = binaryImagesDescription;
    }

    executablePath = [processDescription executablePath];
    executablePath = v9->_executablePath;
    v9->_executablePath = executablePath;

    v9->_physicalFootprint = [processDescription physicalFootprint];
    v9->_physicalFootprintPeak = [processDescription physicalFootprintPeak];
    v9->_idleExitStatus = [processDescription idleExitStatus];
  }

  if (v10 && [v10 signpostID])
  {
    logHandle3 = [v10 logHandle];
    signpostID3 = [v10 signpostID];
    if ((signpostID3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v34 = signpostID3;
      if (os_signpost_enabled(logHandle3))
      {
        LOWORD(buf[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, v34, "initMemoryScanner", "", buf, 2u);
      }
    }
  }

  [v10 endEvent:"initMemoryScanner"];
  if (![(VMUTaskMemoryScanner *)v9 _suspend])
  {

LABEL_101:
    goto LABEL_102;
  }

  mach_get_times();
  v9->_maxInteriorOffset = *MEMORY[0x1E69E9AC8];
  v9->_scanningMask = VMUScanningMaskForOwningReferences();
  v9->_exactScanningEnabled = 1;
  v9->_abandonedMarkingEnabled = 1;
  v35 = objc_opt_new();
  variantCachesByIsaIndex = v9->_variantCachesByIsaIndex;
  v9->_variantCachesByIsaIndex = v35;

  v37 = objc_opt_new();
  srcAddressToExtraAutoreleaseCountDict = v9->_srcAddressToExtraAutoreleaseCountDict;
  v9->_srcAddressToExtraAutoreleaseCountDict = v37;

  v39 = objc_opt_new();
  mappedFileNameToLengthDict = v9->_mappedFileNameToLengthDict;
  v9->_mappedFileNameToLengthDict = v39;

  v41 = VMUGetFlagsForAllVMRegionStatistics() | options | 0x180;
  v42 = [[VMUVMRegionIdentifier alloc] initWithVMUTask:v9->_task options:v41];
  regionIdentifier = v9->_regionIdentifier;
  v9->_regionIdentifier = v42;

  regions = [(VMUVMRegionIdentifier *)v9->_regionIdentifier regions];
  v45 = [regions count];
  v9->_regionsCount = v45;
  if (!v45)
  {
    NSLog(&cfstr_FoundNoVmRegio.isa);
LABEL_100:

    goto LABEL_101;
  }

  v117 = v41;
  v119 = processDescription;
  v46 = malloc_type_calloc(v45, 0x40uLL, 0x10B0040310C8A7FuLL);
  v9->_regions = v46;
  v120 = taskCopy;
  v118 = regions;
  if (v9->_regionsCount)
  {
    v47 = 0;
    for (i = 0; i < regionsCount; ++i)
    {
      v49 = [regions objectAtIndexedSubscript:i];
      regions = v9->_regions;
      *(&regions->var0 + v47) = v49;
      regionsCount = v9->_regionsCount;
      v47 += 64;
    }
  }

  else
  {
    regions = v46;
    LODWORD(regionsCount) = 0;
  }

  v52 = malloc_type_calloc(1uLL, 0x200040uLL, 0x361E6636uLL);
  v52[6] = -1;
  v53 = malloc_type_calloc(1uLL, 0x800004uLL, 0xB2EC2458uLL);
  *v53 = 0x4000000;
  v52[3] = v53;
  v52[4] = regions;
  *(v52 + 10) = regionsCount;
  if (regionsCount)
  {
    v54 = 0;
    v55 = MEMORY[0x1E69E9AC0];
    v56 = regionsCount;
    do
    {
      v57 = &regions->var0 + 8 * v54;
      if (([*v57 isSpecialPhysFootprintRegion] & 1) == 0)
      {
        v58 = (*v57 + 8);
        v59 = *v58;
        v60 = *(*v57 + 2) + *v58;
        v61 = v52[6];
        v62 = v52[7];
        if (v61 >= v59)
        {
          v61 = v59;
        }

        if (v62 <= v60)
        {
          v62 = v60;
        }

        v52[6] = v61;
        v52[7] = v62;
        v63 = v59 >> *v55;
        if (v63)
        {
          v64 = (~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + v60)) >> *v55;
          do
          {
            if (v63 + 1 > v64)
            {
              v65 = v63 + 1;
            }

            else
            {
              v65 = v64;
            }

            v66 = v52[3];
            v67 = v63 & 0x3FFFFFF;
            v68 = *v66;
            if (*v66 > (v63 & 0x3FFFFFF))
            {
              if (v68 >= ((v65 - v63) & 0x3FFFFFF) + v67)
              {
                v69 = ((v65 - v63) & 0x3FFFFFF) + v67;
              }

              else
              {
                v69 = *v66;
              }

              if (((v67 + 7) & 0x7FFFFF8) >= v69)
              {
                v70 = v69;
              }

              else
              {
                v70 = (v67 + 7) & 0x7FFFFF8;
              }

              v71 = v66 + 1;
              if (v67 < v70)
              {
                do
                {
                  if (v68 > v67)
                  {
                    *(v71 + (v67 >> 3)) |= 1 << (v67 & 7);
                  }

                  ++v67;
                }

                while (v70 != v67);
                v67 = v70;
              }

              v72 = v69 & 0x7FFFFF8;
              if ((v69 & 0x7FFFFF8) <= v67)
              {
                v72 = v67;
              }

              if (v69 > v72)
              {
                v73 = v69 - 1;
                do
                {
                  if (v68 > v73)
                  {
                    *(v71 + (v73 >> 3)) |= 1 << (v73 & 7);
                  }

                  v74 = v73 - 1;
                }

                while (v73-- > v72);
                v69 = v74 + 1;
              }

              memset(v66 + (v67 >> 3) + 4, 255, (v69 - v67) >> 3);
            }

            v63 >>= 26;
            v64 = v65 >> 26;
          }

          while (v63);
        }
      }

      ++v54;
    }

    while (v54 != v56);
  }

  v9->_regionMap = v52;
  memoryCache = [(VMUTask *)v9->_task memoryCache];
  memoryCache = v9->_memoryCache;
  v9->_memoryCache = memoryCache;

  if (!v9->_memoryCache)
  {
    processDescription = v119;
    taskCopy = v120;
    regions = v118;
    NSLog(&cfstr_CouldnTCreateT.isa);
    goto LABEL_100;
  }

  [(VMUTaskMemoryScanner *)v9 unmapAllRegions];
  [(VMUTaskMemoryScanner *)v9 mapDyldSharedCacheFromTargetWithRegions:v118];
  regionMap = v9->_regionMap;
  buf[0] = 0;
  buf[1] = buf;
  buf[2] = 0x3032000000;
  buf[3] = __Block_byref_object_copy_;
  buf[4] = __Block_byref_object_dispose_;
  v129 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__VMUTaskMemoryScanner_initWithVMUTask_options___block_invoke;
  aBlock[3] = &unk_1E82775B8;
  aBlock[4] = buf;
  aBlock[5] = regionMap;
  v79 = _Block_copy(aBlock);
  regionInfoBlock = v9->_regionInfoBlock;
  v9->_regionInfoBlock = v79;

  [(VMUTaskMemoryCache *)v9->_memoryCache setRegionInfoBlock:v9->_regionInfoBlock];
  taskCopy = v120;
  v81 = objc_alloc_init(VMURangeArray);
  dataSegmentsRangeArrayOutsideSharedCache = v9->_dataSegmentsRangeArrayOutsideSharedCache;
  v9->_dataSegmentsRangeArrayOutsideSharedCache = v81;

  taskThreadStates = [(VMUVMRegionIdentifier *)v9->_regionIdentifier taskThreadStates];
  threadStates = v9->_threadStates;
  v9->_threadStates = taskThreadStates;

  v9->_threadsCount = [(VMUTaskThreadStates *)v9->_threadStates threadCount];
  if (v10 && [v10 signpostID])
  {
    logHandle4 = [v10 logHandle];
    signpostID4 = [v10 signpostID];
    if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle4))
    {
      *v122 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_END, signpostID4, "initMemoryScanner", "", v122, 2u);
    }
  }

  [v10 endEvent:"initMemoryScanner"];
  [v10 startWithCategory:"initMemoryScanner" message:"get malloc zones array"];
  if (v10)
  {
    logHandle5 = [v10 logHandle];
    signpostID5 = [v10 signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle5))
    {
      *v122 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_BEGIN, signpostID5, "initMemoryScanner", "get malloc zones array", v122, 2u);
    }
  }

  v89 = objc_opt_new();
  zoneNames = v9->_zoneNames;
  v9->_zoneNames = v89;

  task = v9->_task;
  v125[0] = MEMORY[0x1E69E9820];
  v125[1] = 3221225472;
  v125[2] = __48__VMUTaskMemoryScanner_initWithVMUTask_options___block_invoke_66;
  v125[3] = &unk_1E82775E0;
  v92 = v9;
  v126 = v92;
  VMUTask_foreach_malloc_zone(task, v125);
  if (v10 && [v10 signpostID])
  {
    logHandle6 = [v10 logHandle];
    signpostID6 = [v10 signpostID];
    if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle6))
    {
      *v122 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle6, OS_SIGNPOST_INTERVAL_END, signpostID6, "initMemoryScanner", "", v122, 2u);
    }
  }

  [v10 endEvent:"initMemoryScanner"];
  v95 = *(v92 + 54);
  if (v95)
  {
    v96 = v92[26];
    __compar[0] = MEMORY[0x1E69E9820];
    __compar[1] = 3221225472;
    __compar[2] = __48__VMUTaskMemoryScanner_initWithVMUTask_options___block_invoke_2;
    __compar[3] = &unk_1E8277628;
    v124 = &__block_literal_global;
    mergesort_b(v96, v95, 0x18uLL, __compar);
    [(NSMutableArray *)v9->_zoneNames sortUsingComparator:&__block_literal_global];
    v97 = [[VMUObjectIdentifier alloc] initWithVMUTask:v9->_task symbolicator:0 scanner:0, v92];
    v98 = v92[8];
    v92[8] = v97;

    v99 = v92[8];
    if (v99)
    {
      v100 = v9->_regionMap;
      var7 = v100->var7;
      if (var7 >= v100->var6)
      {
        [v99 setValidVMRange:?];
        realizedClasses = [v92[8] realizedClasses];
        v105 = v92[34];
        v92[34] = realizedClasses;

        if (v10 && [v10 signpostID])
        {
          logHandle7 = [v10 logHandle];
          signpostID7 = [v10 signpostID];
          if (signpostID7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle7))
          {
            *v122 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle7, OS_SIGNPOST_INTERVAL_END, signpostID7, "initMemoryScanner", "", v122, 2u);
          }
        }

        [v10 endEvent:"initMemoryScanner"];
        [v10 startWithCategory:"initMemoryScanner" message:"setting up VMUScanOverlay"];
        if (v10)
        {
          logHandle8 = [v10 logHandle];
          signpostID8 = [v10 signpostID];
          if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle8))
          {
            *v122 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle8, OS_SIGNPOST_INTERVAL_BEGIN, signpostID8, "initMemoryScanner", "setting up VMUScanOverlay", v122, 2u);
          }
        }

        v110 = [[VMUScanOverlay alloc] initWithScanner:v92];
        v111 = v92[71];
        v92[71] = v110;

        [v92 refineTypesWithOverlay:v92[71]];
        if (v10 && [v10 signpostID])
        {
          logHandle9 = [v10 logHandle];
          signpostID9 = [v10 signpostID];
          if (signpostID9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle9))
          {
            *v122 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle9, OS_SIGNPOST_INTERVAL_END, signpostID9, "initMemoryScanner", "", v122, 2u);
          }
        }

        [v10 endEvent:"initMemoryScanner"];
        v92[68] = [v92[8] addressOfSymbol:"___CFPasteboardReservedBase" inLibrary:"CoreFoundation"];
        v92[68] = [VMUTask stripExtraPointerBits:?];
        *(v92 + 192) = [v92 doesTargetProcessHaveObjCPatches];
        v92[60] = v117;
        *v122 = 0;
        v121 = 0;
        v114 = v9->_task;
        symbolicator = [v92[8] symbolicator];
        malloc_zones_array_address_and_count = task_get_malloc_zones_array_address_and_count(v114, symbolicator, v116, v122, &v121, 0);
        if (malloc_zones_array_address_and_count)
        {
          if (v121)
          {
            v92[69] = *v122;
          }

          goto LABEL_98;
        }

LABEL_97:
        v92 = 0;
LABEL_98:
        v11 = v92;
        v92 = v124;
        goto LABEL_106;
      }

      NSLog(&cfstr_InvalidMinregi.isa, v100->var6, var7);
    }

    malloc_zones_array_address_and_count = 0;
    goto LABEL_97;
  }

  NSLog(&cfstr_FoundNoMallocZ.isa);
  malloc_zones_array_address_and_count = 0;
  v11 = 0;
LABEL_106:

  _Block_object_dispose(buf, 8);
  if (!malloc_zones_array_address_and_count)
  {
    goto LABEL_103;
  }

LABEL_6:
  v11 = v11;
  v12 = v11;
LABEL_104:

  return v12;
}

uint64_t __48__VMUTaskMemoryScanner_initWithVMUTask_options___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = (a2 >> *MEMORY[0x1E69E9AC0]) & 0x7FFFF;
  v6 = v4 + 64;
  v7 = *(v4 + 64 + 4 * v5);
  v8 = *(v4 + 32);
  if (v7)
  {
    v9 = *(v8 + ((v7 - 1) << 6));
    if (a2 - v9[1] < v9[2])
    {
      goto LABEL_25;
    }
  }

  v10 = *(v4 + 40);
  if (!v10)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_12;
  }

  v11 = *(v4 + 32);
  while (1)
  {
    v12 = v10 >> 1;
    v13 = &v11[8 * (v10 >> 1)];
    if (*(*v13 + 1) <= a2)
    {
      break;
    }

LABEL_8:
    v14 = v10 > 1;
    v10 = v12;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  if (*(*v13 + 2) + *(*v13 + 1) <= a2)
  {
    v11 = v13 + 8;
    v12 = --v10 >> 1;
    goto LABEL_8;
  }

  if ([*v13 isSpecialPhysFootprintRegion])
  {
    v13 = 0;
  }

LABEL_12:
  if (*(*v13 + 132))
  {
    v15 = v13 + 8;
    v16 = *(v4 + 40) - ((v13 - *(v4 + 32) + 64) >> 6);
    if (v16)
    {
      while (1)
      {
        v17 = v16 >> 1;
        v18 = &v15[8 * (v16 >> 1)];
        if (*(*v18 + 1) <= a2)
        {
          if (*(*v18 + 2) + *(*v18 + 1) > a2)
          {
            if ([*v18 isSpecialPhysFootprintRegion])
            {
              v16 = 0;
            }

            else
            {
              v16 = v18;
            }

            break;
          }

          v15 = v18 + 8;
          v17 = --v16 >> 1;
        }

        v14 = v16 > 1;
        v16 = v17;
        if (!v14)
        {
          v16 = 0;
          break;
        }
      }
    }

    if (v16)
    {
      v13 = v16;
    }
  }

  *(v6 + 4 * v5) = ((v13 - v8) >> 6) + 1;
  v9 = *v13;
LABEL_25:
  v19 = [v9 descriptionWithOptions:513 maximumLength:0];
  v20 = *(*(a1 + 32) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = *(*(*(a1 + 32) + 8) + 40);

  return [v22 UTF8String];
}

uint64_t __48__VMUTaskMemoryScanner_initWithVMUTask_options___block_invoke_66(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 220);
  if (v9 <= *(v8 + 216))
  {
    v10 = 2 * v9;
    if ((2 * v9) <= 8)
    {
      v10 = 8;
    }

    *(v8 + 220) = v10;
    while (1)
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 220);
      if (v12 >= *(v11 + 216))
      {
        break;
      }

      *(v11 + 220) = 2 * v12;
    }

    *(*(a1 + 32) + 208) = malloc_type_realloc(*(v11 + 208), 24 * v12, 0x10A00404568A766uLL);
    v13 = *(a1 + 32);
    v14 = *(v13 + 208);
    if (!v14)
    {
      NSLog(&cfstr_OutOfMemoryFai.isa, "_zones", v9, *(v13 + 220));
      abort();
    }

    bzero((v14 + 24 * v9), 24 * (*(v13 + 220) - v9));
  }

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UnknownZone (%#llx)", a2];
  }

  [*(*(a1 + 32) + 144) addObject:v7];
  v15 = (*(*(a1 + 32) + 208) + 24 * *(*(a1 + 32) + 216));
  *v15 = a2;
  v15[1] = v7;
  v15[2] = a3;
  ++*(*(a1 + 32) + 216);

  return 0;
}

uint64_t __48__VMUTaskMemoryScanner_initWithVMUTask_options___block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 rangeOfString:@"DefaultMallocZone"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v5 rangeOfString:@"DefaultMallocZone"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v4 compare:v5];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

uint64_t __48__VMUTaskMemoryScanner_initWithVMUTask_options___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a3 + 8);
  return (*(*(a1 + 32) + 16))();
}

- (BOOL)doesTargetProcessHaveObjCPatches
{
  v3 = [(VMUObjectIdentifier *)self->_objectIdentifier addressOfSymbol:"_dyld_process_has_objc_patches" inLibrary:"libdyld.dylib"];
  if (v3)
  {
    v4 = v3;
    memoryReader = [(VMUObjectIdentifier *)self->_objectIdentifier memoryReader];
    v6 = memoryReader[2](memoryReader, v4, 1);

    if (v6)
    {
      LOBYTE(v3) = *v6 != 0;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)mapDyldSharedCacheFromTargetWithRegions:(id)regions
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  regionsCopy = regions;
  v5 = [regionsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v17 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(regionsCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (([v12 isSubmap] & 1) == 0)
        {
          if ([(VMUTask *)self->_task rangeIsInSharedCache:*(v12 + 8), *(v12 + 16)])
          {
            if (v8)
            {
              v13 = *(v12 + 8) != v8;
            }

            else
            {
              v13 = 0;
            }

            v14 = *(v12 + 24);
            if (v14 != v17 || v13)
            {
              if (v9 && v7)
              {
                [(VMUTaskMemoryCache *)self->_memoryCache mapAddress:v9 size:v7];
                v14 = *(v12 + 24);
              }

              v15 = *(v12 + 8);
              v9 = v15;
              v17 = v14;
            }

            else
            {
              v15 = *(v12 + 8);
            }

            v8 = *(v12 + 16) + v15;
            v7 = v8 - v9;
          }

          else if (v9)
          {
            goto LABEL_23;
          }
        }
      }

      v6 = [regionsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
LABEL_23:

    if (v9 && v7)
    {
      [(VMUTaskMemoryCache *)self->_memoryCache mapAddress:v9 size:v7];
    }
  }

  else
  {
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)_suspend
{
  if ([(VMUTask *)self->_task isCore])
  {
    goto LABEL_2;
  }

  taskPort = [(VMUTask *)self->_task taskPort];
  if (!taskPort)
  {
    return taskPort;
  }

  if ([(VMUTask *)self->_task taskPort]== -1)
  {
LABEL_10:
    LOBYTE(taskPort) = 0;
    return taskPort;
  }

  [(VMUTask *)self->_task taskPort];
  if ((VMUTaskIsSelf() & 1) == 0)
  {
    v4 = task_suspend2([(VMUTask *)self->_task taskPort], &self->_suspensionToken);
    if (v4)
    {
      v5 = v4;
      if (task_exists(self->_task))
      {
        v6 = *MEMORY[0x1E69E9848];
        v7 = mach_error_string(v5);
        fprintf(v6, "Unable to suspend target task: %s (%d)\n", v7, v5);
      }

      task = self->_task;
      self->_task = 0;

      goto LABEL_10;
    }
  }

LABEL_2:
  LOBYTE(taskPort) = 1;
  return taskPort;
}

- (void)_withReaderBlockForHeapEnumeration:(id)enumeration
{
  task = self->_task;
  enumerationCopy = enumeration;
  if ([(VMUTask *)task isExclave])
  {
    v6 = [VMUTaskMemoryCache alloc];
    coreFilePath = [(VMUTask *)self->_task coreFilePath];
    v17 = 0;
    v8 = [(VMUTaskMemoryCache *)v6 initWithCorePath:coreFilePath originalBinaryPaths:0 error:&v17];
    v9 = v17;

    if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VMUTaskMemoryScanner _withReaderBlockForHeapEnumeration:v9];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__VMUTaskMemoryScanner__withReaderBlockForHeapEnumeration___block_invoke;
    aBlock[3] = &unk_1E8277698;
    v16 = v8;
    v10 = v8;
    v11 = _Block_copy(aBlock);
    enumerationCopy[2](enumerationCopy, v11);
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__VMUTaskMemoryScanner__withReaderBlockForHeapEnumeration___block_invoke_2;
    v13[3] = &unk_1E82776C0;
    v13[4] = self;
    v14 = 0;
    v12 = _Block_copy(v13);
    enumerationCopy[2](enumerationCopy, v12);
  }
}

void *__59__VMUTaskMemoryScanner__withReaderBlockForHeapEnumeration___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v4 = 0;
    v5 = 0;
    if ([result mapAddress:a2 size:a3 returnedAddress:&v5 returnedSize:&v4])
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

unint64_t __59__VMUTaskMemoryScanner__withReaderBlockForHeapEnumeration___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [VMUTask stripExtraPointerBits:?];
  result = 0;
  v7 = *(*(a1 + 32) + 112);
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  v10 = v9 >= v8;
  v11 = v9 - v8;
  if (v10 && v5 - v8 < v11)
  {
    v12 = MEMORY[0x1E69E9AC0];
    v13 = v5 >> *MEMORY[0x1E69E9AC0];
    if (v13)
    {
      v14 = *(v7 + 24);
      v17 = *v14;
      v15 = v14 + 1;
      v16 = v17;
      v18 = v5 >> *MEMORY[0x1E69E9AC0];
      do
      {
        v19 = v18 & 0x3FFFFFF;
        if (v16 <= v19 || ((*(v15 + (v19 >> 3)) >> (v18 & 7)) & 1) == 0)
        {
          return 0;
        }

        v18 >>= 26;
      }

      while (v18);
    }

    v20 = v13 & 0x7FFFF;
    v21 = *(v7 + 64 + 4 * (v13 & 0x7FFFF));
    v22 = *(v7 + 32);
    if (v21)
    {
      v23 = v22 + ((v21 - 1) << 6);
      if (v5 - *(*v23 + 8) < *(*v23 + 16))
      {
        goto LABEL_11;
      }
    }

    v49 = *(v7 + 40);
    if (v49)
    {
      v50 = *(v7 + 32);
      do
      {
        v51 = v49 >> 1;
        v23 = v50 + (v49 >> 1 << 6);
        if (*(*v23 + 8) <= v5)
        {
          if (*(*v23 + 16) + *(*v23 + 8) > v5)
          {
            v52 = [*v23 isSpecialPhysFootprintRegion];
            if (v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = v23;
            }

            if (v52)
            {
              return 0;
            }

            if ((*(*v53 + 132) & 1) == 0)
            {
              goto LABEL_73;
            }

            v54 = (v53 + 64);
            v55 = *(v7 + 40) - ((v53 + 64 - *(v7 + 32)) >> 6);
            if (!v55)
            {
              goto LABEL_70;
            }

            while (1)
            {
              v56 = v55 >> 1;
              v57 = &v54[8 * (v55 >> 1)];
              if (*(*v57 + 1) <= v5)
              {
                if (*(*v57 + 2) + *(*v57 + 1) > v5)
                {
                  if ([*v57 isSpecialPhysFootprintRegion])
                  {
                    v55 = 0;
                  }

                  else
                  {
                    v55 = v57;
                  }

LABEL_70:
                  if (v55)
                  {
                    v53 = v55;
                  }

                  v23 = v53;
LABEL_73:
                  *(v7 + 64 + 4 * v20) = ((v53 - v22) >> 6) + 1;
LABEL_11:
                  v24 = v5 + a3;
                  if (*(*v23 + 16) + *(*v23 + 8) < v5 + a3 && *(*v23 + 8) + (*(v23 + 40) >> 1) < v24)
                  {
                    LODWORD(v25) = 1;
                    do
                    {
                      v26 = (*(v23 + (v25 << 6)) + 8);
                      v25 = (v25 + 1);
                    }

                    while (v26[1] + *v26 < v24);
                    v27 = *(a1 + 32);
                    v28 = *(a1 + 40);
                    v30 = *(v27 + 56);
                    v29 = *(v27 + 64);
                    v31 = *(v27 + 8);
                    v83 = v29;
                    v84 = v30;
                    v85 = v28;
                    v32 = 0;
                    if (v25)
                    {
                      v33 = v25;
                      v34 = v23;
                      do
                      {
                        v35 = *v34;
                        v34 += 8;
                        v32 += *(v35 + 16);
                        --v33;
                      }

                      while (v33);
                    }

                    v93[0] = 0;
                    v87 = 0;
                    v36 = [v84 findMappedAddress:*(*v23 + 8) size:v32];
                    if (v36)
                    {
                      v37 = v36[1];
                      v38 = *(*v23 + 8) - *v36;
                      v93[0] = v36[2] + v38;
                      v87 = v37 - v38;
                      goto LABEL_20;
                    }

                    v81 = v31;
                    if (v25)
                    {
                      v63 = v25;
                      v64 = v23;
                      do
                      {
                        v65 = v83;
                        v66 = v84;
                        v67 = v85;
                        if (v64[6])
                        {
                          if (v64 == v64[7])
                          {
                            aBlock[0] = MEMORY[0x1E69E9820];
                            aBlock[1] = 3221225472;
                            aBlock[2] = ___unmapRegion_block_invoke;
                            aBlock[3] = &unk_1E8277CB0;
                            v89 = v66;
                            v91 = v64;
                            v90 = v65;
                            v92 = v23;
                            v69 = _Block_copy(aBlock);
                            v82 = v69;
                            if (v85)
                            {
                              dispatch_async(v67, v69);
                            }

                            else
                            {
                              v69[2](v69);
                            }
                          }

                          else
                          {
                            v68 = v64[5] & 1;
                            v64[6] = 0;
                            v64[7] = 0;
                            v64[5] = v68;
                          }
                        }

                        v64 += 8;
                        --v63;
                      }

                      while (v63);
                    }

                    v70 = [v84 mapAddress:*(*v23 + 8) size:v32 returnedAddress:v93 returnedSize:&v87];
                    v12 = MEMORY[0x1E69E9AC0];
                    v31 = v81;
                    if (v70)
                    {
                      if (task_exists(v81))
                      {
                        fprintf(*MEMORY[0x1E69E9848], "Failed to map remote region at [%#llx-%#llx]\n", *(*v23 + 8), *(*v23 + 8) + v32);
                      }
                    }

                    else
                    {
LABEL_20:
                      if (v25)
                      {
                        v39 = v87;
                        v40 = (v23 + 40);
                        do
                        {
                          v40[2] = v23;
                          *v40 = *v40 & 1 | (2 * v39);
                          v41 = v93[0];
                          v40[1] = v93[0];
                          v42 = *(v40 - 5) + 8;
                          v93[0] = *(*(v40 - 5) + 16) + v41;
                          v39 = v87 - *(v42 + 8);
                          v87 = v39;
                          v40 += 8;
                          --v25;
                        }

                        while (v25);
                      }
                    }
                  }

                  v43 = *(a1 + 32);
                  v44 = *(v43 + 56);
                  v45 = *(v43 + 96);
                  v46 = *(v43 + 104);
                  v47 = *(v43 + 8);
                  v48 = v44;
                  if (*(v23 + 48))
                  {
LABEL_25:

                    return *(v23 + 48) + v5 - *(*v23 + 8);
                  }

                  if (![*v23 isSpecialPhysFootprintRegion])
                  {
                    aBlock[0] = 0;
                    v93[0] = 0;
                    v59 = [v48 mapAddress:*(*v23 + 8) size:*(*v23 + 16) returnedAddress:aBlock returnedSize:v93];
                    if (!v59)
                    {
                      v71 = aBlock[0];
                      *(v23 + 40) = *(v23 + 40) & 1 | (2 * v93[0]);
                      *(v23 + 48) = v71;
                      *(v23 + 56) = v23;
                      goto LABEL_25;
                    }

                    if ((*(*v23 + 52) & 3u) - 1 >= 2)
                    {
                      v60 = v59;
                      v61 = task_exists(v47);
                      if (v23 != v45 + ((v46 - 1) << 6) && v61)
                      {
                        if ([*v23 isJavascriptJitExecutableAllocator])
                        {
                          *(v23 + 40) |= 1uLL;
                        }

                        else
                        {
                          v86 = *MEMORY[0x1E69E9848];
                          v72 = [*v23 address];
                          v73 = *(*v23 + 24);
                          v74 = vm_prot_strings[v73];
                          v75 = *(*v23 + 16) + *(*v23 + 8);
                          v76 = VMUExclaveOrDarwinRegionTypeDescriptionForTagShareProtAndPager(*(*v23 + 232), *(*v23 + 104), *(*v23 + 50), v73, *(*v23 + 49));
                          v77 = [v76 UTF8String];
                          v78 = *(*v23 + 16) >> *v12;
                          v79 = "pages";
                          if (v78 == 1)
                          {
                            v79 = "page";
                          }

                          if (*(v23 + 24) == *(v23 + 32))
                          {
                            v80 = "";
                          }

                          else
                          {
                            v80 = " [root]";
                          }

                          fprintf(v86, "Failed to map remote region: [%#llx-%#llx] %s %s (%llu %s)%s (error: %d)\n", v72, v75, v74, v77, v78, v79, v80, v60);
                        }
                      }
                    }
                  }

                  return 0;
                }

                v54 = v57 + 8;
                v56 = --v55 >> 1;
              }

              v58 = v55 > 1;
              v55 = v56;
              if (!v58)
              {
                v55 = 0;
                goto LABEL_70;
              }
            }
          }

          v50 = v23 + 64;
          v51 = --v49 >> 1;
        }

        v10 = v49 >= 2;
        v49 = v51;
      }

      while (v10);
    }

    return 0;
  }

  return result;
}

- (BOOL)_callRemoteMallocEnumerators:(unsigned int)enumerators error:(id *)error block:(id)block
{
  blockCopy = block;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  if (self->_mallocEnumerationShouldFail && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Passing bad task peek function to malloc enumerators because VMUTaskMemoryScanner.mallocEnumerationShouldFail is YES", buf, 2u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__VMUTaskMemoryScanner__callRemoteMallocEnumerators_error_block___block_invoke;
  v12[3] = &unk_1E8277740;
  v12[4] = self;
  enumeratorsCopy = enumerators;
  v9 = blockCopy;
  v13 = v9;
  v14 = &v17;
  [(VMUTaskMemoryScanner *)self _withReaderBlockForHeapEnumeration:v12];
  if (error)
  {
    *error = v18[5];
  }

  v10 = v18[5] == 0;

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __65__VMUTaskMemoryScanner__callRemoteMallocEnumerators_error_block___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__VMUTaskMemoryScanner__callRemoteMallocEnumerators_error_block___block_invoke_2;
  v7[3] = &unk_1E8277718;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v10 = *(a1 + 56);
  v5 = v4;
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  _withPeekTransformerFunctionForMemoryReader(a2, v7);
}

void __65__VMUTaskMemoryScanner__callRemoteMallocEnumerators_error_block___block_invoke_2(uint64_t a1, uint64_t (*a2)())
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 560))
  {
    v4 = failingPeekFunction;
  }

  else
  {
    v4 = a2;
  }

  v24 = v4;
  if (!*(v2 + 216))
  {
    goto LABEL_17;
  }

  v6 = 0;
  v7 = 0;
  while (!*(*(v2 + 208) + v6 + 16))
  {
LABEL_9:
    ++v7;
    v6 += 24;
    if (v7 >= *(v2 + 216))
    {
      goto LABEL_17;
    }
  }

  get_local_zone_count();
  v8 = [*(*(a1 + 32) + 8) taskPort];
  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v11 = (*(v10 + 208) + v6);
  v12 = *v11;
  v13 = v11[2];
  v14 = [*(v10 + 144) objectAtIndexedSubscript:v7];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26[0] = __65__VMUTaskMemoryScanner__callRemoteMallocEnumerators_error_block___block_invoke_3;
  v26[1] = &unk_1E82776F0;
  v27 = *(a1 + 40);
  v28 = v7;
  v15 = VMUEnumerateMallocBlocksInZone(v8, v9, v12, v24, v13, v14, v25);

  unregister_new_local_zones();
  if (!v15)
  {

    v2 = *v3;
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __65__VMUTaskMemoryScanner__callRemoteMallocEnumerators_error_block___block_invoke_2_cold_1(v3, v7, v15);
  }

  v16 = MEMORY[0x1E696ABC0];
  v29 = *MEMORY[0x1E696A578];
  if (*(*(*(a1 + 32) + 208) + v6 + 8))
  {
    v17 = *(*(*(a1 + 32) + 208) + v6 + 8);
  }

  else
  {
    v17 = @"UNKNOWN";
  }

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Malloc enumeration of zone %@ failed to get full information about malloc metadata and/or allocations with the error %s (%d). It is likely that the target was suspended while malloc metadata was being modified.", v17, mach_error_string(v15), v15, v26];
  v30[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v20 = [v16 errorWithDomain:@"Malloc enumeration" code:v15 userInfo:v19];
  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

LABEL_17:
  v23 = *MEMORY[0x1E69E9840];
}

char *__44__VMUTaskMemoryScanner__shouldScanVMregion___block_invoke()
{
  result = getenv("SCAN_VM_REGIONS_WITH_UNKNOWN_PATHS");
  _MergedGlobals = result;
  return result;
}

- (id)_cachedVariantForGenericInfo:(id)info variantKey:(unint64_t)key
{
  v6 = [(VMUClassInfoMap *)self->_classInfoIndexer indexForClassInfo:info];
  variantCachesByIsaIndex = self->_variantCachesByIsaIndex;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v9 = [(NSMutableDictionary *)variantCachesByIsaIndex objectForKeyedSubscript:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:key];
  v11 = [v9 objectForKeyedSubscript:v10];

  return v11;
}

- (void)_registerVariant:(id)variant forGenericInfo:(id)info variantKey:(unint64_t)key
{
  classInfoIndexer = self->_classInfoIndexer;
  variantCopy = variant;
  v10 = [(VMUClassInfoMap *)classInfoIndexer indexForClassInfo:info];
  variantCachesByIsaIndex = self->_variantCachesByIsaIndex;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  v16 = [(NSMutableDictionary *)variantCachesByIsaIndex objectForKeyedSubscript:v12];

  if (!v16)
  {
    v16 = objc_opt_new();
    v13 = self->_variantCachesByIsaIndex;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    [(NSMutableDictionary *)v13 setObject:v16 forKeyedSubscript:v14];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:key];
  [v16 setObject:variantCopy forKeyedSubscript:v15];
}

- (void)_addThreadNodesFromTask
{
  if (self->_threadsCount)
  {
    v3 = 0;
    blocksCount = self->_blocksCount;
    do
    {
      blocksSize = self->_blocksSize;
      if (blocksSize <= blocksCount)
      {
        if ((2 * blocksSize) <= 0x40000)
        {
          v7 = 0x40000;
        }

        else
        {
          v7 = 2 * blocksSize;
        }

        do
        {
          v8 = v7;
          v7 *= 2;
        }

        while (v8 < blocksCount);
        self->_blocksSize = v8;
        blocks = malloc_type_realloc(self->_blocks, 16 * v8, 0x1000040451B5BE8uLL);
        self->_blocks = blocks;
        if (!blocks)
        {
          NSLog(&cfstr_OutOfMemoryFai.isa, "_blocks", blocksSize, self->_blocksSize);
          abort();
        }

        blocksCount = self->_blocksCount;
      }

      else
      {
        blocks = self->_blocks;
      }

      v9 = &blocks[blocksCount];
      v9->var0 = v3;
      *(v9 + 1) = (v3 << 41) | 4;
      blocksCount = self->_blocksCount + 1;
      self->_blocksCount = blocksCount;
      ++v3;
    }

    while (v3 < self->_threadsCount);
  }
}

- (void)_addSpecialNodesFromTask
{
  blocksCount = self->_blocksCount;
  blocksSize = self->_blocksSize;
  if (blocksSize <= blocksCount)
  {
    if ((2 * blocksSize) <= 0x40000)
    {
      v6 = 0x40000;
    }

    else
    {
      v6 = 2 * blocksSize;
    }

    do
    {
      v7 = v6;
      v6 *= 2;
    }

    while (v7 < blocksCount);
    self->_blocksSize = v7;
    blocks = malloc_type_realloc(self->_blocks, 16 * v7, 0x1000040451B5BE8uLL);
    self->_blocks = blocks;
    if (!blocks)
    {
      goto LABEL_85;
    }

    blocksCount = self->_blocksCount;
  }

  else
  {
    blocks = self->_blocks;
  }

  v8 = blocksCount;
  v9 = &blocks[blocksCount];
  v9->var0 = v8;
  *(v9 + 1) = 3;
  ++self->_blocksCount;
  objCclassCount = [(VMUObjectIdentifier *)self->_objectIdentifier ObjCclassCount];
  if (objCclassCount + [(VMUObjectIdentifier *)self->_objectIdentifier SwiftClassCount])
  {
    if (_addSpecialNodesFromTask_onceToken != -1)
    {
      [VMUTaskMemoryScanner _addSpecialNodesFromTask];
    }

    v11 = self->_blocksCount;
    blocksSize = self->_blocksSize;
    if (blocksSize <= v11)
    {
      if ((2 * blocksSize) <= 0x40000)
      {
        v13 = 0x40000;
      }

      else
      {
        v13 = 2 * blocksSize;
      }

      do
      {
        v14 = v13;
        v13 *= 2;
      }

      while (v14 < v11);
      self->_blocksSize = v14;
      v12 = malloc_type_realloc(self->_blocks, 16 * v14, 0x1000040451B5BE8uLL);
      self->_blocks = v12;
      if (!v12)
      {
        goto LABEL_85;
      }

      v11 = self->_blocksCount;
    }

    else
    {
      v12 = self->_blocks;
    }

    v15 = v11;
    v16 = &v12[v11];
    v17 = [(VMUClassInfoMap *)self->_classInfoIndexer indexForClassInfo:_addSpecialNodesFromTask_autoreleasePoolBoundaryClassInfo];
    v16->var0 = v15;
    *(v16 + 1) = (v17 << 41) | 1;
    v18 = self->_blocksCount;
    self->_autoreleasePoolBoundaryNode = v18;
    self->_blocksCount = v18 + 1;
  }

  self->_webKitZoneIndex = -1;
  if (!getenv("SYMBOLICATION_DISABLE_WEBKIT_POINTER_PACKING_WORKAROUND") && self->_zonesCount)
  {
    v35 = 0;
    v36 = 8;
    do
    {
      v37 = *(&self->_zones->var0 + v36);
      v38 = v37;
      if (v37 && [v37 hasPrefix:@"WebKit Malloc"])
      {
        self->_webKitZoneIndex = v35;
      }

      ++v35;
      v36 += 24;
    }

    while (v35 < self->_zonesCount);
    if (self->_webKitZoneIndex != -1)
    {
      isExclaveCore = [(VMUTask *)self->_task isExclaveCore];
      [(VMUObjectIdentifier *)self->_objectIdentifier symbolicator];
      if (isExclaveCore)
      {
        CSSymbolicatorGetSymbolOwner();
      }

      else
      {
        CSSymbolicatorGetSymbolOwnerWithNameAtTime();
      }

      Path = CSSymbolOwnerGetPath();
      if (Path)
      {
        v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Path];
        v44 = [VMUClassInfo classInfoWithClassName:@"WebKit Owned" binaryPath:v43 type:16];
      }

      else
      {
        v44 = [VMUClassInfo classInfoWithClassName:@"WebKit Owned" binaryPath:0 type:16];
      }

      v53 = self->_blocksCount;
      blocksSize = self->_blocksSize;
      if (blocksSize <= v53)
      {
        if ((2 * blocksSize) <= 0x40000)
        {
          v55 = 0x40000;
        }

        else
        {
          v55 = 2 * blocksSize;
        }

        do
        {
          v56 = v55;
          v55 *= 2;
        }

        while (v56 < v53);
        self->_blocksSize = v56;
        v54 = malloc_type_realloc(self->_blocks, 16 * v56, 0x1000040451B5BE8uLL);
        self->_blocks = v54;
        if (!v54)
        {
          goto LABEL_85;
        }

        v53 = self->_blocksCount;
      }

      else
      {
        v54 = self->_blocks;
      }

      v57 = v53;
      v58 = &v54[v53];
      v59 = [(VMUClassInfoMap *)self->_classInfoIndexer indexForClassInfo:v44];
      v58->var0 = v57;
      *(v58 + 1) = (v59 << 41) | 1;
      v60 = self->_blocksCount;
      self->_webKitMallocFakeRootNode = v60;
      self->_blocksCount = v60 + 1;
    }
  }

  self->_attributeGraphZoneIndex = -1;
  if (self->_zonesCount)
  {
    for (i = 0; i < self->_zonesCount; ++i)
    {
      v20 = self->_zones[i].var1;
      if ([v20 hasPrefix:@"AttributeGraph_0x"])
      {
        self->_attributeGraphZoneIndex = i;
        isExclaveCore2 = [(VMUTask *)self->_task isExclaveCore];
        [(VMUObjectIdentifier *)self->_objectIdentifier symbolicator];
        if (isExclaveCore2)
        {
          CSSymbolicatorGetSymbolOwner();
        }

        else
        {
          CSSymbolicatorGetSymbolOwnerWithNameAtTime();
        }

        v22 = CSSymbolOwnerGetPath();
        if (v22)
        {
          v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22];
          v24 = [VMUClassInfo classInfoWithClassName:@"AttributeGraph Owned" binaryPath:v23 type:16];
        }

        else
        {
          v24 = [VMUClassInfo classInfoWithClassName:@"AttributeGraph Owned" binaryPath:0 type:16];
        }

        v25 = self->_blocksCount;
        v26 = self->_blocksSize;
        if (v26 <= v25)
        {
          if ((2 * v26) <= 0x40000)
          {
            v28 = 0x40000;
          }

          else
          {
            v28 = 2 * v26;
          }

          do
          {
            v29 = v28;
            v28 *= 2;
          }

          while (v29 < v25);
          self->_blocksSize = v29;
          v27 = malloc_type_realloc(self->_blocks, 16 * v29, 0x1000040451B5BE8uLL);
          self->_blocks = v27;
          if (!v27)
          {
            NSLog(&cfstr_OutOfMemoryFai.isa, "_blocks", v26, self->_blocksSize);
            goto LABEL_84;
          }

          v25 = self->_blocksCount;
        }

        else
        {
          v27 = self->_blocks;
        }

        v30 = v25;
        v31 = &v27[v25];
        v32 = [(VMUClassInfoMap *)self->_classInfoIndexer indexForClassInfo:v24];
        v31->var0 = v30;
        *(v31 + 1) = (v32 << 41) | 1;
        v33 = self->_blocksCount;
        self->_attributeGraphFakeRootNode = v33;
        self->_blocksCount = v33 + 1;
      }
    }
  }

  self->_swiftTaskAllocationsFakeRootNode = -1;
  if (!getenv("SYMBOLICATION_DISABLE_FALSE_TASK_LEAKS_WORKAROUND"))
  {
    isExclaveCore3 = [(VMUTask *)self->_task isExclaveCore];
    [(VMUObjectIdentifier *)self->_objectIdentifier symbolicator];
    if (isExclaveCore3)
    {
      CSSymbolicatorGetSymbolOwner();
    }

    else
    {
      CSSymbolicatorGetSymbolOwnerWithNameAtTime();
    }

    if ((CSIsNull() & 1) == 0)
    {
      v40 = CSSymbolOwnerGetPath();
      if (v40)
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v40];
        v61 = [VMUClassInfo classInfoWithClassName:@"Swift Task Owned" binaryPath:v41 type:16];
      }

      else
      {
        v61 = [VMUClassInfo classInfoWithClassName:@"Swift Task Owned" binaryPath:0 type:16];
      }

      v45 = self->_blocksCount;
      blocksSize = self->_blocksSize;
      if (blocksSize > v45)
      {
        v46 = self->_blocks;
LABEL_70:
        v49 = v45;
        v50 = &v46[v45];
        v51 = [(VMUClassInfoMap *)self->_classInfoIndexer indexForClassInfo:v61];
        v50->var0 = v49;
        *(v50 + 1) = (v51 << 41) | 1;
        v52 = self->_blocksCount;
        self->_swiftTaskAllocationsFakeRootNode = v52;
        self->_blocksCount = v52 + 1;

        return;
      }

      if ((2 * blocksSize) <= 0x40000)
      {
        v47 = 0x40000;
      }

      else
      {
        v47 = 2 * blocksSize;
      }

      do
      {
        v48 = v47;
        v47 *= 2;
      }

      while (v48 < v45);
      self->_blocksSize = v48;
      v46 = malloc_type_realloc(self->_blocks, 16 * v48, 0x1000040451B5BE8uLL);
      self->_blocks = v46;
      if (v46)
      {
        v45 = self->_blocksCount;
        goto LABEL_70;
      }

LABEL_85:
      NSLog(&cfstr_OutOfMemoryFai.isa, "_blocks", blocksSize, self->_blocksSize);
LABEL_84:
      abort();
    }
  }
}

void __48__VMUTaskMemoryScanner__addSpecialNodesFromTask__block_invoke()
{
  v0 = [VMUClassInfo classInfoWithClassName:kVMUAutoreleasePoolBoundaryClassName binaryPath:@"/usr/lib/libobjc.A.dylib" type:16];
  v1 = _addSpecialNodesFromTask_autoreleasePoolBoundaryClassInfo;
  _addSpecialNodesFromTask_autoreleasePoolBoundaryClassInfo = v0;
}

- (unint64_t)_lengthOfMappedFileOfRegion:(id)region
{
  v17 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  if (!regionCopy[49])
  {
    goto LABEL_11;
  }

  if ([(VMUTask *)self->_task rangeIsInSharedCache:*(regionCopy + 1), *(regionCopy + 2)])
  {
    st_size = *(regionCopy + 2) + *(regionCopy + 15);
    goto LABEL_16;
  }

  path = [regionCopy path];
  if (!path)
  {
LABEL_11:
    st_size = 0;
    goto LABEL_16;
  }

  v7 = path;
  if (([path containsString:@"*"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"/") & 1) == 0)
  {
    memoryCache = [(VMUTask *)self->_task memoryCache];
    v9 = [memoryCache procRegionFileNameForAddress:*(regionCopy + 1) buffer:v16 bufferSize:1024];

    if (v9 >= 1)
    {
      *(&v16[0].st_dev + v9) = 0;
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];

      v7 = v10;
    }
  }

  v11 = [(NSMutableDictionary *)self->_mappedFileNameToLengthDict objectForKeyedSubscript:v7];
  v12 = v11;
  if (v11)
  {
    st_size = [v11 unsignedLongLongValue];
  }

  else
  {
    memset(v16, 0, 144);
    if (stat([v7 UTF8String], v16))
    {
      st_size = *(regionCopy + 2) + *(regionCopy + 15);
    }

    else
    {
      st_size = v16[0].st_size;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16[0].st_size];
      [(NSMutableDictionary *)self->_mappedFileNameToLengthDict setObject:v13 forKeyedSubscript:v7];
    }
  }

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return st_size;
}

- (void)_shortenScannableRangeOfMappedFile:(unsigned int)file
{
  v4 = self->_regions + 64 * file;
  v8 = *v4;
  v5 = [(VMUTaskMemoryScanner *)self _lengthOfMappedFileOfRegion:v8];
  v6 = v8[15];
  if (v5 >= v6)
  {
    if (v5 >= v8[2] + v6)
    {
      goto LABEL_6;
    }

    v7 = v5 - v6 + *(v4 + 3);
  }

  else
  {
    v7 = *(v4 + 3) + 1;
  }

  *(v4 + 4) = v7;
LABEL_6:
}

- (BOOL)addRootNodesFromTaskWithError:(id *)error
{
  [(VMUTaskMemoryScanner *)self _addThreadNodesFromTask];
  [(VMUTaskMemoryScanner *)self _addSpecialNodesFromTask];
  v5 = self->_regionsCount - 1;
  v6 = v5 << 6;
  do
  {
    v7 = v5;
    if (!v5)
    {
      break;
    }

    v8 = (*(&self->_regions->var0 + v6))[50];
    --v5;
    v6 -= 64;
  }

  while (v8 == 5);
  v9 = 0;
  do
  {
    v10 = v9;
    v11 = *(&self->_regions->var0 + 8 * v9);
    v12 = v11;
    if (v11[50] != 3 && ([v11 isSubmap] & 1) == 0 && (objc_msgSend(v12, "isSpecialPhysFootprintRegion") & 1) == 0)
    {
      v13 = *(v12 + 1);
      v14 = *(v12 + 2);
      v15 = [(VMUTask *)self->_task rangeIsInSharedCache:v13, v14];
      if (([v12 isMallocHeapRelated] & 1) == 0 && (objc_msgSend(v12, "ignoreRegionDuringScanning") & 1) == 0)
      {
        if ([v12 willNotHoldPointers])
        {
          v16 = self->_regions + 64 * v10;
          *(v16 + 3) = v13;
          *(v16 + 4) = v13 + 1;
        }

        else
        {
          if ((~[v12 protection] & 3) != 0)
          {
            v18 = *(v12 + 6);
            if (((~v18 & 5) == 0 && !v15 || v18 == 1 && !v15) && (v12[132] & 2) == 0 || ([v12 protection] & 1) != 0 && objc_msgSend(v12, "isDyldPrivateMemory"))
            {
              v19 = self->_regions + 64 * v10;
              *(v19 + 3) = *(v12 + 1);
              *(v19 + 4) = v14 + v13;
            }
          }

          else if ((v12[132] & 4) == 0 || self->_targetProcessHasObjCPatches && [v12 dirtyLength])
          {
            v17 = self->_regions + 64 * v10;
            *(v17 + 3) = v13;
            *(v17 + 4) = v14 + v13;
          }

          else
          {
            v20 = self->_regions + 64 * v10;
            *(v20 + 3) = 0;
            *(v20 + 4) = 0;
          }

          if ([v12 isActivityTracing])
          {
            *(&self->_regions->var5 + 8 * v10) = *(&self->_regions->var4 + 8 * v10) + 4096;
          }

          if ((v12[132] & 2) != 0 && (v12[132] & 4) == 0 && ([v12 protection] & 1) != 0 && (objc_msgSend(v12, "protection") & 4) == 0)
          {
            type = [v12 type];
            v151 = [type isEqualToString:@"__LINKEDIT"];

            if ((v151 & 1) == 0)
            {
              v21 = 168;
              if (v15)
              {
                v21 = 152;
              }

              v22 = (self + v21);
              v23 = *v22;
              if (!*v22)
              {
                *v22 = v13;
                v23 = v13;
              }

              v22[1] = v14 + v13 - v23;
              if (!v15)
              {
                [(VMURangeArray *)self->_dataSegmentsRangeArrayOutsideSharedCache addRange:v13, v14];
              }
            }
          }

          if (*(&self->_regions->var5 + 8 * v10) && v12[49])
          {
            [(VMUTaskMemoryScanner *)self _shortenScannableRangeOfMappedFile:v10];
          }
        }
      }
    }

    v9 = v10 + 1;
  }

  while (v10 + 1 <= v7);
  v158 = 0;
  v159 = &v158;
  v160 = 0x3032000000;
  v161 = __Block_byref_object_copy_;
  v162 = __Block_byref_object_dispose_;
  v163 = objc_opt_new();
  v24 = (LODWORD(self->_regionDescriptionOptions) >> 23) & 1;
  v156[0] = MEMORY[0x1E69E9820];
  v156[1] = 3221225472;
  v156[2] = __54__VMUTaskMemoryScanner_addRootNodesFromTaskWithError___block_invoke;
  v156[3] = &unk_1E82777A8;
  v156[4] = self;
  v156[5] = &v158;
  v157 = v24;
  v25 = [(VMUTaskMemoryScanner *)self _callRemoteMallocEnumerators:6 error:error block:v156];
  if (v25)
  {
    if (!self->_stackRanges)
    {
      v26 = objc_alloc_init(VMURangeArray);
      stackRanges = self->_stackRanges;
      self->_stackRanges = v26;
    }

    regionsCount = self->_regionsCount;
    v155 = v25;
    if (regionsCount)
    {
      regions = self->_regions;
      v30 = regions + 64 * (regionsCount - 1);
    }

    else
    {
      regions = 0;
      v30 = 0;
    }

    if (self->_threadsCount)
    {
      v31 = 0;
      do
      {
        v32 = [(VMUTaskThreadStates *)self->_threadStates stackPointerForThreadNum:v31];
        v33 = v32;
        if (v32)
        {
          regionMap = self->_regionMap;
          var6 = regionMap->var6;
          var7 = regionMap->var7;
          v37 = var7 >= var6;
          v38 = var7 - var6;
          if (v37 && v32 - var6 < v38)
          {
            v39 = v32 >> *MEMORY[0x1E69E9AC0];
            if (v39)
            {
              var3 = regionMap->var3;
              v43 = *var3;
              v41 = var3 + 1;
              v42 = v43;
              v44 = v32 >> *MEMORY[0x1E69E9AC0];
              do
              {
                v45 = v44 & 0x3FFFFFF;
                if (v42 <= v45 || ((*(v41 + (v45 >> 3)) >> (v44 & 7)) & 1) == 0)
                {
                  goto LABEL_84;
                }

                v44 >>= 26;
              }

              while (v44);
            }

            v46 = v39 & 0x7FFFF;
            v47 = regionMap->var8[v39 & 0x7FFFF];
            var4 = regionMap->var4;
            if (v47)
            {
              v49 = var4 + 64 * (v47 - 1);
              if (v32 - *(*v49 + 8) < *(*v49 + 16))
              {
                goto LABEL_60;
              }
            }

            var5 = regionMap->var5;
            if (var5)
            {
              v55 = regionMap->var4;
              do
              {
                v56 = var5 >> 1;
                v49 = v55 + 64 * (var5 >> 1);
                if (*(*v49 + 8) <= v32)
                {
                  if (*(*v49 + 16) + *(*v49 + 8) > v32)
                  {
                    isSpecialPhysFootprintRegion = [*v49 isSpecialPhysFootprintRegion];
                    if (isSpecialPhysFootprintRegion)
                    {
                      v60 = 0;
                    }

                    else
                    {
                      v60 = v49;
                    }

                    if (isSpecialPhysFootprintRegion)
                    {
                      break;
                    }

                    if ((*(*v60 + 132) & 1) == 0)
                    {
                      goto LABEL_99;
                    }

                    v152 = v60;
                    v61 = (v60 + 64);
                    v62 = regionMap->var5 - ((v60 + 64 - regionMap->var4) >> 6);
                    if (!v62)
                    {
                      goto LABEL_96;
                    }

                    while (1)
                    {
                      v63 = v62 >> 1;
                      v64 = &v61[8 * (v62 >> 1)];
                      if (*(*v64 + 1) <= v33)
                      {
                        if (*(*v64 + 2) + *(*v64 + 1) > v33)
                        {
                          if ([*v64 isSpecialPhysFootprintRegion])
                          {
                            v62 = 0;
                          }

                          else
                          {
                            v62 = v64;
                          }

LABEL_96:
                          v60 = v152;
                          if (v62)
                          {
                            v60 = v62;
                          }

                          v49 = v60;
LABEL_99:
                          regionMap->var8[v46] = ((v60 - var4) >> 6) + 1;
LABEL_60:
                          *(v49 + 3) = v33;
                          v50 = *(*v49 + 8);
                          v51 = *(*v49 + 16) + v50;
                          *(v49 + 4) = v51;
                          for (i = (v49 - 64); i >= regions; i -= 64)
                          {
                            if (*(*i + 16) + *(*i + 8) != v50)
                            {
                              break;
                            }

                            if (![*i isStack])
                            {
                              break;
                            }

                            if (!*(*i + 24))
                            {
                              break;
                            }

                            v50 = *(*i + 8);
                            *(i + 24) = 0;
                            *(i + 32) = 0;
                          }

                          v53 = (v49 + 64);
                          if (v49 + 64 <= v30)
                          {
                            do
                            {
                              if (v51 != *(*v53 + 8))
                              {
                                break;
                              }

                              if (![*v53 isStack])
                              {
                                break;
                              }

                              if (!*(*v53 + 24))
                              {
                                break;
                              }

                              v57 = (*v53 + 8);
                              v58 = *v57;
                              *(v53 + 24) = *v57;
                              v51 = v57[1] + v58;
                              *(v53 + 32) = v51;
                              v53 += 64;
                            }

                            while (v53 <= v30);
                          }

                          [(VMURangeArray *)self->_stackRanges addRange:v33, v51 - v33];
                          goto LABEL_84;
                        }

                        v61 = v64 + 8;
                        v63 = --v62 >> 1;
                      }

                      v65 = v62 > 1;
                      v62 = v63;
                      if (!v65)
                      {
                        v62 = 0;
                        goto LABEL_96;
                      }
                    }
                  }

                  v55 = (v49 + 64);
                  v56 = --var5 >> 1;
                }

                v37 = var5 >= 2;
                var5 = v56;
              }

              while (v37);
            }
          }
        }

LABEL_84:
        v31 = (v31 + 1);
      }

      while (v31 < self->_threadsCount);
    }

    mallocZonesBufferAddress = self->_mallocZonesBufferAddress;
    if (mallocZonesBufferAddress)
    {
      v67 = self->_regionMap;
      v68 = (mallocZonesBufferAddress >> *MEMORY[0x1E69E9AC0]) & 0x7FFFF;
      v69 = v67->var8[v68];
      v70 = v67->var4;
      if (!v69 || (v71 = &v70->var0 + 8 * (v69 - 1), v72 = *v71, mallocZonesBufferAddress - *(*v71 + 1) >= *(*v71 + 2)))
      {
        v73 = v67->var5;
        v74 = v67->var4;
        while (1)
        {
          do
          {
            v75 = v73;
            v73 >>= 1;
            v76 = *(&v74->var0 + 8 * v73);
            v77 = v76[1];
          }

          while (v77 > mallocZonesBufferAddress);
          v71 = &v74->var0 + 8 * v73;
          if (v76[2] + v77 > mallocZonesBufferAddress)
          {
            break;
          }

          v74 = (v71 + 8);
          v73 = (v75 - 1) >> 1;
        }

        if ([v76 isSpecialPhysFootprintRegion])
        {
          v78 = 0;
        }

        else
        {
          v78 = v71;
        }

        v72 = *v78;
        if (*(*v78 + 132))
        {
          v79 = v78 + 8;
          v80 = v67->var5 - (((v78 + 8) - v67->var4) >> 6);
          if (v80)
          {
            while (1)
            {
              v81 = v80 >> 1;
              v82 = &v79[8 * (v80 >> 1)];
              if (*(*v82 + 1) <= mallocZonesBufferAddress)
              {
                if (*(*v82 + 2) + *(*v82 + 1) > mallocZonesBufferAddress)
                {
                  if ([*v82 isSpecialPhysFootprintRegion])
                  {
                    v80 = 0;
                  }

                  else
                  {
                    v80 = v82;
                  }

                  break;
                }

                v79 = v82 + 8;
                v81 = --v80 >> 1;
              }

              v65 = v80 > 1;
              v80 = v81;
              if (!v65)
              {
                v80 = 0;
                break;
              }
            }
          }

          if (v80)
          {
            v71 = v80;
          }

          else
          {
            v71 = v78;
          }

          v72 = *v71;
        }

        v67->var8[v68] = ((v71 - v70) >> 6) + 1;
      }

      zonesCount = self->_zonesCount;
      v71[3] = [v72 address];
      v71[4] = ([*v71 address] + 8 * zonesCount);
    }

    if (self->_zonesCount)
    {
      v84 = 1;
      v85 = 8;
      do
      {
        v86 = [*(&self->_zones->var0 + v85) hasPrefix:@"MallocHelperZone_0x"];
        v87 = v86;
        v88 = self->_zonesCount;
        if (v84 >= v88)
        {
          v89 = 1;
        }

        else
        {
          v89 = v86;
        }

        ++v84;
        v85 += 24;
      }

      while ((v89 & 1) == 0);
      if (v88)
      {
        v90 = 0;
        do
        {
          v91 = v159[5];
          v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v90];
          LOBYTE(v91) = [v91 containsObject:v92];

          if ((v91 & 1) == 0)
          {
            v93 = self->_regionMap;
            var0 = self->_zones[v90].var0;
            v95 = (var0 >> *MEMORY[0x1E69E9AC0]) & 0x7FFFF;
            var8 = v93->var8;
            v97 = v93->var8[v95];
            v98 = v93->var4;
            if (!v97 || (v99 = v98 + 64 * (v97 - 1), v100 = *v99, var0 - *(*v99 + 8) >= *(*v99 + 16)))
            {
              v101 = v93->var5;
              v102 = v93->var4;
              while (1)
              {
                do
                {
                  v103 = v101;
                  v101 >>= 1;
                  v104 = *(&v102->var0 + 8 * v101);
                  v105 = v104[1];
                }

                while (v105 > var0);
                v99 = v102 + 64 * v101;
                if (v104[2] + v105 > var0)
                {
                  break;
                }

                v102 = (v99 + 64);
                v101 = (v103 - 1) >> 1;
              }

              if ([v104 isSpecialPhysFootprintRegion])
              {
                v106 = 0;
              }

              else
              {
                v106 = v99;
              }

              v100 = *v106;
              if (*(*v106 + 132))
              {
                v107 = v106 + 8;
                v108 = v93->var5 - (((v106 + 8) - v93->var4) >> 6);
                if (v108)
                {
                  while (1)
                  {
                    v109 = v108 >> 1;
                    v110 = &v107[8 * (v108 >> 1)];
                    if (*(*v110 + 1) <= var0)
                    {
                      if (*(*v110 + 2) + *(*v110 + 1) > var0)
                      {
                        if ([*v110 isSpecialPhysFootprintRegion])
                        {
                          v108 = 0;
                        }

                        else
                        {
                          v108 = v110;
                        }

                        break;
                      }

                      v107 = v110 + 8;
                      v109 = --v108 >> 1;
                    }

                    v65 = v108 > 1;
                    v108 = v109;
                    if (!v65)
                    {
                      v108 = 0;
                      break;
                    }
                  }
                }

                if (v108)
                {
                  v99 = v108;
                }

                else
                {
                  v99 = v106;
                }

                v100 = *v99;
              }

              var8[v95] = ((v99 - v98) >> 6) + 1;
            }

            if ([v100 protection])
            {
              zones = self->_zones;
              v112 = zones[v90].var0;
              v113 = (v112 + *MEMORY[0x1E69E9AC8] + 199) & -*MEMORY[0x1E69E9AC8];
              *(v99 + 24) = v112;
              *(v99 + 32) = v113;
              if (v87)
              {
                if ([zones[v90].var1 hasPrefix:@"DefaultMallocZone_0x"])
                {
                  v114 = *(v99 + 64);
                  if (*(*v99 + 16) + *(*v99 + 8) == v114[1] && [v114 protection] == 3)
                  {
                    type2 = [*(v99 + 64) type];
                    v116 = [type2 isEqualToString:@"MALLOC metadata"];

                    if (v116)
                    {
                      v117 = (*(v99 + 64) + 8);
                      v118 = *v117;
                      *(v99 + 88) = *v117;
                      *(v99 + 96) = v117[1] + v118;
                    }
                  }
                }
              }
            }
          }

          ++v90;
        }

        while (v90 < self->_zonesCount);
      }
    }

    if (s_enumeratorDebugging)
    {
      fwrite("Region state after claims:\n", 0x1BuLL, 1uLL, *MEMORY[0x1E69E9848]);
      if (!self->_regionsCount)
      {
LABEL_184:
        v25 = v155;
        if ([(VMUTaskMemoryScanner *)self objectContentLevel]== 2)
        {
          _readonlyRegionRanges = [(VMUTaskMemoryScanner *)self _readonlyRegionRanges];
          [(VMUObjectIdentifier *)self->_objectIdentifier setReadonlyRegionRanges:_readonlyRegionRanges];
        }

        goto LABEL_186;
      }

      v135 = 0;
      v136 = 0;
      do
      {
        v153 = *MEMORY[0x1E69E9848];
        address = [*(&self->_regions->var0 + v135) address];
        v137 = *(&self->_regions->var0 + v135);
        v138 = *(v137 + 8);
        v139 = *(v137 + 16);
        v140 = *(v137 + 24);
        v149 = vm_prot_strings[v140];
        v141 = VMUExclaveOrDarwinRegionTypeDescriptionForTagShareProtAndPager(*(v137 + 232), *(v137 + 104), *(v137 + 50), v140, *(v137 + 49));
        uTF8String = [v141 UTF8String];
        v143 = (&self->_regions->var0 + v135);
        v144 = *(*v143 + 16) >> *MEMORY[0x1E69E9AC0];
        if (v144 == 1)
        {
          v145 = "page";
        }

        else
        {
          v145 = "pages";
        }

        uTF8String2 = "";
        if (v143[3] == v143[4])
        {
          v147 = "";
        }

        else
        {
          v147 = " [root]";
        }

        v148 = *(*v143 + 148);
        if (v148 < self->_zonesCount)
        {
          uTF8String2 = [self->_zones[v148].var1 UTF8String];
        }

        fprintf(v153, "region: [%#llx-%#llx] %s %s (%llu %s)%s  %s\n", address, v139 + v138, v149, uTF8String, v144, v145, v147, uTF8String2);

        ++v136;
        v119 = self->_regionsCount;
        v135 += 64;
      }

      while (v136 < v119);
    }

    else
    {
      v119 = self->_regionsCount;
    }

    if (v119)
    {
      for (j = 0; j < v119; ++j)
      {
        v121 = self->_regions;
        if (*(&v121->var4 + 8 * j) < *(&v121->var5 + 8 * j))
        {
          blocksCount = self->_blocksCount;
          blocksSize = self->_blocksSize;
          if (blocksSize <= blocksCount)
          {
            if ((2 * blocksSize) <= 0x40000)
            {
              v124 = 0x40000;
            }

            else
            {
              v124 = 2 * blocksSize;
            }

            do
            {
              v125 = v124;
              v124 *= 2;
            }

            while (v125 < blocksCount);
            self->_blocksSize = v125;
            v126 = malloc_type_realloc(self->_blocks, 16 * v125, 0x1000040451B5BE8uLL);
            self->_blocks = v126;
            if (!v126)
            {
              NSLog(&cfstr_OutOfMemoryFai.isa, "_blocks", blocksSize, self->_blocksSize);
              abort();
            }

            v121 = self->_regions;
          }

          v127 = *(&v121->var0 + 8 * j);
          if ([v127 isRootRegion])
          {
            v128 = 2;
          }

          else
          {
            v128 = 5;
          }

          v129 = &self->_blocks[self->_blocksCount];
          v130 = self->_regions + 64 * j;
          v131 = *(v130 + 3);
          v132 = v128 & 0xFFFFFFE00000001FLL | (32 * (*(v130 + 8) - v131)) | (j << 41);
          v129->var0 = v131;
          *(v129 + 1) = v132;
          ++self->_blocksCount;

          v119 = self->_regionsCount;
        }
      }
    }

    goto LABEL_184;
  }

LABEL_186:
  _Block_object_dispose(&v158, 8);

  return v25;
}

void __54__VMUTaskMemoryScanner_addRootNodesFromTaskWithError___block_invoke(uint64_t a1, unsigned int a2, int a3, uint64_t a4, unsigned int a5)
{
  if (a5)
  {
    v6 = 0;
    v97 = a5;
    do
    {
      v7 = (a4 + 16 * v6);
      v8 = v7[1];
      if (v8)
      {
        v9 = *v7;
        v10 = *(a1 + 32);
        if (a3 == 2 && *(v10 + 216))
        {
          v11 = 0;
          v12 = 0;
          do
          {
            if (*(*(v10 + 208) + v11) - v9 < v8)
            {
              v13 = *(*(*(a1 + 40) + 8) + 40);
              v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
              [v13 addObject:v14];

              v10 = *(a1 + 32);
            }

            ++v12;
            v11 += 24;
          }

          while (v12 < *(v10 + 216));
          v9 = *v7;
        }

        v15 = *(v10 + 112);
        v16 = *(v15 + 48);
        v17 = *(v15 + 56);
        v18 = v17 >= v16;
        v19 = v17 - v16;
        if (v18 && v9 - v16 < v19)
        {
          v20 = v9 >> *MEMORY[0x1E69E9AC0];
          if (v20)
          {
            v21 = *(v15 + 24);
            v24 = *v21;
            v22 = v21 + 1;
            v23 = v24;
            v25 = v9 >> *MEMORY[0x1E69E9AC0];
            do
            {
              v26 = v25 & 0x3FFFFFF;
              if (v23 <= v26 || ((*(v22 + (v26 >> 3)) >> (v25 & 7)) & 1) == 0)
              {
                goto LABEL_80;
              }

              v25 >>= 26;
            }

            while (v25);
          }

          v27 = v20 & 0x7FFFF;
          v28 = v15 + 64;
          v29 = *(v15 + 64 + 4 * (v20 & 0x7FFFF));
          v30 = *(v15 + 32);
          if (v29)
          {
            v31 = v30 + ((v29 - 1) << 6);
            if (v9 - *(*v31 + 8) < *(*v31 + 16))
            {
              goto LABEL_21;
            }
          }

          v76 = *(v15 + 40);
          if (v76)
          {
            v77 = *(v15 + 32);
            do
            {
              v78 = v76 >> 1;
              v31 = v77 + (v76 >> 1 << 6);
              if (*(*v31 + 8) <= v9)
              {
                if (*(*v31 + 16) + *(*v31 + 8) > v9)
                {
                  v79 = [*v31 isSpecialPhysFootprintRegion];
                  if (v79)
                  {
                    v80 = 0;
                  }

                  else
                  {
                    v80 = v31;
                  }

                  if ((v79 & 1) == 0)
                  {
                    if ((*(*v80 + 132) & 1) == 0)
                    {
                      goto LABEL_95;
                    }

                    v81 = v80 + 8;
                    v82 = *(v15 + 40) - ((v80 - *(v15 + 32) + 64) >> 6);
                    if (!v82)
                    {
                      goto LABEL_92;
                    }

                    while (1)
                    {
                      v83 = v82 >> 1;
                      v84 = &v81[8 * (v82 >> 1)];
                      if (*(*v84 + 1) <= v9)
                      {
                        if (*(*v84 + 2) + *(*v84 + 1) > v9)
                        {
                          v85 = v80;
                          v86 = [*v84 isSpecialPhysFootprintRegion];
                          v80 = v85;
                          if (v86)
                          {
                            v82 = 0;
                          }

                          else
                          {
                            v82 = v84;
                          }

LABEL_92:
                          if (v82)
                          {
                            v31 = v82;
                          }

                          else
                          {
                            v31 = v80;
                          }

LABEL_95:
                          *(v28 + 4 * v27) = ((v31 - v30) >> 6) + 1;
LABEL_21:
                          v32 = v7[1] + *v7;
LABEL_22:
                          while (2)
                          {
                            v33 = *v31;
                            if (v32 <= *(*v31 + 8))
                            {
                              goto LABEL_80;
                            }

                            *(v33 + 37) = a2;
                            if (![*(v33 + 5) length])
                            {
                              v34 = [*(*(a1 + 32) + 144) objectAtIndexedSubscript:a2];
                              v35 = *(*v31 + 40);
                              *(*v31 + 40) = v34;

                              if (*(a1 + 48) == 1)
                              {
                                v36 = [*v31 description];
                                printf("Setting region name in %s based on _zoneNames[zone_index] for  %s\n", "-[VMUTaskMemoryScanner addRootNodesFromTaskWithError:]_block_invoke", [v36 UTF8String]);
                              }
                            }

                            v37 = *v31;
                            *(*v31 + 144) |= a3;
                            *(v31 + 24) = 0;
                            *(v31 + 32) = 0;
                            if (s_enumeratorDebugging == 1)
                            {
                              v69 = MEMORY[0x1E69E9848];
                              fprintf(*MEMORY[0x1E69E9848], "zone %s ", [*(*(*(a1 + 32) + 208) + 24 * a2 + 8) UTF8String]);
                              v93 = *v69;
                              v91 = [*v31 address];
                              v90 = *(*v31 + 16) + *(*v31 + 8);
                              v70 = *(*v31 + 24);
                              v89 = vm_prot_strings[v70];
                              v71 = VMUExclaveOrDarwinRegionTypeDescriptionForTagShareProtAndPager(*(*v31 + 232), *(*v31 + 104), *(*v31 + 50), v70, *(*v31 + 49));
                              v88 = [v71 UTF8String];
                              v72 = *(*v31 + 16) >> *MEMORY[0x1E69E9AC0];
                              v73 = "pages";
                              if (v72 == 1)
                              {
                                v73 = "page";
                              }

                              v87 = v73;
                              if (*(v31 + 24) == *(v31 + 32))
                              {
                                v74 = "";
                              }

                              else
                              {
                                v74 = " [root]";
                              }

                              v75 = VMUMallocRangeTypeString(a3);
                              fprintf(v93, "claimed region: [%#llx-%#llx] %s %s (%llu %s)%s - type '%s' range: [%#lx-%#lx]\n", v91, v90, v89, v88, v72, v87, v74, v75, *v7, v7[1] + *v7);

                              v37 = *v31;
                            }

                            v38 = (v37 + 8);
                            v40 = *v38;
                            v39 = v38[1];
                            if (v32 <= v39 + v40)
                            {
                              goto LABEL_80;
                            }

                            v41 = *(*(a1 + 32) + 112);
                            v42 = *(v41 + 48);
                            v43 = *(v41 + 56);
                            v18 = v43 >= v42;
                            v44 = v43 - v42;
                            if (!v18)
                            {
                              goto LABEL_80;
                            }

                            v9 += v39;
                            if (v9 - v42 >= v44)
                            {
                              goto LABEL_80;
                            }

                            v45 = v9 >> *MEMORY[0x1E69E9AC0];
                            if (v45)
                            {
                              v46 = *(v41 + 24);
                              v49 = *v46;
                              v47 = v46 + 1;
                              v48 = v49;
                              v50 = v9 >> *MEMORY[0x1E69E9AC0];
                              do
                              {
                                v51 = v50 & 0x3FFFFFF;
                                if (v48 <= v51 || ((*(v47 + (v51 >> 3)) >> (v50 & 7)) & 1) == 0)
                                {
                                  goto LABEL_80;
                                }

                                v50 >>= 26;
                              }

                              while (v50);
                            }

                            v52 = v45 & 0x7FFFF;
                            v53 = v41 + 64;
                            v54 = *(v41 + 64 + 4 * (v45 & 0x7FFFF));
                            v55 = *(v41 + 32);
                            if (v54)
                            {
                              v31 = v55 + ((v54 - 1) << 6);
                              if (v9 - *(*v31 + 8) < *(*v31 + 16))
                              {
                                continue;
                              }
                            }

                            break;
                          }

                          v56 = *(v41 + 40);
                          if (!v56)
                          {
                            goto LABEL_80;
                          }

                          v57 = *(v41 + 32);
                          while (1)
                          {
                            v58 = v56 >> 1;
                            v31 = v57 + (v56 >> 1 << 6);
                            if (*(*v31 + 8) <= v9)
                            {
                              if (*(*v31 + 16) + *(*v31 + 8) > v9)
                              {
                                v92 = v52;
                                v59 = [*v31 isSpecialPhysFootprintRegion];
                                v60 = v92;
                                if (v59)
                                {
                                  v61 = 0;
                                }

                                else
                                {
                                  v61 = v31;
                                }

                                if (v59)
                                {
                                  goto LABEL_80;
                                }

                                if ((*(*v61 + 132) & 1) == 0)
                                {
                                  goto LABEL_62;
                                }

                                v62 = v61 + 8;
                                v63 = *(v41 + 40) - ((v61 - *(v41 + 32) + 64) >> 6);
                                if (!v63)
                                {
                                  goto LABEL_59;
                                }

                                while (2)
                                {
                                  v64 = v63 >> 1;
                                  v65 = &v62[8 * (v63 >> 1)];
                                  if (*(*v65 + 1) > v9)
                                  {
LABEL_54:
                                    v66 = v63 > 1;
                                    v63 = v64;
                                    if (!v66)
                                    {
                                      v63 = 0;
                                      goto LABEL_59;
                                    }

                                    continue;
                                  }

                                  break;
                                }

                                if (*(*v65 + 2) + *(*v65 + 1) <= v9)
                                {
                                  v62 = v65 + 8;
                                  v64 = --v63 >> 1;
                                  goto LABEL_54;
                                }

                                v67 = v61;
                                v68 = [*v65 isSpecialPhysFootprintRegion];
                                v61 = v67;
                                v60 = v92;
                                if (v68)
                                {
                                  v63 = 0;
                                }

                                else
                                {
                                  v63 = v65;
                                }

LABEL_59:
                                if (v63)
                                {
                                  v31 = v63;
                                }

                                else
                                {
                                  v31 = v61;
                                }

LABEL_62:
                                *(v53 + 4 * v60) = ((v31 - v55) >> 6) + 1;
                                goto LABEL_22;
                              }

                              v57 = v31 + 64;
                              v58 = --v56 >> 1;
                            }

                            v18 = v56 >= 2;
                            v56 = v58;
                            if (!v18)
                            {
                              goto LABEL_80;
                            }
                          }
                        }

                        v81 = v84 + 8;
                        v83 = --v82 >> 1;
                      }

                      v66 = v82 > 1;
                      v82 = v83;
                      if (!v66)
                      {
                        v82 = 0;
                        goto LABEL_92;
                      }
                    }
                  }

                  break;
                }

                v77 = v31 + 64;
                v78 = --v76 >> 1;
              }

              v18 = v76 >= 2;
              v76 = v78;
            }

            while (v18);
          }
        }
      }

LABEL_80:
      ++v6;
    }

    while (v6 != v97);
  }
}

- (id)_readonlyRegionRanges
{
  v3 = objc_alloc_init(VMUNonOverlappingRangeArray);
  if (self->_regionsCount)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&self->_regions->var0 + v4);
      if (([v6 protection] & 1) != 0 && (objc_msgSend(v6, "isSubmap") & 1) == 0 && (objc_msgSend(v6, "protection") & 2) == 0 && (-[VMUTask rangeIsInSharedCache:](self->_task, "rangeIsInSharedCache:", v6[1], v6[2]) || (*(v6 + 132) & 2) != 0))
      {
        [(VMUNonOverlappingRangeArray *)v3 addOrExtendRange:v6[1], v6[2]];
      }

      ++v5;
      v4 += 64;
    }

    while (v5 < self->_regionsCount);
  }

  return v3;
}

- (void)setObjectContentLevel:(unsigned int)level
{
  [(VMUObjectIdentifier *)self->_objectIdentifier setObjectContentLevel:?];
  if (level == 2 && self->_regionsCount && self->_objectIdentifier)
  {
    _readonlyRegionRanges = [(VMUTaskMemoryScanner *)self _readonlyRegionRanges];
    [(VMUObjectIdentifier *)self->_objectIdentifier setReadonlyRegionRanges:_readonlyRegionRanges];
  }
}

uint64_t __35__VMUTaskMemoryScanner__sortBlocks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 != *a3;
  }
}

- (BOOL)addMallocNodesFromTaskWithError:(id *)error
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__VMUTaskMemoryScanner_addMallocNodesFromTaskWithError___block_invoke;
  v6[3] = &unk_1E82777F0;
  v6[4] = self;
  v4 = [(VMUTaskMemoryScanner *)self _callRemoteMallocEnumerators:1 error:error block:v6];
  if (v4)
  {
    [(VMUTaskMemoryScanner *)self _sortAndClassifyBlocks];
  }

  return v4;
}

void __56__VMUTaskMemoryScanner_addMallocNodesFromTaskWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v75 = *MEMORY[0x1E69E9840];
  v7 = a1 + 32;
  v6 = *(a1 + 32);
  v8 = *(v6 + 92);
  if (v8 <= a5 - 1 + *(v6 + 88))
  {
    v9 = 2 * v8;
    if ((2 * v8) <= 0x40000)
    {
      v9 = 0x40000;
    }

    *(v6 + 92) = v9;
    while (1)
    {
      v10 = *(*v7 + 92);
      if (v10 >= a5 - 1 + *(*v7 + 88))
      {
        break;
      }

      *(*v7 + 92) = 2 * v10;
    }

    *(*v7 + 80) = malloc_type_realloc(*(*v7 + 80), 16 * *(*v7 + 92), 0x1000040451B5BE8uLL);
    if (!*(*v7 + 80))
    {
      NSLog(&cfstr_OutOfMemoryFai.isa, "_blocks", v8, *(*v7 + 92));
      abort();
    }
  }

  if (!a5)
  {
    goto LABEL_59;
  }

  v11 = 0;
  do
  {
    v12 = *(*v7 + 112);
    v13 = (a4 + 16 * v11);
    v14 = *(v12 + 48);
    v15 = *(v12 + 56);
    v16 = v15 >= v14;
    v17 = v15 - v14;
    if (!v16)
    {
      goto LABEL_41;
    }

    v18 = *v13;
    if (*v13 - v14 >= v17)
    {
      goto LABEL_41;
    }

    v19 = v18 >> *MEMORY[0x1E69E9AC0];
    if (v19)
    {
      v20 = *(v12 + 24);
      v23 = *v20;
      v21 = v20 + 1;
      v22 = v23;
      v24 = v18 >> *MEMORY[0x1E69E9AC0];
      do
      {
        v25 = v24 & 0x3FFFFFF;
        if (v22 <= v25 || ((*(v21 + (v25 >> 3)) >> (v24 & 7)) & 1) == 0)
        {
          goto LABEL_41;
        }

        v24 >>= 26;
      }

      while (v24);
    }

    v26 = v19 & 0x7FFFF;
    v27 = v12 + 64;
    v28 = *(v12 + 64 + 4 * (v19 & 0x7FFFF));
    v29 = *(v12 + 32);
    if (v28)
    {
      v30 = (v29 + ((v28 - 1) << 6));
      if (v18 - *(*v30 + 1) < *(*v30 + 2))
      {
        goto LABEL_20;
      }
    }

    v42 = *(v12 + 40);
    if (!v42)
    {
      goto LABEL_41;
    }

    v43 = *(v12 + 32);
    while (1)
    {
      v44 = v42 >> 1;
      v30 = &v43[8 * (v42 >> 1)];
      if (*(*v30 + 1) <= v18)
      {
        break;
      }

LABEL_35:
      v16 = v42 >= 2;
      v42 = v44;
      if (!v16)
      {
        goto LABEL_41;
      }
    }

    if (*(*v30 + 2) + *(*v30 + 1) <= v18)
    {
      v43 = v30 + 8;
      v44 = --v42 >> 1;
      goto LABEL_35;
    }

    v45 = [*v30 isSpecialPhysFootprintRegion];
    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v46 = v30;
    }

    if (v45)
    {
LABEL_41:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v47 = [*(*(*v7 + 208) + 24 * a2 + 8) UTF8String];
        v48 = VMUMallocRangeTypeString(1);
        v49 = *v13;
        v50 = v13[1];
        *buf = 136315906;
        v62 = v47;
        v63 = 2080;
        v64 = v48;
        v65 = 2048;
        v66 = v49;
        v67 = 2048;
        v68 = v50;
        _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "error: zone enumerator for %s reported '%s' %#llx (%llu bytes), in non-existent region, ignoring block.", buf, 0x2Au);
      }

      goto LABEL_43;
    }

    if ((*(*v46 + 132) & 1) == 0)
    {
      goto LABEL_58;
    }

    v51 = v46 + 8;
    v52 = *(v12 + 40) - ((v46 - *(v12 + 32) + 64) >> 6);
    if (!v52)
    {
      goto LABEL_55;
    }

    while (2)
    {
      v53 = v52 >> 1;
      v54 = &v51[8 * (v52 >> 1)];
      if (*(*v54 + 1) > v18)
      {
LABEL_50:
        v55 = v52 > 1;
        v52 = v53;
        if (!v55)
        {
          v52 = 0;
          goto LABEL_55;
        }

        continue;
      }

      break;
    }

    if (*(*v54 + 2) + *(*v54 + 1) <= v18)
    {
      v51 = v54 + 8;
      v53 = --v52 >> 1;
      goto LABEL_50;
    }

    v56 = v46;
    v57 = [*v54 isSpecialPhysFootprintRegion];
    v46 = v56;
    if (v57)
    {
      v52 = 0;
    }

    else
    {
      v52 = v54;
    }

LABEL_55:
    if (v52)
    {
      v46 = v52;
    }

    v30 = v46;
LABEL_58:
    *(v27 + 4 * v26) = ((v46 - v29) >> 6) + 1;
LABEL_20:
    if (*(*v30 + 37) != a2)
    {
      if (s_enumeratorDebugging == 1)
      {
        __56__VMUTaskMemoryScanner_addMallocNodesFromTaskWithError___block_invoke_cold_1(v7, a2, v13, v30);
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v31 = [*(*(*v7 + 208) + 24 * a2 + 8) UTF8String];
        v32 = VMUMallocRangeTypeString(1);
        v34 = *v13;
        v33 = v13[1];
        v35 = *v30;
        v36 = *(*v30 + 1);
        v37 = *(*v30 + 2);
        v38 = v35[37];
        v39 = "<unclaimed>";
        if (v38 < *(*v7 + 216))
        {
          v39 = [*(*(*v7 + 208) + 24 * v38 + 8) UTF8String];
        }

        *buf = 136316674;
        v62 = v31;
        v63 = 2080;
        v64 = v32;
        v65 = 2048;
        v66 = v34;
        v67 = 2048;
        v68 = v33;
        v69 = 2048;
        v70 = v36;
        v71 = 2048;
        v72 = v37 + v36;
        v73 = 2080;
        v74 = v39;
        _os_log_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "warning: zone enumerator for %s reported '%s' %#llx (%llu bytes) in region: [%#llx-%#llx] %s", buf, 0x48u);
      }
    }

    v40 = (*(*v7 + 80) + 16 * *(*v7 + 88));
    v41 = v13[1];
    if (v41 >= 0xFFFFFFFFFLL)
    {
      v41 = 0xFFFFFFFFFLL;
    }

    *v40 = *v13;
    v40[1] = (a2 << 41) | (32 * v41) | 9;
    ++*(*v7 + 88);
LABEL_43:
    ++v11;
  }

  while (v11 != a5);
LABEL_59:
  v58 = *MEMORY[0x1E69E9840];
}

- (void)addMallocNodes:(id)nodes
{
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    blocksSize = self->_blocksSize;
    v5 = nodesCopy;
    v6 = nodesCopy[2];
    v7 = self->_blocksCount - 1;
    if (blocksSize <= v7 + v6)
    {
      if ((2 * blocksSize) <= 0x40000)
      {
        v8 = 0x40000;
      }

      else
      {
        v8 = 2 * blocksSize;
      }

      do
      {
        v9 = v8;
        self->_blocksSize = v8;
        v8 *= 2;
      }

      while (v9 < v7 + nodesCopy[2]);
      v10 = malloc_type_realloc(self->_blocks, 16 * v9, 0x1000040451B5BE8uLL);
      self->_blocks = v10;
      if (!v10)
      {
        NSLog(&cfstr_OutOfMemoryFai.isa, "_blocks", blocksSize, self->_blocksSize);
        abort();
      }

      v5 = nodesCopy;
      v6 = nodesCopy[2];
    }

    if (v6)
    {
      v11 = 0;
      v12 = 0;
      blocksCount = self->_blocksCount;
      do
      {
        v14 = (*(v5 + 2) + v11);
        v16 = *v14;
        v15 = v14[1];
        v17 = &self->_blocks[blocksCount];
        if (v15 >= 0xFFFFFFFFFLL)
        {
          v15 = 0xFFFFFFFFFLL;
        }

        v17->var0 = v16;
        *(v17 + 1) = (32 * v15) | 1;
        blocksCount = self->_blocksCount + 1;
        self->_blocksCount = blocksCount;
        ++v12;
        v11 += 16;
      }

      while (v12 < v5[2]);
    }

    [(VMUTaskMemoryScanner *)self _sortAndClassifyBlocks];
  }
}

- (BOOL)addAllNodesFromTaskWithError:(id *)error
{
  v5 = [(VMUTaskMemoryScanner *)self addRootNodesFromTaskWithError:?];
  if (v5)
  {

    LOBYTE(v5) = [(VMUTaskMemoryScanner *)self addMallocNodesFromTaskWithError:error];
  }

  return v5;
}

- (void)_sortAndClassifyBlocks
{
  [(VMUTaskMemoryScanner *)self _sortBlocks];
  [(VMUTaskMemoryScanner *)self _buildRegionFirstBlockIndexOnPageArrays];
  [(VMUTaskMemoryScanner *)self _fixupBlockIsas];
  [(VMUTaskMemoryScanner *)self _findMarkedAbandonedBlocks];
  if ((self->_regionDescriptionOptions & 0x200000) == 0)
  {

    [(VMUTaskMemoryScanner *)self unmapAllRegions];
  }
}

- (void)setClassStructureFieldScanValueAtSourceAddress:(void *)address toCorrectedAddress:(void *)correctedAddress
{
  classStructureAddressToDestinationMapTable = self->_classStructureAddressToDestinationMapTable;
  if (!classStructureAddressToDestinationMapTable)
  {
    v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:1282];
    v9 = self->_classStructureAddressToDestinationMapTable;
    self->_classStructureAddressToDestinationMapTable = v8;

    classStructureAddressToDestinationMapTable = self->_classStructureAddressToDestinationMapTable;
  }

  NSMapInsert(classStructureAddressToDestinationMapTable, address, correctedAddress);
}

- (void)_identifyObjCClassStructureBlocks
{
  objCclassCount = [(VMUObjectIdentifier *)self->_objectIdentifier ObjCclassCount];
  if (objCclassCount + [(VMUObjectIdentifier *)self->_objectIdentifier SwiftClassCount])
  {
    [(VMUObjectIdentifier *)self->_objectIdentifier _generateClassInfosForObjCClassStructurePointerTypes];
    self->_objcClassStructureClassInfoIndex = [(VMUObjectIdentifier *)self->_objectIdentifier classInfoIndexForObjCClassStructurePointerType:0];
    self->_classDataMethodsClassInfoIndex = [(VMUObjectIdentifier *)self->_objectIdentifier classInfoIndexForObjCClassStructurePointerType:6];
    self->_swiftClassStructureClassInfoIndex = [(VMUObjectIdentifier *)self->_objectIdentifier classInfoIndexForObjCClassStructurePointerType:1];
    self->_swiftMetadataClassInfoIndex = [(VMUObjectIdentifier *)self->_objectIdentifier classInfoIndexForObjCClassStructurePointerType:12];
    v4 = objc_opt_new();
    addressToRuntimeMetadataChunkInfoDict = self->_addressToRuntimeMetadataChunkInfoDict;
    self->_addressToRuntimeMetadataChunkInfoDict = v4;

    objectIdentifier = self->_objectIdentifier;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__VMUTaskMemoryScanner__identifyObjCClassStructureBlocks__block_invoke;
    v7[3] = &unk_1E8277840;
    v7[4] = self;
    [(VMUObjectIdentifier *)objectIdentifier enumerateRealizedClassInfosWithBlock:v7];
  }

  else
  {
    *&self->_objcClassStructureClassInfoIndex = -1;
    *&self->_swiftClassStructureClassInfoIndex = -1;
  }
}

void __57__VMUTaskMemoryScanner__identifyObjCClassStructureBlocks__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__VMUTaskMemoryScanner__identifyObjCClassStructureBlocks__block_invoke_2;
  v7[3] = &unk_1E8277818;
  v7[4] = v5;
  v8 = v4;
  v6 = v4;
  [v6 identifyObjCClassStructureBlocksWithScanner:v5 addressIdentifierBlock:v7];
}

uint64_t __57__VMUTaskMemoryScanner__identifyObjCClassStructureBlocks__block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (!a2 || ([*(*(a1 + 32) + 8) addressIsInSharedCache:a2] & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = [*(a1 + 32) nodeForAddress:a2];
  v9 = v8;
  if (v8 == -1)
  {
    return v9;
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 80);
  v12 = *(v11 + 16 * v8 + 8);
  if ((v12 & 7) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v10 + 193) == 1)
  {
    if (*(v11 + 16 * v8) + 16 < a2 || ((v13 = *(&VMUObjCClassStructureTypeInfoArray + 6 * a3 + 4), v14 = (v12 >> 5) & 0xFFFFFFFFFLL, v13) ? (v15 = v14 > v13) : (v15 = 0), v15))
    {
      v16 = objc_opt_new();
      *(v16 + 8) = a4;
      *(v16 + 12) = a3;
      objc_storeStrong((v16 + 16), *(a1 + 40));
      v17 = *(*(a1 + 32) + 200);
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
      [v17 setObject:v16 forKeyedSubscript:v18];
    }
  }

  v19 = [*(a1 + 40) infoType];
  v20 = *(a1 + 32);
  if (v19 == 8 && (v21 = (*(v20 + 80) + 16 * v9), *v21 + 16 < a2))
  {
    v21[1] = v21[1] & 0x1FFFFFFFFFFLL | (*(v20 + 356) << 41);
    v22 = *(a1 + 32);
    v23 = *(v22 + 364);
    if (v23 >= v9)
    {
      v23 = v9;
    }

    *(v22 + 364) = v23;
    v24 = *(a1 + 32);
    if (!*(v24 + 364))
    {
      *(v24 + 364) = v9;
      v24 = *(a1 + 32);
    }

    v25 = *(v24 + 368);
    if (v25 <= v9)
    {
      v25 = v9;
    }

    *(v24 + 368) = v25;
  }

  else
  {
    v27 = [*(v20 + 64) classInfoIndexForObjCClassStructurePointerType:a3];
    v28 = *(*(a1 + 32) + 80) + 16 * v9;
    *(v28 + 8) = *(v28 + 8) & 0x1FFFFFFFFFFLL | (v27 << 41);
  }

  return v9;
}

- (void)printRuntimeMetadataInfo
{
  v32 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__VMUTaskMemoryScanner_printRuntimeMetadataInfo__block_invoke;
  aBlock[3] = &unk_1E8277868;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  allKeys = [(NSMutableDictionary *)self->_addressToRuntimeMetadataChunkInfoDict allKeys];
  v5 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v27;
    v24 = v3;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_addressToRuntimeMetadataChunkInfoDict objectForKeyedSubscript:v13];
        unsignedLongLongValue = [v13 unsignedLongLongValue];
        v16 = &self->_blocks[v10];
        if (unsignedLongLongValue >= ((*(v16 + 1) >> 5) & 0xFFFFFFFFFLL) + v16->var0)
        {
          v20 = [(VMUTaskMemoryScanner *)self nodeForAddress:unsignedLongLongValue];
          v21 = v14;

          v8 = v21;
          v10 = v20;
          v9 = unsignedLongLongValue;
        }

        else
        {
          if (v9)
          {
            v17 = v11;
            if ([v14[2] infoType] == 8)
            {
              v18 = "Swift Metadata";
            }

            else
            {
              v18 = "Metadata";
            }

            putchar(10);
            v19 = &self->_blocks[v10];
            v23 = v18;
            v11 = v17;
            v3 = v24;
            printf("%s %#llx-%#llx[%llu]\n", v23, v19->var0, ((*(v19 + 1) >> 5) & 0xFFFFFFFFFLL) + v19->var0, (*(v19 + 1) >> 5) & 0xFFFFFFFFFLL);
            (*(v3 + 2))(v3, v10, v9, v8);

            v8 = 0;
          }

          (*(v3 + 2))(v3, v10, unsignedLongLongValue, v14);
          v9 = 0;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __48__VMUTaskMemoryScanner_printRuntimeMetadataInfo__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = &VMUObjCClassStructureTypeInfoArray + 24 * a4[3];
  v9 = *(v8 + 4);
  strchr(*(v8 + 1), 40);
  v10 = a4;
  __strcpy_chk();
  *strchr(__s, 41) = 0;
  v11 = a3 - *(*(*(a1 + 32) + 80) + 16 * a2);
  if (*(v10 + 8))
  {
    v12 = "metaclass";
  }

  else
  {
    v12 = "class";
  }

  v13 = *(v10 + 2);

  v14 = [v13 className];
  printf("    +%5llu %#llx[%u]  %-13s  %s %s\n", v11, a3, v9, __s, v12, [v14 UTF8String]);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_findSwiftClassesInExclaveCore
{
  if (self->_blocksCount)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      blocks = self->_blocks;
      if ((*(&blocks[v3] + 1) & 0xFFFFFE0000000007) == 1)
      {
        swiftMirror = [(VMUObjectIdentifier *)self->_objectIdentifier swiftMirror];
        var0 = blocks[v3].var0;
        if (vmu_swift_reflection_ownsObject(swiftMirror->var0))
        {
          v8 = vmu_swift_reflection_metadataForObject(*[(VMUObjectIdentifier *)self->_objectIdentifier swiftMirror], blocks[v3].var0);
          if (v8)
          {
            v9 = v8;
            v10 = [(VMUClassInfoMap *)self->_classInfoIndexer classInfoForAddress:v8];

            if (!v10)
            {
              v16[0] = 0;
              v16[1] = 0;
              v17 = 0;
              vmu_swift_reflection_infoForInstance(*[(VMUObjectIdentifier *)self->_objectIdentifier swiftMirror], blocks[v3].var0, v16);
              if (LODWORD(v16[0]) == 17)
              {
                v11 = [VMUMutableClassInfo alloc];
                classInfoIndexer = self->_classInfoIndexer;
                objectIdentifier = self->_objectIdentifier;
                memoryReader = [(VMUObjectIdentifier *)objectIdentifier memoryReader];
                v15 = [(VMUClassInfo *)v11 initWithClass:v9 type:8 infoMap:classInfoIndexer objectIdentifier:objectIdentifier reader:memoryReader];

                [(VMUTaskMemoryScanner *)self applyTypeOverlayToMutableInfo:v15];
              }
            }
          }
        }
      }

      ++v4;
      ++v3;
    }

    while (v4 < self->_blocksCount);
  }
}

- (void)_fixupBlockIsas
{
  if ([(VMUTask *)self->_task isExclaveCore])
  {
    [(VMUTaskMemoryScanner *)self _findSwiftClassesInExclaveCore];
    [(VMUTaskMemoryScanner *)self _updateLinearClassInfos];
  }

  if (self->_blocksCount)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    regionDescriptionOptions = self->_regionDescriptionOptions;
    LODWORD(v7) = -1;
    do
    {
      blocks = self->_blocks;
      v9 = *(&blocks[v3] + 1);
      if ((v9 & 7) == 1)
      {
        var0 = blocks[v3].var0;
        if (var0 >= v6)
        {
          v11 = v7 + 1;
          v12 = (v7 << 6) + 64;
          do
          {
            v13 = v4;
            v4 = *(&self->_regions->var0 + v12);

            if (v11 >= self->_regionsCount)
            {
              v5 = -1;
              v6 = -1;
            }

            else
            {
              v5 = v4[1];
              v6 = v4[2] + v5;
            }

            v14 = self->_blocks;
            var0 = v14[v3].var0;
            LODWORD(v7) = v7 + 1;
            ++v11;
            v12 += 64;
          }

          while (var0 >= v6);
          v9 = *(&v14[v3] + 1);
        }

        v15 = ((v9 >> 5) & 0xFFFFFFFFFLL) + var0;
        if (v15 > v5)
        {
          v7 = v7;
          v16 = (v7 << 6) + 64;
          while (1)
          {
            v17 = self->_blocks;
            v18 = &v17[v3];
            if ((*(v18 + 1) & 0x18) == 8)
            {
              if (s_enumeratorDebugging == 1)
              {
                v24 = *(v4 + 37);
                v25 = *(v18 + 1) >> 41;
                if (v24 != -1 && v24 != v25)
                {
                  fprintf(*MEMORY[0x1E69E9848], "warning: zone fixup failed - block %#llx from zone %s discovered in region [%#llx-%#llx] already claimed by %s\n", v18->var0, [self->_zones[v25].var1 UTF8String], v5, v6, objc_msgSend(self->_zones[*(v4 + 37)].var1, "UTF8String"));
                  v17 = self->_blocks;
                }
              }

              *(v4 + 37) = *(&v17[v3] + 1) >> 41;
              if (![v4[5] length])
              {
                v19 = [(NSMutableArray *)self->_zoneNames objectAtIndexedSubscript:*(&self->_blocks[v3] + 1) >> 41];
                v20 = v4[5];
                v4[5] = v19;

                if ((regionDescriptionOptions & 0x800000) != 0)
                {
                  v21 = [v4 description];
                  printf("Setting region name in %s based on _zoneNames[_blocks[i].isa_index for  %s\n", "-[VMUTaskMemoryScanner _fixupBlockIsas]", [v21 UTF8String]);
                }
              }

              *(&self->_blocks[v3] + 1) &= 0x1FFFFFFFFFFuLL;
              *(&self->_blocks[v3] + 1) &= 0xFFFFFFFFFFFFFFE7;
            }

            v22 = v4[17];
            if (!v22)
            {
              [v4 fixNonEmptyMallocRegionType];
              v22 = v4[17];
            }

            v4[17] = v22 + 1;
            *(v4 + 36) |= 1u;
            if (v15 <= v6)
            {
              break;
            }

            ++v7;
            v23 = *(&self->_regions->var0 + v16);

            if (v7 >= self->_regionsCount)
            {
              v6 = -1;
              v5 = -1;
LABEL_33:
              v4 = v23;
              break;
            }

            v5 = v23[1];
            v6 = v23[2] + v5;
            v16 += 64;
            v4 = v23;
            if (v15 <= v5)
            {
              goto LABEL_33;
            }
          }
        }
      }

      ++v3;
    }

    while (v3 < self->_blocksCount);
  }

  else
  {
    v4 = 0;
  }

  self->_initializedRegionMallocBlockCounts = 1;
  memoryReader = [(VMUObjectIdentifier *)self->_objectIdentifier memoryReader];
  swiftRuntimeInfoStableABI = [(VMUObjectIdentifier *)self->_objectIdentifier swiftRuntimeInfoStableABI];
  v29 = swiftRuntimeInfoStableABI;
  if (swiftRuntimeInfoStableABI)
  {
    swiftRuntimeInfoPreABI = swiftRuntimeInfoStableABI;
  }

  else
  {
    swiftRuntimeInfoPreABI = [(VMUObjectIdentifier *)self->_objectIdentifier swiftRuntimeInfoPreABI];
  }

  v31 = swiftRuntimeInfoPreABI;

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __39__VMUTaskMemoryScanner__fixupBlockIsas__block_invoke;
  v35[3] = &unk_1E8277908;
  v36 = v31;
  v37 = memoryReader;
  v35[4] = self;
  v32 = v31;
  v33 = memoryReader;
  [(VMUTaskMemoryScanner *)self _withOrderedNodeMapper:v35];
  [(VMUTaskMemoryScanner *)self _identifySwiftTypeNameCache];
  [(VMUTaskMemoryScanner *)self _updateLinearClassInfos];
  [(VMUTaskMemoryScanner *)self _identifyObjCClassStructureBlocks];
  [(VMUTaskMemoryScanner *)self _identifyNonObjectsPointingToSwiftMetadata];
  [(VMUTaskMemoryScanner *)self _identifySwiftAsyncTaskSlabs];
  [(VMUTaskMemoryScanner *)self _identifyAttributeGraphAllocationsIfPreciseIdentificationIsUnavailable];
  [(VMUTaskMemoryScanner *)self _updateLinearClassInfos];
  [(VMUTaskMemoryScanner *)self _identifyNonObjectsPointedToByTypedIvars];
  [(VMUTaskMemoryScanner *)self _updateLinearClassInfos];
  [(VMUTaskMemoryScanner *)self _identifyNonObjectsUsingStackBacktrace];
  [(VMUTaskMemoryScanner *)self _updateLinearClassInfos];
  mergesort_b(self->_instanceValues, self->_instanceValuesCount, 0x10uLL, &__block_literal_global_209);
}

void __39__VMUTaskMemoryScanner__fixupBlockIsas__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(v2 + 88))
  {
    v5 = 0;
    v6 = 8;
    do
    {
      if ((*(*(v2 + 80) + v6) & 0xFFFFFE0000000007) == 1)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __39__VMUTaskMemoryScanner__fixupBlockIsas__block_invoke_2;
        v7[3] = &unk_1E82778E0;
        v7[4] = v2;
        v10 = v5;
        v9 = *(a1 + 48);
        v8 = *(a1 + 40);
        (*(a2 + 16))(a2, v5, 1, v7);

        v2 = *(a1 + 32);
      }

      ++v5;
      v6 += 16;
    }

    while (v5 < *(v2 + 88));
  }
}

void __39__VMUTaskMemoryScanner__fixupBlockIsas__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = (*(v5 + 80) + 16 * *(a1 + 56));
  if (HIDWORD(*v6))
  {
    v7 = (*v6 & 7) == 0;
    *v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && ([*(v5 + 64) classInfoForMemory:a2 length:(v6[1] >> 5) & 0xFFFFFFFFFLL remoteAddress:?], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    if ([v8 hasSpecificLayout])
    {
      v10 = [*(*(a1 + 32) + 272) indexForClassInfo:v9];
      v11 = *(*(a1 + 32) + 528);
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
      v13 = [v11 objectForKeyedSubscript:v12];

      if (!v13)
      {
        v13 = objc_opt_new();
        v14 = *(*(a1 + 32) + 528);
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
        [v14 setObject:v13 forKeyedSubscript:v15];
      }

      v16 = (*(*(a1 + 32) + 80) + 16 * *(a1 + 56));
      v17 = *(a1 + 48);
      v18 = [v9 instanceSpecificInfoForObject:*v16 ofSize:v16[1] >> 5 withScanner:? memoryReader:?];

      v9 = v18;
    }

    v19 = *(*(*(a1 + 32) + 80) + 16 * *(a1 + 56) + 8) >> 5;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __39__VMUTaskMemoryScanner__fixupBlockIsas__block_invoke_3;
    v29[3] = &unk_1E8277890;
    v34 = a2;
    v30 = v9;
    v20 = *(a1 + 40);
    v21 = *(a1 + 32);
    v31 = v20;
    v32 = v21;
    v33 = *(a1 + 48);
    v22 = v9;
    [v22 enumerateSublayoutsForSize:v19 withBlock:v29];
    v23 = [*(*(a1 + 32) + 272) indexForClassInfo:v22];
    v24 = *(*(a1 + 32) + 80) + 16 * *(a1 + 56);
    *(v24 + 8) = *(v24 + 8) & 0x1FFFFFFFFFFLL | (v23 << 41);
    v25 = *(a1 + 32);
    v26 = *(*(v25 + 80) + 16 * *(a1 + 56) + 8) >> 5;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __39__VMUTaskMemoryScanner__fixupBlockIsas__block_invoke_4;
    v28[3] = &unk_1E82778B8;
    v28[4] = v25;
    [v22 enumerateExternalValuesFromObject:a2 withSize:v26 block:v28];
  }

  else
  {
    v27 = *(*(a1 + 32) + 80) + 16 * *(a1 + 56);
    *(v27 + 8) &= 0x1FFFFFFFFFFuLL;
  }

  objc_autoreleasePoolPop(v4);
}

void __39__VMUTaskMemoryScanner__fixupBlockIsas__block_invoke_3(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v6 = *(*(a1 + 64) + a3);
  if (a4 == 3)
  {
    v6 &= ~1uLL;
  }

  else if (a4 == 5)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10 = v8;
    if (v10)
    {
      if ([v9 usesSwiftRefcounting] && objc_msgSend(v9, "pointerSize") == a3)
      {
        v11 = v10;
        v12 = [v11 refcountIsSideTableMarkerMask] & v6;
        if (v12 == [v11 refcountIsSideTableMarkerValue])
        {
          v13 = [v11 sideTablePointerMask] & v6;
          v14 = v13 >> [v11 sideTablePointerRightShift];
          v6 = v14 << [v11 sideTablePointerLeftShift];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 &= [v10 nativeWeakReferencePointerMask];
      }
    }
  }

  if (HIDWORD(v6))
  {
    v15 = (v6 & 7) == 0;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    return;
  }

  v16 = [VMUTask stripExtraPointerBits:?];
  v17 = *(*(a1 + 48) + 112);
  v18 = v17[6];
  v19 = v17[7];
  v20 = v19 >= v18;
  v21 = v19 - v18;
  if (!v20)
  {
    return;
  }

  v22 = v16;
  if (v16 - v18 >= v21)
  {
    return;
  }

  v23 = MEMORY[0x1E69E9AC0];
  v24 = v16 >> *MEMORY[0x1E69E9AC0];
  if (v24)
  {
    v25 = v17[3];
    v28 = *v25;
    v26 = v25 + 1;
    v27 = v28;
    v29 = v16 >> *MEMORY[0x1E69E9AC0];
    do
    {
      v30 = v29 & 0x3FFFFFF;
      if (v27 <= v30 || ((*(v26 + (v30 >> 3)) >> (v29 & 7)) & 1) == 0)
      {
        return;
      }

      v29 >>= 26;
    }

    while (v29);
  }

  v31 = v24 & 0x7FFFF;
  v32 = *(v17 + (v24 & 0x7FFFF) + 16);
  v33 = v17[4];
  if (v32)
  {
    v34 = v33 + ((v32 - 1) << 6);
    if (v16 - *(*v34 + 8) < *(*v34 + 16))
    {
      goto LABEL_28;
    }
  }

  v51 = *(v17 + 10);
  if (!v51)
  {
    return;
  }

  v52 = v17[4];
  while (1)
  {
    v53 = v51 >> 1;
    v34 = v52 + (v51 >> 1 << 6);
    if (*(*v34 + 8) <= v16)
    {
      break;
    }

LABEL_51:
    v20 = v51 >= 2;
    v51 = v53;
    if (!v20)
    {
      return;
    }
  }

  if (*(*v34 + 16) + *(*v34 + 8) <= v16)
  {
    v52 = v34 + 64;
    v53 = --v51 >> 1;
    goto LABEL_51;
  }

  v54 = [*v34 isSpecialPhysFootprintRegion];
  if (v54)
  {
    v55 = 0;
  }

  else
  {
    v55 = v34;
  }

  if (v54)
  {
    return;
  }

  if ((*(*v55 + 132) & 1) == 0)
  {
    goto LABEL_70;
  }

  v56 = (v55 + 64);
  v57 = *(v17 + 10) - ((v55 + 64 - v17[4]) >> 6);
  if (!v57)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v58 = v57 >> 1;
    v59 = &v56[8 * (v57 >> 1)];
    if (*(*v59 + 1) > v22)
    {
LABEL_62:
      v60 = v57 > 1;
      v57 = v58;
      if (!v60)
      {
        v57 = 0;
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  if (*(*v59 + 2) + *(*v59 + 1) <= v22)
  {
    v56 = v59 + 8;
    v58 = --v57 >> 1;
    goto LABEL_62;
  }

  v61 = v55;
  v62 = [*v59 isSpecialPhysFootprintRegion];
  v55 = v61;
  if (v62)
  {
    v57 = 0;
  }

  else
  {
    v57 = v59;
  }

LABEL_67:
  if (v57)
  {
    v55 = v57;
  }

  v34 = v55;
LABEL_70:
  *(v17 + v31 + 16) = ((v55 - v33) >> 6) + 1;
LABEL_28:
  v35 = *(v34 + 20);
  if (v35)
  {
    v36 = *(v34 + 8);
    v37 = *v17;
    v38 = *(v34 + 16);
    v39 = (*v17 + 16 * v38);
    if (v36)
    {
      if (*v39 > v22)
      {
        return;
      }

      v40 = (v37 + 16 * (v35 + v38 - 1));
      if (((v40[1] >> 5) & 0xFFFFFFFFFuLL) + *v40 <= v22)
      {
        return;
      }

      v41 = (v36 + 4 * ((v22 - (*v39 & -*MEMORY[0x1E69E9AC8])) >> *v23));
      v42 = *v41;
      v43 = (v37 + 16 * v42);
      if (*v43 > v22)
      {
        return;
      }

      v44 = v41[1];
      if (v44 < *(v17 + 2) && (v45 = (v37 + 16 * v44), v46 = *v45, *v45 <= v22))
      {
        v49 = v45[1];
LABEL_72:
        if ((v49 & 7) - 2 >= 3)
        {
          v63 = v45 - v37;
          v64 = v63 >> 4;
          v65 = v22 - v46;
          v66 = v17[2];
          if (v65 >= v66)
          {
            if (((v49 >> 5) & 0xFFFFFFFFFLL) - v65 > v66 || v64 == -1)
            {
              return;
            }
          }

          else if (v64 == -1)
          {
            return;
          }

          v68 = *(*(a1 + 48) + 80);
          if (v68)
          {
            v69 = (v68 + (v63 & 0xFFFFFFFF0));
            if (*v69 == v22 && (v69[1] & 7) == 1)
            {
              v70 = objc_autoreleasePoolPush();
              v71 = [a2 instanceSpecificInfoForObject:v22 ofSize:v69[1] >> 5 withScanner:*(a1 + 48) memoryReader:*(a1 + 56)];
              if (v71)
              {
                v69[1] = v69[1] & 0x1FFFFFFFFFFLL | ([*(*(a1 + 48) + 272) indexForClassInfo:v71] << 41);
              }

              objc_autoreleasePoolPop(v70);
            }
          }
        }
      }

      else
      {
        v47 = v44 - v42;
        if (v47)
        {
          do
          {
            v48 = v47 >> 1;
            v45 = &v43[2 * (v47 >> 1)];
            v46 = *v45;
            if (*v45 <= v22)
            {
              v49 = v45[1];
              if (((v49 >> 5) & 0xFFFFFFFFFLL) + v46 > v22)
              {
                goto LABEL_72;
              }

              v43 = v45 + 2;
              v48 = --v47 >> 1;
            }

            v20 = v47 >= 2;
            v47 = v48;
          }

          while (v20);
        }
      }
    }

    else
    {
      do
      {
        v50 = v35 >> 1;
        v45 = &v39[2 * (v35 >> 1)];
        v46 = *v45;
        if (*v45 <= v22)
        {
          v49 = v45[1];
          if (((v49 >> 5) & 0xFFFFFFFFFLL) + v46 > v22)
          {
            goto LABEL_72;
          }

          v39 = v45 + 2;
          v50 = --v35 >> 1;
        }

        v20 = v35 >= 2;
        v35 = v50;
      }

      while (v20);
    }
  }
}

void __39__VMUTaskMemoryScanner__fixupBlockIsas__block_invoke_4(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 112);
  v8 = v6[6];
  v7 = v6[7];
  v9 = v7 - v8;
  v10 = v7 < v8;
  if (a2 - v8 < v9 && !v10)
  {
    v11 = MEMORY[0x1E69E9AC0];
    v12 = a2 >> *MEMORY[0x1E69E9AC0];
    if (v12)
    {
      v13 = v6[3];
      v16 = *v13;
      v14 = v13 + 1;
      v15 = v16;
      v17 = a2 >> *MEMORY[0x1E69E9AC0];
      do
      {
        v18 = v17 & 0x3FFFFFF;
        if (v15 <= v18 || ((*(v14 + (v18 >> 3)) >> (v17 & 7)) & 1) == 0)
        {
          goto LABEL_55;
        }

        v17 >>= 26;
      }

      while (v17);
    }

    v19 = v12 & 0x7FFFF;
    v20 = *(v6 + (v12 & 0x7FFFF) + 16);
    v21 = v6[4];
    if (v20)
    {
      v22 = v21 + ((v20 - 1) << 6);
      if (a2 - *(*v22 + 8) < *(*v22 + 16))
      {
        goto LABEL_10;
      }
    }

    v40 = *(v6 + 10);
    if (v40)
    {
      v41 = v6[4];
      do
      {
        v42 = v40 >> 1;
        v22 = v41 + (v40 >> 1 << 6);
        if (*(*v22 + 8) <= a2)
        {
          if (*(*v22 + 16) + *(*v22 + 8) > a2)
          {
            v68 = v5;
            v43 = [*v22 isSpecialPhysFootprintRegion];
            v5 = v68;
            if (v43)
            {
              v44 = 0;
            }

            else
            {
              v44 = v22;
            }

            if (v43)
            {
              break;
            }

            if ((*(*v44 + 132) & 1) == 0)
            {
              goto LABEL_52;
            }

            v45 = (v44 + 64);
            v46 = *(v6 + 10) - ((v44 + 64 - v6[4]) >> 6);
            if (!v46)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v47 = v46 >> 1;
              v48 = &v45[8 * (v46 >> 1)];
              if (*(*v48 + 1) <= a2)
              {
                if (*(*v48 + 2) + *(*v48 + 1) > a2)
                {
                  v50 = [*v48 isSpecialPhysFootprintRegion];
                  v5 = v68;
                  if (v50)
                  {
                    v46 = 0;
                  }

                  else
                  {
                    v46 = v48;
                  }

LABEL_49:
                  if (v46)
                  {
                    v44 = v46;
                  }

                  v22 = v44;
LABEL_52:
                  *(v6 + v19 + 16) = ((v44 - v21) >> 6) + 1;
LABEL_10:
                  v23 = *(v22 + 20);
                  if (v23)
                  {
                    v24 = *(v22 + 8);
                    v25 = *v6;
                    v26 = *(v22 + 16);
                    v27 = (*v6 + 16 * v26);
                    if (v24)
                    {
                      if (*v27 <= a2)
                      {
                        v28 = (v25 + 16 * (v23 + v26 - 1));
                        if (((v28[1] >> 5) & 0xFFFFFFFFFuLL) + *v28 > a2)
                        {
                          v29 = (v24 + 4 * ((a2 - (*v27 & -*MEMORY[0x1E69E9AC8])) >> *v11));
                          v30 = *v29;
                          v31 = (v25 + 16 * v30);
                          if (*v31 <= a2)
                          {
                            v32 = v29[1];
                            if (v32 < *(v6 + 2) && (v33 = (v25 + 16 * v32), v34 = *v33, *v33 <= a2))
                            {
                              v37 = v33[1];
LABEL_54:
                              if ((v37 & 7) - 2 >= 3)
                              {
                                v51 = v33 - v25;
                                v52 = v51 >> 4;
                                v53 = a2 - v34;
                                v54 = v6[2];
                                if (v53 >= v54)
                                {
                                  if (((v37 >> 5) & 0xFFFFFFFFFLL) - v53 > v54 || v52 == -1)
                                  {
                                    goto LABEL_55;
                                  }
                                }

                                else if (v52 == -1)
                                {
                                  goto LABEL_55;
                                }

                                v56 = *(a1 + 32);
                                v57 = *(v56 + 80);
                                if (v57)
                                {
                                  v58 = (v51 >> 4);
                                  if ((*(v57 + 16 * v58 + 8) & 7) == 1)
                                  {
                                    v59 = *(v56 + 248);
                                    v60 = *(v56 + 252);
                                    if (v60 <= v59)
                                    {
                                      v62 = 2 * v60;
                                      if ((2 * v60) <= 0x10)
                                      {
                                        v62 = 16;
                                      }

                                      *(v56 + 252) = v62;
                                      v63 = *(a1 + 32);
                                      v65 = (v63 + 252);
                                      v64 = *(v63 + 252);
                                      for (i = v5; v64 < *(v63 + 248); v64 = *(v63 + 252))
                                      {
                                        *v65 = 2 * v64;
                                        v63 = *(a1 + 32);
                                        v65 = (v63 + 252);
                                      }

                                      *(*(a1 + 32) + 240) = malloc_type_realloc(*(v63 + 240), 16 * v64, 0x108004057E67DB5uLL);
                                      v66 = *(a1 + 32);
                                      v61 = *(v66 + 240);
                                      if (!v61)
                                      {
                                        NSLog(&cfstr_OutOfMemoryFai.isa, "_instanceValues", v60, *(v66 + 252));
                                        abort();
                                      }

                                      v59 = *(v66 + 248);
                                      v5 = i;
                                    }

                                    else
                                    {
                                      v61 = *(v56 + 240);
                                    }

                                    v67 = (v61 + 16 * v59);
                                    *v67 = v58;
                                    v67[1] = 0;
                                    ++*(*(a1 + 32) + 248);
                                  }
                                }
                              }
                            }

                            else
                            {
                              v35 = v32 - v30;
                              if (v35)
                              {
                                do
                                {
                                  v36 = v35 >> 1;
                                  v33 = &v31[2 * (v35 >> 1)];
                                  v34 = *v33;
                                  if (*v33 <= a2)
                                  {
                                    v37 = v33[1];
                                    if (((v37 >> 5) & 0xFFFFFFFFFLL) + v34 > a2)
                                    {
                                      goto LABEL_54;
                                    }

                                    v31 = v33 + 2;
                                    v36 = --v35 >> 1;
                                  }

                                  v38 = v35 >= 2;
                                  v35 = v36;
                                }

                                while (v38);
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      do
                      {
                        v39 = v23 >> 1;
                        v33 = &v27[2 * (v23 >> 1)];
                        v34 = *v33;
                        if (*v33 <= a2)
                        {
                          v37 = v33[1];
                          if (((v37 >> 5) & 0xFFFFFFFFFLL) + v34 > a2)
                          {
                            goto LABEL_54;
                          }

                          v27 = v33 + 2;
                          v39 = --v23 >> 1;
                        }

                        v38 = v23 >= 2;
                        v23 = v39;
                      }

                      while (v38);
                    }
                  }

                  goto LABEL_55;
                }

                v45 = v48 + 8;
                v47 = --v46 >> 1;
              }

              v49 = v46 > 1;
              v46 = v47;
              if (!v49)
              {
                v46 = 0;
                goto LABEL_49;
              }
            }
          }

          v41 = v22 + 64;
          v42 = --v40 >> 1;
        }

        v38 = v40 >= 2;
        v40 = v42;
      }

      while (v38);
    }
  }

LABEL_55:
}

uint64_t __39__VMUTaskMemoryScanner__fixupBlockIsas__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 > *a3;
  }
}

- (void)_identifySwiftTypeNameCache
{
  v76 = *MEMORY[0x1E69E9840];
  isExclaveCore = [(VMUTask *)self->_task isExclaveCore];
  [(VMUObjectIdentifier *)self->_objectIdentifier symbolicator];
  if (isExclaveCore)
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwner();
  }

  else
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  }

  v6 = SymbolOwner;
  v7 = v5;
  if (CSIsNull())
  {
    goto LABEL_75;
  }

  v71 = 0;
  memoryReader = [(VMUObjectIdentifier *)self->_objectIdentifier memoryReader];
  _copy_remote_mangled_symbol_value(memoryReader, "__ZL13TypeNameCache", v6, v7, 8uLL, &v71);

  if (!v71)
  {
    goto LABEL_75;
  }

  v9 = [VMUTask stripExtraPointerBits:?];
  v71 = v9;
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v13 = var7 >= var6;
  v14 = var7 - var6;
  if (!v13)
  {
    goto LABEL_75;
  }

  v15 = v9;
  if (v9 - var6 >= v14)
  {
    goto LABEL_75;
  }

  v16 = MEMORY[0x1E69E9AC0];
  v17 = v9 >> *MEMORY[0x1E69E9AC0];
  if (v17)
  {
    var3 = regionMap->var3;
    v21 = *var3;
    v19 = var3 + 1;
    v20 = v21;
    v22 = v9 >> *MEMORY[0x1E69E9AC0];
    do
    {
      v23 = v22 & 0x3FFFFFF;
      if (v20 <= v23 || ((*(v19 + (v23 >> 3)) >> (v22 & 7)) & 1) == 0)
      {
        goto LABEL_75;
      }

      v22 >>= 26;
    }

    while (v22);
  }

  v24 = v17 & 0x7FFFF;
  v25 = regionMap->var8[v17 & 0x7FFFF];
  var4 = regionMap->var4;
  if (v25)
  {
    v27 = var4 + 64 * (v25 - 1);
    if (v9 - *(*v27 + 8) < *(*v27 + 16))
    {
      goto LABEL_16;
    }
  }

  var5 = regionMap->var5;
  if (!var5)
  {
    goto LABEL_75;
  }

  v45 = regionMap->var4;
  while (1)
  {
    v46 = var5 >> 1;
    v27 = v45 + 64 * (var5 >> 1);
    if (*(*v27 + 8) <= v9)
    {
      break;
    }

LABEL_39:
    v13 = var5 >= 2;
    var5 = v46;
    if (!v13)
    {
      goto LABEL_75;
    }
  }

  if (*(*v27 + 16) + *(*v27 + 8) <= v9)
  {
    v45 = (v27 + 64);
    v46 = --var5 >> 1;
    goto LABEL_39;
  }

  isSpecialPhysFootprintRegion = [*v27 isSpecialPhysFootprintRegion];
  v16 = MEMORY[0x1E69E9AC0];
  if (isSpecialPhysFootprintRegion)
  {
    v48 = 0;
  }

  else
  {
    v48 = v27;
  }

  if (isSpecialPhysFootprintRegion)
  {
    goto LABEL_75;
  }

  if ((*(*v48 + 132) & 1) == 0)
  {
    goto LABEL_58;
  }

  v49 = (v48 + 64);
  v50 = regionMap->var5 - ((v48 + 64 - regionMap->var4) >> 6);
  if (!v50)
  {
    goto LABEL_55;
  }

  while (2)
  {
    v51 = v50 >> 1;
    v52 = &v49[8 * (v50 >> 1)];
    if (*(*v52 + 1) > v15)
    {
LABEL_50:
      v53 = v50 > 1;
      v50 = v51;
      if (!v53)
      {
        v50 = 0;
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  if (*(*v52 + 2) + *(*v52 + 1) <= v15)
  {
    v49 = v52 + 8;
    v51 = --v50 >> 1;
    goto LABEL_50;
  }

  v54 = v48;
  isSpecialPhysFootprintRegion2 = [*v52 isSpecialPhysFootprintRegion];
  v48 = v54;
  v16 = MEMORY[0x1E69E9AC0];
  if (isSpecialPhysFootprintRegion2)
  {
    v50 = 0;
  }

  else
  {
    v50 = v52;
  }

LABEL_55:
  if (v50)
  {
    v48 = v50;
  }

  v27 = v48;
LABEL_58:
  regionMap->var8[v24] = ((v48 - var4) >> 6) + 1;
LABEL_16:
  v28 = *(v27 + 5);
  if (v28)
  {
    v29 = *(v27 + 1);
    var0 = regionMap->var0;
    v31 = *(v27 + 4);
    v32 = &regionMap->var0[v31];
    if (v29)
    {
      if (v32->var0 > v15)
      {
        goto LABEL_75;
      }

      v33 = &var0[v28 - 1 + v31];
      if (((*(v33 + 1) >> 5) & 0xFFFFFFFFFLL) + v33->var0 <= v15)
      {
        goto LABEL_75;
      }

      v34 = (v29 + 4 * ((v15 - (v32->var0 & -*MEMORY[0x1E69E9AC8])) >> *v16));
      v35 = *v34;
      p_var0 = &var0[v35].var0;
      if (*p_var0 > v15)
      {
        goto LABEL_75;
      }

      v37 = v34[1];
      if (v37 < regionMap->var1 && (v38 = &var0[v37].var0, v39 = *v38, *v38 <= v15))
      {
        v42 = v38[1];
LABEL_60:
        if ((v42 & 7) - 2 >= 3)
        {
          v56 = v38 - var0;
          v57 = v56 >> 4;
          v58 = v15 - v39;
          var2 = regionMap->var2;
          if (v58 >= var2)
          {
            if (((v42 >> 5) & 0xFFFFFFFFFLL) - v58 > var2 || v57 == -1)
            {
              goto LABEL_75;
            }
          }

          else if (v57 == -1)
          {
            goto LABEL_75;
          }

          v61 = (v56 >> 4);
          if ((*(&self->_blocks[v57] + 1) & 7) == 1)
          {
            v62 = [VMUClassInfo alloc];
            v63 = MEMORY[0x1E696AEC0];
            Path = CSSymbolOwnerGetPath();
            if (Path)
            {
              v65 = Path;
            }

            else
            {
              v65 = "";
            }

            v66 = [v63 stringWithUTF8String:v65];
            v67 = [(VMUClassInfo *)v62 initWithClassName:@"llvm::DenseMap<TypeNameCacheKey binaryPath:std::pair<const char * type:size_t>>", v66, 2];

            *(&self->_blocks[v61] + 1) = *(&self->_blocks[v61] + 1) & 0x1FFFFFFFFFFLL | ([(VMUClassInfoMap *)self->_classInfoIndexer indexForClassInfo:v67]<< 41);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v68 = VMUGraphNodeTypeDescription(*(&self->_blocks[v61] + 2) & 7);
            v69 = *(&self->_blocks[v61] + 2) & 7;
            *buf = 136315394;
            v73 = v68;
            v74 = 1024;
            v75 = v69;
            _os_log_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Block pointed to by TypeNameCache has non-malloc type %s (%d)\n", buf, 0x12u);
          }
        }
      }

      else
      {
        v40 = v37 - v35;
        if (v40)
        {
          do
          {
            v41 = v40 >> 1;
            v38 = &p_var0[2 * (v40 >> 1)];
            v39 = *v38;
            if (*v38 <= v15)
            {
              v42 = v38[1];
              if (((v42 >> 5) & 0xFFFFFFFFFLL) + v39 > v15)
              {
                goto LABEL_60;
              }

              p_var0 = v38 + 2;
              v41 = --v40 >> 1;
            }

            v13 = v40 >= 2;
            v40 = v41;
          }

          while (v13);
        }
      }
    }

    else
    {
      do
      {
        v43 = v28 >> 1;
        v38 = &v32[v28 >> 1].var0;
        v39 = *v38;
        if (*v38 <= v15)
        {
          v42 = v38[1];
          if (((v42 >> 5) & 0xFFFFFFFFFLL) + v39 > v15)
          {
            goto LABEL_60;
          }

          v32 = (v38 + 2);
          v43 = --v28 >> 1;
        }

        v13 = v28 >= 2;
        v28 = v43;
      }

      while (v13);
    }
  }

LABEL_75:
  v70 = *MEMORY[0x1E69E9840];
}

- (_VMUBlockNode)_untypedMallocBlockNodeReferencedFromAddress:
{
  if (HIDWORD(*v1))
  {
    v2 = (*v1 & 7) == 0;
    *v1;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = v0;
  v5 = [VMUTask stripExtraPointerBits:?];
  result = 0;
  v6 = *(v4 + 112);
  v7 = v6[6];
  v8 = v6[7];
  v9 = v8 >= v7;
  v10 = v8 - v7;
  if (!v9 || v5 - v7 >= v10)
  {
    return result;
  }

  v11 = MEMORY[0x1E69E9AC0];
  v12 = v5 >> *MEMORY[0x1E69E9AC0];
  if (v12)
  {
    v13 = v6[3];
    v16 = *v13;
    v14 = v13 + 1;
    v15 = v16;
    v17 = v5 >> *MEMORY[0x1E69E9AC0];
    do
    {
      v18 = v17 & 0x3FFFFFF;
      if (v15 <= v18 || ((*(v14 + (v18 >> 3)) >> (v17 & 7)) & 1) == 0)
      {
        return 0;
      }

      v17 >>= 26;
    }

    while (v17);
  }

  v19 = v12 & 0x7FFFF;
  v20 = *(v6 + (v12 & 0x7FFFF) + 16);
  v21 = v6[4];
  if (v20)
  {
    v22 = v21 + ((v20 - 1) << 6);
    if (v5 - *(*v22 + 8) < *(*v22 + 16))
    {
      goto LABEL_16;
    }
  }

  v39 = *(v6 + 10);
  if (!v39)
  {
    return 0;
  }

  v40 = v6[4];
  while (1)
  {
    v41 = v39 >> 1;
    v22 = v40 + (v39 >> 1 << 6);
    if (*(*v22 + 8) <= v5)
    {
      break;
    }

LABEL_39:
    v9 = v39 >= 2;
    v39 = v41;
    if (!v9)
    {
      return 0;
    }
  }

  if (*(*v22 + 16) + *(*v22 + 8) <= v5)
  {
    v40 = v22 + 64;
    v41 = --v39 >> 1;
    goto LABEL_39;
  }

  isSpecialPhysFootprintRegion = [*v22 isSpecialPhysFootprintRegion];
  if (isSpecialPhysFootprintRegion)
  {
    v43 = 0;
  }

  else
  {
    v43 = v22;
  }

  if (isSpecialPhysFootprintRegion)
  {
    return 0;
  }

  if ((*(*v43 + 132) & 1) == 0)
  {
    goto LABEL_58;
  }

  v44 = (v43 + 64);
  v45 = *(v6 + 10) - ((v43 + 64 - v6[4]) >> 6);
  if (!v45)
  {
    goto LABEL_55;
  }

  while (2)
  {
    v46 = v45 >> 1;
    v47 = &v44[8 * (v45 >> 1)];
    if (*(*v47 + 1) > v5)
    {
LABEL_50:
      v48 = v45 > 1;
      v45 = v46;
      if (!v48)
      {
        v45 = 0;
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  if (*(*v47 + 2) + *(*v47 + 1) <= v5)
  {
    v44 = v47 + 8;
    v46 = --v45 >> 1;
    goto LABEL_50;
  }

  if ([*v47 isSpecialPhysFootprintRegion])
  {
    v45 = 0;
  }

  else
  {
    v45 = v47;
  }

LABEL_55:
  if (v45)
  {
    v43 = v45;
  }

  v22 = v43;
LABEL_58:
  *(v6 + v19 + 16) = ((v43 - v21) >> 6) + 1;
LABEL_16:
  v23 = *(v22 + 20);
  if (!v23)
  {
    return 0;
  }

  v24 = *(v22 + 8);
  v25 = *v6;
  v26 = *(v22 + 16);
  v27 = (*v6 + 16 * v26);
  if (v24)
  {
    if (*v27 > v5)
    {
      return 0;
    }

    v28 = (v25 + 16 * (v23 + v26 - 1));
    if (((v28[1] >> 5) & 0xFFFFFFFFFuLL) + *v28 <= v5)
    {
      return 0;
    }

    v29 = (v24 + 4 * ((v5 - (*v27 & -*MEMORY[0x1E69E9AC8])) >> *v11));
    v30 = *v29;
    v31 = (v25 + 16 * v30);
    if (*v31 > v5)
    {
      return 0;
    }

    v32 = v29[1];
    if (v32 < *(v6 + 2) && (v33 = (v25 + 16 * v32), v34 = *v33, *v33 <= v5))
    {
      v37 = v33[1];
LABEL_60:
      if ((v37 & 7) - 2 < 3)
      {
        return 0;
      }

      v49 = v33 - v25;
      v50 = v49 >> 4;
      v51 = v5 - v34;
      v52 = v6[2];
      if (v51 >= v52)
      {
        if (((v37 >> 5) & 0xFFFFFFFFFLL) - v51 > v52 || v50 == -1)
        {
          return 0;
        }
      }

      else if (v50 == -1)
      {
        return 0;
      }

      v54 = *(v4 + 80);
      if (v54)
      {
        v55 = v54 + (v49 & 0xFFFFFFFF0);
        if (*v55 == v5)
        {
          if ((*(v55 + 8) & 0xFFFFFE0000000007) == 1)
          {
            return v55;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v35 = v32 - v30;
      if (v35)
      {
        do
        {
          v36 = v35 >> 1;
          v33 = &v31[2 * (v35 >> 1)];
          v34 = *v33;
          if (*v33 <= v5)
          {
            v37 = v33[1];
            if (((v37 >> 5) & 0xFFFFFFFFFLL) + v34 > v5)
            {
              goto LABEL_60;
            }

            v31 = v33 + 2;
            v36 = --v35 >> 1;
          }

          result = 0;
          v9 = v35 >= 2;
          v35 = v36;
        }

        while (v9);
        return result;
      }
    }

    return 0;
  }

  do
  {
    v38 = v23 >> 1;
    v33 = &v27[2 * (v23 >> 1)];
    v34 = *v33;
    if (*v33 <= v5)
    {
      v37 = v33[1];
      if (((v37 >> 5) & 0xFFFFFFFFFLL) + v34 > v5)
      {
        goto LABEL_60;
      }

      v27 = v33 + 2;
      v38 = --v23 >> 1;
    }

    result = 0;
    v9 = v23 >= 2;
    v23 = v38;
  }

  while (v9);
  return result;
}

- (void)_identifyXPCDictionaryStorageReferencedByBlock:(_VMUBlockNode *)block
{
  v9 = 0;
  memoryCache = self->_memoryCache;
  v5 = (*(block + 1) >> 5) & 0xFFFFFFFFFLL;
  var0 = block->var0;
  while (![(VMUTaskMemoryCache *)memoryCache peekAtAddress:var0 size:v5 returnsBuf:&v9])
  {
    v7 = [(VMUTaskMemoryScanner *)self _untypedMallocBlockNodeReferencedFromAddress:v9];
    if (!v7)
    {
      break;
    }

    var0 = v7->var0;
    v8 = *(v7 + 1);
    v5 = (v8 >> 5) & 0xFFFFFFFFFLL;
    *(v7 + 1) = v8 & 0x1FFFFFFFFFFLL | (self->_xpcDictionaryStorageClassInfoIndex << 41);
    memoryCache = self->_memoryCache;
  }
}

- (void)_identifyNonObjectsPointedToByTypedIvars
{
  self->_xpcDictionaryStorageClassInfoIndex = [(VMUClassInfoMap *)self->_classInfoIndexer indexForClassInfo:global_xpcDictionaryStorageClassInfo];
  classInfosCount = self->_classInfosCount;
  v4 = malloc_type_calloc(1uLL, ((classInfosCount + 8) >> 3) + 4, 0xB2EC2458uLL);
  *v4 = classInfosCount + 1;
  classInfoIndexer = self->_classInfoIndexer;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__VMUTaskMemoryScanner__identifyNonObjectsPointedToByTypedIvars__block_invoke;
  v15[3] = &__block_descriptor_40_e32_v36__0Q8__VMUClassInfo_16I24_B28l;
  v15[4] = v4;
  [(VMUClassInfoMap *)classInfoIndexer enumerateInfosWithBlock:v15];
  v6 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:1282];
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__VMUTaskMemoryScanner__identifyNonObjectsPointedToByTypedIvars__block_invoke_2;
  v10[3] = &unk_1E82779A0;
  v14 = classInfosCount;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v13 = v4;
  v8 = v6;
  v9 = v7;
  [(VMUTaskMemoryScanner *)self _withOrderedNodeMapper:v10];
  free(v4);
}

void __64__VMUTaskMemoryScanner__identifyNonObjectsPointedToByTypedIvars__block_invoke(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v9 = a3;
  if ([v9 infoType] != 1 && objc_msgSend(v9, "infoType") != 128 && objc_msgSend(v9, "infoType") != 8 || (objc_msgSend(v9, "className"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"__NSMallocBlock__"), v6, v7))
  {
    v8 = *(a1 + 32);
    if (*v8 > a4)
    {
      *(v8 + (a4 >> 3) + 4) |= 1 << (a4 & 7);
    }
  }
}

uint64_t __64__VMUTaskMemoryScanner__identifyNonObjectsPointedToByTypedIvars__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (*(result + 88))
  {
    v5 = 0;
    v6 = 8;
    do
    {
      v7 = (*(result + 80) + v6);
      v10 = *v7;
      v8 = v7 - 1;
      v9 = v10;
      v11 = v10 >> 41;
      v12 = (v10 & 7) != 1 || v11 == 0;
      if (!v12 && *(a1 + 64) > v11)
      {
        if (*(result + 372) == v11)
        {
          [result _identifyXPCDictionaryStorageReferencedByBlock:v8];
        }

        else
        {
          v13 = *(a1 + 56);
          if (*v13 <= v11 || ((*(v13 + (v9 >> 44) + 4) >> (v11 & 7)) & 1) == 0)
          {
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = __64__VMUTaskMemoryScanner__identifyNonObjectsPointedToByTypedIvars__block_invoke_3;
            v16[3] = &unk_1E8277978;
            v16[4] = result;
            v19 = v11;
            v17 = *(a1 + 40);
            v15 = *(a1 + 48);
            v14 = v15;
            v18 = v15;
            (*(a2 + 16))(a2, v5, 1, v16);
          }
        }
      }

      ++v5;
      result = *(a1 + 32);
      v6 += 16;
    }

    while (v5 < *(result + 88));
  }

  return result;
}

void __64__VMUTaskMemoryScanner__identifyNonObjectsPointedToByTypedIvars__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v39 = *(*(*(a1 + 32) + 256) + 8 * *(a1 + 64));
  v3 = *(a1 + 40);
  v41 = a1;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 64)];
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = objc_opt_new();
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __64__VMUTaskMemoryScanner__identifyNonObjectsPointedToByTypedIvars__block_invoke_4;
    v47[3] = &unk_1E8277950;
    v5 = v6;
    v48 = v5;
    [(VMUClassInfo *)v39 enumerateAllPointerFieldsWithBlock:v47];
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 64)];
    [v7 setObject:v5 forKey:v8];
  }

  if (![v5 count])
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    if (*v9 > v10)
    {
      *(v9 + (v10 >> 3) + 4) |= 1 << (v10 & 7);
    }
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = v5;
  v12 = a2;
  v40 = [v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v40)
  {
    v13 = *v44;
    v37 = *v44;
    v35 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v43 + 1) + 8 * v14);
        if (v15)
        {
          v16 = *(v15 + 16);
          v17 = *(v15 + 24);
          v15 = *(v15 + 8);
        }

        else
        {
          v17 = 0;
          v16 = 0;
        }

        v18 = [*(v41 + 32) _untypedMallocBlockNodeReferencedFromAddress:{v12 + objc_msgSend(v16, "offset") + v15}];
        if (v18)
        {
          v19 = v18;
          v20 = NSMapGet(*(v41 + 48), v17);
          v21 = v20;
          if (!v20)
          {
            if ([v39 infoType] == 8)
            {
              [v16 fullIvarNameAtOffset:v15];
            }

            else
            {
              [v16 ivarName];
            }
            v22 = ;
            v23 = [v17 typeName];
            if ([v23 length] && objc_msgSend(v23, "characterAtIndex:", 0) == 35)
            {

              v13 = v37;
              goto LABEL_25;
            }

            v42 = 0;
            v24 = descriptionForTypeOfReferencedAllocation([v23 UTF8String], &v42);
            v38 = v23;
            v25 = MEMORY[0x1E696AEC0];
            v26 = [v39 displayName];
            v27 = v26;
            v28 = @"malloc";
            if (v24)
            {
              v28 = v24;
            }

            v29 = [v25 stringWithFormat:@"%@.%@ (%@)", v26, v22, v28];

            v30 = [v39 binaryPath];
            v31 = [VMUClassInfo classInfoWithClassName:v29 binaryPath:v30 type:v42];

            v21 = [*(*(v41 + 32) + 272) indexForClassInfo:v31];
            NSMapInsert(*(v41 + 48), v17, v21);

            v12 = a2;
            v11 = v35;

            v13 = v37;
          }

          *(v19 + 8) = *(v19 + 8) & 0x1FFFFFFFFFFLL | (v21 << 41);
        }

LABEL_25:

        ++v14;
      }

      while (v40 != v14);
      v32 = [v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
      v40 = v32;
    }

    while (v32);
  }

  objc_autoreleasePoolPop(context);
  v33 = *MEMORY[0x1E69E9840];
}

void __64__VMUTaskMemoryScanner__identifyNonObjectsPointedToByTypedIvars__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [[VMUCachedPointerFieldInfo alloc] initWithRootField:a2 leafField:a3 leafOffsetInRootField:a4];
  [*(a1 + 32) addObject:v5];
}

- (void)_identifyNonObjectsPointingToSwiftMetadata
{
  isExclaveCore = [(VMUTask *)self->_task isExclaveCore];
  [(VMUObjectIdentifier *)self->_objectIdentifier symbolicator];
  if (isExclaveCore)
  {
    CSSymbolicatorGetSymbolOwner();
  }

  else
  {
    CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  }

  if ((CSIsNull() & 1) != 0 || (CSSymbolOwnerGetSymbolWithMangledName(), CSIsNull()))
  {
    [(VMUTask *)self->_task isExclave];
    v4 = 0;
  }

  else
  {
    Range = CSSymbolGetRange();
    v4 = v6;
    [(VMUTask *)self->_task isExclave];
    if (Range)
    {
      goto LABEL_10;
    }
  }

  if (!self->_swiftMetadataMaxBlockIndex)
  {
    return;
  }

  Range = 0;
LABEL_10:
  v7 = [VMUClassInfo classInfoWithClassName:@"Swift HeapGenericLocalVariable" binaryPath:@"/usr/lib/swift/libswiftCore.dylib" type:16];
  self->_swiftHeapGenericLocalVariableClassInfoIndex = [(VMUClassInfoMap *)self->_classInfoIndexer indexForClassInfo:v7];
  swiftMetadataMinBlockIndex = self->_swiftMetadataMinBlockIndex;
  swiftMetadataMaxBlockIndex = self->_swiftMetadataMaxBlockIndex;
  if (swiftMetadataMinBlockIndex <= swiftMetadataMaxBlockIndex)
  {
    v11 = 0;
    v12 = 0;
    v10 = 0;
    do
    {
      blocks = self->_blocks;
      v14 = swiftMetadataMinBlockIndex;
      v15 = *(&blocks[swiftMetadataMinBlockIndex] + 1);
      if ((v15 & 7) == 1 && self->_swiftMetadataClassInfoIndex == v15 >> 41)
      {
        if (v12 <= v11)
        {
          LODWORD(v17) = 2 * v12;
          if ((2 * v12) <= 0x100)
          {
            v17 = 256;
          }

          else
          {
            v17 = v17;
          }

          do
          {
            v16 = v17;
            v17 = (2 * v17);
          }

          while (v16 < v11);
          v18 = malloc_type_realloc(v10, 16 * v16, 0x1000040451B5BE8uLL);
          if (!v18)
          {
            NSLog(&cfstr_OutOfMemoryFai.isa, "swiftMetadataBlocks", v12, v16);
            abort();
          }

          v10 = v18;
          bzero(&v18[v12], 16 * (v16 - v12));
          blocks = self->_blocks;
        }

        else
        {
          v16 = v12;
        }

        v10[v11++] = blocks[v14];
        swiftMetadataMaxBlockIndex = self->_swiftMetadataMaxBlockIndex;
        v12 = v16;
      }

      swiftMetadataMinBlockIndex = v14 + 1;
    }

    while (v14 + 1 <= swiftMetadataMaxBlockIndex);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__VMUTaskMemoryScanner__identifyNonObjectsPointingToSwiftMetadata__block_invoke;
  v19[3] = &unk_1E82779F0;
  v19[4] = self;
  v19[5] = Range;
  v19[6] = v4;
  v19[7] = v10;
  v20 = v11;
  [(VMUTaskMemoryScanner *)self _withOrderedNodeMapper:v19];
  if (v10)
  {
    free(v10);
  }
}

uint64_t __66__VMUTaskMemoryScanner__identifyNonObjectsPointingToSwiftMetadata__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (*(v2 + 88))
  {
    v4 = result;
    v5 = 0;
    v6 = 8;
    do
    {
      v7 = (*(v2 + 80) + v6);
      v9 = *v7;
      v8 = v7 - 1;
      if ((v9 & 0xFFFFFE0000000007) == 1)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __66__VMUTaskMemoryScanner__identifyNonObjectsPointingToSwiftMetadata__block_invoke_2;
        v11[3] = &unk_1E82779C8;
        v12 = *(v4 + 40);
        v10 = *(v4 + 56);
        v11[4] = v2;
        v13 = v10;
        v14 = v8;
        v15 = *(v4 + 64);
        result = (*(a2 + 16))(a2, v5, 1, v11);
        v2 = *(v4 + 32);
      }

      ++v5;
      v6 += 16;
    }

    while (v5 < *(v2 + 88));
  }

  return result;
}

void __66__VMUTaskMemoryScanner__identifyNonObjectsPointingToSwiftMetadata__block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = [VMUTask ptrauthStripDataPointer:?];
  if (HIDWORD(v4))
  {
    v5 = (v4 & 7) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v4;
    if (v4 - *(a1 + 40) >= *(a1 + 48))
    {
      v9 = *(a1 + 72);
      if (v9)
      {
        v10 = *(a1 + 56);
        do
        {
          v11 = v9 >> 1;
          v12 = &v10[2 * (v9 >> 1)];
          if (*v12 <= v4)
          {
            if (((v12[1] >> 5) & 0xFFFFFFFFFLL) + *v12 > v4)
            {
              goto LABEL_7;
            }

            v10 = v12 + 2;
            v11 = --v9 >> 1;
          }

          v13 = v9 >= 2;
          v9 = v11;
        }

        while (v13);
      }
    }

    else
    {
LABEL_7:
      v14 = [*(*(a1 + 32) + 64) memoryReader];
      v7 = v14[2](v14, v6, 8);
      if (v7)
      {
        v8 = *v7;

        if (v8 == 1280)
        {
          *(*(a1 + 64) + 8) = *(*(a1 + 64) + 8) & 0x1FFFFFFFFFFLL | (*(*(a1 + 32) + 360) << 41);
        }
      }

      else
      {
      }
    }
  }
}

- (id)_recursivelyIdentifySwiftAsyncTaskSlabs:(unint64_t)slabs containerRange:(_VMURange)range remoteBlock:(unint64_t)block mappedBlock:(unint64_t)mappedBlock asyncTaskSlabMetadataIsa:(unint64_t)isa nestingLevel:(unsigned int)level
{
  length = range.length;
  location = range.location;
  levelCopy2 = level;
  v39 = 0u;
  v40 = 0u;
  vmu_swift_reflection_asyncTaskSlabAllocations(*[(VMUObjectIdentifier *)self->_objectIdentifier swiftMirror], &v39);
  if (v39)
  {
    if (_debugSwiftAsyncPrintfIsEnabled_onceToken != -1)
    {
      [VMUTaskMemoryScanner _recursivelyIdentifySwiftAsyncTaskSlabs:containerRange:remoteBlock:mappedBlock:asyncTaskSlabMetadataIsa:nestingLevel:];
    }

    if (_debugSwiftAsyncPrintfIsEnabled_enabled == 1)
    {
      _debugSwiftAsyncPrintf(level, "Bailing because vmu_reflection_interop_asyncTaskSlabAllocations error: %s\n");
    }

LABEL_31:
    v28 = 0;
    goto LABEL_32;
  }

  v16 = v40;
  if (!VMURangeContainsRange(location, length, slabs, v40))
  {
    if (_debugSwiftAsyncPrintfIsEnabled_onceToken != -1)
    {
      [VMUTaskMemoryScanner _recursivelyIdentifySwiftAsyncTaskSlabs:containerRange:remoteBlock:mappedBlock:asyncTaskSlabMetadataIsa:nestingLevel:];
    }

    if (_debugSwiftAsyncPrintfIsEnabled_enabled == 1)
    {
      _debugSwiftAsyncPrintf(level, "Bailing because slab %p [%llu] does not fit inside container\n");
    }

    goto LABEL_31;
  }

  if (_debugSwiftAsyncPrintfIsEnabled_onceToken != -1)
  {
    [VMUTaskMemoryScanner _recursivelyIdentifySwiftAsyncTaskSlabs:containerRange:remoteBlock:mappedBlock:asyncTaskSlabMetadataIsa:nestingLevel:];
  }

  selfCopy = self;
  if (_debugSwiftAsyncPrintfIsEnabled_enabled == 1)
  {
    _debugSwiftAsyncPrintf(level, "Slab %p [%llu], next slab %p\n", slabs, v16, *(&v39 + 1));
  }

  v17 = [VMUMutableFieldInfo alloc];
  v37 = [(VMUFieldInfo *)v17 initWithName:@"slab" type:0 scan:0 offset:(slabs - location) size:v40];
  if (DWORD1(v40))
  {
    v18 = 0;
    v33 = v16;
    slabsCopy = slabs;
    while (2)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(&v40 + 1) + 16 * v18;
      v21 = *v20;
      v22 = *(v20 + 8);
      if (!VMURangeContainsRange(slabs, v16, *v20, v22))
      {
        v30 = v19;
LABEL_36:
        objc_autoreleasePoolPop(v30);
        v28 = 0;
        v31 = v37;
        goto LABEL_38;
      }

      if (_debugSwiftAsyncPrintfIsEnabled_onceToken != -1)
      {
        [VMUTaskMemoryScanner _recursivelyIdentifySwiftAsyncTaskSlabs:containerRange:remoteBlock:mappedBlock:asyncTaskSlabMetadataIsa:nestingLevel:];
      }

      v35 = v18;
      context = v19;
      if (_debugSwiftAsyncPrintfIsEnabled_enabled == 1)
      {
        v23 = VMURangeDescription(v21, v22);
        _debugSwiftAsyncPrintf(levelCopy2 + 1, "Chunk %s\n", [v23 UTF8String]);
      }

      v24 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"chunk" type:0 scan:1 offset:(v21 - slabs) size:v22];
      [(VMUMutableFieldInfo *)v37 addSubField:v24];
      v25 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) - block;
      while (v25 <= v21 - block + v22 - 8)
      {
        if (!VMURangeContainsRange(v21, v22, v25 + block, 8))
        {
          goto LABEL_35;
        }

        if (*(v25 + mappedBlock) == isa)
        {
          LODWORD(v32) = level + 2;
          v26 = [(VMUTaskMemoryScanner *)selfCopy _recursivelyIdentifySwiftAsyncTaskSlabs:v25 + block containerRange:v21 remoteBlock:v22 mappedBlock:block asyncTaskSlabMetadataIsa:mappedBlock nestingLevel:isa, v32];
          if (!v26)
          {
LABEL_35:

            v30 = context;
            goto LABEL_36;
          }

          v27 = v26;
          [(VMUMutableFieldInfo *)v24 addSubField:v26];
          v25 = ((v25 + block + [v27 size] + 7) & 0xFFFFFFFFFFFFFFF8) - block;
        }

        else
        {
          v25 += 8;
        }
      }

      objc_autoreleasePoolPop(context);
      v18 = v35 + 1;
      levelCopy2 = level;
      v16 = v33;
      slabs = slabsCopy;
      if (v35 + 1 < DWORD1(v40))
      {
        continue;
      }

      break;
    }
  }

  v31 = v37;
  v28 = v37;
LABEL_38:

LABEL_32:

  return v28;
}

- (void)_identifyAttributeGraphAllocationsIfPreciseIdentificationIsUnavailable
{
  isExclaveCore = [(VMUTask *)self->_task isExclaveCore];
  [(VMUObjectIdentifier *)self->_objectIdentifier symbolicator];
  if (isExclaveCore)
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwner();
  }

  else
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  }

  v5 = SymbolOwner;
  if ((CSIsNull() & 1) == 0)
  {
    CSSymbolOwnerGetSymbolWithMangledName();
    if (CSIsNull())
    {
      v22 = [(NSMutableArray *)self->_zoneNames indexesOfObjectsPassingTest:&__block_literal_global_256];
      if ([v22 count] && self->_regionsCount)
      {
        v6 = 0;
        v7 = -1;
        do
        {
          v23 = v6;
          v8 = self->_regions + 64 * v6;
          v9 = *v8;
          if ([v22 containsIndex:v9[37]])
          {
            v10 = *(v8 + 4);
            if (*(v9 + 17) + v10 > v10)
            {
              v11 = v10 + 1;
              v12 = *(v8 + 4);
              do
              {
                v13 = &self->_blocks[v10];
                v16 = *(v13 + 1);
                v15 = v13 + 1;
                v14 = v16;
                if (!(v16 >> 41))
                {
                  if (v7 == -1)
                  {
                    v17 = v5;
                    Path = CSSymbolOwnerGetPath();
                    if (Path)
                    {
                      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Path];
                    }

                    else
                    {
                      v19 = &stru_1F461F9C8;
                    }

                    v20 = [(VMUClassInfo *)[VMUMutableClassInfo alloc] initWithClassName:@"AttributeGraph Data" binaryPath:v19 type:8];
                    [(VMUMutableClassInfo *)v20 setDefaultScanType:1];
                    v7 = [(VMUTaskMemoryScanner *)self _indexForClassInfo:v20];

                    v14 = *v15;
                    v5 = v17;
                  }

                  *v15 = v14 & 0x1FFFFFFFFFFLL | (v7 << 41);
                  v12 = *(v8 + 4);
                }

                v10 = v11;
              }

              while (*(v9 + 17) + v12 > v11++);
            }
          }

          else if ([*(v9 + 4) isEqualToString:@"AttributeGraph Data"])
          {
            self->_attributeGraphVMRegionBlockIndex = *(v8 + 4);
          }

          v6 = v23 + 1;
        }

        while (v23 + 1 < self->_regionsCount);
      }
    }
  }
}

- (void)_identifySwiftAsyncTaskSlabs
{
  v44[1] = *MEMORY[0x1E69E9840];
  swiftConcurrencyDebugAsyncTaskMetadataIsa = [(VMUObjectIdentifier *)self->_objectIdentifier swiftConcurrencyDebugAsyncTaskMetadataIsa];
  swiftConcurrencyDebugAsyncTaskSlabMetadataIsa = [(VMUObjectIdentifier *)self->_objectIdentifier swiftConcurrencyDebugAsyncTaskSlabMetadataIsa];
  if (swiftConcurrencyDebugAsyncTaskMetadataIsa)
  {
    v5 = swiftConcurrencyDebugAsyncTaskSlabMetadataIsa == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v7 = swiftConcurrencyDebugAsyncTaskSlabMetadataIsa;
    v8 = [(VMUClassInfoMap *)self->_classInfoIndexer classInfoForAddress:swiftConcurrencyDebugAsyncTaskMetadataIsa];
    v9 = [(VMUClassInfoMap *)self->_classInfoIndexer classInfoForAddress:v7];
    v40 = v8;
    v10 = [(VMUClassInfoMap *)self->_classInfoIndexer indexForClassInfo:v8];
    v41 = v9;
    v11 = [(VMUClassInfoMap *)self->_classInfoIndexer indexForClassInfo:v9];
    blocksCount = self->_blocksCount;
    if (blocksCount)
    {
      v13 = v11;
      v14 = 0;
      while (1)
      {
        v15 = &self->_blocks[v14];
        if ((*(v15 + 1) & 7) != 1)
        {
          goto LABEL_58;
        }

        v16 = *(v15 + 1) >> 41;
        if (v10 != v16 && v13 != v16)
        {
          goto LABEL_58;
        }

        swiftTaskAllocationBlockIndexesSize = self->_swiftTaskAllocationBlockIndexesSize;
        swiftTaskAllocationBlockIndexesCount = self->_swiftTaskAllocationBlockIndexesCount;
        if (swiftTaskAllocationBlockIndexesSize <= swiftTaskAllocationBlockIndexesCount)
        {
          if ((2 * swiftTaskAllocationBlockIndexesSize) <= 0x64)
          {
            v20 = 100;
          }

          else
          {
            v20 = 2 * swiftTaskAllocationBlockIndexesSize;
          }

          do
          {
            v21 = v20;
            v20 *= 2;
          }

          while (v21 < swiftTaskAllocationBlockIndexesCount);
          self->_swiftTaskAllocationBlockIndexesSize = v21;
          v22 = malloc_type_realloc(self->_swiftTaskAllocationBlockIndexes, 4 * v21, 0x100004052888210uLL);
          self->_swiftTaskAllocationBlockIndexes = v22;
          if (!v22)
          {
            NSLog(&cfstr_OutOfMemoryFai.isa, "_swiftTaskAllocationBlockIndexes", swiftTaskAllocationBlockIndexesSize, self->_swiftTaskAllocationBlockIndexesSize);
            abort();
          }

          bzero(&v22[swiftTaskAllocationBlockIndexesSize], 4 * (self->_swiftTaskAllocationBlockIndexesSize - swiftTaskAllocationBlockIndexesSize));
          swiftTaskAllocationBlockIndexesCount = self->_swiftTaskAllocationBlockIndexesCount;
        }

        swiftTaskAllocationBlockIndexes = self->_swiftTaskAllocationBlockIndexes;
        self->_swiftTaskAllocationBlockIndexesCount = swiftTaskAllocationBlockIndexesCount + 1;
        swiftTaskAllocationBlockIndexes[swiftTaskAllocationBlockIndexesCount] = v14;
        var0 = v15->var0;
        v24 = *(v15 + 1);
        if (_debugSwiftAsyncPrintfIsEnabled_onceToken != -1)
        {
          [VMUTaskMemoryScanner _recursivelyIdentifySwiftAsyncTaskSlabs:containerRange:remoteBlock:mappedBlock:asyncTaskSlabMetadataIsa:nestingLevel:];
        }

        v26 = (v24 >> 5) & 0xFFFFFFFFFLL;
        if (_debugSwiftAsyncPrintfIsEnabled_enabled == 1)
        {
          v27 = "AsyncTask Slab";
          if (v10 == *(v15 + 1) >> 41)
          {
            v27 = "AsyncTask";
          }

          _debugSwiftAsyncPrintf(0, "Block %p [%llu] is %s\n", var0, (v24 >> 5) & 0xFFFFFFFFFLL, v27);
        }

        if (v10 != *(v15 + 1) >> 41)
        {
          break;
        }

        v28 = vmu_swift_reflection_asyncTaskSlabPointer(*[(VMUObjectIdentifier *)self->_objectIdentifier swiftMirror]);
        if (!v28)
        {
          v32 = v29;
          v36 = VMURangeContainsRange(var0, (v24 >> 5) & 0xFFFFFFFFFLL, v29, 8);
          if (_debugSwiftAsyncPrintfIsEnabled_onceToken != -1)
          {
            [VMUTaskMemoryScanner _recursivelyIdentifySwiftAsyncTaskSlabs:containerRange:remoteBlock:mappedBlock:asyncTaskSlabMetadataIsa:nestingLevel:];
          }

          if (_debugSwiftAsyncPrintfIsEnabled_enabled == 1)
          {
            v37 = " not";
            if (v36)
            {
              v37 = "";
            }

            _debugSwiftAsyncPrintf(1, "Found first slab at %p,%s in same block\n", v32, v37);
          }

          if (!v36)
          {
            goto LABEL_57;
          }

          v31 = [v40 mutableCopy];
          goto LABEL_40;
        }

        v30 = v28;
        if (_debugSwiftAsyncPrintfIsEnabled_onceToken != -1)
        {
          [VMUTaskMemoryScanner _recursivelyIdentifySwiftAsyncTaskSlabs:containerRange:remoteBlock:mappedBlock:asyncTaskSlabMetadataIsa:nestingLevel:];
        }

        if (_debugSwiftAsyncPrintfIsEnabled_enabled == 1)
        {
          _debugSwiftAsyncPrintf(1, "vmu_swift_reflection_asyncTaskSlabPointer error: %s\n", v30);
        }

LABEL_57:
        blocksCount = self->_blocksCount;
LABEL_58:
        if (++v14 >= blocksCount)
        {
          goto LABEL_59;
        }
      }

      v31 = [v41 mutableCopy];
      [v31 setDefaultScanType:0];
      v32 = var0;
LABEL_40:
      v42 = 0;
      v43 = 0;
      if (![(VMUTaskMemoryCache *)self->_memoryCache mapAddress:var0 size:v26 returnedAddress:&v43 returnedSize:&v42])
      {
        LODWORD(v39) = 1;
        v33 = [(VMUTaskMemoryScanner *)self _recursivelyIdentifySwiftAsyncTaskSlabs:v32 containerRange:var0 remoteBlock:v26 mappedBlock:var0 asyncTaskSlabMetadataIsa:v43 nestingLevel:v7, v39];
        v34 = v33;
        if (v33)
        {
          v44[0] = v33;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
          [v31 setFields:v35];

          *(v15 + 1) = *(v15 + 1) & 0x1FFFFFFFFFFLL | ([(VMUClassInfoMap *)self->_classInfoIndexer addClassInfo:v31 forAddress:0]<< 41);
        }

        else
        {
          if (_debugSwiftAsyncPrintfIsEnabled_onceToken != -1)
          {
            [VMUTaskMemoryScanner _recursivelyIdentifySwiftAsyncTaskSlabs:containerRange:remoteBlock:mappedBlock:asyncTaskSlabMetadataIsa:nestingLevel:];
          }

          if (_debugSwiftAsyncPrintfIsEnabled_enabled == 1)
          {
            _debugSwiftAsyncPrintf(1, "Error getting info for slab, scanning block %p [%llu] conservatively\n", var0, v26);
          }
        }
      }

      goto LABEL_57;
    }

LABEL_59:

    goto LABEL_60;
  }

  if (_debugSwiftAsyncPrintfIsEnabled_onceToken != -1)
  {
    _debugSwiftAsyncPrintfIsEnabled_cold_1();
  }

  if (_debugSwiftAsyncPrintfIsEnabled_enabled != 1)
  {
LABEL_60:
    v38 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = *MEMORY[0x1E69E9840];

  _debugSwiftAsyncPrintf(0, "One or both of the AsyncTask and AsyncTask Slab metadata isas isn't known, so skipping precise scanning of AsyncTasks and AsyncTask Slabs.\n");
}

- (void)_identifyNonObjectsUsingStackBacktrace
{
  if (![(VMUTask *)self->_task isCore])
  {
    v3 = [VMUTaskStackLogReader alloc];
    taskPort = [(VMUTask *)self->_task taskPort];
    symbolicator = [(VMUObjectIdentifier *)self->_objectIdentifier symbolicator];
    v7 = [(VMUTaskStackLogReader *)v3 initWithTask:taskPort symbolicator:symbolicator, v6];
    classInfoIndexer = self->_classInfoIndexer;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__VMUTaskMemoryScanner__identifyNonObjectsUsingStackBacktrace__block_invoke;
    v9[3] = &unk_1E8277A38;
    v9[4] = self;
    [(VMUStackLogReaderBase *)v7 identifyNonObjectsUsingStackBacktraces:self classInfoMap:classInfoIndexer classInfoSetterBlock:v9];
  }
}

uint64_t __62__VMUTaskMemoryScanner__identifyNonObjectsUsingStackBacktrace__block_invoke(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = *(*(result + 32) + 80) + 16 * a2;
  *(v3 + 8) = *(v3 + 8) & 0x1FFFFFFFFFFLL | (a3 << 41);
  return result;
}

- (void)_findMarkedAbandonedBlocks
{
  userMarkedAbandoned = self->_userMarkedAbandoned;
  if (userMarkedAbandoned)
  {
    free(userMarkedAbandoned);
    self->_userMarkedAbandoned = 0;
  }

  if (!self->_abandonedMarkingEnabled || !self->_regionsCount)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    if (![*(&self->_regions->var0 + 8 * v4) isAnalysisToolRegion])
    {
      goto LABEL_46;
    }

    v8 = &self->_regions->var0 + 8 * v4;
    memoryCache = self->_memoryCache;
    regionsCount = self->_regionsCount;
    v11 = self->_task;
    v12 = memoryCache;
    if (v8[6])
    {
      goto LABEL_8;
    }

    if (![*v8 isSpecialPhysFootprintRegion])
    {
      aBlock[0] = 0;
      v67 = 0;
      v35 = [(VMUTaskMemoryCache *)v12 mapAddress:*(*v8 + 1) size:*(*v8 + 2) returnedAddress:aBlock returnedSize:&v67];
      if (v35)
      {
        v61 = v35;
        if ((*(*v8 + 13) & 3u) - 1 >= 2)
        {
          v36 = task_exists(v11);
          if (v4 != regionsCount - 1 && v36)
          {
            if ([*v8 isJavascriptJitExecutableAllocator])
            {
              v8[5] = (v8[5] | 1);
            }

            else
            {
              v60 = *MEMORY[0x1E69E9848];
              address = [*v8 address];
              v58 = *(*v8 + 2) + *(*v8 + 1);
              v39 = *(*v8 + 6);
              v57 = vm_prot_strings[v39];
              v40 = VMUExclaveOrDarwinRegionTypeDescriptionForTagShareProtAndPager(*(*v8 + 232), *(*v8 + 104), *(*v8 + 50), v39, *(*v8 + 49));
              uTF8String = [v40 UTF8String];
              v42 = *(*v8 + 2) >> *MEMORY[0x1E69E9AC0];
              v43 = "pages";
              if (v42 == 1)
              {
                v43 = "page";
              }

              v44 = " [root]";
              if (v8[3] == v8[4])
              {
                v44 = "";
              }

              fprintf(v60, "Failed to map remote region: [%#llx-%#llx] %s %s (%llu %s)%s (error: %d)\n", address, v58, v57, uTF8String, v42, v43, v44, v61);
            }
          }
        }

        goto LABEL_45;
      }

      v38 = aBlock[0];
      v8[5] = (v8[5] & 1 | (2 * v67));
      v8[6] = v38;
      v8[7] = v8;
LABEL_8:

      regions = self->_regions;
      v14 = *(&regions[1].var0 + 8 * v4);
      if (v14)
      {
        v15 = MEMORY[0x1E69E9AC8];
        v16 = *MEMORY[0x1E69E9AC8];
        v17 = v7;
        do
        {
          v18 = v16 + v14;
          if (*v14 == 0x1DE67829AD1A2FBBLL && *(v14 + 8) <= 1u)
          {
            v19 = *(v14 + 20);
            v20 = v6 + v19 - 1;
            if (v17 <= v20)
            {
              v21 = v16 >> 3;
              if (v21 <= 2 * v17)
              {
                LODWORD(v21) = 2 * v17;
              }

              if (v21 <= 0x100)
              {
                v21 = 256;
              }

              else
              {
                v21 = v21;
              }

              do
              {
                v7 = v21;
                v21 = (2 * v21);
              }

              while (v7 < v20);
              v22 = malloc_type_realloc(v5, 8 * v7, 0x100004000313F17uLL);
              if (!v22)
              {
                NSLog(&cfstr_OutOfMemoryFai.isa, "allMarkedAddresses", v17, v7);
                abort();
              }

              v5 = v22;
              v19 = *(v14 + 20);
            }

            else
            {
              v7 = v17;
            }

            v23 = *(v14 + 12) + v14;
            v24 = v19;
            if (v19)
            {
              v25 = (*(v14 + 12) + v14);
              v26 = v24;
              do
              {
                v28 = *v25++;
                v27 = v28;
                if (v28)
                {
                  *(v5 + v6++) = v27;
                }

                --v26;
              }

              while (v26);
            }

            v29 = v23 + 8 * v24;
            v16 = *v15;
            v18 = (v29 + *v15 - 1) & -*v15;
            regions = self->_regions;
          }

          else
          {
            v7 = v17;
          }

          v30 = v18 >= *(&regions[1].var0 + 8 * v4) + (*(regions + 8 * v4 + 5) >> 1) || v18 == 0;
          v17 = v7;
          v14 = v18;
        }

        while (!v30);
      }

      v31 = self->_memoryCache;
      v11 = self->_objectIdentifier;
      v32 = v31;
      v12 = v32;
      v33 = &regions->var0 + 8 * v4;
      if (v33[6])
      {
        if (v33[7] == v33)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = ___unmapRegion_block_invoke;
          aBlock[3] = &unk_1E8277CB0;
          v63 = v32;
          v65 = regions + 64 * v4;
          v64 = v11;
          v66 = regions;
          v37 = _Block_copy(aBlock);
          v37[2]();
        }

        else
        {
          v34 = v33[5] & 1;
          v33[6] = 0;
          v33[7] = 0;
          v33[5] = v34;
        }
      }
    }

LABEL_45:

LABEL_46:
    ++v4;
  }

  while (v4 < self->_regionsCount);
  if (v5)
  {
    blocksCount = self->_blocksCount;
    v46 = malloc_type_calloc(1uLL, ((blocksCount + 7) >> 3) + 4, 0xB2EC2458uLL);
    *v46 = blocksCount;
    self->_userMarkedAbandoned = v46;
    mergesort_b(v5, v6, 8uLL, &__block_literal_global_280);
    if (v6)
    {
      v47 = 0;
      v48 = 0;
      do
      {
        v49 = self->_blocksCount;
        if (v48 >= v49)
        {
          break;
        }

        blocks = self->_blocks;
        v51 = &blocks[v48] + 8;
        v52 = v51;
        while (1)
        {
          v53 = *v52;
          v52 += 2;
          if ((v53 & 7) == 1)
          {
            v54 = *(v51 - 8);
            v55 = *(v5 + v47);
            if (v54 >= v55)
            {
              break;
            }
          }

          ++v48;
          v51 = v52;
          if (v49 == v48)
          {
            v48 = self->_blocksCount;
            goto LABEL_67;
          }
        }

        if (blocks[v48].var0 == v55)
        {
          v56 = self->_userMarkedAbandoned;
          if (*v56 > v48)
          {
            *(v56 + (v48 >> 3) + 4) |= 1 << (v48 & 7);
          }
        }

        v48 = v48;
LABEL_67:
        ++v47;
      }

      while (v47 != v6);
    }

    free(v5);
  }
}

uint64_t __50__VMUTaskMemoryScanner__findMarkedAbandonedBlocks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 != *a3;
  }
}

- (void)refineTypesWithOverlay:(id)overlay
{
  [(VMUClassInfoMap *)self->_classInfoIndexer _applyTypeOverlay:overlay];

  [(VMUTaskMemoryScanner *)self _updateLinearClassInfos];
}

- (void)applyTypeOverlayToMutableInfo:(id)info
{
  classInfoIndexer = self->_classInfoIndexer;
  scanOverlay = self->_scanOverlay;
  infoCopy = info;
  refinementRules = [(VMUScanOverlay *)scanOverlay refinementRules];
  [(VMUClassInfoMap *)classInfoIndexer _applyTypeOverlayRules:refinementRules toMutableInfo:infoCopy];
}

- (void)_buildRegionFirstBlockIndexOnPageArrays
{
  v73 = *MEMORY[0x1E69E9840];
  self->_regionMap->var0 = self->_blocks;
  regionMap = self->_regionMap;
  regionMap->var1 = self->_blocksCount;
  regionMap->var2 = self->_maxInteriorOffset;
  if (self->_regionsCount)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    do
    {
      regions = self->_regions;
      v7 = *(&regions->var1 + 8 * v4);
      if (v7)
      {
        free(v7);
        *(&self->_regions->var1 + 8 * v4) = 0;
        regions = self->_regions;
      }

      v8 = regions + 64 * v4;
      *(v8 + 2) = 0xFFFFFFFFLL;
      if (([*v8 isSubmap] & 1) == 0)
      {
        blocksCount = self->_blocksCount;
        if (v5 >= blocksCount)
        {
          break;
        }

        v10 = self->_regions + 64 * v4;
        v11 = *(*v10 + 16) + *(*v10 + 8);
        blocks = self->_blocks;
        v13 = v5;
        v14 = &blocks[v5];
        v15 = v14 + 1;
        while (((*v15 >> 5) & 0xFFFFFFFFFuLL) + *(v15 - 1) < *(*v10 + 8))
        {
          v15 += 2;
          ++v13;
          ++v14;
          if (blocksCount == v13)
          {
            goto LABEL_50;
          }
        }

        if (blocks[v13].var0 >= v11)
        {
          LODWORD(v5) = v13;
        }

        else
        {
          if (blocksCount <= v13)
          {
            LODWORD(v5) = v13;
          }

          else
          {
            v5 = v13;
            while (1)
            {
              var0 = v14->var0;
              ++v14;
              if (var0 >= v11)
              {
                break;
              }

              if (++v5 >= blocksCount)
              {
                LODWORD(v5) = self->_blocksCount;
                break;
              }
            }
          }

          v17 = self->_regionMap;
          v18 = *(v10 + 1);
          if (v18)
          {
            free(v18);
            *(v10 + 1) = 0;
          }

          *(v10 + 4) = v13;
          *(v10 + 5) = v5 - v13;
          if ((v5 - v13) > 0xFF)
          {
            v20 = v17->var0;
            v53 = &v20[v13];
            v21 = *MEMORY[0x1E69E9AC8];
            v22 = -*MEMORY[0x1E69E9AC8];
            v23 = v53->var0 & v22;
            v19 = (v5 - 1);
            v51 = &v20[v19];
            v24 = ((*(v51 + 1) >> 5) & 0xFFFFFFFFFLL) + v51->var0;
            if (v24 >= *(*v10 + 16) + *(*v10 + 8))
            {
              v24 = *(*v10 + 16) + *(*v10 + 8);
            }

            v25 = (v21 + v24 - 1) & v22;
            v26 = v25 - v23;
            if (v25 <= v23)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v40 = v53->var0;
                v43 = (*(v53 + 1) >> 5) & 0xFFFFFFFFFLL;
                v42 = v43 + v53->var0;
                v41 = v51->var0;
                v47 = (*(v51 + 1) >> 5) & 0xFFFFFFFFFLL;
                v45 = v47 + v51->var0;
                v49 = [*v10 description];
                v35 = v49;
                uTF8String = [v49 UTF8String];
                *buf = 67111426;
                *v56 = v13;
                *&v56[4] = 1024;
                *&v56[6] = v5 - v13;
                *v57 = 1024;
                *&v57[2] = v5 - 1;
                *v58 = 2048;
                *&v58[2] = v40;
                v59 = 2048;
                v60 = v42;
                v61 = 2048;
                v62 = v43;
                v63 = 2048;
                v64 = v41;
                v65 = 2048;
                v66 = v45;
                v67 = 2048;
                v68 = v47;
                v69 = 2080;
                v70 = uTF8String;
                _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VMUTaskMemoryScanner _noteBlocksInRegion startIndex %u count %u lastIndex %u  startBlock %#llx-%#llx[%llu] lastBlock %#llx-%#llx[%llu]  %s\n", buf, 0x5Au);
              }

              if (v25 == v23)
              {
                [VMUTaskMemoryScanner _buildRegionFirstBlockIndexOnPageArrays];
              }

              v21 = *MEMORY[0x1E69E9AC8];
              v19 = (v5 - 1);
              v26 = v25 - v23;
            }

            if (v26 > v21)
            {
              v27 = (v26 >> *MEMORY[0x1E69E9AC0]) + 1;
              v28 = malloc_type_calloc(v27, 4uLL, 0x100004052888210uLL);
              *(v10 + 1) = v28;
              if (!v28)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v44 = v53->var0;
                  v50 = (*(v53 + 1) >> 5) & 0xFFFFFFFFFLL;
                  v48 = v50 + v53->var0;
                  v46 = v51->var0;
                  v52 = (*(v51 + 1) >> 5) & 0xFFFFFFFFFLL;
                  v54 = [*v10 description];
                  v37 = v54;
                  uTF8String2 = [v54 UTF8String];
                  *buf = 134220546;
                  *v56 = v27;
                  *&v56[8] = 1024;
                  *v57 = v13;
                  *&v57[4] = 1024;
                  *v58 = v5 - v13;
                  *&v58[4] = 1024;
                  *&v58[6] = v5 - 1;
                  v59 = 2048;
                  v60 = v44;
                  v61 = 2048;
                  v62 = v48;
                  v63 = 2048;
                  v64 = v50;
                  v65 = 2048;
                  v66 = v46;
                  v67 = 2048;
                  v68 = v52 + v46;
                  v69 = 2048;
                  v70 = v52;
                  v71 = 2080;
                  v72 = uTF8String2;
                  _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "numPages: %zu  VMUTaskMemoryScanner _noteBlocksInRegion startIndex %u count %u lastIndex %u  startBlock %#llx-%#llx[%llu] lastBlock %#llx-%#llx[%llu]  %s\n", buf, 0x64u);
                }

                v28 = *(v10 + 1);
                if (!v28)
                {
                  [VMUTaskMemoryScanner _buildRegionFirstBlockIndexOnPageArrays];
                }
              }

              if (v27)
              {
                v29 = 0;
                v30 = *MEMORY[0x1E69E9AC8];
                do
                {
                  v28[v29] = v13;
                  v23 += v30;
                  v31 = v13;
                  v32 = v13 - 1;
                  v33 = &v20[v13];
                  do
                  {
                    ++v32;
                    if (v31 >= v5)
                    {
                      break;
                    }

                    v34 = v33->var0;
                    ++v33;
                    ++v31;
                  }

                  while (v34 < v23);
                  if (((*(&v20[v32 - 1] + 1) >> 5) & 0xFFFFFFFFFLL) + v20[v32 - 1].var0 <= v23)
                  {
                    LODWORD(v13) = v32;
                  }

                  else
                  {
                    LODWORD(v13) = v32 - 1;
                  }

                  v29 = (v29 + 1);
                }

                while (v27 > v29);
              }

              v19 = (v5 - 1);
            }
          }

          else
          {
            v19 = (v5 - 1);
          }

          if (((*(&self->_blocks[v19] + 1) >> 5) & 0xFFFFFFFFFLL) + self->_blocks[v19].var0 > v11)
          {
            LODWORD(v5) = v19;
          }
        }
      }

      ++v4;
    }

    while (v4 < self->_regionsCount);
  }

LABEL_50:
  v39 = *MEMORY[0x1E69E9840];
}

- (const)getCachedScanInfoForClassWithIsa:(unsigned int)isa classInfo:(id)info scanCaches:(_VMUScanLocationCache *)caches
{
  result = 0;
  if (isa)
  {
    if (info)
    {
      result = caches[isa];
      if (!result)
      {
        instanceSize = [info instanceSize];
        v29[0] = 0;
        v29[1] = v29;
        v29[2] = 0x2020000000;
        v30 = (instanceSize >> 3) + 2;
        caches[isa] = malloc_type_malloc(4 * v30, 0x100004052888210uLL);
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __78__VMUTaskMemoryScanner_getCachedScanInfoForClassWithIsa_classInfo_scanCaches___block_invoke;
        v23[3] = &unk_1E8277A60;
        v23[4] = &v25;
        v23[5] = v29;
        v23[6] = caches;
        isaCopy = isa;
        [info enumerateScanningLocationsForSize:instanceSize withBlock:v23];
        defaultScanType = [info defaultScanType];
        v12 = caches[isa];
        v13 = *(v26 + 6);
        *(v26 + 6) = v13 + 1;
        defaultScanType2 = [info defaultScanType];
        v15 = (instanceSize + 7) & 0xFFFFF8;
        if (defaultScanType == 1)
        {
          v15 = instanceSize;
        }

        v12[v13] = (v15 & 0xFFFFFF | ((defaultScanType2 & 0x3F) << 24));
        v16 = caches[isa];
        v17 = *(v26 + 6);
        *(v26 + 6) = v17 + 1;
        v16[v17] = ((([info defaultScanType] & 0x3F) << 24) | 0xFFFFFF);
        swiftHeapGenericLocalVariableClassInfoIndex = self->_swiftHeapGenericLocalVariableClassInfoIndex;
        v19 = [info infoType] - 8;
        if (v19 <= 0x38 && ((1 << v19) & 0x100000001000001) != 0)
        {
          v20 = caches[isa];
          v21 = *v20;
        }

        else
        {
          v20 = caches[isa];
          v21 = *v20;
          if (swiftHeapGenericLocalVariableClassInfoIndex != isa)
          {
            v22 = 0;
            goto LABEL_10;
          }
        }

        v22 = 0x80000000;
LABEL_10:
        *v20 = (v22 | *&v21 & 0x7FFFFFFF);
        _Block_object_dispose(&v25, 8);
        _Block_object_dispose(v29, 8);
        return caches[isa];
      }
    }
  }

  return result;
}

void __78__VMUTaskMemoryScanner_getCachedScanInfoForClassWithIsa_classInfo_scanCaches___block_invoke(uint64_t a1, void *a2, int a3, char a4)
{
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 24);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 24);
  if (v9 + 2 >= v11)
  {
    *(v10 + 24) = 2 * v11;
    v13 = malloc_type_realloc(*(*(a1 + 48) + 8 * *(a1 + 56)), 4 * *(*(*(a1 + 40) + 8) + 24), 0x100004052888210uLL);
    v12 = *(a1 + 56);
    *(*(a1 + 48) + 8 * v12) = v13;
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 24);
  }

  else
  {
    v12 = *(a1 + 56);
  }

  v14 = *(*(a1 + 48) + 8 * v12);
  *(v8 + 24) = v9 + 1;
  v15 = a3 & 0xFFFFFF | ((a4 & 0x3F) << 24);
  if (a2)
  {
    v16 = [a2 typeName];
    if (v16)
    {
      v20 = v16;
      v17 = [a2 typeName];
      if ([v17 length])
      {
        v18 = [a2 typeName];
        if ([v18 isEqualToString:@"?"])
        {
          v19 = 0x40000000;
        }

        else
        {
          v19 = 0;
        }

        *(v14 + 4 * v9) = v19 | v15;
      }

      else
      {
        *(v14 + 4 * v9) = v15 | 0x40000000;
      }

      v16 = v20;
    }

    else
    {
      *(v14 + 4 * v9) = v15;
    }
  }

  else
  {
    *(v14 + 4 * v9) = v15;
  }
}

- (void)_withOrderedNodeMapper:(id)mapper
{
  mapperCopy = mapper;
  v5 = mapperCopy;
  if (mapperCopy)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = -1;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__VMUTaskMemoryScanner__withOrderedNodeMapper___block_invoke;
    v6[3] = &unk_1E8277A88;
    v8 = v16;
    v9 = v12;
    v10 = v14;
    v11 = v13;
    v6[4] = self;
    v7 = 0;
    (*(mapperCopy + 2))(mapperCopy, v6);

    _Block_object_dispose(v12, 8);
    _Block_object_dispose(v13, 8);
    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v16, 8);
  }
}

void __47__VMUTaskMemoryScanner__withOrderedNodeMapper___block_invoke(uint64_t *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    return;
  }

  v5 = a1[4];
  if (*(v5 + 88) <= a2)
  {
    return;
  }

  v8 = (*(v5 + 80) + 16 * a2);
  v9 = *v8;
  v10 = v8[1];
  if (a3 || (v32 = *(*(a1[6] + 8) + 24), v32 == -1))
  {
    v11 = v8[1];
  }

  else
  {
    v11 = v8[1];
    if (*(*(a1[7] + 8) + 24) <= v9)
    {
      v33 = *(v5 + 96);
      v34 = *(v5 + 56);
      v35 = *(v5 + 64);
      v36 = v34;
      v37 = v36;
      v38 = &v33[8 * v32];
      if (v38[6])
      {
        if (v38[7] == v38)
        {
          aBlock = MEMORY[0x1E69E9820];
          v124 = 3221225472;
          v125 = ___unmapRegion_block_invoke;
          v126 = &unk_1E8277CB0;
          v127 = v36;
          v129 = v38;
          v128 = v35;
          v130 = v33;
          v61 = _Block_copy(&aBlock);
          v61[2]();
        }

        else
        {
          v39 = v38[5] & 1;
          v38[6] = 0;
          v38[7] = 0;
          v38[5] = v39;
        }
      }

      *(*(a1[6] + 8) + 24) = -1;
      v11 = v8[1];
    }
  }

  v12 = v11 & 7;
  if (v12 == 4)
  {
    v13 = [*(a1[4] + 224) threadStateForThreadNum:v11 >> 41];
    if (v13)
    {
      (*(a4 + 16))(a4, v13);
    }

    *(*(a1[6] + 8) + 24) = -1;
    return;
  }

  if ((v11 & 0x1FFFFFFFFE0) == 0)
  {
    return;
  }

  if (v12 == 1)
  {
    for (; *(*(a1[7] + 8) + 24) <= *v8; *(*(a1[7] + 8) + 24) = *(*(*(a1[4] + 96) + (*(*(a1[8] + 8) + 24) << 6)) + 16) + *(*(a1[9] + 8) + 24))
    {
      *(*(a1[9] + 8) + 24) = *(*(*(a1[4] + 96) + (++*(*(a1[8] + 8) + 24) << 6)) + 8);
    }

    v14 = a1[4];
    v15 = *(*(a1[8] + 8) + 24);
    v16 = (*(v14 + 96) + (v15 << 6));
    if ((*(*v16 + 52) & 3) != 2)
    {
      v17 = ((v10 >> 5) & 0xFFFFFFFFFLL) + v9;
      v18 = *(a1[7] + 8);
      v20 = *(v18 + 24);
      v19 = (v18 + 24);
      v110 = v8;
      if (v20 >= v17)
      {
        v52 = *(*(a1[9] + 8) + 24);
        v53 = *(v14 + 56);
        v54 = *(v14 + 104);
        v55 = *(v14 + 8);
        v56 = v53;
        if (!v16[6] && ([*v16 isSpecialPhysFootprintRegion] & 1) == 0)
        {
          v57 = v15;
          aBlock = 0;
          v131[0] = 0;
          v58 = [v56 mapAddress:*(*v16 + 8) size:*(*v16 + 16) returnedAddress:&aBlock returnedSize:v131];
          if (v58)
          {
            if ((*(*v16 + 52) & 3u) - 1 >= 2)
            {
              v59 = v58;
              v60 = task_exists(v55);
              if (v57 != v54 - 1 && v60)
              {
                if ([*v16 isJavascriptJitExecutableAllocator])
                {
                  v16[5] |= 1uLL;
                }

                else
                {
                  v121 = *MEMORY[0x1E69E9848];
                  v117 = [*v16 address];
                  v90 = *(*v16 + 24);
                  v114 = vm_prot_strings[v90];
                  v91 = *(*v16 + 16) + *(*v16 + 8);
                  v92 = VMUExclaveOrDarwinRegionTypeDescriptionForTagShareProtAndPager(*(*v16 + 232), *(*v16 + 104), *(*v16 + 50), v90, *(*v16 + 49));
                  v93 = [v92 UTF8String];
                  v94 = *(*v16 + 16) >> *MEMORY[0x1E69E9AC0];
                  v95 = "pages";
                  if (v94 == 1)
                  {
                    v95 = "page";
                  }

                  if (v16[3] == v16[4])
                  {
                    v96 = "";
                  }

                  else
                  {
                    v96 = " [root]";
                  }

                  fprintf(v121, "Failed to map remote region: [%#llx-%#llx] %s %s (%llu %s)%s (error: %d)\n", v117, v91, v114, v93, v94, v95, v96, v59);
                }
              }
            }
          }

          else
          {
            v87 = aBlock;
            v16[5] = v16[5] & 1 | (2 * v131[0]);
            v16[6] = v87;
            v16[7] = v16;
          }

          LODWORD(v15) = v57;
        }

        v78 = *(a1[4] + 96);
        goto LABEL_72;
      }

      v21 = v15 + 1;
      do
      {
        v22 = v21;
        v23 = (*(*(a1[4] + 96) + (v21 << 6)) + 8);
        *v19 = v23[1] + *v23;
        ++v21;
        v24 = *(a1[7] + 8);
        v25 = *(v24 + 24);
        v19 = (v24 + 24);
      }

      while (v25 < v17);
      v26 = *(*(a1[8] + 8) + 24);
      v27 = v21 - v26;
      v28 = a1[4];
      v109 = *(*(a1[8] + 8) + 24);
      v111 = (*(v28 + 96) + (v26 << 6));
      v29 = *(v28 + 56);
      v30 = *(v28 + 64);
      if (a3 == 1)
      {
        v31 = a1[5];
      }

      else
      {
        v31 = 0;
      }

      v62 = v22;
      v107 = *(v28 + 8);
      v113 = v30;
      v116 = v29;
      v120 = v31;
      v108 = v27;
      if (v27)
      {
        v63 = 0;
        v64 = v21 - v109;
        v65 = v111;
        v66 = v111;
        do
        {
          v67 = *v66;
          v66 += 8;
          v63 += *(v67 + 16);
          --v64;
        }

        while (v64);
      }

      else
      {
        v63 = 0;
        v65 = v111;
      }

      LODWORD(v15) = v21 - 1;
      v131[0] = 0;
      v122 = 0;
      v68 = [(FILE *)v116 findMappedAddress:*(*v65 + 8) size:v63];
      v69 = v113;
      if (v68)
      {
        v70 = v68[1];
        v71 = *(*v65 + 8) - *v68;
        v131[0] = v68[2] + v71;
        v122 = v70 - v71;
      }

      else
      {
        v106 = v62;
        if (v108)
        {
          v79 = v21 - v109;
          v80 = v111;
          do
          {
            v81 = v69;
            v82 = v116;
            v83 = v120;
            if (v80[6])
            {
              if (v80 == v80[7])
              {
                aBlock = MEMORY[0x1E69E9820];
                v124 = 3221225472;
                v125 = ___unmapRegion_block_invoke;
                v126 = &unk_1E8277CB0;
                v127 = v82;
                v129 = v80;
                v128 = v81;
                v130 = v111;
                v85 = _Block_copy(&aBlock);
                v86 = v85;
                if (v120)
                {
                  dispatch_async(v83, v85);
                }

                else
                {
                  v85[2](v85);
                }

                v69 = v113;
              }

              else
              {
                v84 = v80[5] & 1;
                v80[6] = 0;
                v80[7] = 0;
                v80[5] = v84;
              }
            }

            v80 += 8;
            --v79;
          }

          while (v79);
        }

        v65 = v111;
        v62 = v106;
        LODWORD(v15) = v21 - 1;
        if ([(FILE *)v116 mapAddress:*(*v111 + 8) size:v63 returnedAddress:v131 returnedSize:&v122])
        {
          v72 = v107;
          if (task_exists(v107))
          {
            fprintf(*MEMORY[0x1E69E9848], "Failed to map remote region at [%#llx-%#llx]\n", *(*v111 + 8), *(*v111 + 8) + v63);
          }

          goto LABEL_55;
        }
      }

      v72 = v107;
      if (v108)
      {
        v73 = v122;
        v74 = v131[0];
        v75 = v65 + 5;
        v76 = v21 - v109;
        do
        {
          v75[1] = v74;
          v75[2] = v65;
          *v75 = *v75 & 1 | (2 * v73);
          v77 = *(v75 - 5) + 8;
          v74 += *(*(v75 - 5) + 16);
          v131[0] = v74;
          v73 -= *(v77 + 8);
          v122 = v73;
          v75 += 8;
          --v76;
        }

        while (v76);
      }

LABEL_55:

      v78 = *(a1[4] + 96);
      v52 = *(*(v78 + (v62 << 6)) + 8);
LABEL_72:
      v88 = *(a1[8] + 8);
      v89 = *(v78 + (*(v88 + 24) << 6) + 48);
      if (v89)
      {
        (*(a4 + 16))(a4, v89 + *v110 - *(*(a1[9] + 8) + 24));
        v88 = *(a1[8] + 8);
      }

      *(v88 + 24) = v15;
      *(*(a1[9] + 8) + 24) = v52;
    }
  }

  else if (VMUGraphNodeType_IsVMRegion(v12))
  {
    *(*(a1[8] + 8) + 24) = v8[1] >> 41;
    v40 = *(*(a1[4] + 96) + (*(*(a1[8] + 8) + 24) << 6));
    if ([(VMUTaskMemoryScanner *)a1[4] _shouldScanVMregion:?])
    {
      v41 = v8;
      *(*(a1[9] + 8) + 24) = [v40 address];
      v42 = *(*(a1[9] + 8) + 24);
      *(*(a1[7] + 8) + 24) = [v40 length] + v42;
      v43 = a1[4];
      v44 = *(*(a1[8] + 8) + 24);
      v45 = (*(v43 + 96) + (v44 << 6));
      v46 = *(v43 + 56);
      v47 = *(v43 + 104);
      v48 = *(v43 + 8);
      v49 = v46;
      if (!v45[6] && ([*v45 isSpecialPhysFootprintRegion] & 1) == 0)
      {
        aBlock = 0;
        v131[0] = 0;
        v50 = [v49 mapAddress:*(*v45 + 8) size:*(*v45 + 16) returnedAddress:&aBlock returnedSize:v131];
        if (v50)
        {
          v119 = v50;
          if ((*(*v45 + 52) & 3u) - 1 >= 2)
          {
            v51 = task_exists(v48);
            if (v44 != v47 - 1 && v51)
            {
              if ([*v45 isJavascriptJitExecutableAllocator])
              {
                v45[5] |= 1uLL;
              }

              else
              {
                v118 = *MEMORY[0x1E69E9848];
                v115 = [*v45 address];
                v99 = *(*v45 + 24);
                v112 = vm_prot_strings[v99];
                v100 = *(*v45 + 16) + *(*v45 + 8);
                v101 = VMUExclaveOrDarwinRegionTypeDescriptionForTagShareProtAndPager(*(*v45 + 232), *(*v45 + 104), *(*v45 + 50), v99, *(*v45 + 49));
                v102 = [v101 UTF8String];
                v103 = *(*v45 + 16) >> *MEMORY[0x1E69E9AC0];
                v104 = "pages";
                if (v103 == 1)
                {
                  v104 = "page";
                }

                if (v45[3] == v45[4])
                {
                  v105 = "";
                }

                else
                {
                  v105 = " [root]";
                }

                fprintf(v118, "Failed to map remote region: [%#llx-%#llx] %s %s (%llu %s)%s (error: %d)\n", v115, v100, v112, v102, v103, v104, v105, v119);
              }
            }
          }
        }

        else
        {
          v97 = aBlock;
          v45[5] = v45[5] & 1 | (2 * v131[0]);
          v45[6] = v97;
          v45[7] = v45;
        }
      }

      v98 = *(*(a1[4] + 96) + (*(*(a1[8] + 8) + 24) << 6) + 48);
      if (v98)
      {
        (*(a4 + 16))(a4, v98 + *v41 - *(*(a1[9] + 8) + 24));
        if (!a3)
        {
          *(*(a1[6] + 8) + 24) = *(*(a1[8] + 8) + 24);
        }
      }
    }
  }
}

- (void)scanNodesWithReferenceRecorder:(id)recorder
{
  recorderCopy = recorder;
  v5 = _Block_copy(recorderCopy);
  v6 = malloc_type_calloc(self->_classInfosCount, 8uLL, 0x2004093837F09uLL);
  if (self->_referenceLogger || (maxInteriorOffset = self->_maxInteriorOffset, maxInteriorOffset != -1) && (!maxInteriorOffset || (maxInteriorOffset & ~(-1 << *MEMORY[0x1E69E9AC0])) != 0))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke;
    aBlock[3] = &unk_1E8277AB0;
    aBlock[4] = self;
    v22 = recorderCopy;
    v7 = _Block_copy(aBlock);

    v5 = v7;
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_2;
  v16 = &unk_1E8277B98;
  selfCopy = self;
  v8 = v5;
  v20 = 0;
  v18 = v8;
  v19 = v6;
  [(VMUTaskMemoryScanner *)self _withOrderedNodeMapper:&v13];
  [(VMUTaskMemoryScanner *)self unmapAllRegions:v13];
  classInfosCount = self->_classInfosCount;
  if (classInfosCount)
  {
    for (i = 0; i < classInfosCount; ++i)
    {
      v11 = v6[i];
      if (v11)
      {
        free(v11);
        classInfosCount = self->_classInfosCount;
      }
    }
  }

  free(v6);
}

uint64_t __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v6 = *(result + 32);
  if ((a6 - *(v6[10] + 16 * a5)) <= v6[48])
  {
    v7 = result;
    if (v6[61])
    {
      v8 = objc_autoreleasePoolPush();
      (*(*(*(v7 + 32) + 488) + 16))();
      objc_autoreleasePoolPop(v8);
    }

    v9 = *(*(v7 + 40) + 16);

    return v9();
  }

  return result;
}

void __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v114[0] = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 88))
  {
    v5 = 0;
    v68 = v81;
    v69 = v76;
    v66 = v95;
    v67 = v98;
    v70 = v85;
    v65 = v111;
    while (1)
    {
      v6 = *(*(v2 + 80) + 16 * v5 + 8);
      if (*(v2 + 496))
      {
        v7 = objc_autoreleasePoolPush();
        (*(*(*(a1 + 32) + 496) + 16))(*(*(a1 + 32) + 496), v5, v8, v9, v10, v11);
        objc_autoreleasePoolPop(v7);
      }

      v12 = v6 & 7;
      if (v12 == 1)
      {
        break;
      }

      if (VMUGraphNodeType_IsVMRegion(v6 & 7))
      {
        v13 = *(a1 + 32);
        v14 = (*(v13 + 80) + 16 * v5);
        v15 = *v14;
        v18 = v14[1];
        v16 = v14 + 1;
        v17 = v18;
        v106 = 0;
        v107 = &v106;
        v108 = 0x2020000000;
        v109 = v15;
        kcd_addr_begin = 0;
        p_kcd_addr_begin = &kcd_addr_begin;
        v104 = 0x2020000000;
        v105 = (*v16 >> 5) & 0xFFFFFFFFFLL;
        if (v105 >= 8)
        {
          v19 = ((v17 >> 5) & 0xFFFFFFFFFLL) + v15;
          v20 = *(*(v13 + 96) + ((*v16 >> 35) & 0x1FFFFFC0));
          v21 = _Block_copy(*(a1 + 40));
          v22 = *(a1 + 32);
          v23 = *(v22 + 544);
          if (v15 <= v23 && v23 < v19)
          {
            v25 = *(a1 + 56);
            v97[0] = MEMORY[0x1E69E9820];
            v97[1] = 3221225472;
            v98[0] = __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_6;
            v98[1] = &unk_1E8277B20;
            v98[2] = v22;
            v100 = v15;
            v101 = v5;
            v99 = *(a1 + 40);
            (*(a2 + 16))(a2, v5, v25, v97);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            v95[0] = __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_7;
            v95[1] = &unk_1E8277AB0;
            v26 = *(a1 + 40);
            v95[2] = *(a1 + 32);
            v96 = v26;
            v27 = _Block_copy(aBlock);

            v21 = v27;
          }

          v28 = [v20 isFoundation];
          v29 = *(a1 + 32);
          if (v28)
          {
            v30 = v5 + 1;
            if (v5 + 1 < *(v29 + 88))
            {
              v31 = (*(v29 + 80) + 16 * v30);
              if (*v31 == v19)
              {
                v32 = v31[1];
                if (p_kcd_addr_begin[3] == ((v32 >> 5) & 0xFFFFFFFFFLL))
                {
                  IsVMRegion = VMUGraphNodeType_IsVMRegion(v32 & 7);
                  v29 = *(a1 + 32);
                  if (IsVMRegion)
                  {
                    v34 = *(*(v29 + 96) + ((*(*(v29 + 80) + 16 * v30 + 8) >> 35) & 0x1FFFFFC0));
                    v35 = v34;
                    if (v34[49])
                    {
                      v71 = v34;
                      v36 = [v34 protection];
                      v35 = v71;
                      if (v36 == 5)
                      {
                        v37 = *(*(*(a1 + 32) + 80) + 16 * v30);
                        (*(*(a1 + 40) + 16))();
                        v35 = v71;
                      }
                    }

                    v29 = *(a1 + 32);
                  }
                }
              }
            }
          }

          v38 = *(a1 + 56);
          v84[0] = MEMORY[0x1E69E9820];
          v84[1] = 3221225472;
          v85[0] = __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_8;
          v85[1] = &unk_1E8277B48;
          v85[2] = v29;
          v88 = &kcd_addr_begin;
          v89 = &v106;
          v90 = v15;
          v91 = v19;
          v93 = v5;
          v92 = *(a1 + 48);
          v39 = v21;
          v87 = v39;
          v40 = v20;
          v86 = v40;
          (*(a2 + 16))(a2, v5, v38, v84);
        }

        _Block_object_dispose(&kcd_addr_begin, 8);
        goto LABEL_55;
      }

      if (v12 == 3)
      {
        v106 = 0;
        v107 = &v106;
        v108 = 0x2020000000;
        v45 = *(a1 + 32);
        v44 = *(a1 + 40);
        v109 = *(*(v45 + 80) + 16 * v5);
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v76[0] = __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_10;
        v76[1] = &unk_1E8277B70;
        v76[2] = v45;
        v78 = &v106;
        v77 = v44;
        v79 = v5;
        v46 = _Block_copy(v75);
        if ([*(*(a1 + 32) + 8) isCore])
        {
          kcd_addr_begin = 0;
          v47 = [*(*(a1 + 32) + 8) memoryCache];
          v48 = [(VMUTaskMemoryCache *)v47 getCoreFileUdataPointersIntoBuffer:&kcd_addr_begin count:?];

          if (!v48 && kcd_addr_begin)
          {
            if (kcd_addr_begin >> 61)
            {
              NSLog(&cfstr_FailedToGetUda.isa);
              goto LABEL_54;
            }

            v62 = malloc_type_malloc(8 * kcd_addr_begin, 0x8516564BuLL);
            if (v62)
            {
              v63 = [*(*(a1 + 32) + 8) memoryCache];
              v64 = [(VMUTaskMemoryCache *)v63 getCoreFileUdataPointersIntoBuffer:v62 count:&kcd_addr_begin];

              if (!v64)
              {
                v46[2](v46, v62, kcd_addr_begin);
              }

              v52 = v62;
LABEL_53:
              free(v52);
            }
          }
        }

        else
        {
          kcd_addr_begin = 0;
          kcd_size = 0;
          if (task_map_corpse_info_64(*MEMORY[0x1E69E9A60], [*(*(a1 + 32) + 8) taskPort], &kcd_addr_begin, &kcd_size))
          {
            [*(a1 + 32) pid];
            v49 = proc_list_uptrs();
            v50 = v49;
            if (v49 >= 1)
            {
              v51 = malloc_type_malloc((8 * v49), 0x783BB6D6uLL);
              [*(a1 + 32) pid];
              proc_list_uptrs();
              v46[2](v46, v51, v50);
              v52 = v51;
              goto LABEL_53;
            }
          }

          else
          {
            v55 = kcd_addr_begin;
            v56 = kcd_size;
            v57 = kcd_size + kcd_addr_begin;
            v58 = kcd_addr_begin + 16;
            if (v55 + 16 <= kcd_size + v55 && v58 + *(kcd_addr_begin + 4) <= v57 && *kcd_addr_begin == -559025833)
            {
              do
              {
                v59 = v58 + *(v55 + 4);
                if (v59 > v57)
                {
                  break;
                }

                v60 = *v55;
                if (*v55 == -242132755)
                {
                  break;
                }

                if (v60 == 17 || (v60 & 0xFFFFFFF0) == 0x20)
                {
                  v61 = *(v55 + 8);
                  if (HIDWORD(v61) == 2076)
                  {
                    v46[2](v46, (v55 + 16), v61);
                    v59 = v58 + *(v55 + 4);
                  }
                }

                v58 = v59 + 16;
                v55 = v59;
              }

              while (v59 + 16 <= v57);
              v55 = kcd_addr_begin;
              v56 = kcd_size;
            }

            mach_vm_deallocate(*MEMORY[0x1E69E9A60], v55, v56);
          }
        }

LABEL_54:

LABEL_55:
        _Block_object_dispose(&v106, 8);
        goto LABEL_56;
      }

      if (v12 == 4)
      {
        v41 = *(a1 + 56);
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v81[0] = __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_9;
        v81[1] = &unk_1E8277B20;
        v81[2] = *(a1 + 32);
        v83 = v5;
        v72 = *(a1 + 40);
        v42 = v72;
        v82 = v72;
        (*(a2 + 16))(a2, v5, v41, v80);
        v43 = v82;
LABEL_36:
      }

LABEL_56:
      ++v5;
      v2 = *(a1 + 32);
      if (v5 >= *(v2 + 88))
      {
        return;
      }
    }

    [(VMUTaskMemoryScanner *)*(a1 + 32) _recordFakeRootRefsForMallocBlock:v5 indexInSwiftTaskAllocationBlockIndexes:v114 recorder:*(a1 + 40)];
    v53 = *(a1 + 56);
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v111[0] = __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_3;
    v111[1] = &unk_1E8277B20;
    v111[2] = *(a1 + 32);
    v113 = v5;
    v73 = *(a1 + 40);
    v54 = v73;
    v112 = v73;
    (*(a2 + 16))(a2, v5, v53, v110);
    v43 = v112;
    goto LABEL_36;
  }
}

void __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(*(v4 + 80) + 16 * v5 + 8);
  v7 = (v6 >> 5) & 0xFFFFFFFFFLL;
  if (v7 >= 0x100 && (*a2 == -1583242847 && !strncmp((a2 + 4), "AUTORELEASE!", 0xCuLL) || v7 == 10240 && *(v2 + 2048) == -1583242847 && !strncmp((v2 + 2052), "AUTORELEASE!", 0xCuLL)))
  {
    v8 = *(v4 + 380);
    *(v4 + 284) = 1;
    *(*(a1 + 32) + 380) = 0;
    v9 = *(a1 + 32);
    v10 = (*(v9 + 80) + 16 * *(a1 + 56));
    v11 = *v10;
    v12 = (v10[1] >> 5) & 0xFFFFFFFFFLL;
    if (v12 == 10240)
    {
      if (*(v2 + 2048) == -1583242847)
      {
        v13 = strncmp((v2 + 2052), "AUTORELEASE!", 0xCuLL);
        if (v13)
        {
          v12 = 10240;
        }

        else
        {
          v12 = 0x2000;
        }

        if (!v13)
        {
          v11 += 2048;
          v2 += 2048;
        }
      }

      else
      {
        v12 = 10240;
      }
    }

    v25 = *(v2 + *[*(v9 + 64) autoreleasePoolPageLayout]) - v11;
    if (v12 < v25)
    {
      v25 = v12;
    }

    if (v25 >= 0x4000)
    {
      v26 = 0x4000;
    }

    else
    {
      v26 = v25;
    }

    [(VMUTaskMemoryScanner *)*(a1 + 32) scanLocalMemory:v2 atOffset:0 node:*(a1 + 56) length:v26 isa:*(*(*(a1 + 32) + 80) + 16 * *(a1 + 56) + 8) >> 41 scanCaches:*(a1 + 48) fieldInfo:0 stride:8u recorder:*(a1 + 40)];
    *(*(a1 + 32) + 380) = v8;
    *(*(a1 + 32) + 284) = 0;
  }

  else
  {
    [(VMUTaskMemoryScanner *)v4 scanLocalMemory:v2 atOffset:0 node:v5 length:(v6 >> 5) & 0xFFFFFFFFFLL isa:v6 >> 41 scanCaches:*(a1 + 48) fieldInfo:0 stride:1u recorder:*(a1 + 40)];
    v14 = *(a1 + 32);
    v15 = *(v14 + 240);
    v16 = *(v14 + 248);
    __compar[0] = MEMORY[0x1E69E9820];
    __compar[1] = 3221225472;
    __compar[2] = __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_4;
    __compar[3] = &__block_descriptor_36_e15_i24__0r_v8r_v16l;
    v33 = *(a1 + 56);
    v17 = bsearch_b(0, v15, v16, 0x10uLL, __compar);
    if (v17)
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 56);
      v20 = *(*(v18 + 256) + ((*(*(v18 + 80) + 16 * v19 + 8) >> 38) & 0x3FFFFF8));
      v21 = v17[1];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_5;
      v27[3] = &unk_1E8277AF8;
      v27[4] = v18;
      v31 = v19;
      v23 = *(a1 + 40);
      v22 = *(a1 + 48);
      v29 = v2;
      v30 = v22;
      v28 = v23;
      v24 = v20;
      [v24 enumerateStoredEntriesForObject:v2 ofSize:v6 >> 5 externalValues:v21 block:v27];
    }
  }
}

uint64_t __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 32);
  v4 = *a3 > v3;
  v5 = *a3 != v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  v5 = *(a2 + *(v4 + 544) - *(result + 48));
  if (v5)
  {
    v6 = result;
    v7 = v5 + 0x2000;
    v8 = *(v4 + 112);
    v10 = v8[6];
    v9 = v8[7];
    v11 = v9 - v10;
    v12 = v9 < v10;
    if (v7 - v10 >= v11 || v12)
    {
      goto LABEL_57;
    }

    v13 = MEMORY[0x1E69E9AC0];
    v14 = v7 >> *MEMORY[0x1E69E9AC0];
    if (v14)
    {
      v15 = v8[3];
      v18 = *v15;
      v16 = v15 + 1;
      v17 = v18;
      v19 = v7 >> *MEMORY[0x1E69E9AC0];
      do
      {
        v20 = v19 & 0x3FFFFFF;
        if (v17 <= v20 || ((*(v16 + (v20 >> 3)) >> (v19 & 7)) & 1) == 0)
        {
          goto LABEL_57;
        }

        v19 >>= 26;
      }

      while (v19);
    }

    v21 = v14 & 0x7FFFF;
    v22 = *(v8 + (v14 & 0x7FFFF) + 16);
    v23 = v8[4];
    if (v22)
    {
      v24 = v23 + ((v22 - 1) << 6);
      if (v7 - *(*v24 + 8) < *(*v24 + 16))
      {
        goto LABEL_11;
      }
    }

    v43 = *(v8 + 10);
    if (v43)
    {
      v44 = v8[4];
      do
      {
        v45 = v43 >> 1;
        v24 = v44 + (v43 >> 1 << 6);
        result = *v24;
        if (*(*v24 + 8) <= v7)
        {
          if (*(*v24 + 16) + *(*v24 + 8) > v7)
          {
            result = [result isSpecialPhysFootprintRegion];
            if (result)
            {
              v46 = 0;
            }

            else
            {
              v46 = v24;
            }

            if (result)
            {
              break;
            }

            if ((*(*v46 + 132) & 1) == 0)
            {
              goto LABEL_53;
            }

            v47 = (v46 + 64);
            v48 = *(v8 + 10) - ((v46 + 64 - v8[4]) >> 6);
            if (!v48)
            {
              goto LABEL_50;
            }

            while (1)
            {
              v49 = v48 >> 1;
              v50 = &v47[8 * (v48 >> 1)];
              result = *v50;
              if (*(*v50 + 8) <= v7)
              {
                if (*(*v50 + 16) + *(*v50 + 8) > v7)
                {
                  result = [result isSpecialPhysFootprintRegion];
                  if (result)
                  {
                    v48 = 0;
                  }

                  else
                  {
                    v48 = v50;
                  }

LABEL_50:
                  if (v48)
                  {
                    v46 = v48;
                  }

                  v24 = v46;
LABEL_53:
                  *(v8 + v21 + 16) = ((v46 - v23) >> 6) + 1;
LABEL_11:
                  v25 = *(v24 + 20);
                  if (v25)
                  {
                    v26 = *(v24 + 8);
                    v27 = *v8;
                    v28 = *(v24 + 16);
                    v29 = (*v8 + 16 * v28);
                    if (v26)
                    {
                      if (*v29 <= v7)
                      {
                        v30 = (v27 + 16 * (v25 + v28 - 1));
                        if (((v30[1] >> 5) & 0xFFFFFFFFFuLL) + *v30 > v7)
                        {
                          v31 = (v26 + 4 * ((v7 - (*v29 & -*MEMORY[0x1E69E9AC8])) >> *v13));
                          v32 = *v31;
                          v33 = (v27 + 16 * v32);
                          if (*v33 <= v7)
                          {
                            v34 = v31[1];
                            if (v34 < *(v8 + 2) && (v35 = (v27 + 16 * v34), *v35 <= v7))
                            {
                              v39 = v35[1];
LABEL_55:
                              if ((v39 & 7) - 2 >= 3)
                              {
                                v8[2];
                              }
                            }

                            else
                            {
                              v36 = v34 - v32;
                              if (v36)
                              {
                                do
                                {
                                  v37 = v36 >> 1;
                                  v38 = &v33[2 * (v36 >> 1)];
                                  if (*v38 <= v7)
                                  {
                                    v39 = v38[1];
                                    if (((v39 >> 5) & 0xFFFFFFFFFLL) + *v38 > v7)
                                    {
                                      goto LABEL_55;
                                    }

                                    v33 = v38 + 2;
                                    v37 = --v36 >> 1;
                                  }

                                  v40 = v36 >= 2;
                                  v36 = v37;
                                }

                                while (v40);
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      do
                      {
                        v41 = v25 >> 1;
                        v42 = &v29[2 * (v25 >> 1)];
                        if (*v42 <= v7)
                        {
                          v39 = v42[1];
                          if (((v39 >> 5) & 0xFFFFFFFFFLL) + *v42 > v7)
                          {
                            goto LABEL_55;
                          }

                          v29 = v42 + 2;
                          v41 = --v25 >> 1;
                        }

                        v40 = v25 >= 2;
                        v25 = v41;
                      }

                      while (v40);
                    }
                  }

                  goto LABEL_57;
                }

                v47 = v50 + 8;
                v49 = --v48 >> 1;
              }

              v51 = v48 > 1;
              v48 = v49;
              if (!v51)
              {
                v48 = 0;
                goto LABEL_50;
              }
            }
          }

          v44 = v24 + 64;
          v45 = --v43 >> 1;
        }

        v40 = v43 >= 2;
        v43 = v45;
      }

      while (v40);
    }

LABEL_57:
    if (*(v6 + 56) != -1)
    {
      v52 = *(*(v6 + 32) + 544);
      v53 = *(*(v6 + 40) + 16);

      return v53();
    }
  }

  return result;
}

uint64_t __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_7(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(*(result + 32) + 544) != a3)
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

void __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_8(uint64_t a1, uint64_t a2)
{
  if (*MEMORY[0x1E69E9AB0] >= *MEMORY[0x1E69E9AC8])
  {
    v4 = *MEMORY[0x1E69E9AC8];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9AB0];
  }

  if (*MEMORY[0x1E69E9AA0] >= *MEMORY[0x1E69E9AB8])
  {
    v5 = *MEMORY[0x1E69E9AB8];
  }

  else
  {
    v5 = *MEMORY[0x1E69E9AA0];
  }

  v6 = *(a1 + 72) & ~v5;
  v7 = ((*(a1 + 80) + v5) & ~v5) - v6;
  v30 = v7 / v4;
  v8 = malloc_type_malloc(4 * (v7 / v4) + 4, 0x100004052888210uLL);
  v8[v7 / v4] = 0;
  v9 = [*(*(a1 + 32) + 8) memoryCache];
  LODWORD(v6) = [v9 machVMPageRangeQueryWithAddress:v6 size:v7 dispositions:v8 dispositionsCount:&v30];

  if (v6)
  {
    free(v8);
  }

  else
  {
    v29 = a2;
    v10 = *(a1 + 56);
    v11 = *(*(v10 + 8) + 24);
    if (v11)
    {
      v12 = ~v5;
      v13 = *(a1 + 72) & ~v5;
      v14 = -1;
      v15 = v8;
      do
      {
        v16 = *v15++;
        v17 = (v16 & 0x11) == 0 || v13 >= *(a1 + 80);
        v18 = !v17;
        if (v17)
        {
          v19 = *(a1 + 64);
          if (v14 == -1)
          {
            v20 = *(*(v19 + 8) + 24);
            if (v13 > v20)
            {
              if (v11 >= v13 - v20)
              {
                v28 = v13 - v20;
              }

              else
              {
                v28 = v11;
              }

              [(VMUTaskMemoryScanner *)*(a1 + 32) scanLocalMemory:v29 atOffset:v20 - *(a1 + 72) node:*(a1 + 96) length:v28 isa:0 scanCaches:*(a1 + 88) fieldInfo:0 stride:8u recorder:*(a1 + 48)];
              *(*(*(a1 + 64) + 8) + 24) += v28;
              *(*(*(a1 + 56) + 8) + 24) -= v28;
              v19 = *(a1 + 64);
            }
          }

          v21 = *(v19 + 8);
          v22 = *(v21 + 24);
          *(v21 + 24) = (v22 & v12) + v4;
          v23 = *(*(*(a1 + 64) + 8) + 24) - v22;
          v24 = *(*(a1 + 56) + 8);
          v25 = *(v24 + 24);
          v17 = v25 >= v23;
          v26 = v25 - v23;
          if (!v17)
          {
            v26 = 0;
          }

          *(v24 + 24) = v26;
          v10 = *(a1 + 56);
        }

        if (v14 >= v13)
        {
          v27 = v13;
        }

        else
        {
          v27 = v14;
        }

        if (v18)
        {
          v14 = -1;
        }

        else
        {
          v14 = v27;
        }

        v13 += v4;
        v11 = *(*(v10 + 8) + 24);
      }

      while (v11);
    }

    free(v8);
    if (*(*(a1 + 40) + 49))
    {
      [*(a1 + 32) clearCrashReporterInfoForMappedFileRegion];
    }
  }
}

uint64_t __55__VMUTaskMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_10(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = MEMORY[0x1E69E9AC0];
  v8 = &OBJC_IVAR___VMUVMRegion_range;
  do
  {
    v9 = *(*(v5 + 32) + 112);
    v10 = v9[6];
    v11 = v9[7];
    v12 = v11 >= v10;
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_61;
    }

    v14 = *(a2 + 8 * v6);
    if (v14 - v10 >= v13)
    {
      goto LABEL_61;
    }

    v15 = v14 >> *v7;
    if (v15)
    {
      v16 = v9[3];
      v19 = *v16;
      v17 = v16 + 1;
      v18 = v19;
      v20 = v14 >> *v7;
      do
      {
        v21 = v20 & 0x3FFFFFF;
        if (v18 <= v21 || ((*(v17 + (v21 >> 3)) >> (v20 & 7)) & 1) == 0)
        {
          goto LABEL_61;
        }

        v20 >>= 26;
      }

      while (v20);
    }

    v22 = v15 & 0x7FFFF;
    v23 = *(v9 + (v15 & 0x7FFFF) + 16);
    v24 = v9[4];
    if (v23)
    {
      v25 = v24 + ((v23 - 1) << 6);
      if (v14 - *(*v25 + *v8) < *(*v25 + *v8 + 8))
      {
        goto LABEL_13;
      }
    }

    v42 = *(v9 + 10);
    if (!v42)
    {
      goto LABEL_61;
    }

    v43 = v9[4];
    while (1)
    {
      v44 = v42 >> 1;
      v25 = v43 + (v42 >> 1 << 6);
      result = *v25;
      v45 = (*v25 + *v8);
      if (*v45 <= v14)
      {
        break;
      }

LABEL_36:
      v12 = v42 >= 2;
      v42 = v44;
      if (!v12)
      {
        goto LABEL_61;
      }
    }

    if (v45[1] + *v45 <= v14)
    {
      v43 = v25 + 64;
      v44 = --v42 >> 1;
      goto LABEL_36;
    }

    result = [result isSpecialPhysFootprintRegion];
    v8 = &OBJC_IVAR___VMUVMRegion_range;
    v7 = MEMORY[0x1E69E9AC0];
    if (result)
    {
      v46 = 0;
    }

    else
    {
      v46 = v25;
    }

    if (result)
    {
      goto LABEL_61;
    }

    if ((*(*v46 + 132) & 1) == 0)
    {
      goto LABEL_55;
    }

    v47 = (v46 + 64);
    v48 = *(v9 + 10) - ((v46 + 64 - v9[4]) >> 6);
    if (!v48)
    {
      goto LABEL_52;
    }

    while (2)
    {
      v49 = v48 >> 1;
      v50 = &v47[8 * (v48 >> 1)];
      result = *v50;
      if (*(*v50 + 8) > v14)
      {
LABEL_47:
        v51 = v48 > 1;
        v48 = v49;
        if (!v51)
        {
          v48 = 0;
          goto LABEL_52;
        }

        continue;
      }

      break;
    }

    if (*(*v50 + 16) + *(*v50 + 8) <= v14)
    {
      v47 = v50 + 8;
      v49 = --v48 >> 1;
      goto LABEL_47;
    }

    v60 = v46;
    result = [result isSpecialPhysFootprintRegion];
    v46 = v60;
    v8 = &OBJC_IVAR___VMUVMRegion_range;
    v7 = MEMORY[0x1E69E9AC0];
    if (result)
    {
      v48 = 0;
    }

    else
    {
      v48 = v50;
    }

LABEL_52:
    if (v48)
    {
      v46 = v48;
    }

    v25 = v46;
LABEL_55:
    *(v9 + v22 + 16) = ((v46 - v24) >> 6) + 1;
LABEL_13:
    v26 = *(v25 + 20);
    if (v26)
    {
      v27 = *(v25 + 8);
      v28 = *v9;
      v29 = *(v25 + 16);
      v30 = (*v9 + 16 * v29);
      if (v27)
      {
        if (*v30 > v14)
        {
          goto LABEL_61;
        }

        v31 = (v28 + 16 * (v26 + v29 - 1));
        if (((v31[1] >> 5) & 0xFFFFFFFFFuLL) + *v31 <= v14)
        {
          goto LABEL_61;
        }

        v32 = (v27 + 4 * ((v14 - (*v30 & -*MEMORY[0x1E69E9AC8])) >> *v7));
        v33 = *v32;
        v34 = (v28 + 16 * v33);
        if (*v34 > v14)
        {
          goto LABEL_61;
        }

        v35 = v32[1];
        if (v35 < *(v9 + 2) && (v36 = (v28 + 16 * v35), v37 = *v36, *v36 <= v14))
        {
          v40 = v36[1];
LABEL_57:
          if ((v40 & 7) - 2 >= 3)
          {
            v52 = (v36 - v28) >> 4;
            v53 = v9[2];
            if (v14 - v37 >= v53)
            {
              if (((v40 >> 5) & 0xFFFFFFFFFLL) - (v14 - v37) > v53 || v52 == -1)
              {
                goto LABEL_61;
              }
            }

            else if (v52 == -1)
            {
              goto LABEL_61;
            }

            v54 = *(*(*(v5 + 48) + 8) + 24);
            v55 = v7;
            v56 = v8;
            *(*(*(v5 + 48) + 8) + 24) = [VMUTask stripExtraPointerBits:?];
            v57 = *(v5 + 56);
            v58 = *(*(*(v5 + 48) + 8) + 24);
            result = (*(*(v5 + 40) + 16))();
            v8 = v56;
            v7 = v55;
          }
        }

        else
        {
          v38 = v35 - v33;
          if (v38)
          {
            do
            {
              v39 = v38 >> 1;
              v36 = &v34[2 * (v38 >> 1)];
              v37 = *v36;
              if (*v36 <= v14)
              {
                v40 = v36[1];
                if (((v40 >> 5) & 0xFFFFFFFFFLL) + v37 > v14)
                {
                  goto LABEL_57;
                }

                v34 = v36 + 2;
                v39 = --v38 >> 1;
              }

              v12 = v38 >= 2;
              v38 = v39;
            }

            while (v12);
          }
        }
      }

      else
      {
        do
        {
          v41 = v26 >> 1;
          v36 = &v30[2 * (v26 >> 1)];
          v37 = *v36;
          if (*v36 <= v14)
          {
            v40 = v36[1];
            if (((v40 >> 5) & 0xFFFFFFFFFLL) + v37 > v14)
            {
              goto LABEL_57;
            }

            v30 = v36 + 2;
            v41 = --v26 >> 1;
          }

          v12 = v26 >= 2;
          v26 = v41;
        }

        while (v12);
      }
    }

LABEL_61:
    ++v6;
  }

  while (v6 != a3);
  return result;
}

- (unsigned)_removeFalsePositiveLeakedVMregionsFromNodes:(unsigned int *)nodes nodeCount:(unsigned int)count recorder:(id)recorder
{
  recorderCopy = recorder;
  if (!count)
  {
    v29 = 0;
    goto LABEL_5;
  }

  v9 = getenv("DT_REPORT_IOKIT_REGION_LEAKS");
  if (v9)
  {
    v10 = ((*v9 - 89) & 0xDF) == 0;
  }

  else
  {
    v10 = 0;
  }

  blocksCount = self->_blocksCount;
  if (blocksCount)
  {
    v13 = 0;
    v14 = self->_blocks + 1;
    while (1)
    {
      v15 = *v14;
      v14 += 2;
      if ((v15 & 7) == 3)
      {
        break;
      }

      if (blocksCount == ++v13)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    LODWORD(v13) = -1;
  }

  v16 = 0;
  v29 = 0;
  v32 = 0;
  v17 = 0xFFFFFFFFLL;
  v31 = v13;
  v30 = v13;
  v25 = -1;
  v28 = recorderCopy;
  v27 = v10;
  do
  {
    v18 = nodes[v16];
    if (!v18 || !VMUGraphNodeType_IsVMRegion(*(&self->_blocks[v18] + 2) & 7))
    {
      goto LABEL_45;
    }

    v19 = *(&self->_regions->var0 + ((*(&self->_blocks[v18] + 1) >> 35) & 0x1FFFFFC0));
    if (([v19 willNotHoldPointers] & 1) != 0 || (objc_msgSend(v19, "isDyldPrivateMemory") & 1) != 0 || !*(v19 + 26) && *(v19 + 50) == 5)
    {
      if (v10)
      {
        if (v32)
        {
          v32 = 1;
        }

        else
        {
          v32 = 1;
          fwrite("The DT_REPORT_IOKIT_REGION_LEAKS env var is set so leaked IOKit, IOSurface, or IOAccelerator regions will be reported, if -vmalso is passed to 'leaks'\n", 0x97uLL, 1uLL, *MEMORY[0x1E69E9848]);
        }
      }

      else
      {
        (*(recorderCopy + 2))(recorderCopy, v31, self->_blocks[v30].var0, 1, v18, self->_blocks[v18].var0);
      }

LABEL_43:
      v18 = v17;
      goto LABEL_44;
    }

    if (v18 == 1)
    {
      goto LABEL_43;
    }

    v20 = (16 * (v18 - 1)) | 8;
    v26 = v18 - 1;
    LODWORD(v21) = v18 - 1;
    while (1)
    {
      if (!VMUGraphNodeType_IsVMRegion(*(&self->_blocks->var0 + v20) & 7))
      {
        nodes[v29] = v18;
        v18 = v17;
        ++v29;
        goto LABEL_48;
      }

      v22 = *(&self->_regions->var0 + ((*(&self->_blocks->var0 + v20) >> 35) & 0x1FFFFFC0));
      if (([v22 isSubmap] & 1) == 0)
      {
        break;
      }

LABEL_40:

      v20 -= 16;
      LODWORD(v21) = v21 - 1;
      if (!v21)
      {
        v18 = v17;
LABEL_48:
        recorderCopy = v28;
        v10 = v27;
        goto LABEL_44;
      }
    }

    v23 = *(v22 + 26);
    if (v23 != *(v19 + 26))
    {
      v23 = *(v19 + 26);
      goto LABEL_34;
    }

    if (*(v22 + 49) || *(v19 + 49))
    {
      goto LABEL_34;
    }

    if (v22[1] + v22[2] != v19[1] && ([v19 isJavascriptJitExecutableAllocator] & 1) == 0)
    {
      v23 = *(v19 + 26);
LABEL_34:
      if (v23 || *(v22 + 26) || v22[1] + v22[2] != v19[1] || ![v19[4] isEqualToString:VMUmappedFileLabel[0]] || !objc_msgSend(v22[4], "isEqualToString:", @"__LINKEDIT") || !objc_msgSend(v19[5], "isEqualToString:", v22[5]))
      {
        goto LABEL_40;
      }

      if (v17 == v26)
      {
        v21 = v25;
      }

      else
      {
        v21 = v21;
      }

      recorderCopy = v28;
      (*(v28 + 2))(v28, v21, self->_blocks[v21].var0, 1, v18, self->_blocks[v18].var0);
      v25 = v21;
LABEL_60:
      v10 = v27;
      goto LABEL_61;
    }

    if (v17 == v26)
    {
      v24 = v25;
    }

    else
    {
      v24 = v21;
    }

    recorderCopy = v28;
    (*(v28 + 2))(v28, v24, self->_blocks[v24].var0, 1, v18, self->_blocks[v18].var0);
    v25 = v24;
    if (!v29)
    {
      v29 = 0;
      goto LABEL_60;
    }

    v10 = v27;
    if (nodes[v29 - 1] >= v24)
    {
      nodes[v29++] = v18;
    }

LABEL_61:

LABEL_44:
    v17 = v18;
LABEL_45:
    ++v16;
  }

  while (v16 != count);
LABEL_5:

  return v29;
}

- (id)processSnapshotGraphWithOptions:(unint64_t)options
{
  v130 = *MEMORY[0x1E69E9840];
  v81 = [VMUProcessObjectGraph alloc];
  pid = self->_pid;
  blocks = self->_blocks;
  blocksCount = self->_blocksCount;
  zoneNames = self->_zoneNames;
  classInfoIndexer = self->_classInfoIndexer;
  regions = [(VMUVMRegionIdentifier *)self->_regionIdentifier regions];
  v10 = [(VMUProcessObjectGraph *)v81 initWithPid:pid nodes:blocks nodeCount:blocksCount zoneNames:zoneNames classInfoMap:classInfoIndexer regions:regions pthreadOffsets:gPthreadOffsets userMarked:self->_userMarkedAbandoned autoreleasePoolOffsets:[(VMUObjectIdentifier *)self->_objectIdentifier autoreleasePoolPageLayout]];
  processObjectGraph = self->_processObjectGraph;
  self->_processObjectGraph = v10;

  [(VMUProcessObjectGraph *)self->_processObjectGraph setSnapshotMachTime:self->_suspendTime];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setSnapshotDate:self->_suspendDate];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setScanner:self];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setDebugTimer:self->_debugTimer];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setShowRawClassNames:self->_showRawClassNames];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setProcessDescriptionString:self->_processDescriptionString];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setIsTranslatedByRosetta:[(VMUTaskMemoryScanner *)self isTranslatedByRosetta]];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setProcessName:self->_processName];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setBinaryImagesDescription:self->_binaryImagesDescription];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setPhysicalFootprint:self->_physicalFootprint];
  ledger = [(VMUTaskMemoryScanner *)self ledger];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setLedger:ledger];

  [(VMUProcessObjectGraph *)self->_processObjectGraph setPhysicalFootprintPeak:self->_physicalFootprintPeak];
  taskDyldSharedCacheRange = [(VMUTask *)self->_task taskDyldSharedCacheRange];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setDyldSharedCacheRange:taskDyldSharedCacheRange, v14];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setObjectContentLevel:[(VMUTaskMemoryScanner *)self objectContentLevel]];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setObjectContentLevelForNodeLabels:[(VMUTaskMemoryScanner *)self objectContentLevel]];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setSrcAddressToExtraAutoreleaseCountDict:self->_srcAddressToExtraAutoreleaseCountDict];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setShowsPhysFootprint:[(VMUVMRegionIdentifier *)self->_regionIdentifier recordedPhysFootprint]];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setDidPhysFootprintDirtyAccounting:[(VMUVMRegionIdentifier *)self->_regionIdentifier didPhysFootprintDirtyAccounting]];
  symbolicator = [(VMUObjectIdentifier *)self->_objectIdentifier symbolicator];
  v17 = v16;
  v79 = symbolicator;
  if (self->_targetProcessHasObjCPatches)
  {
    v80 = CSSymbolicatorCreateForTaskSharedCache();
    v82 = v18;
  }

  else
  {
    v80 = 0;
    v82 = 0;
  }

  v128[0] = 0;
  v128[1] = v128;
  v128[2] = 0x3010000000;
  v128[5] = 0;
  v128[3] = &unk_1C6872315;
  v128[4] = 0;
  v127[0] = 0;
  v127[1] = v127;
  v127[2] = 0x3010000000;
  v127[5] = 0;
  v127[3] = &unk_1C6872315;
  v127[4] = 0;
  v125[0] = 0;
  v125[1] = v125;
  v125[2] = 0x2020000000;
  v126 = 0;
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
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, signpostID2, "processSnapshotGraph", "", buf, 2u);
      }

      debugTimer = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)debugTimer endEvent:"processSnapshotGraph"];
  [(VMUDebugTimer *)self->_debugTimer startWithCategory:"processSnapshotGraph" message:"sampling all threads"];
  v23 = self->_debugTimer;
  if (v23)
  {
    logHandle2 = [(VMUDebugTimer *)v23 logHandle];
    signpostID3 = [(VMUDebugTimer *)self->_debugTimer signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "processSnapshotGraph", "sampling all threads", buf, 2u);
    }
  }

  if ([(VMUTask *)self->_task isCore])
  {
    sampleAllThreadsOnce = 0;
    v27 = 0;
  }

  else
  {
    v27 = [[VMUSampler alloc] initWithTask:[(VMUTask *)self->_task taskPort] options:2305];
    sampleAllThreadsOnce = [(VMUSampler *)v27 sampleAllThreadsOnce];
  }

  v28 = getenv("PreserveMemgraphSampleAndSymbolStore");
  if (v28 && ([MEMORY[0x1E696AEC0] stringWithUTF8String:v28], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "uppercaseString"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", @"NO"), v30, v29, (v31 & 1) != 0))
  {
    v32 = 0;
  }

  else
  {
    [(VMUProcessObjectGraph *)self->_processObjectGraph setBacktraces:sampleAllThreadsOnce];
    v32 = [[VMUSymbolStore alloc] initWithSymbolicator:v79 debugTimer:v17, self->_debugTimer];
    [(VMUProcessObjectGraph *)self->_processObjectGraph setSymbolStore:v32];
    v33 = self->_processObjectGraph;
    symbolStore = [(VMUProcessObjectGraph *)v33 symbolStore];
    [symbolStore setGraph:v33];
  }

  if (sampleAllThreadsOnce)
  {
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v35 = sampleAllThreadsOnce;
    v36 = [v35 countByEnumeratingWithState:&v121 objects:v129 count:16];
    if (v36)
    {
      v37 = *v122;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v122 != v37)
          {
            objc_enumerationMutation(v35);
          }

          [(VMUSymbolStore *)v32 addBacktrace:*(*(&v121 + 1) + 8 * i) origin:0];
        }

        v36 = [v35 countByEnumeratingWithState:&v121 objects:v129 count:16];
      }

      while (v36);
    }
  }

  *buf = 0;
  v116 = buf;
  v117 = 0x3010000000;
  v120 = 0;
  v118 = &unk_1C6872315;
  v119 = 0;
  v114[0] = 0;
  v114[1] = v114;
  v114[2] = 0x3010000000;
  v114[5] = 0;
  v114[3] = &unk_1C6872315;
  v114[4] = 0;
  v112[0] = 0;
  v112[1] = v112;
  v112[2] = 0x3032000000;
  v112[3] = __Block_byref_object_copy_;
  v112[4] = __Block_byref_object_dispose_;
  v113 = 0;
  v110[0] = 0;
  v110[1] = v110;
  v110[2] = 0x2020000000;
  v111 = 0;
  if ((options & 2) != 0 && ([(VMUTaskMemoryScanner *)self objectContentLevel]& 0xFFFFFFFE) == 2)
  {
    v39 = self->_debugTimer;
    if (v39)
    {
      signpostID4 = [(VMUDebugTimer *)v39 signpostID];
      v39 = self->_debugTimer;
      if (signpostID4)
      {
        logHandle3 = [(VMUDebugTimer *)v39 logHandle];
        signpostID5 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle3))
        {
          *v105 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, signpostID5, "processSnapshotGraph", "", v105, 2u);
        }

        v39 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v39 endEvent:"processSnapshotGraph"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"processSnapshotGraph" message:"getting node labels"];
    v43 = self->_debugTimer;
    if (v43)
    {
      logHandle4 = [(VMUDebugTimer *)v43 logHandle];
      signpostID6 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle4))
      {
        *v105 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_BEGIN, signpostID6, "processSnapshotGraph", "getting node labels", v105, 2u);
      }
    }

    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v109[2] = __56__VMUTaskMemoryScanner_processSnapshotGraphWithOptions___block_invoke;
    v109[3] = &unk_1E8277BC0;
    v109[4] = self;
    [(VMUTaskMemoryScanner *)self enumerateObjectsWithBlock:v109];
    [(VMUProcessObjectGraph *)self->_processObjectGraph parseAddressesFromNodeLabelsIntoSymbolStore];
  }

  regionsCount = self->_regionsCount;
  if (regionsCount)
  {
    v47 = self->_debugTimer;
    if (v47)
    {
      signpostID7 = [(VMUDebugTimer *)v47 signpostID];
      v47 = self->_debugTimer;
      if (signpostID7)
      {
        logHandle5 = [(VMUDebugTimer *)v47 logHandle];
        signpostID8 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle5))
        {
          *v105 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_END, signpostID8, "processSnapshotGraph", "", v105, 2u);
        }

        v47 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v47 endEvent:"processSnapshotGraph"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"processSnapshotGraph" message:"scan nodes into the graph, while recording symbols of __DATA regions and stacks"];
    v51 = self->_debugTimer;
    if (v51)
    {
      logHandle6 = [(VMUDebugTimer *)v51 logHandle];
      signpostID9 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle6))
      {
        *v105 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle6, OS_SIGNPOST_INTERVAL_BEGIN, signpostID9, "processSnapshotGraph", "scan nodes into the graph, while recording symbols of __DATA regions and stacks", v105, 2u);
      }
    }

    v54 = malloc_type_calloc(regionsCount, 4uLL, 0x100004052888210uLL);
    *v105 = 0;
    v106 = v105;
    v107 = 0x2020000000;
    v108 = 0;
    v55 = self->_processObjectGraph;
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __56__VMUTaskMemoryScanner_processSnapshotGraphWithOptions___block_invoke_310;
    v104[3] = &unk_1E8277C10;
    v104[4] = self;
    v104[5] = v105;
    [(VMUObjectGraph *)v55 enumerateObjectsWithBlock:v104];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __56__VMUTaskMemoryScanner_processSnapshotGraphWithOptions___block_invoke_3;
    v86[3] = &unk_1E8277C38;
    v98 = v54;
    optionsCopy = options;
    v100 = v80;
    v101 = v82;
    v102 = v79;
    v103 = v17;
    v86[4] = self;
    v90 = v128;
    v91 = v125;
    v92 = v127;
    v87 = v32;
    v93 = buf;
    v94 = v114;
    v95 = v112;
    v96 = v110;
    v88 = sampleAllThreadsOnce;
    v89 = v27;
    v97 = v105;
    [(VMUTaskMemoryScanner *)self scanNodesWithReferenceRecorder:v86];
    v56 = self->_debugTimer;
    if (v56)
    {
      signpostID10 = [(VMUDebugTimer *)v56 signpostID];
      v56 = self->_debugTimer;
      if (signpostID10)
      {
        logHandle7 = [(VMUDebugTimer *)v56 logHandle];
        signpostID11 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle7))
        {
          *v85 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle7, OS_SIGNPOST_INTERVAL_END, signpostID11, "processSnapshotGraph", "", v85, 2u);
        }

        v56 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v56 endEvent:"processSnapshotGraph"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"processSnapshotGraph" message:"find unreferenced VM regions"];
    v60 = self->_debugTimer;
    if (v60)
    {
      logHandle8 = [(VMUDebugTimer *)v60 logHandle];
      signpostID12 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle8))
      {
        *v85 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle8, OS_SIGNPOST_INTERVAL_BEGIN, signpostID12, "processSnapshotGraph", "find unreferenced VM regions", v85, 2u);
      }
    }

    v63 = malloc_type_malloc(4 * regionsCount, 0x100004052888210uLL);
    v64 = v63;
    v65 = self->_blocksCount;
    if (v65)
    {
      v66 = 0;
      v67 = 0;
      v68 = self->_blocks + 1;
      do
      {
        v70 = *v68;
        v68 += 2;
        v69 = v70;
        if ((v70 & 7) == 5 && !*&v54[(v69 >> 39) & 0x1FFFFFC])
        {
          *(v63 + v67) = v66;
          v67 = (v67 + 1);
          v65 = self->_blocksCount;
        }

        ++v66;
      }

      while (v66 < v65);
      if (v67)
      {
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = __56__VMUTaskMemoryScanner_processSnapshotGraphWithOptions___block_invoke_337;
        v84[3] = &unk_1E8277C60;
        v84[4] = self;
        [(VMUTaskMemoryScanner *)self _removeFalsePositiveLeakedVMregionsFromNodes:v63 nodeCount:v67 recorder:v84];
      }
    }

    free(v64);
    free(v54);

    _Block_object_dispose(v105, 8);
  }

  CSRelease();
  [(VMUTaskMemoryScanner *)self unmapAllRegions];
  v71 = self->_debugTimer;
  if (v71)
  {
    signpostID13 = [(VMUDebugTimer *)v71 signpostID];
    v71 = self->_debugTimer;
    if (signpostID13)
    {
      logHandle9 = [(VMUDebugTimer *)v71 logHandle];
      signpostID14 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle9))
      {
        *v105 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle9, OS_SIGNPOST_INTERVAL_END, signpostID14, "processSnapshotGraph", "", v105, 2u);
      }

      v71 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v71 endEvent:"processSnapshotGraph"];
  if ((options & 1) != 0 && ![(VMUTask *)self->_task isCore])
  {
    v75 = [[VMUGraphStackLogReader alloc] initWithTask:self->_task symbolicator:v79 graph:v17 debugTimer:self->_processObjectGraph collectDisklogs:self->_debugTimer, (options >> 3) & 1];
    if (v75)
    {
      [(VMUProcessObjectGraph *)self->_processObjectGraph setStackLogReader:v75];
    }
  }

  [(VMUProcessObjectGraph *)self->_processObjectGraph setIdleExitStatus:self->_idleExitStatus];
  v76 = self->_processObjectGraph;
  _Block_object_dispose(v110, 8);
  _Block_object_dispose(v112, 8);

  _Block_object_dispose(v114, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v125, 8);
  _Block_object_dispose(v127, 8);
  _Block_object_dispose(v128, 8);
  v77 = *MEMORY[0x1E69E9840];

  return v76;
}

void __56__VMUTaskMemoryScanner_processSnapshotGraphWithOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) >> 60 == 1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [*(a1 + 32) labelForNode:a2];
    if (v7)
    {
      [*(*(a1 + 32) + 512) setLabel:v7 forNode:a2];
    }

    objc_autoreleasePoolPop(v6);
  }
}

void __56__VMUTaskMemoryScanner_processSnapshotGraphWithOptions___block_invoke_310(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3[1] >> 60 == 2)
  {
    v21[17] = v4;
    v21[18] = v5;
    v10 = [*(*(a1 + 32) + 512) vmuVMRegionForNode:a2];
    v11 = [v10 type];
    if ([v11 hasPrefix:@"__DATA"])
    {
      v12 = [v10 path];
      v13 = [v12 lastPathComponent];
      v14 = [v13 hasPrefix:@"dyld"];

      if (v14)
      {
        v15 = [*(*(a1 + 32) + 512) rangeForSymbolName:@"_main_thread" inRegion:v10];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = v15;
          v17 = [*(*(a1 + 32) + 512) is64bit];
          v18 = 348;
          if (v17)
          {
            v18 = 568;
          }

          v19 = v16 - *a3 + v18;
          v20 = *(*(a1 + 32) + 512);
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __56__VMUTaskMemoryScanner_processSnapshotGraphWithOptions___block_invoke_2;
          v21[3] = &unk_1E8277BE8;
          v21[4] = *(a1 + 40);
          v21[5] = v19;
          v21[6] = a4;
          [v20 enumerateReferencesOfNode:a2 withBlock:v21];
        }
      }
    }

    else
    {
    }
  }
}

uint64_t __56__VMUTaskMemoryScanner_processSnapshotGraphWithOptions___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (*(a5 + 8) == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a6 = 1;
    **(result + 48) = 1;
  }

  return result;
}

void __56__VMUTaskMemoryScanner_processSnapshotGraphWithOptions___block_invoke_3(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  if ([*(*(a1 + 32) + 512) addEdgeFromNode:a2 sourceOffset:a3 - *(*(*(a1 + 32) + 80) + 16 * a2) withScanType:a4 toNode:a5 destinationOffset:a6 - *(*(*(a1 + 32) + 80) + 16 * a5)] != -1)
  {
    if (v8 != a5 && (*(*(*(a1 + 32) + 80) + 16 * a5 + 8) & 7) == 5)
    {
      v10 = *(*(*(a1 + 32) + 80) + 16 * a5 + 8);
      ++*(*(a1 + 128) + ((v10 >> 39) & 0x1FFFFFC));
    }

    if ((*(a1 + 136) & 4) != 0)
    {
      v11 = v8;
      if (VMUGraphNodeType_IsVMRegion(*(*(*(a1 + 32) + 80) + 16 * v8 + 8) & 7))
      {
        v12 = objc_autoreleasePoolPush();
        v13 = *(*(*(a1 + 32) + 96) + ((*(*(*(a1 + 32) + 80) + 16 * v11 + 8) >> 35) & 0x1FFFFFC0));
        v14 = v13;
        v15 = v13[132];
        if ((v15 & 2) != 0)
        {
          if ((v13[132] & 4) == 0)
          {
LABEL_17:
            v21 = (a1 + 160);
            v23 = (a1 + 168);
LABEL_18:
            v24 = *v21;
            v25 = *v23;
            if (a3 - *(*(*(a1 + 64) + 8) + 32) >= *(*(*(a1 + 64) + 8) + 40))
            {
              CSSymbolicatorGetSectionWithAddressAtTime();
              Name = CSRegionGetName();
              if (Name)
              {
                v27 = Name;
                v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
                Range = CSRegionGetRange();
                v30 = *(*(a1 + 64) + 8);
                *(v30 + 32) = Range;
                *(v30 + 40) = v31;
                [*(*(a1 + 32) + 512) setBinarySectionName:v28 forRange:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)}];
                v32 = !strncmp(v27, "__DATA __objc_", 0xEuLL) || !strncmp(v27, "__AUTH __objc_", 0xEuLL) || !strncmp(v27, "__DATA_DIRTY __objc_", 0x14uLL) || !strncmp(v27, "__DATA_CONST __objc_", 0x14uLL) || !strncmp(v27, "__AUTH_CONST __objc_", 0x14uLL) || strncmp(v27, "__OBJC ", 7uLL) == 0;
                *(*(*(a1 + 72) + 8) + 24) = v32;
              }
            }

            if (*(*(*(a1 + 72) + 8) + 24))
            {
              goto LABEL_33;
            }

            if (a3 - *(*(*(a1 + 80) + 8) + 32) < *(*(*(a1 + 80) + 8) + 40))
            {
              goto LABEL_33;
            }

            [*(a1 + 40) addAddress:a3 origin:2];
            CSSymbolicatorGetSymbolWithAddressAtTime();
            v33 = CSSymbolGetName();
            if (!v33)
            {
              goto LABEL_33;
            }

            v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v33];
            v35 = CSSymbolGetRange();
            v36 = *(*(a1 + 80) + 8);
            *(v36 + 32) = v35;
            *(v36 + 40) = v37;
            v38 = *(*(a1 + 32) + 512);
            v39 = *(a1 + 80);
LABEL_32:
            [v38 setRegionSymbolName:v34 forRange:{*(*(v39 + 8) + 32), *(*(v39 + 8) + 40)}];

LABEL_33:

            objc_autoreleasePoolPop(v12);
            return;
          }
        }

        else if ((v13[132] & 4) == 0)
        {
          if (![v13 isStack] || a3 - *(*(*(a1 + 88) + 8) + 32) < *(*(*(a1 + 88) + 8) + 40))
          {
            goto LABEL_33;
          }

          if (a3 - *(*(*(a1 + 96) + 8) + 32) >= *(*(*(a1 + 96) + 8) + 40))
          {
            v16 = [*(*(a1 + 32) + 136) indexForLocation:a3];
            if (v16 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = *(*(a1 + 96) + 8);
              *(v17 + 32) = 0;
              *(v17 + 40) = 0;
              v18 = *(*(a1 + 104) + 8);
              v19 = *(v18 + 40);
              *(v18 + 40) = 0;

              *(*(*(a1 + 112) + 8) + 24) = 0;
            }

            else
            {
              v40 = v16;
              v41 = [*(*(a1 + 32) + 136) rangeAtIndex:v16];
              v42 = *(*(a1 + 96) + 8);
              *(v42 + 32) = v41;
              *(v42 + 40) = v43;
              if ([*(a1 + 48) count])
              {
                v44 = 0;
                v45 = 0;
                while (1)
                {
                  v46 = [*(a1 + 48) objectAtIndexedSubscript:v44];
                  if ([v46 backtraceLength])
                  {
                    if ([v46 backtraceLength])
                    {
                      v47 = 0;
                      while (!*([v46 stackFramePointers] + 8 * v47))
                      {
                        if (++v47 >= [v46 backtraceLength])
                        {
                          goto LABEL_43;
                        }
                      }

                      v48 = *([v46 stackFramePointers] + 8 * v47);
                    }

                    else
                    {
LABEL_43:
                      v48 = 0;
                    }

                    if ((v48 - *(*(*(a1 + 96) + 8) + 32)) < *(*(*(a1 + 96) + 8) + 40))
                    {
                      break;
                    }
                  }

                  v44 = ++v45;
                  if ([*(a1 + 48) count] <= v45)
                  {
                    goto LABEL_49;
                  }
                }

                v49 = *(*(a1 + 104) + 8);
                v50 = *(v49 + 40);
                *(v49 + 40) = v46;
              }

LABEL_49:
              if (*(*(*(a1 + 104) + 8) + 40))
              {
                *(*(*(a1 + 112) + 8) + 24) = 0;
                v51 = [*(a1 + 56) threadDescriptionStringForBacktrace:*(*(*(a1 + 104) + 8) + 40) returnedAddress:0];
                [*(*(a1 + 32) + 512) setThreadName:v51 forRange:{*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40)}];
                [*(*(a1 + 32) + 512) setThreadName:v51 forRange:{v40, 1}];
                if (v40 || (*(*(*(a1 + 120) + 8) + 24) & 1) == 0)
                {
                  v52 = *(*(*(a1 + 96) + 8) + 40) + *(*(*(a1 + 96) + 8) + 32);
                  v53 = [gPthreadOffsets objectForKeyedSubscript:@"RegionEndOffsetKey"];
                  v54 = [v53 unsignedLongLongValue];

                  [*(*(a1 + 32) + 512) setRegionSymbolName:@"<PTHREAD_T>" forRange:{v52 - v54, v54}];
                }
              }

              else
              {
                if ([*(*(a1 + 32) + 8) isCore])
                {
                  v55 = &stru_1F461F9C8;
                }

                else
                {
                  v55 = [*(a1 + 56) threadDescriptionStringForBacktrace:*(*(*(a1 + 104) + 8) + 40) returnedAddress:0];
                }

                v56 = [(__CFString *)v55 stringByAppendingString:@"  no associated pthread"];

                [*(*(a1 + 32) + 512) setThreadName:v56 forRange:{*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40)}];
                [*(*(a1 + 32) + 512) setThreadName:v56 forRange:{v40, 1}];
              }
            }
          }

          v57 = *(*(*(a1 + 104) + 8) + 40);
          if (!v57)
          {
            goto LABEL_33;
          }

          v58 = [v57 backtraceLength];
          if (*(*(*(a1 + 112) + 8) + 24) >= v58)
          {
            goto LABEL_33;
          }

          v59 = v58;
          while (1)
          {
            v60 = *([*(*(*(a1 + 104) + 8) + 40) stackFramePointers] + 8 * *(*(*(a1 + 112) + 8) + 24));
            v61 = [*(*(*(a1 + 104) + 8) + 40) backtrace];
            v62 = *(*(a1 + 112) + 8);
            v63 = *(v62 + 24);
            if (v60 > a3)
            {
              break;
            }

            *(v62 + 24) = v63 + 1;
            if (*(*(*(a1 + 112) + 8) + 24) >= v59)
            {
              goto LABEL_33;
            }
          }

          v64 = *(v61 + 8 * v63);
          v65 = *(*(a1 + 88) + 8);
          *(v65 + 32) = a3;
          *(v65 + 40) = v60 - a3;
          v66 = *(a1 + 160);
          v67 = *(a1 + 168);
          CSSymbolicatorGetSymbolWithAddressAtTime();
          CSSymbolGetSymbolOwner();
          v68 = CSSymbolOwnerGetName();
          if (CSSymbolIsUnnamed())
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%#llx (in %s)", v64, v68];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%s (in %s)", CSSymbolGetName(), v68];
          }
          v34 = ;
          if (!v34)
          {
            goto LABEL_33;
          }

          v38 = *(*(a1 + 32) + 512);
          v39 = *(a1 + 88);
          goto LABEL_32;
        }

        v21 = (a1 + 144);
        v20 = *(a1 + 144);
        v23 = (a1 + 152);
        v22 = *(a1 + 152);
        if (!CSIsNull())
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }
  }
}

- (BOOL)hasClassInfosDerivedFromStackBacktraces
{
  realizedClasses = [(VMUTaskMemoryScanner *)self realizedClasses];
  hasClassInfosDerivedFromStackBacktraces = [realizedClasses hasClassInfosDerivedFromStackBacktraces];

  return hasClassInfosDerivedFromStackBacktraces;
}

- ($61A80719B04F7407D3E47539F1B23CAA)nodeDetails:(VMUTaskMemoryScanner *)self
{
  v3 = v2;
  if (self->_blocksCount <= v1)
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  else
  {
    v4 = v1;
    *v2 = 0;
    v2[1] = 0;
    selfCopy = self;
    v6 = &selfCopy->_blocks[v4];
    v7 = *(v6 + 1);
    if ((v7 & 7) == 1)
    {
      classInfosCount = selfCopy->_classInfosCount;
      *v3 = v6->var0;
      v3[1] = (v7 >> 5) & 0xFFFFFFFFFLL | 0x1000000000000000;
      if (classInfosCount <= v7 >> 41)
      {
        v9 = 0;
      }

      else
      {
        v9 = selfCopy->_classInfos[v7 >> 41];
      }
    }

    else
    {
      v9 = 0;
      *v3 = v6->var0;
      v3[1] = ((v7 >> 5) | (v7 << 60)) & 0x7000000FFFFFFFFFLL;
    }

    v3[2] = v9;
  }

  return self;
}

- (id)vmuVMRegionForAddress:(unint64_t)address
{
  v4 = 0;
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v8 = var7 - var6;
  v9 = var7 < var6;
  if (address - var6 >= v8 || v9)
  {
    goto LABEL_23;
  }

  v11 = address >> *MEMORY[0x1E69E9AC0];
  if (v11)
  {
    var3 = regionMap->var3;
    v15 = *var3;
    v13 = var3 + 1;
    v14 = v15;
    v16 = address >> *MEMORY[0x1E69E9AC0];
    do
    {
      v17 = v16 & 0x3FFFFFF;
      if (v14 <= v17 || ((*(v13 + (v17 >> 3)) >> (v16 & 7)) & 1) == 0)
      {
LABEL_22:
        v4 = 0;
        goto LABEL_23;
      }

      v16 >>= 26;
    }

    while (v16);
  }

  v18 = v11 & 0x7FFFF;
  var8 = regionMap->var8;
  v20 = regionMap->var8[v11 & 0x7FFFF];
  var4 = regionMap->var4;
  if (v20)
  {
    v22 = &var4->var0 + 8 * (v20 - 1);
    if (address - *(*v22 + 1) < *(*v22 + 2))
    {
      goto LABEL_10;
    }
  }

  var5 = regionMap->var5;
  if (!var5)
  {
    goto LABEL_22;
  }

  v24 = regionMap->var4;
  while (1)
  {
    v25 = var5 >> 1;
    v22 = &v24->var0 + 8 * (var5 >> 1);
    if (*(*v22 + 1) <= address)
    {
      break;
    }

LABEL_16:
    v26 = var5 >= 2;
    var5 = v25;
    if (!v26)
    {
      goto LABEL_22;
    }
  }

  if (*(*v22 + 2) + *(*v22 + 1) <= address)
  {
    v24 = (v22 + 8);
    v25 = --var5 >> 1;
    goto LABEL_16;
  }

  isSpecialPhysFootprintRegion = [*v22 isSpecialPhysFootprintRegion];
  if (isSpecialPhysFootprintRegion)
  {
    v28 = 0;
  }

  else
  {
    v28 = v22;
  }

  if (isSpecialPhysFootprintRegion)
  {
    goto LABEL_22;
  }

  if ((*(*v28 + 132) & 1) == 0)
  {
    goto LABEL_39;
  }

  v30 = v28 + 8;
  v31 = regionMap->var5 - (((v28 + 8) - regionMap->var4) >> 6);
  if (!v31)
  {
    goto LABEL_36;
  }

  while (2)
  {
    v32 = v31 >> 1;
    v33 = &v30[8 * (v31 >> 1)];
    if (*(*v33 + 1) > address)
    {
LABEL_31:
      v34 = v31 > 1;
      v31 = v32;
      if (!v34)
      {
        v31 = 0;
        goto LABEL_36;
      }

      continue;
    }

    break;
  }

  if (*(*v33 + 2) + *(*v33 + 1) <= address)
  {
    v30 = v33 + 8;
    v32 = --v31 >> 1;
    goto LABEL_31;
  }

  if ([*v33 isSpecialPhysFootprintRegion])
  {
    v31 = 0;
  }

  else
  {
    v31 = v33;
  }

LABEL_36:
  if (v31)
  {
    v28 = v31;
  }

  v22 = v28;
LABEL_39:
  var8[v18] = ((v28 - var4) >> 6) + 1;
LABEL_10:
  v4 = *v22;
LABEL_23:

  return v4;
}

- (id)zoneNameForNode:(unsigned int)node
{
  if (self->_blocksCount <= node)
  {
    v9 = 0;

    return v9;
  }

  nodeCopy = node;
  if (VMUGraphNodeType_IsVMRegion(*(&self->_blocks[node] + 2) & 7))
  {
    v6 = &self->_regions->var0 + 8 * (*(&self->_blocks[nodeCopy] + 1) >> 41);
    if (!v6)
    {
      goto LABEL_46;
    }

    goto LABEL_4;
  }

  v11 = &self->_blocks[nodeCopy];
  if ((*(v11 + 1) & 7) != 1)
  {
    goto LABEL_46;
  }

  v9 = 0;
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v15 = var7 >= var6;
  v16 = var7 - var6;
  if (!v15)
  {
    goto LABEL_47;
  }

  var0 = v11->var0;
  if (v11->var0 - var6 >= v16)
  {
    goto LABEL_47;
  }

  v18 = var0 >> *MEMORY[0x1E69E9AC0];
  if (v18)
  {
    var3 = regionMap->var3;
    v22 = *var3;
    v20 = var3 + 1;
    v21 = v22;
    v23 = var0 >> *MEMORY[0x1E69E9AC0];
    do
    {
      v24 = v23 & 0x3FFFFFF;
      if (v21 <= v24 || ((*(v20 + (v24 >> 3)) >> (v23 & 7)) & 1) == 0)
      {
        goto LABEL_46;
      }

      v23 >>= 26;
    }

    while (v23);
  }

  v25 = v18 & 0x7FFFF;
  var8 = regionMap->var8;
  v27 = regionMap->var8[v18 & 0x7FFFF];
  var4 = regionMap->var4;
  if (v27)
  {
    v7 = *(&var4->var0 + 8 * (v27 - 1));
    if (var0 - *(v7 + 1) < *(v7 + 2))
    {
      goto LABEL_5;
    }
  }

  var5 = regionMap->var5;
  if (!var5)
  {
    goto LABEL_46;
  }

  v30 = regionMap->var4;
  while (1)
  {
    v31 = var5 >> 1;
    v6 = &v30->var0 + 8 * (var5 >> 1);
    if (*(*v6 + 1) <= var0)
    {
      break;
    }

LABEL_26:
    v9 = 0;
    v15 = var5 >= 2;
    var5 = v31;
    if (!v15)
    {
      goto LABEL_47;
    }
  }

  if (*(*v6 + 2) + *(*v6 + 1) <= var0)
  {
    v30 = (v6 + 8);
    v31 = --var5 >> 1;
    goto LABEL_26;
  }

  isSpecialPhysFootprintRegion = [*v6 isSpecialPhysFootprintRegion];
  if (isSpecialPhysFootprintRegion)
  {
    v33 = 0;
  }

  else
  {
    v33 = v6;
  }

  if (isSpecialPhysFootprintRegion)
  {
    goto LABEL_46;
  }

  if ((*(*v33 + 132) & 1) == 0)
  {
    goto LABEL_45;
  }

  v34 = v33 + 8;
  v35 = regionMap->var5 - (((v33 + 8) - regionMap->var4) >> 6);
  if (!v35)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v36 = v35 >> 1;
    v37 = &v34[8 * (v35 >> 1)];
    if (*(*v37 + 1) > var0)
    {
LABEL_37:
      v38 = v35 > 1;
      v35 = v36;
      if (!v38)
      {
        v35 = 0;
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  if (*(*v37 + 2) + *(*v37 + 1) <= var0)
  {
    v34 = v37 + 8;
    v36 = --v35 >> 1;
    goto LABEL_37;
  }

  if ([*v37 isSpecialPhysFootprintRegion])
  {
    v35 = 0;
  }

  else
  {
    v35 = v37;
  }

LABEL_42:
  if (v35)
  {
    v6 = v35;
  }

  else
  {
    v6 = v33;
  }

LABEL_45:
  var8[v25] = ((v6 - var4) >> 6) + 1;
  if (!v6)
  {
LABEL_46:
    v9 = 0;
    goto LABEL_47;
  }

LABEL_4:
  v7 = *v6;
LABEL_5:
  v8 = *(v7 + 37);
  if (self->_zonesCount <= v8)
  {
    goto LABEL_46;
  }

  v9 = [self->_zones[v8].var1 copy];
LABEL_47:

  return v9;
}

- (id)zoneNameForIndex:(unsigned int)index
{
  if (self->_zonesCount <= index)
  {
    return 0;
  }

  else
  {
    return self->_zones[index].var1;
  }
}

- (void)contentForNode:(unsigned int)node
{
  if (self->_blocksCount <= node)
  {
    return 0;
  }

  v101[2] = v6;
  v101[3] = v5;
  v101[14] = v3;
  v101[15] = v4;
  result = 0;
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v12 = var7 >= var6;
  v13 = var7 - var6;
  if (v12)
  {
    var0 = self->_blocks[node].var0;
    if (var0 - var6 < v13)
    {
      v16 = MEMORY[0x1E69E9AC0];
      v17 = var0 >> *MEMORY[0x1E69E9AC0];
      if (v17)
      {
        var3 = regionMap->var3;
        v21 = *var3;
        v19 = var3 + 1;
        v20 = v21;
        v22 = var0 >> *MEMORY[0x1E69E9AC0];
        do
        {
          v23 = v22 & 0x3FFFFFF;
          if (v20 <= v23 || ((*(v19 + (v23 >> 3)) >> (v22 & 7)) & 1) == 0)
          {
            return 0;
          }

          v22 >>= 26;
        }

        while (v22);
      }

      v24 = v17 & 0x7FFFF;
      v25 = regionMap->var8[v17 & 0x7FFFF];
      var4 = regionMap->var4;
      if (v25)
      {
        v27 = var4 + 64 * (v25 - 1);
        if (var0 - *(*v27 + 8) < *(*v27 + 16))
        {
          goto LABEL_12;
        }
      }

      var5 = regionMap->var5;
      if (var5)
      {
        v51 = regionMap->var4;
        do
        {
          v52 = var5 >> 1;
          v27 = v51 + 64 * (var5 >> 1);
          if (*(*v27 + 8) <= var0)
          {
            if (*(*v27 + 16) + *(*v27 + 8) > var0)
            {
              isSpecialPhysFootprintRegion = [*v27 isSpecialPhysFootprintRegion];
              if (isSpecialPhysFootprintRegion)
              {
                v61 = 0;
              }

              else
              {
                v61 = v27;
              }

              if (isSpecialPhysFootprintRegion)
              {
                return 0;
              }

              if ((*(*v61 + 132) & 1) == 0)
              {
                goto LABEL_73;
              }

              v62 = (v61 + 64);
              v63 = regionMap->var5 - ((v61 + 64 - regionMap->var4) >> 6);
              if (!v63)
              {
                goto LABEL_70;
              }

              while (1)
              {
                v64 = v63 >> 1;
                v65 = &v62[8 * (v63 >> 1)];
                if (*(*v65 + 1) <= var0)
                {
                  if (*(*v65 + 2) + *(*v65 + 1) > var0)
                  {
                    v77 = v61;
                    isSpecialPhysFootprintRegion2 = [*v65 isSpecialPhysFootprintRegion];
                    v61 = v77;
                    if (isSpecialPhysFootprintRegion2)
                    {
                      v63 = 0;
                    }

                    else
                    {
                      v63 = v65;
                    }

LABEL_70:
                    if (v63)
                    {
                      v61 = v63;
                    }

                    v27 = v61;
LABEL_73:
                    regionMap->var8[v24] = ((v61 - var4) >> 6) + 1;
LABEL_12:
                    nodeCopy = node;
                    v29 = &self->_blocks[node];
                    v30 = ((*(v29 + 1) >> 5) & 0xFFFFFFFFFLL) + v29->var0;
                    if (*(*v27 + 16) + *(*v27 + 8) >= v30)
                    {
                      memoryCache = self->_memoryCache;
                      regions = self->_regions;
                      regionsCount = self->_regionsCount;
                      v35 = self->_task;
                      v56 = memoryCache;
                      if (!*(v27 + 6) && ([*v27 isSpecialPhysFootprintRegion] & 1) == 0)
                      {
                        aBlock[0] = 0;
                        v101[0] = 0;
                        v57 = [(VMUTaskMemoryCache *)v56 mapAddress:*(*v27 + 8) size:*(*v27 + 16) returnedAddress:aBlock returnedSize:v101];
                        if (v57)
                        {
                          if ((*(*v27 + 52) & 3u) - 1 >= 2)
                          {
                            v58 = v57;
                            v59 = task_exists(v35);
                            if (v27 != regions + 64 * (regionsCount - 1) && v59)
                            {
                              if ([*v27 isJavascriptJitExecutableAllocator])
                              {
                                *(v27 + 5) |= 1uLL;
                              }

                              else
                              {
                                v94 = *MEMORY[0x1E69E9848];
                                v91 = nodeCopy;
                                address = [*v27 address];
                                v79 = *(*v27 + 24);
                                v80 = vm_prot_strings[v79];
                                v81 = *(*v27 + 16) + *(*v27 + 8);
                                VMUExclaveOrDarwinRegionTypeDescriptionForTagShareProtAndPager(*(*v27 + 232), *(*v27 + 104), *(*v27 + 50), v79, *(*v27 + 49));
                                v83 = v82 = v35;
                                uTF8String = [v83 UTF8String];
                                v85 = *(*v27 + 16) >> *v16;
                                v86 = "pages";
                                if (v85 == 1)
                                {
                                  v86 = "page";
                                }

                                if (*(v27 + 3) == *(v27 + 4))
                                {
                                  v87 = "";
                                }

                                else
                                {
                                  v87 = " [root]";
                                }

                                v88 = v81;
                                nodeCopy = v91;
                                fprintf(v94, "Failed to map remote region: [%#llx-%#llx] %s %s (%llu %s)%s (error: %d)\n", address, v88, v80, uTF8String, v85, v86, v87, v58);

                                v35 = v82;
                              }
                            }
                          }
                        }

                        else
                        {
                          v75 = aBlock[0];
                          *(v27 + 5) = *(v27 + 5) & 1 | (2 * v101[0]);
                          *(v27 + 6) = v75;
                          *(v27 + 7) = v27;
                        }
                      }

                      v36 = v56;
                    }

                    else
                    {
                      LODWORD(v31) = 1;
                      do
                      {
                        v32 = (*&v27[64 * v31] + 8);
                        v31 = (v31 + 1);
                      }

                      while (v32[1] + *v32 < v30);
                      v34 = self->_memoryCache;
                      objectIdentifier = self->_objectIdentifier;
                      v35 = self->_task;
                      v36 = objectIdentifier;
                      v37 = v34;
                      v38 = v37;
                      v39 = 0;
                      if (v31)
                      {
                        v40 = v31;
                        v41 = v27;
                        do
                        {
                          v42 = *v41;
                          v41 += 8;
                          v39 += *(v42 + 16);
                          --v40;
                        }

                        while (v40);
                      }

                      v101[0] = 0;
                      v95 = 0;
                      v43 = [(VMUTaskMemoryCache *)v37 findMappedAddress:*(*v27 + 8) size:v39];
                      if (v43)
                      {
                        var1 = v43->var1;
                        v45 = *(*v27 + 8) - v43->var0;
                        v101[0] = v43->var2 + v45;
                        v95 = var1 - v45;
                        goto LABEL_20;
                      }

                      v89 = v35;
                      v90 = nodeCopy;
                      if (v31)
                      {
                        v67 = v31;
                        v68 = v27;
                        v93 = v38;
                        do
                        {
                          v69 = v36;
                          v70 = v38;
                          v71 = v70;
                          if (v68[6])
                          {
                            if (v68 == v68[7])
                            {
                              aBlock[0] = MEMORY[0x1E69E9820];
                              aBlock[1] = 3221225472;
                              aBlock[2] = ___unmapRegion_block_invoke;
                              aBlock[3] = &unk_1E8277CB0;
                              v97 = v70;
                              v99 = v68;
                              v98 = v69;
                              v100 = v27;
                              v73 = v36;
                              v74 = _Block_copy(aBlock);
                              v74[2]();

                              v36 = v73;
                              v38 = v93;
                            }

                            else
                            {
                              v72 = v68[5] & 1;
                              v68[6] = 0;
                              v68[7] = 0;
                              v68[5] = v72;
                            }
                          }

                          v68 += 8;
                          --v67;
                        }

                        while (v67);
                      }

                      v35 = v89;
                      nodeCopy = v90;
                      if ([(VMUTaskMemoryCache *)v38 mapAddress:*(*v27 + 8) size:v39 returnedAddress:v101 returnedSize:&v95])
                      {
                        if (task_exists(v89))
                        {
                          fprintf(*MEMORY[0x1E69E9848], "Failed to map remote region at [%#llx-%#llx]\n", *(*v27 + 8), *(*v27 + 8) + v39);
                        }
                      }

                      else
                      {
LABEL_20:
                        if (v31)
                        {
                          v46 = v95;
                          v47 = (v27 + 40);
                          do
                          {
                            v47[2] = v27;
                            *v47 = *v47 & 1 | (2 * v46);
                            v48 = v101[0];
                            v47[1] = v101[0];
                            v49 = *(v47 - 5) + 8;
                            v101[0] = *(*(v47 - 5) + 16) + v48;
                            v46 = v95 - *(v49 + 8);
                            v95 = v46;
                            v47 += 8;
                            --v31;
                          }

                          while (v31);
                        }
                      }
                    }

                    v76 = *(v27 + 6);
                    if (v76)
                    {
                      return (v76 + self->_blocks[nodeCopy].var0 - *(*v27 + 8));
                    }

                    return 0;
                  }

                  v62 = v65 + 8;
                  v64 = --v63 >> 1;
                }

                v66 = v63 > 1;
                v63 = v64;
                if (!v66)
                {
                  v63 = 0;
                  goto LABEL_70;
                }
              }
            }

            v51 = (v27 + 64);
            v52 = --var5 >> 1;
          }

          v12 = var5 >= 2;
          var5 = v52;
        }

        while (v12);
      }

      return 0;
    }
  }

  return result;
}

- (unsigned)mallocNodeCount
{
  blocksCount = self->_blocksCount;
  if (!blocksCount)
  {
    return 0;
  }

  result = 0;
  v5 = self->_blocks + 1;
  do
  {
    v6 = *v5;
    v5 += 2;
    if ((v6 & 7) == 1)
    {
      ++result;
    }

    --blocksCount;
  }

  while (blocksCount);
  return result;
}

- (id)classInfoForObjectAtAddress:(unint64_t)address
{
  v4 = [VMUTask stripExtraPointerBits:?];
  0xFFFFFFFFFLL = 0;
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v9 = var7 >= var6;
  v10 = var7 - var6;
  if (!v9 || v4 - var6 >= v10)
  {
    goto LABEL_64;
  }

  v11 = MEMORY[0x1E69E9AC0];
  v12 = v4 >> *MEMORY[0x1E69E9AC0];
  if (v12)
  {
    var3 = regionMap->var3;
    v16 = *var3;
    v14 = var3 + 1;
    v15 = v16;
    v17 = v4 >> *MEMORY[0x1E69E9AC0];
    do
    {
      v18 = v17 & 0x3FFFFFF;
      if (v15 <= v18 || ((*(v14 + (v18 >> 3)) >> (v17 & 7)) & 1) == 0)
      {
        goto LABEL_63;
      }

      v17 >>= 26;
    }

    while (v17);
  }

  v19 = v12 & 0x7FFFF;
  v20 = regionMap->var8[v12 & 0x7FFFF];
  var4 = regionMap->var4;
  if (v20)
  {
    v22 = var4 + 64 * (v20 - 1);
    if (v4 - *(*v22 + 8) < *(*v22 + 16))
    {
      goto LABEL_11;
    }
  }

  var5 = regionMap->var5;
  if (!var5)
  {
    goto LABEL_63;
  }

  v40 = regionMap->var4;
  while (1)
  {
    v41 = var5 >> 1;
    v22 = v40 + 64 * (var5 >> 1);
    if (*(*v22 + 8) <= v4)
    {
      break;
    }

LABEL_34:
    v9 = var5 >= 2;
    var5 = v41;
    if (!v9)
    {
      goto LABEL_63;
    }
  }

  if (*(*v22 + 16) + *(*v22 + 8) <= v4)
  {
    v40 = (v22 + 64);
    v41 = --var5 >> 1;
    goto LABEL_34;
  }

  isSpecialPhysFootprintRegion = [*v22 isSpecialPhysFootprintRegion];
  if (isSpecialPhysFootprintRegion)
  {
    v43 = 0;
  }

  else
  {
    v43 = v22;
  }

  if (isSpecialPhysFootprintRegion)
  {
    goto LABEL_63;
  }

  if ((*(*v43 + 132) & 1) == 0)
  {
    goto LABEL_53;
  }

  v44 = (v43 + 64);
  v45 = regionMap->var5 - ((v43 + 64 - regionMap->var4) >> 6);
  if (!v45)
  {
    goto LABEL_50;
  }

  while (2)
  {
    v46 = v45 >> 1;
    v47 = &v44[8 * (v45 >> 1)];
    if (*(*v47 + 1) > v4)
    {
LABEL_45:
      v48 = v45 > 1;
      v45 = v46;
      if (!v48)
      {
        v45 = 0;
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

  if (*(*v47 + 2) + *(*v47 + 1) <= v4)
  {
    v44 = v47 + 8;
    v46 = --v45 >> 1;
    goto LABEL_45;
  }

  if ([*v47 isSpecialPhysFootprintRegion])
  {
    v45 = 0;
  }

  else
  {
    v45 = v47;
  }

LABEL_50:
  if (v45)
  {
    v43 = v45;
  }

  v22 = v43;
LABEL_53:
  regionMap->var8[v19] = ((v43 - var4) >> 6) + 1;
LABEL_11:
  v23 = *(v22 + 5);
  if (!v23)
  {
    goto LABEL_63;
  }

  v24 = *(v22 + 1);
  var0 = regionMap->var0;
  v26 = *(v22 + 4);
  v27 = &regionMap->var0[v26];
  if (v24)
  {
    if (v27->var0 <= v4)
    {
      v28 = &var0[v23 - 1 + v26];
      if (((*(v28 + 1) >> 5) & 0xFFFFFFFFFLL) + v28->var0 > v4)
      {
        v29 = (v24 + 4 * ((v4 - (v27->var0 & -*MEMORY[0x1E69E9AC8])) >> *v11));
        v30 = *v29;
        p_var0 = &var0[v30].var0;
        if (*p_var0 <= v4)
        {
          v32 = v29[1];
          if (v32 < regionMap->var1 && (v33 = &var0[v32].var0, v34 = *v33, *v33 <= v4))
          {
            v37 = v33[1];
LABEL_55:
            if ((v37 & 7) - 2 >= 3)
            {
              v49 = v4 - v34;
              var2 = regionMap->var2;
              if (v49 < var2 || ((v37 >> 5) & 0xFFFFFFFFFLL) - v49 <= var2)
              {
                v51 = v33 - var0;
                if (self->_blocksCount > (v51 >> 4))
                {
                  blocks = self->_blocks;
                  v53 = *(&blocks[(v51 >> 4)] + 1);
                  if ((v53 & 7) == 1)
                  {
                    v54 = v53 >> 41;
                    if (v53 >> 41 && self->_classInfosCount > v54)
                    {
                      0xFFFFFFFFFLL = self->_classInfos[v54];
                    }

                    else
                    {
                      0xFFFFFFFFFLL = [(VMUObjectIdentifier *)self->_objectIdentifier classInfoForObjectWithRange:blocks[(v51 >> 4)].var0, (v53 >> 5) & 0xFFFFFFFFFLL];
                    }

                    goto LABEL_64;
                  }
                }
              }
            }
          }

          else
          {
            v35 = v32 - v30;
            if (v35)
            {
              do
              {
                v36 = v35 >> 1;
                v33 = &p_var0[2 * (v35 >> 1)];
                v34 = *v33;
                if (*v33 <= v4)
                {
                  v37 = v33[1];
                  if (((v37 >> 5) & 0xFFFFFFFFFLL) + v34 > v4)
                  {
                    goto LABEL_55;
                  }

                  p_var0 = v33 + 2;
                  v36 = --v35 >> 1;
                }

                0xFFFFFFFFFLL = 0;
                v9 = v35 >= 2;
                v35 = v36;
              }

              while (v9);
              goto LABEL_64;
            }
          }
        }
      }
    }

LABEL_63:
    0xFFFFFFFFFLL = 0;
    goto LABEL_64;
  }

  do
  {
    v38 = v23 >> 1;
    v33 = &v27[v23 >> 1].var0;
    v34 = *v33;
    if (*v33 <= v4)
    {
      v37 = v33[1];
      if (((v37 >> 5) & 0xFFFFFFFFFLL) + v34 > v4)
      {
        goto LABEL_55;
      }

      v27 = (v33 + 2);
      v38 = --v23 >> 1;
    }

    0xFFFFFFFFFLL = 0;
    v9 = v23 >= 2;
    v23 = v38;
  }

  while (v9);
LABEL_64:

  return 0xFFFFFFFFFLL;
}

- (_VMURange)_rangeOfClassStructureForPossibleUnrealizedSwiftClassWithIsa:(unint64_t)isa
{
  v5 = [(VMUTaskMemoryScanner *)self nodeForAddress:?];
  if (v5 == -1)
  {
    v12 = 0;
    isaCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = &self->_blocks[v5];
    var0 = v6->var0;
    v8 = *(v6 + 1);
    if (VMUGraphNodeType_IsVMRegion(*(v6 + 2) & 7))
    {
      v9 = [(VMUTaskMemoryScanner *)self vmuVMRegionForAddress:isa];
      if ((v9[132] & 2) != 0)
      {
        v10 = (v8 >> 5) & 0xFFFFFFFFFLL;
      }

      else
      {
        v10 = 0;
      }

      if ((v9[132] & 2) != 0)
      {
        v11 = var0;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v14 = (v8 & 7) == 1;
      v15 = v8 >> 41 == 0;
      if (v15 && v14)
      {
        v10 = v8 >> 5;
      }

      else
      {
        v10 = 0;
      }

      if (v15 && v14)
      {
        v11 = var0;
      }

      else
      {
        v11 = 0;
      }
    }

    v16 = VMURangeContainsRange(v11, v10, isa, 40);
    v17 = !v16;
    if (v16)
    {
      isaCopy = isa;
    }

    else
    {
      isaCopy = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v12 = 0;
    }

    else
    {
      v12 = 40;
    }
  }

  result.length = v12;
  result.location = isaCopy;
  return result;
}

- (_VMURegionNode)validateAddressRangeForSwiftRemoteMirror:(VMUTaskMemoryScanner *)self allowUnusedSplitLibs:(_VMURegionNode *)libs
{
  v5 = 0;
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v9 = var7 >= var6;
  v10 = var7 - var6;
  if (!v9)
  {
    return v5;
  }

  v11 = v2;
  if (v2 - var6 >= v10)
  {
    return v5;
  }

  v12 = v4;
  v13 = v3;
  v15 = MEMORY[0x1E69E9AC0];
  v16 = v2 >> *MEMORY[0x1E69E9AC0];
  if (v16)
  {
    var3 = regionMap->var3;
    v20 = *var3;
    v18 = var3 + 1;
    v19 = v20;
    v21 = v2 >> *MEMORY[0x1E69E9AC0];
    do
    {
      v22 = v21 & 0x3FFFFFF;
      if (v19 <= v22 || ((*(v18 + (v22 >> 3)) >> (v21 & 7)) & 1) == 0)
      {
        return 0;
      }

      v21 >>= 26;
    }

    while (v21);
  }

  v23 = v16 & 0x7FFFF;
  v24 = regionMap->var8[v16 & 0x7FFFF];
  var4 = regionMap->var4;
  if (v24)
  {
    v26 = (var4 + 64 * (v24 - 1));
    if (v2 - *(v26->var0 + 1) < *(v26->var0 + 2))
    {
      goto LABEL_11;
    }
  }

  var5 = regionMap->var5;
  if (!var5)
  {
    return 0;
  }

  v31 = regionMap->var4;
  while (1)
  {
    v32 = var5 >> 1;
    v26 = (v31 + 64 * (var5 >> 1));
    if (*(v26->var0 + 1) <= v2)
    {
      break;
    }

LABEL_20:
    v9 = var5 >= 2;
    var5 = v32;
    if (!v9)
    {
      return 0;
    }
  }

  if (*(v26->var0 + 2) + *(v26->var0 + 1) <= v2)
  {
    v31 = (v26 + 64);
    v32 = --var5 >> 1;
    goto LABEL_20;
  }

  isSpecialPhysFootprintRegion = [v26->var0 isSpecialPhysFootprintRegion];
  if (isSpecialPhysFootprintRegion)
  {
    v34 = 0;
  }

  else
  {
    v34 = v26;
  }

  if (isSpecialPhysFootprintRegion)
  {
    return 0;
  }

  v15 = MEMORY[0x1E69E9AC0];
  if ((*(*v34 + 132) & 1) == 0)
  {
    goto LABEL_66;
  }

  v51 = (v34 + 64);
  v52 = regionMap->var5 - ((v34 + 64 - regionMap->var4) >> 6);
  if (!v52)
  {
    goto LABEL_63;
  }

  while (2)
  {
    v53 = v52 >> 1;
    v54 = &v51[8 * (v52 >> 1)];
    if (*(*v54 + 1) > v11)
    {
LABEL_55:
      v55 = v52 > 1;
      v52 = v53;
      if (!v55)
      {
        v52 = 0;
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  if (*(*v54 + 2) + *(*v54 + 1) <= v11)
  {
    v51 = v54 + 8;
    v53 = --v52 >> 1;
    goto LABEL_55;
  }

  v56 = v34;
  isSpecialPhysFootprintRegion2 = [*v54 isSpecialPhysFootprintRegion];
  v34 = v56;
  v15 = MEMORY[0x1E69E9AC0];
  if (isSpecialPhysFootprintRegion2)
  {
    v52 = 0;
  }

  else
  {
    v52 = v54;
  }

LABEL_63:
  if (v52)
  {
    v34 = v52;
  }

  v26 = v34;
LABEL_66:
  regionMap->var8[v23] = ((v34 - var4) >> 6) + 1;
LABEL_11:
  v27 = v15;
  v28 = v26->var0;
  v29 = v28;
  if ((*(v28 + 132) & 2) != 0)
  {
    if ([*(v28 + 4) isEqualToString:@"__LINKEDIT"])
    {
      v5 = 0;
    }

    else
    {
      v5 = v26;
    }

    goto LABEL_71;
  }

  if (v12 && ([*(v28 + 4) isEqualToString:VMUunusedSharedLibTextLabel[0]] & 1) != 0)
  {
LABEL_14:
    v5 = v26;
    goto LABEL_71;
  }

  if (!self->_initializedRegionMallocBlockCounts)
  {
    if ([v29 isMallocHeapRelated])
    {
      v5 = v26;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_71;
  }

  if (!v29[17])
  {
    goto LABEL_70;
  }

  v35 = v26->var3;
  if (!v35)
  {
    goto LABEL_70;
  }

  v36 = self->_regionMap;
  var1 = v26->var1;
  var0 = v36->var0;
  var2 = v26->var2;
  v40 = &v36->var0[var2];
  if (var1)
  {
    v41 = v40->var0;
    if (v41 <= v11)
    {
      v42 = &var0[v35 - 1 + var2];
      if (((*(v42 + 1) >> 5) & 0xFFFFFFFFFLL) + v42->var0 > v11)
      {
        v43 = &var1[(v11 - (v41 & -*MEMORY[0x1E69E9AC8])) >> *v27];
        v44 = *v43;
        p_var0 = &var0[v44].var0;
        if (*p_var0 <= v11)
        {
          v46 = v43[1];
          if (v46 < v36->var1 && (v47 = &var0[v46].var0, *v47 <= v11))
          {
LABEL_67:
            v58 = v47 - var0;
            if (self->_blocksCount > (v58 >> 4) && (!v13 || ((*(self->_blocks + (v58 & 0xFFFFFFFF0) + 8) >> 5) & 0xFFFFFFFFFLL) + *(&self->_blocks->var0 + (v58 & 0xFFFFFFFF0)) >= v11 + v13))
            {
              goto LABEL_14;
            }
          }

          else
          {
            v48 = v46 - v44;
            if (v46 != v44)
            {
              do
              {
                v49 = v48 >> 1;
                v47 = &p_var0[2 * (v48 >> 1)];
                if (*v47 <= v11)
                {
                  if (((v47[1] >> 5) & 0xFFFFFFFFFLL) + *v47 > v11)
                  {
                    goto LABEL_67;
                  }

                  p_var0 = v47 + 2;
                  v49 = --v48 >> 1;
                }

                v5 = 0;
                v9 = v48 >= 2;
                v48 = v49;
              }

              while (v9);
              goto LABEL_71;
            }
          }
        }
      }
    }

LABEL_70:
    v5 = 0;
    goto LABEL_71;
  }

  do
  {
    v50 = v35 >> 1;
    v47 = &v40[v35 >> 1].var0;
    if (*v47 <= v11)
    {
      if (((v47[1] >> 5) & 0xFFFFFFFFFLL) + *v47 > v11)
      {
        goto LABEL_67;
      }

      v40 = (v47 + 2);
      v50 = --v35 >> 1;
    }

    v5 = 0;
    v9 = v35 >= 2;
    v35 = v50;
  }

  while (v9);
LABEL_71:

  return v5;
}

- (unsigned)enumerateObjectsWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v16 = 0;
    if (self->_blocksCount)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        selfCopy = self;
        v8 = &self->_blocks[v5];
        v9 = *(v8 + 1);
        if ((v9 & 7) == 1)
        {
          var0 = v8->var0;
          v11 = (v9 >> 5) & 0xFFFFFFFFFLL | 0x1000000000000000;
          if (self->_classInfosCount <= v9 >> 41)
          {
            v12 = 0;
          }

          else
          {
            v12 = self->_classInfos[v9 >> 41];
          }
        }

        else
        {
          v12 = 0;
          var0 = v8->var0;
          v11 = ((v9 >> 5) | (v9 << 60)) & 0x7000000FFFFFFFFFLL;
        }

        v13 = blockCopy[2];
        v15[0] = var0;
        v15[1] = v11;
        v15[2] = v12;
        v13(blockCopy, v6++, v15, &v16);
        if (v6 >= self->_blocksCount)
        {
          break;
        }

        ++v5;
      }

      while ((v16 & 1) == 0);
    }

    else
    {
      LODWORD(v6) = 0;
    }
  }

  else
  {
    LODWORD(v6) = self->_blocksCount;
  }

  return v6;
}

- (unsigned)enumerateMarkedObjects:(void *)objects withBlock:(id)block
{
  blockCopy = block;
  if (objects && (v21 = 0, blocksCount = self->_blocksCount, blocksCount))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (v10 < *objects && ((*(objects + (v10 >> 3) + 4) >> (v10 & 7)) & 1) != 0)
      {
        selfCopy = self;
        v13 = &self->_blocks[v8];
        v14 = *(v13 + 1);
        if ((v14 & 7) == 1)
        {
          var0 = v13->var0;
          v16 = (v14 >> 5) & 0xFFFFFFFFFLL | 0x1000000000000000;
          if (self->_classInfosCount <= v14 >> 41)
          {
            v17 = 0;
          }

          else
          {
            v17 = self->_classInfos[v14 >> 41];
          }
        }

        else
        {
          v17 = 0;
          var0 = v13->var0;
          v16 = ((v14 >> 5) | (v14 << 60)) & 0x7000000FFFFFFFFFLL;
        }

        if (blockCopy)
        {
          v18 = blockCopy[2];
          v20[0] = var0;
          v20[1] = v16;
          v20[2] = v17;
          v18(blockCopy, v10, v20, &v21);
        }

        ++v11;
        blocksCount = self->_blocksCount;
        v9 = v21;
      }

      if (++v10 >= blocksCount)
      {
        break;
      }

      ++v8;
    }

    while ((v9 & 1) == 0);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)enumerateRegionsWithBlock:(id)block
{
  v8 = 0;
  if (self->_regionsCount)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      (*(block + 2))(block, *(&self->_regions->var0 + v5), &v8);
      if (++v6 >= self->_regionsCount)
      {
        break;
      }

      v5 += 64;
    }

    while ((v8 & 1) == 0);
  }

  else
  {
    LODWORD(v6) = 0;
  }

  return v6;
}

- (unsigned)enumerateReferencesWithBlock:(id)block
{
  blockCopy = block;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__VMUTaskMemoryScanner_enumerateReferencesWithBlock___block_invoke;
  v7[3] = &unk_1E8277C88;
  v9 = v15;
  v7[4] = self;
  v5 = blockCopy;
  v8 = v5;
  v10 = &v11;
  [(VMUTaskMemoryScanner *)self scanNodesWithReferenceRecorder:v7];
  LODWORD(self) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v15, 8);

  return self;
}

uint64_t __53__VMUTaskMemoryScanner_enumerateReferencesWithBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v6 = result;
    v7 = *(result + 32);
    if (v7)
    {
      [v7 nodeDetails:a2];
      v8 = v6[4];
      if (v8)
      {
        [v8 nodeDetails:a5];
      }
    }

    v9 = *(*(v6[7] + 8) + 24);
    v10 = *(v6[6] + 8);
    result = (*(v6[5] + 16))();
    ++*(*(v6[7] + 8) + 24);
  }

  return result;
}

- (unsigned)nodeForAddress:(unint64_t)address
{
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v6 = var7 - var6;
  v7 = var7 < var6;
  LODWORD(self) = -1;
  if (address - var6 >= v6 || v7)
  {
    return self;
  }

  v9 = MEMORY[0x1E69E9AC0];
  v10 = address >> *MEMORY[0x1E69E9AC0];
  if (v10)
  {
    var3 = regionMap->var3;
    v14 = *var3;
    v12 = var3 + 1;
    v13 = v14;
    v15 = address >> *MEMORY[0x1E69E9AC0];
    do
    {
      v16 = v15 & 0x3FFFFFF;
      if (v13 <= v16 || ((*(v12 + (v16 >> 3)) >> (v15 & 7)) & 1) == 0)
      {
        goto LABEL_39;
      }

      v15 >>= 26;
    }

    while (v15);
  }

  v17 = v10 & 0x7FFFF;
  v18 = regionMap->var8[v10 & 0x7FFFF];
  var4 = regionMap->var4;
  if (v18)
  {
    v20 = var4 + 64 * (v18 - 1);
    if (address - *(*v20 + 8) < *(*v20 + 16))
    {
      goto LABEL_10;
    }
  }

  var5 = regionMap->var5;
  if (!var5)
  {
    goto LABEL_39;
  }

  v38 = regionMap->var4;
  while (1)
  {
    v39 = var5 >> 1;
    v20 = v38 + 64 * (var5 >> 1);
    if (*(*v20 + 8) <= address)
    {
      break;
    }

LABEL_33:
    v35 = var5 >= 2;
    var5 = v39;
    if (!v35)
    {
      goto LABEL_39;
    }
  }

  if (*(*v20 + 16) + *(*v20 + 8) <= address)
  {
    v38 = (v20 + 64);
    v39 = --var5 >> 1;
    goto LABEL_33;
  }

  isSpecialPhysFootprintRegion = [*v20 isSpecialPhysFootprintRegion];
  if (isSpecialPhysFootprintRegion)
  {
    v41 = 0;
  }

  else
  {
    v41 = v20;
  }

  if (isSpecialPhysFootprintRegion)
  {
    goto LABEL_39;
  }

  if ((*(*v41 + 132) & 1) == 0)
  {
    goto LABEL_55;
  }

  v42 = (v41 + 64);
  v43 = regionMap->var5 - ((v41 + 64 - regionMap->var4) >> 6);
  if (!v43)
  {
    goto LABEL_52;
  }

  while (2)
  {
    v44 = v43 >> 1;
    v45 = &v42[8 * (v43 >> 1)];
    if (*(*v45 + 1) > address)
    {
LABEL_46:
      v46 = v43 > 1;
      v43 = v44;
      if (!v46)
      {
        v43 = 0;
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  if (*(*v45 + 2) + *(*v45 + 1) <= address)
  {
    v42 = v45 + 8;
    v44 = --v43 >> 1;
    goto LABEL_46;
  }

  if ([*v45 isSpecialPhysFootprintRegion])
  {
    v43 = 0;
  }

  else
  {
    v43 = v45;
  }

LABEL_52:
  if (v43)
  {
    v41 = v43;
  }

  v20 = v41;
LABEL_55:
  regionMap->var8[v17] = ((v41 - var4) >> 6) + 1;
LABEL_10:
  v21 = *(v20 + 5);
  if (!v21)
  {
    goto LABEL_39;
  }

  v22 = *(v20 + 1);
  var0 = regionMap->var0;
  v24 = *(v20 + 4);
  v25 = &regionMap->var0[v24];
  if (v22)
  {
    v26 = v25->var0;
    if (v26 <= address)
    {
      v27 = &var0[v21 - 1 + v24];
      if (((*(v27 + 1) >> 5) & 0xFFFFFFFFFLL) + v27->var0 > address)
      {
        v28 = (v22 + 4 * ((address - (v26 & -*MEMORY[0x1E69E9AC8])) >> *v9));
        v29 = *v28;
        p_var0 = &var0[v29].var0;
        if (*p_var0 <= address)
        {
          v31 = v28[1];
          if (v31 < regionMap->var1)
          {
            v32 = &var0[v31].var0;
            if (*v32 <= address)
            {
              return (v32 - var0) >> 4;
            }
          }

          v33 = v31 - v29;
          if (v33)
          {
            do
            {
              v34 = v33 >> 1;
              v32 = &p_var0[2 * (v33 >> 1)];
              if (*v32 <= address)
              {
                if (((v32[1] >> 5) & 0xFFFFFFFFFLL) + *v32 > address)
                {
                  return (v32 - var0) >> 4;
                }

                p_var0 = v32 + 2;
                v34 = --v33 >> 1;
              }

              LODWORD(self) = -1;
              v35 = v33 >= 2;
              v33 = v34;
            }

            while (v35);
            return self;
          }
        }
      }
    }

LABEL_39:
    LODWORD(self) = -1;
    return self;
  }

  do
  {
    v36 = v21 >> 1;
    v32 = &v25[v21 >> 1].var0;
    if (*v32 <= address)
    {
      if (((v32[1] >> 5) & 0xFFFFFFFFFLL) + *v32 > address)
      {
        return (v32 - var0) >> 4;
      }

      v25 = (v32 + 2);
      v36 = --v21 >> 1;
    }

    LODWORD(self) = -1;
    v35 = v21 >= 2;
    v21 = v36;
  }

  while (v35);
  return self;
}

- (unsigned)_nodeForAddress:(unint64_t)address checkMaxInteriorOffset:(BOOL)offset
{
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v7 = var7 - var6;
  v8 = var7 < var6;
  LODWORD(self) = -1;
  if (address - var6 >= v7 || v8)
  {
    return self;
  }

  offsetCopy = offset;
  v11 = MEMORY[0x1E69E9AC0];
  v12 = address >> *MEMORY[0x1E69E9AC0];
  if (v12)
  {
    var3 = regionMap->var3;
    v16 = *var3;
    v14 = var3 + 1;
    v15 = v16;
    v17 = address >> *MEMORY[0x1E69E9AC0];
    do
    {
      v18 = v17 & 0x3FFFFFF;
      if (v15 <= v18 || ((*(v14 + (v18 >> 3)) >> (v17 & 7)) & 1) == 0)
      {
        goto LABEL_39;
      }

      v17 >>= 26;
    }

    while (v17);
  }

  v19 = v12 & 0x7FFFF;
  v20 = regionMap->var8[v12 & 0x7FFFF];
  var4 = regionMap->var4;
  if (v20)
  {
    v22 = var4 + 64 * (v20 - 1);
    if (address - *(*v22 + 8) < *(*v22 + 16))
    {
      goto LABEL_10;
    }
  }

  var5 = regionMap->var5;
  if (!var5)
  {
    goto LABEL_39;
  }

  v40 = regionMap->var4;
  while (1)
  {
    v41 = var5 >> 1;
    v22 = v40 + 64 * (var5 >> 1);
    if (*(*v22 + 8) <= address)
    {
      break;
    }

LABEL_33:
    v37 = var5 >= 2;
    var5 = v41;
    if (!v37)
    {
      goto LABEL_39;
    }
  }

  if (*(*v22 + 16) + *(*v22 + 8) <= address)
  {
    v40 = (v22 + 64);
    v41 = --var5 >> 1;
    goto LABEL_33;
  }

  isSpecialPhysFootprintRegion = [*v22 isSpecialPhysFootprintRegion];
  if (isSpecialPhysFootprintRegion)
  {
    v43 = 0;
  }

  else
  {
    v43 = v22;
  }

  if (isSpecialPhysFootprintRegion)
  {
    goto LABEL_39;
  }

  if ((*(*v43 + 132) & 1) == 0)
  {
    goto LABEL_59;
  }

  v44 = (v43 + 64);
  v45 = regionMap->var5 - ((v43 + 64 - regionMap->var4) >> 6);
  if (!v45)
  {
    goto LABEL_56;
  }

  while (2)
  {
    v46 = v45 >> 1;
    v47 = &v44[8 * (v45 >> 1)];
    if (*(*v47 + 1) > address)
    {
LABEL_46:
      v48 = v45 > 1;
      v45 = v46;
      if (!v48)
      {
        v45 = 0;
        goto LABEL_56;
      }

      continue;
    }

    break;
  }

  if (*(*v47 + 2) + *(*v47 + 1) <= address)
  {
    v44 = v47 + 8;
    v46 = --v45 >> 1;
    goto LABEL_46;
  }

  if ([*v47 isSpecialPhysFootprintRegion])
  {
    v45 = 0;
  }

  else
  {
    v45 = v47;
  }

LABEL_56:
  if (v45)
  {
    v43 = v45;
  }

  v22 = v43;
LABEL_59:
  regionMap->var8[v19] = ((v43 - var4) >> 6) + 1;
LABEL_10:
  v23 = *(v22 + 5);
  if (!v23)
  {
    goto LABEL_39;
  }

  v24 = *(v22 + 1);
  var0 = regionMap->var0;
  v26 = *(v22 + 4);
  v27 = &regionMap->var0[v26];
  if (v24)
  {
    if (v27->var0 <= address)
    {
      v28 = &var0[v23 - 1 + v26];
      if (((*(v28 + 1) >> 5) & 0xFFFFFFFFFLL) + v28->var0 > address)
      {
        v29 = (v24 + 4 * ((address - (v27->var0 & -*MEMORY[0x1E69E9AC8])) >> *v11));
        v30 = *v29;
        p_var0 = &var0[v30].var0;
        if (*p_var0 <= address)
        {
          v32 = v29[1];
          if (v32 < regionMap->var1 && (v33 = &var0[v32].var0, v34 = *v33, *v33 <= address))
          {
LABEL_48:
            if (!offsetCopy)
            {
              return (v33 - var0) >> 4;
            }

            v49 = v33[1];
            if ((v49 & 7) - 2 >= 3)
            {
              v50 = address - v34;
              var2 = regionMap->var2;
              if (v50 < var2 || ((v49 >> 5) & 0xFFFFFFFFFLL) - v50 <= var2)
              {
                return (v33 - var0) >> 4;
              }
            }
          }

          else
          {
            v35 = v32 - v30;
            if (v35)
            {
              do
              {
                v36 = v35 >> 1;
                v33 = &p_var0[2 * (v35 >> 1)];
                v34 = *v33;
                if (*v33 <= address)
                {
                  if (((v33[1] >> 5) & 0xFFFFFFFFFLL) + v34 > address)
                  {
                    goto LABEL_48;
                  }

                  p_var0 = v33 + 2;
                  v36 = --v35 >> 1;
                }

                LODWORD(self) = -1;
                v37 = v35 >= 2;
                v35 = v36;
              }

              while (v37);
              return self;
            }
          }
        }
      }
    }

LABEL_39:
    LODWORD(self) = -1;
    return self;
  }

  do
  {
    v38 = v23 >> 1;
    v33 = &v27[v23 >> 1].var0;
    v34 = *v33;
    if (*v33 <= address)
    {
      if (((v33[1] >> 5) & 0xFFFFFFFFFLL) + v34 > address)
      {
        goto LABEL_48;
      }

      v27 = (v33 + 2);
      v38 = --v23 >> 1;
    }

    LODWORD(self) = -1;
    v37 = v23 >= 2;
    v23 = v38;
  }

  while (v37);
  return self;
}

- (void)copyUserMarked
{
  userMarkedAbandoned = self->_userMarkedAbandoned;
  if (!userMarkedAbandoned)
  {
    return 0;
  }

  v3 = ((*userMarkedAbandoned + 7) >> 3) + 4;
  v4 = malloc_type_malloc(v3, 0xEE1F7B8EuLL);

  return memcpy(v4, userMarkedAbandoned, v3);
}

- (unint64_t)ledgerValueForKey:(id)key keyExists:(BOOL *)exists
{
  keyCopy = key;
  ledger = [(VMUTaskMemoryScanner *)self ledger];
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

- (void)setNodeScanningLogger:(id)logger
{
  if (self->_nodeLogger != logger)
  {
    v5 = _Block_copy(logger);
    nodeLogger = self->_nodeLogger;
    self->_nodeLogger = v5;
  }
}

- (void)setReferenceScanningLogger:(id)logger
{
  if (self->_referenceLogger != logger)
  {
    v5 = _Block_copy(logger);
    referenceLogger = self->_referenceLogger;
    self->_referenceLogger = v5;
  }
}

- (uint64_t)_shouldScanVMregion:(uint64_t)mregion
{
  mregionCopy = mregion;
  if (mregion)
  {
    v4 = *a2;
    v5 = v4;
    if (*(a2 + 32) - *(a2 + 24) < 8uLL)
    {
      goto LABEL_14;
    }

    if (*(v4 + 49))
    {
      if (*(mregionCopy + 380) == 1 && (*(v4 + 132) & 2) == 0 && ((*(v4 + 132) & 4) == 0 || *(mregionCopy + 192) != 1 || ![v4 dirtyLength]))
      {
        goto LABEL_14;
      }

      if (qword_1EC1D09C8 != -1)
      {
        dispatch_once(&qword_1EC1D09C8, &__block_literal_global_124);
      }

      if (!_MergedGlobals)
      {
        path = [v5 path];
        v7 = [path hasPrefix:kVMUUnknownMappedFileNamePrefix[0]];

        if (v7)
        {
          goto LABEL_14;
        }
      }
    }

    if ((*(v5 + 13) & 3) != 2)
    {
      mregionCopy = [v5 protection] != 1 || (objc_msgSend(v5[4], "isEqualToString:", @"MALLOC metadata") & 1) != 0 || (objc_msgSend(v5, "isActivityTracing") & 1) != 0 || (objc_msgSend(v5, "isDyldPrivateMemory") & 1) != 0 || objc_msgSend(v5, "address") == *(mregionCopy + 552);
    }

    else
    {
LABEL_14:
      mregionCopy = 0;
    }
  }

  return mregionCopy;
}

- (void)scanLocalMemory:(uint64_t)memory atOffset:(unsigned int)offset node:(unint64_t)node length:(uint64_t)length isa:(uint64_t)isa scanCaches:(void *)caches fieldInfo:(unsigned int)info stride:(uint64_t)self0 recorder:
{
  if (self)
  {
    swiftRuntimeInfoStableABI = [*(self + 64) swiftRuntimeInfoStableABI];
    v16 = swiftRuntimeInfoStableABI;
    if (swiftRuntimeInfoStableABI)
    {
      swiftRuntimeInfoPreABI = swiftRuntimeInfoStableABI;
    }

    else
    {
      swiftRuntimeInfoPreABI = [*(self + 64) swiftRuntimeInfoPreABI];
    }

    v199 = swiftRuntimeInfoPreABI;

    hasSwiftContent = [*(self + 64) hasSwiftContent];
    if (*(self + 344) == length || *(self + 348) == length || *(self + 352) == length)
    {
      v18 = 1;
      if (!length)
      {
LABEL_10:
        if (!caches || *(self + 380) != 1)
        {
          if ((*(self + 392) & 2) == 0)
          {
            goto LABEL_103;
          }

          v65 = a2;
          v66 = (a2 + memory) % info;
          if (v66)
          {
            v67 = (a2 + memory + info - v66);
          }

          else
          {
            v67 = (a2 + memory);
          }

          if (length)
          {
            v68 = *(*(self + 256) + 8 * length);
          }

          else
          {
            v68 = 0;
          }

          v205 = v68;
          if ((*(*(self + 80) + 16 * offset + 8) & 7u) - 2 < 3 || (v72 = *(self + 376)) != 0 && v72 == offset)
          {
            v73 = 0;
            v74 = 1;
          }

          else
          {
            v139 = [self getCachedScanInfoForClassWithIsa:length classInfo:v205 scanCaches:isa];
            v73 = v139;
            if (v139)
            {
              v74 = *v139 >> 31;
            }

            else
            {
              v74 = 0;
            }
          }

          v214 = a2 + memory + node - 8;
          if (*(self + 284))
          {
            v210 = *([*(self + 64) autoreleasePoolPageLayout] + 16);
            v203 = *([*(self + 64) autoreleasePoolPageLayout] + 8);
          }

          else
          {
            v210 = 0;
            v203 = 0;
          }

          if (v67 <= v214)
          {
            v193 = v74;
            v194 = v18;
            v75 = 0;
            do
            {
              v76 = v67 - v65;
              v77 = *(self + 80);
              v78 = *(v77 + 16 * offset);
              v79 = *v67;
              if (*v67)
              {
                if (hasSwiftContent)
                {
                  v80 = v193;
                  if (v73)
                  {
                    v81 = v193;
                  }

                  else
                  {
                    v81 = 1;
                  }

                  if ((v81 & 1) == 0)
                  {
                    do
                    {
                      v82 = v73[v75];
                      v83 = *&v82 & 0xFFFFFFLL;
                      ++v75;
                      v84 = (v82 & 0xFFFFFF) != 0xFFFFFF && v76 > v83;
                    }

                    while (v84);
                    --v75;
                    if (v83 == 0xFFFFFF)
                    {
                      v73 = 0;
                      v80 = 0;
                    }

                    else
                    {
                      v88 = (v82 >> 30) & 1;
                      if (v76 == v83)
                      {
                        v80 = v88;
                      }

                      else
                      {
                        v80 = 0;
                      }
                    }
                  }

                  if (v205 && v76 == 8 && [v205 infoType] == 8 && objc_msgSend(v205, "usesSwiftRefcounting"))
                  {
                    v89 = v199;
                    v90 = v89;
                    if (v199 && (v91 = [v89 refcountIsSideTableMarkerMask] & v79, v91 == objc_msgSend(v90, "refcountIsSideTableMarkerValue")))
                    {
                      v92 = [v90 sideTablePointerMask] & v79;
                      v93 = v92 >> [v90 sideTablePointerRightShift];
                      v79 = v93 << [v90 sideTablePointerLeftShift];
                    }

                    else
                    {
                      v79 = 0;
                    }

                    v65 = a2;
                  }

                  else if (v80)
                  {
                    v79 &= 0xFFFFFFFFFFFFF8uLL;
                  }
                }

                v206 = v78;
                if (v210)
                {
                  if (v76 >= v203)
                  {
                    v94 = v79 & v210;
                    if (v79 != (v79 & v210))
                    {
                      if ([*(self + 64) countFromPointerInAutoreleasePool:v79] + 1 >= 2)
                      {
                        v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
                        v96 = *(self + 536);
                        v97 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:&v76[v206]];
                        [v96 setObject:v95 forKeyedSubscript:v97];

                        v65 = a2;
                      }

                      v79 = v94;
                    }
                  }
                }

                v98 = *(self + 336);
                if (v98 && (v194 || (*(*(self + 80) + 16 * offset + 8) & 7) == 2))
                {
                  v99 = NSMapGet(v98, &v76[v206]);
                  if (v99)
                  {
                    v79 = v99;
                  }
                }

                v100 = *(self + 112);
                if (*(v100 + 48) > v79)
                {
                  goto LABEL_149;
                }

                [VMUTask ptrauthStripDataPointer:?];
                if (*(v100 + 56) < *(v100 + 48))
                {
                  goto LABEL_149;
                }

                OUTLINED_FUNCTION_10();
                if (v85)
                {
                  goto LABEL_149;
                }

                v101 = v79 >> *MEMORY[0x1E69E9AC0];
                if (v101)
                {
                  v102 = **(v100 + 24);
                  v103 = v79 >> *MEMORY[0x1E69E9AC0];
                  do
                  {
                    if (v102 <= (v103 & 0x3FFFFFF))
                    {
                      goto LABEL_149;
                    }

                    OUTLINED_FUNCTION_2();
                    if ((v105 & 1) == 0)
                    {
                      goto LABEL_149;
                    }

                    v103 = v104 >> 26;
                  }

                  while (v103);
                }

                v106 = v101 & 0x7FFFF;
                v107 = *(v100 + 64 + 4 * (v101 & 0x7FFFF));
                if (v107)
                {
                  v108 = *(v100 + 32) + ((v107 - 1) << 6);
                  if (v79 - *(*v108 + 8) < *(*v108 + 16))
                  {
                    goto LABEL_160;
                  }
                }

                v119 = *(v100 + 40);
                if (!v119)
                {
                  goto LABEL_188;
                }

                v120 = *(v100 + 32);
                while (1)
                {
                  v121 = v119 >> 1;
                  v108 = v120 + (v119 >> 1 << 6);
                  if (*(*v108 + 8) <= v79)
                  {
                    if (*(*v108 + 16) + *(*v108 + 8) > v79)
                    {
                      v191 = *(v100 + 32);
                      v192 = v106;
                      isSpecialPhysFootprintRegion = [*v108 isSpecialPhysFootprintRegion];
                      if (isSpecialPhysFootprintRegion)
                      {
                        v123 = 0;
                      }

                      else
                      {
                        v123 = v108;
                      }

                      if (isSpecialPhysFootprintRegion)
                      {
                        goto LABEL_188;
                      }

                      v126 = v100 + 64;
                      v125 = v192;
                      v127 = v191;
                      if ((*(*v123 + 132) & 1) == 0)
                      {
                        goto LABEL_208;
                      }

                      v128 = (v123 + 64);
                      v129 = *(v100 + 40) - ((v123 + 64 - *(v100 + 32)) >> 6);
                      if (!v129)
                      {
                        goto LABEL_205;
                      }

                      while (1)
                      {
                        v130 = v129 >> 1;
                        v131 = &v128[8 * (v129 >> 1)];
                        if (*(*v131 + 1) <= v79)
                        {
                          if (*(*v131 + 2) + *(*v131 + 1) > v79)
                          {
                            v132 = v123;
                            isSpecialPhysFootprintRegion2 = [*v131 isSpecialPhysFootprintRegion];
                            v123 = v132;
                            v127 = v191;
                            v126 = v100 + 64;
                            v125 = v192;
                            if (isSpecialPhysFootprintRegion2)
                            {
                              v129 = 0;
                            }

                            else
                            {
                              v129 = v131;
                            }

LABEL_205:
                            if (v129)
                            {
                              v123 = v129;
                            }

                            v108 = v123;
LABEL_208:
                            *(v126 + 4 * v125) = ((v123 - v127) >> 6) + 1;
LABEL_160:
                            if (*(v108 + 20))
                            {
                              v109 = (*v100 + 16 * *(v108 + 16));
                              if (*(v108 + 8))
                              {
                                v65 = a2;
                                if (*v109 <= v79)
                                {
                                  OUTLINED_FUNCTION_0(*v100);
                                  if (!v64 && v85)
                                  {
                                    v110 = *MEMORY[0x1E69E9AC8];
                                    OUTLINED_FUNCTION_14();
                                    v111 = *MEMORY[0x1E69E9AC0];
                                    OUTLINED_FUNCTION_1(v112);
                                    if (v64 || !v85)
                                    {
                                      v116 = *(v114 + 4);
                                      if (v116 >= *(v100 + 8) || (OUTLINED_FUNCTION_13(v113), !v64 && v85))
                                      {
                                        if (v116 != v115)
                                        {
                                          do
                                          {
                                            OUTLINED_FUNCTION_6();
                                            if (v64 || !v85)
                                            {
                                              OUTLINED_FUNCTION_4();
                                              if (!v64 && v85)
                                              {
                                                goto LABEL_209;
                                              }

                                              OUTLINED_FUNCTION_11();
                                            }
                                          }

                                          while (v118 >= 2);
                                        }
                                      }

                                      else
                                      {
                                        v134 = *(v117 + 8);
LABEL_209:
                                        OUTLINED_FUNCTION_8();
                                        if (v85)
                                        {
                                          OUTLINED_FUNCTION_7();
                                          if (v136 >= *(v100 + 16))
                                          {
                                            OUTLINED_FUNCTION_12();
                                            v137 = !v64 && v85 || v138 == -1;
                                          }

                                          else
                                          {
                                            v137 = v135 == -1;
                                          }

                                          if (!v137)
                                          {
                                            v87 = *(stride + 16);
LABEL_124:
                                            v87();
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }

                              else
                              {
                                v65 = a2;
                                do
                                {
                                  OUTLINED_FUNCTION_3();
                                  if (v64 || !v85)
                                  {
                                    OUTLINED_FUNCTION_5();
                                    if (!v64 && v85)
                                    {
                                      goto LABEL_209;
                                    }

                                    OUTLINED_FUNCTION_9();
                                  }
                                }

                                while (v124 >= 2);
                              }

                              goto LABEL_149;
                            }

LABEL_188:
                            v65 = a2;
                            goto LABEL_149;
                          }

                          v128 = v131 + 8;
                          v130 = --v129 >> 1;
                        }

                        v84 = v129 > 1;
                        v129 = v130;
                        if (!v84)
                        {
                          v129 = 0;
                          goto LABEL_205;
                        }
                      }
                    }

                    v120 = v108 + 64;
                    v121 = --v119 >> 1;
                  }

                  v85 = v119 >= 2;
                  v119 = v121;
                  if (!v85)
                  {
                    goto LABEL_188;
                  }
                }
              }

              if (*(self + 284))
              {
                v85 = v76 >= v203;
              }

              else
              {
                v85 = 0;
              }

              if (v85)
              {
                v86 = *(v77 + 16 * *(self + 280));
                v87 = *(stride + 16);
                goto LABEL_124;
              }

LABEL_149:
              v67 = (v67 + info);
            }

            while (v67 <= v214);
          }

          goto LABEL_102;
        }

        v19 = ((memory + 7) & 0xFFFFFFF8) - memory;
        v20 = (v19 + 8);
        if (v20 > node)
        {
          goto LABEL_103;
        }

        v212 = a2 + memory;
LABEL_14:
        v21 = v19;
        v19 = v20;
        v215[0] = 0;
        v22 = [caches getLeafFieldAtOffset:v21 leafOffset:v215];
        v23 = v215[0] + 8;
        if (v23 > [v22 size])
        {
          goto LABEL_16;
        }

        v24 = *(v212 + v21);
        v25 = *(self + 8);
        v211 = *(*(self + 80) + 16 * offset);
        scanType = [v22 scanType];
        v27 = *(self + 112);
        if (*(v27 + 48) > v24)
        {
          goto LABEL_16;
        }

        v28 = scanType;
        [VMUTask ptrauthStripDataPointer:v25];
        if (*(v27 + 56) < *(v27 + 48))
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_10();
        if (v85)
        {
          goto LABEL_16;
        }

        v29 = v24 >> *MEMORY[0x1E69E9AC0];
        if (v29)
        {
          v30 = **(v27 + 24);
          v31 = v24 >> *MEMORY[0x1E69E9AC0];
          do
          {
            if (v30 <= (v31 & 0x3FFFFFF))
            {
              goto LABEL_16;
            }

            OUTLINED_FUNCTION_2();
            if ((v33 & 1) == 0)
            {
              goto LABEL_16;
            }

            v31 = v32 >> 26;
          }

          while (v31);
        }

        v34 = v29 & 0x7FFFF;
        v35 = *(v27 + 64 + 4 * (v29 & 0x7FFFF));
        if (v35)
        {
          v36 = *(v27 + 32) + ((v35 - 1) << 6);
          if (v24 - *(*v36 + 8) < *(*v36 + 16))
          {
            goto LABEL_27;
          }
        }

        v47 = *(v27 + 40);
        if (!v47)
        {
          goto LABEL_16;
        }

        v48 = *(v27 + 32);
        while (1)
        {
          v49 = v47 >> 1;
          v36 = v48 + (v47 >> 1 << 6);
          if (*(*v36 + 8) <= v24)
          {
            if (*(*v36 + 16) + *(*v36 + 8) > v24)
            {
              v204 = v34;
              v201 = *(v27 + 32);
              isSpecialPhysFootprintRegion3 = [*v36 isSpecialPhysFootprintRegion];
              v52 = v201;
              v51 = v27 + 64;
              v53 = v204;
              if (isSpecialPhysFootprintRegion3)
              {
                v54 = 0;
              }

              else
              {
                v54 = v36;
              }

              if (isSpecialPhysFootprintRegion3)
              {
                goto LABEL_16;
              }

              if ((*(*v54 + 132) & 1) == 0)
              {
                goto LABEL_71;
              }

              v55 = (v54 + 64);
              v56 = *(v27 + 40) - ((v54 + 64 - *(v27 + 32)) >> 6);
              if (!v56)
              {
                goto LABEL_68;
              }

              while (2)
              {
                v57 = v56 >> 1;
                v58 = &v55[8 * (v56 >> 1)];
                if (*(*v58 + 1) > v24)
                {
LABEL_63:
                  v84 = v56 > 1;
                  v56 = v57;
                  if (!v84)
                  {
                    v56 = 0;
                    goto LABEL_68;
                  }

                  continue;
                }

                break;
              }

              if (*(*v58 + 2) + *(*v58 + 1) <= v24)
              {
                v55 = v58 + 8;
                v57 = --v56 >> 1;
                goto LABEL_63;
              }

              v197 = v54;
              isSpecialPhysFootprintRegion4 = [*v58 isSpecialPhysFootprintRegion];
              v54 = v197;
              v52 = v201;
              v51 = v27 + 64;
              v53 = v204;
              if (isSpecialPhysFootprintRegion4)
              {
                v56 = 0;
              }

              else
              {
                v56 = v58;
              }

LABEL_68:
              if (v56)
              {
                v54 = v56;
              }

              v36 = v54;
LABEL_71:
              *(v51 + 4 * v53) = ((v54 - v52) >> 6) + 1;
LABEL_27:
              if (*(v36 + 20))
              {
                if (*(v36 + 8))
                {
                  if (*(*v27 + 16 * *(v36 + 16)) > v24)
                  {
                    goto LABEL_16;
                  }

                  OUTLINED_FUNCTION_0(*v27);
                  if (v64 || !v85)
                  {
                    goto LABEL_16;
                  }

                  v37 = *MEMORY[0x1E69E9AC8];
                  OUTLINED_FUNCTION_14();
                  v38 = *MEMORY[0x1E69E9AC0];
                  OUTLINED_FUNCTION_1(v39);
                  if (!v64 && v85)
                  {
                    goto LABEL_16;
                  }

                  v43 = *(v41 + 4);
                  if (v43 >= *(v27 + 8) || (OUTLINED_FUNCTION_13(v40), !v64 && v85))
                  {
                    if (v43 != v42)
                    {
                      do
                      {
                        OUTLINED_FUNCTION_6();
                        if (v64 || !v85)
                        {
                          OUTLINED_FUNCTION_4();
                          if (!v64 && v85)
                          {
                            goto LABEL_72;
                          }

                          OUTLINED_FUNCTION_11();
                        }
                      }

                      while (v45 >= 2);
                    }
                  }

                  else
                  {
                    v60 = *(v44 + 8);
LABEL_72:
                    OUTLINED_FUNCTION_8();
                    if (v85)
                    {
                      OUTLINED_FUNCTION_7();
                      if (v62 >= *(v27 + 16))
                      {
                        OUTLINED_FUNCTION_12();
                        v64 = !v64 && v85 || v63 == -1;
                        if (v64)
                        {
                          goto LABEL_16;
                        }
                      }

                      else if (v61 == -1)
                      {
                        goto LABEL_16;
                      }

                      (*(stride + 16))(stride, offset, memory + v21 + v211, v28);
                    }
                  }
                }

                else
                {
                  do
                  {
                    OUTLINED_FUNCTION_3();
                    if (v64 || !v85)
                    {
                      OUTLINED_FUNCTION_5();
                      if (!v64 && v85)
                      {
                        goto LABEL_72;
                      }

                      OUTLINED_FUNCTION_9();
                    }
                  }

                  while (v46 >= 2);
                }
              }

LABEL_16:

              v20 = (v19 + 8);
              if (v20 > node)
              {
LABEL_103:

                return;
              }

              goto LABEL_14;
            }

            v48 = v36 + 64;
            v49 = --v47 >> 1;
          }

          v85 = v47 >= 2;
          v47 = v49;
          if (!v85)
          {
            goto LABEL_16;
          }
        }
      }
    }

    else
    {
      v18 = *(self + 356) == length;
      if (!length)
      {
        goto LABEL_10;
      }
    }

    if (v18 || (*(self + 380) & 1) == 0)
    {
      goto LABEL_10;
    }

    v69 = node - 8;
    if (node < 8)
    {
      goto LABEL_103;
    }

    v205 = *(*(self + 256) + 8 * length);
    v70 = [self getCachedScanInfoForClassWithIsa:length classInfo:? scanCaches:?];
    v71 = v70;
    if (v70)
    {
      v213 = *v70 >> 31;
    }

    else
    {
      LOBYTE(v213) = 0;
    }

    v140 = 0;
    v141 = 0;
    v142 = 0xFFFFFF;
LABEL_222:
    v143 = v71[v140];
    v144 = HIBYTE(v143) & 0x3F;
    v145 = *&v143 & 0xFFFFFFLL;
    v146 = v141 + 8;
    if (v144 == 1)
    {
      v146 = v141 + 1;
    }

    if (v145 == v142)
    {
      v141 = v146;
    }

    else
    {
      v141 = v145;
    }

    if (v145 == v142)
    {
      v147 = v140;
    }

    else
    {
      v147 = v140 + 1;
    }

    if (((*(self + 392) >> HIBYTE(v71[v140])) & 1) == 0 || v141 > v69)
    {
      goto LABEL_250;
    }

    v148 = *(a2 + memory + v141);
    if (v144 == 3)
    {
      v148 &= ~1uLL;
      v144 = (*(a2 + memory + v141) & 1) != 0 ? 2 : 3;
    }

    else if (v144 == 5)
    {
      v149 = v205;
      v150 = v199;
      if (v199)
      {
        if ([v149 usesSwiftRefcounting] && v141 == objc_msgSend(v149, "pointerSize"))
        {
          v151 = v150;
          v207 = [v151 refcountIsSideTableMarkerMask] & v148;
          if (v207 == [v151 refcountIsSideTableMarkerValue])
          {
            v152 = [v151 sideTablePointerMask] & v148;
            v153 = v152 >> [v151 sideTablePointerRightShift];
            v148 = v153 << [v151 sideTablePointerLeftShift];
          }

          else
          {
            v148 = 0;
          }
        }

        else
        {
          v148 &= [v150 nativeWeakReferencePointerMask];
        }
      }

      v144 = 5;
      v142 = 0xFFFFFF;
    }

    if ((v213 & 1) != 0 || (v71[v140] & 0x40000000) != 0)
    {
      v148 &= 0xFFFFFFFFFFFFF8uLL;
    }

    v154 = *(self + 112);
    if (*(v154 + 48) > v148)
    {
      goto LABEL_250;
    }

    v208 = *(*(self + 80) + 16 * offset);
    [VMUTask ptrauthStripDataPointer:?];
    v142 = 0xFFFFFF;
    if (*(v154 + 56) < *(v154 + 48))
    {
      goto LABEL_250;
    }

    OUTLINED_FUNCTION_10();
    if (v85)
    {
      goto LABEL_250;
    }

    v155 = v148 >> *MEMORY[0x1E69E9AC0];
    if (v155)
    {
      v156 = **(v154 + 24);
      v157 = v148 >> *MEMORY[0x1E69E9AC0];
      do
      {
        if (v156 <= (v157 & 0x3FFFFFF))
        {
          goto LABEL_250;
        }

        OUTLINED_FUNCTION_2();
        if ((v159 & 1) == 0)
        {
          goto LABEL_250;
        }

        v157 = v158 >> 26;
      }

      while (v157);
    }

    v160 = v155 & 0x7FFFF;
    v161 = *(v154 + 64 + 4 * (v155 & 0x7FFFF));
    v162 = *(v154 + 32);
    if (v161)
    {
      v163 = v162 + ((v161 - 1) << 6);
      if (v148 - *(*v163 + 8) < *(*v163 + 16))
      {
        goto LABEL_261;
      }
    }

    v174 = *(v154 + 40);
    if (!v174)
    {
      goto LABEL_250;
    }

    v175 = *(v154 + 32);
    while (1)
    {
      v176 = v174 >> 1;
      v163 = v175 + (v174 >> 1 << 6);
      if (*(*v163 + 8) <= v148)
      {
        if (*(*v163 + 16) + *(*v163 + 8) > v148)
        {
          v202 = v160;
          isSpecialPhysFootprintRegion5 = [*v163 isSpecialPhysFootprintRegion];
          v178 = v154 + 64;
          v179 = v202;
          v142 = 0xFFFFFF;
          if (isSpecialPhysFootprintRegion5)
          {
            v180 = 0;
          }

          else
          {
            v180 = v163;
          }

          if (isSpecialPhysFootprintRegion5)
          {
            goto LABEL_250;
          }

          if ((*(*v180 + 132) & 1) == 0)
          {
            goto LABEL_305;
          }

          v181 = (v180 + 64);
          v182 = *(v154 + 40) - ((v180 + 64 - *(v154 + 32)) >> 6);
          if (!v182)
          {
            goto LABEL_302;
          }

          while (2)
          {
            v183 = v182 >> 1;
            v184 = &v181[8 * (v182 >> 1)];
            if (*(*v184 + 1) > v148)
            {
LABEL_297:
              v84 = v182 > 1;
              v182 = v183;
              if (!v84)
              {
                v182 = 0;
                goto LABEL_302;
              }

              continue;
            }

            break;
          }

          if (*(*v184 + 2) + *(*v184 + 1) <= v148)
          {
            v181 = v184 + 8;
            v183 = --v182 >> 1;
            goto LABEL_297;
          }

          v195 = v180;
          isSpecialPhysFootprintRegion6 = [*v184 isSpecialPhysFootprintRegion];
          v180 = v195;
          v178 = v154 + 64;
          v179 = v202;
          v142 = 0xFFFFFF;
          if (isSpecialPhysFootprintRegion6)
          {
            v182 = 0;
          }

          else
          {
            v182 = v184;
          }

LABEL_302:
          if (v182)
          {
            v180 = v182;
          }

          v163 = v180;
LABEL_305:
          *(v178 + 4 * v179) = ((v180 - v162) >> 6) + 1;
LABEL_261:
          if (*(v163 + 20))
          {
            if (*(v163 + 8))
            {
              if (*(*v154 + 16 * *(v163 + 16)) > v148)
              {
                goto LABEL_250;
              }

              OUTLINED_FUNCTION_0(*v154);
              if (v64 || !v85)
              {
                goto LABEL_250;
              }

              v164 = *MEMORY[0x1E69E9AC8];
              OUTLINED_FUNCTION_14();
              v165 = *MEMORY[0x1E69E9AC0];
              OUTLINED_FUNCTION_1(v166);
              if (!v64 && v85)
              {
                goto LABEL_250;
              }

              v170 = *(v168 + 4);
              if (v170 >= *(v154 + 8) || (OUTLINED_FUNCTION_13(v167), !v64 && v85))
              {
                if (v170 != v169)
                {
                  do
                  {
                    OUTLINED_FUNCTION_6();
                    if (v64 || !v85)
                    {
                      OUTLINED_FUNCTION_4();
                      if (!v64 && v85)
                      {
                        goto LABEL_306;
                      }

                      OUTLINED_FUNCTION_11();
                    }
                  }

                  while (v172 >= 2);
                }
              }

              else
              {
                v186 = *(v171 + 8);
LABEL_306:
                OUTLINED_FUNCTION_8();
                if (v85)
                {
                  OUTLINED_FUNCTION_7();
                  if (v188 >= *(v154 + 16))
                  {
                    OUTLINED_FUNCTION_12();
                    if (!v64 && v85 || v189 == -1)
                    {
                      goto LABEL_250;
                    }
                  }

                  else if (v187 == -1)
                  {
                    goto LABEL_250;
                  }

                  (*(stride + 16))(stride, offset, v141 + memory + v208, v144);
                  v142 = 0xFFFFFF;
                }
              }
            }

            else
            {
              do
              {
                OUTLINED_FUNCTION_3();
                if (v64 || !v85)
                {
                  OUTLINED_FUNCTION_5();
                  if (!v64 && v85)
                  {
                    goto LABEL_306;
                  }

                  OUTLINED_FUNCTION_9();
                }
              }

              while (v173 >= 2);
            }
          }

LABEL_250:
          v140 = v147;
          if (v141 > v69)
          {
LABEL_102:

            goto LABEL_103;
          }

          goto LABEL_222;
        }

        v175 = v163 + 64;
        v176 = --v174 >> 1;
      }

      v85 = v174 >= 2;
      v174 = v176;
      if (!v85)
      {
        goto LABEL_250;
      }
    }
  }
}

- (uint64_t)_recordFakeRootRefsForMallocBlock:(_DWORD *)block indexInSwiftTaskAllocationBlockIndexes:(uint64_t)indexes recorder:
{
  if (result)
  {
    v7 = result;
    v8 = MEMORY[0x1E69E9AC0];
    if (*(result + 292) != -1)
    {
      v9 = *(result + 112);
      v10 = *(v9 + 48);
      v11 = *(v9 + 56);
      v12 = v11 >= v10;
      v13 = v11 - v10;
      if (v12)
      {
        v14 = *(*(result + 80) + 16 * a2);
        if (v14 - v10 < v13)
        {
          v15 = v14 >> *MEMORY[0x1E69E9AC0];
          if (v15)
          {
            v16 = *(v9 + 24);
            v19 = *v16;
            v17 = v16 + 1;
            v18 = v19;
            v20 = v14 >> *MEMORY[0x1E69E9AC0];
            do
            {
              v21 = v20 & 0x3FFFFFF;
              if (v18 <= v21 || ((*(v17 + (v21 >> 3)) >> (v20 & 7)) & 1) == 0)
              {
                goto LABEL_26;
              }

              v20 >>= 26;
            }

            while (v20);
          }

          v22 = v15 & 0x7FFFF;
          v23 = v9 + 64;
          v24 = *(v9 + 64 + 4 * (v15 & 0x7FFFF));
          v25 = *(v9 + 32);
          if (v24)
          {
            v26 = (v25 + ((v24 - 1) << 6));
            if (v14 - *(*v26 + 8) < *(*v26 + 16))
            {
              goto LABEL_13;
            }
          }

          v30 = *(v9 + 40);
          if (v30)
          {
            v31 = *(v9 + 32);
            do
            {
              v32 = v30 >> 1;
              v26 = &v31[8 * (v30 >> 1)];
              result = *v26;
              if (*(*v26 + 8) <= v14)
              {
                if (*(*v26 + 16) + *(*v26 + 8) > v14)
                {
                  v76 = v22;
                  result = [result isSpecialPhysFootprintRegion];
                  v33 = v76;
                  if (result)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = v26;
                  }

                  if (result)
                  {
                    break;
                  }

                  if ((*(*v34 + 132) & 1) == 0)
                  {
                    goto LABEL_75;
                  }

                  v64 = (v34 + 64);
                  v65 = *(v9 + 40) - ((v34 + 64 - *(v9 + 32)) >> 6);
                  if (!v65)
                  {
                    goto LABEL_72;
                  }

                  while (1)
                  {
                    v66 = v65 >> 1;
                    v67 = &v64[8 * (v65 >> 1)];
                    result = *v67;
                    if (*(*v67 + 8) <= v14)
                    {
                      if (*(*v67 + 16) + *(*v67 + 8) > v14)
                      {
                        v73 = v34;
                        result = [result isSpecialPhysFootprintRegion];
                        v34 = v73;
                        v33 = v76;
                        if (result)
                        {
                          v65 = 0;
                        }

                        else
                        {
                          v65 = v67;
                        }

LABEL_72:
                        if (v65)
                        {
                          v34 = v65;
                        }

                        v26 = v34;
LABEL_75:
                        *(v23 + 4 * v33) = ((v34 - v25) >> 6) + 1;
LABEL_13:
                        if (*(*v26 + 148) == *(v7 + 292))
                        {
                          v27 = *(v7 + 80);
                          v28 = *(v27 + 16 * *(v7 + 288));
                          v29 = *(v27 + 16 * a2);
                          result = (*(indexes + 16))(indexes);
                        }

                        goto LABEL_26;
                      }

                      v64 = v67 + 8;
                      v66 = --v65 >> 1;
                    }

                    v68 = v65 > 1;
                    v65 = v66;
                    if (!v68)
                    {
                      v65 = 0;
                      goto LABEL_72;
                    }
                  }
                }

                v31 = v26 + 8;
                v32 = --v30 >> 1;
              }

              v12 = v30 >= 2;
              v30 = v32;
            }

            while (v12);
          }
        }
      }
    }

LABEL_26:
    if (*(v7 + 300) == -1)
    {
      goto LABEL_50;
    }

    v35 = *(v7 + 112);
    v36 = *(v35 + 48);
    v37 = *(v35 + 56);
    v12 = v37 >= v36;
    v38 = v37 - v36;
    if (!v12)
    {
      goto LABEL_50;
    }

    v39 = *(*(v7 + 80) + 16 * a2);
    if (v39 - v36 >= v38)
    {
      goto LABEL_50;
    }

    v40 = v39 >> *v8;
    if (v40)
    {
      v41 = *(v35 + 24);
      v44 = *v41;
      v42 = v41 + 1;
      v43 = v44;
      v45 = v39 >> *v8;
      do
      {
        v46 = v45 & 0x3FFFFFF;
        if (v43 <= v46 || ((*(v42 + (v46 >> 3)) >> (v45 & 7)) & 1) == 0)
        {
          goto LABEL_50;
        }

        v45 >>= 26;
      }

      while (v45);
    }

    v47 = v40 & 0x7FFFF;
    v48 = *(v35 + 64 + 4 * (v40 & 0x7FFFF));
    if (v48)
    {
      v49 = *(v35 + 32) + ((v48 - 1) << 6);
      if (v39 - *(*v49 + 8) < *(*v49 + 16))
      {
        goto LABEL_37;
      }
    }

    v53 = *(v35 + 40);
    if (v53)
    {
      v54 = *(v35 + 32);
      do
      {
        v55 = v53 >> 1;
        v49 = v54 + (v53 >> 1 << 6);
        result = *v49;
        if (*(*v49 + 8) <= v39)
        {
          if (*(*v49 + 16) + *(*v49 + 8) > v39)
          {
            v75 = *(v35 + 32);
            result = [result isSpecialPhysFootprintRegion];
            v56 = v47;
            v57 = v35 + 64;
            if (result)
            {
              v58 = 0;
            }

            else
            {
              v58 = v49;
            }

            if (result)
            {
              break;
            }

            if ((*(*v58 + 132) & 1) == 0)
            {
              goto LABEL_82;
            }

            v69 = (v58 + 64);
            v70 = *(v35 + 40) - ((v58 + 64 - *(v35 + 32)) >> 6);
            if (!v70)
            {
              goto LABEL_79;
            }

            while (1)
            {
              v71 = v70 >> 1;
              v72 = &v69[8 * (v70 >> 1)];
              result = *v72;
              if (*(*v72 + 8) <= v39)
              {
                if (*(*v72 + 16) + *(*v72 + 8) > v39)
                {
                  v74 = v58;
                  result = [result isSpecialPhysFootprintRegion];
                  v58 = v74;
                  if (result)
                  {
                    v70 = 0;
                  }

                  else
                  {
                    v70 = v72;
                  }

LABEL_79:
                  if (v70)
                  {
                    v58 = v70;
                  }

                  v49 = v58;
LABEL_82:
                  *(v57 + 4 * v56) = ((v58 - v75) >> 6) + 1;
LABEL_37:
                  if (*(*v49 + 148) == *(v7 + 300))
                  {
                    v50 = *(v7 + 80);
                    v51 = *(v50 + 16 * *(v7 + 296));
                    v52 = *(v50 + 16 * a2);
                    result = (*(indexes + 16))(indexes);
                  }

                  goto LABEL_50;
                }

                v69 = v72 + 8;
                v71 = --v70 >> 1;
              }

              v68 = v70 > 1;
              v70 = v71;
              if (!v68)
              {
                v70 = 0;
                goto LABEL_79;
              }
            }
          }

          v54 = v49 + 64;
          v55 = --v53 >> 1;
        }

        v12 = v53 >= 2;
        v53 = v55;
      }

      while (v12);
    }

LABEL_50:
    v59 = *(v7 + 304);
    if (v59 != -1)
    {
      v60 = *block;
      if (v60 < *(v7 + 320) && *(*(v7 + 312) + 4 * v60) == a2)
      {
        v61 = *(v7 + 80);
        v62 = *(v61 + 16 * v59);
        v63 = *(v61 + 16 * a2);
        result = (*(indexes + 16))(indexes);
        ++*block;
      }
    }
  }

  return result;
}

- (void)_withReaderBlockForHeapEnumeration:(void *)a1 .cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  v3 = 138412290;
  v4 = v1;
  _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create VMUTaskMemoryCache for exclave heap enumeration: %@\n", &v3, 0xCu);

  v2 = *MEMORY[0x1E69E9840];
}

void __65__VMUTaskMemoryScanner__callRemoteMallocEnumerators_error_block___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15(a1, a2);
  v6 = *(v5 + 8);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"UNKNOWN";
  }

  v9 = 138412802;
  v10 = v7;
  v11 = 2080;
  v12 = mach_error_string(v4);
  v13 = 1024;
  v14 = a3;
  _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "error: malloc enumeration of zone %@ failed to get full information about malloc metadata and/or allocations with the error %s (%d). It is likely that the target was suspended while malloc metadata was being modified.", &v9, 0x1Cu);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __56__VMUTaskMemoryScanner_addMallocNodesFromTaskWithError___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = *MEMORY[0x1E69E9848];
  OUTLINED_FUNCTION_15(a1, a2);
  v9 = [*(v8 + 8) UTF8String];
  v10 = VMUMallocRangeTypeString(1);
  v12 = *a3;
  v11 = a3[1];
  v13 = *a4;
  v14 = (*a4 + 8);
  v15 = *v14;
  v16 = v14[1] + *v14;
  v17 = *(v13 + 148);
  if (v17 >= *(*a1 + 216))
  {
    v18 = "<unclaimed>";
  }

  else
  {
    v18 = [*(*(*a1 + 208) + 24 * v17 + 8) UTF8String];
  }

  return fprintf(v7, "warning: zone enumerator for %s reported '%s' %#llx (%llu bytes) in region: [%#llx-%#llx] %s\n", v9, v10, v12, v11, v15, v16, v18);
}

@end