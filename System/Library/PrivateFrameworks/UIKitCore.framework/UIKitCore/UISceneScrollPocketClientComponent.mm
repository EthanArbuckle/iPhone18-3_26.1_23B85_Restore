@interface UISceneScrollPocketClientComponent
@end

@implementation UISceneScrollPocketClientComponent

void __74___UISceneScrollPocketClientComponent__scrollPocketLumaObserverDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTopScrollPocketLuma:{objc_msgSend(v3, "lumaForEdge:", 1)}];
  [v4 setLeftScrollPocketLuma:{objc_msgSend(*(a1 + 32), "lumaForEdge:", 2)}];
  [v4 setBottomScrollPocketLuma:{objc_msgSend(*(a1 + 32), "lumaForEdge:", 4)}];
  [v4 setRightScrollPocketLuma:{objc_msgSend(*(a1 + 32), "lumaForEdge:", 8)}];
}

void __65___UISceneScrollPocketClientComponent_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E698E690] succinctStyle];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___UISceneScrollPocketClientComponent_appendDescriptionToStream___block_invoke_3;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 overlayStyle:v3 block:v6];
}

id __65___UISceneScrollPocketClientComponent_appendDescriptionToStream___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  v4 = [v2 appendObject:WeakRetained withName:@"window"];

  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"pocketInteractions"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"lumaObserver"];
}

@end