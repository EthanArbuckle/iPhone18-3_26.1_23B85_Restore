@interface UIApplicationRotationFollowingWindow
- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (BOOL)isInterfaceAutorotationDisabled;
- (UIApplicationRotationFollowingWindow)init;
- (UIApplicationRotationFollowingWindow)initWithWindowScene:(id)a3;
- (id)__autorotationSanityCheckObjectFromSource:(id)a3 selector:(SEL)a4;
- (id)_initWithFrame:(CGRect)a3 attached:(BOOL)a4;
- (id)_initWithFrame:(CGRect)a3 debugName:(id)a4 attached:(BOOL)a5;
- (id)_initWithFrame:(CGRect)a3 debugName:(id)a4 displayConfiguration:(id)a5;
- (id)_initWithFrame:(CGRect)a3 debugName:(id)a4 scene:(id)a5 attached:(BOOL)a6;
- (id)_initWithFrame:(CGRect)a3 debugName:(id)a4 windowScene:(id)a5;
- (id)_topMostWindow;
- (void)_commonApplicationRotationFollowingWindowInit;
- (void)applicationWindow:(id)a3 didRotateWithOrientation:(int64_t)a4 duration:(double)a5;
- (void)setPriorityLevel:(int64_t)a3;
@end

@implementation UIApplicationRotationFollowingWindow

- (BOOL)isInterfaceAutorotationDisabled
{
  v8.receiver = self;
  v8.super_class = UIApplicationRotationFollowingWindow;
  if ([(UIWindow *)&v8 isInterfaceAutorotationDisabled])
  {
    return 1;
  }

  v4 = [(UIWindow *)self rootViewController];
  v5 = [(UIApplicationRotationFollowingWindow *)self _topMostWindow];
  v6 = [v4 _safeWindowForAutorotationBelowWindow:v5];
  v3 = [v6 isInterfaceAutorotationDisabled];

  return v3;
}

- (void)_commonApplicationRotationFollowingWindowInit
{
  [(UIWindow *)self _setWindowControlsStatusBarOrientation:0];

  InsertWindow(self);
}

- (id)_topMostWindow
{
  if (!self->_limitToWindowLevel)
  {
    self = 0;
  }

  return self;
}

- (UIApplicationRotationFollowingWindow)init
{
  v5.receiver = self;
  v5.super_class = UIApplicationRotationFollowingWindow;
  v2 = [(UIWindow *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIApplicationRotationFollowingWindow *)v2 _commonApplicationRotationFollowingWindowInit];
  }

  return v3;
}

- (id)_initWithFrame:(CGRect)a3 attached:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = UIApplicationRotationFollowingWindow;
  v4 = [(UIWindow *)&v7 _initWithFrame:a4 attached:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [v4 _commonApplicationRotationFollowingWindowInit];
  }

  return v5;
}

- (id)_initWithFrame:(CGRect)a3 debugName:(id)a4 attached:(BOOL)a5
{
  v8.receiver = self;
  v8.super_class = UIApplicationRotationFollowingWindow;
  v5 = [(UIWindow *)&v8 _initWithFrame:a4 debugName:a5 attached:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [v5 _commonApplicationRotationFollowingWindowInit];
  }

  return v6;
}

- (id)_initWithFrame:(CGRect)a3 debugName:(id)a4 scene:(id)a5 attached:(BOOL)a6
{
  v9.receiver = self;
  v9.super_class = UIApplicationRotationFollowingWindow;
  v6 = [(UIWindow *)&v9 _initWithFrame:a4 debugName:a5 scene:a6 attached:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v6;
  if (v6)
  {
    [v6 _commonApplicationRotationFollowingWindowInit];
  }

  return v7;
}

- (id)_initWithFrame:(CGRect)a3 debugName:(id)a4 displayConfiguration:(id)a5
{
  v8.receiver = self;
  v8.super_class = UIApplicationRotationFollowingWindow;
  v5 = [(UIWindow *)&v8 _initWithFrame:a4 debugName:a5 displayConfiguration:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [v5 _commonApplicationRotationFollowingWindowInit];
  }

  return v6;
}

- (id)_initWithFrame:(CGRect)a3 debugName:(id)a4 windowScene:(id)a5
{
  v8.receiver = self;
  v8.super_class = UIApplicationRotationFollowingWindow;
  v5 = [(UIWindow *)&v8 _initWithFrame:a4 debugName:a5 windowScene:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [v5 _commonApplicationRotationFollowingWindowInit];
  }

  return v6;
}

- (UIApplicationRotationFollowingWindow)initWithWindowScene:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIApplicationRotationFollowingWindow;
  v3 = [(UIWindow *)&v6 initWithWindowScene:a3];
  v4 = v3;
  if (v3)
  {
    [(UIApplicationRotationFollowingWindow *)v3 _commonApplicationRotationFollowingWindowInit];
  }

  return v4;
}

- (void)setPriorityLevel:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  self->_priorityLevel = a3;
  v3 = self;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = GetRotationFollowingWindows();
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    v10 = v7;
    v7 += v6;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v4);
      }

      if (*(*(&v11 + 1) + 8 * v9) == v3)
      {
        break;
      }

      ++v10;
      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_13;
    }

    v4 = GetRotationFollowingWindows();
    [v4 removePointerAtIndex:{v10, v11}];
  }

LABEL_12:

LABEL_13:
  InsertWindow(v3);
}

- (void)applicationWindow:(id)a3 didRotateWithOrientation:(int64_t)a4 duration:(double)a5
{
  v16 = a3;
  v8 = [(UIWindow *)self rootViewController];

  if (!v8 || [(UIWindow *)self _isHostedInAnotherProcess])
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_3;
    }

    v10 = [(UIWindow *)self screen];

    if (v10 != v16)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  v9 = [(UIWindow *)self windowScene];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v11 = [v16 windowScene];
    v12 = [(UIWindow *)self windowScene];

    if (v11 != v12)
    {
      goto LABEL_3;
    }
  }

  v13 = [v16 screen];
  v14 = [(UIWindow *)self screen];

  if (v13 == v14)
  {
LABEL_14:
    if ([(UIApplicationRotationFollowingWindow *)self _shouldAutorotateToInterfaceOrientation:a4])
    {
      v15 = [(UIWindow *)self rootViewController];
      [(UIWindow *)self _setRotatableClient:v15 toOrientation:a4 updateStatusBar:0 duration:0 force:1 isRotating:a5];
    }
  }

LABEL_3:
}

- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  if (self->super._viewOrientation)
  {
    v5 = [(UIWindow *)self rootViewController];
    v6 = [(UIApplicationRotationFollowingWindow *)self _topMostWindow];
    v7 = [v5 _safeWindowForAutorotationBelowWindow:v6];

    v8 = [v7 rootViewController];
    v9 = [v8 _safeViewControllerForRotationWithDismissCheck:1];

    if (v9)
    {
      if (a3 && [v9 _overrideInterfaceOrientationMechanics] == a3)
      {
        v10 = 1;
        goto LABEL_14;
      }

      v16 = 0;
      v11 = [v7 _shouldAutorotateToInterfaceOrientation:a3 checkForDismissal:1 isRotationDisabled:&v16];
      v12 = [v9 _existingView];
      v13 = [v12 _window];

      v10 = [v13 interfaceOrientation] == a3;
      if ((v16 & 1) == 0)
      {
        if ((v11 & 1) != 0 || [v9 __supportedInterfaceOrientations])
        {
          v10 = v11;
        }

        goto LABEL_14;
      }

      if (v13)
      {
LABEL_14:

        return v10;
      }
    }

    v15.receiver = self;
    v15.super_class = UIApplicationRotationFollowingWindow;
    v10 = [(UIWindow *)&v15 _shouldAutorotateToInterfaceOrientation:a3];
    goto LABEL_14;
  }

  return 1;
}

- (id)__autorotationSanityCheckObjectFromSource:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = NSStringFromSelector(a4);
  NSLog(&cfstr_RotationErrorR_0.isa, v6, v7, self);

  return 0;
}

@end