@interface UILongPressClickInteractionDriver
@end

@implementation UILongPressClickInteractionDriver

void __63___UILongPressClickInteractionDriver__handleGestureRecognizer___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained cancelInteraction];
  }

  else
  {
    if (a2)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _asyncGestureBegan];
  }
}

@end