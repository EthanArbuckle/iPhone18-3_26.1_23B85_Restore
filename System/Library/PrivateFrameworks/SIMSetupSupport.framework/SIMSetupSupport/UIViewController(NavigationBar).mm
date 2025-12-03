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
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [v6 setBackgroundColor:systemBackgroundColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [v6 setShadowColor:clearColor];

    navigationItem = [self navigationItem];
    [navigationItem setStandardAppearance:v6];

    navigationItem2 = [self navigationItem];
    [navigationItem2 setScrollEdgeAppearance:v6];
  }
}

@end