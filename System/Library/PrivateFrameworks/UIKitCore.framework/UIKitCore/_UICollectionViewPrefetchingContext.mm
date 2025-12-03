@interface _UICollectionViewPrefetchingContext
- (id)initWithPrefetchItems:(double)items prefetchRect:(double)rect;
- (id)peekNextItem;
- (id)popNextItem;
- (id)remainingIndexPaths;
@end

@implementation _UICollectionViewPrefetchingContext

- (id)peekNextItem
{
  if (self)
  {
    self = [self[2] firstObject];
    v1 = vars8;
  }

  return self;
}

- (id)initWithPrefetchItems:(double)items prefetchRect:(double)rect
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (self)
  {
    v34.receiver = self;
    v34.super_class = _UICollectionViewPrefetchingContext;
    self = objc_msgSendSuper2(&v34, sel_init);
    if (self)
    {
      v12 = MEMORY[0x1E695E0F0];
      if (v11)
      {
        v12 = v11;
      }

      v13 = v12;

      v14 = [v13 mutableCopy];
      v15 = self[2];
      self[2] = v14;

      v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v13, "count")}];
      v17 = self[3];
      self[3] = v16;

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
            indexPath = [v24 indexPath];
            v26 = indexPath;
            if (!v24 || (v24[288] & 1) == 0 || [indexPath length] <= 1)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:sel_initWithPrefetchItems_prefetchRect_ object:self file:@"_UICollectionViewPrefetchingContext.m" lineNumber:32 description:{@"UICollectionView internal bug: Attempting to create prefetching context using invalid attributes. Attributes: %@", v24}];
            }

            [self[3] setObject:v22 forKeyedSubscript:v26];

            ++v21;
          }

          while (v19 != v21);
          v28 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
          v19 = v28;
        }

        while (v28);
      }

      *(self + 4) = items;
      *(self + 5) = rect;
      *(self + 6) = a5;
      *(self + 7) = a6;
    }
  }

  return self;
}

- (id)popNextItem
{
  if (self && [*(self + 16) count])
  {
    v2 = *(self + 8);
    *(self + 8) = 0;

    firstObject = [*(self + 16) firstObject];
    v4 = firstObject;
    if (firstObject)
    {
      firstObject = firstObject[2];
    }

    indexPath = [firstObject indexPath];
    if (indexPath)
    {
      [*(self + 24) removeObjectForKey:indexPath];
    }

    [*(self + 16) removeObjectAtIndex:0];
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
  if (self)
  {
    selfCopy = self;
    v2 = [self[2] count];
    if (v2)
    {
      v3 = selfCopy[1];
      if (!v3)
      {
        v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v5 = selfCopy[2];
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
              indexPath = [v11 indexPath];
              [v4 addObject:indexPath];

              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v7);
        }

        v13 = selfCopy[1];
        selfCopy[1] = v4;

        v3 = selfCopy[1];
      }

      self = v3;
    }

    else
    {
      self = MEMORY[0x1E695E0F0];
    }
  }

  return self;
}

@end