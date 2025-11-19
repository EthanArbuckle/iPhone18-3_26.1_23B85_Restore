@interface PXStoryViewControllerViewModelTransitionsCoordinator
- (PXStoryViewControllerViewModelTransitionsCoordinator)initWithObservableModel:(id)a3;
- (PXStoryViewControllerViewModelTransitionsCoordinator)initWithViewModel:(id)a3 viewController:(id)a4;
- (PXStoryViewModel)viewModel;
- (UIViewController)viewController;
- (void)_dismissalTransition:(id)a3 didEnd:(BOOL)a4;
- (void)_endDismissal:(BOOL)a3;
- (void)_forceDismissViewController;
- (void)_handleViewModeTransitionStartDelay;
- (void)_invalidateDesiredDismissalState;
- (void)_invalidateFractionCompleted;
- (void)_invalidateFullsizeContentBoundingBox;
- (void)_invalidateShouldFinish;
- (void)_invalidateSummaryItemPlacementOverride;
- (void)_invalidateSwipeDownDismissalPreview;
- (void)_invalidateSwipeDownTriggeringDismissal;
- (void)_invalidateViewControllerDismissalTargetPlacement;
- (void)_invalidateViewModeTransition;
- (void)_tryDismissingViewController;
- (void)_updateDesiredDismissalState;
- (void)_updateFractionCompleted;
- (void)_updateFullsizeContentBoundingBox;
- (void)_updateShouldFinish;
- (void)_updateSummaryItemPlacementOverride;
- (void)_updateSwipeDownDismissalPreview;
- (void)_updateSwipeDownTriggeringDismissal;
- (void)_updateViewControllerDismissalTargetPlacement;
- (void)_updateViewModeTransition;
- (void)configureUpdater:(id)a3;
- (void)handleModelChange:(unint64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDismissalTransition:(id)a3;
- (void)setFullsizeContentBoundingBox:(id)a3;
- (void)setIsDismisallTriggered:(BOOL)a3;
- (void)setIsFinishingDismissal:(BOOL)a3;
- (void)setIsPreparedForDismissal:(BOOL)a3;
- (void)setViewModeTransition:(id)a3;
@end

@implementation PXStoryViewControllerViewModelTransitionsCoordinator

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (PXStoryViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (DismissalTransitionObservationContext == a5)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_12;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__PXStoryViewControllerViewModelTransitionsCoordinator_observable_didChange_context___block_invoke;
    v13[3] = &unk_1E774AFA8;
    v13[4] = self;
    v9 = v13;
LABEL_11:
    [(PXStoryController *)self performChanges:v9];
    goto LABEL_12;
  }

  if (ViewModeTransitionObservationContext_249554 == a5)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_12;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__PXStoryViewControllerViewModelTransitionsCoordinator_observable_didChange_context___block_invoke_2;
    v12[3] = &unk_1E774AFA8;
    v12[4] = self;
    v9 = v12;
    goto LABEL_11;
  }

  if (DismissalPreviewFractionObservationContext == a5)
  {
    if ((a4 & 2) == 0)
    {
      goto LABEL_12;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__PXStoryViewControllerViewModelTransitionsCoordinator_observable_didChange_context___block_invoke_3;
    v11[3] = &unk_1E774AFA8;
    v11[4] = self;
    v9 = v11;
    goto LABEL_11;
  }

  v10.receiver = self;
  v10.super_class = PXStoryViewControllerViewModelTransitionsCoordinator;
  [(PXStoryController *)&v10 observable:v8 didChange:a4 context:a5];
LABEL_12:
}

uint64_t __85__PXStoryViewControllerViewModelTransitionsCoordinator_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _invalidateFractionCompleted];
  [*(a1 + 32) _invalidateFullsizeContentBoundingBox];
  v2 = *(a1 + 32);

  return [v2 _invalidateShouldFinish];
}

- (void)handleModelChange:(unint64_t)a3
{
  if ((a3 & 0x400000000) == 0)
  {
    if ((a3 & 0x800000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__PXStoryViewControllerViewModelTransitionsCoordinator_handleModelChange___block_invoke_2;
    v7[3] = &unk_1E774AFA8;
    v7[4] = self;
    [(PXStoryController *)self performChanges:v7];
    if ((a3 & 0x10000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PXStoryViewControllerViewModelTransitionsCoordinator_handleModelChange___block_invoke;
  v8[3] = &unk_1E774AFA8;
  v8[4] = self;
  [(PXStoryController *)self performChanges:v8];
  if ((a3 & 0x800000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a3 & 0x10000000000) != 0)
  {
LABEL_4:
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74__PXStoryViewControllerViewModelTransitionsCoordinator_handleModelChange___block_invoke_3;
    v6[3] = &unk_1E774AFA8;
    v6[4] = self;
    [(PXStoryController *)self performChanges:v6];
  }

LABEL_5:
  v5.receiver = self;
  v5.super_class = PXStoryViewControllerViewModelTransitionsCoordinator;
  [(PXStoryController *)&v5 handleModelChange:a3];
}

- (void)_updateSwipeDownDismissalPreview
{
  v3 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__PXStoryViewControllerViewModelTransitionsCoordinator__updateSwipeDownDismissalPreview__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __88__PXStoryViewControllerViewModelTransitionsCoordinator__updateSwipeDownDismissalPreview__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 isPreparedForDismissal])
  {
    v5 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) isFinishingDismissal];
  }

  [v4 setSwipeDownDismissalPreviewEnabled:v5];
  v6 = [*(a1 + 32) dismissalPreviewFraction];
  [v6 presentationValue];
  [v4 setSwipeDownDismissalPreviewFraction:?];
}

- (void)_invalidateSwipeDownDismissalPreview
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSwipeDownDismissalPreview];
}

- (void)_updateSwipeDownTriggeringDismissal
{
  v3 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];

  v4 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self isDismisallTriggered];
  v5 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModel];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__PXStoryViewControllerViewModelTransitionsCoordinator__updateSwipeDownTriggeringDismissal__block_invoke;
  v12[3] = &__block_descriptor_34_e35_v16__0___PXStoryMutableViewModel__8l;
  v13 = v4;
  v14 = v3 != 0;
  [v5 performChanges:v12];

  if (v3)
  {
    v6 = +[PXStorySettings sharedInstance];
    [v6 swipeDownThresholdFadeDuration];
    v8 = v7;

    if (![(PXStoryViewControllerViewModelTransitionsCoordinator *)self isDismissalPreviewFractionInitialized])
    {
      [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setIsDismissalPreviewFractionInitialized:1];
      v8 = 0.0;
    }

    v9 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalPreviewFraction];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91__PXStoryViewControllerViewModelTransitionsCoordinator__updateSwipeDownTriggeringDismissal__block_invoke_2;
    v10[3] = &__block_descriptor_33_e35_v16__0___PXMutableNumberAnimator__8l;
    v11 = v4;
    [v9 performChangesWithDuration:1 curve:v10 changes:v8];
  }
}

void __91__PXStoryViewControllerViewModelTransitionsCoordinator__updateSwipeDownTriggeringDismissal__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSwipeDownTriggeringDismissal:*(a1 + 32)];
  if (*(a1 + 33) == 1)
  {
    [v3 setWantsChromeVisible:(*(a1 + 32) & 1) == 0];
  }
}

uint64_t __91__PXStoryViewControllerViewModelTransitionsCoordinator__updateSwipeDownTriggeringDismissal__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = 0.0;
  if (*(a1 + 32))
  {
    v2 = 1.0;
  }

  return [a2 setValue:v2];
}

- (void)_invalidateSwipeDownTriggeringDismissal
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSwipeDownTriggeringDismissal];
}

- (void)_updateDesiredDismissalState
{
  v3 = +[PXStorySettings sharedInstance];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModel];
  v5 = v4;
  if (v4)
  {
    [v4 swipeDownInteractionState];
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
  }

  v22[2] = v26;
  v22[3] = v27;
  v23 = v28;
  v22[0] = v24;
  v22[1] = v25;
  v6 = PXStorySwipeDownInteractionStateEqualsState(v22, &PXStorySwipeDownInteractionStateNull);
  if ((v6 & 1) == 0)
  {
    v7 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModeTransition];
    if (v7)
    {
      v8 = v7;
      v9 = [v3 swipeDownBehavior];

      if (v9 == 1)
      {
        v10 = *(&v25 + 1) - *(&v24 + 1);
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v12 = v11;
        [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModeTransitionStartTime];
        v14 = v13;
        [v3 swipeDownDismissalDistanceThreshold];
        if (v10 >= v15)
        {
          [v3 swipeDownDismissalDelay];
          v16 = v12 - v14 < v17;
        }

        else
        {
          v16 = 1;
        }

        [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setIsDismisallTriggered:v16];
      }
    }
  }

  if ([(PXStoryViewControllerViewModelTransitionsCoordinator *)self isPreparedForDismissal])
  {
    if ((v6 & [(PXStoryViewControllerViewModelTransitionsCoordinator *)self isDismisallTriggered]) == 1)
    {
      v18 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];

      if (!v18)
      {
        [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _forceDismissViewController];
      }
    }
  }

  if ([(PXStoryViewControllerViewModelTransitionsCoordinator *)self isPreparedForDismissal])
  {
    v19 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModeTransition];

    if (!v19)
    {
      [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setIsPreparedForDismissal:0];
      v20 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self isDismisallTriggered];
      v21 = 0;
      if (v20)
      {
        v21 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self shouldFinish];
      }

      [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _endDismissal:v21];
    }
  }

  else if ((v6 & 1) == 0 && [(PXStoryViewControllerViewModelTransitionsCoordinator *)self isDismisallTriggered])
  {
    [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setIsPreparedForDismissal:1];
    [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _tryDismissingViewController];
  }
}

- (void)_invalidateDesiredDismissalState
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDesiredDismissalState];
}

- (void)_updateShouldFinish
{
  v3 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModeTransition];
  if (v3)
  {
    v4 = v3;
    -[PXStoryViewControllerViewModelTransitionsCoordinator setShouldFinish:](self, "setShouldFinish:", [v3 shouldFinish]);
    v3 = v4;
  }
}

- (void)_invalidateShouldFinish
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateShouldFinish];
}

- (void)_updateFractionCompleted
{
  v3 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__PXStoryViewControllerViewModelTransitionsCoordinator__updateFractionCompleted__block_invoke;
  v4[3] = &unk_1E774B020;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __80__PXStoryViewControllerViewModelTransitionsCoordinator__updateFractionCompleted__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 viewModeTransition];
  [v9 fractionCompleted];
  v6 = v5;
  v7 = [*(a1 + 32) viewModel];
  [v7 swipeDownDismissalPreviewFraction];
  [v4 setFractionCompleted:v8 * v6];
}

- (void)_invalidateFractionCompleted
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFractionCompleted];
}

- (void)_updateViewControllerDismissalTargetPlacement
{
  v3 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __101__PXStoryViewControllerViewModelTransitionsCoordinator__updateViewControllerDismissalTargetPlacement__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __101__PXStoryViewControllerViewModelTransitionsCoordinator__updateViewControllerDismissalTargetPlacement__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 dismissalTransition];
  v4 = [v5 summaryItemOriginalPlacement];
  [v3 setViewControllerDismissalTargetPlacement:v4];
}

- (void)_invalidateViewControllerDismissalTargetPlacement
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateViewControllerDismissalTargetPlacement];
}

- (void)_updateSummaryItemPlacementOverride
{
  v3 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];
  if (v3)
  {
    v4 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self fullsizeContentBoundingBox];
    if (v4)
    {
      v5 = [v3 summaryItemOriginalPlacement];
      v6 = [v5 copyWithRegionOfInterest:v4];
    }

    else
    {
      v6 = 0;
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91__PXStoryViewControllerViewModelTransitionsCoordinator__updateSummaryItemPlacementOverride__block_invoke;
    v8[3] = &unk_1E774B020;
    v9 = v6;
    v7 = v6;
    [v3 performChanges:v8];
  }
}

- (void)_invalidateSummaryItemPlacementOverride
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSummaryItemPlacementOverride];
}

- (void)_updateFullsizeContentBoundingBox
{
  v4 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModeTransition];
  v5 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModel];
  v6 = [v5 viewModeTransition];

  if (v4 != v6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXStoryViewControllerViewModelTransitionsCoordinator.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"viewModeTransition == self.viewModel.viewModeTransition"}];
  }

  if ([v4 hasSourceOrDestinationViewMode:1])
  {
    v7 = [v4 presentedBoundingBoxForViewMode:1];
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;
  [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setFullsizeContentBoundingBox:v7];
}

- (void)_invalidateFullsizeContentBoundingBox
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFullsizeContentBoundingBox];
}

- (void)_updateViewModeTransition
{
  v4 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModel];
  v3 = [v4 viewModeTransition];
  [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setViewModeTransition:v3];
}

- (void)_invalidateViewModeTransition
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateViewModeTransition];
}

- (void)_dismissalTransition:(id)a3 didEnd:(BOOL)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];

  if (v6 != v5)
  {
    PXAssertGetLog();
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PXStoryViewControllerViewModelTransitionsCoordinator__dismissalTransition_didEnd___block_invoke;
  v7[3] = &unk_1E774AFA8;
  v7[4] = self;
  [(PXStoryController *)self performChanges:v7];
}

uint64_t __84__PXStoryViewControllerViewModelTransitionsCoordinator__dismissalTransition_didEnd___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDismissalTransition:0];
  [*(a1 + 32) setIsDismisallTriggered:0];
  [*(a1 + 32) setIsDismissalPreviewFractionInitialized:0];
  v2 = *(a1 + 32);

  return [v2 setIsFinishingDismissal:0];
}

- (void)_endDismissal:(BOOL)a3
{
  v5 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];
  if (v5)
  {
    [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setIsFinishingDismissal:1];
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__PXStoryViewControllerViewModelTransitionsCoordinator__endDismissal___block_invoke;
    v6[3] = &unk_1E774AFF8;
    objc_copyWeak(&v8, &location);
    v7 = v5;
    v9 = a3;
    [v7 performChanges:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __70__PXStoryViewControllerViewModelTransitionsCoordinator__endDismissal___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __70__PXStoryViewControllerViewModelTransitionsCoordinator__endDismissal___block_invoke_2;
  v7 = &unk_1E774B330;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = *(a1 + 32);
  [v3 installCompletionHandler:&v4];
  if (*(a1 + 48) == 1)
  {
    [v3 finish];
  }

  else
  {
    [v3 cancel];
  }

  objc_destroyWeak(&v9);
}

void __70__PXStoryViewControllerViewModelTransitionsCoordinator__endDismissal___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dismissalTransition:*(a1 + 32) didEnd:a2];
}

- (void)_forceDismissViewController
{
  v2 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_tryDismissingViewController
{
  v3 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];
  v4 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewController];
  v5 = v4;
  if (!v3 && v4)
  {
    v3 = [off_1E7721710 interactiveDismissalOfDetailViewController:v4];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PXStoryViewControllerViewModelTransitionsCoordinator__tryDismissingViewController__block_invoke;
  v7[3] = &unk_1E774AFD0;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [(PXStoryController *)self performChanges:v7];
}

- (void)setIsFinishingDismissal:(BOOL)a3
{
  if (self->_isFinishingDismissal != a3)
  {
    self->_isFinishingDismissal = a3;
    [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _invalidateSwipeDownDismissalPreview];
  }
}

- (void)setIsPreparedForDismissal:(BOOL)a3
{
  if (self->_isPreparedForDismissal != a3)
  {
    self->_isPreparedForDismissal = a3;
    [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _invalidateSwipeDownDismissalPreview];
    if (self->_isPreparedForDismissal)
    {
      v4 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:0];
      [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setDismissalFeedbackGenerator:v4];

      v5 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalFeedbackGenerator];
      [v5 prepare];
    }

    else
    {

      [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setDismissalFeedbackGenerator:0];
    }
  }
}

- (void)setIsDismisallTriggered:(BOOL)a3
{
  if (self->_isDismisallTriggered != a3)
  {
    self->_isDismisallTriggered = a3;
    [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _invalidateSwipeDownTriggeringDismissal];
    v5 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalFeedbackGenerator];
    [v5 impactOccurred];
    [v5 prepare];
  }
}

- (void)setFullsizeContentBoundingBox:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_fullsizeContentBoundingBox != v5)
  {
    v8 = v5;
    v7 = [(PXRegionOfInterest *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_fullsizeContentBoundingBox, a3);
      [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _invalidateSummaryItemPlacementOverride];
      v6 = v8;
    }
  }
}

- (void)_handleViewModeTransitionStartDelay
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __91__PXStoryViewControllerViewModelTransitionsCoordinator__handleViewModeTransitionStartDelay__block_invoke;
  v2[3] = &unk_1E774AFA8;
  v2[4] = self;
  [(PXStoryController *)self performChanges:v2];
}

- (void)setViewModeTransition:(id)a3
{
  v5 = a3;
  viewModeTransition = self->_viewModeTransition;
  if (viewModeTransition != v5)
  {
    [(PXStoryViewModeTransition *)viewModeTransition unregisterChangeObserver:self context:ViewModeTransitionObservationContext_249554];
    objc_storeStrong(&self->_viewModeTransition, a3);
    [(PXStoryViewModeTransition *)self->_viewModeTransition registerChangeObserver:self context:ViewModeTransitionObservationContext_249554];
    [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _invalidateFullsizeContentBoundingBox];
    [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _updateDesiredDismissalState];
    if (self->_viewModeTransition)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setViewModeTransitionStartTime:?];
      v7 = +[PXStorySettings sharedInstance];
      [v7 swipeDownDismissalDelay];
      v9 = v8;

      objc_initWeak(&location, self);
      v10 = dispatch_time(0, ((v9 + 0.1) * 1000000000.0));
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __78__PXStoryViewControllerViewModelTransitionsCoordinator_setViewModeTransition___block_invoke;
      v11[3] = &unk_1E774C318;
      objc_copyWeak(&v12, &location);
      dispatch_after(v10, MEMORY[0x1E69E96A0], v11);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __78__PXStoryViewControllerViewModelTransitionsCoordinator_setViewModeTransition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleViewModeTransitionStartDelay];
}

- (void)setDismissalTransition:(id)a3
{
  v5 = a3;
  dismissalTransition = self->_dismissalTransition;
  if (dismissalTransition != v5)
  {
    v7 = v5;
    [(PXGViewControllerTransition *)dismissalTransition unregisterChangeObserver:self context:DismissalTransitionObservationContext];
    objc_storeStrong(&self->_dismissalTransition, a3);
    [(PXGViewControllerTransition *)self->_dismissalTransition registerChangeObserver:self context:DismissalTransitionObservationContext];
    v5 = v7;
  }
}

- (void)configureUpdater:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXStoryViewControllerViewModelTransitionsCoordinator;
  v3 = a3;
  [(PXStoryController *)&v4 configureUpdater:v3];
  [v3 addUpdateSelector:{sel__updateViewModeTransition, v4.receiver, v4.super_class}];
  [v3 addUpdateSelector:sel__updateDesiredDismissalState];
  [v3 addUpdateSelector:sel__updateViewControllerDismissalTargetPlacement];
  [v3 addUpdateSelector:sel__updateFullsizeContentBoundingBox];
  [v3 addUpdateSelector:sel__updateSummaryItemPlacementOverride];
  [v3 addUpdateSelector:sel__updateSwipeDownTriggeringDismissal];
  [v3 addUpdateSelector:sel__updateSwipeDownDismissalPreview];
  [v3 addUpdateSelector:sel__updateFractionCompleted];
  [v3 addUpdateSelector:sel__updateShouldFinish];
}

- (PXStoryViewControllerViewModelTransitionsCoordinator)initWithViewModel:(id)a3 viewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PXStoryViewControllerViewModelTransitionsCoordinator;
  v8 = [(PXStoryController *)&v13 initWithObservableModel:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_viewModel, v6);
    objc_storeWeak(&v9->_viewController, v7);
    v10 = [[off_1E77217D0 alloc] initWithValue:0.0];
    dismissalPreviewFraction = v9->_dismissalPreviewFraction;
    v9->_dismissalPreviewFraction = v10;

    [(PXNumberAnimator *)v9->_dismissalPreviewFraction registerChangeObserver:v9 context:DismissalPreviewFractionObservationContext];
  }

  return v9;
}

- (PXStoryViewControllerViewModelTransitionsCoordinator)initWithObservableModel:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryViewControllerViewModelTransitionsCoordinator.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXStoryViewControllerViewModelTransitionsCoordinator initWithObservableModel:]"}];

  abort();
}

@end