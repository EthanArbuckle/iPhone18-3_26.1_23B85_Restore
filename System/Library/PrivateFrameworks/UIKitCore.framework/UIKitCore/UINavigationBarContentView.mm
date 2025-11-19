@interface UINavigationBarContentView
@end

@implementation UINavigationBarContentView

BOOL __78___UINavigationBarContentView__updateNavItemContentLayoutGuideEdgeConstraints__block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = [v5 secondItem];
  v8 = *(a1 + 32);
  if (*(v8 + 557) != a3)
  {
    if (v7 == v8)
    {
      if ((*(a1 + 40) & 1) == 0)
      {
        v10 = *(v8 + 464);
        goto LABEL_12;
      }
    }

    else if (v7 == *(v8 + 464))
    {
      v10 = v7;
      if (*(a1 + 40))
      {
        v9 = 0;
        goto LABEL_10;
      }

LABEL_12:
      v9 = v7 == v10;
      goto LABEL_10;
    }

LABEL_9:
    v9 = 1;
    goto LABEL_10;
  }

  v9 = v7 != v8;
LABEL_10:

  return v9;
}

void __52___UINavigationBarContentView_setHostedTabBarFrame___block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 setConstant:v3];

  v6 = a1[5];
  v7 = [v4 objectAtIndexedSubscript:1];
  [v7 setConstant:v6];

  v8 = a1[6];
  v9 = [v4 objectAtIndexedSubscript:2];
  [v9 setConstant:v8];

  v10 = a1[7];
  v11 = [v4 objectAtIndexedSubscript:3];

  [v11 setConstant:v10];
}

void __64___UINavigationBarContentView__setupStaticNavBarButtonAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _triggerActionForEvent:0];
}

void __64___UINavigationBarContentView__setupStaticNavBarButtonAnimated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _triggerActionForEvent:0];
}

void __54___UINavigationBarContentView_resolvedHeightDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 568));
  [WeakRetained navigationBarContentViewDidChangeDesiredHeight:*(a1 + 32)];

  *(*(a1 + 32) + 552) &= ~2u;
}

uint64_t __58___UINavigationBarContentView__runAllScheduledAnimations___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 536);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 = _Block_copy(*(*(&v10 + 1) + 8 * v7));

        v5[2](v5);
        ++v7;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 536) removeAllObjects];
}

uint64_t __58___UINavigationBarContentView__runAllScheduledAnimations___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(*(a1 + 32) + 544);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 = _Block_copy(*(*(&v12 + 1) + 8 * v9));

        (*(v7 + 2))(v7, a2);
        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 728) setKeepsSnapshotsInHierarchy:{0, v12}];
  [*(*(a1 + 32) + 728) removeAllSnapshots];
  return [*(*(a1 + 32) + 544) removeAllObjects];
}

@end