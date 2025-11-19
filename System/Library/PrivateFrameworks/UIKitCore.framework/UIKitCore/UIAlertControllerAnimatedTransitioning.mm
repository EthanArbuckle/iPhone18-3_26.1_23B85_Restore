@interface UIAlertControllerAnimatedTransitioning
@end

@implementation UIAlertControllerAnimatedTransitioning

void __61___UIAlertControllerAnimatedTransitioning_animateTransition___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) transitionWasCancelled])
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) _didEndSystemProvidedPresentationOfAlertController:*(a1 + 48) wasSuccessful:0];
    }

    v2 = *(a1 + 32);

    [v2 completeTransition:0];
  }

  else
  {
    v3 = +[UIDevice currentDevice];
    v4 = [v3 _tapticEngine];
    [v4 actuateFeedback:1];

    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 40) _didBeginSystemProvidedPresentationOfAlertController:*(a1 + 48)];
    }

    v5 = *(a1 + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61___UIAlertControllerAnimatedTransitioning_animateTransition___block_invoke_2;
    v7[3] = &unk_1E70F4638;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    [v5 _animateTransition:v6 completionBlock:v7];
  }
}

uint64_t __61___UIAlertControllerAnimatedTransitioning_animateTransition___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) _didEndSystemProvidedPresentationOfAlertController:*(a1 + 40) wasSuccessful:a2];
  }

  v4 = *(a1 + 48);

  return [v4 completeTransition:a2];
}

uint64_t __61___UIAlertControllerAnimatedTransitioning_animateTransition___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 32) _didEndSystemProvidedPresentationOfAlertController:*(a1 + 40) wasSuccessful:a2];
  }

  v4 = *(a1 + 48);

  return [v4 completeTransition:a2];
}

@end