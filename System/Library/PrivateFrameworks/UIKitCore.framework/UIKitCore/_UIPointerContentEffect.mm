@interface _UIPointerContentEffect
- (BOOL)_monitorsView:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGPoint)hoverLocation;
- (CGPoint)initialEffectPlatterPosition;
- (UIView)boundsObservationView;
- (UIView)lumaSamplingBackdrop;
- (UIView)pointerPortal;
- (UIView)positionReferenceView;
- (UIView)sublayerObservationView;
- (UIWindow)subtreeMonitoredWindow;
- (_UIPointerContentEffect)initWithStyle:(id)a3 region:(id)a4;
- (double)_currentAnimatedLiftProgress;
- (id)_positionReferenceViewForPreview:(id)a3;
- (id)previewForContinuingToEffectWithPreview:(id)a3;
- (unint64_t)hash;
- (void)_anchorPlatterView:(id)a3 toPreview:(id)a4 updateBounds:(BOOL)a5;
- (void)_cleanUpObservation;
- (void)_commitPointerStyleToArbiterWithCompletion:(id)a3;
- (void)_createAndInstallPlatterView;
- (void)_ensureRelativeEffectViewOrderInContainer;
- (void)_modifyEffectContainerViewHierarchy:(id)a3 waitForCACommit:(BOOL)a4;
- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5;
- (void)_setStyle:(id)a3 andRegion:(id)a4;
- (void)_tearDownPlatterView;
- (void)_updateFromState:(int64_t)a3 toState:(int64_t)a4;
- (void)_updatePlatterView:(id)a3 forStyle:(id)a4;
- (void)addCompletion:(id)a3;
- (void)begin;
- (void)dealloc;
- (void)end:(BOOL)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setDescriptor:(id)a3 andKey:(id)a4;
- (void)setHoverLocation:(CGPoint)a3;
- (void)setLiftProgress:(double)a3;
- (void)setPressed:(BOOL)a3 animated:(BOOL)a4;
- (void)setStyle:(id)a3;
@end

@implementation _UIPointerContentEffect

- (_UIPointerContentEffect)initWithStyle:(id)a3 region:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (self)
  {
    if ([v7 type] != 1 || (objc_msgSend(v7, "targetedPreview"), v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [v7 type];
      v12 = [v7 targetedPreview];
      [v10 handleFailureInMethod:a2 object:self file:@"_UIPointerContentEffect.m" lineNumber:97 description:{@"Attempting to create a _UIPointerContentEffect with an incompatible style! type: %lu, preview: %@", v11, v12}];
    }

    [(_UIPointerContentEffect *)self _setStyle:v7 andRegion:v8];
    v13 = objc_opt_new();
    [(_UIPointerContentEffect *)self setLiftProgressProperty:v13];

    v14 = [(_UIPointerContentEffect *)self liftProgressProperty];
    [v14 setValue:1.0];

    objc_initWeak(&location, self);
    v15 = [(_UIPointerContentEffect *)self liftProgressProperty];
    v21[0] = v15;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 region];
    v6 = [(_UIPointerContentEffect *)self region];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(_UIPointerContentEffect *)self region];
  v3 = [v2 hash];

  return v3;
}

- (void)_setStyle:(id)a3 andRegion:(id)a4
{
  v6 = a4;
  [(_UIPointerContentEffect *)self setStyle:a3];
  [(_UIPointerContentEffect *)self setRegion:v6];

  if ([(_UIPointerContentEffect *)self state]== 1)
  {

    [(_UIPointerContentEffect *)self _commitPointerStyleToArbiterWithCompletion:0];
  }
}

- (void)setStyle:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_style] & 1) == 0)
  {
    objc_storeStrong(&self->_style, a3);
    v5 = [(_UIPointerContentEffect *)self platterView];
    [(_UIPointerContentEffect *)self _updatePlatterView:v5 forStyle:self->_style];
  }
}

- (void)_updatePlatterView:(id)a3 forStyle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 targetedPreview];
  [v5 setTargetedPreview:v7];
  if (([v6 options] & 0x400) != 0)
  {
    [v7 _frame];
    v8 = -CGRectGetMinX(v27);
    [v7 _frame];
    v9 = -CGRectGetMinY(v28);
    v10 = [v6 pointerShape];
    v11 = [v10 path];

    if (v11)
    {
      v12 = [v10 path];
      v13 = [v12 copy];

      CGAffineTransformMakeTranslation(&v26, v8, v9);
      [v13 applyTransform:&v26];
      v14 = [UIPointerShape shapeWithPath:v13];
    }

    else
    {
      [v10 rect];
      v30 = CGRectOffset(v29, v8, v9);
      x = v30.origin.x;
      y = v30.origin.y;
      width = v30.size.width;
      height = v30.size.height;
      [v10 cornerRadius];
      v14 = [UIPointerShape shapeWithRoundedRect:x cornerRadius:y, width, height, v19];
    }

    [v5 setTintViewShape:v14];
  }

  v20 = [v6 pointerEffect];
  v21 = [v20 tintColorMatrixProvider];
  [v5 setTintColorMatrixProvider:v21];

  if (([v6 options] & 4) != 0)
  {
    v22 = 1;
  }

  else
  {
    if (([v6 options] & 8) == 0)
    {
      goto LABEL_11;
    }

    v22 = 2;
  }

  [v5 setTintMode:v22];
LABEL_11:
  if ([v6 _suppressesMirroring])
  {
    v23 = 18;
  }

  else
  {
    v23 = 0;
  }

  v24 = [v5 layer];
  [v24 setDisableUpdateMask:v23];

  v25 = [v6 pointerEffect];
  [v5 setUseSoftShadow:{objc_msgSend(v25, "useSoftShadow")}];
}

- (void)begin
{
  v3 = [(_UIPointerContentEffect *)self state];
  [(_UIPointerContentEffect *)self setState:1];
  v4 = [(_UIPointerContentEffect *)self state];

  [(_UIPointerContentEffect *)self _updateFromState:v3 toState:v4];
}

- (void)end:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIPointerContentEffect *)self state];
  if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [(_UIPointerContentEffect *)self setState:v6];
  v7 = [(_UIPointerContentEffect *)self state];

  [(_UIPointerContentEffect *)self _updateFromState:v5 toState:v7];
}

- (void)setPressed:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_pressed != a3)
  {
    v14 = v4;
    v15 = v5;
    v6 = a4;
    self->_pressed = a3;
    v9 = [(_UIPointerContentEffect *)self platterView];

    if (v9)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __47___UIPointerContentEffect_setPressed_animated___block_invoke;
      v12[3] = &unk_1E70F35E0;
      v12[4] = self;
      v13 = a3;
      v10 = _Block_copy(v12);
      v11 = v10;
      if (v6)
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

- (void)setLiftProgress:(double)a3
{
  if (vabdd_f64(a3, self->_liftProgress) > 2.22044605e-16)
  {
    self->_liftProgress = a3;
    v5 = [(_UIPointerContentEffect *)self style];
    v6 = [v5 pointerEffect];
    v7 = [v6 liftProgressSpring];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43___UIPointerContentEffect_setLiftProgress___block_invoke;
    v8[3] = &unk_1E70F32F0;
    v8[4] = self;
    *&v8[5] = a3;
    [UIView _animateUsingSpringBehavior:v7 tracking:0 animations:v8 completion:0];
  }
}

- (double)_currentAnimatedLiftProgress
{
  if (self->_pressed)
  {
    return 0.0;
  }

  v3 = [(_UIPointerContentEffect *)self liftProgressProperty];
  [v3 presentationValue];
  v5 = v4;

  return v5;
}

- (void)setHoverLocation:(CGPoint)a3
{
  if (a3.x != self->_hoverLocation.x || a3.y != self->_hoverLocation.y)
  {
    self->_hoverLocation = a3;
    v6 = [(_UIPointerContentEffect *)self state];
    v7 = [(_UIPointerContentEffect *)self state];

    [(_UIPointerContentEffect *)self _updateFromState:v6 toState:v7];
  }
}

- (void)_updateFromState:(int64_t)a3 toState:(int64_t)a4
{
  v8 = [(_UIPointerContentEffect *)self platterView];
  v9 = v8;
  if (a4 != 1 || v8)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [(_UIPointerContentEffect *)self _createAndInstallPlatterView];
    v9 = [(_UIPointerContentEffect *)self platterView];
  }

  self->_flags.stopViewOrderPreservation = 0;
LABEL_6:
  v10 = [(_UIPointerContentEffect *)self style];
  [(_UIPointerContentEffect *)self setAnimationCount:[(_UIPointerContentEffect *)self animationCount]+ 1];
  v11 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  *&v132.a = *MEMORY[0x1E695EFD0];
  *&v132.c = v13;
  *&v132.tx = *(MEMORY[0x1E695EFD0] + 32);
  v14 = 1.0;
  if (a4 == 1)
  {
    v15 = [v10 pointerEffect];
    [v15 _plasmaRubberbandFactor];
    v17 = v16;
    v19 = v18;

    [(_UIPointerContentEffect *)self hoverLocation];
    v21 = v20;
    v23 = v22;
    v24 = [(_UIPointerContentEffect *)self region];
    [v24 rect];
    v29 = v21 - (v26 + v25 * 0.5);
    v30 = v23 - (v28 + v27 * 0.5);

    v31 = v17 * v29;
    v32 = v19 * v30;
    [(_UIPointerContentEffect *)self _currentAnimatedLiftProgress];
    v34 = v33;
    [v10 contentScale];
    v36 = 1.0 - v34 + v34 * v35;
    if ([v10 options])
    {
      CGAffineTransformMakeScale(&v132, v36, v36);
      v46 = [v10 pointerEffect];
      [v46 _plasmaLensParallaxFactor];
      v48 = v47;

      v49 = v31 * v48;
      v50 = v32 * v48;
      *&v130.a = *&v132.a;
      *&v130.c = *&v132.c;
      v51 = *&v132.tx;
    }

    else
    {
      if (([v10 pointerMergesWithContent] & 1) == 0)
      {
        v37 = [v10 pointerShape];
        v38 = [v37 path];
        if (v38)
        {
          v39 = [v37 path];
          [v39 bounds];
          v42 = v41 + v40 * 0.5;
          v45 = v44 + v43 * 0.5;
        }

        else
        {
          [v37 rect];
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
    if (([v10 options] & 0x2000) != 0)
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
  v102 = v9;
  v125 = v102;
  v126 = v132;
  v127 = v14;
  v105 = a3;
  v128 = a3;
  v129 = a4;
  v58 = _Block_copy(aBlock);
  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = __52___UIPointerContentEffect__updateFromState_toState___block_invoke_2;
  v123[3] = &unk_1E7100788;
  v123[4] = self;
  v123[5] = a2;
  v59 = _Block_copy(v123);
  v60 = objc_opt_new();
  v61 = [v10 pointerEffect];
  [v61 scaleUpAnimationDampingRatio];
  v63 = v62;
  v64 = [v10 pointerEffect];
  [v64 scaleUpAnimationResponse];
  [v60 setDampingRatio:v63 response:v65];

  v104 = v58;
  [UIView _animateUsingSpringBehavior:v60 tracking:0 animations:v58 completion:v59];
  v66 = +[_UIPointerArbiter sharedArbiter];
  v67 = [v66 lensView];

  v68 = objc_opt_new();
  v69 = [v10 pointerEffect];
  [v69 dampedAnimationDampingRatio];
  v71 = v70;
  v72 = [v10 pointerEffect];
  [v72 dampedAnimationResponse];
  [v68 setDampingRatio:v71 response:v73];

  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __52___UIPointerContentEffect__updateFromState_toState___block_invoke_4;
  v118[3] = &unk_1E70F4378;
  v118[4] = self;
  v122 = a4;
  v74 = v10;
  v119 = v74;
  v106 = v67;
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
    v114 = self;
    v115 = a4;
    v116 = v31;
    v117 = v32;
    v113 = v77;
    v101 = _Block_copy(v111);
    v78 = [v77 superview];

    if (v78)
    {
      v79 = [v77 superview];
      [v79 bringSubviewToFront:v77];
    }

    v80 = [v77 layer];
    v81 = [v80 presentationLayer];
    [v81 opacity];
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

      v87 = v110;
      v60 = v103;
    }

    else
    {
      v100 = v75;
      v84 = [v76 targetedPreview];
      v85 = [v84 target];
      v86 = [v85 container];
      v87 = [v86 _window];

      v88 = [v77 window];

      if (v88 != v87)
      {
        [v87 addSubview:v77];
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
  v93 = [(_UIPointerContentEffect *)self region];
  v94 = [v93 referenceView];
  v95 = [v94 _window];
  if (v95)
  {

    v96 = v105;
    if (v105 != 1 && a4 == 1)
    {
      [(_UIPointerContentEffect *)self _commitPointerStyleToArbiterWithCompletion:v92];
      goto LABEL_37;
    }
  }

  else
  {

    v96 = v105;
  }

  if (v96 != 1 || a4 == 1)
  {
    v92[2](v92);
  }

  else
  {
    +[_UIPointerArbiter sharedArbiter];
    v98 = v97 = v60;
    v99 = [(_UIPointerContentEffect *)self region];
    [v98 exitRegion:v99 removeStyle:a4 == 0 completion:v92];

    v60 = v97;
  }

LABEL_37:
}

- (void)_commitPointerStyleToArbiterWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_UIPointerContentEffect *)self style];
  if (([v5 options] & 0x8000) != 0)
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v6 = +[_UIPointerArbiter sharedArbiter];
    v7 = [(_UIPointerContentEffect *)self region];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70___UIPointerContentEffect__commitPointerStyleToArbiterWithCompletion___block_invoke;
    v8[3] = &unk_1E71239A0;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    [v6 applyStyle:v9 forRegion:v7 effectSourceHandler:v8 completion:v4];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)_createAndInstallPlatterView
{
  v3 = [(_UIPointerContentEffect *)self style];
  v4 = [v3 targetedPreview];
  v5 = [[_UIPointerEffectPlatterView alloc] initWithTargetedPreview:v4];
  v6 = [v4 view];
  v7 = [v6 _window];
  if (!v7)
  {

    goto LABEL_6;
  }

  v8 = v7;
  v9 = [v4 _isVisible];

  if (!v9)
  {
LABEL_6:
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __55___UIPointerContentEffect__createAndInstallPlatterView__block_invoke_3;
    v35[3] = &unk_1E70F35B8;
    v23 = v4;
    v36 = v23;
    v24 = v5;
    v37 = v24;
    [(_UIPointerContentEffect *)self _modifyEffectContainerViewHierarchy:v35 waitForCACommit:0];
    v25 = [v23 target];
    [v25 center];
    [(_UIPointerEffectPlatterView *)v24 setCenter:?];

    [(UIView *)v24 center];
    [(_UIPointerContentEffect *)self setInitialEffectPlatterPosition:?];

    v10 = v36;
    goto LABEL_11;
  }

  v10 = [v4 view];
  v11 = [(_UIPointerContentEffect *)self _positionReferenceViewForPreview:v4];
  v12 = [v4 target];
  v13 = [v12 container];

  if (v11)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __55___UIPointerContentEffect__createAndInstallPlatterView__block_invoke;
    v41[3] = &unk_1E70F6228;
    v42 = v13;
    v14 = v5;
    v43 = v14;
    v15 = v11;
    v44 = v15;
    [(_UIPointerContentEffect *)self _modifyEffectContainerViewHierarchy:v41 waitForCACommit:0];
    v16 = v13;
    v17 = v11;
    v18 = objc_opt_new();
    v19 = [v15 layer];
    [v18 setSourceLayer:v19];

    [v18 setKeyPath:@"zPosition"];
    [v18 setDuration:INFINITY];
    v20 = [(UIView *)v14 layer];
    [v20 addAnimation:v18 forKey:@"_UIPointerContentEffect.sourceViewZPositionMatchProperty"];

    v21 = &v42;
    v11 = v17;
    v13 = v16;
    v22 = &v43;
  }

  else
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __55___UIPointerContentEffect__createAndInstallPlatterView__block_invoke_2;
    v38[3] = &unk_1E70F35B8;
    v21 = &v39;
    v39 = v13;
    v22 = &v40;
    v40 = v5;
    [(_UIPointerContentEffect *)self _modifyEffectContainerViewHierarchy:v38 waitForCACommit:0];
  }

  [(_UIPointerContentEffect *)self setPositionReferenceView:v11];
  [(_UIPointerContentEffect *)self setSublayerObservationView:v13];
  v26 = [(_UIPointerContentEffect *)self sublayerObservationView];
  v27 = [v26 layer];
  [v27 addObserver:self forKeyPath:@"sublayers" options:0 context:0];

  v28 = [v10 _window];
  [(_UIPointerContentEffect *)self setSubtreeMonitoredWindow:v28];

  v29 = [(_UIPointerContentEffect *)self subtreeMonitoredWindow];
  [v29 _registerSubtreeMonitor:self];

  [(_UIPointerContentEffect *)self setInitialEffectPlatterPosition:1.79769313e308, 1.79769313e308];
  [(_UIPointerContentEffect *)self _anchorPlatterView:v5 toPreview:v4 updateBounds:0];
  v30 = [v4 parameters];
  v31 = [v30 visiblePath];

  if (!v31)
  {
    [(_UIPointerContentEffect *)self setBoundsObservationView:v10];
    v32 = [(_UIPointerContentEffect *)self boundsObservationView];
    v33 = [v32 layer];
    [v33 addObserver:self forKeyPath:@"bounds" options:1 context:0];
  }

LABEL_11:
  [(_UIPointerContentEffect *)self _updatePlatterView:v5 forStyle:v3];
  [(_UIPointerEffectPlatterView *)v5 setGeometryFrozen:1];
  [(_UIPointerEffectPlatterView *)v5 setPressed:self->_pressed];
  v34 = [v4 view];
  -[UIView _setFlipsHorizontalAxis:](v5, "_setFlipsHorizontalAxis:", [v34 _flipsHorizontalAxis]);

  [(_UIPointerContentEffect *)self setPlatterView:v5];
}

- (void)_tearDownPlatterView
{
  [(_UIPointerContentEffect *)self _cleanUpObservation];
  v3 = [(_UIPointerContentEffect *)self platterView];
  [v3 removeFromSuperview];

  [(_UIPointerContentEffect *)self setPlatterView:0];
}

- (id)_positionReferenceViewForPreview:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 _sourceViewIsInViewHierarchy])
  {
    v4 = [v3 view];
    if (v4)
    {
      while (1)
      {
        v5 = [v4 superview];
        v6 = [v3 target];
        v7 = [v6 container];

        if (v5 == v7)
        {
          break;
        }

        v4 = v5;
        if (!v5)
        {
          goto LABEL_18;
        }
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [v3 _accessoryViews];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            if (v13 && [(UIView *)*(*(&v16 + 1) + 8 * i) _viewOrderRelativeToView:v4 requireIntersection:1]== -2)
            {
              v14 = v13;

              v4 = v14;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_18:

  return v4;
}

- (void)_anchorPlatterView:(id)a3 toPreview:(id)a4 updateBounds:(BOOL)a5
{
  v5 = a5;
  v95[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  [v8 setGeometryFrozen:0];
  v10 = [v9 view];
  [v9 size];
  v13 = v11;
  v14 = v12;
  if (!v5)
  {
    if ([v9 _hasCustomTarget])
    {
      v28 = [v9 target];
      [v28 center];
      v30 = v29;
      v32 = v31;
      v33 = [v9 target];
      v34 = [v33 container];
      [v10 convertPoint:v34 fromView:{v30, v32}];
      v23 = v35;
      v25 = v36;
    }

    else
    {
      v37 = [v9 parameters];
      v38 = [v37 visiblePath];

      if (!v38)
      {
        [v10 bounds];
        v23 = v85 + v84 * 0.5;
        v25 = v87 + v86 * 0.5;
        goto LABEL_8;
      }

      v28 = [v9 parameters];
      v33 = [v28 visiblePath];
      [v33 bounds];
      v23 = v40 + v39 * 0.5;
      v25 = v42 + v41 * 0.5;
    }

LABEL_8:
    v27 = 0.0;
    v26 = 0.0;
    goto LABEL_9;
  }

  [v8 setBounds:{0.0, 0.0, v11, v12}];
  [v8 layoutIfNeeded];
  v15 = [v9 target];
  v16 = [v15 container];
  [(_UIPointerContentEffect *)self initialEffectPlatterPosition];
  v18 = v17;
  v20 = v19;
  v21 = [v9 view];
  [v16 convertPoint:v21 toView:{v18, v20}];
  v23 = v22;
  v25 = v24;

  v26 = v13 * 0.5 + 0.0 - v23;
  v27 = v14 * 0.5 + 0.0 - v25;
LABEL_9:
  v43 = [v9 target];
  v44 = [v43 container];
  [v44 _currentScreenScale];
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
  [v10 bounds];
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
  v71 = [v10 layer];
  [v70 setSourceLayer:v71];

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

  v77 = [v8 layer];
  [v77 removeAnimationForKey:@"_UIPointerContentEffect.sourceViewMatchMove"];

  v78 = [v8 layer];
  [v78 addAnimation:v70 forKey:@"_UIPointerContentEffect.sourceViewMatchMove"];

  [v8 setCenter:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  [(_UIPointerContentEffect *)self initialEffectPlatterPosition];
  if (v80 == 1.79769313e308 && v79 == 1.79769313e308)
  {
    v81 = [v9 view];
    v82 = [v9 target];
    v83 = [v82 container];
    [v81 convertPoint:v83 toView:{v88, v25}];
    [(_UIPointerContentEffect *)self setInitialEffectPlatterPosition:?];
  }

  [v8 setGeometryFrozen:{1, *&v25, *&v88}];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  v9 = a5;
  v10 = [(_UIPointerContentEffect *)self style];
  v11 = [v10 targetedPreview];

  v12 = [v11 target];
  v13 = [v12 container];

  v14 = [v11 view];
  v15 = [(_UIPointerContentEffect *)self sublayerObservationView];
  v16 = [(_UIPointerContentEffect *)self boundsObservationView];
  if (v15 && ([v15 layer], v17 = objc_claimAutoreleasedReturnValue(), v17, v17 == v8))
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

  else if (v16)
  {
    v18 = [v16 layer];

    if (v18 == v8)
    {
      v19 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      [v19 CGRectValue];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v28 = [(_UIPointerContentEffect *)self platterView];
      [v28 bounds];
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
        v35 = v11;
        [(_UIPointerContentEffect *)self _modifyEffectContainerViewHierarchy:v34 waitForCACommit:1];
      }
    }
  }
}

- (void)_cleanUpObservation
{
  v7 = [(_UIPointerContentEffect *)self subtreeMonitoredWindow];
  if (v7)
  {
    [(_UIPointerContentEffect *)self setSubtreeMonitoredWindow:0];
    [v7 _unregisterSubtreeMonitor:self];
  }

  v3 = [(_UIPointerContentEffect *)self sublayerObservationView];
  if (v3)
  {
    [(_UIPointerContentEffect *)self setSublayerObservationView:0];
    v4 = [v3 layer];
    [v4 removeObserver:self forKeyPath:@"sublayers"];
  }

  v5 = [(_UIPointerContentEffect *)self boundsObservationView];
  if (v5)
  {
    [(_UIPointerContentEffect *)self setBoundsObservationView:0];
    v6 = [v5 layer];
    [v6 removeObserver:self forKeyPath:@"bounds"];
  }
}

- (void)_modifyEffectContainerViewHierarchy:(id)a3 waitForCACommit:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __79___UIPointerContentEffect__modifyEffectContainerViewHierarchy_waitForCACommit___block_invoke;
  v13 = &unk_1E70F37C0;
  v14 = self;
  v7 = v6;
  v15 = v7;
  v8 = _Block_copy(&v10);
  v9 = v8;
  if (v4)
  {
    [MEMORY[0x1E6979518] addCommitHandler:v8 forPhase:{1, v10, v11, v12, v13, v14}];
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

  v3 = [(_UIPointerContentEffect *)self style];
  v4 = [(_UIPointerContentEffect *)self platterView];
  v5 = [v3 targetedPreview];
  v6 = [v5 target];
  v7 = [v6 container];

  v8 = [(_UIPointerContentEffect *)self positionReferenceView];
  v9 = [v7 layer];
  v10 = [v9 sublayers];

  if (!v10 || ([v7 layer], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "sublayers"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "layer"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "indexOfObject:", v13), v13, v12, v11, v14 == 0x7FFFFFFFFFFFFFFFLL))
  {

    v15 = [v7 subviews];
    v14 = [v15 count];

    v8 = 0;
  }

  if ([(_UIPointerContentEffect *)self state]!= 1)
  {
    v18 = 0;
LABEL_14:
    v21 = 0;
    goto LABEL_17;
  }

  v16 = [(_UIPointerContentEffect *)self lumaSamplingBackdrop];
  v17 = [v16 superview];
  if (v17 == v7)
  {
    v18 = [(_UIPointerContentEffect *)self lumaSamplingBackdrop];
  }

  else
  {
    v18 = 0;
  }

  if (![v3 pointerUnderlapsContent])
  {
    goto LABEL_14;
  }

  v19 = [(_UIPointerContentEffect *)self pointerPortal];
  v20 = [v19 superview];
  if (v20 == v7)
  {
    v21 = [(_UIPointerContentEffect *)self pointerPortal];
  }

  else
  {
    v21 = 0;
  }

LABEL_17:
  v24[0] = v18;
  v24[1] = v8;
  v24[2] = v21;
  v24[3] = v4;
  [v7 _ensureViewsAreInstalledInRelativeOrder:v24 viewCount:4 insertionStartIndex:v14];
}

- (BOOL)_monitorsView:(id)a3
{
  v4 = a3;
  v5 = [(_UIPointerContentEffect *)self style];
  v6 = [v5 targetedPreview];
  v7 = [v6 view];
  v8 = [v4 containsView:v7];

  return v8;
}

- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(_UIPointerContentEffect *)self style];
  v10 = [v9 targetedPreview];
  v11 = [v10 view];

  v12 = [v11 isDescendantOfView:v7];
  if (v12)
  {
    v10 = [v8 _window];
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v13 = [(_UIPointerContentEffect *)self platterView];
  v14 = [v7 containsView:v13];

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

- (void)setDescriptor:(id)a3 andKey:(id)a4
{
  v10 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIPointerContentEffect.m" lineNumber:912 description:{@"Attempting to configure pointer effect with incorrect descriptor type %@", v10}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIPointerContentEffect.m" lineNumber:913 description:{@"Attempting to configure pointer effect with incorrect key type %@", v7}];
  }

  [(_UIPointerContentEffect *)self _setStyle:v10 andRegion:v7];
}

- (id)previewForContinuingToEffectWithPreview:(id)a3
{
  v4 = a3;
  v5 = [(_UIPointerContentEffect *)self platterView];
  if (-[_UIPointerContentEffect state](self, "state") == 1 && ([v5 window], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "targetedPreview"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "view"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "view"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v7, v9 == v10))
  {
    self->_flags.stopViewOrderPreservation = 1;
    v11 = [[UITargetedPreview alloc] initWithView:v5];
    [(UITargetedPreview *)v11 set_matchableProperties:&unk_1EFE2D9F0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)addCompletion:(id)a3
{
  v4 = a3;
  completions = self->_completions;
  aBlock = v4;
  if (!completions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_completions;
    self->_completions = v6;

    v4 = aBlock;
    completions = self->_completions;
  }

  v8 = _Block_copy(v4);
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