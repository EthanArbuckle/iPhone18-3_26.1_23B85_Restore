@interface UITextEffectsWindow
+ (id)_sceneForScreen:(id)screen;
+ (id)_sharedTextEffectsWindowforWindowScene:(id)scene allowHosted:(BOOL)hosted forViewService:(BOOL)service matchesStatusBarOrientationOnAccess:(BOOL)access shouldCreateIfNecessary:(BOOL)necessary;
+ (id)activeTextEffectsWindowForScreen:(id)screen;
+ (id)activeTextEffectsWindowForWindowScene:(id)scene forViewService:(BOOL)service;
+ (id)sharedTextEffectsWindowForScreen:(id)screen;
+ (id)sharedTextEffectsWindowForWindowScene:(id)scene forViewService:(BOOL)service;
+ (void)lowerTextEffectsWindowsForHideNotificationCenter;
+ (void)raiseTextEffectsWindowsForShowNotificationCenter;
- (BOOL)_isFullscreen;
- (BOOL)_matchingOptions:(id)options;
- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (BOOL)_shouldResizeWithScene;
- (BOOL)_shouldTextEffectsWindowBeHostedForView:(id)view;
- (BOOL)isTrackingKeyboard;
- (CGPoint)_forHostedProcessConvertPoint:(CGPoint)point forWindow:(id)window wasFromWindow:(BOOL)fromWindow;
- (CGPoint)convertPoint:(CGPoint)point fromView:(id)view;
- (CGPoint)convertPoint:(CGPoint)point fromWindow:(id)window;
- (CGPoint)convertPoint:(CGPoint)point toView:(id)view;
- (CGPoint)convertPoint:(CGPoint)point toWindow:(id)window;
- (CGPoint)hostedViewOrigin;
- (CGPoint)hostedWindowOffset;
- (CGRect)_forHostedProcessConvertRect:(CGRect)rect forWindow:(id)window wasFromWindow:(BOOL)fromWindow;
- (CGRect)_sceneBounds;
- (CGRect)_sceneReferenceBounds;
- (CGRect)actualSceneBounds;
- (CGRect)actualSceneBoundsForLandscape:(BOOL)landscape;
- (CGRect)actualSceneFrame;
- (CGRect)actualSceneFrameForOrientation:(int64_t)orientation;
- (CGRect)convertRect:(CGRect)rect fromView:(id)view;
- (CGRect)convertRect:(CGRect)rect fromWindow:(id)window;
- (CGRect)convertRect:(CGRect)rect toView:(id)view;
- (CGRect)convertRect:(CGRect)rect toWindow:(id)window;
- (CGRect)hostedFrame;
- (CGRect)hostedViewReference;
- (CGSize)hostedViewSize;
- (CGSize)keyboardScreenReferenceSize;
- (UIEdgeInsets)hostedSafeInsets;
- (UITextEffectsWindow)initWithFrame:(CGRect)frame;
- (UIWindowScene)_intendedScene;
- (double)slideOverWindowVerticalOffset;
- (id)_initBasicWithScene:(id)scene options:(id)options;
- (id)_initWithFrame:(CGRect)frame attached:(BOOL)attached;
- (id)_initWithFrame:(CGRect)frame debugName:(id)name windowScene:(id)scene;
- (id)_initWithScene:(id)scene options:(id)options;
- (id)rootViewController;
- (int64_t)actualSceneOrientation;
- (int64_t)interfaceOrientation;
- (void)_commonInitWithOptions:(id)options;
- (void)_commonTextEffectsInit;
- (void)_configureContextOptions:(id)options;
- (void)_didRemoveSubview:(id)subview;
- (void)_didSnapshot;
- (void)_matchDeviceOrientation;
- (void)_restoreWindowLevel;
- (void)_sceneBoundsDidChange;
- (void)_setWindowLevel:(double)level;
- (void)_sortSubviewsOfView:(id)view;
- (void)_updateRootViewConstraintsForInterfaceOrientationAndStatusBarHeight;
- (void)_updateTransformLayer;
- (void)_willSnapshot;
- (void)addBottomPadding:(double)padding;
- (void)addSubview:(id)subview;
- (void)becomeKeyWindow;
- (void)dealloc;
- (void)delayHideWindow;
- (void)didAddSubview:(id)subview;
- (void)layoutSubviews;
- (void)layoutViewsForTrackedGuides;
- (void)resetTransform;
- (void)setFrame:(CGRect)frame;
- (void)setHostedSafeInsets:(UIEdgeInsets)insets;
- (void)setHostedViewOrigin:(CGPoint)origin;
- (void)updateEditingOverlayContainer;
- (void)updateForOrientation:(int64_t)orientation forceResetTransform:(BOOL)transform;
- (void)updateLastRemoteView:(BOOL)view forView:(id)forView inContainer:(id)container;
@end

@implementation UITextEffectsWindow

- (id)rootViewController
{
  v4.receiver = self;
  v4.super_class = UITextEffectsWindow;
  rootViewController = [(UIWindow *)&v4 rootViewController];

  return rootViewController;
}

- (int64_t)interfaceOrientation
{
  if (!self->super._unknownOrientation)
  {
    return self->super._interfaceOrientation;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = UITextEffectsWindow;
  return [(UIWindow *)&v5 interfaceOrientation];
}

- (CGRect)_sceneBounds
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v3 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  if (windowingModeEnabled)
  {
    v24.receiver = self;
    v24.super_class = UITextEffectsWindow;
    [(UIWindow *)&v24 _sceneBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    if (_UIAppUseModernRotationAndPresentationBehaviors())
    {
      viewOrientation = self->super.super.super._viewOrientation;
      if ([(UIWindow *)self _isHostedInAnotherProcess])
      {
        viewOrientation = self->super._interfaceOrientation;
      }

      screen = [(UIWindow *)self screen];
      [screen _boundsForInterfaceOrientation:viewOrientation];
    }

    else
    {
      screen = [(UIWindow *)self screen];
      [screen bounds];
    }

    v7 = v16;
    v9 = v17;
    v11 = v18;
    v13 = v19;
  }

  v20 = v7;
  v21 = v9;
  v22 = v11;
  v23 = v13;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)_matchDeviceOrientation
{
  _keyboardOrientation = [(UIView *)self _keyboardOrientation];

  [(UITextEffectsWindow *)self updateForOrientation:_keyboardOrientation];
}

- (UIWindowScene)_intendedScene
{
  WeakRetained = objc_loadWeakRetained(&self->_perSceneOptions);

  return WeakRetained;
}

- (BOOL)isTrackingKeyboard
{
  rootViewController = [(UITextEffectsWindow *)self rootViewController];
  isTrackingElementController = [rootViewController isTrackingElementController];

  return isTrackingElementController;
}

- (CGRect)_sceneReferenceBounds
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v3 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  if (windowingModeEnabled)
  {
    v23.receiver = self;
    v23.super_class = UITextEffectsWindow;
    [(UIWindow *)&v23 _sceneReferenceBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    screen = [(UIWindow *)self screen];
    [screen _referenceBounds];
    v7 = v15;
    v9 = v16;
    v11 = v17;
    v13 = v18;
  }

  v19 = v7;
  v20 = v9;
  v21 = v11;
  v22 = v13;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)_sceneBoundsDidChange
{
  LOBYTE(self->_bottomConstraint) = 1;
  v12.receiver = self;
  v12.super_class = UITextEffectsWindow;
  [(UIWindow *)&v12 _sceneBoundsDidChange];
  rootViewController = [(UITextEffectsWindow *)self rootViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    rootViewController2 = [(UITextEffectsWindow *)self rootViewController];
    [rootViewController2 hostAppSceneBoundsChanged];
  }

  [(UITextEffectsWindow *)self _updateRootViewConstraintsForInterfaceOrientationAndStatusBarHeight];
  [(UITextEffectsWindow *)self updateEditingOverlayContainer];
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v6 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  if (windowingModeEnabled)
  {
    rootViewController3 = [(UITextEffectsWindow *)self rootViewController];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      rootViewController4 = [(UITextEffectsWindow *)self rootViewController];
      [rootViewController4 hostAppSceneBoundsChanged];
    }
  }

  LOBYTE(self->_bottomConstraint) = 0;
}

- (void)_updateTransformLayer
{
  layer = [(UIView *)self layer];
  superlayer = [layer superlayer];
  [superlayer bounds];
  v6 = v5;
  v8 = v7;

  v21.receiver = self;
  v21.super_class = UITextEffectsWindow;
  [(UIWindow *)&v21 _updateTransformLayer];
  v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v9 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  if ((windowingModeEnabled & 1) == 0)
  {
    layer2 = [(UIView *)self layer];
    superlayer2 = [layer2 superlayer];
    [superlayer2 bounds];
    v15 = v14;
    v17 = v16;

    if (v6 != v15 || v8 != v17)
    {
      rootViewController = [(UITextEffectsWindow *)self rootViewController];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        rootViewController2 = [(UITextEffectsWindow *)self rootViewController];
        [rootViewController2 hostAppSceneBoundsChanged];
      }
    }
  }

  [(UITextEffectsWindow *)self updateEditingOverlayContainer];
}

- (void)updateEditingOverlayContainer
{
  traitCollection = [(UIWindow *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3)
  {
  }

  else
  {
    v3 = objc_opt_class();
    if ([v3 isEqual:objc_opt_class()])
    {
    }

    else
    {
      v4 = objc_opt_class();
      LOBYTE(v4) = [v4 isEqual:objc_opt_class()];

      if ((v4 & 1) == 0)
      {
        return;
      }
    }

    v5 = *&self->_manualHostingOverride;
    if (v5)
    {

      [v5 updateEditingOverlayContainer];
    }
  }
}

- (BOOL)_shouldResizeWithScene
{
  v30 = *MEMORY[0x1E69E9840];
  if (+[UIKeyboard isInputSystemUI])
  {
    windowingModeEnabled = 1;
  }

  else
  {
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    visualModeManager = [v4 visualModeManager];
    windowingModeEnabled = [visualModeManager windowingModeEnabled];
  }

  [(UIView *)self frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  screen = [(UIWindow *)self screen];
  [screen bounds];
  v32.origin.x = v15;
  v32.origin.y = v16;
  v32.size.width = v17;
  v32.size.height = v18;
  v31.origin.x = v7;
  v31.origin.y = v9;
  v31.size.width = v11;
  v31.size.height = v13;
  v19 = (CGRectEqualToRect(v31, v32) | windowingModeEnabled) ^ 1;

  if (windowingModeEnabled & 1) != 0 || (v19)
  {
    v23.receiver = self;
    v23.super_class = UITextEffectsWindow;
    _shouldResizeWithScene = [(UIWindow *)&v23 _shouldResizeWithScene];
  }

  else
  {
    _shouldResizeWithScene = 0;
  }

  v21 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v25 = _shouldResizeWithScene;
    v26 = 1024;
    v27 = windowingModeEnabled;
    v28 = 1024;
    v29 = v19 & 1;
    _os_log_debug_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEBUG, "TEW _shouldResizeWithScene %d (windowingModeEnabled: %d, resizeFor: %d)", buf, 0x14u);
  }

  return _shouldResizeWithScene;
}

- (void)_updateRootViewConstraintsForInterfaceOrientationAndStatusBarHeight
{
  if (([UIApp _isClassic] & 1) == 0)
  {
    rootViewController = [(UITextEffectsWindow *)self rootViewController];
    if (!-[UIWindow _isHostedInAnotherProcess](self, "_isHostedInAnotherProcess") || (objc_opt_respondsToSelector() & 1) == 0 || ([rootViewController isRotating] & 1) == 0)
    {
      [(UITextEffectsWindow *)self actualSceneFrameForOrientation:[(UITextEffectsWindow *)self interfaceOrientation]];
      x = v18.origin.x;
      y = v18.origin.y;
      width = v18.size.width;
      height = v18.size.height;
      if (!CGRectIsEmpty(v18))
      {
        _keyboardSceneSettings = [(UIWindow *)self _keyboardSceneSettings];

        if (_keyboardSceneSettings)
        {
          v8 = +[UIDevice currentDevice];
          userInterfaceIdiom = [v8 userInterfaceIdiom];

          if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            visualModeManager = [v10 visualModeManager];
            shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

            v13 = 0.0;
            if ((shouldShowWithinAppWindow & 1) == 0)
            {
              v19.origin.x = x;
              v19.origin.y = y;
              v19.size.width = width;
              v19.size.height = height;
              MinY = CGRectGetMinY(v19);
              [(UITextEffectsWindow *)self _sceneBounds];
              MaxY = CGRectGetMaxY(v20);
              v21.origin.x = x;
              v21.origin.y = y;
              v21.size.width = width;
              v21.size.height = height;
              v13 = MinY + MaxY - CGRectGetMaxY(v21);
            }

            [(UITextEffectsWindow *)self addBottomPadding:v13];
          }
        }
      }
    }
  }
}

- (void)_commonTextEffectsInit
{
  *&self->_inDealloc = 0;
  *&self->_isFullscreen = 0x4024000000000000;
  [(UIApplicationRotationFollowingWindow *)self setLimitToWindowLevel:1];
  v3 = [[_UITextEffectsWindowPlacerClass alloc] initForOwningWindow:self];
  v4 = *&self->_sceneIsResizing;
  *&self->_sceneIsResizing = v3;
}

- (int64_t)actualSceneOrientation
{
  if (![UIApp _isSpringBoard])
  {
    _keyboardSceneSettings = [(UIWindow *)self _keyboardSceneSettings];
    v5 = _keyboardSceneSettings;
LABEL_8:
    interfaceOrientation = [_keyboardSceneSettings interfaceOrientation];
    goto LABEL_10;
  }

  keyWindow = [UIApp keyWindow];
  v4 = keyWindow;
  if (keyWindow)
  {
    v5 = keyWindow;
  }

  else
  {
    rootViewController = [(UITextEffectsWindow *)self rootViewController];
    v5 = [(UIViewController *)rootViewController _windowForAutorotationBelowWindow:?];
  }

  if ([v5 _windowOwnsInterfaceOrientation])
  {
    _keyboardSceneSettings = v5;
    goto LABEL_8;
  }

  _keyboardSceneSettings2 = [v5 _keyboardSceneSettings];
  interfaceOrientation = [_keyboardSceneSettings2 interfaceOrientation];

LABEL_10:
  if (interfaceOrientation)
  {
    return interfaceOrientation;
  }

  return [(UITextEffectsWindow *)self interfaceOrientation];
}

- (CGRect)actualSceneFrame
{
  actualSceneOrientation = [(UITextEffectsWindow *)self actualSceneOrientation];

  [(UITextEffectsWindow *)self actualSceneFrameForOrientation:actualSceneOrientation];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)actualSceneBounds
{
  [(UITextEffectsWindow *)self actualSceneFrame];
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = UITextEffectsWindow;
  [(UIWindow *)&v2 layoutSubviews];
}

- (CGPoint)hostedViewOrigin
{
  defaultWindowLevel = self->_defaultWindowLevel;
  x = self->_hostedViewOrigin.x;
  result.y = x;
  result.x = defaultWindowLevel;
  return result;
}

- (CGSize)keyboardScreenReferenceSize
{
  screen = [(UIWindow *)self screen];
  [screen _referenceBounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)_initBasicWithScene:(id)scene options:(id)options
{
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  sceneCopy = scene;
  _coordinateSpace = [sceneCopy _coordinateSpace];
  [_coordinateSpace bounds];
  v10 = v9;
  v12 = v11;

  v13 = [(UITextEffectsWindow *)self _initWithFrame:0 debugName:sceneCopy windowScene:v5, v6, v10, v12];
  v14 = v13;
  v15 = v14;
  if (v14)
  {
    [v14 setPriorityLevel:5];
    [v15 _adjustFramePositionIfNecessary];
  }

  return v15;
}

- (id)_initWithScene:(id)scene options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  v8 = [(UITextEffectsWindow *)self _initBasicWithScene:sceneCopy options:optionsCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(v8 + 125, sceneCopy);
    objc_storeStrong(v9 + 124, options);
    v10 = [optionsCopy objectForKey:@"Fullscreen"];
    *(v9 + 960) = [v10 BOOLValue];

    v11 = [optionsCopy objectForKey:@"ViewService"];
    *(v9 + 961) = [v11 BOOLValue];

    [v9 _commonInitWithOptions:optionsCopy];
    v12 = v9;
  }

  return v9;
}

- (BOOL)_matchingOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKey:@"Level"];
  v6 = [optionsCopy objectForKey:@"Fullscreen"];
  v7 = [optionsCopy objectForKey:@"ViewService"];

  [v5 floatValue];
  v9 = v8;
  [(UITextEffectsWindow *)self defaultWindowLevel];
  if (v10 == v9 && ([v7 floatValue], v11 == -[UITextEffectsWindow isForViewService](self, "isForViewService")))
  {
    bOOLValue = [v6 BOOLValue];
    v13 = bOOLValue ^ [(UITextEffectsWindow *)self isFullscreen]^ 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (CGPoint)hostedWindowOffset
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v3 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  if (windowingModeEnabled)
  {
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    [(UITextEffectsWindow *)self hostedViewOrigin];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (void)setHostedSafeInsets:(UIEdgeInsets)insets
{
  *&self->_hostedSceneSize.height = insets;
  [(UIView *)self _updateSafeAreaInsets];
  rootViewController = [(UITextEffectsWindow *)self rootViewController];
  [rootViewController _updateContentOverlayInsetsForSelfAndChildren];
}

- (void)setHostedViewOrigin:(CGPoint)origin
{
  if (origin.x != self->_defaultWindowLevel || origin.y != self->_hostedViewOrigin.x)
  {
    *&self->_defaultWindowLevel = origin;
    rootViewController = [(UITextEffectsWindow *)self rootViewController];
    [rootViewController hostedOriginDidUpdate];
  }
}

- (void)_commonInitWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy objectForKey:@"Level"];
  [v4 floatValue];
  v6 = v5;

  v7 = [optionsCopy objectForKey:@"Opaque"];
  [(UIView *)self setUserInteractionEnabled:1];
  [(UIWindow *)self setWindowLevel:v6];
  [(UITextEffectsWindow *)self setDefaultWindowLevel:v6];
  if (v7)
  {
    -[UIView setOpaque:](self, "setOpaque:", [v7 BOOLValue]);
  }

  [(UIWindow *)self setHidden:0];
  if (+[UIInputWindowController useMetronomeTracking])
  {
    v8 = [optionsCopy objectForKey:@"TrackingElementWindow"];
    v9 = v8;
    if (v8 && ([v8 BOOLValue] & 1) != 0)
    {
      v10 = off_1E70EABA8;
    }

    else
    {
      v10 = off_1E70E9B80;
    }

    v11 = objc_alloc_init(*v10);
  }

  else
  {
    v11 = objc_alloc_init(UIInputWindowController);
  }

  v12 = [optionsCopy objectForKey:@"Notify"];
  v13 = v12;
  if (v12)
  {
    -[UIInputWindowController setShouldNotifyRemoteKeyboards:](v11, "setShouldNotifyRemoteKeyboards:", [v12 BOOLValue]);
  }

  [(UIWindow *)self setRootViewController:v11];
  WeakRetained = objc_loadWeakRetained(&self->_perSceneOptions);
  screen = [WeakRetained screen];
  _userInterfaceIdiom = [screen _userInterfaceIdiom];

  if (_userInterfaceIdiom != 3 && (self->_activeEffectsCount & 0x100) == 0)
  {
    v17 = objc_opt_class();
    if (([v17 isEqual:objc_opt_class()] & 1) != 0 || (v18 = objc_opt_class(), objc_msgSend(v18, "isEqual:", objc_opt_class())))
    {
      v19 = objc_alloc_init(UIEditingOverlayViewController);
      v20 = *&self->_manualHostingOverride;
      *&self->_manualHostingOverride = v19;

      rootViewController = [(UITextEffectsWindow *)self rootViewController];
      [rootViewController presentViewController:*&self->_manualHostingOverride];
    }
  }
}

- (id)_initWithFrame:(CGRect)frame attached:(BOOL)attached
{
  v7.receiver = self;
  v7.super_class = UITextEffectsWindow;
  v4 = [(UIAutoRotatingWindow *)&v7 _initWithFrame:attached attached:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [v4 _commonTextEffectsInit];
  }

  return v5;
}

- (id)_initWithFrame:(CGRect)frame debugName:(id)name windowScene:(id)scene
{
  v8.receiver = self;
  v8.super_class = UITextEffectsWindow;
  v5 = [(UIAutoRotatingWindow *)&v8 _initWithFrame:name debugName:scene windowScene:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [v5 _commonTextEffectsInit];
  }

  return v6;
}

- (UITextEffectsWindow)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UITextEffectsWindow;
  v3 = [(UIWindow *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UITextEffectsWindow *)v3 _commonTextEffectsInit];
  }

  return v4;
}

- (void)dealloc
{
  *(&self->super._unknownOrientation + 1) = 1;
  v2.receiver = self;
  v2.super_class = UITextEffectsWindow;
  [(UIWindow *)&v2 dealloc];
}

- (void)_setWindowLevel:(double)level
{
  [(UIWindow *)self windowLevel];
  if (v5 != level)
  {
    if (self->__intendedWindowScene && (v6 = self->_activeRemoteViewCount, v6 != 5))
    {
      if (v6 <= 4)
      {
        [(UIWindow *)self windowLevel];
        activeRemoteViewCount = self->_activeRemoteViewCount;
        self->_activeRemoteViewCount = activeRemoteViewCount + 1;
        *(&self->_windowLevelCount + activeRemoteViewCount) = v8;
      }
    }

    else
    {
      self->_activeRemoteViewCount = 0;
    }

    [(UIWindow *)self setWindowLevel:level];
  }
}

- (void)_restoreWindowLevel
{
  v2 = 10.0;
  if (self->__intendedWindowScene)
  {
    activeRemoteViewCount = self->_activeRemoteViewCount;
    if (activeRemoteViewCount)
    {
      v4 = activeRemoteViewCount - 1;
      self->_activeRemoteViewCount = v4;
      v2 = *(&self->_windowLevelCount + v4);
    }
  }

  [(UIWindow *)self setWindowLevel:v2];
}

- (void)_configureContextOptions:(id)options
{
  optionsCopy = options;
  v5.receiver = self;
  v5.super_class = UITextEffectsWindow;
  [(UIWindow *)&v5 _configureContextOptions:optionsCopy];
  if ([(UIWindow *)self _isHostedInAnotherProcess])
  {
    [optionsCopy setObject:*MEMORY[0x1E695E4C0] forKey:*MEMORY[0x1E69796A8]];
  }
}

- (void)addBottomPadding:(double)padding
{
  v17 = *MEMORY[0x1E69E9840];
  editingOverlayViewController = self->_editingOverlayViewController;
  if (!editingOverlayViewController)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    constraints = [(UIView *)self constraints];
    v7 = [constraints countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(constraints);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([v11 firstAttribute] == 4)
          {
            objc_storeStrong(&self->_editingOverlayViewController, v11);
          }
        }

        v8 = [constraints countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    editingOverlayViewController = self->_editingOverlayViewController;
  }

  [(UIEditingOverlayViewController *)editingOverlayViewController setConstant:-padding];
}

- (CGRect)hostedFrame
{
  [(UIView *)self frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(UITextEffectsWindow *)self enableRemoteHosting])
  {
    [(UITextEffectsWindow *)self hostedViewOrigin];
    v10 = v10 - v11;
  }

  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGPoint)_forHostedProcessConvertPoint:(CGPoint)point forWindow:(id)window wasFromWindow:(BOOL)fromWindow
{
  fromWindowCopy = fromWindow;
  y = point.y;
  x = point.x;
  if (([window _isTextEffectsWindow] & 1) == 0)
  {
    [(UITextEffectsWindow *)self hostedViewOrigin];
    v10 = v9;
    [(UITextEffectsWindow *)self hostedViewOrigin];
    v12 = -v11;
    v13 = -v10;
    if (fromWindowCopy)
    {
      v13 = v10;
    }

    x = x + v13;
    if (fromWindowCopy)
    {
      v12 = v11;
    }

    y = y + v12;
  }

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGRect)_forHostedProcessConvertRect:(CGRect)rect forWindow:(id)window wasFromWindow:(BOOL)fromWindow
{
  height = rect.size.height;
  width = rect.size.width;
  [(UITextEffectsWindow *)self _forHostedProcessConvertPoint:window forWindow:fromWindow wasFromWindow:rect.origin.x, rect.origin.y];
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromWindow:(id)window
{
  y = point.y;
  x = point.x;
  windowCopy = window;
  [(UITextEffectsWindow *)self _forHostedProcessConvertPoint:windowCopy forWindow:1 wasFromWindow:x, y];
  v14.receiver = self;
  v14.super_class = UITextEffectsWindow;
  [(UIWindow *)&v14 convertPoint:windowCopy fromWindow:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toWindow:(id)window
{
  y = point.y;
  x = point.x;
  windowCopy = window;
  [(UITextEffectsWindow *)self _forHostedProcessConvertPoint:windowCopy forWindow:0 wasFromWindow:x, y];
  v14.receiver = self;
  v14.super_class = UITextEffectsWindow;
  [(UIWindow *)&v14 convertPoint:windowCopy toWindow:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  _window = [viewCopy _window];
  v9 = _window;
  if (!viewCopy || _window == self)
  {
    v22.receiver = self;
    v22.super_class = UITextEffectsWindow;
    [(UIView *)&v22 convertPoint:viewCopy toView:x, y];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    if ([UIApp _isSpringBoard])
    {
      _hostingWindow = [(UIWindow *)v9 _hostingWindow];
      v11 = _hostingWindow;
      if (_hostingWindow)
      {
        v12 = _hostingWindow;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    [(UITextEffectsWindow *)self convertPoint:v9 toWindow:x, y];
    [(UITextEffectsWindow *)v13 convertPoint:viewCopy toView:?];
    v15 = v18;
    v17 = v19;
  }

  v20 = v15;
  v21 = v17;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  _window = [viewCopy _window];
  v9 = _window;
  if (!viewCopy || _window == self)
  {
    v22.receiver = self;
    v22.super_class = UITextEffectsWindow;
    [(UIView *)&v22 convertPoint:viewCopy fromView:x, y];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    if ([UIApp _isSpringBoard])
    {
      _hostingWindow = [(UIWindow *)v9 _hostingWindow];
      v11 = _hostingWindow;
      if (_hostingWindow)
      {
        v12 = _hostingWindow;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    [(UITextEffectsWindow *)v9 convertPoint:viewCopy fromView:x, y];
    [(UITextEffectsWindow *)self convertPoint:v13 fromWindow:?];
    v15 = v18;
    v17 = v19;
  }

  v20 = v15;
  v21 = v17;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromWindow:(id)window
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  windowCopy = window;
  if ([UIApp _isSpringBoard])
  {
    _hostingWindow = [windowCopy _hostingWindow];
    v11 = _hostingWindow;
    if (_hostingWindow)
    {
      v12 = _hostingWindow;
    }

    else
    {
      v12 = windowCopy;
    }

    v13 = v12;
  }

  else
  {
    v13 = windowCopy;
  }

  [(UITextEffectsWindow *)self _forHostedProcessConvertRect:v13 forWindow:1 wasFromWindow:x, y, width, height];
  v26.receiver = self;
  v26.super_class = UITextEffectsWindow;
  [(UIWindow *)&v26 convertRect:v13 fromWindow:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toWindow:(id)window
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  windowCopy = window;
  if ([UIApp _isSpringBoard])
  {
    _hostingWindow = [windowCopy _hostingWindow];
    v11 = _hostingWindow;
    if (_hostingWindow)
    {
      v12 = _hostingWindow;
    }

    else
    {
      v12 = windowCopy;
    }

    v13 = v12;
  }

  else
  {
    v13 = windowCopy;
  }

  [(UITextEffectsWindow *)self _forHostedProcessConvertRect:v13 forWindow:0 wasFromWindow:x, y, width, height];
  v26.receiver = self;
  v26.super_class = UITextEffectsWindow;
  [(UIWindow *)&v26 convertRect:v13 toWindow:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  _window = [viewCopy _window];
  v11 = _window;
  if (!viewCopy || _window == self)
  {
    v32.receiver = self;
    v32.super_class = UITextEffectsWindow;
    [(UIView *)&v32 convertRect:viewCopy toView:x, y, width, height];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
  }

  else
  {
    if ([UIApp _isSpringBoard])
    {
      _hostingWindow = [(UIWindow *)v11 _hostingWindow];
      v13 = _hostingWindow;
      if (_hostingWindow)
      {
        v14 = _hostingWindow;
      }

      else
      {
        v14 = v11;
      }

      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    [(UITextEffectsWindow *)self convertRect:v15 toWindow:x, y, width, height];
    [(UITextEffectsWindow *)v11 convertRect:viewCopy toView:?];
    v17 = v24;
    v19 = v25;
    v21 = v26;
    v23 = v27;
  }

  v28 = v17;
  v29 = v19;
  v30 = v21;
  v31 = v23;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  _window = [viewCopy _window];
  v11 = _window;
  if (!viewCopy || _window == self)
  {
    v32.receiver = self;
    v32.super_class = UITextEffectsWindow;
    [(UIView *)&v32 convertRect:viewCopy fromView:x, y, width, height];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
  }

  else
  {
    if ([UIApp _isSpringBoard])
    {
      _hostingWindow = [(UIWindow *)v11 _hostingWindow];
      v13 = _hostingWindow;
      if (_hostingWindow)
      {
        v14 = _hostingWindow;
      }

      else
      {
        v14 = v11;
      }

      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    [(UITextEffectsWindow *)v11 convertRect:viewCopy fromView:x, y, width, height];
    [(UITextEffectsWindow *)self convertRect:v15 fromWindow:?];
    v17 = v24;
    v19 = v25;
    v21 = v26;
    v23 = v27;
  }

  v28 = v17;
  v29 = v19;
  v30 = v21;
  v31 = v23;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)becomeKeyWindow
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v5 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    *buf = 138412290;
    v9 = callStackSymbols;
    _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "UITextEffectsWindow should not become key. Please file a bug to Keyboard | iOS with this call stack: %@", buf, 0xCu);
LABEL_4:

LABEL_5:
    goto LABEL_6;
  }

  v3 = *(__UILogGetCategoryCachedImpl("Assert", &becomeKeyWindow___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AF00];
    v5 = v3;
    callStackSymbols = [v4 callStackSymbols];
    *buf = 138412290;
    v9 = callStackSymbols;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "UITextEffectsWindow should not become key. Please file a bug to Keyboard | iOS with this call stack: %@", buf, 0xCu);
    goto LABEL_4;
  }

LABEL_6:
  v7.receiver = self;
  v7.super_class = UITextEffectsWindow;
  [(UIWindow *)&v7 becomeKeyWindow];
}

- (void)delayHideWindow
{
  if (!*&self->_inDealloc)
  {
    [(UIWindow *)self setHidden:1];
  }
}

- (void)layoutViewsForTrackedGuides
{
  rootViewController = [(UITextEffectsWindow *)self rootViewController];
  [rootViewController layoutFromCoordinatorIfNeeded];
}

- (void)updateLastRemoteView:(BOOL)view forView:(id)forView inContainer:(id)container
{
  viewCopy = view;
  v21 = *MEMORY[0x1E69E9840];
  forViewCopy = forView;
  containerCopy = container;
  if ([UIApp _isSpringBoard])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    subviews = [containerCopy subviews];
    reverseObjectEnumerator = [subviews reverseObjectEnumerator];

    v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if (v15 != forViewCopy)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v15 setHidden:viewCopy];
              goto LABEL_13;
            }
          }
        }

        v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

- (void)addSubview:(id)subview
{
  subviewCopy = subview;
  superview = [subviewCopy superview];
  v6 = superview;
  if (superview == self)
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      ++self->__intendedWindowScene;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UITextEffectsWindow *)self updateLastRemoteView:1 forView:subviewCopy inContainer:self];
  }

  v8.receiver = self;
  v8.super_class = UITextEffectsWindow;
  [(UIView *)&v8 addSubview:subviewCopy];
}

- (void)_didRemoveSubview:(id)subview
{
  subviewCopy = subview;
  if (!*(&self->super._unknownOrientation + 1))
  {
    v6.receiver = self;
    v6.super_class = UITextEffectsWindow;
    [(UIAutoRotatingWindow *)&v6 _didRemoveSubview:subviewCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      --self->__intendedWindowScene;
      [(UITextEffectsWindow *)self updateLastRemoteView:0 forView:subviewCopy inContainer:self];
    }

    v5 = *&self->_inDealloc - 1;
    *&self->_inDealloc = v5;
    if (!v5 && ![(UIWindow *)self _isHostedInAnotherProcess])
    {
      [(UITextEffectsWindow *)self performSelector:sel_delayHideWindow withObject:0 afterDelay:0.1];
    }
  }
}

- (void)didAddSubview:(id)subview
{
  if (!*(&self->super._unknownOrientation + 1))
  {
    v4.receiver = self;
    v4.super_class = UITextEffectsWindow;
    [(UIView *)&v4 didAddSubview:subview];
    if (!*&self->_inDealloc || [(UIView *)self isHidden])
    {
      [(UIWindow *)self setBecomeKeyOnOrderFront:0];
      [(UIWindow *)self orderFront:0];
    }

    [(UITextEffectsWindow *)self sortSubviews];
    ++*&self->_inDealloc;
  }
}

- (void)_sortSubviewsOfView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  sublayers = [layer sublayers];
  v5 = [sublayers mutableCopy];

  [v5 sortUsingSelector:sel_compareTextEffectsOrdering_];
  [layer setSublayers:v5];
  [viewCopy _invalidateSubviewCache];
}

- (void)updateForOrientation:(int64_t)orientation forceResetTransform:(BOOL)transform
{
  if (self->super._interfaceOrientation == orientation && !self->super._unknownOrientation)
  {
    if (transform)
    {
      [(UIWindow *)self setupForOrientation:orientation];
      self->super._unknownOrientation = [(UIWindow *)self inhibitTextEffectsRotation];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITextEffectsWindow;
    [(UIAutoRotatingWindow *)&v7 updateForOrientation:orientation, transform];
    self->super._interfaceOrientation = orientation;
    self->super._unknownOrientation = [(UIWindow *)self inhibitTextEffectsRotation];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UITextEffectsWindowDidRotateNotification" object:self];
  }
}

- (void)resetTransform
{
  _keyboardOrientation = [(UIView *)self _keyboardOrientation];

  [(UITextEffectsWindow *)self updateForOrientation:_keyboardOrientation forceResetTransform:1];
}

+ (id)_sharedTextEffectsWindowforWindowScene:(id)scene allowHosted:(BOOL)hosted forViewService:(BOOL)service matchesStatusBarOrientationOnAccess:(BOOL)access shouldCreateIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  accessCopy = access;
  serviceCopy = service;
  hostedCopy = hosted;
  v38 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (!sceneCopy)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1, 0];
    sceneCopy = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (sceneCopy)
    {
      v13 = *v32;
      while (2)
      {
        for (i = 0; i != sceneCopy; i = i + 1)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          keyboardSceneDelegate = [v15 keyboardSceneDelegate];

          if (keyboardSceneDelegate)
          {
            sceneCopy = v15;
            goto LABEL_12;
          }
        }

        sceneCopy = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (sceneCopy)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  session = [sceneCopy session];
  role = [session role];
  v19 = [role isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];

  if ([objc_opt_class() _suppressesTextEffectsWindow])
  {
    goto LABEL_23;
  }

  if (hostedCopy)
  {
    v20 = [UITextEffectsHostingInfo hostingInfoForWindowScene:sceneCopy];
    useHostedInstance = [v20 useHostedInstance];

    if (useHostedInstance)
    {
      serviceCopy = 0;
    }
  }

  v22 = objc_opt_class();
  if (!v22)
  {
LABEL_23:
    v29 = 0;
  }

  else
  {
    v23 = v22;
    v24 = +[_UIRemoteKeyboards enabled];
    v35[0] = @"Level";
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:10.0];
    v36[0] = v25;
    v36[1] = MEMORY[0x1E695E110];
    v35[1] = @"Opaque";
    v35[2] = @"Fullscreen";
    v36[2] = MEMORY[0x1E695E110];
    v35[3] = @"ViewService";
    v26 = [MEMORY[0x1E696AD98] numberWithBool:serviceCopy];
    v36[3] = v26;
    v35[4] = @"TrackingElementWindow";
    v27 = [MEMORY[0x1E696AD98] numberWithBool:v24];
    v36[4] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:5];

    v29 = [_UIObjectPerScene objectOfClass:v23 forScene:sceneCopy withOptions:v28 createIfNecessary:necessaryCopy & ~v19];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v29 setWindowLevel:-10000003.0];
    }

    if (accessCopy)
    {
      [v29 _matchDeviceOrientation];
    }
  }

  return v29;
}

+ (id)sharedTextEffectsWindowForWindowScene:(id)scene forViewService:(BOOL)service
{
  serviceCopy = service;
  sceneCopy = scene;
  v7 = +[UIWindowScene _keyWindowScene];
  v8 = v7 == sceneCopy;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    windows = [sceneCopy windows];
    firstObject = [windows firstObject];

    if ([firstObject _isRemoteKeyboardWindow] && !objc_msgSend(firstObject, "_isHostedInAnotherProcess"))
    {
      goto LABEL_8;
    }
  }

  if (!sceneCopy)
  {
    sceneCopy = +[UIWindowScene _keyWindowScene];
    v8 = 1;
  }

  firstObject = [self _sharedTextEffectsWindowforWindowScene:sceneCopy allowHosted:1 forViewService:serviceCopy matchesStatusBarOrientationOnAccess:v8 shouldCreateIfNecessary:1];
LABEL_8:

  return firstObject;
}

+ (id)activeTextEffectsWindowForWindowScene:(id)scene forViewService:(BOOL)service
{
  serviceCopy = service;
  sceneCopy = scene;
  v7 = +[UIWindowScene _keyWindowScene];
  v8 = v7 == sceneCopy;

  if (!sceneCopy)
  {
    sceneCopy = +[UIWindowScene _keyWindowScene];
    v8 = 1;
  }

  v9 = [self _sharedTextEffectsWindowforWindowScene:sceneCopy allowHosted:1 forViewService:serviceCopy matchesStatusBarOrientationOnAccess:v8 shouldCreateIfNecessary:0];

  return v9;
}

+ (id)_sceneForScreen:(id)screen
{
  v16 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  if (!screenCopy)
  {
    screenCopy = [objc_opt_self() mainScreen];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1, 0];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        screen = [v8 screen];

        if (screen == screenCopy)
        {
          v5 = v8;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

+ (id)sharedTextEffectsWindowForScreen:(id)screen
{
  screenCopy = screen;
  mainScreen = [objc_opt_self() mainScreen];
  v6 = mainScreen == screenCopy;

  if (!screenCopy)
  {
    screenCopy = [objc_opt_self() mainScreen];
    v6 = 1;
  }

  v7 = [self _sceneForScreen:screenCopy];
  v8 = [self _sharedTextEffectsWindowforWindowScene:v7 allowHosted:1 forViewService:0 matchesStatusBarOrientationOnAccess:v6 shouldCreateIfNecessary:1];

  return v8;
}

+ (id)activeTextEffectsWindowForScreen:(id)screen
{
  screenCopy = screen;
  v5 = objc_opt_class();
  v6 = [self _sceneForScreen:screenCopy];

  v7 = [v5 _sharedTextEffectsWindowforWindowScene:v6 allowHosted:1 forViewService:0 matchesStatusBarOrientationOnAccess:0 shouldCreateIfNecessary:0];

  return v7;
}

- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  if ([UIApp _isSpringBoard])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UITextEffectsWindow;
  return [(UIApplicationRotationFollowingWindow *)&v6 _shouldAutorotateToInterfaceOrientation:orientation];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v22[2] = *MEMORY[0x1E69E9840];
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = UITextEffectsWindow;
  [(UIWindow *)&v20 setFrame:x, y, width, height];
  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  if (!CGRectEqualToRect(v23, v24))
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v21[0] = @"UITextEffectsWindowFrameDidChangeNotificationFromFrame";
    v17 = [MEMORY[0x1E696B098] valueWithCGRect:{v9, v11, v13, v15}];
    v21[1] = @"UITextEffectsWindowFrameDidChangeNotificationToFrame";
    v22[0] = v17;
    v18 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
    v22[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [defaultCenter postNotificationName:@"UITextEffectsWindowFrameDidChangeNotification" object:self userInfo:v19];
  }
}

- (CGRect)actualSceneBoundsForLandscape:(BOOL)landscape
{
  if (landscape)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  [(UITextEffectsWindow *)self actualSceneFrameForOrientation:v3];
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)actualSceneFrameForOrientation:(int64_t)orientation
{
  _keyboardSceneSettings = [(UIWindow *)self _keyboardSceneSettings];
  v6 = _keyboardSceneSettings;
  if (_keyboardSceneSettings)
  {
    [_keyboardSceneSettings frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    screen = [(UIWindow *)self screen];
    [screen _referenceBounds];
    v17 = v16;
    v19 = v18;

    if (orientation <= 2)
    {
      if (orientation < 2)
      {
        v20 = v8;
        v8 = v10;
LABEL_17:
        v27 = v12;
        v12 = v14;
        goto LABEL_21;
      }

      if (orientation == 2)
      {
        v20 = v17 - (v8 + v12);
        v8 = v19 - (v10 + v14);
        goto LABEL_17;
      }

LABEL_20:
      v20 = *MEMORY[0x1E695F050];
      v8 = *(MEMORY[0x1E695F050] + 8);
      v27 = *(MEMORY[0x1E695F050] + 16);
      v12 = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_21;
    }

    if (orientation == 4)
    {
      v20 = v19 - (v10 + v14);
    }

    else
    {
      if (orientation != 3)
      {
        goto LABEL_20;
      }

      v8 = v17 - (v8 + v12);
      v20 = v10;
    }

    v27 = v14;
    goto LABEL_21;
  }

  if (![(UIWindow *)self _isHostedInAnotherProcess]|| (([(UITextEffectsWindow *)self hostedViewSize], v22 == *MEMORY[0x1E695F060]) ? (v23 = v21 == *(MEMORY[0x1E695F060] + 8)) : (v23 = 0), v23))
  {
    [(UIView *)self bounds];
    v20 = v29;
    v8 = v30;
    v27 = v31;
    v12 = v32;
  }

  else
  {
    [(UITextEffectsWindow *)self hostedSafeInsets];
    v20 = v24;
    [(UITextEffectsWindow *)self hostedSafeInsets];
    v8 = v25;
    [(UITextEffectsWindow *)self hostedViewSize];
    v27 = v26;
    [(UITextEffectsWindow *)self hostedViewSize];
    v12 = v28;
  }

LABEL_21:

  v33 = v20;
  v34 = v8;
  v35 = v27;
  v36 = v12;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (double)slideOverWindowVerticalOffset
{
  v3 = 0.0;
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    if ([(UITextEffectsWindow *)self _isTextEffectsWindow])
    {
      _fbsScene = [(UIWindow *)&self->super.super.super.super.super.super.isa _fbsScene];

      if (_fbsScene)
      {
        [(UITextEffectsWindow *)self actualSceneFrame];
        v8 = v5;
        v9 = v7;
        if ((v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          screen = [(UIWindow *)self screen];
          [screen _boundsForInterfaceOrientation:{-[UITextEffectsWindow actualSceneOrientation](self, "actualSceneOrientation")}];
          v13 = v12;

          return v13 - (v8 + v9);
        }
      }
    }
  }

  return v3;
}

+ (void)raiseTextEffectsWindowsForShowNotificationCenter
{
  v2 = [self sharedTextEffectsWindowForWindowScene:0];
  [v2 setWindowLevel:1060.0];
}

+ (void)lowerTextEffectsWindowsForHideNotificationCenter
{
  v2 = [self sharedTextEffectsWindowForWindowScene:0];
  [v2 setWindowLevel:10.0];
}

- (BOOL)_shouldTextEffectsWindowBeHostedForView:(id)view
{
  viewCopy = view;
  if ([(UITextEffectsWindow *)self enableRemoteHosting])
  {
    v5 = 1;
  }

  else if ([UIApp _isSpringBoard])
  {
    _window = [viewCopy _window];
    _hostingWindow = [_window _hostingWindow];
    v5 = _hostingWindow != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isFullscreen
{
  _fbsScene = [(UIWindow *)&self->super.super.super.super.super.super.isa _fbsScene];
  settings = [_fbsScene settings];

  if (settings)
  {
    [settings frame];
    v6 = v5;
    v8 = v7;
    screen = [(UIWindow *)self screen];
    [screen _referenceBounds];
    v12 = v8 == v11 && v6 == v10;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_willSnapshot
{
  rootViewController = [(UITextEffectsWindow *)self rootViewController];
  v4 = [rootViewController conformsToProtocol:&unk_1F0037730];

  if (v4)
  {
    rootViewController2 = [(UITextEffectsWindow *)self rootViewController];
    [rootViewController2 willSnapshot];
  }

  v6.receiver = self;
  v6.super_class = UITextEffectsWindow;
  [(UIWindow *)&v6 _willSnapshot];
}

- (void)_didSnapshot
{
  v6.receiver = self;
  v6.super_class = UITextEffectsWindow;
  [(UIWindow *)&v6 _didSnapshot];
  rootViewController = [(UITextEffectsWindow *)self rootViewController];
  v4 = [rootViewController conformsToProtocol:&unk_1F0037730];

  if (v4)
  {
    rootViewController2 = [(UITextEffectsWindow *)self rootViewController];
    [rootViewController2 didSnapshot];
  }
}

- (CGSize)hostedViewSize
{
  v2 = self->_windowLevelStack[4];
  width = self->_hostedViewSize.width;
  result.height = width;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)hostedSafeInsets
{
  height = self->_hostedSceneSize.height;
  top = self->_hostedSafeInsets.top;
  left = self->_hostedSafeInsets.left;
  bottom = self->_hostedSafeInsets.bottom;
  result.right = bottom;
  result.bottom = left;
  result.left = top;
  result.top = height;
  return result;
}

- (CGRect)hostedViewReference
{
  right = self->_hostedSafeInsets.right;
  x = self->_hostedViewReference.origin.x;
  y = self->_hostedViewReference.origin.y;
  width = self->_hostedViewReference.size.width;
  result.size.height = width;
  result.size.width = y;
  result.origin.y = x;
  result.origin.x = right;
  return result;
}

@end