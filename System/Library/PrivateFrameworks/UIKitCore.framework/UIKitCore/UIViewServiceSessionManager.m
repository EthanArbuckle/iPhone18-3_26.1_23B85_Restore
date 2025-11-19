@interface UIViewServiceSessionManager
@end

@implementation UIViewServiceSessionManager

void __38___UIViewServiceSessionManager__start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setDomain:@"com.apple.uikit.viewservice"];
  [v3 setService:8316790000];
  [v3 setDelegate:*(a1 + 32)];
}

void __75___UIViewServiceSessionManager__ensureSessionManagerWithDelegate_asPlugIn___block_invoke(uint64_t a1)
{
  v2 = _UIMainBundleIdentifier();

  if (v2)
  {
    v3 = [[_UIViewServiceSessionManager alloc] _initWithDelegate:*(a1 + 32) asPlugIn:*(a1 + 40)];
    v4 = __viewServiceSessionManager;
    __viewServiceSessionManager = v3;
  }
}

void __68___UIViewServiceSessionManager_configureLegacySessionForConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock((*(a1 + 32) + 32));
    [*(*(a1 + 32) + 24) removeObject:WeakRetained];
    os_unfair_lock_unlock((*(a1 + 32) + 32));
  }

  [*(a1 + 32) _startOrStopSystemsForBackgroundRunning];
}

void __64___UIViewServiceSessionManager_configureConnection_withContext___block_invoke(uint64_t a1)
{
  v1 = __viewServiceSessionManager;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v1 queuedConnectionInvalidated:WeakRetained];
}

void __64___UIViewServiceSessionManager_configureConnection_withContext___block_invoke_2(uint64_t a1)
{
  v1 = __viewServiceSessionManager;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v1 queuedConnectionInvalidated:WeakRetained];
}

uint64_t __71___UIViewServiceSessionManager__startOrStopSystemsForBackgroundRunning__block_invoke(uint64_t a1)
{
  BSSetMainThreadPriorityFixedForUI();
  if ([*(a1 + 32) _hasActiveSessions])
  {

    return [UIView _endSuspendingMotionEffectsForReason:0x1EFB8D150];
  }

  else
  {
    result = [UIApp applicationState];
    if (result == 2)
    {

      return [UIView _beginSuspendingMotionEffectsForReason:0x1EFB8D150];
    }
  }

  return result;
}

void __58___UIViewServiceSessionManager_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 36) withName:@"asPlugin"];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58___UIViewServiceSessionManager_appendDescriptionToStream___block_invoke_3;
  v9[3] = &unk_1E7118240;
  v10 = v3;
  [v10 appendCollection:v4 withName:@"sceneAuxiliaryConnections" itemBlock:v9];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58___UIViewServiceSessionManager_appendDescriptionToStream___block_invoke_4;
  v7[3] = &unk_1E7118240;
  v8 = v5;
  [v8 appendCollection:v6 withName:@"legacySessions" itemBlock:v7];
}

@end