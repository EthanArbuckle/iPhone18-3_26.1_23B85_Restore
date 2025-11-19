@interface _UIViewControllerTransitionCoordinator
- (BOOL)_animateAlongsideTransitionInView:(id)a3 systemAnimation:(BOOL)a4 systemCompletion:(BOOL)a5 animation:(id)a6 completion:(id)a7;
- (CGAffineTransform)affineTransform;
- (CGAffineTransform)targetTransform;
- (_UIViewControllerTransitionCoordinator)initWithMainContext:(id)a3;
- (id)_alongsideAnimations:(BOOL)a3;
- (id)_alongsideCompletions:(BOOL)a3;
- (id)_interactiveChangeHandlers:(BOOL)a3;
- (id)_invalidationHandlers:(BOOL)a3;
- (id)_systemAlongsideAnimations:(BOOL)a3;
- (void)_addInvalidationHandler:(id)a3;
- (void)_applyBlocks:(id)a3 releaseBlocks:(id)a4;
- (void)_applyVoidBlocks:(id)a3 releaseBlocks:(id)a4;
- (void)notifyWhenInteractionChangesUsingBlock:(id)a3;
@end

@implementation _UIViewControllerTransitionCoordinator

- (_UIViewControllerTransitionCoordinator)initWithMainContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIViewControllerTransitionCoordinator;
  v5 = [(_UIViewControllerTransitionCoordinator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->__mainContext = v4;
    v7 = [(_UIViewControllerTransitionContext *)v4 _auxContext];

    if (!v7)
    {
      [(_UIViewControllerTransitionContext *)v4 _setAuxContext:v6];
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

- (id)_interactiveChangeHandlers:(BOOL)a3
{
  interactiveChangeHandlers = self->__interactiveChangeHandlers;
  if (interactiveChangeHandlers)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
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

- (id)_systemAlongsideAnimations:(BOOL)a3
{
  systemAlongsideAnimations = self->__systemAlongsideAnimations;
  if (systemAlongsideAnimations)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
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

- (id)_alongsideAnimations:(BOOL)a3
{
  alongsideAnimations = self->__alongsideAnimations;
  if (alongsideAnimations)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
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

- (id)_alongsideCompletions:(BOOL)a3
{
  alongsideCompletions = self->__alongsideCompletions;
  if (alongsideCompletions)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
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

- (id)_invalidationHandlers:(BOOL)a3
{
  invalidationHandlers = self->__invalidationHandlers;
  if (invalidationHandlers)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
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

- (void)_applyBlocks:(id)a3 releaseBlocks:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 count])
  {
    v6[2](v6);
    if ([v9 count])
    {
      v7 = 0;
      do
      {
        v8 = [v9 objectAtIndexedSubscript:v7];
        __UIVIEWCONTROLLERTRANSITIONCOORDINATOR_IS_EXECUTING_ALONGSIDE_ANIMATION_BLOCK__(self, v8);

        ++v7;
      }

      while (v7 < [v9 count]);
    }
  }
}

- (void)_applyVoidBlocks:(id)a3 releaseBlocks:(id)a4
{
  v8 = a3;
  v5 = a4;
  if ([v8 count])
  {
    v5[2](v5);
    if ([v8 count])
    {
      v6 = 0;
      do
      {
        v7 = [v8 objectAtIndexedSubscript:v6];
        v7[2]();

        ++v6;
      }

      while (v6 < [v8 count]);
    }
  }
}

- (BOOL)_animateAlongsideTransitionInView:(id)a3 systemAnimation:(BOOL)a4 systemCompletion:(BOOL)a5 animation:(id)a6 completion:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(_UIViewControllerTransitionCoordinator *)self _mainContext];
  if ([v15 isInterruptible])
  {
    v16 = 1;
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v16 = [v15 _transitionIsInFlight] ^ 1;
    if (!v13)
    {
      goto LABEL_31;
    }
  }

  if (v16)
  {
    v36 = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __130___UIViewControllerTransitionCoordinator__animateAlongsideTransitionInView_systemAnimation_systemCompletion_animation_completion___block_invoke;
    aBlock[3] = &unk_1E70FD0C8;
    v48 = a4;
    aBlock[4] = self;
    v17 = v13;
    v47 = v17;
    v18 = _Block_copy(aBlock);
    if ([v15 _ranAlongsideAnimations] && !objc_msgSend(v15, "_transitionHasCompleted"))
    {
      v19 = [v15 _animator];
      if (objc_opt_respondsToSelector())
      {
        v20 = [v19 interruptibleAnimatorForTransition:v15];
      }

      else
      {
        v20 = 0;
      }

      v35 = v19;
      if (objc_opt_respondsToSelector())
      {
        v21 = [v20 _canAddAnimations];
      }

      else
      {
        v21 = 1;
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && v21)
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
        [v15 _duration];
        v24 = v23;
        v22 = v35;
        if ([v15 isInteractive])
        {
          v25 = 196608;
        }

        else
        {
          v25 = [v15 _completionCurve] << 16;
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

    v12 = v36;
    if (v36)
    {
      v26 = [v15 containerView];
      v27 = [v36 isDescendantOfView:v26];

      if ((v27 & 1) == 0)
      {
        v28 = [(_UIViewControllerTransitionCoordinator *)self _alongsideAnimationViews];
        if (!v28)
        {
          v28 = objc_opt_new();
          [(_UIViewControllerTransitionCoordinator *)self _setAlongsideAnimationViews:v28];
        }

        [v28 addObject:{v36, v34}];
      }
    }
  }

LABEL_31:
  if (v14)
  {
    if (v9)
    {
      objc_initWeak(&location, self);
      v29 = [v15 _willCompleteHandler];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __130___UIViewControllerTransitionCoordinator__animateAlongsideTransitionInView_systemAnimation_systemCompletion_animation_completion___block_invoke_4;
      v37[3] = &unk_1E7104720;
      v30 = v29;
      v38 = v30;
      v39 = v14;
      objc_copyWeak(&v40, &location);
      [v15 _setWillCompleteHandler:v37];
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

- (void)notifyWhenInteractionChangesUsingBlock:(id)a3
{
  if (a3)
  {
    aBlock = [a3 copy];
    v4 = [(_UIViewControllerTransitionCoordinator *)self _interactiveChangeHandlers:1];
    v5 = _Block_copy(aBlock);
    [v4 addObject:v5];
  }
}

- (void)_addInvalidationHandler:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(_UIViewControllerTransitionCoordinator *)self _invalidationHandlers:1];
    v5 = _Block_copy(v4);

    [v6 addObject:v5];
  }
}

@end