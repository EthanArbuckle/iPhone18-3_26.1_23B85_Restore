@interface _UIDropAnimationHandlers
- (_UIDropAnimationHandlers)init;
- (void)addAnimations:(id)a3;
- (void)addCompletion:(id)a3;
- (void)invokeAllCompletionHandlers;
- (void)resetAllAnimationHandlers;
@end

@implementation _UIDropAnimationHandlers

- (_UIDropAnimationHandlers)init
{
  v8.receiver = self;
  v8.super_class = _UIDropAnimationHandlers;
  v2 = [(_UIDropAnimationHandlers *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    alongsideAnimationHandlers = v2->_alongsideAnimationHandlers;
    v2->_alongsideAnimationHandlers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v5;
  }

  return v2;
}

- (void)invokeAllCompletionHandlers
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_completionHandlers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)resetAllAnimationHandlers
{
  [(NSMutableArray *)self->_alongsideAnimationHandlers removeAllObjects];
  completionHandlers = self->_completionHandlers;

  [(NSMutableArray *)completionHandlers removeAllObjects];
}

- (void)addAnimations:(id)a3
{
  if (a3)
  {
    alongsideAnimationHandlers = self->_alongsideAnimationHandlers;
    v5 = [a3 copy];
    v4 = _Block_copy(v5);
    [(NSMutableArray *)alongsideAnimationHandlers addObject:v4];
  }
}

- (void)addCompletion:(id)a3
{
  if (a3)
  {
    completionHandlers = self->_completionHandlers;
    v5 = [a3 copy];
    v4 = _Block_copy(v5);
    [(NSMutableArray *)completionHandlers addObject:v4];
  }
}

@end