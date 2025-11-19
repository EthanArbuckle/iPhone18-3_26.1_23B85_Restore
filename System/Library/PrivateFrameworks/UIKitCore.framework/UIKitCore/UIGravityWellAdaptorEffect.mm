@interface UIGravityWellAdaptorEffect
@end

@implementation UIGravityWellAdaptorEffect

void __44___UIGravityWellAdaptorEffect_endForHandOff__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) adaptedEffect];
  v2 = [*(a1 + 32) adaptorInteraction];
  [v3 interaction:v2 didChangeWithContext:*(a1 + 40)];
}

void __45___UIGravityWellAdaptorEffect_addCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performAllCompletions];
}

@end