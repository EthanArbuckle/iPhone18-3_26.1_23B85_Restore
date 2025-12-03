@interface _UITableViewDropAnimation
- (_UITableViewDropAnimation)initWithDragItem:(id)item;
- (void)_addClientBlocksToAnimator:(id)animator;
- (void)_executeCompletionBlocks;
- (void)addAnimations:(id)animations;
- (void)addCompletion:(id)completion;
@end

@implementation _UITableViewDropAnimation

- (_UITableViewDropAnimation)initWithDragItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = _UITableViewDropAnimation;
  v6 = [(_UITableViewDropAnimation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dragItem, item);
  }

  return v7;
}

- (void)addAnimations:(id)animations
{
  animationsCopy = animations;
  animationsBlocks = self->_animationsBlocks;
  aBlock = animationsCopy;
  if (!animationsBlocks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_animationsBlocks;
    self->_animationsBlocks = array;

    animationsCopy = aBlock;
    animationsBlocks = self->_animationsBlocks;
  }

  v8 = _Block_copy(animationsCopy);
  [(NSMutableArray *)animationsBlocks addObject:v8];
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  completionBlocks = self->_completionBlocks;
  aBlock = completionCopy;
  if (!completionBlocks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_completionBlocks;
    self->_completionBlocks = array;

    completionCopy = aBlock;
    completionBlocks = self->_completionBlocks;
  }

  v8 = _Block_copy(completionCopy);
  [(NSMutableArray *)completionBlocks addObject:v8];
}

- (void)_addClientBlocksToAnimator:(id)animator
{
  v27 = *MEMORY[0x1E69E9840];
  animatorCopy = animator;
  animationsBlocks = self->_animationsBlocks;
  if (animationsBlocks)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = animationsBlocks;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [animatorCopy addAnimations:*(*(&v21 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_animationsBlocks removeAllObjects];
  }

  completionBlocks = self->_completionBlocks;
  if (completionBlocks)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = completionBlocks;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [animatorCopy addCompletion:{*(*(&v17 + 1) + 8 * v16++), v17}];
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v14);
    }

    [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  }
}

- (void)_executeCompletionBlocks
{
  v14 = *MEMORY[0x1E69E9840];
  completionBlocks = self->_completionBlocks;
  if (completionBlocks)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = completionBlocks;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  }
}

@end