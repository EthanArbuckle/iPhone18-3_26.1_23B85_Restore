@interface _UISystemAppearanceManager
- (UIWindow)previousWindowDrivingSystemAppearance;
- (_UISystemAppearanceManager)initWithScene:(id)a3;
- (id)_findWindowDrivingSystemAppearance;
- (void)_handleWindowVisibilityNotification:(id)a3;
- (void)_logOrientationPreferencesChangeWithOldSupportedOrientations:(unint64_t)a3 newSupportedOrientations:(unint64_t)a4 oldPreferredOrientation:(int64_t)a5 newPreferredOrientation:(int64_t)a6 animationSettings:(id)a7 fenced:(BOOL)a8;
- (void)_setScene:(id)a3;
- (void)dealloc;
- (void)updateHomeIndicatorAutoHidden;
- (void)updateMultitaskingDragExclusionRects;
- (void)updateScreenEdgesDeferringSystemGestures;
- (void)updateWhitePointAdaptivityStyle;
- (void)window:(id)a3 didUpdateSupportedOrientations:(unint64_t)a4 preferredOrientation:(int64_t)a5 prefersAnimation:(BOOL)a6;
@end

@implementation _UISystemAppearanceManager

- (void)updateHomeIndicatorAutoHidden
{
  v3 = [(_UISystemAppearanceManager *)self _findWindowDrivingSystemAppearance];
  v4 = [v3 rootViewController];
  v5 = [v4 _effectiveHomeIndicatorAutoHiddenViewController];

  if (v5)
  {
    v6 = [v5 prefersHomeIndicatorAutoHidden];
  }

  else
  {
    v6 = 0;
  }

  self->_homeIndicatorAutoHidden = v6;
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    v7 = [(UIScene *)self->_windowScene _FBSScene];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59___UISystemAppearanceManager_updateHomeIndicatorAutoHidden__block_invoke;
    v8[3] = &unk_1E70F44D8;
    v8[4] = self;
    [v7 updateUIClientSettingsWithBlock:v8];
  }
}

- (void)updateScreenEdgesDeferringSystemGestures
{
  v3 = [(_UISystemAppearanceManager *)self _findWindowDrivingSystemAppearance];
  if ((dyld_program_sdk_at_least() & 1) != 0 || (-[UIWindowScene statusBarManager](self->_windowScene, "statusBarManager"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isStatusBarHidden], v4, (v5 & 1) == 0))
  {
    v7 = [v3 rootViewController];
    v8 = [v7 _effectiveScreenEdgesDeferringSystemGesturesViewController];

    if (v8)
    {
      v6 = [v8 preferredScreenEdgesDeferringSystemGestures];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 15;
  }

  self->_screenEdgesDeferringSystemGestures = v6;
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    v9 = [(UIScene *)self->_windowScene _FBSScene];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70___UISystemAppearanceManager_updateScreenEdgesDeferringSystemGestures__block_invoke;
    v10[3] = &__block_descriptor_40_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v10[4] = v6;
    [v9 updateUIClientSettingsWithBlock:v10];
  }
}

- (UIWindow)previousWindowDrivingSystemAppearance
{
  WeakRetained = objc_loadWeakRetained(&self->_previousWindowDrivingSystemAppearance);

  return WeakRetained;
}

- (void)updateWhitePointAdaptivityStyle
{
  v3 = [(_UISystemAppearanceManager *)self _findWindowDrivingSystemAppearance];
  v4 = [v3 rootViewController];
  v5 = [v4 _effectiveWhitePointAdaptivityStyleViewController];

  if (v5)
  {
    v6 = [v5 preferredWhitePointAdaptivityStyle];
  }

  else
  {
    v6 = 0;
  }

  self->_whitePointAdaptivityStyle = v6;
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
  v4 = [(_UISystemAppearanceManager *)self previousWindowDrivingSystemAppearance];

  if (v3 != v4)
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
        v15 = [(UIScene *)self->_windowScene _persistenceIdentifier];
        v16 = [(_UISystemAppearanceManager *)self previousWindowDrivingSystemAppearance];
        if (v16)
        {
          v17 = MEMORY[0x1E696AEC0];
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = [v17 stringWithFormat:@"<%@: %p>", v19, v16];
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
        v30 = v15;
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

- (_UISystemAppearanceManager)initWithScene:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"_UISystemAppearanceManager.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"scene == nil || [scene isKindOfClass:[UIWindowScene class]]"}];
    }
  }

  v12.receiver = self;
  v12.super_class = _UISystemAppearanceManager;
  v6 = [(_UISystemAppearanceManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    [(_UISystemAppearanceManager *)v6 _setScene:v5];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v7 selector:sel__handleWindowVisibilityNotification_ name:@"UIWindowDidBecomeVisibleNotification" object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v7 selector:sel__handleWindowVisibilityNotification_ name:@"UIWindowDidBecomeHiddenNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(_UISystemAppearanceManager *)self stateCaptureToken];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = _UISystemAppearanceManager;
  [(_UISystemAppearanceManager *)&v4 dealloc];
}

- (void)_setScene:(id)a3
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"_UISystemAppearanceManager.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"scene == nil || [scene isKindOfClass:[UIWindowScene class]]"}];
    }
  }

  objc_storeStrong(&self->_windowScene, a3);
  objc_storeWeak(&self->_previousWindowDrivingSystemAppearance, 0);
  v7 = [(_UISystemAppearanceManager *)self stateCaptureToken];
  [v7 invalidate];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(UIScene *)self->_windowScene session];
  v10 = [v9 persistentIdentifier];
  v11 = [v8 stringWithFormat:@"UIKit - UIWindowSceneOrientationState - %@", v10];

  objc_initWeak(&location, self->_windowScene);
  v12 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v16, &location);
  v13 = BSLogAddStateCaptureBlockForUserRequestsOnlyWithTitle();
  stateCaptureToken = self->_stateCaptureToken;
  self->_stateCaptureToken = v13;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_handleWindowVisibilityNotification:(id)a3
{
  v4 = a3;
  v5 = [(_UISystemAppearanceManager *)self windowScene];
  v19 = v4;
  v6 = [v19 name];
  if ([v6 isEqualToString:@"UIWindowDidBecomeVisibleNotification"])
  {
  }

  else
  {
    v7 = [v19 name];
    v8 = [v7 isEqualToString:@"UIWindowDidBecomeHiddenNotification"];

    if (!v8)
    {
LABEL_10:
      v16 = 0;
      goto LABEL_16;
    }
  }

  v9 = [v19 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = [v19 object];
  v12 = [v11 windowScene];
  v13 = v5;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if (!v13 || !v12)
    {

LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    v15 = [v12 isEqual:v13];

    if (!v15)
    {
      goto LABEL_14;
    }
  }

  v16 = v11;
LABEL_15:

LABEL_16:
  if (v16)
  {
    v17 = [(_UISystemAppearanceManager *)self previousWindowDrivingSystemAppearance];
    v18 = [(_UISystemAppearanceManager *)self _findWindowDrivingSystemAppearance];
    if (v17 != v18)
    {
      [(_UISystemAppearanceManager *)self _windowDrivingSystemAppearanceDidChange:v18];
    }
  }
}

- (void)updateMultitaskingDragExclusionRects
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [(_UISystemAppearanceManager *)self _findWindowDrivingSystemAppearance];
  v4 = [v3 rootViewController];
  v5 = [v4 _effectiveViewControllerForMultitaskingDragExclusionRects];

  v6 = [v5 _multitaskingDragExclusionRects];
  v7 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v6;
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
        v21 = [v5 viewIfLoaded];
        [v3 convertRect:v21 fromView:{v14, v16, v18, v20}];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        [v3 _convertRectToSceneReferenceSpace:{v23, v25, v27, v29}];
        v30 = [MEMORY[0x1E696B098] valueWithCGRect:?];
        [v7 addObject:v30];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v10);
  }

  v31 = [v7 copy];
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

- (void)window:(id)a3 didUpdateSupportedOrientations:(unint64_t)a4 preferredOrientation:(int64_t)a5 prefersAnimation:(BOOL)a6
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [(_UISystemAppearanceManager *)self windowScene];

  if (v11)
  {
    v12 = [v10 windowScene];
    v13 = [(_UISystemAppearanceManager *)self windowScene];

    v46 = a4;
    if (v12 != v13)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v39 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          v40 = [(_UISystemAppearanceManager *)self windowScene];
          v41 = [v10 windowScene];
          *buf = 138412802;
          v60 = v10;
          v61 = 2112;
          v62 = v40;
          v63 = 2112;
          v64 = v41;
          _os_log_fault_impl(&dword_188A29000, v39, OS_LOG_TYPE_FAULT, "Window (%@) with unexpected windowScene passed to windowDidUpdateOrientationPreferences. Expected: %@, Received: %@", buf, 0x20u);
        }
      }

      else
      {
        v35 = *(__UILogGetCategoryCachedImpl("Assert", &window_didUpdateSupportedOrientations_preferredOrientation_prefersAnimation____s_category) + 8);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = v35;
          v37 = [(_UISystemAppearanceManager *)self windowScene];
          v38 = [v10 windowScene];
          *buf = 138412802;
          v60 = v10;
          v61 = 2112;
          v62 = v37;
          v63 = 2112;
          v64 = v38;
          _os_log_impl(&dword_188A29000, v36, OS_LOG_TYPE_ERROR, "Window (%@) with unexpected windowScene passed to windowDidUpdateOrientationPreferences. Expected: %@, Received: %@", buf, 0x20u);
        }
      }
    }

    v14 = [(UIWindowScene *)self->_windowScene _windowOrientationPreferencesObserver];
    v15 = v14;
    if (v14)
    {
      (*(v14 + 16))(v14, v10, a4, a5);
    }

    v16 = [(_UISystemAppearanceManager *)self _findWindowDrivingSystemAppearance];
    v17 = v10;
    v18 = v16;
    v19 = v18;
    if (v18 == v17)
    {
      v45 = a6;

      v20 = a5;
      v22 = a4;
    }

    else
    {
      if (!v17 || !v18)
      {

LABEL_18:
LABEL_19:

        goto LABEL_20;
      }

      v45 = a6;
      v20 = a5;
      v21 = [v17 isEqual:v18];

      v22 = a4;
      if (!v21)
      {
        goto LABEL_19;
      }
    }

    v23 = [(UIScene *)self->_windowScene _canDynamicallySpecifySupportedInterfaceOrientations];
    supportedInterfaceOrientations = self->_supportedInterfaceOrientations;
    preferredInterfaceOrientation = self->_preferredInterfaceOrientation;
    v26 = supportedInterfaceOrientations != v22;
    v27 = preferredInterfaceOrientation != v20;
    if (v23)
    {
      v43 = supportedInterfaceOrientations != v22;
      v44 = v23;
      v42 = preferredInterfaceOrientation != v20;
      [(_UISystemAppearanceManager *)self windowScene];
      v29 = v28 = v20;
      v30 = [v29 _interfaceOrientation];
      v31 = [(_UISystemAppearanceManager *)self windowScene];
      v32 = v30 != [v31 _interfaceOrientationForSupportedOrientations:v46 preferredOrientation:v28];

      v27 = v42;
      v26 = v43;
      LOBYTE(v23) = v44;
      v20 = v28;
      v22 = v46;
    }

    else
    {
      v32 = 0;
    }

    self->_supportedInterfaceOrientations = v22;
    self->_preferredInterfaceOrientation = v20;
    v33 = v20;
    if (supportedInterfaceOrientations == v22 && preferredInterfaceOrientation == v20)
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
    v50 = v22;
    v51 = v33;
    v56 = v23;
    v57 = v45;
    v48 = v17;
    v49 = self;
    v52 = supportedInterfaceOrientations;
    v53 = preferredInterfaceOrientation;
    v58 = v32;
    [(UIScene *)windowScene _updateUIClientSettingsWithUITransitionBlock:v47];
    v19 = v48;
    goto LABEL_18;
  }

LABEL_20:
}

- (void)_logOrientationPreferencesChangeWithOldSupportedOrientations:(unint64_t)a3 newSupportedOrientations:(unint64_t)a4 oldPreferredOrientation:(int64_t)a5 newPreferredOrientation:(int64_t)a6 animationSettings:(id)a7 fenced:(BOOL)a8
{
  v50 = *MEMORY[0x1E69E9840];
  v13 = a7;
  v14 = [MEMORY[0x1E695DF70] array];
  if (a3 != a4)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = BSInterfaceOrientationMaskDescription();
    v17 = BSInterfaceOrientationMaskDescription();
    v18 = [v15 stringWithFormat:@"%@ -> %@", v16, v17];
    [v14 addObject:v18];
  }

  if (a5 != a6)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = BSInterfaceOrientationDescription();
    v21 = BSInterfaceOrientationDescription();
    v22 = [v19 stringWithFormat:@"%@ -> %@", v20, v21];
    [v14 addObject:v22];
  }

  if (os_variant_has_internal_diagnostics())
  {
    v34 = MEMORY[0x1E696AEC0];
    v35 = NSStringFromBOOL();
    v36 = [v34 stringWithFormat:@"fenced=%@", v35];
    [v14 addObject:v36];

    v37 = MEMORY[0x1E696AEC0];
    [v13 duration];
    v39 = [v37 stringWithFormat:@"animationDuration=%0.4f", v38];
    [v14 addObject:v39];

    [v13 speed];
    if (v40 != 1.0)
    {
      v41 = MEMORY[0x1E696AEC0];
      [v13 speed];
      v43 = [v41 stringWithFormat:@"animationSpeed=%0.4f", v42];
      [v14 addObject:v43];
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
    v32 = [(UIScene *)v30 _persistenceIdentifier];
    v33 = [v14 componentsJoinedByString:@" "];;
    *buf = 138412802;
    v45 = v29;
    v46 = 2112;
    v47 = v32;
    v48 = 2112;
    v49 = v33;
    _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "%@ (%@) Scene updated orientation preferences: %@", buf, 0x20u);
  }
}

@end