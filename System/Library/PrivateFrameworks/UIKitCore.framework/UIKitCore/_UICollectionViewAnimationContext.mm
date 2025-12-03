@interface _UICollectionViewAnimationContext
- (NSArray)appearingAttributes;
- (NSArray)disappearingAttributes;
- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)section;
- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)section;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(uint64_t)path;
- (id)initWithDataSourceTranslator:(void *)translator updates:(void *)updates layout:;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(uint64_t)path;
- (void)setAppearingAttributes:(id)attributes;
- (void)setCurrentlyVisibleItemIndexPaths:(uint64_t)paths;
- (void)setDisappearingAttributes:(id)attributes;
@end

@implementation _UICollectionViewAnimationContext

- (id)initWithDataSourceTranslator:(void *)translator updates:(void *)updates layout:
{
  v8 = a2;
  translatorCopy = translator;
  updatesCopy = updates;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = _UICollectionViewAnimationContext;
    v11 = objc_msgSendSuper2(&v17, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 5, a2);
      objc_storeStrong(self + 3, translator);
      objc_storeStrong(self + 4, updates);
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = self[1];
      self[1] = v12;

      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = self[2];
      self[2] = v14;
    }
  }

  return self;
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
          indexPathAfterUpdate = [v9 indexPathAfterUpdate];
          v11 = [(_UICollectionViewAnimationContext *)self initialLayoutAttributesForAppearingItemAtIndexPath:indexPathAfterUpdate];

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

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(uint64_t)path
{
  v3 = a2;
  if (path)
  {
    v4 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:v3];
    v5 = [*(path + 8) objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = [*(path + 32) _initialLayoutAttributesForAppearingItemAtIndexPath:v3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAppearingAttributes:(id)attributes
{
  v17 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [attributesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(attributesCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [_UICollectionViewItemKey collectionItemKeyForLayoutAttributes:v9];
        v11 = [v9 copy];
        [(NSMutableDictionary *)self->_appearingAttributesDict setObject:v11 forKeyedSubscript:v10];
      }

      v6 = [attributesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          indexPathBeforeUpdate = [v9 indexPathBeforeUpdate];
          v11 = [(_UICollectionViewAnimationContext *)self finalLayoutAttributesForDisappearingItemAtIndexPath:indexPathBeforeUpdate];

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

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(uint64_t)path
{
  v3 = a2;
  if (path)
  {
    v4 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:v3];
    v5 = [*(path + 16) objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = [*(path + 32) _finalLayoutAttributesForDisappearingItemAtIndexPath:v3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDisappearingAttributes:(id)attributes
{
  v18 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [attributesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(attributesCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        indexPath = [v9 indexPath];
        v11 = [_UICollectionViewItemKey collectionItemKeyForCellWithIndexPath:indexPath];

        v12 = [v9 copy];
        [(NSMutableDictionary *)self->_disappearingAttributesDict setObject:v12 forKeyedSubscript:v11];
      }

      v6 = [attributesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (_NSRange)initalSectionGlobalItemRangeForSection:(int64_t)section
{
  v3 = [(_UICollectionViewUpdateTranslating *)self->_dataSourceTranslator initalSectionGlobalItemRangeForSection:section];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)finalSectionGlobalItemRangeForSection:(int64_t)section
{
  v3 = [(_UICollectionViewUpdateTranslating *)self->_dataSourceTranslator finalSectionGlobalItemRangeForSection:section];
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)setCurrentlyVisibleItemIndexPaths:(uint64_t)paths
{
  if (paths)
  {
    objc_storeStrong((paths + 80), a2);
  }
}

@end