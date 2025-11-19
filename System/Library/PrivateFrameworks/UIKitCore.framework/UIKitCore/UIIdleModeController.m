@interface UIIdleModeController
@end

@implementation UIIdleModeController

uint64_t __51___UIIdleModeController__enterIdleModeWithOptions___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    [*(a1 + 32) _postWillEnterNotification];
  }

  v2 = *(a1 + 32);

  return [v2 _animatePresentation];
}

uint64_t __50___UIIdleModeController__exitIdleModeWithOptions___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    [*(a1 + 32) _postWillExitNotification];
  }

  v2 = *(a1 + 32);

  return [v2 _animateDismissal];
}

void __50___UIIdleModeController__exitIdleModeWithOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == WeakRetained[2])
  {
    v3 = WeakRetained;
    [WeakRetained _completeDismissal];
    WeakRetained = v3;
  }
}

void __66___UIIdleModeController__applyPresentationLayoutAttributesToViews__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 64) keyEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 64) objectForKey:v7];
        [*(a1 + 32) _applyLayoutAttributes:v8 toView:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void __63___UIIdleModeController__applyDismissalLayoutAttributesToViews__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 72) keyEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 72) objectForKey:v7];
        [*(a1 + 32) _applyLayoutAttributes:v8 toView:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

uint64_t __63___UIIdleModeController__recordLayoutAttributesStartingAtView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _idleModeLayoutAttributes];
  if (v4)
  {
    [*(*(a1 + 32) + 64) setObject:v4 forKey:v3];
    v5 = *(a1 + 32);
    v6 = v5[9];
    v7 = [v5 _originalAttributesForView:v3 comparedToIdleModeAttributes:v4];
    [v6 setObject:v7 forKey:v3];

    if (*(a1 + 40) == v3 || [v3 containsView:?])
    {
      [v4 wantsDimmingOverlay];
    }

    else
    {
      v10 = [*(a1 + 40) containsView:v3];
      if ([v4 wantsDimmingOverlay] && (v10 & 1) == 0)
      {
        v11 = [v3 layer];
        v12 = [v11 filters];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [MEMORY[0x1E695DEC8] array];
        }

        v15 = v14;

        [*(*(a1 + 32) + 56) setObject:v15 forKey:v3];
      }
    }

    v8 = *(a1 + 40);
    if (v8 == v3 || [v8 containsView:v3])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return 1;
}

@end