@interface _UIViewControllerTransitionCoordinator
- (BOOL)_animateAlongsideTransitionInView:(id)view systemAnimation:(BOOL)animation systemCompletion:(BOOL)completion animation:(id)a6 completion:(id)a7;
- (CGAffineTransform)affineTransform;
- (CGAffineTransform)targetTransform;
- (_UIViewControllerTransitionCoordinator)initWithMainContext:(id)context;
- (id)_alongsideAnimations:(BOOL)animations;
- (id)_alongsideCompletions:(BOOL)completions;
- (id)_interactiveChangeHandlers:(BOOL)handlers;
- (id)_invalidationHandlers:(BOOL)handlers;
- (id)_systemAlongsideAnimations:(BOOL)animations;
- (void)_addInvalidationHandler:(id)handler;
- (void)_applyBlocks:(id)blocks releaseBlocks:(id)releaseBlocks;
- (void)_applyVoidBlocks:(id)blocks releaseBlocks:(id)releaseBlocks;
- (void)notifyWhenInteractionChangesUsingBlock:(id)block;
@end

@implementation _UIViewControllerTransitionCoordinator

- (_UIViewControllerTransitionCoordinator)initWithMainContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = _UIViewControllerTransitionCoordinator;
  v5 = [(_UIViewControllerTransitionCoordinator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->__mainContext = contextCopy;
    _auxContext = [(_UIViewControllerTransitionContext *)contextCopy _auxContext];

    if (!_auxContext)
    {
      [(_UIViewControllerTransitionContext *)contextCopy _setAuxContext:v6];
    }
  }

  return v6;
}

- (CGAffineTransform)affineTransform
{
  result = self->__mainContext;
  if (result)
  {
    return [(CGAffineTransform *)result _affineTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (CGAffineTransform)targetTransform
{
  result = self->__mainContext;
  if (result)
  {
    return [(CGAffineTransform *)result targetTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (id)_interactiveChangeHandlers:(BOOL)handlers
{
  interactiveChangeHandlers = self->__interactiveChangeHandlers;
  if (interactiveChangeHandlers)
  {
    v5 = 1;
  }

  else
  {
    v5 = !handlers;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->__interactiveChangeHandlers;
    self->__interactiveChangeHandlers = v6;

    interactiveChangeHandlers = self->__interactiveChangeHandlers;
  }

  return interactiveChangeHandlers;
}

- (id)_systemAlongsideAnimations:(BOOL)animations
{
  systemAlongsideAnimations = self->__systemAlongsideAnimations;
  if (systemAlongsideAnimations)
  {
    v5 = 1;
  }

  else
  {
    v5 = !animations;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->__systemAlongsideAnimations;
    self->__systemAlongsideAnimations = v6;

    systemAlongsideAnimations = self->__systemAlongsideAnimations;
  }

  return systemAlongsideAnimations;
}

- (id)_alongsideAnimations:(BOOL)animations
{
  alongsideAnimations = self->__alongsideAnimations;
  if (alongsideAnimations)
  {
    v5 = 1;
  }

  else
  {
    v5 = !animations;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->__alongsideAnimations;
    self->__alongsideAnimations = v6;

    alongsideAnimations = self->__alongsideAnimations;
  }

  return alongsideAnimations;
}

- (id)_alongsideCompletions:(BOOL)completions
{
  alongsideCompletions = self->__alongsideCompletions;
  if (alongsideCompletions)
  {
    v5 = 1;
  }

  else
  {
    v5 = !completions;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->__alongsideCompletions;
    self->__alongsideCompletions = v6;

    alongsideCompletions = self->__alongsideCompletions;
  }

  return alongsideCompletions;
}

- (id)_invalidationHandlers:(BOOL)handlers
{
  invalidationHandlers = self->__invalidationHandlers;
  if (invalidationHandlers)
  {
    v5 = 1;
  }

  else
  {
    v5 = !handlers;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->__invalidationHandlers;
    self->__invalidationHandlers = v6;

    invalidationHandlers = self->__invalidationHandlers;
  }

  return invalidationHandlers;
}

- (void)_applyBlocks:(id)blocks releaseBlocks:(id)releaseBlocks
{
  blocksCopy = blocks;
  releaseBlocksCopy = releaseBlocks;
  if ([blocksCopy count])
  {
    releaseBlocksCopy[2](releaseBlocksCopy);
    if ([blocksCopy count])
    {
      v7 = 0;
      do
      {
        v8 = [blocksCopy objectAtIndexedSubscript:v7];
        __UIVIEWCONTROLLERTRANSITIONCOORDINATOR_IS_EXECUTING_ALONGSIDE_ANIMATION_BLOCK__(self, v8);

        ++v7;
      }

      while (v7 < [blocksCopy count]);
    }
  }
}

- (void)_applyVoidBlocks:(id)blocks releaseBlocks:(id)releaseBlocks
{
  blocksCopy = blocks;
  releaseBlocksCopy = releaseBlocks;
  if ([blocksCopy count])
  {
    releaseBlocksCopy[2](releaseBlocksCopy);
    if ([blocksCopy count])
    {
      v6 = 0;
      do
      {
        v7 = [blocksCopy objectAtIndexedSubscript:v6];
        v7[2]();

        ++v6;
      }

      while (v6 < [blocksCopy count]);
    }
  }
}

- (BOOL)_animateAlongsideTransitionInView:(id)view systemAnimation:(BOOL)animation systemCompletion:(BOOL)completion animation:(id)a6 completion:(id)a7
{
  completionCopy = completion;
  viewCopy = view;
  v13 = a6;
  v14 = a7;
  _mainContext = [(_UIViewControllerTransitionCoordinator *)self _mainContext];
  if ([_mainContext isInterruptible])
  {
    v16 = 1;
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v16 = [_mainContext _transitionIsInFlight] ^ 1;
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  if (v16)
  {
    v36 = viewCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __130___UIViewControllerTransitionCoordinator__animateAlongsideTransitionInView_systemAnimation_systemCompletion_animation_completion___block_invoke;
    aBlock[3] = &unk_1E70FD0C8;
    animationCopy = animation;
    aBlock[4] = self;
    v17 = v13;
    v47 = v17;
    v18 = _Block_copy(aBlock);
    if ([_mainContext _ranAlongsideAnimations] && !objc_msgSend(_mainContext, "_transitionHasCompleted"))
    {
      _animator = [_mainContext _animator];
      if (objc_opt_respondsToSelector())
      {
        v20 = [_animator interruptibleAnimatorForTransition:_mainContext];
      }

      else
      {
        v20 = 0;
      }

      v35 = _animator;
      if (objc_opt_respondsToSelector())
      {
        _canAddAnimations = [v20 _canAddAnimations];
      }

      else
      {
        _canAddAnimations = 1;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && _canAddAnimations)
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __130___UIViewControllerTransitionCoordinator__animateAlongsideTransitionInView_systemAnimation_systemCompletion_animation_completion___block_invoke_2;
        v44[3] = &unk_1E70F4A50;
        v44[4] = self;
        v45 = v17;
        [v20 addAnimations:v44];

        v22 = v35;
      }

      else if (+[UIViewPropertyAnimator _trackingAnimationsCurrentlyEnabled])
      {
        [_mainContext _duration];
        v24 = v23;
        v22 = v35;
        if ([_mainContext isInteractive])
        {
          v25 = 196608;
        }

        else
        {
          v25 = [_mainContext _completionCurve] << 16;
        }

        v34 = v25;
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __130___UIViewControllerTransitionCoordinator__animateAlongsideTransitionInView_systemAnimation_systemCompletion_animation_completion___block_invoke_3;
        v42[3] = &unk_1E70F4A50;
        v42[4] = self;
        v43 = v17;
        [UIView animateWithDuration:v34 delay:v42 options:0 animations:v24 completion:0.0];
      }

      else
      {
        v18[2](v18);
        v22 = v35;
      }
    }

    else
    {
      v18[2](v18);
    }

    viewCopy = v36;
    if (v36)
    {
      containerView = [_mainContext containerView];
      v27 = [v36 isDescendantOfView:containerView];

      if ((v27 & 1) == 0)
      {
        _alongsideAnimationViews = [(_UIViewControllerTransitionCoordinator *)self _alongsideAnimationViews];
        if (!_alongsideAnimationViews)
        {
          _alongsideAnimationViews = objc_opt_new();
          [(_UIViewControllerTransitionCoordinator *)self _setAlongsideAnimationViews:_alongsideAnimationViews];
        }

        [_alongsideAnimationViews addObject:{v36, v34}];
      }
    }
  }

LABEL_31:
  if (v14)
  {
    if (completionCopy)
    {
      objc_initWeak(&location, self);
      _willCompleteHandler = [_mainContext _willCompleteHandler];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __130___UIViewControllerTransitionCoordinator__animateAlongsideTransitionInView_systemAnimation_systemCompletion_animation_completion___block_invoke_4;
      v37[3] = &unk_1E7104720;
      v30 = _willCompleteHandler;
      v38 = v30;
      v39 = v14;
      objc_copyWeak(&v40, &location);
      [_mainContext _setWillCompleteHandler:v37];
      objc_destroyWeak(&v40);

      objc_destroyWeak(&location);
    }

    else
    {
      v31 = [(_UIViewControllerTransitionCoordinator *)self _alongsideCompletions:1];
      v32 = _Block_copy(v14);
      [v31 addObject:v32];
    }
  }

  return (v13 == 0) | v16 & 1;
}

- (void)notifyWhenInteractionChangesUsingBlock:(id)block
{
  if (block)
  {
    aBlock = [block copy];
    v4 = [(_UIViewControllerTransitionCoordinator *)self _interactiveChangeHandlers:1];
    v5 = _Block_copy(aBlock);
    [v4 addObject:v5];
  }
}

- (void)_addInvalidationHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v6 = [(_UIViewControllerTransitionCoordinator *)self _invalidationHandlers:1];
    v5 = _Block_copy(handlerCopy);

    [v6 addObject:v5];
  }
}

@end