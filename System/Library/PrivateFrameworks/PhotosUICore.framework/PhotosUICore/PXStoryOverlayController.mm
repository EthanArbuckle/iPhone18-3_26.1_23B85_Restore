@interface PXStoryOverlayController
- (PXStoryOverlayController)initWithObservableModel:(id)model;
- (PXStoryOverlayController)initWithViewModel:(id)model;
- (PXStoryViewModel)viewModel;
- (void)_invalidateChromeItems;
- (void)_invalidateChromeVisibilityFraction;
- (void)_invalidateChromeVisibilityFractionAnimator;
- (void)_invalidateFadeOutOverlayVisibilityFraction;
- (void)_invalidateFadeOutOverlayVisibilityFractionAnimator;
- (void)_invalidateInfoPanelVisibilityFraction;
- (void)_invalidateInfoPanelVisibilityFractionAnimator;
- (void)_invalidateMainModel;
- (void)_invalidateRelatedOverlayVisibilityFraction;
- (void)_invalidateRelatedOverlayVisibilityFractionAnimator;
- (void)_invalidateRelatedOverlayVisible;
- (void)_invalidateScrubberVisibilityFraction;
- (void)_invalidateScrubberVisibilityFractionAnimator;
- (void)_invalidateStyleSwitcherVisibilityFraction;
- (void)_invalidateStyleSwitcherVisibilityFractionAnimator;
- (void)_updateAnimator:(id)animator endValue:(double)value animated:(BOOL)animated;
- (void)_updateChromeItems;
- (void)_updateChromeVisibilityFraction;
- (void)_updateChromeVisibilityFractionAnimator;
- (void)_updateFadeOutOverlayVisibilityFraction;
- (void)_updateFadeOutOverlayVisibilityFractionAnimator;
- (void)_updateInfoPanelVisibilityFraction;
- (void)_updateInfoPanelVisibilityFractionAnimator;
- (void)_updateMainModel;
- (void)_updateRelatedOverlayVisibilityFraction;
- (void)_updateRelatedOverlayVisibilityFractionAnimator;
- (void)_updateRelatedOverlayVisible;
- (void)_updateScrubberVisibilityFraction;
- (void)_updateScrubberVisibilityFractionAnimator;
- (void)_updateStyleSwitcherVisibilityFraction;
- (void)_updateStyleSwitcherVisibilityFractionAnimator;
- (void)configureUpdater:(id)updater;
- (void)handleModelChange:(unint64_t)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setMainModel:(id)model;
@end

@implementation PXStoryOverlayController

- (PXStoryViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ChromeVisibilityFractionAnimatorObservationContext == context)
  {
    if ((change & 2) == 0)
    {
      goto LABEL_36;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke;
    v23[3] = &unk_1E774AFA8;
    v23[4] = self;
    v9 = v23;
    goto LABEL_35;
  }

  if (RelatedOverlayVisibilityFractionAnimatorObservationContext == context)
  {
    if ((change & 2) == 0)
    {
      goto LABEL_36;
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_2;
    v22[3] = &unk_1E774AFA8;
    v22[4] = self;
    v9 = v22;
    goto LABEL_35;
  }

  if (ScrubberVisibilityFractionAnimatorObservationContext == context)
  {
    if ((change & 2) == 0)
    {
      goto LABEL_36;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_3;
    v21[3] = &unk_1E774AFA8;
    v21[4] = self;
    v9 = v21;
    goto LABEL_35;
  }

  if (StyleSwitcherVisibilityFractionAnimatorObservationContext == context)
  {
    if ((change & 2) == 0)
    {
      goto LABEL_36;
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_4;
    v20[3] = &unk_1E774AFA8;
    v20[4] = self;
    v9 = v20;
    goto LABEL_35;
  }

  if (FadeOutOverlayVisibilityFractionAnimatorObservationContext == context)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_5;
    v19[3] = &unk_1E774AFA8;
    v19[4] = self;
    v9 = v19;
    goto LABEL_35;
  }

  if (InfoPanelVisibilityFractionAnimatorObservationContext == context)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_6;
    v18[3] = &unk_1E774AFA8;
    v18[4] = self;
    v9 = v18;
    goto LABEL_35;
  }

  if (MainModelObservationContext_176761 != context)
  {
    if (ViewModelObservationContext_176762 == context)
    {
      if ((change & 0x800000000000008) == 0)
      {
        goto LABEL_36;
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_12;
      v12[3] = &unk_1E774AFA8;
      v12[4] = self;
      v9 = v12;
    }

    else
    {
      if (MemoryCreationButtonVisibilityObservationContext != context)
      {
        v10.receiver = self;
        v10.super_class = PXStoryOverlayController;
        [(PXStoryController *)&v10 observable:observableCopy didChange:change context:context];
        goto LABEL_36;
      }

      if ((+[PXGenerativeStoryInWatchNextControllerChangeDescriptor memoryCreationButton]& change) == 0)
      {
        goto LABEL_36;
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_13;
      v11[3] = &unk_1E774AFA8;
      v11[4] = self;
      v9 = v11;
    }

LABEL_35:
    [(PXStoryController *)self performChanges:v9];
    goto LABEL_36;
  }

  if ((change & 0x200000210004) != 0)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_7;
    v17[3] = &unk_1E774AFA8;
    v17[4] = self;
    [(PXStoryController *)self performChanges:v17];
  }

  if ((change & 0x98200000000) != 0)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_8;
    v16[3] = &unk_1E774AFA8;
    v16[4] = self;
    [(PXStoryController *)self performChanges:v16];
  }

  if ((change & 0x400004000000) != 0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_9;
    v15[3] = &unk_1E774AFA8;
    v15[4] = self;
    [(PXStoryController *)self performChanges:v15];
  }

  if ((change & 0x400000000000000) != 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_10;
    v14[3] = &unk_1E774AFA8;
    v14[4] = self;
    [(PXStoryController *)self performChanges:v14];
  }

  if ((change & 8) != 0)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_11;
    v13[3] = &unk_1E774AFA8;
    v13[4] = self;
    v9 = v13;
    goto LABEL_35;
  }

LABEL_36:
}

- (void)handleModelChange:(unint64_t)change
{
  v6.receiver = self;
  v6.super_class = PXStoryOverlayController;
  [(PXStoryController *)&v6 handleModelChange:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PXStoryOverlayController_handleModelChange___block_invoke;
  v5[3] = &unk_1E7740518;
  v5[4] = self;
  v5[5] = change;
  [(PXStoryController *)self performChanges:v5];
}

void __46__PXStoryOverlayController_handleModelChange___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 8) != 0)
  {
    [*(a1 + 32) _invalidateChromeVisibilityFraction];
    [*(a1 + 32) _invalidateChromeVisibilityFractionAnimator];
    v3 = *(a1 + 40);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_3:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  [*(a1 + 32) _invalidateScrubberVisibilityFractionAnimator];
  v3 = *(a1 + 40);
  if ((v3 & 0x2000) == 0)
  {
LABEL_4:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_8:
  [*(a1 + 32) _invalidateStyleSwitcherVisibilityFractionAnimator];
  v3 = *(a1 + 40);
  if ((v3 & 0x8000) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  [*(a1 + 32) _invalidateRelatedOverlayVisibilityFractionAnimator];
  v3 = *(a1 + 40);
  if ((v3 & 0x40) != 0)
  {
    [*(a1 + 32) setPreventAnimatingNextRelatedOverlayVisibilityFractionChange:1];
    v3 = *(a1 + 40);
  }

LABEL_11:
  if ((v3 & 0x4001000202000) != 0)
  {
    [*(a1 + 32) _invalidateRelatedOverlayVisible];
    v3 = *(a1 + 40);
  }

  if ((v3 & 0x40) != 0)
  {
    [*(a1 + 32) _invalidateMainModel];
    v3 = *(a1 + 40);
  }

  if ((v3 & 0x4028AA8A022) != 0)
  {
    [*(a1 + 32) _invalidateChromeItems];
  }
}

- (void)_updateRelatedOverlayVisibilityFraction
{
  viewModel = [(PXStoryOverlayController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__PXStoryOverlayController__updateRelatedOverlayVisibilityFraction__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [viewModel performChanges:v4];
}

void __67__PXStoryOverlayController__updateRelatedOverlayVisibilityFraction__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 relatedOverlayVisibilityFractionAnimator];
  [v4 presentationValue];
  [v3 setRelatedOverlayVisibilityFraction:?];
}

- (void)_invalidateRelatedOverlayVisibilityFraction
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateRelatedOverlayVisibilityFraction];
}

- (void)_updateRelatedOverlayVisibilityFractionAnimator
{
  preventAnimatingNextRelatedOverlayVisibilityFractionChange = [(PXStoryOverlayController *)self preventAnimatingNextRelatedOverlayVisibilityFractionChange];
  [(PXStoryOverlayController *)self setPreventAnimatingNextRelatedOverlayVisibilityFractionChange:0];
  relatedOverlayVisibilityFractionAnimator = [(PXStoryOverlayController *)self relatedOverlayVisibilityFractionAnimator];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PXStoryOverlayController__updateRelatedOverlayVisibilityFractionAnimator__block_invoke;
  aBlock[3] = &unk_1E774A230;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (preventAnimatingNextRelatedOverlayVisibilityFractionChange)
  {
    [relatedOverlayVisibilityFractionAnimator performChangesWithoutAnimation:v5];
  }

  else
  {
    [relatedOverlayVisibilityFractionAnimator performChangesUsingDefaultSpringAnimationWithInitialVelocity:v5 changes:0.0];
  }
}

void __75__PXStoryOverlayController__updateRelatedOverlayVisibilityFractionAnimator__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 viewModel];
  v4 = [v6 wantsRelatedOverlayVisible];
  v5 = 0.0;
  if (v4)
  {
    v5 = 1.0;
  }

  [v3 setValue:v5];
}

- (void)_invalidateRelatedOverlayVisibilityFractionAnimator
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateRelatedOverlayVisibilityFractionAnimator];
}

- (void)_updateStyleSwitcherVisibilityFraction
{
  viewModel = [(PXStoryOverlayController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__PXStoryOverlayController__updateStyleSwitcherVisibilityFraction__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [viewModel performChanges:v4];
}

void __66__PXStoryOverlayController__updateStyleSwitcherVisibilityFraction__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 styleSwitcherVisibilityFractionAnimator];
  [v4 presentationValue];
  [v3 setStyleSwitcherVisibilityFraction:?];
}

- (void)_invalidateStyleSwitcherVisibilityFraction
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateStyleSwitcherVisibilityFraction];
}

- (void)_updateScrubberVisibilityFraction
{
  scrubberVisibilityFractionAnimator = [(PXStoryOverlayController *)self scrubberVisibilityFractionAnimator];
  [scrubberVisibilityFractionAnimator presentationValue];
  v5 = v4;

  viewModel = [(PXStoryOverlayController *)self viewModel];
  isChromeAllowed = [viewModel isChromeAllowed];

  if (!isChromeAllowed)
  {
    v5 = 0.0;
  }

  viewModel2 = [(PXStoryOverlayController *)self viewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__PXStoryOverlayController__updateScrubberVisibilityFraction__block_invoke;
  v9[3] = &__block_descriptor_40_e35_v16__0___PXStoryMutableViewModel__8l;
  *&v9[4] = v5;
  [viewModel2 performChanges:v9];
}

- (void)_invalidateScrubberVisibilityFraction
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateScrubberVisibilityFraction];
}

- (void)_updateAnimator:(id)animator endValue:(double)value animated:(BOOL)animated
{
  animatedCopy = animated;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PXStoryOverlayController__updateAnimator_endValue_animated___block_invoke;
  aBlock[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
  *&aBlock[4] = value;
  animatorCopy = animator;
  v7 = _Block_copy(aBlock);
  if (animatedCopy)
  {
    [animatorCopy performChangesUsingDefaultSpringAnimationWithInitialVelocity:v7 changes:0.0];
  }

  else
  {
    [animatorCopy performChangesWithoutAnimation:v7];
  }
}

- (void)_updateInfoPanelVisibilityFraction
{
  mainModel = [(PXStoryOverlayController *)self mainModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__PXStoryOverlayController__updateInfoPanelVisibilityFraction__block_invoke;
  v4[3] = &unk_1E77485B0;
  v4[4] = self;
  [mainModel performChanges:v4];
}

void __62__PXStoryOverlayController__updateInfoPanelVisibilityFraction__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 infoPanelVisibilityFractionAnimator];
  [v4 presentationValue];
  [v3 setInfoPanelVisibilityFraction:?];
}

- (void)_invalidateInfoPanelVisibilityFraction
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateInfoPanelVisibilityFraction];
}

- (void)_updateInfoPanelVisibilityFractionAnimator
{
  infoPanelVisibilityFractionAnimator = [(PXStoryOverlayController *)self infoPanelVisibilityFractionAnimator];
  mainModel = [(PXStoryOverlayController *)self mainModel];
  [mainModel desiredInfoPanelVisibilityFraction];
  v5 = v4;

  [(PXStoryOverlayController *)self _updateAnimator:infoPanelVisibilityFractionAnimator endValue:1 animated:v5];
}

- (void)_invalidateInfoPanelVisibilityFractionAnimator
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateInfoPanelVisibilityFractionAnimator];
}

- (void)_updateFadeOutOverlayVisibilityFraction
{
  viewModel = [(PXStoryOverlayController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__PXStoryOverlayController__updateFadeOutOverlayVisibilityFraction__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [viewModel performChanges:v4];
}

void __67__PXStoryOverlayController__updateFadeOutOverlayVisibilityFraction__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 fadeOutOverlayVisibilityFractionAnimator];
  [v4 presentationValue];
  [v3 setFadeOutOverlayVisibilityFraction:?];
}

- (void)_invalidateFadeOutOverlayVisibilityFraction
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFadeOutOverlayVisibilityFraction];
}

- (void)_updateFadeOutOverlayVisibilityFractionAnimator
{
  fadeOutOverlayVisibilityFractionAnimator = [(PXStoryOverlayController *)self fadeOutOverlayVisibilityFractionAnimator];
  mainModel = [(PXStoryOverlayController *)self mainModel];
  [mainModel outroFractionCompleted];
  v5 = v4;

  [(PXStoryOverlayController *)self _updateAnimator:fadeOutOverlayVisibilityFractionAnimator endValue:1 animated:v5];
}

- (void)_invalidateFadeOutOverlayVisibilityFractionAnimator
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFadeOutOverlayVisibilityFractionAnimator];
}

- (void)_updateStyleSwitcherVisibilityFractionAnimator
{
  styleSwitcherVisibilityFractionAnimator = [(PXStoryOverlayController *)self styleSwitcherVisibilityFractionAnimator];
  viewModel = [(PXStoryOverlayController *)self viewModel];
  viewMode = [viewModel viewMode];

  if (viewMode == 4)
  {
    v5 = 1.0;
    v6 = 1;
  }

  else
  {
    viewModel2 = [(PXStoryOverlayController *)self viewModel];
    mainConfiguration = [viewModel2 mainConfiguration];
    isAppleMusicPreview = [mainConfiguration isAppleMusicPreview];

    v6 = isAppleMusicPreview ^ 1u;
    v5 = 0.0;
    if (isAppleMusicPreview)
    {
      v5 = 1.0;
    }
  }

  [(PXStoryOverlayController *)self _updateAnimator:styleSwitcherVisibilityFractionAnimator endValue:v6 animated:v5];
}

- (void)_invalidateStyleSwitcherVisibilityFractionAnimator
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateStyleSwitcherVisibilityFractionAnimator];
}

- (void)_updateScrubberVisibilityFractionAnimator
{
  scrubberVisibilityFractionAnimator = [(PXStoryOverlayController *)self scrubberVisibilityFractionAnimator];
  viewModel = [(PXStoryOverlayController *)self viewModel];
  if ([viewModel wantsScrubberVisible])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [(PXStoryOverlayController *)self _updateAnimator:scrubberVisibilityFractionAnimator endValue:1 animated:v4];
}

- (void)_invalidateScrubberVisibilityFractionAnimator
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateScrubberVisibilityFractionAnimator];
}

- (void)_updateChromeVisibilityFraction
{
  chromeVisibilityFractionAnimator = [(PXStoryOverlayController *)self chromeVisibilityFractionAnimator];
  [chromeVisibilityFractionAnimator presentationValue];
  v5 = v4;

  viewModel = [(PXStoryOverlayController *)self viewModel];
  isChromeAllowed = [viewModel isChromeAllowed];

  if (!isChromeAllowed)
  {
    v5 = 0.0;
  }

  viewModel2 = [(PXStoryOverlayController *)self viewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PXStoryOverlayController__updateChromeVisibilityFraction__block_invoke;
  v9[3] = &__block_descriptor_40_e35_v16__0___PXStoryMutableViewModel__8l;
  *&v9[4] = v5;
  [viewModel2 performChanges:v9];
}

- (void)_invalidateChromeVisibilityFraction
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateChromeVisibilityFraction];
}

- (void)_updateChromeVisibilityFractionAnimator
{
  chromeVisibilityFractionAnimator = [(PXStoryOverlayController *)self chromeVisibilityFractionAnimator];
  viewModel = [(PXStoryOverlayController *)self viewModel];
  if ([viewModel wantsChromeVisible])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [(PXStoryOverlayController *)self _updateAnimator:chromeVisibilityFractionAnimator endValue:1 animated:v4];
}

- (void)_invalidateChromeVisibilityFractionAnimator
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateChromeVisibilityFractionAnimator];
}

- (void)_updateRelatedOverlayVisible
{
  v21 = *MEMORY[0x1E69E9840];
  viewModel = [(PXStoryOverlayController *)self viewModel];
  if (([viewModel isPerformingViewControllerTransition] & 1) == 0)
  {
    if (![viewModel isAtPlaybackEnd] || objc_msgSend(viewModel, "viewMode") != 1)
    {
      goto LABEL_9;
    }

    mainConfiguration = [viewModel mainConfiguration];
    if ([mainConfiguration isAppleMusicPreview])
    {
      goto LABEL_8;
    }

    mainConfiguration2 = [viewModel mainConfiguration];
    if (([mainConfiguration2 shouldDismissAtEnd] & 1) != 0 || objc_msgSend(viewModel, "isPerformingViewControllerTransition"))
    {

LABEL_8:
LABEL_9:
      v6 = 0;
LABEL_10:
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __56__PXStoryOverlayController__updateRelatedOverlayVisible__block_invoke;
      v15[3] = &__block_descriptor_33_e35_v16__0___PXStoryMutableViewModel__8l;
      v16 = v6;
      [viewModel performChanges:v15];
      goto LABEL_11;
    }

    shouldAutoReplayPreference = [viewModel shouldAutoReplayPreference];

    if (shouldAutoReplayPreference)
    {
      goto LABEL_9;
    }

    if ([viewModel wantsRelatedOverlayVisible])
    {
      v6 = 1;
      goto LABEL_10;
    }

    v18 = 0;
    v8 = [viewModel checkIfShouldPreventAdvancingAndReturnReason:&v18];
    v9 = v18;
    v10 = v9;
    if (v8)
    {
      v11 = v9;
    }

    else
    {
      mainModel = [(PXStoryOverlayController *)self mainModel];
      v17 = 0;
      v13 = [mainModel checkIfShouldPreventAdvancingAndReturnReason:&v17];
      v11 = v17;

      if (!v13)
      {
        v6 = 1;
LABEL_22:

        goto LABEL_10;
      }
    }

    v14 = PLStoryGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEBUG, "preventing overlay from becoming visible for reason: %@", buf, 0xCu);
    }

    v6 = 0;
    goto LABEL_22;
  }

LABEL_11:
}

- (void)_invalidateRelatedOverlayVisible
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateRelatedOverlayVisible];
}

- (void)_updateChromeItems
{
  viewModel = [(PXStoryOverlayController *)self viewModel];
  mainModel = [(PXStoryOverlayController *)self mainModel];
  wantsChromeVisible = [viewModel wantsChromeVisible];
  viewLayoutSpec = [viewModel viewLayoutSpec];
  v8 = +[PXStorySettings sharedInstance];
  if ([viewModel wantsRelatedOverlayVisible])
  {
    if ([viewModel isRelatedOverlayScrolledIntoView] && (objc_msgSend(viewLayoutSpec, "shouldHideChromeItemsWhenRelatedOverlayIsScrolledIntoView") & 1) != 0)
    {
      v9 = 0;
    }

    else
    {
      if ([viewLayoutSpec canShowCloseButton])
      {
        v13 = 3073;
      }

      else
      {
        v13 = 3072;
      }

      if ([viewLayoutSpec onlyShowReplayEndButtonAtTopOfTitle])
      {
        v9 = v13 | 0x40000;
      }

      else
      {
        currentAssetCollectionIsFavorite = [mainModel currentAssetCollectionIsFavorite];
        v15 = 1835008;
        if (currentAssetCollectionIsFavorite)
        {
          v15 = 2883584;
        }

        v16 = v15 | v13;
        if ([viewModel wantsFeedbackAction])
        {
          v9 = v16 | 0x2000000;
        }

        else
        {
          v9 = v16;
        }
      }
    }

    generativeStoryInWatchNextController = [viewModel generativeStoryInWatchNextController];
    wantsMemoryCreationButton = [generativeStoryInWatchNextController wantsMemoryCreationButton];

    if (wantsMemoryCreationButton)
    {
      v11 = v9 | 0x100000000;
    }

    else
    {
      v11 = v9;
    }

LABEL_34:
    wantsChromeVisible = 1;
    goto LABEL_35;
  }

  if ([mainModel viewMode] == 1 && objc_msgSend(mainModel, "readinessStatus") == 1 && objc_msgSend(v8, "playerShowsBufferingStatus") && (!objc_msgSend(viewModel, "wantsScrubberVisible") || objc_msgSend(v8, "wantsBufferingIndicatorOverScrubber") && (objc_msgSend(mainModel, "isScrolling") & 1) == 0 && (objc_msgSend(viewModel, "isScrubbing") & 1) == 0))
  {
    v10 = 0x8000;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 | [viewLayoutSpec canShowCloseButton];
  viewMode = [viewModel viewMode];
  if (viewMode > 3)
  {
    if (viewMode == 4)
    {
      v11 = v10;
      goto LABEL_35;
    }

    if (viewMode != 5)
    {
      if (viewMode != 100)
      {
        goto LABEL_35;
      }

      goto LABEL_42;
    }

    v11 = v10 | 4;
  }

  else
  {
    if (viewMode != 1)
    {
      if (viewMode == 2)
      {
        if ([viewModel isInSelectMode])
        {
          v11 = 0;
        }

        else if (([v8 preferTopChromeItemsInAppNavigationBar] & 1) == 0)
        {
          if (([viewLayoutSpec insideCollectionDetailsView] & 1) != 0 || MEMORY[0x1A590D320]())
          {
            v24 = 2684357698;
          }

          else
          {
            v24 = 536874050;
          }

          v11 = (v11 | v24) & 0xFFFFFFFFFFFDFFFELL | 0x20000;
        }

        goto LABEL_34;
      }

      if (viewMode)
      {
        goto LABEL_35;
      }

LABEL_42:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryOverlayController.m" lineNumber:268 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v21 = [viewLayoutSpec fullsizePlayerDefaultChromeItems] | v11;
    if ([v8 allowAspectModeToggle])
    {
      v22 = v21 | 0x4000;
    }

    else
    {
      mainModel2 = [(PXStoryOverlayController *)self mainModel];
      extendedTraitCollection = [mainModel2 extendedTraitCollection];
      userInterfaceIdiom = [extendedTraitCollection userInterfaceIdiom];

      if ([v8 showStyleSwitcher])
      {
        v28 = 512;
        if (userInterfaceIdiom == 5)
        {
          v28 = 1073742336;
        }

        v22 = v28 | v21;
      }

      else
      {
        showMusicAndColorGradeEditor = [v8 showMusicAndColorGradeEditor];
        v30 = v21 | 0x18;
        if (!showMusicAndColorGradeEditor)
        {
          v30 = v21;
        }

        v22 = v30 | 0x20;
      }
    }

    timeline = [mainModel timeline];
    firstSegmentIdentifier = [timeline firstSegmentIdentifier];
    v41 = 0;
    v42 = 0.0;
    v43 = 0;
    if (mainModel)
    {
      [mainModel currentScrollPosition];
      v33 = v42;
      v34 = &v43;
      if (v42 <= 0.5)
      {
        v34 = &v41;
      }

      v35 = *v34;
    }

    else
    {
      v35 = 0;
    }

    preferTopChromeItemsInAppNavigationBar = [v8 preferTopChromeItemsInAppNavigationBar];
    if (firstSegmentIdentifier == v35)
    {
      v37 = 1;
    }

    else
    {
      v37 = preferTopChromeItemsInAppNavigationBar;
    }

    if (v37)
    {
      v38 = v22;
    }

    else
    {
      v38 = v22 | 0xC00;
    }

    if ([viewModel edgeToHighlight] == 2)
    {
      v38 |= 0x1000uLL;
    }

    if ([viewModel edgeToHighlight] == 8)
    {
      v38 |= 0x2000uLL;
    }

    if ([viewModel shouldShowErrorIndicator])
    {
      v11 = v38 | 0x10000;
    }

    else
    {
      v11 = v38;
    }

    if ([viewLayoutSpec canShowMuteToggleButton] && ((objc_msgSend(viewModel, "wantsChromeVisible") & 1) != 0 || objc_msgSend(viewModel, "canShowMuteToggleButtonWhenChromeIsHidden")))
    {
      v11 |= 0x1000000uLL;
    }
  }

LABEL_35:
  v19 = v11 & ~[viewModel allowedChromeItems] & 0x101010004;
  allowedChromeItems = [viewModel allowedChromeItems];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __46__PXStoryOverlayController__updateChromeItems__block_invoke;
  v39[3] = &__block_descriptor_49_e35_v16__0___PXStoryMutableViewModel__8l;
  v40 = wantsChromeVisible;
  v39[4] = allowedChromeItems & v11;
  v39[5] = v19;
  [viewModel performChanges:v39];
}

void __46__PXStoryOverlayController__updateChromeItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setChromeItems:v3];
  [v4 setWantsChromeVisible:*(a1 + 48)];
  [v4 setChromeItemsToBeDisplayedExternally:*(a1 + 40)];
}

- (void)_invalidateChromeItems
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateChromeItems];
}

- (void)_updateMainModel
{
  viewModel = [(PXStoryOverlayController *)self viewModel];
  mainModel = [viewModel mainModel];
  [(PXStoryOverlayController *)self setMainModel:mainModel];
}

- (void)_invalidateMainModel
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateMainModel];
}

- (void)setMainModel:(id)model
{
  modelCopy = model;
  mainModel = self->_mainModel;
  if (mainModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXStoryModel *)mainModel unregisterChangeObserver:self context:MainModelObservationContext_176761];
    objc_storeStrong(&self->_mainModel, model);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext_176761];
    [(PXStoryOverlayController *)self _invalidateChromeItems];
    [(PXStoryOverlayController *)self _invalidateFadeOutOverlayVisibilityFractionAnimator];
    [(PXStoryOverlayController *)self _invalidateStyleSwitcherVisibilityFractionAnimator];
    modelCopy = v7;
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStoryOverlayController;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updateMainModel, v4.receiver, v4.super_class}];
  [updaterCopy addUpdateSelector:sel__updateRelatedOverlayVisible];
  [updaterCopy addUpdateSelector:sel__updateChromeItems];
  [updaterCopy addUpdateSelector:sel__updateChromeVisibilityFractionAnimator];
  [updaterCopy addUpdateSelector:sel__updateChromeVisibilityFraction];
  [updaterCopy addUpdateSelector:sel__updateScrubberVisibilityFractionAnimator];
  [updaterCopy addUpdateSelector:sel__updateScrubberVisibilityFraction];
  [updaterCopy addUpdateSelector:sel__updateStyleSwitcherVisibilityFractionAnimator];
  [updaterCopy addUpdateSelector:sel__updateStyleSwitcherVisibilityFraction];
  [updaterCopy addUpdateSelector:sel__updateRelatedOverlayVisibilityFractionAnimator];
  [updaterCopy addUpdateSelector:sel__updateRelatedOverlayVisibilityFraction];
  [updaterCopy addUpdateSelector:sel__updateFadeOutOverlayVisibilityFractionAnimator];
  [updaterCopy addUpdateSelector:sel__updateFadeOutOverlayVisibilityFraction];
  [updaterCopy addUpdateSelector:sel__updateInfoPanelVisibilityFractionAnimator];
  [updaterCopy addUpdateSelector:sel__updateInfoPanelVisibilityFraction];
}

- (PXStoryOverlayController)initWithViewModel:(id)model
{
  modelCopy = model;
  v25.receiver = self;
  v25.super_class = PXStoryOverlayController;
  v5 = [(PXStoryController *)&v25 initWithObservableModel:modelCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewModel, modelCopy);
    [modelCopy registerChangeObserver:v6 context:ViewModelObservationContext_176762];
    v7 = [[off_1E77217D0 alloc] initWithValue:0.0];
    chromeVisibilityFractionAnimator = v6->_chromeVisibilityFractionAnimator;
    v6->_chromeVisibilityFractionAnimator = v7;

    [(PXNumberAnimator *)v6->_chromeVisibilityFractionAnimator registerChangeObserver:v6 context:ChromeVisibilityFractionAnimatorObservationContext];
    v9 = [[off_1E77217D0 alloc] initWithValue:0.0];
    scrubberVisibilityFractionAnimator = v6->_scrubberVisibilityFractionAnimator;
    v6->_scrubberVisibilityFractionAnimator = v9;

    [(PXNumberAnimator *)v6->_scrubberVisibilityFractionAnimator registerChangeObserver:v6 context:ScrubberVisibilityFractionAnimatorObservationContext];
    v11 = [[off_1E77217D0 alloc] initWithValue:0.0];
    styleSwitcherVisibilityFractionAnimator = v6->_styleSwitcherVisibilityFractionAnimator;
    v6->_styleSwitcherVisibilityFractionAnimator = v11;

    [(PXNumberAnimator *)v6->_styleSwitcherVisibilityFractionAnimator registerChangeObserver:v6 context:StyleSwitcherVisibilityFractionAnimatorObservationContext];
    v13 = [[off_1E77217D0 alloc] initWithValue:0.0];
    relatedOverlayVisibilityFractionAnimator = v6->_relatedOverlayVisibilityFractionAnimator;
    v6->_relatedOverlayVisibilityFractionAnimator = v13;

    [(PXNumberAnimator *)v6->_relatedOverlayVisibilityFractionAnimator registerChangeObserver:v6 context:RelatedOverlayVisibilityFractionAnimatorObservationContext];
    v15 = [[off_1E77217D0 alloc] initWithValue:0.0];
    fadeOutOverlayVisibilityFractionAnimator = v6->_fadeOutOverlayVisibilityFractionAnimator;
    v6->_fadeOutOverlayVisibilityFractionAnimator = v15;

    [(PXNumberAnimator *)v6->_fadeOutOverlayVisibilityFractionAnimator registerChangeObserver:v6 context:FadeOutOverlayVisibilityFractionAnimatorObservationContext];
    v17 = [[off_1E77217D0 alloc] initWithValue:0.0];
    infoPanelVisibilityFractionAnimator = v6->_infoPanelVisibilityFractionAnimator;
    v6->_infoPanelVisibilityFractionAnimator = v17;

    [(PXNumberAnimator *)v6->_infoPanelVisibilityFractionAnimator registerChangeObserver:v6 context:InfoPanelVisibilityFractionAnimatorObservationContext];
    viewModel = [(PXStoryOverlayController *)v6 viewModel];
    generativeStoryInWatchNextController = [viewModel generativeStoryInWatchNextController];
    [generativeStoryInWatchNextController registerChangeObserver:v6 context:MemoryCreationButtonVisibilityObservationContext];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __46__PXStoryOverlayController_initWithViewModel___block_invoke;
    v22[3] = &unk_1E774AFD0;
    v23 = v6;
    v24 = modelCopy;
    [(PXStoryController *)v23 performChanges:v22];
  }

  return v6;
}

uint64_t __46__PXStoryOverlayController_initWithViewModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mainModel];
  [*(a1 + 32) setMainModel:v2];

  [*(a1 + 32) _invalidateRelatedOverlayVisible];
  v3 = *(a1 + 32);

  return [v3 _invalidateChromeItems];
}

- (PXStoryOverlayController)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryOverlayController.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXStoryOverlayController initWithObservableModel:]"}];

  abort();
}

@end