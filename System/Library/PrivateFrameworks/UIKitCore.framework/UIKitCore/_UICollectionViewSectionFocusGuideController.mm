@interface _UICollectionViewSectionFocusGuideController
- (CGRect)_sectionEndFrameForSection:(int64_t)section layout:(id)layout;
- (CGRect)_sectionFrameForSection:(int64_t)section layout:(id)layout;
- (UICollectionView)collectionView;
- (_UICollectionViewSectionFocusGuideController)initWithCollectionView:(id)view;
- (id)_createOrUpdateSectionFocusGuidePackageForSection:(int64_t)section;
- (id)_focusGuides;
- (id)_sectionFocusGuidePackageForSection:(int64_t)section;
- (id)_sectionsToLoad;
- (void)_layoutSectionFocusGuide:(id)guide forSection:(int64_t)section inLayout:(id)layout;
- (void)_layoutSectionFocusGuide:(id)guide forSection:(int64_t)section withFrame:(CGRect)frame;
- (void)_removeSectionFocusGuidesForSection:(int64_t)section;
- (void)_updatePivotSection;
- (void)_updateSectionEndFocusGuideForSection:(int64_t)section inPackage:(id)package layout:(id)layout;
- (void)cleanupSectionFocusGuides;
- (void)performLayout;
- (void)reloadSectionFocusGuides;
- (void)updateFocusedIndexPath:(id)path immediatelyReevaluatePivotIndex:(BOOL)index;
@end

@implementation _UICollectionViewSectionFocusGuideController

- (void)_updatePivotSection
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  [(_UICollectionViewSectionFocusGuideController *)self setPivotSection:0x7FFFFFFFFFFFFFFFLL];
  v3 = WeakRetained;
  if (WeakRetained)
  {
    _needsReload = [WeakRetained _needsReload];
    v3 = WeakRetained;
    if ((_needsReload & 1) == 0)
    {
      collectionViewLayout = [WeakRetained collectionViewLayout];
      if (collectionViewLayout)
      {
        _collectionViewData = [WeakRetained _collectionViewData];
        if (_collectionViewData)
        {
          v8 = _collectionViewData[13];
          v7 = _collectionViewData[14];

          v9 = v7 - v8;
          if (v7 != v8)
          {
            focusedIndexPath = [(_UICollectionViewSectionFocusGuideController *)self focusedIndexPath];

            if (focusedIndexPath)
            {
              focusedIndexPath2 = [(_UICollectionViewSectionFocusGuideController *)self focusedIndexPath];
              -[_UICollectionViewSectionFocusGuideController setPivotSection:](self, "setPivotSection:", [focusedIndexPath2 section]);
            }

            if ([(_UICollectionViewSectionFocusGuideController *)self pivotSection]== 0x7FFFFFFFFFFFFFFFLL)
            {
              _existingVisibleCells = [WeakRetained _existingVisibleCells];
              firstObject = [_existingVisibleCells firstObject];

              if (firstObject)
              {
                v14 = [WeakRetained indexPathForCell:firstObject];
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
              pivotSection = [(_UICollectionViewSectionFocusGuideController *)self pivotSection];
              if ((pivotSection & ~(pivotSection >> 63)) >= (v9 >> 3) - 1)
              {
                v17 = (v9 >> 3) - 1;
              }

              else
              {
                v17 = pivotSection & ~(pivotSection >> 63);
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
    collectionViewLayout = [WeakRetained collectionViewLayout];
    if (collectionViewLayout && ([v4 _collectionViewData], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v6[13], v7 = v6[14], v6, (v9 = v7 - v8) != 0) && -[_UICollectionViewSectionFocusGuideController pivotSection](self, "pivotSection") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v9 >> 3;
      pivotSection = [(_UICollectionViewSectionFocusGuideController *)self pivotSection];
      if (pivotSection <= 6)
      {
        v14 = 6;
      }

      else
      {
        v14 = pivotSection;
      }

      v15 = v14 - 6;
      v16 = v12 - 1;
      pivotSection2 = [(_UICollectionViewSectionFocusGuideController *)self pivotSection];
      if (v16 >= pivotSection2 + 6)
      {
        v16 = pivotSection2 + 6;
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
    _focusGuides = [(_UICollectionViewSectionFocusGuideController *)self _focusGuides];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [_focusGuides countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(_focusGuides);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          [v9 _setLockedToOwningView:0];
          [WeakRetained removeLayoutGuide:v9];
        }

        v6 = [_focusGuides countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  focusGuideFromSectionMap = [(_UICollectionViewSectionFocusGuideController *)self focusGuideFromSectionMap];
  [focusGuideFromSectionMap removeAllObjects];

  focusGuideToSectionMap = [(_UICollectionViewSectionFocusGuideController *)self focusGuideToSectionMap];
  [focusGuideToSectionMap removeAllObjects];
}

- (id)_focusGuides
{
  objectEnumerator = [(NSMapTable *)self->_focusGuideFromSectionMap objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v4 = [allObjects valueForKeyPath:@"@unionOfArrays.focusGuides"];

  return v4;
}

- (void)performLayout
{
  v34 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    collectionViewLayout = [WeakRetained collectionViewLayout];
    v6 = collectionViewLayout;
    if (collectionViewLayout && [collectionViewLayout _layoutAxis] == 2)
    {
      [(_UICollectionViewSectionFocusGuideController *)self _updatePivotSection];
      _sectionsToLoad = [(_UICollectionViewSectionFocusGuideController *)self _sectionsToLoad];
      v8 = MEMORY[0x1E695DFD8];
      objectEnumerator = [(NSMapTable *)self->_focusGuideToSectionMap objectEnumerator];
      allObjects = [objectEnumerator allObjects];
      v11 = [v8 setWithArray:allObjects];

      v12 = [v11 mutableCopy];
      [v12 minusSet:_sectionsToLoad];
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
      v18 = _sectionsToLoad;
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
    _focusSystem = [WeakRetained _focusSystem];

    if (_focusSystem)
    {
      collectionViewLayout = [v4 collectionViewLayout];
      v7 = collectionViewLayout;
      if (collectionViewLayout && [collectionViewLayout _layoutAxis] == 2)
      {
        _sectionsToLoad = [(_UICollectionViewSectionFocusGuideController *)self _sectionsToLoad];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = [_sectionsToLoad countByEnumeratingWithState:&v14 objects:v18 count:16];
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
                objc_enumerationMutation(_sectionsToLoad);
              }

              v13 = -[_UICollectionViewSectionFocusGuideController _createOrUpdateSectionFocusGuidePackageForSection:](self, "_createOrUpdateSectionFocusGuidePackageForSection:", [*(*(&v14 + 1) + 8 * v12++) integerValue]);
            }

            while (v10 != v12);
            v10 = [_sectionsToLoad countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v10);
        }
      }
    }
  }
}

- (_UICollectionViewSectionFocusGuideController)initWithCollectionView:(id)view
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = _UICollectionViewSectionFocusGuideController;
  v5 = [(_UICollectionViewSectionFocusGuideController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, viewCopy);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    focusGuideFromSectionMap = v6->_focusGuideFromSectionMap;
    v6->_focusGuideFromSectionMap = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    focusGuideToSectionMap = v6->_focusGuideToSectionMap;
    v6->_focusGuideToSectionMap = strongToStrongObjectsMapTable2;

    v6->_pivotSection = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)updateFocusedIndexPath:(id)path immediatelyReevaluatePivotIndex:(BOOL)index
{
  indexCopy = index;
  pathCopy = path;
  focusedIndexPath = [(_UICollectionViewSectionFocusGuideController *)self focusedIndexPath];
  v8 = pathCopy;
  v10 = v8;
  if (focusedIndexPath == v8)
  {

    goto LABEL_10;
  }

  if (v8 && focusedIndexPath)
  {
    v9 = [focusedIndexPath isEqual:v8];

    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  [(_UICollectionViewSectionFocusGuideController *)self setFocusedIndexPath:v10];
  if (indexCopy)
  {
    [(_UICollectionViewSectionFocusGuideController *)self _updatePivotSection];
  }

LABEL_10:
}

- (id)_sectionFocusGuidePackageForSection:(int64_t)section
{
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    focusGuideFromSectionMap = [(_UICollectionViewSectionFocusGuideController *)self focusGuideFromSectionMap];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:section];
    v3 = [focusGuideFromSectionMap objectForKey:v6];
  }

  return v3;
}

- (id)_createOrUpdateSectionFocusGuidePackageForSection:(int64_t)section
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = 0;
    goto LABEL_18;
  }

  _focusSystem = [WeakRetained _focusSystem];

  v8 = 0;
  if (section != 0x7FFFFFFFFFFFFFFFLL && _focusSystem)
  {
    collectionViewLayout = [v6 collectionViewLayout];
    if (collectionViewLayout)
    {
      if (section < 0 || (([v6 _collectionViewData], (v10 = objc_claimAutoreleasedReturnValue()) == 0) ? (v11 = 0) : (v11 = (v10[14] - v10[13]) >> 3), v10, v11 <= section))
      {
        if (os_variant_has_internal_diagnostics())
        {
          v25 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            sectionCopy2 = section;
            _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "Attempting to create or update focus guide for invalid section: %li", buf, 0xCu);
          }
        }

        else
        {
          v14 = *(__UILogGetCategoryCachedImpl("Assert", &_createOrUpdateSectionFocusGuidePackageForSection____s_category) + 8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            sectionCopy2 = section;
            _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Attempting to create or update focus guide for invalid section: %li", buf, 0xCu);
          }
        }
      }

      else
      {
        v12 = [(_UICollectionViewSectionFocusGuideController *)self _sectionFocusGuidePackageForSection:section];
        if (v12)
        {
          v8 = v12;
          sectionFocusGuide = [(_UISectionFocusContainerGuidePackage *)v12 sectionFocusGuide];
          [(_UICollectionViewSectionFocusGuideController *)self _layoutSectionFocusGuide:sectionFocusGuide forSection:section inLayout:collectionViewLayout];

LABEL_11:
          [(_UICollectionViewSectionFocusGuideController *)self _updateSectionEndFocusGuideForSection:section inPackage:v8 layout:collectionViewLayout];
LABEL_17:

          goto LABEL_18;
        }

        [(_UICollectionViewSectionFocusGuideController *)self _sectionFrameForSection:section layout:collectionViewLayout];
        x = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
        if (!CGRectIsNull(v30))
        {
          v20 = [MEMORY[0x1E696AD98] numberWithInteger:section];
          v21 = [[_UIFocusCollectionViewSectionContainerGuide alloc] initWithCollectionView:v6];
          [v6 addLayoutGuide:v21];
          [(UILayoutGuide *)v21 _setLockedToOwningView:1];
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UICollectionViewSectionFocusContainerGuide_%@", v20];
          [(UILayoutGuide *)v21 setIdentifier:v22];

          [(_UIFocusCollectionViewSectionContainerGuide *)v21 setSection:section];
          v8 = objc_alloc_init(_UISectionFocusContainerGuidePackage);
          [(_UISectionFocusContainerGuidePackage *)v8 setSectionFocusGuide:v21];
          focusGuideFromSectionMap = [(_UICollectionViewSectionFocusGuideController *)self focusGuideFromSectionMap];
          [focusGuideFromSectionMap setObject:v8 forKey:v20];

          focusGuideToSectionMap = [(_UICollectionViewSectionFocusGuideController *)self focusGuideToSectionMap];
          [focusGuideToSectionMap setObject:v20 forKey:v8];

          [(_UICollectionViewSectionFocusGuideController *)self _layoutSectionFocusGuide:v21 forSection:section withFrame:x, y, width, height];
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

- (void)_updateSectionEndFocusGuideForSection:(int64_t)section inPackage:(id)package layout:(id)layout
{
  packageCopy = package;
  [(_UICollectionViewSectionFocusGuideController *)self _sectionEndFrameForSection:section layout:layout];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  sectionEndFocusGuide = [packageCopy sectionEndFocusGuide];
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  if (CGRectIsNull(v22))
  {
    if (!sectionEndFocusGuide)
    {
      goto LABEL_8;
    }

    [(UILayoutGuide *)sectionEndFocusGuide _setLockedToOwningView:0];
    [WeakRetained removeLayoutGuide:sectionEndFocusGuide];
    [packageCopy setSectionEndFocusGuide:0];
  }

  else
  {
    if (!sectionEndFocusGuide)
    {
      sectionEndFocusGuide = [[_UIFocusCollectionViewSectionContainerGuide alloc] initWithCollectionView:WeakRetained];
      [WeakRetained addLayoutGuide:sectionEndFocusGuide];
      [(UILayoutGuide *)sectionEndFocusGuide _setLockedToOwningView:1];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UICollectionViewSectionEndFocusContainerGuide_%@", v16];
      [(UILayoutGuide *)sectionEndFocusGuide setIdentifier:v19];

      [(_UIFocusCollectionViewSectionContainerGuide *)sectionEndFocusGuide setSection:section];
      [packageCopy setSectionEndFocusGuide:sectionEndFocusGuide];
    }

    [(UILayoutGuide *)sectionEndFocusGuide _setManualLayoutFrame:v9, v11, v13, v15];
  }

LABEL_8:
}

- (void)_removeSectionFocusGuidesForSection:(int64_t)section
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(_UICollectionViewSectionFocusGuideController *)self _sectionFocusGuidePackageForSection:?];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    focusGuides = [v5 focusGuides];
    v9 = [focusGuides countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(focusGuides);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          [v13 _setLockedToOwningView:0];
          [WeakRetained removeLayoutGuide:v13];
        }

        v10 = [focusGuides countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    focusGuideToSectionMap = [(_UICollectionViewSectionFocusGuideController *)self focusGuideToSectionMap];
    [focusGuideToSectionMap removeObjectForKey:v5];
  }

  focusGuideFromSectionMap = [(_UICollectionViewSectionFocusGuideController *)self focusGuideFromSectionMap];
  [focusGuideFromSectionMap removeObjectForKey:v6];
}

- (void)_layoutSectionFocusGuide:(id)guide forSection:(int64_t)section inLayout:(id)layout
{
  guideCopy = guide;
  [(_UICollectionViewSectionFocusGuideController *)self _sectionFrameForSection:section layout:layout];
  [(_UICollectionViewSectionFocusGuideController *)self _layoutSectionFocusGuide:guideCopy forSection:section withFrame:?];
}

- (void)_layoutSectionFocusGuide:(id)guide forSection:(int64_t)section withFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v26 = *MEMORY[0x1E69E9840];
  guideCopy = guide;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  section = [guideCopy section];
  if (has_internal_diagnostics)
  {
    if (section == section)
    {
      goto LABEL_4;
    }

    v14 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    section2 = [guideCopy section];
    v16 = [guideCopy debugDescription];
    v20 = 134218498;
    v21 = section2;
    v22 = 2048;
    sectionCopy2 = section;
    v24 = 2112;
    v25 = v16;
    _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Attempting to layout focus guide for section: %li with mismatched sectionIndex: %li.\n%@", &v20, 0x20u);
LABEL_12:

LABEL_13:
    goto LABEL_4;
  }

  if (section != section)
  {
    v17 = *(__UILogGetCategoryCachedImpl("Assert", &_layoutSectionFocusGuide_forSection_withFrame____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v14 = v17;
      section3 = [guideCopy section];
      v16 = [guideCopy debugDescription];
      v20 = 134218498;
      v21 = section3;
      v22 = 2048;
      sectionCopy2 = section;
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
    [guideCopy _setManualLayoutFrame:{x, y, width, height}];
  }

  [guideCopy setEnabled:!IsNull];
}

- (CGRect)_sectionFrameForSection:(int64_t)section layout:(id)layout
{
  if (layout)
  {
    layoutCopy = layout;
    [layoutCopy _layoutFrameForSection:section];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    _layoutAxis = [layoutCopy _layoutAxis];

    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    [WeakRetained bounds];
    v18 = v17;
    v20 = v19;

    v21 = 0.0;
    if (_layoutAxis == 1)
    {
      v22 = v20;
    }

    else
    {
      v22 = v14;
    }

    if (_layoutAxis == 1)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v10;
    }

    if (_layoutAxis == 2)
    {
      v24 = v14;
    }

    else
    {
      v24 = v22;
    }

    if (_layoutAxis == 2)
    {
      v25 = v18;
    }

    else
    {
      v25 = v12;
    }

    if (_layoutAxis == 2)
    {
      v26 = v10;
    }

    else
    {
      v26 = v23;
    }

    if (_layoutAxis != 2)
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

- (CGRect)_sectionEndFrameForSection:(int64_t)section layout:(id)layout
{
  layoutCopy = layout;
  v7 = layoutCopy;
  if (layoutCopy && (v8 = [layoutCopy _layoutAxis]) != 0 && (v9 = v8, WeakRetained = objc_loadWeakRetained(&self->_collectionView), objc_msgSend(WeakRetained, "_collectionViewData"), v11 = objc_claimAutoreleasedReturnValue(), v12 = -[UICollectionViewData _existingNumberOfItemsInSection:](v11, section), v11, WeakRetained, v12 > 0))
  {
    v13 = [MEMORY[0x1E696AC88] indexPathForItem:v12 - 1 inSection:section];
    v14 = [v7 layoutAttributesForItemAtIndexPath:v13];
    if (v14)
    {
      [(_UICollectionViewSectionFocusGuideController *)self _sectionFrameForSection:section layout:v7];
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