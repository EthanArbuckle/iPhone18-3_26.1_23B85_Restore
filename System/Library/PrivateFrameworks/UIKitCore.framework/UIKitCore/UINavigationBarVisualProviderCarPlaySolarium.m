@interface UINavigationBarVisualProviderCarPlaySolarium
@end

@implementation UINavigationBarVisualProviderCarPlaySolarium

uint64_t __102___UINavigationBarVisualProviderCarPlaySolarium__updateContentForTopItem_backItem_animated_direction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationBar];
  [v2 layoutIfNeeded];

  [*(a1 + 40) setAlpha:0.0];
  [*(a1 + 48) setAlpha:0.0];
  v3 = *(a1 + 56);

  return [v3 setAlpha:1.0];
}

uint64_t __102___UINavigationBarVisualProviderCarPlaySolarium__updateContentForTopItem_backItem_animated_direction___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  [v2 setHidden:0];

  v3 = [*(a1 + 32) navigationBar];
  [v3 removeLayoutGuide:*(a1 + 40)];

  v4 = *(a1 + 48);

  return [v4 removeFromSuperview];
}

@end