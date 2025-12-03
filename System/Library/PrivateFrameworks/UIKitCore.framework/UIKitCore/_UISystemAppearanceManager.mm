@interface _UISystemAppearanceManager
- (UIWindow)previousWindowDrivingSystemAppearance;
- (_UISystemAppearanceManager)initWithScene:(id)scene;
- (id)_findWindowDrivingSystemAppearance;
- (void)_handleWindowVisibilityNotification:(id)notification;
- (void)_logOrientationPreferencesChangeWithOldSupportedOrientations:(unint64_t)orientations newSupportedOrientations:(unint64_t)supportedOrientations oldPreferredOrientation:(int64_t)orientation newPreferredOrientation:(int64_t)preferredOrientation animationSettings:(id)settings fenced:(BOOL)fenced;
- (void)_setScene:(id)scene;
- (void)dealloc;
- (void)updateHomeIndicatorAutoHidden;
- (void)updateMultitaskingDragExclusionRects;
- (void)updateScreenEdgesDeferringSystemGestures;
- (void)updateWhitePointAdaptivityStyle;
- (void)window:(id)window didUpdateSupportedOrientations:(unint64_t)orientations preferredOrientation:(int64_t)orientation prefersAnimation:(BOOL)animation;
@end

@implementation _UISystemAppearanceManager

- (void)updateHomeIndicatorAutoHidden
{
  _findWindowDrivingSystemAppearance = [(_UISystemAppearanceManager *)self _findWindowDrivingSystemAppearance];
  rootViewController = [_findWindowDrivingSystemAppearance rootViewController];
  _effectiveHomeIndicatorAutoHiddenViewController = [rootViewController _effectiveHomeIndicatorAutoHiddenViewController];

  if (_effectiveHomeIndicatorAutoHiddenViewController)
  {
    prefersHomeIndicatorAutoHidden = [_effectiveHomeIndicatorAutoHiddenViewController prefersHomeIndicatorAutoHidden];
  }

  else
  {
    prefersHomeIndicatorAutoHidden = 0;
  }

  self->_homeIndicatorAutoHidden = prefersHomeIndicatorAutoHidden;
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    _FBSScene = [(UIScene *)self->_windowScene _FBSScene];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59___UISystemAppearanceManager_updateHomeIndicatorAutoHidden__block_invoke;
    v8[3] = &unk_1E70F44D8;
    v8[4] = self;
    [_FBSScene updateUIClientSettingsWithBlock:v8];
  }
}

- (void)updateScreenEdgesDeferringSystemGestures
{
  _findWindowDrivingSystemAppearance = [(_UISystemAppearanceManager *)self _findWindowDrivingSystemAppearance];
  if ((dyld_program_sdk_at_least() & 1) != 0 || (-[UIWindowScene statusBarManager](self->_windowScene, "statusBarManager"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isStatusBarHidden], v4, (v5 & 1) == 0))
  {
    rootViewController = [_findWindowDrivingSystemAppearance rootViewController];
    _effectiveScreenEdgesDeferringSystemGesturesViewController = [rootViewController _effectiveScreenEdgesDeferringSystemGesturesViewController];

    if (_effectiveScreenEdgesDeferringSystemGesturesViewController)
    {
      preferredScreenEdgesDeferringSystemGestures = [_effectiveScreenEdgesDeferringSystemGesturesViewController preferredScreenEdgesDeferringSystemGestures];
    }

    else
    {
      preferredScreenEdgesDeferringSystemGestures = 0;
    }
  }

  else
  {
    preferredScreenEdgesDeferringSystemGestures = 15;
  }

  self->_screenEdgesDeferringSystemGestures = preferredScreenEdgesDeferringSystemGestures;
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    _FBSScene = [(UIScene *)self->_windowScene _FBSScene];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70___UISystemAppearanceManager_updateScreenEdgesDeferringSystemGestures__block_invoke;
    v10[3] = &__block_descriptor_40_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v10[4] = preferredScreenEdgesDeferringSystemGestures;
    [_FBSScene updateUIClientSettingsWithBlock:v10];
  }
}

- (UIWindow)previousWindowDrivingSystemAppearance
{
  WeakRetained = objc_loadWeakRetained(&self->_previousWindowDrivingSystemAppearance);

  return WeakRetained;
}

- (void)updateWhitePointAdaptivityStyle
{
  _findWindowDrivingSystemAppearance = [(_UISystemAppearanceManager *)self _findWindowDrivingSystemAppearance];
  rootViewController = [_findWindowDrivingSystemAppearance rootViewController];
  _effectiveWhitePointAdaptivityStyleViewController = [rootViewController _effectiveWhitePointAdaptivityStyleViewController];

  if (_effectiveWhitePointAdaptivityStyleViewController)
  {
    preferredWhitePointAdaptivityStyle = [_effectiveWhitePointAdaptivityStyleViewController preferredWhitePointAdaptivityStyle];
  }

  else
  {
    preferredWhitePointAdaptivityStyle = 0;
  }

  self->_whitePointAdaptivityStyle = preferredWhitePointAdaptivityStyle;
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    windowScene = self->_windowScene;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61___UISystemAppearanceManager_updateWhitePointAdaptivityStyle__block_invoke;
    v8[3] = &unk_1E70FA390;
    v8[4] = self;
    [(UIScene *)windowScene _updateUIClientSettingsWithUITransitionBlock:v8];
  }
}

- (id)_findWindowDrivingSystemAppearance
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:self->_windowScene];
  previousWindowDrivingSystemAppearance = [(_UISystemAppearanceManager *)self previousWindowDrivingSystemAppearance];

  if (v3 != previousWindowDrivingSystemAppearance)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &_findWindowDrivingSystemAppearance___s_category);
    if (*CategoryCachedImpl)
    {
      v7 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        windowScene = self->_windowScene;
        if (windowScene)
        {
          v9 = MEMORY[0x1E696AEC0];
          v10 = windowScene;
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = [v9 stringWithFormat:@"<%@: %p>", v12, v10];
        }

        else
        {
          v13 = @"(nil)";
        }

        v14 = v13;
        _persistenceIdentifier = [(UIScene *)self->_windowScene _persistenceIdentifier];
        previousWindowDrivingSystemAppearance2 = [(_UISystemAppearanceManager *)self previousWindowDrivingSystemAppearance];
        if (previousWindowDrivingSystemAppearance2)
        {
          v17 = MEMORY[0x1E696AEC0];
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = [v17 stringWithFormat:@"<%@: %p>", v19, previousWindowDrivingSystemAppearance2];
        }

        else
        {
          v20 = @"(nil)";
        }

        v21 = v20;
        v22 = v3;
        if (v22)
        {
          v23 = MEMORY[0x1E696AEC0];
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          v26 = [v23 stringWithFormat:@"<%@: %p>", v25, v22];
        }

        else
        {
          v26 = @"(nil)";
        }

        *buf = 138413058;
        v28 = v14;
        v29 = 2112;
        v30 = _persistenceIdentifier;
        v31 = 2112;
        v32 = v21;
        v33 = 2112;
        v34 = v26;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%@ (%@) Scene window driving system appearance changed: %@ -> %@", buf, 0x2Au);
      }
    }

    [(_UISystemAppearanceManager *)self setPreviousWindowDrivingSystemAppearance:v3];
  }

  return v3;
}

- (_UISystemAppearanceManager)initWithScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISystemAppearanceManager.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"scene == nil || [scene isKindOfClass:[UIWindowScene class]]"}];
    }
  }

  v12.receiver = self;
  v12.super_class = _UISystemAppearanceManager;
  v6 = [(_UISystemAppearanceManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    [(_UISystemAppearanceManager *)v6 _setScene:sceneCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handleWindowVisibilityNotification_ name:@"UIWindowDidBecomeVisibleNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__handleWindowVisibilityNotification_ name:@"UIWindowDidBecomeHiddenNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  stateCaptureToken = [(_UISystemAppearanceManager *)self stateCaptureToken];
  [stateCaptureToken invalidate];

  v4.receiver = self;
  v4.super_class = _UISystemAppearanceManager;
  [(_UISystemAppearanceManager *)&v4 dealloc];
}

- (void)_setScene:(id)scene
{
  sceneCopy = scene;
  if (sceneCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISystemAppearanceManager.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"scene == nil || [scene isKindOfClass:[UIWindowScene class]]"}];
    }
  }

  objc_storeStrong(&self->_windowScene, scene);
  objc_storeWeak(&self->_previousWindowDrivingSystemAppearance, 0);
  stateCaptureToken = [(_UISystemAppearanceManager *)self stateCaptureToken];
  [stateCaptureToken invalidate];

  v8 = MEMORY[0x1E696AEC0];
  session = [(UIScene *)self->_windowScene session];
  persistentIdentifier = [session persistentIdentifier];
  v11 = [v8 stringWithFormat:@"UIKit - UIWindowSceneOrientationState - %@", persistentIdentifier];

  objc_initWeak(&location, self->_windowScene);
  v12 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v16, &location);
  v13 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle();
  stateCaptureToken = self->_stateCaptureToken;
  self->_stateCaptureToken = v13;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_handleWindowVisibilityNotification:(id)notification
{
  notificationCopy = notification;
  windowScene = [(_UISystemAppearanceManager *)self windowScene];
  v19 = notificationCopy;
  name = [v19 name];
  if ([name isEqualToString:@"UIWindowDidBecomeVisibleNotification"])
  {
  }

  else
  {
    name2 = [v19 name];
    v8 = [name2 isEqualToString:@"UIWindowDidBecomeHiddenNotification"];

    if (!v8)
    {
LABEL_10:
      v16 = 0;
      goto LABEL_16;
    }
  }

  object = [v19 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_10;
  }

  object2 = [v19 object];
  windowScene2 = [object2 windowScene];
  v13 = windowScene;
  v14 = v13;
  if (windowScene2 == v13)
  {
  }

  else
  {
    if (!v13 || !windowScene2)
    {

LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    v15 = [windowScene2 isEqual:v13];

    if (!v15)
    {
      goto LABEL_14;
    }
  }

  v16 = object2;
LABEL_15:

LABEL_16:
  if (v16)
  {
    previousWindowDrivingSystemAppearance = [(_UISystemAppearanceManager *)self previousWindowDrivingSystemAppearance];
    _findWindowDrivingSystemAppearance = [(_UISystemAppearanceManager *)self _findWindowDrivingSystemAppearance];
    if (previousWindowDrivingSystemAppearance != _findWindowDrivingSystemAppearance)
    {
      [(_UISystemAppearanceManager *)self _windowDrivingSystemAppearanceDidChange:_findWindowDrivingSystemAppearance];
    }
  }
}

- (void)updateMultitaskingDragExclusionRects
{
  v40 = *MEMORY[0x1E69E9840];
  _findWindowDrivingSystemAppearance = [(_UISystemAppearanceManager *)self _findWindowDrivingSystemAppearance];
  rootViewController = [_findWindowDrivingSystemAppearance rootViewController];
  _effectiveViewControllerForMultitaskingDragExclusionRects = [rootViewController _effectiveViewControllerForMultitaskingDragExclusionRects];

  _multitaskingDragExclusionRects = [_effectiveViewControllerForMultitaskingDragExclusionRects _multitaskingDragExclusionRects];
  array = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = _multitaskingDragExclusionRects;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      v12 = 0;
      do
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v35 + 1) + 8 * v12) CGRectValue];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        viewIfLoaded = [_effectiveViewControllerForMultitaskingDragExclusionRects viewIfLoaded];
        [_findWindowDrivingSystemAppearance convertRect:viewIfLoaded fromView:{v14, v16, v18, v20}];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        [_findWindowDrivingSystemAppearance _convertRectToSceneReferenceSpace:{v23, v25, v27, v29}];
        v30 = [MEMORY[0x1E696B098] valueWithCGRect:?];
        [array addObject:v30];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v10);
  }

  v31 = [array copy];
  multitaskingDragExclusionRects = self->_multitaskingDragExclusionRects;
  self->_multitaskingDragExclusionRects = v31;

  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    windowScene = self->_windowScene;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __66___UISystemAppearanceManager_updateMultitaskingDragExclusionRects__block_invoke;
    v34[3] = &unk_1E70F44D8;
    v34[4] = self;
    [(UIScene *)windowScene _updateUIClientSettingsWithBlock:v34];
  }
}

- (void)window:(id)window didUpdateSupportedOrientations:(unint64_t)orientations preferredOrientation:(int64_t)orientation prefersAnimation:(BOOL)animation
{
  v65 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  windowScene = [(_UISystemAppearanceManager *)self windowScene];

  if (windowScene)
  {
    windowScene2 = [windowCopy windowScene];
    windowScene3 = [(_UISystemAppearanceManager *)self windowScene];

    orientationsCopy = orientations;
    if (windowScene2 != windowScene3)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v39 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          windowScene4 = [(_UISystemAppearanceManager *)self windowScene];
          windowScene5 = [windowCopy windowScene];
          *buf = 138412802;
          v60 = windowCopy;
          v61 = 2112;
          v62 = windowScene4;
          v63 = 2112;
          v64 = windowScene5;
          _os_log_fault_impl(&dword_188A29000, v39, OS_LOG_TYPE_FAULT, "Window (%@) with unexpected windowScene passed to windowDidUpdateOrientationPreferences. Expected: %@, Received: %@", buf, 0x20u);
        }
      }

      else
      {
        v35 = *(__UILogGetCategoryCachedImpl("Assert", &window_didUpdateSupportedOrientations_preferredOrientation_prefersAnimation____s_category) + 8);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = v35;
          windowScene6 = [(_UISystemAppearanceManager *)self windowScene];
          windowScene7 = [windowCopy windowScene];
          *buf = 138412802;
          v60 = windowCopy;
          v61 = 2112;
          v62 = windowScene6;
          v63 = 2112;
          v64 = windowScene7;
          _os_log_impl(&dword_188A29000, v36, OS_LOG_TYPE_ERROR, "Window (%@) with unexpected windowScene passed to windowDidUpdateOrientationPreferences. Expected: %@, Received: %@", buf, 0x20u);
        }
      }
    }

    _windowOrientationPreferencesObserver = [(UIWindowScene *)self->_windowScene _windowOrientationPreferencesObserver];
    v15 = _windowOrientationPreferencesObserver;
    if (_windowOrientationPreferencesObserver)
    {
      (*(_windowOrientationPreferencesObserver + 16))(_windowOrientationPreferencesObserver, windowCopy, orientations, orientation);
    }

    _findWindowDrivingSystemAppearance = [(_UISystemAppearanceManager *)self _findWindowDrivingSystemAppearance];
    v17 = windowCopy;
    v18 = _findWindowDrivingSystemAppearance;
    v19 = v18;
    if (v18 == v17)
    {
      animationCopy2 = animation;

      orientationCopy2 = orientation;
      orientationsCopy3 = orientations;
    }

    else
    {
      if (!v17 || !v18)
      {

LABEL_18:
LABEL_19:

        goto LABEL_20;
      }

      animationCopy2 = animation;
      orientationCopy2 = orientation;
      v21 = [v17 isEqual:v18];

      orientationsCopy3 = orientations;
      if (!v21)
      {
        goto LABEL_19;
      }
    }

    _canDynamicallySpecifySupportedInterfaceOrientations = [(UIScene *)self->_windowScene _canDynamicallySpecifySupportedInterfaceOrientations];
    supportedInterfaceOrientations = self->_supportedInterfaceOrientations;
    preferredInterfaceOrientation = self->_preferredInterfaceOrientation;
    v26 = supportedInterfaceOrientations != orientationsCopy3;
    v27 = preferredInterfaceOrientation != orientationCopy2;
    if (_canDynamicallySpecifySupportedInterfaceOrientations)
    {
      v43 = supportedInterfaceOrientations != orientationsCopy3;
      v44 = _canDynamicallySpecifySupportedInterfaceOrientations;
      v42 = preferredInterfaceOrientation != orientationCopy2;
      [(_UISystemAppearanceManager *)self windowScene];
      v29 = v28 = orientationCopy2;
      _interfaceOrientation = [v29 _interfaceOrientation];
      windowScene8 = [(_UISystemAppearanceManager *)self windowScene];
      v32 = _interfaceOrientation != [windowScene8 _interfaceOrientationForSupportedOrientations:orientationsCopy preferredOrientation:v28];

      v27 = v42;
      v26 = v43;
      LOBYTE(_canDynamicallySpecifySupportedInterfaceOrientations) = v44;
      orientationCopy2 = v28;
      orientationsCopy3 = orientationsCopy;
    }

    else
    {
      v32 = 0;
    }

    self->_supportedInterfaceOrientations = orientationsCopy3;
    self->_preferredInterfaceOrientation = orientationCopy2;
    v33 = orientationCopy2;
    if (supportedInterfaceOrientations == orientationsCopy3 && preferredInterfaceOrientation == orientationCopy2)
    {
      goto LABEL_19;
    }

    windowScene = self->_windowScene;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __106___UISystemAppearanceManager_window_didUpdateSupportedOrientations_preferredOrientation_prefersAnimation___block_invoke;
    v47[3] = &unk_1E70FA3B8;
    v54 = v26;
    v55 = v27;
    v50 = orientationsCopy3;
    v51 = v33;
    v56 = _canDynamicallySpecifySupportedInterfaceOrientations;
    v57 = animationCopy2;
    v48 = v17;
    selfCopy = self;
    v52 = supportedInterfaceOrientations;
    v53 = preferredInterfaceOrientation;
    v58 = v32;
    [(UIScene *)windowScene _updateUIClientSettingsWithUITransitionBlock:v47];
    v19 = v48;
    goto LABEL_18;
  }

LABEL_20:
}

- (void)_logOrientationPreferencesChangeWithOldSupportedOrientations:(unint64_t)orientations newSupportedOrientations:(unint64_t)supportedOrientations oldPreferredOrientation:(int64_t)orientation newPreferredOrientation:(int64_t)preferredOrientation animationSettings:(id)settings fenced:(BOOL)fenced
{
  v50 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  array = [MEMORY[0x1E695DF70] array];
  if (orientations != supportedOrientations)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = BSInterfaceOrientationMaskDescription();
    v17 = BSInterfaceOrientationMaskDescription();
    v18 = [v15 stringWithFormat:@"%@ -> %@", v16, v17];
    [array addObject:v18];
  }

  if (orientation != preferredOrientation)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = BSInterfaceOrientationDescription();
    v21 = BSInterfaceOrientationDescription();
    v22 = [v19 stringWithFormat:@"%@ -> %@", v20, v21];
    [array addObject:v22];
  }

  if (os_variant_has_internal_diagnostics())
  {
    v34 = MEMORY[0x1E696AEC0];
    v35 = NSStringFromBOOL();
    v36 = [v34 stringWithFormat:@"fenced=%@", v35];
    [array addObject:v36];

    v37 = MEMORY[0x1E696AEC0];
    [settingsCopy duration];
    v39 = [v37 stringWithFormat:@"animationDuration=%0.4f", v38];
    [array addObject:v39];

    [settingsCopy speed];
    if (v40 != 1.0)
    {
      v41 = MEMORY[0x1E696AEC0];
      [settingsCopy speed];
      v43 = [v41 stringWithFormat:@"animationSpeed=%0.4f", v42];
      [array addObject:v43];
    }
  }

  v23 = *(__UILogGetCategoryCachedImpl("Orientation", &_logOrientationPreferencesChangeWithOldSupportedOrientations_newSupportedOrientations_oldPreferredOrientation_newPreferredOrientation_animationSettings_fenced____s_category) + 8);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    windowScene = self->_windowScene;
    if (windowScene)
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = windowScene;
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = [v25 stringWithFormat:@"<%@: %p>", v28, v26];

      v30 = self->_windowScene;
    }

    else
    {
      v30 = 0;
      v29 = @"(nil)";
    }

    v31 = v29;
    _persistenceIdentifier = [(UIScene *)v30 _persistenceIdentifier];
    v33 = [array componentsJoinedByString:@" "];;
    *buf = 138412802;
    v45 = v29;
    v46 = 2112;
    v47 = _persistenceIdentifier;
    v48 = 2112;
    v49 = v33;
    _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "%@ (%@) Scene updated orientation preferences: %@", buf, 0x20u);
  }
}

@end