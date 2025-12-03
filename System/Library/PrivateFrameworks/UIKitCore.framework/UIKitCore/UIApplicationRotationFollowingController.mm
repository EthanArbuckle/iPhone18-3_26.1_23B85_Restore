@interface UIApplicationRotationFollowingController
- (BOOL)shouldAutorotate;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (UIApplicationRotationFollowingController)initWithNibName:(id)name bundle:(id)bundle;
- (id)__autorotationSanityCheckObjectFromSource:(id)source selector:(SEL)selector;
- (id)_topMostWindow;
- (int64_t)_preferredInterfaceOrientationGivenCurrentOrientation:(int64_t)orientation;
- (unint64_t)supportedInterfaceOrientations;
- (void)window:(id)window setupWithInterfaceOrientation:(int64_t)orientation;
@end

@implementation UIApplicationRotationFollowingController

- (unint64_t)supportedInterfaceOrientations
{
  _topMostWindow = [(UIApplicationRotationFollowingController *)self _topMostWindow];
  v4 = [(UIViewController *)self _safePrimaryViewControllerForAutorotationBelowWindow:_topMostWindow];
  _overrideInterfaceOrientationMechanics = [v4 _overrideInterfaceOrientationMechanics];
  if (_overrideInterfaceOrientationMechanics)
  {
    v6 = 1 << _overrideInterfaceOrientationMechanics;
LABEL_13:
    v7 = v6;
    goto LABEL_14;
  }

  if (![v4 shouldAutorotate] || (v7 = objc_msgSend(v4, "__supportedInterfaceOrientations")) == 0)
  {
    if (([UIApp isFrontBoard] & 1) != 0 || (objc_msgSend(_topMostWindow, "windowScene"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) == 0))
    {
      _frontMostAppOrientation = [UIApp _frontMostAppOrientation];
    }

    else
    {
      windowScene = [_topMostWindow windowScene];
      _frontMostAppOrientation = [windowScene _interfaceOrientation];
    }

    if (_frontMostAppOrientation <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = _frontMostAppOrientation;
    }

    v6 = 1 << v12;
    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

- (id)_topMostWindow
{
  _window = [(UIViewController *)self _window];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _topMostWindow = [_window _topMostWindow];
  }

  else
  {
    _topMostWindow = 0;
  }

  return _topMostWindow;
}

- (BOOL)shouldAutorotate
{
  _window = [(UIViewController *)self _window];
  if ([_window _isHostedInAnotherProcess])
  {
    _window2 = [(UIViewController *)self _window];
    _isTextEffectsWindowHosting = [_window2 _isTextEffectsWindowHosting];
  }

  else
  {
    _isTextEffectsWindowHosting = 1;
  }

  return _isTextEffectsWindowHosting;
}

- (UIApplicationRotationFollowingController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = UIApplicationRotationFollowingController;
  v4 = [(UIViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(UIViewController *)v4 _setIgnoreAppSupportedOrientations:1];
  }

  return v5;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  orientationCopy = orientation;
  shouldAutorotate = [(UIApplicationRotationFollowingController *)self shouldAutorotate];
  if (shouldAutorotate)
  {
    LOBYTE(shouldAutorotate) = ([(UIViewController *)self __supportedInterfaceOrientations]& (1 << orientationCopy)) != 0;
  }

  return shouldAutorotate;
}

- (int64_t)_preferredInterfaceOrientationGivenCurrentOrientation:(int64_t)orientation
{
  _topMostWindow = [(UIApplicationRotationFollowingController *)self _topMostWindow];
  v6 = [(UIViewController *)self _safeWindowForAutorotationBelowWindow:_topMostWindow];
  rootViewController = [v6 rootViewController];
  v8 = [rootViewController _safeViewControllerForSupportedInterfaceOrientationsWithDismissCheck:1];

  if (!v8)
  {
    uIApplicationRotationFollowingController = [(UIViewController *)&v16 _preferredInterfaceOrientationGivenCurrentOrientation:orientation, self, UIApplicationRotationFollowingController, v17.receiver, v17.super_class];
LABEL_10:
    v11 = uIApplicationRotationFollowingController;
    goto LABEL_11;
  }

  _window = [(UIViewController *)self _window];
  _isTextEffectsWindowHosting = [_window _isTextEffectsWindowHosting];

  if ((_isTextEffectsWindowHosting & 1) != 0 || (v11 = [v8 _overrideInterfaceOrientationMechanics]) == 0)
  {
    if (([v8 shouldAutorotate] & 1) != 0 || (-[UIViewController _window](self, "_window"), v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, (isKindOfClass & 1) == 0))
    {
      uIApplicationRotationFollowingController = [v8 _preferredInterfaceOrientationGivenCurrentOrientation:orientation];
    }

    else
    {
      uIApplicationRotationFollowingController = [(UIViewController *)&v17 _preferredInterfaceOrientationGivenCurrentOrientation:orientation, v16.receiver, v16.super_class, self, UIApplicationRotationFollowingController];
    }

    goto LABEL_10;
  }

LABEL_11:

  return v11;
}

- (void)window:(id)window setupWithInterfaceOrientation:(int64_t)orientation
{
  windowCopy = window;
  v17.receiver = self;
  v17.super_class = UIApplicationRotationFollowingController;
  [(UIViewController *)&v17 window:windowCopy setupWithInterfaceOrientation:orientation];
  if ([(UIApplicationRotationFollowingController *)self sizesWindowToScene])
  {
    windowScene = [windowCopy windowScene];
    [windowScene _referenceBounds];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    windowScene = [windowCopy screen];
    fixedCoordinateSpace = [windowScene fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    v9 = v13;
    v11 = v14;
  }

  if ((orientation - 3) <= 1)
  {
    _transformLayerRotationsAreEnabled = [objc_opt_class() _transformLayerRotationsAreEnabled];
    if (_transformLayerRotationsAreEnabled)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }

    if (_transformLayerRotationsAreEnabled)
    {
      v9 = v11;
    }

    v11 = v16;
  }

  [windowCopy setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v9, v11}];
}

- (id)__autorotationSanityCheckObjectFromSource:(id)source selector:(SEL)selector
{
  sourceCopy = source;
  v7 = NSStringFromSelector(selector);
  NSLog(&cfstr_RotationErrorR.isa, sourceCopy, v7, self);

  return 0;
}

@end