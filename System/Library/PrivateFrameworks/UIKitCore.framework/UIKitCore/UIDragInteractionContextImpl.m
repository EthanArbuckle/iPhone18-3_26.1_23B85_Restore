@interface UIDragInteractionContextImpl
- (CAPoint3D)initialLocation;
- (NSMutableArray)animationBlocks;
- (NSMutableArray)completionBlocks;
- (id)animations;
- (id)completion;
- (void)addAnimations:(id)a3;
- (void)addCompletion:(id)a3;
@end

@implementation UIDragInteractionContextImpl

- (id)animations
{
  v2 = [(UIDragInteractionContextImpl *)self animationBlocks];
  v3 = [v2 copy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__UIDragInteractionContextImpl_animations__block_invoke;
  aBlock[3] = &unk_1E70F3590;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

void __42__UIDragInteractionContextImpl_animations__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)completion
{
  v2 = [(UIDragInteractionContextImpl *)self completionBlocks];
  v3 = [v2 copy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__UIDragInteractionContextImpl_completion__block_invoke;
  aBlock[3] = &unk_1E70F5DB8;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

void __42__UIDragInteractionContextImpl_completion__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (NSMutableArray)animationBlocks
{
  animationBlocks = self->_animationBlocks;
  if (!animationBlocks)
  {
    v4 = objc_opt_new();
    v5 = self->_animationBlocks;
    self->_animationBlocks = v4;

    animationBlocks = self->_animationBlocks;
  }

  return animationBlocks;
}

- (NSMutableArray)completionBlocks
{
  completionBlocks = self->_completionBlocks;
  if (!completionBlocks)
  {
    v4 = objc_opt_new();
    v5 = self->_completionBlocks;
    self->_completionBlocks = v4;

    completionBlocks = self->_completionBlocks;
  }

  return completionBlocks;
}

- (void)addAnimations:(id)a3
{
  aBlock = a3;
  if (!aBlock)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIDragInteraction.m" lineNumber:230 description:{@"Invalid parameter not satisfying: %@", @"animations"}];
  }

  v5 = [(UIDragInteractionContextImpl *)self animationBlocks];
  v6 = _Block_copy(aBlock);
  [v5 addObject:v6];
}

- (void)addCompletion:(id)a3
{
  aBlock = a3;
  if (!aBlock)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIDragInteraction.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v5 = [(UIDragInteractionContextImpl *)self completionBlocks];
  v6 = _Block_copy(aBlock);
  [v5 addObject:v6];
}

- (CAPoint3D)initialLocation
{
  x = self->_initialLocation.x;
  y = self->_initialLocation.y;
  z = self->_initialLocation.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

@end