@interface UIDoubleTapInteraction
@end

@implementation UIDoubleTapInteraction

void __38___UIDoubleTapInteraction__captureTap__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[8])
    {
      v6 = WeakRetained;
      v4 = [WeakRetained continueProcessingSecondTapAtLocation:{*(a1 + 40), *(a1 + 48)}];
      v3 = v6;
      if (v4)
      {
        v5 = [v6 doubleTapAction];
        [v5 touch];

        v3 = v6;
      }
    }
  }
}

@end