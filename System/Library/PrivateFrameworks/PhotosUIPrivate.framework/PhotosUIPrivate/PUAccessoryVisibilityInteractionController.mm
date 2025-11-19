@interface PUAccessoryVisibilityInteractionController
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)_initialContentOffset;
- (PHPhotoLibrary)pausedPhotoLibrary;
- (PUAccessoryVisibilityInteractionController)init;
- (PUAccessoryVisibilityInteractionControllerDelegate)delegate;
- (id)_currentAssetViewModel;
- (void)_handlePanGestureRecognizer:(id)a3;
- (void)_pauseLibraryChangesDelivery;
- (void)_performChanges:(id)a3;
- (void)_resumeLibraryChangesDelivery;
- (void)_setAccessoryVisible:(BOOL)a3;
- (void)_setAssetViewModel:(id)a3;
- (void)_setContentOffsetOverrideFactor:(id)a3;
- (void)_setNeedsUpdate;
- (void)_setOverridingContentOffsetY:(id)a3;
- (void)_updateContentOffsetIfNeeded;
- (void)_updateGestureRecognizers;
- (void)_updateIfNeeded;
- (void)dealloc;
- (void)invalidateViewHostingGestureRecognizers;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setBrowsingSession:(id)a3;
- (void)setDelegate:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
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

- (void)viewModel:(id)a3 didChange:(id)a4
{
  if ([a4 currentAssetDidChange])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__PUAccessoryVisibilityInteractionController_viewModel_didChange___block_invoke;
    v5[3] = &unk_1E7B80DD0;
    v5[4] = self;
    [(PUAccessoryVisibilityInteractionController *)self _performChanges:v5];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUAccessoryVisibilityInteractionController *)self panGestureRecognizer];

  if (v8 == v6)
  {
    v10 = [(PUAccessoryVisibilityInteractionController *)self verticalSwipeGestureRecognizerHelper];
    v9 = [v10 verticalSwipeGestureRecognizer:v6 shouldBeRequiredToFailByGestureRecognizer:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(PUAccessoryVisibilityInteractionController *)self panGestureRecognizer];
  if (v5 == v4)
  {
    v7 = [(PUAccessoryVisibilityInteractionController *)self verticalSwipeGestureRecognizerHelper];
    v8 = [v7 verticalSwipeGestureRecognizerShouldBegin:v4];

    v9 = [v5 view];
    [v5 velocityInView:v9];
    v11 = v10;

    if (v8 && v11 >= 0.0)
    {
      v12 = [(PUAccessoryVisibilityInteractionController *)self _currentAssetViewModel];
      v8 = [v12 isAccessoryViewVisible];
    }

    v6 = !self->_delegateFlags.respondsToCanBeginAtLocationFromProvider & v8;
    if (self->_delegateFlags.respondsToCanBeginAtLocationFromProvider && v8)
    {
      v13 = [(PUAccessoryVisibilityInteractionController *)self delegate];
      v6 = [v13 accessoryVisibilityInteractionController:self canBeginAtLocationFromProvider:v5];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v14 = a3;
  v9 = PUOverridingContentOffsetYObservationContext;
  if (PUOverridingContentOffsetYObservationContext != a5 && PUContentOffsetOverrideFactorObservationContext != a5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUAccessoryVisibilityInteractionController.m" lineNumber:379 description:@"unknown observation context"];

    abort();
  }

  if ((v6 & 2) != 0)
  {
    [(PUAccessoryVisibilityInteractionController *)self _invalidateContentOffset];
    [(PUAccessoryVisibilityInteractionController *)self _updateIfNeeded];
    v9 = PUOverridingContentOffsetYObservationContext;
  }

  if ((v6 & 4) != 0 && v9 == a5)
  {
    v11 = [(PUAccessoryVisibilityInteractionController *)self _overridingContentOffsetY];
    v12 = [v11 isAnimating];

    if ((v12 & 1) == 0)
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
    v7 = [(PUAccessoryVisibilityInteractionController *)self _overridingContentOffsetY];
    [v7 presentationValue];
    v9 = v8;

    v10 = [(PUAccessoryVisibilityInteractionController *)self _contentOffsetOverrideFactor];
    [v10 presentationValue];
    v12 = v11;

    v13 = [(PUAccessoryVisibilityInteractionController *)self _assetViewModel];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__PUAccessoryVisibilityInteractionController__updateContentOffsetIfNeeded__block_invoke;
    v15[3] = &unk_1E7B7C518;
    v16 = v13;
    v17 = v9;
    v18 = v12;
    v14 = v13;
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
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"PUAccessoryVisibilityInteractionController.m" lineNumber:323 description:@"update still needed after update pass"];
    }
  }
}

- (void)_performChanges:(id)a3
{
  v4 = a3;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  v6 = v4;
  if (v4)
  {
    v4[2](v4);
    v4 = v6;
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    [(PUAccessoryVisibilityInteractionController *)self _updateIfNeeded];
    v4 = v6;
  }
}

- (void)_setAssetViewModel:(id)a3
{
  v5 = a3;
  p_assetViewModel = &self->__assetViewModel;
  if (self->__assetViewModel != v5)
  {
    v7 = v5;
    objc_storeStrong(p_assetViewModel, a3);
    p_assetViewModel = [(PUAccessoryVisibilityInteractionController *)self _invalidateContentOffset];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_assetViewModel, v5);
}

- (void)_setContentOffsetOverrideFactor:(id)a3
{
  v5 = a3;
  contentOffsetOverrideFactor = self->__contentOffsetOverrideFactor;
  if (contentOffsetOverrideFactor != v5)
  {
    v7 = v5;
    [(PXNumberAnimator *)contentOffsetOverrideFactor unregisterChangeObserver:self context:PUContentOffsetOverrideFactorObservationContext];
    objc_storeStrong(&self->__contentOffsetOverrideFactor, a3);
    [(PXNumberAnimator *)self->__contentOffsetOverrideFactor registerChangeObserver:self context:PUContentOffsetOverrideFactorObservationContext];
    contentOffsetOverrideFactor = [(PUAccessoryVisibilityInteractionController *)self _invalidateContentOffset];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](contentOffsetOverrideFactor, v5);
}

- (void)_setOverridingContentOffsetY:(id)a3
{
  v5 = a3;
  overridingContentOffsetY = self->__overridingContentOffsetY;
  if (overridingContentOffsetY != v5)
  {
    v7 = v5;
    [(PXNumberAnimator *)overridingContentOffsetY unregisterChangeObserver:self context:PUOverridingContentOffsetYObservationContext];
    objc_storeStrong(&self->__overridingContentOffsetY, a3);
    [(PXNumberAnimator *)self->__overridingContentOffsetY registerChangeObserver:self context:PUOverridingContentOffsetYObservationContext];
    overridingContentOffsetY = [(PUAccessoryVisibilityInteractionController *)self _invalidateContentOffset];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](overridingContentOffsetY, v5);
}

- (id)_currentAssetViewModel
{
  v2 = [(PUAccessoryVisibilityInteractionController *)self browsingSession];
  v3 = [v2 viewModel];

  v4 = [v3 currentAssetReference];
  v5 = [v3 assetViewModelForAssetReference:v4];

  return v5;
}

- (void)_setAccessoryVisible:(BOOL)a3
{
  v3 = a3;
  if (self->_delegateFlags.respondsToSetAccessoryVisibleChangeReason)
  {
    v7 = [(PUAccessoryVisibilityInteractionController *)self delegate];
    [v7 accessoryVisibilityInteractionController:self setAccessoryVisible:v3 changeReason:2];
  }

  else
  {
    v5 = [(PUAccessoryVisibilityInteractionController *)self _assetViewModel];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__PUAccessoryVisibilityInteractionController__setAccessoryVisible___block_invoke;
    v8[3] = &unk_1E7B7FA58;
    v11 = v3;
    v9 = v5;
    v10 = 2;
    v6 = v5;
    [v6 performChanges:v8];
  }
}

- (void)_resumeLibraryChangesDelivery
{
  v3 = [(PUAccessoryVisibilityInteractionController *)self changesPauseToken];
  if (v3)
  {
  }

  else
  {
    v4 = [(PUAccessoryVisibilityInteractionController *)self pausedPhotoLibrary];

    if (!v4)
    {
      return;
    }
  }

  v5 = [(PUAccessoryVisibilityInteractionController *)self pausedPhotoLibrary];
  v6 = [(PUAccessoryVisibilityInteractionController *)self changesPauseToken];
  [v5 px_endPausingChanges:v6];

  [(PUAccessoryVisibilityInteractionController *)self setChangesPauseToken:0];

  [(PUAccessoryVisibilityInteractionController *)self setPausedPhotoLibrary:0];
}

- (void)_pauseLibraryChangesDelivery
{
  v9 = [(PUAccessoryVisibilityInteractionController *)self pausedPhotoLibrary];
  v3 = [(PUAccessoryVisibilityInteractionController *)self changesPauseToken];
  v4 = [(PUAccessoryVisibilityInteractionController *)self _assetViewModel];
  v5 = [v4 asset];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 photoLibrary];

  v8 = [v7 px_beginPausingChangesWithTimeout:@"pause_for_swipe_info_panel_vertical" identifier:30.0];
  [(PUAccessoryVisibilityInteractionController *)self setChangesPauseToken:v8];

  [(PUAccessoryVisibilityInteractionController *)self setPausedPhotoLibrary:v7];
  if (v9 && v3)
  {
    [v9 px_endPausingChanges:v3];
  }
}

- (void)_handlePanGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  v6 = v5;
  if ((v5 - 3) < 3)
  {
    v7 = [(PUAccessoryVisibilityInteractionController *)self _assetViewModel];
    [(PUChangeDirectionValueFilter *)v7 preferredContentOffset];
    v9 = v8;
    v10 = [(PUAccessoryVisibilityInteractionController *)self _verticalDirectionValueFilter];
    [v10 outputValue];
    if (v6 == 3 && v11 != 0.0)
    {
      if (v11 > 0.0)
      {
        v9 = 0.0;
      }

      [(PUAccessoryVisibilityInteractionController *)self _setAccessoryVisible:v11 <= 0.0];
    }

    v12 = [v4 view];
    v13 = [v12 window];
    [v4 velocityInView:v13];
    v15 = v14;

    v16 = [(PUAccessoryVisibilityInteractionController *)self _overridingContentOffsetY];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __74__PUAccessoryVisibilityInteractionController__handlePanGestureRecognizer___block_invoke_4;
    v28[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
    *&v28[4] = v9;
    [v16 performChangesUsingDefaultSpringAnimationWithInitialVelocity:v28 changes:v15];

    v17 = [(PUAccessoryVisibilityInteractionController *)self _contentOffsetOverrideFactor];
    [v17 performChangesUsingDefaultSpringAnimationWithInitialVelocity:&__block_literal_global_2010 changes:0.0];

    [(PUAccessoryVisibilityInteractionController *)self _setVerticalDirectionValueFilter:0];
    [(PUAccessoryVisibilityInteractionController *)self _setSwipeDirectionValueFilter:0];
    if (v6 == 3 && self->_delegateFlags.respondsToDidEnd)
    {
      v18 = [(PUAccessoryVisibilityInteractionController *)self delegate];
      [v18 accessoryVisibilityInteractionControllerDidEnd:self];
    }

    goto LABEL_15;
  }

  if (v5 == 2)
  {
    [(PUAccessoryVisibilityInteractionController *)self _initialContentOffset];
    v21 = v20;
    v22 = [v4 view];
    v23 = [v22 window];
    [v4 translationInView:v23];
    v25 = v24;

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __74__PUAccessoryVisibilityInteractionController__handlePanGestureRecognizer___block_invoke_2;
    v29[3] = &unk_1E7B7FF70;
    v26 = v21 + v25;
    v29[4] = self;
    *&v29[5] = v26;
    [(PUAccessoryVisibilityInteractionController *)self _performChanges:v29];
    v27 = [(PUAccessoryVisibilityInteractionController *)self _verticalDirectionValueFilter];
    [v27 setInputValue:v25];

    v7 = [(PUAccessoryVisibilityInteractionController *)self _swipeDirectionValueFilter];
    [(PUValueFilter *)v7 setInputValue:v25];
    [(PUAccessoryVisibilityInteractionController *)self _setAccessoryVisible:v26 < 0.0];
    goto LABEL_15;
  }

  if (v5 == 1)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __74__PUAccessoryVisibilityInteractionController__handlePanGestureRecognizer___block_invoke;
    v30[3] = &unk_1E7B80DD0;
    v30[4] = self;
    [(PUAccessoryVisibilityInteractionController *)self _performChanges:v30];
    [(PUAccessoryVisibilityInteractionController *)self _pauseLibraryChangesDelivery];
    v7 = objc_alloc_init(PUChangeDirectionValueFilter);
    [(PUChangeDirectionValueFilter *)v7 setMinimumChangeValue:5.0];
    [(PUAccessoryVisibilityInteractionController *)self _setVerticalDirectionValueFilter:v7];
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
  v3 = [(PUAccessoryVisibilityInteractionController *)self delegate];
  v4 = [v3 accessoryVisibilityInteractionControllerViewHostingGestureRecognizers:self];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PUAccessoryVisibilityInteractionController__updateGestureRecognizers__block_invoke;
  aBlock[3] = &unk_1E7B74110;
  v9 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v7 = [(PUAccessoryVisibilityInteractionController *)self panGestureRecognizer];
  v6[2](v6, v7);
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

- (void)setBrowsingSession:(id)a3
{
  v5 = a3;
  browsingSession = self->_browsingSession;
  if (browsingSession != v5)
  {
    v9 = v5;
    v7 = [(PUBrowsingSession *)browsingSession viewModel];
    [v7 unregisterChangeObserver:self];

    objc_storeStrong(&self->_browsingSession, a3);
    v8 = [(PUBrowsingSession *)self->_browsingSession viewModel];
    [v8 registerChangeObserver:self];

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](browsingSession, v5);
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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