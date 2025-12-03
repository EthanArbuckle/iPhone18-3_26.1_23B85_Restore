@interface _UIBarCustomizerAnimator
- (void)addAnimations:(id)animations;
- (void)addCompletion:(id)completion;
- (void)performAllAnimations;
- (void)performAllCompletionsWithSession:(id)session;
@end

@implementation _UIBarCustomizerAnimator

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
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  animations = [(_UIBarCustomizerAnimator *)self animations];
  v4 = [animations countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(animations);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [animations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  animations = self->_animations;
  self->_animations = 0;
}

- (void)performAllCompletionsWithSession:(id)session
{
  v16 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  completions = [(_UIBarCustomizerAnimator *)self completions];
  v6 = [completions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(completions);
        }

        (*(*(*(&v11 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [completions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  completions = self->_completions;
  self->_completions = 0;
}

@end