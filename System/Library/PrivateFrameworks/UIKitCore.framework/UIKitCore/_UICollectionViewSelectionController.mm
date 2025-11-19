@interface _UICollectionViewSelectionController
- (_UICollectionViewSelectionController)init;
- (id)_rebaseIndexPaths:(void *)a3 withTransaction:;
- (id)_rebaseIndexPaths:(void *)a3 withTranslator:;
- (id)_updateCollapsedSelectedIndexPaths:(void *)a3 withTransaction:;
- (id)rebaseIndexPath:(void *)a3 withDiffableTransaction:;
- (uint64_t)rebaseItemsWithDiffableTransaction:(uint64_t)result;
- (uint64_t)setAllowsMultipleSelection:(uint64_t)result;
- (void)addDeselectionTransitionIndexPaths:(uint64_t)a1;
- (void)rebaseItemsWithTranslator:(uint64_t)a1;
- (void)reset;
@end

@implementation _UICollectionViewSelectionController

- (_UICollectionViewSelectionController)init
{
  v10.receiver = self;
  v10.super_class = _UICollectionViewSelectionController;
  v2 = [(_UICollectionViewSelectionController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    selectedIndexPaths = v2->_selectedIndexPaths;
    v2->_selectedIndexPaths = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    highlightedIndexPaths = v2->_highlightedIndexPaths;
    v2->_highlightedIndexPaths = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    nonvisibleTrackedSelectedIdentifiers = v2->_nonvisibleTrackedSelectedIdentifiers;
    v2->_nonvisibleTrackedSelectedIdentifiers = v7;
  }

  return v2;
}

- (void)reset
{
  if (a1)
  {
    [*(a1 + 8) removeAllObjects];
    [*(a1 + 16) removeAllObjects];
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

- (void)addDeselectionTransitionIndexPaths:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {

      [v3 addObjectsFromArray:a2];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a2];
      v5 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }
}

- (void)rebaseItemsWithTranslator:(uint64_t)a1
{
  if (a1)
  {
    v4 = [(_UICollectionViewSelectionController *)a1 _rebaseIndexPaths:a2 withTranslator:?];
    v5 = [v4 mutableCopy];
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;

    v7 = [(_UICollectionViewSelectionController *)a1 _rebaseIndexPaths:a2 withTranslator:?];
    v8 = [v7 mutableCopy];
    v9 = *(a1 + 16);
    *(a1 + 16) = v8;

    v10 = *(a1 + 24);
    if (v10)
    {
      v13 = [(_UICollectionViewSelectionController *)a1 _rebaseIndexPaths:v10 withTranslator:a2];
      v11 = [v13 mutableCopy];
      v12 = *(a1 + 24);
      *(a1 + 24) = v11;
    }
  }
}

- (id)_rebaseIndexPaths:(void *)a3 withTranslator:
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = a2;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [a3 finalIndexPathForInitialIndexPath:{*(*(&v14 + 1) + 8 * i), v14}];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (uint64_t)rebaseItemsWithDiffableTransaction:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ([a2 isReorderingTransaction])
    {
      return 0;
    }

    else
    {
      v4 = [(_UICollectionViewSelectionController *)v3 _updateCollapsedSelectedIndexPaths:a2 withTransaction:?];
      v5 = [(_UICollectionViewSelectionController *)v3 _rebaseIndexPaths:a2 withTransaction:?];
      v6 = [v5 mutableCopy];
      v7 = *(v3 + 8);
      *(v3 + 8) = v6;

      v8 = *(v3 + 8);
      v9 = [v4 allObjects];
      [v8 addObjectsFromArray:v9];

      v10 = [(_UICollectionViewSelectionController *)v3 _rebaseIndexPaths:a2 withTransaction:?];
      v11 = [v10 mutableCopy];
      v12 = *(v3 + 16);
      *(v3 + 16) = v11;

      v13 = *(v3 + 24);
      if (v13)
      {
        v14 = [(_UICollectionViewSelectionController *)v3 _rebaseIndexPaths:v13 withTransaction:a2];
        v15 = [v14 mutableCopy];
        v16 = *(v3 + 24);
        *(v3 + 24) = v15;
      }

      return 1;
    }
  }

  return result;
}

- (id)_updateCollapsedSelectedIndexPaths:(void *)a3 withTransaction:
{
  v52 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v6 = a2;
    v7 = [v6 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v46;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v45 + 1) + 8 * i);
          v12 = [a3 finalIndexPathForInitialIndexPath:v11];
          if (!v12)
          {
            v13 = [a3 initialSnapshot];
            v14 = [v13 identifierForIndexPath:v11];

            if (v14 && [a3 _containsItemIdentifier:v14])
            {
              [v5 addObject:v14];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v8);
    }

    v35 = v5;

    v15 = [a3 finalSnapshot];
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = *(a1 + 32);
    v19 = [v18 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v41 + 1) + 8 * j);
          if ([v15 indexOfItemIdentifier:{v23, v35}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v17 addObject:v23];
LABEL_23:
            [v16 addObject:v23];
            continue;
          }

          if (([a3 _containsItemIdentifier:v23] & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v20);
    }

    [*(a1 + 32) minusSet:v16];
    v24 = *(a1 + 32);
    v25 = [v35 allObjects];
    [v24 addObjectsFromArray:v25];

    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v27 = v17;
    v28 = [v27 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v38;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [v15 indexPathForIdentifier:{*(*(&v37 + 1) + 8 * k), v35}];
          if (v32)
          {
            [v26 addObject:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v29);
    }

    v33 = [MEMORY[0x1E695DFD8] setWithArray:v26];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)_rebaseIndexPaths:(void *)a3 withTransaction:
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = [a3 initialSnapshot];
    v6 = [a2 count];
    v7 = MEMORY[0x1E695E0F0];
    if (v5 && v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = a2;
      v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v29;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v29 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [v5 identifierForIndexPath:*(*(&v28 + 1) + 8 * i)];
            if (v13)
            {
              [v7 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v10);
      }
    }

    if ([v7 count])
    {
      v14 = [a3 finalSnapshot];
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = v7;
      v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [v14 indexPathForIdentifier:{*(*(&v24 + 1) + 8 * j), v24}];
            if (v21)
            {
              [v15 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v18);
      }

      v22 = [MEMORY[0x1E695DFD8] setWithArray:v15];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFA8] set];
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)rebaseIndexPath:(void *)a3 withDiffableTransaction:
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = MEMORY[0x1E695DFD8];
    v11[0] = a2;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7 = [v5 setWithArray:v6];
    v8 = [(_UICollectionViewSelectionController *)a1 _rebaseIndexPaths:v7 withTransaction:a3];

    v9 = [v8 anyObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)setAllowsMultipleSelection:(uint64_t)result
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 40);
    if (v4 != a2)
    {
      result = [*(result + 8) count];
      *(v3 + 40) = v2;
      if (v4)
      {
        if ((v2 & 1) == 0 && result)
        {
          v5 = *(v3 + 32);

          return [v5 removeAllObjects];
        }
      }
    }
  }

  return result;
}

@end