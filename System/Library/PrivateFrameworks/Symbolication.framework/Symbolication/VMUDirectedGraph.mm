@interface VMUDirectedGraph
+ (BOOL)encapsulateData:(id)data to:(id)to withSupplementalDataTag:(const char *)tag error:(id *)error dataGeneratorBlock:(id)block;
+ (id)_archivedBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options;
+ (id)_archivedObject:(id)object options:(unint64_t)options;
+ (id)_unarchivedObject:(id)object ofClass:(Class)class options:(unint64_t)options;
+ (id)_unarchivedObject:(id)object ofClasses:(id)classes options:(unint64_t)options;
+ (id)directedGraphWithData:(id)data error:(id *)error;
+ (void)_copyUnarchived:(id)unarchived length:(unint64_t *)length options:(unint64_t)options;
- (BOOL)_adjustAdjacencyMap;
- (BOOL)isNodePresent:(unsigned int)present;
- (VMUDirectedGraph)initWithArchived:(id)archived version:(int64_t)version options:(unint64_t)options diskLogs:(id)logs error:(id *)error;
- (VMUDirectedGraph)initWithNodes:(unsigned int)nodes;
- (VMUDirectedGraph)initWithPlistRepresentation:(id)representation error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decapsulateIPSheaderInData:(id)data error:(id *)error;
- (id)decapsulatePlistData:(id)data error:(id *)error;
- (id)decapsulateSupplementalData:(id)data forTag:(const char *)tag;
- (id)invertedGraph;
- (id)plistRepresentationWithOptions:(unint64_t)options fromOriginalMemgraph:(id)memgraph;
- (id)renormalizedGraph;
- (id)subgraphWithMarkedNodes:(void *)nodes;
- (unsigned)_internalEnumerateEdgesOfNode:(unsigned int)node withBlock:(id)block;
- (unsigned)addEdgeFromNode:(unsigned int)node toNode:(unsigned int)toNode;
- (unsigned)addGroupNodeForNodes:(const unsigned int *)nodes count:(unsigned int)count;
- (unsigned)addNode;
- (unsigned)edgeCount;
- (unsigned)enumerateEdgesWithBlock:(id)block;
- (unsigned)enumerateMembersOfGroupNode:(unsigned int)node withBlock:(id)block;
- (unsigned)enumerateNodesWithBlock:(id)block;
- (unsigned)parentGroupForNode:(unsigned int)node;
- (unsigned)pointerSize;
- (unsigned)reverseEnumerateNodesWithBlock:(id)block;
- (void)_dumpAdjacencyList;
- (void)_faultDeadNodeMap;
- (void)_internalAccessRawEdgesWithBlock:(id)block;
- (void)_internalAddEdgeFromNode:(unsigned int)node toNode:(unsigned int)toNode withName:;
- (void)_removeEdges:(id)edges;
- (void)_renameWithNodeMap:(unsigned int *)map nodeNamespace:(unsigned int)namespace edgeMap:(unsigned int *)edgeMap edgeNamespace:(unsigned int)edgeNamespace;
- (void)_renormalize;
- (void)_reorderEdgesNaturally;
- (void)archiveDictionaryRepresentation:(id)representation options:(unint64_t)options;
- (void)dealloc;
- (void)invertEdges;
- (void)removeMarkedEdges:(void *)edges;
- (void)removeMarkedNodes:(void *)nodes;
- (void)setInverted:(BOOL)inverted;
- (void)ungroupNode:(unsigned int)node;
- (void)withEdgeMarkingMap:(id)map;
- (void)withNodeMarkingMap:(id)map;
@end

@implementation VMUDirectedGraph

+ (id)_archivedBytes:(const void *)bytes length:(unint64_t)length options:(unint64_t)options
{
  lengthCopy = length;
  if (length)
  {
    v7 = options & 1;
    if ((options & 4) != 0)
    {
      v7 = 2;
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__9;
    v41 = __Block_byref_object_dispose__9;
    v42 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = v7;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v9 = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __VMUCompressedBuffer_block_invoke;
    aBlock[3] = &unk_1E827A520;
    aBlock[5] = &v37;
    aBlock[6] = lengthCopy;
    aBlock[4] = &v33;
    v10 = _Block_copy(aBlock);
    v11 = v10;
    v12 = *(v34 + 6);
    if (v12 == 1)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x9010000000;
      memset(&v31.avail_in, 0, 104);
      v30 = &unk_1C6872315;
      v31.next_in = bytes;
      v31.avail_in = lengthCopy;
      v13 = deflateInit2_(&v31, 1, 8, 31, 9, 0, "1.2.12", 112);
      if (v13)
      {
        NSLog(&cfstr_UnableToInitia.isa, v13, *(v28 + 80));
        _Block_object_dispose(&v27, 8);
        lengthCopy = 0;
LABEL_21:

        _Block_object_dispose(&v33, 8);
        _Block_object_dispose(&v37, 8);

        goto LABEL_22;
      }

      v14 = deflateBound((v28 + 32), lengthCopy);
      v26[6] = MEMORY[0x1E69E9820];
      v26[7] = 3221225472;
      v26[8] = __VMUCompressedBuffer_block_invoke_2;
      v26[9] = &unk_1E827A548;
      v26[10] = &v27;
      v26[11] = v14;
      v11[2](v11);
      _Block_object_dispose(&v27, 8);
    }

    else if (v12 == 2)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __VMUCompressedBuffer_block_invoke_3;
      v30 = &__block_descriptor_56_e9_Q16__0_v8l;
      v31.next_in = bytes;
      *&v31.avail_in = lengthCopy;
      v31.total_in = (lengthCopy * 1.2);
      v10[2](v10);
    }

    v15 = v38;
    if (!v38[5])
    {
      *(v34 + 6) = 0;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __VMUCompressedBuffer_block_invoke_4;
      v26[3] = &__block_descriptor_48_e9_Q16__0_v8l;
      v26[4] = bytes;
      v26[5] = lengthCopy;
      (v11[2])(v11, lengthCopy, 0, v26);
      v15 = v38;
    }

    if (kVMUPrintArchivingTiming == 1)
    {
      v16 = v15[5];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v18 = v17;
      v19 = [v16 length];
      v20 = v19;
      if (v19 <= lengthCopy)
      {
        v21 = lengthCopy;
      }

      else
      {
        v21 = v19;
      }

      v22 = v18 - v9;
      if (v22 <= 0.0)
      {
        v24 = *MEMORY[0x1E69E9848];
        VMUMemorySizeString(lengthCopy);
        VMUMemorySizeString(v20);
        fprintf(v24, "Compressed %s to %s (%2.1f%% reduction) in %3.6fs\n");
      }

      else
      {
        VMUMemorySizeString(((v21 - v19) / v22));
        v23 = *MEMORY[0x1E69E9848];
        VMUMemorySizeString(lengthCopy);
        VMUMemorySizeString(v20);
        fprintf(v23, "Compressed %s to %s (%2.1f%% reduction @ %s saved/s) in %3.6fs\n");
      }

      v15 = v38;
    }

    lengthCopy = v15[5];
    goto LABEL_21;
  }

LABEL_22:

  return lengthCopy;
}

+ (void)_copyUnarchived:(id)unarchived length:(unint64_t *)length options:(unint64_t)options
{
  unarchivedCopy = unarchived;
  if ([unarchivedCopy length] <= 0xF)
  {
    goto LABEL_7;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v8 = v7;
  bytes = [unarchivedCopy bytes];
  v11 = bytes[1];
  v10 = bytes[2];
  v12 = !v10 || v11 == 0;
  if (v12 || (v13 = *bytes, v14 = bytes[3], [unarchivedCopy length] < (v11 + v13)))
  {
LABEL_7:
    if (length)
    {
      v15 = 0;
      *length = 0;
      goto LABEL_44;
    }

LABEL_43:
    v15 = 0;
    goto LABEL_44;
  }

  v15 = malloc_type_malloc(v10, 0x13DE236DuLL);
  v16 = HIWORD(v14);
  if (!HIWORD(v14))
  {
    v24 = [unarchivedCopy length];
    if (v24 >= v13 && v11 == v10 && v24 - v13 >= v10)
    {
      memcpy(v15, ([unarchivedCopy bytes] + v13), v10);
      v17 = v10;
      goto LABEL_34;
    }

    NSLog(&cfstr_MalformedNonCo.isa);
    goto LABEL_33;
  }

  if (v16 != 2)
  {
    v17 = v10;
    if (v16 != 1)
    {
      goto LABEL_34;
    }

    bytes2 = [unarchivedCopy bytes];
    v19 = [unarchivedCopy length];
    memset(&strm.avail_in, 0, 104);
    strm.next_in = (bytes2 + v13);
    v20 = v19 - v13;
    if (v19 < v13)
    {
      v20 = 0;
    }

    strm.avail_in = v20;
    v21 = inflateInit2_(&strm, 31, "1.2.12", 112);
    if (v21)
    {
      NSLog(&cfstr_UnableToInitia_1.isa, v21, strm.msg);
    }

    else
    {
      strm.next_out = v15;
      strm.avail_out = v10;
      v25 = inflate(&strm, 4);
      inflateEnd(&strm);
      v17 = v10;
      if (v25 == 1)
      {
        goto LABEL_34;
      }

      NSLog(&cfstr_UnableToDecomp.isa, v25, strm.msg);
    }

    goto LABEL_33;
  }

  bytes3 = [unarchivedCopy bytes];
  memset(&strm, 0, 40);
  if (compression_stream_init(&strm, COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE) == COMPRESSION_STATUS_ERROR)
  {
    NSLog(&cfstr_UnableToInitia_0.isa);
LABEL_33:
    v17 = 0;
    goto LABEL_34;
  }

  strm.total_in = bytes3 + v13;
  strm.next_out = v11;
  strm.next_in = v15;
  *&strm.avail_in = v10;
  v23 = compression_stream_process(&strm, 0);
  if (v23 == COMPRESSION_STATUS_ERROR)
  {
    NSLog(&cfstr_ErrorCompressi.isa);
    goto LABEL_33;
  }

  if (v23 == COMPRESSION_STATUS_OK)
  {
    NSLog(&cfstr_ErrorCompressi_0.isa);
    goto LABEL_33;
  }

  if (v23 != COMPRESSION_STATUS_END || (v17 = (strm.next_in - v15), strm.next_in <= v15))
  {
    v17 = 0;
  }

  compression_stream_destroy(&strm);
LABEL_34:
  if (kVMUPrintArchivingTiming == 1)
  {
    v26 = MEMORY[0x1E695DF00];
    v27 = unarchivedCopy;
    [v26 timeIntervalSinceReferenceDate];
    v29 = v28;
    v30 = [v27 length];

    if (v30 <= v10)
    {
      v31 = v10;
    }

    else
    {
      v31 = v30;
    }

    v32 = 100.0 - v30 * 100.0 / v31;
    v33 = *MEMORY[0x1E69E9848];
    v34 = VMUMemorySizeString(v30);
    v35 = VMUMemorySizeString(v10);
    fprintf(v33, "Decompressed %s to %s (reversed %2.1f%% reduction) in %3.6fs\n", v34, v35, v32, v29 - v8);
  }

  if (length)
  {
    *length = v17;
  }

  if (v17 != v10)
  {
    free(v15);
    goto LABEL_43;
  }

LABEL_44:

  return v15;
}

+ (id)_archivedObject:(id)object options:(unint64_t)options
{
  optionsCopy = options;
  objectCopy = object;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:0];
  bytes = [v6 bytes];
  v8 = [v6 length];
  if (v8)
  {
    v9 = optionsCopy & 1;
    if ((optionsCopy & 4) != 0)
    {
      v9 = 2;
    }

    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__9;
    v43 = __Block_byref_object_dispose__9;
    v44 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = v9;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v11 = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __VMUCompressedBuffer_block_invoke;
    aBlock[3] = &unk_1E827A520;
    aBlock[5] = &v39;
    aBlock[6] = v8;
    aBlock[4] = &v35;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    v14 = *(v36 + 6);
    if (v14 == 1)
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x9010000000;
      memset(&v33.avail_in, 0, 104);
      v32 = &unk_1C6872315;
      v33.next_in = bytes;
      v33.avail_in = v8;
      v15 = deflateInit2_(&v33, 1, 8, 31, 9, 0, "1.2.12", 112);
      if (v15)
      {
        NSLog(&cfstr_UnableToInitia.isa, v15, *(v30 + 80));
        _Block_object_dispose(&v29, 8);
        v8 = 0;
LABEL_21:

        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&v39, 8);

        goto LABEL_22;
      }

      v16 = deflateBound((v30 + 32), v8);
      v28[6] = MEMORY[0x1E69E9820];
      v28[7] = 3221225472;
      v28[8] = __VMUCompressedBuffer_block_invoke_2;
      v28[9] = &unk_1E827A548;
      v28[10] = &v29;
      v28[11] = v16;
      v13[2](v13);
      _Block_object_dispose(&v29, 8);
    }

    else if (v14 == 2)
    {
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __VMUCompressedBuffer_block_invoke_3;
      v32 = &__block_descriptor_56_e9_Q16__0_v8l;
      v33.next_in = bytes;
      *&v33.avail_in = v8;
      v33.total_in = (v8 * 1.2);
      v12[2](v12);
    }

    v17 = v40;
    if (!v40[5])
    {
      *(v36 + 6) = 0;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __VMUCompressedBuffer_block_invoke_4;
      v28[3] = &__block_descriptor_48_e9_Q16__0_v8l;
      v28[4] = bytes;
      v28[5] = v8;
      (v13[2])(v13, v8, 0, v28);
      v17 = v40;
    }

    if (kVMUPrintArchivingTiming == 1)
    {
      v18 = v17[5];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v20 = v19;
      v21 = [v18 length];
      v22 = v21;
      if (v21 <= v8)
      {
        v23 = v8;
      }

      else
      {
        v23 = v21;
      }

      v24 = v20 - v11;
      if (v24 <= 0.0)
      {
        v26 = *MEMORY[0x1E69E9848];
        VMUMemorySizeString(v8);
        VMUMemorySizeString(v22);
        fprintf(v26, "Compressed %s to %s (%2.1f%% reduction) in %3.6fs\n");
      }

      else
      {
        VMUMemorySizeString(((v23 - v21) / v24));
        v25 = *MEMORY[0x1E69E9848];
        VMUMemorySizeString(v8);
        VMUMemorySizeString(v22);
        fprintf(v25, "Compressed %s to %s (%2.1f%% reduction @ %s saved/s) in %3.6fs\n");
      }

      v17 = v40;
    }

    v8 = v17[5];
    goto LABEL_21;
  }

LABEL_22:

  return v8;
}

+ (id)_unarchivedObject:(id)object ofClass:(Class)class options:(unint64_t)options
{
  v8 = MEMORY[0x1E695DFD8];
  objectCopy = object;
  v10 = [v8 setWithObject:class];
  v11 = [self _unarchivedObject:objectCopy ofClasses:v10 options:options];

  return v11;
}

+ (id)_unarchivedObject:(id)object ofClasses:(id)classes options:(unint64_t)options
{
  v59 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  classesCopy = classes;
  v8 = objectCopy;
  if ([v8 length] < 0x10)
  {
    goto LABEL_41;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v10 = v9;
  bytes = [v8 bytes];
  v12 = bytes[1];
  v13 = bytes[2];
  if (!v13 || v12 == 0)
  {
    goto LABEL_41;
  }

  v15 = *bytes;
  v16 = bytes[3];
  if ([v8 length] < (v12 + v15))
  {
    goto LABEL_41;
  }

  v17 = malloc_type_malloc(v13, 0x13DE236DuLL);
  v18 = HIWORD(v16);
  if (!HIWORD(v16))
  {
    v26 = [v8 length];
    if (v26 >= v15 && v12 == v13 && v26 - v15 >= v13)
    {
      memcpy(v17, ([v8 bytes] + v15), v13);
      v19 = v13;
      goto LABEL_32;
    }

    NSLog(&cfstr_MalformedNonCo.isa);
    goto LABEL_31;
  }

  if (v18 != 2)
  {
    v19 = v13;
    if (v18 != 1)
    {
      goto LABEL_32;
    }

    bytes2 = [v8 bytes];
    v21 = [v8 length];
    memset(&strm.avail_in, 0, 104);
    strm.next_in = (bytes2 + v15);
    v22 = v21 - v15;
    if (v21 < v15)
    {
      v22 = 0;
    }

    strm.avail_in = v22;
    v23 = inflateInit2_(&strm, 31, "1.2.12", 112);
    if (v23)
    {
      NSLog(&cfstr_UnableToInitia_1.isa, v23, strm.msg);
    }

    else
    {
      strm.next_out = v17;
      strm.avail_out = v13;
      v27 = inflate(&strm, 4);
      inflateEnd(&strm);
      v19 = v13;
      if (v27 == 1)
      {
        goto LABEL_32;
      }

      NSLog(&cfstr_UnableToDecomp.isa, v27, strm.msg);
    }

    goto LABEL_31;
  }

  bytes3 = [v8 bytes];
  memset(&strm, 0, 40);
  if (compression_stream_init(&strm, COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE) == COMPRESSION_STATUS_ERROR)
  {
    NSLog(&cfstr_UnableToInitia_0.isa);
LABEL_31:
    v19 = 0;
    goto LABEL_32;
  }

  strm.total_in = bytes3 + v15;
  strm.next_out = v12;
  strm.next_in = v17;
  *&strm.avail_in = v13;
  v25 = compression_stream_process(&strm, 0);
  if (v25 == COMPRESSION_STATUS_ERROR)
  {
    NSLog(&cfstr_ErrorCompressi.isa);
    goto LABEL_31;
  }

  if (v25 == COMPRESSION_STATUS_OK)
  {
    NSLog(&cfstr_ErrorCompressi_0.isa);
    goto LABEL_31;
  }

  if (v25 != COMPRESSION_STATUS_END || (v19 = (strm.next_in - v17), strm.next_in <= v17))
  {
    v19 = 0;
  }

  compression_stream_destroy(&strm);
LABEL_32:
  if (kVMUPrintArchivingTiming == 1)
  {
    v28 = MEMORY[0x1E695DF00];
    v29 = v8;
    [v28 timeIntervalSinceReferenceDate];
    v31 = v30;
    v32 = [v29 length];

    if (v32 <= v13)
    {
      v33 = v13;
    }

    else
    {
      v33 = v32;
    }

    v34 = 100.0 - v32 * 100.0 / v33;
    v35 = *MEMORY[0x1E69E9848];
    v36 = VMUMemorySizeString(v32);
    v37 = VMUMemorySizeString(v13);
    fprintf(v35, "Decompressed %s to %s (reversed %2.1f%% reduction) in %3.6fs\n", v36, v37, v34, v31 - v10);
  }

  if (v19 != v13)
  {
    free(v17);
LABEL_41:

    goto LABEL_42;
  }

  if (v17)
  {
    v38 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v17 length:v13 freeWhenDone:1];
    goto LABEL_43;
  }

LABEL_42:
  v38 = 0;
LABEL_43:

  if ([v38 length])
  {
    v51 = v38;
    v39 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v38 error:0];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v52 = classesCopy;
    v40 = classesCopy;
    v41 = [v40 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v54;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v54 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v53 + 1) + 8 * i);
          v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:class_getName(v45)];
          if ([v46 containsString:@"VMU"])
          {
            if ([v46 hasPrefix:@"DVT_"])
            {
              [v46 substringFromIndex:4];
            }

            else
            {
              [@"DVT_" stringByAppendingString:v46];
            }
            v47 = ;
            [v39 setClass:v45 forClassName:v46];
            [v39 setClass:v45 forClassName:v47];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v42);
    }

    v48 = [v39 decodeObjectOfClasses:v40 forKey:*MEMORY[0x1E696A508]];

    v38 = v51;
    classesCopy = v52;
  }

  else
  {
    v48 = 0;
  }

  v49 = *MEMORY[0x1E69E9840];

  return v48;
}

- (VMUDirectedGraph)initWithNodes:(unsigned int)nodes
{
  v5.receiver = self;
  v5.super_class = VMUDirectedGraph;
  result = [(VMUDirectedGraph *)&v5 init];
  if (result)
  {
    if (nodes)
    {
      result->_nodeCount = nodes;
      result->_nextNodeName = nodes;
      result->_graphIs64bit = 1;
      *&result->_graphCompatibilityVersion = vdupq_n_s64(2uLL);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

+ (id)directedGraphWithData:(id)data error:(id *)error
{
  dataCopy = data;
  if (dataCopy)
  {
    v12 = [[self alloc] initWithPlistRepresentation:dataCopy error:error];
  }

  else if (error)
  {
    VMUDirectedGraphErrorWithExtraUserInfo(1u, 0, @"Data parameter cannot be nil.", v6, v7, v8, v9, v10, v14);
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)decapsulatePlistData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([dataCopy length] <= 0x30 || *objc_msgSend(dataCopy, "bytes") != 0x48504152474D454DLL)
  {
    v6 = dataCopy;
LABEL_4:
    v7 = v6;
    goto LABEL_5;
  }

  bytes = [dataCopy bytes];
  if (bytes[1])
  {
    if (error)
    {
      VMUDirectedGraphErrorWithExtraUserInfo(1u, 0, @"Version %llu of memory graph is not supported by the currently installed tools", v10, v11, v12, v13, v14, bytes[1]);
LABEL_17:
      *error = v7 = 0;
      goto LABEL_5;
    }
  }

  else
  {
    v15 = bytes[2];
    if (v15 != -1)
    {
      v10 = bytes[3];
      if (v10 != -1 && v10 + v15 != -1)
      {
        v6 = [dataCopy subdataWithRange:?];
        goto LABEL_4;
      }
    }

    if (error)
    {
      v16 = bytes[3];
      VMUDirectedGraphErrorWithExtraUserInfo(1u, 0, @"This platform cannot map in the memory graph plist at offset %llu of size %llu", v10, v11, v12, v13, v14, bytes[2]);
      goto LABEL_17;
    }
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)decapsulateSupplementalData:(id)data forTag:(const char *)tag
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length] < 0x31)
  {
    goto LABEL_3;
  }

  if (*[dataCopy bytes] != 0x48504152474D454DLL)
  {
    goto LABEL_3;
  }

  bytes = [dataCopy bytes];
  if (!*(bytes + 40))
  {
    goto LABEL_3;
  }

  v10 = bytes;
  v11 = 0;
  while (1)
  {
    v12 = *(v10 + 32) + v11 * *(v10 + 44);
    if (v12 + 32 < [dataCopy length])
    {
      bytes2 = [dataCopy bytes];
      if (strlen(tag) >= 9)
      {
        [VMUDirectedGraph decapsulateSupplementalData:forTag:];
      }

      v14 = (bytes2 + v12);
      strncpy(__dst, tag, 8uLL);
      if (*__dst == *v14)
      {
        break;
      }
    }

    if (++v11 >= *(v10 + 40))
    {
      goto LABEL_3;
    }
  }

  v15 = v14[2];
  if (v15 == -1 || ((v16 = v14[3], v16 != -1) ? (v17 = v16 + v15 == -1) : (v17 = 1), v17))
  {
LABEL_3:
    v6 = 0;
  }

  else
  {
    v6 = [dataCopy subdataWithRange:?];
    if (kVMUPrintArchivingTiming == 1)
    {
      v18 = "";
      if (!v14[3])
      {
        v18 = "STACK LOGS FAILED TO SAVE";
      }

      fprintf(*MEMORY[0x1E69E9848], "[Full Stack Log History] dataOffset: %llu  dataSize: %llu  %s\n\n", v14[2], v14[3], v18);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)encapsulateData:(id)data to:(id)to withSupplementalDataTag:(const char *)tag error:(id *)error dataGeneratorBlock:(id)block
{
  v48 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  toCopy = to;
  blockCopy = block;
  v14 = [dataCopy length];
  v15 = v14 + 48;
  v43 = xmmword_1C6858490;
  v44 = 48;
  v45 = [dataCopy length];
  v46 = v14 + 48;
  v47 = 0x30002000000001;
  if (nsfilehandle_write(toCopy, &v43, 48, error) && [toCopy writeData:dataCopy error:error])
  {
    v16 = -v14 & 0xFLL;
    v38 = 0;
    v39 = &v38;
    v40 = 0x4010000000;
    v17 = v14 + v16 + 80;
    v41 = &unk_1C6872315;
    v42[0] = 0;
    v42[1] = 0;
    v42[2] = v17;
    v42[3] = 0;
    if (strlen(tag) > 8)
    {
      v23 = "strlen(tag) <= 8";
      v24 = 310;
    }

    else
    {
      strncpy(v42, tag, 8uLL);
      if ([toCopy offsetInFile] == v15)
      {
        if (!nsfilehandle_write(toCopy, (v39 + 4), 32, error) || (*(v37 + 7) = 0, v37[0] = 0, (nsfilehandle_write(toCopy, v37, v16, error) & 1) == 0))
        {
          v20 = 0;
LABEL_19:
          _Block_object_dispose(&v38, 8);
          goto LABEL_20;
        }

        if ([toCopy offsetInFile] == v17)
        {
          if (([toCopy offsetInFile] & 0xF) == 0)
          {
            v31 = 0;
            v32 = &v31;
            v33 = 0x3032000000;
            v34 = __Block_byref_object_copy__9;
            v35 = __Block_byref_object_dispose__9;
            v36 = 0;
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __88__VMUDirectedGraph_encapsulateData_to_withSupplementalDataTag_error_dataGeneratorBlock___block_invoke;
            v27[3] = &unk_1E827A438;
            v18 = toCopy;
            v28 = v18;
            v29 = &v31;
            v30 = &v38;
            if (blockCopy[2](blockCopy, v27))
            {
              if (error)
              {
                v19 = v32[5];
                if (v19)
                {
                  v20 = 0;
                  *error = v19;
LABEL_18:

                  _Block_object_dispose(&v31, 8);
                  goto LABEL_19;
                }
              }
            }

            else
            {
              [v18 seekToFileOffset:v15];
              if (nsfilehandle_write(v18, (v39 + 4), 32, error))
              {
                [v18 seekToEndOfFile];
                v20 = 1;
                goto LABEL_18;
              }
            }

            v20 = 0;
            goto LABEL_18;
          }

          v25 = "([fh offsetInFile] % 16) == 0";
          v26 = 323;
        }

        else
        {
          v25 = "[fh offsetInFile] == supplementalDataOffset";
          v26 = 322;
        }

        __assert_rtn("+[VMUDirectedGraph encapsulateData:to:withSupplementalDataTag:error:dataGeneratorBlock:]", "VMUDirectedGraph.m", v26, v25);
      }

      v23 = "[fh offsetInFile] == supplementalHeaderOffset";
      v24 = 312;
    }

    __assert_rtn("+[VMUDirectedGraph encapsulateData:to:withSupplementalDataTag:error:dataGeneratorBlock:]", "VMUDirectedGraph.m", v24, v23);
  }

  v20 = 0;
LABEL_20:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t __88__VMUDirectedGraph_encapsulateData_to_withSupplementalDataTag_error_dataGeneratorBlock___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = *(a1[5] + 8);
  obj = *(v6 + 40);
  v7 = nsfilehandle_write(v5, a2, a3, &obj);
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 5;
  }

  result = 0;
  *(*(a1[6] + 8) + 56) += a3;
  return result;
}

- (id)decapsulateIPSheaderInData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([dataCopy bytes])
  {
    if (*[dataCopy bytes] == 123)
    {
      bytes = [dataCopy bytes];
      if (*(bytes + [dataCopy length] - 1) == 10)
      {
        v7 = memchr([dataCopy bytes], 10, objc_msgSend(dataCopy, "length"));
        if (v7)
        {
          v8 = &v7[-[dataCopy bytes]];
          v9 = [dataCopy subdataWithRange:{0, v8}];
          v38 = 0;
          v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:1 error:&v38];
          v11 = v38;
          if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v12 = v10;
            v13 = [dataCopy length];
            v14 = [v12 objectForKey:@"length"];
            v15 = &v8[([v14 intValue] + 2)];

            if (v13 == v15)
            {
              v26 = [v12 objectForKey:@"bug_type"];
              if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v26 isEqualToString:@"154"] & 1) != 0)
              {
                v27 = [dataCopy subdataWithRange:{v8 + 1, objc_msgSend(dataCopy, "length") - v8 - 2}];

                v28 = 1;
                dataCopy = v27;
              }

              else if (error)
              {
                VMUDirectedGraphErrorWithExtraUserInfo(1u, 0, @"Invalid bug type in IPS header.", v21, v22, v23, v24, v25, v37);
                *error = v28 = 0;
              }

              else
              {
                v28 = 0;
              }
            }

            else if (error)
            {
              VMUDirectedGraphErrorWithExtraUserInfo(1u, 0, @"IPS length is invalid.", v16, v17, v18, v19, v20, v37);
              *error = v28 = 0;
            }

            else
            {
              v28 = 0;
            }

            if (v28)
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (error)
            {
              localizedDescription = [v11 localizedDescription];
              *error = VMUDirectedGraphErrorWithExtraUserInfo(1u, 0, @"Invalid IPS header: %@", v30, v31, v32, v33, v34, localizedDescription);
            }
          }

          v35 = 0;
          goto LABEL_25;
        }
      }
    }
  }

LABEL_24:
  dataCopy = dataCopy;
  v35 = dataCopy;
LABEL_25:

  return v35;
}

- (VMUDirectedGraph)initWithPlistRepresentation:(id)representation error:(id *)error
{
  v75[2] = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v73 = 0;
  v8 = [(VMUDirectedGraph *)self decapsulateIPSheaderInData:representation error:&v73];
  v9 = v73;
  if (!v8)
  {
    v17 = 0;
    v18 = 0;
LABEL_34:
    objc_autoreleasePoolPop(v7);
    goto LABEL_35;
  }

  v10 = [(VMUDirectedGraph *)self decapsulateSupplementalData:v8 forTag:"DISKLOGS"];
  v11 = v10;
  if (v10 && ![v10 length])
  {
    v17 = VMUDirectedGraphErrorWithExtraUserInfo(4u, 0, @"Memgraph file contained full stack log history header, but failed to store the actual stack log data.", v12, v13, v14, v15, v16, v64);

    v11 = 0;
  }

  else
  {
    v17 = 0;
  }

  v72 = v9;
  v18 = [(VMUDirectedGraph *)self decapsulatePlistData:v8 error:&v72];
  v19 = v72;

  if (!v18)
  {
LABEL_33:

    v9 = v19;
    goto LABEL_34;
  }

  v70 = 0;
  v71 = 0;
  v20 = [MEMORY[0x1E696AE40] propertyListWithData:v18 options:0 format:&v71 error:&v70];
  v21 = v70;

  if (!v20)
  {
LABEL_32:

    v19 = v21;
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = VMUDirectedGraphErrorWithExtraUserInfo(1u, 0, @"File does not contain a memory graph in the correct format", v22, v23, v24, v25, v26, v64);
    v44 = v21;
LABEL_31:

    v21 = v43;
    goto LABEL_32;
  }

  v27 = [v20 objectForKeyedSubscript:@"graphCompatibilityVersion"];
  self->_graphCompatibilityVersion = [v27 integerValue];

  v28 = [v20 objectForKeyedSubscript:@"graphEncodingVersion"];
  self->_graphVersion = [v28 integerValue];

  graphCompatibilityVersion = self->_graphCompatibilityVersion;
  if (!graphCompatibilityVersion || graphCompatibilityVersion >= 3)
  {
    v74[0] = @"VMUDirectedGraphCompatibilityVersionNumberInGraphKey";
    v45 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v74[1] = @"VMUDirectedGraphToolCompatibilityVersionKey";
    v75[0] = v45;
    v75[1] = &unk_1F4638B58;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];

    if (self->_graphCompatibilityVersion)
    {
      VMUDirectedGraphErrorWithExtraUserInfo(3u, v44, @"The graph version (%ld) is too new.  The latest graph version this tool supports is %d.", v46, v47, v48, v49, v50, self->_graphCompatibilityVersion);
    }

    else
    {
      VMUDirectedGraphErrorWithExtraUserInfo(2u, v44, @"File does not contain memory graph version information (not in correct format)", v46, v47, v48, v49, v50, v64);
    }
    v43 = ;

    goto LABEL_31;
  }

  v30 = [v20 objectForKeyedSubscript:@"nodes"];
  self->_nodeCount = [v30 unsignedIntValue];

  v31 = [v20 objectForKeyedSubscript:@"nodeNamespaceSize"];
  self->_nextNodeName = [v31 unsignedIntValue];

  v32 = [v20 objectForKeyedSubscript:@"edges"];
  self->_externalEdges = [v32 unsignedIntValue];

  v33 = [v20 objectForKeyedSubscript:@"edgeNamespaceSize"];
  self->_nextEdgeName = [v33 unsignedIntValue];

  v34 = [v20 objectForKeyedSubscript:@"additionalProperties"];
  v35 = [v34 copy];
  additionalProperties = self->_additionalProperties;
  self->_additionalProperties = v35;

  v37 = [v20 objectForKey:@"graphIs64bit"];
  v68 = v37;
  if (v37)
  {
    bOOLValue = [v37 BOOLValue];
    self->_graphIs64bit = bOOLValue;
    if ((bOOLValue & 1) == 0 && (nodeCount = self->_nodeCount, nodeCount > 0x3FFFFFFE) || ((nodeCount = self->_nextNodeName, nodeCount < 0x3FFFFFFF) ? (v40 = 1) : (v40 = bOOLValue), v40 != 1))
    {
      v42 = "node";
      goto LABEL_28;
    }

    nodeCount = self->_nextEdgeName;
    if (nodeCount < 0x15555555)
    {
      v41 = 1;
    }

    else
    {
      v41 = bOOLValue;
    }

    if ((v41 & 1) == 0)
    {
      v42 = "reference";
LABEL_28:
      NSLog(&cfstr_MemoryGraphHas.isa, v42, nodeCount);
      v9 = VMUDirectedGraphErrorWithExtraUserInfo(1u, 0, @"Memory graph is too large to open", v51, v52, v53, v54, v55, v65);
      v56 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    self->_graphIs64bit = 1;
  }

  v66 = [v20 objectForKeyedSubscript:@"details"];
  graphVersion = self->_graphVersion;
  v67 = [v20 objectForKeyedSubscript:@"options"];
  v69 = v21;
  v63 = -[VMUDirectedGraph initWithArchived:version:options:diskLogs:error:](self, "initWithArchived:version:options:diskLogs:error:", v66, graphVersion, [v67 unsignedIntValue], v11, &v69);
  v9 = v69;

  v56 = v63;
  v21 = v66;
  self = v56;
LABEL_41:

  objc_autoreleasePoolPop(v7);
  if (v56)
  {
    v58 = v56;

    if (!error)
    {
      v57 = v17;
      goto LABEL_38;
    }

    v57 = v17;
    if (!v17)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_35:
  v57 = v17;

  v58 = 0;
  if (error)
  {
    v17 = v9;
    if (v9)
    {
LABEL_37:
      v59 = v17;
      *error = v17;
    }
  }

LABEL_38:

  v60 = *MEMORY[0x1E69E9840];
  return v58;
}

- (VMUDirectedGraph)initWithArchived:(id)archived version:(int64_t)version options:(unint64_t)options diskLogs:(id)logs error:(id *)error
{
  v54[1] = *MEMORY[0x1E69E9840];
  archivedCopy = archived;
  v52.receiver = self;
  v52.super_class = VMUDirectedGraph;
  v12 = [(VMUDirectedGraph *)&v52 init];
  if (!v12)
  {
LABEL_44:
    v26 = v12;
    goto LABEL_45;
  }

  v13 = [archivedCopy objectForKeyedSubscript:@"directedGraphInfo"];
  v14 = [v13 objectForKeyedSubscript:@"compactEdgeList"];
  if (!v14)
  {
    v51 = 0;
    v18 = [v13 objectForKeyedSubscript:@"sparseEdgeList"];
    v12->_edges = [VMUDirectedGraph _copyUnarchived:v18 length:&v51 options:options];

    v19 = v51 / 0xC;
    v12->_edgeCount = v51 / 0xC;
    v12->_edgeCapacity = v19;
    if (kVMUPrintArchivingTiming == 1)
    {
      fprintf(*MEMORY[0x1E69E9848], "[Sparse Edges] Edge Count: %u\n\n");
    }

    goto LABEL_35;
  }

  edgeNamespaceSize = [(VMUDirectedGraph *)v12 edgeNamespaceSize];
  v12->_edgeCount = edgeNamespaceSize;
  v12->_edgeCapacity = edgeNamespaceSize;
  graphIs64bit = [(VMUDirectedGraph *)v12 graphIs64bit];
  edgeCount = v12->_edgeCount;
  if (graphIs64bit || edgeCount < 0x15555555)
  {
    if (edgeCount)
    {
      v20 = malloc_type_malloc(12 * edgeCount, 0x10000403E1C8BA9uLL);
    }

    else
    {
      v20 = 0;
    }

    v12->_edges = v20;
    v51 = 0;
    v21 = [VMUDirectedGraph _copyUnarchived:v14 length:&v51 options:options];
    v22 = v21;
    v23 = v12->_edgeCount;
    if (v51 < 4 * v23)
    {
      free(v21);
      if (error)
      {
        v24 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A578];
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
        *error = [v24 errorWithDomain:@"com.apple.dt.Symbolication.VMUDirectedGraph" code:1 userInfo:v25];
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VMUDirectedGraph initWithArchived:version:options:diskLogs:error:];
      }

      goto LABEL_16;
    }

    nextNodeName = v12->_nextNodeName;
    if (nextNodeName)
    {
      v28 = __clz(nextNodeName);
      if (version > 1)
      {
        v29 = 32 - v28;
        if (!v23)
        {
          goto LABEL_33;
        }

        goto LABEL_26;
      }

      if (!v23 || __clz(v23) > v28)
      {
        NSLog(&cfstr_MemgraphFileIs.isa);
        free(v22);
        goto LABEL_16;
      }
    }

    else
    {
      if (version >= 2)
      {
        v29 = 0;
        if (!v23)
        {
          goto LABEL_33;
        }

        goto LABEL_26;
      }

      if (!v23)
      {
        goto LABEL_33;
      }
    }

    v29 = 32 - __clz(v23);
LABEL_26:
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    p_var2 = &v12->_edges->var2;
    do
    {
      v35 = *(v21 + v32);
      if ((v35 & 0x80000000) != 0)
      {
        ++v33;
        v31 = v35 & 0x7FFFFFFF;
        v36 = *(v21 + v32 + 1) & 0x7FFFFFFF;
        v37 = 2;
      }

      else
      {
        v31 += v35 >> v29;
        v36 = v35 & ~(-1 << v29);
        v37 = 1;
      }

      *(p_var2 - 2) = v30;
      *(p_var2 - 1) = v31;
      *p_var2 = v36;
      p_var2 += 3;
      v32 += v37;
      ++v30;
    }

    while (v30 < v12->_edgeCount);
LABEL_33:
    free(v21);
    if (kVMUPrintArchivingTiming)
    {
      v38 = v12->_edgeCount;
      fprintf(*MEMORY[0x1E69E9848], "[Dense Edges] Compact: %d Large: %d (%2.2f%%)\n\n");
    }

LABEL_35:
    v39 = [v13 objectForKeyedSubscript:@"inverted"];
    v12->_inverted = [v39 BOOLValue];

    v40 = [v13 objectForKeyedSubscript:@"deadNodes"];
    v12->_deadNodes = [VMUDirectedGraph _copyUnarchived:v40 length:0 options:options];

    deadNodes = v12->_deadNodes;
    if (deadNodes && kVMUPrintArchivingTiming == 1)
    {
      v44 = *deadNodes;
      v42 = (deadNodes + 1);
      v43 = v44;
      if (v44)
      {
        v45 = 0;
        v46 = 0;
        do
        {
          v47 = *v42++;
          v48 = vcnt_s8(v47);
          v48.i16[0] = vaddlv_u8(v48);
          v46 += v48.i32[0];
          v45 += 8;
        }

        while (v45 < v43);
      }

      else
      {
        v46 = 0;
      }

      fprintf(*MEMORY[0x1E69E9848], "[Dead Nodes Marking Map] Count: %u\n\n", v46);
    }

    v12->_indexedEdges = -1;

    goto LABEL_44;
  }

  NSLog(&cfstr_MemoryGraphHas.isa, "reference", edgeCount);
LABEL_16:

  v26 = 0;
LABEL_45:

  v49 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)archiveDictionaryRepresentation:(id)representation options:(unint64_t)options
{
  representationCopy = representation;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((options & 2) != 0)
  {
    goto LABEL_27;
  }

  edgeCount = self->_edgeCount;
  if (edgeCount == self->_nextEdgeName && (self->_nextNodeName & 0x80000000) == 0)
  {
    [(VMUDirectedGraph *)self _reorderEdgesNaturally];
    nextNodeName = self->_nextNodeName;
    v9 = 32 - __clz(nextNodeName);
    if (nextNodeName)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = self->_edgeCount;
    if (v11)
    {
      v12 = malloc_type_malloc(8 * v11, 0x100004052888210uLL);
      v13 = v12;
      if (self->_edgeCount)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        do
        {
          if (v14 * 12)
          {
            v18 = &self->_edges[v14];
            var1 = v18[-1].var1;
            LODWORD(v18) = v18->var1;
            v20 = v18 >= var1;
            v21 = v18 - var1;
            if (!v20)
            {
              v21 = -1;
            }
          }

          else
          {
            v21 = -1;
          }

          edges = self->_edges;
          if (v21 <= (0x80000000 >> v10) - 1)
          {
            *(v12 + v16++) = (edges[v14].var2 | (v21 << v10)) & 0x7FFFFFFF;
          }

          else
          {
            ++v17;
            v23 = v16 + 1;
            *(v12 + v16) = edges[v14].var1 | 0x80000000;
            v16 += 2;
            *(v12 + v23) = self->_edges[v14].var2 | 0x80000000;
          }

          ++v15;
          ++v14;
        }

        while (v15 < self->_edgeCount);
        v24 = 4 * v16;
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
    }

    v24 = 0;
LABEL_23:
    v27 = [VMUDirectedGraph _archivedBytes:v13 length:v24 options:options];
    [dictionary setObject:v27 forKeyedSubscript:@"compactEdgeList"];

    if (v13)
    {
      free(v13);
    }

    if (kVMUPrintArchivingTiming == 1)
    {
      v28 = self->_edgeCount;
      fprintf(*MEMORY[0x1E69E9848], "[Dense Edges] Compact: %d Large: %d (%2.2f%%)\n\n");
    }

    goto LABEL_27;
  }

  v25 = [VMUDirectedGraph _archivedBytes:self->_edges length:12 * edgeCount options:options];
  [dictionary setObject:v25 forKeyedSubscript:@"sparseEdgeList"];

  if (kVMUPrintArchivingTiming == 1)
  {
    v26 = self->_edgeCount;
    fprintf(*MEMORY[0x1E69E9848], "[Sparse Edges] Edge Count: %u\n\n");
  }

LABEL_27:
  if (self->_nodeCount != self->_nextNodeName)
  {
    v29 = (*self->_deadNodes + 7) >> 3;
    v30 = [VMUDirectedGraph _archivedBytes:"_archivedBytes:length:options:" length:? options:?];
    [dictionary setObject:v30 forKeyedSubscript:@"deadNodes"];

    if (kVMUPrintArchivingTiming == 1)
    {
      deadNodes = self->_deadNodes;
      v34 = *deadNodes;
      v32 = (deadNodes + 1);
      v33 = v34;
      if (v34)
      {
        v35 = 0;
        v36 = 0;
        do
        {
          v37 = *v32++;
          v38 = vcnt_s8(v37);
          v38.i16[0] = vaddlv_u8(v38);
          v36 += v38.i32[0];
          v35 += 8;
        }

        while (v35 < v33);
      }

      else
      {
        v36 = 0;
      }

      fprintf(*MEMORY[0x1E69E9848], "[Dead Nodes Marking Map] Count: %u\n\n", v36);
    }
  }

  v39 = [MEMORY[0x1E696AD98] numberWithBool:self->_inverted];
  [dictionary setObject:v39 forKeyedSubscript:@"inverted"];

  [representationCopy setObject:dictionary forKeyedSubscript:@"directedGraphInfo"];
}

- (id)plistRepresentationWithOptions:(unint64_t)options fromOriginalMemgraph:(id)memgraph
{
  memgraphCopy = memgraph;
  v7 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_graphVersion];
  [dictionary setObject:v9 forKeyedSubscript:@"graphEncodingVersion"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_graphCompatibilityVersion];
  [dictionary setObject:v10 forKeyedSubscript:@"graphCompatibilityVersion"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_graphIs64bit];
  [dictionary setObject:v11 forKeyedSubscript:@"graphIs64bit"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_nodeCount];
  [dictionary setObject:v12 forKeyedSubscript:@"nodes"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_nextNodeName];
  [dictionary setObject:v13 forKeyedSubscript:@"nodeNamespaceSize"];

  if ((options & 2) == 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_externalEdges];
    [dictionary setObject:v14 forKeyedSubscript:@"edges"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_nextEdgeName];
  [dictionary setObject:v15 forKeyedSubscript:@"edgeNamespaceSize"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  [dictionary setObject:v16 forKeyedSubscript:@"options"];

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [(VMUDirectedGraph *)self archiveDictionaryRepresentation:dictionary2 options:options];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"details"];
  additionalProperties = self->_additionalProperties;
  if (additionalProperties)
  {
    [dictionary setObject:additionalProperties forKeyedSubscript:@"additionalProperties"];
  }

  if (!memgraphCopy)
  {
    goto LABEL_9;
  }

  v19 = MEMORY[0x1E696AE40];
  v20 = [(VMUDirectedGraph *)self decapsulatePlistData:memgraphCopy error:0];
  v41 = 0;
  v21 = [v19 propertyListWithData:v20 options:0 format:0 error:&v41];
  v22 = v41;

  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __72__VMUDirectedGraph_plistRepresentationWithOptions_fromOriginalMemgraph___block_invoke;
      v39[3] = &unk_1E82792D0;
      v40 = dictionary;
      [v21 enumerateKeysAndObjectsUsingBlock:v39];

LABEL_9:
      v28 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:200 options:0 error:0];
      goto LABEL_13;
    }

    v36 = VMUDirectedGraphErrorWithExtraUserInfo(1u, 0, @"File does not contain a memory graph in the correct format", v23, v24, v25, v26, v27, v38);
  }

  else
  {
    localizedFailureReason = [v22 localizedFailureReason];
    v35 = VMUDirectedGraphErrorWithExtraUserInfo(1u, 0, @"Unable to deserialize the memgraph %@", v30, v31, v32, v33, v34, localizedFailureReason);
  }

  v28 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v7);

  return v28;
}

void __72__VMUDirectedGraph_plistRepresentationWithOptions_fromOriginalMemgraph___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

- (void)dealloc
{
  deadNodes = self->_deadNodes;
  if (deadNodes)
  {
    free(deadNodes);
    self->_deadNodes = 0;
  }

  nodeAdjIndex = self->_nodeAdjIndex;
  if (nodeAdjIndex)
  {
    free(nodeAdjIndex);
    self->_nodeAdjIndex = 0;
  }

  edges = self->_edges;
  if (edges)
  {
    free(edges);
    self->_edges = 0;
  }

  v6.receiver = self;
  v6.super_class = VMUDirectedGraph;
  [(VMUDirectedGraph *)&v6 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithNodes:self->_nextNodeName];
  *(v4 + 24) = self->_nodeCount;
  deadNodes = self->_deadNodes;
  if (deadNodes)
  {
    v6 = *deadNodes;
    v7 = malloc_type_calloc(1uLL, ((*deadNodes + 7) >> 3) + 4, 0xB2EC2458uLL);
    *v7 = v6;
    *(v4 + 40) = v7;
    v8 = self->_deadNodes;
    v9 = *v8;
    if (v6 < *v8)
    {
      v9 = v6;
    }

    v10 = v9 + 7;
    if (v10 >= 8)
    {
      v11 = (v8 + 1);
      v12 = v7 + 1;
      v13 = v10 >> 3;
      do
      {
        v14 = *v11++;
        *v12++ |= v14;
        --v13;
      }

      while (v13);
    }
  }

  edgeCount = self->_edgeCount;
  *(v4 + 28) = edgeCount;
  *(v4 + 32) = edgeCount;
  *(v4 + 36) = self->_externalEdges;
  *(v4 + 52) = self->_nextEdgeName;
  v16 = malloc_type_malloc(12 * self->_edgeCount, 0x10000403E1C8BA9uLL);
  *(v4 + 64) = v16;
  memcpy(v16, self->_edges, 12 * self->_edgeCount);
  *(v4 + 80) = -1;
  v17 = [(NSDictionary *)self->_additionalProperties copy];
  v18 = *(v4 + 72);
  *(v4 + 72) = v17;

  *(v4 + 92) = self->_inverted;
  *(v4 + 93) = self->_graphIs64bit;
  return v4;
}

- (unsigned)addNode
{
  ++self->_nodeCount;
  nextNodeName = self->_nextNodeName;
  self->_nextNodeName = nextNodeName + 1;
  return nextNodeName;
}

- (void)_internalAddEdgeFromNode:(unsigned int)node toNode:(unsigned int)toNode withName:
{
  if (result)
  {
    v7 = result;
    v8 = *(result + 7);
    v9 = *(result + 8);
    if (v8 >= v9)
    {
      LODWORD(v10) = 2 * v9;
      if ((2 * v9) <= 0x100)
      {
        v10 = 256;
      }

      else
      {
        v10 = v10;
      }

      v11 = v9 + 174762;
      if (v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      result = malloc_type_realloc(result[8], 12 * v12, 0x10000403E1C8BA9uLL);
      v7[8] = result;
      if (!result)
      {
        NSLog(&cfstr_OutOfMemoryFai_0.isa, *(v7 + 8), v12);
        abort();
      }

      *(v7 + 8) = v12;
      v8 = *(v7 + 7);
    }

    else
    {
      result = result[8];
    }

    if (*(v7 + 92))
    {
      nodeCopy = a2;
    }

    else
    {
      nodeCopy = node;
    }

    if (*(v7 + 92))
    {
      nodeCopy2 = node;
    }

    else
    {
      nodeCopy2 = a2;
    }

    v15 = result + 3 * v8;
    *v15 = toNode;
    v15[1] = nodeCopy2;
    v15[2] = nodeCopy;
    ++*(v7 + 7);
    if (toNode <= 0xFFFFFFFA)
    {
      ++*(v7 + 9);
    }
  }

  return result;
}

- (unsigned)addEdgeFromNode:(unsigned int)node toNode:(unsigned int)toNode
{
  nextNodeName = self->_nextNodeName;
  if (nextNodeName <= node || nextNodeName <= toNode)
  {
    return -1;
  }

  deadNodes = self->_deadNodes;
  if (deadNodes && (*deadNodes > node && ((*(deadNodes + (node >> 3) + 4) >> (node & 7)) & 1) != 0 || *deadNodes > toNode && ((*(deadNodes + (toNode >> 3) + 4) >> (toNode & 7)) & 1) != 0))
  {
    return -1;
  }

  if (self->_inverted)
  {
    nodeCopy = toNode;
  }

  else
  {
    nodeCopy = node;
  }

  if (!self->_inverted)
  {
    node = toNode;
  }

  [(VMUDirectedGraph *)&self->super.isa _internalAddEdgeFromNode:nodeCopy toNode:node withName:self->_nextEdgeName];
  result = self->_nextEdgeName;
  self->_nextEdgeName = result + 1;
  return result;
}

- (void)_removeEdges:(id)edges
{
  edgesCopy = edges;
  if (edgesCopy)
  {
    edgeCount = self->_edgeCount;
    if (edgeCount)
    {
      for (i = 0; i < edgeCount; ++i)
      {
        v7 = &self->_edges[i];
        v3 = v3 & 0xFFFFFFFF00000000 | v7->var2;
        if (edgesCopy[2](edgesCopy, *&v7->var0, v3))
        {
          edges = self->_edges;
          v9 = &edges[i];
          if (v9->var0 <= 0xFFFFFFFA)
          {
            --self->_externalEdges;
          }

          v10 = self->_edgeCount - 1;
          self->_edgeCount = v10;
          v11 = *&v9->var0;
          var2 = v9->var2;
          v13 = &edges[v10];
          v14 = v13->var2;
          *&v9->var0 = *&v13->var0;
          v9->var2 = v14;
          v15 = &self->_edges[self->_edgeCount];
          v15->var2 = var2;
          *&v15->var0 = v11;
          --i;
        }

        edgeCount = self->_edgeCount;
      }
    }

    if (edgeCount < self->_edgeCapacity >> 1)
    {
      v16 = (edgeCount * 1.05);
      self->_edgeCapacity = v16;
      self->_edges = malloc_type_realloc(self->_edges, 12 * v16, 0x10000403E1C8BA9uLL);
    }
  }
}

- (void)_faultDeadNodeMap
{
  deadNodes = self->_deadNodes;
  if (deadNodes)
  {
    v5 = *deadNodes;
    nextNodeName = self->_nextNodeName;
    if (v5 >= nextNodeName)
    {
      return;
    }

    v7 = (nextNodeName * 1.25);
    v8 = malloc_type_calloc(1uLL, ((v7 + 7) >> 3) + 4, 0xB2EC2458uLL);
    *v8 = v7;
    v9 = self->_deadNodes;
    v10 = *v9;
    if (v7 < *v9)
    {
      v10 = v7;
    }

    v11 = v10 + 7;
    if (v11 >= 8)
    {
      v12 = (v9 + 1);
      v13 = v8 + 1;
      v14 = v11 >> 3;
      do
      {
        v15 = *v12++;
        *v13++ |= v15;
        --v14;
      }

      while (v14);
      v9 = self->_deadNodes;
    }

    free(v9);
  }

  else
  {
    LODWORD(v2) = self->_nextNodeName;
    v16 = (v2 * 1.05);
    v8 = malloc_type_calloc(1uLL, ((v16 + 7) >> 3) + 4, 0xB2EC2458uLL);
    *v8 = v16;
  }

  self->_deadNodes = v8;
}

- (void)removeMarkedNodes:(void *)nodes
{
  if (nodes)
  {
    [(VMUDirectedGraph *)self _faultDeadNodeMap];
    nextNodeName = self->_nextNodeName;
    v6 = malloc_type_calloc(1uLL, ((nextNodeName + 7) >> 3) + 4, 0xB2EC2458uLL);
    v7 = v6;
    *v6 = nextNodeName;
    v8 = *nodes;
    if (nextNodeName < *nodes)
    {
      v8 = nextNodeName;
    }

    v9 = v8 + 7;
    if (v9 >= 8)
    {
      v10 = nodes + 4;
      v11 = v6 + 4;
      v12 = v9 >> 3;
      do
      {
        v13 = *v10++;
        *v11++ |= v13;
        --v12;
      }

      while (v12);
    }

    deadNodes = self->_deadNodes;
    v15 = *deadNodes;
    v16 = (*deadNodes + 7);
    if (v16 >= 8)
    {
      v17 = deadNodes + 1;
      v18 = v16 >> 3;
      do
      {
        *v17 = ~*v17;
        ++v17;
        --v18;
      }

      while (v18);
    }

    v19 = v15 & 7;
    if (v19)
    {
      *(deadNodes + (v16 >> 3) + 3) ^= 255 << v19;
    }

    v20 = self->_deadNodes;
    v21 = *v6;
    v22 = *v20;
    if (*v6 >= *v20)
    {
      v21 = *v20;
    }

    v23 = (v21 + 7);
    if (v23 >= 8)
    {
      v24 = v6 + 4;
      v25 = (v20 + 1);
      v26 = v23 >> 3;
      do
      {
        v27 = *v25++;
        *v24++ &= v27;
        --v26;
      }

      while (v26);
      v20 = self->_deadNodes;
      v22 = *v20;
    }

    v28 = (v22 + 7);
    if (v28 >= 8)
    {
      v29 = v20 + 1;
      v30 = v28 >> 3;
      do
      {
        *v29 = ~*v29;
        ++v29;
        --v30;
      }

      while (v30);
    }

    v31 = v22 & 7;
    if (v31)
    {
      *(v20 + (v28 >> 3) + 3) ^= -1 << v31;
    }

    edgeCount = self->_edgeCount;
    if (edgeCount)
    {
      v33 = 0;
      v34 = 0;
      v35 = v6 + 4;
      do
      {
        edges = self->_edges;
        if (edges[v33].var0 == -3)
        {
          var2 = edges[v33].var2;
          if (*v6 > var2 && ((*(v35 + (var2 >> 3)) >> (var2 & 7)) & 1) != 0)
          {
            var1 = edges[v33].var1;
            if (*v6 > var1)
            {
              *(v35 + (var1 >> 3)) |= 1 << (var1 & 7);
              edgeCount = self->_edgeCount;
            }
          }
        }

        ++v34;
        ++v33;
      }

      while (v34 < edgeCount);
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __38__VMUDirectedGraph_removeMarkedNodes___block_invoke;
    v49[3] = &__block_descriptor_40_e34_B20__0__VMUDirectedGraphEdge_III_8l;
    v49[4] = v6;
    [(VMUDirectedGraph *)self _removeEdges:v49];
    v40 = self->_deadNodes;
    v41 = *v40;
    if (*v40 >= *v7)
    {
      v41 = *v7;
    }

    v42 = (v41 + 7);
    if (v42 >= 8)
    {
      v43 = 0;
      v44 = v7 + 4;
      v45 = (v40 + 1);
      v46 = v42 >> 3;
      do
      {
        v47 = *v44++;
        v48 = *v45;
        v39.i32[0] = v47 & ~v48;
        v39 = vcnt_s8(v39);
        v39.i16[0] = vaddlv_u8(v39);
        v43 += v39.i32[0];
        *v45++ = v48 | v47;
        --v46;
      }

      while (v46);
    }

    else
    {
      v43 = 0;
    }

    self->_nodeCount -= v43;
    free(v7);
    if (self->_insideSearch)
    {
      [MEMORY[0x1E695DF30] raise:@"VMUDestructiveMutationWhileEnumeratingException" format:@"Destructive mutation attempted while traversing graph!"];
    }

    else
    {
      self->_indexedEdges = -1;
    }
  }
}

uint64_t __38__VMUDirectedGraph_removeMarkedNodes___block_invoke(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  if (*v3 > HIDWORD(a2) && ((*(v3 + (a2 >> 35) + 4) >> (BYTE4(a2) & 7)) & 1) != 0)
  {
    return 1;
  }

  if (*v3 <= a3)
  {
    return 0;
  }

  return (*(v3 + (a3 >> 3) + 4) >> (a3 & 7)) & 1;
}

- (void)removeMarkedEdges:(void *)edges
{
  if (edges)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __38__VMUDirectedGraph_removeMarkedEdges___block_invoke;
    v4[3] = &__block_descriptor_40_e34_B20__0__VMUDirectedGraphEdge_III_8l;
    v4[4] = edges;
    [(VMUDirectedGraph *)self _removeEdges:v4];
    if (self->_insideSearch)
    {
      [MEMORY[0x1E695DF30] raise:@"VMUDestructiveMutationWhileEnumeratingException" format:@"Destructive mutation attempted while traversing graph!"];
    }

    else
    {
      self->_indexedEdges = -1;
    }
  }
}

uint64_t __38__VMUDirectedGraph_removeMarkedEdges___block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (*v2 <= a2)
  {
    return 0;
  }

  else
  {
    return (*(v2 + (a2 >> 3) + 4) >> (a2 & 7)) & 1;
  }
}

- (BOOL)isNodePresent:(unsigned int)present
{
  if (self->_nextNodeName <= present)
  {
    return 0;
  }

  deadNodes = self->_deadNodes;
  return !deadNodes || *deadNodes <= present || ((*(deadNodes + (present >> 3) + 4) >> (present & 7)) & 1) == 0 || [(VMUDirectedGraph *)self parentGroupForNode:v3, v4]!= -1;
}

- (unsigned)addGroupNodeForNodes:(const unsigned int *)nodes count:(unsigned int)count
{
  nextNodeName = -1;
  if (nodes && count >= 2)
  {
    nodesCopy = nodes;
    v7 = 0;
    nextNodeName = self->_nextNodeName;
    countCopy = count;
    countCopy2 = count;
    nodesCopy2 = nodes;
    while (1)
    {
      v12 = *nodesCopy2++;
      v11 = v12;
      if (v12 < nextNodeName)
      {
        deadNodes = self->_deadNodes;
        if (!deadNodes || *deadNodes <= v11 || ((*(deadNodes + (v11 >> 3) + 4) >> (v11 & 7)) & 1) == 0)
        {
          break;
        }
      }

      v14 = v7;
LABEL_10:
      v7 = v14;
      if (!--countCopy2)
      {
        return -1;
      }
    }

    v14 = 1;
    if (!v7)
    {
      goto LABEL_10;
    }

    ++self->_nodeCount;
    self->_nextNodeName = nextNodeName + 1;
    [(VMUDirectedGraph *)self _faultDeadNodeMap];
    while (1)
    {
      v15 = *nodesCopy;
      if (v15 < self->_nextNodeName)
      {
        v16 = self->_deadNodes;
        if (*v16 <= v15)
        {
          goto LABEL_17;
        }

        v17 = v16 + (v15 >> 3);
        v18 = v17[4];
        v19 = 1 << (v15 & 7);
        if ((v19 & v18) == 0)
        {
          break;
        }
      }

LABEL_18:
      ++nodesCopy;
      if (!--countCopy)
      {
        return nextNodeName;
      }
    }

    v17[4] = v18 | v19;
LABEL_17:
    --self->_nodeCount;
    [(VMUDirectedGraph *)&self->super.isa _internalAddEdgeFromNode:*nodesCopy toNode:0xFFFFFFFE withName:?];
    goto LABEL_18;
  }

  return nextNodeName;
}

- (void)ungroupNode:(unsigned int)node
{
  deadNodes = self->_deadNodes;
  if (deadNodes && self->_nextNodeName > node && (*deadNodes <= node || ((*(deadNodes + (node >> 3) + 4) >> (node & 7)) & 1) == 0))
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __32__VMUDirectedGraph_ungroupNode___block_invoke;
    v7[3] = &unk_1E827A480;
    nodeCopy = node;
    v7[4] = self;
    v7[5] = &v9;
    [(VMUDirectedGraph *)self _removeEdges:v7];
    if (*(v10 + 24) == 1)
    {
      v6 = self->_deadNodes;
      if (*v6 > node)
      {
        *(v6 + (node >> 3) + 4) |= 1 << (node & 7);
      }

      --self->_nodeCount;
      if (self->_insideSearch)
      {
        [MEMORY[0x1E695DF30] raise:@"VMUDestructiveMutationWhileEnumeratingException" format:@"Destructive mutation attempted while traversing graph!"];
      }

      else
      {
        self->_indexedEdges = -1;
      }
    }

    _Block_object_dispose(&v9, 8);
  }
}

uint64_t __32__VMUDirectedGraph_ungroupNode___block_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (__PAIR64__(*(a1 + 48), -2) != a2)
  {
    return 0;
  }

  v3 = *(*(a1 + 32) + 40);
  if (*v3 > a3)
  {
    *(v3 + (a3 >> 3) + 4) &= ~(1 << (a3 & 7));
  }

  v4 = 1;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  ++*(*(a1 + 32) + 24);
  return v4;
}

- (void)setInverted:(BOOL)inverted
{
  self->_inverted = inverted;
  if (self->_insideSearch)
  {
    [MEMORY[0x1E695DF30] raise:@"VMUDestructiveMutationWhileEnumeratingException" format:@"Destructive mutation attempted while traversing graph!"];
  }

  else
  {
    self->_indexedEdges = -1;
  }
}

- (unsigned)pointerSize
{
  if (self->_graphIs64bit)
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

- (BOOL)_adjustAdjacencyMap
{
  nextNodeName = self->_nextNodeName;
  if (nextNodeName)
  {
    indexedNodeSpace = self->_indexedNodeSpace;
    if (indexedNodeSpace < nextNodeName || indexedNodeSpace == -1)
    {
      self->_indexedNodeSpace = nextNodeName;
      graphIs64bit = [(VMUDirectedGraph *)self graphIs64bit];
      v7 = self->_indexedNodeSpace;
      if (!graphIs64bit && v7 >= 0x3FFFFFFF)
      {
        NSLog(&cfstr_MemoryGraphHas.isa, "node", v7);
        return 0;
      }

      nodeAdjIndex = malloc_type_realloc(self->_nodeAdjIndex, 4 * v7, 0x100004052888210uLL);
      self->_nodeAdjIndex = nodeAdjIndex;
      indexedNodeSpace = self->_indexedNodeSpace;
    }

    else
    {
      nodeAdjIndex = self->_nodeAdjIndex;
    }

    bzero(nodeAdjIndex, 4 * indexedNodeSpace);
    if (self->_edgeCount)
    {
      v10 = 0;
      v11 = 0;
      edges = self->_edges;
      v13 = edges;
      do
      {
        if (v13->var0 != -3)
        {
          if (v13->var0 == -2)
          {
            v11 += 3;
            v14 = self->_nodeAdjIndex;
            ++v14[v13->var1];
            p_var2 = &edges[v10].var2;
            v16 = 2;
          }

          else
          {
            v14 = self->_nodeAdjIndex;
            if (self->_inverted)
            {
              v17 = 8;
            }

            else
            {
              v17 = 4;
            }

            p_var2 = (&v13->var0 + v17);
            v16 = 1;
          }

          v14[*p_var2] += v16;
        }

        ++v10;
        edgeCount = self->_edgeCount;
        ++v13;
      }

      while (v10 < edgeCount);
    }

    else
    {
      v11 = 0;
      LODWORD(edgeCount) = 0;
    }

    v19 = self->_externalEdges + v11;
    if (self->_edgeCapacity <= v19)
    {
      edgeCapacity = self->_externalEdges + v11;
    }

    else
    {
      edgeCapacity = self->_edgeCapacity;
    }

    self->_edgeCapacity = edgeCapacity;
    if (edgeCapacity)
    {
      v21 = 1;
    }

    else
    {
      v21 = (edgeCount | v11) == 0;
    }

    if (!v21)
    {
      [VMUDirectedGraph _adjustAdjacencyMap];
    }

    if (self->_indexedNodeSpace)
    {
      v22 = 0;
      v23 = 0;
      v24 = self->_nodeAdjIndex;
      do
      {
        v23 += v24[v22];
        v24[v22++] = v23;
      }

      while (v22 < self->_indexedNodeSpace);
      edgeCapacity = self->_edgeCapacity;
    }

    if (edgeCapacity)
    {
      v25 = malloc_type_malloc(12 * edgeCapacity, 0x10000403E1C8BA9uLL);
    }

    else
    {
      v25 = 0;
    }

    v26 = self->_edgeCount;
    if (v26)
    {
      v27 = 0;
      v28 = -1;
      do
      {
        v29 = v26 + v28;
        v30 = &self->_edges[v29];
        if (v30->var0 != -3)
        {
          if (v30->var0 == -2)
          {
            v31 = self->_nodeAdjIndex;
            var1 = v30->var1;
            v33 = v31[var1] - 1;
            v31[var1] = v33;
            v34 = &v25[v33];
            v35 = *&v30->var0;
            v34->var2 = v30->var2;
            *&v34->var0 = v35;
            v36 = self->_nodeAdjIndex;
            v37 = &self->_edges[v29];
            LODWORD(v35) = v37->var1;
            var2 = v37->var2;
            v39 = v36[var2] - 1;
            v36[var2] = v39;
            v40 = &v25[v39];
            v40->var0 = -3;
            v40->var1 = var2;
            v40->var2 = v35;
            v41 = v37->var2;
            LODWORD(v40) = v36[v41] - 1;
            v36[v41] = v40;
            v42 = &v25[v40];
            v42->var0 = -3;
            v42->var1 = var2;
            v42->var2 = v35;
          }

          else
          {
            if (self->_inverted)
            {
              v43 = 8;
            }

            else
            {
              v43 = 4;
            }

            v44 = *(&v30->var0 + v43);
            v45 = self->_nodeAdjIndex;
            v46 = v45[v44] - 1;
            v45[v44] = v46;
            v47 = &v25[v46];
            v48 = *&v30->var0;
            v47->var2 = v30->var2;
            *&v47->var0 = v48;
          }
        }

        ++v27;
        v26 = self->_edgeCount;
        --v28;
      }

      while (v27 < v26);
    }

    self->_edgeCount = v19;
    if (v11 && v19)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      p_var1 = &v25->var1;
      do
      {
        v53 = p_var1;
        if (self->_inverted)
        {
          v53 = &v25[v49].var2;
          if (*(p_var1 - 1) > 0xFFFFFFFA)
          {
            v53 = p_var1;
          }
        }

        v54 = *v53;
        if (v51 == v54)
        {
          v55 = p_var1 - 1;
          if (*(p_var1 - 1) == -3)
          {
            v73 = p_var1[1];
            v72 = *v55;
            v56 = &v25[v50];
            v57 = *&v56->var0;
            p_var1[1] = v56->var2;
            *v55 = v57;
            *&v56->var0 = v72;
            v56->var2 = v73;
            ++v50;
            v19 = self->_edgeCount;
          }
        }

        else
        {
          v51 = v54;
          v50 = v49;
        }

        ++v49;
        p_var1 += 3;
      }

      while (v49 < v19);
      if (v19)
      {
        for (i = 0; i < v19; ++i)
        {
          v59 = &v25[i];
          if (v59->var0 == -3 && v59->var1 != -1)
          {
            deadNodes = self->_deadNodes;
            v61 = deadNodes + 1;
            v62 = *deadNodes;
            v63 = &v25[i];
            v66 = v63->var2;
            v64 = &v63->var2;
            v65 = v66;
            if (v62 > v66)
            {
              v67 = v65;
              do
              {
                if (((*(v61 + (v67 >> 3)) >> (v67 & 7)) & 1) == 0)
                {
                  break;
                }

                v67 = v25[self->_nodeAdjIndex[v67]].var2;
              }

              while (v62 > v67);
              if (v62 > v65)
              {
                do
                {
                  if (((*(v61 + (v65 >> 3)) >> (v65 & 7)) & 1) == 0)
                  {
                    break;
                  }

                  v68 = self->_nodeAdjIndex[v65];
                  *v64 = v67;
                  v69 = &v25[v68];
                  v70 = v69->var2;
                  v64 = &v69->var2;
                  v65 = v70;
                }

                while (*deadNodes > v70);
                v19 = self->_edgeCount;
              }
            }
          }
        }
      }
    }

    v71 = self->_edges;
    if (v71)
    {
      free(v71);
      v19 = self->_edgeCount;
    }

    self->_edges = v25;
    self->_indexedEdges = v19;
  }

  else
  {
    self->_indexedEdges = 0;
  }

  return 1;
}

- (void)_renormalize
{
  v3 = 4 * self->_nextNodeName;
  v4 = malloc_type_malloc(v3, 0x100004052888210uLL);
  __pattern4 = -1;
  memset_pattern4(v4, &__pattern4, v3);
  v5 = 4 * self->_nextEdgeName;
  v6 = malloc_type_malloc(v5, 0x100004052888210uLL);
  v27 = -1;
  memset_pattern4(v6, &v27, v5);
  nextNodeName = self->_nextNodeName;
  v8 = malloc_type_calloc(1uLL, ((nextNodeName + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v8 = nextNodeName;
  v9 = v8 + 1;
  if (self->_edgeCount)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      edges = self->_edges;
      var1 = edges[v10].var1;
      if (nextNodeName > var1)
      {
        *(v9 + (var1 >> 3)) |= 1 << (var1 & 7);
        edges = self->_edges;
      }

      var2 = edges[v10].var2;
      if (nextNodeName > var2)
      {
        *(v9 + (var2 >> 3)) |= 1 << (var2 & 7);
      }

      ++v11;
      ++v10;
    }

    while (v11 < self->_edgeCount);
  }

  v15 = self->_nextNodeName;
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    deadNodes = self->_deadNodes;
    do
    {
      if (!deadNodes || v16 >= *deadNodes || (v19 = 1 << (v16 & 7), (v19 & *(deadNodes + (v16 >> 3) + 4)) == 0) || v16 < *v8 && (v19 & *(v9 + (v16 >> 3))) != 0)
      {
        *(v4 + v16) = v17;
        v17 = (v17 + 1);
        v15 = self->_nextNodeName;
      }

      ++v16;
    }

    while (v16 < v15);
  }

  else
  {
    v17 = 0;
  }

  free(v8);
  edgeCount = self->_edgeCount;
  if (edgeCount)
  {
    v21 = 0;
    v22 = self->_edges;
    do
    {
      var0 = v22->var0;
      ++v22;
      v23 = var0;
      if (var0 <= 0xFFFFFFFA)
      {
        *(v6 + v23) = v21;
        edgeCount = self->_edgeCount;
      }

      ++v21;
    }

    while (v21 < edgeCount);
  }

  [(VMUDirectedGraph *)self _renameWithNodeMap:v4 nodeNamespace:v17 edgeMap:v6 edgeNamespace:self->_externalEdges];
  free(v4);
  free(v6);
  externalEdges = self->_externalEdges;
  self->_nextNodeName = v17;
  self->_nextEdgeName = externalEdges;
  if (self->_insideSearch)
  {
    v26 = MEMORY[0x1E695DF30];

    [v26 raise:@"VMUDestructiveMutationWhileEnumeratingException" format:@"Destructive mutation attempted while traversing graph!"];
  }

  else
  {
    self->_indexedEdges = -1;
  }
}

- (void)_renameWithNodeMap:(unsigned int *)map nodeNamespace:(unsigned int)namespace edgeMap:(unsigned int *)edgeMap edgeNamespace:(unsigned int)edgeNamespace
{
  if (self->_nextEdgeName != edgeNamespace)
  {
    if (edgeNamespace <= 0x10)
    {
      edgeNamespaceCopy = 16;
    }

    else
    {
      edgeNamespaceCopy = edgeNamespace;
    }

    self->_edgeCapacity = edgeNamespaceCopy;
    self->_edges = malloc_type_realloc(self->_edges, 12 * edgeNamespaceCopy, 0x10000403E1C8BA9uLL);
  }

  deadNodes = self->_deadNodes;
  if (deadNodes)
  {
    free(deadNodes);
    self->_deadNodes = 0;
  }

  if (self->_edgeCount)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      edges = self->_edges;
      if (map)
      {
        v15 = &edges[v12];
        var2 = edges[v12].var2;
        v15->var1 = map[edges[v12].var1];
        v15->var2 = map[var2];
      }

      var0 = edges[v12].var0;
      if (edgeMap && var0 <= 0xFFFFFFFA)
      {
        edges[v12].var0 = edgeMap[var0];
      }

      else if (var0 == -2)
      {
        v18 = self->_deadNodes;
        if (v18)
        {
          namespaceCopy = *v18;
        }

        else
        {
          v18 = malloc_type_calloc(1uLL, ((namespace + 7) >> 3) + 4, 0xB2EC2458uLL);
          *v18 = namespace;
          self->_deadNodes = v18;
          edges = self->_edges;
          namespaceCopy = namespace;
        }

        v20 = edges[v12].var2;
        if (namespaceCopy > v20)
        {
          *(v18 + (v20 >> 3) + 4) |= 1 << (v20 & 7);
        }
      }

      ++v13;
      ++v12;
    }

    while (v13 < self->_edgeCount);
  }
}

- (unsigned)enumerateNodesWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    insideSearch = self->_insideSearch;
    if (!insideSearch)
    {
      indexedEdges = self->_indexedEdges;
      v7 = indexedEdges != -1 && indexedEdges >= self->_edgeCount;
      if (v7 && self->_indexedNodeSpace >= self->_nextNodeName)
      {
        insideSearch = 0;
      }

      else
      {
        [(VMUDirectedGraph *)self _adjustAdjacencyMap];
        insideSearch = self->_insideSearch;
      }
    }

    self->_insideSearch = insideSearch + 1;
    v15 = 0;
    indexedNodeSpace = self->_indexedNodeSpace;
    if (indexedNodeSpace)
    {
      v10 = 0;
      nodeCount = 0;
      v11 = 1;
      do
      {
        v12 = v11 - 1;
        deadNodes = self->_deadNodes;
        if (!deadNodes || *deadNodes <= v12 || ((*(deadNodes + ((v11 - 1) >> 3) + 4) >> ((v11 - 1) & 7)) & 1) == 0)
        {
          blockCopy[2](blockCopy, v12, &v15);
          ++nodeCount;
          indexedNodeSpace = self->_indexedNodeSpace;
          v10 = v15;
        }

        if (v11 >= indexedNodeSpace)
        {
          break;
        }

        ++v11;
      }

      while ((v10 & 1) == 0);
      insideSearch = self->_insideSearch - 1;
    }

    else
    {
      nodeCount = 0;
    }

    self->_insideSearch = insideSearch;
  }

  else
  {
    nodeCount = self->_nodeCount;
  }

  return nodeCount;
}

- (unsigned)reverseEnumerateNodesWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    LODWORD(v5) = self->_indexedNodeSpace;
    if (v5)
    {
      insideSearch = self->_insideSearch;
      if (!insideSearch)
      {
        indexedEdges = self->_indexedEdges;
        if (indexedEdges == -1 || indexedEdges < self->_edgeCount || v5 < self->_nextNodeName)
        {
          [(VMUDirectedGraph *)self _adjustAdjacencyMap];
          insideSearch = self->_insideSearch;
          LODWORD(v5) = self->_indexedNodeSpace;
        }

        else
        {
          insideSearch = 0;
        }
      }

      nodeCount = 0;
      self->_insideSearch = insideSearch + 1;
      v13 = 0;
LABEL_12:
      v9 = (v5 - 1);
      while (v9 != -1)
      {
        v5 = v9;
        deadNodes = self->_deadNodes;
        if (deadNodes)
        {
          if (*deadNodes > v5)
          {
            v11 = *(deadNodes + (v5 >> 3) + 4);
            v9 = (v5 - 1);
            if ((v11 >> (v5 & 7)))
            {
              continue;
            }
          }
        }

        blockCopy[2](blockCopy, v5, &v13);
        ++nodeCount;
        if ((v13 & 1) == 0)
        {
          goto LABEL_12;
        }

        break;
      }

      --self->_insideSearch;
    }

    else
    {
      nodeCount = 0;
    }
  }

  else
  {
    nodeCount = self->_nodeCount;
  }

  return nodeCount;
}

- (unsigned)enumerateMembersOfGroupNode:(unsigned int)node withBlock:(id)block
{
  blockCopy = block;
  insideSearch = self->_insideSearch;
  if (!insideSearch)
  {
    indexedEdges = self->_indexedEdges;
    v9 = indexedEdges != -1 && indexedEdges >= self->_edgeCount;
    if (v9 && self->_indexedNodeSpace >= self->_nextNodeName)
    {
      insideSearch = 0;
    }

    else
    {
      [(VMUDirectedGraph *)self _adjustAdjacencyMap];
      insideSearch = self->_insideSearch;
    }
  }

  v10 = 0;
  self->_insideSearch = insideSearch + 1;
  v25 = 0;
  nodeAdjIndex = self->_nodeAdjIndex;
  v12 = nodeAdjIndex[node];
  indexedNodeSpace = self->_indexedNodeSpace;
  if (indexedNodeSpace > node)
  {
    p_indexedEdges = &self->_indexedEdges;
    v15 = &nodeAdjIndex[node + 1];
    if (node + 1 < indexedNodeSpace)
    {
      p_indexedEdges = v15;
    }

    v10 = *p_indexedEdges - v12;
  }

  v16 = (v10 + v12);
  if (v12 >= v16)
  {
    v18 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = v12;
    v20 = v12 + 1;
    do
    {
      edges = self->_edges;
      if (!edges)
      {
        [VMUDirectedGraph enumerateMembersOfGroupNode:withBlock:];
      }

      v22 = &edges[v19];
      if (v22->var0 < 0xFFFFFFFB && self->_inverted)
      {
        v23 = 4;
      }

      else
      {
        v23 = 8;
      }

      if (v22->var0 == -2)
      {
        if (blockCopy)
        {
          blockCopy[2](blockCopy, *(&v22->var0 + v23), &v25);
          v17 = v25;
        }

        ++v18;
      }

      if (v20 >= v16)
      {
        break;
      }

      ++v19;
      ++v20;
    }

    while ((v17 & 1) == 0);
    insideSearch = self->_insideSearch - 1;
  }

  self->_insideSearch = insideSearch;

  return v18;
}

- (unsigned)parentGroupForNode:(unsigned int)node
{
  insideSearch = self->_insideSearch;
  if (!insideSearch)
  {
    indexedEdges = self->_indexedEdges;
    v7 = indexedEdges != -1 && indexedEdges >= self->_edgeCount;
    if (v7 && self->_indexedNodeSpace >= self->_nextNodeName)
    {
      insideSearch = 0;
    }

    else
    {
      [(VMUDirectedGraph *)self _adjustAdjacencyMap];
      insideSearch = self->_insideSearch;
    }
  }

  self->_insideSearch = insideSearch + 1;
  indexedNodeSpace = self->_indexedNodeSpace;
  if (indexedNodeSpace > node && ((nodeAdjIndex = self->_nodeAdjIndex, node + 1 >= indexedNodeSpace) ? (p_indexedEdges = &self->_indexedEdges) : (p_indexedEdges = &nodeAdjIndex[node + 1]), (v11 = *p_indexedEdges, v12 = nodeAdjIndex[node], v11 - v12 >= 2) && (v13 = &self->_edges[v12 + 1], v13->var0 == -3)))
  {
    result = v13->var2;
  }

  else
  {
    result = -1;
  }

  self->_insideSearch = insideSearch;
  return result;
}

- (unsigned)edgeCount
{
  if (self->_deadNodes)
  {
    return [(VMUDirectedGraph *)self enumerateEdgesWithBlock:0];
  }

  else
  {
    return self->_edgeCount;
  }
}

- (unsigned)enumerateEdgesWithBlock:(id)block
{
  blockCopy = block;
  insideSearch = self->_insideSearch;
  if (!insideSearch)
  {
    indexedEdges = self->_indexedEdges;
    v7 = indexedEdges != -1 && indexedEdges >= self->_edgeCount;
    if (v7 && self->_indexedNodeSpace >= self->_nextNodeName)
    {
      insideSearch = 0;
    }

    else
    {
      [(VMUDirectedGraph *)self _adjustAdjacencyMap];
      insideSearch = self->_insideSearch;
    }
  }

  self->_insideSearch = insideSearch + 1;
  v8 = self->_indexedEdges;
  if (!v8)
  {
    v10 = 0;
    goto LABEL_52;
  }

  v9 = 0;
  v10 = 0;
  for (i = 1; ; ++i)
  {
    edges = self->_edges;
    if (!edges)
    {
      [VMUDirectedGraph enumerateMembersOfGroupNode:withBlock:];
    }

    inverted = self->_inverted;
    p_var1 = &edges[v9].var1;
    var0 = edges[v9].var0;
    v16 = var0 < 0xFFFFFFFB;
    v17 = !v16 || !inverted;
    if (v16 && inverted)
    {
      p_var2 = &edges[v9].var2;
    }

    else
    {
      p_var2 = &edges[v9].var1;
    }

    v19 = *p_var2;
    if (v17)
    {
      p_var1 = &edges[v9].var2;
    }

    v20 = *p_var1;
    if (var0 == -2)
    {
      var2 = v19;
    }

    else
    {
      nodeAdjIndex = self->_nodeAdjIndex;
      indexedNodeSpace = self->_indexedNodeSpace;
      if (v19 >= indexedNodeSpace)
      {
        goto LABEL_25;
      }

      v24 = v8;
      if (v19 + 1 < indexedNodeSpace)
      {
        v24 = nodeAdjIndex[v19 + 1];
      }

      v25 = nodeAdjIndex[v19];
      if (v24 == v25)
      {
LABEL_25:
        var2 = v19;
      }

      else
      {
        v33 = &edges[v25];
        var2 = v19;
        if (v33->var0 == -3)
        {
          var2 = v33->var2;
        }
      }

      if (v20 < indexedNodeSpace)
      {
        v26 = v8;
        if (v20 + 1 < indexedNodeSpace)
        {
          v26 = nodeAdjIndex[v20 + 1];
        }

        v27 = nodeAdjIndex[v20];
        if (v26 != v27)
        {
          v28 = &edges[v27];
          if (v28->var0 == -3)
          {
            v29 = v28->var2;
            goto LABEL_33;
          }
        }
      }
    }

    v29 = v20;
LABEL_33:
    if (v29 == v20 && var2 == v19)
    {
      v31 = var0;
    }

    else
    {
      v31 = -4;
    }

    if (var2 == v29)
    {
      v32 = v31;
    }

    else
    {
      v32 = var0;
    }

    if (v32 <= 0xFFFFFFFA)
    {
      if (blockCopy)
      {
        blockCopy[2](blockCopy);
        v8 = self->_indexedEdges;
      }

      ++v10;
    }

    if (i >= v8)
    {
      break;
    }

    ++v9;
  }

  insideSearch = self->_insideSearch - 1;
LABEL_52:
  self->_insideSearch = insideSearch;

  return v10;
}

- (void)_internalAccessRawEdgesWithBlock:(id)block
{
  blockCopy = block;
  insideSearch = self->_insideSearch;
  v8 = blockCopy;
  if (!insideSearch)
  {
    indexedEdges = self->_indexedEdges;
    v7 = indexedEdges != -1 && indexedEdges >= self->_edgeCount;
    if (v7 && self->_indexedNodeSpace >= self->_nextNodeName)
    {
      insideSearch = 0;
    }

    else
    {
      [(VMUDirectedGraph *)self _adjustAdjacencyMap];
      blockCopy = v8;
      insideSearch = self->_insideSearch;
    }
  }

  self->_insideSearch = insideSearch + 1;
  (*(blockCopy + 2))(blockCopy, self->_edges, self->_indexedEdges);
  --self->_insideSearch;
}

- (unsigned)_internalEnumerateEdgesOfNode:(unsigned int)node withBlock:(id)block
{
  nodeCopy = node;
  blockCopy = block;
  if (node == -1 || (nextNodeName = self->_nextNodeName, nextNodeName <= node))
  {
    v10 = 0;
  }

  else
  {
    insideSearch = self->_insideSearch;
    if (!insideSearch)
    {
      indexedEdges = self->_indexedEdges;
      if (indexedEdges == -1 || indexedEdges < self->_edgeCount || self->_indexedNodeSpace < nextNodeName)
      {
        [(VMUDirectedGraph *)self _adjustAdjacencyMap];
        insideSearch = self->_insideSearch;
      }

      else
      {
        insideSearch = 0;
      }
    }

    self->_insideSearch = insideSearch + 1;
    deadNodes = self->_deadNodes;
    if (deadNodes && *deadNodes > node && ((*(deadNodes + (node >> 3) + 4) >> (node & 7)) & 1) != 0 && ((v12 = self->_indexedNodeSpace, v12 <= node) || ((v14 = self->_nodeAdjIndex, v13 = self->_edges, node + 1 >= v12) ? (v15 = &self->_indexedEdges) : (v15 = &v14[node + 1]), !v13 || (v16 = *v15, v17 = v14[node], v16 == v17) || (v18 = &v13[v17], v18->var0 != -3) || v18->var2 == node)))
    {
      v10 = 0;
      nodeCopy = -1;
    }

    else
    {
      indexedNodeSpace = self->_indexedNodeSpace;
      if (indexedNodeSpace <= node)
      {
        v10 = 0;
      }

      else
      {
        nodeAdjIndex = self->_nodeAdjIndex;
        if (node + 1 >= indexedNodeSpace)
        {
          p_indexedEdges = &self->_indexedEdges;
        }

        else
        {
          p_indexedEdges = &nodeAdjIndex[node + 1];
        }

        v22 = nodeAdjIndex[node];
        if (*p_indexedEdges - v22 >= 2 && (v23 = &self->_edges[v22 + 1], v23->var0 == -3))
        {
          var2 = v23->var2;
        }

        else
        {
          var2 = -1;
        }

        v66 = var2;
        v67 = 0;
        v25 = 0;
        v26 = &nodeCopy;
        v27 = 1;
        do
        {
          v28 = v26[--v27];
          v29 = self->_nodeAdjIndex;
          v30 = v29[v28];
          v31 = self->_indexedNodeSpace;
          if (v28 >= v31)
          {
            v36 = 0;
          }

          else
          {
            v32 = v28 + 1;
            v33 = &v29[v32];
            v34 = v32 >= v31;
            v35 = &self->_indexedEdges;
            if (!v34)
            {
              v35 = v33;
            }

            v36 = *v35 - v30;
          }

          v37 = (v36 + v30);
          if (v30 < v37)
          {
            do
            {
              edges = self->_edges;
              if (!edges)
              {
                [VMUDirectedGraph enumerateMembersOfGroupNode:withBlock:];
              }

              inverted = self->_inverted;
              v40 = &edges[v30];
              var0 = v40->var0;
              v42 = v40->var0 < 0xFFFFFFFB;
              v43 = !v42 || !inverted;
              if (v42 && inverted)
              {
                v44 = 8;
              }

              else
              {
                v44 = 4;
              }

              if (v43)
              {
                v45 = 8;
              }

              else
              {
                v45 = 4;
              }

              v46 = *(&v40->var0 + v45);
              if (var0 == -2)
              {
                if (v27 >= v25)
                {
                  v47 = blockCopy;
                  if (2 * v25 <= 0x10)
                  {
                    v48 = 16;
                  }

                  else
                  {
                    v48 = 2 * v25;
                  }

                  if (v25)
                  {
                    v49 = v26;
                  }

                  else
                  {
                    v49 = 0;
                  }

                  v26 = malloc_type_realloc(v49, 4 * v48, 0x100004052888210uLL);
                  v25 = v48;
                  blockCopy = v47;
                }

                v26[v27++] = v46;
              }

              else if (var0 <= 0xFFFFFFFA)
              {
                v50 = *(&v40->var0 + v44);
                v51 = self->_indexedNodeSpace;
                if (v46 >= v51)
                {
                  goto LABEL_68;
                }

                v52 = self->_nodeAdjIndex;
                v53 = self->_indexedEdges;
                if (v46 + 1 < v51)
                {
                  v53 = v52[v46 + 1];
                }

                v54 = v52[v46];
                if (v53 - v54 < 2)
                {
                  goto LABEL_68;
                }

                v55 = &edges[v54 + 1];
                if (v55->var0 != -3)
                {
                  goto LABEL_68;
                }

                v56 = v55->var2;
                if (v56 == -1 || v56 == v66)
                {
                  goto LABEL_68;
                }

                do
                {
                  v58 = v56;
                  if (v56 >= v51)
                  {
                    break;
                  }

                  v59 = v56 + 1;
                  v60 = self->_indexedEdges;
                  if (v59 < v51)
                  {
                    v60 = v52[v59];
                  }

                  v61 = v52[v58];
                  if (v60 - v61 < 2)
                  {
                    break;
                  }

                  v62 = &edges[v61 + 1];
                  if (v62->var0 != -3)
                  {
                    break;
                  }

                  v56 = v62->var2;
                }

                while (v56 != -1 && v56 != v66);
                if (nodeCopy != v58 || v58 == v46)
                {
LABEL_68:
                  if (blockCopy)
                  {
                    blockCopy[2](blockCopy);
                  }

                  ++v67;
                }
              }

              ++v30;
            }

            while (v30 < v37);
          }
        }

        while (v27);
        if (v25)
        {
          free(v26);
        }

        insideSearch = self->_insideSearch - 1;
        v10 = v67;
      }
    }

    self->_insideSearch = insideSearch;
  }

  return v10;
}

- (void)withNodeMarkingMap:(id)map
{
  if (map)
  {
    nextNodeName = self->_nextNodeName;
    mapCopy = map;
    v5 = malloc_type_calloc(1uLL, ((nextNodeName + 7) >> 3) + 4, 0xB2EC2458uLL);
    *v5 = nextNodeName;
    mapCopy[2](mapCopy, v5);

    free(v5);
  }
}

- (void)withEdgeMarkingMap:(id)map
{
  if (map)
  {
    nextEdgeName = self->_nextEdgeName;
    mapCopy = map;
    v5 = malloc_type_calloc(1uLL, ((nextEdgeName + 7) >> 3) + 4, 0xB2EC2458uLL);
    *v5 = nextEdgeName;
    mapCopy[2](mapCopy, v5);

    free(v5);
  }
}

uint64_t __43__VMUDirectedGraph__searchMainLoop_action___block_invoke(uint64_t result, unsigned int a2)
{
  if (!*(*(result + 40) + a2))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)_reorderEdgesNaturally
{
  edgeCount = self->_edgeCount;
  if (edgeCount)
  {
    v4 = 0;
    v5 = 0;
    edges = self->_edges;
    v7 = 1;
    do
    {
      var0 = edges->var0;
      ++edges;
      v7 &= v4 == var0;
      if (var0 == 4294967294)
      {
        ++v5;
      }

      ++v4;
    }

    while (edgeCount != v4);
    if ((v7 & 1) == 0)
    {
      edgeCapacity = self->_edgeCapacity;
      v10 = self->_externalEdges + v5;
      v11 = edgeCapacity <= v10 ? v10 : edgeCapacity;
      self->_edgeCapacity = v11;
      if (v11)
      {
        v12 = malloc_type_calloc(v11, 0xCuLL, 0x10000403E1C8BA9uLL);
        if (v12)
        {
          v13 = v12;
          if (self->_edgeCount)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            do
            {
              v17 = &self->_edges[v14];
              v18 = v17->var0;
              if (v17->var0 != -3)
              {
                if (v18 == -2)
                {
                  v19 = &v12[v16 + self->_externalEdges - 1];
                  v20 = *&v17->var0;
                  v19->var2 = v17->var2;
                  *&v19->var0 = v20;
                  ++v16;
                }

                else
                {
                  v21 = *&v17->var0;
                  v22 = &v12[v18];
                  v22->var2 = v17->var2;
                  *&v22->var0 = v21;
                }
              }

              ++v15;
              ++v14;
            }

            while (v15 < self->_edgeCount);
          }

          v23 = self->_edges;
          if (v23)
          {
            free(v23);
          }

          self->_edges = v13;
        }
      }
    }
  }
}

- (void)_dumpAdjacencyList
{
  if (self->_nextNodeName)
  {
    v3 = 0;
    p_indexedEdges = &self->_indexedEdges;
    do
    {
      nodeAdjIndex = self->_nodeAdjIndex;
      v6 = nodeAdjIndex[v3];
      indexedNodeSpace = self->_indexedNodeSpace;
      if (v3 >= indexedNodeSpace)
      {
        v9 = 0;
      }

      else
      {
        v8 = &nodeAdjIndex[v3 + 1];
        if (v3 + 1 >= indexedNodeSpace)
        {
          v8 = p_indexedEdges;
        }

        v9 = *v8 - v6;
      }

      v10 = (v9 + v6);
      printf("node: %d at %d (%d edges leaving)\n", v3, v6, v9);
      if (v6 < v10)
      {
        v11 = v6;
        do
        {
          edges = self->_edges;
          if (!edges)
          {
            [VMUDirectedGraph enumerateMembersOfGroupNode:withBlock:];
          }

          v13 = &edges[v11];
          p_var2 = &v13->var2;
          var0 = v13->var0;
          p_var1 = &v13->var1;
          v16 = var0;
          inverted = self->_inverted;
          v19 = var0 < 0xFFFFFFFB;
          v20 = !v19 || !inverted;
          if (v19 && inverted)
          {
            v21 = p_var2;
          }

          else
          {
            v21 = p_var1;
          }

          if (v20)
          {
            p_var1 = p_var2;
          }

          if (v16 == -3)
          {
            v22 = " [group up]";
          }

          else
          {
            v22 = "";
          }

          if (v16 == -2)
          {
            v22 = " [group contain]";
          }

          printf("%d: %d -> %d%s\n", v6++, *v21, *p_var1, v22);
          ++v11;
        }

        while (v10 != v6);
      }

      ++v3;
    }

    while (v3 < self->_nextNodeName);
  }
}

- (void)invertEdges
{
  v3 = [(VMUDirectedGraph *)self inverted]^ 1;

  [(VMUDirectedGraph *)self setInverted:v3];
}

- (id)subgraphWithMarkedNodes:(void *)nodes
{
  v4 = [(VMUDirectedGraph *)self copy];
  v5 = v4;
  if (nodes)
  {
    v6 = *nodes;
    v7 = (*nodes + 7);
    if (v7 >= 8)
    {
      v8 = nodes + 4;
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
      *(nodes + (v7 >> 3) + 3) ^= -1 << v10;
    }

    [v4 removeMarkedNodes:nodes];
    v11 = *nodes;
    v12 = (*nodes + 7);
    if (v12 >= 8)
    {
      v13 = nodes + 4;
      v14 = v12 >> 3;
      do
      {
        *v13 = ~*v13;
        ++v13;
        --v14;
      }

      while (v14);
    }

    v15 = v11 & 7;
    if (v15)
    {
      *(nodes + (v12 >> 3) + 3) ^= -1 << v15;
    }
  }

  return v5;
}

- (id)renormalizedGraph
{
  v2 = [(VMUDirectedGraph *)self copy];
  [v2 _renormalize];

  return v2;
}

- (id)invertedGraph
{
  v3 = [(VMUDirectedGraph *)self copy];
  [v3 setInverted:{-[VMUDirectedGraph inverted](self, "inverted") ^ 1}];

  return v3;
}

@end