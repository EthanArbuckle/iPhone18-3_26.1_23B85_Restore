@interface PXStoryViewControllerViewModelTransitionsCoordinator
- (PXStoryViewControllerViewModelTransitionsCoordinator)initWithObservableModel:(id)model;
- (PXStoryViewControllerViewModelTransitionsCoordinator)initWithViewModel:(id)model viewController:(id)controller;
- (PXStoryViewModel)viewModel;
- (UIViewController)viewController;
- (void)_dismissalTransition:(id)transition didEnd:(BOOL)end;
- (void)_endDismissal:(BOOL)dismissal;
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
- (void)configureUpdater:(id)updater;
- (void)handleModelChange:(unint64_t)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDismissalTransition:(id)transition;
- (void)setFullsizeContentBoundingBox:(id)box;
- (void)setIsDismisallTriggered:(BOOL)triggered;
- (void)setIsFinishingDismissal:(BOOL)dismissal;
- (void)setIsPreparedForDismissal:(BOOL)dismissal;
- (void)setViewModeTransition:(id)transition;
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (DismissalTransitionObservationContext == context)
  {
    if ((change & 1) == 0)
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

  if (ViewModeTransitionObservationContext_249554 == context)
  {
    if ((change & 1) == 0)
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

  if (DismissalPreviewFractionObservationContext == context)
  {
    if ((change & 2) == 0)
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
  [(PXStoryController *)&v10 observable:observableCopy didChange:change context:context];
LABEL_12:
}

uint64_t __85__PXStoryViewControllerViewModelTransitionsCoordinator_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _invalidateFractionCompleted];
  [*(a1 + 32) _invalidateFullsizeContentBoundingBox];
  v2 = *(a1 + 32);

  return [v2 _invalidateShouldFinish];
}

- (void)handleModelChange:(unint64_t)change
{
  if ((change & 0x400000000) == 0)
  {
    if ((change & 0x800000000) == 0)
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
    if ((change & 0x10000000000) == 0)
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
  if ((change & 0x800000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((change & 0x10000000000) != 0)
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
  [(PXStoryController *)&v5 handleModelChange:change];
}

- (void)_updateSwipeDownDismissalPreview
{
  viewModel = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__PXStoryViewControllerViewModelTransitionsCoordinator__updateSwipeDownDismissalPreview__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [viewModel performChanges:v4];
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
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateSwipeDownDismissalPreview];
}

- (void)_updateSwipeDownTriggeringDismissal
{
  dismissalTransition = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];

  isDismisallTriggered = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self isDismisallTriggered];
  viewModel = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModel];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__PXStoryViewControllerViewModelTransitionsCoordinator__updateSwipeDownTriggeringDismissal__block_invoke;
  v12[3] = &__block_descriptor_34_e35_v16__0___PXStoryMutableViewModel__8l;
  v13 = isDismisallTriggered;
  v14 = dismissalTransition != 0;
  [viewModel performChanges:v12];

  if (dismissalTransition)
  {
    v6 = +[PXStorySettings sharedInstance];
    [v6 swipeDownThresholdFadeDuration];
    v8 = v7;

    if (![(PXStoryViewControllerViewModelTransitionsCoordinator *)self isDismissalPreviewFractionInitialized])
    {
      [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setIsDismissalPreviewFractionInitialized:1];
      v8 = 0.0;
    }

    dismissalPreviewFraction = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalPreviewFraction];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91__PXStoryViewControllerViewModelTransitionsCoordinator__updateSwipeDownTriggeringDismissal__block_invoke_2;
    v10[3] = &__block_descriptor_33_e35_v16__0___PXMutableNumberAnimator__8l;
    v11 = isDismisallTriggered;
    [dismissalPreviewFraction performChangesWithDuration:1 curve:v10 changes:v8];
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
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateSwipeDownTriggeringDismissal];
}

- (void)_updateDesiredDismissalState
{
  v3 = +[PXStorySettings sharedInstance];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  viewModel = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModel];
  v5 = viewModel;
  if (viewModel)
  {
    [viewModel swipeDownInteractionState];
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
    viewModeTransition = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModeTransition];
    if (viewModeTransition)
    {
      v8 = viewModeTransition;
      swipeDownBehavior = [v3 swipeDownBehavior];

      if (swipeDownBehavior == 1)
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
      dismissalTransition = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];

      if (!dismissalTransition)
      {
        [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _forceDismissViewController];
      }
    }
  }

  if ([(PXStoryViewControllerViewModelTransitionsCoordinator *)self isPreparedForDismissal])
  {
    viewModeTransition2 = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModeTransition];

    if (!viewModeTransition2)
    {
      [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setIsPreparedForDismissal:0];
      isDismisallTriggered = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self isDismisallTriggered];
      shouldFinish = 0;
      if (isDismisallTriggered)
      {
        shouldFinish = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self shouldFinish];
      }

      [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _endDismissal:shouldFinish];
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
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateDesiredDismissalState];
}

- (void)_updateShouldFinish
{
  viewModeTransition = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModeTransition];
  if (viewModeTransition)
  {
    v4 = viewModeTransition;
    -[PXStoryViewControllerViewModelTransitionsCoordinator setShouldFinish:](self, "setShouldFinish:", [viewModeTransition shouldFinish]);
    viewModeTransition = v4;
  }
}

- (void)_invalidateShouldFinish
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateShouldFinish];
}

- (void)_updateFractionCompleted
{
  dismissalTransition = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__PXStoryViewControllerViewModelTransitionsCoordinator__updateFractionCompleted__block_invoke;
  v4[3] = &unk_1E774B020;
  v4[4] = self;
  [dismissalTransition performChanges:v4];
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
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFractionCompleted];
}

- (void)_updateViewControllerDismissalTargetPlacement
{
  viewModel = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __101__PXStoryViewControllerViewModelTransitionsCoordinator__updateViewControllerDismissalTargetPlacement__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [viewModel performChanges:v4];
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
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateViewControllerDismissalTargetPlacement];
}

- (void)_updateSummaryItemPlacementOverride
{
  dismissalTransition = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];
  if (dismissalTransition)
  {
    fullsizeContentBoundingBox = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self fullsizeContentBoundingBox];
    if (fullsizeContentBoundingBox)
    {
      summaryItemOriginalPlacement = [dismissalTransition summaryItemOriginalPlacement];
      v6 = [summaryItemOriginalPlacement copyWithRegionOfInterest:fullsizeContentBoundingBox];
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
    [dismissalTransition performChanges:v8];
  }
}

- (void)_invalidateSummaryItemPlacementOverride
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateSummaryItemPlacementOverride];
}

- (void)_updateFullsizeContentBoundingBox
{
  viewModeTransition = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModeTransition];
  viewModel = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModel];
  viewModeTransition2 = [viewModel viewModeTransition];

  if (viewModeTransition != viewModeTransition2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewControllerViewModelTransitionsCoordinator.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"viewModeTransition == self.viewModel.viewModeTransition"}];
  }

  if ([viewModeTransition hasSourceOrDestinationViewMode:1])
  {
    v7 = [viewModeTransition presentedBoundingBoxForViewMode:1];
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
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFullsizeContentBoundingBox];
}

- (void)_updateViewModeTransition
{
  viewModel = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewModel];
  viewModeTransition = [viewModel viewModeTransition];
  [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setViewModeTransition:viewModeTransition];
}

- (void)_invalidateViewModeTransition
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateViewModeTransition];
}

- (void)_dismissalTransition:(id)transition didEnd:(BOOL)end
{
  v8 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  dismissalTransition = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];

  if (dismissalTransition != transitionCopy)
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

- (void)_endDismissal:(BOOL)dismissal
{
  dismissalTransition = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];
  if (dismissalTransition)
  {
    [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setIsFinishingDismissal:1];
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__PXStoryViewControllerViewModelTransitionsCoordinator__endDismissal___block_invoke;
    v6[3] = &unk_1E774AFF8;
    objc_copyWeak(&v8, &location);
    v7 = dismissalTransition;
    dismissalCopy = dismissal;
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
  viewController = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewController];
  [viewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_tryDismissingViewController
{
  dismissalTransition = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalTransition];
  viewController = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self viewController];
  v5 = viewController;
  if (!dismissalTransition && viewController)
  {
    dismissalTransition = [off_1E7721710 interactiveDismissalOfDetailViewController:viewController];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PXStoryViewControllerViewModelTransitionsCoordinator__tryDismissingViewController__block_invoke;
  v7[3] = &unk_1E774AFD0;
  v7[4] = self;
  v8 = dismissalTransition;
  v6 = dismissalTransition;
  [(PXStoryController *)self performChanges:v7];
}

- (void)setIsFinishingDismissal:(BOOL)dismissal
{
  if (self->_isFinishingDismissal != dismissal)
  {
    self->_isFinishingDismissal = dismissal;
    [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _invalidateSwipeDownDismissalPreview];
  }
}

- (void)setIsPreparedForDismissal:(BOOL)dismissal
{
  if (self->_isPreparedForDismissal != dismissal)
  {
    self->_isPreparedForDismissal = dismissal;
    [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _invalidateSwipeDownDismissalPreview];
    if (self->_isPreparedForDismissal)
    {
      v4 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:0];
      [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setDismissalFeedbackGenerator:v4];

      dismissalFeedbackGenerator = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalFeedbackGenerator];
      [dismissalFeedbackGenerator prepare];
    }

    else
    {

      [(PXStoryViewControllerViewModelTransitionsCoordinator *)self setDismissalFeedbackGenerator:0];
    }
  }
}

- (void)setIsDismisallTriggered:(BOOL)triggered
{
  if (self->_isDismisallTriggered != triggered)
  {
    self->_isDismisallTriggered = triggered;
    [(PXStoryViewControllerViewModelTransitionsCoordinator *)self _invalidateSwipeDownTriggeringDismissal];
    dismissalFeedbackGenerator = [(PXStoryViewControllerViewModelTransitionsCoordinator *)self dismissalFeedbackGenerator];
    [dismissalFeedbackGenerator impactOccurred];
    [dismissalFeedbackGenerator prepare];
  }
}

- (void)setFullsizeContentBoundingBox:(id)box
{
  boxCopy = box;
  v6 = boxCopy;
  if (self->_fullsizeContentBoundingBox != boxCopy)
  {
    v8 = boxCopy;
    v7 = [(PXRegionOfInterest *)boxCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_fullsizeContentBoundingBox, box);
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

- (void)setViewModeTransition:(id)transition
{
  transitionCopy = transition;
  viewModeTransition = self->_viewModeTransition;
  if (viewModeTransition != transitionCopy)
  {
    [(PXStoryViewModeTransition *)viewModeTransition unregisterChangeObserver:self context:ViewModeTransitionObservationContext_249554];
    objc_storeStrong(&self->_viewModeTransition, transition);
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

- (void)setDismissalTransition:(id)transition
{
  transitionCopy = transition;
  dismissalTransition = self->_dismissalTransition;
  if (dismissalTransition != transitionCopy)
  {
    v7 = transitionCopy;
    [(PXGViewControllerTransition *)dismissalTransition unregisterChangeObserver:self context:DismissalTransitionObservationContext];
    objc_storeStrong(&self->_dismissalTransition, transition);
    [(PXGViewControllerTransition *)self->_dismissalTransition registerChangeObserver:self context:DismissalTransitionObservationContext];
    transitionCopy = v7;
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStoryViewControllerViewModelTransitionsCoordinator;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updateViewModeTransition, v4.receiver, v4.super_class}];
  [updaterCopy addUpdateSelector:sel__updateDesiredDismissalState];
  [updaterCopy addUpdateSelector:sel__updateViewControllerDismissalTargetPlacement];
  [updaterCopy addUpdateSelector:sel__updateFullsizeContentBoundingBox];
  [updaterCopy addUpdateSelector:sel__updateSummaryItemPlacementOverride];
  [updaterCopy addUpdateSelector:sel__updateSwipeDownTriggeringDismissal];
  [updaterCopy addUpdateSelector:sel__updateSwipeDownDismissalPreview];
  [updaterCopy addUpdateSelector:sel__updateFractionCompleted];
  [updaterCopy addUpdateSelector:sel__updateShouldFinish];
}

- (PXStoryViewControllerViewModelTransitionsCoordinator)initWithViewModel:(id)model viewController:(id)controller
{
  modelCopy = model;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = PXStoryViewControllerViewModelTransitionsCoordinator;
  v8 = [(PXStoryController *)&v13 initWithObservableModel:modelCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_viewModel, modelCopy);
    objc_storeWeak(&v9->_viewController, controllerCopy);
    v10 = [[off_1E77217D0 alloc] initWithValue:0.0];
    dismissalPreviewFraction = v9->_dismissalPreviewFraction;
    v9->_dismissalPreviewFraction = v10;

    [(PXNumberAnimator *)v9->_dismissalPreviewFraction registerChangeObserver:v9 context:DismissalPreviewFractionObservationContext];
  }

  return v9;
}

- (PXStoryViewControllerViewModelTransitionsCoordinator)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewControllerViewModelTransitionsCoordinator.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXStoryViewControllerViewModelTransitionsCoordinator initWithObservableModel:]"}];

  abort();
}

@end