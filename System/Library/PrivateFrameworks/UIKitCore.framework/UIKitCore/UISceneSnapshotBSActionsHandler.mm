@interface UISceneSnapshotBSActionsHandler
@end

@implementation UISceneSnapshotBSActionsHandler

uint64_t __98___UISceneSnapshotBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __98___UISceneSnapshotBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  location = 0;
  if (*(a1 + 56) == 1)
  {
    v2 = +[UISnapshottingAssertionManager sharedInstance];
    v3 = [v2 acquireNewAssertion];

    objc_storeWeak(&location, v3);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98___UISceneSnapshotBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_3;
  aBlock[3] = &unk_1E712C910;
  v21 = *(a1 + 32);
  v24 = *(a1 + 56);
  objc_copyWeak(&v23, &location);
  v22 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 48);
  v5 = [obj countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = UIApp;
        v10 = *(a1 + 32);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __98___UISceneSnapshotBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_6;
        v13[3] = &unk_1E71028A8;
        v15 = *(a1 + 57);
        v11 = v4;
        v13[4] = v8;
        v14 = v11;
        [v9 prepareSnapshotsWithAction:v8 forScene:v10 completion:v13];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v5);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __98___UISceneSnapshotBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = UIApp;
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __98___UISceneSnapshotBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_4;
  v6[3] = &unk_1E7108F18;
  v9 = *(a1 + 56);
  objc_copyWeak(&v8, (a1 + 48));
  v7 = *(a1 + 40);
  [v4 _performSnapshotsWithAction:v3 forScene:v5 completion:v6];

  objc_destroyWeak(&v8);
}

void __98___UISceneSnapshotBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v3 = +[UISnapshottingAssertionManager sharedInstance];
      [v3 relinquishAssertion:WeakRetained];
    }

    if ([*(a1 + 32) _isReadyForSuspension])
    {
      v4 = +[UISnapshottingAssertionManager sharedInstance];
      [v4 executeIfNoActiveAssertions:&__block_literal_global_4_19];
    }
  }
}

void __98___UISceneSnapshotBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_5()
{
  v0 = +[_UISceneLifecycleMultiplexer sharedInstance];
  [v0 collectBackingStores];
}

void __98___UISceneSnapshotBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_6(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = UIApp;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __98___UISceneSnapshotBSActionsHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke_7;
    v5[3] = &unk_1E70F4A50;
    v3 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v3;
    [v2 _performBlockAfterCATransactionCommits:v5];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

@end