@interface PXCuratedLibrarySectionedLayout
- (BOOL)layout:(id)a3 shouldPreventFaultOutOfSublayout:(id)a4;
- (CGRect)sectionBoundariesForAssetCollectionReference:(id)a3;
- (CGSize)layout:(id)a3 estimatedContentSizeForSublayoutAtIndex:(int64_t)a4 referenceSize:(CGSize)a5;
- (PXAssetsSectionLayout)dominantSectionLayout;
- (PXCuratedLibrarySectionedLayout)init;
- (PXCuratedLibrarySectionedLayout)initWithViewModel:(id)a3 spec:(id)a4;
- (UIEdgeInsets)padding;
- (id)_heroAssetCollectionReferenceClosestToAssetCollectionReference:(id)a3 zoomLevel:(int64_t)a4;
- (id)_heroSectionLayoutClosestToSectionLayout:(id)a3 zoomLevel:(int64_t)a4;
- (id)_targetAssetCollectionReferenceInZoomLevel:(int64_t)a3 forTransitionFromAssetCollectionReference:(id)a4;
- (id)dateIntervalFutureForContentInRect:(CGRect)a3 type:(unint64_t)a4;
- (id)dominantHeroPreferences;
- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4;
- (id)viewModel:(id)a3 dominantAssetCollectionReferenceForZoomLevel:(int64_t)a4;
- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)_anchorVisibleArea;
- (void)_configureSectionLayout:(id)a3 atIndex:(int64_t)a4;
- (void)_prepareAccumulatedSectionItemsBufferForSections:(int64_t)a3;
- (void)_updateFaultOutsets;
- (void)_updatePrefetchedSectionsForFaultedInSublayout:(id)a3;
- (void)_updatePreheating;
- (void)_updateSublayoutsDataSource;
- (void)_updateSublayoutsForSkimming;
- (void)clearLastVisibleAreaAnchoringInformation;
- (void)dealloc;
- (void)didFaultInSublayout:(id)a3 atIndex:(int64_t)a4 fromEstimatedContentSize:(CGSize)a5;
- (void)enumerateAssetCollectionsInRect:(CGRect)a3 enumerator:(id)a4;
- (void)enumerateAssetsInRect:(CGRect)a3 enumerator:(id)a4;
- (void)enumerateAssetsSectionSublayoutsInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)enumerateAssetsSectionSublayoutsUsingBlock:(id)a3;
- (void)enumerateHeroSpritesInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)enumerateScrollablePagesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateSectionBoundariesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)a3;
- (void)layout:(id)a3 collectIndexesOfChapterHeaderSublayouts:(id)a4 heroSublayouts:(id)a5 inRange:(_NSRange)a6;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDominantHeroPreferences:(id)a3;
- (void)setIsInitialLoad:(BOOL)a3;
- (void)setLastHitSpriteReference:(id)a3;
- (void)setLateralMargin:(double)a3;
- (void)setPerformedInitialLoad:(BOOL)a3;
- (void)setPrefersDominantHero:(BOOL)a3 forZoomLevel:(int64_t)a4;
- (void)setSafeAreaInsets:(UIEdgeInsets)a3;
- (void)setSpec:(id)a3;
- (void)update;
- (void)willFaultOutSublayout:(id)a3 atIndex:(int64_t)a4;
@end

@implementation PXCuratedLibrarySectionedLayout

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_targetAssetCollectionReferenceInZoomLevel:(int64_t)a3 forTransitionFromAssetCollectionReference:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (a3 == 3)
  {
    v9 = [v7 assetCollection];
    v10 = [v9 px_highlightKind];

    if (v10 == 1)
    {
      v11 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
      v12 = [v11 assetsDataSourceManager];
      v13 = [v12 firstAssetCollectionReferenceInDataSourceForZoomLevel:3 withParent:v8];
LABEL_4:

      goto LABEL_7;
    }
  }

  v14 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
  v15 = [v14 assetsDataSourceManager];
  v11 = [v15 dataSourceForZoomLevel:a3];

  v13 = [v11 objectReferenceNearestToObjectReference:v8];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v13 px_descriptionForAssertionMessage];
      [v12 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:1260 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[dataSource objectReferenceNearestToObjectReference:sourceCollectionReference]", v18, v19}];

      goto LABEL_4;
    }
  }

LABEL_7:

  return v13;
}

- (id)viewModel:(id)a3 dominantAssetCollectionReferenceForZoomLevel:(int64_t)a4
{
  v6 = [a3 assetsDataSourceManager];
  v7 = [v6 dataSourceForZoomLevel:a4];

  v8 = [(PXCuratedLibrarySectionedLayout *)self lastVisibleDominantObjectReference];
  v9 = [v7 assetCollectionReferenceNearestToObjectReference:v8];

  if (v9)
  {
    if ([(PXCuratedLibrarySectionedLayout *)self prefersDominantHeroForZoomLevel:a4])
    {
      v29 = 0;
      v10 = [(PXCuratedLibrarySectionedLayout *)self sublayoutIndexForObjectReference:v9 options:0 updatedObjectReference:&v29];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [(PXCuratedLibrarySectionedLayout *)self _heroAssetCollectionReferenceClosestToAssetCollectionReference:v9 zoomLevel:a4];
        v12 = v11;
        v13 = v11 ? v11 : v9;
        v14 = v13;
      }

      else
      {
        v21 = v10;
        v22 = [(PXCuratedLibrarySectionedLayout *)self sublayoutDataStore];
        v12 = [v22 sublayoutAtIndex:v21];

        v23 = [(PXCuratedLibrarySectionedLayout *)self _heroSectionLayoutClosestToSectionLayout:v12 zoomLevel:a4];
        v24 = [v23 assetCollectionReference];
        v25 = v24;
        v26 = v24 ? v24 : v9;
        v14 = v26;

        v9 = v23;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_18;
  }

  v15 = [(PXCuratedLibrarySectionedLayout *)self dominantSectionLayout];
  v9 = [v15 assetCollectionReference];
  if ([v15 presentedSkimming])
  {
    v16 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
    v17 = [v16 skimmingInfo];
    v18 = [v17 childCollectionsZoomLevel];

    if (v18 == a4)
    {
      v19 = [(PXCuratedLibrarySectionedLayout *)self presentedDataSource];
      v20 = [v19 assetCollectionReferenceNearestToObjectReference:v9];

      v9 = [(PXCuratedLibrarySectionedLayout *)self _targetAssetCollectionReferenceInZoomLevel:a4 forTransitionFromAssetCollectionReference:v20];
    }
  }

  if (v9)
  {
LABEL_18:
    if (v7)
    {
      [v7 indexPathForAssetCollectionReference:v9];
    }

    if (!*off_1E7721F68)
    {
      v27 = [(PXCuratedLibrarySectionedLayout *)self _targetAssetCollectionReferenceInZoomLevel:a4 forTransitionFromAssetCollectionReference:v9];

      v9 = v27;
    }
  }

LABEL_22:

  return v9;
}

- (id)_heroAssetCollectionReferenceClosestToAssetCollectionReference:(id)a3 zoomLevel:(int64_t)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v6 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
  v7 = [v6 assetsDataSourceManager];
  v8 = [v7 dataSourceForZoomLevel:a4];

  v36 = 0u;
  v37 = 0u;
  if (v8)
  {
    [v8 indexPathForAssetCollectionReference:v27];
  }

  if (a4 != 2)
  {
    PXAssertGetLog();
  }

  if (v36 != *off_1E7721F68 && *(&v36 + 1) != 0x7FFFFFFFFFFFFFFFLL && v37 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v8 identifier];
    v12 = *(&v36 + 1);
    *buf = 0;
    v39 = buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__200158;
    v42 = __Block_byref_object_dispose__200159;
    v43 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__PXCuratedLibrarySectionedLayout__heroAssetCollectionReferenceClosestToAssetCollectionReference_zoomLevel___block_invoke;
    aBlock[3] = &unk_1E7743828;
    v13 = v8;
    v33 = v12;
    v34 = v11;
    v35 = 2;
    v31 = v13;
    v32 = buf;
    v14 = _Block_copy(aBlock);
    v15 = v14[2](v14, -1);
    if (*(v39 + 5) && (v16 = v15, v17 = v14[2](v14, 1), v16 <= v17))
    {
      v18 = v17 + 1;
      v19.f64[0] = NAN;
      v19.f64[1] = NAN;
      v26 = vnegq_f64(v19);
      while (1)
      {
        v28[0] = v11;
        v28[1] = v16;
        v29 = v26;
        v24 = [v13 assetCollectionReferenceAtSectionIndexPath:{v28, *&v26}];
        v20 = [v24 assetCollection];
        objc_opt_class();
        v21 = (objc_opt_isKindOfClass() & 1) != 0 ? v20 : 0;
        v22 = v21;
        v23 = [v22 keyAssetObjectIDForKind];

        LOBYTE(v22) = [v23 isEqual:*(v39 + 5)];
        if (v22)
        {
          break;
        }

        if (v18 == ++v16)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      v24 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t __108__PXCuratedLibrarySectionedLayout__heroAssetCollectionReferenceClosestToAssetCollectionReference_zoomLevel___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) numberOfSections];
  v5 = *(a1 + 48);
  if (v5 + a2 >= 0)
  {
    v6 = v4;
    if (v5 + a2 < v4)
    {
      v7 = 2 * a2;
      v8.f64[0] = NAN;
      v8.f64[1] = NAN;
      v22 = vnegq_f64(v8);
      while (1)
      {
        v9 = *(a1 + 32);
        v23[0] = *(a1 + 56);
        v23[1] = a2 + v5;
        v24 = v22;
        v10 = [v9 assetCollectionReferenceAtSectionIndexPath:{v23, *&v22}];
        v11 = v10;
        if (!v10)
        {
          break;
        }

        v12 = [v10 assetCollection];
        v13 = PXCuratedLibraryAssetsCollectionRepresentsChapterHeader(v12, *(a1 + 64));

        if (v13)
        {
          if (a2 < 0)
          {
            v16 = [v11 assetCollection];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }

            v18 = [v17 keyAssetObjectIDForKind];
            v19 = *(*(a1 + 40) + 8);
            v20 = *(v19 + 40);
            *(v19 + 40) = v18;
          }

          break;
        }

        v15 = v7 + v5;
        v14 = v7 + v5 < 0;
        v5 += a2;
        if (v14 || v15 >= v6)
        {
          return v5;
        }
      }
    }
  }

  return v5;
}

- (id)_heroSectionLayoutClosestToSectionLayout:(id)a3 zoomLevel:(int64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a4 != 2)
  {
    PXAssertGetLog();
  }

  if (v6)
  {
    v8 = [(PXCuratedLibrarySectionedLayout *)self sublayoutDataStore];
    v9 = [v8 indexOfSublayout:v7];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0;
    }

    else
    {
      v10 = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __86__PXCuratedLibrarySectionedLayout__heroSectionLayoutClosestToSectionLayout_zoomLevel___block_invoke;
      aBlock[3] = &unk_1E7743800;
      v8 = v8;
      v18 = v8;
      v19 = v10;
      v20 = 2;
      v11 = _Block_copy(aBlock);
      v12 = v11[2](v11, -1);
      v13 = v11[2](v11, 1);
      if (v12 > v13)
      {
LABEL_8:
        v15 = 0;
      }

      else
      {
        v14 = v13 + 1;
        while (1)
        {
          v15 = [v8 sublayoutAtIndex:v12];
          if (([v15 referenceOptions] & 4) != 0)
          {
            break;
          }

          if (v14 == ++v12)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t __86__PXCuratedLibrarySectionedLayout__heroSectionLayoutClosestToSectionLayout_zoomLevel___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) count];
  v5 = *(a1 + 40);
  if (v5 + a2 >= 0)
  {
    v6 = v4;
    if (v5 + a2 < v4)
    {
      v7 = 2 * a2;
      while (1)
      {
        v8 = [*(a1 + 32) sublayoutAtIndex:a2 + v5];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v9 = [v8 assetCollection];
        v10 = v9;
        if (!v9 || PXCuratedLibraryAssetsCollectionRepresentsChapterHeader(v9, *(a1 + 48)))
        {

          break;
        }

        v12 = v7 + v5;
        v11 = v7 + v5 < 0;
        v5 += a2;
        if (v11 || v12 >= v6)
        {
          return v5;
        }
      }
    }
  }

  return v5;
}

- (PXAssetsSectionLayout)dominantSectionLayout
{
  v3 = [(PXCuratedLibrarySectionedLayout *)self lastHitSpriteReference];
  if (v3)
  {
    v4 = [(PXCuratedLibrarySectionedLayout *)self sublayoutIndexForSpriteReference:v3 options:0];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = [(PXCuratedLibrarySectionedLayout *)self presentedZoomLevel];
  v6 = [(PXCuratedLibrarySectionedLayout *)self lastVisibleDominantObjectReference];
  if (v6)
  {
    v7 = [(PXCuratedLibrarySectionedLayout *)self spriteReferenceForObjectReference:v6];
    v4 = [(PXCuratedLibrarySectionedLayout *)self sublayoutIndexForSpriteReference:v7 options:1];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__200158;
  v31 = __Block_byref_object_dispose__200159;
  v32 = 0;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || ([(PXCuratedLibrarySectionedLayout *)self sublayoutAtIndex:v4 loadIfNeeded:0], v8 = objc_claimAutoreleasedReturnValue(), v9 = v28[5], v28[5] = v8, v9, !v28[5]))
  {
    [(PXCuratedLibrarySectionedLayout *)self visibleRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(PXCuratedLibrarySectionedLayout *)self fullyVisibleEdgesWithDefaultTolerance];
    if ((v18 & 5) == 0)
    {
      [(PXCuratedLibrarySectionedLayout *)self safeAreaInsets];
      v19 = +[PXCuratedLibrarySettings sharedInstance];
      [v19 topInsetForVisibilityAnchoring];

      PXEdgeInsetsInsetRect();
    }

    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v26[3] = 0x7FEFFFFFFFFFFFFFLL;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __56__PXCuratedLibrarySectionedLayout_dominantSectionLayout__block_invoke;
    v23[3] = &unk_1E77437B0;
    v24 = (v18 & 4) != 0;
    v23[4] = self;
    v23[5] = v26;
    v23[6] = v25;
    v23[7] = &v27;
    v23[8] = v5;
    [(PXCuratedLibrarySectionedLayout *)self enumerateAssetsSectionSublayoutsInRect:v23 usingBlock:v11, v13, v15, v17];
    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v26, 8);
  }

  if ([(PXCuratedLibrarySectionedLayout *)self prefersDominantHeroForZoomLevel:v5])
  {
    v20 = [(PXCuratedLibrarySectionedLayout *)self _heroSectionLayoutClosestToSectionLayout:v28[5] zoomLevel:v5];
    if (v20)
    {
      objc_storeStrong(v28 + 5, v20);
    }
  }

  v21 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v21;
}

void __56__PXCuratedLibrarySectionedLayout_dominantSectionLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a3;
  v5 = [v22 assetCollection];
  v6 = v5;
  if (v5 && !PXCuratedLibraryAssetsCollectionRepresentsChapterHeader(v5, *(a1 + 64)))
  {
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
    [v22 contentSize];
    [*(a1 + 32) convertRect:v22 fromDescendantLayout:{v7, v8, v9, v10}];
    v15 = *(a1 + 72) == 1 ? -CGRectGetMaxY(*&v11) : CGRectGetMinY(*&v11);
    v16 = round(v15);
    if (*(a1 + 72))
    {
      v17 = [v6 endDate];
      [v17 timeIntervalSinceReferenceDate];
      v19 = -v18;
    }

    else
    {
      v17 = [v6 startDate];
      [v17 timeIntervalSinceReferenceDate];
      v19 = v20;
    }

    v21 = *(*(*(a1 + 40) + 8) + 24);
    if (v16 < v21 || v16 == v21 && v19 < *(*(*(a1 + 48) + 8) + 24))
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
      *(*(*(a1 + 40) + 8) + 24) = v16;
      *(*(*(a1 + 48) + 8) + 24) = v19;
    }
  }
}

void __56__PXCuratedLibrarySectionedLayout_dominantSectionLayout__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a3;
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  [v17 contentSize];
  [*(a1 + 32) convertRect:v17 fromDescendantLayout:{v4, v5, v6, v7}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v17 assetCollection];
  if (v16 && !PXCuratedLibraryAssetsCollectionRepresentsChapterHeader(v16, *(a1 + 64)) && ([v17 referenceOptions] & 4) != 0)
  {
    v18.origin.x = v9;
    v18.origin.y = v11;
    v18.size.width = v13;
    v18.size.height = v15;
    CGRectContainsRect(*(a1 + 72), v18);
  }

  PXRectShortestDistanceToPoint();
}

- (CGRect)sectionBoundariesForAssetCollectionReference:(id)a3
{
  v16 = 0;
  v4 = [(PXCuratedLibrarySectionedLayout *)self sublayoutIndexForObjectReference:a3 options:0 updatedObjectReference:&v16];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *MEMORY[0x1E695F050];
    v6 = *(MEMORY[0x1E695F050] + 8);
    v7 = *(MEMORY[0x1E695F050] + 16);
    v8 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v9 = v4;
    v10 = [(PXCuratedLibrarySectionedLayout *)self sublayoutDataStore];
    v11 = ([v10 geometries] + 136 * v9);
    v7 = v11[4];
    v8 = v11[5];
    v5 = v11[6];
    v6 = v11[7];
  }

  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)enumerateHeroSpritesInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PXCuratedLibrarySectionedLayout_enumerateHeroSpritesInRect_usingBlock___block_invoke;
  v11[3] = &unk_1E7743648;
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  [(PXCuratedLibrarySectionedLayout *)self enumerateAssetsSectionSublayoutsInRect:v11 usingBlock:x, y, width, height];
}

void __73__PXCuratedLibrarySectionedLayout_enumerateHeroSpritesInRect_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = [a3 bodyContentLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) convertRect:v6 toDescendantLayout:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__PXCuratedLibrarySectionedLayout_enumerateHeroSpritesInRect_usingBlock___block_invoke_2;
    v17[3] = &unk_1E7743788;
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    v19 = v15;
    v17[4] = v16;
    v18 = v6;
    v20 = a4;
    [v18 enumerateHeroSpritesInRect:v17 usingBlock:{v8, v10, v12, v14}];
  }
}

uint64_t __73__PXCuratedLibrarySectionedLayout_enumerateHeroSpritesInRect_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 48);
  v14 = [*(a1 + 32) convertSpriteIndex:a2 fromDescendantLayout:*(a1 + 40)];
  [*(a1 + 32) convertRect:*(a1 + 40) fromDescendantLayout:{a4, a5, a6, a7}];
  result = (*(v13 + 16))(v13, v14, a3);
  if (*a3 == 1)
  {
    **(a1 + 56) = 1;
  }

  return result;
}

- (void)enumerateScrollablePagesWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v7 = a4;
  v8 = [(PXCuratedLibrarySectionedLayout *)self spec];
  v9 = [(PXCuratedLibrarySectionedLayout *)self presentedZoomLevel];
  switch(v9)
  {
    case 3:
      goto LABEL_16;
    case 2:
      v10 = [(PXGCompositeLayout *)self composition];
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = [v10 px_descriptionForAssertionMessage];
          [v18 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:943 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.composition", v20, v21}];
        }
      }

      if (![v8 allowsPaginatedScrollingInYearsAndMonths])
      {
        goto LABEL_18;
      }

      if (([v10 presentedSingleColumn] & 1) == 0)
      {
        v47[0] = 0;
        v47[1] = v47;
        v47[2] = 0x4010000000;
        v47[3] = &unk_1A561E057;
        v12 = *(MEMORY[0x1E695F050] + 16);
        v48 = *MEMORY[0x1E695F050];
        v49 = v12;
        v46[0] = 0;
        v46[1] = v46;
        v46[2] = 0x2020000000;
        v46[3] = 0x7FFFFFFFFFFFFFFFLL;
        v44[0] = 0;
        v44[1] = v44;
        v44[2] = 0x2020000000;
        v45 = 1;
        v42[0] = 0;
        v42[1] = v42;
        v42[2] = 0x2020000000;
        v43 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __82__PXCuratedLibrarySectionedLayout_enumerateScrollablePagesWithOptions_usingBlock___block_invoke;
        aBlock[3] = &unk_1E7743710;
        v39 = v47;
        v40 = v42;
        v38 = v7;
        v41 = v44;
        v13 = _Block_copy(aBlock);
        v14 = [(PXCuratedLibrarySectionedLayout *)self presentedDataSource];
        v15 = [v14 identifier];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __82__PXCuratedLibrarySectionedLayout_enumerateScrollablePagesWithOptions_usingBlock___block_invoke_2;
        v28[3] = &unk_1E7743738;
        v16 = v14;
        v35 = v15;
        v36 = 2;
        v29 = v16;
        v31 = v47;
        v32 = v46;
        v33 = v44;
        v17 = v13;
        v30 = v17;
        v34 = v42;
        [(PXCuratedLibrarySectionedLayout *)self enumerateSectionBoundariesWithOptions:a3 usingBlock:v28];
        v17[2](v17);

        _Block_object_dispose(v42, 8);
        _Block_object_dispose(v44, 8);
        _Block_object_dispose(v46, 8);
        _Block_object_dispose(v47, 8);
        goto LABEL_18;
      }

LABEL_16:
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __82__PXCuratedLibrarySectionedLayout_enumerateScrollablePagesWithOptions_usingBlock___block_invoke_3;
      v26[3] = &unk_1E7743760;
      v27 = v7;
      [(PXCuratedLibrarySectionedLayout *)self enumerateSectionBoundariesWithOptions:a3 usingBlock:v26];

      break;
    case 1:
      v10 = [(PXGCompositeLayout *)self composition];
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = [MEMORY[0x1E696AAA8] currentHandler];
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v25 = [v10 px_descriptionForAssertionMessage];
          [v22 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:933 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.composition", v24, v25}];
        }
      }

      if ([v8 allowsPaginatedScrollingInYearsAndMonths])
      {
        v11 = [v10 presentedNumberOfColumns];

        if (v11 != 1)
        {
          break;
        }

        goto LABEL_16;
      }

LABEL_18:

      break;
  }
}

__n128 __82__PXCuratedLibrarySectionedLayout_enumerateScrollablePagesWithOptions_usingBlock___block_invoke(void *a1)
{
  if (!CGRectIsNull(*(*(a1[5] + 8) + 32)) && (*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    (*(a1[4] + 16))(*(*(a1[5] + 8) + 32), *(*(a1[5] + 8) + 40), *(*(a1[5] + 8) + 48), *(*(a1[5] + 8) + 56));
  }

  v2 = *(a1[5] + 8);
  result = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 16);
  *(v2 + 32) = *MEMORY[0x1E695F050];
  *(v2 + 48) = v4;
  *(*(a1[7] + 8) + 24) = 1;
  return result;
}

void __82__PXCuratedLibrarySectionedLayout_enumerateScrollablePagesWithOptions_usingBlock___block_invoke_2(void *a1, uint64_t a2, char a3, _BYTE *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = a1[4];
  v19[0] = a1[10];
  v19[1] = a2;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v20 = vnegq_f64(v17);
  v18 = [v16 assetCollectionAtSectionIndexPath:v19];
  if (PXCuratedLibraryAssetsCollectionRepresentsChapterHeader(v18, a1[11]))
  {
    (*(a1[5] + 16))();
    *a4 = *(*(a1[9] + 8) + 24);
  }

  else
  {
    v21.origin.x = a5;
    v21.origin.y = a6;
    v21.size.width = a7;
    v21.size.height = a8;
    *(*(a1[6] + 8) + 32) = CGRectUnion(*(*(a1[6] + 8) + 32), v21);
    *(*(a1[7] + 8) + 24) = a2;
    *(*(a1[8] + 8) + 24) &= a3;
  }
}

- (void)enumerateSectionBoundariesWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(PXCuratedLibrarySectionedLayout *)self sublayoutDataStore];
  v8 = [v7 count];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PXCuratedLibrarySectionedLayout_enumerateSectionBoundariesWithOptions_usingBlock___block_invoke;
  v10[3] = &unk_1E77436E8;
  v11 = v6;
  v9 = v6;
  [v7 enumerateSublayoutGeometriesInRange:0 options:v8 usingBlock:{a3, v10}];
}

uint64_t __84__PXCuratedLibrarySectionedLayout_enumerateSectionBoundariesWithOptions_usingBlock___block_invoke(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, void *a7)
{
  a2.n128_u64[0] = a7[6];
  a3.n128_u64[0] = a7[7];
  a4.n128_u64[0] = a7[4];
  a5.n128_u64[0] = a7[5];
  return (*(*(a1 + 32) + 16))(a2, a3, a4, a5);
}

- (void)enumerateAssetsSectionSublayoutsInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(PXCuratedLibrarySectionedLayout *)self sublayoutDataStore];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PXCuratedLibrarySectionedLayout_enumerateAssetsSectionSublayoutsInRect_usingBlock___block_invoke;
  v12[3] = &unk_1E77436C0;
  v13 = v9;
  v11 = v9;
  [v10 enumerateSublayoutsInRect:v12 usingBlock:{x, y, width, height}];
}

void __85__PXCuratedLibrarySectionedLayout_enumerateAssetsSectionSublayoutsInRect_usingBlock___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v12 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))(a2, a3, a4, a5);
  }
}

- (void)enumerateAssetsSectionSublayoutsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibrarySectionedLayout *)self sublayoutDataStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PXCuratedLibrarySectionedLayout_enumerateAssetsSectionSublayoutsUsingBlock___block_invoke;
  v7[3] = &unk_1E7743698;
  v8 = v4;
  v6 = v4;
  [v5 enumerateSublayoutsUsingBlock:v7];
}

void __78__PXCuratedLibrarySectionedLayout_enumerateAssetsSectionSublayoutsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)layout:(id)a3 collectIndexesOfChapterHeaderSublayouts:(id)a4 heroSublayouts:(id)a5 inRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v11 = a3;
  v30 = a4;
  v29 = a5;
  v12 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
  v13 = [v12 currentDataSource];

  v14 = [v13 identifier];
  if (location < (location + length))
  {
    v15 = v14;
    v28 = v11;
    v32 = 0;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v31 = vnegq_f64(v16);
    v17 = 0x1E6978000uLL;
    v18 = &OBJC_IVAR___PXMagazineLayoutCoordinator__stopIfAnyGoodLayout;
    do
    {
      v33[0] = v15;
      v33[1] = location;
      v34 = v31;
      v19 = [v13 assetCollectionAtSectionIndexPath:v33];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = [v20 keyAssetObjectIDForKind];
      if (PXCuratedLibraryAssetsCollectionRepresentsChapterHeader(v19, *(&self->super.super.super.isa + v18[987])))
      {
        [v30 addIndex:location];
        v22 = v15;
        v23 = v13;
        v24 = self;
        v25 = v18;
        v26 = v17;
        v27 = v21;

        v32 = v27;
        v17 = v26;
        v18 = v25;
        self = v24;
        v13 = v23;
        v15 = v22;
      }

      else if ([v21 isEqual:v32])
      {
        [v29 addIndex:location];
      }

      ++location;
      --length;
    }

    while (length);

    v11 = v28;
  }
}

- (BOOL)layout:(id)a3 shouldPreventFaultOutOfSublayout:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = 0;
    goto LABEL_10;
  }

  v6 = v5;
  if (self->_dataSourceIdentifierOfCachedSectionsWithSelectedItems == *off_1E7721F68)
  {
    v7 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
    v8 = [v7 selectionSnapshot];

    v9 = [v8 dataSource];
    self->_dataSourceIdentifierOfCachedSectionsWithSelectedItems = [v9 identifier];

    v10 = [v8 selectedIndexPaths];
    v11 = [v10 sectionsWithItemsForDataSourceIdentifier:self->_dataSourceIdentifierOfCachedSectionsWithSelectedItems];
    cachedSectionsWithSelectedItems = self->_cachedSectionsWithSelectedItems;
    self->_cachedSectionsWithSelectedItems = v11;
  }

  v13 = [v6 dataSource];
  v14 = [v13 identifier];
  dataSourceIdentifierOfCachedSectionsWithSelectedItems = self->_dataSourceIdentifierOfCachedSectionsWithSelectedItems;

  if (v14 != dataSourceIdentifierOfCachedSectionsWithSelectedItems)
  {
    goto LABEL_12;
  }

  v16 = [v6 section];
  v17 = self->_cachedSectionsWithSelectedItems;
  if (![(NSIndexSet *)v17 containsIndex:v16]&& ![(NSIndexSet *)v17 containsIndex:v16 - 1]&& ![(NSIndexSet *)v17 containsIndex:v16 + 1])
  {

LABEL_12:
    v18 = [v6 hasPointReferences];
    goto LABEL_9;
  }

  v18 = 1;
LABEL_9:

LABEL_10:
  return v18;
}

- (void)_configureSectionLayout:(id)a3 atIndex:(int64_t)a4
{
  v16 = a3;
  v6 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
  [(PXCuratedLibrarySectionedLayout *)self defaultInterlayoutSpacing];
  [v16 setIntersectionSpacing:?];
  [v16 setIsSelecting:{objc_msgSend(v6, "isSelecting")}];
  v7 = [v6 draggedAssetReferences];
  [v16 setDraggedAssetReferences:v7];

  v8 = [v6 allowedActions];
  [v16 setCanStartSelecting:{objc_msgSend(v8, "containsObject:", @"PXCuratedLibraryActionEnterSelectMode"}];

  if ([v6 zoomLevel] == 4)
  {
    v9 = self->_accumulatedSectionItems[a4];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v16 setNumberOfPrecedingAssets:v9];
  v10 = [v16 dataSource];
  v11 = [v10 identifier];
  v12 = [v6 selectionSnapshot];
  v13 = [v12 dataSource];
  v14 = [v13 identifier];

  if (v11 == v14)
  {
    v15 = [v6 selectionSnapshot];
  }

  else
  {
    v15 = 0;
  }

  [v16 setSelectionSnapshot:v15];
}

- (id)layout:(id)a3 createSublayoutAtIndex:(int64_t)a4
{
  v6 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
  v7 = [v6 currentDataSource];
  v8 = [v7 numberOfItemsInSection:a4];

  if (!v8)
  {
    v9 = [v6 assetsDataSourceManager];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__PXCuratedLibrarySectionedLayout_layout_createSublayoutAtIndex___block_invoke;
    v18[3] = &__block_descriptor_40_e58_v16__0___PXCuratedLibraryMutableAssetsDataSourceManager__8l;
    v18[4] = a4;
    [v9 performChanges:v18];
  }

  v10 = [off_1E77214C0 alloc];
  currentDataSource = self->_currentDataSource;
  v12 = [v6 videoPlaybackController];
  currentZoomLevel = self->_currentZoomLevel;
  v14 = [(PXCuratedLibrarySectionedLayout *)self spec];
  v15 = [v14 sectionLayoutSpec];
  v16 = [v10 initWithSection:a4 dataSource:currentDataSource loadingStatusManager:0 assetImportStatusManager:0 inlinePlaybackController:v12 zoomLevel:currentZoomLevel spec:v15];

  [(PXCuratedLibrarySectionedLayout *)self _configureSectionLayout:v16 atIndex:a4];

  return v16;
}

void __65__PXCuratedLibrarySectionedLayout_layout_createSublayoutAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AC90];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 indexSetWithIndex:v3];
  [v4 forceAccurateSectionsIfNeeded:v5];
}

- (CGSize)layout:(id)a3 estimatedContentSizeForSublayoutAtIndex:(int64_t)a4 referenceSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  currentDataSource = self->_currentDataSource;
  v23[0] = [(PXAssetsDataSource *)currentDataSource identifier];
  v23[1] = a4;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v24 = vnegq_f64(v10);
  v11 = [(PXAssetsDataSource *)currentDataSource assetCollectionAtSectionIndexPath:v23];
  v12 = [v11 estimatedAssetCount];
  v13 = [(PXAssetsDataSource *)self->_currentDataSource hasCurationForAssetCollection:v11];
  currentZoomLevel = self->_currentZoomLevel;
  v15 = [(PXCuratedLibrarySectionedLayout *)self spec];
  v16 = [v15 sectionLayoutSpec];
  [off_1E77214C0 estimatedSizeWithReferenceSize:v11 assetCollection:v12 numberOfAssets:v13 isCurated:currentZoomLevel zoomLevel:v16 spec:{width, height}];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXCuratedLibraryViewModelObserverContext_200180 != a5)
  {
    goto LABEL_44;
  }

  if ((v6 & 0x10) != 0)
  {
    if (self->_isUpdatingSublayouts)
    {
      [(PXCuratedLibrarySectionedLayout *)self _updateSublayoutsDataSource];
      goto LABEL_13;
    }

    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_10:
        p_updateFlags->needsUpdate = needsUpdate | 2;
LABEL_11:
        if (([(PXAssetsDataSource *)self->_currentDataSource areAllSectionsConsideredAccurate]& 1) == 0)
        {
          [(PXCuratedLibrarySectionedLayout *)self setNeedsUpdate];
        }

        goto LABEL_13;
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 2;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibrarySectionedLayout *)self setNeedsUpdate];
      }

      goto LABEL_11;
    }

    if ((self->_updateFlags.updated & 2) != 0)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout observable:didChange:context:]"];
      [v26 handleFailureInFunction:v27 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:749 description:{@"invalidating %lu after it already has been updated", 2}];
      goto LABEL_60;
    }

    goto LABEL_10;
  }

LABEL_13:
  if ((v6 & 4) == 0)
  {
    goto LABEL_21;
  }

  v11 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
  v12 = [v11 zoomLevel];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __64__PXCuratedLibrarySectionedLayout_observable_didChange_context___block_invoke;
  v28[3] = &__block_descriptor_40_e38_v32__0q8__PXAssetsSectionLayout_16_B24l;
  v28[4] = v12;
  [(PXCuratedLibrarySectionedLayout *)self enumerateAssetsSectionSublayoutsUsingBlock:v28];
  v13 = &self->_updateFlags;
  v14 = self->_updateFlags.needsUpdate;
  if (!v14)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      v22 = self->_updateFlags.willPerformUpdate;
      v13->needsUpdate = 4;
      if (!v22)
      {
        [(PXCuratedLibrarySectionedLayout *)self setNeedsUpdate];
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
LABEL_18:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout observable:didChange:context:]"];
      [v26 handleFailureInFunction:v27 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:765 description:{@"invalidating %lu after it already has been updated", 4}];
      goto LABEL_60;
    }
  }

  v13->needsUpdate = v14 | 4;
LABEL_20:
  [(PXCuratedLibrarySectionedLayout *)self setNeedsUpdate];
LABEL_21:
  if ((*&v6 & 0x210009) == 0)
  {
    goto LABEL_28;
  }

  v15 = &self->_updateFlags;
  v16 = self->_updateFlags.needsUpdate;
  if (v16)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_27:
      v15->needsUpdate = v16 | 8;
      goto LABEL_28;
    }

LABEL_26:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout observable:didChange:context:]"];
      [v26 handleFailureInFunction:v27 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:777 description:{@"invalidating %lu after it already has been updated", 8}];
      goto LABEL_60;
    }

    goto LABEL_27;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_26;
  }

  v21 = self->_updateFlags.willPerformUpdate;
  v15->needsUpdate = 8;
  if (!v21)
  {
    [(PXCuratedLibrarySectionedLayout *)self setNeedsUpdate];
  }

LABEL_28:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_35;
  }

  v17 = &self->_updateFlags;
  v18 = self->_updateFlags.needsUpdate;
  if (v18)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_34:
      v17->needsUpdate = v18 | 0x10;
      goto LABEL_35;
    }

LABEL_33:
    if ((self->_updateFlags.updated & 0x10) != 0)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout observable:didChange:context:]"];
      [v26 handleFailureInFunction:v27 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:781 description:{@"invalidating %lu after it already has been updated", 16}];
      goto LABEL_60;
    }

    goto LABEL_34;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_33;
  }

  v23 = self->_updateFlags.willPerformUpdate;
  v17->needsUpdate = 16;
  if (!v23)
  {
    [(PXCuratedLibrarySectionedLayout *)self setNeedsUpdate];
  }

LABEL_35:
  if ((v6 & 8) != 0)
  {
    self->_dataSourceIdentifierOfCachedSectionsWithSelectedItems = *off_1E7721F68;
  }

  if ((v6 & 0x800) != 0)
  {
    v19 = &self->_updateFlags;
    v20 = self->_updateFlags.needsUpdate;
    if (v20)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
LABEL_42:
      if ((self->_updateFlags.updated & 0x40) == 0)
      {
LABEL_43:
        v19->needsUpdate = v20 | 0x40;
        goto LABEL_44;
      }

      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout observable:didChange:context:]"];
      [v26 handleFailureInFunction:v27 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:789 description:{@"invalidating %lu after it already has been updated", 64}];
LABEL_60:

      abort();
    }

    v24 = self->_updateFlags.willPerformUpdate;
    v19->needsUpdate = 64;
    if (!v24)
    {
      [(PXCuratedLibrarySectionedLayout *)self setNeedsUpdate];
    }
  }

LABEL_44:
}

- (void)enumerateAssetsInRect:(CGRect)a3 enumerator:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PXCuratedLibrarySectionedLayout_enumerateAssetsInRect_enumerator___block_invoke;
  v11[3] = &unk_1E7743648;
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  [(PXCuratedLibrarySectionedLayout *)self enumerateAssetsSectionSublayoutsInRect:v11 usingBlock:x, y, width, height];
}

void __68__PXCuratedLibrarySectionedLayout_enumerateAssetsInRect_enumerator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [*(a1 + 32) convertRect:v4 toDescendantLayout:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (CGRectIsNull(v17))
  {
    v9 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Failed to enumerate assets for <%{public}@:%p>", &v12, 0x16u);
    }
  }

  else
  {
    [v4 enumerateAssetsInRect:*(a1 + 40) enumerator:{x, y, width, height}];
  }
}

- (void)enumerateAssetCollectionsInRect:(CGRect)a3 enumerator:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PXCuratedLibrarySectionedLayout_enumerateAssetCollectionsInRect_enumerator___block_invoke;
  v11[3] = &unk_1E7743648;
  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  [(PXCuratedLibrarySectionedLayout *)self enumerateAssetsSectionSublayoutsInRect:v11 usingBlock:x, y, width, height];
}

void __78__PXCuratedLibrarySectionedLayout_enumerateAssetCollectionsInRect_enumerator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [*(a1 + 32) convertRect:v4 toDescendantLayout:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (CGRectIsNull(v17))
  {
    v9 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Failed to enumerate asset collections for <%{public}@:%p>", &v12, 0x16u);
    }
  }

  else
  {
    [v4 enumerateAssetCollectionsInRect:*(a1 + 40) enumerator:{x, y, width, height}];
  }
}

- (id)dateIntervalFutureForContentInRect:(CGRect)a3 type:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__PXCuratedLibrarySectionedLayout_dateIntervalFutureForContentInRect_type___block_invoke;
  v17[3] = &unk_1E77435F8;
  v17[4] = self;
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  v10 = v9;
  v18 = v10;
  [(PXCuratedLibrarySectionedLayout *)self enumerateAssetsSectionSublayoutsInRect:v17 usingBlock:x, y, width, height];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PXCuratedLibrarySectionedLayout_dateIntervalFutureForContentInRect_type___block_invoke_2;
  aBlock[3] = &unk_1E7743620;
  v16 = v10;
  v11 = v10;
  v12 = _Block_copy(aBlock);
  v13 = [v12 copy];

  return v13;
}

void __75__PXCuratedLibrarySectionedLayout_dateIntervalFutureForContentInRect_type___block_invoke(double *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v9 = a3;
  [v4 convertRect:v9 toDescendantLayout:{v5, v6, v7, v8}];
  aBlock = [v9 dateIntervalFutureForContentInRect:0 type:?];

  v10 = aBlock;
  if (aBlock)
  {
    v11 = *(a1 + 5);
    v12 = _Block_copy(aBlock);
    [v11 addObject:v12];

    v10 = aBlock;
  }
}

id __75__PXCuratedLibrarySectionedLayout_dateIntervalFutureForContentInRect_type___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v16;
    do
    {
      v7 = 0;
      v8 = v4;
      v9 = v5;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v1);
        }

        v10 = (*(*(*(&v15 + 1) + 8 * v7) + 16))();
        v13 = v8;
        v14 = v9;
        [MEMORY[0x1E695DF00] px_unionStartDate:&v14 endDate:&v13 withDateInterval:v10];
        v5 = v14;

        v4 = v13;
        ++v7;
        v8 = v4;
        v9 = v5;
      }

      while (v3 != v7);
      v3 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);

    v11 = 0;
    if (v5 && v4)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:v4];
    }
  }

  else
  {

    v5 = 0;
    v4 = 0;
    v11 = 0;
  }

  return v11;
}

- (void)setDominantHeroPreferences:(id)a3
{
  v4 = [a3 mutableCopy];
  zoomLevelsPreferringDominantHeros = self->_zoomLevelsPreferringDominantHeros;
  self->_zoomLevelsPreferringDominantHeros = v4;
}

- (id)dominantHeroPreferences
{
  v2 = [(NSMutableIndexSet *)self->_zoomLevelsPreferringDominantHeros copy];

  return v2;
}

- (void)setPrefersDominantHero:(BOOL)a3 forZoomLevel:(int64_t)a4
{
  zoomLevelsPreferringDominantHeros = self->_zoomLevelsPreferringDominantHeros;
  if (a3)
  {
    if (!zoomLevelsPreferringDominantHeros)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v8 = self->_zoomLevelsPreferringDominantHeros;
      self->_zoomLevelsPreferringDominantHeros = v7;

      zoomLevelsPreferringDominantHeros = self->_zoomLevelsPreferringDominantHeros;
    }

    [(NSMutableIndexSet *)zoomLevelsPreferringDominantHeros addIndex:a4];
  }

  else
  {

    [(NSMutableIndexSet *)zoomLevelsPreferringDominantHeros removeIndex:a4];
  }
}

- (void)setSafeAreaInsets:(UIEdgeInsets)a3
{
  v9.receiver = self;
  v9.super_class = PXCuratedLibrarySectionedLayout;
  [(PXCuratedLibrarySectionedLayout *)&v9 setSafeAreaInsets:a3.top, a3.left, a3.bottom, a3.right];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout setSafeAreaInsets:]"];
      [v7 handleFailureInFunction:v8 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:653 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {
    [(PXCuratedLibrarySectionedLayout *)self setNeedsUpdate];
  }
}

- (void)setLateralMargin:(double)a3
{
  if (self->_lateralMargin == a3)
  {
    return;
  }

  self->_lateralMargin = a3;
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_8:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_7:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout setLateralMargin:]"];
      [v7 handleFailureInFunction:v8 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:648 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_8;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXCuratedLibrarySectionedLayout *)self setNeedsUpdate];
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_spec, a3);
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_10:
        p_updateFlags->needsUpdate = needsUpdate | 5;
        goto LABEL_11;
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 5;
      v5 = v11;
      if (willPerformUpdate)
      {
        goto LABEL_2;
      }

      [(PXCuratedLibrarySectionedLayout *)self setNeedsUpdate];
LABEL_11:
      v5 = v11;
      goto LABEL_2;
    }

    if ((self->_updateFlags.updated & 5) != 0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout setSpec:]"];
      [v9 handleFailureInFunction:v10 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:640 description:{@"invalidating %lu after it already has been updated", 5}];

      abort();
    }

    goto LABEL_10;
  }

LABEL_2:
}

- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(PXCuratedLibrarySectionedLayout *)self presentedDataSource];
    if (a4 & 2) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
      v12 = -[PXCuratedLibrarySectionedLayout _targetAssetCollectionReferenceInZoomLevel:forTransitionFromAssetCollectionReference:](self, "_targetAssetCollectionReferenceInZoomLevel:forTransitionFromAssetCollectionReference:", [v11 zoomLevel], v9);
    }

    else
    {
      if (a4)
      {
        [v10 objectReferenceNearestToObjectReference:v9];
      }

      else
      {
        [v10 objectReferenceForObjectReference:v9];
      }
      v12 = ;
    }

    *buf = 0u;
    v21 = 0u;
    if (v12)
    {
      [v12 indexPath];
      v14 = *buf;
    }

    else
    {
      v14 = 0;
    }

    if (v14 == *off_1E7721F68)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = *&buf[8];
      if (*&buf[8] == 0x7FFFFFFFFFFFFFFFLL || v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = v12;
      }

      else
      {
        v15 = [(PXCuratedLibrarySectionedLayout *)self sublayoutAtIndex:*&buf[8] loadIfNeeded:0];
        v16 = [v15 assetCollectionReference];

        v9 = v15;
      }

      v9 = v16;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      PXAssertGetLog();
    }

    v10 = [v9 decoratedSpriteReference];
    v13 = [(PXCuratedLibrarySectionedLayout *)self sublayoutIndexForSpriteReference:v10 options:a4];
  }

  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEBUG, "library layout couldn't find a match for %@", buf, 0xCu);
    }

    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v13 < [(PXCuratedLibrarySectionedLayout *)self numberOfSublayouts])
    {
      goto LABEL_29;
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:599 description:@"sublayoutIndex %li out of bounds (0..%li) for object reference %@", v13, [(PXCuratedLibrarySectionedLayout *)self numberOfSublayouts]- 1, v9];
  }

LABEL_29:
  v18 = v9;
  *a5 = v9;

  return v13;
}

- (void)clearLastVisibleAreaAnchoringInformation
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibrarySectionedLayout;
  [(PXCuratedLibrarySectionedLayout *)&v3 clearLastVisibleAreaAnchoringInformation];
  [(PXCuratedLibrarySectionedLayout *)self setLastHitSpriteReference:0];
}

- (void)setLastHitSpriteReference:(id)a3
{
  v5 = a3;
  if (self->_lastHitSpriteReference != v5)
  {
    v6 = v5;
    if (v5)
    {
      [(PXCuratedLibrarySectionedLayout *)self clearLastVisibleAreaAnchoringInformation];
    }

    objc_storeStrong(&self->_lastHitSpriteReference, a3);
    v5 = v6;
  }
}

- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibrarySectionedLayout *)self dominantSectionLayout];
  if (v5)
  {
    v7 = 0;
    v4[2](v4, v5, &v7);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXCuratedLibrarySectionedLayout;
    [(PXCuratedLibrarySectionedLayout *)&v6 enumerateVisibleAnchoringLayoutsUsingBlock:v4];
  }
}

- (void)_anchorVisibleArea
{
  v4 = [(PXCuratedLibrarySectionedLayout *)self rootLayout];
  v2 = [v4 createAnchorForVisibleArea];
  v3 = [v2 autoInvalidate];
}

- (void)_updatePreheating
{
  v3 = [off_1E77219A8 sharedInstance];
  if ([v3 preheatThumbnailsWhenIdle])
  {
    v4 = [(PXCuratedLibrarySectionedLayout *)self mediaProvider];
    v5 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
    v6 = [v5 scrollRegime];

    if (!v6)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0x7FFFFFFFFFFFFFFFLL;
      [(PXCuratedLibrarySectionedLayout *)self visibleRect];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __52__PXCuratedLibrarySectionedLayout__updatePreheating__block_invoke;
      v27[3] = &unk_1E77435D0;
      v27[4] = &v28;
      [(PXCuratedLibrarySectionedLayout *)self enumerateAssetsSectionSublayoutsInRect:v27 usingBlock:?];
      v7 = self->_currentDataSource;
      v8 = v7;
      v9 = v29[3];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL && v9 < [(PXAssetsDataSource *)v7 numberOfSections])
      {
        v10 = [(PXAssetsDataSource *)v8 numberOfSections];
        v11 = v29[3];
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v22 = [MEMORY[0x1E696AAA8] currentHandler];
          v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSRange PXRangeWithMidLocationAndPadding(NSInteger, NSInteger)"}];
          [v22 handleFailureInFunction:v23 file:@"NSRange+PhotosUIFoundation.h" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"midLocation != NSNotFound"}];
        }

        v12 = 100;
        if (v11 > 100)
        {
          v12 = v11;
        }

        v32.location = v12 - 100;
        v32.length = v11 - v12 + 201;
        v33.location = 0;
        v33.length = v10;
        v13 = NSIntersectionRange(v32, v33);
        length = v13.length;
        if (v13.length)
        {
          location = v13.location;
          v16 = [(PXAssetsDataSource *)v8 identifier];
          v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v13.length];
          if (location < location + v13.length)
          {
            v18 = 0;
            v19.f64[0] = NAN;
            v19.f64[1] = NAN;
            v24 = vnegq_f64(v19);
            do
            {
              v25[0] = v16;
              v25[1] = location;
              v26 = v24;
              v20 = [(PXAssetsDataSource *)v8 assetsInSectionIndexPath:v25];
              if ([v20 count] >= 1)
              {
                [v17 addObject:v20];
                if (location == v29[3])
                {
                  [v20 count];
                }

                v18 += [v20 count];
              }

              ++location;
              --length;
            }

            while (length);
          }

          PXDisplayAssetFetchResultFromFetchResults();
        }
      }

      _Block_object_dispose(&v28, 8);
    }

    [v4 masterThumbnailSize];
    [v4 preheatThumbnailDataForAssets:0 origin:0 targetSize:v21 + 1.0];
  }
}

uint64_t __52__PXCuratedLibrarySectionedLayout__updatePreheating__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *a4 = 1;
  return result;
}

- (void)_updateSublayoutsForSkimming
{
  v3 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
  v4 = [v3 skimmingInfo];
  if ([v4 childCollectionsZoomLevel])
  {
    v5 = [v4 parentAssetCollection];
    if (v5 && (([v4 touchInteractionStarted] & 1) != 0 || objc_msgSend(v4, "slideshowStarted")))
    {
      v6 = [off_1E7721488 alloc];
      v7 = *(off_1E7722228 + 1);
      v20[0] = *off_1E7722228;
      v20[1] = v7;
      v8 = [v6 initWithSectionObject:v5 itemObject:0 subitemObject:0 indexPath:v20];
      presentedDataSource = self->_presentedDataSource;
      if (presentedDataSource)
      {
        [(PXAssetsDataSource *)presentedDataSource indexPathForAssetCollectionReference:v8];
        v10 = *(&v18 + 1);
      }

      else
      {
        v10 = 0;
        v18 = 0u;
        v19 = 0u;
      }
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__PXCuratedLibrarySectionedLayout__updateSublayoutsForSkimming__block_invoke;
  v13[3] = &unk_1E77435A8;
  v14 = v4;
  v15 = v3;
  v16 = self;
  v17 = v10;
  v11 = v3;
  v12 = v4;
  [(PXCuratedLibrarySectionedLayout *)self enumerateAssetsSectionSublayoutsUsingBlock:v13];
}

void __63__PXCuratedLibrarySectionedLayout__updateSublayoutsForSkimming__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (*(a1 + 56) == a2)
  {
    v24 = 0u;
    v25 = 0u;
    v7 = *(a1 + 32);
    if (v7)
    {
      [v7 currentChildCollectionIndexPath];
    }

    [v6 setIsSkimming:1];
    v8 = [*(a1 + 32) childCollectionsIndexes];
    [v6 setSkimmingIndexPaths:v8];

    [v6 setShowsSkimmingSlideshow:{objc_msgSend(*(a1 + 32), "slideshowStarted")}];
    [v6 setShowsSkimmingInteraction:{objc_msgSend(*(a1 + 32), "touchInteractionStarted")}];
    v9 = [*(a1 + 32) childCollectionsIndexes];
    v10 = [v9 count];

    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    [v6 setMaxSkimmingIndex:v11 - 1];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v12 = [*(a1 + 32) childCollectionsIndexes];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v18 = v24;
    v19 = v25;
    v17[2] = __63__PXCuratedLibrarySectionedLayout__updateSublayoutsForSkimming__block_invoke_2;
    v17[3] = &unk_1E7743580;
    v17[4] = &v20;
    [v12 enumerateSectionIndexPathsUsingBlock:v17];

    [v6 setCurrentSkimmingIndex:v21[3]];
    v13 = [*(a1 + 40) assetsDataSourceManager];
    v14 = [v13 dataSourceForZoomLevel:{objc_msgSend(*(a1 + 32), "childCollectionsZoomLevel")}];

    if (*(&v24 + 1) == *(off_1E7722228 + 1))
    {
      v15 = 0;
    }

    else
    {
      v16 = v24;
      v15 = v16 == [v14 identifier];
    }

    if ([*(a1 + 32) slideshowStarted])
    {
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    else if (([*(a1 + 32) touchInteractionStarted] & v15 & 1) == 0)
    {
LABEL_16:

      _Block_object_dispose(&v20, 8);
      goto LABEL_17;
    }

    [v6 setDataSource:v14 section:*(&v24 + 1)];
    goto LABEL_16;
  }

  [v5 setDataSource:*(*(a1 + 48) + 1016) section:a2];
  [v6 setIsSkimming:0];
  [v6 setShowsSkimmingSlideshow:0];
  [v6 setShowsSkimmingInteraction:0];
  [v6 setMaxSkimmingIndex:0];
  [v6 setCurrentSkimmingIndex:0x7FFFFFFFFFFFFFFFLL];
LABEL_17:
}

uint64_t __63__PXCuratedLibrarySectionedLayout__updateSublayoutsForSkimming__block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 8) == *(result + 48))
  {
    *a3 = 1;
  }

  else
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

- (void)_prepareAccumulatedSectionItemsBufferForSections:(int64_t)a3
{
  if (self->_accumulatedSectionItemsCount < a3)
  {
    _PXGArrayResize();
  }
}

- (void)_updateSublayoutsDataSource
{
  v4 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
  v5 = [v4 assetsDataSourceManager];

  v6 = self->_currentDataSource;
  v7 = [v5 dataSource];
  if (v6 != v7)
  {
    v8 = [v5 zoomLevel];
    if (v8 != 4)
    {
      v9 = v8;
      v10 = [(PXCuratedLibrarySectionedLayout *)self sublayoutDataStore];
      v11 = [(PXAssetsDataSource *)v6 numberOfSections];
      v49 = v10;
      if (v11 != [v10 count])
      {
        v38 = [MEMORY[0x1E696AAA8] currentHandler];
        [v38 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:370 description:{@"Invalid parameter not satisfying: %@", @"numberOfSublayoutsBefore == sublayoutDataStore.count"}];
      }

      v12 = [v5 changeHistory];
      v13 = [v12 changeDetailsFromDataSourceIdentifier:-[PXAssetsDataSource identifier](v6 toDataSourceIdentifier:{"identifier"), -[PXAssetsDataSource identifier](v7, "identifier")}];

      v14 = "anager";
      v50 = v5;
      v51 = v13;
      if (self->_isUpdatingSublayouts)
      {
        if ([v13 count] != 1)
        {
          v39 = [MEMORY[0x1E696AAA8] currentHandler];
          [v39 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:380 description:{@"While updating sublayouts, expecting only one data source change, got %lu", objc_msgSend(v13, "count")}];
        }

        v15 = [v13 firstObject];
        v16 = [v15 sectionsWithItemChanges];
        v17 = a2;
        v18 = v16;
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __62__PXCuratedLibrarySectionedLayout__updateSublayoutsDataSource__block_invoke;
        v64[3] = &unk_1E77434E8;
        v64[4] = self;
        v64[5] = v17;
        v52 = v17;
        [v16 enumerateIndexesUsingBlock:v64];

        v19 = [v15 sectionChanges];
        if (([v19 hasIncrementalChanges] & 1) == 0)
        {
          v40 = [MEMORY[0x1E696AAA8] currentHandler];
          [v40 handleFailureInMethod:v52 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:386 description:@"Section changes while updating sublayouts must be incremental."];
        }

        v20 = [v19 insertedIndexes];
        v21 = [v20 count];

        if (v21)
        {
          v41 = [MEMORY[0x1E696AAA8] currentHandler];
          v42 = [v19 insertedIndexes];
          [v41 handleFailureInMethod:v52 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:387 description:{@"Sections %@ inserted while updating sublayouts, this is not supported.", v42}];
        }

        v22 = [v19 removedIndexes];
        v23 = [v22 count];

        if (v23)
        {
          v43 = [MEMORY[0x1E696AAA8] currentHandler];
          v44 = [v19 removedIndexes];
          [v43 handleFailureInMethod:v52 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:388 description:{@"Sections %@ removed while updating sublayouts, this is not supported.", v44}];
        }

        v13 = v51;
        v14 = "MacSyncedAssetsNotificationListManager" + 32;
      }

      else
      {
        v24 = [(PXGLayout *)self createCuratedLibraryLayoutAnimationIfNeededWithContext:1];
        [(PXCuratedLibrarySectionedLayout *)self _anchorVisibleArea];
      }

      objc_storeStrong(&self->_currentDataSource, v7);
      if (self->_currentZoomLevel != v9)
      {
        [MEMORY[0x1E6979518] setFrameStallSkipRequest:1];
      }

      self->_currentZoomLevel = v9;
      v62 = 0;
      v63 = 0;
      v59[0] = MEMORY[0x1E69E9820];
      v25 = *(v14 + 63);
      v59[1] = v25;
      v59[2] = __62__PXCuratedLibrarySectionedLayout__updateSublayoutsDataSource__block_invoke_2;
      v59[3] = &unk_1E7743510;
      v60 = v6;
      v26 = v7;
      v61 = v26;
      [(PXCuratedLibrarySectionedLayout *)self applySectionedChangeDetails:v13 dataSourceBeforeChanges:v60 dataSourceAfterChanges:v26 sublayoutProvider:self outChangedSections:&v63 outSectionsWithItemChanges:&v62 changeMediaVersionHandler:v59];
      v27 = v63;
      v28 = v62;
      [(PXCuratedLibrarySectionedLayout *)self invalidateVersion];
      v48 = v27;
      [v27 enumerateIndexesUsingBlock:&__block_literal_global_200222];
      v47 = v28;
      [v28 enumerateIndexesUsingBlock:&__block_literal_global_260_200223];
      v29 = [(PXAssetsDataSource *)self->_currentDataSource numberOfSections];
      [(PXCuratedLibrarySectionedLayout *)self _prepareAccumulatedSectionItemsBufferForSections:v29];
      if (v29 >= 1)
      {
        v30 = 0;
        v31 = 0;
        v32.f64[0] = NAN;
        v32.f64[1] = NAN;
        v53 = vnegq_f64(v32);
        do
        {
          self->_accumulatedSectionItems[v30] = v31;
          currentDataSource = self->_currentDataSource;
          v57[0] = [(PXAssetsDataSource *)currentDataSource identifier];
          v57[1] = v30;
          v58 = v53;
          v31 += [(PXAssetsDataSource *)currentDataSource estimatedAssetCountForSectionIndexPath:v57];
          ++v30;
        }

        while (v29 != v30);
      }

      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = v25;
      v54[2] = __62__PXCuratedLibrarySectionedLayout__updateSublayoutsDataSource__block_invoke_5;
      v54[3] = &unk_1E7743558;
      v55 = v26;
      v56 = self;
      [(PXCuratedLibrarySectionedLayout *)self enumerateAssetsSectionSublayoutsUsingBlock:v54];
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        v5 = v50;
        v36 = v51;
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_26:
          p_updateFlags->needsUpdate = needsUpdate | 0x5D;
LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        v5 = v50;
        v36 = v51;
        if (!self->_updateFlags.isPerformingUpdate)
        {
          willPerformUpdate = self->_updateFlags.willPerformUpdate;
          p_updateFlags->needsUpdate = 93;
          if (!willPerformUpdate)
          {
            [(PXCuratedLibrarySectionedLayout *)self setNeedsUpdate];
          }

          goto LABEL_27;
        }
      }

      if ((self->_updateFlags.updated & 0x5D) != 0)
      {
        v45 = [MEMORY[0x1E696AAA8] currentHandler];
        v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout _updateSublayoutsDataSource]"];
        [v45 handleFailureInFunction:v46 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:437 description:{@"invalidating %lu after it already has been updated", 93}];

        abort();
      }

      goto LABEL_26;
    }
  }

LABEL_28:
}

void __62__PXCuratedLibrarySectionedLayout__updateSublayoutsDataSource__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) sublayoutAtIndex:a2 loadIfNeeded:0];

  if (v4)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:383 description:{@"While updating sublayouts, got a change to section %lu that's already loaded.", a2}];
  }
}

BOOL __62__PXCuratedLibrarySectionedLayout__updateSublayoutsDataSource__block_invoke_2(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *(a1 + 32);
  v6 = a2[1];
  v17 = *a2;
  v18 = v6;
  v7 = [v5 assetAtItemIndexPath:&v17];
  v8 = *(a1 + 40);
  v9 = a3[1];
  v17 = *a3;
  v18 = v9;
  v10 = [v8 assetAtItemIndexPath:&v17];
  v11 = v7;
  v12 = v11;
  if (v10 == v11)
  {
    v14 = 0;
  }

  else
  {
    if (v11)
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v15 = [v10 isContentEqualTo:v11];
      if (!v15)
      {
        v15 = [v12 isContentEqualTo:v10];
      }

      v14 = v15 != 2;
    }
  }

  return v14;
}

void __62__PXCuratedLibrarySectionedLayout__updateSublayoutsDataSource__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v6 setDataSource:v5 section:a2];
  [*(a1 + 40) _configureSectionLayout:v6 atIndex:a2];
}

- (void)willFaultOutSublayout:(id)a3 atIndex:(int64_t)a4
{
  v7 = a3;
  v19.receiver = self;
  v19.super_class = PXCuratedLibrarySectionedLayout;
  [(PXCuratedLibrarySectionedLayout *)&v19 willFaultOutSublayout:v7 atIndex:a4];
  v8 = v7;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:346 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sublayout", v14}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v8 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:346 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sublayout", v14, v16}];

    goto LABEL_6;
  }

LABEL_3:
  v9 = [v8 assetCollection];
  v10 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__PXCuratedLibrarySectionedLayout_willFaultOutSublayout_atIndex___block_invoke;
  v17[3] = &unk_1E7748B68;
  v18 = v9;
  v11 = v9;
  [v10 performChanges:v17];
}

void __65__PXCuratedLibrarySectionedLayout_willFaultOutSublayout_atIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 visibleAssetCollections];
  [v3 removeObject:*(a1 + 32)];
}

- (void)didFaultInSublayout:(id)a3 atIndex:(int64_t)a4 fromEstimatedContentSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v10 = a3;
  v22.receiver = self;
  v22.super_class = PXCuratedLibrarySectionedLayout;
  [(PXCuratedLibrarySectionedLayout *)&v22 didFaultInSublayout:v10 atIndex:a4 fromEstimatedContentSize:width, height];
  [(PXCuratedLibrarySectionedLayout *)self _updatePrefetchedSectionsForFaultedInSublayout:v10];
  v11 = v10;
  if (!v11)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:336 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sublayout", v17}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    v19 = [v11 px_descriptionForAssertionMessage];
    [v15 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:336 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sublayout", v17, v19}];

    goto LABEL_6;
  }

LABEL_3:
  v12 = [v11 assetCollection];
  v13 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__PXCuratedLibrarySectionedLayout_didFaultInSublayout_atIndex_fromEstimatedContentSize___block_invoke;
  v20[3] = &unk_1E7748B68;
  v21 = v12;
  v14 = v12;
  [v13 performChanges:v20];
}

void __88__PXCuratedLibrarySectionedLayout_didFaultInSublayout_atIndex_fromEstimatedContentSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 visibleAssetCollections];
  [v3 addObject:*(a1 + 32)];
}

- (void)_updatePrefetchedSectionsForFaultedInSublayout:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[PXCuratedLibrarySettings sharedInstance];
    v6 = [v5 sectionsToPrefetch];

    v7 = [(PXAssetsDataSource *)self->_currentDataSource numberOfSections];
    if (v7 > v6)
    {
      v8 = v7;
      v9 = [v4 section];
      v10 = (v9 - v6) & ~((v9 - v6) >> 63);
      if (v9 + v6 >= v8 - 1)
      {
        v11 = v8 - 1;
      }

      else
      {
        v11 = v9 + v6;
      }

      v12 = [off_1E77217C8 indexPathSet];
      if (v10 < v11)
      {
        v13.f64[0] = NAN;
        v13.f64[1] = NAN;
        v14 = vnegq_f64(v13);
        do
        {
          v15[0] = [(PXAssetsDataSource *)self->_currentDataSource identifier];
          v15[1] = v10;
          v16 = v14;
          [v12 addIndexPath:v15];
          ++v10;
        }

        while (v11 != v10);
      }

      [(PXAssetsDataSource *)self->_currentDataSource prefetchSections:v12];
    }
  }
}

- (void)setPerformedInitialLoad:(BOOL)a3
{
  if (self->_performedInitialLoad != a3)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_performedInitialLoad = a3;
    if (a3)
    {
      v6 = [off_1E7721858 sharedScheduler];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __59__PXCuratedLibrarySectionedLayout_setPerformedInitialLoad___block_invoke;
      v7[3] = &unk_1E774C648;
      v7[4] = self;
      [v6 scheduleMainQueueTask:v7];
    }
  }
}

- (void)setIsInitialLoad:(BOOL)a3
{
  if (self->_isInitialLoad != a3)
  {
    self->_isInitialLoad = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 0x20;
        return;
      }

LABEL_6:
      if ((self->_updateFlags.updated & 0x20) != 0)
      {
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout setIsInitialLoad:]"];
        [v7 handleFailureInFunction:v8 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:295 description:{@"invalidating %lu after it already has been updated", 32}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 32;
    if (!willPerformUpdate)
    {

      [(PXCuratedLibrarySectionedLayout *)self setNeedsUpdate];
    }
  }
}

- (void)_updateFaultOutsets
{
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  [v3 faultInDistance];
  [v3 faultOutPadding];
  if (![(PXCuratedLibrarySectionedLayout *)self isInitialLoad])
  {
    [v3 faultInDistance];
  }

  PXEdgeInsetsMake();
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (!needsUpdate)
  {
    goto LABEL_76;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout update]"];
    [v43 handleFailureInFunction:v44 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

    needsUpdate = p_updateFlags->needsUpdate;
  }

  p_updateFlags->isPerformingUpdate = 1;
  p_updateFlags->updated = 32;
  if ((needsUpdate & 0x20) != 0)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFDFLL;
    [(PXCuratedLibrarySectionedLayout *)self _updateFaultOutsets];
    if (!p_updateFlags->isPerformingUpdate)
    {
      v45 = [MEMORY[0x1E696AAA8] currentHandler];
      v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout update]"];
      [v45 handleFailureInFunction:v46 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }
  }

  v5 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 2uLL;
  if ((v5 & 2) != 0)
  {
    p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
    [(PXCuratedLibrarySectionedLayout *)self _updateSublayoutsDataSource];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout update]"];
    [v47 handleFailureInFunction:v48 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v6 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 0x10uLL;
  if ((v6 & 0x10) != 0)
  {
    p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFEFLL;
    [(PXCuratedLibrarySectionedLayout *)self _updateSublayoutsForSkimming];
  }

  v7 = [(PXCuratedLibrarySectionedLayout *)self spec];
  if (!p_updateFlags->isPerformingUpdate)
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout update]"];
    [v49 handleFailureInFunction:v50 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v8 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 1uLL;
  if (v8)
  {
    p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFFELL;
    v9 = [v7 sectionLayoutSpec];
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __41__PXCuratedLibrarySectionedLayout_update__block_invoke;
    v67[3] = &unk_1E7743478;
    v68 = v9;
    v10 = v9;
    [(PXCuratedLibrarySectionedLayout *)self enumerateAssetsSectionSublayoutsUsingBlock:v67];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout update]"];
    [v51 handleFailureInFunction:v52 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v11 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 4uLL;
  if ((v11 & 4) != 0)
  {
    p_updateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFFFBLL;
    currentZoomLevel = self->_currentZoomLevel;
    [v7 defaultInterlayoutSpacingForZoomLevel:currentZoomLevel];
    self->_defaultInterlayoutSpacing = v13;
    [(PXCuratedLibrarySectionedLayout *)self lateralMargin];
    v15 = v14;
    v16 = [v7 userInterfaceIdiom];
    if ((currentZoomLevel - 1) <= 1)
    {
      if (v16 != 4)
      {
        [(PXCuratedLibrarySectionedLayout *)self safeAreaInsets];
        v19 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
        v20 = [v19 styleGuide];
        [v20 secondaryToolbarContentInsets];

        if (currentZoomLevel == 2)
        {
          [v7 spacingBetweenSafeAreaTopAndFirstMonthTitle];
        }

        else
        {
          [v7 spacingBetweenSafeAreaTopAndFirstYearCard];
        }
      }

      PXEdgeInsetsMake();
    }

    v17 = *(off_1E7721FA8 + 2);
    if (v16 == 4)
    {
      v18 = *off_1E7721FA8;
    }

    else
    {
      [(PXCuratedLibrarySectionedLayout *)self safeAreaInsets];
      v18 = -v21;
    }

    p_padding = &self->_padding;
    self->_padding.top = v18;
    self->_padding.left = v15;
    self->_padding.bottom = v17;
    self->_padding.right = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __41__PXCuratedLibrarySectionedLayout_update__block_invoke_2;
    aBlock[3] = &unk_1E77434A0;
    aBlock[4] = self;
    v23 = _Block_copy(aBlock);
    v24 = [(PXGCompositeLayout *)self composition];
    v25 = v24;
    if (currentZoomLevel == 1)
    {
      objc_opt_class();
      v26 = v25;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = objc_alloc_init(PXYearsSublayoutComposition);
      }

      v27 = [v7 yearsLayoutMetrics];
    }

    else
    {
      if (currentZoomLevel != 2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PXYearsSublayoutComposition *)v25 padding];
          PXEdgeInsetsEqualToEdgeInsets();
        }

        v26 = objc_alloc_init(off_1E77216E0);

        [(PXYearsSublayoutComposition *)v26 setAxis:1];
        [(PXYearsSublayoutComposition *)v26 setInterlayoutSpacing:self->_defaultInterlayoutSpacing];
        [(PXYearsSublayoutComposition *)v26 setPadding:p_padding->top, self->_padding.left, self->_padding.bottom, self->_padding.right];
        goto LABEL_43;
      }

      objc_opt_class();
      v26 = v25;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = objc_alloc_init(PXMonthsSublayoutComposition);
      }

      v27 = [v7 monthsLayoutMetrics];
    }

    v28 = v27;
    v29 = [v27 copy];

    [(PXYearsSublayoutComposition *)v29 padding];
    v23[2](v23, p_padding->top);
    [(PXYearsSublayoutComposition *)v29 setPadding:?];
    [(PXYearsSublayoutComposition *)v26 setMetrics:v29];

    v25 = v29;
LABEL_43:

    [(PXGCompositeLayout *)self setComposition:v26];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __41__PXCuratedLibrarySectionedLayout_update__block_invoke_3;
    v65[3] = &__block_descriptor_40_e38_v32__0q8__PXAssetsSectionLayout_16_B24l;
    v65[4] = currentZoomLevel;
    [(PXCuratedLibrarySectionedLayout *)self enumerateAssetsSectionSublayoutsUsingBlock:v65];
    if ((self->_currentZoomLevel - 3) <= 1)
    {
      [(PXGCompositeLayout *)self setSublayoutIndex:0x7FFFFFFFFFFFFFFFLL forUniquelyStylableType:0 animated:0];
    }
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout update]"];
    [v53 handleFailureInFunction:v54 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:234 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v30 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 8uLL;
  if ((v30 & 8) != 0)
  {
    p_updateFlags->needsUpdate = v30 & 0xFFFFFFFFFFFFFFF7;
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __41__PXCuratedLibrarySectionedLayout_update__block_invoke_4;
    v64[3] = &unk_1E7743478;
    v64[4] = self;
    [(PXCuratedLibrarySectionedLayout *)self enumerateAssetsSectionSublayoutsUsingBlock:v64];
    if ((self->_currentZoomLevel - 1) <= 1)
    {
      v31 = [(PXCuratedLibrarySectionedLayout *)self viewModel];
      v32 = [v31 selectionSnapshot];

      v33 = [(PXCuratedLibraryViewModel *)self->_viewModel zoomLevelTransitionPhase];
      v62 = 0u;
      v63 = 0u;
      if (v32)
      {
        [v32 pendingIndexPath];
        v34 = v62;
      }

      else
      {
        v34 = 0;
      }

      v35 = *off_1E7721F68;
      v36 = 0x7FFFFFFFFFFFFFFFLL;
      if (v34 != *off_1E7721F68 && v63 == 0x7FFFFFFFFFFFFFFFLL && *(&v62 + 1) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = *(&v62 + 1);
      }

      [(PXGCompositeLayout *)self setSublayoutIndex:v36 forUniquelyStylableType:0 animated:v33 == 0];
      v60 = 0u;
      v61 = 0u;
      if (v32)
      {
        [v32 cursorIndexPath];
        v38 = v60;
      }

      else
      {
        v38 = 0;
      }

      v39 = 0x7FFFFFFFFFFFFFFFLL;
      if (v38 != v35 && v61 == 0x7FFFFFFFFFFFFFFFLL && *(&v60 + 1) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v39 = *(&v60 + 1);
      }

      [(PXGCompositeLayout *)self setSublayoutIndex:v39 forUniquelyStylableType:1 animated:v33 == 0];
    }
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout update]"];
    [v55 handleFailureInFunction:v56 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v41 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 0x40uLL;
  if ((v41 & 0x40) != 0)
  {
    p_updateFlags->needsUpdate = v41 & 0xFFFFFFFFFFFFFFBFLL;
    [(PXCuratedLibrarySectionedLayout *)self _updatePreheating];
  }

  self->_presentedZoomLevel = self->_currentZoomLevel;
  objc_storeStrong(&self->_presentedDataSource, self->_currentDataSource);
  p_updateFlags->isPerformingUpdate = 0;
  if (p_updateFlags->needsUpdate)
  {
    v57 = [MEMORY[0x1E696AAA8] currentHandler];
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout update]"];
    [v57 handleFailureInFunction:v58 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:264 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
  }

LABEL_76:
  isUpdatingSublayouts = self->_isUpdatingSublayouts;
  self->_isUpdatingSublayouts = 1;
  v59.receiver = self;
  v59.super_class = PXCuratedLibrarySectionedLayout;
  [(PXGCompositeLayout *)&v59 update];
  self->_isUpdatingSublayouts = isUpdatingSublayouts;
  [(PXCuratedLibrarySectionedLayout *)self setPerformedInitialLoad:1];
}

- (void)dealloc
{
  free(self->_accumulatedSectionItems);
  v3.receiver = self;
  v3.super_class = PXCuratedLibrarySectionedLayout;
  [(PXGCompositeLayout *)&v3 dealloc];
}

- (PXCuratedLibrarySectionedLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:107 description:{@"%s is not available as initializer", "-[PXCuratedLibrarySectionedLayout init]"}];

  abort();
}

- (PXCuratedLibrarySectionedLayout)initWithViewModel:(id)a3 spec:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = PXCuratedLibrarySectionedLayout;
  v9 = [(PXGCompositeLayout *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_spec, a4);
    objc_storeStrong(&v10->_viewModel, a3);
    [(PXCuratedLibraryViewModel *)v10->_viewModel registerChangeObserver:v10 context:PXCuratedLibraryViewModelObserverContext_200180];
    [(PXGCompositeLayout *)v10 setSublayoutFaultingDelegate:v10];
    if (!+[PXCuratedLibrarySectionedLayout shouldDisableLaunchOptimizations])
    {
      v10->_isInitialLoad = 1;
    }

    p_updateFlags = &v10->_updateFlags;
    needsUpdate = v10->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!v10->_updateFlags.isPerformingUpdate)
      {
LABEL_9:
        *p_updateFlags = needsUpdate | 0x7F;
        goto LABEL_10;
      }

LABEL_8:
      if ((v10->_updateFlags.updated & 0x7F) != 0)
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibrarySectionedLayout initWithViewModel:spec:]"];
        [v15 handleFailureInFunction:v16 file:@"PXCuratedLibrarySectionedLayout.m" lineNumber:101 description:{@"invalidating %lu after it already has been updated", 127}];

        abort();
      }

      goto LABEL_9;
    }

    if (v10->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_8;
    }

    willPerformUpdate = v10->_updateFlags.willPerformUpdate;
    *p_updateFlags = 127;
    if (!willPerformUpdate)
    {
      [(PXCuratedLibrarySectionedLayout *)v10 setNeedsUpdate];
    }
  }

LABEL_10:

  return v10;
}

@end