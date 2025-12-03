@interface UIApplicationRotationFollowingWindow
- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (BOOL)isInterfaceAutorotationDisabled;
- (UIApplicationRotationFollowingWindow)init;
- (UIApplicationRotationFollowingWindow)initWithWindowScene:(id)scene;
- (id)__autorotationSanityCheckObjectFromSource:(id)source selector:(SEL)selector;
- (id)_initWithFrame:(CGRect)frame attached:(BOOL)attached;
- (id)_initWithFrame:(CGRect)frame debugName:(id)name attached:(BOOL)attached;
- (id)_initWithFrame:(CGRect)frame debugName:(id)name displayConfiguration:(id)configuration;
- (id)_initWithFrame:(CGRect)frame debugName:(id)name scene:(id)scene attached:(BOOL)attached;
- (id)_initWithFrame:(CGRect)frame debugName:(id)name windowScene:(id)scene;
- (id)_topMostWindow;
- (void)_commonApplicationRotationFollowingWindowInit;
- (void)applicationWindow:(id)window didRotateWithOrientation:(int64_t)orientation duration:(double)duration;
- (void)setPriorityLevel:(int64_t)level;
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

  rootViewController = [(UIWindow *)self rootViewController];
  _topMostWindow = [(UIApplicationRotationFollowingWindow *)self _topMostWindow];
  v6 = [rootViewController _safeWindowForAutorotationBelowWindow:_topMostWindow];
  isInterfaceAutorotationDisabled = [v6 isInterfaceAutorotationDisabled];

  return isInterfaceAutorotationDisabled;
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

- (id)_initWithFrame:(CGRect)frame attached:(BOOL)attached
{
  v7.receiver = self;
  v7.super_class = UIApplicationRotationFollowingWindow;
  v4 = [(UIWindow *)&v7 _initWithFrame:attached attached:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [v4 _commonApplicationRotationFollowingWindowInit];
  }

  return v5;
}

- (id)_initWithFrame:(CGRect)frame debugName:(id)name attached:(BOOL)attached
{
  v8.receiver = self;
  v8.super_class = UIApplicationRotationFollowingWindow;
  v5 = [(UIWindow *)&v8 _initWithFrame:name debugName:attached attached:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [v5 _commonApplicationRotationFollowingWindowInit];
  }

  return v6;
}

- (id)_initWithFrame:(CGRect)frame debugName:(id)name scene:(id)scene attached:(BOOL)attached
{
  v9.receiver = self;
  v9.super_class = UIApplicationRotationFollowingWindow;
  v6 = [(UIWindow *)&v9 _initWithFrame:name debugName:scene scene:attached attached:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = v6;
  if (v6)
  {
    [v6 _commonApplicationRotationFollowingWindowInit];
  }

  return v7;
}

- (id)_initWithFrame:(CGRect)frame debugName:(id)name displayConfiguration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = UIApplicationRotationFollowingWindow;
  v5 = [(UIWindow *)&v8 _initWithFrame:name debugName:configuration displayConfiguration:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [v5 _commonApplicationRotationFollowingWindowInit];
  }

  return v6;
}

- (id)_initWithFrame:(CGRect)frame debugName:(id)name windowScene:(id)scene
{
  v8.receiver = self;
  v8.super_class = UIApplicationRotationFollowingWindow;
  v5 = [(UIWindow *)&v8 _initWithFrame:name debugName:scene windowScene:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [v5 _commonApplicationRotationFollowingWindowInit];
  }

  return v6;
}

- (UIApplicationRotationFollowingWindow)initWithWindowScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = UIApplicationRotationFollowingWindow;
  v3 = [(UIWindow *)&v6 initWithWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    [(UIApplicationRotationFollowingWindow *)v3 _commonApplicationRotationFollowingWindowInit];
  }

  return v4;
}

- (void)setPriorityLevel:(int64_t)level
{
  v16 = *MEMORY[0x1E69E9840];
  self->_priorityLevel = level;
  selfCopy = self;
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

      if (*(*(&v11 + 1) + 8 * v9) == selfCopy)
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
  InsertWindow(selfCopy);
}

- (void)applicationWindow:(id)window didRotateWithOrientation:(int64_t)orientation duration:(double)duration
{
  windowCopy = window;
  rootViewController = [(UIWindow *)self rootViewController];

  if (!rootViewController || [(UIWindow *)self _isHostedInAnotherProcess])
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

    screen = [(UIWindow *)self screen];

    if (screen != windowCopy)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  windowScene = [(UIWindow *)self windowScene];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    windowScene2 = [windowCopy windowScene];
    windowScene3 = [(UIWindow *)self windowScene];

    if (windowScene2 != windowScene3)
    {
      goto LABEL_3;
    }
  }

  screen2 = [windowCopy screen];
  screen3 = [(UIWindow *)self screen];

  if (screen2 == screen3)
  {
LABEL_14:
    if ([(UIApplicationRotationFollowingWindow *)self _shouldAutorotateToInterfaceOrientation:orientation])
    {
      rootViewController2 = [(UIWindow *)self rootViewController];
      [(UIWindow *)self _setRotatableClient:rootViewController2 toOrientation:orientation updateStatusBar:0 duration:0 force:1 isRotating:duration];
    }
  }

LABEL_3:
}

- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  if (self->super._viewOrientation)
  {
    rootViewController = [(UIWindow *)self rootViewController];
    _topMostWindow = [(UIApplicationRotationFollowingWindow *)self _topMostWindow];
    v7 = [rootViewController _safeWindowForAutorotationBelowWindow:_topMostWindow];

    rootViewController2 = [v7 rootViewController];
    v9 = [rootViewController2 _safeViewControllerForRotationWithDismissCheck:1];

    if (v9)
    {
      if (orientation && [v9 _overrideInterfaceOrientationMechanics] == orientation)
      {
        v10 = 1;
        goto LABEL_14;
      }

      v16 = 0;
      v11 = [v7 _shouldAutorotateToInterfaceOrientation:orientation checkForDismissal:1 isRotationDisabled:&v16];
      _existingView = [v9 _existingView];
      _window = [_existingView _window];

      v10 = [_window interfaceOrientation] == orientation;
      if ((v16 & 1) == 0)
      {
        if ((v11 & 1) != 0 || [v9 __supportedInterfaceOrientations])
        {
          v10 = v11;
        }

        goto LABEL_14;
      }

      if (_window)
      {
LABEL_14:

        return v10;
      }
    }

    v15.receiver = self;
    v15.super_class = UIApplicationRotationFollowingWindow;
    v10 = [(UIWindow *)&v15 _shouldAutorotateToInterfaceOrientation:orientation];
    goto LABEL_14;
  }

  return 1;
}

- (id)__autorotationSanityCheckObjectFromSource:(id)source selector:(SEL)selector
{
  sourceCopy = source;
  v7 = NSStringFromSelector(selector);
  NSLog(&cfstr_RotationErrorR_0.isa, sourceCopy, v7, self);

  return 0;
}

@end