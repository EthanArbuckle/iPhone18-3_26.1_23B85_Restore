@interface SBDeviceApplicationSceneHandle
+ (double)_homeAffordanceInsetTopForWindowScene:(id)a3;
- (BOOL)_classicAppPhoneOnPadPrefersLandscape;
- (BOOL)_classicAppPhoneOnPadSupportsOldStyleMixedOrientation;
- (BOOL)_currentClassicModeAllowsLaunchingToAnySupportedOrientation;
- (BOOL)_isEnhancedWindowingEffectivelyEnabled;
- (BOOL)_isSettingUpSceneOrientationRequest;
- (BOOL)_supportsMixedOrientation;
- (BOOL)_supportsMixedOrientationOnWindowScene:(id)a3;
- (BOOL)_supportsMultiWindowLayouts;
- (BOOL)_supportsSolariumSafeAreas;
- (BOOL)_supportsWindowControls;
- (BOOL)defaultStatusBarHiddenForOrientation:(int64_t)a3;
- (BOOL)forbidsActivationByBreadcrumbAction;
- (BOOL)handleHardwareButtonEventType:(int64_t)a3;
- (BOOL)isAutoHideEnabledForHomeAffordance;
- (BOOL)isEdgeProtectEnabledForHomeGesture;
- (BOOL)isReachabilitySupported;
- (BOOL)isStatusBarForcedHiddenForOrientation:(int64_t)a3;
- (BOOL)isStatusBarHiddenForActivationSettings:(id)a3 withOrientation:(int64_t)a4;
- (BOOL)isTranslucent;
- (BOOL)prefersClosingInSwitcherDisabled;
- (BOOL)prefersHeaderHiddenInSwitcher;
- (BOOL)prefersKillingInSwitcherDisabled;
- (BOOL)requestedFullScreenCenterWindow;
- (BOOL)shouldAlwaysDisplayLiveContent;
- (BOOL)shouldPrioritizeForSwitcherOrdering;
- (BOOL)shouldSuppressAlertForSuppressionContexts:(id)a3 sectionIdentifier:(id)a4;
- (BOOL)supportsCenterWindow;
- (BOOL)wantsDeviceOrientationEventsEnabled;
- (CGRect)statusBarAvoidanceFrame;
- (CGSize)layoutPreferencesMinimumSize;
- (NSData)activationConditionsData;
- (NSString)sceneTitle;
- (SBDeviceApplicationSceneStatusBarStateProvider)statusBarStateProvider;
- (SBIdleTimerCoordinating)_idleTimerCoordinator;
- (SBWindowControlsLayout)windowControlsLayoutForApplicationFrame:(SEL)a3 screenBounds:(CGRect)a4 activationSettings:(CGRect)a5;
- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)a3 isPhone:(BOOL)a4 portraitSafeAreaInsets:(UIEdgeInsets)result statusBarHeight:(double)a6 homeAffordanceOverlayAllowance:(double)a7;
- (_UIStatusBarData)overlayStatusBarData;
- (char)_computeActivityMode;
- (char)_computeJetsamMode;
- (char)_computeResourceElevation;
- (char)activityMode;
- (double)defaultStatusBarHeightForOrientation:(int64_t)a3;
- (double)statusBarAlpha;
- (double)statusBarHeightForOrientation:(int64_t)a3;
- (id)_defaultStatusBarForAssociatedDisplay;
- (id)_defaultStatusBarHeights;
- (id)_potentiallyJailedDisplayConfiguration;
- (id)_safeAreaCornerInsetResolverForApplicationFrame:(CGRect)a3 screenBounds:(CGRect)a4 activationSettings:(id)a5;
- (id)_sceneCornerRadiusConfigurationFromRequestContext:(id)a3 forEntity:(id)a4;
- (id)_sceneDataStoreCreatingIfNecessary:(BOOL)a3;
- (id)_sceneHostingInfoForSnapshottingAssertionWithView:(id)a3;
- (id)_windowScene;
- (id)acquireActiveAppearanceAssertionWithReason:(id)a3 activeAppearance:(int64_t)a4 priority:(int64_t)a5;
- (id)acquireAssertionsForRelevancyResult:(id)a3 reason:(id)a4;
- (id)acquireSceneActivityModeAssertionWithReason:(id)a3 activityMode:(char)a4;
- (id)acquireSceneJetsamModeAssertionWithReason:(id)a3 jetsamMode:(char)a4;
- (id)acquireSceneResourceElevationAssertionWithReason:(id)a3 resourceElevation:(char)a4;
- (id)currentEffectiveStatusBarStyleRequest;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)displayEdgeInfoForLayoutEnvironment:(int64_t)a3;
- (id)effectiveBackgroundActivities;
- (id)effectiveStatusBarStyleRequestForActivationSettings:(id)a3;
- (id)mostRecentSceneSnapshotsForScale:(double)a3 launchingOrientation:(int64_t)a4;
- (id)newScenePlaceholderContentContextWithActivationSettings:(id)a3;
- (id)newSceneViewController;
- (id)newSceneViewWithReferenceSize:(CGSize)a3 contentOrientation:(int64_t)a4 containerOrientation:(int64_t)a5 hostRequester:(id)a6;
- (id)safeAreaEdgeInsetResolverForApplicationFrame:(CGRect)a3 screenBounds:(CGRect)a4 activationSettings:(id)a5;
- (id)statusBarEffectiveStyleRequestWithStyle:(int64_t)a3;
- (int64_t)_bestSupportedInterfaceOrientationForOrientation:(int64_t)a3;
- (int64_t)_classicPhoneOnPadActivationOrientationForOrientation:(int64_t)a3;
- (int64_t)_computeActiveAppearance;
- (int64_t)_defaultStatusBarStyleFromSceneDataStore;
- (int64_t)_initialDeviceOrientationFromSceneOrientationRequestSetup;
- (int64_t)_initialMainSceneCompabilityMode:(id)a3;
- (int64_t)_interfaceOrientationFromUserResizing;
- (int64_t)_interfaceOrientationMode;
- (int64_t)_launchingInterfaceOrientationForOrientation:(int64_t)a3;
- (int64_t)_preferredSizingPolicyForContentOrientation:(int64_t)a3 containerOrientation:(int64_t)a4;
- (int64_t)_resumingInterfaceOrientationForOrientation:(int64_t)a3;
- (int64_t)_statusBarStyleWithActivationSettings:(id)a3;
- (int64_t)activationInterfaceOrientationForOrientation:(int64_t)a3;
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
- (unint64_t)_supportedSizingPoliciesForContentOrientation:(int64_t)a3 containerOrientation:(int64_t)a4;
- (unint64_t)preferredHardwareButtonEventTypes;
- (unint64_t)screenEdgesDeferringSystemGestures;
- (unsigned)jetsamPriority;
- (void)_addSnapshottingInfoAssertion:(id)a3;
- (void)_commonInitWithApplication:(id)a3 sceneIdentifier:(id)a4 displayIdentity:(id)a5;
- (void)_didCreateScene:(id)a3;
- (void)_didDestroyScene:(id)a3;
- (void)_didUpdateClientSettings:(id)a3;
- (void)_didUpdateDisplayIdentity;
- (void)_didUpdateSettingsWithDiff:(id)a3 previousSettings:(id)a4;
- (void)_modifyApplicationSceneClientSettings:(id)a3 fromRequestContext:(id)a4 entity:(id)a5 initialSceneSettings:(id)a6;
- (void)_modifyApplicationSceneSettings:(id)a3 fromRequestContext:(id)a4 entity:(id)a5;
- (void)_modifyApplicationTransitionContext:(id)a3 fromRequestContext:(id)a4 entity:(id)a5;
- (void)_modifyProcessExecutionContext:(id)a3 fromRequestContext:(id)a4 entity:(id)a5;
- (void)_modifySafeAreaInsetsOnApplicationSceneSettings:(id)a3 isFloating:(BOOL)a4;
- (void)_needsInterfaceAppearanceUpdate;
- (void)_noteActivationConditionsChanged;
- (void)_noteBackgroundActivitiesToSuppressChanged;
- (void)_noteContentPrefersToDisableClippingChanged;
- (void)_noteDidMoveFromSceneManager:(id)a3;
- (void)_noteMainSceneBackgroundStyleChanged;
- (void)_noteReplacedWithSceneHandle:(id)a3;
- (void)_noteSceneTitleChanged;
- (void)_populateSettingsWithDefaultStatusBarHeight:(id)a3;
- (void)_reevaluateActiveAppearanceFromAssertions;
- (void)_reevaluateActivityModeFromAssertions;
- (void)_reevaluateJetsamModeFromAssertions;
- (void)_reevaluateOcclusionBySystemUI;
- (void)_reevaluateResourceElevationFromAssertions;
- (void)_reevaluateSafeAreaSettingsForSceneSettings:(id)a3;
- (void)_removeSnapshottingInfoAssertion:(id)a3;
- (void)_resetSceneOrientationRequestState;
- (void)_setClassicAppPhoneOnPadPrefersLandscape:(BOOL)a3;
- (void)_setInitialDeviceOrientationFromSceneOrientationRequestSetup:(int64_t)a3;
- (void)_setInterfaceOrientationFromUserResizing:(int64_t)a3;
- (void)_setSettingUpSceneOrientationRequest:(BOOL)a3;
- (void)_setSupportedInterfaceOrientationsFromSceneOrientationRequestSetup:(unint64_t)a3;
- (void)_updateActivityMode;
- (void)_updateApplicationOcclusionRects;
- (void)_updateCapturingContentForAdditionalRenderingDestination;
- (void)_updateDisableMultitaskingWhileForegroundAssertionIfNeeded;
- (void)_updateIdleTimerForReason:(id)a3;
- (void)_updateInterfaceActiveAppearance;
- (void)_updateIsCapturingContentForAdditionalRenderingDestinationOfMutableSceneSettings:(id)a3 withDisplayIdentity:(id)a4;
- (void)_updateJetsamPriority;
- (void)_updateSceneHostingInfoForSnapshottingWithAssertion:(id)a3 forceUpdate:(BOOL)a4;
- (void)_updateSystemOcclusionRectsAndActiveAppearance;
- (void)addObserver:(id)a3;
- (void)appProtectionAssistantShouldShieldDidChange:(id)a3;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)applicationProcessDidExit:(id)a3 withContext:(id)a4;
- (void)applicationSceneHandle:(id)a3 appendToSceneSettings:(id)a4 fromRequestContext:(id)a5 entity:(id)a6;
- (void)dealloc;
- (void)layoutPreferencesCoordinator:(id)a3 didUpdatePreferencesForScene:(id)a4 transitionContext:(id)a5;
- (void)layoutPreferencesCoordinatorDidRecognizeDoubleTapInDraggableArea:(id)a3;
- (void)reevaluateSafeAreaSettingsUsingAnimationSettings:(id)a3;
- (void)removeObserver:(id)a3;
- (void)saveSuspendSnapshot:(id)a3;
- (void)setAlertSuppressionContextsBySectionIdentifier:(id)a3;
- (void)setBackgroundActivitiesToSuppress:(id)a3;
- (void)setContentPrefersToDisableClipping:(BOOL)a3;
- (void)setKeyboardContextMaskStyle:(unint64_t)a3;
- (void)setOccluded:(BOOL)a3;
- (void)setPreferredWindowControlsPlacement:(int64_t)a3;
- (void)setStatusBarAvoidanceFrame:(CGRect)a3;
- (void)setStatusBarForceHidden:(BOOL)a3 forReason:(id)a4 animationSettings:(id)a5;
- (void)setStatusBarParts:(int64_t)a3;
@end

@implementation SBDeviceApplicationSceneHandle

- (id)_windowScene
{
  v3 = [SBApp windowSceneManager];
  v4 = [v3 windowSceneForSceneHandle:self];

  return v4;
}

- (unint64_t)_supportedInterfaceOrientationsFromSceneOrientationRequestSetup
{
  v2 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v3 = [v2 safeObjectForKey:@"supportedInterfaceOrientationsFromSceneOrientationRequestSetup" ofType:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
    {
LABEL_12:

      return [(SBDeviceApplicationSceneHandle *)self wallpaperStyle]!= 1;
    }
  }

  v6 = [(SBApplicationSceneHandle *)self application];
  v7 = [v6 isClassic];

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      return [(SBDeviceApplicationSceneHandle *)self wallpaperStyle]!= 1;
    }
  }

  else
  {

    if ((v7 & 1) == 0)
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
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (v3)
  {
    v4 = [(SBApplicationSceneHandle *)self application];
    v5 = [v4 info];
    v6 = [v3 uiClientSettings];
    v7 = [v5 backgroundStyleForRequestedBackgroundStyle:{objc_msgSend(v6, "backgroundStyle")}];
  }

  else
  {
    v7 = [(SBDeviceApplicationSceneHandle *)self defaultBackgroundStyle];
  }

  return v7;
}

- (BOOL)isAutoHideEnabledForHomeAffordance
{
  v2 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v3 = [v2 uiClientSettings];
  v4 = [v3 homeIndicatorAutoHidden];

  return v4;
}

- (unint64_t)_mainSceneSupportedInterfaceOrientations
{
  v3 = [(SBApplicationSceneHandle *)self application];
  v4 = [v3 info];
  if ([v3 isMedusaCapable])
  {
    v5 = 30;
  }

  else
  {
    v5 = [v4 supportedInterfaceOrientations];
    v6 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 uiClientSettings];
      v5 = [v8 supportedInterfaceOrientations];
    }
  }

  return v5;
}

- (int64_t)defaultStatusBarStyle
{
  v2 = [(SBDeviceApplicationSceneHandle *)self statusBarStateProvider];
  v3 = [v2 defaultStatusBarStyle];

  return v3;
}

- (id)currentEffectiveStatusBarStyleRequest
{
  v3 = [(SBDeviceApplicationSceneHandle *)self currentStatusBarStyle];

  return [(SBDeviceApplicationSceneHandle *)self statusBarEffectiveStyleRequestWithStyle:v3];
}

- (int64_t)currentStatusBarStyle
{
  v2 = [(SBDeviceApplicationSceneHandle *)self statusBarStateProvider];
  v3 = [v2 statusBarStyle];

  return v3;
}

- (int64_t)statusBarOrientation
{
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 currentInterfaceOrientation];
  }

  else
  {
    v5 = [(SBDeviceApplicationSceneHandle *)self activationInterfaceOrientationForCurrentOrientation];
  }

  v6 = v5;

  return v6;
}

- (int64_t)_interfaceOrientationFromUserResizing
{
  interfaceOrientationFromUserResizeIfAny = self->_interfaceOrientationFromUserResizeIfAny;
  if (interfaceOrientationFromUserResizeIfAny == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
    v5 = [v4 safeObjectForKey:@"interfaceOrientationFromUserResizing" ofType:objc_opt_class()];
    v6 = v5;
    if (v5)
    {
      v5 = [v5 integerValue];
    }

    self->_interfaceOrientationFromUserResizeIfAny = v5;

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
  v2 = [(SBApplicationSceneHandle *)self application];
  v3 = [v2 info];
  v4 = [v3 _launchingInterfaceOrientation];

  return v4;
}

- (int64_t)_defaultStatusBarStyleFromSceneDataStore
{
  v2 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v3 = [v2 safeObjectForKey:@"statusBarStyle" ofType:objc_opt_class()];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)_potentiallyJailedDisplayConfiguration
{
  v2 = [(SBApplicationSceneHandle *)self application];
  v3 = [MEMORY[0x277D0AA90] mainConfiguration];
  v4 = [v2 restrictedClassicModeDisplayConfigurationForDisplayConfiguration:v3];

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
  v2 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v3 = [v2 currentInterfaceOrientation];

  return v3;
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
        v3 = [(SBApplicationSceneHandle *)self application];
        v4 = [v3 _classicMode];

        return (v4 - 3) < 0xFFFFFFFFFFFFFFFELL;
      }
    }

    else
    {
      v6 = [MEMORY[0x277D75418] currentDevice];
      v7 = [v6 userInterfaceIdiom];

      if (v7 != 1)
      {
        goto LABEL_4;
      }
    }
  }

  v8 = [(SBApplicationSceneHandle *)self application];
  v9 = [v8 classicAppPhoneAppRunningOnPad];

  return v9 ^ 1;
}

- (BOOL)_isEnhancedWindowingEffectivelyEnabled
{
  v3 = [(SBDeviceApplicationSceneHandle *)self wantsEnhancedWindowingEnabled];
  if (v3)
  {
    LOBYTE(v3) = ![(SBDeviceApplicationSceneHandle *)self isHostedSecureApp];
  }

  return v3;
}

- (BOOL)shouldPrioritizeForSwitcherOrdering
{
  v2 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = [v2 uiClientSettings];
    v5 = SBSafeCast(v3, v4);

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

  v3 = [(SBApplicationSceneHandle *)self application];
  v30 = [(SBDeviceApplicationSceneHandle *)self _defaultStatusBarForAssociatedDisplay];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (![v3 isClassic])
  {
    *&v8 = 1.79769313e308;
    goto LABEL_9;
  }

  v5 = 20.0;
  if (SBApplicationClassicModeExpectsRoundedCorners([v3 _classicMode]))
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) != 1 || (v5 = 24.0, [v3 classicAppPhoneAppRunningOnPad]))
    {
      *&v8 = 44.0;
LABEL_9:
      v5 = *&v8;
    }
  }

  v29 = v3;
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
        v15 = [v14 integerValue];
        v16 = [(SBDeviceApplicationSceneHandle *)self isStatusBarForcedHiddenForOrientation:v15];
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
          v18 = [(SBApplicationSceneHandle *)self application];
          v19 = [v18 info];
          if (v19)
          {
            v20 = [(SBApplicationSceneHandle *)self application];
            [v20 info];
            v21 = self;
            v22 = v11;
            v24 = v23 = v4;
            [v30 heightForOrientation:v15 isAzulBLinked:{objc_msgSend(v24, "isAzulBLinked")}];
            v17 = v25;

            v4 = v23;
            v11 = v22;
            self = v21;
            v12 = 0x277CCA000;
          }

          else
          {
            [v30 heightForOrientation:v15 isAzulBLinked:1];
            v17 = v26;
          }

          v10 = v31;
        }

        v27 = [*(v12 + 2992) numberWithDouble:v17];
        [v4 setObject:v27 forKeyedSubscript:v14];

        ++v13;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v10);
  }

  return v4;
}

- (BOOL)_supportsSolariumSafeAreas
{
  v3 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  v4 = [v3 switcherController];
  v5 = [v4 windowManagementContext];
  v6 = [(SBApplicationSceneHandle *)self application];
  v7 = [v6 info];

  v8 = [MEMORY[0x277D75418] currentDevice];
  if ([v8 userInterfaceIdiom])
  {
    v9 = [(SBApplicationSceneHandle *)self application];
    v10 = [v9 classicAppPhoneAppRunningOnPad];
  }

  else
  {
    v10 = 1;
  }

  if (_UISolariumEnabled() && [v7 isLuckLinked] && ((objc_msgSend(v7, "wantsFullScreen") | v10) & 1) == 0 && objc_msgSend(v5, "isFlexibleWindowingEnabled"))
  {
    v11 = [v7 requiresPreSolariumDesign] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)_defaultStatusBarForAssociatedDisplay
{
  v2 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  v3 = [v2 statusBarManager];
  v4 = [v3 statusBar];

  return v4;
}

- (double)statusBarAlpha
{
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uiClientSettings];
    [v5 statusBarAlpha];
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
  v2 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = [v2 uiClientSettings];
    v5 = SBSafeCast(v3, v4);

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
  v2 = self;
  v3 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  LOBYTE(v2) = [(SBDeviceApplicationSceneHandle *)v2 _supportsMixedOrientationOnWindowScene:v3];

  return v2;
}

- (BOOL)prefersKillingInSwitcherDisabled
{
  v2 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = [v2 uiClientSettings];
    v5 = SBSafeCast(v3, v4);

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
  v2 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = [v2 uiSettings];
    v5 = SBSafeCast(v3, v4);

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
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uiClientSettings];
    v6 = [v5 screenEdgesDeferringSystemGestures];
    v7 = [(SBApplicationSceneHandle *)self application];
    if (![v7 isClassic] || (objc_msgSend(v7, "classicAppFullScreen") & 1) != 0)
    {
      goto LABEL_16;
    }

    if ([v7 classicAppPhoneAppRunningOnPad])
    {
      v6 = 0;
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
      v8 = [MEMORY[0x277D75418] currentDevice];
      v9 = [v8 userInterfaceIdiom];

      if (v9)
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

    v6 &= v10;
    goto LABEL_16;
  }

  v6 = 0;
LABEL_17:

  return v6;
}

- (int64_t)_interfaceOrientationMode
{
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uiSettings];
    v6 = [v5 interfaceOrientationMode];
  }

  else
  {
    v5 = [(SBApplicationSceneHandle *)self application];
    if (_SBApplicationClassicModeIsClassic([v5 _defaultClassicMode]))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  return v6;
}

- (void)_noteMainSceneBackgroundStyleChanged
{
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = [v3 uiPresentationManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SBDeviceApplicationSceneHandle__noteMainSceneBackgroundStyleChanged__block_invoke;
  v5[3] = &unk_2783A9210;
  v5[4] = self;
  [v4 modifyDefaultPresentationContext:v5];
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
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uiSettings];
    IsClassic = [v5 deviceOrientationEventsEnabled];
  }

  else
  {
    v5 = [(SBApplicationSceneHandle *)self application];
    IsClassic = _SBApplicationClassicModeIsClassic([v5 _defaultClassicMode]);
  }

  v7 = IsClassic;

  return v7;
}

- (BOOL)forbidsActivationByBreadcrumbAction
{
  v2 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = [v2 uiClientSettings];
    v5 = SBSafeCast(v3, v4);

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
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneTitle];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SBDeviceApplicationSceneHandle__noteSceneTitleChanged__block_invoke;
  v5[3] = &unk_2783B8FE0;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(SBDeviceApplicationSceneHandle *)self _enumerateObserversWithBlock:v5];
}

- (NSString)sceneTitle
{
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uiClientSettings];
    [v5 canvasTitle];
  }

  else
  {
    v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
    [v5 objectForKey:@"canvasTitle"];
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

  v6 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  v7 = [v6 assistantController];
  [v7 addObserver:self];

  [(SBDeviceApplicationSceneHandle *)self _reevaluateOcclusionBySystemUI];
  if (self->_occludedBySystemUI)
  {
    [(SBDeviceApplicationSceneHandle *)self _updateSystemOcclusionRectsAndActiveAppearance];
  }

  self->_applicationOcclusionRectsDirty = self->_occludedByApplication;
}

- (void)_reevaluateOcclusionBySystemUI
{
  v3 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  v4 = [v3 assistantController];
  v7 = [v4 presentationContext];

  occludedBySystemUI = self->_occludedBySystemUI;
  if ([v7 isAssistantPresented])
  {
    v6 = [v7 allowsHDRContentBelow] ^ 1;
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
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneManager];
  v4 = [v3 displayIdentity];

  v5 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__SBDeviceApplicationSceneHandle__updateCapturingContentForAdditionalRenderingDestination__block_invoke;
  v7[3] = &unk_2783B90C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 updateSettings:v7];
}

- (void)dealloc
{
  v60 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
    v4 = [v3 assistantController];
    [v4 removeObserver:self];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = [(NSHashTable *)self->_activityModeAssertions allObjects];
  v6 = [v5 countByEnumeratingWithState:&v52 objects:v59 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v52 + 1) + 8 * v9++) invalidate];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v7);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v10 = [(NSHashTable *)self->_jetsamModeAssertions allObjects];
  v11 = [v10 countByEnumeratingWithState:&v48 objects:v58 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v48 + 1) + 8 * v14++) invalidate];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v12);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = [(NSHashTable *)self->_resourceElevationAssertions allObjects];
  v16 = [v15 countByEnumeratingWithState:&v44 objects:v57 count:16];
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
          objc_enumerationMutation(v15);
        }

        [*(*(&v44 + 1) + 8 * v19++) invalidate];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v44 objects:v57 count:16];
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

- (void)_commonInitWithApplication:(id)a3 sceneIdentifier:(id)a4 displayIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32.receiver = self;
  v32.super_class = SBDeviceApplicationSceneHandle;
  [(SBApplicationSceneHandle *)&v32 _commonInitWithApplication:v8 sceneIdentifier:v9 displayIdentity:v10];
  v11 = [v8 info];
  self->_defaultBackgroundStyle = [v11 backgroundStyle];

  v12 = [[SBDeviceApplicationSceneViewPlaceholderContentViewProvider alloc] initWithApplication:v8];
  placeholderContentProvider = self->_placeholderContentProvider;
  self->_placeholderContentProvider = v12;

  v14 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  activityModeAssertions = self->_activityModeAssertions;
  self->_activityModeAssertions = v14;

  v16 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  jetsamModeAssertions = self->_jetsamModeAssertions;
  self->_jetsamModeAssertions = v16;

  v18 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  resourceElevationAssertions = self->_resourceElevationAssertions;
  self->_resourceElevationAssertions = v18;

  v20 = [MEMORY[0x277CBEB18] array];
  activeAppearanceAssertions = self->_activeAppearanceAssertions;
  self->_activeAppearanceAssertions = v20;

  self->_computedActiveAppearance = -1;
  self->_preferredWindowControlsPlacement = 0;
  self->_interfaceOrientationFromUserResizeIfAny = 0x7FFFFFFFFFFFFFFFLL;
  [(SBApplicationSceneHandle *)self addSceneUpdateContributer:self];
  [(SBDeviceApplicationSceneHandle *)self _didUpdateDisplayIdentity];
  v22 = [v8 appProtectionAssistant];
  [v22 addObserver:self];

  v23 = MEMORY[0x277CCACA8];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = [v23 stringWithFormat:@"SpringBoard - %@ - %@", v25, v9];

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

- (void)saveSuspendSnapshot:(id)a3
{
  v9 = a3;
  v4 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v5 = [v4 layerManager];
  v6 = [v5 layers];
  v7 = [v6 count];

  if (v9 && v7)
  {
    v8 = [(SBApplicationSceneHandle *)self application];
    [v8 saveSuspendSnapshot:v9 forSceneHandle:self];
  }
}

- (id)mostRecentSceneSnapshotsForScale:(double)a3 launchingOrientation:(int64_t)a4
{
  v7 = [(SBApplicationSceneHandle *)self application];
  v8 = [v7 mostRecentSceneSnapshotsForSceneHandle:self scale:a4 launchingOrientation:a3];

  return v8;
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v3 removeObserver:a3];
}

- (BOOL)isReachabilitySupported
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 externalForegroundApplicationSceneHandles];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v17 + 1) + 8 * i) application];
        v10 = [(SBApplicationSceneHandle *)self application];
        if ([v9 isSameExecutableAsApplication:v10])
        {
          v11 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
          v12 = [v11 uiClientSettings];
          v13 = [v12 isReachabilitySupported];

          if (!v13)
          {
            v14 = 0;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)setAlertSuppressionContextsBySectionIdentifier:(id)a3
{
  v5 = a3;
  if (self->_alertSuppressionContextsBySectionIdentifier != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_alertSuppressionContextsBySectionIdentifier, a3);
    v5 = v6;
  }
}

- (BOOL)shouldSuppressAlertForSuppressionContexts:(id)a3 sectionIdentifier:(id)a4
{
  alertSuppressionContextsBySectionIdentifier = self->_alertSuppressionContextsBySectionIdentifier;
  v6 = a3;
  v7 = [(NSDictionary *)alertSuppressionContextsBySectionIdentifier objectForKey:a4];
  LOBYTE(alertSuppressionContextsBySectionIdentifier) = [v6 intersectsSet:v7];

  return alertSuppressionContextsBySectionIdentifier;
}

- (CGSize)layoutPreferencesMinimumSize
{
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 ui_layoutPreferencesCoordinator];
    [v5 systemLayoutSizeFittingSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    v7 = v6;
    v9 = v8;
    v10 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
    v11 = [v10 switcherController];
    [v11 _maxScreenSizeWithDockAndStripInset];
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
    v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
    v10 = [v5 objectForKey:@"minimumWidth"];
    v16 = [v5 objectForKey:@"minimumHeight"];
    [v10 bs_CGFloatValue];
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

+ (double)_homeAffordanceInsetTopForWindowScene:(id)a3
{
  v3 = [a3 statusBarManager];
  v4 = [v3 statusBar];
  [v4 defaultHeight];
  v6 = v5;

  return v6;
}

- (_UIStatusBarData)overlayStatusBarData
{
  v2 = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self->_breadcrumbProvider breadcrumbTitle];
  if (v2)
  {
    if (SBStatusBarIsSpeakeasy())
    {
      v3 = [MEMORY[0x277D6BAF0] entryWithStringValue:v2];
      v4 = objc_alloc(MEMORY[0x277D6BA48]);
      v5 = [v4 initWithEntry:v3 forKey:*MEMORY[0x277D6BD70]];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x277D76298]);
      v3 = objc_alloc_init(MEMORY[0x277D76308]);
      [v3 setStringValue:v2];
      [v5 setBackNavigationEntry:v3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)effectiveStatusBarStyleRequestForActivationSettings:(id)a3
{
  v4 = [(SBDeviceApplicationSceneHandle *)self _statusBarStyleWithActivationSettings:a3];

  return [(SBDeviceApplicationSceneHandle *)self statusBarEffectiveStyleRequestWithStyle:v4];
}

- (id)statusBarEffectiveStyleRequestWithStyle:(int64_t)a3
{
  v3 = [objc_alloc(MEMORY[0x277D6BFE8]) initWithResolvedStyle:a3 foregroundColor:0];

  return v3;
}

- (id)effectiveBackgroundActivities
{
  [MEMORY[0x277D75A98] getStyleOverrides];
  v3 = STUIBackgroundActivityIdentifiersForStyleOverrides();
  v4 = [v3 mutableCopy];

  v5 = [(SBApplicationSceneHandle *)self application];
  v6 = [v5 bundleIdentifier];
  if ([v6 isEqual:@"com.apple.Maps"])
  {
    [v4 removeObject:*MEMORY[0x277D6BC80]];
  }

  if ([v5 isNowRecordingApplication])
  {
    [v4 removeObject:*MEMORY[0x277D6BCA8]];
  }

  [v4 minusSet:self->_backgroundActivitiesToSuppress];
  v7 = [v5 info];
  v8 = [v7 ignoredBackgroundActivityIdentifiers];
  [v4 minusSet:v8];

  return v4;
}

- (void)setStatusBarForceHidden:(BOOL)a3 forReason:(id)a4 animationSettings:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    [SBDeviceApplicationSceneHandle setStatusBarForceHidden:forReason:animationSettings:];
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __86__SBDeviceApplicationSceneHandle_setStatusBarForceHidden_forReason_animationSettings___block_invoke;
  v19 = &unk_2783A8BF0;
  v20 = self;
  v10 = v9;
  v21 = v10;
  v11 = MEMORY[0x223D6F7F0](&v16);
  statusBarForcedHiddenReasons = self->_statusBarForcedHiddenReasons;
  if (v6)
  {
    if (!statusBarForcedHiddenReasons)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v14 = self->_statusBarForcedHiddenReasons;
      self->_statusBarForcedHiddenReasons = v13;

      v11[2](v11, 1);
      statusBarForcedHiddenReasons = self->_statusBarForcedHiddenReasons;
    }

    [(NSMutableSet *)statusBarForcedHiddenReasons addObject:v8, v16, v17, v18, v19, v20];
  }

  else
  {
    [(NSMutableSet *)statusBarForcedHiddenReasons removeObject:v8, v16, v17, v18, v19, v20];
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

- (BOOL)isStatusBarForcedHiddenForOrientation:(int64_t)a3
{
  v5 = [(SBApplicationSceneHandle *)self application];
  v6 = [v5 info];
  v7 = [(SBDeviceApplicationSceneHandle *)self _potentiallyJailedDisplayConfiguration];
  LOBYTE(a3) = [v6 statusBarForcedHiddenForInterfaceOrientation:a3 onDisplay:v7];

  return a3;
}

- (BOOL)defaultStatusBarHiddenForOrientation:(int64_t)a3
{
  v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v6 = [v5 safeObjectForKey:@"statusBarHidden" ofType:objc_opt_class()];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v8 = [(SBApplicationSceneHandle *)self application];
    v9 = [v8 info];
    v10 = [(SBDeviceApplicationSceneHandle *)self _potentiallyJailedDisplayConfiguration];
    v7 = [v9 statusBarHiddenForInterfaceOrientation:a3 onDisplay:v10];
  }

  return v7;
}

- (BOOL)isStatusBarHiddenForActivationSettings:(id)a3 withOrientation:(int64_t)a4
{
  v6 = [a3 objectForActivationSetting:5];
  v7 = [v6 scheme];

  v8 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];

  if (!v8 || v7)
  {
    v11 = [(SBDeviceApplicationSceneHandle *)self defaultStatusBarHiddenForOrientation:a4];
  }

  else
  {
    v9 = [(SBDeviceApplicationSceneHandle *)self scene];
    v10 = [v9 uiClientSettings];
    v11 = [v10 statusBarHidden];
  }

  return v11;
}

- (double)statusBarHeightForOrientation:(int64_t)a3
{
  if ([(SBDeviceApplicationSceneHandle *)self isCurrentStatusBarHiddenForOrientation:?])
  {
    return 0.0;
  }

  [(SBDeviceApplicationSceneHandle *)self defaultStatusBarHeightForOrientation:a3];
  return result;
}

- (double)defaultStatusBarHeightForOrientation:(int64_t)a3
{
  v5 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 uiSettings];
    [v7 defaultStatusBarHeightForOrientation:a3];
    v9 = v8;
  }

  else
  {
    v7 = [(SBDeviceApplicationSceneHandle *)self _defaultStatusBarHeights];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v11 = [v7 objectForKey:v10];
    [v11 doubleValue];
    v9 = v12;
  }

  return v9;
}

- (void)setStatusBarParts:(int64_t)a3
{
  if (self->_statusBarParts != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    self->_statusBarParts = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __52__SBDeviceApplicationSceneHandle_setStatusBarParts___block_invoke;
    v5[3] = &unk_2783B8DB8;
    v5[4] = self;
    v5[5] = a3;
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

- (void)setStatusBarAvoidanceFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_statusBarAvoidanceFrame = &self->_statusBarAvoidanceFrame;
  if (!CGRectEqualToRect(self->_statusBarAvoidanceFrame, a3))
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

- (void)setBackgroundActivitiesToSuppress:(id)a3
{
  v6 = a3;
  if ((BSEqualSets() & 1) == 0)
  {
    v4 = [v6 copy];
    backgroundActivitiesToSuppress = self->_backgroundActivitiesToSuppress;
    self->_backgroundActivitiesToSuppress = v4;

    [(SBDeviceApplicationSceneHandle *)self _noteBackgroundActivitiesToSuppressChanged];
  }
}

- (void)setPreferredWindowControlsPlacement:(int64_t)a3
{
  if ([(SBDeviceApplicationSceneHandle *)self _supportsWindowControls]&& self->_preferredWindowControlsPlacement != a3)
  {
    self->_preferredWindowControlsPlacement = a3;
    v5 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    v6 = v5;
    if (v5)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __70__SBDeviceApplicationSceneHandle_setPreferredWindowControlsPlacement___block_invoke;
      v7[3] = &unk_2783ACB10;
      v7[4] = self;
      [v5 updateSettings:v7];
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

- (SBWindowControlsLayout)windowControlsLayoutForApplicationFrame:(SEL)a3 screenBounds:(CGRect)a4 activationSettings:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4.size.height;
  v11 = a4.size.width;
  v12 = a4.origin.y;
  v13 = a4.origin.x;
  v16 = a6;
  if ([(SBDeviceApplicationSceneHandle *)self _supportsWindowControls])
  {
    v40 = y;
    v42 = height;
    v17 = [(SBApplicationSceneHandle *)self application];
    v18 = [v17 info];
    v19 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
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

    v21 = [v19 safeAreaInsetsPortrait];
    [v21 topInset];
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
    v27 = [v26 windowingSettings];

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __106__SBDeviceApplicationSceneHandle_windowControlsLayoutForApplicationFrame_screenBounds_activationSettings___block_invoke;
    v56[3] = &unk_2783B8E08;
    v28 = v27;
    v57 = v28;
    v29 = MEMORY[0x223D6F7F0](v56);
    v30 = v29;
    if (v25)
    {
      (*(v29 + 16))(v29);
LABEL_25:

      goto LABEL_26;
    }

    v41 = v19;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __106__SBDeviceApplicationSceneHandle_windowControlsLayoutForApplicationFrame_screenBounds_activationSettings___block_invoke_2;
    v53[3] = &unk_2783B8E30;
    v55 = v24;
    v31 = v18;
    v32 = v28;
    v54 = v32;
    v33 = MEMORY[0x223D6F7F0](v53);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __106__SBDeviceApplicationSceneHandle_windowControlsLayoutForApplicationFrame_screenBounds_activationSettings___block_invoke_3;
    v48[3] = &unk_2783B8E58;
    v49 = v17;
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
    v38 = [(SBDeviceApplicationSceneHandle *)self preferredWindowControlsPlacement];
    if (v38 <= 1)
    {
      if (v38)
      {
        v19 = v41;
        if (v38 == 1)
        {
          SBWindowControlsLayoutHidden(retstr);
        }

        goto LABEL_24;
      }

      SBWindowControlsLayoutUndefined(retstr);
    }

    else
    {
      if (v38 != 2)
      {
        v19 = v41;
        if (v38 == 3)
        {
          v36[2](v36);
        }

        else if (v38 == 4)
        {
          v35[2](v35);
        }

        goto LABEL_24;
      }

      v37[2](v37);
    }

    v19 = v41;
LABEL_24:

    v18 = v43;
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

- (int64_t)activationInterfaceOrientationForOrientation:(int64_t)a3
{
  v5 = [(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation];
  if (v5)
  {
    v6 = v5;
    result = [(SBDeviceApplicationSceneHandle *)self _interfaceOrientationFromUserResizing];
    if (!result)
    {
      v8 = [(SBApplicationSceneHandle *)self application];
      v9 = [v8 classicAppPhoneAppRunningOnPad];

      if (v9)
      {
        result = [(SBDeviceApplicationSceneHandle *)self _classicPhoneOnPadActivationOrientationForOrientation:a3];
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

    return [(SBDeviceApplicationSceneHandle *)self _launchingInterfaceOrientationForOrientation:a3];
  }

  return result;
}

- (void)reevaluateSafeAreaSettingsUsingAnimationSettings:(id)a3
{
  v4 = a3;
  v5 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (v5)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__SBDeviceApplicationSceneHandle_reevaluateSafeAreaSettingsUsingAnimationSettings___block_invoke;
    v6[3] = &unk_2783B8EA8;
    v6[4] = self;
    v7 = v4;
    [v5 performUpdate:v6];
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

- (void)_reevaluateSafeAreaSettingsForSceneSettings:(id)a3
{
  v29 = a3;
  v4 = [v29 ui_safeAreaSettings];
  if (v4)
  {
    v5 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
    [v5 _boundsForInterfaceOrientation:{objc_msgSend(v5, "_interfaceOrientation")}];
    [(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation];
    _UIConvertRectFromOrientationToOrientation();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v29 convertFrameInRect:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [SBDeviceApplicationSceneHandle _safeAreaCornerInsetResolverForApplicationFrame:"_safeAreaCornerInsetResolverForApplicationFrame:screenBounds:activationSettings:" screenBounds:0 activationSettings:?];
    v23 = [v4 safeAreaCornerInsetResolver];
    v24 = [v23 isEqual:v22];

    if ((v24 & 1) == 0)
    {
      [v4 setSafeAreaCornerInsetResolver:v22];
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
    v27 = [v4 safeAreaEdgeInsetResolver];
    v28 = [v27 isEqual:v26];

    if ((v28 & 1) == 0)
    {
      [v4 setSafeAreaEdgeInsetResolver:v26];
    }
  }
}

- (UIEdgeInsets)_safeAreaInsetsForInterfaceOrientation:(int64_t)a3 isPhone:(BOOL)a4 portraitSafeAreaInsets:(UIEdgeInsets)result statusBarHeight:(double)a6 homeAffordanceOverlayAllowance:(double)a7
{
  v9.f64[0] = result.top;
  v9.f64[1] = result.left;
  v10.f64[0] = result.bottom;
  v10.f64[1] = result.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *MEMORY[0x277D768C8]), vceqq_f64(v10, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
  {
    if (a4)
    {
      _SB_UIEdgeInsetsRotateFromPortraitToOrientation(a3);
      result.right = fmax(v11, v12);
      result.left = result.right;
    }

    result.bottom = fmax(result.bottom, a7);
  }

  v13 = fmax(result.top, a6);
  result.top = v13;
  return result;
}

- (id)safeAreaEdgeInsetResolverForApplicationFrame:(CGRect)a3 screenBounds:(CGRect)a4 activationSettings:(id)a5
{
  y = a4.origin.y;
  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  v7 = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  v12 = a5;
  v13 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  v14 = 1;
  v15 = [(SBDeviceApplicationSceneHandle *)self isStatusBarHiddenForActivationSettings:v12 withOrientation:1];
  v16 = [MEMORY[0x277D75418] currentDevice];
  if ([v16 userInterfaceIdiom])
  {
    v17 = [(SBApplicationSceneHandle *)self application];
    v14 = [v17 classicAppPhoneAppRunningOnPad];
  }

  v18 = [v13 safeAreaInsetsPortrait];
  [v18 edgeInsets];
  v20 = v19;
  v64 = v21;
  v65 = v22;
  v24 = v23;

  if ([(SBDeviceApplicationSceneHandle *)self _supportsSolariumSafeAreas])
  {
    [(SBDeviceApplicationSceneHandle *)self windowControlsLayoutForApplicationFrame:v12 screenBounds:v10 activationSettings:v9, v8, v7, x, y, width, height];
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

    v26 = [v13 safeAreaInsetsPortrait];
    [v26 topInset];
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
    if (v14)
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

- (id)displayEdgeInfoForLayoutEnvironment:(int64_t)a3
{
  v5 = [(SBApplicationSceneHandle *)self application];
  IsClassic = _SBApplicationClassicModeIsClassic([v5 _classicMode]);

  if (IsClassic)
  {
    v7 = MEMORY[0x277D77750];
    v8 = [(SBApplicationSceneHandle *)self application];
    v9 = [v7 sb_displayEdgeInfoForApplication:v8];
  }

  else
  {
    if (a3 == 2)
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
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 uiClientSettings];
      [v7 activationConditionsData];
    }

    else
    {
      v7 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
      [v7 objectForKey:@"activationConditions"];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setKeyboardContextMaskStyle:(unint64_t)a3
{
  v5 = [(SBApplicationSceneHandle *)self application];
  v6 = [v5 supportsChamoisSceneResizing];

  if (a3 != 2 || v6)
  {
    self->_keyboardLayerMaskStyle = a3;
    v7 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    v8 = [v7 uiPresentationManager];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__SBDeviceApplicationSceneHandle_setKeyboardContextMaskStyle___block_invoke;
    v9[3] = &__block_descriptor_40_e43_v16__0__UIMutableScenePresentationContext_8l;
    v9[4] = a3;
    [v8 modifyDefaultPresentationContext:v9];
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
    v6 = [v4 BOOLValue];
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
      v6 = v10 == 0;
      if (v10)
      {
        v12 = SBLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [(SBApplicationSceneHandle *)self application];
          v14 = [v13 bundleIdentifier];
          *buf = 138543618;
          v18 = v14;
          v19 = 2114;
          v20 = v11;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "Error decoding activation conditions for %{public}@:%{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)requestedFullScreenCenterWindow
{
  v2 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v3 = [v2 safeObjectForKey:@"requestedFullScreenCenterWindow" ofType:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setContentPrefersToDisableClipping:(BOOL)a3
{
  if (self->_contentPrefersToDisableClipping != a3)
  {
    self->_contentPrefersToDisableClipping = a3;
    [(SBDeviceApplicationSceneHandle *)self _noteContentPrefersToDisableClippingChanged];
  }
}

- (BOOL)handleHardwareButtonEventType:(int64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  if ((SBSUIHardwareButtonEventTypeIsValid() & 1) == 0)
  {
    [SBDeviceApplicationSceneHandle handleHardwareButtonEventType:];
  }

  v5 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (!v5)
  {
    v8 = SBLogInCallPresentation();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
      v19 = SBSUIHardwareButtonEventTypeDescription();
      *buf = 138543618;
      v31 = v18;
      v32 = 2114;
      v33 = v19;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to handle %{public}@ event because the scene doesn't exist", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v6 = objc_opt_class();
  v7 = [v5 uiClientSettings];
  v8 = SBSafeCast(v6, v7);

  if (!v8)
  {
    v10 = SBLogInCallPresentation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
      v21 = SBSUIHardwareButtonEventTypeDescription();
      *buf = 138543618;
      v31 = v20;
      v32 = 2114;
      v33 = v21;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to handle %{public}@ event because scene client settings are not of the appropriate class", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v9 = ([v8 preferredHardwareButtonEventTypes]& (1 << a3)) == 0;
  v10 = SBLogInCallPresentation();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v22 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
      v23 = SBSUIHardwareButtonEventTypeDescription();
      *buf = 138543618;
      v31 = v22;
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
    v12 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
    v13 = SBSUIHardwareButtonEventTypeDescription();
    *buf = 138543618;
    v31 = v12;
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
  v29[1] = a3;
  v15 = [v14 initWithButtonEventType:a3 timeout:&v25 withResponseHandler:5.0];
  v16 = [MEMORY[0x277CBEB98] setWithObject:{v15, v25, v26, v27, v28}];
  [v5 sendActions:v16];

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
  v2 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (v2 && (v3 = objc_opt_class(), [v2 uiClientSettings], v4 = objc_claimAutoreleasedReturnValue(), SBSafeCast(v3, v4), v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = [v5 preferredHardwareButtonEventTypes];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)prefersClosingInSwitcherDisabled
{
  v3 = +[SBWorkspace mainWorkspace];
  v4 = [v3 inCallPresentationManager];
  LOBYTE(self) = [v4 isSceneHandleCloseableInSwitcher:self];

  return self ^ 1;
}

- (id)acquireAssertionsForRelevancyResult:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  if ([v6 activityMode])
  {
    v9 = -[SBDeviceApplicationSceneHandle acquireSceneActivityModeAssertionWithReason:activityMode:](self, "acquireSceneActivityModeAssertionWithReason:activityMode:", v7, [v6 activityMode]);
    [v8 setObject:v9 forKey:&unk_2833711B0];
  }

  if ([v6 jetsamMode])
  {
    v10 = -[SBDeviceApplicationSceneHandle acquireSceneJetsamModeAssertionWithReason:jetsamMode:](self, "acquireSceneJetsamModeAssertionWithReason:jetsamMode:", v7, [v6 jetsamMode]);
    [v8 setObject:v10 forKey:&unk_2833711C8];
  }

  if ([v6 resourceElevation])
  {
    v11 = -[SBDeviceApplicationSceneHandle acquireSceneResourceElevationAssertionWithReason:resourceElevation:](self, "acquireSceneResourceElevationAssertionWithReason:resourceElevation:", v7, [v6 resourceElevation]);
    [v8 setObject:v11 forKey:&unk_2833711E0];
  }

  return v8;
}

- (char)activityMode
{
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 settings];
    computedActivityMode = [v5 activityMode];
  }

  else
  {
    computedActivityMode = self->_computedActivityMode;
  }

  return computedActivityMode;
}

- (unsigned)jetsamPriority
{
  v2 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 settings];
    v5 = [v4 jetsamPriority];
  }

  else
  {
    v5 = FBSSceneJetsamPriorityCreate();
  }

  return v5;
}

- (id)acquireActiveAppearanceAssertionWithReason:(id)a3 activeAppearance:(int64_t)a4 priority:(int64_t)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  objc_initWeak(&location, self);
  v9 = [SBSceneHandleActiveAppearanceAssertion alloc];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__SBDeviceApplicationSceneHandle_acquireActiveAppearanceAssertionWithReason_activeAppearance_priority___block_invoke;
  v19[3] = &unk_2783B8F18;
  objc_copyWeak(&v20, &location);
  v10 = [(SBSceneHandleActiveAppearanceAssertion *)v9 initWithReason:v8 activeAppearance:a4 priority:a5 invalidationBlock:v19];
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
  v14[5] = a5;
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

- (id)acquireSceneActivityModeAssertionWithReason:(id)a3 activityMode:(char)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [SBSceneHandleActivityModeAssertion alloc];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __91__SBDeviceApplicationSceneHandle_acquireSceneActivityModeAssertionWithReason_activityMode___block_invoke;
  v14 = &unk_2783B8F68;
  objc_copyWeak(&v15, &location);
  v8 = [(SBSceneHandleActivityModeAssertion *)v7 initWithReason:v6 activityMode:v4 invalidationBlock:&v11];
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

- (id)acquireSceneJetsamModeAssertionWithReason:(id)a3 jetsamMode:(char)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [SBSceneHandleJetsamModeAssertion alloc];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __87__SBDeviceApplicationSceneHandle_acquireSceneJetsamModeAssertionWithReason_jetsamMode___block_invoke;
  v14 = &unk_2783B8F90;
  objc_copyWeak(&v15, &location);
  v8 = [(SBSceneHandleJetsamModeAssertion *)v7 initWithReason:v6 jetsamMode:v4 invalidationBlock:&v11];
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

- (id)acquireSceneResourceElevationAssertionWithReason:(id)a3 resourceElevation:(char)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [SBSceneHandleResourceElevationAssertion alloc];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __101__SBDeviceApplicationSceneHandle_acquireSceneResourceElevationAssertionWithReason_resourceElevation___block_invoke;
  v14 = &unk_2783B8FB8;
  objc_copyWeak(&v15, &location);
  v8 = [(SBSceneHandleResourceElevationAssertion *)v7 initWithReason:v6 resourceElevation:v4 invalidationBlock:&v11];
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

- (int64_t)_bestSupportedInterfaceOrientationForOrientation:(int64_t)a3
{
  v5 = [(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation];
  v6 = [(SBDeviceApplicationSceneHandle *)self _mainSceneSupportedInterfaceOrientations];
  v7 = 1;
  v8 = 4;
  v9 = 3;
  if ((v6 & 8) == 0)
  {
    v9 = (v6 >> 1) & 2;
  }

  if ((v6 & 0x10) == 0)
  {
    v8 = v9;
  }

  if ((v6 & 2) == 0)
  {
    v7 = v8;
  }

  if ((v6 & (1 << v5)) != 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if ((v6 & (1 << a3)) != 0)
  {
    return a3;
  }

  else
  {
    return v10;
  }
}

- (int64_t)_resumingInterfaceOrientationForOrientation:(int64_t)a3
{
  v5 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];

  if (v5)
  {
    if (!a3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    [SBDeviceApplicationSceneHandle _resumingInterfaceOrientationForOrientation:];
    if (!a3)
    {
      goto LABEL_22;
    }
  }

  v6 = [(SBApplicationSceneHandle *)self application];
  v7 = [v6 info];
  v8 = [v7 builtOnOrAfterSDKVersion:@"8.0"];

  v9 = [(SBDeviceApplicationSceneHandle *)self _mainSceneSupportsInterfaceOrientation:a3];
  v10 = [(SBDeviceApplicationSceneHandle *)self _interfaceOrientationFromUserResizing];
  if (v10)
  {
LABEL_4:

    return v10;
  }

  if ([v6 classicAppPhoneAppRunningOnPad])
  {
    v10 = [(SBDeviceApplicationSceneHandle *)self _classicPhoneOnPadActivationOrientationForOrientation:a3];
    goto LABEL_11;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass())
    {
      if (!((SBFEffectiveDeviceClass() != 1) | v8 & 1))
      {
LABEL_10:
        v11 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
        v12 = [v11 uiClientSettings];
        v10 = [v12 sb_effectiveInterfaceOrientation];

LABEL_11:
        if (v10)
        {
          return v10;
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
    v14 = [MEMORY[0x277D75418] currentDevice];
    v15 = [v14 userInterfaceIdiom] != 0;

    if (((v15 | v8) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (v9)
  {
    v16 = [(SBApplicationSceneHandle *)self application];
    v17 = [v16 isMedusaCapable];

    if (v17)
    {
      v10 = a3;
      goto LABEL_4;
    }

    v18 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    v19 = [v18 uiClientSettings];
    v20 = [v19 supportedInterfaceOrientations];

    if (v20)
    {
      v10 = a3;
      if ((XBInterfaceOrientationMaskForInterfaceOrientation() & v20) != 0)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_22:

  return [(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation];
}

- (int64_t)_launchingInterfaceOrientationForOrientation:(int64_t)a3
{
  if ([(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation])
  {
    [SBDeviceApplicationSceneHandle _launchingInterfaceOrientationForOrientation:];
  }

  v5 = [(SBApplicationSceneHandle *)self application];
  if (!a3)
  {
    a3 = [SBApp interfaceOrientationForCurrentDeviceOrientation:1];
  }

  v6 = [(SBApplicationSceneHandle *)self application];
  v7 = [v6 isMedusaCapable];

  if (v7)
  {
    goto LABEL_6;
  }

  v12 = [SBApp homeScreenRotationStyle];
  v13 = [v5 info];
  v14 = [v13 builtOnOrAfterSDKVersion:@"8.0"];

  v15 = [(SBDeviceApplicationSceneHandle *)self _currentClassicModeAllowsLaunchingToAnySupportedOrientation];
  v16 = [(SBDeviceApplicationSceneHandle *)self _mainSceneSupportsInterfaceOrientation:a3];
  v8 = [(SBDeviceApplicationSceneHandle *)self _interfaceOrientationFromUserResizing];
  if (v8)
  {
    goto LABEL_12;
  }

  if ((((v12 != 0) | v14) & v15 & 1) == 0)
  {
    v21 = [(SBApplicationSceneHandle *)self application];
    v22 = [v21 classicAppPhoneAppRunningOnPad];

    if (!v22)
    {
      goto LABEL_7;
    }

    a3 = [(SBDeviceApplicationSceneHandle *)self _classicPhoneOnPadActivationOrientationForOrientation:a3];
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    if (a3)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v18 = +[SBOrientationLockManager sharedInstance];
  v19 = [v18 isUserLocked];

  if (v19)
  {
    v20 = [SBApp rawDeviceOrientationIgnoringOrientationLocks];
    if ((v20 - 5) >= 0xFFFFFFFFFFFFFFFCLL && v20 != a3)
    {
      a3 = v20;
      if ([(SBDeviceApplicationSceneHandle *)self _mainSceneSupportsInterfaceOrientation:v20])
      {
        goto LABEL_13;
      }
    }
  }

LABEL_7:
  v8 = [(SBDeviceApplicationSceneHandle *)self defaultInterfaceOrientation];
  if (v8)
  {
LABEL_12:
    a3 = v8;
    goto LABEL_13;
  }

  v9 = SBLogCommon();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v11 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
    NSLog(&cfstr_NoFallbackOrie.isa, v11);
  }

  a3 = 1;
LABEL_13:

  return a3;
}

- (int64_t)_classicPhoneOnPadActivationOrientationForOrientation:(int64_t)a3
{
  v5 = [(SBDeviceApplicationSceneHandle *)self _classicAppPhoneOnPadPrefersLandscape];
  v6 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v7 = [v6 uiClientSettings];
  v8 = [v7 supportedInterfaceOrientations];

  if (v8 && v5)
  {
    v9 = [(SBDeviceApplicationSceneHandle *)self currentInterfaceOrientation];
    if ((v9 - 3) <= 1)
    {
      v10 = v9;
      if ((v8 & (1 << v9)) != 0)
      {
        return v10;
      }
    }

    if ((a3 - 3) > 1)
    {
      if ((v8 & 0x10) != 0)
      {
        return 4;
      }

      if ((v8 & 8) != 0)
      {
        return 3;
      }
    }

    else
    {
      if ((v8 & (1 << a3)) != 0)
      {
        return a3;
      }

      if (a3 == 4)
      {
        v10 = 3;
      }

      else
      {
        v10 = 4;
      }

      if ((v8 & (1 << v10)) != 0)
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
  v3 = [(SBDeviceApplicationSceneHandle *)self activationConditionsData];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SBDeviceApplicationSceneHandle__noteActivationConditionsChanged__block_invoke;
  v5[3] = &unk_2783B8FE0;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
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
  v3 = [(SBDeviceApplicationSceneHandle *)self backgroundActivitiesToSuppress];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__SBDeviceApplicationSceneHandle__noteBackgroundActivitiesToSuppressChanged__block_invoke;
  v5[3] = &unk_2783B8FE0;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
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
  v3 = [(SBDeviceApplicationSceneHandle *)self contentPrefersToDisableClipping];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__SBDeviceApplicationSceneHandle__noteContentPrefersToDisableClippingChanged__block_invoke;
  v4[3] = &unk_2783B9008;
  v4[4] = self;
  v5 = v3;
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

- (int64_t)_initialMainSceneCompabilityMode:(id)a3
{
  v4 = a3;
  v5 = [(SBApplicationSceneHandle *)self application];
  v6 = [v5 isClassic];
  v7 = [v4 objectForActivationSetting:20];

  v8 = [v7 integerValue];
  if (_SBApplicationClassicModeIsClassic(v8) || v6)
  {
    if ([v5 classicAppZoomedIn])
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

- (void)_populateSettingsWithDefaultStatusBarHeight:(id)a3
{
  v4 = a3;
  v5 = [(SBDeviceApplicationSceneHandle *)self _defaultStatusBarHeights];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__SBDeviceApplicationSceneHandle__populateSettingsWithDefaultStatusBarHeight___block_invoke;
  v7[3] = &unk_2783B9030;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

uint64_t __78__SBDeviceApplicationSceneHandle__populateSettingsWithDefaultStatusBarHeight___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 integerValue];
  v7 = [v5 integerValue];

  return [v4 setDefaultStatusBarHeight:v7 forOrientation:v6];
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SBDeviceApplicationSceneHandle_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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

- (void)appProtectionAssistantShouldShieldDidChange:(id)a3
{
  v4 = [a3 shouldShield];
  preventKeyboardFocusDueToAppProtectionAssertion = self->_preventKeyboardFocusDueToAppProtectionAssertion;
  if (v4)
  {
    if (preventKeyboardFocusDueToAppProtectionAssertion)
    {
      return;
    }

    v7 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    v12 = [v7 identityToken];

    v6 = v12;
    if (v12)
    {
      v8 = +[SBWorkspace mainWorkspace];
      v9 = [v8 keyboardFocusController];
      v10 = [v9 preventFocusForSceneWithIdentityToken:v12 reason:@"SBDeviceApplicationSceneHandle is preventing focus for shielded scene due to app protection"];
      v11 = self->_preventKeyboardFocusDueToAppProtectionAssertion;
      self->_preventKeyboardFocusDueToAppProtectionAssertion = v10;

      v6 = v12;
    }
  }

  else
  {
    [(BSInvalidatable *)preventKeyboardFocusDueToAppProtectionAssertion invalidate];
    v6 = self->_preventKeyboardFocusDueToAppProtectionAssertion;
    self->_preventKeyboardFocusDueToAppProtectionAssertion = 0;
  }
}

- (void)layoutPreferencesCoordinator:(id)a3 didUpdatePreferencesForScene:(id)a4 transitionContext:(id)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __110__SBDeviceApplicationSceneHandle_layoutPreferencesCoordinator_didUpdatePreferencesForScene_transitionContext___block_invoke;
  v5[3] = &unk_2783B9058;
  v5[4] = self;
  [(SBDeviceApplicationSceneHandle *)self _enumerateObserversWithBlock:v5, a4, a5];
}

void __110__SBDeviceApplicationSceneHandle_layoutPreferencesCoordinator_didUpdatePreferencesForScene_transitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneHandleDidUpdateLayoutPreferences:*(a1 + 32)];
  }
}

- (void)layoutPreferencesCoordinatorDidRecognizeDoubleTapInDraggableArea:(id)a3
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

- (void)_didCreateScene:(id)a3
{
  v4 = a3;
  v5 = [v4 settings];
  self->_isEffectivelyForeground = [v5 isForeground];

  v33.receiver = self;
  v33.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v33 _didCreateScene:v4];
  if (SBFIsFlexibleWindowingUIAvailable())
  {
    v6 = [MEMORY[0x277D29510] sharedInstance];
    if ([v6 isStoreDemoModeEnabled:0])
    {
LABEL_7:

LABEL_8:
      [v4 addExtension:objc_opt_class()];
      goto LABEL_9;
    }

    v7 = [MEMORY[0x277D29510] sharedInstance];
    if ([v7 isPressDemoModeEnabled:0])
    {
LABEL_6:

      goto LABEL_7;
    }

    v8 = +[SBDefaults localDefaults];
    v9 = [v8 demoDefaults];
    if ([v9 allowsTestingStoreDemoMode])
    {

      goto LABEL_6;
    }

    v29 = [(SBApplicationSceneHandle *)self application];
    v30 = [v29 bundleIdentifier];
    v31 = [v30 isEqualToString:@"com.apple.QRCode"];

    if (v31)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  v10 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:1];
  v11 = [(SBDeviceApplicationSceneHandle *)self _definition];
  v12 = [v11 specification];
  v13 = [v12 uiSceneSessionRole];

  [v10 setObject:v13 forKey:@"sceneSessionRole"];
  v14 = [[SBModalAlertPresenter alloc] initWithScene:v4];
  modalAlertPresenter = self->_modalAlertPresenter;
  self->_modalAlertPresenter = v14;

  [(SBDeviceApplicationSceneHandle *)self _noteMainSceneBackgroundStyleChanged];
  v16 = [(SBApplicationSceneHandle *)self application];
  v17 = [v16 info];
  -[SBDeviceApplicationSceneHandle setWhitePointAdaptivityStyle:](self, "setWhitePointAdaptivityStyle:", [v17 whitePointAdaptivityStyle]);

  v18 = [v4 uiPresentationManager];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __50__SBDeviceApplicationSceneHandle__didCreateScene___block_invoke;
  v32[3] = &unk_2783A9210;
  v32[4] = self;
  [v18 modifyDefaultPresentationContext:v32];

  v19 = [v4 clientProcess];
  LODWORD(v17) = [v19 isApplicationProcess];

  if (v17)
  {
    v20 = [v4 clientProcess];
    [v20 addObserver:self];
  }

  v21 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  v22 = [v21 supportsMultitasking];

  if (v22)
  {
    v23 = [v4 ui_layoutPreferencesCoordinator];
    [v23 setDelegate:self];
  }

  if ([(SBDeviceApplicationSceneHandle *)self shouldApplyAppProtectionSceneSettings]&& !self->_appProtectionSubscription)
  {
    v24 = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
    v25 = [v24 addMonitor:self subjectMask:1];
    appProtectionSubscription = self->_appProtectionSubscription;
    self->_appProtectionSubscription = v25;
  }

  v27 = [(SBApplicationSceneHandle *)self application];
  v28 = [v27 appProtectionAssistant];
  [(SBDeviceApplicationSceneHandle *)self appProtectionAssistantShouldShieldDidChange:v28];

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

- (void)_didDestroyScene:(id)a3
{
  appProtectionSubscription = self->_appProtectionSubscription;
  v5 = a3;
  [(APSubjectMonitorSubscription *)appProtectionSubscription invalidate];
  v6 = self->_appProtectionSubscription;
  self->_appProtectionSubscription = 0;

  v7 = [v5 ui_layoutPreferencesCoordinator];
  [v7 setDelegate:0];

  v8 = [v5 clientProcess];
  [v8 removeObserver:self];

  [(SBModalAlertPresenter *)self->_modalAlertPresenter invalidate];
  modalAlertPresenter = self->_modalAlertPresenter;
  self->_modalAlertPresenter = 0;

  statusBarForcedHiddenReasons = self->_statusBarForcedHiddenReasons;
  self->_statusBarForcedHiddenReasons = 0;

  self->_isEffectivelyForeground = 0;
  [(SBDeviceApplicationSceneHandle *)self setAlertSuppressionContextsBySectionIdentifier:0];
  v11 = [(SBApplicationSceneHandle *)self application];
  v12 = [v11 info];
  -[SBDeviceApplicationSceneHandle setWhitePointAdaptivityStyle:](self, "setWhitePointAdaptivityStyle:", [v12 whitePointAdaptivityStyle]);

  v13.receiver = self;
  v13.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v13 _didDestroyScene:v5];
}

- (void)_didUpdateClientSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 settingsDiff];
  v6 = [v4 transitionContext];
  v17.receiver = self;
  v17.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v17 _didUpdateClientSettings:v4];
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

  [(UIApplicationSceneClientSettingsDiffInspector *)clientSettingsInspector inspectDiff:v5 withContext:v6];
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

- (void)_didUpdateSettingsWithDiff:(id)a3 previousSettings:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v10 _didUpdateSettingsWithDiff:a3 previousSettings:a4];
  v5 = [(SBDeviceApplicationSceneHandle *)self scene];
  v6 = [v5 settings];
  v7 = [v6 isForeground];

  if (self->_isEffectivelyForeground != v7)
  {
    self->_isEffectivelyForeground = v7;
    if ((v7 & 1) == 0)
    {
      [(SBDeviceApplicationSceneHandle *)self _resetSceneOrientationRequestState];
    }

    [(SBDeviceApplicationSceneHandle *)self _needsInterfaceAppearanceUpdate];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__SBDeviceApplicationSceneHandle__didUpdateSettingsWithDiff_previousSettings___block_invoke;
    v8[3] = &unk_2783B9008;
    v8[4] = self;
    v9 = v7;
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

- (void)_modifyProcessExecutionContext:(id)a3 fromRequestContext:(id)a4 entity:(id)a5
{
  v8 = a3;
  v18.receiver = self;
  v18.super_class = SBDeviceApplicationSceneHandle;
  v9 = a5;
  [(SBApplicationSceneHandle *)&v18 _modifyProcessExecutionContext:v8 fromRequestContext:a4 entity:v9];
  v10 = [(SBApplicationSceneHandle *)self application:v18.receiver];
  v11 = [v9 objectForActivationSetting:20];

  v12 = [v10 _defaultClassicMode];
  v13 = [v11 integerValue];
  if (v11)
  {
    v12 = v13;
  }

  v14 = [v8 environment];
  if (v14)
  {
    v15 = objc_alloc(MEMORY[0x277CBEB38]);
    v16 = [v8 environment];
    v17 = [v15 initWithDictionary:v16];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  if (v12 != -1)
  {
    [v10 _setCurrentClassicMode:v12];
    if (v11)
    {
      [v17 setObject:v11 forKey:@"CLASSIC_OVERRIDE"];
    }

    [v10 _setCurrentClassicMode:v12];
    if ([v10 classicAppPhoneAppRunningOnPad])
    {
      [v17 setObject:@"iphone" forKey:@"CLASSIC_SUFFIX"];
    }
  }

  [v8 setEnvironment:v17];
}

- (void)_modifyApplicationSceneSettings:(id)a3 fromRequestContext:(id)a4 entity:(id)a5
{
  v113 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v104.receiver = self;
  v104.super_class = SBDeviceApplicationSceneHandle;
  v99 = v9;
  [(SBApplicationSceneHandle *)&v104 _modifyApplicationSceneSettings:v8 fromRequestContext:v9 entity:v10];
  v11 = [(SBApplicationSceneHandle *)self application];
  v98 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  v12 = [v98 switcherController];
  v13 = [v11 isClassic];
  v102 = v12;
  v14 = [v12 windowManagementContext];
  v15 = [v14 isChamoisOrFlexibleWindowing];

  v16 = [v10 BOOLForActivationSetting:72];
  v17 = v13;
  if ((v13 & 1) == 0)
  {
    v17 = v13;
    if (v15)
    {
      v17 = ([v11 supportsChamoisSceneResizing] | v16) ^ 1;
    }
  }

  if (v13)
  {
    v18 = 1;
  }

  else
  {
    v18 = [v11 supportsChamoisOnExternalDisplay] ^ 1;
  }

  v19 = SBFIsShellSceneKitAvailable();
  v20 = [v11 supportsChamoisOnExternalDisplay];
  v101 = v11;
  if (v19)
  {
    if (v20)
    {
      v21 = [v8 displayIdentity];
      if ([v21 isContinuityDisplay])
      {
        v22 = 1;
      }

      else
      {
        v23 = [v8 displayIdentity];
        v22 = [v23 isMainDisplay];
      }

      goto LABEL_15;
    }
  }

  else if (v20)
  {
    v21 = [v8 displayIdentity];
    v22 = [v21 isContinuityDisplay];
LABEL_15:

    goto LABEL_16;
  }

  v22 = 1;
LABEL_16:
  v24 = [v8 displayConfiguration];
  if (((v18 | v17) & 1) != 0 || v22)
  {
    v25 = [MEMORY[0x277D0AA90] mainConfiguration];
    v26 = [v101 restrictedClassicModeDisplayConfigurationForDisplayConfiguration:v25];
    if (v17)
    {
      [v101 defaultLaunchingSizeForDisplayConfiguration:v26];
      BSRectWithSize();
      [v8 setFrame:?];
    }

    if ((v18 | v22))
    {
      if (v18)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      [v8 setDisplayConfiguration:v27];
    }
  }

  v28 = [v8 displayConfiguration];
  v29 = [v28 isEqual:v24];

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v24;
  }

  [v8 sb_setDisplayConfigurationForSceneManagers:v30];
  if (v15)
  {
    v31 = [v8 sb_displayIdentityForSceneManagers];
    v32 = [v31 isExternal];

    v33 = v99;
    if (v22 & 1 | ((v32 & 1) == 0))
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

  [v8 setScreenBoundsIgnoresSceneOrientation:v34];

  v35 = [SBApp modalAlertPresentationCoordinator];
  [v8 setCanShowAlerts:{objc_msgSend(v35, "canShowApplicationModalAlerts")}];

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
    v39 = [v37 delegate];
    v40 = SBFSafeProtocolCast();

    if (!v40)
    {
      [SBDeviceApplicationSceneHandle _modifyApplicationSceneSettings:fromRequestContext:entity:];
    }

    [v40 updateOrientationSceneSettingsForParticipant:v8];
    v41 = SBLogTraitsArbiter();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v8 interfaceOrientation];
      v43 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
      *buf = 134218242;
      v106 = v42;
      v107 = 2112;
      v108 = v43;
      _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "[DeviceSceneHandle] Did set interfaceOrientation[%ld] on scene with identifier[%@]", buf, 0x16u);
    }

    goto LABEL_42;
  }

  v37 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v97 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
    *buf = 138412290;
    v106 = v97;
    _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "[DeviceSceneHandle] Participant not found for scene identifier: %@", buf, 0xCu);
  }

LABEL_42:

  [(SBDeviceApplicationSceneHandle *)self _populateSettingsWithDefaultStatusBarHeight:v8];
  v44 = [v10 layoutRole];
  if (v44 == 3)
  {
    v45 = 2;
  }

  else
  {
    v45 = 1;
  }

  [(SBDeviceApplicationSceneHandle *)self _modifySafeAreaInsetsOnApplicationSceneSettings:v8 isFloating:v44 == 3];
  v46 = [(SBDeviceApplicationSceneHandle *)self displayEdgeInfoForLayoutEnvironment:v45];
  [v46 sb_applyDisplayEdgeInfoToSceneSettings:v8];
  v47 = [(SBDeviceApplicationSceneHandle *)self _sceneCornerRadiusConfigurationFromRequestContext:v33 forEntity:v10];
  [v8 setCornerRadiusConfiguration:v47];

  [v8 setStatusBarParts:{-[SBDeviceApplicationSceneHandle statusBarParts](self, "statusBarParts")}];
  [v8 setStatusBarAvoidanceFrame:{self->_statusBarAvoidanceFrame.origin.x, self->_statusBarAvoidanceFrame.origin.y, self->_statusBarAvoidanceFrame.size.width, self->_statusBarAvoidanceFrame.size.height}];
  v100 = [v102 windowManagementContext];
  v103 = [v8 ui_safeAreaSettings];
  if (v103)
  {
    v48 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
    [v48 _boundsForInterfaceOrientation:{objc_msgSend(v48, "_interfaceOrientation")}];
    v49 = [v33 layoutState];
    [v49 interfaceOrientation];

    _UIConvertRectFromOrientationToOrientation();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    [v8 convertFrameInRect:?];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    if ([v100 isFlexibleWindowingEnabled])
    {
      v66 = [v10 activationSettings];
      v67 = [(SBDeviceApplicationSceneHandle *)self _safeAreaCornerInsetResolverForApplicationFrame:v66 screenBounds:v59 activationSettings:v61, v63, v65, v51, v53, v55, v57];

      v68 = [v103 safeAreaCornerInsetResolver];
      v69 = [v68 isEqual:v67];

      if ((v69 & 1) == 0)
      {
        [v103 setSafeAreaCornerInsetResolver:v67];
      }
    }

    preferredSafeAreaSettings = self->_preferredSafeAreaSettings;
    if (preferredSafeAreaSettings)
    {
      v71 = [(_UISceneSafeAreaSettings *)preferredSafeAreaSettings safeAreaEdgeInsetResolver];
    }

    else
    {
      v72 = [v10 activationSettings];
      v71 = [(SBDeviceApplicationSceneHandle *)self safeAreaEdgeInsetResolverForApplicationFrame:v72 screenBounds:v59 activationSettings:v61, v63, v65, v51, v53, v55, v57];
    }

    v73 = [v103 safeAreaEdgeInsetResolver];
    v74 = [v73 isEqual:v71];

    if ((v74 & 1) == 0)
    {
      [v103 setSafeAreaEdgeInsetResolver:v71];
    }
  }

  v75 = [(SBApplicationSceneHandle *)self application];
  v76 = [v75 info];
  v77 = [v76 supportedUserInterfaceStyle];

  if (!v77)
  {
    v78 = SBApp;
    v79 = [v8 sb_displayIdentityForSceneManagers];
    v80 = [v78 userInterfaceStyleProviderForDisplay:v79];
    v77 = [v80 currentStyle];
  }

  v81 = SBLogContinuitySession();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v82 = @"Unspecified";
    if (v77 == 1)
    {
      v82 = @"Light";
    }

    if (v77 == 2)
    {
      v83 = @"Dark";
    }

    else
    {
      v83 = v82;
    }

    v84 = [v8 displayIdentity];
    v85 = [v8 sb_displayIdentityForSceneManagers];
    [(SBDeviceApplicationSceneHandle *)self succinctDescription];
    v86 = v10;
    v88 = v87 = v46;
    *buf = 138544130;
    v106 = v83;
    v33 = v99;
    v107 = 2114;
    v108 = v84;
    v109 = 2114;
    v110 = v85;
    v111 = 2114;
    v112 = v88;
    _os_log_impl(&dword_21ED4E000, v81, OS_LOG_TYPE_DEFAULT, "modifying scene setting userInterfaceStyle to %{public}@ displayIdentity: %{public}@ forSceneManagers: %{public}@ %{public}@ ", buf, 0x2Au);

    v46 = v87;
    v10 = v86;
  }

  [v8 setUserInterfaceStyle:v77];
  [v8 setEnhancedWindowingEnabled:{-[SBDeviceApplicationSceneHandle _isEnhancedWindowingEffectivelyEnabled](self, "_isEnhancedWindowingEffectivelyEnabled")}];
  if ([(SBDeviceApplicationSceneHandle *)self shouldApplyAppProtectionSceneSettings])
  {
    v89 = [(SBApplicationSceneHandle *)self application];
    v90 = [SBApplicationAppProtectionAssistant assistantForApplication:v89];

    v91 = SBLogAppProtection();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v92 = [v90 shouldShield];
      *buf = 67109120;
      LODWORD(v106) = v92;
      _os_log_impl(&dword_21ED4E000, v91, OS_LOG_TYPE_DEFAULT, "modifying scene setting underAppProtection to %d", buf, 8u);
    }

    if ([v90 shouldShield])
    {
      v93 = [v8 transientLocalSettings];
      [v93 setFlag:1 forSetting:*MEMORY[0x277D77528]];
    }
  }

  if ([v8 conformsToProtocol:&unk_2835FD268])
  {
    v94 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
    v95 = [v94 homeScreenController];

    v96 = [v95 currentHomeScreenIconStyleConfiguration];
    [v8 setIconStyleConfiguration:v96];
  }
}

- (void)setOccluded:(BOOL)a3
{
  if (self->_occludedByApplication != a3)
  {
    self->_occludedByApplication = a3;
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
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = v3;
  if (v3)
  {
    if (self->_occludedByApplication)
    {
      v5 = MEMORY[0x277CCAE60];
      v6 = [v3 settings];
      [v6 frame];
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
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = v3;
  if (v3)
  {
    if (self->_occludedBySystemUI)
    {
      v5 = MEMORY[0x277CCAE60];
      v6 = [v3 settings];
      [v6 frame];
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
    v13 = self;
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

- (void)_modifySafeAreaInsetsOnApplicationSceneSettings:(id)a3 isFloating:(BOOL)a4
{
  v6 = a3;
  v7 = [(SBApplicationSceneHandle *)self application];
  if ([v7 isClassic])
  {
    v8 = [MEMORY[0x277D77750] sb_displayEdgeInfoForApplication:v7];
  }

  else
  {
    if (a4)
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
  [v8 sb_applyDisplayEdgeInfoToSceneSettings:v6];
}

void __58__SBDeviceApplicationSceneHandle__defaultStatusBarHeights__block_invoke()
{
  v0 = _defaultStatusBarHeights_sEnumerator;
  _defaultStatusBarHeights_sEnumerator = &unk_28336E5F8;
}

- (id)_sceneCornerRadiusConfigurationFromRequestContext:(id)a3 forEntity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBApplicationSceneHandle *)self application];
  v9 = +[SBPlatformController sharedInstance];
  v10 = [v6 displayIdentity];
  v11 = [SBApp windowSceneManager];
  v12 = [v11 windowSceneForDisplayIdentity:v10];

  v13 = [v12 switcherController];
  v14 = [v13 windowManagementContext];
  if (([v9 isRoundCornerPhone] & 1) == 0 && (objc_msgSend(v9, "isRoundCornerPad") & 1) == 0)
  {
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    if (![v14 isChamoisOrFlexibleWindowing])
    {
      goto LABEL_20;
    }
  }

  v58 = v14;
  v55 = v12;
  v56 = v9;
  v19 = v7;
  v20 = [v13 contentViewController];
  v21 = [v20 liveOverlayForSceneHandle:self];

  v57 = v6;
  v22 = [v6 applicationSceneEntityForLayoutRole:1];

  v23 = [v21 isMaximized];
  v24 = [v8 isClassic];
  v25 = [v10 UIScreen];
  v26 = [v25 traitCollection];
  [v26 displayCornerRadius];
  v28 = v27;

  [v21 cornerRadii];
  v30 = v29;
  v17 = v31;
  v16 = v32;
  v15 = v33;
  if (v24)
  {
    -[SBApplication _screenTypeForClassicMode:](v8, [v8 _classicMode]);
    SBHDisplayCornerRadiusForScreenType();
    v35 = v34;
    v36 = SBHScreenTypeForCurrentDevice();
    [SBApplication _unobscuredScreenTypeForScreenType:v36];
    SBHDisplayCornerRadiusForScreenType();
    v18 = v37;
    if ([v58 isChamoisOrFlexibleWindowing])
    {
      if (v23)
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
      if ([v8 classicAppFullScreen])
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
    if (v23)
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
    v7 = v19;
    v6 = v57;
    goto LABEL_18;
  }

  v7 = v19;
  v6 = v57;
  if ([v58 isMedusaEnabled])
  {
    v44 = [v57 applicationSceneEntityForLayoutRole:?];

    v45 = [v57 applicationSceneEntityForLayoutRole:3];

    v9 = v56;
    if (v45 == v7 || (v15 = 0.0, v16 = 0.0, v17 = 0.0, v18 = 0.0, v44))
    {
      +[SBMedusaDomain rootSettings];
      v46 = v54 = v44;
      v47 = [v57 applicationSceneEntityForLayoutRole:2];

      [v46 cornerRadiusForFloatingApps];
      v49 = v48;
      [v46 cornerRadiusForInnerCorners];
      v51 = 0.0;
      if (v45 == v7)
      {
        v51 = v49;
      }

      v52 = v47 == v7;
      v6 = v57;
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

      if (v22 == v7)
      {
        v15 = v50;
      }

      else
      {
        v15 = v53;
      }

      if (v22 == v7)
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
  v14 = v58;
LABEL_20:
  v38 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  if (v38 == 1)
  {
    v39 = v18;
  }

  else
  {
    v39 = v15;
  }

  if (v38 == 1)
  {
    v40 = v17;
  }

  else
  {
    v40 = v16;
  }

  if (v38 == 1)
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

- (void)_modifyApplicationSceneClientSettings:(id)a3 fromRequestContext:(id)a4 entity:(id)a5 initialSceneSettings:(id)a6
{
  v10 = a3;
  v22.receiver = self;
  v22.super_class = SBDeviceApplicationSceneHandle;
  v11 = a6;
  v12 = a5;
  [(SBApplicationSceneHandle *)&v22 _modifyApplicationSceneClientSettings:v10 fromRequestContext:a4 entity:v12 initialSceneSettings:v11];
  v13 = [(SBApplicationSceneHandle *)self application];
  v14 = [v11 interfaceOrientation];
  [v10 setInterfaceOrientation:v14];
  v15 = [v11 interfaceOrientationMode];

  if (v15 == 1)
  {
    [v10 setSupportedInterfaceOrientations:{-[SBDeviceApplicationSceneHandle _mainSceneSupportedInterfaceOrientations](self, "_mainSceneSupportedInterfaceOrientations")}];
  }

  [v10 setBackgroundStyle:{-[SBDeviceApplicationSceneHandle backgroundStyle](self, "backgroundStyle")}];
  [v10 setProximityDetectionModes:1];
  v16 = [v12 activationSettings];
  [v10 setStatusBarModernStyle:{-[SBDeviceApplicationSceneHandle _statusBarStyleWithActivationSettings:](self, "_statusBarStyleWithActivationSettings:", v16)}];

  v17 = [v12 activationSettings];
  [v10 setStatusBarHidden:{-[SBDeviceApplicationSceneHandle isStatusBarHiddenForActivationSettings:withOrientation:](self, "isStatusBarHiddenForActivationSettings:withOrientation:", v17, v14)}];

  [(SBDeviceApplicationSceneHandle *)self statusBarAlpha];
  [v10 setStatusBarAlpha:?];
  [v10 setDefaultStatusBarStyle:{_SBStatusBarLegacyStyleFromStyle(-[SBDeviceApplicationSceneHandle defaultStatusBarStyle](self, "defaultStatusBarStyle"))}];
  [v10 setDefaultStatusBarHidden:{-[SBDeviceApplicationSceneHandle defaultStatusBarHiddenForOrientation:](self, "defaultStatusBarHiddenForOrientation:", v14)}];
  v21 = 0.0;
  v18 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
  v19 = [v13 _defaultPNGNameFromSuspensionSettingsWithExpiration:&v21 sceneID:v18];

  [v10 setDefaultPNGName:v19];
  [v10 setDefaultPNGExpirationTime:v21];
  v20 = [v12 activationSettings];

  [v10 setCompatibilityMode:{-[SBDeviceApplicationSceneHandle _initialMainSceneCompabilityMode:](self, "_initialMainSceneCompabilityMode:", v20)}];
  [v10 setReachabilitySupported:1];
  [v10 setWhitePointAdaptivityStyle:{-[SBDeviceApplicationSceneHandle whitePointAdaptivityStyle](self, "whitePointAdaptivityStyle")}];
}

- (void)_modifyApplicationTransitionContext:(id)a3 fromRequestContext:(id)a4 entity:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = SBDeviceApplicationSceneHandle;
  [(SBApplicationSceneHandle *)&v15 _modifyApplicationTransitionContext:a3 fromRequestContext:v8 entity:v9];
  v10 = [v8 request];
  v11 = [v10 source];

  v12 = [v8 previousEntities];
  if ([v12 containsObject:v9])
  {
LABEL_6:

    goto LABEL_7;
  }

  v13 = [v8 entities];
  v14 = [v13 containsObject:v9];

  if (v14)
  {
    if (v11 != 11)
    {
      [(SBDeviceApplicationSceneHandle *)self setLastActivationSource:v11];
    }

    v12 = [v9 objectForActivationSetting:46];
    [(SBDeviceApplicationSceneHandle *)self setLastActivationIconLeafIdentifier:v12];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_noteDidMoveFromSceneManager:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBDeviceApplicationSceneHandle;
  [(SBApplicationSceneHandle *)&v6 _noteDidMoveFromSceneManager:a3];
  v4 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  v5 = [v4 assistantController];
  [v5 removeObserver:self];

  [(SBDeviceApplicationSceneHandle *)self _didUpdateDisplayIdentity];
  [(SBDeviceApplicationSceneHandle *)self _updateCapturingContentForAdditionalRenderingDestination];
}

- (void)_noteReplacedWithSceneHandle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBDeviceApplicationSceneHandle;
  [(SBDeviceApplicationSceneHandle *)&v9 _noteReplacedWithSceneHandle:v4];
  v5 = objc_opt_class();
  v6 = v4;
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

- (void)applicationSceneHandle:(id)a3 appendToSceneSettings:(id)a4 fromRequestContext:(id)a5 entity:(id)a6
{
  v8 = a4;
  v9 = [a5 displayIdentity];
  [(SBDeviceApplicationSceneHandle *)self _updateIsCapturingContentForAdditionalRenderingDestinationOfMutableSceneSettings:v8 withDisplayIdentity:v9];
}

- (void)_updateSceneHostingInfoForSnapshottingWithAssertion:(id)a3 forceUpdate:(BOOL)a4
{
  v6 = a3;
  v7 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if ([v7 isValid])
  {
    v8 = [v6 contextId];
    v9 = [v6 renderId];
    v10 = [v7 uiSettings];
    v11 = v10;
    if (a4 || [v10 hostContextIdentifierForSnapshotting] == v8 && objc_msgSend(v11, "scenePresenterRenderIdentifierForSnapshotting") == v9)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __98__SBDeviceApplicationSceneHandle__updateSceneHostingInfoForSnapshottingWithAssertion_forceUpdate___block_invoke;
      v12[3] = &__block_descriptor_44_e43_v16__0__UIMutableApplicationSceneSettings_8l;
      v13 = v8;
      v12[4] = v9;
      [v7 updateUISettingsWithBlock:v12];
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

- (id)_sceneHostingInfoForSnapshottingAssertionWithView:(id)a3
{
  v4 = a3;
  v5 = [v4 window];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [v5 _contextId];
    v9 = [v4 layer];
    RenderId = CALayerGetRenderId();

    v11 = MEMORY[0x277CCACA8];
    v12 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
    v13 = [v11 stringWithFormat:@"%@-%lu-%lu", v12, v8, RenderId];

    objc_initWeak(&location, self);
    v14 = [_SBDeviceApplicationSceneHandleSnapshottingAssertion alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__SBDeviceApplicationSceneHandle__sceneHostingInfoForSnapshottingAssertionWithView___block_invoke;
    v16[3] = &unk_2783B90A0;
    objc_copyWeak(&v17, &location);
    v7 = [(_SBDeviceApplicationSceneHandleSnapshottingAssertion *)v14 initWithIdentifier:v13 forReason:@"SnapshottingMetadata" contextId:v8 renderId:RenderId invalidationBlock:v16];
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

- (void)_addSnapshottingInfoAssertion:(id)a3
{
  v4 = a3;
  snapshottingInfoAssertions = self->_snapshottingInfoAssertions;
  obj = v4;
  if (!snapshottingInfoAssertions)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = self->_snapshottingInfoAssertions;
    self->_snapshottingInfoAssertions = v6;

    v4 = obj;
    snapshottingInfoAssertions = self->_snapshottingInfoAssertions;
  }

  [(NSMutableArray *)snapshottingInfoAssertions addObject:v4];
  objc_storeWeak(&self->_currentSnapshottingInfoAssertion, obj);
  [(SBDeviceApplicationSceneHandle *)self _updateSceneHostingInfoForSnapshottingWithAssertion:obj forceUpdate:1];
}

- (void)_removeSnapshottingInfoAssertion:(id)a3
{
  snapshottingInfoAssertions = self->_snapshottingInfoAssertions;
  v5 = a3;
  [(NSMutableArray *)snapshottingInfoAssertions removeObject:v5];
  WeakRetained = objc_loadWeakRetained(&self->_currentSnapshottingInfoAssertion);

  if (WeakRetained == v5)
  {
    v7 = [(NSMutableArray *)self->_snapshottingInfoAssertions lastObject];
    objc_storeWeak(&self->_currentSnapshottingInfoAssertion, v7);
    [(SBDeviceApplicationSceneHandle *)self _updateSceneHostingInfoForSnapshottingWithAssertion:v7 forceUpdate:0];
  }
}

- (id)newSceneViewWithReferenceSize:(CGSize)a3 contentOrientation:(int64_t)a4 containerOrientation:(int64_t)a5 hostRequester:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a6;
  v12 = [[SBDeviceApplicationSceneView alloc] initWithSceneHandle:self referenceSize:a4 contentOrientation:a5 containerOrientation:v11 hostRequester:width, height];

  return v12;
}

- (id)newScenePlaceholderContentContextWithActivationSettings:(id)a3
{
  v3 = a3;
  v4 = [[SBDeviceApplicationScenePlaceholderContentContext alloc] initWithActivationSettings:v3];

  return v4;
}

- (id)newSceneViewController
{
  v3 = [SBDeviceApplicationSceneViewController alloc];

  return [(SBDeviceApplicationSceneViewController *)v3 initWithSceneHandle:self];
}

- (void)applicationProcessDidExit:(id)a3 withContext:(id)a4
{
  v5 = a4;
  v4 = v5;
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

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBDeviceApplicationSceneHandle;
  v4 = a3;
  v5 = [(SBDeviceApplicationSceneHandle *)&v12 descriptionBuilderWithMultilinePrefix:v4];
  [v5 setActiveMultilinePrefix:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SBDeviceApplicationSceneHandle_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];

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

- (id)_sceneDataStoreCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBApplicationSceneHandle *)self application];
  v6 = [v5 _dataStore];
  v7 = [(SBDeviceApplicationSceneHandle *)self sceneIdentifier];
  v8 = [v6 sceneStoreForIdentifier:v7 creatingIfNecessary:v3];

  return v8;
}

- (int64_t)_statusBarStyleWithActivationSettings:(id)a3
{
  v4 = [a3 objectForActivationSetting:5];
  v5 = [v4 scheme];

  if (!v5 || (v6 = [(SBDeviceApplicationSceneHandle *)self _defaultStatusBarStyleFromSceneDataStore], v6 == -1))
  {
    v8 = [(SBDeviceApplicationSceneHandle *)self statusBarStateProvider];
    v7 = [v8 statusBarStyle];
  }

  else
  {
    v7 = _SBStatusBarStyleFromLegacyStyle(v6);
  }

  return v7;
}

- (void)_updateIdleTimerForReason:(id)a3
{
  v7 = a3;
  v4 = [(SBDeviceApplicationSceneHandle *)self _generateIdleTimerBehavior];
  v5 = [(SBDeviceApplicationSceneHandle *)self _idleTimerCoordinator];
  v6 = [v5 idleTimerProvider:self didProposeBehavior:v4 forReason:v7];
}

- (void)_updateIsCapturingContentForAdditionalRenderingDestinationOfMutableSceneSettings:(id)a3 withDisplayIdentity:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v20 isCapturingContentForAdditionalRenderingDestination];
  if ([v6 isContinuityDisplay])
  {
    v8 = [SBApp windowSceneManager];
    v9 = [v8 windowSceneForDisplayIdentity:v6];

    v10 = [v9 _FBSScene];
    v11 = [v10 settings];
    v12 = objc_opt_class();
    v13 = v11;
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

    v16 = [v15 isCapturingContentForAdditionalRenderingDestination];
    [v20 setIsCapturingContentForAdditionalRenderingDestination:v16];
  }

  else
  {
    [v20 setIsCapturingContentForAdditionalRenderingDestination:0];
  }

  if (v7 != [v20 isCapturingContentForAdditionalRenderingDestination])
  {
    v17 = [v20 isCapturingContentForAdditionalRenderingDestination];
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = v18;
    if (v17)
    {
      [v18 addObserver:self selector:sel__updateCapturingContentForAdditionalRenderingDestination name:*MEMORY[0x277D76E90] object:0];
    }

    else
    {
      [v18 removeObserver:self name:*MEMORY[0x277D76E90] object:0];
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
  v3 = [(SBDeviceApplicationSceneHandle *)self _computeActivityMode];
  if (self->_computedActivityMode != v3)
  {
    self->_computedActivityMode = v3;

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
    v3 = [(NSHashTable *)self->_activityModeAssertions allObjects];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) activityMode];
          if (v7 <= v9)
          {
            v7 = v9;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 settings];
    v6 = [v5 activityMode];
    computedActivityMode = self->_computedActivityMode;

    if (computedActivityMode != v6)
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
  v3 = [(SBDeviceApplicationSceneHandle *)self _computeJetsamMode];
  if (self->_computedJetsamMode != v3)
  {
    self->_computedJetsamMode = v3;

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
    v3 = [(NSHashTable *)self->_jetsamModeAssertions allObjects];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) jetsamMode];
          if (v7 <= v9)
          {
            v7 = v9;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(SBDeviceApplicationSceneHandle *)self _computeResourceElevation];
  if (self->_computedResourceElevation != v3)
  {
    self->_computedResourceElevation = v3;

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
    v3 = [(NSHashTable *)self->_resourceElevationAssertions allObjects];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) resourceElevation];
          if (v6 <= v9)
          {
            v6 = v9;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v2 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  if (v2)
  {
    v3 = FBSSceneJetsamPriorityCreate();
    v4 = [v2 settings];
    v5 = [v4 jetsamPriority];

    if (v5 != v3)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __55__SBDeviceApplicationSceneHandle__updateJetsamPriority__block_invoke;
      v6[3] = &__block_descriptor_34_e33_v16__0__FBSMutableSceneSettings_8l;
      v7 = v3;
      [v2 updateSettingsWithBlock:v6];
    }
  }
}

- (void)_reevaluateActiveAppearanceFromAssertions
{
  v3 = [(SBDeviceApplicationSceneHandle *)self _computeActiveAppearance];
  if (v3 != self->_computedActiveAppearance)
  {
    self->_computedActiveAppearance = v3;

    [(SBDeviceApplicationSceneHandle *)self _updateInterfaceActiveAppearance];
  }
}

- (int64_t)_computeActiveAppearance
{
  v3 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  v4 = [v3 assistantController];
  v5 = [v4 isOccludingSystemContent];

  v6 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v7 = [v6 settings];
  v8 = [v7 isForeground];

  result = 0;
  if (v8 && (v5 & 1) == 0)
  {
    if ([(NSMutableArray *)self->_activeAppearanceAssertions count])
    {
      v10 = [(NSMutableArray *)self->_activeAppearanceAssertions lastObject];
      v11 = [v10 activeAppearance];

      return v11;
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
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v4 = [v3 renderingEnvironment];
  v5 = v4;
  if (v3 && v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__SBDeviceApplicationSceneHandle__updateInterfaceActiveAppearance__block_invoke;
    v6[3] = &unk_2783B8EA8;
    v7 = v4;
    v8 = self;
    [v3 performUpdate:v6];
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

- (id)_safeAreaCornerInsetResolverForApplicationFrame:(CGRect)a3 screenBounds:(CGRect)a4 activationSettings:(id)a5
{
  v23 = 0u;
  v24 = 0u;
  [(SBDeviceApplicationSceneHandle *)self windowControlsLayoutForApplicationFrame:a5 screenBounds:a3.origin.x activationSettings:a3.origin.y, a3.size.width, a3.size.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  if ([(SBDeviceApplicationSceneHandle *)self _supportsSolariumSafeAreas]&& v23 == 2)
  {
    preferredSafeAreaSettings = self->_preferredSafeAreaSettings;
    if (preferredSafeAreaSettings)
    {
      v7 = [(_UISceneSafeAreaSettings *)preferredSafeAreaSettings safeAreaCornerInsetResolver];
    }

    else
    {
      v8 = MEMORY[0x277D76620];
      v9 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      v10 = [*v8 userInterfaceLayoutDirection];
      v11 = objc_alloc(MEMORY[0x277D76200]);
      v12 = *MEMORY[0x277CBF3A8];
      if (v9 == 1)
      {
        v13 = *MEMORY[0x277CBF3A8];
      }

      else
      {
        v13 = *&v24 + 45.0;
      }

      if (v9 == 1)
      {
        v14 = *(MEMORY[0x277CBF3A8] + 8);
      }

      else
      {
        v14 = *(&v24 + 1) + 32.0;
      }

      if (v10 == 1)
      {
        v15 = *&v24 + 45.0;
      }

      else
      {
        v15 = *MEMORY[0x277CBF3A8];
      }

      *v18 = v13;
      *&v18[1] = v14;
      if (v10 == 1)
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
      v7 = [v11 initWithSafeAreaCornerInsets:v18];
    }
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D76200]);
  }

  return v7;
}

- (BOOL)_supportsWindowControls
{
  v2 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  v3 = [v2 switcherController];
  v4 = [v3 windowManagementContext];
  if (_UISolariumEnabled())
  {
    v5 = [v4 isFlexibleWindowingEnabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBIdleTimerCoordinating)_idleTimerCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);

  return WeakRetained;
}

- (BOOL)_classicAppPhoneOnPadPrefersLandscape
{
  v3 = [(SBApplicationSceneHandle *)self application];
  v4 = [v3 _classicAppScaledPhoneOnPad];

  if (!v4)
  {
    return 0;
  }

  v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:0];
  v6 = [v5 safeObjectForKey:@"classicPhoneAppPrefersLandscape" ofType:objc_opt_class()];
  v7 = [v6 BOOLValue];

  return v7;
}

- (void)_setClassicAppPhoneOnPadPrefersLandscape:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBApplicationSceneHandle *)self application];
  v6 = [v5 _classicAppScaledPhoneOnPad];

  if (v6)
  {
    v8 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:1];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [v8 setObject:v7 forKey:@"classicPhoneAppPrefersLandscape"];
  }
}

- (BOOL)_classicAppPhoneOnPadSupportsOldStyleMixedOrientation
{
  v3 = [(SBApplicationSceneHandle *)self application];
  if ([v3 _classicAppScaledPhoneOnPad])
  {
    v4 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
    v5 = [v4 switcherController];
    v6 = [v5 windowManagementContext];
    v7 = [v6 isChamoisOrFlexibleWindowing] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_updateDisableMultitaskingWhileForegroundAssertionIfNeeded
{
  v3 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v15 = [v3 uiClientSettings];

  if (objc_opt_respondsToSelector())
  {
    v4 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
    v5 = [v4 uiSettings];

    if (([v15 disablesMultitaskingWhileForeground] & 1) != 0 || (-[SBApplicationSceneHandle application](self, "application"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.QRCode"), v7, v6, v8))
    {
      if ([v5 isForeground])
      {
        v9 = [v5 deactivationReasons];
        v10 = [v5 isForeground];
        if (!v9)
        {
          if (!self->_disableMultitaskingAssertion)
          {
            v11 = +[SBSceneManagerCoordinator sharedInstance];
            v12 = [v11 sceneHandleDisableMultitaskingAssertionManager];
            v13 = [v12 acquireDisableMultitaskingAssertionForSceneHandle:self];
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
        v10 = [v5 isForeground];
      }

      if (v10)
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

- (int64_t)_preferredSizingPolicyForContentOrientation:(int64_t)a3 containerOrientation:(int64_t)a4
{
  v7 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  v8 = [v7 switcherController];

  v9 = [v8 windowManagementContext];
  v10 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v11 = [v10 settings];
  v12 = [v11 sb_displayIdentityForSceneManagers];

  v13 = [(SBApplicationSceneHandle *)self application];
  v14 = [v13 preferredSizingPolicyForSwitcherWindowManagementContext:v9 displayIdentity:v12 contentOrientation:a3 containerOrientation:a4];

  return v14;
}

- (unint64_t)_supportedSizingPoliciesForContentOrientation:(int64_t)a3 containerOrientation:(int64_t)a4
{
  v7 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  v8 = [v7 switcherController];

  v9 = [v8 windowManagementContext];
  v10 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v11 = [v10 settings];
  v12 = [v11 sb_displayIdentityForSceneManagers];

  v13 = [(SBApplicationSceneHandle *)self application];
  v14 = [v13 supportedSizingPoliciesForSwitcherWindowManagementContext:v9 displayIdentity:v12 contentOrientation:a3 containerOrientation:a4];

  return v14;
}

- (BOOL)_supportsMultiWindowLayouts
{
  v3 = [(SBDeviceApplicationSceneHandle *)self _windowScene];
  v4 = [v3 switcherController];
  v5 = [v4 windowManagementContext];

  v6 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v7 = [v6 settings];
  v8 = [v7 sb_displayIdentityForSceneManagers];

  v9 = [(SBApplicationSceneHandle *)self application];
  LOBYTE(v6) = [v9 supportsMultiWindowLayoutsForSwitcherWindowManagementContext:v5 displayIdentity:v8];

  return v6;
}

- (BOOL)_supportsMixedOrientationOnWindowScene:(id)a3
{
  v4 = [a3 switcherController];
  v5 = [v4 windowManagementContext];

  v6 = [(SBDeviceApplicationSceneHandle *)self sceneIfExists];
  v7 = [v6 settings];
  v8 = [v7 sb_displayIdentityForSceneManagers];

  v9 = [(SBApplicationSceneHandle *)self application];
  LOBYTE(v6) = [v9 supportsMixedOrientationForSwitcherWindowManagementContext:v5 displayIdentity:v8];

  return v6;
}

- (void)_setInterfaceOrientationFromUserResizing:(int64_t)a3
{
  if (self->_interfaceOrientationFromUserResizeIfAny != a3)
  {
    self->_interfaceOrientationFromUserResizeIfAny = a3;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:a3 != 0];
      v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
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

- (void)_setSettingUpSceneOrientationRequest:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:?];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [v5 setObject:v4 forKey:@"settingUpSceneOrientationRequest"];
}

- (void)_setInitialDeviceOrientationFromSceneOrientationRequestSetup:(int64_t)a3
{
  v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:a3 != 0];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 setObject:v4 forKey:@"initialDeviceOrientationFromSceneOrientationRequestSetup"];
}

- (void)_setSupportedInterfaceOrientationsFromSceneOrientationRequestSetup:(unint64_t)a3
{
  v5 = [(SBDeviceApplicationSceneHandle *)self _sceneDataStoreCreatingIfNecessary:a3 != 0];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
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
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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