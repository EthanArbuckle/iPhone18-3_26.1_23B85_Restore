@interface _UINavigationParallaxTransition
- (BOOL)shouldPreemptWithContext:(id)context;
- (_UINavigationInteractiveTransitionBase)interactionController;
- (_UINavigationParallaxTransition)initWithCurrentOperation:(int64_t)operation;
- (double)gapBetweenViews;
- (double)parallaxOffset;
- (id)_animateOrCreatePropertyAnimatorForTransition:(id)transition;
- (id)interruptibleAnimatorForTransition:(id)transition;
- (id)preemptWithContext:(id)context;
- (id)resizedFromContainerView;
- (id)resizedToContainerView;
- (id)shadowContainerForKeyboardTransition:(id)transition;
- (void)_animationWillEnd:(id)end didComplete:(BOOL)complete;
- (void)_stopTransitionImmediately;
- (void)animateKeyboard:(id)keyboard;
- (void)animatePreemptionSnapshotsWithContext:(id)context;
- (void)animateTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
- (void)completeKeyboard:(id)keyboard;
- (void)prepareToAnimateKeyboard:(id)keyboard;
- (void)resizeShadow:(id)shadow;
@end

@implementation _UINavigationParallaxTransition

- (double)parallaxOffset
{
  containerView = [(UIViewControllerContextTransitioning *)self->_transitionContext containerView];
  [containerView bounds];
  v5 = 0.7;
  if (self->_transitionStyle)
  {
    v5 = 0.0;
  }

  v6 = round(v4 * v5);

  return v6;
}

- (double)gapBetweenViews
{
  if (self->_transitionStyle)
  {
    return self->_transitionGap;
  }

  else
  {
    return 0.0;
  }
}

- (_UINavigationInteractiveTransitionBase)interactionController
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionController);

  return WeakRetained;
}

- (_UINavigationParallaxTransition)initWithCurrentOperation:(int64_t)operation
{
  v11.receiver = self;
  v11.super_class = _UINavigationParallaxTransition;
  v4 = [(_UINavigationParallaxTransition *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_operation = operation;
    v4->__shouldReverseLayoutDirection = [UIApp userInterfaceLayoutDirection] == 1;
    v6 = objc_alloc_init(_UIParallaxOverlayView);
    fromOverlayView = v5->_fromOverlayView;
    v5->_fromOverlayView = &v6->super;

    v8 = objc_alloc_init(_UIParallaxOverlayView);
    toOverlayView = v5->_toOverlayView;
    v5->_toOverlayView = &v8->super;
  }

  return v5;
}

- (id)resizedToContainerView
{
  v3 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:self];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  containerView = [v3 containerView];

  if (has_internal_diagnostics)
  {
    if (!containerView)
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Container view is expected to be populated at this point", buf, 2u);
      }
    }
  }

  else if (!containerView)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &resizedToContainerView___s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Container view is expected to be populated at this point", v14, 2u);
    }
  }

  containerView2 = [v3 containerView];
  [containerView2 frame];

  [(UIView *)self->_containerToView frame];
  v8 = v7;
  [(UIView *)self->_containerToView frame];
  [(UIView *)self->_toOverlayView setFrame:v8];
  toOverlayView = self->_toOverlayView;
  v10 = toOverlayView;

  return toOverlayView;
}

- (id)resizedFromContainerView
{
  v3 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:self];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  containerView = [v3 containerView];

  if (has_internal_diagnostics)
  {
    if (!containerView)
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Container view is expected to be populated at this point", buf, 2u);
      }
    }
  }

  else if (!containerView)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &resizedFromContainerView___s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Container view is expected to be populated at this point", v14, 2u);
    }
  }

  containerView2 = [v3 containerView];
  [containerView2 frame];

  [(UIView *)self->_containerFromView frame];
  v8 = v7;
  [(UIView *)self->_containerFromView frame];
  [(UIView *)self->_fromOverlayView setFrame:v8];
  fromOverlayView = self->_fromOverlayView;
  v10 = fromOverlayView;

  return fromOverlayView;
}

- (void)animationEnded:(BOOL)ended
{
  preemptionHandoffData = self->_preemptionHandoffData;
  self->_preemptionHandoffData = 0;

  interactionController = [(_UINavigationParallaxTransition *)self interactionController];
  [interactionController _resetInteractionController];

  [(UIView *)self->_fromOverlayView removeFromSuperview];
  toOverlayView = self->_toOverlayView;

  [(UIView *)toOverlayView removeFromSuperview];
}

- (void)animatePreemptionSnapshotsWithContext:(id)context
{
  contextCopy = context;
  if (self->_preemptionHandoffData)
  {
    v5 = [(UIViewControllerContextTransitioning *)self->_transitionContext viewControllerForKey:@"UITransitionContextFromViewController"];
    v6 = [(UIViewControllerContextTransitioning *)self->_transitionContext viewControllerForKey:@"UITransitionContextToViewController"];
    fromViewControllerHandoffData = [(_UIViewControllerAnimatedTransitionHandoffData *)self->_preemptionHandoffData fromViewControllerHandoffData];
    viewController = [fromViewControllerHandoffData viewController];

    if (viewController == v5 || viewController == v6)
    {
      goto LABEL_15;
    }

    fromViewControllerHandoffData2 = [(_UIViewControllerAnimatedTransitionHandoffData *)self->_preemptionHandoffData fromViewControllerHandoffData];
    snapshot = [fromViewControllerHandoffData2 snapshot];

    if (!snapshot)
    {
LABEL_14:

LABEL_15:
      goto LABEL_16;
    }

    fromViewControllerHandoffData3 = [(_UIViewControllerAnimatedTransitionHandoffData *)self->_preemptionHandoffData fromViewControllerHandoffData];
    containerView = [fromViewControllerHandoffData3 containerView];

    contentView = [containerView contentView];
    [contentView addSubview:snapshot];

    isPush = [(_UIViewControllerAnimatedTransitionHandoffData *)self->_preemptionHandoffData isPush];
    operation = self->_operation;
    containerView2 = [contextCopy containerView];
    v18 = containerView2;
    if (isPush)
    {
      if (operation == 1)
      {
        [containerView2 insertSubview:containerView atIndex:0];
LABEL_13:

        v19 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.35];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __73___UINavigationParallaxTransition_animatePreemptionSnapshotsWithContext___block_invoke;
        v23[3] = &unk_1E70F35B8;
        v24 = containerView;
        selfCopy = self;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __73___UINavigationParallaxTransition_animatePreemptionSnapshotsWithContext___block_invoke_2;
        v21[3] = &unk_1E70F3FD8;
        v22 = v24;
        v20 = v24;
        [UIView _animateUsingSpringBehavior:v19 tracking:0 animations:v23 completion:v21];

        goto LABEL_14;
      }
    }

    else if (operation == 1)
    {
      [containerView2 insertSubview:containerView belowSubview:self->_containerToView];
      goto LABEL_13;
    }

    [containerView2 addSubview:containerView];
    goto LABEL_13;
  }

LABEL_16:
}

- (void)animateTransition:(id)transition
{
  v3 = [(_UINavigationParallaxTransition *)self _animateOrCreatePropertyAnimatorForTransition:transition];
  if (v3)
  {
    v4 = v3;
    [v3 startAnimation];
    v3 = v4;
  }
}

- (id)interruptibleAnimatorForTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  traitCollection = [containerView traitCollection];
  v7 = [(_UINavigationParallaxTransition *)self _shouldUseInterruptibleAnimatorWithTraitCollection:traitCollection];

  if (v7)
  {
    v8 = [(_UINavigationParallaxTransition *)self _animateOrCreatePropertyAnimatorForTransition:transitionCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_animateOrCreatePropertyAnimatorForTransition:(id)transition
{
  transitionCopy = transition;
  v5 = transitionCopy;
  propertyAnimator = self->_propertyAnimator;
  if (propertyAnimator)
  {
    v7 = propertyAnimator;
  }

  else
  {
    v87 = transitionCopy;
    v8 = transitionCopy;
    [(_UINavigationParallaxTransition *)self setTransitionContext:v8];
    v9 = [(UIViewControllerContextTransitioning *)self->_transitionContext viewControllerForKey:@"UITransitionContextFromViewController"];
    v10 = [(UIViewControllerContextTransitioning *)self->_transitionContext viewControllerForKey:@"UITransitionContextToViewController"];
    v88 = v8;
    containerView = [v8 containerView];
    traitCollection = [containerView traitCollection];
    v13 = [UIView _fluidParallaxTransitionsEnabledWithTraitCollection:traitCollection];

    if (v13)
    {
      preemptionHandoffData = [(_UINavigationParallaxTransition *)self preemptionHandoffData];
      v15 = [preemptionHandoffData handoffDataForViewController:v9];

      preemptionHandoffData2 = [(_UINavigationParallaxTransition *)self preemptionHandoffData];
      v17 = [preemptionHandoffData2 handoffDataForViewController:v10];

      v98 = v15;
      containerView2 = [v15 containerView];
      v19 = containerView2;
      if (containerView2)
      {
        v20 = containerView2;
      }

      else
      {
        v20 = objc_alloc_init(_UIParallaxTransitionCardView);
      }

      p_super = &v20->super;

      containerView3 = [v17 containerView];
      v27 = containerView3;
      if (containerView3)
      {
        v28 = containerView3;
      }

      else
      {
        v28 = objc_alloc_init(_UIParallaxTransitionCardView);
      }

      v29 = &v28->super;

      v30 = self->_transitionStyle == 0;
      [(UIView *)p_super setRoundsCorners:v30];
      [(UIView *)p_super setHasShadow:v30];
      [(UIView *)v29 setRoundsCorners:v30];
      [(UIView *)v29 setHasShadow:v30];
      containerFromView = self->_containerFromView;
      self->_containerFromView = p_super;
      v32 = p_super;

      containerToView = self->_containerToView;
      self->_containerToView = v29;
      v34 = v29;

      contentView = [(UIView *)v32 contentView];

      contentView2 = [(UIView *)v34 contentView];
    }

    else
    {
      v21 = objc_alloc_init(UIView);
      v22 = self->_containerFromView;
      self->_containerFromView = v21;

      v23 = objc_alloc_init(UIView);
      v24 = self->_containerToView;
      self->_containerToView = v23;

      contentView = self->_containerFromView;
      contentView2 = self->_containerToView;
      v17 = 0;
      v98 = 0;
    }

    v35 = [(UIViewControllerContextTransitioning *)self->_transitionContext viewForKey:@"UITransitionContextToView"];
    v36 = v35;
    if (v35)
    {
      view = v35;
    }

    else
    {
      view = [v10 view];
    }

    v90 = view;

    v38 = [(UIViewControllerContextTransitioning *)self->_transitionContext viewForKey:@"UITransitionContextFromView"];
    v39 = v38;
    if (v38)
    {
      view2 = v38;
    }

    else
    {
      view2 = [v9 view];
    }

    v41 = view2;
    v96 = v17;

    v189[0] = 0;
    v189[1] = v189;
    v189[2] = 0x3032000000;
    v189[3] = __Block_byref_object_copy__62;
    v189[4] = __Block_byref_object_dispose__62;
    v190 = 0;
    v187[0] = 0;
    v187[1] = v187;
    v187[2] = 0x3032000000;
    v187[3] = __Block_byref_object_copy__62;
    v187[4] = __Block_byref_object_dispose__62;
    v188 = 0;
    containerView4 = [(UIViewControllerContextTransitioning *)self->_transitionContext containerView];
    v184[0] = 0;
    v184[1] = v184;
    v184[2] = 0x4010000000;
    v184[3] = "";
    v185 = 0u;
    v186 = 0u;
    v181[0] = 0;
    v181[1] = v181;
    v181[2] = 0x4010000000;
    v181[3] = "";
    v182 = 0u;
    v183 = 0u;
    v178[0] = 0;
    v178[1] = v178;
    v178[2] = 0x4010000000;
    v178[3] = "";
    v179 = 0u;
    v180 = 0u;
    v175[0] = 0;
    v175[1] = v175;
    v175[2] = 0x4010000000;
    v175[3] = "";
    v176 = 0u;
    v177 = 0u;
    v172[0] = 0;
    v172[1] = v172;
    v172[2] = 0x4010000000;
    v172[3] = "";
    v173 = 0u;
    v174 = 0u;
    v169[0] = 0;
    v169[1] = v169;
    v169[2] = 0x4010000000;
    v169[3] = "";
    v170 = 0u;
    v171 = 0u;
    v168[0] = 0;
    v168[1] = v168;
    v168[2] = 0x2020000000;
    v168[3] = 0;
    v165[0] = 0;
    v165[1] = v165;
    v165[2] = 0x4010000000;
    v165[3] = "";
    v166 = 0u;
    v167 = 0u;
    v162[0] = 0;
    v162[1] = v162;
    v162[2] = 0x4010000000;
    v162[3] = "";
    v163 = 0u;
    v164 = 0u;
    v161[0] = 0;
    v161[1] = v161;
    v161[2] = 0x2020000000;
    v161[3] = 0;
    v160[0] = 0;
    v160[1] = v160;
    v160[2] = 0x2020000000;
    v160[3] = 0;
    v159[0] = 0;
    v159[1] = v159;
    v159[2] = 0x2020000000;
    v159[3] = 0;
    v158[0] = 0;
    v158[1] = v158;
    v158[2] = 0x2020000000;
    v158[3] = 0;
    v43 = +[UIView _isInAnimationBlockWithAnimationsEnabled];
    _shouldReverseLayoutDirection = [(_UINavigationParallaxTransition *)self _shouldReverseLayoutDirection];
    [(UIView *)self->_containerToView setBackgroundColor:0];
    [(UIView *)self->_containerFromView setBackgroundColor:0];
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke;
    v128[3] = &unk_1E7104AC8;
    v45 = v9;
    v129 = v45;
    v46 = v10;
    v130 = v46;
    selfCopy = self;
    v139 = v165;
    v47 = v41;
    v132 = v47;
    v140 = v162;
    v48 = v90;
    v133 = v48;
    v141 = v178;
    v49 = containerView4;
    v134 = v49;
    v142 = v181;
    v154 = _shouldReverseLayoutDirection;
    v143 = v168;
    v144 = v175;
    v145 = v184;
    v99 = v98;
    v135 = v99;
    v97 = v96;
    v136 = v97;
    v146 = v161;
    v147 = v160;
    v148 = v159;
    v149 = v158;
    v150 = v189;
    v151 = v187;
    v93 = contentView2;
    v137 = v93;
    v155 = 0;
    v95 = contentView;
    v138 = v95;
    v152 = v172;
    v153 = v169;
    v156 = v13;
    v157 = v43;
    _window = [v49 _window];
    windowScene = [_window windowScene];
    [UIView _performBlockDelayingTriggeringResponderEvents:v128 forScene:windowScene];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_3;
    aBlock[3] = &unk_1E7104AF0;
    aBlock[4] = self;
    v125 = v181;
    v126 = v175;
    v127 = v169;
    v52 = v46;
    v124 = v52;
    v53 = _Block_copy(aBlock);
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_5;
    v113[3] = &unk_1E7104B18;
    v54 = v88;
    v114 = v54;
    v89 = v47;
    v115 = v89;
    v121 = v165;
    v55 = v48;
    v116 = v55;
    v122 = v162;
    v91 = v45;
    v117 = v91;
    v86 = v52;
    v118 = v86;
    v56 = v49;
    v119 = v56;
    selfCopy2 = self;
    v57 = _Block_copy(v113);
    if ([v54 isInteractive])
    {
      _completionCurve = 3;
    }

    else
    {
      _completionCurve = [v54 _completionCurve];
    }

    containerView5 = [v54 containerView];
    traitCollection2 = [containerView5 traitCollection];
    v61 = [(_UINavigationParallaxTransition *)self _shouldUseInterruptibleAnimatorWithTraitCollection:traitCollection2];

    if (v61)
    {
      containerView6 = [v54 containerView];
      traitCollection3 = [containerView6 traitCollection];
      v64 = [UIView _fluidParallaxTransitionsEnabledWithTraitCollection:traitCollection3];

      if (v64)
      {
        if ([(_UIViewControllerAnimatedTransitionHandoffData *)self->_preemptionHandoffData isPush]&& self->_operation == 2)
        {
          progressValue = [(_UIViewControllerAnimatedTransitionHandoffData *)self->_preemptionHandoffData progressValue];
          v66 = 1;
        }

        else
        {
          progressValue = 0;
          v66 = 0;
        }

        [(_UINavigationParallaxTransition *)self transitionDuration:v54];
        v77 = [UIView _makeHybridPropertyAnimatorWithDuration:progressValue progressValue:v66 progressValueReversed:1048616 progressValueUpdateReason:0 springAnimationBehavior:?];
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_7;
        v112[3] = &unk_1E7104B68;
        v112[4] = self;
        v112[5] = v184;
        v112[6] = v181;
        v112[7] = v178;
        v112[8] = v175;
        v112[9] = v172;
        v112[10] = v169;
        v112[11] = v161;
        v112[12] = v160;
        v112[13] = v159;
        v112[14] = v158;
        [v77 addInProcessProgressAnimations:v112];
        v78 = [[UIView alloc] initWithFrame:0.0, 0.0, 1.0, 1.0];
        v79 = +[UIColor clearColor];
        [(UIView *)v78 setBackgroundColor:v79];

        containerView7 = [v54 containerView];
        [containerView7 insertSubview:v78 atIndex:0];

        v110[0] = MEMORY[0x1E69E9820];
        v110[1] = 3221225472;
        v110[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_9;
        v110[3] = &unk_1E70F3590;
        v81 = v78;
        v111 = v81;
        [v77 addAnimations:v110];
        v107[0] = MEMORY[0x1E69E9820];
        v107[1] = 3221225472;
        v107[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_11;
        v107[3] = &unk_1E7104B90;
        v82 = v81;
        v108 = v82;
        v109 = v57;
        [v77 addCompletion:v107];
        v83 = self->_propertyAnimator;
        self->_propertyAnimator = v77;
        v84 = v77;
      }

      else
      {
        v73 = [UIViewPropertyAnimator alloc];
        [(_UINavigationParallaxTransition *)self transitionDuration:v54];
        v74 = [(UIViewPropertyAnimator *)v73 initWithDuration:_completionCurve curve:0 animations:?];
        -[UIViewPropertyAnimator setUserInteractionEnabled:](v74, "setUserInteractionEnabled:", [v54 _allowUserInteraction]);
        [(UIViewPropertyAnimator *)v74 setScrubsLinearly:0];
        [(UIViewPropertyAnimator *)v74 _setShouldLayoutSubviews:0];
        [(UIViewPropertyAnimator *)v74 _setShouldBeginFromCurrentState:0];
        [(UIViewPropertyAnimator *)v74 addAnimations:v53];
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_12;
        v105[3] = &unk_1E70FFB68;
        v106 = v57;
        [(UIViewPropertyAnimator *)v74 addCompletion:v105];
        v75 = self->_propertyAnimator;
        self->_propertyAnimator = v74;
        v76 = v74;
      }
    }

    else
    {
      if ([v54 _allowUserInteraction])
      {
        v67 = (_completionCurve << 16) | 2;
      }

      else
      {
        v67 = _completionCurve << 16;
      }

      if (+[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators])
      {
        v68 = +[UIViewPropertyAnimator _trackingAnimationsCurrentlyEnabled];
        if (!v68)
        {
          v69 = +[UIViewPropertyAnimator _startTrackingAnimations];
          +[UIViewPropertyAnimator _setTrackedAnimationsUserInteractionEnabled:](UIViewPropertyAnimator, "_setTrackedAnimationsUserInteractionEnabled:", [v54 _allowUserInteraction]);
        }

        v70 = +[UIViewPropertyAnimator _currentTrackedAnimationsUUID];
        v71 = 24;
      }

      else
      {
        v68 = +[UIView _isAnimationTracking];
        v70 = +[UIView _startAnimationTracking];
        v71 = 16;
      }

      v72 = *(&self->super.isa + v71);
      *(&self->super.isa + v71) = v70;

      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_13;
      v102[3] = &unk_1E7104BB8;
      v102[4] = self;
      v103 = v54;
      v104 = v67;
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __81___UINavigationParallaxTransition__animateOrCreatePropertyAnimatorForTransition___block_invoke_15;
      v100[3] = &unk_1E70FE248;
      v100[4] = self;
      v101 = v57;
      [UIView conditionallyAnimate:1 withAnimation:v102 layout:v53 completion:v100];
      if (!v68)
      {
        if (+[UIViewPropertyAnimator _trackingAnimationsCurrentlyEnabled])
        {
          +[UIViewPropertyAnimator _finishTrackingAnimations];
        }

        else
        {
          +[UIView _finishAnimationTracking];
        }
      }
    }

    [(_UINavigationParallaxTransition *)self animatePreemptionSnapshotsWithContext:v54];
    v7 = self->_propertyAnimator;

    _Block_object_dispose(v158, 8);
    _Block_object_dispose(v159, 8);
    _Block_object_dispose(v160, 8);
    _Block_object_dispose(v161, 8);
    _Block_object_dispose(v162, 8);
    _Block_object_dispose(v165, 8);
    _Block_object_dispose(v168, 8);
    _Block_object_dispose(v169, 8);
    _Block_object_dispose(v172, 8);
    _Block_object_dispose(v175, 8);
    _Block_object_dispose(v178, 8);
    _Block_object_dispose(v181, 8);
    _Block_object_dispose(v184, 8);

    _Block_object_dispose(v187, 8);
    _Block_object_dispose(v189, 8);

    v5 = v87;
  }

  return v7;
}

- (void)_animationWillEnd:(id)end didComplete:(BOOL)complete
{
  propertyAnimator = self->_propertyAnimator;
  self->_propertyAnimator = 0;
}

- (id)shadowContainerForKeyboardTransition:(id)transition
{
  if (self->_operation == 2)
  {
    [transition toKeyboard];
  }

  else
  {
    [transition fromKeyboard];
  }
  v3 = ;
  superview = [v3 superview];

  return superview;
}

- (void)resizeShadow:(id)shadow
{
  shadowCopy = shadow;
  [shadowCopy frame];
  v5 = v4;
  superview = [shadowCopy superview];
  [superview frame];
  v8 = v7;
  v10 = v9;

  _shouldReverseLayoutDirection = [(_UINavigationParallaxTransition *)self _shouldReverseLayoutDirection];
  v12 = v8 - v5;
  if (_shouldReverseLayoutDirection)
  {
    v12 = 0.0;
  }

  [shadowCopy setFrame:{v12, 0.0, v5, v10}];
}

- (void)prepareToAnimateKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  [keyboardCopy fromKeyboardFrame];
  v5 = v4;
  v7 = v6;
  v96 = v9;
  v97 = v8;
  [keyboardCopy toKeyboardFrame];
  v11 = v10;
  v94 = v13;
  v95 = v12;
  v15 = v14;
  _shouldReverseLayoutDirection = [(_UINavigationParallaxTransition *)self _shouldReverseLayoutDirection];
  v17 = -v15;
  if (_shouldReverseLayoutDirection == (self->_operation == 2))
  {
    v17 = v15;
  }

  v18 = v11 + v17;
  v19 = [UIView alloc];
  fromKeyboard = [keyboardCopy fromKeyboard];
  [fromKeyboard frame];
  v21 = [(UIView *)v19 initWithFrame:?];

  fromKeyboard2 = [keyboardCopy fromKeyboard];
  superview = [fromKeyboard2 superview];
  [superview addSubview:v21];

  fromKeyboard3 = [keyboardCopy fromKeyboard];
  [(UIView *)v21 addSubview:fromKeyboard3];

  v25 = *MEMORY[0x1E695EFF8];
  v26 = *(MEMORY[0x1E695EFF8] + 8);
  fromKeyboard4 = [keyboardCopy fromKeyboard];
  [fromKeyboard4 frame];
  v29 = v28;
  v31 = v30;
  fromKeyboard5 = [keyboardCopy fromKeyboard];
  [fromKeyboard5 setFrame:{v25, v26, v29, v31}];

  v33 = [UIView alloc];
  toKeyboard = [keyboardCopy toKeyboard];
  [toKeyboard frame];
  v35 = [(UIView *)v33 initWithFrame:?];

  toKeyboard2 = [keyboardCopy toKeyboard];
  superview2 = [toKeyboard2 superview];
  [superview2 addSubview:v35];

  toKeyboard3 = [keyboardCopy toKeyboard];
  [(UIView *)v35 addSubview:toKeyboard3];

  toKeyboard4 = [keyboardCopy toKeyboard];
  [toKeyboard4 frame];
  v41 = v40;
  v43 = v42;
  toKeyboard5 = [keyboardCopy toKeyboard];
  [toKeyboard5 setFrame:{v25, v26, v41, v43}];

  [(UIView *)v35 bounds];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  operation = self->_operation;
  fromKeyboard6 = [keyboardCopy fromKeyboard];
  v55 = fromKeyboard6;
  if (operation == 2)
  {
    if (!fromKeyboard6 || ([keyboardCopy toKeyboard], v56 = objc_claimAutoreleasedReturnValue(), v56, v55, v56))
    {
      toKeyboard6 = [keyboardCopy toKeyboard];

      v93 = 1.0;
      if (toKeyboard6)
      {
        [(_UINavigationParallaxTransition *)self parallaxOffset];
        v92 = v15;
        v58 = v46;
        v59 = v50;
        v60 = v18;
        v61 = v52;
        v62 = v48;
        v63 = v7;
        v64 = v5;
        v66 = v65;
        [(_UINavigationParallaxTransition *)self gapBetweenViews];
        v68 = v66 - v67;
        v5 = v64;
        v7 = v63;
        v48 = v62;
        v52 = v61;
        v18 = v60;
        v50 = v59;
        v46 = v58;
        v15 = v92;
        if (_shouldReverseLayoutDirection)
        {
          v46 = v46 + v68;
        }

        else
        {
          v18 = v18 + v68;
        }

        v69 = v68 <= 0.0;
        v70 = v68 > 0.0;
        v71 = v92 - v68;
        v72 = v50 - v68;
        if (!v69)
        {
          v15 = v71;
        }

        if (v70 && _shouldReverseLayoutDirection)
        {
          v50 = v72;
        }

        [(UIView *)v35 setClipsToBounds:1];
      }

      goto LABEL_22;
    }

    v74 = 1.0;
LABEL_21:
    v93 = v74;
    goto LABEL_22;
  }

  if (v55)
  {
    [(UIView *)v21 setClipsToBounds:1];
LABEL_19:
    v74 = 0.0;
    goto LABEL_21;
  }

  fromKeyboard7 = [keyboardCopy fromKeyboard];
  if (fromKeyboard7)
  {

    goto LABEL_19;
  }

  toKeyboard7 = [keyboardCopy toKeyboard];

  v93 = 0.0;
  if (toKeyboard7)
  {
    [(_UINavigationParallaxTransition *)self gapBetweenViews];
    v85 = v46 + v84;
    v86 = v18 + v84;
    if (_shouldReverseLayoutDirection)
    {
      v46 = v85;
    }

    else
    {
      v18 = v86;
    }
  }

LABEL_22:
  mainContext = [keyboardCopy mainContext];
  containerView = [mainContext containerView];
  window = [containerView window];

  if (![window isTrackingKeyboard])
  {
    goto LABEL_37;
  }

  fromKeyboard8 = [keyboardCopy fromKeyboard];
  if (fromKeyboard8)
  {
    v79 = fromKeyboard8;
    toKeyboard8 = [keyboardCopy toKeyboard];

    if (!toKeyboard8)
    {
      v81 = self->_operation;
      if (v81 == 1)
      {
        v82 = 4;
LABEL_35:
        [window moveKeyboardLayoutGuideOverEdge:v82 layoutViews:1];
        goto LABEL_36;
      }

      if (v81 == 2)
      {
        if (_shouldReverseLayoutDirection)
        {
          v82 = 2;
        }

        else
        {
          v82 = 8;
        }

        goto LABEL_35;
      }
    }
  }

LABEL_36:
  v87 = [window _obtainKeyboardLayoutGuideTransitionAssertionForReason:@"UINavigationController parallax transition"];
  keyboardLayoutGuideTransitionAssertion = self->_keyboardLayoutGuideTransitionAssertion;
  self->_keyboardLayoutGuideTransitionAssertion = v87;

LABEL_37:
  [(UIView *)v21 setFrame:v5, v7, v97, v96];
  [(UIView *)v35 setFrame:v18, v95, v15, v94];
  if (_shouldReverseLayoutDirection)
  {
    [(UIView *)v35 setBounds:v46, v48, v50, v52];
  }

  if (!self->_transitionStyle)
  {
    v89 = [(_UINavigationParallaxTransition *)self shadowContainerForKeyboardTransition:keyboardCopy];
    if (v89)
    {
      v90 = [[_UIVerticalEdgeShadowView alloc] initWithWidth:2 edge:9.0];
      [(UIView *)v90 setOpaque:0];
      [(UIView *)v90 setAlpha:v93];
      subviews = [v89 subviews];
      [v89 insertSubview:v90 atIndex:{objc_msgSend(subviews, "count")}];

      [(_UINavigationParallaxTransition *)self resizeShadow:v90];
    }
  }
}

- (void)animateKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  v4 = [(_UINavigationParallaxTransition *)self shadowContainerForKeyboardTransition:?];
  subviews = [v4 subviews];
  lastObject = [subviews lastObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    lastObject = 0;
  }

  _shouldReverseLayoutDirection = [(_UINavigationParallaxTransition *)self _shouldReverseLayoutDirection];
  [keyboardCopy fromKeyboardFrame];
  v83 = v11;
  v84 = v10;
  v12 = v9;
  v13 = -v9;
  if (_shouldReverseLayoutDirection != (self->_operation == 2))
  {
    v13 = v9;
  }

  v14 = v8 + v13;
  fromKeyboard = [keyboardCopy fromKeyboard];
  superview = [fromKeyboard superview];
  [superview bounds];
  v85 = v17;
  v78 = v19;
  v79 = v18;
  v82 = v20;

  [keyboardCopy toKeyboardFrame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  toKeyboard = [keyboardCopy toKeyboard];
  superview2 = [toKeyboard superview];
  [superview2 bounds];
  v80 = v31;
  v81 = v32;
  v34 = v33;
  v36 = v35;

  if (self->_operation == 2)
  {
    [lastObject setAlpha:0.0];
    fromKeyboard2 = [keyboardCopy fromKeyboard];
    if (fromKeyboard2 && (v38 = fromKeyboard2, [keyboardCopy toKeyboard], v39 = objc_claimAutoreleasedReturnValue(), v39, v38, !v39))
    {
      [(_UINavigationParallaxTransition *)self gapBetweenViews];
      v64 = v85;
      v66 = v85 + v65;
      v67 = v14 + v65;
      if (_shouldReverseLayoutDirection)
      {
        v64 = v66;
      }

      v85 = v64;
      if (!_shouldReverseLayoutDirection)
      {
        v14 = v67;
      }
    }

    else
    {
      toKeyboard2 = [keyboardCopy toKeyboard];

      if (toKeyboard2 && _shouldReverseLayoutDirection)
      {
        [(_UINavigationParallaxTransition *)self parallaxOffset];
        v76 = v36;
        v41 = v34;
        v42 = v22;
        v43 = v24;
        v44 = v26;
        v45 = v28;
        v47 = v46;
        [(_UINavigationParallaxTransition *)self gapBetweenViews];
        v49 = v47 - v48;
        v28 = v45;
        v26 = v44;
        v24 = v43;
        v22 = v42;
        v34 = v41;
        v36 = v76;
        v80 = 0.0;
        v81 = v81 + v49;
      }
    }

LABEL_28:
    v62 = keyboardCopy;
    goto LABEL_29;
  }

  [lastObject setAlpha:1.0];
  fromKeyboard3 = [keyboardCopy fromKeyboard];

  if (!fromKeyboard3)
  {
    fromKeyboard4 = [keyboardCopy fromKeyboard];
    if (!fromKeyboard4)
    {
      [keyboardCopy toKeyboard];
    }

    goto LABEL_28;
  }

  v77 = v36;
  v51 = v34;
  v52 = v24;
  v53 = v26;
  v54 = v28;
  [(_UINavigationParallaxTransition *)self parallaxOffset];
  v56 = v55;
  [(_UINavigationParallaxTransition *)self gapBetweenViews];
  v58 = v56 - v57;
  v59 = v85;
  if (_shouldReverseLayoutDirection)
  {
    v59 = v85 + v58;
  }

  v85 = v59;
  if (!_shouldReverseLayoutDirection)
  {
    v14 = v14 + v58;
  }

  if (v58 > 0.0)
  {
    v12 = v12 - v58;
    v60 = v82;
    v61 = v82 - v58;
    if (_shouldReverseLayoutDirection)
    {
      v60 = v61;
    }

    v82 = v60;
  }

  v62 = keyboardCopy;
  v28 = v54;
  v26 = v53;
  v24 = v52;
  v34 = v51;
  v36 = v77;
LABEL_29:
  fromKeyboard5 = [v62 fromKeyboard];
  superview3 = [fromKeyboard5 superview];
  [superview3 setFrame:{v14, v84, v12, v83}];

  if (_shouldReverseLayoutDirection)
  {
    fromKeyboard6 = [keyboardCopy fromKeyboard];
    superview4 = [fromKeyboard6 superview];
    [superview4 setBounds:{v85, v79, v82, v78}];

    toKeyboard3 = [keyboardCopy toKeyboard];
    superview5 = [toKeyboard3 superview];
    [superview5 setFrame:{v22, v24, v26, v28}];

    toKeyboard4 = [keyboardCopy toKeyboard];
    superview6 = [toKeyboard4 superview];
    [superview6 setBounds:{v80, v34, v81, v36}];
  }

  else
  {
    toKeyboard4 = [keyboardCopy toKeyboard];
    superview6 = [toKeyboard4 superview];
    [superview6 setFrame:{v22, v24, v26, v28}];
  }

  [(_UINavigationParallaxTransition *)self resizeShadow:lastObject];
}

- (void)completeKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  keyboardLayoutGuideTransitionAssertion = self->_keyboardLayoutGuideTransitionAssertion;
  if (keyboardLayoutGuideTransitionAssertion)
  {
    [(_UIInvalidatable *)keyboardLayoutGuideTransitionAssertion _invalidate];
    v5 = self->_keyboardLayoutGuideTransitionAssertion;
    self->_keyboardLayoutGuideTransitionAssertion = 0;
  }

  fromKeyboard = [keyboardCopy fromKeyboard];
  superview = [fromKeyboard superview];
  [superview removeFromSuperview];

  toKeyboard = [keyboardCopy toKeyboard];
  superview2 = [toKeyboard superview];
  [superview2 removeFromSuperview];
}

- (void)_stopTransitionImmediately
{
  v27 = *MEMORY[0x1E69E9840];
  propertyAnimator = self->_propertyAnimator;
  if (propertyAnimator)
  {
    [(UIViewImplicitlyAnimating *)propertyAnimator stopAnimation:0];
    v4 = self->_propertyAnimator;

    [(UIViewImplicitlyAnimating *)v4 finishAnimationAtPosition:0];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    interactionController = [(_UINavigationParallaxTransition *)self interactionController];
    v7 = interactionController;
    if (interactionController)
    {
      _parent = [interactionController _parent];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        navigationBar = [_parent navigationBar];
        _animationIds = [navigationBar _animationIds];

        if (_animationIds)
        {
          [v5 addObjectsFromArray:_animationIds];
        }
      }

      [v7 cancelInteractiveTransition];
    }

    if (self->_currentTrackingAnimatorsAnimationsUUID)
    {
      [v5 addObject:?];
    }

    v19 = v7;
    if (self->_currentRunningAnimationsUUID)
    {
      [v5 addObject:v7];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if ([UIViewPropertyAnimator _containsAnimatorForTrackedAnimationsUUID:v16, v19])
          {
            v17 = [UIViewPropertyAnimator _animatorForTrackedAnimationsUUID:v16];
            [v17 stopAnimation:0];
            v20[0] = MEMORY[0x1E69E9820];
            v20[1] = 3221225472;
            v20[2] = __61___UINavigationParallaxTransition__stopTransitionImmediately__block_invoke;
            v20[3] = &unk_1E70F3590;
            v21 = v17;
            v18 = v17;
            [UIViewController _performWithoutDeferringTransitions:v20];
          }

          else
          {
            [UIView _stopAnimationWithUUID:v16];
            [UIView _finalizeStoppedAnimationWithUUID:v16 reverseAnimation:0 state:0 performCompletionsImmediately:1];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }
}

- (BOOL)shouldPreemptWithContext:(id)context
{
  containerView = [context containerView];
  traitCollection = [containerView traitCollection];
  v5 = [UIView _fluidParallaxTransitionsEnabledWithTraitCollection:traitCollection];

  return v5;
}

- (id)preemptWithContext:(id)context
{
  contextCopy = context;
  v5 = [contextCopy viewControllerForKey:@"UITransitionContextFromViewController"];
  v6 = [contextCopy viewControllerForKey:@"UITransitionContextToViewController"];

  operation = self->_operation;
  [(_UIParallaxDimmingView *)self->_contentDimmingView presentationDimmingAmount];
  if (operation == 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  if (operation == 2)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v8;
  }

  v11 = [_UIViewControllerAnimatedTransitionViewControllerHandoffData alloc];
  containerFromView = self->_containerFromView;
  v13 = [(UIView *)containerFromView snapshotViewAfterScreenUpdates:0];
  layer = [(UIView *)self->_containerFromView layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(UIView *)self->_containerFromView frame];
  v28 = v27;
  v29 = 1.0;
  if (self->_operation != 2)
  {
    v29 = 0.0;
  }

  v30 = [(_UIViewControllerAnimatedTransitionViewControllerHandoffData *)v11 initWithViewController:v5 containerView:containerFromView snapshot:v13 frame:v17 targetFrame:v19 dimmingAmount:v21 targetDimmingAmount:v23, v28, v24, v25, v26, *&v10, *&v29];

  v31 = [_UIViewControllerAnimatedTransitionViewControllerHandoffData alloc];
  containerToView = self->_containerToView;
  layer2 = [(UIView *)containerToView layer];
  presentationLayer2 = [layer2 presentationLayer];
  [presentationLayer2 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [(UIView *)self->_containerToView frame];
  v47 = [(_UIViewControllerAnimatedTransitionViewControllerHandoffData *)v31 initWithViewController:v6 containerView:containerToView snapshot:0 frame:v36 targetFrame:v38 dimmingAmount:v40 targetDimmingAmount:v42, v43, v44, v45, v46, *&v9, 0];

  progressValue = 0;
  if (objc_opt_respondsToSelector())
  {
    progressValue = [(UIViewImplicitlyAnimating *)self->_propertyAnimator progressValue];
  }

  v49 = self->_captureBackdropView;
  [(_UINavigationParallaxTransition *)self _stopTransitionImmediately];
  v50 = [[_UIViewControllerAnimatedTransitionHandoffData alloc] initWithFromViewControllerHandoffData:v30 toViewControllerHandoffData:v47 progressValue:progressValue captureBackdropView:v49 isPush:self->_operation == 1];

  return v50;
}

@end