@interface TVRoundButton
@end

@implementation TVRoundButton

void __59___TVRoundButton__updateFloaingViewFocusState_coordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained floatingView];
    v4 = v3;
    if (*(a1 + 48))
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    [v3 setControlState:v5 withAnimationCoordinator:*(a1 + 32)];

    WeakRetained = v6;
  }
}

@end