@interface _UIFocusSystemSceneComponent
+ (BOOL)__applicationIsSpringBoard;
+ (id)_screenForScene:(id)a3;
+ (id)sceneComponentForEnvironment:(id)a3;
+ (id)sceneComponentForFocusSystem:(id)a3;
- (BOOL)_focusSystem:(id)a3 handleFailedMovementRequest:(id)a4;
- (BOOL)_focusSystem:(id)a3 isScrollingScrollableContainer:(id)a4 targetContentOffset:(CGPoint *)a5;
- (BOOL)_focusSystem:(id)a3 shouldRestoreFocusInContext:(id)a4;
- (BOOL)_focusSystem:(id)a3 shouldReverseLayoutDirectionForEnvironment:(id)a4;
- (BOOL)_focusSystem:(id)a3 shouldReverseLinearWrappingForEnvironment:(id)a4;
- (BOOL)_focusSystemExplicitlyDisabledForBehavior:(id)a3;
- (BOOL)_isFocusSystemActive;
- (BOOL)_isSceneActive;
- (BOOL)_shouldForwardFocusMovementRequest:(id)a3;
- (BOOL)_shouldWaitForFocusMovementActionToEnableFocusSystem:(id)a3;
- (CGRect)_clippingRectForFocusSystem:(id)a3 inCoordinateSpace:(id)a4;
- (NSString)description;
- (UICoordinateSpace)coordinateSpace;
- (UIScene)_scene;
- (UITraitCollection)_traitOverrides;
- (UIWindowScene)_windowScene;
- (_UIFocusEffectManager)_focusEffectManager;
- (_UIFocusSystemSceneComponent)initWithScene:(id)a3;
- (id)_focusBehaviorRespectingApplicationOverride:(BOOL)a3;
- (id)_overridingPreferredFocusEnvironmentForFocusSystem:(id)a3;
- (id)_preferredFocusEnvironmentsForFocusSystem:(id)a3;
- (id)_syncResponderWithFocusUpdateContext:(id)a3;
- (id)_topEnvironmentForFocusSystem:(id)a3;
- (id)_windowsForFocusSearch;
- (void)_adjustFocusSystemAvailabilityUpdatingTraits:(BOOL)a3;
- (void)_delayedSetupFocusDebugWindow;
- (void)_firstResponderDidUpdateFromResponder:(id)a3;
- (void)_focusBehaviorDidChange:(id)a3;
- (void)_focusSystem:(id)a3 didFinishUpdatingFocusInContext:(id)a4;
- (void)_focusSystem:(id)a3 didUpdateFocusInContext:(id)a4;
- (void)_focusSystem:(id)a3 environment:(id)a4 didUpdateFocusInContext:(id)a5;
- (void)_focusSystem:(id)a3 willMessageNewFocusNodes:(id)a4;
- (void)_focusSystem:(id)a3 willMessageOldFocusNodes:(id)a4;
- (void)_focusSystem:(id)a3 willUpdateFocusInContext:(id)a4;
- (void)_notifyDidPerformFocusSystemInitialSetup;
- (void)_requestFocusEffectUpdateToEnvironment:(id)a3;
- (void)_resetFocusEventRecognizers;
- (void)_setupFocusSystem;
- (void)_tearDownFocusSystem;
- (void)_updateDeviceCapabilityObserver;
- (void)_updateFocusEffectForItem:(id)a3;
- (void)_updateFocusSystemCapabilities;
- (void)_updateFocusSystemState;
- (void)_updateWantsModernRing;
- (void)_validateFocusedItemForFirstResponder:(id)a3;
- (void)pushPreferredFocusEnvironmentOverride:(id)a3;
- (void)removePreferredFocusEnvironmentOverride:(id)a3;
- (void)setOverrideFocusSystemEnabled:(BOOL)a3 withIdentifier:(id)a4;
@end

@implementation _UIFocusSystemSceneComponent

- (UIWindowScene)_windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = objc_opt_class();
  v4 = WeakRetained;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (UITraitCollection)_traitOverrides
{
  v3 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  v4 = v3;
  if (v3)
  {
    if ([v3 _isEnabled])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v6 = [(_UIFocusSystemSceneComponent *)self _focusSystemExplicitlyDisabledForBehavior:0];
    v5 = 0;
    if (v6)
    {
      v5 = [(_UIFocusHardwareKeyboardObserver *)self->_hardwareKeyboardObserver isActive];
    }
  }

  v7 = [UITraitCollection _traitCollectionWithFocusSystemState:v5];

  return v7;
}

- (void)_notifyDidPerformFocusSystemInitialSetup
{
  v11[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v4 = [WeakRetained _FBSScene];
  v5 = [v4 identityToken];
  v6 = [v5 stringRepresentation];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    focusSystem = self->_focusSystem;
    v10 = 0x1EFB17090;
    v11[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v7 postNotificationName:@"_UIFocusSystemSceneComponentDidFinishInitialization" object:focusSystem userInfo:v9];
  }
}

- (void)_updateDeviceCapabilityObserver
{
  v3 = [(_UIFocusSystemSceneComponent *)self _focusBehaviorRespectingApplicationOverride:0];
  v4 = [v3 requiredInputDevices];
  objc_initWeak(&location, self);
  hardwareKeyboardObserver = self->_hardwareKeyboardObserver;
  if (v4)
  {
    if (!hardwareKeyboardObserver)
    {
      v6 = objc_opt_new();
      v7 = self->_hardwareKeyboardObserver;
      self->_hardwareKeyboardObserver = v6;

      v8 = self->_hardwareKeyboardObserver;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __63___UIFocusSystemSceneComponent__updateDeviceCapabilityObserver__block_invoke;
      v17[3] = &unk_1E70F3668;
      objc_copyWeak(&v18, &location);
      v9 = [(_UIFocusStateObserver *)v8 addObserver:v17];
      objc_destroyWeak(&v18);
    }
  }

  else if (hardwareKeyboardObserver)
  {
    self->_hardwareKeyboardObserver = 0;
  }

  gameControllerObserver = self->_gameControllerObserver;
  if ((v4 & 2) != 0)
  {
    if (!gameControllerObserver)
    {
      v11 = objc_opt_new();
      v12 = self->_gameControllerObserver;
      self->_gameControllerObserver = v11;

      v13 = self->_gameControllerObserver;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63___UIFocusSystemSceneComponent__updateDeviceCapabilityObserver__block_invoke_2;
      v15[3] = &unk_1E70F3668;
      objc_copyWeak(&v16, &location);
      v14 = [(_UIFocusStateObserver *)v13 addObserver:v15];
      objc_destroyWeak(&v16);
    }
  }

  else if (gameControllerObserver)
  {
    self->_gameControllerObserver = 0;
  }

  objc_destroyWeak(&location);
}

- (UICoordinateSpace)coordinateSpace
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = _forceUnwrappedScene(self);
  if (objc_opt_respondsToSelector())
  {
    if (!+[_UIFocusSystemSceneComponent __applicationIsSpringBoard](_UIFocusSystemSceneComponent, "__applicationIsSpringBoard") || (-[_UIFocusSystemSceneComponent _windowScene](self, "_windowScene"), v4 = objc_claimAutoreleasedReturnValue(), [v4 traitCollection], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v4, v6 == 3))
    {
      v7 = [v3 _coordinateSpace];
      goto LABEL_10;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47___UIFocusSystemSceneComponent_coordinateSpace__block_invoke;
  block[3] = &unk_1E70F3590;
  v33 = v3;
  if (qword_1ED49E1F0 != -1)
  {
    dispatch_once(&qword_1ED49E1F0, block);
  }

  v8 = [(_UIFocusSystemSceneComponent *)self _windowScene];
  v9 = [v8 screen];

  if (!v9)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v11 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_23;
      }

      if (self)
      {
        v25 = MEMORY[0x1E696AEC0];
        v26 = self;
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v24 = [v25 stringWithFormat:@"<%@: %p>", v28, v26];
      }

      else
      {
        v24 = @"(nil)";
      }

      v17 = v24;
      v18 = [(_UIFocusSystemSceneComponent *)self _windowScene];
      if (v18)
      {
        v29 = MEMORY[0x1E696AEC0];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v22 = [v29 stringWithFormat:@"<%@: %p>", v31, v18];
      }

      else
      {
        v22 = @"(nil)";
      }

      *buf = 138412546;
      v35 = v17;
      v36 = 2112;
      v37 = v22;
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Unable to locate a screen for scene component %@. Scene: %@", buf, 0x16u);
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E1F8) + 8);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_23:

        v23 = [objc_opt_self() mainScreen];
        v7 = [v23 coordinateSpace];

        goto LABEL_9;
      }

      if (self)
      {
        v12 = MEMORY[0x1E696AEC0];
        v13 = self;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [v12 stringWithFormat:@"<%@: %p>", v15, v13];
      }

      else
      {
        v16 = @"(nil)";
      }

      v17 = v16;
      v18 = [(_UIFocusSystemSceneComponent *)self _windowScene];
      if (v18)
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [v19 stringWithFormat:@"<%@: %p>", v21, v18];
      }

      else
      {
        v22 = @"(nil)";
      }

      *buf = 138412546;
      v35 = v17;
      v36 = 2112;
      v37 = v22;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Unable to locate a screen for scene component %@. Scene: %@", buf, 0x16u);
    }

    goto LABEL_23;
  }

  v7 = [v9 coordinateSpace];
LABEL_9:

LABEL_10:

  return v7;
}

+ (BOOL)__applicationIsSpringBoard
{
  if (qword_1ED49E1E8 != -1)
  {
    dispatch_once(&qword_1ED49E1E8, &__block_literal_global_75);
  }

  return _MergedGlobals_1120;
}

- (id)_windowsForFocusSearch
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = _forceUnwrappedScene(self);
  v4 = [_UIFocusSystemSceneComponent _screenForScene:v3];
  v5 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  v6 = [v5 behavior];
  v7 = [v6 supportsMultipleWindows];

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = MEMORY[0x1E695E0F0];
      goto LABEL_16;
    }

    v8 = [v3 _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
    v9 = [v8 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_272];
  }

  else
  {
    v10 = [(_UIFocusSystemSceneComponent *)self focusSystem];
    v11 = [v10 behavior];
    v12 = [v11 requiresLegacyScreenBasedWindowLookup];

    if (v12)
    {
      v8 = [v4 _preferredFocusedWindow];
      v13 = [(_UIFocusSystemSceneComponent *)self _windowScene];
      v14 = [v13 keyWindow];

      if (v8 && ([v8 windowScene], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == v3))
      {
        v20[0] = v8;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      }

      else
      {
        v16 = MEMORY[0x1E695E0F0];
      }

      goto LABEL_15;
    }

    v17 = [(_UIFocusSystemSceneComponent *)self _windowScene];
    v8 = [v17 keyWindow];

    if (!v8)
    {
      v16 = MEMORY[0x1E695E0F0];
      goto LABEL_15;
    }

    v19 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  }

  v16 = v9;
LABEL_15:

LABEL_16:

  return v16;
}

- (BOOL)_isSceneActive
{
  activeSceneObserver = self->_activeSceneObserver;
  if (activeSceneObserver)
  {
    LOBYTE(activeSceneObserver) = [(_UIFocusStateObserver *)activeSceneObserver isActive];
  }

  return activeSceneObserver;
}

- (BOOL)_isFocusSystemActive
{
  if ([(_UIFocusSystemSceneComponent *)self _isSceneActive])
  {
    return 1;
  }

  sceneHostAssertionObserver = self->_sceneHostAssertionObserver;

  return [(_UIFocusSceneHostAssertionObserver *)sceneHostAssertionObserver isActive];
}

- (void)_updateFocusSystemCapabilities
{
  v5 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  v2 = [v5 behavior];
  v3 = [v2 focusCastingMode];

  if (v3)
  {
    v4 = objc_alloc_init(_UIFocusCastingController);
    [v5 _setFocusCasting:v4];
    if (v3 == 2)
    {
      [(_UIFocusCastingController *)v4 setEntryPointMemorizationTimeout:0.0];
    }
  }

  else
  {
    [v5 _setFocusCasting:0];
  }
}

- (void)_updateFocusSystemState
{
  v3 = [(_UIFocusSystemSceneComponent *)self _isSceneActive];
  v4 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  v5 = [v4 behavior];
  v6 = [v5 focusSystemDeactivationMode];

  if (v6 == 1)
  {
    v8 = &unk_1EFE30940;
    if (v3)
    {
      v8 = 0;
    }

    v7 = v8;
    v3 = 1;
  }

  else
  {
    if (!v6)
    {
      v3 = [(_UIFocusSystemSceneComponent *)self _isFocusSystemActive];
    }

    v7 = 0;
  }

  v9 = v7;
  [(UIFocusSystem *)self->_focusSystem _setOverrideFocusDeferralBehavior:v7];
  [(UIFocusSystem *)self->_focusSystem _setEnabled:v3];
}

- (void)_setupFocusSystem
{
  if (*&self->_flags)
  {
    v3 = _forceUnwrappedScene(self);
    v4 = [objc_opt_class() _screenForScene:v3];
    objc_initWeak(location, self);
    v5 = [[_UIFocusActiveSceneObserver alloc] initWithScene:v3];
    activeSceneObserver = self->_activeSceneObserver;
    self->_activeSceneObserver = v5;

    v7 = self->_activeSceneObserver;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __49___UIFocusSystemSceneComponent__setupFocusSystem__block_invoke;
    v33[3] = &unk_1E70F3668;
    objc_copyWeak(&v34, location);
    v8 = [(_UIFocusStateObserver *)v7 addObserver:v33];
    if ([objc_opt_class() needsFocusSystem])
    {
      v9 = [(_UIFocusSystemSceneComponent *)self _focusBehaviorRespectingApplicationOverride:1];
      v10 = [[UIFocusSystem alloc] initWithFocusBehavior:v9 enabled:[(_UIFocusSystemSceneComponent *)self _isFocusSystemActive]];
      [(UIFocusSystem *)v10 setDelegate:self];
      objc_storeStrong(&self->_focusSystem, v10);
      v11 = [[_UIFocusEventDelivery alloc] initWithFocusSystem:v10];
      eventDelivery = self->_eventDelivery;
      self->_eventDelivery = v11;

      [(_UIFocusSystemSceneComponent *)self _updateFocusSystemCapabilities];
      [(_UIFocusSystemSceneComponent *)self _updateWantsModernRing];
      v13 = [[_UIFocusScrollManager alloc] initWithScreen:v4];
      objc_storeStrong(&self->_scrollManager, v13);
      if ([v9 supportsSounds])
      {
        v14 = +[_UIFocusSoundGenerator defaultGenerator];
        soundGenerator = self->_soundGenerator;
        self->_soundGenerator = v14;
      }

      if ([v9 supportsHaptics])
      {
        v16 = [[_UIFocusHapticFeedbackGenerator alloc] initWithWindowScene:v3];
        hapticFeedbackGenerator = self->_hapticFeedbackGenerator;
        self->_hapticFeedbackGenerator = v16;
      }

      if ([v9 supportsFrameReporter])
      {
        v18 = [[_UIFocusItemFrameReporter alloc] initWithFocusSystem:v10];
        focusItemFrameReporter = self->_focusItemFrameReporter;
        self->_focusItemFrameReporter = v18;
      }

      if ([v9 syncsFocusAndResponder])
      {
        v20 = [[_UIFocusSceneHostAssertionObserver alloc] initWithScene:v3];
        sceneHostAssertionObserver = self->_sceneHostAssertionObserver;
        self->_sceneHostAssertionObserver = v20;

        v22 = self->_sceneHostAssertionObserver;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __49___UIFocusSystemSceneComponent__setupFocusSystem__block_invoke_2;
        v31[3] = &unk_1E70F3668;
        objc_copyWeak(&v32, location);
        v23 = [(_UIFocusStateObserver *)v22 addObserver:v31];
        objc_destroyWeak(&v32);
      }

      v24 = objc_alloc_init(_UIFocusAnimationCoordinatorManager);
      focusAnimationCoordinatorManager = self->_focusAnimationCoordinatorManager;
      self->_focusAnimationCoordinatorManager = v24;

      v26 = [(_UIFocusSystemSceneComponent *)self _windowScene];
      v27 = [v26 _allWindows];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __49___UIFocusSystemSceneComponent__setupFocusSystem__block_invoke_3;
      v30[3] = &unk_1E710ACE8;
      v30[4] = self;
      [v27 enumerateObjectsUsingBlock:v30];

      v28 = [MEMORY[0x1E696AD88] defaultCenter];
      [v28 addObserver:self selector:sel__focusSystemEnabledStateDidChange_ name:@"_UIFocusSystemEnabledStateDidChangeNotification" object:self->_focusSystem];

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __49___UIFocusSystemSceneComponent__setupFocusSystem__block_invoke_4;
      v29[3] = &unk_1E70F3590;
      v29[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v29);
    }

    objc_destroyWeak(&v34);
    objc_destroyWeak(location);
  }
}

- (void)_updateWantsModernRing
{
  v3 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  v4 = [v3 behavior];
  v5 = [v4 focusRingVisibility];

  if (((v5 & 0xFFFFFFFFFFFFFFFELL) == 2) == ((*&self->_flags & 2) == 0))
  {
    [UIFocusRingManager moveRingToFocusItem:0];
    v6 = [(_UIFocusSystemSceneComponent *)self _focusEffectManager];
    [v6 moveFocusToItem:0];

    *&self->_flags = *&self->_flags & 0xFD | (2 * ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2));
  }
}

- (void)_delayedSetupFocusDebugWindow
{
  if (self->_focusSystem && +[_UIFocusDebugWindow hasAnyModules])
  {
    v3 = [_UIFocusDebugWindow alloc];
    v4 = [(_UIFocusSystemSceneComponent *)self _windowScene];
    v5 = [(_UIFocusDebugWindow *)v3 initWithWindowScene:v4];
    debugWindow = self->_debugWindow;
    self->_debugWindow = v5;

    v7 = self->_debugWindow;

    [(_UIFocusDebugWindow *)v7 setHidden:0];
  }
}

- (void)_tearDownFocusSystem
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_UIFocusSystemEnabledStateDidChangeNotification" object:self->_focusSystem];

  v4 = [(_UIFocusSystemSceneComponent *)self _windowScene];
  v5 = [v4 _allWindows];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52___UIFocusSystemSceneComponent__tearDownFocusSystem__block_invoke;
  v18[3] = &unk_1E710ACE8;
  v18[4] = self;
  [v5 enumerateObjectsUsingBlock:v18];

  v6 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  [v6 _updateFocusImmediatelyToEnvironment:0];

  v7 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  [v7 _prepareForTeardown];

  focusSystem = self->_focusSystem;
  self->_focusSystem = 0;

  eventDelivery = self->_eventDelivery;
  self->_eventDelivery = 0;

  focusAnimationCoordinatorManager = self->_focusAnimationCoordinatorManager;
  self->_focusAnimationCoordinatorManager = 0;

  scrollManager = self->_scrollManager;
  self->_scrollManager = 0;

  soundGenerator = self->_soundGenerator;
  self->_soundGenerator = 0;

  hapticFeedbackGenerator = self->_hapticFeedbackGenerator;
  self->_hapticFeedbackGenerator = 0;

  focusItemFrameReporter = self->_focusItemFrameReporter;
  self->_focusItemFrameReporter = 0;

  activeSceneObserver = self->_activeSceneObserver;
  self->_activeSceneObserver = 0;

  sceneHostAssertionObserver = self->_sceneHostAssertionObserver;
  self->_sceneHostAssertionObserver = 0;

  [(_UIFocusDebugWindow *)self->_debugWindow setHidden:1];
  debugWindow = self->_debugWindow;
  self->_debugWindow = 0;
}

+ (id)sceneComponentForFocusSystem:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"_UIFocusSystemSceneComponent.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];
  }

  v6 = [v5 _hostFocusSystem];

  if (v6)
  {
    do
    {
      v7 = [v5 _hostFocusSystem];

      v8 = [v7 _hostFocusSystem];

      v5 = v7;
    }

    while (v8);
  }

  else
  {
    v7 = v5;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [UIScene _scenesIncludingInternal:1];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) _focusSystemSceneComponent];
        if ([objc_opt_class() needsFocusSystem])
        {
          v15 = [v14 focusSystem];

          if (v15 == v7)
          {

            goto LABEL_18;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  os_variant_has_internal_diagnostics();
  v14 = 0;
LABEL_18:

  return v14;
}

+ (id)sceneComponentForEnvironment:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 sceneComponentForFocusSystem:v4];
LABEL_5:
    v6 = v5;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    goto LABEL_5;
  }

  v7 = _UIFocusEnvironmentContainingView(v4);
  v8 = [v7 _window];
  v9 = [v8 windowScene];
  v6 = [v9 _focusSystemSceneComponent];
  if (!v6)
  {
    os_variant_has_internal_diagnostics();
  }

LABEL_9:

  return v6;
}

+ (id)_screenForScene:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 screen];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_UIFocusSystemSceneComponent)initWithScene:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIFocusSystemSceneComponent;
  v5 = [(_UIFocusSystemSceneComponent *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
    *&v6->_flags |= 1u;
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel__focusBehaviorDidChange_ name:@"_UIFocusBehaviorDidChangeNotification" object:0];

    [(_UIFocusSystemSceneComponent *)v6 _updateDeviceCapabilityObserver];
    [(_UIFocusSystemSceneComponent *)v6 _adjustFocusSystemAvailabilityUpdatingTraits:0];
    [(_UIFocusSystemSceneComponent *)v6 _notifyDidPerformFocusSystemInitialSetup];
  }

  return v6;
}

- (_UIFocusEffectManager)_focusEffectManager
{
  focusEffectManager = self->_focusEffectManager;
  if (!focusEffectManager)
  {
    if ((*&self->_flags & 2) != 0)
    {
      v4 = objc_opt_new();
      v5 = self->_focusEffectManager;
      self->_focusEffectManager = v4;

      focusEffectManager = self->_focusEffectManager;
    }

    else
    {
      focusEffectManager = 0;
    }
  }

  return focusEffectManager;
}

- (void)_requestFocusEffectUpdateToEnvironment:(id)a3
{
  v4 = a3;
  v7 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  v5 = [v7 _focusedItemIsContainedInEnvironment:v4 includeSelf:1];

  if (v5)
  {
    v6 = [v7 focusedItem];
    [(_UIFocusSystemSceneComponent *)self _updateFocusEffectForItem:v6];
  }
}

- (void)_updateFocusEffectForItem:(id)a3
{
  v12 = a3;
  v4 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  if (![v4 _isEnabled])
  {

    if ((*&self->_flags & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v9 = [(_UIFocusSystemSceneComponent *)self _focusEffectManager];
    v10 = v9;
    v11 = 0;
    goto LABEL_11;
  }

  v5 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  v6 = [v5 behavior];
  v7 = [v6 showsFocusRingForItem:v12];

  if ((*&self->_flags & 2) == 0)
  {
    if (v7)
    {
      v8 = v12;
LABEL_7:
      [UIFocusRingManager moveRingToFocusItem:v8];
      goto LABEL_12;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v9 = [(_UIFocusSystemSceneComponent *)self _focusEffectManager];
  v10 = v9;
  v11 = v12;
LABEL_11:
  [v9 moveFocusToItem:v11];

LABEL_12:
}

- (void)setOverrideFocusSystemEnabled:(BOOL)a3 withIdentifier:(id)a4
{
  v4 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!v7)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UIFocusSystemSceneComponent.m" lineNumber:614 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifier"}];
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"<%@ %p>", v10, v7];

  v12 = [(_UIFocusSystemSceneComponent *)self isOverrideFocusSystemEnabled];
  overrideFocusSystemEnablementIdentifiers = self->_overrideFocusSystemEnablementIdentifiers;
  if (v4)
  {
    if (!overrideFocusSystemEnablementIdentifiers)
    {
      v14 = [MEMORY[0x1E695DFA8] set];
      v15 = self->_overrideFocusSystemEnablementIdentifiers;
      self->_overrideFocusSystemEnablementIdentifiers = v14;

      overrideFocusSystemEnablementIdentifiers = self->_overrideFocusSystemEnablementIdentifiers;
    }

    if (([(NSMutableSet *)overrideFocusSystemEnablementIdentifiers containsObject:v11]& 1) == 0)
    {
      [(NSMutableSet *)self->_overrideFocusSystemEnablementIdentifiers addObject:v11];
    }
  }

  else
  {
    [(NSMutableSet *)overrideFocusSystemEnablementIdentifiers removeObject:v11];
  }

  v16 = [(_UIFocusSystemSceneComponent *)self isOverrideFocusSystemEnabled];
  if (v12 != v16)
  {
    v17 = v16;
    v18 = *(__UILogGetCategoryCachedImpl("UIFocusSystemSceneComponent", &setOverrideFocusSystemEnabled_withIdentifier____s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"ENABLED";
      if (!v17)
      {
        v19 = @"DISABLED";
      }

      v20 = v7;
      if (v17)
      {
        v20 = self->_overrideFocusSystemEnablementIdentifiers;
      }

      *buf = 138412546;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "Override focusSystemState: (%@) for reason(s): %@", buf, 0x16u);
    }

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 postNotificationName:@"_UIFocusBehaviorDidChangeNotification" object:0];
  }
}

- (void)_focusBehaviorDidChange:(id)a3
{
  if (*&self->_flags)
  {
    v5 = [(_UIFocusSystemSceneComponent *)self _focusBehaviorRespectingApplicationOverride:1];
    v6 = [(_UIFocusSystemSceneComponent *)self focusSystem];
    [v6 setBehavior:v5];

    [(_UIFocusSystemSceneComponent *)self _updateWantsModernRing];
    [(_UIFocusSystemSceneComponent *)self _updateDeviceCapabilityObserver];

    [(_UIFocusSystemSceneComponent *)self _adjustFocusSystemAvailability];
  }
}

- (void)_adjustFocusSystemAvailabilityUpdatingTraits:(BOOL)a3
{
  v3 = a3;
  v15 = [(_UIFocusSystemSceneComponent *)self _windowScene];
  v5 = [(_UIFocusSystemSceneComponent *)self _focusBehaviorRespectingApplicationOverride:1];
  hardwareKeyboardObserver = self->_hardwareKeyboardObserver;
  if (hardwareKeyboardObserver)
  {
    v7 = [(_UIFocusHardwareKeyboardObserver *)hardwareKeyboardObserver isActive];
    gameControllerObserver = self->_gameControllerObserver;
    if (gameControllerObserver)
    {
LABEL_3:
      v9 = [(_UIFocusGameControllerObserver *)gameControllerObserver isActive];
      goto LABEL_6;
    }
  }

  else
  {
    gameControllerObserver = self->_gameControllerObserver;
    v7 = gameControllerObserver == 0;
    if (gameControllerObserver)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  if (v15)
  {
    v10 = [v5 wantsFocusSystemForScene:?];
  }

  else
  {
    v10 = 0;
  }

  v11 = v7 || v9;
  focusSystem = self->_focusSystem;
  v13 = v10 & v11;
  if (!focusSystem || (v13 & 1) != 0)
  {
    if (((focusSystem == 0) & v13) == 1)
    {
      [(_UIFocusSystemSceneComponent *)self _setupFocusSystem];
      if (v3)
      {
LABEL_21:
        [v15 _componentDidUpdateTraitOverrides:self];
        if (focusSystem)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }

    else if (v13)
    {
      [(_UIFocusSystemSceneComponent *)self _updateFocusSystemCapabilities];
      if (v3)
      {
        goto LABEL_21;
      }
    }

    else if (v3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    [(_UIFocusSystemSceneComponent *)self _tearDownFocusSystem];
    if (v3)
    {
      goto LABEL_21;
    }
  }

  if (focusSystem)
  {
    goto LABEL_25;
  }

LABEL_22:
  if ([(UIFocusSystem *)self->_focusSystem _isEnabled])
  {
    v14 = [(UIFocusSystem *)self->_focusSystem focusedItem];

    if (!v14)
    {
      [(UIFocusSystem *)self->_focusSystem requestFocusUpdateToEnvironment:self->_focusSystem];
      [(UIFocusSystem *)self->_focusSystem updateFocusIfNeeded];
    }
  }

LABEL_25:
}

- (BOOL)_focusSystemExplicitlyDisabledForBehavior:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(_UIFocusSystemSceneComponent *)self _windowScene];
    v7 = [v6 traitCollection];
    v5 = _UIFocusBaseBehaviorForTraitCollection(v7);

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if ([v5 honorsFocusSystemEnabledInfoPlistKey] && !-[_UIFocusSystemSceneComponent isOverrideFocusSystemEnabled](self, "isOverrideFocusSystemEnabled"))
  {
    v9 = +[_UIApplicationInfoParser mainBundleInfoParser];
    v8 = [v9 focusSystemEnabled] ^ 1;

    goto LABEL_8;
  }

LABEL_6:
  LOBYTE(v8) = 0;
LABEL_8:

  return v8;
}

- (id)_focusBehaviorRespectingApplicationOverride:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIFocusSystemSceneComponent *)self _windowScene];
  v6 = [v5 traitCollection];

  v7 = _UIFocusBaseBehaviorForTraitCollection(v6);
  if (v3 && [(_UIFocusSystemSceneComponent *)self _focusSystemExplicitlyDisabledForBehavior:v7])
  {

    v7 = 0;
  }

  return v7;
}

- (void)_resetFocusEventRecognizers
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(_UIFocusSystemSceneComponent *)self _windowsForFocusSearch];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _resetFocusEventRecognizer];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)pushPreferredFocusEnvironmentOverride:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusSystemSceneComponent *)self preferredFocusEnvironmentOverride];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    preferredFocusEnvironmentOverride = self->_preferredFocusEnvironmentOverride;
    self->_preferredFocusEnvironmentOverride = v6;
  }

  v8 = [(_UIFocusSystemSceneComponent *)self preferredFocusEnvironmentOverride];
  [v8 addPointer:v4];
}

- (void)removePreferredFocusEnvironmentOverride:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIFocusSystemSceneComponent *)self preferredFocusEnvironmentOverride];
  [v5 compact];
  if ([v5 count])
  {
    v6 = [v5 count] - 1;
    while (1)
    {
      v7 = v6;
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      v8 = [v5 pointerAtIndex:v6 & 0x7FFFFFFF];
      v6 = v7 - 1;
      if (v8 == v4)
      {
        [v5 removePointerAtIndex:v7 & 0x7FFFFFFF];
        goto LABEL_18;
      }
    }

    v9 = *(__UILogGetCategoryCachedImpl("UIFocusSystemSceneComponent", &qword_1ED49E1C8) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v4;
      if (v15)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v14 = [v16 stringWithFormat:@"<%@: %p>", v18, v15];
      }

      else
      {
        v14 = @"(nil)";
      }

      *buf = 138412290;
      v21 = v14;
      v19 = "Removing environment %@ from override is unsuccessful: environment not in list of overrides.";
LABEL_16:
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
    }
  }

  else
  {
    v9 = *(__UILogGetCategoryCachedImpl("UIFocusSystemSceneComponent", &qword_1ED49E1D0) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v4;
      if (v10)
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [v11 stringWithFormat:@"<%@: %p>", v13, v10];
      }

      else
      {
        v14 = @"(nil)";
      }

      *buf = 138412290;
      v21 = v14;
      v19 = "Removing environment %@ from override is unsuccessful: no override environments.";
      goto LABEL_16;
    }
  }

LABEL_18:
}

- (id)_syncResponderWithFocusUpdateContext:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  v6 = [v5 behavior];

  if ([v6 syncsFocusAndResponder])
  {
    v7 = [v4 nextFocusedItem];
    v8 = v7;
    if (v7)
    {
      v9 = _UIFirstResponderCandidateForEnvironment(v7);
      v10 = [v9 _nextResponderThatCanBecomeFirstResponder];
      v11 = v10;
      if (!v10 || ([v10 isFirstResponder] & 1) == 0 && objc_msgSend(v11, "_allowsChangingFirstResponderForFocusUpdateWithContext:", v4))
      {
        v12 = _UIFocusEnvironmentContainingView(v8);
        v13 = [v12 _window];
        v14 = [v13 firstResponder];
        v15 = v14;
        if ((!v14 || [v14 _allowsChangingFirstResponderForFocusUpdateWithContext:v4]) && (!v11 || !+[UIResponder _callBecomeFirstResponder:withIntent:](UIResponder, "_callBecomeFirstResponder:withIntent:", v11, 1)))
        {
          [UIResponder _callResignFirstResponder:v15 withIntent:1];
        }
      }

      if ([v11 isFirstResponder])
      {
        v16 = v11;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_firstResponderDidUpdateFromResponder:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[UIResponder _currentChangeIntent]!= 1)
  {
    v5 = [(_UIFocusSystemSceneComponent *)self focusSystem];
    v6 = [v5 behavior];

    if ([v6 syncsFocusAndResponder])
    {
      v26 = v6;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      obj = +[UIFocusSystem _allFocusSystems];
      v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            v12 = [v11 _hostFocusSystem];

            if (v12)
            {
              do
              {
                v13 = [v11 _hostFocusSystem];

                v14 = [v13 _hostFocusSystem];

                v11 = v13;
              }

              while (v14);
            }

            else
            {
              v13 = v11;
            }

            v15 = [(_UIFocusSystemSceneComponent *)self focusSystem];

            if (v13 == v15)
            {
              v16 = +[UIWindow _applicationKeyWindow];
              v17 = [v16 firstResponder];

              v18 = _UIFocusEnvironmentSafeCast(v17);
              if (v4)
              {
                v19 = _UIFocusEnvironmentSafeCast(v4);
                if (v19)
                {
                  v20 = [v13 _focusedItemIsContainedInEnvironment:v4 includeSelf:1] ^ 1;
                }

                else
                {
                  v20 = 1;
                }
              }

              else
              {
                v20 = 0;
              }

              if (!v18)
              {
                if (v17)
                {
                  v24 = 0;
                }

                else
                {
                  v24 = v20;
                }

                if (v24)
                {
                  v18 = 0;
                }

                else
                {
                  v25 = [(_UIFocusSystemSceneComponent *)self focusSystem];
                  [v25 _updateFocusImmediatelyToEnvironment:0];

LABEL_32:
                }

                goto LABEL_34;
              }

              if (v20 & ((v17 == 0) | [v13 _focusedItemIsContainedInEnvironment:v18 includeSelf:1]))
              {
                goto LABEL_32;
              }

              v21 = [(_UIFocusSystemSceneComponent *)self focusSystem];
              v22 = [v21 focusedItem];

              if (v22 == v18)
              {
                goto LABEL_32;
              }

              v23 = [(_UIFocusSystemSceneComponent *)self focusSystem];
              [v23 _updateFocusImmediatelyToEnvironment:v18];
            }
          }

          v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_34:

      v6 = v26;
    }
  }
}

- (void)_validateFocusedItemForFirstResponder:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  v6 = [v5 behavior];

  if ([v6 syncsFocusAndResponder])
  {
    v7 = [(_UIFocusSystemSceneComponent *)self focusSystem];
    v8 = [v7 focusedItem];

    if (v4 && v8 && ([v4 isFirstResponder] & 1) == 0)
    {
      v9 = +[UIWindow _applicationKeyWindow];
      v10 = [v9 firstResponder];

      if (v10)
      {
        v11 = _UIFocusEnvironmentSafeCast(v10);

        v12 = @"N";
        if (v11 && _UIFocusEnvironmentIsAncestorOfEnvironment(v10, v8))
        {
          v12 = @"Y";
        }
      }

      else
      {
        v12 = @"N";
      }

      v13 = _UIFocusEnvironmentSafeCast(v4);

      v14 = @"N";
      if (v13 && _UIFocusEnvironmentIsAncestorOfEnvironment(v4, v8))
      {
        v14 = @"Y";
      }

      v15 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49E1D8) + 8);
      v78 = v12;
      v79 = v10;
      v77 = v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v67 = v15;
        v16 = MEMORY[0x1E696AEC0];
        v74 = v8;
        v17 = v8;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v16 stringWithFormat:@"<%@: %p>", v19, v17];

        v21 = v20;
        v10 = v79;
        v69 = v21;
        v22 = MEMORY[0x1E696AEC0];
        v23 = v4;
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v22 stringWithFormat:@"<%@: %p>", v25, v23];

        v27 = v26;
        v28 = v79;
        if (v79)
        {
          v29 = MEMORY[0x1E696AEC0];
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = [v29 stringWithFormat:@"<%@: %p>", v31, v28];

          v10 = v79;
        }

        else
        {
          v32 = @"(nil)";
        }

        *buf = 138413314;
        v15 = v67;
        v81 = v69;
        v82 = 2112;
        v83 = v27;
        v84 = 2112;
        v14 = v77;
        v12 = v78;
        v85 = v77;
        v86 = 2112;
        v87 = v32;
        v88 = 2112;
        v89 = v78;
        _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_ERROR, "Received a call to becomeFirstResponder while processing a focus update. Focused item: %@, expected responder: %@ (%@), actual responder: %@ (%@)", buf, 0x34u);

        v8 = v74;
      }

      if (os_variant_has_internal_diagnostics())
      {
        v53 = v14;
        v54 = v12;
        v33 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          v70 = MEMORY[0x1E696AEC0];
          v76 = v8;
          v55 = v8;
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          v71 = [v70 stringWithFormat:@"<%@: %p>", v57, v55];

          v68 = v71;
          v72 = MEMORY[0x1E696AEC0];
          v58 = v4;
          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          v61 = [v72 stringWithFormat:@"<%@: %p>", v60, v58];

          v73 = v61;
          v62 = v10;
          if (v10)
          {
            v64 = MEMORY[0x1E696AEC0];
            v65 = objc_opt_class();
            v66 = NSStringFromClass(v65);
            v63 = [v64 stringWithFormat:@"<%@: %p>", v66, v62];
          }

          else
          {
            v63 = @"(nil)";
          }

          *buf = 138413314;
          v81 = v68;
          v82 = 2112;
          v83 = v73;
          v84 = 2112;
          v85 = v53;
          v86 = 2112;
          v87 = v63;
          v88 = 2112;
          v89 = v54;
          _os_log_fault_impl(&dword_188A29000, v33, OS_LOG_TYPE_FAULT, "Received a call to becomeFirstResponder while processing a focus update. Focused item: %@, expected responder: %@ (%@), actual responder: %@ (%@)", buf, 0x34u);

          v8 = v76;
        }
      }

      else
      {
        v33 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E1E0) + 8);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v75 = v33;
          v34 = MEMORY[0x1E696AEC0];
          v35 = v10;
          v36 = v8;
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = [v34 stringWithFormat:@"<%@: %p>", v38, v36];

          v40 = v39;
          v41 = MEMORY[0x1E696AEC0];
          v42 = v4;
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          v45 = [v41 stringWithFormat:@"<%@: %p>", v44, v42];

          v46 = v45;
          v47 = v35;
          if (v35)
          {
            v48 = MEMORY[0x1E696AEC0];
            v49 = objc_opt_class();
            v50 = NSStringFromClass(v49);
            v51 = [v48 stringWithFormat:@"<%@: %p>", v50, v47];
          }

          else
          {
            v51 = @"(nil)";
          }

          *buf = 138413314;
          v81 = v40;
          v82 = 2112;
          v83 = v46;
          v84 = 2112;
          v33 = v75;
          v85 = v77;
          v86 = 2112;
          v87 = v51;
          v88 = 2112;
          v89 = v78;
          _os_log_impl(&dword_188A29000, v75, OS_LOG_TYPE_ERROR, "Received a call to becomeFirstResponder while processing a focus update. Focused item: %@, expected responder: %@ (%@), actual responder: %@ (%@)", buf, 0x34u);

          v10 = v79;
        }
      }

      v52 = [(_UIFocusSystemSceneComponent *)self focusSystem];
      [v52 _updateFocusImmediatelyToEnvironment:0];
    }
  }
}

- (id)_overridingPreferredFocusEnvironmentForFocusSystem:(id)a3
{
  v3 = [(_UIFocusSystemSceneComponent *)self preferredFocusEnvironmentOverride];
  v4 = v3;
  if (v3 && ([v3 compact], objc_msgSend(v4, "count")))
  {
    v5 = [v4 pointerAtIndex:{objc_msgSend(v4, "count") - 1}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_topEnvironmentForFocusSystem:(id)a3
{
  v4 = a3;
  v5 = [v4 behavior];
  if (([v5 syncsFocusAndResponder] & 1) == 0)
  {

LABEL_6:
    v11 = v4;
    goto LABEL_7;
  }

  v6 = [v4 _hostFocusSystem];

  if (v6)
  {
    goto LABEL_6;
  }

  v7 = [(_UIFocusSystemSceneComponent *)self _windowScene];
  v8 = [(UIWindowScene *)v7 _keyWindow];

  v9 = [v8 firstResponder];
  v10 = _UIFocusEnvironmentSafeCast(v9);
  if (v10)
  {
    v11 = v10;

    goto LABEL_7;
  }

  if (!v9)
  {
    goto LABEL_6;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_preferredFocusEnvironmentsForFocusSystem:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 behavior];
  v5 = [v4 requiresLegacyScreenBasedWindowLookup];

  if (v5)
  {
    v6 = _forceUnwrappedScene(self);
    v7 = [_UIFocusSystemSceneComponent _screenForScene:v6];
    v8 = [v7 _preferredFocusedWindow];
    v9 = v8;
    if (v8 && ([v8 windowScene], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == v6))
    {
      v15[0] = v9;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v6 = [(_UIFocusSystemSceneComponent *)self _windowScene];
    v12 = [v6 keyWindow];
    v7 = v12;
    if (v12)
    {
      v14 = v12;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }
  }

  return v11;
}

- (BOOL)_focusSystem:(id)a3 shouldRestoreFocusInContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 nextFocusedItem];
  v9 = _UIFocusEnvironmentContainingView(v8);
  v10 = [v9 window];
  v11 = [v10 allowsWeakReference];

  if (v11 && ([v7 nextFocusedItem], v12 = objc_claimAutoreleasedReturnValue(), _UIFocusEnvironmentContainingView(v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "window"), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, v14, v14) && (objc_msgSend(v6, "behavior"), v15 = objc_claimAutoreleasedReturnValue(), -[_UIFocusSystemSceneComponent _windowScene](self, "_windowScene"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "screen"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v15, "allowsRestoringFocusForScreen:", v17), v17, v16, v15, v18) && (objc_msgSend(v7, "nextFocusedItem"), v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    v20 = [v6 behavior];
    v21 = [v20 ignoresKeyWindowStatusWhenRestoringFocus];

    if (v21)
    {
      v22 = 1;
    }

    else
    {
      v24 = [v7 nextFocusedItem];
      v25 = _UIFocusEnvironmentContainingView(v24);
      v26 = [v25 window];

      v27 = UIApp;
      v28 = [(_UIFocusSystemSceneComponent *)self _windowScene];
      v29 = [v28 screen];
      v30 = [v27 _keyWindowForScreen:v29];

      v22 = 0;
      if (v30 && v26 == v30)
      {
        v31 = [v30 windowScene];
        v32 = [(_UIFocusSystemSceneComponent *)self _windowScene];
        v22 = v31 == v32;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_focusSystem:(id)a3 willUpdateFocusInContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIFocusSystemSceneComponent *)self focusAnimationCoordinatorManager];
  v9 = [v8 willUpdateFocusInContext:v7];

  v10 = [v7 previouslyFocusedItem];
  IsKindOfUIView = _IsKindOfUIView(v10);

  v12 = [v7 nextFocusedItem];
  v13 = _IsKindOfUIView(v12);

  if ((IsKindOfUIView & 1) != 0 || v13)
  {
    v30 = v6;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v41 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __70___UIFocusSystemSceneComponent__focusSystem_willUpdateFocusInContext___block_invoke;
    v34 = &unk_1E710AD30;
    v14 = v7;
    v35 = v14;
    v15 = v9;
    v36 = v15;
    v37 = &v38;
    v16 = _Block_copy(&aBlock);
    v39[3] = v16;
    v17 = [v14 previouslyFocusedItem];
    v18 = [v14 nextFocusedItem];
    v19 = _UIFocusEnvironmentFirstCommonAncestor(v17, v18);
    v20 = v19;
    if (v19 && (v17 == v19 ? (v21 = IsKindOfUIView) : (v21 = 0), v18 == v19 ? (v22 = v13) : (v22 = 0), (v21 & 1) != 0 || v22))
    {
      [v15 _prepareForFocusAnimation:{1, v30, aBlock, v32, v33, v34, v35}];
      v16[2](v16, v20);
    }

    else
    {
      if (IsKindOfUIView)
      {
        [v15 _prepareForFocusAnimation:1];
        v16[2](v16, v17);
      }

      if (v13)
      {
        [v15 _prepareForFocusAnimation:0];
        v16[2](v16, v18);
      }
    }

    _Block_object_dispose(&v38, 8);
    v6 = v30;
  }

  v23 = [(_UIFocusSystemSceneComponent *)self _syncResponderWithFocusUpdateContext:v7, v30];
  expectedFirstResponder = self->_expectedFirstResponder;
  self->_expectedFirstResponder = v23;

  v25 = [v7 nextFocusedView];
  v26 = [v25 _responderWindow];

  v27 = [v7 previouslyFocusedView];
  v28 = [v27 _responderWindow];
  if (v28 == v26 || ![v26 canBecomeKeyWindow] || (objc_msgSend(v26, "isKeyWindow") & 1) != 0)
  {
  }

  else
  {
    v29 = [v26 _isTextEffectsWindow];

    if ((v29 & 1) == 0)
    {
      [v26 makeKeyWindow];
    }
  }
}

- (void)_focusSystem:(id)a3 didUpdateFocusInContext:(id)a4
{
  v23[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:v7];
  v9 = v8;
  if (self->_focusSystem == v6)
  {
    v22[0] = @"UIFocusUpdateContextKey";
    v22[1] = @"UIFocusUpdateAnimationCoordinatorKey";
    v23[0] = v7;
    v23[1] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 postNotificationName:@"UIFocusDidUpdateNotification" object:v6 userInfo:v10];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69___UIFocusSystemSceneComponent__focusSystem_didUpdateFocusInContext___block_invoke;
  v20[3] = &unk_1E70F35B8;
  v20[4] = self;
  v12 = v7;
  v21 = v12;
  [v9 addCoordinatedAnimations:v20 completion:0];
  v13 = [(_UIFocusSystemSceneComponent *)self focusAnimationCoordinatorManager];
  v14 = [v12 previouslyFocusedItem];
  [v13 didUpdateFocusInContext:v12 fromItem:v14];

  v15 = [v12 _request];
  LODWORD(v14) = [v15 shouldPerformHapticFeedback];

  if (v14)
  {
    v16 = [(_UIFocusSystemSceneComponent *)self hapticFeedbackGenerator];
    [v16 performHapticFeedbackForFocusUpdateInContext:v12];
  }

  v17 = [v12 _request];
  v18 = [v17 shouldPlayFocusSound];

  if (v18)
  {
    v19 = [(_UIFocusSystemSceneComponent *)self soundGenerator];
    [v19 playSoundForFocusUpdateInContext:v12];
  }
}

- (void)_focusSystem:(id)a3 didFinishUpdatingFocusInContext:(id)a4
{
  v17 = a3;
  v6 = a4;
  expectedFirstResponder = self->_expectedFirstResponder;
  if (expectedFirstResponder)
  {
    self->_expectedFirstResponder = 0;
    v8 = expectedFirstResponder;

    [(_UIFocusSystemSceneComponent *)self _validateFocusedItemForFirstResponder:v8];
  }

  v9 = [(_UIFocusSystemSceneComponent *)self scrollManager];
  [v9 performScrollingIfNeededForFocusUpdateInContext:v6];

  v10 = [v6 _focusMovement];
  v11 = [v10 _isVelocityBased];

  if ((v11 & 1) == 0)
  {
    v12 = UIApp;
    v13 = [(_UIFocusSystemSceneComponent *)self _windowScene];
    v14 = [v13 screen];
    v15 = [v12 _keyWindowForScreen:v14];

    v16 = [v15 _focusEventRecognizer];
    [v16 _resetProgressAccumulator];
  }
}

- (void)_focusSystem:(id)a3 willMessageOldFocusNodes:(id)a4
{
  v4 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:a4];
  [v4 _prepareForFocusAnimation:1];
}

- (void)_focusSystem:(id)a3 willMessageNewFocusNodes:(id)a4
{
  v4 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:a4];
  [v4 _prepareForFocusAnimation:0];
}

- (void)_focusSystem:(id)a3 environment:(id)a4 didUpdateFocusInContext:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:v6];
  [v7 didUpdateFocusInContext:v6 withAnimationCoordinator:v8];
}

- (CGRect)_clippingRectForFocusSystem:(id)a3 inCoordinateSpace:(id)a4
{
  v5 = a4;
  v6 = [(_UIFocusSystemSceneComponent *)self _windowScene];
  v7 = [v6 _coordinateSpace];
  v8 = [v6 _coordinateSpace];
  [v8 bounds];
  [v7 convertRect:v5 toCoordinateSpace:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)_shouldWaitForFocusMovementActionToEnableFocusSystem:(id)a3
{
  v3 = [a3 behavior];
  v4 = [v3 waitForFocusMovementActionToEnableFocusSystem];

  return v4;
}

- (BOOL)_focusSystem:(id)a3 handleFailedMovementRequest:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 movementInfo];
  v9 = [(_UIFocusSystemSceneComponent *)self _shouldForwardFocusMovementRequest:v7];
  if (v9)
  {
    v10 = [v6 focusedItem];
    v11 = [(_UIFocusSystemSceneComponent *)self coordinateSpace];
    v12 = _UIFocusItemFrameInCoordinateSpace(v10, v11);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [UIFocusMovementAction alloc];
    v20 = [v7 inputDeviceInfo];
    v21 = -[UIFocusMovementAction initWithFocusMovementInfo:inputDeviceInfo:shouldPerformHapticFeedback:focusedFrameInSceneCoordinateSpace:](v19, "initWithFocusMovementInfo:inputDeviceInfo:shouldPerformHapticFeedback:focusedFrameInSceneCoordinateSpace:", v8, v20, [v7 shouldPerformHapticFeedback], v12, v14, v16, v18);

    v22 = [(_UIFocusSystemSceneComponent *)self focusSystem];
    v23 = [v22 behavior];
    v24 = [v23 requiresLegacyScreenBasedWindowLookup];

    v25 = [(_UIFocusSystemSceneComponent *)self _windowScene];
    v26 = v25;
    v37 = v10;
    if (v24)
    {
      v27 = [v25 screen];
      v28 = [v27 _preferredFocusedWindow];
      [v28 _forwardFocusMovementAction:v21];
    }

    else
    {
      v27 = [v25 keyWindow];
      [v27 _forwardFocusMovementAction:v21];
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = [(_UIFocusSystemSceneComponent *)self _windowScene];
    v30 = [v29 _allWindows];

    v31 = [v30 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v39;
      do
      {
        v34 = 0;
        do
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [*(*(&v38 + 1) + 8 * v34) _focusEventRecognizer];
          [v35 reset];

          ++v34;
        }

        while (v32 != v34);
        v32 = [v30 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v32);
    }
  }

  return v9;
}

- (BOOL)_focusSystem:(id)a3 isScrollingScrollableContainer:(id)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = a4;
  v8 = [(_UIFocusSystemSceneComponent *)self scrollManager];
  v9 = [v8 isScrollingScrollableContainer:v7];

  if (a5 && v9)
  {
    v10 = [(_UIFocusSystemSceneComponent *)self scrollManager];
    [v10 targetContentOffsetForScrollableContainer:v7];
    a5->x = v11;
    a5->y = v12;
  }

  return v9;
}

- (BOOL)_shouldForwardFocusMovementRequest:(id)a3
{
  v4 = [a3 movementInfo];
  v5 = [(_UIFocusSystemSceneComponent *)self _windowScene];
  v6 = [v5 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if ([(_UIFocusSystemSceneComponent *)self _uiktest_allowsForwardingFocusMovementActions])
  {
    v8 = 0;
    if ([v4 _isInitialMovement] && v7 != 2)
    {
      v9 = [v5 traitCollection];
      v10 = [v9 userInterfaceIdiom];

      v8 = v10 == 3 || ([v4 heading] & 0x300) == 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_focusSystem:(id)a3 shouldReverseLayoutDirectionForEnvironment:(id)a4
{
  v4 = __viewOrWindowFallbackForRTLProbing(self, a4);
  v5 = [v4 _shouldReverseLayoutDirection];

  return v5;
}

- (BOOL)_focusSystem:(id)a3 shouldReverseLinearWrappingForEnvironment:(id)a4
{
  v4 = __viewOrWindowFallbackForRTLProbing(self, a4);
  v5 = [v4 _window];
  v6 = [v5 _reversesLinearFocusWrapping];

  return v6;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E698E680]) initWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v5 = [v3 appendObject:WeakRetained withName:@"scene"];

  v6 = [v3 appendObject:self->_focusSystem withName:@"focusSystem"];
  v7 = [v3 build];

  return v7;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end