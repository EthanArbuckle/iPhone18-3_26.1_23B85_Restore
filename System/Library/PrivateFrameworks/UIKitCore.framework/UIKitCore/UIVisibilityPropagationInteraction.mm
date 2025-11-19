@interface UIVisibilityPropagationInteraction
@end

@implementation UIVisibilityPropagationInteraction

void __79___UIVisibilityPropagationInteraction__visibilityLock_enqueueUpdateIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = objc_autoreleasePoolPush();
    os_unfair_lock_lock(WeakRetained + 21);
    os_unfair_lock_lock(WeakRetained + 20);
    v2 = WeakRetained;
    if (*(WeakRetained + 93))
    {
      v3 = 0;
      v4 = 0;
    }

    else
    {
      v4 = [*(WeakRetained + 1) copy];
      v3 = [*(WeakRetained + 6) copy];
      v2 = WeakRetained;
    }

    *(v2 + 92) = 0;
    os_unfair_lock_unlock(v2 + 20);
    if (!BSEqualObjects() || (BSEqualStrings() & 1) == 0)
    {
      objc_storeStrong(WeakRetained + 7, v4);
      objc_storeStrong(WeakRetained + 8, v3);
      v5 = *(WeakRetained + 9);
      if (v4 && v3)
      {
        v6 = MEMORY[0x1E698F4A8];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __58___UIVisibilityPropagationInteraction__enqueuedUpdateBody__block_invoke;
        v11[3] = &unk_1E71288C8;
        v12 = v4;
        v13 = v3;
        v7 = v5;
        v8 = [v6 injectorWithConfigurator:v11];
        v9 = *(WeakRetained + 9);
        *(WeakRetained + 9) = v8;
      }

      else
      {
        *(WeakRetained + 9) = 0;
      }

      [v5 invalidate];
    }

    os_unfair_lock_unlock(WeakRetained + 21);

    objc_autoreleasePoolPop(v1);
  }
}

void __58___UIVisibilityPropagationInteraction__enqueuedUpdateBody__block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTarget:v3];
  [v4 setInheritingEnvironment:*(a1 + 40)];
  v5 = [MEMORY[0x1E69C7588] grantWithNamespace:*MEMORY[0x1E69DED50] sourceEnvironment:*(a1 + 40) attributes:0];
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v4 setAdditionalAttributes:v6];
}

void __71___UIVisibilityPropagationInteraction__visibilityLock_didMoveToWindow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 20);
    [(_UIVisibilityPropagationInteraction *)v2 _visibilityLock_updateVisibility];
    os_unfair_lock_unlock(v2 + 20);
    WeakRetained = v2;
  }
}

@end