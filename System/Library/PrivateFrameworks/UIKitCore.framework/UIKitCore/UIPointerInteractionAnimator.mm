@interface UIPointerInteractionAnimator
- (void)addAnimations:(id)a3;
- (void)addCompletion:(id)a3;
- (void)performAllAnimations;
- (void)performAllCompletions:(BOOL)a3;
@end

@implementation UIPointerInteractionAnimator

- (void)addAnimations:(id)a3
{
  v4 = a3;
  animations = self->_animations;
  aBlock = v4;
  if (!animations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_animations;
    self->_animations = v6;

    v4 = aBlock;
    animations = self->_animations;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)animations addObject:v8];
}

- (void)addCompletion:(id)a3
{
  v4 = a3;
  completions = self->_completions;
  aBlock = v4;
  if (!completions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_completions;
    self->_completions = v6;

    v4 = aBlock;
    completions = self->_completions;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)completions addObject:v8];
}

- (void)performAllAnimations
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("UIPointerInteraction", &performAllAnimations___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(UIPointerInteractionAnimator *)self debugName];
    v6 = v5;
    v7 = &stru_1EFB14550;
    if (v5)
    {
      v7 = v5;
    }

    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "performAllAnimations called on animator: %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(UIPointerInteractionAnimator *)self animations];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  animations = self->_animations;
  self->_animations = 0;
}

- (void)performAllCompletions:(BOOL)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(__UILogGetCategoryCachedImpl("UIPointerInteraction", &performAllCompletions____s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = NSStringFromBOOL();
    v7 = [(UIPointerInteractionAnimator *)self debugName];
    v8 = v7;
    v9 = &stru_1EFB14550;
    if (v7)
    {
      v9 = v7;
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
  v10 = [(UIPointerInteractionAnimator *)self completions];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v10);
        }

        (*(*(*(&v16 + 1) + 8 * v14++) + 16))();
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  completions = self->_completions;
  self->_completions = 0;
}

@end