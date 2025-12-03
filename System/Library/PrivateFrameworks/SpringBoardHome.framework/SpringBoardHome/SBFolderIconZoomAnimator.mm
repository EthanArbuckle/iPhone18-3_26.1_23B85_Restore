@interface SBFolderIconZoomAnimator
- (CGRect)_zoomedFrame;
- (SBFFluidBehaviorSettings)dockAnimationSettings;
- (SBFolderIconZoomAnimator)initWithAnimationContainer:(id)container innerFolderController:(id)controller folderIcon:(id)icon;
- (SBIconView)targetIconView;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_cleanupAnimation;
- (void)_performAnimationToFraction:(double)fraction withCentralAnimationSettings:(id)settings delay:(double)delay alreadyAnimating:(BOOL)animating sharedCompletion:(id)completion;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)fraction;
- (void)_setupCounterDockMatchMoveAnimationWithOffset:(double)offset layer:(id)layer additive:(BOOL)additive;
- (void)_setupMatchMoveAnimation;
- (void)_setupMatchMoveWithDock;
- (void)_setupMatchMoveWithDockWithTargetIconCenter:(CGPoint)center targetIconAnchor:(CGPoint)anchor;
- (void)_updateDockMatchMoveWithFraction:(double)fraction;
- (void)_visuallyCompleteAnimationImmediately;
- (void)dealloc;
- (void)searchGesture:(id)gesture startedShowing:(BOOL)showing;
@end

@implementation SBFolderIconZoomAnimator

- (void)_prepareAnimation
{
  contentView = [(SBFolderController *)self->_innerFolderController contentView];
  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v5 = contentView;
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(&self->_innerFolderView, v5);

  v13.receiver = self;
  v13.super_class = SBFolderIconZoomAnimator;
  [(SBScaleIconZoomAnimator *)&v13 _prepareAnimation];
  targetIconView = [(SBFolderIconZoomAnimator *)self targetIconView];
  [targetIconView prepareToCrossfadeWithFloatyFolderView:self->_innerFolderView allowFolderInteraction:{-[SBFolderController isOpen](self->_innerFolderController, "isOpen")}];
  [targetIconView setIconGridImageAlpha:0.0];
  v7 = [_SBInnerFolderIconZoomAnimator alloc];
  innerFolderController = self->_innerFolderController;
  [(SBScaleIconZoomAnimator *)self zoomScaleDimension];
  v9 = [(_SBInnerFolderIconZoomAnimator *)v7 initWithFolderController:innerFolderController iconView:targetIconView iconZoomScaleDimension:?];
  innerZoomAnimator = self->_innerZoomAnimator;
  self->_innerZoomAnimator = v9;

  v11 = self->_innerZoomAnimator;
  settings = [(SBIconAnimator *)self settings];
  [(SBIconAnimator *)v11 setSettings:settings];

  [(SBIconAnimator *)self->_innerZoomAnimator prepare];
}

- (SBIconView)targetIconView
{
  v7.receiver = self;
  v7.super_class = SBFolderIconZoomAnimator;
  targetIconView = [(SBScaleIconZoomAnimator *)&v7 targetIconView];
  referenceIconView = [(SBScaleIconZoomAnimator *)self referenceIconView];
  visibleMiniIconListIndex = [referenceIconView visibleMiniIconListIndex];
  if ([targetIconView visibleMiniIconListIndex] != visibleMiniIconListIndex)
  {
    [targetIconView scrollToTopOfPage:visibleMiniIconListIndex animated:0];
  }

  [referenceIconView iconContentScale];
  [targetIconView setIconContentScale:?];

  return targetIconView;
}

- (CGRect)_zoomedFrame
{
  [(SBFolderView *)self->_innerFolderView scalingViewFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_cleanupAnimation
{
  targetIconView = [(SBFolderIconZoomAnimator *)self targetIconView];
  [targetIconView cleanupAfterFloatyFolderCrossfade];
  [targetIconView setIconGridImageAlpha:1.0];
  [(SBIconAnimator *)self->_innerZoomAnimator cleanup];
  innerZoomAnimator = self->_innerZoomAnimator;
  self->_innerZoomAnimator = 0;

  searchGesture = [(SBFolderIconZoomAnimator *)self searchGesture];
  [searchGesture removeObserver:self];

  [(SBFolderIconZoomAnimator *)self setSearchGesture:0];
  defaultTargetIconContainerView = [(SBFolderIconZoomAnimator *)self defaultTargetIconContainerView];
  _outermostLayer = [defaultTargetIconContainerView _outermostLayer];
  [_outermostLayer removeAnimationForKey:@"SBFolderSourceViewTrackingMatchMoveAnimation"];

  v8.receiver = self;
  v8.super_class = SBFolderIconZoomAnimator;
  [(SBScaleIconZoomAnimator *)&v8 _cleanupAnimation];
}

- (SBFolderIconZoomAnimator)initWithAnimationContainer:(id)container innerFolderController:(id)controller folderIcon:(id)icon
{
  containerCopy = container;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = SBFolderIconZoomAnimator;
  v10 = [(SBScaleIconZoomAnimator *)&v17 initWithAnimationContainer:containerCopy targetIcon:icon];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_innerFolderController, controller);
    if (objc_opt_respondsToSelector())
    {
      searchGesture = [containerCopy searchGesture];
      searchGesture = v11->_searchGesture;
      v11->_searchGesture = searchGesture;

      [(SBSearchGesture *)v11->_searchGesture addObserver:v11];
    }

    if (objc_opt_respondsToSelector())
    {
      searchPresenter = [containerCopy searchPresenter];
      searchPresenter = v11->_searchPresenter;
      v11->_searchPresenter = searchPresenter;

      [(SBHSearchPresenting *)v11->_searchPresenter addSearchPresenterObserver:v11];
    }
  }

  return v11;
}

- (void)dealloc
{
  [(SBSearchGesture *)self->_searchGesture removeObserver:self];
  [(SBHSearchPresenting *)self->_searchPresenter removeSearchPresenterObserver:self];
  v3.receiver = self;
  v3.super_class = SBFolderIconZoomAnimator;
  [(SBIconZoomAnimator *)&v3 dealloc];
}

- (void)_updateDockMatchMoveWithFraction:(double)fraction
{
  if (BSFloatIsZero())
  {

    [(SBFolderIconZoomAnimator *)self _setupMatchMoveWithDock];
  }

  else
  {
    targetIconPositioningView = [(SBScaleIconZoomAnimator *)self targetIconPositioningView];
    _outermostLayer = [targetIconPositioningView _outermostLayer];

    v5 = [_outermostLayer animationForKey:@"SBDockIconZoomDownMatchMoveKey"];

    v6 = _outermostLayer;
    if (v5)
    {
      [_outermostLayer removeAnimationForKey:@"SBDockIconZoomDownMatchMoveKey"];
      referenceIconView = [(SBScaleIconZoomAnimator *)self referenceIconView];
      _outermostLayer2 = [referenceIconView _outermostLayer];

      [(SBScaleIconZoomAnimator *)self _referenceIconImageCenter];
      v10 = v9;
      v12 = v11;
      targetIconContainerView = [(SBScaleIconZoomAnimator *)self targetIconContainerView];
      _outermostLayer3 = [targetIconContainerView _outermostLayer];
      [_outermostLayer2 convertPoint:_outermostLayer3 toLayer:{v10, v12}];
      v16 = v15;

      [(SBScaleIconZoomAnimator *)self targetIconCenter];
      v18 = v17 - v16;
      if ((BSFloatIsZero() & 1) == 0)
      {
        targetIconPositioningView2 = [(SBScaleIconZoomAnimator *)self targetIconPositioningView];
        _outermostLayer4 = [targetIconPositioningView2 _outermostLayer];
        [(SBFolderIconZoomAnimator *)self _setupCounterDockMatchMoveAnimationWithOffset:_outermostLayer4 layer:0 additive:v18];
      }

      v6 = _outermostLayer;
    }
  }
}

- (void)_setupMatchMoveWithDock
{
  targetIconContainerView = [(SBScaleIconZoomAnimator *)self targetIconContainerView];
  [(SBScaleIconZoomAnimator *)self targetIconCenter];
  v4 = v3;
  v6 = v5;
  [(SBScaleIconZoomAnimator *)self zoomedTargetIconCenter];
  v8 = v7;
  v10 = v9;
  [(SBScaleIconZoomAnimator *)self zoomScaleDimension];
  v12 = _SBScaleIconZoomAnimatorCameraPositionToScaleModelPointToTargetPoint(v4, v6, v8, v10, v11);
  v14 = v13;
  [targetIconContainerView bounds];
  v16 = v12 / v15;
  [targetIconContainerView bounds];
  [(SBFolderIconZoomAnimator *)self _setupMatchMoveWithDockWithTargetIconCenter:v4 targetIconAnchor:v6, v16, v14 / v17];
}

- (void)_setupMatchMoveWithDockWithTargetIconCenter:(CGPoint)center targetIconAnchor:(CGPoint)anchor
{
  v45[1] = *MEMORY[0x1E69E9840];
  v5 = [(SBScaleIconZoomAnimator *)self referenceIconView:center.x];
  targetIconPositioningView = [(SBScaleIconZoomAnimator *)self targetIconPositioningView];
  location = [v5 location];
  v8 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupDock", location);

  if (v8)
  {
    v9 = targetIconPositioningView == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    _outermostLayer = [v5 _outermostLayer];
    _outermostLayer2 = [targetIconPositioningView _outermostLayer];
    animation = [MEMORY[0x1E69793B8] animation];
    [animation setSourceLayer:_outermostLayer];
    [animation setDuration:INFINITY];
    [animation setFillMode:*MEMORY[0x1E69797E0]];
    [animation setRemovedOnCompletion:0];
    [animation setAppliesY:1];
    [animation setAppliesX:1];
    targetIconContainerView = [(SBScaleIconZoomAnimator *)self targetIconContainerView];
    [(SBScaleIconZoomAnimator *)self _referenceIconImageCenter];
    v15 = v14;
    v17 = v16;
    _outermostLayer3 = [targetIconContainerView _outermostLayer];
    [_outermostLayer convertPoint:_outermostLayer3 toLayer:{v15, v17}];
    v20 = v19;
    v22 = v21;

    [v5 bounds];
    v24 = v20 + v23 * -0.5;
    [targetIconContainerView bounds];
    v26 = v24 + v25 * -0.5;
    [v5 bounds];
    v28 = v22 + v27 * -0.5;
    [targetIconContainerView bounds];
    v30 = v28 + v29 * -0.5;
    [_outermostLayer2 anchorPoint];
    v32 = v31;
    v34 = v33;
    [targetIconContainerView bounds];
    v36 = -(v26 - v35 * (v32 + -0.5));
    [targetIconContainerView bounds];
    v38 = -(v30 - v37 * (v34 + -0.5));
    [(SBScaleIconZoomAnimator *)self targetIconCenter];
    v40 = v39 - v22;
    v42 = [MEMORY[0x1E696B098] valueWithCGPoint:{v36 - (v41 - v20), v38 - v40}];
    v45[0] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    [animation setSourcePoints:v43];

    v44 = [_outermostLayer2 animationForKey:@"SBDockIconZoomDownMatchMoveKey"];

    if (v44)
    {
      [_outermostLayer2 removeAnimationForKey:@"SBDockIconZoomDownMatchMoveKey"];
    }

    [_outermostLayer2 addAnimation:animation forKey:@"SBDockIconZoomDownMatchMoveKey"];
    if ((BSFloatIsZero() & 1) == 0)
    {
      [(SBFolderIconZoomAnimator *)self _setupCounterDockMatchMoveAnimationWithOffset:_outermostLayer2 layer:1 additive:v40];
    }
  }
}

- (SBFFluidBehaviorSettings)dockAnimationSettings
{
  dockAnimationSettings = self->_dockAnimationSettings;
  if (dockAnimationSettings)
  {
    v3 = dockAnimationSettings;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D3FC8]);
  }

  return v3;
}

- (void)_setupCounterDockMatchMoveAnimationWithOffset:(double)offset layer:(id)layer additive:(BOOL)additive
{
  additiveCopy = additive;
  layerCopy = layer;
  dockAnimationSettings = [(SBFolderIconZoomAnimator *)self dockAnimationSettings];
  [dockAnimationSettings dampingRatio];
  [dockAnimationSettings response];
  convertDampingRatioAndResponseToTensionAndFriction();
  v10 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.y"];
  [v10 setMass:1.0];
  [v10 setStiffness:0.0];
  [v10 setDamping:0.0];
  [v10 settlingDuration];
  [v10 setDuration:?];
  [v10 setRemovedOnCompletion:1];
  v11 = MEMORY[0x1E696AD98];
  if (additiveCopy)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:offset];
    [v10 setFromValue:v12];

    [v10 setToValue:&unk_1F3DB2630];
    [v10 setAdditive:1];
  }

  else
  {
    [layerCopy position];
    offset = [v11 numberWithDouble:v13 - offset];
    [v10 setFromValue:offset];
  }

  v15 = [layerCopy animationForKey:@"SBDockIconZoomDownCounterSnapKey"];

  if (v15)
  {
    [layerCopy removeAnimationForKey:@"SBDockIconZoomDownCounterSnapKey"];
  }

  [layerCopy addAnimation:v10 forKey:@"SBDockIconZoomDownCounterSnapKey"];
}

- (void)_setupMatchMoveAnimation
{
  v27[1] = *MEMORY[0x1E69E9840];
  animationContainer = [(SBIconAnimator *)self animationContainer];
  if (objc_opt_respondsToSelector())
  {
    targetIconView = [(SBFolderIconZoomAnimator *)self targetIconView];
    v5 = [animationContainer matchMoveSourceViewForIconView:targetIconView];

    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69793B8]);
      [v6 setDuration:INFINITY];
      [v6 setFillMode:*MEMORY[0x1E69797E0]];
      [v6 setRemovedOnCompletion:0];
      _outermostLayer = [v5 _outermostLayer];
      [v6 setSourceLayer:_outermostLayer];

      window = [v5 window];
      [window bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      window2 = [v5 window];
      v28.origin.x = v10;
      v28.origin.y = v12;
      v28.size.width = v14;
      v28.size.height = v16;
      v18 = CGRectGetWidth(v28) * 0.5;
      v29.origin.x = v10;
      v29.origin.y = v12;
      v29.size.width = v14;
      v29.size.height = v16;
      [window2 convertPoint:v5 toView:{v18, CGRectGetHeight(v29) * 0.5}];
      v20 = v19;
      v22 = v21;

      v23 = [MEMORY[0x1E696B098] valueWithCGPoint:{v20, v22}];
      v27[0] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      [v6 setSourcePoints:v24];

      defaultTargetIconContainerView = [(SBFolderIconZoomAnimator *)self defaultTargetIconContainerView];
      _outermostLayer2 = [defaultTargetIconContainerView _outermostLayer];
      [_outermostLayer2 addAnimation:v6 forKey:@"SBFolderSourceViewTrackingMatchMoveAnimation"];
    }
  }
}

- (void)_setAnimationFraction:(double)fraction
{
  v6.receiver = self;
  v6.super_class = SBFolderIconZoomAnimator;
  [(SBScaleIconZoomAnimator *)&v6 _setAnimationFraction:?];
  targetIconView = [(SBFolderIconZoomAnimator *)self targetIconView];
  [targetIconView setFloatyFolderCrossfadeFraction:fraction];

  [(SBIconAnimator *)self->_innerZoomAnimator setFraction:1.0 - fraction];
}

- (unint64_t)_numberOfSignificantAnimations
{
  v3.receiver = self;
  v3.super_class = SBFolderIconZoomAnimator;
  return [(SBScaleIconZoomAnimator *)&v3 _numberOfSignificantAnimations]+ 2;
}

- (void)_performAnimationToFraction:(double)fraction withCentralAnimationSettings:(id)settings delay:(double)delay alreadyAnimating:(BOOL)animating sharedCompletion:(id)completion
{
  animatingCopy = animating;
  v23.receiver = self;
  v23.super_class = SBFolderIconZoomAnimator;
  completionCopy = completion;
  [(SBScaleIconZoomAnimator *)&v23 _performAnimationToFraction:settings withCentralAnimationSettings:animatingCopy delay:completionCopy alreadyAnimating:fraction sharedCompletion:delay];
  if (BSFloatIsZero())
  {
    [(SBFolderIconZoomAnimator *)self _setupMatchMoveAnimation];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SBIconZoomContractionAnimationWillBeginNotification" object:self];
  }

  if (BSFloatIsOne())
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"SBIconZoomExpansionAnimationWillBeginNotification" object:self];
  }

  if ([(SBFolderIconZoomAnimator *)self shouldMatchMoveWithDock])
  {
    [(SBFolderIconZoomAnimator *)self _updateDockMatchMoveWithFraction:fraction];
  }

  settings = [(SBIconAnimator *)self settings];
  v16 = settings;
  if (animatingCopy)
  {
    v17 = 6;
  }

  else
  {
    v17 = 2;
  }

  v18 = MEMORY[0x1E698E7D0];
  effectiveCrossfadeAnimationSettings = [settings effectiveCrossfadeAnimationSettings];
  bSAnimationSettings = [effectiveCrossfadeAnimationSettings BSAnimationSettings];
  v21 = [v18 factoryWithSettings:bSAnimationSettings];

  [v21 setAllowsAdditiveAnimations:1];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __125__SBFolderIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke;
  v22[3] = &unk_1E8088CB8;
  v22[4] = self;
  *&v22[5] = fraction;
  [MEMORY[0x1E698E7D0] animateWithFactory:v21 additionalDelay:v17 options:v22 actions:completionCopy completion:delay];
  [(SBIconAnimator *)self->_innerZoomAnimator animateToFraction:completionCopy afterDelay:1.0 - fraction withCompletion:delay];
}

void __125__SBFolderIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) targetIconView];
  [v2 setFloatyFolderCrossfadeFraction:*(a1 + 40)];
}

- (void)searchGesture:(id)gesture startedShowing:(BOOL)showing
{
  if (showing)
  {
    [(SBFolderIconZoomAnimator *)self _visuallyCompleteAnimationImmediately];
  }
}

- (void)_visuallyCompleteAnimationImmediately
{
  targetIconView = [(SBFolderIconZoomAnimator *)self targetIconView];
  [targetIconView setHidden:1];

  referenceIconView = [(SBScaleIconZoomAnimator *)self referenceIconView];
  [referenceIconView setAllIconElementsButLabelHidden:0];
}

@end