@interface UITapticEngine
@end

@implementation UITapticEngine

uint64_t __35___UITapticEngine_actuateFeedback___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 16) transitionToState:*(a1 + 40) ended:1];
  }

  v3 = *(*(a1 + 32) + 16);

  return [v3 deactivate];
}

@end