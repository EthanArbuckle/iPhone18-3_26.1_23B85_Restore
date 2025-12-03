@interface _UITabSidebarTransitionAnimator
- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion;
- (CGAffineTransform)targetTransform;
- (UIView)containerView;
- (_UITabSidebarTransitionAnimator)initWithContainerView:(id)view duration:(double)duration;
- (double)percentComplete;
- (void)runAnimations;
- (void)runCompletions;
@end

@implementation _UITabSidebarTransitionAnimator

- (_UITabSidebarTransitionAnimator)initWithContainerView:(id)view duration:(double)duration
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = _UITabSidebarTransitionAnimator;
  v7 = [(_UITabSidebarTransitionAnimator *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_containerView, viewCopy);
    v8->_transitionDuration = duration;
  }

  return v8;
}

- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion
{
  viewCopy = view;
  animationCopy = animation;
  completionCopy = completion;
  if (animationCopy)
  {
    if (!self->_animationBlocks)
    {
      v11 = objc_opt_new();
      animationBlocks = self->_animationBlocks;
      self->_animationBlocks = v11;
    }

    objc_initWeak(&location, self);
    v13 = self->_animationBlocks;
    v14 = _Block_copy(animationCopy);
    [(NSMutableArray *)v13 addObject:v14];

    objc_destroyWeak(&location);
  }

  if (completionCopy)
  {
    if (!self->_completionBlocks)
    {
      v15 = objc_opt_new();
      completionBlocks = self->_completionBlocks;
      self->_completionBlocks = v15;
    }

    objc_initWeak(&location, self);
    v17 = self->_completionBlocks;
    v18 = _Block_copy(completionCopy);
    [(NSMutableArray *)v17 addObject:v18];

    objc_destroyWeak(&location);
  }

  return 1;
}

- (void)runAnimations
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_animationBlocks copy];
  animationBlocks = self->_animationBlocks;
  self->_animationBlocks = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)runCompletions
{
  v15 = *MEMORY[0x1E69E9840];
  self->_completed = 1;
  v3 = [(NSMutableArray *)self->_completionBlocks copy];
  completionBlocks = self->_completionBlocks;
  self->_completionBlocks = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (double)percentComplete
{
  result = 0.0;
  if (self->_completed)
  {
    return 1.0;
  }

  return result;
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

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

@end