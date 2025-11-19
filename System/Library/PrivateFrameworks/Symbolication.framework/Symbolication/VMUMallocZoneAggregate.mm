@interface VMUMallocZoneAggregate
- (VMUMallocZoneAggregate)initWithZoneName:(id)a3 options:(id)a4;
- (id)_classDisplayName:(id)a3;
- (id)classInfosSortedByName;
- (id)classInfosSortedBySizeOrCount:(unsigned int)a3;
- (id)classInfosSortedByTotalInternalFragmentation;
- (void)dealloc;
- (void)enumerateAllocationSizesWithBlock:(id)a3;
- (void)enumerateBinaryCountDataSortedBy:(unsigned int)a3 withBlock:(id)a4;
- (void)incrementAllocationCountForClassInfo:(id)a3 size:(unint64_t)a4;
- (void)modifySize:(int64_t)a3 count:(int64_t)a4 forClassInfo:(id)a5;
@end

@implementation VMUMallocZoneAggregate

- (VMUMallocZoneAggregate)initWithZoneName:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = VMUMallocZoneAggregate;
  v9 = [(VMUMallocZoneAggregate *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_heapAndVMOptions, a4);
    objc_storeStrong(&v10->_zoneName, a3);
    v11 = objc_opt_new();
    quantaCounter = v10->_quantaCounter;
    v10->_quantaCounter = v11;

    v13 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:259];
    classInfoToClassCountDataMap = v10->_classInfoToClassCountDataMap;
    v10->_classInfoToClassCountDataMap = v13;

    v15 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:259];
    binaryNameToBinaryCountDataMap = v10->_binaryNameToBinaryCountDataMap;
    v10->_binaryNameToBinaryCountDataMap = v15;
  }

  return v10;
}

- (void)dealloc
{
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, self->_classInfoToClassCountDataMap);
  value = 0;
  while (NSNextMapEnumeratorPair(&enumerator, 0, &value))
  {
    v3 = *(value + 4);
    if (v3)
    {
      free(v3);
      *(value + 4) = 0;
    }
  }

  NSEndMapTableEnumeration(&enumerator);
  v4.receiver = self;
  v4.super_class = VMUMallocZoneAggregate;
  [(VMUMallocZoneAggregate *)&v4 dealloc];
}

- (void)incrementAllocationCountForClassInfo:(id)a3 size:(unint64_t)a4
{
  self->_allocatedSize += a4;
  ++self->_blockCount;
  quantaCounter = self->_quantaCounter;
  v7 = MEMORY[0x1E696AD98];
  v9 = a3;
  v8 = [v7 numberWithUnsignedLongLong:a4];
  [(NSCountedSet *)quantaCounter addObject:v8];

  [(VMUMallocZoneAggregate *)self modifySize:a4 count:1 forClassInfo:v9];
}

- (void)modifySize:(int64_t)a3 count:(int64_t)a4 forClassInfo:(id)a5
{
  key = a5;
  v8 = objc_autoreleasePoolPush();
  if (a3 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = -a3;
  }

  v10 = NSMapGet(self->_classInfoToClassCountDataMap, key);
  if (!v10)
  {
    v10 = malloc_type_malloc(0x30uLL, 0x102004095A10554uLL);
    *v10 = 0;
    v10[1] = 0;
    *(v10 + 10) = [key ivarGapForClassHierarchy];
    v10[3] = 0;
    v10[4] = 0;
    v10[2] = 0;
    NSMapInsert(self->_classInfoToClassCountDataMap, key, v10);
  }

  v11 = [key binaryName];
  if (![(__CFString *)v11 length])
  {

    v11 = @"non-object";
  }

  v12 = NSMapGet(self->_binaryNameToBinaryCountDataMap, v11);
  if (!v12)
  {
    v12 = malloc_type_malloc(0x18uLL, 0x108004098BBCF0FuLL);
    *v12 = 0;
    v12[1] = 0;
    NSMapInsert(self->_binaryNameToBinaryCountDataMap, v11, v12);
  }

  v13 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions showSizes];
  v14 = *v10;
  if (v13 && v14)
  {
    if (!v10[3] && v10[1] / v14 != v9)
    {
      v10[3] = 4;
      v15 = malloc_type_malloc(0x40uLL, 0x1000040451B5BE8uLL);
      v10[4] = v15;
      v10[2] = 1;
      v14 = *v10;
      *v15 = v10[1] / *v10;
      v15[1] = v14;
    }

    v16 = v10[2];
    if (v16)
    {
      v17 = 0;
      v18 = v10[4];
      v19 = 1;
      while (v16 != v17)
      {
        v20 = v18[2 * v17];
        if (v9 < v20)
        {
          goto LABEL_23;
        }

        if (v9 == v20)
        {
          v18[2 * v17 + 1] += a4;
          goto LABEL_29;
        }

        v17 = v19;
        if (v16 < v19++)
        {
          goto LABEL_29;
        }
      }

      v17 = v10[2];
LABEL_23:
      if (v16 == v10[3])
      {
        v10[3] = 4 * v16;
        v18 = malloc_type_realloc(v18, v16 << 6, 0x1000040451B5BE8uLL);
        v10[4] = v18;
        v16 = v10[2];
      }

      if (v16 > v17)
      {
        memmove(&v18[2 * v19], &v18[2 * v17], 16 * (v16 - v17));
        v18 = v10[4];
        v16 = v10[2];
      }

      v22 = &v18[2 * v17];
      *v22 = v9;
      v22[1] = a4;
      v10[2] = v16 + 1;
      v14 = *v10;
    }
  }

LABEL_29:
  v23 = v10[1] + a3;
  *v10 = v14 + a4;
  v10[1] = v23;
  v24 = v12[1] + a3;
  *v12 += a4;
  v12[1] = v24;

  objc_autoreleasePoolPop(v8);
}

- (id)_classDisplayName:(id)a3
{
  heapAndVMOptions = self->_heapAndVMOptions;
  v4 = a3;
  if ([(VMUHeapAndVMAggregatorOptions *)heapAndVMOptions showRawClassNames])
  {
    [v4 className];
  }

  else
  {
    [v4 displayName];
  }
  v5 = ;

  return v5;
}

- (id)classInfosSortedBySizeOrCount:(unsigned int)a3
{
  v5 = NSAllMapTableKeys(self->_classInfoToClassCountDataMap);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__VMUMallocZoneAggregate_classInfosSortedBySizeOrCount___block_invoke;
  v8[3] = &unk_1E8279E08;
  v8[4] = self;
  v9 = a3;
  v6 = [v5 sortedArrayUsingComparator:v8];

  return v6;
}

uint64_t __56__VMUMallocZoneAggregate_classInfosSortedBySizeOrCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 56);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKey:v7];
  v9 = [*(*(a1 + 32) + 56) objectForKey:v6];
  v10 = v8[1];
  v11 = *v8 - *v9;
  v12 = v10 - v9[1];
  v13 = *(a1 + 40);
  v14 = [*(a1 + 32) _classDisplayName:v7];

  v15 = [*(a1 + 32) _classDisplayName:v6];

  v16 = _compareSizeCount(v13, v11, v12, v14, v15);
  return v16;
}

- (id)classInfosSortedByName
{
  v3 = NSAllMapTableKeys(self->_classInfoToClassCountDataMap);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__VMUMallocZoneAggregate_classInfosSortedByName__block_invoke;
  v6[3] = &unk_1E8279E30;
  v6[4] = self;
  v4 = [v3 sortedArrayUsingComparator:v6];

  return v4;
}

uint64_t __48__VMUMallocZoneAggregate_classInfosSortedByName__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 _classDisplayName:a2];
  v8 = [*(a1 + 32) _classDisplayName:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (id)classInfosSortedByTotalInternalFragmentation
{
  v3 = NSAllMapTableKeys(self->_classInfoToClassCountDataMap);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__VMUMallocZoneAggregate_classInfosSortedByTotalInternalFragmentation__block_invoke;
  v6[3] = &unk_1E8279E30;
  v6[4] = self;
  v4 = [v3 sortedArrayUsingComparator:v6];

  return v4;
}

uint64_t __70__VMUMallocZoneAggregate_classInfosSortedByTotalInternalFragmentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 56) objectForKey:v5];
  v8 = [*(*(a1 + 32) + 56) objectForKey:v6];
  v9 = *v8 * *(v8 + 40) - *v7 * *(v7 + 40);
  if (v9 <= 0)
  {
    if (v9 < 0)
    {
      v10 = -1;
    }

    else
    {
      v11 = [*(a1 + 32) _classDisplayName:v5];
      v12 = [*(a1 + 32) _classDisplayName:v6];
      v10 = [v11 compare:v12];
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)enumerateBinaryCountDataSortedBy:(unsigned int)a3 withBlock:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = NSAllMapTableKeys(self->_binaryNameToBinaryCountDataMap);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__VMUMallocZoneAggregate_enumerateBinaryCountDataSortedBy_withBlock___block_invoke;
  v20[3] = &unk_1E8279E58;
  v20[4] = self;
  v21 = a3;
  v8 = [v7 sortedArrayUsingComparator:v20];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [(NSMapTable *)self->_binaryNameToBinaryCountDataMap objectForKey:v13];
        (*(v6 + 2))(v6, v13, *v14, v14[1]);
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __69__VMUMallocZoneAggregate_enumerateBinaryCountDataSortedBy_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 64);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKey:v7];
  v9 = [*(*(a1 + 32) + 64) objectForKey:v6];
  v10 = _compareSizeCount(*(a1 + 40), *v8 - *v9, v8[1] - v9[1], v7, v6);

  return v10;
}

- (void)enumerateAllocationSizesWithBlock:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSCountedSet *)self->_quantaCounter allObjects];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_19];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v4[2](v4, [*(*(&v13 + 1) + 8 * v11) unsignedLongLongValue], -[NSCountedSet countForObject:](self->_quantaCounter, "countForObject:", *(*(&v13 + 1) + 8 * v11)));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __60__VMUMallocZoneAggregate_enumerateAllocationSizesWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 unsignedLongLongValue];
  v6 = [v4 unsignedLongLongValue];

  if (v5 - v6 >= 1)
  {
    return 1;
  }

  else
  {
    return (v5 - v6) >> 63;
  }
}

@end