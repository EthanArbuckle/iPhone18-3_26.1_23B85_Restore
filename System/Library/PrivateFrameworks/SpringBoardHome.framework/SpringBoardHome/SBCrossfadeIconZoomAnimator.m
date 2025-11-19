@interface SBCrossfadeIconZoomAnimator
- (CGPoint)_zoomedIconCenter;
- (CGRect)_zoomedFrame;
- (SBCrossfadeIconZoomAnimator)initWithFolderController:(id)a3 crossfadeView:(id)a4 icon:(id)a5;
- (double)_appSnapshotCornerRadiusForFraction:(double)a3;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_cleanupAnimation;
- (void)_cleanupZoom;
- (void)_delayedForRotation;
- (void)_performAnimationToFraction:(double)a3 withCentralAnimationSettings:(id)a4 delay:(double)a5 alreadyAnimating:(BOOL)a6 sharedCompletion:(id)a7;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)a3;
@end

@implementation SBCrossfadeIconZoomAnimator

- (SBCrossfadeIconZoomAnimator)initWithFolderController:(id)a3 crossfadeView:(id)a4 icon:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = SBCrossfadeIconZoomAnimator;
  v10 = [(SBScaleIconZoomAnimator *)&v13 initWithAnimationContainer:a3 targetIcon:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_crossfadeView, a4);
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
  v4 = [(SBIconAnimator *)self animationContainer];
  v3 = [v4 animationWindow];
  [v3 addSubview:self->_crossfadeView];
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
  v13 = [(SBScaleIconZoomAnimator *)self targetIconView];
  [v13 iconImageVisibleSize];
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

  v22 = [(SBScaleIconZoomAnimator *)self targetIconView];
  if ([(SBCrossfadeIconZoomAnimator *)self performsTrueCrossfade])
  {
    v23 = 3;
  }

  else
  {
    v23 = 1;
  }

  [v22 prepareToCrossfadeImageWithView:self->_crossfadeView anchorPoint:v23 options:{v21, v20}];
}

- (void)_setAnimationFraction:(double)a3
{
  v6.receiver = self;
  v6.super_class = SBCrossfadeIconZoomAnimator;
  [(SBScaleIconZoomAnimator *)&v6 _setAnimationFraction:?];
  v5 = [(SBScaleIconZoomAnimator *)self targetIconView];
  [v5 setCrossfadeFraction:a3];
  [(SBCrossfadeIconZoomAnimator *)self _appSnapshotCornerRadiusForFraction:a3];
  [v5 setCrossfadeCornerRadius:?];
  [v5 setMorphFraction:a3];
}

- (void)_cleanupZoom
{
  v3 = [(SBScaleIconZoomAnimator *)self targetIcon];
  v4 = [(SBIconZoomAnimator *)self iconViewForIcon:v3];

  [v4 setIconImageAlpha:0.0];
  v5.receiver = self;
  v5.super_class = SBCrossfadeIconZoomAnimator;
  [(SBIconZoomAnimator *)&v5 _cleanupZoom];
}

- (void)_cleanupAnimation
{
  v3 = [(SBScaleIconZoomAnimator *)self targetIcon];
  v4 = [(SBIconZoomAnimator *)self iconViewForIcon:v3];

  [v4 setIconImageAlpha:1.0];
  [v4 cleanupAfterCrossfade];
  v5 = [(SBScaleIconZoomAnimator *)self targetIcon];
  v6 = [(SBIconZoomAnimator *)self iconViewForIcon:v5];
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

- (void)_performAnimationToFraction:(double)a3 withCentralAnimationSettings:(id)a4 delay:(double)a5 alreadyAnimating:(BOOL)a6 sharedCompletion:(id)a7
{
  v7 = a6;
  v12 = a7;
  v40.receiver = self;
  v40.super_class = SBCrossfadeIconZoomAnimator;
  [(SBScaleIconZoomAnimator *)&v40 _performAnimationToFraction:a4 withCentralAnimationSettings:v7 delay:v12 alreadyAnimating:a3 sharedCompletion:a5];
  if (BSFloatIsZero())
  {
    v13 = [(SBIconAnimator *)self backgroundDarkeningView];
    v14 = MEMORY[0x1E69DD250];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __128__SBCrossfadeIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke;
    v38[3] = &unk_1E8088C90;
    v39 = v13;
    v15 = v13;
    [v14 animateWithDuration:0 delay:v38 options:0 animations:0.25 completion:a5];
  }

  if ((BSFloatIsZero() & 1) != 0 || BSFloatIsOne())
  {
    v34 = v12;
    v16 = [(SBIconAnimator *)self settings];
    v17 = v16;
    if (v7)
    {
      v18 = 6;
    }

    else
    {
      v18 = 2;
    }

    v19 = [v16 crossfadeSettings];
    v20 = [v19 BSAnimationSettings];
    v21 = [v20 mutableCopy];

    v22 = [v17 appSnapshotCornerRadiusSettings];
    v23 = [v22 BSAnimationSettings];
    v24 = [v23 mutableCopy];

    v25 = [v17 effectiveMorphAnimationSettings];
    v26 = [v25 BSAnimationSettings];
    v27 = [v26 mutableCopy];

    if (v7)
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
    if (!v7 || BSFloatIsZero())
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
    *&v37[5] = a3;
    v31 = v18;
    v32 = v18;
    v12 = v34;
    [MEMORY[0x1E698E7D0] animateWithFactory:v28 additionalDelay:v32 options:v37 actions:v34 completion:a5];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __128__SBCrossfadeIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_3;
    v36[3] = &unk_1E8088CB8;
    v36[4] = self;
    *&v36[5] = a3;
    [MEMORY[0x1E698E7D0] animateWithFactory:v30 additionalDelay:v31 options:v36 actions:v34 completion:a5];
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
  v3 = [(SBScaleIconZoomAnimator *)self targetIconView];
  [(SBScaleIconZoomAnimator *)self zoomScale];
  v5 = v4;
  [(SBCrossfadeIconZoomAnimator *)self _zoomedFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v3 iconImageCenter];
  v15 = v14;
  v17 = v16;
  v18 = [(SBIconAnimator *)self referenceView];
  [v3 convertPoint:v18 toView:{v15, v17}];
  v20 = v19;
  v22 = v21;

  [v3 iconImageVisibleSize];
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

- (double)_appSnapshotCornerRadiusForFraction:(double)a3
{
  v4 = [(SBScaleIconZoomAnimator *)self targetIconView];
  [v4 iconImageInfo];
  v6 = (1.0 - a3) * v5;

  return v6;
}

@end