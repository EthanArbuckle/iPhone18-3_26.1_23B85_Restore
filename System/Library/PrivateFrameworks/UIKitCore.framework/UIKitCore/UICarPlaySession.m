@interface UICarPlaySession
@end

@implementation UICarPlaySession

void __35___UICarPlaySession_sharedInstance__block_invoke()
{
  v0 = [_UICarPlaySession alloc];
  if (v0)
  {
    v10.receiver = v0;
    v10.super_class = _UICarPlaySession;
    v1 = objc_msgSendSuper2(&v10, sel_init);
    v2 = v1;
    if (v1)
    {
      v1[2] = 0;
      v12 = 0;
      v13 = &v12;
      v14 = 0x2050000000;
      v3 = qword_1ED4A08F8;
      v15 = qword_1ED4A08F8;
      if (!qword_1ED4A08F8)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __getCARSessionStatusClass_block_invoke;
        v11[3] = &unk_1E70F2F20;
        v11[4] = &v12;
        __getCARSessionStatusClass_block_invoke(v11);
        v3 = v13[3];
      }

      v4 = v3;
      _Block_object_dispose(&v12, 8);
      v5 = objc_alloc_init(v3);
      v6 = *(v2 + 16);
      *(v2 + 16) = v5;

      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = *(v2 + 32);
      *(v2 + 32) = v7;

      [*(v2 + 16) addSessionObserver:v2];
    }
  }

  else
  {
    v2 = 0;
  }

  v9 = _MergedGlobals_1278;
  _MergedGlobals_1278 = v2;
}

void __71___UICarPlaySession_enqueuePendingSessionAccessWithTimeout_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock((*(a1 + 32) + 8));
    [*(*(a1 + 32) + 32) removeObject:v3];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    WeakRetained = v3;
  }
}

void __39___UICarPlaySession_sessionDidConnect___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(*(a1 + 32) + 32) copy];
  [*(*(a1 + 32) + 32) removeAllObjects];
  *(*(a1 + 32) + 24) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) completion];
        v8[2](v8, *(a1 + 40));

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void __42___UICarPlaySession_sessionDidDisconnect___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 24) = 0;
  v2 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v2);
}

@end