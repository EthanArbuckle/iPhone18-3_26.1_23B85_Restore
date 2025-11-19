@interface PXMemoryEntryInfo
+ (int64_t)compareMemoryInfo:(id)a3 byRelevanceScoreToMemoryInfo:(id)a4;
+ (int64_t)compareMemoryInfo:(id)a3 toMemoryInfo:(id)a4;
- (PXMemoryEntryInfo)initWithMemories:(id)a3;
- (PXMemoryEntryInfo)initWithSortedMemories:(id)a3;
- (id)description;
- (id)entryByAddingMemory:(id)a3;
- (id)entryByRemovingMemory:(id)a3;
- (id)entryByReplacingMemoryInfoAtIndex:(int64_t)a3 withMemoryInfo:(id)a4;
- (int64_t)compare:(id)a3;
- (unint64_t)indexOfMemory:(id)a3;
@end

@implementation PXMemoryEntryInfo

- (id)entryByReplacingMemoryInfoAtIndex:(int64_t)a3 withMemoryInfo:(id)a4
{
  v7 = a4;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXMemoryEntryInfo.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
  }

  if ([(NSArray *)self->_memories count]<= a3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXMemoryEntryInfo.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"index < [_memories count]"}];
  }

  v8 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, -[NSArray count](self->_memories, "count")}];
  [v8 removeIndex:a3];
  v9 = [(NSArray *)self->_memories objectsAtIndexes:v8];
  v10 = [v9 mutableCopy];

  v11 = [v10 count];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__PXMemoryEntryInfo_entryByReplacingMemoryInfoAtIndex_withMemoryInfo___block_invoke;
  v16[3] = &unk_1E7741778;
  v16[4] = self;
  [v10 insertObject:v7 atIndex:{objc_msgSend(v10, "indexOfObject:inSortedRange:options:usingComparator:", v7, 0, v11, 1024, v16)}];
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

- (id)entryByRemovingMemory:(id)a3
{
  v4 = self;
  v5 = [(PXMemoryEntryInfo *)v4 indexOfMemory:a3];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, -[NSArray count](v4->_memories, "count")}];
    [v7 removeIndex:v6];
    v8 = [(NSArray *)v4->_memories objectsAtIndexes:v7];
    v9 = [[PXMemoryEntryInfo alloc] initWithSortedMemories:v8];

    v4 = v9;
  }

  return v4;
}

- (id)entryByAddingMemory:(id)a3
{
  v4 = [PXMemoryInfo memoryInfoWithMemory:a3];
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

- (unint64_t)indexOfMemory:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  memories = self->_memories;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__PXMemoryEntryInfo_indexOfMemory___block_invoke;
  v9[3] = &unk_1E77417A0;
  v6 = v4;
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

- (PXMemoryEntryInfo)initWithSortedMemories:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PXMemoryEntryInfo;
  v5 = [(PXMemoryEntryInfo *)&v29 init];
  if (v5)
  {
    v6 = [v4 copy];
    memories = v5->_memories;
    v5->_memories = v6;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v5->_memories;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    v24 = v4;
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

          v17 = [*(*(&v25 + 1) + 8 * v14) assetCollection];
          v18 = [v17 creationDate];

          v12 = [v18 earlierDate:v16];

          v11 = [v18 laterDate:v15];

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
    v4 = v24;
  }

  return v5;
}

- (PXMemoryEntryInfo)initWithMemories:(id)a3
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PXMemoryEntryInfo_initWithMemories___block_invoke;
  v8[3] = &unk_1E7741778;
  v4 = self;
  v9 = v4;
  v5 = [a3 sortedArrayUsingComparator:v8];
  v6 = [(PXMemoryEntryInfo *)v4 initWithSortedMemories:v5];

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

- (int64_t)compare:(id)a3
{
  startDate = self->_startDate;
  v4 = [a3 startDate];
  v5 = [(NSDate *)startDate compare:v4];

  return v5;
}

+ (int64_t)compareMemoryInfo:(id)a3 byRelevanceScoreToMemoryInfo:(id)a4
{
  v5 = a4;
  v6 = [a3 assetCollection];
  v7 = [v5 assetCollection];

  v8 = [MEMORY[0x1E695DF00] date];
  [v6 relevanceScoreAtDate:v8];
  v10 = v9;
  [v7 relevanceScoreAtDate:v8];
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

+ (int64_t)compareMemoryInfo:(id)a3 toMemoryInfo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PXMemoriesFeedSettings sharedInstance];
  v8 = [v7 rankMemoriesByRelevanceScore];

  if (!v8)
  {
    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [v10 BOOLForKey:@"PXSortMemoriesByCreationDateOnly"];

    v12 = [v6 assetCollection];

    v13 = [v5 assetCollection];

    v14 = [v12 isUserCreated];
    v15 = [v13 isUserCreated];
    if (v11)
    {
LABEL_4:
      v16 = [v13 creationDate];
      v17 = [v12 creationDate];
      v9 = [v16 compare:v17];

LABEL_5:
      if (!v9)
      {
        v18 = [v12 localIdentifier];
        v19 = [v13 localIdentifier];
        v9 = [v18 compare:v19];
      }

      goto LABEL_22;
    }

    if ((v14 | v15))
    {
      if (v14)
      {
        v20 = v15 ^ 1;
      }

      else
      {
        v20 = v15;
      }

      v21 = ((v14 & (v15 ^ 1)) << 63) >> 63;
      if (!v14)
      {
        v21 = v15;
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

    [v12 score];
    v23 = v22;
    [v13 score];
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
    v5 = v13;
    v6 = v12;
    goto LABEL_23;
  }

  v9 = [objc_opt_class() compareMemoryInfo:v6 byRelevanceScoreToMemoryInfo:v5];
LABEL_23:

  return v9;
}

@end