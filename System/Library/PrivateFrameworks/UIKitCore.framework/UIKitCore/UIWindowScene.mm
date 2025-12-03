@interface UIWindowScene
+ (UIWindowScene)_keyWindowScene;
+ (void)_updateVisibleSceneAndWindowOrderWithTest:(id)test;
- (BOOL)_allowsEventUIWindowRouting;
- (BOOL)_canReceiveDeviceOrientationEvents;
- (BOOL)_isInLiveResize;
- (BOOL)_isKeyWindowScene;
- (BOOL)_permitContextCreationForBindingDescription:(id *)description;
- (BOOL)_shouldDeferInitialWindowUpdateBeforeConnection:(id)connection;
- (BOOL)_shouldDeferInitialWindowUpdateBeforeConnectionAndTrackIfNeeded:(id)needed;
- (BOOL)_shouldRotateSafeAreaInsetsToInterfaceOrientation;
- (BOOL)_supportsPassthroughInteractions;
- (BOOL)_usesSceneSettingBasedSafeAreaInsets;
- (BOOL)assertionActivationStateForType:(unint64_t)type;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (CGRect)_referenceBounds;
- (CGRect)_referenceBoundsForOrientation:(int64_t)orientation;
- (CGRect)bounds;
- (CGRect)convertRect:(CGRect)rect fromMaskingCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toMaskingCoordinateSpace:(id)space;
- (CGSize)_screenRequestedDisplayNativePixelSize;
- (FBSDisplayConfigurationRequest)_displayConfigurationRequest;
- (UIActivityItemsConfigurationReading)_activityItemsConfiguration;
- (UIEdgeInsets)_peripheryInsets;
- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)orientation;
- (UIFocusSystem)focusSystem;
- (UISceneSizeRestrictions)sizeRestrictions;
- (UIScreen)screen;
- (UIScreenshotService)screenshotService;
- (UIStatusBarManager)statusBarManager;
- (UITraitCollection)traitCollection;
- (UIWindow)_delegateWindow;
- (UIWindowScene)initWithSession:(id)session connectionOptions:(id)options;
- (UIWindowSceneGeometry)effectiveGeometry;
- (_UICornerInsets)_safeAreaCornerInsets;
- (_UICornerInsets)_safeAreaCornerInsetsForInterfaceOrientation:(SEL)orientation;
- (_UIDisplayInfoProviding)_displayInfoProvider;
- (_UISceneUIWindowEventRouting)_sceneForKeyboardDisplay;
- (_UISearchActivityManager)_searchActivityManager;
- (_UISuperlayerSecurityAnalysisSceneComponent)_superlayerSecurityAnalysisSceneComponent;
- (_UITraitEnvironmentInternal)_overrideParentTraitEnvironment;
- (_UITypedStorage)_typedStorage;
- (_UIWindowSceneTransitionCoordinator)_transitionCoordinator;
- (double)_adjustedLevelForWindow:(id)window preferredLevel:(double)level;
- (double)_systemMinimumMargin;
- (id)_allWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows;
- (id)_contentSizePreferenceProvider;
- (id)_contextMenuAvoidanceSceneComponent;
- (id)_contextMenuSceneComponent;
- (id)_disableTouchCancellationOnRotation;
- (id)_editMenuSceneComponent;
- (id)_fbsSceneLayerForWindow:(id)window;
- (id)_findNewKeyWindowPassingTest:(void *)test;
- (id)_inheritingWindowsIncludingInvisible:(BOOL)invisible;
- (id)_internalCoordinateSpace;
- (id)_keyWindow;
- (id)_keyboardOverridingSceneComponent;
- (id)_orientationDebugDescriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)_orientationDebugDescriptionWithMultilinePrefix:(id)prefix;
- (id)_parentTraitCollection;
- (id)_parentTraitEnvironment;
- (id)_playbackControlsStateManager;
- (id)_registerForTraitTokenChanges:(id)changes withHandler:(id)handler;
- (id)_registerForTraitTokenChanges:(id)changes withTarget:(id)target action:(SEL)action;
- (id)_remoteSheetClientProvider;
- (id)_sceneMaskingCoordinator;
- (id)_screenTraitCollectionWithOverridesAppliedFromSceneUISettings;
- (id)_systemInputActivityManager;
- (id)_topVisibleWindowEnumeratingAsCopy:(BOOL)copy passingTest:(id)test;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)_windowOrientationPreferencesObserver;
- (id)_windowSceneDelegate;
- (id)activityItemsConfigurationSource;
- (id)registerForTraitChanges:(id)changes withAction:(SEL)action;
- (id)registerForTraitChanges:(id)changes withHandler:(id)handler;
- (id)registerForTraitChanges:(id)changes withTarget:(id)target action:(SEL)action;
- (int64_t)_backgroundStyle;
- (int64_t)_interfaceOrientationForSupportedOrientations:(unint64_t)orientations preferredOrientation:(int64_t)orientation;
- (int64_t)_resolvedOverscanCompensation;
- (int64_t)_systemUserInterfaceStyle;
- (unint64_t)_currentlySupportedInterfaceOrientations;
- (void)_addSubclassDebugDescriptionWithBuilder:(id)builder;
- (void)_addWindowNeedingDeferredInitialUpdateExecution:(uint64_t)execution;
- (void)_applySnapshotSettings:(id)settings forActions:(id)actions;
- (void)_attachWindow:(id)window;
- (void)_beginIgnoringInteractionEventsForReason:(id)reason;
- (void)_beginKeyboardEnvironmentEventDeferringForWindow:(void *)window reason:;
- (void)_childTraitTransformDidChange;
- (void)_completeChangeFromPreviousEffectiveGeometry:(uint64_t)geometry;
- (void)_componentDidUpdateTraitOverrides:(id)overrides;
- (void)_computeMetrics:(BOOL)metrics withTransitionContext:(id)context;
- (void)_computeMetricsAndCrossFadeInLiveResize:(BOOL)resize withTransitionContext:(id)context;
- (void)_computeMetricsForWindows:(id)windows animated:(BOOL)animated;
- (void)_computeTraitCollectionAndCoordinateSpaceForcingDelegateCallback:(BOOL)callback withAction:(id)action;
- (void)_configurePassthroughWindowIfNeeded;
- (void)_delegate_windowDidBecomeVisible:(id)visible;
- (void)_delegate_windowWillAttach:(id)attach;
- (void)_delegate_windowWillBecomeHidden:(id)hidden;
- (void)_delegate_windowWillBecomeVisible:(id)visible;
- (void)_delegate_windowWillDetach:(id)detach;
- (void)_detachWindow:(id)window;
- (void)_endEventDeferringIfNeededForWindow:(void *)window withReason:;
- (void)_endIgnoringInteractionEventsForReason:(id)reason;
- (void)_endKeyboardEnvironmentEventDeferringWithReason:(uint64_t)reason;
- (void)_enqueueEvaluationOfDisablesMirroring;
- (void)_enrollInSuperlayerSecurityAnalysis;
- (void)_enumerateWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows asCopy:(BOOL)copy stopped:(BOOL *)stopped withBlock:(id)block;
- (void)_evaluateSceneKeyWindowForWindowMadeKey:(char)key consideringVisibility:(int)visibility findingNewKeyWindowIfNeeded:(int)needed ignoringOldKeyWindow:(void *)window forReason:;
- (void)_finishSceneConnection;
- (void)_hostTraitCollectionDidChange:(id)change;
- (void)_internalInterfaceOrientation;
- (void)_invalidate;
- (void)_keyWindowDidBecomeApplicationKeyWithoutEvaluationRequest;
- (void)_keyWindowWillDeallocate:(id *)deallocate;
- (void)_loadWindowWithStoryboardIfNeeded:(id)needed;
- (void)_noteDisplayIdentityDidChangeWithConfiguration:(id)configuration;
- (void)_performAfterSystemSnapshotsComplete:(id)complete;
- (void)_performDeferredInitialWindowUpdateForConnection;
- (void)_performIOSGeometryRequestWithPreferences:(id)preferences errorHandler:(id)handler;
- (void)_prepareForResume;
- (void)_prepareForSuspend;
- (void)_previousKeyWindowDidChangeVisibility;
- (void)_pushKeyWindow:(int)window ignoringOldKeyWindow:;
- (void)_readySceneForConnection;
- (void)_registerAuxiliaryChildEnvironmentForTraitInvalidations:(id)invalidations;
- (void)_registerSceneComponent:(id)component forKey:(id)key;
- (void)_removeWindowFromKeyWindowHistoryFindingNewKeyWindowIfNeeded:(int)needed ignoringOldKeyWindow:(void *)window forReason:;
- (void)_requestSceneDestructionForAllScenes:(void *)scenes;
- (void)_scheduleResizeFinishedActionAndFadeOutSnapshot;
- (void)_screenDidChangeFromScreen:(id)screen toScreen:(id)toScreen;
- (void)_setAVKitRequestedRefreshRate:(double)rate HDRMode:(int64_t)mode overscanCompensation:(int64_t)compensation;
- (void)_setBackgroundStyle:(int64_t)style;
- (void)_setDisplayConfigurationRequest:(id)request;
- (void)_setEnhancedWindowingEnabled:(BOOL)enabled;
- (void)_setOverrideParentTraitEnvironment:(id)environment;
- (void)_setReachabilitySupported:(BOOL)supported forReason:(id)reason;
- (void)_setScreenRequestedDisplayNativePixelSize:(CGSize)size;
- (void)_setScreenRequestedOverscanCompensation:(int64_t)compensation;
- (void)_setShouldDisableTouchCancellationOnRotation:(BOOL)rotation;
- (void)_setSystemVolumeHUDEnabled:(BOOL)enabled forAudioCategory:(id)category;
- (void)_startChangeToNewEffectiveGeometrySettingValue:(uint64_t)value;
- (void)_traitOverrides;
- (void)_unlockPointerLockState:(id)state;
- (void)_updateAllDelegateFlags;
- (void)_updateAuxiliaryChildTraitsIfNeeded;
- (void)_updateClientSettingsToInterfaceOrientation:(int64_t)orientation withAnimationDuration:(double)duration;
- (void)_updateCornerProviderWithTraitCollection:(id)collection;
- (void)_updateEffectiveGeometryIfNeeded;
- (void)_updateSceneTraitsAndPushTraitsToScreen:(BOOL)screen callParentWillTransitionToTraitCollection:(BOOL)collection;
- (void)_updateSpringBoardDelegateFlags;
- (void)_updateWindowSceneDelegateFlags;
- (void)_willRestoreInteractionStateForUserActivityManager:(id)manager;
- (void)_windowUpdatedVisibility:(id)visibility;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)orderFrontPreferencesPanel:(id)panel;
- (void)requestGeometryUpdateWithPreferences:(UIWindowSceneGeometryPreferences *)geometryPreferences errorHandler:(void *)errorHandler;
- (void)setDelegate:(id)delegate;
- (void)validateCommand:(id)command;
@end

@implementation UIWindowScene

- (UIScreen)screen
{
  screen = self->_screen;
  if (!screen)
  {
    _FBSScene = [(UIScene *)self _FBSScene];
    v5 = [UIScreen _screenForScene:_FBSScene];
    v6 = self->_screen;
    self->_screen = v5;

    screen = self->_screen;
  }

  return screen;
}

- (UIStatusBarManager)statusBarManager
{
  statusBarManager = [(UIScene *)self _sceneComponentForKey:_UIStatusBarManagerWindowSceneComponentKey];
  if (!statusBarManager)
  {
    _settingsScene = [(UIScene *)self _settingsScene];
    if (_settingsScene == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      statusBarManager = 0;
    }

    else
    {
      statusBarManager = [(UIWindowScene *)_settingsScene statusBarManager];
    }
  }

  return statusBarManager;
}

- (BOOL)_canReceiveDeviceOrientationEvents
{
  _effectiveUISettings = [(UIScene *)self _effectiveUISettings];
  deviceOrientationEventsEnabled = [_effectiveUISettings deviceOrientationEventsEnabled];

  return deviceOrientationEventsEnabled;
}

- (CGRect)_referenceBounds
{
  if (+[UIApplication _isClassic](UIApplication, "_isClassic") && (-[UIWindowScene screen](self, "screen"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _isMainScreen], v3, v4))
  {
    screen = [(UIWindowScene *)self screen];
    [screen _unjailedReferenceBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    [__UISceneEffectiveSettings(self) frame];
    v11 = v14;
    v13 = v15;
    v7 = 0.0;
    v9 = 0.0;
  }

  v16 = v7;
  v17 = v9;
  v18 = v11;
  v19 = v13;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)_usesSceneSettingBasedSafeAreaInsets
{
  v3 = dyld_program_sdk_at_least();
  if (v3)
  {
    ui_safeArea = [(UIScene *)self ui_safeArea];
    safeAreaEdgeInsetsPopulated = [ui_safeArea safeAreaEdgeInsetsPopulated];

    LOBYTE(v3) = safeAreaEdgeInsetsPopulated;
  }

  return v3;
}

- (_UIDisplayInfoProviding)_displayInfoProvider
{
  if ([UIApp _sceneSettingsIncludeSafeAreaInsets] && ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_ForceIOSDeviceInsets, @"ForceIOSDeviceInsets", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1ED48A8BC))
  {
    _effectiveUISettings = [(UIScene *)self _effectiveUISettings];
    if ([_effectiveUISettings isUISubclass])
    {
      v9 = _effectiveUISettings;
    }

    else
    {
      v9 = _UIDisplayInfoNullProvider();
    }

    v10 = v9;
  }

  else
  {
    displayEdgeInfoProvider = self->_displayEdgeInfoProvider;
    if (!displayEdgeInfoProvider)
    {
      screen = [(UIWindowScene *)self screen];
      _displayInfoProvider = [screen _displayInfoProvider];
      v6 = _displayInfoProvider;
      if (_displayInfoProvider)
      {
        v7 = _displayInfoProvider;
      }

      else
      {
        v7 = _UIDisplayInfoNullProvider();
      }

      v11 = self->_displayEdgeInfoProvider;
      self->_displayEdgeInfoProvider = v7;

      displayEdgeInfoProvider = self->_displayEdgeInfoProvider;
    }

    v10 = displayEdgeInfoProvider;
  }

  return v10;
}

- (BOOL)_shouldRotateSafeAreaInsetsToInterfaceOrientation
{
  traitCollection = [(UIWindowScene *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 0;

  return v3;
}

- (UITraitCollection)traitCollection
{
  v3 = self->_traitCollection;
  if (v3)
  {
    goto LABEL_2;
  }

  screen = [(UIWindowScene *)self screen];
  traitCollection = [screen traitCollection];

  if (!traitCollection)
  {
    v3 = +[UITraitCollection _defaultTraitCollection];
LABEL_2:
    traitCollection = v3;
  }

  return traitCollection;
}

- (BOOL)_allowsEventUIWindowRouting
{
  if ([objc_opt_class() _supportsEventUIWindowRouting])
  {
    session = [(UIScene *)self session];
    role = [session role];
    v5 = [role isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_keyWindow
{
  if (self)
  {
    self = self[47];
    v1 = vars8;
  }

  return self;
}

- (void)_enqueueEvaluationOfDisablesMirroring
{
  if (val)
  {
    if ((val[436] & 4) == 0)
    {
      val[436] |= 4u;
      objc_initWeak(&location, val);
      v1 = UIApp;
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = __54__UIWindowScene__enqueueEvaluationOfDisablesMirroring__block_invoke;
      v2[3] = &unk_1E70F5A28;
      objc_copyWeak(&v3, &location);
      [v1 _performBlockAfterCATransactionCommits:v2];
      objc_destroyWeak(&v3);
      objc_destroyWeak(&location);
    }
  }
}

- (id)_editMenuSceneComponent
{
  selfCopy = self;
  if (!+[_UIRemoteKeyboards enabled](_UIRemoteKeyboards, "enabled") || (v3 = [UIApp isFrontBoard], !-[UIScene _hasSettingsScene](selfCopy, "_hasSettingsScene")) && (v3 & 1) == 0)
  {

LABEL_5:
    v4 = [(UIScene *)selfCopy _sceneComponentForKey:@"_UIEditMenuSceneComponentKey"];
    if (v4)
    {
      _editMenuSceneComponent = v4;
    }

    else
    {
      _editMenuSceneComponent = [[_UIEditMenuSceneComponent alloc] initWithScene:selfCopy];
      [(UIWindowScene *)selfCopy _registerSceneComponent:_editMenuSceneComponent forKey:@"_UIEditMenuSceneComponentKey"];
    }

    goto LABEL_8;
  }

  _sceneForKeyboardDisplay = [(UIWindowScene *)selfCopy _sceneForKeyboardDisplay];

  if (_sceneForKeyboardDisplay != selfCopy)
  {
    goto LABEL_5;
  }

  v8 = +[UIWindowScene _keyWindowScene];
  _editMenuSceneComponent = [v8 _editMenuSceneComponent];

  if (!_editMenuSceneComponent)
  {
    goto LABEL_5;
  }

LABEL_8:

  return _editMenuSceneComponent;
}

- (_UISceneUIWindowEventRouting)_sceneForKeyboardDisplay
{
  if (+[UIKeyboard inputUIOOP])
  {
    v3 = objc_opt_class();
    screen = [(UIWindowScene *)self screen];
    [v3 _keyboardWindowSceneForScreen:screen create:0];
  }

  else
  {
    screen = [(UIWindowScene *)self screen];
    [_UIRemoteKeyboards keyboardWindowSceneForScreen:screen create:0];
  }
  v5 = ;

  return v5;
}

+ (UIWindowScene)_keyWindowScene
{
  v2 = +[_UIKeyWindowEvaluator sharedEvaluator];
  applicationKeyWindow = [(_UIKeyWindowEvaluator *)v2 applicationKeyWindow];
  windowScene = [applicationKeyWindow windowScene];

  return windowScene;
}

- (BOOL)_isKeyWindowScene
{
  v3 = +[UIWindowScene _keyWindowScene];
  LOBYTE(self) = v3 == self;

  return self;
}

void __54__UIWindowScene__enqueueEvaluationOfDisablesMirroring__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _FBSScene];
    v4 = [v3 settings];
    v5 = [v4 displayIdentity];

    if ([v5 isMainDisplay])
    {
LABEL_12:
      v2[436] &= ~4u;

      goto LABEL_13;
    }

    v6 = [v2 _FBSScene];
    v7 = [v6 clientSettings];

    if (![v7 isUISubclass])
    {
LABEL_11:

      goto LABEL_12;
    }

    v8 = v7;
    v9 = [v2 _visibleWindows];
    v10 = [v9 count];

    if (v10)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __54__UIWindowScene__enqueueEvaluationOfDisablesMirroring__block_invoke_2;
      v14[3] = &unk_1E70FA198;
      v14[4] = &v15;
      [v2 _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 asCopy:0 stopped:0 withBlock:v14];
      v11 = *(v16 + 24);
      _Block_object_dispose(&v15, 8);
      if ([v8 disablesMirroring] == v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (([v8 disablesMirroring] & 1) == 0)
      {
LABEL_10:

        goto LABEL_11;
      }

      LOBYTE(v11) = 0;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__UIWindowScene__enqueueEvaluationOfDisablesMirroring__block_invoke_3;
    v12[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v13 = v11;
    [v2 _updateUIClientSettingsWithBlock:v12];
    goto LABEL_10;
  }

LABEL_13:
}

- (void)_readySceneForConnection
{
  v6.receiver = self;
  v6.super_class = UIWindowScene;
  [(UIScene *)&v6 _readySceneForConnection];
  session = [(UIScene *)self session];
  configuration = [session configuration];
  storyboard = [configuration storyboard];
  [(UIWindowScene *)self _loadWindowWithStoryboardIfNeeded:storyboard];
}

- (void)_updateWindowSceneDelegateFlags
{
  delegate = [(UIScene *)self delegate];
  *&self->_windowSceneFlags = *&self->_windowSceneFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_windowSceneFlags = *&self->_windowSceneFlags & 0xFD | v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *&self->_windowSceneFlags = *&self->_windowSceneFlags & 0xFB | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *&self->_windowSceneFlags = *&self->_windowSceneFlags & 0xF7 | v5;
}

uint64_t __52__UIWindowScene__internalOverrideUserInterfaceStyle__block_invoke()
{
  if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_ForcedWindowSceneInterfaceStyle, @"ForcedWindowSceneInterfaceStyle", _UIInternalPreferenceUpdateId))
  {
    v0 = 0;
  }

  else
  {
    v0 = qword_1ED48B5C8;
  }

  result = _UIUserInterfaceStyleFromString(v0);
  qword_1ED498B98 = result;
  return result;
}

- (id)_parentTraitCollection
{
  if (self)
  {
    _screenTraitCollectionWithOverridesAppliedFromSceneUISettings = *(self + 456);
    if (!_screenTraitCollectionWithOverridesAppliedFromSceneUISettings)
    {
      WeakRetained = objc_loadWeakRetained((self + 496));
      v4 = WeakRetained;
      if (WeakRetained)
      {
        _screenTraitCollectionWithOverridesAppliedFromSceneUISettings = [WeakRetained _traitCollectionForChildEnvironment:self];
        if (!_screenTraitCollectionWithOverridesAppliedFromSceneUISettings)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel__parentTraitCollection object:self file:@"UIWindowScene.m" lineNumber:3195 description:{@"UIKit internal inconsistency: overrideParentTraitEnvironment returned a nil traitCollection: %@", v4}];

          _screenTraitCollectionWithOverridesAppliedFromSceneUISettings = 0;
        }
      }

      else
      {
        _screenTraitCollectionWithOverridesAppliedFromSceneUISettings = [(UIWindowScene *)self _screenTraitCollectionWithOverridesAppliedFromSceneUISettings];
      }
    }
  }

  else
  {
    _screenTraitCollectionWithOverridesAppliedFromSceneUISettings = 0;
  }

  return _screenTraitCollectionWithOverridesAppliedFromSceneUISettings;
}

uint64_t __49__UIWindowScene__supportsPassthroughInteractions__block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  v1 = [v0 isEqualToString:@"com.apple.assistivetouchd"];

  result = [UIApp _isSpringBoard];
  if (result & 1) != 0 || (result = +[UIApplication _isSystemUIService](UIApplication, "_isSystemUIService"), (result) || (result = +[UIApplication _isUIKitSystemProcess], ((result | v1)))
  {
    v3 = 0;
  }

  else
  {
    result = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_DisablePassthroughWindow, @"DisablePassthroughWindow", _UIInternalPreferenceUpdateBool);
    if (byte_1ED48B5BC)
    {
      v3 = result;
    }

    else
    {
      v3 = 1;
    }
  }

  _MergedGlobals_73_0 = v3;
  return result;
}

- (void)_updateSpringBoardDelegateFlags
{
  if (qword_1ED498BD8 != -1)
  {
    dispatch_once(&qword_1ED498BD8, &__block_literal_global_891);
  }

  if (byte_1ED498B41 == 1)
  {
    delegate = [(UIScene *)self delegate];
    *&self->_springBoardDelegateFlags = *&self->_springBoardDelegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    *&self->_springBoardDelegateFlags = *&self->_springBoardDelegateFlags & 0xFD | v3;
    if (objc_opt_respondsToSelector())
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *&self->_springBoardDelegateFlags = *&self->_springBoardDelegateFlags & 0xFB | v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    *&self->_springBoardDelegateFlags = *&self->_springBoardDelegateFlags & 0xF7 | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 16;
    }

    else
    {
      v6 = 0;
    }

    *&self->_springBoardDelegateFlags = *&self->_springBoardDelegateFlags & 0xEF | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 32;
    }

    else
    {
      v7 = 0;
    }

    *&self->_springBoardDelegateFlags = *&self->_springBoardDelegateFlags & 0xDF | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 64;
    }

    else
    {
      v8 = 0;
    }

    *&self->_springBoardDelegateFlags = *&self->_springBoardDelegateFlags & 0xBF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 0x80;
    }

    else
    {
      v9 = 0;
    }

    *&self->_springBoardDelegateFlags = v9 & 0x80 | *&self->_springBoardDelegateFlags & 0x7F;
  }
}

void __78__UIWindowScene__screenTraitCollectionWithOverridesAppliedFromSceneUISettings__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v4 = *(a1 + 40);
  v5 = v13[2]();
  [v5 setHorizontalSizeClass:v4];

  v6 = *(a1 + 48);
  v7 = (v13[2])(v13);
  [v7 setVerticalSizeClass:v6];

  if (qword_1ED498BE0 != -1)
  {
    dispatch_once(&qword_1ED498BE0, &__block_literal_global_919_1);
  }

  if ((byte_1ED498B42 & 1) == 0)
  {
    v8 = [*(a1 + 32) isCaptured];
    v9 = v13[2]();
    [v9 setSceneCaptureState:v8];
  }

  v10 = *(a1 + 56);
  v11 = v13;
  if (v10)
  {
    v12 = (v13[2])(v13);
    [v12 setUserInterfaceStyle:v10];

    v11 = v13;
  }
}

- (void)_updateEffectiveGeometryIfNeeded
{
  transitionEffectiveGeometry = self->_transitionEffectiveGeometry;
  if (!transitionEffectiveGeometry)
  {
    transitionEffectiveGeometry = self->_effectiveGeometry;
  }

  v5 = transitionEffectiveGeometry;
  v4 = [UIWindowSceneGeometry _calculateEffectiveGeometryForWindowScene:?];
  if (!v5 || ([v4 isEqual:v5] & 1) == 0)
  {
    [(UIWindowScene *)self _startChangeToNewEffectiveGeometrySettingValue:v4];
    [(UIWindowScene *)self _completeChangeFromPreviousEffectiveGeometry:v5];
  }
}

- (void)_updateAllDelegateFlags
{
  [(UIWindowScene *)self _updateWindowSceneDelegateFlags];

  [(UIWindowScene *)self _updateSpringBoardDelegateFlags];
}

- (id)_screenTraitCollectionWithOverridesAppliedFromSceneUISettings
{
  v56 = *MEMORY[0x1E69E9840];
  if (self)
  {
    screen = [self screen];
    traitCollection = [screen traitCollection];
    if (!traitCollection)
    {
      _FBSScene = [self _FBSScene];
      settings = [_FBSScene settings];
      displayConfiguration = [settings displayConfiguration];

      if (displayConfiguration)
      {
        v7 = *(__UILogGetCategoryCachedImpl("UIWindowSceneTraitCollection", &qword_1ED498BA8) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Computing the scene's trait collection without a valid screen is not supported! Please file a bug report for UIKit with the following log messages:", buf, 2u);
        }

        v8 = *(__UILogGetCategoryCachedImpl("UIWindowSceneTraitCollection", &qword_1ED498BB0) + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "Window scene: %@", buf, 0xCu);
        }

        v9 = *(__UILogGetCategoryCachedImpl("UIWindowSceneTraitCollection", &qword_1ED498BB8) + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy = displayConfiguration;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Scene's display configuration: %@", buf, 0xCu);
        }

        v10 = *(__UILogGetCategoryCachedImpl("UIWindowSceneTraitCollection", &qword_1ED498BC0) + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy = screen;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "Scene's screen: %@", buf, 0xCu);
        }

        v11 = *(__UILogGetCategoryCachedImpl("UIWindowSceneTraitCollection", &qword_1ED498BC8) + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          session = [self session];
          role = [session role];
          _FBSScene2 = [self _FBSScene];
          settings2 = [_FBSScene2 settings];
          displayIdentity = [settings2 displayIdentity];
          *buf = 138412546;
          selfCopy = role;
          v54 = 2112;
          v55 = displayIdentity;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Scene's role: %@, Display identity: %@", buf, 0x16u);
        }

        v18 = *(__UILogGetCategoryCachedImpl("UIWindowSceneTraitCollection", &qword_1ED498BD0) + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
          v20 = +[UIScreen _shortScreensDescription];
          *buf = 138412290;
          selfCopy = v20;
          _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "Connected screens: %@", buf, 0xCu);
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIWindowScene _screenTraitCollectionWithOverridesAppliedFromSceneUISettings]"];
        [currentHandler handleFailureInFunction:v22 file:@"UIWindowScene.m" lineNumber:3072 description:@"Missing screen trait collection for window scene"];
      }

      else
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIWindowScene _screenTraitCollectionWithOverridesAppliedFromSceneUISettings]"];
        _FBSScene3 = [self _FBSScene];
        identity = [_FBSScene3 identity];
        _FBSScene4 = [self _FBSScene];
        hostHandle = [_FBSScene4 hostHandle];
        [currentHandler2 handleFailureInFunction:v24 file:@"UIWindowScene.m" lineNumber:3063 description:{@"Providing a UIWindowScene with a nil displayConfiguration is not supported. THIS IS NOT A UIKIT BUG - talk to this process's scene host (%@ hosted by %@)", identity, hostHandle}];
      }
    }

    _effectiveSettings = [self _effectiveSettings];
    [_effectiveSettings bounds];
    v31 = v30;
    v33 = _UIUserInterfaceSizeClassForWidth(v32);
    v34 = _UIUserInterfaceSizeClassForHeight(v31);
    if (qword_1ED498BA0 != -1)
    {
      dispatch_once(&qword_1ED498BA0, &__block_literal_global_365_0);
    }

    userInterfaceStyle = qword_1ED498B98;
    if (!qword_1ED498B98)
    {
      if ([_effectiveSettings isUISubclass])
      {
        userInterfaceStyle = [_effectiveSettings userInterfaceStyle];
      }

      else
      {
        userInterfaceStyle = 0;
      }
    }

    _effectiveUserInterfaceStyle = [UIApp _effectiveUserInterfaceStyle];
    if (!_effectiveUserInterfaceStyle || [self _sceneSessionRoleIsCarPlayOrNonInteractiveExternal])
    {
      _effectiveUserInterfaceStyle = userInterfaceStyle;
      if (!userInterfaceStyle)
      {
        if ([objc_opt_class() _isSystemUIService] && (objc_msgSend(self, "_sceneSessionRoleIsCarPlayOrNonInteractiveExternal") & 1) == 0)
        {
          v37 = self[37];
          if (!v37)
          {
            objc_initWeak(buf, self);
            v38 = objc_alloc(MEMORY[0x1E69DEBD8]);
            v39 = MEMORY[0x1E69E96A0];
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = __78__UIWindowScene__screenTraitCollectionWithOverridesAppliedFromSceneUISettings__block_invoke;
            v50[3] = &unk_1E71243B8;
            objc_copyWeak(&v51, buf);
            v40 = [v38 initWithChangesDeliveredOnQueue:MEMORY[0x1E69E96A0] toBlock:v50];
            v41 = self[37];
            self[37] = v40;

            objc_destroyWeak(&v51);
            objc_destroyWeak(buf);
            v37 = self[37];
          }

          _effectiveUserInterfaceStyle = [v37 userInterfaceStyle];
        }

        else
        {
          _effectiveUserInterfaceStyle = 0;
        }
      }
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __78__UIWindowScene__screenTraitCollectionWithOverridesAppliedFromSceneUISettings__block_invoke_2;
    v45[3] = &unk_1E71243E0;
    v46 = screen;
    v47 = v33;
    v48 = v34;
    v49 = _effectiveUserInterfaceStyle;
    v42 = screen;
    v43 = [(UITraitCollection *)traitCollection _traitCollectionByModifyingTraitsCopyOnWrite:v45];
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

- (BOOL)_supportsPassthroughInteractions
{
  if (qword_1ED498B48 != -1)
  {
    dispatch_once(&qword_1ED498B48, &__block_literal_global_212_1);
  }

  session = [(UIScene *)self session];
  v4 = session;
  if (session)
  {
    role = [session role];
    v6 = [role isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];
  }

  else
  {
    v6 = 0;
  }

  _enhancedWindowingEnabled = 0;
  if (_MergedGlobals_73_0 == 1 && (v6 & 1) == 0)
  {
    _enhancedWindowingEnabled = [(UIWindowScene *)self _enhancedWindowingEnabled];
  }

  return _enhancedWindowingEnabled;
}

- (id)_windowSceneDelegate
{
  delegate = [(UIScene *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0089918])
  {
    v3 = delegate;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)_systemMinimumMargin
{
  if (!dyld_program_sdk_at_least())
  {
    return 0.0;
  }

  _displayInfoProvider = [(UIWindowScene *)self _displayInfoProvider];
  [_displayInfoProvider systemMinimumMargin];
  v5 = v4;

  return v5;
}

- (CGRect)bounds
{
  selfCopy = self;
  [(UICoordinateSpace *)[(UIWindowScene *)selfCopy _coordinateSpace] bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  swift_unknownObjectRelease();
  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_finishSceneConnection
{
  v3.receiver = self;
  v3.super_class = UIWindowScene;
  [(UIScene *)&v3 _finishSceneConnection];
  [(UIWindowScene *)&self->super.super.super.isa _configurePassthroughWindowIfNeeded];
}

- (void)_performDeferredInitialWindowUpdateForConnection
{
  v48 = *MEMORY[0x1E69E9840];
  if (!self || (*(&self->super._sceneFlags + 2) & 2) == 0)
  {
    v43.receiver = self;
    v43.super_class = UIWindowScene;
    [(UIScene *)&v43 _performDeferredInitialWindowUpdateForConnection];
    _windowSceneDelegate = [(UIWindowScene *)self _windowSceneDelegate];
    v4 = _windowSceneDelegate;
    if (*&self->_windowSceneFlags)
    {
      window = [_windowSceneDelegate window];
      delegateWindowNeedingDeferredInitialUpdate = self->_delegateWindowNeedingDeferredInitialUpdate;
      v7 = [(NSHashTable *)self->_windowsNeedingDeferredInitialUpdateExecution containsObject:window];
      if (window == delegateWindowNeedingDeferredInitialUpdate && v7)
      {
        [(UIWindow *)window makeKeyAndVisible];
      }
    }

    v34 = v4;
    isFrontBoard = [UIApp isFrontBoard];
    session = [(UIScene *)self session];
    role = [session role];
    v12 = [role isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];

    _visibleWindows = [(UIWindowScene *)self _visibleWindows];

    if ((isFrontBoard & 1) == 0 && (v12 & 1) == 0 && !_visibleWindows)
    {
      v14 = *(__UILogGetCategoryCachedImpl("WindowScene", &_performDeferredInitialWindowUpdateForConnection___s_category) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        succinctDescription = [(UIScene *)self succinctDescription];
        *buf = 138412290;
        v47 = succinctDescription;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Scene has no visible windows after session connection: %@", buf, 0xCu);
      }
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v17 = [(NSHashTable *)self->_windowsNeedingDeferredInitialUpdateExecution copy];
    v18 = [v17 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v40;
      do
      {
        v21 = 0;
        do
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v39 + 1) + 8 * v21);
          v23 = self->_delegateWindowNeedingDeferredInitialUpdate;
          if (v22 != v23)
          {
LABEL_21:
            [(UIWindow *)v22 _executeDeferredOrientationUpdate];
            [(NSHashTable *)self->_windowsNeedingDeferredInitialUpdateExecution removeObject:v22];
            goto LABEL_25;
          }

          v24 = v23;
          [(UIView *)v24 alpha];
          if (v25 >= 0.01)
          {
            IsHidden = _UIWindowSceneCompatibleIsHidden(v24);

            if ((IsHidden & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }

LABEL_25:
          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v19);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = self->_windowsNeedingDeferredInitialUpdateExecution;
    v28 = [(NSHashTable *)v27 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v36;
      do
      {
        v31 = 0;
        do
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [(UIWindow *)*(*(&v35 + 1) + 8 * v31++) _invalidateDeferredOrientationUpdate];
        }

        while (v29 != v31);
        v29 = [(NSHashTable *)v27 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v29);
    }

    v32 = self->_delegateWindowNeedingDeferredInitialUpdate;
    self->_delegateWindowNeedingDeferredInitialUpdate = 0;

    windowsNeedingDeferredInitialUpdateExecution = self->_windowsNeedingDeferredInitialUpdateExecution;
    self->_windowsNeedingDeferredInitialUpdateExecution = 0;
  }
}

- (void)_configurePassthroughWindowIfNeeded
{
  if (!self)
  {
    return;
  }

  if ([self _supportsPassthroughInteractions])
  {
    traitCollection = [self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    v4 = userInterfaceIdiom != 3;

    v5 = self[49];
    v6 = v5 == 0;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = userInterfaceIdiom == 3;
    }

    if (!v7)
    {
      v8 = [[_UIWindowSystemOverlayWindow alloc] initWithWindowScene:self];
      v9 = self[49];
      self[49] = v8;

      layer = [self[49] layer];
      [layer setAllowsHitTesting:0];

      [self[49] _setWindowHostingScene:self];
      [self[49] setHidden:0];
      v11 = self[49];

      [v11 setWindowLevel:10000002.0];
      return;
    }
  }

  else
  {
    v4 = 0;
    v5 = self[49];
    v6 = v5 == 0;
  }

  if (!v6 && !v4)
  {
    [v5 _setWindowHostingScene:0];
    v12 = self[49];
    self[49] = 0;
  }
}

- (id)_windowOrientationPreferencesObserver
{
  if ((*&self->_springBoardDelegateFlags & 0x40) != 0)
  {
    delegate = [(UIScene *)self delegate];
    objc_initWeak(&location, delegate);

    objc_initWeak(&from, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__UIWindowScene__windowOrientationPreferencesObserver__block_invoke;
    aBlock[3] = &unk_1E7124228;
    objc_copyWeak(&v12, &from);
    objc_copyWeak(&v13, &location);
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    objc_destroyWeak(&v13);
    v5 = &v12;
  }

  else
  {
    if ((*&self->_springBoardDelegateFlags & 0x80) == 0)
    {
      v3 = 0;
      goto LABEL_7;
    }

    delegate2 = [(UIScene *)self delegate];
    objc_initWeak(&location, delegate2);

    objc_initWeak(&from, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__UIWindowScene__windowOrientationPreferencesObserver__block_invoke_2;
    v8[3] = &unk_1E7124250;
    objc_copyWeak(&v9, &from);
    objc_copyWeak(&v10, &location);
    v3 = _Block_copy(v8);
    objc_destroyWeak(&v10);
    v5 = &v9;
  }

  objc_destroyWeak(v5);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
LABEL_7:

  return v3;
}

- (void)_prepareForResume
{
  v5.receiver = self;
  v5.super_class = UIWindowScene;
  [(UIScene *)&v5 _prepareForResume];
  contextBinder = self->_contextBinder;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__UIWindowScene__prepareForResume__block_invoke;
  v4[3] = &unk_1E7124340;
  v4[4] = self;
  [(_UIContextBinder *)contextBinder createContextsWithTest:0 creationAction:v4];
}

void __34__UIWindowScene__prepareForResume__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) _eventDeferringManager];
  v4 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
  v5 = [(_UIEventDeferringManager *)v3 fallbackLocalDeferringTargetWindowIfPermittedForEnvironment:v4];

  if (v5)
  {
    v6 = v5 == v8;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: begin fallback key window deferring for window: %p", objc_opt_class(), *(a1 + 32), v8];
    [(UIWindowScene *)*(a1 + 32) _beginKeyboardEnvironmentEventDeferringForWindow:v8 reason:v7];
  }
}

- (void)_traitOverrides
{
  if (self)
  {
    selfCopy = self;
    v3 = self[34];
    if (!v3)
    {
      v4 = [[_UITraitOverrides alloc] initWithDelegate:self];
      v5 = selfCopy[34];
      selfCopy[34] = v4;

      v3 = selfCopy[34];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (UISceneSizeRestrictions)sizeRestrictions
{
  sizeRestrictions = self->_sizeRestrictions;
  if (!sizeRestrictions)
  {
    v4 = [UISceneSizeRestrictions _sizeRestrictionsForWindowScene:?];
    v5 = self->_sizeRestrictions;
    self->_sizeRestrictions = v4;

    sizeRestrictions = self->_sizeRestrictions;
  }

  return sizeRestrictions;
}

- (int64_t)_systemUserInterfaceStyle
{
  _screenTraitCollectionWithOverridesAppliedFromSceneUISettings = [(UIWindowScene *)self _screenTraitCollectionWithOverridesAppliedFromSceneUISettings];
  userInterfaceStyle = [_screenTraitCollectionWithOverridesAppliedFromSceneUISettings userInterfaceStyle];

  return userInterfaceStyle;
}

- (UIScreenshotService)screenshotService
{
  if (screenshotService_onceToken != -1)
  {
    dispatch_once(&screenshotService_onceToken, &__block_literal_global_249);
  }

  return [(UIScene *)self _sceneComponentForKey:@"_UIScreenshotServiceComponentKey"];
}

void __55__UIWindowScene_UIScreenshotService__screenshotService__block_invoke()
{
  v0 = objc_opt_class();
  v1 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  [(UIScene *)UIWindowScene _registerSceneComponentClass:v0 withKey:@"_UIScreenshotServiceComponentKey" predicate:v1];
}

- (id)_keyboardOverridingSceneComponent
{
  if ([(UIScene *)self _hasInvalidated])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(UIScene *)self _sceneComponentForKey:@"_UIKeyboardResponderOverrideSceneComponentKey"];
    if (!v3)
    {
      v3 = [[_UIKeyboardResponderOverrideSceneComponent alloc] initWithScene:self];
      [(UIWindowScene *)self _registerSceneComponent:v3 forKey:@"_UIKeyboardResponderOverrideSceneComponentKey"];
    }
  }

  return v3;
}

- (UIFocusSystem)focusSystem
{
  _focusSystemSceneComponent = [(UIScene *)self _focusSystemSceneComponent];
  focusSystem = [_focusSystemSceneComponent focusSystem];

  return focusSystem;
}

- (void)_keyWindowDidBecomeApplicationKeyWithoutEvaluationRequest
{
  if (self)
  {
    _eventDeferringManager = [self _eventDeferringManager];
    internalBehavior = [(_UIEventDeferringManager *)_eventDeferringManager internalBehavior];
    wantsLocalCompatibilityRules = [internalBehavior wantsLocalCompatibilityRules];

    if (wantsLocalCompatibilityRules)
    {
      if (self[47])
      {
        v5 = objc_opt_class();
        Name = class_getName(v5);
        keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %p: Begin event deferring in %@ for key window becoming application key: %p", Name, self, keyboardFocusEnvironment, self[47]];
        [(UIWindowScene *)self _beginKeyboardEnvironmentEventDeferringForWindow:v7 reason:?];
      }
    }
  }
}

- (int64_t)_backgroundStyle
{
  _effectiveUIClientSettings = [(UIScene *)self _effectiveUIClientSettings];
  backgroundStyle = [_effectiveUIClientSettings backgroundStyle];

  return backgroundStyle;
}

- (void)_prepareForSuspend
{
  v3.receiver = self;
  v3.super_class = UIWindowScene;
  [(UIScene *)&v3 _prepareForSuspend];
  [(_UIContextBinder *)self->_contextBinder purgeContextsWithPurgeAction:0 afterPurgeAction:&__block_literal_global_289_2];
}

void __35__UIWindowScene__prepareForSuspend__block_invoke()
{
  v0 = +[_UISceneLifecycleMultiplexer sharedInstance];
  [v0 collectBackingStores];
}

- (id)_contextMenuSceneComponent
{
  selfCopy = self;
  if (!+[_UIRemoteKeyboards enabled](_UIRemoteKeyboards, "enabled") || (v3 = [UIApp isFrontBoard], !-[UIScene _hasSettingsScene](selfCopy, "_hasSettingsScene")) && (v3 & 1) == 0)
  {

LABEL_5:
    v4 = [(UIScene *)selfCopy _sceneComponentForKey:@"_UIContextMenuSceneComponentKey"];
    if (v4)
    {
      _contextMenuSceneComponent = v4;
    }

    else
    {
      _contextMenuSceneComponent = [[_UIContextMenuSceneComponent alloc] initWithScene:selfCopy];
      [(UIWindowScene *)selfCopy _registerSceneComponent:_contextMenuSceneComponent forKey:@"_UIContextMenuSceneComponentKey"];
    }

    goto LABEL_8;
  }

  _sceneForKeyboardDisplay = [(UIWindowScene *)selfCopy _sceneForKeyboardDisplay];

  if (_sceneForKeyboardDisplay != selfCopy)
  {
    goto LABEL_5;
  }

  v8 = +[UIWindowScene _keyWindowScene];
  _contextMenuSceneComponent = [v8 _contextMenuSceneComponent];

  if (!_contextMenuSceneComponent)
  {
    goto LABEL_5;
  }

LABEL_8:

  return _contextMenuSceneComponent;
}

uint64_t __54__UIWindowScene__enqueueEvaluationOfDisablesMirroring__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 _canDisableMirroring];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (void)_invalidate
{
  if (self->_keyboardEventDeferringToken)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: end event deferring for scene invalidation", objc_opt_class(), self];
    [(UIWindowScene *)self _endKeyboardEnvironmentEventDeferringWithReason:v3];
  }

  componentsWithTraitOverrides = self->_componentsWithTraitOverrides;
  self->_componentsWithTraitOverrides = 0;

  v6.receiver = self;
  v6.super_class = UIWindowScene;
  [(UIScene *)&v6 _invalidate];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (unint64_t)_currentlySupportedInterfaceOrientations
{
  v3 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:self];
  rootViewController = [v3 rootViewController];
  _viewControllerForSupportedInterfaceOrientations = [rootViewController _viewControllerForSupportedInterfaceOrientations];

  supportedInterfaceOrientations = [_viewControllerForSupportedInterfaceOrientations supportedInterfaceOrientations];
  v7 = [UIApp _supportedInterfaceOrientationsForWindow:v3] & supportedInterfaceOrientations;
  if (!v7)
  {
    v7 = 1 << [(UIWindowScene *)self _interfaceOrientation];
  }

  return v7;
}

- (id)activityItemsConfigurationSource
{
  WeakRetained = objc_loadWeakRetained(&self->_activityItemsConfigurationSource);

  return WeakRetained;
}

- (CGRect)convertRect:(CGRect)rect toMaskingCoordinateSpace:(id)space
{
  v4 = sub_188F0FEC8(self, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, a2, space, &selRef_convertRect_toCoordinateSpace_);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromMaskingCoordinateSpace:(id)space
{
  v4 = sub_188F0FEC8(self, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, a2, space, &selRef_convertRect_fromCoordinateSpace_);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_enrollInSuperlayerSecurityAnalysis
{
  selfCopy = self;
  if ([(UIScene *)selfCopy _sceneComponentForKey:@"_UISuperlayerSecurityAnalysisSceneComponentKey"])
  {

    swift_unknownObjectRelease();
  }

  else
  {
    initWithScene_ = [objc_allocWithZone(_UISuperlayerSecurityAnalysisSceneComponent) initWithScene_];
    [(UIWindowScene *)selfCopy _registerSceneComponent:initWithScene_ forKey:@"_UISuperlayerSecurityAnalysisSceneComponentKey"];
  }
}

- (_UISuperlayerSecurityAnalysisSceneComponent)_superlayerSecurityAnalysisSceneComponent
{
  v2 = [(UIScene *)self _sceneComponentForKey:@"_UISuperlayerSecurityAnalysisSceneComponentKey"];
  if (v2)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
      swift_unknownObjectRelease();
      v2 = 0;
    }
  }

  return v2;
}

- (void)_updateCornerProviderWithTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_189198D10(collection);
  swift_unknownObjectRelease();
}

- (id)_contentSizePreferenceProvider
{
  _FBSScene = [(UIScene *)self _FBSScene];
  v3 = objc_opt_class();
  v4 = [_FBSScene componentForExtension:v3 ofClass:objc_opt_class()];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v5;

  return v5;
}

- (_UIWindowSceneTransitionCoordinator)_transitionCoordinator
{
  _FBSScene = [(UIScene *)self _FBSScene];
  v3 = objc_opt_class();
  v4 = [_FBSScene componentForExtension:v3 ofClass:objc_opt_class()];

  return v4;
}

- (id)_playbackControlsStateManager
{
  v3 = [(UIScene *)self _sceneComponentForKey:@"_UIPlaybackControlsStateManagerSceneComponentKey"];
  if (!v3)
  {
    v3 = [[_UIPlaybackControlsStateManager alloc] initWithScene:self];
    [(UIWindowScene *)self _registerSceneComponent:v3 forKey:@"_UIPlaybackControlsStateManagerSceneComponentKey"];
  }

  return v3;
}

- (id)_sceneMaskingCoordinator
{
  _FBSScene = [(UIScene *)self _FBSScene];
  v3 = objc_opt_class();
  v4 = [_FBSScene componentForExtension:v3 ofClass:objc_opt_class()];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v5;

  return v5;
}

- (_UISearchActivityManager)_searchActivityManager
{
  v3 = [(UIScene *)self _sceneComponentForKey:@"_UISearchActivityStateManagerSceneComponentKey"];
  if (!v3)
  {
    v3 = [[_UISearchActivityManager alloc] initWithScene:self];
    [(UIWindowScene *)self _registerSceneComponent:v3 forKey:@"_UISearchActivityStateManagerSceneComponentKey"];
  }

  return v3;
}

- (void)_hostTraitCollectionDidChange:(id)change
{
  objc_storeStrong(&self->_overrideParentTraitCollection, change);

  [(UIWindowScene *)self _updateSceneTraitsAndPushTraitsToScreen:0 callParentWillTransitionToTraitCollection:0];
}

- (id)_systemInputActivityManager
{
  v3 = [(UIScene *)self _sceneComponentForKey:@"_UISystemInputActivityStateManagerSceneComponentKey"];
  if (!v3)
  {
    v3 = [[_UISystemInputActivityManager alloc] initWithScene:self];
    [(UIWindowScene *)self _registerSceneComponent:v3 forKey:@"_UISystemInputActivityStateManagerSceneComponentKey"];
  }

  return v3;
}

- (UIWindowScene)initWithSession:(id)session connectionOptions:(id)options
{
  optionsCopy = options;
  v38.receiver = self;
  v38.super_class = UIWindowScene;
  v8 = [(UIScene *)&v38 initWithSession:session connectionOptions:optionsCopy];
  if (!v8)
  {
    goto LABEL_20;
  }

  _specification = [optionsCopy _specification];
  _FBSScene = [(UIScene *)v8 _FBSScene];
  settings = [_FBSScene settings];
  isUISubclass = [settings isUISubclass];

  if (isUISubclass)
  {
    uiSettings = [_FBSScene uiSettings];
    +[_UISceneLifecycleMultiplexer configureInitialDeactivationReasons:](_UISceneLifecycleMultiplexer, "configureInitialDeactivationReasons:", [uiSettings deactivationReasons]);
  }

  sceneSubstrateClass = [_specification sceneSubstrateClass];
  if (([(objc_class *)sceneSubstrateClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = NSStringFromClass(sceneSubstrateClass);
    [currentHandler handleFailureInMethod:a2 object:v8 file:@"UIWindowScene.m" lineNumber:428 description:{@"%@ is not a subclass of _UIContextBinderSubstrate", v37}];
  }

  v15 = [[sceneSubstrateClass alloc] initWithScene:_FBSScene];
  v16 = [[_UIContextBinder alloc] initWithSubstrate:v15];
  contextBinder = v8->_contextBinder;
  v8->_contextBinder = v16;

  if (isUISubclass)
  {
    uiSettings2 = [_FBSScene uiSettings];
    interfaceOrientationMode = [uiSettings2 interfaceOrientationMode];

    p_metricsCalculator = &v8->_metricsCalculator;
    metricsCalculator = v8->_metricsCalculator;
    if (!metricsCalculator)
    {
      if (interfaceOrientationMode == 100)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    p_metricsCalculator = &v8->_metricsCalculator;
    metricsCalculator = v8->_metricsCalculator;
    if (!metricsCalculator)
    {
LABEL_11:
      [_FBSScene uiCanReceiveDeviceOrientationEvents];
LABEL_12:
      v22 = objc_opt_new();
      v23 = *p_metricsCalculator;
      *p_metricsCalculator = v22;

      metricsCalculator = *p_metricsCalculator;
    }
  }

  [metricsCalculator _setScene:v8];
  v24 = v8;
  v25 = [_UIWindowSceneCoordinateSpace alloc];
  _settingsScene = [(UIScene *)v24 _settingsScene];
  _effectiveSettings = [_settingsScene _effectiveSettings];
  v28 = [(_UIWindowSceneCoordinateSpace *)v25 initWithWindowScene:v24 effectiveSettings:_effectiveSettings];

  coordinateSpace = v24->_coordinateSpace;
  v24->_coordinateSpace = v28;

  [(_UIContextBinder *)v8->_contextBinder setContextCreationPolicyHolder:v24];
  [(UIWindowScene *)v24 _setKeepContextAssociationInBackground:+[UIWindow _allWindowsKeepContextInBackground]];
  v24->_avkitRequestedOverscanCompensation = -1;
  v24->_screenRequestedOverscanCompensation = 0;
  if (isUISubclass)
  {
    uiClientSettings = [_FBSScene uiClientSettings];
    displayConfigurationRequest = [uiClientSettings displayConfigurationRequest];

    if (displayConfigurationRequest)
    {
      v24->_screenRequestedOverscanCompensation = [displayConfigurationRequest overscanCompensation];
    }

    uiSettings3 = [_FBSScene uiSettings];
    v24->_windowSceneFlags.enhancedWindowingEnabled = [uiSettings3 enhancedWindowingEnabled];
  }

  [(UIWindowScene *)v24 _updateAllDelegateFlags];
  if (([UIApp isFrontBoard] & 1) == 0)
  {
    [(UIWindowScene *)v24 _computeMetrics:0];
  }

  v24->_reachabilitySupportedCounter = 1;
  v33 = [[_UIAssertionController alloc] initWithAssertionSubject:v24];
  assertionController = v24->_assertionController;
  v24->_assertionController = v33;

LABEL_20:
  return v8;
}

- (void)_endKeyboardEnvironmentEventDeferringWithReason:(uint64_t)reason
{
  v3 = a2;
  if (reason)
  {
    v4 = *(reason + 384);
    v7 = v3;
    if (!v4)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__endKeyboardEnvironmentEventDeferringWithReason_ object:reason file:@"UIWindowScene.m" lineNumber:1914 description:{@"%s: Invalid request to ending event deferring without having begun: reason: %@", "-[UIWindowScene _endKeyboardEnvironmentEventDeferringWithReason:]", v7}];

      v4 = *(reason + 384);
    }

    [(_UIEventDeferringOwnershipToken *)v4 endEventDeferringWithReason:v7];
    v5 = *(reason + 384);
    *(reason + 384) = 0;

    v3 = v7;
  }
}

- (void)setDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = UIWindowScene;
  [(UIScene *)&v4 setDelegate:delegate];
  [(UIWindowScene *)self _updateAllDelegateFlags];
}

- (void)_internalInterfaceOrientation
{
  if (result)
  {
    v1 = result;
    if ([result _canReceiveDeviceOrientationEvents])
    {
      [v1 _effectiveUIClientSettings];
    }

    else
    {
      [v1 _effectiveUISettings];
    }
    v2 = ;
    interfaceOrientation = [v2 interfaceOrientation];

    return interfaceOrientation;
  }

  return result;
}

- (id)_internalCoordinateSpace
{
  if (self)
  {
    self = self[38];
    v1 = vars8;
  }

  return self;
}

- (void)_childTraitTransformDidChange
{
  v3.receiver = self;
  v3.super_class = UIWindowScene;
  [(UIScene *)&v3 _updateSceneTraitsAndPushTraitsToScreen:0 callParentWillTransitionToTraitCollection:0];
  [(_UITraitChangeRegistry *)self->_traitChangeRegistry invalidateAuxiliaryChildren];
}

- (id)registerForTraitChanges:(id)changes withHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:changes];
  v8 = [(UIWindowScene *)self _registerForTraitTokenChanges:v7 withHandler:handlerCopy];

  return v8;
}

- (id)registerForTraitChanges:(id)changes withTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v9 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:changes];
  v10 = [(UIWindowScene *)self _registerForTraitTokenChanges:v9 withTarget:targetCopy action:action];

  return v10;
}

- (id)registerForTraitChanges:(id)changes withAction:(SEL)action
{
  v6 = [UITraitCollection _traitTokensIncludingPlaceholdersForTraits:changes];
  v7 = [(UIWindowScene *)self _registerForTraitTokenChanges:v6 withTarget:self action:action];

  return v7;
}

- (id)_registerForTraitTokenChanges:(id)changes withHandler:(id)handler
{
  changesCopy = changes;
  handlerCopy = handler;
  traitChangeRegistry = self->_traitChangeRegistry;
  if (!traitChangeRegistry)
  {
    v9 = objc_alloc_init(_UITraitChangeRegistry);
    v10 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v9;

    traitChangeRegistry = self->_traitChangeRegistry;
  }

  v11 = [(_UITraitChangeRegistry *)traitChangeRegistry registerForTraitTokenChanges:changesCopy withHandler:handlerCopy];

  return v11;
}

- (id)_registerForTraitTokenChanges:(id)changes withTarget:(id)target action:(SEL)action
{
  changesCopy = changes;
  targetCopy = target;
  traitChangeRegistry = self->_traitChangeRegistry;
  if (!traitChangeRegistry)
  {
    v11 = objc_alloc_init(_UITraitChangeRegistry);
    v12 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v11;

    traitChangeRegistry = self->_traitChangeRegistry;
  }

  v13 = [(_UITraitChangeRegistry *)traitChangeRegistry registerForTraitTokenChanges:changesCopy withTarget:targetCopy action:action targetIsSender:targetCopy == self];

  return v13;
}

- (void)_registerAuxiliaryChildEnvironmentForTraitInvalidations:(id)invalidations
{
  invalidationsCopy = invalidations;
  traitChangeRegistry = self->_traitChangeRegistry;
  v8 = invalidationsCopy;
  if (!traitChangeRegistry)
  {
    v6 = objc_alloc_init(_UITraitChangeRegistry);
    v7 = self->_traitChangeRegistry;
    self->_traitChangeRegistry = v6;

    invalidationsCopy = v8;
    traitChangeRegistry = self->_traitChangeRegistry;
  }

  [(_UITraitChangeRegistry *)traitChangeRegistry registerAuxiliaryChildEnvironmentForTraitInvalidations:invalidationsCopy];
}

- (void)requestGeometryUpdateWithPreferences:(UIWindowSceneGeometryPreferences *)geometryPreferences errorHandler:(void *)errorHandler
{
  v8 = geometryPreferences;
  v6 = errorHandler;
  if ([(UIWindowSceneGeometryPreferences *)v8 _type]== 2)
  {
    [(UIWindowScene *)self _performIOSGeometryRequestWithPreferences:v8 errorHandler:v6];
  }

  else if (v6)
  {
    v7 = _UISceneErrorWithCode(100);
    v6[2](v6, v7);
  }
}

- (void)_performIOSGeometryRequestWithPreferences:(id)preferences errorHandler:(id)handler
{
  location[3] = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  handlerCopy = handler;
  interfaceOrientations = [preferencesCopy interfaceOrientations];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &_performIOSGeometryRequestWithPreferences_errorHandler____s_category);
  if (*CategoryCachedImpl)
  {
    v24 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      v26 = _UIInterfaceOrientationMaskDebugDescription(interfaceOrientations);
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v26;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Received geometry update request with interface orientations: %{public}@", location, 0xCu);
    }
  }

  if (interfaceOrientations)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__UIWindowScene__performIOSGeometryRequestWithPreferences_errorHandler___block_invoke;
    aBlock[3] = &unk_1E710DB08;
    v33 = handlerCopy;
    v10 = _Block_copy(aBlock);
    if ([(UIScene *)self _canDynamicallySpecifySupportedInterfaceOrientations])
    {
      _effectiveUIClientSettings = [(UIScene *)self _effectiveUIClientSettings];
      supportedInterfaceOrientations = [_effectiveUIClientSettings supportedInterfaceOrientations];

      if (!supportedInterfaceOrientations || (supportedInterfaceOrientations & interfaceOrientations) != 0)
      {
        objc_initWeak(location, self);
        v23 = UIApp;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __72__UIWindowScene__performIOSGeometryRequestWithPreferences_errorHandler___block_invoke_137;
        v28[3] = &unk_1E71177E8;
        objc_copyWeak(&v31, location);
        v29 = preferencesCopy;
        v30 = v10;
        [v23 _performBlockAfterCATransactionCommits:v28];

        objc_destroyWeak(&v31);
        objc_destroyWeak(location);
      }

      else
      {
        v13 = _UIInterfaceOrientationMaskDebugDescription([preferencesCopy interfaceOrientations]);
        v27 = _UIInterfaceOrientationMaskDebugDescription(supportedInterfaceOrientations);
        v19 = _UILocalizedFormat(@"UIWindowScene.interfaceOrientationsNotSupported", @"Error for attempting a geometry request with interface orientations that are not supported by the scene's view controller.", @"None of the requested orientations are supported by the view controller. Requested: %@ Supported: %@", v14, v15, v16, v17, v18, v13);;

        v20 = _UISceneErrorWithCodeAndDescription(101, v19);
        (*(v10 + 2))(v10, v20);
      }
    }

    else
    {
      v21 = _UILocalizedString(@"UIWindowScene.orientationRequestNotAllowed", @"Error for attempting a geometry request for a window scene that must support all orientations", @"The current windowing mode does not allow for programmatic changes to interface orientation.");
      v22 = _UISceneErrorWithCodeAndDescription(101, v21);
      (*(v10 + 2))(v10, v22);
    }
  }
}

void __72__UIWindowScene__performIOSGeometryRequestWithPreferences_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &_UIInternalPreference_ShouldWriteCompatibilityEventDeferringRulesForAllProcesses_block_invoke___s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v3 localizedDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "_UIOrientationRequestAction failed with error: %{public}@", &v9, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __72__UIWindowScene__performIOSGeometryRequestWithPreferences_errorHandler___block_invoke_137(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [_UIOrientationRequestAction alloc];
    v4 = [a1[4] interfaceOrientations];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__UIWindowScene__performIOSGeometryRequestWithPreferences_errorHandler___block_invoke_2;
    v9[3] = &unk_1E7108B40;
    v10 = a1[5];
    v5 = [(_UIOrientationRequestAction *)v3 initWithRequestedInterfaceOrientationMask:v4 completion:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__UIWindowScene__performIOSGeometryRequestWithPreferences_errorHandler___block_invoke_140;
    v7[3] = &unk_1E70FA390;
    v8 = v5;
    v6 = v5;
    [WeakRetained _updateUIClientSettingsWithUITransitionBlock:v7];
  }
}

void __72__UIWindowScene__performIOSGeometryRequestWithPreferences_errorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &_UIInternalPreference_ShouldWriteCompatibilityEventDeferringRulesForAllProcesses_block_invoke_2___s_category);
    if (*CategoryCachedImpl)
    {
      v5 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "_UIOrientationRequestAction completed successfully.", v6, 2u);
      }
    }
  }
}

uint64_t __72__UIWindowScene__performIOSGeometryRequestWithPreferences_errorHandler___block_invoke_140(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &_UIInternalPreference_ShouldWriteCompatibilityEventDeferringRulesForAllProcesses_block_invoke_3___s_category);
  if (*CategoryCachedImpl)
  {
    v8 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Sending _UIOrientationRequestAction: %{public}@", &v10, 0xCu);
    }
  }

  v6 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 32)];
  [v4 setActions:v6];

  return 0;
}

- (UIWindowSceneGeometry)effectiveGeometry
{
  effectiveGeometry = self->_effectiveGeometry;
  if (!effectiveGeometry)
  {
    v4 = [UIWindowSceneGeometry _calculateEffectiveGeometryForWindowScene:?];
    v5 = self->_effectiveGeometry;
    self->_effectiveGeometry = v4;

    effectiveGeometry = self->_effectiveGeometry;
  }

  v6 = [(UIWindowSceneGeometry *)effectiveGeometry copy];

  return v6;
}

- (void)_setBackgroundStyle:(int64_t)style
{
  if ([(UIWindowScene *)self _backgroundStyle]!= style)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__UIWindowScene__setBackgroundStyle___block_invoke;
    v5[3] = &__block_descriptor_40_e89_B24__0__UIMutableApplicationSceneClientSettings_8__UIApplicationSceneTransitionContext_16l;
    v5[4] = style;
    [(UIScene *)self _updateUIClientSettingsWithUITransitionBlock:v5];
  }
}

uint64_t __37__UIWindowScene__setBackgroundStyle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 setBackgroundStyle:v4];
  v6 = +[UIView _currentAnimationSettings];
  [v5 setAnimationSettings:v6];

  return 1;
}

- (void)_setSystemVolumeHUDEnabled:(BOOL)enabled forAudioCategory:(id)category
{
  categoryCopy = category;
  v7 = categoryCopy;
  if (categoryCopy && [(__CFString *)categoryCopy length])
  {
    v8 = 0;
  }

  else
  {

    v8 = 1;
    v7 = &stru_1EFB14550;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__UIWindowScene__setSystemVolumeHUDEnabled_forAudioCategory___block_invoke;
  v10[3] = &unk_1E711D960;
  v12 = v8;
  enabledCopy = enabled;
  v11 = v7;
  v9 = v7;
  [(UIScene *)self _updateUIClientSettingsWithBlock:v10];
}

void __61__UIWindowScene__setSystemVolumeHUDEnabled_forAudioCategory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1 + 40) != 1)
  {
    v5 = [v3 audioCategoriesDisablingVolumeHUD];
    if ([v5 count])
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v5];
      v4 = v6;
      if ((*(a1 + 41) & 1) == 0)
      {
        if (v6)
        {
LABEL_14:
          [v4 addObject:*(a1 + 32)];
LABEL_15:

          goto LABEL_16;
        }

LABEL_13:
        v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        goto LABEL_14;
      }
    }

    else
    {
      if (*(a1 + 41) != 1)
      {
        goto LABEL_13;
      }

      v4 = 0;
    }

    [v4 removeObject:*(a1 + 32)];
    if (![v4 count])
    {

      v4 = 0;
    }

    goto LABEL_15;
  }

  if (*(a1 + 41))
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFA8] set];
  }

LABEL_16:
  v7 = [v4 allObjects];
  [v8 setAudioCategoriesDisablingVolumeHUD:v7];
}

- (void)_setReachabilitySupported:(BOOL)supported forReason:(id)reason
{
  supportedCopy = supported;
  v20 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  reachabilitySupportedCounter = self->_reachabilitySupportedCounter;
  if (supportedCopy)
  {
    v8 = reachabilitySupportedCounter + 1;
  }

  else
  {
    v8 = reachabilitySupportedCounter - 1;
  }

  self->_reachabilitySupportedCounter = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__UIWindowScene__setReachabilitySupported_forReason___block_invoke;
  v12[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
  v13 = v8 > 0;
  [(UIScene *)self _updateUIClientSettingsWithBlock:v12];
  v9 = *(__UILogGetCategoryCachedImpl("ReachabilitySupported", &_setReachabilitySupported_forReason____s_category) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    v11 = self->_reachabilitySupportedCounter;
    *buf = 138543874;
    if (supportedCopy)
    {
      v10 = @"YES";
    }

    v15 = v10;
    v16 = 2114;
    v17 = reasonCopy;
    v18 = 1026;
    v19 = v11;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "_setReachabilitySupported wants:%{public}@ forReason:%{public}@. _reachabilitySupportedCounter is now %{public}d", buf, 0x1Cu);
  }
}

- (void)_delegate_windowWillAttach:(id)attach
{
  if (*&self->_springBoardDelegateFlags)
  {
    attachCopy = attach;
    delegate = [(UIScene *)self delegate];
    [delegate _windowScene:self windowWillAttach:attachCopy];
  }
}

- (void)_delegate_windowWillDetach:(id)detach
{
  if (*&self->_springBoardDelegateFlags)
  {
    detachCopy = detach;
    delegate = [(UIScene *)self delegate];
    [delegate _windowScene:self windowWillDetach:detachCopy];
  }
}

- (void)_delegate_windowWillBecomeVisible:(id)visible
{
  if ((*&self->_springBoardDelegateFlags & 4) != 0)
  {
    visibleCopy = visible;
    delegate = [(UIScene *)self delegate];
    [delegate _windowScene:self windowWillBecomeVisible:visibleCopy];
  }
}

- (void)_delegate_windowDidBecomeVisible:(id)visible
{
  if ((*&self->_springBoardDelegateFlags & 8) != 0)
  {
    visibleCopy = visible;
    delegate = [(UIScene *)self delegate];
    [delegate _windowScene:self windowDidBecomeVisible:visibleCopy];
  }
}

- (void)_delegate_windowWillBecomeHidden:(id)hidden
{
  if ((*&self->_springBoardDelegateFlags & 0x10) != 0)
  {
    hiddenCopy = hidden;
    delegate = [(UIScene *)self delegate];
    [delegate _windowScene:self windowWillBecomeHidden:hiddenCopy];
  }
}

- (double)_adjustedLevelForWindow:(id)window preferredLevel:(double)level
{
  if ((*&self->_springBoardDelegateFlags & 0x20) != 0)
  {
    windowCopy = window;
    delegate = [(UIScene *)self delegate];
    [delegate _windowScene:self levelForWindow:windowCopy preferredLevel:level];
    level = v8;
  }

  return level;
}

void __54__UIWindowScene__windowOrientationPreferencesObserver__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = v8;
  if (WeakRetained && v8)
  {
    [v8 _windowScene:*(a1 + 32) window:v10 didUpdateSupportedInterfaceOrientations:a3 preferredOrientation:a4];
  }
}

void __54__UIWindowScene__windowOrientationPreferencesObserver__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = v6;
  if (WeakRetained && v6)
  {
    [v6 _windowScene:WeakRetained window:v8 didUpdateSupportedInterfaceOrientations:a3];
  }
}

- (void)_screenDidChangeFromScreen:(id)screen toScreen:(id)toScreen
{
  v22 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  toScreenCopy = toScreen;
  _FBSScene = [(UIScene *)self _FBSScene];
  v10 = [UIScreen _screenForScene:_FBSScene];

  if (v10 != toScreenCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindowScene.m" lineNumber:1070 description:{@"The changed screen does not match the screen from our scene: newScreen %@; screenFromFBSScene: %@; self: %@", toScreenCopy, v10, self}];
  }

  objc_storeStrong(&self->_screen, toScreen);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  _allWindows = [(UIWindowScene *)self _allWindows];
  v12 = [_allWindows countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(_allWindows);
        }

        [*(*(&v17 + 1) + 8 * v15++) _didMoveFromScreen:screenCopy toScreen:toScreenCopy];
      }

      while (v13 != v15);
      v13 = [_allWindows countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  [(UIWindowScene *)self _computeTraitCollectionAndCoordinateSpaceForcingDelegateCallback:1 withAction:0];
}

- (void)_attachWindow:(id)window
{
  v23 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  _hasInvalidated = [(UIScene *)self _hasInvalidated];
  if (!dyld_program_sdk_at_least())
  {
    if (_hasInvalidated)
    {
      v17 = *(__UILogGetCategoryCachedImpl("Assert", &_attachWindow____s_category) + 8);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      windowScene = v17;
      succinctDescription = [(UIScene *)self succinctDescription];
      *buf = 138412546;
      v20 = succinctDescription;
      v21 = 2112;
      v22 = windowCopy;
      _os_log_impl(&dword_188A29000, windowScene, OS_LOG_TYPE_ERROR, "Attempting to attach window to an invalidated scene: %@; window: %@", buf, 0x16u);

      goto LABEL_17;
    }

LABEL_5:
    windowScene = [windowCopy windowScene];
    v10 = [windowScene isEqual:self];
    if ((v10 & 1) == 0)
    {
      [windowScene _detachWindow:windowCopy];
      [(UIWindowScene *)self _delegate_windowWillAttach:windowCopy];
      [(UIScene *)self __captureWindow:windowCopy];
      [(_UIContextBinder *)self->_contextBinder enrollBindable:windowCopy];
      [windowCopy _didMoveFromScene:windowScene toScene:self];
    }

    if ((_UIWindowSceneCompatibleIsHidden(windowCopy) & 1) == 0)
    {
      [(UIWindowScene *)self _delegate_windowWillBecomeVisible:windowCopy];
      [(_UIContextBinder *)self->_contextBinder attachBindable:windowCopy];
      [(UIWindowScene *)self _delegate_windowDidBecomeVisible:windowCopy];
      _eventDeferringManager = [(UIScene *)self _eventDeferringManager];
      keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
      v13 = [(_UIEventDeferringManager *)_eventDeferringManager fallbackLocalDeferringTargetWindowIfPermittedForEnvironment:keyboardFocusEnvironment];

      if (v13)
      {
        v14 = v13 == windowCopy;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        v15 = v10;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        windowCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: begin fallback event deferring for window: %p", objc_opt_class(), self, windowCopy];
        [(UIWindowScene *)self _beginKeyboardEnvironmentEventDeferringForWindow:windowCopy reason:windowCopy];
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!_hasInvalidated)
  {
    goto LABEL_5;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  succinctDescription2 = [(UIScene *)self succinctDescription];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindowScene.m" lineNumber:1088 description:{@"Attempting to attach window to an invalidated scene: %@; window: %@", succinctDescription2, windowCopy}];

LABEL_18:
}

- (void)_beginKeyboardEnvironmentEventDeferringForWindow:(void *)window reason:
{
  if (self)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__beginKeyboardEnvironmentEventDeferringForWindow_reason_ object:self file:@"UIWindowScene.m" lineNumber:1872 description:{@"Invalid parameter not satisfying: %@", @"window"}];
    }

    _eventDeferringManager = [self _eventDeferringManager];
    if (_eventDeferringManager)
    {
      v6 = self[48];
      v18 = _eventDeferringManager;
      if (v6)
      {
        v7 = [(_UIEventDeferringManager *)_eventDeferringManager beginAndEndLocalEventDeferringForToken:v6 withReason:window];
        v8 = self[48];
        self[48] = v7;
      }

      else
      {
        v9 = MEMORY[0x1E695DFD8];
        keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
        v8 = [v9 setWithObject:keyboardFocusEnvironment];

        v11 = v18[13];
        wantsSystemKeyCommandOverlayRules = [v11 wantsSystemKeyCommandOverlayRules];

        if (wantsSystemKeyCommandOverlayRules)
        {
          ui_systemKeyCommandOverlayEnvironment = [MEMORY[0x1E698E398] ui_systemKeyCommandOverlayEnvironment];
          v14 = [v8 setByAddingObject:ui_systemKeyCommandOverlayEnvironment];

          v8 = v14;
        }

        v15 = [(_UIEventDeferringManager *)v18 beginLocalEventDeferringInEnvironments:v8 forOwningInterfaceElement:self withReason:window];
        v16 = self[48];
        self[48] = v15;
      }

      _eventDeferringManager = v18;
    }
  }
}

- (void)_detachWindow:(id)window
{
  windowCopy = window;
  [(UIWindowScene *)self _delegate_windowWillDetach:windowCopy];
  windowCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: end event deferring for detaching window: %p", objc_opt_class(), self, windowCopy];
  [(UIWindowScene *)&self->super.super.super.isa _endEventDeferringIfNeededForWindow:windowCopy withReason:windowCopy];
  windowCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Remove detaching window from key window history: %p", objc_opt_class(), self, windowCopy];
  [(UIWindowScene *)&self->super.super.super.isa _removeWindowFromKeyWindowHistoryFindingNewKeyWindowIfNeeded:windowCopy ignoringOldKeyWindow:0 forReason:windowCopy2];
  [(UIWindowScene *)self _delegate_windowWillBecomeHidden:windowCopy];
  [(_UIContextBinder *)self->_contextBinder expellBindable:windowCopy];
  [(UIScene *)self __releaseWindow:windowCopy];

  [(UIWindowScene *)self _enqueueEvaluationOfDisablesMirroring];
}

- (void)_endEventDeferringIfNeededForWindow:(void *)window withReason:
{
  v10 = a2;
  windowCopy = window;
  if (self)
  {
    _eventDeferringManager = [self _eventDeferringManager];
    if (_eventDeferringManager && self[48])
    {
      keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
      v8 = [(_UIEventDeferringManager *)_eventDeferringManager currentLocalDeferringTargetWindowMatchingEnvironment:keyboardFocusEnvironment deferringToken:self[48]];

      if (v8)
      {
        v9 = v8 == v10;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        [(UIWindowScene *)self _endKeyboardEnvironmentEventDeferringWithReason:windowCopy];
      }
    }
  }
}

- (void)_removeWindowFromKeyWindowHistoryFindingNewKeyWindowIfNeeded:(int)needed ignoringOldKeyWindow:(void *)window forReason:
{
  if (self)
  {
    windowScene = [a2 windowScene];
    if (windowScene == self)
    {
      v16 = windowScene;
      v9 = [self[46] count];

      if (v9)
      {
        v10 = a2;
        v11 = self[46];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v18 = ____UIWindowSceneKeyWindowHistoryRemoveFirstMatchingPointer_block_invoke;
        v19 = &__block_descriptor_40_e13_B24__0_v8_B16l;
        v20 = v10;
        v12 = v17;
        v13 = [v11 count];
        v21 = 0;
        v14 = v13 - 1;
        while (1)
        {
          if (v14 == -1)
          {
LABEL_11:

            goto LABEL_14;
          }

          v15 = [v11 pointerAtIndex:v14];
          if ((v18)(v12, v15, &v21))
          {
            break;
          }

          --v14;
          if (v21 == 1)
          {
            goto LABEL_11;
          }
        }

        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 removePointerAtIndex:v14];
          [v11 compact];
        }

LABEL_14:
        if (self[47] == v10)
        {
          [(UIWindowScene *)self _evaluateSceneKeyWindowForWindowMadeKey:1 consideringVisibility:1 findingNewKeyWindowIfNeeded:needed ignoringOldKeyWindow:window forReason:?];
        }
      }
    }

    else
    {
    }
  }
}

+ (void)_updateVisibleSceneAndWindowOrderWithTest:(id)test
{
  testCopy = test;
  v4 = testCopy;
  if ((_updateVisibleSceneAndWindowOrderWithTest__updating & 1) == 0)
  {
    _updateVisibleSceneAndWindowOrderWithTest__updating = 1;
    v5 = UIApp;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__UIWindowScene__updateVisibleSceneAndWindowOrderWithTest___block_invoke;
    v6[3] = &unk_1E70F0F78;
    v7 = testCopy;
    [v5 _performBlockAfterCATransactionCommits:v6];
  }
}

void __59__UIWindowScene__updateVisibleSceneAndWindowOrderWithTest___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1, 0];
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

        [*(*(&v7 + 1) + 8 * v6++) _updateVisibleWindowOrderWithTest:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  _updateVisibleSceneAndWindowOrderWithTest__updating = 0;
}

- (void)_windowUpdatedVisibility:(id)visibility
{
  visibilityCopy = visibility;
  v5 = objc_autoreleasePoolPush();
  _eventDeferringManager = [(UIScene *)self _eventDeferringManager];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__UIWindowScene__windowUpdatedVisibility___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v7 = visibilityCopy;
  v31 = v7;
  v8 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __42__UIWindowScene__windowUpdatedVisibility___block_invoke_2;
  v26[3] = &unk_1E70F6228;
  v9 = _eventDeferringManager;
  v27 = v9;
  v10 = v7;
  v28 = v10;
  selfCopy = self;
  v11 = _Block_copy(v26);
  if (_UIWindowSceneCompatibleIsHidden(v10))
  {
    v8[2](v8);
    [(UIWindowScene *)self _delegate_windowWillBecomeHidden:v10];
    [(_UIContextBinder *)self->_contextBinder detachBindable:v10];
  }

  else
  {
    [(UIWindowScene *)self _delegate_windowWillBecomeVisible:v10];
    [(_UIContextBinder *)self->_contextBinder attachBindable:v10];
    [(UIWindowScene *)self _delegate_windowDidBecomeVisible:v10];
    v11[2](v11);
  }

  keyWindow = self->_keyWindow;
  if (keyWindow == v10)
  {
    if (v10)
    {
      v25 = v5;
      v19 = MEMORY[0x1E696AEC0];
      selfCopy2 = self;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      selfCopy2 = [v19 stringWithFormat:@"<%@: %p>", v22, selfCopy2];

      v24 = [v19 stringWithFormat:@"%@: Key window changed visibility: %p", selfCopy2, self->_keyWindow];

      [(UIWindowScene *)&selfCopy2->super.super.super.isa _evaluateSceneKeyWindowForWindowMadeKey:1 consideringVisibility:1 findingNewKeyWindowIfNeeded:0 ignoringOldKeyWindow:v24 forReason:?];
      v5 = v25;
    }
  }

  else if (!keyWindow && ![(UIView *)v10 isHidden])
  {
    v13 = v5;
    keyWindowHistory = self->_keyWindowHistory;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v33 = ____UIWindowSceneKeyWindowHistoryContainsMatchingPointer_block_invoke;
    v34 = &__block_descriptor_40_e13_B24__0_v8_B16l;
    v35 = v10;
    v15 = v32;
    v16 = [(NSPointerArray *)keyWindowHistory count];
    v36[0] = 0;
    v17 = v16 - 1;
    while (1)
    {
      if (v17 == -1)
      {
LABEL_11:

        v5 = v13;
        goto LABEL_14;
      }

      v18 = [(NSPointerArray *)keyWindowHistory pointerAtIndex:v17];
      if ((v33)(v15, v18, v36))
      {
        break;
      }

      --v17;
      if (v36[0] == 1)
      {
        goto LABEL_11;
      }
    }

    v5 = v13;
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIWindowScene *)self _previousKeyWindowDidChangeVisibility];
    }
  }

LABEL_14:
  [(UIWindowScene *)self _enqueueEvaluationOfDisablesMirroring];

  objc_autoreleasePoolPop(v5);
}

void __42__UIWindowScene__windowUpdatedVisibility___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: end key window deferring for window hiding: %p", objc_opt_class(), *(a1 + 32), *(a1 + 40)];
  [(UIWindowScene *)*(a1 + 32) _endEventDeferringIfNeededForWindow:v2 withReason:?];
}

void __42__UIWindowScene__windowUpdatedVisibility___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
  v6 = [(_UIEventDeferringManager *)v2 fallbackLocalDeferringTargetWindowIfPermittedForEnvironment:v3];

  v4 = v6;
  if (v6 && a1[5] == v6)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: begin fallback key window deferring for window: %p", objc_opt_class(), a1[6], a1[5]];
    [(UIWindowScene *)a1[6] _beginKeyboardEnvironmentEventDeferringForWindow:v5 reason:?];

    v4 = v6;
  }
}

- (void)_previousKeyWindowDidChangeVisibility
{
  if (self && !self[47])
  {
    v2 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    selfCopy = [v2 stringWithFormat:@"<%@: %p>", v5, selfCopy];

    v7 = [v2 stringWithFormat:@"%@: No current key window and previous key window became visible", selfCopy];

    [(UIWindowScene *)selfCopy _evaluateSceneKeyWindowForWindowMadeKey:1 consideringVisibility:1 findingNewKeyWindowIfNeeded:0 ignoringOldKeyWindow:v7 forReason:?];
  }
}

- (id)_allWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows
{
  windowsCopy = windows;
  contextBinder = self->_contextBinder;
  if (visibleWindows)
  {
    [(_UIContextBinder *)contextBinder attachedBindables];
  }

  else
  {
    [(_UIContextBinder *)contextBinder enrolledBindables];
  }
  v6 = ;
  v7 = v6;
  if (windowsCopy)
  {
    v8 = v6;
  }

  else
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_586];
    v8 = [v7 filteredArrayUsingPredicate:v9];
  }

  return v8;
}

- (UIActivityItemsConfigurationReading)_activityItemsConfiguration
{
  activityItemsConfigurationSource = [(UIWindowScene *)self activityItemsConfigurationSource];
  v4 = activityItemsConfigurationSource;
  if (activityItemsConfigurationSource)
  {
    _activityItemsConfigurationForScene = _UIEffectiveActivityItemsConfiguration(activityItemsConfigurationSource);
  }

  else
  {
    _keyWindow = [(UIWindowScene *)&self->super.super.super.isa _keyWindow];
    _activityItemsConfigurationForScene = [_keyWindow _activityItemsConfigurationForScene];
  }

  return _activityItemsConfigurationForScene;
}

- (BOOL)_isInLiveResize
{
  effectiveGeometry = [(UIWindowScene *)self effectiveGeometry];
  isInteractivelyResizing = [effectiveGeometry isInteractivelyResizing];

  return isInteractivelyResizing;
}

- (void)_computeMetricsAndCrossFadeInLiveResize:(BOOL)resize withTransitionContext:(id)context
{
  resizeCopy = resize;
  contextCopy = context;
  _effectiveUISettings = [(UIScene *)self _effectiveUISettings];
  inLiveResize = [_effectiveUISettings inLiveResize];

  if (inLiveResize)
  {
    if (_UISceneLiveResizeSnapshotsEnabled())
    {
      if (self->_liveResizeSnapshot)
      {
        v9 = *(__UILogGetCategoryCachedImpl("LiveResize", &_computeMetricsAndCrossFadeInLiveResize_withTransitionContext____s_category) + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Laying out window scene to new size before finished rendering at previous size.", v14, 2u);
        }
      }

      else
      {
        v10 = [(UIWindowScene *)self _topVisibleWindowPassingTest:&__block_literal_global_208_0];
        v11 = v10;
        if (v10)
        {
          v12 = _makeUISceneViewForLiveResize(v10);
          [(UIWindow *)v11 _insertLiveResizeSnapshot:v12];
          liveResizeSnapshot = self->_liveResizeSnapshot;
          self->_liveResizeSnapshot = v12;
        }
      }
    }

    [(UIWindowScene *)self _computeMetrics:resizeCopy withTransitionContext:contextCopy];
    if (*(&self->_windowSceneFlags + 8))
    {
      *&self->_windowSceneFlags |= 0x20u;
    }

    else
    {
      [(UIWindowScene *)self _scheduleResizeFinishedActionAndFadeOutSnapshot];
    }
  }

  else
  {
    [(UIWindowScene *)self _computeMetrics:resizeCopy withTransitionContext:contextCopy];
  }
}

BOOL __79__UIWindowScene__computeMetricsAndCrossFadeInLiveResize_withTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _isSceneSized])
  {
    v3 = [v2 rootViewController];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_scheduleResizeFinishedActionAndFadeOutSnapshot
{
  v3 = _UISceneLiveResizeFinishedActionEnabled();
  liveResizeSnapshot = self->_liveResizeSnapshot;
  if (!v3)
  {
    if (!liveResizeSnapshot)
    {
      return;
    }

    goto LABEL_7;
  }

  if (liveResizeSnapshot)
  {
    _FBSScene = [(UIScene *)self _FBSScene];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __64__UIWindowScene__scheduleResizeFinishedActionAndFadeOutSnapshot__block_invoke;
    v22[3] = &unk_1E70F3590;
    v23 = _FBSScene;
    v6 = _FBSScene;
    [(UIScene *)self _scheduleSceneEventResponseWithResponseBlock:v22];

    liveResizeSnapshot = self->_liveResizeSnapshot;
    if (liveResizeSnapshot)
    {
LABEL_7:
      v9 = liveResizeSnapshot;
      v10 = self->_liveResizeSnapshot;
      self->_liveResizeSnapshot = 0;

      if (_UIInternalPreferenceUsesDefault(&_UIInternalPreference_LiveResizeCrossFadeDuration, @"LiveResizeCrossFadeDuration", _UIInternalPreferenceUpdateDouble))
      {
        v11 = 0.1;
      }

      else
      {
        v11 = *&qword_1EA95E738;
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __64__UIWindowScene__scheduleResizeFinishedActionAndFadeOutSnapshot__block_invoke_3;
      v20[3] = &unk_1E70F3590;
      v21 = v9;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __64__UIWindowScene__scheduleResizeFinishedActionAndFadeOutSnapshot__block_invoke_4;
      v18[3] = &unk_1E70F5AC0;
      v19 = v21;
      v12 = v21;
      [UIView animateWithDuration:v20 animations:v18 completion:v11];

      v13 = v21;
      goto LABEL_13;
    }
  }

  _FBSScene2 = [(UIScene *)self _FBSScene];
  if (_UISceneLiveResizeAnimationFenceEnabled())
  {
    _synchronizedDrawingFence = [(UIScene *)self _synchronizedDrawingFence];
  }

  else
  {
    _synchronizedDrawingFence = 0;
  }

  v14 = UIApp;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__UIWindowScene__scheduleResizeFinishedActionAndFadeOutSnapshot__block_invoke_5;
  v15[3] = &unk_1E70F35B8;
  v16 = _synchronizedDrawingFence;
  v17 = _FBSScene2;
  v13 = _FBSScene2;
  v12 = _synchronizedDrawingFence;
  [v14 _performBlockAfterCATransactionCommits:v15];

LABEL_13:
}

void __64__UIWindowScene__scheduleResizeFinishedActionAndFadeOutSnapshot__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__UIWindowScene__scheduleResizeFinishedActionAndFadeOutSnapshot__block_invoke_2;
  block[3] = &unk_1E70F3590;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__UIWindowScene__scheduleResizeFinishedActionAndFadeOutSnapshot__block_invoke_2(uint64_t a1)
{
  v4 = [_UISceneResizeFinishedAction resizeFinishedActionWithAnimationFence:0];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DFD8] setWithObject:v4];
  [v2 sendActions:v3];
}

void __64__UIWindowScene__scheduleResizeFinishedActionAndFadeOutSnapshot__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  [(UIWindow *)v2 _removeLiveResizeSnapshot:?];
}

void __64__UIWindowScene__scheduleResizeFinishedActionAndFadeOutSnapshot__block_invoke_5(uint64_t a1)
{
  v4 = [_UISceneResizeFinishedAction resizeFinishedActionWithAnimationFence:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E695DFD8] setWithObject:v4];
  [v2 sendActions:v3];
}

- (void)_setEnhancedWindowingEnabled:(BOOL)enabled
{
  v16 = *MEMORY[0x1E69E9840];
  enhancedWindowingEnabled = self->_windowSceneFlags.enhancedWindowingEnabled;
  self->_windowSceneFlags.enhancedWindowingEnabled = enabled;
  if (enhancedWindowingEnabled != enabled)
  {
    [(UIWindowScene *)&self->super.super.super.isa _configurePassthroughWindowIfNeeded];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    _allWindows = [(UIWindowScene *)self _allWindows];
    v6 = [_allWindows countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(_allWindows);
          }

          [(UIWindow *)*(*(&v11 + 1) + 8 * v9++) _configurePassthroughInteractionIfNeeded];
        }

        while (v7 != v9);
        v7 = [_allWindows countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIWindowSceneEnhancedWindowingModeChanged" object:self];
  }
}

- (void)_performAfterSystemSnapshotsComplete:(id)complete
{
  completeCopy = complete;
  if ([(UIScene *)self activationState]!= UISceneActivationStateBackground)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindowScene.m" lineNumber:1520 description:@"_performAfterSystemSnapshotsComplete should only be called on a background scene"];
  }

  v6 = [UIApp _beginBackgroundTaskWithName:@"com.apple.UIKit.PostSnapshottingAction" expirationHandler:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__UIWindowScene__performAfterSystemSnapshotsComplete___block_invoke;
  v9[3] = &unk_1E70F4178;
  v10 = completeCopy;
  v11 = v6;
  v7 = completeCopy;
  [(UIScene *)self _enqueuePostSettingsUpdateResponseBlock:v9 inPhase:0x1EFB17470];
}

uint64_t __54__UIWindowScene__performAfterSystemSnapshotsComplete___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = UIApp;
  v3 = *(a1 + 40);

  return [v2 _endBackgroundTask:v3];
}

- (void)_loadWindowWithStoryboardIfNeeded:(id)needed
{
  v18 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if (neededCopy && [(UIWindowScene *)self _shouldLoadStoryboard])
  {
    instantiateInitialViewController = [neededCopy instantiateInitialViewController];
    if (!instantiateInitialViewController)
    {
      v12 = *(__UILogGetCategoryCachedImpl("WindowScene", &qword_1ED498B60) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        name = [neededCopy name];
        *v17 = 138412290;
        *&v17[4] = name;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Failed to instantiate the default view controller for UIMainStoryboardFile '%@' - perhaps the designated entry point is not set?", v17, 0xCu);
      }

      goto LABEL_20;
    }

    _windowSceneDelegate = [(UIWindowScene *)self _windowSceneDelegate];
    v7 = _windowSceneDelegate;
    if (_windowSceneDelegate)
    {
      windowSceneFlags = self->_windowSceneFlags;
      if (windowSceneFlags)
      {
        window = [_windowSceneDelegate window];
        if (window)
        {
          v10 = window;
          [(UIWindow *)window setWindowScene:self];
          _coordinateSpace = [(UIWindowScene *)self _coordinateSpace];
          [_coordinateSpace bounds];
          [(UIWindow *)v10 setFrame:?];

LABEL_19:
          [(UIWindow *)v10 setRootViewController:instantiateInitialViewController, *v17];

LABEL_20:
          goto LABEL_21;
        }

        windowSceneFlags = self->_windowSceneFlags;
      }

      if ((windowSceneFlags & 2) != 0)
      {
        v10 = [[UIWindow alloc] initWithWindowScene:self];
        [v7 setWindow:v10];
        objc_storeStrong(&self->_delegateWindowNeedingDeferredInitialUpdate, v10);
        [(UIWindowScene *)self _addWindowNeedingDeferredInitialUpdateExecution:?];
        goto LABEL_19;
      }

      v15 = *(__UILogGetCategoryCachedImpl("WindowScene", &qword_1ED498B50) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        v16 = "The scene delegate must implement the window property if it wants to use a main storyboard file.";
        goto LABEL_16;
      }
    }

    else
    {
      v15 = *(__UILogGetCategoryCachedImpl("WindowScene", &qword_1ED498B58) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        v16 = "There is no scene delegate set. A scene delegate class must be specified to use a main storyboard file.";
LABEL_16:
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
      }
    }

    v10 = 0;
    goto LABEL_19;
  }

LABEL_21:
}

- (void)_addWindowNeedingDeferredInitialUpdateExecution:(uint64_t)execution
{
  v3 = a2;
  if (execution && (*(execution + 210) & 2) == 0)
  {
    v4 = *(execution + 360);
    v7 = v3;
    if (!v4)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v6 = *(execution + 360);
      *(execution + 360) = weakObjectsHashTable;

      v4 = *(execution + 360);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

- (BOOL)_shouldDeferInitialWindowUpdateBeforeConnection:(id)connection
{
  _windowSceneDelegate = [(UIWindowScene *)self _windowSceneDelegate];
  v8 = (*&self->_windowSceneFlags & 1) != 0 && ([_windowSceneDelegate window], v6 = v5 = _windowSceneDelegate;

  return v8;
}

- (BOOL)_shouldDeferInitialWindowUpdateBeforeConnectionAndTrackIfNeeded:(id)needed
{
  neededCopy = needed;
  if (self && (*(&self->super._sceneFlags + 2) & 2) != 0 || ![(UIWindowScene *)self _shouldDeferInitialWindowUpdateBeforeConnection:neededCopy])
  {
    v5 = 0;
  }

  else
  {
    [(UIWindowScene *)self _addWindowNeedingDeferredInitialUpdateExecution:neededCopy];
    v5 = 1;
  }

  return v5;
}

- (void)_beginIgnoringInteractionEventsForReason:(id)reason
{
  v12 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  userInteractionDisabledCount = self->_userInteractionDisabledCount;
  self->_userInteractionDisabledCount = userInteractionDisabledCount + 1;
  v6 = *(__UILogGetCategoryCachedImpl("WindowScene", &_beginIgnoringInteractionEventsForReason____s_category) + 8);
  if (os_signpost_enabled(v6))
  {
    v7 = reasonCopy;
    v8 = v6;
    v9[0] = 67109378;
    v9[1] = userInteractionDisabledCount;
    v10 = 2080;
    uTF8String = [reasonCopy UTF8String];
    _os_signpost_emit_with_name_impl(&dword_188A29000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "beginIgnoringInteractionEvents", "level: %u; reason: %s", v9, 0x12u);
  }
}

- (void)_endIgnoringInteractionEventsForReason:(id)reason
{
  v13 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  userInteractionDisabledCount = self->_userInteractionDisabledCount;
  if (userInteractionDisabledCount)
  {
    v6 = userInteractionDisabledCount - 1;
    self->_userInteractionDisabledCount = userInteractionDisabledCount - 1;
    v7 = *(__UILogGetCategoryCachedImpl("WindowScene", &_endIgnoringInteractionEventsForReason____s_category) + 8);
    if (os_signpost_enabled(v7))
    {
      v8 = reasonCopy;
      v9 = v7;
      v10[0] = 67109378;
      v10[1] = v6;
      v11 = 2080;
      uTF8String = [reasonCopy UTF8String];
      _os_signpost_emit_with_name_impl(&dword_188A29000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "endIgnoringInteractionEvents", "level: %u; reason: %s", v10, 0x12u);
    }
  }
}

- (id)_topVisibleWindowEnumeratingAsCopy:(BOOL)copy passingTest:(id)test
{
  copyCopy = copy;
  testCopy = test;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__202;
  v26 = __Block_byref_object_dispose__202;
  v27 = 0;
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && +[_UIRemoteKeyboards enabled])
  {
    v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    keyboardWindow = [v9 keyboardWindow];

    if (keyboardWindow)
    {
      windowScene = [keyboardWindow windowScene];
      v12 = windowScene;
      if (windowScene != self)
      {
        if (testCopy)
        {
          v13 = testCopy[2](testCopy, keyboardWindow);

          if (!v13)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }

        v14 = v23;
        v15 = keyboardWindow;
        v12 = v14[5];
        v14[5] = v15;
      }
    }

LABEL_11:
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__UIWindowScene__topVisibleWindowEnumeratingAsCopy_passingTest___block_invoke;
  v19[3] = &unk_1E70F4240;
  v21 = &v22;
  v16 = testCopy;
  v20 = v16;
  [(UIWindowScene *)self _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 asCopy:copyCopy stopped:0 withBlock:v19];
  v17 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v17;
}

void __64__UIWindowScene__topVisibleWindowEnumeratingAsCopy_passingTest___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (!*(*(*(a1 + 40) + 8) + 40) || ([v8 windowLevel], v5 = v4, objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "windowLevel"), v5 > v6))
  {
    v7 = *(a1 + 32);
    if (!v7 || (*(v7 + 16))(v7, v8))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

- (UIWindow)_delegateWindow
{
  if (*&self->_windowSceneFlags)
  {
    delegate = [(UIScene *)self delegate];
    window = [delegate window];
  }

  else
  {
    window = 0;
  }

  return window;
}

- (void)_enumerateWindowsIncludingInternalWindows:(BOOL)windows onlyVisibleWindows:(BOOL)visibleWindows asCopy:(BOOL)copy stopped:(BOOL *)stopped withBlock:(id)block
{
  copyCopy = copy;
  visibleWindowsCopy = visibleWindows;
  v31 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy)
  {
    goto LABEL_20;
  }

  if (copyCopy || pthread_main_np() == 1)
  {
    goto LABEL_4;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v24 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v26 = objc_opt_class();
      *buf = 136315138;
      Name = class_getName(v26);
      _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Unsupported enumeration of %s windows on non-main thread.", buf, 0xCu);
    }

    goto LABEL_27;
  }

  v23 = *(__UILogGetCategoryCachedImpl("Assert", &_enumerateWindowsIncludingInternalWindows_onlyVisibleWindows_asCopy_stopped_withBlock____s_category) + 8);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = v23;
    v25 = objc_opt_class();
    *buf = 136315138;
    Name = class_getName(v25);
    _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Unsupported enumeration of %s windows on non-main thread.", buf, 0xCu);
LABEL_27:
  }

LABEL_4:
  contextBinder = self->_contextBinder;
  stoppedCopy = stopped;
  v13 = copyCopy;
  if (visibleWindowsCopy)
  {
    [(_UIContextBinder *)contextBinder _attachedBindablePointersAsCopy:copyCopy];
  }

  else
  {
    [(_UIContextBinder *)contextBinder _enrolledBindablePointersAsCopy:copyCopy];
  }
  v14 = ;
  v15 = [v14 count];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = v15;
  v17 = 0;
  v18 = visibleWindowsCopy && copyCopy;
  while (1)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = [v14 pointerAtIndex:v17];
    if (!v20)
    {
      goto LABEL_18;
    }

    v21 = v20;
    if (!windows && ([v20 isInternalWindow] & 1) != 0)
    {
      goto LABEL_18;
    }

    if (v18)
    {
      if (_UIWindowSceneCompatibleIsHidden(v21))
      {
        goto LABEL_18;
      }
    }

    else if (!v13)
    {
      break;
    }

    _windowHostingScene = [v21 _windowHostingScene];

    if (_windowHostingScene == self)
    {
      break;
    }

LABEL_18:
    objc_autoreleasePoolPop(v19);
    if (v16 == ++v17)
    {
      goto LABEL_19;
    }
  }

  buf[0] = 0;
  blockCopy[2](blockCopy, v21, buf);
  if (buf[0] != 1)
  {
    goto LABEL_18;
  }

  if (stoppedCopy)
  {
    *stoppedCopy = 1;
  }

  objc_autoreleasePoolPop(v19);
LABEL_19:

LABEL_20:
}

- (id)_fbsSceneLayerForWindow:(id)window
{
  v23 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  substrate = [(_UIContextBinder *)self->_contextBinder substrate];
  scene = [substrate scene];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  clientSettings = [scene clientSettings];
  layers = [clientSettings layers];

  v9 = [layers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(layers);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          cAContext = [v14 CAContext];
          _boundContext = [windowCopy _boundContext];

          if (cAContext == _boundContext)
          {
            goto LABEL_12;
          }
        }
      }

      v10 = [layers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (id)_findNewKeyWindowPassingTest:(void *)test
{
  v3 = a2;
  v4 = v3;
  if (test)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__UIWindowScene__findNewKeyWindowPassingTest___block_invoke;
    v6[3] = &unk_1E71242A0;
    v7 = v3;
    test = [test _topVisibleWindowPassingTest:v6];
  }

  return test;
}

uint64_t __46__UIWindowScene__findNewKeyWindowPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 canBecomeKeyWindow] && (objc_msgSend(v3, "_isTextEffectsWindow") & 1) == 0 && (objc_msgSend(v3, "isInternalWindow") & 1) == 0)
  {
    if ([v3 allowsWeakReference])
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = v3;
      [v7 alpha];
      if (v8 >= 0.01)
      {
        IsHidden = _UIWindowSceneCompatibleIsHidden(v7);

        if ((IsHidden & 1) == 0)
        {
          v10 = *(a1 + 32);
          if (v10)
          {
            v4 = (*(v10 + 16))(v10, v7);
          }

          else
          {
            v4 = 1;
          }

          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = 0;
    }

    v4 = 0;
LABEL_15:

    goto LABEL_5;
  }

  v4 = 0;
LABEL_5:

  return v4;
}

- (void)_pushKeyWindow:(int)window ignoringOldKeyWindow:
{
  if (self)
  {
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__pushKeyWindow_ignoringOldKeyWindow_ object:self file:@"UIWindowScene.m" lineNumber:1940 description:{@"Invalid parameter not satisfying: %@", @"window"}];
    }

    windowScene = [a2 windowScene];

    if (windowScene == self)
    {
      if (!self[46])
      {
        weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
        v8 = self[46];
        self[46] = weakObjectsPointerArray;
      }

      if (self[47] != a2)
      {
        v9 = self[46];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v17 = ____UIWindowSceneKeyWindowHistoryRemoveFirstMatchingPointer_block_invoke;
        v18 = &__block_descriptor_40_e13_B24__0_v8_B16l;
        v19 = a2;
        v10 = v16;
        v11 = [v9 count];
        v20 = 0;
        v12 = v11 - 1;
        while (1)
        {
          if (v12 == -1)
          {
LABEL_12:

            goto LABEL_15;
          }

          v13 = [v9 pointerAtIndex:v12];
          if ((v17)(v10, v13, &v20))
          {
            break;
          }

          --v12;
          if (v20 == 1)
          {
            goto LABEL_12;
          }
        }

        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 removePointerAtIndex:v12];
          [v9 compact];
        }

LABEL_15:
        [self[46] addPointer:a2];
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Window requested to become key in scene: %p", objc_opt_class(), self, a2];
      [(UIWindowScene *)self _evaluateSceneKeyWindowForWindowMadeKey:0 consideringVisibility:0 findingNewKeyWindowIfNeeded:window ignoringOldKeyWindow:v14 forReason:?];
    }
  }
}

- (void)_evaluateSceneKeyWindowForWindowMadeKey:(char)key consideringVisibility:(int)visibility findingNewKeyWindowIfNeeded:(int)needed ignoringOldKeyWindow:(void *)window forReason:
{
  v90 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  if ([self _hasInvalidated])
  {
    goto LABEL_54;
  }

  v10 = objc_opt_class();
  Name = class_getName(v10);
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED498B68);
  if (*CategoryCachedImpl)
  {
    v52 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v79 = windowCopy;
      _os_log_impl(&dword_188A29000, v52, OS_LOG_TYPE_ERROR, "Evaluating scene key window for reason: %{public}@", buf, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v55 = _UIWindowKeyWindowAPIIsSceneLevel();
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v73[3] = 0;
  _FBSScene = [self _FBSScene];
  LODWORD(screen) = _FBSScene == 0;

  if (screen)
  {
    IsExtension = _UIApplicationIsExtension();
    if ((IsExtension | _UIApplicationMayVendViews()))
    {
      screen = [self screen];
      v15 = [_UIScreenBasedWindowScene _unassociatedWindowSceneForScreen:screen create:0];

      LOBYTE(screen) = v15 == self;
      if (v15 == self)
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }

      goto LABEL_11;
    }

    LOBYTE(screen) = 0;
  }

  v16 = -1;
LABEL_11:
  [self[46] compact];
  v17 = self[46];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v68 = __138__UIWindowScene__evaluateSceneKeyWindowForWindowMadeKey_consideringVisibility_findingNewKeyWindowIfNeeded_ignoringOldKeyWindow_forReason___block_invoke;
  v69 = &unk_1E71242C8;
  v70 = v73;
  v71 = v16;
  keyCopy = key;
  v18 = v67;
  v19 = [v17 count];
  buf[0] = 0;
  v20 = v19 - 1;
  while (1)
  {
    if (v20 == -1)
    {
LABEL_15:

LABEL_16:
      v22 = 0;
      goto LABEL_19;
    }

    v21 = [v17 pointerAtIndex:v20];
    if (v68(v18, v21, buf))
    {
      break;
    }

    --v20;
    if (buf[0] == 1)
    {
      goto LABEL_15;
    }
  }

  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  v22 = [self[46] pointerAtIndex:v20];
LABEL_19:
  v23 = v22;
  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v24 = screen;
  }

  if ((v24 & 1) == 0 && visibility)
  {
    v25 = self[47];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __138__UIWindowScene__evaluateSceneKeyWindowForWindowMadeKey_consideringVisibility_findingNewKeyWindowIfNeeded_ignoringOldKeyWindow_forReason___block_invoke_2;
    aBlock[3] = &unk_1E70FA210;
    aBlock[4] = v25;
    v26 = _Block_copy(aBlock);
    v27 = [(UIWindowScene *)self _findNewKeyWindowPassingTest:v26];
    v23 = v27;
    if (v27)
    {
      v28 = self[46];
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v75 = ____UIWindowSceneKeyWindowHistoryRemoveFirstMatchingPointer_block_invoke;
      v76 = &__block_descriptor_40_e13_B24__0_v8_B16l;
      v77 = v27;
      v29 = v74;
      v30 = [v28 count];
      buf[0] = 0;
      v31 = v30 - 1;
      while (1)
      {
        if (v31 == -1)
        {
LABEL_29:

          goto LABEL_32;
        }

        v32 = [v28 pointerAtIndex:v31];
        if ((v75)(v29, v32, buf))
        {
          break;
        }

        --v31;
        if (buf[0] == 1)
        {
          goto LABEL_29;
        }
      }

      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v28 removePointerAtIndex:v31];
        [v28 compact];
      }

LABEL_32:
      [self[46] addPointer:v23];
    }
  }

  v33 = objc_opt_class();
  class_getName(v33);
  v34 = self[47];
  v35 = v23 != v34;
  v36 = v23 != v34 && v23 != 0;
  if (v55 && v36)
  {
    [defaultCenter postNotificationName:@"_UIWindowWillBecomeKeyNotification" object:v23];
  }

  if (needed)
  {
    v37 = 0;
    v38 = &OBJC_IVAR____UIStatusBarStyleAttributes__smallFont;
  }

  else
  {
    v38 = &OBJC_IVAR____UIStatusBarStyleAttributes__smallFont;
    v37 = self[47];
  }

  v39 = v37;
  *(self + v38[900]) = v23;
  v40 = v23;
  if (v23 != v34)
  {
    if (v23)
    {
      v41 = objc_opt_class();
      v42 = class_getName(v41);
    }

    else
    {
      v42 = "(nil)";
    }

    v43 = *(__UILogGetCategoryCachedImpl("KeyWindow", &qword_1ED498B70) + 8);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = self[47];
      _contextId = [v44 _contextId];
      v46 = windowCopy;
      uTF8String = [windowCopy UTF8String];
      *buf = 136447490;
      v79 = Name;
      v80 = 2050;
      selfCopy = self;
      v82 = 2082;
      v83 = v42;
      v84 = 2050;
      v85 = v44;
      v86 = 1026;
      v87 = _contextId;
      v88 = 2082;
      v89 = uTF8String;
      _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}p: Window became key in scene: %{public}s: %{public}p; contextId: 0x%{public}X: reason: %{public}s", buf, 0x3Au);
    }

    v40 = self[47];
  }

  v48 = v40;
  v49 = +[_UIKeyWindowEvaluator sharedEvaluator];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __138__UIWindowScene__evaluateSceneKeyWindowForWindowMadeKey_consideringVisibility_findingNewKeyWindowIfNeeded_ignoringOldKeyWindow_forReason___block_invoke_274;
  v64[3] = &unk_1E71242F0;
  v65 = v36;
  v64[4] = self;
  v64[5] = self;
  v64[6] = v48;
  v64[7] = Name;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __138__UIWindowScene__evaluateSceneKeyWindowForWindowMadeKey_consideringVisibility_findingNewKeyWindowIfNeeded_ignoringOldKeyWindow_forReason___block_invoke_2_278;
  v61[3] = &unk_1E7124318;
  v62 = v55;
  v63 = v35;
  v61[4] = v39;
  v61[5] = self;
  v61[6] = defaultCenter;
  v61[7] = Name;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __138__UIWindowScene__evaluateSceneKeyWindowForWindowMadeKey_consideringVisibility_findingNewKeyWindowIfNeeded_ignoringOldKeyWindow_forReason___block_invoke_279;
  v58[3] = &unk_1E70F67F8;
  v59 = v55;
  v60 = v36;
  v58[4] = v48;
  v58[5] = defaultCenter;
  v50 = windowCopy;
  if (v49)
  {
    [(_UIKeyWindowEvaluator *)v49 evaluateApplicationKeyWindowForWindowScene:self withWindowMadeKey:a2 sceneKeyWindowActions:v64 ignoringOldKeyWindow:needed sceneResignKeyWindowActions:v61 andSceneBecomeKeyWindowActions:v58 forReason:v51, v50, 2];
  }

  else
  {
  }

  _Block_object_dispose(v73, 8);
LABEL_54:
}

- (void)_keyWindowWillDeallocate:(id *)deallocate
{
  if (deallocate)
  {
    windowScene = [a2 windowScene];
    if (windowScene == deallocate)
    {
      v6 = windowScene;
      if ([deallocate[46] count])
      {
        v5 = deallocate[47];

        if (v5 != a2)
        {
          return;
        }

        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Key window is deallocating: %p", objc_opt_class(), deallocate, deallocate[47]];
        [(UIWindowScene *)deallocate _removeWindowFromKeyWindowHistoryFindingNewKeyWindowIfNeeded:1 ignoringOldKeyWindow:v6 forReason:?];
      }

      windowScene = v6;
    }
  }
}

uint64_t __138__UIWindowScene__evaluateSceneKeyWindowForWindowMadeKey_consideringVisibility_findingNewKeyWindowIfNeeded_ignoringOldKeyWindow_forReason___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if (*(*(*(a1 + 32) + 8) + 24) == *(a1 + 40))
  {
    v3 = 0;
    *a3 = 1;
  }

  else
  {
    v5 = a2;
    v6 = [v5 allowsWeakReference];
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v8 = [v5 _canPromoteFromKeyWindowStack];
    }

    else
    {
      v8 = 1;
    }

    if (*(a1 + 48) == 1)
    {
      v9 = _UIWindowSceneCompatibleIsHidden(v5) ^ 1;
    }

    else
    {
      v9 = 1;
    }

    ++*(*(*(a1 + 32) + 8) + 24);
    v10 = v8 & v9;
    if (v7)
    {
      v3 = v10;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void __138__UIWindowScene__evaluateSceneKeyWindowForWindowMadeKey_consideringVisibility_findingNewKeyWindowIfNeeded_ignoringOldKeyWindow_forReason___block_invoke_274(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) _eventDeferringManager];
  v5 = [(_UIEventDeferringManager *)v4 internalBehavior];
  v6 = [v5 wantsLocalCompatibilityRules];

  if ((*(a1 + 64) & 1) != 0 || (v6 & a2) != 0)
  {
    v8 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %p: Begin event deferring in %@ for window: %p", *(a1 + 56), *(a1 + 40), v8, *(a1 + 48)];
    [(UIWindowScene *)*(a1 + 40) _beginKeyboardEnvironmentEventDeferringForWindow:v7 reason:?];
  }
}

uint64_t __138__UIWindowScene__evaluateSceneKeyWindowForWindowMadeKey_consideringVisibility_findingNewKeyWindowIfNeeded_ignoringOldKeyWindow_forReason___block_invoke_2_278(uint64_t result)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(result + 64) == 1)
  {
    v1 = result;
    if (*(result + 65) == 1)
    {
      result = *(result + 32);
      if (result)
      {
        v2 = objc_opt_class();
        Name = class_getName(v2);
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("KeyWindow", _UIInternalPreference_DisablePassthroughWindow_block_invoke_4___s_category);
        if (*CategoryCachedImpl)
        {
          v5 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            v6 = *(v1 + 56);
            v7 = *(v1 + 32);
            v8 = *(v1 + 40);
            v9 = v5;
            v10 = 136447234;
            v11 = v6;
            v12 = 2050;
            v13 = v8;
            v14 = 2082;
            v15 = Name;
            v16 = 2050;
            v17 = v7;
            v18 = 1026;
            v19 = [v7 _contextId];
            _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%{public}s: %{public}p: Window resigning key in scene: <%{public}s: %{public}p>; contextId: 0x%{public}X", &v10, 0x30u);
          }
        }

        [*(v1 + 32) resignKeyWindow];
        return [*(v1 + 48) postNotificationName:@"UIWindowDidResignKeyNotification" object:*(v1 + 32)];
      }
    }
  }

  return result;
}

uint64_t __138__UIWindowScene__evaluateSceneKeyWindowForWindowMadeKey_consideringVisibility_findingNewKeyWindowIfNeeded_ignoringOldKeyWindow_forReason___block_invoke_279(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v1 = result;
    if (*(result + 49) == 1)
    {
      [*(result + 32) becomeKeyWindow];
      v3 = *(v1 + 32);
      v2 = *(v1 + 40);

      return [v2 postNotificationName:@"UIWindowDidBecomeKeyNotification" object:v3];
    }
  }

  return result;
}

- (void)_startChangeToNewEffectiveGeometrySettingValue:(uint64_t)value
{
  v9 = a2;
  if (value)
  {
    v4 = _UISetCurrentFallbackEnvironment(value);
    objc_storeStrong((value + 328), a2);
    v5 = *(value + 336);
    v6 = v5 + 1;
    *(value + 336) = v5 + 1;
    if (!v5)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"UIWindowSceneWillUpdateEffectiveGeometryNotification" object:value userInfo:0];

      [value willChangeValueForKey:@"effectiveGeometry"];
    }

    if (*(value + 336) == v6)
    {
      objc_storeStrong((value + 320), a2);
    }

    v8 = *(value + 328);
    *(value + 328) = 0;

    _UIRestorePreviousFallbackEnvironment(v4);
  }
}

- (void)_completeChangeFromPreviousEffectiveGeometry:(uint64_t)geometry
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (geometry)
  {
    v4 = _UISetCurrentFallbackEnvironment(geometry);
    v5 = *(geometry + 336);
    if (v5 == 1)
    {
      if ((*(geometry + 428) & 8) != 0)
      {
        delegate = [geometry delegate];
        [delegate windowScene:geometry didUpdateEffectiveGeometry:v3];
      }

      [geometry didChangeValueForKey:@"effectiveGeometry"];
      if (v3)
      {
        v18 = @"_UIWindowScenePreviousEffectiveGeometryKey";
        v19 = v3;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      }

      else
      {
        v11 = 0;
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"UIWindowSceneDidUpdateEffectiveGeometryNotification" object:geometry userInfo:v11];

      LODWORD(defaultCenter) = [v3 isInteractivelyResizing];
      isInteractivelyResizing = [*(geometry + 320) isInteractivelyResizing];
      if (defaultCenter != isInteractivelyResizing)
      {
        v14 = @"UIWindowSceneDidEndLiveResizeNotification";
        if (isInteractivelyResizing)
        {
          v14 = @"UIWindowSceneDidBeginLiveResizeNotification";
        }

        v15 = MEMORY[0x1E696AD88];
        v16 = v14;
        defaultCenter2 = [v15 defaultCenter];
        [defaultCenter2 postNotificationName:v16 object:geometry];
      }

      v5 = *(geometry + 336);
    }

    else if (!v5)
    {
      geometry = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: Inconsistency issue updating effective geometry: it is invalid to attempt completing a geometry change without starting it: %@", "-[UIWindowScene _completeChangeFromPreviousEffectiveGeometry:]", geometry];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(sel__completeChangeFromPreviousEffectiveGeometry_);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v21 = v7;
        v22 = 2114;
        v23 = v9;
        v24 = 2048;
        geometryCopy = geometry;
        v26 = 2114;
        v27 = @"UIWindowScene.m";
        v28 = 1024;
        v29 = 2273;
        v30 = 2114;
        v31 = geometry;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [geometry UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18A0D26F8);
    }

    *(geometry + 336) = v5 - 1;
    _UIRestorePreviousFallbackEnvironment(v4);
  }
}

- (void)_computeMetrics:(BOOL)metrics withTransitionContext:(id)context
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__UIWindowScene__computeMetrics_withTransitionContext___block_invoke;
  v4[3] = &unk_1E70F35E0;
  v4[4] = self;
  metricsCopy = metrics;
  [(UIWindowScene *)self _computeTraitCollectionAndCoordinateSpaceForcingDelegateCallback:0 withAction:v4];
}

void __55__UIWindowScene__computeMetrics_withTransitionContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [v2 _allWindows];
  v3 = [*(a1 + 32) _inheritingWindowsIncludingInvisible:1];
  v4 = [v5 arrayByAddingObjectsFromArray:v3];
  [v2 _computeMetricsForWindows:v4 animated:*(a1 + 40)];
}

- (void)_computeTraitCollectionAndCoordinateSpaceForcingDelegateCallback:(BOOL)callback withAction:(id)action
{
  v77 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  _oldSettings = [(UIScene *)self _oldSettings];
  traitCollection = [(UIWindowScene *)self traitCollection];
  _coordinateSpace = [(UIWindowScene *)self _coordinateSpace];
  transitionEffectiveGeometry = self->_transitionEffectiveGeometry;
  if (!transitionEffectiveGeometry)
  {
    transitionEffectiveGeometry = self->_effectiveGeometry;
  }

  v8 = transitionEffectiveGeometry;
  selfCopy = self;
  v10 = [_UIWindowSceneCoordinateSpace alloc];
  _settingsScene = [(UIScene *)selfCopy _settingsScene];
  _effectiveSettings = [_settingsScene _effectiveSettings];
  v13 = [(_UIWindowSceneCoordinateSpace *)v10 initWithWindowScene:selfCopy effectiveSettings:_effectiveSettings];

  coordinateSpace = selfCopy->_coordinateSpace;
  selfCopy->_coordinateSpace = v13;

  v15 = selfCopy;
  TraitCollectionTSD = GetTraitCollectionTSD();
  v17 = TraitCollectionTSD[9];
  TraitCollectionTSD[9] = 1;
  _parentTraitCollection = [(UIWindowScene *)v15 _parentTraitCollection];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ____UIWindowSceneTraitCollectionWithSceneUISettings_block_invoke;
  v73 = &unk_1E7101B20;
  *v74 = v15;
  v19 = [(UITraitCollection *)_parentTraitCollection _traitCollectionByModifyingTraitsCopyOnWrite:buf];

  v20 = v8;
  *(GetTraitCollectionTSD() + 9) = v17;

  traitCollection = v15->_traitCollection;
  v15->_traitCollection = v19;

  v22 = [UIWindowSceneGeometry _calculateEffectiveGeometryForWindowScene:v15];
  v23 = v22;
  v67 = v22;
  if (callback || !v8 || ([v22 isEqual:v8] & 1) == 0)
  {
    [(UIWindowScene *)v15 _startChangeToNewEffectiveGeometrySettingValue:v23];
    v24 = 1;
    if (!actionCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v24 = 0;
  if (actionCopy)
  {
LABEL_9:
    actionCopy[2](actionCopy);
  }

LABEL_10:
  v68 = actionCopy;
  if (v24)
  {
    [(UIWindowScene *)v15 _completeChangeFromPreviousEffectiveGeometry:v8];
  }

  _settingsScene2 = [(UIScene *)v15 _settingsScene];
  _effectiveSettings2 = [_settingsScene2 _effectiveSettings];

  v27 = 1;
  if (!callback && _oldSettings)
  {
    v28 = v15->_traitCollection;
    v29 = selfCopy->_coordinateSpace;
    v30 = traitCollection;
    v31 = v29;
    v32 = v28;
    [_coordinateSpace bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [(UICoordinateSpace *)v31 bounds];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v78.origin.x = v34;
    v78.origin.y = v36;
    v78.size.width = v38;
    v78.size.height = v40;
    v79.origin.x = v42;
    v79.origin.y = v44;
    v79.size.width = v46;
    v79.size.height = v48;
    LOBYTE(v31) = CGRectEqualToRect(v78, v79);
    interfaceOrientation = [_effectiveSettings2 interfaceOrientation];
    interfaceOrientation2 = [_oldSettings interfaceOrientation];
    v51 = [v30 isEqual:v32];

    v52 = v31 ^ 1;
    if (interfaceOrientation != interfaceOrientation2)
    {
      v52 = 1;
    }

    v27 = v52 | v51 ^ 1;
  }

  v53 = *(__UILogGetCategoryCachedImpl("InterfaceStyle", &_computeTraitCollectionAndCoordinateSpaceForcingDelegateCallback_withAction____s_category) + 8);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    if (v27)
    {
      v54 = @"Should";
    }

    else
    {
      v54 = @"Should not";
    }

    v55 = v53;
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    userInterfaceStyle2 = [(UITraitCollection *)v15->_traitCollection userInterfaceStyle];
    v58 = MEMORY[0x1E696AEC0];
    v59 = v15;
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    v62 = [v58 stringWithFormat:@"<%@: %p>", v61, v59];

    v63 = v62;
    _persistenceIdentifier = [(UIScene *)v59 _persistenceIdentifier];
    *buf = 138544386;
    *&buf[4] = v54;
    v20 = v8;
    *&buf[12] = 2050;
    *&buf[14] = userInterfaceStyle;
    *&buf[22] = 2050;
    v73 = userInterfaceStyle2;
    *v74 = 2114;
    *&v74[2] = v62;
    v75 = 2114;
    v76 = _persistenceIdentifier;
    _os_log_impl(&dword_188A29000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ send trait collection or coordinate space update, interface style %{public}ld -> %{public}ld, %{public}@ (%{public}@)", buf, 0x34u);
  }

  if ((v27 & 1) != 0 && (*&v15->_windowSceneFlags & 4) != 0)
  {
    v65 = _UISetCurrentFallbackEnvironment(v15);
    delegate = [(UIScene *)v15 delegate];
    [delegate windowScene:v15 didUpdateCoordinateSpace:_coordinateSpace interfaceOrientation:objc_msgSend(_oldSettings traitCollection:{"interfaceOrientation"), traitCollection}];

    _UIRestorePreviousFallbackEnvironment(v65);
  }
}

- (void)_computeMetricsForWindows:(id)windows animated:(BOOL)animated
{
  animatedCopy = animated;
  windowsCopy = windows;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Window", &qword_1ED498B78);
  v8 = *(CategoryCachedImpl + 8);
  v9 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "UpdateSceneMetrics", "", buf, 2u);
    }
  }

  metricsCalculator = self->_metricsCalculator;
  if (animatedCopy)
  {
    v12 = [(UIScene *)self _isSuspendedUnderLock]^ 1;
  }

  else
  {
    v12 = 0;
  }

  [(_UISceneMetricsCalculating *)metricsCalculator _updateMetricsOnWindows:windowsCopy animated:v12];
  v13 = __UILogGetCategoryCachedImpl("Window", &qword_1ED498B80);
  v14 = *(v13 + 8);
  v15 = os_signpost_id_make_with_pointer(*(v13 + 8), self);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v14, OS_SIGNPOST_INTERVAL_END, v16, "UpdateSceneMetrics", "", v17, 2u);
    }
  }
}

- (void)_updateSceneTraitsAndPushTraitsToScreen:(BOOL)screen callParentWillTransitionToTraitCollection:(BOOL)collection
{
  collectionCopy = collection;
  screenCopy = screen;
  v7 = _UISetCurrentFallbackEnvironment(self);
  traitCollection = [(UIWindowScene *)self traitCollection];
  selfCopy = self;
  TraitCollectionTSD = GetTraitCollectionTSD();
  v11 = TraitCollectionTSD[9];
  TraitCollectionTSD[9] = 1;
  _parentTraitCollection = [(UIWindowScene *)selfCopy _parentTraitCollection];
  *&v21 = MEMORY[0x1E69E9820];
  *(&v21 + 1) = 3221225472;
  *&v22 = ____UIWindowSceneTraitCollectionWithSceneUISettings_block_invoke;
  *(&v22 + 1) = &unk_1E7101B20;
  v23 = selfCopy;
  v13 = [(UITraitCollection *)_parentTraitCollection _traitCollectionByModifyingTraitsCopyOnWrite:?];

  *(GetTraitCollectionTSD() + 9) = v11;
  v14 = traitCollection;
  v15 = v13;
  v16 = v15;
  coordinateSpace = v15;
  delegate = v14;
  if (v14 == v15)
  {
    goto LABEL_12;
  }

  if (v14 && v15)
  {
    v19 = [v14 isEqual:v15];

    if (v19)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  objc_storeStrong(&selfCopy->_traitCollection, v13);
  if (v14)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    [(UITraitCollection *)v14 _createTraitTokenSetForChangesFromTraitCollection:v16, &v21];
    [(_UITraitChangeRegistry *)selfCopy->_traitChangeRegistry traitsDidChange:selfCopy forTraitEnvironment:v14 withPreviousTraitCollection:?];
    if (v21)
    {
    }
  }

  delegate = [(UIScene *)selfCopy delegate];
  if ((*&selfCopy->_windowSceneFlags & 4) != 0)
  {
    coordinateSpace = [(UIWindowScene *)selfCopy coordinateSpace];
    [delegate windowScene:selfCopy didUpdateCoordinateSpace:coordinateSpace interfaceOrientation:-[UIWindowScene _interfaceOrientation](selfCopy traitCollection:{"_interfaceOrientation"), v14}];
LABEL_12:
  }

LABEL_14:
  v20.receiver = selfCopy;
  v20.super_class = UIWindowScene;
  [(UIScene *)&v20 _updateSceneTraitsAndPushTraitsToScreen:screenCopy callParentWillTransitionToTraitCollection:collectionCopy];
  _UIRestorePreviousFallbackEnvironment(v7);
}

- (CGRect)_referenceBoundsForOrientation:(int64_t)orientation
{
  [(UIWindowScene *)self _referenceBounds];

  v8 = _UIWindowConvertRectFromSceneReferenceSpaceToSceneSpace(orientation, v4, v5, v6, v7, v6, v7);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (UIEdgeInsets)_peripheryInsets
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (dyld_program_sdk_at_least())
  {
    _displayInfoProvider = [(UIWindowScene *)self _displayInfoProvider];
    [_displayInfoProvider peripheryInsets];
    v4 = v8;
    v3 = v9;
    v5 = v10;
    v6 = v11;
  }

  v12 = v4;
  v13 = v3;
  v14 = v5;
  v15 = v6;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)orientation
{
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (dyld_program_sdk_at_least())
  {
    if ([(UIWindowScene *)self _usesSceneSettingBasedSafeAreaInsets])
    {
      ui_safeArea = [(UIScene *)self ui_safeArea];
      [ui_safeArea safeAreaEdgeInsetsForOrientation:orientation];
      v8 = v10;
      v7 = v11;
      v6 = v12;
      v5 = v13;
    }

    else
    {
      ui_safeArea = [(UIWindowScene *)self _displayInfoProvider];
      [ui_safeArea safeAreaInsetsPortrait];
      v8 = v14;
      v7 = v17;
      v6 = v15;
      v5 = v16;
      if (v17 != 0.0 || v14 != 0.0 || v16 != 0.0 || v15 != 0.0)
      {
        [ui_safeArea homeAffordanceOverlayAllowance];
        v19 = v18;
        if ([(UIWindowScene *)self _shouldRotateSafeAreaInsetsToInterfaceOrientation])
        {
          if (orientation == 4)
          {
            v20 = v8;
          }

          else
          {
            v20 = v5;
          }

          if (orientation == 4)
          {
            v21 = v5;
          }

          else
          {
            v21 = v6;
          }

          if (orientation == 4)
          {
            v22 = v6;
          }

          else
          {
            v22 = v7;
          }

          if (orientation == 4)
          {
            v23 = v7;
          }

          else
          {
            v23 = v8;
          }

          if (orientation == 3)
          {
            v20 = v6;
            v21 = v7;
            v22 = v8;
            v23 = v5;
          }

          if (orientation == 2)
          {
            v24 = v7;
          }

          else
          {
            v24 = v20;
          }

          if (orientation == 2)
          {
            v25 = v8;
          }

          else
          {
            v25 = v21;
          }

          if (orientation == 2)
          {
            v8 = v6;
          }

          else
          {
            v5 = v22;
            v8 = v23;
          }

          v26 = [(UIScene *)self _displayClientComponent:v20];
          v27 = v26;
          if (v26)
          {
            [v26 displayBasedSafeAreaInsets];
            if (orientation == 4)
            {
              v32 = v28;
            }

            else
            {
              v32 = v31;
            }

            if (orientation == 4)
            {
              v33 = v30;
            }

            else
            {
              v33 = v29;
            }

            if (orientation != 3)
            {
              v30 = v32;
              v28 = v33;
            }

            if (orientation == 2)
            {
              v28 = v31;
            }

            else
            {
              v29 = v30;
            }

            v34 = fmax(v28, v29);
          }

          else
          {
            v34 = fmax(v5, v24);
          }

          v7 = fmax(v5, v34);
          v5 = fmax(v24, v34);

          v6 = v25;
        }

        v6 = fmax(v6, v19);
      }
    }
  }

  v35 = v8;
  v36 = v7;
  v37 = v6;
  v38 = v5;
  result.right = v38;
  result.bottom = v37;
  result.left = v36;
  result.top = v35;
  return result;
}

- (_UICornerInsets)_safeAreaCornerInsets
{
  _interfaceOrientation = [(UIWindowScene *)self _interfaceOrientation];

  return [(UIWindowScene *)self _safeAreaCornerInsetsForInterfaceOrientation:_interfaceOrientation];
}

- (_UICornerInsets)_safeAreaCornerInsetsForInterfaceOrientation:(SEL)orientation
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    ui_safeArea = [(UIScene *)self ui_safeArea];
    if (ui_safeArea)
    {
      v9 = ui_safeArea;
      [ui_safeArea safeAreaCornerInsetsForOrientation:a4];
      ui_safeArea = v9;
    }

    else
    {
      retstr->bottomRight = 0u;
      retstr->topRight = 0u;
      retstr->topLeft = 0u;
      retstr->bottomLeft = 0u;
    }
  }

  else
  {
    retstr->bottomRight = 0u;
    retstr->topRight = 0u;
    retstr->topLeft = 0u;
    retstr->bottomLeft = 0u;
  }

  return result;
}

- (void)_setShouldDisableTouchCancellationOnRotation:(BOOL)rotation
{
  if (rotation)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_windowSceneFlags + 8) = *(&self->_windowSceneFlags + 8) & 0xFD | v3;
}

- (id)_disableTouchCancellationOnRotation
{
  v2 = [[UIWindowSceneTouchCancellationOnRotationAssertion alloc] initWithWindowScene:self];

  return v2;
}

- (void)_updateClientSettingsToInterfaceOrientation:(int64_t)orientation withAnimationDuration:(double)duration
{
  _effectiveUIClientSettings = [(UIScene *)self _effectiveUIClientSettings];
  interfaceOrientation = [_effectiveUIClientSettings interfaceOrientation];

  if (interfaceOrientation != orientation)
  {
    if ([(UIScene *)self _isUIKitManaged])
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__309;
      v17 = __Block_byref_object_dispose__310;
      v18 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __83__UIWindowScene__updateClientSettingsToInterfaceOrientation_withAnimationDuration___block_invoke;
      v11[3] = &unk_1E7124390;
      v11[5] = &v13;
      v11[6] = orientation;
      *&v11[7] = duration;
      v11[4] = self;
      v12 = fabs(duration) >= 2.22044605e-16;
      [(UIScene *)self _updateUIClientSettingsWithUITransitionBlock:v11];
      v9 = v14[5];
      if (v9)
      {
        (*(v9 + 16))();
      }

      _Block_object_dispose(&v13, 8);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __83__UIWindowScene__updateClientSettingsToInterfaceOrientation_withAnimationDuration___block_invoke_2;
      v10[3] = &__block_descriptor_40_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
      v10[4] = orientation;
      [(UIScene *)self _updateUIClientSettingsWithBlock:v10];
    }

    if (([(UIScene *)self _systemShellOwnsInterfaceOrientation]& 1) == 0)
    {
      [(UIWindowScene *)self _updateEffectiveGeometryIfNeeded];
    }
  }
}

uint64_t __83__UIWindowScene__updateClientSettingsToInterfaceOrientation_withAnimationDuration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  v7 = a2;
  [v7 setInterfaceOrientation:v6];
  v8 = [MEMORY[0x1E698E608] settingsWithDuration:*(a1 + 56)];
  [v5 setAnimationSettings:v8];

  v9 = *(a1 + 32);
  if ((v9[436] & 2) != 0)
  {
    [v5 setDisableTouchCancellationOnRotation:1];
    v9 = *(a1 + 32);
  }

  v10 = [v9 statusBarManager];
  v11 = [v10 updateStatusBarAppearanceWithClientSettings:v7 transitionContext:v5];

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(a1 + 64);
  return v14;
}

- (int64_t)_interfaceOrientationForSupportedOrientations:(unint64_t)orientations preferredOrientation:(int64_t)orientation
{
  _effectiveUISettings = [(UIScene *)self _effectiveUISettings];
  interfaceOrientationMapResolver = [_effectiveUISettings interfaceOrientationMapResolver];

  if (interfaceOrientationMapResolver)
  {
    v9 = [interfaceOrientationMapResolver interfaceOrientationForSupportedOrientations:orientations preferredOrientation:orientation];
  }

  else
  {
    v9 = [UIApp _fallbackInterfaceOrientationForSupportedOrientations:orientations preferredOrientation:orientation currentOrientation:{-[UIWindowScene _interfaceOrientation](self, "_interfaceOrientation")}];
  }

  v10 = v9;

  return v10;
}

- (void)_componentDidUpdateTraitOverrides:(id)overrides
{
  v18 = *MEMORY[0x1E69E9840];
  overridesCopy = overrides;
  _sceneComponents = [(UIScene *)self _sceneComponents];
  v6 = [_sceneComponents containsObject:overridesCopy];

  if ((v6 & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v14 = 138412546;
        v15 = overridesCopy;
        v16 = 2112;
        selfCopy4 = self;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Unregistered component %@ updated trait overrides for scene %@", &v14, 0x16u);
      }
    }

    else
    {
      v10 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498B88) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412546;
        v15 = overridesCopy;
        v16 = 2112;
        selfCopy4 = self;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Unregistered component %@ updated trait overrides for scene %@", &v14, 0x16u);
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = 138412546;
        v15 = overridesCopy;
        v16 = 2112;
        selfCopy4 = self;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Component %@ updated trait overrides for scene %@, but does not respond to _traitOverrides selector", &v14, 0x16u);
      }
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498B90) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412546;
        v15 = overridesCopy;
        v16 = 2112;
        selfCopy4 = self;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Component %@ updated trait overrides for scene %@, but does not respond to _traitOverrides selector", &v14, 0x16u);
      }
    }
  }

  componentsWithTraitOverrides = self->_componentsWithTraitOverrides;
  if (!componentsWithTraitOverrides)
  {
    v8 = [MEMORY[0x1E695DFD8] setWithObject:overridesCopy];
    goto LABEL_7;
  }

  if (![(NSSet *)componentsWithTraitOverrides containsObject:overridesCopy])
  {
    v8 = [(NSSet *)self->_componentsWithTraitOverrides setByAddingObject:overridesCopy];
LABEL_7:
    v9 = self->_componentsWithTraitOverrides;
    self->_componentsWithTraitOverrides = v8;
  }

  [(UIWindowScene *)self _updateSceneTraitsAndPushTraitsToScreen:0 callParentWillTransitionToTraitCollection:0];
}

- (void)_registerSceneComponent:(id)component forKey:(id)key
{
  componentCopy = component;
  v9.receiver = self;
  v9.super_class = UIWindowScene;
  [(UIScene *)&v9 _registerSceneComponent:componentCopy forKey:key];
  if (objc_opt_respondsToSelector())
  {
    v7 = componentCopy;
    _traitOverrides = [v7 _traitOverrides];

    if (_traitOverrides)
    {
      [(UIWindowScene *)self _componentDidUpdateTraitOverrides:v7];
    }
  }
}

- (CGSize)_screenRequestedDisplayNativePixelSize
{
  _FBSScene = [(UIScene *)self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  isUISubclass = [clientSettings isUISubclass];

  if (isUISubclass)
  {
    _FBSScene2 = [(UIScene *)self _FBSScene];
    uiClientSettings = [_FBSScene2 uiClientSettings];
    displayConfigurationRequest = [uiClientSettings displayConfigurationRequest];
    [displayConfigurationRequest nativePixelSize];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
  }

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_setScreenRequestedDisplayNativePixelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _FBSScene = [(UIScene *)self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  isUISubclass = [clientSettings isUISubclass];

  if (isUISubclass)
  {
    _displayConfigurationRequest = [(UIWindowScene *)self _displayConfigurationRequest];
    if (_displayConfigurationRequest)
    {
      _displayConfigurationRequest2 = [(UIWindowScene *)self _displayConfigurationRequest];
      v12 = [_displayConfigurationRequest2 mutableCopy];
    }

    else
    {
      v12 = objc_opt_new();
    }

    [v12 setNativePixelSize:{width, height}];
    v11 = [v12 copy];
    [(UIWindowScene *)self _setDisplayConfigurationRequest:v11];
  }
}

- (int64_t)_resolvedOverscanCompensation
{
  avkitRequestedOverscanCompensation = self->_avkitRequestedOverscanCompensation;
  if (avkitRequestedOverscanCompensation == -1)
  {
    return self->_screenRequestedOverscanCompensation;
  }

  return avkitRequestedOverscanCompensation;
}

- (void)_setScreenRequestedOverscanCompensation:(int64_t)compensation
{
  _FBSScene = [(UIScene *)self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  isUISubclass = [clientSettings isUISubclass];

  if (isUISubclass)
  {
    self->_screenRequestedOverscanCompensation = compensation;
    _resolvedOverscanCompensation = [(UIWindowScene *)self _resolvedOverscanCompensation];
    _displayConfigurationRequest = [(UIWindowScene *)self _displayConfigurationRequest];

    if (_displayConfigurationRequest)
    {
      _displayConfigurationRequest2 = [(UIWindowScene *)self _displayConfigurationRequest];
      overscanCompensation = [_displayConfigurationRequest2 overscanCompensation];

      if (overscanCompensation == _resolvedOverscanCompensation)
      {
        return;
      }

      _displayConfigurationRequest3 = [(UIWindowScene *)self _displayConfigurationRequest];
      v15 = [_displayConfigurationRequest3 mutableCopy];

      v13 = v15;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v13 = objc_opt_new();
      if (!v13)
      {
        return;
      }
    }

    v16 = v13;
    [v13 setOverscanCompensation:_resolvedOverscanCompensation];
    v14 = [v16 copy];
    [(UIWindowScene *)self _setDisplayConfigurationRequest:v14];
  }
}

- (void)_setAVKitRequestedRefreshRate:(double)rate HDRMode:(int64_t)mode overscanCompensation:(int64_t)compensation
{
  _FBSScene = [(UIScene *)self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  isUISubclass = [clientSettings isUISubclass];

  if (!isUISubclass)
  {
    return;
  }

  self->_avkitRequestedOverscanCompensation = compensation;
  _resolvedOverscanCompensation = [(UIWindowScene *)self _resolvedOverscanCompensation];
  _displayConfigurationRequest = [(UIWindowScene *)self _displayConfigurationRequest];

  if (_displayConfigurationRequest)
  {
    _displayConfigurationRequest2 = [(UIWindowScene *)self _displayConfigurationRequest];
    [_displayConfigurationRequest2 refreshRate];
    v16 = v15;
    hdrMode = [_displayConfigurationRequest2 hdrMode];
    overscanCompensation = [_displayConfigurationRequest2 overscanCompensation];
    if (v16 == rate && hdrMode == mode && overscanCompensation == _resolvedOverscanCompensation)
    {
      v22 = 0;
    }

    else
    {
      _displayConfigurationRequest3 = [(UIWindowScene *)self _displayConfigurationRequest];
      v22 = [_displayConfigurationRequest3 mutableCopy];
    }

    v19 = v22;
    if (!v22)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = objc_opt_new();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  v23 = v19;
  [v19 setRefreshRate:rate];
  [v23 setHdrMode:mode];
  [v23 setOverscanCompensation:_resolvedOverscanCompensation];
  v21 = [v23 copy];
  [(UIWindowScene *)self _setDisplayConfigurationRequest:v21];

  v19 = v23;
LABEL_13:
}

- (FBSDisplayConfigurationRequest)_displayConfigurationRequest
{
  _FBSScene = [(UIScene *)self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  isUISubclass = [clientSettings isUISubclass];

  if (isUISubclass)
  {
    _FBSScene2 = [(UIScene *)self _FBSScene];
    uiClientSettings = [_FBSScene2 uiClientSettings];
    displayConfigurationRequest = [uiClientSettings displayConfigurationRequest];
  }

  else
  {
    displayConfigurationRequest = 0;
  }

  return displayConfigurationRequest;
}

- (void)_setDisplayConfigurationRequest:(id)request
{
  requestCopy = request;
  _FBSScene = [(UIScene *)self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  isUISubclass = [clientSettings isUISubclass];

  if (requestCopy && isUISubclass)
  {
    _FBSScene2 = [(UIScene *)self _FBSScene];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__UIWindowScene__setDisplayConfigurationRequest___block_invoke;
    v9[3] = &unk_1E70F44D8;
    v10 = requestCopy;
    [_FBSScene2 updateUIClientSettingsWithBlock:v9];
  }
}

- (void)_noteDisplayIdentityDidChangeWithConfiguration:(id)configuration
{
  v3.receiver = self;
  v3.super_class = UIWindowScene;
  [(UIScene *)&v3 _noteDisplayIdentityDidChangeWithConfiguration:configuration];
}

- (void)_applySnapshotSettings:(id)settings forActions:(id)actions
{
  *&self->_windowSceneFlags |= 0x10u;
  [(UIScene *)self _applyOverrideSettings:settings forActions:actions];
  *&self->_windowSceneFlags &= ~0x10u;
}

- (BOOL)_permitContextCreationForBindingDescription:(id *)description
{
  if (![(UIScene *)self _hasLifecycle])
  {
    v6 = +[_UISceneLifecycleMultiplexer sharedInstance];
    if ([v6 isActive] & 1) != 0 || (objc_msgSend(v6, "suspendedEventsOnly") & 1) != 0 || (objc_msgSend(UIApp, "_isActivating"))
    {
      _isRespondingToLifecycleEvent = 1;
    }

    else
    {
      contextManagementPolicy = [(_UIContextBinder *)self->_contextBinder contextManagementPolicy];
      var5 = description->var5;
      _isRespondingToLifecycleEvent = 1;
      if (!var5 && contextManagementPolicy != 1)
      {
        _isRespondingToLifecycleEvent = [(UIScene *)self _isRespondingToLifecycleEvent];
      }
    }

    return _isRespondingToLifecycleEvent;
  }

  if (-[UIScene _isActive](self, "_isActive") || -[UIScene _isSuspendedEventsOnly](self, "_isSuspendedEventsOnly") || ([UIApp _isActivating] & 1) != 0)
  {
    return 1;
  }

  contextManagementPolicy2 = [(_UIContextBinder *)self->_contextBinder contextManagementPolicy];
  v9 = description->var5;
  _isRespondingToLifecycleEvent = 1;
  if (v9 || contextManagementPolicy2 == 1)
  {
    return _isRespondingToLifecycleEvent;
  }

  return [(UIScene *)self _isRespondingToLifecycleEvent];
}

- (_UITypedStorage)_typedStorage
{
  if (self)
  {
    v2 = *(self + 472);
    if (!v2)
    {
      v2 = objc_alloc_init(_UITypedStorage);
      objc_storeStrong((self + 472), v2);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_inheritingWindowsIncludingInvisible:(BOOL)invisible
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _interitingScenes = [(UIScene *)self _interitingScenes];
  v7 = [_interitingScenes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(_interitingScenes);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          if (invisible)
          {
            [v11 _allWindows];
          }

          else
          {
            [v11 _visibleWindows];
          }
          v14 = ;
          [v5 addObjectsFromArray:v14];
        }
      }

      v8 = [_interitingScenes countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

void __78__UIWindowScene__screenTraitCollectionWithOverridesAppliedFromSceneUISettings__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];
    v2 = v4;
    if ((v3 & 1) == 0)
    {
      [v4 _updateSceneTraitsAndPushTraitsToScreen:1 callParentWillTransitionToTraitCollection:1];
      v2 = v4;
    }
  }
}

- (void)_setOverrideParentTraitEnvironment:(id)environment
{
  obj = environment;
  WeakRetained = objc_loadWeakRetained(&self->_overrideParentTraitEnvironment);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [WeakRetained _unregisterAuxiliaryChildEnvironmentForTraitInvalidations:self];
    }

    objc_storeWeak(&self->_overrideParentTraitEnvironment, obj);
    if (obj)
    {
      [obj _registerAuxiliaryChildEnvironmentForTraitInvalidations:self];
    }

    [(UIWindowScene *)self _invalidateAuxiliaryChildTraits];
  }
}

- (void)_updateAuxiliaryChildTraitsIfNeeded
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  _allWindows = [(UIWindowScene *)self _allWindows];
  v3 = [_allWindows countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(_allWindows);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateTraitsIfNeeded];
      }

      while (v4 != v6);
      v4 = [_allWindows countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_parentTraitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideParentTraitEnvironment);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    screen = WeakRetained;
  }

  else
  {
    screen = [(UIWindowScene *)self screen];
  }

  v6 = screen;

  return v6;
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  environmentCopy = environment;
  traitCollection = [(UIWindowScene *)self traitCollection];
  if (self->_traitOverrides)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__UIWindowScene__traitCollectionForChildEnvironment___block_invoke;
    v8[3] = &unk_1E7101B48;
    v8[4] = self;
    v9 = environmentCopy;
    v6 = [(UITraitCollection *)traitCollection _traitCollectionByModifyingTraitsCopyOnWrite:v8];

    traitCollection = v6;
  }

  return traitCollection;
}

- (BOOL)assertionActivationStateForType:(unint64_t)type
{
  if (!type)
  {
    return *(&self->_windowSceneFlags + 8) & 1;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindowScene.m" lineNumber:3261 description:{@"Unknown _UIAssertionType %lu", type}];

  return 0;
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  if (pthread_main_np() == 1)
  {
    if (type)
    {
LABEL_3:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIWindowScene.m" lineNumber:3283 description:{@"Unknown _UIAssertionType %lu", type}];

      return;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIWindowScene.m" lineNumber:3268 description:@"Call must be made on main thread"];

    if (type)
    {
      goto LABEL_3;
    }
  }

  p_windowSceneFlags = &self->_windowSceneFlags;
  *(&self->_windowSceneFlags + 8) = *(&self->_windowSceneFlags + 8) & 0xFE | state;
  if (!state && (*p_windowSceneFlags & 0x20) != 0)
  {
    *p_windowSceneFlags &= ~0x20u;

    [(UIWindowScene *)self _scheduleResizeFinishedActionAndFadeOutSnapshot];
  }
}

- (void)_requestSceneDestructionForAllScenes:(void *)scenes
{
  if (scenes)
  {
    _FBSScene = [scenes _FBSScene];
    if (_FBSScene)
    {
      v6 = _FBSScene;
      v4 = [[UIDestroySceneAction alloc] initWithPersistedIdentifiers:0 preferredAnimationType:1 forDestroyingSession:1 applyToAllScenes:a2 userOriginatedRequest:1 callbackQueue:0 completion:&__block_literal_global_395_1];
      v5 = [MEMORY[0x1E695DFD8] setWithObject:v4];
      [v6 sendActions:v5];

      _FBSScene = v6;
    }
  }
}

- (void)orderFrontPreferencesPanel:(id)panel
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"app-settings:"];
  [(UIScene *)self openURL:v4 options:0 completionHandler:&__block_literal_global_398_0];
}

- (void)_unlockPointerLockState:(id)state
{
  _FBSScene = [(UIScene *)self _FBSScene];
  if (_FBSScene)
  {
    v9 = _FBSScene;
    pointerLockState = [(UIScene *)self pointerLockState];
    isLocked = [pointerLockState isLocked];

    _FBSScene = v9;
    if (isLocked)
    {
      v7 = [[_UIPointerUnlockAction alloc] initWithInfo:0 responder:0];
      v8 = [MEMORY[0x1E695DFD8] setWithObject:v7];
      [v9 sendActions:v8];

      _FBSScene = v9;
    }
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_performClose_ != action && sel__performCloseAll_ != action)
  {
    if (sel_orderFrontPreferencesPanel_ == action)
    {
      v12 = UIApp;
      pointerLockState = [MEMORY[0x1E695DFF8] URLWithString:@"app-settings:"];
      if (![v12 canOpenURL:pointerLockState])
      {
        v11 = 0;
        goto LABEL_23;
      }

      isLocked = [(UIApplication *)UIApp _shouldRegisterTopLevelKeyboardShortcutsForWindowScene:?];
    }

    else
    {
      if (sel__unlockPointerLockState_ != action)
      {
        v16.receiver = self;
        v16.super_class = UIWindowScene;
        v11 = [(UIResponder *)&v16 canPerformAction:action withSender:senderCopy];
        goto LABEL_24;
      }

      pointerLockState = [(UIScene *)self pointerLockState];
      isLocked = [pointerLockState isLocked];
    }

    v11 = isLocked;
LABEL_23:

    goto LABEL_24;
  }

  v9 = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic();
  v10 = v9;
  if (v9 == 6 || v9 == 1)
  {
    _FBSScene = [(UIScene *)self _FBSScene];
    if (_FBSScene)
    {
      v11 = [(UIApplication *)UIApp _shouldRegisterTopLevelKeyboardShortcutsForWindowScene:?];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v10 == 6 || v10 == 1)
  {
  }

LABEL_24:

  return v11;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  v7.receiver = self;
  v7.super_class = UIWindowScene;
  [(UIResponder *)&v7 validateCommand:commandCopy];
  if ([commandCopy action] == sel_performClose_ || objc_msgSend(commandCopy, "action") == sel__performCloseAll_)
  {
    if ([commandCopy action] == sel_performClose_)
    {
      v5 = @"Close Window";
    }

    else
    {
      v5 = @"Close All Windows";
    }

    v6 = _UINSLocalizedStringWithDefaultValue(v5, v5);
    [commandCopy setTitle:v6];

    if (([UIApp supportsMultipleScenes] & 1) == 0)
    {
      [commandCopy setAttributes:{objc_msgSend(commandCopy, "attributes") | 4}];
    }
  }
}

- (void)_addSubclassDebugDescriptionWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = UIWindowScene;
  [(UIScene *)&v9 _addSubclassDebugDescriptionWithBuilder:builderCopy];
  if (os_variant_has_internal_diagnostics())
  {
    v7 = [builderCopy appendObject:self->_effectiveGeometry withName:@"effectiveGeometry"];
    v8 = [builderCopy appendObject:self->_transitionEffectiveGeometry withName:@"transitionEffectiveGeometry" skipIfNil:1];
  }

  else
  {
    transitionEffectiveGeometry = self->_transitionEffectiveGeometry;
    if (!transitionEffectiveGeometry)
    {
      transitionEffectiveGeometry = self->_effectiveGeometry;
    }

    v6 = [builderCopy appendObject:transitionEffectiveGeometry withName:@"effectiveGeometry"];
  }
}

- (_UITraitEnvironmentInternal)_overrideParentTraitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideParentTraitEnvironment);

  return WeakRetained;
}

- (id)_orientationDebugDescriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  if (_UIInterfaceOrientationLockIsAvailableForScene(self))
  {
    _FBSScene = [(UIScene *)self _FBSScene];
    ui_orientationClientSceneComponent = [_FBSScene ui_orientationClientSceneComponent];
  }

  else
  {
    ui_orientationClientSceneComponent = 0;
  }

  v7 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v7 setActiveMultilinePrefix:prefixCopy];

  activeMultilinePrefix = [v7 activeMultilinePrefix];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__UIWindowScene_UIKitOrientationDebugging___orientationDebugDescriptionBuilderWithMultilinePrefix___block_invoke;
  v14[3] = &unk_1E70F6228;
  v14[4] = self;
  v9 = v7;
  v15 = v9;
  v16 = ui_orientationClientSceneComponent;
  v10 = ui_orientationClientSceneComponent;
  [v9 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __99__UIWindowScene_UIKitOrientationDebugging___orientationDebugDescriptionBuilderWithMultilinePrefix___block_invoke(id *a1)
{
  v2 = [a1[4] _effectiveUISettings];
  v3 = a1[5];
  v4 = [v3 activeMultilinePrefix];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __99__UIWindowScene_UIKitOrientationDebugging___orientationDebugDescriptionBuilderWithMultilinePrefix___block_invoke_2;
  v25[3] = &unk_1E70F6228;
  v26 = a1[5];
  v5 = v2;
  v27 = v5;
  v28 = a1[6];
  [v3 appendBodySectionWithName:@"sceneSettings" multilinePrefix:v4 block:v25];

  v6 = [a1[4] _effectiveUIClientSettings];
  v7 = a1[5];
  v8 = [v7 activeMultilinePrefix];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __99__UIWindowScene_UIKitOrientationDebugging___orientationDebugDescriptionBuilderWithMultilinePrefix___block_invoke_3;
  v21 = &unk_1E70F6228;
  v22 = a1[5];
  v9 = v6;
  v23 = v9;
  v24 = a1[6];
  [v7 appendBodySectionWithName:@"clientSettings" multilinePrefix:v8 block:&v18];

  v10 = a1[5];
  v11 = [a1[4] screen];
  [v10 ui_appendOrientationDebugDescription:v11 withName:@"screen"];

  if ([v5 interfaceOrientationMode] == 1)
  {
    v12 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:a1[4]];
    v13 = MEMORY[0x1E695DFA8];
    v14 = [a1[4] _allWindows];
    v15 = [v13 setWithArray:v14];

    if (v12)
    {
      [v15 removeObject:v12];
    }

    [a1[5] ui_appendOrientationDebugDescription:v12 withName:@"windowDrivingOrientation"];
    v16 = a1[5];
    v17 = [v15 allObjects];
    [v16 ui_appendOrientationDebuggingArraySection:v17 withName:@"otherWindows" skipIfEmpty:1];
  }
}

void __99__UIWindowScene_UIKitOrientationDebugging___orientationDebugDescriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = UIApplicationSceneStringForInterfaceOrientationMode([*(a1 + 40) interfaceOrientationMode]);
  [v2 appendString:v3 withName:@"mode"];

  v4 = [*(a1 + 32) ui_appendInterfaceOrientation:objc_msgSend(*(a1 + 40) withName:{"interfaceOrientation"), @"orientation"}];
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = _NSStringFromUIOrientationLockState([v5 interfaceOrientationLockState]);
    [v6 appendString:v7 withName:@"orientationLockState"];
  }
}

void __99__UIWindowScene_UIKitOrientationDebugging___orientationDebugDescriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) ui_appendInterfaceOrientation:objc_msgSend(*(a1 + 40) withName:{"interfaceOrientation"), @"orientation"}];
  v3 = [*(a1 + 32) ui_appendInterfaceOrientationMask:objc_msgSend(*(a1 + 40) withName:{"supportedInterfaceOrientations"), @"supported"}];
  v4 = [*(a1 + 32) ui_appendInterfaceOrientation:objc_msgSend(*(a1 + 40) withName:"preferredInterfaceOrientation") skipIfUnknown:{@"preferred", 1}];
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = _NSStringFromUIOrientationLockState([v5 interfaceOrientationLockPreference]);
    [v6 appendString:v7 withName:@"orientationLockPreference"];
  }
}

- (id)_orientationDebugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIWindowScene *)self _orientationDebugDescriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)_contextMenuAvoidanceSceneComponent
{
  selfCopy = self;
  if (!+[_UIRemoteKeyboards enabled](_UIRemoteKeyboards, "enabled") || (v3 = [UIApp isFrontBoard], !-[UIScene _hasSettingsScene](selfCopy, "_hasSettingsScene")) && (v3 & 1) == 0)
  {

LABEL_5:
    v4 = [(UIScene *)selfCopy _sceneComponentForKey:@"_UIContextMenuAvoidanceSceneComponentKey"];
    if (v4)
    {
      _contextMenuAvoidanceSceneComponent = v4;
    }

    else
    {
      _contextMenuAvoidanceSceneComponent = [[_UIContextMenuAvoidanceSceneComponent alloc] initWithScene:selfCopy];
      [(UIWindowScene *)selfCopy _registerSceneComponent:_contextMenuAvoidanceSceneComponent forKey:@"_UIContextMenuAvoidanceSceneComponentKey"];
    }

    goto LABEL_8;
  }

  _sceneForKeyboardDisplay = [(UIWindowScene *)selfCopy _sceneForKeyboardDisplay];

  if (_sceneForKeyboardDisplay != selfCopy)
  {
    goto LABEL_5;
  }

  v8 = +[UIWindowScene _keyWindowScene];
  _contextMenuAvoidanceSceneComponent = [v8 _contextMenuAvoidanceSceneComponent];

  if (!_contextMenuAvoidanceSceneComponent)
  {
    goto LABEL_5;
  }

LABEL_8:

  return _contextMenuAvoidanceSceneComponent;
}

- (id)_remoteSheetClientProvider
{
  _FBSScene = [(UIScene *)self _FBSScene];
  v3 = objc_opt_class();
  v4 = [_FBSScene componentForExtension:v3 ofClass:objc_opt_class()];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v5;

  return v5;
}

- (void)_willRestoreInteractionStateForUserActivityManager:(id)manager
{
  v5.receiver = self;
  v5.super_class = UIWindowScene;
  [(UIScene *)&v5 _willRestoreInteractionStateForUserActivityManager:manager];
  v4 = [(UIWindowScene *)self _allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global_750];
}

@end