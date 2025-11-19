@interface UIViewControllerTransitionConductor
@end

@implementation UIViewControllerTransitionConductor

void __63___UIViewControllerTransitionConductor__startCustomTransition___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 16));
  [WeakRetained transitionConductor:*(a1 + 32) didEndCustomTransitionWithContext:v6 didComplete:a3];
}

void __63___UIViewControllerTransitionConductor__startCustomTransition___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained transitionConductor:*(a1 + 32) interactiveTransitionDidUpdateProgress:a2 finish:a3 transitionCompleted:v10 transitionContext:a5];

  if (a2 && ([v10 isInterruptible] & 1) == 0)
  {
    [*(a1 + 32) setCustomNavigationTransitionDuration:0.0];
    [*(a1 + 32) setInteractiveTransition:0];
  }
}

void __63___UIViewControllerTransitionConductor__startCustomTransition___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained transitionConductor:*(a1 + 32) beginPinningInputViewsForTransitionFromViewController:*(a1 + 40) toViewController:*(a1 + 48) forTransitionType:*(a1 + 56)];
}

@end