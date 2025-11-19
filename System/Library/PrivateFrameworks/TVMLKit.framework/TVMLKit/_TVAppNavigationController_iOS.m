@interface _TVAppNavigationController_iOS
- (id)_accessibilityButtonBackgroundDefaultTintColor;
- (int64_t)preferredStatusBarStyle;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3;
- (void)didPresentTraitsOverridingViewController;
- (void)didShowViewController:(id)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)willPresentTraitsOverridingViewController;
@end

@implementation _TVAppNavigationController_iOS

- (int64_t)preferredStatusBarStyle
{
  v2 = [(_TVAppNavigationController_iOS *)self topViewController];
  v3 = [v2 preferredStatusBarStyle];

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _TVAppNavigationController_iOS;
  [(_TVAppNavigationController_iOS *)&v4 viewDidLoad];
  v3 = [(_TVAppNavigationController_iOS *)self navigationBar];
  [v3 setPrefersLargeTitles:1];
}

- (void)willPresentTraitsOverridingViewController
{
  [(_TVAppNavigationController_iOS *)self setShouldPreventContentFromShiftingVertically:1];
  v4 = [(_TVAppNavigationController_iOS *)self navigationBar];
  -[_TVAppNavigationController_iOS setOriginalValueForNavigationBarForceFullHeightInLandscape:](self, "setOriginalValueForNavigationBarForceFullHeightInLandscape:", [v4 forceFullHeightInLandscape]);
  v3 = [MEMORY[0x277D75128] sharedApplication];
  if (([v3 statusBarOrientation] - 1) <= 1)
  {
    [v4 setForceFullHeightInLandscape:1];
  }

  if (([v3 isStatusBarHidden] & 1) == 0)
  {
    [(_TVAppNavigationController_iOS *)self setShouldFakeStatusBarVisible:1];
  }
}

- (void)didPresentTraitsOverridingViewController
{
  v3 = [(_TVAppNavigationController_iOS *)self navigationBar];
  [v3 setForceFullHeightInLandscape:{-[_TVAppNavigationController_iOS originalValueForNavigationBarForceFullHeightInLandscape](self, "originalValueForNavigationBarForceFullHeightInLandscape")}];

  [(_TVAppNavigationController_iOS *)self setShouldPreventContentFromShiftingVertically:0];
  [(_TVAppNavigationController_iOS *)self setShouldFakeStatusBarVisible:0];

  [(_TVAppNavigationController_iOS *)self setOriginalValueForNavigationBarForceFullHeightInLandscape:0];
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = _TVAppNavigationController_iOS;
  [(_TVAppNavigationController_iOS *)&v5 didShowViewController:a3 animated:a4];
  [(_TVAppNavigationController_iOS *)self setNeedsStatusBarAppearanceUpdate];
}

- (id)_accessibilityButtonBackgroundDefaultTintColor
{
  if (_accessibilityButtonBackgroundDefaultTintColor_onceToken != -1)
  {
    [_TVAppNavigationController_iOS _accessibilityButtonBackgroundDefaultTintColor];
  }

  v3 = _accessibilityButtonBackgroundDefaultTintColor_defaultTintColor;

  return v3;
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if ([(_TVAppNavigationController_iOS *)self shouldPreventContentFromShiftingVertically])
  {
    [(_TVAppNavigationController_iOS *)self _contentOverlayInsets];
    top = v8;
    bottom = v9;
  }

  v10.receiver = self;
  v10.super_class = _TVAppNavigationController_iOS;
  [(_TVAppNavigationController_iOS *)&v10 _setContentOverlayInsets:top, left, bottom, right];
}

@end