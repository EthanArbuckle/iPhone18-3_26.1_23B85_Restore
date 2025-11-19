@interface UITextEffectsWindow
+ (id)_sceneForScreen:(id)a3;
+ (id)_sharedTextEffectsWindowforWindowScene:(id)a3 allowHosted:(BOOL)a4 forViewService:(BOOL)a5 matchesStatusBarOrientationOnAccess:(BOOL)a6 shouldCreateIfNecessary:(BOOL)a7;
+ (id)activeTextEffectsWindowForScreen:(id)a3;
+ (id)activeTextEffectsWindowForWindowScene:(id)a3 forViewService:(BOOL)a4;
+ (id)sharedTextEffectsWindowForScreen:(id)a3;
+ (id)sharedTextEffectsWindowForWindowScene:(id)a3 forViewService:(BOOL)a4;
+ (void)lowerTextEffectsWindowsForHideNotificationCenter;
+ (void)raiseTextEffectsWindowsForShowNotificationCenter;
- (BOOL)_isFullscreen;
- (BOOL)_matchingOptions:(id)a3;
- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (BOOL)_shouldResizeWithScene;
- (BOOL)_shouldTextEffectsWindowBeHostedForView:(id)a3;
- (BOOL)isTrackingKeyboard;
- (CGPoint)_forHostedProcessConvertPoint:(CGPoint)a3 forWindow:(id)a4 wasFromWindow:(BOOL)a5;
- (CGPoint)convertPoint:(CGPoint)a3 fromView:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 fromWindow:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toView:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toWindow:(id)a4;
- (CGPoint)hostedViewOrigin;
- (CGPoint)hostedWindowOffset;
- (CGRect)_forHostedProcessConvertRect:(CGRect)a3 forWindow:(id)a4 wasFromWindow:(BOOL)a5;
- (CGRect)_sceneBounds;
- (CGRect)_sceneReferenceBounds;
- (CGRect)actualSceneBounds;
- (CGRect)actualSceneBoundsForLandscape:(BOOL)a3;
- (CGRect)actualSceneFrame;
- (CGRect)actualSceneFrameForOrientation:(int64_t)a3;
- (CGRect)convertRect:(CGRect)a3 fromView:(id)a4;
- (CGRect)convertRect:(CGRect)a3 fromWindow:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toView:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toWindow:(id)a4;
- (CGRect)hostedFrame;
- (CGRect)hostedViewReference;
- (CGSize)hostedViewSize;
- (CGSize)keyboardScreenReferenceSize;
- (UIEdgeInsets)hostedSafeInsets;
- (UITextEffectsWindow)initWithFrame:(CGRect)a3;
- (UIWindowScene)_intendedScene;
- (double)slideOverWindowVerticalOffset;
- (id)_initBasicWithScene:(id)a3 options:(id)a4;
- (id)_initWithFrame:(CGRect)a3 attached:(BOOL)a4;
- (id)_initWithFrame:(CGRect)a3 debugName:(id)a4 windowScene:(id)a5;
- (id)_initWithScene:(id)a3 options:(id)a4;
- (id)rootViewController;
- (int64_t)actualSceneOrientation;
- (int64_t)interfaceOrientation;
- (void)_commonInitWithOptions:(id)a3;
- (void)_commonTextEffectsInit;
- (void)_configureContextOptions:(id)a3;
- (void)_didRemoveSubview:(id)a3;
- (void)_didSnapshot;
- (void)_matchDeviceOrientation;
- (void)_restoreWindowLevel;
- (void)_sceneBoundsDidChange;
- (void)_setWindowLevel:(double)a3;
- (void)_sortSubviewsOfView:(id)a3;
- (void)_updateRootViewConstraintsForInterfaceOrientationAndStatusBarHeight;
- (void)_updateTransformLayer;
- (void)_willSnapshot;
- (void)addBottomPadding:(double)a3;
- (void)addSubview:(id)a3;
- (void)becomeKeyWindow;
- (void)dealloc;
- (void)delayHideWindow;
- (void)didAddSubview:(id)a3;
- (void)layoutSubviews;
- (void)layoutViewsForTrackedGuides;
- (void)resetTransform;
- (void)setFrame:(CGRect)a3;
- (void)setHostedSafeInsets:(UIEdgeInsets)a3;
- (void)setHostedViewOrigin:(CGPoint)a3;
- (void)updateEditingOverlayContainer;
- (void)updateForOrientation:(int64_t)a3 forceResetTransform:(BOOL)a4;
- (void)updateLastRemoteView:(BOOL)a3 forView:(id)a4 inContainer:(id)a5;
@end

@implementation UITextEffectsWindow

- (id)rootViewController
{
  v4.receiver = self;
  v4.super_class = UITextEffectsWindow;
  v2 = [(UIWindow *)&v4 rootViewController];

  return v2;
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
  v4 = [v3 visualModeManager];
  v5 = [v4 windowingModeEnabled];

  if (v5)
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

      v15 = [(UIWindow *)self screen];
      [v15 _boundsForInterfaceOrientation:viewOrientation];
    }

    else
    {
      v15 = [(UIWindow *)self screen];
      [v15 bounds];
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
  v3 = [(UIView *)self _keyboardOrientation];

  [(UITextEffectsWindow *)self updateForOrientation:v3];
}

- (UIWindowScene)_intendedScene
{
  WeakRetained = objc_loadWeakRetained(&self->_perSceneOptions);

  return WeakRetained;
}

- (BOOL)isTrackingKeyboard
{
  v2 = [(UITextEffectsWindow *)self rootViewController];
  v3 = [v2 isTrackingElementController];

  return v3;
}

- (CGRect)_sceneReferenceBounds
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 visualModeManager];
  v5 = [v4 windowingModeEnabled];

  if (v5)
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
    v14 = [(UIWindow *)self screen];
    [v14 _referenceBounds];
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
  v3 = [(UITextEffectsWindow *)self rootViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UITextEffectsWindow *)self rootViewController];
    [v5 hostAppSceneBoundsChanged];
  }

  [(UITextEffectsWindow *)self _updateRootViewConstraintsForInterfaceOrientationAndStatusBarHeight];
  [(UITextEffectsWindow *)self updateEditingOverlayContainer];
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v7 = [v6 visualModeManager];
  v8 = [v7 windowingModeEnabled];

  if (v8)
  {
    v9 = [(UITextEffectsWindow *)self rootViewController];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(UITextEffectsWindow *)self rootViewController];
      [v11 hostAppSceneBoundsChanged];
    }
  }

  LOBYTE(self->_bottomConstraint) = 0;
}

- (void)_updateTransformLayer
{
  v3 = [(UIView *)self layer];
  v4 = [v3 superlayer];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v21.receiver = self;
  v21.super_class = UITextEffectsWindow;
  [(UIWindow *)&v21 _updateTransformLayer];
  v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v10 = [v9 visualModeManager];
  v11 = [v10 windowingModeEnabled];

  if ((v11 & 1) == 0)
  {
    v12 = [(UIView *)self layer];
    v13 = [v12 superlayer];
    [v13 bounds];
    v15 = v14;
    v17 = v16;

    if (v6 != v15 || v8 != v17)
    {
      v18 = [(UITextEffectsWindow *)self rootViewController];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = [(UITextEffectsWindow *)self rootViewController];
        [v20 hostAppSceneBoundsChanged];
      }
    }
  }

  [(UITextEffectsWindow *)self updateEditingOverlayContainer];
}

- (void)updateEditingOverlayContainer
{
  v6 = [(UIWindow *)self traitCollection];
  if ([v6 userInterfaceIdiom] == 3)
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
    v3 = 1;
  }

  else
  {
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v5 = [v4 visualModeManager];
    v3 = [v5 windowingModeEnabled];
  }

  [(UIView *)self frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(UIWindow *)self screen];
  [v14 bounds];
  v32.origin.x = v15;
  v32.origin.y = v16;
  v32.size.width = v17;
  v32.size.height = v18;
  v31.origin.x = v7;
  v31.origin.y = v9;
  v31.size.width = v11;
  v31.size.height = v13;
  v19 = (CGRectEqualToRect(v31, v32) | v3) ^ 1;

  if (v3 & 1) != 0 || (v19)
  {
    v23.receiver = self;
    v23.super_class = UITextEffectsWindow;
    v20 = [(UIWindow *)&v23 _shouldResizeWithScene];
  }

  else
  {
    v20 = 0;
  }

  v21 = +[UIKeyboardVisualModeManager visualModeLog];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v25 = v20;
    v26 = 1024;
    v27 = v3;
    v28 = 1024;
    v29 = v19 & 1;
    _os_log_debug_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEBUG, "TEW _shouldResizeWithScene %d (windowingModeEnabled: %d, resizeFor: %d)", buf, 0x14u);
  }

  return v20;
}

- (void)_updateRootViewConstraintsForInterfaceOrientationAndStatusBarHeight
{
  if (([UIApp _isClassic] & 1) == 0)
  {
    v16 = [(UITextEffectsWindow *)self rootViewController];
    if (!-[UIWindow _isHostedInAnotherProcess](self, "_isHostedInAnotherProcess") || (objc_opt_respondsToSelector() & 1) == 0 || ([v16 isRotating] & 1) == 0)
    {
      [(UITextEffectsWindow *)self actualSceneFrameForOrientation:[(UITextEffectsWindow *)self interfaceOrientation]];
      x = v18.origin.x;
      y = v18.origin.y;
      width = v18.size.width;
      height = v18.size.height;
      if (!CGRectIsEmpty(v18))
      {
        v7 = [(UIWindow *)self _keyboardSceneSettings];

        if (v7)
        {
          v8 = +[UIDevice currentDevice];
          v9 = [v8 userInterfaceIdiom];

          if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            v11 = [v10 visualModeManager];
            v12 = [v11 shouldShowWithinAppWindow];

            v13 = 0.0;
            if ((v12 & 1) == 0)
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
    v6 = [(UIWindow *)self _keyboardSceneSettings];
    v5 = v6;
LABEL_8:
    v8 = [v6 interfaceOrientation];
    goto LABEL_10;
  }

  v3 = [UIApp keyWindow];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v7 = [(UITextEffectsWindow *)self rootViewController];
    v5 = [(UIViewController *)v7 _windowForAutorotationBelowWindow:?];
  }

  if ([v5 _windowOwnsInterfaceOrientation])
  {
    v6 = v5;
    goto LABEL_8;
  }

  v9 = [v5 _keyboardSceneSettings];
  v8 = [v9 interfaceOrientation];

LABEL_10:
  if (v8)
  {
    return v8;
  }

  return [(UITextEffectsWindow *)self interfaceOrientation];
}

- (CGRect)actualSceneFrame
{
  v3 = [(UITextEffectsWindow *)self actualSceneOrientation];

  [(UITextEffectsWindow *)self actualSceneFrameForOrientation:v3];
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
  v2 = [(UIWindow *)self screen];
  [v2 _referenceBounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)_initBasicWithScene:(id)a3 options:(id)a4
{
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v7 = a3;
  v8 = [v7 _coordinateSpace];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  v13 = [(UITextEffectsWindow *)self _initWithFrame:0 debugName:v7 windowScene:v5, v6, v10, v12];
  v14 = v13;
  v15 = v14;
  if (v14)
  {
    [v14 setPriorityLevel:5];
    [v15 _adjustFramePositionIfNecessary];
  }

  return v15;
}

- (id)_initWithScene:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITextEffectsWindow *)self _initBasicWithScene:v6 options:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(v8 + 125, v6);
    objc_storeStrong(v9 + 124, a4);
    v10 = [v7 objectForKey:@"Fullscreen"];
    *(v9 + 960) = [v10 BOOLValue];

    v11 = [v7 objectForKey:@"ViewService"];
    *(v9 + 961) = [v11 BOOLValue];

    [v9 _commonInitWithOptions:v7];
    v12 = v9;
  }

  return v9;
}

- (BOOL)_matchingOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"Level"];
  v6 = [v4 objectForKey:@"Fullscreen"];
  v7 = [v4 objectForKey:@"ViewService"];

  [v5 floatValue];
  v9 = v8;
  [(UITextEffectsWindow *)self defaultWindowLevel];
  if (v10 == v9 && ([v7 floatValue], v11 == -[UITextEffectsWindow isForViewService](self, "isForViewService")))
  {
    v12 = [v6 BOOLValue];
    v13 = v12 ^ [(UITextEffectsWindow *)self isFullscreen]^ 1;
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
  v4 = [v3 visualModeManager];
  v5 = [v4 windowingModeEnabled];

  if (v5)
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

- (void)setHostedSafeInsets:(UIEdgeInsets)a3
{
  *&self->_hostedSceneSize.height = a3;
  [(UIView *)self _updateSafeAreaInsets];
  v4 = [(UITextEffectsWindow *)self rootViewController];
  [v4 _updateContentOverlayInsetsForSelfAndChildren];
}

- (void)setHostedViewOrigin:(CGPoint)a3
{
  if (a3.x != self->_defaultWindowLevel || a3.y != self->_hostedViewOrigin.x)
  {
    *&self->_defaultWindowLevel = a3;
    v5 = [(UITextEffectsWindow *)self rootViewController];
    [v5 hostedOriginDidUpdate];
  }
}

- (void)_commonInitWithOptions:(id)a3
{
  v22 = a3;
  v4 = [v22 objectForKey:@"Level"];
  [v4 floatValue];
  v6 = v5;

  v7 = [v22 objectForKey:@"Opaque"];
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
    v8 = [v22 objectForKey:@"TrackingElementWindow"];
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

  v12 = [v22 objectForKey:@"Notify"];
  v13 = v12;
  if (v12)
  {
    -[UIInputWindowController setShouldNotifyRemoteKeyboards:](v11, "setShouldNotifyRemoteKeyboards:", [v12 BOOLValue]);
  }

  [(UIWindow *)self setRootViewController:v11];
  WeakRetained = objc_loadWeakRetained(&self->_perSceneOptions);
  v15 = [WeakRetained screen];
  v16 = [v15 _userInterfaceIdiom];

  if (v16 != 3 && (self->_activeEffectsCount & 0x100) == 0)
  {
    v17 = objc_opt_class();
    if (([v17 isEqual:objc_opt_class()] & 1) != 0 || (v18 = objc_opt_class(), objc_msgSend(v18, "isEqual:", objc_opt_class())))
    {
      v19 = objc_alloc_init(UIEditingOverlayViewController);
      v20 = *&self->_manualHostingOverride;
      *&self->_manualHostingOverride = v19;

      v21 = [(UITextEffectsWindow *)self rootViewController];
      [v21 presentViewController:*&self->_manualHostingOverride];
    }
  }
}

- (id)_initWithFrame:(CGRect)a3 attached:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = UITextEffectsWindow;
  v4 = [(UIAutoRotatingWindow *)&v7 _initWithFrame:a4 attached:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [v4 _commonTextEffectsInit];
  }

  return v5;
}

- (id)_initWithFrame:(CGRect)a3 debugName:(id)a4 windowScene:(id)a5
{
  v8.receiver = self;
  v8.super_class = UITextEffectsWindow;
  v5 = [(UIAutoRotatingWindow *)&v8 _initWithFrame:a4 debugName:a5 windowScene:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [v5 _commonTextEffectsInit];
  }

  return v6;
}

- (UITextEffectsWindow)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UITextEffectsWindow;
  v3 = [(UIWindow *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)_setWindowLevel:(double)a3
{
  [(UIWindow *)self windowLevel];
  if (v5 != a3)
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

    [(UIWindow *)self setWindowLevel:a3];
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

- (void)_configureContextOptions:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = UITextEffectsWindow;
  [(UIWindow *)&v5 _configureContextOptions:v4];
  if ([(UIWindow *)self _isHostedInAnotherProcess])
  {
    [v4 setObject:*MEMORY[0x1E695E4C0] forKey:*MEMORY[0x1E69796A8]];
  }
}

- (void)addBottomPadding:(double)a3
{
  v17 = *MEMORY[0x1E69E9840];
  editingOverlayViewController = self->_editingOverlayViewController;
  if (!editingOverlayViewController)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(UIView *)self constraints];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if ([v11 firstAttribute] == 4)
          {
            objc_storeStrong(&self->_editingOverlayViewController, v11);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    editingOverlayViewController = self->_editingOverlayViewController;
  }

  [(UIEditingOverlayViewController *)editingOverlayViewController setConstant:-a3];
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

- (CGPoint)_forHostedProcessConvertPoint:(CGPoint)a3 forWindow:(id)a4 wasFromWindow:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  if (([a4 _isTextEffectsWindow] & 1) == 0)
  {
    [(UITextEffectsWindow *)self hostedViewOrigin];
    v10 = v9;
    [(UITextEffectsWindow *)self hostedViewOrigin];
    v12 = -v11;
    v13 = -v10;
    if (v5)
    {
      v13 = v10;
    }

    x = x + v13;
    if (v5)
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

- (CGRect)_forHostedProcessConvertRect:(CGRect)a3 forWindow:(id)a4 wasFromWindow:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  [(UITextEffectsWindow *)self _forHostedProcessConvertPoint:a4 forWindow:a5 wasFromWindow:a3.origin.x, a3.origin.y];
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromWindow:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(UITextEffectsWindow *)self _forHostedProcessConvertPoint:v7 forWindow:1 wasFromWindow:x, y];
  v14.receiver = self;
  v14.super_class = UITextEffectsWindow;
  [(UIWindow *)&v14 convertPoint:v7 fromWindow:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toWindow:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(UITextEffectsWindow *)self _forHostedProcessConvertPoint:v7 forWindow:0 wasFromWindow:x, y];
  v14.receiver = self;
  v14.super_class = UITextEffectsWindow;
  [(UIWindow *)&v14 convertPoint:v7 toWindow:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [v7 _window];
  v9 = v8;
  if (!v7 || v8 == self)
  {
    v22.receiver = self;
    v22.super_class = UITextEffectsWindow;
    [(UIView *)&v22 convertPoint:v7 toView:x, y];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    if ([UIApp _isSpringBoard])
    {
      v10 = [(UIWindow *)v9 _hostingWindow];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
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
    [(UITextEffectsWindow *)v13 convertPoint:v7 toView:?];
    v15 = v18;
    v17 = v19;
  }

  v20 = v15;
  v21 = v17;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [v7 _window];
  v9 = v8;
  if (!v7 || v8 == self)
  {
    v22.receiver = self;
    v22.super_class = UITextEffectsWindow;
    [(UIView *)&v22 convertPoint:v7 fromView:x, y];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    if ([UIApp _isSpringBoard])
    {
      v10 = [(UIWindow *)v9 _hostingWindow];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
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

    [(UITextEffectsWindow *)v9 convertPoint:v7 fromView:x, y];
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

- (CGRect)convertRect:(CGRect)a3 fromWindow:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if ([UIApp _isSpringBoard])
  {
    v10 = [v9 _hostingWindow];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
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

- (CGRect)convertRect:(CGRect)a3 toWindow:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if ([UIApp _isSpringBoard])
  {
    v10 = [v9 _hostingWindow];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
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

- (CGRect)convertRect:(CGRect)a3 toView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [v9 _window];
  v11 = v10;
  if (!v9 || v10 == self)
  {
    v32.receiver = self;
    v32.super_class = UITextEffectsWindow;
    [(UIView *)&v32 convertRect:v9 toView:x, y, width, height];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
  }

  else
  {
    if ([UIApp _isSpringBoard])
    {
      v12 = [(UIWindow *)v11 _hostingWindow];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
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
    [(UITextEffectsWindow *)v11 convertRect:v9 toView:?];
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

- (CGRect)convertRect:(CGRect)a3 fromView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [v9 _window];
  v11 = v10;
  if (!v9 || v10 == self)
  {
    v32.receiver = self;
    v32.super_class = UITextEffectsWindow;
    [(UIView *)&v32 convertRect:v9 fromView:x, y, width, height];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
  }

  else
  {
    if ([UIApp _isSpringBoard])
    {
      v12 = [(UIWindow *)v11 _hostingWindow];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
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

    [(UITextEffectsWindow *)v11 convertRect:v9 fromView:x, y, width, height];
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

    v6 = [MEMORY[0x1E696AF00] callStackSymbols];
    *buf = 138412290;
    v9 = v6;
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
    v6 = [v4 callStackSymbols];
    *buf = 138412290;
    v9 = v6;
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
  v2 = [(UITextEffectsWindow *)self rootViewController];
  [v2 layoutFromCoordinatorIfNeeded];
}

- (void)updateLastRemoteView:(BOOL)a3 forView:(id)a4 inContainer:(id)a5
{
  v6 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if ([UIApp _isSpringBoard])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v8 subviews];
    v10 = [v9 reverseObjectEnumerator];

    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if (v15 != v7)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v15 setHidden:v6];
              goto LABEL_13;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)addSubview:(id)a3
{
  v4 = a3;
  v5 = [v4 superview];
  v6 = v5;
  if (v5 == self)
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
    [(UITextEffectsWindow *)self updateLastRemoteView:1 forView:v4 inContainer:self];
  }

  v8.receiver = self;
  v8.super_class = UITextEffectsWindow;
  [(UIView *)&v8 addSubview:v4];
}

- (void)_didRemoveSubview:(id)a3
{
  v4 = a3;
  if (!*(&self->super._unknownOrientation + 1))
  {
    v6.receiver = self;
    v6.super_class = UITextEffectsWindow;
    [(UIAutoRotatingWindow *)&v6 _didRemoveSubview:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      --self->__intendedWindowScene;
      [(UITextEffectsWindow *)self updateLastRemoteView:0 forView:v4 inContainer:self];
    }

    v5 = *&self->_inDealloc - 1;
    *&self->_inDealloc = v5;
    if (!v5 && ![(UIWindow *)self _isHostedInAnotherProcess])
    {
      [(UITextEffectsWindow *)self performSelector:sel_delayHideWindow withObject:0 afterDelay:0.1];
    }
  }
}

- (void)didAddSubview:(id)a3
{
  if (!*(&self->super._unknownOrientation + 1))
  {
    v4.receiver = self;
    v4.super_class = UITextEffectsWindow;
    [(UIView *)&v4 didAddSubview:a3];
    if (!*&self->_inDealloc || [(UIView *)self isHidden])
    {
      [(UIWindow *)self setBecomeKeyOnOrderFront:0];
      [(UIWindow *)self orderFront:0];
    }

    [(UITextEffectsWindow *)self sortSubviews];
    ++*&self->_inDealloc;
  }
}

- (void)_sortSubviewsOfView:(id)a3
{
  v3 = a3;
  v6 = [v3 layer];
  v4 = [v6 sublayers];
  v5 = [v4 mutableCopy];

  [v5 sortUsingSelector:sel_compareTextEffectsOrdering_];
  [v6 setSublayers:v5];
  [v3 _invalidateSubviewCache];
}

- (void)updateForOrientation:(int64_t)a3 forceResetTransform:(BOOL)a4
{
  if (self->super._interfaceOrientation == a3 && !self->super._unknownOrientation)
  {
    if (a4)
    {
      [(UIWindow *)self setupForOrientation:a3];
      self->super._unknownOrientation = [(UIWindow *)self inhibitTextEffectsRotation];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITextEffectsWindow;
    [(UIAutoRotatingWindow *)&v7 updateForOrientation:a3, a4];
    self->super._interfaceOrientation = a3;
    self->super._unknownOrientation = [(UIWindow *)self inhibitTextEffectsRotation];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"UITextEffectsWindowDidRotateNotification" object:self];
  }
}

- (void)resetTransform
{
  v3 = [(UIView *)self _keyboardOrientation];

  [(UITextEffectsWindow *)self updateForOrientation:v3 forceResetTransform:1];
}

+ (id)_sharedTextEffectsWindowforWindowScene:(id)a3 allowHosted:(BOOL)a4 forViewService:(BOOL)a5 matchesStatusBarOrientationOnAccess:(BOOL)a6 shouldCreateIfNecessary:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v11 = a3;
  if (!v11)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1, 0];
    v11 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v11)
    {
      v13 = *v32;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [v15 keyboardSceneDelegate];

          if (v16)
          {
            v11 = v15;
            goto LABEL_12;
          }
        }

        v11 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v17 = [v11 session];
  v18 = [v17 role];
  v19 = [v18 isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];

  if ([objc_opt_class() _suppressesTextEffectsWindow])
  {
    goto LABEL_23;
  }

  if (v10)
  {
    v20 = [UITextEffectsHostingInfo hostingInfoForWindowScene:v11];
    v21 = [v20 useHostedInstance];

    if (v21)
    {
      v9 = 0;
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
    v26 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    v36[3] = v26;
    v35[4] = @"TrackingElementWindow";
    v27 = [MEMORY[0x1E696AD98] numberWithBool:v24];
    v36[4] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:5];

    v29 = [_UIObjectPerScene objectOfClass:v23 forScene:v11 withOptions:v28 createIfNecessary:v7 & ~v19];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v29 setWindowLevel:-10000003.0];
    }

    if (v8)
    {
      [v29 _matchDeviceOrientation];
    }
  }

  return v29;
}

+ (id)sharedTextEffectsWindowForWindowScene:(id)a3 forViewService:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[UIWindowScene _keyWindowScene];
  v8 = v7 == v6;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 windows];
    v10 = [v9 firstObject];

    if ([v10 _isRemoteKeyboardWindow] && !objc_msgSend(v10, "_isHostedInAnotherProcess"))
    {
      goto LABEL_8;
    }
  }

  if (!v6)
  {
    v6 = +[UIWindowScene _keyWindowScene];
    v8 = 1;
  }

  v10 = [a1 _sharedTextEffectsWindowforWindowScene:v6 allowHosted:1 forViewService:v4 matchesStatusBarOrientationOnAccess:v8 shouldCreateIfNecessary:1];
LABEL_8:

  return v10;
}

+ (id)activeTextEffectsWindowForWindowScene:(id)a3 forViewService:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[UIWindowScene _keyWindowScene];
  v8 = v7 == v6;

  if (!v6)
  {
    v6 = +[UIWindowScene _keyWindowScene];
    v8 = 1;
  }

  v9 = [a1 _sharedTextEffectsWindowforWindowScene:v6 allowHosted:1 forViewService:v4 matchesStatusBarOrientationOnAccess:v8 shouldCreateIfNecessary:0];

  return v9;
}

+ (id)_sceneForScreen:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v3 = [objc_opt_self() mainScreen];
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
        v9 = [v8 screen];

        if (v9 == v3)
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

+ (id)sharedTextEffectsWindowForScreen:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_self() mainScreen];
  v6 = v5 == v4;

  if (!v4)
  {
    v4 = [objc_opt_self() mainScreen];
    v6 = 1;
  }

  v7 = [a1 _sceneForScreen:v4];
  v8 = [a1 _sharedTextEffectsWindowforWindowScene:v7 allowHosted:1 forViewService:0 matchesStatusBarOrientationOnAccess:v6 shouldCreateIfNecessary:1];

  return v8;
}

+ (id)activeTextEffectsWindowForScreen:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [a1 _sceneForScreen:v4];

  v7 = [v5 _sharedTextEffectsWindowforWindowScene:v6 allowHosted:1 forViewService:0 matchesStatusBarOrientationOnAccess:0 shouldCreateIfNecessary:0];

  return v7;
}

- (BOOL)_shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  if ([UIApp _isSpringBoard])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UITextEffectsWindow;
  return [(UIApplicationRotationFollowingWindow *)&v6 _shouldAutorotateToInterfaceOrientation:a3];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    v21[0] = @"UITextEffectsWindowFrameDidChangeNotificationFromFrame";
    v17 = [MEMORY[0x1E696B098] valueWithCGRect:{v9, v11, v13, v15}];
    v21[1] = @"UITextEffectsWindowFrameDidChangeNotificationToFrame";
    v22[0] = v17;
    v18 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
    v22[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [v16 postNotificationName:@"UITextEffectsWindowFrameDidChangeNotification" object:self userInfo:v19];
  }
}

- (CGRect)actualSceneBoundsForLandscape:(BOOL)a3
{
  if (a3)
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

- (CGRect)actualSceneFrameForOrientation:(int64_t)a3
{
  v5 = [(UIWindow *)self _keyboardSceneSettings];
  v6 = v5;
  if (v5)
  {
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(UIWindow *)self screen];
    [v15 _referenceBounds];
    v17 = v16;
    v19 = v18;

    if (a3 <= 2)
    {
      if (a3 < 2)
      {
        v20 = v8;
        v8 = v10;
LABEL_17:
        v27 = v12;
        v12 = v14;
        goto LABEL_21;
      }

      if (a3 == 2)
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

    if (a3 == 4)
    {
      v20 = v19 - (v10 + v14);
    }

    else
    {
      if (a3 != 3)
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
      v4 = [(UIWindow *)&self->super.super.super.super.super.super.isa _fbsScene];

      if (v4)
      {
        [(UITextEffectsWindow *)self actualSceneFrame];
        v8 = v5;
        v9 = v7;
        if ((v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v11 = [(UIWindow *)self screen];
          [v11 _boundsForInterfaceOrientation:{-[UITextEffectsWindow actualSceneOrientation](self, "actualSceneOrientation")}];
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
  v2 = [a1 sharedTextEffectsWindowForWindowScene:0];
  [v2 setWindowLevel:1060.0];
}

+ (void)lowerTextEffectsWindowsForHideNotificationCenter
{
  v2 = [a1 sharedTextEffectsWindowForWindowScene:0];
  [v2 setWindowLevel:10.0];
}

- (BOOL)_shouldTextEffectsWindowBeHostedForView:(id)a3
{
  v4 = a3;
  if ([(UITextEffectsWindow *)self enableRemoteHosting])
  {
    v5 = 1;
  }

  else if ([UIApp _isSpringBoard])
  {
    v6 = [v4 _window];
    v7 = [v6 _hostingWindow];
    v5 = v7 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isFullscreen
{
  v3 = [(UIWindow *)&self->super.super.super.super.super.super.isa _fbsScene];
  v4 = [v3 settings];

  if (v4)
  {
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v9 = [(UIWindow *)self screen];
    [v9 _referenceBounds];
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
  v3 = [(UITextEffectsWindow *)self rootViewController];
  v4 = [v3 conformsToProtocol:&unk_1F0037730];

  if (v4)
  {
    v5 = [(UITextEffectsWindow *)self rootViewController];
    [v5 willSnapshot];
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
  v3 = [(UITextEffectsWindow *)self rootViewController];
  v4 = [v3 conformsToProtocol:&unk_1F0037730];

  if (v4)
  {
    v5 = [(UITextEffectsWindow *)self rootViewController];
    [v5 didSnapshot];
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