@interface SBViewControllerTransitionContext
- (BOOL)_animatorIsInteractive;
- (BOOL)_animatorSupportsRestarting;
- (BOOL)_objectSupportsRestarting:(id)a3;
- (BOOL)animateAlongsideTransition:(id)a3 completion:(id)a4;
- (BOOL)animateAlongsideTransitionInView:(id)a3 animation:(id)a4 completion:(id)a5;
- (BOOL)isAnimated;
- (BOOL)requiresCancellableAnimations;
- (BOOL)supportsRestarting;
- (CGAffineTransform)targetTransform;
- (CGRect)finalFrameForViewController:(id)a3;
- (CGRect)initialFrameForViewController:(id)a3;
- (SBViewControllerTransitionContext)init;
- (SBViewControllerTransitionContextDelegate)delegate;
- (double)completionVelocity;
- (id)_acquireTransitionCompletion;
- (id)_interactiveAnimator;
- (id)_reversibleAnimator;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (int64_t)completionCurve;
- (void)_completeTransition;
- (void)_completeTransitionIfPossible;
- (void)_runAlongsideAnimationBlocksInEnclosingAnimationContext;
- (void)_runAlongsideAnimationBlocksWithFactory:(id)a3 options:(unint64_t)a4;
- (void)_runInteractionEndedHandlers;
- (void)_updateTransitionAnimationFactoryAndOptions;
- (void)addTransitionContinuation:(id)a3;
- (void)cancelInteractiveTransition;
- (void)cancelTransition;
- (void)completeTransition:(BOOL)a3;
- (void)dealloc;
- (void)finishInteractiveTransition;
- (void)notifyWhenInteractionEndsUsingBlock:(id)a3;
- (void)restartTransition;
- (void)setFinalFrame:(CGRect)a3 forViewController:(id)a4;
- (void)setInitialFrame:(CGRect)a3 forViewController:(id)a4;
- (void)setTargetTransform:(CGAffineTransform *)a3;
- (void)startTransition;
- (void)updateInteractiveTransition:(double)a3;
@end

@implementation SBViewControllerTransitionContext

- (SBViewControllerTransitionContext)init
{
  v25.receiver = self;
  v25.super_class = SBViewControllerTransitionContext;
  v2 = [(SBViewControllerTransitionContext *)&v25 init];
  v3 = v2;
  if (v2)
  {
    v2->_presentationStyle = -1;
    v4 = MEMORY[0x1E695EFD0];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&v2->_targetTransform.a = *MEMORY[0x1E695EFD0];
    *&v2->_targetTransform.c = v5;
    *&v2->_targetTransform.tx = *(v4 + 32);
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    viewControllersByKey = v3->_viewControllersByKey;
    v3->_viewControllersByKey = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    viewsByKey = v3->_viewsByKey;
    v3->_viewsByKey = v8;

    v10 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:2];
    initialFramesByViewController = v3->_initialFramesByViewController;
    v3->_initialFramesByViewController = v10;

    v12 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:2];
    finalFramesByViewController = v3->_finalFramesByViewController;
    v3->_finalFramesByViewController = v12;

    v14 = [MEMORY[0x1E695DF70] array];
    alongsideAnimations = v3->_alongsideAnimations;
    v3->_alongsideAnimations = v14;

    v16 = [MEMORY[0x1E695DF70] array];
    alongsideCompletions = v3->_alongsideCompletions;
    v3->_alongsideCompletions = v16;

    v18 = [MEMORY[0x1E695DF70] array];
    alongsideInteractionEndedHandlers = v3->_alongsideInteractionEndedHandlers;
    v3->_alongsideInteractionEndedHandlers = v18;

    v20 = [MEMORY[0x1E695DFA8] set];
    alongsideAnimationViews = v3->_alongsideAnimationViews;
    v3->_alongsideAnimationViews = v20;

    v3->_wantsAnimation = 1;
    v22 = [MEMORY[0x1E695DF70] array];
    transitionContinuations = v3->_transitionContinuations;
    v3->_transitionContinuations = v22;
  }

  return v3;
}

- (void)startTransition
{
  v2 = self;
  v8 = v2;
  if (v2->_interactor)
  {
    [(SBViewControllerTransitionContext *)v2 _interactorSupportsRestarting];
    v2 = v8;
  }

  v3 = [(SBViewControllerTransitionContext *)v2 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 transitionWillBegin:v8];
  }

  v8->_transitionStarted = 1;
  if (!v8->_interactor)
  {
    if ([(SBViewControllerTransitionContext *)v8 isAnimated])
    {
      [(SBViewControllerTransitionContext *)v8 _updateTransitionAnimationFactoryAndOptions];
      v6 = [(SBViewControllerTransitionContext *)v8 transitionAnimationFactory];
      [(SBViewControllerTransitionContext *)v8 _runAlongsideAnimationBlocksWithFactory:v6 options:[(SBViewControllerTransitionContext *)v8 transitionAnimationOptions]];
    }

    else
    {
      animator = v8->_animator;
      [(SBViewControllerTransitionContext *)v8 _runAlongsideAnimationBlocksInEnclosingAnimationContext];
      if (!animator)
      {
        v5 = 1;
        goto LABEL_11;
      }
    }

    [(UIViewControllerAnimatedTransitioning *)v8->_animator animateTransition:?];
    v5 = 0;
LABEL_11:
    v4 = v8;
    goto LABEL_12;
  }

  [(SBViewControllerTransitionContext *)v8 _startInteractiveTransition];
  v4 = v8;
  v5 = 0;
LABEL_12:
  if (!v4->_transitionDidBeginCalled && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8->_transitionDidBeginCalled = 1;
    [v3 transitionDidBegin:?];
  }

  if (v5)
  {
    [(SBViewControllerTransitionContext *)v8 completeTransition:1];
  }
}

- (SBViewControllerTransitionContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_completeTransitionIfPossible
{
  if (self->_animationFinished && !self->_outstandingClientCompletionCount)
  {
    [(SBViewControllerTransitionContext *)self _completeTransition];
  }
}

- (void)_completeTransition
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = self;
  v3 = [(SBViewControllerTransitionContext *)v2 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 transitionWillFinish:v2];
  }

  v2->_transitionFinished = 1;
  if (v2->_animator && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(UIViewControllerAnimatedTransitioning *)v2->_animator animationEnded:!v2->_transitionIsCancelled];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2->_alongsideCompletions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v12 + 1) + 8 * v8) + 16))(*(*(&v12 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)v2->_alongsideAnimations removeAllObjects];
  [(NSMutableArray *)v2->_alongsideCompletions removeAllObjects];
  [(NSMutableArray *)v2->_alongsideInteractionEndedHandlers removeAllObjects];
  [(NSMutableSet *)v2->_alongsideAnimationViews removeAllObjects];
  [(NSMutableArray *)v2->_transitionContinuations removeAllObjects];
  if (objc_opt_respondsToSelector())
  {
    [v3 transitionDidFinish:v2];
  }

  [(NSMutableDictionary *)v2->_viewControllersByKey removeAllObjects];
  [(NSMutableDictionary *)v2->_viewsByKey removeAllObjects];
  [(NSMapTable *)v2->_initialFramesByViewController removeAllObjects];
  [(NSMapTable *)v2->_finalFramesByViewController removeAllObjects];
  transitionAnimationFactory = v2->_transitionAnimationFactory;
  v2->_transitionAnimationFactory = 0;

  animator = v2->_animator;
  v2->_animator = 0;

  interactor = v2->_interactor;
  v2->_interactor = 0;

  v2->_transitionPercentComplete = 1.0;
  v2->_transitionAnimationOptions = 0;
}

- (BOOL)isAnimated
{
  animator = self->_animator;
  if (animator)
  {
    LOBYTE(animator) = self->_wantsAnimation;
  }

  return animator & 1;
}

- (void)_updateTransitionAnimationFactoryAndOptions
{
  if (objc_opt_respondsToSelector())
  {
    [(UIViewControllerAnimatedTransitioning *)self->_animator transitionAnimationFactory:self];
  }

  else
  {
    v4 = MEMORY[0x1E698E7D0];
    [(SBViewControllerTransitionContext *)self transitionDuration];
    [v4 factoryWithDuration:?];
  }
  v3 = ;
  transitionAnimationFactory = self->_transitionAnimationFactory;
  self->_transitionAnimationFactory = v3;

  if (objc_opt_respondsToSelector())
  {
    v6 = [(UIViewControllerAnimatedTransitioning *)self->_animator transitionAnimationOptions:self];
  }

  else
  {
    v6 = 0;
  }

  self->_transitionAnimationOptions = v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SBViewControllerTransitionContext;
  [(SBViewControllerTransitionContext *)&v2 dealloc];
}

- (id)_interactiveAnimator
{
  if ([(SBViewControllerTransitionContext *)self _animatorIsInteractive])
  {
    v3 = self->_animator;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_animatorIsInteractive
{
  v2 = [(SBViewControllerTransitionContext *)self _animatorIsReversible];
  if (v2)
  {
    LOBYTE(v2) = objc_opt_respondsToSelector();
  }

  return v2 & 1;
}

- (void)_runAlongsideAnimationBlocksInEnclosingAnimationContext
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_alongsideAnimations;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)finishInteractiveTransition
{
  self->_transitionWasInteractive = 1;
  v8 = [(SBViewControllerTransitionContext *)self _interactiveAnimator];
  [(SBViewControllerTransitionContext *)self completionVelocity];
  v4 = v3;
  v5 = [(SBViewControllerTransitionContext *)self completionCurve];
  interactor = self->_interactor;
  self->_interactor = 0;

  [(SBViewControllerTransitionContext *)self _runInteractionEndedHandlers];
  [(SBViewControllerTransitionContext *)self _updateTransitionAnimationFactoryAndOptions];
  v7 = [(SBViewControllerTransitionContext *)self transitionAnimationFactory];
  [(SBViewControllerTransitionContext *)self _runAlongsideAnimationBlocksWithFactory:v7 options:[(SBViewControllerTransitionContext *)self transitionAnimationOptions]];

  [v8 finishInteractiveTransition:self withCompletionSpeed:v5 completionCurve:v4];
}

- (double)completionVelocity
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1.0;
  }

  interactor = self->_interactor;

  [(UIViewControllerInteractiveTransitioning *)interactor completionSpeed];
  return result;
}

- (int64_t)completionCurve
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  interactor = self->_interactor;

  return [(UIViewControllerInteractiveTransitioning *)interactor completionCurve];
}

- (void)_runInteractionEndedHandlers
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_alongsideInteractionEndedHandlers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setInitialFrame:(CGRect)a3 forViewController:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  initialFramesByViewController = self->_initialFramesByViewController;
  v9 = MEMORY[0x1E696B098];
  v10 = a4;
  v11 = [v9 valueWithCGRect:{x, y, width, height}];
  [(NSMapTable *)initialFramesByViewController setObject:v11 forKey:v10];
}

- (void)setFinalFrame:(CGRect)a3 forViewController:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  finalFramesByViewController = self->_finalFramesByViewController;
  v9 = MEMORY[0x1E696B098];
  v10 = a4;
  v11 = [v9 valueWithCGRect:{x, y, width, height}];
  [(NSMapTable *)finalFramesByViewController setObject:v11 forKey:v10];
}

- (void)updateInteractiveTransition:(double)a3
{
  v5 = [(SBViewControllerTransitionContext *)self _interactiveAnimator];
  self->_transitionPercentComplete = a3;
  [(SBViewControllerTransitionContext *)self _runAlongsideAnimationBlocksInEnclosingAnimationContext];
  [v5 updateTransition:self withPercentComplete:a3];
}

- (void)cancelInteractiveTransition
{
  v3 = [(SBViewControllerTransitionContext *)self _interactiveAnimator];
  [(SBViewControllerTransitionContext *)self cancelTransition];
}

- (void)completeTransition:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(SBViewControllerTransitionContext *)self delegate];
  if (!self->_transitionDidBeginCalled && (objc_opt_respondsToSelector() & 1) != 0)
  {
    self->_transitionDidBeginCalled = 1;
    [v4 transitionDidBegin:self];
  }

  self->_animationFinished = 1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_transitionContinuations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(SBViewControllerTransitionContext *)self _acquireTransitionCompletion];
        (*(v10 + 16))(v10, self, v11);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(SBViewControllerTransitionContext *)self _completeTransitionIfPossible];
}

- (CGRect)initialFrameForViewController:(id)a3
{
  v3 = [(NSMapTable *)self->_initialFramesByViewController objectForKey:a3];
  [v3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)finalFrameForViewController:(id)a3
{
  v3 = [(NSMapTable *)self->_finalFramesByViewController objectForKey:a3];
  [v3 CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)cancelTransition
{
  self->_transitionWasInteractive = [(SBViewControllerTransitionContext *)self isInteractive];
  v9 = [(SBViewControllerTransitionContext *)self _reversibleAnimator];
  v3 = [(SBViewControllerTransitionContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 transitionWillReverse:self];
  }

  [(SBViewControllerTransitionContext *)self completionVelocity];
  v5 = v4;
  v6 = [(SBViewControllerTransitionContext *)self completionCurve];
  self->_animationFinished = 0;
  *&self->_transitionIsCancelled = 257;
  interactor = self->_interactor;
  self->_interactor = 0;

  if (self->_transitionWasInteractive)
  {
    [(SBViewControllerTransitionContext *)self _runInteractionEndedHandlers];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 transitionDidReverse:self];
  }

  if ([(SBViewControllerTransitionContext *)self isAnimated])
  {
    [(SBViewControllerTransitionContext *)self _updateTransitionAnimationFactoryAndOptions];
    v8 = [(SBViewControllerTransitionContext *)self transitionAnimationFactory];
    [(SBViewControllerTransitionContext *)self _runAlongsideAnimationBlocksWithFactory:v8 options:[(SBViewControllerTransitionContext *)self transitionAnimationOptions]];
  }

  else
  {
    [(SBViewControllerTransitionContext *)self _runAlongsideAnimationBlocksInEnclosingAnimationContext];
  }

  [v9 cancelTransition:self withCompletionSpeed:v6 completionCurve:v5];
}

- (BOOL)supportsRestarting
{
  v3 = [(SBViewControllerTransitionContext *)self _animatorSupportsRestarting];
  if (v3)
  {
    if (self->_interactor)
    {

      LOBYTE(v3) = [(SBViewControllerTransitionContext *)self _interactorSupportsRestarting];
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)restartTransition
{
  v6 = [(SBViewControllerTransitionContext *)self _reversibleAnimator];
  v3 = [(SBViewControllerTransitionContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 transitionWillReverse:self];
  }

  self->_animationFinished = 0;
  self->_transitionIsCancelled = 0;
  self->_transitionWasInteractive = 0;
  if (objc_opt_respondsToSelector())
  {
    [v3 transitionDidReverse:self];
  }

  if (self->_interactor)
  {
    v4 = [(SBViewControllerTransitionContext *)self _interactiveAnimator];
    [v4 percentComplete];
    self->_transitionBeganInteractively = 1;
    [(SBViewControllerTransitionContext *)self updateInteractiveTransition:?];
    [(UIViewControllerInteractiveTransitioning *)self->_interactor startInteractiveTransition:self];
  }

  else
  {
    self->_transitionBeganInteractively = 0;
    if ([(SBViewControllerTransitionContext *)self isAnimated])
    {
      [(SBViewControllerTransitionContext *)self _updateTransitionAnimationFactoryAndOptions];
      v5 = [(SBViewControllerTransitionContext *)self transitionAnimationFactory];
      [(SBViewControllerTransitionContext *)self _runAlongsideAnimationBlocksWithFactory:v5 options:[(SBViewControllerTransitionContext *)self transitionAnimationOptions]];
    }

    else
    {
      [(SBViewControllerTransitionContext *)self _runAlongsideAnimationBlocksInEnclosingAnimationContext];
    }

    [v6 animateTransition:self];
  }
}

- (BOOL)animateAlongsideTransition:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 | v7)
  {
    if (v6)
    {
      alongsideAnimations = self->_alongsideAnimations;
      v9 = [v6 copy];
      v10 = _Block_copy(v9);
      [(NSMutableArray *)alongsideAnimations addObject:v10];
    }

    if (v7)
    {
      alongsideCompletions = self->_alongsideCompletions;
      v12 = [v7 copy];
      v13 = _Block_copy(v12);
      [(NSMutableArray *)alongsideCompletions addObject:v13];
    }
  }

  return (v6 | v7) != 0;
}

- (BOOL)animateAlongsideTransitionInView:(id)a3 animation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(SBViewControllerTransitionContext *)self animateAlongsideTransition:a4 completion:a5];
  if (v9)
  {
    v10 = [(SBViewControllerTransitionContext *)self containerView];

    if (v10 != v8)
    {
      [(NSMutableSet *)self->_alongsideAnimationViews addObject:v8];
    }
  }

  return v9;
}

- (void)notifyWhenInteractionEndsUsingBlock:(id)a3
{
  alongsideInteractionEndedHandlers = self->_alongsideInteractionEndedHandlers;
  v5 = [a3 copy];
  v4 = _Block_copy(v5);
  [(NSMutableArray *)alongsideInteractionEndedHandlers addObject:v4];
}

- (BOOL)requiresCancellableAnimations
{
  if ([(SBViewControllerTransitionContext *)self initiallyInteractive])
  {
    return 1;
  }

  return [(SBViewControllerTransitionContext *)self _animatorIsReversible];
}

- (void)addTransitionContinuation:(id)a3
{
  transitionContinuations = self->_transitionContinuations;
  v5 = [a3 copy];
  v4 = _Block_copy(v5);
  [(NSMutableArray *)transitionContinuations addObject:v4];
}

- (id)_acquireTransitionCompletion
{
  ++self->_outstandingClientCompletionCount;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__SBViewControllerTransitionContext__acquireTransitionCompletion__block_invoke;
  aBlock[3] = &unk_1E8088C90;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);

  return v3;
}

- (id)_reversibleAnimator
{
  if ([(SBViewControllerTransitionContext *)self _animatorIsReversible])
  {
    v3 = self->_animator;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_animatorSupportsRestarting
{
  v3 = [(SBViewControllerTransitionContext *)self _animatorIsReversible];
  if (v3)
  {
    animator = self->_animator;

    LOBYTE(v3) = [(SBViewControllerTransitionContext *)self _objectSupportsRestarting:animator];
  }

  return v3;
}

- (BOOL)_objectSupportsRestarting:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 supportsRestarting];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_runAlongsideAnimationBlocksWithFactory:(id)a3 options:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__SBViewControllerTransitionContext__runAlongsideAnimationBlocksWithFactory_options___block_invoke;
  v4[3] = &unk_1E8088C90;
  v4[4] = self;
  [MEMORY[0x1E698E7D0] animateWithFactory:a3 options:a4 actions:v4];
}

void __85__SBViewControllerTransitionContext__runAlongsideAnimationBlocksWithFactory_options___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 152);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBViewControllerTransitionContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v6 = [v5 appendBool:-[SBViewControllerTransitionContext isInteractive](self withName:{"isInteractive"), @"isInteractive"}];
  v7 = [v5 appendBool:-[SBViewControllerTransitionContext isInterruptible](self withName:{"isInterruptible"), @"isInterruptible"}];
  v8 = [v5 appendBool:-[SBViewControllerTransitionContext isAnimated](self withName:{"isAnimated"), @"isAnimated"}];
  v9 = [v5 appendBool:-[SBViewControllerTransitionContext supportsRestarting](self withName:{"supportsRestarting"), @"supportsRestarting"}];
  v10 = [v5 appendBool:-[SBViewControllerTransitionContext wantsAnimation](self withName:{"wantsAnimation"), @"wantsAnimation"}];
  v11 = [v5 appendBool:-[SBViewControllerTransitionContext isCancelled](self withName:{"isCancelled"), @"isCancelled"}];
  v12 = [v5 appendBool:-[SBViewControllerTransitionContext isTransitioning](self withName:{"isTransitioning"), @"isTransitioning"}];
  [(SBViewControllerTransitionContext *)self percentComplete];
  v13 = [v5 appendFloat:@"percentComplete" withName:?];
  v14 = [(SBViewControllerTransitionContext *)self containerView];
  v15 = [v5 appendPointer:v14 withName:@"containerView"];

  v16 = [(SBViewControllerTransitionContext *)self delegate];
  v17 = [v5 appendPointer:v16 withName:@"delegate"];

  v18 = [(SBViewControllerTransitionContext *)self viewControllerForKey:*MEMORY[0x1E69DE768]];
  if (v18)
  {
  }

  else
  {
    v19 = [(SBViewControllerTransitionContext *)self viewControllerForKey:*MEMORY[0x1E69DE778]];

    if (!v19)
    {
      goto LABEL_5;
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__SBViewControllerTransitionContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v21[3] = &unk_1E8088F88;
  v21[4] = self;
  v22 = v5;
  v23 = v4;
  [v22 appendBodySectionWithName:@"ViewControllers" multilinePrefix:v23 block:v21];

LABEL_5:

  return v5;
}

void __75__SBViewControllerTransitionContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E69DE768];
  v3 = [*(a1 + 32) viewControllerForKey:*MEMORY[0x1E69DE768]];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__SBViewControllerTransitionContext_descriptionBuilderWithMultilinePrefix___block_invoke_2;
    v12[3] = &unk_1E8088F18;
    v12[4] = *(a1 + 32);
    v13 = v4;
    [v13 appendBodySectionWithName:v2 multilinePrefix:v5 block:v12];
  }

  v6 = *MEMORY[0x1E69DE778];
  v7 = [*(a1 + 32) viewControllerForKey:*MEMORY[0x1E69DE778]];

  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__SBViewControllerTransitionContext_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v10[3] = &unk_1E8088F18;
    v10[4] = *(a1 + 32);
    v11 = v8;
    [v11 appendBodySectionWithName:v6 multilinePrefix:v9 block:v10];
  }
}

void __75__SBViewControllerTransitionContext_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x1E69DE768];
  v8 = [*(a1 + 32) viewControllerForKey:*MEMORY[0x1E69DE768]];
  v3 = [*(a1 + 40) appendPointer:v8 withName:v2];
  v4 = *(a1 + 40);
  [*(a1 + 32) initialFrameForViewController:v8];
  v5 = [v4 appendRect:@"initialFrameForViewController" withName:?];
  v6 = *(a1 + 40);
  [*(a1 + 32) finalFrameForViewController:v8];
  v7 = [v6 appendRect:@"finalFrameForViewController" withName:?];
}

void __75__SBViewControllerTransitionContext_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = *MEMORY[0x1E69DE778];
  v8 = [*(a1 + 32) viewControllerForKey:*MEMORY[0x1E69DE778]];
  v3 = [*(a1 + 40) appendPointer:v8 withName:v2];
  v4 = *(a1 + 40);
  [*(a1 + 32) initialFrameForViewController:v8];
  v5 = [v4 appendRect:@"initialFrameForViewController" withName:?];
  v6 = *(a1 + 40);
  [*(a1 + 32) finalFrameForViewController:v8];
  v7 = [v6 appendRect:@"finalFrameForViewController" withName:?];
}

- (id)succinctDescription
{
  v2 = [(SBViewControllerTransitionContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (CGAffineTransform)targetTransform
{
  v3 = *&self->tx;
  *&retstr->a = *&self->c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].a;
  return self;
}

- (void)setTargetTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_targetTransform.c = *&a3->c;
  *&self->_targetTransform.tx = v4;
  *&self->_targetTransform.a = v3;
}

@end