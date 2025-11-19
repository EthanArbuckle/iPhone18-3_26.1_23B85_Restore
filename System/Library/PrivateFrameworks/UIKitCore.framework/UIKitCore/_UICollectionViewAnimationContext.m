@interface _UICollectionViewAnimationContext
- (NSArray)appearingAttributes;
- (NSArray)disappearingAttributes;
- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)a3;
- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)a3;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(uint64_t)a1;
- (id)initWithDataSourceTranslator:(void *)a3 updates:(void *)a4 layout:;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(uint64_t)a1;
- (void)setAppearingAttributes:(id)a3;
- (void)setCurrentlyVisibleItemIndexPaths:(uint64_t)a1;
- (void)setDisappearingAttributes:(id)a3;
@end

@implementation _UICollectionViewAnimationContext

- (id)initWithDataSourceTranslator:(void *)a3 updates:(void *)a4 layout:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = _UICollectionViewAnimationContext;
    v11 = objc_msgSendSuper2(&v17, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 5, a2);
      objc_storeStrong(a1 + 3, a3);
      objc_storeStrong(a1 + 4, a4);
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = a1[1];
      a1[1] = v12;

      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = a1[2];
      a1[2] = v14;
    }
  }

  return a1;
}

- (NSArray)appearingAttributes
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_updates;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (![v9 updateAction])
        {
          v10 = [v9 indexPathAfterUpdate];
          v11 = [(_UICollectionViewAnimationContext *)self initialLayoutAttributesForAppearingItemAtIndexPath:v10];

          if (v11)
          {
            v12 = [v11 copy];
            [v3 addObject:v12];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:v3];
    v5 = [*(a1 + 8) objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = [*(a1 + 32) _initialLayoutAttributesForAppearingItemAtIndexPath:v3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAppearingAttributes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v9];
        v11 = [v9 copy];
        [(NSMutableDictionary *)self->_appearingAttributesDict setObject:v11 forKeyedSubscript:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (NSArray)disappearingAttributes
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_updates;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 updateAction] == 1)
        {
          v10 = [v9 indexPathBeforeUpdate];
          v11 = [(_UICollectionViewAnimationContext *)self finalLayoutAttributesForDisappearingItemAtIndexPath:v10];

          if (v11)
          {
            v12 = [v11 copy];
            [v3 addObject:v12];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:v3];
    v5 = [*(a1 + 16) objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = [*(a1 + 32) _finalLayoutAttributesForDisappearingItemAtIndexPath:v3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDisappearingAttributes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 indexPath];
        v11 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:v10];

        v12 = [v9 copy];
        [(NSMutableDictionary *)self->_disappearingAttributesDict setObject:v12 forKeyedSubscript:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)a3
{
  v3 = [(_UICollectionViewUpdateTranslating *)self->_dataSourceTranslator initalSectionGlobalItemRangeForSection:a3];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)a3
{
  v3 = [(_UICollectionViewUpdateTranslating *)self->_dataSourceTranslator finalSectionGlobalItemRangeForSection:a3];
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)setCurrentlyVisibleItemIndexPaths:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

@end