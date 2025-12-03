@interface VMUObjectGraph
- ($61A80719B04F7407D3E47539F1B23CAA)nodeDetails:(VMUObjectGraph *)self;
- (BOOL)_commonHighAddressBit;
- (VMUObjectGraph)initWithArchived:(id)archived version:(int64_t)version options:(unint64_t)options diskLogs:(id)logs error:(id *)error;
- (VMUObjectGraph)initWithNodesNoCopy:(_VMUBlockNode *)copy nodeCount:;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)enumerateMarkedObjects:(void *)objects withBlock:(id)block;
- (unsigned)enumerateObjectsWithBlock:(id)block;
- (unsigned)enumerateReferencesWithBlock:(id)block;
- (unsigned)nodeForAddress:(unint64_t)address;
- (unsigned)scanTypeOfReferenceWithName:(unsigned int)name;
- (void)_compareWithGraph:(id)graph andMarkOnMatch:(BOOL)match;
- (void)_refineTypesWithOverlay:(id)overlay;
- (void)archiveDictionaryRepresentation:(id)representation options:(unint64_t)options;
- (void)dealloc;
- (void)internalizeNodes;
- (void)setIndexedClassInfos:(id)infos;
@end

@implementation VMUObjectGraph

- (VMUObjectGraph)initWithNodesNoCopy:(_VMUBlockNode *)copy nodeCount:
{
  v4 = v3;
  v11.receiver = self;
  v11.super_class = VMUObjectGraph;
  v6 = [(VMUDirectedGraph *)&v11 initWithNodes:?];
  v7 = v6;
  if (v6)
  {
    v6->_internalizedNodes = copy;
    v6->_internalizedCount = v4;
    v8 = objc_opt_new();
    knownClassInfos = v7->_knownClassInfos;
    v7->_knownClassInfos = v8;

    v7->_referenceGraphNodeNamespaceSize = 0;
  }

  return v7;
}

- (void)dealloc
{
  referenceGraph = self->_referenceGraph;
  if (referenceGraph)
  {
    [(VMUObjectGraph *)referenceGraph _modifyDerivativeGraphCount:0xFFFFFFFFLL];
    v4 = self->_referenceGraph;
    self->_referenceGraph = 0;
  }

  referenceTable = self->_referenceTable;
  if (referenceTable)
  {
    free(referenceTable);
    self->_referenceTable = 0;
  }

  referenceTableLarge = self->_referenceTableLarge;
  if (referenceTableLarge)
  {
    free(referenceTableLarge);
    self->_referenceTableLarge = 0;
  }

  internalizedNodes = self->_internalizedNodes;
  if (internalizedNodes)
  {
    free(internalizedNodes);
    self->_internalizedNodes = 0;
  }

  [VMUClassInfoMap _destroyRetainedLinearArray:self->_classInfos withCount:self->_classInfosCount];
  v8.receiver = self;
  v8.super_class = VMUObjectGraph;
  [(VMUDirectedGraph *)&v8 dealloc];
}

- (VMUObjectGraph)initWithArchived:(id)archived version:(int64_t)version options:(unint64_t)options diskLogs:(id)logs error:(id *)error
{
  v140[1] = *MEMORY[0x1E69E9840];
  archivedCopy = archived;
  v130.receiver = self;
  v130.super_class = VMUObjectGraph;
  errorCopy = error;
  logsCopy = logs;
  v14 = [VMUDirectedGraph initWithArchived:sel_initWithArchived_version_options_diskLogs_error_ version:archivedCopy options:version diskLogs:options error:?];
  if (!v14)
  {
    goto LABEL_44;
  }

  v117 = [archivedCopy objectForKeyedSubscript:@"objectGraphInfo"];
  v14->_internalizedCount = [(VMUDirectedGraph *)v14 nodeNamespaceSize];
  graphIs64bit = [(VMUDirectedGraph *)v14 graphIs64bit];
  internalizedCount = v14->_internalizedCount;
  if (internalizedCount < 0xFFFFFFF)
  {
    v17 = 1;
  }

  else
  {
    v17 = graphIs64bit;
  }

  if (v17)
  {
    v14->_internalizedNodes = malloc_type_malloc(16 * internalizedCount, 0x1000040451B5BE8uLL);
    v129 = 0;
    v18 = [v117 objectForKeyedSubscript:@"objectDetails"];
    v19 = [VMUDirectedGraph _copyUnarchived:v18 length:&v129 options:options];

    v20 = v129;
    v21 = [v117 objectForKeyedSubscript:@"commonAddressBits"];
    unsignedIntegerValue = [v21 unsignedIntegerValue];

    if (v14->_internalizedCount)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      var0 = 0;
      v27 = 0;
      v28 = v20 >> 2;
      while (1)
      {
        v29 = v25 + 1;
        if (v25 + 1 > v28)
        {
          break;
        }

        v30 = &v19[4 * v25];
        v31 = *v30;
        v25 += 4;
        if ((*v30 & 0x80000000) != 0 && v25 > v28)
        {
          break;
        }

        if ((v31 & 0x80000000) != 0)
        {
          v33 = *&v19[4 * v29] | ((v31 & 0x7FFFFFFF) << 32);
          v34 = *(v30 + 3) | (*(v30 + 2) << 32);
          v35 = &v14->_internalizedNodes[v23];
          v35->var0 = v33;
          *(v35 + 1) = v34;
        }

        else
        {
          v32 = &v14->_internalizedNodes[v23];
          v32->var0 = var0 + (((v31 >> 4) & 0x3FF) << (v31 & 0xF));
          *(v32 + 1) = (32 * (((v31 >> 14) & 0x1F) << (v31 & 0xF))) | 1 | ((v31 >> 19) << 41);
          ++v27;
          v25 = v29;
        }

        v36 = &v14->_internalizedNodes[v23];
        var0 = v36->var0;
        v37 = *(v36 + 2) & 7;
        v38 = v37 > 4;
        v39 = (1 << v37) & 0x19;
        if (v38 || v39 == 0)
        {
          v36->var0 = var0 | unsignedIntegerValue;
        }

        ++v24;
        ++v23;
        if (v24 >= v14->_internalizedCount)
        {
          goto LABEL_29;
        }
      }

      v41 = *MEMORY[0x1E69E9848];
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v44 = v43;
      uTF8String = [v43 UTF8String];
      Name = sel_getName(a2);
      fprintf(v41, "[%s %s] error: malformed serialized data\n", uTF8String, Name);

      if (v19)
      {
        free(v19);
      }

      goto LABEL_26;
    }

    v27 = 0;
    v48 = 0;
    if (v19)
    {
LABEL_29:
      free(v19);
      v48 = v27;
    }

    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Object Info] Compact: %d Large: %d (%2.2f%%)\n\n", v48, [(VMUDirectedGraph *)v14 nodeNamespaceSize]- v48, v48 * 100.0 / [(VMUDirectedGraph *)v14 nodeNamespaceSize]);
    }

    v125 = 0;
    v126 = &v125;
    v127 = 0x2020000000;
    v128 = 1;
    v124[0] = 0;
    v124[1] = v124;
    v124[2] = 0x2020000000;
    v124[3] = 0;
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 3221225472;
    v120[2] = __66__VMUObjectGraph_initWithArchived_version_options_diskLogs_error___block_invoke;
    v120[3] = &unk_1E827A5B0;
    v14 = v14;
    v121 = v14;
    v122 = v124;
    v123 = &v125;
    [(VMUDirectedGraph *)v14 enumerateNodesWithBlock:v120];
    if (v126[3])
    {
      v119 = 0;
      v49 = [v117 objectForKeyedSubscript:@"referenceDetails"];
      v14->_referenceTable = [VMUDirectedGraph _copyUnarchived:v49 length:&v119 options:options];

      edgeNamespaceSize = [(VMUDirectedGraph *)v14 edgeNamespaceSize];
      v14->_referenceTableCapacity = edgeNamespaceSize;
      if (v119 >= 4 * edgeNamespaceSize)
      {
        if (kVMUPrintArchivingTiming == 1)
        {
          fprintf(*MEMORY[0x1E69E9848], "[Reference Details] Total Compact and Large: %d\n\n", [(VMUDirectedGraph *)v14 edgeNamespaceSize]);
        }

        v118 = 0;
        v74 = [v117 objectForKeyedSubscript:@"referenceDetailsLarge"];
        v14->_referenceTableLarge = [VMUDirectedGraph _copyUnarchived:v74 length:&v118 options:options];

        v75 = v118;
        v76 = v118 >> 4;
        v14->_referenceTableLargeCapacity = v118 >> 4;
        v14->_referenceTableLargeCount = v76;
        if (v75 >= 16 * v14->_referenceTableLargeCapacity)
        {
          if (kVMUPrintArchivingTiming == 1)
          {
            fprintf(*MEMORY[0x1E69E9848], "[Reference Details Large] Compact: %d Large: %d (%2.2f%%)\n\n", [(VMUDirectedGraph *)v14 edgeNamespaceSize]- v14->_referenceTableLargeCount, v14->_referenceTableLargeCount, ([(VMUDirectedGraph *)v14 edgeNamespaceSize]- v14->_referenceTableLargeCount) * 100.0 / [(VMUDirectedGraph *)v14 edgeNamespaceSize]);
          }

          referenceTableCapacity = v14->_referenceTableCapacity;
          if (!referenceTableCapacity)
          {
LABEL_60:
            v91 = [v117 objectForKeyedSubscript:@"archivedClassInfos"];
            v92 = [VMUDirectedGraph _unarchivedObject:v91 ofClass:objc_opt_class() options:options];
            knownClassInfos = v14->_knownClassInfos;
            v14->_knownClassInfos = v92;

            v94 = v14->_knownClassInfos;
            if (v94)
            {
              v14->_classInfos = [(VMUClassInfoMap *)v94 _retainedLinearArrayWithReturnedCount:&v14->_classInfosCount];
              if (kVMUPrintArchivingTiming == 1)
              {
                fprintf(*MEMORY[0x1E69E9848], "[Class Layouts] Class info count: %d\n\n", [(VMUClassInfoMap *)v14->_knownClassInfos count]);
              }

              v71 = 1;
            }

            else
            {
              if (errorCopy)
              {
                v95 = MEMORY[0x1E696ABC0];
                v131 = *MEMORY[0x1E696A578];
                v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
                *errorCopy = [v95 errorWithDomain:@"com.apple.dt.Symbolication.VMUObjectGraph" code:1 userInfo:v96];
              }

              v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              if (v97)
              {
                [(VMUObjectGraph *)v97 initWithArchived:v98 version:v99 options:v100 diskLogs:v101 error:v102, v103, v104];
              }

              v71 = 0;
              v14 = 0;
            }

LABEL_43:

            _Block_object_dispose(v124, 8);
            _Block_object_dispose(&v125, 8);

            if ((v71 & 1) == 0)
            {
              goto LABEL_27;
            }

LABEL_44:
            v14 = v14;
            v47 = v14;
            goto LABEL_45;
          }

          referenceTable = v14->_referenceTable;
          while (1)
          {
            v90 = referenceTable->var0.var0;
            ++referenceTable;
            v89 = v90;
            if ((*&v90 & 0x80000000) != 0 && (*&v89 & 0x7FFFFFFF) >= v14->_referenceTableLargeCount)
            {
              break;
            }

            if (!--referenceTableCapacity)
            {
              goto LABEL_60;
            }
          }

          if (errorCopy)
          {
            v105 = MEMORY[0x1E696ABC0];
            v133 = *MEMORY[0x1E696A578];
            v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
            *errorCopy = [v105 errorWithDomain:@"com.apple.dt.Symbolication.VMUObjectGraph" code:1 userInfo:v106];
          }

          v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v107)
          {
            [(VMUObjectGraph *)v107 initWithArchived:v108 version:v109 options:v110 diskLogs:v111 error:v112, v113, v114];
          }
        }

        else
        {
          if (errorCopy)
          {
            v77 = MEMORY[0x1E696ABC0];
            v135 = *MEMORY[0x1E696A578];
            v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
            *errorCopy = [v77 errorWithDomain:@"com.apple.dt.Symbolication.VMUObjectGraph" code:1 userInfo:v78];
          }

          v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v79)
          {
            [(VMUObjectGraph *)v79 initWithArchived:v80 version:v81 options:v82 diskLogs:v83 error:v84, v85, v86];
          }
        }
      }

      else
      {
        if (errorCopy)
        {
          v51 = MEMORY[0x1E696ABC0];
          v137 = *MEMORY[0x1E696A578];
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
          *errorCopy = [v51 errorWithDomain:@"com.apple.dt.Symbolication.VMUObjectGraph" code:1 userInfo:v52];
        }

        v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v53)
        {
          [(VMUObjectGraph *)v53 initWithArchived:v54 version:v55 options:v56 diskLogs:v57 error:v58, v59, v60];
        }
      }
    }

    else
    {
      if (errorCopy)
      {
        v61 = MEMORY[0x1E696ABC0];
        v139 = *MEMORY[0x1E696A578];
        v140[0] = @"Memgraph is corrupt due to malloc zone enumeration failure. The malloc heap of the target process was in an inconsistent state such as when being modified.";
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:&v139 count:1];
        *errorCopy = [v61 errorWithDomain:@"com.apple.dt.Symbolication.VMUObjectGraph" code:1 userInfo:v62];
      }

      v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v63)
      {
        [(VMUObjectGraph *)v63 initWithArchived:v64 version:v65 options:v66 diskLogs:v67 error:v68, v69, v70];
      }
    }

    v71 = 0;
    goto LABEL_43;
  }

  NSLog(&cfstr_MemoryGraphHas.isa, "internalized node", internalizedCount);

LABEL_26:
  v14 = 0;
LABEL_27:
  v47 = 0;
LABEL_45:

  v72 = *MEMORY[0x1E69E9840];
  return v47;
}

void *__66__VMUObjectGraph_initWithArchived_version_options_diskLogs_error___block_invoke(void *result, unsigned int a2, _BYTE *a3)
{
  v3 = *(*(result[4] + 128) + 16 * a2);
  v4 = *(result[5] + 8);
  if (*(v4 + 24) > v3)
  {
    *(*(result[6] + 8) + 24) = 0;
    *a3 = 1;
    v4 = *(result[5] + 8);
  }

  *(v4 + 24) = v3;
  return result;
}

- (void)archiveDictionaryRepresentation:(id)representation options:(unint64_t)options
{
  representationCopy = representation;
  v44.receiver = self;
  v44.super_class = VMUObjectGraph;
  [(VMUDirectedGraph *)&v44 archiveDictionaryRepresentation:representationCopy options:options];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(VMUObjectGraph *)self internalizeNodes];
  _commonHighAddressBit = [(VMUObjectGraph *)self _commonHighAddressBit];
  nodeNamespaceSize = [(VMUDirectedGraph *)self nodeNamespaceSize];
  v10 = nodeNamespaceSize;
  if (nodeNamespaceSize)
  {
    v11 = malloc_type_malloc(16 * nodeNamespaceSize, 0x100004052888210uLL);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    internalizedNodes = self->_internalizedNodes;
    v17 = 0;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    if (!_commonHighAddressBit)
    {
      v18 = -1;
    }

    do
    {
      v19 = &internalizedNodes[v15];
      var0 = v19->var0;
      v21 = v19->var0 & v18;
      if (v21 < 0 != v17)
      {
        [VMUObjectGraph archiveDictionaryRepresentation:options:];
      }

      v22 = *(v19 + 1);
      v23 = (v22 >> 5) & 0xFFFFFFFFFLL;
      if (v23)
      {
        v24 = (v22 & 0x20) == 0;
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        v25 = 0;
        v26 = (v22 >> 5) & 0xFFFFFFFFFLL;
        do
        {
          ++v25;
          if (!v26)
          {
            break;
          }

          v27 = v26;
          v26 >>= 1;
        }

        while ((v27 & 2) == 0);
      }

      else
      {
        v25 = 0;
      }

      v28 = 0;
      v29 = v21 - v13;
      if (v29 && (v29 & 1) == 0)
      {
        v28 = 0;
        v30 = v29;
        do
        {
          ++v28;
          if (!v30)
          {
            break;
          }

          v31 = v30;
          v30 >>= 1;
        }

        while ((v31 & 2) == 0);
      }

      if (v25 >= v28)
      {
        v25 = v28;
      }

      if (v25 >= 0xF)
      {
        v25 = 15;
      }

      if ((v22 & 0xFFE0000000000007) != 1 || ((v32 = v29 >> v25, v33 = v23 >> v25, v32 <= 0x3FF) ? (v34 = v33 > 0x1F) : (v34 = 1), v34))
      {
        v11[v12] = HIDWORD(var0) | 0x80000000;
        v11[v12 + 1] = var0;
        v35 = *(&internalizedNodes[v15] + 1);
        v36 = v12 + 3;
        v11[v12 + 2] = HIDWORD(v35);
        v12 += 4;
        v11[v36] = v35 & 0xFFFFFFE7;
      }

      else
      {
        v11[v12++] = (v33 << 14) | (16 * v32) | (v22 >> 22) & 0x7FF80000 | v25;
        ++v14;
      }

      ++v15;
      v13 = v21;
      v17 = __OFSUB__(v15, v10);
    }

    while (v15 != v10);
    v37 = 4 * v12;
  }

  else
  {
    v11 = 0;
    v14 = 0;
    v37 = 0;
  }

  v38 = [VMUDirectedGraph _archivedBytes:v11 length:v37 options:options];
  [dictionary setObject:v38 forKeyedSubscript:@"objectDetails"];

  if (v11)
  {
    free(v11);
  }

  if (kVMUPrintArchivingTiming == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "[Object Info] Compact: %d Large: %d (%2.2f%%)\n\n", v14, v10 - v14, v14 * 100.0 / v10);
  }

  if ([(VMUDirectedGraph *)self edgeNamespaceSize])
  {
    v39 = [VMUDirectedGraph _archivedBytes:self->_referenceTable length:4 * [(VMUDirectedGraph *)self edgeNamespaceSize] options:options];
    [dictionary setObject:v39 forKeyedSubscript:@"referenceDetails"];
  }

  if (kVMUPrintArchivingTiming == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "[Reference Details] Total Compact and Large: %d\n\n", [(VMUDirectedGraph *)self edgeNamespaceSize]);
  }

  referenceTableLargeCount = self->_referenceTableLargeCount;
  if (referenceTableLargeCount)
  {
    v41 = [VMUDirectedGraph _archivedBytes:self->_referenceTableLarge length:16 * referenceTableLargeCount options:options];
    [dictionary setObject:v41 forKeyedSubscript:@"referenceDetailsLarge"];
  }

  if (kVMUPrintArchivingTiming == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "[Reference Details Large] Compact: %d Large: %d (%2.2f%%)\n\n", [(VMUDirectedGraph *)self edgeNamespaceSize]- self->_referenceTableLargeCount, self->_referenceTableLargeCount, ([(VMUDirectedGraph *)self edgeNamespaceSize]- self->_referenceTableLargeCount) * 100.0 / [(VMUDirectedGraph *)self edgeNamespaceSize]);
  }

  v42 = [VMUDirectedGraph _archivedObject:self->_knownClassInfos options:options];
  [dictionary setObject:v42 forKeyedSubscript:@"archivedClassInfos"];

  if (kVMUPrintArchivingTiming == 1)
  {
    fprintf(*MEMORY[0x1E69E9848], "[Class Layouts] Class info count: %d\n\n", [(VMUClassInfoMap *)self->_knownClassInfos count]);
  }

  if (_commonHighAddressBit)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0x8000000000000000];
    [dictionary setObject:v43 forKeyedSubscript:@"commonAddressBits"];
  }

  [representationCopy setObject:dictionary forKeyedSubscript:@"objectGraphInfo"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = VMUObjectGraph;
  v4 = [(VMUDirectedGraph *)&v9 copyWithZone:zone];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__VMUObjectGraph_copyWithZone___block_invoke;
  aBlock[3] = &unk_1E827A5D8;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = *(v4 + 21);
  *(v4 + 21) = v5;

  objc_storeStrong(v4 + 22, self);
  *(v4 + 47) = [(VMUDirectedGraph *)self edgeNamespaceSize];
  *(v4 + 46) = [(VMUDirectedGraph *)self nodeNamespaceSize];
  [(VMUObjectGraph *)self _modifyDerivativeGraphCount:1];
  return v4;
}

void *__31__VMUObjectGraph_copyWithZone___block_invoke@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result nodeDetails:a2];
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

- (void)setIndexedClassInfos:(id)infos
{
  objc_storeStrong(&self->_knownClassInfos, infos);
  infosCopy = infos;
  [VMUClassInfoMap _destroyRetainedLinearArray:self->_classInfos withCount:self->_classInfosCount];
  v6 = [(VMUClassInfoMap *)self->_knownClassInfos _retainedLinearArrayWithReturnedCount:&self->_classInfosCount];

  self->_classInfos = v6;
}

- (void)internalizeNodes
{
  if (self->_referenceGraphNodeNamespaceSize && (self->_nodeProvider || self->_referenceGraph))
  {
    if (!self->_knownClassInfos)
    {
      v3 = objc_opt_new();
      knownClassInfos = self->_knownClassInfos;
      self->_knownClassInfos = v3;
    }

    v5 = malloc_type_calloc([(VMUDirectedGraph *)self nodeNamespaceSize], 0x10uLL, 0x1000040451B5BE8uLL);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __34__VMUObjectGraph_internalizeNodes__block_invoke;
    v28[3] = &unk_1E8279AC8;
    v28[4] = self;
    v28[5] = v5;
    [(VMUObjectGraph *)self enumerateObjectsWithBlock:v28];
    [VMUClassInfoMap _destroyRetainedLinearArray:self->_classInfos withCount:self->_classInfosCount];
    self->_classInfos = [(VMUClassInfoMap *)self->_knownClassInfos _retainedLinearArrayWithReturnedCount:&self->_classInfosCount];
    internalizedNodes = self->_internalizedNodes;
    if (internalizedNodes)
    {
      free(internalizedNodes);
    }

    self->_internalizedNodes = v5;
    self->_internalizedCount = [(VMUDirectedGraph *)self nodeNamespaceSize];
    if (self->_referenceGraphEdgeNamespaceSize)
    {
      v7 = malloc_type_calloc([(VMUDirectedGraph *)self edgeNamespaceSize], 4uLL, 0x100004052888210uLL);
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      inverted = [(VMUDirectedGraph *)self inverted];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __34__VMUObjectGraph_internalizeNodes__block_invoke_2;
      v14[3] = &unk_1E827A600;
      v14[4] = &v24;
      v14[5] = &v20;
      v14[6] = &v16;
      v14[7] = v7;
      v15 = inverted;
      [(VMUObjectGraph *)self enumerateReferencesWithBlock:v14];
      referenceTable = self->_referenceTable;
      if (referenceTable)
      {
        free(referenceTable);
      }

      referenceTableLarge = self->_referenceTableLarge;
      if (referenceTableLarge)
      {
        free(referenceTableLarge);
      }

      self->_referenceTable = v7;
      self->_referenceTableLarge = v25[3];
      self->_referenceTableLargeCount = *(v21 + 6);
      self->_referenceTableLargeCapacity = *(v17 + 6);
      _Block_object_dispose(&v16, 8);
      _Block_object_dispose(&v20, 8);
      _Block_object_dispose(&v24, 8);
    }

    referenceGraph = self->_referenceGraph;
    if (referenceGraph)
    {
      [(VMUObjectGraph *)referenceGraph _modifyDerivativeGraphCount:0xFFFFFFFFLL];
      v12 = self->_referenceGraph;
      self->_referenceGraph = 0;
    }

    nodeProvider = self->_nodeProvider;
    self->_nodeProvider = 0;

    self->_referenceGraphEdgeNamespaceSize = 0;
    self->_referenceGraphNodeNamespaceSize = 0;
  }
}

uint64_t __34__VMUObjectGraph_internalizeNodes__block_invoke(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v3 = (*(a1 + 40) + 16 * a2);
  v5 = *a3;
  v4 = a3[1];
  v6 = (v4 >> 60) & 7;
  v7 = v4 & 0xFFFFFFFFFFFFFFFLL;
  if (v7 >= 0xFFFFFFFFFLL)
  {
    v7 = 0xFFFFFFFFFLL;
  }

  v8 = v6 | (32 * v7);
  result = [*(*(a1 + 32) + 152) indexForClassInfo:a3[2]];
  *v3 = v5;
  v3[1] = v8 | (result << 41);
  return result;
}

void *__34__VMUObjectGraph_internalizeNodes__block_invoke_2(void *result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(result[4] + 8);
  v7 = *(result[5] + 8);
  v8 = result[7];
  v9 = *(result[6] + 8);
  v10 = *(a5 + 8);
  v11 = *(a5 + 16);
  v12 = *(a5 + 24);
  if (*(result + 64))
  {
    v13 = *(a5 + 8);
  }

  else
  {
    v13 = *(a5 + 24);
  }

  if (*(result + 64))
  {
    v14 = *(a5 + 24);
  }

  else
  {
    v14 = *(a5 + 8);
  }

  if ((v14 & 3) != 0)
  {
LABEL_12:
    v18 = *(v7 + 24);
    v19 = *(v9 + 24);
    result = *(v6 + 24);
    if (v18 >= v19)
    {
      v20 = 2 * v19;
      if (2 * v19 <= 0x100)
      {
        v20 = 256;
      }

      *(v9 + 24) = v20;
      result = malloc_type_realloc(result, 16 * v20, 0x1000040451B5BE8uLL);
      *(v6 + 24) = result;
      v18 = *(v7 + 24);
    }

    v21 = &result[2 * v18];
    *v21 = v14 & 0xFFFFFFFFFFFFFFLL | (v11 << 56);
    v21[1] = v13 & 0xFFFFFFFFFFFFFFLL;
    *(v8 + 4 * a2) = (*(v7 + 24))++ | 0x80000000;
  }

  else
  {
    v15 = 0;
    v16 = -67108864 * (v11 & 0x1F);
    while (1)
    {
      v17 = offset_settings[v15];
      if (v14 < 1 << (26 - v17) && v13 < 1 << v17)
      {
        break;
      }

      ++v15;
      v16 -= 0x1000000;
      if (v15 == 4)
      {
        goto LABEL_12;
      }
    }

    *(v8 + 4 * a2) = (((v14 << (v17 - 2)) | v13) & 0xFFFFFF) - v16;
  }

  return result;
}

- (BOOL)_commonHighAddressBit
{
  selfCopy = self;
  internalizedCount = self->_internalizedCount;
  LOBYTE(self) = 1;
  if (internalizedCount)
  {
    v4 = selfCopy->_internalizedNodes + 8;
    v5 = -1;
    v6 = internalizedCount;
    v7 = v4;
    do
    {
      v8 = *v7;
      v7 += 4;
      v9 = v8 & 7;
      v10 = v9 > 4;
      v11 = (1 << v9) & 0x19;
      if (v10 || v11 == 0)
      {
        v13 = *(v4 - 8);
        if (v5 >= v13)
        {
          v5 = v13;
        }
      }

      v4 = v7;
      --v6;
    }

    while (v6);
    if ((v5 & 0x8000000000000000) != 0)
    {
      internalizedNodes = selfCopy->_internalizedNodes;
      do
      {
        internalizedNodes->var0 &= ~0x8000000000000000;
        ++internalizedNodes;
        --internalizedCount;
      }

      while (internalizedCount);
      LOBYTE(self) = 1;
    }

    else
    {
      return v5 >> 63;
    }
  }

  return self;
}

- (unsigned)scanTypeOfReferenceWithName:(unsigned int)name
{
  var0 = self->_referenceTable[name].var0.var0;
  if ((*&var0 & 0x80000000) != 0)
  {
    return *(self->_referenceTableLarge + 16 * (*&var0 & 0x7FFFFFFF) + 7);
  }

  else
  {
    return *&var0 >> 26;
  }
}

- (unsigned)nodeForAddress:(unint64_t)address
{
  v5 = [(VMUDirectedGraph *)self nodeNamespaceSize]+ 1;
  do
  {
    [(VMUObjectGraph *)self nodeDetails:v5 - 2];
    --v5;
  }

  while (!v10);
  if (!v5)
  {
    return -1;
  }

  v6 = 0;
  while (1)
  {
    v7 = v6 + (v5 >> 1);
    [(VMUObjectGraph *)self nodeDetails:v7];
    if (v9 == address)
    {
      break;
    }

    if (v9 <= address)
    {
      v5 += ~(v5 >> 1);
    }

    else
    {
      v5 >>= 1;
    }

    if (v9 <= address)
    {
      v6 = v7 + 1;
    }

    if (!v5)
    {
      return -1;
    }
  }

  return v7;
}

- (unsigned)enumerateObjectsWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__VMUObjectGraph_enumerateObjectsWithBlock___block_invoke;
    v9[3] = &unk_1E827A628;
    v9[4] = self;
    v10 = blockCopy;
    v8.receiver = self;
    v8.super_class = VMUObjectGraph;
    nodeCount = [(VMUDirectedGraph *)&v8 enumerateNodesWithBlock:v9];
  }

  else
  {
    nodeCount = [(VMUDirectedGraph *)self nodeCount];
  }

  return nodeCount;
}

uint64_t __44__VMUObjectGraph_enumerateObjectsWithBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v5 + 184);
  v8 = *(v5 + 128);
  v9 = *(v5 + 136);
  v10 = *(v5 + 144);
  v11 = *(v5 + 168);
  v12 = v11;
  v13 = a2 - v7;
  if (a2 >= v7 || v11 == 0)
  {
    if (v13 >= v9)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v15 = (v8 + 16 * v13);
      v17 = *v15;
      v16 = v15[1];
      v20 = v17;
      v21 = ((v16 >> 5) | (v16 << 60)) & 0x7000000FFFFFFFFFLL;
      if ((v16 & 7) == 1)
      {
        v18 = *(v10 + ((v16 >> 38) & 0x3FFFFF8));
      }

      else
      {
        v18 = 0;
      }

      v22 = v18;
    }
  }

  else
  {
    (*(v11 + 2))(&v20, v11, a2);
  }

  return (*(v6 + 16))(v6, a2, &v20, a3);
}

uint64_t __56__VMUObjectGraph_enumerateObjectsOfGroupNode_withBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 32;
  v5 = *(a1 + 32);
  v6 = *(v7 + 8);
  if (v5)
  {
    [v5 nodeDetails:a2];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  return (*(v6 + 16))(v6, a2, v9, a3);
}

- (unsigned)enumerateMarkedObjects:(void *)objects withBlock:(id)block
{
  blockCopy = block;
  if (objects && (v7 = [(VMUDirectedGraph *)self nodeNamespaceSize], v34 = 0, v33.receiver = self, v33.super_class = VMUObjectGraph, v8 = [(VMUDirectedGraph *)&v33 deadNodeMap], v7))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = objects + 4;
    v27 = v8 + 1;
    v29 = v8;
    do
    {
      if (*objects > v10)
      {
        v13 = v10 >> 3;
        v14 = 1 << (v10 & 7);
        if ((v14 & v12[v13]) != 0 && (!v8 || *v8 <= v10 || (v14 & *(v27 + v13)) == 0))
        {
          ++v11;
          if (blockCopy)
          {
            referenceGraphNodeNamespaceSize = self->_referenceGraphNodeNamespaceSize;
            internalizedNodes = self->_internalizedNodes;
            internalizedCount = self->_internalizedCount;
            classInfos = self->_classInfos;
            v18 = self->_nodeProvider;
            v19 = v18;
            v20 = v10 - referenceGraphNodeNamespaceSize;
            if (v10 >= referenceGraphNodeNamespaceSize || v18 == 0)
            {
              if (v20 >= internalizedCount)
              {
                v30 = 0;
                v31 = 0;
                v32 = 0;
              }

              else
              {
                v22 = &internalizedNodes[v20];
                var0 = v22->var0;
                v23 = *(v22 + 1);
                v30 = var0;
                v31 = ((v23 >> 5) | (v23 << 60)) & 0x7000000FFFFFFFFFLL;
                if ((v23 & 7) == 1)
                {
                  v25 = *(classInfos + ((v23 >> 38) & 0x3FFFFF8));
                }

                else
                {
                  v25 = 0;
                }

                v32 = v25;
              }
            }

            else
            {
              (*(v18 + 2))(&v30, v18, v10);
            }

            blockCopy[2](blockCopy, v10, &v30, &v34);
            v9 = v34;
            v12 = objects + 4;
            v8 = v29;
          }
        }
      }

      v10 = (v10 + 1);
    }

    while (v10 < v7 && (v9 & 1) == 0);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)enumerateReferencesWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    inverted = [(VMUDirectedGraph *)self inverted];
    nodeNamespaceSize = [(VMUDirectedGraph *)self nodeNamespaceSize];
    v7 = malloc_type_malloc(24 * nodeNamespaceSize, 0x108004098BBCF0FuLL);
    v8 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
    *v8 = nodeNamespaceSize;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__VMUObjectGraph_enumerateReferencesWithBlock___block_invoke;
    v12[3] = &unk_1E827A650;
    v14 = v7;
    v15 = v8;
    v12[4] = self;
    v13 = blockCopy;
    v16 = inverted;
    v11.receiver = self;
    v11.super_class = VMUObjectGraph;
    edgeCount = [(VMUDirectedGraph *)&v11 enumerateEdgesWithBlock:v12];
    free(v7);
    free(v8);
  }

  else
  {
    edgeCount = [(VMUDirectedGraph *)self edgeCount];
  }

  return edgeCount;
}

uint64_t __47__VMUObjectGraph_enumerateReferencesWithBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v11 = v10 + 24 * a3;
  if (!v9)
  {
    v17 = v10 + 24 * a4;
    goto LABEL_36;
  }

  v12 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
  v13 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
  v14 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
  v15 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
  v16 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
  if (*v9 > a3 && ((*(v9 + (a3 >> 3) + 4) >> (a3 & 7)) & 1) != 0)
  {
    v17 = v10 + 24 * a4;
LABEL_19:
    v31 = *v9;
    goto LABEL_21;
  }

  v18 = *(a1 + 32);
  v19 = *(v18 + 184);
  v20 = *(v18 + 128);
  v21 = *(v18 + 136);
  v22 = *(v18 + 144);
  v23 = *(v18 + 168);
  v24 = v23;
  v25 = a3 - v19;
  if (a3 >= v19 || v23 == 0)
  {
    if (v25 >= v21)
    {
      v66 = 0uLL;
      *&v67 = 0;
    }

    else
    {
      v27 = (v20 + 16 * v25);
      *&v66 = *v27;
      v28 = v27[1];
      *(&v66 + 1) = ((v28 >> 5) | (v28 << 60)) & 0x7000000FFFFFFFFFLL;
      if ((v28 & 7) == 1)
      {
        v29 = *(v22 + ((v28 >> 38) & 0x3FFFFF8));
      }

      else
      {
        v29 = 0;
      }

      *&v67 = v29;
    }
  }

  else
  {
    (*(v23 + 2))(&v66, v23, a3);
  }

  v30 = v66;
  *(v11 + 16) = v67;
  *v11 = v30;
  v9 = *(a1 + 56);
  v31 = *v9;
  if (*v9 > a3)
  {
    *(v9 + (a3 >> 3) + 4) |= 1 << (a3 & 7);
    v9 = *(a1 + 56);
    v17 = *(a1 + 48) + 24 * a4;
    v16 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
    v15 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
    v13 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
    v14 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
    v12 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
    if (!v9)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  v17 = *(a1 + 48) + 24 * a4;
  v16 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
  v15 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
  v13 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
  v14 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
  v12 = &OBJC_IVAR___VMUTaskMemoryScanner__addressToRuntimeMetadataChunkInfoDict;
LABEL_21:
  if (v31 <= a4 || ((*(v9 + (a4 >> 3) + 4) >> (a4 & 7)) & 1) == 0)
  {
    v32 = *(a1 + 32);
    v33 = *(v32 + v12[732]);
    v34 = *(v32 + v14[734]);
    v35 = *(v32 + v15[735]);
    v64 = *(v32 + v16[739]);
    v36 = *(v32 + v13[731]);
    v37 = v36;
    v38 = a4 - v33;
    if (a4 >= v33 || v36 == 0)
    {
      if (v38 >= v35)
      {
        v66 = 0uLL;
        *&v67 = 0;
      }

      else
      {
        v40 = (v34 + 16 * v38);
        *&v66 = *v40;
        v41 = v40[1];
        *(&v66 + 1) = ((v41 >> 5) | (v41 << 60)) & 0x7000000FFFFFFFFFLL;
        v42 = (v41 & 7) == 1 ? *(v64 + ((v41 >> 38) & 0x3FFFFF8)) : 0;
        *&v67 = v42;
      }
    }

    else
    {
      (*(v36 + 2))(&v66, v36, a4);
    }

    v43 = v66;
    *(v17 + 16) = v67;
    *v17 = v43;
    v44 = *(a1 + 56);
    if (*v44 > a4)
    {
      *(v44 + (a4 >> 3) + 4) |= 1 << (a4 & 7);
    }
  }

LABEL_36:
  *&v69 = v11;
  v45 = *(a1 + 32);
  v46 = *(a1 + 40);
  v47 = *(v45 + 188);
  v48 = *(v45 + 96);
  v49 = *(v45 + 112);
  v50 = *(a1 + 64);
  v51 = *(v45 + 176);
  v52 = v51;
  if (a2 >= v47)
  {
    v53 = *(v48 + 4 * (a2 - v47));
    if ((v53 & 0x80000000) != 0)
    {
      v59 = v49 + 16 * (v53 & 0x7FFFFFFF);
      v60 = (v59 + 8);
      if (!v50)
      {
        v60 = v59;
      }

      *(&v69 + 1) = *v60 & 0xFFFFFFFFFFFFFFLL;
      LODWORD(v70) = *(v59 + 7);
      v61 = 8;
      if (v50)
      {
        v61 = 0;
      }

      v58 = *(v59 + v61) & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v54 = offset_settings[(v53 >> 24) & 3];
      v55 = 4 * ((v53 & 0xFFFFFF) >> v54);
      v56 = v53 & 0xFFFFFF & ~(-1 << v54);
      if (v50)
      {
        v57 = v56;
      }

      else
      {
        v57 = v55;
      }

      *(&v69 + 1) = v57;
      LODWORD(v70) = v53 >> 26;
      if (v50)
      {
        v58 = v55;
      }

      else
      {
        v58 = v56;
      }
    }

    *(&v70 + 1) = v58;
  }

  else if (v51)
  {
    [v51 referenceInfoWithName:a2];
  }

  else
  {
    *(&v69 + 1) = 0;
    v70 = 0uLL;
  }

  v71 = v17;
  v62 = *(v46 + 16);
  v66 = v69;
  v67 = v70;
  v68 = v17;
  return v62(v46, a2, a3, a4, &v66, a5);
}

uint64_t __54__VMUObjectGraph_enumerateReferencesOfNode_withBlock___block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v9 = *(a1 + 32);
  v10 = *(v9 + 184);
  v11 = *(v9 + 136);
  v51 = *(v9 + 144);
  v52 = *(v9 + 128);
  v12 = *(v9 + 168);
  v13 = v12;
  v14 = a3 - v10;
  if (a3 >= v10 || v12 == 0)
  {
    if (v14 >= v11)
    {
      v66 = 0;
      v67 = 0;
      v68 = 0;
    }

    else
    {
      v16 = (v52 + 16 * v14);
      v18 = *v16;
      v17 = v16[1];
      v66 = v18;
      v67 = ((v17 >> 5) | (v17 << 60)) & 0x7000000FFFFFFFFFLL;
      if ((v17 & 7) == 1)
      {
        v19 = *(v51 + ((v17 >> 38) & 0x3FFFFF8));
      }

      else
      {
        v19 = 0;
      }

      v68 = v19;
    }
  }

  else
  {
    (*(v12 + 2))(&v66, v12, a3);
  }

  v63 = 0;
  v64 = 0;
  v65 = 0;
  v20 = *(a1 + 32);
  v21 = *(v20 + 184);
  v22 = *(v20 + 128);
  v23 = *(v20 + 136);
  v24 = *(v20 + 144);
  v25 = *(v20 + 168);
  v26 = v25;
  v27 = a4 - v21;
  if (a4 < v21 && v25)
  {
    (*(v25 + 2))(&v63, v25);
  }

  else if (v27 >= v23)
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
  }

  else
  {
    v28 = (v22 + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    v63 = v30;
    v64 = ((v29 >> 5) | (v29 << 60)) & 0x7000000FFFFFFFFFLL;
    if ((v29 & 7) == 1)
    {
      v31 = *(v24 + ((v29 >> 38) & 0x3FFFFF8));
    }

    else
    {
      v31 = 0;
    }

    v65 = v31;
  }

  *&v60 = &v66;
  v32 = *(a1 + 32);
  v33 = *(a1 + 40);
  v34 = *(v32 + 188);
  v35 = *(v32 + 96);
  v36 = *(v32 + 112);
  v37 = *(a1 + 48);
  v38 = *(v32 + 176);
  v39 = v38;
  if (a2 >= v34)
  {
    v40 = *(v35 + 4 * (a2 - v34));
    if ((v40 & 0x80000000) != 0)
    {
      v46 = v36 + 16 * (v40 & 0x7FFFFFFF);
      v47 = (v46 + 8);
      if (!v37)
      {
        v47 = v46;
      }

      *(&v60 + 1) = *v47 & 0xFFFFFFFFFFFFFFLL;
      LODWORD(v61) = *(v46 + 7);
      v48 = 8;
      if (v37)
      {
        v48 = 0;
      }

      v45 = *(v46 + v48) & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = offset_settings[(v40 >> 24) & 3];
      v42 = 4 * ((v40 & 0xFFFFFF) >> v41);
      v43 = v40 & 0xFFFFFF & ~(-1 << v41);
      if (v37)
      {
        v44 = v43;
      }

      else
      {
        v44 = v42;
      }

      *(&v60 + 1) = v44;
      LODWORD(v61) = v40 >> 26;
      if (v37)
      {
        v45 = v42;
      }

      else
      {
        v45 = v43;
      }
    }

    *(&v61 + 1) = v45;
  }

  else if (v38)
  {
    [v38 referenceInfoWithName:a2];
  }

  else
  {
    *(&v60 + 1) = 0;
    v61 = 0uLL;
  }

  v62 = &v63;
  v49 = *(v33 + 16);
  v58[0] = v60;
  v58[1] = v61;
  v59 = &v63;
  return v49(v33, a2, a5, a6, v58, a7);
}

uint64_t __62__VMUObjectGraph_nodeReferencedFromSourceNode_byIvarWithName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _BYTE *a6)
{
  v10 = *(a5 + 8);
  result = [*(a1 + 32) offset];
  if (v10 == result && !*(a5 + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = a4;
    *a6 = 1;
  }

  return result;
}

void __66__VMUObjectGraph_enumerateObjectsContainedInCollection_withBlock___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 24) || ([*(*(a5 + 32) + 16) className], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "hasSuffix:", @"Storage")), v10, !v11))
  {
    v12 = a1[4];
    v13 = *(v12 + 16);
    v14 = *(a5 + 16);
    v15[0] = *a5;
    v15[1] = v14;
    v16 = *(a5 + 32);
    v13(v12, a2, a3, a4, v15);
    ++*(*(a1[6] + 8) + 24);
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a4;
  }
}

uint64_t __66__VMUObjectGraph_enumerateObjectsContainedInCollection_withBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v8 = *(a5 + 16);
  v10[0] = *a5;
  v10[1] = v8;
  v11 = *(a5 + 32);
  result = v7(v6, a2, a3, a4, v10);
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

- ($61A80719B04F7407D3E47539F1B23CAA)nodeDetails:(VMUObjectGraph *)self
{
  v3 = v1;
  v5 = v2;
  referenceGraphNodeNamespaceSize = self->_referenceGraphNodeNamespaceSize;
  v7.var0 = [(VMUDirectedGraph *)self nodeNamespaceSize];
  if (LODWORD(v7.var0) < v3 || ((v8 = v3 - referenceGraphNodeNamespaceSize, v9 = self->_referenceGraphNodeNamespaceSize, internalizedCount = self->_internalizedCount, v3 >= v9) ? (v11 = v8 >= internalizedCount) : (v11 = 0), v11))
  {
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  else
  {
    nodeProvider = self->_nodeProvider;
    internalizedNodes = self->_internalizedNodes;
    classInfos = self->_classInfos;
    v15 = nodeProvider;
    v16 = v3 - v9;
    if (v3 >= v9 || v15 == 0)
    {
      if (v16 >= internalizedCount)
      {
        *v5 = 0;
        v5[1] = 0;
        v5[2] = 0;
      }

      else
      {
        v18 = &internalizedNodes[v16];
        var0 = v18->var0;
        v19 = *(v18 + 1);
        *v5 = var0;
        v5[1] = ((v19 >> 5) | (v19 << 60)) & 0x7000000FFFFFFFFFLL;
        if ((v19 & 7) == 1)
        {
          v21 = *(classInfos + ((v19 >> 38) & 0x3FFFFF8));
        }

        else
        {
          v21 = 0;
        }

        v5[2] = v21;
      }
    }

    else
    {
      v22 = v15;
      v15[2](v15, v3);
      v15 = v22;
    }
  }

  return v7;
}

- (void)_refineTypesWithOverlay:(id)overlay
{
  overlayCopy = overlay;
  if (overlayCopy)
  {
    [(VMUObjectGraph *)self internalizeNodes];
    [(VMUClassInfoMap *)self->_knownClassInfos _applyTypeOverlay:overlayCopy];
    [VMUClassInfoMap _destroyRetainedLinearArray:self->_classInfos withCount:self->_classInfosCount];
    self->_classInfos = [(VMUClassInfoMap *)self->_knownClassInfos _retainedLinearArrayWithReturnedCount:&self->_classInfosCount];
    classInfosCount = self->_classInfosCount;
    if (classInfosCount)
    {
      v17 = overlayCopy;
      v6 = malloc_type_malloc(24 * classInfosCount, 0x10100408797764BuLL);
      v7 = v6;
      if (self->_classInfosCount)
      {
        v8 = 0;
        v9 = v6 + 1;
        do
        {
          instanceSize = [self->_classInfos[v8] instanceSize];
          defaultScanType = [self->_classInfos[v8] defaultScanType];
          if (instanceSize)
          {
            v12 = malloc_type_calloc(instanceSize, 1uLL, 0x100004077774924uLL);
          }

          else
          {
            v12 = 0;
          }

          *(v9 - 2) = instanceSize;
          *(v9 - 1) = defaultScanType;
          *v9 = v12;
          v9[1] = 0;
          v9 += 3;
          v13 = self->_classInfos[v8];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __42__VMUObjectGraph__refineTypesWithOverlay___block_invoke;
          v22[3] = &unk_1E827A718;
          v23 = v8;
          v24 = instanceSize;
          v22[4] = self;
          v22[5] = v7;
          [v13 enumerateScanningLocationsForSize:instanceSize withBlock:v22];
          ++v8;
        }

        while (v8 < self->_classInfosCount);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __42__VMUObjectGraph__refineTypesWithOverlay___block_invoke_2;
      v21[3] = &unk_1E827A740;
      v21[4] = self;
      v21[5] = v7;
      v20.receiver = self;
      v20.super_class = VMUObjectGraph;
      [(VMUDirectedGraph *)&v20 _internalAccessRawEdgesWithBlock:v21];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __42__VMUObjectGraph__refineTypesWithOverlay___block_invoke_3;
      v19[3] = &unk_1E827A740;
      v19[4] = self;
      v19[5] = v7;
      v18.receiver = self;
      v18.super_class = VMUObjectGraph;
      [(VMUDirectedGraph *)&v18 _internalAccessRawEdgesWithBlock:v19];
      if (self->_classInfosCount)
      {
        v14 = 0;
        v15 = v7 + 2;
        do
        {
          v16 = *(v15 - 1);
          if (v16)
          {
            free(v16);
          }

          if (*v15)
          {
            free(*v15);
          }

          ++v14;
          v15 += 3;
        }

        while (v14 < self->_classInfosCount);
      }

      free(v7);
      overlayCopy = v17;
    }
  }
}

void __42__VMUObjectGraph__refineTypesWithOverlay___block_invoke(uint64_t a1, void *a2, unsigned int a3, char a4)
{
  *(*(*(a1 + 40) + 24 * *(a1 + 48) + 8) + a3) = a4;
  v7 = [a2 destinationLayout];

  if (v7)
  {
    if (!*(*(a1 + 40) + 24 * *(a1 + 48) + 16))
    {
      *(*(a1 + 40) + 24 * *(a1 + 48) + 16) = malloc_type_calloc(*(a1 + 52), 4uLL, 0x100004052888210uLL);
    }

    v8 = *(*(a1 + 32) + 152);
    v9 = [a2 destinationLayout];
    *(*(*(a1 + 40) + 24 * *(a1 + 48) + 16) + 4 * a3) = [v8 indexForClassInfo:v9];
  }
}

uint64_t __42__VMUObjectGraph__refineTypesWithOverlay___block_invoke_2(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = (a2 + 8);
    do
    {
      v5 = *(v4 - 2);
      if (v5 <= 0xFFFFFFFA)
      {
        v6 = *(result + 32);
        v7 = v6[16];
        v8 = *(v7 + 16 * *(v4 - 1) + 8) >> 41;
        if (v8 && (*(v7 + 16 * *(v4 - 1) + 8) & 7) == 1)
        {
          v10 = *(result + 40);
          v11 = *(v10 + 24 * v8 + 16);
          if (v11)
          {
            v12 = *(v6[12] + 4 * v5);
            if ((v12 & 0x80000000) != 0)
            {
              v13 = *(v6[14] + 16 * (v12 & 0x7FFFFFFF)) & 0xFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = 4 * ((v12 & 0xFFFFFF) >> offset_settings[(v12 >> 24) & 3]);
            }

            if (v13 < *(v10 + 24 * v8))
            {
              v14 = *(v11 + 4 * v13);
              if (v14)
              {
                v15 = v7 + 16 * *v4;
                v18 = *(v15 + 8);
                v16 = (v15 + 8);
                v17 = v18;
                if ((v18 & 0xFFFFFE0000000007) == 1)
                {
                  *v16 = v17 | (v14 << 41);
                }
              }
            }
          }
        }
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t __42__VMUObjectGraph__refineTypesWithOverlay___block_invoke_3(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = (a2 + 4);
    do
    {
      v5 = *(v4 - 1);
      if (v5 > 0xFFFFFFFA)
      {
        goto LABEL_9;
      }

      v6 = *(result + 32);
      v7 = *(v6[16] + 16 * *v4 + 8) >> 41;
      if ((*(v6[16] + 16 * *v4 + 8) & 7) != 1 || v7 == 0)
      {
        goto LABEL_9;
      }

      v9 = v6[12];
      v10 = v6[14];
      v11 = *(v9 + 4 * v5);
      if ((v11 & 0x80000000) != 0)
      {
        v14 = *(v10 + 16 * (v11 & 0x7FFFFFFF));
        v12 = v14 & 0xFFFFFFFFFFFFFFLL;
        v13 = HIBYTE(v14);
      }

      else
      {
        v12 = 4 * ((v11 & 0xFFFFFF) >> offset_settings[(v11 >> 24) & 3]);
        LODWORD(v13) = v11 >> 26;
      }

      if (v13 != 1)
      {
        goto LABEL_9;
      }

      v15 = (*(result + 40) + 24 * v7);
      if (v12 >= *v15)
      {
        v16 = *(v15 + 4);
        if ((v11 & 0x80000000) != 0)
        {
LABEL_19:
          *(v10 + 16 * (v11 & 0x7FFFFFFF) + 7) = v16;
          goto LABEL_9;
        }
      }

      else
      {
        v16 = *(*(v15 + 1) + v12);
        if ((v11 & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      *(v9 + 4 * v5) = v11 & 0x3FFFFFF | ((v16 & 0x1F) << 26);
LABEL_9:
      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

- (void)_compareWithGraph:(id)graph andMarkOnMatch:(BOOL)match
{
  matchCopy = match;
  graphCopy = graph;
  [(VMUObjectGraph *)self internalizeNodes];
  [graphCopy internalizeNodes];
  v7 = 4 * [(VMUDirectedGraph *)self nodeCount];
  v8 = malloc_type_malloc(v7, 0x100004052888210uLL);
  LODWORD(__pattern4) = -1;
  memset_pattern4(v8, &__pattern4, v7);
  v9 = 4 * [graphCopy nodeCount];
  v10 = malloc_type_malloc(v9, 0x100004052888210uLL);
  LODWORD(__pattern4) = -1;
  memset_pattern4(v10, &__pattern4, v9);
  __pattern4 = 0;
  p_pattern4 = &__pattern4;
  v42 = 0x2020000000;
  v43 = 0;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __51__VMUObjectGraph__compareWithGraph_andMarkOnMatch___block_invoke;
  v39[3] = &unk_1E827A768;
  v39[4] = self;
  v39[5] = &__pattern4;
  v39[6] = v8;
  [(VMUDirectedGraph *)self enumerateNodesWithBlock:v39];
  *(p_pattern4 + 6) = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __51__VMUObjectGraph__compareWithGraph_andMarkOnMatch___block_invoke_2;
  v35[3] = &unk_1E827A768;
  v37 = &__pattern4;
  v11 = graphCopy;
  v36 = v11;
  v38 = v10;
  [v11 enumerateNodesWithBlock:v35];
  sortNodesInMap(&self->_internalizedNodes->var0, v8, [(VMUDirectedGraph *)self nodeCount]);
  sortNodesInMap(v11[16], v10, [v11 nodeCount]);
  LODWORD(v9) = [(VMUDirectedGraph *)self nodeNamespaceSize];
  v12 = malloc_type_calloc(1uLL, ((v9 + 7) >> 3) + 4, 0xB2EC2458uLL);
  v13 = 0;
  v14 = 0;
  *v12 = v9;
  v15 = v12 + 1;
LABEL_2:
  v16 = v13;
  while (v16 < [(VMUDirectedGraph *)self nodeCount])
  {
    internalizedNodes = self->_internalizedNodes;
    v18 = v8[v16];
    var0 = internalizedNodes[v18].var0;
    v20 = v11[16][2 * v10[v14]];
    if (var0 <= v20)
    {
      if (var0 < v20)
      {
        if ((matchCopy & 1) == 0 && *v12 > v18)
        {
          *(v15 + (v18 >> 3)) |= 1 << (v18 & 7);
        }

        goto LABEL_37;
      }

      if (v18 >= self->_internalizedCount)
      {
        v24 = 0;
        v23 = 0;
        var0 = 0;
      }

      else
      {
        v22 = *(&internalizedNodes[v18] + 1);
        v23 = ((v22 >> 5) | (v22 << 60)) & 0x7000000FFFFFFFFFLL;
        if ((v22 & 7) == 1)
        {
          v24 = *(self->_classInfos + ((v22 >> 38) & 0x3FFFFF8));
        }

        else
        {
          v24 = 0;
        }
      }

      v25 = v10[v14];
      if (v25 >= *(v11 + 34))
      {
        v30 = 0;
        v29 = 0;
        v27 = 0;
        if (!v24)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v26 = &v11[16][2 * v25];
        v27 = *v26;
        v28 = v26[1];
        v29 = ((v28 >> 5) | (v28 << 60)) & 0x7000000FFFFFFFFFLL;
        if ((v28 & 7) == 1)
        {
          v30 = *(v11[18] + ((v28 >> 38) & 0x3FFFFF8));
          if (!v24)
          {
LABEL_26:
            v31 = var0 == v27 && v23 == v29;
            goto LABEL_32;
          }
        }

        else
        {
          v30 = 0;
          if (!v24)
          {
            goto LABEL_26;
          }
        }
      }

      v31 = [v24 isEqual:v30];
LABEL_32:
      if (v31 == matchCopy)
      {
        v33 = v8[v16];
        if (*v12 > v33)
        {
          *(v15 + (v33 >> 3)) |= 1 << (v33 & 7);
        }
      }

      if (v14 < [v11 nodeCount] - 1)
      {
        ++v14;
      }

      goto LABEL_37;
    }

    if (v14 == [v11 nodeCount] - 1)
    {
      if ((matchCopy & 1) == 0)
      {
        v21 = v8[v16];
        if (*v12 > v21)
        {
          *(v15 + (v21 >> 3)) |= 1 << (v21 & 7);
        }
      }

LABEL_37:
      v13 = v16 + 1;
      goto LABEL_2;
    }

    ++v14;
  }

  free(v8);
  free(v10);

  _Block_object_dispose(&__pattern4, 8);
  return v12;
}

uint64_t __51__VMUObjectGraph__compareWithGraph_andMarkOnMatch___block_invoke(uint64_t a1, int a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 24);
  result = [*(a1 + 32) nodeCount];
  if (v4 < result)
  {
    *(*(a1 + 48) + 4 * *(*(*(a1 + 40) + 8) + 24)) = a2;
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t __51__VMUObjectGraph__compareWithGraph_andMarkOnMatch___block_invoke_2(uint64_t a1, int a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 24);
  result = [*(a1 + 32) nodeCount];
  if (v4 < result)
  {
    *(*(a1 + 48) + 4 * *(*(*(a1 + 40) + 8) + 24)) = a2;
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t __82__VMUObjectGraph_UsefulAlgorithms__stronglyConnectedComponentSearch_withRecorder___block_invoke(void *a1, unsigned int a2, int a3)
{
  v3 = a3;
  v5 = a2;
  if (a3)
  {
    v6 = a1[9];
    if (*(v6 + 4 * a2) == *(a1[8] + 4 * a2))
    {
      v7 = a1[7];
      v8 = *(*(a1[5] + 8) + 24) - 1;
      for (i = *(v7 + 4 * v8); i != a2; i = *(v7 + 4 * v8))
      {
        *(v6 + 4 * i) = -1;
        --v8;
      }

      *(v6 + 4 * a2) = -1;
      if (a3 == 4)
      {
        v10 = a1[4];
        v11 = *(*(a1[5] + 8) + 24) - v8;
        (*(a1[4] + 16))();
      }

      *(*(a1[5] + 8) + 24) = v8;
    }

    v12 = *(a1[10] + 4 * v5);
    if (v12 != -1)
    {
      v13 = a1[9];
      v14 = *(v13 + 4 * v12);
      if (v14 >= *(v13 + 4 * v5))
      {
        v14 = *(v13 + 4 * v5);
      }

      *(v13 + 4 * v12) = v14;
    }
  }

  else
  {
    v15 = *(a1[5] + 8);
    v16 = *(v15 + 24);
    *(v15 + 24) = v16 + 1;
    v17 = a1[8];
    *(a1[7] + 4 * v16) = a2;
    v18 = *(a1[6] + 8);
    LODWORD(v16) = *(v18 + 24);
    *(v18 + 24) = v16 + 1;
    *(a1[9] + 4 * a2) = v16;
    *(v17 + 4 * a2) = v16;
  }

  if (((v3 + 1) & 0xFE) != 0)
  {
    return 2;
  }

  else
  {
    return (v3 + 1);
  }
}

BOOL __82__VMUObjectGraph_UsefulAlgorithms__stronglyConnectedComponentSearch_withRecorder___block_invoke_2(void *a1, uint64_t a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v9 = a1[4];
  if (v9)
  {
    [v9 referenceInfoWithName:a2];
    LOBYTE(v9) = v13;
  }

  result = VMUIsOwningReference(v9);
  if (result)
  {
    if (*a5)
    {
      result = 0;
      *a5 = 4;
      v11 = a1[6];
      v12 = *(v11 + 4 * a3);
      if (v12 >= *(v11 + 4 * a4))
      {
        v12 = *(v11 + 4 * a4);
      }

      *(v11 + 4 * a3) = v12;
    }

    else
    {
      *(a1[5] + 4 * a4) = a3;
      return 1;
    }
  }

  return result;
}

uint64_t __47__VMUObjectGraph_UsefulAlgorithms__isRootNode___block_invoke(uint64_t a1, uint64_t a2, int a3, int a4, _BYTE *a5)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  result = *(a1 + 32);
  if (result)
  {
    result = [result referenceInfoWithName:a2];
  }

  if (a3 != a4)
  {
    result = VMUIsOwningReference(v11);
    if (result)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a5 = 1;
    }
  }

  return result;
}

@end