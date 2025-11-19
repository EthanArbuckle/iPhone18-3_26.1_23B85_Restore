@interface _UIEditMenuPresentationAnimator
- (void)addAnimations:(id)a3;
- (void)addCompletion:(id)a3;
- (void)runAnimations;
- (void)runCompletions;
@end

@implementation _UIEditMenuPresentationAnimator

- (void)addAnimations:(id)a3
{
  v4 = a3;
  animationBlocks = self->_animationBlocks;
  aBlock = v4;
  if (!animationBlocks)
  {
    v6 = objc_opt_new();
    v7 = self->_animationBlocks;
    self->_animationBlocks = v6;

    v4 = aBlock;
    animationBlocks = self->_animationBlocks;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)animationBlocks addObject:v8];
}

- (void)addCompletion:(id)a3
{
  v4 = a3;
  completionBlocks = self->_completionBlocks;
  aBlock = v4;
  if (!completionBlocks)
  {
    v6 = objc_opt_new();
    v7 = self->_completionBlocks;
    self->_completionBlocks = v6;

    v4 = aBlock;
    completionBlocks = self->_completionBlocks;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)completionBlocks addObject:v8];
}

- (void)runAnimations
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_animationBlocks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  animationBlocks = self->_animationBlocks;
  self->_animationBlocks = 0;
}

- (void)runCompletions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_completionBlocks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  completionBlocks = self->_completionBlocks;
  self->_completionBlocks = 0;
}

@end