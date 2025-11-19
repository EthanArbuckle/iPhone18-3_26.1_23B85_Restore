@interface _UICollectionPreferredSizes
- (__n128)setObject:(uint64_t)a3 atIndexedSubscript:;
- (double)largestItemSize;
- (id)copyByDirtyingPreferredSizes;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)elementKinds;
- (id)indexes;
- (id)indexesOfItemsWithoutPreferredSizesInRange:(uint64_t)a3;
- (id)initWithSizes:(void *)a3 indexes:(void *)a4 supplementarySizesDict:(uint64_t)a5 frameOffset:(void *)a6 supplementaryBaseOffsets:;
- (id)objectAtIndexedSubscript:(uint64_t)a1;
- (id)objectForKeyedSubscript:(uint64_t)a1;
- (id)preferredSizesApplyingFrameOffset:(void *)a3 supplementaryBaseOffsets:;
- (uint64_t)containsSupplementaryOffsets:(uint64_t)a1;
@end

@implementation _UICollectionPreferredSizes

- (id)elementKinds
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DFD8];
    v2 = [*(a1 + 24) allKeys];
    v3 = [v1 setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)indexes
{
  if (a1)
  {
    if (*(a1 + 32))
    {
      v2 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:*(a1 + 16)];
      [v2 shiftIndexesStartingAtIndex:0 by:*(a1 + 32)];
    }

    else
    {
      v2 = *(a1 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)initWithSizes:(void *)a3 indexes:(void *)a4 supplementarySizesDict:(uint64_t)a5 frameOffset:(void *)a6 supplementaryBaseOffsets:
{
  if (!a1)
  {
    return 0;
  }

  v19.receiver = a1;
  v19.super_class = _UICollectionPreferredSizes;
  v11 = objc_msgSendSuper2(&v19, sel_init);
  if (v11)
  {
    if (a2)
    {
      v12 = [a2 mutableCopy];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v13 = *(v11 + 1);
    *(v11 + 1) = v12;

    if (a3)
    {
      v14 = [a3 mutableCopy];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
    }

    v15 = *(v11 + 2);
    *(v11 + 2) = v14;

    if (a4)
    {
      v16 = [a4 mutableCopy];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v17 = *(v11 + 3);
    *(v11 + 3) = v16;

    *(v11 + 4) = a5;
    objc_storeStrong(v11 + 5, a6);
  }

  return v11;
}

- (id)objectAtIndexedSubscript:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 8);
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32) + a2];
    v4 = [v2 objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (__n128)setObject:(uint64_t)a3 atIndexedSubscript:
{
  if (a1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 8);
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6 + a3];
    if (a2)
    {
      [v7 setObject:a2 forKeyedSubscript:v8];

      [*(a1 + 16) addIndex:v6 + a3];
    }

    else
    {
      [v7 removeObjectForKey:v8];

      [*(a1 + 16) removeIndex:v6 + a3];
    }

    result = *MEMORY[0x1E695F060];
    *(a1 + 48) = *MEMORY[0x1E695F060];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UICollectionPreferredSizes allocWithZone:a3];
  sizes = self->_sizes;
  indexes = self->_indexes;
  supplementarySizesDict = self->_supplementarySizesDict;
  frameOffset = self->_frameOffset;
  supplementaryBaseOffsets = self->_supplementaryBaseOffsets;

  return [(_UICollectionPreferredSizes *)v4 initWithSizes:indexes indexes:supplementarySizesDict supplementarySizesDict:frameOffset frameOffset:supplementaryBaseOffsets supplementaryBaseOffsets:?];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_frameOffset];
  v7 = [v3 stringWithFormat:@"<%@: %p: frameOffset=<%@> supplementaryBaseOffsets=<%@>; sizes=%@ >", v5, self, v6, self->_supplementaryBaseOffsets, self->_sizes];;

  return v7;
}

- (id)indexesOfItemsWithoutPreferredSizesInRange:(uint64_t)a3
{
  if (a1)
  {
    v3 = a3;
    if (a3)
    {
      v5 = [(_UICollectionPreferredSizes *)a1 indexes];
      v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
      if (a2 < a2 + v3)
      {
        do
        {
          if (([v5 containsIndex:a2] & 1) == 0)
          {
            [v6 addIndex:a2];
          }

          ++a2;
          --v3;
        }

        while (v3);
      }
    }

    else
    {
      v6 = [MEMORY[0x1E696AC90] indexSet];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)objectForKeyedSubscript:(uint64_t)a1
{
  if (a1)
  {
    if (![a2 length])
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel_objectForKeyedSubscript_ object:a1 file:@"_UICollectionPreferredSizes.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v4 = [*(a1 + 24) objectForKeyedSubscript:a2];
    if (!v4)
    {
      v4 = [[_UICollectionPreferredSizes alloc] initWithSizes:0 indexes:0 supplementarySizesDict:*(a1 + 32) frameOffset:*(a1 + 40) supplementaryBaseOffsets:?];
      [*(a1 + 24) setObject:v4 forKeyedSubscript:a2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)containsSupplementaryOffsets:(uint64_t)a1
{
  v2 = a1;
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:sel_containsSupplementaryOffsets_ object:v2 file:@"_UICollectionPreferredSizes.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"supplementaryOffsets"}];
    }

    v4 = a2;
    v5 = v4;
    if (*(v2 + 40))
    {
      v6 = [v4 offsetsByApplyingOffsets:?];

      v5 = v6;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [(_UICollectionPreferredSizes *)v2 elementKinds];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [(_UICollectionPreferredSizes *)v2 objectForKeyedSubscript:v12];
          if (v13)
          {
            v14 = [v5 rangeForElementKind:v12];
            if (v15)
            {
              v16 = v14;
              v17 = v15;
              v18 = [(_UICollectionPreferredSizes *)v13 indexes];
              v19 = [v18 countOfIndexesInRange:{v16, v17}];

              if (v19)
              {

                v2 = 1;
                goto LABEL_18;
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v2 = 0;
LABEL_18:
  }

  return v2;
}

- (id)preferredSizesApplyingFrameOffset:(void *)a3 supplementaryBaseOffsets:
{
  if (a1)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v5)
    {
      v7 = [v5 offsetsByApplyingOffsets:?];
    }

    else
    {
      v7 = a3;
    }

    v8 = v7;
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = *(a1 + 24);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90___UICollectionPreferredSizes_preferredSizesApplyingFrameOffset_supplementaryBaseOffsets___block_invoke;
    v15[3] = &unk_1E70FA428;
    v16 = v8;
    v17 = v9;
    v11 = v9;
    v12 = v8;
    [v10 enumerateKeysAndObjectsUsingBlock:v15];
    v13 = [[_UICollectionPreferredSizes alloc] initWithSizes:*(a1 + 16) indexes:v11 supplementarySizesDict:v6 + a2 frameOffset:v12 supplementaryBaseOffsets:?];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyByDirtyingPreferredSizes
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1[1], "count")}];
    v3 = *(v1 + 1);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59___UICollectionPreferredSizes_copyByDirtyingPreferredSizes__block_invoke;
    v11[3] = &unk_1E70FA450;
    v12 = v2;
    v4 = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v11];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = *(v1 + 3);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59___UICollectionPreferredSizes_copyByDirtyingPreferredSizes__block_invoke_2;
    v9[3] = &unk_1E70FA478;
    v10 = v5;
    v7 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    v1 = [[_UICollectionPreferredSizes alloc] initWithSizes:v4 indexes:*(v1 + 2) supplementarySizesDict:v7 frameOffset:*(v1 + 4) supplementaryBaseOffsets:*(v1 + 5)];
  }

  return v1;
}

- (double)largestItemSize
{
  if (!a1)
  {
    return 0.0;
  }

  if (![*(a1 + 8) count])
  {
    return *MEMORY[0x1E695F060];
  }

  v2 = *(a1 + 48);
  if (v2 == *MEMORY[0x1E695F060] && *(a1 + 56) == *(MEMORY[0x1E695F060] + 8))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3010000000;
    v11 = "";
    v12 = *MEMORY[0x1E695F060];
    v4 = [(_UICollectionPreferredSizes *)a1 indexes];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46___UICollectionPreferredSizes_largestItemSize__block_invoke;
    v7[3] = &unk_1E70FA4A0;
    v7[4] = a1;
    v7[5] = &v8;
    [v4 enumerateIndexesUsingBlock:v7];

    v5 = v9;
    *(a1 + 48) = *(v9 + 2);
    v2 = v5[4];
    _Block_object_dispose(&v8, 8);
  }

  return v2;
}

@end