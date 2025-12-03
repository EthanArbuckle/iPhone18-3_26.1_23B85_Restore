@interface _UITabBarControllerSidebarAnimator
- (void)addAnimations:(id)animations;
- (void)addCompletion:(id)completion;
- (void)runAnimations;
- (void)runCompletions;
@end

@implementation _UITabBarControllerSidebarAnimator

- (void)addAnimations:(id)animations
{
  animationsCopy = animations;
  animationBlocks = self->_animationBlocks;
  aBlock = animationsCopy;
  if (!animationBlocks)
  {
    v6 = objc_opt_new();
    v7 = self->_animationBlocks;
    self->_animationBlocks = v6;

    animationsCopy = aBlock;
    animationBlocks = self->_animationBlocks;
  }

  v8 = _Block_copy(animationsCopy);
  [(NSMutableArray *)animationBlocks addObject:v8];
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  completionBlocks = self->_completionBlocks;
  aBlock = completionCopy;
  if (!completionBlocks)
  {
    v6 = objc_opt_new();
    v7 = self->_completionBlocks;
    self->_completionBlocks = v6;

    completionCopy = aBlock;
    completionBlocks = self->_completionBlocks;
  }

  v8 = _Block_copy(completionCopy);
  [(NSMutableArray *)completionBlocks addObject:v8];
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

@end