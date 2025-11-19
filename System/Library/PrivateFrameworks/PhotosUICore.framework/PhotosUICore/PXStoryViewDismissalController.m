@interface PXStoryViewDismissalController
- (CGPoint)currentGestureLocation;
- (CGPoint)currentGestureVelocity;
- (CGPoint)initialGestureLocation;
- (CGPoint)targetCenter;
- (CGSize)sourceSize;
- (CGSize)targetSize;
- (PXStoryViewDismissalController)init;
- (PXStoryViewDismissalController)initWithViewModel:(id)a3;
- (void)_invalidateCurrentPlacement;
- (void)_invalidateInitialItemPlacement;
- (void)_invalidateSwipeDownTracker;
- (void)_setNeedsUpdate;
- (void)_updateCurrentPlacement;
- (void)_updateInitialItemPlacement;
- (void)_updateSwipeDownTracker;
- (void)handlePanDownGestureRecognizer:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setCenterOffsetAnimator:(id)a3;
- (void)setCurrentGestureLocation:(CGPoint)a3;
- (void)setCurrentGestureVelocity:(CGPoint)a3;
- (void)setInitialItemPlacement:(id)a3;
- (void)setViewControllerTransition:(id)a3;
@end

@implementation PXStoryViewDismissalController

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)sourceSize
{
  width = self->_sourceSize.width;
  height = self->_sourceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)targetCenter
{
  x = self->_targetCenter.x;
  y = self->_targetCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)currentGestureVelocity
{
  x = self->_currentGestureVelocity.x;
  y = self->_currentGestureVelocity.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)currentGestureLocation
{
  x = self->_currentGestureLocation.x;
  y = self->_currentGestureLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)initialGestureLocation
{
  x = self->_initialGestureLocation.x;
  y = self->_initialGestureLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (ViewControllerTransitionObservationContext == a5)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    v11 = v9;
    [(PXStoryViewDismissalController *)self _invalidateInitialItemPlacement];
    goto LABEL_7;
  }

  if (FinalAnimatorObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryViewDismissalController.m" lineNumber:412 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 6) != 0)
  {
    v11 = v9;
    [(PXStoryViewDismissalController *)self _invalidateCurrentPlacement];
LABEL_7:
    v9 = v11;
  }

LABEL_8:
}

- (void)_updateCurrentPlacement
{
  v3 = [(PXStoryViewDismissalController *)self viewControllerTransition];
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  v8 = [(PXStoryViewDismissalController *)self state];
  if (v8 == 2)
  {
    v11 = [(PXStoryViewDismissalController *)self releaseAnimationProgressAnimator];
    [v11 presentationValue];
    v13 = v12;
    v14 = [(PXStoryViewDismissalController *)self centerOffsetAnimator];
    v15 = [(PXStoryViewDismissalController *)self releaseAnimationDismissalProgressAnimator];
    [v15 presentationValue];
    v17 = v16;
    if (([v11 isAnimating] & 1) != 0 || (objc_msgSend(v14, "isAnimating") & 1) != 0 || objc_msgSend(v15, "isAnimating"))
    {
      [(PXStoryViewDismissalController *)self targetCenter];
      [v14 presentationValue];
      PXPointAdd();
    }

    [(PXStoryViewDismissalController *)self setState:0];
    v18 = 1;
  }

  else
  {
    if (v8 == 1)
    {
      v9 = [(PXStoryViewDismissalController *)self swipeDownTracker];
      v10 = v9;
      if (v9)
      {
        [v9 trackedCenter];
        [v10 trackedBounds];
        PXRectWithCenterAndSize();
      }

      PXAssertGetLog();
    }

    v18 = 0;
    v17 = 0;
    v13 = 0x7FF8000000000000;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__PXStoryViewDismissalController__updateCurrentPlacement__block_invoke;
  v20[3] = &unk_1E77332A8;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v20[4] = self;
  v21 = v3;
  v26 = v17;
  v27 = v13;
  v28 = v18;
  v19 = v3;
  [v19 performChanges:v20];
}

void __57__PXStoryViewDismissalController__updateCurrentPlacement__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) referenceView];
  v5 = [*(a1 + 32) targetCancelled];
  if (!CGRectIsNull(*(a1 + 48)) && v4)
  {
    v6 = 1.0 - *(a1 + 80);
    v7 = [*(a1 + 40) summaryItemOriginalPlacement];
    v8 = [*(a1 + 40) detailItemOriginalPlacement];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v9 = *(a1 + 64);
    v13 = *(a1 + 48);
    aBlock[2] = __57__PXStoryViewDismissalController__updateCurrentPlacement__block_invoke_2;
    aBlock[3] = &unk_1E7733280;
    v14 = v9;
    aBlock[4] = v4;
    aBlock[5] = v7;
    aBlock[6] = v8;
    v15 = v6;
    _Block_copy(aBlock);
    v10 = *(a1 + 88);
    if (v5)
    {
      v10 = 1.0 - v10;
    }

    [v3 setFractionCompleted:v10];
    if ((v5 & 1) == 0)
    {
      [*(a1 + 40) isVerticalOnly];
    }

    PXFloatByLinearlyInterpolatingFloats();
  }

  if (*(a1 + 96) == 1)
  {
    if (v5)
    {
      [v3 cancel];
    }

    else
    {
      [v3 finish];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PXStoryViewDismissalController__updateCurrentPlacement__block_invoke_4;
    block[3] = &unk_1E774C648;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

id __57__PXStoryViewDismissalController__updateCurrentPlacement__block_invoke_2(uint64_t a1, void *a2, double a3, double a4)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__PXStoryViewDismissalController__updateCurrentPlacement__block_invoke_3;
  v10[3] = &unk_1E7733258;
  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v11 = *(a1 + 32);
  v16 = a3;
  v17 = a4;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v18 = *(a1 + 88);
  v8 = [a2 copyWithConfiguration:v10];

  return v8;
}

- (void)_invalidateCurrentPlacement
{
  v2 = [(PXStoryViewDismissalController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentPlacement];
}

- (void)_updateSwipeDownTracker
{
  v3 = [(PXStoryViewDismissalController *)self initialItemPlacement];
  v4 = [(PXStoryViewDismissalController *)self referenceView];
  v5 = v4;
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  if (v3 && v4)
  {
    [v3 rectInCoordinateSpace:v4 velocity:0];
    v6 = v10;
    v7 = v11;
    v8 = v12;
    v9 = v13;
  }

  [(PXStoryViewDismissalController *)self currentGestureLocation];
  v14 = [(PXStoryViewDismissalController *)self swipeDownTracker];
  if ([(PXStoryViewDismissalController *)self state]== 1)
  {
    v18.origin.x = v6;
    v18.origin.y = v7;
    v18.size.width = v8;
    v18.size.height = v9;
    v15 = !CGRectIsNull(v18);
  }

  else
  {
    v15 = 0;
  }

  v16 = [(PXStoryViewDismissalController *)self viewControllerTransition];
  v17 = [v16 isVerticalOnly];

  if (v15)
  {
    if (!v14)
    {
      [[PXSwipeDownTracker alloc] initWithOptions:v17];
      [(PXStoryViewDismissalController *)self initialGestureLocation];
      PXPointIsNull();
    }

    PXPointIsNull();
  }

  if ([(PXStoryViewDismissalController *)self state]== 1)
  {
    PXPointIsNull();
  }

  [(PXStoryViewDismissalController *)self setSwipeDownTracker:0];
}

void __57__PXStoryViewDismissalController__updateSwipeDownTracker__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) referenceView];
  [v3 rectInCoordinateSpace:v4 velocity:0];
  v5 = *(*(a1 + 48) + 8);
  v5[4] = v6;
  v5[5] = v7;
  v5[6] = v8;
  v5[7] = v9;

  PXRectIsValid();
}

uint64_t __57__PXStoryViewDismissalController__updateSwipeDownTracker__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = 1.0;
  if (*(a1 + 32))
  {
    v2 = 0.0;
  }

  return [a2 setValue:v2];
}

- (void)_invalidateSwipeDownTracker
{
  v2 = [(PXStoryViewDismissalController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSwipeDownTracker];
}

- (void)_updateInitialItemPlacement
{
  v4 = [(PXStoryViewDismissalController *)self viewControllerTransition];
  v3 = [v4 detailItemOriginalPlacement];
  [(PXStoryViewDismissalController *)self setInitialItemPlacement:v3];
}

- (void)_invalidateInitialItemPlacement
{
  v2 = [(PXStoryViewDismissalController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateInitialItemPlacement];
}

- (void)_setNeedsUpdate
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__PXStoryViewDismissalController__setNeedsUpdate__block_invoke;
  v2[3] = &unk_1E774C318;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __49__PXStoryViewDismissalController__setNeedsUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained updater];
  [v1 updateIfNeeded];
}

- (void)setCenterOffsetAnimator:(id)a3
{
  v5 = a3;
  centerOffsetAnimator = self->_centerOffsetAnimator;
  if (centerOffsetAnimator != v5)
  {
    v7 = v5;
    [(PXPointAnimator *)centerOffsetAnimator unregisterChangeObserver:self context:FinalAnimatorObservationContext];
    objc_storeStrong(&self->_centerOffsetAnimator, a3);
    [(PXPointAnimator *)self->_centerOffsetAnimator registerChangeObserver:self context:FinalAnimatorObservationContext];
    [(PXStoryViewDismissalController *)self _invalidateCurrentPlacement];
    v5 = v7;
  }
}

- (void)setInitialItemPlacement:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_initialItemPlacement != v5)
  {
    v8 = v5;
    v7 = [(PXGItemPlacement *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_initialItemPlacement, a3);
      [(PXStoryViewDismissalController *)self _invalidateSwipeDownTracker];
      v6 = v8;
    }
  }
}

- (void)setCurrentGestureVelocity:(CGPoint)a3
{
  if (a3.x != self->_currentGestureVelocity.x || a3.y != self->_currentGestureVelocity.y)
  {
    self->_currentGestureVelocity = a3;
    [(PXStoryViewDismissalController *)self _invalidateSwipeDownTracker];
  }
}

- (void)setCurrentGestureLocation:(CGPoint)a3
{
  if (a3.x != self->_currentGestureLocation.x || a3.y != self->_currentGestureLocation.y)
  {
    self->_currentGestureLocation = a3;
    [(PXStoryViewDismissalController *)self _invalidateSwipeDownTracker];
  }
}

- (void)setViewControllerTransition:(id)a3
{
  v5 = a3;
  viewControllerTransition = self->_viewControllerTransition;
  if (viewControllerTransition != v5)
  {
    v9 = v5;
    [(PXGViewControllerTransition *)viewControllerTransition unregisterChangeObserver:self context:ViewControllerTransitionObservationContext];
    objc_storeStrong(&self->_viewControllerTransition, a3);
    [(PXGViewControllerTransition *)self->_viewControllerTransition registerChangeObserver:self context:ViewControllerTransitionObservationContext];
    [(PXStoryViewDismissalController *)self _invalidateInitialItemPlacement];
    v7 = [(PXGViewControllerTransition *)v9 detailViewController];
    v8 = [v7 view];
    [(PXStoryViewDismissalController *)self setReferenceView:v8];

    v5 = v9;
  }
}

- (void)handlePanDownGestureRecognizer:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PXStoryViewDismissalController_handlePanDownGestureRecognizer___block_invoke;
  aBlock[3] = &unk_1E774C620;
  aBlock[4] = self;
  v5 = v4;
  v22 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [v5 state];
  if (v7 > 2)
  {
    if ((v7 - 3) >= 3)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    if (v7 != 1)
    {
      if (v7 == 2 && [(PXStoryViewDismissalController *)self state]== 1)
      {
        v6[2](v6);
      }

      goto LABEL_22;
    }

    if ([(PXStoryViewDismissalController *)self state]|| ([(PXStoryViewDismissalController *)self viewControllerTransition], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = PLStoryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Pan down began before previous dismissal completed, ignoring.", v14, 2u);
      }

      goto LABEL_21;
    }

    v9 = [(PXStoryViewDismissalController *)self viewModel];
    v10 = [v9 actionPerformer];
    v11 = [v9 requestImmediateNavigationPermission];
    if (v11)
    {
      v12 = [v10 dismissStoryViewControllerInteractively];
      if (v12)
      {
        v13 = v12;
        [(PXStoryViewDismissalController *)self setViewControllerTransition:v12];
        v6[2](v6);
        [(PXStoryViewDismissalController *)self currentGestureLocation];
        [(PXStoryViewDismissalController *)self setInitialGestureLocation:?];
        [(PXStoryViewDismissalController *)self setState:1];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __65__PXStoryViewDismissalController_handlePanDownGestureRecognizer___block_invoke_2;
        v18[3] = &unk_1E773E390;
        v19 = v11;
        v20 = v10;
        [v9 performChanges:v18];

LABEL_20:
LABEL_21:

        goto LABEL_22;
      }

      [v11 cancelled];
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __65__PXStoryViewDismissalController_handlePanDownGestureRecognizer___block_invoke_3;
      v15[3] = &unk_1E77331E8;
      v16 = v9;
      v17 = v10;
      [v16 requestNavigationPermission:v15];
    }

    [v5 px_cancel];
    goto LABEL_20;
  }

  if ([(PXStoryViewDismissalController *)self state]== 1)
  {
    [(PXStoryViewDismissalController *)self setCurrentGestureLocation:*off_1E77221E8, *(off_1E77221E8 + 1)];
  }

LABEL_22:
}

void __65__PXStoryViewDismissalController_handlePanDownGestureRecognizer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) referenceView];
  [*(a1 + 40) locationInView:v2];
  [*(a1 + 32) setCurrentGestureLocation:?];
  [*(a1 + 40) velocityInView:v2];
  [*(a1 + 32) setCurrentGestureVelocity:?];
}

void __65__PXStoryViewDismissalController_handlePanDownGestureRecognizer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setCurrentClosePermission:*(a1 + 32)];
  [v3 setWantsRelatedOverlayVisible:0];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [*(a1 + 40) needs79067616Workaround])
  {
    [v3 setNeedsStatusBarVisible:1];
  }
}

void __65__PXStoryViewDismissalController_handlePanDownGestureRecognizer___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__PXStoryViewDismissalController_handlePanDownGestureRecognizer___block_invoke_4;
    v6[3] = &unk_1E774B048;
    v7 = v3;
    [v5 performChanges:v6];
    [*(a1 + 40) dismissStoryViewController];
  }
}

- (PXStoryViewDismissalController)initWithViewModel:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXStoryViewDismissalController;
  v6 = [(PXStoryViewDismissalController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    v7->_currentGestureLocation = *off_1E77221E8;
    v8 = [[off_1E7721940 alloc] initWithTarget:v7 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v7->_updater;
    v7->_updater = v8;

    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateInitialItemPlacement];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateSwipeDownTracker];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateCurrentPlacement];
  }

  return v7;
}

- (PXStoryViewDismissalController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryViewDismissalController.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXStoryViewDismissalController init]"}];

  abort();
}

@end