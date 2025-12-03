@interface PXStoryChromeLayoutItemController
- (PXStoryChromeLayoutItemController)init;
- (PXStoryChromeLayoutItemController)initWithViewModel:(id)model chromeItem:(unint64_t)item;
- (void)_invalidateAlpha;
- (void)_invalidatePlaybackEndDarkening;
- (void)_invalidateTargetAlpha;
- (void)_invalidateTargetPlaybackEndDarkening;
- (void)_updateAlpha;
- (void)_updatePlaybackEndDarkening;
- (void)_updateTargetAlpha;
- (void)_updateTargetPlaybackEndDarkening;
- (void)animateChangeToTargetAlpha:(double)alpha;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setAlpha:(double)alpha;
- (void)setTargetAlpha:(double)alpha;
- (void)setTargetPlaybackEndDarkening:(double)darkening;
@end

@implementation PXStoryChromeLayoutItemController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_243408 == context)
  {
    if ((change & 0x400000) != 0)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __66__PXStoryChromeLayoutItemController_observable_didChange_context___block_invoke;
      v17[3] = &unk_1E774C5F8;
      v17[4] = self;
      [(PXStoryChromeLayoutItemController *)self performChanges:v17];
    }

    if ((change & 0x1800000000000) != 0)
    {
      v10 = v16;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v11 = __66__PXStoryChromeLayoutItemController_observable_didChange_context___block_invoke_2;
      goto LABEL_12;
    }
  }

  else if (AlphaAnimatorObservationContext == context)
  {
    if ((change & 2) != 0)
    {
      v10 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v11 = __66__PXStoryChromeLayoutItemController_observable_didChange_context___block_invoke_3;
      goto LABEL_12;
    }
  }

  else
  {
    if (PlaybackEndDarkeningAnimatorObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryChromeLayoutItemController.m" lineNumber:183 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((change & 2) != 0)
    {
      v10 = &v13;
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v11 = __66__PXStoryChromeLayoutItemController_observable_didChange_context___block_invoke_4;
LABEL_12:
      v10[2] = v11;
      v10[3] = &unk_1E774C5F8;
      v10[4] = self;
      [(PXStoryChromeLayoutItemController *)self performChanges:v13, v14];
    }
  }
}

- (void)_updatePlaybackEndDarkening
{
  viewModel = [(PXStoryChromeLayoutItemController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__PXStoryChromeLayoutItemController__updatePlaybackEndDarkening__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [viewModel performChanges:v4];
}

void __64__PXStoryChromeLayoutItemController__updatePlaybackEndDarkening__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 playbackEndDarkeningAnimator];
  [v4 presentationValue];
  [v3 setPlaybackEndDarkening:?];
}

- (void)_invalidatePlaybackEndDarkening
{
  updater = [(PXStoryChromeLayoutItemController *)self updater];
  [updater setNeedsUpdateOf:sel__updatePlaybackEndDarkening];
}

- (void)_updateTargetPlaybackEndDarkening
{
  viewModel = [(PXStoryChromeLayoutItemController *)self viewModel];
  if ([viewModel wantsPlaybackEndDarkening])
  {
    [viewModel outroFractionCompleted];
    v4 = v3;
    v5 = +[PXStorySettings sharedInstance];
    [v5 legibilityPlaybackEndDimming];
    [(PXStoryChromeLayoutItemController *)self setTargetPlaybackEndDarkening:v4 * v6];
  }

  else
  {
    [(PXStoryChromeLayoutItemController *)self setTargetPlaybackEndDarkening:0.0];
  }
}

- (void)_invalidateTargetPlaybackEndDarkening
{
  updater = [(PXStoryChromeLayoutItemController *)self updater];
  [updater setNeedsUpdateOf:sel__updateTargetPlaybackEndDarkening];
}

- (void)_updateAlpha
{
  alphaAnimator = [(PXStoryChromeLayoutItemController *)self alphaAnimator];
  [alphaAnimator presentationValue];
  [(PXStoryChromeLayoutItemController *)self setAlpha:?];
}

- (void)_invalidateAlpha
{
  updater = [(PXStoryChromeLayoutItemController *)self updater];
  [updater setNeedsUpdateOf:sel__updateAlpha];
}

- (void)_updateTargetAlpha
{
  [(PXStoryChromeLayoutItemController *)self targetAlphaForVisibleState];
  v4 = v3;
  viewModel = [(PXStoryChromeLayoutItemController *)self viewModel];
  chromeItems = [viewModel chromeItems];
  chromeItem = [(PXStoryChromeLayoutItemController *)self chromeItem];
  v7 = 0.0;
  if ((chromeItem & ~chromeItems) == 0)
  {
    v7 = v4;
  }

  [(PXStoryChromeLayoutItemController *)self setTargetAlpha:v7];
}

- (void)_invalidateTargetAlpha
{
  updater = [(PXStoryChromeLayoutItemController *)self updater];
  [updater setNeedsUpdateOf:sel__updateTargetAlpha];
}

- (void)animateChangeToTargetAlpha:(double)alpha
{
  alphaAnimator = [(PXStoryChromeLayoutItemController *)self alphaAnimator];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PXStoryChromeLayoutItemController_animateChangeToTargetAlpha___block_invoke;
  v5[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
  *&v5[4] = alpha;
  [alphaAnimator performChangesUsingDefaultOpacityAnimation:v5];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryChromeLayoutItemController;
  [(PXStoryChromeLayoutItemController *)&v4 didPerformChanges];
  updater = [(PXStoryChromeLayoutItemController *)self updater];
  [updater updateIfNeeded];
}

- (void)setTargetPlaybackEndDarkening:(double)darkening
{
  if (self->_targetPlaybackEndDarkening != darkening)
  {
    self->_targetPlaybackEndDarkening = darkening;
    v4 = +[PXStorySettings sharedInstance];
    viewModel = [(PXStoryChromeLayoutItemController *)self viewModel];
    shouldAutoReplayPreference = [viewModel shouldAutoReplayPreference];

    targetPlaybackEndDarkening = self->_targetPlaybackEndDarkening;
    if (shouldAutoReplayPreference)
    {
      if (targetPlaybackEndDarkening <= 0.0)
      {
        [v4 legibilityPlaybackEndUndimmingDurationAutoReplay];
      }

      else
      {
        [v4 legibilityPlaybackEndDimmingDurationAutoReplay];
      }
    }

    else if (targetPlaybackEndDarkening <= 0.0)
    {
      [v4 legibilityPlaybackEndUndimmingDuration];
    }

    else
    {
      [v4 legibilityPlaybackEndDimmingDuration];
    }

    v9 = v8;
    playbackEndDarkeningAnimator = [(PXStoryChromeLayoutItemController *)self playbackEndDarkeningAnimator];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__PXStoryChromeLayoutItemController_setTargetPlaybackEndDarkening___block_invoke;
    v11[3] = &unk_1E774A230;
    v11[4] = self;
    [playbackEndDarkeningAnimator performChangesWithDuration:1 curve:v11 changes:v9];
  }
}

- (void)setAlpha:(double)alpha
{
  if (self->_alpha != alpha)
  {
    self->_alpha = alpha;
    [(PXStoryChromeLayoutItemController *)self signalChange:1];
  }
}

- (void)setTargetAlpha:(double)alpha
{
  if (self->_targetAlpha != alpha)
  {
    self->_targetAlpha = alpha;
    [(PXStoryChromeLayoutItemController *)self animateChangeToTargetAlpha:?];
  }
}

- (PXStoryChromeLayoutItemController)initWithViewModel:(id)model chromeItem:(unint64_t)item
{
  modelCopy = model;
  v19.receiver = self;
  v19.super_class = PXStoryChromeLayoutItemController;
  v8 = [(PXStoryChromeLayoutItemController *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, model);
    [(PXStoryViewModel *)v9->_viewModel registerChangeObserver:v9 context:ViewModelObservationContext_243408];
    v9->_chromeItem = item;
    v10 = [[off_1E77217D0 alloc] initWithValue:0.0];
    alphaAnimator = v9->_alphaAnimator;
    v9->_alphaAnimator = v10;

    [(PXNumberAnimator *)v9->_alphaAnimator registerChangeObserver:v9 context:AlphaAnimatorObservationContext];
    v12 = [[off_1E77217D0 alloc] initWithValue:0.0];
    playbackEndDarkeningAnimator = v9->_playbackEndDarkeningAnimator;
    v9->_playbackEndDarkeningAnimator = v12;

    [(PXNumberAnimator *)v9->_playbackEndDarkeningAnimator registerChangeObserver:v9 context:PlaybackEndDarkeningAnimatorObservationContext];
    v14 = [[off_1E7721940 alloc] initWithTarget:v9 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v9->_updater;
    v9->_updater = v14;

    [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateTargetAlpha];
    [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateAlpha];
    [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateTargetPlaybackEndDarkening];
    [(PXUpdater *)v9->_updater addUpdateSelector:sel__updatePlaybackEndDarkening];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__PXStoryChromeLayoutItemController_initWithViewModel_chromeItem___block_invoke;
    v17[3] = &unk_1E774C5F8;
    v18 = v9;
    [(PXStoryChromeLayoutItemController *)v18 performChanges:v17];
  }

  return v9;
}

uint64_t __66__PXStoryChromeLayoutItemController_initWithViewModel_chromeItem___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateTargetAlpha];
  [*(a1 + 32) _invalidateAlpha];
  v2 = *(a1 + 32);

  return [v2 _invalidateTargetPlaybackEndDarkening];
}

- (PXStoryChromeLayoutItemController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryChromeLayoutItemController.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXStoryChromeLayoutItemController init]"}];

  abort();
}

@end