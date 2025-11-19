@interface UIViewController(NavigationBar)
- (void)setNavigationBarColor;
@end

@implementation UIViewController(NavigationBar)

- (void)setNavigationBarColor
{
  if (!+[TSUtilities isSolariumEnabled])
  {
    v6 = objc_opt_new();
    [v6 configureWithDefaultBackground];
    v2 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v6 setBackgroundColor:v2];

    v3 = [MEMORY[0x277D75348] clearColor];
    [v6 setShadowColor:v3];

    v4 = [a1 navigationItem];
    [v4 setStandardAppearance:v6];

    v5 = [a1 navigationItem];
    [v5 setScrollEdgeAppearance:v6];
  }
}

@end