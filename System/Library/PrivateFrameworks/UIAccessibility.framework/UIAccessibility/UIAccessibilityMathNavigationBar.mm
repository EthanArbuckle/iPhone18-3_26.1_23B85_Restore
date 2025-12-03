@interface UIAccessibilityMathNavigationBar
- (BOOL)accessibilityPerformEscape;
- (UIAccessibilityMathNavigationBar)initWithFrame:(CGRect)frame;
- (id)_popNavigationItemWithTransition:(int)transition;
- (void)_pushNavigationItem:(id)item transition:(int)transition;
@end

@implementation UIAccessibilityMathNavigationBar

- (UIAccessibilityMathNavigationBar)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = UIAccessibilityMathNavigationBar;
  v3 = [(UIAccessibilityMathNavigationBar *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIAccessibilityMathNavigationBar *)v3 _setHidesShadow:1];
    v11.width = 1.0;
    v11.height = 1.0;
    UIGraphicsBeginImageContext(v11);
    v5 = UIGraphicsGetImageFromCurrentImageContext();
    v6 = [v5 resizableImageWithCapInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

    UIGraphicsEndImageContext();
    [(UIAccessibilityMathNavigationBar *)v4 setBackgroundImage:v6 forBarMetrics:0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIAccessibilityMathNavigationBar *)v4 setBackgroundColor:whiteColor];

    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIAccessibilityMathNavigationBar *)v4 setTintColor:whiteColor2];

    [(UIAccessibilityMathNavigationBar *)v4 setTranslucent:1];
  }

  return v4;
}

- (BOOL)accessibilityPerformEscape
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  accessibilityPresentingViewController = [mEMORY[0x1E69DC668] accessibilityPresentingViewController];

  presentedViewController = [accessibilityPresentingViewController presentedViewController];

  if (!presentedViewController)
  {
    _AXAssert();
  }

  presentedViewController2 = [accessibilityPresentingViewController presentedViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = presentedViewController2;
    _AXAssert();
    goto LABEL_7;
  }

  viewControllers = [presentedViewController2 viewControllers];
  v7 = [viewControllers count];

  if (v7 == 1)
  {
LABEL_7:
    [accessibilityPresentingViewController dismissViewControllerAnimated:1 completion:{0, v10}];
    goto LABEL_8;
  }

  v8 = [presentedViewController2 popViewControllerAnimated:1];
LABEL_8:

  return 1;
}

- (void)_pushNavigationItem:(id)item transition:(int)transition
{
  if (transition)
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  v5.receiver = self;
  v5.super_class = UIAccessibilityMathNavigationBar;
  [(UIAccessibilityMathNavigationBar *)&v5 _pushNavigationItem:item transition:v4];
}

- (id)_popNavigationItemWithTransition:(int)transition
{
  if (transition)
  {
    v3 = 6;
  }

  else
  {
    v3 = 0;
  }

  v6.receiver = self;
  v6.super_class = UIAccessibilityMathNavigationBar;
  v4 = [(UIAccessibilityMathNavigationBar *)&v6 _popNavigationItemWithTransition:v3];

  return v4;
}

@end