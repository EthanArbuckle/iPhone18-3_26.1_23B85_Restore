@interface UICollectionViewTableLayout
- (BOOL)_canReorderRowAtIndexPath:(id)path;
- (BOOL)_estimatesHeights;
- (BOOL)_estimatesSizes;
- (BOOL)_hasHeaderFooterBelowRowAtIndexPath:(id)path;
- (BOOL)_providesRowHeights;
- (BOOL)_shouldApplyReadableWidthInsets;
- (BOOL)_shouldDisplayExtraSeparatorsAtOffset:(double *)offset;
- (BOOL)_shouldDrawSeparatorAtTop:(BOOL)top ofSection:(int64_t)section;
- (BOOL)_shouldDrawTopSeparatorDueToMergedBarForSectionAtIndex:(int64_t)index;
- (BOOL)_shouldHaveViewForElementOfKind:(id)kind atSection:(int64_t)section useRowData:(BOOL)data;
- (BOOL)_shouldIndentWhileEditingForRowAtIndexPath:(id)path;
- (BOOL)allowsMultipleSelection;
- (BOOL)allowsMultipleSelectionDuringEditing;
- (BOOL)isEditing;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes;
- (BOOL)swipeActionController:(id)controller mayBeginSwipeForItemAtIndexPath:(id)path;
- (CGPoint)_contentOffsetFromProposedContentOffset:(CGPoint)offset forScrollingToItemAtIndexPath:(id)path atScrollPosition:(unint64_t)position;
- (CGRect)_extraSeparatorFrameForIndexPath:(id)path offset:(double)offset;
- (CGRect)_frameForSectionElementKind:(id)kind atSection:(int64_t)section visibleRect:(CGRect)rect floating:(BOOL *)floating canGuess:(BOOL)guess;
- (CGRect)_indexFrame;
- (CGRect)_visibleRect;
- (CGSize)_sizeForHeaderInSection:(int64_t)section;
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
- (_NSRange)_sectionRangeForBounds:(CGRect)bounds;
- (double)_dataSourceHeightForFooterInSection:(int64_t)section;
- (double)_dataSourceHeightForHeaderInSection:(int64_t)section;
- (double)_dataSourceHeightForRowAtIndexPath:(id)path;
- (double)_defaultSectionFooterHeight;
- (double)_defaultSectionHeaderHeight;
- (double)_estimatedHeightForFooterInSection:(int64_t)section;
- (double)_estimatedHeightForHeaderInSection:(int64_t)section;
- (double)_estimatedHeightForRowAtIndexPath:(id)path;
- (double)_headerFooterLeadingMarginWidthIsHeader:(BOOL)header isFirstSection:(BOOL)section;
- (double)_headerFooterTrailingMarginWidth;
- (double)_heightForFooterInSection:(int64_t)section useRowData:(BOOL)data;
- (double)_heightForHeaderInSection:(int64_t)section useRowData:(BOOL)data;
- (double)_heightForRowAtIndexPath:(id)path;
- (double)_heightForTableFooter;
- (double)_heightForTableHeader;
- (double)_indexBarExtentFromEdge;
- (id)_indexPathsBelowIndexPath:(id)path;
- (id)_invalidationContextForUpdatedLayoutMargins:(UIEdgeInsets)margins;
- (id)_layoutAttributesForCellWithIndexPath:(id)path;
- (id)_layoutAttributesForSectionElementKind:(id)kind atSection:(int64_t)section;
- (id)_layoutAttributesForSeparatorWithIndexPath:(id)path;
- (id)_layoutAttributesForViewElementKind:(id)kind;
- (id)contextualActionForDeletingRowAtIndexPath:(id)path;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)invalidationContextForInteractivelyMovingItems:(id)items withTargetPosition:(CGPoint)position previousIndexPaths:(id)paths previousPosition:(CGPoint)previousPosition;
- (id)invalidationContextForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (id)swipeActionController:(id)controller indexPathForTouchLocation:(CGPoint)location;
- (id)swipeActionController:(id)controller leadingSwipeConfigurationForItemAtIndexPath:(id)path;
- (id)swipeActionController:(id)controller trailingSwipeConfigurationForItemAtIndexPath:(id)path;
- (id)swipeActionController:(id)controller viewForItemAtIndexPath:(id)path;
- (id)swipeActionForDeletingRowAtIndexPath:(id)path;
- (int64_t)_accessoryTypeForCell:(id)cell forRowAtIndexPath:(id)path;
- (int64_t)_editingStyleForRowAtIndexPath:(id)path;
- (int64_t)_headerFooterPinningBehavior;
- (int64_t)_indentationLevelForRowAtIndexPath:(id)path;
- (int64_t)_numberOfRowsInSection:(int64_t)section;
- (int64_t)_numberOfSections;
- (int64_t)layoutDirectionForSwipeActionController:(id)controller;
- (void)_cellAccessoryButtonTappedAtIndexPath:(id)path;
- (void)_invalidateIndexPathsBelowIndexPath:(id)path withInvalidationContext:(id)context;
- (void)_setCollectionView:(id)view;
- (void)_setFloatingElementKinds:(id)kinds;
- (void)_setHeight:(double)height forRowAtIndexPath:(id)path usingPresentationValues:(BOOL)values;
- (void)_swipeToDeleteCell:(id)cell;
- (void)dealloc;
- (void)finalizeCollectionViewUpdates;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)prepareForTransitionFromLayout:(id)layout;
- (void)prepareForTransitionToLayout:(id)layout;
- (void)prepareLayout;
- (void)setBackgroundColor:(id)color;
- (void)setEditing:(BOOL)editing;
- (void)setInsetsContentViewsToSafeArea:(BOOL)area;
- (void)setSeparatorColor:(id)color;
- (void)setSeparatorInset:(UIEdgeInsets)inset;
- (void)setSeparatorInsetIsRelativeToCellEdges:(BOOL)edges;
- (void)setSeparatorStyle:(int64_t)style;
- (void)swipeActionController:(id)controller animateView:(id)view actionsView:(id)actionsView forDestructiveAction:(id)action atIndexPath:(id)path withSwipeInfo:(id *)info completion:(id)completion;
- (void)swipeActionController:(id)controller didCompleteAction:(id)action cancelled:(BOOL)cancelled atIndexPath:(id)path;
- (void)swipeActionController:(id)controller didEndSwipeForItemAtIndexPath:(id)path;
- (void)swipeActionController:(id)controller willBeginSwipeForItemAtIndexPath:(id)path;
- (void)swipeActionController:(id)controller willPerformAction:(id)action atIndexPath:(id)path;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel__darkenedColorsChanged_ name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = UICollectionViewTableLayout;
  [(UICollectionViewTableLayout *)&v4 dealloc];
}

- (void)_setFloatingElementKinds:(id)kinds
{
  if (kinds)
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  traitCollection = [collectionView traitCollection];
  v4 = _UITableConstantsForTraitCollection(traitCollection);
  constants = self->_constants;
  self->_constants = v4;

  if (!self->_metricsAdapter)
  {
    v6 = [[UITableMetricsAdapter alloc] initWithTableStyle:collectionView scrollView:?];
    metricsAdapter = self->_metricsAdapter;
    self->_metricsAdapter = v6;
  }

  if (!self->_swipeActionController)
  {
    traitCollection2 = [collectionView traitCollection];
    v9 = +[UISwipeActionVisualStyleProvider visualStyleForIdiom:](UISwipeActionVisualStyleProvider, "visualStyleForIdiom:", [traitCollection2 userInterfaceIdiom]);

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
    tableSeparatorColor = [(UITableMetricsAdapter *)&self->_metricsAdapter->super.isa tableSeparatorColor];
    separatorColor = self->_separatorColor;
    self->_separatorColor = tableSeparatorColor;

    collectionView2 = [(UICollectionViewLayout *)self collectionView];
    v17 = [collectionView2 _accessibilityHigherContrastTintColorForColor:self->_separatorColor];
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

  [collectionView bounds];
  Width = CGRectGetWidth(v28);
  if (rowData)
  {
    rowData->_tableViewWidth = Width;
  }

  [(UITableViewRowData *)self->_rowData ensureAllSectionsAreValid];
}

- (void)prepareForTransitionFromLayout:(id)layout
{
  v4.receiver = self;
  v4.super_class = UICollectionViewTableLayout;
  [(UICollectionViewLayout *)&v4 prepareForTransitionFromLayout:layout];
  [(UISwipeActionController *)self->_swipeActionController setSwipeEnabled:1];
}

- (void)prepareForTransitionToLayout:(id)layout
{
  v4.receiver = self;
  v4.super_class = UICollectionViewTableLayout;
  [(UICollectionViewLayout *)&v4 prepareForTransitionToLayout:layout];
  [(UISwipeActionController *)self->_swipeActionController setSwipeEnabled:0];
}

- (void)_setCollectionView:(id)view
{
  v11.receiver = self;
  v11.super_class = UICollectionViewTableLayout;
  viewCopy = view;
  [(UICollectionViewLayout *)&v11 _setCollectionView:viewCopy];
  [(UIScrollView *)self->super._collectionView _setContentScrollsAlongXAxis:0, v11.receiver, v11.super_class];
  [(UIScrollView *)self->super._collectionView _setContentScrollsAlongYAxis:1];
  [viewCopy layoutMargins];
  self->_previousLayoutMargins.top = v5;
  self->_previousLayoutMargins.left = v6;
  self->_previousLayoutMargins.bottom = v7;
  self->_previousLayoutMargins.right = v8;
  [viewCopy _currentScreenScale];
  v10 = v9;

  self->_memoizedScale = v10;
}

- (CGPoint)_contentOffsetFromProposedContentOffset:(CGPoint)offset forScrollingToItemAtIndexPath:(id)path atScrollPosition:(unint64_t)position
{
  y = offset.y;
  x = offset.x;
  pathCopy = path;
  if (position == 4)
  {
    _floatingElementKinds = [(UICollectionViewTableLayout *)self _floatingElementKinds];
    v21 = [_floatingElementKinds count];

    if (v21)
    {
      [(UICollectionViewTableLayout *)self _visibleRect];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      -[UITableViewRowData floatingRectForFooterInSection:visibleRect:heightCanBeGuessed:outIsFloating:outVisibleRectDisplacement:](self->_rowData, [pathCopy section], 0, 0, 0, v22, v24, v26, v28);
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
      item = [pathCopy item];
      if (item == -[UITableViewRowData numberOfRowsInSection:](self->_rowData, [pathCopy section]) - 1)
      {
        y = y + -[UITableViewRowData heightForFooterInSection:canGuess:](self->_rowData, [pathCopy section], 0);
      }
    }
  }

  else if (position == 1)
  {
    _floatingElementKinds2 = [(UICollectionViewTableLayout *)self _floatingElementKinds];
    v11 = [_floatingElementKinds2 count];

    if (v11)
    {
      rowData = self->_rowData;
      section = [pathCopy section];
      [(UICollectionViewTableLayout *)self _visibleRect];
      [(UITableViewRowData *)rowData floatingRectForHeaderInSection:section visibleRect:0 heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:v14, v15, v16, v17];
      if (y < v19 + v18)
      {
        y = y - v18;
      }
    }

    else if (![pathCopy item])
    {
      y = y - -[UITableViewRowData heightForHeaderInSection:canGuess:](self->_rowData, [pathCopy section], 0);
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

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes
{
  originalAttributesCopy = originalAttributes;
  attributesCopy = attributes;
  _estimatesSizes = [(UICollectionViewTableLayout *)self _estimatesSizes];
  [originalAttributesCopy representedElementCategory];
  [attributesCopy size];
  v10 = v9;
  v12 = v11;

  [originalAttributesCopy size];
  v14 = v13;
  v16 = v15;

  v17 = v10 != v14;
  if (v12 != v16)
  {
    v17 = 1;
  }

  return _estimatesSizes && v17;
}

- (id)_indexPathsBelowIndexPath:(id)path
{
  pathCopy = path;
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
  v15 = [(NSMutableArray *)self->_indexPathCache indexOfObject:pathCopy];
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

- (void)_invalidateIndexPathsBelowIndexPath:(id)path withInvalidationContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v20 = pathCopy;
  v11 = [(UICollectionViewTableLayout *)self _indexPathsBelowIndexPath:pathCopy];
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
        v18 = array;
        if (v17 == 2)
        {
          goto LABEL_7;
        }

        if ([v16 length] == 1)
        {
          if (-[UICollectionViewTableLayout _shouldHaveHeaderViewForSection:](self, "_shouldHaveHeaderViewForSection:", [v16 section]))
          {
            [array2 addObject:v16];
          }

          v19 = -[UICollectionViewTableLayout _shouldHaveFooterViewForSection:](self, "_shouldHaveFooterViewForSection:", [v16 section]);
          v18 = array3;
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

  [contextCopy invalidateItemsAtIndexPaths:array];
  [contextCopy invalidateSupplementaryElementsOfKind:@"UICollectionElementKindSectionHeader" atIndexPaths:array2];
  [contextCopy invalidateSupplementaryElementsOfKind:@"UICollectionElementKindSectionFooter" atIndexPaths:array3];
}

- (id)invalidationContextForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes
{
  originalAttributesCopy = originalAttributes;
  attributesCopy = attributes;
  v8 = objc_alloc_init(UICollectionViewTableLayoutInvalidationContext);
  indexPath = [originalAttributesCopy indexPath];
  [attributesCopy size];
  v11 = v10;

  [originalAttributesCopy size];
  v13 = v12;
  if (![originalAttributesCopy representedElementCategory])
  {
    v16 = &OBJC_IVAR___UICollectionViewTableLayout__preferredAttributesCache;
    if (vabdd_f64(v11, v13) > 2.22044605e-16)
    {
      [(UITableViewRowData *)self->_rowData setHeight:indexPath forRowAtIndexPath:v11];
    }

    goto LABEL_8;
  }

  if ([originalAttributesCopy representedElementCategory] != 1)
  {
    goto LABEL_9;
  }

  representedElementKind = [originalAttributesCopy representedElementKind];
  v15 = [representedElementKind isEqualToString:@"UICollectionElementKindSectionHeader"];

  if (v15)
  {
    v16 = &OBJC_IVAR___UICollectionViewTableLayout__headerPreferredAttributesCache;
    if (vabdd_f64(v11, v13) > 2.22044605e-16)
    {
      -[UITableViewRowData setHeight:forHeaderInSection:](self->_rowData, [indexPath section], v11);
    }

LABEL_8:
    [*(&self->super.super.isa + *v16) addObject:indexPath];
    goto LABEL_9;
  }

  representedElementKind2 = [originalAttributesCopy representedElementKind];
  v19 = [representedElementKind2 isEqualToString:@"UICollectionElementKindSectionFooter"];

  if (v19)
  {
    v16 = &OBJC_IVAR___UICollectionViewTableLayout__footerPreferredAttributesCache;
    if (vabdd_f64(v11, v13) > 2.22044605e-16)
    {
      -[UITableViewRowData setHeight:forFooterInSection:](self->_rowData, [indexPath section], v11);
    }

    goto LABEL_8;
  }

LABEL_9:
  [(UICollectionViewTableLayout *)self _invalidateIndexPathsBelowIndexPath:indexPath withInvalidationContext:v8];
  [(UICollectionViewTableLayoutInvalidationContext *)v8 setSkipSectionInvalidation:1];

  return v8;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v34 = *MEMORY[0x1E69E9840];
  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView bounds];
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
          collectionView2 = [(UICollectionViewLayout *)self collectionView];
          v26 = [collectionView2 _hasRegisteredClassOrNibForSupplementaryViewOfKind:v24];

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

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  v53 = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = UICollectionViewTableLayout;
  x = change.origin.x;
  v38 = change.origin.x;
  y = change.origin.y;
  v5 = change.origin.y;
  width = change.size.width;
  v42 = change.size.width;
  obja = change.size.height;
  height = change.size.height;
  v8 = [(UICollectionViewLayout *)&v50 invalidationContextForBoundsChange:?];
  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView bounds];
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
            array = [MEMORY[0x1E695DF70] array];
            v34 = v41;
            v35 = v40;
            if (v40 < v40 + v41)
            {
              do
              {
                if ([(UICollectionViewTableLayout *)self _shouldHaveViewForElementOfKind:v32 atSection:v35 useRowData:1])
                {
                  v36 = [MEMORY[0x1E696AC88] indexPathWithIndex:v35];
                  [array addObject:v36];
                }

                ++v35;
                --v34;
              }

              while (v34);
            }

            if ([array count])
            {
              [v8 invalidateSupplementaryElementsOfKind:v32 atIndexPaths:array];
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

- (id)invalidationContextForInteractivelyMovingItems:(id)items withTargetPosition:(CGPoint)position previousIndexPaths:(id)paths previousPosition:(CGPoint)previousPosition
{
  v8.receiver = self;
  v8.super_class = UICollectionViewTableLayout;
  v6 = [(UICollectionViewLayout *)&v8 invalidationContextForInteractivelyMovingItems:items withTargetPosition:paths previousIndexPaths:position.x previousPosition:position.y, previousPosition.x, previousPosition.y];
  [v6 _setInvalidateDataSourceCounts:1];

  return v6;
}

- (id)_invalidationContextForUpdatedLayoutMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
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

- (void)invalidateLayoutWithContext:(id)context
{
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (([contextCopy invalidateEverything] & 1) != 0 || (objc_msgSend(contextCopy, "invalidateDataSourceCounts") & 1) != 0 || objc_msgSend(contextCopy, "invalidateTableLayoutDelegateMetrics"))
  {
    [(UITableViewRowData *)self->_rowData invalidateAllSections];
    if (self->_deletedIndexPath)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      _updateItems = [contextCopy _updateItems];
      v6 = [_updateItems countByEnumeratingWithState:&v30 objects:v35 count:16];
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
              objc_enumerationMutation(_updateItems);
            }

            v10 = *(*(&v30 + 1) + 8 * i);
            if ([v10 updateAction] == 1)
            {
              indexPathBeforeUpdate = [v10 indexPathBeforeUpdate];
              v12 = [indexPathBeforeUpdate isEqual:self->_deletedIndexPath];

              if (v12)
              {
                v13 = 0;
                goto LABEL_17;
              }
            }
          }

          v7 = [_updateItems countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v13 = 1;
LABEL_17:

      invalidateEverything = [contextCopy invalidateEverything];
      if ((v13 & 1) == 0 && !invalidateEverything)
      {
        goto LABEL_20;
      }
    }

    else
    {
      [contextCopy invalidateEverything];
    }

    [(UISwipeActionController *)self->_swipeActionController resetSwipedItemAnimated:0 completion:0];
LABEL_20:
    [(NSMutableArray *)self->_indexPathCache removeAllObjects];
    [(NSMutableSet *)self->_preferredAttributesCache removeAllObjects];
    [(NSMutableSet *)self->_headerPreferredAttributesCache removeAllObjects];
    [(NSMutableSet *)self->_footerPreferredAttributesCache removeAllObjects];
    goto LABEL_21;
  }

  if (([contextCopy skipSectionInvalidation] & 1) == 0)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    invalidatedItemIndexPaths = [contextCopy invalidatedItemIndexPaths];
    v17 = [invalidatedItemIndexPaths countByEnumeratingWithState:&v26 objects:v34 count:16];
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
            objc_enumerationMutation(invalidatedItemIndexPaths);
          }

          [indexSet addIndex:{objc_msgSend(*(*(&v26 + 1) + 8 * j), "section")}];
        }

        v18 = [invalidatedItemIndexPaths countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __59__UICollectionViewTableLayout_invalidateLayoutWithContext___block_invoke;
    v25[3] = &unk_1E70F3B48;
    v25[4] = self;
    [indexSet enumerateIndexesUsingBlock:v25];
  }

  invalidatedSupplementaryIndexPaths = [contextCopy invalidatedSupplementaryIndexPaths];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __59__UICollectionViewTableLayout_invalidateLayoutWithContext___block_invoke_2;
  v23[3] = &unk_1E70FEA00;
  v23[4] = self;
  v24 = contextCopy;
  [invalidatedSupplementaryIndexPaths enumerateKeysAndObjectsUsingBlock:v23];

LABEL_21:
  v22.receiver = self;
  v22.super_class = UICollectionViewTableLayout;
  [(UICollectionViewLayout *)&v22 invalidateLayoutWithContext:contextCopy];
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

- (id)_layoutAttributesForCellWithIndexPath:(id)path
{
  pathCopy = path;
  v5 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
  [objc_opt_class() applyValuesFromAttributes:self toAttributes:v5 valueOptions:3];
  v6 = [(UICollectionViewTableLayout *)self _editingStyleForRowAtIndexPath:pathCopy];
  v7 = [(UICollectionViewTableLayout *)self _shouldIndentWhileEditingForRowAtIndexPath:pathCopy];
  v8 = [(UICollectionViewTableLayout *)self _canReorderRowAtIndexPath:pathCopy];
  [v5 setAccessoryType:0];
  [v5 setSectionLocation:{-[UITableViewRowData sectionLocationForRow:inSection:](self->_rowData, objc_msgSend(pathCopy, "row"), objc_msgSend(pathCopy, "section"))}];
  [v5 setEditingStyle:v6];
  [v5 setShouldIndentWhileEditing:v7];
  [v5 setShowsReorderControl:v8];
  [v5 setLayoutMarginsFollowReadableWidth:{-[UICollectionViewTableLayout cellLayoutMarginsFollowReadableWidth](self, "cellLayoutMarginsFollowReadableWidth")}];
  [v5 setInsetsContentViewsToSafeArea:{-[UICollectionViewTableLayout insetsContentViewsToSafeArea](self, "insetsContentViewsToSafeArea")}];
  [v5 setSeparatorInsetIsRelativeToCellEdges:{-[UICollectionViewTableLayout separatorInsetIsRelativeToCellEdges](self, "separatorInsetIsRelativeToCellEdges")}];
  _constants = [(UICollectionViewTableLayout *)self _constants];
  [_constants defaultLeadingCellMarginWidthForTableView:self];
  [v5 setDefaultLeadingCellMarginWidth:?];

  _constants2 = [(UICollectionViewTableLayout *)self _constants];
  [_constants2 defaultTrailingCellMarginWidthForTableView:self];
  [v5 setDefaultTrailingCellMarginWidth:?];

  [(UICollectionViewTableLayout *)self _indexBarExtentFromEdge];
  [v5 setIndexBarExtentFromEdge:?];
  [(UICollectionViewTableLayout *)self _sectionContentInset];
  [v5 setBackgroundInset:?];
  [v5 setIndentationLevel:{-[UICollectionViewTableLayout _indentationLevelForRowAtIndexPath:](self, "_indentationLevelForRowAtIndexPath:", pathCopy)}];
  [v5 setDrawsSeparatorAtTopOfSection:{-[UICollectionViewTableLayout _shouldDrawSeparatorAtTop:ofSection:](self, "_shouldDrawSeparatorAtTop:ofSection:", 1, objc_msgSend(pathCopy, "section"))}];
  [v5 setDrawsSeparatorAtBottomOfSection:{-[UICollectionViewTableLayout _shouldDrawSeparatorAtTop:ofSection:](self, "_shouldDrawSeparatorAtTop:ofSection:", 0, objc_msgSend(pathCopy, "section"))}];
  v11 = [(NSMutableSet *)self->_preferredAttributesCache containsObject:pathCopy];

  [v5 setPreferredAttributesCached:v11];

  return v5;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position
{
  v9.receiver = self;
  v9.super_class = UICollectionViewTableLayout;
  v5 = [(UICollectionViewLayout *)&v9 layoutAttributesForInteractivelyMovingItemAtIndexPath:path withTargetPosition:position.x, position.y];
  [v5 setSeparatorStyle:0];
  v6 = +[UIColor clearColor];
  [v5 setBackgroundColor:v6];

  _constants = [(UICollectionViewTableLayout *)self _constants];
  [_constants defaultAlphaForReorderingCell];
  [v5 setAlpha:?];

  return v5;
}

- (id)_layoutAttributesForViewElementKind:(id)kind
{
  kindCopy = kind;
  if (([kindCopy isEqualToString:@"UICollectionElementKindGlobalHeader"] & 1) != 0 || objc_msgSend(kindCopy, "isEqualToString:", @"UICollectionElementKindGlobalFooter"))
  {
    layoutAttributesClass = [objc_opt_class() layoutAttributesClass];
    v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:0];
    v7 = [layoutAttributesClass layoutAttributesForSupplementaryViewOfKind:kindCopy withIndexPath:v6];

    v8 = [kindCopy isEqualToString:@"UICollectionElementKindGlobalHeader"];
    rowData = self->_rowData;
    if (v8)
    {
      rectForTableHeaderView = [(UITableViewRowData *)rowData rectForTableHeaderView];
    }

    else
    {
      rectForTableHeaderView = [(UITableViewRowData *)rowData rectForTableFooterView];
    }

    [v7 setFrame:rectForTableHeaderView];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_layoutAttributesForSectionElementKind:(id)kind atSection:(int64_t)section
{
  kindCopy = kind;
  v7 = [kindCopy isEqualToString:@"UICollectionElementKindSectionHeader"];
  if (((v7 & 1) != 0 || [kindCopy isEqualToString:@"UICollectionElementKindSectionFooter"]) && -[UICollectionViewTableLayout _numberOfSections](self, "_numberOfSections") > section)
  {
    layoutAttributesClass = [objc_opt_class() layoutAttributesClass];
    v9 = [MEMORY[0x1E696AC88] indexPathWithIndex:section];
    v10 = [layoutAttributesClass layoutAttributesForSupplementaryViewOfKind:kindCopy withIndexPath:v9];

    [v10 setIsHeader:v7];
    [(UICollectionViewTableLayout *)self _headerFooterLeadingMarginWidthIsHeader:v7 isFirstSection:section == 0];
    [v10 setMargins:{0.0, v11, 0.0, v11}];
    v12 = [MEMORY[0x1E696AC88] indexPathWithIndex:section];
    isHeader = [v10 isHeader];
    rowData = self->_rowData;
    if (isHeader)
    {
      [v10 setMaxTitleWidth:{-[UITableViewRowData maxHeaderTitleWidthForSection:](rowData, section)}];
      v15 = [(UITableViewRowData *)self->_rowData headerAlignmentForSection:section];
      v16 = &OBJC_IVAR___UICollectionViewTableLayout__headerPreferredAttributesCache;
    }

    else
    {
      [v10 setMaxTitleWidth:{-[UITableViewRowData maxFooterTitleWidthForSection:](rowData, section)}];
      v15 = [(UITableViewRowData *)self->_rowData footerAlignmentForSection:section];
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

- (id)_layoutAttributesForSeparatorWithIndexPath:(id)path
{
  pathCopy = path;
  v5 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];

  separatorColor = [(UICollectionViewTableLayout *)self separatorColor];
  [v5 setSeparatorColor:separatorColor];

  [v5 setSeparatorStyle:{-[UICollectionViewTableLayout separatorStyle](self, "separatorStyle")}];
  separatorEffect = [(UICollectionViewTableLayout *)self separatorEffect];
  [v5 setSeparatorEffect:separatorEffect];

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v91 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  _numberOfSections = [(UICollectionViewTableLayout *)self _numberOfSections];
  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v77 = v8;
  v78 = v7;
  rect = v9;
  v79 = v10;

  if (_numberOfSections >= 1)
  {
    v11 = [(UITableViewRowData *)&self->_rowData->super.isa globalRowsInRect:rect.origin.x canGuess:rect.origin.y, rect.size.width, rect.size.height];
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
        [array addObject:v16];

        ++v13;
        --v14;
      }

      while (v14);
    }

    v29 = [(UICollectionViewTableLayout *)self _sectionRangeForBounds:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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
                if (CGRectIntersectsRect(v96, rect))
                {
                  v49 = [(UICollectionViewTableLayout *)self _layoutAttributesForSectionElementKind:v42 atSection:v44];
                  [v49 setFrame:{x, y, width, height}];
                  [v49 setFloating:LOBYTE(v84)];
                  [array addObject:v49];
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
    if (CGRectIntersectsRect(rect, v101))
    {
      if ([(UICollectionViewTableLayout *)self _shouldHaveGlobalViewForElementOfKind:@"UICollectionElementKindGlobalHeader"])
      {
        v54 = [(UICollectionViewTableLayout *)self _layoutAttributesForViewElementKind:@"UICollectionElementKindGlobalHeader"];
        if (v54)
        {
          [array addObject:v54];
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
    if (CGRectIntersectsRect(rect, v102))
    {
      if ([(UICollectionViewTableLayout *)self _shouldHaveGlobalViewForElementOfKind:@"UICollectionElementKindGlobalFooter"])
      {
        v59 = [(UICollectionViewTableLayout *)self _layoutAttributesForViewElementKind:@"UICollectionElementKindGlobalFooter"];
        if (v59)
        {
          [array addObject:v59];
        }
      }
    }
  }

  heightForTable = [(UITableViewRowData *)self->_rowData heightForTable];
  v99.origin.y = v77;
  v99.origin.x = v78;
  v99.size.width = rect;
  v99.size.height = v79;
  if (heightForTable < CGRectGetHeight(v99))
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
            [array addObject:v73];

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

  return array;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(UICollectionViewTableLayout *)self _layoutAttributesForCellWithIndexPath:pathCopy];
  rowData = self->_rowData;
  v7 = [pathCopy row];
  section = [pathCopy section];

  v12 = [(UITableViewRowData *)rowData rectForRow:v7 inSection:section heightCanBeGuessed:0];
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

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  if (([kindCopy isEqualToString:@"UICollectionElementKindSectionHeader"] & 1) != 0 || objc_msgSend(kindCopy, "isEqualToString:", @"UICollectionElementKindSectionFooter"))
  {
    v8 = -[UICollectionViewTableLayout _layoutAttributesForSectionElementKind:atSection:](self, "_layoutAttributesForSectionElementKind:atSection:", kindCopy, [pathCopy section]);
    if (v8)
    {
      v11 = 0;
      section = [pathCopy section];
      [(UICollectionViewTableLayout *)self _visibleRect];
      [(UICollectionViewTableLayout *)self _frameForSectionElementKind:kindCopy atSection:section visibleRect:&v11 floating:0 canGuess:?];
      [v8 setFrame:?];
      [v8 setFloating:v11];
    }
  }

  else if (([kindCopy isEqualToString:@"UICollectionElementKindGlobalHeader"] & 1) != 0 || objc_msgSend(kindCopy, "isEqualToString:", @"UICollectionElementKindGlobalFooter"))
  {
    v8 = [(UICollectionViewTableLayout *)self _layoutAttributesForViewElementKind:kindCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  if ([kind isEqualToString:@"UICollectionElementKindSeparator"])
  {
    v7 = [(UICollectionViewTableLayout *)self _layoutAttributesForSeparatorWithIndexPath:pathCopy];
    v9 = 0.0;
    if ([(UICollectionViewTableLayout *)self _shouldDisplayExtraSeparatorsAtOffset:&v9])
    {
      [(UICollectionViewTableLayout *)self _extraSeparatorFrameForIndexPath:pathCopy offset:v9];
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
  cellLayoutMarginsFollowReadableWidth = [(UICollectionViewTableLayout *)self cellLayoutMarginsFollowReadableWidth];
  if (cellLayoutMarginsFollowReadableWidth)
  {
    collectionView = [(UICollectionViewLayout *)self collectionView];
    _safeAreaWidthExceedsReadableWidth = [collectionView _safeAreaWidthExceedsReadableWidth];

    LOBYTE(cellLayoutMarginsFollowReadableWidth) = _safeAreaWidthExceedsReadableWidth;
  }

  return cellLayoutMarginsFollowReadableWidth;
}

- (CGRect)_extraSeparatorFrameForIndexPath:(id)path offset:(double)offset
{
  rowData = self->_rowData;
  pathCopy = path;
  v7 = _UITableRowHeightForExtraSeparators(self, rowData, 0.0);
  v8 = [pathCopy indexAtPosition:0];

  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v45 = v11;
  v46 = v10;
  v43 = v13;
  v44 = v12;

  collectionView2 = [(UICollectionViewLayout *)self collectionView];
  _shouldReverseLayoutDirection = [collectionView2 _shouldReverseLayoutDirection];

  [(UICollectionViewTableLayout *)self _indexBarExtentFromEdge];
  v17 = v16;
  collectionView3 = [(UICollectionViewLayout *)self collectionView];
  [collectionView3 directionalLayoutMargins];
  v42 = v19;
  v21 = v20;

  collectionView4 = [(UICollectionViewLayout *)self collectionView];
  traitCollection = [collectionView4 traitCollection];
  v24 = _UISeparatorThicknessForTraitCollection(traitCollection);

  left = self->_separatorInset.left;
  right = self->_separatorInset.right;
  _metricsAdapter = [(UICollectionViewTableLayout *)self _metricsAdapter];
  [(UITableMetricsAdapter *)_metricsAdapter defaultTableLayoutMargins];
  v29 = v28;

  _shouldApplyReadableWidthInsets = [(UICollectionViewTableLayout *)self _shouldApplyReadableWidthInsets];
  separatorInsetIsRelativeToCellEdges = [(UICollectionViewTableLayout *)self separatorInsetIsRelativeToCellEdges];
  v32 = separatorInsetIsRelativeToCellEdges;
  if (left != -1.0)
  {
    v29 = left;
    if (!separatorInsetIsRelativeToCellEdges)
    {
      if (_shouldApplyReadableWidthInsets | dyld_program_sdk_at_least())
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
  if (_shouldApplyReadableWidthInsets)
  {
    v33 = v34;
  }

  if (v32)
  {
    v33 = right;
  }

  v35 = fmax(v17, v21);
  if (!_shouldApplyReadableWidthInsets)
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
  v38 = v7 + v7 * v8 + offset - v24;
  v39 = Width - (v29 + v36);
  if (_shouldReverseLayoutDirection)
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

- (BOOL)_shouldDisplayExtraSeparatorsAtOffset:(double *)offset
{
  if (!self->_showsAdditionalSeparators)
  {
    return 0;
  }

  numberOfRows = [(UITableViewRowData *)self->_rowData numberOfRows];
  if (numberOfRows < 1)
  {
    section = 0;
  }

  else
  {
    v6 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:?];
    section = [v6 section];
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

  if (section >= numSections)
  {
LABEL_12:
    v12.origin.x = [(UITableViewRowData *)rowData rectForTableFooterView];
    *offset = CGRectGetMaxY(v12);
    return 1;
  }

  else
  {
    while (1)
    {
      v11.origin.x = [(UITableViewRowData *)self->_rowData rectForFooterInSection:section heightCanBeGuessed:1];
      if (CGRectGetHeight(v11) > 0.0)
      {
        return 0;
      }

      if (numSections == ++section)
      {
        rowData = self->_rowData;
        goto LABEL_12;
      }
    }
  }
}

- (void)setSeparatorInsetIsRelativeToCellEdges:(BOOL)edges
{
  if (self->_separatorInsetIsRelativeToCellEdges != edges)
  {
    self->_separatorInsetIsRelativeToCellEdges = edges;
    [(UICollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setInsetsContentViewsToSafeArea:(BOOL)area
{
  if (self->_insetsContentViewsToSafeArea != area)
  {
    self->_insetsContentViewsToSafeArea = area;
    [(UICollectionViewLayout *)self invalidateLayout];
  }
}

- (CGRect)_visibleRect
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView bounds];
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

- (void)prepareForCollectionViewUpdates:(id)updates
{
  v22 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v20.receiver = self;
  v20.super_class = UICollectionViewTableLayout;
  [(UICollectionViewLayout *)&v20 prepareForCollectionViewUpdates:updatesCopy];
  array = [MEMORY[0x1E695DF70] array];
  [(UICollectionViewTableLayout *)self setDeleteIndexPaths:array];

  array2 = [MEMORY[0x1E695DF70] array];
  [(UICollectionViewTableLayout *)self setInsertIndexPaths:array2];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = updatesCopy;
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
          deleteIndexPaths = [(UICollectionViewTableLayout *)self deleteIndexPaths];
          indexPathBeforeUpdate = [v12 indexPathBeforeUpdate];
        }

        else
        {
          if ([v12 updateAction])
          {
            continue;
          }

          deleteIndexPaths = [(UICollectionViewTableLayout *)self insertIndexPaths];
          indexPathBeforeUpdate = [v12 indexPathAfterUpdate];
        }

        v15 = indexPathBeforeUpdate;
        [deleteIndexPaths addObject:indexPathBeforeUpdate];
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

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  selfCopy = self;
  v8.receiver = self;
  v8.super_class = UICollectionViewTableLayout;
  pathCopy = path;
  v5 = [(UICollectionViewLayout *)&v8 finalLayoutAttributesForDisappearingItemAtIndexPath:pathCopy];
  v6 = [v5 copy];

  LODWORD(selfCopy) = [(NSIndexPath *)selfCopy->_deletedIndexPath isEqual:pathCopy];
  if (selfCopy)
  {
    [v6 setAlpha:1.0];
  }

  return v6;
}

- (CGSize)collectionViewContentSize
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v5 = v4;

  heightForTable = [(UITableViewRowData *)self->_rowData heightForTable];
  v7 = v5;
  result.height = heightForTable;
  result.width = v7;
  return result;
}

- (void)setSeparatorInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_separatorInset.top), vceqq_f64(v4, *&self->_separatorInset.bottom)))) & 1) == 0)
  {
    self->_separatorInset = inset;
    [(UICollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setSeparatorColor:(id)color
{
  colorCopy = color;
  if (self->_separatorColor != colorCopy)
  {
    v9 = colorCopy;
    objc_storeStrong(&self->_separatorColor, color);
    collectionView = [(UICollectionViewLayout *)self collectionView];
    if (collectionView)
    {
      collectionView2 = [(UICollectionViewLayout *)self collectionView];
      separatorColor = [collectionView2 _accessibilityHigherContrastTintColorForColor:self->_separatorColor];
    }

    else
    {
      separatorColor = self->_separatorColor;
    }

    objc_storeStrong(&self->_darkenedSeparatorColor, separatorColor);
    if (collectionView)
    {
    }

    [(UICollectionViewTableLayout *)self _separatorColorChanged];
    colorCopy = v9;
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

- (void)setSeparatorStyle:(int64_t)style
{
  if (self->_separatorStyle != style)
  {
    self->_separatorStyle = style;
    [(UICollectionViewLayout *)self invalidateLayout];
  }
}

- (UICollectionViewDelegateTableLayout)_delegateActual
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
  _delegateActual = [collectionView _delegateActual];

  return _delegateActual;
}

- (UICollectionViewDelegateTableLayout)_delegateProxy
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
  _delegateProxy = [collectionView _delegateProxy];

  return _delegateProxy;
}

- (UICollectionViewDataSourceTableLayout)_dataSourceActual
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
  _dataSourceActual = [collectionView _dataSourceActual];

  return _dataSourceActual;
}

- (int64_t)_accessoryTypeForCell:(id)cell forRowAtIndexPath:(id)path
{
  if (path)
  {
    return [cell accessoryType];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_canReorderRowAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(UICollectionViewLayout *)self collectionView];
  v6 = [collectionView _canReorderItemAtIndexPath:pathCopy];

  return v6;
}

- (BOOL)_shouldIndentWhileEditingForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
      collectionView = [(UICollectionViewLayout *)self collectionView];
      v9 = [_delegateProxy collectionView:collectionView tableLayout:self shouldIndentWhileEditingRowAtIndexPath:pathCopy];
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

- (int64_t)_indentationLevelForRowAtIndexPath:(id)path
{
  pathCopy = path;
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView = [(UICollectionViewLayout *)self collectionView];
    v9 = [_delegateProxy collectionView:collectionView tableLayout:self indentationLevelForRowAtIndexPath:pathCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
      collectionView = [(UICollectionViewLayout *)self collectionView];
      v9 = [_delegateProxy collectionView:collectionView tableLayout:self editingStyleForRowAtIndexPath:pathCopy];
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

- (BOOL)_shouldDrawTopSeparatorDueToMergedBarForSectionAtIndex:(int64_t)index
{
  if ([(UICollectionViewTableLayout *)self _tableStyle])
  {
    return 0;
  }

  collectionView = [(UICollectionViewLayout *)self collectionView];
  _shouldAdjustLayoutToDrawTopSeparator = [collectionView _shouldAdjustLayoutToDrawTopSeparator];

  if (!_shouldAdjustLayoutToDrawTopSeparator)
  {
    return 0;
  }

  _tableHeaderView = [(UICollectionViewTableLayout *)self _tableHeaderView];

  if (_tableHeaderView || ![(UITableViewRowData *)self->_rowData numberOfRows])
  {
    return 0;
  }

  v10 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:?];
  v11 = v10;
  if (v10 && [v10 section] == index)
  {
    if (index < 0)
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

      while (index != v12++);
      v8 = !v13;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_shouldDrawSeparatorAtTop:(BOOL)top ofSection:(int64_t)section
{
  if (top)
  {

    return [(UICollectionViewTableLayout *)self _shouldDrawTopSeparatorDueToMergedBarForSectionAtIndex:section];
  }

  else
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:-[UICollectionViewTableLayout _numberOfRowsInSection:](self inSection:{"_numberOfRowsInSection:", section) - 1, section}];
    v7 = [(UICollectionViewTableLayout *)self _hasHeaderFooterBelowRowAtIndexPath:v6];

    return !v7;
  }
}

- (BOOL)_hasHeaderFooterBelowRowAtIndexPath:(id)path
{
  section = [path section];
  _numberOfSections = [(UICollectionViewTableLayout *)self _numberOfSections];
  if (section >= _numberOfSections)
  {
    return 0;
  }

  v7 = _numberOfSections;
  v8 = [path row];
  if (v8 != [(UICollectionViewTableLayout *)self _numberOfRowsInSection:section]- 1)
  {
    return 0;
  }

  v9 = 1;
  v13.origin.x = [(UITableViewRowData *)self->_rowData rectForFooterInSection:section heightCanBeGuessed:1];
  if (CGRectGetHeight(v13) <= 0.0)
  {
    v10 = section + 1;
    do
    {
      if (v7 == v10)
      {
        break;
      }

      v9 = 1;
      v14.origin.x = [(UITableViewRowData *)self->_rowData rectForHeaderInSection:section heightCanBeGuessed:1];
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

- (CGRect)_frameForSectionElementKind:(id)kind atSection:(int64_t)section visibleRect:(CGRect)rect floating:(BOOL *)floating canGuess:(BOOL)guess
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  kindCopy = kind;
  v16 = [kindCopy isEqualToString:@"UICollectionElementKindSectionHeader"];
  rowData = self->_rowData;
  if (v16)
  {
    v18 = [(UITableViewRowData *)rowData rectForHeaderInSection:section heightCanBeGuessed:guess];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(NSSet *)self->_floatingElementKinds containsObject:kindCopy];

    if (!v25)
    {
      goto LABEL_10;
    }

    height = [(UITableViewRowData *)self->_rowData floatingRectForHeaderInSection:section visibleRect:guess heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:x, y, width, height];
  }

  else
  {
    v18 = [(UITableViewRowData *)rowData rectForFooterInSection:section heightCanBeGuessed:guess];
    v20 = v30;
    v22 = v31;
    v24 = v32;
    v33 = [(NSSet *)self->_floatingElementKinds containsObject:kindCopy];

    if (!v33)
    {
      goto LABEL_10;
    }

    height = [(UITableViewRowData *)self->_rowData floatingRectForFooterInSection:section visibleRect:guess heightCanBeGuessed:0 outIsFloating:0 outVisibleRectDisplacement:x, y, width, height];
  }

  v34 = height;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v43.origin.x = v18;
  v43.origin.y = v20;
  v43.size.width = v22;
  v43.size.height = v24;
  if (!CGRectEqualToRect(*&height, v43))
  {
    if (floating)
    {
      *floating = 1;
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

- (_NSRange)_sectionRangeForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _numberOfSections = [(UICollectionViewTableLayout *)self _numberOfSections];
  if (_numberOfSections < 1)
  {
    v18 = 0;
    section = 0;
  }

  else
  {
    v9 = _numberOfSections;
    height = [(UITableViewRowData *)&self->_rowData->super.isa globalRowsInRect:x canGuess:y, width, height];
    v12 = v11;
    v13 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:height];
    v14 = [(UITableViewRowData *)&self->_rowData->super.isa indexPathForRowAtGlobalRow:?];
    section = [v13 section];
    section2 = [v14 section];
    section3 = [v13 section];
    if (section2 - section3 + 1 + section >= v9)
    {
      v18 = section2 - section3 + 1;
    }

    else
    {
      v18 = section2 - section3 + 2;
    }
  }

  v19 = section;
  v20 = v18;
  result.length = v20;
  result.location = v19;
  return result;
}

- (id)swipeActionController:(id)controller leadingSwipeConfigurationForItemAtIndexPath:(id)path
{
  pathCopy = path;
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView = [(UICollectionViewLayout *)self collectionView];
    v10 = [_delegateProxy collectionView:collectionView tableLayout:self leadingSwipeActionsConfigurationForRowAtIndexPath:pathCopy];
    goto LABEL_6;
  }

  _delegateActual2 = [(UICollectionViewTableLayout *)self _delegateActual];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    _delegateProxy2 = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView2 = [(UICollectionViewLayout *)self collectionView];
    _delegateProxy = [_delegateProxy2 collectionView:collectionView2 tableLayout:self leadingSwipeActionsForRowAtIndexPath:pathCopy];

    if (!_delegateProxy)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v10 = [UISwipeActionsConfiguration configurationWithActions:_delegateProxy];
    collectionView = [_delegateProxy firstObject];
    [v10 setPerformsFirstActionWithFullSwipe:{objc_msgSend(collectionView, "canBeTriggeredBySwipe")}];
LABEL_6:

LABEL_7:
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)swipeActionController:(id)controller trailingSwipeConfigurationForItemAtIndexPath:(id)path
{
  v18[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView = [(UICollectionViewLayout *)self collectionView];
    v10 = [_delegateProxy collectionView:collectionView tableLayout:self trailingSwipeActionsConfigurationForRowAtIndexPath:pathCopy];
    goto LABEL_6;
  }

  _delegateActual2 = [(UICollectionViewTableLayout *)self _delegateActual];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    _delegateProxy2 = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView2 = [(UICollectionViewLayout *)self collectionView];
    _delegateProxy = [_delegateProxy2 collectionView:collectionView2 tableLayout:self trailingSwipeActionsForRowAtIndexPath:pathCopy];

    if (_delegateProxy)
    {
      v10 = [UISwipeActionsConfiguration configurationWithActions:_delegateProxy];
      collectionView = [_delegateProxy firstObject];
      [v10 setPerformsFirstActionWithFullSwipe:{objc_msgSend(collectionView, "canBeTriggeredBySwipe")}];
LABEL_6:

      if (v10)
      {
        goto LABEL_10;
      }
    }
  }

  if ([(UICollectionViewTableLayout *)self _editingStyleForRowAtIndexPath:pathCopy]== 1)
  {
    v15 = [(UICollectionViewTableLayout *)self contextualActionForDeletingRowAtIndexPath:pathCopy];
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

- (int64_t)layoutDirectionForSwipeActionController:(id)controller
{
  v4 = dyld_program_sdk_at_least();
  collectionView = [(UICollectionViewLayout *)self collectionView];
  v6 = collectionView;
  if (v4)
  {
    effectiveUserInterfaceLayoutDirection = [collectionView effectiveUserInterfaceLayoutDirection];
  }

  else
  {
    traitCollection = [collectionView traitCollection];
    effectiveUserInterfaceLayoutDirection = [traitCollection layoutDirection];
  }

  return effectiveUserInterfaceLayoutDirection;
}

- (id)swipeActionController:(id)controller indexPathForTouchLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  collectionView = [(UICollectionViewLayout *)self collectionView];
  v7 = [collectionView indexPathForItemAtPoint:{x, y}];

  return v7;
}

- (id)swipeActionController:(id)controller viewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(UICollectionViewLayout *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];

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

- (void)swipeActionController:(id)controller willPerformAction:(id)action atIndexPath:(id)path
{
  pathCopy = path;
  if ([action style] == 1)
  {
    v7 = [pathCopy copy];
    deletedIndexPath = self->_deletedIndexPath;
    self->_deletedIndexPath = v7;
  }
}

- (void)swipeActionController:(id)controller didCompleteAction:(id)action cancelled:(BOOL)cancelled atIndexPath:(id)path
{
  deletedIndexPath = self->_deletedIndexPath;
  self->_deletedIndexPath = 0;
}

- (void)swipeActionController:(id)controller animateView:(id)view actionsView:(id)actionsView forDestructiveAction:(id)action atIndexPath:(id)path withSwipeInfo:(id *)info completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewCopy = view;
  actionsViewCopy = actionsView;
  actionCopy = action;
  pathCopy = path;
  completionCopy = completion;
  if ([pathCopy row] >= 1)
  {
    collectionView = [(UICollectionViewLayout *)self collectionView];
    v20 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(pathCopy inSection:{"item") - 1, objc_msgSend(pathCopy, "section")}];
    v21 = [collectionView cellForItemAtIndexPath:v20];

    collectionView2 = [(UICollectionViewLayout *)self collectionView];
    [collectionView2 bringSubviewToFront:v21];
  }

  tableViewCell = [viewCopy tableViewCell];
  currentSwipeOccurrence = [controllerCopy currentSwipeOccurrence];
  backgroundColor = [actionCopy backgroundColor];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __135__UICollectionViewTableLayout_swipeActionController_animateView_actionsView_forDestructiveAction_atIndexPath_withSwipeInfo_completion___block_invoke;
  v39[3] = &unk_1E70F3608;
  v26 = completionCopy;
  v40 = v26;
  v27 = _UITableAnimateSwipeDeletion(self, pathCopy, tableViewCell, actionsViewCopy, currentSwipeOccurrence, backgroundColor, v39, 0);

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

        [viewCopy _trackAnimator:*(*(&v35 + 1) + 8 * v32++)];
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v30);
  }

  collectionView3 = [(UICollectionViewLayout *)self collectionView];
  [collectionView3 sendSubviewToBack:viewCopy];
}

- (BOOL)swipeActionController:(id)controller mayBeginSwipeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[UICollectionViewTableLayout _wantsSwipes](self, "_wantsSwipes") && (-[UICollectionViewLayout collectionView](self, "collectionView"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 _canEditItemAtIndexPath:pathCopy], v6, v7) && (-[UICollectionViewLayout collectionView](self, "collectionView"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "_reorderedItems"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, !v10))
  {
    _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
    if (objc_opt_respondsToSelector())
    {
      v11 = 1;
    }

    else
    {
      _delegateActual2 = [(UICollectionViewTableLayout *)self _delegateActual];
      if (objc_opt_respondsToSelector())
      {
        v11 = 1;
      }

      else
      {
        _delegateActual3 = [(UICollectionViewTableLayout *)self _delegateActual];
        if (objc_opt_respondsToSelector())
        {
          v11 = 1;
        }

        else
        {
          _delegateActual4 = [(UICollectionViewTableLayout *)self _delegateActual];
          if (objc_opt_respondsToSelector())
          {
            v11 = 1;
          }

          else
          {
            _delegateActual5 = [(UICollectionViewTableLayout *)self _delegateActual];
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

- (void)swipeActionController:(id)controller willBeginSwipeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [_delegateProxy collectionView:collectionView tableLayout:self willBeginEditingRowAtIndexPath:pathCopy];
  }
}

- (void)swipeActionController:(id)controller didEndSwipeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [_delegateProxy collectionView:collectionView tableLayout:self didEndEditingRowAtIndexPath:pathCopy];
  }
}

- (id)swipeActionForDeletingRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = _UINSLocalizedStringWithDefaultValue(@"Delete", @"Delete");
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__UICollectionViewTableLayout_swipeActionForDeletingRowAtIndexPath___block_invoke;
  v9[3] = &unk_1E70FEA28;
  v9[4] = self;
  v10 = pathCopy;
  v6 = pathCopy;
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

- (id)contextualActionForDeletingRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = _UINSLocalizedStringWithDefaultValue(@"Delete", @"Delete");
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__UICollectionViewTableLayout_contextualActionForDeletingRowAtIndexPath___block_invoke;
  v9[3] = &unk_1E70FEA50;
  v9[4] = self;
  v10 = pathCopy;
  v6 = pathCopy;
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  isEditing = [collectionView isEditing];

  return isEditing;
}

- (void)setEditing:(BOOL)editing
{
  [(UICollectionViewTableLayout *)self resetSwipedRowWithCompletion:0];

  [(UICollectionViewLayout *)self invalidateLayout];
}

- (BOOL)allowsMultipleSelection
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
  allowsMultipleSelection = [collectionView allowsMultipleSelection];

  return allowsMultipleSelection;
}

- (BOOL)allowsMultipleSelectionDuringEditing
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
  allowsMultipleSelectionDuringEditing = [collectionView allowsMultipleSelectionDuringEditing];

  return allowsMultipleSelectionDuringEditing;
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  top = self->_sectionContentInset.top;
  left = self->_sectionContentInset.left;
  bottom = self->_sectionContentInset.bottom;
  right = self->_sectionContentInset.right;
  [collectionView safeAreaInsets];
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  _shouldReverseLayoutDirection = [collectionView _shouldReverseLayoutDirection];

  collectionView2 = [(UICollectionViewLayout *)self collectionView];
  [collectionView2 accessoryInsets];
  v7 = v6;
  v9 = v8;

  if (_shouldReverseLayoutDirection)
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  backgroundColor = [collectionView backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView setBackgroundColor:colorCopy];
}

- (int64_t)_numberOfSections
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  return numberOfSections;
}

- (int64_t)_numberOfRowsInSection:(int64_t)section
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
  v5 = [collectionView numberOfItemsInSection:section];

  return v5;
}

- (double)_headerFooterLeadingMarginWidthIsHeader:(BOOL)header isFirstSection:(BOOL)section
{
  if (dyld_program_sdk_at_least())
  {
    collectionView = [(UICollectionViewLayout *)self collectionView];
    _shouldReverseLayoutDirection = [collectionView _shouldReverseLayoutDirection];

    v7 = 8;
    if (_shouldReverseLayoutDirection)
    {
      v7 = 24;
    }

    v8 = *(&self->_sectionContentInset.top + v7);
    left = self->_separatorInset.left;
    separatorInsetIsRelativeToCellEdges = [(UICollectionViewTableLayout *)self separatorInsetIsRelativeToCellEdges];
    _metricsAdapter = [(UICollectionViewTableLayout *)self _metricsAdapter];
    [(UITableMetricsAdapter *)_metricsAdapter defaultTableLayoutMargins];
    v13 = v12;

    collectionView2 = [(UICollectionViewLayout *)self collectionView];
    [collectionView2 directionalLayoutMargins];
    v16 = v15;

    _shouldApplyReadableWidthInsets = [(UICollectionViewTableLayout *)self _shouldApplyReadableWidthInsets];
    if (v8 <= 0.0)
    {
      v21 = left == -1.0 || separatorInsetIsRelativeToCellEdges;
      if (left != -1.0)
      {
        v13 = left;
      }

      if ((v21 & 1) == 0)
      {
        if (_shouldApplyReadableWidthInsets | dyld_program_sdk_at_least())
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
      _metricsAdapter2 = [(UICollectionViewTableLayout *)self _metricsAdapter];
      [(UITableMetricsAdapter *)_metricsAdapter2 defaultTableLayoutMargins];
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

  collectionView = [(UICollectionViewLayout *)self collectionView];
  _shouldReverseLayoutDirection = [collectionView _shouldReverseLayoutDirection];

  v5 = 24;
  if (_shouldReverseLayoutDirection)
  {
    v5 = 8;
  }

  v6 = *(&self->_sectionContentInset.top + v5);
  right = self->_separatorInset.right;
  separatorInsetIsRelativeToCellEdges = [(UICollectionViewTableLayout *)self separatorInsetIsRelativeToCellEdges];
  _constants = [(UICollectionViewTableLayout *)self _constants];
  [_constants defaultTrailingCellMarginWidthForTableView:self];
  v11 = v10;

  [(UICollectionViewTableLayout *)self _indexBarExtentFromEdge];
  v13 = v12;
  collectionView2 = [(UICollectionViewLayout *)self collectionView];
  [collectionView2 directionalLayoutMargins];
  v16 = v15;

  _shouldApplyReadableWidthInsets = [(UICollectionViewTableLayout *)self _shouldApplyReadableWidthInsets];
  if (v6 <= 0.0)
  {
    if (right == -1.0)
    {
      v18 = fmax(v13, v16);
      if (_shouldApplyReadableWidthInsets)
      {
        right = v18;
      }

      else
      {
        right = v13;
      }
    }

    else if (!separatorInsetIsRelativeToCellEdges)
    {
      v19 = right + fmax(v16, v13);
      if (_shouldApplyReadableWidthInsets)
      {
        right = v19;
      }

      else
      {
        right = right + v13;
      }
    }

    if (_shouldApplyReadableWidthInsets)
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView _currentScreenScale];
  v7 = UIPixelBoundaryOffset(1, v4, v6);

  return v7;
}

- (double)_defaultSectionFooterHeight
{
  [(UITableConstants *)self->_constants defaultSectionFooterHeightForTableView:self];
  v4 = v3;
  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView _currentScreenScale];
  v7 = UIPixelBoundaryOffset(0, v4, v6);

  return v7;
}

- (UIEdgeInsets)_contentInset
{
  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView adjustedContentInset];
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView accessoryInsets];
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
  collectionView = [(UICollectionViewLayout *)self collectionView];
  [collectionView safeAreaInsets];
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
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [_delegateProxy collectionView:collectionView heightForHeaderViewInTableLayout:self];
    v4 = v7;
  }

  return v4;
}

- (double)_heightForTableFooter
{
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [_delegateProxy collectionView:collectionView heightForFooterViewInTableLayout:self];
    v4 = v7;
  }

  return v4;
}

- (BOOL)_providesRowHeights
{
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
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

- (double)_heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  [(UICollectionViewTableLayout *)self _dataSourceHeightForRowAtIndexPath:pathCopy];
  Height = v5;
  if (v5 == -1.0)
  {
    if ([(UICollectionViewTableLayout *)self _estimatesRowHeights])
    {
      v7 = [(UICollectionView *)self->super._collectionView cellForItemAtIndexPath:pathCopy];
      v8 = v7;
      if (!v7)
      {
        v8 = [(UICollectionView *)self->super._collectionView _reusableViewWithoutAttributesForElementCategory:0 kind:0 indexPath:pathCopy];
        [v8 setFrame:{-[UITableViewRowData rectForRow:inSection:heightCanBeGuessed:](self->_rowData, objc_msgSend(pathCopy, "row"), objc_msgSend(pathCopy, "section"), 1)}];
      }

      v9 = [(UICollectionViewLayoutAttributes *)UICollectionViewTableLayoutAttributes layoutAttributesForCellWithIndexPath:pathCopy];
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

- (double)_heightForHeaderInSection:(int64_t)section useRowData:(BOOL)data
{
  dataCopy = data;
  [(UICollectionViewTableLayout *)self _dataSourceHeightForHeaderInSection:?];
  Height = v8;
  v10 = [MEMORY[0x1E696AC88] indexPathWithIndex:section];
  if (Height == -1.0)
  {
    if ([(UICollectionViewTableLayout *)self _estimatesSectionHeaderHeights]&& dataCopy)
    {
      v11 = [(UICollectionView *)self->super._collectionView supplementaryViewForElementKind:@"UICollectionElementKindSectionHeader" atIndexPath:v10];
      v12 = v11;
      if (!v11)
      {
        if ([(NSMutableSet *)self->_headerPreferredAttributesCache containsObject:v10])
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1753 description:{@"Asked for view at index path %@ but already have size cached!", v10}];
        }

        v12 = [(UICollectionView *)self->super._collectionView _reusableViewWithoutAttributesForElementCategory:1 kind:@"UICollectionElementKindSectionHeader" indexPath:v10];
        [v12 setFrame:{-[UITableViewRowData rectForHeaderInSection:heightCanBeGuessed:](self->_rowData, section, 1)}];
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

- (CGSize)_sizeForHeaderInSection:(int64_t)section
{
  [(UICollectionViewTableLayout *)self _heightForHeaderInSection:section];
  v5 = v4;
  [(UIView *)self->super._collectionView bounds];
  v7 = v6;
  v8 = v5;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)_heightForFooterInSection:(int64_t)section useRowData:(BOOL)data
{
  dataCopy = data;
  [(UICollectionViewTableLayout *)self _dataSourceHeightForFooterInSection:?];
  Height = v8;
  v10 = [MEMORY[0x1E696AC88] indexPathWithIndex:section];
  if (Height == -1.0)
  {
    if ([(UICollectionViewTableLayout *)self _estimatesSectionFooterHeights]&& dataCopy)
    {
      v11 = [(UICollectionView *)self->super._collectionView supplementaryViewForElementKind:@"UICollectionElementKindSectionFooter" atIndexPath:v10];
      v12 = v11;
      if (!v11)
      {
        if ([(NSMutableSet *)self->_footerPreferredAttributesCache containsObject:v10])
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1802 description:{@"Asked for view at index path %@ but already have size cached!", v10}];
        }

        v12 = [(UICollectionView *)self->super._collectionView _reusableViewWithoutAttributesForElementCategory:1 kind:@"UICollectionElementKindSectionFooter" indexPath:v10];
        [v12 setFrame:{-[UITableViewRowData rectForFooterInSection:heightCanBeGuessed:](self->_rowData, section, 1)}];
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

- (double)_estimatedHeightForRowAtIndexPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  estimatedRowHeight = self->_estimatedRowHeight;
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    [_delegateProxy collectionView:self->super._collectionView tableLayout:self estimatedHeightForRowAtIndexPath:pathCopy];
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1837 description:{@"Invalid estimated row height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&estimatedRowHeight}];
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

- (double)_estimatedHeightForHeaderInSection:(int64_t)section
{
  v20 = *MEMORY[0x1E69E9840];
  estimatedSectionHeaderHeight = self->_estimatedSectionHeaderHeight;
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    [_delegateProxy collectionView:self->super._collectionView tableLayout:self estimatedHeightForHeaderInSection:section];
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1850 description:{@"Invalid estimated header height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&estimatedSectionHeaderHeight}];
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

- (double)_estimatedHeightForFooterInSection:(int64_t)section
{
  v20 = *MEMORY[0x1E69E9840];
  estimatedSectionFooterHeight = self->_estimatedSectionFooterHeight;
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    [_delegateProxy collectionView:self->super._collectionView tableLayout:self estimatedHeightForFooterInSection:section];
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1863 description:{@"Invalid estimated footer height (%g) provided by table delegate. Value must be at least 0.0, or UITableViewAutomaticDimension.", *&estimatedSectionFooterHeight}];
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

- (double)_dataSourceHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v7 = objc_opt_respondsToSelector();

  v8 = -1.0;
  if (v7)
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [_delegateProxy collectionView:collectionView tableLayout:self heightForRowAtIndexPath:pathCopy];
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1876 description:@"Invalid row height provided by table delegate. Value must be greater than zero or UITableViewAutomaticDimension."];
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

- (double)_dataSourceHeightForHeaderInSection:(int64_t)section
{
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v7 = objc_opt_respondsToSelector();

  v8 = -1.0;
  if (v7)
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [_delegateProxy collectionView:collectionView tableLayout:self heightForHeaderInSection:section];
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1892 description:@"Invalid header height provided by table delegate. Value must be greater than zero or UITableViewAutomaticDimension."];
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

- (double)_dataSourceHeightForFooterInSection:(int64_t)section
{
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v7 = objc_opt_respondsToSelector();

  v8 = -1.0;
  if (v7)
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [_delegateProxy collectionView:collectionView tableLayout:self heightForFooterInSection:section];
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UICollectionViewTableLayout.m" lineNumber:1908 description:@"Invalid footer height provided by table delegate. Value must be greater than zero or UITableViewAutomaticDimension."];
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

- (BOOL)_shouldHaveViewForElementOfKind:(id)kind atSection:(int64_t)section useRowData:(BOOL)data
{
  dataCopy = data;
  kindCopy = kind;
  _dataSourceActual = [(UICollectionViewTableLayout *)self _dataSourceActual];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) != 0 && (-[UICollectionViewLayout collectionView](self, "collectionView"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 _hasRegisteredClassOrNibForSupplementaryViewOfKind:kindCopy], v11, v12))
  {
    if ([kindCopy isEqualToString:@"UICollectionElementKindGlobalHeader"])
    {
      if (dataCopy)
      {
        heightForTableHeaderView = [(UITableViewRowData *)self->_rowData heightForTableHeaderView];
      }

      else
      {
        [(UICollectionViewTableLayout *)self _heightForTableHeader];
      }
    }

    else if ([kindCopy isEqualToString:@"UICollectionElementKindGlobalFooter"])
    {
      if (dataCopy)
      {
        heightForTableHeaderView = [(UITableViewRowData *)self->_rowData heightForTableFooterView];
      }

      else
      {
        [(UICollectionViewTableLayout *)self _heightForTableFooter];
      }
    }

    else if ([kindCopy isEqualToString:@"UICollectionElementKindSectionHeader"])
    {
      [(UICollectionViewTableLayout *)self _heightForHeaderInSection:section useRowData:0];
    }

    else
    {
      v15 = [kindCopy isEqualToString:@"UICollectionElementKindSectionFooter"];
      heightForTableHeaderView = 0.0;
      if (v15)
      {
        [(UICollectionViewTableLayout *)self _heightForFooterInSection:section useRowData:0, 0.0];
      }
    }

    v14 = heightForTableHeaderView > 0.0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_setHeight:(double)height forRowAtIndexPath:(id)path usingPresentationValues:(BOOL)values
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (os_variant_has_internal_diagnostics())
  {
    if (!values)
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

  else if (!values)
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
  if (!self->_deletedIndexPath || ([pathCopy isEqual:?] & 1) == 0)
  {
    [(UITableViewRowData *)self->_rowData setHeight:pathCopy forRowAtIndexPath:height];
    [(UICollectionViewLayout *)self invalidateLayout];
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [collectionView layoutIfNeeded];
  }
}

- (void)_cellAccessoryButtonTappedAtIndexPath:(id)path
{
  pathCopy = path;
  _delegateActual = [(UICollectionViewTableLayout *)self _delegateActual];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _delegateProxy = [(UICollectionViewTableLayout *)self _delegateProxy];
    collectionView = [(UICollectionViewLayout *)self collectionView];
    [_delegateProxy collectionView:collectionView tableLayout:self accessoryButtonTappedForRowWithIndexPath:pathCopy];
  }
}

- (void)_swipeToDeleteCell:(id)cell
{
  v12[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  collectionView = [(UICollectionViewLayout *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

  _swipeActionController = [(UICollectionViewTableLayout *)self _swipeActionController];
  v8 = [(UICollectionViewTableLayout *)self contextualActionForDeletingRowAtIndexPath:v6];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [UISwipeActionsConfiguration configurationWithActions:v9];
  _swipeActionController2 = [(UICollectionViewTableLayout *)self _swipeActionController];
  [_swipeActionController swipeItemAtIndexPath:v6 configuration:v10 direction:objc_msgSend(_swipeActionController2 animated:"_swipeDirectionForLeadingEdge:" completion:{0), 1, 0}];
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