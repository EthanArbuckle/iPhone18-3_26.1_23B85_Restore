@interface UICollectionViewData
- (BOOL)dataSourceMatchesCurrentCounts;
- (CGRect)_TEST_validLayoutRect;
- (_BYTE)indexPathForItemAtGlobalIndex:(_BYTE *)a1;
- (_BYTE)validatedIndexPathForItemAtGlobalIndex:(_BYTE *)a1;
- (double)collectionViewContentRect;
- (double)rectForItemAtIndexPath:(uint64_t)a1;
- (id).cxx_construct;
- (id)_layoutAttributesForElementsInRect:(int)a3 cellsOnly:(int)a4 validateIfNeeded:(double)a5 includeIndelibleElements:(double)a6;
- (id)_layoutAttributesForElementsInRectForMapping:(double)a3;
- (id)dataSourceCountsDescription;
- (id)descriptionIncludingPointer:(uint64_t)a1;
- (id)existingSupplementaryLayoutAttributes;
- (id)existingSupplementaryLayoutAttributesInSection:(uint64_t)a1;
- (id)knownDecorationElementKinds;
- (id)knownSupplementaryElementKinds;
- (id)layoutAttributesForCellsInRect:(double)a3 validateLayout:(double)a4;
- (id)layoutAttributesForDecorationViewOfKind:(void *)a3 atIndexPath:;
- (id)layoutAttributesForElementsInRect:(double)a3;
- (id)layoutAttributesForGlobalItemIndex:(_BYTE *)a1;
- (id)layoutAttributesForItemAtIndexPath:(uint64_t)a1;
- (id)layoutAttributesForSupplementaryElementOfKind:(void *)a3 atIndexPath:;
- (uint64_t)_existingNumberOfItemsInSection:(uint64_t)result;
- (uint64_t)_isIndexPathValid:(int)a3 validateItemCounts:;
- (uint64_t)_prepareToLoadData;
- (uint64_t)_shouldUseReorderingLayoutAttributesForItemAtIndexPath:(uint64_t)a1;
- (uint64_t)_validateContentSize;
- (uint64_t)finalizeCollectionViewUpdates;
- (uint64_t)globalIndexForItemAtIndexPath:(uint64_t)result;
- (uint64_t)initWithCollectionView:(void *)a3 layout:;
- (uint64_t)invalidateDecorationIndexPaths:(uint64_t)result;
- (uint64_t)invalidateSupplementaryIndexPaths:(uint64_t)result;
- (uint64_t)numberOfItems;
- (uint64_t)numberOfItemsBeforeSection:(uint64_t)result;
- (uint64_t)numberOfItemsInSection:(uint64_t)result;
- (uint64_t)numberOfSections;
- (uint64_t)validateLayoutInRectImmediatelyValidatingContentSizeIgnoringSpecificInvalidations:(CGFloat)a3;
- (uint64_t)validatedGlobalIndexForItemAtIndexPath:(uint64_t)result;
- (void)_attributesMapDidPageInAttributes:(unint64_t)a3 globalItemIndex:(__n128)a4;
- (void)_cachedLayoutAttributesForGlobalItemIndex:(void *)a1;
- (void)_setCachedLayoutAttributes:(unint64_t)a3 forGlobalItemIndex:;
- (void)_setLayoutAttributes:(int64_t)a3 atGlobalItemIndex:;
- (void)_updateItemCounts;
- (void)invalidate:(uint64_t)a1;
- (void)invalidateItemsAtIndexPaths:(uint64_t)a1;
- (void)validateDecorationViews;
- (void)validateItems;
- (void)validateLayoutInRect:(CGFloat)a3;
- (void)validateSupplementaryViews;
@end

@implementation UICollectionViewData

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 40) = 1065353216;
  return self;
}

- (void)_updateItemCounts
{
  if (a1)
  {
    std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::clear(a1 + 128);
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v23 = [WeakRetained _dataSourceProxy];

    v3 = objc_loadWeakRetained((a1 + 8));
    if ([v3 _dataSourceImplementsNumberOfSections])
    {
      v4 = objc_loadWeakRetained((a1 + 8));
      v5 = [v23 numberOfSectionsInCollectionView:v4];

      v6 = v5 & ~(v5 >> 63);
    }

    else
    {
      v6 = 1;
    }

    v7 = (a1 + 104);
    *(a1 + 112) = *(a1 + 104);
    std::vector<long>::reserve((a1 + 104), v6);
    if (v6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = objc_loadWeakRetained((a1 + 8));
        v11 = [v23 collectionView:v10 numberOfItemsInSection:v8];

        v12 = v11 & ~(v11 >> 63);
        v14 = *(a1 + 112);
        v13 = *(a1 + 120);
        if (v14 >= v13)
        {
          v16 = *v7;
          v17 = v14 - *v7;
          v18 = v17 >> 3;
          v19 = (v17 >> 3) + 1;
          if (v19 >> 61)
          {
            std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
          }

          v20 = v13 - v16;
          if (v20 >> 2 > v19)
          {
            v19 = v20 >> 2;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1 + 104, v21);
          }

          *(8 * v18) = v12;
          v15 = 8 * v18 + 8;
          memcpy(0, v16, v17);
          v22 = *(a1 + 104);
          *(a1 + 104) = 0;
          *(a1 + 112) = v15;
          *(a1 + 120) = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v14 = v12;
          v15 = (v14 + 1);
        }

        *(a1 + 112) = v15;
        v9 += v12;
        ++v8;
      }

      while (v6 != v8);
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 168) = v9;
    *(a1 + 96) |= 2u;
    *(a1 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (uint64_t)numberOfSections
{
  if (result)
  {
    v1 = result;
    if ((*(result + 96) & 2) == 0)
    {
      [(UICollectionViewData *)result _updateItemCounts];
    }

    return (*(v1 + 112) - *(v1 + 104)) >> 3;
  }

  return result;
}

- (uint64_t)_prepareToLoadData
{
  if (result)
  {
    v1 = result;
    result = dyld_program_sdk_at_least();
    v2 = *(v1 + 96);
    if (!result || (*(v1 + 96) & 4) == 0)
    {
      if ((*(v1 + 96) & 8) == 0)
      {
        if (os_variant_has_internal_diagnostics())
        {
          if ((*(v1 + 96) & 0x10) != 0)
          {
            v3 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "trying to load collection view layout data when layout is locked", buf, 2u);
            }
          }
        }

        else if ((*(v1 + 96) & 0x10) != 0)
        {
          v4 = *(__UILogGetCategoryCachedImpl("Assert", &[UICollectionViewData _prepareToLoadData]::__s_category) + 8);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            *v5 = 0;
            _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "trying to load collection view layout data when layout is locked", v5, 2u);
          }
        }

        *(v1 + 96) |= 4u;
        [*(v1 + 16) _prepareLayout];
        v2 = *(v1 + 96) & 0xF3 | 8;
        *(v1 + 96) = v2;
      }

      if ((v2 & 2) == 0)
      {
        [(UICollectionViewData *)v1 _updateItemCounts];
      }

      return [(UICollectionViewData *)v1 _validateContentSize];
    }
  }

  return result;
}

- (uint64_t)_validateContentSize
{
  if (result)
  {
    v1 = result;
    if ((*(result + 96) & 1) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        if ((*(v1 + 96) & 0x10) != 0)
        {
          v4 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "trying to load collection view layout data when layout is locked", buf, 2u);
          }
        }
      }

      else if ((*(v1 + 96) & 0x10) != 0)
      {
        v5 = *(__UILogGetCategoryCachedImpl("Assert", &[UICollectionViewData _validateContentSize]::__s_category) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *v6 = 0;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "trying to load collection view layout data when layout is locked", v6, 2u);
        }
      }

      result = [*(v1 + 16) collectionViewContentSize];
      *(v1 + 80) = v2;
      *(v1 + 88) = v3;
      *(v1 + 96) |= 1u;
    }
  }

  return result;
}

- (double)collectionViewContentRect
{
  if (!a1)
  {
    return 0.0;
  }

  [(UICollectionViewData *)a1 _prepareToLoadData];
  return *MEMORY[0x1E695EFF8];
}

- (uint64_t)finalizeCollectionViewUpdates
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 152);
    v3 = *(result + 184);
    if (v3 <= 0x64)
    {
      v3 = 100;
    }

    if (v2 > v3 && v2 / v3 >= 2)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICollectionView", &[UICollectionViewData finalizeCollectionViewUpdates]::__s_category);
      if (*CategoryCachedImpl)
      {
        v10 = v2;
        v5 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          WeakRetained = objc_loadWeakRetained((v1 + 8));
          v7 = *(v1 + 184);
          v8 = WeakRetained;
          [v8 _currentUpdate];
          *buf = 134218754;
          v12 = v8;
          v13 = 2048;
          v14 = v7;
          v15 = 2048;
          v16 = v10;
          v18 = v17 = 2112;
          v9 = v18;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "finalizeCollectionViewUpdates: cv == %p; UICollectionViewData clearing caches for large update. Cache size changed from %lu to %lu. Update: %@", buf, 0x2Au);
        }
      }

      [(_UICollectionViewDataAttributesMap *)*(v1 + 176) invalidate];
      std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::clear(v1 + 128);
      [*(v1 + 32) removeAllObjects];
      return [*(v1 + 40) removeAllObjects];
    }
  }

  return result;
}

- (id)knownSupplementaryElementKinds
{
  v1 = a1;
  if (a1)
  {
    v2 = MEMORY[0x1E695DFD8];
    v3 = [a1[4] allKeys];
    v4 = [v2 setWithArray:v3];

    if (v4)
    {
      v5 = [v1[5] allKeys];
      [v4 setByAddingObjectsFromArray:v5];
    }

    else
    {
      v6 = MEMORY[0x1E695DFD8];
      v5 = [v1[5] allKeys];
      [v6 setWithArray:v5];
    }
    v1 = ;
  }

  return v1;
}

- (id)existingSupplementaryLayoutAttributes
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = [*(a1 + 32) objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = *v19;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = [*(*(&v18 + 1) + 8 * i) allValues];
          [v2 addObjectsFromArray:v7];
        }

        v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v4);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [*(a1 + 40) objectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v14 + 1) + 8 * j) allValues];
          [v2 addObjectsFromArray:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)validateSupplementaryViews
{
  if (a1)
  {
    if ((*(a1 + 96) & 0x10) == 0)
    {
      v2 = *(a1 + 48);
      v3 = *(a1 + 48);
      *(a1 + 48) = 0;

      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __50__UICollectionViewData_validateSupplementaryViews__block_invoke;
      v4[3] = &unk_1E70FFE00;
      v4[4] = a1;
      [v2 enumerateKeysAndObjectsUsingBlock:v4];
    }
  }
}

void __50__UICollectionViewData_validateSupplementaryViews__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:a2];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v6 removeObjectForKey:{v11, v13}];
        v12 = [(UICollectionViewData *)*(a1 + 32) layoutAttributesForSupplementaryElementOfKind:a2 atIndexPath:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void __37__UICollectionViewData_validateItems__block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = [(UICollectionViewData *)*(a1 + 32) _cachedLayoutAttributesForGlobalItemIndex:a2];

  if (!v4)
  {
    v6 = [(UICollectionViewData *)*(a1 + 32) indexPathForItemAtGlobalIndex:a2];
    v5 = [*(*(a1 + 32) + 16) layoutAttributesForItemAtIndexPath:?];
    [(UICollectionViewData *)*(a1 + 32) _setLayoutAttributes:v5 atGlobalItemIndex:a2];
  }
}

void __47__UICollectionViewData_validateDecorationViews__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:a2];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v6 removeObjectForKey:{v11, v13}];
        v12 = [(UICollectionViewData *)*(a1 + 32) layoutAttributesForDecorationViewOfKind:a2 atIndexPath:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)validateDecorationViews
{
  if (a1)
  {
    if ((*(a1 + 96) & 0x10) == 0)
    {
      v2 = *(a1 + 56);
      v3 = *(a1 + 56);
      *(a1 + 56) = 0;

      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __47__UICollectionViewData_validateDecorationViews__block_invoke;
      v4[3] = &unk_1E70FFE00;
      v4[4] = a1;
      [v2 enumerateKeysAndObjectsUsingBlock:v4];
    }
  }
}

- (void)validateItems
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 96) & 0x10) == 0)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;

    if ((*(a1 + 96) & 8) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        log = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
        {
          WeakRetained = objc_loadWeakRetained((a1 + 8));
          *buf = 138412546;
          v11 = WeakRetained;
          v12 = 2112;
          v13 = v2;
          _os_log_fault_impl(&dword_188A29000, log, OS_LOG_TYPE_FAULT, "UICollectionView internal error: layoutIsPrepared flag was unexpectedly reset after validating layout. Re-preparing layout before validating individually invalidated items. Collection view: %@; invalidated indexes: %@", buf, 0x16u);
        }
      }

      else
      {
        v4 = *(__UILogGetCategoryCachedImpl("Assert", &[UICollectionViewData validateItems]::__s_category) + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v5 = v4;
          v6 = objc_loadWeakRetained((a1 + 8));
          *buf = 138412546;
          v11 = v6;
          v12 = 2112;
          v13 = v2;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "UICollectionView internal error: layoutIsPrepared flag was unexpectedly reset after validating layout. Re-preparing layout before validating individually invalidated items. Collection view: %@; invalidated indexes: %@", buf, 0x16u);
        }
      }

      [(UICollectionViewData *)a1 _prepareToLoadData];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__UICollectionViewData_validateItems__block_invoke;
    v9[3] = &unk_1E70F4548;
    v9[4] = a1;
    [(_UIFastIndexSet *)v2 enumerateIndexesUsingBlock:v9];
  }
}

- (uint64_t)initWithCollectionView:(void *)a3 layout:
{
  if (!a1)
  {
    return 0;
  }

  v14.receiver = a1;
  v14.super_class = UICollectionViewData;
  v5 = objc_msgSendSuper2(&v14, sel_init);
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(v5 + 1, a2);
    objc_storeStrong((v6 + 16), a3);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = *(v6 + 32);
    *(v6 + 32) = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = *(v6 + 40);
    *(v6 + 40) = v9;

    *(v6 + 64) = 0x7FFFFFFFFFFFFFFFLL;
    v11 = [[_UICollectionViewDataAttributesMap alloc] initWithCollectionViewData:v6];
    v12 = *(v6 + 176);
    *(v6 + 176) = v11;
  }

  return v6;
}

- (id)_layoutAttributesForElementsInRectForMapping:(double)a3
{
  if (a1)
  {
    v10 = a1;
    if (os_variant_has_internal_diagnostics())
    {
      if ((*(v10 + 96) & 0x10) != 0)
      {
        v12 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "trying to load collection view layout data when layout is locked", buf, 2u);
        }
      }
    }

    else if ((*(v10 + 96) & 0x10) != 0)
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &[UICollectionViewData _layoutAttributesForElementsInRectForMapping:]::__s_category) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "trying to load collection view layout data when layout is locked", v14, 2u);
      }
    }

    a1 = [*(v10 + 2) layoutAttributesForElementsInRect:{a2, a3, a4, a5}];
    v5 = vars8;
  }

  return a1;
}

- (void)_attributesMapDidPageInAttributes:(unint64_t)a3 globalItemIndex:(__n128)a4
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    v7 = [0 indexPath];
    v8 = 32;
LABEL_6:
    v15 = *(a1 + v8);
    v9 = [(_UILabelConfiguration *)a2 _content];
    v10 = v15;
    if (!v9)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:sel__attributesMapDidPageInAttributes_globalItemIndex_ object:a1 file:@"UICollectionViewData.mm" lineNumber:115 description:{@"%@ elementKind is nil. This probably means you created the UICollectionViewLayoutAttributes using +alloc/-init instead of one of the class constructors", a2}];

      v10 = v15;
    }

    v11 = [v10 objectForKey:v9];
    v12 = [v11 objectForKey:v7];
    if (!v12)
    {
      if (v11)
      {
        [v11 setObject:a2 forKey:v7];
      }

      else
      {
        v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{a2, v7, 0}];
        [v15 setObject:v11 forKey:v9];
      }
    }

    return;
  }

  v6 = *(a2 + 288);
  if ((v6 & 1) == 0)
  {
    v7 = [a2 indexPath];
    v8 = 40;
    if ((v6 & 2) == 0)
    {
      v8 = 32;
    }

    goto LABEL_6;
  }

  [(_UIMutableFastIndexSet *)*(a1 + 24) removeIndex:a3, a4];

  [(UICollectionViewData *)a1 _setCachedLayoutAttributes:a2 forGlobalItemIndex:a3];
}

- (void)_setCachedLayoutAttributes:(unint64_t)a3 forGlobalItemIndex:
{
  if (obj)
  {
    v3 = a1[17];
    if (!*&v3)
    {
      goto LABEL_22;
    }

    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = a3;
      if (*&v3 <= a3)
      {
        v5 = a3 % *&v3;
      }
    }

    else
    {
      v5 = (*&v3 - 1) & a3;
    }

    v7 = *(*&a1[16] + 8 * v5);
    if (!v7 || (v8 = *v7) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v9 = v8[1];
      if (v9 == a3)
      {
        if (v8[2] == a3)
        {
          objc_storeStrong(v8 + 3, obj);
          return;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v9 >= *&v3)
          {
            v9 %= *&v3;
          }
        }

        else
        {
          v9 &= *&v3 - 1;
        }

        if (v9 != v5)
        {
          goto LABEL_22;
        }
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_22;
      }
    }
  }

  v6 = a1 + 16;

  std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::__erase_unique<long>(v6, a3);
}

- (void)invalidateItemsAtIndexPaths:(uint64_t)a1
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 96) & 0x10) == 0)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v3 = a2;
    v4 = [v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v4)
    {
      v5 = *v33;
      do
      {
        v6 = 0;
        do
        {
          if (*v33 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v32 + 1) + 8 * v6);
          v36 = 0;
          v37 = 0;
          [v7 ui_getSectionIndex:&v37 itemIndex:&v36];
          v8 = [(UICollectionViewData *)a1 numberOfItemsBeforeSection:v37];
          v9 = v36 + v8;
          v10 = *(a1 + 168);
          if (v36 + v8 >= v10)
          {
            v30 = [MEMORY[0x1E696AAA8] currentHandler];
            [v30 handleFailureInMethod:sel_invalidateItemsAtIndexPaths_ object:a1 file:@"UICollectionViewData.mm" lineNumber:151 description:{@"attempting to invalidate an item at an invalid indexPath: %@ globalIndex: %ld numItems: %ld", v7, v9, v10}];
          }

          if (dyld_program_sdk_at_least())
          {
            v12 = *(a1 + 24);
            if (v12)
            {
              [(_UIMutableFastIndexSet *)v12 addIndex:v9, v11];
            }

            else
            {
              v26 = [(_UIFastIndexSet *)[_UIMutableFastIndexSet alloc] initWithIndex:v9];
              v27 = *(a1 + 24);
              *(a1 + 24) = v26;
            }

            std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::__erase_unique<long>((a1 + 128), v9);
          }

          else
          {
            v13 = [(UICollectionViewData *)a1 _cachedLayoutAttributesForGlobalItemIndex:v9];
            v14 = v13;
            if (v13)
            {
              [v13 frame];
              v19 = *(a1 + 176);
              if (v19)
              {
                v20 = v19[6];
                v21 = v19[7];
                v22 = v19[8];
                v23 = v19[9];
              }

              else
              {
                v21 = 0;
                v22 = 0;
                v23 = 0;
                v20 = 0;
              }

              if (CGRectIntersectsRect(*&v15, *&v20))
              {
                v25 = *(a1 + 24);
                if (v25)
                {
                  [(_UIMutableFastIndexSet *)v25 addIndex:v9, v24];
                }

                else
                {
                  v28 = [(_UIFastIndexSet *)[_UIMutableFastIndexSet alloc] initWithIndex:v9];
                  v29 = *(a1 + 24);
                  *(a1 + 24) = v28;
                }
              }

              std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::__erase_unique<long>((a1 + 128), v9);
            }
          }

          ++v6;
        }

        while (v4 != v6);
        v31 = [v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
        v4 = v31;
      }

      while (v31);
    }
  }
}

- (uint64_t)globalIndexForItemAtIndexPath:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v4 = 0;
    v5 = 0;
    [a2 ui_getSectionIndex:&v5 itemIndex:&v4];
    v3 = [(UICollectionViewData *)v2 numberOfItemsBeforeSection:v5];
    return v4 + v3;
  }

  return result;
}

- (void)_cachedLayoutAttributesForGlobalItemIndex:(void *)a1
{
  if (a1)
  {
    a1 = std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::find<long>(a1 + 16, a2);
    if (a1)
    {
      a1 = a1[3];
    }

    v2 = vars8;
  }

  return a1;
}

- (uint64_t)invalidateSupplementaryIndexPaths:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if ((*(result + 96) & 0x10) == 0)
    {
      result = [a2 count];
      if (result)
      {
        if (!*(v2 + 48))
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v5 = *(v2 + 48);
          *(v2 + 48) = v4;
        }

        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __58__UICollectionViewData_invalidateSupplementaryIndexPaths___block_invoke;
        v6[3] = &unk_1E70FFDD8;
        v6[4] = v2;
        return [a2 enumerateKeysAndObjectsUsingBlock:v6];
      }
    }
  }

  return result;
}

void __58__UICollectionViewData_invalidateSupplementaryIndexPaths___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:a2];
  v8 = v6;
  if (v6)
  {
    [v6 addObjectsFromArray:a3];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFA8] setWithArray:a3];
    [*(*(a1 + 32) + 48) setObject:v7 forKeyedSubscript:a2];
  }
}

- (uint64_t)invalidateDecorationIndexPaths:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if ((*(result + 96) & 0x10) == 0)
    {
      result = [a2 count];
      if (result)
      {
        if (!*(v2 + 56))
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v5 = *(v2 + 56);
          *(v2 + 56) = v4;
        }

        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __55__UICollectionViewData_invalidateDecorationIndexPaths___block_invoke;
        v6[3] = &unk_1E70FFDD8;
        v6[4] = v2;
        return [a2 enumerateKeysAndObjectsUsingBlock:v6];
      }
    }
  }

  return result;
}

void __55__UICollectionViewData_invalidateDecorationIndexPaths___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:a2];
  v8 = v6;
  if (v6)
  {
    [v6 addObjectsFromArray:a3];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFA8] setWithArray:a3];
    [*(*(a1 + 32) + 56) setObject:v7 forKeyedSubscript:a2];
  }
}

- (_BYTE)indexPathForItemAtGlobalIndex:(_BYTE *)a1
{
  if (a1)
  {
    v3 = a1;
    if ((a1[96] & 2) == 0)
    {
      [(UICollectionViewData *)a1 _updateItemCounts];
    }

    v4 = *(v3 + 104);
    v5 = (*(v3 + 112) - v4) >> 3;
    if (v5 < 1)
    {
LABEL_8:
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      if ((*(v3 + 96) & 2) == 0)
      {
        [(UICollectionViewData *)v3 _updateItemCounts];
      }

      [v11 handleFailureInMethod:sel_indexPathForItemAtGlobalIndex_ object:v3 file:@"UICollectionViewData.mm" lineNumber:609 description:{@"request for index path for global index %ld when there are only %ld items in the collection view", a2, *(v3 + 168)}];

      a1 = 0;
    }

    else
    {
      v6 = 0;
      v7 = a2;
      while (1)
      {
        v8 = *(v4 + 8 * v6);
        v9 = __OFSUB__(v7, v8);
        v10 = v7 - v8;
        if (v10 < 0 != v9)
        {
          break;
        }

        ++v6;
        v7 = v10;
        if (v5 == v6)
        {
          goto LABEL_8;
        }
      }

      a1 = [MEMORY[0x1E696AC88] indexPathForRow:? inSection:?];
    }
  }

  return a1;
}

- (void)_setLayoutAttributes:(int64_t)a3 atGlobalItemIndex:
{
  if (a1 && *(a1 + 168) > a3)
  {
    if (a2)
    {
      [(_UICollectionViewDataAttributesMap *)*(a1 + 176) pageInLayoutAttributes:a2 forGlobalItemIndex:a3];
      v6 = [a2 copy];
      [(UICollectionViewData *)a1 _setCachedLayoutAttributes:v6 forGlobalItemIndex:a3];

      v8 = *(a1 + 24);

      [(_UIMutableFastIndexSet *)v8 removeIndex:a3, v7];
    }

    else
    {
      v9 = (a1 + 128);

      std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::__erase_unique<long>(v9, a3);
    }
  }
}

- (id)layoutAttributesForSupplementaryElementOfKind:(void *)a3 atIndexPath:
{
  if (a1)
  {
    v6 = [a3 section];
    v7 = *(a1 + 112) - *(a1 + 104);
    if (v6 >= v7 >> 3)
    {
      v8 = v6;
      if ([a3 item] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = v7 >> 3;
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        [v17 handleFailureInMethod:sel_layoutAttributesForSupplementaryElementOfKind_atIndexPath_ object:a1 file:@"UICollectionViewData.mm" lineNumber:981 description:{@"request for layout attributes for supplementary view %@ in section %ld when there are only %ld sections in the collection view", a2, v8, v16}];
      }
    }

    v9 = [*(a1 + 32) objectForKey:a2];
    v10 = [v9 objectForKey:a3];
    if (!v10)
    {
      if ((*(a1 + 96) & 0x10) != 0 || ([*(a1 + 16) layoutAttributesForSupplementaryViewOfKind:a2 atIndexPath:a3], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v10 = 0;
      }

      else
      {
        v12 = v11;
        if (!v9)
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [*(a1 + 32) setObject:? forKey:?];
        }

        [v9 setObject:v12 forKey:a3];
        v10 = v12;
      }
    }

    v13 = dyld_program_sdk_at_least();
    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    if ((v14 & 1) == 0 && (*(a1 + 96) & 0x10) == 0)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:sel_layoutAttributesForSupplementaryElementOfKind_atIndexPath_ object:a1 file:@"UICollectionViewData.mm" lineNumber:997 description:{@"no UICollectionViewLayoutAttributes instance for -layoutAttributesForSupplementaryElementOfKind: %@ at path %@", a2, a3}];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)layoutAttributesForDecorationViewOfKind:(void *)a3 atIndexPath:
{
  if (a1)
  {
    v6 = *(a1 + 112) - *(a1 + 104);
    v7 = [a3 section];
    if (v7 >= v6 >> 3)
    {
      v8 = v7;
      if ([a3 item] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v6 >> 3;
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:sel_layoutAttributesForDecorationViewOfKind_atIndexPath_ object:a1 file:@"UICollectionViewData.mm" lineNumber:1006 description:{@"request for layout attributes for decoration view of kind %@ in section %ld when there are only %ld sections in the collection view", a2, v8, v12}];
      }
    }

    v9 = [*(a1 + 40) objectForKey:a2];
    v10 = [v9 objectForKey:a3];
    if (!v10)
    {
      if ((*(a1 + 96) & 0x10) != 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = [*(a1 + 16) layoutAttributesForDecorationViewOfKind:a2 atIndexPath:a3];
        if (v10)
        {
          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [*(a1 + 40) setObject:? forKey:?];
          }

          [v9 setObject:v10 forKey:a3];
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)invalidate:(uint64_t)a1
{
  if (a1 && (*(a1 + 96) & 0x10) == 0)
  {
    if ((a2 & 1) == 0)
    {
      *(a1 + 96) &= 0xEDu;
    }

    [(_UICollectionViewDataAttributesMap *)*(a1 + 176) invalidate];
    *(a1 + 96) &= 0xF6u;
    [*(a1 + 32) removeAllObjects];
    [*(a1 + 40) removeAllObjects];
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;

    v4 = *(a1 + 48);
    *(a1 + 48) = 0;

    v5 = *(a1 + 56);
    *(a1 + 56) = 0;

    std::__hash_table<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::__unordered_map_hasher<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>>>::clear(a1 + 128);
  }
}

- (void)validateLayoutInRect:(CGFloat)a3
{
  if (a1)
  {
    v10 = *(a1 + 96);
    if ((v10 & 8) != 0)
    {
      if ([(_UIFastIndexSet *)*(a1 + 24) count]|| *(a1 + 48))
      {
        v11 = 0;
      }

      else
      {
        v11 = 8 * (*(a1 + 56) == 0);
      }

      *(a1 + 96) = v11 | v10 & 0xF7;
    }

    [(UICollectionViewData *)a1 _prepareToLoadData];
    if (*(a1 + 48))
    {
      [(UICollectionViewData *)a1 validateSupplementaryViews];
    }

    if (*(a1 + 56))
    {
      [(UICollectionViewData *)a1 validateDecorationViews];
    }

    v12 = *(a1 + 176);
    if (v12)
    {
      [(_UICollectionViewDataAttributesMap *)v12 _validateLayoutInRect:a2, a3, a4, a5];
    }

    if ([(_UIFastIndexSet *)*(a1 + 24) count])
    {

      [(UICollectionViewData *)a1 validateItems];
    }
  }
}

- (uint64_t)validateLayoutInRectImmediatelyValidatingContentSizeIgnoringSpecificInvalidations:(CGFloat)a3
{
  if (result)
  {
    v9 = result;
    v10 = *(result + 24);
    *(result + 24) = 0;

    v11 = *(v9 + 48);
    *(v9 + 48) = 0;

    v12 = *(v9 + 56);
    *(v9 + 56) = 0;

    [(UICollectionViewData *)v9 validateLayoutInRect:a2, a3, a4, a5];

    return [(UICollectionViewData *)v9 _validateContentSize];
  }

  return result;
}

- (uint64_t)numberOfItems
{
  if (result)
  {
    v1 = result;
    if ((*(result + 96) & 2) == 0)
    {
      [(UICollectionViewData *)result _updateItemCounts];
    }

    return *(v1 + 168);
  }

  return result;
}

- (uint64_t)_existingNumberOfItemsInSection:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 104);
    v5 = (*(result + 112) - v4) >> 3;
    if (v5 <= a2)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel__existingNumberOfItemsInSection_ object:v3 file:@"UICollectionViewData.mm" lineNumber:497 description:{@"request for number of items in section %ld when there are only %ld sections in the collection view", a2, v5}];

      v4 = *(v3 + 104);
    }

    return *(v4 + 8 * a2);
  }

  return result;
}

- (uint64_t)numberOfItemsInSection:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ((*(result + 96) & 2) == 0)
    {
      [(UICollectionViewData *)result _updateItemCounts];
    }

    return [(UICollectionViewData *)v3 _existingNumberOfItemsInSection:a2];
  }

  return result;
}

- (uint64_t)numberOfItemsBeforeSection:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ((*(result + 96) & 2) == 0)
    {
      [(UICollectionViewData *)result _updateItemCounts];
    }

    v4 = (v3[14] - v3[13]) >> 3;
    if (v4 < a2)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel_numberOfItemsBeforeSection_ object:v3 file:@"UICollectionViewData.mm" lineNumber:511 description:{@"request for number of items before section %ld when there are only %ld sections in the collection view", a2, v4}];
    }

    v5 = v3[8];
    if (v5 <= a2)
    {
      result = v3[9];
      v6 = v5;
    }

    else
    {
      result = 0;
      v6 = 0;
    }

    v7 = a2 - v6;
    if (a2 > v6)
    {
      v8 = (v3[13] + 8 * v6);
      do
      {
        v9 = *v8++;
        result += v9;
        --v7;
      }

      while (v7);
    }

    v3[8] = a2;
    v3[9] = result;
  }

  return result;
}

- (uint64_t)_isIndexPathValid:(int)a3 validateItemCounts:
{
  if (result)
  {
    v4 = result;
    if (a3 && (*(result + 96) & 2) == 0)
    {
      [(UICollectionViewData *)result _updateItemCounts];
    }

    if ([a2 length] >= 2)
    {
      v5 = *(v4 + 112) - *(v4 + 104);
      v7 = 0;
      v8 = 0;
      [a2 ui_getSectionIndex:&v8 itemIndex:&v7];
      result = 0;
      if (v8 < v5 >> 3 && (v8 & 0x8000000000000000) == 0)
      {
        return *(*(v4 + 104) + 8 * v8) > v7 && v7 >= 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)validatedGlobalIndexForItemAtIndexPath:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ([(UICollectionViewData *)result _isIndexPathValid:a2 validateItemCounts:1])
    {
      v5 = 0;
      v6 = 0;
      [a2 ui_getSectionIndex:&v6 itemIndex:&v5];
      v4 = [(UICollectionViewData *)v3 numberOfItemsBeforeSection:v6];
      return v5 + v4;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (_BYTE)validatedIndexPathForItemAtGlobalIndex:(_BYTE *)a1
{
  if (a1)
  {
    v4 = a1;
    if ((a1[96] & 2) == 0)
    {
      [(UICollectionViewData *)a1 _updateItemCounts];
    }

    a1 = 0;
    if ((a2 & 0x8000000000000000) == 0 && *(v4 + 21) > a2)
    {
      a1 = [(UICollectionViewData *)v4 indexPathForItemAtGlobalIndex:a2];
    }

    v2 = vars8;
  }

  return a1;
}

- (BOOL)dataSourceMatchesCurrentCounts
{
  if (!a1)
  {
    return 0;
  }

  v2 = 0;
  if ((*(a1 + 96) & 2) != 0)
  {
    v4 = *(a1 + 104);
    v3 = *(a1 + 112);
    if (v3 != v4 && *(a1 + 168) != 0)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v7 = [WeakRetained _dataSourceProxy];

      if (v7 && ((v8 = objc_loadWeakRetained((a1 + 8)), ![v8 _dataSourceImplementsNumberOfSections]) ? (v11 = 1) : (v9 = objc_loadWeakRetained((a1 + 8)), v10 = objc_msgSend(v7, "numberOfSectionsInCollectionView:", v9), v9, v11 = v10 & ~(v10 >> 63)), v12 = (v3 - v4) >> 3, v8, v11 == v12))
      {
        v13 = 0;
        v14 = v12 - 1;
        do
        {
          v15 = objc_loadWeakRetained((a1 + 8));
          v16 = [v7 collectionView:v15 numberOfItemsInSection:v13];

          v17 = *(*(a1 + 104) + 8 * v13);
          v2 = v16 == v17;
        }

        while (v16 == v17 && v14 != v13++);
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2;
}

- (id)dataSourceCountsDescription
{
  if (a1)
  {
    a1 = [(UICollectionViewData *)a1 descriptionIncludingPointer:?];
    v1 = vars8;
  }

  return a1;
}

- (id)descriptionIncludingPointer:(uint64_t)a1
{
  if (a1)
  {
    v3 = MEMORY[0x1E696AD60];
    if (a2)
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = [v3 stringWithFormat:@"<%@ - %p:", v5, a1];

      v7 = v6;
    }

    else
    {
      v7 = [MEMORY[0x1E696AD60] stringWithString:@"["];
    }

    v8 = *(a1 + 104);
    v9 = *(a1 + 112);
    if (v8 != v9)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *v8;
        if (v10)
        {
          [v7 appendString:{@", "}];
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
        [v7 appendFormat:@"(%@:%@)", v13, v14];

        v11 += v12;
        ++v8;
        --v10;
      }

      while (v8 != v9);
    }

    if (a2)
    {
      v15 = @">";
    }

    else
    {
      v15 = @"]";
    }

    [v7 appendString:v15];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)rectForItemAtIndexPath:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = [(UICollectionViewData *)a1 layoutAttributesForItemAtIndexPath:a2];
  [v2 frame];
  v4 = v3;

  return v4;
}

- (id)layoutAttributesForItemAtIndexPath:(uint64_t)a1
{
  if (!a1 || ([(UICollectionViewData *)a1 _prepareToLoadData], ![(UICollectionViewData *)a1 _isIndexPathValid:a2 validateItemCounts:0]))
  {
LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  if (!-[UICollectionViewData _shouldUseReorderingLayoutAttributesForItemAtIndexPath:](a1, a2) || (v4 = *(a1 + 16), WeakRetained = objc_loadWeakRetained((a1 + 8)), [WeakRetained _reorderingTargetPosition], objc_msgSend(v4, "_layoutAttributesForReorderedItemAtIndexPath:withTargetPosition:", a2), v6 = objc_claimAutoreleasedReturnValue(), WeakRetained, !v6))
  {
    v7 = *(a1 + 168);
    v15 = 0;
    v16 = 0;
    [a2 ui_getSectionIndex:&v16 itemIndex:&v15];
    v8 = [(UICollectionViewData *)a1 numberOfItemsBeforeSection:v16];
    v9 = v15 + v8;
    if (v15 + v8 >= v7)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:sel_layoutAttributesForItemAtIndexPath_ object:a1 file:@"UICollectionViewData.mm" lineNumber:704 description:{@"attempting to access layout attributes at invalid index path: %@ globalIndex: %ld numItems: %ld", a2, v9, v7}];
    }

    v6 = [(UICollectionViewData *)a1 _cachedLayoutAttributesForGlobalItemIndex:v9];
    if (!v6)
    {
      if ((*(a1 + 96) & 0x10) != 0)
      {
        v6 = 0;
      }

      else
      {
        v6 = [*(a1 + 16) layoutAttributesForItemAtIndexPath:a2];
        [(UICollectionViewData *)a1 _setLayoutAttributes:v6 atGlobalItemIndex:v9];
      }
    }

    v10 = dyld_program_sdk_at_least();
    v11 = v6 ? 1 : v10;
    if ((v11 & 1) == 0)
    {
      if ((*(a1 + 96) & 0x10) == 0)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:sel_layoutAttributesForItemAtIndexPath_ object:a1 file:@"UICollectionViewData.mm" lineNumber:715 description:{@"no UICollectionViewLayoutAttributes instance for -layoutAttributesForItemAtIndexPath: %@", a2}];
      }

      goto LABEL_17;
    }
  }

LABEL_18:

  return v6;
}

- (uint64_t)_shouldUseReorderingLayoutAttributesForItemAtIndexPath:(uint64_t)a1
{
  if (!a1 || (*(a1 + 96) & 0x10) != 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v4 = [WeakRetained _isReorderingItemAtIndexPath:a2 includingDragAndDrop:0];

  return v4;
}

- (id)layoutAttributesForGlobalItemIndex:(_BYTE *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [(UICollectionViewData *)a1 indexPathForItemAtGlobalIndex:a2];
    v2 = [(UICollectionViewData *)v2 layoutAttributesForItemAtIndexPath:v3];
  }

  return v2;
}

- (id)layoutAttributesForElementsInRect:(double)a3
{
  if (a1)
  {
    a1 = [(UICollectionViewData *)a1 _layoutAttributesForElementsInRect:1 cellsOnly:1 validateIfNeeded:a2 includeIndelibleElements:a3, a4, a5];
    v5 = vars8;
  }

  return a1;
}

- (id)_layoutAttributesForElementsInRect:(int)a3 cellsOnly:(int)a4 validateIfNeeded:(double)a5 includeIndelibleElements:(double)a6
{
  v85 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    height = a8;
    v9 = a7;
    y = a6;
    x = a5;
    v12 = 0;
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&a7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&a8 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      if ([*(a1 + 16) _hasOrthogonalScrollingSections])
      {
        v17 = [*(a1 + 16) _extendedAttributesQueryIncludingOrthogonalScrollingRegions:{x, y, v9, height}];
      }

      else
      {
        if (_UICollectionViewShouldEnlargeLayoutAttributesQueryForEstimatedSizes() && [*(a1 + 16) _estimatesSizes])
        {
          v87.origin.x = x;
          v87.origin.y = y;
          v87.size.width = v9;
          v87.size.height = height;
          Width = CGRectGetWidth(v87);
          v88.origin.x = x;
          v88.origin.y = y;
          v88.size.width = v9;
          v88.size.height = height;
          v19 = CGRectGetHeight(v88) * -0.1;
          v89.origin.x = x;
          v89.origin.y = y;
          v89.size.width = v9;
          v89.size.height = height;
          v90 = CGRectInset(v89, Width * -0.1, v19);
          x = v90.origin.x;
          y = v90.origin.y;
          v9 = v90.size.width;
          height = v90.size.height;
        }

        if (a3)
        {
          [(UICollectionViewData *)a1 validateLayoutInRect:y, v9, height];
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        [(UICollectionViewData *)a1 _prepareToLoadData];
        v92.origin.x = *MEMORY[0x1E695EFF8];
        v92.origin.y = *(MEMORY[0x1E695EFF8] + 8);
        v92.size.width = *(a1 + 80);
        v92.size.height = *(a1 + 88);
        v91.origin.x = x;
        v91.origin.y = y;
        v91.size.width = v9;
        v91.size.height = height;
        if (CGRectContainsRect(v91, v92))
        {
          [_UIFastIndexSet indexSetWithIndexesInRange:*(a1 + 168)];
        }

        else
        {
          [(_UICollectionViewDataAttributesMap *)*(a1 + 176) indexesOfItemsInRect:y, v9, height];
        }
        v21 = ;
        v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:-[_UIFastIndexSet count](v21)];
        v23 = isKindOfClass & 1;
        v24 = *(a1 + 168);
        v71 = MEMORY[0x1E69E9820];
        v72 = 3221225472;
        v73 = __93__UICollectionViewData__layoutAttributesFromMapForElementsInRect_cellsOnly_validateIfNeeded___block_invoke;
        v74 = &unk_1E70FFE50;
        v77 = v24;
        v78 = sel__layoutAttributesFromMapForElementsInRect_cellsOnly_validateIfNeeded_;
        v75 = a1;
        v79 = x;
        v80 = y;
        v81 = v9;
        v82 = height;
        v83 = isKindOfClass & 1;
        v17 = v22;
        v76 = v17;
        [(_UIFastIndexSet *)v21 enumerateIndexesUsingBlock:?];
        if (a2)
        {
          v25 = v17;
        }

        else
        {
          v26 = *(a1 + 32);
          v61 = MEMORY[0x1E69E9820];
          v62 = 3221225472;
          v63 = __93__UICollectionViewData__layoutAttributesFromMapForElementsInRect_cellsOnly_validateIfNeeded___block_invoke_2;
          v64 = &unk_1E70FFEA0;
          v66 = x;
          v67 = y;
          v68 = v9;
          v69 = height;
          v70 = isKindOfClass & 1;
          v27 = v17;
          v65 = v27;
          [v26 enumerateKeysAndObjectsUsingBlock:&v61];
          v28 = *(a1 + 40);
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __93__UICollectionViewData__layoutAttributesFromMapForElementsInRect_cellsOnly_validateIfNeeded___block_invoke_4;
          v54[3] = &unk_1E70FFEA0;
          v56 = x;
          v57 = y;
          v58 = v9;
          v59 = height;
          v60 = v23;
          v29 = v27;
          v55 = v29;
          [v28 enumerateKeysAndObjectsUsingBlock:v54];
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
            [v29 sortUsingComparator:&__block_literal_global_120];
          }

          v30 = v29;
        }
      }

      if (![v17 count])
      {
        v12 = v17;
LABEL_51:

        goto LABEL_52;
      }

      v71 = 0;
      v72 = &v71;
      v73 = 0x3032000000;
      v74 = __Block_byref_object_copy__40;
      v75 = __Block_byref_object_dispose__40;
      v76 = 0;
      if (a4)
      {
        v31 = [*(a1 + 16) _layoutAttributesForIndelibleElements];
        v32 = v31;
        if (v31 && [v31 count])
        {
          if (!*(v72 + 40))
          {
            v33 = [v17 mutableCopy];
            v34 = *(v72 + 40);
            *(v72 + 40) = v33;

            v35 = *(v72 + 40);
            v17 = v35;
          }

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v36 = v32;
          v37 = [v36 countByEnumeratingWithState:&v50 objects:v84 count:16];
          if (v37)
          {
            v38 = *v51;
            do
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v51 != v38)
                {
                  objc_enumerationMutation(v36);
                }

                v40 = *(*(&v50 + 1) + 8 * i);
                if (([*(v72 + 40) containsObject:v40] & 1) == 0)
                {
                  [*(v72 + 40) addObject:v40];
                }
              }

              v37 = [v36 countByEnumeratingWithState:&v50 objects:v84 count:16];
            }

            while (v37);
          }
        }
      }

      if ((*(a1 + 96) & 0x10) != 0)
      {
        v42 = 0;
        if (a2)
        {
          goto LABEL_45;
        }
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((a1 + 8));
        v42 = [WeakRetained _isReordering];

        if (a2)
        {
          goto LABEL_45;
        }
      }

      if (!v42)
      {
LABEL_50:
        v12 = v17;
        _Block_object_dispose(&v71, 8);

        goto LABEL_51;
      }

LABEL_45:
      if (!*(v72 + 40))
      {
        v43 = [v17 mutableCopy];
        v44 = *(v72 + 40);
        *(v72 + 40) = v43;

        v45 = *(v72 + 40);
        v17 = v45;
      }

      v61 = 0;
      v62 = &v61;
      v63 = 0x3032000000;
      v64 = __Block_byref_object_copy__40;
      v65 = __Block_byref_object_dispose__40;
      v66 = 0.0;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __111__UICollectionViewData__layoutAttributesForElementsInRect_cellsOnly_validateIfNeeded_includeIndelibleElements___block_invoke;
      v47[3] = &unk_1E70FFE28;
      v48 = v42;
      v47[4] = a1;
      v47[5] = &v71;
      v49 = a2;
      v47[6] = &v61;
      [v17 enumerateObjectsUsingBlock:v47];
      if (*(v62 + 40))
      {
        [*(v72 + 40) removeObjectsAtIndexes:?];
      }

      _Block_object_dispose(&v61, 8);

      goto LABEL_50;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_52:

  return v12;
}

void __111__UICollectionViewData__layoutAttributesForElementsInRect_cellsOnly_validateIfNeeded_includeIndelibleElements___block_invoke(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a2 && (a2[288] & 1) != 0)
  {
    if (*(a1 + 56) == 1)
    {
      v13 = [a2 indexPath];
      if ([(UICollectionViewData *)*(a1 + 32) _shouldUseReorderingLayoutAttributesForItemAtIndexPath:v13])
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 16);
        WeakRetained = objc_loadWeakRetained((v6 + 8));
        [WeakRetained _reorderingTargetPosition];
        v9 = [v7 _layoutAttributesForReorderedItemAtIndexPath:v13 withTargetPosition:?];

        if (v9)
        {
          [*(*(*(a1 + 40) + 8) + 40) replaceObjectAtIndex:a3 withObject:v9];
        }
      }
    }
  }

  else if (*(a1 + 57) == 1)
  {
    v5 = *(*(*(a1 + 48) + 8) + 40);
    if (v5)
    {

      [v5 addIndex:?];
    }

    else
    {
      v10 = [MEMORY[0x1E696AD50] indexSetWithIndex:a3];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }
}

void __93__UICollectionViewData__layoutAttributesFromMapForElementsInRect_cellsOnly_validateIfNeeded___block_invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"UICollectionViewData.mm" lineNumber:876 description:{@"attempting to access layout attributes at invalid index %ld numItems: %ld", a2, *(a1 + 48)}];
  }

  v12 = [(UICollectionViewData *)*(a1 + 32) _cachedLayoutAttributesForGlobalItemIndex:a2];
  if (v12)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    v7 = *(a1 + 88);
    [v12 frame];
    v16.origin.x = v8;
    v16.origin.y = v9;
    v16.size.width = v10;
    v16.size.height = v11;
    v15.origin.x = v4;
    v15.origin.y = v5;
    v15.size.width = v6;
    v15.size.height = v7;
    if (CGRectIntersectsRect(v15, v16) || *(a1 + 96) == 1)
    {
      [*(a1 + 40) addObject:v12];
    }
  }
}

void __93__UICollectionViewData__layoutAttributesFromMapForElementsInRect_cellsOnly_validateIfNeeded___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __93__UICollectionViewData__layoutAttributesFromMapForElementsInRect_cellsOnly_validateIfNeeded___block_invoke_3;
  v4[3] = &unk_1E70FFE78;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __93__UICollectionViewData__layoutAttributesFromMapForElementsInRect_cellsOnly_validateIfNeeded___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  [a3 frame];
  v17.origin.x = v9;
  v17.origin.y = v10;
  v17.size.width = v11;
  v17.size.height = v12;
  v16.origin.x = v5;
  v16.origin.y = v6;
  v16.size.width = v7;
  v16.size.height = v8;
  result = CGRectIntersectsRect(v16, v17);
  if ((result & 1) != 0 || *(a1 + 72) == 1)
  {
    v14 = *(a1 + 32);

    return [v14 addObject:a3];
  }

  return result;
}

void __93__UICollectionViewData__layoutAttributesFromMapForElementsInRect_cellsOnly_validateIfNeeded___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __93__UICollectionViewData__layoutAttributesFromMapForElementsInRect_cellsOnly_validateIfNeeded___block_invoke_5;
  v4[3] = &unk_1E70FFE78;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __93__UICollectionViewData__layoutAttributesFromMapForElementsInRect_cellsOnly_validateIfNeeded___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  [a3 frame];
  v17.origin.x = v9;
  v17.origin.y = v10;
  v17.size.width = v11;
  v17.size.height = v12;
  v16.origin.x = v5;
  v16.origin.y = v6;
  v16.size.width = v7;
  v16.size.height = v8;
  result = CGRectIntersectsRect(v16, v17);
  if ((result & 1) != 0 || *(a1 + 72) == 1)
  {
    v14 = *(a1 + 32);

    return [v14 addObject:a3];
  }

  return result;
}

uint64_t __93__UICollectionViewData__layoutAttributesFromMapForElementsInRect_cellsOnly_validateIfNeeded___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 zIndex];
  v6 = [a3 zIndex];
  if (v5 < v6)
  {
    return -1;
  }

  if (v6 < v5)
  {
    return 1;
  }

  v8 = [a2 indexPath];
  v9 = [a3 indexPath];
  v7 = [v8 compare:v9];

  return v7;
}

- (id)layoutAttributesForCellsInRect:(double)a3 validateLayout:(double)a4
{
  if (a1)
  {
    a1 = [(UICollectionViewData *)a1 _layoutAttributesForElementsInRect:a2 cellsOnly:0 validateIfNeeded:a3 includeIndelibleElements:a4, a5, a6];
    v6 = vars8;
  }

  return a1;
}

- (id)existingSupplementaryLayoutAttributesInSection:(uint64_t)a1
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = a1;
    obj = [*(a1 + 32) objectEnumerator];
    v5 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v5)
    {
      v28 = *v43;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v43 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v42 + 1) + 8 * i);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v8 = [v7 objectEnumerator];
          v9 = [v8 countByEnumeratingWithState:&v38 objects:v48 count:16];
          if (v9)
          {
            v10 = *v39;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v39 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v38 + 1) + 8 * j);
                v13 = [v12 indexPath];
                if ([v13 section] == a2 && objc_msgSend(v13, "length") >= 2)
                {
                  [v4 addObject:v12];
                }
              }

              v9 = [v8 countByEnumeratingWithState:&v38 objects:v48 count:16];
            }

            while (v9);
          }
        }

        v5 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v5);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = [*(v25 + 40) objectEnumerator];
    obja = v14;
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v15)
    {
      v29 = *v35;
      do
      {
        for (k = 0; k != v15; ++k)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(obja);
          }

          v17 = *(*(&v34 + 1) + 8 * k);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v18 = [v17 objectEnumerator];
          v19 = [v18 countByEnumeratingWithState:&v30 objects:v46 count:16];
          if (v19)
          {
            v20 = *v31;
            do
            {
              for (m = 0; m != v19; ++m)
              {
                if (*v31 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                v22 = *(*(&v30 + 1) + 8 * m);
                v23 = [v22 indexPath];
                if ([v23 section] == a2 && objc_msgSend(v23, "length") >= 2)
                {
                  [v4 addObject:v22];
                }
              }

              v19 = [v18 countByEnumeratingWithState:&v30 objects:v46 count:16];
            }

            while (v19);
          }
        }

        v14 = obja;
        v15 = [obja countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)knownDecorationElementKinds
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DFD8];
    v2 = [*(a1 + 40) allKeys];
    v3 = [v1 setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGRect)_TEST_validLayoutRect
{
  attributesMap = self->_attributesMap;
  if (attributesMap)
  {
    x = attributesMap->_validLayoutRect.origin.x;
    y = attributesMap->_validLayoutRect.origin.y;
    width = attributesMap->_validLayoutRect.size.width;
    height = attributesMap->_validLayoutRect.size.height;
  }

  else
  {
    y = 0.0;
    width = 0.0;
    height = 0.0;
    x = 0.0;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end