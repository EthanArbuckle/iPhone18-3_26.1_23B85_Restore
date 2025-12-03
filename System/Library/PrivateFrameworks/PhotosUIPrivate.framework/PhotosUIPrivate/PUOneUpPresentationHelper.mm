@interface PUOneUpPresentationHelper
- (BOOL)_enableSpatialPresentation:(id)presentation;
- (BOOL)_handleInteractivePresentationWithBlock:(id)block;
- (BOOL)_prepareDismissalForced:(BOOL)forced;
- (BOOL)_shouldAutoplayOnNavigation;
- (BOOL)canPresentOneUpViewControllerAnimated:(BOOL)animated;
- (BOOL)dismissOneUpViewControllerForced:(BOOL)forced animated:(BOOL)animated;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)handlePresentingPanGestureRecognizer:(id)recognizer;
- (BOOL)handlePresentingPinchGestureRecognizer:(id)recognizer;
- (BOOL)isReadyToAdoptTilingView:(id)view fromEndPoint:(id)point;
- (BOOL)pausingPhotoLibraryChanges;
- (CGAffineTransform)_tilingViewTransitionTransform;
- (PUOneUpPresentationHelper)initWithBrowsingSessionCreationBlock:(id)block;
- (PUOneUpPresentationHelper)initWithPhotosDataSource:(id)source;
- (PUOneUpPresentationHelperAssetDisplayDelegate)assetDisplayDelegate;
- (PUOneUpPresentationHelperDelegate)delegate;
- (PUOneUpPresentationHelperTestingDelegate)testingDelegate;
- (PUTilingView)_disappearingTilingView;
- (PXAssetReference)lastViewedAssetReference;
- (UIViewController)presentingViewController;
- (UIViewController)topmostPresentedViewController;
- (double)pinchedTiledTracker:(id)tracker initialAspectRatioForTileWithLayoutInfo:(id)info;
- (id)_browsingSessionCreateIfNeeded:(BOOL)needed;
- (id)_createBrowsingSession;
- (id)_createOneUpViewControllerWithBrowsingSession:(id)session options:(unint64_t)options activity:(unint64_t)activity editActivityCompletion:(id)completion;
- (id)_currentTilingViewControllerTransition;
- (id)_newCollapsedLayout;
- (id)_transitionHostingView;
- (id)pinchedTiledTracker:(id)tracker finalLayoutInfoForTileWithLayoutInfo:(id)info;
- (id)previewPresentationTransitioningDelegateForPosition:(CGPoint)position inSourceView:(id)view;
- (id)previewViewControllerForItemAtIndexPath:(id)path allowingActions:(BOOL)actions;
- (id)tilingView:(id)view tileControllerWithIndexPath:(id)path kind:(id)kind dataSource:(id)source;
- (id)tilingView:(id)view tileTransitionCoordinatorForTransitionFromLayout:(id)layout toLayout:(id)toLayout withContext:(id)context;
- (id)tilingViewControllerTransition:(id)transition tilingViewToTransferToEndPoint:(id)point;
- (id)tilingViewControllerTransitionTilingViewHostView:(id)view;
- (int64_t)_currentNavigationControllerOperation;
- (int64_t)tilingViewControllerTransitionPreferredBarStyle:(id)style;
- (void)_cleanUpAfterTilingViewTransitionAnimated:(BOOL)animated transitionAborted:(BOOL)aborted;
- (void)_cleanupOneUpViewControllerForDismissalIfNeeded;
- (void)_configureNavigationController:(id)controller;
- (void)_didFinishTransitioningFromOneUp;
- (void)_didFinishTransitioningToOneUp;
- (void)_disappearingTilingView:(id)view animationCompleted:(BOOL)completed;
- (void)_ensureRegistrationWithPresentingViewController;
- (void)_handleTap:(id)tap;
- (void)_handleTileControllerAnimationEnd;
- (void)_invalidateAssetReferencesDisplayedInTilingView;
- (void)_navigateToAssetAtIndexPath:(id)path inBrowsingSession:(id)session isNavigationSourceWidget:(BOOL)widget;
- (void)_presentOneUpViewController:(id)controller animated:(BOOL)animated interactiveMode:(int64_t)mode completion:(id)completion;
- (void)_presentationEndDidTimeOut:(int64_t)out;
- (void)_setAssetReferencesDisplayedInTilingView:(id)view;
- (void)_setEndingPresentation:(BOOL)presentation;
- (void)_setOneUpViewController:(id)controller;
- (void)_setShouldPauseLibraryChanges:(BOOL)changes;
- (void)_setState:(int64_t)state;
- (void)_setTilingView:(id)view;
- (void)_setTransitioningTilingView:(id)view;
- (void)_throwOnSetStateFromIdleToTransitioningToOneUp:(int64_t)up;
- (void)_throwOnSetStateFromTransitionedToOneUpToPreparingTransitionToOneUp:(int64_t)up;
- (void)_updateAssetReferencesDisplayedInTilingView;
- (void)_updateLayout;
- (void)_updateLayout:(id)layout;
- (void)_updatePresentationInfoIfNeeded;
- (void)_updateTapGestureRecognizer;
- (void)commitPreviewViewController:(id)controller completion:(id)completion;
- (void)dealloc;
- (void)didDismissPreviewViewController:(id)controller committing:(BOOL)committing;
- (void)interactiveTileTracker:(id)tracker didStopTrackingTileController:(id)controller;
- (void)interactiveTileTracker:(id)tracker willStartTrackingTileController:(id)controller;
- (void)photosPreviewPresentationController:(id)controller willPresentPreviewViewController:(id)viewController;
- (void)presentOneUpViewControllerAnimated:(BOOL)animated interactiveMode:(int64_t)mode activity:(unint64_t)activity editActivityCompletion:(id)completion;
- (void)presentOneUpViewControllerFromAssetAtIndexPath:(id)path animated:(BOOL)animated interactiveMode:(int64_t)mode activity:(unint64_t)activity isNavigationSourceWidget:(BOOL)widget editActivityCompletion:(id)completion;
- (void)presentingViewControllerViewDidDisappear:(BOOL)disappear;
- (void)presentingViewControllerViewWillAppear:(BOOL)appear;
- (void)presentingViewControllerViewWillDisappear:(BOOL)disappear;
- (void)setAssetDisplayDelegate:(id)delegate;
- (void)setDelegate:(id)delegate;
- (void)setPhotosDataSource:(id)source;
- (void)tilingView:(id)view didStopUsingTileController:(id)controller;
- (void)tilingViewControllerTransition:(id)transition abandonTilingView:(id)view toEndPoint:(id)point;
- (void)tilingViewControllerTransition:(id)transition adoptTilingView:(id)view fromEndPoint:(id)point isCancelingTransition:(BOOL)cancelingTransition animationSetupCompletionHandler:(id)handler;
- (void)tilingViewDidEndAnimatingTileControllers:(id)controllers;
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
  delegate = [(PUOneUpPresentationHelper *)self delegate];
  v4 = [delegate oneUpPresentationHelperViewController:self];
  navigationController = [v4 navigationController];
  if (!navigationController)
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
      v13 = navigationController;
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
  px_splitViewController = [v4 px_splitViewController];

  if (px_splitViewController)
  {
    v9 = 2;
  }

  else
  {
    v9 = v6;
  }

  if (self->_delegateFlags.respondsToTransitionTypeWithProposedTransitionType)
  {
    v9 = [delegate oneUpPresentationHelper:self transitionTypeWithProposedTransitionType:v9];
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
  _tilingView = [(PUOneUpPresentationHelper *)self _tilingView];
  layout = [_tilingView layout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PUOneUpPresentationHelper *)self _updateLayout:layout];
  }
}

- (void)_didFinishTransitioningFromOneUp
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(PUOneUpPresentationHelper *)self _state]== 4)
  {
    [(PUOneUpPresentationHelper *)self _setState:5];
    _tilingView = [(PUOneUpPresentationHelper *)self _tilingView];
    isAnyTileControllerAnimating = [_tilingView isAnyTileControllerAnimating];

    if ((isAnyTileControllerAnimating & 1) == 0)
    {
      [(PUOneUpPresentationHelper *)self _handleTileControllerAnimationEnd];
    }
  }

  else if ([(PUOneUpPresentationHelper *)self _state]== 3 && !self->_isPresentingViewControllerAppearingWithIdleState)
  {
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
      v7 = 138412290;
      v8 = presentingViewController;
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

- (void)tilingViewDidEndAnimatingTileControllers:(id)controllers
{
  controllersCopy = controllers;
  _tilingView = [(PUOneUpPresentationHelper *)self _tilingView];

  if (_tilingView == controllersCopy)
  {

    [(PUOneUpPresentationHelper *)self _handleTileControllerAnimationEnd];
  }
}

- (void)tilingView:(id)view didStopUsingTileController:(id)controller
{
  [(PUOneUpPresentationHelper *)self _invalidateAssetReferencesDisplayedInTilingView:view];

  [(PUOneUpPresentationHelper *)self _updateAssetReferencesDisplayedInTilingView];
}

- (id)tilingView:(id)view tileTransitionCoordinatorForTransitionFromLayout:(id)layout toLayout:(id)toLayout withContext:(id)context
{
  viewCopy = view;
  layoutCopy = layout;
  toLayoutCopy = toLayout;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    fixedCoordinateSystem = [viewCopy fixedCoordinateSystem];
    v15 = objc_alloc_init(PUSingleAssetLayoutTransitionCoordinator);
    [(PUSingleAssetLayoutTransitionCoordinator *)v15 setFixedCoordinateSystem:fixedCoordinateSystem];
  }

  else
  {
    browsingSession = [(PUOneUpPresentationHelper *)self browsingSession];
    viewModel = [browsingSession viewModel];
    fixedCoordinateSystem = [viewModel currentAssetReference];

    v15 = [PUTileTransitionCoordinator defaultTileTransitionCoordinatorForTransitionFromLayout:layoutCopy toLayout:toLayoutCopy withTilingView:viewCopy anchorAssetReference:fixedCoordinateSystem context:contextCopy];
  }

  return v15;
}

- (id)tilingView:(id)view tileControllerWithIndexPath:(id)path kind:(id)kind dataSource:(id)source
{
  viewCopy = view;
  pathCopy = path;
  sourceCopy = source;
  if (![kind isEqualToString:@"PUTileKindItemContent"])
  {
    goto LABEL_6;
  }

  v30 = a2;
  browsingSession = [(PUOneUpPresentationHelper *)self browsingSession];
  contentTileProvider = [browsingSession contentTileProvider];

  v16 = [sourceCopy assetReferenceAtIndexPath:pathCopy];
  browsingSession2 = [(PUOneUpPresentationHelper *)self browsingSession];
  viewModel = [browsingSession2 viewModel];
  v19 = [viewModel assetViewModelForAssetReference:v16];

  asset = [v16 asset];
  v21 = [contentTileProvider tileControllerForAsset:asset viewModel:v19 tilingView:viewCopy];

  if (self->_assetDisplayDelegateFlags.respondsToCurrentImageForAssetReference)
  {
    assetDisplayDelegate = [(PUOneUpPresentationHelper *)self assetDisplayDelegate];
    v23 = [assetDisplayDelegate oneUpPresentationHelper:self currentImageForAssetReference:v16];

    if (v23)
    {
      [v21 setPreloadedImage:v23];
    }
  }

  presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
  viewIfLoaded = [presentingViewController viewIfLoaded];
  [viewIfLoaded bounds];
  [v21 setExpectedPresentationSize:{v26, v27}];

  a2 = v30;
  if (!v21)
  {
LABEL_6:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:2124 description:{@"Invalid parameter not satisfying: %@", @"tileController != nil"}];

    v21 = 0;
  }

  return v21;
}

- (int64_t)tilingViewControllerTransitionPreferredBarStyle:(id)style
{
  if (self->_delegateFlags.respondsToPreferredBarStyle)
  {
    delegate = [(PUOneUpPresentationHelper *)self delegate];
    pu_preferredBarStyle = [delegate oneUpPresentationHelperPreferredBarStyle:self];
  }

  else
  {
    delegate = [(PUOneUpPresentationHelper *)self presentingViewController];
    pu_preferredBarStyle = [delegate pu_preferredBarStyle];
  }

  v6 = pu_preferredBarStyle;

  return v6;
}

- (void)tilingViewControllerTransition:(id)transition adoptTilingView:(id)view fromEndPoint:(id)point isCancelingTransition:(BOOL)cancelingTransition animationSetupCompletionHandler:(id)handler
{
  cancelingTransitionCopy = cancelingTransition;
  transitionCopy = transition;
  viewCopy = view;
  pointCopy = point;
  handlerCopy = handler;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:2048 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];
  }

  _oneUpViewController = [(PUOneUpPresentationHelper *)self _oneUpViewController];
  if (_oneUpViewController)
  {
  }

  else if (![(PUOneUpPresentationHelper *)self _state])
  {
    goto LABEL_13;
  }

  _oneUpViewController2 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
  v18 = [pointCopy isEqual:_oneUpViewController2];

  if ((v18 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    _oneUpViewController3 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:2054 description:{@"unexpected end point %@ with oneUpViewController %@", pointCopy, _oneUpViewController3}];
  }

  if ([(PUOneUpPresentationHelper *)self _state]!= 5)
  {
    if (cancelingTransitionCopy)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    _presentationOrigin = [(PUOneUpPresentationHelper *)self _presentationOrigin];
    [MEMORY[0x1E69C3338] transitionAnimationDidBegin:v19 fromOrigin:_presentationOrigin transitionObject:self];
    [(PUOneUpPresentationHelper *)self _setState:4];
  }

LABEL_13:
  _tilingView = [(PUOneUpPresentationHelper *)self _tilingView];

  if (_tilingView)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    _tilingView2 = [(PUOneUpPresentationHelper *)self _tilingView];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:2064 description:{@"adopting tiling %@ from %@ will override current tiling view %@", viewCopy, pointCopy, _tilingView2}];
  }

  [(PUOneUpPresentationHelper *)self _setTilingView:viewCopy];
  [(PUOneUpPresentationHelper *)self _setTransitioningTilingView:viewCopy];
  _newCollapsedLayout = [(PUOneUpPresentationHelper *)self _newCollapsedLayout];
  v23 = objc_alloc_init(PUTilingLayoutTransitionContext);
  [(PUTilingLayoutTransitionContext *)v23 setIsViewControllerTransition:1];
  [(PUTilingLayoutTransitionContext *)v23 setCancelingTransition:cancelingTransitionCopy];
  [viewCopy transitionToLayout:_newCollapsedLayout withContext:v23 animationSetupCompletionHandler:handlerCopy];
  [viewCopy layoutIfNeeded];
  [(PUOneUpPresentationHelper *)self _invalidateAssetReferencesDisplayedInTilingView];
  [(PUOneUpPresentationHelper *)self _updateAssetReferencesDisplayedInTilingView];
}

- (BOOL)isReadyToAdoptTilingView:(id)view fromEndPoint:(id)point
{
  v4 = [(PUOneUpPresentationHelper *)self presentingViewController:view];
  viewIfLoaded = [v4 viewIfLoaded];
  window = [viewIfLoaded window];
  v7 = window != 0;

  return v7;
}

- (void)tilingViewControllerTransition:(id)transition abandonTilingView:(id)view toEndPoint:(id)point
{
  viewCopy = view;
  pointCopy = point;
  _tilingView = [(PUOneUpPresentationHelper *)self _tilingView];

  if (_tilingView != viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    _tilingView2 = [(PUOneUpPresentationHelper *)self _tilingView];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:2035 description:{@"tiling view %@ to abandon to %@ isn't the current tiling view %@", viewCopy, pointCopy, _tilingView2}];
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

- (id)tilingViewControllerTransition:(id)transition tilingViewToTransferToEndPoint:(id)point
{
  v18 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  _oneUpViewController = [(PUOneUpPresentationHelper *)self _oneUpViewController];
  v8 = [pointCopy isEqual:_oneUpViewController];

  if ((v8 & 1) == 0)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _oneUpViewController2 = [(PUOneUpPresentationHelper *)self _oneUpViewController];
      *buf = 138412546;
      v15 = pointCopy;
      v16 = 2112;
      v17 = _oneUpViewController2;
      _os_log_error_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "unexpected end point %@ with oneUpViewController %@", buf, 0x16u);
    }
  }

  _tilingView = [(PUOneUpPresentationHelper *)self _tilingView];
  if (!_tilingView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:2030 description:{@"no tiling view to transfer to %@ (state = %ti)", pointCopy, -[PUOneUpPresentationHelper _state](self, "_state")}];
  }

  return _tilingView;
}

- (id)tilingViewControllerTransitionTilingViewHostView:(id)view
{
  viewCopy = view;
  if (!self->_delegateFlags.respondsToViewHostingTilingView || (-[PUOneUpPresentationHelper delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 oneUpPresentationHelperViewHostingTilingView:self], view = objc_claimAutoreleasedReturnValue(), v5, !view))
  {
    presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
    view = [presentingViewController view];
  }

  return view;
}

- (id)pinchedTiledTracker:(id)tracker finalLayoutInfoForTileWithLayoutInfo:(id)info
{
  infoCopy = info;
  _currentTilingViewControllerTransition = [(PUOneUpPresentationHelper *)self _currentTilingViewControllerTransition];
  if ([_currentTilingViewControllerTransition hasStarted])
  {
    _transitioningTilingView = [(PUOneUpPresentationHelper *)self _transitioningTilingView];
    layout = [_transitioningTilingView layout];
    indexPath = [infoCopy indexPath];
    tileKind = [infoCopy tileKind];
    v11 = [layout layoutInfoForTileWithIndexPath:indexPath kind:tileKind];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)pinchedTiledTracker:(id)tracker initialAspectRatioForTileWithLayoutInfo:(id)info
{
  trackerCopy = tracker;
  infoCopy = info;
  dataSourceIdentifier = [infoCopy dataSourceIdentifier];
  browsingSession = [(PUOneUpPresentationHelper *)self browsingSession];
  viewModel = [browsingSession viewModel];
  assetsDataSource = [viewModel assetsDataSource];

  identifier = [assetsDataSource identifier];
  LOBYTE(viewModel) = [identifier isEqualToString:dataSourceIdentifier];

  if (viewModel)
  {
    if (assetsDataSource)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  tilingView = [trackerCopy tilingView];
  layout = [tilingView layout];
  assetsDataSource = [layout dataSource];

  objc_opt_class();
  v15 = 0.0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  identifier2 = [assetsDataSource identifier];
  v17 = [identifier2 isEqualToString:dataSourceIdentifier];

  if (!v17)
  {
    goto LABEL_9;
  }

  if (assetsDataSource)
  {
LABEL_8:
    indexPath = [infoCopy indexPath];
    v19 = [assetsDataSource assetAtIndexPath:indexPath];

    [v19 aspectRatio];
    v15 = v20;

LABEL_9:
  }

  return v15;
}

- (void)interactiveTileTracker:(id)tracker didStopTrackingTileController:(id)controller
{
  if (self->_assetDisplayDelegateFlags.respondsToShouldDisableScroll)
  {
    v6 = [(PUOneUpPresentationHelper *)self assetDisplayDelegate:tracker];
    [v6 oneUpPresentationHelper:self shouldDisableScroll:0];
  }
}

- (void)interactiveTileTracker:(id)tracker willStartTrackingTileController:(id)controller
{
  if (self->_assetDisplayDelegateFlags.respondsToShouldDisableScroll)
  {
    v6 = [(PUOneUpPresentationHelper *)self assetDisplayDelegate:tracker];
    [v6 oneUpPresentationHelper:self shouldDisableScroll:1];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  _tapGestureRecognizer = [(PUOneUpPresentationHelper *)self _tapGestureRecognizer];

  if (_tapGestureRecognizer == beginCopy)
  {
    *(v13 + 24) = 0;
    _tilingView = [(PUOneUpPresentationHelper *)self _tilingView];
    if (!_tilingView)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1947 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];
    }

    [beginCopy locationInView:_tilingView];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PUOneUpPresentationHelper_gestureRecognizerShouldBegin___block_invoke;
    v11[3] = &unk_1E7B79FF8;
    v11[4] = &v12;
    [_tilingView enumeratePresentedTileControllersInRect:v11 usingBlock:?];
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

- (void)photosPreviewPresentationController:(id)controller willPresentPreviewViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(PUOneUpPresentationHelper *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(PUOneUpPresentationHelper *)self delegate];
    [delegate2 oneUpPresentationHelper:self willPresentOneUpPreviewViewController:viewControllerCopy];
  }
}

- (BOOL)_shouldAutoplayOnNavigation
{
  if (!self->_delegateFlags.respondsToShouldAutoPlay)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(PUOneUpPresentationHelper *)self delegate];
  LOBYTE(selfCopy) = [delegate oneUpPresentationHelperShouldAutoPlay:selfCopy];

  return selfCopy;
}

- (BOOL)_enableSpatialPresentation:(id)presentation
{
  presentationCopy = presentation;
  if (presentationCopy && [MEMORY[0x1E69C1598] hasSpatial3DWidgetResourceForAsset:presentationCopy])
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    if ([processInfo isLowPowerModeEnabled])
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

- (void)_navigateToAssetAtIndexPath:(id)path inBrowsingSession:(id)session isNavigationSourceWidget:(BOOL)widget
{
  pathCopy = path;
  viewModel = [session viewModel];
  assetsDataSource = [viewModel assetsDataSource];
  v11 = [assetsDataSource assetReferenceAtIndexPath:pathCopy];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __100__PUOneUpPresentationHelper__navigateToAssetAtIndexPath_inBrowsingSession_isNavigationSourceWidget___block_invoke;
  v14[3] = &unk_1E7B7DCD8;
  v15 = viewModel;
  v16 = v11;
  selfCopy = self;
  widgetCopy = widget;
  v12 = v11;
  v13 = viewModel;
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

- (id)previewPresentationTransitioningDelegateForPosition:(CGPoint)position inSourceView:(id)view
{
  v5 = objc_alloc_init(PUPhotosPreviewTransitionDelegate);
  [(PUPhotosPreviewTransitionDelegate *)v5 setPhotosPreviewingDelegate:self];

  return v5;
}

- (void)commitPreviewViewController:(id)controller completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  if ([(PUOneUpPresentationHelper *)self canPresentOneUpViewControllerAnimated:0])
  {
    v8 = controllerCopy;
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
        v14 = completionCopy;
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

- (void)didDismissPreviewViewController:(id)controller committing:(BOOL)committing
{
  controllerCopy = controller;
  v8 = controllerCopy;
  if (committing)
  {
    if ([(PUOneUpPresentationHelper *)self _state]== 2)
    {
      [(PUOneUpPresentationHelper *)self _didFinishTransitioningToOneUp];
    }

    goto LABEL_9;
  }

  v9 = controllerCopy;
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1794 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"viewController", v15}];
LABEL_12:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    px_descriptionForAssertionMessage = [v9 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1794 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"viewController", v15, px_descriptionForAssertionMessage}];

    goto LABEL_12;
  }

LABEL_6:
  browsingSession = [v9 browsingSession];
  viewModel = [browsingSession viewModel];
  videoPlayer = [viewModel videoPlayer];

  if ([videoPlayer isPlaybackDesired])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__PUOneUpPresentationHelper_didDismissPreviewViewController_committing___block_invoke;
    v18[3] = &unk_1E7B80DD0;
    v19 = videoPlayer;
    [v19 performChanges:v18];
  }

LABEL_9:
}

- (id)previewViewControllerForItemAtIndexPath:(id)path allowingActions:(BOOL)actions
{
  if (path)
  {
    actionsCopy = actions;
    pathCopy = path;
    _createBrowsingSession = [(PUOneUpPresentationHelper *)self _createBrowsingSession];
    [(PUOneUpPresentationHelper *)self _navigateToAssetAtIndexPath:pathCopy inBrowsingSession:_createBrowsingSession];

    if (self->_delegateFlags.respondsToAdditionalOptions)
    {
      delegate = [(PUOneUpPresentationHelper *)self delegate];
      v9 = [delegate oneUpPresentationHelperAdditionalOptions:self];
    }

    else
    {
      v9 = 0;
    }

    if (self->_delegateFlags.respondsToShouldLeaveContentOnSecondScreen)
    {
      delegate2 = [(PUOneUpPresentationHelper *)self delegate];
      v12 = [delegate2 oneUpPresentationHelperShouldLeaveContentOnSecondScreen:self];

      if (v12)
      {
        v9 |= 4uLL;
      }
    }

    if (self->_delegateFlags.respondsToShouldDisableAutoPlayback)
    {
      delegate3 = [(PUOneUpPresentationHelper *)self delegate];
      v14 = [delegate3 oneUpPresentationHelperShouldDisableAutoPlayback:self];

      if (v14)
      {
        v9 |= 0x1000000uLL;
      }
    }

    v10 = [(PUOneUpPresentationHelper *)self _createOneUpViewControllerWithBrowsingSession:_createBrowsingSession options:v9 activity:0 editActivityCompletion:0];
    [v10 setAppearanceTransitionAnimationsDisabled:1];
    viewModel = [_createBrowsingSession viewModel];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__PUOneUpPresentationHelper_previewViewControllerForItemAtIndexPath_allowingActions___block_invoke;
    v18[3] = &unk_1E7B80DD0;
    v19 = _createBrowsingSession;
    v16 = _createBrowsingSession;
    [viewModel performChanges:v18];

    [v10 setAllowsPreviewActions:actionsCopy];
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

- (id)_createOneUpViewControllerWithBrowsingSession:(id)session options:(unint64_t)options activity:(unint64_t)activity editActivityCompletion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  if (self->_delegateFlags.respondsToPreventRevealInMomentAction)
  {
    delegate = [(PUOneUpPresentationHelper *)self delegate];
    v13 = [delegate oneUpPresentationHelperPreventRevealInMomentAction:self];

    if (v13)
    {
      options |= 0x10uLL;
    }
  }

  if (self->_delegateFlags.respondsToWantsShowInLibraryButton)
  {
    delegate2 = [(PUOneUpPresentationHelper *)self delegate];
    v15 = [delegate2 oneUpPresentationHelperWantsShowInLibraryButton:self];

    if (v15)
    {
      options |= 0x8000uLL;
    }
  }

  if (self->_delegateFlags.respondsToPreventHideAssetAction)
  {
    delegate3 = [(PUOneUpPresentationHelper *)self delegate];
    v17 = [delegate3 oneUpPresentationHelperPreventHideAssetAction:self];

    if (v17)
    {
      options |= 0x200000uLL;
    }
  }

  if (self->_delegateFlags.respondsToPreventPeopleOrnament)
  {
    delegate4 = [(PUOneUpPresentationHelper *)self delegate];
    v19 = [delegate4 oneUpPresentationHelperPreventPeopleOrnament:self];

    if (v19)
    {
      options |= 0x400000uLL;
    }
  }

  if (self->_delegateFlags.respondsToPreventAlbumAttributionWidget)
  {
    delegate5 = [(PUOneUpPresentationHelper *)self delegate];
    v21 = [delegate5 oneUpPresentationHelperPreventAlbumAttributionWidget:self];

    if (v21)
    {
      options |= 0x800000uLL;
    }
  }

  v22 = [[PUOneUpViewController alloc] initWithBrowsingSession:sessionCopy options:options initialActivity:activity presentationOrigin:[(PUOneUpPresentationHelper *)self _presentationOrigin]];
  if ([(PUOneUpPresentationHelper *)self xrOSNotificationModeEnabled])
  {
    PXVisionScaledSize();
    [(PUOneUpViewController *)v22 setPreferredContentSizeOverride:?];
  }

  [(PUOneUpViewController *)v22 setEditActivityCompletion:completionCopy];
  unlockDeviceStatus = [(PUOneUpPresentationHelper *)self unlockDeviceStatus];
  [(PUOneUpViewController *)v22 setUnlockDeviceStatus:unlockDeviceStatus];

  unlockDeviceHandlerWithActionType = [(PUOneUpPresentationHelper *)self unlockDeviceHandlerWithActionType];
  [(PUOneUpViewController *)v22 setUnlockDeviceHandlerWithActionType:unlockDeviceHandlerWithActionType];

  if (self->_delegateFlags.respondsToSearchContext)
  {
    delegate6 = [(PUOneUpPresentationHelper *)self delegate];
    delegate7 = [delegate6 oneUpPresentationHelperSearchQueryMatchInfo:self];

    ocrTexts = [delegate7 ocrTexts];
    [(PUOneUpViewController *)v22 setTextsToHighlight:ocrTexts];

    ocrAssetUUIDs = [delegate7 ocrAssetUUIDs];
    [(PUOneUpViewController *)v22 setAssetUUIDsAllowedToHighlightText:ocrAssetUUIDs];
  }

  else
  {
    if (!self->_delegateFlags.respondsToTextsToHighlight)
    {
      goto LABEL_23;
    }

    delegate7 = [(PUOneUpPresentationHelper *)self delegate];
    ocrAssetUUIDs = [delegate7 oneUpPresentationHelperTextsToHighlight:self];
    [(PUOneUpViewController *)v22 setTextsToHighlight:ocrAssetUUIDs];
  }

LABEL_23:
  if (self->_delegateFlags.respondsToAssetUUIDsAllowedToHighlightText)
  {
    delegate8 = [(PUOneUpPresentationHelper *)self delegate];
    v30 = [delegate8 oneUpPresentationHelperAssetUUIDsAllowedToHighlightText:self];
    [(PUOneUpViewController *)v22 setAssetUUIDsAllowedToHighlightText:v30];
  }

  return v22;
}

- (void)_didFinishTransitioningToOneUp
{
  [(PUOneUpPresentationHelper *)self _setState:3];
  if (self->_delegateFlags.respondsToDidPresentOneUpViewController)
  {
    delegate = [(PUOneUpPresentationHelper *)self delegate];
    _oneUpViewController = [(PUOneUpPresentationHelper *)self _oneUpViewController];
    [delegate oneUpPresentationHelper:self didPresentOneUpViewController:_oneUpViewController];
  }

  _presentationOrigin = [(PUOneUpPresentationHelper *)self _presentationOrigin];
  [MEMORY[0x1E69C3338] transitionAnimationDidEnd:1 fromOrigin:_presentationOrigin transitionObject:self];
  browsingSession = [(PUOneUpPresentationHelper *)self browsingSession];
  viewModel = [browsingSession viewModel];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PUOneUpPresentationHelper__didFinishTransitioningToOneUp__block_invoke;
  v9[3] = &unk_1E7B80DD0;
  v10 = viewModel;
  v8 = viewModel;
  [v8 performChanges:v9];
}

uint64_t __59__PUOneUpPresentationHelper__didFinishTransitioningToOneUp__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVideoContentAllowed:1 forReason:@"OneUpIsPresented"];
  v2 = *(a1 + 32);

  return [v2 stopPreventingLivePhotoContentForReason:@"OneUpIsPresented"];
}

- (void)_disappearingTilingView:(id)view animationCompleted:(BOOL)completed
{
  viewCopy = view;
  _disappearingTilingView = [(PUOneUpPresentationHelper *)self _disappearingTilingView];

  if (_disappearingTilingView == viewCopy)
  {
    [(PUOneUpPresentationHelper *)self _setDisappearingTilingView:0];

    [(PUOneUpPresentationHelper *)self _setState:0];
  }
}

- (void)_cleanUpAfterTilingViewTransitionAnimated:(BOOL)animated transitionAborted:(BOOL)aborted
{
  abortedCopy = aborted;
  animatedCopy = animated;
  v46 = *MEMORY[0x1E69E9840];
  _presentationOrigin = [(PUOneUpPresentationHelper *)self _presentationOrigin];
  [MEMORY[0x1E69C3338] transitionAnimationDidEnd:2 fromOrigin:_presentationOrigin transitionObject:self];
  if (abortedCopy)
  {
    v8 = 7;
  }

  else
  {
    v8 = 6;
  }

  [(PUOneUpPresentationHelper *)self _setState:v8];
  _tilingView = [(PUOneUpPresentationHelper *)self _tilingView];
  _oneUpViewController = [(PUOneUpPresentationHelper *)self _oneUpViewController];
  [(PUOneUpPresentationHelper *)self _setTilingView:0];
  [(PUOneUpPresentationHelper *)self _setTransitioningTilingView:0];
  [(PUOneUpPresentationHelper *)self _setAssetReferencesDisplayedInTilingView:0];
  [(PUOneUpPresentationHelper *)self _setOneUpViewController:0];
  layout = [_tilingView layout];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = layout;
  }

  else
  {
    v11 = 0;
  }

  v33 = v11;
  assetReference = [v11 assetReference];
  v13 = assetReference;
  v14 = 0;
  if (self->_delegateFlags.respondsToScrollView && assetReference)
  {
    delegate = [(PUOneUpPresentationHelper *)self delegate];
    v14 = [delegate oneUpPresentationHelper:self presentingScrollViewForAssetReference:v13];
  }

  layoutRegionOfInterest = [(PUOneUpPresentationHelper *)self layoutRegionOfInterest];
  v17 = layoutRegionOfInterest;
  if (v14 || ([layoutRegionOfInterest containingScrollViews], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "firstObject"), v14 = objc_claimAutoreleasedReturnValue(), v18, v14))
  {
    [v14 _removeScrollViewScrollObserver:self];
    [_tilingView px_transferToSuperview:v14];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  containingScrollViews = [v17 containingScrollViews];
  v20 = [containingScrollViews countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v20)
  {
    v21 = *v42;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(containingScrollViews);
        }

        [*(*(&v41 + 1) + 8 * i) _removeScrollViewScrollObserver:self];
      }

      v20 = [containingScrollViews countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v20);
  }

  [(PUOneUpPresentationHelper *)self _setDisappearingTilingView:_tilingView];
  [_tilingView setUserInteractionEnabled:0];
  if (animatedCopy)
  {
    if (self->_delegateFlags.respondsToDisableFinalFadeoutAnimation)
    {
      delegate2 = [(PUOneUpPresentationHelper *)self delegate];
      v24 = [delegate2 oneUpPresentationHelperDisableFinalFadeoutAnimation:self];

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
  v26 = _tilingView;
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
    delegate3 = [(PUOneUpPresentationHelper *)self delegate];
    [delegate3 oneUpPresentationHelper:self didDismissOneUpViewController:_oneUpViewController];
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
    browsingSession = [(PUOneUpPresentationHelper *)self browsingSession];
    viewModel = [browsingSession viewModel];
    assetsDataSource = [viewModel assetsDataSource];

    identifier = [assetsDataSource identifier];
    v7 = [MEMORY[0x1E695DFA8] setWithCapacity:3];
    _transitioningTilingView = [(PUOneUpPresentationHelper *)self _transitioningTilingView];
    [_transitioningTilingView bounds];
    v21 = CGRectInset(v20, 1.0, 1.0);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__PUOneUpPresentationHelper__updateAssetReferencesDisplayedInTilingView__block_invoke;
    v16[3] = &unk_1E7B79D00;
    v17 = identifier;
    v18 = assetsDataSource;
    v19 = v7;
    v13 = v7;
    v14 = assetsDataSource;
    v15 = identifier;
    [_transitioningTilingView enumeratePresentedTileControllersInRect:v16 usingBlock:{x, y, width, height}];
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

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  _tapGestureRecognizer = [(PUOneUpPresentationHelper *)self _tapGestureRecognizer];

  if (_tapGestureRecognizer == tapCopy && [tapCopy state] == 3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__44889;
    v15 = __Block_byref_object_dispose__44890;
    v16 = 0;
    _tilingView = [(PUOneUpPresentationHelper *)self _tilingView];
    if (!_tilingView)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1531 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];
    }

    [tapCopy locationInView:_tilingView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__PUOneUpPresentationHelper__handleTap___block_invoke;
    v10[3] = &unk_1E7B79FF8;
    v10[4] = &v11;
    [_tilingView enumeratePresentedTileControllersInRect:v10 usingBlock:?];
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
    delegate = [(PUOneUpPresentationHelper *)self delegate];
    view = [delegate oneUpPresentationHelperViewHostingGestureRecognizers:self];
  }

  else
  {
    delegate = [(PUOneUpPresentationHelper *)self presentingViewController];
    if (![delegate isViewLoaded])
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_9;
    }

    view = [delegate view];
  }

  v5 = view;

  if (!v5)
  {
    v6 = 0;
    goto LABEL_10;
  }

  delegate = [(PUOneUpPresentationHelper *)self _tilingView];
  v6 = delegate != 0;
LABEL_9:

LABEL_10:
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__44889;
  v21 = __Block_byref_object_dispose__44890;
  _tapGestureRecognizer = [(PUOneUpPresentationHelper *)self _tapGestureRecognizer];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PUOneUpPresentationHelper__updateTapGestureRecognizer__block_invoke;
  aBlock[3] = &unk_1E7B7FFC0;
  v7 = v5;
  selfCopy = self;
  v16 = &v17;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (v6)
  {
    view2 = [v18[5] view];

    if (view2)
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
  browsingSession = [(PUOneUpPresentationHelper *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  assetsDataSource = [viewModel assetsDataSource];
  v7 = [assetsDataSource assetReferenceForAssetReference:currentAssetReference];
  v8 = [(PUTilingLayout *)[PUSingleAssetLayout alloc] initWithDataSource:assetsDataSource];
  [(PUSingleAssetLayout *)v8 setAssetReference:v7];
  [(PUOneUpPresentationHelper *)self _updateLayout:v8];

  return v8;
}

- (int64_t)_currentNavigationControllerOperation
{
  _state = [(PUOneUpPresentationHelper *)self _state];
  if ((_state - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1B3D0D2C8[_state - 1];
  }
}

- (id)_currentTilingViewControllerTransition
{
  presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
  navigationController = [presentingViewController navigationController];
  pu_currentInteractiveTransition = [navigationController pu_currentInteractiveTransition];

  if (!pu_currentInteractiveTransition)
  {
    presentingViewController2 = [(PUOneUpPresentationHelper *)self presentingViewController];
    presentedViewController = [presentingViewController2 presentedViewController];
    pu_currentInteractiveTransition = [presentedViewController pu_modalTransition];

    if (!pu_currentInteractiveTransition)
    {
      _oneUpViewController = [(PUOneUpPresentationHelper *)self _oneUpViewController];
      navigationController2 = [_oneUpViewController navigationController];
      pu_currentInteractiveTransition = [navigationController2 pu_modalTransition];
    }
  }

  if (([pu_currentInteractiveTransition conformsToProtocol:&unk_1F2C96DD8] & 1) == 0)
  {

    pu_currentInteractiveTransition = 0;
  }

  return pu_currentInteractiveTransition;
}

- (void)_updateLayout:(id)layout
{
  v76 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1368 description:{@"Invalid parameter not satisfying: %@", @"[layout isKindOfClass:[PUSingleAssetLayout class]]"}];
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
  assetReference = [layoutCopy assetReference];
  if (!assetReference)
  {
    v20 = 0;
    cornerMask = 0;
    cornerCurve = 0;
    v35 = 0.0;
    v36 = 1.0;
    v37 = 1.0;
    v38 = 0.0;
    v39 = 0.0;
    goto LABEL_19;
  }

  assetDisplayDelegate = [(PUOneUpPresentationHelper *)self assetDisplayDelegate];
  if ([(PUOneUpPresentationHelper *)self _state]== 4 && self->_assetDisplayDelegateFlags.respondsToScrollAssetReferenceToVisible)
  {
    [assetDisplayDelegate oneUpPresentationHelper:self scrollAssetReferenceToVisible:assetReference];
  }

  _transitionHostingView = [(PUOneUpPresentationHelper *)self _transitionHostingView];
  if (!self->_assetDisplayDelegateFlags.respondsToRegionOfInterestForAssetReference)
  {
    if (objc_opt_respondsToSelector())
    {
      [assetDisplayDelegate oneUpPresentationHelper:self rectForAssetReference:assetReference cropInsets:&v73 contentsRect:&v70];
      x = v40;
      y = v41;
      width = v42;
      height = v43;
    }

    presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
    view = [presentingViewController view];
    [_transitionHostingView convertRect:view fromCoordinateSpace:{x, y, width, height}];
    v22 = v46;
    v24 = v47;
    v26 = v48;
    v28 = v49;

    v20 = 0;
    goto LABEL_17;
  }

  v19 = [assetDisplayDelegate oneUpPresentationHelper:self regionOfInterestForAssetReference:assetReference cropInsets:&v73];
  v20 = v19;
  if (v19)
  {
    [v19 rectInCoordinateSpace:_transitionHostingView];
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
    [_transitionHostingView bounds];
    PXPointDenormalize();
    PXRectWithCenterAndSize();
    v22 = v50;
    v24 = v51;
    v26 = v52;
    v28 = v53;
  }

  imageViewSpec = [v20 imageViewSpec];
  presentingViewController = imageViewSpec;
  if (!imageViewSpec)
  {
LABEL_17:
    cornerMask = 0;
    cornerCurve = 0;
    v39 = 0.0;
    goto LABEL_18;
  }

  [imageViewSpec cornerRadius];
  v39 = v55;
  cornerCurve = [presentingViewController cornerCurve];
  cornerMask = [presentingViewController cornerMask];
LABEL_18:

  memset(&v69, 0, sizeof(v69));
  [(PUOneUpPresentationHelper *)self _tilingViewTransitionTransform];
  [_transitionHostingView bounds];
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
  [layoutCopy setContentsRect:{v38, v35, v37, v36}];
  [layoutCopy setAssetRect:{x, y, width, height}];
  [layoutCopy setCropInsets:{v73, v74}];
  [layoutCopy setCornerRadius:v39];
  [layoutCopy setCornerCurve:cornerCurve];
  [layoutCopy setCornerMask:cornerMask];
  [(PUOneUpPresentationHelper *)self setLayoutRegionOfInterest:v20];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  containingScrollViews = [v20 containingScrollViews];
  v57 = [containingScrollViews countByEnumeratingWithState:&v62 objects:v75 count:16];
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
          objc_enumerationMutation(containingScrollViews);
        }

        [*(*(&v62 + 1) + 8 * i) _addScrollViewScrollObserver:self];
      }

      v58 = [containingScrollViews countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v58);
  }
}

- (void)_setAssetReferencesDisplayedInTilingView:(id)view
{
  viewCopy = view;
  v6 = viewCopy;
  if (self->__assetReferencesDisplayedInTilingView != viewCopy)
  {
    v8 = viewCopy;
    viewCopy = [(NSSet *)viewCopy isEqualToSet:?];
    v6 = v8;
    if ((viewCopy & 1) == 0)
    {
      objc_storeStrong(&self->__assetReferencesDisplayedInTilingView, view);
      v6 = v8;
      if (self->_assetDisplayDelegateFlags.respondsToShouldHideAssetReferences)
      {
        assetDisplayDelegate = [(PUOneUpPresentationHelper *)self assetDisplayDelegate];
        [assetDisplayDelegate oneUpPresentationHelper:self shouldHideAssetReferences:v8];

        v6 = v8;
      }
    }
  }

  MEMORY[0x1EEE66BB8](viewCopy, v6);
}

- (void)_setTransitioningTilingView:(id)view
{
  v14 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  transitioningTilingView = self->__transitioningTilingView;
  if (transitioningTilingView != viewCopy)
  {
    if (transitioningTilingView)
    {
      tileUseDelegate = [(PUTilingView *)transitioningTilingView tileUseDelegate];

      if (tileUseDelegate != self)
      {
        v8 = PXAssertGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          tileUseDelegate2 = [(PUTilingView *)self->__transitioningTilingView tileUseDelegate];
          v10 = 138412546;
          selfCopy = self;
          v12 = 2112;
          v13 = tileUseDelegate2;
          _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "currently, only PUOneUpPresentationHelper is expecting to be a tileUseDelegate. self: %@, tilingView's tileUseDelegate: %@", &v10, 0x16u);
        }
      }
    }

    [(PUTilingView *)self->__transitioningTilingView setTileUseDelegate:0];
    objc_storeStrong(&self->__transitioningTilingView, view);
    [(PUTilingView *)self->__transitioningTilingView setTileUseDelegate:self];
    [(PUOneUpPresentationHelper *)self _updateAssetReferencesDisplayedInTilingView];
  }
}

- (void)_setOneUpViewController:(id)controller
{
  controllerCopy = controller;
  p_oneUpViewController = &self->__oneUpViewController;
  if (self->__oneUpViewController != controllerCopy)
  {
    v8 = controllerCopy;
    objc_storeStrong(p_oneUpViewController, controller);
    browsingSession = [(PUOneUpViewController *)v8 browsingSession];
    [(PUOneUpPresentationHelper *)self _setBrowsingSession:browsingSession];

    controllerCopy = v8;
  }

  MEMORY[0x1EEE66BB8](p_oneUpViewController, controllerCopy);
}

- (void)_setTilingView:(id)view
{
  viewCopy = view;
  tilingView = self->__tilingView;
  if (tilingView != viewCopy)
  {
    v7 = viewCopy;
    [(PUTilingView *)tilingView setUserInteractionEnabled:1];
    [(PUTilingView *)self->__tilingView setTileSource:0];
    [(PUTilingView *)self->__tilingView setTileTransitionDelegate:0];
    objc_storeStrong(&self->__tilingView, view);
    [(PUTilingView *)self->__tilingView setUserInteractionEnabled:0];
    [(PUTilingView *)self->__tilingView setTileSource:self];
    [(PUTilingView *)self->__tilingView setTileTransitionDelegate:self];
    tilingView = [(PUOneUpPresentationHelper *)self _updateTapGestureRecognizer];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](tilingView, viewCopy);
}

- (void)_ensureRegistrationWithPresentingViewController
{
  presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
  v5 = presentingViewController;
  if (presentingViewController)
  {
    [PUTilingViewTransitionHelper registerTransitionEndPoint:self forViewController:presentingViewController];
    presentingViewController = v5;
  }

  splitViewController = [presentingViewController splitViewController];
  if (splitViewController)
  {
    [PUTilingViewTransitionHelper registerTransitionEndPoint:self forViewController:splitViewController];
  }
}

- (id)_transitionHostingView
{
  presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
  if ([(PUOneUpPresentationHelper *)self transitionType]== 2)
  {
LABEL_2:
    viewIfLoaded = [presentingViewController viewIfLoaded];
    window = [viewIfLoaded window];

    while (1)
    {
      if ([presentingViewController px_oneUpPresentationStyle] == 1)
      {
        if (window)
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

      parentViewController = [presentingViewController parentViewController];
      if (!parentViewController)
      {
        if ([presentingViewController modalPresentationStyle] != 3)
        {
          break;
        }

        parentViewController = [presentingViewController presentingViewController];
        if (!parentViewController)
        {
          break;
        }
      }

      v8 = parentViewController;

      presentingViewController = v8;
      if (!window)
      {
        goto LABEL_2;
      }
    }
  }

  window = [presentingViewController view];
LABEL_15:

  return window;
}

- (void)_presentationEndDidTimeOut:(int64_t)out
{
  if ([(PUOneUpPresentationHelper *)self _presentationEndTimeoutIdentifier]== out)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"One-up presentation took too long to end, this shouldn't happen. (state = %li)", -[PUOneUpPresentationHelper _state](self, "_state")];
    PLSimulateCrash();

    [(PUOneUpPresentationHelper *)self _cleanupOneUpViewControllerForDismissalIfNeeded];
  }
}

- (void)_setShouldPauseLibraryChanges:(BOOL)changes
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->__shouldPauseLibraryChanges != changes)
  {
    changesCopy = changes;
    self->__shouldPauseLibraryChanges = changes;
    libraryChangePauseToken = [(PUOneUpPresentationHelper *)self libraryChangePauseToken];

    if (libraryChangePauseToken)
    {
      pausedPhotoLibrary = [(PUOneUpPresentationHelper *)self pausedPhotoLibrary];
      libraryChangePauseToken2 = [(PUOneUpPresentationHelper *)self libraryChangePauseToken];
      [pausedPhotoLibrary px_endPausingChanges:libraryChangePauseToken2];

      [(PUOneUpPresentationHelper *)self setPausedPhotoLibrary:0];
      [(PUOneUpPresentationHelper *)self setLibraryChangePauseToken:0];
    }

    if (changesCopy)
    {
      browsingSession = [(PUOneUpPresentationHelper *)self browsingSession];
      viewModel = [browsingSession viewModel];
      currentAssetReference = [viewModel currentAssetReference];
      asset = [currentAssetReference asset];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = asset;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      photoLibrary = [v13 photoLibrary];
      v15 = photoLibrary;
      if (photoLibrary)
      {
        v16 = [photoLibrary px_beginPausingChangesWithTimeout:@"PUOneUpPresentationHelper" identifier:30.0];
        [(PUOneUpPresentationHelper *)self setLibraryChangePauseToken:v16];

        [(PUOneUpPresentationHelper *)self setPausedPhotoLibrary:v15];
      }

      else
      {
        v17 = PLUIGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = asset;
          _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "_setShouldPauseLibraryChanges:YES called, but no PhotoLibrary available for displayAsset: %@", &v18, 0xCu);
        }
      }
    }
  }
}

- (void)_setEndingPresentation:(BOOL)presentation
{
  if (self->__isEndingPresentation != presentation)
  {
    v11[5] = v3;
    v11[6] = v4;
    presentationCopy = presentation;
    self->__isEndingPresentation = presentation;
    v7 = ([(PUOneUpPresentationHelper *)self _presentationEndTimeoutIdentifier]+ 1);
    [(PUOneUpPresentationHelper *)self _setPresentationEndTimeoutIdentifier:v7];
    if (presentationCopy)
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

- (void)_throwOnSetStateFromIdleToTransitioningToOneUp:(int64_t)up
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->__state];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:up];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1185 description:{@"invalid one-up presentation helper state transition: %@ -> %@", v6, v7}];
}

- (void)_throwOnSetStateFromTransitionedToOneUpToPreparingTransitionToOneUp:(int64_t)up
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->__state];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:up];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1181 description:{@"invalid one-up presentation helper state transition: %@ -> %@", v6, v7}];
}

- (void)_setState:(int64_t)state
{
  v35 = *MEMORY[0x1E69E9840];
  state = self->__state;
  if (state == state)
  {
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:state];
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&dword_1B36F3000, &v5->super, OS_LOG_TYPE_DEFAULT, "Attempting to set state with same value: %@", buf, 0xCu);
    }

    goto LABEL_59;
  }

  switch(state)
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
        if (state == 4)
        {
          goto LABEL_42;
        }

        if (state == 1)
        {
          [(PUOneUpPresentationHelper *)self _throwOnSetStateFromTransitionedToOneUpToPreparingTransitionToOneUp:1];
        }

        goto LABEL_41;
      }

      if ((state - 3) < 2)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (state)
    {
      if (state == 1 && (state & 0xFFFFFFFFFFFFFFFBLL) == 2)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (state == 1)
    {
      goto LABEL_42;
    }

LABEL_41:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->__state];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1116 description:{@"invalid one-up presentation helper state transition: %@ -> %@", v13, v14}];

    goto LABEL_42;
  }

  if (state > 5)
  {
    if (state == 6)
    {
      if (state < 2)
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
    if (state != 2 && state != 5)
    {
LABEL_37:
      if (!state && state == 2)
      {
        [(PUOneUpPresentationHelper *)self _throwOnSetStateFromIdleToTransitioningToOneUp:0];
      }

      goto LABEL_41;
    }
  }

  else if (state > 6 || ((1 << state) & 0x46) == 0)
  {
    goto LABEL_41;
  }

LABEL_42:
  v15 = PLOneUpGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->__state];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    *buf = 138412546;
    v32 = v16;
    v33 = 2112;
    v34 = v17;
    _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "Committing change from old state: %@ to new state: %@", buf, 0x16u);
  }

  v18 = 0;
  self->__state = state;
  if (state <= 4 && ((1 << state) & 0x16) != 0)
  {
    v18 = [(PUOneUpPresentationHelper *)self _isPerformingNonAnimatedPush]^ 1;
  }

  [(PUOneUpPresentationHelper *)self _setShouldPauseLibraryChanges:v18];
  v5 = self->_browsingSession;
  viewModel = [(PUBrowsingSession *)v5 viewModel];
  if (![(PUOneUpPresentationHelper *)self isOneUpPresented])
  {
    _state = [(PUOneUpPresentationHelper *)self _state];
    v22 = !self->_delegateFlags.respondsToShouldAllowVideoContentDuringTransitions && _state == 5;
    if (!self->_delegateFlags.respondsToShouldAllowVideoContentDuringTransitions || _state != 5)
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
    delegate = [(PUOneUpPresentationHelper *)self delegate];
    v22 = [delegate oneUpPresentationHelperShouldAllowVideoContentDuringTransitions:self];

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
  v25 = viewModel;
  v28 = v25;
  v29 = v20 & 1;
  v30 = v18;
  [v25 performChanges:v27];
  [(PUOneUpPresentationHelper *)self _setEndingPresentation:(self->__state - 5) < 3];
  if (self->_delegateFlags.respondsToStateDidChange)
  {
    delegate2 = [(PUOneUpPresentationHelper *)self delegate];
    [delegate2 oneUpPresentationHelperStateDidChange:self];
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

- (BOOL)_handleInteractivePresentationWithBlock:(id)block
{
  blockCopy = block;
  _currentTilingViewControllerTransition = [(PUOneUpPresentationHelper *)self _currentTilingViewControllerTransition];
  v7 = _currentTilingViewControllerTransition;
  if (_currentTilingViewControllerTransition && [_currentTilingViewControllerTransition isTransitionPaused])
  {
    _transitioningTilingView = [(PUOneUpPresentationHelper *)self _transitioningTilingView];
    if (!_transitioningTilingView)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:1032 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];
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
    blockCopy[2](blockCopy, _transitioningTilingView, v10, v11);
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

- (BOOL)handlePresentingPanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PUOneUpPresentationHelper_handlePresentingPanGestureRecognizer___block_invoke;
  v7[3] = &unk_1E7B79CD8;
  v7[4] = self;
  v8 = recognizerCopy;
  v5 = recognizerCopy;
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

- (BOOL)handlePresentingPinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PUOneUpPresentationHelper_handlePresentingPinchGestureRecognizer___block_invoke;
  v7[3] = &unk_1E7B79CD8;
  v7[4] = self;
  v8 = recognizerCopy;
  v5 = recognizerCopy;
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

- (void)presentingViewControllerViewDidDisappear:(BOOL)disappear
{
  [(PUOneUpPresentationHelper *)self _setTransitioningTilingView:0];
  if ([(PUOneUpPresentationHelper *)self _state]== 2)
  {
    [(PUOneUpPresentationHelper *)self _didFinishTransitioningToOneUp];
  }

  self->_isPresentingViewControllerAppearingWithIdleState = 0;
}

- (void)presentingViewControllerViewWillDisappear:(BOOL)disappear
{
  if ([(PUOneUpPresentationHelper *)self _isEndingPresentation])
  {
    [(PUOneUpPresentationHelper *)self _cleanupOneUpViewControllerForDismissalIfNeeded];
  }

  self->_isPresentingViewControllerAppearingWithIdleState = 0;
}

- (void)presentingViewControllerViewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  _state = [(PUOneUpPresentationHelper *)self _state];
  if (appearCopy)
  {
    _oneUpViewController = [(PUOneUpPresentationHelper *)self _oneUpViewController];
    pu_navigationTransition = [_oneUpViewController pu_navigationTransition];
    navigationController = [_oneUpViewController navigationController];
    pu_currentNavigationTransition = [navigationController pu_currentNavigationTransition];

    if (pu_navigationTransition != pu_currentNavigationTransition)
    {
      [(PUOneUpPresentationHelper *)self _setAssetReferencesDisplayedInTilingView:0];
    }

    if (_state == 3)
    {
      _presentationOrigin = [(PUOneUpPresentationHelper *)self _presentationOrigin];
      [MEMORY[0x1E69C3338] transitionPreparationDidBegin:2 fromOrigin:_presentationOrigin transitionObject:self];
    }
  }

  self->_isPresentingViewControllerAppearingWithIdleState = _state == 0;
}

- (void)_cleanupOneUpViewControllerForDismissalIfNeeded
{
  _state = [(PUOneUpPresentationHelper *)self _state];
  if ((_state - 2) < 3)
  {
    [(PUOneUpPresentationHelper *)self _setState:4];
    [(PUOneUpPresentationHelper *)self _setState:5];
LABEL_8:
    [(PUOneUpPresentationHelper *)self _cleanUpAfterTilingViewTransitionAnimated:0 transitionAborted:0];
    goto LABEL_9;
  }

  if (_state == 5)
  {
    goto LABEL_8;
  }

  if (_state == 1)
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
  _disappearingTilingView = [(PUOneUpPresentationHelper *)self _disappearingTilingView];
  v6 = _disappearingTilingView;
  if (_disappearingTilingView)
  {
    [_disappearingTilingView removeFromSuperview];
    [(PUOneUpPresentationHelper *)self _disappearingTilingView:v6 animationCompleted:1];
  }
}

void __76__PUOneUpPresentationHelper__cleanupOneUpViewControllerForDismissalIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupOneUpViewControllerForDismissalIfNeeded];
}

- (BOOL)dismissOneUpViewControllerForced:(BOOL)forced animated:(BOOL)animated
{
  animatedCopy = animated;
  forcedCopy = forced;
  v26 = *MEMORY[0x1E69E9840];
  _oneUpViewController = [(PUOneUpPresentationHelper *)self _oneUpViewController];
  if (!_oneUpViewController)
  {
    goto LABEL_28;
  }

  v9 = [(PUOneUpPresentationHelper *)self _prepareDismissalForced:forcedCopy];
  if (forcedCopy || v9)
  {
    if (!animatedCopy)
    {
      [(PUOneUpPresentationHelper *)self _cleanupOneUpViewControllerForDismissalIfNeeded];
    }

    presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
    navigationController = [presentingViewController navigationController];
    if (navigationController)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    px_splitViewController = [presentingViewController px_splitViewController];

    if (px_splitViewController)
    {
      v15 = 2;
    }

    else
    {
      v15 = v13;
    }

    if (self->_delegateFlags.respondsToTransitionTypeWithProposedTransitionType)
    {
      delegate = [(PUOneUpPresentationHelper *)self delegate];
      v15 = [delegate oneUpPresentationHelper:self transitionTypeWithProposedTransitionType:v15];
    }

    if (v15 == 2)
    {
      [presentingViewController pu_dismissViewControllerAnimated:animatedCopy interactive:0 completion:0];
      goto LABEL_27;
    }

    if (v15 == 1)
    {
      if (!navigationController)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:848 description:{@"Invalid parameter not satisfying: %@", @"navigationController != nil"}];
      }

      topViewController = [navigationController topViewController];

      if (topViewController == _oneUpViewController)
      {
        [navigationController pu_popViewControllerAnimated:animatedCopy interactive:0];
        goto LABEL_27;
      }

      currentHandler2 = PLUIGetLog();
      if (os_log_type_enabled(currentHandler2, OS_LOG_TYPE_DEFAULT))
      {
        childViewControllers = [navigationController childViewControllers];
        *buf = 138412546;
        v23 = _oneUpViewController;
        v24 = 2112;
        v25 = childViewControllers;
        _os_log_impl(&dword_1B36F3000, currentHandler2, OS_LOG_TYPE_DEFAULT, "attempting to pop oneUpViewController:%@ that isn't part of the navigation controller's children:%@", buf, 0x16u);
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

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:844 description:@"undefined transition type"];
    }

    goto LABEL_27;
  }

  v10 = 0;
LABEL_29:

  return v10;
}

- (BOOL)_prepareDismissalForced:(BOOL)forced
{
  forcedCopy = forced;
  _oneUpViewController = [(PUOneUpPresentationHelper *)self _oneUpViewController];
  v5 = _oneUpViewController;
  if (_oneUpViewController)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__PUOneUpPresentationHelper__prepareDismissalForced___block_invoke;
    v11[3] = &__block_descriptor_33_e26_B16__0__UIViewController_8l;
    v12 = forcedCopy;
    v6 = [_oneUpViewController pl_visitControllerHierarchyWithBlock:v11];
    if ([v5 conformsToProtocol:&unk_1F2C4EA78])
    {
      v7 = [v5 overOneUpPresentationSessionCreateIfNeeded:0];
      v8 = v7;
      v9 = (v7 == 0) & v6;
      if (v7 && ((v6 ^ 1) & 1) == 0)
      {
        v9 = [v7 prepareForDismissingForced:forcedCopy];
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

- (void)presentOneUpViewControllerFromAssetAtIndexPath:(id)path animated:(BOOL)animated interactiveMode:(int64_t)mode activity:(unint64_t)activity isNavigationSourceWidget:(BOOL)widget editActivityCompletion:(id)completion
{
  widgetCopy = widget;
  animatedCopy = animated;
  pathCopy = path;
  completionCopy = completion;
  browsingSession = [(PUOneUpPresentationHelper *)self browsingSession];
  viewModel = [browsingSession viewModel];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __158__PUOneUpPresentationHelper_presentOneUpViewControllerFromAssetAtIndexPath_animated_interactiveMode_activity_isNavigationSourceWidget_editActivityCompletion___block_invoke;
  v19[3] = &unk_1E7B80DD0;
  v20 = viewModel;
  v18 = viewModel;
  [v18 performChanges:v19];
  if (pathCopy)
  {
    [(PUOneUpPresentationHelper *)self _navigateToAssetAtIndexPath:pathCopy inBrowsingSession:browsingSession isNavigationSourceWidget:widgetCopy];
  }

  [(PUOneUpPresentationHelper *)self presentOneUpViewControllerAnimated:animatedCopy interactiveMode:mode activity:activity editActivityCompletion:completionCopy];
}

- (void)presentOneUpViewControllerAnimated:(BOOL)animated interactiveMode:(int64_t)mode activity:(unint64_t)activity editActivityCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(PUOneUpPresentationHelper *)self canPresentOneUpViewControllerAnimated:animatedCopy])
  {
    delegate = [(PUOneUpPresentationHelper *)self delegate];
    v12 = [delegate oneUpPresentationOrigin:self];

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
    _disappearingTilingView = [(PUOneUpPresentationHelper *)self _disappearingTilingView];

    if (_disappearingTilingView)
    {
      _disappearingTilingView2 = [(PUOneUpPresentationHelper *)self _disappearingTilingView];
      [_disappearingTilingView2 removeFromSuperview];

      [(PUOneUpPresentationHelper *)self _setDisappearingTilingView:0];
    }

    activityCopy = activity;
    modeCopy = mode;
    v16 = PLOneUpGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Updating state from presentOneUpViewControllerAnimated", &buf, 2u);
    }

    [(PUOneUpPresentationHelper *)self _setState:1];
    browsingSession = [(PUOneUpPresentationHelper *)self browsingSession];
    _oneUpViewController = [(PUOneUpPresentationHelper *)self _oneUpViewController];
    presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
    [(PUOneUpPresentationHelper *)self _ensureRegistrationWithPresentingViewController];
    viewModel = [browsingSession viewModel];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __112__PUOneUpPresentationHelper_presentOneUpViewControllerAnimated_interactiveMode_activity_editActivityCompletion___block_invoke_322;
    v63[3] = &unk_1E7B80C38;
    v21 = viewModel;
    v64 = v21;
    v22 = browsingSession;
    v65 = v22;
    [v21 performChanges:v63];
    _tilingView = [(PUOneUpPresentationHelper *)self _tilingView];
    if (self->_delegateFlags.respondsToAdditionalOptions)
    {
      delegate2 = [(PUOneUpPresentationHelper *)self delegate];
      v25 = [delegate2 oneUpPresentationHelperAdditionalOptions:self];
    }

    else
    {
      v25 = 0;
    }

    if (self->_delegateFlags.respondsToShouldLeaveContentOnSecondScreen)
    {
      delegate3 = [(PUOneUpPresentationHelper *)self delegate];
      v52 = v21;
      v27 = v22;
      v28 = completionCopy;
      v29 = presentingViewController;
      v30 = [delegate3 oneUpPresentationHelperShouldLeaveContentOnSecondScreen:self];

      v31 = v30 == 0;
      presentingViewController = v29;
      completionCopy = v28;
      v22 = v27;
      v21 = v52;
      if (!v31)
      {
        v25 |= 4uLL;
      }
    }

    if (animatedCopy || _oneUpViewController)
    {
      _newCollapsedLayout = [(PUOneUpPresentationHelper *)self _newCollapsedLayout];
      v54 = presentingViewController;
      if (_tilingView)
      {
        tileTransitionDelegate = [(PUTilingView *)_tilingView tileTransitionDelegate];
        if (!animatedCopy)
        {
          [(PUTilingView *)_tilingView setTileTransitionDelegate:0];
        }

        [(PUTilingView *)_tilingView transitionToLayout:_newCollapsedLayout];
        [(PUTilingView *)_tilingView layoutIfNeeded];
        [(PUTilingView *)_tilingView setTileTransitionDelegate:tileTransitionDelegate];
      }

      else
      {
        tileTransitionDelegate = [presentingViewController view];
        _transitionHostingView = [(PUOneUpPresentationHelper *)self _transitionHostingView];
        [_transitionHostingView bounds];
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
        [tileTransitionDelegate convertRect:_transitionHostingView fromCoordinateSpace:{v70.origin.x, v70.origin.y, v70.size.width, v70.size.height}];
        v53 = _newCollapsedLayout;
        _tilingView = [[PUTilingView alloc] initWithFrame:_newCollapsedLayout layout:v44, v45, v46, v47];
        v57 = buf;
        CGAffineTransformInvert(&v58, &v57);
        [(PUTilingView *)_tilingView setTransform:&v58];
        if ((v25 & 0x10000) != 0)
        {
          [(PUOneUpPresentationHelper *)self presentingViewController];
          v48 = v51 = _transitionHostingView;
          traitCollection = [v48 traitCollection];
          -[PUTilingView setOverrideUserInterfaceStyle:](_tilingView, "setOverrideUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

          _transitionHostingView = v51;
        }

        if ((v25 & 2) == 0)
        {
          [(PUTilingView *)_tilingView configureDynamicRangeProperties];
        }

        [tileTransitionDelegate addSubview:_tilingView];
        browsingSession2 = [(PUOneUpPresentationHelper *)self browsingSession];
        [browsingSession2 configureTilingView:_tilingView];
        [(PUOneUpPresentationHelper *)self _setTilingView:_tilingView];
        [(PUOneUpPresentationHelper *)self _setTransitioningTilingView:_tilingView];

        _newCollapsedLayout = v53;
      }

      if (!_oneUpViewController)
      {
        _oneUpViewController = [(PUOneUpPresentationHelper *)self _createOneUpViewControllerWithBrowsingSession:v22 options:v25 | 1 activity:activityCopy editActivityCompletion:completionCopy];
      }

      [(PUOneUpPresentationHelper *)self _presentOneUpViewController:_oneUpViewController animated:1 interactiveMode:modeCopy completion:0];

      presentingViewController = v54;
    }

    else
    {
      if (_tilingView)
      {
        _oneUpViewController = [(PUOneUpPresentationHelper *)self _createOneUpViewControllerWithBrowsingSession:v22 options:v25 | 1 activity:activityCopy editActivityCompletion:completionCopy];
        v32 = [_oneUpViewController tilingViewControllerTransitionTilingViewHostView:0];
        [v32 bounds];
        [(PUTilingView *)_tilingView setFrame:?];
        [(PUTilingView *)_tilingView setAutoresizingMask:18];
        [v32 addSubview:_tilingView];
        [(PUOneUpPresentationHelper *)self _setTilingView:0];
        [_oneUpViewController tilingViewControllerTransition:0 adoptTilingView:_tilingView fromEndPoint:0 isCancelingTransition:0 animationSetupCompletionHandler:0];
      }

      else
      {
        _oneUpViewController = [(PUOneUpPresentationHelper *)self _createOneUpViewControllerWithBrowsingSession:v22 options:v25 activity:activityCopy editActivityCompletion:completionCopy];
        [_oneUpViewController setAppearanceTransitionAnimationsDisabled:1];
      }

      [(PUOneUpPresentationHelper *)self _presentOneUpViewController:_oneUpViewController animated:0 interactiveMode:modeCopy completion:0];
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
  _transitionHostingView = [(PUOneUpPresentationHelper *)self _transitionHostingView];
  v6 = _transitionHostingView;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  if (_transitionHostingView)
  {
    [_transitionHostingView transform];
  }

  presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
  respondsToPreferredPresentationOrientation = self->_delegateFlags.respondsToPreferredPresentationOrientation;
  if ([presentingViewController supportedInterfaceOrientations] == 2 && respondsToPreferredPresentationOrientation)
  {
    delegate = [(PUOneUpPresentationHelper *)self delegate];
    v10 = [delegate oneUpPresentationHelperPreferredPresentationOrientation:self];

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

- (BOOL)canPresentOneUpViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v26 = *MEMORY[0x1E69E9840];
  _state = [(PUOneUpPresentationHelper *)self _state];
  if ((_state - 1) >= 4)
  {
    presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
    v7 = [presentingViewController px_canPresentViewControllerAnimated:animatedCopy];
  }

  else
  {
    v7 = 0;
  }

  if ((_state - 1) >= 3)
  {
    if (_state == 4)
    {
      return v7;
    }

    if ((_state == 4) | v7 & 1)
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
    v11 = [MEMORY[0x1E696AD98] numberWithBool:animatedCopy];
    v12 = MEMORY[0x1E696AD98];
    presentingViewController2 = [(PUOneUpPresentationHelper *)self presentingViewController];
    v14 = [v12 numberWithBool:{objc_msgSend(presentingViewController2, "px_isVisible")}];
    presentingViewController3 = [(PUOneUpPresentationHelper *)self presentingViewController];
    presentedViewController = [presentingViewController3 presentedViewController];
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

- (void)_configureNavigationController:(id)controller
{
  controllerCopy = controller;
  v12 = controllerCopy;
  if (self->_delegateFlags.respondsToEnableFreezeLayoutOnOrientationChange)
  {
    delegate = [(PUOneUpPresentationHelper *)self delegate];
    v6 = [delegate oneUpPresentationHelperEnableFreezeLayoutOnOrientationChange:self];

    [v12 _setAllowsFreezeLayoutForOrientationChangeOnDismissal:v6];
    controllerCopy = v12;
  }

  [controllerCopy setModalPresentationStyle:0];
  delegate2 = [(PUOneUpPresentationHelper *)self delegate];
  v8 = delegate2;
  if (self->_delegateFlags.respondsToAdditionalOptions && ([delegate2 oneUpPresentationHelperAdditionalOptions:self] & 0x10000) != 0)
  {
    presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
    traitCollection = [presentingViewController traitCollection];
    [v12 setOverrideUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
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

- (void)_presentOneUpViewController:(id)controller animated:(BOOL)animated interactiveMode:(int64_t)mode completion:(id)completion
{
  animatedCopy = animated;
  v47 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  [(PUOneUpPresentationHelper *)self _setOneUpViewController:controllerCopy];
  presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
  if (!presentingViewController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:455 description:{@"presentingViewController is nil when presenting 1Up (state = %ti)", -[PUOneUpPresentationHelper _state](self, "_state")}];
  }

  navigationController = [presentingViewController navigationController];
  transitionType = [(PUOneUpPresentationHelper *)self transitionType];
  v16 = transitionType;
  if (transitionType == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = transitionType == 1;
  }

  [controllerCopy setOriginTransitionType:v17];
  if (self->_delegateFlags.respondsToWillPresentOneUpViewController)
  {
    delegate = [(PUOneUpPresentationHelper *)self delegate];
    [delegate oneUpPresentationHelper:self willPresentOneUpViewController:controllerCopy];
  }

  if (!animatedCopy)
  {
    v19 = navigationController;
    v20 = PLOneUpGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_DEFAULT, "Updating state from _presentOneUpViewController", buf, 2u);
    }

    [(PUOneUpPresentationHelper *)self _setState:2];
    navigationController = v19;
  }

  if (mode)
  {
    v21 = animatedCopy;
  }

  else
  {
    v21 = 0;
  }

  if (v16 == 2)
  {
    v23 = [[PUTilingViewModalTransition alloc] initWithEndPoint:self];
    v29 = v21;
    v21 = [[PUNavigationController alloc] initWithRootViewController:controllerCopy];
    [(PUOneUpPresentationHelper *)self _configureNavigationController:v21];
    [MEMORY[0x1E69C3730] viewController:presentingViewController willPresentOneUpInViewController:v21];
    [presentingViewController pu_presentViewController:v21 transition:v23 animated:animatedCopy interactive:v29 completion:completionCopy];

    LODWORD(v21) = v29;
    goto LABEL_39;
  }

  if (v16 == 1)
  {
    v44 = a2;
    v23 = [[PUTilingViewNavigationTransition alloc] initWithEndPoint:self];
    if (!navigationController)
    {
      v41 = v21;
      modeCopy = mode;
      v43 = completionCopy;
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"here is presentingViewController's hierarchy :\n - %@\n", presentingViewController];
      parentViewController = [presentingViewController parentViewController];
      if (parentViewController)
      {
        v26 = parentViewController;
        do
        {
          v27 = [v24 stringByAppendingFormat:@" - %@\n", v26];

          parentViewController2 = [v26 parentViewController];

          v24 = v27;
          v26 = parentViewController2;
        }

        while (parentViewController2);
      }

      else
      {
        v27 = v24;
      }

      v30 = PLOneUpGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
        recursiveDescription = [px_firstKeyWindow recursiveDescription];
        *buf = 138412290;
        v46 = recursiveDescription;
        _os_log_impl(&dword_1B36F3000, v30, OS_LOG_TYPE_ERROR, "navigationController is nil when presenting 1Up, view hierarchy => %@", buf, 0xCu);
      }

      v34 = PLOneUpGetLog();
      mode = modeCopy;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v46 = v27;
        _os_log_impl(&dword_1B36F3000, v34, OS_LOG_TYPE_ERROR, "navigationController is nil when presenting 1Up, presentingViewController's VC hierarchy: %@", buf, 0xCu);
      }

      v35 = PLOneUpGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        _printHierarchy = [MEMORY[0x1E69DD258] _printHierarchy];
        *buf = 138412290;
        v46 = _printHierarchy;
        _os_log_impl(&dword_1B36F3000, v35, OS_LOG_TYPE_ERROR, "navigationController is nil when presenting 1Up, main window hierarchy: %@", buf, 0xCu);
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:v44 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:508 description:{@"navigationController is nil when presenting 1Up (state = %ti, presentingVC = %@)\n presentingViewController's VC hierarchy: %@", -[PUOneUpPresentationHelper _state](self, "_state"), presentingViewController, v27}];

      completionCopy = v43;
      navigationController = 0;
      v21 = v41;
    }

    [navigationController pu_pushViewController:controllerCopy withTransition:v23 animated:animatedCopy isInteractive:v21];
    if (completionCopy && animatedCopy)
    {
      [MEMORY[0x1E696AAA8] currentHandler];
      v21 = v40 = v21;
      [(PUNavigationController *)v21 handleFailureInMethod:v44 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:512 description:@"_presentOneUpViewController does not support completion handlers for navigation transitions when animated"];

      LODWORD(v21) = v40;
    }

    else if (!completionCopy)
    {
      goto LABEL_39;
    }

    if (!animatedCopy)
    {
      completionCopy[2](completionCopy);
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
    if (mode == 2)
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
  presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
  px_topmostPresentedViewController = [(UIViewController *)presentingViewController px_topmostPresentedViewController];
  v4 = px_topmostPresentedViewController;
  if (px_topmostPresentedViewController)
  {
    v5 = px_topmostPresentedViewController;
  }

  else
  {
    v5 = presentingViewController;
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

- (void)setAssetDisplayDelegate:(id)delegate
{
  obj = delegate;
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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
  pausedPhotoLibrary = [(PUOneUpPresentationHelper *)self pausedPhotoLibrary];
  v3 = pausedPhotoLibrary != 0;

  return v3;
}

- (PXAssetReference)lastViewedAssetReference
{
  browsingSession = [(PUOneUpPresentationHelper *)self browsingSession];
  viewModel = [browsingSession viewModel];
  lastViewedAssetReference = [viewModel lastViewedAssetReference];
  pxAssetReference = [lastViewedAssetReference pxAssetReference];

  return pxAssetReference;
}

- (id)_createBrowsingSession
{
  if (PFIsCamera() && ([MEMORY[0x1E69C3620] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "externalOneUpForceEnable"), v3, v4))
  {
    v5 = +[PUImportBrowsingSession withDeviceMedia];
  }

  else
  {
    _browsingSessionCreationBlock = [(PUOneUpPresentationHelper *)self _browsingSessionCreationBlock];
    v5 = _browsingSessionCreationBlock[2]();
  }

  if (self->_delegateFlags.respondsToSearchContextualVideoThumbnail)
  {
    delegate = [(PUOneUpPresentationHelper *)self delegate];
    v8 = [delegate oneUpPresentationHelperContextualVideoThumbnailIdentifier:self];
    viewModel = [v5 viewModel];
    [viewModel setSearchContextualVideoThumbnailIdentifier:v8];
  }

  if (self->_delegateFlags.respondsToSearchContext)
  {
    delegate2 = [(PUOneUpPresentationHelper *)self delegate];
    v11 = [delegate2 oneUpPresentationHelperSearchQueryMatchInfo:self];
    viewModel2 = [v5 viewModel];
    [viewModel2 setSearchQueryMatchInfo:v11];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
    if (self->_delegateFlags.respondsToMatchedSceneIdentifiers)
    {
      delegate3 = [(PUOneUpPresentationHelper *)self delegate];
      v15 = [delegate3 oneUpPresentationHelperMatchedSceneIdentifiers:self];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      delegate2 = v17;
    }

    else
    {
      delegate2 = 0;
    }

    if (self->_delegateFlags.respondsToMatchedAudioIdentifiers)
    {
      delegate4 = [(PUOneUpPresentationHelper *)self delegate];
      v19 = [delegate4 oneUpPresentationHelperMatchedAudioIdentifiers:self];
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
      delegate5 = [(PUOneUpPresentationHelper *)self delegate];
      v24 = [delegate5 oneUpPresentationHelperMatchedHumanActionIdentifiers:self];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v13;
      }

      viewModel2 = v26;
    }

    else
    {
      viewModel2 = 0;
    }

    if (self->_delegateFlags.respondsToMatchedPersonLocalIdentifiers)
    {
      delegate6 = [(PUOneUpPresentationHelper *)self delegate];
      v28 = [delegate6 oneUpPresentationHelperMatchedPersonLocalIdentifiers:self];
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
      delegate7 = [(PUOneUpPresentationHelper *)self delegate];
      v33 = [delegate7 oneUpPresentationHelperTextsToHighlight:self];
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
      delegate8 = [(PUOneUpPresentationHelper *)self delegate];
      v38 = [delegate8 oneUpPresentationHelperAssetUUIDsAllowedToHighlightText:self];
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

    firstObject = [v36 firstObject];
    if (firstObject || [delegate2 count] || objc_msgSend(v31, "count") || objc_msgSend(v11, "count") || objc_msgSend(viewModel2, "count") || objc_msgSend(v36, "count") || objc_msgSend(v64, "count"))
    {
      v62 = firstObject;
      v63 = v36;
      v60 = objc_alloc(MEMORY[0x1E69C39A8]);
      v59 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:delegate2];
      v42 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v31];
      v43 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v11];
      v44 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:viewModel2];
      v61 = v31;
      v45 = viewModel2;
      v46 = v11;
      v47 = delegate2;
      v48 = v5;
      v49 = v44;
      v50 = [v60 initWithLocalizedQueryString:firstObject matchedSceneIdentifiers:v59 personLocalIdentifiers:v42 audioIdentifiers:v43 humanActionIdentifiers:v44 ocrTexts:v36 ocrAssetUUIDS:v64 queryEmbedding:0 countOfQueryTerms:0];
      viewModel3 = [v48 viewModel];
      [viewModel3 setSearchQueryMatchInfo:v50];

      v36 = v63;
      firstObject = v62;

      v5 = v48;
      delegate2 = v47;
      v11 = v46;
      viewModel2 = v45;
      v31 = v61;
    }
  }

  presentingViewController = [(PUOneUpPresentationHelper *)self presentingViewController];
  if (presentingViewController)
  {
    while (1)
    {
      viewIfLoaded = [presentingViewController viewIfLoaded];
      window = [viewIfLoaded window];

      if (window)
      {
        break;
      }

      parentViewController = [presentingViewController parentViewController];

      presentingViewController = parentViewController;
      if (!parentViewController)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
LABEL_57:
    window = 0;
  }

  PFProcessIsLaunchedToExecuteTests();
  contentTileProvider = [v5 contentTileProvider];
  [contentTileProvider setWindow:window];

  testingDelegate = [(PUOneUpPresentationHelper *)self testingDelegate];
  [testingDelegate oneUpPresentationHelperDidCreateBrowsingSession:self];

  return v5;
}

- (id)_browsingSessionCreateIfNeeded:(BOOL)needed
{
  browsingSession = self->_browsingSession;
  if (browsingSession)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    _createBrowsingSession = [(PUOneUpPresentationHelper *)self _createBrowsingSession];
    v7 = self->_browsingSession;
    self->_browsingSession = _createBrowsingSession;

    browsingSession = self->_browsingSession;
  }

  return browsingSession;
}

- (void)dealloc
{
  view = [(UITapGestureRecognizer *)self->__tapGestureRecognizer view];
  [view removeGestureRecognizer:self->__tapGestureRecognizer];

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

- (void)setPhotosDataSource:(id)source
{
  sourceCopy = source;
  p_photosDataSource = &self->_photosDataSource;
  if (self->_photosDataSource != sourceCopy)
  {
    v9 = sourceCopy;
    objc_storeStrong(p_photosDataSource, source);
    browsingSession = [(PUOneUpPresentationHelper *)self browsingSession];
    dataSourceManager = [browsingSession dataSourceManager];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [dataSourceManager setPhotosDataSource:v9];
    }

    sourceCopy = v9;
  }

  MEMORY[0x1EEE66BB8](p_photosDataSource, sourceCopy);
}

- (PUOneUpPresentationHelper)initWithPhotosDataSource:(id)source
{
  sourceCopy = source;
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
    objc_storeStrong(&v6->_photosDataSource, source);
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

- (PUOneUpPresentationHelper)initWithBrowsingSessionCreationBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpPresentationHelper.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"browsingSessionCreationBlock"}];
  }

  v12.receiver = self;
  v12.super_class = PUOneUpPresentationHelper;
  v6 = [(PUOneUpPresentationHelper *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_needsUpdateFlags.presentationInfo = 1;
    v8 = [blockCopy copy];
    browsingSessionCreationBlock = v7->__browsingSessionCreationBlock;
    v7->__browsingSessionCreationBlock = v8;
  }

  return v7;
}

@end