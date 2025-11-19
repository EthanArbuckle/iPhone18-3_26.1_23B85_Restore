@interface SBScaleIconZoomAnimator
+ (BOOL)validateAnimationContainer:(id)a3 targetIcon:(id)a4;
- (CGPoint)_referenceIconImageCenter;
- (CGPoint)_targetIconScaleForZoomFraction:(double)a3;
- (CGPoint)_zoomedIconCenter;
- (CGPoint)targetIconCenter;
- (CGPoint)zoomScaleDimension;
- (CGPoint)zoomedTargetIconCenter;
- (CGRect)_zoomedFrame;
- (SBIconView)targetIconView;
- (SBScaleIconZoomAnimator)initWithAnimationContainer:(id)a3 targetIcon:(id)a4;
- (UIView)targetIconContainerView;
- (double)_homeScreenScaleForZoomFraction:(double)a3;
- (double)zoomScale;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_applyIconGridFadeFraction:(double)a3;
- (void)_applyVisualAltitudeFraction:(double)a3;
- (void)_applyZoomFraction:(double)a3;
- (void)_cleanupAnimation;
- (void)_configureTargetIconPositioningView:(id)a3;
- (void)_performAnimationToFraction:(double)a3 withCentralAnimationSettings:(id)a4 delay:(double)a5 alreadyAnimating:(BOOL)a6 sharedCompletion:(id)a7;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)a3;
- (void)_setIconAlpha:(double)a3;
- (void)_setZoomScale:(CGPoint)a3;
@end

@implementation SBScaleIconZoomAnimator

- (SBIconView)targetIconView
{
  targetIconView = self->_targetIconView;
  if (!targetIconView)
  {
    v4 = [(SBScaleIconZoomAnimator *)self referenceIconView];
    v5 = [v4 matchingIconViewByAddingConfigurationOptions:12 removingConfigurationOptions:0];
    v6 = self->_targetIconView;
    self->_targetIconView = v5;

    targetIconView = self->_targetIconView;
  }

  return targetIconView;
}

- (void)_prepareAnimation
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3_2(&dword_1BEB18000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (CGPoint)_referenceIconImageCenter
{
  v2 = [(SBScaleIconZoomAnimator *)self referenceIconView];
  [v2 iconImageCenter];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (UIView)targetIconContainerView
{
  v3 = [(SBIconAnimator *)self animationContainer];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 targetIconContainerView], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(SBScaleIconZoomAnimator *)self defaultTargetIconContainerView];
  }

  return v4;
}

- (CGPoint)_zoomedIconCenter
{
  [(SBScaleIconZoomAnimator *)self _zoomedFrame];

  UIRectGetCenter();
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_cleanupAnimation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self->_scalingView layer];
  [v3 setAnchorPoint:{0.5, 0.5}];

  v4 = [(SBIconAnimator *)self animationContainer];
  [v4 returnScalingView];

  scalingView = self->_scalingView;
  self->_scalingView = 0;

  [(UIView *)self->_targetIconPositioningView removeFromSuperview];
  targetIconPositioningView = self->_targetIconPositioningView;
  self->_targetIconPositioningView = 0;

  targetIconView = self->_targetIconView;
  self->_targetIconView = 0;

  v8 = [(SBScaleIconZoomAnimator *)self animationCompletions];
  v9 = [v8 copy];

  if ([v9 count])
  {
    v10 = [(SBScaleIconZoomAnimator *)self animationCompletions];
    [v10 removeAllObjects];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v17 + 1) + 8 * v15++) + 16))();
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  [(SBReversibleLayerPropertyAnimator *)self->_homeScreenScaleAnimator invalidate];
  [(SBScaleIconZoomAnimator *)self setHomeScreenScaleAnimator:0];
  [(SBReversibleLayerPropertyAnimator *)self->_targetIconScaleXAnimator invalidate];
  [(SBScaleIconZoomAnimator *)self setTargetIconScaleXAnimator:0];
  [(SBReversibleLayerPropertyAnimator *)self->_targetIconScaleYAnimator invalidate];
  [(SBScaleIconZoomAnimator *)self setTargetIconScaleYAnimator:0];
  if ([(SBScaleIconZoomAnimator *)self fadesHomeScreen])
  {
    [(SBScaleIconZoomAnimator *)self _setIconAlpha:1.0];
  }

  v16.receiver = self;
  v16.super_class = SBScaleIconZoomAnimator;
  [(SBIconZoomAnimator *)&v16 _cleanupAnimation];
}

+ (BOOL)validateAnimationContainer:(id)a3 targetIcon:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v5 currentIconListView];
    v10 = [v9 displayedIconViewForIcon:v7];
    if (v10)
    {
      v11 = v10;
      v8 = 1;
    }

    else
    {
      v11 = [v5 dockIconListView];
      v12 = [v11 displayedIconViewForIcon:v7];
      v8 = v12 != 0;
    }
  }

  return v8;
}

- (SBScaleIconZoomAnimator)initWithAnimationContainer:(id)a3 targetIcon:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SBScaleIconZoomAnimator;
  v8 = [(SBIconZoomAnimator *)&v15 initWithAnimationContainer:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_targetIcon, a4);
    v10 = [(SBIcon *)v9->_targetIcon nodeIdentifier];
    if (v10)
    {
      v11 = [MEMORY[0x1E695DFD8] setWithObject:v10];
      [(SBIconZoomAnimator *)v9 setCriticalIconNodeIdentifiers:v11];
    }

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    animationCompletions = v9->_animationCompletions;
    v9->_animationCompletions = v12;
  }

  return v9;
}

- (double)zoomScale
{
  result = self->_zoomScaleDimension.x;
  if (result >= self->_zoomScaleDimension.y)
  {
    return self->_zoomScaleDimension.y;
  }

  return result;
}

- (void)_setZoomScale:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SBScaleIconZoomAnimator *)self _forceSquareZoomDimension];
  if (x >= y)
  {
    v7 = y;
  }

  else
  {
    v7 = x;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = x;
  }

  if (!v6)
  {
    v7 = y;
  }

  self->_zoomScaleDimension.x = v8;
  self->_zoomScaleDimension.y = v7;
}

- (void)_configureTargetIconPositioningView:(id)a3
{
  v4 = a3;
  v5 = [(SBScaleIconZoomAnimator *)self targetIconContainerView];
  [v5 bounds];
  [v4 setFrame:?];

  [v5 addSubview:self->_targetIconPositioningView];
}

- (void)_setAnimationFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = SBScaleIconZoomAnimator;
  [(SBIconZoomAnimator *)&v5 _setAnimationFraction:?];
  [(SBScaleIconZoomAnimator *)self _applyZoomFraction:a3];
  [(SBScaleIconZoomAnimator *)self _applyVisualAltitudeFraction:a3];
  [(SBScaleIconZoomAnimator *)self _applyIconGridFadeFraction:a3];
}

- (unint64_t)_numberOfSignificantAnimations
{
  v3.receiver = self;
  v3.super_class = SBScaleIconZoomAnimator;
  return [(SBIconZoomAnimator *)&v3 _numberOfSignificantAnimations]+ 3;
}

- (void)_performAnimationToFraction:(double)a3 withCentralAnimationSettings:(id)a4 delay:(double)a5 alreadyAnimating:(BOOL)a6 sharedCompletion:(id)a7
{
  v8 = a6;
  v12 = a4;
  v13 = a7;
  v64.receiver = self;
  v64.super_class = SBScaleIconZoomAnimator;
  [(SBIconZoomAnimator *)&v64 _performAnimationToFraction:v12 withCentralAnimationSettings:v8 delay:v13 alreadyAnimating:a3 sharedCompletion:a5];
  v53 = v8;
  if (v8)
  {
    v14 = 6;
  }

  else
  {
    v14 = 2;
  }

  if (v8)
  {
    a5 = 0.0;
  }

  v55 = v12;
  v15 = [v12 BSAnimationSettings];
  v16 = [v15 mutableCopy];
  [v16 delay];
  [v16 setDelay:a5 + v17];
  if (v13)
  {
    v18 = [(SBScaleIconZoomAnimator *)self animationCompletions];
    v19 = [v13 copy];
    v20 = _Block_copy(v19);
    [v18 addObject:v20];
  }

  v21 = [(SBScaleIconZoomAnimator *)self homeScreenScaleAnimator];

  v22 = &OBJC_INSTANCE_METHODS_SBWidgetIconResizeGestureHandlerDelegate;
  v54 = v16;
  if (v21)
  {
    v23 = [(SBScaleIconZoomAnimator *)self homeScreenScaleAnimator];
    [v23 reverse];

    v24 = [(SBScaleIconZoomAnimator *)self targetIconScaleXAnimator];
    [v24 reverse];

    v25 = [(SBScaleIconZoomAnimator *)self targetIconScaleYAnimator];
    [v25 reverse];
  }

  else
  {
    v51 = v14;
    v52 = v13;
    v26 = dispatch_group_create();
    dispatch_group_enter(v26);
    [(SBScaleIconZoomAnimator *)self _homeScreenScaleForZoomFraction:a3];
    v27 = [(UIView *)self->_scalingView _outermostLayer];
    v28 = [SBReversibleLayerPropertyAnimator alloc];
    v29 = [v27 valueForKeyPath:@"transform.scale.xy"];
    [v29 doubleValue];
    v50 = v27;
    v30 = [SBReversibleLayerPropertyAnimator initWithLayer:v28 keyPath:"initWithLayer:keyPath:initialValue:targetValue:" initialValue:v27 targetValue:@"transform.scale.xy"];

    [(SBScaleIconZoomAnimator *)self setHomeScreenScaleAnimator:v30];
    dispatch_group_enter(v26);
    [(SBScaleIconZoomAnimator *)self _targetIconScaleForZoomFraction:a3];
    v31 = [(UIView *)self->_targetIconPositioningView _outermostLayer];
    v32 = [SBReversibleLayerPropertyAnimator alloc];
    v33 = [v31 valueForKeyPath:@"transform.scale.x"];
    [v33 doubleValue];
    v34 = [SBReversibleLayerPropertyAnimator initWithLayer:v32 keyPath:"initWithLayer:keyPath:initialValue:targetValue:" initialValue:v31 targetValue:@"transform.scale.x"];

    [(SBScaleIconZoomAnimator *)self setTargetIconScaleXAnimator:v34];
    dispatch_group_enter(v26);
    v35 = [SBReversibleLayerPropertyAnimator alloc];
    v36 = [v31 valueForKeyPath:@"transform.scale.y"];
    [v36 doubleValue];
    v37 = [SBReversibleLayerPropertyAnimator initWithLayer:v35 keyPath:"initWithLayer:keyPath:initialValue:targetValue:" initialValue:v31 targetValue:@"transform.scale.y"];

    [(SBScaleIconZoomAnimator *)self setTargetIconScaleYAnimator:v37];
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __124__SBScaleIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke;
    aBlock[3] = &unk_1E808C628;
    objc_copyWeak(&v62, &location);
    v38 = v30;
    v61 = v38;
    v39 = _Block_copy(aBlock);
    dispatch_group_notify(v26, MEMORY[0x1E69E96A0], v39);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __124__SBScaleIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_2;
    v58[3] = &unk_1E8088F40;
    v25 = v26;
    v59 = v25;
    v40 = _Block_copy(v58);
    [(SBReversibleLayerPropertyAnimator *)v38 animateWithSettings:v16 completion:v40];
    [(SBReversibleLayerPropertyAnimator *)v34 animateWithSettings:v16 completion:v40];
    [(SBReversibleLayerPropertyAnimator *)v37 animateWithSettings:v16 completion:v40];

    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);

    v14 = v51;
    v13 = v52;
    v22 = &OBJC_INSTANCE_METHODS_SBWidgetIconResizeGestureHandlerDelegate;
  }

  v41 = [MEMORY[0x1E698E7D0] factoryWithSettings:v15];
  [v41 setAllowsAdditiveAnimations:1];
  v57[0] = MEMORY[0x1E69E9820];
  v42 = v22[128];
  v57[1] = v42;
  v57[2] = __124__SBScaleIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_3;
  v57[3] = &unk_1E8088CB8;
  v57[4] = self;
  *&v57[5] = a3;
  v43 = v14;
  v44 = v13;
  [MEMORY[0x1E698E7D0] animateWithFactory:v41 additionalDelay:v14 options:v57 actions:v13 completion:a5];
  v45 = [(SBIconAnimator *)self settings];
  v46 = [v45 iconGridFadeSettings];
  v47 = [v46 BSAnimationSettings];
  v48 = [v47 mutableCopy];

  if (v53)
  {
    [v48 setDelay:0.0];
  }

  v49 = [MEMORY[0x1E698E7D0] factoryWithSettings:v48];
  if (!v53 || BSFloatIsZero())
  {
    [v49 setAllowsAdditiveAnimations:1];
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = v42;
  v56[2] = __124__SBScaleIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_4;
  v56[3] = &unk_1E8088CB8;
  v56[4] = self;
  *&v56[5] = a3;
  [MEMORY[0x1E698E7D0] animateWithFactory:v49 additionalDelay:v43 options:v56 actions:v44 completion:a5];
}

void __124__SBScaleIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained homeScreenScaleAnimator];
  LODWORD(v1) = [v3 isEqual:*(v1 + 32)];

  if (v1)
  {
    [WeakRetained setHomeScreenScaleAnimator:0];
    [WeakRetained setTargetIconScaleXAnimator:0];
    [WeakRetained setTargetIconScaleYAnimator:0];
    v4 = [WeakRetained animationCompletions];
    v5 = [v4 copy];

    if ([v5 count])
    {
      v6 = [WeakRetained animationCompletions];
      [v6 removeAllObjects];

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }
  }
}

- (CGRect)_zoomedFrame
{
  v2 = [(SBIconAnimator *)self referenceView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_setIconAlpha:(double)a3
{
  v4 = [(SBIconAnimator *)self animationContainer];
  if (objc_opt_respondsToSelector())
  {
    [v4 setContentAlpha:a3];
  }
}

- (void)_applyZoomFraction:(double)a3
{
  [(SBScaleIconZoomAnimator *)self _homeScreenScaleForZoomFraction:?];
  v6 = v5;
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    scalingView = self->_scalingView;
    CGAffineTransformMakeScale(&v11, v6, v6);
    [(UIView *)scalingView setTransform:&v11];
  }

  [(SBScaleIconZoomAnimator *)self _targetIconScaleForZoomFraction:a3];
  targetIconPositioningView = self->_targetIconPositioningView;
  CGAffineTransformMakeScale(&v11, v9, v10);
  [(UIView *)targetIconPositioningView setTransform:&v11];
}

- (double)_homeScreenScaleForZoomFraction:(double)a3
{
  [(SBScaleIconZoomAnimator *)self maxHomeScreenZoomScale];
  v5 = v4;
  v6 = BSFloatGreaterThanFloat();
  result = 1.0 - (1.0 - v5) * a3;
  if (!v6)
  {
    return 1.0;
  }

  return result;
}

- (CGPoint)_targetIconScaleForZoomFraction:(double)a3
{
  __asm { FMOV            V2.2D, #1.0 }

  v8 = vsubq_f64(_Q2, vmulq_n_f64(vsubq_f64(_Q2, self->_zoomScaleDimension), a3));
  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (void)_applyVisualAltitudeFraction:(double)a3
{
  v5 = [(SBScaleIconZoomAnimator *)self targetIconView];
  v6 = [v5 superview];
  [(SBScaleIconZoomAnimator *)self _zoomedVisualAltitude];
  v8 = v7;
  v9 = [v5 window];
  [v6 _convertVisualAltitude:v9 fromView:v8];
  v11 = v10;

  [v5 _setVisualAltitude:self->_naturalVisualAltitude + (v11 - self->_naturalVisualAltitude) * a3];
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  if (!CGAffineTransformIsIdentity(&v13))
  {
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    *&v13.a = *MEMORY[0x1E695EFD0];
    *&v13.c = v12;
    *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v5 setTransform:&v13];
  }
}

- (void)_applyIconGridFadeFraction:(double)a3
{
  if ((BSFloatIsOne() & 1) != 0 || BSFloatIsZero())
  {
    v5 = [(SBIconAnimator *)self settings];
    v6 = [v5 fadesIconGrid];

    if (v6)
    {

      [(SBScaleIconZoomAnimator *)self _setIconAlpha:1.0 - a3];
    }
  }
}

- (CGPoint)zoomScaleDimension
{
  x = self->_zoomScaleDimension.x;
  y = self->_zoomScaleDimension.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)zoomedTargetIconCenter
{
  x = self->_zoomedTargetIconCenter.x;
  y = self->_zoomedTargetIconCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)targetIconCenter
{
  x = self->_targetIconCenter.x;
  y = self->_targetIconCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end