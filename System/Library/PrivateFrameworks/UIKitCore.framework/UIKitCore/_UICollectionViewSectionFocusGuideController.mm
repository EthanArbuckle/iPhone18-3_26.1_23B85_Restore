@interface _UICollectionViewSectionFocusGuideController
- (CGRect)_sectionEndFrameForSection:(int64_t)a3 layout:(id)a4;
- (CGRect)_sectionFrameForSection:(int64_t)a3 layout:(id)a4;
- (UICollectionView)collectionView;
- (_UICollectionViewSectionFocusGuideController)initWithCollectionView:(id)a3;
- (id)_createOrUpdateSectionFocusGuidePackageForSection:(int64_t)a3;
- (id)_focusGuides;
- (id)_sectionFocusGuidePackageForSection:(int64_t)a3;
- (id)_sectionsToLoad;
- (void)_layoutSectionFocusGuide:(id)a3 forSection:(int64_t)a4 inLayout:(id)a5;
- (void)_layoutSectionFocusGuide:(id)a3 forSection:(int64_t)a4 withFrame:(CGRect)a5;
- (void)_removeSectionFocusGuidesForSection:(int64_t)a3;
- (void)_updatePivotSection;
- (void)_updateSectionEndFocusGuideForSection:(int64_t)a3 inPackage:(id)a4 layout:(id)a5;
- (void)cleanupSectionFocusGuides;
- (void)performLayout;
- (void)reloadSectionFocusGuides;
- (void)updateFocusedIndexPath:(id)a3 immediatelyReevaluatePivotIndex:(BOOL)a4;
@end

@implementation _UICollectionViewSectionFocusGuideController

- (void)_updatePivotSection
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  [(_UICollectionViewSectionFocusGuideController *)self setPivotSection:0x7FFFFFFFFFFFFFFFLL];
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _needsReload];
    v3 = WeakRetained;
    if ((v4 & 1) == 0)
    {
      v5 = [WeakRetained collectionViewLayout];
      if (v5)
      {
        v6 = [WeakRetained _collectionViewData];
        if (v6)
        {
          v8 = v6[13];
          v7 = v6[14];

          v9 = v7 - v8;
          if (v7 != v8)
          {
            v10 = [(_UICollectionViewSectionFocusGuideController *)self focusedIndexPath];

            if (v10)
            {
              v11 = [(_UICollectionViewSectionFocusGuideController *)self focusedIndexPath];
              -[_UICollectionViewSectionFocusGuideController setPivotSection:](self, "setPivotSection:", [v11 section]);
            }

            if ([(_UICollectionViewSectionFocusGuideController *)self pivotSection]== 0x7FFFFFFFFFFFFFFFLL)
            {
              v12 = [WeakRetained _existingVisibleCells];
              v13 = [v12 firstObject];

              if (v13)
              {
                v14 = [WeakRetained indexPathForCell:v13];
                v15 = v14;
                if (v14)
                {
                  -[_UICollectionViewSectionFocusGuideController setPivotSection:](self, "setPivotSection:", [v14 section]);
                }
              }
            }

            if ([(_UICollectionViewSectionFocusGuideController *)self pivotSection]== 0x7FFFFFFFFFFFFFFFLL)
            {
              [(_UICollectionViewSectionFocusGuideController *)self setPivotSection:0];
            }

            if ([(_UICollectionViewSectionFocusGuideController *)self pivotSection]!= 0x7FFFFFFFFFFFFFFFLL)
            {
              v16 = [(_UICollectionViewSectionFocusGuideController *)self pivotSection];
              if ((v16 & ~(v16 >> 63)) >= (v9 >> 3) - 1)
              {
                v17 = (v9 >> 3) - 1;
              }

              else
              {
                v17 = v16 & ~(v16 >> 63);
              }

              [(_UICollectionViewSectionFocusGuideController *)self setPivotSection:v17];
            }
          }
        }
      }

      v3 = WeakRetained;
    }
  }
}

- (id)_sectionsToLoad
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained collectionViewLayout];
    if (v5 && ([v4 _collectionViewData], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v6[13], v7 = v6[14], v6, (v9 = v7 - v8) != 0) && -[_UICollectionViewSectionFocusGuideController pivotSection](self, "pivotSection") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v9 >> 3;
      v13 = [(_UICollectionViewSectionFocusGuideController *)self pivotSection];
      if (v13 <= 6)
      {
        v14 = 6;
      }

      else
      {
        v14 = v13;
      }

      v15 = v14 - 6;
      v16 = v12 - 1;
      v17 = [(_UICollectionViewSectionFocusGuideController *)self pivotSection];
      if (v16 >= v17 + 6)
      {
        v16 = v17 + 6;
      }

      v10 = [MEMORY[0x1E695DFA8] set];
      if (v15 <= v16)
      {
        v18 = v16 - v14 + 7;
        do
        {
          v19 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
          [v10 addObject:v19];

          ++v15;
          --v18;
        }

        while (v18);
      }
    }

    else
    {
      v10 = [MEMORY[0x1E695DFD8] set];
    }
  }

  else
  {
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  return v10;
}

- (void)cleanupSectionFocusGuides
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  if (WeakRetained)
  {
    v4 = [(_UICollectionViewSectionFocusGuideController *)self _focusGuides];
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
          [v9 _setLockedToOwningView:0];
          [WeakRetained removeLayoutGuide:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v10 = [(_UICollectionViewSectionFocusGuideController *)self focusGuideFromSectionMap];
  [v10 removeAllObjects];

  v11 = [(_UICollectionViewSectionFocusGuideController *)self focusGuideToSectionMap];
  [v11 removeAllObjects];
}

- (id)_focusGuides
{
  v2 = [(NSMapTable *)self->_focusGuideFromSectionMap objectEnumerator];
  v3 = [v2 allObjects];
  v4 = [v3 valueForKeyPath:@"@unionOfArrays.focusGuides"];

  return v4;
}

- (void)performLayout
{
  v34 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained collectionViewLayout];
    v6 = v5;
    if (v5 && [v5 _layoutAxis] == 2)
    {
      [(_UICollectionViewSectionFocusGuideController *)self _updatePivotSection];
      v7 = [(_UICollectionViewSectionFocusGuideController *)self _sectionsToLoad];
      v8 = MEMORY[0x1E695DFD8];
      v9 = [(NSMapTable *)self->_focusGuideToSectionMap objectEnumerator];
      v10 = [v9 allObjects];
      v11 = [v8 setWithArray:v10];

      v12 = [v11 mutableCopy];
      [v12 minusSet:v7];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        do
        {
          v17 = 0;
          do
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            -[_UICollectionViewSectionFocusGuideController _removeSectionFocusGuidesForSection:](self, "_removeSectionFocusGuidesForSection:", [*(*(&v28 + 1) + 8 * v17++) integerValue]);
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v15);
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = v7;
      v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v25;
        do
        {
          v22 = 0;
          do
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = -[_UICollectionViewSectionFocusGuideController _createOrUpdateSectionFocusGuidePackageForSection:](self, "_createOrUpdateSectionFocusGuidePackageForSection:", [*(*(&v24 + 1) + 8 * v22++) integerValue]);
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v20);
      }
    }
  }
}

- (void)reloadSectionFocusGuides
{
  v19 = *MEMORY[0x1E69E9840];
  [(_UICollectionViewSectionFocusGuideController *)self cleanupSectionFocusGuides];
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _focusSystem];

    if (v5)
    {
      v6 = [v4 collectionViewLayout];
      v7 = v6;
      if (v6 && [v6 _layoutAxis] == 2)
      {
        v8 = [(_UICollectionViewSectionFocusGuideController *)self _sectionsToLoad];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = -[_UICollectionViewSectionFocusGuideController _createOrUpdateSectionFocusGuidePackageForSection:](self, "_createOrUpdateSectionFocusGuidePackageForSection:", [*(*(&v14 + 1) + 8 * v12++) integerValue]);
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v10);
        }
      }
    }
  }
}

- (_UICollectionViewSectionFocusGuideController)initWithCollectionView:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UICollectionViewSectionFocusGuideController;
  v5 = [(_UICollectionViewSectionFocusGuideController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, v4);
    v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    focusGuideFromSectionMap = v6->_focusGuideFromSectionMap;
    v6->_focusGuideFromSectionMap = v7;

    v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    focusGuideToSectionMap = v6->_focusGuideToSectionMap;
    v6->_focusGuideToSectionMap = v9;

    v6->_pivotSection = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)updateFocusedIndexPath:(id)a3 immediatelyReevaluatePivotIndex:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_UICollectionViewSectionFocusGuideController *)self focusedIndexPath];
  v8 = v6;
  v10 = v8;
  if (v7 == v8)
  {

    goto LABEL_10;
  }

  if (v8 && v7)
  {
    v9 = [v7 isEqual:v8];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  [(_UICollectionViewSectionFocusGuideController *)self setFocusedIndexPath:v10];
  if (v4)
  {
    [(_UICollectionViewSectionFocusGuideController *)self _updatePivotSection];
  }

LABEL_10:
}

- (id)_sectionFocusGuidePackageForSection:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(_UICollectionViewSectionFocusGuideController *)self focusGuideFromSectionMap];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v3 = [v5 objectForKey:v6];
  }

  return v3;
}

- (id)_createOrUpdateSectionFocusGuidePackageForSection:(int64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v7 = [WeakRetained _focusSystem];

  v8 = 0;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && v7)
  {
    v9 = [v6 collectionViewLayout];
    if (v9)
    {
      if (a3 < 0 || (([v6 _collectionViewData], (v10 = objc_claimAutoreleasedReturnValue()) == 0) ? (v11 = 0) : (v11 = (v10[14] - v10[13]) >> 3), v10, v11 <= a3))
      {
        if (os_variant_has_internal_diagnostics())
        {
          v25 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v27 = a3;
            _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "Attempting to create or update focus guide for invalid section: %li", buf, 0xCu);
          }
        }

        else
        {
          v14 = *(__UILogGetCategoryCachedImpl("Assert", &_createOrUpdateSectionFocusGuidePackageForSection____s_category) + 8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v27 = a3;
            _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Attempting to create or update focus guide for invalid section: %li", buf, 0xCu);
          }
        }
      }

      else
      {
        v12 = [(_UICollectionViewSectionFocusGuideController *)self _sectionFocusGuidePackageForSection:a3];
        if (v12)
        {
          v8 = v12;
          v13 = [(_UISectionFocusContainerGuidePackage *)v12 sectionFocusGuide];
          [(_UICollectionViewSectionFocusGuideController *)self _layoutSectionFocusGuide:v13 forSection:a3 inLayout:v9];

LABEL_11:
          [(_UICollectionViewSectionFocusGuideController *)self _updateSectionEndFocusGuideForSection:a3 inPackage:v8 layout:v9];
LABEL_17:

          goto LABEL_18;
        }

        [(_UICollectionViewSectionFocusGuideController *)self _sectionFrameForSection:a3 layout:v9];
        x = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
        if (!CGRectIsNull(v30))
        {
          v20 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
          v21 = [[_UIFocusCollectionViewSectionContainerGuide alloc] initWithCollectionView:v6];
          [v6 addLayoutGuide:v21];
          [(UILayoutGuide *)v21 _setLockedToOwningView:1];
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UICollectionViewSectionFocusContainerGuide_%@", v20];
          [(UILayoutGuide *)v21 setIdentifier:v22];

          [(_UIFocusCollectionViewSectionContainerGuide *)v21 setSection:a3];
          v8 = objc_alloc_init(_UISectionFocusContainerGuidePackage);
          [(_UISectionFocusContainerGuidePackage *)v8 setSectionFocusGuide:v21];
          v23 = [(_UICollectionViewSectionFocusGuideController *)self focusGuideFromSectionMap];
          [v23 setObject:v8 forKey:v20];

          v24 = [(_UICollectionViewSectionFocusGuideController *)self focusGuideToSectionMap];
          [v24 setObject:v20 forKey:v8];

          [(_UICollectionViewSectionFocusGuideController *)self _layoutSectionFocusGuide:v21 forSection:a3 withFrame:x, y, width, height];
          if (!v8)
          {
            goto LABEL_17;
          }

          goto LABEL_11;
        }
      }
    }

    v8 = 0;
    goto LABEL_17;
  }

LABEL_18:

  return v8;
}

- (void)_updateSectionEndFocusGuideForSection:(int64_t)a3 inPackage:(id)a4 layout:(id)a5
{
  v20 = a4;
  [(_UICollectionViewSectionFocusGuideController *)self _sectionEndFrameForSection:a3 layout:a5];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v17 = [v20 sectionEndFocusGuide];
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  if (CGRectIsNull(v22))
  {
    if (!v17)
    {
      goto LABEL_8;
    }

    [(UILayoutGuide *)v17 _setLockedToOwningView:0];
    [WeakRetained removeLayoutGuide:v17];
    [v20 setSectionEndFocusGuide:0];
  }

  else
  {
    if (!v17)
    {
      v17 = [[_UIFocusCollectionViewSectionContainerGuide alloc] initWithCollectionView:WeakRetained];
      [WeakRetained addLayoutGuide:v17];
      [(UILayoutGuide *)v17 _setLockedToOwningView:1];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UICollectionViewSectionEndFocusContainerGuide_%@", v16];
      [(UILayoutGuide *)v17 setIdentifier:v19];

      [(_UIFocusCollectionViewSectionContainerGuide *)v17 setSection:a3];
      [v20 setSectionEndFocusGuide:v17];
    }

    [(UILayoutGuide *)v17 _setManualLayoutFrame:v9, v11, v13, v15];
  }

LABEL_8:
}

- (void)_removeSectionFocusGuidesForSection:(int64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(_UICollectionViewSectionFocusGuideController *)self _sectionFocusGuidePackageForSection:?];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v5 focusGuides];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          [v13 _setLockedToOwningView:0];
          [WeakRetained removeLayoutGuide:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v14 = [(_UICollectionViewSectionFocusGuideController *)self focusGuideToSectionMap];
    [v14 removeObjectForKey:v5];
  }

  v15 = [(_UICollectionViewSectionFocusGuideController *)self focusGuideFromSectionMap];
  [v15 removeObjectForKey:v6];
}

- (void)_layoutSectionFocusGuide:(id)a3 forSection:(int64_t)a4 inLayout:(id)a5
{
  v8 = a3;
  [(_UICollectionViewSectionFocusGuideController *)self _sectionFrameForSection:a4 layout:a5];
  [(_UICollectionViewSectionFocusGuideController *)self _layoutSectionFocusGuide:v8 forSection:a4 withFrame:?];
}

- (void)_layoutSectionFocusGuide:(id)a3 forSection:(int64_t)a4 withFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v12 = [v10 section];
  if (has_internal_diagnostics)
  {
    if (v12 == a4)
    {
      goto LABEL_4;
    }

    v14 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    v15 = [v10 section];
    v16 = [v10 debugDescription];
    v20 = 134218498;
    v21 = v15;
    v22 = 2048;
    v23 = a4;
    v24 = 2112;
    v25 = v16;
    _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Attempting to layout focus guide for section: %li with mismatched sectionIndex: %li.\n%@", &v20, 0x20u);
LABEL_12:

LABEL_13:
    goto LABEL_4;
  }

  if (v12 != a4)
  {
    v17 = *(__UILogGetCategoryCachedImpl("Assert", &_layoutSectionFocusGuide_forSection_withFrame____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v14 = v17;
      v19 = [v10 section];
      v16 = [v10 debugDescription];
      v20 = 134218498;
      v21 = v19;
      v22 = 2048;
      v23 = a4;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Attempting to layout focus guide for section: %li with mismatched sectionIndex: %li.\n%@", &v20, 0x20u);
      goto LABEL_12;
    }
  }

LABEL_4:
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  IsNull = CGRectIsNull(v27);
  if (!IsNull)
  {
    [v10 _setManualLayoutFrame:{x, y, width, height}];
  }

  [v10 setEnabled:!IsNull];
}

- (CGRect)_sectionFrameForSection:(int64_t)a3 layout:(id)a4
{
  if (a4)
  {
    v6 = a4;
    [v6 _layoutFrameForSection:a3];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v6 _layoutAxis];

    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    [WeakRetained bounds];
    v18 = v17;
    v20 = v19;

    v21 = 0.0;
    if (v15 == 1)
    {
      v22 = v20;
    }

    else
    {
      v22 = v14;
    }

    if (v15 == 1)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v10;
    }

    if (v15 == 2)
    {
      v24 = v14;
    }

    else
    {
      v24 = v22;
    }

    if (v15 == 2)
    {
      v25 = v18;
    }

    else
    {
      v25 = v12;
    }

    if (v15 == 2)
    {
      v26 = v10;
    }

    else
    {
      v26 = v23;
    }

    if (v15 != 2)
    {
      v21 = v8;
    }
  }

  else
  {
    v21 = *MEMORY[0x1E695F050];
    v26 = *(MEMORY[0x1E695F050] + 8);
    v25 = *(MEMORY[0x1E695F050] + 16);
    v24 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v24;
  result.size.width = v25;
  result.origin.y = v26;
  result.origin.x = v21;
  return result;
}

- (CGRect)_sectionEndFrameForSection:(int64_t)a3 layout:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6 && (v8 = [v6 _layoutAxis]) != 0 && (v9 = v8, WeakRetained = objc_loadWeakRetained(&self->_collectionView), objc_msgSend(WeakRetained, "_collectionViewData"), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[UICollectionViewData _existingNumberOfItemsInSection:](v11, a3), v11, WeakRetained, v12 > 0))
  {
    v13 = [MEMORY[0x1E696AC88] indexPathForItem:v12 - 1 inSection:a3];
    v14 = [v7 layoutAttributesForItemAtIndexPath:v13];
    if (v14)
    {
      [(_UICollectionViewSectionFocusGuideController *)self _sectionFrameForSection:a3 layout:v7];
      v16 = v15;
      v18 = v17;
      rect = v19;
      v21 = v20;
      [v14 frame];
      v40 = v23;
      v41 = v24;
      v42 = v25;
      v26 = *MEMORY[0x1E695F050];
      MinY = *(MEMORY[0x1E695F050] + 8);
      Width = *(MEMORY[0x1E695F050] + 16);
      Height = *(MEMORY[0x1E695F050] + 24);
      if (v9 == 1)
      {
        v32 = v22;
        v49.origin.x = v16;
        v49.origin.y = v18;
        v49.size.width = rect;
        v49.size.height = v21;
        v39 = v21;
        MinX = CGRectGetMinX(v49);
        v50.origin.x = v32;
        v50.origin.y = v40;
        v50.size.width = v42;
        v50.size.height = v41;
        if (CGRectGetMinX(v50) - MinX >= v42)
        {
          v51.origin.x = v32;
          v51.origin.y = v40;
          v51.size.width = v42;
          v51.size.height = v41;
          v26 = CGRectGetMinX(v51);
          v52.origin.x = v16;
          v52.origin.y = v18;
          v52.size.width = rect;
          v52.size.height = v39;
          MinY = CGRectGetMinY(v52);
          v53.origin.x = v16;
          v53.origin.y = v18;
          v53.size.width = rect;
          v53.size.height = v39;
          Height = CGRectGetHeight(v53);
          Width = v42;
        }
      }

      else if (v9 == 2)
      {
        v30 = v22;
        v44.origin.x = v16;
        v44.origin.y = v18;
        v44.size.width = rect;
        v44.size.height = v21;
        v38 = v21;
        v31 = CGRectGetMinY(v44);
        v45.origin.x = v30;
        v45.origin.y = v40;
        v45.size.width = v42;
        v45.size.height = v41;
        if (CGRectGetMinY(v45) - v31 >= v41)
        {
          v46.origin.x = v16;
          v46.origin.y = v18;
          v46.size.width = rect;
          v46.size.height = v38;
          v26 = CGRectGetMinX(v46);
          v47.origin.x = v30;
          v47.origin.y = v40;
          v47.size.width = v42;
          v47.size.height = v41;
          MinY = CGRectGetMinY(v47);
          v48.origin.x = v16;
          v48.origin.y = v18;
          v48.size.width = rect;
          v48.size.height = v38;
          Width = CGRectGetWidth(v48);
          Height = v41;
        }
      }
    }

    else
    {
      v26 = *MEMORY[0x1E695F050];
      MinY = *(MEMORY[0x1E695F050] + 8);
      Width = *(MEMORY[0x1E695F050] + 16);
      Height = *(MEMORY[0x1E695F050] + 24);
    }
  }

  else
  {
    v26 = *MEMORY[0x1E695F050];
    MinY = *(MEMORY[0x1E695F050] + 8);
    Width = *(MEMORY[0x1E695F050] + 16);
    Height = *(MEMORY[0x1E695F050] + 24);
  }

  v34 = v26;
  v35 = MinY;
  v36 = Width;
  v37 = Height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end