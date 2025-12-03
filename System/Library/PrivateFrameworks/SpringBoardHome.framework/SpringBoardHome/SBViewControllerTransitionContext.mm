@interface SBViewControllerTransitionContext
- (BOOL)_animatorIsInteractive;
- (BOOL)_animatorSupportsRestarting;
- (BOOL)_objectSupportsRestarting:(id)restarting;
- (BOOL)animateAlongsideTransition:(id)transition completion:(id)completion;
- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion;
- (BOOL)isAnimated;
- (BOOL)requiresCancellableAnimations;
- (BOOL)supportsRestarting;
- (CGAffineTransform)targetTransform;
- (CGRect)finalFrameForViewController:(id)controller;
- (CGRect)initialFrameForViewController:(id)controller;
- (SBViewControllerTransitionContext)init;
- (SBViewControllerTransitionContextDelegate)delegate;
- (double)completionVelocity;
- (id)_acquireTransitionCompletion;
- (id)_interactiveAnimator;
- (id)_reversibleAnimator;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (int64_t)completionCurve;
- (void)_completeTransition;
- (void)_completeTransitionIfPossible;
- (void)_runAlongsideAnimationBlocksInEnclosingAnimationContext;
- (void)_runAlongsideAnimationBlocksWithFactory:(id)factory options:(unint64_t)options;
- (void)_runInteractionEndedHandlers;
- (void)_updateTransitionAnimationFactoryAndOptions;
- (void)addTransitionContinuation:(id)continuation;
- (void)cancelInteractiveTransition;
- (void)cancelTransition;
- (void)completeTransition:(BOOL)transition;
- (void)dealloc;
- (void)finishInteractiveTransition;
- (void)notifyWhenInteractionEndsUsingBlock:(id)block;
- (void)restartTransition;
- (void)setFinalFrame:(CGRect)frame forViewController:(id)controller;
- (void)setInitialFrame:(CGRect)frame forViewController:(id)controller;
- (void)setTargetTransform:(CGAffineTransform *)transform;
- (void)startTransition;
- (void)updateInteractiveTransition:(double)transition;
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

    array = [MEMORY[0x1E695DF70] array];
    alongsideAnimations = v3->_alongsideAnimations;
    v3->_alongsideAnimations = array;

    array2 = [MEMORY[0x1E695DF70] array];
    alongsideCompletions = v3->_alongsideCompletions;
    v3->_alongsideCompletions = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    alongsideInteractionEndedHandlers = v3->_alongsideInteractionEndedHandlers;
    v3->_alongsideInteractionEndedHandlers = array3;

    v20 = [MEMORY[0x1E695DFA8] set];
    alongsideAnimationViews = v3->_alongsideAnimationViews;
    v3->_alongsideAnimationViews = v20;

    v3->_wantsAnimation = 1;
    array4 = [MEMORY[0x1E695DF70] array];
    transitionContinuations = v3->_transitionContinuations;
    v3->_transitionContinuations = array4;
  }

  return v3;
}

- (void)startTransition
{
  selfCopy = self;
  v8 = selfCopy;
  if (selfCopy->_interactor)
  {
    [(SBViewControllerTransitionContext *)selfCopy _interactorSupportsRestarting];
    selfCopy = v8;
  }

  delegate = [(SBViewControllerTransitionContext *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate transitionWillBegin:v8];
  }

  v8->_transitionStarted = 1;
  if (!v8->_interactor)
  {
    if ([(SBViewControllerTransitionContext *)v8 isAnimated])
    {
      [(SBViewControllerTransitionContext *)v8 _updateTransitionAnimationFactoryAndOptions];
      transitionAnimationFactory = [(SBViewControllerTransitionContext *)v8 transitionAnimationFactory];
      [(SBViewControllerTransitionContext *)v8 _runAlongsideAnimationBlocksWithFactory:transitionAnimationFactory options:[(SBViewControllerTransitionContext *)v8 transitionAnimationOptions]];
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
    [delegate transitionDidBegin:?];
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
  selfCopy = self;
  delegate = [(SBViewControllerTransitionContext *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate transitionWillFinish:selfCopy];
  }

  selfCopy->_transitionFinished = 1;
  if (selfCopy->_animator && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(UIViewControllerAnimatedTransitioning *)selfCopy->_animator animationEnded:!selfCopy->_transitionIsCancelled];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = selfCopy->_alongsideCompletions;
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

  [(NSMutableArray *)selfCopy->_alongsideAnimations removeAllObjects];
  [(NSMutableArray *)selfCopy->_alongsideCompletions removeAllObjects];
  [(NSMutableArray *)selfCopy->_alongsideInteractionEndedHandlers removeAllObjects];
  [(NSMutableSet *)selfCopy->_alongsideAnimationViews removeAllObjects];
  [(NSMutableArray *)selfCopy->_transitionContinuations removeAllObjects];
  if (objc_opt_respondsToSelector())
  {
    [delegate transitionDidFinish:selfCopy];
  }

  [(NSMutableDictionary *)selfCopy->_viewControllersByKey removeAllObjects];
  [(NSMutableDictionary *)selfCopy->_viewsByKey removeAllObjects];
  [(NSMapTable *)selfCopy->_initialFramesByViewController removeAllObjects];
  [(NSMapTable *)selfCopy->_finalFramesByViewController removeAllObjects];
  transitionAnimationFactory = selfCopy->_transitionAnimationFactory;
  selfCopy->_transitionAnimationFactory = 0;

  animator = selfCopy->_animator;
  selfCopy->_animator = 0;

  interactor = selfCopy->_interactor;
  selfCopy->_interactor = 0;

  selfCopy->_transitionPercentComplete = 1.0;
  selfCopy->_transitionAnimationOptions = 0;
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
  _animatorIsReversible = [(SBViewControllerTransitionContext *)self _animatorIsReversible];
  if (_animatorIsReversible)
  {
    LOBYTE(_animatorIsReversible) = objc_opt_respondsToSelector();
  }

  return _animatorIsReversible & 1;
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
  _interactiveAnimator = [(SBViewControllerTransitionContext *)self _interactiveAnimator];
  [(SBViewControllerTransitionContext *)self completionVelocity];
  v4 = v3;
  completionCurve = [(SBViewControllerTransitionContext *)self completionCurve];
  interactor = self->_interactor;
  self->_interactor = 0;

  [(SBViewControllerTransitionContext *)self _runInteractionEndedHandlers];
  [(SBViewControllerTransitionContext *)self _updateTransitionAnimationFactoryAndOptions];
  transitionAnimationFactory = [(SBViewControllerTransitionContext *)self transitionAnimationFactory];
  [(SBViewControllerTransitionContext *)self _runAlongsideAnimationBlocksWithFactory:transitionAnimationFactory options:[(SBViewControllerTransitionContext *)self transitionAnimationOptions]];

  [_interactiveAnimator finishInteractiveTransition:self withCompletionSpeed:completionCurve completionCurve:v4];
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

- (void)setInitialFrame:(CGRect)frame forViewController:(id)controller
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  initialFramesByViewController = self->_initialFramesByViewController;
  v9 = MEMORY[0x1E696B098];
  controllerCopy = controller;
  v11 = [v9 valueWithCGRect:{x, y, width, height}];
  [(NSMapTable *)initialFramesByViewController setObject:v11 forKey:controllerCopy];
}

- (void)setFinalFrame:(CGRect)frame forViewController:(id)controller
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  finalFramesByViewController = self->_finalFramesByViewController;
  v9 = MEMORY[0x1E696B098];
  controllerCopy = controller;
  v11 = [v9 valueWithCGRect:{x, y, width, height}];
  [(NSMapTable *)finalFramesByViewController setObject:v11 forKey:controllerCopy];
}

- (void)updateInteractiveTransition:(double)transition
{
  _interactiveAnimator = [(SBViewControllerTransitionContext *)self _interactiveAnimator];
  self->_transitionPercentComplete = transition;
  [(SBViewControllerTransitionContext *)self _runAlongsideAnimationBlocksInEnclosingAnimationContext];
  [_interactiveAnimator updateTransition:self withPercentComplete:transition];
}

- (void)cancelInteractiveTransition
{
  _interactiveAnimator = [(SBViewControllerTransitionContext *)self _interactiveAnimator];
  [(SBViewControllerTransitionContext *)self cancelTransition];
}

- (void)completeTransition:(BOOL)transition
{
  v17 = *MEMORY[0x1E69E9840];
  delegate = [(SBViewControllerTransitionContext *)self delegate];
  if (!self->_transitionDidBeginCalled && (objc_opt_respondsToSelector() & 1) != 0)
  {
    self->_transitionDidBeginCalled = 1;
    [delegate transitionDidBegin:self];
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
        _acquireTransitionCompletion = [(SBViewControllerTransitionContext *)self _acquireTransitionCompletion];
        (*(v10 + 16))(v10, self, _acquireTransitionCompletion);

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(SBViewControllerTransitionContext *)self _completeTransitionIfPossible];
}

- (CGRect)initialFrameForViewController:(id)controller
{
  v3 = [(NSMapTable *)self->_initialFramesByViewController objectForKey:controller];
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

- (CGRect)finalFrameForViewController:(id)controller
{
  v3 = [(NSMapTable *)self->_finalFramesByViewController objectForKey:controller];
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
  _reversibleAnimator = [(SBViewControllerTransitionContext *)self _reversibleAnimator];
  delegate = [(SBViewControllerTransitionContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate transitionWillReverse:self];
  }

  [(SBViewControllerTransitionContext *)self completionVelocity];
  v5 = v4;
  completionCurve = [(SBViewControllerTransitionContext *)self completionCurve];
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
    [delegate transitionDidReverse:self];
  }

  if ([(SBViewControllerTransitionContext *)self isAnimated])
  {
    [(SBViewControllerTransitionContext *)self _updateTransitionAnimationFactoryAndOptions];
    transitionAnimationFactory = [(SBViewControllerTransitionContext *)self transitionAnimationFactory];
    [(SBViewControllerTransitionContext *)self _runAlongsideAnimationBlocksWithFactory:transitionAnimationFactory options:[(SBViewControllerTransitionContext *)self transitionAnimationOptions]];
  }

  else
  {
    [(SBViewControllerTransitionContext *)self _runAlongsideAnimationBlocksInEnclosingAnimationContext];
  }

  [_reversibleAnimator cancelTransition:self withCompletionSpeed:completionCurve completionCurve:v5];
}

- (BOOL)supportsRestarting
{
  _animatorSupportsRestarting = [(SBViewControllerTransitionContext *)self _animatorSupportsRestarting];
  if (_animatorSupportsRestarting)
  {
    if (self->_interactor)
    {

      LOBYTE(_animatorSupportsRestarting) = [(SBViewControllerTransitionContext *)self _interactorSupportsRestarting];
    }

    else
    {
      LOBYTE(_animatorSupportsRestarting) = 1;
    }
  }

  return _animatorSupportsRestarting;
}

- (void)restartTransition
{
  _reversibleAnimator = [(SBViewControllerTransitionContext *)self _reversibleAnimator];
  delegate = [(SBViewControllerTransitionContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate transitionWillReverse:self];
  }

  self->_animationFinished = 0;
  self->_transitionIsCancelled = 0;
  self->_transitionWasInteractive = 0;
  if (objc_opt_respondsToSelector())
  {
    [delegate transitionDidReverse:self];
  }

  if (self->_interactor)
  {
    _interactiveAnimator = [(SBViewControllerTransitionContext *)self _interactiveAnimator];
    [_interactiveAnimator percentComplete];
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
      transitionAnimationFactory = [(SBViewControllerTransitionContext *)self transitionAnimationFactory];
      [(SBViewControllerTransitionContext *)self _runAlongsideAnimationBlocksWithFactory:transitionAnimationFactory options:[(SBViewControllerTransitionContext *)self transitionAnimationOptions]];
    }

    else
    {
      [(SBViewControllerTransitionContext *)self _runAlongsideAnimationBlocksInEnclosingAnimationContext];
    }

    [_reversibleAnimator animateTransition:self];
  }
}

- (BOOL)animateAlongsideTransition:(id)transition completion:(id)completion
{
  transitionCopy = transition;
  completionCopy = completion;
  if (transitionCopy | completionCopy)
  {
    if (transitionCopy)
    {
      alongsideAnimations = self->_alongsideAnimations;
      v9 = [transitionCopy copy];
      v10 = _Block_copy(v9);
      [(NSMutableArray *)alongsideAnimations addObject:v10];
    }

    if (completionCopy)
    {
      alongsideCompletions = self->_alongsideCompletions;
      v12 = [completionCopy copy];
      v13 = _Block_copy(v12);
      [(NSMutableArray *)alongsideCompletions addObject:v13];
    }
  }

  return (transitionCopy | completionCopy) != 0;
}

- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion
{
  viewCopy = view;
  v9 = [(SBViewControllerTransitionContext *)self animateAlongsideTransition:animation completion:completion];
  if (v9)
  {
    containerView = [(SBViewControllerTransitionContext *)self containerView];

    if (containerView != viewCopy)
    {
      [(NSMutableSet *)self->_alongsideAnimationViews addObject:viewCopy];
    }
  }

  return v9;
}

- (void)notifyWhenInteractionEndsUsingBlock:(id)block
{
  alongsideInteractionEndedHandlers = self->_alongsideInteractionEndedHandlers;
  v5 = [block copy];
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

- (void)addTransitionContinuation:(id)continuation
{
  transitionContinuations = self->_transitionContinuations;
  v5 = [continuation copy];
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
  _animatorIsReversible = [(SBViewControllerTransitionContext *)self _animatorIsReversible];
  if (_animatorIsReversible)
  {
    animator = self->_animator;

    LOBYTE(_animatorIsReversible) = [(SBViewControllerTransitionContext *)self _objectSupportsRestarting:animator];
  }

  return _animatorIsReversible;
}

- (BOOL)_objectSupportsRestarting:(id)restarting
{
  restartingCopy = restarting;
  if (objc_opt_respondsToSelector())
  {
    supportsRestarting = [restartingCopy supportsRestarting];
  }

  else
  {
    supportsRestarting = 0;
  }

  return supportsRestarting;
}

- (void)_runAlongsideAnimationBlocksWithFactory:(id)factory options:(unint64_t)options
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __85__SBViewControllerTransitionContext__runAlongsideAnimationBlocksWithFactory_options___block_invoke;
  v4[3] = &unk_1E8088C90;
  v4[4] = self;
  [MEMORY[0x1E698E7D0] animateWithFactory:factory options:options actions:v4];
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBViewControllerTransitionContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
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
  containerView = [(SBViewControllerTransitionContext *)self containerView];
  v15 = [v5 appendPointer:containerView withName:@"containerView"];

  delegate = [(SBViewControllerTransitionContext *)self delegate];
  v17 = [v5 appendPointer:delegate withName:@"delegate"];

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
  v23 = prefixCopy;
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
  succinctDescriptionBuilder = [(SBViewControllerTransitionContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (CGAffineTransform)targetTransform
{
  v3 = *&self->tx;
  *&retstr->a = *&self->c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].a;
  return self;
}

- (void)setTargetTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_targetTransform.c = *&transform->c;
  *&self->_targetTransform.tx = v4;
  *&self->_targetTransform.a = v3;
}

@end