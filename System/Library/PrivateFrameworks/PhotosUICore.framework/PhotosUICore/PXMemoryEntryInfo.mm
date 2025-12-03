@interface PXMemoryEntryInfo
+ (int64_t)compareMemoryInfo:(id)info byRelevanceScoreToMemoryInfo:(id)memoryInfo;
+ (int64_t)compareMemoryInfo:(id)info toMemoryInfo:(id)memoryInfo;
- (PXMemoryEntryInfo)initWithMemories:(id)memories;
- (PXMemoryEntryInfo)initWithSortedMemories:(id)memories;
- (id)description;
- (id)entryByAddingMemory:(id)memory;
- (id)entryByRemovingMemory:(id)memory;
- (id)entryByReplacingMemoryInfoAtIndex:(int64_t)index withMemoryInfo:(id)info;
- (int64_t)compare:(id)compare;
- (unint64_t)indexOfMemory:(id)memory;
@end

@implementation PXMemoryEntryInfo

- (id)entryByReplacingMemoryInfoAtIndex:(int64_t)index withMemoryInfo:(id)info
{
  infoCopy = info;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoryEntryInfo.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
  }

  if ([(NSArray *)self->_memories count]<= index)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXMemoryEntryInfo.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"index < [_memories count]"}];
  }

  v8 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, -[NSArray count](self->_memories, "count")}];
  [v8 removeIndex:index];
  v9 = [(NSArray *)self->_memories objectsAtIndexes:v8];
  v10 = [v9 mutableCopy];

  v11 = [v10 count];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__PXMemoryEntryInfo_entryByReplacingMemoryInfoAtIndex_withMemoryInfo___block_invoke;
  v16[3] = &unk_1E7741778;
  v16[4] = self;
  [v10 insertObject:infoCopy atIndex:{objc_msgSend(v10, "indexOfObject:inSortedRange:options:usingComparator:", infoCopy, 0, v11, 1024, v16)}];
  v12 = [[PXMemoryEntryInfo alloc] initWithSortedMemories:v10];

  return v12;
}

uint64_t __70__PXMemoryEntryInfo_entryByReplacingMemoryInfoAtIndex_withMemoryInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [objc_opt_class() compareMemoryInfo:v5 toMemoryInfo:v4];

  return v6;
}

- (id)entryByRemovingMemory:(id)memory
{
  selfCopy = self;
  v5 = [(PXMemoryEntryInfo *)selfCopy indexOfMemory:memory];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, -[NSArray count](selfCopy->_memories, "count")}];
    [v7 removeIndex:v6];
    v8 = [(NSArray *)selfCopy->_memories objectsAtIndexes:v7];
    v9 = [[PXMemoryEntryInfo alloc] initWithSortedMemories:v8];

    selfCopy = v9;
  }

  return selfCopy;
}

- (id)entryByAddingMemory:(id)memory
{
  v4 = [PXMemoryInfo memoryInfoWithMemory:memory];
  memories = self->_memories;
  v6 = [(NSArray *)memories count];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__PXMemoryEntryInfo_entryByAddingMemory___block_invoke;
  v11[3] = &unk_1E7741778;
  v11[4] = self;
  v7 = [(NSArray *)memories indexOfObject:v4 inSortedRange:0 options:v6 usingComparator:1024, v11];
  v8 = [(NSArray *)self->_memories mutableCopy];
  [v8 insertObject:v4 atIndex:v7];
  v9 = [[PXMemoryEntryInfo alloc] initWithSortedMemories:v8];

  return v9;
}

uint64_t __41__PXMemoryEntryInfo_entryByAddingMemory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [objc_opt_class() compareMemoryInfo:v5 toMemoryInfo:v4];

  return v6;
}

- (unint64_t)indexOfMemory:(id)memory
{
  memoryCopy = memory;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  memories = self->_memories;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__PXMemoryEntryInfo_indexOfMemory___block_invoke;
  v9[3] = &unk_1E77417A0;
  v6 = memoryCopy;
  v10 = v6;
  v11 = &v12;
  [(NSArray *)memories enumerateObjectsUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __35__PXMemoryEntryInfo_indexOfMemory___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 assetCollection];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (PXMemoryEntryInfo)initWithSortedMemories:(id)memories
{
  v31 = *MEMORY[0x1E69E9840];
  memoriesCopy = memories;
  v29.receiver = self;
  v29.super_class = PXMemoryEntryInfo;
  v5 = [(PXMemoryEntryInfo *)&v29 init];
  if (v5)
  {
    v6 = [memoriesCopy copy];
    memories = v5->_memories;
    v5->_memories = v6;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v5->_memories;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    v24 = memoriesCopy;
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v13 = *v26;
      do
      {
        v14 = 0;
        v15 = v11;
        v16 = v12;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v8);
          }

          assetCollection = [*(*(&v25 + 1) + 8 * v14) assetCollection];
          creationDate = [assetCollection creationDate];

          v12 = [creationDate earlierDate:v16];

          v11 = [creationDate laterDate:v15];

          ++v14;
          v15 = v11;
          v16 = v12;
        }

        while (v10 != v14);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    startDate = v5->_startDate;
    v5->_startDate = v12;
    v20 = v12;

    endDate = v5->_endDate;
    v5->_endDate = v11;
    v22 = v11;

    objc_storeStrong(&v5->_representativeDate, v5->_startDate);
    memoriesCopy = v24;
  }

  return v5;
}

- (PXMemoryEntryInfo)initWithMemories:(id)memories
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PXMemoryEntryInfo_initWithMemories___block_invoke;
  v8[3] = &unk_1E7741778;
  selfCopy = self;
  v9 = selfCopy;
  v5 = [memories sortedArrayUsingComparator:v8];
  v6 = [(PXMemoryEntryInfo *)selfCopy initWithSortedMemories:v5];

  return v6;
}

uint64_t __38__PXMemoryEntryInfo_initWithMemories___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [objc_opt_class() compareMemoryInfo:v5 toMemoryInfo:v4];

  return v6;
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v16.receiver = self;
  v16.super_class = PXMemoryEntryInfo;
  v4 = [(PXMemoryEntryInfo *)&v16 description];
  v5 = [v3 stringWithFormat:@"<%@ startDate:%@ endDate:%@, memories:\r", v4, self->_startDate, self->_endDate];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_memories;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 appendFormat:@"\t%@\r", *(*(&v12 + 1) + 8 * i)];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }

  [v5 appendString:@"\r>"];

  return v5;
}

- (int64_t)compare:(id)compare
{
  startDate = self->_startDate;
  startDate = [compare startDate];
  v5 = [(NSDate *)startDate compare:startDate];

  return v5;
}

+ (int64_t)compareMemoryInfo:(id)info byRelevanceScoreToMemoryInfo:(id)memoryInfo
{
  memoryInfoCopy = memoryInfo;
  assetCollection = [info assetCollection];
  assetCollection2 = [memoryInfoCopy assetCollection];

  date = [MEMORY[0x1E695DF00] date];
  [assetCollection relevanceScoreAtDate:date];
  v10 = v9;
  [assetCollection2 relevanceScoreAtDate:date];
  if (v10 > v11)
  {
    v12 = -1;
  }

  else
  {
    v12 = v10 < v11;
  }

  return v12;
}

+ (int64_t)compareMemoryInfo:(id)info toMemoryInfo:(id)memoryInfo
{
  memoryInfoCopy = memoryInfo;
  infoCopy = info;
  v7 = +[PXMemoriesFeedSettings sharedInstance];
  rankMemoriesByRelevanceScore = [v7 rankMemoriesByRelevanceScore];

  if (!rankMemoriesByRelevanceScore)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [standardUserDefaults BOOLForKey:@"PXSortMemoriesByCreationDateOnly"];

    assetCollection = [infoCopy assetCollection];

    assetCollection2 = [memoryInfoCopy assetCollection];

    isUserCreated = [assetCollection isUserCreated];
    isUserCreated2 = [assetCollection2 isUserCreated];
    if (v11)
    {
LABEL_4:
      creationDate = [assetCollection2 creationDate];
      creationDate2 = [assetCollection creationDate];
      v9 = [creationDate compare:creationDate2];

LABEL_5:
      if (!v9)
      {
        localIdentifier = [assetCollection localIdentifier];
        localIdentifier2 = [assetCollection2 localIdentifier];
        v9 = [localIdentifier compare:localIdentifier2];
      }

      goto LABEL_22;
    }

    if ((isUserCreated | isUserCreated2))
    {
      if (isUserCreated)
      {
        v20 = isUserCreated2 ^ 1;
      }

      else
      {
        v20 = isUserCreated2;
      }

      v21 = ((isUserCreated & (isUserCreated2 ^ 1)) << 63) >> 63;
      if (!isUserCreated)
      {
        v21 = isUserCreated2;
      }

      if (v20)
      {
        v9 = v21;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    [assetCollection score];
    v23 = v22;
    [assetCollection2 score];
    if (v23 <= v24)
    {
      if (v23 >= v24)
      {
        goto LABEL_4;
      }

      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

LABEL_22:
    memoryInfoCopy = assetCollection2;
    infoCopy = assetCollection;
    goto LABEL_23;
  }

  v9 = [objc_opt_class() compareMemoryInfo:infoCopy byRelevanceScoreToMemoryInfo:memoryInfoCopy];
LABEL_23:

  return v9;
}

@end