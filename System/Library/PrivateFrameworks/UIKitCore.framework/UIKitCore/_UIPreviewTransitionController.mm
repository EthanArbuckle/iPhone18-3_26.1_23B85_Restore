@interface _UIPreviewTransitionController
+ (id)performCommitTransitionWithDelegate:(id)delegate forViewController:(id)controller previewViewController:(id)viewController previewInteractionController:(id)interactionController completion:(id)completion;
- (UIViewControllerContextTransitioning)transitionContext;
- (_UIPreviewTransitionController)initWithInteractionProgress:(id)progress targetPresentationPhase:(unint64_t)phase;
- (void)_animateCommitTransition:(id)transition;
- (void)_animateDismissTransition:(id)transition;
- (void)_animatePreviewTransition:(id)transition;
- (void)_animateRevealTransition:(id)transition;
- (void)_completeAnimationWithPresentationPhase:(unint64_t)phase finished:(BOOL)finished;
- (void)_layoutForPresentationPhase:(unint64_t)phase;
- (void)animateTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)interactionProgress:(id)progress didEnd:(BOOL)end;
- (void)interactionProgressDidUpdate:(id)update;
- (void)setAnimations:(id)animations completion:(id)completion forPresentationPhase:(unint64_t)phase;
- (void)startInteractiveTransition:(id)transition;
- (void)updateInteractiveTransition:(double)transition;
@end

@implementation _UIPreviewTransitionController

- (_UIPreviewTransitionController)initWithInteractionProgress:(id)progress targetPresentationPhase:(unint64_t)phase
{
  progressCopy = progress;
  v13.receiver = self;
  v13.super_class = _UIPreviewTransitionController;
  v8 = [(UIPercentDrivenInteractiveTransition *)&v13 init];
  if (v8)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(_UIPreviewTransitionController *)v8 setAnimationsByPresentationPhase:dictionary];

    [progressCopy addProgressObserver:v8];
    [(_UIPreviewTransitionController *)v8 setInteractionProgress:progressCopy];
    [(_UIPreviewTransitionController *)v8 setTargetPresentationPhase:phase];
    if (phase > 5 || ((1 << phase) & 0x34) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v8 file:@"_UIPreviewTransitionController.m" lineNumber:58 description:{@"The targetPresentationPhase needs to be Preview, Commit or Cancelled."}];
    }

    v11 = v8;
  }

  return v8;
}

- (void)setAnimations:(id)animations completion:(id)completion forPresentationPhase:(unint64_t)phase
{
  aBlock = completion;
  v8 = MEMORY[0x1E695DF90];
  animationsCopy = animations;
  v10 = [v8 dictionaryWithCapacity:2];
  v11 = _Block_copy(animationsCopy);

  [v10 setObject:v11 forKeyedSubscript:@"animations"];
  if (aBlock)
  {
    v12 = _Block_copy(aBlock);
    [v10 setObject:v12 forKeyedSubscript:@"completion"];
  }

  animationsByPresentationPhase = [(_UIPreviewTransitionController *)self animationsByPresentationPhase];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:phase];
  [animationsByPresentationPhase setObject:v10 forKeyedSubscript:v14];
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  [(_UIPreviewTransitionController *)self setTransitionContext:?];
  if ([(_UIPreviewTransitionController *)self targetPresentationPhase]== 2)
  {
    interactionProgress = [(_UIPreviewTransitionController *)self interactionProgress];

    if (interactionProgress)
    {
      [(_UIPreviewTransitionController *)self _animateRevealTransition:transitionCopy];
    }

    else
    {
      [(_UIPreviewTransitionController *)self _layoutForPresentationPhase:1];
      [transitionCopy completeTransition:1];
      [(_UIPreviewTransitionController *)self _completeAnimationWithPresentationPhase:1 finished:1];
    }
  }

  else if ([(_UIPreviewTransitionController *)self targetPresentationPhase]== 4)
  {
    [(_UIPreviewTransitionController *)self _animateCommitTransition:transitionCopy];
  }

  else
  {
    [(_UIPreviewTransitionController *)self _animateDismissTransition:transitionCopy];
  }
}

- (void)startInteractiveTransition:(id)transition
{
  v5.receiver = self;
  v5.super_class = _UIPreviewTransitionController;
  transitionCopy = transition;
  [(UIPercentDrivenInteractiveTransition *)&v5 startInteractiveTransition:transitionCopy];
  [(_UIPreviewTransitionController *)self setTransitionContext:transitionCopy, v5.receiver, v5.super_class];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(UIInteractionProgress *)self->_interactionProgress didEnd])
    {
      [(_UIPreviewTransitionController *)self finishInteractiveTransition];
    }
  }
}

- (void)updateInteractiveTransition:(double)transition
{
  v3.receiver = self;
  v3.super_class = _UIPreviewTransitionController;
  [(UIPercentDrivenInteractiveTransition *)&v3 updateInteractiveTransition:transition];
}

- (void)cancelInteractiveTransition
{
  v2.receiver = self;
  v2.super_class = _UIPreviewTransitionController;
  [(UIPercentDrivenInteractiveTransition *)&v2 cancelInteractiveTransition];
}

- (void)finishInteractiveTransition
{
  [(UIPercentDrivenInteractiveTransition *)self setCompletionSpeed:10.0];
  [(UIPercentDrivenInteractiveTransition *)self setCompletionCurve:3];
  v3.receiver = self;
  v3.super_class = _UIPreviewTransitionController;
  [(UIPercentDrivenInteractiveTransition *)&v3 finishInteractiveTransition];
}

- (void)animationEnded:(BOOL)ended
{
  if (ended && [(_UIPreviewTransitionController *)self targetPresentationPhase]== 2)
  {
    transitionContext = [(_UIPreviewTransitionController *)self transitionContext];
    [(_UIPreviewTransitionController *)self _animatePreviewTransition:transitionContext];
  }
}

- (void)interactionProgressDidUpdate:(id)update
{
  [update percentComplete];
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  v5 = fmax(v4, 0.0);
  [(_UIPreviewTransitionController *)self updateInteractiveTransition:v5];
  feedbackGenerator = [(_UIPreviewTransitionController *)self feedbackGenerator];
  [feedbackGenerator transitionToState:@"preview" updated:v5];
}

- (void)interactionProgress:(id)progress didEnd:(BOOL)end
{
  endCopy = end;
  transitionContext = [(_UIPreviewTransitionController *)self transitionContext];
  if ([transitionContext isInteractive])
  {
    transitionContext2 = [(_UIPreviewTransitionController *)self transitionContext];
    transitionWasCancelled = [transitionContext2 transitionWasCancelled];

    if ((transitionWasCancelled & 1) == 0)
    {
      if (endCopy)
      {

        [(_UIPreviewTransitionController *)self finishInteractiveTransition];
      }

      else
      {

        [(_UIPreviewTransitionController *)self cancelInteractiveTransition];
      }
    }
  }

  else
  {
  }
}

- (void)_animateRevealTransition:(id)transition
{
  transitionCopy = transition;
  [(_UIPreviewTransitionController *)self transitionDuration:transitionCopy];
  v6 = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59___UIPreviewTransitionController__animateRevealTransition___block_invoke;
  v10[3] = &unk_1E70F3590;
  v10[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59___UIPreviewTransitionController__animateRevealTransition___block_invoke_2;
  v8[3] = &unk_1E70F3C60;
  v8[4] = self;
  v9 = transitionCopy;
  v7 = transitionCopy;
  [UIView animateWithDuration:0 delay:v10 options:v8 animations:v6 completion:0.0];
}

- (void)_animatePreviewTransition:(id)transition
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60___UIPreviewTransitionController__animatePreviewTransition___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60___UIPreviewTransitionController__animatePreviewTransition___block_invoke_2;
  v7[3] = &unk_1E70F5AC0;
  v7[4] = self;
  v5 = _Block_copy(v7);
  if (_AXSReduceMotionEnabled())
  {
    [UIView animateKeyframesWithDuration:0 delay:v4 options:v5 animations:0.2 completion:0.0];
  }

  else
  {
    objc_opt_self();
    _durationOfSpringAnimation(2.0, 1500.0, 93.0, 0.0);
    [UIView _animateUsingSpringWithDuration:"_animateUsingSpringWithDuration:delay:options:mass:stiffness:damping:initialVelocity:animations:completion:" delay:0 options:v4 mass:v5 stiffness:? damping:? initialVelocity:? animations:? completion:?];
  }

  feedbackGenerator = [(_UIPreviewTransitionController *)self feedbackGenerator];
  [feedbackGenerator transitionToState:@"preview" ended:1];
}

- (void)_animateDismissTransition:(id)transition
{
  transitionCopy = transition;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60___UIPreviewTransitionController__animateDismissTransition___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60___UIPreviewTransitionController__animateDismissTransition___block_invoke_2;
  v8[3] = &unk_1E70F3C60;
  v8[4] = self;
  v9 = transitionCopy;
  v6 = transitionCopy;
  v7 = _Block_copy(v8);
  [UIView animateWithDuration:v5 animations:v7 completion:0.25];
}

- (void)_animateCommitTransition:(id)transition
{
  transitionCopy = transition;
  v69 = [transitionCopy viewForKey:@"UITransitionContextToView"];
  v5 = [transitionCopy viewControllerForKey:@"UITransitionContextToViewController"];
  v73 = [transitionCopy viewControllerForKey:@"UITransitionContextFromViewController"];
  navigationController = [v73 navigationController];
  selfCopy = self;
  viewsParticipatingInCommitTransition = [(_UIPreviewTransitionController *)self viewsParticipatingInCommitTransition];
  v8 = [viewsParticipatingInCommitTransition objectForKeyedSubscript:@"backgroundView"];
  v9 = [viewsParticipatingInCommitTransition objectForKeyedSubscript:@"presentationContainerView"];
  v10 = [viewsParticipatingInCommitTransition objectForKeyedSubscript:@"presentationContainerView"];
  platterView = [v10 platterView];

  v72 = viewsParticipatingInCommitTransition;
  v78 = [viewsParticipatingInCommitTransition objectForKeyedSubscript:@"presentationView"];
  delegate = [navigationController delegate];
  v56 = objc_opt_respondsToSelector();
  if ([v5 _isNestedNavigationController])
  {
    v11 = v5;
  }

  else
  {
    v11 = navigationController;
  }

  v12 = v11;
  navigationBar = [navigationController navigationBar];
  v77 = v12;
  toolbar = [v12 toolbar];
  superview = [toolbar superview];
  superview2 = [navigationBar superview];
  [transitionCopy finalFrameForViewController:v5];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v64 = transitionCopy;
  containerView = [transitionCopy containerView];
  [containerView addSubview:v9];
  v74 = toolbar;
  [containerView addSubview:toolbar];
  [containerView addSubview:navigationBar];
  v24 = [[_UIBackdropView alloc] initWithPrivateStyle:-4];
  [(_UIBackdropView *)v24 setGroupName:@"commitAnimation"];
  [containerView bounds];
  [(UIView *)v24 setFrame:?];
  [containerView addSubview:v24];
  v58 = v8;
  [containerView addSubview:v8];
  window = [containerView window];
  v26 = __UIStatusBarManagerForWindow(window);
  [v26 statusBarHeight];
  v28 = v27;

  v29 = 0.0;
  v30 = 0.0;
  if (([navigationController isNavigationBarHidden] & 1) == 0)
  {
    [navigationBar bounds];
    v30 = v31;
  }

  if (([v77 isToolbarHidden] & 1) == 0)
  {
    [v74 bounds];
    v29 = v32;
  }

  if (v56)
  {
    v33 = 30.0;
  }

  else
  {
    v33 = 60.0;
  }

  v34 = v28 + v30;
  v35 = objc_alloc_init(UIView);
  [containerView bounds];
  v37 = v36;
  [containerView bounds];
  [(UIView *)v35 setBounds:0.0, v34, v37];
  [containerView bounds];
  v39 = v38;
  [containerView bounds];
  [(UIView *)v35 setFrame:0.0, v34, v39, v40 - v34 - v29];
  [(UIView *)v35 setClipsToBounds:1];
  v41 = [[_UIBackdropView alloc] initWithPrivateStyle:-4];
  [(_UIBackdropView *)v41 setGroupName:@"commitAnimation"];
  [(UIView *)v35 addSubview:v41];
  [containerView addSubview:v35];
  [platterView addSubview:v78];
  [v78 addSubview:v69];
  [v9 setNeedsLayout];
  [v9 layoutIfNeeded];
  [v69 frame];
  [(UIView *)v35 convertRect:v78 fromView:?];
  [(UIView *)v41 setFrame:?];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59___UIPreviewTransitionController__animateCommitTransition___block_invoke;
  aBlock[3] = &unk_1E70F4570;
  v98 = navigationController;
  v99 = v5;
  v42 = v9;
  v100 = v42;
  v43 = v58;
  v101 = v43;
  v44 = v69;
  v102 = v44;
  v103 = platterView;
  v45 = v41;
  v104 = v45;
  v59 = platterView;
  v70 = v5;
  v61 = navigationController;
  v55 = v24;
  v57 = _Block_copy(aBlock);
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __59___UIPreviewTransitionController__animateCommitTransition___block_invoke_2;
  v79[3] = &unk_1E711B248;
  v80 = v24;
  v81 = v45;
  v82 = v35;
  v83 = v43;
  v84 = v42;
  v85 = containerView;
  v93 = v16;
  v94 = v18;
  v95 = v20;
  v96 = v22;
  v86 = v44;
  v87 = superview;
  v88 = v74;
  v89 = superview2;
  v90 = navigationBar;
  v91 = selfCopy;
  v92 = v64;
  v65 = v64;
  v66 = navigationBar;
  v63 = superview2;
  v46 = v74;
  v75 = superview;
  v68 = v44;
  v47 = containerView;
  v48 = v42;
  v49 = v43;
  v50 = v35;
  v51 = v45;
  v52 = v55;
  v53 = _Block_copy(v79);
  [UIView _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v57 options:v53 animations:0.0 completion:v33];
  feedbackGenerator = [(_UIPreviewTransitionController *)selfCopy feedbackGenerator];
  [feedbackGenerator transitionToState:@"commit" ended:1];
}

- (void)_layoutForPresentationPhase:(unint64_t)phase
{
  animationsByPresentationPhase = [(_UIPreviewTransitionController *)self animationsByPresentationPhase];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:phase];
  v8 = [animationsByPresentationPhase objectForKeyedSubscript:v5];

  v6 = [v8 objectForKeyedSubscript:@"animations"];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
  }
}

- (void)_completeAnimationWithPresentationPhase:(unint64_t)phase finished:(BOOL)finished
{
  finishedCopy = finished;
  animationsByPresentationPhase = [(_UIPreviewTransitionController *)self animationsByPresentationPhase];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:phase];
  v12 = [animationsByPresentationPhase objectForKeyedSubscript:v8];

  v9 = [v12 objectForKeyedSubscript:@"completion"];
  if (phase == 1 && !finishedCopy)
  {
    v10 = _UIStatesFeedbackGeneratorForcePresentationStatePreview;
LABEL_7:
    feedbackGenerator = [(_UIPreviewTransitionController *)self feedbackGenerator];
    [feedbackGenerator transitionToState:*v10 ended:0];

    goto LABEL_8;
  }

  if (phase == 5 && finishedCopy)
  {
    v10 = _UIStatesFeedbackGeneratorForcePresentationStateCommit;
    goto LABEL_7;
  }

LABEL_8:
  if (v9)
  {
    v9[2](v9, finishedCopy);
  }
}

+ (id)performCommitTransitionWithDelegate:(id)delegate forViewController:(id)controller previewViewController:(id)viewController previewInteractionController:(id)interactionController completion:(id)completion
{
  delegateCopy = delegate;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  interactionControllerCopy = interactionController;
  completionCopy = completion;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegateCopy previewInteractionControllerShouldPerformCompatibilityCommitTransition:interactionControllerCopy])
  {
    v26 = [[_UIPreviewInteractionCommitTransition alloc] initWithPresentedViewController:viewControllerCopy];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_4;
    v28[3] = &unk_1E70F6228;
    v29 = delegateCopy;
    v30 = interactionControllerCopy;
    v31 = viewControllerCopy;
    [(_UIPreviewInteractionCommitTransition *)v26 performTransitionWithPresentationBlock:v28 completion:completionCopy];

    v18 = v29;
    v17 = completionCopy;
  }

  else
  {
    if (completionCopy)
    {
      v16 = completionCopy;
    }

    else
    {
      v16 = &__block_literal_global_459;
    }

    v17 = _Block_copy(v16);

    v18 = delegateCopy;
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v18 performsCustomCommitTransitionForPreviewInteractionController:interactionControllerCopy])
    {
      [v18 previewInteractionController:interactionControllerCopy performCustomCommitForPreviewViewController:viewControllerCopy completion:v17];
    }

    else if ([v18 performsViewControllerCommitTransitionForPreviewInteractionController:interactionControllerCopy])
    {
      v19 = viewControllerCopy;
      v20 = v19;
      if (objc_opt_respondsToSelector())
      {
        v20 = [v18 previewInteractionController:interactionControllerCopy committedViewControllerForPreviewViewController:v19];
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_2;
      v45[3] = &unk_1E70F6B40;
      v46 = v19;
      v18 = v18;
      v47 = v18;
      v48 = interactionControllerCopy;
      v49 = v20;
      v21 = v20;
      [v46 _transitionToViewController:v21 whilePerforming:v45 completion:v17];
    }

    else
    {
      v22 = objc_opt_class();
      v39 = 0;
      v40 = &v39;
      v41 = 0x3032000000;
      v42 = __Block_byref_object_copy__156;
      v43 = __Block_byref_object_dispose__156;
      if (objc_opt_isKindOfClass())
      {
        v23 = controllerCopy;
      }

      else
      {
        v23 = 0;
      }

      v44 = v23;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_48;
      v38[3] = &unk_1E711B270;
      v38[4] = &v39;
      v38[5] = v22;
      [controllerCopy _traverseViewControllerHierarchyFromLevel:0 withBlock:v38];
      v24 = v40[5];
      if (!v24)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Could not find a UINavigationController instance to perform a default commit transition. Please perform a custom view controller hierarchy transition in -commitPreviewViewController:committedViewController: on UIViewControllerPreviewingDelegate."];
        v24 = v40[5];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_2_54;
      v34[3] = &unk_1E711B298;
      v35 = viewControllerCopy;
      v18 = v18;
      v36 = v18;
      v37 = interactionControllerCopy;
      [v35 _transitionToNavigationViewController:v24 withWrapper:v34];
      transitionCoordinator = [v40[5] transitionCoordinator];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_3_56;
      v32[3] = &unk_1E70F3770;
      v17 = v17;
      v33 = v17;
      [transitionCoordinator animateAlongsideTransitionInView:0 animation:0 completion:v32];

      _Block_object_dispose(&v39, 8);
    }

    v26 = 0;
  }

  return v26;
}

- (UIViewControllerContextTransitioning)transitionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);

  return WeakRetained;
}

@end