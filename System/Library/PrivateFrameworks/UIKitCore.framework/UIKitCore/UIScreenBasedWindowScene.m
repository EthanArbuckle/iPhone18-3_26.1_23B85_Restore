@interface UIScreenBasedWindowScene
@end

@implementation UIScreenBasedWindowScene

void __58___UIScreenBasedWindowScene_unassociationCacheAccessQueue__block_invoke()
{
  v0 = dispatch_queue_create("unassociationCacheAccessQueue", 0);
  v1 = _MergedGlobals_17;
  _MergedGlobals_17 = v0;
}

void __70___UIScreenBasedWindowScene__unassociatedWindowSceneForScreen_create___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayIdentity];
  v3 = v2;
  if (!v2)
  {
    v3 = [*(a1 + 32) _name];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 64) unassociationCache];
  v5 = [v4 objectForKey:*(*(*(a1 + 40) + 8) + 40)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40) && *(a1 + 72) == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v8 = objc_opt_new();
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [UISceneSession alloc];
    v12 = [MEMORY[0x1E696AFB0] UUID];
    v13 = [v12 UUIDString];
    v16 = [(UISceneSession *)v11 _initWithPersistentIdentifier:v13 sessionRole:@"_UIScreenBasedSceneSession" configurationName:0];

    v14 = [v16 configuration];
    [v14 setSceneClass:0];
    [v14 setDelegateClass:0];
    [v14 setStoryboard:0];
    [v16 _updateConfiguration:v14];
    [*(*(*(a1 + 48) + 8) + 40) setSession:v16];
    v15 = [*(a1 + 64) unassociationCache];
    [v15 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(*(*(a1 + 40) + 8) + 40)];
  }
}

void __62___UIScreenBasedWindowScene_initWithScreen_session_lookupKey___block_invoke(uint64_t a1, void *a2, objc_class *a3)
{
  v5 = a2;
  if (([(objc_class *)a3 conformsToProtocol:&unk_1EFE5A310]& 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = NSStringFromClass(a3);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v6 handleFailureInMethod:v7 object:v8 file:@"_UIScreenBasedWindowScene.m" lineNumber:242 description:{@"class: %@ included in baseSceneComponentClassDictionary of %@ but does not confirm to _UISceneComponentProviding!", v9, v11}];
  }

  v12 = [[a3 alloc] initWithScene:*(a1 + 32)];
  [*(a1 + 32) _registerSceneComponent:v12 forKey:v5];
}

void __57___UIScreenBasedWindowScene__performInvalidationIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() unassociationCache];
  [v2 removeObjectForKey:*(*(a1 + 32) + 512)];
}

void __63___UIScreenBasedWindowScene__preventAutoInvalidationForReason___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _removeAutoInvalidationPreventionAssertion:v5];
  }
}

void __67___UIScreenBasedWindowScene__registerInvalidationEvaluatorIfNeeded__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained _hasInvalidated] & 1) == 0)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67___UIScreenBasedWindowScene__registerInvalidationEvaluatorIfNeeded__block_invoke_2;
    v12[3] = &unk_1E70FA198;
    v12[4] = &v13;
    [v3 _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:0 asCopy:0 stopped:0 withBlock:v12];
    if ((v14[3] & 1) == 0)
    {
      *(v3 + 537) = 1;
      v4 = *(__UILogGetCategoryCachedImpl("SceneAutoInvalidation", &_UIScreenBasedSceneSession_block_invoke___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        if (v5)
        {
          v6 = MEMORY[0x1E696AEC0];
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
        }

        else
        {
          v9 = @"(nil)";
        }

        *buf = 138543362;
        v18 = v9;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Marking scene as needing invalidation: %{public}@", buf, 0xCu);
      }

      v10 = v3[69];
      v11 = v10;
      if (!v10 || ![v10 count])
      {
        [(_UIScreenBasedWindowScene *)v3 _performInvalidationIfNeeded];
      }
    }

    *(v3 + 536) = 0;
    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __67___UIScreenBasedWindowScene__registerInvalidationEvaluatorIfNeeded__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 _extendsScreenSceneLifetime];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __69___UIScreenBasedWindowScene__addSubclassDebugDescriptionWithBuilder___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 552);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) appendObject:*(*(&v8 + 1) + 8 * v6++) withName:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end