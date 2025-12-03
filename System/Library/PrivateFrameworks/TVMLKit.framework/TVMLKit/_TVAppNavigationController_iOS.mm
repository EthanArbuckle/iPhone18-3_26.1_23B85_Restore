@interface _TVAppNavigationController_iOS
- (id)_accessibilityButtonBackgroundDefaultTintColor;
- (int64_t)preferredStatusBarStyle;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets;
- (void)didPresentTraitsOverridingViewController;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)willPresentTraitsOverridingViewController;
@end

@implementation _TVAppNavigationController_iOS

- (int64_t)preferredStatusBarStyle
{
  topViewController = [(_TVAppNavigationController_iOS *)self topViewController];
  preferredStatusBarStyle = [topViewController preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _TVAppNavigationController_iOS;
  [(_TVAppNavigationController_iOS *)&v4 viewDidLoad];
  navigationBar = [(_TVAppNavigationController_iOS *)self navigationBar];
  [navigationBar setPrefersLargeTitles:1];
}

- (void)willPresentTraitsOverridingViewController
{
  [(_TVAppNavigationController_iOS *)self setShouldPreventContentFromShiftingVertically:1];
  navigationBar = [(_TVAppNavigationController_iOS *)self navigationBar];
  -[_TVAppNavigationController_iOS setOriginalValueForNavigationBarForceFullHeightInLandscape:](self, "setOriginalValueForNavigationBarForceFullHeightInLandscape:", [navigationBar forceFullHeightInLandscape]);
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  if (([mEMORY[0x277D75128] statusBarOrientation] - 1) <= 1)
  {
    [navigationBar setForceFullHeightInLandscape:1];
  }

  if (([mEMORY[0x277D75128] isStatusBarHidden] & 1) == 0)
  {
    [(_TVAppNavigationController_iOS *)self setShouldFakeStatusBarVisible:1];
  }
}

- (void)didPresentTraitsOverridingViewController
{
  navigationBar = [(_TVAppNavigationController_iOS *)self navigationBar];
  [navigationBar setForceFullHeightInLandscape:{-[_TVAppNavigationController_iOS originalValueForNavigationBarForceFullHeightInLandscape](self, "originalValueForNavigationBarForceFullHeightInLandscape")}];

  [(_TVAppNavigationController_iOS *)self setShouldPreventContentFromShiftingVertically:0];
  [(_TVAppNavigationController_iOS *)self setShouldFakeStatusBarVisible:0];

  [(_TVAppNavigationController_iOS *)self setOriginalValueForNavigationBarForceFullHeightInLandscape:0];
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = _TVAppNavigationController_iOS;
  [(_TVAppNavigationController_iOS *)&v5 didShowViewController:controller animated:animated];
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

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
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