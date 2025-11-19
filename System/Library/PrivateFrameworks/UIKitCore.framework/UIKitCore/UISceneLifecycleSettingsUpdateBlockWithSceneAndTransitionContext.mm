@interface UISceneLifecycleSettingsUpdateBlockWithSceneAndTransitionContext
@end

@implementation UISceneLifecycleSettingsUpdateBlockWithSceneAndTransitionContext

void ___UISceneLifecycleSettingsUpdateBlockWithSceneAndTransitionContext_block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = a2;
  [*(a1 + 32) _setIsRespondingToLifecycleEvent:1];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 32) _sceneComponents];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 _scene:*(a1 + 32) willTransitionToActivationState:*(a1 + 48) withReasonsMask:{objc_msgSend(*(a1 + 40), "deactivationReasons")}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9[2](v9, 0);
}

uint64_t ___UISceneLifecycleSettingsUpdateBlockWithSceneAndTransitionContext_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _isRespondingToLifecycleEvent];
  v3 = [UIScene _activationStateFromSceneSettings:*(a1 + 40)];
  v4 = [UIScene _activationStateFromSceneSettings:*(a1 + 48)];
  if (_UISceneLifecycleCompositeActionMaskHighestLifecycleActionType(_UISceneLifecycleCompositeActionMaskFromStateToState__staticStateMap[4 * v3 + 5 + v4]) || (v5 = [*(a1 + 40) deactivationReasons], v5 != objc_msgSend(*(a1 + 48), "deactivationReasons")))
  {
    v17 = v2;
    v6 = [*(a1 + 32) _lifecycleMonitor];
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___UISceneLifecycleSettingsUpdateBlockWithSceneAndTransitionContext_block_invoke_2;
    v22[3] = &unk_1E70FA060;
    v23 = *(a1 + 32);
    v25 = v4;
    v24 = *(a1 + 48);
    [v6 transitionToTargetState:v7 fromState:v8 withTransitionContext:v9 preparations:v22];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [*(a1 + 32) _sceneComponents];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 _scene:*(a1 + 32) didTransitionFromActivationState:v3 withReasonsMask:{objc_msgSend(*(a1 + 40), "deactivationReasons")}];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v12);
    }

    v2 = v17;
  }

  return [*(a1 + 32) _setIsRespondingToLifecycleEvent:v2];
}

@end