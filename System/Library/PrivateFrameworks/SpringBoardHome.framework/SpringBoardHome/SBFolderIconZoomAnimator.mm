@interface SBFolderIconZoomAnimator
- (CGRect)_zoomedFrame;
- (SBFFluidBehaviorSettings)dockAnimationSettings;
- (SBFolderIconZoomAnimator)initWithAnimationContainer:(id)a3 innerFolderController:(id)a4 folderIcon:(id)a5;
- (SBIconView)targetIconView;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_cleanupAnimation;
- (void)_performAnimationToFraction:(double)a3 withCentralAnimationSettings:(id)a4 delay:(double)a5 alreadyAnimating:(BOOL)a6 sharedCompletion:(id)a7;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)a3;
- (void)_setupCounterDockMatchMoveAnimationWithOffset:(double)a3 layer:(id)a4 additive:(BOOL)a5;
- (void)_setupMatchMoveAnimation;
- (void)_setupMatchMoveWithDock;
- (void)_setupMatchMoveWithDockWithTargetIconCenter:(CGPoint)a3 targetIconAnchor:(CGPoint)a4;
- (void)_updateDockMatchMoveWithFraction:(double)a3;
- (void)_visuallyCompleteAnimationImmediately;
- (void)dealloc;
- (void)searchGesture:(id)a3 startedShowing:(BOOL)a4;
@end

@implementation SBFolderIconZoomAnimator

- (void)_prepareAnimation
{
  v3 = [(SBFolderController *)self->_innerFolderController contentView];
  v4 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(&self->_innerFolderView, v5);

  v13.receiver = self;
  v13.super_class = SBFolderIconZoomAnimator;
  [(SBScaleIconZoomAnimator *)&v13 _prepareAnimation];
  v6 = [(SBFolderIconZoomAnimator *)self targetIconView];
  [v6 prepareToCrossfadeWithFloatyFolderView:self->_innerFolderView allowFolderInteraction:{-[SBFolderController isOpen](self->_innerFolderController, "isOpen")}];
  [v6 setIconGridImageAlpha:0.0];
  v7 = [_SBInnerFolderIconZoomAnimator alloc];
  innerFolderController = self->_innerFolderController;
  [(SBScaleIconZoomAnimator *)self zoomScaleDimension];
  v9 = [(_SBInnerFolderIconZoomAnimator *)v7 initWithFolderController:innerFolderController iconView:v6 iconZoomScaleDimension:?];
  innerZoomAnimator = self->_innerZoomAnimator;
  self->_innerZoomAnimator = v9;

  v11 = self->_innerZoomAnimator;
  v12 = [(SBIconAnimator *)self settings];
  [(SBIconAnimator *)v11 setSettings:v12];

  [(SBIconAnimator *)self->_innerZoomAnimator prepare];
}

- (SBIconView)targetIconView
{
  v7.receiver = self;
  v7.super_class = SBFolderIconZoomAnimator;
  v3 = [(SBScaleIconZoomAnimator *)&v7 targetIconView];
  v4 = [(SBScaleIconZoomAnimator *)self referenceIconView];
  v5 = [v4 visibleMiniIconListIndex];
  if ([v3 visibleMiniIconListIndex] != v5)
  {
    [v3 scrollToTopOfPage:v5 animated:0];
  }

  [v4 iconContentScale];
  [v3 setIconContentScale:?];

  return v3;
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
  v3 = [(SBFolderIconZoomAnimator *)self targetIconView];
  [v3 cleanupAfterFloatyFolderCrossfade];
  [v3 setIconGridImageAlpha:1.0];
  [(SBIconAnimator *)self->_innerZoomAnimator cleanup];
  innerZoomAnimator = self->_innerZoomAnimator;
  self->_innerZoomAnimator = 0;

  v5 = [(SBFolderIconZoomAnimator *)self searchGesture];
  [v5 removeObserver:self];

  [(SBFolderIconZoomAnimator *)self setSearchGesture:0];
  v6 = [(SBFolderIconZoomAnimator *)self defaultTargetIconContainerView];
  v7 = [v6 _outermostLayer];
  [v7 removeAnimationForKey:@"SBFolderSourceViewTrackingMatchMoveAnimation"];

  v8.receiver = self;
  v8.super_class = SBFolderIconZoomAnimator;
  [(SBScaleIconZoomAnimator *)&v8 _cleanupAnimation];
}

- (SBFolderIconZoomAnimator)initWithAnimationContainer:(id)a3 innerFolderController:(id)a4 folderIcon:(id)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = SBFolderIconZoomAnimator;
  v10 = [(SBScaleIconZoomAnimator *)&v17 initWithAnimationContainer:v8 targetIcon:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_innerFolderController, a4);
    if (objc_opt_respondsToSelector())
    {
      v12 = [v8 searchGesture];
      searchGesture = v11->_searchGesture;
      v11->_searchGesture = v12;

      [(SBSearchGesture *)v11->_searchGesture addObserver:v11];
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [v8 searchPresenter];
      searchPresenter = v11->_searchPresenter;
      v11->_searchPresenter = v14;

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

- (void)_updateDockMatchMoveWithFraction:(double)a3
{
  if (BSFloatIsZero())
  {

    [(SBFolderIconZoomAnimator *)self _setupMatchMoveWithDock];
  }

  else
  {
    v4 = [(SBScaleIconZoomAnimator *)self targetIconPositioningView];
    v21 = [v4 _outermostLayer];

    v5 = [v21 animationForKey:@"SBDockIconZoomDownMatchMoveKey"];

    v6 = v21;
    if (v5)
    {
      [v21 removeAnimationForKey:@"SBDockIconZoomDownMatchMoveKey"];
      v7 = [(SBScaleIconZoomAnimator *)self referenceIconView];
      v8 = [v7 _outermostLayer];

      [(SBScaleIconZoomAnimator *)self _referenceIconImageCenter];
      v10 = v9;
      v12 = v11;
      v13 = [(SBScaleIconZoomAnimator *)self targetIconContainerView];
      v14 = [v13 _outermostLayer];
      [v8 convertPoint:v14 toLayer:{v10, v12}];
      v16 = v15;

      [(SBScaleIconZoomAnimator *)self targetIconCenter];
      v18 = v17 - v16;
      if ((BSFloatIsZero() & 1) == 0)
      {
        v19 = [(SBScaleIconZoomAnimator *)self targetIconPositioningView];
        v20 = [v19 _outermostLayer];
        [(SBFolderIconZoomAnimator *)self _setupCounterDockMatchMoveAnimationWithOffset:v20 layer:0 additive:v18];
      }

      v6 = v21;
    }
  }
}

- (void)_setupMatchMoveWithDock
{
  v18 = [(SBScaleIconZoomAnimator *)self targetIconContainerView];
  [(SBScaleIconZoomAnimator *)self targetIconCenter];
  v4 = v3;
  v6 = v5;
  [(SBScaleIconZoomAnimator *)self zoomedTargetIconCenter];
  v8 = v7;
  v10 = v9;
  [(SBScaleIconZoomAnimator *)self zoomScaleDimension];
  v12 = _SBScaleIconZoomAnimatorCameraPositionToScaleModelPointToTargetPoint(v4, v6, v8, v10, v11);
  v14 = v13;
  [v18 bounds];
  v16 = v12 / v15;
  [v18 bounds];
  [(SBFolderIconZoomAnimator *)self _setupMatchMoveWithDockWithTargetIconCenter:v4 targetIconAnchor:v6, v16, v14 / v17];
}

- (void)_setupMatchMoveWithDockWithTargetIconCenter:(CGPoint)a3 targetIconAnchor:(CGPoint)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v5 = [(SBScaleIconZoomAnimator *)self referenceIconView:a3.x];
  v6 = [(SBScaleIconZoomAnimator *)self targetIconPositioningView];
  v7 = [v5 location];
  v8 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupDock", v7);

  if (v8)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [v5 _outermostLayer];
    v11 = [v6 _outermostLayer];
    v12 = [MEMORY[0x1E69793B8] animation];
    [v12 setSourceLayer:v10];
    [v12 setDuration:INFINITY];
    [v12 setFillMode:*MEMORY[0x1E69797E0]];
    [v12 setRemovedOnCompletion:0];
    [v12 setAppliesY:1];
    [v12 setAppliesX:1];
    v13 = [(SBScaleIconZoomAnimator *)self targetIconContainerView];
    [(SBScaleIconZoomAnimator *)self _referenceIconImageCenter];
    v15 = v14;
    v17 = v16;
    v18 = [v13 _outermostLayer];
    [v10 convertPoint:v18 toLayer:{v15, v17}];
    v20 = v19;
    v22 = v21;

    [v5 bounds];
    v24 = v20 + v23 * -0.5;
    [v13 bounds];
    v26 = v24 + v25 * -0.5;
    [v5 bounds];
    v28 = v22 + v27 * -0.5;
    [v13 bounds];
    v30 = v28 + v29 * -0.5;
    [v11 anchorPoint];
    v32 = v31;
    v34 = v33;
    [v13 bounds];
    v36 = -(v26 - v35 * (v32 + -0.5));
    [v13 bounds];
    v38 = -(v30 - v37 * (v34 + -0.5));
    [(SBScaleIconZoomAnimator *)self targetIconCenter];
    v40 = v39 - v22;
    v42 = [MEMORY[0x1E696B098] valueWithCGPoint:{v36 - (v41 - v20), v38 - v40}];
    v45[0] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    [v12 setSourcePoints:v43];

    v44 = [v11 animationForKey:@"SBDockIconZoomDownMatchMoveKey"];

    if (v44)
    {
      [v11 removeAnimationForKey:@"SBDockIconZoomDownMatchMoveKey"];
    }

    [v11 addAnimation:v12 forKey:@"SBDockIconZoomDownMatchMoveKey"];
    if ((BSFloatIsZero() & 1) == 0)
    {
      [(SBFolderIconZoomAnimator *)self _setupCounterDockMatchMoveAnimationWithOffset:v11 layer:1 additive:v40];
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

- (void)_setupCounterDockMatchMoveAnimationWithOffset:(double)a3 layer:(id)a4 additive:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(SBFolderIconZoomAnimator *)self dockAnimationSettings];
  [v9 dampingRatio];
  [v9 response];
  convertDampingRatioAndResponseToTensionAndFriction();
  v10 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.y"];
  [v10 setMass:1.0];
  [v10 setStiffness:0.0];
  [v10 setDamping:0.0];
  [v10 settlingDuration];
  [v10 setDuration:?];
  [v10 setRemovedOnCompletion:1];
  v11 = MEMORY[0x1E696AD98];
  if (v5)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v10 setFromValue:v12];

    [v10 setToValue:&unk_1F3DB2630];
    [v10 setAdditive:1];
  }

  else
  {
    [v8 position];
    v14 = [v11 numberWithDouble:v13 - a3];
    [v10 setFromValue:v14];
  }

  v15 = [v8 animationForKey:@"SBDockIconZoomDownCounterSnapKey"];

  if (v15)
  {
    [v8 removeAnimationForKey:@"SBDockIconZoomDownCounterSnapKey"];
  }

  [v8 addAnimation:v10 forKey:@"SBDockIconZoomDownCounterSnapKey"];
}

- (void)_setupMatchMoveAnimation
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = [(SBIconAnimator *)self animationContainer];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SBFolderIconZoomAnimator *)self targetIconView];
    v5 = [v3 matchMoveSourceViewForIconView:v4];

    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69793B8]);
      [v6 setDuration:INFINITY];
      [v6 setFillMode:*MEMORY[0x1E69797E0]];
      [v6 setRemovedOnCompletion:0];
      v7 = [v5 _outermostLayer];
      [v6 setSourceLayer:v7];

      v8 = [v5 window];
      [v8 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = [v5 window];
      v28.origin.x = v10;
      v28.origin.y = v12;
      v28.size.width = v14;
      v28.size.height = v16;
      v18 = CGRectGetWidth(v28) * 0.5;
      v29.origin.x = v10;
      v29.origin.y = v12;
      v29.size.width = v14;
      v29.size.height = v16;
      [v17 convertPoint:v5 toView:{v18, CGRectGetHeight(v29) * 0.5}];
      v20 = v19;
      v22 = v21;

      v23 = [MEMORY[0x1E696B098] valueWithCGPoint:{v20, v22}];
      v27[0] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      [v6 setSourcePoints:v24];

      v25 = [(SBFolderIconZoomAnimator *)self defaultTargetIconContainerView];
      v26 = [v25 _outermostLayer];
      [v26 addAnimation:v6 forKey:@"SBFolderSourceViewTrackingMatchMoveAnimation"];
    }
  }
}

- (void)_setAnimationFraction:(double)a3
{
  v6.receiver = self;
  v6.super_class = SBFolderIconZoomAnimator;
  [(SBScaleIconZoomAnimator *)&v6 _setAnimationFraction:?];
  v5 = [(SBFolderIconZoomAnimator *)self targetIconView];
  [v5 setFloatyFolderCrossfadeFraction:a3];

  [(SBIconAnimator *)self->_innerZoomAnimator setFraction:1.0 - a3];
}

- (unint64_t)_numberOfSignificantAnimations
{
  v3.receiver = self;
  v3.super_class = SBFolderIconZoomAnimator;
  return [(SBScaleIconZoomAnimator *)&v3 _numberOfSignificantAnimations]+ 2;
}

- (void)_performAnimationToFraction:(double)a3 withCentralAnimationSettings:(id)a4 delay:(double)a5 alreadyAnimating:(BOOL)a6 sharedCompletion:(id)a7
{
  v7 = a6;
  v23.receiver = self;
  v23.super_class = SBFolderIconZoomAnimator;
  v12 = a7;
  [(SBScaleIconZoomAnimator *)&v23 _performAnimationToFraction:a4 withCentralAnimationSettings:v7 delay:v12 alreadyAnimating:a3 sharedCompletion:a5];
  if (BSFloatIsZero())
  {
    [(SBFolderIconZoomAnimator *)self _setupMatchMoveAnimation];
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"SBIconZoomContractionAnimationWillBeginNotification" object:self];
  }

  if (BSFloatIsOne())
  {
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 postNotificationName:@"SBIconZoomExpansionAnimationWillBeginNotification" object:self];
  }

  if ([(SBFolderIconZoomAnimator *)self shouldMatchMoveWithDock])
  {
    [(SBFolderIconZoomAnimator *)self _updateDockMatchMoveWithFraction:a3];
  }

  v15 = [(SBIconAnimator *)self settings];
  v16 = v15;
  if (v7)
  {
    v17 = 6;
  }

  else
  {
    v17 = 2;
  }

  v18 = MEMORY[0x1E698E7D0];
  v19 = [v15 effectiveCrossfadeAnimationSettings];
  v20 = [v19 BSAnimationSettings];
  v21 = [v18 factoryWithSettings:v20];

  [v21 setAllowsAdditiveAnimations:1];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __125__SBFolderIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke;
  v22[3] = &unk_1E8088CB8;
  v22[4] = self;
  *&v22[5] = a3;
  [MEMORY[0x1E698E7D0] animateWithFactory:v21 additionalDelay:v17 options:v22 actions:v12 completion:a5];
  [(SBIconAnimator *)self->_innerZoomAnimator animateToFraction:v12 afterDelay:1.0 - a3 withCompletion:a5];
}

void __125__SBFolderIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) targetIconView];
  [v2 setFloatyFolderCrossfadeFraction:*(a1 + 40)];
}

- (void)searchGesture:(id)a3 startedShowing:(BOOL)a4
{
  if (a4)
  {
    [(SBFolderIconZoomAnimator *)self _visuallyCompleteAnimationImmediately];
  }
}

- (void)_visuallyCompleteAnimationImmediately
{
  v3 = [(SBFolderIconZoomAnimator *)self targetIconView];
  [v3 setHidden:1];

  v4 = [(SBScaleIconZoomAnimator *)self referenceIconView];
  [v4 setAllIconElementsButLabelHidden:0];
}

@end