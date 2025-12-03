@interface _UICollectionLayoutSolveResult
- (_UICollectionLayoutSolveResult)init;
- (id)indexesForInvalidatedAuxillariesOfKind:(id *)kind;
- (id)invalidatedAuxillaryKinds;
- (void)addInvalidatedAuxillaryOfKind:(uint64_t)kind indexes:;
- (void)addInvalidatedSupplementariesWithOffsets:(uint64_t)offsets;
@end

@implementation _UICollectionLayoutSolveResult

- (_UICollectionLayoutSolveResult)init
{
  v8.receiver = self;
  v8.super_class = _UICollectionLayoutSolveResult;
  v2 = [(_UICollectionLayoutSolveResult *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
    invalidatedIndexes = v2->_invalidatedIndexes;
    v2->_invalidatedIndexes = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    invalidatedAuxillaryIndexesDict = v2->_invalidatedAuxillaryIndexesDict;
    v2->_invalidatedAuxillaryIndexesDict = v5;
  }

  return v2;
}

- (id)invalidatedAuxillaryKinds
{
  if (self)
  {
    v1 = MEMORY[0x1E695DFD8];
    allKeys = [*(self + 16) allKeys];
    v3 = [v1 setWithArray:allKeys];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addInvalidatedAuxillaryOfKind:(uint64_t)kind indexes:
{
  if (self)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_addInvalidatedAuxillaryOfKind_indexes_ object:self file:@"_UICollectionLayoutHelpers.m" lineNumber:1427 description:{@"Invalid parameter not satisfying: %@", @"kind"}];
    }

    v6 = [*(self + 16) objectForKeyedSubscript:a2];
    if (!v6)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
      [*(self + 16) setObject:v8 forKeyedSubscript:a2];
      v6 = v8;
    }

    v9 = v6;
    [v6 addIndexes:kind];
  }
}

- (void)addInvalidatedSupplementariesWithOffsets:(uint64_t)offsets
{
  v16 = *MEMORY[0x1E69E9840];
  if (offsets)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    elementKinds = [a2 elementKinds];
    v5 = [elementKinds countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(elementKinds);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = [a2 indexesForElementKind:v9];
          [(_UICollectionLayoutSolveResult *)offsets addInvalidatedAuxillaryOfKind:v9 indexes:v10];
        }

        v6 = [elementKinds countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (id)indexesForInvalidatedAuxillariesOfKind:(id *)kind
{
  kindCopy = kind;
  if (kind)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_indexesForInvalidatedAuxillariesOfKind_ object:kindCopy file:@"_UICollectionLayoutHelpers.m" lineNumber:1453 description:{@"Invalid parameter not satisfying: %@", @"kind"}];
    }

    v4 = [kindCopy[2] objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      indexSet = v4;
    }

    else
    {
      indexSet = [MEMORY[0x1E696AC90] indexSet];
    }

    kindCopy = indexSet;
  }

  return kindCopy;
}

@end