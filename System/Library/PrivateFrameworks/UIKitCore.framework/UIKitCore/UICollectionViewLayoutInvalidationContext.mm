@interface UICollectionViewLayoutInvalidationContext
- (BOOL)_requiresFullCacheInvalidation;
- (CGPoint)contentOffsetAdjustment;
- (CGPoint)interactiveMovementTarget;
- (CGSize)contentSizeAdjustment;
- (NSArray)_updateItems;
- (NSDictionary)invalidatedDecorationIndexPaths;
- (NSDictionary)invalidatedSupplementaryIndexPaths;
- (uint64_t)_shouldInvalidatePreferredAttributes;
- (void)_invalidateSupplementaryElementsOfKind:(id)kind atIndexPaths:(id)paths;
- (void)_orthogonalSectionsWithContentSizeChanges;
- (void)_removeInvalidatedDecorationOfKind:(id)kind indexPath:(id)path;
- (void)_removeInvalidatedSupplementaryOfKind:(id)kind indexPath:(id)path;
- (void)_setInvalidateEverything:(BOOL)everything;
- (void)_setInvalidatedSupplementaryViews:(id)views;
- (void)_setPreviousIndexPathsForInteractivelyMovingItems:(id)items;
- (void)_setShouldInvalidateCollectionViewContentSize:(BOOL)size;
- (void)_setTargetIndexPathsForInteractivelyMovingItems:(id)items;
- (void)_setUpdateItems:(id)items;
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
      _intent = [v1 _intent];
      result = 1;
      if (_intent <= 0xF && ((1 << _intent) & 0x8062) != 0)
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
  if (!self)
  {
    return 0;
  }

  if (self[112] & 0x10) != 0 || dyld_program_sdk_at_least() && ([self invalidateEverything])
  {
    return 1;
  }

  invalidatedItemIndexPaths = [self invalidatedItemIndexPaths];
  if ([invalidatedItemIndexPaths count])
  {
    v3 = 0;
  }

  else
  {
    invalidatedSupplementaryIndexPaths = [self invalidatedSupplementaryIndexPaths];
    if ([invalidatedSupplementaryIndexPaths count])
    {
      v3 = 0;
    }

    else
    {
      invalidatedDecorationIndexPaths = [self invalidatedDecorationIndexPaths];
      v3 = [invalidatedDecorationIndexPaths count] == 0;
    }
  }

  _intent = [self _intent];
  v7 = _intent;
  if (_intent > 0xF)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__requiresFullCacheInvalidation object:self file:@"UICollectionViewLayout.m" lineNumber:1002 description:{@"UICollectionView internal bug: Created context with unknown intent: %lld. Context: %@", v7, self}];

    return 1;
  }

  if (((1 << _intent) & 0xE5B) == 0)
  {
    return ((1 << _intent) & 0x71A4) != 0;
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

- (void)_setInvalidatedSupplementaryViews:(id)views
{
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(views, "count")}];
  invalidatedSupplementaryIndexPaths = self->_invalidatedSupplementaryIndexPaths;
  self->_invalidatedSupplementaryIndexPaths = v5;

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__UICollectionViewLayoutInvalidationContext__setInvalidatedSupplementaryViews___block_invoke;
  v7[3] = &unk_1E70F6948;
  v7[4] = self;
  [views enumerateKeysAndObjectsUsingBlock:v7];
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

- (void)_invalidateSupplementaryElementsOfKind:(id)kind atIndexPaths:(id)paths
{
  if (kind && paths)
  {
    invalidatedSupplementaryIndexPaths = self->_invalidatedSupplementaryIndexPaths;
    if (!invalidatedSupplementaryIndexPaths)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_invalidatedSupplementaryIndexPaths;
      self->_invalidatedSupplementaryIndexPaths = v8;

      invalidatedSupplementaryIndexPaths = self->_invalidatedSupplementaryIndexPaths;
    }

    v10 = [(NSMutableDictionary *)invalidatedSupplementaryIndexPaths objectForKeyedSubscript:kind];
    v12 = v10;
    if (v10)
    {
      [v10 addObjectsFromArray:paths];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:paths];
      [(NSMutableDictionary *)self->_invalidatedSupplementaryIndexPaths setObject:v11 forKeyedSubscript:kind];
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

- (void)_removeInvalidatedSupplementaryOfKind:(id)kind indexPath:(id)path
{
  v7 = [(NSMutableDictionary *)self->_invalidatedSupplementaryIndexPaths objectForKeyedSubscript:?];
  v8 = v7;
  if (v7)
  {
    v10 = v7;
    [v7 removeObject:path];
    v9 = [v10 count];
    v8 = v10;
    if (!v9)
    {
      [(NSMutableDictionary *)self->_invalidatedSupplementaryIndexPaths removeObjectForKey:kind];
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

- (void)_removeInvalidatedDecorationOfKind:(id)kind indexPath:(id)path
{
  v7 = [(NSMutableDictionary *)self->_invalidatedDecorationIndexPaths objectForKeyedSubscript:?];
  v8 = v7;
  if (v7)
  {
    v10 = v7;
    [v7 removeObject:path];
    v9 = [v10 count];
    v8 = v10;
    if (!v9)
    {
      [(NSMutableDictionary *)self->_invalidatedDecorationIndexPaths removeObjectForKey:kind];
      v8 = v10;
    }
  }
}

- (void)_setInvalidateEverything:(BOOL)everything
{
  if (everything)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_invalidationContextFlags = *&self->_invalidationContextFlags & 0xFD | v3;
}

- (void)_setUpdateItems:(id)items
{
  updateItems = self->_updateItems;
  p_updateItems = &self->_updateItems;
  if (updateItems != items)
  {
    objc_storeStrong(p_updateItems, items);
  }
}

- (NSArray)_updateItems
{
  v2 = self->_updateItems;

  return v2;
}

- (void)_setPreviousIndexPathsForInteractivelyMovingItems:(id)items
{
  if (self->_previousIndexPathsForReorderedItems != items)
  {
    v5 = [items copy];
    previousIndexPathsForReorderedItems = self->_previousIndexPathsForReorderedItems;
    self->_previousIndexPathsForReorderedItems = v5;
  }
}

- (void)_setTargetIndexPathsForInteractivelyMovingItems:(id)items
{
  targetIndexPathsForReorderedItems = self->_targetIndexPathsForReorderedItems;
  p_targetIndexPathsForReorderedItems = &self->_targetIndexPathsForReorderedItems;
  if (targetIndexPathsForReorderedItems != items)
  {
    objc_storeStrong(p_targetIndexPathsForReorderedItems, items);
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
  if (self)
  {
    selfCopy = self;
    v3 = self[13];
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v5 = selfCopy[13];
      selfCopy[13] = v4;

      v3 = selfCopy[13];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)_setShouldInvalidateCollectionViewContentSize:(BOOL)size
{
  if (size)
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