@interface PUOneUpTilingLayout
+ (CGRect)rectForFittingToTargetPixelSize:(CGSize)a3 imagePixelSize:(CGSize)a4 bestSquareUnitRect:(CGRect)a5;
+ (CGRect)untransformedRectForItemWithAspectRatio:(double)a3 pageRect:(CGRect)a4 safeInsets:(UIEdgeInsets)a5;
+ (id)centerTileKinds;
- (BOOL)_accessoryViewVisibilityForItemAtIndexPath:(id)a3;
- (BOOL)_isShowingInfoPanelForItemAtIndexPath:(id)a3;
- (BOOL)_isVideoPlacholderVisibleForItemAtIndexPath:(id)a3;
- (BOOL)_shouldApplyInsetStylingToContentWithRect:(CGRect)a3 indexPath:(id)a4;
- (BOOL)_shouldShowRenderIndicatorForIndexPath:(id)a3 size:(CGSize)a4;
- (CGPoint)_contentOffsetForItemAtIndexPath:(id)a3;
- (CGRect)_frameForTileWithSize:(CGSize)a3 centeredOnItemAtIndexPath:(id)a4;
- (CGRect)_pageRectForItemAtIndexPath:(id)a3;
- (CGRect)_untransformedRectForItemAtIndexPath:(id)a3;
- (CGRect)_untransformedRectForItemAtIndexPath:(id)a3 pageRect:(CGRect)a4;
- (CGRect)visibleRectForItemAtIndexPath:(id)a3 transitionProgress:(double)a4;
- (CGSize)_contentPixelSizeForItemAtIndexPath:(id)a3;
- (CGSize)_itemSize;
- (CGSize)assetExplorerReviewScreenProgressIndicatorSize;
- (CGSize)bufferingIndicatorSize;
- (CGSize)displaySizeForInsetMatching;
- (CGSize)estimatedSectionSize;
- (CGSize)interpageSpacing;
- (CGSize)peopleRowSize;
- (CGSize)playButtonSize;
- (CGSize)progressIndicatorSize;
- (CGSize)renderIndicatorSize;
- (CGSize)sizeForSection:(int64_t)a3 numberOfItems:(int64_t)a4;
- (PUOneUpTilingLayout)init;
- (PUOneUpTilingLayoutDelegate)delegate;
- (UIEdgeInsets)_cropInsetsForTileAtIndexPath:(id)a3 layoutRect:(CGRect)a4;
- (UIEdgeInsets)contentDecorationAdditionalInsets;
- (UIEdgeInsets)contentGuideInsets;
- (UIEdgeInsets)contentSafeInsets;
- (UIEdgeInsets)progressIndicatorContentInsets;
- (double)_insetContentCornerRadiusForItemAtIndexPath:(id)a3;
- (double)_normalizedTransitionProgressFrom:(id)a3 withAbscissa:(double)a4 outNeighbor:(id *)a5;
- (id)_createLayoutInfoForTileWithIndexPath:(id)a3 kind:(id)a4;
- (id)_displayTileTransformForItemAtIndexPath:(id)a3 options:(unint64_t)a4;
- (id)_displayTileTransformForItemAtIndexPath:(id)a3 pageSize:(CGSize)a4 secondaryDisplayTransform:(id)a5 options:(unint64_t)a6;
- (id)_indexPathOfItemClosestToAbscissa:(double)a3;
- (id)layoutInfoForTileWithIndexPath:(id)a3 kind:(id)a4;
- (id)preferredScrollInfo;
- (void)_collectLayoutInfosForTilesInRect:(CGRect)a3 withIndexPath:(id)a4 kinds:(id)a5 toSet:(id)a6;
- (void)_getLayoutRect:(CGRect *)a3 transform:(CGAffineTransform *)a4 parallaxOffset:(CGPoint *)a5 contentsRect:(CGRect *)a6 alpha:(double *)a7 forContentOfItemAtIndexPath:(id)a8 options:(unint64_t)a9;
- (void)_invalidateContentRelatedTilesWithIndexPath:(id)a3 inContext:(id)a4;
- (void)addLayoutInfosForSupplementaryTilesInRect:(CGRect)a3 toSet:(id)a4;
- (void)addLayoutInfosForTilesInRect:(CGRect)a3 section:(int64_t)a4 toSet:(id)a5;
- (void)invalidateAccessoryForItemAtIndexPath:(id)a3 withOptions:(unint64_t)a4;
- (void)invalidateAllContentTiles;
- (void)invalidateBadgeSizeForItemAtIndexPath:(id)a3;
- (void)invalidateContentOffsetForItemAtIndexPath:(id)a3 withOptions:(unint64_t)a4;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)invalidateLoadingIndicatorForItemAtIndexPath:(id)a3;
- (void)invalidateModelTileTransformForItemAtIndexPath:(id)a3;
- (void)invalidatePrimaryContentTiles;
- (void)invalidateProgressIndicatorForItemAtIndexPath:(id)a3;
- (void)invalidateVideoPlaceholderForItemAtIndexPath:(id)a3;
- (void)prepareLayout;
- (void)setAssetExplorerReviewScreenProgressIndicatorSize:(CGSize)a3;
- (void)setBufferingIndicatorSize:(CGSize)a3;
- (void)setCanDisplayLoadingIndicators:(BOOL)a3;
- (void)setContentDecorationAdditionalInsets:(UIEdgeInsets)a3;
- (void)setContentSafeInsets:(UIEdgeInsets)a3;
- (void)setDelegate:(id)a3;
- (void)setDisplaySizeForInsetMatching:(CGSize)a3;
- (void)setInsetContentBorderColor:(id)a3;
- (void)setInsetContentBorderWidth:(double)a3;
- (void)setInsetContentCornerRadius:(double)a3;
- (void)setPeopleRowSize:(CGSize)a3;
- (void)setPlayButtonSize:(CGSize)a3;
- (void)setProgressIndicatorContentInsets:(UIEdgeInsets)a3;
- (void)setProgressIndicatorSize:(CGSize)a3;
- (void)setRenderIndicatorSize:(CGSize)a3;
- (void)setShouldHideMainContent:(BOOL)a3;
- (void)setShouldPinContentToTop:(BOOL)a3;
- (void)setUseAssetExplorerReviewScreenBadgeTiles:(BOOL)a3;
- (void)setUseBadgeTiles:(BOOL)a3;
- (void)setUseImportStatusIndicatorTiles:(BOOL)a3;
- (void)setUseSelectionIndicatorTiles:(BOOL)a3;
- (void)setUseSyndicationAttributionTile:(BOOL)a3;
- (void)setUseVerticalReviewScreenControlBarLayout:(BOOL)a3;
- (void)setVisibleRect:(CGRect)a3;
- (void)setWindowInterfaceOrientation:(int64_t)a3;
@end

@implementation PUOneUpTilingLayout

- (CGSize)displaySizeForInsetMatching
{
  width = self->_displaySizeForInsetMatching.width;
  height = self->_displaySizeForInsetMatching.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)bufferingIndicatorSize
{
  width = self->_bufferingIndicatorSize.width;
  height = self->_bufferingIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)assetExplorerReviewScreenProgressIndicatorSize
{
  width = self->_assetExplorerReviewScreenProgressIndicatorSize.width;
  height = self->_assetExplorerReviewScreenProgressIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)renderIndicatorSize
{
  width = self->_renderIndicatorSize.width;
  height = self->_renderIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)progressIndicatorContentInsets
{
  top = self->_progressIndicatorContentInsets.top;
  left = self->_progressIndicatorContentInsets.left;
  bottom = self->_progressIndicatorContentInsets.bottom;
  right = self->_progressIndicatorContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)peopleRowSize
{
  width = self->_peopleRowSize.width;
  height = self->_peopleRowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)progressIndicatorSize
{
  width = self->_progressIndicatorSize.width;
  height = self->_progressIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)playButtonSize
{
  width = self->_playButtonSize.width;
  height = self->_playButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentDecorationAdditionalInsets
{
  top = self->_contentDecorationAdditionalInsets.top;
  left = self->_contentDecorationAdditionalInsets.left;
  bottom = self->_contentDecorationAdditionalInsets.bottom;
  right = self->_contentDecorationAdditionalInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentSafeInsets
{
  top = self->_contentSafeInsets.top;
  left = self->_contentSafeInsets.left;
  bottom = self->_contentSafeInsets.bottom;
  right = self->_contentSafeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentGuideInsets
{
  top = self->_contentGuideInsets.top;
  left = self->_contentGuideInsets.left;
  bottom = self->_contentGuideInsets.bottom;
  right = self->_contentGuideInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)interpageSpacing
{
  width = self->_interpageSpacing.width;
  height = self->_interpageSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PUOneUpTilingLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldApplyInsetStylingToContentWithRect:(CGRect)a3 indexPath:(id)a4
{
  v5 = a4;
  if ([v5 length] != 2 || -[PUOneUpTilingLayout _accessoryViewVisibilityForItemAtIndexPath:](self, "_accessoryViewVisibilityForItemAtIndexPath:", v5) || self->_delegateFlags.respondsToCanApplyInsetStylingToItemAtIndexPath && (-[PUOneUpTilingLayout delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "layout:canApplyInsetStylingToItemAtIndexPath:", self, v5), v8, !v9))
  {
    v6 = 0;
  }

  else
  {
    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v5];
    v6 = PXRectStrictlyContainsAnyVertexOfRect();
  }

  return v6;
}

- (double)_normalizedTransitionProgressFrom:(id)a3 withAbscissa:(double)a4 outNeighbor:(id *)a5
{
  v9 = a3;
  if (!v9)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PUOneUpTilingLayout.m" lineNumber:1937 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
  }

  [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v9];
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  MidX = CGRectGetMidX(v40);
  v15 = [(PUSectionedTilingLayout *)self leftToRight];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__46541;
  v38 = __Block_byref_object_dispose__46542;
  v39 = 0;
  v16 = [(PUTilingLayout *)self dataSource];
  if (v15)
  {
    v17 = MidX > a4;
  }

  else
  {
    v17 = MidX < a4;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __82__PUOneUpTilingLayout__normalizedTransitionProgressFrom_withAbscissa_outNeighbor___block_invoke;
  v31[3] = &unk_1E7B7DD28;
  v18 = v9;
  v32 = v18;
  v33 = &v34;
  [v16 enumerateIndexPathsStartingAtIndexPath:v18 reverseDirection:v17 usingBlock:v31];

  if (v35[5])
  {
    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:?];
    v19 = fmax((a4 - MidX) / vabdd_f64(CGRectGetMidX(v41), MidX), -1.0);
    if (v19 > 1.0)
    {
      v19 = 1.0;
    }

    if (v15)
    {
      v20 = v19;
    }

    else
    {
      v20 = -v19;
    }
  }

  else
  {
    [(PUTilingLayout *)self visibleRect];
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v20 = 0.0;
    if (!CGRectContainsRect(v42, v50))
    {
      [(PUTilingLayout *)self visibleRect];
      v21 = v43.size.height;
      v29 = v43.origin.y;
      v30 = v43.origin.x;
      rect = v43.size.width;
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v44 = CGRectIntersection(v43, v51);
      v22 = CGRectGetWidth(v44);
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v23 = CGRectGetWidth(v45);
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      MaxX = CGRectGetMaxX(v46);
      v47.origin.y = v29;
      v47.origin.x = v30;
      v47.size.width = rect;
      v47.size.height = v21;
      v20 = 1.0 - v22 / v23;
      if (MaxX > CGRectGetMaxX(v47) && v15 || (v48.origin.x = x, v48.origin.y = y, v48.size.width = width, v48.size.height = height, MinX = CGRectGetMinX(v48), v49.origin.y = v29, v49.origin.x = v30, v49.size.width = rect, v49.size.height = v21, MinX < CGRectGetMinX(v49) && !v15))
      {
        v20 = -v20;
      }
    }
  }

  if (a5)
  {
    *a5 = v35[5];
  }

  _Block_object_dispose(&v34, 8);
  return v20;
}

void __82__PUOneUpTilingLayout__normalizedTransitionProgressFrom_withAbscissa_outNeighbor___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (([*(a1 + 32) isEqual:?] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)_indexPathOfItemClosestToAbscissa:(double)a3
{
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__46541;
  v65 = __Block_byref_object_dispose__46542;
  v66 = 0;
  v6 = [(PUSectionedTilingLayout *)self leftToRight];
  v7 = [(PUSectionedTilingLayout *)self computedSections];
  v9 = v7 + v8;
  if (v7 < (v7 + v8))
  {
    v10 = v9 - 1;
    while (1)
    {
      [(PUSectionedTilingLayout *)self boundsForSection:v7];
      v15 = v11;
      v16 = v12;
      v17 = v13;
      v18 = v14;
      if (v6)
      {
        v19 = CGRectGetMinX(*&v11) >= a3;
      }

      else
      {
        v19 = CGRectGetMaxX(*&v11) <= a3;
      }

      v20 = [(PUSectionedTilingLayout *)self numberOfItemsInSection:v7];
      v68.origin.x = v15;
      v68.origin.y = v16;
      v68.size.width = v17;
      v68.size.height = v18;
      if (CGRectGetMinX(v68) <= a3)
      {
        v72.origin.x = v15;
        v72.origin.y = v16;
        v72.size.width = v17;
        v72.size.height = v18;
        if (CGRectGetMaxX(v72) >= a3 && v20 >= 1)
        {
          v73.origin.x = v15;
          v73.origin.y = v16;
          v73.size.width = v17;
          v73.size.height = v18;
          MinX = CGRectGetMinX(v73);
          [(PUOneUpTilingLayout *)self _itemSize];
          v35 = v34;
          [(PUOneUpTilingLayout *)self interpageSpacing];
          v37 = (a3 - MinX) / (v35 + v36);
          v38 = v37;
          if (!v6)
          {
            v38 = v20 + ~v37;
          }

          if (v38 >= v20)
          {
            v39 = v20 - 1;
          }

          else
          {
            v39 = v38;
          }

          if (v38 >= 0)
          {
            v40 = v39;
          }

          else
          {
            v40 = 0;
          }

          v41 = [MEMORY[0x1E696AC88] indexPathForItem:v40 inSection:v7];
LABEL_36:
          v44 = v62[5];
          v62[5] = v41;
          goto LABEL_37;
        }
      }

      if (!v19)
      {
        if (v7 != v10 || v7 < 0)
        {
          goto LABEL_38;
        }

        v42 = v9;
        while ([(PUSectionedTilingLayout *)self numberOfItemsInSection:--v42]< 1)
        {
          if (v42 <= 0)
          {
            goto LABEL_38;
          }
        }

        v47 = [(PUSectionedTilingLayout *)self numberOfItemsInSection:v42];
        v41 = [MEMORY[0x1E696AC88] indexPathForItem:v47 - 1 inSection:v42];
        goto LABEL_36;
      }

      if (!v7)
      {
        v21 = 0;
LABEL_31:
        v43 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v21];
LABEL_32:
        v44 = v43;
        if (v43)
        {
          v45 = [(PUTilingLayout *)self dataSource];
          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = 3221225472;
          v60[2] = __57__PUOneUpTilingLayout__indexPathOfItemClosestToAbscissa___block_invoke;
          v60[3] = &unk_1E7B79E20;
          v60[4] = &v61;
          [v45 enumerateIndexPathsStartingAtIndexPath:v44 reverseDirection:1 usingBlock:v60];

          if (!v62[5])
          {
            v46 = [(PUTilingLayout *)self dataSource];
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __57__PUOneUpTilingLayout__indexPathOfItemClosestToAbscissa___block_invoke_2;
            v59[3] = &unk_1E7B79E20;
            v59[4] = &v61;
            [v46 enumerateIndexPathsStartingAtIndexPath:v44 reverseDirection:0 usingBlock:v59];
          }
        }

        goto LABEL_37;
      }

      v21 = v9 - 1;
      if (v7 == v10)
      {
        goto LABEL_31;
      }

      [(PUSectionedTilingLayout *)self boundsForSection:v7 - 1, v21];
      v57 = v24;
      v58 = v25;
      v26 = v22;
      v27 = v23;
      if (v6)
      {
        MaxX = CGRectGetMaxX(*&v22);
        v69.origin.x = v15;
        v69.origin.y = v16;
        v69.size.width = v17;
        v69.size.height = v18;
        if (MaxX <= CGRectGetMinX(v69))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v49 = CGRectGetMinX(*&v22);
        v74.origin.x = v15;
        v74.origin.y = v16;
        v74.size.width = v17;
        v74.size.height = v18;
        if (v49 >= CGRectGetMaxX(v74))
        {
          goto LABEL_42;
        }
      }

      v54 = [MEMORY[0x1E696AAA8] currentHandler];
      [v54 handleFailureInMethod:a2 object:self file:@"PUOneUpTilingLayout.m" lineNumber:1879 description:{@"Invalid parameter not satisfying: %@", @"leftToRight ? CGRectGetMaxX(previousSectionBounds) <= CGRectGetMinX(sectionBounds) : CGRectGetMinX(previousSectionBounds) >= CGRectGetMaxX(sectionBounds)"}];

      if (!v6)
      {
LABEL_42:
        v75.origin.x = v26;
        v75.origin.y = v27;
        v75.size.width = v57;
        v75.size.height = v58;
        v50 = CGRectGetMinX(v75);
        v76.origin.x = v15;
        v76.origin.y = v16;
        v76.size.width = v17;
        v76.size.height = v18;
        v51 = CGRectGetMaxX(v76);
        v31 = v50 - a3;
        v32 = a3 - v51;
        goto LABEL_43;
      }

LABEL_12:
      v70.origin.x = v26;
      v70.origin.y = v27;
      v70.size.width = v57;
      v70.size.height = v58;
      v29 = CGRectGetMaxX(v70);
      v71.origin.x = v15;
      v71.origin.y = v16;
      v71.size.width = v17;
      v71.size.height = v18;
      v30 = CGRectGetMinX(v71);
      v31 = a3 - v29;
      v32 = v30 - a3;
LABEL_43:
      if (v31 > v32)
      {
        v43 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v7];
        goto LABEL_32;
      }

      v52 = v7;
      if (v7 >= 1)
      {
        while ([(PUSectionedTilingLayout *)self numberOfItemsInSection:--v52]< 1)
        {
          v44 = 0;
          if (v52 <= 0)
          {
            goto LABEL_37;
          }
        }

        v53 = [(PUSectionedTilingLayout *)self numberOfItemsInSection:v52];
        v43 = [MEMORY[0x1E696AC88] indexPathForItem:v53 - 1 inSection:v52];
        goto LABEL_32;
      }

      v44 = 0;
LABEL_37:

LABEL_38:
      v48 = v62[5];
      if (v48)
      {
        goto LABEL_54;
      }

      if (++v7 == v9)
      {
        v48 = 0;
        goto LABEL_54;
      }
    }
  }

  v48 = v62[5];
LABEL_54:
  v55 = v48;
  _Block_object_dispose(&v61, 8);

  return v55;
}

- (void)_getLayoutRect:(CGRect *)a3 transform:(CGAffineTransform *)a4 parallaxOffset:(CGPoint *)a5 contentsRect:(CGRect *)a6 alpha:(double *)a7 forContentOfItemAtIndexPath:(id)a8 options:(unint64_t)a9
{
  v174 = *MEMORY[0x1E69E9840];
  v13 = a8;
  [(PUOneUpTilingLayout *)self _untransformedRectForItemAtIndexPath:v13];
  v165.origin.x = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(PUOneUpTilingLayout *)self _displayTileTransformForItemAtIndexPath:v13 options:a9];
  if (self->_delegateFlags.respondsToWillApplyDisplayTransform)
  {
    v22 = [(PUOneUpTilingLayout *)self delegate];
    [v22 layout:self willApplyDisplayTileTransform:v21 forItemAtIndexPath:v13];
  }

  v169 = 0u;
  v170 = 0u;
  v168 = 0u;
  if (v21)
  {
    [v21 affineTransform];
  }

  v23 = MEMORY[0x1E695EFF8];
  v24 = *MEMORY[0x1E695EFF8];
  v25 = *(MEMORY[0x1E695EFF8] + 8);
  if ((a9 & 2) == 0)
  {
    [(PUOneUpTilingLayout *)self _contentOffsetForItemAtIndexPath:v13];
    v24 = v26;
    v25 = v27;
  }

  [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v13];
  v158 = v29;
  v160 = v28;
  v31 = v30;
  v33 = v32;
  v167 = *v23;
  v165.size.height = 0.0;
  v166 = 0.0;
  v165.size.width = 0.0;
  *transform = v168;
  *&transform[16] = v169;
  *&transform[32] = v170;
  PUDecomposeTransform(transform, &v167, &v166, &v165.size.height, &v165.size.width);
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    v34 = PXAssertGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      *transform = v168;
      *&transform[16] = v169;
      *&transform[32] = v170;
      v131 = NSStringFromCGAffineTransform(transform);
      v164 = [(PUOneUpTilingLayout *)self delegate];
      v202.size.height = v158;
      v202.origin.x = v160;
      v202.origin.y = v31;
      v202.size.width = v33;
      v132 = NSStringFromCGRect(v202);
      *transform = 138413570;
      *&transform[4] = v131;
      *&transform[12] = 2112;
      *&transform[14] = v21;
      *&transform[22] = 2112;
      *&transform[24] = self;
      *&transform[32] = 2112;
      *&transform[34] = v164;
      *&transform[42] = 2112;
      *&transform[44] = v13;
      v172 = 2112;
      v173 = v132;
      v133 = v132;
      _os_log_fault_impl(&dword_1B36F3000, v34, OS_LOG_TYPE_FAULT, "Invalid affine transform (%@) from displayTileTransform %@: 1-up layout doesn't support shearing transforms. layout=%@; delegate=%@; indexPath=%@, pageRect=%@", transform, 0x3Eu);
    }
  }

  v176.origin.x = v165.origin.x;
  v176.origin.y = v16;
  v176.size.width = v18;
  v176.size.height = v20;
  MidX = CGRectGetMidX(v176);
  v177.origin.x = v165.origin.x;
  v177.origin.y = v16;
  v177.size.width = v18;
  v177.size.height = v20;
  MidY = CGRectGetMidY(v177);
  v154 = v33;
  rect = v16;
  v156 = v31;
  if (self->_delegateFlags.respondsToShouldUseSquareImageInAccessoryForItemAtIndexPath)
  {
    v36 = [(PUOneUpTilingLayout *)self delegate];
    v37 = [v36 layout:self shouldUseSquareImageInAccessoryForItemAtIndexPath:v13];

    if (v37)
    {
      v144 = MidY;
      v145 = a4;
      v147 = a5;
      v38 = [MEMORY[0x1E69DC668] sharedApplication];
      v39 = [v38 windows];
      v40 = [v39 firstObject];
      v41 = [v40 windowScene];
      v42 = [v41 interfaceOrientation];

      v43 = [MEMORY[0x1E69DC938] currentDevice];
      v44 = [v43 userInterfaceIdiom];

      if (v44)
      {
        v45 = 1;
      }

      else
      {
        v45 = (v42 - 3) >= 2;
      }

      v46 = !v45;
      v178.origin.x = v160;
      v178.origin.y = v31;
      v178.size.width = v33;
      v178.size.height = v158;
      Width = CGRectGetWidth(v178);
      v179.origin.x = v160;
      v179.origin.y = v31;
      v179.size.width = v33;
      v179.size.height = v158;
      Height = CGRectGetHeight(v179);
      if (self->_delegateFlags.respondsToBestSquareRectForItemAtIndexPath)
      {
        v47 = [(PUOneUpTilingLayout *)self delegate];
        [v47 layout:self bestSquareRectForItemAtIndexPath:v13];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v55 = v54;
      }

      else
      {
        v49 = *MEMORY[0x1E695F058];
        v51 = *(MEMORY[0x1E695F058] + 8);
        v53 = *(MEMORY[0x1E695F058] + 16);
        v55 = *(MEMORY[0x1E695F058] + 24);
      }

      v59 = a7;
      v180.origin.x = v49;
      v180.origin.y = v51;
      v180.size.width = v53;
      v180.size.height = v55;
      if (CGRectIsEmpty(v180))
      {
        v181.origin.x = v165.origin.x;
        v181.origin.y = rect;
        v181.size.width = v18;
        v181.size.height = v20;
        CGRectGetWidth(v181);
        v182.origin.x = v165.origin.x;
        v182.origin.y = rect;
        v182.size.width = v18;
        v182.size.height = v20;
        CGRectGetHeight(v182);
        PXRectWithAspectRatioFittingRect();
        PXRectNormalize();
        v49 = v60;
        v51 = v61;
        v53 = v62;
        v55 = v63;
      }

      v152 = v55;
      v64 = v25;
      if (v59)
      {
        v64 = v25;
        if ((a9 & 2) != 0)
        {
          [(PUOneUpTilingLayout *)self _contentOffsetForItemAtIndexPath:v13];
        }
      }

      v137 = v53;
      v138 = v51;
      if (v64 >= 0.0)
      {
        v57 = v20;
        v58 = v18;
        a4 = v145;
        a5 = v147;
        v68 = v55;
LABEL_60:
        if (a6)
        {
          if ((a9 & 2) != 0)
          {
            v87 = *(MEMORY[0x1E69C48E0] + 16);
            a6->origin = *MEMORY[0x1E69C48E0];
            a6->size = v87;
          }

          else
          {
            [PUOneUpTilingLayout rectForFittingToTargetPixelSize:v58 imagePixelSize:v57 bestSquareUnitRect:v18, v20, v49, v138, v137, v68];
            a6->origin.x = v88;
            a6->origin.y = v89;
            a6->size.width = v90;
            a6->size.height = v91;
          }
        }

        MidY = v144;
        goto LABEL_65;
      }

      v149 = v24;
      v150 = v20;
      if (Width >= Height)
      {
        v65 = Height;
      }

      else
      {
        v65 = Width;
      }

      v136 = v64;
      if (v46)
      {
        PXSizeGetAspectRatio();
        v66 = v65;
        if (v67 <= 2.0)
        {
          v65 = Width - Height;
        }
      }

      else
      {
        v69 = +[PUOneUpSettings sharedInstance];
        v70 = [v69 squareImageCapToHalfHeight];

        v71 = Height * 0.5;
        if (Height * 0.5 >= v65)
        {
          v71 = v65;
        }

        if (v70)
        {
          v66 = v71;
        }

        else
        {
          v66 = v65;
        }
      }

      v183.origin.x = v160;
      v183.origin.y = v156;
      v183.size.width = v65;
      v183.size.height = v66;
      v140 = CGRectGetWidth(v183);
      v184.origin.x = v165.origin.x;
      v184.origin.y = rect;
      v184.size.width = v18;
      v184.size.height = v20;
      v135 = v140 - CGRectGetWidth(v184);
      v185.origin.x = v160;
      v185.origin.y = v156;
      v185.size.width = v65;
      v141 = v66;
      v185.size.height = v66;
      v72 = CGRectGetHeight(v185);
      v186.origin.x = v165.origin.x;
      v186.origin.y = rect;
      v186.size.width = v18;
      v186.size.height = v20;
      v73 = v72 - CGRectGetHeight(v186);
      if (v46)
      {
        v74 = v73;
        v187.origin.x = v165.origin.x;
        v187.origin.y = rect;
        v187.size.width = v18;
        v187.size.height = v150;
        v75 = Height + (Height - CGRectGetHeight(v187)) * -0.5;
        [(PUOneUpTilingLayout *)self contentGuideInsets];
        v77 = fabs(v136) / (v75 - v76);
        if (v77 <= 1.0)
        {
          v78 = v77;
        }

        else
        {
          v78 = 1.0;
        }

        v143 = v78;
        if ((a9 & 2) != 0)
        {
          v57 = v150;
          v58 = v18;
          a4 = v145;
          a5 = v147;
          v20 = v150;
LABEL_54:
          v24 = v149;
          goto LABEL_58;
        }

        v58 = v18 + v135 * v78;
        v57 = v150 + v74 * v78;
        v190.origin.x = v160;
        v190.origin.y = v156;
        v134 = v65;
        v190.size.width = v65;
        v190.size.height = v141;
        CGRectGetMaxX(v190);
        v191.origin.x = v165.origin.x;
        v191.origin.y = rect;
        v191.size.width = v18;
        v191.size.height = v150;
        CGRectGetMaxX(v191);
        v192.origin.x = v165.origin.x;
        v192.origin.y = rect;
        v192.size.width = v18;
        v192.size.height = v150;
        CGRectGetMaxX(v192);
        PXRectGetCenter();
        MidX = v81;
        v193.origin.x = v160;
        v193.origin.y = v156;
        v193.size.width = v65;
        v193.size.height = v141;
        CGRectGetMaxY(v193);
        v194.origin.x = v165.origin.x;
        v194.origin.y = rect;
        v194.size.width = v18;
        v194.size.height = v150;
        CGRectGetMaxY(v194);
        v195.origin.x = v165.origin.x;
        v195.origin.y = rect;
        v195.size.width = v18;
        v195.size.height = v150;
        CGRectGetMaxY(v195);
        PXRectGetCenter();
        v144 = v82;
        PXPointMultiplyWithFloat();
        v167.x = v83;
        v167.y = v84;
        a4 = v145;
        a5 = v147;
        v20 = v150;
        v25 = 0.0;
      }

      else
      {
        v188.origin.x = v160;
        v188.origin.y = v156;
        v188.size.width = v65;
        v188.size.height = v141;
        MaxY = CGRectGetMaxY(v188);
        v189.origin.x = v165.origin.x;
        v189.origin.y = rect;
        v189.size.width = v18;
        v189.size.height = v20;
        v80 = fabs(v136 / (MaxY - CGRectGetMaxY(v189)));
        if (v80 > 1.0)
        {
          v80 = 1.0;
        }

        v143 = v80;
        if ((a9 & 2) != 0)
        {
          v57 = v20;
          v58 = v18;
          a4 = v145;
          a5 = v147;
          goto LABEL_54;
        }

        v85 = v73;
        v58 = v18 + v135 * v80;
        v57 = v20 + v85 * v80;
        PXRectGetCenter();
        v144 = v86;
        v196.origin.x = v165.origin.x;
        v196.origin.y = rect;
        v196.size.width = v18;
        v196.size.height = v20;
        v25 = v136 + CGRectGetMaxY(v196) - v57;
        a4 = v145;
        a5 = v147;
      }

      v24 = v149;
LABEL_58:
      v68 = v152;
      if (v59)
      {
        *v59 = v143;
      }

      goto LABEL_60;
    }
  }

  if (a6)
  {
    v56 = *(MEMORY[0x1E69C48E0] + 16);
    a6->origin = *MEMORY[0x1E69C48E0];
    a6->size = v56;
  }

  v57 = v20;
  v58 = v18;
LABEL_65:
  v92 = MidY + v167.y + v25;
  v93 = v58 * v166;
  v94 = v57 * v166;
  v95 = MidX + v167.x + v24 - v93 * 0.5;
  v96 = v92 - v57 * v166 * 0.5;
  CGAffineTransformMakeRotation(transform, v165.size.width);
  v168 = *transform;
  v169 = *&transform[16];
  v170 = *&transform[32];
  if (([v21 hasUserInput] & 1) == 0)
  {
    v153 = v18;
    v197.size.height = v158;
    v197.origin.x = v160;
    v197.origin.y = v156;
    v197.size.width = v154;
    v198 = CGRectOffset(v197, v24, v25);
    y = v198.origin.y;
    v159 = v198.size.width;
    x = v198.origin.x;
    v157 = v198.size.height;
    v203.origin.x = v95;
    v203.origin.y = v96;
    v203.size.width = v93;
    v203.size.height = v94;
    v199 = CGRectIntersection(v198, v203);
    v98 = v199.origin.x;
    v99 = v199.origin.y;
    v100 = v199.size.width;
    v101 = v199.size.height;
    if (a5)
    {
      v102 = [(PUOneUpTilingLayout *)self parallaxComputer];
      [(PUTilingLayout *)self visibleRect];
      [v102 contentParallaxOffsetForViewFrame:v98 visibleRect:{v99, v100, v101, v103, v104, v105, v106}];
    }

    if (!PXFloatApproximatelyEqualToFloat() || !PXFloatApproximatelyEqualToFloat() || (PXFloatApproximatelyEqualToFloat() & 1) == 0)
    {
      v107 = PLOneUpGetLog();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        v146 = a4;
        v148 = a5;
        v108 = NSStringFromCGPoint(v167);
        v109 = v165.size.width;
        v200.origin.x = v165.origin.x;
        v200.origin.y = rect;
        v200.size.height = v20;
        v200.size.width = v153;
        v110 = NSStringFromCGRect(v200);
        if (v21)
        {
          [v21 affineTransform];
        }

        else
        {
          memset(transform, 0, 48);
        }

        v111 = NSStringFromCGAffineTransform(transform);
        v201.size.width = v159;
        v201.origin.x = x;
        v201.origin.y = y;
        v201.size.height = v157;
        v112 = NSStringFromCGRect(v201);
        v175.x = v24;
        v175.y = v25;
        v113 = NSStringFromCGPoint(v175);
        *transform = 138413570;
        *&transform[4] = v108;
        *&transform[12] = 2048;
        *&transform[14] = v109;
        *&transform[22] = 2112;
        *&transform[24] = v110;
        *&transform[32] = 2112;
        *&transform[34] = v111;
        *&transform[42] = 2112;
        *&transform[44] = v112;
        v172 = 2112;
        v173 = v113;
        _os_log_impl(&dword_1B36F3000, v107, OS_LOG_TYPE_DEFAULT, "Clipped tile doesn't appear to be centered, the content might not be displayed properly. translation=%@; rotation=%f; untransformedRect=%@, affineTransform=%@, pageRect=%@, contentOffset=%@", transform, 0x3Eu);

        a4 = v146;
        a5 = v148;
      }
    }
  }

  [(PUOneUpTilingLayout *)self shouldPinContentToTop];
  v114 = [(PUOneUpTilingLayout *)self traitCollection];
  [v114 displayScale];
  v116 = v115;

  if (v116 == 0.0)
  {
    v117 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [v117 scale];
  }

  PXPointRoundToPixel();
  v119 = v118;
  v121 = v120;
  PXSizeRoundToPixel();
  v123 = v122;
  v125 = v124;
  v126 = PXFloatApproximatelyEqualToFloat();
  PXPointRoundToPixel();
  if (a3)
  {
    v129 = 0.0;
    if (!v126)
    {
      v129 = v121;
    }

    a3->origin.x = v119;
    a3->origin.y = v129;
    a3->size.width = v123;
    a3->size.height = v125;
  }

  if (a4)
  {
    v130 = v169;
    *&a4->a = v168;
    *&a4->c = v130;
    *&a4->tx = v170;
  }

  if (a5)
  {
    a5->x = v127;
    a5->y = v128;
  }
}

- (id)_displayTileTransformForItemAtIndexPath:(id)a3 pageSize:(CGSize)a4 secondaryDisplayTransform:(id)a5 options:(unint64_t)a6
{
  v6 = a6;
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = a5;
  if ((v6 & 1) != 0 || !self->_delegateFlags.respondsToModelTileTransformForItemAtIndexPath || (-[PUOneUpTilingLayout delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), [v13 layout:self modelTileTransformForItemAtIndexPath:v11], v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
  {
    v14 = [[PUModelTileTransform alloc] initWithNoUserInput];
  }

  [(PUOneUpTilingLayout *)self _untransformedRectForItemAtIndexPath:v11 pageRect:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
  v16 = v15;
  v18 = v17;
  if (self->_delegateFlags.respondsToShouldInitiallyZoomToFillForItemAtIndexPath)
  {
    v19 = [(PUOneUpTilingLayout *)self delegate];
    v20 = [v19 layout:self shouldInitiallyZoomToFillForItemAtIndexPath:v11 contentSize:v16 viewportSize:{v18, width, height}];

    v21 = 1.0;
    if (v20)
    {
      v22 = [MEMORY[0x1E69C3738] sharedInstance];
      [v22 zoomFactorForContentWithSize:v16 toFillViewWithSize:{v18, width, height}];
      v21 = v23;
    }
  }

  else
  {
    v21 = 1.0;
  }

  v24 = [PUDisplayTileTransform displayTileTransformWithModelTileTransform:v14 initialScale:v12 initialSize:v21 displaySize:v16 secondaryDisplayTileTransform:v18, width, height];

  return v24;
}

- (id)_displayTileTransformForItemAtIndexPath:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  [(PUOneUpTilingLayout *)self displaySizeForInsetMatching];
  if (v8 == *MEMORY[0x1E695F060] && v7 == *(MEMORY[0x1E695F060] + 8))
  {
    v10 = 0;
  }

  else
  {
    v10 = [(PUOneUpTilingLayout *)self _displayTileTransformForItemAtIndexPath:v6 pageSize:0 secondaryDisplayTransform:a4 options:?];
  }

  [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v6];
  v13 = [(PUOneUpTilingLayout *)self _displayTileTransformForItemAtIndexPath:v6 pageSize:v10 secondaryDisplayTransform:a4 options:v11, v12];

  return v13;
}

- (CGRect)_untransformedRectForItemAtIndexPath:(id)a3 pageRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v9 = 1.0;
  if (self->_delegateFlags.respondsToAspectRatioForItemAtIndexPath)
  {
    v10 = [(PUOneUpTilingLayout *)self delegate];
    [v10 layout:self aspectRatioForItemAtIndexPath:v8];
    v9 = v11;
  }

  if (self->_delegateFlags.respondsToInsetsWhenScaledToFitForItemAtIndexPath)
  {
    v12 = [(PUOneUpTilingLayout *)self delegate];
    [v12 layout:self insetsWhenScaledToFitForItemAtIndexPath:v8 inViewportSize:{width, height}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *MEMORY[0x1E69DDCE0];
    v16 = *(MEMORY[0x1E69DDCE0] + 8);
    v18 = *(MEMORY[0x1E69DDCE0] + 16);
    v20 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  if ([(PUOneUpTilingLayout *)self useReviewScreenBars])
  {
    [PUReviewScreenUtilities reviewScreenContentGeometryForReferenceBounds:[(PUOneUpTilingLayout *)self windowInterfaceOrientation] forContentSize:x withOrientation:y, width, height, v9, 1.0];
    UIRectCenteredAboutPoint();
  }

  else
  {
    v25 = objc_opt_class();
    [(PUOneUpTilingLayout *)self minimumMarginForInsetContent];
    [v25 untransformedRectForItemWithAspectRatio:v9 pageRect:x safeInsets:y minimumInsetMargin:{width, height, v14, v16, v18, v20, v26}];
  }

  v27 = v21;
  v28 = v22;
  v29 = v23;
  v30 = v24;

  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGSize)_contentPixelSizeForItemAtIndexPath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_delegateFlags.respondsToPixelSizeForItemAtIndexPath)
  {
    v5 = [(PUOneUpTilingLayout *)self delegate];
    [v5 layout:self pixelSizeForItemAtIndexPath:v4];
    v7 = v6;
    v9 = v8;
  }

  else if (self->_delegateFlags.respondsToAspectRatioForItemAtIndexPath)
  {
    v10 = [(PUOneUpTilingLayout *)self delegate];
    [v10 layout:self aspectRatioForItemAtIndexPath:v4];

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v4];
    PFSizeWithAspectRatioFittingSize();
    v7 = v11;
    v9 = v12;
  }

  else
  {
    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_fault_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_FAULT, "Unable to get content pixel size for item at index path %@. Delegate must implement pixelSizeForItemAtIndexPath or aspectRatioForItemAtIndexPath.", &v16, 0xCu);
    }

    v7 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
  }

  v14 = v7;
  v15 = v9;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGRect)_untransformedRectForItemAtIndexPath:(id)a3
{
  v4 = a3;
  [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v4];
  [(PUOneUpTilingLayout *)self _untransformedRectForItemAtIndexPath:v4 pageRect:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_frameForTileWithSize:(CGSize)a3 centeredOnItemAtIndexPath:(id)a4
{
  v5 = a4;
  [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(MEMORY[0x1E695F058] + 16);
  v38.origin = *MEMORY[0x1E695F058];
  v38.size = v14;
  [(PUOneUpTilingLayout *)self _getLayoutRect:&v38 transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:v5 options:0];

  y = v38.origin.y;
  x = v38.origin.x;
  height = v38.size.height;
  width = v38.size.width;
  v45.origin.x = v7;
  rect_8 = v9;
  v45.origin.y = v9;
  v19 = v11;
  v45.size.width = v11;
  v20 = v13;
  v45.size.height = v13;
  if (CGRectIntersectsRect(v38, v45))
  {
    v46.origin.x = v7;
    v46.origin.y = rect_8;
    v21 = v19;
    v46.size.width = v19;
    v46.size.height = v20;
    v39 = CGRectIntersection(v38, v46);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v22 = a3.width + 20.0 - CGRectGetWidth(v39);
    if (v22 >= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0.0;
    }

    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v24 = a3.height + 20.0 - CGRectGetHeight(v40);
    if (v24 < 0.0)
    {
      v24 = 0.0;
    }

    v25 = rect_8;
    if (v23 > 0.0 || v24 > 0.0)
    {
      v26 = -v24;
      v27 = v7;
      v28 = v21;
      v29 = v20;
      v47 = CGRectInset(*(&v25 - 1), -v23, v26);
      v41 = CGRectIntersection(v38, v47);
      x = v41.origin.x;
      y = v41.origin.y;
      width = v41.size.width;
      height = v41.size.height;
    }
  }

  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MidX = CGRectGetMidX(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MidY = CGRectGetMidY(v43);
  v32 = a3.width;
  v33 = MidY - a3.height * 0.5;
  v34 = MidX - a3.width * 0.5;
  v35 = a3.height;
  result.size.height = v35;
  result.size.width = v32;
  result.origin.y = v33;
  result.origin.x = v34;
  return result;
}

- (CGRect)_pageRectForItemAtIndexPath:(id)a3
{
  v4 = a3;
  -[PUSectionedTilingLayout boundsForSection:](self, "boundsForSection:", [v4 section]);
  v6 = v5;
  v8 = v7;
  [(PUOneUpTilingLayout *)self _itemSize];
  v10 = v9;
  v12 = v11;
  [(PUOneUpTilingLayout *)self interpageSpacing];
  v14 = v13;
  v15 = -[PUSectionedTilingLayout numberOfItemsInSection:](self, "numberOfItemsInSection:", [v4 section]);
  LODWORD(self) = [(PUSectionedTilingLayout *)self leftToRight];
  v16 = [v4 item];

  v17 = v15 + ~v16;
  if (self)
  {
    v17 = v16;
  }

  v18 = v6 + v17 * (v10 + v14);
  v19 = v8;
  v20 = v10;
  v21 = v12;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGSize)_itemSize
{
  p_itemSize = &self->_itemSize;
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  if (width == -1.79769313e308 && height == -1.79769313e308)
  {
    [(PUOneUpTilingLayout *)self prepareLayout];
    width = p_itemSize->width;
    height = p_itemSize->height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)setUseSyndicationAttributionTile:(BOOL)a3
{
  if (self->_useSyndicationAttributionTile != a3)
  {
    self->_useSyndicationAttributionTile = a3;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindSyndicationAttribution];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setShouldHideMainContent:(BOOL)a3
{
  if (self->_shouldHideMainContent != a3)
  {
    self->_shouldHideMainContent = a3;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTiles];
    [(PUTilingLayout *)self invalidateLayoutWithContext:v5 updateImmediately:1];
  }
}

- (void)setUseVerticalReviewScreenControlBarLayout:(BOOL)a3
{
  if (self->_useVerticalReviewScreenControlBarLayout != a3)
  {
    self->_useVerticalReviewScreenControlBarLayout = a3;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindReviewScreenControlBar];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setShouldPinContentToTop:(BOOL)a3
{
  if (self->_shouldPinContentToTop != a3)
  {
    self->_shouldPinContentToTop = a3;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTiles];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setDisplaySizeForInsetMatching:(CGSize)a3
{
  if (a3.width != self->_displaySizeForInsetMatching.width || a3.height != self->_displaySizeForInsetMatching.height)
  {
    self->_displaySizeForInsetMatching = a3;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindUserTransform];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setCanDisplayLoadingIndicators:(BOOL)a3
{
  if (self->_canDisplayLoadingIndicators != a3)
  {
    self->_canDisplayLoadingIndicators = a3;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindLoadingIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setBufferingIndicatorSize:(CGSize)a3
{
  if (a3.width != self->_bufferingIndicatorSize.width || a3.height != self->_bufferingIndicatorSize.height)
  {
    self->_bufferingIndicatorSize = a3;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindBufferingIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setWindowInterfaceOrientation:(int64_t)a3
{
  if (self->_windowInterfaceOrientation != a3)
  {
    self->_windowInterfaceOrientation = a3;
    if ([(PUOneUpTilingLayout *)self useReviewScreenBars])
    {
      v4 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
      [(PUTilingLayoutInvalidationContext *)v4 invalidateAllTilesWithKind:PUTileKindReviewScreenTopBar];
      [(PUTilingLayoutInvalidationContext *)v4 invalidateAllTilesWithKind:PUTileKindReviewScreenControlBar];
      [(PUTilingLayoutInvalidationContext *)v4 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
      [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v4];
    }
  }
}

- (void)setUseAssetExplorerReviewScreenBadgeTiles:(BOOL)a3
{
  if (self->_useAssetExplorerReviewScreenBadgeTiles != a3)
  {
    self->_useAssetExplorerReviewScreenBadgeTiles = a3;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindAssetExplorerReviewScreenBadge];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setAssetExplorerReviewScreenProgressIndicatorSize:(CGSize)a3
{
  if (a3.width != self->_assetExplorerReviewScreenProgressIndicatorSize.width || a3.height != self->_assetExplorerReviewScreenProgressIndicatorSize.height)
  {
    self->_assetExplorerReviewScreenProgressIndicatorSize = a3;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindAssetExplorerReviewScreenProgressIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setRenderIndicatorSize:(CGSize)a3
{
  if (a3.width != self->_renderIndicatorSize.width || a3.height != self->_renderIndicatorSize.height)
  {
    self->_renderIndicatorSize = a3;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindRenderIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setProgressIndicatorContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_progressIndicatorContentInsets.top), vceqq_f64(v4, *&self->_progressIndicatorContentInsets.bottom)))) & 1) == 0)
  {
    self->_progressIndicatorContentInsets = a3;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setPeopleRowSize:(CGSize)a3
{
  if (a3.width != self->_peopleRowSize.width || a3.height != self->_peopleRowSize.height)
  {
    self->_peopleRowSize = a3;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindPeople];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setProgressIndicatorSize:(CGSize)a3
{
  if (a3.width != self->_progressIndicatorSize.width || a3.height != self->_progressIndicatorSize.height)
  {
    self->_progressIndicatorSize = a3;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setUseBadgeTiles:(BOOL)a3
{
  if (self->_useBadgeTiles != a3)
  {
    self->_useBadgeTiles = a3;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindBadge];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setPlayButtonSize:(CGSize)a3
{
  if (a3.width != self->_playButtonSize.width || a3.height != self->_playButtonSize.height)
  {
    self->_playButtonSize = a3;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindPlayButton];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setUseImportStatusIndicatorTiles:(BOOL)a3
{
  if (self->_useImportStatusIndicatorTiles != a3)
  {
    self->_useImportStatusIndicatorTiles = a3;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindImportStatusIndicator];
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setUseSelectionIndicatorTiles:(BOOL)a3
{
  if (self->_useSelectionIndicatorTiles != a3)
  {
    self->_useSelectionIndicatorTiles = a3;
    v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindSelectionIndicator];
    [(PUTilingLayoutInvalidationContext *)v5 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setInsetContentCornerRadius:(double)a3
{
  if (self->_insetContentCornerRadius != a3)
  {
    self->_insetContentCornerRadius = a3;
    [(PUOneUpTilingLayout *)self invalidateAllContentTiles];
  }
}

- (void)setInsetContentBorderColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_insetContentBorderColor != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_insetContentBorderColor, a3);
      v5 = [(PUOneUpTilingLayout *)self invalidateAllContentTiles];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setInsetContentBorderWidth:(double)a3
{
  if (self->_insetContentBorderWidth != a3)
  {
    self->_insetContentBorderWidth = a3;
    [(PUOneUpTilingLayout *)self invalidateAllContentTiles];
  }
}

- (void)setContentDecorationAdditionalInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentDecorationAdditionalInsets.top), vceqq_f64(v4, *&self->_contentDecorationAdditionalInsets.bottom)))) & 1) == 0)
  {
    self->_contentDecorationAdditionalInsets = a3;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindSelectionIndicator];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindAssetExplorerReviewScreenProgressIndicator];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindPeople];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindImportStatusIndicator];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindRenderIndicator];
    [(PUOneUpTilingLayoutInvalidationContext *)v6 invalidatedContentInsets];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setContentSafeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentSafeInsets.top), vceqq_f64(v4, *&self->_contentSafeInsets.bottom)))) & 1) == 0)
  {
    self->_contentSafeInsets = a3;
    v6 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
    [(PUOneUpTilingLayoutInvalidationContext *)v6 _setInvalidatedContentInsets:1];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
    [(PUTilingLayoutInvalidationContext *)v6 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)invalidateAllContentTiles
{
  v3 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
  [(PUOneUpTilingLayoutInvalidationContext *)v3 _setInvalidatedContentInsets:1];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindUserTransform];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindBadge];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindBufferingIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindLoadingIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindPlayButton];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindProgressIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindPeople];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindRenderIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindImportStatusIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindAccessory];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindAssetExplorerReviewScreenBadge];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindSelectionIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindAssetExplorerReviewScreenProgressIndicator];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindSyndicationAttribution];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindCropButton];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:PUTileKindLivePhotoVideoPlaybackOverlay];
  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (void)invalidatePrimaryContentTiles
{
  v3 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
  [(PUOneUpTilingLayoutInvalidationContext *)v3 _setInvalidatedContentInsets:1];
  [(PUTilingLayoutInvalidationContext *)v3 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (BOOL)_shouldShowRenderIndicatorForIndexPath:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  if ([a3 length] != 2)
  {
    return 0;
  }

  if (height == *(MEMORY[0x1E695F060] + 8))
  {
    return width != *MEMORY[0x1E695F060];
  }

  return 1;
}

- (BOOL)_isVideoPlacholderVisibleForItemAtIndexPath:(id)a3
{
  if (!self->_delegateFlags.respondsToShouldShowVideoPlaceholderForItemAtIndexPath)
  {
    return 0;
  }

  v3 = self;
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&v3->_delegate);
  LOBYTE(v3) = [WeakRetained layout:v3 shouldShowVideoPlaceholderForItemAtIndexPath:v4];

  return v3;
}

- (BOOL)_isShowingInfoPanelForItemAtIndexPath:(id)a3
{
  if (!self->_delegateFlags.respondsToIsShowingInfoPanelForItemAtIndexPath)
  {
    return 0;
  }

  v3 = self;
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&v3->_delegate);
  LOBYTE(v3) = [WeakRetained layout:v3 isShowingInfoPanelForItemAtIndexPath:v4];

  return v3;
}

- (BOOL)_accessoryViewVisibilityForItemAtIndexPath:(id)a3
{
  if (!self->_delegateFlags.respondsToShouldShowAccessoryForItemAtIndexPath)
  {
    return 0;
  }

  v3 = self;
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&v3->_delegate);
  LOBYTE(v3) = [WeakRetained layout:v3 shouldShowAccessoryForItemAtIndexPath:v4];

  return v3;
}

- (CGPoint)_contentOffsetForItemAtIndexPath:(id)a3
{
  if (self->_delegateFlags.respondsToContentOffsetForItemAtIndexPath)
  {
    v4 = a3;
    v5 = [(PUOneUpTilingLayout *)self delegate];
    [v5 layout:self contentOffsetForItemAtIndexPath:v4];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)invalidateProgressIndicatorForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PUTilingLayoutInvalidationContext);
  [(PUTilingLayoutInvalidationContext *)v5 invalidateTileWithIndexPath:v4 kind:PUTileKindProgressIndicator];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
}

- (void)invalidateLoadingIndicatorForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PUTilingLayoutInvalidationContext);
  [(PUTilingLayoutInvalidationContext *)v5 invalidateTileWithIndexPath:v4 kind:PUTileKindLoadingIndicator];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
}

- (void)invalidateVideoPlaceholderForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
  [(PUOneUpTilingLayoutInvalidationContext *)v5 _setInvalidatedVideoPlaceholderTile:1];
  [(PUTilingLayoutInvalidationContext *)v5 invalidateTileWithIndexPath:v4 kind:PUTileKindVideoPlaceholder];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
}

- (void)_invalidateContentRelatedTilesWithIndexPath:(id)a3 inContext:(id)a4
{
  v6 = a4;
  v5 = a3;
  [v6 invalidateTileWithIndexPath:v5 kind:@"PUTileKindItemContent"];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindUserTransform];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindBadge];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindPlayButton];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindProgressIndicator];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindPeople];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindRenderIndicator];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindImportStatusIndicator];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindBufferingIndicator];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindLoadingIndicator];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindAccessory];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindAssetExplorerReviewScreenBadge];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindSelectionIndicator];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindAssetExplorerReviewScreenProgressIndicator];
  [v6 invalidateTileWithIndexPath:v5 kind:PUTileKindCropButton];

  [v6 invalidateAllTilesWithKind:PUTileKindLivePhotoVideoPlaybackOverlay];
}

- (void)invalidateContentOffsetForItemAtIndexPath:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
  [(PUOneUpTilingLayoutInvalidationContext *)v7 _setInvalidatedContentOffset:1];
  [(PUOneUpTilingLayoutInvalidationContext *)v7 _setOptions:a4];
  [(PUOneUpTilingLayout *)self _invalidateContentRelatedTilesWithIndexPath:v6 inContext:v7];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v7];
}

- (void)invalidateAccessoryForItemAtIndexPath:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(PUOneUpTilingLayoutInvalidationContext);
  [(PUOneUpTilingLayoutInvalidationContext *)v7 _setInvalidatedAccessoryTile:1];
  [(PUOneUpTilingLayoutInvalidationContext *)v7 _setOptions:a4];
  [(PUOneUpTilingLayout *)self _invalidateContentRelatedTilesWithIndexPath:v6 inContext:v7];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v7];
}

- (void)invalidateModelTileTransformForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PUTilingLayoutInvalidationContext);
  [(PUOneUpTilingLayout *)self _invalidateContentRelatedTilesWithIndexPath:v4 inContext:v5];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
}

- (void)invalidateBadgeSizeForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PUTilingLayoutInvalidationContext);
  [(PUTilingLayoutInvalidationContext *)v5 invalidateTileWithIndexPath:v4 kind:PUTileKindBadge];
  [(PUTilingLayoutInvalidationContext *)v5 invalidateTileWithIndexPath:v4 kind:PUTileKindAssetExplorerReviewScreenBadge];

  [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v5];
}

- (CGRect)visibleRectForItemAtIndexPath:(id)a3 transitionProgress:(double)a4
{
  v6 = a3;
  [(PUOneUpTilingLayout *)self _itemSize];
  v8 = v7;
  [(PUOneUpTilingLayout *)self interpageSpacing];
  v10 = v8 + v9;
  if ([(PUSectionedTilingLayout *)self leftToRight])
  {
    v11 = v10 * a4;
  }

  else
  {
    v11 = -(v10 * a4);
  }

  [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v6];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;

  return CGRectOffset(*&v20, v11, 0.0);
}

- (UIEdgeInsets)_cropInsetsForTileAtIndexPath:(id)a3 layoutRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(PUOneUpTilingLayout *)self delegate];
  v11 = [v10 layout:self insetModeForItemAtIndexPath:v9];

  if (v11 == 1)
  {
    v43 = width;
    v44 = height;
    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v9];
    v45 = v15;
    v46 = v14;
    if (self->_delegateFlags.respondsToInsetsWhenScaledToFitForItemAtIndexPath)
    {
      v16 = v12;
      v17 = v13;
      v18 = [(PUOneUpTilingLayout *)self delegate];
      [v18 layout:self insetsWhenScaledToFitForItemAtIndexPath:v9 inViewportSize:{v46, v45}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v15 = v45;
      v14 = v46;
      v13 = v17;
      v12 = v16;
    }

    else
    {
      v20 = *MEMORY[0x1E69DDCE0];
      v22 = *(MEMORY[0x1E69DDCE0] + 8);
      v24 = *(MEMORY[0x1E69DDCE0] + 16);
      v26 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v31 = v12 + v22;
    v32 = v13 + v20;
    v33 = v14 - (v26 + v22);
    v34 = v15 - (v24 + v20);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = v43;
    v47.size.height = v44;
    if (!CGRectIsNull(v47))
    {
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = v43;
      v48.size.height = v44;
      v50.origin.x = v31;
      v50.origin.y = v32;
      v50.size.width = v33;
      v50.size.height = v34;
      CGRectIntersection(v48, v50);
    }

    PXEdgeInsetsBetweenRects();
    PXEdgeInsetsMaxEachEdge();
    v27 = v35;
    v28 = v36;
    v29 = v37;
    v30 = v38;
  }

  else
  {
    v27 = *MEMORY[0x1E69C48A0];
    v28 = *(MEMORY[0x1E69C48A0] + 8);
    v29 = *(MEMORY[0x1E69C48A0] + 16);
    v30 = *(MEMORY[0x1E69C48A0] + 24);
  }

  v39 = v27;
  v40 = v28;
  v41 = v29;
  v42 = v30;
  result.right = v42;
  result.bottom = v41;
  result.left = v40;
  result.top = v39;
  return result;
}

- (id)_createLayoutInfoForTileWithIndexPath:(id)a3 kind:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PUSectionedTilingLayout *)self leftToRight];
  if ([v8 isEqualToString:@"PUTileKindItemContent"])
  {
    if ([v7 length] == 2)
    {
      v10 = *(MEMORY[0x1E695F058] + 16);
      slice.origin = *MEMORY[0x1E695F058];
      slice.size = v10;
      v11 = *(MEMORY[0x1E695EFD0] + 16);
      v668.origin = *MEMORY[0x1E695EFD0];
      v668.size = v11;
      v669 = *(MEMORY[0x1E695EFD0] + 32);
      v676 = *MEMORY[0x1E695EFF8];
      v12 = *(MEMORY[0x1E69C48E0] + 16);
      v674 = *MEMORY[0x1E69C48E0];
      v675 = v12;
      [(PUOneUpTilingLayout *)self _getLayoutRect:&slice transform:&v668 parallaxOffset:&v676 contentsRect:&v674 alpha:0 forContentOfItemAtIndexPath:v7 options:0];
      v13 = [(PUOneUpTilingLayout *)self shouldHideMainContent];
      v14 = 1.0;
      if (v13)
      {
        v14 = 0.0;
      }

      rect = v14;
      if ([(PUOneUpTilingLayout *)self _shouldApplyInsetStylingToContentWithRect:v7 indexPath:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height])
      {
        [(PUOneUpTilingLayout *)self _insetContentCornerRadiusForItemAtIndexPath:v7];
        rect1 = v15;
        v16 = *MEMORY[0x1E69796E8];
        v17 = [(PUOneUpTilingLayout *)self insetContentBorderColor];
        [(PUOneUpTilingLayout *)self insetContentBorderWidth];
        v651 = v18;
        v19 = 15;
      }

      else
      {
        v45 = +[PUOneUpSettings sharedInstance];
        [v45 itemContentCornerRadius];
        rect1 = v46;

        v16 = *MEMORY[0x1E69796E8];
        v17 = 0;
        v19 = 0;
        v651 = 0.0;
      }

      [(PUOneUpTilingLayout *)self _cropInsetsForTileAtIndexPath:v7 layoutRect:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
      v647 = v47;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v54 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
      v55 = [PUParallaxedTileLayoutInfo alloc];
      x = slice.origin.x;
      y = slice.origin.y;
      width = slice.size.width;
      height = slice.size.height;
      MidX = CGRectGetMidX(slice);
      v680.origin.x = x;
      v680.origin.y = y;
      v680.size.width = width;
      v680.size.height = height;
      MidY = CGRectGetMidY(v680);
      v62 = [(PUTilingLayout *)self coordinateSystem];
      remainder = v668;
      v673 = v669;
      v34 = [(PUParallaxedTileLayoutInfo *)v55 initWithTileIdentifier:v54 center:v16 size:v19 alpha:v17 cornerRadius:&remainder cornerCurve:v62 cornerMask:MidX borderWidth:MidY borderColor:slice.size.width transform:slice.size.height zPosition:rect parallaxOffset:rect1 contentsRect:v651 coordinateSystem:0.0 cropInsets:v676 normalizedLegibilityInsets:*&v674, v675, v647, v49, v51, v53, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];

LABEL_19:
      goto LABEL_20;
    }

    goto LABEL_219;
  }

  if ([v8 isEqualToString:PUTileKindBackground])
  {
    if (![v7 length] && -[PUOneUpTilingLayout useBackgroundTile](self, "useBackgroundTile"))
    {
      [(PUTilingLayout *)self visibleRect];
      PXRectScaleFromCenter();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
      v28 = [PUTileLayoutInfo alloc];
      v678.origin.x = v21;
      v678.origin.y = v23;
      v678.size.width = v25;
      v678.size.height = v27;
      v29 = CGRectGetMidX(v678);
      v679.origin.x = v21;
      v679.origin.y = v23;
      v679.size.width = v25;
      v679.size.height = v27;
      v30 = CGRectGetMidY(v679);
      v31 = *&PUTilingLayoutBackgroundZPosition;
      v32 = [(PUTilingLayout *)self coordinateSystem];
      v33 = *(MEMORY[0x1E695EFD0] + 16);
      v668.origin = *MEMORY[0x1E695EFD0];
      v668.size = v33;
      v669 = *(MEMORY[0x1E695EFD0] + 32);
      v34 = [(PUTileLayoutInfo *)v28 initWithTileIdentifier:v16 center:&v668 size:v32 alpha:v29 transform:v30 zPosition:v25 coordinateSystem:v27, 1.0, v31];

      [(PUTilingLayout *)self visibleRect];
      PXEdgeInsetsBetweenRects();
      [(PUTileLayoutInfo *)v34 setExpandedRectInsets:?];
LABEL_20:

      goto LABEL_220;
    }

    goto LABEL_219;
  }

  if ([v8 isEqualToString:PUTileKindReviewScreenTopBar])
  {
    if (!-[PUOneUpTilingLayout useReviewScreenBars](self, "useReviewScreenBars") || [v7 length])
    {
      goto LABEL_219;
    }

    [(PUTilingLayout *)self visibleRect];
    v671 = 0u;
    v669 = 0u;
    memset(&v670, 0, sizeof(v670));
    memset(&v668, 0, sizeof(v668));
    [PUReviewScreenUtilities reviewScreenTopBarGeometryForReferenceBounds:[(PUOneUpTilingLayout *)self windowInterfaceOrientation] withOrientation:v35, v36, v37, v38];
    memset(&remainder, 0, sizeof(remainder));
    v673 = 0u;
    v39 = 1.0;
    if (self->_delegateFlags.respondsToAlphaForReviewScreenBarsInLayout)
    {
      v40 = [(PUOneUpTilingLayout *)self delegate];
      [v40 alphaForReviewScreenBarsInLayout:self];
      v39 = v41;
    }

    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v42 = [PUTileLayoutInfo alloc];
    v43 = [(PUTilingLayout *)self coordinateSystem];
    slice = remainder;
    v667 = v673;
    v44 = 1001.0;
    goto LABEL_27;
  }

  if ([v8 isEqualToString:PUTileKindReviewScreenControlBar])
  {
    if (!-[PUOneUpTilingLayout useReviewScreenBars](self, "useReviewScreenBars") || [v7 length])
    {
      goto LABEL_219;
    }

    [(PUTilingLayout *)self visibleRect];
    v671 = 0u;
    v669 = 0u;
    memset(&v670, 0, sizeof(v670));
    memset(&v668, 0, sizeof(v668));
    [PUReviewScreenUtilities reviewScreenControlBarGeometryForReferenceBounds:[(PUOneUpTilingLayout *)self windowInterfaceOrientation] withOrientation:v63, v64, v65, v66];
    memset(&remainder, 0, sizeof(remainder));
    v673 = 0u;
    v39 = 1.0;
    if (self->_delegateFlags.respondsToAlphaForReviewScreenBarsInLayout)
    {
      v67 = [(PUOneUpTilingLayout *)self delegate];
      [v67 alphaForReviewScreenBarsInLayout:self];
      v39 = v68;
    }

    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v42 = [PUTileLayoutInfo alloc];
    v43 = [(PUTilingLayout *)self coordinateSystem];
    slice = remainder;
    v667 = v673;
    v44 = 1000.0;
LABEL_27:
    p_slice = &slice;
    v70 = v42;
    v71 = v16;
    v72 = 0.0;
    v73 = 0.0;
    v74 = 0.0;
    v75 = 0.0;
    v76 = v39;
LABEL_28:
    v77 = [(PUTileLayoutInfo *)v70 initWithTileIdentifier:v71 center:p_slice size:v43 alpha:v72 transform:v73 zPosition:v74 coordinateSystem:v75, v76, v44];
    goto LABEL_29;
  }

  if ([v8 isEqualToString:PUTileKindReviewScreenScrubberBar])
  {
    if (![(PUOneUpTilingLayout *)self useReviewScreenBars])
    {
      goto LABEL_219;
    }

    v78 = [v7 length];
    if (self->_delegateFlags.respondsToShouldShowReviewScreenScrubberBar)
    {
      if (v78)
      {
        goto LABEL_219;
      }

      v79 = [(PUOneUpTilingLayout *)self delegate];
      v80 = [v79 layoutShouldShowReviewScreenScrubberBar:self];

      if ((v80 & 1) == 0)
      {
        goto LABEL_219;
      }
    }

    else if (v78)
    {
      goto LABEL_219;
    }

    [(PUTilingLayout *)self visibleRect];
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v117 = v116;
    v118 = [(PUOneUpTilingLayout *)self windowInterfaceOrientation];
    [(PUOneUpTilingLayout *)self contentSafeInsets];
    v671 = 0u;
    v669 = 0u;
    memset(&v670, 0, sizeof(v670));
    memset(&v668, 0, sizeof(v668));
    [PUReviewScreenUtilities reviewScreenScrubberBarGeometryForReferenceBounds:v118 withOrientation:v111 safeAreaInsets:v113, v115, v117, v119, v120, v121, v122];
    v124 = 0.0;
    v123 = 0.0;
    if (*MEMORY[0x1E695F060] == 0.0 && v668.size.height == *(MEMORY[0x1E695F060] + 8))
    {
      goto LABEL_219;
    }

    v126 = *(&v669 + 1);
    v125 = *&v669;
    remainder = v670;
    v673 = v671;
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v127 = [PUTileLayoutInfo alloc];
    v43 = [(PUTilingLayout *)self coordinateSystem];
    slice = remainder;
    v667 = v673;
    v44 = 1002.0;
    v76 = 1.0;
    p_slice = &slice;
    goto LABEL_53;
  }

  if ([v8 isEqualToString:PUTileKindUserTransform])
  {
    if ([v7 length] != 2 || !-[PUOneUpTilingLayout useUserTransformTiles](self, "useUserTransformTiles"))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7];
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    [(PUOneUpTilingLayout *)self _untransformedRectForItemAtIndexPath:v7];
    v90 = v89;
    v92 = v91;
    recta = v93;
    rect1a = v94;
    [(PUOneUpTilingLayout *)self _contentPixelSizeForItemAtIndexPath:v7];
    v643 = v96;
    v644 = v95;
    v648 = v92 - v84;
    v652 = v90 - v82;
    if (self->_delegateFlags.respondsToInsetsWhenScaledToFitForItemAtIndexPath)
    {
      v97 = [(PUOneUpTilingLayout *)self delegate];
      [v97 layout:self insetsWhenScaledToFitForItemAtIndexPath:v7 inViewportSize:{v86, v88}];
      v641 = v99;
      v642 = v98;
      v639 = v101;
      v640 = v100;
    }

    else
    {
      [(PUOneUpTilingLayout *)self contentGuideInsets];
      v641 = v151;
      v642 = v150;
      v639 = v153;
      v640 = v152;
    }

    [(PUOneUpTilingLayout *)self _cropInsetsForTileAtIndexPath:v7 layoutRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    v155 = v154;
    v157 = v156;
    v159 = v158;
    v161 = v160;
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v162 = [PUUserTransformTileLayoutInfo alloc];
    Center = PURectGetCenter(v82, v84, v86, v88);
    v165 = v164;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v166 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v166;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    v77 = [(PUUserTransformTileLayoutInfo *)v162 initWithTileIdentifier:v16 center:&v668 size:v43 alpha:Center transform:v165 zPosition:v86 coordinateSystem:v88 untransformedContentFrame:1.0 chromeInsets:20.0 contentPixelSize:*&v652 cropInsets:*&v648, recta, rect1a, v642, v641, v640, v639, v644, v643, v155, v157, v159, v161];
LABEL_29:
    v34 = v77;

    goto LABEL_20;
  }

  if ([v8 isEqualToString:PUTileKindPlayButton])
  {
    v102 = [v7 length];
    [(PUOneUpTilingLayout *)self playButtonSize];
    if (v102 != 2)
    {
      goto LABEL_219;
    }

    v105 = v103;
    v106 = v104;
    v107 = v103 != *MEMORY[0x1E695F060];
    if (v104 != *(MEMORY[0x1E695F060] + 8))
    {
      v107 = 1;
    }

    if (self->_delegateFlags.respondsToShouldShowPlayButtonForItemAtIndexPath)
    {
      if (!v107)
      {
        goto LABEL_219;
      }

      v108 = [(PUOneUpTilingLayout *)self delegate];
      v109 = [v108 layout:self shouldShowPlayButtonForItemAtIndexPath:v7];

      if ((v109 & 1) == 0)
      {
        goto LABEL_219;
      }
    }

    else if (!v107)
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _frameForTileWithSize:v7 centeredOnItemAtIndexPath:v105, v106];
    v168 = v167;
    v170 = v169;
    v172 = v171;
    v174 = v173;
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v175 = [PUTileLayoutInfo alloc];
    v176 = PURectGetCenter(v168, v170, v172, v174);
    v178 = v177;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v179 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v179;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    v76 = 1.0;
    p_slice = &v668;
    v44 = 30.0;
    goto LABEL_81;
  }

  if ([v8 isEqualToString:PUTileKindProgressIndicator])
  {
    v128 = [v7 length];
    [(PUOneUpTilingLayout *)self progressIndicatorSize];
    v130 = v129;
    v132 = v131;
    [(PUOneUpTilingLayout *)self progressIndicatorContentInsets];
    if (v128 != 2)
    {
      goto LABEL_219;
    }

    v136 = v133;
    v137 = v134;
    v138 = v135;
    v139 = v130 != *MEMORY[0x1E695F060];
    if (v132 != *(MEMORY[0x1E695F060] + 8))
    {
      v139 = 1;
    }

    if (self->_delegateFlags.respondsToShouldShowProgressIndicatorForItemAtIndexPath)
    {
      if (!v139)
      {
        goto LABEL_219;
      }

      v140 = [(PUOneUpTilingLayout *)self delegate];
      v141 = [v140 layout:self shouldShowProgressIndicatorForItemAtIndexPath:v7];

      if ((v141 & 1) == 0)
      {
        goto LABEL_219;
      }
    }

    else if (!v139)
    {
      goto LABEL_219;
    }

    v649 = v138;
    v645 = v136;
    rect1b = v132;
    rectb = v130;
    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7];
    v213 = v212;
    v215 = v214;
    v217 = v216;
    v219 = v218;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    [(PUOneUpTilingLayout *)self contentSafeInsets];
    UIEdgeInsetsMax();
    v221 = v213 + v220;
    v223 = v215 + v222;
    v225 = v217 - (v220 + v224);
    v227 = v222 + v226;
    v228 = *(MEMORY[0x1E695F058] + 16);
    v229 = v219 - v227;
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v228;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:v7 options:0];
    v692.origin.x = v221;
    v692.origin.y = v223;
    v692.size.width = v225;
    v692.size.height = v229;
    if (CGRectIntersectsRect(remainder, v692))
    {
      v693.origin.x = v221;
      v693.origin.y = v223;
      v693.size.width = v225;
      v693.size.height = v229;
      remainder = CGRectIntersection(remainder, v693);
    }

    [(PUOneUpTilingLayout *)self contentDecorationAdditionalInsets];
    v231 = v230;
    v234 = remainder.size.width - (v232.f64[0] + v233);
    v236 = remainder.size.height - (v235 + v231);
    v232.f64[1] = v235;
    v237 = vaddq_f64(remainder.origin, v232);
    remainder.origin = v237;
    remainder.size.width = v234;
    remainder.size.height = v236;
    if (self->_delegateFlags.respondsToShouldMoveProgressIndicatorForItemAtIndexPath)
    {
      v238 = [(PUOneUpTilingLayout *)self delegate];
      v239 = [v238 layout:self shouldMoveProgressIndicatorForItemAtIndexPath:v7];

      v237.x = remainder.origin.x;
      v240 = remainder.origin.y;
      v234 = remainder.size.width;
      v236 = remainder.size.height;
      if (v239)
      {
        v241 = _PUOneUpSelectionIndicatorFrame(v9, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height);
        v243 = v242;
        v245 = v244;
        v247 = v246;
        PURectGetCenter(v241, v242, v244, v246);
        v249 = v248 + rect1b * -0.5;
        v250 = PURectGetCenter(v241, v243, v245, v247);
        v251 = v250 + 15.5 + 17.0 - v645;
        v252 = rectb;
        v253 = v649 + v250 + -15.5 + -17.0 - rectb;
        if (v9)
        {
          v254 = v253;
        }

        else
        {
          v254 = v251;
        }

LABEL_117:
        v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
        v345 = [PUTileLayoutInfo alloc];
        v346 = PURectGetCenter(v254, v249, v252, rect1b);
        v348 = v347;
        v43 = [(PUTilingLayout *)self coordinateSystem];
        v349 = *(MEMORY[0x1E695EFD0] + 16);
        v668.origin = *MEMORY[0x1E695EFD0];
        v668.size = v349;
        v669 = *(MEMORY[0x1E695EFD0] + 32);
        v76 = 1.0;
        p_slice = &v668;
        v44 = 31.0;
        v70 = v345;
        v71 = v16;
        v72 = v346;
        v73 = v348;
        v74 = v252;
        v75 = rect1b;
        goto LABEL_28;
      }
    }

    else
    {
      v240 = v237.y;
    }

    v252 = v130;
    if (v9)
    {
      v254 = v649 + CGRectGetMaxX(*&v237.x) + -17.0 - v130;
    }

    else
    {
      v254 = CGRectGetMinX(*&v237.x) + 17.0 - v645;
    }

    v249 = v137 + CGRectGetMaxY(remainder) + -17.0 - v132;
    goto LABEL_117;
  }

  if ([v8 isEqualToString:PUTileKindPeople])
  {
    v142 = [v7 length];
    [(PUOneUpTilingLayout *)self peopleRowSize];
    if (v142 != 2)
    {
      goto LABEL_219;
    }

    v145 = v143;
    v146 = v144;
    v147 = v143 != *MEMORY[0x1E695F060];
    if (v144 != *(MEMORY[0x1E695F060] + 8))
    {
      v147 = 1;
    }

    if (self->_delegateFlags.respondsToShouldShowPeopleRowForItemAtIndexPath)
    {
      if (!v147)
      {
        goto LABEL_219;
      }

      v148 = [(PUOneUpTilingLayout *)self delegate];
      v149 = [v148 layout:self shouldShowPeopleRowForItemAtIndexPath:v7];

      if ((v149 & 1) == 0)
      {
        goto LABEL_219;
      }
    }

    else if (!v147)
    {
      goto LABEL_219;
    }

    rectc = v146;
    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7];
    v285 = v284;
    v287 = v286;
    v289 = v288;
    rect1d = v290;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    [(PUOneUpTilingLayout *)self contentSafeInsets];
    UIEdgeInsetsMax();
    v292 = v285 + v291;
    v294 = v287 + v293;
    v296 = v289 - (v291 + v295);
    v298 = rect1d - (v293 + v297);
    v299 = *(MEMORY[0x1E695F058] + 16);
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v299;
    slice.origin.x = 1.0;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 contentsRect:0 alpha:&slice forContentOfItemAtIndexPath:v7 options:0];
    v696.origin.x = v292;
    v696.origin.y = v294;
    v696.size.width = v296;
    v696.size.height = v298;
    if (CGRectIntersectsRect(remainder, v696))
    {
      v697.origin.x = v292;
      v697.origin.y = v294;
      v697.size.width = v296;
      v697.size.height = v298;
      remainder = CGRectIntersection(remainder, v697);
    }

    [(PUOneUpTilingLayout *)self contentDecorationAdditionalInsets];
    v303.f64[1] = v302;
    remainder.origin = vaddq_f64(remainder.origin, v303);
    remainder.size.width = remainder.size.width - (v303.f64[0] + v300);
    remainder.size.height = remainder.size.height - (v302 + v301);
    [(PUOneUpTilingLayout *)self contentSafeInsets];
    v305 = remainder.size.width;
    if (v145 >= remainder.size.width * 0.5)
    {
      v306 = remainder.size.width * 0.5;
    }

    else
    {
      v306 = v145;
    }

    if (v9)
    {
      v307 = v304;
      v308 = remainder.origin.x;
      v309 = remainder.origin.y;
      v310 = remainder.size.height;
      v311 = CGRectGetMinX(*(&v305 - 2)) + v307 * -2.0;
    }

    else
    {
      v379 = remainder.origin.x;
      v380 = remainder.origin.y;
      v381 = remainder.size.height;
      v311 = CGRectGetMaxX(*(&v305 - 2)) - v145;
    }

    if (self->_delegateFlags.respondsToShouldMovePeopleRowForItemAtIndexPath && (-[PUOneUpTilingLayout renderIndicatorSize](self, "renderIndicatorSize"), -[PUOneUpTilingLayout _shouldShowRenderIndicatorForIndexPath:size:](self, "_shouldShowRenderIndicatorForIndexPath:size:", v7)) && (-[PUOneUpTilingLayout delegate](self, "delegate"), v382 = objc_claimAutoreleasedReturnValue(), v383 = [v382 layout:self shouldMovePeopleRowForItemAtIndexPath:v7], v382, v383))
    {
      [(PUOneUpTilingLayout *)self renderIndicatorSize];
      _PUOneUpRenderIndicatorFrame(v9, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height, v384);
      MaxY = v385 + 10.0;
    }

    else
    {
      MaxY = CGRectGetMaxY(remainder);
    }

    v387 = MaxY - v146;
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v388 = [PUTileLayoutInfo alloc];
    v389 = PURectGetCenter(v311, v387, v306, rectc);
    v391 = v390;
    v392 = slice.origin.x;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v393 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v393;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    v44 = 37.0;
    p_slice = &v668;
    v70 = v388;
    v71 = v16;
    v72 = v389;
    v73 = v391;
    v74 = v306;
    v75 = rectc;
    v76 = v392;
    goto LABEL_28;
  }

  if ([v8 isEqualToString:PUTileKindRenderIndicator])
  {
    [(PUOneUpTilingLayout *)self renderIndicatorSize];
    v181 = v180;
    if (![(PUOneUpTilingLayout *)self _shouldShowRenderIndicatorForIndexPath:v7 size:?])
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7];
    v183 = v182;
    v185 = v184;
    v187 = v186;
    v189 = v188;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    [(PUOneUpTilingLayout *)self contentSafeInsets];
    UIEdgeInsetsMax();
    v191 = v183 + v190;
    v193 = v185 + v192;
    v195 = v187 - (v190 + v194);
    v197 = v192 + v196;
    v198 = *(MEMORY[0x1E695F058] + 16);
    v199 = v189 - v197;
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v198;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:v7 options:0];
    v690.origin.x = v191;
    v690.origin.y = v193;
    v690.size.width = v195;
    v690.size.height = v199;
    if (CGRectIntersectsRect(remainder, v690))
    {
      v691.origin.x = v191;
      v691.origin.y = v193;
      v691.size.width = v195;
      v691.size.height = v199;
      remainder = CGRectIntersection(remainder, v691);
    }

    [(PUOneUpTilingLayout *)self contentDecorationAdditionalInsets];
    remainder.origin.x = remainder.origin.x + v203;
    remainder.origin.y = v202 + remainder.origin.y;
    remainder.size.width = remainder.size.width - (v203 + v200);
    remainder.size.height = remainder.size.height - (v202 + v201);
    v204 = _PUOneUpRenderIndicatorFrame(v9, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height, v181);
    v206 = v205;
    v172 = v207;
    v174 = v208;
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v175 = [PUTileLayoutInfo alloc];
    v176 = PURectGetCenter(v204, v206, v172, v174);
    v178 = v209;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v210 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v210;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    *&v211 = 36.0;
    goto LABEL_79;
  }

  if ([v8 isEqualToString:PUTileKindImportStatusIndicator])
  {
    if ([v7 length] != 2 || !-[PUOneUpTilingLayout useImportStatusIndicatorTiles](self, "useImportStatusIndicatorTiles"))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7];
    v256 = v255;
    v258 = v257;
    v260 = v259;
    v262 = v261;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v264 = v256 + v263;
    v266 = v258 + v265;
    v268 = v260 - (v263 + v267);
    v270 = v265 + v269;
    v271 = *(MEMORY[0x1E695F058] + 16);
    v272 = v262 - v270;
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v271;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:v7 options:0];
    v694.origin.x = v264;
    v694.origin.y = v266;
    v694.size.width = v268;
    v694.size.height = v272;
    if (CGRectIntersectsRect(remainder, v694))
    {
      v695.origin.x = v264;
      v695.origin.y = v266;
      v695.size.width = v268;
      v695.size.height = v272;
      remainder = CGRectIntersection(remainder, v695);
    }

    [(PUOneUpTilingLayout *)self contentDecorationAdditionalInsets];
    remainder.origin.x = remainder.origin.x + v276;
    remainder.origin.y = v275 + remainder.origin.y;
    remainder.size.width = remainder.size.width - (v276 + v273);
    remainder.size.height = remainder.size.height - (v275 + v274);
    v277 = _PUOneUpSelectionIndicatorFrame(v9, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height);
    v279 = v278;
    v172 = v280;
    v174 = v281;
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v175 = [PUTileLayoutInfo alloc];
    v176 = PURectGetCenter(v277, v279, v172, v174);
    v178 = v282;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v283 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v283;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    v44 = 35.0;
    goto LABEL_80;
  }

  if ([v8 isEqualToString:PUTileKindAssetExplorerReviewScreenProgressIndicator])
  {
    v312 = [v7 length];
    [(PUOneUpTilingLayout *)self assetExplorerReviewScreenProgressIndicatorSize];
    if (v312 != 2)
    {
      goto LABEL_219;
    }

    v123 = v313;
    v124 = v314;
    if (v313 == *MEMORY[0x1E695F060] && v314 == *(MEMORY[0x1E695F060] + 8))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7];
    v316 = v315;
    v318 = v317;
    v320 = v319;
    v322 = v321;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v324 = v316 + v323;
    v326 = v318 + v325;
    v328 = v320 - (v323 + v327);
    v330 = v325 + v329;
    v331 = *(MEMORY[0x1E695F058] + 16);
    v332 = v322 - v330;
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v331;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:v7 options:0];
    v698.origin.x = v324;
    v698.origin.y = v326;
    v698.size.width = v328;
    v698.size.height = v332;
    if (CGRectIntersectsRect(remainder, v698))
    {
      v699.origin.x = v324;
      v699.origin.y = v326;
      v699.size.width = v328;
      v699.size.height = v332;
      remainder = CGRectIntersection(remainder, v699);
    }

    [(PUOneUpTilingLayout *)self contentDecorationAdditionalInsets];
    v334 = v333;
    v336 = v335;
    v338 = v337;
    v339 = remainder.origin.x + v335;
    v340 = v334 + remainder.origin.y;
    v342 = remainder.size.width - (v336 + v341);
    v343 = remainder.size.height - (v334 + v338);
    remainder.origin.x = v339;
    remainder.origin.y = v334 + remainder.origin.y;
    remainder.size.width = v342;
    remainder.size.height = v343;
    if (v9)
    {
      v344 = CGRectGetMaxX(*&v339) + -10.0 - v123;
    }

    else
    {
      v344 = CGRectGetMinX(*&v339) + 10.0;
    }

    v416 = CGRectGetMaxY(remainder) + -15.0 - v124;
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v127 = [PUTileLayoutInfo alloc];
    v125 = PURectGetCenter(v344, v416, v123, v124);
    v126 = v417;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v418 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v418;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    v44 = 32.0;
    v76 = 1.0;
    p_slice = &v668;
LABEL_53:
    v70 = v127;
    v71 = v16;
    v72 = v125;
    v73 = v126;
    v74 = v123;
    v75 = v124;
    goto LABEL_28;
  }

  if ([v8 isEqualToString:PUTileKindSelectionIndicator])
  {
    if ([v7 length] != 2 || !-[PUOneUpTilingLayout useSelectionIndicatorTiles](self, "useSelectionIndicatorTiles"))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7];
    v351 = v350;
    v353 = v352;
    v355 = v354;
    v357 = v356;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v359 = v351 + v358;
    v361 = v353 + v360;
    v363 = v355 - (v358 + v362);
    v365 = v360 + v364;
    v366 = *(MEMORY[0x1E695F058] + 16);
    v367 = v357 - v365;
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v366;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:v7 options:0];
    v700.origin.x = v359;
    v700.origin.y = v361;
    v700.size.width = v363;
    v700.size.height = v367;
    if (CGRectIntersectsRect(remainder, v700))
    {
      v701.origin.x = v359;
      v701.origin.y = v361;
      v701.size.width = v363;
      v701.size.height = v367;
      remainder = CGRectIntersection(remainder, v701);
    }

    [(PUOneUpTilingLayout *)self contentDecorationAdditionalInsets];
    remainder.origin.x = remainder.origin.x + v371;
    remainder.origin.y = v370 + remainder.origin.y;
    remainder.size.width = remainder.size.width - (v371 + v368);
    remainder.size.height = remainder.size.height - (v370 + v369);
    v372 = _PUOneUpSelectionIndicatorFrame(v9, remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height);
    v374 = v373;
    v172 = v375;
    v174 = v376;
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v175 = [PUTileLayoutInfo alloc];
    v176 = PURectGetCenter(v372, v374, v172, v174);
    v178 = v377;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v378 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v378;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    v44 = 33.0;
    goto LABEL_80;
  }

  if ([v8 isEqualToString:PUTileKindBufferingIndicator])
  {
    if ([v7 length] != 2 || -[PUOneUpTilingLayout _accessoryViewVisibilityForItemAtIndexPath:](self, "_accessoryViewVisibilityForItemAtIndexPath:", v7) || -[PUOneUpTilingLayout _isShowingInfoPanelForItemAtIndexPath:](self, "_isShowingInfoPanelForItemAtIndexPath:", v7))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self bufferingIndicatorSize];
    v395 = v394;
    v397 = v396;
    v398 = v394 != *MEMORY[0x1E695F060];
    if (v396 != *(MEMORY[0x1E695F060] + 8))
    {
      v398 = 1;
    }

    if (self->_delegateFlags.respondsToShouldShowBufferingIndicatorForItemAtIndexPath)
    {
      if (!v398)
      {
        goto LABEL_219;
      }

      v399 = [(PUOneUpTilingLayout *)self delegate];
      v400 = [v399 layout:self shouldShowBufferingIndicatorForItemAtIndexPath:v7];

      if ((v400 & 1) == 0)
      {
        goto LABEL_219;
      }
    }

    else if (!v398)
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _frameForTileWithSize:v7 centeredOnItemAtIndexPath:v395, v397];
    v536 = v535;
    v538 = v537;
    v172 = v539;
    v174 = v540;
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v175 = [PUTileLayoutInfo alloc];
    v176 = PURectGetCenter(v536, v538, v172, v174);
    v178 = v541;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v542 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v542;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    v76 = 1.0;
    p_slice = &v668;
    v44 = 12.0;
    goto LABEL_81;
  }

  if ([v8 isEqualToString:PUTileKindLoadingIndicator])
  {
    v402 = *MEMORY[0x1E695F060];
    v401 = *(MEMORY[0x1E695F060] + 8);
    v403 = *MEMORY[0x1E695F060];
    v404 = v401;
    if ([(PUOneUpTilingLayout *)self canDisplayLoadingIndicators])
    {
      v403 = v402;
      v404 = v401;
      if ([v7 length] == 2)
      {
        v403 = v402;
        v404 = v401;
        if (self->_delegateFlags.respondsToLoadingIndicatorSizeForItemAtIndexPath)
        {
          v405 = [(PUOneUpTilingLayout *)self delegate];
          [v405 layout:self loadingIndicatorSizeForItemAtIndexPath:v7];
          v403 = v406;
          v404 = v407;
        }
      }
    }

    if (v403 == v402 && v404 == v401)
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _frameForTileWithSize:v7 centeredOnItemAtIndexPath:v403, v404];
    v409 = v408;
    v411 = v410;
    v172 = v412;
    v174 = v413;
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v175 = [PUTileLayoutInfo alloc];
    v176 = PURectGetCenter(v409, v411, v172, v174);
    v178 = v414;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v415 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v415;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    v76 = 1.0;
    p_slice = &v668;
    v44 = 10.0;
    goto LABEL_81;
  }

  if ([v8 isEqualToString:PUTileKindBadge])
  {
    if ([v7 length] != 2 || !-[PUOneUpTilingLayout useBadgeTiles](self, "useBadgeTiles"))
    {
      goto LABEL_219;
    }

    v420 = *MEMORY[0x1E695F060];
    v419 = *(MEMORY[0x1E695F060] + 8);
    v421 = *(MEMORY[0x1E695F058] + 16);
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v421;
    v653 = 0.0;
    rect1c = v419;
    rectd = v420;
    if (self->_delegateFlags.respondsToBadgeSizeForItemAtIndexPath)
    {
      [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:v7 options:0];
      v422 = remainder.size.width + -12.0;
      v423 = [(PUOneUpTilingLayout *)self delegate];
      v653 = v422;
      [v423 layout:self badgeSizeForItemAtIndexPath:v7 contentWidth:v422];
      rectd = v424;
      rect1c = v425;
    }

    v426 = rectd;
    if (rectd == v420)
    {
      v426 = rect1c;
      if (rect1c == v419)
      {
        goto LABEL_219;
      }
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7, v426];
    v428 = v427;
    v430 = v429;
    v432 = v431;
    v434 = v433;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    if (v436 < 6.0)
    {
      v436 = 6.0;
    }

    if (v438 < 6.0)
    {
      v438 = 6.0;
    }

    v439 = v428 + v436;
    v440 = v430 + v435;
    v441 = v432 - (v436 + v438);
    v442 = v434 - (v435 + v437);
    v681.origin.x = v439;
    v681.origin.y = v440;
    v681.size.width = v441;
    v681.size.height = v442;
    v443 = CGRectGetMinX(v681) + 6.0;
    v646 = v439;
    v650 = v441;
    v682.origin.x = v439;
    v682.origin.y = v440;
    v682.size.width = v441;
    v682.size.height = v442;
    v444 = CGRectGetMinY(v682) + 11.0;
    [(PUOneUpTilingLayout *)self _untransformedRectForItemAtIndexPath:v7];
    PXEdgeInsetsMake();
    PXEdgeInsetsInsetRect();
    v702.origin.x = v445;
    v702.origin.y = v446;
    v702.size.width = v447;
    v702.size.height = v448;
    v449 = v443;
    v683.origin.x = v443;
    v450 = v444;
    v683.origin.y = v444;
    v683.size.width = rectd;
    v683.size.height = rect1c;
    if (CGRectIntersectsRect(v683, v702))
    {
      v703.origin.x = v646;
      v703.size.width = v650;
      v703.origin.y = v440;
      v703.size.height = v442;
      if (CGRectIntersectsRect(remainder, v703))
      {
        v704.origin.x = v646;
        v704.size.width = v650;
        v704.origin.y = v440;
        v704.size.height = v442;
        v684 = CGRectIntersection(remainder, v704);
        remainder = v684;
        v451 = v684.size.width + -12.0;
        v452 = [(PUOneUpTilingLayout *)self delegate];
        v653 = v451;
        [v452 layout:self badgeSizeForItemAtIndexPath:v7 contentWidth:v451];
        rectd = v453;
        rect1c = v454;

        v449 = CGRectGetMinX(remainder) + 6.0;
        v450 = CGRectGetMinY(remainder) + 11.0;
      }
    }

    if (!CGRectIsNull(remainder))
    {
      v455 = CGRectGetMaxY(remainder) + -11.0;
      v685.origin.x = v449;
      v685.origin.y = v450;
      v685.size.width = rectd;
      v685.size.height = rect1c;
      v456 = v455 - CGRectGetHeight(v685);
      if (v450 >= v456)
      {
        v450 = v456;
      }
    }

    v457 = fmin(v653, v650 + -12.0);
    v705.origin.x = v449;
    v705.origin.y = v450;
    v705.size.width = rectd;
    v705.size.height = rect1c;
    v458 = CGRectIntersectsRect(remainder, v705);
    v459 = 0;
    if (self->_delegateFlags.respondsToLeadingBadgesWidthForItemAtIndexPath)
    {
      v460 = [(PUOneUpTilingLayout *)self delegate];
      [v460 layout:self leadingBadgesWidthForItemAtIndexPath:v7 contentWidth:v457];
      v459 = v461;
    }

    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v462 = [PUBadgeTileLayoutInfo alloc];
    v463 = PURectGetCenter(v449, v450, rectd, rect1c);
    v465 = v464;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v466 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v466;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    v77 = [(PUBadgeTileLayoutInfo *)v462 initWithTileIdentifier:v16 center:&v668 size:v43 alpha:v458 transform:v463 zPosition:v465 hitTestOutset:rectd coordinateSystem:rect1c isOverContent:1.0 contentWidth:26.0 leadingContentWidth:*MEMORY[0x1E69C4898], *(MEMORY[0x1E69C4898] + 8), *(MEMORY[0x1E69C4898] + 16), *(MEMORY[0x1E69C4898] + 24), *&v457, v459];
    goto LABEL_29;
  }

  if ([v8 isEqualToString:PUTileKindAssetExplorerReviewScreenBadge])
  {
    if ([v7 length] != 2 || !-[PUOneUpTilingLayout useAssetExplorerReviewScreenBadgeTiles](self, "useAssetExplorerReviewScreenBadgeTiles"))
    {
      goto LABEL_219;
    }

    v468 = *MEMORY[0x1E695F060];
    v467 = *(MEMORY[0x1E695F060] + 8);
    v469 = *MEMORY[0x1E695F060];
    v470 = v467;
    if (self->_delegateFlags.respondsToAssetExplorerReviewScreenBadgeSizeForItemAtIndexPath)
    {
      v471 = [(PUOneUpTilingLayout *)self delegate];
      [v471 layout:self assetExplorerReviewScreenBadgeSizeForItemAtIndexPath:v7];
      v469 = v472;
      v470 = v473;
    }

    if (v469 == v468 && v470 == v467)
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7];
    v475 = v474;
    v477 = v476;
    v479 = v478;
    v481 = v480;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v483 = v475 + v482;
    v485 = v477 + v484;
    v487 = v479 - (v482 + v486);
    v489 = v484 + v488;
    v490 = *(MEMORY[0x1E695F058] + 16);
    v491 = v481 - v489;
    remainder.origin = *MEMORY[0x1E695F058];
    remainder.size = v490;
    [(PUOneUpTilingLayout *)self _getLayoutRect:&remainder transform:0 parallaxOffset:0 forContentOfItemAtIndexPath:v7 options:0];
    v706.origin.x = v483;
    v706.origin.y = v485;
    v706.size.width = v487;
    v706.size.height = v491;
    v492 = CGRectIntersectsRect(remainder, v706);
    v493 = remainder.origin.x;
    v494 = remainder.origin.y;
    v495 = remainder.size.width;
    v496 = remainder.size.height;
    if (v492)
    {
      v707.origin.x = v483;
      v707.origin.y = v485;
      v707.size.width = v487;
      v707.size.height = v491;
      *&v493 = CGRectIntersection(*&v493, v707);
      remainder.origin.x = v493;
      remainder.origin.y = v494;
      remainder.size.width = v495;
      remainder.size.height = v496;
    }

    v497 = CGRectGetMinX(*&v493) + 10.0;
    v498 = CGRectGetMinY(remainder) + 10.0;
    v708.origin.x = v497;
    v708.origin.y = v498;
    v708.size.width = v469;
    v708.size.height = v470;
    v499 = CGRectIntersectsRect(remainder, v708);
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v500 = [PUBadgeTileLayoutInfo alloc];
    v501 = PURectGetCenter(v497, v498, v469, v470);
    v503 = v502;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v504 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v504;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    v77 = [(PUBadgeTileLayoutInfo *)v500 initWithTileIdentifier:v16 center:&v668 size:v43 alpha:v499 transform:v501 zPosition:v503 hitTestOutset:v469 coordinateSystem:v470 isOverContent:1.0 contentWidth:34.0 leadingContentWidth:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), 0, 0];
    goto LABEL_29;
  }

  if ([v8 isEqualToString:PUTileKindAccessory])
  {
    if ([v7 length] != 2 || !-[PUOneUpTilingLayout _accessoryViewVisibilityForItemAtIndexPath:](self, "_accessoryViewVisibilityForItemAtIndexPath:", v7))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7];
    v506 = v505;
    v508 = v507;
    v510 = v509;
    v512 = v511;
    v513 = +[PUOneUpSettings sharedInstance];
    [v513 minimumVisibleContentHeight];
    v515 = v514;

    if (self->_delegateFlags.respondsToMinimumVisibleContentHeightForItemAtIndexPath)
    {
      v516 = [(PUOneUpTilingLayout *)self delegate];
      [v516 layout:self minimumVisibleContentHeightForItemAtIndexPath:v7];
      v515 = v517;
    }

    memset(&remainder, 0, sizeof(remainder));
    memset(&slice, 0, sizeof(slice));
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v519 = v515 + v518;
    v686.origin.x = v506;
    v686.origin.y = v508;
    v686.size.width = v510;
    v686.size.height = v512;
    CGRectDivide(v686, &slice, &remainder, v519, CGRectMinYEdge);
    v520 = *(MEMORY[0x1E695F058] + 16);
    v674 = *MEMORY[0x1E695F058];
    v675 = v520;
    *&v676 = 0x3FF0000000000000;
    v521 = +[PUOneUpSettings sharedInstance];
    v522 = [v521 shouldFadeAccessoryView];

    if (v522)
    {
      v523 = &v676;
    }

    else
    {
      v523 = 0;
    }

    [(PUOneUpTilingLayout *)self _getLayoutRect:&v674 transform:0 parallaxOffset:0 contentsRect:0 alpha:v523 forContentOfItemAtIndexPath:v7 options:3];
    v674 = vsubq_f64(v674, remainder.origin);
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v525 = v524;
    v527 = v526;
    v529 = v528;
    v531 = v530;
    if (self->_delegateFlags.respondsToMinimumVisibleAccessoryHeightForItemAtIndexPath)
    {
      v532 = [(PUOneUpTilingLayout *)self delegate];
      [v532 layout:self minimumVisibleAccessoryHeightForItemAtIndexPath:v7];
      v534 = v533;
    }

    else
    {
      v534 = 0x4049000000000000;
    }

    v586 = [(PUOneUpTilingLayout *)self delegate];
    [v586 layout:self accessoryOffsetForItemAtIndexPath:v7];
    rect1e = v588;
    recte = v587;

    v589.f64[0] = recte;
    v589.f64[1] = rect1e;
    remainder.origin = vaddq_f64(remainder.origin, v589);
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v590 = [PUAccessoryTileLayoutInfo alloc];
    v591 = PURectGetCenter(remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height);
    v593 = v592;
    v594 = *&v676;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v595 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v595;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    v77 = [(PUAccessoryTileLayoutInfo *)v590 initWithTileIdentifier:v16 center:&v668 size:v43 alpha:v591 transform:v593 zPosition:remainder.size.width coordinateSystem:remainder.size.height untransformedContentFrame:v594 contentInsets:-1.0 minimumVisibleHeight:*&v674, v675, v525, v527, v529, v531, v534];
    goto LABEL_29;
  }

  if ([v8 isEqualToString:PUTileKindVideoPlaceholder])
  {
    if ([v7 length] != 2 || !-[PUOneUpTilingLayout _isVideoPlacholderVisibleForItemAtIndexPath:](self, "_isVideoPlacholderVisibleForItemAtIndexPath:", v7))
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7];
    v544 = v543;
    v546 = v545;
    v172 = v547;
    v174 = v548;
    v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v175 = [PUTileLayoutInfo alloc];
    v176 = PURectGetCenter(v544, v546, v172, v174);
    v178 = v549;
    v43 = [(PUTilingLayout *)self coordinateSystem];
    v550 = *(MEMORY[0x1E695EFD0] + 16);
    v668.origin = *MEMORY[0x1E695EFD0];
    v668.size = v550;
    v669 = *(MEMORY[0x1E695EFD0] + 32);
    *&v211 = 100.0;
LABEL_79:
    v44 = *&v211;
LABEL_80:
    v76 = 1.0;
    p_slice = &v668;
LABEL_81:
    v70 = v175;
    v71 = v16;
    v72 = v176;
    v73 = v178;
    v74 = v172;
    v75 = v174;
    goto LABEL_28;
  }

  if (![v8 isEqualToString:PUTileKindLivePhotoVideoPlaybackOverlay])
  {
    if (![v8 isEqualToString:PUTileKindSyndicationAttribution])
    {
      if (![v8 isEqualToString:PUTileKindCropButton])
      {
        goto LABEL_219;
      }

      if (!self->_delegateFlags.respondsToShouldShowCropButtonForItemAtIndexPath)
      {
        goto LABEL_219;
      }

      v596 = [(PUOneUpTilingLayout *)self delegate];
      v597 = [v596 layout:self shouldShowCropButtonForItemAtIndexPath:v7];

      if (!v597)
      {
        goto LABEL_219;
      }

      [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7];
      v598 = v687.origin.x;
      v599 = v687.origin.y;
      v600 = v687.size.width;
      v601 = v687.size.height;
      v602 = CGRectGetMaxX(v687) + -140.0;
      v688.origin.x = v598;
      v688.origin.y = v599;
      v688.size.width = v600;
      v688.size.height = v601;
      MinY = CGRectGetMinY(v688);
      v16 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
      v604 = [PUTileLayoutInfo alloc];
      v605 = PURectGetCenter(v602, MinY, 140.0, 80.0);
      v607 = v606;
      v43 = [(PUTilingLayout *)self coordinateSystem];
      v608 = *(MEMORY[0x1E695EFD0] + 16);
      v668.origin = *MEMORY[0x1E695EFD0];
      v668.size = v608;
      v669 = *(MEMORY[0x1E695EFD0] + 32);
      v44 = 38.0;
      v76 = 1.0;
      p_slice = &v668;
      v70 = v604;
      v71 = v16;
      v72 = v605;
      v73 = v607;
      v74 = 140.0;
      v75 = 80.0;
      goto LABEL_28;
    }

    if (![(PUOneUpTilingLayout *)self useSyndicationAttributionTile])
    {
      goto LABEL_219;
    }

    if (!self->_delegateFlags.respondsToShouldShowAttributionViewForItemAtIndexPath)
    {
      goto LABEL_219;
    }

    v555 = [(PUOneUpTilingLayout *)self delegate];
    v556 = [v555 layout:self shouldShowAttributionViewForItemAtIndexPath:v7];

    if (!v556)
    {
      goto LABEL_219;
    }

    [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v7];
    v558 = v557;
    v560 = v559;
    v562 = v561;
    v564 = v563;
    [(PUOneUpTilingLayout *)self contentGuideInsets];
    v566 = v565;
    v568 = v560 + v567;
    v570 = v565 + v569;
    v572 = v567 + v571;
    v573 = [(PUOneUpTilingLayout *)self layoutInfoForTileWithIndexPath:v7 kind:PUTileKindBadge];
    [v573 size];
    v575 = v574;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_211:
      v578 = v558 + v566;
      v579 = v562 - v570;
      v580 = v564 - v572;
      v581 = v575 + 10.0;
      v582 = [MEMORY[0x1E69C3408] sharedInstance];
      v583 = [v582 syndicated1upPillAlignment];

      if (v583 == 1)
      {
        v584 = v579 - v581 + -10.0;
        v585 = v578 + v581;
      }

      else
      {
        v584 = v579 * 0.5 - v581 + v579 * 0.5 - v581;
        v689.origin.x = v578;
        v689.origin.y = v568 + 9.0;
        v689.size.width = v579;
        v689.size.height = v564 - v572;
        v585 = CGRectGetMidX(v689) - v584 * 0.5;
      }

      v627 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
      v628 = [PUTileLayoutInfo alloc];
      v629 = PURectGetCenter(v585, v568 + 9.0, v584, v580);
      v631 = v630;
      v632 = [(PUTilingLayout *)self coordinateSystem];
      v633 = *(MEMORY[0x1E695EFD0] + 16);
      v668.origin = *MEMORY[0x1E695EFD0];
      v668.size = v633;
      v669 = *(MEMORY[0x1E695EFD0] + 32);
      v34 = [(PUTileLayoutInfo *)v628 initWithTileIdentifier:v627 center:&v668 size:v632 alpha:v629 transform:v631 zPosition:v584 coordinateSystem:v580, 1.0, 14.0];

      goto LABEL_220;
    }

    v576 = v573;
    if (v576)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_210:
        [v576 leadingContentWidth];
        v575 = v577;

        goto LABEL_211;
      }

      v634 = [MEMORY[0x1E696AAA8] currentHandler];
      v637 = objc_opt_class();
      v636 = NSStringFromClass(v637);
      v638 = [v576 px_descriptionForAssertionMessage];
      [v634 handleFailureInMethod:a2 object:self file:@"PUOneUpTilingLayout.m" lineNumber:978 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"potentialBadgesLayoutInfo", v636, v638}];
    }

    else
    {
      v634 = [MEMORY[0x1E696AAA8] currentHandler];
      v635 = objc_opt_class();
      v636 = NSStringFromClass(v635);
      [v634 handleFailureInMethod:a2 object:self file:@"PUOneUpTilingLayout.m" lineNumber:978 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"potentialBadgesLayoutInfo", v636}];
    }

    goto LABEL_210;
  }

  v551 = +[PUOneUpSettings sharedInstance];
  v552 = [v551 shouldMergeOverlappingLivePhotos];

  if (v552)
  {
    v16 = [(PUOneUpTilingLayout *)self indexPathOfCurrentItem];
    v34 = 0;
    if ([v7 length] || !v16)
    {
      goto LABEL_20;
    }

    memset(&slice, 0, sizeof(slice));
    v669 = 0u;
    memset(&v668, 0, sizeof(v668));
    [(PUOneUpTilingLayout *)self _getLayoutRect:&slice transform:&v668 parallaxOffset:0 contentsRect:0 alpha:0 forContentOfItemAtIndexPath:v16 options:0];
    if ([(PUOneUpTilingLayout *)self _shouldApplyInsetStylingToContentWithRect:v7 indexPath:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height])
    {
      [(PUOneUpTilingLayout *)self insetContentCornerRadius];
      v554 = v553;
    }

    else
    {
      v610 = +[PUOneUpSettings sharedInstance];
      [v610 itemContentCornerRadius];
      v554 = v611;
    }

    v612 = *MEMORY[0x1E69796E8];
    [(PUOneUpTilingLayout *)self _cropInsetsForTileAtIndexPath:v16 layoutRect:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    v614 = v613;
    v616 = v615;
    v618 = v617;
    v620 = v619;
    v17 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v7 kind:v8];
    v621 = [PUTileLayoutInfo alloc];
    v622 = PURectGetCenter(slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
    v624 = v623;
    v625 = [(PUTilingLayout *)self coordinateSystem];
    v626 = *(MEMORY[0x1E695EFD0] + 16);
    remainder.origin = *MEMORY[0x1E695EFD0];
    remainder.size = v626;
    v673 = *(MEMORY[0x1E695EFD0] + 32);
    v34 = [(PUTileLayoutInfo *)v621 initWithTileIdentifier:v17 center:v612 size:0 alpha:&remainder cornerRadius:v625 cornerCurve:v622 cornerMask:v624 transform:slice.size.width zPosition:slice.size.height contentsRect:1.0 coordinateSystem:v554 cropInsets:11.0, *MEMORY[0x1E69C48E0], *(MEMORY[0x1E69C48E0] + 8), *(MEMORY[0x1E69C48E0] + 16), *(MEMORY[0x1E69C48E0] + 24), v614, v616, v618, v620];

    goto LABEL_19;
  }

LABEL_219:
  v34 = 0;
LABEL_220:

  return v34;
}

- (double)_insetContentCornerRadiusForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (self->_delegateFlags.respondsToInsetContentCornerRadiusForItemAtIndexPath)
  {
    v5 = [(PUOneUpTilingLayout *)self delegate];
    [v5 layout:self insetContentCornerRadiusForItemAtIndexPath:v4];
    v7 = v6;
  }

  else
  {
    [(PUOneUpTilingLayout *)self insetContentCornerRadius];
    v7 = v8;
  }

  return v7;
}

- (id)layoutInfoForTileWithIndexPath:(id)a3 kind:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind objectForKeyedSubscript:v7];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v9 = [(PUOneUpTilingLayout *)self _createLayoutInfoForTileWithIndexPath:v6 kind:v7];
    v10 = [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind objectForKeyedSubscript:v7];
    if (v10)
    {
      if (v9)
      {
LABEL_4:
        v11 = v9;
LABEL_7:
        v12 = v11;
        [v10 setObject:v11 forKeyedSubscript:v6];

        goto LABEL_8;
      }
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind setObject:v10 forKeyedSubscript:v7];
      if (v9)
      {
        goto LABEL_4;
      }
    }

    v11 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_7;
  }

LABEL_8:
  v13 = [MEMORY[0x1E695DFB0] null];
  v14 = [v13 isEqual:v9];

  if (v14)
  {

    v9 = 0;
  }

  return v9;
}

- (CGSize)sizeForSection:(int64_t)a3 numberOfItems:(int64_t)a4
{
  [(PUOneUpTilingLayout *)self _itemSize];
  v8 = v7;
  if (a4 < 1)
  {
    v11 = *MEMORY[0x1E695F060];
  }

  else
  {
    v9 = v6;
    [(PUOneUpTilingLayout *)self interpageSpacing];
    v11 = -(v10 - a4 * (v9 + v10));
  }

  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_collectLayoutInfosForTilesInRect:(CGRect)a3 withIndexPath:(id)a4 kinds:(id)a5 toSet:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v27 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = [(PUOneUpTilingLayout *)self layoutInfoForTileWithIndexPath:v13 kind:*(*(&v22 + 1) + 8 * v19)];
        v21 = v20;
        if (v20)
        {
          [v20 frame];
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = width;
          v29.size.height = height;
          if (CGRectIntersectsRect(v28, v29))
          {
            [v15 addObject:v21];
          }
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }
}

- (void)addLayoutInfosForSupplementaryTilesInRect:(CGRect)a3 toSet:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = *MEMORY[0x1E69E9840];
  v13 = PUTileKindBackground;
  v14 = PUTileKindReviewScreenTopBar;
  v15 = PUTileKindReviewScreenControlBar;
  v16 = PUTileKindReviewScreenScrubberBar;
  v17 = PUTileKindLivePhotoVideoPlaybackOverlay;
  v9 = MEMORY[0x1E695DEC8];
  v10 = a4;
  v11 = [v9 arrayWithObjects:&v13 count:5];
  v12 = [MEMORY[0x1E696AC88] pu_rootIndexPath];
  [(PUOneUpTilingLayout *)self _collectLayoutInfosForTilesInRect:v12 withIndexPath:v11 kinds:v10 toSet:x, y, width, height];
}

- (void)addLayoutInfosForTilesInRect:(CGRect)a3 section:(int64_t)a4 toSet:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31[16] = *MEMORY[0x1E69E9840];
  v11 = a5;
  [(PUSectionedTilingLayout *)self boundsForSection:a4];
  v13 = v12;
  [(PUOneUpTilingLayout *)self _itemSize];
  v15 = v14;
  [(PUOneUpTilingLayout *)self interpageSpacing];
  v17 = v15 + v16;
  v18 = [(PUSectionedTilingLayout *)self numberOfItemsInSection:a4];
  v19 = [(PUSectionedTilingLayout *)self leftToRight];
  v20 = width + x - v13;
  if (v19)
  {
    v20 = x - v13;
  }

  v21 = -width;
  if (v19)
  {
    v21 = width;
  }

  v22 = vcvtmd_s64_f64(v20 / v17);
  if (!v19)
  {
    v22 = v18 + ~v22;
  }

  v23 = v22 & ~(v22 >> 63);
  v24 = vcvtpd_s64_f64((x - v13 + v21) / v17);
  if (!v19)
  {
    v24 = v18 + ~v24;
  }

  if (v24 >= v18 - 1)
  {
    v24 = v18 - 1;
  }

  if (v23 <= v24)
  {
    v25 = v24 + 1;
    do
    {
      v26 = [MEMORY[0x1E696AC88] indexPathForItem:v23 inSection:a4];
      [(PUOneUpTilingLayout *)self _pageRectForItemAtIndexPath:v26];
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      if (CGRectIntersectsRect(v32, v33))
      {
        v31[0] = @"PUTileKindItemContent";
        v31[1] = PUTileKindUserTransform;
        v31[2] = PUTileKindPlayButton;
        v31[3] = PUTileKindProgressIndicator;
        v31[4] = PUTileKindPeople;
        v31[5] = PUTileKindRenderIndicator;
        v31[6] = PUTileKindBufferingIndicator;
        v31[7] = PUTileKindLoadingIndicator;
        v31[8] = PUTileKindBadge;
        v31[9] = PUTileKindAccessory;
        v31[10] = PUTileKindVideoPlaceholder;
        v31[11] = PUTileKindAssetExplorerReviewScreenBadge;
        v31[12] = PUTileKindSelectionIndicator;
        v31[13] = PUTileKindImportStatusIndicator;
        v31[14] = PUTileKindAssetExplorerReviewScreenProgressIndicator;
        v31[15] = PUTileKindSyndicationAttribution;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:16];
        v28 = +[PUOneUpSettings sharedInstance];
        v29 = [v28 quickCropEnabled];

        if (v29)
        {
          v30 = [v27 arrayByAddingObject:PUTileKindCropButton];

          v27 = v30;
        }

        [(PUOneUpTilingLayout *)self _collectLayoutInfosForTilesInRect:v26 withIndexPath:v27 kinds:v11 toSet:x, y, width, height];
      }

      ++v23;
    }

    while (v25 != v23);
  }
}

- (CGSize)estimatedSectionSize
{
  [(PUOneUpTilingLayout *)self sizeForSection:0x7FFFFFFFFFFFFFFFLL numberOfItems:20];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)preferredScrollInfo
{
  [(PUOneUpTilingLayout *)self interpageSpacing];
  v4 = v3;
  v6 = v5;
  [(PUSectionedTilingLayout *)self interSectionSpacing];
  if (v4 != v7)
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21[0] = 0;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "One-up layout has different interpage and inter-section spacings. This will result in undefined paging behavior.", v21, 2u);
    }
  }

  v9 = +[PUOneUpSettings sharedInstance];
  [v9 pagingSpringPullAdjustment];
  v11 = v10;

  v12 = +[PUOneUpSettings sharedInstance];
  [v12 pagingFrictionAdjustment];
  v14 = v13;

  v15 = +[PURootSettings sharedInstance];
  v16 = [v15 irisUIEnabled];

  if (v16)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0.0;
  }

  if (v16)
  {
    v18 = v14;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = [PUTilingScrollInfo scrollInfoWithScrollDirections:2 enabledPagingWithInterpageSpacing:v4 pagingSpringPullAdjustment:v6 pagingFrictionAdjustment:v17, v18];

  return v19;
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 invalidatedAllTiles])
  {
    [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind removeAllObjects];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 invalidatedTileKinds];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(NSMutableDictionary *)self->_layoutInfosByIndexPathByTileKind objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v9)];
          [v10 removeAllObjects];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__PUOneUpTilingLayout_invalidateLayoutWithContext___block_invoke;
    v12[3] = &unk_1E7B7DD00;
    v12[4] = self;
    [v4 enumerateInvalidatedTilesUsingBlock:v12];
  }

  v11.receiver = self;
  v11.super_class = PUOneUpTilingLayout;
  [(PUTilingLayout *)&v11 invalidateLayoutWithContext:v4];
}

void __51__PUOneUpTilingLayout_invalidateLayoutWithContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 248);
  v5 = a2;
  v6 = [v4 objectForKeyedSubscript:a3];
  [v6 removeObjectForKey:v5];
}

- (void)prepareLayout
{
  v14.receiver = self;
  v14.super_class = PUOneUpTilingLayout;
  [(PUSectionedTilingLayout *)&v14 prepareLayout];
  [(PUTilingLayout *)self visibleRect];
  self->_itemSize.width = v3;
  self->_itemSize.height = v4;
  [(PUTilingLayout *)self visibleRect];
  MidX = CGRectGetMidX(v15);
  v6 = [(PUOneUpTilingLayout *)self _indexPathOfItemClosestToAbscissa:?];
  inFocusIndexPath = self->_inFocusIndexPath;
  self->_inFocusIndexPath = v6;

  v8 = self->_inFocusIndexPath;
  if (v8)
  {
    v13 = 0;
    [(PUOneUpTilingLayout *)self _normalizedTransitionProgressFrom:v8 withAbscissa:&v13 outNeighbor:MidX];
    v10 = v9;
    v11 = v13;
  }

  else
  {
    v11 = 0;
    v10 = 0.0;
  }

  self->_transitionProgress = v10;
  neighborIndexPath = self->_neighborIndexPath;
  self->_neighborIndexPath = v11;
}

- (void)setVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PUTilingLayout *)self visibleRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v21.receiver = self;
  v21.super_class = PUOneUpTilingLayout;
  [(PUSectionedTilingLayout *)&v21 setVisibleRect:x, y, width, height];
  if (width != v13 || height != v15)
  {
    self->_itemSize = PUSizeNull;
    v17 = objc_alloc_init(PUTilingLayoutInvalidationContext);
    [(PUTilingLayoutInvalidationContext *)v17 invalidateContentBounds];
    [(PUTilingLayoutInvalidationContext *)v17 invalidateAllTiles];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v17];
  }

  if (x != v9 || y != v11)
  {
    v19 = objc_alloc_init(PUTilingLayoutInvalidationContext);
    v20 = [(PUOneUpTilingLayout *)self parallaxComputer];

    if (v20)
    {
      [(PUTilingLayoutInvalidationContext *)v19 invalidateAllTilesWithKind:@"PUTileKindItemContent"];
    }

    [(PUTilingLayoutInvalidationContext *)v19 invalidateAllTilesWithKind:PUTileKindBackground];
    [(PUTilingLayoutInvalidationContext *)v19 invalidateAllTilesWithKind:PUTileKindReviewScreenTopBar];
    [(PUTilingLayoutInvalidationContext *)v19 invalidateAllTilesWithKind:PUTileKindReviewScreenControlBar];
    [(PUTilingLayoutInvalidationContext *)v19 invalidateAllTilesWithKind:PUTileKindReviewScreenScrubberBar];
    [(PUTilingLayoutInvalidationContext *)v19 invalidateAllTilesWithKind:PUTileKindLivePhotoVideoPlaybackOverlay];
    [(PUOneUpTilingLayout *)self invalidateLayoutWithContext:v19];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToPixelSizeForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToAspectRatioForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToInsetsWhenScaledToFitForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToBadgeSizeForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToLeadingBadgesWidthForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToAssetExplorerReviewScreenBadgeSizeForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowPlayButtonForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowCropButtonForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowProgressIndicatorForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldMoveProgressIndicatorForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowPeopleRowForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldMovePeopleRowForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowBufferingIndicatorForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToLoadingIndicatorSizeForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToModelTileTransformForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToContentOffsetForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowAccessoryForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToIsShowingInfoPanelForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToMinimumVisibleContentHeightForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToMinimumVisibleAccessoryHeightForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowVideoPlaceholderForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldInitiallyZoomToFillForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowReviewScreenScrubberBar = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToAlphaForReviewScreenBarsInLayout = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToBestSquareRectForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToMinimumItemHeightNeededInAccessoryForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldUseSquareImageInAccessoryForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldShowAttributionViewForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToCanApplyInsetStylingToItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToWillApplyDisplayTransform = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToInsetContentCornerRadiusForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
  }
}

- (PUOneUpTilingLayout)init
{
  v12.receiver = self;
  v12.super_class = PUOneUpTilingLayout;
  v2 = [(PUTilingLayout *)&v12 init];
  v3 = v2;
  if (v2)
  {
    __asm { FMOV            V0.2D, #20.0 }

    v2->_interpageSpacing = _Q0;
    v2->_itemSize = PUSizeNull;
    [(PUSectionedTilingLayout *)v2 setInterSectionSpacing:v2->_interpageSpacing.width, v2->_interpageSpacing.height];
    v9 = [MEMORY[0x1E695DF90] dictionary];
    layoutInfosByIndexPathByTileKind = v3->_layoutInfosByIndexPathByTileKind;
    v3->_layoutInfosByIndexPathByTileKind = v9;
  }

  return v3;
}

+ (CGRect)untransformedRectForItemWithAspectRatio:(double)a3 pageRect:(CGRect)a4 safeInsets:(UIEdgeInsets)a5
{
  [a1 untransformedRectForItemWithAspectRatio:a3 pageRect:a4.origin.x safeInsets:a4.origin.y minimumInsetMargin:{a4.size.width, a4.size.height, *&a5.top, *&a5.left, *&a5.bottom, *&a5.right, 0}];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

+ (id)centerTileKinds
{
  if (centerTileKinds_onceToken != -1)
  {
    dispatch_once(&centerTileKinds_onceToken, &__block_literal_global_46700);
  }

  v3 = centerTileKinds_centerTileKinds;

  return v3;
}

void __38__PUOneUpTilingLayout_centerTileKinds__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = PUTileKindBufferingIndicator;
  v4[1] = PUTileKindLoadingIndicator;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = centerTileKinds_centerTileKinds;
  centerTileKinds_centerTileKinds = v2;
}

+ (CGRect)rectForFittingToTargetPixelSize:(CGSize)a3 imagePixelSize:(CGSize)a4 bestSquareUnitRect:(CGRect)a5
{
  v5 = 0.0;
  PXRectWithAspectRatioFittingRect();
  PXRectNormalize();
  PXRectGetCenter();
  PXRectWithCenterAndSize();
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (CGRectGetMinX(v19) >= 0.0)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (CGRectGetMaxX(v20) <= 1.0)
    {
      v5 = x;
    }

    else
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v5 = 1.0 - CGRectGetWidth(v21);
    }
  }

  v22.origin.x = v5;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v10 = 0.0;
  if (CGRectGetMinY(v22) >= 0.0)
  {
    v23.origin.x = v5;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v10 = y;
    if (CGRectGetMaxY(v23) > 1.0)
    {
      v24.origin.x = v5;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v10 = 1.0 - CGRectGetHeight(v24);
    }
  }

  v11 = *MEMORY[0x1E69C48E0];
  v12 = *(MEMORY[0x1E69C48E0] + 8);
  v13 = *(MEMORY[0x1E69C48E0] + 16);
  v14 = *(MEMORY[0x1E69C48E0] + 24);
  if (PXRectApproximatelyEqualToRect())
  {
    height = v14;
    width = v13;
    v10 = v12;
    v5 = v11;
  }

  v15 = v5;
  v16 = v10;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

@end