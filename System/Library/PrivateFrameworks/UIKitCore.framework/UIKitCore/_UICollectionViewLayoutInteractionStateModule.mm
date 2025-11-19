@interface _UICollectionViewLayoutInteractionStateModule
- (BOOL)_shouldAdjustLayoutToDrawTopSeparatorInSection:(uint64_t)a1;
- (_UICollectionViewLayoutInteractionStateModuleHost)host;
- (uint64_t)_itemIsSelectedOrHighlightedAndHasBackgroundFillForGroupingAtIndexPath:(void *)a3 cellGroupingPreference:(_BYTE *)a4 backgroundIsInset:;
- (uint64_t)enumerateSectionsAfterSectionIndex:(void *)a3 enumerator:;
- (uint64_t)itemAtIndexPathIsBeingReordered:(uint64_t)result;
- (uint64_t)itemAtIndexPathIsSelected:(uint64_t)a1;
- (uint64_t)selectionGroupingForItemAtIndexPath:(uint64_t)a1;
- (uint64_t)swipeActionsStyleForSwipedItemAtIndexPath:(uint64_t)a1;
- (void)_noteCellWillBeginProcessing:(void *)a3 atIndexPath:;
- (void)initWithHost:(void *)a1;
- (void)performPreferredAttributesProcessingBlock:(void *)a3 withLayoutAttributes:(void *)a4 forView:;
@end

@implementation _UICollectionViewLayoutInteractionStateModule

- (void)initWithHost:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:sel_initWithHost_ object:a1 file:@"_UICollectionViewLayoutInteractionStateModule.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"host"}];
    }

    v10.receiver = a1;
    v10.super_class = _UICollectionViewLayoutInteractionStateModule;
    v5 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeWeak(v5 + 3, v4);
      v6 = [objc_opt_class() invalidationContextClass];
      v7 = a1[2];
      a1[2] = v6;
    }
  }

  return a1;
}

- (void)performPreferredAttributesProcessingBlock:(void *)a3 withLayoutAttributes:(void *)a4 forView:
{
  v12 = a2;
  v7 = a4;
  if (a1)
  {
    v8 = a3;
    v9 = v8;
    if (v8)
    {
      v10 = v8[288] & 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v8 indexPath];

    if (v10)
    {
      [(_UICollectionViewLayoutInteractionStateModule *)a1 _noteCellWillBeginProcessing:v7 atIndexPath:v11];
      v12[2]();
      [*(a1 + 8) removeObjectForKey:v11];
    }

    else
    {
      v12[2]();
    }
  }
}

- (void)_noteCellWillBeginProcessing:(void *)a3 atIndexPath:
{
  v13 = a2;
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v7 = v13;
    if (v13)
    {
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel__noteCellWillBeginProcessing_atIndexPath_ object:a1 file:@"_UICollectionViewLayoutInteractionStateModule.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"cell"}];

      v7 = 0;
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:sel__noteCellWillBeginProcessing_atIndexPath_ object:a1 file:@"_UICollectionViewLayoutInteractionStateModule.m" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];

    v7 = v13;
LABEL_4:
    v8 = *(a1 + 8);
    if (v8)
    {
      [v8 setObject:v7 forKeyedSubscript:v6];
    }

    else
    {
      v9 = [MEMORY[0x1E695DF90] dictionaryWithObject:v7 forKey:v6];
      v10 = *(a1 + 8);
      *(a1 + 8) = v9;
    }
  }
}

- (uint64_t)_itemIsSelectedOrHighlightedAndHasBackgroundFillForGroupingAtIndexPath:(void *)a3 cellGroupingPreference:(_BYTE *)a4 backgroundIsInset:
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v9 = [WeakRetained collectionView];

  v10 = [v9 _selectionController];
  v11 = v10;
  if (!v9 || !v10)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICVGrouping", &_MergedGlobals_1402);
    if ((*CategoryCachedImpl & 1) == 0)
    {
      goto LABEL_8;
    }

    v13 = *(CategoryCachedImpl + 8);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    v35 = v7;
    v14 = "Fill state check: Cannot execute without a selection controller. indexPath: %@";
    goto LABEL_35;
  }

  if ([v9 _isReorderingItemAtIndexPath:v7])
  {
    v12 = __UILogGetCategoryCachedImpl("UICVGrouping", &qword_1ED4A3048);
    if ((*v12 & 1) == 0)
    {
      goto LABEL_8;
    }

    v13 = *(v12 + 8);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    v35 = v7;
    v14 = "Fill state check: Early return for reordered item. indexPath: %@";
LABEL_35:
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
LABEL_8:
    v16 = 0;
    goto LABEL_32;
  }

  if ([v11[1] containsObject:v7])
  {
    v17 = 1;
  }

  else
  {
    v17 = [v11[2] containsObject:v7];
  }

  v18 = v7;
  if (!v18)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:sel__cellForItemAtIndexPath_ object:a1 file:@"_UICollectionViewLayoutInteractionStateModule.m" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  v19 = [*(a1 + 8) objectForKeyedSubscript:v18];
  if (!v19)
  {
    v20 = objc_loadWeakRetained((a1 + 24));
    v21 = [v20 collectionView];
    v19 = [v21 cellForItemAtIndexPath:v18];
  }

  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a3 = [v19 _backgroundViewConfigurationGrouping];
    }
  }

  if (v17)
  {
    if (v19)
    {
      v22 = [v19 _layoutAttributes];
      v23 = [v19 _isStyledAsHeaderOrFooterFromLayoutAttributes:v22];

      if (v23)
      {
        v16 = 0;
      }

      else
      {
        v16 = [v19 _backgroundFillIsCustomized];
      }

      if (a4)
      {
        *a4 = [v19 _backgroundIsVerticallyInset];
      }

      v26 = __UILogGetCategoryCachedImpl("UICVGrouping", &qword_1ED4A3060);
      if (*v26)
      {
        v30 = *(v26 + 8);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = v30;
          v32 = NSStringFromBOOL();
          *buf = 138412546;
          v35 = v18;
          v36 = 2112;
          v37 = v32;
          _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "Fill state check: Returning live state at indexPath: %@. Has fill: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v25 = __UILogGetCategoryCachedImpl("UICVGrouping", &qword_1ED4A3058);
      if (*v25)
      {
        v33 = *(v25 + 8);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v35 = v18;
          _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "Fill state check: No visible cell at indexPath: %@, but is selected or highlighted in the selection controller. Has fill: YES", buf, 0xCu);
        }
      }

      v16 = 1;
    }
  }

  else
  {
    v24 = __UILogGetCategoryCachedImpl("UICVGrouping", &qword_1ED4A3050);
    if (*v24)
    {
      v29 = *(v24 + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v18;
        _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "Fill state check: Early return for unselected at indexPath: %@. Has fill: NO", buf, 0xCu);
      }
    }

    v16 = 0;
  }

LABEL_32:
  return v16;
}

- (uint64_t)selectionGroupingForItemAtIndexPath:(uint64_t)a1
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    v9 = 0;
    goto LABEL_11;
  }

  if (!v3)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:sel_selectionGroupingForItemAtIndexPath_ object:a1 file:@"_UICollectionViewLayoutInteractionStateModule.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v6 = [WeakRetained _interactionStateModule:a1 layoutSectionForIndex:{objc_msgSend(v4, "section")}];

  if (!v6)
  {
    goto LABEL_9;
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UICVGrouping", &qword_1ED4A3068);
  if (*CategoryCachedImpl)
  {
    v39 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v4;
      _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_ERROR, "Grouping check: Beginning at indexPath: %@", buf, 0xCu);
    }
  }

  v43 = 0;
  v42 = 0;
  v8 = [(_UICollectionViewLayoutInteractionStateModule *)a1 _itemIsSelectedOrHighlightedAndHasBackgroundFillForGroupingAtIndexPath:v4 cellGroupingPreference:&v43 backgroundIsInset:&v42];
  v9 = v43;
  if ((v8 & 1) != 0 || v43)
  {
    if (v43)
    {
      if (v43 >= 5)
      {
        v28 = MEMORY[0x1E695DF30];
        v29 = *MEMORY[0x1E695D940];
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown list cell grouping received: %ld", v43];
        v31 = [v28 exceptionWithName:v29 reason:v30 userInfo:0];
        v32 = v31;

        objc_exception_throw(v31);
      }

      v12 = __UILogGetCategoryCachedImpl("UICVGrouping", &qword_1ED4A3078);
      if ((*v12 & 1) == 0)
      {
        goto LABEL_10;
      }

      v13 = *(v12 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = off_1E712C490[v9 - 1];
        *buf = 138412546;
        v45 = v4;
        v46 = 2112;
        v47 = v14;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Grouping check: Returning explicit grouping preference from cell at indexPath: %@. Grouping: %@\n\n===", buf, 0x16u);
      }

      goto LABEL_37;
    }

    if (v42 == 1)
    {
      v15 = __UILogGetCategoryCachedImpl("UICVGrouping", &qword_1ED4A3080);
      if (*v15)
      {
        v41 = *(v15 + 8);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v45 = v4;
          _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "Grouping check: Forcing grouping to alone for inset background at indexPath: %@\n\n===", buf, 0xCu);
        }
      }

      v9 = 1;
      goto LABEL_10;
    }

    buf[0] = 0;
    v16 = MEMORY[0x1E696AC88];
    v17 = v4;
    v18 = [v17 item];
    v19 = [v17 section];

    v20 = [v16 indexPathForItem:v18 + 1 inSection:v19];
    LODWORD(v18) = [(_UICollectionViewLayoutInteractionStateModule *)a1 _itemIsSelectedOrHighlightedAndHasBackgroundFillForGroupingAtIndexPath:v20 cellGroupingPreference:0 backgroundIsInset:buf];

    v21 = v18 & (buf[0] ^ 1);
    v22 = v17;
    if ([v22 item] <= 0)
    {
    }

    else
    {
      v23 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v22 inSection:{"item") - 1, objc_msgSend(v22, "section")}];

      buf[0] = 0;
      if (v23)
      {
        v24 = [(_UICollectionViewLayoutInteractionStateModule *)a1 _itemIsSelectedOrHighlightedAndHasBackgroundFillForGroupingAtIndexPath:v23 cellGroupingPreference:0 backgroundIsInset:buf];
        v25 = v24 & (buf[0] ^ 1);

        v26 = 1;
        if (v21)
        {
          v26 = 2;
        }

        v27 = 3;
        if (!v21)
        {
          v27 = 4;
        }

        if (v25)
        {
          v9 = v27;
        }

        else
        {
          v9 = v26;
        }

        goto LABEL_34;
      }
    }

    if (v21)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

LABEL_34:
    v33 = __UILogGetCategoryCachedImpl("UICVGrouping", &qword_1ED4A3088);
    if ((*v33 & 1) == 0)
    {
      goto LABEL_10;
    }

    v13 = *(v33 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v34 = off_1E712C490[v9 - 1];
      v35 = NSStringFromBOOL();
      v36 = NSStringFromBOOL();
      v37 = NSStringFromBOOL();
      *buf = 138413314;
      v45 = v22;
      v46 = 2112;
      v47 = v34;
      v48 = 2112;
      v49 = v35;
      v50 = 2112;
      v51 = v36;
      v52 = 2112;
      v53 = v37;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Grouping check: Returning grouping value at index path: %@ -- grouping: %@ -- currentIsSelected: %@ -- previousIsSelected: %@ -- nextIsSelected: %@\n\n===", buf, 0x34u);
    }

LABEL_37:

    goto LABEL_10;
  }

  v10 = __UILogGetCategoryCachedImpl("UICVGrouping", &qword_1ED4A3070);
  if (*v10)
  {
    v40 = *(v10 + 8);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v4;
      _os_log_impl(&dword_188A29000, v40, OS_LOG_TYPE_ERROR, "Grouping check: Returning none because cell is unselected and has no explicit grouping at indexPath: %@.\n\n===", buf, 0xCu);
    }
  }

LABEL_9:
  v9 = 0;
LABEL_10:

LABEL_11:
  return v9;
}

- (uint64_t)itemAtIndexPathIsSelected:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v5 = [WeakRetained collectionView];
  v6 = [v5 _selectionController];
  v7 = v6;
  if (v6)
  {
    v8 = [*(v6 + 8) containsObject:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)itemAtIndexPathIsBeingReordered:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    v5 = [WeakRetained collectionView];
    v6 = [v5 _isReorderingItemAtIndexPath:v3];

    return v6;
  }

  return result;
}

- (BOOL)_shouldAdjustLayoutToDrawTopSeparatorInSection:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  if (a2 < 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:sel__shouldAdjustLayoutToDrawTopSeparatorInSection_ object:a1 file:@"_UICollectionViewLayoutInteractionStateModule.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"sectionIndex >= 0"}];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v5 = [WeakRetained collectionView];

  v6 = [v5 _collectionViewData];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if ([v5 _shouldAdjustLayoutToDrawTopSeparator])
    {
      v9 = [(UICollectionViewData *)v7 validatedIndexPathForItemAtGlobalIndex:?];
      v10 = v9;
      if (v9)
      {
        v8 = [v9 section] == a2;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (uint64_t)enumerateSectionsAfterSectionIndex:(void *)a3 enumerator:
{
  v5 = a3;
  v6 = v5;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_18;
  }

  if (a2 < 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:sel_enumerateSectionsAfterSectionIndex_enumerator_ object:a1 file:@"_UICollectionViewLayoutInteractionStateModule.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"sectionIndex >= 0"}];

    if (v6)
    {
      goto LABEL_4;
    }
  }

  else if (v5)
  {
    goto LABEL_4;
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:sel_enumerateSectionsAfterSectionIndex_enumerator_ object:a1 file:@"_UICollectionViewLayoutInteractionStateModule.m" lineNumber:231 description:{@"Invalid parameter not satisfying: %@", @"enumerator != nil"}];

LABEL_4:
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v8 = [WeakRetained collectionView];
  v9 = [v8 _collectionViewData];
  v10 = v9;
  v11 = 0;
  if (WeakRetained && v8 && v9)
  {
    if ((*(v9 + 96) & 2) == 0)
    {
      [(UICollectionViewData *)v9 _updateItemCounts];
    }

    v12 = (v10[14] - v10[13]) >> 3;
    if (v12 - 1 <= a2)
    {
      v11 = 0;
    }

    else
    {
      v13 = [WeakRetained _interactionStateModule:a1 layoutSectionForIndex:a2 + 1];
      v11 = v13 != 0;
      if (v13)
      {
        v14 = v13;
        v23 = v13 != 0;
        do
        {
          [WeakRetained _interactionStateModule:a1 spacingAfterLayoutSection:a2];
          v16 = v15;
          v24 = 0;
          v17 = [(UICollectionViewData *)v10 numberOfItemsInSection:?];
          (v6)[2](v6, v14, a2 + 1, v17, &v24, v16);
          v18 = v24;

          v19 = a2 + 2;
          if (v19 == v12)
          {
            break;
          }

          if (v18)
          {
            break;
          }

          v14 = [WeakRetained _interactionStateModule:a1 layoutSectionForIndex:v19];
          a2 = v19 - 1;
        }

        while (v14);
        v11 = v23;
      }
    }
  }

LABEL_18:
  return v11;
}

- (uint64_t)swipeActionsStyleForSwipedItemAtIndexPath:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_swipeActionsStyleForSwipedItemAtIndexPath_ object:a1 file:@"_UICollectionViewLayoutInteractionStateModule.m" lineNumber:274 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 24));
    a1 = [WeakRetained _interactionStateModule:a1 swipeActionsStyleForSwipedItemAtIndexPath:v4];
  }

  return a1;
}

- (_UICollectionViewLayoutInteractionStateModuleHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end