@interface UIEditMenuOverlayUIClientPresentation
@end

@implementation UIEditMenuOverlayUIClientPresentation

void __87___UIEditMenuOverlayUIClientPresentation_preparedMenuWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 menuManager];
  [v4 setDisplayedMenu:v5];

  (*(*(a1 + 40) + 16))();
}

void __63___UIEditMenuOverlayUIClientPresentation_didTransitionFrom_to___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentAnimator];
  [v1 runAnimations];
}

void __63___UIEditMenuOverlayUIClientPresentation_didTransitionFrom_to___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) dismissAnimator];
  [v1 runAnimations];
}

@end