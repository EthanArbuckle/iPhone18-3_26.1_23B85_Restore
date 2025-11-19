@interface _VUITVAppNavigationController_iOS
- (id)_accessibilityButtonBackgroundDefaultTintColor;
- (int64_t)preferredStatusBarStyle;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3;
- (void)didPresentTraitsOverridingViewController;
- (void)didShowViewController:(id)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)willPresentTraitsOverridingViewController;
@end

@implementation _VUITVAppNavigationController_iOS

- (int64_t)preferredStatusBarStyle
{
  v2 = [(_VUITVAppNavigationController_iOS *)self topViewController];
  v3 = [v2 preferredStatusBarStyle];

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _VUITVAppNavigationController_iOS;
  [(_VUITVAppNavigationController_iOS *)&v4 viewDidLoad];
  v3 = [(_VUITVAppNavigationController_iOS *)self navigationBar];
  [v3 setPrefersLargeTitles:1];
}

- (void)willPresentTraitsOverridingViewController
{
  [(_VUITVAppNavigationController_iOS *)self setShouldPreventContentFromShiftingVertically:1];
  v4 = [(_VUITVAppNavigationController_iOS *)self navigationBar];
  -[_VUITVAppNavigationController_iOS setOriginalValueForNavigationBarForceFullHeightInLandscape:](self, "setOriginalValueForNavigationBarForceFullHeightInLandscape:", [v4 forceFullHeightInLandscape]);
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  if (([v3 statusBarOrientation] - 1) <= 1)
  {
    [v4 setForceFullHeightInLandscape:1];
  }

  if (([v3 isStatusBarHidden] & 1) == 0)
  {
    [(_VUITVAppNavigationController_iOS *)self setShouldFakeStatusBarVisible:1];
  }
}

- (void)didPresentTraitsOverridingViewController
{
  v3 = [(_VUITVAppNavigationController_iOS *)self navigationBar];
  [v3 setForceFullHeightInLandscape:{-[_VUITVAppNavigationController_iOS originalValueForNavigationBarForceFullHeightInLandscape](self, "originalValueForNavigationBarForceFullHeightInLandscape")}];

  [(_VUITVAppNavigationController_iOS *)self setShouldPreventContentFromShiftingVertically:0];
  [(_VUITVAppNavigationController_iOS *)self setShouldFakeStatusBarVisible:0];

  [(_VUITVAppNavigationController_iOS *)self setOriginalValueForNavigationBarForceFullHeightInLandscape:0];
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = _VUITVAppNavigationController_iOS;
  [(_VUITVAppNavigationController_iOS *)&v6 didShowViewController:a3 animated:a4];
  v5 = [(_VUITVAppNavigationController_iOS *)self navigationBar];
  [v5 setAccessibilityIdentifier:@"UIA.TV.NavigationBar"];

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

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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