@interface PXStoryViewLayout
- ($8F6F21C65DCD0A0F8AC24DFE540A6236)presentedGridTransform;
- (BOOL)inGridViewMode;
- (BOOL)photosContentController:(id)controller presentViewController:(id)viewController;
- (BOOL)photosContentController:(id)controller pushViewController:(id)viewController;
- (BOOL)photosViewController:(id)controller didPickAssetReference:(id)reference;
- (CGRect)_scrubberFrame;
- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory;
- (PXStoryViewLayout)init;
- (PXStoryViewLayout)initWithViewModel:(id)model;
- (UIEdgeInsets)maskPaddingForContentController:(id)controller;
- (id)_gridLayout;
- (id)createDefaultAnimationForCurrentContext;
- (id)dateIntervalFutureForContentInRect:(CGRect)rect type:(unint64_t)type;
- (id)itemPlacementControllerForItemReference:(id)reference;
- (id)locationNamesFutureForContentInRect:(CGRect)rect;
- (id)mainItemReference;
- (id)preferredFocusLayouts;
- (id)presentingViewControllerForContentController:(id)controller;
- (id)transitionsHelper:(id)helper regionOfInterestForTransition:(id)transition;
- (id)transitionsHelper:(id)helper timelineLayoutSnapshotForViewMode:(int64_t)mode;
- (id)undoManagerForActionPerformer:(id)performer;
- (id)undoManagerForContentController:(id)controller;
- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
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
- (void)_setFrame:(CGRect)frame relativeZPosition:(double)position depth:(double)depth forSublayoutAtIndex:(int64_t)index;
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
- (void)adjustPhotosViewConfiguration:(id)configuration;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)didUpdate;
- (void)didUpdateSublayout:(id)sublayout;
- (void)dismissPresentedViewControllerForContentController:(id)controller;
- (void)enumerateAssetCollectionsInRect:(CGRect)rect enumerator:(id)enumerator;
- (void)enumerateAssetsInRect:(CGRect)rect enumerator:(id)enumerator;
- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)block;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setGridViewModeTransition:(id)transition;
- (void)setMainModel:(id)model;
- (void)setMainStoryLayout:(id)layout;
- (void)setPresentedGridTransform:(id *)transform;
- (void)update;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXStoryViewLayout

- (void)adjustPhotosViewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  self;
  sub_1A4611410();
}

- (void)setPresentedGridTransform:(id *)transform
{
  v4 = *&transform->var0.c;
  v3 = *&transform->var0.tx;
  v5 = *&transform->var0.a;
  self->_presentedGridTransform.tz = transform->var1;
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

- (void)enumerateAssetsInRect:(CGRect)rect enumerator:(id)enumerator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  _gridLayout = [(PXStoryViewLayout *)self _gridLayout];
  if (_gridLayout)
  {
    [(PXStoryViewLayout *)self convertRect:_gridLayout toDescendantLayout:x, y, width, height];
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
      selfCopy = self;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "Failed to enumerate assets for <%{public}@:%p>", &v20, 0x16u);
    }
  }

  else
  {
    [_gridLayout enumerateAssetsInRect:enumeratorCopy enumerator:{v12, v14, v16, v18}];
  }
}

- (void)enumerateAssetCollectionsInRect:(CGRect)rect enumerator:(id)enumerator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  _gridLayout = [(PXStoryViewLayout *)self _gridLayout];
  if (_gridLayout)
  {
    [(PXStoryViewLayout *)self convertRect:_gridLayout toDescendantLayout:x, y, width, height];
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
      selfCopy = self;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "Failed to enumerate asset collections for <%{public}@:%p>", &v20, 0x16u);
    }
  }

  else
  {
    [_gridLayout enumerateAssetCollectionsInRect:enumeratorCopy enumerator:{v12, v14, v16, v18}];
  }
}

- (id)locationNamesFutureForContentInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _gridLayout = [(PXStoryViewLayout *)self _gridLayout];
  if (_gridLayout)
  {
    [(PXStoryViewLayout *)self convertRect:_gridLayout toDescendantLayout:x, y, width, height];
    if (!CGRectIsNull(v12))
    {
      PXPointIsNull();
    }
  }

  v9 = _Block_copy(&__block_literal_global_456_186924);

  return v9;
}

- (id)dateIntervalFutureForContentInRect:(CGRect)rect type:(unint64_t)type
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _gridLayout = [(PXStoryViewLayout *)self _gridLayout];
  if (_gridLayout)
  {
    [(PXStoryViewLayout *)self convertRect:_gridLayout toDescendantLayout:x, y, width, height];
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
  viewModel = [(PXStoryViewLayout *)self viewModel];
  wantsRelatedOverlayVisible = [viewModel wantsRelatedOverlayVisible];

  if (wantsRelatedOverlayVisible)
  {
    [(PXStoryViewLayout *)self relatedOverlayLayout];
  }

  else
  {
    scrubberLayout = [(PXStoryViewLayout *)self scrubberLayout];
    v5[2](v5, scrubberLayout);

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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_186933 == context)
  {
    if ((change & 0x40) != 0)
    {
      [(PXStoryViewLayout *)self _invalidateMainModel];
      if ((change & 0x2000) == 0)
      {
LABEL_9:
        if ((change & 0x400000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }

    else if ((change & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    [(PXStoryViewLayout *)self setShouldScrollGridToPlaybackPosition:[(PXStoryViewLayout *)self inGridViewMode]];
    [(PXStoryViewLayout *)self _invalidateGridLayout];
    [(PXStoryViewLayout *)self _invalidateContentSize];
    [(PXStoryViewLayout *)self _invalidateSublayoutFrames];
    [(PXStoryViewLayout *)self setNeedsUpdateOfScrollableAxis];
    [(PXStoryViewLayout *)self safeAreaInsetsDidChange];
    if ((change & 0x400000000) == 0)
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
    if ((change & 0x20) != 0)
    {
      [(PXStoryViewLayout *)self _invalidateSublayoutFrames];
    }

    if ((change & 0x3000000000) != 0)
    {
      viewModeTransitionsHelper = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
      [viewModeTransitionsHelper invalidatePresentingGeometry];
    }

    if ((change & 0x10000000000) != 0)
    {
      [(PXStoryViewLayout *)self _invalidateGridLayout];
      if ((change & 0x8000) == 0)
      {
LABEL_23:
        if ((change & 0x40000000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      }
    }

    else if ((change & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    [(PXStoryViewLayout *)self _axMoveCursorToPlayer];
    if ((change & 0x40000000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_27:
    [(PXStoryViewLayout *)self _invalidateSublayoutVisibility];
    goto LABEL_30;
  }

  if (MainModelObservationContext_186934 == context)
  {
    if ((change & 0x800000000000000) != 0)
    {
      [(PXStoryViewLayout *)self _invalidateSublayoutFrames];
    }
  }

  else if (RecipeManagerObservationContext_186935 == context)
  {
    if ((change & 0x10) != 0)
    {
      [(PXStoryViewLayout *)self _invalidateGridLayout];
    }
  }

  else
  {
    if (GridViewModeTransitionObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewLayout.m" lineNumber:1006 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (change)
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

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  mainStoryLayout = [(PXStoryViewLayout *)self mainStoryLayout];
  [containerCopy addSubprovider:mainStoryLayout];
}

- (id)undoManagerForContentController:(id)controller
{
  viewModel = [(PXStoryViewLayout *)self viewModel];
  presentingViewController = [viewModel presentingViewController];

  undoManager = [presentingViewController undoManager];

  return undoManager;
}

- (UIEdgeInsets)maskPaddingForContentController:(id)controller
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

- (id)presentingViewControllerForContentController:(id)controller
{
  viewModel = [(PXStoryViewLayout *)self viewModel];
  presentingViewController = [viewModel presentingViewController];

  return presentingViewController;
}

- (BOOL)photosContentController:(id)controller pushViewController:(id)viewController
{
  viewControllerCopy = viewController;
  viewModel = [(PXStoryViewLayout *)self viewModel];
  presentingViewController = [viewModel presentingViewController];

  navigationController = [presentingViewController navigationController];

  if (navigationController)
  {
    navigationController2 = [presentingViewController navigationController];
    [navigationController2 pushViewController:viewControllerCopy animated:1];
  }

  return navigationController != 0;
}

- (void)dismissPresentedViewControllerForContentController:(id)controller
{
  viewModel = [(PXStoryViewLayout *)self viewModel];
  presentingViewController = [viewModel presentingViewController];

  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)photosContentController:(id)controller presentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  viewModel = [(PXStoryViewLayout *)self viewModel];
  presentingViewController = [viewModel presentingViewController];

  if (presentingViewController)
  {
    [presentingViewController presentViewController:viewControllerCopy animated:1 completion:0];
  }

  return presentingViewController != 0;
}

- (id)undoManagerForActionPerformer:(id)performer
{
  viewModel = [(PXStoryViewLayout *)self viewModel];
  presentingViewController = [viewModel presentingViewController];

  undoManager = [presentingViewController undoManager];

  return undoManager;
}

- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory
{
  v3 = [PXStoryMemoryAssetsActionFactory alloc];
  viewModel = [(PXStoryViewLayout *)self viewModel];
  v5 = [(PXStoryMemoryAssetsActionFactory *)v3 initWithViewModel:viewModel];

  return v5;
}

- (BOOL)photosViewController:(id)controller didPickAssetReference:(id)reference
{
  v57 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  referenceCopy = reference;
  mainModel = [(PXStoryViewLayout *)self mainModel];
  viewModeTransition = [mainModel viewModeTransition];

  if (!viewModeTransition)
  {
    timeline = [mainModel timeline];
    resourcesDataSourceManager = [mainModel resourcesDataSourceManager];
    dataSource = [resourcesDataSourceManager dataSource];

    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v11 = [dataSource indexForDisplayAssetReference:referenceCopy];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      recipeManager = [mainModel recipeManager];
      recipe = [recipeManager recipe];

      untruncatedCuratedAssets = [recipe untruncatedCuratedAssets];
      if (!untruncatedCuratedAssets)
      {

        goto LABEL_11;
      }

      asset = [referenceCopy asset];
      v16 = [untruncatedCuratedAssets indexOfObject:asset];

      curatedAssets = [recipe curatedAssets];
      if (v16 >= [curatedAssets count])
      {
        v18 = PLStoryGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_FAULT, "truncated asset picked, falling back to last available asset", &buf, 2u);
        }

        v19 = [off_1E7721490 alloc];
        lastObject = [curatedAssets lastObject];
        v21 = *(off_1E7722228 + 1);
        buf = *off_1E7722228;
        v53 = v21;
        v22 = [v19 initWithSectionObject:0 itemObject:lastObject subitemObject:0 indexPath:&buf];

        v11 = [dataSource indexForDisplayAssetReference:v22];
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

    v23 = [timeline identifierOfFirstClipContainingResourceAtIndex:v11 inResourcesDataSource:dataSource resourceKind:1];
    if (!v23)
    {
      keyAssetResource = [dataSource keyAssetResource];
      px_storyResourceDisplayAsset = [keyAssetResource px_storyResourceDisplayAsset];
      asset2 = [referenceCopy asset];
      v27 = px_storyResourceDisplayAsset;
      v28 = asset2;
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

      v23 = [timeline identifierOfFirstClipContainingResourceAtIndex:-1 inResourcesDataSource:dataSource resourceKind:1];
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
    if (timeline)
    {
      [timeline timeRange];
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
    [timeline enumerateClipsInTimeRange:&v49 rect:v44 usingBlock:{*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)}];
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
    [timeline enumerateSegmentsInTimeRange:&v49 usingBlock:v43];
    if (!v46[3])
    {
      PXAssertGetLog();
    }

    _Block_object_dispose(&buf, 8);
    viewModel = [(PXStoryViewLayout *)self viewModel];
    [viewModel performChanges:&__block_literal_global_186951];

    mainModel2 = [(PXStoryViewLayout *)self mainModel];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __64__PXStoryViewLayout_photosViewController_didPickAssetReference___block_invoke_2_442;
    v38[3] = &unk_1E7741310;
    v42 = v23;
    v39 = referenceCopy;
    v41 = &v45;
    v34 = timeline;
    v40 = v34;
    [mainModel2 performChanges:v38];

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

- (id)transitionsHelper:(id)helper regionOfInterestForTransition:(id)transition
{
  transitionCopy = transition;
  viewModel = [(PXStoryViewLayout *)self viewModel];
  viewControllerDismissalTargetPlacement = [viewModel viewControllerDismissalTargetPlacement];
  if ([viewModel swipeDownTriggeringDismissal] && viewControllerDismissalTargetPlacement)
  {
    regionOfInterest = [viewControllerDismissalTargetPlacement regionOfInterest];
    [regionOfInterest setIsRepresentingPlaceholderContent:1];
  }

  else if ([transitionCopy hasSourceOrDestinationViewMode:2])
  {
    regionOfInterest = [transitionCopy assetReference];

    if (regionOfInterest)
    {
      gridContentController = [(PXStoryViewLayout *)self gridContentController];
      layout = [gridContentController layout];
      assetReference = [transitionCopy assetReference];
      regionOfInterest = [layout regionOfInterestForAssetReference:assetReference];

      [(PXStoryViewLayout *)self presentedGridTransform];
      memset(&t1, 0, sizeof(t1));
      v12 = *(off_1E7722030 + 1);
      *&t2.a = *off_1E7722030;
      *&t2.c = v12;
      *&t2.tx = *(off_1E7722030 + 2);
      if (!CGAffineTransformEqualToTransform(&t1, &t2) || *(off_1E7722030 + 6) != 0.0)
      {
        rootLayout = [(PXStoryViewLayout *)self rootLayout];
        coordinateSpace = [rootLayout coordinateSpace];
        [regionOfInterest rectInCoordinateSpace:coordinateSpace];
        [(PXStoryViewLayout *)self convertRect:rootLayout fromLayout:?];
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
        [rootLayout convertRect:self fromLayout:{v29.origin.x, v29.origin.y, v29.size.width, v29.size.height}];
        v23 = [regionOfInterest copyWithRect:coordinateSpace inCoordinateSpace:?];

        regionOfInterest = v23;
      }
    }
  }

  else
  {
    regionOfInterest = 0;
  }

  return regionOfInterest;
}

- (id)transitionsHelper:(id)helper timelineLayoutSnapshotForViewMode:(int64_t)mode
{
  helperCopy = helper;
  v8 = 0;
  if (mode > 2)
  {
    if (mode != 3 && mode != 5)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (mode == 1)
  {
LABEL_6:
    viewModel = [(PXStoryViewLayout *)self viewModel];
    mainModel = [viewModel mainModel];

    timeline = [mainModel timeline];
    currentSegmentIdentifier = [mainModel currentSegmentIdentifier];
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    if (timeline)
    {
      [timeline timeRangeForSegmentWithIdentifier:currentSegmentIdentifier];
    }

    [timeline frameForSegmentWithIdentifier:currentSegmentIdentifier];
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
    v8 = [(PXStoryTimelineLayoutSnapshot *)v21 initWithTimeline:timeline timelineRect:v28 timeRange:v14 clipCornerRadius:v16, v18, v20, v22, v23, v24, v25];

    goto LABEL_9;
  }

  if (!mode)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewLayout.m" lineNumber:743 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_9:

  return v8;
}

- (BOOL)inGridViewMode
{
  viewModel = [(PXStoryViewLayout *)self viewModel];
  v3 = [viewModel viewMode] == 2;

  return v3;
}

- (void)_setFrame:(CGRect)frame relativeZPosition:(double)position depth:(double)depth forSublayoutAtIndex:(int64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    [(PXStoryViewLayout *)self referenceDepth];
    v16 = v15;
    [(PXGAbsoluteCompositeLayout *)self setFrame:index forSublayoutAtIndex:x, y, width, height];
    [(PXGAbsoluteCompositeLayout *)self setZPosition:index forSublayoutAtIndex:-(position * v16)];

    [(PXGAbsoluteCompositeLayout *)self setReferenceDepth:index forSublayoutAtIndex:v16 * depth];
  }
}

- (CGRect)_scrubberFrame
{
  [(PXStoryViewLayout *)self visibleRect];
  viewModel = [(PXStoryViewLayout *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];
  [viewModel mainModel];
  [objc_claimAutoreleasedReturnValue() infoPanelVisibilityFraction];
  [viewLayoutSpec infoPanelAnimationDistance];
  PXFloatByLinearlyInterpolatingFloats();
}

- (void)_updateContentSize
{
  if ([(PXStoryViewLayout *)self inGridViewMode])
  {
    gridContentController = [(PXStoryViewLayout *)self gridContentController];
    layout = [gridContentController layout];
    [layout contentSize];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateContentSize]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:690 description:{@"invalidating %lu after it already has been updated", 1}];

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
  sublayoutDataStore = [(PXStoryViewLayout *)self sublayoutDataStore];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__PXStoryViewLayout__updateSublayoutOrigins__block_invoke;
  v12[3] = &unk_1E77412C0;
  v12[4] = self;
  v12[5] = v4;
  v12[6] = v6;
  v12[7] = v8;
  v12[8] = v10;
  [sublayoutDataStore enumerateSublayoutsUsingBlock:v12];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateSublayoutOrigins]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:671 description:{@"invalidating %lu after it already has been updated", 2048}];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateHiddenGridAssets]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:660 description:{@"invalidating %lu after it already has been updated", 1024}];

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
  viewModeTransitionsHelper = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
  [viewModeTransitionsHelper updateIfNeeded];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateTransitionsHelperAfterSublayouts]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:652 description:{@"invalidating %lu after it already has been updated", 4096}];

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
  viewModeTransitionsHelper = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
  [viewModeTransitionsHelper updateIfNeeded];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateTransitionsHelper]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:644 description:{@"invalidating %lu after it already has been updated", 4}];

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
  gridLayoutIndex = [(PXStoryViewLayout *)self gridLayoutIndex];
  if (gridLayoutIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = gridLayoutIndex;
    v5 = +[PXStorySettings sharedInstance];
    swipeDownBehavior = [v5 swipeDownBehavior];

    if (!swipeDownBehavior)
    {
      v7 = *(off_1E7722030 + 1);
      v18 = *off_1E7722030;
      v19 = v7;
      v20 = *(off_1E7722030 + 2);
      v21 = *(off_1E7722030 + 6);
      gridViewModeTransition = [(PXStoryViewLayout *)self gridViewModeTransition];
      regionOfInterest = [gridViewModeTransition regionOfInterest];
      gridContentController = [(PXStoryViewLayout *)self gridContentController];
      layout = [gridContentController layout];

      if (gridViewModeTransition && regionOfInterest)
      {
        if (layout)
        {
          rootLayout = [layout rootLayout];
          coordinateSpace = [rootLayout coordinateSpace];
          [regionOfInterest rectInCoordinateSpace:coordinateSpace];
          [(PXStoryViewLayout *)self convertRect:rootLayout fromLayout:?];

          PXSizeGetAspectRatio();
        }
      }

      v14 = v18;
      v15 = v19;
      v16 = v20;
      v17 = v21;
      [(PXGAbsoluteCompositeLayout *)self setSpriteTransform:&v14 forSublayoutAtIndex:v4];
      [layout setAlpha:1.0];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateGridTransform]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:610 description:{@"invalidating %lu after it already has been updated", 128}];

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
  viewModel = [(PXStoryViewLayout *)self viewModel];
  allowedChromeItems = [viewModel allowedChromeItems];

  scrubberLayout = [(PXStoryViewLayout *)self scrubberLayout];
  [scrubberLayout setIsHidden:(allowedChromeItems & 0x4000000) == 0];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateSublayoutVisibility]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:601 description:{@"invalidating %lu after it already has been updated", 32}];

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
  gridContentController = [(PXStoryViewLayout *)self gridContentController];

  if (gridContentController)
  {
    viewModel = [(PXStoryViewLayout *)self viewModel];
    viewLayoutSpec = [viewModel viewLayoutSpec];

    gridContentController2 = [(PXStoryViewLayout *)self gridContentController];
    layout = [gridContentController2 layout];

    [viewLayoutSpec predictedBrowseChromeTextHeight];
    v8 = v7;
    [viewLayoutSpec distanceFromBottomChromeTextToGrid];
    [layout setStatusBarHeight:v8 + v9];
    [layout setWantsHeaderInSafeArea:1];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateSublayoutFrames]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:565 description:{@"invalidating %lu after it already has been updated", 16}];

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
  viewModel = [(PXStoryViewLayout *)self viewModel];
  viewModel2 = [(PXStoryViewLayout *)self viewModel];
  mainModel = [viewModel2 mainModel];
  viewModeTransition = [mainModel viewModeTransition];

  if ([v3 wantsGridLayout] && (-[PXStoryViewLayout inGridViewMode](self, "inGridViewMode") || objc_msgSend(viewModeTransition, "hasSourceOrDestinationViewMode:", 2)))
  {
    v8 = viewModeTransition;
    mainModel2 = [(PXStoryViewLayout *)self mainModel];
    recipeManager = [mainModel2 recipeManager];
    assetsDataSourceManager = [recipeManager assetsDataSourceManager];

    gridContentController = self->_gridContentController;
    v63 = assetsDataSourceManager;
    if (gridContentController)
    {
      viewModel3 = [(PXPhotosContentController *)gridContentController viewModel];
      dataSourceManager = [viewModel3 dataSourceManager];

      if (dataSourceManager == assetsDataSourceManager)
      {
        isInSelectMode = 0;
      }

      else
      {
        viewModel4 = [(PXPhotosContentController *)self->_gridContentController viewModel];
        isInSelectMode = [viewModel4 isInSelectMode];

        v17 = self->_gridContentController;
        self->_gridContentController = 0;
      }

      if (self->_gridContentController)
      {
LABEL_28:
        gridContentController = [(PXStoryViewLayout *)self gridContentController];
        layout = [gridContentController layout];

        if ([v3 swipeDownBehavior])
        {
          [viewModel swipeDownDismissalPreviewFraction];
          [layout setAlpha:1.0 - v52];
        }

        v53 = [(PXStoryViewLayout *)self sublayoutAtIndex:[(PXStoryViewLayout *)self gridLayoutIndex] loadIfNeeded:0];

        if (v53 != layout)
        {
          [(PXStoryViewLayout *)self removeSublayoutAtIndex:[(PXStoryViewLayout *)self gridLayoutIndex]];
          [(PXGAbsoluteCompositeLayout *)self insertSublayout:layout atIndex:[(PXStoryViewLayout *)self gridLayoutIndex]];
        }

        if ([(PXStoryViewLayout *)self shouldScrollGridToPlaybackPosition])
        {
          v54 = viewModeTransition;
          mainModel3 = [(PXStoryViewLayout *)self mainModel];
          v64 = 0;
          v56 = [mainModel3 getMainVisibleClipIdentifier:0 assetReferece:&v64];
          v57 = v64;

          if (v56 && v57)
          {
            gridContentController2 = [(PXStoryViewLayout *)self gridContentController];
            [gridContentController2 scrollToRevealAssetReference:v57 completionHandler:0];
          }

          [(PXStoryViewLayout *)self setShouldScrollGridToPlaybackPosition:0];

          viewModeTransition = v54;
          assetsDataSourceManager = v63;
        }

        goto LABEL_38;
      }
    }

    else
    {
      isInSelectMode = 0;
    }

    v59 = isInSelectMode;
    v60 = v8;
    v20 = [[off_1E77218C8 alloc] initWithDataSourceManager:assetsDataSourceManager];
    objc_opt_class();
    v62 = viewModeTransition;
    if (objc_opt_isKindOfClass())
    {
      v21 = assetsDataSourceManager;
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

      assetsDataSourceManager = v63;
    }

    else
    {
      v29 = 0;
      v22 = 0;
    }

    v30 = [off_1E7721830 alloc];
    mediaProvider = [viewModel mediaProvider];
    v32 = [v30 initWithDataSourceManager:assetsDataSourceManager mediaProvider:mediaProvider selectionManager:v20 assetActionManager:v22 assetCollectionActionManager:v29];

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
    photosAppConfiguration = [v32 photosAppConfiguration];
    [photosAppConfiguration setPhotosAppGridDelegate:self];

    viewLayoutSpec = [viewModel viewLayoutSpec];
    browseGridAllowsDragGesture = [viewLayoutSpec browseGridAllowsDragGesture];

    [v32 setAllowsDragIn:browseGridAllowsDragGesture];
    [v32 setAllowsDragOut:browseGridAllowsDragGesture];
    [v32 setForbiddenBadges:0];
    [v32 setSelectionContextOverride:13];
    [v32 setAllowsMultiSelectMenu:0];
    photosAppConfiguration2 = [v32 photosAppConfiguration];
    [photosAppConfiguration2 setAlwaysIncludeSharedWithYouAssets:1];

    [v32 setAllowedActions:*off_1E77221D8 & 0xFFFFFFFFFFFFFFFELL ^ 0x81];
    v38 = *off_1E77221E0;
    if (([viewModel allowedChromeItems] & 0x20000000) == 0)
    {
      v38 |= 2uLL;
      viewLayoutSpec2 = [viewModel viewLayoutSpec];
      [v32 setPreferredUserInterfaceStyle:{objc_msgSend(viewLayoutSpec2, "preferredUserInterfaceStyleForBrowseGridInlineAddButton")}];
    }

    [v32 setAllowedBehaviors:v38];
    [v32 setStartsInSelectMode:v59];
    [v32 setWantsAssetIndexBadge:1];
    [v32 setPreferredBackgroundStyle:2];
    mainConfiguration = [viewModel mainConfiguration];
    [v32 applyStoryTimelineViewTopInsetWorkaroundIfNeededWithStoryConfiguration:mainConfiguration];

    [(PXStoryViewLayout *)self adjustPhotosViewConfiguration:v32];
    v41 = [off_1E77217E8 alloc];
    extendedTraitCollection = [viewModel extendedTraitCollection];
    v43 = [v41 initWithConfiguration:v32 traitCollection:extendedTraitCollection];
    v44 = self->_gridContentController;
    self->_gridContentController = v43;

    [(PXPhotosContentController *)self->_gridContentController setDelegate:self];
    viewModel5 = [(PXPhotosContentController *)self->_gridContentController viewModel];
    presentingViewController = [viewModel presentingViewController];
    if (objc_opt_respondsToSelector())
    {
      v47 = presentingViewController;
      gridDecorationViewClass = [v47 gridDecorationViewClass];
      if (gridDecorationViewClass)
      {
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __38__PXStoryViewLayout__updateGridLayout__block_invoke;
        v69[3] = &__block_descriptor_40_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8lu32l8;
        v69[4] = gridDecorationViewClass;
        [viewModel5 performChanges:v69];
      }
    }

    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __38__PXStoryViewLayout__updateGridLayout__block_invoke_2;
    v65[3] = &unk_1E7741298;
    v66 = viewModel5;
    v67 = viewModel;
    selfCopy = self;
    v49 = viewModel5;
    [v67 performChanges:v65];

    viewModeTransition = v62;
    assetsDataSourceManager = v63;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateGridLayout]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:416 description:{@"invalidating %lu after it already has been updated", 8}];

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
  viewModel = [(PXStoryViewLayout *)self viewModel];
  mainModel = [viewModel mainModel];

  v4 = [[PXStoryLayout alloc] initWithModel:mainModel];
  [(PXStoryViewLayout *)self setMainStoryLayout:v4];

  v5 = [[PXStoryViewModeTransitionsHelper alloc] initWithModel:mainModel];
  [(PXStoryViewLayout *)self setViewModeTransitionsHelper:v5];

  viewModeTransitionsHelper = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
  [viewModeTransitionsHelper setDelegate:self];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateMainStoryLayout]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:405 description:{@"invalidating %lu after it already has been updated", 2}];

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
  viewModel = [(PXStoryViewLayout *)self viewModel];
  mainModel = [viewModel mainModel];
  [(PXStoryViewLayout *)self setMainModel:mainModel];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout _invalidateMainModel]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryViewLayout.m" lineNumber:397 description:{@"invalidating %lu after it already has been updated", 64}];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryViewLayout.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout didUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXStoryViewLayout.m" lineNumber:393 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  inGridViewMode = [(PXStoryViewLayout *)self inGridViewMode];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (inGridViewMode)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
        [currentHandler handleFailureInFunction:v46 file:@"PXStoryViewLayout.m" lineNumber:342 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      p_updateFlags->needsUpdate = needsUpdate | 1;
      self->_updateFlags.willPerformUpdate = 0;
      p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
LABEL_5:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
      [currentHandler2 handleFailureInFunction:v8 file:@"PXStoryViewLayout.m" lineNumber:345 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

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
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
      [currentHandler3 handleFailureInFunction:v22 file:@"PXStoryViewLayout.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [currentHandler4 handleFailureInFunction:v24 file:@"PXStoryViewLayout.m" lineNumber:352 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [currentHandler5 handleFailureInFunction:v26 file:@"PXStoryViewLayout.m" lineNumber:355 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [currentHandler6 handleFailureInFunction:v28 file:@"PXStoryViewLayout.m" lineNumber:358 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [currentHandler7 handleFailureInFunction:v30 file:@"PXStoryViewLayout.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [currentHandler8 handleFailureInFunction:v32 file:@"PXStoryViewLayout.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [currentHandler9 handleFailureInFunction:v34 file:@"PXStoryViewLayout.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
    [currentHandler10 handleFailureInFunction:v36 file:@"PXStoryViewLayout.m" lineNumber:370 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
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
      currentHandler11 = [MEMORY[0x1E696AAA8] currentHandler];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
      [currentHandler11 handleFailureInFunction:v38 file:@"PXStoryViewLayout.m" lineNumber:377 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

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
        currentHandler12 = [MEMORY[0x1E696AAA8] currentHandler];
        v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
        [currentHandler12 handleFailureInFunction:v40 file:@"PXStoryViewLayout.m" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
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
      currentHandler13 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
      [currentHandler13 handleFailureInFunction:v42 file:@"PXStoryViewLayout.m" lineNumber:384 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
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
      currentHandler14 = [MEMORY[0x1E696AAA8] currentHandler];
      v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout update]"];
      [currentHandler14 handleFailureInFunction:v44 file:@"PXStoryViewLayout.m" lineNumber:387 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryViewLayout.m" lineNumber:336 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout willUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXStoryViewLayout.m" lineNumber:337 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
  }
}

- (id)itemPlacementControllerForItemReference:(id)reference
{
  referenceCopy = reference;
  mainStoryLayout = [(PXStoryViewLayout *)self mainStoryLayout];
  v6 = [mainStoryLayout itemPlacementControllerForItemReference:referenceCopy];

  return v6;
}

- (id)mainItemReference
{
  mainStoryLayout = [(PXStoryViewLayout *)self mainStoryLayout];
  itemReference = [mainStoryLayout itemReference];

  return itemReference;
}

- (id)createDefaultAnimationForCurrentContext
{
  if (-[PXStoryViewLayout inGridViewMode](self, "inGridViewMode") && (-[PXStoryViewLayout viewModel](self, "viewModel"), v3 = objc_claimAutoreleasedReturnValue(), [v3 viewModeTransition], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v7.receiver = self;
    v7.super_class = PXStoryViewLayout;
    createDefaultAnimationForCurrentContext = [(PXStoryViewLayout *)&v7 createDefaultAnimationForCurrentContext];
  }

  else
  {
    createDefaultAnimationForCurrentContext = 0;
  }

  return createDefaultAnimationForCurrentContext;
}

- (void)didUpdateSublayout:(id)sublayout
{
  v9.receiver = self;
  v9.super_class = PXStoryViewLayout;
  sublayoutCopy = sublayout;
  [(PXStoryViewLayout *)&v9 didUpdateSublayout:sublayoutCopy];
  v5 = [(PXStoryViewLayout *)self gridContentController:v9.receiver];
  layout = [v5 layout];

  if (layout == sublayoutCopy)
  {
    if ([(PXStoryViewLayout *)self inGridViewMode])
    {
      [(PXStoryViewLayout *)self _updateContentSize];
    }

    viewModeTransitionsHelper = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
    [viewModeTransitionsHelper invalidatePresentingGeometry];

    viewModeTransitionsHelper2 = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
    [viewModeTransitionsHelper2 updateIfNeeded];
  }
}

- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  referenceCopy = reference;
  if ([(PXStoryViewLayout *)self inGridViewMode])
  {
    gridLayoutIndex = self->_gridLayoutIndex;
  }

  else
  {
    gridLayoutIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = referenceCopy;

  *objectReference = referenceCopy;
  return gridLayoutIndex;
}

- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)block
{
  gridLayoutIndex = self->_gridLayoutIndex;
  blockCopy = block;
  v6 = [(PXStoryViewLayout *)self sublayoutAtIndex:gridLayoutIndex loadIfNeeded:0];
  [v6 enumerateVisibleAnchoringSpriteIndexesUsingBlock:blockCopy];
}

- (void)setGridViewModeTransition:(id)transition
{
  transitionCopy = transition;
  gridViewModeTransition = self->_gridViewModeTransition;
  if (gridViewModeTransition != transitionCopy)
  {
    v7 = transitionCopy;
    [(PXStoryViewModeTransition *)gridViewModeTransition unregisterChangeObserver:self context:GridViewModeTransitionObservationContext];
    objc_storeStrong(&self->_gridViewModeTransition, transition);
    [(PXStoryViewModeTransition *)self->_gridViewModeTransition registerChangeObserver:self context:GridViewModeTransitionObservationContext];
    [(PXStoryViewLayout *)self _invalidateGridTransform];
    transitionCopy = v7;
  }
}

- (void)setMainStoryLayout:(id)layout
{
  layoutCopy = layout;
  mainStoryLayout = self->_mainStoryLayout;
  if (mainStoryLayout != layoutCopy)
  {
    v10 = layoutCopy;
    [(PXStoryLayout *)mainStoryLayout setAccessoryItemPlacementLayout:0];
    objc_storeStrong(&self->_mainStoryLayout, layout);
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
      mainStoryPlaceholderLayout = [(PXStoryViewLayout *)self mainStoryPlaceholderLayout];
      [(PXGAbsoluteCompositeLayout *)self insertSublayout:mainStoryPlaceholderLayout atIndex:self->_mainStoryLayoutIndex];
    }

    [(PXStoryViewLayout *)self _invalidateSublayoutFrames];
    layoutCopy = v10;
  }
}

- (void)setMainModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_mainModel != modelCopy)
  {
    v11 = modelCopy;
    v7 = [(PXStoryModel *)modelCopy isEqual:?];
    v6 = v11;
    if ((v7 & 1) == 0)
    {
      [(PXStoryModel *)self->_mainModel unregisterChangeObserver:self context:MainModelObservationContext_186934];
      recipeManager = [(PXStoryModel *)self->_mainModel recipeManager];
      [recipeManager unregisterChangeObserver:self context:RecipeManagerObservationContext_186935];

      objc_storeStrong(&self->_mainModel, model);
      recipeManager2 = [(PXStoryModel *)self->_mainModel recipeManager];
      [recipeManager2 registerChangeObserver:self context:RecipeManagerObservationContext_186935];

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
  mainStoryLayout = [(PXStoryViewLayout *)self mainStoryLayout];
  contentChangeTrend = [mainStoryLayout contentChangeTrend];

  return contentChangeTrend;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLayout visibleRectDidChange]"];
      [currentHandler handleFailureInFunction:v5 file:@"PXStoryViewLayout.m" lineNumber:206 description:{@"invalidating %lu after it already has been updated", 2048}];

      abort();
    }

    self->_postUpdateFlags.needsUpdate |= 0x800uLL;
  }

  else
  {
    [(PXStoryViewLayout *)self _invalidateSublayoutFrames];
    [(PXStoryViewLayout *)self _invalidateSublayoutOrigins];
    viewModeTransitionsHelper = [(PXStoryViewLayout *)self viewModeTransitionsHelper];
    [viewModeTransitionsHelper invalidatePresentingGeometry];
  }
}

- (PXStoryViewLayout)initWithViewModel:(id)model
{
  modelCopy = model;
  v42.receiver = self;
  v42.super_class = PXStoryViewLayout;
  v6 = [(PXGAbsoluteCompositeLayout *)&v42 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_17;
  }

  objc_storeStrong(&v6->_viewModel, model);
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
  mainConfiguration = [modelCopy mainConfiguration];
  isPresentedForAirPlay = [mainConfiguration isPresentedForAirPlay];
  isExportPreview = [mainConfiguration isExportPreview];
  options = [mainConfiguration options];
  v18 = [[PXStoryViewLegibilityOverlayLayout alloc] initWithViewModel:v7->_viewModel];
  v19 = [(PXStoryViewLayout *)v7 addSublayout:v18];

  if (isPresentedForAirPlay)
  {
    v20 = v8;
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  if ([v8 wantsScrubber] && isExportPreview != 1 && (options & 0x400) == 0)
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
    if ((options & 0x400) != 0)
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
  if ((isExportPreview & 1) == 0)
  {
    v27 = [[PXStoryRelatedOverlayLayout alloc] initWithViewModel:v7->_viewModel];
    v28 = [PXStoryRelatedOverlayItemDecorationSource alloc];
    viewModel = [(PXStoryViewLayout *)v7 viewModel];
    v30 = [(PXStoryRelatedOverlayItemDecorationSource *)v28 initWithViewModel:viewModel];
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
  isHUDEnabled = [v35 isHUDEnabled];

  if (isHUDEnabled)
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewLayout.m" lineNumber:124 description:{@"%s is not available as initializer", "-[PXStoryViewLayout init]"}];

  abort();
}

@end