@interface UIWindowSceneFBSSceneLifecycleMonitor
@end

@implementation UIWindowSceneFBSSceneLifecycleMonitor

void __60___UIWindowSceneFBSSceneLifecycleMonitor_didEnterBackground__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60___UIWindowSceneFBSSceneLifecycleMonitor_didEnterBackground__block_invoke_2;
  v2[3] = &unk_1E70F44D8;
  v3 = v1;
  [v3 _updateUIClientSettingsWithBlock:v2];
}

void __60___UIWindowSceneFBSSceneLifecycleMonitor_didEnterBackground__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSupportedInterfaceOrientations:{objc_msgSend(v2, "_currentlySupportedInterfaceOrientations")}];
}

void __111___UIWindowSceneFBSSceneLifecycleMonitor_transitionToTargetState_fromState_withTransitionContext_preparations___block_invoke_3(uint64_t a1, uint64_t a2, char a3)
{
  *(*(a1 + 32) + 24) = a3 ^ 1;
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  }

  v6 = v5;
  objc_storeStrong((*(a1 + 32) + 16), v5);
  if ((a3 & 1) == 0)
  {
  }
}

void __111___UIWindowSceneFBSSceneLifecycleMonitor_transitionToTargetState_fromState_withTransitionContext_preparations___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __111___UIWindowSceneFBSSceneLifecycleMonitor_transitionToTargetState_fromState_withTransitionContext_preparations___block_invoke_5;
  v12[3] = &unk_1E70F9850;
  v11 = *(a1 + 32);
  v3 = *(&v11 + 1);
  v15 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v13 = v11;
  v14 = v6;
  _UIScenePerformActionsWithLifecycleActionMask(v2, v12);
  v7 = *(a1 + 32);
  if (*(v7 + 24))
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"_UISceneLifecycleMonitor.m" lineNumber:231 description:@"reached end of scene transition block but still preserving transitioning state!"];

    v7 = *(a1 + 32);
  }

  if (*(v7 + 16))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"_UISceneLifecycleMonitor.m" lineNumber:232 description:@"reached end of scene transition block but still preserving false transition state!"];
  }

  if (*(a1 + 80))
  {
    __cachedMostActiveWindowScene = 0;
    v8 = +[_UIApplicationIntelligenceSupport sharedInstance];
    [v8 connectedScenesUpdated];
  }
}

uint64_t __111___UIWindowSceneFBSSceneLifecycleMonitor_transitionToTargetState_fromState_withTransitionContext_preparations___block_invoke_5(uint64_t result, int a2)
{
  v2 = result;
  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:
        [*(result + 32) willResignActive];
        (*(*(v2 + 40) + 16))();
        v6 = *(v2 + 32);

        return [v6 didResignActive];
      case 6:
        [*(result + 32) willDisonnect];
        (*(*(v2 + 40) + 16))();
        *(*(v2 + 32) + 25) = 0;
        v8 = *(v2 + 32);

        return [v8 didDisonnect];
      case 5:
        [*(result + 32) willConnect];
        *(*(v2 + 32) + 25) = 1;
        (*(*(v2 + 40) + 16))();
        v4 = *(v2 + 32);

        return [v4 didConnect];
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        [*(result + 32) willBecomeActive];
        (*(*(v2 + 40) + 16))();
        v5 = *(v2 + 32);

        return [v5 didBecomeActive];
      case 2:
        [*(*(*(result + 64) + 8) + 40) _enqueuePostSettingsUpdateResponseBlock:*(result + 48) inPhase:0x1EFB17490];
        [*(v2 + 32) willEnterForeground];
        (*(*(v2 + 40) + 16))();
        v7 = *(v2 + 32);

        return [v7 didEnterForeground];
      case 3:
        [*(*(*(result + 64) + 8) + 40) _enqueuePostSettingsUpdateResponseBlock:*(result + 56) inPhase:0x1EFB17490];
        [*(v2 + 32) willEnterBackground];
        (*(*(v2 + 40) + 16))();
        v3 = *(v2 + 32);

        return [v3 didEnterBackground];
    }
  }

  return result;
}

@end