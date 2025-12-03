@interface VMUDuplicatesAnalyzer
- (BOOL)findStringDupsByStack:(id)stack stackLogReader:(id)reader block:(id)block;
- (BOOL)findStringDupsByStack:(id)stack stackLogReader:(id)reader fieldBlock:(id)block;
- (BOOL)findStringDupsInGraph:(id)graph symbolicator:(_CSTypeRef)symbolicator stackLogReader:(id)reader block:(id)block;
- (BOOL)findStringDupsInGraph:(id)graph symbolicator:(_CSTypeRef)symbolicator stackLogReader:(id)reader fieldBlock:(id)block;
- (id)_analysisSummaryWithGraphOrScanner:(id)scanner;
- (void)fullAnalysisWithBlock:(id)block;
- (void)summaryWithGraph:(id)graph block:(id)block;
@end

@implementation VMUDuplicatesAnalyzer

- (id)_analysisSummaryWithGraphOrScanner:(id)scanner
{
  v84 = *MEMORY[0x1E69E9840];
  scannerCopy = scanner;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  debugTimer = self->super._debugTimer;
  if (debugTimer)
  {
    signpostID = [(VMUDebugTimer *)debugTimer signpostID];
    debugTimer = self->super._debugTimer;
    if (signpostID)
    {
      logHandle = [(VMUDebugTimer *)debugTimer logHandle];
      signpostID2 = [(VMUDebugTimer *)self->super._debugTimer signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = signpostID2;
        if (os_signpost_enabled(logHandle))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, v11, "VMUDuplicatesAnalyzer", "", buf, 2u);
        }
      }

      debugTimer = self->super._debugTimer;
    }
  }

  [(VMUDebugTimer *)debugTimer endEvent:"VMUDuplicatesAnalyzer"];
  [(VMUDebugTimer *)self->super._debugTimer startWithCategory:"VMUDuplicatesAnalyzer" message:"Exctracting labels"];
  v12 = self->super._debugTimer;
  if (v12)
  {
    logHandle2 = [(VMUDebugTimer *)v12 logHandle];
    signpostID3 = [(VMUDebugTimer *)self->super._debugTimer signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = signpostID3;
      if (os_signpost_enabled(logHandle2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VMUDuplicatesAnalyzer", "Exctracting labels", buf, 2u);
      }
    }
  }

  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __60__VMUDuplicatesAnalyzer__analysisSummaryWithGraphOrScanner___block_invoke;
  v78[3] = &unk_1E827A9D8;
  v16 = scannerCopy;
  v79 = v16;
  selfCopy = self;
  v17 = v6;
  v81 = v17;
  v63 = v16;
  VMUEnumerateVMAnnotatedMallocObjectsWithBlock(v16, v78);
  v18 = self->super._debugTimer;
  v64 = v5;
  if (v18)
  {
    signpostID4 = [(VMUDebugTimer *)v18 signpostID];
    v18 = self->super._debugTimer;
    if (signpostID4)
    {
      logHandle3 = [(VMUDebugTimer *)v18 logHandle];
      signpostID5 = [(VMUDebugTimer *)self->super._debugTimer signpostID];
      if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v22 = signpostID5;
        if (os_signpost_enabled(logHandle3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, v22, "VMUDuplicatesAnalyzer", "", buf, 2u);
        }
      }

      v18 = self->super._debugTimer;
    }
  }

  [(VMUDebugTimer *)v18 endEvent:"VMUDuplicatesAnalyzer"];
  [(VMUDebugTimer *)self->super._debugTimer startWithCategory:"VMUDuplicatesAnalyzer" message:"Selecting labels that have duplicates"];
  v23 = self->super._debugTimer;
  if (v23)
  {
    logHandle4 = [(VMUDebugTimer *)v23 logHandle];
    signpostID6 = [(VMUDebugTimer *)self->super._debugTimer signpostID];
    if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v26 = signpostID6;
      if (os_signpost_enabled(logHandle4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_BEGIN, v26, "VMUDuplicatesAnalyzer", "Selecting labels that have duplicates", buf, 2u);
      }
    }
  }

  v27 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  allKeys = [v17 allKeys];
  v29 = [allKeys countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v75;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v75 != v31)
        {
          objc_enumerationMutation(allKeys);
        }

        v33 = *(*(&v74 + 1) + 8 * i);
        v34 = [v17 objectForKeyedSubscript:v33];
        if ([v34 count] >= 2)
        {
          [v27 addObject:v33];
        }
      }

      v30 = [allKeys countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v30);
  }

  v35 = self->super._debugTimer;
  if (v35)
  {
    signpostID7 = [(VMUDebugTimer *)v35 signpostID];
    v35 = self->super._debugTimer;
    v37 = v64;
    if (signpostID7)
    {
      logHandle5 = [(VMUDebugTimer *)v35 logHandle];
      signpostID8 = [(VMUDebugTimer *)self->super._debugTimer signpostID];
      if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v40 = signpostID8;
        if (os_signpost_enabled(logHandle5))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_END, v40, "VMUDuplicatesAnalyzer", "", buf, 2u);
        }
      }

      v35 = self->super._debugTimer;
    }
  }

  else
  {
    v37 = v64;
  }

  [(VMUDebugTimer *)v35 endEvent:"VMUDuplicatesAnalyzer"];
  v41 = v27;
  if ([v41 count])
  {
    v42 = 0uLL;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    *buf = 0u;
    v70 = 0u;
    regionIdentifier = self->super._regionIdentifier;
    v44 = 0.0;
    if (regionIdentifier)
    {
      [(VMUVMRegionIdentifier *)regionIdentifier summaryStatisticsOfAllZones];
      v45 = *buf;
      if (*buf)
      {
        v46 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Total allocations size" numericalValue:*buf objectValue:0 fieldType:2];
        [v37 addObject:v46];
        v44 = v45;

        v47 = 0;
      }

      else
      {
        v47 = 1;
      }

      v42 = 0uLL;
    }

    else
    {
      v47 = 1;
    }

    v67 = v42;
    v68 = v42;
    v65 = v42;
    v66 = v42;
    v50 = v41;
    v51 = [v50 countByEnumeratingWithState:&v65 objects:v82 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = 0;
      v54 = 0;
      v55 = *v66;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v66 != v55)
          {
            objc_enumerationMutation(v50);
          }

          v57 = [v17 objectForKeyedSubscript:*(*(&v65 + 1) + 8 * j)];
          v54 += [(NSMapTable *)v57 count];
          v53 += totalSizeOfRanges(v57);
        }

        v52 = [v50 countByEnumeratingWithState:&v65 objects:v82 count:16];
      }

      while (v52);
    }

    else
    {
      v53 = 0;
      v54 = 0;
    }

    v58 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Duplicates total size" numericalValue:v53 objectValue:0 fieldType:2];
    v37 = v64;
    [v64 addObject:v58];
    if ((v47 & 1) == 0)
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%2.1f", ((v53 / v44) * 100.0)];
      v60 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"% of total allocations" numericalValue:0 objectValue:v59 fieldType:0];

      [v64 addObject:v60];
      v58 = v60;
    }

    v49 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Duplicates count" numericalValue:v54 objectValue:0 fieldType:1];
  }

  else
  {
    v48 = [VMUAnalyzerSummaryField alloc];
    v49 = [(VMUAnalyzerSummaryField *)v48 initWithKey:kVMUAnalysisSummaryKey[0] numericalValue:0 objectValue:@"No duplicates detected" fieldType:0];
  }

  [v37 addObject:v49];

  v61 = *MEMORY[0x1E69E9840];

  return v37;
}

void __60__VMUDuplicatesAnalyzer__analysisSummaryWithGraphOrScanner___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) >> 60 == 1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [*(a1 + 32) labelForNode:a2];
    if (v8)
    {
      v9 = *(a3 + 16);
      if (*(*(a1 + 40) + 33))
      {
        [v9 className];
      }

      else
      {
        [v9 displayName];
      }
      v10 = ;
      if (*(a3 + 16))
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  %@", v10, v8];
      }

      else
      {
        v11 = v8;
      }

      v12 = v11;
      v13 = [*(a1 + 48) objectForKeyedSubscript:v11];
      if (!v13)
      {
        v13 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:1282];
        [*(a1 + 48) setObject:v13 forKeyedSubscript:v12];
      }

      NSMapInsert(v13, *a3, (*(a3 + 8) & 0xFFFFFFFFFFFFFFFLL));
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (BOOL)findStringDupsInGraph:(id)graph symbolicator:(_CSTypeRef)symbolicator stackLogReader:(id)reader fieldBlock:(id)block
{
  v120 = *MEMORY[0x1E69E9840];
  graphCopy = graph;
  readerCopy = reader;
  blockCopy = block;
  v10 = objc_opt_new();
  v80 = readerCopy;
  if (readerCopy)
  {
    readerCopy = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:258];
  }

  if ([graphCopy zoneCount])
  {
    v11 = 0;
    do
    {
      v12 = objc_opt_new();
      v13 = [graphCopy zoneNameForIndex:v11];
      [v10 setObject:v12 forKeyedSubscript:v13];

      v11 = (v11 + 1);
    }

    while (v11 < [graphCopy zoneCount]);
  }

  v14 = VMULiteZoneIndex(graphCopy);
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __86__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_fieldBlock___block_invoke;
  v111[3] = &unk_1E827AA00;
  v111[4] = self;
  v112 = graphCopy;
  v71 = v10;
  v113 = v71;
  v15 = v80;
  v114 = v15;
  v116 = v14;
  v16 = readerCopy;
  v115 = v16;
  v69 = v112;
  VMUEnumerateVMAnnotatedMallocObjectsWithBlock(v112, v111);
  if (self->_minimumLabelCount > 1)
  {
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = __86__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_fieldBlock___block_invoke_2;
    v110[3] = &unk_1E827AA28;
    v110[4] = self;
    [v71 enumerateKeysAndObjectsUsingBlock:v110];
  }

  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __86__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_fieldBlock___block_invoke_3;
  v105[3] = &unk_1E827AA50;
  v105[4] = &v106;
  [v71 enumerateKeysAndObjectsUsingBlock:v105];
  v68 = *(v107 + 24);
  if (v68)
  {
    allKeys = [v71 allKeys];
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __86__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_fieldBlock___block_invoke_4;
    v103[3] = &unk_1E827AA78;
    v74 = v71;
    v104 = v74;
    v18 = [allKeys sortedArrayUsingComparator:v103];

    if (v80 && (![v15 usesLiteMode] || (objc_msgSend(v15, "inspectingLiveProcess") & 1) == 0))
    {
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __86__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_fieldBlock___block_invoke_5;
      v101[3] = &unk_1E8278088;
      v102 = v16;
      [v15 enumerateMSLRecordsAndPayloads:v101];
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = v18;
    v19 = [obj countByEnumeratingWithState:&v97 objects:v119 count:16];
    if (v19)
    {
      v20 = 0;
      v72 = v19;
      v73 = *v98;
      do
      {
        for (i = 0; i != v72; ++i)
        {
          if (*v98 != v73)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v97 + 1) + 8 * i);
          v22 = [VMUAnalyzerSummaryField alloc];
          v23 = [(VMUAnalyzerSummaryField *)v22 initWithKey:kVMUAnalysisHeaderKey[0] numericalValue:0 objectValue:@"-----------------------------------------------------------------------" fieldType:0];

          blockCopy[2](blockCopy, v23);
          v24 = MEMORY[0x1E696AEC0];
          v25 = v21;
          v75 = [v24 stringWithFormat:@"Zone %s\n", objc_msgSend(v21, "UTF8String")];
          v26 = [VMUAnalyzerSummaryField alloc];
          v87 = [(VMUAnalyzerSummaryField *)v26 initWithKey:kVMUAnalysisHeaderKey[0] numericalValue:0 objectValue:v75 fieldType:0];

          blockCopy[2](blockCopy, v87);
          v27 = [v74 objectForKeyedSubscript:v21];
          allKeys2 = [v27 allKeys];
          v95[0] = MEMORY[0x1E69E9820];
          v95[1] = 3221225472;
          v95[2] = __86__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_fieldBlock___block_invoke_6;
          v95[3] = &unk_1E827AA78;
          v81 = v27;
          v96 = v81;
          v29 = [allKeys2 sortedArrayUsingComparator:v95];

          if (!v80)
          {
            v30 = [VMUAnalyzerSummaryField alloc];
            v31 = [(VMUAnalyzerSummaryField *)v30 initWithKey:kVMUAnalysisHeaderKey[0] numericalValue:0 objectValue:@"    COUNT     BYTES   AVERAGE   CONTENT" fieldType:0];

            blockCopy[2](blockCopy, v31);
            v32 = [VMUAnalyzerSummaryField alloc];
            v87 = [(VMUAnalyzerSummaryField *)v32 initWithKey:kVMUAnalysisHeaderKey[0] numericalValue:0 objectValue:@"    =====     =====   =======   =======" fieldType:0];

            blockCopy[2](blockCopy, v87);
          }

          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v77 = v29;
          v33 = [v77 countByEnumeratingWithState:&v91 objects:v118 count:16];
          if (v33)
          {
            v79 = *v92;
            do
            {
              v83 = v33;
              for (j = 0; j != v83; ++j)
              {
                if (*v92 != v79)
                {
                  objc_enumerationMutation(v77);
                }

                v35 = *(*(&v91 + 1) + 8 * j);
                v36 = [v81 objectForKeyedSubscript:v35];
                v37 = [(NSMapTable *)v36 count];
                v38 = v36;
                v39 = v37;
                table = v38;
                v40 = totalSizeOfRanges(v38);
                *&v41 = v40 / v39;
                if (v80)
                {
                  if (v39 < 2)
                  {
                    [MEMORY[0x1E696AEC0] stringWithFormat:@"Instances: %lu   Bytes: %lu   %@", v41, v39, v40, v35];
                  }

                  else
                  {
                    [MEMORY[0x1E696AEC0] stringWithFormat:@"Instances: %lu   Total bytes: %lu   Average bytes: %.1f   %@", v39, v40, *&v41, v35];
                  }
                  v42 = ;
                  v43 = [VMUAnalyzerSummaryField alloc];
                  v44 = [(VMUAnalyzerSummaryField *)v43 initWithKey:kVMUAnalysisDataKey[0] numericalValue:0 objectValue:v42 fieldType:0];

                  blockCopy[2](blockCopy, v44);
                  v87 = v44;

                  context = objc_autoreleasePoolPush();
                  LODWORD(v44) = [v15 coldestFrameIsNotThreadId];
                  v48 = [VMUCallTreeRoot alloc];
                  if (v44)
                  {
                    v49 = 12;
                  }

                  else
                  {
                    v49 = 8;
                  }

                  v50 = [(VMUCallTreeRoot *)v48 initWithSymbolicator:symbolicator._opaque_1 sampler:symbolicator._opaque_2 options:0, v49];
                  [(VMUCallTreeRoot *)v50 setStackLogReader:v15];
                  v51 = objc_alloc_init(VMUBacktrace);
                  v51->_callstack.frames = v117;
                  v51->_flavor = 32;
                  memset(&enumerator, 0, sizeof(enumerator));
                  NSEnumerateMapTable(&enumerator, table);
                  v52 = 0;
                  value = 0;
                  key = 0;
                  v53 = -1;
                  while (NSNextMapEnumeratorPair(&enumerator, &key, &value))
                  {
                    v54 = NSMapGet(v16, key);
                    if (v53 != v54)
                    {
                      v52 = [v15 getFramesForStackID:v54 stackFramesBuffer:v117];
                      v53 = v54;
                    }

                    if (v52)
                    {
                      if ([v15 coldestFrameIsNotThreadId])
                      {
                        LODWORD(v55) = 0;
                        v56 = v52;
                      }

                      else
                      {
                        v56 = v52 - 1;
                        v55 = v117[v52 - 1];
                      }

                      v51->_callstack.context.thread = v55;
                      v51->_callstack.length = v56;
                      v57 = [(VMUCallTreeRoot *)v50 addBacktrace:v51 count:1 numBytes:value];
                    }
                  }

                  NSEndMapTableEnumeration(&enumerator);
                  v51->_callstack.frames = 0;
                  [(VMUCallTreeRoot *)v50 allBacktracesHaveBeenAdded];
                  if (self->_invertCallTrees)
                  {
                    invertedNode = [(VMUCallTreeNode *)v50 invertedNode];
                  }

                  else
                  {
                    invertedNode = v50;
                  }

                  v59 = [(VMUCallTreeNode *)invertedNode stringFromCallTreeIndentIfNoBranches:1];
                  if ([v59 length])
                  {
                    v60 = "Call tree:";
                    if (self->_invertCallTrees)
                    {
                      v60 = "Inverted call tree:";
                    }

                    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", v60];
                    v62 = [VMUAnalyzerSummaryField alloc];
                    v63 = [(VMUAnalyzerSummaryField *)v62 initWithKey:kVMUAnalysisHeaderKey[0] numericalValue:0 objectValue:v61 fieldType:0];

                    blockCopy[2](blockCopy, v63);
                    v64 = [VMUAnalyzerSummaryField alloc];
                    v87 = [(VMUAnalyzerSummaryField *)v64 initWithKey:kVMUAnalysisDataKey[0] numericalValue:0 objectValue:v59 fieldType:0];

                    blockCopy[2](blockCopy, v87);
                  }

                  objc_autoreleasePoolPop(context);
                }

                else
                {
                  v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%9lu %9lu %9.1f   %@", v39, v40, *&v41, v35];
                  v46 = [VMUAnalyzerSummaryField alloc];
                  v47 = [(VMUAnalyzerSummaryField *)v46 initWithKey:kVMUAnalysisDataKey[0] numericalValue:0 objectValue:v45 fieldType:0];

                  blockCopy[2](blockCopy, v47);
                  v87 = v47;
                }
              }

              v33 = [v77 countByEnumeratingWithState:&v91 objects:v118 count:16];
            }

            while (v33);
          }

          v65 = [VMUAnalyzerSummaryField alloc];
          v20 = [(VMUAnalyzerSummaryField *)v65 initWithKey:kVMUAnalysisDataKey[0] numericalValue:0 objectValue:&stru_1F461F9C8 fieldType:0];

          blockCopy[2](blockCopy, v20);
        }

        v72 = [obj countByEnumeratingWithState:&v97 objects:v119 count:16];
      }

      while (v72);
    }
  }

  _Block_object_dispose(&v106, 8);

  v66 = *MEMORY[0x1E69E9840];
  return v68;
}

void __86__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_fieldBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3[1] >> 60 == 1)
  {
    v9 = objc_autoreleasePoolPush();
    if (shouldGetLabelForObject(a3[2], *(*(a1 + 32) + 34)))
    {
      v10 = [*(a1 + 40) zoneNameForIndex:*(a4 + 148)];
      v11 = [*(a1 + 48) objectForKeyedSubscript:v10];
      if ([*(a1 + 56) usesLiteMode])
      {
        v12 = *(a4 + 148) != *(a1 + 72);
      }

      else
      {
        v12 = 1;
      }

      v13 = [*(a1 + 40) labelForNode:a2];
      if (v13)
      {
        v14 = a3[2];
        if (*(*(a1 + 32) + 33))
        {
          [v14 className];
        }

        else
        {
          [v14 displayName];
        }
        v15 = ;
        if (a3[2])
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  %@", v15, v13];
        }

        else
        {
          v16 = v13;
        }

        v17 = v16;
        v18 = [v11 objectForKeyedSubscript:v16];
        if (!v18)
        {
          v18 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:1282];
          [v11 setObject:v18 forKeyedSubscript:v17];
        }

        NSMapInsert(v18, *a3, (a3[1] & 0xFFFFFFFFFFFFFFFLL));
        if (*(a1 + 64))
        {
          if (v12 | (([*(a1 + 56) inspectingLiveProcess] & 1) == 0))
          {
            uniquing_table_index = -1;
          }

          else
          {
            [*(a1 + 56) liteMSLPayloadforMallocAddress:*a3 size:a3[1] & 0xFFFFFFFFFFFFFFFLL];
            uniquing_table_index = msl_payload_get_uniquing_table_index();
          }

          NSMapInsert(*(a1 + 64), *a3, uniquing_table_index);
        }
      }
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __86__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_fieldBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        if ([v11 count] < *(*(a1 + 32) + 48))
        {
          [v4 removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __86__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_fieldBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __86__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_fieldBlock___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [v7 count];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v10 = [v9 count];
  if (v8 <= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v8 < v10)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

void __86__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_fieldBlock___block_invoke_5(uint64_t a1, int a2, void *key)
{
  if (a2 == 2 && NSMapGet(*(a1 + 32), key))
  {
    uniquing_table_index = msl_payload_get_uniquing_table_index();
    v6 = *(a1 + 32);

    NSMapInsert(v6, key, uniquing_table_index);
  }
}

uint64_t __86__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_fieldBlock___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = [*(a1 + 32) objectForKeyedSubscript:a3];
  v8 = [(NSMapTable *)v6 count];
  v9 = [(NSMapTable *)v7 count]- v8;
  if (!v9)
  {
    v10 = totalSizeOfRanges(v6);
    v9 = totalSizeOfRanges(v7) - v10;
    if (!v9)
    {
      v9 = [a2 compare:a3];
    }
  }

  return v9;
}

- (BOOL)findStringDupsByStack:(id)stack stackLogReader:(id)reader fieldBlock:(id)block
{
  v137 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  readerCopy = reader;
  blockCopy = block;
  v85 = objc_opt_new();
  v11 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:259];
  v12 = objc_opt_new();
  v13 = VMULiteZoneIndex(stackCopy);
  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __73__VMUDuplicatesAnalyzer_findStringDupsByStack_stackLogReader_fieldBlock___block_invoke;
  v126[3] = &unk_1E827AA00;
  v14 = readerCopy;
  v132 = v13;
  v127 = v14;
  selfCopy = self;
  selfCopy2 = self;
  v129 = stackCopy;
  v82 = v12;
  v130 = v82;
  v15 = v11;
  v131 = v15;
  v83 = v129;
  VMUEnumerateVMAnnotatedMallocObjectsWithBlock(v129, v126);
  if (v14 && (![v14 usesLiteMode] || (objc_msgSend(v14, "inspectingLiveProcess") & 1) == 0))
  {
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __73__VMUDuplicatesAnalyzer_findStringDupsByStack_stackLogReader_fieldBlock___block_invoke_2;
    v124[3] = &unk_1E8278088;
    v125 = v15;
    [v14 enumerateMSLRecordsAndPayloads:v124];
  }

  v90 = v14;
  v16 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:259];
  memset(&enumerator, 0, sizeof(enumerator));
  v84 = v15;
  NSEnumerateMapTable(&enumerator, v15);
  value = 0;
  table = v16;
  if (NSNextMapEnumeratorPair(&enumerator, 0, &value))
  {
    *context = vdupq_n_s64(1uLL);
    do
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(value + 2);
      if (v18 != -1)
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(value + 2)];
        v20 = [(NSMapTable *)v16 objectForKey:v19];

        if (!v20)
        {
          v20 = malloc_type_malloc(0x18uLL, 0x108004098BBCF0FuLL);
          v20->i64[0] = 0;
          v20->i64[1] = 0;
          v21 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:2 valueOptions:259];
          [v85 addObject:v21];
          v20[1].i64[0] = v21;
          NSMapInsertKnownAbsent(table, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v18], v20);
        }

        v22.i64[1] = context[1];
        v22.i64[0] = *value;
        v23 = value + 8;
        *v20 = vaddq_s64(*v20, v22);
        v24 = [v20[1].i64[0] objectForKey:*v23];
        if (!v24)
        {
          v24 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
          v24->i64[0] = 0;
          v24->i64[1] = 0;
          NSMapInsertKnownAbsent(v20[1].i64[0], *(value + 1), v24);
        }

        v25 = vdupq_n_s64(1uLL);
        v25.i64[0] = *value;
        *v24 = vaddq_s64(*v24, v25);
        v16 = table;
      }

      objc_autoreleasePoolPop(v17);
    }

    while (NSNextMapEnumeratorPair(&enumerator, 0, &value));
  }

  NSEndMapTableEnumeration(&enumerator);
  if (selfCopy->_minimumLabelCount >= 2)
  {
    v91 = objc_autoreleasePoolPush();
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    obj = NSAllMapTableKeys(v16);
    v97 = [obj countByEnumeratingWithState:&v118 objects:v136 count:16];
    if (v97)
    {
      v95 = *v119;
      do
      {
        for (i = 0; i != v97; ++i)
        {
          if (*v119 != v95)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v118 + 1) + 8 * i);
          contexta = objc_autoreleasePoolPush();
          v28 = [(NSMapTable *)v16 objectForKey:v27];
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v29 = NSAllMapTableKeys(*(v28 + 16));
          v30 = [v29 countByEnumeratingWithState:&v114 objects:v135 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v115;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v115 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v114 + 1) + 8 * j);
                v35 = [*(v28 + 16) objectForKey:v34];
                v36 = v35[1];
                if (v36 < selfCopy->_minimumLabelCount)
                {
                  v37 = *(v28 + 8) - v36;
                  *v28 -= *v35;
                  *(v28 + 8) = v37;
                  [*(v28 + 16) removeObjectForKey:v34];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v114 objects:v135 count:16];
            }

            while (v31);
          }

          v16 = table;
          if (![*(v28 + 16) count])
          {
            [(NSMapTable *)table removeObjectForKey:v27];
          }

          objc_autoreleasePoolPop(contexta);
        }

        v97 = [obj countByEnumeratingWithState:&v118 objects:v136 count:16];
      }

      while (v97);
    }

    objc_autoreleasePoolPop(v91);
  }

  v38 = [(NSMapTable *)v16 count];
  v39 = v90;
  v40 = v84;
  if (v38)
  {
    v41 = NSAllMapTableKeys(v16);
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __73__VMUDuplicatesAnalyzer_findStringDupsByStack_stackLogReader_fieldBlock___block_invoke_3;
    v112[3] = &unk_1E8279EA0;
    v89 = v16;
    v113 = v89;
    v42 = [v41 sortedArrayUsingComparator:v112];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v86 = v42;
    v92 = [v86 countByEnumeratingWithState:&v108 objects:v134 count:16];
    if (v92)
    {
      v81 = v38;
      v43 = 0;
      v44 = (blockCopy + 2);
      v88 = *v109;
      v45 = 0x1E8277000uLL;
      contextb = blockCopy;
      do
      {
        v46 = 0;
        do
        {
          if (*v109 != v88)
          {
            objc_enumerationMutation(v86);
          }

          v98 = v46;
          obja = *(*(&v108 + 1) + 8 * v46);
          v96 = objc_autoreleasePoolPush();
          v47 = [(NSMapTable *)v89 objectForKey:obja];
          v48 = objc_alloc(*(v45 + 320));
          v49 = [v48 initWithKey:kVMUAnalysisHeaderKey[0] numericalValue:0 objectValue:@"    COUNT     BYTES   AVERAGE   CONTENT" fieldType:0];

          blockCopy[2](blockCopy, v49);
          v50 = objc_alloc(*(v45 + 320));
          v51 = [v50 initWithKey:kVMUAnalysisHeaderKey[0] numericalValue:0 objectValue:@"    =====     =====   =======   =======" fieldType:0];

          blockCopy[2](blockCopy, v51);
          if ([*(v47 + 16) count] >= 2)
          {
            v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%9lu %9lu %9.1f   %s", *(v47 + 8), *v47, (*v47 / *(v47 + 8)), "TOTAL FOR STACK"];
            v53 = objc_alloc(*(v45 + 320));
            v54 = [v53 initWithKey:kVMUAnalysisDataKey[0] numericalValue:0 objectValue:v52 fieldType:0];

            blockCopy[2](blockCopy, v54);
            v55 = objc_alloc(*(v45 + 320));
            v51 = [v55 initWithKey:kVMUAnalysisHeaderKey[0] numericalValue:0 objectValue:@"    =====     =====   =======   =======" fieldType:0];

            blockCopy[2](blockCopy, v51);
          }

          v56 = v44;
          v57 = v45;
          v58 = NSAllMapTableKeys(*(v47 + 16));
          v107[0] = MEMORY[0x1E69E9820];
          v107[1] = 3221225472;
          v107[2] = __73__VMUDuplicatesAnalyzer_findStringDupsByStack_stackLogReader_fieldBlock___block_invoke_4;
          v107[3] = &__block_descriptor_40_e11_q24__0_8_16l;
          v107[4] = v47;
          v59 = [v58 sortedArrayUsingComparator:v107];

          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v60 = v59;
          v61 = [v60 countByEnumeratingWithState:&v103 objects:v133 count:16];
          if (v61)
          {
            v62 = v61;
            v63 = *v104;
            do
            {
              v64 = 0;
              v65 = v51;
              do
              {
                if (*v104 != v63)
                {
                  objc_enumerationMutation(v60);
                }

                v66 = *(*(&v103 + 1) + 8 * v64);
                v67 = [*(v47 + 16) objectForKey:v66];
                v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%9lu %9lu %9.1f   %@", v67[1], *v67, (*v67 / v67[1]), v66];
                v69 = objc_alloc(*(v57 + 320));
                v51 = [v69 initWithKey:kVMUAnalysisDataKey[0] numericalValue:0 objectValue:v68 fieldType:0];

                contextb[2](contextb, v51);
                ++v64;
                v65 = v51;
              }

              while (v62 != v64);
              v62 = [v60 countByEnumeratingWithState:&v103 objects:v133 count:16];
            }

            while (v62);
          }

          v45 = v57;
          v70 = objc_alloc(*(v57 + 320));
          v71 = [v70 initWithKey:kVMUAnalysisHeaderKey[0] numericalValue:0 objectValue:@"======" fieldType:0];

          blockCopy = contextb;
          contextb[2](contextb, v71);
          unsignedLongLongValue = [obja unsignedLongLongValue];
          if (selfCopy->_fullStacks)
          {
            v73 = 4;
          }

          else
          {
            v73 = 0;
          }

          v74 = [v90 symbolicatedBacktraceForStackID:unsignedLongLongValue options:v73];
          v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"STACK: ", v74];
          v76 = objc_alloc(*(v45 + 320));
          v77 = [v76 initWithKey:kVMUAnalysisDataKey[0] numericalValue:0 objectValue:v75 fieldType:0];

          contextb[2](contextb, v77);
          v78 = objc_alloc(*(v45 + 320));
          v43 = [v78 initWithKey:kVMUAnalysisDataKey[0] numericalValue:0 objectValue:&stru_1F461F9C8 fieldType:0];

          v44 = v56;
          contextb[2](contextb, v43);

          objc_autoreleasePoolPop(v96);
          v46 = v98 + 1;
        }

        while ((v98 + 1) != v92);
        v92 = [v86 countByEnumeratingWithState:&v108 objects:v134 count:16];
      }

      while (v92);

      v40 = v84;
      v16 = table;
      v38 = v81;
      v39 = v90;
    }
  }

  v79 = *MEMORY[0x1E69E9840];
  return v38 != 0;
}

void __73__VMUDuplicatesAnalyzer_findStringDupsByStack_stackLogReader_fieldBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ([*(a1 + 32) usesLiteMode])
  {
    v8 = *(a4 + 148) != *(a1 + 72);
  }

  else
  {
    v8 = 1;
  }

  if (a3[1] >> 60 == 1)
  {
    v9 = objc_autoreleasePoolPush();
    if (shouldGetLabelForObject(a3[2], *(*(a1 + 40) + 34)))
    {
      v10 = [*(a1 + 48) labelForNode:a2];
      if (v10)
      {
        v11 = a3[2];
        if (v11)
        {
          if (*(*(a1 + 40) + 33))
          {
            [v11 className];
          }

          else
          {
            [v11 displayName];
          }
          v12 = ;
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@  %@", v12, v10];
          v17 = *(a1 + 56);
          v13 = v16;
          v15 = [v17 member:v13];
          if (!v15)
          {
            [v17 addObject:v13];
            v15 = v13;
          }
        }

        else
        {
          v12 = *(a1 + 56);
          v13 = v10;
          v14 = [v12 member:v13];
          if (!v14)
          {
            [v12 addObject:v13];
            v14 = v13;
          }

          v15 = v14;
        }

        v18 = malloc_type_malloc(0x18uLL, 0x10800401842DC26uLL);
        *v18 = a3[1] & 0xFFFFFFFFFFFFFFFLL;
        v18[1] = v15;
        if (v8 | (([*(a1 + 32) inspectingLiveProcess] & 1) == 0))
        {
          uniquing_table_index = -1;
        }

        else
        {
          [*(a1 + 32) liteMSLPayloadforMallocAddress:*a3 size:a3[1] & 0xFFFFFFFFFFFFFFFLL];
          uniquing_table_index = msl_payload_get_uniquing_table_index();
        }

        v18[2] = uniquing_table_index;
        NSMapInsert(*(a1 + 64), *a3, v18);
      }
    }

    objc_autoreleasePoolPop(v9);
  }
}

uint64_t __73__VMUDuplicatesAnalyzer_findStringDupsByStack_stackLogReader_fieldBlock___block_invoke_2(uint64_t result, int a2, void *key)
{
  if (a2 == 2)
  {
    result = NSMapGet(*(result + 32), key);
    if (result)
    {
      v3 = result;
      result = msl_payload_get_uniquing_table_index();
      *(v3 + 16) = result;
    }
  }

  return result;
}

uint64_t __73__VMUDuplicatesAnalyzer_findStringDupsByStack_stackLogReader_fieldBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  if (*v7 <= *v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (*v7 < *v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

uint64_t __73__VMUDuplicatesAnalyzer_findStringDupsByStack_stackLogReader_fieldBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 16) objectForKey:v5];
  v8 = [*(*(a1 + 32) + 16) objectForKey:v6];
  if (*v7 <= *v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (*v7 < *v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (*v7 == *v8)
  {
    v10 = [v5 compare:v6];
  }

  return v10;
}

- (void)summaryWithGraph:(id)graph block:(id)block
{
  blockCopy = block;
  v7 = [(VMUDuplicatesAnalyzer *)self _analysisSummaryWithGraphOrScanner:graph];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__VMUDuplicatesAnalyzer_summaryWithGraph_block___block_invoke;
  v10[3] = &unk_1E827AAC0;
  v11 = v7;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = v7;
  [v9 enumerateObjectsUsingBlock:v10];
}

void __48__VMUDuplicatesAnalyzer_summaryWithGraph_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 longestKeyLength];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v4 key];
  v8 = [v7 UTF8String];
  v9 = [v4 formattedValue];

  v10 = [v6 stringWithFormat:@"    %*s:  %s", v5, v8, objc_msgSend(v9, "UTF8String")];

  (*(*(a1 + 40) + 16))();
}

- (BOOL)findStringDupsInGraph:(id)graph symbolicator:(_CSTypeRef)symbolicator stackLogReader:(id)reader block:(id)block
{
  opaque_2 = symbolicator._opaque_2;
  opaque_1 = symbolicator._opaque_1;
  blockCopy = block;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_block___block_invoke;
  v14[3] = &unk_1E827AAE8;
  v15 = blockCopy;
  v12 = blockCopy;
  LOBYTE(reader) = [(VMUDuplicatesAnalyzer *)self findStringDupsInGraph:graph symbolicator:opaque_1 stackLogReader:opaque_2 fieldBlock:reader, v14];

  return reader;
}

void __81__VMUDuplicatesAnalyzer_findStringDupsInGraph_symbolicator_stackLogReader_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 formattedValue];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)findStringDupsByStack:(id)stack stackLogReader:(id)reader block:(id)block
{
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__VMUDuplicatesAnalyzer_findStringDupsByStack_stackLogReader_block___block_invoke;
  v11[3] = &unk_1E827AAE8;
  v12 = blockCopy;
  v9 = blockCopy;
  LOBYTE(reader) = [(VMUDuplicatesAnalyzer *)self findStringDupsByStack:stack stackLogReader:reader fieldBlock:v11];

  return reader;
}

void __68__VMUDuplicatesAnalyzer_findStringDupsByStack_stackLogReader_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 formattedValue];
  (*(v2 + 16))(v2, v3);
}

- (void)fullAnalysisWithBlock:(id)block
{
  blockCopy = block;
  if (self->_objectContentLevel != 1)
  {
    v7 = 0x1E8277000uLL;
    if (!self->_quiet)
    {
      v8 = [VMUAnalyzerSummaryField alloc];
      v9 = kVMUAnalysisDataKey[0];
      processDescriptionString = [(VMUProcessObjectGraph *)self->super._graph processDescriptionString];
      v11 = [(VMUAnalyzerSummaryField *)v8 initWithKey:v9 numericalValue:0 objectValue:processDescriptionString fieldType:0];

      blockCopy[2](blockCopy, v11);
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Showing object labels that have at least %lu duplicates.  Pass the -minimumCount <count> argument to change the threshold.\n", self->_minimumLabelCount];
    v13 = [VMUAnalyzerSummaryField alloc];
    v6 = [(VMUAnalyzerSummaryField *)v13 initWithKey:kVMUAnalysisWarningKey[0] numericalValue:0 objectValue:v12 fieldType:0];
    blockCopy[2](blockCopy, v6);
    if (self->_objectContentLevel == 2)
    {
      v14 = [VMUAnalyzerSummaryField alloc];
      v15 = [(VMUAnalyzerSummaryField *)v14 initWithKey:kVMUAnalysisWarningKey[0] numericalValue:0 objectValue:@"The memory graph file only contains labels for contents of readonly memory of the target process fieldType:so only those items can be shown.\n", 0];

      blockCopy[2](blockCopy, v15);
      v6 = v15;
    }

    if (self->_showStacks && ([(VMUProcessObjectGraph *)self->super._graph stackLogReader], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = v16;
      if (!self->_showCallTrees)
      {
        graph = self->super._graph;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __47__VMUDuplicatesAnalyzer_fullAnalysisWithBlock___block_invoke;
        v35[3] = &unk_1E827AAE8;
        v36 = blockCopy;
        LOBYTE(graph) = [(VMUDuplicatesAnalyzer *)self findStringDupsByStack:graph stackLogReader:v17 fieldBlock:v35];

        if (graph)
        {
LABEL_18:
          if (self->_quiet)
          {
LABEL_21:

            goto LABEL_22;
          }

          v28 = objc_alloc(*(v7 + 320));
          v29 = kVMUAnalysisDataKey[0];
          binaryImagesDescription = [(VMUProcessObjectGraph *)self->super._graph binaryImagesDescription];
          v26 = [v28 initWithKey:v29 numericalValue:0 objectValue:binaryImagesDescription fieldType:0];

          v6 = binaryImagesDescription;
LABEL_20:

          blockCopy[2](blockCopy, v26);
          v6 = v26;
          goto LABEL_21;
        }

LABEL_16:
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No object labels had %lu duplicates.", self->_minimumLabelCount];

        v25 = [VMUAnalyzerSummaryField alloc];
        v26 = [(VMUAnalyzerSummaryField *)v25 initWithKey:kVMUAnalysisWarningKey[0] numericalValue:0 objectValue:v24 fieldType:0];
        v12 = v24;
        goto LABEL_20;
      }

      v18 = v16;
      v32 = v12;
      v31 = 0;
    }

    else
    {
      v32 = v12;
      v18 = 0;
      v31 = 1;
    }

    v19 = self->super._graph;
    symbolStore = [(VMUProcessObjectGraph *)v19 symbolStore];
    symbolicator = [symbolStore symbolicator];
    v23 = v22;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __47__VMUDuplicatesAnalyzer_fullAnalysisWithBlock___block_invoke_2;
    v33[3] = &unk_1E827AAE8;
    v34 = blockCopy;
    v17 = v18;
    LOBYTE(v19) = [(VMUDuplicatesAnalyzer *)self findStringDupsInGraph:v19 symbolicator:symbolicator stackLogReader:v23 fieldBlock:v18, v33];

    if (v19)
    {
      v12 = v32;
      v7 = 0x1E8277000;
      if (v31)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    v12 = v32;
    goto LABEL_16;
  }

  v5 = [VMUAnalyzerSummaryField alloc];
  v6 = [(VMUAnalyzerSummaryField *)v5 initWithKey:kVMUAnalysisErrorKey[0] numericalValue:0 objectValue:@"The memory graph file does not contain any labels for allocations." fieldType:0];
  blockCopy[2](blockCopy, v6);
LABEL_22:
}

@end