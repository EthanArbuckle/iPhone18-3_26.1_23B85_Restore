@interface UIPointerInteractionAnimator
- (void)addAnimations:(id)animations;
- (void)addCompletion:(id)completion;
- (void)performAllAnimations;
- (void)performAllCompletions:(BOOL)completions;
@end

@implementation UIPointerInteractionAnimator

- (void)addAnimations:(id)animations
{
  animationsCopy = animations;
  animations = self->_animations;
  aBlock = animationsCopy;
  if (!animations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_animations;
    self->_animations = array;

    animationsCopy = aBlock;
    animations = self->_animations;
  }

  v8 = _Block_copy(animationsCopy);
  [(NSMutableArray *)animations addObject:v8];
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  completions = self->_completions;
  aBlock = completionCopy;
  if (!completions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_completions;
    self->_completions = array;

    completionCopy = aBlock;
    completions = self->_completions;
  }

  v8 = _Block_copy(completionCopy);
  [(NSMutableArray *)completions addObject:v8];
}

- (void)performAllAnimations
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("UIPointerInteraction", &performAllAnimations___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    debugName = [(UIPointerInteractionAnimator *)self debugName];
    v6 = debugName;
    v7 = &stru_1EFB14550;
    if (debugName)
    {
      v7 = debugName;
    }

    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "performAllAnimations called on animator: %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  animations = [(UIPointerInteractionAnimator *)self animations];
  v9 = [animations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(animations);
        }

        (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [animations countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  animations = self->_animations;
  self->_animations = 0;
}

- (void)performAllCompletions:(BOOL)completions
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(__UILogGetCategoryCachedImpl("UIPointerInteraction", &performAllCompletions____s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = NSStringFromBOOL();
    debugName = [(UIPointerInteractionAnimator *)self debugName];
    v8 = debugName;
    v9 = &stru_1EFB14550;
    if (debugName)
    {
      v9 = debugName;
    }

    *buf = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "performAllCompletions: %@ called on animator: %@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  completions = [(UIPointerInteractionAnimator *)self completions];
  v11 = [completions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(completions);
        }

        (*(*(*(&v16 + 1) + 8 * v14++) + 16))();
      }

      while (v12 != v14);
      v12 = [completions countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  completions = self->_completions;
  self->_completions = 0;
}

@end