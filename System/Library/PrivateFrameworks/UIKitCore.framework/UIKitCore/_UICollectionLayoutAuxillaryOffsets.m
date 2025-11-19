@interface _UICollectionLayoutAuxillaryOffsets
- (BOOL)containsIndex:(int64_t)a3 forElementKind:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)overlapsOffsets:(id)a3;
- (NSSet)elementKinds;
- (NSString)description;
- (_NSRange)rangeForElementKind:(id)a3;
- (_UICollectionLayoutAuxillaryOffsets)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)indexesForElementKind:(id)a3;
- (id)initWithOffsets:(id *)a1;
- (id)offsetsByApplyingOffsets:(id)a3;
- (id)offsetsByRebasingOnOffsets:(id)a3;
- (int64_t)offsetForElementKind:(id)a3;
- (void)_offsetWithOffsets:(int)a3 applyingBase:;
- (void)addIndexes:(void *)a3 forElementKind:;
- (void)incrementCountForElementKind:(uint64_t)a1;
- (void)incrementCountsFromOffsets:(id *)a1;
@end

@implementation _UICollectionLayoutAuxillaryOffsets

- (_UICollectionLayoutAuxillaryOffsets)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(_UICollectionLayoutAuxillaryOffsets *)&self->super.isa initWithOffsets:v3];

  return v4;
}

- (NSSet)elementKinds
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSMutableDictionary *)self->_offsets allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)initWithOffsets:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    if (!a2)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel_initWithOffsets_ object:v2 file:@"_UICollectionLayoutHelpers.m" lineNumber:1608 description:{@"Invalid parameter not satisfying: %@", @"offsets"}];
    }

    v13.receiver = v2;
    v13.super_class = _UICollectionLayoutAuxillaryOffsets;
    v2 = objc_msgSendSuper2(&v13, sel_init);
    if (v2)
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x3032000000;
      v10 = __Block_byref_object_copy__29;
      v11 = __Block_byref_object_dispose__29;
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __55___UICollectionLayoutAuxillaryOffsets_initWithOffsets___block_invoke;
      v6[3] = &unk_1E70FAD98;
      v6[4] = &v7;
      [a2 enumerateKeysAndObjectsUsingBlock:v6];
      objc_storeStrong(v2 + 1, v8[5]);
      _Block_object_dispose(&v7, 8);
    }
  }

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p ", v5, self];

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  offsets = self->_offsets;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50___UICollectionLayoutAuxillaryOffsets_description__block_invoke;
  v11[3] = &unk_1E70FADC0;
  v14 = v15;
  v8 = v6;
  v12 = v8;
  v13 = self;
  [(NSMutableDictionary *)offsets enumerateKeysAndObjectsUsingBlock:v11];
  [v8 appendString:@">"];
  v9 = v8;

  _Block_object_dispose(v15, 8);

  return v9;
}

- (id)offsetsByApplyingOffsets:(id)a3
{
  v4 = [(_UICollectionLayoutAuxillaryOffsets *)self copy];
  [(_UICollectionLayoutAuxillaryOffsets *)v4 _offsetWithOffsets:a3 applyingBase:0];

  return v4;
}

- (void)_offsetWithOffsets:(int)a3 applyingBase:
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:sel__offsetWithOffsets_applyingBase_ object:a1 file:@"_UICollectionLayoutHelpers.m" lineNumber:1793 description:{@"Invalid parameter not satisfying: %@", @"offsets"}];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [a2 elementKinds];
    v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v10 = [a2 rangeForElementKind:v9];
          v12 = v11;
          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = [MEMORY[0x1E696AAA8] currentHandler];
            [v19 handleFailureInMethod:sel__offsetWithOffsets_applyingBase_ object:a1 file:@"_UICollectionLayoutHelpers.m" lineNumber:1796 description:{@"Invalid parameter not satisfying: %@", @"range.location != NSNotFound"}];
          }

          v13 = [*(a1 + 8) objectForKeyedSubscript:v9];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 firstIndex];
            v16 = [v14 count];
            if (a3)
            {
              v17 = 0;
            }

            else
            {
              v17 = v12;
            }

            v18 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{v17 + v10 + v15, v16}];
            [*(a1 + 8) setObject:v18 forKeyedSubscript:v9];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }
  }
}

- (id)offsetsByRebasingOnOffsets:(id)a3
{
  v4 = [(_UICollectionLayoutAuxillaryOffsets *)self copy];
  [(_UICollectionLayoutAuxillaryOffsets *)v4 _offsetWithOffsets:a3 applyingBase:1];

  return v4;
}

- (void)addIndexes:(void *)a3 forElementKind:
{
  if (a1)
  {
    if (![a3 length])
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_addIndexes_forElementKind_ object:a1 file:@"_UICollectionLayoutHelpers.m" lineNumber:1675 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v6 = [*(a1 + 8) objectForKeyedSubscript:a3];
    if (!v6)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
      [*(a1 + 8) setObject:v8 forKeyedSubscript:a3];
      v6 = v8;
    }

    v9 = v6;
    [v6 addIndexes:a2];
  }
}

- (void)incrementCountsFromOffsets:(id *)a1
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [a2 elementKinds];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [a2 indexesForElementKind:v9];
          v11 = [a1[1] objectForKeyedSubscript:v9];
          if (v11)
          {
            v12 = v11;
            v13 = [a1 rangeForElementKind:v9];
            [v12 addIndexesInRange:{v13 + v14, objc_msgSend(v10, "count")}];
          }

          else
          {
            v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
            [a1[1] setObject:v12 forKeyedSubscript:v9];
            [v12 addIndexes:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }
}

- (void)incrementCountForElementKind:(uint64_t)a1
{
  if (a1)
  {
    if (![a2 length])
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel_incrementCountForElementKind_ object:a1 file:@"_UICollectionLayoutHelpers.m" lineNumber:1704 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v4 = [*(a1 + 8) objectForKeyedSubscript:a2];
    if (!v4)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
      [*(a1 + 8) setObject:v7 forKeyedSubscript:a2];
      v4 = v7;
    }

    v8 = v4;
    if ([v4 count])
    {
      v5 = [v8 lastIndex] + 1;
    }

    else
    {
      v5 = 0;
    }

    [v8 addIndex:v5];
  }
}

- (_NSRange)rangeForElementKind:(id)a3
{
  if (![a3 length])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutHelpers.m" lineNumber:1719 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
  }

  v6 = [(NSMutableDictionary *)self->_offsets objectForKeyedSubscript:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 firstIndex];
    v9 = [v7 count];
  }

  else
  {
    v9 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v8;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)indexesForElementKind:(id)a3
{
  if (![a3 length])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UICollectionLayoutAuxillaryOffsets indexesForElementKind:]"];
    [v10 handleFailureInFunction:v11 file:@"_UICollectionLayoutHelpers.m" lineNumber:1729 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
  }

  v5 = [(NSMutableDictionary *)self->_offsets objectForKeyedSubscript:a3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AC90]);
  }

  v8 = v7;

  return v8;
}

- (int64_t)offsetForElementKind:(id)a3
{
  if (![a3 length])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutHelpers.m" lineNumber:1734 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
  }

  return [(_UICollectionLayoutAuxillaryOffsets *)self rangeForElementKind:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UICollectionLayoutAuxillaryOffsets allocWithZone:a3];
  offsets = self->_offsets;

  return [(_UICollectionLayoutAuxillaryOffsets *)&v4->super.isa initWithOffsets:?];
}

- (BOOL)isEqual:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(_UICollectionLayoutAuxillaryOffsets *)self elementKinds];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(_UICollectionLayoutAuxillaryOffsets *)self rangeForElementKind:v10];
        v13 = v12;
        if (v11 != [a3 rangeForElementKind:v10] || v13 != v14)
        {
          v16 = 0;
          goto LABEL_18;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = 1;
LABEL_18:

  return v16;
}

- (BOOL)overlapsOffsets:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(_UICollectionLayoutAuxillaryOffsets *)self elementKinds];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(_UICollectionLayoutAuxillaryOffsets *)self indexesForElementKind:v10];
        v12 = [a3 indexesForElementKind:v10];
        if ([v12 count] && objc_msgSend(v11, "containsIndexes:", v12))
        {

          v13 = 1;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (BOOL)containsIndex:(int64_t)a3 forElementKind:(id)a4
{
  v5 = [(_UICollectionLayoutAuxillaryOffsets *)self indexesForElementKind:a4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 containsIndex:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end