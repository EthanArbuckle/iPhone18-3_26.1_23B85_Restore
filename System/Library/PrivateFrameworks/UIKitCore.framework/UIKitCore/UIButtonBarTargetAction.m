@interface UIButtonBarTargetAction
@end

@implementation UIButtonBarTargetAction

uint64_t __45___UIButtonBarTargetAction__invoke_forEvent___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) _triggerActionForEvent:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 8);

  return [v2 _executeValidationHandler];
}

@end