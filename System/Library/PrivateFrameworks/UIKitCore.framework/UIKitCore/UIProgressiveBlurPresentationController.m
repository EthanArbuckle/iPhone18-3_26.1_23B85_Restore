@interface UIProgressiveBlurPresentationController
@end

@implementation UIProgressiveBlurPresentationController

void __81___UIProgressiveBlurPresentationController__animateWithCoordinator_isPresenting___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEffect:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [UIColor colorWithWhite:0.5 alpha:*(a1 + 48)];
  [v2 setBackgroundColor:v3];
}

@end