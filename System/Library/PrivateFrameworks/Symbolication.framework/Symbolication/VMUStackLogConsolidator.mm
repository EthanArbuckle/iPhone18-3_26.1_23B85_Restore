@interface VMUStackLogConsolidator
- (VMUStackLogConsolidator)initWithScannerOrGraph:(id)a3 stackLogReader:(id)a4;
- (id)callTreeWithOptions:(unint64_t)a3 nodeFilter:(id)a4;
- (id)stackIDsToNodesFilteredBy:(id)a3;
@end

@implementation VMUStackLogConsolidator

- (VMUStackLogConsolidator)initWithScannerOrGraph:(id)a3 stackLogReader:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VMUStackLogConsolidator;
  v9 = [(VMUStackLogConsolidator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scannerOrGraph, a3);
    objc_storeStrong(&v10->_stackLogReader, a4);
  }

  return v10;
}

- (id)stackIDsToNodesFilteredBy:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:259];
  debugTimer = self->_debugTimer;
  if (debugTimer)
  {
    v7 = [(VMUDebugTimer *)debugTimer signpostID];
    debugTimer = self->_debugTimer;
    if (v7)
    {
      v8 = [(VMUDebugTimer *)debugTimer logHandle];
      v9 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = v9;
        if (os_signpost_enabled(v8))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v8, OS_SIGNPOST_INTERVAL_END, v10, "VMUStackLogConsolidator", "", buf, 2u);
        }
      }

      debugTimer = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)debugTimer endEvent:"VMUStackLogConsolidator"];
  [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUStackLogConsolidator" message:"step 1 -- build map table with live malloc block addresses as keys"];
  v11 = self->_debugTimer;
  if (v11)
  {
    v12 = [(VMUDebugTimer *)v11 logHandle];
    v13 = [(VMUDebugTimer *)self->_debugTimer signpostID];
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "VMUStackLogConsolidator", "step 1 -- build map table with live malloc block addresses as keys", buf, 2u);
      }
    }
  }

  *buf = 0;
  v57 = buf;
  v58 = 0x2020000000;
  v59 = 0;
  v15 = [(VMUCommonGraphInterface *)self->_scannerOrGraph nodeCount];
  scannerOrGraph = self->_scannerOrGraph;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __53__VMUStackLogConsolidator_stackIDsToNodesFilteredBy___block_invoke;
  v51[3] = &unk_1E82787F8;
  v51[4] = self;
  v54 = buf;
  v55 = v15;
  v17 = v4;
  v53 = v17;
  v18 = v5;
  v52 = v18;
  [(VMUCommonGraphInterface *)scannerOrGraph enumerateRegionsWithBlock:v51];
  if ((![(VMUStackLogReader *)self->_stackLogReader inspectingLiveProcess]|| ([(VMUStackLogReader *)self->_stackLogReader usesLiteMode]& 1) == 0) && ([(VMUStackLogReader *)self->_stackLogReader usesCoreFile]& 1) == 0)
  {
    v19 = self->_debugTimer;
    if (v19)
    {
      v20 = [(VMUDebugTimer *)v19 signpostID];
      v19 = self->_debugTimer;
      if (v20)
      {
        v21 = [(VMUDebugTimer *)v19 logHandle];
        v22 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          LOWORD(v48._pi) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v21, OS_SIGNPOST_INTERVAL_END, v22, "VMUStackLogConsolidator", "", &v48, 2u);
        }

        v19 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v19 endEvent:"VMUStackLogConsolidator"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUStackLogConsolidator" message:"step 2 -- enumerate stack log records to record unique backtrace IDs for objects of interest"];
    v23 = self->_debugTimer;
    if (v23)
    {
      v24 = [(VMUDebugTimer *)v23 logHandle];
      v25 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        LOWORD(v48._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VMUStackLogConsolidator", "step 2 -- enumerate stack log records to record unique backtrace IDs for objects of interest", &v48, 2u);
      }
    }

    stackLogReader = self->_stackLogReader;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __53__VMUStackLogConsolidator_stackIDsToNodesFilteredBy___block_invoke_5;
    v49[3] = &unk_1E8278088;
    v50 = v18;
    [(VMUStackLogReader *)stackLogReader enumerateMSLRecordsAndPayloads:v49];
  }

  v27 = self->_debugTimer;
  if (v27)
  {
    v28 = [(VMUDebugTimer *)v27 signpostID];
    v27 = self->_debugTimer;
    if (v28)
    {
      v29 = [(VMUDebugTimer *)v27 logHandle];
      v30 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        LOWORD(v48._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v29, OS_SIGNPOST_INTERVAL_END, v30, "VMUStackLogConsolidator", "", &v48, 2u);
      }

      v27 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v27 endEvent:"VMUStackLogConsolidator"];
  [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUStackLogConsolidator" message:"step 3 -- from uniqueBacktraceToObjectsMap, create uniqueBacktraceToObjectsMap"];
  v31 = self->_debugTimer;
  if (v31)
  {
    v32 = [(VMUDebugTimer *)v31 logHandle];
    v33 = [(VMUDebugTimer *)self->_debugTimer signpostID];
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      LOWORD(v48._pi) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v33, "VMUStackLogConsolidator", "step 3 -- from uniqueBacktraceToObjectsMap, create uniqueBacktraceToObjectsMap", &v48, 2u);
    }
  }

  v34 = objc_opt_new();
  memset(&v48, 0, sizeof(v48));
  NSEnumerateMapTable(&v48, v18);
  value = 0;
  key = 0;
  while (NSNextMapEnumeratorPair(&v48, &key, &value))
  {
    v35 = *value;
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*value];
    v37 = [v34 objectForKeyedSubscript:v36];

    if (!v37)
    {
      v37 = objc_opt_new();
      v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v35];
      [v34 setObject:v37 forKeyedSubscript:v38];
    }

    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(value + 4)];
    [v37 addObject:v39];
  }

  NSEndMapTableEnumeration(&v48);
  v40 = self->_debugTimer;
  if (v40)
  {
    v41 = [(VMUDebugTimer *)v40 signpostID];
    v40 = self->_debugTimer;
    if (v41)
    {
      v42 = [(VMUDebugTimer *)v40 logHandle];
      v43 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        *v45 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v42, OS_SIGNPOST_INTERVAL_END, v43, "VMUStackLogConsolidator", "", v45, 2u);
      }

      v40 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v40 endEvent:"VMUStackLogConsolidator"];

  _Block_object_dispose(buf, 8);

  return v34;
}

void __53__VMUStackLogConsolidator_stackIDsToNodesFilteredBy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) zoneNameForIndex:*(v3 + 37)];
  if ([*(*(a1 + 32) + 16) usesLiteMode])
  {
    v5 = v4;
    if ([v5 hasPrefix:@"MallocStackLoggingLiteZone"])
    {
      v6 = [v5 hasPrefix:@"MallocStackLoggingLiteZone_Wrapper"] ^ 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 56);
  v9 = *(v7 + 8);
  v8 = v7 + 8;
  if (*(v9 + 24) < *(a1 + 64))
  {
    while (1)
    {
      key[1] = 0;
      v22 = 0;
      key[0] = 0;
      v10 = *(*(a1 + 32) + 8);
      if (v10)
      {
        [v10 nodeDetails:*(*v8 + 24)];
        v11 = key[0];
      }

      else
      {
        v11 = 0;
      }

      if (v11 >= v3[2] + v3[1])
      {
        goto LABEL_26;
      }

      if (((key[1] >> 60) | 4) == 5)
      {
        v12 = *(a1 + 48);
        if (!v12)
        {
          break;
        }

        v13 = *(*(*(a1 + 56) + 8) + 24);
        v14 = *(v12 + 16);
        v19 = *key;
        v20 = v22;
        if (v14(v12, v13, &v19, v4))
        {
          break;
        }
      }

LABEL_23:
      ++*(*(*(a1 + 56) + 8) + 24);
      v17 = *(a1 + 56);
      v18 = *(v17 + 8);
      v8 = v17 + 8;
      if (*(v18 + 24) >= *(a1 + 64))
      {
        goto LABEL_26;
      }
    }

    v15 = malloc_type_malloc(0x18uLL, 0x10000400CE834B2uLL);
    *v15 = -1;
    v15[1] = key[1] & 0xFFFFFFFFFFFFFFFLL;
    *(v15 + 4) = *(*(*(a1 + 56) + 8) + 24);
    if ([*(*(a1 + 32) + 16) inspectingLiveProcess] && objc_msgSend(*(*(a1 + 32) + 16), "usesLiteMode"))
    {
      if (!v6)
      {
        free(v15);
        goto LABEL_23;
      }

      [*(*(a1 + 32) + 16) liteMSLPayloadforMallocAddress:key[0] size:key[1] & 0xFFFFFFFFFFFFFFFLL];
      uniquing_table_index = msl_payload_get_uniquing_table_index();
    }

    else
    {
      if (![*(*(a1 + 32) + 16) usesCoreFile])
      {
LABEL_22:
        NSMapInsert(*(a1 + 40), key[0], v15);
        goto LABEL_23;
      }

      uniquing_table_index = [*(*(a1 + 32) + 16) stackIDForNode:*(*(*(a1 + 56) + 8) + 24)];
    }

    *v15 = uniquing_table_index;
    goto LABEL_22;
  }

LABEL_26:
}

void *__53__VMUStackLogConsolidator_stackIDsToNodesFilteredBy___block_invoke_5(uint64_t a1, char a2, const void *a3)
{
  result = msl_payload_get_uniquing_table_index();
  if ((a2 & 0x12) != 0)
  {
    v7 = result;
    result = NSMapGet(*(a1 + 32), a3);
    if (result)
    {
      *result = v7;
    }
  }

  return result;
}

- (id)callTreeWithOptions:(unint64_t)a3 nodeFilter:(id)a4
{
  v6 = [(VMUStackLogConsolidator *)self stackIDsToNodesFilteredBy:a4];
  debugTimer = self->_debugTimer;
  if (debugTimer)
  {
    v8 = [(VMUDebugTimer *)debugTimer signpostID];
    debugTimer = self->_debugTimer;
    if (v8)
    {
      v9 = [(VMUDebugTimer *)debugTimer logHandle];
      v10 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = v10;
        if (os_signpost_enabled(v9))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v9, OS_SIGNPOST_INTERVAL_END, v11, "VMUStackLogConsolidator", "", buf, 2u);
        }
      }

      debugTimer = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)debugTimer endEvent:"VMUStackLogConsolidator"];
  [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUStackLogConsolidator" message:"step 4 -- build call tree by iterating the uniqueBacktraceToObjectsMap"];
  v12 = self->_debugTimer;
  if (v12)
  {
    v13 = [(VMUDebugTimer *)v12 logHandle];
    v14 = [(VMUDebugTimer *)self->_debugTimer signpostID];
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VMUStackLogConsolidator", "step 4 -- build call tree by iterating the uniqueBacktraceToObjectsMap", buf, 2u);
      }
    }
  }

  if ([(VMUStackLogReader *)self->_stackLogReader coldestFrameIsNotThreadId])
  {
    a3 |= 4uLL;
  }

  v16 = [[VMUCallTreeRoot alloc] initWithSymbolicator:0 sampler:0 options:0, a3];
  [(VMUCallTreeRoot *)v16 setStackLogReader:self->_stackLogReader];
  v17 = objc_alloc_init(VMUBacktrace);
  v17->_flavor = 32;
  if (self->_debugTimer)
  {
    fprintf(*MEMORY[0x1E69E9848], "%qu unique stacks\n", [v6 count]);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __58__VMUStackLogConsolidator_callTreeWithOptions_nodeFilter___block_invoke;
  v29[3] = &unk_1E8278820;
  v29[4] = self;
  v18 = v17;
  v30 = v18;
  v19 = v16;
  v31 = v19;
  [v6 enumerateKeysAndObjectsUsingBlock:v29];
  [(VMUCallTreeRoot *)v19 allBacktracesHaveBeenAdded];
  v20 = [(VMUCommonGraphInterface *)self->_scannerOrGraph binaryImagesDescription];
  [(VMUCallTreeRoot *)v19 setBinaryImagesDescription:v20];

  v21 = self->_debugTimer;
  if (v21)
  {
    v22 = [(VMUDebugTimer *)v21 signpostID];
    v21 = self->_debugTimer;
    if (v22)
    {
      v23 = [(VMUDebugTimer *)v21 logHandle];
      v24 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v25 = v24;
        if (os_signpost_enabled(v23))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v23, OS_SIGNPOST_INTERVAL_END, v25, "VMUStackLogConsolidator", "", buf, 2u);
        }
      }

      v21 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v21 endEvent:"VMUStackLogConsolidator"];
  v26 = v31;
  v27 = v19;

  return v19;
}

void __58__VMUStackLogConsolidator_callTreeWithOptions_nodeFilter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24[512] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 unsignedLongValue];
  if (v7 != -1)
  {
    v8 = [*(*(a1 + 32) + 16) getFramesForStackID:v7 stackFramesBuffer:v24];
    if (v8)
    {
      if ([*(*(a1 + 32) + 16) coldestFrameIsNotThreadId])
      {
        LODWORD(v9) = -1;
      }

      else
      {
        v9 = v24[--v8];
      }

      *(*(a1 + 40) + 28) = v9;
      *(*(a1 + 40) + 64) = v8;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v19 + 1) + 8 * i) unsignedIntValue];
            v16 = *(*(a1 + 32) + 8);
            if (v16)
            {
              [v16 nodeDetails:v15];
            }

            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      *(*(a1 + 40) + 48) = v24;
      v17 = [*(a1 + 48) addBacktrace:*(a1 + 40) count:objc_msgSend(v10 numBytes:{"count"), 0}];
      *(*(a1 + 40) + 48) = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end