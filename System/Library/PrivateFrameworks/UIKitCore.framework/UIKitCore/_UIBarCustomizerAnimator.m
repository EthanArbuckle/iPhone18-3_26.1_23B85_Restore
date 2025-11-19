@interface _UIBarCustomizerAnimator
- (void)addAnimations:(id)a3;
- (void)addCompletion:(id)a3;
- (void)performAllAnimations;
- (void)performAllCompletionsWithSession:(id)a3;
@end

@implementation _UIBarCustomizerAnimator

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
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(_UIBarCustomizerAnimator *)self animations];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  animations = self->_animations;
  self->_animations = 0;
}

- (void)performAllCompletionsWithSession:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(_UIBarCustomizerAnimator *)self completions];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  completions = self->_completions;
  self->_completions = 0;
}

@end