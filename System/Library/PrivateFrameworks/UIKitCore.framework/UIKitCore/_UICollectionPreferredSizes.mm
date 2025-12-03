@interface _UICollectionPreferredSizes
- (__n128)setObject:(uint64_t)object atIndexedSubscript:;
- (double)largestItemSize;
- (id)copyByDirtyingPreferredSizes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)elementKinds;
- (id)indexes;
- (id)indexesOfItemsWithoutPreferredSizesInRange:(uint64_t)range;
- (id)initWithSizes:(void *)sizes indexes:(void *)indexes supplementarySizesDict:(uint64_t)dict frameOffset:(void *)offset supplementaryBaseOffsets:;
- (id)objectAtIndexedSubscript:(uint64_t)subscript;
- (id)objectForKeyedSubscript:(uint64_t)subscript;
- (id)preferredSizesApplyingFrameOffset:(void *)offset supplementaryBaseOffsets:;
- (uint64_t)containsSupplementaryOffsets:(uint64_t)offsets;
@end

@implementation _UICollectionPreferredSizes

- (id)elementKinds
{
  if (self)
  {
    v1 = MEMORY[0x1E695DFD8];
    allKeys = [*(self + 24) allKeys];
    v3 = [v1 setWithArray:allKeys];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)indexes
{
  if (self)
  {
    if (*(self + 32))
    {
      v2 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:*(self + 16)];
      [v2 shiftIndexesStartingAtIndex:0 by:*(self + 32)];
    }

    else
    {
      v2 = *(self + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)initWithSizes:(void *)sizes indexes:(void *)indexes supplementarySizesDict:(uint64_t)dict frameOffset:(void *)offset supplementaryBaseOffsets:
{
  if (!self)
  {
    return 0;
  }

  v19.receiver = self;
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

    if (sizes)
    {
      v14 = [sizes mutableCopy];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
    }

    v15 = *(v11 + 2);
    *(v11 + 2) = v14;

    if (indexes)
    {
      v16 = [indexes mutableCopy];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v17 = *(v11 + 3);
    *(v11 + 3) = v16;

    *(v11 + 4) = dict;
    objc_storeStrong(v11 + 5, offset);
  }

  return v11;
}

- (id)objectAtIndexedSubscript:(uint64_t)subscript
{
  if (subscript)
  {
    v2 = *(subscript + 8);
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(subscript + 32) + a2];
    v4 = [v2 objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (__n128)setObject:(uint64_t)object atIndexedSubscript:
{
  if (self)
  {
    v6 = *(self + 32);
    v7 = *(self + 8);
    object = [MEMORY[0x1E696AD98] numberWithInteger:v6 + object];
    if (a2)
    {
      [v7 setObject:a2 forKeyedSubscript:object];

      [*(self + 16) addIndex:v6 + object];
    }

    else
    {
      [v7 removeObjectForKey:object];

      [*(self + 16) removeIndex:v6 + object];
    }

    result = *MEMORY[0x1E695F060];
    *(self + 48) = *MEMORY[0x1E695F060];
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UICollectionPreferredSizes allocWithZone:zone];
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

- (id)indexesOfItemsWithoutPreferredSizesInRange:(uint64_t)range
{
  if (self)
  {
    rangeCopy = range;
    if (range)
    {
      indexes = [(_UICollectionPreferredSizes *)self indexes];
      indexSet = objc_alloc_init(MEMORY[0x1E696AD50]);
      if (a2 < a2 + rangeCopy)
      {
        do
        {
          if (([indexes containsIndex:a2] & 1) == 0)
          {
            [indexSet addIndex:a2];
          }

          ++a2;
          --rangeCopy;
        }

        while (rangeCopy);
      }
    }

    else
    {
      indexSet = [MEMORY[0x1E696AC90] indexSet];
    }
  }

  else
  {
    indexSet = 0;
  }

  return indexSet;
}

- (id)objectForKeyedSubscript:(uint64_t)subscript
{
  if (subscript)
  {
    if (![a2 length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_objectForKeyedSubscript_ object:subscript file:@"_UICollectionPreferredSizes.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v4 = [*(subscript + 24) objectForKeyedSubscript:a2];
    if (!v4)
    {
      v4 = [[_UICollectionPreferredSizes alloc] initWithSizes:0 indexes:0 supplementarySizesDict:*(subscript + 32) frameOffset:*(subscript + 40) supplementaryBaseOffsets:?];
      [*(subscript + 24) setObject:v4 forKeyedSubscript:a2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)containsSupplementaryOffsets:(uint64_t)offsets
{
  offsetsCopy = offsets;
  v27 = *MEMORY[0x1E69E9840];
  if (offsets)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_containsSupplementaryOffsets_ object:offsetsCopy file:@"_UICollectionPreferredSizes.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"supplementaryOffsets"}];
    }

    v4 = a2;
    v5 = v4;
    if (*(offsetsCopy + 40))
    {
      v6 = [v4 offsetsByApplyingOffsets:?];

      v5 = v6;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    elementKinds = [(_UICollectionPreferredSizes *)offsetsCopy elementKinds];
    v8 = [elementKinds countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(elementKinds);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [(_UICollectionPreferredSizes *)offsetsCopy objectForKeyedSubscript:v12];
          if (v13)
          {
            v14 = [v5 rangeForElementKind:v12];
            if (v15)
            {
              v16 = v14;
              v17 = v15;
              indexes = [(_UICollectionPreferredSizes *)v13 indexes];
              v19 = [indexes countOfIndexesInRange:{v16, v17}];

              if (v19)
              {

                offsetsCopy = 1;
                goto LABEL_18;
              }
            }
          }
        }

        v9 = [elementKinds countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    offsetsCopy = 0;
LABEL_18:
  }

  return offsetsCopy;
}

- (id)preferredSizesApplyingFrameOffset:(void *)offset supplementaryBaseOffsets:
{
  if (self)
  {
    v6 = *(self + 32);
    v5 = *(self + 40);
    if (v5)
    {
      offsetCopy = [v5 offsetsByApplyingOffsets:?];
    }

    else
    {
      offsetCopy = offset;
    }

    v8 = offsetCopy;
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = *(self + 24);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90___UICollectionPreferredSizes_preferredSizesApplyingFrameOffset_supplementaryBaseOffsets___block_invoke;
    v15[3] = &unk_1E70FA428;
    v16 = v8;
    v17 = v9;
    v11 = v9;
    v12 = v8;
    [v10 enumerateKeysAndObjectsUsingBlock:v15];
    v13 = [[_UICollectionPreferredSizes alloc] initWithSizes:*(self + 16) indexes:v11 supplementarySizesDict:v6 + a2 frameOffset:v12 supplementaryBaseOffsets:?];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyByDirtyingPreferredSizes
{
  selfCopy = self;
  if (self)
  {
    v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(self[1], "count")}];
    v3 = *(selfCopy + 1);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59___UICollectionPreferredSizes_copyByDirtyingPreferredSizes__block_invoke;
    v11[3] = &unk_1E70FA450;
    v12 = v2;
    v4 = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v11];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = *(selfCopy + 3);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59___UICollectionPreferredSizes_copyByDirtyingPreferredSizes__block_invoke_2;
    v9[3] = &unk_1E70FA478;
    v10 = v5;
    v7 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
    selfCopy = [[_UICollectionPreferredSizes alloc] initWithSizes:v4 indexes:*(selfCopy + 2) supplementarySizesDict:v7 frameOffset:*(selfCopy + 4) supplementaryBaseOffsets:*(selfCopy + 5)];
  }

  return selfCopy;
}

- (double)largestItemSize
{
  if (!self)
  {
    return 0.0;
  }

  if (![*(self + 8) count])
  {
    return *MEMORY[0x1E695F060];
  }

  v2 = *(self + 48);
  if (v2 == *MEMORY[0x1E695F060] && *(self + 56) == *(MEMORY[0x1E695F060] + 8))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3010000000;
    v11 = "";
    v12 = *MEMORY[0x1E695F060];
    indexes = [(_UICollectionPreferredSizes *)self indexes];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46___UICollectionPreferredSizes_largestItemSize__block_invoke;
    v7[3] = &unk_1E70FA4A0;
    v7[4] = self;
    v7[5] = &v8;
    [indexes enumerateIndexesUsingBlock:v7];

    v5 = v9;
    *(self + 48) = *(v9 + 2);
    v2 = v5[4];
    _Block_object_dispose(&v8, 8);
  }

  return v2;
}

@end