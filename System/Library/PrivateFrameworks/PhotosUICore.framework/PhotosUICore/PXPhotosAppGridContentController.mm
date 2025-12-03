@interface PXPhotosAppGridContentController
- (BOOL)canPlay:(id)play;
- (BOOL)isDisplayAssetEligibleForAutoPlayback:(id)playback;
- (BOOL)isDisplayAssetEligibleForPlaybackWithSettlingEffect:(id)effect;
- (BOOL)shouldEnablePlaybackFor:(id)for;
- (CGRect)frameFor:(id)for outMinPlayableSize:(CGSize *)size;
- (CGRect)visibleRectFor:(id)for;
- (PXPhotosAppGridContentController)init;
- (PXPhotosAppGridContentController)initWithConfiguration:(id)configuration contentController:(id)controller;
- (PXPhotosContentController)contentController;
- (PXPhotosGridFooterPresentation)footerPresentation;
- (PXPhotosGridFooterStatusController)footerStatusController;
- (UIEdgeInsets)maskPaddingForFooterPresentation:(id)presentation;
- (UIEdgeInsets)safeAreaInsetsFor:(id)for;
- (id)makeBodyLayoutProviderForContentController:(id)controller style:(int64_t)style headerStyle:(int64_t)headerStyle;
- (id)makeHeaderLayoutProviderForContentController:(id)controller style:(int64_t)style viewProvider:(id)provider bannerProvider:(id)bannerProvider;
- (id)presentingViewControllerForFooterStatusController:(id)controller;
- (unint64_t)filterSortedRecordsStrategy;
- (void)_updateBarsController:(id)controller;
- (void)appIntentsEnumerateAssetCollections:(id)collections;
- (void)appIntentsEnumerateAssets:(id)assets;
- (void)appIntentsEnumeratePersons:(id)persons;
- (void)contentController:(id)controller didChangeCurrentLens:(id)lens;
- (void)contentViewDidAppearForContentController:(id)controller animated:(BOOL)animated;
- (void)contentViewDidDisappearForContentController:(id)controller animated:(BOOL)animated;
- (void)contentViewDidScrollToInitialPositionForContentController:(id)controller;
- (void)contentViewWillAppearForContentController:(id)controller animated:(BOOL)animated;
- (void)dismissPresentedViewControllerForFooterPresentation:(id)presentation;
- (void)footerPresentation:(id)presentation presentViewController:(id)controller;
- (void)gridView:(id)view didBecomeAvailableForContentController:(id)controller;
- (void)initializationWillFinishForContentController:(id)controller;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)scrollViewControllerContentBoundsDidChange:(id)change;
- (void)setShouldEnablePlaybackDuringAnimatedScroll:(BOOL)scroll;
- (void)swift_init;
@end

@implementation PXPhotosAppGridContentController

- (void)swift_init
{
  selfCopy = self;
  sub_1A3FDBA64();
}

- (PXPhotosContentController)contentController
{
  WeakRetained = objc_loadWeakRetained(&self->_contentController);

  return WeakRetained;
}

- (void)appIntentsEnumeratePersons:(id)persons
{
  personsCopy = persons;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!personsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridContentController.m" lineNumber:537 description:{@"Invalid parameter not satisfying: %@", @"personHandler"}];
  }

  contentController = [(PXPhotosAppGridContentController *)self contentController];
  viewModel = [contentController viewModel];
  privacyController = [viewModel privacyController];
  isLocked = [privacyController isLocked];

  if (!isLocked)
  {
    currentDataSource = [viewModel currentDataSource];
    container = [currentDataSource container];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = container;

      if (!v13)
      {
LABEL_13:

        goto LABEL_14;
      }

      container = [contentController gridView];
      [container bounds];
      personsCopy[2](personsCopy, v13, 1);
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_13;
  }

  v10 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Cannot enumerate people because the UI is currently locked.", buf, 2u);
  }

LABEL_14:
}

- (void)appIntentsEnumerateAssets:(id)assets
{
  assetsCopy = assets;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!assetsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridContentController.m" lineNumber:494 description:{@"Invalid parameter not satisfying: %@", @"assetHandler"}];
  }

  contentController = [(PXPhotosAppGridContentController *)self contentController];
  viewModel = [contentController viewModel];
  privacyController = [viewModel privacyController];
  isLocked = [privacyController isLocked];

  if (!isLocked)
  {
    viewModel2 = [contentController viewModel];
    selectionSnapshot = [viewModel2 selectionSnapshot];

    fetchSelectedObjects = [selectionSnapshot fetchSelectedObjects];
    [fetchSelectedObjects mutableCopy];

    layout = [contentController layout];
    [contentController gridView];
    objc_claimAutoreleasedReturnValue();
    [layout visibleRect];
    [layout safeAreaInsets];
    PXEdgeInsetsInsetRect();
  }

  v10 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Cannot enumerate assets because the UI is currently locked.", buf, 2u);
  }
}

void __62__PXPhotosAppGridContentController_appIntentsEnumerateAssets___block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = v13;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v15;

    if (v16)
    {
      v17 = [*(a1 + 32) indexOfObject:v16];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(a1 + 32) removeObjectAtIndex:v17];
      }

      [*(a1 + 40) convertRect:v14 fromDescendantLayout:{a4, a5, a6, a7}];
      [*(a1 + 40) coordinateSpace];
      objc_claimAutoreleasedReturnValue();
      PXRectConvertFromCoordinateSpaceToCoordinateSpace();
    }
  }

  else
  {
  }

  v18 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [0 uuid];
    v20 = objc_opt_class();
    v21 = *(a1 + 56);
    v22 = 138543874;
    v23 = v19;
    v24 = 2114;
    v25 = v20;
    v26 = 2048;
    v27 = v21;
    _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "Skipping non-PhotoKit asset: %{public}@, in: <%{public}@:%p>", &v22, 0x20u);
  }
}

void __62__PXPhotosAppGridContentController_appIntentsEnumerateAssets___block_invoke_400(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v4;

    if (v3)
    {
      (*(*(a1 + 32) + 16))(*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    }
  }

  else
  {

    v3 = 0;
  }
}

- (void)appIntentsEnumerateAssetCollections:(id)collections
{
  collectionsCopy = collections;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!collectionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridContentController.m" lineNumber:451 description:{@"Invalid parameter not satisfying: %@", @"assetCollectionHandler"}];
  }

  contentController = [(PXPhotosAppGridContentController *)self contentController];
  viewModel = [contentController viewModel];
  privacyController = [viewModel privacyController];
  isLocked = [privacyController isLocked];

  if (!isLocked)
  {
    viewModel2 = [contentController viewModel];
    selectionSnapshot = [viewModel2 selectionSnapshot];

    fetchSelectedObjects = [selectionSnapshot fetchSelectedObjects];
    [fetchSelectedObjects mutableCopy];

    layout = [contentController layout];
    [contentController gridView];
    objc_claimAutoreleasedReturnValue();
    [layout visibleRect];
    [layout safeAreaInsets];
    PXEdgeInsetsInsetRect();
  }

  v10 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Cannot enumerate asset collections because the UI is currently locked.", buf, 2u);
  }
}

void __72__PXPhotosAppGridContentController_appIntentsEnumerateAssetCollections___block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = v13;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v15;

    if (v16)
    {
      v17 = [*(a1 + 32) indexOfObject:v16];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(a1 + 32) removeObjectAtIndex:v17];
      }

      [*(a1 + 40) convertRect:v14 fromDescendantLayout:{a4, a5, a6, a7}];
      [*(a1 + 40) coordinateSpace];
      objc_claimAutoreleasedReturnValue();
      PXRectConvertFromCoordinateSpaceToCoordinateSpace();
    }
  }

  else
  {
  }

  v18 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [0 uuid];
    v20 = objc_opt_class();
    v21 = *(a1 + 56);
    v22 = 138543874;
    v23 = v19;
    v24 = 2114;
    v25 = v20;
    v26 = 2048;
    v27 = v21;
    _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "Skipping non-PhotoKit asset collection: %{public}@, in: <%{public}@:%p>", &v22, 0x20u);
  }
}

void __72__PXPhotosAppGridContentController_appIntentsEnumerateAssetCollections___block_invoke_393(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v4;

    if (v3)
    {
      (*(*(a1 + 32) + 16))(*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    }
  }

  else
  {

    v3 = 0;
  }
}

- (unint64_t)filterSortedRecordsStrategy
{
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  delegate = [contentController delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate photosContentControllerFilterSortedRecordsStrategy:contentController];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isDisplayAssetEligibleForPlaybackWithSettlingEffect:(id)effect
{
  effectCopy = effect;
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  delegate = [contentController delegate];
  v7 = [delegate photosContentController:contentController isDisplayAssetEligibleForPlaybackWithSettlingEffect:effectCopy];

  return v7;
}

- (BOOL)isDisplayAssetEligibleForAutoPlayback:(id)playback
{
  playbackCopy = playback;
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  delegate = [contentController delegate];
  v7 = [delegate photosContentController:contentController isDisplayAssetEligibleForAutoPlayback:playbackCopy];

  return v7;
}

- (BOOL)canPlay:(id)play
{
  playCopy = play;
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  delegate = [contentController delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate photosContentController:contentController canPlayAssetInline:playCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGRect)frameFor:(id)for outMinPlayableSize:(CGSize *)size
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  forCopy = for;
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  layout = [contentController layout];

  v13 = [layout spriteIndexForSpriteReference:forCopy];
  if (v13 != -1)
  {
    v31 = *off_1E7722008;
    v14 = *(off_1E7722028 + 1);
    v30[0] = *off_1E7722028;
    v30[1] = v14;
    v15 = *(off_1E7722048 + 7);
    v32[6] = *(off_1E7722048 + 6);
    v32[7] = v15;
    v16 = *(off_1E7722048 + 9);
    v32[8] = *(off_1E7722048 + 8);
    v32[9] = v16;
    v17 = *(off_1E7722048 + 3);
    v32[2] = *(off_1E7722048 + 2);
    v32[3] = v17;
    v18 = *(off_1E7722048 + 5);
    v32[4] = *(off_1E7722048 + 4);
    v32[5] = v18;
    v19 = *(off_1E7722048 + 1);
    v32[0] = *off_1E7722048;
    v32[1] = v19;
    v20 = *off_1E7722040;
    v21 = *(off_1E7722040 + 1);
    v29 = *(off_1E7722040 + 4);
    v28[0] = v20;
    v28[1] = v21;
    [layout copyLayoutForSpritesInRange:v13 | 0x100000000 entities:&v31 geometries:v30 styles:v32 infos:v28];
    [layout minPlayableSizeForSpriteAtIndex:v13];
    size->width = v22;
    size->height = v23;
    PXRectWithCenterAndSize();
  }

  v24 = v6;
  v25 = v7;
  v26 = v8;
  v27 = v9;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsFor:(id)for
{
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  layout = [contentController layout];
  [layout safeAreaInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (CGRect)visibleRectFor:(id)for
{
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  layout = [contentController layout];
  [layout visibleRect];
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

- (BOOL)shouldEnablePlaybackFor:(id)for
{
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  gridView = [contentController gridView];
  scrollingSpeedometer = [gridView scrollingSpeedometer];
  v7 = [scrollingSpeedometer regime] < 2 || -[PXPhotosAppGridContentController shouldEnablePlaybackDuringAnimatedScroll](self, "shouldEnablePlaybackDuringAnimatedScroll");

  return v7;
}

- (UIEdgeInsets)maskPaddingForFooterPresentation:(id)presentation
{
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  delegate = [contentController delegate];
  [delegate maskPaddingForContentController:contentController];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)dismissPresentedViewControllerForFooterPresentation:(id)presentation
{
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  delegate = [contentController delegate];
  [delegate dismissPresentedViewControllerForContentController:contentController];
}

- (void)footerPresentation:(id)presentation presentViewController:(id)controller
{
  controllerCopy = controller;
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  delegate = [contentController delegate];
  [delegate photosContentController:contentController presentViewController:controllerCopy];
}

- (id)presentingViewControllerForFooterStatusController:(id)controller
{
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  delegate = [contentController delegate];
  v5 = [delegate presentingViewControllerForContentController:contentController];

  return v5;
}

- (void)scrollViewControllerContentBoundsDidChange:(id)change
{
  inlinePlaybackController = [(PXPhotosAppGridContentController *)self inlinePlaybackController];
  [inlinePlaybackController visibleRectDidChange];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXPhotosViewOptionsModelObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridContentController.m" lineNumber:324 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 4) != 0)
  {
    v15 = observableCopy;
    viewOptionsModel = [(PXPhotosAppGridContentController *)self viewOptionsModel];
    selectedLensControlItem = [viewOptionsModel selectedLensControlItem];
    contentController = [(PXPhotosAppGridContentController *)self contentController];
    overlayController = [contentController overlayController];
    [overlayController setCurrentLens:selectedLensControlItem];

    observableCopy = v15;
  }
}

- (void)contentController:(id)controller didChangeCurrentLens:(id)lens
{
  lensCopy = lens;
  viewOptionsModel = [(PXPhotosAppGridContentController *)self viewOptionsModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__PXPhotosAppGridContentController_contentController_didChangeCurrentLens___block_invoke;
  v9[3] = &unk_1E77454F0;
  v10 = lensCopy;
  v11 = viewOptionsModel;
  v7 = viewOptionsModel;
  v8 = lensCopy;
  [v7 performChanges:v9];
}

void __75__PXPhotosAppGridContentController_contentController_didChangeCurrentLens___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = a2;
    [v6 setSelectedLensControlItem:v2];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = a2;
    v6 = [v3 lensControlItems];
    v5 = [v6 lastObject];
    [v4 setSelectedLensControlItem:v5];
  }
}

- (void)contentViewDidScrollToInitialPositionForContentController:(id)controller
{
  footerPresentation = [(PXPhotosAppGridContentController *)self footerPresentation];
  [footerPresentation viewDidScrollToInitialPosition];

  [(PXPhotosAppGridContentController *)self swift_contentViewDidScrollToInitialPosition];
}

- (void)contentViewDidDisappearForContentController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  inlinePlaybackController = [(PXPhotosAppGridContentController *)self inlinePlaybackController];
  [inlinePlaybackController setIsContentViewVisible:0];

  [(PXPhotosAppGridContentController *)self swift_contentViewDidDisappear:animatedCopy];
  gridView = [controllerCopy gridView];

  [_TtC12PhotosUICore33PXAppIntentsViewAnnotationsBridge clearViewAnnotationDelegateFor:gridView];
}

- (void)contentViewDidAppearForContentController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  inlinePlaybackController = [(PXPhotosAppGridContentController *)self inlinePlaybackController];
  [inlinePlaybackController setIsContentViewVisible:1];

  footerStatusController = [(PXPhotosAppGridContentController *)self footerStatusController];
  [footerStatusController viewDidAppear];

  footerPresentation = [(PXPhotosAppGridContentController *)self footerPresentation];
  [footerPresentation viewDidAppear];

  [(PXPhotosAppGridContentController *)self swift_contentViewDidAppear:animatedCopy];
  gridView = [controllerCopy gridView];

  v10 = gridView;
  if (gridView)
  {
    PXAppIntentsSetViewAnnotationDelegate(gridView, self);
    v10 = gridView;
  }
}

- (void)contentViewWillAppearForContentController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if ([(PXPhotosAppGridContentController *)self needsCountsInitially])
  {
    countsController = [controllerCopy countsController];
    [countsController prepareCountsIfNeeded];
  }

  viewModel = [controllerCopy viewModel];
  wantsFooterVisibleImmediately = [viewModel wantsFooterVisibleImmediately];

  if (wantsFooterVisibleImmediately)
  {
    footerStatusController = [(PXPhotosAppGridContentController *)self footerStatusController];
    [footerStatusController viewWillAppear];

    footerPresentation = [(PXPhotosAppGridContentController *)self footerPresentation];
    [footerPresentation viewWillAppear];
  }

  [(PXPhotosAppGridContentController *)self swift_contentViewWillAppear:animatedCopy];
}

- (void)initializationWillFinishForContentController:(id)controller
{
  controllerCopy = controller;
  v5 = PXPhotosViewEventTrackerCreate(controllerCopy);
  eventTracker = self->_eventTracker;
  self->_eventTracker = v5;

  viewModel = [controllerCopy viewModel];
  viewOptionsModel = [viewModel viewOptionsModel];
  viewOptionsModel = self->_viewOptionsModel;
  self->_viewOptionsModel = viewOptionsModel;

  [(PXPhotosViewOptionsModel *)self->_viewOptionsModel registerChangeObserver:self context:PXPhotosViewOptionsModelObservationContext];
  v10 = self->_viewOptionsModel;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__PXPhotosAppGridContentController_initializationWillFinishForContentController___block_invoke;
  v12[3] = &unk_1E7749528;
  v13 = controllerCopy;
  v11 = controllerCopy;
  [(PXPhotosViewOptionsModel *)v10 performChanges:v12];
  [(PXPhotosAppGridContentController *)self swift_init];
}

void __81__PXPhotosAppGridContentController_initializationWillFinishForContentController___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 overlayController];
  v4 = [v5 availableLenses];
  [v3 setAdditionalLensControlItems:v4];
}

- (void)gridView:(id)view didBecomeAvailableForContentController:(id)controller
{
  viewCopy = view;
  scrollingSpeedometer = [viewCopy scrollingSpeedometer];
  [(PXPhotosContentInlinePlaybackController *)self->_photosInlinePlaybackController setScrollViewSpeedometer:scrollingSpeedometer];

  scrollViewController = [viewCopy scrollViewController];

  [scrollViewController registerObserver:self];
}

- (id)makeBodyLayoutProviderForContentController:(id)controller style:(int64_t)style headerStyle:(int64_t)headerStyle
{
  viewModel = [controller viewModel];
  if (style == 3)
  {
    v9 = [[PXEditorialBodyLayoutProvider alloc] initWithViewModel:viewModel];
    v8 = v9;
    if (headerStyle == 7)
    {
      [(PXEditorialBodyLayoutProvider *)v9 setAvoidsFullWidthHeroes:1];
    }

    if ([viewModel gridStyle] == 3 || objc_msgSend(viewModel, "gridStyle") == 4)
    {
      [(PXPhotosGridMessagesBodyLayoutProvider *)v8 setAvoidsFullWidthHeroes:1];
    }
  }

  else if (style == 2)
  {
    v8 = [[PXPhotosGridMessagesBodyLayoutProvider alloc] initWithViewModel:viewModel];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)makeHeaderLayoutProviderForContentController:(id)controller style:(int64_t)style viewProvider:(id)provider bannerProvider:(id)bannerProvider
{
  providerCopy = provider;
  bannerProviderCopy = bannerProvider;
  viewModel = [controller viewModel];
  v12 = viewModel;
  v13 = 0;
  if (style <= 4)
  {
    if (style > 2)
    {
      if (style == 3)
      {
        v15 = PXContentSyndicationSectionHeaderLayoutProvider;
      }

      else
      {
        v15 = PXDuplicatesSectionHeaderLayoutProvider;
      }
    }

    else if (style == 1)
    {
      v15 = PXAlbumSectionHeaderLayoutProvider;
    }

    else
    {
      if (style != 2)
      {
        goto LABEL_21;
      }

      v15 = PXImportSectionHeaderLayoutProvider;
    }

    goto LABEL_19;
  }

  if (style <= 6)
  {
    if (style != 5)
    {
      v13 = [[PXAlbumSectionHeaderLayoutProvider alloc] initWithViewModel:viewModel viewProvider:providerCopy];
      [(PXAlbumSectionHeaderLayoutProvider *)v13 setEditorialStyle:1];
      goto LABEL_21;
    }

    v15 = PXSharingSuggestionSectionHeaderLayoutProvider;
    goto LABEL_19;
  }

  if (style == 7)
  {
    v16 = [[PXPhotosKeyAssetSectionHeaderLayoutProvider alloc] initWithViewModel:viewModel viewProvider:providerCopy bannerProvider:bannerProviderCopy];
LABEL_20:
    v13 = v16;
    goto LABEL_21;
  }

  if (style != 8)
  {
    if (style != 9)
    {
      goto LABEL_21;
    }

    contentFilterState = [viewModel contentFilterState];
    [contentFilterState setIsSearchResultsFilterButton:1];

    v15 = PXPhotosSearchSectionHeaderLayoutProvider;
LABEL_19:
    v16 = [[v15 alloc] initWithViewModel:v12 viewProvider:providerCopy];
    goto LABEL_20;
  }

  v13 = [[PXAlbumSectionHeaderLayoutProvider alloc] initWithViewModel:viewModel viewProvider:providerCopy];
  [(PXAlbumSectionHeaderLayoutProvider *)v13 setAllowsFloatingBackground:0];
LABEL_21:

  return v13;
}

- (PXPhotosGridFooterPresentation)footerPresentation
{
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  gridView = [contentController gridView];
  v5 = gridView;
  footerPresentation = self->_footerPresentation;
  if (footerPresentation)
  {
    v7 = 1;
  }

  else
  {
    v7 = gridView == 0;
  }

  if (!v7)
  {
    layout = [contentController layout];
    v9 = [PXPhotosGridFooterPresentation alloc];
    viewModel = [contentController viewModel];
    v11 = [(PXPhotosGridFooterPresentation *)v9 initWithViewModel:viewModel gridView:v5 layout:layout];
    v12 = self->_footerPresentation;
    self->_footerPresentation = v11;

    [(PXPhotosGridFooterPresentation *)self->_footerPresentation setDelegate:self];
    footerPresentation = self->_footerPresentation;
  }

  v13 = footerPresentation;

  return footerPresentation;
}

- (PXPhotosGridFooterStatusController)footerStatusController
{
  contentController = [(PXPhotosAppGridContentController *)self contentController];
  if (!self->_footerStatusController && [(PXPhotosAppGridContentController *)self needsFooterStatusController]&& contentController)
  {
    countsController = [contentController countsController];
    v5 = [PXPhotosGridFooterStatusController alloc];
    viewModel = [contentController viewModel];
    v7 = [(PXPhotosGridFooterStatusController *)v5 initWithViewModel:viewModel itemsCountsController:countsController];
    footerStatusController = self->_footerStatusController;
    self->_footerStatusController = v7;

    [(PXPhotosGridFooterStatusController *)self->_footerStatusController setDelegate:self];
  }

  v9 = self->_footerStatusController;
  v10 = v9;

  return v9;
}

- (void)_updateBarsController:(id)controller
{
  controllerCopy = controller;
  viewModel = [controllerCopy viewModel];
  delegate = [controllerCopy delegate];
  v6 = [delegate presentingViewControllerForContentController:controllerCopy];

  if ([viewModel isEmbedded] && objc_msgSend(viewModel, "allowsChromeManagementBehavior") && v6)
  {
    v7 = [[PXPhotosBarsController alloc] initWithPhotosContentController:controllerCopy];
    barsController = self->_barsController;
    self->_barsController = v7;

    [(PXBarsController *)self->_barsController setViewController:v6];
  }
}

- (void)setShouldEnablePlaybackDuringAnimatedScroll:(BOOL)scroll
{
  if (self->_shouldEnablePlaybackDuringAnimatedScroll != scroll)
  {
    self->_shouldEnablePlaybackDuringAnimatedScroll = scroll;
    inlinePlaybackController = [(PXPhotosAppGridContentController *)self inlinePlaybackController];
    [inlinePlaybackController invalidatePlaybackEnabled];
  }
}

- (PXPhotosAppGridContentController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridContentController.m" lineNumber:94 description:{@"%s is not available as initializer", "-[PXPhotosAppGridContentController init]"}];

  abort();
}

- (PXPhotosAppGridContentController)initWithConfiguration:(id)configuration contentController:(id)controller
{
  configurationCopy = configuration;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = PXPhotosAppGridContentController;
  v8 = [(PXPhotosAppGridContentController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_contentController, controllerCopy);
    v10 = objc_alloc_init(PXPhotosContentInlinePlaybackController);
    photosInlinePlaybackController = v9->_photosInlinePlaybackController;
    v9->_photosInlinePlaybackController = v10;

    [(PXPhotosContentInlinePlaybackController *)v9->_photosInlinePlaybackController setDelegate:v9];
    footerViewModel = [configurationCopy footerViewModel];
    if (footerViewModel)
    {
      v13 = 0;
    }

    else
    {
      v13 = [configurationCopy footerVisibilityStyle] != 0;
    }

    v9->_needsFooterStatusController = v13;

    v9->_needsCountsInitially = v9->_needsFooterStatusController;
  }

  return v9;
}

@end