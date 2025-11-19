@interface _UICollectionViewPrefetchingContext
- (id)initWithPrefetchItems:(double)a3 prefetchRect:(double)a4;
- (id)peekNextItem;
- (id)popNextItem;
- (id)remainingIndexPaths;
@end

@implementation _UICollectionViewPrefetchingContext

- (id)peekNextItem
{
  if (a1)
  {
    a1 = [a1[2] firstObject];
    v1 = vars8;
  }

  return a1;
}

- (id)initWithPrefetchItems:(double)a3 prefetchRect:(double)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (a1)
  {
    v34.receiver = a1;
    v34.super_class = _UICollectionViewPrefetchingContext;
    a1 = objc_msgSendSuper2(&v34, sel_init);
    if (a1)
    {
      v12 = MEMORY[0x1E695E0F0];
      if (v11)
      {
        v12 = v11;
      }

      v13 = v12;

      v14 = [v13 mutableCopy];
      v15 = a1[2];
      a1[2] = v14;

      v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v13, "count")}];
      v17 = a1[3];
      a1[3] = v16;

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = v13;
      v18 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v31;
        do
        {
          v21 = 0;
          do
          {
            if (*v31 != v20)
            {
              objc_enumerationMutation(v11);
            }

            v22 = *(*(&v30 + 1) + 8 * v21);
            if (v22)
            {
              v23 = *(v22 + 16);
            }

            else
            {
              v23 = 0;
            }

            v24 = v23;
            v25 = [v24 indexPath];
            v26 = v25;
            if (!v24 || (v24[288] & 1) == 0 || [v25 length] <= 1)
            {
              v27 = [MEMORY[0x1E696AAA8] currentHandler];
              [v27 handleFailureInMethod:sel_initWithPrefetchItems_prefetchRect_ object:a1 file:@"_UICollectionViewPrefetchingContext.m" lineNumber:32 description:{@"UICollectionView internal bug: Attempting to create prefetching context using invalid attributes. Attributes: %@", v24}];
            }

            [a1[3] setObject:v22 forKeyedSubscript:v26];

            ++v21;
          }

          while (v19 != v21);
          v28 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
          v19 = v28;
        }

        while (v28);
      }

      *(a1 + 4) = a3;
      *(a1 + 5) = a4;
      *(a1 + 6) = a5;
      *(a1 + 7) = a6;
    }
  }

  return a1;
}

- (id)popNextItem
{
  if (a1 && [*(a1 + 16) count])
  {
    v2 = *(a1 + 8);
    *(a1 + 8) = 0;

    v3 = [*(a1 + 16) firstObject];
    v4 = v3;
    if (v3)
    {
      v3 = v3[2];
    }

    v5 = [v3 indexPath];
    if (v5)
    {
      [*(a1 + 24) removeObjectForKey:v5];
    }

    [*(a1 + 16) removeObjectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)remainingIndexPaths
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = [a1[2] count];
    if (v2)
    {
      v3 = v1[1];
      if (!v3)
      {
        v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v5 = v1[2];
        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v16;
          do
          {
            v9 = 0;
            do
            {
              if (*v16 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v15 + 1) + 8 * v9);
              if (v10)
              {
                v10 = v10[2];
              }

              v11 = v10;
              v12 = [v11 indexPath];
              [v4 addObject:v12];

              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v7);
        }

        v13 = v1[1];
        v1[1] = v4;

        v3 = v1[1];
      }

      a1 = v3;
    }

    else
    {
      a1 = MEMORY[0x1E695E0F0];
    }
  }

  return a1;
}

@end