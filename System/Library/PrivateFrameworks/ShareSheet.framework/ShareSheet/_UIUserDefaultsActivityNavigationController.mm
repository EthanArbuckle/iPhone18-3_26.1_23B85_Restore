@interface _UIUserDefaultsActivityNavigationController
- (BOOL)_shouldUseContentOverlayInsetsAsStatusBarUnderlapHeight;
- (BOOL)_viewControllerUnderlapsStatusBar;
- (CGSize)preferredContentSize;
- (double)_statusBarHeightAdjustmentForCurrentOrientation;
- (void)setPreferredContentSize:(CGSize)size;
@end

@implementation _UIUserDefaultsActivityNavigationController

- (CGSize)preferredContentSize
{
  topViewController = [(_UIUserDefaultsActivityNavigationController *)self topViewController];
  [topViewController preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  topViewController = [(_UIUserDefaultsActivityNavigationController *)self topViewController];
  [topViewController setPreferredContentSize:{width, height}];
}

- (BOOL)_shouldUseContentOverlayInsetsAsStatusBarUnderlapHeight
{
  viewIfLoaded = [(_UIUserDefaultsActivityNavigationController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  rootViewController = [window rootViewController];

  v7 = 0;
  if (rootViewController)
  {
    if ([rootViewController _providesCustomBasePresentationInsets])
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