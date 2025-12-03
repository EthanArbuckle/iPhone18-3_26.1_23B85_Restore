@interface _UIPanelCoordinatingAnimator
- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion;
- (CGAffineTransform)targetTransform;
- (UIView)containerView;
- (double)completionVelocity;
- (double)percentComplete;
- (void)_runCompletions:(int64_t)completions finished:(BOOL)finished;
- (void)_sendPanelCoordinationCompletions;
- (void)startAnimation;
- (void)stopAnimation:(BOOL)animation;
@end

@implementation _UIPanelCoordinatingAnimator

- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion
{
  viewCopy = view;
  animationCopy = animation;
  completionCopy = completion;
  if (animationCopy)
  {
    if (!self->_isInStartAnimation)
    {
      objc_initWeak(&location, self);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __86___UIPanelCoordinatingAnimator_animateAlongsideTransitionInView_animation_completion___block_invoke;
      v20[3] = &unk_1E71036E8;
      objc_copyWeak(&v22, &location);
      v21 = animationCopy;
      [(UIViewPropertyAnimator *)self addAnimations:v20];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
      if (!completionCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    lateAnimations = self->_lateAnimations;
    if (!lateAnimations)
    {
      v12 = objc_opt_new();
      v13 = self->_lateAnimations;
      self->_lateAnimations = v12;

      lateAnimations = self->_lateAnimations;
    }

    v14 = _Block_copy(animationCopy);
    [(NSMutableArray *)lateAnimations addObject:v14];
  }

  if (!completionCopy)
  {
    goto LABEL_12;
  }

LABEL_9:
  clientCompletions = self->_clientCompletions;
  if (!clientCompletions)
  {
    v16 = objc_opt_new();
    v17 = self->_clientCompletions;
    self->_clientCompletions = v16;

    clientCompletions = self->_clientCompletions;
  }

  v18 = _Block_copy(completionCopy);
  [(NSMutableArray *)clientCompletions addObject:v18];

LABEL_12:
  return 1;
}

- (void)startAnimation
{
  v21 = *MEMORY[0x1E69E9840];
  self->_isInStartAnimation = 1;
  v19.receiver = self;
  v19.super_class = _UIPanelCoordinatingAnimator;
  [(UIViewPropertyAnimator *)&v19 startAnimation];
  if ([(NSMutableArray *)self->_lateAnimations count])
  {
    objc_initWeak(&location, self);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = self->_lateAnimations;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v4)
    {
      v5 = *v15;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v14 + 1) + 8 * i);
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __46___UIPanelCoordinatingAnimator_startAnimation__block_invoke;
          v12[3] = &unk_1E71036E8;
          objc_copyWeak(&v13, &location);
          v12[4] = v7;
          [(UIViewPropertyAnimator *)self addAnimations:v12];
          objc_destroyWeak(&v13);
        }

        v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v4);
    }

    [(NSMutableArray *)self->_lateAnimations removeAllObjects];
    v11.receiver = self;
    v11.super_class = _UIPanelCoordinatingAnimator;
    [(UIViewPropertyAnimator *)&v11 startAnimation];
    if ([(NSMutableArray *)self->_lateAnimations count])
    {
      if (os_variant_has_internal_diagnostics())
      {
        v9 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Unexpected animations requested within second group of alongside animations. Abandoning.", buf, 2u);
        }
      }

      else
      {
        v8 = *(__UILogGetCategoryCachedImpl("Assert", &startAnimation___s_category) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unexpected animations requested within second group of alongside animations. Abandoning.", buf, 2u);
        }
      }
    }

    [(NSMutableArray *)self->_lateAnimations removeAllObjects];
    objc_destroyWeak(&location);
  }

  self->_isInStartAnimation = 0;
}

- (CGAffineTransform)targetTransform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (double)percentComplete
{
  result = 1.0;
  if (self->_wasCancelled)
  {
    return 0.0;
  }

  return result;
}

- (double)completionVelocity
{
  result = 1.0;
  if (self->_wasCancelled)
  {
    return 0.0;
  }

  return result;
}

- (void)_sendPanelCoordinationCompletions
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableArray *)self->_clientCompletions copy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 = _Block_copy(*(*(&v10 + 1) + 8 * v8));

        (*(v6 + 2))(v6, self);
        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)stopAnimation:(BOOL)animation
{
  self->_wasCancelled = 1;
  v3.receiver = self;
  v3.super_class = _UIPanelCoordinatingAnimator;
  [(UIViewPropertyAnimator *)&v3 stopAnimation:animation];
}

- (void)_runCompletions:(int64_t)completions finished:(BOOL)finished
{
  v6.receiver = self;
  v6.super_class = _UIPanelCoordinatingAnimator;
  [(UIViewPropertyAnimator *)&v6 _runCompletions:completions finished:?];
  self->_wasCancelled |= !finished;
  [(_UIPanelCoordinatingAnimator *)self _sendPanelCoordinationCompletions];
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

@end