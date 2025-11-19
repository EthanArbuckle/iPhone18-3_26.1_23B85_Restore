@interface VMUAutoreleasePoolsAnalyzer
- ($51BDE1E611C99AA6751D559730815866)autoreleasePoolsStatsInfo;
- ($938B03310D06493B2963E5A84CB75A7E)offsets;
- ($F98408A3EE049A81EB8D46654FFD7652)options;
- (VMUAutoreleasePoolsAnalyzer)initWithGraph:(id)a3 regionIdentifier:(id)a4 debugTimer:(id)a5;
- (id)analysisSummaryWithError:(id *)a3;
- (void)dealloc;
- (void)iterateAutoreleasePoolsInThreadsGroupingByType:(BOOL)a3 showVirtualSize:(BOOL)a4 extraReleasesCount:(unsigned int *)a5 withBlock:(id)a6;
- (void)populateAutoreleasePoolsDetails;
@end

@implementation VMUAutoreleasePoolsAnalyzer

- (VMUAutoreleasePoolsAnalyzer)initWithGraph:(id)a3 regionIdentifier:(id)a4 debugTimer:(id)a5
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = VMUAutoreleasePoolsAnalyzer;
  v8 = [(VMUAutoreleasePoolsAnalyzer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._graph, a3);
    [(VMUAutoreleasePoolsAnalyzer *)v9 populateAutoreleasePoolsDetails];
  }

  return v9;
}

uint64_t __67__VMUAutoreleasePoolsAnalyzer_findHottestEmptyAutoreleasePoolPage___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = result;
  v9 = *(result + 32);
  if (*(a5 + 8) == *(v9 + 84))
  {
    v10 = a4;
    result = [*(v9 + 8) nodeIsAutoreleasePoolContentPage:a4];
    if (result)
    {
      *(*(*(v8 + 40) + 8) + 24) = v10;
    }
  }

  if (*(a5 + 8) >= *(*(v8 + 32) + 84))
  {
    *a6 = 1;
  }

  return result;
}

void *__69__VMUAutoreleasePoolsAnalyzer_memoryTreeHeldByAutoreleasedNode_node___block_invoke(void *result, unsigned int a2)
{
  v3 = result;
  v4 = *(result[5] + 8);
  v5 = *(v4 + 24);
  v6 = v5 + 1;
  v7 = *(result[6] + 8);
  if (v5 + 1 == *(v7 + 24))
  {
    *(v7 + 24) = 2 * v6;
    result = malloc_type_realloc(*(*(result[7] + 8) + 24), 4 * *(*(result[6] + 8) + 24), 0x100004052888210uLL);
    *(*(v3[7] + 8) + 24) = result;
    v4 = *(v3[5] + 8);
    v5 = *(v4 + 24);
    v6 = v5 + 1;
  }

  v8 = *(*(v3[7] + 8) + 24);
  *(v4 + 24) = v6;
  *(v8 + 4 * v5) = a2;
  v9 = *(v3[4] + 64);
  if (*v9 > a2)
  {
    *(v9 + (a2 >> 3) + 4) |= 1 << (a2 & 7);
  }

  return result;
}

void __69__VMUAutoreleasePoolsAnalyzer_memoryTreeHeldByAutoreleasedNode_node___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  if (VMUIsOwningReference(*(a5 + 16)))
  {
    v9 = *(*(a1 + 32) + 64);
    if (*v9 <= a4 || ((*(v9 + (a4 >> 3) + 4) >> (a4 & 7)) & 1) == 0)
    {
      (*(*(a1 + 56) + 16))();
      v10 = *(a5 + 32);
      v11 = [*(*(a1 + 32) + 40) nodeDescription:a4 usingDetails:v10];
      v12 = [*(*(a1 + 32) + 8) is64bit];
      v13 = *(a5 + 16);
      v29[0] = *a5;
      v29[1] = v13;
      v30 = *(a5 + 32);
      v14 = [VMULeakDetector referenceDescription:v29 dstDescription:v11 is64bit:v12];

      if ((*(*(a1 + 32) + 97) & 1) == 0 && VMUGraphNodeType_IsVMRegion(*(v10 + 8) >> 60))
      {
        v15 = [*(*(a1 + 32) + 8) vmuVMRegionForNode:a4];
        v16 = v15;
        *(v10 + 8) = *(v10 + 8) & 0xF000000000000000 | (v15[22] + v15[23] - v15[24]) & 0xFFFFFFFFFFFFFFFLL;
        if ((*(*(a1 + 32) + 96) & 1) == 0)
        {
          v17 = MEMORY[0x1E696AEC0];
          v18 = VMUMemorySizeString(v15[23]);
          v19 = [v17 stringWithFormat:@"%@  dirty: %s  swapped: %s", v14, v18, VMUMemorySizeString(v16[22])];

          v20 = v16[24];
          if (v20)
          {
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  purgableVolatile: %s", v19, VMUMemorySizeString(v20)];
          }

          else
          {
            v14 = v19;
          }
        }
      }

      v21 = *(*(a1 + 72) + 8 * a4);
      v22 = *(*(a1 + 32) + 96);
      v23 = *(a1 + 48);
      v24 = *(v10 + 8);
      v25 = *(a1 + 40);
      v26 = v21;
      v27 = v24 & 0xFFFFFFFFFFFFFFFLL;
      if (v22 == 1)
      {
        [v23 addChildWithName:v14 address:0 count:1 numBytes:v27 toNode:v25];
      }

      else
      {
        [v23 addUniqueChildWithName:v14 address:0 count:1 numBytes:v27 toNode:v25];
      }
      v28 = ;

      *(*(a1 + 72) + 8 * a4) = v28;
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  objc_autoreleasePoolPop(v8);
}

uint64_t __81__VMUAutoreleasePoolsAnalyzer_reattachAutoreleasePoolsChainFromHottestToColdest___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _BYTE *a6)
{
  v6 = *(a5 + 8);
  v7 = *(*(result + 32) + 80);
  if (v6 == v7)
  {
    *(*(*(result + 40) + 8) + 24) = a4;
  }

  else if (v6 > v7)
  {
    *a6 = 1;
  }

  return result;
}

void __70__VMUAutoreleasePoolsAnalyzer_iterateThroughPoolsPerThread_withBlock___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[4];
  v10 = *(v9 + 8);
  if (v10)
  {
    [v10 nodeDetails:a3];
    v9 = a1[4];
  }

  if (*(a5 + 8) >= *(v9 + 88))
  {
    v11 = *(a5 + 32);
    if ((*(v11 + 8) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      v12 = [*(v11 + 16) className];
      v13 = [v12 isEqualToString:kVMUAutoreleasePoolBoundaryClassName];

      if (v13)
      {
        (*(a1[5] + 16))();
        return;
      }
    }

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1[4] + 8);
    if (v15)
    {
      [v15 nodeDetails:a3];
      v16 = v52;
      v15 = *(a1[4] + 8);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = *(a5 + 8);
    v19 = [v15 srcAddressToExtraAutoreleaseCountDict];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17 + v18];
    v21 = [v19 objectForKeyedSubscript:v20];

    if (v21)
    {
      v22 = [v21 unsignedIntValue];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   COALESCED AUTORELEASES: %u", v22];
      **(a1[4] + 104) = v22 + **(a1[4] + 104) - 1;
    }

    else
    {
      v23 = &stru_1F461F9C8;
    }

    v24 = *(a1[4] + 64);
    v25 = @"     ** %u:  ";
    v26 = a4 >> 3;
    if (*v24 > a4 && ((*(v24 + v26 + 4) >> (a4 & 7)) & 1) != 0)
    {
      v25 = @"        %u:  ";
    }

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:v25, *(*(a1[6] + 8) + 24)];
    (*(a1[5] + 16))();
    v28 = [v27 length];
    ++*(*(a1[6] + 8) + 24);
    v29 = a1[4];
    v30 = *(v29 + 64);
    if (*v30 <= a4 || ((*(v30 + v26 + 4) >> (a4 & 7)) & 1) == 0)
    {
      v31 = [v29 memoryTreeHeldByAutoreleasedNode:a1[7] node:a4];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 componentsSeparatedByString:@"\n"];
        v34 = [v33 count];
        v35 = v34 - 1;
        if (v34 != 1)
        {
          v48 = v32;
          v49 = v27;
          v50 = v21;
          v51 = v14;
          v36 = 0;
          v37 = 1;
          v38 = v28;
          v39 = 0x1E696A000uLL;
          do
          {
            if (v37 != 1)
            {
              v40 = a1[5];
              v41 = [*(v39 + 3776) stringWithFormat:@"%*s", v38, ""];
              (*(v40 + 16))(v40, v41);
            }

            v42 = a1[5];
            v43 = *(v39 + 3776);
            v44 = [v33 objectAtIndexedSubscript:v36];
            v45 = [v43 stringWithFormat:@"%s%s\n", objc_msgSend(v44, "UTF8String"), -[__CFString UTF8String](v23, "UTF8String")];
            (*(v42 + 16))(v42, v45);

            if (v37 == 1)
            {

              v23 = &stru_1F461F9C8;
            }

            v36 = v37;
            v46 = v35 > v37++;
            v39 = 0x1E696A000;
          }

          while (v46);
          v21 = v50;
          v14 = v51;
          v32 = v48;
          v27 = v49;
        }

        goto LABEL_29;
      }

      v29 = a1[4];
    }

    v32 = [*(v29 + 40) nodeDescription:a4];
    v47 = a1[5];
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%s\n", objc_msgSend(v32, "UTF8String"), -[__CFString UTF8String](v23, "UTF8String")];
    (*(v47 + 16))(v47, v33);
LABEL_29:

    objc_autoreleasePoolPop(v14);
  }
}

- (void)dealloc
{
  reachableOutsideOfAutoreleasePoolsMap = self->_reachableOutsideOfAutoreleasePoolsMap;
  if (reachableOutsideOfAutoreleasePoolsMap)
  {
    free(reachableOutsideOfAutoreleasePoolsMap);
  }

  autoreleasePoolNodesByThreadIndex = self->_autoreleasePoolNodesByThreadIndex;
  if (autoreleasePoolNodesByThreadIndex)
  {
    free(autoreleasePoolNodesByThreadIndex);
  }

  autoreleasePoolChain = self->_autoreleasePoolChain;
  if (autoreleasePoolChain)
  {
    free(autoreleasePoolChain);
  }

  v6.receiver = self;
  v6.super_class = VMUAutoreleasePoolsAnalyzer;
  [(VMUAutoreleasePoolsAnalyzer *)&v6 dealloc];
}

- (void)iterateAutoreleasePoolsInThreadsGroupingByType:(BOOL)a3 showVirtualSize:(BOOL)a4 extraReleasesCount:(unsigned int *)a5 withBlock:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a6;
  self->_options.groupByType = a3;
  self->_options.referenceTreeShowRegionVirtualSize = a4;
  self->_options.autoreleasePoolsExtraReleasesCount = a5;
  threadNamesByThreadIndex = self->_threadNamesByThreadIndex;
  if (threadNamesByThreadIndex && self->_autoreleasePoolNodesByThreadIndex)
  {
    if ([(NSMutableArray *)threadNamesByThreadIndex count])
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = [(NSMutableArray *)self->_threadNamesByThreadIndex objectAtIndexedSubscript:v12];
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = &stru_1F461F9C8;
        }

        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread %u  %s\n", v13, -[__CFString UTF8String](v15, "UTF8String")];
        v10[2](v10, v16);

        v17 = self->_autoreleasePoolNodesByThreadIndex[v12];
        if (v17)
        {
          [(VMUAutoreleasePoolsAnalyzer *)self iterateThroughPoolsPerThread:v17 withBlock:v10];
        }

        else
        {
          v10[2](v10, @"    no autorelease pool\n");
        }

        v10[2](v10, @"\n");

        v12 = (v13 + 1);
        v13 = v12;
      }

      while ([(NSMutableArray *)self->_threadNamesByThreadIndex count]> v12);
    }

    if ([(NSMutableSet *)self->_unreferencedAutoreleasePoolNodes count])
    {
      v10[2](v10, @"Autorelease pool pages not associated with a thread\n");
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = self->_unreferencedAutoreleasePoolNodes;
      v18 = [(NSMutableSet *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v28;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = MEMORY[0x1E696AEC0];
            v23 = -[VMUProcessObjectGraph nodeDescription:](self->super._graph, "nodeDescription:", [*(*(&v27 + 1) + 8 * i) unsignedIntValue]);
            v24 = [v22 stringWithFormat:@"    %s\n", objc_msgSend(v23, "UTF8String")];
            v10[2](v10, v24);
          }

          v19 = [(NSMutableSet *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v19);
      }

      v10[2](v10, @"\n");
    }
  }

  else
  {
    v10[2](v10, @"Error occured while printing autoreleasePools per thread.\n");
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)populateAutoreleasePoolsDetails
{
  v3 = objc_opt_new();
  threadNamesByThreadIndex = self->_threadNamesByThreadIndex;
  self->_threadNamesByThreadIndex = v3;

  v5 = objc_opt_new();
  unreferencedAutoreleasePoolNodes = self->_unreferencedAutoreleasePoolNodes;
  self->_unreferencedAutoreleasePoolNodes = v5;

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  *&self->_offsets.parentPageOffset = [(VMUProcessObjectGraph *)self->super._graph autoreleasePoolOffsets];
  self->_offsets.firstEntryOffset = v7;
  v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:259];
  v9 = VMUCreateRootNodeMarkingMap(self->super._graph);
  v10 = [(VMUDirectedGraph *)self->super._graph nodeNamespaceSize];
  v11 = malloc_type_calloc(1uLL, ((v10 + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v11 = v10;
  self->_reachableOutsideOfAutoreleasePoolsMap = v11;
  [(VMUProcessObjectGraph *)self->super._graph markReachableNodesFromRoots:v9 inMap:v11 options:2];
  v29 = v8;
  LODWORD(v8) = [(VMUDirectedGraph *)self->super._graph nodeNamespaceSize];
  v12 = malloc_type_calloc(1uLL, ((v8 + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v12 = v8;
  [(VMUProcessObjectGraph *)self->super._graph markReachableNodesFromRoots:v9 inMap:v12];
  v28 = v9;
  reachableOutsideOfAutoreleasePoolsMap = self->_reachableOutsideOfAutoreleasePoolsMap;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke;
  v35 = &unk_1E82785F8;
  v27 = v12;
  v36 = self;
  v37 = v12;
  v14 = v33;
  v17 = *reachableOutsideOfAutoreleasePoolsMap;
  v15 = reachableOutsideOfAutoreleasePoolsMap + 1;
  v16 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = 8;
    do
    {
      v20 = *(v15 + (v18 >> 3));
      if (v16 >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v16;
      }

      v22 = (v18 + 8);
      if (v22 >= v16)
      {
        v23 = v16;
      }

      else
      {
        v23 = v18 + 8;
      }

      if (v20 != 255 && v18 < v23)
      {
        do
        {
          if ((v20 & 1) == 0)
          {
            v34(v14, v18);
          }

          v18 = (v18 + 1);
          v20 >>= 1;
        }

        while (v21 != v18);
      }

      v19 += 8;
      v18 = v22;
    }

    while (v22 < v16);
  }

  free(v27);
  if (v28)
  {
    free(v28);
  }

  graph = self->super._graph;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_2;
  v30[3] = &unk_1E827A9B0;
  v30[4] = self;
  v32 = v38;
  v26 = v29;
  v31 = v26;
  [(VMUObjectGraph *)graph enumerateObjectsWithBlock:v30];

  _Block_object_dispose(v38, 8);
}

void *__62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke(void *result, uint64_t a2)
{
  v4 = result[5];
  if (*v4 > a2 && ((*(v4 + (a2 >> 3) + 4) >> (a2 & 7)) & 1) != 0)
  {
    v11 = v2;
    v12 = v3;
    v5 = result;
    ++*(result[4] + 144);
    v6 = result[4];
    result = *(v6 + 8);
    if (result)
    {
      result = [result nodeDetails:a2];
      v6 = v5[4];
      v7 = v9 & 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    *(v6 + 152) += v7;
  }

  return result;
}

void __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v6 = a3[1] >> 60;
  v7 = a1[4];
  if (v6 == 2)
  {
    if (!*(v7 + 48))
    {
      *(a1[4] + 48) = malloc_type_calloc([*(v7 + 72) count], 4uLL, 0x100004052888210uLL);
      v7 = a1[4];
    }

    v10 = [*(v7 + 8) vmuVMRegionForNode:a2];
    if ([v10 isStack])
    {
      v11 = [v10[5] UTF8String];
      if (v11)
      {
        v12 = v11;
        if (strlen(v11) >= 8)
        {
          __endptr[0] = 0;
          v13 = strtol(v12 + 7, __endptr, 10);
          if (__endptr[0] > v12 + 7)
          {
            v14 = v13;
            if (v13 > 0 || (*(*(a1[6] + 8) + 24) & 1) == 0)
            {
              v15 = a1[4];
              v16 = *(v15 + 8);
              v44[0] = MEMORY[0x1E69E9820];
              v44[1] = 3221225472;
              v44[2] = __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_3;
              v44[3] = &unk_1E827A938;
              v44[4] = v15;
              v45 = v10;
              v46 = v14;
              [v16 enumerateReferencesOfNode:a2 withBlock:v44];
            }
          }
        }
      }
    }

    else if ((*(*(a1[6] + 8) + 24) & 1) == 0)
    {
      v23 = [v10 type];
      if ([v23 hasPrefix:@"__DATA"])
      {
        v24 = [v10 path];
        v25 = [v24 lastPathComponent];
        v26 = [v25 hasPrefix:@"dyld"];

        if (v26)
        {
          v27 = [*(a1[4] + 8) rangeForSymbolName:@"_main_thread" inRegion:v10];
          v28 = a1[4];
          v29 = *(v28 + 8);
          if (v27 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_5;
            v42[3] = &unk_1E827A6A0;
            v30 = a1[6];
            v42[4] = v28;
            v42[5] = v30;
            v31 = v42;
          }

          else
          {
            v32 = [v29 is64bit];
            v33 = 348;
            if (v32)
            {
              v33 = 568;
            }

            v34 = v27 - *a3 + v33;
            v35 = a1[4];
            v29 = *(v35 + 8);
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_4;
            v43[3] = &unk_1E827A960;
            v43[6] = v34;
            v36 = a1[6];
            v43[4] = v35;
            v43[5] = v36;
            v31 = v43;
          }

          [v29 enumerateReferencesOfNode:a2 withBlock:v31];
        }
      }

      else
      {
      }
    }
  }

  else if (v6 == 4)
  {
    v8 = [*(v7 + 8) threadNameForAddress:a2];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"no posix thread";
    }

    v37 = v9;
    [*(a1[4] + 72) addObject:?];
  }

  else
  {
    v17 = *(v7 + 8);
    *__endptr = *a3;
    v41 = a3[2];
    if ([v17 nodeDetailIsAutoreleasePoolContentPage:__endptr])
    {
      v18 = *(a1[4] + 32);
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      [v18 addObject:v19];

      ++*(a1[4] + 120);
      *(a1[4] + 124) += *(a3 + 2);
      v21 = a1[4];
      v20 = a1[5];
      v22 = *(v21 + 8);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_6;
      v38[3] = &unk_1E827A988;
      v38[4] = v21;
      v39 = v20;
      [v22 enumerateReferencesOfNode:a2 withBlock:v38];
    }
  }
}

void __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([*(a1[4] + 8) nodeIsAutoreleasePoolContentPage:a4])
  {
    v9 = *(a1[4] + 8);
    v11 = *(a5 + 8);
    v12 = *(a5 + 24);
    v10 = [v9 nodeDescription:a3 withDestinationNode:a4 referenceInfo:&v11];
    if (([v10 containsString:kVMUAutoreleasePoolThreadSpecificDataKeyString] & 1) != 0 || *(a1[5] + 232) == 1 && objc_msgSend(v10, "containsString:", @"+ 960"))
    {
      *(*(a1[4] + 48) + 4 * a1[6]) = a4;
    }
  }
}

void *__62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_4(void *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _BYTE *a6)
{
  if (*(a5 + 8) == result[6])
  {
    **(result[4] + 48) = a4;
    *(*(result[5] + 8) + 24) = 1;
    *a6 = 1;
  }

  return result;
}

uint64_t __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = a4;
  v13 = 0uLL;
  v14 = 0;
  v9 = *(*(a1 + 32) + 8);
  if (v9)
  {
    [v9 nodeDetails:a4];
    v9 = *(*(a1 + 32) + 8);
  }

  v11 = v13;
  v12 = v14;
  result = [v9 nodeDetailIsAutoreleasePoolContentPage:&v11];
  if (result)
  {
    **(*(a1 + 32) + 48) = v7;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a6 = 1;
  }

  return result;
}

void __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_6(uint64_t a1, int a2, int a3, void *key, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (*(a5 + 8) >= *(v5 + 88))
  {
    v6 = key;
    v8 = *(a5 + 32);
    if ((*(v8 + 8) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      v9 = [*(v8 + 16) className];
      v10 = [v9 isEqualToString:kVMUAutoreleasePoolBoundaryClassName];

      if (v10)
      {
        return;
      }

      v5 = *(a1 + 32);
    }

    ++*(v5 + 112);
    v11 = NSMapGet(*(a1 + 40), v6);
    if (v11)
    {
      ++v11[2];
    }

    else
    {
      ++*(*(a1 + 32) + 116);
      v12 = *(a1 + 32);
      v13 = *(v12 + 64);
      if (*v13 <= v6 || ((*(v13 + (v6 >> 3) + 4) >> (v6 & 7)) & 1) == 0)
      {
        ++*(v12 + 128);
        *(*(a1 + 32) + 136) += *(v8 + 8) & 0xFFFFFFFFFFFFFFFLL;
      }

      v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040D9A13B51uLL);
      v14[2] = 1;
      *v14 = *(v8 + 8) & 0xFFFFFFFFFFFFFFFLL;
      v15 = *(a1 + 40);

      NSMapInsert(v15, v6, v14);
    }
  }
}

- (id)analysisSummaryWithError:(id *)a3
{
  v4 = objc_opt_new();
  p_autoreleasePoolsStatsInfo = &self->_autoreleasePoolsStatsInfo;
  LODWORD(self) = self->_autoreleasePoolsStatsInfo.autoreleasePoolContentPageCount;
  v6 = [VMUAnalyzerSummaryField alloc];
  if (self)
  {
    v7 = [(VMUAnalyzerSummaryField *)v6 initWithKey:@"Total entries in autoreleasepools" numericalValue:p_autoreleasePoolsStatsInfo->totalEntriesInAutoreleasePools objectValue:0 fieldType:1];
    [v4 addObject:v7];
    v8 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Unique entries in autoreleasepools" numericalValue:p_autoreleasePoolsStatsInfo->uniqueEntriesInAutoreleasePools objectValue:0 fieldType:1];

    [v4 addObject:v8];
    autoreleasePoolContentPageCount = p_autoreleasePoolsStatsInfo->autoreleasePoolContentPageCount;
    if (autoreleasePoolContentPageCount == 1)
    {
      v10 = " ";
    }

    else
    {
      v10 = "s";
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u block%s  %s bytes", autoreleasePoolContentPageCount, v10, VMUMemorySizeString(p_autoreleasePoolsStatsInfo->autoreleasePoolContentPageTotalSize)];
    v12 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Memory size of autoreleasepool content blocks" numericalValue:0 objectValue:v11 fieldType:0];

    [v4 addObject:v12];
    directlyHeldOnlyInAutoreleasePoolsCount = p_autoreleasePoolsStatsInfo->directlyHeldOnlyInAutoreleasePoolsCount;
    if (directlyHeldOnlyInAutoreleasePoolsCount == 1)
    {
      v14 = " ";
    }

    else
    {
      v14 = "s";
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u block%s  %s bytes", directlyHeldOnlyInAutoreleasePoolsCount, v14, VMUMemorySizeString(p_autoreleasePoolsStatsInfo->directlyHeldOnlyInAutoreleasePoolsSize)];

    v16 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Memory directly held only by autorelease pools" numericalValue:0 objectValue:v15 fieldType:0];
    [v4 addObject:v16];
    v17 = p_autoreleasePoolsStatsInfo->reachableOnlyFromAutoreleasePoolsCount - p_autoreleasePoolsStatsInfo->directlyHeldOnlyInAutoreleasePoolsCount;
    if (v17 == 1)
    {
      v18 = " ";
    }

    else
    {
      v18 = "s";
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u block%s  %s bytes", v17, v18, VMUMemorySizeString(p_autoreleasePoolsStatsInfo->reachableOnlyFromAutoreleasePoolsSize - p_autoreleasePoolsStatsInfo->directlyHeldOnlyInAutoreleasePoolsSize)];

    v20 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Memory indirectly held only by autorelease pools" numericalValue:0 objectValue:v19 fieldType:0];
    [v4 addObject:v20];
    autoreleasePoolContentPageTotalSize = p_autoreleasePoolsStatsInfo->autoreleasePoolContentPageTotalSize;
    v22 = p_autoreleasePoolsStatsInfo->reachableOnlyFromAutoreleasePoolsCount + p_autoreleasePoolsStatsInfo->autoreleasePoolContentPageCount;
    reachableOnlyFromAutoreleasePoolsSize = p_autoreleasePoolsStatsInfo->reachableOnlyFromAutoreleasePoolsSize;
    if (v22 == 1)
    {
      v24 = " ";
    }

    else
    {
      v24 = "s";
    }

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u block%s  %s bytes", v22, v24, VMUMemorySizeString(reachableOnlyFromAutoreleasePoolsSize + autoreleasePoolContentPageTotalSize)];

    v26 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Total memory of autorelease pools and content blocks" numericalValue:0 objectValue:v25 fieldType:0];
    [v4 addObject:v26];
  }

  else
  {
    v26 = [(VMUAnalyzerSummaryField *)v6 initWithKey:kVMUAnalysisSummaryKey[0] numericalValue:0 objectValue:@"No autorelease pools" fieldType:0];
    [v4 addObject:v26];
  }

  return v4;
}

- ($51BDE1E611C99AA6751D559730815866)autoreleasePoolsStatsInfo
{
  v3 = *&self[2].var6;
  *&retstr->var0 = *&self[2].var4;
  *&retstr->var4 = v3;
  *&retstr->var6 = *&self[3].var0;
  return self;
}

- ($938B03310D06493B2963E5A84CB75A7E)offsets
{
  p_offsets = &self->_offsets;
  v3 = *&self->_offsets.parentPageOffset;
  firstEntryOffset = p_offsets->firstEntryOffset;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = firstEntryOffset;
  return result;
}

- ($F98408A3EE049A81EB8D46654FFD7652)options
{
  p_options = &self->_options;
  v3 = *&self->_options.groupByType;
  autoreleasePoolsExtraReleasesCount = p_options->autoreleasePoolsExtraReleasesCount;
  result.var2 = autoreleasePoolsExtraReleasesCount;
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  return result;
}

@end