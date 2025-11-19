@interface UIFocusSystemSceneComponent
@end

@implementation UIFocusSystemSceneComponent

void __49___UIFocusSystemSceneComponent__setupFocusSystem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFocusSystemState];
}

uint64_t __49___UIFocusSystemSceneComponent__setupFocusSystem__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _updateFocusSystemState];
  v2 = *(a1 + 32);

  return [v2 _delayedSetupFocusDebugWindow];
}

void __49___UIFocusSystemSceneComponent__setupFocusSystem__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFocusSystemState];
}

void __63___UIFocusSystemSceneComponent__updateDeviceCapabilityObserver__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _adjustFocusSystemAvailability];
}

void __63___UIFocusSystemSceneComponent__updateDeviceCapabilityObserver__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _adjustFocusSystemAvailability];
}

uint64_t __54___UIFocusSystemSceneComponent__windowsForFocusSearch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 windowLevel];
  v7 = v6;
  [v5 windowLevel];
  if (v7 >= v8)
  {
    [v4 windowLevel];
    v11 = v10;
    [v5 windowLevel];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __58___UIFocusSystemSceneComponent___applicationIsSpringBoard__block_invoke()
{
  if ([UIApp _isSpringBoard])
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v0 = [v1 bundleIdentifier];
    _MergedGlobals_1120 = [v0 isEqualToString:@"com.apple.springboard"];
  }

  else
  {
    _MergedGlobals_1120 = 0;
  }
}

void __47___UIFocusSystemSceneComponent_coordinateSpace__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "Unable to find coordinate space for scene %@. Falling back to screen space.", &v6, 0xCu);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &_UIFocusSystemSceneComponentDidFinishInitializationNotification_block_invoke___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Unable to find coordinate space for scene %@. Falling back to screen space.", &v6, 0xCu);
    }
  }
}

void __70___UIFocusSystemSceneComponent__focusSystem_willUpdateFocusInContext___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 _countOfFocusedAncestorTrackingViewsInSubtree])
  {
    if ([v3 _tracksFocusedAncestors])
    {
      [v3 _ancestorWillUpdateFocusInContext:a1[4] withAnimationCoordinator:a1[5]];
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [v3 subviews];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          (*(*(*(a1[6] + 8) + 24) + 16))();
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

void __69___UIFocusSystemSceneComponent__focusSystem_didUpdateFocusInContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) nextFocusedItem];
  [v1 _updateFocusEffectForItem:v2];
}

@end