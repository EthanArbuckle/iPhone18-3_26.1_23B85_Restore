@interface UISceneZoomTransitionClientComponent
@end

@implementation UISceneZoomTransitionClientComponent

id __67___UISceneZoomTransitionClientComponent_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [(_UISceneInterfaceProtectionClientComponent *)*(a1 + 40) settings];
  v4 = [v2 appendBool:objc_msgSend(v3 withName:{"wantsDismissInteraction"), @"wantsDismissInteraction"}];

  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 24) != 0 withName:@"hasDismissInteraction"];
}

void __67___UISceneZoomTransitionClientComponent_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E698E690] succinctStyle];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67___UISceneZoomTransitionClientComponent_appendDescriptionToStream___block_invoke_3;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 overlayStyle:v3 block:v6];
}

void __67___UISceneZoomTransitionClientComponent_appendDescriptionToStream___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"dismissInteraction" skipIfNil:1];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v4 = [v3 appendObject:WeakRetained withName:@"dismissInteractionWindow" skipIfNil:1];
}

@end