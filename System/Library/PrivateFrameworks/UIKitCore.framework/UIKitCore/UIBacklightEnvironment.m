@interface UIBacklightEnvironment
@end

@implementation UIBacklightEnvironment

void __42___UIBacklightEnvironment__traitOverrides__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = objc_opt_self();
  [v5 setNSIntegerValue:v3 forTrait:v4];

  [v5 _setNSIntegerValue:*(a1 + 40) forTraitToken:0x1EFE32608];
}

void __48___UIBacklightEnvironment__postSynchronizeQueue__block_invoke()
{
  v0 = objc_alloc_init(_UIAfterCACommitQueue);
  v1 = qword_1ED49E718;
  qword_1ED49E718 = v0;
}

void __83___UIBacklightEnvironment__notifyObserversEnvironmentVisualStateWillChangeToState___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 _willExitAlwaysOn];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 performSelector:sel_puic_willExitAlwaysOn];
  }
}

void __83___UIBacklightEnvironment__notifyObserversEnvironmentVisualStateWillChangeToState___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 _willEnterAlwaysOn];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 performSelector:sel_puic_willEnterAlwaysOn];
  }
}

void __87___UIBacklightEnvironment__notifyObserversIfEnvironmentVisualStateDidChangeToActiveOn___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 _didExitAlwaysOn];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 performSelector:sel_puic_didExitAlwaysOn];
  }
}

void __89___UIBacklightEnvironment__notifyObserversIfEnvironmentVisualStateDidChangeFromActiveOn___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 _didEnterAlwaysOn];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v2 performSelector:sel_puic_didEnterAlwaysOn];
  }
}

uint64_t __74___UIBacklightEnvironment_transitionTraitsInUpdate_animations_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = *(__UILogGetCategoryCachedImpl("UIBacklightEnvironment", UIAlwaysOnFallbackTimelineIdentifier_block_invoke___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = [v3 context];
      if ([v5 isAnimated])
      {
        v6 = @"Animated";
      }

      else
      {
        v6 = @"Non-animated";
      }

      v7 = [*(a1 + 40) _windowScene];
      v8 = [v7 succinctDescription];
      v11 = 138412546;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%@ transitionTraitsInUpdate about to call _componentDidUpdateTraitOverrides on %{public}@", &v11, 0x16u);
    }

    v9 = [*(a1 + 40) _windowScene];
    [v9 _componentDidUpdateTraitOverrides:*(a1 + 40)];
  }

  return (*(*(a1 + 48) + 16))();
}

void __74___UIBacklightEnvironment_transitionTraitsInUpdate_animations_completion___block_invoke_159(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 40) + 16))();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = [WeakRetained windows];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) layoutIfNeeded];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

uint64_t __106___UIBacklightEnvironment__performOnChildViewControllersForAlwaysOnTimelines_performBlock_withCompletion___block_invoke(uint64_t a1)
{
  if (pthread_main_np() != 1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 64) object:*(a1 + 72) file:@"_UIBacklightEnvironment.m" lineNumber:425 description:@"Call must be made on main thread"];
  }

  [*(a1 + 32) removeObject:*(a1 + 40)];
  result = [*(a1 + 32) count];
  if (!result && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

void __75___UIBacklightEnvironment_updateSceneWithFrameSpecifier_layout_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 40) addObject:v3];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 performSelector:sel_puic_updateWithFrameSpecifier_ withObject:*(a1 + 32)];
  }

  else
  {
    [v3 _updateWithFrameSpecifier:*(a1 + 32)];
  }
}

uint64_t __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) previousVisualState];
  v3 = [*(a1 + 40) visualState];
  [*(a1 + 40) isAnimated];
  kdebug_trace();

  v4 = *(a1 + 48);

  return [v4 sceneContentsDidUpdate];
}

void __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_2(uint64_t a1)
{
  if (pthread_main_np() != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"_UIBacklightEnvironment.m" lineNumber:511 description:@"Call must be made on main thread"];
  }

  [MEMORY[0x1E6979518] begin];
  v2 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_3;
  v13[3] = &unk_1E7102AE8;
  v14 = *(a1 + 72);
  v3 = *(a1 + 64);
  v13[4] = v2;
  v13[5] = v3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_5;
  v10[3] = &unk_1E7100388;
  v4 = *(a1 + 40);
  *&v5 = v4;
  *(&v5 + 1) = *(a1 + 32);
  v9 = v5;
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v6;
  v11 = v9;
  v12 = v7;
  [v2 transitionTraitsInUpdate:v4 animations:v13 completion:v10];
}

uint64_t __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_3(uint64_t a1)
{
  kdebug_trace();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_4;
  v3[3] = &unk_1E7102AE8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  return [v4 updateSceneWithFrameSpecifier:0 layout:0 completion:v3];
}

uint64_t __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_4(uint64_t a1)
{
  if (pthread_main_np() != 1)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_UIBacklightEnvironment.m" lineNumber:519 description:@"Call must be made on main thread"];
  }

  [MEMORY[0x1E6979518] commit];

  return kdebug_trace();
}

void __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) sceneContentsAnimationDidComplete];
  v2 = [*(a1 + 32) areSceneContentsUpdated];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 40);

    [v5 _notifyObserversIfEnvironmentVisualStateDidChangeToActiveOn:v4];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_6;
    v9[3] = &unk_1E70FD548;
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11 = v6;
    v9[4] = v7;
    v10 = v8;
    [v3 _commit:0 andPerformPostSynchronizeBlock:v9];
  }
}

uint64_t __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_6(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _notifyObserversIfEnvironmentVisualStateDidChangeToActiveOn:v3];
}

void __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_7(uint64_t a1)
{
  if ([*(a1 + 32) isAnimated])
  {
    (*(*(a1 + 56) + 16))();
  }

  if (*(*(a1 + 40) + 24) == 1 && [*(a1 + 32) isAnimated] && *(a1 + 48))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_8;
    block[3] = &unk_1E70F0F78;
    v4 = *(a1 + 64);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v2 = *(*(a1 + 64) + 16);

    v2();
  }
}

uint64_t __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_9(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _commit:1 andPerformPostSynchronizeBlock:v3];
}

uint64_t __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) sceneContentsAnimationDidComplete];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _notifyObserversIfEnvironmentVisualStateDidChangeFromActiveOn:v3];
}

void __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_12(uint64_t a1)
{
  if (pthread_main_np() != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"_UIBacklightEnvironment.m" lineNumber:598 description:@"Call must be made on main thread"];
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_14;
  v8[3] = &unk_1E70F3590;
  v9 = v2;
  [v3 transitionTraitsInUpdate:v9 animations:&__block_literal_global_173_0 completion:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_15;
  v6[3] = &unk_1E70F3590;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 _commit:1 andPerformPostSynchronizeBlock:v6];
}

uint64_t __67___UIBacklightEnvironment_environment_performBacklightSceneUpdate___block_invoke_16(void *a1)
{
  [MEMORY[0x1E6979518] begin];
  if (a1[4])
  {
    v2 = a1[5];

    return [v2 updateSceneWithFrameSpecifier:? layout:? completion:?];
  }

  else
  {
    v4 = *(a1[6] + 16);

    return v4();
  }
}

void __93___UIBacklightEnvironment_environment_timelinesForDateInterval_previousSpecifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v5 performSelector:sel_puic_timelinesForDateInterval_ withObject:*(a1 + 32)];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) addObject:v5];
      goto LABEL_7;
    }

    v3 = [v5 _timelinesForDateInterval:*(a1 + 32)];
  }

  v4 = v3;
  [*(a1 + 40) addObjectsFromArray:v3];

LABEL_7:
}

void __93___UIBacklightEnvironment_environment_timelinesForDateInterval_previousSpecifier_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93___UIBacklightEnvironment_environment_timelinesForDateInterval_previousSpecifier_completion___block_invoke_3;
  v10[3] = &unk_1E710C928;
  v6 = a1[6];
  v8 = a1[4];
  v7 = a1[5];
  v13 = a1[7];
  v10[4] = v7;
  v11 = v6;
  v12 = v5;
  v9 = v5;
  [a2 _timelinesForDateInterval:v8 completion:v10];
}

void __93___UIBacklightEnvironment_environment_timelinesForDateInterval_previousSpecifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (pthread_main_np() != 1)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"_UIBacklightEnvironment.m" lineNumber:667 description:@"Call must be made on main thread"];
  }

  [*(a1 + 40) addObjectsFromArray:v4];
  (*(*(a1 + 48) + 16))();
}

@end