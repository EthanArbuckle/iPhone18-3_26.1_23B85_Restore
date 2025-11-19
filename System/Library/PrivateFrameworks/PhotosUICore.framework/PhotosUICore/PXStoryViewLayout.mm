@interface PXStoryViewLayout
- ($8F6F21C65DCD0A0F8AC24DFE540A6236)presentedGridTransform;
- (BOOL)inGridViewMode;
- (BOOL)photosContentController:(id)a3 presentViewController:(id)a4;
- (BOOL)photosContentController:(id)a3 pushViewController:(id)a4;
- (BOOL)photosViewController:(id)a3 didPickAssetReference:(id)a4;
- (CGRect)_scrubberFrame;
- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory;
- (PXStoryViewLayout)init;
- (PXStoryViewLayout)initWithViewModel:(id)a3;
- (UIEdgeInsets)maskPaddingForContentController:(id)a3;
- (id)_gridLayout;
- (id)createDefaultAnimationForCurrentContext;
- (id)dateIntervalFutureForContentInRect:(CGRect)a3 type:(unint64_t)a4;
- (id)itemPlacementControllerForItemReference:(id)a3;
- (id)locationNamesFutureForContentInRect:(CGRect)a3;
- (id)mainItemReference;
- (id)preferredFocusLayouts;
- (id)presentingViewControllerForContentController:(id)a3;
- (id)transitionsHelper:(id)a3 regionOfInterestForTransition:(id)a4;
- (id)transitionsHelper:(id)a3 timelineLayoutSnapshotForViewMode:(int64_t)a4;
- (id)undoManagerForActionPerformer:(id)a3;
- (id)undoManagerForContentController:(id)a3;
- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (unint64_t)contentChangeTrend;
- (void)_invalidateContentSize;
- (void)_invalidateGridLayout;
- (void)_invalidateGridTransform;
- (void)_invalidateHiddenGridAssets;
- (void)_invalidateMainModel;
- (void)_invalidateMainStoryLayout;
- (void)_invalidateSublayoutFrames;
- (void)_invalidateSublayoutOrigins;
- (void)_invalidateSublayoutVisibility;
- (void)_invalidateTransitionsHelper;
- (void)_invalidateTransitionsHelperAfterSublayouts;
- (void)_setFrame:(CGRect)a3 relativeZPosition:(double)a4 depth:(double)a5 forSublayoutAtIndex:(int64_t)a6;
- (void)_updateContentSize;
- (void)_updateGridLayout;
- (void)_updateGridTransform;
- (void)_updateHeaderSpacing;
- (void)_updateMainModel;
- (void)_updateMainStoryLayout;
- (void)_updateSublayoutFrames;
- (void)_updateSublayoutOrigins;
- (void)_updateSublayoutVisibility;
- (void)_updateTransitionsHelper;
- (void)_updateTransitionsHelperAfterSublayouts;
- (void)adjustPhotosViewConfiguration:(id)a3;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)didUpdate;
- (void)didUpdateSublayout:(id)a3;
- (void)dismissPresentedViewControllerForContentController:(id)a3;
- (void)enumerateAssetCollectionsInRect:(CGRect)a3 enumerator:(id)a4;
- (void)enumerateAssetsInRect:(CGRect)a3 enumerator:(id)a4;
- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setGridViewModeTransition:(id)a3;
- (void)setMainModel:(id)a3;
- (void)setMainStoryLayout:(id)a3;
- (void)setPresentedGridTransform:(id *)a3;
- (void)update;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXStoryViewLayout

- (void)adjustPhotosViewConfiguration:(id)a3
{
  v4 = a3;
  self;
  sub_1A4611410();
}

- (void)setPresentedGridTransform:(id *)a3
{
  v4 = *&a3->var0.c;
  v3 = *&a3->var0.tx;
  v5 = *&a3->var0.a;
  self->_presentedGridTransform.tz = a3->var1;
  *&self->_presentedGridTransform.affineTransform.c = v4;
  *&self->_presentedGridTransform.affineTransform.tx = v3;
  *&self->_presentedGridTransform.affineTransform.a = v5;
}

- ($8F6F21C65DCD0A0F8AC24DFE540A6236)presentedGridTransform
{
  v3 = *&self[22].var0.a;
  *&retstr->var0.a = *&self[21].var0.ty;
  *&retstr->var0.c = v3;
  *&retstr->var0.tx = *&self[22].var0.c;
  retstr->var1 = self[22].var0.tx;
  return self;
}

- (id)_gridLayout
{
  if ([(PXStoryViewLayout *)self inGridViewMode])
  {
    v3 = [(PXStoryViewLayout *)self sublayoutAtIndex:self->_gridLayoutIndex loadIfNeeded:0];
    v4 = v3;
    if (v3 == self->_gridPlaceholderLayout)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)enumerateAssetsInRect:(CGRect)a3 enumerator:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = [(PXStoryViewLayout *)self _gridLayout];
  if (v10)
  {
    [(PXStoryViewLayout *)self convertRect:v10 toDescendantLayout:x, y, width, height];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *MEMORY[0x1E695F050];
    v14 = *(MEMORY[0x1E695F050] + 8);
    v16 = *(MEMORY[0x1E695F050] + 16);
    v18 = *(MEMORY[0x1E695F050] + 24);
  }

  v25.origin.x = v12;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v18;
  if (CGRectIsNull(v25))
  {
    v19 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 138543618;
      v21 = objc_opt_class();
      v22 = 2048;
      v23 = self;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "Failed to enumerate assets for <%{public}@:%p>", &v20, 0x16u);
    }
  }

  else
  {
    [v10 enumerateAssetsInRect:v9 enumerator:{v12, v14, v16, v18}];
  }
}

- (void)enumerateAssetCollectionsInRect:(CGRect)a3 enumerator:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = [(PXStoryViewLayout *)self _gridLayout];
  if (v10)
  {
    [(PXStoryViewLayout *)self convertRect:v10 toDescendantLayout:x, y, width, height];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *MEMORY[0x1E695F050];
    v14 = *(MEMORY[0x1E695F050] + 8);
    v16 = *(MEMORY[0x1E695F050] + 16);
    v18 = *(MEMORY[0x1E695F050] + 24);
  }

  v25.origin.x = v12;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v18;
  if (CGRectIsNull(v25))
  {
    v19 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 138543618;
      v21 = objc_opt_class();
      v22 = 2048;
      v23 = self;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "Failed to enumerate asset collections for <%{public}@:%p>", &v20, 0x16u);
    }
  }

  else
  {
    [v10 enumerateAssetCollectionsInRect:v9 enumerator:{v12, v14, v16, v18}];
  }
}

- (id)locationNamesFutureForContentInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PXStoryViewLayout *)self _gridLayout];
  if (v8)
  {
    [(PXStoryViewLayout *)self convertRect:v8 toDescendantLayout:x, y, width, height];
    if (!CGRectIsNull(v12))
    {
      PXPointIsNull();
    }
  }

  v9 = _Block_copy(&__block_literal_global_456_186924);

  return v9;
}

- (id)dateIntervalFutureForContentInRect:(CGRect)a3 type:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(PXStoryViewLayout *)self _gridLayout];
  if (v9)
  {
    [(PXStoryViewLayout *)self convertRect:v9 toDescendantLayout:x, y, width, height];
    if (!CGRectIsNull(v13))
    {
      PXPointIsNull();
    }
  }

  v10 = _Block_copy(&__block_literal_global_453_186926);

  return v10;
}

- (id)preferredFocusLayouts
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__PXStoryViewLayout_preferredFocusLayouts__block_invoke;
  aBlock[3] = &unk_1E7741338;
  v13 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v6 = [(PXStoryViewLayout *)self viewModel];
  v7 = [v6 wantsRelatedOverlayVisible];

  if (v7)
  {
    [(PXStoryViewLayout *)self relatedOverlayLayout];
  }

  else
  {
    v8 = [(PXStoryViewLayout *)self scrubberLayout];
    v5[2](v5, v8);

    [(PXStoryViewLayout *)self chromeLayout];
  }
  v9 = ;
  v5[2](v5, v9);

  v10 = [v4 copy];

  return v10;
}

uint64_t __42__PXStoryViewLayout_preferredFocusLayouts__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (ViewModelObservationContext_186933 == a5)
  {
    if ((a4 & 0x40) != 0)
    {
      [(PXStoryViewLayout *)self _invalidateMainModel];
      if ((a4 & 0x2000) == 0)
      {
LABEL_9:
        if ((a4 & 0x400000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }

    else if ((a4 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    [(PXStoryViewLayout *)self setShouldScrollGridToPlaybackPosition:[(PXStoryViewLayout *)self inGridViewMode]];
    [(PXStoryViewLayout *)self _invalidateGridLayout];
    [(PXStoryViewLayout *)self _invalidateContentSize];
    [(PXStoryViewLayout *)self _invalidateSublayoutFrames];
    [(PXStoryViewLayout *)self setNeedsUpdateOfScrollableAxis];
    [(PXStoryViewLayout *)self safeAreaInsetsDidChange];
    if ((a4 & 0x400000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_15:
    if (!self->_isUpdatingGridLayout)
    {
      [(PXStoryViewLayout *)self _invalidateGridLayout];
      [(PXStoryViewLayout *)self _invalidateHiddenGridAssets];
    }

LABEL_17:
    if ((a4 & 0x20) != 0)
    {
      [(PXStoryViewLayout *)self _invalidateSublayoutFrames];
    }

    if ((a4 & 0x3000000000) != 0)
    {
      v10 = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
      [v10 invalidatePresentingGeometry];
    }

    if ((a4 & 0x10000000000) != 0)
    {
      [(PXStoryViewLayout *)self _invalidateGridLayout];
      if ((a4 & 0x8000) == 0)
      {
LABEL_23:
        if ((a4 & 0x40000000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      }
    }

    else if ((a4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    [(PXStoryViewLayout *)self _axMoveCursorToPlayer];
    if ((a4 & 0x40000000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_27:
    [(PXStoryViewLayout *)self _invalidateSublayoutVisibility];
    goto LABEL_30;
  }

  if (MainModelObservationContext_186934 == a5)
  {
    if ((a4 & 0x800000000000000) != 0)
    {
      [(PXStoryViewLayout *)self _invalidateSublayoutFrames];
    }
  }

  else if (RecipeManagerObservationContext_186935 == a5)
  {
    if ((a4 & 0x10) != 0)
    {
      [(PXStoryViewLayout *)self _invalidateGridLayout];
    }
  }

  else
  {
    if (GridViewModeTransitionObservationContext != a5)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXStoryViewLayout.m" lineNumber:1006 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (a4)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__PXStoryViewLayout_observable_didChange_context___block_invoke;
      block[3] = &unk_1E774C648;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

LABEL_30:
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryViewLayout *)self mainStoryLayout];
  [v4 addSubprovider:v5];
}

- (id)undoManagerForContentController:(id)a3
{
  v3 = [(PXStoryViewLayout *)self viewModel];
  v4 = [v3 presentingViewController];

  v5 = [v4 undoManager];

  return v5;
}

- (UIEdgeInsets)maskPaddingForContentController:(id)a3
{
  v3 = *off_1E7721FA8;
  v4 = *(off_1E7721FA8 + 1);
  v5 = *(off_1E7721FA8 + 2);
  v6 = *(off_1E7721FA8 + 3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)presentingViewControllerForContentController:(id)a3
{
  v3 = [(PXStoryViewLayout *)self viewModel];
  v4 = [v3 presentingViewController];

  return v4;
}

- (BOOL)photosContentController:(id)a3 pushViewController:(id)a4
{
  v5 = a4;
  v6 = [(PXStoryViewLayout *)self viewModel];
  v7 = [v6 presentingViewController];

  v8 = [v7 navigationController];

  if (v8)
  {
    v9 = [v7 navigationController];
    [v9 pushViewController:v5 animated:1];
  }

  return v8 != 0;
}

- (void)dismissPresentedViewControllerForContentController:(id)a3
{
  v3 = [(PXStoryViewLayout *)self viewModel];
  v4 = [v3 presentingViewController];

  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)photosContentController:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = [(PXStoryViewLayout *)self viewModel];
  v7 = [v6 presentingViewController];

  if (v7)
  {
    [v7 presentViewController:v5 animated:1 completion:0];
  }

  return v7 != 0;
}

- (id)undoManagerForActionPerformer:(id)a3
{
  v3 = [(PXStoryViewLayout *)self viewModel];
  v4 = [v3 presentingViewController];

  v5 = [v4 undoManager];

  return v5;
}

- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory
{
  v3 = [PXStoryMemoryAssetsActionFactory alloc];
  v4 = [(PXStoryViewLayout *)self viewModel];
  v5 = [(PXStoryMemoryAssetsActionFactory *)v3 initWithViewModel:v4];

  return v5;
}

- (BOOL)photosViewController:(id)a3 didPickAssetReference:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXStoryViewLayout *)self mainModel];
  v9 = [v8 viewModeTransition];

  if (!v9)
  {
    v36 = [v8 timeline];
    v10 = [v8 resourcesDataSourceManager];
    v37 = [v10 dataSource];

    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v11 = [v37 indexForDisplayAssetReference:v7];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [v8 recipeManager];
      v13 = [v12 recipe];

      v14 = [v13 untruncatedCuratedAssets];
      if (!v14)
      {

        goto LABEL_11;
      }

      v15 = [v7 asset];
      v16 = [v14 indexOfObject:v15];

      v17 = [v13 curatedAssets];
      if (v16 >= [v17 count])
      {
        v18 = PLStoryGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_FAULT, "truncated asset picked, falling back to last available asset", &buf, 2u);
        }

        v19 = [off_1E7721490 alloc];
        v20 = [v17 lastObject];
        v21 = *(off_1E7722228 + 1);
        buf = *off_1E7722228;
        v53 = v21;
        v22 = [v19 initWithSectionObject:0 itemObject:v20 subitemObject:0 indexPath:&buf];

        v11 = [v37 indexForDisplayAssetReference:v22];
      }

      else
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_11:
        PXAssertGetLog();
      }
    }

    v23 = [v36 identifierOfFirstClipContainingResourceAtIndex:v11 inResourcesDataSource:v37 resourceKind:1];
    if (!v23)
    {
      v24 = [v37 keyAssetResource];
      v25 = [v24 px_storyResourceDisplayAsset];
      v26 = [v7 asset];
      v27 = v25;
      v28 = v26;
      v29 = v28;
      if (v27 == v28)
      {
      }

      else
      {
        v30 = [v27 isEqual:v28];

        if ((v30 & 1) == 0)
        {
LABEL_29:
          PXAssertGetLog();
        }
      }

      v23 = [v36 identifierOfFirstClipContainingResourceAtIndex:-1 inResourcesDataSource:v37 resourceKind:1];
      if (!v23)
      {
        goto LABEL_29;
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    *&v53 = 0x5010000000;
    *(&v53 + 1) = &unk_1A561E057;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    if (v36)
    {
      [v36 timeRange];
    }

    else
    {
      v50 = 0uLL;
      v51 = 0uLL;
      v49 = 0uLL;
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __64__PXStoryViewLayout_photosViewController_didPickAssetReference___block_invoke;
    v44[3] = &unk_1E77412E8;
    v44[4] = &buf;
    v44[5] = v23;
    [v36 enumerateClipsInTimeRange:&v49 rect:v44 usingBlock:{*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)}];
    if ((*(*(&buf + 1) + 44) & 1) == 0 || (*(*(&buf + 1) + 68) & 1) == 0 || *(*(&buf + 1) + 72) || (*(*(&buf + 1) + 56) & 0x8000000000000000) != 0)
    {
      PXAssertGetLog();
    }

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __64__PXStoryViewLayout_photosViewController_didPickAssetReference___block_invoke_2;
    v43[3] = &unk_1E77494C8;
    v43[4] = &v45;
    v31 = *(*(&buf + 1) + 48);
    v49 = *(*(&buf + 1) + 32);
    v50 = v31;
    v51 = *(*(&buf + 1) + 64);
    [v36 enumerateSegmentsInTimeRange:&v49 usingBlock:v43];
    if (!v46[3])
    {
      PXAssertGetLog();
    }

    _Block_object_dispose(&buf, 8);
    v32 = [(PXStoryViewLayout *)self viewModel];
    [v32 performChanges:&__block_literal_global_186951];

    v33 = [(PXStoryViewLayout *)self mainModel];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __64__PXStoryViewLayout_photosViewController_didPickAssetReference___block_invoke_2_442;
    v38[3] = &unk_1E7741310;
    v42 = v23;
    v39 = v7;
    v41 = &v45;
    v34 = v36;
    v40 = v34;
    [v33 performChanges:v38];

    _Block_object_dispose(&v45, 8);
  }

  return 1;
}

uint64_t __64__PXStoryViewLayout_photosViewController_didPickAssetReference___block_invoke(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, _BYTE *a6)
{
  if (a2 >= 1)
  {
    do
    {
      if (*a5 == *(result + 40))
      {
        v6 = *(*(result + 32) + 8);
        v7 = *a3;
        v8 = a3[2];
        v6[3] = a3[1];
        v6[4] = v8;
        v6[2] = v7;
        *a6 = 1;
      }

      a5 += 96;
      a3 += 3;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t __64__PXStoryViewLayout_photosViewController_didPickAssetReference___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = *a4;
  *a5 = 1;
  return result;
}

void __64__PXStoryViewLayout_photosViewController_didPickAssetReference___block_invoke_2_442(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setViewMode:1];
  [v4 setLastHitClipIdentifier:*(a1 + 56)];
  [v4 setLastHitAssetReference:*(a1 + 32)];
  v3 = *(*(*(a1 + 48) + 8) + 24);
  if (v3)
  {
    if (v3 == [*(a1 + 40) firstSegmentIdentifier])
    {
      [v4 restartPlaybackFromBeginning];
    }

    else
    {
      [v4 skipToBeginningOfSegmentWithIdentifier:*(*(*(a1 + 48) + 8) + 24)];
    }
  }
}

- (id)transitionsHelper:(id)a3 regionOfInterestForTransition:(id)a4
{
  v5 = a4;
  v6 = [(PXStoryViewLayout *)self viewModel];
  v7 = [v6 viewControllerDismissalTargetPlacement];
  if ([v6 swipeDownTriggeringDismissal] && v7)
  {
    v8 = [v7 regionOfInterest];
    [v8 setIsRepresentingPlaceholderContent:1];
  }

  else if ([v5 hasSourceOrDestinationViewMode:2])
  {
    v8 = [v5 assetReference];

    if (v8)
    {
      v9 = [(PXStoryViewLayout *)self gridContentController];
      v10 = [v9 layout];
      v11 = [v5 assetReference];
      v8 = [v10 regionOfInterestForAssetReference:v11];

      [(PXStoryViewLayout *)self presentedGridTransform];
      memset(&t1, 0, sizeof(t1));
      v12 = *(off_1E7722030 + 1);
      *&t2.a = *off_1E7722030;
      *&t2.c = v12;
      *&t2.tx = *(off_1E7722030 + 2);
      if (!CGAffineTransformEqualToTransform(&t1, &t2) || *(off_1E7722030 + 6) != 0.0)
      {
        v13 = [(PXStoryViewLayout *)self rootLayout];
        v14 = [v13 coordinateSpace];
        [v8 rectInCoordinateSpace:v14];
        [(PXStoryViewLayout *)self convertRect:v13 fromLayout:?];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        memset(&t2, 0, sizeof(t2));
        CGAffineTransformInvert(&t1, &t2);
        v28.origin.x = v16;
        v28.origin.y = v18;
        v28.size.width = v20;
        v28.size.height = v22;
        v29 = CGRectApplyAffineTransform(v28, &t1);
        [v13 convertRect:self fromLayout:{v29.origin.x, v29.origin.y, v29.size.width, v29.size.height}];
        v23 = [v8 copyWithRect:v14 inCoordinateSpace:?];

        v8 = v23;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)transitionsHelper:(id)a3 timelineLayoutSnapshotForViewMode:(int64_t)a4
{
  v7 = a3;
  v8 = 0;
  if (a4 > 2)
  {
    if (a4 != 3 && a4 != 5)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (a4 == 1)
  {
LABEL_6:
    v9 = [(PXStoryViewLayout *)self viewModel];
    v10 = [v9 mainModel];

    v11 = [v10 timeline];
    v12 = [v10 currentSegmentIdentifier];
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    if (v11)
    {
      [v11 timeRangeForSegmentWithIdentifier:v12];
    }

    [v11 frameForSegmentWithIdentifier:v12];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [PXStoryTimelineLayoutSnapshot alloc];
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    LODWORD(v22) = *off_1E7721FF0;
    LODWORD(v23) = *(off_1E7721FF0 + 1);
    LODWORD(v24) = *(off_1E7721FF0 + 2);
    LODWORD(v25) = *(off_1E7721FF0 + 3);
    v8 = [(PXStoryTimelineLayoutSnapshot *)v21 initWithTimeline:v11 timelineRect:v28 timeRange:v14 clipCornerRadius:v16, v18, v20, v22, v23, v24, v25];

    goto LABEL_9;
  }

  if (!a4)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PXStoryViewLayout.m" lineNumber:743 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_9:

  return v8;
}

- (BOOL)inGridViewMode
{
  v2 = [(PXStoryViewLayout *)self viewModel];
  v3 = [v2 viewMode] == 2;

  return v3;
}

- (void)_setFrame:(CGRect)a3 relativeZPosition:(double)a4 depth:(double)a5 forSublayoutAtIndex:(int64_t)a6
{
  if (a6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    [(PXStoryViewLayout *)self referenceDepth];
    v16 = v15;
    [(PXGAbsoluteCompositeLayout *)self setFrame:a6 forSublayoutAtIndex:x, y, width, height];
    [(PXGAbsoluteCompositeLayout *)self setZPosition:a6 forSublayoutAtIndex:-(a4 * v16)];

    [(PXGAbsoluteCompositeLayout *)self setReferenceDepth:a6 forSublayoutAtIndex:v16 * a5];
  }
}

- (CGRect)_scrubberFrame
{
  [(PXStoryViewLayout *)self visibleRect];
  v3 = [(PXStoryViewLayout *)self viewModel];
  v4 = [v3 viewLayoutSpec];
  [v3 mainModel];
  [objc_claimAutoreleasedReturnValue() infoPanelVisibilityFraction];
  [v4 infoPanelAnimationDistance];
  PXFloatByLinearlyInterpolatingFloats();
}

- (void)_updateContentSize
{
  if ([(PXStoryViewLayout *)self inGridViewMode])
  {
    v3 = [(PXStoryViewLayout *)self gridContentController];
    v4 = [v3 layout];
    [v4 contentSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    [(PXStoryViewLayout *)self referenceSize];
    v6 = v9;
    v8 = v10;
  }

  [(PXGAbsoluteCompositeLayout *)self setContentSize:v6, v8];
}

- (void)_invalidateContentSize
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateContentSize]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:690 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXStoryViewLayout *)self setNeedsUpdate];
  }
}

- (void)_updateSublayoutOrigins
{
  [(PXStoryViewLayout *)self visibleRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PXStoryViewLayout *)self sublayoutDataStore];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__PXStoryViewLayout__updateSublayoutOrigins__block_invoke;
  v12[3] = &unk_1E77412C0;
  v12[4] = self;
  v12[5] = v4;
  v12[6] = v6;
  v12[7] = v8;
  v12[8] = v10;
  [v11 enumerateSublayoutsUsingBlock:v12];
}

void __44__PXStoryViewLayout__updateSublayoutOrigins__block_invoke(double *a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 4);
  if (v5[147] == a2)
  {
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else if (v5[144] == a2)
  {
    [v5 _scrubberFrame];
    v5 = *(a1 + 4);
  }

  else
  {
    v6 = a1[5];
    v7 = a1[6];
  }

  [v5 setOrigin:a2 forSublayoutAtIndex:{v6, v7}];
}

- (void)_invalidateSublayoutOrigins
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x800;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x800) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateSublayoutOrigins]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:671 description:{@"invalidating %lu after it already has been updated", 2048}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 2048;
  if (!willPerformUpdate)
  {

    [(PXStoryViewLayout *)self setNeedsUpdate];
  }
}

- (void)_invalidateHiddenGridAssets
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x400;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x400) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateHiddenGridAssets]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:660 description:{@"invalidating %lu after it already has been updated", 1024}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 1024;
  if (!willPerformUpdate)
  {

    [(PXStoryViewLayout *)self setNeedsUpdate];
  }
}

- (void)_updateTransitionsHelperAfterSublayouts
{
  v2 = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
  [v2 updateIfNeeded];
}

- (void)_invalidateTransitionsHelperAfterSublayouts
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x1000;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x1000) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateTransitionsHelperAfterSublayouts]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:652 description:{@"invalidating %lu after it already has been updated", 4096}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4096;
  if (!willPerformUpdate)
  {

    [(PXStoryViewLayout *)self setNeedsUpdate];
  }
}

- (void)_updateTransitionsHelper
{
  v2 = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
  [v2 updateIfNeeded];
}

- (void)_invalidateTransitionsHelper
{
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateTransitionsHelper]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:644 description:{@"invalidating %lu after it already has been updated", 4}];

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

    [(PXStoryViewLayout *)self setNeedsUpdate];
  }
}

- (void)_updateGridTransform
{
  v3 = [(PXStoryViewLayout *)self gridLayoutIndex];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = +[PXStorySettings sharedInstance];
    v6 = [v5 swipeDownBehavior];

    if (!v6)
    {
      v7 = *(off_1E7722030 + 1);
      v18 = *off_1E7722030;
      v19 = v7;
      v20 = *(off_1E7722030 + 2);
      v21 = *(off_1E7722030 + 6);
      v8 = [(PXStoryViewLayout *)self gridViewModeTransition];
      v9 = [v8 regionOfInterest];
      v10 = [(PXStoryViewLayout *)self gridContentController];
      v11 = [v10 layout];

      if (v8 && v9)
      {
        if (v11)
        {
          v12 = [v11 rootLayout];
          v13 = [v12 coordinateSpace];
          [v9 rectInCoordinateSpace:v13];
          [(PXStoryViewLayout *)self convertRect:v12 fromLayout:?];

          PXSizeGetAspectRatio();
        }
      }

      v14 = v18;
      v15 = v19;
      v16 = v20;
      v17 = v21;
      [(PXGAbsoluteCompositeLayout *)self setSpriteTransform:&v14 forSublayoutAtIndex:v4];
      [v11 setAlpha:1.0];
      v14 = v18;
      v15 = v19;
      v16 = v20;
      v17 = v21;
      [(PXStoryViewLayout *)self setPresentedGridTransform:&v14];
    }
  }
}

- (void)_invalidateGridTransform
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x80;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x80) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateGridTransform]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:610 description:{@"invalidating %lu after it already has been updated", 128}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 128;
  if (!willPerformUpdate)
  {

    [(PXStoryViewLayout *)self setNeedsUpdate];
  }
}

- (void)_updateSublayoutVisibility
{
  v3 = [(PXStoryViewLayout *)self viewModel];
  v4 = [v3 allowedChromeItems];

  v5 = [(PXStoryViewLayout *)self scrubberLayout];
  [v5 setIsHidden:(v4 & 0x4000000) == 0];
}

- (void)_invalidateSublayoutVisibility
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x20;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x20) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateSublayoutVisibility]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:601 description:{@"invalidating %lu after it already has been updated", 32}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 32;
  if (!willPerformUpdate)
  {

    [(PXStoryViewLayout *)self setNeedsUpdate];
  }
}

- (void)_updateSublayoutFrames
{
  [(PXStoryViewLayout *)self visibleRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXStoryViewLayout *)self _setFrame:[(PXStoryViewLayout *)self mainStoryLayoutIndex] relativeZPosition:v3 depth:v5 forSublayoutAtIndex:v7, v9, 0.0, 0.1];
  v18 = v4;
  [(PXStoryViewLayout *)self _setFrame:[(PXStoryViewLayout *)self legibilityOverlayLayoutIndex] relativeZPosition:v4 depth:v6 forSublayoutAtIndex:v8, v10, 0.1, 0.1];
  [(PXStoryViewLayout *)self _scrubberFrame];
  [(PXStoryViewLayout *)self _setFrame:[(PXStoryViewLayout *)self scrubberLayoutIndex] relativeZPosition:v11 depth:v12 forSublayoutAtIndex:v13, v14, 0.2, 0.1];
  if ([(PXStoryViewLayout *)self gridLayoutIndex]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [(PXStoryViewLayout *)self sublayoutAtIndex:[(PXStoryViewLayout *)self gridLayoutIndex] loadIfNeeded:0];
    [v15 contentSize];
    v17 = v16;

    if (v17 < v10)
    {
      v17 = v10;
    }

    [(PXStoryViewLayout *)self _setFrame:[(PXStoryViewLayout *)self gridLayoutIndex] relativeZPosition:0.0 depth:0.0 forSublayoutAtIndex:v8, v17, -0.5, 0.1];
  }

  [(PXStoryViewLayout *)self _setFrame:[(PXStoryViewLayout *)self chromeLayoutIndex] relativeZPosition:v18 depth:v6 forSublayoutAtIndex:v8, v10, 0.3, 0.1];
  [(PXStoryViewLayout *)self _setFrame:[(PXStoryViewLayout *)self relatedOverlayLayoutIndex] relativeZPosition:v18 depth:v6 forSublayoutAtIndex:v8, v10, 0.3, 0.1];
  [(PXStoryViewLayout *)self _setFrame:[(PXStoryViewLayout *)self diagnosticHUDLayoutIndex] relativeZPosition:v18 depth:v6 forSublayoutAtIndex:v8, v10, 0.9, 0.1];

  [(PXStoryViewLayout *)self _updateHeaderSpacing];
}

- (void)_updateHeaderSpacing
{
  v3 = [(PXStoryViewLayout *)self gridContentController];

  if (v3)
  {
    v4 = [(PXStoryViewLayout *)self viewModel];
    v10 = [v4 viewLayoutSpec];

    v5 = [(PXStoryViewLayout *)self gridContentController];
    v6 = [v5 layout];

    [v10 predictedBrowseChromeTextHeight];
    v8 = v7;
    [v10 distanceFromBottomChromeTextToGrid];
    [v6 setStatusBarHeight:v8 + v9];
    [v6 setWantsHeaderInSafeArea:1];
  }
}

- (void)_invalidateSublayoutFrames
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x10;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x10) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateSublayoutFrames]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:565 description:{@"invalidating %lu after it already has been updated", 16}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 16;
  if (!willPerformUpdate)
  {

    [(PXStoryViewLayout *)self setNeedsUpdate];
  }
}

- (void)_updateGridLayout
{
  v70[9] = *MEMORY[0x1E69E9840];
  self->_isUpdatingGridLayout = 1;
  v3 = +[PXStorySettings sharedInstance];
  v4 = [(PXStoryViewLayout *)self viewModel];
  v5 = [(PXStoryViewLayout *)self viewModel];
  v6 = [v5 mainModel];
  v7 = [v6 viewModeTransition];

  if ([v3 wantsGridLayout] && (-[PXStoryViewLayout inGridViewMode](self, "inGridViewMode") || objc_msgSend(v7, "hasSourceOrDestinationViewMode:", 2)))
  {
    v8 = v7;
    v9 = [(PXStoryViewLayout *)self mainModel];
    v10 = [v9 recipeManager];
    v11 = [v10 assetsDataSourceManager];

    gridContentController = self->_gridContentController;
    v63 = v11;
    if (gridContentController)
    {
      v13 = [(PXPhotosContentController *)gridContentController viewModel];
      v14 = [v13 dataSourceManager];

      if (v14 == v11)
      {
        v16 = 0;
      }

      else
      {
        v15 = [(PXPhotosContentController *)self->_gridContentController viewModel];
        v16 = [v15 isInSelectMode];

        v17 = self->_gridContentController;
        self->_gridContentController = 0;
      }

      if (self->_gridContentController)
      {
LABEL_28:
        v50 = [(PXStoryViewLayout *)self gridContentController];
        v51 = [v50 layout];

        if ([v3 swipeDownBehavior])
        {
          [v4 swipeDownDismissalPreviewFraction];
          [v51 setAlpha:1.0 - v52];
        }

        v53 = [(PXStoryViewLayout *)self sublayoutAtIndex:[(PXStoryViewLayout *)self gridLayoutIndex] loadIfNeeded:0];

        if (v53 != v51)
        {
          [(PXStoryViewLayout *)self removeSublayoutAtIndex:[(PXStoryViewLayout *)self gridLayoutIndex]];
          [(PXGAbsoluteCompositeLayout *)self insertSublayout:v51 atIndex:[(PXStoryViewLayout *)self gridLayoutIndex]];
        }

        if ([(PXStoryViewLayout *)self shouldScrollGridToPlaybackPosition])
        {
          v54 = v7;
          v55 = [(PXStoryViewLayout *)self mainModel];
          v64 = 0;
          v56 = [v55 getMainVisibleClipIdentifier:0 assetReferece:&v64];
          v57 = v64;

          if (v56 && v57)
          {
            v58 = [(PXStoryViewLayout *)self gridContentController];
            [v58 scrollToRevealAssetReference:v57 completionHandler:0];
          }

          [(PXStoryViewLayout *)self setShouldScrollGridToPlaybackPosition:0];

          v7 = v54;
          v11 = v63;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v16 = 0;
    }

    v59 = v16;
    v60 = v8;
    v20 = [[off_1E77218C8 alloc] initWithDataSourceManager:v11];
    objc_opt_class();
    v62 = v7;
    if (objc_opt_isKindOfClass())
    {
      v21 = v11;
      v22 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:v20];
      [(PXPhotoKitAssetActionManager *)v22 setDataSourceManager:v21];
      v23 = *off_1E7721B98;
      v70[0] = *off_1E7721B88;
      v70[1] = v23;
      v24 = *off_1E7721BD8;
      v70[2] = *off_1E7721BB8;
      v70[3] = v24;
      v25 = *off_1E7721BF8;
      v70[4] = *off_1E7721BC0;
      v70[5] = v25;
      v26 = *off_1E7721AB8;
      v70[6] = *off_1E7721AA8;
      v70[7] = v26;
      v70[8] = *off_1E7721AB0;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:9];
      v28 = [MEMORY[0x1E695DFD8] setWithArray:v27];
      [(PXActionManager *)v22 setAllowedActionTypes:v28];

      v29 = [PXPhotoKitAssetCollectionActionManager actionManagerWithDataSourceManager:v21];

      v11 = v63;
    }

    else
    {
      v29 = 0;
      v22 = 0;
    }

    v30 = [off_1E7721830 alloc];
    v31 = [v4 mediaProvider];
    v32 = [v30 initWithDataSourceManager:v11 mediaProvider:v31 selectionManager:v20 assetActionManager:v22 assetCollectionActionManager:v29];

    [v32 setSectionBodyStyle:1];
    v61 = v20;
    if (MEMORY[0x1A590D320]([v32 setGridStyle:1]))
    {
      v33 = 0;
    }

    else if ([v3 preferTopChromeItemsInAppNavigationBar])
    {
      v33 = 8;
    }

    else
    {
      v33 = 3;
    }

    [v32 setNavBarStyle:v33];
    [v32 setAllowsUserDefaults:0];
    [v32 setDelegate:self];
    v34 = [v32 photosAppConfiguration];
    [v34 setPhotosAppGridDelegate:self];

    v35 = [v4 viewLayoutSpec];
    v36 = [v35 browseGridAllowsDragGesture];

    [v32 setAllowsDragIn:v36];
    [v32 setAllowsDragOut:v36];
    [v32 setForbiddenBadges:0];
    [v32 setSelectionContextOverride:13];
    [v32 setAllowsMultiSelectMenu:0];
    v37 = [v32 photosAppConfiguration];
    [v37 setAlwaysIncludeSharedWithYouAssets:1];

    [v32 setAllowedActions:*off_1E77221D8 & 0xFFFFFFFFFFFFFFFELL ^ 0x81];
    v38 = *off_1E77221E0;
    if (([v4 allowedChromeItems] & 0x20000000) == 0)
    {
      v38 |= 2uLL;
      v39 = [v4 viewLayoutSpec];
      [v32 setPreferredUserInterfaceStyle:{objc_msgSend(v39, "preferredUserInterfaceStyleForBrowseGridInlineAddButton")}];
    }

    [v32 setAllowedBehaviors:v38];
    [v32 setStartsInSelectMode:v59];
    [v32 setWantsAssetIndexBadge:1];
    [v32 setPreferredBackgroundStyle:2];
    v40 = [v4 mainConfiguration];
    [v32 applyStoryTimelineViewTopInsetWorkaroundIfNeededWithStoryConfiguration:v40];

    [(PXStoryViewLayout *)self adjustPhotosViewConfiguration:v32];
    v41 = [off_1E77217E8 alloc];
    v42 = [v4 extendedTraitCollection];
    v43 = [v41 initWithConfiguration:v32 traitCollection:v42];
    v44 = self->_gridContentController;
    self->_gridContentController = v43;

    [(PXPhotosContentController *)self->_gridContentController setDelegate:self];
    v45 = [(PXPhotosContentController *)self->_gridContentController viewModel];
    v46 = [v4 presentingViewController];
    if (objc_opt_respondsToSelector())
    {
      v47 = v46;
      v48 = [v47 gridDecorationViewClass];
      if (v48)
      {
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __38__PXStoryViewLayout__updateGridLayout__block_invoke;
        v69[3] = &__block_descriptor_40_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8lu32l8;
        v69[4] = v48;
        [v45 performChanges:v69];
      }
    }

    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __38__PXStoryViewLayout__updateGridLayout__block_invoke_2;
    v65[3] = &unk_1E7741298;
    v66 = v45;
    v67 = v4;
    v68 = self;
    v49 = v45;
    [v67 performChanges:v65];

    v7 = v62;
    v11 = v63;
    v8 = v60;
    goto LABEL_28;
  }

  v18 = [(PXStoryViewLayout *)self sublayoutAtIndex:self->_gridLayoutIndex loadIfNeeded:0];
  gridPlaceholderLayout = self->_gridPlaceholderLayout;

  if (v18 != gridPlaceholderLayout)
  {
    [(PXStoryViewLayout *)self removeSublayoutAtIndex:self->_gridLayoutIndex];
    [(PXGAbsoluteCompositeLayout *)self insertSublayout:self->_gridPlaceholderLayout atIndex:self->_gridLayoutIndex];
  }

  v8 = 0;
LABEL_38:
  [(PXStoryViewLayout *)self setGridViewModeTransition:v8];
  [(PXStoryViewLayout *)self _invalidateSublayoutFrames];
  self->_isUpdatingGridLayout = 0;
}

void __38__PXStoryViewLayout__updateGridLayout__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDecorationViewClass:v2];
  [v3 setViewBasedDecorationsEnabled:1];
}

void __38__PXStoryViewLayout__updateGridLayout__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 setPhotosGridViewModel:*(a1 + 32)];
  v3 = [*(*(a1 + 48) + 1192) interaction];
  [*(a1 + 40) setPhotosGridViewInteraction:v3];
}

- (void)_invalidateGridLayout
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateGridLayout]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:416 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXStoryViewLayout *)self setNeedsUpdate];
  }
}

- (void)_updateMainStoryLayout
{
  v3 = [(PXStoryViewLayout *)self viewModel];
  v7 = [v3 mainModel];

  v4 = [[PXStoryLayout alloc] initWithModel:v7];
  [(PXStoryViewLayout *)self setMainStoryLayout:v4];

  v5 = [[PXStoryViewModeTransitionsHelper alloc] initWithModel:v7];
  [(PXStoryViewLayout *)self setViewModeTransitionsHelper:v5];

  v6 = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
  [v6 setDelegate:self];
}

- (void)_invalidateMainStoryLayout
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateMainStoryLayout]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:405 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXStoryViewLayout *)self setNeedsUpdate];
  }
}

- (void)_updateMainModel
{
  v4 = [(PXStoryViewLayout *)self viewModel];
  v3 = [v4 mainModel];
  [(PXStoryViewLayout *)self setMainModel:v3];
}

- (void)_invalidateMainModel
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x40;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x40) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateMainModel]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:397 description:{@"invalidating %lu after it already has been updated", 64}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 64;
  if (!willPerformUpdate)
  {

    [(PXStoryViewLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v7.receiver = self;
  v7.super_class = PXStoryViewLayout;
  [(PXGCompositeLayout *)&v7 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryViewLayout.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout didUpdate]"];
    [v5 handleFailureInFunction:v6 file:@"PXStoryViewLayout.m" lineNumber:393 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  v3 = [(PXStoryViewLayout *)self inGridViewMode];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (v3)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      if (self->_updateFlags.updated)
      {
        v45 = [MEMORY[0x1E696AAA8] currentHandler];
        v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
        [v45 handleFailureInFunction:v46 file:@"PXStoryViewLayout.m" lineNumber:342 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      p_updateFlags->needsUpdate = needsUpdate | 1;
      self->_updateFlags.willPerformUpdate = 0;
      p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
LABEL_5:
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXStoryViewLayout.m" lineNumber:345 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
      goto LABEL_10;
    }

    needsUpdate |= 1uLL;
    p_updateFlags->needsUpdate = needsUpdate;
    self->_updateFlags.willPerformUpdate = 0;
    p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
  }

  else
  {
    self->_updateFlags.willPerformUpdate = 0;
    if (!needsUpdate)
    {
      goto LABEL_41;
    }

    p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_5;
    }
  }

LABEL_10:
  self->_updateFlags.isPerformingUpdate = 1;
  self->_updateFlags.updated = 1;
  if (needsUpdate)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
    [(PXStoryViewLayout *)self _updateContentSize];
    if (!self->_updateFlags.isPerformingUpdate)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
      [v21 handleFailureInFunction:v22 file:@"PXStoryViewLayout.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }
  }

  v9 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 0x40uLL;
  if ((v9 & 0x40) != 0)
  {
    p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFBFLL;
    [(PXStoryViewLayout *)self _updateMainModel];
  }

  if (!*p_isPerformingUpdate)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [v23 handleFailureInFunction:v24 file:@"PXStoryViewLayout.m" lineNumber:352 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v10 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 2uLL;
  if ((v10 & 2) != 0)
  {
    p_updateFlags->needsUpdate = v10 & 0xFFFFFFFFFFFFFFFDLL;
    [(PXStoryViewLayout *)self _updateMainStoryLayout];
  }

  if (!*p_isPerformingUpdate)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [v25 handleFailureInFunction:v26 file:@"PXStoryViewLayout.m" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v11 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 4uLL;
  if ((v11 & 4) != 0)
  {
    p_updateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFFFBLL;
    [(PXStoryViewLayout *)self _updateTransitionsHelper];
  }

  if (!*p_isPerformingUpdate)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [v27 handleFailureInFunction:v28 file:@"PXStoryViewLayout.m" lineNumber:358 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v12 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 8uLL;
  if ((v12 & 8) != 0)
  {
    p_updateFlags->needsUpdate = v12 & 0xFFFFFFFFFFFFFFF7;
    [(PXStoryViewLayout *)self _updateGridLayout];
  }

  if (!*p_isPerformingUpdate)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [v29 handleFailureInFunction:v30 file:@"PXStoryViewLayout.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v13 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 0x10uLL;
  if ((v13 & 0x10) != 0)
  {
    p_updateFlags->needsUpdate = v13 & 0xFFFFFFFFFFFFFFEFLL;
    [(PXStoryViewLayout *)self _updateSublayoutFrames];
  }

  if (!*p_isPerformingUpdate)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [v31 handleFailureInFunction:v32 file:@"PXStoryViewLayout.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v14 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 0x20uLL;
  if ((v14 & 0x20) != 0)
  {
    p_updateFlags->needsUpdate = v14 & 0xFFFFFFFFFFFFFFDFLL;
    [(PXStoryViewLayout *)self _updateSublayoutVisibility];
  }

  if (!*p_isPerformingUpdate)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [v33 handleFailureInFunction:v34 file:@"PXStoryViewLayout.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v15 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 0x80uLL;
  if ((v15 & 0x80) != 0)
  {
    p_updateFlags->needsUpdate = v15 & 0xFFFFFFFFFFFFFF7FLL;
    [(PXStoryViewLayout *)self _updateGridTransform];
    v15 = p_updateFlags->needsUpdate;
  }

  *p_isPerformingUpdate = 0;
  if (v15)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [v35 handleFailureInFunction:v36 file:@"PXStoryViewLayout.m" lineNumber:370 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
  }

LABEL_41:
  isUpdatingSublayouts = self->_isUpdatingSublayouts;
  self->_isUpdatingSublayouts = 1;
  v47.receiver = self;
  v47.super_class = PXStoryViewLayout;
  [(PXGCompositeLayout *)&v47 update];
  self->_isUpdatingSublayouts = isUpdatingSublayouts;
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  v18 = self->_postUpdateFlags.needsUpdate;
  if (v18)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
      [v37 handleFailureInFunction:v38 file:@"PXStoryViewLayout.m" lineNumber:377 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

      v18 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 1024;
    if ((v18 & 0x400) != 0)
    {
      p_postUpdateFlags->needsUpdate = v18 & 0xFFFFFFFFFFFFFBFFLL;
      [(PXStoryViewLayout *)self _updateHiddenGridAssets];
      if (!self->_postUpdateFlags.isPerformingUpdate)
      {
        v39 = [MEMORY[0x1E696AAA8] currentHandler];
        v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
        [v39 handleFailureInFunction:v40 file:@"PXStoryViewLayout.m" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
      }
    }

    v19 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x800uLL;
    if ((v19 & 0x800) != 0)
    {
      p_postUpdateFlags->needsUpdate = v19 & 0xFFFFFFFFFFFFF7FFLL;
      [(PXStoryViewLayout *)self _updateSublayoutOrigins];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
      [v41 handleFailureInFunction:v42 file:@"PXStoryViewLayout.m" lineNumber:384 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v20 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x1000uLL;
    if ((v20 & 0x1000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v20 & 0xFFFFFFFFFFFFEFFFLL;
      [(PXStoryViewLayout *)self _updateTransitionsHelperAfterSublayouts];
      v20 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v20)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
      [v43 handleFailureInFunction:v44 file:@"PXStoryViewLayout.m" lineNumber:387 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }
}

- (void)willUpdate
{
  v7.receiver = self;
  v7.super_class = PXStoryViewLayout;
  [(PXGCompositeLayout *)&v7 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryViewLayout.m" lineNumber:336 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout willUpdate]"];
    [v5 handleFailureInFunction:v6 file:@"PXStoryViewLayout.m" lineNumber:337 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
  }
}

- (id)itemPlacementControllerForItemReference:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryViewLayout *)self mainStoryLayout];
  v6 = [v5 itemPlacementControllerForItemReference:v4];

  return v6;
}

- (id)mainItemReference
{
  v2 = [(PXStoryViewLayout *)self mainStoryLayout];
  v3 = [v2 itemReference];

  return v3;
}

- (id)createDefaultAnimationForCurrentContext
{
  if (-[PXStoryViewLayout inGridViewMode](self, "inGridViewMode") && (-[PXStoryViewLayout viewModel](self, "viewModel"), v3 = objc_claimAutoreleasedReturnValue(), [v3 viewModeTransition], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v7.receiver = self;
    v7.super_class = PXStoryViewLayout;
    v5 = [(PXStoryViewLayout *)&v7 createDefaultAnimationForCurrentContext];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didUpdateSublayout:(id)a3
{
  v9.receiver = self;
  v9.super_class = PXStoryViewLayout;
  v4 = a3;
  [(PXStoryViewLayout *)&v9 didUpdateSublayout:v4];
  v5 = [(PXStoryViewLayout *)self gridContentController:v9.receiver];
  v6 = [v5 layout];

  if (v6 == v4)
  {
    if ([(PXStoryViewLayout *)self inGridViewMode])
    {
      [(PXStoryViewLayout *)self _updateContentSize];
    }

    v7 = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
    [v7 invalidatePresentingGeometry];

    v8 = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
    [v8 updateIfNeeded];
  }
}

- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  v7 = a3;
  if ([(PXStoryViewLayout *)self inGridViewMode])
  {
    gridLayoutIndex = self->_gridLayoutIndex;
  }

  else
  {
    gridLayoutIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v7;

  *a5 = v7;
  return gridLayoutIndex;
}

- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)a3
{
  gridLayoutIndex = self->_gridLayoutIndex;
  v5 = a3;
  v6 = [(PXStoryViewLayout *)self sublayoutAtIndex:gridLayoutIndex loadIfNeeded:0];
  [v6 enumerateVisibleAnchoringSpriteIndexesUsingBlock:v5];
}

- (void)setGridViewModeTransition:(id)a3
{
  v5 = a3;
  gridViewModeTransition = self->_gridViewModeTransition;
  if (gridViewModeTransition != v5)
  {
    v7 = v5;
    [(PXStoryViewModeTransition *)gridViewModeTransition unregisterChangeObserver:self context:GridViewModeTransitionObservationContext];
    objc_storeStrong(&self->_gridViewModeTransition, a3);
    [(PXStoryViewModeTransition *)self->_gridViewModeTransition registerChangeObserver:self context:GridViewModeTransitionObservationContext];
    [(PXStoryViewLayout *)self _invalidateGridTransform];
    v5 = v7;
  }
}

- (void)setMainStoryLayout:(id)a3
{
  v5 = a3;
  mainStoryLayout = self->_mainStoryLayout;
  if (mainStoryLayout != v5)
  {
    v10 = v5;
    [(PXStoryLayout *)mainStoryLayout setAccessoryItemPlacementLayout:0];
    objc_storeStrong(&self->_mainStoryLayout, a3);
    [(PXStoryLayout *)self->_mainStoryLayout setAccessoryItemPlacementLayout:self];
    [(PXStoryViewLayout *)self referenceDepth];
    [(PXStoryLayout *)self->_mainStoryLayout setRelativeZPositionAboveLegibilityGradients:0.2 / (0.1 / v7)];
    [(PXStoryViewLayout *)self removeSublayoutAtIndex:self->_mainStoryLayoutIndex];
    v8 = self->_mainStoryLayout;
    if (v8)
    {
      [(PXGAbsoluteCompositeLayout *)self insertSublayout:v8 atIndex:self->_mainStoryLayoutIndex];
    }

    else
    {
      v9 = [(PXStoryViewLayout *)self mainStoryPlaceholderLayout];
      [(PXGAbsoluteCompositeLayout *)self insertSublayout:v9 atIndex:self->_mainStoryLayoutIndex];
    }

    [(PXStoryViewLayout *)self _invalidateSublayoutFrames];
    v5 = v10;
  }
}

- (void)setMainModel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_mainModel != v5)
  {
    v11 = v5;
    v7 = [(PXStoryModel *)v5 isEqual:?];
    v6 = v11;
    if ((v7 & 1) == 0)
    {
      [(PXStoryModel *)self->_mainModel unregisterChangeObserver:self context:MainModelObservationContext_186934];
      v8 = [(PXStoryModel *)self->_mainModel recipeManager];
      [v8 unregisterChangeObserver:self context:RecipeManagerObservationContext_186935];

      objc_storeStrong(&self->_mainModel, a3);
      v9 = [(PXStoryModel *)self->_mainModel recipeManager];
      [v9 registerChangeObserver:self context:RecipeManagerObservationContext_186935];

      [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext_186934];
      [(PXStoryViewLayout *)self _invalidateMainStoryLayout];
      [(PXStoryViewLayout *)self _invalidateGridLayout];
      gridContentController = self->_gridContentController;
      self->_gridContentController = 0;

      [(PXStoryViewLayout *)self _axMoveCursorToPlayer];
      v6 = v11;
    }
  }
}

- (unint64_t)contentChangeTrend
{
  v2 = [(PXStoryViewLayout *)self mainStoryLayout];
  v3 = [v2 contentChangeTrend];

  return v3;
}

- (void)referenceDepthDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryViewLayout;
  [(PXGCompositeLayout *)&v3 referenceDepthDidChange];
  [(PXStoryViewLayout *)self _invalidateSublayoutFrames];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryViewLayout;
  [(PXGCompositeLayout *)&v3 referenceSizeDidChange];
  [(PXStoryViewLayout *)self _invalidateContentSize];
}

- (void)visibleRectDidChange
{
  v6.receiver = self;
  v6.super_class = PXStoryViewLayout;
  [(PXGCompositeLayout *)&v6 visibleRectDidChange];
  if (self->_isUpdatingSublayouts)
  {
    if (self->_postUpdateFlags.isPerformingUpdate && (self->_postUpdateFlags.updated & 0x800) != 0)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout visibleRectDidChange]"];
      [v4 handleFailureInFunction:v5 file:@"PXStoryViewLayout.m" lineNumber:206 description:{@"invalidating %lu after it already has been updated", 2048}];

      abort();
    }

    self->_postUpdateFlags.needsUpdate |= 0x800uLL;
  }

  else
  {
    [(PXStoryViewLayout *)self _invalidateSublayoutFrames];
    [(PXStoryViewLayout *)self _invalidateSublayoutOrigins];
    v3 = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
    [v3 invalidatePresentingGeometry];
  }
}

- (PXStoryViewLayout)initWithViewModel:(id)a3
{
  v5 = a3;
  v42.receiver = self;
  v42.super_class = PXStoryViewLayout;
  v6 = [(PXGAbsoluteCompositeLayout *)&v42 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_17;
  }

  objc_storeStrong(&v6->_viewModel, a3);
  [(PXStoryViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_186933];
  v8 = +[PXStorySettings sharedInstance];
  [(PXGAbsoluteCompositeLayout *)v7 setShouldUpdateSublayoutsInStrictOrder:1];
  v9 = objc_alloc_init(off_1E7721628);
  gridPlaceholderLayout = v7->_gridPlaceholderLayout;
  v7->_gridPlaceholderLayout = v9;

  v7->_gridLayoutIndex = [(PXStoryViewLayout *)v7 addSublayout:v7->_gridPlaceholderLayout];
  v11 = *(off_1E7722030 + 1);
  *&v7->_presentedGridTransform.affineTransform.a = *off_1E7722030;
  *&v7->_presentedGridTransform.affineTransform.c = v11;
  *&v7->_presentedGridTransform.affineTransform.tx = *(off_1E7722030 + 2);
  v7->_presentedGridTransform.tz = *(off_1E7722030 + 6);
  v12 = objc_alloc_init(off_1E7721628);
  mainStoryPlaceholderLayout = v7->_mainStoryPlaceholderLayout;
  v7->_mainStoryPlaceholderLayout = v12;

  v7->_mainStoryLayoutIndex = [(PXStoryViewLayout *)v7 addSublayout:v7->_mainStoryPlaceholderLayout];
  v14 = [v5 mainConfiguration];
  v15 = [v14 isPresentedForAirPlay];
  v16 = [v14 isExportPreview];
  v17 = [v14 options];
  v18 = [[PXStoryViewLegibilityOverlayLayout alloc] initWithViewModel:v7->_viewModel];
  v19 = [(PXStoryViewLayout *)v7 addSublayout:v18];

  if (v15)
  {
    v20 = v8;
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  if ([v8 wantsScrubber] && v16 != 1 && (v17 & 0x400) == 0)
  {
    v22 = [[PXStoryScrubberLayout alloc] initWithViewModel:v7->_viewModel];
    scrubberLayout = v7->_scrubberLayout;
    v7->_scrubberLayout = v22;

    v41 = [(PXStoryViewLayout *)v7 addSublayout:v7->_scrubberLayout];
  }

  else
  {
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v17 & 0x400) != 0)
    {
      goto LABEL_10;
    }
  }

  v24 = [[PXStoryChromeLayout alloc] initWithViewModel:v7->_viewModel];
  chromeLayout = v7->_chromeLayout;
  v7->_chromeLayout = v24;

  v21 = [(PXStoryViewLayout *)v7 addSublayout:v7->_chromeLayout];
LABEL_10:
  v20 = v8;
  if ((v16 & 1) == 0)
  {
    v27 = [[PXStoryRelatedOverlayLayout alloc] initWithViewModel:v7->_viewModel];
    v28 = [PXStoryRelatedOverlayItemDecorationSource alloc];
    v29 = [(PXStoryViewLayout *)v7 viewModel];
    v30 = [(PXStoryRelatedOverlayItemDecorationSource *)v28 initWithViewModel:v29];
    v40 = v19;
    relatedDecorationSource = v7->_relatedDecorationSource;
    v7->_relatedDecorationSource = v30;

    v32 = [[off_1E77215B0 alloc] initWithDecoratedLayout:v27];
    [(PXGLayout *)v32 setActiveDecorations:&unk_1F1911680];
    [(PXGLayout *)v32 setContentSource:v7->_relatedDecorationSource];
    [(PXGLayout *)v32 setDecorationSource:v7->_relatedDecorationSource];
    [(PXStoryRelatedOverlayItemDecorationSource *)v7->_relatedDecorationSource setDecoratedLayout:v27];
    relatedOverlayLayout = v7->_relatedOverlayLayout;
    v7->_relatedOverlayLayout = v32;
    v34 = v32;

    v19 = v40;
    v26 = [(PXStoryViewLayout *)v7 addSublayout:v34];

    goto LABEL_13;
  }

LABEL_11:
  v26 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:
  v35 = +[PXStorySettings sharedInstance];
  v36 = [v35 isHUDEnabled];

  if (v36)
  {
    v37 = [[PXStoryDiagnosticHUDLayout alloc] initWithDataSource:v7->_viewModel];
    v38 = [(PXStoryViewLayout *)v7 addSublayout:v37];
  }

  else
  {
    v38 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7->_chromeLayoutIndex = v21;
  v7->_relatedOverlayLayoutIndex = v26;
  v7->_scrubberLayoutIndex = v41;
  v7->_diagnosticHUDLayoutIndex = v38;
  v7->_legibilityOverlayLayoutIndex = v19;
  [(PXStoryViewLayout *)v7 _invalidateMainModel];
  [(PXStoryViewLayout *)v7 _invalidateMainStoryLayout];

LABEL_17:
  return v7;
}

- (PXStoryViewLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryViewLayout.m" lineNumber:124 description:{@"%s is not available as initializer", "-[PXStoryViewLayout init]"}];

  abort();
}

@end