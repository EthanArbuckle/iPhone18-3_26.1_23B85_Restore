@interface _SBUISystemApertureElementSourceAnimationContext
- (void)addPendingAnimation:(id)animation;
- (void)addSceneResizeAction:(id)action;
- (void)performPendingCoordinatedAnimations;
- (void)removeSceneResizeAction:(id)action;
@end

@implementation _SBUISystemApertureElementSourceAnimationContext

- (void)performPendingCoordinatedAnimations
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_pendingCoordinatedAnimations copy];
  if ([v3 count])
  {
    pendingCoordinatedAnimations = self->_pendingCoordinatedAnimations;
    self->_pendingCoordinatedAnimations = 0;

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
}

- (void)addSceneResizeAction:(id)action
{
  actionCopy = action;
  sceneResizeActions = self->_sceneResizeActions;
  v8 = actionCopy;
  if (!sceneResizeActions)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = self->_sceneResizeActions;
    self->_sceneResizeActions = v6;

    actionCopy = v8;
    sceneResizeActions = self->_sceneResizeActions;
  }

  [(NSMutableSet *)sceneResizeActions addObject:actionCopy];
}

- (void)removeSceneResizeAction:(id)action
{
  actionCopy = action;
  [(NSMutableSet *)self->_sceneResizeActions removeObject:?];
  if (![(NSMutableSet *)self->_sceneResizeActions count])
  {
    sceneResizeActions = self->_sceneResizeActions;
    self->_sceneResizeActions = 0;
  }

  if (([actionCopy isTransientLocal] & 1) == 0)
  {
    [(_SBUISystemApertureElementSourceAnimationContext *)self disableSkippingSceneResizeActions];
  }
}

- (void)addPendingAnimation:(id)animation
{
  animationCopy = animation;
  pendingCoordinatedAnimations = self->_pendingCoordinatedAnimations;
  v9 = animationCopy;
  if (!pendingCoordinatedAnimations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pendingCoordinatedAnimations;
    self->_pendingCoordinatedAnimations = array;

    pendingCoordinatedAnimations = self->_pendingCoordinatedAnimations;
  }

  v8 = MEMORY[0x1AC58E960]();
  [(NSMutableArray *)pendingCoordinatedAnimations addObject:v8];
}

@end