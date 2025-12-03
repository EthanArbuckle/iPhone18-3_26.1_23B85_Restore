@interface _UISheetAnimationController
- (CGPoint)attachmentPoint;
- (CGRect)forwardViewFullFrame;
- (CGRect)interactiveFrame;
- (CGRect)sourceFrame;
- (UIView)sourceView;
- (UIViewControllerContextTransitioning)transitionContext;
- (_UISheetAnimationController)init;
- (id)interruptibleAnimatorForTransition:(id)transition;
- (void)addNoninteractiveAnimations:(id)animations;
- (void)addNoninteractiveCompletion:(id)completion;
- (void)animateTransition:(id)transition;
- (void)layoutTransitionViews;
- (void)runNoninteractiveAnimationsIfPossible;
- (void)setNoninteractiveAnimations:(id)animations;
- (void)setNoninteractiveCompletion:(id)completion;
@end

@implementation _UISheetAnimationController

- (_UISheetAnimationController)init
{
  v13.receiver = self;
  v13.super_class = _UISheetAnimationController;
  v2 = [(_UISheetAnimationController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 16);
    v2->_sourceFrame.origin = *MEMORY[0x1E695F050];
    v2->_sourceFrame.size = v5;
    v2->_interactiveFrame.origin = v4;
    v2->_interactiveFrame.size = v5;
    v2->_isInInitialLayout = 1;
    v6 = _UIFallbackSheetMetrics();
    metrics = v3->_metrics;
    v3->_metrics = v6;

    v8 = objc_opt_new();
    allNoninteractiveAnimations = v3->_allNoninteractiveAnimations;
    v3->_allNoninteractiveAnimations = v8;

    v10 = objc_opt_new();
    allNoninteractiveCompletions = v3->_allNoninteractiveCompletions;
    v3->_allNoninteractiveCompletions = v10;
  }

  return v3;
}

- (void)setNoninteractiveAnimations:(id)animations
{
  aBlock = animations;
  [(NSMutableArray *)self->_allNoninteractiveAnimations removeAllObjects];
  v4 = aBlock;
  if (aBlock)
  {
    allNoninteractiveAnimations = self->_allNoninteractiveAnimations;
    v6 = _Block_copy(aBlock);
    [(NSMutableArray *)allNoninteractiveAnimations addObject:v6];

    v4 = aBlock;
  }
}

- (void)setNoninteractiveCompletion:(id)completion
{
  aBlock = completion;
  [(NSMutableArray *)self->_allNoninteractiveCompletions removeAllObjects];
  v4 = aBlock;
  if (aBlock)
  {
    allNoninteractiveCompletions = self->_allNoninteractiveCompletions;
    v6 = _Block_copy(aBlock);
    [(NSMutableArray *)allNoninteractiveCompletions addObject:v6];

    v4 = aBlock;
  }
}

- (void)addNoninteractiveAnimations:(id)animations
{
  allNoninteractiveAnimations = self->_allNoninteractiveAnimations;
  v4 = _Block_copy(animations);
  [(NSMutableArray *)allNoninteractiveAnimations addObject:v4];
}

- (void)addNoninteractiveCompletion:(id)completion
{
  allNoninteractiveCompletions = self->_allNoninteractiveCompletions;
  v4 = _Block_copy(completion);
  [(NSMutableArray *)allNoninteractiveCompletions addObject:v4];
}

- (id)interruptibleAnimatorForTransition:(id)transition
{
  transitionCopy = transition;
  propertyAnimator = [(_UISheetAnimationController *)self propertyAnimator];

  if (!propertyAnimator)
  {
    v8 = [UIViewPropertyAnimator alloc];
    [(_UISheetAnimationController *)self transitionDuration:transitionCopy];
    v10 = v9;
    v11 = _UISheetTransitionTimingCurve();
    v12 = [(UIViewPropertyAnimator *)v8 initWithDuration:v11 timingParameters:v10];
    [(_UISheetAnimationController *)self setPropertyAnimator:v12];

    [(_UISheetAnimationController *)self setTransitionContext:transitionCopy];
    v13 = [transitionCopy viewForKey:@"UITransitionContextToView"];
    v14 = [transitionCopy viewForKey:@"UITransitionContextFromView"];
    if ([(_UISheetAnimationController *)self isForward])
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    [(_UISheetAnimationController *)self setForwardView:v15];
    v16 = [transitionCopy viewControllerForKey:@"UITransitionContextFromViewController"];
    v17 = [transitionCopy viewControllerForKey:@"UITransitionContextToViewController"];
    [transitionCopy finalFrameForViewController:v17];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [transitionCopy initialFrameForViewController:v16];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    isForward = [(_UISheetAnimationController *)self isForward];
    if (isForward)
    {
      v35 = v19;
    }

    else
    {
      v35 = v27;
    }

    if (isForward)
    {
      v36 = v21;
    }

    else
    {
      v36 = v29;
    }

    if (isForward)
    {
      v37 = v23;
    }

    else
    {
      v37 = v31;
    }

    if (isForward)
    {
      v38 = v25;
    }

    else
    {
      v38 = v33;
    }

    [(_UISheetAnimationController *)self setForwardViewFullFrame:v35, v36, v37, v38];
    sourceView = [(_UISheetAnimationController *)self sourceView];
    [(_UISheetAnimationController *)self sourceFrame];
    if (CGRectIsNull(v85))
    {
      if (!sourceView)
      {
        defaultSourceFrameProvider = [(_UISheetAnimationController *)self defaultSourceFrameProvider];
        if (defaultSourceFrameProvider)
        {
          defaultSourceFrameProvider2 = [(_UISheetAnimationController *)self defaultSourceFrameProvider];
          defaultSourceFrameProvider2[2]();
        }

        else
        {
          [(_UISheetAnimationController *)self forwardViewFullFrame];
        }

        [(_UISheetAnimationController *)self setSourceFrame:?];
        if (defaultSourceFrameProvider)
        {
        }

        goto LABEL_22;
      }

      [sourceView bounds];
      [(_UISheetAnimationController *)self setSourceFrame:?];
    }

    else if (!sourceView)
    {
      goto LABEL_23;
    }

    _viewControllerForAncestor = [sourceView _viewControllerForAncestor];
    defaultSourceFrameProvider = [_viewControllerForAncestor _existingPresentationControllerImmediate:0 effective:1 includesRoot:1];

    [(_UISheetAnimationController *)self sourceFrame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    presentedView = [defaultSourceFrameProvider presentedView];
    [sourceView convertRect:presentedView toView:{v43, v45, v47, v49}];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    [defaultSourceFrameProvider frameOfPresentedViewInContainerView];
    v60 = v59;
    v62 = v61;
    v86.origin.x = v52;
    v86.origin.y = v54;
    v86.size.width = v56;
    v86.size.height = v58;
    v87 = CGRectOffset(v86, v60, v62);
    [(_UISheetAnimationController *)self setSourceFrame:v87.origin.x, v87.origin.y, v87.size.width, v87.size.height];
LABEL_22:

LABEL_23:
    forwardView = [(_UISheetAnimationController *)self forwardView];

    if (forwardView)
    {
      if (!v13)
      {
LABEL_26:
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __66___UISheetAnimationController_interruptibleAnimatorForTransition___block_invoke;
        v83[3] = &unk_1E70F3590;
        v83[4] = self;
        [UIView performWithoutAnimation:v83];
        [(_UISheetAnimationController *)self setIsInInitialLayout:0];
        metrics = [(_UISheetAnimationController *)self metrics];
        propertyAnimator2 = [(_UISheetAnimationController *)self propertyAnimator];
        [metrics addAlongsideAnimations:propertyAnimator2 forSheetTransition:self context:transitionCopy];

        if ([transitionCopy isInteractive])
        {
          propertyAnimator3 = [(_UISheetAnimationController *)self propertyAnimator];
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = __66___UISheetAnimationController_interruptibleAnimatorForTransition___block_invoke_2;
          v81[3] = &unk_1E70F3590;
          v82 = transitionCopy;
          [propertyAnimator3 addAnimations:v81];
        }

        else
        {
          objc_initWeak(&location, self);
          propertyAnimator4 = [(_UISheetAnimationController *)self propertyAnimator];
          v78[0] = MEMORY[0x1E69E9820];
          v78[1] = 3221225472;
          v78[2] = __66___UISheetAnimationController_interruptibleAnimatorForTransition___block_invoke_3;
          v78[3] = &unk_1E70F5A28;
          objc_copyWeak(&v79, &location);
          [propertyAnimator4 addAnimations:v78];

          objc_destroyWeak(&v79);
          objc_destroyWeak(&location);
        }

        propertyAnimator5 = [(_UISheetAnimationController *)self propertyAnimator];
        v73 = MEMORY[0x1E69E9820];
        v74 = 3221225472;
        v75 = __66___UISheetAnimationController_interruptibleAnimatorForTransition___block_invoke_5;
        v76 = &unk_1E70F5DB8;
        v77 = transitionCopy;
        [propertyAnimator5 addCompletion:&v73];

        goto LABEL_30;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISheetTransitioning.m" lineNumber:144 description:@"Attempted to run _UISheetAnimationController without a forwardView."];

      if (!v13)
      {
        goto LABEL_26;
      }
    }

    [v13 _setFrameIgnoringLayerTransform:{v19, v21, v23, v25}];
    containerView = [transitionCopy containerView];
    [containerView addSubview:v13];

    goto LABEL_26;
  }

LABEL_30:
  v70 = [(_UISheetAnimationController *)self propertyAnimator:v73];

  return v70;
}

- (void)animateTransition:(id)transition
{
  v3 = [(_UISheetAnimationController *)self interruptibleAnimatorForTransition:transition];
  [v3 startAnimation];
}

- (void)layoutTransitionViews
{
  transitionContext = [(_UISheetAnimationController *)self transitionContext];
  if (transitionContext)
  {
    v38 = transitionContext;
    forwardView = [(_UISheetAnimationController *)self forwardView];
    [(_UISheetAnimationController *)self forwardViewFullFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(_UISheetAnimationController *)self interactiveFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    isInteractive = [v38 isInteractive];
    v40.origin.x = v14;
    v40.origin.y = v16;
    v40.size.width = v18;
    v40.size.height = v20;
    v22 = !CGRectIsNull(v40);
    if (v22)
    {
      v23 = v14;
    }

    else
    {
      v23 = v6;
    }

    if (v22)
    {
      v24 = v16;
    }

    else
    {
      v24 = v8;
    }

    if (v22)
    {
      v25 = v18;
    }

    else
    {
      v25 = v10;
    }

    if (v22)
    {
      v26 = v20;
    }

    else
    {
      v26 = v12;
    }

    [(_UISheetAnimationController *)self sourceFrame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = ([v38 transitionWasCancelled] & 1) != 0 || -[_UISheetAnimationController isInInitialLayout](self, "isInInitialLayout");
    if ([(_UISheetAnimationController *)self isForward])
    {
      v36 = isInteractive | ~v35;
    }

    else
    {
      v36 = isInteractive | v35;
    }

    if ((v36 | v22))
    {
      v30 = v24;
      v34 = v26;
      v32 = v25;
      v28 = v37;
    }

    [forwardView _setFrameIgnoringLayerTransform:{v28, v30, v32, v34}];

    transitionContext = v38;
  }
}

- (void)runNoninteractiveAnimationsIfPossible
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_allNoninteractiveAnimations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v17 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_allNoninteractiveCompletions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [UIView _addCompletion:*(*(&v13 + 1) + 8 * v12++), v13];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (CGRect)sourceFrame
{
  x = self->_sourceFrame.origin.x;
  y = self->_sourceFrame.origin.y;
  width = self->_sourceFrame.size.width;
  height = self->_sourceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (UIViewControllerContextTransitioning)transitionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);

  return WeakRetained;
}

- (CGRect)forwardViewFullFrame
{
  x = self->_forwardViewFullFrame.origin.x;
  y = self->_forwardViewFullFrame.origin.y;
  width = self->_forwardViewFullFrame.size.width;
  height = self->_forwardViewFullFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)interactiveFrame
{
  x = self->_interactiveFrame.origin.x;
  y = self->_interactiveFrame.origin.y;
  width = self->_interactiveFrame.size.width;
  height = self->_interactiveFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)attachmentPoint
{
  x = self->_attachmentPoint.x;
  y = self->_attachmentPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end