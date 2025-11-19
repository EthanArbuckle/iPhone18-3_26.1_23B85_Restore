@interface UISceneHostingView
@end

@implementation UISceneHostingView

void __41___UISceneHostingView_setPresentedScene___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setClippingDisabled:1];
  [v2 setAppearanceStyle:2];
  [v2 setShouldPassthroughHitTestEventsIfTransparent:1];
  [v2 setPresentedLayerTypes:2];
  [v2 _setForwardsKeyboardLayersToHost:1];
}

id __49___UISceneHostingView_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) style];
  v3 = [v2 verbosity];

  if (v3 == 2)
  {
    v4 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 592));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = *(WeakRetained + 5);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v8 identifier];
    [v4 appendString:v9 withName:0];
  }

  v10 = *(a1 + 32);
  [*(a1 + 40) frame];
  return [v10 appendRect:@"frame" withName:?];
}

void __49___UISceneHostingView_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49___UISceneHostingView_appendDescriptionToStream___block_invoke_3;
  v5[3] = &unk_1E70F35B8;
  v3 = v2;
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v3 appendBodySectionWithName:0 block:v5];
}

void __49___UISceneHostingView_appendDescriptionToStream___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 592));
  v2 = [v1 appendObject:WeakRetained withName:@"controller"];
}

@end