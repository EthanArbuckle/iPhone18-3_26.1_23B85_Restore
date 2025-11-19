@interface _UITabBarTVTransitioner
- (UISpringTimingParameters)slideTimingParameters;
- (_UITabBarTVTransitioner)init;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
- (void)finishTransition;
@end

@implementation _UITabBarTVTransitioner

- (_UITabBarTVTransitioner)init
{
  v3.receiver = self;
  v3.super_class = _UITabBarTVTransitioner;
  result = [(_UITabBarTVTransitioner *)&v3 init];
  if (result)
  {
    result->_transitionStyle = 0;
  }

  return result;
}

- (void)finishTransition
{
  v3 = [(_UITabBarTVTransitioner *)self transitionContext];

  if (v3)
  {
    v4 = [(_UITabBarTVTransitioner *)self transitionContext];
    v18 = [v4 viewForKey:@"UITransitionContextFromView"];

    v5 = [(_UITabBarTVTransitioner *)self transitionContext];
    v6 = [v5 viewForKey:@"UITransitionContextToView"];

    [v18 removeFromSuperview];
    [v18 setAlpha:1.0];
    fromViewOriginalShouldRasterize = self->_fromViewOriginalShouldRasterize;
    v8 = [v18 layer];
    [v8 setShouldRasterize:fromViewOriginalShouldRasterize];

    toViewOriginalShouldRasterize = self->_toViewOriginalShouldRasterize;
    v10 = [v6 layer];
    [v10 setShouldRasterize:toViewOriginalShouldRasterize];

    fromViewLayerOriginalRasterizationScale = self->_fromViewLayerOriginalRasterizationScale;
    v12 = [v18 layer];
    [v12 setRasterizationScale:fromViewLayerOriginalRasterizationScale];

    toViewLayerOriginalRasterizationScale = self->_toViewLayerOriginalRasterizationScale;
    v14 = [v6 layer];
    [v14 setRasterizationScale:toViewLayerOriginalRasterizationScale];

    v15 = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];

    if (v15)
    {
      v16 = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];
      [v16 removeFromSuperview];

      [(_UITabBarTVTransitioner *)self setToViewXFlippedScreenShot:0];
    }

    v17 = [(_UITabBarTVTransitioner *)self transitionContext];
    [v17 completeTransition:1];

    [(_UITabBarTVTransitioner *)self setTransitionContext:0];
  }
}

- (double)transitionDuration:(id)a3
{
  if (self->_transitionStyle != 1)
  {
    return 0.5;
  }

  v3 = [(_UITabBarTVTransitioner *)self slideTimingParameters];
  [v3 settlingDuration];
  v5 = v4;

  return v5;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewForKey:@"UITransitionContextFromView"];
  v6 = [v4 viewForKey:@"UITransitionContextToView"];
  v7 = [v4 containerView];
  v8 = [v4 isAnimated];
  if (v6)
  {
    [v6 setAlpha:0.0];
    [v7 addSubview:v6];
  }

  if (v8)
  {
    v9 = [v5 layer];
    self->_fromViewOriginalShouldRasterize = [v9 shouldRasterize];

    v10 = [v5 layer];
    [v10 rasterizationScale];
    self->_fromViewLayerOriginalRasterizationScale = v11;

    v12 = [v6 layer];
    self->_toViewOriginalShouldRasterize = [v12 shouldRasterize];

    v13 = [v6 layer];
    [v13 rasterizationScale];
    self->_toViewLayerOriginalRasterizationScale = v14;

    v15 = _AXSReduceMotionEnabled();
    if (self->_transitionStyle != 1 || v15)
    {
      v25 = [v5 layer];
      [v25 setShouldRasterize:0];

      v26 = [v6 layer];
      [v26 setShouldRasterize:0];

      [(_UITabBarTVTransitioner *)self setTransitionContext:v4];
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __45___UITabBarTVTransitioner_animateTransition___block_invoke_5;
      v81[3] = &unk_1E70F35B8;
      v82 = v5;
      v83 = v6;
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __45___UITabBarTVTransitioner_animateTransition___block_invoke_6;
      v80[3] = &unk_1E70F5AC0;
      v80[4] = self;
      [UIView animateWithDuration:v81 animations:v80 completion:0.5];
    }

    else
    {
      v16 = [v4 viewControllerForKey:@"UITransitionContextToViewController"];
      v78 = v16;
      if (v16)
      {
        [v4 finalFrameForViewController:v16];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
      }

      else
      {
        v18 = *MEMORY[0x1E695F058];
        v20 = *(MEMORY[0x1E695F058] + 8);
        v22 = *(MEMORY[0x1E695F058] + 16);
        v24 = *(MEMORY[0x1E695F058] + 24);
      }

      v27 = [(_UITabBarTVTransitioner *)self transitionFromRight];
      v28 = [v6 snapshotViewAfterScreenUpdates:1];
      [(_UITabBarTVTransitioner *)self setToViewXFlippedScreenShot:v28];

      v29 = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];

      if (v29)
      {
        v75 = v24;
        v30 = v22;
        v31 = v20;
        v32 = v18;
        CATransform3DMakeScale(&v98, -1.0, 1.0, 1.0);
        v33 = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];
        v34 = [v33 layer];
        v97 = v98;
        [v34 setTransform:&v97];

        v35 = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];
        [v35 frame];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;

        v44 = v37;
        v45 = v39;
        v46 = v41;
        v47 = v43;
        if (v27)
        {
          MinX = CGRectGetMinX(*&v44);
          v99.origin.x = v37;
          v99.origin.y = v39;
          v99.size.width = v41;
          v99.size.height = v43;
          MaxX = MinX - CGRectGetMaxX(v99);
        }

        else
        {
          MaxX = CGRectGetMaxX(*&v44);
        }

        v50 = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];
        [v50 setFrame:{MaxX, v39, v41, v43}];

        v51 = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];
        [v6 addSubview:v51];

        v18 = v32;
        v20 = v31;
        v22 = v30;
        v24 = v75;
      }

      if (v27)
      {
        v52 = 113.0;
      }

      else
      {
        v52 = -113.0;
      }

      v100.origin.x = v18;
      v100.origin.y = v20;
      v100.size.width = v22;
      v100.size.height = v24;
      v101 = CGRectOffset(v100, v52, 0.0);
      [v6 setFrame:{v101.origin.x, v101.origin.y, v101.size.width, v101.size.height}];
      if (_DeviceSupportsLiveTransitions_onceToken != -1)
      {
        dispatch_once(&_DeviceSupportsLiveTransitions_onceToken, &__block_literal_global_140);
      }

      v53 = _DeviceSupportsLiveTransitions_isGoodEnough;
      v54 = [v5 layer];
      v55 = v54;
      v79 = v7;
      v77 = v27;
      if (v53 == 1)
      {
        [v54 setShouldRasterize:0];

        v56 = [v6 layer];
        [v56 setShouldRasterize:0];
      }

      else
      {
        [v54 setShouldRasterize:1];

        v57 = [v5 layer];
        v58 = [v7 traitCollection];
        [v58 displayScale];
        [v57 setRasterizationScale:?];

        v59 = [v6 layer];
        [v59 setShouldRasterize:1];

        v56 = [v6 layer];
        v60 = [v7 traitCollection];
        [v60 displayScale];
        [v56 setRasterizationScale:?];
      }

      LODWORD(v61) = 1051260355;
      LODWORD(v62) = 1059816735;
      LODWORD(v63) = 1.0;
      v76 = [MEMORY[0x1E69793D0] functionWithControlPoints:v61 :0.0 :v62 :v63];
      v74 = [[UICubicTimingParameters alloc] initWithCustomCurve:v76];
      v73 = [[UIViewPropertyAnimator alloc] initWithDuration:v74 timingParameters:0.15];
      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __45___UITabBarTVTransitioner_animateTransition___block_invoke;
      v95[3] = &unk_1E70F3590;
      v64 = v5;
      v96 = v64;
      [(UIViewPropertyAnimator *)v73 addAnimations:v95];
      v65 = [[UIViewPropertyAnimator alloc] initWithDuration:v74 timingParameters:0.37];
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = __45___UITabBarTVTransitioner_animateTransition___block_invoke_2;
      v93[3] = &unk_1E70F3590;
      v66 = v6;
      v94 = v66;
      [(UIViewPropertyAnimator *)v65 addAnimations:v93];
      [(_UITabBarTVTransitioner *)self setTransitionContext:v4];
      v67 = [UIViewPropertyAnimator alloc];
      v68 = [(_UITabBarTVTransitioner *)self slideTimingParameters];
      [v68 settlingDuration];
      v70 = v69;
      v71 = [(_UITabBarTVTransitioner *)self slideTimingParameters];
      v72 = [(UIViewPropertyAnimator *)v67 initWithDuration:v71 timingParameters:v70];

      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __45___UITabBarTVTransitioner_animateTransition___block_invoke_3;
      v85[3] = &unk_1E70F89D0;
      v86 = v64;
      v92 = v77;
      v87 = v66;
      v88 = v18;
      v89 = v20;
      v90 = v22;
      v91 = v24;
      [(UIViewPropertyAnimator *)v72 addAnimations:v85];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __45___UITabBarTVTransitioner_animateTransition___block_invoke_4;
      v84[3] = &unk_1E70F5DB8;
      v84[4] = self;
      [(UIViewPropertyAnimator *)v72 addCompletion:v84];
      [(UIViewPropertyAnimator *)v73 startAnimation];
      [(UIViewPropertyAnimator *)v65 startAnimation];
      [(UIViewPropertyAnimator *)v72 startAnimation];

      v7 = v79;
    }
  }

  else
  {
    [v5 removeFromSuperview];
    [v6 setAlpha:1.0];
    [v4 completeTransition:1];
  }
}

- (UISpringTimingParameters)slideTimingParameters
{
  slideTimingParameters = self->_slideTimingParameters;
  if (!slideTimingParameters)
  {
    v4 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:100.0 damping:30.0 initialVelocity:0.0, 0.0];
    v5 = self->_slideTimingParameters;
    self->_slideTimingParameters = v4;

    slideTimingParameters = self->_slideTimingParameters;
  }

  return slideTimingParameters;
}

@end