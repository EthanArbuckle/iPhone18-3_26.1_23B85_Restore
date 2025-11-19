@interface PUSectionedGridLayout
- (BOOL)_ensureUpdatedLayoutData:(id)a3 isForward:(BOOL)a4 outDeltaOriginY:(double *)a5;
- (BOOL)_hasAccessibilityLargeText;
- (BOOL)_isSupportedSupplementaryViewKind:(id)a3;
- (BOOL)_isTransitionForeignSupplementaryViewKind:(id)a3;
- (BOOL)_visualSectionsMatchTransitionSectionsToOrFromLayout:(id)a3;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CATransform3D)_transformToConvertRect:(SEL)a3 intoRect:(CGRect)a4 referenceCenter:(CGRect)a5;
- (CGPoint)_targetContentOffsetWithAnchorItemIndexPath:(id)a3 isRotation:(BOOL)a4 orTransitionFromLayout:(id)a5 keepAnchorStable:(BOOL)a6;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGPoint)targetContentOffsetForTransitionFromGridLayout:(id)a3;
- (CGPoint)targetContentOffsetForViewSizeTransitionContext:(id)a3;
- (CGPoint)transitionEffectiveContentOrigin;
- (CGPoint)transitionEndContentOffset;
- (CGPoint)transitionStartContentOffset;
- (CGRect)_frameByAdjustingOffScreenEnteringFrame:(CGRect)a3 forRowAtVisualIndexPath:(PUSimpleIndexPath)a4 transitionSectionInfo:(id)a5 toOrFromGridLayout:(id)a6 isAppearing:(BOOL)a7;
- (CGRect)frameForItemAtGridCoordinates:(PUGridCoordinates)a3 inTransitionSection:(int64_t)a4;
- (CGRect)frameForItemAtGridCoordinates:(PUGridCoordinates)a3 inVisualSection:(int64_t)a4;
- (CGRect)frameForItemAtGridCoordinates:(PUGridCoordinates)a3 inVisualSection:(int64_t)a4 indexPath:(id)a5;
- (CGRect)frameForSectionHeaderAtVisualSection:(int64_t)a3;
- (CGRect)frameForSectionHeaderOfRealItem:(id)a3;
- (CGSize)collectionViewContentSize;
- (CGSize)interItemSpacing;
- (CGSize)itemSize;
- (CGSize)layoutItemSizeForColumn:(int64_t)a3;
- (CGSize)transitionActualContentSize;
- (NSString)description;
- (PUCollectionViewLayoutTransitioningDelegate)transitioningDelegate;
- (PUGridCoordinates)_targetTransitionGridCoordsForGridCoords:(PUGridCoordinates)a3 atVisualSection:(int64_t)a4 transitionSectionInfo:(id)a5;
- (PUGridCoordinates)gridCoordinatesInSectionForItemAtVisualIndex:(int64_t)a3;
- (PUGridCoordinates)gridCoordinatesInTransitionSectionForItemAtIndexPath:(id)a3;
- (PUGridCoordinates)gridCoordinatesInVisualSectionForItemAtIndexPath:(id)a3;
- (PUGridCoordinates)targetTransitionGridCoordsForGridCoords:(PUGridCoordinates)a3 atVisualSection:(int64_t)a4 outTransitionSection:(int64_t *)a5;
- (PUGridCoordinates)visualGridCoordsForTransitionGridCoords:(PUGridCoordinates)a3 atTransitionSection:(int64_t)a4 outVisualSection:(int64_t *)a5;
- (PUSectionedGridLayout)init;
- (PUSectionedGridLayoutDelegate)delegate;
- (PUSimpleIndexPath)_itemVisualIndexPathAtPoint:(CGPoint)a3;
- (PUSimpleIndexPath)_visualIndexPathForTransitionCoordinates:(PUGridCoordinates)a3 inTransitionSection:(int64_t)a4;
- (PUSimpleIndexPath)_visualRowPathForTransitionRowIndex:(int64_t)a3 transitionSectionInfo:(id)a4;
- (UIEdgeInsets)_finalContentInset;
- (UIEdgeInsets)sectionContentInset;
- (_NSRange)visualRowsInRect:(CGRect)a3 inVisualSection:(int64_t)a4 totalVisualSectionRows:(int64_t *)a5;
- (_NSRange)visualSectionsInRect:(CGRect)a3;
- (double)_delegateAccessibilitySectionHeaderHeightForSection:(int64_t)a3;
- (double)_finalSectionHeaderHeightForSection:(int64_t)a3;
- (double)_heightOfSectionAtVisualIndex:(int64_t)a3;
- (double)_sectionHeaderHeightDeltaForSection:(int64_t)a3;
- (double)_sectionWidth;
- (double)_startYOfContentAtVisualSectionIndex:(int64_t)a3;
- (double)_startYOfContentAtVisualSectionIndexWithDynamicLayout:(int64_t)a3;
- (id)_animationForReusableView:(id)a3 toLayoutAttributes:(id)a4 type:(unint64_t)a5;
- (id)_gridTransitionLayout;
- (id)_layoutAttributesForItemAtVisualIndexPath:(PUSimpleIndexPath)a3 realIndexPath:(id)a4 isMainRealItem:(BOOL)a5;
- (id)_layoutAttributesForSupplementaryViewOfKind:(id)a3 forVisualSection:(int64_t)a4 supplementaryViewIndex:(int64_t)a5;
- (id)_realItemIndexPathClosestToPoint:(CGPoint)a3 inRect:(CGRect)a4 withTest:(id)a5;
- (id)_supplementaryViewKinds;
- (id)assetIndexPathsForElementsInRect:(CGRect)a3;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)itemIndexPathAtCenterOfRect:(CGRect)a3;
- (id)itemIndexPathAtPoint:(CGPoint)a3;
- (id)itemIndexPathClosestToPoint:(CGPoint)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)mainRealIndexPathAtGridCoordinates:(PUGridCoordinates)a3 inTransitionSection:(int64_t)a4;
- (id)maxItemIndexPathAbovePoint:(CGPoint)a3;
- (id)maxItemIndexPathLeftOfPoint:(CGPoint)a3;
- (id)prepareForViewTransitionToSize:(CGSize)a3;
- (id)pu_debugRows;
- (id)pu_layoutAttributesForElementClosestToPoint:(CGPoint)a3 inRect:(CGRect)a4 passingTest:(id)a5;
- (id)realSectionsForVisualSection:(int64_t)a3 forSectioning:(id)a4;
- (id)supplementaryViewIndexPathForVisualSection:(int64_t)a3 supplementaryViewItemIndex:(int64_t)a4;
- (id)targetTransitionRealIndexPathForIndexPath:(id)a3;
- (id)transitionAnchorIndexPathForTransitionSection:(int64_t)a3;
- (id)transitionSectionsInRect:(CGRect)a3 toOrFromGridLayout:(id)a4;
- (int64_t)_nextVisualSectionForSupplementaryViewSection:(int64_t)a3 forward:(BOOL)a4;
- (int64_t)_visualSectionAtPoint:(CGPoint)a3;
- (int64_t)firstPreparedVisualSection;
- (int64_t)lastPreparedVisualSection;
- (int64_t)mainRealSectionForVisualSection:(int64_t)a3;
- (int64_t)maximumNumberOfItemsInVisualSection:(int64_t)a3 withNumberOfRealItems:(int64_t)a4 forSectioning:(id)a5;
- (int64_t)numberOfColumnsForWidth:(double)a3;
- (int64_t)numberOfContiguousRowsInTransitionSection:(int64_t)a3;
- (int64_t)numberOfItemsInRealSection:(int64_t)a3 forSectioning:(id)a4;
- (int64_t)numberOfRealItemsInRealSection:(int64_t)a3;
- (int64_t)numberOfRealItemsInVisualSection:(int64_t)a3;
- (int64_t)numberOfRealSectionsForSectioning:(id)a3;
- (int64_t)numberOfVisualSectionsForSectioning:(id)a3;
- (int64_t)visualIndexForItemAtGridCoordinates:(PUGridCoordinates)a3;
- (int64_t)visualSectionForHeaderIndexPath:(id)a3;
- (int64_t)visualSectionForRealSection:(int64_t)a3;
- (int64_t)visualSectionForSupplementaryViewIndexPath:(id)a3;
- (void)_adjustGridTransitionLayoutAttributes:(id)a3 toOrFromGridLayout:(id)a4 outTargetRowExists:(BOOL *)a5 isAppearing:(BOOL)a6;
- (void)_adjustItemLayoutAttributesForReordering:(id)a3;
- (void)_adjustRenderedStripLayoutAttributes:(id)a3 toOrFromGridLayout:(id)a4 isAppearing:(BOOL)a5;
- (void)_adjustSectionHeaderLayoutAttributes:(id)a3 toOrFromGridLayout:(id)a4 isAppearing:(BOOL)a5;
- (void)_clearLayoutCaches;
- (void)_clearRetainedCaches;
- (void)_clearSamplingCaches;
- (void)_clearSectioningCaches;
- (void)_didFinishLayoutTransitionAnimations:(BOOL)a3;
- (void)_ensureRect:(CGRect)a3 inData:(id)a4 outDeltaOriginY:(double *)a5;
- (void)_ensureVisualSection:(int64_t)a3 inData:(id)a4;
- (void)_enumerateVisualItemFramesInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)_invalidateLayoutWithContext:(id)a3;
- (void)_prepareForTransitionToOrFromGridLayout:(id)a3 isAppearing:(BOOL)a4;
- (void)_prepareLayoutIfNeeded;
- (void)_prepareSamplingDataIfNeeded;
- (void)_prepareSectioningDataIfNeeded;
- (void)adjustEffectiveContentOriginForTransitionEndContentOffset:(CGPoint)a3;
- (void)beginInsertingItemAtIndexPath:(id)a3;
- (void)beginReorderingItemAtIndexPath:(id)a3;
- (void)dealloc;
- (void)endInsertingItem;
- (void)endReordering;
- (void)enumerateItemIndexPathsForVisualSection:(int64_t)a3 inVisualItemRange:(_NSRange)a4 usingBlock:(id)a5;
- (void)enumerateRealSectionsForVisualSection:(int64_t)a3 usingBlock:(id)a4;
- (void)finalizeAnimatedBoundsChange;
- (void)finalizeCollectionViewUpdates;
- (void)finalizeLayoutTransition;
- (void)getVisualSectionIndex:(int64_t *)a3 visualItemRange:(_NSRange *)a4 forRenderStripAtIndexPath:(id)a5;
- (void)invalidateLayoutForMetricsChange;
- (void)invalidateLayoutForVerticalScroll;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareForAnimatedBoundsChange:(CGRect)a3;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareForTransitionFromLayout:(id)a3;
- (void)prepareForTransitionToLayout:(id)a3;
- (void)prepareLayout;
- (void)setCropAmount:(double)a3;
- (void)setCropType:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setDynamicLayoutEnabled:(BOOL)a3;
- (void)setGlobalBottomPadding:(double)a3;
- (void)setGlobalFooterHeight:(double)a3;
- (void)setGlobalTopPadding:(double)a3;
- (void)setHiddenItemIndexPaths:(id)a3;
- (void)setInterItemSpacing:(CGSize)a3;
- (void)setItemSize:(CGSize)a3;
- (void)setRenderedStripsElementKind:(id)a3;
- (void)setSectionBottomPadding:(double)a3;
- (void)setSectionContentInset:(UIEdgeInsets)a3;
- (void)setSectionHeaderElementKind:(id)a3;
- (void)setSectionHeadersEnabled:(BOOL)a3;
- (void)setSectionTopPadding:(double)a3;
- (void)setUsesAspectItems:(BOOL)a3;
- (void)updateReorderingTargetIndexPath:(id)a3;
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

- (void)beginInsertingItemAtIndexPath:(id)a3
{
  objc_storeStrong(&self->_reorderingInsertedIndexPath, a3);

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

- (void)updateReorderingTargetIndexPath:(id)a3
{
  v4 = a3;
  if (([v4 isEqual:self->_reorderingTargetIndexPath] & 1) == 0)
  {
    v5 = [(PUSectionedGridLayout *)self collectionView];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__PUSectionedGridLayout_updateReorderingTargetIndexPath___block_invoke;
    v6[3] = &unk_1E7B80C38;
    v6[4] = self;
    v7 = v4;
    [v5 performBatchUpdates:v6 completion:0];
  }
}

uint64_t __57__PUSectionedGridLayout_updateReorderingTargetIndexPath___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 536), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 invalidateLayout];
}

- (void)beginReorderingItemAtIndexPath:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_reorderingTargetIndexPath, a3);
  reorderingSourceIndexPath = self->_reorderingSourceIndexPath;
  self->_reorderingSourceIndexPath = v5;

  [(PUSectionedGridLayout *)self invalidateLayout];
}

- (void)_adjustItemLayoutAttributesForReordering:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_reorderingSourceIndexPath)
  {
    v16 = v4;
    v4 = [v4 representedElementCategory];
    v5 = v16;
    if (!v4)
    {
      v6 = [v16 indexPath];
      v7 = [(PUSectionedGridLayout *)self reorderedIndexPath:v6];
      if (([v7 isEqual:v6] & 1) == 0)
      {
        layoutSectioning = self->_layoutSectioning;
        v9 = v7;
        v10 = [v9 item];
        v11 = [v9 section];

        v12 = [(PULayoutSampledSectioning *)layoutSectioning visualIndexPathForRealIndexPath:v11 isMainItem:v10, 0];
        v14 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:v13];
        [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:v14 inVisualSection:v15, v12];
        [v16 setFrame:?];
      }

      if ([v6 isEqual:self->_reorderingSourceIndexPath])
      {
        [v16 setHidden:1];
      }

      if ([v6 isEqual:self->_reorderingInsertedIndexPath])
      {
        [v16 setAlpha:0.0];
      }

      v5 = v16;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (PUGridCoordinates)gridCoordinatesInTransitionSectionForItemAtIndexPath:(id)a3
{
  layoutSectioning = self->_layoutSectioning;
  v5 = a3;
  v6 = [v5 item];
  v7 = [v5 section];

  v8 = [(PULayoutSampledSectioning *)layoutSectioning visualIndexPathForRealIndexPath:v7 isMainItem:v6, 0];
  v10 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:v9];
  v12 = v11;
  transitionSectionInfosByVisualSection = self->_transitionSectionInfosByVisualSection;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
  v15 = [(NSDictionary *)transitionSectionInfosByVisualSection objectForKey:v14];

  if (v15)
  {
    v16 = [v15 visualSections];
    v17 = [v15 visualRowStartMarkers];
    v18 = v17;
    if (v16)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = [v17 objectAtIndex:{objc_msgSend(v16, "countOfIndexesInRange:", 0, v8)}];
      v10 += [v20 integerValue];
    }
  }

  v21 = v10;
  v22 = v12;
  result.column = v22;
  result.row = v21;
  return result;
}

- (PUGridCoordinates)gridCoordinatesInVisualSectionForItemAtIndexPath:(id)a3
{
  layoutSectioning = self->_layoutSectioning;
  v5 = a3;
  v6 = [v5 item];
  v7 = [v5 section];

  [(PULayoutSampledSectioning *)layoutSectioning visualIndexPathForRealIndexPath:v7 isMainItem:v6, 0];

  v9 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:v8];
  result.column = v10;
  result.row = v9;
  return result;
}

- (id)pu_layoutAttributesForElementClosestToPoint:(CGPoint)a3 inRect:(CGRect)a4 passingTest:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = a5;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __88__PUSectionedGridLayout_pu_layoutAttributesForElementClosestToPoint_inRect_passingTest___block_invoke;
  v20 = &unk_1E7B7E010;
  v21 = self;
  v22 = v12;
  v13 = v12;
  v14 = [(PUSectionedGridLayout *)self _realItemIndexPathClosestToPoint:&v17 inRect:v10 withTest:v9, x, y, width, height];
  v15 = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:v14, v17, v18, v19, v20, v21];

  return v15;
}

uint64_t __88__PUSectionedGridLayout_pu_layoutAttributesForElementClosestToPoint_inRect_passingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:a2];
  v5 = [*(a1 + 32) layoutAttributesForItemAtIndexPath:v4];
  v6 = (*(*(a1 + 40) + 16))();

  return v6;
}

- (id)_realItemIndexPathClosestToPoint:(CGPoint)a3 inRect:(CGRect)a4 withTest:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = a5;
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
  v14 = v12;
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

- (PUSimpleIndexPath)_visualIndexPathForTransitionCoordinates:(PUGridCoordinates)a3 inTransitionSection:(int64_t)a4
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3.column < 0)
  {
    goto LABEL_6;
  }

  row = a3.row;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if ((a3.row & 0x8000000000000000) == 0)
  {
    column = a3.column;
    if (a3.column < self->_columnsPerRow)
    {
      v13 = 0;
      v10 = [(PUSectionedGridLayout *)self visualGridCoordsForTransitionGridCoords:a3.row atTransitionSection:a3.column outVisualSection:a4, &v13];
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        NSLog(&cfstr_CouldNotFindVi.isa, row, column, a4);
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

- (id)mainRealIndexPathAtGridCoordinates:(PUGridCoordinates)a3 inTransitionSection:(int64_t)a4
{
  v5 = [(PUSectionedGridLayout *)self _visualIndexPathForTransitionCoordinates:a3.row inTransitionSection:a3.column, a4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealItemIndexPathForVisualIndexPath:v5, v6];
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:v8];
  }

  return v7;
}

- (id)targetTransitionRealIndexPathForIndexPath:(id)a3
{
  v5 = a3;
  v6 = [(PUSectionedGridLayout *)self _gridTransitionLayout];

  if (!v6)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:3351 description:@"Cannot be called if a grid transition is not ongoing."];
  }

  layoutSectioning = self->_layoutSectioning;
  v8 = v5;
  v9 = [v8 item];
  v10 = [v8 section];

  v11 = [(PULayoutSampledSectioning *)layoutSectioning visualIndexPathForRealIndexPath:v10 isMainItem:v9, 0];
  v13 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:v12];
  v15 = v14;
  transitionSectionInfosByVisualSection = self->_transitionSectionInfosByVisualSection;
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
  v18 = [(NSDictionary *)transitionSectionInfosByVisualSection objectForKey:v17];

  v19 = [(PUSectionedGridLayout *)self _targetTransitionGridCoordsForGridCoords:v13 atVisualSection:v15 transitionSectionInfo:v11, v18];
  v21 = v20;
  v22 = [(PUSectionedGridLayout *)self _gridTransitionLayout];
  v23 = [v22 mainRealIndexPathAtGridCoordinates:v19 inTransitionSection:{v21, objc_msgSend(v18, "transitionSection")}];

  return v23;
}

- (PUGridCoordinates)visualGridCoordsForTransitionGridCoords:(PUGridCoordinates)a3 atTransitionSection:(int64_t)a4 outVisualSection:(int64_t *)a5
{
  column = a3.column;
  row = a3.row;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v10 = [(NSDictionary *)self->_transitionSectionInfosByTransitionSection objectForKey:v9];
  v11 = [(PUSectionedGridLayout *)self _visualRowPathForTransitionRowIndex:row transitionSectionInfo:v10];
  v13 = v12;
  if (a5)
  {
    *a5 = v11;
  }

  v14 = v13;
  v15 = column;
  result.column = v15;
  result.row = v14;
  return result;
}

- (PUGridCoordinates)targetTransitionGridCoordsForGridCoords:(PUGridCoordinates)a3 atVisualSection:(int64_t)a4 outTransitionSection:(int64_t *)a5
{
  column = a3.column;
  row = a3.row;
  transitionSectionInfosByVisualSection = self->_transitionSectionInfosByVisualSection;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v12 = [(NSDictionary *)transitionSectionInfosByVisualSection objectForKey:v11];

  v13 = [(PUSectionedGridLayout *)self _targetTransitionGridCoordsForGridCoords:row atVisualSection:column transitionSectionInfo:a4, v12];
  v15 = v14;
  if (a5)
  {
    *a5 = [v12 transitionSection];
  }

  v16 = v13;
  v17 = v15;
  result.column = v17;
  result.row = v16;
  return result;
}

- (id)transitionAnchorIndexPathForTransitionSection:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSDictionary *)self->_transitionSectionInfosByTransitionSection objectForKey:v4];
  v6 = [v5 anchorRealPath];

  return v6;
}

- (id)transitionSectionsInRect:(CGRect)a3 toOrFromGridLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PUSectionedGridLayout *)self visualSectionsInRect:x, y, width, height];
  v12 = v11;
  v13 = [(PUSectionedGridLayout *)self _visualSectionsMatchTransitionSectionsToOrFromLayout:v9];
  v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v15 = v14;
  if (v13)
  {
    [v14 addIndexesInRange:{v10, v12}];
  }

  else if (v10 < v10 + v12)
  {
    do
    {
      v16 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealSectionForVisualSection:v10];
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [v9 visualSectionForRealSection:v16];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v15 addIndex:v17];
        }
      }

      ++v10;
      --v12;
    }

    while (v12);
  }

  return v15;
}

- (id)maxItemIndexPathLeftOfPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3010000000;
  v27 = &unk_1B3DBEC63;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v28 = vnegq_f64(v6);
  v7 = [(PUSectionedGridLayout *)self collectionView];
  [v7 bounds];

  [(PUSectionedGridLayout *)self interItemSpacing];
  v8 = [(PUSectionedGridLayout *)self collectionView];
  [v8 bounds];

  [(PUSectionedGridLayout *)self interItemSpacing];
  v9 = [(PUSectionedGridLayout *)self collectionView];
  [v9 bounds];
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

- (id)maxItemIndexPathAbovePoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3010000000;
  v23 = &unk_1B3DBEC63;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v24 = vnegq_f64(v6);
  v7 = [(PUSectionedGridLayout *)self collectionView];
  [v7 bounds];
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

- (id)itemIndexPathClosestToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v6 = self->_contentSize.width * 0.5;

  return [(PUSectionedGridLayout *)self _realItemIndexPathClosestToPoint:0 inRect:x withTest:y, x - v6, y - v6];
}

- (id)itemIndexPathAtPoint:(CGPoint)a3
{
  v4 = [(PUSectionedGridLayout *)self _itemVisualIndexPathAtPoint:a3.x, a3.y];
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

- (id)itemIndexPathAtCenterOfRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];

  return [(PUSectionedGridLayout *)self _realItemIndexPathClosestToPoint:0 inRect:x + width * 0.5 withTest:y + height * 0.5, x, y, width, height];
}

- (int64_t)numberOfRealItemsInVisualSection:(int64_t)a3
{
  if (self->_totalVisualSections <= a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:3153 description:{@"Requested count for visual section (%ld) beyond bounds (%ld).", a3, self->_totalVisualSections}];
  }

  layoutSectioning = self->_layoutSectioning;

  return [(PULayoutSampledSectioning *)layoutSectioning numberOfRealItemsInVisualSection:a3];
}

- (int64_t)numberOfRealItemsInRealSection:(int64_t)a3
{
  if (self->_totalRealSections <= a3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:3147 description:{@"Requested count for real section (%ld) beyond bounds (%ld).", a3, self->_totalRealSections}];
  }

  return self->_realSectionItemCounts[a3];
}

- (void)enumerateRealSectionsForVisualSection:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  [(PULayoutSampledSectioning *)self->_layoutSectioning enumerateRealSectionsForVisualSection:a3 usingBlock:v6];
}

- (int64_t)mainRealSectionForVisualSection:(int64_t)a3
{
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  layoutSectioning = self->_layoutSectioning;

  return [(PULayoutSampledSectioning *)layoutSectioning mainRealSectionForVisualSection:a3];
}

- (int64_t)visualSectionForRealSection:(int64_t)a3
{
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  layoutSectioning = self->_layoutSectioning;

  return [(PULayoutSampledSectioning *)layoutSectioning visualSectionForRealSection:a3];
}

- (void)getVisualSectionIndex:(int64_t *)a3 visualItemRange:(_NSRange *)a4 forRenderStripAtIndexPath:(id)a5
{
  v13 = a5;
  v8 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:?];
  *a3 = v8;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    columnsPerRow = self->_columnsPerRow;
    v12 = [(PUSectionedGridLayout *)self numberOfVisualItemsInVisualSection:?];
    v9 = -[PUSectionedGridLayout _firstVisualItemIndexForRenderedStripIndex:](self, "_firstVisualItemIndexForRenderedStripIndex:", [v13 item]);
    v10 = v12 - v9;
    if (columnsPerRow < (v12 - v9))
    {
      v10 = columnsPerRow;
    }
  }

  a4->location = v9;
  a4->length = v10;
}

- (void)enumerateItemIndexPathsForVisualSection:(int64_t)a3 inVisualItemRange:(_NSRange)a4 usingBlock:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  [(PUSectionedGridLayout *)self _prepareSamplingDataIfNeeded];
  [(PULayoutSampledSectioning *)self->_layoutSectioning enumerateRealMainItemIndexPathsForVisualSection:a3 inVisualItemRange:location usingBlock:length, v9];
}

- (void)setRenderedStripsElementKind:(id)a3
{
  v5 = a3;
  if (self->_renderedStripsElementKind != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_renderedStripsElementKind, a3);
    self->_usesRenderedStrips = self->_renderedStripsElementKind != 0;
    [(PUSectionedGridLayout *)self _invalidateSupplementaryViewKinds];
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
    v5 = v6;
  }
}

- (int64_t)visualSectionForHeaderIndexPath:(id)a3
{
  v4 = a3;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v5 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:v4];

  return v5;
}

- (int64_t)_nextVisualSectionForSupplementaryViewSection:(int64_t)a3 forward:(BOOL)a4
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = a4 ? a3 + 1 : a3 - 1;
  if (result < 0 || result >= self->_totalVisualSections)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (int64_t)numberOfItemsInRealSection:(int64_t)a3 forSectioning:(id)a4
{
  if (!self->_sectioningDataIsValid)
  {
    [(PUSectionedGridLayout *)self _prepareSectioningDataIfNeeded:a3];
  }

  return self->_realSectionItemCounts[a3];
}

- (id)realSectionsForVisualSection:(int64_t)a3 forSectioning:(id)a4
{
  v6 = a4;
  if (!self->_sectioningDataIsValid)
  {
    [(PUSectionedGridLayout *)self _prepareSectioningDataIfNeeded];
  }

  if (self->_delegateSupportsGroupedSections)
  {
    v7 = [(PUSectionedGridLayout *)self delegate];
    v8 = [v7 sectionedGridLayout:self sectionsForVisualSection:a3];
  }

  else
  {
    v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  }

  return v8;
}

- (int64_t)numberOfRealSectionsForSectioning:(id)a3
{
  if (!self->_sectioningDataIsValid)
  {
    [(PUSectionedGridLayout *)self _prepareSectioningDataIfNeeded];
  }

  return self->_totalRealSections;
}

- (int64_t)maximumNumberOfItemsInVisualSection:(int64_t)a3 withNumberOfRealItems:(int64_t)a4 forSectioning:(id)a5
{
  v8 = a5;
  if (!self->_samplingDataIsValid)
  {
    [(PUSectionedGridLayout *)self _prepareSamplingDataIfNeeded];
  }

  columnsPerRow = self->_columnsPerRow;
  if (columnsPerRow >= 1 && (visualSectionMaxRows = self->_visualSectionMaxRows) != 0 && (v11 = visualSectionMaxRows[a3], v11 >= 1))
  {
    v12 = a4 / columnsPerRow;
    if ((a4 / columnsPerRow) <= 1)
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

- (int64_t)numberOfVisualSectionsForSectioning:(id)a3
{
  if (!self->_sectioningDataIsValid)
  {
    [(PUSectionedGridLayout *)self _prepareSectioningDataIfNeeded];
  }

  return self->_totalVisualSections;
}

- (void)_ensureVisualSection:(int64_t)a3 inData:(id)a4
{
  v23 = a4;
  v6 = [v23 headerLayoutAttributes];
  v7 = [v6 count];

  if (!v7)
  {
    [(PUSectionedGridLayout *)self _ensureUpdatedLayoutData:v23 isForward:1 outDeltaOriginY:0];
  }

  v8 = [(PUSectionedGridLayout *)self supplementaryViewIndexPathForVisualSection:a3 supplementaryViewItemIndex:0];
  v9 = [v23 headerLayoutAttributes];
  v10 = [v9 firstObject];
  v11 = [v10 indexPath];

  while ([v8 compare:v11] == -1)
  {
    v12 = [(PUSectionedGridLayout *)self _ensureUpdatedLayoutData:v23 isForward:0 outDeltaOriginY:0];
    v13 = [v23 headerLayoutAttributes];
    v14 = [v13 firstObject];
    v15 = [v14 indexPath];

    v11 = v15;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  v15 = v11;
LABEL_8:
  v16 = [v23 headerLayoutAttributes];
  v17 = [v16 lastObject];
  v18 = [v17 indexPath];

  while ([v8 compare:v18] == 1)
  {
    v19 = [(PUSectionedGridLayout *)self _ensureUpdatedLayoutData:v23 isForward:1 outDeltaOriginY:0];
    v20 = [v23 headerLayoutAttributes];
    v21 = [v20 lastObject];
    v22 = [v21 indexPath];

    v18 = v22;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  v22 = v18;
LABEL_13:
}

- (void)_ensureRect:(CGRect)a3 inData:(id)a4 outDeltaOriginY:(double *)a5
{
  width = a3.size.width;
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = v9;
  v11 = -y;
  if (y >= 0.0)
  {
    v11 = 0.0;
  }

  v51 = 0.0;
  [v9 currentContentBounds];
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
  v36 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
  v37 = [v36 lastObject];

  if (v37)
  {
    v38 = [v37 indexPath];
    v39 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:v38];
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

  if (a5)
  {
    *a5 = v48 + v51;
  }
}

- (BOOL)_ensureUpdatedLayoutData:(id)a3 isForward:(BOOL)a4 outDeltaOriginY:(double *)a5
{
  v5 = a4;
  v95 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!self->_dynamicLayoutEnabled)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v80 = v79 = v8;
    [v80 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:2820 description:@"This should be called only when dynamic layout is enabled."];

    v8 = v79;
  }

  v89 = [(PUSectionedGridLayout *)self collectionView];
  [v89 bounds];
  x = v9;
  y = v11;
  v85 = v13;
  v14 = [v8 numberOfPagesToCache];
  [v8 currentContentBounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  height = v21;
  v23 = [v8 headerLayoutAttributes];
  *&r2[2] = [v8 headerLayoutAttributesByVisualSection];
  if (v5)
  {
    [v23 lastObject];
  }

  else
  {
    [v23 firstObject];
  }
  v24 = ;
  v25 = [v24 indexPath];
  v26 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:v25];
  [v24 frame];
  r2[0] = v27;
  rect = v28;
  v30 = v29;
  v32 = v31;
  if (v24)
  {
    v33 = [(PUSectionedGridLayout *)self _nextVisualSectionForSupplementaryViewSection:v26 forward:v5];
    y = v18;
    x = v16;
  }

  else
  {
    if ([v23 count] || objc_msgSend(*&r2[2], "count") || (v96.origin.x = v16, v96.origin.y = v18, v96.size.width = v20, v96.size.height = height, !CGRectIsEmpty(v96)))
    {
      v78 = [MEMORY[0x1E696AAA8] currentHandler];
      [v78 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:2843 description:0];
    }

    v33 = [(PUSectionedGridLayout *)self _visualSectionAtPoint:x, y];
    height = 0.0;
    v20 = 0.0;
  }

  *&r2[1] = v23;
  if (v33 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v84 = v8;
    [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    v39 = v38 = v14;
    v40 = [v23 firstObject];
    v41 = [v40 indexPath];
    v83 = v39;
    v81 = [v41 isEqual:v39];

    v42 = v85 * v38;
    v43 = x;
    v44 = y;
    v45 = v20;
    v46 = height;
    if (v5)
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

      v8 = v84;
      while ([(PUSectionedGridLayout *)self shouldHideVisualSection:v33])
      {
        v33 = [(PUSectionedGridLayout *)self _nextVisualSectionForSupplementaryViewSection:v33 forward:v5];
        if (v33 == 0x7FFFFFFFFFFFFFFFLL)
        {

          v37 = v89;
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
        if (v5)
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

      v60 = [(PUSectionedGridLayout *)self sectionHeaderElementKind];
      v86 = v59;
      v36 = [(UICollectionViewLayoutAttributes *)PUSectionedGridLayoutAttributes layoutAttributesForSupplementaryViewOfKind:v60 withIndexPath:v59];

      [v36 setFrame:{r2[0], v53, width, v50}];
      v61 = 0;
      if (v5)
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
      v33 = [(PUSectionedGridLayout *)self _nextVisualSectionForSupplementaryViewSection:v33 forward:v5];
      v48 = 0;
      v34 = 1;
      v24 = v36;
      v64 = v86;
      v25 = v86;
      v32 = v50;
      v30 = width;
      v47 = v82;
      if (v33 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_41;
      }
    }

    v64 = v25;
    v36 = v24;
LABEL_41:
    v25 = v64;
    v66 = [*&r2[1] firstObject];
    v67 = [v66 indexPath];
    v68 = [v67 isEqual:v83];

    globalTopPadding = self->_globalTopPadding;
    [(PUSectionedGridLayout *)self globalHeaderHeight];
    v71 = globalTopPadding + v70;
    sectionTopPadding = 0.0;
    if (y <= v71)
    {
      v8 = v84;
      if (v81 & 1 | ((v68 & 1) == 0))
      {
        sectionTopPadding = v71 - y;
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
      v71 = y;
    }

    v8 = v84;
LABEL_56:
    [v8 setCurrentContentBounds:{x, v71, v20, height}];

    goto LABEL_14;
  }

  v34 = 0;
  sectionTopPadding = 0.0;
  v36 = v24;
LABEL_14:
  v37 = v89;
  if (a5)
  {
    *a5 = sectionTopPadding;
  }

  v24 = v36;
LABEL_39:

  return v34 & 1;
}

- (double)_sectionWidth
{
  v3 = [(PUSectionedGridLayout *)self collectionView];
  [v3 bounds];
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

- (int64_t)numberOfColumnsForWidth:(double)a3
{
  [(PUSectionedGridLayout *)self interItemSpacing];
  v6 = v5;
  [(PUSectionedGridLayout *)self itemSize];
  v8 = v7;
  v9 = [(PUSectionedGridLayout *)self cropType];
  if (v8 <= 0.0)
  {
    return 0;
  }

  if (v9 == 3)
  {
    return llround((v6 + a3) / (v6 + v8) + 0.00000999999975);
  }

  if (v9 != 2)
  {
    if (v9 != 1)
    {
      return vcvtmd_s64_f64((v6 + a3) / (v6 + v8) + 0.00000999999975);
    }

    [(PUSectionedGridLayout *)self cropAmount];
    return ((a3 + v10 * -2.0) / (v8 - v10));
  }

  [(PUSectionedGridLayout *)self cropAmount];
  if (a3 <= 0.0)
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
    if (v14 <= a3)
    {
      v14 = v6 + v14;
      ++result;
    }
  }

  while (v14 < a3);
  return result;
}

- (CGSize)layoutItemSizeForColumn:(int64_t)a3
{
  [(PUSectionedGridLayout *)self itemSize];
  v6 = v5;
  v8 = v7;
  if (a3 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = -a3;
  }

  if ([(PUSectionedGridLayout *)self cropType]== 1)
  {
    [(PUSectionedGridLayout *)self _sectionWidth];
    v10 = [(PUSectionedGridLayout *)self numberOfColumnsForWidth:?];
    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_10:
    if (v9 != v10 - 1)
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
    if (!a3 || (v9 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if ([(PUSectionedGridLayout *)self cropType]== 3)
  {
    v12 = v6 * a3;
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
      v12 = v6 * a3;
    }

    v6 = round(*&PUMainScreenScale_screenScale * (v6 * (a3 + 1))) / *&PUMainScreenScale_screenScale - round(*&PUMainScreenScale_screenScale * v12) / *&PUMainScreenScale_screenScale;
  }

LABEL_16:
  v13 = v6;
  v14 = v8;
  result.height = v14;
  result.width = v13;
  return result;
}

- (_NSRange)visualSectionsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_dynamicLayoutEnabled)
  {
    v37 = 0.0;
    [(PUSectionedGridLayout *)self _ensureRect:self->_layoutData inData:&v37 outDeltaOriginY:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    y = y + v37;
    v8 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
    v9 = [v8 count];

    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    if (CGRectGetMinY(v39) == 0.0 && (-[PUSectionedGridLayoutData headerLayoutAttributes](self->_layoutData, "headerLayoutAttributes"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v11))
    {
      v12 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
      v13 = [v12 objectAtIndexedSubscript:0];
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
        v19 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
        v13 = [v19 objectAtIndexedSubscript:v18];

        v20 = v18 + 1;
        v21 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
        v22 = [v21 count];

        if (v18 + 1 == v22)
        {
          break;
        }

        v23 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
        v12 = [v23 objectAtIndexedSubscript:v18 + 1];

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
          [v12 frame];
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
      v26 = [v13 indexPath];
      v14 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:v26];

      goto LABEL_17;
    }

LABEL_16:
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_17;
  }

  v14 = [(PUSectionedGridLayout *)self _visualSectionAtPoint:a3.origin.x, a3.origin.y];
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
        v29 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributesByVisualSection];
        v30 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
        v31 = [v29 objectForKey:v30];

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

- (int64_t)_visualSectionAtPoint:(CGPoint)a3
{
  totalVisualSections = self->_totalVisualSections;
  v4 = totalVisualSections - 1;
  if (totalVisualSections < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  y = a3.y;
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

- (double)_heightOfSectionAtVisualIndex:(int64_t)a3
{
  [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:?];
  v6 = v5;
  [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:a3 + 1];
  v8 = v7 - v6;
  [(PUSectionedGridLayout *)self _sectionHeaderHeightDeltaForSection:a3];
  return v8 + v9;
}

- (double)_startYOfContentAtVisualSectionIndexWithDynamicLayout:(int64_t)a3
{
  v3 = 0.0;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  if (self->_dynamicLayoutEnabled && !self->_isPreparingLayout)
  {
    [(PUSectionedGridLayout *)self _ensureVisualSection:a3 inData:self->_layoutData];
    v7 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributesByVisualSection];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [v7 objectForKey:v8];

    [v9 frame];
    v11 = v10;
    [(PUSectionedGridLayout *)self _delegateAccessibilitySectionHeaderHeightForSection:a3];
    v3 = v12 + v11 + self->_sectionContentInset.top;

    return v3;
  }

  [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:?];
  return result;
}

- (double)_startYOfContentAtVisualSectionIndex:(int64_t)a3
{
  [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:?];
  v6 = v5 + self->_sectionTopPadding;
  [(PUSectionedGridLayout *)self _finalSectionHeaderHeightForSection:a3];
  return v6 + v7 + self->_sectionContentInset.top;
}

- (CGRect)frameForSectionHeaderAtVisualSection:(int64_t)a3
{
  [(PUSectionedGridLayout *)self _startYOfVisualSectionAtIndex:?];
  v6 = v5 + self->_sectionTopPadding;
  [(PUSectionedGridLayout *)self _finalSectionHeaderHeightForSection:a3];
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

- (CGRect)frameForSectionHeaderOfRealItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    -[PUSectionedGridLayout frameForSectionHeaderAtVisualSection:](self, "frameForSectionHeaderAtVisualSection:", -[PULayoutSampledSectioning visualIndexPathForRealIndexPath:isMainItem:](self->_layoutSectioning, "visualIndexPathForRealIndexPath:isMainItem:", [v4 section], objc_msgSend(v4, "item"), 0));
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

- (CGRect)frameForItemAtGridCoordinates:(PUGridCoordinates)a3 inTransitionSection:(int64_t)a4
{
  v11 = 0;
  v5 = [(PUSectionedGridLayout *)self visualGridCoordsForTransitionGridCoords:a3.row atTransitionSection:a3.column outVisualSection:a4, &v11];
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

- (PUSimpleIndexPath)_visualRowPathForTransitionRowIndex:(int64_t)a3 transitionSectionInfo:(id)a4
{
  v5 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v25 = &unk_1B3DBEC63;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v26 = vnegq_f64(v6);
  v7 = [v5 visualSections];
  v8 = [v5 visualRowStartMarkers];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PUSectionedGridLayout__visualRowPathForTransitionRowIndex_transitionSectionInfo___block_invoke;
  v15[3] = &unk_1E7B7DF70;
  v9 = v8;
  v16 = v9;
  v18 = v21;
  v20 = a3;
  v10 = v7;
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

- (int64_t)numberOfContiguousRowsInTransitionSection:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSDictionary *)self->_transitionSectionInfosByTransitionSection objectForKey:v4];
  v6 = [v5 contiguousRows];

  return v6;
}

- (CGRect)frameForItemAtGridCoordinates:(PUGridCoordinates)a3 inVisualSection:(int64_t)a4 indexPath:(id)a5
{
  column = a3.column;
  row = a3.row;
  v9 = a5;
  if (self->_dynamicLayoutEnabled)
  {
    [(PUSectionedGridLayout *)self _startYOfContentAtVisualSectionIndexWithDynamicLayout:a4];
  }

  else
  {
    [(PUSectionedGridLayout *)self _startYOfContentAtVisualSectionIndex:a4];
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
    v24 = [(PUSectionedGridLayout *)self delegate];
    [v24 sectionedGridLayout:self aspectRatioForItemAtIndexPath:v9];
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

- (CGRect)frameForItemAtGridCoordinates:(PUGridCoordinates)a3 inVisualSection:(int64_t)a4
{
  [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:a3.row inVisualSection:a3.column indexPath:a4, 0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (PUSimpleIndexPath)_itemVisualIndexPathAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)_enumerateVisualItemFramesInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31 = a4;
  v9 = [(PUSectionedGridLayout *)self visualSectionsInRect:x, y, width, height];
  v30 = v9 + v10;
  if (v9 < v9 + v10)
  {
    v11 = v9;
    do
    {
      if (![(PUSectionedGridLayout *)self shouldHideVisualSection:v11])
      {
        v12 = [(PUSectionedGridLayout *)self visualRowsInRect:v11 inVisualSection:0 totalVisualSectionRows:x, y, width, height];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v12;
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
              v24 = [(PUSectionedGridLayout *)self collectionView];
              v25 = [v24 _shouldReverseLayoutDirection];

              if (v25)
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
                v31[2](v31, v11, v18, v26, v27, v28, v29);
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

- (int64_t)visualIndexForItemAtGridCoordinates:(PUGridCoordinates)a3
{
  column = a3.column;
  row = a3.row;
  v6 = [(PUSectionedGridLayout *)self collectionView];
  v7 = [v6 _shouldReverseLayoutDirection];

  columnsPerRow = self->_columnsPerRow;
  v9 = columnsPerRow + ~column;
  if (!v7)
  {
    v9 = column;
  }

  return v9 + columnsPerRow * row;
}

- (PUGridCoordinates)gridCoordinatesInSectionForItemAtVisualIndex:(int64_t)a3
{
  v5 = [(PUSectionedGridLayout *)self collectionView];
  v6 = [v5 _shouldReverseLayoutDirection];

  columnsPerRow = self->_columnsPerRow;
  v8 = a3 / columnsPerRow;
  v9 = a3 % columnsPerRow;
  v10 = columnsPerRow + ~(a3 % columnsPerRow);
  if (v6)
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

- (_NSRange)visualRowsInRect:(CGRect)a3 inVisualSection:(int64_t)a4 totalVisualSectionRows:(int64_t *)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  if (self->_dynamicLayoutEnabled && (v25 = 0.0, [(PUSectionedGridLayout *)self _ensureRect:self->_layoutData inData:&v25 outDeltaOriginY:x, y, width, height], y = y + v25, self->_dynamicLayoutEnabled))
  {
    [(PUSectionedGridLayout *)self _startYOfContentAtVisualSectionIndexWithDynamicLayout:a4];
  }

  else
  {
    [(PUSectionedGridLayout *)self _startYOfContentAtVisualSectionIndex:a4];
  }

  v13 = v12;
  v14 = self->_itemSize.height + self->_interItemSpacing.height;
  v15 = [(PUSectionedGridLayout *)self numberOfVisualItemsInVisualSection:a4];
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

  if (a5)
  {
    *a5 = v18;
  }

  result.length = v24;
  result.location = v22;
  return result;
}

- (double)_sectionHeaderHeightDeltaForSection:(int64_t)a3
{
  result = 0.0;
  if (self->_dynamicLayoutEnabled)
  {
    [(PUSectionedGridLayout *)self _finalSectionHeaderHeightForSection:0.0];
    v7 = v6;
    [(PUSectionedGridLayout *)self _delegateAccessibilitySectionHeaderHeightForSection:a3];
    if (v8 < v7)
    {
      v8 = v7;
    }

    return v8 - v7;
  }

  return result;
}

- (double)_delegateAccessibilitySectionHeaderHeightForSection:(int64_t)a3
{
  v5 = 0.0;
  if (self->_delegateSupportsSectionHeaderHeightForVisualSection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sectionedGridLayout:self sectionHeaderHeightForVisualSection:a3];
    v5 = v7;
  }

  if (self->_delegateSupportsAccessibilitySectionHeaderHeightForVisualSection && [(PUSectionedGridLayout *)self _hasAccessibilityLargeText])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    axLargeTextSectionHeaderHeightByVisualSection = self->_axLargeTextSectionHeaderHeightByVisualSection;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v11 = [(NSMutableDictionary *)axLargeTextSectionHeaderHeightByVisualSection objectForKey:v10];

    if (v11)
    {
      [v11 floatValue];
      v13 = v12;
    }

    else
    {
      v14 = objc_loadWeakRetained(&self->_delegate);
      [v14 sectionedGridLayout:self accessibilitySectionHeaderHeightForVisualSection:a3];
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

- (double)_finalSectionHeaderHeightForSection:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || !self->_sectionHeadersEnabled || !self->_delegateSupportsSectionHeaderHeightForVisualSection)
  {
    return 0.0;
  }

  if ([(PUSectionedGridLayout *)self _hasAccessibilityLargeText]&& !self->_dynamicLayoutEnabled)
  {

    [(PUSectionedGridLayout *)self _delegateAccessibilitySectionHeaderHeightForSection:a3];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sectionedGridLayout:self sectionHeaderHeightForVisualSection:a3];
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

- (void)setUsesAspectItems:(BOOL)a3
{
  if (self->_usesAspectItems != a3)
  {
    self->_usesAspectItems = a3;
    [(PUSectionedGridLayout *)self invalidateLayout];
  }
}

- (void)setHiddenItemIndexPaths:(id)a3
{
  v5 = a3;
  if (self->_hiddenItemIndexPaths != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_hiddenItemIndexPaths, a3);
    [(PUSectionedGridLayout *)self invalidateLayout];
    v5 = v6;
  }
}

- (void)setCropAmount:(double)a3
{
  if (self->_cropAmount != a3)
  {
    self->_cropAmount = a3;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setCropType:(int64_t)a3
{
  if (self->_cropType != a3)
  {
    self->_cropType = a3;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setSectionHeaderElementKind:(id)a3
{
  v5 = a3;
  if (self->_sectionHeaderElementKind != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_sectionHeaderElementKind, a3);
    [(PUSectionedGridLayout *)self _invalidateSupplementaryViewKinds];
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
    v5 = v6;
  }
}

- (void)setGlobalFooterHeight:(double)a3
{
  if (self->_globalFooterHeight != a3)
  {
    self->_globalFooterHeight = a3;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setGlobalBottomPadding:(double)a3
{
  if (self->_globalBottomPadding != a3)
  {
    self->_globalBottomPadding = a3;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setGlobalTopPadding:(double)a3
{
  if (self->_globalTopPadding != a3)
  {
    self->_globalTopPadding = a3;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setDynamicLayoutEnabled:(BOOL)a3
{
  if (self->_dynamicLayoutEnabled != a3)
  {
    self->_dynamicLayoutEnabled = a3;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setSectionHeadersEnabled:(BOOL)a3
{
  if (self->_sectionHeadersEnabled != a3)
  {
    self->_sectionHeadersEnabled = a3;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setSectionContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_sectionContentInset.top), vceqq_f64(v4, *&self->_sectionContentInset.bottom)))) & 1) == 0)
  {
    self->_sectionContentInset = a3;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setSectionBottomPadding:(double)a3
{
  if (self->_sectionBottomPadding != a3)
  {
    self->_sectionBottomPadding = a3;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setSectionTopPadding:(double)a3
{
  if (self->_sectionTopPadding != a3)
  {
    self->_sectionTopPadding = a3;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setItemSize:(CGSize)a3
{
  if (a3.width > 0.0 && a3.height > 0.0 && (a3.width != self->_itemSize.width || a3.height != self->_itemSize.height))
  {
    self->_itemSize = a3;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setInterItemSpacing:(CGSize)a3
{
  if (a3.width != self->_interItemSpacing.width || a3.height != self->_interItemSpacing.height)
  {
    self->_interItemSpacing = a3;
    [(PUSectionedGridLayout *)self invalidateLayoutForMetricsChange];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

    v5 = [(PUSectionedGridLayout *)self invalidateLayout];
    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = PUSectionedGridLayout;
  v3 = [(PUSectionedGridLayout *)&v7 description];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v3 stringByAppendingFormat:@" delegate: %@", WeakRetained];

  return v5;
}

- (CATransform3D)_transformToConvertRect:(SEL)a3 intoRect:(CGRect)a4 referenceCenter:(CGRect)a5
{
  v7 = a5.size.width / a4.size.width;
  v8 = a5.size.height / a4.size.height;
  v9 = a4.origin.x + a4.size.width * 0.5 - -(v35 - (a4.origin.x + a4.size.width * 0.5) - (v35 - (a4.origin.x + a4.size.width * 0.5)) * (a5.size.width / a4.size.width));
  v10 = a4.origin.y + a4.size.height * 0.5 - -(v36 - (a4.origin.y + a4.size.height * 0.5) - (v36 - (a4.origin.y + a4.size.height * 0.5)) * (a5.size.height / a4.size.height));
  v11 = a5.origin.x + a5.size.width * 0.5;
  v12 = MEMORY[0x1E69792E8];
  v13 = *(MEMORY[0x1E69792E8] + 64);
  v14 = *(MEMORY[0x1E69792E8] + 80);
  *&retstr->m31 = v13;
  *&retstr->m33 = v14;
  v15 = a5.size.height * 0.5;
  v16 = v12[6];
  v17 = v12[7];
  *&retstr->m41 = v16;
  *&retstr->m43 = v17;
  v18 = *v12;
  v19 = v12[1];
  *&retstr->m11 = *v12;
  *&retstr->m13 = v19;
  v20 = a5.origin.y + v15;
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

- (void)adjustEffectiveContentOriginForTransitionEndContentOffset:(CGPoint)a3
{
  p_transitionEndContentOffset = &self->_transitionEndContentOffset;
  self->_transitionEndContentOffset = a3;
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

- (BOOL)_visualSectionsMatchTransitionSectionsToOrFromLayout:(id)a3
{
  v4 = a3;
  v5 = [(PUSectionedGridLayout *)self numberOfVisualSections];
  v6 = [v4 numberOfVisualSections];

  return v5 <= v6;
}

- (void)_adjustRenderedStripLayoutAttributes:(id)a3 toOrFromGridLayout:(id)a4 isAppearing:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 indexPath];
  v11 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:v10];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v11;
    v13 = [v10 item];
    v14 = [(PUSectionedGridLayout *)self visualIndexForItemAtGridCoordinates:v13, 0];
    if (v14 >= [(PULayoutSampledSectioning *)self->_layoutSectioning numberOfVisualItemsInVisualSection:v12])
    {
      [v8 setAlpha:0.0];
    }

    else
    {
      [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:v13 inVisualSection:0, v12];
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
      [(PUSectionedGridLayout *)self _adjustGridTransitionLayoutAttributes:v28 toOrFromGridLayout:v9 outTargetRowExists:v57 isAppearing:v5];
      [v28 frame];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      [v9 interItemSpacing];
      v38 = v34 + v37;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      [v8 center];
      [(PUSectionedGridLayout *)self _transformToConvertRect:v16 intoRect:v18 referenceCenter:v24, v22, v30, v32, v38, v36, v39, v40];
      v48[4] = v53;
      v48[5] = v54;
      v48[6] = v55;
      v48[7] = v56;
      v48[0] = v49;
      v48[1] = v50;
      v48[2] = v51;
      v48[3] = v52;
      [v8 setTransform3D:v48];
      [v8 setExists:v57[0]];
      if (self->_usesRenderedStripTopExtendersForTransitions && v5 && self->_transitionZoomingOut)
      {
        [v9 interItemSpacing];
        if (v41 > 0.0 || (transitionSectionInfosByVisualSection = self->_transitionSectionInfosByVisualSection, [MEMORY[0x1E696AD98] numberWithInteger:v12], v45 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKey:](transitionSectionInfosByVisualSection, "objectForKey:", v45), v47 = objc_claimAutoreleasedReturnValue(), v45, v42 = -[PUSectionedGridLayout _targetTransitionGridCoordsForGridCoords:atVisualSection:transitionSectionInfo:](self, "_targetTransitionGridCoordsForGridCoords:atVisualSection:transitionSectionInfo:", v13, 0, v12, v47), v44 = objc_msgSend(v9, "visualGridCoordsForTransitionGridCoords:atTransitionSection:outVisualSection:", v42, v43, objc_msgSend(v47, "transitionSection"), 0), v47, !v44))
        {
          if (v13)
          {
            [v8 setExtendsTopContent:1];
          }
        }
      }

      if (self->_transitionZoomingOut != v5 || (v57[0] & 1) == 0)
      {
        [v8 setAlpha:0.0];
      }
    }
  }
}

- (void)_adjustSectionHeaderLayoutAttributes:(id)a3 toOrFromGridLayout:(id)a4 isAppearing:(BOOL)a5
{
  v5 = a5;
  v26 = a3;
  v8 = a4;
  v9 = [v26 indexPath];
  v10 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:v9];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
    [v26 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    if ([(PULayoutSampledSectioning *)self->_layoutSectioning numberOfVisualItemsInVisualSection:v11]> 0)
    {
      v20 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealItemIndexPathForVisualIndexPath:v11, 0];
      v22 = [MEMORY[0x1E696AC88] indexPathForItem:v21 inSection:v20];
      v23 = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:v22];
      [(PUSectionedGridLayout *)self _adjustGridTransitionLayoutAttributes:v23 toOrFromGridLayout:v8 outTargetRowExists:0 isAppearing:v5];
      [v23 frame];
      v25 = v24;
      v28.origin.x = v13;
      v28.origin.y = v15;
      v28.size.width = v17;
      v28.size.height = v19;
      v15 = v25 - CGRectGetHeight(v28) - self->_sectionContentInset.top;
    }

    [v26 setFrame:{v13, v15, v17, v19}];
    [v26 setAlpha:0.0];
  }
}

- (id)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUSectionedGridLayout *)self _gridTransitionLayout];
  if (v8)
  {
    v9 = [(PUSectionedGridLayout *)self sectionHeaderElementKind];
    if ([v6 isEqualToString:v9])
    {
      transitionIsAnimated = self->_transitionIsAnimated;

      if (transitionIsAnimated)
      {
        v11 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];
        [(PUSectionedGridLayout *)self _adjustSectionHeaderLayoutAttributes:v11 toOrFromGridLayout:v8 isAppearing:0];
        goto LABEL_20;
      }
    }

    else
    {
    }

    v12 = [(PUSectionedGridLayout *)self renderedStripsElementKind];
    if ([v6 isEqualToString:v12])
    {
      v13 = self->_transitionIsAnimated;

      if (v13)
      {
        v11 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];
        [(PUSectionedGridLayout *)self _adjustRenderedStripLayoutAttributes:v11 toOrFromGridLayout:v8 isAppearing:0];
        goto LABEL_20;
      }
    }

    else
    {
    }

    if ([v6 isEqualToString:@"PUGridGlobalFooter"])
    {
      v22.receiver = self;
      v22.super_class = PUSectionedGridLayout;
      v14 = [(PUSectionedGridLayout *)&v22 finalLayoutAttributesForDisappearingSupplementaryElementOfKind:v6 atIndexPath:v7];
      if ([v14 isHidden])
      {
        v15 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];
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

  if (-[NSIndexSet containsIndex:](self->_deletedSections, "containsIndex:", [v7 section]))
  {
    [0 setAlpha:0.0];
    v16 = [(PUSectionedGridLayout *)self sectionHeaderElementKind];
    v17 = [v6 isEqualToString:v16];

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
    v11 = [(PUSectionedGridLayout *)&v19 finalLayoutAttributesForDisappearingSupplementaryElementOfKind:v6 atIndexPath:v7];
    if ([(PUSectionedGridLayout *)self _isTransitionForeignSupplementaryViewKind:v6])
    {
      [v11 setAlpha:0.0];
    }
  }

LABEL_20:

  return v11;
}

- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUSectionedGridLayout *)self _gridTransitionLayout];
  if (v8)
  {
    v9 = [(PUSectionedGridLayout *)self sectionHeaderElementKind];
    if ([v6 isEqualToString:v9])
    {
      transitionIsAnimated = self->_transitionIsAnimated;

      if (transitionIsAnimated)
      {
        v11 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];
        [(PUSectionedGridLayout *)self _adjustSectionHeaderLayoutAttributes:v11 toOrFromGridLayout:v8 isAppearing:1];
        goto LABEL_17;
      }
    }

    else
    {
    }

    if ([v6 isEqualToString:@"PUGridGlobalFooter"])
    {
      v12 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];
      if ([v12 isHidden])
      {
        v11 = v12;
        [v11 setAlpha:0.0];
      }

      else
      {
        v17.receiver = self;
        v17.super_class = PUSectionedGridLayout;
        v11 = [(PUSectionedGridLayout *)&v17 initialLayoutAttributesForAppearingSupplementaryElementOfKind:v6 atIndexPath:v7];
      }

      goto LABEL_17;
    }

    v13 = [(PUSectionedGridLayout *)self renderedStripsElementKind];
    if ([v6 isEqualToString:v13])
    {
      v14 = self->_transitionIsAnimated;

      if (v14)
      {
        v11 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];
        [(PUSectionedGridLayout *)self _adjustRenderedStripLayoutAttributes:v11 toOrFromGridLayout:v8 isAppearing:1];
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v16.receiver = self;
  v16.super_class = PUSectionedGridLayout;
  v11 = [(PUSectionedGridLayout *)&v16 initialLayoutAttributesForAppearingSupplementaryElementOfKind:v6 atIndexPath:v7];
  if ([(PUSectionedGridLayout *)self _isTransitionForeignSupplementaryViewKind:v6])
  {
    [v11 setAlpha:0.0];
  }

LABEL_17:

  return v11;
}

- (CGRect)_frameByAdjustingOffScreenEnteringFrame:(CGRect)a3 forRowAtVisualIndexPath:(PUSimpleIndexPath)a4 transitionSectionInfo:(id)a5 toOrFromGridLayout:(id)a6 isAppearing:(BOOL)a7
{
  v7 = a7;
  var1 = a4.var1;
  var0 = a4.var0;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a5;
  v17 = a6;
  [v17 transitionEffectiveContentOrigin];
  if (v7)
  {
    MinY = self->_transitionStartContentOffset.y;
  }

  else
  {
    MinY = v18 + self->_transitionEndContentOffset.y;
  }

  v20 = [(PUSectionedGridLayout *)self collectionView];
  [v20 bounds];
  v21 = MinY + CGRectGetHeight(v65);

  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  MaxY = CGRectGetMaxY(v66);
  if (MaxY < MinY)
  {
    v63 = v7;
    v23 = [v17 transitionFirstVisibleRowVisualPath];
    goto LABEL_8;
  }

  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  if (CGRectGetMinY(v67) > v21)
  {
    v63 = v7;
    v23 = [v17 transitionLastVisibleRowVisualPath];
LABEL_8:
    v24 = v23;
    v64 = 0;
    v25 = [v17 targetTransitionGridCoordsForGridCoords:objc_msgSend(v23 atVisualSection:"item") outTransitionSection:{0, objc_msgSend(v23, "section"), &v64}];
    transitionSectionInfosByTransitionSection = self->_transitionSectionInfosByTransitionSection;
    v27 = [MEMORY[0x1E696AD98] numberWithInteger:v64];
    v28 = [(NSDictionary *)transitionSectionInfosByTransitionSection objectForKey:v27];

    v29 = [v28 contiguousRows];
    if (v29 <= 0 || (v25 & ~(v25 >> 63)) < v29)
    {
      v31 = v25 & ~(v25 >> 63);
    }

    else
    {
      v31 = v29 - 1;
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

    v60 = v16;
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

    [v17 frameForItemAtGridCoordinates:objc_msgSend(v24 inVisualSection:{"row"), 0, objc_msgSend(v24, "section")}];
    if (MaxY >= MinY)
    {
      v21 = CGRectGetMaxY(*&v44);
      v16 = v60;
      if (v38 > 0)
      {
LABEL_44:
        [v17 itemSize];
        v54 = v53;
        [v17 interItemSpacing];
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
    v16 = v60;
    if (v38 >= 1)
    {
LABEL_38:
      [v17 itemSize];
      v50 = v49;
      [v17 interItemSpacing];
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

- (PUGridCoordinates)_targetTransitionGridCoordsForGridCoords:(PUGridCoordinates)a3 atVisualSection:(int64_t)a4 transitionSectionInfo:(id)a5
{
  column = a3.column;
  row = a3.row;
  v10 = a5;
  v11 = [(PUSectionedGridLayout *)self _gridTransitionLayout];
  if (!v11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:1723 description:@"Cannot compute transition coordinates while not in a transition"];

    if (v10)
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

    NSLog(&cfstr_NoTransitionSe.isa, row, column, a4, v17);
    column = 0;
    v15 = 0;
    goto LABEL_9;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [v10 visualSections];
  v13 = [v10 visualRowStartMarkers];
  v14 = [v13 objectAtIndex:{objc_msgSend(v12, "countOfIndexesInRange:", 0, a4)}];
  v15 = [v14 integerValue] + row;

LABEL_9:
  v18 = [v10 anchorShiftOffset];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (self->_transitionIsAppearing)
    {
      [v11 transitionAnchorIndexPathForTransitionSection:{objc_msgSend(v10, "transitionSection")}];
    }

    else
    {
      [v10 anchorRealPath];
    }
    v22 = ;
    if (v22)
    {
      v23 = [(PUSectionedGridLayout *)self gridCoordinatesInTransitionSectionForItemAtIndexPath:v22];
      v20 = [v11 gridCoordinatesInTransitionSectionForItemAtIndexPath:v22] - v23;
    }

    else
    {
      v20 = 0;
    }

    if (self->_transitionIsAppearing)
    {
      v21 = -[v11 transitionAnchorColumnOffset];
    }

    else
    {
      v21 = [(PUSectionedGridLayout *)self transitionAnchorColumnOffset];
    }

    [v10 setAnchorShiftOffset:{v20, v21}];
  }

  else
  {
    v20 = v18;
    v21 = v19;
  }

  v24 = v20 + v15;
  v25 = v21 + column;
  result.column = v25;
  result.row = v24;
  return result;
}

- (void)_adjustGridTransitionLayoutAttributes:(id)a3 toOrFromGridLayout:(id)a4 outTargetRowExists:(BOOL *)a5 isAppearing:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v55 = [v10 indexPath];
  v12 = -[PULayoutSampledSectioning visualIndexPathForRealIndexPath:isMainItem:](self->_layoutSectioning, "visualIndexPathForRealIndexPath:isMainItem:", [v55 section], objc_msgSend(v55, "item"), 0);
  v14 = v13;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    v52 = v51;
    v53 = @"disappearing";
    if (v6)
    {
      v53 = @"appearing";
    }

    [v51 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:1662 description:{@"Adjusting grid transition layout attributes %@ betweet %@ (self) and %@ (%@) for an unknown visual section", v10, self, v11, v53}];
  }

  v15 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:v14];
  v17 = v16;
  transitionSectionInfosByVisualSection = self->_transitionSectionInfosByVisualSection;
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
  v20 = [(NSDictionary *)transitionSectionInfosByVisualSection objectForKey:v19];

  v21 = [(PUSectionedGridLayout *)self _targetTransitionGridCoordsForGridCoords:v15 atVisualSection:v17 transitionSectionInfo:v12, v20];
  v23 = v22;
  [v11 frameForItemAtGridCoordinates:v21 inTransitionSection:{v22, objc_msgSend(v20, "transitionSection")}];
  [(PUSectionedGridLayout *)self _frameByAdjustingOffScreenEnteringFrame:v12 forRowAtVisualIndexPath:v15 transitionSectionInfo:v20 toOrFromGridLayout:v11 isAppearing:v6];
  v54 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v11 numberOfContiguousRowsInTransitionSection:{objc_msgSend(v20, "transitionSection")}];
  v32 = [v11 itemsPerRow];
  v34 = v21 >= 0 && v21 < v31;
  v36 = v23 >= 0 && v23 < v32;
  v37 = [v11 hasItemAtGridCoordinates:v21 inTransitionSection:{v23, objc_msgSend(v20, "transitionSection")}];
  [v10 alpha];
  v39 = 0.0;
  if (v34 & (v37 | ~v36) & v6)
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
  [v10 frame];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  [v10 center];
  [(PUSectionedGridLayout *)self _transformToConvertRect:v42 intoRect:v44 referenceCenter:v46, v48, v54, v26, v28, v30, v49, v50];
  v57[4] = v62;
  v57[5] = v63;
  v57[6] = v64;
  v57[7] = v65;
  v57[0] = v58;
  v57[1] = v59;
  v57[2] = v60;
  v57[3] = v61;
  [v10 setTransform3D:v57];
  [v10 setAlpha:v40];
  [v10 setExists:v34 & v36 & v37];
  if (a5)
  {
    *a5 = v34;
  }
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUSectionedGridLayout *)self _gridTransitionLayout];
  if (v5 && (transitionIsAnimated = self->_transitionIsAnimated, v5, transitionIsAnimated))
  {
    v7 = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:v4];
    v8 = [(PUSectionedGridLayout *)self _gridTransitionLayout];
    [(PUSectionedGridLayout *)self _adjustGridTransitionLayoutAttributes:v7 toOrFromGridLayout:v8 outTargetRowExists:0 isAppearing:0];
  }

  else if (-[NSSet containsObject:](self->_deletedItemIndexPaths, "containsObject:", v4) || -[NSIndexSet containsIndex:](self->_deletedSections, "containsIndex:", [v4 section]))
  {
    v15.receiver = self;
    v15.super_class = PUSectionedGridLayout;
    v9 = [(PUSectionedGridLayout *)&v15 finalLayoutAttributesForDisappearingItemAtIndexPath:v4];
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
    v7 = [(PUSectionedGridLayout *)&v11 finalLayoutAttributesForDisappearingItemAtIndexPath:v4];
  }

  return v7;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUSectionedGridLayout *)self _gridTransitionLayout];
  if (v5 && (transitionIsAnimated = self->_transitionIsAnimated, v5, transitionIsAnimated))
  {
    v7 = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:v4];
    v8 = [(PUSectionedGridLayout *)self _gridTransitionLayout];
    [(PUSectionedGridLayout *)self _adjustGridTransitionLayoutAttributes:v7 toOrFromGridLayout:v8 outTargetRowExists:0 isAppearing:1];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PUSectionedGridLayout;
    v7 = [(PUSectionedGridLayout *)&v10 initialLayoutAttributesForAppearingItemAtIndexPath:v4];
  }

  return v7;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (CGPoint)_targetContentOffsetWithAnchorItemIndexPath:(id)a3 isRotation:(BOOL)a4 orTransitionFromLayout:(id)a5 keepAnchorStable:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = a5;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v12 = MEMORY[0x1E695EFF8];
  v13 = [(PUSectionedGridLayout *)self collectionView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(PUSectionedGridLayout *)self _finalContentInset];
  v23 = v22;
  v25 = v24;
  height = self->_contentSize.height;
  v27 = [(PUSectionedGridLayout *)self numberOfRealSections];
  v28 = v27 - 1;
  if (v27 < 1 || [(PUSectionedGridLayout *)self numberOfRealItemsInRealSection:v28]< 1)
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
  if (v10)
  {
    if ([v10 section] || objc_msgSend(v10, "item"))
    {
      if ([v29 isEqual:v10])
      {
        v31 = v25 + height - v21;
      }

      else
      {
        v68 = v25;
        v32 = v21;
        v33 = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:v10];
        [v33 center];
        v35 = v34;
        if (v8)
        {
          viewSizeTransitionAnchorItemNormalizedYOffset = self->_viewSizeTransitionAnchorItemNormalizedYOffset;
          v72.origin.x = v15;
          v72.origin.y = v17;
          v72.size.width = v19;
          v72.size.height = v32;
          v37 = viewSizeTransitionAnchorItemNormalizedYOffset * CGRectGetHeight(v72);
        }

        else if (v11 && v6)
        {
          v38 = [v11 layoutAttributesForItemAtIndexPath:v10];
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

- (CGPoint)targetContentOffsetForViewSizeTransitionContext:(id)a3
{
  v5 = self->_viewSizeTransitionAnchorItem;
  viewSizeTransitionAnchorItemNormalizedYOffset = self->_viewSizeTransitionAnchorItemNormalizedYOffset;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"anchorItem"];
  viewSizeTransitionAnchorItem = self->_viewSizeTransitionAnchorItem;
  self->_viewSizeTransitionAnchorItem = v8;

  v10 = [v7 objectForKeyedSubscript:@"normalizedYOffset"];

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

- (CGPoint)targetContentOffsetForTransitionFromGridLayout:(id)a3
{
  v4 = a3;
  v5 = [(PUSectionedGridLayout *)self transitionExplicitAnchorItemIndexPath];
  [(PUSectionedGridLayout *)self _targetContentOffsetWithAnchorItemIndexPath:v5 isRotation:0 orTransitionFromLayout:v4 keepAnchorStable:1];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_didFinishLayoutTransitionAnimations:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v7 _didFinishLayoutTransitionAnimations:?];
  transitionAnimationEndCleanupBlock = self->_transitionAnimationEndCleanupBlock;
  if (transitionAnimationEndCleanupBlock)
  {
    transitionAnimationEndCleanupBlock[2](transitionAnimationEndCleanupBlock, v3);
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
      v5 = [(UICollectionViewLayout *)v3 transitionLayout];

      if (v5 != self)
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

  v9 = [(UICollectionViewLayout *)v4 delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(UICollectionViewLayout *)v4 delegate];
    [v11 sectionedGridLayout:v4 didFinalizePrepareTransitionIsAppearing:{-[UICollectionViewLayout transitionIsAppearing](v4, "transitionIsAppearing")}];
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

- (void)_prepareForTransitionToOrFromGridLayout:(id)a3 isAppearing:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v9 = v8;
  transitionLayout = self->_transitionLayout;
  if (transitionLayout)
  {
    v11 = transitionLayout == v8;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v59 = [MEMORY[0x1E696AAA8] currentHandler];
    [v59 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:1137 description:@"The initial transition layout doesn't match the one we will transition to/from."];

    transitionLayout = self->_transitionLayout;
  }

  if (transitionLayout && self->_transitionIsAppearing != v4)
  {
    v60 = [MEMORY[0x1E696AAA8] currentHandler];
    [v60 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:1138 description:@"The initial transitionIsAppearing doesn't match actual transition direction."];
  }

  self->_transitionIsAppearing = v4;
  objc_storeStrong(&self->_transitionLayout, a3);
  viewSizeTransitionAnchorItem = self->_viewSizeTransitionAnchorItem;
  self->_viewSizeTransitionAnchorItem = 0;

  if (v4)
  {
    v13 = [(PUSectionedGridLayout *)self collectionView];
    v14 = objc_opt_respondsToSelector();

    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }

    v15 = [(PUSectionedGridLayout *)self collectionView];
    [(UICollectionViewLayout *)v15 _beginDeferredContentOffsetTransitionToOffset:self->_transitionEndContentOffset.x contentSize:self->_transitionEndContentOffset.y, self->_contentSize.width, self->_contentSize.height];
  }

  else
  {
    v15 = v9;
    [(UICollectionViewLayout *)v15 setIsPreparingLayout:1];
    [(UICollectionViewLayout *)v15 targetContentOffsetForTransitionFromGridLayout:self];
    self->_transitionEndContentOffset.x = v16;
    self->_transitionEndContentOffset.y = v17;
    [(UICollectionViewLayout *)v15 adjustEffectiveContentOriginForTransitionEndContentOffset:?];
    [(UICollectionViewLayout *)v15 setIsPreparingLayout:0];
  }

LABEL_14:
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v64 = [(PUSectionedGridLayout *)self collectionView];
  [v64 bounds];
  v19 = v18;
  v21 = v20;
  if (v4)
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
  if (v4 || ([(PUSectionedGridLayout *)self transitionExplicitAnchorItemIndexPath], (v33 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v35 = 0;
    v38 = 0x7FFFFFFFFFFFFFFFLL;
    v40 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    layoutSectioning = self->_layoutSectioning;
    v35 = v33;
    v36 = [v35 item];
    v37 = [v35 section];

    v38 = [(PULayoutSampledSectioning *)layoutSectioning visualIndexPathForRealIndexPath:v37 isMainItem:v36, 0];
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
  v70 = self;
  v44 = v42;
  v75 = v23;
  v76 = v25;
  v77 = v19;
  v78 = v21;
  v71 = v44;
  v73 = &v88;
  v74 = &v83;
  v82 = v4;
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
      v52 = [(UICollectionViewLayout *)v50 transitionLayout];

      if (v52 != self)
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

  v56 = [(UICollectionViewLayout *)v51 delegate];
  v57 = objc_opt_respondsToSelector();

  if (v57)
  {
    v58 = [(UICollectionViewLayout *)v51 delegate];
    [v58 sectionedGridLayout:v51 didPrepareTransitionIsAppearing:{-[UICollectionViewLayout transitionIsAppearing](v51, "transitionIsAppearing")}];
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

- (void)prepareForTransitionToLayout:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v6 prepareForTransitionToLayout:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 nextLayout];

    v4 = v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUSectionedGridLayout *)self _prepareForTransitionToOrFromGridLayout:v4 isAppearing:0];
  }
}

- (void)prepareForTransitionFromLayout:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v6 prepareForTransitionFromLayout:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 currentLayout];

    v4 = v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUSectionedGridLayout *)self _prepareForTransitionToOrFromGridLayout:v4 isAppearing:1];
  }
}

- (UIEdgeInsets)_finalContentInset
{
  v3 = [(PUSectionedGridLayout *)self collectionView];
  [v3 adjustedContentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (self->_delegateSupportsFinalContentInsetForCurrentContentInset)
  {
    v12 = [(PUSectionedGridLayout *)self delegate];
    [v12 sectionedGridLayout:self finalContentInsetForCurrentContentInset:{v5, v7, v9, v11}];
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

  v3 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
  v4 = [v3 count];

  if (!v4)
  {
    return self->_totalRealSections - 1;
  }

  v5 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
  v6 = [v5 lastObject];

  v7 = [v6 indexPath];
  v8 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:v7];

  return v8;
}

- (int64_t)firstPreparedVisualSection
{
  if (!self->_dynamicLayoutEnabled)
  {
    return 0;
  }

  v3 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributes];
  v6 = [v5 firstObject];

  v7 = [v6 indexPath];
  v8 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:v7];

  return v8;
}

- (BOOL)_hasAccessibilityLargeText
{
  v2 = [(PUSectionedGridLayout *)self collectionView];
  v3 = [v2 traitCollection];
  v4 = [PUInterfaceManager shouldUseAccessibilityLargeTextLayoutWithTraitCollecton:v3];

  return v4;
}

- (id)_animationForReusableView:(id)a3 toLayoutAttributes:(id)a4 type:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 != 1)
  {
    v14 = 0;
    goto LABEL_12;
  }

  v10 = [(PUSectionedGridLayout *)self transitioningDelegate];

  if (v10)
  {
    v11 = [(PUSectionedGridLayout *)self transitioningDelegate];
    v12 = [v11 collectionViewLayoutShouldProvideCustomAnimations:self];

    if (!v12)
    {
      v20 = 0;
      goto LABEL_11;
    }

    v13 = [PULayoutAnimationsHelper stackedTransitionAnimationsForReusableView:v8 toLayoutAttributes:v9 shouldUseSpringAnimations:1];
  }

  else
  {
    transitionAnimationsHelper = self->_transitionAnimationsHelper;
    if (!transitionAnimationsHelper)
    {
      v16 = [[PULayoutAnimationsHelper alloc] initWithSectionedGridLayout:self];
      v17 = self->_transitionAnimationsHelper;
      self->_transitionAnimationsHelper = v16;

      v18 = [(PUSectionedGridLayout *)self _gridTransitionLayout];
      v19 = v18 != 0;

      [(PULayoutAnimationsHelper *)self->_transitionAnimationsHelper setShouldAnimateTemporaryImageView:v19];
      transitionAnimationsHelper = self->_transitionAnimationsHelper;
    }

    v13 = [(PULayoutAnimationsHelper *)transitionAnimationsHelper animationsForReusableView:v8 toLayoutAttributes:v9];
  }

  v20 = v13;
LABEL_11:
  v14 = _Block_copy(v20);

LABEL_12:

  return v14;
}

- (id)prepareForViewTransitionToSize:(CGSize)a3
{
  width = a3.width;
  v24[2] = *MEMORY[0x1E69E9840];
  WeakRetained = [(PUSectionedGridLayout *)self collectionView:a3.width];
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
    v15 = [(PUSectionedGridLayout *)self collectionView];
    [v15 contentOffset];
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

- (void)prepareForAnimatedBoundsChange:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v3 prepareForAnimatedBoundsChange:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v22 prepareForCollectionViewUpdates:v4];
  v17 = self;
  self->_processingCollectionViewUpdates = 1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
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
          v13 = [v12 indexPathBeforeUpdate];
          if ([v13 item] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (!v9)
            {
              v9 = [MEMORY[0x1E696AD50] indexSet];
            }

            -[NSIndexSet addIndex:](v9, "addIndex:", [v13 section]);
          }

          else
          {
            if (!v8)
            {
              v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
            }

            [(NSSet *)v8 addObject:v13];
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
    v9 = 0;
  }

  deletedSections = v17->_deletedSections;
  v17->_deletedSections = v9;
  v15 = v9;

  deletedItemIndexPaths = v17->_deletedItemIndexPaths;
  v17->_deletedItemIndexPaths = v8;
}

- (id)_layoutAttributesForSupplementaryViewOfKind:(id)a3 forVisualSection:(int64_t)a4 supplementaryViewIndex:(int64_t)a5
{
  v9 = a3;
  v10 = [(PUSectionedGridLayout *)self supplementaryViewIndexPathForVisualSection:a4 supplementaryViewItemIndex:a5];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = [(PUSectionedGridLayout *)self renderedStripsElementKind];
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v13 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:[(PUSectionedGridLayout *)self _firstVisualItemIndexForRenderedStripIndex:a5]];
    v14 = self->_columnsPerRow - 1;
    [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:v13 inVisualSection:v15, a4];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:v13 inVisualSection:v14, a4];
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
    v31 = [(UICollectionViewLayoutAttributes *)PUSectionedGridLayoutAttributes layoutAttributesForSupplementaryViewOfKind:v9 withIndexPath:v10, v39.origin.x];
    [v31 setFrame:{0.0, y, width, height}];
    goto LABEL_17;
  }

  if (![v9 isEqualToString:self->_sectionHeaderElementKind])
  {
    if ([v9 isEqualToString:@"PUGridGlobalHeader"])
    {
      v32 = 296;
LABEL_11:
      v31 = *(&self->super.super.isa + v32);
      goto LABEL_17;
    }

    if ([v9 isEqualToString:@"PUGridGlobalFooter"])
    {
      v32 = 304;
      goto LABEL_11;
    }

    if (!self->_transitionLayout || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (-[UICollectionViewLayout sectionHeaderElementKind](self->_transitionLayout, "sectionHeaderElementKind"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v9 isEqualToString:v33], v33, !v34))
    {
      v31 = [MEMORY[0x1E69DC858] layoutAttributesForSupplementaryViewOfKind:v9 withIndexPath:v10];
      [v31 frame];
      [v31 setFrame:?];
      [v31 setAlpha:0.0];
      [v31 setHidden:1];
      goto LABEL_17;
    }

    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:938 description:{@"%@ should never be asked for attributes of the transition layout %@", self, self->_transitionLayout}];

LABEL_16:
    v31 = 0;
    goto LABEL_17;
  }

  v31 = [(UICollectionViewLayoutAttributes *)PUSectionedGridLayoutAttributes layoutAttributesForSupplementaryViewOfKind:v9 withIndexPath:v10];
  [(PUSectionedGridLayout *)self frameForSectionHeaderAtVisualSection:a4];
  [v31 setFrame:?];
  if ([(PUSectionedGridLayout *)self shouldHideVisualSection:a4])
  {
    [v31 setHidden:1];
    [v31 setAlpha:0.0];
  }

LABEL_17:

  return v31;
}

- (BOOL)_isSupportedSupplementaryViewKind:(id)a3
{
  v4 = a3;
  v5 = [(PUSectionedGridLayout *)self _supplementaryViewKinds];
  v6 = [v5 containsObject:v4];

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

- (id)_layoutAttributesForItemAtVisualIndexPath:(PUSimpleIndexPath)a3 realIndexPath:(id)a4 isMainRealItem:(BOOL)a5
{
  v5 = a5;
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = a4;
  v10 = [(PUSectionedGridLayout *)self gridCoordinatesInSectionForItemAtVisualIndex:var1];
  [(PUSectionedGridLayout *)self frameForItemAtGridCoordinates:v10 inVisualSection:v11 indexPath:var0, v9];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(UICollectionViewLayoutAttributes *)PUSectionedGridLayoutAttributes layoutAttributesForCellWithIndexPath:v9];
  [v20 setFrame:{v13, v15, v17, v19}];
  [v20 setZIndex:1];
  if (!v5 || self->_usesRenderedStrips)
  {
    [v20 setHidden:1];
    goto LABEL_6;
  }

  if ([(NSSet *)self->_hiddenItemIndexPaths containsObject:v9])
  {
LABEL_6:
    [v20 setAlpha:0.0];
  }

  [(PUSectionedGridLayout *)self _adjustItemLayoutAttributesForReordering:v20];

  return v20;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_transitionLayout && [(PUSectionedGridLayout *)self _isTransitionForeignSupplementaryViewKind:v6])
  {
    v8 = [(UICollectionViewLayout *)self->_transitionLayout layoutAttributesForSupplementaryViewOfKind:v6 atIndexPath:v7];
    [v8 setAlpha:0.0];
    [v8 setHidden:1];
  }

  else
  {
    [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
    v9 = [(PUSectionedGridLayout *)self visualSectionForSupplementaryViewIndexPath:v7];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v8 = -[PUSectionedGridLayout _layoutAttributesForSupplementaryViewOfKind:forVisualSection:supplementaryViewIndex:](self, "_layoutAttributesForSupplementaryViewOfKind:forVisualSection:supplementaryViewIndex:", v6, v9, [v7 item]);
  }

  v11 = [(PUSectionedGridLayout *)self transitioningDelegate];
  if (v11)
  {
    v14[0] = v8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v11 collectionViewLayout:self willSupplyLayoutAttributes:v12];
  }

  v10 = v8;

LABEL_10:

  return v10;
}

- (id)supplementaryViewIndexPathForVisualSection:(int64_t)a3 supplementaryViewItemIndex:(int64_t)a4
{
  v5 = [(PULayoutSampledSectioning *)self->_layoutSectioning mainRealSectionForVisualSection:a3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForItem:a4 inSection:v5];
  }

  return v6;
}

- (int64_t)visualSectionForSupplementaryViewIndexPath:(id)a3
{
  layoutSectioning = self->_layoutSectioning;
  v4 = [a3 section];

  return [(PULayoutSampledSectioning *)layoutSectioning visualSectionForRealSection:v4];
}

- (BOOL)_isTransitionForeignSupplementaryViewKind:(id)a3
{
  v4 = a3;
  if (self->_transitionLayout && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = ![(PUSectionedGridLayout *)self _isSupportedSupplementaryViewKind:v4];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  v15 = 0;
  layoutSectioning = self->_layoutSectioning;
  v6 = v4;
  v7 = [v6 item];
  v8 = [v6 section];

  v9 = [(PULayoutSampledSectioning *)layoutSectioning visualIndexPathForRealIndexPath:v8 isMainItem:v7, &v15];
  v11 = [(PUSectionedGridLayout *)self _layoutAttributesForItemAtVisualIndexPath:v9 realIndexPath:v10 isMainRealItem:v6, v15];
  v12 = [(PUSectionedGridLayout *)self transitioningDelegate];
  if (v12)
  {
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v12 collectionViewLayout:self willSupplyLayoutAttributes:v13];
  }

  return v11;
}

- (id)assetIndexPathsForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  if (height == 0.0 || !self->_totalVisualSections)
  {
    v8 = [MEMORY[0x1E695DEC8] array];
  }

  else
  {
    if (self->_transitionLayout && [(PUSectionedGridLayout *)self transitionIsAppearing])
    {
      x = x + self->_transitionEffectiveContentOrigin.x;
      y = y + self->_transitionEffectiveContentOrigin.y;
    }

    v9 = [(PUSectionedGridLayout *)self columnsPerRow];
    v10 = [(PUSectionedGridLayout *)self layoutSectioning];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * v9 * v9];
    v11 = [(PUSectionedGridLayout *)self visualSectionsInRect:x, y, width, height];
    v13 = v11 + v12;
    if (v11 < v11 + v12)
    {
      v14 = v11;
      do
      {
        v15 = [(PUSectionedGridLayout *)self visualRowsInRect:v14 inVisualSection:0 totalVisualSectionRows:x, y, width, height];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v16;
          if (v16)
          {
            v18 = v15;
            v19 = [(PUSectionedGridLayout *)self numberOfVisualItemsInVisualSection:v14];
            v20 = v18 * v9;
            v21 = (v18 + v17) * v9 - 1;
            if (v21 >= v19 - 1)
            {
              v21 = v19 - 1;
            }

            if (v20 <= v21)
            {
              v22 = v21 + 1;
              do
              {
                v23 = [v10 mainRealItemIndexPathForVisualIndexPath:{v14, v20}];
                v25 = [MEMORY[0x1E696AC88] indexPathForItem:v24 inSection:v23];
                [v8 addObject:v25];

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

  return v8;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PUSectionedGridLayout *)self _prepareLayoutIfNeeded];
  if (height == 0.0 || !self->_totalVisualSections)
  {
    v8 = [MEMORY[0x1E695DEC8] array];
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
          v15 = [(PUSectionedGridLayoutData *)self->_layoutData headerLayoutAttributesByVisualSection];
          v16 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
          v17 = [v15 objectForKey:v16];

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
      v22 = [(PUSectionedGridLayout *)self visualRowsInRect:v13 inVisualSection:0 totalVisualSectionRows:x, y, width, height];
      if (v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = v23;
        if (v23)
        {
          v25 = v22;
          usesRenderedStrips = self->_usesRenderedStrips;
          if (((v10 | !usesRenderedStrips) & 1) == 0)
          {
            v28 = [(PUSectionedGridLayout *)self _renderedStripIndexForSectionRowIndex:v22];
            v27 = v25 + v24;
            v29 = [(PUSectionedGridLayout *)self _renderedStripIndexForSectionRowIndex:v25 + v24 - 1];
            v30 = [(PUSectionedGridLayout *)self renderedStripsElementKind];
            if (v28 <= v29)
            {
              v31 = v29 + 1;
              do
              {
                v32 = [(PUSectionedGridLayout *)self _layoutAttributesForSupplementaryViewOfKind:v30 forVisualSection:v13 supplementaryViewIndex:v28];
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
            v27 = v22 + v23;
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
      v53 = [(PUSectionedGridLayout *)self collectionView];
      v54 = [v53 dataSource];

      if (v54)
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
      v61 = [(PUSectionedGridLayout *)self collectionView];
      v62 = [v61 dataSource];

      if (v62)
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
    v8 = [v64 arrayByAddingObjectsFromArray:v74];

    if (v10)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v8 = [(NSArray *)v76 arrayByAddingObjectsFromArray:v74];
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
  v67 = [(PUSectionedGridLayout *)self transitioningDelegate];
  v68 = v67;
  if (v67)
  {
    [v67 collectionViewLayout:self willSupplyLayoutAttributes:v8];
  }

LABEL_65:

  return v8;
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

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  v7 = [(PUSectionedGridLayout *)self collectionView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v13 == height && v11 == width;
  v15 = v9 != y && v14;
  v16 = [(PUSectionedGridLayout *)self sectionHeaderElementKind];
  v17 = v16;
  if (!v15 || v16 == 0)
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

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PUSectionedGridLayout;
  return (a3.size.width != self->_contentSize.width) | [(PUSectionedGridLayout *)&v4 shouldInvalidateLayoutForBoundsChange:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  [(PUSectionedGridLayout *)self _invalidateLayoutWithContext:v4];
  v5.receiver = self;
  v5.super_class = PUSectionedGridLayout;
  [(PUSectionedGridLayout *)&v5 invalidateLayoutWithContext:v4];
}

- (void)_invalidateLayoutWithContext:(id)a3
{
  v13 = a3;
  v4 = [v13 invalidateForVerticalScroll];
  if ((v4 & 1) == 0)
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
    v9 = [v13 samplingIsPreserved];
    v4 = [v13 sectioningIsPreserved];
    v10 = v4;
    if (!v9 || (v4 & 1) == 0)
    {
      self->_samplingDataIsValid = 0;
      [(PUSectionedGridLayout *)self _clearSamplingCaches];
      v4 = [(PULayoutSampledSectioning *)self->_layoutSectioning invalidateSampling];
    }

    if ((v10 & 1) == 0)
    {
      self->_sectioningDataIsValid = 0;
      [(PUSectionedGridLayout *)self _clearSectioningCaches];
      v4 = [(PULayoutSampledSectioning *)self->_layoutSectioning invalidateSections];
    }
  }

  v11 = v13;
  if (self->_delegateSupportsDidInvalidateWithContext)
  {
    v4 = [v13 invalidationHasBeenRedispatched];
    v11 = v13;
    if ((v4 & 1) == 0)
    {
      [v13 setInvalidationHasBeenRedispatched:1];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained sectionedGridLayout:self didInvalidateWithContext:v13];

      v11 = v13;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v11);
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
  v4 = [(PUSectionedGridLayout *)self collectionView];

  if (!v4)
  {
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    [v53 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:350 description:@"CollectionView is nil"];
  }

  if (self->_layoutDataIsValid)
  {
    if (self->_samplingDataIsValid)
    {
      return;
    }

    v56 = [MEMORY[0x1E696AAA8] currentHandler];
    [v56 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:353 description:@"Sampling data should always be valid when layout data is valid"];
  }

  else
  {
    if (self->_delegateSupportsWillPrepareLayout)
    {
      v5 = [(PUSectionedGridLayout *)self delegate];
      [v5 sectionedGridLayoutWillPrepareLayout:self];
    }

    v56 = [(PUSectionedGridLayout *)self collectionView];
    [(PUSectionedGridLayout *)self _prepareSamplingDataIfNeeded];
    if (!self->_sectioningDataIsValid)
    {
      v54 = [MEMORY[0x1E696AAA8] currentHandler];
      [v54 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:365 description:@"Sectioning data should be correct here"];
    }

    [v56 bounds];
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
      v17 = [(PUSectionedGridLayout *)self globalHeaderIndexPath];
      v18 = [v16 layoutAttributesForSupplementaryViewOfKind:@"PUGridGlobalHeader" withIndexPath:v17];
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
      v42 = [(PUSectionedGridLayout *)self globalFooterIndexPath];
      v43 = [v41 layoutAttributesForSupplementaryViewOfKind:@"PUGridGlobalFooter" withIndexPath:v42];
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

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:310 description:@"Sectioning data should always be valid when sampling data is valid"];
  }

  else
  {
    if (self->_layoutDataIsValid)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:314 description:@"Layout data can't be valid while sampling data is invvalid"];
    }

    [(PUSectionedGridLayout *)self _prepareSectioningDataIfNeeded];
    v9 = [(PUSectionedGridLayout *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      self->_visualSectionMaxRows = malloc_type_malloc(8 * self->_totalVisualSections, 0x100004000313F17uLL);
      if (self->_totalVisualSections >= 1)
      {
        v4 = 0;
        v5 = 0;
        do
        {
          v6 = [v9 sectionedGridLayout:self maximumRowsForVisualSection:v5];
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
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PUSectionedGridLayout.m" lineNumber:290 description:@"Sampling data can't be valid while sectioning data is valid"];
    }

    v9 = [(PUSectionedGridLayout *)self delegate];
    v3 = [(PUSectionedGridLayout *)self collectionView];
    v4 = [v3 numberOfSections];
    self->_totalRealSections = v4;
    self->_realSectionItemCounts = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
    totalRealSections = self->_totalRealSections;
    if (totalRealSections >= 1)
    {
      for (i = 0; i < totalRealSections; ++i)
      {
        self->_realSectionItemCounts[i] = [v3 numberOfItemsInSection:i];
        totalRealSections = self->_totalRealSections;
      }
    }

    if (self->_delegateSupportsGroupedSections)
    {
      totalRealSections = [v9 numberOfVisualSectionsForSectionedGridLayout:self];
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