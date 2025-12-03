@interface _UIContextMenuAnimator
+ (_UIContextMenuAnimator)animatorWithViewController:(id)controller;
- (BOOL)hasAnyActions;
- (void)addAnimations:(id)animations;
- (void)addCompletion:(id)completion;
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
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "performAllCompletions for animator: %@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  completions = [(_UIContextMenuAnimator *)self completions];
  v5 = [completions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(completions);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [completions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    selfCopy = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "performAllAnimations for animator: %@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  animations = [(_UIContextMenuAnimator *)self animations];
  v5 = [animations countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(animations);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [animations countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  animations = self->_animations;
  self->_animations = 0;
}

+ (_UIContextMenuAnimator)animatorWithViewController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_opt_new();
  v5 = v4[2];
  v4[2] = controllerCopy;
  v6 = controllerCopy;

  view = [v6 view];

  window = [view window];
  traitCollection = [window traitCollection];
  v10 = [traitCollection horizontalSizeClass] == 1;

  v4[1] = v10;

  return v4;
}

- (BOOL)hasAnyActions
{
  animations = [(_UIContextMenuAnimator *)self animations];
  if ([animations count])
  {
    v4 = 1;
  }

  else
  {
    completions = [(_UIContextMenuAnimator *)self completions];
    v4 = [completions count] != 0;
  }

  return v4;
}

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

@end