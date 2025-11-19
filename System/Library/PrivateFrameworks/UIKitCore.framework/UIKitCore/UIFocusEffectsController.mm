@interface UIFocusEffectsController
@end

@implementation UIFocusEffectsController

void __51___UIFocusEffectsController_startRollbackAnimation__block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 40) * a3;
  v4 = *(a1 + 48) * a3;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696B098] valueWithCGPoint:{*(a1 + 56) * a3, *(a1 + 64) * a3}];
  [v5 updateCurrentOffset:v6 overrideDisplayOffset:{v3, v4}];
}

void __51___UIFocusEffectsController_startRollbackAnimation__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
  }
}

@end