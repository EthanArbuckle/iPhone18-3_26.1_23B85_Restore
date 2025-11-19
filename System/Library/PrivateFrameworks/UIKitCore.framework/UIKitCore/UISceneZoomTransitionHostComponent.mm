@interface UISceneZoomTransitionHostComponent
@end

@implementation UISceneZoomTransitionHostComponent

id __65___UISceneZoomTransitionHostComponent_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = [v1 scene];
    v4 = [v3 settings];

    v5 = [v4 wantsDismissInteraction];
  }

  else
  {
    v5 = 0;
  }

  return [v2 appendBool:v5 withName:@"wantsDismissInteraction"];
}

void __65___UISceneZoomTransitionHostComponent_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E698E690] succinctStyle];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___UISceneZoomTransitionHostComponent_appendDescriptionToStream___block_invoke_3;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 overlayStyle:v3 block:v6];
}

id __65___UISceneZoomTransitionHostComponent_appendDescriptionToStream___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v4 = [v2 appendObject:WeakRetained withName:@"viewController"];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"ancestorZoomTransitionController"];
}

@end