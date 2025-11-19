@interface PUOneUpPresentationHelper
- (BOOL)_enableSpatialPresentation:(id)a3;
- (BOOL)_handleInteractivePresentationWithBlock:(id)a3;
- (BOOL)_prepareDismissalForced:(BOOL)a3;
- (BOOL)_shouldAutoplayOnNavigation;
- (BOOL)canPresentOneUpViewControllerAnimated:(BOOL)a3;
- (BOOL)dismissOneUpViewControllerForced:(BOOL)a3 animated:(BOOL)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handlePresentingPanGestureRecognizer:(id)a3;
- (BOOL)handlePresentingPinchGestureRecognizer:(id)a3;
- (BOOL)isReadyToAdoptTilingView:(id)a3 fromEndPoint:(id)a4;
- (BOOL)pausingPhotoLibraryChanges;
- (CGAffineTransform)_tilingViewTransitionTransform;
- (PUOneUpPresentationHelper)initWithBrowsingSessionCreationBlock:(id)a3;
- (PUOneUpPresentationHelper)initWithPhotosDataSource:(id)a3;
- (PUOneUpPresentationHelperAssetDisplayDelegate)assetDisplayDelegate;
- (PUOneUpPresentationHelperDelegate)delegate;
- (PUOneUpPresentationHelperTestingDelegate)testingDelegate;
- (PUTilingView)_disappearingTilingView;
- (PXAssetReference)lastViewedAssetReference;
- (UIViewController)presentingViewController;
- (UIViewController)topmostPresentedViewController;
- (double)pinchedTiledTracker:(id)a3 initialAspectRatioForTileWithLayoutInfo:(id)a4;
- (id)_browsingSessionCreateIfNeeded:(BOOL)a3;
- (id)_createBrowsingSession;
- (id)_createOneUpViewControllerWithBrowsingSession:(id)a3 options:(unint64_t)a4 activity:(unint64_t)a5 editActivityCompletion:(id)a6;
- (id)_currentTilingViewControllerTransition;
- (id)_newCollapsedLayout;
- (id)_transitionHostingView;
- (id)pinchedTiledTracker:(id)a3 finalLayoutInfoForTileWithLayoutInfo:(id)a4;
- (id)previewPresentationTransitioningDelegateForPosition:(CGPoint)a3 inSourceView:(id)a4;
- (id)previewViewControllerForItemAtIndexPath:(id)a3 allowingActions:(BOOL)a4;
- (id)tilingView:(id)a3 tileControllerWithIndexPath:(id)a4 kind:(id)a5 dataSource:(id)a6;
- (id)tilingView:(id)a3 tileTransitionCoordinatorForTransitionFromLayout:(id)a4 toLayout:(id)a5 withContext:(id)a6;
- (id)tilingViewControllerTransition:(id)a3 tilingViewToTransferToEndPoint:(id)a4;
- (id)tilingViewControllerTransitionTilingViewHostView:(id)a3;
- (int64_t)_currentNavigationControllerOperation;
- (int64_t)tilingViewControllerTransitionPreferredBarStyle:(id)a3;
- (void)_cleanUpAfterTilingViewTransitionAnimated:(BOOL)a3 transitionAborted:(BOOL)a4;
- (void)_cleanupOneUpViewControllerForDismissalIfNeeded;
- (void)_configureNavigationController:(id)a3;
- (void)_didFinishTransitioningFromOneUp;
- (void)_didFinishTransitioningToOneUp;
- (void)_disappearingTilingView:(id)a3 animationCompleted:(BOOL)a4;
- (void)_ensureRegistrationWithPresentingViewController;
- (void)_handleTap:(id)a3;
- (void)_handleTileControllerAnimationEnd;
- (void)_invalidateAssetReferencesDisplayedInTilingView;
- (void)_navigateToAssetAtIndexPath:(id)a3 inBrowsingSession:(id)a4 isNavigationSourceWidget:(BOOL)a5;
- (void)_presentOneUpViewController:(id)a3 animated:(BOOL)a4 interactiveMode:(int64_t)a5 completion:(id)a6;
- (void)_presentationEndDidTimeOut:(int64_t)a3;
- (void)_setAssetReferencesDisplayedInTilingView:(id)a3;
- (void)_setEndingPresentation:(BOOL)a3;
- (void)_setOneUpViewController:(id)a3;
- (void)_setShouldPauseLibraryChanges:(BOOL)a3;
- (void)_setState:(int64_t)a3;
- (void)_setTilingView:(id)a3;
- (void)_setTransitioningTilingView:(id)a3;
- (void)_throwOnSetStateFromIdleToTransitioningToOneUp:(int64_t)a3;
- (void)_throwOnSetStateFromTransitionedToOneUpToPreparingTransitionToOneUp:(int64_t)a3;
- (void)_updateAssetReferencesDisplayedInTilingView;
- (void)_updateLayout;
- (void)_updateLayout:(id)a3;
- (void)_updatePresentationInfoIfNeeded;
- (void)_updateTapGestureRecognizer;
- (void)commitPreviewViewController:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)didDismissPreviewViewController:(id)a3 committing:(BOOL)a4;
- (void)interactiveTileTracker:(id)a3 didStopTrackingTileController:(id)a4;
- (void)interactiveTileTracker:(id)a3 willStartTrackingTileController:(id)a4;
- (void)photosPreviewPresentationController:(id)a3 willPresentPreviewViewController:(id)a4;
- (void)presentOneUpViewControllerAnimated:(BOOL)a3 interactiveMode:(int64_t)a4 activity:(unint64_t)a5 editActivityCompletion:(id)a6;
- (void)presentOneUpViewControllerFromAssetAtIndexPath:(id)a3 animated:(BOOL)a4 interactiveMode:(int64_t)a5 activity:(unint64_t)a6 isNavigationSourceWidget:(BOOL)a7 editActivityCompletion:(id)a8;
- (void)presentingViewControllerViewDidDisappear:(BOOL)a3;
- (void)presentingViewControllerViewWillAppear:(BOOL)a3;
- (void)presentingViewControllerViewWillDisappear:(BOOL)a3;
- (void)setAssetDisplayDelegate:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setPhotosDataSource:(id)a3;
- (void)tilingView:(id)a3 didStopUsingTileController:(id)a4;
- (void)tilingViewControllerTransition:(id)a3 abandonTilingView:(id)a4 toEndPoint:(id)a5;
- (void)tilingViewControllerTransition:(id)a3 adoptTilingView:(id)a4 fromEndPoint:(id)a5 isCancelingTransition:(BOOL)a6 animationSetupCompletionHandler:(id)a7;
- (void)tilingViewDidEndAnimatingTileControllers:(id)a3;
@end

@implementation PUOneUpPresentationHelper

- (void)_updatePresentationInfoIfNeeded
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_needsUpdateFlags.presentationInfo)
  {
    return;
  }

  self->_needsUpdateFlags.presentationInfo = 0;
  v3 = [(PUOneUpPresentationHelper *)self delegate];
  v4 = [v3 oneUpPresentationHelperViewController:self];
  v5 = [v4 navigationController];
  if (!v5)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = PLOneUpGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEFAULT, "1-up presentation currently requires the containing navigation controller (%@) to be a PUNavigationController subclass (in order to support custom navigation transitions). Falling back to modal presentation of 1-up from %@ to fail gracefully, but animations or presence of tabs might not work as expected. See <rdar://problem/41422833>.", &v12, 0x16u);
    }

LABEL_8:
    v6 = 2;
    goto LABEL_9;
  }

  v6 = 1;
LABEL_9:
  v8 = [v4 px_splitViewController];

  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = v6;
  }

  if (self->_delegateFlags.respondsToTransitionTypeWithProposedTransitionType)
  {
    v9 = [v3 oneUpPresentationHelper:self transitionTypeWithProposedTransitionType:v9];
  }

  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [PUTilingViewTransitionHelper unregisterTransitionEndPoint:self forViewController:WeakRetained];

  v11 = objc_storeWeak(&self->_presentingViewController, v4);
  [PUTilingViewTransitionHelper registerTransitionEndPoint:self forViewController:v4];

  self->_transitionType = v9;
}

- (PUOneUpPresentationHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateLayout
{
  v3 = [(PUOneUpPresentationHelper *)self _tilingView];
  v4 = [v3 layout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUOneUpPresentationHelper *)self _updateLayout:v4];
  }
}

- (void)_didFinishTransitioningFromOneUp
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(PUOneUpPresentationHelper *)self _state]== 4)
  {
    [(PUOneUpPresentationHelper *)self _setState:5];
    v3 = [(PUOneUpPresentationHelper *)self _tilingView];
    v4 = [v3 isAnyTileControllerAnimating];

    if ((v4 & 1) == 0)
    {
      [(PUOneUpPresentationHelper *)self _handleTileControllerAnimationEnd];
    }
  }

  else if ([(PUOneUpPresentationHelper *)self _state]== 3 && !self->_isPresentingViewControllerAppearingWithIdleState)
  {
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PUOneUpPresentationHelper *)self presentingViewController];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Presenting view controller did appear without the one-up presentation helper being cleaned up appropriately. Recovering from that state, but this should be avoided. (%@)", &v7, 0xCu);
    }

    [(PUOneUpPresentationHelper *)self _cleanupOneUpViewControllerForDismissalIfNeeded];
  }

  self->_isPresentingViewControllerAppearingWithIdleState = 0;
}

- (PUOneUpPresentationHelperTestingDelegate)testingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  return WeakRetained;
}

- (PUTilingView)_disappearingTilingView
{
  WeakRetained = objc_loadWeakRetained(&self->__disappearingTilingView);

  return WeakRetained;
}

- (PUOneUpPresentationHelperAssetDisplayDelegate)assetDisplayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_assetDisplayDelegate);

  return WeakRetained;
}

- (void)tilingViewDidEndAnimatingTileControllers:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpPresentationHelper *)self _tilingView];

  if (v5 == v4)
  {

    [(PUOneUpPresentationHelper *)self _handleTileControllerAnimationEnd];
  }
}

- (void)tilingView:(id)a3 didStopUsingTileController:(id)a4
{
  [(PUOneUpPresentationHelper *)self _invalidateAssetReferencesDisplayedInTilingView:a3];

  [(PUOneUpPresentationHelper *)self _updateAssetReferencesDisplayedInTilingView];
}

- (id)tilingView:(id)a3 tileTransitionCoordinatorForTransitionFromLayout:(id)a4 toLayout:(id)a5 withContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v14 = [v10 fixedCoordinateSystem];
    v15 = objc_alloc_init(PUSingleAssetLayoutTransitionCoordinator);
    [(PUSingleAssetLayoutTransitionCoordinator *)v15 setFixedCoordinateSystem:v14];
  }

  else
  {
    v16 = [(PUOneUpPresentationHelper *)self browsingSession];
    v17 = [v16 viewModel];
    v14 = [v17 currentAssetReference];

    v15 = [PUTileTransitionCoordinator defaultTileTransitionCoordinatorForTransitionFromLayout:v11 toLayout:v12 withTilingView:v10 anchorAssetReference:v14 context:v13];
  }

  return v15;
}

- (id)tilingView:(id)a3 tileControllerWithIndexPath:(id)a4 kind:(id)a5 dataSource:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (![a5 isEqualToString:@"PUTileKindItemContent"])
  {
    goto LABEL_6;
  }

  v30 = a2;
  v14 = [(PUOneUpPresentationHelper *)self browsingSession];
  v15 = [v14 contentTileProvider];

  v16 = [v13 assetReferenceAtIndexPath:v12];
  v17 = [(PUOneUpPresentationHelper *)self browsingSession];
  v18 = [v17 viewModel];
  v19 = [v18 assetViewModelForAssetReference:v16];

  v20 = [v16 asset];
  v21 = [v15 tileControllerForAsset:v20 viewModel:v19 tilingView:v11];

  if (self->_assetDisplayDelegateFlags.respondsToCurrentImageForAssetReference)
  {
    v22 = [(PUOneUpPresentationHelper *)self assetDisplayDelegate];
    v23 = [v22 oneUpPresentationHelper:self currentImageForAssetReference:v16];

    if (v23)
    {
      [v21 setPreloadedImage:v23];
    }
  }

  v24 = [(PUOneUpPresentationHelper *)self presentingViewController];
  v25 = [v24 viewIfLoaded];
  [v25 bounds];
  [v21 setExpectedPresentationSize:{v26, v27}];

  a2 = v30;
  if (!v21)
  {
LABEL_6:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:2124 description:{@"Invalid parameter not satisfying: %@", @"tileController != nil"}];

    v21 = 0;
  }

  return v21;
}

- (int64_t)tilingViewControllerTransitionPreferredBarStyle:(id)a3
{
  if (self->_delegateFlags.respondsToPreferredBarStyle)
  {
    v4 = [(PUOneUpPresentationHelper *)self delegate];
    v5 = [v4 oneUpPresentationHelperPreferredBarStyle:self];
  }

  else
  {
    v4 = [(PUOneUpPresentationHelper *)self presentingViewController];
    v5 = [v4 pu_preferredBarStyle];
  }

  v6 = v5;

  return v6;
}

- (void)tilingViewControllerTransition:(id)a3 adoptTilingView:(id)a4 fromEndPoint:(id)a5 isCancelingTransition:(BOOL)a6 animationSetupCompletionHandler:(id)a7
{
  v8 = a6;
  v29 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (!v13)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:2048 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];
  }

  v16 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
  if (v16)
  {
  }

  else if (![(PUOneUpPresentationHelper *)self _state])
  {
    goto LABEL_13;
  }

  v17 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
  v18 = [v14 isEqual:v17];

  if ((v18 & 1) == 0)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
    [v27 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:2054 description:{@"unexpected end point %@ with oneUpViewController %@", v14, v28}];
  }

  if ([(PUOneUpPresentationHelper *)self _state]!= 5)
  {
    if (v8)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    v20 = [(PUOneUpPresentationHelper *)self _presentationOrigin];
    [MEMORY[0x1E69C3338] transitionAnimationDidBegin:v19 fromOrigin:v20 transitionObject:self];
    [(PUOneUpPresentationHelper *)self _setState:4];
  }

LABEL_13:
  v21 = [(PUOneUpPresentationHelper *)self _tilingView];

  if (v21)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [(PUOneUpPresentationHelper *)self _tilingView];
    [v25 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:2064 description:{@"adopting tiling %@ from %@ will override current tiling view %@", v13, v14, v26}];
  }

  [(PUOneUpPresentationHelper *)self _setTilingView:v13];
  [(PUOneUpPresentationHelper *)self _setTransitioningTilingView:v13];
  v22 = [(PUOneUpPresentationHelper *)self _newCollapsedLayout];
  v23 = objc_alloc_init(PUTilingLayoutTransitionContext);
  [(PUTilingLayoutTransitionContext *)v23 setIsViewControllerTransition:1];
  [(PUTilingLayoutTransitionContext *)v23 setCancelingTransition:v8];
  [v13 transitionToLayout:v22 withContext:v23 animationSetupCompletionHandler:v15];
  [v13 layoutIfNeeded];
  [(PUOneUpPresentationHelper *)self _invalidateAssetReferencesDisplayedInTilingView];
  [(PUOneUpPresentationHelper *)self _updateAssetReferencesDisplayedInTilingView];
}

- (BOOL)isReadyToAdoptTilingView:(id)a3 fromEndPoint:(id)a4
{
  v4 = [(PUOneUpPresentationHelper *)self presentingViewController:a3];
  v5 = [v4 viewIfLoaded];
  v6 = [v5 window];
  v7 = v6 != 0;

  return v7;
}

- (void)tilingViewControllerTransition:(id)a3 abandonTilingView:(id)a4 toEndPoint:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(PUOneUpPresentationHelper *)self _tilingView];

  if (v10 != v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [(PUOneUpPresentationHelper *)self _tilingView];
    [v12 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:2035 description:{@"tiling view %@ to abandon to %@ isn't the current tiling view %@", v8, v9, v13}];
  }

  [(PUOneUpPresentationHelper *)self _setTilingView:0];
  v11 = PLOneUpGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "Updating state from tilingViewControllerTransition", buf, 2u);
  }

  [(PUOneUpPresentationHelper *)self _setState:2];
}

- (id)tilingViewControllerTransition:(id)a3 tilingViewToTransferToEndPoint:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
      *buf = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v12;
      _os_log_error_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "unexpected end point %@ with oneUpViewController %@", buf, 0x16u);
    }
  }

  v10 = [(PUOneUpPresentationHelper *)self _tilingView];
  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:2030 description:{@"no tiling view to transfer to %@ (state = %ti)", v6, -[PUOneUpPresentationHelper _state](self, "_state")}];
  }

  return v10;
}

- (id)tilingViewControllerTransitionTilingViewHostView:(id)a3
{
  v4 = a3;
  if (!self->_delegateFlags.respondsToViewHostingTilingView || (-[PUOneUpPresentationHelper delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 oneUpPresentationHelperViewHostingTilingView:self], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = [(PUOneUpPresentationHelper *)self presentingViewController];
    v6 = [v7 view];
  }

  return v6;
}

- (id)pinchedTiledTracker:(id)a3 finalLayoutInfoForTileWithLayoutInfo:(id)a4
{
  v5 = a4;
  v6 = [(PUOneUpPresentationHelper *)self _currentTilingViewControllerTransition];
  if ([v6 hasStarted])
  {
    v7 = [(PUOneUpPresentationHelper *)self _transitioningTilingView];
    v8 = [v7 layout];
    v9 = [v5 indexPath];
    v10 = [v5 tileKind];
    v11 = [v8 layoutInfoForTileWithIndexPath:v9 kind:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)pinchedTiledTracker:(id)a3 initialAspectRatioForTileWithLayoutInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 dataSourceIdentifier];
  v9 = [(PUOneUpPresentationHelper *)self browsingSession];
  v10 = [v9 viewModel];
  v11 = [v10 assetsDataSource];

  v12 = [v11 identifier];
  LOBYTE(v10) = [v12 isEqualToString:v8];

  if (v10)
  {
    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v13 = [v6 tilingView];
  v14 = [v13 layout];
  v11 = [v14 dataSource];

  objc_opt_class();
  v15 = 0.0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v16 = [v11 identifier];
  v17 = [v16 isEqualToString:v8];

  if (!v17)
  {
    goto LABEL_9;
  }

  if (v11)
  {
LABEL_8:
    v18 = [v7 indexPath];
    v19 = [v11 assetAtIndexPath:v18];

    [v19 aspectRatio];
    v15 = v20;

LABEL_9:
  }

  return v15;
}

- (void)interactiveTileTracker:(id)a3 didStopTrackingTileController:(id)a4
{
  if (self->_assetDisplayDelegateFlags.respondsToShouldDisableScroll)
  {
    v6 = [(PUOneUpPresentationHelper *)self assetDisplayDelegate:a3];
    [v6 oneUpPresentationHelper:self shouldDisableScroll:0];
  }
}

- (void)interactiveTileTracker:(id)a3 willStartTrackingTileController:(id)a4
{
  if (self->_assetDisplayDelegateFlags.respondsToShouldDisableScroll)
  {
    v6 = [(PUOneUpPresentationHelper *)self assetDisplayDelegate:a3];
    [v6 oneUpPresentationHelper:self shouldDisableScroll:1];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v6 = [(PUOneUpPresentationHelper *)self _tapGestureRecognizer];

  if (v6 == v5)
  {
    *(v13 + 24) = 0;
    v7 = [(PUOneUpPresentationHelper *)self _tilingView];
    if (!v7)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1947 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];
    }

    [v5 locationInView:v7];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PUOneUpPresentationHelper_gestureRecognizerShouldBegin___block_invoke;
    v11[3] = &unk_1E7B79FF8;
    v11[4] = &v12;
    [v7 enumeratePresentedTileControllersInRect:v11 usingBlock:?];
  }

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __58__PUOneUpPresentationHelper_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 tileKind];
  v7 = [v6 isEqualToString:@"PUTileKindItemContent"];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)photosPreviewPresentationController:(id)a3 willPresentPreviewViewController:(id)a4
{
  v8 = a4;
  v5 = [(PUOneUpPresentationHelper *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PUOneUpPresentationHelper *)self delegate];
    [v7 oneUpPresentationHelper:self willPresentOneUpPreviewViewController:v8];
  }
}

- (BOOL)_shouldAutoplayOnNavigation
{
  if (!self->_delegateFlags.respondsToShouldAutoPlay)
  {
    return 0;
  }

  v2 = self;
  v3 = [(PUOneUpPresentationHelper *)self delegate];
  LOBYTE(v2) = [v3 oneUpPresentationHelperShouldAutoPlay:v2];

  return v2;
}

- (BOOL)_enableSpatialPresentation:(id)a3
{
  v3 = a3;
  if (v3 && [MEMORY[0x1E69C1598] hasSpatial3DWidgetResourceForAsset:v3])
  {
    v4 = [MEMORY[0x1E696AE30] processInfo];
    if ([v4 isLowPowerModeEnabled])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E69C4448] px_accessibilityIsReduceMotionEnabled] ^ 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_navigateToAssetAtIndexPath:(id)a3 inBrowsingSession:(id)a4 isNavigationSourceWidget:(BOOL)a5
{
  v8 = a3;
  v9 = [a4 viewModel];
  v10 = [v9 assetsDataSource];
  v11 = [v10 assetReferenceAtIndexPath:v8];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__PUOneUpPresentationHelper__navigateToAssetAtIndexPath_inBrowsingSession_isNavigationSourceWidget___block_invoke;
  v14[3] = &unk_1E7B7DCD8;
  v15 = v9;
  v16 = v11;
  v17 = self;
  v18 = a5;
  v12 = v11;
  v13 = v9;
  [v13 performChanges:v14];
}

void __100__PUOneUpPresentationHelper__navigateToAssetAtIndexPath_inBrowsingSession_isNavigationSourceWidget___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentAssetReference:*(a1 + 40)];
  v2 = [*(a1 + 32) assetViewModelForAssetReference:*(a1 + 40)];
  if ([*(a1 + 48) _shouldAutoplayOnNavigation])
  {
    v3 = [v2 videoPlayer];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __100__PUOneUpPresentationHelper__navigateToAssetAtIndexPath_inBrowsingSession_isNavigationSourceWidget___block_invoke_2;
    v11[3] = &unk_1E7B80DD0;
    v12 = v3;
    v4 = v3;
    [v4 performChanges:v11];
  }

  v5 = [*(a1 + 40) asset];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = PXSharedUserDefaults();
  v8 = [v7 BOOLForKey:@"PUSpatialPresentationFirstTimeEnabledKey"];
  if (*(a1 + 56) == 1)
  {
    v9 = v8;
    if ([*(a1 + 48) _enableSpatialPresentation:v6])
    {
      if ((v9 & 1) == 0)
      {
        [v7 setBool:1 forKey:@"PUSpatialPresentationFirstTimeEnabledKey"];
        [MEMORY[0x1E69C3740] forceAnimation];
      }

      [MEMORY[0x1E69C3740] enable];
      v10 = objc_alloc_init(MEMORY[0x1E69C15A0]);
      [v10 sendToggleEventEnabled:1 asset:v6 isNavigationSourceWidget:1];
    }
  }
}

- (id)previewPresentationTransitioningDelegateForPosition:(CGPoint)a3 inSourceView:(id)a4
{
  v5 = objc_alloc_init(PUPhotosPreviewTransitionDelegate);
  [(PUPhotosPreviewTransitionDelegate *)v5 setPhotosPreviewingDelegate:self];

  return v5;
}

- (void)commitPreviewViewController:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(PUOneUpPresentationHelper *)self canPresentOneUpViewControllerAnimated:0])
  {
    v8 = v6;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;

      if (v9)
      {
        [(PUOneUpPresentationHelper *)self _setIsPerformingNonAnimatedPush:1];
        v10 = MEMORY[0x1E69DD258];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __68__PUOneUpPresentationHelper_commitPreviewViewController_completion___block_invoke;
        v12[3] = &unk_1E7B80CB0;
        v12[4] = self;
        v11 = v9;
        v13 = v11;
        v14 = v7;
        [v10 _performWithoutDeferringTransitions:v12];

        goto LABEL_10;
      }
    }

    else
    {
    }

    v11 = 0;
    goto LABEL_10;
  }

  v11 = PXAssertGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v16 = "[PUOneUpPresentationHelper commitPreviewViewController:completion:]";
    _os_log_error_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_ERROR, "%s attempt to commit previewViewController failed", buf, 0xCu);
  }

LABEL_10:
}

void __68__PUOneUpPresentationHelper_commitPreviewViewController_completion___block_invoke(id *a1)
{
  v2 = PLOneUpGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "Updating state from commitPreviewViewController", buf, 2u);
  }

  [a1[4] _setState:1];
  [a1[5] setAppearanceTransitionAnimationsDisabled:1];
  v3 = [a1[5] browsingSession];
  v4 = [v3 viewModel];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PUOneUpPresentationHelper_commitPreviewViewController_completion___block_invoke_442;
  v10[3] = &unk_1E7B80DD0;
  v11 = v3;
  v5 = v3;
  [v4 performChanges:v10];

  v6 = a1[4];
  v7 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PUOneUpPresentationHelper_commitPreviewViewController_completion___block_invoke_2;
  v8[3] = &unk_1E7B80B48;
  v8[4] = v6;
  v9 = a1[6];
  [v6 _presentOneUpViewController:v7 animated:0 interactiveMode:0 completion:v8];
}

void __68__PUOneUpPresentationHelper_commitPreviewViewController_completion___block_invoke_442(uint64_t a1)
{
  v1 = [*(a1 + 32) viewModel];
  [v1 setIsPresentedForPreview:0];
}

uint64_t __68__PUOneUpPresentationHelper_commitPreviewViewController_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setIsPerformingNonAnimatedPush:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)didDismissPreviewViewController:(id)a3 committing:(BOOL)a4
{
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    if ([(PUOneUpPresentationHelper *)self _state]== 2)
    {
      [(PUOneUpPresentationHelper *)self _didFinishTransitioningToOneUp];
    }

    goto LABEL_9;
  }

  v9 = v7;
  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1794 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"viewController", v15}];
LABEL_12:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    v17 = [v9 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1794 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"viewController", v15, v17}];

    goto LABEL_12;
  }

LABEL_6:
  v10 = [v9 browsingSession];
  v11 = [v10 viewModel];
  v12 = [v11 videoPlayer];

  if ([v12 isPlaybackDesired])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__PUOneUpPresentationHelper_didDismissPreviewViewController_committing___block_invoke;
    v18[3] = &unk_1E7B80DD0;
    v19 = v12;
    [v19 performChanges:v18];
  }

LABEL_9:
}

- (id)previewViewControllerForItemAtIndexPath:(id)a3 allowingActions:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v6 = a3;
    v7 = [(PUOneUpPresentationHelper *)self _createBrowsingSession];
    [(PUOneUpPresentationHelper *)self _navigateToAssetAtIndexPath:v6 inBrowsingSession:v7];

    if (self->_delegateFlags.respondsToAdditionalOptions)
    {
      v8 = [(PUOneUpPresentationHelper *)self delegate];
      v9 = [v8 oneUpPresentationHelperAdditionalOptions:self];
    }

    else
    {
      v9 = 0;
    }

    if (self->_delegateFlags.respondsToShouldLeaveContentOnSecondScreen)
    {
      v11 = [(PUOneUpPresentationHelper *)self delegate];
      v12 = [v11 oneUpPresentationHelperShouldLeaveContentOnSecondScreen:self];

      if (v12)
      {
        v9 |= 4uLL;
      }
    }

    if (self->_delegateFlags.respondsToShouldDisableAutoPlayback)
    {
      v13 = [(PUOneUpPresentationHelper *)self delegate];
      v14 = [v13 oneUpPresentationHelperShouldDisableAutoPlayback:self];

      if (v14)
      {
        v9 |= 0x1000000uLL;
      }
    }

    v10 = [(PUOneUpPresentationHelper *)self _createOneUpViewControllerWithBrowsingSession:v7 options:v9 activity:0 editActivityCompletion:0];
    [v10 setAppearanceTransitionAnimationsDisabled:1];
    v15 = [v7 viewModel];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__PUOneUpPresentationHelper_previewViewControllerForItemAtIndexPath_allowingActions___block_invoke;
    v18[3] = &unk_1E7B80DD0;
    v19 = v7;
    v16 = v7;
    [v15 performChanges:v18];

    [v10 setAllowsPreviewActions:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __85__PUOneUpPresentationHelper_previewViewControllerForItemAtIndexPath_allowingActions___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewModel];
  [v1 setIsPresentedForPreview:1];
}

- (id)_createOneUpViewControllerWithBrowsingSession:(id)a3 options:(unint64_t)a4 activity:(unint64_t)a5 editActivityCompletion:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (self->_delegateFlags.respondsToPreventRevealInMomentAction)
  {
    v12 = [(PUOneUpPresentationHelper *)self delegate];
    v13 = [v12 oneUpPresentationHelperPreventRevealInMomentAction:self];

    if (v13)
    {
      a4 |= 0x10uLL;
    }
  }

  if (self->_delegateFlags.respondsToWantsShowInLibraryButton)
  {
    v14 = [(PUOneUpPresentationHelper *)self delegate];
    v15 = [v14 oneUpPresentationHelperWantsShowInLibraryButton:self];

    if (v15)
    {
      a4 |= 0x8000uLL;
    }
  }

  if (self->_delegateFlags.respondsToPreventHideAssetAction)
  {
    v16 = [(PUOneUpPresentationHelper *)self delegate];
    v17 = [v16 oneUpPresentationHelperPreventHideAssetAction:self];

    if (v17)
    {
      a4 |= 0x200000uLL;
    }
  }

  if (self->_delegateFlags.respondsToPreventPeopleOrnament)
  {
    v18 = [(PUOneUpPresentationHelper *)self delegate];
    v19 = [v18 oneUpPresentationHelperPreventPeopleOrnament:self];

    if (v19)
    {
      a4 |= 0x400000uLL;
    }
  }

  if (self->_delegateFlags.respondsToPreventAlbumAttributionWidget)
  {
    v20 = [(PUOneUpPresentationHelper *)self delegate];
    v21 = [v20 oneUpPresentationHelperPreventAlbumAttributionWidget:self];

    if (v21)
    {
      a4 |= 0x800000uLL;
    }
  }

  v22 = [[PUOneUpViewController alloc] initWithBrowsingSession:v10 options:a4 initialActivity:a5 presentationOrigin:[(PUOneUpPresentationHelper *)self _presentationOrigin]];
  if ([(PUOneUpPresentationHelper *)self xrOSNotificationModeEnabled])
  {
    PXVisionScaledSize();
    [(PUOneUpViewController *)v22 setPreferredContentSizeOverride:?];
  }

  [(PUOneUpViewController *)v22 setEditActivityCompletion:v11];
  v23 = [(PUOneUpPresentationHelper *)self unlockDeviceStatus];
  [(PUOneUpViewController *)v22 setUnlockDeviceStatus:v23];

  v24 = [(PUOneUpPresentationHelper *)self unlockDeviceHandlerWithActionType];
  [(PUOneUpViewController *)v22 setUnlockDeviceHandlerWithActionType:v24];

  if (self->_delegateFlags.respondsToSearchContext)
  {
    v25 = [(PUOneUpPresentationHelper *)self delegate];
    v26 = [v25 oneUpPresentationHelperSearchQueryMatchInfo:self];

    v27 = [v26 ocrTexts];
    [(PUOneUpViewController *)v22 setTextsToHighlight:v27];

    v28 = [v26 ocrAssetUUIDs];
    [(PUOneUpViewController *)v22 setAssetUUIDsAllowedToHighlightText:v28];
  }

  else
  {
    if (!self->_delegateFlags.respondsToTextsToHighlight)
    {
      goto LABEL_23;
    }

    v26 = [(PUOneUpPresentationHelper *)self delegate];
    v28 = [v26 oneUpPresentationHelperTextsToHighlight:self];
    [(PUOneUpViewController *)v22 setTextsToHighlight:v28];
  }

LABEL_23:
  if (self->_delegateFlags.respondsToAssetUUIDsAllowedToHighlightText)
  {
    v29 = [(PUOneUpPresentationHelper *)self delegate];
    v30 = [v29 oneUpPresentationHelperAssetUUIDsAllowedToHighlightText:self];
    [(PUOneUpViewController *)v22 setAssetUUIDsAllowedToHighlightText:v30];
  }

  return v22;
}

- (void)_didFinishTransitioningToOneUp
{
  [(PUOneUpPresentationHelper *)self _setState:3];
  if (self->_delegateFlags.respondsToDidPresentOneUpViewController)
  {
    v3 = [(PUOneUpPresentationHelper *)self delegate];
    v4 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
    [v3 oneUpPresentationHelper:self didPresentOneUpViewController:v4];
  }

  v5 = [(PUOneUpPresentationHelper *)self _presentationOrigin];
  [MEMORY[0x1E69C3338] transitionAnimationDidEnd:1 fromOrigin:v5 transitionObject:self];
  v6 = [(PUOneUpPresentationHelper *)self browsingSession];
  v7 = [v6 viewModel];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PUOneUpPresentationHelper__didFinishTransitioningToOneUp__block_invoke;
  v9[3] = &unk_1E7B80DD0;
  v10 = v7;
  v8 = v7;
  [v8 performChanges:v9];
}

uint64_t __59__PUOneUpPresentationHelper__didFinishTransitioningToOneUp__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVideoContentAllowed:1 forReason:@"OneUpIsPresented"];
  v2 = *(a1 + 32);

  return [v2 stopPreventingLivePhotoContentForReason:@"OneUpIsPresented"];
}

- (void)_disappearingTilingView:(id)a3 animationCompleted:(BOOL)a4
{
  v5 = a3;
  v6 = [(PUOneUpPresentationHelper *)self _disappearingTilingView];

  if (v6 == v5)
  {
    [(PUOneUpPresentationHelper *)self _setDisappearingTilingView:0];

    [(PUOneUpPresentationHelper *)self _setState:0];
  }
}

- (void)_cleanUpAfterTilingViewTransitionAnimated:(BOOL)a3 transitionAborted:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v7 = [(PUOneUpPresentationHelper *)self _presentationOrigin];
  [MEMORY[0x1E69C3338] transitionAnimationDidEnd:2 fromOrigin:v7 transitionObject:self];
  if (v4)
  {
    v8 = 7;
  }

  else
  {
    v8 = 6;
  }

  [(PUOneUpPresentationHelper *)self _setState:v8];
  v9 = [(PUOneUpPresentationHelper *)self _tilingView];
  v34 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
  [(PUOneUpPresentationHelper *)self _setTilingView:0];
  [(PUOneUpPresentationHelper *)self _setTransitioningTilingView:0];
  [(PUOneUpPresentationHelper *)self _setAssetReferencesDisplayedInTilingView:0];
  [(PUOneUpPresentationHelper *)self _setOneUpViewController:0];
  v10 = [v9 layout];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v33 = v11;
  v12 = [v11 assetReference];
  v13 = v12;
  v14 = 0;
  if (self->_delegateFlags.respondsToScrollView && v12)
  {
    v15 = [(PUOneUpPresentationHelper *)self delegate];
    v14 = [v15 oneUpPresentationHelper:self presentingScrollViewForAssetReference:v13];
  }

  v16 = [(PUOneUpPresentationHelper *)self layoutRegionOfInterest];
  v17 = v16;
  if (v14 || ([v16 containingScrollViews], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "firstObject"), v14 = objc_claimAutoreleasedReturnValue(), v18, v14))
  {
    [v14 _removeScrollViewScrollObserver:self];
    [v9 px_transferToSuperview:v14];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v19 = [v17 containingScrollViews];
  v20 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v20)
  {
    v21 = *v42;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v41 + 1) + 8 * i) _removeScrollViewScrollObserver:self];
      }

      v20 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v20);
  }

  [(PUOneUpPresentationHelper *)self _setDisappearingTilingView:v9];
  [v9 setUserInteractionEnabled:0];
  if (v5)
  {
    if (self->_delegateFlags.respondsToDisableFinalFadeoutAnimation)
    {
      v23 = [(PUOneUpPresentationHelper *)self delegate];
      v24 = [v23 oneUpPresentationHelperDisableFinalFadeoutAnimation:self];

      v25 = v24 ^ 1;
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PUOneUpPresentationHelper__cleanUpAfterTilingViewTransitionAnimated_transitionAborted___block_invoke;
  aBlock[3] = &unk_1E7B80DD0;
  v26 = v9;
  v39 = v26;
  v27 = _Block_copy(aBlock);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __89__PUOneUpPresentationHelper__cleanUpAfterTilingViewTransitionAnimated_transitionAborted___block_invoke_2;
  v35[3] = &unk_1E7B79D28;
  v28 = v26;
  v36 = v28;
  objc_copyWeak(&v37, &location);
  v29 = _Block_copy(v35);
  if (v25)
  {
    v30 = MEMORY[0x1E69DD250];
    v31 = +[PUOneUpSettings sharedInstance];
    [v31 finalFadeOutDuration];
    [v30 animateWithDuration:v27 animations:v29 completion:?];
  }

  else
  {
    v27[2](v27);
    v29[2](v29, 1);
  }

  if (self->_delegateFlags.respondsToDidDismissOneUpViewController)
  {
    v32 = [(PUOneUpPresentationHelper *)self delegate];
    [v32 oneUpPresentationHelper:self didDismissOneUpViewController:v34];
  }

  [(PUOneUpPresentationHelper *)self setLayoutRegionOfInterest:0];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

void __89__PUOneUpPresentationHelper__cleanUpAfterTilingViewTransitionAnimated_transitionAborted___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) removeFromSuperview];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _disappearingTilingView:*(a1 + 32) animationCompleted:a2];
}

- (void)_updateAssetReferencesDisplayedInTilingView
{
  if ([(PUOneUpPresentationHelper *)self _needsUpdateAssetReferencesDisplayedInTilingView])
  {
    [(PUOneUpPresentationHelper *)self _setNeedsUpdateAssetReferencesDisplayedInTilingView:0];
    v3 = [(PUOneUpPresentationHelper *)self browsingSession];
    v4 = [v3 viewModel];
    v5 = [v4 assetsDataSource];

    v6 = [v5 identifier];
    v7 = [MEMORY[0x1E695DFA8] setWithCapacity:3];
    v8 = [(PUOneUpPresentationHelper *)self _transitioningTilingView];
    [v8 bounds];
    v21 = CGRectInset(v20, 1.0, 1.0);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__PUOneUpPresentationHelper__updateAssetReferencesDisplayedInTilingView__block_invoke;
    v16[3] = &unk_1E7B79D00;
    v17 = v6;
    v18 = v5;
    v19 = v7;
    v13 = v7;
    v14 = v5;
    v15 = v6;
    [v8 enumeratePresentedTileControllersInRect:v16 usingBlock:{x, y, width, height}];
    [(PUOneUpPresentationHelper *)self _setAssetReferencesDisplayedInTilingView:v13];
  }
}

void __72__PUOneUpPresentationHelper__updateAssetReferencesDisplayedInTilingView__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 tileKind];
  if (![v6 isEqualToString:@"PUTileKindItemContent"])
  {
LABEL_8:

    goto LABEL_9;
  }

  v7 = [v5 dataSourceIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    if (([v13 isActive] & 1) != 0 || (objc_msgSend(v13, "layoutInfo"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "alpha"), v11 = v10, v9, v11 == 1.0))
    {
      v6 = [v5 indexPath];
      v12 = [*(a1 + 40) assetReferenceAtIndexPath:v6];
      if (v12)
      {
        [*(a1 + 48) addObject:v12];
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)_invalidateAssetReferencesDisplayedInTilingView
{
  if (![(PUOneUpPresentationHelper *)self _needsUpdateAssetReferencesDisplayedInTilingView])
  {

    [(PUOneUpPresentationHelper *)self _setNeedsUpdateAssetReferencesDisplayedInTilingView:1];
  }
}

- (void)_handleTap:(id)a3
{
  v5 = a3;
  v6 = [(PUOneUpPresentationHelper *)self _tapGestureRecognizer];

  if (v6 == v5 && [v5 state] == 3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__44889;
    v15 = __Block_byref_object_dispose__44890;
    v16 = 0;
    v7 = [(PUOneUpPresentationHelper *)self _tilingView];
    if (!v7)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1531 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];
    }

    [v5 locationInView:v7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__PUOneUpPresentationHelper__handleTap___block_invoke;
    v10[3] = &unk_1E7B79FF8;
    v10[4] = &v11;
    [v7 enumeratePresentedTileControllersInRect:v10 usingBlock:?];
    v8 = v12[5];
    if (v8)
    {
      [(PUOneUpPresentationHelper *)self presentOneUpViewControllerFromAssetAtIndexPath:v8 animated:1 interactiveMode:0 activity:0 isNavigationSourceWidget:0 editActivityCompletion:0];
    }

    _Block_object_dispose(&v11, 8);
  }
}

void __40__PUOneUpPresentationHelper__handleTap___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v6 = [v11 tileKind];
  v7 = [v6 isEqualToString:@"PUTileKindItemContent"];

  if (v7)
  {
    v8 = [v11 indexPath];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (void)_updateTapGestureRecognizer
{
  if (self->_delegateFlags.respondsToViewHostingGestureRecognizers)
  {
    v3 = [(PUOneUpPresentationHelper *)self delegate];
    v4 = [v3 oneUpPresentationHelperViewHostingGestureRecognizers:self];
  }

  else
  {
    v3 = [(PUOneUpPresentationHelper *)self presentingViewController];
    if (![v3 isViewLoaded])
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_9;
    }

    v4 = [v3 view];
  }

  v5 = v4;

  if (!v5)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v3 = [(PUOneUpPresentationHelper *)self _tilingView];
  v6 = v3 != 0;
LABEL_9:

LABEL_10:
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__44889;
  v21 = __Block_byref_object_dispose__44890;
  v22 = [(PUOneUpPresentationHelper *)self _tapGestureRecognizer];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PUOneUpPresentationHelper__updateTapGestureRecognizer__block_invoke;
  aBlock[3] = &unk_1E7B7FFC0;
  v7 = v5;
  v15 = self;
  v16 = &v17;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (v6)
  {
    v10 = [v18[5] view];

    if (v10)
    {
      v9[2](v9);
    }

    if (!v18[5])
    {
      v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
      v12 = v18[5];
      v18[5] = v11;

      [v18[5] setDelegate:self];
      [v7 addGestureRecognizer:v18[5]];
      [(PUOneUpPresentationHelper *)self _setTapGestureRecognizer:v18[5]];
    }
  }

  else
  {
    v8[2](v8);
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __56__PUOneUpPresentationHelper__updateTapGestureRecognizer__block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeGestureRecognizer:*(*(*(a1 + 48) + 8) + 40)];
  [*(*(*(a1 + 48) + 8) + 40) setDelegate:0];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 40);

  return [v4 _setTapGestureRecognizer:0];
}

- (id)_newCollapsedLayout
{
  v3 = [(PUOneUpPresentationHelper *)self browsingSession];
  v4 = [v3 viewModel];

  v5 = [v4 currentAssetReference];
  v6 = [v4 assetsDataSource];
  v7 = [v6 assetReferenceForAssetReference:v5];
  v8 = [(PUTilingLayout *)[PUSingleAssetLayout alloc] initWithDataSource:v6];
  [(PUSingleAssetLayout *)v8 setAssetReference:v7];
  [(PUOneUpPresentationHelper *)self _updateLayout:v8];

  return v8;
}

- (int64_t)_currentNavigationControllerOperation
{
  v2 = [(PUOneUpPresentationHelper *)self _state];
  if ((v2 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1B3D0D2C8[v2 - 1];
  }
}

- (id)_currentTilingViewControllerTransition
{
  v3 = [(PUOneUpPresentationHelper *)self presentingViewController];
  v4 = [v3 navigationController];
  v5 = [v4 pu_currentInteractiveTransition];

  if (!v5)
  {
    v6 = [(PUOneUpPresentationHelper *)self presentingViewController];
    v7 = [v6 presentedViewController];
    v5 = [v7 pu_modalTransition];

    if (!v5)
    {
      v8 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
      v9 = [v8 navigationController];
      v5 = [v9 pu_modalTransition];
    }
  }

  if (([v5 conformsToProtocol:&unk_1F2C96DD8] & 1) == 0)
  {

    v5 = 0;
  }

  return v5;
}

- (void)_updateLayout:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v61 = [MEMORY[0x1E696AAA8] currentHandler];
    [v61 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1368 description:{@"Invalid parameter not satisfying: %@", @"[layout isKindOfClass:[PUSingleAssetLayout class]]"}];
  }

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v10 = *(MEMORY[0x1E69DDCE0] + 16);
  v73 = *MEMORY[0x1E69DDCE0];
  v74 = v10;
  v70 = 0.0;
  v71 = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  v72 = _Q0;
  v16 = [v5 assetReference];
  if (!v16)
  {
    v20 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0.0;
    v36 = 1.0;
    v37 = 1.0;
    v38 = 0.0;
    v39 = 0.0;
    goto LABEL_19;
  }

  v17 = [(PUOneUpPresentationHelper *)self assetDisplayDelegate];
  if ([(PUOneUpPresentationHelper *)self _state]== 4 && self->_assetDisplayDelegateFlags.respondsToScrollAssetReferenceToVisible)
  {
    [v17 oneUpPresentationHelper:self scrollAssetReferenceToVisible:v16];
  }

  v18 = [(PUOneUpPresentationHelper *)self _transitionHostingView];
  if (!self->_assetDisplayDelegateFlags.respondsToRegionOfInterestForAssetReference)
  {
    if (objc_opt_respondsToSelector())
    {
      [v17 oneUpPresentationHelper:self rectForAssetReference:v16 cropInsets:&v73 contentsRect:&v70];
      x = v40;
      y = v41;
      width = v42;
      height = v43;
    }

    v44 = [(PUOneUpPresentationHelper *)self presentingViewController];
    v45 = [v44 view];
    [v18 convertRect:v45 fromCoordinateSpace:{x, y, width, height}];
    v22 = v46;
    v24 = v47;
    v26 = v48;
    v28 = v49;

    v20 = 0;
    goto LABEL_17;
  }

  v19 = [v17 oneUpPresentationHelper:self regionOfInterestForAssetReference:v16 cropInsets:&v73];
  v20 = v19;
  if (v19)
  {
    [v19 rectInCoordinateSpace:v18];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v20 imageContentsRect];
    v70 = v29;
    v71 = v30;
    *&v72 = v31;
    *(&v72 + 1) = v32;
  }

  else
  {
    [v18 bounds];
    PXPointDenormalize();
    PXRectWithCenterAndSize();
    v22 = v50;
    v24 = v51;
    v26 = v52;
    v28 = v53;
  }

  v54 = [v20 imageViewSpec];
  v44 = v54;
  if (!v54)
  {
LABEL_17:
    v33 = 0;
    v34 = 0;
    v39 = 0.0;
    goto LABEL_18;
  }

  [v54 cornerRadius];
  v39 = v55;
  v34 = [v44 cornerCurve];
  v33 = [v44 cornerMask];
LABEL_18:

  memset(&v69, 0, sizeof(v69));
  [(PUOneUpPresentationHelper *)self _tilingViewTransitionTransform];
  [v18 bounds];
  v68 = v69;
  v78 = CGRectApplyAffineTransform(v77, &v68);
  CGAffineTransformMakeTranslation(&t2, -v78.origin.x, -v78.origin.y);
  t1 = v69;
  CGAffineTransformConcat(&v68, &t1, &t2);
  v69 = v68;
  v79.origin.x = v22;
  v79.origin.y = v24;
  v79.size.width = v26;
  v79.size.height = v28;
  v80 = CGRectApplyAffineTransform(v79, &v68);
  x = v80.origin.x;
  y = v80.origin.y;
  width = v80.size.width;
  height = v80.size.height;

  v38 = v70;
  v35 = v71;
  v36 = *(&v72 + 1);
  v37 = *&v72;
LABEL_19:
  [v5 setContentsRect:{v38, v35, v37, v36}];
  [v5 setAssetRect:{x, y, width, height}];
  [v5 setCropInsets:{v73, v74}];
  [v5 setCornerRadius:v39];
  [v5 setCornerCurve:v34];
  [v5 setCornerMask:v33];
  [(PUOneUpPresentationHelper *)self setLayoutRegionOfInterest:v20];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v56 = [v20 containingScrollViews];
  v57 = [v56 countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v63;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v63 != v59)
        {
          objc_enumerationMutation(v56);
        }

        [*(*(&v62 + 1) + 8 * i) _addScrollViewScrollObserver:self];
      }

      v58 = [v56 countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v58);
  }
}

- (void)_setAssetReferencesDisplayedInTilingView:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->__assetReferencesDisplayedInTilingView != v5)
  {
    v8 = v5;
    v5 = [(NSSet *)v5 isEqualToSet:?];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->__assetReferencesDisplayedInTilingView, a3);
      v6 = v8;
      if (self->_assetDisplayDelegateFlags.respondsToShouldHideAssetReferences)
      {
        v7 = [(PUOneUpPresentationHelper *)self assetDisplayDelegate];
        [v7 oneUpPresentationHelper:self shouldHideAssetReferences:v8];

        v6 = v8;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_setTransitioningTilingView:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  transitioningTilingView = self->__transitioningTilingView;
  if (transitioningTilingView != v5)
  {
    if (transitioningTilingView)
    {
      v7 = [(PUTilingView *)transitioningTilingView tileUseDelegate];

      if (v7 != self)
      {
        v8 = PXAssertGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = [(PUTilingView *)self->__transitioningTilingView tileUseDelegate];
          v10 = 138412546;
          v11 = self;
          v12 = 2112;
          v13 = v9;
          _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "currently, only PUOneUpPresentationHelper is expecting to be a tileUseDelegate. self: %@, tilingView's tileUseDelegate: %@", &v10, 0x16u);
        }
      }
    }

    [(PUTilingView *)self->__transitioningTilingView setTileUseDelegate:0];
    objc_storeStrong(&self->__transitioningTilingView, a3);
    [(PUTilingView *)self->__transitioningTilingView setTileUseDelegate:self];
    [(PUOneUpPresentationHelper *)self _updateAssetReferencesDisplayedInTilingView];
  }
}

- (void)_setOneUpViewController:(id)a3
{
  v5 = a3;
  p_oneUpViewController = &self->__oneUpViewController;
  if (self->__oneUpViewController != v5)
  {
    v8 = v5;
    objc_storeStrong(p_oneUpViewController, a3);
    v7 = [(PUOneUpViewController *)v8 browsingSession];
    [(PUOneUpPresentationHelper *)self _setBrowsingSession:v7];

    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](p_oneUpViewController, v5);
}

- (void)_setTilingView:(id)a3
{
  v5 = a3;
  tilingView = self->__tilingView;
  if (tilingView != v5)
  {
    v7 = v5;
    [(PUTilingView *)tilingView setUserInteractionEnabled:1];
    [(PUTilingView *)self->__tilingView setTileSource:0];
    [(PUTilingView *)self->__tilingView setTileTransitionDelegate:0];
    objc_storeStrong(&self->__tilingView, a3);
    [(PUTilingView *)self->__tilingView setUserInteractionEnabled:0];
    [(PUTilingView *)self->__tilingView setTileSource:self];
    [(PUTilingView *)self->__tilingView setTileTransitionDelegate:self];
    tilingView = [(PUOneUpPresentationHelper *)self _updateTapGestureRecognizer];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](tilingView, v5);
}

- (void)_ensureRegistrationWithPresentingViewController
{
  v3 = [(PUOneUpPresentationHelper *)self presentingViewController];
  v5 = v3;
  if (v3)
  {
    [PUTilingViewTransitionHelper registerTransitionEndPoint:self forViewController:v3];
    v3 = v5;
  }

  v4 = [v3 splitViewController];
  if (v4)
  {
    [PUTilingViewTransitionHelper registerTransitionEndPoint:self forViewController:v4];
  }
}

- (id)_transitionHostingView
{
  v3 = [(PUOneUpPresentationHelper *)self presentingViewController];
  if ([(PUOneUpPresentationHelper *)self transitionType]== 2)
  {
LABEL_2:
    v4 = [v3 viewIfLoaded];
    v5 = [v4 window];

    while (1)
    {
      if ([v3 px_oneUpPresentationStyle] == 1)
      {
        if (v5)
        {
          goto LABEL_15;
        }

        v6 = PXAssertGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          *v10 = 0;
          _os_log_fault_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_FAULT, "no window found to present 1-up full screen", v10, 2u);
        }
      }

      v7 = [v3 parentViewController];
      if (!v7)
      {
        if ([v3 modalPresentationStyle] != 3)
        {
          break;
        }

        v7 = [v3 presentingViewController];
        if (!v7)
        {
          break;
        }
      }

      v8 = v7;

      v3 = v8;
      if (!v5)
      {
        goto LABEL_2;
      }
    }
  }

  v5 = [v3 view];
LABEL_15:

  return v5;
}

- (void)_presentationEndDidTimeOut:(int64_t)a3
{
  if ([(PUOneUpPresentationHelper *)self _presentationEndTimeoutIdentifier]== a3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"One-up presentation took too long to end, this shouldn't happen. (state = %li)", -[PUOneUpPresentationHelper _state](self, "_state")];
    PLSimulateCrash();

    [(PUOneUpPresentationHelper *)self _cleanupOneUpViewControllerForDismissalIfNeeded];
  }
}

- (void)_setShouldPauseLibraryChanges:(BOOL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->__shouldPauseLibraryChanges != a3)
  {
    v3 = a3;
    self->__shouldPauseLibraryChanges = a3;
    v5 = [(PUOneUpPresentationHelper *)self libraryChangePauseToken];

    if (v5)
    {
      v6 = [(PUOneUpPresentationHelper *)self pausedPhotoLibrary];
      v7 = [(PUOneUpPresentationHelper *)self libraryChangePauseToken];
      [v6 px_endPausingChanges:v7];

      [(PUOneUpPresentationHelper *)self setPausedPhotoLibrary:0];
      [(PUOneUpPresentationHelper *)self setLibraryChangePauseToken:0];
    }

    if (v3)
    {
      v8 = [(PUOneUpPresentationHelper *)self browsingSession];
      v9 = [v8 viewModel];
      v10 = [v9 currentAssetReference];
      v11 = [v10 asset];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v13 photoLibrary];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 px_beginPausingChangesWithTimeout:@"PUOneUpPresentationHelper" identifier:30.0];
        [(PUOneUpPresentationHelper *)self setLibraryChangePauseToken:v16];

        [(PUOneUpPresentationHelper *)self setPausedPhotoLibrary:v15];
      }

      else
      {
        v17 = PLUIGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = v11;
          _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "_setShouldPauseLibraryChanges:YES called, but no PhotoLibrary available for displayAsset: %@", &v18, 0xCu);
        }
      }
    }
  }
}

- (void)_setEndingPresentation:(BOOL)a3
{
  if (self->__isEndingPresentation != a3)
  {
    v11[5] = v3;
    v11[6] = v4;
    v5 = a3;
    self->__isEndingPresentation = a3;
    v7 = ([(PUOneUpPresentationHelper *)self _presentationEndTimeoutIdentifier]+ 1);
    [(PUOneUpPresentationHelper *)self _setPresentationEndTimeoutIdentifier:v7];
    if (v5)
    {
      objc_initWeak(v11, self);
      v8 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__PUOneUpPresentationHelper__setEndingPresentation___block_invoke;
      block[3] = &unk_1E7B804A8;
      objc_copyWeak(v10, v11);
      v10[1] = v7;
      dispatch_after(v8, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(v10);
      objc_destroyWeak(v11);
    }
  }
}

void __52__PUOneUpPresentationHelper__setEndingPresentation___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PUOneUpPresentationHelper__setEndingPresentation___block_invoke_2;
  v3[3] = &unk_1E7B804A8;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __52__PUOneUpPresentationHelper__setEndingPresentation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentationEndDidTimeOut:*(a1 + 40)];
}

- (void)_handleTileControllerAnimationEnd
{
  if ([(PUOneUpPresentationHelper *)self _state]== 5)
  {

    [(PUOneUpPresentationHelper *)self _cleanUpAfterTilingViewTransitionAnimated:1 transitionAborted:0];
  }
}

- (void)_throwOnSetStateFromIdleToTransitioningToOneUp:(int64_t)a3
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->__state];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v8 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1185 description:{@"invalid one-up presentation helper state transition: %@ -> %@", v6, v7}];
}

- (void)_throwOnSetStateFromTransitionedToOneUpToPreparingTransitionToOneUp:(int64_t)a3
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->__state];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v8 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1181 description:{@"invalid one-up presentation helper state transition: %@ -> %@", v6, v7}];
}

- (void)_setState:(int64_t)a3
{
  v35 = *MEMORY[0x1E69E9840];
  state = self->__state;
  if (state == a3)
  {
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&dword_1B36F3000, &v5->super, OS_LOG_TYPE_DEFAULT, "Attempting to set state with same value: %@", buf, 0xCu);
    }

    goto LABEL_59;
  }

  switch(a3)
  {
    case 1:
      v9 = PLOneUpGetLog();
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        v10 = v9;
        v11 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_11:
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, v11, 0xEEEEB0B5B2B2EEEELL, "presenting", "", buf, 2u);
        goto LABEL_12;
      }

      goto LABEL_12;
    case 7:
      goto LABEL_42;
    case 3:
      v9 = PLOneUpGetLog();
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        v10 = v9;
        v11 = OS_SIGNPOST_INTERVAL_END;
        goto LABEL_11;
      }

LABEL_12:

      state = self->__state;
      break;
  }

  if (state <= 3)
  {
    if (state > 1)
    {
      if (state != 2)
      {
        if (a3 == 4)
        {
          goto LABEL_42;
        }

        if (a3 == 1)
        {
          [(PUOneUpPresentationHelper *)self _throwOnSetStateFromTransitionedToOneUpToPreparingTransitionToOneUp:1];
        }

        goto LABEL_41;
      }

      if ((a3 - 3) < 2)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (state)
    {
      if (state == 1 && (a3 & 0xFFFFFFFFFFFFFFFBLL) == 2)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (a3 == 1)
    {
      goto LABEL_42;
    }

LABEL_41:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->__state];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v12 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1116 description:{@"invalid one-up presentation helper state transition: %@ -> %@", v13, v14}];

    goto LABEL_42;
  }

  if (state > 5)
  {
    if (state == 6)
    {
      if (a3 < 2)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (state == 7)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (state == 4)
  {
    if (a3 != 2 && a3 != 5)
    {
LABEL_37:
      if (!a3 && state == 2)
      {
        [(PUOneUpPresentationHelper *)self _throwOnSetStateFromIdleToTransitioningToOneUp:0];
      }

      goto LABEL_41;
    }
  }

  else if (a3 > 6 || ((1 << a3) & 0x46) == 0)
  {
    goto LABEL_41;
  }

LABEL_42:
  v15 = PLOneUpGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->__state];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    *buf = 138412546;
    v32 = v16;
    v33 = 2112;
    v34 = v17;
    _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "Committing change from old state: %@ to new state: %@", buf, 0x16u);
  }

  v18 = 0;
  self->__state = a3;
  if (a3 <= 4 && ((1 << a3) & 0x16) != 0)
  {
    v18 = [(PUOneUpPresentationHelper *)self _isPerformingNonAnimatedPush]^ 1;
  }

  [(PUOneUpPresentationHelper *)self _setShouldPauseLibraryChanges:v18];
  v5 = self->_browsingSession;
  v19 = [(PUBrowsingSession *)v5 viewModel];
  if (![(PUOneUpPresentationHelper *)self isOneUpPresented])
  {
    v21 = [(PUOneUpPresentationHelper *)self _state];
    v22 = !self->_delegateFlags.respondsToShouldAllowVideoContentDuringTransitions && v21 == 5;
    if (!self->_delegateFlags.respondsToShouldAllowVideoContentDuringTransitions || v21 != 5)
    {
LABEL_53:
      v24 = PFIsCamera();
      v20 = v24 ^ 1 | v22;
      if ((v24 & 1) == 0 && (v22 & 1) == 0)
      {
        v20 = [(PUOneUpPresentationHelper *)self _state]== 6;
      }

      goto LABEL_56;
    }

LABEL_52:
    v23 = [(PUOneUpPresentationHelper *)self delegate];
    v22 = [v23 oneUpPresentationHelperShouldAllowVideoContentDuringTransitions:self];

    goto LABEL_53;
  }

  if (self->_delegateFlags.respondsToShouldAllowVideoContentDuringTransitions)
  {
    goto LABEL_52;
  }

  PFIsCamera();
  v20 = 1;
LABEL_56:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __39__PUOneUpPresentationHelper__setState___block_invoke;
  v27[3] = &unk_1E7B7DF20;
  v25 = v19;
  v28 = v25;
  v29 = v20 & 1;
  v30 = v18;
  [v25 performChanges:v27];
  [(PUOneUpPresentationHelper *)self _setEndingPresentation:(self->__state - 5) < 3];
  if (self->_delegateFlags.respondsToStateDidChange)
  {
    v26 = [(PUOneUpPresentationHelper *)self delegate];
    [v26 oneUpPresentationHelperStateDidChange:self];
  }

LABEL_59:
}

uint64_t __39__PUOneUpPresentationHelper__setState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVideoContentAllowed:*(a1 + 40) forReason:@"OneUpIsPresented"];
  [*(a1 + 32) startPreventingLivePhotoContentForReason:@"OneUpIsPresented"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 41);

  return [v2 setAnimating:v3 transitionWithIdentifier:@"OneUp"];
}

- (BOOL)_handleInteractivePresentationWithBlock:(id)a3
{
  v5 = a3;
  v6 = [(PUOneUpPresentationHelper *)self _currentTilingViewControllerTransition];
  v7 = v6;
  if (v6 && [v6 isTransitionPaused])
  {
    v8 = [(PUOneUpPresentationHelper *)self _transitioningTilingView];
    if (!v8)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1032 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__PUOneUpPresentationHelper__handleInteractivePresentationWithBlock___block_invoke;
    aBlock[3] = &unk_1E7B7F9B0;
    v9 = v7;
    v17 = v9;
    v10 = _Block_copy(aBlock);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__PUOneUpPresentationHelper__handleInteractivePresentationWithBlock___block_invoke_2;
    v14[3] = &unk_1E7B80088;
    v14[4] = self;
    v15 = v9;
    v11 = _Block_copy(v14);
    v5[2](v5, v8, v10, v11);
  }

  return v7 != 0;
}

uint64_t __69__PUOneUpPresentationHelper__handleInteractivePresentationWithBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0 && [*(a1 + 32) _state] != 1)
  {
    v4 = PLOneUpGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Interactive transition was terminated while in preparing state", v6, 2u);
    }

    [*(a1 + 32) _setState:4];
  }

  return [*(a1 + 40) resumeTransition:a2];
}

- (BOOL)handlePresentingPanGestureRecognizer:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PUOneUpPresentationHelper_handlePresentingPanGestureRecognizer___block_invoke;
  v7[3] = &unk_1E7B79CD8;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  LOBYTE(self) = [(PUOneUpPresentationHelper *)self _handleInteractivePresentationWithBlock:v7];

  return self;
}

void __66__PUOneUpPresentationHelper_handlePresentingPanGestureRecognizer___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) _panDirectionValueFilter];
  if (!v9)
  {
    v9 = objc_alloc_init(PUChangeDirectionValueFilter);
    [(PUChangeDirectionValueFilter *)v9 setMinimumChangeValue:15.0];
    [*(a1 + 32) _setPanDirectionValueFilter:v9];
  }

  [*(a1 + 40) translationInView:v15];
  [(PUValueFilter *)v9 setInputValue:-v10];
  [(PUValueFilter *)v9 outputValue];
  v12 = v11;
  v13 = [*(a1 + 40) state];
  if ((v13 - 3) >= 3)
  {
    if (v13 == 2)
    {
      v14.n128_u64[0] = 0;
      if (v12 >= 0.0)
      {
        v14.n128_f64[0] = 1.0;
      }

      v7[2](v7, v14);
    }
  }

  else
  {
    v8[2](v8, v12 >= 0.0);
    [*(a1 + 32) _setPanDirectionValueFilter:0];
  }
}

- (BOOL)handlePresentingPinchGestureRecognizer:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PUOneUpPresentationHelper_handlePresentingPinchGestureRecognizer___block_invoke;
  v7[3] = &unk_1E7B79CD8;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  LOBYTE(self) = [(PUOneUpPresentationHelper *)self _handleInteractivePresentationWithBlock:v7];

  return self;
}

void __68__PUOneUpPresentationHelper_handlePresentingPinchGestureRecognizer___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) _pinchedTileTracker];
  if (!v9)
  {
    v9 = [[PUPinchedTileTracker alloc] initWithPinchGestureRecognizer:*(a1 + 40) tilingView:v10 direction:1];
    [(PUPinchedTileTracker *)v9 setDelegate:*(a1 + 32)];
    [*(a1 + 32) _setPinchedTileTracker:v9];
  }

  [(PUInteractiveTileTracker *)v9 update];
  if ([(PUInteractiveTileTracker *)v9 shouldEnd])
  {
    v8[2](v8, [(PUInteractiveTileTracker *)v9 shouldFinish]);
    [*(a1 + 32) _setPinchedTileTracker:0];
  }

  else
  {
    [(PUInteractiveTileTracker *)v9 progress];
    v7[2](v7);
  }
}

- (void)presentingViewControllerViewDidDisappear:(BOOL)a3
{
  [(PUOneUpPresentationHelper *)self _setTransitioningTilingView:0];
  if ([(PUOneUpPresentationHelper *)self _state]== 2)
  {
    [(PUOneUpPresentationHelper *)self _didFinishTransitioningToOneUp];
  }

  self->_isPresentingViewControllerAppearingWithIdleState = 0;
}

- (void)presentingViewControllerViewWillDisappear:(BOOL)a3
{
  if ([(PUOneUpPresentationHelper *)self _isEndingPresentation])
  {
    [(PUOneUpPresentationHelper *)self _cleanupOneUpViewControllerForDismissalIfNeeded];
  }

  self->_isPresentingViewControllerAppearingWithIdleState = 0;
}

- (void)presentingViewControllerViewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUOneUpPresentationHelper *)self _state];
  if (v3)
  {
    v6 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
    v7 = [v6 pu_navigationTransition];
    v8 = [v6 navigationController];
    v9 = [v8 pu_currentNavigationTransition];

    if (v7 != v9)
    {
      [(PUOneUpPresentationHelper *)self _setAssetReferencesDisplayedInTilingView:0];
    }

    if (v5 == 3)
    {
      v10 = [(PUOneUpPresentationHelper *)self _presentationOrigin];
      [MEMORY[0x1E69C3338] transitionPreparationDidBegin:2 fromOrigin:v10 transitionObject:self];
    }
  }

  self->_isPresentingViewControllerAppearingWithIdleState = v5 == 0;
}

- (void)_cleanupOneUpViewControllerForDismissalIfNeeded
{
  v3 = [(PUOneUpPresentationHelper *)self _state];
  if ((v3 - 2) < 3)
  {
    [(PUOneUpPresentationHelper *)self _setState:4];
    [(PUOneUpPresentationHelper *)self _setState:5];
LABEL_8:
    [(PUOneUpPresentationHelper *)self _cleanUpAfterTilingViewTransitionAnimated:0 transitionAborted:0];
    goto LABEL_9;
  }

  if (v3 == 5)
  {
    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v4 = PLOneUpGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to clean up while preparing the transition", buf, 2u);
    }

    objc_initWeak(buf, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PUOneUpPresentationHelper__cleanupOneUpViewControllerForDismissalIfNeeded__block_invoke;
    block[3] = &unk_1E7B80638;
    objc_copyWeak(&v8, buf);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

LABEL_9:
  v5 = [(PUOneUpPresentationHelper *)self _disappearingTilingView];
  v6 = v5;
  if (v5)
  {
    [v5 removeFromSuperview];
    [(PUOneUpPresentationHelper *)self _disappearingTilingView:v6 animationCompleted:1];
  }
}

void __76__PUOneUpPresentationHelper__cleanupOneUpViewControllerForDismissalIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupOneUpViewControllerForDismissalIfNeeded];
}

- (BOOL)dismissOneUpViewControllerForced:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v8 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = [(PUOneUpPresentationHelper *)self _prepareDismissalForced:v5];
  if (v5 || v9)
  {
    if (!v4)
    {
      [(PUOneUpPresentationHelper *)self _cleanupOneUpViewControllerForDismissalIfNeeded];
    }

    v11 = [(PUOneUpPresentationHelper *)self presentingViewController];
    v12 = [v11 navigationController];
    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = [v11 px_splitViewController];

    if (v14)
    {
      v15 = 2;
    }

    else
    {
      v15 = v13;
    }

    if (self->_delegateFlags.respondsToTransitionTypeWithProposedTransitionType)
    {
      v16 = [(PUOneUpPresentationHelper *)self delegate];
      v15 = [v16 oneUpPresentationHelper:self transitionTypeWithProposedTransitionType:v15];
    }

    if (v15 == 2)
    {
      [v11 pu_dismissViewControllerAnimated:v4 interactive:0 completion:0];
      goto LABEL_27;
    }

    if (v15 == 1)
    {
      if (!v12)
      {
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:848 description:{@"Invalid parameter not satisfying: %@", @"navigationController != nil"}];
      }

      v18 = [v12 topViewController];

      if (v18 == v8)
      {
        [v12 pu_popViewControllerAnimated:v4 interactive:0];
        goto LABEL_27;
      }

      v17 = PLUIGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v12 childViewControllers];
        *buf = 138412546;
        v23 = v8;
        v24 = 2112;
        v25 = v19;
        _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "attempting to pop oneUpViewController:%@ that isn't part of the navigation controller's children:%@", buf, 0x16u);
      }
    }

    else
    {
      if (v15)
      {
LABEL_27:

LABEL_28:
        v10 = 1;
        goto LABEL_29;
      }

      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:844 description:@"undefined transition type"];
    }

    goto LABEL_27;
  }

  v10 = 0;
LABEL_29:

  return v10;
}

- (BOOL)_prepareDismissalForced:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
  v5 = v4;
  if (v4)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__PUOneUpPresentationHelper__prepareDismissalForced___block_invoke;
    v11[3] = &__block_descriptor_33_e26_B16__0__UIViewController_8l;
    v12 = v3;
    v6 = [v4 pl_visitControllerHierarchyWithBlock:v11];
    if ([v5 conformsToProtocol:&unk_1F2C4EA78])
    {
      v7 = [v5 overOneUpPresentationSessionCreateIfNeeded:0];
      v8 = v7;
      v9 = (v7 == 0) & v6;
      if (v7 && ((v6 ^ 1) & 1) == 0)
      {
        v9 = [v7 prepareForDismissingForced:v3];
      }

      LOBYTE(v6) = v9;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

uint64_t __53__PUOneUpPresentationHelper__prepareDismissalForced___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_1F2BCA758])
  {
    v4 = [v3 prepareForDismissingForced:*(a1 + 32)];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)presentOneUpViewControllerFromAssetAtIndexPath:(id)a3 animated:(BOOL)a4 interactiveMode:(int64_t)a5 activity:(unint64_t)a6 isNavigationSourceWidget:(BOOL)a7 editActivityCompletion:(id)a8
{
  v9 = a7;
  v12 = a4;
  v14 = a3;
  v15 = a8;
  v16 = [(PUOneUpPresentationHelper *)self browsingSession];
  v17 = [v16 viewModel];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __158__PUOneUpPresentationHelper_presentOneUpViewControllerFromAssetAtIndexPath_animated_interactiveMode_activity_isNavigationSourceWidget_editActivityCompletion___block_invoke;
  v19[3] = &unk_1E7B80DD0;
  v20 = v17;
  v18 = v17;
  [v18 performChanges:v19];
  if (v14)
  {
    [(PUOneUpPresentationHelper *)self _navigateToAssetAtIndexPath:v14 inBrowsingSession:v16 isNavigationSourceWidget:v9];
  }

  [(PUOneUpPresentationHelper *)self presentOneUpViewControllerAnimated:v12 interactiveMode:a5 activity:a6 editActivityCompletion:v15];
}

- (void)presentOneUpViewControllerAnimated:(BOOL)a3 interactiveMode:(int64_t)a4 activity:(unint64_t)a5 editActivityCompletion:(id)a6
{
  v8 = a3;
  v10 = a6;
  if ([(PUOneUpPresentationHelper *)self canPresentOneUpViewControllerAnimated:v8])
  {
    v11 = [(PUOneUpPresentationHelper *)self delegate];
    v12 = [v11 oneUpPresentationOrigin:self];

    [(PUOneUpPresentationHelper *)self set_presentationOrigin:v12];
    [MEMORY[0x1E69C3338] transitionPreparationDidBegin:1 fromOrigin:v12 transitionObject:self];
    v13 = *MEMORY[0x1E69DDA98];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __112__PUOneUpPresentationHelper_presentOneUpViewControllerAnimated_interactiveMode_activity_editActivityCompletion___block_invoke;
    v66[3] = &unk_1E7B7FF70;
    v66[4] = self;
    v66[5] = v12;
    [v13 installCACommitCompletionBlock:v66];
    v14 = [(PUOneUpPresentationHelper *)self _disappearingTilingView];

    if (v14)
    {
      v15 = [(PUOneUpPresentationHelper *)self _disappearingTilingView];
      [v15 removeFromSuperview];

      [(PUOneUpPresentationHelper *)self _setDisappearingTilingView:0];
    }

    v55 = a5;
    v56 = a4;
    v16 = PLOneUpGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Updating state from presentOneUpViewControllerAnimated", &buf, 2u);
    }

    [(PUOneUpPresentationHelper *)self _setState:1];
    v17 = [(PUOneUpPresentationHelper *)self browsingSession];
    v18 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
    v19 = [(PUOneUpPresentationHelper *)self presentingViewController];
    [(PUOneUpPresentationHelper *)self _ensureRegistrationWithPresentingViewController];
    v20 = [v17 viewModel];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __112__PUOneUpPresentationHelper_presentOneUpViewControllerAnimated_interactiveMode_activity_editActivityCompletion___block_invoke_322;
    v63[3] = &unk_1E7B80C38;
    v21 = v20;
    v64 = v21;
    v22 = v17;
    v65 = v22;
    [v21 performChanges:v63];
    v23 = [(PUOneUpPresentationHelper *)self _tilingView];
    if (self->_delegateFlags.respondsToAdditionalOptions)
    {
      v24 = [(PUOneUpPresentationHelper *)self delegate];
      v25 = [v24 oneUpPresentationHelperAdditionalOptions:self];
    }

    else
    {
      v25 = 0;
    }

    if (self->_delegateFlags.respondsToShouldLeaveContentOnSecondScreen)
    {
      v26 = [(PUOneUpPresentationHelper *)self delegate];
      v52 = v21;
      v27 = v22;
      v28 = v10;
      v29 = v19;
      v30 = [v26 oneUpPresentationHelperShouldLeaveContentOnSecondScreen:self];

      v31 = v30 == 0;
      v19 = v29;
      v10 = v28;
      v22 = v27;
      v21 = v52;
      if (!v31)
      {
        v25 |= 4uLL;
      }
    }

    if (v8 || v18)
    {
      v33 = [(PUOneUpPresentationHelper *)self _newCollapsedLayout];
      v54 = v19;
      if (v23)
      {
        v34 = [(PUTilingView *)v23 tileTransitionDelegate];
        if (!v8)
        {
          [(PUTilingView *)v23 setTileTransitionDelegate:0];
        }

        [(PUTilingView *)v23 transitionToLayout:v33];
        [(PUTilingView *)v23 layoutIfNeeded];
        [(PUTilingView *)v23 setTileTransitionDelegate:v34];
      }

      else
      {
        v34 = [v19 view];
        v35 = [(PUOneUpPresentationHelper *)self _transitionHostingView];
        [v35 bounds];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        memset(&buf, 0, sizeof(buf));
        [(PUOneUpPresentationHelper *)self _tilingViewTransitionTransform];
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        v67.origin.x = v37;
        v67.origin.y = v39;
        v67.size.width = v41;
        v67.size.height = v43;
        CGRectGetMidX(v67);
        v68.origin.x = v37;
        v68.origin.y = v39;
        v68.size.width = v41;
        v68.size.height = v43;
        CGRectGetMidY(v68);
        PXAffineTransformOffsetFixpoint();
        memset(&v58, 0, sizeof(v58));
        v69.origin.x = v37;
        v69.origin.y = v39;
        v69.size.width = v41;
        v69.size.height = v43;
        v70 = CGRectApplyAffineTransform(v69, &v58);
        [v34 convertRect:v35 fromCoordinateSpace:{v70.origin.x, v70.origin.y, v70.size.width, v70.size.height}];
        v53 = v33;
        v23 = [[PUTilingView alloc] initWithFrame:v33 layout:v44, v45, v46, v47];
        v57 = buf;
        CGAffineTransformInvert(&v58, &v57);
        [(PUTilingView *)v23 setTransform:&v58];
        if ((v25 & 0x10000) != 0)
        {
          [(PUOneUpPresentationHelper *)self presentingViewController];
          v48 = v51 = v35;
          v49 = [v48 traitCollection];
          -[PUTilingView setOverrideUserInterfaceStyle:](v23, "setOverrideUserInterfaceStyle:", [v49 userInterfaceStyle]);

          v35 = v51;
        }

        if ((v25 & 2) == 0)
        {
          [(PUTilingView *)v23 configureDynamicRangeProperties];
        }

        [v34 addSubview:v23];
        v50 = [(PUOneUpPresentationHelper *)self browsingSession];
        [v50 configureTilingView:v23];
        [(PUOneUpPresentationHelper *)self _setTilingView:v23];
        [(PUOneUpPresentationHelper *)self _setTransitioningTilingView:v23];

        v33 = v53;
      }

      if (!v18)
      {
        v18 = [(PUOneUpPresentationHelper *)self _createOneUpViewControllerWithBrowsingSession:v22 options:v25 | 1 activity:v55 editActivityCompletion:v10];
      }

      [(PUOneUpPresentationHelper *)self _presentOneUpViewController:v18 animated:1 interactiveMode:v56 completion:0];

      v19 = v54;
    }

    else
    {
      if (v23)
      {
        v18 = [(PUOneUpPresentationHelper *)self _createOneUpViewControllerWithBrowsingSession:v22 options:v25 | 1 activity:v55 editActivityCompletion:v10];
        v32 = [v18 tilingViewControllerTransitionTilingViewHostView:0];
        [v32 bounds];
        [(PUTilingView *)v23 setFrame:?];
        [(PUTilingView *)v23 setAutoresizingMask:18];
        [v32 addSubview:v23];
        [(PUOneUpPresentationHelper *)self _setTilingView:0];
        [v18 tilingViewControllerTransition:0 adoptTilingView:v23 fromEndPoint:0 isCancelingTransition:0 animationSetupCompletionHandler:0];
      }

      else
      {
        v18 = [(PUOneUpPresentationHelper *)self _createOneUpViewControllerWithBrowsingSession:v22 options:v25 activity:v55 editActivityCompletion:v10];
        [v18 setAppearanceTransitionAnimationsDisabled:1];
      }

      [(PUOneUpPresentationHelper *)self _presentOneUpViewController:v18 animated:0 interactiveMode:v56 completion:0];
    }
  }
}

uint64_t __112__PUOneUpPresentationHelper_presentOneUpViewControllerAnimated_interactiveMode_activity_editActivityCompletion___block_invoke_322(uint64_t a1)
{
  if (([*(a1 + 32) isChromeVisible] & 1) == 0)
  {
    v2 = [*(a1 + 40) dataSourceManager];
    v3 = [v2 assetsDataSource];
    v4 = [v3 isEmpty];

    if (v4)
    {
      [*(a1 + 32) setChromeVisible:1];
    }
  }

  v5 = *(a1 + 32);

  return [v5 setIsPresentedForPreview:0];
}

- (CGAffineTransform)_tilingViewTransitionTransform
{
  v5 = [(PUOneUpPresentationHelper *)self _transitionHostingView];
  v6 = v5;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  if (v5)
  {
    [v5 transform];
  }

  v7 = [(PUOneUpPresentationHelper *)self presentingViewController];
  respondsToPreferredPresentationOrientation = self->_delegateFlags.respondsToPreferredPresentationOrientation;
  if ([v7 supportedInterfaceOrientations] == 2 && respondsToPreferredPresentationOrientation)
  {
    v9 = [(PUOneUpPresentationHelper *)self delegate];
    v10 = [v9 oneUpPresentationHelperPreferredPresentationOrientation:self];

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v14 = -1.57079633;
        goto LABEL_14;
      }

      if (v10 == 4)
      {
        v14 = 1.57079633;
LABEL_14:
        CGAffineTransformMakeRotation(&v18, v14);
        v15 = *&v18.c;
        *&retstr->a = *&v18.a;
        *&retstr->c = v15;
        v13 = *&v18.tx;
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 < 2)
      {
        v11 = MEMORY[0x1E695EFD0];
        v12 = *(MEMORY[0x1E695EFD0] + 16);
        *&retstr->a = *MEMORY[0x1E695EFD0];
        *&retstr->c = v12;
        v13 = *(v11 + 32);
LABEL_15:
        *&retstr->tx = v13;
        goto LABEL_16;
      }

      if (v10 == 2)
      {
        v14 = 3.14159265;
        goto LABEL_14;
      }
    }

LABEL_16:
    UIIntegralTransform();
    v16 = *&v18.c;
    *&retstr->a = *&v18.a;
    *&retstr->c = v16;
    *&retstr->tx = *&v18.tx;
  }

  return result;
}

- (BOOL)canPresentOneUpViewControllerAnimated:(BOOL)a3
{
  v4 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v6 = [(PUOneUpPresentationHelper *)self _state];
  if ((v6 - 1) >= 4)
  {
    v3 = [(PUOneUpPresentationHelper *)self presentingViewController];
    v7 = [v3 px_canPresentViewControllerAnimated:v4];
  }

  else
  {
    v7 = 0;
  }

  if ((v6 - 1) >= 3)
  {
    if (v6 == 4)
    {
      return v7;
    }

    if ((v6 == 4) | v7 & 1)
    {
      return v7;
    }
  }

  else if (v7)
  {
    return v7;
  }

  v8 = PXAssertGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PUOneUpPresentationHelper _state](self, "_state")}];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v12 = MEMORY[0x1E696AD98];
    v13 = [(PUOneUpPresentationHelper *)self presentingViewController];
    v14 = [v12 numberWithBool:{objc_msgSend(v13, "px_isVisible")}];
    v15 = [(PUOneUpPresentationHelper *)self presentingViewController];
    v16 = [v15 presentedViewController];
    v18 = 138413058;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = objc_opt_class();
    v17 = v25;
    _os_log_fault_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_FAULT, "Unable to present 1-Up. State: %@, Animated?: %@, Visible?: %@, PresentedViewController?: %@", &v18, 0x2Au);
  }

  return v7;
}

- (void)_configureNavigationController:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_delegateFlags.respondsToEnableFreezeLayoutOnOrientationChange)
  {
    v5 = [(PUOneUpPresentationHelper *)self delegate];
    v6 = [v5 oneUpPresentationHelperEnableFreezeLayoutOnOrientationChange:self];

    [v12 _setAllowsFreezeLayoutForOrientationChangeOnDismissal:v6];
    v4 = v12;
  }

  [v4 setModalPresentationStyle:0];
  v7 = [(PUOneUpPresentationHelper *)self delegate];
  v8 = v7;
  if (self->_delegateFlags.respondsToAdditionalOptions && ([v7 oneUpPresentationHelperAdditionalOptions:self] & 0x10000) != 0)
  {
    v9 = [(PUOneUpPresentationHelper *)self presentingViewController];
    v10 = [v9 traitCollection];
    [v12 setOverrideUserInterfaceStyle:{objc_msgSend(v10, "userInterfaceStyle")}];
  }

  if (self->_delegateFlags.respondsToOriginalViewController)
  {
    v11 = [v8 oneUpPresentationHelperOriginalViewController:self];
  }

  else
  {
    v11 = 0;
  }

  [v12 setViewControllerForStatusBarStyleWhenDisappearing:v11];
}

- (void)_presentOneUpViewController:(id)a3 animated:(BOOL)a4 interactiveMode:(int64_t)a5 completion:(id)a6
{
  v8 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  [(PUOneUpPresentationHelper *)self _setOneUpViewController:v11];
  v13 = [(PUOneUpPresentationHelper *)self presentingViewController];
  if (!v13)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:455 description:{@"presentingViewController is nil when presenting 1Up (state = %ti)", -[PUOneUpPresentationHelper _state](self, "_state")}];
  }

  v14 = [v13 navigationController];
  v15 = [(PUOneUpPresentationHelper *)self transitionType];
  v16 = v15;
  if (v15 == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 == 1;
  }

  [v11 setOriginTransitionType:v17];
  if (self->_delegateFlags.respondsToWillPresentOneUpViewController)
  {
    v18 = [(PUOneUpPresentationHelper *)self delegate];
    [v18 oneUpPresentationHelper:self willPresentOneUpViewController:v11];
  }

  if (!v8)
  {
    v19 = v14;
    v20 = PLOneUpGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_DEFAULT, "Updating state from _presentOneUpViewController", buf, 2u);
    }

    [(PUOneUpPresentationHelper *)self _setState:2];
    v14 = v19;
  }

  if (a5)
  {
    v21 = v8;
  }

  else
  {
    v21 = 0;
  }

  if (v16 == 2)
  {
    v23 = [[PUTilingViewModalTransition alloc] initWithEndPoint:self];
    v29 = v21;
    v21 = [[PUNavigationController alloc] initWithRootViewController:v11];
    [(PUOneUpPresentationHelper *)self _configureNavigationController:v21];
    [MEMORY[0x1E69C3730] viewController:v13 willPresentOneUpInViewController:v21];
    [v13 pu_presentViewController:v21 transition:v23 animated:v8 interactive:v29 completion:v12];

    LODWORD(v21) = v29;
    goto LABEL_39;
  }

  if (v16 == 1)
  {
    v44 = a2;
    v23 = [[PUTilingViewNavigationTransition alloc] initWithEndPoint:self];
    if (!v14)
    {
      v41 = v21;
      v42 = a5;
      v43 = v12;
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"here is presentingViewController's hierarchy :\n - %@\n", v13];
      v25 = [v13 parentViewController];
      if (v25)
      {
        v26 = v25;
        do
        {
          v27 = [v24 stringByAppendingFormat:@" - %@\n", v26];

          v28 = [v26 parentViewController];

          v24 = v27;
          v26 = v28;
        }

        while (v28);
      }

      else
      {
        v27 = v24;
      }

      v30 = PLOneUpGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = [MEMORY[0x1E69DC668] sharedApplication];
        v32 = [v31 px_firstKeyWindow];
        v33 = [v32 recursiveDescription];
        *buf = 138412290;
        v46 = v33;
        _os_log_impl(&dword_1B36F3000, v30, OS_LOG_TYPE_ERROR, "navigationController is nil when presenting 1Up, view hierarchy => %@", buf, 0xCu);
      }

      v34 = PLOneUpGetLog();
      a5 = v42;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v46 = v27;
        _os_log_impl(&dword_1B36F3000, v34, OS_LOG_TYPE_ERROR, "navigationController is nil when presenting 1Up, presentingViewController's VC hierarchy: %@", buf, 0xCu);
      }

      v35 = PLOneUpGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = [MEMORY[0x1E69DD258] _printHierarchy];
        *buf = 138412290;
        v46 = v36;
        _os_log_impl(&dword_1B36F3000, v35, OS_LOG_TYPE_ERROR, "navigationController is nil when presenting 1Up, main window hierarchy: %@", buf, 0xCu);
      }

      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      [v37 handleFailureInMethod:v44 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:508 description:{@"navigationController is nil when presenting 1Up (state = %ti, presentingVC = %@)\n presentingViewController's VC hierarchy: %@", -[PUOneUpPresentationHelper _state](self, "_state"), v13, v27}];

      v12 = v43;
      v14 = 0;
      v21 = v41;
    }

    [v14 pu_pushViewController:v11 withTransition:v23 animated:v8 isInteractive:v21];
    if (v12 && v8)
    {
      [MEMORY[0x1E696AAA8] currentHandler];
      v21 = v40 = v21;
      [(PUNavigationController *)v21 handleFailureInMethod:v44 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:512 description:@"_presentOneUpViewController does not support completion handlers for navigation transitions when animated"];

      LODWORD(v21) = v40;
    }

    else if (!v12)
    {
      goto LABEL_39;
    }

    if (!v8)
    {
      v12[2](v12);
    }
  }

  else
  {
    if (!v16)
    {
      [MEMORY[0x1E696AAA8] currentHandler];
      v21 = v22 = v21;
      [(PUNavigationController *)v21 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:487 description:@"undefined transition type"];

      LODWORD(v21) = v22;
    }

    v23 = 0;
  }

LABEL_39:
  if (v21)
  {
    if (a5 == 2)
    {
      v38 = 30;
    }

    else
    {
      v38 = 0;
    }

    [(PUTilingViewModalTransition *)v23 pauseTransitionWithOptions:v38];
  }
}

- (UIViewController)topmostPresentedViewController
{
  v2 = [(PUOneUpPresentationHelper *)self presentingViewController];
  v3 = [(UIViewController *)v2 px_topmostPresentedViewController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

- (UIViewController)presentingViewController
{
  [(PUOneUpPresentationHelper *)self _updatePresentationInfoIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)setAssetDisplayDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_assetDisplayDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_assetDisplayDelegate, obj);
    self->_assetDisplayDelegateFlags.respondsToRegionOfInterestForAssetReference = objc_opt_respondsToSelector() & 1;
    self->_assetDisplayDelegateFlags.respondsToCurrentImageForAssetReference = objc_opt_respondsToSelector() & 1;
    self->_assetDisplayDelegateFlags.respondsToShouldHideAssetReferences = objc_opt_respondsToSelector() & 1;
    self->_assetDisplayDelegateFlags.respondsToScrollAssetReferenceToVisible = objc_opt_respondsToSelector() & 1;
    self->_assetDisplayDelegateFlags.respondsToShouldDisableScroll = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToTransitionTypeWithProposedTransitionType = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToWillPresentOneUpViewController = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidDismissOneUpViewController = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToOriginalViewController = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToStateDidChange = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToViewHostingGestureRecognizers = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToViewHostingTilingView = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToScrollView = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToPreferredBarStyle = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToShouldLeaveContentOnSecondScreen = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDisableFinalFadeoutAnimation = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToPreviewScrubberDidBecomeAvailable = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToShouldAutoPlay = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToPreventRevealInMomentAction = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToPreventHideAssetAction = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToPreferredPresentationOrientation = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToEnableFreezeLayoutOnOrientationChange = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToAdditionalOptions = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToWantsShowInLibraryButton = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToSearchContext = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToSearchContextualVideoThumbnail = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToPreventPeopleOrnament = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToPreventAlbumAttributionWidget = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToShouldDisableAutoPlayback = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidPresentOneUpViewController = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToShouldAllowVideoContentDuringTransitions = objc_opt_respondsToSelector() & 1;
    [(PUOneUpPresentationHelper *)self _invalidatePresentationInfo];
    [(PUOneUpPresentationHelper *)self _updatePresentationInfoIfNeeded];
  }
}

- (BOOL)pausingPhotoLibraryChanges
{
  v2 = [(PUOneUpPresentationHelper *)self pausedPhotoLibrary];
  v3 = v2 != 0;

  return v3;
}

- (PXAssetReference)lastViewedAssetReference
{
  v2 = [(PUOneUpPresentationHelper *)self browsingSession];
  v3 = [v2 viewModel];
  v4 = [v3 lastViewedAssetReference];
  v5 = [v4 pxAssetReference];

  return v5;
}

- (id)_createBrowsingSession
{
  if (PFIsCamera() && ([MEMORY[0x1E69C3620] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "externalOneUpForceEnable"), v3, v4))
  {
    v5 = +[PUImportBrowsingSession withDeviceMedia];
  }

  else
  {
    v6 = [(PUOneUpPresentationHelper *)self _browsingSessionCreationBlock];
    v5 = v6[2]();
  }

  if (self->_delegateFlags.respondsToSearchContextualVideoThumbnail)
  {
    v7 = [(PUOneUpPresentationHelper *)self delegate];
    v8 = [v7 oneUpPresentationHelperContextualVideoThumbnailIdentifier:self];
    v9 = [v5 viewModel];
    [v9 setSearchContextualVideoThumbnailIdentifier:v8];
  }

  if (self->_delegateFlags.respondsToSearchContext)
  {
    v10 = [(PUOneUpPresentationHelper *)self delegate];
    v11 = [v10 oneUpPresentationHelperSearchQueryMatchInfo:self];
    v12 = [v5 viewModel];
    [v12 setSearchQueryMatchInfo:v11];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
    if (self->_delegateFlags.respondsToMatchedSceneIdentifiers)
    {
      v14 = [(PUOneUpPresentationHelper *)self delegate];
      v15 = [v14 oneUpPresentationHelperMatchedSceneIdentifiers:self];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

    if (self->_delegateFlags.respondsToMatchedAudioIdentifiers)
    {
      v18 = [(PUOneUpPresentationHelper *)self delegate];
      v19 = [v18 oneUpPresentationHelperMatchedAudioIdentifiers:self];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v13;
      }

      v22 = v21;

      v11 = v22;
    }

    else
    {
      v11 = 0;
    }

    if (self->_delegateFlags.respondsToMatchedHumanActionIdentifiers)
    {
      v23 = [(PUOneUpPresentationHelper *)self delegate];
      v24 = [v23 oneUpPresentationHelperMatchedHumanActionIdentifiers:self];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v13;
      }

      v12 = v26;
    }

    else
    {
      v12 = 0;
    }

    if (self->_delegateFlags.respondsToMatchedPersonLocalIdentifiers)
    {
      v27 = [(PUOneUpPresentationHelper *)self delegate];
      v28 = [v27 oneUpPresentationHelperMatchedPersonLocalIdentifiers:self];
      v29 = v28;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v13;
      }

      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if (self->_delegateFlags.respondsToTextsToHighlight)
    {
      v32 = [(PUOneUpPresentationHelper *)self delegate];
      v33 = [v32 oneUpPresentationHelperTextsToHighlight:self];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v13;
      }

      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    if (self->_delegateFlags.respondsToAssetUUIDsAllowedToHighlightText)
    {
      v37 = [(PUOneUpPresentationHelper *)self delegate];
      v38 = [v37 oneUpPresentationHelperAssetUUIDsAllowedToHighlightText:self];
      v39 = v38;
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = v13;
      }

      v64 = v40;
    }

    else
    {
      v64 = 0;
    }

    v41 = [v36 firstObject];
    if (v41 || [v10 count] || objc_msgSend(v31, "count") || objc_msgSend(v11, "count") || objc_msgSend(v12, "count") || objc_msgSend(v36, "count") || objc_msgSend(v64, "count"))
    {
      v62 = v41;
      v63 = v36;
      v60 = objc_alloc(MEMORY[0x1E69C39A8]);
      v59 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v10];
      v42 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v31];
      v43 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v11];
      v44 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v12];
      v61 = v31;
      v45 = v12;
      v46 = v11;
      v47 = v10;
      v48 = v5;
      v49 = v44;
      v50 = [v60 initWithLocalizedQueryString:v41 matchedSceneIdentifiers:v59 personLocalIdentifiers:v42 audioIdentifiers:v43 humanActionIdentifiers:v44 ocrTexts:v36 ocrAssetUUIDS:v64 queryEmbedding:0 countOfQueryTerms:0];
      v51 = [v48 viewModel];
      [v51 setSearchQueryMatchInfo:v50];

      v36 = v63;
      v41 = v62;

      v5 = v48;
      v10 = v47;
      v11 = v46;
      v12 = v45;
      v31 = v61;
    }
  }

  v52 = [(PUOneUpPresentationHelper *)self presentingViewController];
  if (v52)
  {
    while (1)
    {
      v53 = [v52 viewIfLoaded];
      v54 = [v53 window];

      if (v54)
      {
        break;
      }

      v55 = [v52 parentViewController];

      v52 = v55;
      if (!v55)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
LABEL_57:
    v54 = 0;
  }

  PFProcessIsLaunchedToExecuteTests();
  v56 = [v5 contentTileProvider];
  [v56 setWindow:v54];

  v57 = [(PUOneUpPresentationHelper *)self testingDelegate];
  [v57 oneUpPresentationHelperDidCreateBrowsingSession:self];

  return v5;
}

- (id)_browsingSessionCreateIfNeeded:(BOOL)a3
{
  browsingSession = self->_browsingSession;
  if (browsingSession)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
  }

  if (!v5)
  {
    v6 = [(PUOneUpPresentationHelper *)self _createBrowsingSession];
    v7 = self->_browsingSession;
    self->_browsingSession = v6;

    browsingSession = self->_browsingSession;
  }

  return browsingSession;
}

- (void)dealloc
{
  v3 = [(UITapGestureRecognizer *)self->__tapGestureRecognizer view];
  [v3 removeGestureRecognizer:self->__tapGestureRecognizer];

  [(UITapGestureRecognizer *)self->__tapGestureRecognizer setDelegate:0];
  v4 = self->_libraryChangePauseToken;
  if (v4)
  {
    v5 = self->_pausedPhotoLibrary;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__PUOneUpPresentationHelper_dealloc__block_invoke;
    block[3] = &unk_1E7B80C38;
    v9 = v5;
    v10 = v4;
    v6 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v7.receiver = self;
  v7.super_class = PUOneUpPresentationHelper;
  [(PUOneUpPresentationHelper *)&v7 dealloc];
}

- (void)setPhotosDataSource:(id)a3
{
  v5 = a3;
  p_photosDataSource = &self->_photosDataSource;
  if (self->_photosDataSource != v5)
  {
    v9 = v5;
    objc_storeStrong(p_photosDataSource, a3);
    v7 = [(PUOneUpPresentationHelper *)self browsingSession];
    v8 = [v7 dataSourceManager];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setPhotosDataSource:v9];
    }

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](p_photosDataSource, v5);
}

- (PUOneUpPresentationHelper)initWithPhotosDataSource:(id)a3
{
  v5 = a3;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PUOneUpPresentationHelper_initWithPhotosDataSource___block_invoke;
  v9[3] = &unk_1E7B7A710;
  objc_copyWeak(&v10, &location);
  v6 = [(PUOneUpPresentationHelper *)self initWithBrowsingSessionCreationBlock:v9];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photosDataSource, a3);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

PUBrowsingSession *__54__PUOneUpPresentationHelper_initWithPhotosDataSource___block_invoke(uint64_t a1)
{
  v2 = [PUPhotoKitDataSourceManager alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained photosDataSource];
  v5 = [(PUPhotoKitDataSourceManager *)v2 initWithPhotosDataSource:v4];

  v6 = objc_alloc_init(PUPhotoKitMediaProvider);
  v7 = objc_alloc_init(PUPhotoKitAssetActionManager);
  [(PUPhotoKitAssetActionManager *)v7 setDataSourceManager:v5];
  v8 = [[PUBrowsingSession alloc] initWithDataSourceManager:v5 actionManager:v7 mediaProvider:v6];

  return v8;
}

- (PUOneUpPresentationHelper)initWithBrowsingSessionCreationBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"browsingSessionCreationBlock"}];
  }

  v12.receiver = self;
  v12.super_class = PUOneUpPresentationHelper;
  v6 = [(PUOneUpPresentationHelper *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_needsUpdateFlags.presentationInfo = 1;
    v8 = [v5 copy];
    browsingSessionCreationBlock = v7->__browsingSessionCreationBlock;
    v7->__browsingSessionCreationBlock = v8;
  }

  return v7;
}

@end