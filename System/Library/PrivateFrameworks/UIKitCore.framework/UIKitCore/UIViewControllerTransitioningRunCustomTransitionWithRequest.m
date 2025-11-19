@interface UIViewControllerTransitioningRunCustomTransitionWithRequest
@end

@implementation UIViewControllerTransitioningRunCustomTransitionWithRequest

void ___UIViewControllerTransitioningRunCustomTransitionWithRequest_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___UIViewControllerTransitioningRunCustomTransitionWithRequest_block_invoke_3;
  v10[3] = &unk_1E7104748;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v15 = *(a1 + 96);
  v7 = *(a1 + 72);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  [UIKeyboardSceneDelegate _pinInputViewsForKeyboardSceneDelegate:v2 onBehalfOfResponder:v3 duringBlock:v10];
}

uint64_t ___UIViewControllerTransitioningRunCustomTransitionWithRequest_block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) handoffData];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = [v6 handoffData];
      [v7 willBeginAfterPreemptionWithContext:v5 data:v8];
    }
  }

  v9 = *(a1 + 48);
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 56) startInteractiveTransition:v9];
  }

  else
  {
    [*(a1 + 40) animateTransition:v9];
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [*(a1 + 40) interruptibleAnimatorForTransition:*(a1 + 48)];

    if (v10)
    {
      if ((*(a1 + 80) & 1) == 0)
      {
        [*(a1 + 48) _addInteractiveUpdateHandler:*(a1 + 64)];
      }

      [*(a1 + 48) _setInterruptible:1];
    }
  }

  result = *(a1 + 72);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

uint64_t ___UIViewControllerTransitioningRunCustomTransitionWithRequest_block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDisableAlongsideView:1];
  v2 = *(a1 + 40);

  return [v2 __runAlongsideAnimations];
}

@end