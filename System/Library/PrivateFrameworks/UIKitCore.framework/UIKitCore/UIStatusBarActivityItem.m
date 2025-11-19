@interface UIStatusBarActivityItem
@end

@implementation UIStatusBarActivityItem

void __80___UIStatusBarActivityItem_Split_additionAnimationForDisplayItemWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v6 = a4;
  v5 = [v4 activityView];
  [v5 startAnimating];

  v6[2](v6, 1);
}

void __79___UIStatusBarActivityItem_Split_removalAnimationForDisplayItemWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = a4;
  v6 = [v4 activityView];
  [v6 stopAnimatingWithCompletionHandler:v5];
}

@end