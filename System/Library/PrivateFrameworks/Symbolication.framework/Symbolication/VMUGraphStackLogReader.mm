@interface VMUGraphStackLogReader
- (BOOL)copyOriginalUniquingTable:(id)table;
- (BOOL)is64bit;
- (BOOL)populateBacktraceUniquingTableWithCore:(id)core zones:(_VMUZoneNode *)zones zonesCount:(unsigned int)count;
- (VMUGraphStackLogReader)initWithCoder:(id)coder;
- (VMUGraphStackLogReader)initWithCore:(id)core symbolicator:(_CSTypeRef)symbolicator graph:(id)graph debugTimer:(id)timer zones:(_VMUZoneNode *)zones zonesCount:(unsigned int)count;
- (VMUGraphStackLogReader)initWithTask:(id)task symbolicator:(_CSTypeRef)symbolicator graph:(id)graph debugTimer:(id)timer collectDisklogs:(BOOL)disklogs;
- (VMUProcessObjectGraph)graph;
- (_VMURange)binaryImageRangeForPCaddress:(unint64_t)caddress;
- (_VMURange)functionRangeContainingPCaddress:(unint64_t)caddress;
- (_VMURange)sourceLineRangeContainingPCaddress:(unint64_t)caddress;
- (id)binaryImagePathForPCaddress:(unint64_t)caddress;
- (id)functionNameForPCaddress:(unint64_t)caddress;
- (id)sourceFileNameForPCaddress:(unint64_t)caddress;
- (id)sourcePathForPCaddress:(unint64_t)caddress;
- (id)vmuVMRegionForAddress:(unint64_t)address;
- (int)enumerateMSLRecordsAndPayloads:(id)payloads;
- (int64_t)getFramesForStackID:(unint64_t)d stackFramesBuffer:(unint64_t *)buffer;
- (unint64_t)nodesInUniquingTable;
- (unint64_t)stackIDForNode:(unsigned int)node;
- (unint64_t)timestampForNode:(unsigned int)node;
- (unsigned)sourceLineNumberForPCaddress:(unint64_t)caddress;
- (void)_parseSourceInfoString:(id)string intoComponents:(unsigned int *)components;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateUniquingTable:(id)table;
- (void)populateBacktraceUniquingTableWithStackLogs:(id)logs;
- (void)setGraph:(id)graph;
- (void)symbolicateBacktraceUniquingTable;
@end

@implementation VMUGraphStackLogReader

- (VMUGraphStackLogReader)initWithCore:(id)core symbolicator:(_CSTypeRef)symbolicator graph:(id)graph debugTimer:(id)timer zones:(_VMUZoneNode *)zones zonesCount:(unsigned int)count
{
  opaque_2 = symbolicator._opaque_2;
  opaque_1 = symbolicator._opaque_1;
  coreCopy = core;
  graphCopy = graph;
  timerCopy = timer;
  v27.receiver = self;
  v27.super_class = VMUGraphStackLogReader;
  v17 = [(VMUGraphStackLogReader *)&v27 init];
  v18 = v17;
  if (v17)
  {
    v17->super._symbolicator._opaque_1 = opaque_1;
    v17->super._symbolicator._opaque_2 = opaque_2;
    [(VMUGraphStackLogReader *)v17 setGraph:graphCopy];
    objc_storeStrong(&v18->_debugTimer, timer);
    v18->super._usesCoreFile = 1;
    v18->super._coldestFrameIsNotThreadId = 1;
    v19 = objc_alloc_init(VMUVMRegionTracker);
    regionTracker = v18->super._regionTracker;
    v18->super._regionTracker = v19;

    v21 = objc_opt_new();
    functionNameRanges = v18->_functionNameRanges;
    v18->_functionNameRanges = v21;

    v23 = objc_opt_new();
    sourceInfoRanges = v18->_sourceInfoRanges;
    v18->_sourceInfoRanges = v23;

    if (![(VMUGraphStackLogReader *)v18 populateBacktraceUniquingTableWithCore:coreCopy zones:zones zonesCount:count])
    {
      v25 = 0;
      goto LABEL_6;
    }

    [(VMUGraphStackLogReader *)v18 symbolicateBacktraceUniquingTable];
  }

  v25 = v18;
LABEL_6:

  return v25;
}

- (VMUGraphStackLogReader)initWithTask:(id)task symbolicator:(_CSTypeRef)symbolicator graph:(id)graph debugTimer:(id)timer collectDisklogs:(BOOL)disklogs
{
  disklogsCopy = disklogs;
  opaque_2 = symbolicator._opaque_2;
  opaque_1 = symbolicator._opaque_1;
  taskCopy = task;
  graphCopy = graph;
  timerCopy = timer;
  v29.receiver = self;
  v29.super_class = VMUGraphStackLogReader;
  v17 = [(VMUGraphStackLogReader *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->super._vmuTask, task);
    v18->super._task = [(VMUTask *)v18->super._vmuTask taskPort];
    v18->super._symbolicator._opaque_1 = opaque_1;
    v18->super._symbolicator._opaque_2 = opaque_2;
    [(VMUGraphStackLogReader *)v18 setGraph:graphCopy];
    objc_storeStrong(&v18->_debugTimer, timer);
    opaque_2 = [[VMUTaskStackLogReader alloc] initWithTask:v18->super._task symbolicator:opaque_1, opaque_2];
    if (!opaque_2)
    {
      v27 = 0;
      goto LABEL_9;
    }

    v20 = opaque_2;
    v18->super._coldestFrameIsNotThreadId = [(VMUStackLogReaderBase *)opaque_2 coldestFrameIsNotThreadId];
    v21 = objc_alloc_init(VMUVMRegionTracker);
    regionTracker = v18->super._regionTracker;
    v18->super._regionTracker = v21;

    v23 = objc_opt_new();
    functionNameRanges = v18->_functionNameRanges;
    v18->_functionNameRanges = v23;

    v25 = objc_opt_new();
    sourceInfoRanges = v18->_sourceInfoRanges;
    v18->_sourceInfoRanges = v25;

    if (!disklogsCopy || ![(VMUGraphStackLogReader *)v18 copyOriginalUniquingTable:v20])
    {
      [(VMUGraphStackLogReader *)v18 populateBacktraceUniquingTableWithStackLogs:v20];
    }

    [(VMUGraphStackLogReader *)v18 symbolicateBacktraceUniquingTable];
  }

  v27 = v18;
LABEL_9:

  return v27;
}

- (void)setGraph:(id)graph
{
  graphCopy = graph;
  objc_storeWeak(&self->_graph, graphCopy);
  symbolStore = [graphCopy symbolStore];

  if (symbolStore)
  {
    symbolStore2 = [graphCopy symbolStore];
    self->super._symbolicator._opaque_1 = [symbolStore2 symbolicator];
    self->super._symbolicator._opaque_2 = v6;
  }

  v7 = VMULiteZoneIndex(graphCopy);
  WeakRetained = objc_loadWeakRetained(&self->_graph);
  self->super._usesLiteMode = v7 < [WeakRetained zoneCount];

  if (self->super._usesLiteMode)
  {
    self->super._coldestFrameIsNotThreadId = 1;
  }
}

- (void)dealloc
{
  backtraceUniquingTable = self->_backtraceUniquingTable;
  if (backtraceUniquingTable)
  {
    vmu_destroy_backtrace_uniquing_table(backtraceUniquingTable);
  }

  nodeToStackIndexTable = self->_nodeToStackIndexTable;
  if (nodeToStackIndexTable)
  {
    free(nodeToStackIndexTable);
  }

  nodeToTimestampTable = self->_nodeToTimestampTable;
  if (nodeToTimestampTable)
  {
    free(nodeToTimestampTable);
  }

  nodeToMSLPayloadTable = self->_nodeToMSLPayloadTable;
  if (nodeToMSLPayloadTable)
  {
    free(nodeToMSLPayloadTable);
  }

  originalUniquingTable = self->_originalUniquingTable;
  if (originalUniquingTable)
  {
    MEMORY[0x1C695EDE0](originalUniquingTable, a2);
  }

  v8.receiver = self;
  v8.super_class = VMUGraphStackLogReader;
  [(VMUGraphStackLogReader *)&v8 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  WeakRetained = objc_loadWeakRetained(&self->_graph);
  serializationOptions = [WeakRetained serializationOptions];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  [coderCopy encodeObject:v7 forKey:@"classVersion"];

  if (self->_backtraceUniquingTable)
  {
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
          v12 = signpostID2;
          if (os_signpost_enabled(logHandle))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, v12, "VMUGraphStackLogReader", "", buf, 2u);
          }
        }

        debugTimer = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)debugTimer endEvent:"VMUGraphStackLogReader"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUGraphStackLogReader" message:"archiving backtrace uniquing table"];
    v13 = self->_debugTimer;
    if (v13)
    {
      logHandle2 = [(VMUDebugTimer *)v13 logHandle];
      signpostID3 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = signpostID3;
        if (os_signpost_enabled(logHandle2))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VMUGraphStackLogReader", "archiving backtrace uniquing table", buf, 2u);
        }
      }
    }

    [coderCopy encodeInt64:self->_backtraceUniquingTable->var3 forKey:@"backtraceUniquingTableSize"];
    [coderCopy encodeInt32:self->_backtraceUniquingTable->var9 forKey:@"backtraceUniquingTableFlags"];
    v17 = [VMUDirectedGraph _archivedBytes:self->_backtraceUniquingTable->var0 length:SLODWORD(self->_backtraceUniquingTable->var3) options:serializationOptions];
    [coderCopy encodeObject:v17 forKey:@"backtraceUniquingTableContents"];

    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Backtrace Uniquing Table] %llu node capacity  %u nodes full  %llu bytes\n\n", self->_backtraceUniquingTable->var2, self->_backtraceUniquingTable->var7, self->_backtraceUniquingTable->var3);
    }
  }

  if (self->_originalUniquingTable)
  {
    *buf = 0;
    v18 = msl_uniquing_table_serialize();
    if (v18 && *buf != 0)
    {
      v20 = v18;
      if (*buf == -1)
      {
        v22 = -1;
      }

      else
      {
        v21 = [VMUDirectedGraph _archivedBytes:"_archivedBytes:length:options:" length:v18 options:?];
        [coderCopy encodeObject:v21 forKey:@"originalUniquingTableContents"];

        v22 = *buf;
        if (kVMUPrintArchivingTiming == 1)
        {
          fprintf(*MEMORY[0x1E69E9848], "[Original Uniquing Table] %llu bytes\n\n", *buf);
          v22 = *buf;
        }
      }

      mach_vm_deallocate(*MEMORY[0x1E69E9A60], v20, v22);
    }
  }

  if (self->_nodeToStackIndexTable)
  {
    v23 = self->_debugTimer;
    if (v23)
    {
      signpostID4 = [(VMUDebugTimer *)v23 signpostID];
      v23 = self->_debugTimer;
      if (signpostID4)
      {
        logHandle3 = [(VMUDebugTimer *)v23 logHandle];
        signpostID5 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v27 = signpostID5;
          if (os_signpost_enabled(logHandle3))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, v27, "VMUGraphStackLogReader", "", buf, 2u);
          }
        }

        v23 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v23 endEvent:"VMUGraphStackLogReader"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUGraphStackLogReader" message:"archiving nodeToStackIDTable"];
    v28 = self->_debugTimer;
    if (v28)
    {
      logHandle4 = [(VMUDebugTimer *)v28 logHandle];
      signpostID6 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v31 = signpostID6;
        if (os_signpost_enabled(logHandle4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_BEGIN, v31, "VMUGraphStackLogReader", "archiving nodeToStackIDTable", buf, 2u);
        }
      }
    }

    v32 = 4 * self->_nodeNamespaceSize;
    v33 = [VMUDirectedGraph _archivedBytes:self->_nodeToStackIndexTable length:v32 options:serializationOptions];
    [coderCopy encodeObject:v33 forKey:@"nodeToStackIdTable"];

    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[nodeToStackIdTable] nodeNamespaceSize %u  %lu bytes\n\n", self->_nodeNamespaceSize, v32);
    }
  }

  if (self->_nodeToTimestampTable)
  {
    v34 = self->_debugTimer;
    if (v34)
    {
      signpostID7 = [(VMUDebugTimer *)v34 signpostID];
      v34 = self->_debugTimer;
      if (signpostID7)
      {
        logHandle5 = [(VMUDebugTimer *)v34 logHandle];
        signpostID8 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v38 = signpostID8;
          if (os_signpost_enabled(logHandle5))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_END, v38, "VMUGraphStackLogReader", "", buf, 2u);
          }
        }

        v34 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v34 endEvent:"VMUGraphStackLogReader"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUGraphStackLogReader" message:"archiving nodeToTimestampTable"];
    v39 = self->_debugTimer;
    if (v39)
    {
      logHandle6 = [(VMUDebugTimer *)v39 logHandle];
      signpostID9 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v42 = signpostID9;
        if (os_signpost_enabled(logHandle6))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle6, OS_SIGNPOST_INTERVAL_BEGIN, v42, "VMUGraphStackLogReader", "archiving nodeToTimestampTable", buf, 2u);
        }
      }
    }

    v43 = 8 * self->_nodeNamespaceSize;
    v44 = [VMUDirectedGraph _archivedBytes:self->_nodeToTimestampTable length:v43 options:serializationOptions];
    [coderCopy encodeObject:v44 forKey:@"nodeToTimestampTable"];

    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[nodeToTimestampTable] nodeNamespaceSize %u  %lu bytes\n\n", self->_nodeNamespaceSize, v43);
    }
  }

  if (self->_nodeToMSLPayloadTable)
  {
    v45 = self->_debugTimer;
    if (v45)
    {
      signpostID10 = [(VMUDebugTimer *)v45 signpostID];
      v45 = self->_debugTimer;
      if (signpostID10)
      {
        logHandle7 = [(VMUDebugTimer *)v45 logHandle];
        signpostID11 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v49 = signpostID11;
          if (os_signpost_enabled(logHandle7))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle7, OS_SIGNPOST_INTERVAL_END, v49, "VMUGraphStackLogReader", "", buf, 2u);
          }
        }

        v45 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v45 endEvent:"VMUGraphStackLogReader"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUGraphStackLogReader" message:"archiving nodeToMSLPayloadTable"];
    v50 = self->_debugTimer;
    if (v50)
    {
      logHandle8 = [(VMUDebugTimer *)v50 logHandle];
      signpostID12 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v53 = signpostID12;
        if (os_signpost_enabled(logHandle8))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle8, OS_SIGNPOST_INTERVAL_BEGIN, v53, "VMUGraphStackLogReader", "archiving nodeToMSLPayloadTable", buf, 2u);
        }
      }
    }

    v54 = 8 * self->_nodeNamespaceSize;
    v55 = [VMUDirectedGraph _archivedBytes:self->_nodeToMSLPayloadTable length:v54 options:serializationOptions];
    [coderCopy encodeObject:v55 forKey:@"nodeToMSLPayloadTable"];
    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[nodeToMSLPayloadTable] nodeNamespaceSize %u  %lu bytes\n\n", self->_nodeNamespaceSize, v54);
    }
  }

  if ([(VMURangeToStringMap *)self->_functionNameRanges count])
  {
    v56 = [VMUDirectedGraph _archivedObject:self->_functionNameRanges options:serializationOptions];
    [coderCopy encodeObject:v56 forKey:@"functionNameRanges"];

    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Function Name Ranges] Count: %u  Uniqued string count: %u\n\n", [(VMURangeToStringMap *)self->_functionNameRanges count], [(VMURangeToStringMap *)self->_functionNameRanges uniquedStringCount]);
    }
  }

  if ([(VMURangeToStringMap *)self->_sourceInfoRanges count])
  {
    v57 = [VMUDirectedGraph _archivedObject:self->_sourceInfoRanges options:serializationOptions];
    [coderCopy encodeObject:v57 forKey:@"sourceInfoRanges"];

    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[SourceInfo Ranges] Count: %u  Uniqued string count: %u\n\n", [(VMURangeToStringMap *)self->_sourceInfoRanges count], [(VMURangeToStringMap *)self->_sourceInfoRanges uniquedStringCount]);
    }
  }

  if (self->super._regionTracker)
  {
    v58 = self->_debugTimer;
    if (v58)
    {
      signpostID13 = [(VMUDebugTimer *)v58 signpostID];
      v58 = self->_debugTimer;
      if (signpostID13)
      {
        logHandle9 = [(VMUDebugTimer *)v58 logHandle];
        signpostID14 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v62 = signpostID14;
          if (os_signpost_enabled(logHandle9))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle9, OS_SIGNPOST_INTERVAL_END, v62, "VMUGraphStackLogReader", "", buf, 2u);
          }
        }

        v58 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v58 endEvent:"VMUGraphStackLogReader"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUGraphStackLogReader" message:"archiving VM regionTracker"];
    v63 = self->_debugTimer;
    if (v63)
    {
      logHandle10 = [(VMUDebugTimer *)v63 logHandle];
      signpostID15 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v66 = signpostID15;
        if (os_signpost_enabled(logHandle10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle10, OS_SIGNPOST_INTERVAL_BEGIN, v66, "VMUGraphStackLogReader", "archiving VM regionTracker", buf, 2u);
        }
      }
    }

    v67 = [VMUDirectedGraph _archivedObject:self->super._regionTracker options:serializationOptions];
    [coderCopy encodeObject:v67 forKey:@"vmRegionTracker"];

    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[VM Region Tracker] Region count: %u\n\n", [(VMUVMRegionTracker *)self->super._regionTracker regionCount]);
    }
  }

  [coderCopy encodeBool:self->super._coldestFrameIsNotThreadId forKey:@"coldestFrameIsNotThreadId"];
  [coderCopy encodeInt64:self->_maxTimestampDelta forKey:@"maxTimestampDelta"];
  [coderCopy encodeInt64:self->_mslRecordsCount forKey:@"mslRecordsCount"];
  v68 = self->_debugTimer;
  if (v68)
  {
    signpostID16 = [(VMUDebugTimer *)v68 signpostID];
    v68 = self->_debugTimer;
    if (signpostID16)
    {
      logHandle11 = [(VMUDebugTimer *)v68 logHandle];
      signpostID17 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID17 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v72 = signpostID17;
        if (os_signpost_enabled(logHandle11))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle11, OS_SIGNPOST_INTERVAL_END, v72, "VMUGraphStackLogReader", "", buf, 2u);
        }
      }

      v68 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v68 endEvent:"VMUGraphStackLogReader"];
}

- (VMUGraphStackLogReader)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (kVMUPrintArchivingTiming == 1)
  {
    fwrite("[Stack Log Reader] \n\n", 0x15uLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  v5 = [(VMUGraphStackLogReader *)self init];
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classVersion"];
  unsignedIntValue = [v6 unsignedIntValue];

  if (unsignedIntValue != 1)
  {
LABEL_56:
    v50 = 0;
    goto LABEL_57;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backtraceUniquingTableContents"];
  if (v8)
  {
    debugTimer = v5->_debugTimer;
    if (debugTimer)
    {
      signpostID = [(VMUDebugTimer *)debugTimer signpostID];
      debugTimer = v5->_debugTimer;
      if (signpostID)
      {
        logHandle = [(VMUDebugTimer *)debugTimer logHandle];
        signpostID2 = [(VMUDebugTimer *)v5->_debugTimer signpostID];
        if ((signpostID2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v13 = signpostID2;
          if (os_signpost_enabled(logHandle))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, v13, "VMUGraphStackLogReader", "", buf, 2u);
          }
        }

        debugTimer = v5->_debugTimer;
      }
    }

    [(VMUDebugTimer *)debugTimer endEvent:"VMUGraphStackLogReader"];
    [(VMUDebugTimer *)v5->_debugTimer startWithCategory:"VMUGraphStackLogReader" message:"archiving backtrace uniquing table"];
    v14 = v5->_debugTimer;
    if (v14)
    {
      logHandle2 = [(VMUDebugTimer *)v14 logHandle];
      signpostID3 = [(VMUDebugTimer *)v5->_debugTimer signpostID];
      if ((signpostID3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = signpostID3;
        if (os_signpost_enabled(logHandle2))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VMUGraphStackLogReader", "archiving backtrace uniquing table", buf, 2u);
        }
      }
    }

    v18 = [coderCopy decodeInt32ForKey:@"backtraceUniquingTableFlags"];
    v19 = [coderCopy decodeInt64ForKey:@"backtraceUniquingTableSize"];
    *buf = 0;
    v20 = [VMUDirectedGraph _copyUnarchived:v8 length:buf options:1];
    if (v19 != *buf)
    {
      [VMUGraphStackLogReader initWithCoder:];
    }

    backtrace_uniquing_table_from_archive = vmu_create_backtrace_uniquing_table_from_archive(v19, v18, v20);
    v5->_backtraceUniquingTable = backtrace_uniquing_table_from_archive;
    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Stack Log Reader - backtraceUniquingTableContents] %llu bytes\n\n", *(backtrace_uniquing_table_from_archive + 3));
    }

    v22 = v5->_debugTimer;
    if (v22)
    {
      signpostID4 = [(VMUDebugTimer *)v22 signpostID];
      v22 = v5->_debugTimer;
      if (signpostID4)
      {
        logHandle3 = [(VMUDebugTimer *)v22 logHandle];
        signpostID5 = [(VMUDebugTimer *)v5->_debugTimer signpostID];
        if ((signpostID5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = signpostID5;
          if (os_signpost_enabled(logHandle3))
          {
            *v52 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, v26, "VMUGraphStackLogReader", "", v52, 2u);
          }
        }

        v22 = v5->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v22 endEvent:"VMUGraphStackLogReader"];
  }

  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalUniquingTableContents"];

  if (v27)
  {
    *buf = 0;
    v28 = [VMUDirectedGraph _copyUnarchived:v27 length:buf options:1];
    if (v28)
    {
      v29 = v28;
      v5->_originalUniquingTable = msl_uniquing_table_copy_from_serialized();
      free(v29);
      if (kVMUPrintArchivingTiming == 1)
      {
        fwrite("[Stack Log Reader - originalUniquingTableContents] \n\n", 0x35uLL, 1uLL, *MEMORY[0x1E69E9848]);
      }
    }
  }

  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nodeToStackIdTable"];

  if (v30)
  {
    *buf = 0;
    v5->_nodeToStackIndexTable = [VMUDirectedGraph _copyUnarchived:v30 length:buf options:1];
    v31 = *buf;
    v32 = *buf >> 2;
    v5->_nodeNamespaceSize = *buf >> 2;
    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Stack Log Reader - nodeToStackIndexTable] nodeNamespaceSize %u  %lu bytes\n\n", v32, v31);
    }
  }

  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nodeToTimestampTable"];

  if (v33)
  {
    *buf = 0;
    v5->_nodeToTimestampTable = [VMUDirectedGraph _copyUnarchived:v33 length:buf options:1];
    v34 = *buf;
    v35 = *buf >> 3;
    v5->_nodeNamespaceSize = *buf >> 3;
    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Stack Log Reader - nodeToTimestampTable] nodeNamespaceSize %u  %lu bytes\n\n", v35, v34);
    }
  }

  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nodeToMSLPayloadTable"];

  if (v36)
  {
    *buf = 0;
    v5->_nodeToMSLPayloadTable = [VMUDirectedGraph _copyUnarchived:v36 length:buf options:1];
    v37 = *buf;
    v38 = *buf >> 3;
    v5->_nodeNamespaceSize = *buf >> 3;
    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Stack Log Reader - nodeToMSLPayloadTable] nodeNamespaceSize %u  %lu bytes\n\n", v38, v37);
    }
  }

  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"functionNameRanges"];

  if (v39)
  {
    v40 = [VMUDirectedGraph _unarchivedObject:v39 ofClass:objc_opt_class() options:1];
    functionNameRanges = v5->_functionNameRanges;
    v5->_functionNameRanges = v40;

    v42 = v5->_functionNameRanges;
    if (!v42)
    {
LABEL_55:

      goto LABEL_56;
    }

    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Stack Log Reader - Function Name Ranges] Count: %u  Uniqued string count: %u\n\n", [(VMURangeToStringMap *)v42 count], [(VMURangeToStringMap *)v5->_functionNameRanges uniquedStringCount]);
    }
  }

  v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceInfoRanges"];

  if (!v43)
  {
    goto LABEL_48;
  }

  v44 = [VMUDirectedGraph _unarchivedObject:v43 ofClass:objc_opt_class() options:1];
  sourceInfoRanges = v5->_sourceInfoRanges;
  v5->_sourceInfoRanges = v44;

  v46 = v5->_sourceInfoRanges;
  if (!v46)
  {
    v39 = v43;
    goto LABEL_55;
  }

  if (kVMUPrintArchivingTiming == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "[Stack Log Reader - SourceInfo Ranges] Count: %u  Uniqued string count: %u\n\n", [(VMURangeToStringMap *)v46 count], [(VMURangeToStringMap *)v5->_sourceInfoRanges uniquedStringCount]);
  }

LABEL_48:
  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vmRegionTracker"];

  if (v39)
  {
    v47 = [VMUDirectedGraph _unarchivedObject:v39 ofClass:objc_opt_class() options:1];
    regionTracker = v5->super._regionTracker;
    v5->super._regionTracker = v47;

    v49 = v5->super._regionTracker;
    if (v49)
    {
      if (kVMUPrintArchivingTiming == 1)
      {
        fprintf(*MEMORY[0x1E69E9848], "[Stack Log Reader - VM Region Tracker] Region count: %u\n\n", [(VMUVMRegionTracker *)v49 regionCount]);
      }

      goto LABEL_52;
    }

    goto LABEL_55;
  }

LABEL_52:
  v5->super._coldestFrameIsNotThreadId = [coderCopy decodeBoolForKey:@"coldestFrameIsNotThreadId"];
  v5->_maxTimestampDelta = [coderCopy decodeInt64ForKey:@"maxTimestampDelta"];
  v5->_mslRecordsCount = [coderCopy decodeInt64ForKey:@"mslRecordsCount"];

LABEL_53:
  v50 = v5;
LABEL_57:

  return v50;
}

- (BOOL)copyOriginalUniquingTable:(id)table
{
  tableCopy = table;
  if (!tableCopy)
  {
    [VMUGraphStackLogReader copyOriginalUniquingTable:];
  }

  v5 = tableCopy;
  task = self->super._task;
  v7 = msl_uniquing_table_copy_from_task();
  self->_originalUniquingTable = v7;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_graph);
    self->_nodeNamespaceSize = [WeakRetained nodeNamespaceSize];

    v9 = objc_loadWeakRetained(&self->_graph);
    self->_nodeToMSLPayloadTable = malloc_type_malloc(8 * [v9 nodeNamespaceSize], 0x100004000313F17uLL);

    nodeToMSLPayloadTable = self->_nodeToMSLPayloadTable;
    v11 = objc_loadWeakRetained(&self->_graph);
    memset(nodeToMSLPayloadTable, 255, 8 * [v11 nodeNamespaceSize]);

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
          v16 = signpostID2;
          if (os_signpost_enabled(logHandle))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, v16, "VMUGraphStackLogReader", "", buf, 2u);
          }
        }

        debugTimer = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)debugTimer endEvent:"VMUGraphStackLogReader"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUGraphStackLogReader" message:"copyOriginalUniquingTable build map of node --> payload"];
    v17 = self->_debugTimer;
    if (v17)
    {
      logHandle2 = [(VMUDebugTimer *)v17 logHandle];
      signpostID3 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = signpostID3;
        if (os_signpost_enabled(logHandle2))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, v20, "VMUGraphStackLogReader", "copyOriginalUniquingTable build map of node --> payload", buf, 2u);
        }
      }
    }

    if (self->super._usesLiteMode)
    {
      v21 = objc_loadWeakRetained(&self->_graph);
      v22 = VMULiteZoneIndex(v21);

      v23 = objc_loadWeakRetained(&self->_graph);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __52__VMUGraphStackLogReader_copyOriginalUniquingTable___block_invoke;
      v31[3] = &unk_1E8279640;
      v31[4] = self;
      v33 = v22;
      v32 = v5;
      VMUEnumerateVMAnnotatedMallocObjectsWithBlock(v23, v31);
    }

    self->_mslRecordsCount = 0;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __52__VMUGraphStackLogReader_copyOriginalUniquingTable___block_invoke_2;
    v30[3] = &unk_1E8278088;
    v30[4] = self;
    [v5 enumerateMSLRecordsAndPayloads:v30];
    v24 = self->_debugTimer;
    if (v24)
    {
      signpostID4 = [(VMUDebugTimer *)v24 signpostID];
      v24 = self->_debugTimer;
      if (signpostID4)
      {
        logHandle3 = [(VMUDebugTimer *)v24 logHandle];
        signpostID5 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v28 = signpostID5;
          if (os_signpost_enabled(logHandle3))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, v28, "VMUGraphStackLogReader", "", buf, 2u);
          }
        }

        v24 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v24 endEvent:"VMUGraphStackLogReader"];
  }

  return v7 != 0;
}

void __52__VMUGraphStackLogReader_copyOriginalUniquingTable___block_invoke(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, BOOL *a5)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  *a5 = [WeakRetained nodeNamespaceSize] <= a2;

  if (*a5)
  {
    return;
  }

  v11 = [*(*(a1 + 32) + 8) rangeIsInSharedCache:{*(a4 + 8), *(a4 + 16)}];
  v12 = a3[1];
  if (v12 >> 60 != 1)
  {
    if ((v12 >> 60 != 5) | v11 & 1)
    {
      return;
    }
  }

  if (*(*(a1 + 32) + 56) != 1)
  {
    goto LABEL_9;
  }

  if (*(a4 + 148) != *(a1 + 48))
  {
    if (VMUGraphNodeType_IsVMRegion(v12 >> 60))
    {
      invalid = [*(a1 + 40) liteMSLPayloadforVMregionAddress:*a3];
      goto LABEL_10;
    }

LABEL_9:
    invalid = msl_payload_get_invalid();
    goto LABEL_10;
  }

  invalid = [*(a1 + 40) liteMSLPayloadforMallocAddress:*a3 size:v12 & 0xFFFFFFFFFFFFFFFLL];
LABEL_10:
  *(*(*(a1 + 32) + 128) + 8 * a2) = invalid;
  allocation_timestamp = msl_payload_get_allocation_timestamp();
  v15 = *(a1 + 32);
  v16 = *(v15 + 168);
  if (allocation_timestamp > v16)
  {
    v16 = allocation_timestamp;
  }

  *(v15 + 168) = v16;
}

unint64_t __52__VMUGraphStackLogReader_copyOriginalUniquingTable___block_invoke_2(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  ++*(*(result + 32) + 176);
  if ((a2 & 0x12) != 0)
  {
    v10 = *(result + 32);
    if ((*(v10 + 56) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((v10 + 80));
      v12 = [WeakRetained nodeForAddress:a3];

      if (v12 != -1)
      {
        v13 = objc_loadWeakRetained((*(v9 + 32) + 80));
        if (v12 >= [v13 nodeNamespaceSize])
        {
          __52__VMUGraphStackLogReader_copyOriginalUniquingTable___block_invoke_2_cold_1();
        }

        *(*(*(v9 + 32) + 128) + 8 * v12) = a5;
      }

      result = msl_payload_get_allocation_timestamp();
      v14 = *(v9 + 32);
      v15 = *(v14 + 168);
      if (result > v15)
      {
        v15 = result;
      }

      *(v14 + 168) = v15;
    }
  }

  if ((a2 & 0x30) != 0)
  {
    uniquing_table_index = msl_payload_get_uniquing_table_index();
    v17 = *(*(v9 + 32) + 24);

    return [v17 handleStackLogType:a2 address:a3 size:a4 stackID:uniquing_table_index];
  }

  return result;
}

- (BOOL)populateBacktraceUniquingTableWithCore:(id)core zones:(_VMUZoneNode *)zones zonesCount:(unsigned int)count
{
  LODWORD(v5) = count;
  v48[15] = *MEMORY[0x1E69E9840];
  coreCopy = core;
  self->_backtraceUniquingTable = vmu_create_backtrace_uniquing_table(0, 4);
  WeakRetained = objc_loadWeakRetained(&self->_graph);
  nodeNamespaceSize = [WeakRetained nodeNamespaceSize];

  self->_nodeNamespaceSize = nodeNamespaceSize;
  v11 = malloc_type_malloc(4 * nodeNamespaceSize, 0x100004052888210uLL);
  self->_nodeToStackIndexTable = v11;
  __pattern4 = -1;
  memset_pattern4(v11, &__pattern4, 4 * nodeNamespaceSize);
  v46 = 0;
  opaque_1 = self->super._symbolicator._opaque_1;
  opaque_2 = self->super._symbolicator._opaque_2;
  CSSymbolicatorGetAOutSymbolOwner();
  CSSymbolOwnerGetSymbolWithName();
  Range = CSSymbolGetRange();
  [coreCopy peekAtAddress:Range size:v15 returnsBuf:&v46];
  v16 = self->super._symbolicator._opaque_1;
  v17 = self->super._symbolicator._opaque_2;
  CSSymbolicatorGetAOutSymbolOwner();
  BaseAddress = CSSymbolOwnerGetBaseAddress();
  if (v5)
  {
    v19 = BaseAddress;
    v20 = 0;
    v41 = 0;
    v5 = v5;
    v39 = v5;
    zonesCopy = zones;
    while (1)
    {
      v45 = 0;
      [coreCopy peekAtAddress:zones[v20].var0 size:256 returnsBuf:&v45];
      if (!*v45)
      {
        goto LABEL_25;
      }

      v21 = v45[24];
      if (!v21)
      {
        goto LABEL_25;
      }

      v44 = 0;
      [coreCopy peekAtAddress:v21 size:32 returnsBuf:&v44];
      v22 = *v44;
      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        v43 = 0;
        [coreCopy peekAtAddress:v45[24] + 36 size:12 * *(v44 + 1) returnsBuf:&v43];
        v23 = v44;
        if (*(v44 + 1))
        {
          v24 = 0;
          v25 = 0;
          do
          {
            if (*(v43 + v24))
            {
              v26 = btref_decode_unslide(coreCopy, *(v43 + v24 + 8) & 0xFFFFFFC0, v48, v46, v19);
              if (v26)
              {
                v42 = 0;
                vmu_enter_stack_in_backtrace_uniquing_table(self->_backtraceUniquingTable, &v42, v48, v26, v27);
                v28 = objc_loadWeakRetained(&self->_graph);
                v29 = [v28 nodeForAddress:~*(v43 + v24)];

                if (v29 != -1)
                {
                  self->_nodeToStackIndexTable[v29] = v42;
                  v41 = 1;
                }
              }

              v23 = v44;
            }

            ++v25;
            v24 += 12;
          }

          while (v25 < *(v23 + 1));
        }

LABEL_24:
        v5 = v39;
        zones = zonesCopy;
      }

LABEL_25:
      if (++v20 == v5)
      {
        goto LABEL_28;
      }
    }

    v43 = 0;
    [coreCopy peekAtAddress:v45[24] + 48 size:16 * *(v44 + 1) returnsBuf:&v43];
    v30 = v44;
    if (*(v44 + 1))
    {
      v31 = 0;
      v32 = 0;
      do
      {
        if (*(v43 + v31))
        {
          v33 = btref_decode_unslide(coreCopy, *(v43 + v31 + 12) & 0xFFFFFFC0, v48, v46, v19);
          if (v33)
          {
            v42 = 0;
            vmu_enter_stack_in_backtrace_uniquing_table(self->_backtraceUniquingTable, &v42, v48, v33, v34);
            v35 = objc_loadWeakRetained(&self->_graph);
            v36 = [v35 nodeForAddress:~*(v43 + v31)];

            if (v36 != -1)
            {
              self->_nodeToStackIndexTable[v36] = v42;
              v41 = 1;
            }
          }

          v30 = v44;
        }

        ++v32;
        v31 += 16;
      }

      while (v32 < *(v30 + 1));
    }

    goto LABEL_24;
  }

  v41 = 0;
LABEL_28:

  v37 = *MEMORY[0x1E69E9840];
  return v41 & 1;
}

- (void)populateBacktraceUniquingTableWithStackLogs:(id)logs
{
  v3 = (MEMORY[0x1EEE9AC00])(self, a2, logs);
  v113 = *MEMORY[0x1E69E9840];
  v5 = v4;
  if (!v5)
  {
    [VMUGraphStackLogReader populateBacktraceUniquingTableWithStackLogs:];
  }

  v6 = v5;
  v7 = 0x100004000313F17;
  *(v3 + 136) = vmu_create_backtrace_uniquing_table(0, 4);
  WeakRetained = objc_loadWeakRetained((v3 + 80));
  nodeNamespaceSize = [WeakRetained nodeNamespaceSize];

  v9 = objc_loadWeakRetained((v3 + 80));
  *(v3 + 120) = malloc_type_malloc(8 * [v9 nodeNamespaceSize], 0x100004000313F17uLL);

  v10 = *(v3 + 120);
  v11 = objc_loadWeakRetained((v3 + 80));
  memset(v10, 255, 8 * [v11 nodeNamespaceSize]);

  v12 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:259];
  v13 = *(v3 + 96);
  if (v13)
  {
    signpostID = [v13 signpostID];
    v13 = *(v3 + 96);
    if (signpostID)
    {
      logHandle = [v13 logHandle];
      signpostID2 = [*(v3 + 96) signpostID];
      if ((signpostID2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = signpostID2;
        if (os_signpost_enabled(logHandle))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, v17, "VMUGraphStackLogReader", "", buf, 2u);
        }
      }

      v13 = *(v3 + 96);
    }
  }

  [v13 endEvent:"VMUGraphStackLogReader"];
  [*(v3 + 96) startWithCategory:"VMUGraphStackLogReader" message:{"populateUniquingTable build map of address --> {nodeIndex, stackID}"}];
  v18 = *(v3 + 96);
  if (v18)
  {
    logHandle2 = [v18 logHandle];
    signpostID3 = [*(v3 + 96) signpostID];
    if ((signpostID3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = signpostID3;
      if (os_signpost_enabled(logHandle2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, v21, "VMUGraphStackLogReader", "populateUniquingTable build map of address --> {nodeIndex,stackID}", buf, 2u);
      }
    }
  }

  v22 = objc_loadWeakRetained((v3 + 80));
  v23 = VMULiteZoneIndex(v22);

  v24 = objc_loadWeakRetained((v3 + 80));
  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __70__VMUGraphStackLogReader_populateBacktraceUniquingTableWithStackLogs___block_invoke;
  v107[3] = &unk_1E8279668;
  v107[4] = v3;
  v110 = v23;
  v25 = v6;
  v108 = v25;
  v26 = v12;
  v109 = v26;
  v111 = nodeNamespaceSize;
  VMUEnumerateVMAnnotatedMallocObjectsWithBlock(v24, v107);

  v27 = *(v3 + 96);
  if (v27)
  {
    signpostID4 = [v27 signpostID];
    v27 = *(v3 + 96);
    if (signpostID4)
    {
      logHandle3 = [v27 logHandle];
      signpostID5 = [*(v3 + 96) signpostID];
      if ((signpostID5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v31 = signpostID5;
        if (os_signpost_enabled(logHandle3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, v31, "VMUGraphStackLogReader", "", buf, 2u);
        }
      }

      v27 = *(v3 + 96);
    }
  }

  [v27 endEvent:"VMUGraphStackLogReader"];
  [*(v3 + 96) startWithCategory:"VMUGraphStackLogReader" message:"populateUniquingTable read stack log records"];
  v32 = *(v3 + 96);
  if (v32)
  {
    logHandle4 = [v32 logHandle];
    signpostID6 = [*(v3 + 96) signpostID];
    if ((signpostID6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v35 = signpostID6;
      if (os_signpost_enabled(logHandle4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_BEGIN, v35, "VMUGraphStackLogReader", "populateUniquingTable read stack log records", buf, 2u);
      }
    }
  }

  *(v3 + 176) = 0;
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __70__VMUGraphStackLogReader_populateBacktraceUniquingTableWithStackLogs___block_invoke_84;
  v105[3] = &unk_1E8279690;
  v105[4] = v3;
  v36 = v26;
  v106 = v36;
  [v25 enumerateMSLRecordsAndPayloads:v105];
  v37 = *(v3 + 96);
  if (v37)
  {
    signpostID7 = [v37 signpostID];
    v37 = *(v3 + 96);
    if (signpostID7)
    {
      logHandle5 = [v37 logHandle];
      signpostID8 = [*(v3 + 96) signpostID];
      if ((signpostID8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v41 = signpostID8;
        if (os_signpost_enabled(logHandle5))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_END, v41, "VMUGraphStackLogReader", "", buf, 2u);
        }
      }

      v37 = *(v3 + 96);
    }
  }

  [v37 endEvent:"VMUGraphStackLogReader"];
  [*(v3 + 96) startWithCategory:"VMUGraphStackLogReader" message:"populateUniquingTable invert map table to create oldStackId --> nodeIndex map"];
  v42 = *(v3 + 96);
  if (v42)
  {
    logHandle6 = [v42 logHandle];
    signpostID9 = [*(v3 + 96) signpostID];
    if ((signpostID9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v45 = signpostID9;
      if (os_signpost_enabled(logHandle6))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle6, OS_SIGNPOST_INTERVAL_BEGIN, v45, "VMUGraphStackLogReader", "populateUniquingTable invert map table to create oldStackId --> nodeIndex map", buf, 2u);
      }
    }
  }

  v46 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:259];
  memset(&enumerator, 0, sizeof(enumerator));
  v92 = v36;
  NSEnumerateMapTable(&enumerator, v36);
  value = 0;
  while (NSNextMapEnumeratorPair(&enumerator, 0, &value))
  {
    v47 = *(value + 1);
    v48 = NSMapGet(v46, v47);
    if (v47 != -1)
    {
      v49 = v48;
      if (v48)
      {
        v50 = *v48;
        if (v50 == v48[1])
        {
          v51 = 4 * v50 + 6;
          v52 = v51 & 0x3FFFFFFE;
          v53 = v7;
          v54 = malloc_type_malloc((4 * v51) + 8, v7);
          memcpy(v54, v49, 4 * v50 + 8);
          v54[1] = v52;
          NSMapInsert(v46, v47, v54);
          v49 = v54;
          v7 = v53;
        }
      }

      else
      {
        v49 = malloc_type_malloc(0x20uLL, v7);
        *v49 = 0x600000000;
        NSMapInsertKnownAbsent(v46, v47, v49);
      }

      v55 = *v49;
      *(v49 + v55 + 2) = *value;
      *v49 = v55 + 1;
    }
  }

  NSEndMapTableEnumeration(&enumerator);

  v56 = *(v3 + 96);
  if (v56)
  {
    signpostID10 = [v56 signpostID];
    v56 = *(v3 + 96);
    if (signpostID10)
    {
      logHandle7 = [v56 logHandle];
      signpostID11 = [*(v3 + 96) signpostID];
      if ((signpostID11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v60 = signpostID11;
        if (os_signpost_enabled(logHandle7))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle7, OS_SIGNPOST_INTERVAL_END, v60, "VMUGraphStackLogReader", "", buf, 2u);
        }
      }

      v56 = *(v3 + 96);
    }
  }

  [v56 endEvent:"VMUGraphStackLogReader"];
  [*(v3 + 96) startWithCategory:"VMUGraphStackLogReader" message:"populateUniquingTable get backtraces from libmalloc into our backtrace uniquing table"];
  v61 = *(v3 + 96);
  if (v61)
  {
    logHandle8 = [v61 logHandle];
    signpostID12 = [*(v3 + 96) signpostID];
    if ((signpostID12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v64 = signpostID12;
      if (os_signpost_enabled(logHandle8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle8, OS_SIGNPOST_INTERVAL_BEGIN, v64, "VMUGraphStackLogReader", "populateUniquingTable get backtraces from libmalloc into our backtrace uniquing table", buf, 2u);
      }
    }
  }

  *(v3 + 104) = nodeNamespaceSize;
  v65 = malloc_type_malloc(4 * nodeNamespaceSize, 0x100004052888210uLL);
  *(v3 + 112) = v65;
  __pattern4 = -1;
  memset_pattern4(v65, &__pattern4, 4 * nodeNamespaceSize);
  memset(&v101, 0, sizeof(v101));
  NSEnumerateMapTable(&v101, v46);
  v99 = 0;
  key = 0;
  while (NSNextMapEnumeratorPair(&v101, &key, &v99))
  {
    v66 = [v25 getFramesForStackID:key stackFramesBuffer:buf];
    if (v66)
    {
      v98 = 0;
      vmu_enter_stack_in_backtrace_uniquing_table(*(v3 + 136), &v98, buf, v66, v67);
      v68 = v99;
      if (*v99)
      {
        v69 = v98;
        v70 = *(v3 + 112);
        v71 = 2;
        do
        {
          *(v70 + 4 * v68[v71]) = v69;
          v72 = v71++ - 1;
        }

        while (v72 < *v68);
      }
    }
  }

  NSEndMapTableEnumeration(&v101);
  v73 = *(v3 + 96);
  if (v73)
  {
    signpostID13 = [v73 signpostID];
    v73 = *(v3 + 96);
    if (signpostID13)
    {
      logHandle9 = [v73 logHandle];
      signpostID14 = [*(v3 + 96) signpostID];
      if ((signpostID14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v77 = signpostID14;
        if (os_signpost_enabled(logHandle9))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle9, OS_SIGNPOST_INTERVAL_END, v77, "VMUGraphStackLogReader", "", buf, 2u);
        }
      }

      v73 = *(v3 + 96);
    }
  }

  [v73 endEvent:"VMUGraphStackLogReader"];
  [*(v3 + 96) startWithCategory:"VMUGraphStackLogReader" message:"populateUniquingTable convert VM region tracker's from old to new stackIDs"];
  v78 = *(v3 + 96);
  if (v78)
  {
    logHandle10 = [v78 logHandle];
    signpostID15 = [*(v3 + 96) signpostID];
    if ((signpostID15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v81 = signpostID15;
      if (os_signpost_enabled(logHandle10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle10, OS_SIGNPOST_INTERVAL_BEGIN, v81, "VMUGraphStackLogReader", "populateUniquingTable convert VM region tracker's from old to new stackIDs", buf, 2u);
      }
    }
  }

  v82 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:1282];
  v83 = *(v3 + 24);
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __70__VMUGraphStackLogReader_populateBacktraceUniquingTableWithStackLogs___block_invoke_88;
  v94[3] = &unk_1E82796B8;
  v84 = v82;
  v95 = v84;
  v85 = v25;
  v96 = v85;
  v97 = v3;
  [v83 convertStackIDs:v94];
  v86 = *(v3 + 96);
  if (v86)
  {
    signpostID16 = [v86 signpostID];
    v86 = *(v3 + 96);
    if (signpostID16)
    {
      logHandle11 = [v86 logHandle];
      signpostID17 = [*(v3 + 96) signpostID];
      if ((signpostID17 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v90 = signpostID17;
        if (os_signpost_enabled(logHandle11))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle11, OS_SIGNPOST_INTERVAL_END, v90, "VMUGraphStackLogReader", "", buf, 2u);
        }
      }

      v86 = *(v3 + 96);
    }
  }

  [v86 endEvent:"VMUGraphStackLogReader"];

  v91 = *MEMORY[0x1E69E9840];
}

void __70__VMUGraphStackLogReader_populateBacktraceUniquingTableWithStackLogs___block_invoke(uint64_t a1, unsigned int a2, const void **a3, uint64_t a4, BOOL *a5)
{
  v10 = [*(*(a1 + 32) + 8) rangeIsInSharedCache:{*(a4 + 8), *(a4 + 16)}];
  v11 = a3[1];
  if (v11 >> 60 == 1 || !((v11 >> 60 != 5) | v10 & 1))
  {
    if (*(*(a1 + 32) + 56) != 1)
    {
      goto LABEL_13;
    }

    if (*(a4 + 148) == *(a1 + 56))
    {
      [*(a1 + 40) liteMSLPayloadforMallocAddress:*a3 size:v11 & 0xFFFFFFFFFFFFFFFLL];
      uniquing_table_index = msl_payload_get_uniquing_table_index();
      allocation_timestamp = msl_payload_get_allocation_timestamp();
      *(*(*(a1 + 32) + 120) + 8 * a2) = allocation_timestamp;
      v14 = *(a1 + 32);
      v15 = *(v14 + 168);
      if (allocation_timestamp > v15)
      {
        v15 = allocation_timestamp;
      }

      *(v14 + 168) = v15;
      if (uniquing_table_index == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (VMUGraphNodeType_IsVMRegion(v11 >> 60))
    {
      [*(a1 + 40) liteMSLPayloadforVMregionAddress:*a3];
      uniquing_table_index = msl_payload_get_uniquing_table_index();
      v16 = msl_payload_get_allocation_timestamp();
      *(*(*(a1 + 32) + 120) + 8 * a2) = v16;
      v17 = *(a1 + 32);
      v18 = *(v17 + 168);
      if (v16 > v18)
      {
        v18 = v16;
      }

      *(v17 + 168) = v18;
    }

    else
    {
LABEL_13:
      uniquing_table_index = -1;
    }

LABEL_14:
    v19 = malloc_type_malloc(0x10uLL, 0x1000040F7F8B94BuLL);
    *v19 = a2;
    v19[1] = uniquing_table_index;
    NSMapInsert(*(a1 + 48), *a3, v19);
LABEL_15:
    *a5 = *(a1 + 60) <= a2;
  }
}

void __70__VMUGraphStackLogReader_populateBacktraceUniquingTableWithStackLogs___block_invoke_84(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  ++*(*(a1 + 32) + 176);
  uniquing_table_index = msl_payload_get_uniquing_table_index();
  if ((a2 & 0x12) != 0 && (*(*(a1 + 32) + 56) & 1) == 0)
  {
    v9 = NSMapGet(*(a1 + 40), a3);
    if (v9)
    {
      v9[1] = uniquing_table_index;
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
      v11 = [WeakRetained nodeForAddress:a3];

      if (v11 != -1)
      {
        v12 = objc_loadWeakRetained((*(a1 + 32) + 80));
        if (v11 >= [v12 nodeNamespaceSize])
        {
          __70__VMUGraphStackLogReader_populateBacktraceUniquingTableWithStackLogs___block_invoke_84_cold_1();
        }

        allocation_timestamp = msl_payload_get_allocation_timestamp();
        *(*(*(a1 + 32) + 120) + 8 * v11) = allocation_timestamp;
        v14 = *(a1 + 32);
        v15 = *(v14 + 168);
        if (allocation_timestamp > v15)
        {
          v15 = allocation_timestamp;
        }

        *(v14 + 168) = v15;
      }
    }
  }

  if ((a2 & 0x30) != 0)
  {
    v16 = *(*(a1 + 32) + 24);

    [v16 handleStackLogType:a2 address:a3 size:a4 stackID:uniquing_table_index];
  }
}

char *__70__VMUGraphStackLogReader_populateBacktraceUniquingTableWithStackLogs___block_invoke_88(uint64_t a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = NSMapGet(*(a1 + 32), a2);
  v5 = v4;
  v10 = v4;
  if (v4)
  {
    v5 = v4 - 1;
  }

  else
  {
    v6 = [*(a1 + 40) getFramesForStackID:a2 stackFramesBuffer:v11];
    if (v6)
    {
      vmu_enter_stack_in_backtrace_uniquing_table(*(*(a1 + 48) + 136), &v10, v11, v6, v7);
      NSMapInsertKnownAbsent(*(a1 + 32), a2, v10 + 1);
      v5 = v10;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)enumerateUniquingTable:(id)table
{
  tableCopy = table;
  v5 = tableCopy;
  backtraceUniquingTable = self->_backtraceUniquingTable;
  if (backtraceUniquingTable)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__VMUGraphStackLogReader_enumerateUniquingTable___block_invoke;
    v7[3] = &unk_1E82796E0;
    v8 = tableCopy;
    vmu_enumerate_backtrace_uniquing_table(backtraceUniquingTable, v7);
  }

  else if (self->_originalUniquingTable)
  {
    msl_uniquing_table_enumerate();
  }
}

- (void)symbolicateBacktraceUniquingTable
{
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
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, v7, "VMUGraphStackLogReader", "", buf, 2u);
        }
      }

      debugTimer = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)debugTimer endEvent:"VMUGraphStackLogReader"];
  [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMUGraphStackLogReader" message:"symbolicateBacktraceUniquingTable"];
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
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VMUGraphStackLogReader", "symbolicateBacktraceUniquingTable", buf, 2u);
      }
    }
  }

  v12 = [MEMORY[0x1E696AC70] hashTableWithOptions:1282];
  v13 = [MEMORY[0x1E696AC70] hashTableWithOptions:1282];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__VMUGraphStackLogReader_symbolicateBacktraceUniquingTable__block_invoke;
  v21[3] = &unk_1E8279708;
  v21[4] = self;
  v14 = v12;
  v22 = v14;
  v15 = v13;
  v23 = v15;
  [(VMUGraphStackLogReader *)self enumerateUniquingTable:v21];
  v16 = self->_debugTimer;
  if (v16)
  {
    signpostID4 = [(VMUDebugTimer *)v16 signpostID];
    v16 = self->_debugTimer;
    if (signpostID4)
    {
      logHandle3 = [(VMUDebugTimer *)v16 logHandle];
      signpostID5 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = signpostID5;
        if (os_signpost_enabled(logHandle3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, v20, "VMUGraphStackLogReader", "", buf, 2u);
        }
      }

      v16 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v16 endEvent:"VMUGraphStackLogReader"];
}

void __59__VMUGraphStackLogReader_symbolicateBacktraceUniquingTable__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v5 = [WeakRetained symbolStore];

  if (v5)
  {
    v6 = objc_loadWeakRetained((*(a1 + 32) + 80));
    v7 = [v6 symbolStore];
    [v7 addAddress:a2 origin:3];
  }

  v8 = *(*(a1 + 32) + 64);
  v9 = *(*(a1 + 32) + 72);
  CSSymbolicatorGetSymbolWithAddressAtTime();
  if ((CSIsNull() & 1) == 0)
  {
    Range = CSSymbolGetRange();
    v12 = v11;
    if (!NSHashGet(*(a1 + 40), Range))
    {
      NSHashInsert(*(a1 + 40), Range);
      Name = CSSymbolGetName();
      if (Name)
      {
        v14 = *(a1 + 32);
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
        [v14 _setFunctionName:v15 forPCAddressRange:{Range, v12}];
      }
    }
  }

  v16 = *(*(a1 + 32) + 64);
  v17 = *(*(a1 + 32) + 72);
  CSSymbolicatorGetSourceInfoWithAddressAtTime();
  if ((CSIsNull() & 1) == 0)
  {
    v18 = CSSourceInfoGetRange();
    v20 = v19;
    if (!NSHashGet(*(a1 + 48), v18))
    {
      NSHashInsert(*(a1 + 48), v18);
      Path = CSSourceInfoGetPath();
      LineNumber = CSSourceInfoGetLineNumber();
      v23 = *(a1 + 32);
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Path];
      [v23 _setSourcePath:v24 lineNumber:LineNumber forPCAddressRange:{v18, v20}];
    }
  }
}

- (id)binaryImagePathForPCaddress:(unint64_t)caddress
{
  v3 = [(VMUGraphStackLogReader *)self vmuVMRegionForAddress:caddress];
  v4 = v3;
  if (v3)
  {
    path = [v3 path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (_VMURange)binaryImageRangeForPCaddress:(unint64_t)caddress
{
  v3 = [(VMUGraphStackLogReader *)self vmuVMRegionForAddress:caddress];
  v4 = v3;
  if (v3)
  {
    range = [v3 range];
    v7 = v6;
  }

  else
  {
    v7 = 0;
    range = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = range;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (id)functionNameForPCaddress:(unint64_t)caddress
{
  p_symbolicator = &self->super._symbolicator;
  opaque_1 = self->super._symbolicator._opaque_1;
  opaque_2 = p_symbolicator->_opaque_2;
  if ((CSIsNull() & 1) != 0 || (v10.receiver = self, v10.super_class = VMUGraphStackLogReader, [(VMUStackLogReaderBase *)&v10 functionNameForPCaddress:caddress], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [(VMURangeToStringMap *)self->_functionNameRanges stringForAddress:caddress];
  }

  return v8;
}

- (_VMURange)functionRangeContainingPCaddress:(unint64_t)caddress
{
  p_symbolicator = &self->super._symbolicator;
  opaque_1 = self->super._symbolicator._opaque_1;
  opaque_2 = p_symbolicator->_opaque_2;
  if ((CSIsNull() & 1) != 0 || (v10.receiver = self, v10.super_class = VMUGraphStackLogReader, v8 = [(VMUStackLogReaderBase *)&v10 functionRangeContainingPCaddress:caddress], v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [(VMURangeToStringMap *)self->_functionNameRanges rangeContainingAddress:caddress];
  }

  result.length = v9;
  result.location = v8;
  return result;
}

- (void)_parseSourceInfoString:(id)string intoComponents:(unsigned int *)components
{
  uTF8String = [string UTF8String];
  v6 = strlen(uTF8String);
  *components = 0;
  if (v6)
  {
    v7 = 0;
    do
    {
      v9 = *uTF8String++;
      v8 = v9;
      if (v9 == 58)
      {
        components[++v7] = 0;
      }

      else
      {
        components[v7] = v8 + 10 * components[v7] - 48;
      }

      --v6;
    }

    while (v6);
  }
}

- (id)sourcePathForPCaddress:(unint64_t)caddress
{
  v17 = *MEMORY[0x1E69E9840];
  p_symbolicator = &self->super._symbolicator;
  opaque_1 = self->super._symbolicator._opaque_1;
  opaque_2 = p_symbolicator->_opaque_2;
  if ((CSIsNull() & 1) != 0 || (v14.receiver = self, v14.super_class = VMUGraphStackLogReader, [(VMUStackLogReaderBase *)&v14 sourcePathForPCaddress:caddress], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [(VMURangeToStringMap *)self->_sourceInfoRanges stringForAddress:caddress];
    if (v9)
    {
      v16 = 0;
      v15 = 0;
      [(VMUGraphStackLogReader *)self _parseSourceInfoString:v9 intoComponents:&v15];
      v10 = [(VMURangeToStringMap *)self->_sourceInfoRanges stringForIndex:v15];
      v11 = [(VMURangeToStringMap *)self->_sourceInfoRanges stringForIndex:HIDWORD(v15)];
      v8 = [v10 stringByAppendingPathComponent:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)sourceFileNameForPCaddress:(unint64_t)caddress
{
  v15 = *MEMORY[0x1E69E9840];
  p_symbolicator = &self->super._symbolicator;
  opaque_1 = self->super._symbolicator._opaque_1;
  opaque_2 = p_symbolicator->_opaque_2;
  if ((CSIsNull() & 1) != 0 || (v12.receiver = self, v12.super_class = VMUGraphStackLogReader, [(VMUStackLogReaderBase *)&v12 sourceFileNameForPCaddress:caddress], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [(VMURangeToStringMap *)self->_sourceInfoRanges stringForAddress:caddress];
    if (v9)
    {
      v14 = 0;
      v13 = 0;
      [(VMUGraphStackLogReader *)self _parseSourceInfoString:v9 intoComponents:&v13];
      v8 = [(VMURangeToStringMap *)self->_sourceInfoRanges stringForIndex:HIDWORD(v13)];
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (unsigned)sourceLineNumberForPCaddress:(unint64_t)caddress
{
  v15 = *MEMORY[0x1E69E9840];
  p_symbolicator = &self->super._symbolicator;
  opaque_1 = self->super._symbolicator._opaque_1;
  opaque_2 = p_symbolicator->_opaque_2;
  if ((CSIsNull() & 1) != 0 || (v12.receiver = self, v12.super_class = VMUGraphStackLogReader, (v8 = [(VMUStackLogReaderBase *)&v12 sourceLineNumberForPCaddress:caddress]) == 0))
  {
    v9 = [(VMURangeToStringMap *)self->_sourceInfoRanges stringForAddress:caddress];
    if (v9)
    {
      v14 = 0;
      v13 = 0;
      [(VMUGraphStackLogReader *)self _parseSourceInfoString:v9 intoComponents:&v13];
      v8 = v14;
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (_VMURange)sourceLineRangeContainingPCaddress:(unint64_t)caddress
{
  p_symbolicator = &self->super._symbolicator;
  opaque_1 = self->super._symbolicator._opaque_1;
  opaque_2 = p_symbolicator->_opaque_2;
  if ((CSIsNull() & 1) != 0 || (v8 = p_symbolicator->_opaque_1, v9 = p_symbolicator->_opaque_2, CSSymbolicatorGetSymbolWithAddressAtTime(), Range = CSSymbolGetRange(), Range == 0x7FFFFFFFFFFFFFFFLL))
  {
    Range = [(VMURangeToStringMap *)self->_sourceInfoRanges rangeContainingAddress:caddress];
  }

  result.length = v11;
  result.location = Range;
  return result;
}

- (BOOL)is64bit
{
  WeakRetained = objc_loadWeakRetained(&self->_graph);
  is64bit = [WeakRetained is64bit];

  return is64bit;
}

- (int)enumerateMSLRecordsAndPayloads:(id)payloads
{
  payloadsCopy = payloads;
  originalUniquingTable = self->_originalUniquingTable;
  if (self->_backtraceUniquingTable)
  {
    if (originalUniquingTable)
    {
      [VMUGraphStackLogReader enumerateMSLRecordsAndPayloads:];
    }
  }

  else
  {
    if (!originalUniquingTable)
    {
      goto LABEL_19;
    }

    diskLogs = self->_diskLogs;
    if (diskLogs)
    {
      [(NSData *)diskLogs bytes];
      [(NSData *)self->_diskLogs length];
      [(VMUGraphStackLogReader *)self is64bit];
      v12 = payloadsCopy;
      msl_disk_stack_logs_enumerate_from_buffer();

      goto LABEL_19;
    }
  }

  if (self->_nodeNamespaceSize)
  {
    for (i = 0; i < self->_nodeNamespaceSize; ++i)
    {
      if (self->_originalUniquingTable)
      {
        v7 = self->_nodeToMSLPayloadTable[i];
        if (!msl_payload_is_invalid())
        {
          goto LABEL_10;
        }
      }

      else if (self->_nodeToStackIndexTable[i] != -1)
      {
        v7 = msl_payload_create_from_index();
LABEL_10:
        WeakRetained = objc_loadWeakRetained(&self->_graph);
        v9 = WeakRetained;
        if (WeakRetained)
        {
          [WeakRetained nodeDetails:i];
        }

        if (VMUGraphNodeType_IsVMRegion(0))
        {
          (*(payloadsCopy + 2))(payloadsCopy, 16, 0, 0, v7);
        }
      }
    }
  }

LABEL_19:

  return 0;
}

uint64_t __57__VMUGraphStackLogReader_enumerateMSLRecordsAndPayloads___block_invoke(uint64_t a1, void *a2)
{
  v2 = *a2;
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[1];
  return (*(*(a1 + 32) + 16))();
}

- (unint64_t)stackIDForNode:(unsigned int)node
{
  if (self->_originalUniquingTable)
  {
    v3 = self->_nodeToMSLPayloadTable[node];
    return msl_payload_get_uniquing_table_index();
  }

  else if (self->_backtraceUniquingTable)
  {
    if (self->_nodeToStackIndexTable[node] == -1)
    {
      return -1;
    }

    else
    {
      return self->_nodeToStackIndexTable[node];
    }
  }

  else
  {
    return -1;
  }
}

- (unint64_t)timestampForNode:(unsigned int)node
{
  nodeToMSLPayloadTable = self->_nodeToMSLPayloadTable;
  if (nodeToMSLPayloadTable)
  {
    v4 = nodeToMSLPayloadTable[node];
    return msl_payload_get_allocation_timestamp();
  }

  else
  {
    nodeToTimestampTable = self->_nodeToTimestampTable;
    if (nodeToTimestampTable)
    {
      return nodeToTimestampTable[node];
    }

    else
    {
      return 0;
    }
  }
}

- (int64_t)getFramesForStackID:(unint64_t)d stackFramesBuffer:(unint64_t *)buffer
{
  if (d > 0xFFFFFFFE)
  {
    return 0;
  }

  if (self->_originalUniquingTable)
  {
    msl_uniquing_table_get_frames_from_table();
    return 0;
  }

  else
  {
    result = self->_backtraceUniquingTable;
    if (result)
    {
      v5 = vmu_stack_frames_for_uniqued_stack(result, d, buffer, 512);
      if (v5 <= 512)
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)vmuVMRegionForAddress:(unint64_t)address
{
  WeakRetained = objc_loadWeakRetained(&self->_graph);
  v5 = [WeakRetained vmuVMRegionForAddress:address];

  return v5;
}

- (unint64_t)nodesInUniquingTable
{
  if (self->_originalUniquingTable)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    msl_uniquing_table_enumerate();
    v2 = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    backtraceUniquingTable = self->_backtraceUniquingTable;
    if (backtraceUniquingTable)
    {
      return backtraceUniquingTable->var7;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

- (VMUProcessObjectGraph)graph
{
  WeakRetained = objc_loadWeakRetained(&self->_graph);

  return WeakRetained;
}

@end