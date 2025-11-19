@interface UIHomeAffordanceHostSceneComponent
@end

@implementation UIHomeAffordanceHostSceneComponent

void __86___UIHomeAffordanceHostSceneComponent__setUpHomeAffordanceObserverInteractionIfNeeded__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    [(_UIHomeAffordanceHostSceneComponent *)WeakRetained _sendClientHomeAffordanceSceneReferenceFrame:a2, a3, a4, a5];
    WeakRetained = v10;
  }
}

void __86___UIHomeAffordanceHostSceneComponent__setUpHomeAffordanceObserverInteractionIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [(_UIHomeAffordanceHostSceneComponent *)WeakRetained _sendClientDoubleTapGestureDidSucceedAction:a2];
    WeakRetained = v4;
  }
}

void __65___UIHomeAffordanceHostSceneComponent_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) hasSuccinctStyle] & 1) != 0 || (objc_msgSend(*(a1 + 32), "hasDebugStyle") & 1) == 0)
  {
    v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 24) & 1 withName:@"needsProxyInteractionEvaluation"];
    v3 = *(*(a1 + 40) + 64);
    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = MEMORY[0x1E696AEC0];
      v6 = v3;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = [v5 stringWithFormat:@"<%@: %p>", v8, v6];

      v9 = [v4 appendObject:v10 withName:@"proxyHomeAffordanceObserverInteraction"];
    }
  }
}

@end