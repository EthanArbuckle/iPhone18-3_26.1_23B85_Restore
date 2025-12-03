@interface PUAccessoryVisibilityInteractionController
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)_initialContentOffset;
- (PHPhotoLibrary)pausedPhotoLibrary;
- (PUAccessoryVisibilityInteractionController)init;
- (PUAccessoryVisibilityInteractionControllerDelegate)delegate;
- (id)_currentAssetViewModel;
- (void)_handlePanGestureRecognizer:(id)recognizer;
- (void)_pauseLibraryChangesDelivery;
- (void)_performChanges:(id)changes;
- (void)_resumeLibraryChangesDelivery;
- (void)_setAccessoryVisible:(BOOL)visible;
- (void)_setAssetViewModel:(id)model;
- (void)_setContentOffsetOverrideFactor:(id)factor;
- (void)_setNeedsUpdate;
- (void)_setOverridingContentOffsetY:(id)y;
- (void)_updateContentOffsetIfNeeded;
- (void)_updateGestureRecognizers;
- (void)_updateIfNeeded;
- (void)dealloc;
- (void)invalidateViewHostingGestureRecognizers;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setBrowsingSession:(id)session;
- (void)setDelegate:(id)delegate;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUAccessoryVisibilityInteractionController

- (PHPhotoLibrary)pausedPhotoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_pausedPhotoLibrary);

  return WeakRetained;
}

- (CGPoint)_initialContentOffset
{
  x = self->__initialContentOffset.x;
  y = self->__initialContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PUAccessoryVisibilityInteractionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewModel:(id)model didChange:(id)change
{
  if ([change currentAssetDidChange])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__PUAccessoryVisibilityInteractionController_viewModel_didChange___block_invoke;
    v5[3] = &unk_1E7B80DD0;
    v5[4] = self;
    [(PUAccessoryVisibilityInteractionController *)self _performChanges:v5];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  panGestureRecognizer = [(PUAccessoryVisibilityInteractionController *)self panGestureRecognizer];

  if (panGestureRecognizer == recognizerCopy)
  {
    verticalSwipeGestureRecognizerHelper = [(PUAccessoryVisibilityInteractionController *)self verticalSwipeGestureRecognizerHelper];
    v9 = [verticalSwipeGestureRecognizerHelper verticalSwipeGestureRecognizer:recognizerCopy shouldBeRequiredToFailByGestureRecognizer:gestureRecognizerCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  panGestureRecognizer = [(PUAccessoryVisibilityInteractionController *)self panGestureRecognizer];
  if (panGestureRecognizer == beginCopy)
  {
    verticalSwipeGestureRecognizerHelper = [(PUAccessoryVisibilityInteractionController *)self verticalSwipeGestureRecognizerHelper];
    isAccessoryViewVisible = [verticalSwipeGestureRecognizerHelper verticalSwipeGestureRecognizerShouldBegin:beginCopy];

    view = [panGestureRecognizer view];
    [panGestureRecognizer velocityInView:view];
    v11 = v10;

    if (isAccessoryViewVisible && v11 >= 0.0)
    {
      _currentAssetViewModel = [(PUAccessoryVisibilityInteractionController *)self _currentAssetViewModel];
      isAccessoryViewVisible = [_currentAssetViewModel isAccessoryViewVisible];
    }

    v6 = !self->_delegateFlags.respondsToCanBeginAtLocationFromProvider & isAccessoryViewVisible;
    if (self->_delegateFlags.respondsToCanBeginAtLocationFromProvider && isAccessoryViewVisible)
    {
      delegate = [(PUAccessoryVisibilityInteractionController *)self delegate];
      v6 = [delegate accessoryVisibilityInteractionController:self canBeginAtLocationFromProvider:panGestureRecognizer];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  v9 = PUOverridingContentOffsetYObservationContext;
  if (PUOverridingContentOffsetYObservationContext != context && PUContentOffsetOverrideFactorObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAccessoryVisibilityInteractionController.m" lineNumber:379 description:@"unknown observation context"];

    abort();
  }

  if ((changeCopy & 2) != 0)
  {
    [(PUAccessoryVisibilityInteractionController *)self _invalidateContentOffset];
    [(PUAccessoryVisibilityInteractionController *)self _updateIfNeeded];
    v9 = PUOverridingContentOffsetYObservationContext;
  }

  if ((changeCopy & 4) != 0 && v9 == context)
  {
    _overridingContentOffsetY = [(PUAccessoryVisibilityInteractionController *)self _overridingContentOffsetY];
    isAnimating = [_overridingContentOffsetY isAnimating];

    if ((isAnimating & 1) == 0)
    {
      [(PUAccessoryVisibilityInteractionController *)self _resumeLibraryChangesDelivery];
    }
  }
}

- (void)_updateContentOffsetIfNeeded
{
  if (self->_needsUpdateFlags.contentOffset)
  {
    v19 = v5;
    v20 = v4;
    v21 = v2;
    v22 = v3;
    self->_needsUpdateFlags.contentOffset = 0;
    _overridingContentOffsetY = [(PUAccessoryVisibilityInteractionController *)self _overridingContentOffsetY];
    [_overridingContentOffsetY presentationValue];
    v9 = v8;

    _contentOffsetOverrideFactor = [(PUAccessoryVisibilityInteractionController *)self _contentOffsetOverrideFactor];
    [_contentOffsetOverrideFactor presentationValue];
    v12 = v11;

    _assetViewModel = [(PUAccessoryVisibilityInteractionController *)self _assetViewModel];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__PUAccessoryVisibilityInteractionController__updateContentOffsetIfNeeded__block_invoke;
    v15[3] = &unk_1E7B7C518;
    v16 = _assetViewModel;
    v17 = v9;
    v18 = v12;
    v14 = _assetViewModel;
    [v14 performChanges:v15];
  }
}

uint64_t __74__PUAccessoryVisibilityInteractionController__updateContentOffsetIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) overridingContentOffset];
  [*(a1 + 32) setOverridingContentOffset:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setContentOffsetOverrideFactor:v3];
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates && !self->_isUpdateScheduled)
  {
    self->_isUpdateScheduled = 1;
    objc_initWeak(&location, self);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __61__PUAccessoryVisibilityInteractionController__setNeedsUpdate__block_invoke;
    v2[3] = &unk_1E7B80638;
    objc_copyWeak(&v3, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v2);
    objc_destroyWeak(&v3);
    objc_destroyWeak(&location);
  }
}

void __61__PUAccessoryVisibilityInteractionController__setNeedsUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleScheduledUpdate];
}

- (void)_updateIfNeeded
{
  if ([(PUAccessoryVisibilityInteractionController *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PUAccessoryVisibilityInteractionController *)self _updateContentOffsetIfNeeded];
    self->_isPerformingUpdates = isPerformingUpdates;
    if ([(PUAccessoryVisibilityInteractionController *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUAccessoryVisibilityInteractionController.m" lineNumber:323 description:@"update still needed after update pass"];
    }
  }
}

- (void)_performChanges:(id)changes
{
  changesCopy = changes;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  v6 = changesCopy;
  if (changesCopy)
  {
    changesCopy[2](changesCopy);
    changesCopy = v6;
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    [(PUAccessoryVisibilityInteractionController *)self _updateIfNeeded];
    changesCopy = v6;
  }
}

- (void)_setAssetViewModel:(id)model
{
  modelCopy = model;
  p_assetViewModel = &self->__assetViewModel;
  if (self->__assetViewModel != modelCopy)
  {
    v7 = modelCopy;
    objc_storeStrong(p_assetViewModel, model);
    p_assetViewModel = [(PUAccessoryVisibilityInteractionController *)self _invalidateContentOffset];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_assetViewModel, modelCopy);
}

- (void)_setContentOffsetOverrideFactor:(id)factor
{
  factorCopy = factor;
  contentOffsetOverrideFactor = self->__contentOffsetOverrideFactor;
  if (contentOffsetOverrideFactor != factorCopy)
  {
    v7 = factorCopy;
    [(PXNumberAnimator *)contentOffsetOverrideFactor unregisterChangeObserver:self context:PUContentOffsetOverrideFactorObservationContext];
    objc_storeStrong(&self->__contentOffsetOverrideFactor, factor);
    [(PXNumberAnimator *)self->__contentOffsetOverrideFactor registerChangeObserver:self context:PUContentOffsetOverrideFactorObservationContext];
    contentOffsetOverrideFactor = [(PUAccessoryVisibilityInteractionController *)self _invalidateContentOffset];
    factorCopy = v7;
  }

  MEMORY[0x1EEE66BB8](contentOffsetOverrideFactor, factorCopy);
}

- (void)_setOverridingContentOffsetY:(id)y
{
  yCopy = y;
  overridingContentOffsetY = self->__overridingContentOffsetY;
  if (overridingContentOffsetY != yCopy)
  {
    v7 = yCopy;
    [(PXNumberAnimator *)overridingContentOffsetY unregisterChangeObserver:self context:PUOverridingContentOffsetYObservationContext];
    objc_storeStrong(&self->__overridingContentOffsetY, y);
    [(PXNumberAnimator *)self->__overridingContentOffsetY registerChangeObserver:self context:PUOverridingContentOffsetYObservationContext];
    overridingContentOffsetY = [(PUAccessoryVisibilityInteractionController *)self _invalidateContentOffset];
    yCopy = v7;
  }

  MEMORY[0x1EEE66BB8](overridingContentOffsetY, yCopy);
}

- (id)_currentAssetViewModel
{
  browsingSession = [(PUAccessoryVisibilityInteractionController *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  v5 = [viewModel assetViewModelForAssetReference:currentAssetReference];

  return v5;
}

- (void)_setAccessoryVisible:(BOOL)visible
{
  visibleCopy = visible;
  if (self->_delegateFlags.respondsToSetAccessoryVisibleChangeReason)
  {
    delegate = [(PUAccessoryVisibilityInteractionController *)self delegate];
    [delegate accessoryVisibilityInteractionController:self setAccessoryVisible:visibleCopy changeReason:2];
  }

  else
  {
    _assetViewModel = [(PUAccessoryVisibilityInteractionController *)self _assetViewModel];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__PUAccessoryVisibilityInteractionController__setAccessoryVisible___block_invoke;
    v8[3] = &unk_1E7B7FA58;
    v11 = visibleCopy;
    v9 = _assetViewModel;
    v10 = 2;
    v6 = _assetViewModel;
    [v6 performChanges:v8];
  }
}

- (void)_resumeLibraryChangesDelivery
{
  changesPauseToken = [(PUAccessoryVisibilityInteractionController *)self changesPauseToken];
  if (changesPauseToken)
  {
  }

  else
  {
    pausedPhotoLibrary = [(PUAccessoryVisibilityInteractionController *)self pausedPhotoLibrary];

    if (!pausedPhotoLibrary)
    {
      return;
    }
  }

  pausedPhotoLibrary2 = [(PUAccessoryVisibilityInteractionController *)self pausedPhotoLibrary];
  changesPauseToken2 = [(PUAccessoryVisibilityInteractionController *)self changesPauseToken];
  [pausedPhotoLibrary2 px_endPausingChanges:changesPauseToken2];

  [(PUAccessoryVisibilityInteractionController *)self setChangesPauseToken:0];

  [(PUAccessoryVisibilityInteractionController *)self setPausedPhotoLibrary:0];
}

- (void)_pauseLibraryChangesDelivery
{
  pausedPhotoLibrary = [(PUAccessoryVisibilityInteractionController *)self pausedPhotoLibrary];
  changesPauseToken = [(PUAccessoryVisibilityInteractionController *)self changesPauseToken];
  _assetViewModel = [(PUAccessoryVisibilityInteractionController *)self _assetViewModel];
  asset = [_assetViewModel asset];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = asset;
  }

  else
  {
    v6 = 0;
  }

  photoLibrary = [v6 photoLibrary];

  v8 = [photoLibrary px_beginPausingChangesWithTimeout:@"pause_for_swipe_info_panel_vertical" identifier:30.0];
  [(PUAccessoryVisibilityInteractionController *)self setChangesPauseToken:v8];

  [(PUAccessoryVisibilityInteractionController *)self setPausedPhotoLibrary:photoLibrary];
  if (pausedPhotoLibrary && changesPauseToken)
  {
    [pausedPhotoLibrary px_endPausingChanges:changesPauseToken];
  }
}

- (void)_handlePanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  v6 = state;
  if ((state - 3) < 3)
  {
    _assetViewModel = [(PUAccessoryVisibilityInteractionController *)self _assetViewModel];
    [(PUChangeDirectionValueFilter *)_assetViewModel preferredContentOffset];
    v9 = v8;
    _verticalDirectionValueFilter = [(PUAccessoryVisibilityInteractionController *)self _verticalDirectionValueFilter];
    [_verticalDirectionValueFilter outputValue];
    if (v6 == 3 && v11 != 0.0)
    {
      if (v11 > 0.0)
      {
        v9 = 0.0;
      }

      [(PUAccessoryVisibilityInteractionController *)self _setAccessoryVisible:v11 <= 0.0];
    }

    view = [recognizerCopy view];
    window = [view window];
    [recognizerCopy velocityInView:window];
    v15 = v14;

    _overridingContentOffsetY = [(PUAccessoryVisibilityInteractionController *)self _overridingContentOffsetY];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __74__PUAccessoryVisibilityInteractionController__handlePanGestureRecognizer___block_invoke_4;
    v28[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
    *&v28[4] = v9;
    [_overridingContentOffsetY performChangesUsingDefaultSpringAnimationWithInitialVelocity:v28 changes:v15];

    _contentOffsetOverrideFactor = [(PUAccessoryVisibilityInteractionController *)self _contentOffsetOverrideFactor];
    [_contentOffsetOverrideFactor performChangesUsingDefaultSpringAnimationWithInitialVelocity:&__block_literal_global_2010 changes:0.0];

    [(PUAccessoryVisibilityInteractionController *)self _setVerticalDirectionValueFilter:0];
    [(PUAccessoryVisibilityInteractionController *)self _setSwipeDirectionValueFilter:0];
    if (v6 == 3 && self->_delegateFlags.respondsToDidEnd)
    {
      delegate = [(PUAccessoryVisibilityInteractionController *)self delegate];
      [delegate accessoryVisibilityInteractionControllerDidEnd:self];
    }

    goto LABEL_15;
  }

  if (state == 2)
  {
    [(PUAccessoryVisibilityInteractionController *)self _initialContentOffset];
    v21 = v20;
    view2 = [recognizerCopy view];
    window2 = [view2 window];
    [recognizerCopy translationInView:window2];
    v25 = v24;

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __74__PUAccessoryVisibilityInteractionController__handlePanGestureRecognizer___block_invoke_2;
    v29[3] = &unk_1E7B7FF70;
    v26 = v21 + v25;
    v29[4] = self;
    *&v29[5] = v26;
    [(PUAccessoryVisibilityInteractionController *)self _performChanges:v29];
    _verticalDirectionValueFilter2 = [(PUAccessoryVisibilityInteractionController *)self _verticalDirectionValueFilter];
    [_verticalDirectionValueFilter2 setInputValue:v25];

    _assetViewModel = [(PUAccessoryVisibilityInteractionController *)self _swipeDirectionValueFilter];
    [(PUValueFilter *)_assetViewModel setInputValue:v25];
    [(PUAccessoryVisibilityInteractionController *)self _setAccessoryVisible:v26 < 0.0];
    goto LABEL_15;
  }

  if (state == 1)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __74__PUAccessoryVisibilityInteractionController__handlePanGestureRecognizer___block_invoke;
    v30[3] = &unk_1E7B80DD0;
    v30[4] = self;
    [(PUAccessoryVisibilityInteractionController *)self _performChanges:v30];
    [(PUAccessoryVisibilityInteractionController *)self _pauseLibraryChangesDelivery];
    _assetViewModel = objc_alloc_init(PUChangeDirectionValueFilter);
    [(PUChangeDirectionValueFilter *)_assetViewModel setMinimumChangeValue:5.0];
    [(PUAccessoryVisibilityInteractionController *)self _setVerticalDirectionValueFilter:_assetViewModel];
    v19 = objc_alloc_init(PUChangeDirectionValueFilter);
    [(PUChangeDirectionValueFilter *)v19 setMinimumChangeValue:80.0];
    [(PUAccessoryVisibilityInteractionController *)self _setSwipeDirectionValueFilter:v19];

LABEL_15:
  }
}

void __74__PUAccessoryVisibilityInteractionController__handlePanGestureRecognizer___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _currentAssetViewModel];
  [*(a1 + 32) _setAssetViewModel:v6];
  [v6 contentOffset];
  v3 = v2;
  [*(a1 + 32) _setInitialContentOffset:?];
  v4 = [objc_alloc(MEMORY[0x1E69C4588]) initWithValue:v3];
  [*(a1 + 32) _setOverridingContentOffsetY:v4];
  v5 = [objc_alloc(MEMORY[0x1E69C4588]) initWithValue:1.0];
  [*(a1 + 32) _setContentOffsetOverrideFactor:v5];
  [v4 setHighFrameRateReason:2228225];
  [v5 setHighFrameRateReason:2228225];
}

void __74__PUAccessoryVisibilityInteractionController__handlePanGestureRecognizer___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _overridingContentOffsetY];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__PUAccessoryVisibilityInteractionController__handlePanGestureRecognizer___block_invoke_3;
  v3[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
  v3[4] = *(a1 + 40);
  [v2 performChangesWithoutAnimation:v3];
}

- (void)_updateGestureRecognizers
{
  delegate = [(PUAccessoryVisibilityInteractionController *)self delegate];
  v4 = [delegate accessoryVisibilityInteractionControllerViewHostingGestureRecognizers:self];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PUAccessoryVisibilityInteractionController__updateGestureRecognizers__block_invoke;
  aBlock[3] = &unk_1E7B74110;
  v9 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  panGestureRecognizer = [(PUAccessoryVisibilityInteractionController *)self panGestureRecognizer];
  v6[2](v6, panGestureRecognizer);
}

void __71__PUAccessoryVisibilityInteractionController__updateGestureRecognizers__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 view];
  v4 = *(a1 + 32);

  if (v3 != v4)
  {
    v5 = [v6 view];
    [v5 removeGestureRecognizer:v6];

    [*(a1 + 32) addGestureRecognizer:v6];
  }
}

- (void)invalidateViewHostingGestureRecognizers
{
  [(PUAccessoryVisibilityInteractionController *)self _resumeLibraryChangesDelivery];

  [(PUAccessoryVisibilityInteractionController *)self _updateGestureRecognizers];
}

- (void)setBrowsingSession:(id)session
{
  sessionCopy = session;
  browsingSession = self->_browsingSession;
  if (browsingSession != sessionCopy)
  {
    v9 = sessionCopy;
    viewModel = [(PUBrowsingSession *)browsingSession viewModel];
    [viewModel unregisterChangeObserver:self];

    objc_storeStrong(&self->_browsingSession, session);
    viewModel2 = [(PUBrowsingSession *)self->_browsingSession viewModel];
    [viewModel2 registerChangeObserver:self];

    sessionCopy = v9;
  }

  MEMORY[0x1EEE66BB8](browsingSession, sessionCopy);
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToCanBeginAtLocationFromProvider = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidEnd = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToIsLocationFromProviderInAccessoryContent = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToSetAccessoryVisibleChangeReason = objc_opt_respondsToSelector() & 1;
    [(PUAccessoryVisibilityInteractionController *)self _updateGestureRecognizers];
  }
}

- (void)dealloc
{
  [(PUAccessoryVisibilityInteractionController *)self _resumeLibraryChangesDelivery];
  v3.receiver = self;
  v3.super_class = PUAccessoryVisibilityInteractionController;
  [(PUAccessoryVisibilityInteractionController *)&v3 dealloc];
}

- (PUAccessoryVisibilityInteractionController)init
{
  v8.receiver = self;
  v8.super_class = PUAccessoryVisibilityInteractionController;
  v2 = [(PUAccessoryVisibilityInteractionController *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v2 action:sel__handlePanGestureRecognizer_];
    panGestureRecognizer = v2->_panGestureRecognizer;
    v2->_panGestureRecognizer = v3;

    [(UIPanGestureRecognizer *)v2->_panGestureRecognizer setAllowedScrollTypesMask:3];
    [(UIPanGestureRecognizer *)v2->_panGestureRecognizer setDelegate:v2];
    v5 = objc_alloc_init(MEMORY[0x1E69C3C40]);
    verticalSwipeGestureRecognizerHelper = v2->_verticalSwipeGestureRecognizerHelper;
    v2->_verticalSwipeGestureRecognizerHelper = v5;
  }

  return v2;
}

@end