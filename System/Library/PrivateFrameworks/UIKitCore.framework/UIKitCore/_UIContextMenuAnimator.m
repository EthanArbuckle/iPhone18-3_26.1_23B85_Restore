@interface _UIContextMenuAnimator
+ (_UIContextMenuAnimator)animatorWithViewController:(id)a3;
- (BOOL)hasAnyActions;
- (void)addAnimations:(id)a3;
- (void)addCompletion:(id)a3;
- (void)performAllAnimations;
- (void)performAllCompletions;
@end

@implementation _UIContextMenuAnimator

- (void)performAllCompletions
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("UICMILifecycle", &performAllCompletions___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "performAllCompletions for animator: %@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(_UIContextMenuAnimator *)self completions];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  completions = self->_completions;
  self->_completions = 0;
}

- (void)performAllAnimations
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("UICMILifecycle", &performAllAnimations___s_category_0) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "performAllAnimations for animator: %@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(_UIContextMenuAnimator *)self animations];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  animations = self->_animations;
  self->_animations = 0;
}

+ (_UIContextMenuAnimator)animatorWithViewController:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = v4[2];
  v4[2] = v3;
  v6 = v3;

  v7 = [v6 view];

  v8 = [v7 window];
  v9 = [v8 traitCollection];
  v10 = [v9 horizontalSizeClass] == 1;

  v4[1] = v10;

  return v4;
}

- (BOOL)hasAnyActions
{
  v3 = [(_UIContextMenuAnimator *)self animations];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_UIContextMenuAnimator *)self completions];
    v4 = [v5 count] != 0;
  }

  return v4;
}

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

@end