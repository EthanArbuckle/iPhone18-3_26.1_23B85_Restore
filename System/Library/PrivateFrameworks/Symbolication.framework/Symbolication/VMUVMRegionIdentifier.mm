@interface VMUVMRegionIdentifier
+ (id)descriptionForRange:(_VMURange)range inSortedRegions:(id)regions options:(unint64_t)options;
- ($B3784314699B2BBEAD7DAC31D728563A)computedStatisticsForZoneWithName:(SEL)name;
- ($B3784314699B2BBEAD7DAC31D728563A)summaryStatisticsOfAllZones;
- (NSArray)zoneNames;
- (VMUVMRegionIdentifier)init;
- (VMUVMRegionIdentifier)initWithGraph:(id)graph options:(unint64_t)options;
- (VMUVMRegionIdentifier)initWithVMUTask:(id)task options:(unint64_t)options;
- (id)descriptionForMallocZoneTotals:(unint64_t)totals memorySizeDivisor:(unsigned int)divisor;
- (id)nonSubmapRegionContainingAddress:(unint64_t)address;
- (int)_recordRegionsAroundAddress:(unint64_t)address regionDescriptionOptions:(unint64_t)options;
- (void)_computeStatistics:(id *)statistics;
@end

@implementation VMUVMRegionIdentifier

- (VMUVMRegionIdentifier)init
{
  v8.receiver = self;
  v8.super_class = VMUVMRegionIdentifier;
  v2 = [(VMUVMRegionIdentifier *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    regions = v2->_regions;
    v2->_regions = v3;

    v5 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:259];
    mallocZoneStatisticsMap = v2->_mallocZoneStatisticsMap;
    v2->_mallocZoneStatisticsMap = v5;
  }

  return v2;
}

- (VMUVMRegionIdentifier)initWithVMUTask:(id)task options:(unint64_t)options
{
  taskCopy = task;
  v8 = [(VMUVMRegionIdentifier *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_task, task);
    v10 = [[VMUTaskThreadStates alloc] initWithVMUTask:taskCopy];
    threadStates = v9->_threadStates;
    v9->_threadStates = v10;

    v12 = [VMUProcessLedger ledgerForVMUTask:v9->_task];
    ledger = v9->_ledger;
    v9->_ledger = v12;

    if ([(VMUTask *)v9->_task isCore]|| (v14 = [(VMUTask *)v9->_task taskPort], (options & 0x1000) == 0) && v14)
    {
      if ([(VMUVMRegionIdentifier *)v9 _recordRegionsAroundAddress:0 regionDescriptionOptions:options])
      {

        v9 = 0;
      }
    }
  }

  return v9;
}

- (VMUVMRegionIdentifier)initWithGraph:(id)graph options:(unint64_t)options
{
  graphCopy = graph;
  v7 = [(VMUVMRegionIdentifier *)self init];
  if (v7)
  {
    if ([graphCopy zoneCount])
    {
      v8 = malloc_type_malloc(8 * [graphCopy zoneCount], 0x2004093837F09uLL);
      if ([graphCopy zoneCount])
      {
        v9 = 0;
        do
        {
          v8[v9] = malloc_type_calloc(1uLL, 0x50uLL, 0x10000404247E4FDuLL);
          NSMapInsertKnownAbsent(v7->_mallocZoneStatisticsMap, [graphCopy zoneNameForIndex:v9], v8[v9]);
          ++v9;
        }

        while (v9 < [graphCopy zoneCount]);
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __47__VMUVMRegionIdentifier_initWithGraph_options___block_invoke;
      v22[3] = &unk_1E8278E38;
      v23 = graphCopy;
      v24 = v8;
      VMUEnumerateVMAnnotatedMallocObjectsWithBlock(v23, v22);
    }

    else
    {
      v8 = 0;
    }

    v10 = [graphCopy vmPageSize] - 1;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__7;
    v20[4] = __Block_byref_object_dispose__7;
    v21 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__VMUVMRegionIdentifier_initWithGraph_options___block_invoke_137;
    v13[3] = &unk_1E8278E60;
    v11 = v7;
    v14 = v11;
    v15 = graphCopy;
    v16 = v20;
    v17 = v8;
    optionsCopy = options;
    v19 = v10;
    [v15 enumerateRegionsWithBlock:v13];
    coalesceIdenticalRegions(v11->_regions, options);
    free(v8);
    v11->_recordedPhysFootprint = BYTE2(options) & 1;
    if ((options & 0x10000) != 0)
    {
      v11->_didPhysFootprintDirtyAccounting = 1;
    }

    _Block_object_dispose(v20, 8);
  }

  return v7;
}

int64x2_t __47__VMUVMRegionIdentifier_initWithGraph_options___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (*(a3 + 8) >> 60 == 1)
  {
    v7 = a4[37];
    if (v7 != -1 && v7 >= [*(a1 + 32) zoneCount])
    {
      v8 = [*(a1 + 32) zoneCount];
      v9 = [a4 description];
      NSLog(&cfstr_MallocZoneCoun.isa, v8, v7, v9);
    }

    if (v7 < [*(a1 + 32) zoneCount])
    {
      v11 = *(*(a1 + 40) + 8 * v7);
      v12 = vdupq_n_s64(1uLL);
      v12.i64[0] = *(a3 + 8) & 0xFFFFFFFFFFFFFFFLL;
      result = vaddq_s64(*v11, v12);
      *v11 = result;
    }
  }

  return result;
}

void __47__VMUVMRegionIdentifier_initWithGraph_options___block_invoke_137(uint64_t a1, void *a2)
{
  v16 = a2;
  v4 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 24) addObject:v16];
  v5 = [*(a1 + 40) zoneCount];
  v6 = v16;
  if (v5)
  {
    v7 = v16[37];
    v8 = [*(a1 + 40) zoneCount];
    v6 = v16;
    if (v7 < v8 && v16[37] != -1 && (*(v16 + 17) || v16[36]))
    {
      v9 = [*(a1 + 40) zoneNameForIndex:?];
      v10 = *(v16 + 5);
      *(v16 + 5) = v9;

      addMallocRegionPageStatistics(v16, *(*(a1 + 56) + 8 * v16[37]));
      v6 = v16;
      v11 = *(*(*(a1 + 48) + 8) + 40);
      if (v11)
      {
        if ((*(a1 + 64) & 0x80) == 0)
        {
          v12 = v11;
          v13 = v16;
          if (shouldProbablyCoalesceRegions(v12, v13) && [v12 hasSameInfoAsRegion:v13])
          {

            v6 = v16;
            goto LABEL_13;
          }

          v6 = v16;
        }

        v14 = *(*(a1 + 56) + 8 * v6[37]);
        ++*(v14 + 56);
      }
    }
  }

LABEL_13:
  setTypeIfMallocRegion(v6);
  v15 = *(a1 + 32);
  if ((*(v15 + 48) & 1) == 0)
  {
    *(v15 + 48) = ((*(v16 + 20) | *(v16 + 2) | *(v16 + 23)) & *(a1 + 72)) != 0;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_autoreleasePoolPop(v4);
}

- (id)nonSubmapRegionContainingAddress:(unint64_t)address
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_regions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 isSubmap] & 1) == 0 && address - v9[1] < v9[2])
        {
          v10 = v9;
          goto LABEL_12;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (int)_recordRegionsAroundAddress:(unint64_t)address regionDescriptionOptions:(unint64_t)options
{
  v28 = *MEMORY[0x1E69E9840];
  if (_recordRegionsAroundAddress_regionDescriptionOptions__onceToken != -1)
  {
    [VMUVMRegionIdentifier _recordRegionsAroundAddress:regionDescriptionOptions:];
  }

  v7 = getprogname();
  v8 = strcmp(v7, "ReportCrash");
  optionsCopy = options | 0x500;
  if (v8)
  {
    optionsCopy = options;
  }

  v10 = optionsCopy & 0x30000;
  v11 = optionsCopy & 0xFFFFFFFFFFFDFFFFLL;
  if ((optionsCopy & 0x30000) == 0)
  {
    optionsCopy |= 0x10000uLL;
  }

  if (v10 == 196608)
  {
    v12 = v11;
  }

  else
  {
    v12 = optionsCopy;
  }

  self->_recordedPhysFootprint = BYTE2(v12) & 1;
  if ((v12 & 0x10000) != 0)
  {
    self->_didPhysFootprintDirtyAccounting = 1;
  }

  [_recordRegionsAroundAddress_regionDescriptionOptions__recordRegionsLock lock];
  v13 = recordRegions(self->_task, address, self->_regions, self->_threadStates, self->_mallocZoneStatisticsMap, self->_ledger, v12);
  [_recordRegionsAroundAddress_regionDescriptionOptions__recordRegionsLock unlock];
  if (!v13)
  {
    if (*MEMORY[0x1E69E9AA0] >= *MEMORY[0x1E69E9AB8])
    {
      v14 = *MEMORY[0x1E69E9AB8];
    }

    else
    {
      v14 = *MEMORY[0x1E69E9AA0];
    }

    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = self->_regions;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
LABEL_18:
      v19 = 0;
      while (1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if (!self->_hasFractionalPageSizes)
        {
          v20 = (*(*(*(&v23 + 1) + 8 * v19) + 160) | *(*(*(&v23 + 1) + 8 * v19) + 16) | *(*(*(&v23 + 1) + 8 * v19) + 184)) & v14;
          self->_hasFractionalPageSizes = v20 != 0;
          if (v20)
          {
            break;
          }
        }

        if (v17 == ++v19)
        {
          v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v17)
          {
            goto LABEL_18;
          }

          break;
        }
      }
    }

    v13 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

void __78__VMUVMRegionIdentifier__recordRegionsAroundAddress_regionDescriptionOptions___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = _recordRegionsAroundAddress_regionDescriptionOptions__recordRegionsLock;
  _recordRegionsAroundAddress_regionDescriptionOptions__recordRegionsLock = v0;
}

- (NSArray)zoneNames
{
  mallocZoneStatisticsMap = self->_mallocZoneStatisticsMap;
  if (mallocZoneStatisticsMap)
  {
    v3 = NSAllMapTableKeys(mallocZoneStatisticsMap);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 copy];

  return v4;
}

- ($B3784314699B2BBEAD7DAC31D728563A)computedStatisticsForZoneWithName:(SEL)name
{
  v8 = a4;
  v6 = NSMapGet(self->_mallocZoneStatisticsMap, v8);
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  if (v6)
  {
    *&retstr->var0 = *v6;
    *&retstr->var2 = v6[1];
    *&retstr->var4 = v6[2];
    *&retstr->var6 = v6[3];
  }

  else
  {
    NSLog(&cfstr_NoMallocZoneSt.isa, v8);
  }

  [(VMUVMRegionIdentifier *)self _computeStatistics:retstr];

  return result;
}

- ($B3784314699B2BBEAD7DAC31D728563A)summaryStatisticsOfAllZones
{
  v22 = *MEMORY[0x1E69E9840];
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  zoneNames = [(VMUVMRegionIdentifier *)self zoneNames];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = 0u;
  v6 = [zoneNames countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    v14 = 0u;
    v15 = 0u;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(zoneNames);
        }

        v11 = NSMapGet(self->_mallocZoneStatisticsMap, *(*(&v17 + 1) + 8 * v10));
        if (v11)
        {
          v15 = vaddq_s64(v15, *(v11 + 1));
          *&retstr->var2 = v15;
          v14 = vaddq_s64(v14, *(v11 + 40));
          *&retstr->var5 = v14;
          v16 = vaddq_s64(v16, *v11);
          *&retstr->var0 = v16;
          v8 += *(v11 + 7);
          retstr->var7 = v8;
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [zoneNames countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(VMUVMRegionIdentifier *)self _computeStatistics:retstr, *&v14, *&v15];

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_computeStatistics:(id *)statistics
{
  if (statistics)
  {
    var0 = statistics->var0;
    v4 = statistics->var5 + statistics->var6;
    if (v4)
    {
      v5 = v4 > var0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = 100 - 100 * var0 / v4;
      v7 = v4 - var0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    statistics->var8 = v6;
    statistics->var9 = v7;
  }
}

+ (id)descriptionForRange:(_VMURange)range inSortedRegions:(id)regions options:(unint64_t)options
{
  length = range.length;
  location = range.location;
  regionsCopy = regions;
  string = [MEMORY[0x1E696AD60] string];
  v10 = [regionsCopy count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v25 = location + length;
    v23 = location;
    v24 = length;
    optionsCopy = options;
    do
    {
      v14 = [regionsCopy objectAtIndexedSubscript:{v12, optionsCopy}];
      if (VMURangeIntersectsRange(location, length, *(v14 + 8), *(v14 + 16)))
      {
        if ([v14 isSubmap])
        {
          v12 = (v13 + 1);
          if (v11 > v12)
          {
            address = [v14 address];
            v16 = [regionsCopy objectAtIndexedSubscript:(v13 + 1)];
            address2 = [v16 address];

            v18 = address == address2;
            location = v23;
            length = v24;
            options = optionsCopy;
            if (v18)
            {
              goto LABEL_12;
            }
          }
        }

        if ([string length])
        {
          [string appendString:@"\n"];
        }

        v19 = objc_autoreleasePoolPush();
        v20 = [v14 descriptionWithOptions:options maximumLength:0];
        [string appendString:v20];

        objc_autoreleasePoolPop(v19);
        location = v23;
        length = v24;
      }

      if (*(v14 + 8) >= v25)
      {

        break;
      }

      v12 = (v13 + 1);
LABEL_12:

      v13 = v12;
    }

    while (v11 > v12);
  }

  return string;
}

void __99__VMUVMRegionIdentifier_descriptionOfRegionsAroundAddress_options_maximumLength_memorySizeDivisor___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = [a3 descriptionWithOptions:*(a1 + 48) maximumLength:*(a1 + 56) memorySizeDivisor:*(a1 + 64) hasFractionalPageSizes:*(*(a1 + 40) + 48)];
    [v4 appendFormat:@"%s%@\n", a2, v5];
  }

  else
  {
    [v4 appendFormat:@"%s%@\n", a2, &stru_1F461F9C8];
  }
}

void __99__VMUVMRegionIdentifier_descriptionOfRegionsAroundAddress_options_maximumLength_memorySizeDivisor___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = a4;
  if (v12)
  {
    if (v7)
    {
      v8 = v12[2] + v12[1];
      v9 = v7[1];
      v10 = v9 > v8;
      v11 = v9 - v8;
      if (v10)
      {
        [*(a1 + 32) appendFormat:@"%sGAP OF %#llx BYTES\n", a2, v11];
      }
    }
  }
}

- (id)descriptionForMallocZoneTotals:(unint64_t)totals memorySizeDivisor:(unsigned int)divisor
{
  totalsCopy = totals;
  v65 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  zoneNames = [(VMUVMRegionIdentifier *)self zoneNames];
  v38 = totalsCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__VMUVMRegionIdentifier_descriptionForMallocZoneTotals_memorySizeDivisor___block_invoke;
  aBlock[3] = &__block_descriptor_33_e22_Q16__0____QQQQQQQQQQ_8l;
  v62 = (totalsCopy & 0x100000) != 0;
  v8 = _Block_copy(aBlock);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __74__VMUVMRegionIdentifier_descriptionForMallocZoneTotals_memorySizeDivisor___block_invoke_2;
  v59[3] = &unk_1E8278EF8;
  v59[4] = self;
  v37 = v8;
  v60 = v37;
  v9 = [zoneNames sortedArrayUsingComparator:v59];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v55 objects:v64 count:16];
  v12 = v6;
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = *v56;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v56 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v55 + 1) + 8 * i);
        if ([v17 length] > v14)
        {
          v14 = [v17 length];
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v13);

    if (v14 <= 0xB)
    {
      v18 = 11;
    }

    else
    {
      v18 = v14;
    }

    if (v18 >= 0x3C)
    {
      v19 = 60;
    }

    else
    {
      v19 = v18;
    }

    v6 = v12;
  }

  else
  {

    v19 = 11;
  }

  appendMallocZoneTextLine(v6, v38, v19, ", "VIRTUAL", "RESIDENT", "DIRTY", "SWAPPED", "DIRTY+SWAP", "ALLOCATION", "BYTES", "DIRTY+SWAP", ", "REGION");
  if (divisor <= 1)
  {
    v20 = "SIZE";
  }

  else
  {
    v20 = "PAGES";
  }

  appendMallocZoneTextLine(v6, v38, v19, "MALLOC ZONE", v20, v20, v20, v20, v20, "COUNT", "ALLOCATED", "FRAG SIZE", "% FRAG", "COUNT");
  v21 = objc_opt_new();
  appendMallocZoneTextLine(v21, v38, v19, "===========", "=======", "=========", "=========", "=========", "=========", "=========", "=========", "=========", "======", "======");
  v36 = v21;
  [v6 appendString:v21];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v22 = v10;
  v23 = [v22 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v52;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v52 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v51 + 1) + 8 * j);
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        [(VMUVMRegionIdentifier *)self computedStatisticsForZoneWithName:v27];
        hasFractionalPageSizes = self->_hasFractionalPageSizes;
        uTF8String = [v27 UTF8String];
        v43 = v48;
        v44 = v49;
        v45 = v50;
        v41 = v46;
        v42 = v47;
        v6 = v12;
        appendMallocZoneStatsLine(v12, v38, divisor, hasFractionalPageSizes, v19, uTF8String, &v41);
      }

      v24 = [v22 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v24);
  }

  if (![v22 count])
  {
    [v6 appendString:@"No malloc zones in target process\n"];
    task = self->_task;
    v40 = 0;
    [(VMUTask *)task hasStartedWithErrorString:&v40];
    v31 = v40;
    v32 = v31;
    if (v31)
    {
      [v6 appendFormat:@"%@\n", v31];
    }
  }

  if ([(NSMapTable *)self->_mallocZoneStatisticsMap count]>= 2)
  {
    [v6 appendString:v36];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    [(VMUVMRegionIdentifier *)self summaryStatisticsOfAllZones];
    v33 = self->_hasFractionalPageSizes;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v41 = v46;
    v42 = v47;
    appendMallocZoneStatsLine(v6, v38, divisor, v33, v19, "TOTAL", &v41);
  }

  v34 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __74__VMUVMRegionIdentifier_descriptionForMallocZoneTotals_memorySizeDivisor___block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 32) == 1)
  {
    return a2[5] + a2[6];
  }

  return a2[2];
}

uint64_t __74__VMUVMRegionIdentifier_descriptionForMallocZoneTotals_memorySizeDivisor___block_invoke_2(uint64_t a1, const void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 40);
  v6 = a3;
  NSMapGet(v5, a2);
  NSMapGet(*(*(a1 + 32) + 40), v6);

  v7 = (*(*(a1 + 40) + 16))();
  if (v7 <= (*(*(a1 + 40) + 16))())
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  v9 = (*(*(a1 + 40) + 16))();
  if (v9 < (*(*(a1 + 40) + 16))())
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

@end