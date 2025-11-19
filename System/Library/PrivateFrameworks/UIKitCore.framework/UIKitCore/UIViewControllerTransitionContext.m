@interface UIViewControllerTransitionContext
@end

@implementation UIViewControllerTransitionContext

uint64_t __62___UIViewControllerTransitionContext__interactivityDidChange___block_invoke(uint64_t a1)
{
  if (!dyld_program_sdk_at_least() || (result = [*(a1 + 32) isInterruptible], (result & 1) == 0))
  {
    v3 = *(*(a1 + 32) + 136);

    return [v3 _setInteractiveChangeHandlers:0];
  }

  return result;
}

@end