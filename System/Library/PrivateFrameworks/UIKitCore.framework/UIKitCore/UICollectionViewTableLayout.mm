@interface UICollectionViewTableLayout
- (BOOL)_canReorderRowAtIndexPath:(id)a3;
- (BOOL)_estimatesHeights;
- (BOOL)_estimatesSizes;
- (BOOL)_hasHeaderFooterBelowRowAtIndexPath:(id)a3;
- (BOOL)_providesRowHeights;
- (BOOL)_shouldApplyReadableWidthInsets;
- (BOOL)_shouldDisplayExtraSeparatorsAtOffset:(double *)a3;
- (BOOL)_shouldDrawSeparatorAtTop:(BOOL)a3 ofSection:(int64_t)a4;
- (BOOL)_shouldDrawTopSeparatorDueToMergedBarForSectionAtIndex:(int64_t)a3;
- (BOOL)_shouldHaveViewForElementOfKind:(id)a3 atSection:(int64_t)a4 useRowData:(BOOL)a5;
- (BOOL)_shouldIndentWhileEditingForRowAtIndexPath:(id)a3;
- (BOOL)allowsMultipleSelection;
- (BOOL)allowsMultipleSelectionDuringEditing;
- (BOOL)isEditing;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4;
- (BOOL)swipeActionController:(id)a3 mayBeginSwipeForItemAtIndexPath:(id)a4;
- (CGPoint)_contentOffsetFromProposedContentOffset:(CGPoint)a3 forScrollingToItemAtIndexPath:(id)a4 atScrollPosition:(unint64_t)a5;
- (CGRect)_extraSeparatorFrameForIndexPath:(id)a3 offset:(double)a4;
- (CGRect)_frameForSectionElementKind:(id)a3 atSection:(int64_t)a4 visibleRect:(CGRect)a5 floating:(BOOL *)a6 canGuess:(BOOL)a7;
- (CGRect)_indexFrame;
- (CGRect)_visibleRect;
- (CGSize)_sizeForHeaderInSection:(int64_t)a3;
- (CGSize)collectionViewContentSize;
- (UICollectionViewDataSourceTableLayout)_dataSourceActual;
- (UICollectionViewDelegateTableLayout)_delegateActual;
- (UICollectionViewDelegateTableLayout)_delegateProxy;
- (UICollectionViewTableLayout)init;
- (UIColor)backgroundColor;
- (UIColor)separatorColor;
- (UIEdgeInsets)_cellSafeAreaInsets;
- (UIEdgeInsets)_contentInset;
- (UIEdgeInsets)_rawSectionContentInset;
- (UIEdgeInsets)_rawSeparatorInset;
- (UIEdgeInsets)_sectionContentInset;
- (UIEdgeInsets)_tableContentInset;
- (UIEdgeInsets)separatorInset;
- (_NSRange)_sectionRangeForBounds:(CGRect)a3;
- (double)_dataSourceHeightForFooterInSection:(int64_t)a3;
- (double)_dataSourceHeightForHeaderInSection:(int64_t)a3;
- (double)_dataSourceHeightForRowAtIndexPath:(id)a3;
- (double)_defaultSectionFooterHeight;
- (double)_defaultSectionHeaderHeight;
- (double)_estimatedHeightForFooterInSection:(int64_t)a3;
- (double)_estimatedHeightForHeaderInSection:(int64_t)a3;
- (double)_estimatedHeightForRowAtIndexPath:(id)a3;
- (double)_headerFooterLeadingMarginWidthIsHeader:(BOOL)a3 isFirstSection:(BOOL)a4;
- (double)_headerFooterTrailingMarginWidth;
- (double)_heightForFooterInSection:(int64_t)a3 useRowData:(BOOL)a4;
- (double)_heightForHeaderInSection:(int64_t)a3 useRowData:(BOOL)a4;
- (double)_heightForRowAtIndexPath:(id)a3;
- (double)_heightForTableFooter;
- (double)_heightForTableHeader;
- (double)_indexBarExtentFromEdge;
- (id)_indexPathsBelowIndexPath:(id)a3;
- (id)_invalidationContextForUpdatedLayoutMargins:(UIEdgeInsets)a3;
- (id)_layoutAttributesForCellWithIndexPath:(id)a3;
- (id)_layoutAttributesForSectionElementKind:(id)a3 atSection:(int64_t)a4;
- (id)_layoutAttributesForSeparatorWithIndexPath:(id)a3;
- (id)_layoutAttributesForViewElementKind:(id)a3;
- (id)contextualActionForDeletingRowAtIndexPath:(id)a3;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)invalidationContextForInteractivelyMovingItems:(id)a3 withTargetPosition:(CGPoint)a4 previousIndexPaths:(id)a5 previousPosition:(CGPoint)a6;
- (id)invalidationContextForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)swipeActionController:(id)a3 indexPathForTouchLocation:(CGPoint)a4;
- (id)swipeActionController:(id)a3 leadingSwipeConfigurationForItemAtIndexPath:(id)a4;
- (id)swipeActionController:(id)a3 trailingSwipeConfigurationForItemAtIndexPath:(id)a4;
- (id)swipeActionController:(id)a3 viewForItemAtIndexPath:(id)a4;
- (id)swipeActionForDeletingRowAtIndexPath:(id)a3;
- (int64_t)_accessoryTypeForCell:(id)a3 forRowAtIndexPath:(id)a4;
- (int64_t)_editingStyleForRowAtIndexPath:(id)a3;
- (int64_t)_headerFooterPinningBehavior;
- (int64_t)_indentationLevelForRowAtIndexPath:(id)a3;
- (int64_t)_numberOfRowsInSection:(int64_t)a3;
- (int64_t)_numberOfSections;
- (int64_t)layoutDirectionForSwipeActionController:(id)a3;
- (void)_cellAccessoryButtonTappedAtIndexPath:(id)a3;
- (void)_invalidateIndexPathsBelowIndexPath:(id)a3 withInvalidationContext:(id)a4;
- (void)_setCollectionView:(id)a3;
- (void)_setFloatingElementKinds:(id)a3;
- (void)_setHeight:(double)a3 forRowAtIndexPath:(id)a4 usingPresentationValues:(BOOL)a5;
- (void)_swipeToDeleteCell:(id)a3;
- (void)dealloc;
- (void)finalizeCollectionViewUpdates;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareForTransitionFromLayout:(id)a3;
- (void)prepareForTransitionToLayout:(id)a3;
- (void)prepareLayout;
- (void)setBackgroundColor:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setInsetsContentViewsToSafeArea:(BOOL)a3;
- (void)setSeparatorColor:(id)a3;
- (void)setSeparatorInset:(UIEdgeInsets)a3;
- (void)setSeparatorInsetIsRelativeToCellEdges:(BOOL)a3;
- (void)setSeparatorStyle:(int64_t)a3;
- (void)swipeActionController:(id)a3 animateView:(id)a4 actionsView:(id)a5 forDestructiveAction:(id)a6 atIndexPath:(id)a7 withSwipeInfo:(id *)a8 completion:(id)a9;
- (void)swipeActionController:(id)a3 didCompleteAction:(id)a4 cancelled:(BOOL)a5 atIndexPath:(id)a6;
- (void)swipeActionController:(id)a3 didEndSwipeForItemAtIndexPath:(id)a4;
- (void)swipeActionController:(id)a3 willBeginSwipeForItemAtIndexPath:(id)a4;
- (void)swipeActionController:(id)a3 willPerformAction:(id)a4 atIndexPath:(id)a5;
@end

@implementation UICollectionViewTableLayout

- (UICollectionViewTableLayout)init
{
  v16.receiver = self;
  v16.super_class = UICollectionViewTableLayout;
  v2 = [(UICollectionViewLayout *)&v16 init];
  __asm { FMOV            V0.2D, #-1.0 }

  *(v2 + 38) = _Q0;
  *(v2 + 39) = _Q0;
  *(v2 + 296) = _Q0;
  *(v2 + 312) = _Q0;
  *(v2 + 65) = -1;
  *(v2 + 51) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 52) = 0x7FEFFFFFFFFFFFFFLL;
  *(v2 + 53) = 0x7FEFFFFFFFFFFFFFLL;
  [v2 _setFloatingElementKinds:0];
  [v2 setSeparatorInsetIsRelativeToCellEdges:dyld_program_sdk_at_least()];
  v2[405] = 1;
  v2[407] = 1;
  v8 = objc_opt_new();
  v9 = *(v2 + 46);
  *(v2 + 46) = v8;

  v10 = objc_opt_new();
  v11 = *(v2 + 47);
  *(v2 + 47) = v10;

  v12 = objc_opt_new();
  v13 = *(v2 + 48);
  *(v2 + 48) = v12;

  [v2 registerClass:objc_opt_class() forDecorationViewOfKind:@"UICollectionElementKindSeparator"];
  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 addObserver:v2 selector:sel__darkenedColorsChanged_ name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = UICollectionViewTableLayout;
  [(UICollectionViewTableLayout *)&v4 dealloc];
}

- (void)_setFloatingElementKinds:(id)a3
{
  if (a3)
  {
    [MEMORY[0x1E695DFD8] setWithArray:?];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithObjects:{@"UICollectionElementKindSectionHeader", @"UICollectionElementKindSectionFooter", 0}];
  }
  v4 = ;
  floatingElementKinds = self->_floatingElementKinds;
  self->_floatingElementKinds = v4;
}

- (void)prepareLayout
{
  v26 = [(UICollectionViewLayout *)self collectionView];
  v3 = [v26 traitCollection];
  v4 = _UITableConstantsForTraitCollection(v3);
  constants = self->_constants;
  self->_constants = v4;

  if (!self->_metricsAdapter)
  {
    v6 = [[UITableMetricsAdapter alloc] initWithTableStyle:v26 scrollView:?];
    metricsAdapter = self->_metricsAdapter;
    self->_metricsAdapter = v6;
  }

  if (!self->_swipeActionController)
  {
    v8 = [v26 traitCollection];
    v9 = +[UISwipeActionVisualStyleProvider visualStyleForIdiom:](UISwipeActionVisualStyleProvider, "visualStyleForIdiom:", [v8 userInterfaceIdiom]);

    v10 = -[UISwipeActionController initWithSwipeActionHost:style:]([UISwipeActionController alloc], "initWithSwipeActionHost:style:", self, [v9 defaultSwipeActionUIStyleForUITableViewStyle:{-[UICollectionViewTableLayout _tableStyle](self, "_tableStyle")}]);
    swipeActionController = self->_swipeActionController;
    self->_swipeActionController = v10;
  }

  if (self->_separatorStyle == -1)
  {
    v12 = self->_metricsAdapter;
    if (v12)
    {
      if ((*&v12->_adapterFlags & 2) == 0)
      {
        [(UITableMetricsAdapter *)self->_metricsAdapter _updateSharedSeparatorMetrics];
      }

      tableSeparatorStyle = v12->_tableSeparatorStyle;
    }

    else
    {
      tableSeparatorStyle = 0;
    }

    self->_separatorStyle = tableSeparatorStyle;
  }

  if (!self->_separatorColor)
  {
    v14 = [(UITableMetricsAdapter *)&self->_metricsAdapter->super.isa tableSeparatorColor];
    separatorColor = self->_separatorColor;
    self->_separatorColor = v14;

    v16 = [(UICollectionViewLayout *)self collectionView];
    v17 = [v16 _accessibilityHigherContrastTintColorForColor:self->_separatorColor];
    darkenedSeparatorColor = self->_darkenedSeparatorColor;
    self->_darkenedSeparatorColor = v17;
  }

  if (self->_rowHeight == 1.79769313e308)
  {
    [(UITableConstants *)self->_constants defaultRowHeightForTableView:self];
    self->_rowHeight = v19;
  }

  if (self->_sectionHeaderHeight == 1.79769313e308)
  {
    [(UICollectionViewTableLayout *)self _defaultSectionHeaderHeight];
    self->_sectionHeaderHeight = v20;
  }

  if (self->_sectionFooterHeight == 1.79769313e308)
  {
    [(UICollectionViewTableLayout *)self _defaultSectionFooterHeight];
    self->_sectionFooterHeight = v21;
  }

  rowData = self->_rowData;
  if (!rowData)
  {
    v23 = [[UITableViewRowData alloc] initWithTableView:?];
    v24 = self->_rowData;
    self->_rowData = v23;

    rowData = self->_rowData;
  }

  [v26 bounds];
  Width = CGRectGetWidth(v28);
  if (rowData)
  {
    rowData->_tableViewWidth = Width;
  }

  [(UITableViewRowData *)self->_rowData ensureAllSectionsAreValid];
}

- (void)prepareForTransitionFromLayout:(id)a3
{
  v4.receiver = self;
  v4.super_class = UICollectionViewTableLayout;
  [(UICollectionViewLayout *)&v4 prepareForTransitionFromLayout:a3];
  [(UISwipeActionController *)self->_swipeActionController setSwipeEnabled:1];
}

- (void)prepareForTransitionToLayout:(id)a3
{
  v4.receiver = self;
  v4.super_class = UICollectionViewTableLayout;
  [(UICollectionViewLayout *)&v4 prepareForTransitionToLayout:a3];
  [(UISwipeActionController *)self->_swipeActionController setSwipeEnabled:0];
}

- (void)_setCollectionView:(id)a3
{
  v11.receiver = self;
  v11.super_class = UICollectionViewTableLayout;
  v4 = a3;
  [(UICollectionViewLayout *)&v11 _setCollectionView:v4];
  [(UIScrollView *)self->super._collectionView _setContentScrollsAlongXAxis:0, v11.receiver, v11.super_class];
  [(UIScrollView *)self->super._collectionView _setContentScrollsAlongYAxis:1];
  [v4 layoutMargins];
  self->_previousLayoutMargins.top = v5;
  self->_previousLayoutMargins.left = v6;
  self->_previousLayoutMargins.bottom = v7;
  self->_previousLayoutMargins.right = v8;
  [v4 _currentScreenScale];
  v10 = v9;

  self->_memoizedScale = v10;
}

- (CGPoint)_contentOffsetFromProposedContentOffset:(CGPoint)a3 forScrollingToItemAtIndexPath:(id)a4 atScrollPosition:(unint64_t)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  if (a5 == 4)
  {
    v20 = [(UICollectionViewTableLayout *)self _floatingElementKinds];
    v21 = [v20 count];

    if (v21)
    {
      [(UICollectionViewTableLayout *)self _visibleRect];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      -[UITableViewRowData floatingRectForFooterInSection:visibleRect:heightCanBeGuessed:outIsFloating:outVisibleRectDisplacement:](self->_rowData, [v9 section], 0, 0, 0, v22, v24, v26, v28);
      v31 = v30;
      v33 = v32;
      v38.origin.x = v23;
      v38.origin.y = v25;
      v38.size.width = v27;
      v38.size.height = v29;
      if (y + CGRectGetHeight(v38) > v31)
      {
        y = y + v33;
      }
    }

    else
    {
      v34 = [v9 item];
      if (v34 == -[UITableViewRowData numberOfRowsInSection:](self->_rowData, [v9 section]) - 1)
      {
        y = y + -[UITableViewRowData heightForFooterInSection:canGuess:](self->_rowData, [v9 section], 0);
      }
    }
  }

  else if (a5 == 1)
  {
    v10 = [(UICollectionViewTableLayout *)self _floatingElementKinds];
    v11 = [v10 count];

    if (v11)
    {
      rowData = self->_rowData;
      v13 = [v9 section];
      [(UICollectionViewTableLayout *)self _visibleRect];
      [(UITableViewRowData *)rowData floatingRectForHeaderInSection:v13 visibleRect:0 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:v14, v15, v16, v17];
      if (y < v19 + v18)
      {
        y = y - v18;
      }
    }

    else if (![v9 item])
    {
      y = y - -[UITableViewRowData heightForHeaderInSection:canGuess:](self->_rowData, [v9 section], 0);
    }
  }

  v35 = x;
  v36 = y;
  result.y = v36;
  result.x = v35;
  return result;
}

- (BOOL)_estimatesSizes
{
  if ([(UICollectionViewTableLayout *)self _estimatesRowHeights]|| [(UICollectionViewTableLayout *)self _estimatesSectionHeaderHeights])
  {
    return 1;
  }

  return [(UICollectionViewTableLayout *)self _estimatesSectionFooterHeights];
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UICollectionViewTableLayout *)self _estimatesSizes];
  [v6 representedElementCategory];
  [v7 size];
  v10 = v9;
  v12 = v11;

  [v6 size];
  v14 = v13;
  v16 = v15;

  v17 = v10 != v14;
  if (v12 != v16)
  {
    v17 = 1;
  }

  return v8 && v17;
}

- (id)_indexPathsBelowIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_indexPathCache count];
  v6 = v5;
  if (self->_indexPathCache)
  {
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    rowData = self->_rowData;
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0];
    v9 = [(UITableViewRowData *)rowData _indexPathsBelowIndexPath:v8];
    v10 = [v9 mutableCopy];
    indexPathCache = self->_indexPathCache;
    self->_indexPathCache = v10;

    if (v6)
    {
      goto LABEL_11;
    }
  }

  if ([(NSMutableArray *)self->_indexPathCache count])
  {
    v12 = 0;
    do
    {
      v13 = [(NSMutableArray *)self->_indexPathCache objectAtIndexedSubscript:v12];
      if ([v13 length] == 2 && objc_msgSend(v13, "row") == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = [MEMORY[0x1E696AC88] indexPathWithIndex:{objc_msgSend(v13, "section")}];
        [(NSMutableArray *)self->_indexPathCache setObject:v14 atIndexedSubscript:v12];
      }

      ++v12;
    }

    while (v12 < [(NSMutableArray *)self->_indexPathCache count]);
  }

LABEL_11:
  v15 = [(NSMutableArray *)self->_indexPathCache indexOfObject:v4];
  if (v15 == 9.22337204e18)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v15;
  }

  v17 = [(NSMutableArray *)self->_indexPathCache count]- v16;
  if (v17 < 0.0)
  {
    v17 = [(NSMutableArray *)self->_indexPathCache count];
  }

  v18 = [(NSMutableArray *)self->_indexPathCache subarrayWithRange:v16, v17];

  return v18;
}

- (void)_invalidateIndexPathsBelowIndexPath:(id)a3 withInvalidationContext:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  v20 = v6;
  v11 = [(UICollectionViewTableLayout *)self _indexPathsBelowIndexPath:v6];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v16 length];
        v18 = v8;
        if (v17 == 2)
        {
          goto LABEL_7;
        }

        if ([v16 length] == 1)
        {
          if (-[UICollectionViewTableLayout _shouldHaveHeaderViewForSection:](self, "_shouldHaveHeaderViewForSection:", [v16 section]))
          {
            [v9 addObject:v16];
          }

          v19 = -[UICollectionViewTableLayout _shouldHaveFooterViewForSection:](self, "_shouldHaveFooterViewForSection:", [v16 section]);
          v18 = v10;
          if (v19)
          {
LABEL_7:
            [v18 addObject:v16];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  [v7 invalidateItemsAtIndexPaths:v8];
  [v7 invalidateSupplementaryElementsOfKind:@"UICollectionElementKindSectionHeader" atIndexPaths:v9];
  [v7 invalidateSupplementaryElementsOfKind:@"UICollectionElementKindSectionFooter" atIndexPaths:v10];
}

- (id)invalidationContextForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(UICollectionViewTableLayoutInvalidationContext);
  v9 = [v6 indexPath];
  [v7 size];
  v11 = v10;

  [v6 size];
  v13 = v12;
  if (![v6 representedElementCategory])
  {
    v16 = &OBJC_IVAR___UICollectionViewTableLayout__preferredAttributesCache;
    if (vabdd_f64(v11, v13) > 2.22044605e-16)
    {
      [(UITableViewRowData *)self->_rowData setHeight:v9 forRowAtIndexPath:v11];
    }

    goto LABEL_8;
  }

  if ([v6 representedElementCategory] != 1)
  {
    goto LABEL_9;
  }

  v14 = [v6 representedElementKind];
  v15 = [v14 isEqualToString:@"UICollectionElementKindSectionHeader"];

  if (v15)
  {
    v16 = &OBJC_IVAR___UICollectionViewTableLayout__headerPreferredAttributesCache;
    if (vabdd_f64(v11, v13) > 2.22044605e-16)
    {
      -[UITableViewRowData setHeight:forHeaderInSection:](self->_rowData, [v9 section], v11);
    }

LABEL_8:
    [*(&self->super.super.isa + *v16) addObject:v9];
    goto LABEL_9;
  }

  v18 = [v6 representedElementKind];
  v19 = [v18 isEqualToString:@"UICollectionElementKindSectionFooter"];

  if (v19)
  {
    v16 = &OBJC_IVAR___UICollectionViewTableLayout__footerPreferredAttributesCache;
    if (vabdd_f64(v11, v13) > 2.22044605e-16)
    {
      -[UITableViewRowData setHeight:forFooterInSection:](self->_rowData, [v9 section], v11);
    }

    goto LABEL_8;
  }

LABEL_9:
  [(UICollectionViewTableLayout *)self _invalidateIndexPathsBelowIndexPath:v9 withInvalidationContext:v8];
  [(UICollectionViewTableLayoutInvalidationContext *)v8 setSkipSectionInvalidation:1];

  return v8;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v34 = *MEMORY[0x1E69E9840];
  v8 = [(UICollectionViewLayout *)self collectionView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v17 = CGRectGetWidth(v35);
  v36.origin.x = v10;
  v36.origin.y = v12;
  v36.size.width = v14;
  v36.size.height = v16;
  if (v17 != CGRectGetWidth(v36))
  {
    return 1;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v32[0] = @"UICollectionElementKindSectionHeader";
  v32[1] = @"UICollectionElementKindSectionFooter";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:{2, 0}];
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v28 + 1) + 8 * i);
        if ([(NSSet *)self->_floatingElementKinds containsObject:v24])
        {
          v25 = [(UICollectionViewLayout *)self collectionView];
          v26 = [v25 _hasRegisteredClassOrNibForSupplementaryViewOfKind:v24];

          if (v26)
          {
            v18 = 1;
            goto LABEL_14;
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = UICollectionViewTableLayout;
  x = a3.origin.x;
  v38 = a3.origin.x;
  y = a3.origin.y;
  v5 = a3.origin.y;
  width = a3.size.width;
  v42 = a3.size.width;
  obja = a3.size.height;
  height = a3.size.height;
  v8 = [(UICollectionViewLayout *)&v50 invalidationContextForBoundsChange:?];
  v9 = [(UICollectionViewLayout *)self collectionView];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v55.origin.x = v11;
  v55.origin.y = v13;
  v55.size.width = v15;
  v55.size.height = v17;
  v59.origin.x = x;
  v59.origin.y = v5;
  v59.size.width = width;
  v59.size.height = height;
  v56 = CGRectUnion(v55, v59);
  v18 = v56.origin.x;
  v19 = v56.origin.y;
  v20 = v56.size.width;
  v21 = v56.size.height;
  [(UICollectionViewTableLayout *)self _contentInset];
  v40 = [(UICollectionViewTableLayout *)self _sectionRangeForBounds:v18 + v25, v19 + v22, v20 - (v25 + v23), v21 - (v22 + v24)];
  v41 = v26;
  v57.origin.x = v11;
  v57.origin.y = v13;
  v57.size.width = v15;
  v57.size.height = v17;
  v27 = CGRectGetWidth(v57);
  v58.origin.x = v38;
  v58.origin.y = y;
  v58.size.width = v42;
  v58.size.height = obja;
  if (v27 != CGRectGetWidth(v58))
  {
    [v8 _setInvalidateEverything:1];
  }

  if (v41)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v51[0] = @"UICollectionElementKindSectionHeader";
    v51[1] = @"UICollectionElementKindSectionFooter";
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v28 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v47;
      do
      {
        v31 = 0;
        v43 = v29;
        do
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v46 + 1) + 8 * v31);
          if ([(NSSet *)self->_floatingElementKinds containsObject:v32])
          {
            v33 = [MEMORY[0x1E695DF70] array];
            v34 = v41;
            v35 = v40;
            if (v40 < v40 + v41)
            {
              do
              {
                if ([(UICollectionViewTableLayout *)self _shouldHaveViewForElementOfKind:v32 atSection:v35 useRowData:1])
                {
                  v36 = [MEMORY[0x1E696AC88] indexPathWithIndex:v35];
                  [v33 addObject:v36];
                }

                ++v35;
                --v34;
              }

              while (v34);
            }

            if ([v33 count])
            {
              [v8 invalidateSupplementaryElementsOfKind:v32 atIndexPaths:v33];
            }

            v29 = v43;
          }

          ++v31;
        }

        while (v31 != v29);
        v29 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v29);
    }
  }

  return v8;
}

- (id)invalidationContextForInteractivelyMovingItems:(id)a3 withTargetPosition:(CGPoint)a4 previousIndexPaths:(id)a5 previousPosition:(CGPoint)a6
{
  v8.receiver = self;
  v8.super_class = UICollectionViewTableLayout;
  v6 = [(UICollectionViewLayout *)&v8 invalidationContextForInteractivelyMovingItems:a3 withTargetPosition:a5 previousIndexPaths:a4.x previousPosition:a4.y, a6.x, a6.y];
  [v6 _setInvalidateDataSourceCounts:1];

  return v6;
}

- (id)_invalidationContextForUpdatedLayoutMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v12.receiver = self;
  v12.super_class = UICollectionViewTableLayout;
  v8 = [(UICollectionViewLayout *)&v12 _invalidationContextForUpdatedLayoutMargins:?];
  v9 = v8;
  p_previousLayoutMargins = &self->_previousLayoutMargins;
  if (vabdd_f64(p_previousLayoutMargins->left, left) > 2.22044605e-16 || vabdd_f64(p_previousLayoutMargins->right, right) > 2.22044605e-16)
  {
    [v8 _setInvalidateEverything:1];
  }

  p_previousLayoutMargins->top = top;
  p_previousLayoutMargins->left = left;
  p_previousLayoutMargins->bottom = bottom;
  p_previousLayoutMargins->right = right;

  return v9;
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 invalidateEverything] & 1) != 0 || (objc_msgSend(v4, "invalidateDataSourceCounts") & 1) != 0 || objc_msgSend(v4, "invalidateTableLayoutDelegateMetrics"))
  {
    [(UITableViewRowData *)self->_rowData invalidateAllSections];
    if (self->_deletedIndexPath)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v5 = [v4 _updateItems];
      v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v31;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v31 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v30 + 1) + 8 * i);
            if ([v10 updateAction] == 1)
            {
              v11 = [v10 indexPathBeforeUpdate];
              v12 = [v11 isEqual:self->_deletedIndexPath];

              if (v12)
              {
                v13 = 0;
                goto LABEL_17;
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v13 = 1;
LABEL_17:

      v14 = [v4 invalidateEverything];
      if ((v13 & 1) == 0 && !v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      [v4 invalidateEverything];
    }

    [(UISwipeActionController *)self->_swipeActionController resetSwipedItemAnimated:0 completion:0];
LABEL_20:
    [(NSMutableArray *)self->_indexPathCache removeAllObjects];
    [(NSMutableSet *)self->_preferredAttributesCache removeAllObjects];
    [(NSMutableSet *)self->_headerPreferredAttributesCache removeAllObjects];
    [(NSMutableSet *)self->_footerPreferredAttributesCache removeAllObjects];
    goto LABEL_21;
  }

  if (([v4 skipSectionInvalidation] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AD50] indexSet];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = [v4 invalidatedItemIndexPaths];
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [v15 addIndex:{objc_msgSend(*(*(&v26 + 1) + 8 * j), "section")}];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __59__UICollectionViewTableLayout_invalidateLayoutWithContext___block_invoke;
    v25[3] = &unk_1E70F3B48;
    v25[4] = self;
    [v15 enumerateIndexesUsingBlock:v25];
  }

  v21 = [v4 invalidatedSupplementaryIndexPaths];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __59__UICollectionViewTableLayout_invalidateLayoutWithContext___block_invoke_2;
  v23[3] = &unk_1E70FEA00;
  v23[4] = self;
  v24 = v4;
  [v21 enumerateKeysAndObjectsUsingBlock:v23];

LABEL_21:
  v22.receiver = self;
  v22.super_class = UICollectionViewTableLayout;
  [(UICollectionViewLayout *)&v22 invalidateLayoutWithContext:v4];
}

void __59__UICollectionViewTableLayout_invalidateLayoutWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isEqualToString:@"UICollectionElementKindGlobalHeader"])
  {
    v27 = v3;
    [*(a1 + 32) _heightForTableHeader];
    v5 = v4;
    v6 = [(UITableViewRowData *)*(*(a1 + 32) + 536) heightForTableHeaderView];
    [(UITableViewRowData *)*(*(a1 + 32) + 536) tableHeaderHeightDidChangeToHeight:v5];
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 536);
    v9 = [(UITableViewRowData *)v8 rectForTable];
    v13 = [(UITableViewRowData *)v8 indexPathsForRowsInRect:v9, v10, v11, v12];
    [v7 invalidateItemsAtIndexPaths:v13];

    v14 = [*(a1 + 32) _numberOfSections];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34[0] = @"UICollectionElementKindSectionHeader";
    v34[1] = @"UICollectionElementKindSectionFooter";
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v15 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        v18 = 0;
        v28 = v16;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v30 + 1) + 8 * v18);
          if ([*(*(a1 + 32) + 272) containsObject:v19])
          {
            v20 = [MEMORY[0x1E695DF70] array];
            if (v14)
            {
              for (i = 0; i != v14; ++i)
              {
                if ([*(a1 + 32) _shouldHaveViewForElementOfKind:v19 atSection:i useRowData:1])
                {
                  v22 = [MEMORY[0x1E696AC88] indexPathWithIndex:i];
                  [v20 addObject:v22];
                }
              }
            }

            if ([v20 count])
            {
              [*(a1 + 40) invalidateSupplementaryElementsOfKind:v19 atIndexPaths:v20];
            }

            v16 = v28;
          }

          ++v18;
        }

        while (v18 != v16);
        v16 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v16);
    }

    v23 = v5 - v6;

    v3 = v27;
  }

  else
  {
    if (![v3 isEqualToString:@"UICollectionElementKindGlobalFooter"])
    {
      goto LABEL_24;
    }

    [*(a1 + 32) _heightForTableFooter];
    v25 = v24;
    v23 = v24 - [(UITableViewRowData *)*(*(a1 + 32) + 536) heightForTableFooterView];
    v26 = *(*(a1 + 32) + 536);
    if (v26)
    {
      *(v26 + 104) = v25;
    }
  }

  if (v23 != 0.0)
  {
    [*(a1 + 40) setContentSizeAdjustment:{*MEMORY[0x1E695F060], v23}];
  }

LABEL_24:
}

- (id)_layoutAttributesForCellWithIndexPath:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
  [objc_opt_class() applyValuesFromAttributes:self toAttributes:v5 valueOptions:3];
  v6 = [(UICollectionViewTableLayout *)self _editingStyleForRowAtIndexPath:v4];
  v7 = [(UICollectionViewTableLayout *)self _shouldIndentWhileEditingForRowAtIndexPath:v4];
  v8 = [(UICollectionViewTableLayout *)self _canReorderRowAtIndexPath:v4];
  [v5 setAccessoryType:0];
  [v5 setSectionLocation:{-[UITableViewRowData sectionLocationForRow:inSection:](self->_rowData, objc_msgSend(v4, "row"), objc_msgSend(v4, "section"))}];
  [v5 setEditingStyle:v6];
  [v5 setShouldIndentWhileEditing:v7];
  [v5 setShowsReorderControl:v8];
  [v5 setLayoutMarginsFollowReadableWidth:{-[UICollectionViewTableLayout cellLayoutMarginsFollowReadableWidth](self, "cellLayoutMarginsFollowReadableWidth")}];
  [v5 setInsetsContentViewsToSafeArea:{-[UICollectionViewTableLayout insetsContentViewsToSafeArea](self, "insetsContentViewsToSafeArea")}];
  [v5 setSeparatorInsetIsRelativeToCellEdges:{-[UICollectionViewTableLayout separatorInsetIsRelativeToCellEdges](self, "separatorInsetIsRelativeToCellEdges")}];
  v9 = [(UICollectionViewTableLayout *)self _constants];
  [v9 defaultLeadingCellMarginWidthForTableView:self];
  [v5 setDefaultLeadingCellMarginWidth:?];

  v10 = [(UICollectionViewTableLayout *)self _constants];
  [v10 defaultTrailingCellMarginWidthForTableView:self];
  [v5 setDefaultTrailingCellMarginWidth:?];

  [(UICollectionViewTableLayout *)self _indexBarExtentFromEdge];
  [v5 setIndexBarExtentFromEdge:?];
  [(UICollectionViewTableLayout *)self _sectionContentInset];
  [v5 setBackgroundInset:?];
  [v5 setIndentationLevel:{-[UICollectionViewTableLayout _indentationLevelForRowAtIndexPath:](self, "_indentationLevelForRowAtIndexPath:", v4)}];
  [v5 setDrawsSeparatorAtTopOfSection:{-[UICollectionViewTableLayout _shouldDrawSeparatorAtTop:ofSection:](self, "_shouldDrawSeparatorAtTop:ofSection:", 1, objc_msgSend(v4, "section"))}];
  [v5 setDrawsSeparatorAtBottomOfSection:{-[UICollectionViewTableLayout _shouldDrawSeparatorAtTop:ofSection:](self, "_shouldDrawSeparatorAtTop:ofSection:", 0, objc_msgSend(v4, "section"))}];
  v11 = [(NSMutableSet *)self->_preferredAttributesCache containsObject:v4];

  [v5 setPreferredAttributesCached:v11];

  return v5;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4
{
  v9.receiver = self;
  v9.super_class = UICollectionViewTableLayout;
  v5 = [(UICollectionViewLayout *)&v9 layoutAttributesForInteractivelyMovingItemAtIndexPath:a3 withTargetPosition:a4.x, a4.y];
  [v5 setSeparatorStyle:0];
  v6 = +[UIColor clearColor];
  [v5 setBackgroundColor:v6];

  v7 = [(UICollectionViewTableLayout *)self _constants];
  [v7 defaultAlphaForReorderingCell];
  [v5 setAlpha:?];

  return v5;
}

- (id)_layoutAttributesForViewElementKind:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"UICollectionElementKindGlobalHeader"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"UICollectionElementKindGlobalFooter"))
  {
    v5 = [objc_opt_class() layoutAttributesClass];
    v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:0];
    v7 = [v5 layoutAttributesForSupplementaryViewOfKind:v4 withIndexPath:v6];

    v8 = [v4 isEqualToString:@"UICollectionElementKindGlobalHeader"];
    rowData = self->_rowData;
    if (v8)
    {
      v10 = [(UITableViewRowData *)rowData rectForTableHeaderView];
    }

    else
    {
      v10 = [(UITableViewRowData *)rowData rectForTableFooterView];
    }

    [v7 setFrame:v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_layoutAttributesForSectionElementKind:(id)a3 atSection:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 isEqualToString:@"UICollectionElementKindSectionHeader"];
  if (((v7 & 1) != 0 || [v6 isEqualToString:@"UICollectionElementKindSectionFooter"]) && -[UICollectionViewTableLayout _numberOfSections](self, "_numberOfSections") > a4)
  {
    v8 = [objc_opt_class() layoutAttributesClass];
    v9 = [MEMORY[0x1E696AC88] indexPathWithIndex:a4];
    v10 = [v8 layoutAttributesForSupplementaryViewOfKind:v6 withIndexPath:v9];

    [v10 setIsHeader:v7];
    [(UICollectionViewTableLayout *)self _headerFooterLeadingMarginWidthIsHeader:v7 isFirstSection:a4 == 0];
    [v10 setMargins:{0.0, v11, 0.0, v11}];
    v12 = [MEMORY[0x1E696AC88] indexPathWithIndex:a4];
    v13 = [v10 isHeader];
    rowData = self->_rowData;
    if (v13)
    {
      [v10 setMaxTitleWidth:{-[UITableViewRowData maxHeaderTitleWidthForSection:](rowData, a4)}];
      v15 = [(UITableViewRowData *)self->_rowData headerAlignmentForSection:a4];
      v16 = &OBJC_IVAR___UICollectionViewTableLayout__headerPreferredAttributesCache;
    }

    else
    {
      [v10 setMaxTitleWidth:{-[UITableViewRowData maxFooterTitleWidthForSection:](rowData, a4)}];
      v15 = [(UITableViewRowData *)self->_rowData footerAlignmentForSection:a4];
      v16 = &OBJC_IVAR___UICollectionViewTableLayout__footerPreferredAttributesCache;
    }

    [v10 setTextAlignment:v15];
    [v10 setPreferredAttributesCached:{objc_msgSend(*(&self->super.super.isa + *v16), "containsObject:", v12)}];
    [v10 setZIndex:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_layoutAttributesForSeparatorWithIndexPath:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];

  v6 = [(UICollectionViewTableLayout *)self separatorColor];
  [v5 setSeparatorColor:v6];

  [v5 setSeparatorStyle:{-[UICollectionViewTableLayout separatorStyle](self, "separatorStyle")}];
  v7 = [(UICollectionViewTableLayout *)self separatorEffect];
  [v5 setSeparatorEffect:v7];

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v91 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(UICollectionViewTableLayout *)self _numberOfSections];
  v6 = [(UICollectionViewLayout *)self collectionView];
  [v6 bounds];
  v77 = v8;
  v78 = v7;
  rect = v9;
  v79 = v10;

  if (v5 >= 1)
  {
    v11 = [(UITableViewRowData *)&self->_rowData->super.isa globalRowsInRect:a3.origin.x canGuess:a3.origin.y, a3.size.width, a3.size.height];
    if (v11 < v11 + v12)
    {
      v13 = v11;
      v14 = v12;
      do
      {
        v15 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:v13];
        v16 = [(UICollectionViewTableLayout *)self _layoutAttributesForCellWithIndexPath:v15];
        v20 = [(UITableViewRowData *)&self->_rowData->super.isa rectForGlobalRow:v13 heightCanBeGuessed:1];
        v21 = v17;
        v22 = v18;
        v23 = v19;
        if (fabs(self->_memoizedScale) >= 2.22044605e-16)
        {
          memoizedScale = self->_memoizedScale;
        }

        else
        {
          memoizedScale = 1.0;
        }

        v25 = v20;
        v26 = round(CGRectGetMinX(*(&v17 - 1)) * memoizedScale) / memoizedScale;
        v93.origin.x = v20;
        v93.origin.y = v21;
        v93.size.width = v22;
        v93.size.height = v23;
        v27 = round(CGRectGetMinY(v93) * memoizedScale) / memoizedScale;
        v94.origin.x = v20;
        v94.origin.y = v21;
        v94.size.width = v22;
        v94.size.height = v23;
        v28 = round(memoizedScale * CGRectGetWidth(v94)) / memoizedScale;
        v95.origin.x = v20;
        v95.origin.y = v21;
        v95.size.width = v22;
        v95.size.height = v23;
        [v16 setFrame:{v26, v27, v28, round(memoizedScale * CGRectGetHeight(v95)) / memoizedScale}];
        [v4 addObject:v16];

        ++v13;
        --v14;
      }

      while (v14);
    }

    v29 = [(UICollectionViewTableLayout *)self _sectionRangeForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    v80 = v30;
    [(UICollectionViewTableLayout *)self _visibleRect];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89[0] = @"UICollectionElementKindSectionHeader";
    v89[1] = @"UICollectionElementKindSectionFooter";
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
    v39 = [obj countByEnumeratingWithState:&v85 objects:v90 count:16];
    if (v39)
    {
      v40 = v39;
      v82 = *v86;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v86 != v82)
          {
            objc_enumerationMutation(obj);
          }

          if (v29 < v29 + v80)
          {
            v42 = *(*(&v85 + 1) + 8 * i);
            v43 = v80;
            v44 = v29;
            do
            {
              if ([(UICollectionViewTableLayout *)self _shouldHaveViewForElementOfKind:v42 atSection:v44 useRowData:1])
              {
                LOBYTE(v84) = 0;
                [(UICollectionViewTableLayout *)self _frameForSectionElementKind:v42 atSection:v44 visibleRect:&v84 floating:1 canGuess:v32, v34, v36, v38];
                x = v96.origin.x;
                y = v96.origin.y;
                width = v96.size.width;
                height = v96.size.height;
                if (CGRectIntersectsRect(v96, a3))
                {
                  v49 = [(UICollectionViewTableLayout *)self _layoutAttributesForSectionElementKind:v42 atSection:v44];
                  [v49 setFrame:{x, y, width, height}];
                  [v49 setFloating:LOBYTE(v84)];
                  [v4 addObject:v49];
                }
              }

              ++v44;
              --v43;
            }

            while (v43);
          }
        }

        v40 = [obj countByEnumeratingWithState:&v85 objects:v90 count:16];
      }

      while (v40);
    }
  }

  v97.origin.x = [(UITableViewRowData *)self->_rowData rectForTableHeaderView];
  v50 = v97.origin.x;
  v51 = v97.origin.y;
  v52 = v97.size.width;
  v53 = v97.size.height;
  if (!CGRectIsEmpty(v97))
  {
    v101.origin.x = v50;
    v101.origin.y = v51;
    v101.size.width = v52;
    v101.size.height = v53;
    if (CGRectIntersectsRect(a3, v101))
    {
      if ([(UICollectionViewTableLayout *)self _shouldHaveGlobalViewForElementOfKind:@"UICollectionElementKindGlobalHeader"])
      {
        v54 = [(UICollectionViewTableLayout *)self _layoutAttributesForViewElementKind:@"UICollectionElementKindGlobalHeader"];
        if (v54)
        {
          [v4 addObject:v54];
        }
      }
    }
  }

  v98.origin.x = [(UITableViewRowData *)self->_rowData rectForTableFooterView];
  v55 = v98.origin.x;
  v56 = v98.origin.y;
  v57 = v98.size.width;
  v58 = v98.size.height;
  if (!CGRectIsEmpty(v98))
  {
    v102.origin.x = v55;
    v102.origin.y = v56;
    v102.size.width = v57;
    v102.size.height = v58;
    if (CGRectIntersectsRect(a3, v102))
    {
      if ([(UICollectionViewTableLayout *)self _shouldHaveGlobalViewForElementOfKind:@"UICollectionElementKindGlobalFooter"])
      {
        v59 = [(UICollectionViewTableLayout *)self _layoutAttributesForViewElementKind:@"UICollectionElementKindGlobalFooter"];
        if (v59)
        {
          [v4 addObject:v59];
        }
      }
    }
  }

  v60 = [(UITableViewRowData *)self->_rowData heightForTable];
  v99.origin.y = v77;
  v99.origin.x = v78;
  v99.size.width = rect;
  v99.size.height = v79;
  if (v60 < CGRectGetHeight(v99))
  {
    if (self->_separatorStyle)
    {
      v84 = 0.0;
      if ([(UICollectionViewTableLayout *)self _shouldDisplayExtraSeparatorsAtOffset:&v84])
      {
        v61 = floor(v79 * 1.5);
        if (CGRectGetMaxY(*MEMORY[0x1E695F058]) < v61)
        {
          v62 = 0;
          do
          {
            v63 = v62 + 1;
            v64 = [MEMORY[0x1E696AC88] indexPathWithIndex:?];
            [(UICollectionViewTableLayout *)self _extraSeparatorFrameForIndexPath:v64 offset:v84];
            v66 = v65;
            v68 = v67;
            v70 = v69;
            v72 = v71;
            v73 = [(UICollectionViewTableLayout *)self _layoutAttributesForSeparatorWithIndexPath:v64];
            [v73 setFrame:{v66, v68, v70, v72}];
            [v4 addObject:v73];

            v100.origin.x = v66;
            v100.origin.y = v68;
            v100.size.width = v70;
            v100.size.height = v72;
            MaxY = CGRectGetMaxY(v100);
            v62 = v63;
          }

          while (MaxY < v61);
        }
      }
    }
  }

  return v4;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewTableLayout *)self _layoutAttributesForCellWithIndexPath:v4];
  rowData = self->_rowData;
  v7 = [v4 row];
  v8 = [v4 section];

  v12 = [(UITableViewRowData *)rowData rectForRow:v7 inSection:v8 heightCanBeGuessed:0];
  v13 = v9;
  v14 = v10;
  v15 = v11;
  if (fabs(self->_memoizedScale) >= 2.22044605e-16)
  {
    memoizedScale = self->_memoizedScale;
  }

  else
  {
    memoizedScale = 1.0;
  }

  v17 = v12;
  v18 = round(CGRectGetMinX(*(&v9 - 1)) * memoizedScale) / memoizedScale;
  v23.origin.x = v12;
  v23.origin.y = v13;
  v23.size.width = v14;
  v23.size.height = v15;
  v19 = round(CGRectGetMinY(v23) * memoizedScale) / memoizedScale;
  v24.origin.x = v12;
  v24.origin.y = v13;
  v24.size.width = v14;
  v24.size.height = v15;
  v20 = round(memoizedScale * CGRectGetWidth(v24)) / memoizedScale;
  v25.origin.x = v12;
  v25.origin.y = v13;
  v25.size.width = v14;
  v25.size.height = v15;
  [v5 setFrame:{v18, v19, v20, round(memoizedScale * CGRectGetHeight(v25)) / memoizedScale}];

  return v5;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToString:@"UICollectionElementKindSectionHeader"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"UICollectionElementKindSectionFooter"))
  {
    v8 = -[UICollectionViewTableLayout _layoutAttributesForSectionElementKind:atSection:](self, "_layoutAttributesForSectionElementKind:atSection:", v6, [v7 section]);
    if (v8)
    {
      v11 = 0;
      v9 = [v7 section];
      [(UICollectionViewTableLayout *)self _visibleRect];
      [(UICollectionViewTableLayout *)self _frameForSectionElementKind:v6 atSection:v9 visibleRect:&v11 floating:0 canGuess:?];
      [v8 setFrame:?];
      [v8 setFloating:v11];
    }
  }

  else if (([v6 isEqualToString:@"UICollectionElementKindGlobalHeader"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"UICollectionElementKindGlobalFooter"))
  {
    v8 = [(UICollectionViewTableLayout *)self _layoutAttributesForViewElementKind:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  if ([a3 isEqualToString:@"UICollectionElementKindSeparator"])
  {
    v7 = [(UICollectionViewTableLayout *)self _layoutAttributesForSeparatorWithIndexPath:v6];
    v9 = 0.0;
    if ([(UICollectionViewTableLayout *)self _shouldDisplayExtraSeparatorsAtOffset:&v9])
    {
      [(UICollectionViewTableLayout *)self _extraSeparatorFrameForIndexPath:v6 offset:v9];
      [v7 setFrame:?];
    }

    else
    {
      [v7 setAlpha:0.0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldApplyReadableWidthInsets
{
  v3 = [(UICollectionViewTableLayout *)self cellLayoutMarginsFollowReadableWidth];
  if (v3)
  {
    v4 = [(UICollectionViewLayout *)self collectionView];
    v5 = [v4 _safeAreaWidthExceedsReadableWidth];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (CGRect)_extraSeparatorFrameForIndexPath:(id)a3 offset:(double)a4
{
  rowData = self->_rowData;
  v6 = a3;
  v7 = _UITableRowHeightForExtraSeparators(self, rowData, 0.0);
  v8 = [v6 indexAtPosition:0];

  v9 = [(UICollectionViewLayout *)self collectionView];
  [v9 bounds];
  v45 = v11;
  v46 = v10;
  v43 = v13;
  v44 = v12;

  v14 = [(UICollectionViewLayout *)self collectionView];
  v15 = [v14 _shouldReverseLayoutDirection];

  [(UICollectionViewTableLayout *)self _indexBarExtentFromEdge];
  v17 = v16;
  v18 = [(UICollectionViewLayout *)self collectionView];
  [v18 directionalLayoutMargins];
  v42 = v19;
  v21 = v20;

  v22 = [(UICollectionViewLayout *)self collectionView];
  v23 = [v22 traitCollection];
  v24 = _UISeparatorThicknessForTraitCollection(v23);

  left = self->_separatorInset.left;
  right = self->_separatorInset.right;
  v27 = [(UICollectionViewTableLayout *)self _metricsAdapter];
  [(UITableMetricsAdapter *)v27 defaultTableLayoutMargins];
  v29 = v28;

  v30 = [(UICollectionViewTableLayout *)self _shouldApplyReadableWidthInsets];
  v31 = [(UICollectionViewTableLayout *)self separatorInsetIsRelativeToCellEdges];
  v32 = v31;
  if (left != -1.0)
  {
    v29 = left;
    if (!v31)
    {
      if (v30 | dyld_program_sdk_at_least())
      {
        v29 = v42 + left;
      }

      else
      {
        v29 = left;
      }
    }
  }

  v33 = v17 + right;
  v34 = fmax(v21, v17) + right;
  if (v30)
  {
    v33 = v34;
  }

  if (v32)
  {
    v33 = right;
  }

  v35 = fmax(v17, v21);
  if (!v30)
  {
    v35 = v17;
  }

  if (right == -1.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = v33;
  }

  v48.origin.y = v45;
  v48.origin.x = v46;
  v48.size.height = v43;
  v48.size.width = v44;
  Width = CGRectGetWidth(v48);
  v38 = v7 + v7 * v8 + a4 - v24;
  v39 = Width - (v29 + v36);
  if (v15)
  {
    v40 = v36;
  }

  else
  {
    v40 = v29;
  }

  v41 = v24;
  result.size.height = v41;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v40;
  return result;
}

- (BOOL)_shouldDisplayExtraSeparatorsAtOffset:(double *)a3
{
  if (!self->_showsAdditionalSeparators)
  {
    return 0;
  }

  v5 = [(UITableViewRowData *)self->_rowData numberOfRows];
  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:?];
    v7 = [v6 section];
  }

  rowData = self->_rowData;
  if (rowData)
  {
    numSections = rowData->_numSections;
  }

  else
  {
    numSections = 0;
  }

  if (v7 >= numSections)
  {
LABEL_12:
    v12.origin.x = [(UITableViewRowData *)rowData rectForTableFooterView];
    *a3 = CGRectGetMaxY(v12);
    return 1;
  }

  else
  {
    while (1)
    {
      v11.origin.x = [(UITableViewRowData *)self->_rowData rectForFooterInSection:v7 heightCanBeGuessed:1];
      if (CGRectGetHeight(v11) > 0.0)
      {
        return 0;
      }

      if (numSections == ++v7)
      {
        rowData = self->_rowData;
        goto LABEL_12;
      }
    }
  }
}

- (void)setSeparatorInsetIsRelativeToCellEdges:(BOOL)a3
{
  if (self->_separatorInsetIsRelativeToCellEdges != a3)
  {
    self->_separatorInsetIsRelativeToCellEdges = a3;
    [(UICollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setInsetsContentViewsToSafeArea:(BOOL)a3
{
  if (self->_insetsContentViewsToSafeArea != a3)
  {
    self->_insetsContentViewsToSafeArea = a3;
    [(UICollectionViewLayout *)self invalidateLayout];
  }
}

- (CGRect)_visibleRect
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UICollectionViewTableLayout *)self _contentInset];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 - (v12 + v16);
  v19 = v11 - (v14 + v18);

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = UICollectionViewTableLayout;
  [(UICollectionViewLayout *)&v20 prepareForCollectionViewUpdates:v4];
  v5 = [MEMORY[0x1E695DF70] array];
  [(UICollectionViewTableLayout *)self setDeleteIndexPaths:v5];

  v6 = [MEMORY[0x1E695DF70] array];
  [(UICollectionViewTableLayout *)self setInsertIndexPaths:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 updateAction] == 1)
        {
          v13 = [(UICollectionViewTableLayout *)self deleteIndexPaths];
          v14 = [v12 indexPathBeforeUpdate];
        }

        else
        {
          if ([v12 updateAction])
          {
            continue;
          }

          v13 = [(UICollectionViewTableLayout *)self insertIndexPaths];
          v14 = [v12 indexPathAfterUpdate];
        }

        v15 = v14;
        [v13 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    [(NSMutableArray *)self->_indexPathCache removeAllObjects];
  }
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = UICollectionViewTableLayout;
  [(UICollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
  [(UICollectionViewTableLayout *)self setDeleteIndexPaths:0];
  [(UICollectionViewTableLayout *)self setInsertIndexPaths:0];
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v3 = self;
  v8.receiver = self;
  v8.super_class = UICollectionViewTableLayout;
  v4 = a3;
  v5 = [(UICollectionViewLayout *)&v8 finalLayoutAttributesForDisappearingItemAtIndexPath:v4];
  v6 = [v5 copy];

  LODWORD(v3) = [(NSIndexPath *)v3->_deletedIndexPath isEqual:v4];
  if (v3)
  {
    [v6 setAlpha:1.0];
  }

  return v6;
}

- (CGSize)collectionViewContentSize
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  [v3 bounds];
  v5 = v4;

  v6 = [(UITableViewRowData *)self->_rowData heightForTable];
  v7 = v5;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setSeparatorInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_separatorInset.top), vceqq_f64(v4, *&self->_separatorInset.bottom)))) & 1) == 0)
  {
    self->_separatorInset = a3;
    [(UICollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setSeparatorColor:(id)a3
{
  v6 = a3;
  if (self->_separatorColor != v6)
  {
    v9 = v6;
    objc_storeStrong(&self->_separatorColor, a3);
    v7 = [(UICollectionViewLayout *)self collectionView];
    if (v7)
    {
      v3 = [(UICollectionViewLayout *)self collectionView];
      separatorColor = [v3 _accessibilityHigherContrastTintColorForColor:self->_separatorColor];
    }

    else
    {
      separatorColor = self->_separatorColor;
    }

    objc_storeStrong(&self->_darkenedSeparatorColor, separatorColor);
    if (v7)
    {
    }

    [(UICollectionViewTableLayout *)self _separatorColorChanged];
    v6 = v9;
  }
}

- (UIColor)separatorColor
{
  v3 = _AXDarkenSystemColors();
  v4 = 16;
  if (!v3)
  {
    v4 = 15;
  }

  v5 = *(&self->super.super.isa + OBJC_IVAR___UICollectionViewTableLayout__separatorInset[v4]);

  return v5;
}

- (void)setSeparatorStyle:(int64_t)a3
{
  if (self->_separatorStyle != a3)
  {
    self->_separatorStyle = a3;
    [(UICollectionViewLayout *)self invalidateLayout];
  }
}

- (UICollectionViewDelegateTableLayout)_delegateActual
{
  v2 = [(UICollectionViewLayout *)self collectionView];
  v3 = [v2 _delegateActual];

  return v3;
}

- (UICollectionViewDelegateTableLayout)_delegateProxy
{
  v2 = [(UICollectionViewLayout *)self collectionView];
  v3 = [v2 _delegateProxy];

  return v3;
}

- (UICollectionViewDataSourceTableLayout)_dataSourceActual
{
  v2 = [(UICollectionViewLayout *)self collectionView];
  v3 = [v2 _dataSourceActual];

  return v3;
}

- (int64_t)_accessoryTypeForCell:(id)a3 forRowAtIndexPath:(id)a4
{
  if (a4)
  {
    return [a3 accessoryType];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_canReorderRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewLayout *)self collectionView];
  v6 = [v5 _canReorderItemAtIndexPath:v4];

  return v6;
}

- (BOOL)_shouldIndentWhileEditingForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UICollectionViewTableLayout *)self _delegateActual];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(UICollectionViewTableLayout *)self _delegateProxy];
      v8 = [(UICollectionViewLayout *)self collectionView];
      v9 = [v7 collectionView:v8 tableLayout:self shouldIndentWhileEditingRowAtIndexPath:v4];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_indentationLevelForRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewTableLayout *)self _delegateActual];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v8 = [(UICollectionViewLayout *)self collectionView];
    v9 = [v7 collectionView:v8 tableLayout:self indentationLevelForRowAtIndexPath:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_editingStyleForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UICollectionViewTableLayout *)self _delegateActual];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(UICollectionViewTableLayout *)self _delegateProxy];
      v8 = [(UICollectionViewLayout *)self collectionView];
      v9 = [v7 collectionView:v8 tableLayout:self editingStyleForRowAtIndexPath:v4];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_shouldDrawTopSeparatorDueToMergedBarForSectionAtIndex:(int64_t)a3
{
  if ([(UICollectionViewTableLayout *)self _tableStyle])
  {
    return 0;
  }

  v5 = [(UICollectionViewLayout *)self collectionView];
  v6 = [v5 _shouldAdjustLayoutToDrawTopSeparator];

  if (!v6)
  {
    return 0;
  }

  v7 = [(UICollectionViewTableLayout *)self _tableHeaderView];

  if (v7 || ![(UITableViewRowData *)self->_rowData numberOfRows])
  {
    return 0;
  }

  v10 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:?];
  v11 = v10;
  if (v10 && [v10 section] == a3)
  {
    if (a3 < 0)
    {
      v8 = 1;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = [(UICollectionViewTableLayout *)self _shouldHaveHeaderViewForSection:v12];
        if (v13)
        {
          break;
        }
      }

      while (a3 != v12++);
      v8 = !v13;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_shouldDrawSeparatorAtTop:(BOOL)a3 ofSection:(int64_t)a4
{
  if (a3)
  {

    return [(UICollectionViewTableLayout *)self _shouldDrawTopSeparatorDueToMergedBarForSectionAtIndex:a4];
  }

  else
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:-[UICollectionViewTableLayout _numberOfRowsInSection:](self inSection:{"_numberOfRowsInSection:", a4) - 1, a4}];
    v7 = [(UICollectionViewTableLayout *)self _hasHeaderFooterBelowRowAtIndexPath:v6];

    return !v7;
  }
}

- (BOOL)_hasHeaderFooterBelowRowAtIndexPath:(id)a3
{
  v5 = [a3 section];
  v6 = [(UICollectionViewTableLayout *)self _numberOfSections];
  if (v5 >= v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [a3 row];
  if (v8 != [(UICollectionViewTableLayout *)self _numberOfRowsInSection:v5]- 1)
  {
    return 0;
  }

  v9 = 1;
  v13.origin.x = [(UITableViewRowData *)self->_rowData rectForFooterInSection:v5 heightCanBeGuessed:1];
  if (CGRectGetHeight(v13) <= 0.0)
  {
    v10 = v5 + 1;
    do
    {
      if (v7 == v10)
      {
        break;
      }

      v9 = 1;
      v14.origin.x = [(UITableViewRowData *)self->_rowData rectForHeaderInSection:v5 heightCanBeGuessed:1];
      if (CGRectGetHeight(v14) > 0.0)
      {
        return v9;
      }

      v11 = [(UICollectionViewTableLayout *)self _numberOfRowsInSection:v10++];
    }

    while (v11 < 1);
    return 0;
  }

  return v9;
}

- (CGRect)_frameForSectionElementKind:(id)a3 atSection:(int64_t)a4 visibleRect:(CGRect)a5 floating:(BOOL *)a6 canGuess:(BOOL)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a3;
  v16 = [v15 isEqualToString:@"UICollectionElementKindSectionHeader"];
  rowData = self->_rowData;
  if (v16)
  {
    v18 = [(UITableViewRowData *)rowData rectForHeaderInSection:a4 heightCanBeGuessed:a7];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(NSSet *)self->_floatingElementKinds containsObject:v15];

    if (!v25)
    {
      goto LABEL_10;
    }

    v26 = [(UITableViewRowData *)self->_rowData floatingRectForHeaderInSection:a4 visibleRect:a7 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:x, y, width, height];
  }

  else
  {
    v18 = [(UITableViewRowData *)rowData rectForFooterInSection:a4 heightCanBeGuessed:a7];
    v20 = v30;
    v22 = v31;
    v24 = v32;
    v33 = [(NSSet *)self->_floatingElementKinds containsObject:v15];

    if (!v33)
    {
      goto LABEL_10;
    }

    v26 = [(UITableViewRowData *)self->_rowData floatingRectForFooterInSection:a4 visibleRect:a7 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:x, y, width, height];
  }

  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v43.origin.x = v18;
  v43.origin.y = v20;
  v43.size.width = v22;
  v43.size.height = v24;
  if (!CGRectEqualToRect(*&v26, v43))
  {
    if (a6)
    {
      *a6 = 1;
    }

    v24 = v37;
    v22 = v36;
    v20 = v35;
    v18 = v34;
  }

LABEL_10:
  v38 = v18;
  v39 = v20;
  v40 = v22;
  v41 = v24;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (_NSRange)_sectionRangeForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UICollectionViewTableLayout *)self _numberOfSections];
  if (v8 < 1)
  {
    v18 = 0;
    v15 = 0;
  }

  else
  {
    v9 = v8;
    v10 = [(UITableViewRowData *)&self->_rowData->super.isa globalRowsInRect:x canGuess:y, width, height];
    v12 = v11;
    v13 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:v10];
    v14 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:?];
    v15 = [v13 section];
    v16 = [v14 section];
    v17 = [v13 section];
    if (v16 - v17 + 1 + v15 >= v9)
    {
      v18 = v16 - v17 + 1;
    }

    else
    {
      v18 = v16 - v17 + 2;
    }
  }

  v19 = v15;
  v20 = v18;
  result.length = v20;
  result.location = v19;
  return result;
}

- (id)swipeActionController:(id)a3 leadingSwipeConfigurationForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(UICollectionViewTableLayout *)self _delegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v9 = [(UICollectionViewLayout *)self collectionView];
    v10 = [v8 collectionView:v9 tableLayout:self leadingSwipeActionsConfigurationForRowAtIndexPath:v5];
    goto LABEL_6;
  }

  v11 = [(UICollectionViewTableLayout *)self _delegateActual];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v14 = [(UICollectionViewLayout *)self collectionView];
    v8 = [v13 collectionView:v14 tableLayout:self leadingSwipeActionsForRowAtIndexPath:v5];

    if (!v8)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v10 = [UISwipeActionsConfiguration configurationWithActions:v8];
    v9 = [v8 firstObject];
    [v10 setPerformsFirstActionWithFullSwipe:{objc_msgSend(v9, "canBeTriggeredBySwipe")}];
LABEL_6:

LABEL_7:
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)swipeActionController:(id)a3 trailingSwipeConfigurationForItemAtIndexPath:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(UICollectionViewTableLayout *)self _delegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v9 = [(UICollectionViewLayout *)self collectionView];
    v10 = [v8 collectionView:v9 tableLayout:self trailingSwipeActionsConfigurationForRowAtIndexPath:v5];
    goto LABEL_6;
  }

  v11 = [(UICollectionViewTableLayout *)self _delegateActual];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v14 = [(UICollectionViewLayout *)self collectionView];
    v8 = [v13 collectionView:v14 tableLayout:self trailingSwipeActionsForRowAtIndexPath:v5];

    if (v8)
    {
      v10 = [UISwipeActionsConfiguration configurationWithActions:v8];
      v9 = [v8 firstObject];
      [v10 setPerformsFirstActionWithFullSwipe:{objc_msgSend(v9, "canBeTriggeredBySwipe")}];
LABEL_6:

      if (v10)
      {
        goto LABEL_10;
      }
    }
  }

  if ([(UICollectionViewTableLayout *)self _editingStyleForRowAtIndexPath:v5]== 1)
  {
    v15 = [(UICollectionViewTableLayout *)self contextualActionForDeletingRowAtIndexPath:v5];
    v18[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v10 = [UISwipeActionsConfiguration configurationWithActions:v16];
  }

  else
  {
    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (int64_t)layoutDirectionForSwipeActionController:(id)a3
{
  v4 = dyld_program_sdk_at_least();
  v5 = [(UICollectionViewLayout *)self collectionView];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 effectiveUserInterfaceLayoutDirection];
  }

  else
  {
    v8 = [v5 traitCollection];
    v7 = [v8 layoutDirection];
  }

  return v7;
}

- (id)swipeActionController:(id)a3 indexPathForTouchLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [(UICollectionViewLayout *)self collectionView];
  v7 = [v6 indexPathForItemAtPoint:{x, y}];

  return v7;
}

- (id)swipeActionController:(id)a3 viewForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(UICollectionViewLayout *)self collectionView];
  v7 = [v6 cellForItemAtIndexPath:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)swipeActionController:(id)a3 willPerformAction:(id)a4 atIndexPath:(id)a5
{
  v9 = a5;
  if ([a4 style] == 1)
  {
    v7 = [v9 copy];
    deletedIndexPath = self->_deletedIndexPath;
    self->_deletedIndexPath = v7;
  }
}

- (void)swipeActionController:(id)a3 didCompleteAction:(id)a4 cancelled:(BOOL)a5 atIndexPath:(id)a6
{
  deletedIndexPath = self->_deletedIndexPath;
  self->_deletedIndexPath = 0;
}

- (void)swipeActionController:(id)a3 animateView:(id)a4 actionsView:(id)a5 forDestructiveAction:(id)a6 atIndexPath:(id)a7 withSwipeInfo:(id *)a8 completion:(id)a9
{
  v42 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  if ([v17 row] >= 1)
  {
    v19 = [(UICollectionViewLayout *)self collectionView];
    v20 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v17 inSection:{"item") - 1, objc_msgSend(v17, "section")}];
    v21 = [v19 cellForItemAtIndexPath:v20];

    v22 = [(UICollectionViewLayout *)self collectionView];
    [v22 bringSubviewToFront:v21];
  }

  v23 = [v14 tableViewCell];
  v24 = [v34 currentSwipeOccurrence];
  v25 = [v16 backgroundColor];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __135__UICollectionViewTableLayout_swipeActionController_animateView_actionsView_forDestructiveAction_atIndexPath_withSwipeInfo_completion___block_invoke;
  v39[3] = &unk_1E70F3608;
  v26 = v18;
  v40 = v26;
  v27 = _UITableAnimateSwipeDeletion(self, v17, v23, v15, v24, v25, v39, 0);

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = v27;
  v29 = [v28 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [v14 _trackAnimator:*(*(&v35 + 1) + 8 * v32++)];
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v30);
  }

  v33 = [(UICollectionViewLayout *)self collectionView];
  [v33 sendSubviewToBack:v14];
}

- (BOOL)swipeActionController:(id)a3 mayBeginSwipeForItemAtIndexPath:(id)a4
{
  v5 = a4;
  if (-[UICollectionViewTableLayout _wantsSwipes](self, "_wantsSwipes") && (-[UICollectionViewLayout collectionView](self, "collectionView"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 _canEditItemAtIndexPath:v5], v6, v7) && (-[UICollectionViewLayout collectionView](self, "collectionView"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "_reorderedItems"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, !v10))
  {
    v13 = [(UICollectionViewTableLayout *)self _delegateActual];
    if (objc_opt_respondsToSelector())
    {
      v11 = 1;
    }

    else
    {
      v14 = [(UICollectionViewTableLayout *)self _delegateActual];
      if (objc_opt_respondsToSelector())
      {
        v11 = 1;
      }

      else
      {
        v15 = [(UICollectionViewTableLayout *)self _delegateActual];
        if (objc_opt_respondsToSelector())
        {
          v11 = 1;
        }

        else
        {
          v16 = [(UICollectionViewTableLayout *)self _delegateActual];
          if (objc_opt_respondsToSelector())
          {
            v11 = 1;
          }

          else
          {
            v17 = [(UICollectionViewTableLayout *)self _delegateActual];
            v11 = objc_opt_respondsToSelector();
          }
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)swipeActionController:(id)a3 willBeginSwipeForItemAtIndexPath:(id)a4
{
  v9 = a4;
  v5 = [(UICollectionViewTableLayout *)self _delegateActual];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v8 = [(UICollectionViewLayout *)self collectionView];
    [v7 collectionView:v8 tableLayout:self willBeginEditingRowAtIndexPath:v9];
  }
}

- (void)swipeActionController:(id)a3 didEndSwipeForItemAtIndexPath:(id)a4
{
  v9 = a4;
  v5 = [(UICollectionViewTableLayout *)self _delegateActual];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v8 = [(UICollectionViewLayout *)self collectionView];
    [v7 collectionView:v8 tableLayout:self didEndEditingRowAtIndexPath:v9];
  }
}

- (id)swipeActionForDeletingRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = _UINSLocalizedStringWithDefaultValue(@"Delete", @"Delete");
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__UICollectionViewTableLayout_swipeActionForDeletingRowAtIndexPath___block_invoke;
  v9[3] = &unk_1E70FEA28;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [UISwipeAction swipeActionWithStyle:1 title:v5 handler:v9];

  return v7;
}

void __68__UICollectionViewTableLayout_swipeActionForDeletingRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _delegateActual];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = [*(a1 + 32) _delegateProxy];
    v4 = [*(a1 + 32) collectionView];
    [v5 collectionView:v4 tableLayout:*(a1 + 32) commitEditingStyle:1 forRowAtIndexPath:*(a1 + 40)];
  }
}

- (id)contextualActionForDeletingRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = _UINSLocalizedStringWithDefaultValue(@"Delete", @"Delete");
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__UICollectionViewTableLayout_contextualActionForDeletingRowAtIndexPath___block_invoke;
  v9[3] = &unk_1E70FEA50;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [UIContextualAction contextualActionWithStyle:1 title:v5 handler:v9];

  return v7;
}

void __73__UICollectionViewTableLayout_contextualActionForDeletingRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  v5 = [*(a1 + 32) _delegateActual];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) _delegateProxy];
    v8 = [*(a1 + 32) collectionView];
    [v7 collectionView:v8 tableLayout:*(a1 + 32) commitEditingStyle:1 forRowAtIndexPath:*(a1 + 40)];
  }

  v9[2](v9, v6 & 1);
}

- (BOOL)isEditing
{
  v2 = [(UICollectionViewLayout *)self collectionView];
  v3 = [v2 isEditing];

  return v3;
}

- (void)setEditing:(BOOL)a3
{
  [(UICollectionViewTableLayout *)self resetSwipedRowWithCompletion:0];

  [(UICollectionViewLayout *)self invalidateLayout];
}

- (BOOL)allowsMultipleSelection
{
  v2 = [(UICollectionViewLayout *)self collectionView];
  v3 = [v2 allowsMultipleSelection];

  return v3;
}

- (BOOL)allowsMultipleSelectionDuringEditing
{
  v2 = [(UICollectionViewLayout *)self collectionView];
  v3 = [v2 allowsMultipleSelectionDuringEditing];

  return v3;
}

- (UIEdgeInsets)_rawSeparatorInset
{
  top = self->_separatorInset.top;
  left = self->_separatorInset.left;
  bottom = self->_separatorInset.bottom;
  right = self->_separatorInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)_sectionContentInset
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  top = self->_sectionContentInset.top;
  left = self->_sectionContentInset.left;
  bottom = self->_sectionContentInset.bottom;
  right = self->_sectionContentInset.right;
  [v3 safeAreaInsets];
  if (top == -1.0)
  {
    top = 0.0;
  }

  v10 = left + v8;
  if (left == -1.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v10;
  }

  if (bottom == -1.0)
  {
    bottom = 0.0;
  }

  if (right == -1.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = right + v9;
  }

  [(UICollectionViewTableLayout *)self _tableContentInset];
  v14 = top + v13;
  v16 = v15 + v11;
  v18 = bottom + v17;
  v20 = v19 + v12;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (UIEdgeInsets)_rawSectionContentInset
{
  top = self->_sectionContentInset.top;
  left = self->_sectionContentInset.left;
  bottom = self->_sectionContentInset.bottom;
  right = self->_sectionContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)_indexBarExtentFromEdge
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  v4 = [v3 _shouldReverseLayoutDirection];

  v5 = [(UICollectionViewLayout *)self collectionView];
  [v5 accessoryInsets];
  v7 = v6;
  v9 = v8;

  if (v4)
  {
    return v7;
  }

  else
  {
    return v9;
  }
}

- (UIColor)backgroundColor
{
  v2 = [(UICollectionViewLayout *)self collectionView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionViewLayout *)self collectionView];
  [v5 setBackgroundColor:v4];
}

- (int64_t)_numberOfSections
{
  v2 = [(UICollectionViewLayout *)self collectionView];
  v3 = [v2 numberOfSections];

  return v3;
}

- (int64_t)_numberOfRowsInSection:(int64_t)a3
{
  v4 = [(UICollectionViewLayout *)self collectionView];
  v5 = [v4 numberOfItemsInSection:a3];

  return v5;
}

- (double)_headerFooterLeadingMarginWidthIsHeader:(BOOL)a3 isFirstSection:(BOOL)a4
{
  if (dyld_program_sdk_at_least())
  {
    v5 = [(UICollectionViewLayout *)self collectionView];
    v6 = [v5 _shouldReverseLayoutDirection];

    v7 = 8;
    if (v6)
    {
      v7 = 24;
    }

    v8 = *(&self->_sectionContentInset.top + v7);
    left = self->_separatorInset.left;
    v10 = [(UICollectionViewTableLayout *)self separatorInsetIsRelativeToCellEdges];
    v11 = [(UICollectionViewTableLayout *)self _metricsAdapter];
    [(UITableMetricsAdapter *)v11 defaultTableLayoutMargins];
    v13 = v12;

    v14 = [(UICollectionViewLayout *)self collectionView];
    [v14 directionalLayoutMargins];
    v16 = v15;

    v17 = [(UICollectionViewTableLayout *)self _shouldApplyReadableWidthInsets];
    if (v8 <= 0.0)
    {
      v21 = left == -1.0 || v10;
      if (left != -1.0)
      {
        v13 = left;
      }

      if ((v21 & 1) == 0)
      {
        if (v17 | dyld_program_sdk_at_least())
        {
          return left + v16;
        }

        else
        {
          return left;
        }
      }
    }

    else
    {
      return v8 + v13;
    }
  }

  else
  {
    v18 = self->_sectionContentInset.left;
    if (v18 == -1.0)
    {
      v19 = [(UICollectionViewTableLayout *)self _metricsAdapter];
      [(UITableMetricsAdapter *)v19 defaultTableLayoutMargins];
      v13 = v20;
    }

    else
    {
      [(UICollectionViewTableLayout *)self separatorInset];
      return v18 + v22;
    }
  }

  return v13;
}

- (double)_headerFooterTrailingMarginWidth
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    return self->_sectionContentInset.right;
  }

  v3 = [(UICollectionViewLayout *)self collectionView];
  v4 = [v3 _shouldReverseLayoutDirection];

  v5 = 24;
  if (v4)
  {
    v5 = 8;
  }

  v6 = *(&self->_sectionContentInset.top + v5);
  right = self->_separatorInset.right;
  v8 = [(UICollectionViewTableLayout *)self separatorInsetIsRelativeToCellEdges];
  v9 = [(UICollectionViewTableLayout *)self _constants];
  [v9 defaultTrailingCellMarginWidthForTableView:self];
  v11 = v10;

  [(UICollectionViewTableLayout *)self _indexBarExtentFromEdge];
  v13 = v12;
  v14 = [(UICollectionViewLayout *)self collectionView];
  [v14 directionalLayoutMargins];
  v16 = v15;

  v17 = [(UICollectionViewTableLayout *)self _shouldApplyReadableWidthInsets];
  if (v6 <= 0.0)
  {
    if (right == -1.0)
    {
      v18 = fmax(v13, v16);
      if (v17)
      {
        right = v18;
      }

      else
      {
        right = v13;
      }
    }

    else if (!v8)
    {
      v19 = right + fmax(v16, v13);
      if (v17)
      {
        right = v19;
      }

      else
      {
        right = right + v13;
      }
    }

    if (v17)
    {
      return right;
    }

    else
    {
      return v11 + right;
    }
  }

  return v11;
}

- (double)_defaultSectionHeaderHeight
{
  [(UITableConstants *)self->_constants defaultSectionHeaderHeightForTableView:self];
  v4 = v3;
  v5 = [(UICollectionViewLayout *)self collectionView];
  [v5 _currentScreenScale];
  v7 = UIPixelBoundaryOffset(1, v4, v6);

  return v7;
}

- (double)_defaultSectionFooterHeight
{
  [(UITableConstants *)self->_constants defaultSectionFooterHeightForTableView:self];
  v4 = v3;
  v5 = [(UICollectionViewLayout *)self collectionView];
  [v5 _currentScreenScale];
  v7 = UIPixelBoundaryOffset(0, v4, v6);

  return v7;
}

- (UIEdgeInsets)_contentInset
{
  v2 = [(UICollectionViewLayout *)self collectionView];
  [v2 adjustedContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (UIEdgeInsets)_tableContentInset
{
  v2 = [(UICollectionViewLayout *)self collectionView];
  [v2 accessoryInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (int64_t)_headerFooterPinningBehavior
{
  metricsAdapter = self->_metricsAdapter;
  if (!metricsAdapter)
  {
    return 0;
  }

  if ((*&metricsAdapter->_adapterFlags & 4) == 0)
  {
    [(UITableMetricsAdapter *)self->_metricsAdapter _updateSharedListBehaviors];
  }

  return metricsAdapter->_headerFooterPinningBehavior;
}

- (UIEdgeInsets)_cellSafeAreaInsets
{
  v2 = [(UICollectionViewLayout *)self collectionView];
  [v2 safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (double)_heightForTableHeader
{
  v3 = [(UICollectionViewTableLayout *)self _delegateActual];
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v6 = [(UICollectionViewLayout *)self collectionView];
    [v5 collectionView:v6 heightForHeaderViewInTableLayout:self];
    v4 = v7;
  }

  return v4;
}

- (double)_heightForTableFooter
{
  v3 = [(UICollectionViewTableLayout *)self _delegateActual];
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v6 = [(UICollectionViewLayout *)self collectionView];
    [v5 collectionView:v6 heightForFooterViewInTableLayout:self];
    v4 = v7;
  }

  return v4;
}

- (BOOL)_providesRowHeights
{
  v2 = [(UICollectionViewTableLayout *)self _delegateActual];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (BOOL)_estimatesHeights
{
  if ([(UICollectionViewTableLayout *)self _estimatesRowHeights]|| [(UICollectionViewTableLayout *)self _estimatesSectionHeaderHeights])
  {
    return 1;
  }

  return [(UICollectionViewTableLayout *)self _estimatesSectionFooterHeights];
}

- (double)_heightForRowAtIndexPath:(id)a3
{
  v4 = a3;
  [(UICollectionViewTableLayout *)self _dataSourceHeightForRowAtIndexPath:v4];
  Height = v5;
  if (v5 == -1.0)
  {
    if ([(UICollectionViewTableLayout *)self _estimatesRowHeights])
    {
      v7 = [(UICollectionView *)self->super._collectionView cellForItemAtIndexPath:v4];
      v8 = v7;
      if (!v7)
      {
        v8 = [(UICollectionView *)self->super._collectionView _reusableViewWithoutAttributesForElementCategory:0 kind:0 indexPath:v4];
        [v8 setFrame:{-[UITableViewRowData rectForRow:inSection:heightCanBeGuessed:](self->_rowData, objc_msgSend(v4, "row"), objc_msgSend(v4, "section"), 1)}];
      }

      v9 = [(UICollectionViewLayoutAttributes *)UICollectionViewTableLayoutAttributes layoutAttributesForCellWithIndexPath:v4];
      [(UIView *)self->super._collectionView bounds];
      [v9 setSize:{CGRectGetWidth(v13), 0.0}];
      v10 = [v8 preferredLayoutAttributesFittingAttributes:v9];
      [v10 frame];
      Height = CGRectGetHeight(v14);

      if (!v7)
      {
        [(UICollectionView *)self->super._collectionView _reuseCell:v8];
      }
    }

    else
    {
      Height = self->_rowHeight;
    }

    if (Height == -1.0)
    {
      [(UICollectionViewTableLayout *)self _defaultCellHeight];
      Height = v11;
    }
  }

  return Height;
}

- (double)_heightForHeaderInSection:(int64_t)a3 useRowData:(BOOL)a4
{
  v4 = a4;
  [(UICollectionViewTableLayout *)self _dataSourceHeightForHeaderInSection:?];
  Height = v8;
  v10 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
  if (Height == -1.0)
  {
    if ([(UICollectionViewTableLayout *)self _estimatesSectionHeaderHeights]&& v4)
    {
      v11 = [(UICollectionView *)self->super._collectionView supplementaryViewForElementKind:@"UICollectionElementKindSectionHeader" atIndexPath:v10];
      v12 = v11;
      if (!v11)
      {
        if ([(NSMutableSet *)self->_headerPreferredAttributesCache containsObject:v10])
        {
          v17 = [MEMORY[0x1E696AAA8] currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1753 description:{@"Asked for view at index path %@ but already have size cached!", v10}];
        }

        v12 = [(UICollectionView *)self->super._collectionView _reusableViewWithoutAttributesForElementCategory:1 kind:@"UICollectionElementKindSectionHeader" indexPath:v10];
        [v12 setFrame:{-[UITableViewRowData rectForHeaderInSection:heightCanBeGuessed:](self->_rowData, a3, 1)}];
      }

      v13 = [(UICollectionViewLayoutAttributes *)UICollectionViewTableLayoutAttributes layoutAttributesForSupplementaryViewOfKind:@"UICollectionElementKindSectionHeader" withIndexPath:v10];
      [(UIView *)self->super._collectionView bounds];
      [v13 setSize:{CGRectGetWidth(v18), 0.0}];
      v14 = [v12 preferredLayoutAttributesFittingAttributes:v13];
      [v14 frame];
      Height = CGRectGetHeight(v19);

      if (!v11)
      {
        [(UICollectionView *)self->super._collectionView _reuseSupplementaryView:v12];
      }
    }

    else
    {
      Height = self->_sectionHeaderHeight;
    }

    if (Height == -1.0)
    {
      [(UICollectionViewTableLayout *)self _defaultSectionHeaderHeight];
      Height = v15;
    }
  }

  return Height;
}

- (CGSize)_sizeForHeaderInSection:(int64_t)a3
{
  [(UICollectionViewTableLayout *)self _heightForHeaderInSection:a3];
  v5 = v4;
  [(UIView *)self->super._collectionView bounds];
  v7 = v6;
  v8 = v5;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)_heightForFooterInSection:(int64_t)a3 useRowData:(BOOL)a4
{
  v4 = a4;
  [(UICollectionViewTableLayout *)self _dataSourceHeightForFooterInSection:?];
  Height = v8;
  v10 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
  if (Height == -1.0)
  {
    if ([(UICollectionViewTableLayout *)self _estimatesSectionFooterHeights]&& v4)
    {
      v11 = [(UICollectionView *)self->super._collectionView supplementaryViewForElementKind:@"UICollectionElementKindSectionFooter" atIndexPath:v10];
      v12 = v11;
      if (!v11)
      {
        if ([(NSMutableSet *)self->_footerPreferredAttributesCache containsObject:v10])
        {
          v17 = [MEMORY[0x1E696AAA8] currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1802 description:{@"Asked for view at index path %@ but already have size cached!", v10}];
        }

        v12 = [(UICollectionView *)self->super._collectionView _reusableViewWithoutAttributesForElementCategory:1 kind:@"UICollectionElementKindSectionFooter" indexPath:v10];
        [v12 setFrame:{-[UITableViewRowData rectForFooterInSection:heightCanBeGuessed:](self->_rowData, a3, 1)}];
      }

      v13 = [(UICollectionViewLayoutAttributes *)UICollectionViewTableLayoutAttributes layoutAttributesForSupplementaryViewOfKind:@"UICollectionElementKindSectionFooter" withIndexPath:v10];
      [(UIView *)self->super._collectionView bounds];
      [v13 setSize:{CGRectGetWidth(v18), 0.0}];
      v14 = [v12 preferredLayoutAttributesFittingAttributes:v13];
      [v14 frame];
      Height = CGRectGetHeight(v19);

      if (!v11)
      {
        [(UICollectionView *)self->super._collectionView _reuseSupplementaryView:v12];
      }
    }

    else
    {
      Height = self->_sectionFooterHeight;
    }

    if (Height == -1.0)
    {
      [(UICollectionViewTableLayout *)self _defaultSectionFooterHeight];
      Height = v15;
    }
  }

  return Height;
}

- (double)_estimatedHeightForRowAtIndexPath:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  estimatedRowHeight = self->_estimatedRowHeight;
  v7 = [(UICollectionViewTableLayout *)self _delegateActual];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UICollectionViewTableLayout *)self _delegateProxy];
    [v9 collectionView:self->super._collectionView tableLayout:self estimatedHeightForRowAtIndexPath:v5];
    estimatedRowHeight = v10;

    v11 = dyld_program_sdk_at_least();
    v12 = estimatedRowHeight < 0.0;
    if (estimatedRowHeight == -1.0)
    {
      v12 = 0;
    }

    if (v11)
    {
      if (v12)
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1837 description:{@"Invalid estimated row height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&estimatedRowHeight}];
      }
    }

    else if (v12)
    {
      v17 = *(__UILogGetCategoryCachedImpl("Assert", &_estimatedHeightForRowAtIndexPath____s_category) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v19 = estimatedRowHeight;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Invalid estimated row height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
      }
    }
  }

  else if (estimatedRowHeight == -1.0)
  {
    [(UICollectionViewTableLayout *)self _defaultCellHeight];
    estimatedRowHeight = v14;
  }

  if (estimatedRowHeight <= 1.0 && estimatedRowHeight > 0.0)
  {
    estimatedRowHeight = 2.0;
  }

  return estimatedRowHeight;
}

- (double)_estimatedHeightForHeaderInSection:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  estimatedSectionHeaderHeight = self->_estimatedSectionHeaderHeight;
  v7 = [(UICollectionViewTableLayout *)self _delegateActual];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UICollectionViewTableLayout *)self _delegateProxy];
    [v9 collectionView:self->super._collectionView tableLayout:self estimatedHeightForHeaderInSection:a3];
    estimatedSectionHeaderHeight = v10;

    v11 = dyld_program_sdk_at_least();
    v12 = estimatedSectionHeaderHeight < 0.0;
    if (estimatedSectionHeaderHeight == -1.0)
    {
      v12 = 0;
    }

    if (v11)
    {
      if (v12)
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1850 description:{@"Invalid estimated header height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&estimatedSectionHeaderHeight}];
      }
    }

    else if (v12)
    {
      v17 = *(__UILogGetCategoryCachedImpl("Assert", &_estimatedHeightForHeaderInSection____s_category) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v19 = estimatedSectionHeaderHeight;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Invalid estimated header height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
      }
    }
  }

  else if (estimatedSectionHeaderHeight == -1.0)
  {
    [(UICollectionViewTableLayout *)self _defaultSectionHeaderHeight];
    estimatedSectionHeaderHeight = v14;
  }

  v15 = estimatedSectionHeaderHeight > 1.0 || estimatedSectionHeaderHeight <= 0.0;
  result = 2.0;
  if (v15)
  {
    return estimatedSectionHeaderHeight;
  }

  return result;
}

- (double)_estimatedHeightForFooterInSection:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  estimatedSectionFooterHeight = self->_estimatedSectionFooterHeight;
  v7 = [(UICollectionViewTableLayout *)self _delegateActual];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UICollectionViewTableLayout *)self _delegateProxy];
    [v9 collectionView:self->super._collectionView tableLayout:self estimatedHeightForFooterInSection:a3];
    estimatedSectionFooterHeight = v10;

    v11 = dyld_program_sdk_at_least();
    v12 = estimatedSectionFooterHeight < 0.0;
    if (estimatedSectionFooterHeight == -1.0)
    {
      v12 = 0;
    }

    if (v11)
    {
      if (v12)
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1863 description:{@"Invalid estimated footer height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&estimatedSectionFooterHeight}];
      }
    }

    else if (v12)
    {
      v17 = *(__UILogGetCategoryCachedImpl("Assert", &_estimatedHeightForFooterInSection____s_category) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v19 = estimatedSectionFooterHeight;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Invalid estimated footer height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", buf, 0xCu);
      }
    }
  }

  else if (estimatedSectionFooterHeight == -1.0)
  {
    [(UICollectionViewTableLayout *)self _defaultSectionFooterHeight];
    estimatedSectionFooterHeight = v14;
  }

  v15 = estimatedSectionFooterHeight > 1.0 || estimatedSectionFooterHeight <= 0.0;
  result = 2.0;
  if (v15)
  {
    return estimatedSectionFooterHeight;
  }

  return result;
}

- (double)_dataSourceHeightForRowAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [(UICollectionViewTableLayout *)self _delegateActual];
  v7 = objc_opt_respondsToSelector();

  v8 = -1.0;
  if (v7)
  {
    v9 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v10 = [(UICollectionViewLayout *)self collectionView];
    [v9 collectionView:v10 tableLayout:self heightForRowAtIndexPath:v5];
    v8 = v11;

    v12 = dyld_program_sdk_at_least();
    v13 = v8 < 0.0;
    if (v8 == -1.0)
    {
      v13 = 0;
    }

    if (v12)
    {
      if (v13)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1876 description:@"Invalid row height provided by table delegate. Value must be greater than zero or UITableViewAutomaticDimension."];
      }
    }

    else if (v13)
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_63) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Invalid row height provided by table delegate. Value must be greater than zero or UITableViewAutomaticDimension.", v17, 2u);
      }
    }

    if (floor(v8) != v8 && qword_1ED498DD8 != -1)
    {
      dispatch_once(&qword_1ED498DD8, &__block_literal_global_114);
    }
  }

  return v8;
}

void __66__UICollectionViewTableLayout__dataSourceHeightForRowAtIndexPath___block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("UICollectionViewTableLayout", &UICollectionElementKindSeparator_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Returning a fractional height for UICollectionViewTableLayout rows will result in layout issues in the collection view. Please ensure that row heights are integral values. This message will only be logged once.", v1, 2u);
  }
}

- (double)_dataSourceHeightForHeaderInSection:(int64_t)a3
{
  v6 = [(UICollectionViewTableLayout *)self _delegateActual];
  v7 = objc_opt_respondsToSelector();

  v8 = -1.0;
  if (v7)
  {
    v9 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v10 = [(UICollectionViewLayout *)self collectionView];
    [v9 collectionView:v10 tableLayout:self heightForHeaderInSection:a3];
    v8 = v11;

    v12 = dyld_program_sdk_at_least();
    v13 = v8 < 0.0;
    if (v8 == -1.0)
    {
      v13 = 0;
    }

    if (v12)
    {
      if (v13)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1892 description:@"Invalid header height provided by table delegate. Value must be greater than zero or UITableViewAutomaticDimension."];
      }
    }

    else if (v13)
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498DE0) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Invalid header height provided by table delegate. Value must be greater than zero or UITableViewAutomaticDimension.", v17, 2u);
      }
    }

    if (floor(v8) != v8 && qword_1ED498DE8 != -1)
    {
      dispatch_once(&qword_1ED498DE8, &__block_literal_global_131);
    }
  }

  return v8;
}

void __67__UICollectionViewTableLayout__dataSourceHeightForHeaderInSection___block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("UICollectionViewTableLayout", &UICollectionElementKindSeparator_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Returning a fractional height for UICollectionViewTableLayout headers will result in layout issues in the collection view. Please ensure that header heights are integral values. This message will only be logged once.", v1, 2u);
  }
}

- (double)_dataSourceHeightForFooterInSection:(int64_t)a3
{
  v6 = [(UICollectionViewTableLayout *)self _delegateActual];
  v7 = objc_opt_respondsToSelector();

  v8 = -1.0;
  if (v7)
  {
    v9 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v10 = [(UICollectionViewLayout *)self collectionView];
    [v9 collectionView:v10 tableLayout:self heightForFooterInSection:a3];
    v8 = v11;

    v12 = dyld_program_sdk_at_least();
    v13 = v8 < 0.0;
    if (v8 == -1.0)
    {
      v13 = 0;
    }

    if (v12)
    {
      if (v13)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1908 description:@"Invalid footer height provided by table delegate. Value must be greater than zero or UITableViewAutomaticDimension."];
      }
    }

    else if (v13)
    {
      v16 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498DF0) + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Invalid footer height provided by table delegate. Value must be greater than zero or UITableViewAutomaticDimension.", v17, 2u);
      }
    }

    if (floor(v8) != v8 && qword_1ED498DF8 != -1)
    {
      dispatch_once(&qword_1ED498DF8, &__block_literal_global_138);
    }
  }

  return v8;
}

void __67__UICollectionViewTableLayout__dataSourceHeightForFooterInSection___block_invoke()
{
  v0 = *(__UILogGetCategoryCachedImpl("UICollectionViewTableLayout", &UICollectionElementKindSeparator_block_invoke_3___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Returning a fractional height for UICollectionViewTableLayout footers will result in layout issues in the collection view. Please ensure that your footer heights are integral values. This message will only be logged once.", v1, 2u);
  }
}

- (BOOL)_shouldHaveViewForElementOfKind:(id)a3 atSection:(int64_t)a4 useRowData:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(UICollectionViewTableLayout *)self _dataSourceActual];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) != 0 && (-[UICollectionViewLayout collectionView](self, "collectionView"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 _hasRegisteredClassOrNibForSupplementaryViewOfKind:v8], v11, v12))
  {
    if ([v8 isEqualToString:@"UICollectionElementKindGlobalHeader"])
    {
      if (v5)
      {
        v13 = [(UITableViewRowData *)self->_rowData heightForTableHeaderView];
      }

      else
      {
        [(UICollectionViewTableLayout *)self _heightForTableHeader];
      }
    }

    else if ([v8 isEqualToString:@"UICollectionElementKindGlobalFooter"])
    {
      if (v5)
      {
        v13 = [(UITableViewRowData *)self->_rowData heightForTableFooterView];
      }

      else
      {
        [(UICollectionViewTableLayout *)self _heightForTableFooter];
      }
    }

    else if ([v8 isEqualToString:@"UICollectionElementKindSectionHeader"])
    {
      [(UICollectionViewTableLayout *)self _heightForHeaderInSection:a4 useRowData:0];
    }

    else
    {
      v15 = [v8 isEqualToString:@"UICollectionElementKindSectionFooter"];
      v13 = 0.0;
      if (v15)
      {
        [(UICollectionViewTableLayout *)self _heightForFooterInSection:a4 useRowData:0, 0.0];
      }
    }

    v14 = v13 > 0.0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_setHeight:(double)a3 forRowAtIndexPath:(id)a4 usingPresentationValues:(BOOL)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = a4;
  if (os_variant_has_internal_diagnostics())
  {
    if (!a5)
    {
      v11 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
LABEL_13:

        goto LABEL_3;
      }

      v12 = NSStringFromSelector(a2);
      v14 = 138412290;
      v15 = v12;
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Table layout does not yet support translating the index path (usingPresentationValues=NO) for a call to %@", &v14, 0xCu);
LABEL_12:

      goto LABEL_13;
    }
  }

  else if (!a5)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &_setHeight_forRowAtIndexPath_usingPresentationValues____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v11 = v13;
      v12 = NSStringFromSelector(a2);
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Table layout does not yet support translating the index path (usingPresentationValues=NO) for a call to %@", &v14, 0xCu);
      goto LABEL_12;
    }
  }

LABEL_3:
  if (!self->_deletedIndexPath || ([v9 isEqual:?] & 1) == 0)
  {
    [(UITableViewRowData *)self->_rowData setHeight:v9 forRowAtIndexPath:a3];
    [(UICollectionViewLayout *)self invalidateLayout];
    v10 = [(UICollectionViewLayout *)self collectionView];
    [v10 layoutIfNeeded];
  }
}

- (void)_cellAccessoryButtonTappedAtIndexPath:(id)a3
{
  v8 = a3;
  v4 = [(UICollectionViewTableLayout *)self _delegateActual];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UICollectionViewTableLayout *)self _delegateProxy];
    v7 = [(UICollectionViewLayout *)self collectionView];
    [v6 collectionView:v7 tableLayout:self accessoryButtonTappedForRowWithIndexPath:v8];
  }
}

- (void)_swipeToDeleteCell:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UICollectionViewLayout *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  v7 = [(UICollectionViewTableLayout *)self _swipeActionController];
  v8 = [(UICollectionViewTableLayout *)self contextualActionForDeletingRowAtIndexPath:v6];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [UISwipeActionsConfiguration configurationWithActions:v9];
  v11 = [(UICollectionViewTableLayout *)self _swipeActionController];
  [v7 swipeItemAtIndexPath:v6 configuration:v10 direction:objc_msgSend(v11 animated:"_swipeDirectionForLeadingEdge:" completion:{0), 1, 0}];
}

- (CGRect)_indexFrame
{
  x = self->_indexFrame.origin.x;
  y = self->_indexFrame.origin.y;
  width = self->_indexFrame.size.width;
  height = self->_indexFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)separatorInset
{
  top = self->_separatorInset.top;
  left = self->_separatorInset.left;
  bottom = self->_separatorInset.bottom;
  right = self->_separatorInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end