@interface PXStoryOverlayController
- (PXStoryOverlayController)initWithObservableModel:(id)a3;
- (PXStoryOverlayController)initWithViewModel:(id)a3;
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
- (void)_updateAnimator:(id)a3 endValue:(double)a4 animated:(BOOL)a5;
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
- (void)configureUpdater:(id)a3;
- (void)handleModelChange:(unint64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setMainModel:(id)a3;
@end

@implementation PXStoryOverlayController

- (PXStoryViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (ChromeVisibilityFractionAnimatorObservationContext == a5)
  {
    if ((a4 & 2) == 0)
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

  if (RelatedOverlayVisibilityFractionAnimatorObservationContext == a5)
  {
    if ((a4 & 2) == 0)
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

  if (ScrubberVisibilityFractionAnimatorObservationContext == a5)
  {
    if ((a4 & 2) == 0)
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

  if (StyleSwitcherVisibilityFractionAnimatorObservationContext == a5)
  {
    if ((a4 & 2) == 0)
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

  if (FadeOutOverlayVisibilityFractionAnimatorObservationContext == a5)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_5;
    v19[3] = &unk_1E774AFA8;
    v19[4] = self;
    v9 = v19;
    goto LABEL_35;
  }

  if (InfoPanelVisibilityFractionAnimatorObservationContext == a5)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_6;
    v18[3] = &unk_1E774AFA8;
    v18[4] = self;
    v9 = v18;
    goto LABEL_35;
  }

  if (MainModelObservationContext_176761 != a5)
  {
    if (ViewModelObservationContext_176762 == a5)
    {
      if ((a4 & 0x800000000000008) == 0)
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
      if (MemoryCreationButtonVisibilityObservationContext != a5)
      {
        v10.receiver = self;
        v10.super_class = PXStoryOverlayController;
        [(PXStoryController *)&v10 observable:v8 didChange:a4 context:a5];
        goto LABEL_36;
      }

      if ((+[PXGenerativeStoryInWatchNextControllerChangeDescriptor memoryCreationButton]& a4) == 0)
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

  if ((a4 & 0x200000210004) != 0)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_7;
    v17[3] = &unk_1E774AFA8;
    v17[4] = self;
    [(PXStoryController *)self performChanges:v17];
  }

  if ((a4 & 0x98200000000) != 0)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_8;
    v16[3] = &unk_1E774AFA8;
    v16[4] = self;
    [(PXStoryController *)self performChanges:v16];
  }

  if ((a4 & 0x400004000000) != 0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_9;
    v15[3] = &unk_1E774AFA8;
    v15[4] = self;
    [(PXStoryController *)self performChanges:v15];
  }

  if ((a4 & 0x400000000000000) != 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__PXStoryOverlayController_observable_didChange_context___block_invoke_10;
    v14[3] = &unk_1E774AFA8;
    v14[4] = self;
    [(PXStoryController *)self performChanges:v14];
  }

  if ((a4 & 8) != 0)
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

- (void)handleModelChange:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PXStoryOverlayController;
  [(PXStoryController *)&v6 handleModelChange:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PXStoryOverlayController_handleModelChange___block_invoke;
  v5[3] = &unk_1E7740518;
  v5[4] = self;
  v5[5] = a3;
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
  v3 = [(PXStoryOverlayController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__PXStoryOverlayController__updateRelatedOverlayVisibilityFraction__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [v3 performChanges:v4];
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
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateRelatedOverlayVisibilityFraction];
}

- (void)_updateRelatedOverlayVisibilityFractionAnimator
{
  v3 = [(PXStoryOverlayController *)self preventAnimatingNextRelatedOverlayVisibilityFractionChange];
  [(PXStoryOverlayController *)self setPreventAnimatingNextRelatedOverlayVisibilityFractionChange:0];
  v4 = [(PXStoryOverlayController *)self relatedOverlayVisibilityFractionAnimator];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PXStoryOverlayController__updateRelatedOverlayVisibilityFractionAnimator__block_invoke;
  aBlock[3] = &unk_1E774A230;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (v3)
  {
    [v4 performChangesWithoutAnimation:v5];
  }

  else
  {
    [v4 performChangesUsingDefaultSpringAnimationWithInitialVelocity:v5 changes:0.0];
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
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateRelatedOverlayVisibilityFractionAnimator];
}

- (void)_updateStyleSwitcherVisibilityFraction
{
  v3 = [(PXStoryOverlayController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__PXStoryOverlayController__updateStyleSwitcherVisibilityFraction__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [v3 performChanges:v4];
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
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateStyleSwitcherVisibilityFraction];
}

- (void)_updateScrubberVisibilityFraction
{
  v3 = [(PXStoryOverlayController *)self scrubberVisibilityFractionAnimator];
  [v3 presentationValue];
  v5 = v4;

  v6 = [(PXStoryOverlayController *)self viewModel];
  v7 = [v6 isChromeAllowed];

  if (!v7)
  {
    v5 = 0.0;
  }

  v8 = [(PXStoryOverlayController *)self viewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__PXStoryOverlayController__updateScrubberVisibilityFraction__block_invoke;
  v9[3] = &__block_descriptor_40_e35_v16__0___PXStoryMutableViewModel__8l;
  *&v9[4] = v5;
  [v8 performChanges:v9];
}

- (void)_invalidateScrubberVisibilityFraction
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateScrubberVisibilityFraction];
}

- (void)_updateAnimator:(id)a3 endValue:(double)a4 animated:(BOOL)a5
{
  v5 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PXStoryOverlayController__updateAnimator_endValue_animated___block_invoke;
  aBlock[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
  *&aBlock[4] = a4;
  v6 = a3;
  v7 = _Block_copy(aBlock);
  if (v5)
  {
    [v6 performChangesUsingDefaultSpringAnimationWithInitialVelocity:v7 changes:0.0];
  }

  else
  {
    [v6 performChangesWithoutAnimation:v7];
  }
}

- (void)_updateInfoPanelVisibilityFraction
{
  v3 = [(PXStoryOverlayController *)self mainModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__PXStoryOverlayController__updateInfoPanelVisibilityFraction__block_invoke;
  v4[3] = &unk_1E77485B0;
  v4[4] = self;
  [v3 performChanges:v4];
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
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateInfoPanelVisibilityFraction];
}

- (void)_updateInfoPanelVisibilityFractionAnimator
{
  v6 = [(PXStoryOverlayController *)self infoPanelVisibilityFractionAnimator];
  v3 = [(PXStoryOverlayController *)self mainModel];
  [v3 desiredInfoPanelVisibilityFraction];
  v5 = v4;

  [(PXStoryOverlayController *)self _updateAnimator:v6 endValue:1 animated:v5];
}

- (void)_invalidateInfoPanelVisibilityFractionAnimator
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateInfoPanelVisibilityFractionAnimator];
}

- (void)_updateFadeOutOverlayVisibilityFraction
{
  v3 = [(PXStoryOverlayController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__PXStoryOverlayController__updateFadeOutOverlayVisibilityFraction__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [v3 performChanges:v4];
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
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFadeOutOverlayVisibilityFraction];
}

- (void)_updateFadeOutOverlayVisibilityFractionAnimator
{
  v6 = [(PXStoryOverlayController *)self fadeOutOverlayVisibilityFractionAnimator];
  v3 = [(PXStoryOverlayController *)self mainModel];
  [v3 outroFractionCompleted];
  v5 = v4;

  [(PXStoryOverlayController *)self _updateAnimator:v6 endValue:1 animated:v5];
}

- (void)_invalidateFadeOutOverlayVisibilityFractionAnimator
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFadeOutOverlayVisibilityFractionAnimator];
}

- (void)_updateStyleSwitcherVisibilityFractionAnimator
{
  v10 = [(PXStoryOverlayController *)self styleSwitcherVisibilityFractionAnimator];
  v3 = [(PXStoryOverlayController *)self viewModel];
  v4 = [v3 viewMode];

  if (v4 == 4)
  {
    v5 = 1.0;
    v6 = 1;
  }

  else
  {
    v7 = [(PXStoryOverlayController *)self viewModel];
    v8 = [v7 mainConfiguration];
    v9 = [v8 isAppleMusicPreview];

    v6 = v9 ^ 1u;
    v5 = 0.0;
    if (v9)
    {
      v5 = 1.0;
    }
  }

  [(PXStoryOverlayController *)self _updateAnimator:v10 endValue:v6 animated:v5];
}

- (void)_invalidateStyleSwitcherVisibilityFractionAnimator
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateStyleSwitcherVisibilityFractionAnimator];
}

- (void)_updateScrubberVisibilityFractionAnimator
{
  v5 = [(PXStoryOverlayController *)self scrubberVisibilityFractionAnimator];
  v3 = [(PXStoryOverlayController *)self viewModel];
  if ([v3 wantsScrubberVisible])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [(PXStoryOverlayController *)self _updateAnimator:v5 endValue:1 animated:v4];
}

- (void)_invalidateScrubberVisibilityFractionAnimator
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateScrubberVisibilityFractionAnimator];
}

- (void)_updateChromeVisibilityFraction
{
  v3 = [(PXStoryOverlayController *)self chromeVisibilityFractionAnimator];
  [v3 presentationValue];
  v5 = v4;

  v6 = [(PXStoryOverlayController *)self viewModel];
  v7 = [v6 isChromeAllowed];

  if (!v7)
  {
    v5 = 0.0;
  }

  v8 = [(PXStoryOverlayController *)self viewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PXStoryOverlayController__updateChromeVisibilityFraction__block_invoke;
  v9[3] = &__block_descriptor_40_e35_v16__0___PXStoryMutableViewModel__8l;
  *&v9[4] = v5;
  [v8 performChanges:v9];
}

- (void)_invalidateChromeVisibilityFraction
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateChromeVisibilityFraction];
}

- (void)_updateChromeVisibilityFractionAnimator
{
  v5 = [(PXStoryOverlayController *)self chromeVisibilityFractionAnimator];
  v3 = [(PXStoryOverlayController *)self viewModel];
  if ([v3 wantsChromeVisible])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [(PXStoryOverlayController *)self _updateAnimator:v5 endValue:1 animated:v4];
}

- (void)_invalidateChromeVisibilityFractionAnimator
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateChromeVisibilityFractionAnimator];
}

- (void)_updateRelatedOverlayVisible
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryOverlayController *)self viewModel];
  if (([v3 isPerformingViewControllerTransition] & 1) == 0)
  {
    if (![v3 isAtPlaybackEnd] || objc_msgSend(v3, "viewMode") != 1)
    {
      goto LABEL_9;
    }

    v4 = [v3 mainConfiguration];
    if ([v4 isAppleMusicPreview])
    {
      goto LABEL_8;
    }

    v5 = [v3 mainConfiguration];
    if (([v5 shouldDismissAtEnd] & 1) != 0 || objc_msgSend(v3, "isPerformingViewControllerTransition"))
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
      [v3 performChanges:v15];
      goto LABEL_11;
    }

    v7 = [v3 shouldAutoReplayPreference];

    if (v7)
    {
      goto LABEL_9;
    }

    if ([v3 wantsRelatedOverlayVisible])
    {
      v6 = 1;
      goto LABEL_10;
    }

    v18 = 0;
    v8 = [v3 checkIfShouldPreventAdvancingAndReturnReason:&v18];
    v9 = v18;
    v10 = v9;
    if (v8)
    {
      v11 = v9;
    }

    else
    {
      v12 = [(PXStoryOverlayController *)self mainModel];
      v17 = 0;
      v13 = [v12 checkIfShouldPreventAdvancingAndReturnReason:&v17];
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
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateRelatedOverlayVisible];
}

- (void)_updateChromeItems
{
  v4 = [(PXStoryOverlayController *)self viewModel];
  v5 = [(PXStoryOverlayController *)self mainModel];
  v6 = [v4 wantsChromeVisible];
  v7 = [v4 viewLayoutSpec];
  v8 = +[PXStorySettings sharedInstance];
  if ([v4 wantsRelatedOverlayVisible])
  {
    if ([v4 isRelatedOverlayScrolledIntoView] && (objc_msgSend(v7, "shouldHideChromeItemsWhenRelatedOverlayIsScrolledIntoView") & 1) != 0)
    {
      v9 = 0;
    }

    else
    {
      if ([v7 canShowCloseButton])
      {
        v13 = 3073;
      }

      else
      {
        v13 = 3072;
      }

      if ([v7 onlyShowReplayEndButtonAtTopOfTitle])
      {
        v9 = v13 | 0x40000;
      }

      else
      {
        v14 = [v5 currentAssetCollectionIsFavorite];
        v15 = 1835008;
        if (v14)
        {
          v15 = 2883584;
        }

        v16 = v15 | v13;
        if ([v4 wantsFeedbackAction])
        {
          v9 = v16 | 0x2000000;
        }

        else
        {
          v9 = v16;
        }
      }
    }

    v17 = [v4 generativeStoryInWatchNextController];
    v18 = [v17 wantsMemoryCreationButton];

    if (v18)
    {
      v11 = v9 | 0x100000000;
    }

    else
    {
      v11 = v9;
    }

LABEL_34:
    v6 = 1;
    goto LABEL_35;
  }

  if ([v5 viewMode] == 1 && objc_msgSend(v5, "readinessStatus") == 1 && objc_msgSend(v8, "playerShowsBufferingStatus") && (!objc_msgSend(v4, "wantsScrubberVisible") || objc_msgSend(v8, "wantsBufferingIndicatorOverScrubber") && (objc_msgSend(v5, "isScrolling") & 1) == 0 && (objc_msgSend(v4, "isScrubbing") & 1) == 0))
  {
    v10 = 0x8000;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 | [v7 canShowCloseButton];
  v12 = [v4 viewMode];
  if (v12 > 3)
  {
    if (v12 == 4)
    {
      v11 = v10;
      goto LABEL_35;
    }

    if (v12 != 5)
    {
      if (v12 != 100)
      {
        goto LABEL_35;
      }

      goto LABEL_42;
    }

    v11 = v10 | 4;
  }

  else
  {
    if (v12 != 1)
    {
      if (v12 == 2)
      {
        if ([v4 isInSelectMode])
        {
          v11 = 0;
        }

        else if (([v8 preferTopChromeItemsInAppNavigationBar] & 1) == 0)
        {
          if (([v7 insideCollectionDetailsView] & 1) != 0 || MEMORY[0x1A590D320]())
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

      if (v12)
      {
        goto LABEL_35;
      }

LABEL_42:
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"PXStoryOverlayController.m" lineNumber:268 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v21 = [v7 fullsizePlayerDefaultChromeItems] | v11;
    if ([v8 allowAspectModeToggle])
    {
      v22 = v21 | 0x4000;
    }

    else
    {
      v25 = [(PXStoryOverlayController *)self mainModel];
      v26 = [v25 extendedTraitCollection];
      v27 = [v26 userInterfaceIdiom];

      if ([v8 showStyleSwitcher])
      {
        v28 = 512;
        if (v27 == 5)
        {
          v28 = 1073742336;
        }

        v22 = v28 | v21;
      }

      else
      {
        v29 = [v8 showMusicAndColorGradeEditor];
        v30 = v21 | 0x18;
        if (!v29)
        {
          v30 = v21;
        }

        v22 = v30 | 0x20;
      }
    }

    v31 = [v5 timeline];
    v32 = [v31 firstSegmentIdentifier];
    v41 = 0;
    v42 = 0.0;
    v43 = 0;
    if (v5)
    {
      [v5 currentScrollPosition];
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

    v36 = [v8 preferTopChromeItemsInAppNavigationBar];
    if (v32 == v35)
    {
      v37 = 1;
    }

    else
    {
      v37 = v36;
    }

    if (v37)
    {
      v38 = v22;
    }

    else
    {
      v38 = v22 | 0xC00;
    }

    if ([v4 edgeToHighlight] == 2)
    {
      v38 |= 0x1000uLL;
    }

    if ([v4 edgeToHighlight] == 8)
    {
      v38 |= 0x2000uLL;
    }

    if ([v4 shouldShowErrorIndicator])
    {
      v11 = v38 | 0x10000;
    }

    else
    {
      v11 = v38;
    }

    if ([v7 canShowMuteToggleButton] && ((objc_msgSend(v4, "wantsChromeVisible") & 1) != 0 || objc_msgSend(v4, "canShowMuteToggleButtonWhenChromeIsHidden")))
    {
      v11 |= 0x1000000uLL;
    }
  }

LABEL_35:
  v19 = v11 & ~[v4 allowedChromeItems] & 0x101010004;
  v20 = [v4 allowedChromeItems];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __46__PXStoryOverlayController__updateChromeItems__block_invoke;
  v39[3] = &__block_descriptor_49_e35_v16__0___PXStoryMutableViewModel__8l;
  v40 = v6;
  v39[4] = v20 & v11;
  v39[5] = v19;
  [v4 performChanges:v39];
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
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateChromeItems];
}

- (void)_updateMainModel
{
  v4 = [(PXStoryOverlayController *)self viewModel];
  v3 = [v4 mainModel];
  [(PXStoryOverlayController *)self setMainModel:v3];
}

- (void)_invalidateMainModel
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMainModel];
}

- (void)setMainModel:(id)a3
{
  v5 = a3;
  mainModel = self->_mainModel;
  if (mainModel != v5)
  {
    v7 = v5;
    [(PXStoryModel *)mainModel unregisterChangeObserver:self context:MainModelObservationContext_176761];
    objc_storeStrong(&self->_mainModel, a3);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext_176761];
    [(PXStoryOverlayController *)self _invalidateChromeItems];
    [(PXStoryOverlayController *)self _invalidateFadeOutOverlayVisibilityFractionAnimator];
    [(PXStoryOverlayController *)self _invalidateStyleSwitcherVisibilityFractionAnimator];
    v5 = v7;
  }
}

- (void)configureUpdater:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXStoryOverlayController;
  v3 = a3;
  [(PXStoryController *)&v4 configureUpdater:v3];
  [v3 addUpdateSelector:{sel__updateMainModel, v4.receiver, v4.super_class}];
  [v3 addUpdateSelector:sel__updateRelatedOverlayVisible];
  [v3 addUpdateSelector:sel__updateChromeItems];
  [v3 addUpdateSelector:sel__updateChromeVisibilityFractionAnimator];
  [v3 addUpdateSelector:sel__updateChromeVisibilityFraction];
  [v3 addUpdateSelector:sel__updateScrubberVisibilityFractionAnimator];
  [v3 addUpdateSelector:sel__updateScrubberVisibilityFraction];
  [v3 addUpdateSelector:sel__updateStyleSwitcherVisibilityFractionAnimator];
  [v3 addUpdateSelector:sel__updateStyleSwitcherVisibilityFraction];
  [v3 addUpdateSelector:sel__updateRelatedOverlayVisibilityFractionAnimator];
  [v3 addUpdateSelector:sel__updateRelatedOverlayVisibilityFraction];
  [v3 addUpdateSelector:sel__updateFadeOutOverlayVisibilityFractionAnimator];
  [v3 addUpdateSelector:sel__updateFadeOutOverlayVisibilityFraction];
  [v3 addUpdateSelector:sel__updateInfoPanelVisibilityFractionAnimator];
  [v3 addUpdateSelector:sel__updateInfoPanelVisibilityFraction];
}

- (PXStoryOverlayController)initWithViewModel:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PXStoryOverlayController;
  v5 = [(PXStoryController *)&v25 initWithObservableModel:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewModel, v4);
    [v4 registerChangeObserver:v6 context:ViewModelObservationContext_176762];
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
    v19 = [(PXStoryOverlayController *)v6 viewModel];
    v20 = [v19 generativeStoryInWatchNextController];
    [v20 registerChangeObserver:v6 context:MemoryCreationButtonVisibilityObservationContext];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __46__PXStoryOverlayController_initWithViewModel___block_invoke;
    v22[3] = &unk_1E774AFD0;
    v23 = v6;
    v24 = v4;
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

- (PXStoryOverlayController)initWithObservableModel:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryOverlayController.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXStoryOverlayController initWithObservableModel:]"}];

  abort();
}

@end