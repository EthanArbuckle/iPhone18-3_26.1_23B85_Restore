@interface PUSectionedGridLayout
- (BOOL)_ensureUpdatedLayoutData:(id)data isForward:(BOOL)forward outDeltaOriginY:(double *)y;
- (BOOL)_hasAccessibilityLargeText;
- (BOOL)_isSupportedSupplementaryViewKind:(id)kind;
- (BOOL)_isTransitionForeignSupplementaryViewKind:(id)kind;
- (BOOL)_visualSectionsMatchTransitionSectionsToOrFromLayout:(id)layout;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CATransform3D)_transformToConvertRect:(SEL)rect intoRect:(CGRect)intoRect referenceCenter:(CGRect)center;
- (CGPoint)_targetContentOffsetWithAnchorItemIndexPath:(id)path isRotation:(BOOL)rotation orTransitionFromLayout:(id)layout keepAnchorStable:(BOOL)stable;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGPoint)targetContentOffsetForTransitionFromGridLayout:(id)layout;
- (CGPoint)targetContentOffsetForViewSizeTransitionContext:(id)context;
- (CGPoint)transitionEffectiveContentOrigin;
- (CGPoint)transitionEndContentOffset;
- (CGPoint)transitionStartContentOffset;
- (CGRect)_frameByAdjustingOffScreenEnteringFrame:(CGRect)frame forRowAtVisualIndexPath:(PUSimpleIndexPath)path transitionSectionInfo:(id)info toOrFromGridLayout:(id)layout isAppearing:(BOOL)appearing;
- (CGRect)frameForItemAtGridCoordinates:(PUGridCoordinates)coordinates inTransitionSection:(int64_t)section;
- (CGRect)frameForItemAtGridCoordinates:(PUGridCoordinates)coordinates inVisualSection:(int64_t)section;
- (CGRect)frameForItemAtGridCoordinates:(PUGridCoordinates)coordinates inVisualSection:(int64_t)section indexPath:(id)path;
- (CGRect)frameForSectionHeaderAtVisualSection:(int64_t)section;
- (CGRect)frameForSectionHeaderOfRealItem:(id)item;
- (CGSize)collectionViewContentSize;
- (CGSize)interItemSpacing;
- (CGSize)itemSize;
- (CGSize)layoutItemSizeForColumn:(int64_t)column;
- (CGSize)transitionActualContentSize;
- (NSString)description;
- (PUCollectionViewLayoutTransitioningDelegate)transitioningDelegate;
- (PUGridCoordinates)_targetTransitionGridCoordsForGridCoords:(PUGridCoordinates)coords atVisualSection:(int64_t)section transitionSectionInfo:(id)info;
- (PUGridCoordinates)gridCoordinatesInSectionForItemAtVisualIndex:(int64_t)index;
- (PUGridCoordinates)gridCoordinatesInTransitionSectionForItemAtIndexPath:(id)path;
- (PUGridCoordinates)gridCoordinatesInVisualSectionForItemAtIndexPath:(id)path;
- (PUGridCoordinates)targetTransitionGridCoordsForGridCoords:(PUGridCoordinates)coords atVisualSection:(int64_t)section outTransitionSection:(int64_t *)transitionSection;
- (PUGridCoordinates)visualGridCoordsForTransitionGridCoords:(PUGridCoordinates)coords atTransitionSection:(int64_t)section outVisualSection:(int64_t *)visualSection;
- (PUSectionedGridLayout)init;
- (PUSectionedGridLayoutDelegate)delegate;
- (PUSimpleIndexPath)_itemVisualIndexPathAtPoint:(CGPoint)point;
- (PUSimpleIndexPath)_visualIndexPathForTransitionCoordinates:(PUGridCoordinates)coordinates inTransitionSection:(int64_t)section;
- (PUSimpleIndexPath)_visualRowPathForTransitionRowIndex:(int64_t)index transitionSectionInfo:(id)info;
- (UIEdgeInsets)_finalContentInset;
- (UIEdgeInsets)sectionContentInset;
- (_NSRange)visualRowsInRect:(CGRect)rect inVisualSection:(int64_t)section totalVisualSectionRows:(int64_t *)rows;
- (_NSRange)visualSectionsInRect:(CGRect)rect;
- (double)_delegateAccessibilitySectionHeaderHeightForSection:(int64_t)section;
- (double)_finalSectionHeaderHeightForSection:(int64_t)section;
- (double)_heightOfSectionAtVisualIndex:(int64_t)index;
- (double)_sectionHeaderHeightDeltaForSection:(int64_t)section;
- (double)_sectionWidth;
- (double)_startYOfContentAtVisualSectionIndex:(int64_t)index;
- (double)_startYOfContentAtVisualSectionIndexWithDynamicLayout:(int64_t)layout;
- (id)_animationForReusableView:(id)view toLayoutAttributes:(id)attributes type:(unint64_t)type;
- (id)_gridTransitionLayout;
- (id)_layoutAttributesForItemAtVisualIndexPath:(PUSimpleIndexPath)path realIndexPath:(id)indexPath isMainRealItem:(BOOL)item;
- (id)_layoutAttributesForSupplementaryViewOfKind:(id)kind forVisualSection:(int64_t)section supplementaryViewIndex:(int64_t)index;
- (id)_realItemIndexPathClosestToPoint:(CGPoint)point inRect:(CGRect)rect withTest:(id)test;
- (id)_supplementaryViewKinds;
- (id)assetIndexPathsForElementsInRect:(CGRect)rect;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)itemIndexPathAtCenterOfRect:(CGRect)rect;
- (id)itemIndexPathAtPoint:(CGPoint)point;
- (id)itemIndexPathClosestToPoint:(CGPoint)point;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (id)mainRealIndexPathAtGridCoordinates:(PUGridCoordinates)coordinates inTransitionSection:(int64_t)section;
- (id)maxItemIndexPathAbovePoint:(CGPoint)point;
- (id)maxItemIndexPathLeftOfPoint:(CGPoint)point;
- (id)prepareForViewTransitionToSize:(CGSize)size;
- (id)pu_debugRows;
- (id)pu_layoutAttributesForElementClosestToPoint:(CGPoint)point inRect:(CGRect)rect passingTest:(id)test;
- (id)realSectionsForVisualSection:(int64_t)section forSectioning:(id)sectioning;
- (id)supplementaryViewIndexPathForVisualSection:(int64_t)section supplementaryViewItemIndex:(int64_t)index;
- (id)targetTransitionRealIndexPathForIndexPath:(id)path;
- (id)transitionAnchorIndexPathForTransitionSection:(int64_t)section;
- (id)transitionSectionsInRect:(CGRect)rect toOrFromGridLayout:(id)layout;
- (int64_t)_nextVisualSectionForSupplementaryViewSection:(int64_t)section forward:(BOOL)forward;
- (int64_t)_visualSectionAtPoint:(CGPoint)point;
- (int64_t)firstPreparedVisualSection;
- (int64_t)lastPreparedVisualSection;
- (int64_t)mainRealSectionForVisualSection:(int64_t)section;
- (int64_t)maximumNumberOfItemsInVisualSection:(int64_t)section withNumberOfRealItems:(int64_t)items forSectioning:(id)sectioning;
- (int64_t)numberOfColumnsForWidth:(double)width;
- (int64_t)numberOfContiguousRowsInTransitionSection:(int64_t)section;
- (int64_t)numberOfItemsInRealSection:(int64_t)section forSectioning:(id)sectioning;
- (int64_t)numberOfRealItemsInRealSection:(int64_t)section;
- (int64_t)numberOfRealItemsInVisualSection:(int64_t)section;
- (int64_t)numberOfRealSectionsForSectioning:(id)sectioning;
- (int64_t)numberOfVisualSectionsForSectioning:(id)sectioning;
- (int64_t)visualIndexForItemAtGridCoordinates:(PUGridCoordinates)coordinates;
- (int64_t)visualSectionForHeaderIndexPath:(id)path;
- (int64_t)visualSectionForRealSection:(int64_t)section;
- (int64_t)visualSectionForSupplementaryViewIndexPath:(id)path;
- (void)_adjustGridTransitionLayoutAttributes:(id)attributes toOrFromGridLayout:(id)layout outTargetRowExists:(BOOL *)exists isAppearing:(BOOL)appearing;
- (void)_adjustItemLayoutAttributesForReordering:(id)reordering;
- (void)_adjustRenderedStripLayoutAttributes:(id)attributes toOrFromGridLayout:(id)layout isAppearing:(BOOL)appearing;
- (void)_adjustSectionHeaderLayoutAttributes:(id)attributes toOrFromGridLayout:(id)layout isAppearing:(BOOL)appearing;
- (void)_clearLayoutCaches;
- (void)_clearRetainedCaches;
- (void)_clearSamplingCaches;
- (void)_clearSectioningCaches;
- (void)_didFinishLayoutTransitionAnimations:(BOOL)animations;
- (void)_ensureRect:(CGRect)rect inData:(id)data outDeltaOriginY:(double *)y;
- (void)_ensureVisualSection:(int64_t)section inData:(id)data;
- (void)_enumerateVisualItemFramesInRect:(CGRect)rect usingBlock:(id)block;
- (void)_invalidateLayoutWithContext:(id)context;
- (void)_prepareForTransitionToOrFromGridLayout:(id)layout isAppearing:(BOOL)appearing;
- (void)_prepareLayoutIfNeeded;
- (void)_prepareSamplingDataIfNeeded;
- (void)_prepareSectioningDataIfNeeded;
- (void)adjustEffectiveContentOriginForTransitionEndContentOffset:(CGPoint)offset;
- (void)beginInsertingItemAtIndexPath:(id)path;
- (void)beginReorderingItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)endInsertingItem;
- (void)endReordering;
- (void)enumerateItemIndexPathsForVisualSection:(int64_t)section inVisualItemRange:(_NSRange)range usingBlock:(id)block;
- (void)enumerateRealSectionsForVisualSection:(int64_t)section usingBlock:(id)block;
- (void)finalizeAnimatedBoundsChange;
- (void)finalizeCollectionViewUpdates;
- (void)finalizeLayoutTransition;
- (void)getVisualSectionIndex:(int64_t *)index visualItemRange:(_NSRange *)range forRenderStripAtIndexPath:(id)path;
- (void)invalidateLayoutForMetricsChange;
- (void)invalidateLayoutForVerticalScroll;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareForAnimatedBoundsChange:(CGRect)change;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)prepareForTransitionFromLayout:(id)layout;
- (void)prepareForTransitionToLayout:(id)layout;
- (void)prepareLayout;
- (void)setCropAmount:(double)amount;
- (void)setCropType:(int64_t)type;
- (void)setDelegate:(id)delegate;
- (void)setDynamicLayoutEnabled:(BOOL)enabled;
- (void)setGlobalBottomPadding:(double)padding;
- (void)setGlobalFooterHeight:(double)height;
- (void)setGlobalTopPadding:(double)padding;
- (void)setHiddenItemIndexPaths:(id)paths;
- (void)setInterItemSpacing:(CGSize)spacing;
- (void)setItemSize:(CGSize)size;
- (void)setRenderedStripsElementKind:(id)kind;
- (void)setSectionBottomPadding:(double)padding;
- (void)setSectionContentInset:(UIEdgeInsets)inset;
- (void)setSectionHeaderElementKind:(id)kind;
- (void)setSectionHeadersEnabled:(BOOL)enabled;
- (void)setSectionTopPadding:(double)padding;
- (void)setUsesAspectItems:(BOOL)items;
- (void)updateReorderingTargetIndexPath:(id)path;
@end

@implementation PUSectionedGridLayout

- (UIEdgeInsets)sectionContentInset
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

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)interItemSpacing
{
  width = self->_interItemSpacing.width;
  height = self->_interItemSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PUSectionedGridLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)transitionEffectiveContentOrigin
{
  x = self->_transitionEffectiveContentOrigin.x;
  y = self->_transitionEffectiveContentOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)transitionEndContentOffset
{
  x = self->_transitionEndContentOffset.x;
  y = self->_transitionEndContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)transitionStartContentOffset
{
  x = self->_transitionStartContentOffset.x;
  y = self->_transitionStartContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PUCollectionViewLayoutTransitioningDelegate)transitioningDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitioningDelegate);

  return WeakRetained;
}

- (id)pu_debugRows
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__PUSectionedGridLayout_pu_debugRows__block_invoke;
  v5[3] = &unk_1E7B7E038;
  v5[4] = self;
  v2 = [MEMORY[0x1E69C65E8] pu_rowWithTitle:@"Dump Sectioning" output:v5];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v3;
}

id __37__PUSectionedGridLayout_pu_debugRows__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 704) sectioningDescription];
  v3 = [*(*(a1 + 32) + 704) sectioningHash];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Hash: %@\n\n%@", v3, v2];

  return v4;
}

- (void)endInsertingItem
{
  reorderingInsertedIndexPath = self->_reorderingInsertedIndexPath;
  self->_reorderingInsertedIndexPath = 0;

  [(PUSectionedGridLayout *)self invalidateLayout];
}

- (void)beginInsertingItemAtIndexPath:(id)path
{
  objc_storeStrong(&self->_reorderingInsertedIndexPath, path);

  [(PUSectionedGridLayout *)self invalidateLayout];
}

- (void)endReordering
{
  reorderingSourceIndexPath = self->_reorderingSourceIndexPath;
  self->_reorderingSourceIndexPath = 0;

  reorderingTargetIndexPath = self->_reorderingTargetIndexPath;
  self->_reorderingTargetIndexPath = 0;

  [(PUSectionedGridLayout *)self invalidateLayout];
}

- (void)updateReorderingTargetIndexPath:(id)path
{
  pathCopy = path;
  if (([pathCopy isEqual:self->_reorderingTargetIndexPath] & 1) == 0)
  {
    collectionView = [(PUSectionedGridLayout *)self collectionView];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__PUSectionedGridLayout_updateReorderingTargetIndexPath___block_invoke;
    v6[3] = &unk_1E7B80C38;
    v6[4] = self;
    v7 = pathCopy;
    [collectionView performBatchUpdates:v6 completion:0];
  }
}

uint64_t __57__PUSectionedGridLayout_updateReorderingTargetIndexPath___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 536), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 invalidateLayout];
}

- (void)beginReorderingItemAtIndexPath:(id)path
{
  pathCopy = path;
  objc_storeStrong(&self->_reorderingTargetIndexPath, path);
  reorderingSourceIndexPath = self->_reorderingSourceIndexPath;
  self->_reorderingSourceIndexPath = pathCopy;

  [(PUSectionedGridLayout *)self invalidateLayout];
}

- (void)_adjustItemLayoutAttributesForReordering:(id)reordering
{
  reorderingCopy = reordering;
  v5 = reorderingCopy;
  if (self->_reorderingSourceIndexPath)
  {
    v16 = reorderingCopy;
    reorderingCopy = [reorderingCopy representedElementCategory];
    v5 = v16;
    if (!reorderingCopy)
    {
      indexPath = [v16 indexPath];
      v7 = [(PUSectionedGridLayout *)self reorderedIndexPath:indexPath];
      if (([v7 isEqual:indexPath] & 1) == 0)
      {
        layoutSectioning = self->_layoutSectioning;
        v9 = v7;
        item = [v9 item];
        section = [v9 section];

        v12 = [(PULayoutSampledSectioning *)layoutSectioning visualIndexPathForRealIndexPath:section isMainItem:item, 0];
        v14 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:v13];
        [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:v14 inVisualSection:v15, v12];
        [v16 setFrame:?];
      }

      if ([indexPath isEqual:self->_reorderingSourceIndexPath])
      {
        [v16 setHidden:1];
      }

      if ([indexPath isEqual:self->_reorderingInsertedIndexPath])
      {
        [v16 setAlpha:0.0];
      }

      v5 = v16;
    }
  }

  MEMORY[0x1EEE66BB8](reorderingCopy, v5);
}

- (PUGridCoordinates)gridCoordinatesInTransitionSectionForItemAtIndexPath:(id)path
{
  layoutSectioning = self->_layoutSectioning;
  pathCopy = path;
  item = [pathCopy item];
  section = [pathCopy section];

  v8 = [(PULayoutSampledSectioning *)layoutSectioning visualIndexPathForRealIndexPath:section isMainItem:item, 0];
  v10 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:v9];
  v12 = v11;
  transitionSectionInfosByVisualSection = self->_transitionSectionInfosByVisualSection;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
  v15 = [(NSDictionary *)transitionSectionInfosByVisualSection objectForKey:v14];

  if (v15)
  {
    visualSections = [v15 visualSections];
    visualRowStartMarkers = [v15 visualRowStartMarkers];
    v18 = visualRowStartMarkers;
    if (visualSections)
    {
      v19 = visualRowStartMarkers == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = [visualRowStartMarkers objectAtIndex:{objc_msgSend(visualSections, "countOfIndexesInRange:", 0, v8)}];
      v10 += [v20 integerValue];
    }
  }

  v21 = v10;
  v22 = v12;
  result.column = v22;
  result.row = v21;
  return result;
}

- (PUGridCoordinates)gridCoordinatesInVisualSectionForItemAtIndexPath:(id)path
{
  layoutSectioning = self->_layoutSectioning;
  pathCopy = path;
  item = [pathCopy item];
  section = [pathCopy section];

  [(PULayoutSampledSectioning *)layoutSectioning visualIndexPathForRealIndexPath:section isMainItem:item, 0];

  v9 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:v8];
  result.column = v10;
  result.row = v9;
  return result;
}

- (id)pu_layoutAttributesForElementClosestToPoint:(CGPoint)point inRect:(CGRect)rect passingTest:(id)test
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = point.y;
  v10 = point.x;
  testCopy = test;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __88__PUSectionedGridLayout_pu_layoutAttributesForElementClosestToPoint_inRect_passingTest___block_invoke;
  v20 = &unk_1E7B7E010;
  selfCopy = self;
  v22 = testCopy;
  v13 = testCopy;
  height = [(PUSectionedGridLayout *)self _realItemIndexPathClosestToPoint:&v17 inRect:v10 withTest:v9, x, y, width, height];
  selfCopy = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:height, v17, v18, v19, v20, selfCopy];

  return selfCopy;
}

uint64_t __88__PUSectionedGridLayout_pu_layoutAttributesForElementClosestToPoint_inRect_passingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:a2];
  v5 = [*(a1 + 32) layoutAttributesForItemAtIndexPath:v4];
  v6 = (*(*(a1 + 40) + 16))();

  return v6;
}

- (id)_realItemIndexPathClosestToPoint:(CGPoint)point inRect:(CGRect)rect withTest:(id)test
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = point.y;
  v10 = point.x;
  testCopy = test;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3010000000;
  v30 = &unk_1B3DBEC63;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v31 = vnegq_f64(v13);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0x7FEFFFFFFFFFFFFFLL;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__PUSectionedGridLayout__realItemIndexPathClosestToPoint_inRect_withTest___block_invoke;
  v20[3] = &unk_1E7B7DFE8;
  v14 = testCopy;
  v24 = v10;
  v25 = v9;
  v21 = v14;
  v22 = v26;
  v23 = &v27;
  [(PUSectionedGridLayout *)self _enumerateVisualItemFramesInRect:v20 usingBlock:x, y, width, height];
  v15 = v28[4];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 0;
  }

  else
  {
    v17 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealItemIndexPathForVisualIndexPath:v15, v28[5]];
    v16 = [MEMORY[0x1E696AC88] indexPathForItem:v18 inSection:v17];
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v27, 8);

  return v16;
}

uint64_t __74__PUSectionedGridLayout__realItemIndexPathClosestToPoint_inRect_withTest___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[4];
  if (!v6 || (result = (*(v6 + 16))(v6, a2, a3), result))
  {
    result = UIDistanceBetweenPointAndRect();
    v9 = *(a1[5] + 8);
    if (v8 < *(v9 + 24))
    {
      *(v9 + 24) = v8;
      v10 = *(a1[6] + 8);
      *(v10 + 32) = a2;
      *(v10 + 40) = a3;
    }
  }

  return result;
}

- (PUSimpleIndexPath)_visualIndexPathForTransitionCoordinates:(PUGridCoordinates)coordinates inTransitionSection:(int64_t)section
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (coordinates.column < 0)
  {
    goto LABEL_6;
  }

  row = coordinates.row;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if ((coordinates.row & 0x8000000000000000) == 0)
  {
    column = coordinates.column;
    if (coordinates.column < self->_columnsPerRow)
    {
      v13 = 0;
      v10 = [(PUSectionedGridLayout *)self visualGridCoordsForTransitionGridCoords:coordinates.row atTransitionSection:coordinates.column outVisualSection:section, &v13];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        NSLog(&cfstr_CouldNotFindVi.isa, row, column, section);
LABEL_6:
        v7 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_10;
      }

      v4 = [(PUSectionedGridLayout *)self visualIndexForItemAtGridCoordinates:v10, v11];
      if (v4 < [(PUSectionedGridLayout *)self numberOfVisualItemsInVisualSection:v13])
      {
        v7 = v13;
      }

      else
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

LABEL_10:
  v12 = v4;
  result.var1 = v12;
  result.var0 = v7;
  return result;
}

- (id)mainRealIndexPathAtGridCoordinates:(PUGridCoordinates)coordinates inTransitionSection:(int64_t)section
{
  section = [(PUSectionedGridLayout *)self _visualIndexPathForTransitionCoordinates:coordinates.row inTransitionSection:coordinates.column, section];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealItemIndexPathForVisualIndexPath:section, v6];
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:v8];
  }

  return v7;
}

- (id)targetTransitionRealIndexPathForIndexPath:(id)path
{
  pathCopy = path;
  _gridTransitionLayout = [(PUSectionedGridLayout *)self _gridTransitionLayout];

  if (!_gridTransitionLayout)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:3351 description:@"Cannot be called if a grid transition is not ongoing."];
  }

  layoutSectioning = self->_layoutSectioning;
  v8 = pathCopy;
  item = [v8 item];
  section = [v8 section];

  v11 = [(PULayoutSampledSectioning *)layoutSectioning visualIndexPathForRealIndexPath:section isMainItem:item, 0];
  v13 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:v12];
  v15 = v14;
  transitionSectionInfosByVisualSection = self->_transitionSectionInfosByVisualSection;
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
  v18 = [(NSDictionary *)transitionSectionInfosByVisualSection objectForKey:v17];

  v19 = [(PUSectionedGridLayout *)self _targetTransitionGridCoordsForGridCoords:v13 atVisualSection:v15 transitionSectionInfo:v11, v18];
  v21 = v20;
  _gridTransitionLayout2 = [(PUSectionedGridLayout *)self _gridTransitionLayout];
  v23 = [_gridTransitionLayout2 mainRealIndexPathAtGridCoordinates:v19 inTransitionSection:{v21, objc_msgSend(v18, "transitionSection")}];

  return v23;
}

- (PUGridCoordinates)visualGridCoordsForTransitionGridCoords:(PUGridCoordinates)coords atTransitionSection:(int64_t)section outVisualSection:(int64_t *)visualSection
{
  column = coords.column;
  row = coords.row;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v10 = [(NSDictionary *)self->_transitionSectionInfosByTransitionSection objectForKey:v9];
  v11 = [(PUSectionedGridLayout *)self _visualRowPathForTransitionRowIndex:row transitionSectionInfo:v10];
  v13 = v12;
  if (visualSection)
  {
    *visualSection = v11;
  }

  v14 = v13;
  v15 = column;
  result.column = v15;
  result.row = v14;
  return result;
}

- (PUGridCoordinates)targetTransitionGridCoordsForGridCoords:(PUGridCoordinates)coords atVisualSection:(int64_t)section outTransitionSection:(int64_t *)transitionSection
{
  column = coords.column;
  row = coords.row;
  transitionSectionInfosByVisualSection = self->_transitionSectionInfosByVisualSection;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v12 = [(NSDictionary *)transitionSectionInfosByVisualSection objectForKey:v11];

  v13 = [(PUSectionedGridLayout *)self _targetTransitionGridCoordsForGridCoords:row atVisualSection:column transitionSectionInfo:section, v12];
  v15 = v14;
  if (transitionSection)
  {
    *transitionSection = [v12 transitionSection];
  }

  v16 = v13;
  v17 = v15;
  result.column = v17;
  result.row = v16;
  return result;
}

- (id)transitionAnchorIndexPathForTransitionSection:(int64_t)section
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v5 = [(NSDictionary *)self->_transitionSectionInfosByTransitionSection objectForKey:v4];
  anchorRealPath = [v5 anchorRealPath];

  return anchorRealPath;
}

- (id)transitionSectionsInRect:(CGRect)rect toOrFromGridLayout:(id)layout
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutCopy = layout;
  height = [(PUSectionedGridLayout *)self visualSectionsInRect:x, y, width, height];
  v12 = v11;
  v13 = [(PUSectionedGridLayout *)self _visualSectionsMatchTransitionSectionsToOrFromLayout:layoutCopy];
  v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v15 = v14;
  if (v13)
  {
    [v14 addIndexesInRange:{height, v12}];
  }

  else if (height < height + v12)
  {
    do
    {
      v16 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealSectionForVisualSection:height];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [layoutCopy visualSectionForRealSection:v16];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v15 addIndex:v17];
        }
      }

      ++height;
      --v12;
    }

    while (v12);
  }

  return v15;
}

- (id)maxItemIndexPathLeftOfPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3010000000;
  v27 = &unk_1B3DBEC63;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v28 = vnegq_f64(v6);
  collectionView = [(PUSectionedGridLayout *)self collectionView];
  [collectionView bounds];

  [(PUSectionedGridLayout *)self interItemSpacing];
  collectionView2 = [(PUSectionedGridLayout *)self collectionView];
  [collectionView2 bounds];

  [(PUSectionedGridLayout *)self interItemSpacing];
  collectionView3 = [(PUSectionedGridLayout *)self collectionView];
  [collectionView3 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __53__PUSectionedGridLayout_maxItemIndexPathLeftOfPoint___block_invoke;
  v23[3] = &unk_1E7B7DFC0;
  *&v23[6] = x;
  *&v23[7] = y;
  v23[4] = self;
  v23[5] = &v24;
  [(PUSectionedGridLayout *)self _enumerateVisualItemFramesInRect:v23 usingBlock:v11, v13, v15, v17];
  v18 = v25[4];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v20 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealItemIndexPathForVisualIndexPath:v18, v25[5]];
    v19 = [MEMORY[0x1E696AC88] indexPathForItem:v21 inSection:v20];
  }

  _Block_object_dispose(&v24, 8);

  return v19;
}

uint64_t __53__PUSectionedGridLayout_maxItemIndexPathLeftOfPoint___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(result + 56);
  if (a5 < v5 && a5 + *(*(result + 32) + 824) > v5 && a4 < *(result + 48))
  {
    v6 = *(*(result + 40) + 8);
    v7 = *(v6 + 32);
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v8 = (v6 + 40), v9 = *(v6 + 40), v9 == 0x7FFFFFFFFFFFFFFFLL))
    {
      *(v6 + 32) = a2;
      v8 = (v6 + 40);
LABEL_7:
      *v8 = a3;
      return result;
    }

    if (a2 > v7 || (a2 == v7 ? (v10 = a3 <= v9) : (v10 = 1), !v10))
    {
      *(v6 + 32) = a2;
      goto LABEL_7;
    }
  }

  return result;
}

- (id)maxItemIndexPathAbovePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3010000000;
  v23 = &unk_1B3DBEC63;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v24 = vnegq_f64(v6);
  collectionView = [(PUSectionedGridLayout *)self collectionView];
  [collectionView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__PUSectionedGridLayout_maxItemIndexPathAbovePoint___block_invoke;
  v19[3] = &unk_1E7B7DF98;
  *&v19[5] = x;
  *&v19[6] = y;
  v19[4] = &v20;
  [(PUSectionedGridLayout *)self _enumerateVisualItemFramesInRect:v19 usingBlock:v9, v11, v13, y];
  v14 = v21[4];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  else
  {
    v16 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealItemIndexPathForVisualIndexPath:v14, v21[5]];
    v15 = [MEMORY[0x1E696AC88] indexPathForItem:v17 inSection:v16];
  }

  _Block_object_dispose(&v20, 8);

  return v15;
}

uint64_t __52__PUSectionedGridLayout_maxItemIndexPathAbovePoint___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a5 < *(result + 48))
  {
    v5 = *(*(result + 32) + 8);
    v6 = *(v5 + 32);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v7 = (v5 + 40), v8 = *(v5 + 40), v8 == 0x7FFFFFFFFFFFFFFFLL))
    {
      *(v5 + 32) = a2;
      v7 = (v5 + 40);
LABEL_5:
      *v7 = a3;
      return result;
    }

    if (a2 > v6 || (a2 == v6 ? (v9 = a3 <= v8) : (v9 = 1), !v9))
    {
      *(v5 + 32) = a2;
      goto LABEL_5;
    }
  }

  return result;
}

- (id)itemIndexPathClosestToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v6 = self->_contentSize.width * 0.5;

  return [(PUSectionedGridLayout *)self _realItemIndexPathClosestToPoint:0 inRect:x withTest:y, x - v6, y - v6];
}

- (id)itemIndexPathAtPoint:(CGPoint)point
{
  v4 = [(PUSectionedGridLayout *)self _itemVisualIndexPathAtPoint:point.x, point.y];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealItemIndexPathForVisualIndexPath:v4, v5];
    v6 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:v7];
  }

  return v6;
}

- (id)itemIndexPathAtCenterOfRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];

  return [(PUSectionedGridLayout *)self _realItemIndexPathClosestToPoint:0 inRect:x + width * 0.5 withTest:y + height * 0.5, x, y, width, height];
}

- (int64_t)numberOfRealItemsInVisualSection:(int64_t)section
{
  if (self->_totalVisualSections <= section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:3153 description:{@"Requested count for visual section (%ld) beyond bounds (%ld).", section, self->_totalVisualSections}];
  }

  layoutSectioning = self->_layoutSectioning;

  return [(PULayoutSampledSectioning *)layoutSectioning numberOfRealItemsInVisualSection:section];
}

- (int64_t)numberOfRealItemsInRealSection:(int64_t)section
{
  if (self->_totalRealSections <= section)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:3147 description:{@"Requested count for real section (%ld) beyond bounds (%ld).", section, self->_totalRealSections}];
  }

  return self->_realSectionItemCounts[section];
}

- (void)enumerateRealSectionsForVisualSection:(int64_t)section usingBlock:(id)block
{
  blockCopy = block;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  [(PULayoutSampledSectioning *)self->_layoutSectioning enumerateRealSectionsForVisualSection:section usingBlock:blockCopy];
}

- (int64_t)mainRealSectionForVisualSection:(int64_t)section
{
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  layoutSectioning = self->_layoutSectioning;

  return [(PULayoutSampledSectioning *)layoutSectioning mainRealSectionForVisualSection:section];
}

- (int64_t)visualSectionForRealSection:(int64_t)section
{
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  layoutSectioning = self->_layoutSectioning;

  return [(PULayoutSampledSectioning *)layoutSectioning visualSectionForRealSection:section];
}

- (void)getVisualSectionIndex:(int64_t *)index visualItemRange:(_NSRange *)range forRenderStripAtIndexPath:(id)path
{
  pathCopy = path;
  v8 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:?];
  *index = v8;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    columnsPerRow = self->_columnsPerRow;
    v12 = [(PUSectionedGridLayout *)self numberOfVisualItemsInVisualSection:?];
    v9 = -[PUSectionedGridLayout _firstVisualItemIndexForRenderedStripIndex:](self, "_firstVisualItemIndexForRenderedStripIndex:", [pathCopy item]);
    v10 = v12 - v9;
    if (columnsPerRow < (v12 - v9))
    {
      v10 = columnsPerRow;
    }
  }

  range->location = v9;
  range->length = v10;
}

- (void)enumerateItemIndexPathsForVisualSection:(int64_t)section inVisualItemRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  [(PUSectionedGridLayout *)self _prepareSamplingDataIfNeeded];
  [(PULayoutSampledSectioning *)self->_layoutSectioning enumerateRealMainItemIndexPathsForVisualSection:section inVisualItemRange:location usingBlock:length, blockCopy];
}

- (void)setRenderedStripsElementKind:(id)kind
{
  kindCopy = kind;
  if (self->_renderedStripsElementKind != kindCopy)
  {
    v6 = kindCopy;
    objc_storeStrong(&self->_renderedStripsElementKind, kind);
    self->_usesRenderedStrips = self->_renderedStripsElementKind != 0;
    [(PUSectionedGridLayout *)self _invalidateSupplementaryViewKinds];
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
    kindCopy = v6;
  }
}

- (int64_t)visualSectionForHeaderIndexPath:(id)path
{
  pathCopy = path;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v5 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:pathCopy];

  return v5;
}

- (int64_t)_nextVisualSectionForSupplementaryViewSection:(int64_t)section forward:(BOOL)forward
{
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = forward ? section + 1 : section - 1;
  if (result < 0 || result >= self->_totalVisualSections)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (int64_t)numberOfItemsInRealSection:(int64_t)section forSectioning:(id)sectioning
{
  if (!self->_sectioningDataIsValid)
  {
    [(PUSectionedGridLayout *)self _prepareSectioningDataIfNeeded:section];
  }

  return self->_realSectionItemCounts[section];
}

- (id)realSectionsForVisualSection:(int64_t)section forSectioning:(id)sectioning
{
  sectioningCopy = sectioning;
  if (!self->_sectioningDataIsValid)
  {
    [(PUSectionedGridLayout *)self _prepareSectioningDataIfNeeded];
  }

  if (self->_delegateSupportsGroupedSections)
  {
    delegate = [(PUSectionedGridLayout *)self delegate];
    v8 = [delegate sectionedGridLayout:self sectionsForVisualSection:section];
  }

  else
  {
    v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:section];
  }

  return v8;
}

- (int64_t)numberOfRealSectionsForSectioning:(id)sectioning
{
  if (!self->_sectioningDataIsValid)
  {
    [(PUSectionedGridLayout *)self _prepareSectioningDataIfNeeded];
  }

  return self->_totalRealSections;
}

- (int64_t)maximumNumberOfItemsInVisualSection:(int64_t)section withNumberOfRealItems:(int64_t)items forSectioning:(id)sectioning
{
  sectioningCopy = sectioning;
  if (!self->_samplingDataIsValid)
  {
    [(PUSectionedGridLayout *)self _prepareSamplingDataIfNeeded];
  }

  columnsPerRow = self->_columnsPerRow;
  if (columnsPerRow >= 1 && (visualSectionMaxRows = self->_visualSectionMaxRows) != 0 && (v11 = visualSectionMaxRows[section], v11 >= 1))
  {
    v12 = items / columnsPerRow;
    if ((items / columnsPerRow) <= 1)
    {
      v12 = 1;
    }

    if (v12 < v11)
    {
      v11 = v12;
    }

    v13 = v11 * columnsPerRow;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)numberOfVisualSectionsForSectioning:(id)sectioning
{
  if (!self->_sectioningDataIsValid)
  {
    [(PUSectionedGridLayout *)self _prepareSectioningDataIfNeeded];
  }

  return self->_totalVisualSections;
}

- (void)_ensureVisualSection:(int64_t)section inData:(id)data
{
  dataCopy = data;
  headerLayoutAttributes = [dataCopy headerLayoutAttributes];
  v7 = [headerLayoutAttributes count];

  if (!v7)
  {
    [(PUSectionedGridLayout *)self _ensureUpdatedLayoutData:dataCopy isForward:1 outDeltaOriginY:0];
  }

  v8 = [(PUSectionedGridLayout *)self supplementaryViewIndexPathForVisualSection:section supplementaryViewItemIndex:0];
  headerLayoutAttributes2 = [dataCopy headerLayoutAttributes];
  firstObject = [headerLayoutAttributes2 firstObject];
  indexPath = [firstObject indexPath];

  while ([v8 compare:indexPath] == -1)
  {
    v12 = [(PUSectionedGridLayout *)self _ensureUpdatedLayoutData:dataCopy isForward:0 outDeltaOriginY:0];
    headerLayoutAttributes3 = [dataCopy headerLayoutAttributes];
    firstObject2 = [headerLayoutAttributes3 firstObject];
    indexPath2 = [firstObject2 indexPath];

    indexPath = indexPath2;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  indexPath2 = indexPath;
LABEL_8:
  headerLayoutAttributes4 = [dataCopy headerLayoutAttributes];
  lastObject = [headerLayoutAttributes4 lastObject];
  indexPath3 = [lastObject indexPath];

  while ([v8 compare:indexPath3] == 1)
  {
    v19 = [(PUSectionedGridLayout *)self _ensureUpdatedLayoutData:dataCopy isForward:1 outDeltaOriginY:0];
    headerLayoutAttributes5 = [dataCopy headerLayoutAttributes];
    lastObject2 = [headerLayoutAttributes5 lastObject];
    indexPath4 = [lastObject2 indexPath];

    indexPath3 = indexPath4;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  indexPath4 = indexPath3;
LABEL_13:
}

- (void)_ensureRect:(CGRect)rect inData:(id)data outDeltaOriginY:(double *)y
{
  width = rect.size.width;
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  v10 = dataCopy;
  v11 = -y;
  if (y >= 0.0)
  {
    v11 = 0.0;
  }

  v51 = 0.0;
  [dataCopy currentContentBounds];
  v12 = v52.origin.x;
  v13 = v52.origin.y;
  v14 = v52.size.width;
  v15 = v52.size.height;
  if (CGRectIsEmpty(v52))
  {
    [(PUSectionedGridLayout *)self _ensureUpdatedLayoutData:v10 isForward:1 outDeltaOriginY:&v51];
    [v10 currentContentBounds];
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v20 = v51;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = y + v20;
  do
  {
    v53.origin.x = x;
    v53.origin.y = v21;
    v53.size.width = width;
    v53.size.height = height;
    MinY = CGRectGetMinY(v53);
    v54.origin.x = v12;
    v54.origin.y = v13;
    v54.size.width = v14;
    v54.size.height = v15;
    if (MinY >= CGRectGetMinY(v54))
    {
      break;
    }

    v23 = [(PUSectionedGridLayout *)self _ensureUpdatedLayoutData:v10 isForward:0 outDeltaOriginY:&v51];
    v24 = v51;
    if (y < 0.0)
    {
      v24 = 0.0;
    }

    v21 = v21 + v24;
    [v10 currentContentBounds];
    v12 = v25;
    v13 = v26;
    v14 = v27;
    v15 = v28;
  }

  while (v23);
  do
  {
    v55.origin.x = x;
    v55.origin.y = v21;
    v55.size.width = width;
    v55.size.height = height;
    MaxY = CGRectGetMaxY(v55);
    v56.origin.x = v12;
    v56.origin.y = v13;
    v56.size.width = v14;
    v56.size.height = v15;
    if (MaxY <= CGRectGetMaxY(v56))
    {
      break;
    }

    v29 = [(PUSectionedGridLayout *)self _ensureUpdatedLayoutData:v10 isForward:1 outDeltaOriginY:&v51];
    v30 = v51;
    if (y < 0.0)
    {
      v30 = 0.0;
    }

    v21 = v21 + v30;
    [v10 currentContentBounds];
    v12 = v31;
    v13 = v32;
    v14 = v33;
    v15 = v34;
  }

  while (v29);
  headerLayoutAttributes = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
  lastObject = [headerLayoutAttributes lastObject];

  if (lastObject)
  {
    indexPath = [lastObject indexPath];
    v39 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:indexPath];
    v40 = self->_totalVisualSections - 1;

    if (v39 == v40)
    {
      globalFooterAttributes = self->_globalFooterAttributes;
      if (globalFooterAttributes)
      {
        [(UICollectionViewLayoutAttributes *)globalFooterAttributes frame];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        [v10 currentContentBounds];
        [(UICollectionViewLayoutAttributes *)self->_globalFooterAttributes setFrame:v43, CGRectGetMaxY(v57), v45, v47];
      }
    }
  }

  if (y)
  {
    *y = v48 + v51;
  }
}

- (BOOL)_ensureUpdatedLayoutData:(id)data isForward:(BOOL)forward outDeltaOriginY:(double *)y
{
  forwardCopy = forward;
  v95 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!self->_dynamicLayoutEnabled)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v80 = v79 = dataCopy;
    [v80 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:2820 description:@"This should be called only when dynamic layout is enabled."];

    dataCopy = v79;
  }

  collectionView = [(PUSectionedGridLayout *)self collectionView];
  [collectionView bounds];
  x = v9;
  y = v11;
  v85 = v13;
  numberOfPagesToCache = [dataCopy numberOfPagesToCache];
  [dataCopy currentContentBounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  height = v21;
  headerLayoutAttributes = [dataCopy headerLayoutAttributes];
  *&r2[2] = [dataCopy headerLayoutAttributesByVisualSection];
  if (forwardCopy)
  {
    [headerLayoutAttributes lastObject];
  }

  else
  {
    [headerLayoutAttributes firstObject];
  }
  v24 = ;
  indexPath = [v24 indexPath];
  v26 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:indexPath];
  [v24 frame];
  r2[0] = v27;
  rect = v28;
  v30 = v29;
  v32 = v31;
  if (v24)
  {
    v33 = [(PUSectionedGridLayout *)self _nextVisualSectionForSupplementaryViewSection:v26 forward:forwardCopy];
    y = v18;
    x = v16;
  }

  else
  {
    if ([headerLayoutAttributes count] || objc_msgSend(*&r2[2], "count") || (v96.origin.x = v16, v96.origin.y = v18, v96.size.width = v20, v96.size.height = height, !CGRectIsEmpty(v96)))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:2843 description:0];
    }

    v33 = [(PUSectionedGridLayout *)self _visualSectionAtPoint:x, y];
    height = 0.0;
    v20 = 0.0;
  }

  *&r2[1] = headerLayoutAttributes;
  if (v33 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v84 = dataCopy;
    [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    v39 = v38 = numberOfPagesToCache;
    firstObject = [headerLayoutAttributes firstObject];
    indexPath2 = [firstObject indexPath];
    v83 = v39;
    v81 = [indexPath2 isEqual:v39];

    v42 = v85 * v38;
    v43 = x;
    yCopy = y;
    v45 = v20;
    v46 = height;
    if (forwardCopy)
    {
      v47 = v42 + CGRectGetMaxY(*&v43);
    }

    else
    {
      v47 = CGRectGetMinY(*&v43) - v42;
    }

    v48 = v24 == 0;
    v34 = 0;
    while (1)
    {
      v97.origin.x = x;
      v97.origin.y = y;
      v97.size.width = v20;
      v97.size.height = height;
      if (v47 >= CGRectGetMinY(v97))
      {
        v98.origin.x = x;
        v98.origin.y = y;
        v98.size.width = v20;
        v98.size.height = height;
        if (v47 <= CGRectGetMaxY(v98))
        {
          break;
        }
      }

      dataCopy = v84;
      while ([(PUSectionedGridLayout *)self shouldHideVisualSection:v33])
      {
        v33 = [(PUSectionedGridLayout *)self _nextVisualSectionForSupplementaryViewSection:v33 forward:forwardCopy];
        if (v33 == 0x7FFFFFFFFFFFFFFFLL)
        {

          v37 = collectionView;
          goto LABEL_39;
        }
      }

      v82 = v47;
      [(PUSectionedGridLayout *)self _delegateAccessibilitySectionHeaderHeightForSection:v33];
      v50 = v49;
      width = self->_contentSize.width;
      if (v48)
      {
        [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:v33];
        v53 = v52;
        v54 = r2[1];
      }

      else
      {
        v99.origin.x = r2[0];
        v99.origin.y = rect;
        v99.size.width = v30;
        v99.size.height = v32;
        MinY = CGRectGetMinY(v99);
        v54 = r2[1];
        if (forwardCopy)
        {
          [(PUSectionedGridLayout *)self _heightOfSectionAtVisualIndex:v33 - 1];
          v57 = MinY + v56;
        }

        else
        {
          [(PUSectionedGridLayout *)self _heightOfSectionAtVisualIndex:v33];
          v57 = MinY - v58;
        }

        if (PUMainScreenScale_onceToken != -1)
        {
          dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
        }

        v53 = round(*&PUMainScreenScale_screenScale * v57) / *&PUMainScreenScale_screenScale;
      }

      v59 = [(PUSectionedGridLayout *)self supplementaryViewIndexPathForVisualSection:v33 supplementaryViewItemIndex:0];

      sectionHeaderElementKind = [(PUSectionedGridLayout *)self sectionHeaderElementKind];
      v86 = v59;
      v36 = [(UICollectionViewLayoutAttributes *)PUSectionedGridLayoutAttributes layoutAttributesForSupplementaryViewOfKind:sectionHeaderElementKind withIndexPath:v59];

      [v36 setFrame:{r2[0], v53, width, v50}];
      v61 = 0;
      if (forwardCopy)
      {
        v61 = [*&v54 count];
      }

      [*&v54 insertObject:v36 atIndex:v61];
      v62 = [MEMORY[0x1E696AD98] numberWithInteger:v33];
      [*&r2[2] setObject:v36 forKey:v62];

      [(PUSectionedGridLayout *)self _heightOfSectionAtVisualIndex:v33];
      v102.size.height = v63;
      v100.origin.x = x;
      v100.origin.y = y;
      v100.size.width = v20;
      v100.size.height = height;
      v102.origin.x = r2[0];
      rect = v53;
      v102.origin.y = v53;
      v102.size.width = width;
      v101 = CGRectUnion(v100, v102);
      x = v101.origin.x;
      y = v101.origin.y;
      v20 = v101.size.width;
      height = v101.size.height;
      v33 = [(PUSectionedGridLayout *)self _nextVisualSectionForSupplementaryViewSection:v33 forward:forwardCopy];
      v48 = 0;
      v34 = 1;
      v24 = v36;
      v64 = v86;
      indexPath = v86;
      v32 = v50;
      v30 = width;
      v47 = v82;
      if (v33 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_41;
      }
    }

    v64 = indexPath;
    v36 = v24;
LABEL_41:
    indexPath = v64;
    firstObject2 = [*&r2[1] firstObject];
    indexPath3 = [firstObject2 indexPath];
    v68 = [indexPath3 isEqual:v83];

    globalTopPadding = self->_globalTopPadding;
    [(PUSectionedGridLayout *)self globalHeaderHeight];
    yCopy2 = globalTopPadding + v70;
    sectionTopPadding = 0.0;
    if (y <= yCopy2)
    {
      dataCopy = v84;
      if (v81 & 1 | ((v68 & 1) == 0))
      {
        sectionTopPadding = yCopy2 - y;
      }

      else
      {
        sectionTopPadding = self->_sectionTopPadding;
        height = height + sectionTopPadding;
      }

      if (sectionTopPadding == 0.0)
      {
        goto LABEL_56;
      }

      v92 = 0u;
      v93 = 0u;
      *&r2[3] = 0u;
      v91 = 0u;
      v72 = *&r2[1];
      v73 = [v72 countByEnumeratingWithState:&r2[3] objects:v94 count:16];
      if (v73)
      {
        v74 = v73;
        v75 = *v91;
        do
        {
          for (i = 0; i != v74; ++i)
          {
            if (*v91 != v75)
            {
              objc_enumerationMutation(v72);
            }

            v77 = *(*&r2[4] + 8 * i);
            [v77 frame];
            [v77 setFrame:?];
          }

          v74 = [v72 countByEnumeratingWithState:&r2[3] objects:v94 count:16];
        }

        while (v74);
      }
    }

    else
    {
      yCopy2 = y;
    }

    dataCopy = v84;
LABEL_56:
    [dataCopy setCurrentContentBounds:{x, yCopy2, v20, height}];

    goto LABEL_14;
  }

  v34 = 0;
  sectionTopPadding = 0.0;
  v36 = v24;
LABEL_14:
  v37 = collectionView;
  if (y)
  {
    *y = sectionTopPadding;
  }

  v24 = v36;
LABEL_39:

  return v34 & 1;
}

- (double)_sectionWidth
{
  collectionView = [(PUSectionedGridLayout *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PUSectionedGridLayout *)self sectionContentInset];
  v13 = v12;
  v15 = v14;
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  return CGRectGetWidth(v17) - (v13 + v15);
}

- (int64_t)numberOfColumnsForWidth:(double)width
{
  [(PUSectionedGridLayout *)self interItemSpacing];
  v6 = v5;
  [(PUSectionedGridLayout *)self itemSize];
  v8 = v7;
  cropType = [(PUSectionedGridLayout *)self cropType];
  if (v8 <= 0.0)
  {
    return 0;
  }

  if (cropType == 3)
  {
    return llround((v6 + width) / (v6 + v8) + 0.00000999999975);
  }

  if (cropType != 2)
  {
    if (cropType != 1)
    {
      return vcvtmd_s64_f64((v6 + width) / (v6 + v8) + 0.00000999999975);
    }

    [(PUSectionedGridLayout *)self cropAmount];
    return ((width + v10 * -2.0) / (v8 - v10));
  }

  [(PUSectionedGridLayout *)self cropAmount];
  if (width <= 0.0)
  {
    return 0;
  }

  result = 0;
  v13 = v8 - v12;
  v14 = 0.0;
  do
  {
    if ((result & 1) != 0 && result >= 2)
    {
      v16 = v13;
    }

    else
    {
      v16 = v8;
    }

    v14 = v14 + v16;
    if (v14 <= width)
    {
      v14 = v6 + v14;
      ++result;
    }
  }

  while (v14 < width);
  return result;
}

- (CGSize)layoutItemSizeForColumn:(int64_t)column
{
  [(PUSectionedGridLayout *)self itemSize];
  v6 = v5;
  v8 = v7;
  if (column >= 0)
  {
    columnCopy = column;
  }

  else
  {
    columnCopy = -column;
  }

  if ([(PUSectionedGridLayout *)self cropType]== 1)
  {
    [(PUSectionedGridLayout *)self _sectionWidth];
    v10 = [(PUSectionedGridLayout *)self numberOfColumnsForWidth:?];
    if (!column)
    {
      goto LABEL_16;
    }

LABEL_10:
    if (columnCopy != v10 - 1)
    {
      [(PUSectionedGridLayout *)self cropAmount];
      v6 = v6 - v11;
    }

    goto LABEL_16;
  }

  if ([(PUSectionedGridLayout *)self cropType]== 2)
  {
    [(PUSectionedGridLayout *)self _sectionWidth];
    v10 = [(PUSectionedGridLayout *)self numberOfColumnsForWidth:?];
    if (!column || (columnCopy & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if ([(PUSectionedGridLayout *)self cropType]== 3)
  {
    v12 = v6 * column;
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
      v12 = v6 * column;
    }

    v6 = round(*&PUMainScreenScale_screenScale * (v6 * (column + 1))) / *&PUMainScreenScale_screenScale - round(*&PUMainScreenScale_screenScale * v12) / *&PUMainScreenScale_screenScale;
  }

LABEL_16:
  v13 = v6;
  v14 = v8;
  result.height = v14;
  result.width = v13;
  return result;
}

- (_NSRange)visualSectionsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (self->_dynamicLayoutEnabled)
  {
    v37 = 0.0;
    [(PUSectionedGridLayout *)self _ensureRect:self->_layoutData inData:&v37 outDeltaOriginY:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
    y = y + v37;
    headerLayoutAttributes = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
    v9 = [headerLayoutAttributes count];

    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    if (CGRectGetMinY(v39) == 0.0 && (-[PUSectionedGridLayoutData headerLayoutAttributes](self->_layoutData, "headerLayoutAttributes"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v11))
    {
      headerLayoutAttributes2 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
      v13 = [headerLayoutAttributes2 objectAtIndexedSubscript:0];
LABEL_5:
    }

    else
    {
      v15 = v9 - 1;
      if (v9 - 1 < 0)
      {
        goto LABEL_16;
      }

      v16 = 0;
      v13 = 0;
      do
      {
        v17 = v13;
        v18 = v16 + (v15 - v16) / 2;
        headerLayoutAttributes3 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
        v13 = [headerLayoutAttributes3 objectAtIndexedSubscript:v18];

        v20 = v18 + 1;
        headerLayoutAttributes4 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
        v22 = [headerLayoutAttributes4 count];

        if (v18 + 1 == v22)
        {
          break;
        }

        headerLayoutAttributes5 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
        headerLayoutAttributes2 = [headerLayoutAttributes5 objectAtIndexedSubscript:v18 + 1];

        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        MinY = CGRectGetMinY(v40);
        [v13 frame];
        if (MinY >= CGRectGetMinY(v41))
        {
          v42.origin.x = x;
          v42.origin.y = y;
          v42.size.width = width;
          v42.size.height = height;
          v25 = CGRectGetMinY(v42);
          [headerLayoutAttributes2 frame];
          if (v25 < CGRectGetMinY(v43))
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = v18 - 1;
          v20 = v16;
        }

        v16 = v20;
      }

      while (v20 <= v15);
    }

    if (v13)
    {
      indexPath = [v13 indexPath];
      v14 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:indexPath];

      goto LABEL_17;
    }

LABEL_16:
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_17;
  }

  v14 = [(PUSectionedGridLayout *)self _visualSectionAtPoint:rect.origin.x, rect.origin.y];
LABEL_17:
  if (v14 == 0x7FFFFFFFFFFFFFFFLL || v14 >= self->_totalVisualSections)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0;
    v28 = v14;
    do
    {
      if (self->_dynamicLayoutEnabled)
      {
        headerLayoutAttributesByVisualSection = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributesByVisualSection];
        v30 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
        v31 = [headerLayoutAttributesByVisualSection objectForKey:v30];

        if (!v31)
        {
          break;
        }

        [v31 frame];
        v33 = v32;
      }

      else
      {
        [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:v28];
        v33 = v34;
      }

      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      if (v33 > CGRectGetMaxY(v44))
      {
        break;
      }

      ++v27;
      ++v28;
    }

    while (v28 < self->_totalVisualSections);
  }

  v35 = v14;
  v36 = v27;
  result.length = v36;
  result.location = v35;
  return result;
}

- (int64_t)_visualSectionAtPoint:(CGPoint)point
{
  totalVisualSections = self->_totalVisualSections;
  v4 = totalVisualSections - 1;
  if (totalVisualSections < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  y = point.y;
  v7 = 0;
  do
  {
    v8 = v7 + (v4 - v7) / 2;
    visualSectionStartYs = self->_visualSectionStartYs;
    if (y >= visualSectionStartYs[v8])
    {
      if (y >= visualSectionStartYs[v8 + 1])
      {
        v7 = v8 + 1;
      }

      else if (![(PUSectionedGridLayout *)self shouldHideVisualSection:v7 + (v4 - v7) / 2])
      {
        break;
      }
    }

    else
    {
      v4 = v8 - 1;
    }
  }

  while (v7 <= v4);
  if (v8 >= self->_totalVisualSections)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:?];
  if (y >= v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (double)_heightOfSectionAtVisualIndex:(int64_t)index
{
  [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:?];
  v6 = v5;
  [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:index + 1];
  v8 = v7 - v6;
  [(PUSectionedGridLayout *)self _sectionHeaderHeightDeltaForSection:index];
  return v8 + v9;
}

- (double)_startYOfContentAtVisualSectionIndexWithDynamicLayout:(int64_t)layout
{
  v3 = 0.0;
  if (layout == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  if (self->_dynamicLayoutEnabled && !self->_isPreparingLayout)
  {
    [(PUSectionedGridLayout *)self _ensureVisualSection:layout inData:self->_layoutData];
    headerLayoutAttributesByVisualSection = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributesByVisualSection];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:layout];
    v9 = [headerLayoutAttributesByVisualSection objectForKey:v8];

    [v9 frame];
    v11 = v10;
    [(PUSectionedGridLayout *)self _delegateAccessibilitySectionHeaderHeightForSection:layout];
    v3 = v12 + v11 + self->_sectionContentInset.top;

    return v3;
  }

  [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:?];
  return result;
}

- (double)_startYOfContentAtVisualSectionIndex:(int64_t)index
{
  [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:?];
  v6 = v5 + self->_sectionTopPadding;
  [(PUSectionedGridLayout *)self _finalSectionHeaderHeightForSection:index];
  return v6 + v7 + self->_sectionContentInset.top;
}

- (CGRect)frameForSectionHeaderAtVisualSection:(int64_t)section
{
  [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:?];
  v6 = v5 + self->_sectionTopPadding;
  [(PUSectionedGridLayout *)self _finalSectionHeaderHeightForSection:section];
  v8 = v7;
  width = self->_contentSize.width;
  v10 = 0.0;
  v11 = v6;
  result.size.height = v8;
  result.size.width = width;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)frameForSectionHeaderOfRealItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    -[PUSectionedGridLayout frameForSectionHeaderAtVisualSection:](self, "frameForSectionHeaderAtVisualSection:", -[PULayoutSampledSectioning visualIndexPathForRealIndexPath:isMainItem:](self->_layoutSectioning, "visualIndexPathForRealIndexPath:isMainItem:", [itemCopy section], objc_msgSend(itemCopy, "item"), 0));
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)frameForItemAtGridCoordinates:(PUGridCoordinates)coordinates inTransitionSection:(int64_t)section
{
  v11 = 0;
  v5 = [(PUSectionedGridLayout *)self visualGridCoordsForTransitionGridCoords:coordinates.row atTransitionSection:coordinates.column outVisualSection:section, &v11];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:v5 inVisualSection:v6];
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (PUSimpleIndexPath)_visualRowPathForTransitionRowIndex:(int64_t)index transitionSectionInfo:(id)info
{
  infoCopy = info;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v25 = &unk_1B3DBEC63;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v26 = vnegq_f64(v6);
  visualSections = [infoCopy visualSections];
  visualRowStartMarkers = [infoCopy visualRowStartMarkers];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PUSectionedGridLayout__visualRowPathForTransitionRowIndex_transitionSectionInfo___block_invoke;
  v15[3] = &unk_1E7B7DF70;
  v9 = visualRowStartMarkers;
  v16 = v9;
  v18 = v21;
  indexCopy = index;
  v10 = visualSections;
  v17 = v10;
  v19 = &v22;
  [v10 enumerateIndexesUsingBlock:v15];
  v11 = v23[4];
  v12 = v23[5];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v22, 8);

  v13 = v11;
  v14 = v12;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

void __83__PUSectionedGridLayout__visualRowPathForTransitionRowIndex_transitionSectionInfo___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24)];
  v7 = [v6 integerValue];

  v8 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 48) + 8) + 24) + 1];
  v9 = [v8 integerValue];

  v10 = *(a1 + 64);
  if ((v10 & 0x8000000000000000) != 0 || ((v12 = v10 >= v7, v11 = v10 - v7, v12) ? (v12 = v11 >= v9 - v7) : (v12 = 1), !v12 || [*(a1 + 40) indexGreaterThanIndex:a2] == 0x7FFFFFFFFFFFFFFFLL))
  {
    *(*(*(a1 + 56) + 8) + 32) = a2;
    *(*(*(a1 + 56) + 8) + 40) = *(a1 + 64) - v7;
    *a3 = 1;
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

- (int64_t)numberOfContiguousRowsInTransitionSection:(int64_t)section
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v5 = [(NSDictionary *)self->_transitionSectionInfosByTransitionSection objectForKey:v4];
  contiguousRows = [v5 contiguousRows];

  return contiguousRows;
}

- (CGRect)frameForItemAtGridCoordinates:(PUGridCoordinates)coordinates inVisualSection:(int64_t)section indexPath:(id)path
{
  column = coordinates.column;
  row = coordinates.row;
  pathCopy = path;
  if (self->_dynamicLayoutEnabled)
  {
    [(PUSectionedGridLayout *)self _startYOfContentAtVisualSectionIndexWithDynamicLayout:section];
  }

  else
  {
    [(PUSectionedGridLayout *)self _startYOfContentAtVisualSectionIndex:section];
  }

  v11 = v10;
  v12 = self->_itemSize.height + self->_interItemSpacing.height;
  v13 = row;
  [(PUSectionedGridLayout *)self layoutItemSizeForColumn:column];
  v15 = v14;
  v17 = v16;
  left = self->_sectionContentInset.left;
  if (column)
  {
    v19 = 0;
    if (column >= 0)
    {
      v20 = column;
    }

    else
    {
      v20 = -column;
    }

    do
    {
      [(PUSectionedGridLayout *)self layoutItemSizeForColumn:v19];
      v22 = v21 + self->_interItemSpacing.width;
      if (column < 0)
      {
        v22 = -v22;
      }

      left = left + v22;
      ++v19;
    }

    while (v20 != v19);
  }

  v23 = v11 + v13 * v12;
  if ([(PUSectionedGridLayout *)self usesAspectItems]&& self->_delegateSupportsAspectRatioForItemAtIndexPath)
  {
    delegate = [(PUSectionedGridLayout *)self delegate];
    [delegate sectionedGridLayout:self aspectRatioForItemAtIndexPath:pathCopy];
    v26 = v25;

    if (v26 > 0.0)
    {
      left = PURectWithAspectRatioFittingRect(v26, left, v23, v15, v17);
      v23 = v27;
      v15 = v28;
      v17 = v29;
    }
  }

  v30 = left;
  v31 = v23;
  v32 = v15;
  v33 = v17;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)frameForItemAtGridCoordinates:(PUGridCoordinates)coordinates inVisualSection:(int64_t)section
{
  [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:coordinates.row inVisualSection:coordinates.column indexPath:section, 0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (PUSimpleIndexPath)_itemVisualIndexPathAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(PUSectionedGridLayout *)self itemSize];
  v7 = v6;
  [(PUSectionedGridLayout *)self interItemSpacing];
  v9 = v7 + v8;
  [(PUSectionedGridLayout *)self itemSize];
  v11 = v10;
  [(PUSectionedGridLayout *)self interItemSpacing];
  v13 = v11 + v12;
  v14 = x - v9;
  v15 = y - v13;
  v16 = v9 + v9;
  v17 = v13 + v13;
  v18 = [(PUSectionedGridLayout *)self visualSectionsInRect:v14, y - v13, v16, v13 + v13];
  v20 = v18 + v19;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  if (v18 < v18 + v19)
  {
    v23 = v18;
    do
    {
      v24 = [(PUSectionedGridLayout *)self visualRowsInRect:v23 inVisualSection:0 totalVisualSectionRows:v14, v15, v16, v17];
      if (v24 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = v24;
        v27 = v25;
        v28 = [(PUSectionedGridLayout *)self numberOfVisualItemsInVisualSection:v23];
        columnsPerRow = self->_columnsPerRow;
        v30 = columnsPerRow * v26;
        v31 = columnsPerRow * (v26 + v27) - 1;
        if (v31 >= v28 - 1)
        {
          v31 = v28 - 1;
        }

        if (v30 <= v31)
        {
          v32 = v31 + 1;
          while (1)
          {
            v33 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:v30];
            [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:v33 inVisualSection:v34, v23];
            v38.x = x;
            v38.y = y;
            if (CGRectContainsPoint(v39, v38))
            {
              break;
            }

            if (v32 == ++v30)
            {
              goto LABEL_12;
            }
          }

          v21 = v30;
          v22 = v23;
        }
      }

LABEL_12:
      ++v23;
    }

    while (v23 != v20);
  }

  v35 = v22;
  v36 = v21;
  result.var1 = v36;
  result.var0 = v35;
  return result;
}

- (void)_enumerateVisualItemFramesInRect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  height = [(PUSectionedGridLayout *)self visualSectionsInRect:x, y, width, height];
  v30 = height + v10;
  if (height < height + v10)
  {
    v11 = height;
    do
    {
      if (![(PUSectionedGridLayout *)self shouldHideVisualSection:v11])
      {
        height2 = [(PUSectionedGridLayout *)self visualRowsInRect:v11 inVisualSection:0 totalVisualSectionRows:x, y, width, height];
        if (height2 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = height2;
          v15 = v13;
          v16 = [(PUSectionedGridLayout *)self numberOfVisualItemsInVisualSection:v11];
          columnsPerRow = self->_columnsPerRow;
          v18 = columnsPerRow * v14;
          v19 = columnsPerRow * (v14 + v15) - 1;
          if (v19 >= v16 - 1)
          {
            v19 = v16 - 1;
          }

          if (v18 <= v19)
          {
            v20 = v19 + 1;
            do
            {
              v21 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:v18];
              v23 = v22;
              collectionView = [(PUSectionedGridLayout *)self collectionView];
              _shouldReverseLayoutDirection = [collectionView _shouldReverseLayoutDirection];

              if (_shouldReverseLayoutDirection)
              {
                v23 = self->_columnsPerRow + ~v23;
              }

              [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:v21 inVisualSection:v23, v11];
              v26 = v33.origin.x;
              v27 = v33.origin.y;
              v28 = v33.size.width;
              v29 = v33.size.height;
              v34.origin.x = x;
              v34.origin.y = y;
              v34.size.width = width;
              v34.size.height = height;
              if (CGRectIntersectsRect(v33, v34))
              {
                blockCopy[2](blockCopy, v11, v18, v26, v27, v28, v29);
              }

              ++v18;
            }

            while (v20 != v18);
          }
        }
      }

      ++v11;
    }

    while (v11 != v30);
  }
}

- (int64_t)visualIndexForItemAtGridCoordinates:(PUGridCoordinates)coordinates
{
  column = coordinates.column;
  row = coordinates.row;
  collectionView = [(PUSectionedGridLayout *)self collectionView];
  _shouldReverseLayoutDirection = [collectionView _shouldReverseLayoutDirection];

  columnsPerRow = self->_columnsPerRow;
  v9 = columnsPerRow + ~column;
  if (!_shouldReverseLayoutDirection)
  {
    v9 = column;
  }

  return v9 + columnsPerRow * row;
}

- (PUGridCoordinates)gridCoordinatesInSectionForItemAtVisualIndex:(int64_t)index
{
  collectionView = [(PUSectionedGridLayout *)self collectionView];
  _shouldReverseLayoutDirection = [collectionView _shouldReverseLayoutDirection];

  columnsPerRow = self->_columnsPerRow;
  v8 = index / columnsPerRow;
  v9 = index % columnsPerRow;
  v10 = columnsPerRow + ~(index % columnsPerRow);
  if (_shouldReverseLayoutDirection)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  result.column = v11;
  result.row = v8;
  return result;
}

- (_NSRange)visualRowsInRect:(CGRect)rect inVisualSection:(int64_t)section totalVisualSectionRows:(int64_t *)rows
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  if (self->_dynamicLayoutEnabled && (v25 = 0.0, [(PUSectionedGridLayout *)self _ensureRect:self->_layoutData inData:&v25 outDeltaOriginY:x, y, width, height], y = y + v25, self->_dynamicLayoutEnabled))
  {
    [(PUSectionedGridLayout *)self _startYOfContentAtVisualSectionIndexWithDynamicLayout:section];
  }

  else
  {
    [(PUSectionedGridLayout *)self _startYOfContentAtVisualSectionIndex:section];
  }

  v13 = v12;
  v14 = self->_itemSize.height + self->_interItemSpacing.height;
  v15 = [(PUSectionedGridLayout *)self numberOfVisualItemsInVisualSection:section];
  columnsPerRow = self->_columnsPerRow;
  v17 = vcvtpd_s64_f64(v15 / columnsPerRow);
  if (columnsPerRow >= 1)
  {
    v18 = v17;
  }

  else
  {
    v18 = self->_columnsPerRow;
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v19 = vcvtmd_s64_f64((CGRectGetMinY(v27) - v13) / v14);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MaxY = CGRectGetMaxY(v28);
  if (v18 <= v19)
  {
    goto LABEL_18;
  }

  v21 = vcvtmd_s64_f64((MaxY - v13) / v14);
  if (v21 < 0)
  {
    goto LABEL_18;
  }

  v22 = v19 & ~(v19 >> 63);
  if ((v18 - 1) < v21)
  {
    v21 = v18 - 1;
  }

  if (v21 <= v22)
  {
    v21 = v19 & ~(v19 >> 63);
  }

  v23 = v21 - v22;
  v24 = v23 + 1 < v18 ? v23 + 1 : v18;
  if (!v24)
  {
LABEL_18:
    v24 = 0;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (rows)
  {
    *rows = v18;
  }

  result.length = v24;
  result.location = v22;
  return result;
}

- (double)_sectionHeaderHeightDeltaForSection:(int64_t)section
{
  result = 0.0;
  if (self->_dynamicLayoutEnabled)
  {
    [(PUSectionedGridLayout *)self _finalSectionHeaderHeightForSection:0.0];
    v7 = v6;
    [(PUSectionedGridLayout *)self _delegateAccessibilitySectionHeaderHeightForSection:section];
    if (v8 < v7)
    {
      v8 = v7;
    }

    return v8 - v7;
  }

  return result;
}

- (double)_delegateAccessibilitySectionHeaderHeightForSection:(int64_t)section
{
  v5 = 0.0;
  if (self->_delegateSupportsSectionHeaderHeightForVisualSection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sectionedGridLayout:self sectionHeaderHeightForVisualSection:section];
    v5 = v7;
  }

  if (self->_delegateSupportsAccessibilitySectionHeaderHeightForVisualSection && [(PUSectionedGridLayout *)self _hasAccessibilityLargeText])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:section];
    axLargeTextSectionHeaderHeightByVisualSection = self->_axLargeTextSectionHeaderHeightByVisualSection;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:section];
    v11 = [(NSMutableDictionary *)axLargeTextSectionHeaderHeightByVisualSection objectForKey:v10];

    if (v11)
    {
      [v11 floatValue];
      v13 = v12;
    }

    else
    {
      v14 = objc_loadWeakRetained(&self->_delegate);
      [v14 sectionedGridLayout:self accessibilitySectionHeaderHeightForVisualSection:section];
      v13 = v15;

      v16 = self->_axLargeTextSectionHeaderHeightByVisualSection;
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      [(NSMutableDictionary *)v16 setObject:v17 forKey:v8];
    }

    if (v5 < v13)
    {
      v5 = v13;
    }
  }

  return v5;
}

- (double)_finalSectionHeaderHeightForSection:(int64_t)section
{
  if (section == 0x7FFFFFFFFFFFFFFFLL || !self->_sectionHeadersEnabled || !self->_delegateSupportsSectionHeaderHeightForVisualSection)
  {
    return 0.0;
  }

  if ([(PUSectionedGridLayout *)self _hasAccessibilityLargeText]&& !self->_dynamicLayoutEnabled)
  {

    [(PUSectionedGridLayout *)self _delegateAccessibilitySectionHeaderHeightForSection:section];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sectionedGridLayout:self sectionHeaderHeightForVisualSection:section];
    v7 = v6;

    return v7;
  }

  return result;
}

- (id)_gridTransitionLayout
{
  v2 = self->_transitionLayout;
  if (([(UICollectionViewLayout *)v2 conformsToProtocol:&unk_1F2C21280]& 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (void)setUsesAspectItems:(BOOL)items
{
  if (self->_usesAspectItems != items)
  {
    self->_usesAspectItems = items;
    [(PUSectionedGridLayout *)self invalidateLayout];
  }
}

- (void)setHiddenItemIndexPaths:(id)paths
{
  pathsCopy = paths;
  if (self->_hiddenItemIndexPaths != pathsCopy)
  {
    v6 = pathsCopy;
    objc_storeStrong(&self->_hiddenItemIndexPaths, paths);
    [(PUSectionedGridLayout *)self invalidateLayout];
    pathsCopy = v6;
  }
}

- (void)setCropAmount:(double)amount
{
  if (self->_cropAmount != amount)
  {
    self->_cropAmount = amount;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setCropType:(int64_t)type
{
  if (self->_cropType != type)
  {
    self->_cropType = type;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setSectionHeaderElementKind:(id)kind
{
  kindCopy = kind;
  if (self->_sectionHeaderElementKind != kindCopy)
  {
    v6 = kindCopy;
    objc_storeStrong(&self->_sectionHeaderElementKind, kind);
    [(PUSectionedGridLayout *)self _invalidateSupplementaryViewKinds];
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
    kindCopy = v6;
  }
}

- (void)setGlobalFooterHeight:(double)height
{
  if (self->_globalFooterHeight != height)
  {
    self->_globalFooterHeight = height;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setGlobalBottomPadding:(double)padding
{
  if (self->_globalBottomPadding != padding)
  {
    self->_globalBottomPadding = padding;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setGlobalTopPadding:(double)padding
{
  if (self->_globalTopPadding != padding)
  {
    self->_globalTopPadding = padding;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setDynamicLayoutEnabled:(BOOL)enabled
{
  if (self->_dynamicLayoutEnabled != enabled)
  {
    self->_dynamicLayoutEnabled = enabled;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setSectionHeadersEnabled:(BOOL)enabled
{
  if (self->_sectionHeadersEnabled != enabled)
  {
    self->_sectionHeadersEnabled = enabled;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setSectionContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_sectionContentInset.top), vceqq_f64(v4, *&self->_sectionContentInset.bottom)))) & 1) == 0)
  {
    self->_sectionContentInset = inset;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setSectionBottomPadding:(double)padding
{
  if (self->_sectionBottomPadding != padding)
  {
    self->_sectionBottomPadding = padding;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setSectionTopPadding:(double)padding
{
  if (self->_sectionTopPadding != padding)
  {
    self->_sectionTopPadding = padding;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setItemSize:(CGSize)size
{
  if (size.width > 0.0 && size.height > 0.0 && (size.width != self->_itemSize.width || size.height != self->_itemSize.height))
  {
    self->_itemSize = size;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setInterItemSpacing:(CGSize)spacing
{
  if (spacing.width != self->_interItemSpacing.width || spacing.height != self->_interItemSpacing.height)
  {
    self->_interItemSpacing = spacing;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    v7 = objc_storeWeak(&self->_delegate, obj);
    if (objc_opt_respondsToSelector())
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      self->_delegateSupportsGroupedSections = objc_opt_respondsToSelector() & 1;
    }

    else
    {
      self->_delegateSupportsGroupedSections = 0;
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateSupportsAnchorItemForContentOffset = objc_opt_respondsToSelector() & 1;

    v10 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateSupportsTargetContentOffset = objc_opt_respondsToSelector() & 1;

    v11 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateSupportsTransitionAutoContentOffsetEnabled = objc_opt_respondsToSelector() & 1;

    v12 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateSupportsFinalContentInsetForCurrentContentInset = objc_opt_respondsToSelector() & 1;

    v13 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateSupportsDidInvalidateWithContext = objc_opt_respondsToSelector() & 1;

    v14 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateSupportsAspectRatioForItemAtIndexPath = objc_opt_respondsToSelector() & 1;

    v15 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateSupportsSectionHeaderHeightForVisualSection = objc_opt_respondsToSelector() & 1;

    v16 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateSupportsAccessibilitySectionHeaderHeightForVisualSection = objc_opt_respondsToSelector() & 1;

    v17 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateSupportsWillPrepareLayout = objc_opt_respondsToSelector() & 1;

    invalidateLayout = [(PUSectionedGridLayout *)self invalidateLayout];
    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](invalidateLayout, v6);
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = PUSectionedGridLayout;
  v3 = [(PUSectionedGridLayout *)&v7 description];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  weakRetained = [v3 stringByAppendingFormat:@" delegate: %@", WeakRetained];

  return weakRetained;
}

- (CATransform3D)_transformToConvertRect:(SEL)rect intoRect:(CGRect)intoRect referenceCenter:(CGRect)center
{
  v7 = center.size.width / intoRect.size.width;
  v8 = center.size.height / intoRect.size.height;
  v9 = intoRect.origin.x + intoRect.size.width * 0.5 - -(v35 - (intoRect.origin.x + intoRect.size.width * 0.5) - (v35 - (intoRect.origin.x + intoRect.size.width * 0.5)) * (center.size.width / intoRect.size.width));
  v10 = intoRect.origin.y + intoRect.size.height * 0.5 - -(v36 - (intoRect.origin.y + intoRect.size.height * 0.5) - (v36 - (intoRect.origin.y + intoRect.size.height * 0.5)) * (center.size.height / intoRect.size.height));
  v11 = center.origin.x + center.size.width * 0.5;
  v12 = MEMORY[0x1E69792E8];
  v13 = *(MEMORY[0x1E69792E8] + 64);
  v14 = *(MEMORY[0x1E69792E8] + 80);
  *&retstr->m31 = v13;
  *&retstr->m33 = v14;
  v15 = center.size.height * 0.5;
  v16 = v12[6];
  v17 = v12[7];
  *&retstr->m41 = v16;
  *&retstr->m43 = v17;
  v18 = *v12;
  v19 = v12[1];
  *&retstr->m11 = *v12;
  *&retstr->m13 = v19;
  v20 = center.origin.y + v15;
  v21 = v11 - v9;
  v22 = v12[2];
  v23 = v12[3];
  *&retstr->m21 = v22;
  *&retstr->m23 = v23;
  *&v34.m31 = v13;
  *&v34.m33 = v14;
  *&v34.m41 = v16;
  *&v34.m43 = v17;
  *&v34.m11 = v18;
  *&v34.m13 = v19;
  *&v34.m21 = v22;
  *&v34.m23 = v23;
  CATransform3DTranslate(retstr, &v34, v21, v20 - v10, 0.0);
  v24 = *&retstr->m33;
  *&v33.m31 = *&retstr->m31;
  *&v33.m33 = v24;
  v25 = *&retstr->m43;
  *&v33.m41 = *&retstr->m41;
  *&v33.m43 = v25;
  v26 = *&retstr->m13;
  *&v33.m11 = *&retstr->m11;
  *&v33.m13 = v26;
  v27 = *&retstr->m23;
  *&v33.m21 = *&retstr->m21;
  *&v33.m23 = v27;
  result = CATransform3DScale(&v34, &v33, v7, v8, 1.0);
  v29 = *&v34.m33;
  *&retstr->m31 = *&v34.m31;
  *&retstr->m33 = v29;
  v30 = *&v34.m43;
  *&retstr->m41 = *&v34.m41;
  *&retstr->m43 = v30;
  v31 = *&v34.m13;
  *&retstr->m11 = *&v34.m11;
  *&retstr->m13 = v31;
  v32 = *&v34.m23;
  *&retstr->m21 = *&v34.m21;
  *&retstr->m23 = v32;
  return result;
}

- (void)adjustEffectiveContentOriginForTransitionEndContentOffset:(CGPoint)offset
{
  p_transitionEndContentOffset = &self->_transitionEndContentOffset;
  self->_transitionEndContentOffset = offset;
  if (self->_delegateSupportsTransitionAutoContentOffsetEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained sectionedGridLayoutTransitionAutoAdjustContentOffsetEnabled:self];

    if ((v6 & 1) == 0)
    {
      self->_transitionEffectiveContentOrigin = vsubq_f64(self->_transitionStartContentOffset, *p_transitionEndContentOffset);
      self->_transitionApplyingEffectiveContentOrigin = 1;

      [(PUSectionedGridLayout *)self _invalidateLayoutWithContext:0];
    }
  }
}

- (BOOL)_visualSectionsMatchTransitionSectionsToOrFromLayout:(id)layout
{
  layoutCopy = layout;
  numberOfVisualSections = [(PUSectionedGridLayout *)self numberOfVisualSections];
  numberOfVisualSections2 = [layoutCopy numberOfVisualSections];

  return numberOfVisualSections <= numberOfVisualSections2;
}

- (void)_adjustRenderedStripLayoutAttributes:(id)attributes toOrFromGridLayout:(id)layout isAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  attributesCopy = attributes;
  layoutCopy = layout;
  indexPath = [attributesCopy indexPath];
  v11 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:indexPath];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v11;
    item = [indexPath item];
    v14 = [(PUSectionedGridLayout *)self visualIndexForItemAtGridCoordinates:item, 0];
    if (v14 >= [(PULayoutSampledSectioning *)self->_layoutSectioning numberOfVisualItemsInVisualSection:v12])
    {
      [attributesCopy setAlpha:0.0];
    }

    else
    {
      [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:item inVisualSection:0, v12];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [(PUSectionedGridLayout *)self interItemSpacing];
      v24 = v20 + v23;
      v25 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealItemIndexPathForVisualIndexPath:v12, v14];
      v27 = [MEMORY[0x1E696AC88] indexPathForItem:v26 inSection:v25];
      v28 = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:v27];
      v57[0] = 0;
      [(PUSectionedGridLayout *)self _adjustGridTransitionLayoutAttributes:v28 toOrFromGridLayout:layoutCopy outTargetRowExists:v57 isAppearing:appearingCopy];
      [v28 frame];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      [layoutCopy interItemSpacing];
      v38 = v34 + v37;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      [attributesCopy center];
      [(PUSectionedGridLayout *)self _transformToConvertRect:v16 intoRect:v18 referenceCenter:v24, v22, v30, v32, v38, v36, v39, v40];
      v48[4] = v53;
      v48[5] = v54;
      v48[6] = v55;
      v48[7] = v56;
      v48[0] = v49;
      v48[1] = v50;
      v48[2] = v51;
      v48[3] = v52;
      [attributesCopy setTransform3D:v48];
      [attributesCopy setExists:v57[0]];
      if (self->_usesRenderedStripTopExtendersForTransitions && appearingCopy && self->_transitionZoomingOut)
      {
        [layoutCopy interItemSpacing];
        if (v41 > 0.0 || (transitionSectionInfosByVisualSection = self->_transitionSectionInfosByVisualSection, [MEMORY[0x1E696AD98] numberWithInteger:v12], v45 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKey:](transitionSectionInfosByVisualSection, "objectForKey:", v45), v47 = objc_claimAutoreleasedReturnValue(), v45, v42 = -[PUSectionedGridLayout _targetTransitionGridCoordsForGridCoords:atVisualSection:transitionSectionInfo:](self, "_targetTransitionGridCoordsForGridCoords:atVisualSection:transitionSectionInfo:", item, 0, v12, v47), v44 = objc_msgSend(layoutCopy, "visualGridCoordsForTransitionGridCoords:atTransitionSection:outVisualSection:", v42, v43, objc_msgSend(v47, "transitionSection"), 0), v47, !v44))
        {
          if (item)
          {
            [attributesCopy setExtendsTopContent:1];
          }
        }
      }

      if (self->_transitionZoomingOut != appearingCopy || (v57[0] & 1) == 0)
      {
        [attributesCopy setAlpha:0.0];
      }
    }
  }
}

- (void)_adjustSectionHeaderLayoutAttributes:(id)attributes toOrFromGridLayout:(id)layout isAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  attributesCopy = attributes;
  layoutCopy = layout;
  indexPath = [attributesCopy indexPath];
  v10 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:indexPath];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
    [attributesCopy frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    if ([(PULayoutSampledSectioning *)self->_layoutSectioning numberOfVisualItemsInVisualSection:v11]> 0)
    {
      v20 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealItemIndexPathForVisualIndexPath:v11, 0];
      v22 = [MEMORY[0x1E696AC88] indexPathForItem:v21 inSection:v20];
      v23 = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:v22];
      [(PUSectionedGridLayout *)self _adjustGridTransitionLayoutAttributes:v23 toOrFromGridLayout:layoutCopy outTargetRowExists:0 isAppearing:appearingCopy];
      [v23 frame];
      v25 = v24;
      v28.origin.x = v13;
      v28.origin.y = v15;
      v28.size.width = v17;
      v28.size.height = v19;
      v15 = v25 - CGRectGetHeight(v28) - self->_sectionContentInset.top;
    }

    [attributesCopy setFrame:{v13, v15, v17, v19}];
    [attributesCopy setAlpha:0.0];
  }
}

- (id)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  _gridTransitionLayout = [(PUSectionedGridLayout *)self _gridTransitionLayout];
  if (_gridTransitionLayout)
  {
    sectionHeaderElementKind = [(PUSectionedGridLayout *)self sectionHeaderElementKind];
    if ([kindCopy isEqualToString:sectionHeaderElementKind])
    {
      transitionIsAnimated = self->_transitionIsAnimated;

      if (transitionIsAnimated)
      {
        v11 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
        [(PUSectionedGridLayout *)self _adjustSectionHeaderLayoutAttributes:v11 toOrFromGridLayout:_gridTransitionLayout isAppearing:0];
        goto LABEL_20;
      }
    }

    else
    {
    }

    renderedStripsElementKind = [(PUSectionedGridLayout *)self renderedStripsElementKind];
    if ([kindCopy isEqualToString:renderedStripsElementKind])
    {
      v13 = self->_transitionIsAnimated;

      if (v13)
      {
        v11 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
        [(PUSectionedGridLayout *)self _adjustRenderedStripLayoutAttributes:v11 toOrFromGridLayout:_gridTransitionLayout isAppearing:0];
        goto LABEL_20;
      }
    }

    else
    {
    }

    if ([kindCopy isEqualToString:@"PUGridGlobalFooter"])
    {
      v22.receiver = self;
      v22.super_class = PUSectionedGridLayout;
      v14 = [(PUSectionedGridLayout *)&v22 finalLayoutAttributesForDisappearingSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
      if ([v14 isHidden])
      {
        v15 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
        v11 = [v15 copy];

        [v11 setAlpha:0.0];
      }

      else
      {
        v11 = v14;
      }

      goto LABEL_20;
    }
  }

  if (-[NSIndexSet containsIndex:](self->_deletedSections, "containsIndex:", [pathCopy section]))
  {
    [0 setAlpha:0.0];
    sectionHeaderElementKind2 = [(PUSectionedGridLayout *)self sectionHeaderElementKind];
    v17 = [kindCopy isEqualToString:sectionHeaderElementKind2];

    v11 = 0;
    if (v17)
    {
      memset(&v20, 0, sizeof(v20));
      CATransform3DScale(&v21, &v20, 1.0, 0.600000024, 1.0);
      v20 = v21;
      [0 setTransform3D:&v20];
      v11 = 0;
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = PUSectionedGridLayout;
    v11 = [(PUSectionedGridLayout *)&v19 finalLayoutAttributesForDisappearingSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
    if ([(PUSectionedGridLayout *)self _isTransitionForeignSupplementaryViewKind:kindCopy])
    {
      [v11 setAlpha:0.0];
    }
  }

LABEL_20:

  return v11;
}

- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  _gridTransitionLayout = [(PUSectionedGridLayout *)self _gridTransitionLayout];
  if (_gridTransitionLayout)
  {
    sectionHeaderElementKind = [(PUSectionedGridLayout *)self sectionHeaderElementKind];
    if ([kindCopy isEqualToString:sectionHeaderElementKind])
    {
      transitionIsAnimated = self->_transitionIsAnimated;

      if (transitionIsAnimated)
      {
        v11 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
        [(PUSectionedGridLayout *)self _adjustSectionHeaderLayoutAttributes:v11 toOrFromGridLayout:_gridTransitionLayout isAppearing:1];
        goto LABEL_17;
      }
    }

    else
    {
    }

    if ([kindCopy isEqualToString:@"PUGridGlobalFooter"])
    {
      v12 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
      if ([v12 isHidden])
      {
        v11 = v12;
        [v11 setAlpha:0.0];
      }

      else
      {
        v17.receiver = self;
        v17.super_class = PUSectionedGridLayout;
        v11 = [(PUSectionedGridLayout *)&v17 initialLayoutAttributesForAppearingSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
      }

      goto LABEL_17;
    }

    renderedStripsElementKind = [(PUSectionedGridLayout *)self renderedStripsElementKind];
    if ([kindCopy isEqualToString:renderedStripsElementKind])
    {
      v14 = self->_transitionIsAnimated;

      if (v14)
      {
        v11 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
        [(PUSectionedGridLayout *)self _adjustRenderedStripLayoutAttributes:v11 toOrFromGridLayout:_gridTransitionLayout isAppearing:1];
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v16.receiver = self;
  v16.super_class = PUSectionedGridLayout;
  v11 = [(PUSectionedGridLayout *)&v16 initialLayoutAttributesForAppearingSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
  if ([(PUSectionedGridLayout *)self _isTransitionForeignSupplementaryViewKind:kindCopy])
  {
    [v11 setAlpha:0.0];
  }

LABEL_17:

  return v11;
}

- (CGRect)_frameByAdjustingOffScreenEnteringFrame:(CGRect)frame forRowAtVisualIndexPath:(PUSimpleIndexPath)path transitionSectionInfo:(id)info toOrFromGridLayout:(id)layout isAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  var1 = path.var1;
  var0 = path.var0;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  infoCopy = info;
  layoutCopy = layout;
  [layoutCopy transitionEffectiveContentOrigin];
  if (appearingCopy)
  {
    MinY = self->_transitionStartContentOffset.y;
  }

  else
  {
    MinY = v18 + self->_transitionEndContentOffset.y;
  }

  collectionView = [(PUSectionedGridLayout *)self collectionView];
  [collectionView bounds];
  v21 = MinY + CGRectGetHeight(v65);

  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  MaxY = CGRectGetMaxY(v66);
  if (MaxY < MinY)
  {
    v63 = appearingCopy;
    transitionFirstVisibleRowVisualPath = [layoutCopy transitionFirstVisibleRowVisualPath];
    goto LABEL_8;
  }

  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  if (CGRectGetMinY(v67) > v21)
  {
    v63 = appearingCopy;
    transitionFirstVisibleRowVisualPath = [layoutCopy transitionLastVisibleRowVisualPath];
LABEL_8:
    v24 = transitionFirstVisibleRowVisualPath;
    v64 = 0;
    v25 = [layoutCopy targetTransitionGridCoordsForGridCoords:objc_msgSend(transitionFirstVisibleRowVisualPath atVisualSection:"item") outTransitionSection:{0, objc_msgSend(transitionFirstVisibleRowVisualPath, "section"), &v64}];
    transitionSectionInfosByTransitionSection = self->_transitionSectionInfosByTransitionSection;
    v27 = [MEMORY[0x1E696AD98] numberWithInteger:v64];
    v28 = [(NSDictionary *)transitionSectionInfosByTransitionSection objectForKey:v27];

    contiguousRows = [v28 contiguousRows];
    if (contiguousRows <= 0 || (v25 & ~(v25 >> 63)) < contiguousRows)
    {
      v31 = v25 & ~(v25 >> 63);
    }

    else
    {
      v31 = contiguousRows - 1;
    }

    v32 = [(PUSectionedGridLayout *)self _visualRowPathForTransitionRowIndex:v31 transitionSectionInfo:v28];
    if (MaxY < MinY && var0 > v32)
    {
      goto LABEL_43;
    }

    v61 = var1;
    v62 = var0;
    if (MaxY >= MinY)
    {
      v35 = v33;
      v33 = var1;
      v37 = var0;
      var0 = v32;
      v36 = v37;
      if (v37 < v32)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v35 = var1;
      v36 = v32;
    }

    v60 = infoCopy;
    if (v36 >= var0)
    {
      v39 = 1;
      if (v62 == v32)
      {
        v39 = -v35;
      }

      v38 = v33 + v39;
      if (v36 > var0)
      {
        v40 = -v35;
        do
        {
          v41 = v36 - 1;
          v42 = [(PUSectionedGridLayout *)self numberOfRowsInVisualSection:v36 - 1];
          if (var0 + 1 == v36)
          {
            v43 = v40;
          }

          else
          {
            v43 = 1;
          }

          v38 = v42 + v38 + v43 - 1;
          --v36;
        }

        while (v41 > var0);
      }
    }

    else
    {
      v38 = 0;
    }

    [layoutCopy frameForItemAtGridCoordinates:objc_msgSend(v24 inVisualSection:{"row"), 0, objc_msgSend(v24, "section")}];
    if (MaxY >= MinY)
    {
      v21 = CGRectGetMaxY(*&v44);
      infoCopy = v60;
      if (v38 > 0)
      {
LABEL_44:
        [layoutCopy itemSize];
        v54 = v53;
        [layoutCopy interItemSpacing];
        y = v21 + v55 * v38 + (v38 - 1) * v54;
        goto LABEL_45;
      }

      v52 = @"N";
      if (v63)
      {
        v52 = @"Y";
      }

      NSLog(&cfstr_Offscreenrowof.isa, v38, v62, v61, v52);
LABEL_43:
      v38 = 1;
      goto LABEL_44;
    }

    MinY = CGRectGetMinY(*&v44);
    infoCopy = v60;
    if (v38 >= 1)
    {
LABEL_38:
      [layoutCopy itemSize];
      v50 = v49;
      [layoutCopy interItemSpacing];
      y = MinY - (v50 + v51) * v38;
LABEL_45:

      goto LABEL_46;
    }

    v48 = @"N";
    if (v63)
    {
      v48 = @"Y";
    }

    NSLog(&cfstr_Offscreenrowof.isa, v38, v62, v61, v48);
LABEL_37:
    v38 = 1;
    goto LABEL_38;
  }

LABEL_46:

  v56 = x;
  v57 = y;
  v58 = width;
  v59 = height;
  result.size.height = v59;
  result.size.width = v58;
  result.origin.y = v57;
  result.origin.x = v56;
  return result;
}

- (PUGridCoordinates)_targetTransitionGridCoordsForGridCoords:(PUGridCoordinates)coords atVisualSection:(int64_t)section transitionSectionInfo:(id)info
{
  column = coords.column;
  row = coords.row;
  infoCopy = info;
  _gridTransitionLayout = [(PUSectionedGridLayout *)self _gridTransitionLayout];
  if (!_gridTransitionLayout)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:1723 description:@"Cannot compute transition coordinates while not in a transition"];

    if (infoCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    if (self->_transitionIsAppearing)
    {
      v17 = @"Y";
    }

    else
    {
      v17 = @"N";
    }

    NSLog(&cfstr_NoTransitionSe.isa, row, column, section, v17);
    column = 0;
    v15 = 0;
    goto LABEL_9;
  }

  if (!infoCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  visualSections = [infoCopy visualSections];
  visualRowStartMarkers = [infoCopy visualRowStartMarkers];
  v14 = [visualRowStartMarkers objectAtIndex:{objc_msgSend(visualSections, "countOfIndexesInRange:", 0, section)}];
  v15 = [v14 integerValue] + row;

LABEL_9:
  anchorShiftOffset = [infoCopy anchorShiftOffset];
  if (anchorShiftOffset == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_transitionIsAppearing)
    {
      [_gridTransitionLayout transitionAnchorIndexPathForTransitionSection:{objc_msgSend(infoCopy, "transitionSection")}];
    }

    else
    {
      [infoCopy anchorRealPath];
    }
    v22 = ;
    if (v22)
    {
      v23 = [(PUSectionedGridLayout *)self gridCoordinatesInTransitionSectionForItemAtIndexPath:v22];
      v20 = [_gridTransitionLayout gridCoordinatesInTransitionSectionForItemAtIndexPath:v22] - v23;
    }

    else
    {
      v20 = 0;
    }

    if (self->_transitionIsAppearing)
    {
      transitionAnchorColumnOffset = -[_gridTransitionLayout transitionAnchorColumnOffset];
    }

    else
    {
      transitionAnchorColumnOffset = [(PUSectionedGridLayout *)self transitionAnchorColumnOffset];
    }

    [infoCopy setAnchorShiftOffset:{v20, transitionAnchorColumnOffset}];
  }

  else
  {
    v20 = anchorShiftOffset;
    transitionAnchorColumnOffset = v19;
  }

  v24 = v20 + v15;
  v25 = transitionAnchorColumnOffset + column;
  result.column = v25;
  result.row = v24;
  return result;
}

- (void)_adjustGridTransitionLayoutAttributes:(id)attributes toOrFromGridLayout:(id)layout outTargetRowExists:(BOOL *)exists isAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  attributesCopy = attributes;
  layoutCopy = layout;
  indexPath = [attributesCopy indexPath];
  v12 = -[PULayoutSampledSectioning visualIndexPathForRealIndexPath:isMainItem:](self->_layoutSectioning, "visualIndexPathForRealIndexPath:isMainItem:", [indexPath section], objc_msgSend(indexPath, "item"), 0);
  v14 = v13;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v52 = currentHandler;
    v53 = @"disappearing";
    if (appearingCopy)
    {
      v53 = @"appearing";
    }

    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:1662 description:{@"Adjusting grid transition layout attributes %@ betweet %@ (self) and %@ (%@) for an unknown visual section", attributesCopy, self, layoutCopy, v53}];
  }

  v15 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:v14];
  v17 = v16;
  transitionSectionInfosByVisualSection = self->_transitionSectionInfosByVisualSection;
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
  v20 = [(NSDictionary *)transitionSectionInfosByVisualSection objectForKey:v19];

  v21 = [(PUSectionedGridLayout *)self _targetTransitionGridCoordsForGridCoords:v15 atVisualSection:v17 transitionSectionInfo:v12, v20];
  v23 = v22;
  [layoutCopy frameForItemAtGridCoordinates:v21 inTransitionSection:{v22, objc_msgSend(v20, "transitionSection")}];
  [(PUSectionedGridLayout *)self _frameByAdjustingOffScreenEnteringFrame:v12 forRowAtVisualIndexPath:v15 transitionSectionInfo:v20 toOrFromGridLayout:layoutCopy isAppearing:appearingCopy];
  v54 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [layoutCopy numberOfContiguousRowsInTransitionSection:{objc_msgSend(v20, "transitionSection")}];
  itemsPerRow = [layoutCopy itemsPerRow];
  v34 = v21 >= 0 && v21 < v31;
  v36 = v23 >= 0 && v23 < itemsPerRow;
  v37 = [layoutCopy hasItemAtGridCoordinates:v21 inTransitionSection:{v23, objc_msgSend(v20, "transitionSection")}];
  [attributesCopy alpha];
  v39 = 0.0;
  if (v34 & (v37 | ~v36) & appearingCopy)
  {
    v39 = v38;
  }

  if (self->_usesRenderedStrips)
  {
    v40 = v38;
  }

  else
  {
    v40 = v39;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  [attributesCopy frame];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  [attributesCopy center];
  [(PUSectionedGridLayout *)self _transformToConvertRect:v42 intoRect:v44 referenceCenter:v46, v48, v54, v26, v28, v30, v49, v50];
  v57[4] = v62;
  v57[5] = v63;
  v57[6] = v64;
  v57[7] = v65;
  v57[0] = v58;
  v57[1] = v59;
  v57[2] = v60;
  v57[3] = v61;
  [attributesCopy setTransform3D:v57];
  [attributesCopy setAlpha:v40];
  [attributesCopy setExists:v34 & v36 & v37];
  if (exists)
  {
    *exists = v34;
  }
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  pathCopy = path;
  _gridTransitionLayout = [(PUSectionedGridLayout *)self _gridTransitionLayout];
  if (_gridTransitionLayout && (transitionIsAnimated = self->_transitionIsAnimated, _gridTransitionLayout, transitionIsAnimated))
  {
    v7 = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:pathCopy];
    _gridTransitionLayout2 = [(PUSectionedGridLayout *)self _gridTransitionLayout];
    [(PUSectionedGridLayout *)self _adjustGridTransitionLayoutAttributes:v7 toOrFromGridLayout:_gridTransitionLayout2 outTargetRowExists:0 isAppearing:0];
  }

  else if (-[NSSet containsObject:](self->_deletedItemIndexPaths, "containsObject:", pathCopy) || -[NSIndexSet containsIndex:](self->_deletedSections, "containsIndex:", [pathCopy section]))
  {
    v15.receiver = self;
    v15.super_class = PUSectionedGridLayout;
    v9 = [(PUSectionedGridLayout *)&v15 finalLayoutAttributesForDisappearingItemAtIndexPath:pathCopy];
    v7 = v9;
    memset(&v14, 0, sizeof(v14));
    if (v9)
    {
      [v9 transform3D];
    }

    v12 = v14;
    CATransform3DScale(&v13, &v12, 0.600000024, 0.600000024, 1.0);
    v14 = v13;
    [v7 setAlpha:0.0];
    v13 = v14;
    [v7 setTransform3D:&v13];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PUSectionedGridLayout;
    v7 = [(PUSectionedGridLayout *)&v11 finalLayoutAttributesForDisappearingItemAtIndexPath:pathCopy];
  }

  return v7;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  pathCopy = path;
  _gridTransitionLayout = [(PUSectionedGridLayout *)self _gridTransitionLayout];
  if (_gridTransitionLayout && (transitionIsAnimated = self->_transitionIsAnimated, _gridTransitionLayout, transitionIsAnimated))
  {
    v7 = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:pathCopy];
    _gridTransitionLayout2 = [(PUSectionedGridLayout *)self _gridTransitionLayout];
    [(PUSectionedGridLayout *)self _adjustGridTransitionLayoutAttributes:v7 toOrFromGridLayout:_gridTransitionLayout2 outTargetRowExists:0 isAppearing:1];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PUSectionedGridLayout;
    v7 = [(PUSectionedGridLayout *)&v10 initialLayoutAttributesForAppearingItemAtIndexPath:pathCopy];
  }

  return v7;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  if (self->_transitionLayout)
  {
    x = self->_transitionEndContentOffset.x + self->_transitionEffectiveContentOrigin.x;
    y = self->_transitionEndContentOffset.y + self->_transitionEffectiveContentOrigin.y;
  }

  else
  {
    viewSizeTransitionAnchorItem = self->_viewSizeTransitionAnchorItem;
    if (viewSizeTransitionAnchorItem)
    {
      [(PUSectionedGridLayout *)self _targetContentOffsetWithAnchorItemIndexPath:viewSizeTransitionAnchorItem isRotation:1 orTransitionFromLayout:0 keepAnchorStable:1];
      x = v7;
      y = v8;
    }

    else if (self->_processingCollectionViewUpdates && self->_delegateSupportsTargetContentOffset)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sectionedGridLayout:self targetContentOffsetForProposedUpdatesContentOffset:{x, y}];
      x = v10;
      y = v11;
    }
  }

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)_targetContentOffsetWithAnchorItemIndexPath:(id)path isRotation:(BOOL)rotation orTransitionFromLayout:(id)layout keepAnchorStable:(BOOL)stable
{
  stableCopy = stable;
  rotationCopy = rotation;
  pathCopy = path;
  layoutCopy = layout;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v12 = MEMORY[0x1E695EFF8];
  collectionView = [(PUSectionedGridLayout *)self collectionView];
  [collectionView bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(PUSectionedGridLayout *)self _finalContentInset];
  v23 = v22;
  v25 = v24;
  height = self->_contentSize.height;
  numberOfRealSections = [(PUSectionedGridLayout *)self numberOfRealSections];
  v28 = numberOfRealSections - 1;
  if (numberOfRealSections < 1 || [(PUSectionedGridLayout *)self numberOfRealItemsInRealSection:v28]< 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = [MEMORY[0x1E696AC88] indexPathForItem:-[PUSectionedGridLayout numberOfRealItemsInRealSection:](self inSection:{"numberOfRealItemsInRealSection:", v28) - 1, v28}];
  }

  v69 = height;
  v70 = *v12;
  v30 = -v23;
  if (pathCopy)
  {
    if ([pathCopy section] || objc_msgSend(pathCopy, "item"))
    {
      if ([v29 isEqual:pathCopy])
      {
        v31 = v25 + height - v21;
      }

      else
      {
        v68 = v25;
        v32 = v21;
        v33 = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:pathCopy];
        [v33 center];
        v35 = v34;
        if (rotationCopy)
        {
          viewSizeTransitionAnchorItemNormalizedYOffset = self->_viewSizeTransitionAnchorItemNormalizedYOffset;
          v72.origin.x = v15;
          v72.origin.y = v17;
          v72.size.width = v19;
          v72.size.height = v32;
          v37 = viewSizeTransitionAnchorItemNormalizedYOffset * CGRectGetHeight(v72);
        }

        else if (layoutCopy && stableCopy)
        {
          v38 = [layoutCopy layoutAttributesForItemAtIndexPath:pathCopy];
          [v38 center];
          v37 = v39 - self->_transitionStartContentOffset.y;
        }

        else
        {
          v73.origin.x = v15;
          v73.origin.y = v17;
          v73.size.width = v19;
          v73.size.height = v32;
          v37 = CGRectGetHeight(v73) * 0.5;
        }

        v65 = -v23;
        v66 = v17;
        v67 = v15;
        v40 = v35 - v37;
        v41 = 0.0;
        if (!self->_dynamicLayoutEnabled)
        {
          [(PUSectionedGridLayout *)self _finalSectionHeaderHeightForSection:0x7FFFFFFFFFFFFFFFLL, 0.0];
        }

        v42 = v23 + v41 + 4.0;
        v43 = v40 + v42;
        v62 = v40 + v42;
        v63 = v32;
        v44 = v32 - (v68 + v42 + 4.0);
        [v33 frame];
        v64 = v40;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v74.origin.x = v70;
        v74.origin.y = v43;
        v74.size.width = v19;
        v74.size.height = v44;
        MinY = CGRectGetMinY(v74);
        v75.origin.x = v46;
        v75.origin.y = v48;
        v75.size.width = v50;
        v75.size.height = v52;
        v54 = MinY - CGRectGetMinY(v75);
        v76.origin.x = v46;
        v76.origin.y = v48;
        v25 = v68;
        v76.size.width = v50;
        v76.size.height = v52;
        MaxY = CGRectGetMaxY(v76);
        v77.origin.x = v70;
        v77.size.width = v19;
        v77.size.height = v44;
        v77.origin.y = v62;
        v21 = v63;
        v56 = MaxY - CGRectGetMaxY(v77);
        v57 = v64 - v54;
        if (v54 <= 0.0)
        {
          v57 = v64;
        }

        if (v56 <= 0.0)
        {
          v31 = v57;
        }

        else
        {
          v31 = v57 + v56;
        }

        v17 = v66;
        v15 = v67;
        v30 = v65;
      }
    }

    else
    {
      v31 = -v23;
    }
  }

  else
  {
    v31 = v12[1];
  }

  v78.origin.x = v15;
  v78.origin.y = v17;
  v78.size.width = v19;
  v78.size.height = v21;
  v58 = v25 + v69 - CGRectGetHeight(v78);
  if (v31 < v58)
  {
    v58 = v31;
  }

  if (v58 >= v30)
  {
    v59 = v58;
  }

  else
  {
    v59 = v30;
  }

  v60 = v70;
  v61 = v59;
  result.y = v61;
  result.x = v60;
  return result;
}

- (CGPoint)targetContentOffsetForViewSizeTransitionContext:(id)context
{
  v5 = self->_viewSizeTransitionAnchorItem;
  viewSizeTransitionAnchorItemNormalizedYOffset = self->_viewSizeTransitionAnchorItemNormalizedYOffset;
  contextCopy = context;
  v8 = [contextCopy objectForKeyedSubscript:@"anchorItem"];
  viewSizeTransitionAnchorItem = self->_viewSizeTransitionAnchorItem;
  self->_viewSizeTransitionAnchorItem = v8;

  v10 = [contextCopy objectForKeyedSubscript:@"normalizedYOffset"];

  [v10 floatValue];
  self->_viewSizeTransitionAnchorItemNormalizedYOffset = v11;

  [(PUSectionedGridLayout *)self _targetContentOffsetWithAnchorItemIndexPath:self->_viewSizeTransitionAnchorItem isRotation:1 orTransitionFromLayout:0 keepAnchorStable:1];
  v13 = v12;
  v15 = v14;
  v16 = self->_viewSizeTransitionAnchorItem;
  self->_viewSizeTransitionAnchorItem = v5;
  v17 = v5;

  self->_viewSizeTransitionAnchorItemNormalizedYOffset = viewSizeTransitionAnchorItemNormalizedYOffset;
  v18 = v13;
  v19 = v15;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)targetContentOffsetForTransitionFromGridLayout:(id)layout
{
  layoutCopy = layout;
  transitionExplicitAnchorItemIndexPath = [(PUSectionedGridLayout *)self transitionExplicitAnchorItemIndexPath];
  [(PUSectionedGridLayout *)self _targetContentOffsetWithAnchorItemIndexPath:transitionExplicitAnchorItemIndexPath isRotation:0 orTransitionFromLayout:layoutCopy keepAnchorStable:1];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_didFinishLayoutTransitionAnimations:(BOOL)animations
{
  animationsCopy = animations;
  v7.receiver = self;
  v7.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v7 _didFinishLayoutTransitionAnimations:?];
  transitionAnimationEndCleanupBlock = self->_transitionAnimationEndCleanupBlock;
  if (transitionAnimationEndCleanupBlock)
  {
    transitionAnimationEndCleanupBlock[2](transitionAnimationEndCleanupBlock, animationsCopy);
    v6 = self->_transitionAnimationEndCleanupBlock;
    self->_transitionAnimationEndCleanupBlock = 0;
  }
}

- (void)finalizeLayoutTransition
{
  v27.receiver = self;
  v27.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v27 finalizeLayoutTransition];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_transitionLayout;
    v4 = v3;
    if (v3)
    {
      transitionLayout = [(UICollectionViewLayout *)v3 transitionLayout];

      if (transitionLayout != self)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 sectionedGridLayout:self didFinalizePrepareTransitionIsAppearing:self->_transitionIsAppearing];
  }

  delegate = [(UICollectionViewLayout *)v4 delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(UICollectionViewLayout *)v4 delegate];
    [delegate2 sectionedGridLayout:v4 didFinalizePrepareTransitionIsAppearing:{-[UICollectionViewLayout transitionIsAppearing](v4, "transitionIsAppearing")}];
  }

LABEL_10:
  v12 = self->_transitionLayout;
  transitionIsAppearing = self->_transitionIsAppearing;
  transitionSectionInfosByTransitionSection = self->_transitionSectionInfosByTransitionSection;
  self->_transitionSectionInfosByTransitionSection = 0;

  transitionSectionInfosByVisualSection = self->_transitionSectionInfosByVisualSection;
  self->_transitionSectionInfosByVisualSection = 0;

  transitionFirstVisibleRowVisualPath = self->_transitionFirstVisibleRowVisualPath;
  self->_transitionFirstVisibleRowVisualPath = 0;

  transitionLastVisibleRowVisualPath = self->_transitionLastVisibleRowVisualPath;
  self->_transitionLastVisibleRowVisualPath = 0;

  self->_transitionAnchorColumnOffset = 0;
  self->_transitionAnchorShiftsColumns = 0;
  transitionExplicitAnchorItemIndexPath = self->_transitionExplicitAnchorItemIndexPath;
  self->_transitionExplicitAnchorItemIndexPath = 0;

  self->_transitionZoomingOut = 0;
  transitionLayout = self->_transitionLayout;
  self->_transitionLayout = 0;

  self->_transitionIsAnimated = 0;
  v20 = *MEMORY[0x1E695EFF8];
  self->_transitionStartContentOffset = *MEMORY[0x1E695EFF8];
  self->_transitionEndContentOffset = v20;
  self->_transitionEffectiveContentOrigin = v20;
  self->_transitionApplyingEffectiveContentOrigin = 0;
  self->_transitionIsAppearing = 0;
  if (v12)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__PUSectionedGridLayout_finalizeLayoutTransition__block_invoke;
    aBlock[3] = &unk_1E7B7DF48;
    v26 = transitionIsAppearing;
    aBlock[4] = self;
    v25 = v12;
    v21 = _Block_copy(aBlock);
    v22 = _Block_copy(v21);
    transitionAnimationEndCleanupBlock = self->_transitionAnimationEndCleanupBlock;
    self->_transitionAnimationEndCleanupBlock = v22;
  }
}

uint64_t __49__PUSectionedGridLayout_finalizeLayoutTransition__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PUSectionedGridLayout_finalizeLayoutTransition__block_invoke_2;
  v5[3] = &unk_1E7B7DF20;
  v6 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v7 = a2;
  result = [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  if (*(a1 + 48) == 1)
  {
    return [*(a1 + 40) _didFinishLayoutTransitionAnimations:a2];
  }

  return result;
}

void __49__PUSectionedGridLayout_finalizeLayoutTransition__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) invalidateLayout];
    v2 = [*(a1 + 32) collectionView];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) collectionView];
      [v4 _commitDeferredContentOffsetTransition];
    }
  }

  [*(*(a1 + 32) + 576) didFinishLayoutTransitionAnimations:*(a1 + 41) transitionIsAppearing:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 576);
  *(v5 + 576) = 0;

  if (*(a1 + 40) == 1)
  {
    v7 = [*(a1 + 32) collectionView];
    [v7 layoutIfNeeded];
  }
}

- (void)_prepareForTransitionToOrFromGridLayout:(id)layout isAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  layoutCopy = layout;
  v9 = layoutCopy;
  transitionLayout = self->_transitionLayout;
  if (transitionLayout)
  {
    v11 = transitionLayout == layoutCopy;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:1137 description:@"The initial transition layout doesn't match the one we will transition to/from."];

    transitionLayout = self->_transitionLayout;
  }

  if (transitionLayout && self->_transitionIsAppearing != appearingCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:1138 description:@"The initial transitionIsAppearing doesn't match actual transition direction."];
  }

  self->_transitionIsAppearing = appearingCopy;
  objc_storeStrong(&self->_transitionLayout, layout);
  viewSizeTransitionAnchorItem = self->_viewSizeTransitionAnchorItem;
  self->_viewSizeTransitionAnchorItem = 0;

  if (appearingCopy)
  {
    collectionView = [(PUSectionedGridLayout *)self collectionView];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }

    collectionView2 = [(PUSectionedGridLayout *)self collectionView];
    [(UICollectionViewLayout *)collectionView2 _beginDeferredContentOffsetTransitionToOffset:self->_transitionEndContentOffset.x contentSize:self->_transitionEndContentOffset.y, self->_contentSize.width, self->_contentSize.height];
  }

  else
  {
    collectionView2 = v9;
    [(UICollectionViewLayout *)collectionView2 setIsPreparingLayout:1];
    [(UICollectionViewLayout *)collectionView2 targetContentOffsetForTransitionFromGridLayout:self];
    self->_transitionEndContentOffset.x = v16;
    self->_transitionEndContentOffset.y = v17;
    [(UICollectionViewLayout *)collectionView2 adjustEffectiveContentOriginForTransitionEndContentOffset:?];
    [(UICollectionViewLayout *)collectionView2 setIsPreparingLayout:0];
  }

LABEL_14:
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  collectionView3 = [(PUSectionedGridLayout *)self collectionView];
  [collectionView3 bounds];
  v19 = v18;
  v21 = v20;
  if (appearingCopy)
  {
    [(PUSectionedGridLayout *)self transitionEffectiveContentOrigin];
    v23 = v22 + self->_transitionEndContentOffset.x;
    v25 = v24 + self->_transitionEndContentOffset.y;
    x = self->_transitionStartContentOffset.x;
    y = self->_transitionStartContentOffset.y;
  }

  else
  {
    [(UICollectionViewLayout *)v9 transitionEffectiveContentOrigin];
    v23 = self->_transitionStartContentOffset.x;
    v25 = self->_transitionStartContentOffset.y;
    x = v28 + self->_transitionEndContentOffset.x;
    y = v29 + self->_transitionEndContentOffset.y;
  }

  v30 = [(PUSectionedGridLayout *)self transitionSectionsInRect:v9 toOrFromGridLayout:v23, v25, v19, v21];
  v31 = [(UICollectionViewLayout *)v9 transitionSectionsInRect:self toOrFromGridLayout:x, y, v19, v21];
  v63 = v30;
  v32 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexSet:v30];
  v62 = v31;
  [v32 addIndexes:v31];
  v65 = [(PUSectionedGridLayout *)self _visualSectionsMatchTransitionSectionsToOrFromLayout:v9];
  if (appearingCopy || ([(PUSectionedGridLayout *)self transitionExplicitAnchorItemIndexPath], (v33 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v35 = 0;
    v38 = 0x7FFFFFFFFFFFFFFFLL;
    v40 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    layoutSectioning = self->_layoutSectioning;
    v35 = v33;
    item = [v35 item];
    section = [v35 section];

    v38 = [(PULayoutSampledSectioning *)layoutSectioning visualIndexPathForRealIndexPath:section isMainItem:item, 0];
    v40 = v39;
  }

  v41 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v32, "count")}];
  v42 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:self->_totalVisualSections];
  v88 = 0;
  v89 = &v88;
  v90 = 0x3010000000;
  v91 = &unk_1B3DBEC63;
  v43.f64[0] = NAN;
  v43.f64[1] = NAN;
  v92 = vnegq_f64(v43);
  v83 = 0;
  v84 = &v83;
  v85 = 0x3010000000;
  v86 = &unk_1B3DBEC63;
  v87 = v92;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __77__PUSectionedGridLayout__prepareForTransitionToOrFromGridLayout_isAppearing___block_invoke;
  v67[3] = &unk_1E7B7DEF8;
  v61 = v41;
  v68 = v61;
  v81 = v65;
  v66 = v9;
  v69 = v66;
  selfCopy = self;
  v44 = v42;
  v75 = v23;
  v76 = v25;
  v77 = v19;
  v78 = v21;
  v71 = v44;
  v73 = &v88;
  v74 = &v83;
  v82 = appearingCopy;
  v79 = v38;
  v80 = v40;
  v45 = v35;
  v72 = v45;
  [v32 enumerateIndexesUsingBlock:v67];
  objc_storeStrong(&self->_transitionSectionInfosByTransitionSection, v41);
  objc_storeStrong(&self->_transitionSectionInfosByVisualSection, v42);
  v46 = [MEMORY[0x1E696AC88] indexPathForItem:v89[5] inSection:v89[4]];
  transitionFirstVisibleRowVisualPath = self->_transitionFirstVisibleRowVisualPath;
  self->_transitionFirstVisibleRowVisualPath = v46;

  v48 = [MEMORY[0x1E696AC88] indexPathForItem:v84[5] inSection:v84[4]];
  transitionLastVisibleRowVisualPath = self->_transitionLastVisibleRowVisualPath;
  self->_transitionLastVisibleRowVisualPath = v48;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = self->_transitionLayout;
    v51 = v50;
    if (v50)
    {
      transitionLayout = [(UICollectionViewLayout *)v50 transitionLayout];

      if (transitionLayout != self)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v51 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v54 = objc_opt_respondsToSelector();

  if (v54)
  {
    v55 = objc_loadWeakRetained(&self->_delegate);
    [v55 sectionedGridLayout:self didPrepareTransitionIsAppearing:self->_transitionIsAppearing];
  }

  delegate = [(UICollectionViewLayout *)v51 delegate];
  v57 = objc_opt_respondsToSelector();

  if (v57)
  {
    delegate2 = [(UICollectionViewLayout *)v51 delegate];
    [delegate2 sectionedGridLayout:v51 didPrepareTransitionIsAppearing:{-[UICollectionViewLayout transitionIsAppearing](v51, "transitionIsAppearing")}];
  }

LABEL_30:

  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v88, 8);
}

void __77__PUSectionedGridLayout__prepareForTransitionToOrFromGridLayout_isAppearing___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v5 = objc_alloc_init(PUTransitionSectionInfo);
  [(PUTransitionSectionInfo *)v5 setTransitionSection:a2];
  [*(a1 + 32) setObject:v5 forKey:v4];
  v86 = 0;
  v87[0] = &v86;
  v87[1] = 0x2020000000;
  v87[2] = 0x7FFFFFFFFFFFFFFFLL;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v79 = 0;
  v80[0] = &v79;
  v80[1] = 0x3010000000;
  v80[2] = &unk_1B3DBEC63;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v81 = vnegq_f64(v6);
  v74 = 0;
  v75 = &v74;
  v76 = 0x3010000000;
  v77 = &unk_1B3DBEC63;
  v78 = v81;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0x7FFFFFFFFFFFFFFFLL;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [MEMORY[0x1E696AD50] indexSet];
  v8 = [MEMORY[0x1E695DF70] arrayWithObject:&unk_1F2B7ED20];
  [(PUTransitionSectionInfo *)v5 setVisualSections:v7];
  [(PUTransitionSectionInfo *)v5 setVisualRowStartMarkers:v8];
  if (*(a1 + 136) == 1)
  {
    [v7 addIndex:a2];
  }

  else
  {
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __77__PUSectionedGridLayout__prepareForTransitionToOrFromGridLayout_isAppearing___block_invoke_171;
    v64[3] = &unk_1E7B7DEA8;
    v9 = *(a1 + 40);
    v64[4] = *(a1 + 48);
    v65 = v7;
    [v9 enumerateRealSectionsForVisualSection:a2 usingBlock:v64];
  }

  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v63[3] = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v58[3] = 0x7FFFFFFFFFFFFFFFLL;
  v38 = MEMORY[0x1E69E9820];
  v39 = 3221225472;
  v40 = __77__PUSectionedGridLayout__prepareForTransitionToOrFromGridLayout_isAppearing___block_invoke_2;
  v41 = &unk_1E7B7DED0;
  v42 = *(a1 + 56);
  v10 = v5;
  v11 = *(a1 + 48);
  v43 = v10;
  v44 = v11;
  v56 = *(a1 + 88);
  v57 = *(a1 + 104);
  v46 = v63;
  v12 = v8;
  v45 = v12;
  v47 = &v79;
  v48 = &v70;
  v49 = &v74;
  v50 = &v66;
  v51 = *(a1 + 72);
  v52 = v58;
  v53 = &v86;
  v54 = &v59;
  v55 = &v82;
  [v7 enumerateIndexesUsingBlock:&v38];
  [(PUTransitionSectionInfo *)v10 setContiguousRows:v83[3], v38, v39, v40, v41];
  if ((*(a1 + 137) & 1) == 0)
  {
    if ([v7 containsIndex:*(a1 + 120)])
    {
      v13 = *(a1 + 64);
      [*(a1 + 48) gridCoordinatesInSectionForItemAtVisualIndex:*(a1 + 128)];
      if (*(*(a1 + 48) + 595) == 1)
      {
        v15 = v14;
        [*(a1 + 40) gridCoordinatesInVisualSectionForItemAtIndexPath:v13];
        *(*(a1 + 48) + 656) = v16 - v15;
      }

      goto LABEL_27;
    }

    if (*(v80[0] + 40) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    v17 = *(a1 + 120);
    v18 = v17 == 0x7FFFFFFFFFFFFFFFLL || v17 <= *(v87[0] + 24);
    v19 = *(v80[0] + 32);
    v20 = v19 == [v7 firstIndex] && *(v80[0] + 40) == 0;
    v21 = v60[3];
    v22 = v21 < 1;
    v23 = v21 - 1;
    v24 = !v22 && v75[4] == *(v87[0] + 24) && v75[5] == v23;
    if (v20 && (!v24 || v18))
    {
      v25 = 0;
      v26 = v80;
      v27 = 32;
    }

    else
    {
      if (!v24)
      {
        v32 = *(v87[0] + 24);
        if (v32 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_10;
        }

        if (*(v80[0] + 32) > v32)
        {
          goto LABEL_10;
        }

        v33 = v83[3];
        v22 = v33 < 1;
        v34 = v33 - 1;
        if (v22)
        {
          goto LABEL_10;
        }

        v35 = v67[3];
        v36 = v35 / v34 * (v71[3] / (v71[3] + v34 - v35)) + v71[3] / v34 * ((v34 - v35) / (v71[3] + v34 - v35));
        if (v36 < 0.0)
        {
          v36 = 0.0;
        }

        v29 = [*(a1 + 48) _visualRowPathForTransitionRowIndex:llround(fmin(v36 transitionSectionInfo:{1.0) * v34), v10}];
        if (v29 == 0x7FFFFFFFFFFFFFFFLL || (v25 = [*(a1 + 48) visualIndexForItemAtGridCoordinates:{v37, 0}], v25 == 0x7FFFFFFFFFFFFFFFLL))
        {
LABEL_10:
          v13 = 0;
LABEL_27:
          [(PUTransitionSectionInfo *)v10 setAnchorRealPath:v13];
          goto LABEL_28;
        }

LABEL_26:
        v30 = [*(*(a1 + 48) + 704) mainRealItemIndexPathForVisualIndexPath:{v29, v25}];
        v13 = [MEMORY[0x1E696AC88] indexPathForItem:v31 inSection:v30];
        goto LABEL_27;
      }

      v28 = [*(a1 + 48) numberOfVisualItemsInVisualSection:*(v87[0] + 24)];
      v26 = v87;
      v25 = v28 - 1;
      v27 = 24;
    }

    v29 = *(*v26 + v27);
    goto LABEL_26;
  }

  v13 = 0;
LABEL_28:

  _Block_object_dispose(v58, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(v63, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v86, 8);
}

uint64_t __77__PUSectionedGridLayout__prepareForTransitionToOrFromGridLayout_isAppearing___block_invoke_171(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) visualSectionForRealSection:a2];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = result;
    v5 = *(a1 + 40);

    return [v5 addIndex:v4];
  }

  return result;
}

void __77__PUSectionedGridLayout__prepareForTransitionToOrFromGridLayout_isAppearing___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v4 setObject:v5 forKey:v6];

  v30 = 0;
  v7 = [*(a1 + 48) visualRowsInRect:a2 inVisualSection:&v30 totalVisualSectionRows:{*(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176)}];
  v9 = v8;
  *(*(*(a1 + 64) + 8) + 24) += v30;
  v10 = *(a1 + 56);
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(a1 + 64) + 8) + 24)];
  [v10 addObject:v11];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v9)
  {
    v12 = *(*(a1 + 72) + 8);
    v13 = v30;
    if (*(v12 + 40) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v12 + 32) = a2;
      *(v12 + 40) = v7;
      *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) - v13 + *(*(*(a1 + 72) + 8) + 40);
    }

    v14 = *(*(a1 + 88) + 8);
    *(v14 + 32) = a2;
    *(v14 + 40) = v9 + v7 - 1;
    *(*(*(a1 + 96) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) - v13 + *(*(*(a1 + 88) + 8) + 40);
    v15 = *(*(a1 + 104) + 8);
    v18 = *(v15 + 32);
    v16 = (v15 + 32);
    v17 = v18;
    v19 = *(*(a1 + 72) + 8);
    if (v18 == 0x7FFFFFFFFFFFFFFFLL || (v20 = *(v19 + 32), v20 < v17) || v20 == v17 && *(v19 + 40) < *(*(*(a1 + 104) + 8) + 40))
    {
      *v16 = *(v19 + 32);
    }

    v21 = *(*(a1 + 112) + 8);
    v24 = *(v21 + 32);
    v22 = (v21 + 32);
    v23 = v24;
    v25 = *(*(a1 + 88) + 8);
    if (v24 == 0x7FFFFFFFFFFFFFFFLL || (v26 = *(v25 + 32), v26 > v23) || v26 == v23 && *(v25 + 40) > *(*(*(a1 + 112) + 8) + 40))
    {
      *v22 = *(v25 + 32);
    }
  }

  v27 = *(*(a1 + 120) + 8);
  v28 = *(v27 + 24);
  if (v28 == 0x7FFFFFFFFFFFFFFFLL || v28 + 1 == a2)
  {
    *(*(*(a1 + 128) + 8) + 24) = a2;
    *(*(*(a1 + 136) + 8) + 24) = v30;
    *(*(*(a1 + 144) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
    v27 = *(*(a1 + 120) + 8);
  }

  *(v27 + 24) = a2;
}

- (void)prepareForTransitionToLayout:(id)layout
{
  layoutCopy = layout;
  v6.receiver = self;
  v6.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v6 prepareForTransitionToLayout:layoutCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nextLayout = [layoutCopy nextLayout];

    layoutCopy = nextLayout;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUSectionedGridLayout *)self _prepareForTransitionToOrFromGridLayout:layoutCopy isAppearing:0];
  }
}

- (void)prepareForTransitionFromLayout:(id)layout
{
  layoutCopy = layout;
  v6.receiver = self;
  v6.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v6 prepareForTransitionFromLayout:layoutCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentLayout = [layoutCopy currentLayout];

    layoutCopy = currentLayout;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUSectionedGridLayout *)self _prepareForTransitionToOrFromGridLayout:layoutCopy isAppearing:1];
  }
}

- (UIEdgeInsets)_finalContentInset
{
  collectionView = [(PUSectionedGridLayout *)self collectionView];
  [collectionView adjustedContentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (self->_delegateSupportsFinalContentInsetForCurrentContentInset)
  {
    delegate = [(PUSectionedGridLayout *)self delegate];
    [delegate sectionedGridLayout:self finalContentInsetForCurrentContentInset:{v5, v7, v9, v11}];
    v5 = v13;
    v7 = v14;
    v9 = v15;
    v11 = v16;
  }

  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (int64_t)lastPreparedVisualSection
{
  if (!self->_dynamicLayoutEnabled)
  {
    return self->_totalRealSections - 1;
  }

  headerLayoutAttributes = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
  v4 = [headerLayoutAttributes count];

  if (!v4)
  {
    return self->_totalRealSections - 1;
  }

  headerLayoutAttributes2 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
  lastObject = [headerLayoutAttributes2 lastObject];

  indexPath = [lastObject indexPath];
  v8 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:indexPath];

  return v8;
}

- (int64_t)firstPreparedVisualSection
{
  if (!self->_dynamicLayoutEnabled)
  {
    return 0;
  }

  headerLayoutAttributes = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
  v4 = [headerLayoutAttributes count];

  if (!v4)
  {
    return 0;
  }

  headerLayoutAttributes2 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
  firstObject = [headerLayoutAttributes2 firstObject];

  indexPath = [firstObject indexPath];
  v8 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:indexPath];

  return v8;
}

- (BOOL)_hasAccessibilityLargeText
{
  collectionView = [(PUSectionedGridLayout *)self collectionView];
  traitCollection = [collectionView traitCollection];
  v4 = [PUInterfaceManager shouldUseAccessibilityLargeTextLayoutWithTraitCollecton:traitCollection];

  return v4;
}

- (id)_animationForReusableView:(id)view toLayoutAttributes:(id)attributes type:(unint64_t)type
{
  viewCopy = view;
  attributesCopy = attributes;
  if (type != 1)
  {
    v14 = 0;
    goto LABEL_12;
  }

  transitioningDelegate = [(PUSectionedGridLayout *)self transitioningDelegate];

  if (transitioningDelegate)
  {
    transitioningDelegate2 = [(PUSectionedGridLayout *)self transitioningDelegate];
    v12 = [transitioningDelegate2 collectionViewLayoutShouldProvideCustomAnimations:self];

    if (!v12)
    {
      v20 = 0;
      goto LABEL_11;
    }

    v13 = [PULayoutAnimationsHelper stackedTransitionAnimationsForReusableView:viewCopy toLayoutAttributes:attributesCopy shouldUseSpringAnimations:1];
  }

  else
  {
    transitionAnimationsHelper = self->_transitionAnimationsHelper;
    if (!transitionAnimationsHelper)
    {
      v16 = [[PULayoutAnimationsHelper alloc] initWithSectionedGridLayout:self];
      v17 = self->_transitionAnimationsHelper;
      self->_transitionAnimationsHelper = v16;

      _gridTransitionLayout = [(PUSectionedGridLayout *)self _gridTransitionLayout];
      v19 = _gridTransitionLayout != 0;

      [(PULayoutAnimationsHelper *)self->_transitionAnimationsHelper setShouldAnimateTemporaryImageView:v19];
      transitionAnimationsHelper = self->_transitionAnimationsHelper;
    }

    v13 = [(PULayoutAnimationsHelper *)transitionAnimationsHelper animationsForReusableView:viewCopy toLayoutAttributes:attributesCopy];
  }

  v20 = v13;
LABEL_11:
  v14 = _Block_copy(v20);

LABEL_12:

  return v14;
}

- (id)prepareForViewTransitionToSize:(CGSize)size
{
  width = size.width;
  v24[2] = *MEMORY[0x1E69E9840];
  WeakRetained = [(PUSectionedGridLayout *)self collectionView:size.width];
  [WeakRetained bounds];
  v7 = v6;
  v9 = v8;

  if (v7 == width)
  {
    goto LABEL_11;
  }

  delegateSupportsAnchorItemForContentOffset = self->_delegateSupportsAnchorItemForContentOffset;
  if (delegateSupportsAnchorItemForContentOffset)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained sectionedGridLayoutAnchorItemForAdjustingContentOffset:self];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&self->_viewSizeTransitionAnchorItem, v11);
  if (delegateSupportsAnchorItemForContentOffset)
  {
  }

  if (!self->_viewSizeTransitionAnchorItem)
  {
LABEL_11:
    v21 = 0;
  }

  else
  {
    v12 = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:?];
    [v12 center];
    v14 = v13;
    collectionView = [(PUSectionedGridLayout *)self collectionView];
    [collectionView contentOffset];
    v17 = v16;

    v18 = 0.0;
    if (v9 > 0.0)
    {
      v18 = (v14 - v17) / v9;
    }

    self->_viewSizeTransitionAnchorItemNormalizedYOffset = v18;
    viewSizeTransitionAnchorItem = self->_viewSizeTransitionAnchorItem;
    v23[0] = @"anchorItem";
    v23[1] = @"normalizedYOffset";
    v24[0] = viewSizeTransitionAnchorItem;
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v24[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  }

  return v21;
}

- (void)finalizeAnimatedBoundsChange
{
  v2.receiver = self;
  v2.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v2 finalizeAnimatedBoundsChange];
}

- (void)prepareForAnimatedBoundsChange:(CGRect)change
{
  v3.receiver = self;
  v3.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v3 prepareForAnimatedBoundsChange:change.origin.x, change.origin.y, change.size.width, change.size.height];
}

- (void)finalizeCollectionViewUpdates
{
  v5.receiver = self;
  v5.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v5 finalizeCollectionViewUpdates];
  deletedSections = self->_deletedSections;
  self->_deletedSections = 0;

  deletedItemIndexPaths = self->_deletedItemIndexPaths;
  self->_deletedItemIndexPaths = 0;

  self->_processingCollectionViewUpdates = 0;
}

- (void)prepareForCollectionViewUpdates:(id)updates
{
  v24 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v22.receiver = self;
  v22.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v22 prepareForCollectionViewUpdates:updatesCopy];
  selfCopy = self;
  self->_processingCollectionViewUpdates = 1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = updatesCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    indexSet = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 updateAction] == 1)
        {
          indexPathBeforeUpdate = [v12 indexPathBeforeUpdate];
          if ([indexPathBeforeUpdate item] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (!indexSet)
            {
              indexSet = [MEMORY[0x1E696AD50] indexSet];
            }

            -[NSIndexSet addIndex:](indexSet, "addIndex:", [indexPathBeforeUpdate section]);
          }

          else
          {
            if (!v8)
            {
              v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
            }

            [(NSSet *)v8 addObject:indexPathBeforeUpdate];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    indexSet = 0;
  }

  deletedSections = selfCopy->_deletedSections;
  selfCopy->_deletedSections = indexSet;
  v15 = indexSet;

  deletedItemIndexPaths = selfCopy->_deletedItemIndexPaths;
  selfCopy->_deletedItemIndexPaths = v8;
}

- (id)_layoutAttributesForSupplementaryViewOfKind:(id)kind forVisualSection:(int64_t)section supplementaryViewIndex:(int64_t)index
{
  kindCopy = kind;
  v10 = [(PUSectionedGridLayout *)self supplementaryViewIndexPathForVisualSection:section supplementaryViewItemIndex:index];
  if (!v10)
  {
    goto LABEL_16;
  }

  renderedStripsElementKind = [(PUSectionedGridLayout *)self renderedStripsElementKind];
  v12 = [kindCopy isEqualToString:renderedStripsElementKind];

  if (v12)
  {
    v13 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:[(PUSectionedGridLayout *)self _firstVisualItemIndexForRenderedStripIndex:index]];
    v14 = self->_columnsPerRow - 1;
    [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:v13 inVisualSection:v15, section];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:v13 inVisualSection:v14, section];
    v40.origin.x = v24;
    v40.origin.y = v25;
    v40.size.width = v26;
    v40.size.height = v27;
    v38.origin.x = v17;
    v38.origin.y = v19;
    v38.size.width = v21;
    v38.size.height = v23;
    v39 = CGRectUnion(v38, v40);
    y = v39.origin.y;
    height = v39.size.height;
    width = self->_contentSize.width;
    v31 = [(UICollectionViewLayoutAttributes *)PUSectionedGridLayoutAttributes layoutAttributesForSupplementaryViewOfKind:kindCopy withIndexPath:v10, v39.origin.x];
    [v31 setFrame:{0.0, y, width, height}];
    goto LABEL_17;
  }

  if (![kindCopy isEqualToString:self->_sectionHeaderElementKind])
  {
    if ([kindCopy isEqualToString:@"PUGridGlobalHeader"])
    {
      v32 = 296;
LABEL_11:
      v31 = *(&self->super.super.isa + v32);
      goto LABEL_17;
    }

    if ([kindCopy isEqualToString:@"PUGridGlobalFooter"])
    {
      v32 = 304;
      goto LABEL_11;
    }

    if (!self->_transitionLayout || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (-[UICollectionViewLayout sectionHeaderElementKind](self->_transitionLayout, "sectionHeaderElementKind"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [kindCopy isEqualToString:v33], v33, !v34))
    {
      v31 = [MEMORY[0x1E69DC858] layoutAttributesForSupplementaryViewOfKind:kindCopy withIndexPath:v10];
      [v31 frame];
      [v31 setFrame:?];
      [v31 setAlpha:0.0];
      [v31 setHidden:1];
      goto LABEL_17;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:938 description:{@"%@ should never be asked for attributes of the transition layout %@", self, self->_transitionLayout}];

LABEL_16:
    v31 = 0;
    goto LABEL_17;
  }

  v31 = [(UICollectionViewLayoutAttributes *)PUSectionedGridLayoutAttributes layoutAttributesForSupplementaryViewOfKind:kindCopy withIndexPath:v10];
  [(PUSectionedGridLayout *)self frameForSectionHeaderAtVisualSection:section];
  [v31 setFrame:?];
  if ([(PUSectionedGridLayout *)self shouldHideVisualSection:section])
  {
    [v31 setHidden:1];
    [v31 setAlpha:0.0];
  }

LABEL_17:

  return v31;
}

- (BOOL)_isSupportedSupplementaryViewKind:(id)kind
{
  kindCopy = kind;
  _supplementaryViewKinds = [(PUSectionedGridLayout *)self _supplementaryViewKinds];
  v6 = [_supplementaryViewKinds containsObject:kindCopy];

  return v6;
}

- (id)_supplementaryViewKinds
{
  supplementaryViewKinds = self->_supplementaryViewKinds;
  if (!supplementaryViewKinds)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = v4;
    if (self->_renderedStripsElementKind)
    {
      [(NSSet *)v4 addObject:?];
    }

    if (self->_sectionHeaderElementKind)
    {
      [(NSSet *)v5 addObject:?];
    }

    [(NSSet *)v5 addObject:@"PUGridGlobalHeader"];
    [(NSSet *)v5 addObject:@"PUGridGlobalFooter"];
    v6 = self->_supplementaryViewKinds;
    self->_supplementaryViewKinds = v5;

    supplementaryViewKinds = self->_supplementaryViewKinds;
  }

  return supplementaryViewKinds;
}

- (id)_layoutAttributesForItemAtVisualIndexPath:(PUSimpleIndexPath)path realIndexPath:(id)indexPath isMainRealItem:(BOOL)item
{
  itemCopy = item;
  var1 = path.var1;
  var0 = path.var0;
  indexPathCopy = indexPath;
  v10 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:var1];
  [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:v10 inVisualSection:v11 indexPath:var0, indexPathCopy];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(UICollectionViewLayoutAttributes *)PUSectionedGridLayoutAttributes layoutAttributesForCellWithIndexPath:indexPathCopy];
  [v20 setFrame:{v13, v15, v17, v19}];
  [v20 setZIndex:1];
  if (!itemCopy || self->_usesRenderedStrips)
  {
    [v20 setHidden:1];
    goto LABEL_6;
  }

  if ([(NSSet *)self->_hiddenItemIndexPaths containsObject:indexPathCopy])
  {
LABEL_6:
    [v20 setAlpha:0.0];
  }

  [(PUSectionedGridLayout *)self _adjustItemLayoutAttributesForReordering:v20];

  return v20;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v14[1] = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  pathCopy = path;
  if (self->_transitionLayout && [(PUSectionedGridLayout *)self _isTransitionForeignSupplementaryViewKind:kindCopy])
  {
    v8 = [(UICollectionViewLayout *)self->_transitionLayout layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:pathCopy];
    [v8 setAlpha:0.0];
    [v8 setHidden:1];
  }

  else
  {
    [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
    v9 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:pathCopy];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v8 = -[PUSectionedGridLayout _layoutAttributesForSupplementaryViewOfKind:forVisualSection:supplementaryViewIndex:](self, "_layoutAttributesForSupplementaryViewOfKind:forVisualSection:supplementaryViewIndex:", kindCopy, v9, [pathCopy item]);
  }

  transitioningDelegate = [(PUSectionedGridLayout *)self transitioningDelegate];
  if (transitioningDelegate)
  {
    v14[0] = v8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [transitioningDelegate collectionViewLayout:self willSupplyLayoutAttributes:v12];
  }

  v10 = v8;

LABEL_10:

  return v10;
}

- (id)supplementaryViewIndexPathForVisualSection:(int64_t)section supplementaryViewItemIndex:(int64_t)index
{
  v5 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealSectionForVisualSection:section];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForItem:index inSection:v5];
  }

  return v6;
}

- (int64_t)visualSectionForSupplementaryViewIndexPath:(id)path
{
  layoutSectioning = self->_layoutSectioning;
  section = [path section];

  return [(PULayoutSampledSectioning *)layoutSectioning visualSectionForRealSection:section];
}

- (BOOL)_isTransitionForeignSupplementaryViewKind:(id)kind
{
  kindCopy = kind;
  if (self->_transitionLayout && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = ![(PUSectionedGridLayout *)self _isSupportedSupplementaryViewKind:kindCopy];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v16[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v15 = 0;
  layoutSectioning = self->_layoutSectioning;
  v6 = pathCopy;
  item = [v6 item];
  section = [v6 section];

  v9 = [(PULayoutSampledSectioning *)layoutSectioning visualIndexPathForRealIndexPath:section isMainItem:item, &v15];
  v11 = [(PUSectionedGridLayout *)self _layoutAttributesForItemAtVisualIndexPath:v9 realIndexPath:v10 isMainRealItem:v6, v15];
  transitioningDelegate = [(PUSectionedGridLayout *)self transitioningDelegate];
  if (transitioningDelegate)
  {
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [transitioningDelegate collectionViewLayout:self willSupplyLayoutAttributes:v13];
  }

  return v11;
}

- (id)assetIndexPathsForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  if (height == 0.0 || !self->_totalVisualSections)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  else
  {
    if (self->_transitionLayout && [(PUSectionedGridLayout *)self transitionIsAppearing])
    {
      x = x + self->_transitionEffectiveContentOrigin.x;
      y = y + self->_transitionEffectiveContentOrigin.y;
    }

    columnsPerRow = [(PUSectionedGridLayout *)self columnsPerRow];
    layoutSectioning = [(PUSectionedGridLayout *)self layoutSectioning];
    array = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * columnsPerRow * columnsPerRow];
    height = [(PUSectionedGridLayout *)self visualSectionsInRect:x, y, width, height];
    v13 = height + v12;
    if (height < height + v12)
    {
      v14 = height;
      do
      {
        height2 = [(PUSectionedGridLayout *)self visualRowsInRect:v14 inVisualSection:0 totalVisualSectionRows:x, y, width, height];
        if (height2 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v16;
          if (v16)
          {
            v18 = height2;
            v19 = [(PUSectionedGridLayout *)self numberOfVisualItemsInVisualSection:v14];
            v20 = v18 * columnsPerRow;
            v21 = (v18 + v17) * columnsPerRow - 1;
            if (v21 >= v19 - 1)
            {
              v21 = v19 - 1;
            }

            if (v20 <= v21)
            {
              v22 = v21 + 1;
              do
              {
                v23 = [layoutSectioning mainRealItemIndexPathForVisualIndexPath:{v14, v20}];
                v25 = [MEMORY[0x1E696AC88] indexPathForItem:v24 inSection:v23];
                [array addObject:v25];

                ++v20;
              }

              while (v22 != v20);
            }
          }
        }

        ++v14;
      }

      while (v14 != v13);
    }
  }

  return array;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  if (height == 0.0 || !self->_totalVisualSections)
  {
    array = [MEMORY[0x1E695DEC8] array];
    goto LABEL_65;
  }

  v74 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  p_cachedLayoutAttributesLastKnownRect = &self->_cachedLayoutAttributesLastKnownRect;
  v70 = &self->_cachedLayoutAttributesLastKnownRect;
  if (!CGRectIsNull(self->_cachedLayoutAttributesLastKnownRect))
  {
    v86.origin.x = p_cachedLayoutAttributesLastKnownRect->origin.x;
    v86.origin.y = self->_cachedLayoutAttributesLastKnownRect.origin.y;
    v86.size.width = self->_cachedLayoutAttributesLastKnownRect.size.width;
    v86.size.height = self->_cachedLayoutAttributesLastKnownRect.size.height;
    v79.origin.x = x;
    v79.origin.y = y;
    v79.size.width = width;
    v79.size.height = height;
    if (CGRectEqualToRect(v79, v86))
    {
      v76 = self->_cachedNonHeaderLayoutAttributesInRect;
      v72 = 0;
LABEL_10:
      v10 = 1;
      goto LABEL_12;
    }
  }

  v80.origin.x = p_cachedLayoutAttributesLastKnownRect->origin.x;
  v80.origin.y = self->_cachedLayoutAttributesLastKnownRect.origin.y;
  v80.size.width = self->_cachedLayoutAttributesLastKnownRect.size.width;
  v80.size.height = self->_cachedLayoutAttributesLastKnownRect.size.height;
  if (!CGRectIsNull(v80))
  {
    v81.origin.x = p_cachedLayoutAttributesLastKnownRect->origin.x;
    v81.origin.y = self->_cachedLayoutAttributesLastKnownRect.origin.y;
    v81.size.width = self->_cachedLayoutAttributesLastKnownRect.size.width;
    v81.size.height = self->_cachedLayoutAttributesLastKnownRect.size.height;
    v87.origin.x = x;
    v87.origin.y = y;
    v87.size.width = width;
    v87.size.height = height;
    if (CGRectContainsRect(v81, v87))
    {
      v76 = self->_cachedNonHeaderLayoutAttributesInRect;
      v72 = 1;
      goto LABEL_10;
    }
  }

  v76 = [MEMORY[0x1E695DF70] arrayWithCapacity:{2 * self->_columnsPerRow * self->_columnsPerRow, v70}];
  v72 = 0;
  v10 = 0;
LABEL_12:
  v11 = [(PUSectionedGridLayout *)self visualSectionsInRect:x, y, width, height, v70];
  v75 = v11 + v12;
  if (v11 < v11 + v12)
  {
    v13 = v11;
    v73 = v10;
    do
    {
      [(PUSectionedGridLayout *)self _finalSectionHeaderHeightForSection:v13];
      if (v14 > 0.0 && self->_sectionHeaderElementKind)
      {
        if (self->_dynamicLayoutEnabled)
        {
          headerLayoutAttributesByVisualSection = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributesByVisualSection];
          v16 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
          v17 = [headerLayoutAttributesByVisualSection objectForKey:v16];

          if (!v17)
          {
            goto LABEL_22;
          }

LABEL_21:
          [v74 addObject:v17];

          goto LABEL_22;
        }

        [(PUSectionedGridLayout *)self frameForSectionHeaderAtVisualSection:v13];
        v88.origin.x = v18;
        v88.origin.y = v19;
        v88.size.width = v20;
        v88.size.height = v21;
        v82.origin.x = x;
        v82.origin.y = y;
        v82.size.width = width;
        v82.size.height = height;
        if (CGRectIntersectsRect(v82, v88))
        {
          v17 = [(PUSectionedGridLayout *)self _layoutAttributesForSupplementaryViewOfKind:self->_sectionHeaderElementKind forVisualSection:v13 supplementaryViewIndex:0];
          if (v17)
          {
            goto LABEL_21;
          }
        }
      }

LABEL_22:
      height = [(PUSectionedGridLayout *)self visualRowsInRect:v13 inVisualSection:0 totalVisualSectionRows:x, y, width, height];
      if (height != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = v23;
        if (v23)
        {
          v25 = height;
          usesRenderedStrips = self->_usesRenderedStrips;
          if (((v10 | !usesRenderedStrips) & 1) == 0)
          {
            v28 = [(PUSectionedGridLayout *)self _renderedStripIndexForSectionRowIndex:height];
            v27 = v25 + v24;
            v29 = [(PUSectionedGridLayout *)self _renderedStripIndexForSectionRowIndex:v25 + v24 - 1];
            renderedStripsElementKind = [(PUSectionedGridLayout *)self renderedStripsElementKind];
            if (v28 <= v29)
            {
              v31 = v29 + 1;
              do
              {
                v32 = [(PUSectionedGridLayout *)self _layoutAttributesForSupplementaryViewOfKind:renderedStripsElementKind forVisualSection:v13 supplementaryViewIndex:v28];
                if (v32)
                {
                  [(NSArray *)v76 addObject:v32];
                }

                ++v28;
              }

              while (v31 != v28);
            }

            v10 = v73;
            if (self->_usesRenderedStrips)
            {
              goto LABEL_42;
            }

            goto LABEL_33;
          }

          if (((v10 | usesRenderedStrips) & 1) == 0)
          {
            v27 = height + v23;
LABEL_33:
            v33 = [(PUSectionedGridLayout *)self numberOfVisualItemsInVisualSection:v13];
            columnsPerRow = self->_columnsPerRow;
            v35 = columnsPerRow * v25;
            v36 = columnsPerRow * v27 - 1;
            if (v36 >= v33 - 1)
            {
              v36 = v33 - 1;
            }

            if (v35 <= v36)
            {
              v37 = v36 + 1;
              do
              {
                v38 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealItemIndexPathForVisualIndexPath:v13, v35];
                v40 = [MEMORY[0x1E696AC88] indexPathForItem:v39 inSection:v38];
                v41 = [(PUSectionedGridLayout *)self _layoutAttributesForItemAtVisualIndexPath:v13 realIndexPath:v35 isMainRealItem:v40, 1];
                v42 = v41;
                if (v41)
                {
                  [v41 frame];
                  v89.origin.x = v43;
                  v89.origin.y = v44;
                  v89.size.width = v45;
                  v89.size.height = v46;
                  v83.origin.x = x;
                  v83.origin.y = y;
                  v83.size.width = width;
                  v83.size.height = height;
                  if (CGRectIntersectsRect(v83, v89) || self->_dynamicLayoutEnabled)
                  {
                    [(NSArray *)v76 addObject:v42];
                  }
                }

                ++v35;
              }

              while (v37 != v35);
            }
          }
        }
      }

LABEL_42:
      ++v13;
    }

    while (v13 != v75);
  }

  globalHeaderAttributes = self->_globalHeaderAttributes;
  if (globalHeaderAttributes)
  {
    v48 = v10;
  }

  else
  {
    v48 = 1;
  }

  if ((v48 & 1) == 0)
  {
    [(UICollectionViewLayoutAttributes *)globalHeaderAttributes frame];
    v90.origin.x = v49;
    v90.origin.y = v50;
    v90.size.width = v51;
    v90.size.height = v52;
    v84.origin.x = x;
    v84.origin.y = y;
    v84.size.width = width;
    v84.size.height = height;
    if (CGRectIntersectsRect(v84, v90))
    {
      collectionView = [(PUSectionedGridLayout *)self collectionView];
      dataSource = [collectionView dataSource];

      if (dataSource)
      {
        [(NSArray *)v76 addObject:self->_globalHeaderAttributes];
      }
    }
  }

  globalFooterAttributes = self->_globalFooterAttributes;
  if (globalFooterAttributes)
  {
    v56 = v10;
  }

  else
  {
    v56 = 1;
  }

  if ((v56 & 1) == 0)
  {
    [(UICollectionViewLayoutAttributes *)globalFooterAttributes frame];
    v91.origin.x = v57;
    v91.origin.y = v58;
    v91.size.width = v59;
    v91.size.height = v60;
    v85.origin.x = x;
    v85.origin.y = y;
    v85.size.width = width;
    v85.size.height = height;
    if (CGRectIntersectsRect(v85, v91))
    {
      collectionView2 = [(PUSectionedGridLayout *)self collectionView];
      dataSource2 = [collectionView2 dataSource];

      if (dataSource2)
      {
        [(NSArray *)v76 addObject:self->_globalFooterAttributes];
      }
    }
  }

  if (v72)
  {
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __59__PUSectionedGridLayout_layoutAttributesForElementsInRect___block_invoke;
    v77[3] = &__block_descriptor_64_e49_B32__0__UICollectionViewLayoutAttributes_8Q16_B24l;
    *&v77[4] = x;
    *&v77[5] = y;
    *&v77[6] = width;
    *&v77[7] = height;
    v63 = [(NSArray *)v76 indexesOfObjectsPassingTest:v77];
    v64 = [(NSArray *)v76 objectsAtIndexes:v63];
    array = [v64 arrayByAddingObjectsFromArray:v74];

    if (v10)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  array = [(NSArray *)v76 arrayByAddingObjectsFromArray:v74];
  if ((v10 & 1) == 0)
  {
LABEL_61:
    v65 = [(NSArray *)v76 copy];
    cachedNonHeaderLayoutAttributesInRect = self->_cachedNonHeaderLayoutAttributesInRect;
    self->_cachedNonHeaderLayoutAttributesInRect = v65;

    *v71 = x;
    v71[1] = y;
    v71[2] = width;
    v71[3] = height;
  }

LABEL_62:
  transitioningDelegate = [(PUSectionedGridLayout *)self transitioningDelegate];
  v68 = transitioningDelegate;
  if (transitioningDelegate)
  {
    [transitioningDelegate collectionViewLayout:self willSupplyLayoutAttributes:array];
  }

LABEL_65:

  return array;
}

BOOL __59__PUSectionedGridLayout_layoutAttributesForElementsInRect___block_invoke(void *a1, void *a2)
{
  [a2 frame];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];

  return CGRectIntersectsRect(*&v3, *&v7);
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  collectionView = [(PUSectionedGridLayout *)self collectionView];
  [collectionView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v13 == height && v11 == width;
  v15 = v9 != y && v14;
  sectionHeaderElementKind = [(PUSectionedGridLayout *)self sectionHeaderElementKind];
  v17 = sectionHeaderElementKind;
  if (!v15 || sectionHeaderElementKind == 0)
  {
LABEL_15:
    v20 = objc_alloc_init(PUSectionedGridLayoutInvalidationContext);
    goto LABEL_16;
  }

  cachedFloatingHeaderInvalidationContext = self->_cachedFloatingHeaderInvalidationContext;
  if (!cachedFloatingHeaderInvalidationContext || self->_cachedFloatingHeaderInvalidationContextNewVisualSection != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = objc_alloc_init(PUSectionedGridLayoutInvalidationContext);
    v22 = self->_cachedFloatingHeaderInvalidationContext;
    self->_cachedFloatingHeaderInvalidationContext = v21;

    self->_cachedFloatingHeaderInvalidationContextNewVisualSection = 0x7FFFFFFFFFFFFFFFLL;
    if (v21)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v20 = cachedFloatingHeaderInvalidationContext;
LABEL_16:
  v21 = v20;
LABEL_17:
  [(PUSectionedGridLayoutInvalidationContext *)v21 setInvalidateForVerticalScroll:v15];
  [(PUSectionedGridLayoutInvalidationContext *)v21 setSectioningIsPreserved:1];
  [(PUSectionedGridLayoutInvalidationContext *)v21 setSamplingIsPreserved:v11 == width];

  return v21;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  v4.receiver = self;
  v4.super_class = PUSectionedGridLayout;
  return (change.size.width != self->_contentSize.width) | [(PUSectionedGridLayout *)&v4 shouldInvalidateLayoutForBoundsChange:change.origin.x, change.origin.y, change.size.width, change.size.height];
}

- (void)invalidateLayoutForMetricsChange
{
  v3 = objc_alloc_init(PUSectionedGridLayoutInvalidationContext);
  [(PUSectionedGridLayoutInvalidationContext *)v3 setSectioningIsPreserved:1];
  [(PUSectionedGridLayout *)self invalidateLayoutWithContext:v3];
}

- (void)invalidateLayoutForVerticalScroll
{
  v3 = objc_alloc_init(PUSectionedGridLayoutInvalidationContext);
  [(PUSectionedGridLayoutInvalidationContext *)v3 setInvalidateForVerticalScroll:1];
  [(PUSectionedGridLayoutInvalidationContext *)v3 setSamplingIsPreserved:1];
  [(PUSectionedGridLayoutInvalidationContext *)v3 setSectioningIsPreserved:1];
  [(PUSectionedGridLayout *)self invalidateLayoutWithContext:v3];
}

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  [(PUSectionedGridLayout *)self _invalidateLayoutWithContext:contextCopy];
  v5.receiver = self;
  v5.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v5 invalidateLayoutWithContext:contextCopy];
}

- (void)_invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  invalidateForVerticalScroll = [contextCopy invalidateForVerticalScroll];
  if ((invalidateForVerticalScroll & 1) == 0)
  {
    self->_layoutDataIsValid = 0;
    [(PUSectionedGridLayout *)self _clearLayoutCaches];
    globalHeaderAttributes = self->_globalHeaderAttributes;
    self->_globalHeaderAttributes = 0;

    globalFooterAttributes = self->_globalFooterAttributes;
    self->_globalFooterAttributes = 0;

    cachedNonHeaderLayoutAttributesInRect = self->_cachedNonHeaderLayoutAttributesInRect;
    self->_cachedNonHeaderLayoutAttributesInRect = 0;

    v8 = *(MEMORY[0x1E695F050] + 16);
    self->_cachedLayoutAttributesLastKnownRect.origin = *MEMORY[0x1E695F050];
    self->_cachedLayoutAttributesLastKnownRect.size = v8;
    samplingIsPreserved = [contextCopy samplingIsPreserved];
    invalidateForVerticalScroll = [contextCopy sectioningIsPreserved];
    v10 = invalidateForVerticalScroll;
    if (!samplingIsPreserved || (invalidateForVerticalScroll & 1) == 0)
    {
      self->_samplingDataIsValid = 0;
      [(PUSectionedGridLayout *)self _clearSamplingCaches];
      invalidateForVerticalScroll = [(PULayoutSampledSectioning *)self->_layoutSectioning invalidateSampling];
    }

    if ((v10 & 1) == 0)
    {
      self->_sectioningDataIsValid = 0;
      [(PUSectionedGridLayout *)self _clearSectioningCaches];
      invalidateForVerticalScroll = [(PULayoutSampledSectioning *)self->_layoutSectioning invalidateSections];
    }
  }

  v11 = contextCopy;
  if (self->_delegateSupportsDidInvalidateWithContext)
  {
    invalidateForVerticalScroll = [contextCopy invalidationHasBeenRedispatched];
    v11 = contextCopy;
    if ((invalidateForVerticalScroll & 1) == 0)
    {
      [contextCopy setInvalidationHasBeenRedispatched:1];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sectionedGridLayout:self didInvalidateWithContext:contextCopy];

      v11 = contextCopy;
    }
  }

  MEMORY[0x1EEE66BB8](invalidateForVerticalScroll, v11);
}

- (CGSize)transitionActualContentSize
{
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)collectionViewContentSize
{
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  if (self->_transitionLayout)
  {
    if ([(PUSectionedGridLayout *)self transitionIsAppearing])
    {
      if (self->_transitionApplyingEffectiveContentOrigin)
      {
        [(UICollectionViewLayout *)self->_transitionLayout collectionViewContentSize];
        if (height < v5)
        {
          height = v5;
        }
      }
    }
  }

  if (self->_dynamicLayoutEnabled)
  {
    [(PUSectionedGridLayoutData *)self->_layoutData currentContentBounds];
    MaxY = CGRectGetMaxY(v11);
    [(UICollectionViewLayoutAttributes *)self->_globalFooterAttributes frame];
    v7 = MaxY + CGRectGetHeight(v12);
    if (height < v7)
    {
      height = v7;
    }
  }

  v8 = width;
  v9 = height;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_prepareLayoutIfNeeded
{
  collectionView = [(PUSectionedGridLayout *)self collectionView];

  if (!collectionView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:350 description:@"CollectionView is nil"];
  }

  if (self->_layoutDataIsValid)
  {
    if (self->_samplingDataIsValid)
    {
      return;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:353 description:@"Sampling data should always be valid when layout data is valid"];
  }

  else
  {
    if (self->_delegateSupportsWillPrepareLayout)
    {
      delegate = [(PUSectionedGridLayout *)self delegate];
      [delegate sectionedGridLayoutWillPrepareLayout:self];
    }

    currentHandler2 = [(PUSectionedGridLayout *)self collectionView];
    [(PUSectionedGridLayout *)self _prepareSamplingDataIfNeeded];
    if (!self->_sectioningDataIsValid)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:365 description:@"Sectioning data should be correct here"];
    }

    [currentHandler2 bounds];
    v7 = v6;
    [(PUSectionedGridLayout *)self itemSize];
    v9 = v8;
    [(PUSectionedGridLayout *)self interItemSpacing];
    v11 = v10;
    [(PUSectionedGridLayout *)self sectionContentInset];
    v13 = v12;
    v15 = v14;
    if (self->_globalHeaderHeight <= 0.0 || self->_totalVisualSections < 1 || self->_totalRealSections < 1)
    {
      globalHeaderAttributes = self->_globalHeaderAttributes;
      self->_globalHeaderAttributes = 0;
    }

    else
    {
      v16 = MEMORY[0x1E69DC858];
      globalHeaderIndexPath = [(PUSectionedGridLayout *)self globalHeaderIndexPath];
      v18 = [v16 layoutAttributesForSupplementaryViewOfKind:@"PUGridGlobalHeader" withIndexPath:globalHeaderIndexPath];
      v19 = self->_globalHeaderAttributes;
      self->_globalHeaderAttributes = v18;

      [(UICollectionViewLayoutAttributes *)self->_globalHeaderAttributes setFrame:0.0, 0.0, v7, self->_globalHeaderHeight];
    }

    if ([(PUSectionedGridLayout *)self _hasAccessibilityLargeText]&& !self->_axLargeTextSectionHeaderHeightByVisualSection)
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
      axLargeTextSectionHeaderHeightByVisualSection = self->_axLargeTextSectionHeaderHeightByVisualSection;
      self->_axLargeTextSectionHeaderHeightByVisualSection = v21;
    }

    self->_visualSectionStartYs = malloc_type_malloc(8 * self->_totalVisualSections + 8, 0x100004000313F17uLL);
    y = 0.0;
    if (self->_transitionApplyingEffectiveContentOrigin)
    {
      y = self->_transitionEffectiveContentOrigin.y;
    }

    globalTopPadding = self->_globalTopPadding;
    [(PUSectionedGridLayout *)self globalHeaderHeight];
    v26 = y + globalTopPadding + v25;
    totalVisualSections = self->_totalVisualSections;
    if (totalVisualSections >= 1)
    {
      v55 = v7;
      v28 = 0;
      v29 = v13 + v15;
      do
      {
        [(PUSectionedGridLayout *)self sectionTopPadding];
        v31 = v30;
        [(PUSectionedGridLayout *)self _finalSectionHeaderHeightForSection:v28];
        v33 = v32;
        [(PUSectionedGridLayout *)self sectionBottomPadding];
        v35 = v34;
        if (PUMainScreenScale_onceToken != -1)
        {
          dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
        }

        v36 = *&PUMainScreenScale_screenScale;
        self->_visualSectionStartYs[v28] = v26;
        if (![(PUSectionedGridLayout *)self shouldHideVisualSection:v28])
        {
          v37 = round(v36 * (v31 + v33 + v35)) / v36;
          v38 = [(PULayoutSampledSectioning *)self->_layoutSectioning numberOfVisualItemsInVisualSection:v28];
          columnsPerRow = self->_columnsPerRow;
          if (columnsPerRow >= 1)
          {
            v40 = vcvtpd_s64_f64(v38 / columnsPerRow);
            if (v40 >= 1)
            {
              v37 = v29 + v37 + v11 * (v40 - 1) + v9 * v40;
            }
          }

          v26 = v26 + v37;
        }

        ++v28;
        totalVisualSections = self->_totalVisualSections;
      }

      while (v28 < totalVisualSections);
      v7 = v55;
    }

    self->_visualSectionStartYs[totalVisualSections] = v26;
    if (!self->_globalFooterAttributes)
    {
      v41 = MEMORY[0x1E69DC858];
      globalFooterIndexPath = [(PUSectionedGridLayout *)self globalFooterIndexPath];
      v43 = [v41 layoutAttributesForSupplementaryViewOfKind:@"PUGridGlobalFooter" withIndexPath:globalFooterIndexPath];
      globalFooterAttributes = self->_globalFooterAttributes;
      self->_globalFooterAttributes = v43;
    }

    v45 = 0.0;
    if (self->_globalFooterHeight <= 0.0 || self->_totalVisualSections < 1)
    {
      v47 = 1;
      globalFooterHeight = 0.0;
    }

    else
    {
      totalRealSections = self->_totalRealSections;
      v47 = totalRealSections < 1;
      if (totalRealSections >= 1)
      {
        v45 = 1.0;
      }

      else
      {
        v45 = 0.0;
      }

      if (totalRealSections >= 1)
      {
        globalFooterHeight = self->_globalFooterHeight;
      }

      else
      {
        globalFooterHeight = 0.0;
      }
    }

    [(UICollectionViewLayoutAttributes *)self->_globalFooterAttributes setFrame:0.0, v26, v7, globalFooterHeight];
    [(UICollectionViewLayoutAttributes *)self->_globalFooterAttributes setHidden:v47];
    [(UICollectionViewLayoutAttributes *)self->_globalFooterAttributes setAlpha:v45];
    [(PUSectionedGridLayout *)self globalFooterHeight];
    v50 = v49;
    [(PUSectionedGridLayout *)self globalBottomPadding];
    v52 = v26 + v50 + v51 - self->_transitionEffectiveContentOrigin.y;
    self->_contentSize.width = v7;
    self->_contentSize.height = v52;
    self->_layoutDataIsValid = 1;
  }
}

- (void)_prepareSamplingDataIfNeeded
{
  if (self->_samplingDataIsValid)
  {
    if (self->_sectioningDataIsValid)
    {
      return;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:310 description:@"Sectioning data should always be valid when sampling data is valid"];
  }

  else
  {
    if (self->_layoutDataIsValid)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:314 description:@"Layout data can't be valid while sampling data is invvalid"];
    }

    [(PUSectionedGridLayout *)self _prepareSectioningDataIfNeeded];
    currentHandler = [(PUSectionedGridLayout *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      self->_visualSectionMaxRows = malloc_type_malloc(8 * self->_totalVisualSections, 0x100004000313F17uLL);
      if (self->_totalVisualSections >= 1)
      {
        v4 = 0;
        v5 = 0;
        do
        {
          v6 = [currentHandler sectionedGridLayout:self maximumRowsForVisualSection:v5];
          v4 |= v6 > 0;
          self->_visualSectionMaxRows[v5++] = v6;
        }

        while (v5 < self->_totalVisualSections);
        if (v4)
        {
          goto LABEL_12;
        }
      }
    }

    if (self->_delegateSupportsGroupedSections)
    {
LABEL_12:
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    [(PULayoutSampledSectioning *)self->_layoutSectioning setSupportsSamplingAndSectionGrouping:v7];
    [(PUSectionedGridLayout *)self _sectionWidth];
    self->_columnsPerRow = [(PUSectionedGridLayout *)self numberOfColumnsForWidth:?];
    self->_samplingDataIsValid = 1;
  }
}

- (void)_prepareSectioningDataIfNeeded
{
  if (!self->_sectioningDataIsValid)
  {
    if (self->_samplingDataIsValid)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:290 description:@"Sampling data can't be valid while sectioning data is valid"];
    }

    delegate = [(PUSectionedGridLayout *)self delegate];
    collectionView = [(PUSectionedGridLayout *)self collectionView];
    numberOfSections = [collectionView numberOfSections];
    self->_totalRealSections = numberOfSections;
    self->_realSectionItemCounts = malloc_type_malloc(8 * numberOfSections, 0x100004000313F17uLL);
    totalRealSections = self->_totalRealSections;
    if (totalRealSections >= 1)
    {
      for (i = 0; i < totalRealSections; ++i)
      {
        self->_realSectionItemCounts[i] = [collectionView numberOfItemsInSection:i];
        totalRealSections = self->_totalRealSections;
      }
    }

    if (self->_delegateSupportsGroupedSections)
    {
      totalRealSections = [delegate numberOfVisualSectionsForSectionedGridLayout:self];
    }

    self->_totalVisualSections = totalRealSections;
    self->_sectioningDataIsValid = 1;
  }
}

- (void)_clearLayoutCaches
{
  visualSectionStartYs = self->_visualSectionStartYs;
  if (visualSectionStartYs)
  {
    free(visualSectionStartYs);
    self->_visualSectionStartYs = 0;
  }

  if ([(PUSectionedGridLayout *)self _hasAccessibilityLargeText])
  {
    axLargeTextSectionHeaderHeightByVisualSection = self->_axLargeTextSectionHeaderHeightByVisualSection;
    if (axLargeTextSectionHeaderHeightByVisualSection)
    {
      [(NSMutableDictionary *)axLargeTextSectionHeaderHeightByVisualSection removeAllObjects];
    }
  }

  if (self->_dynamicLayoutEnabled)
  {
    layoutData = self->_layoutData;

    [(PUSectionedGridLayoutData *)layoutData invalidate];
  }
}

- (void)_clearSamplingCaches
{
  visualSectionMaxRows = self->_visualSectionMaxRows;
  if (visualSectionMaxRows)
  {
    free(visualSectionMaxRows);
    self->_visualSectionMaxRows = 0;
  }
}

- (void)_clearSectioningCaches
{
  realSectionItemCounts = self->_realSectionItemCounts;
  if (realSectionItemCounts)
  {
    free(realSectionItemCounts);
    self->_realSectionItemCounts = 0;
  }
}

- (void)_clearRetainedCaches
{
  [(PUSectionedGridLayout *)self _clearLayoutCaches];
  [(PUSectionedGridLayout *)self _clearSamplingCaches];

  [(PUSectionedGridLayout *)self _clearSectioningCaches];
}

- (void)prepareLayout
{
  v3.receiver = self;
  v3.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v3 prepareLayout];
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
}

- (void)dealloc
{
  [(PUSectionedGridLayout *)self _clearRetainedCaches];
  v3.receiver = self;
  v3.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v3 dealloc];
}

- (PUSectionedGridLayout)init
{
  v8.receiver = self;
  v8.super_class = PUSectionedGridLayout;
  v2 = [(PUSectionedGridLayout *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(PULayoutSampledSectioning);
    layoutSectioning = v2->_layoutSectioning;
    v2->_layoutSectioning = v3;

    [(PULayoutSectioning *)v2->_layoutSectioning setDelegate:v2];
    v2->_sectionHeadersEnabled = 1;
    v5 = objc_alloc_init(PUSectionedGridLayoutData);
    layoutData = v2->_layoutData;
    v2->_layoutData = v5;
  }

  return v2;
}

@end