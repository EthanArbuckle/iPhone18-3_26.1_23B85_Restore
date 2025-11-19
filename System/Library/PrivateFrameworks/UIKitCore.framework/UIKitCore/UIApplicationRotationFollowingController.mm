@interface UIApplicationRotationFollowingController
- (BOOL)shouldAutorotate;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (UIApplicationRotationFollowingController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)__autorotationSanityCheckObjectFromSource:(id)a3 selector:(SEL)a4;
- (id)_topMostWindow;
- (int64_t)_preferredInterfaceOrientationGivenCurrentOrientation:(int64_t)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)window:(id)a3 setupWithInterfaceOrientation:(int64_t)a4;
@end

@implementation UIApplicationRotationFollowingController

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(UIApplicationRotationFollowingController *)self _topMostWindow];
  v4 = [(UIViewController *)self _safePrimaryViewControllerForAutorotationBelowWindow:v3];
  v5 = [v4 _overrideInterfaceOrientationMechanics];
  if (v5)
  {
    v6 = 1 << v5;
LABEL_13:
    v7 = v6;
    goto LABEL_14;
  }

  if (![v4 shouldAutorotate] || (v7 = objc_msgSend(v4, "__supportedInterfaceOrientations")) == 0)
  {
    if (([UIApp isFrontBoard] & 1) != 0 || (objc_msgSend(v3, "windowScene"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) == 0))
    {
      v11 = [UIApp _frontMostAppOrientation];
    }

    else
    {
      v10 = [v3 windowScene];
      v11 = [v10 _interfaceOrientation];
    }

    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v6 = 1 << v12;
    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

- (id)_topMostWindow
{
  v2 = [(UIViewController *)self _window];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _topMostWindow];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldAutorotate
{
  v3 = [(UIViewController *)self _window];
  if ([v3 _isHostedInAnotherProcess])
  {
    v4 = [(UIViewController *)self _window];
    v5 = [v4 _isTextEffectsWindowHosting];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (UIApplicationRotationFollowingController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIApplicationRotationFollowingController;
  v4 = [(UIViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(UIViewController *)v4 _setIgnoreAppSupportedOrientations:1];
  }

  return v5;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v3 = a3;
  v5 = [(UIApplicationRotationFollowingController *)self shouldAutorotate];
  if (v5)
  {
    LOBYTE(v5) = ([(UIViewController *)self __supportedInterfaceOrientations]& (1 << v3)) != 0;
  }

  return v5;
}

- (int64_t)_preferredInterfaceOrientationGivenCurrentOrientation:(int64_t)a3
{
  v5 = [(UIApplicationRotationFollowingController *)self _topMostWindow];
  v6 = [(UIViewController *)self _safeWindowForAutorotationBelowWindow:v5];
  v7 = [v6 rootViewController];
  v8 = [v7 _safeViewControllerForSupportedInterfaceOrientationsWithDismissCheck:1];

  if (!v8)
  {
    v14 = [(UIViewController *)&v16 _preferredInterfaceOrientationGivenCurrentOrientation:a3, self, UIApplicationRotationFollowingController, v17.receiver, v17.super_class];
LABEL_10:
    v11 = v14;
    goto LABEL_11;
  }

  v9 = [(UIViewController *)self _window];
  v10 = [v9 _isTextEffectsWindowHosting];

  if ((v10 & 1) != 0 || (v11 = [v8 _overrideInterfaceOrientationMechanics]) == 0)
  {
    if (([v8 shouldAutorotate] & 1) != 0 || (-[UIViewController _window](self, "_window"), v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, (isKindOfClass & 1) == 0))
    {
      v14 = [v8 _preferredInterfaceOrientationGivenCurrentOrientation:a3];
    }

    else
    {
      v14 = [(UIViewController *)&v17 _preferredInterfaceOrientationGivenCurrentOrientation:a3, v16.receiver, v16.super_class, self, UIApplicationRotationFollowingController];
    }

    goto LABEL_10;
  }

LABEL_11:

  return v11;
}

- (void)window:(id)a3 setupWithInterfaceOrientation:(int64_t)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = UIApplicationRotationFollowingController;
  [(UIViewController *)&v17 window:v6 setupWithInterfaceOrientation:a4];
  if ([(UIApplicationRotationFollowingController *)self sizesWindowToScene])
  {
    v7 = [v6 windowScene];
    [v7 _referenceBounds];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v7 = [v6 screen];
    v12 = [v7 fixedCoordinateSpace];
    [v12 bounds];
    v9 = v13;
    v11 = v14;
  }

  if ((a4 - 3) <= 1)
  {
    v15 = [objc_opt_class() _transformLayerRotationsAreEnabled];
    if (v15)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }

    if (v15)
    {
      v9 = v11;
    }

    v11 = v16;
  }

  [v6 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v9, v11}];
}

- (id)__autorotationSanityCheckObjectFromSource:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = NSStringFromSelector(a4);
  NSLog(&cfstr_RotationErrorR.isa, v6, v7, self);

  return 0;
}

@end