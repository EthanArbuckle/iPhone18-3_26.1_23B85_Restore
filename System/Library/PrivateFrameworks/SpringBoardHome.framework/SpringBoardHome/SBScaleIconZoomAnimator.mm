@interface SBScaleIconZoomAnimator
+ (BOOL)validateAnimationContainer:(id)container targetIcon:(id)icon;
- (CGPoint)_referenceIconImageCenter;
- (CGPoint)_targetIconScaleForZoomFraction:(double)fraction;
- (CGPoint)_zoomedIconCenter;
- (CGPoint)targetIconCenter;
- (CGPoint)zoomScaleDimension;
- (CGPoint)zoomedTargetIconCenter;
- (CGRect)_zoomedFrame;
- (SBIconView)targetIconView;
- (SBScaleIconZoomAnimator)initWithAnimationContainer:(id)container targetIcon:(id)icon;
- (UIView)targetIconContainerView;
- (double)_homeScreenScaleForZoomFraction:(double)fraction;
- (double)zoomScale;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_applyIconGridFadeFraction:(double)fraction;
- (void)_applyVisualAltitudeFraction:(double)fraction;
- (void)_applyZoomFraction:(double)fraction;
- (void)_cleanupAnimation;
- (void)_configureTargetIconPositioningView:(id)view;
- (void)_performAnimationToFraction:(double)fraction withCentralAnimationSettings:(id)settings delay:(double)delay alreadyAnimating:(BOOL)animating sharedCompletion:(id)completion;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)fraction;
- (void)_setIconAlpha:(double)alpha;
- (void)_setZoomScale:(CGPoint)scale;
@end

@implementation SBScaleIconZoomAnimator

- (SBIconView)targetIconView
{
  targetIconView = self->_targetIconView;
  if (!targetIconView)
  {
    referenceIconView = [(SBScaleIconZoomAnimator *)self referenceIconView];
    v5 = [referenceIconView matchingIconViewByAddingConfigurationOptions:12 removingConfigurationOptions:0];
    v6 = self->_targetIconView;
    self->_targetIconView = v5;

    targetIconView = self->_targetIconView;
  }

  return targetIconView;
}

- (void)_prepareAnimation
{
  v1 = NSStringFromSelector(self);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_3_2(&dword_1BEB18000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (CGPoint)_referenceIconImageCenter
{
  referenceIconView = [(SBScaleIconZoomAnimator *)self referenceIconView];
  [referenceIconView iconImageCenter];
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
  animationContainer = [(SBIconAnimator *)self animationContainer];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([animationContainer targetIconContainerView], (defaultTargetIconContainerView = objc_claimAutoreleasedReturnValue()) == 0))
  {
    defaultTargetIconContainerView = [(SBScaleIconZoomAnimator *)self defaultTargetIconContainerView];
  }

  return defaultTargetIconContainerView;
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
  layer = [(UIView *)self->_scalingView layer];
  [layer setAnchorPoint:{0.5, 0.5}];

  animationContainer = [(SBIconAnimator *)self animationContainer];
  [animationContainer returnScalingView];

  scalingView = self->_scalingView;
  self->_scalingView = 0;

  [(UIView *)self->_targetIconPositioningView removeFromSuperview];
  targetIconPositioningView = self->_targetIconPositioningView;
  self->_targetIconPositioningView = 0;

  targetIconView = self->_targetIconView;
  self->_targetIconView = 0;

  animationCompletions = [(SBScaleIconZoomAnimator *)self animationCompletions];
  v9 = [animationCompletions copy];

  if ([v9 count])
  {
    animationCompletions2 = [(SBScaleIconZoomAnimator *)self animationCompletions];
    [animationCompletions2 removeAllObjects];

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

+ (BOOL)validateAnimationContainer:(id)container targetIcon:(id)icon
{
  containerCopy = container;
  iconCopy = icon;
  v7 = iconCopy;
  v8 = 0;
  if (containerCopy && iconCopy)
  {
    currentIconListView = [containerCopy currentIconListView];
    v10 = [currentIconListView displayedIconViewForIcon:v7];
    if (v10)
    {
      dockIconListView = v10;
      v8 = 1;
    }

    else
    {
      dockIconListView = [containerCopy dockIconListView];
      v12 = [dockIconListView displayedIconViewForIcon:v7];
      v8 = v12 != 0;
    }
  }

  return v8;
}

- (SBScaleIconZoomAnimator)initWithAnimationContainer:(id)container targetIcon:(id)icon
{
  iconCopy = icon;
  v15.receiver = self;
  v15.super_class = SBScaleIconZoomAnimator;
  v8 = [(SBIconZoomAnimator *)&v15 initWithAnimationContainer:container];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_targetIcon, icon);
    nodeIdentifier = [(SBIcon *)v9->_targetIcon nodeIdentifier];
    if (nodeIdentifier)
    {
      v11 = [MEMORY[0x1E695DFD8] setWithObject:nodeIdentifier];
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

- (void)_setZoomScale:(CGPoint)scale
{
  y = scale.y;
  x = scale.x;
  _forceSquareZoomDimension = [(SBScaleIconZoomAnimator *)self _forceSquareZoomDimension];
  if (x >= y)
  {
    v7 = y;
  }

  else
  {
    v7 = x;
  }

  if (_forceSquareZoomDimension)
  {
    v8 = v7;
  }

  else
  {
    v8 = x;
  }

  if (!_forceSquareZoomDimension)
  {
    v7 = y;
  }

  self->_zoomScaleDimension.x = v8;
  self->_zoomScaleDimension.y = v7;
}

- (void)_configureTargetIconPositioningView:(id)view
{
  viewCopy = view;
  targetIconContainerView = [(SBScaleIconZoomAnimator *)self targetIconContainerView];
  [targetIconContainerView bounds];
  [viewCopy setFrame:?];

  [targetIconContainerView addSubview:self->_targetIconPositioningView];
}

- (void)_setAnimationFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = SBScaleIconZoomAnimator;
  [(SBIconZoomAnimator *)&v5 _setAnimationFraction:?];
  [(SBScaleIconZoomAnimator *)self _applyZoomFraction:fraction];
  [(SBScaleIconZoomAnimator *)self _applyVisualAltitudeFraction:fraction];
  [(SBScaleIconZoomAnimator *)self _applyIconGridFadeFraction:fraction];
}

- (unint64_t)_numberOfSignificantAnimations
{
  v3.receiver = self;
  v3.super_class = SBScaleIconZoomAnimator;
  return [(SBIconZoomAnimator *)&v3 _numberOfSignificantAnimations]+ 3;
}

- (void)_performAnimationToFraction:(double)fraction withCentralAnimationSettings:(id)settings delay:(double)delay alreadyAnimating:(BOOL)animating sharedCompletion:(id)completion
{
  animatingCopy = animating;
  settingsCopy = settings;
  completionCopy = completion;
  v64.receiver = self;
  v64.super_class = SBScaleIconZoomAnimator;
  [(SBIconZoomAnimator *)&v64 _performAnimationToFraction:settingsCopy withCentralAnimationSettings:animatingCopy delay:completionCopy alreadyAnimating:fraction sharedCompletion:delay];
  v53 = animatingCopy;
  if (animatingCopy)
  {
    v14 = 6;
  }

  else
  {
    v14 = 2;
  }

  if (animatingCopy)
  {
    delay = 0.0;
  }

  v55 = settingsCopy;
  bSAnimationSettings = [settingsCopy BSAnimationSettings];
  v16 = [bSAnimationSettings mutableCopy];
  [v16 delay];
  [v16 setDelay:delay + v17];
  if (completionCopy)
  {
    animationCompletions = [(SBScaleIconZoomAnimator *)self animationCompletions];
    v19 = [completionCopy copy];
    v20 = _Block_copy(v19);
    [animationCompletions addObject:v20];
  }

  homeScreenScaleAnimator = [(SBScaleIconZoomAnimator *)self homeScreenScaleAnimator];

  v22 = &OBJC_INSTANCE_METHODS_SBWidgetIconResizeGestureHandlerDelegate;
  v54 = v16;
  if (homeScreenScaleAnimator)
  {
    homeScreenScaleAnimator2 = [(SBScaleIconZoomAnimator *)self homeScreenScaleAnimator];
    [homeScreenScaleAnimator2 reverse];

    targetIconScaleXAnimator = [(SBScaleIconZoomAnimator *)self targetIconScaleXAnimator];
    [targetIconScaleXAnimator reverse];

    targetIconScaleYAnimator = [(SBScaleIconZoomAnimator *)self targetIconScaleYAnimator];
    [targetIconScaleYAnimator reverse];
  }

  else
  {
    v51 = v14;
    v52 = completionCopy;
    v26 = dispatch_group_create();
    dispatch_group_enter(v26);
    [(SBScaleIconZoomAnimator *)self _homeScreenScaleForZoomFraction:fraction];
    _outermostLayer = [(UIView *)self->_scalingView _outermostLayer];
    v28 = [SBReversibleLayerPropertyAnimator alloc];
    v29 = [_outermostLayer valueForKeyPath:@"transform.scale.xy"];
    [v29 doubleValue];
    v50 = _outermostLayer;
    v30 = [SBReversibleLayerPropertyAnimator initWithLayer:v28 keyPath:"initWithLayer:keyPath:initialValue:targetValue:" initialValue:_outermostLayer targetValue:@"transform.scale.xy"];

    [(SBScaleIconZoomAnimator *)self setHomeScreenScaleAnimator:v30];
    dispatch_group_enter(v26);
    [(SBScaleIconZoomAnimator *)self _targetIconScaleForZoomFraction:fraction];
    _outermostLayer2 = [(UIView *)self->_targetIconPositioningView _outermostLayer];
    v32 = [SBReversibleLayerPropertyAnimator alloc];
    v33 = [_outermostLayer2 valueForKeyPath:@"transform.scale.x"];
    [v33 doubleValue];
    v34 = [SBReversibleLayerPropertyAnimator initWithLayer:v32 keyPath:"initWithLayer:keyPath:initialValue:targetValue:" initialValue:_outermostLayer2 targetValue:@"transform.scale.x"];

    [(SBScaleIconZoomAnimator *)self setTargetIconScaleXAnimator:v34];
    dispatch_group_enter(v26);
    v35 = [SBReversibleLayerPropertyAnimator alloc];
    v36 = [_outermostLayer2 valueForKeyPath:@"transform.scale.y"];
    [v36 doubleValue];
    v37 = [SBReversibleLayerPropertyAnimator initWithLayer:v35 keyPath:"initWithLayer:keyPath:initialValue:targetValue:" initialValue:_outermostLayer2 targetValue:@"transform.scale.y"];

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
    targetIconScaleYAnimator = v26;
    v59 = targetIconScaleYAnimator;
    v40 = _Block_copy(v58);
    [(SBReversibleLayerPropertyAnimator *)v38 animateWithSettings:v16 completion:v40];
    [(SBReversibleLayerPropertyAnimator *)v34 animateWithSettings:v16 completion:v40];
    [(SBReversibleLayerPropertyAnimator *)v37 animateWithSettings:v16 completion:v40];

    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);

    v14 = v51;
    completionCopy = v52;
    v22 = &OBJC_INSTANCE_METHODS_SBWidgetIconResizeGestureHandlerDelegate;
  }

  v41 = [MEMORY[0x1E698E7D0] factoryWithSettings:bSAnimationSettings];
  [v41 setAllowsAdditiveAnimations:1];
  v57[0] = MEMORY[0x1E69E9820];
  v42 = v22[128];
  v57[1] = v42;
  v57[2] = __124__SBScaleIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_3;
  v57[3] = &unk_1E8088CB8;
  v57[4] = self;
  *&v57[5] = fraction;
  v43 = v14;
  v44 = completionCopy;
  [MEMORY[0x1E698E7D0] animateWithFactory:v41 additionalDelay:v14 options:v57 actions:completionCopy completion:delay];
  settings = [(SBIconAnimator *)self settings];
  iconGridFadeSettings = [settings iconGridFadeSettings];
  bSAnimationSettings2 = [iconGridFadeSettings BSAnimationSettings];
  v48 = [bSAnimationSettings2 mutableCopy];

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
  *&v56[5] = fraction;
  [MEMORY[0x1E698E7D0] animateWithFactory:v49 additionalDelay:v43 options:v56 actions:v44 completion:delay];
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
  referenceView = [(SBIconAnimator *)self referenceView];
  [referenceView bounds];
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

- (void)_setIconAlpha:(double)alpha
{
  animationContainer = [(SBIconAnimator *)self animationContainer];
  if (objc_opt_respondsToSelector())
  {
    [animationContainer setContentAlpha:alpha];
  }
}

- (void)_applyZoomFraction:(double)fraction
{
  [(SBScaleIconZoomAnimator *)self _homeScreenScaleForZoomFraction:?];
  v6 = v5;
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    scalingView = self->_scalingView;
    CGAffineTransformMakeScale(&v11, v6, v6);
    [(UIView *)scalingView setTransform:&v11];
  }

  [(SBScaleIconZoomAnimator *)self _targetIconScaleForZoomFraction:fraction];
  targetIconPositioningView = self->_targetIconPositioningView;
  CGAffineTransformMakeScale(&v11, v9, v10);
  [(UIView *)targetIconPositioningView setTransform:&v11];
}

- (double)_homeScreenScaleForZoomFraction:(double)fraction
{
  [(SBScaleIconZoomAnimator *)self maxHomeScreenZoomScale];
  v5 = v4;
  v6 = BSFloatGreaterThanFloat();
  result = 1.0 - (1.0 - v5) * fraction;
  if (!v6)
  {
    return 1.0;
  }

  return result;
}

- (CGPoint)_targetIconScaleForZoomFraction:(double)fraction
{
  __asm { FMOV            V2.2D, #1.0 }

  v8 = vsubq_f64(_Q2, vmulq_n_f64(vsubq_f64(_Q2, self->_zoomScaleDimension), fraction));
  v9 = v8.f64[1];
  result.x = v8.f64[0];
  result.y = v9;
  return result;
}

- (void)_applyVisualAltitudeFraction:(double)fraction
{
  targetIconView = [(SBScaleIconZoomAnimator *)self targetIconView];
  superview = [targetIconView superview];
  [(SBScaleIconZoomAnimator *)self _zoomedVisualAltitude];
  v8 = v7;
  window = [targetIconView window];
  [superview _convertVisualAltitude:window fromView:v8];
  v11 = v10;

  [targetIconView _setVisualAltitude:self->_naturalVisualAltitude + (v11 - self->_naturalVisualAltitude) * fraction];
  if (targetIconView)
  {
    [targetIconView transform];
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
    [targetIconView setTransform:&v13];
  }
}

- (void)_applyIconGridFadeFraction:(double)fraction
{
  if ((BSFloatIsOne() & 1) != 0 || BSFloatIsZero())
  {
    settings = [(SBIconAnimator *)self settings];
    fadesIconGrid = [settings fadesIconGrid];

    if (fadesIconGrid)
    {

      [(SBScaleIconZoomAnimator *)self _setIconAlpha:1.0 - fraction];
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