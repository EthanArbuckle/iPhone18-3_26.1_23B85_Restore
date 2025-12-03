@interface _UIFocusSystemSceneComponent
+ (BOOL)__applicationIsSpringBoard;
+ (id)_screenForScene:(id)scene;
+ (id)sceneComponentForEnvironment:(id)environment;
+ (id)sceneComponentForFocusSystem:(id)system;
- (BOOL)_focusSystem:(id)system handleFailedMovementRequest:(id)request;
- (BOOL)_focusSystem:(id)system isScrollingScrollableContainer:(id)container targetContentOffset:(CGPoint *)offset;
- (BOOL)_focusSystem:(id)system shouldRestoreFocusInContext:(id)context;
- (BOOL)_focusSystem:(id)system shouldReverseLayoutDirectionForEnvironment:(id)environment;
- (BOOL)_focusSystem:(id)system shouldReverseLinearWrappingForEnvironment:(id)environment;
- (BOOL)_focusSystemExplicitlyDisabledForBehavior:(id)behavior;
- (BOOL)_isFocusSystemActive;
- (BOOL)_isSceneActive;
- (BOOL)_shouldForwardFocusMovementRequest:(id)request;
- (BOOL)_shouldWaitForFocusMovementActionToEnableFocusSystem:(id)system;
- (CGRect)_clippingRectForFocusSystem:(id)system inCoordinateSpace:(id)space;
- (NSString)description;
- (UICoordinateSpace)coordinateSpace;
- (UIScene)_scene;
- (UITraitCollection)_traitOverrides;
- (UIWindowScene)_windowScene;
- (_UIFocusEffectManager)_focusEffectManager;
- (_UIFocusSystemSceneComponent)initWithScene:(id)scene;
- (id)_focusBehaviorRespectingApplicationOverride:(BOOL)override;
- (id)_overridingPreferredFocusEnvironmentForFocusSystem:(id)system;
- (id)_preferredFocusEnvironmentsForFocusSystem:(id)system;
- (id)_syncResponderWithFocusUpdateContext:(id)context;
- (id)_topEnvironmentForFocusSystem:(id)system;
- (id)_windowsForFocusSearch;
- (void)_adjustFocusSystemAvailabilityUpdatingTraits:(BOOL)traits;
- (void)_delayedSetupFocusDebugWindow;
- (void)_firstResponderDidUpdateFromResponder:(id)responder;
- (void)_focusBehaviorDidChange:(id)change;
- (void)_focusSystem:(id)system didFinishUpdatingFocusInContext:(id)context;
- (void)_focusSystem:(id)system didUpdateFocusInContext:(id)context;
- (void)_focusSystem:(id)system environment:(id)environment didUpdateFocusInContext:(id)context;
- (void)_focusSystem:(id)system willMessageNewFocusNodes:(id)nodes;
- (void)_focusSystem:(id)system willMessageOldFocusNodes:(id)nodes;
- (void)_focusSystem:(id)system willUpdateFocusInContext:(id)context;
- (void)_notifyDidPerformFocusSystemInitialSetup;
- (void)_requestFocusEffectUpdateToEnvironment:(id)environment;
- (void)_resetFocusEventRecognizers;
- (void)_setupFocusSystem;
- (void)_tearDownFocusSystem;
- (void)_updateDeviceCapabilityObserver;
- (void)_updateFocusEffectForItem:(id)item;
- (void)_updateFocusSystemCapabilities;
- (void)_updateFocusSystemState;
- (void)_updateWantsModernRing;
- (void)_validateFocusedItemForFirstResponder:(id)responder;
- (void)pushPreferredFocusEnvironmentOverride:(id)override;
- (void)removePreferredFocusEnvironmentOverride:(id)override;
- (void)setOverrideFocusSystemEnabled:(BOOL)enabled withIdentifier:(id)identifier;
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
  focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
  v4 = focusSystem;
  if (focusSystem)
  {
    if ([focusSystem _isEnabled])
    {
      isActive = 2;
    }

    else
    {
      isActive = 1;
    }
  }

  else
  {
    v6 = [(_UIFocusSystemSceneComponent *)self _focusSystemExplicitlyDisabledForBehavior:0];
    isActive = 0;
    if (v6)
    {
      isActive = [(_UIFocusHardwareKeyboardObserver *)self->_hardwareKeyboardObserver isActive];
    }
  }

  v7 = [UITraitCollection _traitCollectionWithFocusSystemState:isActive];

  return v7;
}

- (void)_notifyDidPerformFocusSystemInitialSetup
{
  v11[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  _FBSScene = [WeakRetained _FBSScene];
  identityToken = [_FBSScene identityToken];
  stringRepresentation = [identityToken stringRepresentation];

  if (stringRepresentation)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    focusSystem = self->_focusSystem;
    v10 = 0x1EFB17090;
    v11[0] = stringRepresentation;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [defaultCenter postNotificationName:@"_UIFocusSystemSceneComponentDidFinishInitialization" object:focusSystem userInfo:v9];
  }
}

- (void)_updateDeviceCapabilityObserver
{
  v3 = [(_UIFocusSystemSceneComponent *)self _focusBehaviorRespectingApplicationOverride:0];
  requiredInputDevices = [v3 requiredInputDevices];
  objc_initWeak(&location, self);
  hardwareKeyboardObserver = self->_hardwareKeyboardObserver;
  if (requiredInputDevices)
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
  if ((requiredInputDevices & 2) != 0)
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
      _coordinateSpace = [v3 _coordinateSpace];
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

  _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
  screen = [_windowScene screen];

  if (!screen)
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
        selfCopy = self;
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        selfCopy = [v25 stringWithFormat:@"<%@: %p>", v28, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      v17 = selfCopy;
      _windowScene2 = [(_UIFocusSystemSceneComponent *)self _windowScene];
      if (_windowScene2)
      {
        v29 = MEMORY[0x1E696AEC0];
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v22 = [v29 stringWithFormat:@"<%@: %p>", v31, _windowScene2];
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

        mainScreen = [objc_opt_self() mainScreen];
        _coordinateSpace = [mainScreen coordinateSpace];

        goto LABEL_9;
      }

      if (self)
      {
        v12 = MEMORY[0x1E696AEC0];
        selfCopy2 = self;
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        selfCopy2 = [v12 stringWithFormat:@"<%@: %p>", v15, selfCopy2];
      }

      else
      {
        selfCopy2 = @"(nil)";
      }

      v17 = selfCopy2;
      _windowScene2 = [(_UIFocusSystemSceneComponent *)self _windowScene];
      if (_windowScene2)
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [v19 stringWithFormat:@"<%@: %p>", v21, _windowScene2];
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

  _coordinateSpace = [screen coordinateSpace];
LABEL_9:

LABEL_10:

  return _coordinateSpace;
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
  focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
  behavior = [focusSystem behavior];
  supportsMultipleWindows = [behavior supportsMultipleWindows];

  if (supportsMultipleWindows)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = MEMORY[0x1E695E0F0];
      goto LABEL_16;
    }

    _preferredFocusedWindow = [v3 _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
    v9 = [_preferredFocusedWindow sortedArrayWithOptions:16 usingComparator:&__block_literal_global_272];
  }

  else
  {
    focusSystem2 = [(_UIFocusSystemSceneComponent *)self focusSystem];
    behavior2 = [focusSystem2 behavior];
    requiresLegacyScreenBasedWindowLookup = [behavior2 requiresLegacyScreenBasedWindowLookup];

    if (requiresLegacyScreenBasedWindowLookup)
    {
      _preferredFocusedWindow = [v4 _preferredFocusedWindow];
      _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
      keyWindow = [_windowScene keyWindow];

      if (_preferredFocusedWindow && ([_preferredFocusedWindow windowScene], v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == v3))
      {
        v20[0] = _preferredFocusedWindow;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      }

      else
      {
        v16 = MEMORY[0x1E695E0F0];
      }

      goto LABEL_15;
    }

    _windowScene2 = [(_UIFocusSystemSceneComponent *)self _windowScene];
    _preferredFocusedWindow = [_windowScene2 keyWindow];

    if (!_preferredFocusedWindow)
    {
      v16 = MEMORY[0x1E695E0F0];
      goto LABEL_15;
    }

    v19 = _preferredFocusedWindow;
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
  focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
  behavior = [focusSystem behavior];
  focusCastingMode = [behavior focusCastingMode];

  if (focusCastingMode)
  {
    v4 = objc_alloc_init(_UIFocusCastingController);
    [focusSystem _setFocusCasting:v4];
    if (focusCastingMode == 2)
    {
      [(_UIFocusCastingController *)v4 setEntryPointMemorizationTimeout:0.0];
    }
  }

  else
  {
    [focusSystem _setFocusCasting:0];
  }
}

- (void)_updateFocusSystemState
{
  _isSceneActive = [(_UIFocusSystemSceneComponent *)self _isSceneActive];
  focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
  behavior = [focusSystem behavior];
  focusSystemDeactivationMode = [behavior focusSystemDeactivationMode];

  if (focusSystemDeactivationMode == 1)
  {
    v8 = &unk_1EFE30940;
    if (_isSceneActive)
    {
      v8 = 0;
    }

    v7 = v8;
    _isSceneActive = 1;
  }

  else
  {
    if (!focusSystemDeactivationMode)
    {
      _isSceneActive = [(_UIFocusSystemSceneComponent *)self _isFocusSystemActive];
    }

    v7 = 0;
  }

  v9 = v7;
  [(UIFocusSystem *)self->_focusSystem _setOverrideFocusDeferralBehavior:v7];
  [(UIFocusSystem *)self->_focusSystem _setEnabled:_isSceneActive];
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

      _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
      _allWindows = [_windowScene _allWindows];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __49___UIFocusSystemSceneComponent__setupFocusSystem__block_invoke_3;
      v30[3] = &unk_1E710ACE8;
      v30[4] = self;
      [_allWindows enumerateObjectsUsingBlock:v30];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__focusSystemEnabledStateDidChange_ name:@"_UIFocusSystemEnabledStateDidChangeNotification" object:self->_focusSystem];

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
  focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
  behavior = [focusSystem behavior];
  focusRingVisibility = [behavior focusRingVisibility];

  if (((focusRingVisibility & 0xFFFFFFFFFFFFFFFELL) == 2) == ((*&self->_flags & 2) == 0))
  {
    [UIFocusRingManager moveRingToFocusItem:0];
    _focusEffectManager = [(_UIFocusSystemSceneComponent *)self _focusEffectManager];
    [_focusEffectManager moveFocusToItem:0];

    *&self->_flags = *&self->_flags & 0xFD | (2 * ((focusRingVisibility & 0xFFFFFFFFFFFFFFFELL) == 2));
  }
}

- (void)_delayedSetupFocusDebugWindow
{
  if (self->_focusSystem && +[_UIFocusDebugWindow hasAnyModules])
  {
    v3 = [_UIFocusDebugWindow alloc];
    _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
    v5 = [(_UIFocusDebugWindow *)v3 initWithWindowScene:_windowScene];
    debugWindow = self->_debugWindow;
    self->_debugWindow = v5;

    v7 = self->_debugWindow;

    [(_UIFocusDebugWindow *)v7 setHidden:0];
  }
}

- (void)_tearDownFocusSystem
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIFocusSystemEnabledStateDidChangeNotification" object:self->_focusSystem];

  _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
  _allWindows = [_windowScene _allWindows];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52___UIFocusSystemSceneComponent__tearDownFocusSystem__block_invoke;
  v18[3] = &unk_1E710ACE8;
  v18[4] = self;
  [_allWindows enumerateObjectsUsingBlock:v18];

  focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
  [focusSystem _updateFocusImmediatelyToEnvironment:0];

  focusSystem2 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  [focusSystem2 _prepareForTeardown];

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

+ (id)sceneComponentForFocusSystem:(id)system
{
  v23 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  if (!systemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusSystemSceneComponent.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];
  }

  _hostFocusSystem = [systemCopy _hostFocusSystem];

  if (_hostFocusSystem)
  {
    do
    {
      _hostFocusSystem2 = [systemCopy _hostFocusSystem];

      v7_hostFocusSystem = [_hostFocusSystem2 _hostFocusSystem];

      systemCopy = _hostFocusSystem2;
    }

    while (v7_hostFocusSystem);
  }

  else
  {
    _hostFocusSystem2 = systemCopy;
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

        _focusSystemSceneComponent = [*(*(&v18 + 1) + 8 * i) _focusSystemSceneComponent];
        if ([objc_opt_class() needsFocusSystem])
        {
          focusSystem = [_focusSystemSceneComponent focusSystem];

          if (focusSystem == _hostFocusSystem2)
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
  _focusSystemSceneComponent = 0;
LABEL_18:

  return _focusSystemSceneComponent;
}

+ (id)sceneComponentForEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self sceneComponentForFocusSystem:environmentCopy];
LABEL_5:
    _focusSystemSceneComponent = v5;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = environmentCopy;
    goto LABEL_5;
  }

  v7 = _UIFocusEnvironmentContainingView(environmentCopy);
  _window = [v7 _window];
  windowScene = [_window windowScene];
  _focusSystemSceneComponent = [windowScene _focusSystemSceneComponent];
  if (!_focusSystemSceneComponent)
  {
    os_variant_has_internal_diagnostics();
  }

LABEL_9:

  return _focusSystemSceneComponent;
}

+ (id)_screenForScene:(id)scene
{
  sceneCopy = scene;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    screen = [sceneCopy screen];
  }

  else
  {
    screen = 0;
  }

  return screen;
}

- (_UIFocusSystemSceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = _UIFocusSystemSceneComponent;
  v5 = [(_UIFocusSystemSceneComponent *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
    *&v6->_flags |= 1u;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__focusBehaviorDidChange_ name:@"_UIFocusBehaviorDidChangeNotification" object:0];

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

- (void)_requestFocusEffectUpdateToEnvironment:(id)environment
{
  environmentCopy = environment;
  focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
  v5 = [focusSystem _focusedItemIsContainedInEnvironment:environmentCopy includeSelf:1];

  if (v5)
  {
    focusedItem = [focusSystem focusedItem];
    [(_UIFocusSystemSceneComponent *)self _updateFocusEffectForItem:focusedItem];
  }
}

- (void)_updateFocusEffectForItem:(id)item
{
  itemCopy = item;
  focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
  if (![focusSystem _isEnabled])
  {

    if ((*&self->_flags & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    _focusEffectManager = [(_UIFocusSystemSceneComponent *)self _focusEffectManager];
    v10 = _focusEffectManager;
    v11 = 0;
    goto LABEL_11;
  }

  focusSystem2 = [(_UIFocusSystemSceneComponent *)self focusSystem];
  behavior = [focusSystem2 behavior];
  v7 = [behavior showsFocusRingForItem:itemCopy];

  if ((*&self->_flags & 2) == 0)
  {
    if (v7)
    {
      v8 = itemCopy;
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

  _focusEffectManager = [(_UIFocusSystemSceneComponent *)self _focusEffectManager];
  v10 = _focusEffectManager;
  v11 = itemCopy;
LABEL_11:
  [_focusEffectManager moveFocusToItem:v11];

LABEL_12:
}

- (void)setOverrideFocusSystemEnabled:(BOOL)enabled withIdentifier:(id)identifier
{
  enabledCopy = enabled;
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusSystemSceneComponent.m" lineNumber:614 description:{@"Invalid parameter not satisfying: %@", @"uniqueIdentifier"}];
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  identifierCopy = [v8 stringWithFormat:@"<%@ %p>", v10, identifierCopy];

  isOverrideFocusSystemEnabled = [(_UIFocusSystemSceneComponent *)self isOverrideFocusSystemEnabled];
  overrideFocusSystemEnablementIdentifiers = self->_overrideFocusSystemEnablementIdentifiers;
  if (enabledCopy)
  {
    if (!overrideFocusSystemEnablementIdentifiers)
    {
      v14 = [MEMORY[0x1E695DFA8] set];
      v15 = self->_overrideFocusSystemEnablementIdentifiers;
      self->_overrideFocusSystemEnablementIdentifiers = v14;

      overrideFocusSystemEnablementIdentifiers = self->_overrideFocusSystemEnablementIdentifiers;
    }

    if (([(NSMutableSet *)overrideFocusSystemEnablementIdentifiers containsObject:identifierCopy]& 1) == 0)
    {
      [(NSMutableSet *)self->_overrideFocusSystemEnablementIdentifiers addObject:identifierCopy];
    }
  }

  else
  {
    [(NSMutableSet *)overrideFocusSystemEnablementIdentifiers removeObject:identifierCopy];
  }

  isOverrideFocusSystemEnabled2 = [(_UIFocusSystemSceneComponent *)self isOverrideFocusSystemEnabled];
  if (isOverrideFocusSystemEnabled != isOverrideFocusSystemEnabled2)
  {
    v17 = isOverrideFocusSystemEnabled2;
    v18 = *(__UILogGetCategoryCachedImpl("UIFocusSystemSceneComponent", &setOverrideFocusSystemEnabled_withIdentifier____s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"ENABLED";
      if (!v17)
      {
        v19 = @"DISABLED";
      }

      v20 = identifierCopy;
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIFocusBehaviorDidChangeNotification" object:0];
  }
}

- (void)_focusBehaviorDidChange:(id)change
{
  if (*&self->_flags)
  {
    v5 = [(_UIFocusSystemSceneComponent *)self _focusBehaviorRespectingApplicationOverride:1];
    focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
    [focusSystem setBehavior:v5];

    [(_UIFocusSystemSceneComponent *)self _updateWantsModernRing];
    [(_UIFocusSystemSceneComponent *)self _updateDeviceCapabilityObserver];

    [(_UIFocusSystemSceneComponent *)self _adjustFocusSystemAvailability];
  }
}

- (void)_adjustFocusSystemAvailabilityUpdatingTraits:(BOOL)traits
{
  traitsCopy = traits;
  _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
  v5 = [(_UIFocusSystemSceneComponent *)self _focusBehaviorRespectingApplicationOverride:1];
  hardwareKeyboardObserver = self->_hardwareKeyboardObserver;
  if (hardwareKeyboardObserver)
  {
    isActive = [(_UIFocusHardwareKeyboardObserver *)hardwareKeyboardObserver isActive];
    gameControllerObserver = self->_gameControllerObserver;
    if (gameControllerObserver)
    {
LABEL_3:
      isActive2 = [(_UIFocusGameControllerObserver *)gameControllerObserver isActive];
      goto LABEL_6;
    }
  }

  else
  {
    gameControllerObserver = self->_gameControllerObserver;
    isActive = gameControllerObserver == 0;
    if (gameControllerObserver)
    {
      goto LABEL_3;
    }
  }

  isActive2 = 0;
LABEL_6:
  if (_windowScene)
  {
    v10 = [v5 wantsFocusSystemForScene:?];
  }

  else
  {
    v10 = 0;
  }

  v11 = isActive || isActive2;
  focusSystem = self->_focusSystem;
  v13 = v10 & v11;
  if (!focusSystem || (v13 & 1) != 0)
  {
    if (((focusSystem == 0) & v13) == 1)
    {
      [(_UIFocusSystemSceneComponent *)self _setupFocusSystem];
      if (traitsCopy)
      {
LABEL_21:
        [_windowScene _componentDidUpdateTraitOverrides:self];
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
      if (traitsCopy)
      {
        goto LABEL_21;
      }
    }

    else if (traitsCopy)
    {
      goto LABEL_21;
    }
  }

  else
  {
    [(_UIFocusSystemSceneComponent *)self _tearDownFocusSystem];
    if (traitsCopy)
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
    focusedItem = [(UIFocusSystem *)self->_focusSystem focusedItem];

    if (!focusedItem)
    {
      [(UIFocusSystem *)self->_focusSystem requestFocusUpdateToEnvironment:self->_focusSystem];
      [(UIFocusSystem *)self->_focusSystem updateFocusIfNeeded];
    }
  }

LABEL_25:
}

- (BOOL)_focusSystemExplicitlyDisabledForBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if (behaviorCopy)
  {
    v5 = behaviorCopy;
  }

  else
  {
    _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
    traitCollection = [_windowScene traitCollection];
    v5 = _UIFocusBaseBehaviorForTraitCollection(traitCollection);

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

- (id)_focusBehaviorRespectingApplicationOverride:(BOOL)override
{
  overrideCopy = override;
  _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
  traitCollection = [_windowScene traitCollection];

  v7 = _UIFocusBaseBehaviorForTraitCollection(traitCollection);
  if (overrideCopy && [(_UIFocusSystemSceneComponent *)self _focusSystemExplicitlyDisabledForBehavior:v7])
  {

    v7 = 0;
  }

  return v7;
}

- (void)_resetFocusEventRecognizers
{
  v12 = *MEMORY[0x1E69E9840];
  _windowsForFocusSearch = [(_UIFocusSystemSceneComponent *)self _windowsForFocusSearch];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [_windowsForFocusSearch countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(_windowsForFocusSearch);
        }

        [*(*(&v7 + 1) + 8 * v6++) _resetFocusEventRecognizer];
      }

      while (v4 != v6);
      v4 = [_windowsForFocusSearch countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)pushPreferredFocusEnvironmentOverride:(id)override
{
  overrideCopy = override;
  preferredFocusEnvironmentOverride = [(_UIFocusSystemSceneComponent *)self preferredFocusEnvironmentOverride];

  if (!preferredFocusEnvironmentOverride)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    preferredFocusEnvironmentOverride = self->_preferredFocusEnvironmentOverride;
    self->_preferredFocusEnvironmentOverride = weakObjectsPointerArray;
  }

  preferredFocusEnvironmentOverride2 = [(_UIFocusSystemSceneComponent *)self preferredFocusEnvironmentOverride];
  [preferredFocusEnvironmentOverride2 addPointer:overrideCopy];
}

- (void)removePreferredFocusEnvironmentOverride:(id)override
{
  v22 = *MEMORY[0x1E69E9840];
  overrideCopy = override;
  preferredFocusEnvironmentOverride = [(_UIFocusSystemSceneComponent *)self preferredFocusEnvironmentOverride];
  [preferredFocusEnvironmentOverride compact];
  if ([preferredFocusEnvironmentOverride count])
  {
    v6 = [preferredFocusEnvironmentOverride count] - 1;
    while (1)
    {
      v7 = v6;
      if ((v6 & 0x80000000) != 0)
      {
        break;
      }

      0x7FFFFFFF = [preferredFocusEnvironmentOverride pointerAtIndex:v6 & 0x7FFFFFFF];
      v6 = v7 - 1;
      if (0x7FFFFFFF == overrideCopy)
      {
        [preferredFocusEnvironmentOverride removePointerAtIndex:v7 & 0x7FFFFFFF];
        goto LABEL_18;
      }
    }

    v9 = *(__UILogGetCategoryCachedImpl("UIFocusSystemSceneComponent", &qword_1ED49E1C8) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = overrideCopy;
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
      v10 = overrideCopy;
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

- (id)_syncResponderWithFocusUpdateContext:(id)context
{
  contextCopy = context;
  focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
  behavior = [focusSystem behavior];

  if ([behavior syncsFocusAndResponder])
  {
    nextFocusedItem = [contextCopy nextFocusedItem];
    v8 = nextFocusedItem;
    if (nextFocusedItem)
    {
      v9 = _UIFirstResponderCandidateForEnvironment(nextFocusedItem);
      _nextResponderThatCanBecomeFirstResponder = [v9 _nextResponderThatCanBecomeFirstResponder];
      v11 = _nextResponderThatCanBecomeFirstResponder;
      if (!_nextResponderThatCanBecomeFirstResponder || ([_nextResponderThatCanBecomeFirstResponder isFirstResponder] & 1) == 0 && objc_msgSend(v11, "_allowsChangingFirstResponderForFocusUpdateWithContext:", contextCopy))
      {
        v12 = _UIFocusEnvironmentContainingView(v8);
        _window = [v12 _window];
        firstResponder = [_window firstResponder];
        v15 = firstResponder;
        if ((!firstResponder || [firstResponder _allowsChangingFirstResponderForFocusUpdateWithContext:contextCopy]) && (!v11 || !+[UIResponder _callBecomeFirstResponder:withIntent:](UIResponder, "_callBecomeFirstResponder:withIntent:", v11, 1)))
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

- (void)_firstResponderDidUpdateFromResponder:(id)responder
{
  v33 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  if (+[UIResponder _currentChangeIntent]!= 1)
  {
    focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
    behavior = [focusSystem behavior];

    if ([behavior syncsFocusAndResponder])
    {
      v26 = behavior;
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
            _hostFocusSystem = [v11 _hostFocusSystem];

            if (_hostFocusSystem)
            {
              do
              {
                _hostFocusSystem2 = [v11 _hostFocusSystem];

                v13_hostFocusSystem = [_hostFocusSystem2 _hostFocusSystem];

                v11 = _hostFocusSystem2;
              }

              while (v13_hostFocusSystem);
            }

            else
            {
              _hostFocusSystem2 = v11;
            }

            focusSystem2 = [(_UIFocusSystemSceneComponent *)self focusSystem];

            if (_hostFocusSystem2 == focusSystem2)
            {
              v16 = +[UIWindow _applicationKeyWindow];
              firstResponder = [v16 firstResponder];

              v18 = _UIFocusEnvironmentSafeCast(firstResponder);
              if (responderCopy)
              {
                v19 = _UIFocusEnvironmentSafeCast(responderCopy);
                if (v19)
                {
                  v20 = [_hostFocusSystem2 _focusedItemIsContainedInEnvironment:responderCopy includeSelf:1] ^ 1;
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
                if (firstResponder)
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
                  focusSystem3 = [(_UIFocusSystemSceneComponent *)self focusSystem];
                  [focusSystem3 _updateFocusImmediatelyToEnvironment:0];

LABEL_32:
                }

                goto LABEL_34;
              }

              if (v20 & ((firstResponder == 0) | [_hostFocusSystem2 _focusedItemIsContainedInEnvironment:v18 includeSelf:1]))
              {
                goto LABEL_32;
              }

              focusSystem4 = [(_UIFocusSystemSceneComponent *)self focusSystem];
              focusedItem = [focusSystem4 focusedItem];

              if (focusedItem == v18)
              {
                goto LABEL_32;
              }

              focusSystem5 = [(_UIFocusSystemSceneComponent *)self focusSystem];
              [focusSystem5 _updateFocusImmediatelyToEnvironment:v18];
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

      behavior = v26;
    }
  }
}

- (void)_validateFocusedItemForFirstResponder:(id)responder
{
  v90 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
  behavior = [focusSystem behavior];

  if ([behavior syncsFocusAndResponder])
  {
    focusSystem2 = [(_UIFocusSystemSceneComponent *)self focusSystem];
    focusedItem = [focusSystem2 focusedItem];

    if (responderCopy && focusedItem && ([responderCopy isFirstResponder] & 1) == 0)
    {
      v9 = +[UIWindow _applicationKeyWindow];
      firstResponder = [v9 firstResponder];

      if (firstResponder)
      {
        v11 = _UIFocusEnvironmentSafeCast(firstResponder);

        v12 = @"N";
        if (v11 && _UIFocusEnvironmentIsAncestorOfEnvironment(firstResponder, focusedItem))
        {
          v12 = @"Y";
        }
      }

      else
      {
        v12 = @"N";
      }

      v13 = _UIFocusEnvironmentSafeCast(responderCopy);

      v14 = @"N";
      if (v13 && _UIFocusEnvironmentIsAncestorOfEnvironment(responderCopy, focusedItem))
      {
        v14 = @"Y";
      }

      v15 = *(__UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49E1D8) + 8);
      v78 = v12;
      v79 = firstResponder;
      v77 = v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v67 = v15;
        v16 = MEMORY[0x1E696AEC0];
        v74 = focusedItem;
        v17 = focusedItem;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = [v16 stringWithFormat:@"<%@: %p>", v19, v17];

        v21 = v20;
        firstResponder = v79;
        v69 = v21;
        v22 = MEMORY[0x1E696AEC0];
        v23 = responderCopy;
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

          firstResponder = v79;
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

        focusedItem = v74;
      }

      if (os_variant_has_internal_diagnostics())
      {
        v53 = v14;
        v54 = v12;
        v33 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          v70 = MEMORY[0x1E696AEC0];
          v76 = focusedItem;
          v55 = focusedItem;
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          v71 = [v70 stringWithFormat:@"<%@: %p>", v57, v55];

          v68 = v71;
          v72 = MEMORY[0x1E696AEC0];
          v58 = responderCopy;
          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          v61 = [v72 stringWithFormat:@"<%@: %p>", v60, v58];

          v73 = v61;
          v62 = firstResponder;
          if (firstResponder)
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

          focusedItem = v76;
        }
      }

      else
      {
        v33 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49E1E0) + 8);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v75 = v33;
          v34 = MEMORY[0x1E696AEC0];
          v35 = firstResponder;
          v36 = focusedItem;
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = [v34 stringWithFormat:@"<%@: %p>", v38, v36];

          v40 = v39;
          v41 = MEMORY[0x1E696AEC0];
          v42 = responderCopy;
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

          firstResponder = v79;
        }
      }

      focusSystem3 = [(_UIFocusSystemSceneComponent *)self focusSystem];
      [focusSystem3 _updateFocusImmediatelyToEnvironment:0];
    }
  }
}

- (id)_overridingPreferredFocusEnvironmentForFocusSystem:(id)system
{
  preferredFocusEnvironmentOverride = [(_UIFocusSystemSceneComponent *)self preferredFocusEnvironmentOverride];
  v4 = preferredFocusEnvironmentOverride;
  if (preferredFocusEnvironmentOverride && ([preferredFocusEnvironmentOverride compact], objc_msgSend(v4, "count")))
  {
    v5 = [v4 pointerAtIndex:{objc_msgSend(v4, "count") - 1}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_topEnvironmentForFocusSystem:(id)system
{
  systemCopy = system;
  behavior = [systemCopy behavior];
  if (([behavior syncsFocusAndResponder] & 1) == 0)
  {

LABEL_6:
    v11 = systemCopy;
    goto LABEL_7;
  }

  _hostFocusSystem = [systemCopy _hostFocusSystem];

  if (_hostFocusSystem)
  {
    goto LABEL_6;
  }

  _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
  _keyWindow = [(UIWindowScene *)_windowScene _keyWindow];

  firstResponder = [_keyWindow firstResponder];
  v10 = _UIFocusEnvironmentSafeCast(firstResponder);
  if (v10)
  {
    v11 = v10;

    goto LABEL_7;
  }

  if (!firstResponder)
  {
    goto LABEL_6;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_preferredFocusEnvironmentsForFocusSystem:(id)system
{
  v15[1] = *MEMORY[0x1E69E9840];
  behavior = [system behavior];
  requiresLegacyScreenBasedWindowLookup = [behavior requiresLegacyScreenBasedWindowLookup];

  if (requiresLegacyScreenBasedWindowLookup)
  {
    _windowScene = _forceUnwrappedScene(self);
    v7 = [_UIFocusSystemSceneComponent _screenForScene:_windowScene];
    _preferredFocusedWindow = [v7 _preferredFocusedWindow];
    v9 = _preferredFocusedWindow;
    if (_preferredFocusedWindow && ([_preferredFocusedWindow windowScene], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == _windowScene))
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
    _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
    keyWindow = [_windowScene keyWindow];
    v7 = keyWindow;
    if (keyWindow)
    {
      v14 = keyWindow;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }
  }

  return v11;
}

- (BOOL)_focusSystem:(id)system shouldRestoreFocusInContext:(id)context
{
  systemCopy = system;
  contextCopy = context;
  nextFocusedItem = [contextCopy nextFocusedItem];
  v9 = _UIFocusEnvironmentContainingView(nextFocusedItem);
  window = [v9 window];
  allowsWeakReference = [window allowsWeakReference];

  if (allowsWeakReference && ([contextCopy nextFocusedItem], v12 = objc_claimAutoreleasedReturnValue(), _UIFocusEnvironmentContainingView(v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "window"), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, v14, v14) && (objc_msgSend(systemCopy, "behavior"), v15 = objc_claimAutoreleasedReturnValue(), -[_UIFocusSystemSceneComponent _windowScene](self, "_windowScene"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "screen"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v15, "allowsRestoringFocusForScreen:", v17), v17, v16, v15, v18) && (objc_msgSend(contextCopy, "nextFocusedItem"), v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    behavior = [systemCopy behavior];
    ignoresKeyWindowStatusWhenRestoringFocus = [behavior ignoresKeyWindowStatusWhenRestoringFocus];

    if (ignoresKeyWindowStatusWhenRestoringFocus)
    {
      v22 = 1;
    }

    else
    {
      nextFocusedItem2 = [contextCopy nextFocusedItem];
      v25 = _UIFocusEnvironmentContainingView(nextFocusedItem2);
      window2 = [v25 window];

      v27 = UIApp;
      _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
      screen = [_windowScene screen];
      v30 = [v27 _keyWindowForScreen:screen];

      v22 = 0;
      if (v30 && window2 == v30)
      {
        windowScene = [v30 windowScene];
        _windowScene2 = [(_UIFocusSystemSceneComponent *)self _windowScene];
        v22 = windowScene == _windowScene2;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_focusSystem:(id)system willUpdateFocusInContext:(id)context
{
  systemCopy = system;
  contextCopy = context;
  focusAnimationCoordinatorManager = [(_UIFocusSystemSceneComponent *)self focusAnimationCoordinatorManager];
  v9 = [focusAnimationCoordinatorManager willUpdateFocusInContext:contextCopy];

  previouslyFocusedItem = [contextCopy previouslyFocusedItem];
  IsKindOfUIView = _IsKindOfUIView(previouslyFocusedItem);

  nextFocusedItem = [contextCopy nextFocusedItem];
  v13 = _IsKindOfUIView(nextFocusedItem);

  if ((IsKindOfUIView & 1) != 0 || v13)
  {
    v30 = systemCopy;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v41 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __70___UIFocusSystemSceneComponent__focusSystem_willUpdateFocusInContext___block_invoke;
    v34 = &unk_1E710AD30;
    v14 = contextCopy;
    v35 = v14;
    v15 = v9;
    v36 = v15;
    v37 = &v38;
    v16 = _Block_copy(&aBlock);
    v39[3] = v16;
    previouslyFocusedItem2 = [v14 previouslyFocusedItem];
    nextFocusedItem2 = [v14 nextFocusedItem];
    v19 = _UIFocusEnvironmentFirstCommonAncestor(previouslyFocusedItem2, nextFocusedItem2);
    v20 = v19;
    if (v19 && (previouslyFocusedItem2 == v19 ? (v21 = IsKindOfUIView) : (v21 = 0), nextFocusedItem2 == v19 ? (v22 = v13) : (v22 = 0), (v21 & 1) != 0 || v22))
    {
      [v15 _prepareForFocusAnimation:{1, v30, aBlock, v32, v33, v34, v35}];
      v16[2](v16, v20);
    }

    else
    {
      if (IsKindOfUIView)
      {
        [v15 _prepareForFocusAnimation:1];
        v16[2](v16, previouslyFocusedItem2);
      }

      if (v13)
      {
        [v15 _prepareForFocusAnimation:0];
        v16[2](v16, nextFocusedItem2);
      }
    }

    _Block_object_dispose(&v38, 8);
    systemCopy = v30;
  }

  v23 = [(_UIFocusSystemSceneComponent *)self _syncResponderWithFocusUpdateContext:contextCopy, v30];
  expectedFirstResponder = self->_expectedFirstResponder;
  self->_expectedFirstResponder = v23;

  nextFocusedView = [contextCopy nextFocusedView];
  _responderWindow = [nextFocusedView _responderWindow];

  previouslyFocusedView = [contextCopy previouslyFocusedView];
  _responderWindow2 = [previouslyFocusedView _responderWindow];
  if (_responderWindow2 == _responderWindow || ![_responderWindow canBecomeKeyWindow] || (objc_msgSend(_responderWindow, "isKeyWindow") & 1) != 0)
  {
  }

  else
  {
    _isTextEffectsWindow = [_responderWindow _isTextEffectsWindow];

    if ((_isTextEffectsWindow & 1) == 0)
    {
      [_responderWindow makeKeyWindow];
    }
  }
}

- (void)_focusSystem:(id)system didUpdateFocusInContext:(id)context
{
  v23[2] = *MEMORY[0x1E69E9840];
  systemCopy = system;
  contextCopy = context;
  v8 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:contextCopy];
  v9 = v8;
  if (self->_focusSystem == systemCopy)
  {
    v22[0] = @"UIFocusUpdateContextKey";
    v22[1] = @"UIFocusUpdateAnimationCoordinatorKey";
    v23[0] = contextCopy;
    v23[1] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIFocusDidUpdateNotification" object:systemCopy userInfo:v10];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69___UIFocusSystemSceneComponent__focusSystem_didUpdateFocusInContext___block_invoke;
  v20[3] = &unk_1E70F35B8;
  v20[4] = self;
  v12 = contextCopy;
  v21 = v12;
  [v9 addCoordinatedAnimations:v20 completion:0];
  focusAnimationCoordinatorManager = [(_UIFocusSystemSceneComponent *)self focusAnimationCoordinatorManager];
  previouslyFocusedItem = [v12 previouslyFocusedItem];
  [focusAnimationCoordinatorManager didUpdateFocusInContext:v12 fromItem:previouslyFocusedItem];

  _request = [v12 _request];
  LODWORD(previouslyFocusedItem) = [_request shouldPerformHapticFeedback];

  if (previouslyFocusedItem)
  {
    hapticFeedbackGenerator = [(_UIFocusSystemSceneComponent *)self hapticFeedbackGenerator];
    [hapticFeedbackGenerator performHapticFeedbackForFocusUpdateInContext:v12];
  }

  _request2 = [v12 _request];
  shouldPlayFocusSound = [_request2 shouldPlayFocusSound];

  if (shouldPlayFocusSound)
  {
    soundGenerator = [(_UIFocusSystemSceneComponent *)self soundGenerator];
    [soundGenerator playSoundForFocusUpdateInContext:v12];
  }
}

- (void)_focusSystem:(id)system didFinishUpdatingFocusInContext:(id)context
{
  systemCopy = system;
  contextCopy = context;
  expectedFirstResponder = self->_expectedFirstResponder;
  if (expectedFirstResponder)
  {
    self->_expectedFirstResponder = 0;
    v8 = expectedFirstResponder;

    [(_UIFocusSystemSceneComponent *)self _validateFocusedItemForFirstResponder:v8];
  }

  scrollManager = [(_UIFocusSystemSceneComponent *)self scrollManager];
  [scrollManager performScrollingIfNeededForFocusUpdateInContext:contextCopy];

  _focusMovement = [contextCopy _focusMovement];
  _isVelocityBased = [_focusMovement _isVelocityBased];

  if ((_isVelocityBased & 1) == 0)
  {
    v12 = UIApp;
    _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
    screen = [_windowScene screen];
    v15 = [v12 _keyWindowForScreen:screen];

    _focusEventRecognizer = [v15 _focusEventRecognizer];
    [_focusEventRecognizer _resetProgressAccumulator];
  }
}

- (void)_focusSystem:(id)system willMessageOldFocusNodes:(id)nodes
{
  v4 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:nodes];
  [v4 _prepareForFocusAnimation:1];
}

- (void)_focusSystem:(id)system willMessageNewFocusNodes:(id)nodes
{
  v4 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:nodes];
  [v4 _prepareForFocusAnimation:0];
}

- (void)_focusSystem:(id)system environment:(id)environment didUpdateFocusInContext:(id)context
{
  contextCopy = context;
  environmentCopy = environment;
  v8 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:contextCopy];
  [environmentCopy didUpdateFocusInContext:contextCopy withAnimationCoordinator:v8];
}

- (CGRect)_clippingRectForFocusSystem:(id)system inCoordinateSpace:(id)space
{
  spaceCopy = space;
  _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
  _coordinateSpace = [_windowScene _coordinateSpace];
  _coordinateSpace2 = [_windowScene _coordinateSpace];
  [_coordinateSpace2 bounds];
  [_coordinateSpace convertRect:spaceCopy toCoordinateSpace:?];
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

- (BOOL)_shouldWaitForFocusMovementActionToEnableFocusSystem:(id)system
{
  behavior = [system behavior];
  waitForFocusMovementActionToEnableFocusSystem = [behavior waitForFocusMovementActionToEnableFocusSystem];

  return waitForFocusMovementActionToEnableFocusSystem;
}

- (BOOL)_focusSystem:(id)system handleFailedMovementRequest:(id)request
{
  v43 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  requestCopy = request;
  movementInfo = [requestCopy movementInfo];
  v9 = [(_UIFocusSystemSceneComponent *)self _shouldForwardFocusMovementRequest:requestCopy];
  if (v9)
  {
    focusedItem = [systemCopy focusedItem];
    coordinateSpace = [(_UIFocusSystemSceneComponent *)self coordinateSpace];
    v12 = _UIFocusItemFrameInCoordinateSpace(focusedItem, coordinateSpace);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [UIFocusMovementAction alloc];
    inputDeviceInfo = [requestCopy inputDeviceInfo];
    v21 = -[UIFocusMovementAction initWithFocusMovementInfo:inputDeviceInfo:shouldPerformHapticFeedback:focusedFrameInSceneCoordinateSpace:](v19, "initWithFocusMovementInfo:inputDeviceInfo:shouldPerformHapticFeedback:focusedFrameInSceneCoordinateSpace:", movementInfo, inputDeviceInfo, [requestCopy shouldPerformHapticFeedback], v12, v14, v16, v18);

    focusSystem = [(_UIFocusSystemSceneComponent *)self focusSystem];
    behavior = [focusSystem behavior];
    requiresLegacyScreenBasedWindowLookup = [behavior requiresLegacyScreenBasedWindowLookup];

    _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
    v26 = _windowScene;
    v37 = focusedItem;
    if (requiresLegacyScreenBasedWindowLookup)
    {
      screen = [_windowScene screen];
      _preferredFocusedWindow = [screen _preferredFocusedWindow];
      [_preferredFocusedWindow _forwardFocusMovementAction:v21];
    }

    else
    {
      screen = [_windowScene keyWindow];
      [screen _forwardFocusMovementAction:v21];
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    _windowScene2 = [(_UIFocusSystemSceneComponent *)self _windowScene];
    _allWindows = [_windowScene2 _allWindows];

    v31 = [_allWindows countByEnumeratingWithState:&v38 objects:v42 count:16];
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
            objc_enumerationMutation(_allWindows);
          }

          _focusEventRecognizer = [*(*(&v38 + 1) + 8 * v34) _focusEventRecognizer];
          [_focusEventRecognizer reset];

          ++v34;
        }

        while (v32 != v34);
        v32 = [_allWindows countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v32);
    }
  }

  return v9;
}

- (BOOL)_focusSystem:(id)system isScrollingScrollableContainer:(id)container targetContentOffset:(CGPoint *)offset
{
  containerCopy = container;
  scrollManager = [(_UIFocusSystemSceneComponent *)self scrollManager];
  v9 = [scrollManager isScrollingScrollableContainer:containerCopy];

  if (offset && v9)
  {
    scrollManager2 = [(_UIFocusSystemSceneComponent *)self scrollManager];
    [scrollManager2 targetContentOffsetForScrollableContainer:containerCopy];
    offset->x = v11;
    offset->y = v12;
  }

  return v9;
}

- (BOOL)_shouldForwardFocusMovementRequest:(id)request
{
  movementInfo = [request movementInfo];
  _windowScene = [(_UIFocusSystemSceneComponent *)self _windowScene];
  traitCollection = [_windowScene traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if ([(_UIFocusSystemSceneComponent *)self _uiktest_allowsForwardingFocusMovementActions])
  {
    v8 = 0;
    if ([movementInfo _isInitialMovement] && userInterfaceIdiom != 2)
    {
      traitCollection2 = [_windowScene traitCollection];
      userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

      v8 = userInterfaceIdiom2 == 3 || ([movementInfo heading] & 0x300) == 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_focusSystem:(id)system shouldReverseLayoutDirectionForEnvironment:(id)environment
{
  v4 = __viewOrWindowFallbackForRTLProbing(self, environment);
  _shouldReverseLayoutDirection = [v4 _shouldReverseLayoutDirection];

  return _shouldReverseLayoutDirection;
}

- (BOOL)_focusSystem:(id)system shouldReverseLinearWrappingForEnvironment:(id)environment
{
  v4 = __viewOrWindowFallbackForRTLProbing(self, environment);
  _window = [v4 _window];
  _reversesLinearFocusWrapping = [_window _reversesLinearFocusWrapping];

  return _reversesLinearFocusWrapping;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E698E680]) initWithObject:self];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v5 = [v3 appendObject:WeakRetained withName:@"scene"];

  v6 = [v3 appendObject:self->_focusSystem withName:@"focusSystem"];
  build = [v3 build];

  return build;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end