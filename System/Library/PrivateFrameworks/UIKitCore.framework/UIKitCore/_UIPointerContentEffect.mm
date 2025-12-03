@interface _UIPointerContentEffect
- (BOOL)_monitorsView:(id)view;
- (BOOL)isEqual:(id)equal;
- (CGPoint)hoverLocation;
- (CGPoint)initialEffectPlatterPosition;
- (UIView)boundsObservationView;
- (UIView)lumaSamplingBackdrop;
- (UIView)pointerPortal;
- (UIView)positionReferenceView;
- (UIView)sublayerObservationView;
- (UIWindow)subtreeMonitoredWindow;
- (_UIPointerContentEffect)initWithStyle:(id)style region:(id)region;
- (double)_currentAnimatedLiftProgress;
- (id)_positionReferenceViewForPreview:(id)preview;
- (id)previewForContinuingToEffectWithPreview:(id)preview;
- (unint64_t)hash;
- (void)_anchorPlatterView:(id)view toPreview:(id)preview updateBounds:(BOOL)bounds;
- (void)_cleanUpObservation;
- (void)_commitPointerStyleToArbiterWithCompletion:(id)completion;
- (void)_createAndInstallPlatterView;
- (void)_ensureRelativeEffectViewOrderInContainer;
- (void)_modifyEffectContainerViewHierarchy:(id)hierarchy waitForCACommit:(BOOL)commit;
- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview;
- (void)_setStyle:(id)style andRegion:(id)region;
- (void)_tearDownPlatterView;
- (void)_updateFromState:(int64_t)state toState:(int64_t)toState;
- (void)_updatePlatterView:(id)view forStyle:(id)style;
- (void)addCompletion:(id)completion;
- (void)begin;
- (void)dealloc;
- (void)end:(BOOL)end;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setDescriptor:(id)descriptor andKey:(id)key;
- (void)setHoverLocation:(CGPoint)location;
- (void)setLiftProgress:(double)progress;
- (void)setPressed:(BOOL)pressed animated:(BOOL)animated;
- (void)setStyle:(id)style;
@end

@implementation _UIPointerContentEffect

- (_UIPointerContentEffect)initWithStyle:(id)style region:(id)region
{
  v21[1] = *MEMORY[0x1E69E9840];
  styleCopy = style;
  regionCopy = region;
  if (self)
  {
    if ([styleCopy type] != 1 || (objc_msgSend(styleCopy, "targetedPreview"), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      type = [styleCopy type];
      targetedPreview = [styleCopy targetedPreview];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPointerContentEffect.m" lineNumber:97 description:{@"Attempting to create a _UIPointerContentEffect with an incompatible style! type: %lu, preview: %@", type, targetedPreview}];
    }

    [(_UIPointerContentEffect *)self _setStyle:styleCopy andRegion:regionCopy];
    v13 = objc_opt_new();
    [(_UIPointerContentEffect *)self setLiftProgressProperty:v13];

    liftProgressProperty = [(_UIPointerContentEffect *)self liftProgressProperty];
    [liftProgressProperty setValue:1.0];

    objc_initWeak(&location, self);
    liftProgressProperty2 = [(_UIPointerContentEffect *)self liftProgressProperty];
    v21[0] = liftProgressProperty2;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __48___UIPointerContentEffect_initWithStyle_region___block_invoke;
    v18[3] = &unk_1E70F5A28;
    objc_copyWeak(&v19, &location);
    [UIView _createTransformerWithInputAnimatableProperties:v16 presentationValueChangedCallback:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return self;
}

- (void)dealloc
{
  [(_UIPointerContentEffect *)self _cleanUpObservation];
  v3.receiver = self;
  v3.super_class = _UIPointerContentEffect;
  [(_UIPointerContentEffect *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    region = [equalCopy region];
    region2 = [(_UIPointerContentEffect *)self region];
    v7 = [region isEqual:region2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  region = [(_UIPointerContentEffect *)self region];
  v3 = [region hash];

  return v3;
}

- (void)_setStyle:(id)style andRegion:(id)region
{
  regionCopy = region;
  [(_UIPointerContentEffect *)self setStyle:style];
  [(_UIPointerContentEffect *)self setRegion:regionCopy];

  if ([(_UIPointerContentEffect *)self state]== 1)
  {

    [(_UIPointerContentEffect *)self _commitPointerStyleToArbiterWithCompletion:0];
  }
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (([styleCopy isEqual:self->_style] & 1) == 0)
  {
    objc_storeStrong(&self->_style, style);
    platterView = [(_UIPointerContentEffect *)self platterView];
    [(_UIPointerContentEffect *)self _updatePlatterView:platterView forStyle:self->_style];
  }
}

- (void)_updatePlatterView:(id)view forStyle:(id)style
{
  viewCopy = view;
  styleCopy = style;
  targetedPreview = [styleCopy targetedPreview];
  [viewCopy setTargetedPreview:targetedPreview];
  if (([styleCopy options] & 0x400) != 0)
  {
    [targetedPreview _frame];
    v8 = -CGRectGetMinX(v27);
    [targetedPreview _frame];
    v9 = -CGRectGetMinY(v28);
    pointerShape = [styleCopy pointerShape];
    path = [pointerShape path];

    if (path)
    {
      path2 = [pointerShape path];
      v13 = [path2 copy];

      CGAffineTransformMakeTranslation(&v26, v8, v9);
      [v13 applyTransform:&v26];
      v14 = [UIPointerShape shapeWithPath:v13];
    }

    else
    {
      [pointerShape rect];
      v30 = CGRectOffset(v29, v8, v9);
      x = v30.origin.x;
      y = v30.origin.y;
      width = v30.size.width;
      height = v30.size.height;
      [pointerShape cornerRadius];
      v14 = [UIPointerShape shapeWithRoundedRect:x cornerRadius:y, width, height, v19];
    }

    [viewCopy setTintViewShape:v14];
  }

  pointerEffect = [styleCopy pointerEffect];
  tintColorMatrixProvider = [pointerEffect tintColorMatrixProvider];
  [viewCopy setTintColorMatrixProvider:tintColorMatrixProvider];

  if (([styleCopy options] & 4) != 0)
  {
    v22 = 1;
  }

  else
  {
    if (([styleCopy options] & 8) == 0)
    {
      goto LABEL_11;
    }

    v22 = 2;
  }

  [viewCopy setTintMode:v22];
LABEL_11:
  if ([styleCopy _suppressesMirroring])
  {
    v23 = 18;
  }

  else
  {
    v23 = 0;
  }

  layer = [viewCopy layer];
  [layer setDisableUpdateMask:v23];

  pointerEffect2 = [styleCopy pointerEffect];
  [viewCopy setUseSoftShadow:{objc_msgSend(pointerEffect2, "useSoftShadow")}];
}

- (void)begin
{
  state = [(_UIPointerContentEffect *)self state];
  [(_UIPointerContentEffect *)self setState:1];
  state2 = [(_UIPointerContentEffect *)self state];

  [(_UIPointerContentEffect *)self _updateFromState:state toState:state2];
}

- (void)end:(BOOL)end
{
  endCopy = end;
  state = [(_UIPointerContentEffect *)self state];
  if (endCopy)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [(_UIPointerContentEffect *)self setState:v6];
  state2 = [(_UIPointerContentEffect *)self state];

  [(_UIPointerContentEffect *)self _updateFromState:state toState:state2];
}

- (void)setPressed:(BOOL)pressed animated:(BOOL)animated
{
  if (self->_pressed != pressed)
  {
    v14 = v4;
    v15 = v5;
    animatedCopy = animated;
    self->_pressed = pressed;
    platterView = [(_UIPointerContentEffect *)self platterView];

    if (platterView)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __47___UIPointerContentEffect_setPressed_animated___block_invoke;
      v12[3] = &unk_1E70F35E0;
      v12[4] = self;
      pressedCopy = pressed;
      v10 = _Block_copy(v12);
      v11 = v10;
      if (animatedCopy)
      {
        [UIView animateWithDuration:v10 animations:0.2];
      }

      else
      {
        (*(v10 + 2))(v10);
      }
    }

    [(_UIPointerContentEffect *)self _updateFromState:[(_UIPointerContentEffect *)self state] toState:[(_UIPointerContentEffect *)self state]];
  }
}

- (void)setLiftProgress:(double)progress
{
  if (vabdd_f64(progress, self->_liftProgress) > 2.22044605e-16)
  {
    self->_liftProgress = progress;
    style = [(_UIPointerContentEffect *)self style];
    pointerEffect = [style pointerEffect];
    liftProgressSpring = [pointerEffect liftProgressSpring];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43___UIPointerContentEffect_setLiftProgress___block_invoke;
    v8[3] = &unk_1E70F32F0;
    v8[4] = self;
    *&v8[5] = progress;
    [UIView _animateUsingSpringBehavior:liftProgressSpring tracking:0 animations:v8 completion:0];
  }
}

- (double)_currentAnimatedLiftProgress
{
  if (self->_pressed)
  {
    return 0.0;
  }

  liftProgressProperty = [(_UIPointerContentEffect *)self liftProgressProperty];
  [liftProgressProperty presentationValue];
  v5 = v4;

  return v5;
}

- (void)setHoverLocation:(CGPoint)location
{
  if (location.x != self->_hoverLocation.x || location.y != self->_hoverLocation.y)
  {
    self->_hoverLocation = location;
    state = [(_UIPointerContentEffect *)self state];
    state2 = [(_UIPointerContentEffect *)self state];

    [(_UIPointerContentEffect *)self _updateFromState:state toState:state2];
  }
}

- (void)_updateFromState:(int64_t)state toState:(int64_t)toState
{
  platterView = [(_UIPointerContentEffect *)self platterView];
  platterView2 = platterView;
  if (toState != 1 || platterView)
  {
    if (toState != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [(_UIPointerContentEffect *)self _createAndInstallPlatterView];
    platterView2 = [(_UIPointerContentEffect *)self platterView];
  }

  self->_flags.stopViewOrderPreservation = 0;
LABEL_6:
  style = [(_UIPointerContentEffect *)self style];
  [(_UIPointerContentEffect *)self setAnimationCount:[(_UIPointerContentEffect *)self animationCount]+ 1];
  v11 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  *&v132.a = *MEMORY[0x1E695EFD0];
  *&v132.c = v13;
  *&v132.tx = *(MEMORY[0x1E695EFD0] + 32);
  v14 = 1.0;
  if (toState == 1)
  {
    pointerEffect = [style pointerEffect];
    [pointerEffect _plasmaRubberbandFactor];
    v17 = v16;
    v19 = v18;

    [(_UIPointerContentEffect *)self hoverLocation];
    v21 = v20;
    v23 = v22;
    region = [(_UIPointerContentEffect *)self region];
    [region rect];
    v29 = v21 - (v26 + v25 * 0.5);
    v30 = v23 - (v28 + v27 * 0.5);

    v31 = v17 * v29;
    v32 = v19 * v30;
    [(_UIPointerContentEffect *)self _currentAnimatedLiftProgress];
    v34 = v33;
    [style contentScale];
    v36 = 1.0 - v34 + v34 * v35;
    if ([style options])
    {
      CGAffineTransformMakeScale(&v132, v36, v36);
      pointerEffect2 = [style pointerEffect];
      [pointerEffect2 _plasmaLensParallaxFactor];
      v48 = v47;

      v49 = v31 * v48;
      v50 = v32 * v48;
      *&v130.a = *&v132.a;
      *&v130.c = *&v132.c;
      v51 = *&v132.tx;
    }

    else
    {
      if (([style pointerMergesWithContent] & 1) == 0)
      {
        pointerShape = [style pointerShape];
        path = [pointerShape path];
        if (path)
        {
          path2 = [pointerShape path];
          [path2 bounds];
          v42 = v41 + v40 * 0.5;
          v45 = v44 + v43 * 0.5;
        }

        else
        {
          [pointerShape rect];
          v42 = v53 + v52 * 0.5;
          v45 = v55 + v54 * 0.5;
        }

        [(_UIPointerContentEffect *)self initialEffectPlatterPosition];
        v11 = v42 - v56;
        v12 = v45 - v57;
      }

      CGAffineTransformMakeTranslation(&v132, v11, v12);
      v130 = v132;
      CGAffineTransformScale(&v131, &v130, v36, v36);
      v51 = *&v131.tx;
      v132 = v131;
      v49 = -v11;
      v50 = -v12;
      *&v130.a = *&v131.a;
      *&v130.c = *&v131.c;
    }

    *&v130.tx = v51;
    CGAffineTransformTranslate(&v131, &v130, v49, v50);
    v132 = v131;
    if (([style options] & 0x2000) != 0)
    {
      v14 = 1.0 / v36;
    }

    else
    {
      v14 = 1.0;
    }
  }

  else
  {
    v32 = v12;
    v31 = v11;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52___UIPointerContentEffect__updateFromState_toState___block_invoke;
  aBlock[3] = &unk_1E70F8BB8;
  aBlock[4] = self;
  v102 = platterView2;
  v125 = v102;
  v126 = v132;
  v127 = v14;
  stateCopy = state;
  stateCopy2 = state;
  toStateCopy = toState;
  v58 = _Block_copy(aBlock);
  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = __52___UIPointerContentEffect__updateFromState_toState___block_invoke_2;
  v123[3] = &unk_1E7100788;
  v123[4] = self;
  v123[5] = a2;
  v59 = _Block_copy(v123);
  v60 = objc_opt_new();
  pointerEffect3 = [style pointerEffect];
  [pointerEffect3 scaleUpAnimationDampingRatio];
  v63 = v62;
  pointerEffect4 = [style pointerEffect];
  [pointerEffect4 scaleUpAnimationResponse];
  [v60 setDampingRatio:v63 response:v65];

  v104 = v58;
  [UIView _animateUsingSpringBehavior:v60 tracking:0 animations:v58 completion:v59];
  v66 = +[_UIPointerArbiter sharedArbiter];
  lensView = [v66 lensView];

  v68 = objc_opt_new();
  pointerEffect5 = [style pointerEffect];
  [pointerEffect5 dampedAnimationDampingRatio];
  v71 = v70;
  pointerEffect6 = [style pointerEffect];
  [pointerEffect6 dampedAnimationResponse];
  [v68 setDampingRatio:v71 response:v73];

  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __52___UIPointerContentEffect__updateFromState_toState___block_invoke_4;
  v118[3] = &unk_1E70F4378;
  v118[4] = self;
  toStateCopy2 = toState;
  v74 = style;
  v119 = v74;
  v106 = lensView;
  v120 = v106;
  v75 = v102;
  v121 = v75;
  [UIView _animateUsingSpringBehavior:v68 tracking:0 animations:v118 completion:v59];
  if (([v74 options] & 0x10000) != 0)
  {
    v103 = v60;
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = __52___UIPointerContentEffect__updateFromState_toState___block_invoke_5;
    v111[3] = &unk_1E7123978;
    v76 = v74;
    v112 = v76;
    v77 = v106;
    selfCopy = self;
    toStateCopy3 = toState;
    v116 = v31;
    v117 = v32;
    v113 = v77;
    v101 = _Block_copy(v111);
    superview = [v77 superview];

    if (superview)
    {
      superview2 = [v77 superview];
      [superview2 bringSubviewToFront:v77];
    }

    layer = [v77 layer];
    presentationLayer = [layer presentationLayer];
    [presentationLayer opacity];
    v83 = v82;

    if (v83 >= 0.05)
    {
      v90 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.275];
      v109[0] = MEMORY[0x1E69E9820];
      v109[1] = 3221225472;
      v109[2] = __52___UIPointerContentEffect__updateFromState_toState___block_invoke_6;
      v109[3] = &unk_1E70F0F78;
      v110 = v101;
      v89 = v101;
      [UIView _animateUsingSpringBehavior:v90 tracking:0 animations:v109 completion:0];

      _window = v110;
      v60 = v103;
    }

    else
    {
      v100 = v75;
      targetedPreview = [v76 targetedPreview];
      target = [targetedPreview target];
      container = [target container];
      _window = [container _window];

      window = [v77 window];

      if (window != _window)
      {
        [_window addSubview:v77];
      }

      v89 = v101;
      [UIView performWithoutAnimation:v101];
      v60 = v103;
      v75 = v100;
    }
  }

  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __52___UIPointerContentEffect__updateFromState_toState___block_invoke_7;
  v107[3] = &unk_1E70F0F78;
  v91 = v59;
  v108 = v91;
  v92 = _Block_copy(v107);
  region2 = [(_UIPointerContentEffect *)self region];
  referenceView = [region2 referenceView];
  _window2 = [referenceView _window];
  if (_window2)
  {

    v96 = stateCopy;
    if (stateCopy != 1 && toState == 1)
    {
      [(_UIPointerContentEffect *)self _commitPointerStyleToArbiterWithCompletion:v92];
      goto LABEL_37;
    }
  }

  else
  {

    v96 = stateCopy;
  }

  if (v96 != 1 || toState == 1)
  {
    v92[2](v92);
  }

  else
  {
    +[_UIPointerArbiter sharedArbiter];
    v98 = v97 = v60;
    region3 = [(_UIPointerContentEffect *)self region];
    [v98 exitRegion:region3 removeStyle:toState == 0 completion:v92];

    v60 = v97;
  }

LABEL_37:
}

- (void)_commitPointerStyleToArbiterWithCompletion:(id)completion
{
  completionCopy = completion;
  style = [(_UIPointerContentEffect *)self style];
  if (([style options] & 0x8000) != 0)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = +[_UIPointerArbiter sharedArbiter];
    region = [(_UIPointerContentEffect *)self region];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70___UIPointerContentEffect__commitPointerStyleToArbiterWithCompletion___block_invoke;
    v8[3] = &unk_1E71239A0;
    objc_copyWeak(&v10, &location);
    v9 = style;
    [v6 applyStyle:v9 forRegion:region effectSourceHandler:v8 completion:completionCopy];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)_createAndInstallPlatterView
{
  style = [(_UIPointerContentEffect *)self style];
  targetedPreview = [style targetedPreview];
  v5 = [[_UIPointerEffectPlatterView alloc] initWithTargetedPreview:targetedPreview];
  view = [targetedPreview view];
  _window = [view _window];
  if (!_window)
  {

    goto LABEL_6;
  }

  v8 = _window;
  _isVisible = [targetedPreview _isVisible];

  if (!_isVisible)
  {
LABEL_6:
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __55___UIPointerContentEffect__createAndInstallPlatterView__block_invoke_3;
    v35[3] = &unk_1E70F35B8;
    v23 = targetedPreview;
    v36 = v23;
    v24 = v5;
    v37 = v24;
    [(_UIPointerContentEffect *)self _modifyEffectContainerViewHierarchy:v35 waitForCACommit:0];
    target = [v23 target];
    [target center];
    [(_UIPointerEffectPlatterView *)v24 setCenter:?];

    [(UIView *)v24 center];
    [(_UIPointerContentEffect *)self setInitialEffectPlatterPosition:?];

    view2 = v36;
    goto LABEL_11;
  }

  view2 = [targetedPreview view];
  v11 = [(_UIPointerContentEffect *)self _positionReferenceViewForPreview:targetedPreview];
  target2 = [targetedPreview target];
  container = [target2 container];

  if (v11)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __55___UIPointerContentEffect__createAndInstallPlatterView__block_invoke;
    v41[3] = &unk_1E70F6228;
    v42 = container;
    v14 = v5;
    v43 = v14;
    v15 = v11;
    v44 = v15;
    [(_UIPointerContentEffect *)self _modifyEffectContainerViewHierarchy:v41 waitForCACommit:0];
    v16 = container;
    v17 = v11;
    v18 = objc_opt_new();
    layer = [v15 layer];
    [v18 setSourceLayer:layer];

    [v18 setKeyPath:@"zPosition"];
    [v18 setDuration:INFINITY];
    layer2 = [(UIView *)v14 layer];
    [layer2 addAnimation:v18 forKey:@"_UIPointerContentEffect.sourceViewZPositionMatchProperty"];

    v21 = &v42;
    v11 = v17;
    container = v16;
    v22 = &v43;
  }

  else
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __55___UIPointerContentEffect__createAndInstallPlatterView__block_invoke_2;
    v38[3] = &unk_1E70F35B8;
    v21 = &v39;
    v39 = container;
    v22 = &v40;
    v40 = v5;
    [(_UIPointerContentEffect *)self _modifyEffectContainerViewHierarchy:v38 waitForCACommit:0];
  }

  [(_UIPointerContentEffect *)self setPositionReferenceView:v11];
  [(_UIPointerContentEffect *)self setSublayerObservationView:container];
  sublayerObservationView = [(_UIPointerContentEffect *)self sublayerObservationView];
  layer3 = [sublayerObservationView layer];
  [layer3 addObserver:self forKeyPath:@"sublayers" options:0 context:0];

  _window2 = [view2 _window];
  [(_UIPointerContentEffect *)self setSubtreeMonitoredWindow:_window2];

  subtreeMonitoredWindow = [(_UIPointerContentEffect *)self subtreeMonitoredWindow];
  [subtreeMonitoredWindow _registerSubtreeMonitor:self];

  [(_UIPointerContentEffect *)self setInitialEffectPlatterPosition:1.79769313e308, 1.79769313e308];
  [(_UIPointerContentEffect *)self _anchorPlatterView:v5 toPreview:targetedPreview updateBounds:0];
  parameters = [targetedPreview parameters];
  visiblePath = [parameters visiblePath];

  if (!visiblePath)
  {
    [(_UIPointerContentEffect *)self setBoundsObservationView:view2];
    boundsObservationView = [(_UIPointerContentEffect *)self boundsObservationView];
    layer4 = [boundsObservationView layer];
    [layer4 addObserver:self forKeyPath:@"bounds" options:1 context:0];
  }

LABEL_11:
  [(_UIPointerContentEffect *)self _updatePlatterView:v5 forStyle:style];
  [(_UIPointerEffectPlatterView *)v5 setGeometryFrozen:1];
  [(_UIPointerEffectPlatterView *)v5 setPressed:self->_pressed];
  view3 = [targetedPreview view];
  -[UIView _setFlipsHorizontalAxis:](v5, "_setFlipsHorizontalAxis:", [view3 _flipsHorizontalAxis]);

  [(_UIPointerContentEffect *)self setPlatterView:v5];
}

- (void)_tearDownPlatterView
{
  [(_UIPointerContentEffect *)self _cleanUpObservation];
  platterView = [(_UIPointerContentEffect *)self platterView];
  [platterView removeFromSuperview];

  [(_UIPointerContentEffect *)self setPlatterView:0];
}

- (id)_positionReferenceViewForPreview:(id)preview
{
  v21 = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  if ([previewCopy _sourceViewIsInViewHierarchy])
  {
    view = [previewCopy view];
    if (view)
    {
      while (1)
      {
        superview = [view superview];
        target = [previewCopy target];
        container = [target container];

        if (superview == container)
        {
          break;
        }

        view = superview;
        if (!superview)
        {
          goto LABEL_18;
        }
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      _accessoryViews = [previewCopy _accessoryViews];
      v9 = [_accessoryViews countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(_accessoryViews);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            if (v13 && [(UIView *)*(*(&v16 + 1) + 8 * i) _viewOrderRelativeToView:view requireIntersection:1]== -2)
            {
              v14 = v13;

              view = v14;
            }
          }

          v10 = [_accessoryViews countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {
    view = 0;
  }

LABEL_18:

  return view;
}

- (void)_anchorPlatterView:(id)view toPreview:(id)preview updateBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  v95[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  previewCopy = preview;
  [viewCopy setGeometryFrozen:0];
  view = [previewCopy view];
  [previewCopy size];
  v13 = v11;
  v14 = v12;
  if (!boundsCopy)
  {
    if ([previewCopy _hasCustomTarget])
    {
      target = [previewCopy target];
      [target center];
      v30 = v29;
      v32 = v31;
      target2 = [previewCopy target];
      container = [target2 container];
      [view convertPoint:container fromView:{v30, v32}];
      v23 = v35;
      v25 = v36;
    }

    else
    {
      parameters = [previewCopy parameters];
      visiblePath = [parameters visiblePath];

      if (!visiblePath)
      {
        [view bounds];
        v23 = v85 + v84 * 0.5;
        v25 = v87 + v86 * 0.5;
        goto LABEL_8;
      }

      target = [previewCopy parameters];
      target2 = [target visiblePath];
      [target2 bounds];
      v23 = v40 + v39 * 0.5;
      v25 = v42 + v41 * 0.5;
    }

LABEL_8:
    v27 = 0.0;
    v26 = 0.0;
    goto LABEL_9;
  }

  [viewCopy setBounds:{0.0, 0.0, v11, v12}];
  [viewCopy layoutIfNeeded];
  target3 = [previewCopy target];
  container2 = [target3 container];
  [(_UIPointerContentEffect *)self initialEffectPlatterPosition];
  v18 = v17;
  v20 = v19;
  view2 = [previewCopy view];
  [container2 convertPoint:view2 toView:{v18, v20}];
  v23 = v22;
  v25 = v24;

  v26 = v13 * 0.5 + 0.0 - v23;
  v27 = v14 * 0.5 + 0.0 - v25;
LABEL_9:
  target4 = [previewCopy target];
  container3 = [target4 container];
  [container3 _currentScreenScale];
  v88 = v23;
  UIRectCenteredAboutPointScale(0.0, 0.0, v13, v14, v23, v25, v45);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;

  v96.origin.x = v47;
  v96.origin.y = v49;
  v96.size.width = v51;
  v96.size.height = v53;
  v97 = CGRectOffset(v96, v26, v27);
  x = v97.origin.x;
  v89 = v97.origin.x;
  y = v97.origin.y;
  width = v97.size.width;
  height = v97.size.height;
  [view bounds];
  v59 = v58;
  rect = v60;
  v62 = v61;
  v64 = v63;
  v90 = v63;
  v98.origin.x = x;
  v98.origin.y = y;
  v98.size.width = width;
  v98.size.height = height;
  MinX = CGRectGetMinX(v98);
  v99.origin.x = v59;
  v99.origin.y = rect;
  v99.size.width = v62;
  v99.size.height = v64;
  v93 = MinX / CGRectGetWidth(v99);
  v100.origin.x = v89;
  v100.origin.y = y;
  v100.size.width = width;
  v100.size.height = height;
  MinY = CGRectGetMinY(v100);
  v101.origin.x = v59;
  v101.origin.y = rect;
  v101.size.width = v62;
  v101.size.height = v90;
  v92 = MinY / CGRectGetHeight(v101);
  v102.origin.x = v89;
  v102.origin.y = y;
  v102.size.width = width;
  v102.size.height = height;
  v67 = CGRectGetWidth(v102);
  v103.origin.x = v59;
  v103.origin.y = rect;
  v103.size.width = v62;
  v103.size.height = v90;
  v91 = v67 / CGRectGetWidth(v103);
  v104.origin.x = v89;
  v104.origin.y = y;
  v104.size.width = width;
  v104.size.height = height;
  v68 = CGRectGetHeight(v104);
  v105.origin.x = v59;
  v105.origin.y = rect;
  v105.size.width = v62;
  v105.size.height = v90;
  v69 = v92 + v68 / CGRectGetHeight(v105);
  v70 = objc_opt_new();
  layer = [view layer];
  [v70 setSourceLayer:layer];

  [v70 setDuration:INFINITY];
  [v70 setAdditive:1];
  [v70 setUsesNormalizedCoordinates:1];
  v72 = [MEMORY[0x1E696B098] valueWithCGPoint:{v93, v92}];
  v95[0] = v72;
  v73 = [MEMORY[0x1E696B098] valueWithCGPoint:{v93 + v91, v92}];
  v95[1] = v73;
  v74 = [MEMORY[0x1E696B098] valueWithCGPoint:{v93 + v91, v69}];
  v95[2] = v74;
  v75 = [MEMORY[0x1E696B098] valueWithCGPoint:{v93, v69}];
  v95[3] = v75;
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:4];
  [v70 setSourcePoints:v76];

  layer2 = [viewCopy layer];
  [layer2 removeAnimationForKey:@"_UIPointerContentEffect.sourceViewMatchMove"];

  layer3 = [viewCopy layer];
  [layer3 addAnimation:v70 forKey:@"_UIPointerContentEffect.sourceViewMatchMove"];

  [viewCopy setCenter:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  [(_UIPointerContentEffect *)self initialEffectPlatterPosition];
  if (v80 == 1.79769313e308 && v79 == 1.79769313e308)
  {
    view3 = [previewCopy view];
    target5 = [previewCopy target];
    container4 = [target5 container];
    [view3 convertPoint:container4 toView:{v88, v25}];
    [(_UIPointerContentEffect *)self setInitialEffectPlatterPosition:?];
  }

  [viewCopy setGeometryFrozen:{1, *&v25, *&v88}];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  changeCopy = change;
  style = [(_UIPointerContentEffect *)self style];
  targetedPreview = [style targetedPreview];

  target = [targetedPreview target];
  container = [target container];

  view = [targetedPreview view];
  sublayerObservationView = [(_UIPointerContentEffect *)self sublayerObservationView];
  boundsObservationView = [(_UIPointerContentEffect *)self boundsObservationView];
  if (sublayerObservationView && ([sublayerObservationView layer], v17 = objc_claimAutoreleasedReturnValue(), v17, v17 == objectCopy))
  {
    if (!self->_flags.isRearrangingEffectViews && !self->_flags.stopViewOrderPreservation)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __74___UIPointerContentEffect_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v36[3] = &unk_1E70F3590;
      v36[4] = self;
      [(_UIPointerContentEffect *)self _modifyEffectContainerViewHierarchy:v36 waitForCACommit:1];
    }
  }

  else if (boundsObservationView)
  {
    layer = [boundsObservationView layer];

    if (layer == objectCopy)
    {
      v19 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      [v19 CGRectValue];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      platterView = [(_UIPointerContentEffect *)self platterView];
      [platterView bounds];
      v38.origin.x = v29;
      v38.origin.y = v30;
      v38.size.width = v31;
      v38.size.height = v32;
      v37.origin.x = v21;
      v37.origin.y = v23;
      v37.size.width = v25;
      v37.size.height = v27;
      v33 = CGRectEqualToRect(v37, v38);

      if (!v33)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __74___UIPointerContentEffect_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
        v34[3] = &unk_1E70F35B8;
        v34[4] = self;
        v35 = targetedPreview;
        [(_UIPointerContentEffect *)self _modifyEffectContainerViewHierarchy:v34 waitForCACommit:1];
      }
    }
  }
}

- (void)_cleanUpObservation
{
  subtreeMonitoredWindow = [(_UIPointerContentEffect *)self subtreeMonitoredWindow];
  if (subtreeMonitoredWindow)
  {
    [(_UIPointerContentEffect *)self setSubtreeMonitoredWindow:0];
    [subtreeMonitoredWindow _unregisterSubtreeMonitor:self];
  }

  sublayerObservationView = [(_UIPointerContentEffect *)self sublayerObservationView];
  if (sublayerObservationView)
  {
    [(_UIPointerContentEffect *)self setSublayerObservationView:0];
    layer = [sublayerObservationView layer];
    [layer removeObserver:self forKeyPath:@"sublayers"];
  }

  boundsObservationView = [(_UIPointerContentEffect *)self boundsObservationView];
  if (boundsObservationView)
  {
    [(_UIPointerContentEffect *)self setBoundsObservationView:0];
    layer2 = [boundsObservationView layer];
    [layer2 removeObserver:self forKeyPath:@"bounds"];
  }
}

- (void)_modifyEffectContainerViewHierarchy:(id)hierarchy waitForCACommit:(BOOL)commit
{
  commitCopy = commit;
  hierarchyCopy = hierarchy;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __79___UIPointerContentEffect__modifyEffectContainerViewHierarchy_waitForCACommit___block_invoke;
  v13 = &unk_1E70F37C0;
  selfCopy = self;
  v7 = hierarchyCopy;
  v15 = v7;
  v8 = _Block_copy(&v10);
  v9 = v8;
  if (commitCopy)
  {
    [MEMORY[0x1E6979518] addCommitHandler:v8 forPhase:{1, v10, v11, v12, v13, selfCopy}];
  }

  else
  {
    (*(v8 + 2))(v8);
  }
}

- (void)_ensureRelativeEffectViewOrderInContainer
{
  v24[5] = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    if (!self->_flags.isRearrangingEffectViews)
    {
      v22 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v24[0]) = 0;
        _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Called _ensureRelativeEffectViewOrderInContainer without pausing sublayer observation!", v24, 2u);
      }
    }
  }

  else if (!self->_flags.isRearrangingEffectViews)
  {
    v23 = *(__UILogGetCategoryCachedImpl("Assert", &_ensureRelativeEffectViewOrderInContainer___s_category) + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Called _ensureRelativeEffectViewOrderInContainer without pausing sublayer observation!", v24, 2u);
    }
  }

  style = [(_UIPointerContentEffect *)self style];
  platterView = [(_UIPointerContentEffect *)self platterView];
  targetedPreview = [style targetedPreview];
  target = [targetedPreview target];
  container = [target container];

  positionReferenceView = [(_UIPointerContentEffect *)self positionReferenceView];
  layer = [container layer];
  sublayers = [layer sublayers];

  if (!sublayers || ([container layer], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "sublayers"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(positionReferenceView, "layer"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "indexOfObject:", v13), v13, v12, v11, v14 == 0x7FFFFFFFFFFFFFFFLL))
  {

    subviews = [container subviews];
    v14 = [subviews count];

    positionReferenceView = 0;
  }

  if ([(_UIPointerContentEffect *)self state]!= 1)
  {
    lumaSamplingBackdrop2 = 0;
LABEL_14:
    pointerPortal2 = 0;
    goto LABEL_17;
  }

  lumaSamplingBackdrop = [(_UIPointerContentEffect *)self lumaSamplingBackdrop];
  superview = [lumaSamplingBackdrop superview];
  if (superview == container)
  {
    lumaSamplingBackdrop2 = [(_UIPointerContentEffect *)self lumaSamplingBackdrop];
  }

  else
  {
    lumaSamplingBackdrop2 = 0;
  }

  if (![style pointerUnderlapsContent])
  {
    goto LABEL_14;
  }

  pointerPortal = [(_UIPointerContentEffect *)self pointerPortal];
  superview2 = [pointerPortal superview];
  if (superview2 == container)
  {
    pointerPortal2 = [(_UIPointerContentEffect *)self pointerPortal];
  }

  else
  {
    pointerPortal2 = 0;
  }

LABEL_17:
  v24[0] = lumaSamplingBackdrop2;
  v24[1] = positionReferenceView;
  v24[2] = pointerPortal2;
  v24[3] = platterView;
  [container _ensureViewsAreInstalledInRelativeOrder:v24 viewCount:4 insertionStartIndex:v14];
}

- (BOOL)_monitorsView:(id)view
{
  viewCopy = view;
  style = [(_UIPointerContentEffect *)self style];
  targetedPreview = [style targetedPreview];
  view = [targetedPreview view];
  v8 = [viewCopy containsView:view];

  return v8;
}

- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview
{
  viewCopy = view;
  toSuperviewCopy = toSuperview;
  style = [(_UIPointerContentEffect *)self style];
  targetedPreview = [style targetedPreview];
  view = [targetedPreview view];

  v12 = [view isDescendantOfView:viewCopy];
  if (v12)
  {
    targetedPreview = [toSuperviewCopy _window];
    if (!targetedPreview)
    {
      goto LABEL_7;
    }
  }

  platterView = [(_UIPointerContentEffect *)self platterView];
  v14 = [viewCopy containsView:platterView];

  if (v12)
  {

    if ((v14 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v14)
  {
LABEL_7:
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76___UIPointerContentEffect__monitoredView_willMoveFromSuperview_toSuperview___block_invoke;
    v15[3] = &unk_1E70F3590;
    v15[4] = self;
    [(_UIPointerContentEffect *)self _modifyEffectContainerViewHierarchy:v15 waitForCACommit:1];
  }

LABEL_8:
}

- (void)setDescriptor:(id)descriptor andKey:(id)key
{
  descriptorCopy = descriptor;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPointerContentEffect.m" lineNumber:912 description:{@"Attempting to configure pointer effect with incorrect descriptor type %@", descriptorCopy}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIPointerContentEffect.m" lineNumber:913 description:{@"Attempting to configure pointer effect with incorrect key type %@", keyCopy}];
  }

  [(_UIPointerContentEffect *)self _setStyle:descriptorCopy andRegion:keyCopy];
}

- (id)previewForContinuingToEffectWithPreview:(id)preview
{
  previewCopy = preview;
  platterView = [(_UIPointerContentEffect *)self platterView];
  if (-[_UIPointerContentEffect state](self, "state") == 1 && ([platterView window], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(platterView, "targetedPreview"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "view"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(previewCopy, "view"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v7, v9 == v10))
  {
    self->_flags.stopViewOrderPreservation = 1;
    v11 = [[UITargetedPreview alloc] initWithView:platterView];
    [(UITargetedPreview *)v11 set_matchableProperties:&unk_1EFE2D9F0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  completions = self->_completions;
  aBlock = completionCopy;
  if (!completions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_completions;
    self->_completions = array;

    completionCopy = aBlock;
    completions = self->_completions;
  }

  v8 = _Block_copy(completionCopy);
  [(NSMutableArray *)completions addObject:v8];
}

- (CGPoint)hoverLocation
{
  x = self->_hoverLocation.x;
  y = self->_hoverLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIView)lumaSamplingBackdrop
{
  WeakRetained = objc_loadWeakRetained(&self->_lumaSamplingBackdrop);

  return WeakRetained;
}

- (UIView)pointerPortal
{
  WeakRetained = objc_loadWeakRetained(&self->_pointerPortal);

  return WeakRetained;
}

- (UIView)positionReferenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_positionReferenceView);

  return WeakRetained;
}

- (UIWindow)subtreeMonitoredWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_subtreeMonitoredWindow);

  return WeakRetained;
}

- (UIView)sublayerObservationView
{
  WeakRetained = objc_loadWeakRetained(&self->_sublayerObservationView);

  return WeakRetained;
}

- (UIView)boundsObservationView
{
  WeakRetained = objc_loadWeakRetained(&self->_boundsObservationView);

  return WeakRetained;
}

- (CGPoint)initialEffectPlatterPosition
{
  x = self->_initialEffectPlatterPosition.x;
  y = self->_initialEffectPlatterPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end