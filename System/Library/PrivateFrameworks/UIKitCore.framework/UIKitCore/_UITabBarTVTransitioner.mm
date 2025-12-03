@interface _UITabBarTVTransitioner
- (UISpringTimingParameters)slideTimingParameters;
- (_UITabBarTVTransitioner)init;
- (double)transitionDuration:(id)duration;
- (void)animateTransition:(id)transition;
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
  transitionContext = [(_UITabBarTVTransitioner *)self transitionContext];

  if (transitionContext)
  {
    transitionContext2 = [(_UITabBarTVTransitioner *)self transitionContext];
    v18 = [transitionContext2 viewForKey:@"UITransitionContextFromView"];

    transitionContext3 = [(_UITabBarTVTransitioner *)self transitionContext];
    v6 = [transitionContext3 viewForKey:@"UITransitionContextToView"];

    [v18 removeFromSuperview];
    [v18 setAlpha:1.0];
    fromViewOriginalShouldRasterize = self->_fromViewOriginalShouldRasterize;
    layer = [v18 layer];
    [layer setShouldRasterize:fromViewOriginalShouldRasterize];

    toViewOriginalShouldRasterize = self->_toViewOriginalShouldRasterize;
    layer2 = [v6 layer];
    [layer2 setShouldRasterize:toViewOriginalShouldRasterize];

    fromViewLayerOriginalRasterizationScale = self->_fromViewLayerOriginalRasterizationScale;
    layer3 = [v18 layer];
    [layer3 setRasterizationScale:fromViewLayerOriginalRasterizationScale];

    toViewLayerOriginalRasterizationScale = self->_toViewLayerOriginalRasterizationScale;
    layer4 = [v6 layer];
    [layer4 setRasterizationScale:toViewLayerOriginalRasterizationScale];

    toViewXFlippedScreenShot = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];

    if (toViewXFlippedScreenShot)
    {
      toViewXFlippedScreenShot2 = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];
      [toViewXFlippedScreenShot2 removeFromSuperview];

      [(_UITabBarTVTransitioner *)self setToViewXFlippedScreenShot:0];
    }

    transitionContext4 = [(_UITabBarTVTransitioner *)self transitionContext];
    [transitionContext4 completeTransition:1];

    [(_UITabBarTVTransitioner *)self setTransitionContext:0];
  }
}

- (double)transitionDuration:(id)duration
{
  if (self->_transitionStyle != 1)
  {
    return 0.5;
  }

  slideTimingParameters = [(_UITabBarTVTransitioner *)self slideTimingParameters];
  [slideTimingParameters settlingDuration];
  v5 = v4;

  return v5;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewForKey:@"UITransitionContextFromView"];
  v6 = [transitionCopy viewForKey:@"UITransitionContextToView"];
  containerView = [transitionCopy containerView];
  isAnimated = [transitionCopy isAnimated];
  if (v6)
  {
    [v6 setAlpha:0.0];
    [containerView addSubview:v6];
  }

  if (isAnimated)
  {
    layer = [v5 layer];
    self->_fromViewOriginalShouldRasterize = [layer shouldRasterize];

    layer2 = [v5 layer];
    [layer2 rasterizationScale];
    self->_fromViewLayerOriginalRasterizationScale = v11;

    layer3 = [v6 layer];
    self->_toViewOriginalShouldRasterize = [layer3 shouldRasterize];

    layer4 = [v6 layer];
    [layer4 rasterizationScale];
    self->_toViewLayerOriginalRasterizationScale = v14;

    v15 = _AXSReduceMotionEnabled();
    if (self->_transitionStyle != 1 || v15)
    {
      layer5 = [v5 layer];
      [layer5 setShouldRasterize:0];

      layer6 = [v6 layer];
      [layer6 setShouldRasterize:0];

      [(_UITabBarTVTransitioner *)self setTransitionContext:transitionCopy];
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
      v16 = [transitionCopy viewControllerForKey:@"UITransitionContextToViewController"];
      v78 = v16;
      if (v16)
      {
        [transitionCopy finalFrameForViewController:v16];
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

      transitionFromRight = [(_UITabBarTVTransitioner *)self transitionFromRight];
      v28 = [v6 snapshotViewAfterScreenUpdates:1];
      [(_UITabBarTVTransitioner *)self setToViewXFlippedScreenShot:v28];

      toViewXFlippedScreenShot = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];

      if (toViewXFlippedScreenShot)
      {
        v75 = v24;
        v30 = v22;
        v31 = v20;
        v32 = v18;
        CATransform3DMakeScale(&v98, -1.0, 1.0, 1.0);
        toViewXFlippedScreenShot2 = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];
        layer7 = [toViewXFlippedScreenShot2 layer];
        v97 = v98;
        [layer7 setTransform:&v97];

        toViewXFlippedScreenShot3 = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];
        [toViewXFlippedScreenShot3 frame];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;

        v44 = v37;
        v45 = v39;
        v46 = v41;
        v47 = v43;
        if (transitionFromRight)
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

        toViewXFlippedScreenShot4 = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];
        [toViewXFlippedScreenShot4 setFrame:{MaxX, v39, v41, v43}];

        toViewXFlippedScreenShot5 = [(_UITabBarTVTransitioner *)self toViewXFlippedScreenShot];
        [v6 addSubview:toViewXFlippedScreenShot5];

        v18 = v32;
        v20 = v31;
        v22 = v30;
        v24 = v75;
      }

      if (transitionFromRight)
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
      layer8 = [v5 layer];
      v55 = layer8;
      v79 = containerView;
      v77 = transitionFromRight;
      if (v53 == 1)
      {
        [layer8 setShouldRasterize:0];

        layer9 = [v6 layer];
        [layer9 setShouldRasterize:0];
      }

      else
      {
        [layer8 setShouldRasterize:1];

        layer10 = [v5 layer];
        traitCollection = [containerView traitCollection];
        [traitCollection displayScale];
        [layer10 setRasterizationScale:?];

        layer11 = [v6 layer];
        [layer11 setShouldRasterize:1];

        layer9 = [v6 layer];
        traitCollection2 = [containerView traitCollection];
        [traitCollection2 displayScale];
        [layer9 setRasterizationScale:?];
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
      [(_UITabBarTVTransitioner *)self setTransitionContext:transitionCopy];
      v67 = [UIViewPropertyAnimator alloc];
      slideTimingParameters = [(_UITabBarTVTransitioner *)self slideTimingParameters];
      [slideTimingParameters settlingDuration];
      v70 = v69;
      slideTimingParameters2 = [(_UITabBarTVTransitioner *)self slideTimingParameters];
      v72 = [(UIViewPropertyAnimator *)v67 initWithDuration:slideTimingParameters2 timingParameters:v70];

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

      containerView = v79;
    }
  }

  else
  {
    [v5 removeFromSuperview];
    [v6 setAlpha:1.0];
    [transitionCopy completeTransition:1];
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