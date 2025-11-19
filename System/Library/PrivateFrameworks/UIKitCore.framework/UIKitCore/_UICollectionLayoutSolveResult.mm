@interface _UICollectionLayoutSolveResult
- (_UICollectionLayoutSolveResult)init;
- (id)indexesForInvalidatedAuxillariesOfKind:(id *)a1;
- (id)invalidatedAuxillaryKinds;
- (void)addInvalidatedAuxillaryOfKind:(uint64_t)a3 indexes:;
- (void)addInvalidatedSupplementariesWithOffsets:(uint64_t)a1;
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
  if (a1)
  {
    v1 = MEMORY[0x1E695DFD8];
    v2 = [*(a1 + 16) allKeys];
    v3 = [v1 setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)addInvalidatedAuxillaryOfKind:(uint64_t)a3 indexes:
{
  if (a1)
  {
    if (!a2)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_addInvalidatedAuxillaryOfKind_indexes_ object:a1 file:@"_UICollectionLayoutHelpers.m" lineNumber:1427 description:{@"Invalid parameter not satisfying: %@", @"kind"}];
    }

    v6 = [*(a1 + 16) objectForKeyedSubscript:a2];
    if (!v6)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AD50]);
      [*(a1 + 16) setObject:v8 forKeyedSubscript:a2];
      v6 = v8;
    }

    v9 = v6;
    [v6 addIndexes:a3];
  }
}

- (void)addInvalidatedSupplementariesWithOffsets:(uint64_t)a1
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [a2 elementKinds];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = [a2 indexesForElementKind:v9];
          [(_UICollectionLayoutSolveResult *)a1 addInvalidatedAuxillaryOfKind:v9 indexes:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (id)indexesForInvalidatedAuxillariesOfKind:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    if (!a2)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_indexesForInvalidatedAuxillariesOfKind_ object:v2 file:@"_UICollectionLayoutHelpers.m" lineNumber:1453 description:{@"Invalid parameter not satisfying: %@", @"kind"}];
    }

    v4 = [v2[2] objectForKeyedSubscript:a2];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E696AC90] indexSet];
    }

    v2 = v6;
  }

  return v2;
}

@end