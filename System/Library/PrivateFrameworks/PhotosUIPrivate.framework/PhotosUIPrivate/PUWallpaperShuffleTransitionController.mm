@interface PUWallpaperShuffleTransitionController
- (CGAffineTransform)_inactiveTransformForViewModel:(SEL)model;
- (PUWallpaperShuffleTransitionController)initWithRenderer:(id)renderer;
- (double)_visibilityAmountForFadeIn:(BOOL)in useCrossfade:(BOOL)crossfade;
- (void)_invalidateAdditionalViewTitleHeightPresentationValue;
- (void)_invalidateAnimators;
- (void)_invalidateFilters;
- (void)_invalidateIsAnimating;
- (void)_invalidateViewHierarchy;
- (void)_invalidateViewProperties;
- (void)_performChangesWithDefaultDurationForAnimator:(id)animator changes:(id)changes;
- (void)_performFadeInAnimationUsingCrossfade:(BOOL)crossfade;
- (void)_removeFromViewModelFromViewHierarchy;
- (void)_updateAdditionalViewTitleHeightPresentationValue;
- (void)_updateAnimators;
- (void)_updateIsAnimating;
- (void)_updateViewHierarchy;
- (void)_updateViewProperties;
- (void)dealloc;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)performTransitionFromViewModel:(id)model toViewModel:(id)viewModel usingCrossfade:(BOOL)crossfade;
- (void)setFadeInAnimator:(id)animator;
- (void)setFadeOutAnimator:(id)animator;
- (void)setFromViewModel:(id)model;
- (void)setIsAnimating:(BOOL)animating;
@end

@implementation PUWallpaperShuffleTransitionController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (AdditionalViewTitleHeightAnimatorObservationContext == context)
  {
    if ((changeCopy & 4) != 0)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __71__PUWallpaperShuffleTransitionController_observable_didChange_context___block_invoke;
      v18[3] = &unk_1E7B755B0;
      v18[4] = self;
      [(PUWallpaperShuffleTransitionController *)self performChanges:v18];
    }

    if ((changeCopy & 2) != 0)
    {
      v11 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v12 = __71__PUWallpaperShuffleTransitionController_observable_didChange_context___block_invoke_2;
LABEL_21:
      v11[2] = v12;
      v11[3] = &unk_1E7B755B0;
      v11[4] = self;
      [(PUWallpaperShuffleTransitionController *)self performChanges:v14, v15];
    }
  }

  else if (FadeOutAnimatorObservationContext == context || FadeInAnimatorObservationContext == context)
  {
    if ((changeCopy & 4) != 0)
    {
      if (FadeOutAnimatorObservationContext == context && ![(PUWallpaperShuffleTransitionController *)self useCrossfade])
      {
        fadeOutAnimator = [(PUWallpaperShuffleTransitionController *)self fadeOutAnimator];
        if ([fadeOutAnimator isAnimating])
        {
        }

        else
        {
          isAnimating = [(PUWallpaperShuffleTransitionController *)self isAnimating];

          if (isAnimating)
          {
            [(PUWallpaperShuffleTransitionController *)self _performFadeInAnimationUsingCrossfade:0];
          }
        }
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __71__PUWallpaperShuffleTransitionController_observable_didChange_context___block_invoke_3;
      v16[3] = &unk_1E7B755B0;
      v16[4] = self;
      [(PUWallpaperShuffleTransitionController *)self performChanges:v16];
    }

    if ((changeCopy & 2) != 0)
    {
      v11 = &v14;
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v12 = __71__PUWallpaperShuffleTransitionController_observable_didChange_context___block_invoke_4;
      goto LABEL_21;
    }
  }
}

- (void)performTransitionFromViewModel:(id)model toViewModel:(id)viewModel usingCrossfade:(BOOL)crossfade
{
  crossfadeCopy = crossfade;
  modelCopy = model;
  viewModelCopy = viewModel;
  v11 = viewModelCopy;
  if (modelCopy)
  {
    if (viewModelCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleTransitionController.m" lineNumber:357 description:{@"Invalid parameter not satisfying: %@", @"fromViewModel"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleTransitionController.m" lineNumber:358 description:{@"Invalid parameter not satisfying: %@", @"toViewModel"}];

LABEL_3:
  v12 = 5;
  if (crossfadeCopy)
  {
    v12 = 1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__PUWallpaperShuffleTransitionController_performTransitionFromViewModel_toViewModel_usingCrossfade___block_invoke;
  aBlock[3] = &__block_descriptor_40_e39_v16__0__PUParallaxLayerStackViewModel_8l;
  aBlock[4] = v12;
  v13 = _Block_copy(aBlock);
  v13[2](v13, modelCopy);
  v13[2](v13, v11);
  [(PUWallpaperShuffleTransitionController *)self setUseCrossfade:crossfadeCopy];
  [(PUWallpaperShuffleTransitionController *)self setFromViewModel:modelCopy];
  [(PUWallpaperShuffleTransitionController *)self setToViewModel:v11];
  [(PUWallpaperShuffleTransitionController *)self _invalidateAnimators];
  if ([(PUWallpaperShuffleTransitionController *)self isAnimating])
  {
    [(PUWallpaperShuffleTransitionController *)self _invalidateViewHierarchy];
  }
}

uint64_t __100__PUWallpaperShuffleTransitionController_performTransitionFromViewModel_toViewModel_usingCrossfade___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __100__PUWallpaperShuffleTransitionController_performTransitionFromViewModel_toViewModel_usingCrossfade___block_invoke_2;
  v3[3] = &__block_descriptor_40_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
  v3[4] = *(a1 + 32);
  return [a2 performChanges:v3];
}

- (CGAffineTransform)_inactiveTransformForViewModel:(SEL)model
{
  v5 = a4;
  [v5 inactiveFrame];
  if (CGRectIsEmpty(v23))
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "inactiveFrame is empty, falling back to the identity transform", buf, 2u);
    }

    v7 = MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v8;
    *&retstr->tx = *(v7 + 32);
  }

  else if ([v5 canCreateSpatialPhotoLayerView] && (objc_msgSend(v5, "viewManager"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "currentLayerStack"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "spatialPhotoBackgroundLayer"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "viewForLayer:", v11), v12 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v12))
  {
    v13 = MEMORY[0x1E695EFD0];
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v14;
    *&retstr->tx = *(v13 + 32);
  }

  else
  {
    [v5 containerFrame];
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    v19 = -CGRectGetMidX(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v20 = -CGRectGetMidY(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    CGRectOffset(v26, v19, v20);
    [v5 visibleFrame];
    PXRectNormalize();
    PXRectDenormalize();
    PXAffineTransformMakeFromRects();
  }

  return result;
}

- (void)_performFadeInAnimationUsingCrossfade:(BOOL)crossfade
{
  if (!crossfade)
  {
    [(PUWallpaperShuffleTransitionController *)self _visibilityAmountForFadeIn:0 useCrossfade:0];
    v5 = v4;
    fadeInAnimator = [(PUWallpaperShuffleTransitionController *)self fadeInAnimator];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__PUWallpaperShuffleTransitionController__performFadeInAnimationUsingCrossfade___block_invoke;
    v9[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
    v9[4] = v5;
    [fadeInAnimator performChangesWithoutAnimation:v9];
  }

  fadeInAnimator2 = [(PUWallpaperShuffleTransitionController *)self fadeInAnimator];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__PUWallpaperShuffleTransitionController__performFadeInAnimationUsingCrossfade___block_invoke_2;
  v8[3] = &unk_1E7B78010;
  v8[4] = self;
  [(PUWallpaperShuffleTransitionController *)self _performChangesWithDefaultDurationForAnimator:fadeInAnimator2 changes:v8];
}

void __80__PUWallpaperShuffleTransitionController__performFadeInAnimationUsingCrossfade___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _visibilityAmountForFadeIn:1 useCrossfade:{objc_msgSend(v2, "useCrossfade")}];
  [v3 setValue:1 animateImmediately:?];
}

- (void)_removeFromViewModelFromViewHierarchy
{
  fromViewModel = [(PUWallpaperShuffleTransitionController *)self fromViewModel];
  viewManager = [fromViewModel viewManager];

  PUParallaxLayerStackViewManagerPerformChangesInAllLayerViews(viewManager, &__block_literal_global_9419);
}

- (void)setFromViewModel:(id)model
{
  modelCopy = model;
  v4 = self->_fromViewModel;
  fromViewModel = v4;
  if (v4 != modelCopy)
  {
    v6 = [(PUParallaxLayerStackViewModel *)v4 isEqual:modelCopy];

    v8 = modelCopy;
    if (v6)
    {
      goto LABEL_5;
    }

    [(PUWallpaperShuffleTransitionController *)self _removeFromViewModelFromViewHierarchy];
    v9 = modelCopy;
    fromViewModel = self->_fromViewModel;
    self->_fromViewModel = v9;
  }

  v8 = modelCopy;
LABEL_5:

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)setFadeInAnimator:(id)animator
{
  animatorCopy = animator;
  v5 = self->_fadeInAnimator;
  v6 = v5;
  if (v5 == animatorCopy)
  {
  }

  else
  {
    v7 = [(PXNumberAnimator *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      [(PXNumberAnimator *)self->_fadeInAnimator unregisterChangeObserver:self context:FadeInAnimatorObservationContext];
      objc_storeStrong(&self->_fadeInAnimator, animator);
      [(PXNumberAnimator *)self->_fadeInAnimator registerChangeObserver:self context:FadeInAnimatorObservationContext];
      [(PUWallpaperShuffleTransitionController *)self _invalidateIsAnimating];
      [(PUWallpaperShuffleTransitionController *)self _invalidateViewProperties];
    }
  }
}

- (void)setFadeOutAnimator:(id)animator
{
  animatorCopy = animator;
  v5 = self->_fadeOutAnimator;
  v6 = v5;
  if (v5 == animatorCopy)
  {
  }

  else
  {
    v7 = [(PXNumberAnimator *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      [(PXNumberAnimator *)self->_fadeOutAnimator unregisterChangeObserver:self context:FadeOutAnimatorObservationContext];
      objc_storeStrong(&self->_fadeOutAnimator, animator);
      [(PXNumberAnimator *)self->_fadeOutAnimator registerChangeObserver:self context:FadeOutAnimatorObservationContext];
      [(PUWallpaperShuffleTransitionController *)self _invalidateIsAnimating];
      [(PUWallpaperShuffleTransitionController *)self _invalidateViewProperties];
    }
  }
}

- (void)setIsAnimating:(BOOL)animating
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_isAnimating != animating)
  {
    animatingCopy = animating;
    self->_isAnimating = animating;
    [(PUWallpaperShuffleTransitionController *)self _invalidateViewHierarchy];
    [(PUWallpaperShuffleTransitionController *)self signalChange:1];
    v5 = PLWallpaperGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = [MEMORY[0x1E696AD98] numberWithBool:animatingCopy];
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "[%@] isAnimating: %@", &v8, 0x16u);
    }
  }
}

- (double)_visibilityAmountForFadeIn:(BOOL)in useCrossfade:(BOOL)crossfade
{
  result = 0.0;
  v5 = 1.0;
  if (in)
  {
    result = 1.0;
  }

  else
  {
    v5 = 0.300000012;
  }

  if (!crossfade)
  {
    return v5;
  }

  return result;
}

- (void)_performChangesWithDefaultDurationForAnimator:(id)animator changes:(id)changes
{
  animatorCopy = animator;
  changesCopy = changes;
  if ([(PUWallpaperShuffleTransitionController *)self useCrossfade])
  {
    LODWORD(v7) = 1058642330;
    v9 = 1.0;
  }

  else
  {
    fadeOutAnimator = [(PUWallpaperShuffleTransitionController *)self fadeOutAnimator];

    if (fadeOutAnimator == animatorCopy)
    {
      v9 = 0.416999996;
      LODWORD(v7) = 1059481190;
      LODWORD(v10) = 1.0;
      goto LABEL_9;
    }

    fadeInAnimator = [(PUWallpaperShuffleTransitionController *)self fadeInAnimator];

    if (fadeInAnimator == animatorCopy)
    {
      v9 = 1.0;
      v7 = 0.0;
    }

    else
    {
      additionalViewTitleHeightAnimator = [(PUWallpaperShuffleTransitionController *)self additionalViewTitleHeightAnimator];

      if (additionalViewTitleHeightAnimator != animatorCopy)
      {
        goto LABEL_10;
      }

      v9 = 1.35000002;
      LODWORD(v7) = 1058642330;
    }
  }

  v10 = 0.0;
LABEL_9:
  LODWORD(v8) = 1.0;
  [animatorCopy performChangesUsingBezierCurveWithDuration:changesCopy controlPoints:v9 :v7 :0.0 :v10 changes:v8];
LABEL_10:
}

- (void)_updateAdditionalViewTitleHeightPresentationValue
{
  additionalViewTitleHeightAnimator = [(PUWallpaperShuffleTransitionController *)self additionalViewTitleHeightAnimator];
  [additionalViewTitleHeightAnimator presentationValue];
  [(PUWallpaperShuffleTransitionController *)self setAdditionalViewTitleHeightPresentationValue:?];

  [(PUWallpaperShuffleTransitionController *)self signalChange:2];
}

- (void)_invalidateAdditionalViewTitleHeightPresentationValue
{
  updater = [(PUWallpaperShuffleTransitionController *)self updater];
  [updater setNeedsUpdateOf:sel__updateAdditionalViewTitleHeightPresentationValue];
}

- (void)_invalidateFilters
{
  updater = [(PUWallpaperShuffleTransitionController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFilters];
}

- (void)_updateViewProperties
{
  v36 = *MEMORY[0x1E69E9840];
  fromViewModel = [(PUWallpaperShuffleTransitionController *)self fromViewModel];
  viewManager = [fromViewModel viewManager];
  fadeOutAnimator = [(PUWallpaperShuffleTransitionController *)self fadeOutAnimator];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __63__PUWallpaperShuffleTransitionController__updateViewProperties__block_invoke;
  v33[3] = &unk_1E7B80328;
  v6 = fadeOutAnimator;
  v34 = v6;
  [fromViewModel performChanges:v33];
  isAnimating = [v6 isAnimating];
  memset(&v32, 0, sizeof(v32));
  [(PUWallpaperShuffleTransitionController *)self _inactiveTransformForViewModel:fromViewModel];
  memset(&v31, 0, sizeof(v31));
  [v6 presentationValue];
  v35 = v32;
  PUAffineTransformByLinearlyInterpolatingBetweenTransforms();
  PUPosterAdditionalTransformForDeviceOrientation([fromViewModel deviceOrientation], &t2);
  t1 = v31;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v31 = v35;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __63__PUWallpaperShuffleTransitionController__updateViewProperties__block_invoke_2;
  v26[3] = &__block_descriptor_81_e29_v16__0__PUParallaxLayerView_8l;
  v28 = isAnimating;
  v27 = v35;
  PUParallaxLayerStackViewManagerPerformChangesInAllLayerViews(viewManager, v26);
  v8 = PLWallpaperGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    [v6 presentationValue];
    LODWORD(v35.a) = 138412546;
    *(&v35.a + 4) = v9;
    WORD2(v35.b) = 2048;
    *(&v35.b + 6) = v10;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "[%@] Fade out to: %.2f", &v35, 0x16u);
  }

  toViewModel = [(PUWallpaperShuffleTransitionController *)self toViewModel];
  viewManager2 = [toViewModel viewManager];
  fadeInAnimator = [(PUWallpaperShuffleTransitionController *)self fadeInAnimator];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __63__PUWallpaperShuffleTransitionController__updateViewProperties__block_invoke_233;
  v24[3] = &unk_1E7B80328;
  v14 = fadeInAnimator;
  v25 = v14;
  [toViewModel performChanges:v24];
  isAnimating2 = [v14 isAnimating];
  fadeOutAnimator2 = [(PUWallpaperShuffleTransitionController *)self fadeOutAnimator];
  isAnimating3 = [fadeOutAnimator2 isAnimating];

  memset(&v32, 0, sizeof(v32));
  [(PUWallpaperShuffleTransitionController *)self _inactiveTransformForViewModel:toViewModel];
  memset(&v31, 0, sizeof(v31));
  [v14 presentationValue];
  v35 = v32;
  PUAffineTransformByLinearlyInterpolatingBetweenTransforms();
  PUPosterAdditionalTransformForDeviceOrientation([toViewModel deviceOrientation], &t2);
  t1 = v31;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v31 = v35;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__PUWallpaperShuffleTransitionController__updateViewProperties__block_invoke_2_234;
  v21[3] = &__block_descriptor_81_e29_v16__0__PUParallaxLayerView_8l;
  v23 = (isAnimating2 ^ 1) & isAnimating3;
  v22 = v35;
  PUParallaxLayerStackViewManagerPerformChangesInAllLayerViews(viewManager2, v21);
  v18 = PLWallpaperGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    [v14 presentationValue];
    LODWORD(v35.a) = 138412546;
    *(&v35.a + 4) = v19;
    WORD2(v35.b) = 2048;
    *(&v35.b + 6) = v20;
    _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_DEFAULT, "[%@] Fade in to: %.2f", &v35, 0x16u);
  }
}

void __63__PUWallpaperShuffleTransitionController__updateViewProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 presentationValue];
  [v3 setVisibilityAmount:?];
}

void __63__PUWallpaperShuffleTransitionController__updateViewProperties__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 80);
  v4 = a2;
  [v4 setHidden:(v3 & 1) == 0];
  v5 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v5;
  v6[2] = *(a1 + 64);
  [v4 setTransform:v6];
}

void __63__PUWallpaperShuffleTransitionController__updateViewProperties__block_invoke_233(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 presentationValue];
  [v3 setVisibilityAmount:?];
}

void __63__PUWallpaperShuffleTransitionController__updateViewProperties__block_invoke_2_234(uint64_t a1, void *a2)
{
  v3 = *(a1 + 80);
  v4 = a2;
  [v4 setHidden:v3];
  v5 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v5;
  v6[2] = *(a1 + 64);
  [v4 setTransform:v6];
}

- (void)_invalidateViewProperties
{
  updater = [(PUWallpaperShuffleTransitionController *)self updater];
  [updater setNeedsUpdateOf:sel__updateViewProperties];
}

- (void)_updateViewHierarchy
{
  v33 = *MEMORY[0x1E69E9840];
  fromViewModel = [(PUWallpaperShuffleTransitionController *)self fromViewModel];
  viewManager = [fromViewModel viewManager];
  currentLayerStack = [fromViewModel currentLayerStack];
  backgroundLayer = [currentLayerStack backgroundLayer];
  v7 = [viewManager viewForLayer:backgroundLayer];

  foregroundLayer = [currentLayerStack foregroundLayer];
  v9 = [viewManager viewForLayer:foregroundLayer];

  inactiveForegroundLayer = [currentLayerStack inactiveForegroundLayer];
  v29 = [viewManager viewForLayer:inactiveForegroundLayer];

  inactiveBackgroundLayer = [currentLayerStack inactiveBackgroundLayer];
  v28 = [viewManager viewForLayer:inactiveBackgroundLayer];

  spatialPhotoForegroundLayer = [currentLayerStack spatialPhotoForegroundLayer];
  v13 = [viewManager viewForLayer:spatialPhotoForegroundLayer];

  spatialPhotoBackgroundLayerView = [viewManager spatialPhotoBackgroundLayerView];
  clockAppearsAboveForeground = [fromViewModel clockAppearsAboveForeground];
  v30 = v9;
  layer = [v9 layer];
  [layer setCompositingFilter:0];

  layer2 = [v7 layer];
  [layer2 setCompositingFilter:0];

  layer3 = [v13 layer];
  [layer3 setCompositingFilter:0];

  layer4 = [spatialPhotoBackgroundLayerView layer];
  [layer4 setCompositingFilter:0];

  [spatialPhotoBackgroundLayerView setEnableOcclusion:0];
  if ([(PUWallpaperShuffleTransitionController *)self isAnimating])
  {
    v27 = v7;
    renderer = [(PUWallpaperShuffleTransitionController *)self renderer];
    backgroundView = [renderer backgroundView];
    foregroundView = [renderer foregroundView];
    floatingView = [renderer floatingView];
    v23 = backgroundView;
    if (spatialPhotoBackgroundLayerView)
    {
      v24 = spatialPhotoBackgroundLayerView;
    }

    else
    {
      [backgroundView addSubview:v28];
      [backgroundView addSubview:v27];
      if (clockAppearsAboveForeground)
      {
        [foregroundView addSubview:v29];
        v23 = foregroundView;
      }

      else
      {
        [floatingView addSubview:v29];
        v23 = floatingView;
      }

      v24 = v30;
    }

    [v23 addSubview:v24];
    v25 = PLWallpaperGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = objc_opt_class();
      _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEFAULT, "[%@] Add 'from' views to the hierarchy", buf, 0xCu);
    }

    v7 = v27;
  }

  else
  {
    [(PUWallpaperShuffleTransitionController *)self setFromViewModel:0];
    renderer = PLWallpaperGetLog();
    if (os_log_type_enabled(renderer, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = objc_opt_class();
      _os_log_impl(&dword_1B36F3000, renderer, OS_LOG_TYPE_DEFAULT, "[%@] Remove 'from' views to the hierarchy", buf, 0xCu);
    }
  }
}

- (void)_invalidateViewHierarchy
{
  updater = [(PUWallpaperShuffleTransitionController *)self updater];
  [updater setNeedsUpdateOf:sel__updateViewHierarchy];
}

- (void)_updateIsAnimating
{
  additionalViewTitleHeightAnimator = [(PUWallpaperShuffleTransitionController *)self additionalViewTitleHeightAnimator];
  if ([additionalViewTitleHeightAnimator isAnimating])
  {
    [(PUWallpaperShuffleTransitionController *)self setIsAnimating:1];
  }

  else
  {
    fadeOutAnimator = [(PUWallpaperShuffleTransitionController *)self fadeOutAnimator];
    if ([fadeOutAnimator isAnimating])
    {
      [(PUWallpaperShuffleTransitionController *)self setIsAnimating:1];
    }

    else
    {
      fadeInAnimator = [(PUWallpaperShuffleTransitionController *)self fadeInAnimator];
      -[PUWallpaperShuffleTransitionController setIsAnimating:](self, "setIsAnimating:", [fadeInAnimator isAnimating]);
    }
  }
}

- (void)_invalidateIsAnimating
{
  updater = [(PUWallpaperShuffleTransitionController *)self updater];
  [updater setNeedsUpdateOf:sel__updateIsAnimating];
}

- (void)_updateAnimators
{
  v24 = *MEMORY[0x1E69E9840];
  additionalViewTitleHeightAnimator = [(PUWallpaperShuffleTransitionController *)self additionalViewTitleHeightAnimator];
  [additionalViewTitleHeightAnimator value];
  if (PXFloatApproximatelyEqualToFloat())
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __58__PUWallpaperShuffleTransitionController__updateAnimators__block_invoke;
    v19[3] = &unk_1E7B78010;
    v19[4] = self;
    [additionalViewTitleHeightAnimator performChangesWithoutAnimation:v19];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__PUWallpaperShuffleTransitionController__updateAnimators__block_invoke_2;
  v18[3] = &unk_1E7B78010;
  v18[4] = self;
  [(PUWallpaperShuffleTransitionController *)self _performChangesWithDefaultDurationForAnimator:additionalViewTitleHeightAnimator changes:v18];
  fadeInAnimator = [(PUWallpaperShuffleTransitionController *)self fadeInAnimator];
  if ([fadeInAnimator isAnimating])
  {
    fadeInAnimator2 = [(PUWallpaperShuffleTransitionController *)self fadeInAnimator];
    [fadeInAnimator2 presentationValue];
    v7 = v6;
  }

  else
  {
    [(PUWallpaperShuffleTransitionController *)self _visibilityAmountForFadeIn:1 useCrossfade:[(PUWallpaperShuffleTransitionController *)self useCrossfade]];
    v7 = v8;
  }

  v9 = [objc_alloc(MEMORY[0x1E69C4588]) initWithValue:v7];
  [(PUWallpaperShuffleTransitionController *)self setFadeOutAnimator:v9];

  fadeOutAnimator = [(PUWallpaperShuffleTransitionController *)self fadeOutAnimator];
  [fadeOutAnimator setHighFrameRateReason:2228230];

  fadeOutAnimator2 = [(PUWallpaperShuffleTransitionController *)self fadeOutAnimator];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__PUWallpaperShuffleTransitionController__updateAnimators__block_invoke_3;
  v17[3] = &unk_1E7B78010;
  v17[4] = self;
  [(PUWallpaperShuffleTransitionController *)self _performChangesWithDefaultDurationForAnimator:fadeOutAnimator2 changes:v17];

  v12 = [objc_alloc(MEMORY[0x1E69C4588]) initWithValue:0.0];
  [(PUWallpaperShuffleTransitionController *)self setFadeInAnimator:v12];

  fadeInAnimator3 = [(PUWallpaperShuffleTransitionController *)self fadeInAnimator];
  [fadeInAnimator3 setHighFrameRateReason:2228230];

  if ([(PUWallpaperShuffleTransitionController *)self useCrossfade])
  {
    [(PUWallpaperShuffleTransitionController *)self _performFadeInAnimationUsingCrossfade:1];
  }

  v14 = PLWallpaperGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[PUWallpaperShuffleTransitionController useCrossfade](self, "useCrossfade")}];
    *buf = 138412546;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "[%@] Updated animators, use crossfade: %@", buf, 0x16u);
  }
}

void __58__PUWallpaperShuffleTransitionController__updateAnimators__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 fromViewModel];
  [v3 setValue:PUUserAdjustedAdditionalViewTitleHeightForViewModel(v4)];
}

void __58__PUWallpaperShuffleTransitionController__updateAnimators__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 toViewModel];
  [v3 setValue:PUUserAdjustedAdditionalViewTitleHeightForViewModel(v4)];
}

void __58__PUWallpaperShuffleTransitionController__updateAnimators__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _visibilityAmountForFadeIn:0 useCrossfade:{objc_msgSend(v2, "useCrossfade")}];
  [v3 setValue:1 animateImmediately:?];
}

- (void)_invalidateAnimators
{
  updater = [(PUWallpaperShuffleTransitionController *)self updater];
  [updater setNeedsUpdateOf:sel__updateAnimators];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PUWallpaperShuffleTransitionController;
  [(PUWallpaperShuffleTransitionController *)&v4 didPerformChanges];
  updater = [(PUWallpaperShuffleTransitionController *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PUWallpaperShuffleTransitionController;
  [(PUWallpaperShuffleTransitionController *)&v3 performChanges:changes];
}

- (void)dealloc
{
  [(PUWallpaperShuffleTransitionController *)self _removeFromViewModelFromViewHierarchy];
  v3.receiver = self;
  v3.super_class = PUWallpaperShuffleTransitionController;
  [(PUWallpaperShuffleTransitionController *)&v3 dealloc];
}

- (PUWallpaperShuffleTransitionController)initWithRenderer:(id)renderer
{
  rendererCopy = renderer;
  v13.receiver = self;
  v13.super_class = PUWallpaperShuffleTransitionController;
  v6 = [(PUWallpaperShuffleTransitionController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_renderer, renderer);
    v8 = [objc_alloc(MEMORY[0x1E69C4588]) initWithValue:0.0];
    additionalViewTitleHeightAnimator = v7->_additionalViewTitleHeightAnimator;
    v7->_additionalViewTitleHeightAnimator = v8;

    [(PXNumberAnimator *)v7->_additionalViewTitleHeightAnimator setHighFrameRateReason:2228230];
    [(PXNumberAnimator *)v7->_additionalViewTitleHeightAnimator registerChangeObserver:v7 context:AdditionalViewTitleHeightAnimatorObservationContext];
    v10 = [objc_alloc(MEMORY[0x1E69C4600]) initWithTarget:v7 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v7->_updater;
    v7->_updater = v10;

    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateAnimators];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateIsAnimating];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateViewProperties];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateViewHierarchy];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateFilters];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateAdditionalViewTitleHeightPresentationValue];
  }

  return v7;
}

@end