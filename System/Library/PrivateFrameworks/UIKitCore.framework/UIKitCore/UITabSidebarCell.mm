@interface UITabSidebarCell
@end

@implementation UITabSidebarCell

void __51___UITabSidebarCell__updateBackgroundConfiguration__block_invoke(uint64_t a1)
{
  v2 = +[UIBackgroundConfiguration clearConfiguration];
  [v2 setCornerRadius:1.79769313e308];
  [*(a1 + 32) setBackgroundConfiguration:v2];
}

@end