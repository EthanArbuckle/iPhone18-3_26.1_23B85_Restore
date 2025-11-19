@interface UIFloatingTabBarDragController
@end

@implementation UIFloatingTabBarDragController

void __87___UIFloatingTabBarDragController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    location[5] = v2;
    location[6] = v3;
    v5 = [*(a1 + 32) delegate];
    v6 = *(a1 + 32);
    v7 = [v6 currentDragTab];
    [v5 tabDragController:v6 hideDraggedTab:v7];

    v8 = [*(a1 + 32) currentDragTab];
    v9 = [v8 identifier];

    v10 = [*(a1 + 32) pendingFavoriteOrder];
    [v10 removeObject:v9];

    v11 = [*(a1 + 32) pendingExcludedItems];
    [v11 addObject:v9];

    *(*(a1 + 32) + 8) = 1;
    objc_initWeak(location, *(a1 + 32));
    v12 = dispatch_time(0, 300000000);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87___UIFloatingTabBarDragController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2;
    v13[3] = &unk_1E70F5A28;
    objc_copyWeak(&v14, location);
    dispatch_after(v12, MEMORY[0x1E69E96A0], v13);
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }
}

void __87___UIFloatingTabBarDragController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[8] == 1)
  {
    v2 = WeakRetained;
    [WeakRetained _updateFavoriteOrderAnimated:1];
    WeakRetained = v2;
  }
}

void __84___UIFloatingTabBarDragController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    objc_storeWeak(WeakRetained + 4, 0);
    WeakRetained = v2;
  }
}

@end