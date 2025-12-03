@interface SBCrossfadeIconZoomAnimator
- (CGPoint)_zoomedIconCenter;
- (CGRect)_zoomedFrame;
- (SBCrossfadeIconZoomAnimator)initWithFolderController:(id)controller crossfadeView:(id)view icon:(id)icon;
- (double)_appSnapshotCornerRadiusForFraction:(double)fraction;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_cleanupAnimation;
- (void)_cleanupZoom;
- (void)_delayedForRotation;
- (void)_performAnimationToFraction:(double)fraction withCentralAnimationSettings:(id)settings delay:(double)delay alreadyAnimating:(BOOL)animating sharedCompletion:(id)completion;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)fraction;
@end

@implementation SBCrossfadeIconZoomAnimator

- (SBCrossfadeIconZoomAnimator)initWithFolderController:(id)controller crossfadeView:(id)view icon:(id)icon
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = SBCrossfadeIconZoomAnimator;
  v10 = [(SBScaleIconZoomAnimator *)&v13 initWithAnimationContainer:controller targetIcon:icon];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_crossfadeView, view);
    [(SBCrossfadeIconZoomAnimator *)v11 _assertCrossfadeViewSizeIfNecessary];
    if ([(SBIconAnimator *)v11 _isDelayedForRotation])
    {
      [(SBCrossfadeIconZoomAnimator *)v11 _delayedForRotation];
    }
  }

  return v11;
}

- (void)_delayedForRotation
{
  [(UIView *)self->_crossfadeView setHidden:1];
  animationContainer = [(SBIconAnimator *)self animationContainer];
  animationWindow = [animationContainer animationWindow];
  [animationWindow addSubview:self->_crossfadeView];
}

- (void)_prepareAnimation
{
  [(SBCrossfadeIconZoomAnimator *)self _assertCrossfadeViewSizeIfNecessary];
  [(UIView *)self->_crossfadeView setHidden:0];
  v24.receiver = self;
  v24.super_class = SBCrossfadeIconZoomAnimator;
  [(SBScaleIconZoomAnimator *)&v24 _prepareAnimation];
  [(SBCrossfadeIconZoomAnimator *)self _zoomedIconCenter];
  v4 = v3;
  v6 = v5;
  [(SBScaleIconZoomAnimator *)self zoomScale];
  v8 = v7;
  [(SBCrossfadeIconZoomAnimator *)self _zoomedFrame];
  v10 = v9;
  v12 = v11;
  targetIconView = [(SBScaleIconZoomAnimator *)self targetIconView];
  [targetIconView iconImageVisibleSize];
  v15 = v14;
  v17 = v16;

  v18 = v8 * v15;
  v19 = v8 * v17;
  v20 = 0.5;
  v21 = 0.5;
  if ((SBFFloatEqualsFloat() & 1) == 0 && v10 > v18)
  {
    v21 = (v4 + v18 * -0.5) / (v10 - v18);
  }

  if ((SBFFloatEqualsFloat() & 1) == 0 && v12 > v19)
  {
    v20 = (v6 + v19 * -0.5) / (v12 - v19);
  }

  targetIconView2 = [(SBScaleIconZoomAnimator *)self targetIconView];
  if ([(SBCrossfadeIconZoomAnimator *)self performsTrueCrossfade])
  {
    v23 = 3;
  }

  else
  {
    v23 = 1;
  }

  [targetIconView2 prepareToCrossfadeImageWithView:self->_crossfadeView anchorPoint:v23 options:{v21, v20}];
}

- (void)_setAnimationFraction:(double)fraction
{
  v6.receiver = self;
  v6.super_class = SBCrossfadeIconZoomAnimator;
  [(SBScaleIconZoomAnimator *)&v6 _setAnimationFraction:?];
  targetIconView = [(SBScaleIconZoomAnimator *)self targetIconView];
  [targetIconView setCrossfadeFraction:fraction];
  [(SBCrossfadeIconZoomAnimator *)self _appSnapshotCornerRadiusForFraction:fraction];
  [targetIconView setCrossfadeCornerRadius:?];
  [targetIconView setMorphFraction:fraction];
}

- (void)_cleanupZoom
{
  targetIcon = [(SBScaleIconZoomAnimator *)self targetIcon];
  v4 = [(SBIconZoomAnimator *)self iconViewForIcon:targetIcon];

  [v4 setIconImageAlpha:0.0];
  v5.receiver = self;
  v5.super_class = SBCrossfadeIconZoomAnimator;
  [(SBIconZoomAnimator *)&v5 _cleanupZoom];
}

- (void)_cleanupAnimation
{
  targetIcon = [(SBScaleIconZoomAnimator *)self targetIcon];
  v4 = [(SBIconZoomAnimator *)self iconViewForIcon:targetIcon];

  [v4 setIconImageAlpha:1.0];
  [v4 cleanupAfterCrossfade];
  targetIcon2 = [(SBScaleIconZoomAnimator *)self targetIcon];
  v6 = [(SBIconZoomAnimator *)self iconViewForIcon:targetIcon2];
  [v6 setHidden:0];

  v7.receiver = self;
  v7.super_class = SBCrossfadeIconZoomAnimator;
  [(SBScaleIconZoomAnimator *)&v7 _cleanupAnimation];
}

- (unint64_t)_numberOfSignificantAnimations
{
  v3.receiver = self;
  v3.super_class = SBCrossfadeIconZoomAnimator;
  return [(SBScaleIconZoomAnimator *)&v3 _numberOfSignificantAnimations]+ 2;
}

- (void)_performAnimationToFraction:(double)fraction withCentralAnimationSettings:(id)settings delay:(double)delay alreadyAnimating:(BOOL)animating sharedCompletion:(id)completion
{
  animatingCopy = animating;
  completionCopy = completion;
  v40.receiver = self;
  v40.super_class = SBCrossfadeIconZoomAnimator;
  [(SBScaleIconZoomAnimator *)&v40 _performAnimationToFraction:settings withCentralAnimationSettings:animatingCopy delay:completionCopy alreadyAnimating:fraction sharedCompletion:delay];
  if (BSFloatIsZero())
  {
    backgroundDarkeningView = [(SBIconAnimator *)self backgroundDarkeningView];
    v14 = MEMORY[0x1E69DD250];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __128__SBCrossfadeIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke;
    v38[3] = &unk_1E8088C90;
    v39 = backgroundDarkeningView;
    v15 = backgroundDarkeningView;
    [v14 animateWithDuration:0 delay:v38 options:0 animations:0.25 completion:delay];
  }

  if ((BSFloatIsZero() & 1) != 0 || BSFloatIsOne())
  {
    v34 = completionCopy;
    settings = [(SBIconAnimator *)self settings];
    v17 = settings;
    if (animatingCopy)
    {
      v18 = 6;
    }

    else
    {
      v18 = 2;
    }

    crossfadeSettings = [settings crossfadeSettings];
    bSAnimationSettings = [crossfadeSettings BSAnimationSettings];
    v21 = [bSAnimationSettings mutableCopy];

    appSnapshotCornerRadiusSettings = [v17 appSnapshotCornerRadiusSettings];
    bSAnimationSettings2 = [appSnapshotCornerRadiusSettings BSAnimationSettings];
    v24 = [bSAnimationSettings2 mutableCopy];

    effectiveMorphAnimationSettings = [v17 effectiveMorphAnimationSettings];
    bSAnimationSettings3 = [effectiveMorphAnimationSettings BSAnimationSettings];
    v27 = [bSAnimationSettings3 mutableCopy];

    if (animatingCopy)
    {
      [v21 setDelay:0.0];
      [v24 setDelay:0.0];
      [v27 setDelay:0.0];
    }

    v35 = v21;
    v28 = [MEMORY[0x1E698E7D0] factoryWithSettings:v21];
    v33 = v24;
    v29 = [MEMORY[0x1E698E7D0] factoryWithSettings:v24];
    v30 = [MEMORY[0x1E698E7D0] factoryWithSettings:v27];
    if (!animatingCopy || BSFloatIsZero())
    {
      [v28 setAllowsAdditiveAnimations:1];
      [v29 setAllowsAdditiveAnimations:1];
      [v30 setAllowsAdditiveAnimations:1];
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __128__SBCrossfadeIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_2;
    v37[3] = &unk_1E8088CB8;
    v37[4] = self;
    *&v37[5] = fraction;
    v31 = v18;
    v32 = v18;
    completionCopy = v34;
    [MEMORY[0x1E698E7D0] animateWithFactory:v28 additionalDelay:v32 options:v37 actions:v34 completion:delay];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __128__SBCrossfadeIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_3;
    v36[3] = &unk_1E8088CB8;
    v36[4] = self;
    *&v36[5] = fraction;
    [MEMORY[0x1E698E7D0] animateWithFactory:v30 additionalDelay:v31 options:v36 actions:v34 completion:delay];
  }
}

void __128__SBCrossfadeIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) targetIconView];
  [v2 setCrossfadeFraction:*(a1 + 40)];

  v3 = [*(a1 + 32) targetIconView];
  [*(a1 + 32) _appSnapshotCornerRadiusForFraction:*(a1 + 40)];
  [v3 setCrossfadeCornerRadius:?];
}

void __128__SBCrossfadeIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) targetIconView];
  [v2 setMorphFraction:*(a1 + 40)];
}

- (CGRect)_zoomedFrame
{
  [(UIView *)self->_crossfadeView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)_zoomedIconCenter
{
  targetIconView = [(SBScaleIconZoomAnimator *)self targetIconView];
  [(SBScaleIconZoomAnimator *)self zoomScale];
  v5 = v4;
  [(SBCrossfadeIconZoomAnimator *)self _zoomedFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [targetIconView iconImageCenter];
  v15 = v14;
  v17 = v16;
  referenceView = [(SBIconAnimator *)self referenceView];
  [targetIconView convertPoint:referenceView toView:{v15, v17}];
  v20 = v19;
  v22 = v21;

  [targetIconView iconImageVisibleSize];
  v24 = v5 * v23;
  v37 = v5 * v25;
  v39.origin.x = v7;
  v39.origin.y = v9;
  v39.size.width = v11;
  v39.size.height = v13;
  v26 = v24 * 0.5;
  v27 = CGRectGetMinX(v39) + v24 * 0.5;
  v40.origin.x = v7;
  v40.origin.y = v9;
  v40.size.width = v11;
  v40.size.height = v13;
  v28 = CGRectGetMaxX(v40) - v26;
  if (v27 >= v20)
  {
    v29 = v27;
  }

  else
  {
    v29 = v20;
  }

  if (v28 <= v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v41.origin.x = v7;
  v41.origin.y = v9;
  v41.size.width = v11;
  v41.size.height = v13;
  v31 = v37 * 0.5 + CGRectGetMinY(v41);
  v42.origin.x = v7;
  v42.origin.y = v9;
  v42.size.width = v11;
  v42.size.height = v13;
  v32 = CGRectGetMaxY(v42) - v37 * 0.5;
  if (v31 >= v22)
  {
    v33 = v31;
  }

  else
  {
    v33 = v22;
  }

  if (v32 <= v33)
  {
    v34 = v32;
  }

  else
  {
    v34 = v33;
  }

  v35 = v30;
  v36 = v34;
  result.y = v36;
  result.x = v35;
  return result;
}

- (double)_appSnapshotCornerRadiusForFraction:(double)fraction
{
  targetIconView = [(SBScaleIconZoomAnimator *)self targetIconView];
  [targetIconView iconImageInfo];
  v6 = (1.0 - fraction) * v5;

  return v6;
}

@end