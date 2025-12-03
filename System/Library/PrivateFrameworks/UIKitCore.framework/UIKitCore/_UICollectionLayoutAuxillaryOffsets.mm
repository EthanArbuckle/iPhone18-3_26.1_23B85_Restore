@interface _UICollectionLayoutAuxillaryOffsets
- (BOOL)containsIndex:(int64_t)index forElementKind:(id)kind;
- (BOOL)isEqual:(id)equal;
- (BOOL)overlapsOffsets:(id)offsets;
- (NSSet)elementKinds;
- (NSString)description;
- (_NSRange)rangeForElementKind:(id)kind;
- (_UICollectionLayoutAuxillaryOffsets)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)indexesForElementKind:(id)kind;
- (id)initWithOffsets:(id *)offsets;
- (id)offsetsByApplyingOffsets:(id)offsets;
- (id)offsetsByRebasingOnOffsets:(id)offsets;
- (int64_t)offsetForElementKind:(id)kind;
- (void)_offsetWithOffsets:(int)offsets applyingBase:;
- (void)addIndexes:(void *)indexes forElementKind:;
- (void)incrementCountForElementKind:(uint64_t)kind;
- (void)incrementCountsFromOffsets:(id *)offsets;
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
  allKeys = [(NSMutableDictionary *)self->_offsets allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (id)initWithOffsets:(id *)offsets
{
  offsetsCopy = offsets;
  if (offsets)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithOffsets_ object:offsetsCopy file:@"_UICollectionLayoutHelpers.m" lineNumber:1608 description:{@"Invalid parameter not satisfying: %@", @"offsets"}];
    }

    v13.receiver = offsetsCopy;
    v13.super_class = _UICollectionLayoutAuxillaryOffsets;
    offsetsCopy = objc_msgSendSuper2(&v13, sel_init);
    if (offsetsCopy)
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
      objc_storeStrong(offsetsCopy + 1, v8[5]);
      _Block_object_dispose(&v7, 8);
    }
  }

  return offsetsCopy;
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
  selfCopy = self;
  [(NSMutableDictionary *)offsets enumerateKeysAndObjectsUsingBlock:v11];
  [v8 appendString:@">"];
  v9 = v8;

  _Block_object_dispose(v15, 8);

  return v9;
}

- (id)offsetsByApplyingOffsets:(id)offsets
{
  v4 = [(_UICollectionLayoutAuxillaryOffsets *)self copy];
  [(_UICollectionLayoutAuxillaryOffsets *)v4 _offsetWithOffsets:offsets applyingBase:0];

  return v4;
}

- (void)_offsetWithOffsets:(int)offsets applyingBase:
{
  v28 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__offsetWithOffsets_applyingBase_ object:self file:@"_UICollectionLayoutHelpers.m" lineNumber:1793 description:{@"Invalid parameter not satisfying: %@", @"offsets"}];
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
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:sel__offsetWithOffsets_applyingBase_ object:self file:@"_UICollectionLayoutHelpers.m" lineNumber:1796 description:{@"Invalid parameter not satisfying: %@", @"range.location != NSNotFound"}];
          }

          v13 = [*(self + 8) objectForKeyedSubscript:v9];
          v14 = v13;
          if (v13)
          {
            firstIndex = [v13 firstIndex];
            v16 = [v14 count];
            if (offsets)
            {
              v17 = 0;
            }

            else
            {
              v17 = v12;
            }

            v18 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{v17 + v10 + firstIndex, v16}];
            [*(self + 8) setObject:v18 forKeyedSubscript:v9];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }
  }
}

- (id)offsetsByRebasingOnOffsets:(id)offsets
{
  v4 = [(_UICollectionLayoutAuxillaryOffsets *)self copy];
  [(_UICollectionLayoutAuxillaryOffsets *)v4 _offsetWithOffsets:offsets applyingBase:1];

  return v4;
}

- (void)addIndexes:(void *)indexes forElementKind:
{
  if (self)
  {
    if (![indexes length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_addIndexes_forElementKind_ object:self file:@"_UICollectionLayoutHelpers.m" lineNumber:1675 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v6 = [*(self + 8) objectForKeyedSubscript:indexes];
    if (!v6)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
      [*(self + 8) setObject:v8 forKeyedSubscript:indexes];
      v6 = v8;
    }

    v9 = v6;
    [v6 addIndexes:a2];
  }
}

- (void)incrementCountsFromOffsets:(id *)offsets
{
  v20 = *MEMORY[0x1E69E9840];
  if (offsets && a2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    elementKinds = [a2 elementKinds];
    v5 = [elementKinds countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(elementKinds);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [a2 indexesForElementKind:v9];
          v11 = [offsets[1] objectForKeyedSubscript:v9];
          if (v11)
          {
            v12 = v11;
            v13 = [offsets rangeForElementKind:v9];
            [v12 addIndexesInRange:{v13 + v14, objc_msgSend(v10, "count")}];
          }

          else
          {
            v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
            [offsets[1] setObject:v12 forKeyedSubscript:v9];
            [v12 addIndexes:v10];
          }
        }

        v6 = [elementKinds countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }
}

- (void)incrementCountForElementKind:(uint64_t)kind
{
  if (kind)
  {
    if (![a2 length])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_incrementCountForElementKind_ object:kind file:@"_UICollectionLayoutHelpers.m" lineNumber:1704 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
    }

    v4 = [*(kind + 8) objectForKeyedSubscript:a2];
    if (!v4)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
      [*(kind + 8) setObject:v7 forKeyedSubscript:a2];
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

- (_NSRange)rangeForElementKind:(id)kind
{
  if (![kind length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutHelpers.m" lineNumber:1719 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
  }

  v6 = [(NSMutableDictionary *)self->_offsets objectForKeyedSubscript:kind];
  v7 = v6;
  if (v6)
  {
    firstIndex = [v6 firstIndex];
    v9 = [v7 count];
  }

  else
  {
    v9 = 0;
    firstIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = firstIndex;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)indexesForElementKind:(id)kind
{
  if (![kind length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[_UICollectionLayoutAuxillaryOffsets indexesForElementKind:]"];
    [currentHandler handleFailureInFunction:v11 file:@"_UICollectionLayoutHelpers.m" lineNumber:1729 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
  }

  v5 = [(NSMutableDictionary *)self->_offsets objectForKeyedSubscript:kind];
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

- (int64_t)offsetForElementKind:(id)kind
{
  if (![kind length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionLayoutHelpers.m" lineNumber:1734 description:{@"Invalid parameter not satisfying: %@", @"elementKind.length"}];
  }

  return [(_UICollectionLayoutAuxillaryOffsets *)self rangeForElementKind:kind];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UICollectionLayoutAuxillaryOffsets allocWithZone:zone];
  offsets = self->_offsets;

  return [(_UICollectionLayoutAuxillaryOffsets *)&v4->super.isa initWithOffsets:?];
}

- (BOOL)isEqual:(id)equal
{
  v23 = *MEMORY[0x1E69E9840];
  if (self == equal)
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
  elementKinds = [(_UICollectionLayoutAuxillaryOffsets *)self elementKinds];
  v6 = [elementKinds countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(elementKinds);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(_UICollectionLayoutAuxillaryOffsets *)self rangeForElementKind:v10];
        v13 = v12;
        if (v11 != [equal rangeForElementKind:v10] || v13 != v14)
        {
          v16 = 0;
          goto LABEL_18;
        }
      }

      v7 = [elementKinds countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v16 = 1;
LABEL_18:

  return v16;
}

- (BOOL)overlapsOffsets:(id)offsets
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  elementKinds = [(_UICollectionLayoutAuxillaryOffsets *)self elementKinds];
  v6 = [elementKinds countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(elementKinds);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(_UICollectionLayoutAuxillaryOffsets *)self indexesForElementKind:v10];
        v12 = [offsets indexesForElementKind:v10];
        if ([v12 count] && objc_msgSend(v11, "containsIndexes:", v12))
        {

          v13 = 1;
          goto LABEL_12;
        }
      }

      v7 = [elementKinds countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (BOOL)containsIndex:(int64_t)index forElementKind:(id)kind
{
  v5 = [(_UICollectionLayoutAuxillaryOffsets *)self indexesForElementKind:kind];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 containsIndex:index];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end