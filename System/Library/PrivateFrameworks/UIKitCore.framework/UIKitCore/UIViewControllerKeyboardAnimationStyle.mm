@interface UIViewControllerKeyboardAnimationStyle
@end

@implementation UIViewControllerKeyboardAnimationStyle

void __59___UIViewControllerKeyboardAnimationStyle_initWithContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [*(a1 + 32) setIsAnimationCompleting:1];
  v5 = [*(a1 + 32) previousCompleteHandler];

  if (v5)
  {
    v6 = [*(a1 + 32) previousCompleteHandler];
    (v6)[2](v6, v7, a3);
  }

  else
  {
    [v7 _setWillCompleteHandler:0];
  }
}

uint64_t __112___UIViewControllerKeyboardAnimationStyle__launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __112___UIViewControllerKeyboardAnimationStyle__launchAnimation_afterStarted_completion_forHost_fromCurrentPosition___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    [*(a1 + 32) setInteractivelyCancelled:1];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

@end