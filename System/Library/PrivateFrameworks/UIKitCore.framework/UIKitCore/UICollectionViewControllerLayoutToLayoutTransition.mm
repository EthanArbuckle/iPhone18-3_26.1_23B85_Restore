@interface UICollectionViewControllerLayoutToLayoutTransition
@end

@implementation UICollectionViewControllerLayoutToLayoutTransition

uint64_t __73___UICollectionViewControllerLayoutToLayoutTransition_animateTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionWasCancelled];
  [*(a1 + 32) completeTransition:v2 ^ 1u];
  return v2 ^ 1u;
}

void __73___UICollectionViewControllerLayoutToLayoutTransition_animateTransition___block_invoke_2(id *a1)
{
  v3 = [a1[4] collectionView];
  v2 = [a1[5] toLayout];
  [v3 _setCollectionViewLayout:v2 animated:objc_msgSend(a1[6] isInteractive:"isAnimated") completion:{objc_msgSend(a1[6], "isInteractive"), 0}];
}

@end