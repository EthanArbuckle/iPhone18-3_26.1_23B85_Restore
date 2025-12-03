@interface SBDeviceApplicationSceneHandle
+ (double)_homeAffordanceInsetTopForWindowScene:(id)scene;
- (BOOL)_classicAppPhoneOnPadPrefersLandscape;
- (BOOL)_classicAppPhoneOnPadSupportsOldStyleMixedOrientation;
- (BOOL)_currentClassicModeAllowsLaunchingToAnySupportedOrientation;
- (BOOL)_isEnhancedWindowingEffectivelyEnabled;
- (BOOL)_isSettingUpSceneOrientationRequest;
- (BOOL)_supportsMixedOrientation;
- (BOOL)_supportsMixedOrientationOnWindowScene:(id)scene;
- (BOOL)_supportsMultiWindowLayouts;
- (BOOL)_supportsSolariumSafeAreas;
- (BOOL)_supportsWindowControls;
- (BOOL)defaultStatusBarHiddenForOrientation:(int64_t)orientation;
- (BOOL)forbidsActivationByBreadcrumbAction;
- (BOOL)handleHardwareButtonEventType:(int64_t)type;
- (BOOL)isAutoHideEnabledForHomeAffordance;
- (BOOL)isEdgeProtectEnabledForHomeGesture;
- (BOOL)isReachabilitySupported;
- (BOOL)isStatusBarForcedHiddenForOrientation:(int64_t)orientation;
- (BOOL)isStatusBarHiddenForActivationSettings:(id)settings withOrientation:(int64_t)orientation;
- (BOOL)isTranslucent;
- (BOOL)prefersClosingInSwitcherDisabled;
- (BOOL)prefersHeaderHiddenInSwitcher;
- (BOOL)prefersKillingInSwitcherDisabled;
- (BOOL)requestedFullScreenCenterWindow;
- (BOOL)shouldAlwaysDisplayLiveContent;
- (BOOL)shouldPrioritizeForSwitcherOrdering;
- (BOOL)shouldSuppressAlertForSuppressionContexts:(id)contexts sectionIdentifier:(id)identifier;
- (BOOL)supportsCenterWindow;
- (BOOL)wantsDeviceOrientationEventsEnabled;
- (CGRect)statusBarAvoidanceFrame;
- (CGSize)layoutPreferencesMinimumSize;
- (NSData)activationConditionsData;
- (NSString)sceneTitle;
- (SBDeviceApplicationSceneStatusBarStateProvider)statusBarStateProvider;
- (SBIdleTimerCoordinating)_idleTimerCoordinator;
- (SBWindowControlsLayout)windowControlsLayoutForApplicationFrame:(SEL)frame screenBounds:(CGRect)bounds activationSettings:(CGRect)settings;
- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)orientation isPhone:(BOOL)phone portraitSafeAreaInsets:(UIEdgeInsets)result statusBarHeight:(double)height homeAffordanceOverlayAllowance:(double)allowance;
- (_UIStatusBarData)overlayStatusBarData;
- (char)_computeActivityMode;
- (char)_computeJetsamMode;
- (char)_computeResourceElevation;
- (char)activityMode;
- (double)defaultStatusBarHeightForOrientation:(int64_t)orientation;
- (double)statusBarAlpha;
- (double)statusBarHeightForOrientation:(int64_t)orientation;
- (id)_defaultStatusBarForAssociatedDisplay;
- (id)_defaultStatusBarHeights;
- (id)_potentiallyJailedDisplayConfiguration;
- (id)_safeAreaCornerInsetResolverForApplicationFrame:(CGRect)frame screenBounds:(CGRect)bounds activationSettings:(id)settings;
- (id)_sceneCornerRadiusConfigurationFromRequestContext:(id)context forEntity:(id)entity;
- (id)_sceneDataStoreCreatingIfNecessary:(BOOL)necessary;
- (id)_sceneHostingInfoForSnapshottingAssertionWithView:(id)view;
- (id)_windowScene;
- (id)acquireActiveAppearanceAssertionWithReason:(id)reason activeAppearance:(int64_t)appearance priority:(int64_t)priority;
- (id)acquireAssertionsForRelevancyResult:(id)result reason:(id)reason;
- (id)acquireSceneActivityModeAssertionWithReason:(id)reason activityMode:(char)mode;
- (id)acquireSceneJetsamModeAssertionWithReason:(id)reason jetsamMode:(char)mode;
- (id)acquireSceneResourceElevationAssertionWithReason:(id)reason resourceElevation:(char)elevation;
- (id)currentEffectiveStatusBarStyleRequest;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)displayEdgeInfoForLayoutEnvironment:(int64_t)environment;
- (id)effectiveBackgroundActivities;
- (id)effectiveStatusBarStyleRequestForActivationSettings:(id)settings;
- (id)mostRecentSceneSnapshotsForScale:(double)scale launchingOrientation:(int64_t)orientation;
- (id)newScenePlaceholderContentContextWithActivationSettings:(id)settings;
- (id)newSceneViewController;
- (id)newSceneViewWithReferenceSize:(CGSize)size contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation hostRequester:(id)requester;
- (id)safeAreaEdgeInsetResolverForApplicationFrame:(CGRect)frame screenBounds:(CGRect)bounds activationSettings:(id)settings;
- (id)statusBarEffectiveStyleRequestWithStyle:(int64_t)style;
- (int64_t)_bestSupportedInterfaceOrientationForOrientation:(int64_t)orientation;
- (int64_t)_classicPhoneOnPadActivationOrientationForOrientation:(int64_t)orientation;
- (int64_t)_computeActiveAppearance;
- (int64_t)_defaultStatusBarStyleFromSceneDataStore;
- (int64_t)_initialDeviceOrientationFromSceneOrientationRequestSetup;
- (int64_t)_initialMainSceneCompabilityMode:(id)mode;
- (int64_t)_interfaceOrientationFromUserResizing;
- (int64_t)_interfaceOrientationMode;
- (int64_t)_launchingInterfaceOrientationForOrientation:(int64_t)orientation;
- (int64_t)_preferredSizingPolicyForContentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation;
- (int64_t)_resumingInterfaceOrientationForOrientation:(int64_t)orientation;
- (int64_t)_statusBarStyleWithActivationSettings:(id)settings;
- (int64_t)activationInterfaceOrientationForOrientation:(int64_t)orientation;
- (int64_t)backgroundStyle;
- (int64_t)currentInterfaceOrientation;
- (int64_t)currentStatusBarStyle;
- (int64_t)defaultInterfaceOrientation;
- (int64_t)defaultStatusBarStyle;
- (int64_t)preferredWindowControlsPlacement;
- (int64_t)statusBarOrientation;
- (int64_t)wallpaperStyle;
- (unint64_t)_mainSceneSupportedInterfaceOrientations;
- (unint64_t)_supportedInterfaceOrientationsFromSceneOrientationRequestSetup;
- (unint64_t)_supportedSizingPoliciesForContentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation;
- (unint64_t)preferredHardwareButtonEventTypes;
- (unint64_t)screenEdgesDeferringSystemGestures;
- (unsigned)jetsamPriority;
- (void)_addSnapshottingInfoAssertion:(id)assertion;
- (void)_commonInitWithApplication:(id)application sceneIdentifier:(id)identifier displayIdentity:(id)identity;
- (void)_didCreateScene:(id)scene;
- (void)_didDestroyScene:(id)scene;
- (void)_didUpdateClientSettings:(id)settings;
- (void)_didUpdateDisplayIdentity;
- (void)_didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings;
- (void)_modifyApplicationSceneClientSettings:(id)settings fromRequestContext:(id)context entity:(id)entity initialSceneSettings:(id)sceneSettings;
- (void)_modifyApplicationSceneSettings:(id)settings fromRequestContext:(id)context entity:(id)entity;
- (void)_modifyApplicationTransitionContext:(id)context fromRequestContext:(id)requestContext entity:(id)entity;
- (void)_modifyProcessExecutionContext:(id)context fromRequestContext:(id)requestContext entity:(id)entity;
- (void)_modifySafeAreaInsetsOnApplicationSceneSettings:(id)settings isFloating:(BOOL)floating;
- (void)_needsInterfaceAppearanceUpdate;
- (void)_noteActivationConditionsChanged;
- (void)_noteBackgroundActivitiesToSuppressChanged;
- (void)_noteContentPrefersToDisableClippingChanged;
- (void)_noteDidMoveFromSceneManager:(id)manager;
- (void)_noteMainSceneBackgroundStyleChanged;
- (void)_noteReplacedWithSceneHandle:(id)handle;
- (void)_noteSceneTitleChanged;
- (void)_populateSettingsWithDefaultStatusBarHeight:(id)height;
- (void)_reevaluateActiveAppearanceFromAssertions;
- (void)_reevaluateActivityModeFromAssertions;
- (void)_reevaluateJetsamModeFromAssertions;
- (void)_reevaluateOcclusionBySystemUI;
- (void)_reevaluateResourceElevationFromAssertions;
- (void)_reevaluateSafeAreaSettingsForSceneSettings:(id)settings;
- (void)_removeSnapshottingInfoAssertion:(id)assertion;
- (void)_resetSceneOrientationRequestState;
- (void)_setClassicAppPhoneOnPadPrefersLandscape:(BOOL)landscape;
- (void)_setInitialDeviceOrientationFromSceneOrientationRequestSetup:(int64_t)setup;
- (void)_setInterfaceOrientationFromUserResizing:(int64_t)resizing;
- (void)_setSettingUpSceneOrientationRequest:(BOOL)request;
- (void)_setSupportedInterfaceOrientationsFromSceneOrientationRequestSetup:(unint64_t)setup;
- (void)_updateActivityMode;
- (void)_updateApplicationOcclusionRects;
- (void)_updateCapturingContentForAdditionalRenderingDestination;
- (void)_updateDisableMultitaskingWhileForegroundAssertionIfNeeded;
- (void)_updateIdleTimerForReason:(id)reason;
- (void)_updateInterfaceActiveAppearance;
- (void)_updateIsCapturingContentForAdditionalRenderingDestinationOfMutableSceneSettings:(id)settings withDisplayIdentity:(id)identity;
- (void)_updateJetsamPriority;
- (void)_updateSceneHostingInfoForSnapshottingWithAssertion:(id)assertion forceUpdate:(BOOL)update;
- (void)_updateSystemOcclusionRectsAndActiveAppearance;
- (void)addObserver:(id)observer;
- (void)appProtectionAssistantShouldShieldDidChange:(id)change;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)applicationProcessDidExit:(id)exit withContext:(id)context;
- (void)applicationSceneHandle:(id)handle appendToSceneSettings:(id)settings fromRequestContext:(id)context entity:(id)entity;
- (void)dealloc;
- (void)layoutPreferencesCoordinator:(id)coordinator didUpdatePreferencesForScene:(id)scene transitionContext:(id)context;
- (void)layoutPreferencesCoordinatorDidRecognizeDoubleTapInDraggableArea:(id)area;
- (void)reevaluateSafeAreaSettingsUsingAnimationSettings:(id)settings;
- (void)removeObserver:(id)observer;
- (void)saveSuspendSnapshot:(id)snapshot;
- (void)setAlertSuppressionContextsBySectionIdentifier:(id)identifier;
- (void)setBackgroundActivitiesToSuppress:(id)suppress;
- (void)setContentPrefersToDisableClipping:(BOOL)clipping;
- (void)setKeyboardContextMaskStyle:(unint64_t)style;
- (void)setOccluded:(BOOL)occluded;
- (void)setPreferredWindowControlsPlacement:(int64_t)placement;
- (void)setStatusBarAvoidanceFrame:(CGRect)frame;
- (void)setStatusBarForceHidden:(BOOL)hidden forReason:(id)reason animationSettings:(id)settings;
- (void)setStatusBarParts:(int64_t)parts;
@end

@implementation SBDeviceApplicationSceneHandle

- (id)_windowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  v4 = [windowSceneManager windowSceneForSceneHandle:self];

  return v4;
}

- (unint64_t)_supportedInterfaceOrientationsFromSceneOrientationRequestSetup
{
  v2 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v3 = [v2 safeObjectForKey:@"supportedInterfaceOrientationsFromSceneOrientationRequestSetup" ofType:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (SBDeviceApplicationSceneStatusBarStateProvider)statusBarStateProvider
{
  statusBarStateProvider = self->_statusBarStateProvider;
  if (!statusBarStateProvider)
  {
    v4 = [[SBDeviceApplicationSceneStatusBarStateProvider alloc] _initWithSceneHandle:self];
    v5 = self->_statusBarStateProvider;
    self->_statusBarStateProvider = v4;

    statusBarStateProvider = self->_statusBarStateProvider;
  }

  return statusBarStateProvider;
}

- (BOOL)isTranslucent
{
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      return [(SBDeviceApplicationSceneHandle *)self wallpaperStyle]!= 1;
    }

    if (SBFEffectiveHomeButtonType() != 2)
    {
      if (v5)
      {
        return [(SBDeviceApplicationSceneHandle *)self wallpaperStyle]!= 1;
      }

      goto LABEL_12;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
    {
LABEL_12:

      return [(SBDeviceApplicationSceneHandle *)self wallpaperStyle]!= 1;
    }
  }

  application = [(SBApplicationSceneHandle *)self application];
  isClassic = [application isClassic];

  if (v5)
  {
    if ((isClassic & 1) == 0)
    {
      return [(SBDeviceApplicationSceneHandle *)self wallpaperStyle]!= 1;
    }
  }

  else
  {

    if ((isClassic & 1) == 0)
    {
      return [(SBDeviceApplicationSceneHandle *)self wallpaperStyle]!= 1;
    }
  }

  return 1;
}

- (int64_t)wallpaperStyle
{
  [(SBDeviceApplicationSceneHandle *)self backgroundStyle];

  return _WallpaperStyleForBackgroundStyle();
}

- (int64_t)backgroundStyle
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (sceneIfExists)
  {
    application = [(SBApplicationSceneHandle *)self application];
    info = [application info];
    uiClientSettings = [sceneIfExists uiClientSettings];
    defaultBackgroundStyle = [info backgroundStyleForRequestedBackgroundStyle:{objc_msgSend(uiClientSettings, "backgroundStyle")}];
  }

  else
  {
    defaultBackgroundStyle = [(SBDeviceApplicationSceneHandle *)self defaultBackgroundStyle];
  }

  return defaultBackgroundStyle;
}

- (BOOL)isAutoHideEnabledForHomeAffordance
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  uiClientSettings = [sceneIfExists uiClientSettings];
  homeIndicatorAutoHidden = [uiClientSettings homeIndicatorAutoHidden];

  return homeIndicatorAutoHidden;
}

- (unint64_t)_mainSceneSupportedInterfaceOrientations
{
  application = [(SBApplicationSceneHandle *)self application];
  info = [application info];
  if ([application isMedusaCapable])
  {
    supportedInterfaceOrientations = 30;
  }

  else
  {
    supportedInterfaceOrientations = [info supportedInterfaceOrientations];
    sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    v7 = sceneIfExists;
    if (sceneIfExists)
    {
      uiClientSettings = [sceneIfExists uiClientSettings];
      supportedInterfaceOrientations = [uiClientSettings supportedInterfaceOrientations];
    }
  }

  return supportedInterfaceOrientations;
}

- (int64_t)defaultStatusBarStyle
{
  statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)self statusBarStateProvider];
  defaultStatusBarStyle = [statusBarStateProvider defaultStatusBarStyle];

  return defaultStatusBarStyle;
}

- (id)currentEffectiveStatusBarStyleRequest
{
  currentStatusBarStyle = [(SBDeviceApplicationSceneHandle *)self currentStatusBarStyle];

  return [(SBDeviceApplicationSceneHandle *)self statusBarEffectiveStyleRequestWithStyle:currentStatusBarStyle];
}

- (int64_t)currentStatusBarStyle
{
  statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)self statusBarStateProvider];
  statusBarStyle = [statusBarStateProvider statusBarStyle];

  return statusBarStyle;
}

- (int64_t)statusBarOrientation
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = sceneIfExists;
  if (sceneIfExists)
  {
    currentInterfaceOrientation = [sceneIfExists currentInterfaceOrientation];
  }

  else
  {
    currentInterfaceOrientation = [(SBDeviceApplicationSceneHandle *)self activationInterfaceOrientationForCurrentOrientation];
  }

  v6 = currentInterfaceOrientation;

  return v6;
}

- (int64_t)_interfaceOrientationFromUserResizing
{
  interfaceOrientationFromUserResizeIfAny = self->_interfaceOrientationFromUserResizeIfAny;
  if (interfaceOrientationFromUserResizeIfAny == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
    integerValue = [v4 safeObjectForKey:@"interfaceOrientationFromUserResizing" ofType:objc_opt_class()];
    v6 = integerValue;
    if (integerValue)
    {
      integerValue = [integerValue integerValue];
    }

    self->_interfaceOrientationFromUserResizeIfAny = integerValue;

    interfaceOrientationFromUserResizeIfAny = self->_interfaceOrientationFromUserResizeIfAny;
  }

  if (interfaceOrientationFromUserResizeIfAny == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return interfaceOrientationFromUserResizeIfAny;
  }
}

- (int64_t)defaultInterfaceOrientation
{
  application = [(SBApplicationSceneHandle *)self application];
  info = [application info];
  _launchingInterfaceOrientation = [info _launchingInterfaceOrientation];

  return _launchingInterfaceOrientation;
}

- (int64_t)_defaultStatusBarStyleFromSceneDataStore
{
  v2 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v3 = [v2 safeObjectForKey:@"statusBarStyle" ofType:objc_opt_class()];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (id)_potentiallyJailedDisplayConfiguration
{
  application = [(SBApplicationSceneHandle *)self application];
  mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
  v4 = [application restrictedClassicModeDisplayConfigurationForDisplayConfiguration:mainConfiguration];

  return v4;
}

- (CGRect)statusBarAvoidanceFrame
{
  x = self->_statusBarAvoidanceFrame.origin.x;
  y = self->_statusBarAvoidanceFrame.origin.y;
  width = self->_statusBarAvoidanceFrame.size.width;
  height = self->_statusBarAvoidanceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int64_t)currentInterfaceOrientation
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  currentInterfaceOrientation = [sceneIfExists currentInterfaceOrientation];

  return currentInterfaceOrientation;
}

- (BOOL)_currentClassicModeAllowsLaunchingToAnySupportedOrientation
{
  if ([SBApp homeScreenRotationStyle])
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
LABEL_4:
        application = [(SBApplicationSceneHandle *)self application];
        _classicMode = [application _classicMode];

        return (_classicMode - 3) < 0xFFFFFFFFFFFFFFFELL;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom != 1)
      {
        goto LABEL_4;
      }
    }
  }

  application2 = [(SBApplicationSceneHandle *)self application];
  classicAppPhoneAppRunningOnPad = [application2 classicAppPhoneAppRunningOnPad];

  return classicAppPhoneAppRunningOnPad ^ 1;
}

- (BOOL)_isEnhancedWindowingEffectivelyEnabled
{
  wantsEnhancedWindowingEnabled = [(SBDeviceApplicationSceneHandle *)self wantsEnhancedWindowingEnabled];
  if (wantsEnhancedWindowingEnabled)
  {
    LOBYTE(wantsEnhancedWindowingEnabled) = ![(SBDeviceApplicationSceneHandle *)self isHostedSecureApp];
  }

  return wantsEnhancedWindowingEnabled;
}

- (BOOL)shouldPrioritizeForSwitcherOrdering
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (sceneIfExists)
  {
    v3 = objc_opt_class();
    uiClientSettings = [sceneIfExists uiClientSettings];
    v5 = SBSafeCast(v3, uiClientSettings);

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_defaultStatusBarHeights
{
  v38 = *MEMORY[0x277D85DE8];
  if (_defaultStatusBarHeights_onceToken != -1)
  {
    [SBDeviceApplicationSceneHandle _defaultStatusBarHeights];
  }

  application = [(SBApplicationSceneHandle *)self application];
  _defaultStatusBarForAssociatedDisplay = [(SBDeviceApplicationSceneHandle *)self _defaultStatusBarForAssociatedDisplay];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (![application isClassic])
  {
    *&v8 = 1.79769313e308;
    goto LABEL_9;
  }

  v5 = 20.0;
  if (SBApplicationClassicModeExpectsRoundedCorners([application _classicMode]))
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 || (v5 = 24.0, [application classicAppPhoneAppRunningOnPad]))
    {
      *&v8 = 44.0;
LABEL_9:
      v5 = *&v8;
    }
  }

  v29 = application;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = _defaultStatusBarHeights_sEnumerator;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    v12 = 0x277CCA000uLL;
    do
    {
      v13 = 0;
      v31 = v10;
      do
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        integerValue = [v14 integerValue];
        v16 = [(SBDeviceApplicationSceneHandle *)self isStatusBarForcedHiddenForOrientation:integerValue];
        if (v16)
        {
          v17 = 0.0;
        }

        else
        {
          v17 = v5;
        }

        if (!v16 && v5 == 1.79769313e308)
        {
          application2 = [(SBApplicationSceneHandle *)self application];
          info = [application2 info];
          if (info)
          {
            application3 = [(SBApplicationSceneHandle *)self application];
            [application3 info];
            selfCopy = self;
            v22 = v11;
            v24 = v23 = dictionary;
            [_defaultStatusBarForAssociatedDisplay heightForOrientation:integerValue isAzulBLinked:{objc_msgSend(v24, "isAzulBLinked")}];
            v17 = v25;

            dictionary = v23;
            v11 = v22;
            self = selfCopy;
            v12 = 0x277CCA000;
          }

          else
          {
            [_defaultStatusBarForAssociatedDisplay heightForOrientation:integerValue isAzulBLinked:1];
            v17 = v26;
          }

          v10 = v31;
        }

        v27 = [*(v12 + 2992) numberWithDouble:v17];
        [dictionary setObject:v27 forKeyedSubscript:v14];

        ++v13;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v10);
  }

  return dictionary;
}

- (BOOL)_supportsSolariumSafeAreas
{
  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  switcherController = [_windowScene switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  application = [(SBApplicationSceneHandle *)self application];
  info = [application info];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    application2 = [(SBApplicationSceneHandle *)self application];
    classicAppPhoneAppRunningOnPad = [application2 classicAppPhoneAppRunningOnPad];
  }

  else
  {
    classicAppPhoneAppRunningOnPad = 1;
  }

  if (_UISolariumEnabled() && [info isLuckLinked] && ((objc_msgSend(info, "wantsFullScreen") | classicAppPhoneAppRunningOnPad) & 1) == 0 && objc_msgSend(windowManagementContext, "isFlexibleWindowingEnabled"))
  {
    v11 = [info requiresPreSolariumDesign] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)_defaultStatusBarForAssociatedDisplay
{
  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  statusBarManager = [_windowScene statusBarManager];
  statusBar = [statusBarManager statusBar];

  return statusBar;
}

- (double)statusBarAlpha
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = sceneIfExists;
  if (sceneIfExists)
  {
    uiClientSettings = [sceneIfExists uiClientSettings];
    [uiClientSettings statusBarAlpha];
    v7 = v6;
  }

  else
  {
    [(SBDeviceApplicationSceneHandle *)self defaultStatusBarAlpha];
    v7 = v8;
  }

  return v7;
}

- (BOOL)shouldAlwaysDisplayLiveContent
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (sceneIfExists)
  {
    v3 = objc_opt_class();
    uiClientSettings = [sceneIfExists uiClientSettings];
    v5 = SBSafeCast(v3, uiClientSettings);

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_supportsMixedOrientation
{
  selfCopy = self;
  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  LOBYTE(selfCopy) = [(SBDeviceApplicationSceneHandle *)selfCopy _supportsMixedOrientationOnWindowScene:_windowScene];

  return selfCopy;
}

- (BOOL)prefersKillingInSwitcherDisabled
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (sceneIfExists)
  {
    v3 = objc_opt_class();
    uiClientSettings = [sceneIfExists uiClientSettings];
    v5 = SBSafeCast(v3, uiClientSettings);

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)prefersHeaderHiddenInSwitcher
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (sceneIfExists)
  {
    v3 = objc_opt_class();
    uiSettings = [sceneIfExists uiSettings];
    v5 = SBSafeCast(v3, uiSettings);

    if (v5)
    {
      v6 = [v5 isScreenSharingPresentation] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isEdgeProtectEnabledForHomeGesture
{
  if (SBFEffectiveHomeButtonType() == 2 && [(SBDeviceApplicationSceneHandle *)self isAutoHideEnabledForHomeAffordance])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    return ([(SBDeviceApplicationSceneHandle *)self screenEdgesDeferringSystemGestures]>> 2) & 1;
  }

  return v3;
}

- (unint64_t)screenEdgesDeferringSystemGestures
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = sceneIfExists;
  if (sceneIfExists)
  {
    uiClientSettings = [sceneIfExists uiClientSettings];
    screenEdgesDeferringSystemGestures = [uiClientSettings screenEdgesDeferringSystemGestures];
    application = [(SBApplicationSceneHandle *)self application];
    if (![application isClassic] || (objc_msgSend(application, "classicAppFullScreen") & 1) != 0)
    {
      goto LABEL_16;
    }

    if ([application classicAppPhoneAppRunningOnPad])
    {
      screenEdgesDeferringSystemGestures = 0;
LABEL_16:

      goto LABEL_17;
    }

    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom)
      {
        goto LABEL_16;
      }
    }

    if (([(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation]- 1) > 1)
    {
      v10 = -11;
    }

    else
    {
      v10 = -6;
    }

    screenEdgesDeferringSystemGestures &= v10;
    goto LABEL_16;
  }

  screenEdgesDeferringSystemGestures = 0;
LABEL_17:

  return screenEdgesDeferringSystemGestures;
}

- (int64_t)_interfaceOrientationMode
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = sceneIfExists;
  if (sceneIfExists)
  {
    uiSettings = [sceneIfExists uiSettings];
    interfaceOrientationMode = [uiSettings interfaceOrientationMode];
  }

  else
  {
    uiSettings = [(SBApplicationSceneHandle *)self application];
    if (_SBApplicationClassicModeIsClassic([uiSettings _defaultClassicMode]))
    {
      interfaceOrientationMode = 1;
    }

    else
    {
      interfaceOrientationMode = 2;
    }
  }

  return interfaceOrientationMode;
}

- (void)_noteMainSceneBackgroundStyleChanged
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  uiPresentationManager = [sceneIfExists uiPresentationManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SBDeviceApplicationSceneHandle__noteMainSceneBackgroundStyleChanged__block_invoke;
  v5[3] = &unk_2783A9210;
  v5[4] = self;
  [uiPresentationManager modifyDefaultPresentationContext:v5];
}

void __70__SBDeviceApplicationSceneHandle__noteMainSceneBackgroundStyleChanged__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = SBDefaultBackgroundColorForAppScene([v2 isTranslucent] ^ 1);
  [v3 setBackgroundColorWhileHosting:v4];
}

- (void)_needsInterfaceAppearanceUpdate
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SBDeviceApplicationSceneHandle__needsInterfaceAppearanceUpdate__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)wantsDeviceOrientationEventsEnabled
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = sceneIfExists;
  if (sceneIfExists)
  {
    uiSettings = [sceneIfExists uiSettings];
    IsClassic = [uiSettings deviceOrientationEventsEnabled];
  }

  else
  {
    uiSettings = [(SBApplicationSceneHandle *)self application];
    IsClassic = _SBApplicationClassicModeIsClassic([uiSettings _defaultClassicMode]);
  }

  v7 = IsClassic;

  return v7;
}

- (BOOL)forbidsActivationByBreadcrumbAction
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (sceneIfExists)
  {
    v3 = objc_opt_class();
    uiClientSettings = [sceneIfExists uiClientSettings];
    v5 = SBSafeCast(v3, uiClientSettings);

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_noteSceneTitleChanged
{
  sceneTitle = [(SBDeviceApplicationSceneHandle *)self sceneTitle];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SBDeviceApplicationSceneHandle__noteSceneTitleChanged__block_invoke;
  v5[3] = &unk_2783B8FE0;
  v5[4] = self;
  v6 = sceneTitle;
  v4 = sceneTitle;
  [(SBDeviceApplicationSceneHandle *)self _enumerateObserversWithBlock:v5];
}

- (NSString)sceneTitle
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = sceneIfExists;
  if (sceneIfExists)
  {
    uiClientSettings = [sceneIfExists uiClientSettings];
    [uiClientSettings canvasTitle];
  }

  else
  {
    uiClientSettings = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
    [uiClientSettings objectForKey:@"canvasTitle"];
  }
  v6 = ;

  return v6;
}

void __56__SBDeviceApplicationSceneHandle__noteSceneTitleChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneHandle:*(a1 + 32) didChangeSceneTitle:*(a1 + 40)];
  }
}

- (void)_didUpdateDisplayIdentity
{
  self->_keyboardLayerMaskStyle = 26;
  self->_statusBarParts = 0xFFFFLL;
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  self->_statusBarAvoidanceFrame.origin = *MEMORY[0x277CBF3A0];
  self->_statusBarAvoidanceFrame.size = v3;
  v4 = [[SBDeviceApplicationSceneStatusBarBreadcrumbProvider alloc] initWithSceneHandle:self];
  breadcrumbProvider = self->_breadcrumbProvider;
  self->_breadcrumbProvider = v4;

  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  assistantController = [_windowScene assistantController];
  [assistantController addObserver:self];

  [(SBDeviceApplicationSceneHandle *)self _reevaluateOcclusionBySystemUI];
  if (self->_occludedBySystemUI)
  {
    [(SBDeviceApplicationSceneHandle *)self _updateSystemOcclusionRectsAndActiveAppearance];
  }

  self->_applicationOcclusionRectsDirty = self->_occludedByApplication;
}

- (void)_reevaluateOcclusionBySystemUI
{
  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  assistantController = [_windowScene assistantController];
  presentationContext = [assistantController presentationContext];

  occludedBySystemUI = self->_occludedBySystemUI;
  if ([presentationContext isAssistantPresented])
  {
    v6 = [presentationContext allowsHDRContentBelow] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (occludedBySystemUI != v6)
  {
    self->_occludedBySystemUI = v6;
    [(SBDeviceApplicationSceneHandle *)self _updateSystemOcclusionRectsAndActiveAppearance];
  }
}

- (void)_updateCapturingContentForAdditionalRenderingDestination
{
  sceneManager = [(SBDeviceApplicationSceneHandle *)self sceneManager];
  displayIdentity = [sceneManager displayIdentity];

  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__SBDeviceApplicationSceneHandle__updateCapturingContentForAdditionalRenderingDestination__block_invoke;
  v7[3] = &unk_2783B90C8;
  v7[4] = self;
  v8 = displayIdentity;
  v6 = displayIdentity;
  [sceneIfExists updateSettings:v7];
}

- (void)dealloc
{
  v60 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
    assistantController = [_windowScene assistantController];
    [assistantController removeObserver:self];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  allObjects = [(NSHashTable *)self->_activityModeAssertions allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      v9 = 0;
      do
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v52 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v7);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  allObjects2 = [(NSHashTable *)self->_jetsamModeAssertions allObjects];
  v11 = [allObjects2 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v49;
    do
    {
      v14 = 0;
      do
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(allObjects2);
        }

        [*(*(&v48 + 1) + 8 * v14++) invalidate];
      }

      while (v12 != v14);
      v12 = [allObjects2 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v12);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  allObjects3 = [(NSHashTable *)self->_resourceElevationAssertions allObjects];
  v16 = [allObjects3 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v45;
    do
    {
      v19 = 0;
      do
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(allObjects3);
        }

        [*(*(&v44 + 1) + 8 * v19++) invalidate];
      }

      while (v17 != v19);
      v17 = [allObjects3 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v17);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v20 = self->_activeAppearanceAssertions;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    do
    {
      v24 = 0;
      do
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v40 + 1) + 8 * v24++) invalidate];
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v40 objects:v56 count:16];
    }

    while (v22);
  }

  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  [(SBDeviceApplicationSceneStatusBarStateProvider *)self->_statusBarStateProvider invalidate];
  [(UIApplicationSceneClientSettingsDiffInspector *)self->_clientSettingsInspector removeAllObservers];
  clientSettingsInspector = self->_clientSettingsInspector;
  self->_clientSettingsInspector = 0;

  v26 = self->_preventKeyboardFocusDueToAppProtectionAssertion;
  preventKeyboardFocusDueToAppProtectionAssertion = self->_preventKeyboardFocusDueToAppProtectionAssertion;
  self->_preventKeyboardFocusDueToAppProtectionAssertion = 0;

  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __41__SBDeviceApplicationSceneHandle_dealloc__block_invoke;
  v38 = &unk_2783A8C18;
  v28 = v26;
  v39 = v28;
  BSDispatchMain();
  if (self->_modalAlertPresenter && ([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v29 = self->_modalAlertPresenter;
    modalAlertPresenter = self->_modalAlertPresenter;
    self->_modalAlertPresenter = 0;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__SBDeviceApplicationSceneHandle_dealloc__block_invoke_2;
    block[3] = &unk_2783A8C18;
    v34 = v29;
    v31 = v29;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  [(APSubjectMonitorSubscription *)self->_appProtectionSubscription invalidate];
  [(BSInvalidatable *)self->_disableMultitaskingAssertion invalidate];

  v32.receiver = self;
  v32.super_class = SBDeviceApplicationSceneHandle;
  [(SBApplicationSceneHandle *)&v32 dealloc];
}

- (void)_commonInitWithApplication:(id)application sceneIdentifier:(id)identifier displayIdentity:(id)identity
{
  applicationCopy = application;
  identifierCopy = identifier;
  identityCopy = identity;
  v32.receiver = self;
  v32.super_class = SBDeviceApplicationSceneHandle;
  [(SBApplicationSceneHandle *)&v32 _commonInitWithApplication:applicationCopy sceneIdentifier:identifierCopy displayIdentity:identityCopy];
  info = [applicationCopy info];
  self->_defaultBackgroundStyle = [info backgroundStyle];

  v12 = [[SBDeviceApplicationSceneViewPlaceholderContentViewProvider alloc] initWithApplication:applicationCopy];
  placeholderContentProvider = self->_placeholderContentProvider;
  self->_placeholderContentProvider = v12;

  weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  activityModeAssertions = self->_activityModeAssertions;
  self->_activityModeAssertions = weakObjectsHashTable;

  weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  jetsamModeAssertions = self->_jetsamModeAssertions;
  self->_jetsamModeAssertions = weakObjectsHashTable2;

  weakObjectsHashTable3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  resourceElevationAssertions = self->_resourceElevationAssertions;
  self->_resourceElevationAssertions = weakObjectsHashTable3;

  array = [MEMORY[0x277CBEB18] array];
  activeAppearanceAssertions = self->_activeAppearanceAssertions;
  self->_activeAppearanceAssertions = array;

  self->_computedActiveAppearance = -1;
  self->_preferredWindowControlsPlacement = 0;
  self->_interfaceOrientationFromUserResizeIfAny = 0x7FFFFFFFFFFFFFFFLL;
  [(SBApplicationSceneHandle *)self addSceneUpdateContributer:self];
  [(SBDeviceApplicationSceneHandle *)self _didUpdateDisplayIdentity];
  appProtectionAssistant = [applicationCopy appProtectionAssistant];
  [appProtectionAssistant addObserver:self];

  v23 = MEMORY[0x277CCACA8];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  identifierCopy = [v23 stringWithFormat:@"SpringBoard - %@ - %@", v25, identifierCopy];

  objc_initWeak(&location, self);
  v27 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v30, &location);
  v28 = BSLogAddStateCaptureBlockWithTitle();
  stateCaptureInvalidatable = self->_stateCaptureInvalidatable;
  self->_stateCaptureInvalidatable = v28;

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

__CFString *__93__SBDeviceApplicationSceneHandle__commonInitWithApplication_sceneIdentifier_displayIdentity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained descriptionWithMultilinePrefix:0];
  }

  else
  {
    v3 = &stru_283094718;
  }

  return v3;
}

- (void)saveSuspendSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  layerManager = [sceneIfExists layerManager];
  layers = [layerManager layers];
  v7 = [layers count];

  if (snapshotCopy && v7)
  {
    application = [(SBApplicationSceneHandle *)self application];
    [application saveSuspendSnapshot:snapshotCopy forSceneHandle:self];
  }
}

- (id)mostRecentSceneSnapshotsForScale:(double)scale launchingOrientation:(int64_t)orientation
{
  application = [(SBApplicationSceneHandle *)self application];
  v8 = [application mostRecentSceneSnapshotsForSceneHandle:self scale:orientation launchingOrientation:scale];

  return v8;
}

- (void)addObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v3 addObserver:observer];
}

- (void)removeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v3 removeObserver:observer];
}

- (BOOL)isReachabilitySupported
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  externalForegroundApplicationSceneHandles = [v3 externalForegroundApplicationSceneHandles];
  v5 = [externalForegroundApplicationSceneHandles countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v16 = v3;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(externalForegroundApplicationSceneHandles);
        }

        application = [*(*(&v17 + 1) + 8 * i) application];
        application2 = [(SBApplicationSceneHandle *)self application];
        if ([application isSameExecutableAsApplication:application2])
        {
          sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
          uiClientSettings = [sceneIfExists uiClientSettings];
          isReachabilitySupported = [uiClientSettings isReachabilitySupported];

          if (!isReachabilitySupported)
          {
            v14 = 0;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v6 = [externalForegroundApplicationSceneHandles countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
    v14 = 1;
LABEL_13:
    v3 = v16;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)setAlertSuppressionContextsBySectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_alertSuppressionContextsBySectionIdentifier != identifierCopy)
  {
    v6 = identifierCopy;
    objc_storeStrong(&self->_alertSuppressionContextsBySectionIdentifier, identifier);
    identifierCopy = v6;
  }
}

- (BOOL)shouldSuppressAlertForSuppressionContexts:(id)contexts sectionIdentifier:(id)identifier
{
  alertSuppressionContextsBySectionIdentifier = self->_alertSuppressionContextsBySectionIdentifier;
  contextsCopy = contexts;
  v7 = [(NSDictionary *)alertSuppressionContextsBySectionIdentifier objectForKey:identifier];
  LOBYTE(alertSuppressionContextsBySectionIdentifier) = [contextsCopy intersectsSet:v7];

  return alertSuppressionContextsBySectionIdentifier;
}

- (CGSize)layoutPreferencesMinimumSize
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = sceneIfExists;
  if (sceneIfExists)
  {
    ui_layoutPreferencesCoordinator = [sceneIfExists ui_layoutPreferencesCoordinator];
    [ui_layoutPreferencesCoordinator systemLayoutSizeFittingSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    v7 = v6;
    v9 = v8;
    _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
    switcherController = [_windowScene switcherController];
    [switcherController _maxScreenSizeWithDockAndStripInset];
    v13 = v12;
    v15 = v14;

    if (v7 >= v13)
    {
      v7 = v13;
    }

    if (v9 >= v15)
    {
      v9 = v15;
    }
  }

  else
  {
    ui_layoutPreferencesCoordinator = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
    _windowScene = [ui_layoutPreferencesCoordinator objectForKey:@"minimumWidth"];
    v16 = [ui_layoutPreferencesCoordinator objectForKey:@"minimumHeight"];
    [_windowScene bs_CGFloatValue];
    v7 = v17;
    [v16 bs_CGFloatValue];
    v9 = v18;
  }

  v19 = v7;
  v20 = v9;
  result.height = v20;
  result.width = v19;
  return result;
}

+ (double)_homeAffordanceInsetTopForWindowScene:(id)scene
{
  statusBarManager = [scene statusBarManager];
  statusBar = [statusBarManager statusBar];
  [statusBar defaultHeight];
  v6 = v5;

  return v6;
}

- (_UIStatusBarData)overlayStatusBarData
{
  breadcrumbTitle = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self->_breadcrumbProvider breadcrumbTitle];
  if (breadcrumbTitle)
  {
    if (SBStatusBarIsSpeakeasy())
    {
      v3 = [MEMORY[0x277D6BAF0] entryWithStringValue:breadcrumbTitle];
      v4 = objc_alloc(MEMORY[0x277D6BA48]);
      v5 = [v4 initWithEntry:v3 forKey:*MEMORY[0x277D6BD70]];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x277D76298]);
      v3 = objc_alloc_init(MEMORY[0x277D76308]);
      [v3 setStringValue:breadcrumbTitle];
      [v5 setBackNavigationEntry:v3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)effectiveStatusBarStyleRequestForActivationSettings:(id)settings
{
  v4 = [(SBDeviceApplicationSceneHandle *)self _statusBarStyleWithActivationSettings:settings];

  return [(SBDeviceApplicationSceneHandle *)self statusBarEffectiveStyleRequestWithStyle:v4];
}

- (id)statusBarEffectiveStyleRequestWithStyle:(int64_t)style
{
  v3 = [objc_alloc(MEMORY[0x277D6BFE8]) initWithResolvedStyle:style foregroundColor:0];

  return v3;
}

- (id)effectiveBackgroundActivities
{
  [MEMORY[0x277D75A98] getStyleOverrides];
  v3 = STUIBackgroundActivityIdentifiersForStyleOverrides();
  v4 = [v3 mutableCopy];

  application = [(SBApplicationSceneHandle *)self application];
  bundleIdentifier = [application bundleIdentifier];
  if ([bundleIdentifier isEqual:@"com.apple.Maps"])
  {
    [v4 removeObject:*MEMORY[0x277D6BC80]];
  }

  if ([application isNowRecordingApplication])
  {
    [v4 removeObject:*MEMORY[0x277D6BCA8]];
  }

  [v4 minusSet:self->_backgroundActivitiesToSuppress];
  info = [application info];
  ignoredBackgroundActivityIdentifiers = [info ignoredBackgroundActivityIdentifiers];
  [v4 minusSet:ignoredBackgroundActivityIdentifiers];

  return v4;
}

- (void)setStatusBarForceHidden:(BOOL)hidden forReason:(id)reason animationSettings:(id)settings
{
  hiddenCopy = hidden;
  reasonCopy = reason;
  settingsCopy = settings;
  if (!reasonCopy)
  {
    [SBDeviceApplicationSceneHandle setStatusBarForceHidden:forReason:animationSettings:];
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __86__SBDeviceApplicationSceneHandle_setStatusBarForceHidden_forReason_animationSettings___block_invoke;
  v19 = &unk_2783A8BF0;
  selfCopy = self;
  v10 = settingsCopy;
  v21 = v10;
  v11 = MEMORY[0x223D6F7F0](&v16);
  statusBarForcedHiddenReasons = self->_statusBarForcedHiddenReasons;
  if (hiddenCopy)
  {
    if (!statusBarForcedHiddenReasons)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v14 = self->_statusBarForcedHiddenReasons;
      self->_statusBarForcedHiddenReasons = v13;

      v11[2](v11, 1);
      statusBarForcedHiddenReasons = self->_statusBarForcedHiddenReasons;
    }

    [(NSMutableSet *)statusBarForcedHiddenReasons addObject:reasonCopy, v16, v17, v18, v19, selfCopy];
  }

  else
  {
    [(NSMutableSet *)statusBarForcedHiddenReasons removeObject:reasonCopy, v16, v17, v18, v19, selfCopy];
    if (![(NSMutableSet *)self->_statusBarForcedHiddenReasons count])
    {
      v15 = self->_statusBarForcedHiddenReasons;
      self->_statusBarForcedHiddenReasons = 0;

      v11[2](v11, 0);
    }
  }
}

void __86__SBDeviceApplicationSceneHandle_setStatusBarForceHidden_forReason_animationSettings___block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) sceneIfExists];
  if (v4)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 67109634;
      v15 = a2;
      v16 = 2112;
      v17 = v6;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Force hiding the status bar: %d for %@ with animationSettings=%{public}@", buf, 0x1Cu);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__SBDeviceApplicationSceneHandle_setStatusBarForceHidden_forReason_animationSettings___block_invoke_38;
    v10[3] = &unk_2783B8D90;
    v13 = a2;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    [v4 updateSettingsWithTransitionBlock:v10];
  }
}

id __86__SBDeviceApplicationSceneHandle_setStatusBarForceHidden_forReason_animationSettings___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setForcedStatusBarForegroundTransparent:*(a1 + 48)];
  if (*(a1 + 32))
  {
    [MEMORY[0x277D75940] _synchronizeDrawing];
    v4 = [*(a1 + 40) _definition];
    v5 = [v4 specification];
    v6 = objc_alloc_init([v5 transitionContextClass]);

    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x277D75188]);
    }

    [v6 setAnimationSettings:*(a1 + 32)];
    v7 = [MEMORY[0x277D75940] _synchronizedDrawingFence];
    [v6 setAnimationFence:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isStatusBarForcedHiddenForOrientation:(int64_t)orientation
{
  application = [(SBApplicationSceneHandle *)self application];
  info = [application info];
  _potentiallyJailedDisplayConfiguration = [(SBDeviceApplicationSceneHandle *)self _potentiallyJailedDisplayConfiguration];
  LOBYTE(orientation) = [info statusBarForcedHiddenForInterfaceOrientation:orientation onDisplay:_potentiallyJailedDisplayConfiguration];

  return orientation;
}

- (BOOL)defaultStatusBarHiddenForOrientation:(int64_t)orientation
{
  v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v6 = [v5 safeObjectForKey:@"statusBarHidden" ofType:objc_opt_class()];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    application = [(SBApplicationSceneHandle *)self application];
    info = [application info];
    _potentiallyJailedDisplayConfiguration = [(SBDeviceApplicationSceneHandle *)self _potentiallyJailedDisplayConfiguration];
    bOOLValue = [info statusBarHiddenForInterfaceOrientation:orientation onDisplay:_potentiallyJailedDisplayConfiguration];
  }

  return bOOLValue;
}

- (BOOL)isStatusBarHiddenForActivationSettings:(id)settings withOrientation:(int64_t)orientation
{
  v6 = [settings objectForActivationSetting:5];
  scheme = [v6 scheme];

  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];

  if (!sceneIfExists || scheme)
  {
    statusBarHidden = [(SBDeviceApplicationSceneHandle *)self defaultStatusBarHiddenForOrientation:orientation];
  }

  else
  {
    scene = [(SBDeviceApplicationSceneHandle *)self scene];
    uiClientSettings = [scene uiClientSettings];
    statusBarHidden = [uiClientSettings statusBarHidden];
  }

  return statusBarHidden;
}

- (double)statusBarHeightForOrientation:(int64_t)orientation
{
  if ([(SBDeviceApplicationSceneHandle *)self isCurrentStatusBarHiddenForOrientation:?])
  {
    return 0.0;
  }

  [(SBDeviceApplicationSceneHandle *)self defaultStatusBarHeightForOrientation:orientation];
  return result;
}

- (double)defaultStatusBarHeightForOrientation:(int64_t)orientation
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v6 = sceneIfExists;
  if (sceneIfExists)
  {
    uiSettings = [sceneIfExists uiSettings];
    [uiSettings defaultStatusBarHeightForOrientation:orientation];
    v9 = v8;
  }

  else
  {
    uiSettings = [(SBDeviceApplicationSceneHandle *)self _defaultStatusBarHeights];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:orientation];
    v11 = [uiSettings objectForKey:v10];
    [v11 doubleValue];
    v9 = v12;
  }

  return v9;
}

- (void)setStatusBarParts:(int64_t)parts
{
  if (self->_statusBarParts != parts)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_statusBarParts = parts;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__SBDeviceApplicationSceneHandle_setStatusBarParts___block_invoke;
    v5[3] = &unk_2783B8DB8;
    v5[4] = self;
    v5[5] = parts;
    [(SBDeviceApplicationSceneHandle *)self _enumerateObserversWithBlock:v5];
  }
}

void __52__SBDeviceApplicationSceneHandle_setStatusBarParts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneHandle:*(a1 + 32) didChangeStatusBarParts:*(a1 + 40)];
  }
}

- (void)setStatusBarAvoidanceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_statusBarAvoidanceFrame = &self->_statusBarAvoidanceFrame;
  if (!CGRectEqualToRect(self->_statusBarAvoidanceFrame, frame))
  {
    p_statusBarAvoidanceFrame->origin.x = x;
    p_statusBarAvoidanceFrame->origin.y = y;
    p_statusBarAvoidanceFrame->size.width = width;
    p_statusBarAvoidanceFrame->size.height = height;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__SBDeviceApplicationSceneHandle_setStatusBarAvoidanceFrame___block_invoke;
    v9[3] = &unk_2783B8DE0;
    v9[4] = self;
    *&v9[5] = x;
    *&v9[6] = y;
    *&v9[7] = width;
    *&v9[8] = height;
    [(SBDeviceApplicationSceneHandle *)self _enumerateObserversWithBlock:v9];
  }
}

void __61__SBDeviceApplicationSceneHandle_setStatusBarAvoidanceFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneHandle:*(a1 + 32) didChangeStatusBarAvoidanceFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  }
}

- (void)setBackgroundActivitiesToSuppress:(id)suppress
{
  suppressCopy = suppress;
  if ((BSEqualSets() & 1) == 0)
  {
    v4 = [suppressCopy copy];
    backgroundActivitiesToSuppress = self->_backgroundActivitiesToSuppress;
    self->_backgroundActivitiesToSuppress = v4;

    [(SBDeviceApplicationSceneHandle *)self _noteBackgroundActivitiesToSuppressChanged];
  }
}

- (void)setPreferredWindowControlsPlacement:(int64_t)placement
{
  if ([(SBDeviceApplicationSceneHandle *)self _supportsWindowControls]&& self->_preferredWindowControlsPlacement != placement)
  {
    self->_preferredWindowControlsPlacement = placement;
    sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    v6 = sceneIfExists;
    if (sceneIfExists)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __70__SBDeviceApplicationSceneHandle_setPreferredWindowControlsPlacement___block_invoke;
      v7[3] = &unk_2783ACB10;
      v7[4] = self;
      [sceneIfExists updateSettings:v7];
    }
  }
}

- (int64_t)preferredWindowControlsPlacement
{
  preferredWindowControlsPlacement = self->_preferredWindowControlsPlacement;
  if (!preferredWindowControlsPlacement)
  {
    v4 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
    v5 = [v4 objectForKey:@"preferredWindowControlsPlacement"];
    v6 = v5;
    if (v5)
    {
      preferredWindowControlsPlacement = [v5 integerValue];
      self->_preferredWindowControlsPlacement = preferredWindowControlsPlacement;
    }

    else
    {
      preferredWindowControlsPlacement = 1;
    }
  }

  return preferredWindowControlsPlacement;
}

- (SBWindowControlsLayout)windowControlsLayoutForApplicationFrame:(SEL)frame screenBounds:(CGRect)bounds activationSettings:(CGRect)settings
{
  height = settings.size.height;
  width = settings.size.width;
  y = settings.origin.y;
  x = settings.origin.x;
  v10 = bounds.size.height;
  v11 = bounds.size.width;
  v12 = bounds.origin.y;
  v13 = bounds.origin.x;
  v16 = a6;
  if ([(SBDeviceApplicationSceneHandle *)self _supportsWindowControls])
  {
    v40 = y;
    v42 = height;
    application = [(SBApplicationSceneHandle *)self application];
    info = [application info];
    sb_thisDeviceDisplayEdgeInfo = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    v20 = 0.0;
    if (![(SBDeviceApplicationSceneHandle *)self isStatusBarHiddenForActivationSettings:v16 withOrientation:1])
    {
      if (_UIEnhancedMainMenuEnabled())
      {
        v20 = 32.0;
      }

      else
      {
        v20 = 24.0;
      }
    }

    safeAreaInsetsPortrait = [sb_thisDeviceDisplayEdgeInfo safeAreaInsetsPortrait];
    [safeAreaInsetsPortrait topInset];
    v23 = v22;

    if (v20 >= v23)
    {
      v23 = v20;
    }

    v60.origin.x = 0.0;
    v60.origin.y = 0.0;
    v58.origin.x = v13;
    v58.origin.y = v12;
    v58.size.width = v11;
    v58.size.height = v10;
    v60.size.width = width;
    v60.size.height = v23;
    v24 = CGRectIntersectsRect(v58, v60);
    v59.origin.x = v13;
    v59.origin.y = v12;
    v59.size.width = v11;
    v59.size.height = v10;
    v61.origin.x = x;
    v61.origin.y = v40;
    v61.size.height = v42;
    v61.size.width = width;
    v25 = CGRectEqualToRect(v59, v61);
    v26 = +[SBAppSwitcherDomain rootSettings];
    windowingSettings = [v26 windowingSettings];

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __106__SBDeviceApplicationSceneHandle_windowControlsLayoutForApplicationFrame_screenBounds_activationSettings___block_invoke;
    v56[3] = &unk_2783B8E08;
    v28 = windowingSettings;
    v57 = v28;
    v29 = MEMORY[0x223D6F7F0](v56);
    v30 = v29;
    if (v25)
    {
      (*(v29 + 16))(v29);
LABEL_25:

      goto LABEL_26;
    }

    v41 = sb_thisDeviceDisplayEdgeInfo;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __106__SBDeviceApplicationSceneHandle_windowControlsLayoutForApplicationFrame_screenBounds_activationSettings___block_invoke_2;
    v53[3] = &unk_2783B8E30;
    v55 = v24;
    v31 = info;
    v32 = v28;
    v54 = v32;
    v33 = MEMORY[0x223D6F7F0](v53);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __106__SBDeviceApplicationSceneHandle_windowControlsLayoutForApplicationFrame_screenBounds_activationSettings___block_invoke_3;
    v48[3] = &unk_2783B8E58;
    v49 = application;
    v52 = v24;
    v50 = v32;
    v51 = v23;
    v34 = MEMORY[0x223D6F7F0](v48);
    v43 = v31;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __106__SBDeviceApplicationSceneHandle_windowControlsLayoutForApplicationFrame_screenBounds_activationSettings___block_invoke_4;
    v44[3] = &unk_2783B8E80;
    v45 = v31;
    v35 = v33;
    v46 = v35;
    v36 = v34;
    v47 = v36;
    v37 = MEMORY[0x223D6F7F0](v44);
    preferredWindowControlsPlacement = [(SBDeviceApplicationSceneHandle *)self preferredWindowControlsPlacement];
    if (preferredWindowControlsPlacement <= 1)
    {
      if (preferredWindowControlsPlacement)
      {
        sb_thisDeviceDisplayEdgeInfo = v41;
        if (preferredWindowControlsPlacement == 1)
        {
          SBWindowControlsLayoutHidden(retstr);
        }

        goto LABEL_24;
      }

      SBWindowControlsLayoutUndefined(retstr);
    }

    else
    {
      if (preferredWindowControlsPlacement != 2)
      {
        sb_thisDeviceDisplayEdgeInfo = v41;
        if (preferredWindowControlsPlacement == 3)
        {
          v36[2](v36);
        }

        else if (preferredWindowControlsPlacement == 4)
        {
          v35[2](v35);
        }

        goto LABEL_24;
      }

      v37[2](v37);
    }

    sb_thisDeviceDisplayEdgeInfo = v41;
LABEL_24:

    info = v43;
    goto LABEL_25;
  }

  SBWindowControlsLayoutMake(3, 0, retstr, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
LABEL_26:

  return result;
}

uint64_t __106__SBDeviceApplicationSceneHandle_windowControlsLayoutForApplicationFrame_screenBounds_activationSettings___block_invoke@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  [*(a1 + 32) windowControlsInlineLeadingEdgeOffset];
  v5 = v4;
  [*(a1 + 32) windowControlsInlineTopNoSafeAreaEdgeOffset];

  return SBWindowControlsLayoutMake(1, 1, a2, v5, v6);
}

uint64_t __106__SBDeviceApplicationSceneHandle_windowControlsLayoutForApplicationFrame_screenBounds_activationSettings___block_invoke_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  [*(a1 + 32) windowControlsModalLeadingEdgeOffset];
  v6 = v5;
  [*(a1 + 32) windowControlsModalTopWithSafeAreaEdgeOffset];

  return SBWindowControlsLayoutMake(3, v4, a2, v6, v7);
}

uint64_t __106__SBDeviceApplicationSceneHandle_windowControlsLayoutForApplicationFrame_screenBounds_activationSettings___block_invoke_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(a1 + 32) isMedusaCapable];
  v5 = *(a1 + 40);
  if ((*(a1 + 56) & 1) != 0 || !v4)
  {
    [v5 windowControlsInlineTopWithSafeAreaEdgeOffset];
  }

  else
  {
    [v5 windowControlsInlineTopNoSafeAreaEdgeOffset];
  }

  v7 = *(a1 + 56);
  v8 = 10.0;
  if (v7 == 1)
  {
    v8 = *(a1 + 48);
  }

  v9 = v6 + v8;
  [*(a1 + 40) windowControlsInlineLeadingEdgeOffset];

  return SBWindowControlsLayoutMake(2, v7, a2, v10, v9);
}

uint64_t __106__SBDeviceApplicationSceneHandle_windowControlsLayoutForApplicationFrame_screenBounds_activationSettings___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) isLuckLinked];
  v3 = 40;
  if (v2)
  {
    v3 = 48;
  }

  v4 = *(*(a1 + v3) + 16);

  return v4();
}

- (int64_t)activationInterfaceOrientationForOrientation:(int64_t)orientation
{
  currentInterfaceOrientation = [(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation];
  if (currentInterfaceOrientation)
  {
    v6 = currentInterfaceOrientation;
    result = [(SBDeviceApplicationSceneHandle *)self _interfaceOrientationFromUserResizing];
    if (!result)
    {
      application = [(SBApplicationSceneHandle *)self application];
      classicAppPhoneAppRunningOnPad = [application classicAppPhoneAppRunningOnPad];

      if (classicAppPhoneAppRunningOnPad)
      {
        result = [(SBDeviceApplicationSceneHandle *)self _classicPhoneOnPadActivationOrientationForOrientation:orientation];
        if (!result)
        {
          return v6;
        }
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {

    return [(SBDeviceApplicationSceneHandle *)self _launchingInterfaceOrientationForOrientation:orientation];
  }

  return result;
}

- (void)reevaluateSafeAreaSettingsUsingAnimationSettings:(id)settings
{
  settingsCopy = settings;
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (sceneIfExists)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__SBDeviceApplicationSceneHandle_reevaluateSafeAreaSettingsUsingAnimationSettings___block_invoke;
    v6[3] = &unk_2783B8EA8;
    v6[4] = self;
    v7 = settingsCopy;
    [sceneIfExists performUpdate:v6];
  }
}

void __83__SBDeviceApplicationSceneHandle_reevaluateSafeAreaSettingsUsingAnimationSettings___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) _reevaluateSafeAreaSettingsForSceneSettings:a2];
  if (*(a1 + 40))
  {
    [v5 setAnimationSettings:?];
  }
}

- (void)_reevaluateSafeAreaSettingsForSceneSettings:(id)settings
{
  settingsCopy = settings;
  ui_safeAreaSettings = [settingsCopy ui_safeAreaSettings];
  if (ui_safeAreaSettings)
  {
    _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
    [_windowScene _boundsForInterfaceOrientation:{objc_msgSend(_windowScene, "_interfaceOrientation")}];
    [(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation];
    _UIConvertRectFromOrientationToOrientation();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [settingsCopy convertFrameInRect:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [SBDeviceApplicationSceneHandle _safeAreaCornerInsetResolverForApplicationFrame:"_safeAreaCornerInsetResolverForApplicationFrame:screenBounds:activationSettings:" screenBounds:0 activationSettings:?];
    safeAreaCornerInsetResolver = [ui_safeAreaSettings safeAreaCornerInsetResolver];
    v24 = [safeAreaCornerInsetResolver isEqual:v22];

    if ((v24 & 1) == 0)
    {
      [ui_safeAreaSettings setSafeAreaCornerInsetResolver:v22];
    }

    preferredSafeAreaSettings = self->_preferredSafeAreaSettings;
    if (preferredSafeAreaSettings)
    {
      [(_UISceneSafeAreaSettings *)preferredSafeAreaSettings safeAreaEdgeInsetResolver];
    }

    else
    {
      [(SBDeviceApplicationSceneHandle *)self safeAreaEdgeInsetResolverForApplicationFrame:0 screenBounds:v15 activationSettings:v17, v19, v21, v7, v9, v11, v13];
    }
    v26 = ;
    safeAreaEdgeInsetResolver = [ui_safeAreaSettings safeAreaEdgeInsetResolver];
    v28 = [safeAreaEdgeInsetResolver isEqual:v26];

    if ((v28 & 1) == 0)
    {
      [ui_safeAreaSettings setSafeAreaEdgeInsetResolver:v26];
    }
  }
}

- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)orientation isPhone:(BOOL)phone portraitSafeAreaInsets:(UIEdgeInsets)result statusBarHeight:(double)height homeAffordanceOverlayAllowance:(double)allowance
{
  v9.f64[0] = result.top;
  v9.f64[1] = result.left;
  v10.f64[0] = result.bottom;
  v10.f64[1] = result.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *MEMORY[0x277D768C8]), vceqq_f64(v10, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
  {
    if (phone)
    {
      _SB_UIEdgeInsetsRotateFromPortraitToOrientation(orientation);
      result.right = fmax(v11, v12);
      result.left = result.right;
    }

    result.bottom = fmax(result.bottom, allowance);
  }

  v13 = fmax(result.top, height);
  result.top = v13;
  return result;
}

- (id)safeAreaEdgeInsetResolverForApplicationFrame:(CGRect)frame screenBounds:(CGRect)bounds activationSettings:(id)settings
{
  y = bounds.origin.y;
  height = bounds.size.height;
  width = bounds.size.width;
  x = bounds.origin.x;
  v7 = frame.size.height;
  v8 = frame.size.width;
  v9 = frame.origin.y;
  v10 = frame.origin.x;
  settingsCopy = settings;
  sb_thisDeviceDisplayEdgeInfo = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  classicAppPhoneAppRunningOnPad = 1;
  v15 = [(SBDeviceApplicationSceneHandle *)self isStatusBarHiddenForActivationSettings:settingsCopy withOrientation:1];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    application = [(SBApplicationSceneHandle *)self application];
    classicAppPhoneAppRunningOnPad = [application classicAppPhoneAppRunningOnPad];
  }

  safeAreaInsetsPortrait = [sb_thisDeviceDisplayEdgeInfo safeAreaInsetsPortrait];
  [safeAreaInsetsPortrait edgeInsets];
  v20 = v19;
  v64 = v21;
  v65 = v22;
  v24 = v23;

  if ([(SBDeviceApplicationSceneHandle *)self _supportsSolariumSafeAreas])
  {
    [(SBDeviceApplicationSceneHandle *)self windowControlsLayoutForApplicationFrame:settingsCopy screenBounds:v10 activationSettings:v9, v8, v7, x, y, width, height];
    v25 = 0.0;
    if (!v15)
    {
      if (_UIEnhancedMainMenuEnabled())
      {
        v25 = 32.0;
      }

      else
      {
        v25 = 24.0;
      }
    }

    safeAreaInsetsPortrait2 = [sb_thisDeviceDisplayEdgeInfo safeAreaInsetsPortrait];
    [safeAreaInsetsPortrait2 topInset];
    v28 = v27;

    if (v25 >= v28)
    {
      v28 = v25;
    }

    v69.origin.x = 0.0;
    v69.origin.y = 0.0;
    v67.origin.x = v10;
    v67.origin.y = v9;
    v67.size.width = v8;
    v67.size.height = v7;
    v69.size.width = width;
    v69.size.height = v28;
    if (!CGRectIntersectsRect(v67, v69))
    {
      v28 = 10.0;
    }

    v70.origin.x = 0.0;
    v70.size.height = 20.0;
    v68.origin.x = v10;
    v68.origin.y = v9;
    v68.size.width = v8;
    v68.size.height = v7;
    v70.origin.y = height + -20.0;
    v70.size.width = width;
    v29 = CGRectIntersectsRect(v68, v70);
    if (v9 + v7 >= height + -20.0 || v29)
    {
      v31 = 20.0;
    }

    else
    {
      v31 = 10.0;
    }

    v32 = objc_alloc(MEMORY[0x277D76208]);
    v33 = v28;
    v34 = v64;
    v35 = v65;
    v36 = v31;
  }

  else
  {
    if (classicAppPhoneAppRunningOnPad)
    {
      if (v15)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = 20.0;
      }

      [(SBDeviceApplicationSceneHandle *)self _safeAreaInsetsForInterfaceOrientation:1 isPhone:1 portraitSafeAreaInsets:v20 statusBarHeight:v64 homeAffordanceOverlayAllowance:v24, v65, v37, 20.0, *&y];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      [(SBDeviceApplicationSceneHandle *)self _safeAreaInsetsForInterfaceOrientation:4 isPhone:1 portraitSafeAreaInsets:v20 statusBarHeight:v64 homeAffordanceOverlayAllowance:v24, v65, 0.0, 20.0];
      v50 = [objc_alloc(MEMORY[0x277D76208]) initWithSafeAreaEdgeInsetsForPortrait:v39 landscape:{v41, v43, v45, v46, v47, v48, v49}];
      goto LABEL_30;
    }

    v51 = 0.0;
    if (!v15)
    {
      if (_UIEnhancedMainMenuEnabled())
      {
        v51 = 32.0;
      }

      else
      {
        v51 = 24.0;
      }
    }

    [(SBDeviceApplicationSceneHandle *)self _safeAreaInsetsForInterfaceOrientation:1 isPhone:0 portraitSafeAreaInsets:v20 statusBarHeight:v64 homeAffordanceOverlayAllowance:v24, v65, v51, 24.0, *&y];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v32 = objc_alloc(MEMORY[0x277D76208]);
    v33 = v53;
    v34 = v55;
    v36 = v57;
    v35 = v59;
  }

  v50 = [v32 initWithSafeAreaEdgeInsets:{v33, v34, v36, v35}];
LABEL_30:
  v60 = v50;

  return v60;
}

- (id)displayEdgeInfoForLayoutEnvironment:(int64_t)environment
{
  application = [(SBApplicationSceneHandle *)self application];
  IsClassic = _SBApplicationClassicModeIsClassic([application _classicMode]);

  if (IsClassic)
  {
    v7 = MEMORY[0x277D77750];
    application2 = [(SBApplicationSceneHandle *)self application];
    v9 = [v7 sb_displayEdgeInfoForApplication:application2];
  }

  else
  {
    if (environment == 2)
    {
      [MEMORY[0x277D77750] sb_floatingApplicationDisplayEdgeInfo];
    }

    else
    {
      [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    }
    v9 = ;
  }

  return v9;
}

- (NSData)activationConditionsData
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    v6 = sceneIfExists;
    if (sceneIfExists)
    {
      uiClientSettings = [sceneIfExists uiClientSettings];
      [uiClientSettings activationConditionsData];
    }

    else
    {
      uiClientSettings = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
      [uiClientSettings objectForKey:@"activationConditions"];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setKeyboardContextMaskStyle:(unint64_t)style
{
  application = [(SBApplicationSceneHandle *)self application];
  supportsChamoisSceneResizing = [application supportsChamoisSceneResizing];

  if (style != 2 || supportsChamoisSceneResizing)
  {
    self->_keyboardLayerMaskStyle = style;
    sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    uiPresentationManager = [sceneIfExists uiPresentationManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__SBDeviceApplicationSceneHandle_setKeyboardContextMaskStyle___block_invoke;
    v9[3] = &__block_descriptor_40_e43_v16__0__UIMutableScenePresentationContext_8l;
    v9[4] = style;
    [uiPresentationManager modifyDefaultPresentationContext:v9];
  }
}

- (BOOL)supportsCenterWindow
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v4 = [v3 safeObjectForKey:@"originatedInCenterWindow" ofType:objc_opt_class()];
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    v7 = [v3 objectForKey:@"activationConditions"];
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:0];
    v9 = v8;
    if (v8)
    {
      v16 = 0;
      v10 = [v8 _suitabilityForTargetContentIdentifier:&stru_283094718 errorString:&v16];
      v11 = v16;
      bOOLValue = v10 == 0;
      if (v10)
      {
        v12 = SBLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          application = [(SBApplicationSceneHandle *)self application];
          bundleIdentifier = [application bundleIdentifier];
          *buf = 138543618;
          v18 = bundleIdentifier;
          v19 = 2114;
          v20 = v11;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "Error decoding activation conditions for %{public}@:%{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (BOOL)requestedFullScreenCenterWindow
{
  v2 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v3 = [v2 safeObjectForKey:@"requestedFullScreenCenterWindow" ofType:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setContentPrefersToDisableClipping:(BOOL)clipping
{
  if (self->_contentPrefersToDisableClipping != clipping)
  {
    self->_contentPrefersToDisableClipping = clipping;
    [(SBDeviceApplicationSceneHandle *)self _noteContentPrefersToDisableClippingChanged];
  }
}

- (BOOL)handleHardwareButtonEventType:(int64_t)type
{
  v34 = *MEMORY[0x277D85DE8];
  if ((SBSUIHardwareButtonEventTypeIsValid() & 1) == 0)
  {
    [SBDeviceApplicationSceneHandle handleHardwareButtonEventType:];
  }

  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (!sceneIfExists)
  {
    v8 = SBLogInCallPresentation();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
      v19 = SBSUIHardwareButtonEventTypeDescription();
      *buf = 138543618;
      v31 = sceneIdentifier;
      v32 = 2114;
      v33 = v19;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to handle %{public}@ event because the scene doesn't exist", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v6 = objc_opt_class();
  uiClientSettings = [sceneIfExists uiClientSettings];
  v8 = SBSafeCast(v6, uiClientSettings);

  if (!v8)
  {
    v10 = SBLogInCallPresentation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sceneIdentifier2 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
      v21 = SBSUIHardwareButtonEventTypeDescription();
      *buf = 138543618;
      v31 = sceneIdentifier2;
      v32 = 2114;
      v33 = v21;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to handle %{public}@ event because scene client settings are not of the appropriate class", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v9 = ([v8 preferredHardwareButtonEventTypes]& (1 << type)) == 0;
  v10 = SBLogInCallPresentation();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      sceneIdentifier3 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
      v23 = SBSUIHardwareButtonEventTypeDescription();
      *buf = 138543618;
      v31 = sceneIdentifier3;
      v32 = 2114;
      v33 = v23;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to handle %{public}@ event because it's not in the preferred types mask", buf, 0x16u);
    }

LABEL_16:

LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  if (v11)
  {
    sceneIdentifier4 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
    v13 = SBSUIHardwareButtonEventTypeDescription();
    *buf = 138543618;
    v31 = sceneIdentifier4;
    v32 = 2114;
    v33 = v13;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending hardware event action: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v14 = objc_alloc(MEMORY[0x277D67B60]);
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __64__SBDeviceApplicationSceneHandle_handleHardwareButtonEventType___block_invoke;
  v28 = &unk_2783B8EF0;
  objc_copyWeak(v29, buf);
  v29[1] = type;
  v15 = [v14 initWithButtonEventType:type timeout:&v25 withResponseHandler:5.0];
  v16 = [MEMORY[0x277CBEB98] setWithObject:{v15, v25, v26, v27, v28}];
  [sceneIfExists sendActions:v16];

  objc_destroyWeak(v29);
  objc_destroyWeak(buf);
  v17 = 1;
LABEL_18:

  return v17;
}

void __64__SBDeviceApplicationSceneHandle_handleHardwareButtonEventType___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = SBLogInCallPresentation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained sceneIdentifier];
    v7 = SBSUIHardwareButtonEventTypeDescription();
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Received response for hardware event %{public}@: %{public}@", &v8, 0x20u);
  }
}

- (unint64_t)preferredHardwareButtonEventTypes
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (sceneIfExists && (v3 = objc_opt_class(), [sceneIfExists uiClientSettings], v4 = objc_claimAutoreleasedReturnValue(), SBSafeCast(v3, v4), v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    preferredHardwareButtonEventTypes = [v5 preferredHardwareButtonEventTypes];
  }

  else
  {
    preferredHardwareButtonEventTypes = 0;
  }

  return preferredHardwareButtonEventTypes;
}

- (BOOL)prefersClosingInSwitcherDisabled
{
  v3 = +[SBWorkspace mainWorkspace];
  inCallPresentationManager = [v3 inCallPresentationManager];
  LOBYTE(self) = [inCallPresentationManager isSceneHandleCloseableInSwitcher:self];

  return self ^ 1;
}

- (id)acquireAssertionsForRelevancyResult:(id)result reason:(id)reason
{
  resultCopy = result;
  reasonCopy = reason;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  if ([resultCopy activityMode])
  {
    v9 = -[SBDeviceApplicationSceneHandle acquireSceneActivityModeAssertionWithReason:activityMode:](self, "acquireSceneActivityModeAssertionWithReason:activityMode:", reasonCopy, [resultCopy activityMode]);
    [v8 setObject:v9 forKey:&unk_2833711B0];
  }

  if ([resultCopy jetsamMode])
  {
    v10 = -[SBDeviceApplicationSceneHandle acquireSceneJetsamModeAssertionWithReason:jetsamMode:](self, "acquireSceneJetsamModeAssertionWithReason:jetsamMode:", reasonCopy, [resultCopy jetsamMode]);
    [v8 setObject:v10 forKey:&unk_2833711C8];
  }

  if ([resultCopy resourceElevation])
  {
    v11 = -[SBDeviceApplicationSceneHandle acquireSceneResourceElevationAssertionWithReason:resourceElevation:](self, "acquireSceneResourceElevationAssertionWithReason:resourceElevation:", reasonCopy, [resultCopy resourceElevation]);
    [v8 setObject:v11 forKey:&unk_2833711E0];
  }

  return v8;
}

- (char)activityMode
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = sceneIfExists;
  if (sceneIfExists)
  {
    settings = [sceneIfExists settings];
    computedActivityMode = [settings activityMode];
  }

  else
  {
    computedActivityMode = self->_computedActivityMode;
  }

  return computedActivityMode;
}

- (unsigned)jetsamPriority
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v3 = sceneIfExists;
  if (sceneIfExists)
  {
    settings = [sceneIfExists settings];
    jetsamPriority = [settings jetsamPriority];
  }

  else
  {
    jetsamPriority = FBSSceneJetsamPriorityCreate();
  }

  return jetsamPriority;
}

- (id)acquireActiveAppearanceAssertionWithReason:(id)reason activeAppearance:(int64_t)appearance priority:(int64_t)priority
{
  v24 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v9 = [SBSceneHandleActiveAppearanceAssertion alloc];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__SBDeviceApplicationSceneHandle_acquireActiveAppearanceAssertionWithReason_activeAppearance_priority___block_invoke;
  v19[3] = &unk_2783B8F18;
  objc_copyWeak(&v20, &location);
  v10 = [(SBSceneHandleActiveAppearanceAssertion *)v9 initWithReason:reasonCopy activeAppearance:appearance priority:priority invalidationBlock:v19];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = [(NSMutableArray *)self->_activeAppearanceAssertions count];
  activeAppearanceAssertions = self->_activeAppearanceAssertions;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __103__SBDeviceApplicationSceneHandle_acquireActiveAppearanceAssertionWithReason_activeAppearance_priority___block_invoke_2;
  v14[3] = &unk_2783B8F40;
  v14[4] = &v15;
  v14[5] = priority;
  [(NSMutableArray *)activeAppearanceAssertions enumerateObjectsUsingBlock:v14];
  [(NSMutableArray *)self->_activeAppearanceAssertions insertObject:v10 atIndex:v16[3]];
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Scene handle active appearance assertion was acquired: %{public}@", buf, 0xCu);
  }

  [(SBDeviceApplicationSceneHandle *)self _needsInterfaceAppearanceUpdate];
  _Block_object_dispose(&v15, 8);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v10;
}

void __103__SBDeviceApplicationSceneHandle_acquireActiveAppearanceAssertionWithReason_activeAppearance_priority___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[41] removeObject:v5];
    [v4 _needsInterfaceAppearanceUpdate];
  }
}

uint64_t __103__SBDeviceApplicationSceneHandle_acquireActiveAppearanceAssertionWithReason_activeAppearance_priority___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 40);
  result = [a2 priority];
  if (v7 < result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)acquireSceneActivityModeAssertionWithReason:(id)reason activityMode:(char)mode
{
  modeCopy = mode;
  v19 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v7 = [SBSceneHandleActivityModeAssertion alloc];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __91__SBDeviceApplicationSceneHandle_acquireSceneActivityModeAssertionWithReason_activityMode___block_invoke;
  v14 = &unk_2783B8F68;
  objc_copyWeak(&v15, &location);
  v8 = [(SBSceneHandleActivityModeAssertion *)v7 initWithReason:reasonCopy activityMode:modeCopy invalidationBlock:&v11];
  [(NSHashTable *)self->_activityModeAssertions addObject:v8, v11, v12, v13, v14];
  v9 = SBLogSceneRelevancy();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Scene handle assertion was acquired: %{public}@", buf, 0xCu);
  }

  [(SBDeviceApplicationSceneHandle *)self _reevaluateActivityModeFromAssertions];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v8;
}

void __91__SBDeviceApplicationSceneHandle_acquireSceneActivityModeAssertionWithReason_activityMode___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[42] removeObject:v5];
    [v4 _reevaluateActivityModeFromAssertions];
  }
}

- (id)acquireSceneJetsamModeAssertionWithReason:(id)reason jetsamMode:(char)mode
{
  modeCopy = mode;
  v19 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v7 = [SBSceneHandleJetsamModeAssertion alloc];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __87__SBDeviceApplicationSceneHandle_acquireSceneJetsamModeAssertionWithReason_jetsamMode___block_invoke;
  v14 = &unk_2783B8F90;
  objc_copyWeak(&v15, &location);
  v8 = [(SBSceneHandleJetsamModeAssertion *)v7 initWithReason:reasonCopy jetsamMode:modeCopy invalidationBlock:&v11];
  [(NSHashTable *)self->_jetsamModeAssertions addObject:v8, v11, v12, v13, v14];
  v9 = SBLogSceneRelevancy();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Scene handle assertion was acquired: %{public}@", buf, 0xCu);
  }

  [(SBDeviceApplicationSceneHandle *)self _reevaluateJetsamModeFromAssertions];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v8;
}

void __87__SBDeviceApplicationSceneHandle_acquireSceneJetsamModeAssertionWithReason_jetsamMode___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[43] removeObject:v5];
    [v4 _reevaluateJetsamModeFromAssertions];
  }
}

- (id)acquireSceneResourceElevationAssertionWithReason:(id)reason resourceElevation:(char)elevation
{
  elevationCopy = elevation;
  v19 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v7 = [SBSceneHandleResourceElevationAssertion alloc];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __101__SBDeviceApplicationSceneHandle_acquireSceneResourceElevationAssertionWithReason_resourceElevation___block_invoke;
  v14 = &unk_2783B8FB8;
  objc_copyWeak(&v15, &location);
  v8 = [(SBSceneHandleResourceElevationAssertion *)v7 initWithReason:reasonCopy resourceElevation:elevationCopy invalidationBlock:&v11];
  [(NSHashTable *)self->_resourceElevationAssertions addObject:v8, v11, v12, v13, v14];
  v9 = SBLogSceneRelevancy();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Scene handle assertion was acquired: %{public}@", buf, 0xCu);
  }

  [(SBDeviceApplicationSceneHandle *)self _reevaluateResourceElevationFromAssertions];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v8;
}

void __101__SBDeviceApplicationSceneHandle_acquireSceneResourceElevationAssertionWithReason_resourceElevation___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[44] removeObject:v5];
    [v4 _reevaluateResourceElevationFromAssertions];
  }
}

- (int64_t)_bestSupportedInterfaceOrientationForOrientation:(int64_t)orientation
{
  currentInterfaceOrientation = [(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation];
  _mainSceneSupportedInterfaceOrientations = [(SBDeviceApplicationSceneHandle *)self _mainSceneSupportedInterfaceOrientations];
  v7 = 1;
  v8 = 4;
  v9 = 3;
  if ((_mainSceneSupportedInterfaceOrientations & 8) == 0)
  {
    v9 = (_mainSceneSupportedInterfaceOrientations >> 1) & 2;
  }

  if ((_mainSceneSupportedInterfaceOrientations & 0x10) == 0)
  {
    v8 = v9;
  }

  if ((_mainSceneSupportedInterfaceOrientations & 2) == 0)
  {
    v7 = v8;
  }

  if ((_mainSceneSupportedInterfaceOrientations & (1 << currentInterfaceOrientation)) != 0)
  {
    v10 = currentInterfaceOrientation;
  }

  else
  {
    v10 = v7;
  }

  if ((_mainSceneSupportedInterfaceOrientations & (1 << orientation)) != 0)
  {
    return orientation;
  }

  else
  {
    return v10;
  }
}

- (int64_t)_resumingInterfaceOrientationForOrientation:(int64_t)orientation
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];

  if (sceneIfExists)
  {
    if (!orientation)
    {
      goto LABEL_22;
    }
  }

  else
  {
    [SBDeviceApplicationSceneHandle _resumingInterfaceOrientationForOrientation:];
    if (!orientation)
    {
      goto LABEL_22;
    }
  }

  application = [(SBApplicationSceneHandle *)self application];
  info = [application info];
  v8 = [info builtOnOrAfterSDKVersion:@"8.0"];

  v9 = [(SBDeviceApplicationSceneHandle *)self _mainSceneSupportsInterfaceOrientation:orientation];
  orientationCopy2 = [(SBDeviceApplicationSceneHandle *)self _interfaceOrientationFromUserResizing];
  if (orientationCopy2)
  {
LABEL_4:

    return orientationCopy2;
  }

  if ([application classicAppPhoneAppRunningOnPad])
  {
    orientationCopy2 = [(SBDeviceApplicationSceneHandle *)self _classicPhoneOnPadActivationOrientationForOrientation:orientation];
    goto LABEL_11;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass())
    {
      if (!((SBFEffectiveDeviceClass() != 1) | v8 & 1))
      {
LABEL_10:
        sceneIfExists2 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
        uiClientSettings = [sceneIfExists2 uiClientSettings];
        orientationCopy2 = [uiClientSettings sb_effectiveInterfaceOrientation];

LABEL_11:
        if (orientationCopy2)
        {
          return orientationCopy2;
        }

        goto LABEL_22;
      }
    }

    else if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v15 = [currentDevice userInterfaceIdiom] != 0;

    if (((v15 | v8) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (v9)
  {
    application2 = [(SBApplicationSceneHandle *)self application];
    isMedusaCapable = [application2 isMedusaCapable];

    if (isMedusaCapable)
    {
      orientationCopy2 = orientation;
      goto LABEL_4;
    }

    sceneIfExists3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    uiClientSettings2 = [sceneIfExists3 uiClientSettings];
    supportedInterfaceOrientations = [uiClientSettings2 supportedInterfaceOrientations];

    if (supportedInterfaceOrientations)
    {
      orientationCopy2 = orientation;
      if ((XBInterfaceOrientationMaskForInterfaceOrientation() & supportedInterfaceOrientations) != 0)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_22:

  return [(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation];
}

- (int64_t)_launchingInterfaceOrientationForOrientation:(int64_t)orientation
{
  if ([(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation])
  {
    [SBDeviceApplicationSceneHandle _launchingInterfaceOrientationForOrientation:];
  }

  application = [(SBApplicationSceneHandle *)self application];
  if (!orientation)
  {
    orientation = [SBApp interfaceOrientationForCurrentDeviceOrientation:1];
  }

  application2 = [(SBApplicationSceneHandle *)self application];
  isMedusaCapable = [application2 isMedusaCapable];

  if (isMedusaCapable)
  {
    goto LABEL_6;
  }

  homeScreenRotationStyle = [SBApp homeScreenRotationStyle];
  info = [application info];
  v14 = [info builtOnOrAfterSDKVersion:@"8.0"];

  _currentClassicModeAllowsLaunchingToAnySupportedOrientation = [(SBDeviceApplicationSceneHandle *)self _currentClassicModeAllowsLaunchingToAnySupportedOrientation];
  v16 = [(SBDeviceApplicationSceneHandle *)self _mainSceneSupportsInterfaceOrientation:orientation];
  _interfaceOrientationFromUserResizing = [(SBDeviceApplicationSceneHandle *)self _interfaceOrientationFromUserResizing];
  if (_interfaceOrientationFromUserResizing)
  {
    goto LABEL_12;
  }

  if ((((homeScreenRotationStyle != 0) | v14) & _currentClassicModeAllowsLaunchingToAnySupportedOrientation & 1) == 0)
  {
    application3 = [(SBApplicationSceneHandle *)self application];
    classicAppPhoneAppRunningOnPad = [application3 classicAppPhoneAppRunningOnPad];

    if (!classicAppPhoneAppRunningOnPad)
    {
      goto LABEL_7;
    }

    orientation = [(SBDeviceApplicationSceneHandle *)self _classicPhoneOnPadActivationOrientationForOrientation:orientation];
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    if (orientation)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v18 = +[SBOrientationLockManager sharedInstance];
  isUserLocked = [v18 isUserLocked];

  if (isUserLocked)
  {
    rawDeviceOrientationIgnoringOrientationLocks = [SBApp rawDeviceOrientationIgnoringOrientationLocks];
    if ((rawDeviceOrientationIgnoringOrientationLocks - 5) >= 0xFFFFFFFFFFFFFFFCLL && rawDeviceOrientationIgnoringOrientationLocks != orientation)
    {
      orientation = rawDeviceOrientationIgnoringOrientationLocks;
      if ([(SBDeviceApplicationSceneHandle *)self _mainSceneSupportsInterfaceOrientation:rawDeviceOrientationIgnoringOrientationLocks])
      {
        goto LABEL_13;
      }
    }
  }

LABEL_7:
  _interfaceOrientationFromUserResizing = [(SBDeviceApplicationSceneHandle *)self defaultInterfaceOrientation];
  if (_interfaceOrientationFromUserResizing)
  {
LABEL_12:
    orientation = _interfaceOrientationFromUserResizing;
    goto LABEL_13;
  }

  v9 = SBLogCommon();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
    NSLog(&cfstr_NoFallbackOrie.isa, sceneIdentifier);
  }

  orientation = 1;
LABEL_13:

  return orientation;
}

- (int64_t)_classicPhoneOnPadActivationOrientationForOrientation:(int64_t)orientation
{
  _classicAppPhoneOnPadPrefersLandscape = [(SBDeviceApplicationSceneHandle *)self _classicAppPhoneOnPadPrefersLandscape];
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  uiClientSettings = [sceneIfExists uiClientSettings];
  supportedInterfaceOrientations = [uiClientSettings supportedInterfaceOrientations];

  if (supportedInterfaceOrientations && _classicAppPhoneOnPadPrefersLandscape)
  {
    currentInterfaceOrientation = [(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation];
    if ((currentInterfaceOrientation - 3) <= 1)
    {
      v10 = currentInterfaceOrientation;
      if ((supportedInterfaceOrientations & (1 << currentInterfaceOrientation)) != 0)
      {
        return v10;
      }
    }

    if ((orientation - 3) > 1)
    {
      if ((supportedInterfaceOrientations & 0x10) != 0)
      {
        return 4;
      }

      if ((supportedInterfaceOrientations & 8) != 0)
      {
        return 3;
      }
    }

    else
    {
      if ((supportedInterfaceOrientations & (1 << orientation)) != 0)
      {
        return orientation;
      }

      if (orientation == 4)
      {
        v10 = 3;
      }

      else
      {
        v10 = 4;
      }

      if ((supportedInterfaceOrientations & (1 << v10)) != 0)
      {
        return v10;
      }
    }
  }

  v10 = 1;
  if ([(SBDeviceApplicationSceneHandle *)self _mainSceneSupportsInterfaceOrientation:1])
  {
    return v10;
  }

  return [(SBDeviceApplicationSceneHandle *)self _bestSupportedInterfaceOrientationForOrientation:0];
}

- (void)_noteActivationConditionsChanged
{
  activationConditionsData = [(SBDeviceApplicationSceneHandle *)self activationConditionsData];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SBDeviceApplicationSceneHandle__noteActivationConditionsChanged__block_invoke;
  v5[3] = &unk_2783B8FE0;
  v5[4] = self;
  v6 = activationConditionsData;
  v4 = activationConditionsData;
  [(SBDeviceApplicationSceneHandle *)self _enumerateObserversWithBlock:v5];
}

void __66__SBDeviceApplicationSceneHandle__noteActivationConditionsChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneHandle:*(a1 + 32) didChangeActivationConditionsData:*(a1 + 40)];
  }
}

- (void)_noteBackgroundActivitiesToSuppressChanged
{
  backgroundActivitiesToSuppress = [(SBDeviceApplicationSceneHandle *)self backgroundActivitiesToSuppress];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__SBDeviceApplicationSceneHandle__noteBackgroundActivitiesToSuppressChanged__block_invoke;
  v5[3] = &unk_2783B8FE0;
  v5[4] = self;
  v6 = backgroundActivitiesToSuppress;
  v4 = backgroundActivitiesToSuppress;
  [(SBDeviceApplicationSceneHandle *)self _enumerateObserversWithBlock:v5];
}

void __76__SBDeviceApplicationSceneHandle__noteBackgroundActivitiesToSuppressChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneHandle:*(a1 + 32) didChangeBackgroundActivitiesToSuppress:*(a1 + 40)];
  }
}

- (void)_noteContentPrefersToDisableClippingChanged
{
  contentPrefersToDisableClipping = [(SBDeviceApplicationSceneHandle *)self contentPrefersToDisableClipping];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__SBDeviceApplicationSceneHandle__noteContentPrefersToDisableClippingChanged__block_invoke;
  v4[3] = &unk_2783B9008;
  v4[4] = self;
  v5 = contentPrefersToDisableClipping;
  [(SBDeviceApplicationSceneHandle *)self _enumerateObserversWithBlock:v4];
}

void __77__SBDeviceApplicationSceneHandle__noteContentPrefersToDisableClippingChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneHandle:*(a1 + 32) didChangeContentPrefersToDisableClipping:*(a1 + 40)];
  }
}

- (int64_t)_initialMainSceneCompabilityMode:(id)mode
{
  modeCopy = mode;
  application = [(SBApplicationSceneHandle *)self application];
  isClassic = [application isClassic];
  v7 = [modeCopy objectForActivationSetting:20];

  integerValue = [v7 integerValue];
  if (_SBApplicationClassicModeIsClassic(integerValue) || isClassic)
  {
    if ([application classicAppZoomedIn])
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_populateSettingsWithDefaultStatusBarHeight:(id)height
{
  heightCopy = height;
  _defaultStatusBarHeights = [(SBDeviceApplicationSceneHandle *)self _defaultStatusBarHeights];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__SBDeviceApplicationSceneHandle__populateSettingsWithDefaultStatusBarHeight___block_invoke;
  v7[3] = &unk_2783B9030;
  v8 = heightCopy;
  v6 = heightCopy;
  [_defaultStatusBarHeights enumerateKeysAndObjectsUsingBlock:v7];
}

uint64_t __78__SBDeviceApplicationSceneHandle__populateSettingsWithDefaultStatusBarHeight___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 integerValue];
  v7 = [v5 integerValue];

  return [v4 setDefaultStatusBarHeight:v7 forOrientation:v6];
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  changedCopy = changed;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SBDeviceApplicationSceneHandle_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __79__SBDeviceApplicationSceneHandle_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CEBE80];
  v3 = [*(a1 + 32) application];
  v4 = [v3 bundleIdentifier];
  v10 = [v2 applicationWithBundleIdentifier:v4];

  v5 = [*(a1 + 40) containsObject:v10];
  v6 = v10;
  if (v5)
  {
    v7 = [v10 isLocked];
    v8 = [*(a1 + 32) sceneIfExists];
    if ([v8 isValid])
    {
      v9 = [v8 _interfaceProtectionHostComponent];
      [v9 setUnderAppProtection:v7];
    }

    v6 = v10;
  }
}

- (void)appProtectionAssistantShouldShieldDidChange:(id)change
{
  shouldShield = [change shouldShield];
  preventKeyboardFocusDueToAppProtectionAssertion = self->_preventKeyboardFocusDueToAppProtectionAssertion;
  if (shouldShield)
  {
    if (preventKeyboardFocusDueToAppProtectionAssertion)
    {
      return;
    }

    sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    identityToken = [sceneIfExists identityToken];

    v6 = identityToken;
    if (identityToken)
    {
      v8 = +[SBWorkspace mainWorkspace];
      keyboardFocusController = [v8 keyboardFocusController];
      v10 = [keyboardFocusController preventFocusForSceneWithIdentityToken:identityToken reason:@"SBDeviceApplicationSceneHandle is preventing focus for shielded scene due to app protection"];
      v11 = self->_preventKeyboardFocusDueToAppProtectionAssertion;
      self->_preventKeyboardFocusDueToAppProtectionAssertion = v10;

      v6 = identityToken;
    }
  }

  else
  {
    [(BSInvalidatable *)preventKeyboardFocusDueToAppProtectionAssertion invalidate];
    v6 = self->_preventKeyboardFocusDueToAppProtectionAssertion;
    self->_preventKeyboardFocusDueToAppProtectionAssertion = 0;
  }
}

- (void)layoutPreferencesCoordinator:(id)coordinator didUpdatePreferencesForScene:(id)scene transitionContext:(id)context
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __110__SBDeviceApplicationSceneHandle_layoutPreferencesCoordinator_didUpdatePreferencesForScene_transitionContext___block_invoke;
  v5[3] = &unk_2783B9058;
  v5[4] = self;
  [(SBDeviceApplicationSceneHandle *)self _enumerateObserversWithBlock:v5, scene, context];
}

void __110__SBDeviceApplicationSceneHandle_layoutPreferencesCoordinator_didUpdatePreferencesForScene_transitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneHandleDidUpdateLayoutPreferences:*(a1 + 32)];
  }
}

- (void)layoutPreferencesCoordinatorDidRecognizeDoubleTapInDraggableArea:(id)area
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __99__SBDeviceApplicationSceneHandle_layoutPreferencesCoordinatorDidRecognizeDoubleTapInDraggableArea___block_invoke;
  v3[3] = &unk_2783B9058;
  v3[4] = self;
  [(SBDeviceApplicationSceneHandle *)self _enumerateObserversWithBlock:v3];
}

void __99__SBDeviceApplicationSceneHandle_layoutPreferencesCoordinatorDidRecognizeDoubleTapInDraggableArea___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneHandleDidRecognizeDoubleTapInDraggableArea:*(a1 + 32)];
  }
}

- (void)_didCreateScene:(id)scene
{
  sceneCopy = scene;
  settings = [sceneCopy settings];
  self->_isEffectivelyForeground = [settings isForeground];

  v33.receiver = self;
  v33.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v33 _didCreateScene:sceneCopy];
  if (SBFIsFlexibleWindowingUIAvailable())
  {
    mEMORY[0x277D29510] = [MEMORY[0x277D29510] sharedInstance];
    if ([mEMORY[0x277D29510] isStoreDemoModeEnabled:0])
    {
LABEL_7:

LABEL_8:
      [sceneCopy addExtension:objc_opt_class()];
      goto LABEL_9;
    }

    mEMORY[0x277D29510]2 = [MEMORY[0x277D29510] sharedInstance];
    if ([mEMORY[0x277D29510]2 isPressDemoModeEnabled:0])
    {
LABEL_6:

      goto LABEL_7;
    }

    v8 = +[SBDefaults localDefaults];
    demoDefaults = [v8 demoDefaults];
    if ([demoDefaults allowsTestingStoreDemoMode])
    {

      goto LABEL_6;
    }

    application = [(SBApplicationSceneHandle *)self application];
    bundleIdentifier = [application bundleIdentifier];
    v31 = [bundleIdentifier isEqualToString:@"com.apple.QRCode"];

    if (v31)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  v10 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:1];
  _definition = [(SBDeviceApplicationSceneHandle *)self _definition];
  specification = [_definition specification];
  uiSceneSessionRole = [specification uiSceneSessionRole];

  [v10 setObject:uiSceneSessionRole forKey:@"sceneSessionRole"];
  v14 = [[SBModalAlertPresenter alloc] initWithScene:sceneCopy];
  modalAlertPresenter = self->_modalAlertPresenter;
  self->_modalAlertPresenter = v14;

  [(SBDeviceApplicationSceneHandle *)self _noteMainSceneBackgroundStyleChanged];
  application2 = [(SBApplicationSceneHandle *)self application];
  info = [application2 info];
  -[SBDeviceApplicationSceneHandle setWhitePointAdaptivityStyle:](self, "setWhitePointAdaptivityStyle:", [info whitePointAdaptivityStyle]);

  uiPresentationManager = [sceneCopy uiPresentationManager];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __50__SBDeviceApplicationSceneHandle__didCreateScene___block_invoke;
  v32[3] = &unk_2783A9210;
  v32[4] = self;
  [uiPresentationManager modifyDefaultPresentationContext:v32];

  clientProcess = [sceneCopy clientProcess];
  LODWORD(info) = [clientProcess isApplicationProcess];

  if (info)
  {
    clientProcess2 = [sceneCopy clientProcess];
    [clientProcess2 addObserver:self];
  }

  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  supportsMultitasking = [_windowScene supportsMultitasking];

  if (supportsMultitasking)
  {
    ui_layoutPreferencesCoordinator = [sceneCopy ui_layoutPreferencesCoordinator];
    [ui_layoutPreferencesCoordinator setDelegate:self];
  }

  if ([(SBDeviceApplicationSceneHandle *)self shouldApplyAppProtectionSceneSettings]&& !self->_appProtectionSubscription)
  {
    subjectMonitorRegistry = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
    v25 = [subjectMonitorRegistry addMonitor:self subjectMask:1];
    appProtectionSubscription = self->_appProtectionSubscription;
    self->_appProtectionSubscription = v25;
  }

  application3 = [(SBApplicationSceneHandle *)self application];
  appProtectionAssistant = [application3 appProtectionAssistant];
  [(SBDeviceApplicationSceneHandle *)self appProtectionAssistantShouldShieldDidChange:appProtectionAssistant];

  if (self->_occludedByApplication)
  {
    [(SBDeviceApplicationSceneHandle *)self _updateApplicationOcclusionRects];
  }

  if (self->_occludedBySystemUI)
  {
    [(SBDeviceApplicationSceneHandle *)self _updateSystemOcclusionRectsAndActiveAppearance];
  }

  if (self->_computedActivityMode)
  {
    [(SBDeviceApplicationSceneHandle *)self _updateActivityMode];
  }

  if (self->_computedJetsamMode)
  {
    [(SBDeviceApplicationSceneHandle *)self _updateJetsamPriority];
  }

  if (self->_computedResourceElevation)
  {
    [(SBDeviceApplicationSceneHandle *)self _updateJetsamPriority];
  }

  [(SBDeviceApplicationSceneHandle *)self _needsInterfaceAppearanceUpdate];
}

- (void)_didDestroyScene:(id)scene
{
  appProtectionSubscription = self->_appProtectionSubscription;
  sceneCopy = scene;
  [(APSubjectMonitorSubscription *)appProtectionSubscription invalidate];
  v6 = self->_appProtectionSubscription;
  self->_appProtectionSubscription = 0;

  ui_layoutPreferencesCoordinator = [sceneCopy ui_layoutPreferencesCoordinator];
  [ui_layoutPreferencesCoordinator setDelegate:0];

  clientProcess = [sceneCopy clientProcess];
  [clientProcess removeObserver:self];

  [(SBModalAlertPresenter *)self->_modalAlertPresenter invalidate];
  modalAlertPresenter = self->_modalAlertPresenter;
  self->_modalAlertPresenter = 0;

  statusBarForcedHiddenReasons = self->_statusBarForcedHiddenReasons;
  self->_statusBarForcedHiddenReasons = 0;

  self->_isEffectivelyForeground = 0;
  [(SBDeviceApplicationSceneHandle *)self setAlertSuppressionContextsBySectionIdentifier:0];
  application = [(SBApplicationSceneHandle *)self application];
  info = [application info];
  -[SBDeviceApplicationSceneHandle setWhitePointAdaptivityStyle:](self, "setWhitePointAdaptivityStyle:", [info whitePointAdaptivityStyle]);

  v13.receiver = self;
  v13.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v13 _didDestroyScene:sceneCopy];
}

- (void)_didUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  transitionContext = [settingsCopy transitionContext];
  v17.receiver = self;
  v17.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v17 _didUpdateClientSettings:settingsCopy];
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDeviceApplicationSceneHandle _didUpdateClientSettings:];
  }

  clientSettingsInspector = self->_clientSettingsInspector;
  if (!clientSettingsInspector)
  {
    v8 = objc_alloc_init(MEMORY[0x277D75160]);
    v9 = self->_clientSettingsInspector;
    self->_clientSettingsInspector = v8;

    objc_initWeak(&location, self);
    v10 = self->_clientSettingsInspector;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__SBDeviceApplicationSceneHandle__didUpdateClientSettings___block_invoke;
    v14[3] = &unk_2783AC8A0;
    objc_copyWeak(&v15, &location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v10 observeVisibleMiniAlertCountWithBlock:v14];
    v11 = self->_clientSettingsInspector;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__SBDeviceApplicationSceneHandle__didUpdateClientSettings___block_invoke_2;
    v12[3] = &unk_2783AC8A0;
    objc_copyWeak(&v13, &location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v11 observeSupportedInterfaceOrientationsWithBlock:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    clientSettingsInspector = self->_clientSettingsInspector;
  }

  [(UIApplicationSceneClientSettingsDiffInspector *)clientSettingsInspector inspectDiff:settingsDiff withContext:transitionContext];
  [(SBDeviceApplicationSceneHandle *)self _updateDisableMultitaskingWhileForegroundAssertionIfNeeded];
}

void __59__SBDeviceApplicationSceneHandle__didUpdateClientSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained[20];
  v2 = [WeakRetained scene];
  v3 = [v2 uiClientSettings];
  [v1 setVisibleModalAlertCount:{objc_msgSend(v3, "visibleMiniAlertCount")}];
}

void __59__SBDeviceApplicationSceneHandle__didUpdateClientSettings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained scene];
  v2 = [v1 uiClientSettings];
  [v2 supportedInterfaceOrientations];

  [WeakRetained _interfaceOrientationFromUserResizing];
  if ((SBFInterfaceOrientationMaskContainsInterfaceOrientation() & 1) == 0)
  {
    [WeakRetained _setInterfaceOrientationFromUserResizing:0];
  }
}

- (void)_didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings
{
  v10.receiver = self;
  v10.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v10 _didUpdateSettingsWithDiff:diff previousSettings:settings];
  scene = [(SBDeviceApplicationSceneHandle *)self scene];
  settings = [scene settings];
  isForeground = [settings isForeground];

  if (self->_isEffectivelyForeground != isForeground)
  {
    self->_isEffectivelyForeground = isForeground;
    if ((isForeground & 1) == 0)
    {
      [(SBDeviceApplicationSceneHandle *)self _resetSceneOrientationRequestState];
    }

    [(SBDeviceApplicationSceneHandle *)self _needsInterfaceAppearanceUpdate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__SBDeviceApplicationSceneHandle__didUpdateSettingsWithDiff_previousSettings___block_invoke;
    v8[3] = &unk_2783B9008;
    v8[4] = self;
    v9 = isForeground;
    [(SBDeviceApplicationSceneHandle *)self _enumerateObserversWithBlock:v8];
  }

  [(SBDeviceApplicationSceneHandle *)self _updateDisableMultitaskingWhileForegroundAssertionIfNeeded];
}

void __78__SBDeviceApplicationSceneHandle__didUpdateSettingsWithDiff_previousSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneHandle:*(a1 + 32) didChangeEffectiveForegroundness:*(a1 + 40)];
  }
}

- (void)_modifyProcessExecutionContext:(id)context fromRequestContext:(id)requestContext entity:(id)entity
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = SBDeviceApplicationSceneHandle;
  entityCopy = entity;
  [(SBApplicationSceneHandle *)&v18 _modifyProcessExecutionContext:contextCopy fromRequestContext:requestContext entity:entityCopy];
  v10 = [(SBApplicationSceneHandle *)self application:v18.receiver];
  v11 = [entityCopy objectForActivationSetting:20];

  _defaultClassicMode = [v10 _defaultClassicMode];
  integerValue = [v11 integerValue];
  if (v11)
  {
    _defaultClassicMode = integerValue;
  }

  environment = [contextCopy environment];
  if (environment)
  {
    v15 = objc_alloc(MEMORY[0x277CBEB38]);
    environment2 = [contextCopy environment];
    v17 = [v15 initWithDictionary:environment2];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  if (_defaultClassicMode != -1)
  {
    [v10 _setCurrentClassicMode:_defaultClassicMode];
    if (v11)
    {
      [v17 setObject:v11 forKey:@"CLASSIC_OVERRIDE"];
    }

    [v10 _setCurrentClassicMode:_defaultClassicMode];
    if ([v10 classicAppPhoneAppRunningOnPad])
    {
      [v17 setObject:@"iphone" forKey:@"CLASSIC_SUFFIX"];
    }
  }

  [contextCopy setEnvironment:v17];
}

- (void)_modifyApplicationSceneSettings:(id)settings fromRequestContext:(id)context entity:(id)entity
{
  v113 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  contextCopy = context;
  entityCopy = entity;
  v104.receiver = self;
  v104.super_class = SBDeviceApplicationSceneHandle;
  v99 = contextCopy;
  [(SBApplicationSceneHandle *)&v104 _modifyApplicationSceneSettings:settingsCopy fromRequestContext:contextCopy entity:entityCopy];
  application = [(SBApplicationSceneHandle *)self application];
  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  switcherController = [_windowScene switcherController];
  isClassic = [application isClassic];
  v102 = switcherController;
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  v16 = [entityCopy BOOLForActivationSetting:72];
  v17 = isClassic;
  if ((isClassic & 1) == 0)
  {
    v17 = isClassic;
    if (isChamoisOrFlexibleWindowing)
    {
      v17 = ([application supportsChamoisSceneResizing] | v16) ^ 1;
    }
  }

  if (isClassic)
  {
    v18 = 1;
  }

  else
  {
    v18 = [application supportsChamoisOnExternalDisplay] ^ 1;
  }

  v19 = SBFIsShellSceneKitAvailable();
  supportsChamoisOnExternalDisplay = [application supportsChamoisOnExternalDisplay];
  v101 = application;
  if (v19)
  {
    if (supportsChamoisOnExternalDisplay)
    {
      displayIdentity = [settingsCopy displayIdentity];
      if ([displayIdentity isContinuityDisplay])
      {
        isMainDisplay = 1;
      }

      else
      {
        displayIdentity2 = [settingsCopy displayIdentity];
        isMainDisplay = [displayIdentity2 isMainDisplay];
      }

      goto LABEL_15;
    }
  }

  else if (supportsChamoisOnExternalDisplay)
  {
    displayIdentity = [settingsCopy displayIdentity];
    isMainDisplay = [displayIdentity isContinuityDisplay];
LABEL_15:

    goto LABEL_16;
  }

  isMainDisplay = 1;
LABEL_16:
  displayConfiguration = [settingsCopy displayConfiguration];
  if (((v18 | v17) & 1) != 0 || isMainDisplay)
  {
    mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
    v26 = [v101 restrictedClassicModeDisplayConfigurationForDisplayConfiguration:mainConfiguration];
    if (v17)
    {
      [v101 defaultLaunchingSizeForDisplayConfiguration:v26];
      BSRectWithSize();
      [settingsCopy setFrame:?];
    }

    if ((v18 | isMainDisplay))
    {
      if (v18)
      {
        v27 = v26;
      }

      else
      {
        v27 = mainConfiguration;
      }

      [settingsCopy setDisplayConfiguration:v27];
    }
  }

  displayConfiguration2 = [settingsCopy displayConfiguration];
  v29 = [displayConfiguration2 isEqual:displayConfiguration];

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = displayConfiguration;
  }

  [settingsCopy sb_setDisplayConfigurationForSceneManagers:v30];
  if (isChamoisOrFlexibleWindowing)
  {
    sb_displayIdentityForSceneManagers = [settingsCopy sb_displayIdentityForSceneManagers];
    isExternal = [sb_displayIdentityForSceneManagers isExternal];

    v33 = v99;
    if (isMainDisplay & 1 | ((isExternal & 1) == 0))
    {
      v34 = 0;
    }

    else
    {
      v34 = [v101 supportsChamoisSceneResizing] ^ 1;
    }
  }

  else
  {
    v34 = 0;
    v33 = v99;
  }

  [settingsCopy setScreenBoundsIgnoresSceneOrientation:v34];

  modalAlertPresentationCoordinator = [SBApp modalAlertPresentationCoordinator];
  [settingsCopy setCanShowAlerts:{objc_msgSend(modalAlertPresentationCoordinator, "canShowApplicationModalAlerts")}];

  v36 = +[SBCoverSheetPresentationManager sharedInstance];
  v37 = [v36 traitsParticipantForSceneHandle:self];

  if (v37)
  {
    goto LABEL_37;
  }

  v38 = [v102 traitsParticipantForSceneHandle:self];
  if (v38)
  {
    v37 = v38;
LABEL_37:
    delegate = [v37 delegate];
    v40 = SBFSafeProtocolCast();

    if (!v40)
    {
      [SBDeviceApplicationSceneHandle _modifyApplicationSceneSettings:fromRequestContext:entity:];
    }

    [v40 updateOrientationSceneSettingsForParticipant:settingsCopy];
    v41 = SBLogTraitsArbiter();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      interfaceOrientation = [settingsCopy interfaceOrientation];
      sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
      *buf = 134218242;
      v106 = interfaceOrientation;
      v107 = 2112;
      v108 = sceneIdentifier;
      _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "[DeviceSceneHandle] Did set interfaceOrientation[%ld] on scene with identifier[%@]", buf, 0x16u);
    }

    goto LABEL_42;
  }

  v37 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    sceneIdentifier2 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
    *buf = 138412290;
    v106 = sceneIdentifier2;
    _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "[DeviceSceneHandle] Participant not found for scene identifier: %@", buf, 0xCu);
  }

LABEL_42:

  [(SBDeviceApplicationSceneHandle *)self _populateSettingsWithDefaultStatusBarHeight:settingsCopy];
  layoutRole = [entityCopy layoutRole];
  if (layoutRole == 3)
  {
    v45 = 2;
  }

  else
  {
    v45 = 1;
  }

  [(SBDeviceApplicationSceneHandle *)self _modifySafeAreaInsetsOnApplicationSceneSettings:settingsCopy isFloating:layoutRole == 3];
  v46 = [(SBDeviceApplicationSceneHandle *)self displayEdgeInfoForLayoutEnvironment:v45];
  [v46 sb_applyDisplayEdgeInfoToSceneSettings:settingsCopy];
  v47 = [(SBDeviceApplicationSceneHandle *)self _sceneCornerRadiusConfigurationFromRequestContext:v33 forEntity:entityCopy];
  [settingsCopy setCornerRadiusConfiguration:v47];

  [settingsCopy setStatusBarParts:{-[SBDeviceApplicationSceneHandle statusBarParts](self, "statusBarParts")}];
  [settingsCopy setStatusBarAvoidanceFrame:{self->_statusBarAvoidanceFrame.origin.x, self->_statusBarAvoidanceFrame.origin.y, self->_statusBarAvoidanceFrame.size.width, self->_statusBarAvoidanceFrame.size.height}];
  windowManagementContext2 = [v102 windowManagementContext];
  ui_safeAreaSettings = [settingsCopy ui_safeAreaSettings];
  if (ui_safeAreaSettings)
  {
    _windowScene2 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
    [_windowScene2 _boundsForInterfaceOrientation:{objc_msgSend(_windowScene2, "_interfaceOrientation")}];
    layoutState = [v33 layoutState];
    [layoutState interfaceOrientation];

    _UIConvertRectFromOrientationToOrientation();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    [settingsCopy convertFrameInRect:?];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    if ([windowManagementContext2 isFlexibleWindowingEnabled])
    {
      activationSettings = [entityCopy activationSettings];
      v67 = [(SBDeviceApplicationSceneHandle *)self _safeAreaCornerInsetResolverForApplicationFrame:activationSettings screenBounds:v59 activationSettings:v61, v63, v65, v51, v53, v55, v57];

      safeAreaCornerInsetResolver = [ui_safeAreaSettings safeAreaCornerInsetResolver];
      v69 = [safeAreaCornerInsetResolver isEqual:v67];

      if ((v69 & 1) == 0)
      {
        [ui_safeAreaSettings setSafeAreaCornerInsetResolver:v67];
      }
    }

    preferredSafeAreaSettings = self->_preferredSafeAreaSettings;
    if (preferredSafeAreaSettings)
    {
      safeAreaEdgeInsetResolver = [(_UISceneSafeAreaSettings *)preferredSafeAreaSettings safeAreaEdgeInsetResolver];
    }

    else
    {
      activationSettings2 = [entityCopy activationSettings];
      safeAreaEdgeInsetResolver = [(SBDeviceApplicationSceneHandle *)self safeAreaEdgeInsetResolverForApplicationFrame:activationSettings2 screenBounds:v59 activationSettings:v61, v63, v65, v51, v53, v55, v57];
    }

    safeAreaEdgeInsetResolver2 = [ui_safeAreaSettings safeAreaEdgeInsetResolver];
    v74 = [safeAreaEdgeInsetResolver2 isEqual:safeAreaEdgeInsetResolver];

    if ((v74 & 1) == 0)
    {
      [ui_safeAreaSettings setSafeAreaEdgeInsetResolver:safeAreaEdgeInsetResolver];
    }
  }

  application2 = [(SBApplicationSceneHandle *)self application];
  info = [application2 info];
  supportedUserInterfaceStyle = [info supportedUserInterfaceStyle];

  if (!supportedUserInterfaceStyle)
  {
    v78 = SBApp;
    sb_displayIdentityForSceneManagers2 = [settingsCopy sb_displayIdentityForSceneManagers];
    v80 = [v78 userInterfaceStyleProviderForDisplay:sb_displayIdentityForSceneManagers2];
    supportedUserInterfaceStyle = [v80 currentStyle];
  }

  v81 = SBLogContinuitySession();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v82 = @"Unspecified";
    if (supportedUserInterfaceStyle == 1)
    {
      v82 = @"Light";
    }

    if (supportedUserInterfaceStyle == 2)
    {
      v83 = @"Dark";
    }

    else
    {
      v83 = v82;
    }

    displayIdentity3 = [settingsCopy displayIdentity];
    sb_displayIdentityForSceneManagers3 = [settingsCopy sb_displayIdentityForSceneManagers];
    [(SBDeviceApplicationSceneHandle *)self succinctDescription];
    v86 = entityCopy;
    v88 = v87 = v46;
    *buf = 138544130;
    v106 = v83;
    v33 = v99;
    v107 = 2114;
    v108 = displayIdentity3;
    v109 = 2114;
    v110 = sb_displayIdentityForSceneManagers3;
    v111 = 2114;
    v112 = v88;
    _os_log_impl(&dword_21ED4E000, v81, OS_LOG_TYPE_DEFAULT, "modifying scene setting userInterfaceStyle to %{public}@ displayIdentity: %{public}@ forSceneManagers: %{public}@ %{public}@ ", buf, 0x2Au);

    v46 = v87;
    entityCopy = v86;
  }

  [settingsCopy setUserInterfaceStyle:supportedUserInterfaceStyle];
  [settingsCopy setEnhancedWindowingEnabled:{-[SBDeviceApplicationSceneHandle _isEnhancedWindowingEffectivelyEnabled](self, "_isEnhancedWindowingEffectivelyEnabled")}];
  if ([(SBDeviceApplicationSceneHandle *)self shouldApplyAppProtectionSceneSettings])
  {
    application3 = [(SBApplicationSceneHandle *)self application];
    v90 = [SBApplicationAppProtectionAssistant assistantForApplication:application3];

    v91 = SBLogAppProtection();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      shouldShield = [v90 shouldShield];
      *buf = 67109120;
      LODWORD(v106) = shouldShield;
      _os_log_impl(&dword_21ED4E000, v91, OS_LOG_TYPE_DEFAULT, "modifying scene setting underAppProtection to %d", buf, 8u);
    }

    if ([v90 shouldShield])
    {
      transientLocalSettings = [settingsCopy transientLocalSettings];
      [transientLocalSettings setFlag:1 forSetting:*MEMORY[0x277D77528]];
    }
  }

  if ([settingsCopy conformsToProtocol:&unk_2835FD268])
  {
    _windowScene3 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
    homeScreenController = [_windowScene3 homeScreenController];

    currentHomeScreenIconStyleConfiguration = [homeScreenController currentHomeScreenIconStyleConfiguration];
    [settingsCopy setIconStyleConfiguration:currentHomeScreenIconStyleConfiguration];
  }
}

- (void)setOccluded:(BOOL)occluded
{
  if (self->_occludedByApplication != occluded)
  {
    self->_occludedByApplication = occluded;
    goto LABEL_5;
  }

  if (self->_applicationOcclusionRectsDirty)
  {
LABEL_5:
    [(SBDeviceApplicationSceneHandle *)self _updateApplicationOcclusionRects];
  }
}

- (void)_updateApplicationOcclusionRects
{
  v13[1] = *MEMORY[0x277D85DE8];
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = sceneIfExists;
  if (sceneIfExists)
  {
    if (self->_occludedByApplication)
    {
      v5 = MEMORY[0x277CCAE60];
      settings = [sceneIfExists settings];
      [settings frame];
      v7 = [v5 bs_valueWithCGRect:?];
      v13[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    }

    else
    {
      v8 = 0;
    }

    self->_applicationOcclusionRectsDirty = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__SBDeviceApplicationSceneHandle__updateApplicationOcclusionRects__block_invoke;
    v10[3] = &unk_2783A92D8;
    v11 = v4;
    v12 = v8;
    v9 = v8;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __66__SBDeviceApplicationSceneHandle__updateApplicationOcclusionRects__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _occlusionHostComponent];
  [v2 setApplicationOcclusionRects:*(a1 + 40)];
}

- (void)_updateSystemOcclusionRectsAndActiveAppearance
{
  v14[1] = *MEMORY[0x277D85DE8];
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = sceneIfExists;
  if (sceneIfExists)
  {
    if (self->_occludedBySystemUI)
    {
      v5 = MEMORY[0x277CCAE60];
      settings = [sceneIfExists settings];
      [settings frame];
      v7 = [v5 bs_valueWithCGRect:?];
      v14[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    }

    else
    {
      v8 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__SBDeviceApplicationSceneHandle__updateSystemOcclusionRectsAndActiveAppearance__block_invoke;
    block[3] = &unk_2783A8ED8;
    v11 = v4;
    v12 = v8;
    selfCopy = self;
    v9 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __80__SBDeviceApplicationSceneHandle__updateSystemOcclusionRectsAndActiveAppearance__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _occlusionHostComponent];
  [v2 setSystemOcclusionRects:*(a1 + 40)];

  v3 = *(a1 + 48);

  return [v3 _reevaluateActiveAppearanceFromAssertions];
}

- (void)_modifySafeAreaInsetsOnApplicationSceneSettings:(id)settings isFloating:(BOOL)floating
{
  settingsCopy = settings;
  application = [(SBApplicationSceneHandle *)self application];
  if ([application isClassic])
  {
    v8 = [MEMORY[0x277D77750] sb_displayEdgeInfoForApplication:application];
  }

  else
  {
    if (floating)
    {
      [MEMORY[0x277D77750] sb_floatingApplicationDisplayEdgeInfo];
    }

    else
    {
      [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    }
    v8 = ;
  }

  v9 = v8;
  [v8 sb_applyDisplayEdgeInfoToSceneSettings:settingsCopy];
}

void __58__SBDeviceApplicationSceneHandle__defaultStatusBarHeights__block_invoke()
{
  v0 = _defaultStatusBarHeights_sEnumerator;
  _defaultStatusBarHeights_sEnumerator = &unk_28336E5F8;
}

- (id)_sceneCornerRadiusConfigurationFromRequestContext:(id)context forEntity:(id)entity
{
  contextCopy = context;
  entityCopy = entity;
  application = [(SBApplicationSceneHandle *)self application];
  v9 = +[SBPlatformController sharedInstance];
  displayIdentity = [contextCopy displayIdentity];
  windowSceneManager = [SBApp windowSceneManager];
  v12 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  switcherController = [v12 switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  if (([v9 isRoundCornerPhone] & 1) == 0 && (objc_msgSend(v9, "isRoundCornerPad") & 1) == 0)
  {
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    if (![windowManagementContext isChamoisOrFlexibleWindowing])
    {
      goto LABEL_20;
    }
  }

  v58 = windowManagementContext;
  v55 = v12;
  v56 = v9;
  v19 = entityCopy;
  contentViewController = [switcherController contentViewController];
  v21 = [contentViewController liveOverlayForSceneHandle:self];

  v57 = contextCopy;
  v22 = [contextCopy applicationSceneEntityForLayoutRole:1];

  isMaximized = [v21 isMaximized];
  isClassic = [application isClassic];
  uIScreen = [displayIdentity UIScreen];
  traitCollection = [uIScreen traitCollection];
  [traitCollection displayCornerRadius];
  v28 = v27;

  [v21 cornerRadii];
  v30 = v29;
  v17 = v31;
  v16 = v32;
  v15 = v33;
  if (isClassic)
  {
    -[SBApplication _screenTypeForClassicMode:](application, [application _classicMode]);
    SBHDisplayCornerRadiusForScreenType();
    v35 = v34;
    v36 = SBHScreenTypeForCurrentDevice();
    [SBApplication _unobscuredScreenTypeForScreenType:v36];
    SBHDisplayCornerRadiusForScreenType();
    v18 = v37;
    if ([v58 isChamoisOrFlexibleWindowing])
    {
      if (isMaximized)
      {
        v15 = v18;
        v16 = v18;
        v17 = v18;
      }

      else
      {
        v18 = v30;
      }
    }

    else
    {
      if ([application classicAppFullScreen])
      {
        v15 = v18;
      }

      else
      {
        v15 = v35;
      }

      v16 = v15;
      v17 = v15;
      v18 = v15;
    }

    goto LABEL_17;
  }

  if ([v58 isChamoisOrFlexibleWindowing])
  {
    if (isMaximized)
    {
      v15 = v28;
      v16 = v28;
      v17 = v28;
      v18 = v28;
    }

    else
    {
      v18 = v30;
    }

LABEL_17:
    entityCopy = v19;
    contextCopy = v57;
    goto LABEL_18;
  }

  entityCopy = v19;
  contextCopy = v57;
  if ([v58 isMedusaEnabled])
  {
    v44 = [v57 applicationSceneEntityForLayoutRole:?];

    v45 = [v57 applicationSceneEntityForLayoutRole:3];

    v9 = v56;
    if (v45 == entityCopy || (v15 = 0.0, v16 = 0.0, v17 = 0.0, v18 = 0.0, v44))
    {
      +[SBMedusaDomain rootSettings];
      v46 = v54 = v44;
      v47 = [v57 applicationSceneEntityForLayoutRole:2];

      [v46 cornerRadiusForFloatingApps];
      v49 = v48;
      [v46 cornerRadiusForInnerCorners];
      v51 = 0.0;
      if (v45 == entityCopy)
      {
        v51 = v49;
      }

      v52 = v47 == entityCopy;
      contextCopy = v57;
      if (v52)
      {
        v53 = v28;
      }

      else
      {
        v53 = v51;
      }

      if (v52)
      {
        v51 = v50;
      }

      if (!v54)
      {
        v50 = v28;
      }

      if (v22 == entityCopy)
      {
        v15 = v50;
      }

      else
      {
        v15 = v53;
      }

      if (v22 == entityCopy)
      {
        v17 = v28;
      }

      else
      {
        v17 = v51;
      }

      v16 = v15;
      v18 = v17;
    }

    goto LABEL_19;
  }

  if (v22 == v19)
  {
    v15 = v28;
  }

  else
  {
    v15 = 0.0;
  }

  if (v22 == v19)
  {
    v16 = v28;
  }

  else
  {
    v16 = 0.0;
  }

  if (v22 == v19)
  {
    v17 = v28;
  }

  else
  {
    v17 = 0.0;
  }

  if (v22 == v19)
  {
    v18 = v28;
  }

  else
  {
    v18 = 0.0;
  }

LABEL_18:
  v9 = v56;
LABEL_19:

  v12 = v55;
  windowManagementContext = v58;
LABEL_20:
  userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  if (userInterfaceLayoutDirection == 1)
  {
    v39 = v18;
  }

  else
  {
    v39 = v15;
  }

  if (userInterfaceLayoutDirection == 1)
  {
    v40 = v17;
  }

  else
  {
    v40 = v16;
  }

  if (userInterfaceLayoutDirection == 1)
  {
    v17 = v16;
    v41 = v15;
  }

  else
  {
    v41 = v18;
  }

  v42 = [objc_alloc(MEMORY[0x277CF0BE8]) initWithTopLeft:v41 bottomLeft:v17 bottomRight:v40 topRight:v39];

  return v42;
}

- (void)_modifyApplicationSceneClientSettings:(id)settings fromRequestContext:(id)context entity:(id)entity initialSceneSettings:(id)sceneSettings
{
  settingsCopy = settings;
  v22.receiver = self;
  v22.super_class = SBDeviceApplicationSceneHandle;
  sceneSettingsCopy = sceneSettings;
  entityCopy = entity;
  [(SBApplicationSceneHandle *)&v22 _modifyApplicationSceneClientSettings:settingsCopy fromRequestContext:context entity:entityCopy initialSceneSettings:sceneSettingsCopy];
  application = [(SBApplicationSceneHandle *)self application];
  interfaceOrientation = [sceneSettingsCopy interfaceOrientation];
  [settingsCopy setInterfaceOrientation:interfaceOrientation];
  interfaceOrientationMode = [sceneSettingsCopy interfaceOrientationMode];

  if (interfaceOrientationMode == 1)
  {
    [settingsCopy setSupportedInterfaceOrientations:{-[SBDeviceApplicationSceneHandle _mainSceneSupportedInterfaceOrientations](self, "_mainSceneSupportedInterfaceOrientations")}];
  }

  [settingsCopy setBackgroundStyle:{-[SBDeviceApplicationSceneHandle backgroundStyle](self, "backgroundStyle")}];
  [settingsCopy setProximityDetectionModes:1];
  activationSettings = [entityCopy activationSettings];
  [settingsCopy setStatusBarModernStyle:{-[SBDeviceApplicationSceneHandle _statusBarStyleWithActivationSettings:](self, "_statusBarStyleWithActivationSettings:", activationSettings)}];

  activationSettings2 = [entityCopy activationSettings];
  [settingsCopy setStatusBarHidden:{-[SBDeviceApplicationSceneHandle isStatusBarHiddenForActivationSettings:withOrientation:](self, "isStatusBarHiddenForActivationSettings:withOrientation:", activationSettings2, interfaceOrientation)}];

  [(SBDeviceApplicationSceneHandle *)self statusBarAlpha];
  [settingsCopy setStatusBarAlpha:?];
  [settingsCopy setDefaultStatusBarStyle:{_SBStatusBarLegacyStyleFromStyle(-[SBDeviceApplicationSceneHandle defaultStatusBarStyle](self, "defaultStatusBarStyle"))}];
  [settingsCopy setDefaultStatusBarHidden:{-[SBDeviceApplicationSceneHandle defaultStatusBarHiddenForOrientation:](self, "defaultStatusBarHiddenForOrientation:", interfaceOrientation)}];
  v21 = 0.0;
  sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
  v19 = [application _defaultPNGNameFromSuspensionSettingsWithExpiration:&v21 sceneID:sceneIdentifier];

  [settingsCopy setDefaultPNGName:v19];
  [settingsCopy setDefaultPNGExpirationTime:v21];
  activationSettings3 = [entityCopy activationSettings];

  [settingsCopy setCompatibilityMode:{-[SBDeviceApplicationSceneHandle _initialMainSceneCompabilityMode:](self, "_initialMainSceneCompabilityMode:", activationSettings3)}];
  [settingsCopy setReachabilitySupported:1];
  [settingsCopy setWhitePointAdaptivityStyle:{-[SBDeviceApplicationSceneHandle whitePointAdaptivityStyle](self, "whitePointAdaptivityStyle")}];
}

- (void)_modifyApplicationTransitionContext:(id)context fromRequestContext:(id)requestContext entity:(id)entity
{
  requestContextCopy = requestContext;
  entityCopy = entity;
  v15.receiver = self;
  v15.super_class = SBDeviceApplicationSceneHandle;
  [(SBApplicationSceneHandle *)&v15 _modifyApplicationTransitionContext:context fromRequestContext:requestContextCopy entity:entityCopy];
  request = [requestContextCopy request];
  source = [request source];

  previousEntities = [requestContextCopy previousEntities];
  if ([previousEntities containsObject:entityCopy])
  {
LABEL_6:

    goto LABEL_7;
  }

  entities = [requestContextCopy entities];
  v14 = [entities containsObject:entityCopy];

  if (v14)
  {
    if (source != 11)
    {
      [(SBDeviceApplicationSceneHandle *)self setLastActivationSource:source];
    }

    previousEntities = [entityCopy objectForActivationSetting:46];
    [(SBDeviceApplicationSceneHandle *)self setLastActivationIconLeafIdentifier:previousEntities];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_noteDidMoveFromSceneManager:(id)manager
{
  v6.receiver = self;
  v6.super_class = SBDeviceApplicationSceneHandle;
  [(SBApplicationSceneHandle *)&v6 _noteDidMoveFromSceneManager:manager];
  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  assistantController = [_windowScene assistantController];
  [assistantController removeObserver:self];

  [(SBDeviceApplicationSceneHandle *)self _didUpdateDisplayIdentity];
  [(SBDeviceApplicationSceneHandle *)self _updateCapturingContentForAdditionalRenderingDestination];
}

- (void)_noteReplacedWithSceneHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v9 _noteReplacedWithSceneHandle:handleCopy];
  v5 = objc_opt_class();
  v6 = handleCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 _updateCapturingContentForAdditionalRenderingDestination];
}

- (void)applicationSceneHandle:(id)handle appendToSceneSettings:(id)settings fromRequestContext:(id)context entity:(id)entity
{
  settingsCopy = settings;
  displayIdentity = [context displayIdentity];
  [(SBDeviceApplicationSceneHandle *)self _updateIsCapturingContentForAdditionalRenderingDestinationOfMutableSceneSettings:settingsCopy withDisplayIdentity:displayIdentity];
}

- (void)_updateSceneHostingInfoForSnapshottingWithAssertion:(id)assertion forceUpdate:(BOOL)update
{
  assertionCopy = assertion;
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if ([sceneIfExists isValid])
  {
    contextId = [assertionCopy contextId];
    renderId = [assertionCopy renderId];
    uiSettings = [sceneIfExists uiSettings];
    v11 = uiSettings;
    if (update || [uiSettings hostContextIdentifierForSnapshotting] == contextId && objc_msgSend(v11, "scenePresenterRenderIdentifierForSnapshotting") == renderId)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __98__SBDeviceApplicationSceneHandle__updateSceneHostingInfoForSnapshottingWithAssertion_forceUpdate___block_invoke;
      v12[3] = &__block_descriptor_44_e43_v16__0__UIMutableApplicationSceneSettings_8l;
      v13 = contextId;
      v12[4] = renderId;
      [sceneIfExists updateUISettingsWithBlock:v12];
    }
  }
}

void __98__SBDeviceApplicationSceneHandle__updateSceneHostingInfoForSnapshottingWithAssertion_forceUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setHostContextIdentifierForSnapshotting:v3];
  [v4 setScenePresenterRenderIdentifierForSnapshotting:*(a1 + 32)];
}

- (id)_sceneHostingInfoForSnapshottingAssertionWithView:(id)view
{
  viewCopy = view;
  window = [viewCopy window];
  v6 = window;
  v7 = 0;
  if (viewCopy && window)
  {
    _contextId = [window _contextId];
    layer = [viewCopy layer];
    RenderId = CALayerGetRenderId();

    v11 = MEMORY[0x277CCACA8];
    sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
    renderId = [v11 stringWithFormat:@"%@-%lu-%lu", sceneIdentifier, _contextId, RenderId];

    objc_initWeak(&location, self);
    v14 = [_SBDeviceApplicationSceneHandleSnapshottingAssertion alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__SBDeviceApplicationSceneHandle__sceneHostingInfoForSnapshottingAssertionWithView___block_invoke;
    v16[3] = &unk_2783B90A0;
    objc_copyWeak(&v17, &location);
    v7 = [(_SBDeviceApplicationSceneHandleSnapshottingAssertion *)v14 initWithIdentifier:renderId forReason:@"SnapshottingMetadata" contextId:_contextId renderId:RenderId invalidationBlock:v16];
    [(SBDeviceApplicationSceneHandle *)self _addSnapshottingInfoAssertion:v7];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __84__SBDeviceApplicationSceneHandle__sceneHostingInfoForSnapshottingAssertionWithView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeSnapshottingInfoAssertion:v3];
}

- (void)_addSnapshottingInfoAssertion:(id)assertion
{
  assertionCopy = assertion;
  snapshottingInfoAssertions = self->_snapshottingInfoAssertions;
  obj = assertionCopy;
  if (!snapshottingInfoAssertions)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = self->_snapshottingInfoAssertions;
    self->_snapshottingInfoAssertions = array;

    assertionCopy = obj;
    snapshottingInfoAssertions = self->_snapshottingInfoAssertions;
  }

  [(NSMutableArray *)snapshottingInfoAssertions addObject:assertionCopy];
  objc_storeWeak(&self->_currentSnapshottingInfoAssertion, obj);
  [(SBDeviceApplicationSceneHandle *)self _updateSceneHostingInfoForSnapshottingWithAssertion:obj forceUpdate:1];
}

- (void)_removeSnapshottingInfoAssertion:(id)assertion
{
  snapshottingInfoAssertions = self->_snapshottingInfoAssertions;
  assertionCopy = assertion;
  [(NSMutableArray *)snapshottingInfoAssertions removeObject:assertionCopy];
  WeakRetained = objc_loadWeakRetained(&self->_currentSnapshottingInfoAssertion);

  if (WeakRetained == assertionCopy)
  {
    lastObject = [(NSMutableArray *)self->_snapshottingInfoAssertions lastObject];
    objc_storeWeak(&self->_currentSnapshottingInfoAssertion, lastObject);
    [(SBDeviceApplicationSceneHandle *)self _updateSceneHostingInfoForSnapshottingWithAssertion:lastObject forceUpdate:0];
  }
}

- (id)newSceneViewWithReferenceSize:(CGSize)size contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation hostRequester:(id)requester
{
  height = size.height;
  width = size.width;
  requesterCopy = requester;
  height = [[SBDeviceApplicationSceneView alloc] initWithSceneHandle:self referenceSize:orientation contentOrientation:containerOrientation containerOrientation:requesterCopy hostRequester:width, height];

  return height;
}

- (id)newScenePlaceholderContentContextWithActivationSettings:(id)settings
{
  settingsCopy = settings;
  v4 = [[SBDeviceApplicationScenePlaceholderContentContext alloc] initWithActivationSettings:settingsCopy];

  return v4;
}

- (id)newSceneViewController
{
  v3 = [SBDeviceApplicationSceneViewController alloc];

  return [(SBDeviceApplicationSceneViewController *)v3 initWithSceneHandle:self];
}

- (void)applicationProcessDidExit:(id)exit withContext:(id)context
{
  contextCopy = context;
  v4 = contextCopy;
  BSDispatchMain();
}

void __72__SBDeviceApplicationSceneHandle_applicationProcessDidExit_withContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) terminationReason];
  if (([*(a1 + 32) exitReason] & 1) == 0 && v2 != 1)
  {
    v3 = [*(a1 + 40) _sceneDataStoreCreatingIfNecessary:0];
    [v3 removeObjectForKey:@"statusBarStyle"];
    [v3 removeObjectForKey:@"statusBarHidden"];
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v12.receiver = self;
  v12.super_class = SBDeviceApplicationSceneHandle;
  prefixCopy = prefix;
  v5 = [(SBDeviceApplicationSceneHandle *)&v12 descriptionBuilderWithMultilinePrefix:prefixCopy];
  [v5 setActiveMultilinePrefix:prefixCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SBDeviceApplicationSceneHandle_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

uint64_t __72__SBDeviceApplicationSceneHandle_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 256) hasBreadcrumb])
  {
    v2 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 256) withName:@"breadcrumbProvider"];
  }

  v3 = [*(a1 + 40) appendBool:*(*(a1 + 32) + 224) withName:@"occludedByApplication" ifEqualTo:1];
  v4 = [*(a1 + 40) appendBool:*(*(a1 + 32) + 226) withName:@"occludedBySystem" ifEqualTo:1];
  v5 = *(a1 + 40);
  [*(a1 + 32) activityMode];
  v6 = NSStringFromFBSSceneActivityMode();
  [v5 appendString:v6 withName:@"activityMode"];

  v7 = *(a1 + 40);
  v8 = NSStringFromFBSSceneJetsamMode();
  [v7 appendString:v8 withName:@"jetsamMode"];

  v9 = [*(a1 + 40) appendInt:*(*(a1 + 32) + 370) withName:@"jetsamResourceElevation"];
  v10 = *(a1 + 40);
  [*(a1 + 32) jetsamPriority];
  v11 = NSStringFromFBSSceneJetsamPriority();
  [v10 appendString:v11 withName:@"jetsamPriority"];

  v12 = *(a1 + 40);
  v13 = NSStringFromUIUserInterfaceActiveAppearance(*(*(a1 + 32) + 360));
  [v12 appendString:v13 withName:@"activeAppearance"];

  v14 = *(a1 + 40);
  v15 = [*(*(a1 + 32) + 336) allObjects];
  [v14 appendArraySection:v15 withName:@"activityModeAssertions" skipIfEmpty:1];

  v16 = *(a1 + 40);
  v17 = [*(*(a1 + 32) + 352) allObjects];
  [v16 appendArraySection:v17 withName:@"resourceElevationAssertions" skipIfEmpty:1];

  v18 = *(a1 + 40);
  v19 = *(*(a1 + 32) + 328);

  return [v18 appendArraySection:v19 withName:@"activeAppearanceAssertions" skipIfEmpty:1];
}

- (id)_sceneDataStoreCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  application = [(SBApplicationSceneHandle *)self application];
  _dataStore = [application _dataStore];
  sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
  v8 = [_dataStore sceneStoreForIdentifier:sceneIdentifier creatingIfNecessary:necessaryCopy];

  return v8;
}

- (int64_t)_statusBarStyleWithActivationSettings:(id)settings
{
  v4 = [settings objectForActivationSetting:5];
  scheme = [v4 scheme];

  if (!scheme || (v6 = [(SBDeviceApplicationSceneHandle *)self _defaultStatusBarStyleFromSceneDataStore], v6 == -1))
  {
    statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)self statusBarStateProvider];
    statusBarStyle = [statusBarStateProvider statusBarStyle];
  }

  else
  {
    statusBarStyle = _SBStatusBarStyleFromLegacyStyle(v6);
  }

  return statusBarStyle;
}

- (void)_updateIdleTimerForReason:(id)reason
{
  reasonCopy = reason;
  _generateIdleTimerBehavior = [(SBDeviceApplicationSceneHandle *)self _generateIdleTimerBehavior];
  _idleTimerCoordinator = [(SBDeviceApplicationSceneHandle *)self _idleTimerCoordinator];
  v6 = [_idleTimerCoordinator idleTimerProvider:self didProposeBehavior:_generateIdleTimerBehavior forReason:reasonCopy];
}

- (void)_updateIsCapturingContentForAdditionalRenderingDestinationOfMutableSceneSettings:(id)settings withDisplayIdentity:(id)identity
{
  settingsCopy = settings;
  identityCopy = identity;
  isCapturingContentForAdditionalRenderingDestination = [settingsCopy isCapturingContentForAdditionalRenderingDestination];
  if ([identityCopy isContinuityDisplay])
  {
    windowSceneManager = [SBApp windowSceneManager];
    v9 = [windowSceneManager windowSceneForDisplayIdentity:identityCopy];

    _FBSScene = [v9 _FBSScene];
    settings = [_FBSScene settings];
    v12 = objc_opt_class();
    v13 = settings;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    isCapturingContentForAdditionalRenderingDestination2 = [v15 isCapturingContentForAdditionalRenderingDestination];
    [settingsCopy setIsCapturingContentForAdditionalRenderingDestination:isCapturingContentForAdditionalRenderingDestination2];
  }

  else
  {
    [settingsCopy setIsCapturingContentForAdditionalRenderingDestination:0];
  }

  if (isCapturingContentForAdditionalRenderingDestination != [settingsCopy isCapturingContentForAdditionalRenderingDestination])
  {
    isCapturingContentForAdditionalRenderingDestination3 = [settingsCopy isCapturingContentForAdditionalRenderingDestination];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = defaultCenter;
    if (isCapturingContentForAdditionalRenderingDestination3)
    {
      [defaultCenter addObserver:self selector:sel__updateCapturingContentForAdditionalRenderingDestination name:*MEMORY[0x277D76E90] object:0];
    }

    else
    {
      [defaultCenter removeObserver:self name:*MEMORY[0x277D76E90] object:0];
    }
  }
}

void __90__SBDeviceApplicationSceneHandle__updateCapturingContentForAdditionalRenderingDestination__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v8 = v3;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v4 _updateIsCapturingContentForAdditionalRenderingDestinationOfMutableSceneSettings:v7 withDisplayIdentity:*(a1 + 40)];
}

- (void)_reevaluateActivityModeFromAssertions
{
  _computeActivityMode = [(SBDeviceApplicationSceneHandle *)self _computeActivityMode];
  if (self->_computedActivityMode != _computeActivityMode)
  {
    self->_computedActivityMode = _computeActivityMode;

    [(SBDeviceApplicationSceneHandle *)self _updateActivityMode];
  }
}

- (char)_computeActivityMode
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSHashTable *)self->_activityModeAssertions count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allObjects = [(NSHashTable *)self->_activityModeAssertions allObjects];
    v4 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      v7 = -50;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(allObjects);
          }

          activityMode = [*(*(&v11 + 1) + 8 * i) activityMode];
          if (v7 <= activityMode)
          {
            v7 = activityMode;
          }
        }

        v5 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      LOBYTE(v7) = -50;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_updateActivityMode
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = sceneIfExists;
  if (sceneIfExists)
  {
    settings = [sceneIfExists settings];
    activityMode = [settings activityMode];
    computedActivityMode = self->_computedActivityMode;

    if (computedActivityMode != activityMode)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __53__SBDeviceApplicationSceneHandle__updateActivityMode__block_invoke;
      v8[3] = &unk_2783ACB10;
      v8[4] = self;
      [v4 updateSettingsWithBlock:v8];
    }
  }
}

- (void)_reevaluateJetsamModeFromAssertions
{
  _computeJetsamMode = [(SBDeviceApplicationSceneHandle *)self _computeJetsamMode];
  if (self->_computedJetsamMode != _computeJetsamMode)
  {
    self->_computedJetsamMode = _computeJetsamMode;

    [(SBDeviceApplicationSceneHandle *)self _updateJetsamPriority];
  }
}

- (char)_computeJetsamMode
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSHashTable *)self->_jetsamModeAssertions count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allObjects = [(NSHashTable *)self->_jetsamModeAssertions allObjects];
    v4 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      v7 = -128;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(allObjects);
          }

          jetsamMode = [*(*(&v11 + 1) + 8 * i) jetsamMode];
          if (v7 <= jetsamMode)
          {
            v7 = jetsamMode;
          }
        }

        v5 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      LOBYTE(v7) = 0x80;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_reevaluateResourceElevationFromAssertions
{
  _computeResourceElevation = [(SBDeviceApplicationSceneHandle *)self _computeResourceElevation];
  if (self->_computedResourceElevation != _computeResourceElevation)
  {
    self->_computedResourceElevation = _computeResourceElevation;

    [(SBDeviceApplicationSceneHandle *)self _updateJetsamPriority];
  }
}

- (char)_computeResourceElevation
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(NSHashTable *)self->_resourceElevationAssertions count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allObjects = [(NSHashTable *)self->_resourceElevationAssertions allObjects];
    v4 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(allObjects);
          }

          resourceElevation = [*(*(&v11 + 1) + 8 * i) resourceElevation];
          if (v6 <= resourceElevation)
          {
            v6 = resourceElevation;
          }
        }

        v5 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 9;
  }

  return v6;
}

- (void)_updateJetsamPriority
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (sceneIfExists)
  {
    v3 = FBSSceneJetsamPriorityCreate();
    settings = [sceneIfExists settings];
    jetsamPriority = [settings jetsamPriority];

    if (jetsamPriority != v3)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __55__SBDeviceApplicationSceneHandle__updateJetsamPriority__block_invoke;
      v6[3] = &__block_descriptor_34_e33_v16__0__FBSMutableSceneSettings_8l;
      v7 = v3;
      [sceneIfExists updateSettingsWithBlock:v6];
    }
  }
}

- (void)_reevaluateActiveAppearanceFromAssertions
{
  _computeActiveAppearance = [(SBDeviceApplicationSceneHandle *)self _computeActiveAppearance];
  if (_computeActiveAppearance != self->_computedActiveAppearance)
  {
    self->_computedActiveAppearance = _computeActiveAppearance;

    [(SBDeviceApplicationSceneHandle *)self _updateInterfaceActiveAppearance];
  }
}

- (int64_t)_computeActiveAppearance
{
  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  assistantController = [_windowScene assistantController];
  isOccludingSystemContent = [assistantController isOccludingSystemContent];

  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  settings = [sceneIfExists settings];
  isForeground = [settings isForeground];

  result = 0;
  if (isForeground && (isOccludingSystemContent & 1) == 0)
  {
    if ([(NSMutableArray *)self->_activeAppearanceAssertions count])
    {
      lastObject = [(NSMutableArray *)self->_activeAppearanceAssertions lastObject];
      activeAppearance = [lastObject activeAppearance];

      return activeAppearance;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (void)_updateInterfaceActiveAppearance
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  renderingEnvironment = [sceneIfExists renderingEnvironment];
  v5 = renderingEnvironment;
  if (sceneIfExists && renderingEnvironment)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__SBDeviceApplicationSceneHandle__updateInterfaceActiveAppearance__block_invoke;
    v6[3] = &unk_2783B8EA8;
    v7 = renderingEnvironment;
    selfCopy = self;
    [sceneIfExists performUpdate:v6];
  }
}

void __66__SBDeviceApplicationSceneHandle__updateInterfaceActiveAppearance__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 360);
  v5 = a3;
  [v3 setActiveAppearance:v4];
  v6 = [MEMORY[0x277CF0B70] settingsWithDuration:0.25];
  [v5 setAnimationSettings:v6];
}

- (id)_safeAreaCornerInsetResolverForApplicationFrame:(CGRect)frame screenBounds:(CGRect)bounds activationSettings:(id)settings
{
  v23 = 0u;
  v24 = 0u;
  [(SBDeviceApplicationSceneHandle *)self windowControlsLayoutForApplicationFrame:settings screenBounds:frame.origin.x activationSettings:frame.origin.y, frame.size.width, frame.size.height, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if ([(SBDeviceApplicationSceneHandle *)self _supportsSolariumSafeAreas]&& v23 == 2)
  {
    preferredSafeAreaSettings = self->_preferredSafeAreaSettings;
    if (preferredSafeAreaSettings)
    {
      safeAreaCornerInsetResolver = [(_UISceneSafeAreaSettings *)preferredSafeAreaSettings safeAreaCornerInsetResolver];
    }

    else
    {
      v8 = MEMORY[0x277D76620];
      userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      userInterfaceLayoutDirection2 = [*v8 userInterfaceLayoutDirection];
      v11 = objc_alloc(MEMORY[0x277D76200]);
      v12 = *MEMORY[0x277CBF3A8];
      if (userInterfaceLayoutDirection == 1)
      {
        v13 = *MEMORY[0x277CBF3A8];
      }

      else
      {
        v13 = *&v24 + 45.0;
      }

      if (userInterfaceLayoutDirection == 1)
      {
        v14 = *(MEMORY[0x277CBF3A8] + 8);
      }

      else
      {
        v14 = *(&v24 + 1) + 32.0;
      }

      if (userInterfaceLayoutDirection2 == 1)
      {
        v15 = *&v24 + 45.0;
      }

      else
      {
        v15 = *MEMORY[0x277CBF3A8];
      }

      *v18 = v13;
      *&v18[1] = v14;
      if (userInterfaceLayoutDirection2 == 1)
      {
        v16 = *(&v24 + 1) + 32.0;
      }

      else
      {
        v16 = *(&v12 + 1);
      }

      v19 = v12;
      v20 = v12;
      v21 = v15;
      v22 = v16;
      safeAreaCornerInsetResolver = [v11 initWithSafeAreaCornerInsets:v18];
    }
  }

  else
  {
    safeAreaCornerInsetResolver = objc_alloc_init(MEMORY[0x277D76200]);
  }

  return safeAreaCornerInsetResolver;
}

- (BOOL)_supportsWindowControls
{
  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  switcherController = [_windowScene switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  if (_UISolariumEnabled())
  {
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];
  }

  else
  {
    isFlexibleWindowingEnabled = 0;
  }

  return isFlexibleWindowingEnabled;
}

- (SBIdleTimerCoordinating)_idleTimerCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);

  return WeakRetained;
}

- (BOOL)_classicAppPhoneOnPadPrefersLandscape
{
  application = [(SBApplicationSceneHandle *)self application];
  _classicAppScaledPhoneOnPad = [application _classicAppScaledPhoneOnPad];

  if (!_classicAppScaledPhoneOnPad)
  {
    return 0;
  }

  v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v6 = [v5 safeObjectForKey:@"classicPhoneAppPrefersLandscape" ofType:objc_opt_class()];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)_setClassicAppPhoneOnPadPrefersLandscape:(BOOL)landscape
{
  landscapeCopy = landscape;
  application = [(SBApplicationSceneHandle *)self application];
  _classicAppScaledPhoneOnPad = [application _classicAppScaledPhoneOnPad];

  if (_classicAppScaledPhoneOnPad)
  {
    v8 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:1];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:landscapeCopy];
    [v8 setObject:v7 forKey:@"classicPhoneAppPrefersLandscape"];
  }
}

- (BOOL)_classicAppPhoneOnPadSupportsOldStyleMixedOrientation
{
  application = [(SBApplicationSceneHandle *)self application];
  if ([application _classicAppScaledPhoneOnPad])
  {
    _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
    switcherController = [_windowScene switcherController];
    windowManagementContext = [switcherController windowManagementContext];
    v7 = [windowManagementContext isChamoisOrFlexibleWindowing] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_updateDisableMultitaskingWhileForegroundAssertionIfNeeded
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  uiClientSettings = [sceneIfExists uiClientSettings];

  if (objc_opt_respondsToSelector())
  {
    sceneIfExists2 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    uiSettings = [sceneIfExists2 uiSettings];

    if (([uiClientSettings disablesMultitaskingWhileForeground] & 1) != 0 || (-[SBApplicationSceneHandle application](self, "application"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.QRCode"), v7, v6, v8))
    {
      if ([uiSettings isForeground])
      {
        deactivationReasons = [uiSettings deactivationReasons];
        isForeground = [uiSettings isForeground];
        if (!deactivationReasons)
        {
          if (!self->_disableMultitaskingAssertion)
          {
            v11 = +[SBSceneManagerCoordinator sharedInstance];
            sceneHandleDisableMultitaskingAssertionManager = [v11 sceneHandleDisableMultitaskingAssertionManager];
            v13 = [sceneHandleDisableMultitaskingAssertionManager acquireDisableMultitaskingAssertionForSceneHandle:self];
            disableMultitaskingAssertion = self->_disableMultitaskingAssertion;
            self->_disableMultitaskingAssertion = v13;

LABEL_11:
          }

LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        isForeground = [uiSettings isForeground];
      }

      if (isForeground)
      {
        goto LABEL_12;
      }
    }

    [(BSInvalidatable *)self->_disableMultitaskingAssertion invalidate];
    v11 = self->_disableMultitaskingAssertion;
    self->_disableMultitaskingAssertion = 0;
    goto LABEL_11;
  }

LABEL_13:
}

- (int64_t)_preferredSizingPolicyForContentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation
{
  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  switcherController = [_windowScene switcherController];

  windowManagementContext = [switcherController windowManagementContext];
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  settings = [sceneIfExists settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  application = [(SBApplicationSceneHandle *)self application];
  v14 = [application preferredSizingPolicyForSwitcherWindowManagementContext:windowManagementContext displayIdentity:sb_displayIdentityForSceneManagers contentOrientation:orientation containerOrientation:containerOrientation];

  return v14;
}

- (unint64_t)_supportedSizingPoliciesForContentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation
{
  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  switcherController = [_windowScene switcherController];

  windowManagementContext = [switcherController windowManagementContext];
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  settings = [sceneIfExists settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  application = [(SBApplicationSceneHandle *)self application];
  v14 = [application supportedSizingPoliciesForSwitcherWindowManagementContext:windowManagementContext displayIdentity:sb_displayIdentityForSceneManagers contentOrientation:orientation containerOrientation:containerOrientation];

  return v14;
}

- (BOOL)_supportsMultiWindowLayouts
{
  _windowScene = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  switcherController = [_windowScene switcherController];
  windowManagementContext = [switcherController windowManagementContext];

  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  settings = [sceneIfExists settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  application = [(SBApplicationSceneHandle *)self application];
  LOBYTE(sceneIfExists) = [application supportsMultiWindowLayoutsForSwitcherWindowManagementContext:windowManagementContext displayIdentity:sb_displayIdentityForSceneManagers];

  return sceneIfExists;
}

- (BOOL)_supportsMixedOrientationOnWindowScene:(id)scene
{
  switcherController = [scene switcherController];
  windowManagementContext = [switcherController windowManagementContext];

  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  settings = [sceneIfExists settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

  application = [(SBApplicationSceneHandle *)self application];
  LOBYTE(sceneIfExists) = [application supportsMixedOrientationForSwitcherWindowManagementContext:windowManagementContext displayIdentity:sb_displayIdentityForSceneManagers];

  return sceneIfExists;
}

- (void)_setInterfaceOrientationFromUserResizing:(int64_t)resizing
{
  if (self->_interfaceOrientationFromUserResizeIfAny != resizing)
  {
    self->_interfaceOrientationFromUserResizeIfAny = resizing;
    if (resizing != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:resizing != 0];
      v4 = [MEMORY[0x277CCABB0] numberWithInteger:resizing];
      [v5 setObject:v4 forKey:@"interfaceOrientationFromUserResizing"];
    }
  }
}

- (void)_resetSceneOrientationRequestState
{
  [(SBDeviceApplicationSceneHandle *)self _setSettingUpSceneOrientationRequest:0];
  [(SBDeviceApplicationSceneHandle *)self _setInitialDeviceOrientationFromSceneOrientationRequestSetup:0];

  [(SBDeviceApplicationSceneHandle *)self _setSupportedInterfaceOrientationsFromSceneOrientationRequestSetup:0];
}

- (void)_setSettingUpSceneOrientationRequest:(BOOL)request
{
  requestCopy = request;
  v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:?];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:requestCopy];
  [v5 setObject:v4 forKey:@"settingUpSceneOrientationRequest"];
}

- (void)_setInitialDeviceOrientationFromSceneOrientationRequestSetup:(int64_t)setup
{
  v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:setup != 0];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:setup];
  [v5 setObject:v4 forKey:@"initialDeviceOrientationFromSceneOrientationRequestSetup"];
}

- (void)_setSupportedInterfaceOrientationsFromSceneOrientationRequestSetup:(unint64_t)setup
{
  v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:setup != 0];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:setup];
  [v5 setObject:v4 forKey:@"supportedInterfaceOrientationsFromSceneOrientationRequestSetup"];
}

- (BOOL)_isSettingUpSceneOrientationRequest
{
  v2 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v3 = [v2 safeObjectForKey:@"settingUpSceneOrientationRequest" ofType:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_initialDeviceOrientationFromSceneOrientationRequestSetup
{
  v2 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v3 = [v2 safeObjectForKey:@"initialDeviceOrientationFromSceneOrientationRequestSetup" ofType:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setStatusBarForceHidden:forReason:animationSettings:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)handleHardwareButtonEventType:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"SBSUIHardwareButtonEventTypeIsValid(eventType)" object:? file:? lineNumber:? description:?];
}

- (void)_resumingInterfaceOrientationForOrientation:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_launchingInterfaceOrientationForOrientation:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_didUpdateClientSettings:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDeviceApplicationSceneHandle _didUpdateClientSettings:]"];
  [v0 handleFailureInFunction:v1 file:@"SBDeviceApplicationSceneHandle.m" lineNumber:1834 description:@"this call must be made on the main thread"];
}

- (void)_modifyApplicationSceneSettings:fromRequestContext:entity:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  [v4 handleFailureInMethod:v3 object:v0 file:? lineNumber:? description:?];
}

@end