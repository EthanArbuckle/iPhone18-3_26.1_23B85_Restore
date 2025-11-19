@interface _UIIdentifierDiffer
- (BOOL)hasChanges;
- (id)collectionDifference;
- (id)description;
- (id)initWithBeforeIdentifiers:(void *)a3 afterIdentifiers:;
- (id)initWithBeforeIdentifiers:(void *)a3 afterIdentifiers:(void *)a4 collectionDifference:;
- (void)_performDiffWithOptions:(uint64_t)a1;
- (void)_performFoundationDiffWithOptions:(uint64_t)a1;
- (void)_prepareDiffResultsFromCollectionDifference:(void *)a1;
- (void)deletedIndexes;
- (void)insertedIndexes;
- (void)movePairs;
@end

@implementation _UIIdentifierDiffer

- (void)insertedIndexes
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      a1 = [MEMORY[0x1E696AC90] indexSet];
    }

    v1 = vars8;
  }

  return a1;
}

- (void)deletedIndexes
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      a1 = [MEMORY[0x1E696AC90] indexSet];
    }

    v1 = vars8;
  }

  return a1;
}

- (id)collectionDifference
{
  v1 = a1;
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      v3 = [a1[3] count];
      v4 = [v1[4] count] + v3;
      v5 = v4 + 2 * [v1[5] count];
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
      v7 = v1[3];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __43___UIIdentifierDiffer_collectionDifference__block_invoke;
      v29[3] = &unk_1E70FE330;
      v29[4] = v1;
      v8 = v6;
      v30 = v8;
      [v7 enumerateIndexesUsingBlock:{v29, v8}];
      v9 = v1[4];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __43___UIIdentifierDiffer_collectionDifference__block_invoke_2;
      v27[3] = &unk_1E70FE330;
      v27[4] = v1;
      v10 = v8;
      v28 = v10;
      [v9 enumerateIndexesUsingBlock:v27];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = v1[5];
      v11 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v11)
      {
        v12 = *v24;
        do
        {
          v13 = 0;
          do
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v23 + 1) + 8 * v13);
            if (v14)
            {
              v15 = *(v14 + 8);
              v16 = *(v14 + 16);
            }

            else
            {
              v15 = 0;
              v16 = 0;
            }

            v17 = [v1[1] objectAtIndexedSubscript:v15];
            v18 = [MEMORY[0x1E696ADD0] changeWithObject:v17 type:1 index:v15 associatedIndex:v16];
            v19 = [MEMORY[0x1E696ADD0] changeWithObject:v17 type:0 index:v16 associatedIndex:v15];
            [v10 addObject:v18];
            [v10 addObject:v19];

            ++v13;
          }

          while (v11 != v13);
          v20 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
          v11 = v20;
        }

        while (v20);
      }

      v1 = [objc_alloc(MEMORY[0x1E696ADD8]) initWithChanges:v10];
    }
  }

  return v1;
}

- (BOOL)hasChanges
{
  if (result)
  {
    v1 = result;
    return [*(result + 24) count] || objc_msgSend(*(v1 + 32), "count") || objc_msgSend(*(v1 + 40), "count") != 0;
  }

  return result;
}

- (void)movePairs
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      a1 = [MEMORY[0x1E695DFD8] set];
    }

    v1 = vars8;
  }

  return a1;
}

- (id)initWithBeforeIdentifiers:(void *)a3 afterIdentifiers:(void *)a4 collectionDifference:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = _UIIdentifierDiffer;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 6, a4);
      if (v10)
      {
        [(_UIIdentifierDiffer *)a1 _performDiffWithOptions:?];
      }
    }
  }

  return a1;
}

- (id)initWithBeforeIdentifiers:(void *)a3 afterIdentifiers:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    a1 = [(_UIIdentifierDiffer *)a1 initWithBeforeIdentifiers:v5 afterIdentifiers:v6 collectionDifference:0];
  }

  return a1;
}

- (id)description
{
  v3 = [(NSSet *)self->_movePairs allObjects];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"<%@: %p beforeCount = %lu; afterCount = %lu; inserted: %@; deleted: %@; moved: %@", v7, self, -[NSOrderedSet count](self->_beforeIdentifiers, "count"), -[NSOrderedSet count](self->_afterIdentifiers, "count"), self->_insertedIndexes, self->_deletedIndexes, v4];;

  return v8;
}

- (void)_performDiffWithOptions:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      [(_UIIdentifierDiffer *)a1 _prepareDiffResultsFromCollectionDifference:?];
    }

    else
    {
      [(_UIIdentifierDiffer *)a1 _performFoundationDiffWithOptions:a2];
    }
  }
}

- (void)_prepareDiffResultsFromCollectionDifference:(void *)a1
{
  v40 = *MEMORY[0x1E69E9840];
  v25 = a2;
  if (a1)
  {
    v26 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v27 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v2 = [v25 removals];
    v3 = [v2 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v3)
    {
      v4 = *v34;
      do
      {
        v5 = 0;
        do
        {
          if (*v34 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v33 + 1) + 8 * v5);
          v7 = [v6 index];
          v8 = [v6 associatedIndex];
          if (v8 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v27 addIndex:v7];
          }

          else
          {
            v9 = [_UIIdentifierDifferMovePair alloc];
            if (v9)
            {
              v37.receiver = v9;
              v37.super_class = _UIIdentifierDifferMovePair;
              v10 = objc_msgSendSuper2(&v37, sel_init);
              v11 = v10;
              if (v10)
              {
                *(v10 + 1) = v7;
                *(v10 + 2) = v8;
              }
            }

            else
            {
              v11 = 0;
            }

            [v28 addObject:v11];
          }

          ++v5;
        }

        while (v3 != v5);
        v12 = [v2 countByEnumeratingWithState:&v33 objects:v39 count:16];
        v3 = v12;
      }

      while (v12);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = [v25 insertions];
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v14)
    {
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = [v17 index];
          if ([v17 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v26 addIndex:v18];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v14);
    }

    v19 = a1[3];
    a1[3] = v26;
    v20 = v26;

    v21 = a1[4];
    a1[4] = v27;
    v22 = v27;

    v23 = a1[5];
    a1[5] = v28;
  }
}

- (void)_performFoundationDiffWithOptions:(uint64_t)a1
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1 && ([*(a1 + 8) count] || objc_msgSend(*(a1 + 16), "count")))
  {
    v4 = a2 & 2;
    v32 = a1;
    v33 = [*(a1 + 16) differenceFromOrderedSet:*(a1 + 8) withOptions:(2 * v4) ^ 4];
    v38 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v37 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v34 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v35 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = [v33 insertions];
    v6 = [v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v6)
    {
      v7 = *v44;
      do
      {
        v8 = 0;
        do
        {
          if (*v44 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v43 + 1) + 8 * v8);
          v10 = [v9 index];
          if (v4 || (v11 = [v9 associatedIndex], v11 == 0x7FFFFFFFFFFFFFFFLL))
          {
            [v38 addIndex:v10];
          }

          else
          {
            v12 = [_UIIdentifierDifferMovePair alloc];
            if (v12)
            {
              v47.receiver = v12;
              v47.super_class = _UIIdentifierDifferMovePair;
              v13 = objc_msgSendSuper2(&v47, sel_init);
              v14 = v13;
              if (v13)
              {
                *(v13 + 1) = v11;
                *(v13 + 2) = v10;
              }
            }

            else
            {
              v14 = 0;
            }

            [v36 addObject:v14];
            [v34 addIndex:v11];
            [v35 addIndex:v10];
          }

          ++v8;
        }

        while (v6 != v8);
        v15 = [v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
        v6 = v15;
      }

      while (v15);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v16 = [v33 removals];
    v17 = [v16 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v17)
    {
      v18 = *v40;
      do
      {
        v19 = 0;
        do
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v39 + 1) + 8 * v19);
          v21 = [v20 index];
          if (v4 || (v22 = [v20 associatedIndex], v22 == 0x7FFFFFFFFFFFFFFFLL))
          {
            [v37 addIndex:v21];
          }

          else
          {
            v23 = [_UIIdentifierDifferMovePair alloc];
            if (v23)
            {
              v47.receiver = v23;
              v47.super_class = _UIIdentifierDifferMovePair;
              v24 = objc_msgSendSuper2(&v47, sel_init);
              v25 = v24;
              if (v24)
              {
                *(v24 + 1) = v21;
                *(v24 + 2) = v22;
              }
            }

            else
            {
              v25 = 0;
            }

            [v36 addObject:v25];
            [v34 addIndex:v21];
            [v35 addIndex:v22];
          }

          ++v19;
        }

        while (v17 != v19);
        v26 = [v16 countByEnumeratingWithState:&v39 objects:v48 count:16];
        v17 = v26;
      }

      while (v26);
    }

    v27 = v32[3];
    v32[3] = v38;
    v28 = v38;

    v29 = v32[4];
    v32[4] = v37;
    v30 = v37;

    v31 = v32[5];
    v32[5] = v36;
  }
}

@end