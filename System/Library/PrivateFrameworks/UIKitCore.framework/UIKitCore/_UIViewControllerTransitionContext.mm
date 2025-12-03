@interface _UIViewControllerTransitionContext
- (CGAffineTransform)_affineTransform;
- (CGAffineTransform)finalTransformForViewController:(SEL)controller;
- (CGRect)finalFrameForViewController:(id)controller;
- (CGRect)initialFrameForViewController:(id)controller;
- (UIView)containerView;
- (UIViewControllerAnimatedTransitioning)_animator;
- (UIViewControllerInteractiveTransitioning)_interactor;
- (_UIViewControllerTransitionContext)init;
- (id)_transitionCoordinator;
- (int64_t)_alongsideAnimationsCount;
- (void)__runAlongsideAnimations;
- (void)_addInteractiveUpdateHandler:(id)handler;
- (void)_disableInteractionForViews:(id)views;
- (void)_enableInteractionForDisabledViews;
- (void)_interactivityDidChange:(BOOL)change;
- (void)_runAlongsideCompletions;
- (void)_runInvalidationHandlers;
- (void)_setAnimator:(id)animator;
- (void)_setInteractor:(id)interactor;
- (void)_setInterruptible:(BOOL)interruptible;
- (void)_setPerformingLayoutToLayoutTransition:(BOOL)transition;
- (void)_setTransitionIsCompleting:(BOOL)completing;
- (void)_setTransitionIsInFlight:(BOOL)flight;
- (void)_updateInteractiveTransitionWithoutTrackingPercentComplete:(double)complete;
- (void)cancelInteractiveTransition;
- (void)completeTransition:(BOOL)transition;
- (void)dealloc;
- (void)finishInteractiveTransition;
- (void)pauseInteractiveTransition;
- (void)setTransitionWasCancelled:(BOOL)cancelled;
- (void)updateInteractiveTransition:(double)transition;
@end

@implementation _UIViewControllerTransitionContext

- (_UIViewControllerTransitionContext)init
{
  self->_previousPercentComplete = 0.0;
  self->__completionVelocity = 1.0;
  self->__completionCurve = 0;
  self->_presentationStyle = -1;
  *&self->_transitionContextFlags |= 0x10u;
  self->__allowUserInteraction = 0;
  v3.receiver = self;
  v3.super_class = _UIViewControllerTransitionContext;
  return [(_UIViewControllerTransitionContext *)&v3 init];
}

- (id)_transitionCoordinator
{
  auxContext = self->__auxContext;
  if (auxContext)
  {
    v3 = auxContext;
  }

  else
  {
    v3 = [[_UIViewControllerTransitionCoordinator alloc] initWithMainContext:self];
  }

  return v3;
}

- (void)__runAlongsideAnimations
{
  _UIQOSExcludeCommitFromGlitchTrackingIfUnmanaged();
  auxContext = self->__auxContext;
  if (auxContext)
  {
    _systemAlongsideAnimations = [(_UIViewControllerTransitionCoordinator *)self->__auxContext _systemAlongsideAnimations];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62___UIViewControllerTransitionContext___runAlongsideAnimations__block_invoke;
    v11[3] = &unk_1E70F3590;
    v11[4] = self;
    [(_UIViewControllerTransitionCoordinator *)auxContext _applyBlocks:_systemAlongsideAnimations releaseBlocks:v11];

    v5 = 0;
    _alongsideAnimations = 0;
    do
    {
      v7 = _alongsideAnimations;
      v8 = v5;
      _alongsideAnimations = [(_UIViewControllerTransitionCoordinator *)self->__auxContext _alongsideAnimations];

      if (!_alongsideAnimations)
      {
        break;
      }

      v9 = self->__auxContext;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __62___UIViewControllerTransitionContext___runAlongsideAnimations__block_invoke_2;
      v10[3] = &unk_1E70F3590;
      v10[4] = self;
      [(_UIViewControllerTransitionCoordinator *)v9 _applyBlocks:_alongsideAnimations releaseBlocks:v10];
      v5 = 1;
    }

    while ((v8 & 1) == 0);
    [(_UIViewControllerTransitionCoordinator *)self->__auxContext _setAlongsideAnimations:0];
  }

  *&self->_transitionContextFlags |= 4u;
}

- (void)_runAlongsideCompletions
{
  auxContext = self->__auxContext;
  if (auxContext)
  {
    _alongsideCompletions = [(_UIViewControllerTransitionCoordinator *)self->__auxContext _alongsideCompletions];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62___UIViewControllerTransitionContext__runAlongsideCompletions__block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [(_UIViewControllerTransitionCoordinator *)auxContext _applyBlocks:_alongsideCompletions releaseBlocks:v5];

    [(_UIViewControllerTransitionCoordinator *)self->__auxContext _setInteractiveChangeHandlers:0];
  }
}

- (void)_runInvalidationHandlers
{
  auxContext = self->__auxContext;
  if (auxContext)
  {
    _invalidationHandlers = [(_UIViewControllerTransitionCoordinator *)self->__auxContext _invalidationHandlers];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62___UIViewControllerTransitionContext__runInvalidationHandlers__block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [(_UIViewControllerTransitionCoordinator *)auxContext _applyVoidBlocks:_invalidationHandlers releaseBlocks:v5];
  }
}

- (void)_enableInteractionForDisabledViews
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_disabledViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setUserInteractionEnabled:{1, v9}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  disabledViews = self->_disabledViews;
  self->_disabledViews = 0;
}

- (void)dealloc
{
  [(_UIViewControllerTransitionContext *)self _enableInteractionForDisabledViews];
  [(_UIViewControllerTransitionContext *)self _runInvalidationHandlers];
  v3.receiver = self;
  v3.super_class = _UIViewControllerTransitionContext;
  [(_UIViewControllerTransitionContext *)&v3 dealloc];
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (UIViewControllerAnimatedTransitioning)_animator
{
  WeakRetained = objc_loadWeakRetained(&self->__animator);

  return WeakRetained;
}

- (void)_setAnimator:(id)animator
{
  obj = animator;
  _animator = [(_UIViewControllerTransitionContext *)self _animator];
  if (_animator != obj)
  {
    objc_storeWeak(&self->__animator, obj);
    if (_animator)
    {
      v5 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:_animator];
      if (v5 == self)
      {
        objc_setAssociatedObject(_animator, &_UIAnimationControllerAssociatedTransitionContextKey, 0, 1);
      }
    }

    if (obj)
    {
      objc_setAssociatedObject(obj, &_UIAnimationControllerAssociatedTransitionContextKey, self, 1);
    }
  }
}

- (void)_setInteractor:(id)interactor
{
  obj = interactor;
  WeakRetained = objc_loadWeakRetained(&self->__interactor);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->__interactor);

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->__interactor);
      v8 = objc_getAssociatedObject(v7, &_UIInteractionControllerAssociatedTransitionContextsKey);

      [v8 removeObject:self];
    }

    objc_storeWeak(&self->__interactor, obj);
    v5 = obj;
    if (obj)
    {
      *&self->_transitionContextFlags = *&self->_transitionContextFlags & 0xFE | objc_opt_respondsToSelector() & 1;
      if (objc_opt_respondsToSelector())
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      *&self->_transitionContextFlags = *&self->_transitionContextFlags & 0xFD | v9;
      if (objc_opt_respondsToSelector())
      {
        wantsInteractiveStart = [obj wantsInteractiveStart];
      }

      else
      {
        wantsInteractiveStart = 1;
      }

      [(_UIViewControllerTransitionContext *)self _setInitiallyInteractive:wantsInteractiveStart];
      [(_UIViewControllerTransitionContext *)self _setCurrentlyInteractive:wantsInteractiveStart];
      v11 = objc_getAssociatedObject(obj, &_UIInteractionControllerAssociatedTransitionContextsKey);
      if (!v11)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_setAssociatedObject(obj, &_UIInteractionControllerAssociatedTransitionContextsKey, v11, 1);
      }

      [v11 addObject:self];

      v5 = obj;
    }
  }
}

- (CGAffineTransform)_affineTransform
{
  _animator = [(_UIViewControllerTransitionContext *)self _animator];
  if (_animator && (objc_opt_respondsToSelector() & 1) != 0 && ([_animator window], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    _fromWindowOrientation = [v5 _fromWindowOrientation];
    if (_fromWindowOrientation)
    {
      v8 = _fromWindowOrientation;
      _toWindowOrientation = [v6 _toWindowOrientation];
      v10 = 0.0;
      v11 = 0.0;
      if (_toWindowOrientation != 1)
      {
        if (_toWindowOrientation == 3)
        {
          v11 = 1.57079633;
        }

        else if (_toWindowOrientation == 4)
        {
          v11 = -1.57079633;
        }

        else
        {
          v11 = 3.14159265;
          if (_toWindowOrientation != 2)
          {
            v11 = 0.0;
          }
        }
      }

      if (v8 != 1)
      {
        if (v8 == 3)
        {
          v10 = 1.57079633;
        }

        else if (v8 == 4)
        {
          v10 = -1.57079633;
        }

        else
        {
          v10 = 3.14159265;
          if (v8 != 2)
          {
            v10 = 0.0;
          }
        }
      }

      v18 = *(MEMORY[0x1E695EFD0] + 16);
      *&v20.a = *MEMORY[0x1E695EFD0];
      *&v20.c = v18;
      *&v20.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGAffineTransformRotate(&v21, &v20, v11 - v10);
      v19 = vrndaq_f64(*&v21.c);
      *&v21.a = vrndaq_f64(*&v21.a);
      *&v21.c = v19;
      *&v21.tx = vrndaq_f64(*&v21.tx);
      *&retstr->a = *&v21.a;
      *&retstr->c = v19;
      v17 = *&v21.tx;
    }

    else
    {
      v15 = MEMORY[0x1E695EFD0];
      v16 = *(MEMORY[0x1E695EFD0] + 16);
      *&retstr->a = *MEMORY[0x1E695EFD0];
      *&retstr->c = v16;
      v17 = *(v15 + 32);
    }

    *&retstr->tx = v17;
  }

  else
  {
    v12 = MEMORY[0x1E695EFD0];
    v13 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v13;
    *&retstr->tx = *(v12 + 32);
  }

  return result;
}

- (void)_updateInteractiveTransitionWithoutTrackingPercentComplete:(double)complete
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(_UIViewControllerTransitionContext *)self _initiallyInteractive])
  {
    _interactiveUpdateHandlers = [(_UIViewControllerTransitionContext *)self _interactiveUpdateHandlers];

    if (_interactiveUpdateHandlers)
    {
      *&self->_transitionContextFlags &= ~0x10u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = self->__interactiveUpdateHandlers;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            (*(*(*(&v11 + 1) + 8 * v10++) + 16))(complete);
          }

          while (v8 != v10);
          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)pauseInteractiveTransition
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(_UIViewControllerTransitionContext *)self isInterruptible]&& [(_UIViewControllerTransitionContext *)self _state]== 1 && ![(_UIViewControllerTransitionContext *)self isCurrentlyInteractive])
  {
    interactiveUpdateHandlers = self->__interactiveUpdateHandlers;
    if (interactiveUpdateHandlers)
    {
      *&self->_transitionContextFlags &= ~0x10u;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = interactiveUpdateHandlers;
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v4);
            }

            (*(*(*(&v9 + 1) + 8 * v8++) + 16))(self->_previousPercentComplete);
          }

          while (v6 != v8);
          v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }
    }

    [(_UIViewControllerTransitionContext *)self _interactivityDidChange:1, v9];
  }
}

- (void)updateInteractiveTransition:(double)transition
{
  v19 = *MEMORY[0x1E69E9840];
  if (transition < 0.0)
  {
    transition = 0.0;
  }

  if (transition <= 1.0)
  {
    transitionCopy = transition;
  }

  else
  {
    transitionCopy = 1.0;
  }

  if ([(_UIViewControllerTransitionContext *)self _state]== 1)
  {
    if ([(_UIViewControllerTransitionContext *)self isCurrentlyInteractive])
    {
      _interactiveUpdateHandlers = [(_UIViewControllerTransitionContext *)self _interactiveUpdateHandlers];
      if (_interactiveUpdateHandlers)
      {
        previousPercentComplete = self->_previousPercentComplete;

        if (previousPercentComplete != transitionCopy)
        {
          *&self->_transitionContextFlags &= ~0x10u;
          self->_previousPercentComplete = transitionCopy;
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v7 = self->__interactiveUpdateHandlers;
          v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v15;
            do
            {
              v11 = 0;
              do
              {
                if (*v15 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v14 + 1) + 8 * v11);
                [(_UIViewControllerTransitionContext *)self _percentOffset];
                (*(v12 + 16))(v12, 0, 0, self, transitionCopy + v13);
                ++v11;
              }

              while (v9 != v11);
              v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
            }

            while (v9);
          }
        }
      }
    }
  }
}

- (void)finishInteractiveTransition
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(_UIViewControllerTransitionContext *)self _state]== 1 || [(_UIViewControllerTransitionContext *)self _state]== 4)
  {
    transitionContextFlags = self->_transitionContextFlags;
    *&self->_transitionContextFlags = transitionContextFlags & 0xE7 | 0x10;
    if (transitionContextFlags)
    {
      WeakRetained = objc_loadWeakRetained(&self->__interactor);
      [WeakRetained completionSpeed];
      self->__completionVelocity = v5;

      if (self->__completionVelocity <= 0.0)
      {
        self->__completionVelocity = 1.0;
      }
    }

    if ((*&self->_transitionContextFlags & 2) != 0)
    {
      v6 = objc_loadWeakRetained(&self->__interactor);
      self->__completionCurve = [v6 completionCurve];
    }

    isCurrentlyInteractive = [(_UIViewControllerTransitionContext *)self isCurrentlyInteractive];
    if (!isCurrentlyInteractive && [(_UIViewControllerTransitionContext *)self _state]!= 4)
    {
      goto LABEL_21;
    }

    _interactiveUpdateHandlers = [(_UIViewControllerTransitionContext *)self _interactiveUpdateHandlers];

    if (_interactiveUpdateHandlers)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = self->__interactiveUpdateHandlers;
      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v9);
            }

            (*(*(*(&v14 + 1) + 8 * i) + 16))(self->_previousPercentComplete);
          }

          v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v11);
      }
    }

    if (isCurrentlyInteractive && [(_UIViewControllerTransitionContext *)self _state]!= 4)
    {
      [(_UIViewControllerTransitionContext *)self _interactivityDidChange:0];
    }

    else
    {
LABEL_21:
      [(_UIViewControllerTransitionContext *)self _setState:0, v14];
    }
  }

  else
  {

    [(_UIViewControllerTransitionContext *)self _setState:3];
  }
}

- (void)cancelInteractiveTransition
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(_UIViewControllerTransitionContext *)self _state]== 1 || [(_UIViewControllerTransitionContext *)self _state]== 4)
  {
    transitionContextFlags = self->_transitionContextFlags;
    v4 = transitionContextFlags | 0x18;
    *&self->_transitionContextFlags = transitionContextFlags | 0x18;
    if (transitionContextFlags)
    {
      WeakRetained = objc_loadWeakRetained(&self->__interactor);
      [WeakRetained completionSpeed];
      self->__completionVelocity = v6;

      completionVelocity = self->__completionVelocity;
      v8 = -completionVelocity;
      v9 = completionVelocity > 0.0;
      v10 = -1.0;
      if (v9)
      {
        v10 = v8;
      }

      self->__completionVelocity = v10;
      v4 = self->_transitionContextFlags;
    }

    if ((v4 & 2) != 0)
    {
      v11 = objc_loadWeakRetained(&self->__interactor);
      self->__completionCurve = [v11 completionCurve];
    }

    if ([(_UIViewControllerTransitionContext *)self isCurrentlyInteractive]|| [(_UIViewControllerTransitionContext *)self _state]== 4)
    {
      _interactiveUpdateHandlers = [(_UIViewControllerTransitionContext *)self _interactiveUpdateHandlers];

      if (_interactiveUpdateHandlers)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v13 = self->__interactiveUpdateHandlers;
        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v19;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v19 != v16)
              {
                objc_enumerationMutation(v13);
              }

              (*(*(*(&v18 + 1) + 8 * i) + 16))(self->_previousPercentComplete);
            }

            v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v15);
        }
      }
    }

    if ([(_UIViewControllerTransitionContext *)self _state]== 4)
    {
      [(_UIViewControllerTransitionContext *)self _setState:0];
    }

    else
    {
      [(_UIViewControllerTransitionContext *)self _interactivityDidChange:0];
    }
  }

  else
  {

    [(_UIViewControllerTransitionContext *)self _setState:2];
  }
}

- (void)completeTransition:(BOOL)transition
{
  if ((*&self->_transitionContextFlags & 0x20) == 0)
  {
    transitionCopy = transition;
    *&self->_transitionContextFlags |= 0x20u;
    _UIQOSExcludeCommitFromGlitchTrackingIfUnmanaged();
    selfCopy = self;
    _animator = [(_UIViewControllerTransitionContext *)selfCopy _animator];
    [(_UIViewControllerTransitionContext *)selfCopy _runInvalidationHandlers];
    if (objc_opt_respondsToSelector())
    {
      [_animator _animationWillEnd:selfCopy didComplete:transitionCopy];
    }

    v6 = selfCopy;
    willCompleteHandler = selfCopy->__willCompleteHandler;
    if (willCompleteHandler)
    {
      v8 = _Block_copy(willCompleteHandler);
      v8[2](v8, selfCopy, transitionCopy);

      v6 = selfCopy;
    }

    completionHandler = v6->__completionHandler;
    if (completionHandler)
    {
      completionHandler[2](completionHandler, selfCopy, transitionCopy);
      v6 = selfCopy;
    }

    [(_UIViewControllerTransitionContext *)v6 _runAlongsideCompletions];
    didCompleteHandler = selfCopy->__didCompleteHandler;
    if (didCompleteHandler)
    {
      didCompleteHandler[2](didCompleteHandler, selfCopy, transitionCopy);
    }

    if (_animator && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [_animator animationEnded:transitionCopy];
    }

    v11 = objc_opt_self();
  }
}

- (CGRect)initialFrameForViewController:(id)controller
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)finalFrameForViewController:(id)controller
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGAffineTransform)finalTransformForViewController:(SEL)controller
{
  v4 = MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v5;
  *&retstr->tx = *(v4 + 32);
  return self;
}

- (void)setTransitionWasCancelled:(BOOL)cancelled
{
  if (cancelled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_transitionContextFlags = *&self->_transitionContextFlags & 0xF7 | v3;
}

- (void)_setTransitionIsInFlight:(BOOL)flight
{
  flightCopy = flight;
  if ([(_UIViewControllerTransitionContext *)self _state]!= 4)
  {

    [(_UIViewControllerTransitionContext *)self _setState:flightCopy];
  }
}

- (void)_setTransitionIsCompleting:(BOOL)completing
{
  if (completing)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_transitionContextFlags = *&self->_transitionContextFlags & 0xEF | v3;
}

- (void)_setInterruptible:(BOOL)interruptible
{
  if (interruptible)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_transitionContextFlags = *&self->_transitionContextFlags & 0xBF | v3;
}

- (void)_setPerformingLayoutToLayoutTransition:(BOOL)transition
{
  if (transition)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_transitionContextFlags = v3 & 0x80 | *&self->_transitionContextFlags & 0x7F;
}

- (void)_interactivityDidChange:(BOOL)change
{
  [(_UIViewControllerTransitionContext *)self _setCurrentlyInteractive:change];
  auxContext = self->__auxContext;
  if (auxContext)
  {
    _interactiveChangeHandlers = [(_UIViewControllerTransitionCoordinator *)auxContext _interactiveChangeHandlers];
    if (_interactiveChangeHandlers)
    {
      v6 = self->__auxContext;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __62___UIViewControllerTransitionContext__interactivityDidChange___block_invoke;
      v7[3] = &unk_1E70F3590;
      v7[4] = self;
      [(_UIViewControllerTransitionCoordinator *)v6 _applyBlocks:_interactiveChangeHandlers releaseBlocks:v7];
    }
  }
}

- (int64_t)_alongsideAnimationsCount
{
  result = self->__auxContext;
  if (result)
  {
    _alongsideAnimations = [result _alongsideAnimations];
    v4 = [_alongsideAnimations count];

    return v4;
  }

  return result;
}

- (void)_disableInteractionForViews:(id)views
{
  v16 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  [(_UIViewControllerTransitionContext *)self _enableInteractionForDisabledViews];
  objc_storeStrong(&self->_disabledViews, views);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_disabledViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setUserInteractionEnabled:{0, v11}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_addInteractiveUpdateHandler:(id)handler
{
  handlerCopy = handler;
  interactiveUpdateHandlers = self->__interactiveUpdateHandlers;
  aBlock = handlerCopy;
  if (!interactiveUpdateHandlers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->__interactiveUpdateHandlers;
    self->__interactiveUpdateHandlers = v6;

    handlerCopy = aBlock;
    interactiveUpdateHandlers = self->__interactiveUpdateHandlers;
  }

  v8 = _Block_copy(handlerCopy);
  [(NSMutableArray *)interactiveUpdateHandlers addObject:v8];
}

- (UIViewControllerInteractiveTransitioning)_interactor
{
  WeakRetained = objc_loadWeakRetained(&self->__interactor);

  return WeakRetained;
}

@end