@interface UIFeedbackGeneratorGestureRecognizer
@end

@implementation UIFeedbackGeneratorGestureRecognizer

void __81___UIFeedbackGeneratorGestureRecognizer___removeCompletedInteractionsAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[39] minusSet:*(a1 + 32)];
    WeakRetained = v3;
  }
}

@end