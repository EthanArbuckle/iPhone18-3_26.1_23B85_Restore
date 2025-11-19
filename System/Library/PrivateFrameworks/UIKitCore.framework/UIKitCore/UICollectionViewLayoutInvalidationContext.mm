@interface UICollectionViewLayoutInvalidationContext
- (BOOL)_requiresFullCacheInvalidation;
- (CGPoint)contentOffsetAdjustment;
- (CGPoint)interactiveMovementTarget;
- (CGSize)contentSizeAdjustment;
- (NSArray)_updateItems;
- (NSDictionary)invalidatedDecorationIndexPaths;
- (NSDictionary)invalidatedSupplementaryIndexPaths;
- (uint64_t)_shouldInvalidatePreferredAttributes;
- (void)_invalidateSupplementaryElementsOfKind:(id)a3 atIndexPaths:(id)a4;
- (void)_orthogonalSectionsWithContentSizeChanges;
- (void)_removeInvalidatedDecorationOfKind:(id)a3 indexPath:(id)a4;
- (void)_removeInvalidatedSupplementaryOfKind:(id)a3 indexPath:(id)a4;
- (void)_setInvalidateEverything:(BOOL)a3;
- (void)_setInvalidatedSupplementaryViews:(id)a3;
- (void)_setPreviousIndexPathsForInteractivelyMovingItems:(id)a3;
- (void)_setShouldInvalidateCollectionViewContentSize:(BOOL)a3;
- (void)_setTargetIndexPathsForInteractivelyMovingItems:(id)a3;
- (void)_setUpdateItems:(id)a3;
- (void)invalidateDecorationElementsOfKind:(NSString *)elementKind atIndexPaths:(NSArray *)indexPaths;
- (void)invalidateItemsAtIndexPaths:(NSArray *)indexPaths;
@end

@implementation UICollectionViewLayoutInvalidationContext

- (uint64_t)_shouldInvalidatePreferredAttributes
{
  if (result)
  {
    v1 = result;
    if (dyld_program_sdk_at_least())
    {
      v2 = [v1 _intent];
      result = 1;
      if (v2 <= 0xF && ((1 << v2) & 0x8062) != 0)
      {
        return (v1[112] >> 1) & 1;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)_requiresFullCacheInvalidation
{
  if (!a1)
  {
    return 0;
  }

  if (a1[112] & 0x10) != 0 || dyld_program_sdk_at_least() && ([a1 invalidateEverything])
  {
    return 1;
  }

  v2 = [a1 invalidatedItemIndexPaths];
  if ([v2 count])
  {
    v3 = 0;
  }

  else
  {
    v4 = [a1 invalidatedSupplementaryIndexPaths];
    if ([v4 count])
    {
      v3 = 0;
    }

    else
    {
      v5 = [a1 invalidatedDecorationIndexPaths];
      v3 = [v5 count] == 0;
    }
  }

  v6 = [a1 _intent];
  v7 = v6;
  if (v6 > 0xF)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:sel__requiresFullCacheInvalidation object:a1 file:@"UICollectionViewLayout.m" lineNumber:1002 description:{@"UICollectionView internal bug: Created context with unknown intent: %lld. Context: %@", v7, a1}];

    return 1;
  }

  if (((1 << v6) & 0xE5B) == 0)
  {
    return ((1 << v6) & 0x71A4) != 0;
  }

  return v3;
}

- (NSDictionary)invalidatedSupplementaryIndexPaths
{
  if (self->_invalidatedSupplementaryIndexPaths)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_invalidatedSupplementaryIndexPaths, "count")}];
    invalidatedSupplementaryIndexPaths = self->_invalidatedSupplementaryIndexPaths;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__UICollectionViewLayoutInvalidationContext_invalidatedSupplementaryIndexPaths__block_invoke;
    v7[3] = &unk_1E70FFFC8;
    v5 = v3;
    v8 = v5;
    [(NSMutableDictionary *)invalidatedSupplementaryIndexPaths enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)invalidatedDecorationIndexPaths
{
  if (self->_invalidatedDecorationIndexPaths)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_invalidatedDecorationIndexPaths, "count")}];
    invalidatedDecorationIndexPaths = self->_invalidatedDecorationIndexPaths;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__UICollectionViewLayoutInvalidationContext_invalidatedDecorationIndexPaths__block_invoke;
    v7[3] = &unk_1E70FFFC8;
    v5 = v3;
    v8 = v5;
    [(NSMutableDictionary *)invalidatedDecorationIndexPaths enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGPoint)contentOffsetAdjustment
{
  x = self->_contentOffsetAdjustment.x;
  y = self->_contentOffsetAdjustment.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)contentSizeAdjustment
{
  width = self->_contentSizeAdjustment.width;
  height = self->_contentSizeAdjustment.height;
  result.height = height;
  result.width = width;
  return result;
}

void __79__UICollectionViewLayoutInvalidationContext_invalidatedSupplementaryIndexPaths__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 allObjects];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:a2];
}

void __76__UICollectionViewLayoutInvalidationContext_invalidatedDecorationIndexPaths__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 allObjects];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:a2];
}

- (void)_setInvalidatedSupplementaryViews:(id)a3
{
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a3, "count")}];
  invalidatedSupplementaryIndexPaths = self->_invalidatedSupplementaryIndexPaths;
  self->_invalidatedSupplementaryIndexPaths = v5;

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__UICollectionViewLayoutInvalidationContext__setInvalidatedSupplementaryViews___block_invoke;
  v7[3] = &unk_1E70F6948;
  v7[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __79__UICollectionViewLayoutInvalidationContext__setInvalidatedSupplementaryViews___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a3 mutableCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a3];
  }

  v7 = v6;
  [*(*(a1 + 32) + 16) setObject:v6 forKeyedSubscript:a2];
}

- (void)_invalidateSupplementaryElementsOfKind:(id)a3 atIndexPaths:(id)a4
{
  if (a3 && a4)
  {
    invalidatedSupplementaryIndexPaths = self->_invalidatedSupplementaryIndexPaths;
    if (!invalidatedSupplementaryIndexPaths)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_invalidatedSupplementaryIndexPaths;
      self->_invalidatedSupplementaryIndexPaths = v8;

      invalidatedSupplementaryIndexPaths = self->_invalidatedSupplementaryIndexPaths;
    }

    v10 = [(NSMutableDictionary *)invalidatedSupplementaryIndexPaths objectForKeyedSubscript:a3];
    v12 = v10;
    if (v10)
    {
      [v10 addObjectsFromArray:a4];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a4];
      [(NSMutableDictionary *)self->_invalidatedSupplementaryIndexPaths setObject:v11 forKeyedSubscript:a3];
    }
  }
}

- (void)invalidateItemsAtIndexPaths:(NSArray *)indexPaths
{
  if ([(NSArray *)indexPaths count])
  {
    invalidatedItemIndexPaths = self->_invalidatedItemIndexPaths;
    if (!invalidatedItemIndexPaths)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = self->_invalidatedItemIndexPaths;
      self->_invalidatedItemIndexPaths = v6;

      invalidatedItemIndexPaths = self->_invalidatedItemIndexPaths;
    }

    [(NSMutableSet *)invalidatedItemIndexPaths addObjectsFromArray:indexPaths];
  }
}

- (void)_removeInvalidatedSupplementaryOfKind:(id)a3 indexPath:(id)a4
{
  v7 = [(NSMutableDictionary *)self->_invalidatedSupplementaryIndexPaths objectForKeyedSubscript:?];
  v8 = v7;
  if (v7)
  {
    v10 = v7;
    [v7 removeObject:a4];
    v9 = [v10 count];
    v8 = v10;
    if (!v9)
    {
      [(NSMutableDictionary *)self->_invalidatedSupplementaryIndexPaths removeObjectForKey:a3];
      v8 = v10;
    }
  }
}

- (void)invalidateDecorationElementsOfKind:(NSString *)elementKind atIndexPaths:(NSArray *)indexPaths
{
  invalidatedDecorationIndexPaths = self->_invalidatedDecorationIndexPaths;
  if (!invalidatedDecorationIndexPaths)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_invalidatedDecorationIndexPaths;
    self->_invalidatedDecorationIndexPaths = v8;

    invalidatedDecorationIndexPaths = self->_invalidatedDecorationIndexPaths;
  }

  v10 = [(NSMutableDictionary *)invalidatedDecorationIndexPaths objectForKeyedSubscript:elementKind];
  v12 = v10;
  if (v10)
  {
    [v10 addObjectsFromArray:indexPaths];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:indexPaths];
    [(NSMutableDictionary *)self->_invalidatedDecorationIndexPaths setObject:v11 forKeyedSubscript:elementKind];
  }
}

- (void)_removeInvalidatedDecorationOfKind:(id)a3 indexPath:(id)a4
{
  v7 = [(NSMutableDictionary *)self->_invalidatedDecorationIndexPaths objectForKeyedSubscript:?];
  v8 = v7;
  if (v7)
  {
    v10 = v7;
    [v7 removeObject:a4];
    v9 = [v10 count];
    v8 = v10;
    if (!v9)
    {
      [(NSMutableDictionary *)self->_invalidatedDecorationIndexPaths removeObjectForKey:a3];
      v8 = v10;
    }
  }
}

- (void)_setInvalidateEverything:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_invalidationContextFlags = *&self->_invalidationContextFlags & 0xFD | v3;
}

- (void)_setUpdateItems:(id)a3
{
  updateItems = self->_updateItems;
  p_updateItems = &self->_updateItems;
  if (updateItems != a3)
  {
    objc_storeStrong(p_updateItems, a3);
  }
}

- (NSArray)_updateItems
{
  v2 = self->_updateItems;

  return v2;
}

- (void)_setPreviousIndexPathsForInteractivelyMovingItems:(id)a3
{
  if (self->_previousIndexPathsForReorderedItems != a3)
  {
    v5 = [a3 copy];
    previousIndexPathsForReorderedItems = self->_previousIndexPathsForReorderedItems;
    self->_previousIndexPathsForReorderedItems = v5;
  }
}

- (void)_setTargetIndexPathsForInteractivelyMovingItems:(id)a3
{
  targetIndexPathsForReorderedItems = self->_targetIndexPathsForReorderedItems;
  p_targetIndexPathsForReorderedItems = &self->_targetIndexPathsForReorderedItems;
  if (targetIndexPathsForReorderedItems != a3)
  {
    objc_storeStrong(p_targetIndexPathsForReorderedItems, a3);
  }
}

- (CGPoint)interactiveMovementTarget
{
  x = self->_reorderingTarget.x;
  y = self->_reorderingTarget.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_orthogonalSectionsWithContentSizeChanges
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[13];
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v5 = v2[13];
      v2[13] = v4;

      v3 = v2[13];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)_setShouldInvalidateCollectionViewContentSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_invalidationContextFlags = *&self->_invalidationContextFlags & 0xFB | v3;
}

@end