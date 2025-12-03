@interface _VUITVAppNavigationController_iOS
- (id)_accessibilityButtonBackgroundDefaultTintColor;
- (int64_t)preferredStatusBarStyle;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets;
- (void)didPresentTraitsOverridingViewController;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)willPresentTraitsOverridingViewController;
@end

@implementation _VUITVAppNavigationController_iOS

- (int64_t)preferredStatusBarStyle
{
  topViewController = [(_VUITVAppNavigationController_iOS *)self topViewController];
  preferredStatusBarStyle = [topViewController preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _VUITVAppNavigationController_iOS;
  [(_VUITVAppNavigationController_iOS *)&v4 viewDidLoad];
  navigationBar = [(_VUITVAppNavigationController_iOS *)self navigationBar];
  [navigationBar setPrefersLargeTitles:1];
}

- (void)willPresentTraitsOverridingViewController
{
  [(_VUITVAppNavigationController_iOS *)self setShouldPreventContentFromShiftingVertically:1];
  navigationBar = [(_VUITVAppNavigationController_iOS *)self navigationBar];
  -[_VUITVAppNavigationController_iOS setOriginalValueForNavigationBarForceFullHeightInLandscape:](self, "setOriginalValueForNavigationBarForceFullHeightInLandscape:", [navigationBar forceFullHeightInLandscape]);
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if (([mEMORY[0x1E69DC668] statusBarOrientation] - 1) <= 1)
  {
    [navigationBar setForceFullHeightInLandscape:1];
  }

  if (([mEMORY[0x1E69DC668] isStatusBarHidden] & 1) == 0)
  {
    [(_VUITVAppNavigationController_iOS *)self setShouldFakeStatusBarVisible:1];
  }
}

- (void)didPresentTraitsOverridingViewController
{
  navigationBar = [(_VUITVAppNavigationController_iOS *)self navigationBar];
  [navigationBar setForceFullHeightInLandscape:{-[_VUITVAppNavigationController_iOS originalValueForNavigationBarForceFullHeightInLandscape](self, "originalValueForNavigationBarForceFullHeightInLandscape")}];

  [(_VUITVAppNavigationController_iOS *)self setShouldPreventContentFromShiftingVertically:0];
  [(_VUITVAppNavigationController_iOS *)self setShouldFakeStatusBarVisible:0];

  [(_VUITVAppNavigationController_iOS *)self setOriginalValueForNavigationBarForceFullHeightInLandscape:0];
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = _VUITVAppNavigationController_iOS;
  [(_VUITVAppNavigationController_iOS *)&v6 didShowViewController:controller animated:animated];
  navigationBar = [(_VUITVAppNavigationController_iOS *)self navigationBar];
  [navigationBar setAccessibilityIdentifier:@"UIA.TV.NavigationBar"];

  [(_VUITVAppNavigationController_iOS *)self setNeedsStatusBarAppearanceUpdate];
}

- (id)_accessibilityButtonBackgroundDefaultTintColor
{
  if (_accessibilityButtonBackgroundDefaultTintColor_onceToken != -1)
  {
    [_VUITVAppNavigationController_iOS _accessibilityButtonBackgroundDefaultTintColor];
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
  if ([(_VUITVAppNavigationController_iOS *)self shouldPreventContentFromShiftingVertically])
  {
    [(_VUITVAppNavigationController_iOS *)self _contentOverlayInsets];
    top = v8;
    bottom = v9;
  }

  v10.receiver = self;
  v10.super_class = _VUITVAppNavigationController_iOS;
  [(_VUITVAppNavigationController_iOS *)&v10 _setContentOverlayInsets:top, left, bottom, right];
}

@end