@interface _UIUserDefaultsActivityNavigationController
- (BOOL)_shouldUseContentOverlayInsetsAsStatusBarUnderlapHeight;
- (BOOL)_viewControllerUnderlapsStatusBar;
- (CGSize)preferredContentSize;
- (double)_statusBarHeightAdjustmentForCurrentOrientation;
- (void)setPreferredContentSize:(CGSize)a3;
@end

@implementation _UIUserDefaultsActivityNavigationController

- (CGSize)preferredContentSize
{
  v2 = [(_UIUserDefaultsActivityNavigationController *)self topViewController];
  [v2 preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(_UIUserDefaultsActivityNavigationController *)self topViewController];
  [v5 setPreferredContentSize:{width, height}];
}

- (BOOL)_shouldUseContentOverlayInsetsAsStatusBarUnderlapHeight
{
  v3 = [(_UIUserDefaultsActivityNavigationController *)self viewIfLoaded];
  v4 = [v3 window];
  v5 = [v4 rootViewController];

  v7 = 0;
  if (v5)
  {
    if ([v5 _providesCustomBasePresentationInsets])
    {
      [(_UIUserDefaultsActivityNavigationController *)self _contentOverlayInsets];
      if (v6 > 0.0)
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

- (double)_statusBarHeightAdjustmentForCurrentOrientation
{
  if ([(_UIUserDefaultsActivityNavigationController *)self _shouldUseContentOverlayInsetsAsStatusBarUnderlapHeight])
  {
    [(_UIUserDefaultsActivityNavigationController *)self _contentOverlayInsets];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = _UIUserDefaultsActivityNavigationController;
    [(_UIUserDefaultsActivityNavigationController *)&v4 _statusBarHeightAdjustmentForCurrentOrientation];
  }

  return result;
}

- (BOOL)_viewControllerUnderlapsStatusBar
{
  if ([(_UIUserDefaultsActivityNavigationController *)self _shouldUseContentOverlayInsetsAsStatusBarUnderlapHeight])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _UIUserDefaultsActivityNavigationController;
  return [(_UIUserDefaultsActivityNavigationController *)&v4 _viewControllerUnderlapsStatusBar];
}

@end