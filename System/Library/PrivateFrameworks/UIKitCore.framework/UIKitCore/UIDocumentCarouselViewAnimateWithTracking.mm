@interface UIDocumentCarouselViewAnimateWithTracking
@end

@implementation UIDocumentCarouselViewAnimateWithTracking

void ___UIDocumentCarouselViewAnimateWithTracking_block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [UIView _trackVelocity:*(a1 + 32)];
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.55];
    [v3 setInertialTargetSmoothing:0.0];
    [UIView _animateUsingSpringBehavior:v3 tracking:*(a1 + 48) animations:*(a1 + 32) completion:*(a1 + 40)];
  }
}

@end