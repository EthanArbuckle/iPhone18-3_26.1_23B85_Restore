@interface _UIPreviewTransitionController
+ (id)performCommitTransitionWithDelegate:(id)a3 forViewController:(id)a4 previewViewController:(id)a5 previewInteractionController:(id)a6 completion:(id)a7;
- (UIViewControllerContextTransitioning)transitionContext;
- (_UIPreviewTransitionController)initWithInteractionProgress:(id)a3 targetPresentationPhase:(unint64_t)a4;
- (void)_animateCommitTransition:(id)a3;
- (void)_animateDismissTransition:(id)a3;
- (void)_animatePreviewTransition:(id)a3;
- (void)_animateRevealTransition:(id)a3;
- (void)_completeAnimationWithPresentationPhase:(unint64_t)a3 finished:(BOOL)a4;
- (void)_layoutForPresentationPhase:(unint64_t)a3;
- (void)animateTransition:(id)a3;
- (void)animationEnded:(BOOL)a3;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4;
- (void)interactionProgressDidUpdate:(id)a3;
- (void)setAnimations:(id)a3 completion:(id)a4 forPresentationPhase:(unint64_t)a5;
- (void)startInteractiveTransition:(id)a3;
- (void)updateInteractiveTransition:(double)a3;
@end

@implementation _UIPreviewTransitionController

- (_UIPreviewTransitionController)initWithInteractionProgress:(id)a3 targetPresentationPhase:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = _UIPreviewTransitionController;
  v8 = [(UIPercentDrivenInteractiveTransition *)&v13 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [(_UIPreviewTransitionController *)v8 setAnimationsByPresentationPhase:v9];

    [v7 addProgressObserver:v8];
    [(_UIPreviewTransitionController *)v8 setInteractionProgress:v7];
    [(_UIPreviewTransitionController *)v8 setTargetPresentationPhase:a4];
    if (a4 > 5 || ((1 << a4) & 0x34) == 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:v8 file:@"_UIPreviewTransitionController.m" lineNumber:58 description:{@"The targetPresentationPhase needs to be Preview, Commit or Cancelled."}];
    }

    v11 = v8;
  }

  return v8;
}

- (void)setAnimations:(id)a3 completion:(id)a4 forPresentationPhase:(unint64_t)a5
{
  aBlock = a4;
  v8 = MEMORY[0x1E695DF90];
  v9 = a3;
  v10 = [v8 dictionaryWithCapacity:2];
  v11 = _Block_copy(v9);

  [v10 setObject:v11 forKeyedSubscript:@"animations"];
  if (aBlock)
  {
    v12 = _Block_copy(aBlock);
    [v10 setObject:v12 forKeyedSubscript:@"completion"];
  }

  v13 = [(_UIPreviewTransitionController *)self animationsByPresentationPhase];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  [v13 setObject:v10 forKeyedSubscript:v14];
}

- (void)animateTransition:(id)a3
{
  v5 = a3;
  [(_UIPreviewTransitionController *)self setTransitionContext:?];
  if ([(_UIPreviewTransitionController *)self targetPresentationPhase]== 2)
  {
    v4 = [(_UIPreviewTransitionController *)self interactionProgress];

    if (v4)
    {
      [(_UIPreviewTransitionController *)self _animateRevealTransition:v5];
    }

    else
    {
      [(_UIPreviewTransitionController *)self _layoutForPresentationPhase:1];
      [v5 completeTransition:1];
      [(_UIPreviewTransitionController *)self _completeAnimationWithPresentationPhase:1 finished:1];
    }
  }

  else if ([(_UIPreviewTransitionController *)self targetPresentationPhase]== 4)
  {
    [(_UIPreviewTransitionController *)self _animateCommitTransition:v5];
  }

  else
  {
    [(_UIPreviewTransitionController *)self _animateDismissTransition:v5];
  }
}

- (void)startInteractiveTransition:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIPreviewTransitionController;
  v4 = a3;
  [(UIPercentDrivenInteractiveTransition *)&v5 startInteractiveTransition:v4];
  [(_UIPreviewTransitionController *)self setTransitionContext:v4, v5.receiver, v5.super_class];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(UIInteractionProgress *)self->_interactionProgress didEnd])
    {
      [(_UIPreviewTransitionController *)self finishInteractiveTransition];
    }
  }
}

- (void)updateInteractiveTransition:(double)a3
{
  v3.receiver = self;
  v3.super_class = _UIPreviewTransitionController;
  [(UIPercentDrivenInteractiveTransition *)&v3 updateInteractiveTransition:a3];
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

- (void)animationEnded:(BOOL)a3
{
  if (a3 && [(_UIPreviewTransitionController *)self targetPresentationPhase]== 2)
  {
    v4 = [(_UIPreviewTransitionController *)self transitionContext];
    [(_UIPreviewTransitionController *)self _animatePreviewTransition:v4];
  }
}

- (void)interactionProgressDidUpdate:(id)a3
{
  [a3 percentComplete];
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  v5 = fmax(v4, 0.0);
  [(_UIPreviewTransitionController *)self updateInteractiveTransition:v5];
  v6 = [(_UIPreviewTransitionController *)self feedbackGenerator];
  [v6 transitionToState:@"preview" updated:v5];
}

- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4
{
  v4 = a4;
  v8 = [(_UIPreviewTransitionController *)self transitionContext];
  if ([v8 isInteractive])
  {
    v6 = [(_UIPreviewTransitionController *)self transitionContext];
    v7 = [v6 transitionWasCancelled];

    if ((v7 & 1) == 0)
    {
      if (v4)
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

- (void)_animateRevealTransition:(id)a3
{
  v4 = a3;
  [(_UIPreviewTransitionController *)self transitionDuration:v4];
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
  v9 = v4;
  v7 = v4;
  [UIView animateWithDuration:0 delay:v10 options:v8 animations:v6 completion:0.0];
}

- (void)_animatePreviewTransition:(id)a3
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

  v6 = [(_UIPreviewTransitionController *)self feedbackGenerator];
  [v6 transitionToState:@"preview" ended:1];
}

- (void)_animateDismissTransition:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v6 = v4;
  v7 = _Block_copy(v8);
  [UIView animateWithDuration:v5 animations:v7 completion:0.25];
}

- (void)_animateCommitTransition:(id)a3
{
  v4 = a3;
  v69 = [v4 viewForKey:@"UITransitionContextToView"];
  v5 = [v4 viewControllerForKey:@"UITransitionContextToViewController"];
  v73 = [v4 viewControllerForKey:@"UITransitionContextFromViewController"];
  v6 = [v73 navigationController];
  v76 = self;
  v7 = [(_UIPreviewTransitionController *)self viewsParticipatingInCommitTransition];
  v8 = [v7 objectForKeyedSubscript:@"backgroundView"];
  v9 = [v7 objectForKeyedSubscript:@"presentationContainerView"];
  v10 = [v7 objectForKeyedSubscript:@"presentationContainerView"];
  v60 = [v10 platterView];

  v72 = v7;
  v78 = [v7 objectForKeyedSubscript:@"presentationView"];
  v71 = [v6 delegate];
  v56 = objc_opt_respondsToSelector();
  if ([v5 _isNestedNavigationController])
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11;
  v13 = [v6 navigationBar];
  v77 = v12;
  v14 = [v12 toolbar];
  v67 = [v14 superview];
  v62 = [v13 superview];
  [v4 finalFrameForViewController:v5];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v64 = v4;
  v23 = [v4 containerView];
  [v23 addSubview:v9];
  v74 = v14;
  [v23 addSubview:v14];
  [v23 addSubview:v13];
  v24 = [[_UIBackdropView alloc] initWithPrivateStyle:-4];
  [(_UIBackdropView *)v24 setGroupName:@"commitAnimation"];
  [v23 bounds];
  [(UIView *)v24 setFrame:?];
  [v23 addSubview:v24];
  v58 = v8;
  [v23 addSubview:v8];
  v25 = [v23 window];
  v26 = __UIStatusBarManagerForWindow(v25);
  [v26 statusBarHeight];
  v28 = v27;

  v29 = 0.0;
  v30 = 0.0;
  if (([v6 isNavigationBarHidden] & 1) == 0)
  {
    [v13 bounds];
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
  [v23 bounds];
  v37 = v36;
  [v23 bounds];
  [(UIView *)v35 setBounds:0.0, v34, v37];
  [v23 bounds];
  v39 = v38;
  [v23 bounds];
  [(UIView *)v35 setFrame:0.0, v34, v39, v40 - v34 - v29];
  [(UIView *)v35 setClipsToBounds:1];
  v41 = [[_UIBackdropView alloc] initWithPrivateStyle:-4];
  [(_UIBackdropView *)v41 setGroupName:@"commitAnimation"];
  [(UIView *)v35 addSubview:v41];
  [v23 addSubview:v35];
  [v60 addSubview:v78];
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
  v98 = v6;
  v99 = v5;
  v42 = v9;
  v100 = v42;
  v43 = v58;
  v101 = v43;
  v44 = v69;
  v102 = v44;
  v103 = v60;
  v45 = v41;
  v104 = v45;
  v59 = v60;
  v70 = v5;
  v61 = v6;
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
  v85 = v23;
  v93 = v16;
  v94 = v18;
  v95 = v20;
  v96 = v22;
  v86 = v44;
  v87 = v67;
  v88 = v74;
  v89 = v62;
  v90 = v13;
  v91 = v76;
  v92 = v64;
  v65 = v64;
  v66 = v13;
  v63 = v62;
  v46 = v74;
  v75 = v67;
  v68 = v44;
  v47 = v23;
  v48 = v42;
  v49 = v43;
  v50 = v35;
  v51 = v45;
  v52 = v55;
  v53 = _Block_copy(v79);
  [UIView _animateUsingDefaultDampedSpringWithDelay:0 initialSpringVelocity:v57 options:v53 animations:0.0 completion:v33];
  v54 = [(_UIPreviewTransitionController *)v76 feedbackGenerator];
  [v54 transitionToState:@"commit" ended:1];
}

- (void)_layoutForPresentationPhase:(unint64_t)a3
{
  v4 = [(_UIPreviewTransitionController *)self animationsByPresentationPhase];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [v4 objectForKeyedSubscript:v5];

  v6 = [v8 objectForKeyedSubscript:@"animations"];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
  }
}

- (void)_completeAnimationWithPresentationPhase:(unint64_t)a3 finished:(BOOL)a4
{
  v4 = a4;
  v7 = [(_UIPreviewTransitionController *)self animationsByPresentationPhase];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v12 = [v7 objectForKeyedSubscript:v8];

  v9 = [v12 objectForKeyedSubscript:@"completion"];
  if (a3 == 1 && !v4)
  {
    v10 = _UIStatesFeedbackGeneratorForcePresentationStatePreview;
LABEL_7:
    v11 = [(_UIPreviewTransitionController *)self feedbackGenerator];
    [v11 transitionToState:*v10 ended:0];

    goto LABEL_8;
  }

  if (a3 == 5 && v4)
  {
    v10 = _UIStatesFeedbackGeneratorForcePresentationStateCommit;
    goto LABEL_7;
  }

LABEL_8:
  if (v9)
  {
    v9[2](v9, v4);
  }
}

+ (id)performCommitTransitionWithDelegate:(id)a3 forViewController:(id)a4 previewViewController:(id)a5 previewInteractionController:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v11 previewInteractionControllerShouldPerformCompatibilityCommitTransition:v14])
  {
    v26 = [[_UIPreviewInteractionCommitTransition alloc] initWithPresentedViewController:v13];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_4;
    v28[3] = &unk_1E70F6228;
    v29 = v11;
    v30 = v14;
    v31 = v13;
    [(_UIPreviewInteractionCommitTransition *)v26 performTransitionWithPresentationBlock:v28 completion:v15];

    v18 = v29;
    v17 = v15;
  }

  else
  {
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &__block_literal_global_459;
    }

    v17 = _Block_copy(v16);

    v18 = v11;
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v18 performsCustomCommitTransitionForPreviewInteractionController:v14])
    {
      [v18 previewInteractionController:v14 performCustomCommitForPreviewViewController:v13 completion:v17];
    }

    else if ([v18 performsViewControllerCommitTransitionForPreviewInteractionController:v14])
    {
      v19 = v13;
      v20 = v19;
      if (objc_opt_respondsToSelector())
      {
        v20 = [v18 previewInteractionController:v14 committedViewControllerForPreviewViewController:v19];
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_2;
      v45[3] = &unk_1E70F6B40;
      v46 = v19;
      v18 = v18;
      v47 = v18;
      v48 = v14;
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
        v23 = v12;
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
      [v12 _traverseViewControllerHierarchyFromLevel:0 withBlock:v38];
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
      v35 = v13;
      v18 = v18;
      v36 = v18;
      v37 = v14;
      [v35 _transitionToNavigationViewController:v24 withWrapper:v34];
      v25 = [v40[5] transitionCoordinator];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __150___UIPreviewTransitionController_performCommitTransitionWithDelegate_forViewController_previewViewController_previewInteractionController_completion___block_invoke_3_56;
      v32[3] = &unk_1E70F3770;
      v17 = v17;
      v33 = v17;
      [v25 animateAlongsideTransitionInView:0 animation:0 completion:v32];

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