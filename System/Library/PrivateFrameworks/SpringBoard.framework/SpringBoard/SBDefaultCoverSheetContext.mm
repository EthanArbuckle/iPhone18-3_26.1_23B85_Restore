@interface SBDefaultCoverSheetContext
- (BOOL)dismissModalContentIfVisibleAnimated:(BOOL)a3;
- (BOOL)expectsPocketTouches;
- (BOOL)isCarPlayActiveForNotifications;
- (BOOL)isEmergencyCallSupported;
- (BOOL)isHomeAffordanceDoubleTapGestureEnabled;
- (BOOL)isLogoutSupported;
- (BOOL)isSystemAssistantExperienceAvailable;
- (BOOL)isSystemAssistantExperienceEnabled;
- (BOOL)tapToWakeEnabled;
- (SBDefaultCoverSheetContext)initWithWindowScene:(id)a3;
- (SBWindowScene)_sbWindowScene;
- (double)effectiveReachabilityYOffset;
- (id)_todayViewControllerIfAvailable;
- (id)applicationHosterForHostContextProvider:(id)a3;
- (id)applicationHosterForTraitsHostContextProvider:(id)a3;
- (id)createUnlockRequest;
- (id)createUnlockRequestForActionContext:(id)a3;
- (id)dismissableOverlaysOutOf:(unint64_t)a3;
- (id)inhibitCaptureButtonActionAssertionWithReason:(id)a3;
- (id)newOverlayController;
- (id)requestProximityMode:(int)a3 forReason:(id)a4;
- (id)traitsAwareViewControllerForApplicationHoster:(id)a3 targetWindow:(id)a4;
- (int64_t)resetState;
- (int64_t)restoreState;
- (void)_todayViewControllerIfAvailable;
- (void)addAssistantControllerObserver:(id)a3;
- (void)assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:(id)a3;
- (void)assistantDidChangeSystemAssistantExperienceEnablement:(id)a3;
- (void)assistantDidChangeSystemAssistantExperiencePersistentSiriEnablement:(id)a3;
- (void)attemptUnlockWithPasscode:(id)a3 finishUIUnlock:(BOOL)a4 completion:(id)a5;
- (void)deactivateReachability;
- (void)logout;
- (void)newOverlayController;
- (void)overlayController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6;
- (void)proximitySensorManager:(id)a3 crudeProximityDidChange:(BOOL)a4;
- (void)registerView:(id)a3 delegate:(id)a4;
- (void)removeAssistantControllerObserver:(id)a3;
- (void)setBiometricAutoUnlockingDisabled:(BOOL)a3 forReason:(id)a4;
- (void)setPasscodeVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)stopMediaPlaybackForSource:(int64_t)a3;
- (void)unlockWithRequest:(id)a3 completion:(id)a4;
- (void)unregisterView:(id)a3;
@end

@implementation SBDefaultCoverSheetContext

- (BOOL)isLogoutSupported
{
  v2 = [SBApp userSessionController];
  v3 = [v2 canLogout];

  return v3;
}

- (BOOL)isHomeAffordanceDoubleTapGestureEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v3 = [WeakRetained assistantController];
  v4 = [v3 isHomeAffordanceDoubleTapGestureEnabled];

  return v4;
}

- (BOOL)isEmergencyCallSupported
{
  v2 = +[SBTelephonyManager sharedTelephonyManager];
  v3 = [v2 emergencyCallSupported];

  return v3;
}

- (id)newOverlayController
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  if (!WeakRetained)
  {
    [(SBDefaultCoverSheetContext *)a2 newOverlayController];
  }

  v5 = WeakRetained;
  v6 = [WeakRetained homeScreenController];
  v7 = [v6 iconManager];
  v8 = [v6 coverSheetTodayViewController];
  v9 = [v7 listLayoutProvider];
  v10 = [SBHomeScreenOverlayController alloc];
  LOBYTE(v14) = 1;
  v11 = [(SBHomeScreenOverlayController *)v10 initWithListLayoutProvider:v9 windowLevel:v5 windowScene:@"SBTraitsParticipantRoleCoverSheetHomeScreenOverlay" traitsRole:11 zStackParticipantIdentifier:109 screenEdgeSystemGestureType:110 indirectScreenEdgeSystemGestureType:*MEMORY[0x277D76EE8] scrunchSystemGestureType:111 secure:v14];
  [(SBHomeScreenOverlayController *)v11 setLeadingSidebarViewController:v8];
  v12 = [(SBHomeScreenOverlayController *)v11 viewController];
  [v8 setContainerViewController:v12];

  [v8 setDismissalDelegate:v11];
  [(SBHomeScreenOverlayController *)v11 addHomeScreenOverlayObserver:self];
  [(SBHomeScreenOverlayController *)v11 addHomeScreenOverlayObserver:v8];

  return v11;
}

- (SBDefaultCoverSheetContext)initWithWindowScene:(id)a3
{
  v4 = a3;
  v70.receiver = self;
  v70.super_class = SBDefaultCoverSheetContext;
  v5 = [(SBDefaultCoverSheetContext *)&v70 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sbWindowScene, v4);
    v7 = [SBApp authenticationController];
    authenticationAssertionProvider = v6->_authenticationAssertionProvider;
    v6->_authenticationAssertionProvider = v7;

    v9 = [SBApp authenticationController];
    authenticationStatusProvider = v6->_authenticationStatusProvider;
    v6->_authenticationStatusProvider = v9;

    v11 = [SBApp authenticationController];
    passcodeFieldChangeObserver = v6->_passcodeFieldChangeObserver;
    v6->_passcodeFieldChangeObserver = v11;

    v13 = objc_alloc(MEMORY[0x277D65F08]);
    v14 = [MEMORY[0x277D67D50] sharedInstance];
    v15 = [v13 initWithDateProvider:v14];
    dateProvider = v6->_dateProvider;
    v6->_dateProvider = v15;

    v17 = [SBApp lockOutController];
    lockOutStatusProvider = v6->_lockOutStatusProvider;
    v6->_lockOutStatusProvider = v17;

    v19 = objc_alloc_init(SBDashBoardLegibilityProvider);
    legibilityProvider = v6->_legibilityProvider;
    v6->_legibilityProvider = v19;

    v21 = +[SBUIController sharedInstance];
    powerStatusProvider = v6->_powerStatusProvider;
    v6->_powerStatusProvider = v21;

    v23 = [@"SBUIACStatusChangedNotification" copy];
    powerStatusChangeNotificationName = v6->_powerStatusChangeNotificationName;
    v6->_powerStatusChangeNotificationName = v23;

    v25 = objc_alloc_init(SBDashBoardThermalStatusProvider);
    thermalStatusProvider = v6->_thermalStatusProvider;
    v6->_thermalStatusProvider = v25;

    v27 = [MEMORY[0x277D67C98] sharedInstance];
    biometricResource = v6->_biometricResource;
    v6->_biometricResource = v27;

    v29 = +[SBBacklightController sharedInstance];
    screenStateProvider = v6->_screenStateProvider;
    v6->_screenStateProvider = v29;

    v31 = +[SBScreenWakeAnimationController sharedInstance];
    screenWakeAnimationController = v6->_screenWakeAnimationController;
    v6->_screenWakeAnimationController = v31;

    v33 = +[SBSyncController sharedInstance];
    syncController = v6->_syncController;
    v6->_syncController = v33;

    v35 = objc_alloc_init(SBDashBoardWallpaperProvider);
    wallpaperProvider = v6->_wallpaperProvider;
    v6->_wallpaperProvider = v35;

    v37 = +[SBWallpaperController sharedInstance];
    wallpaperSnapshotUpdater = v6->_wallpaperSnapshotUpdater;
    v6->_wallpaperSnapshotUpdater = v37;

    v39 = objc_alloc_init(SBDashBoardHomeAffordanceController);
    homeAffordanceController = v6->_homeAffordanceController;
    v6->_homeAffordanceController = v39;

    v41 = objc_alloc_init(SBDashBoardModalHomeAffordanceController);
    modalHomeAffordanceController = v6->_modalHomeAffordanceController;
    v6->_modalHomeAffordanceController = v41;

    v43 = objc_alloc_init(SBDashBoardPlatterHomeGestureManager);
    platterHomeGestureManager = v6->_platterHomeGestureManager;
    v6->_platterHomeGestureManager = v43;

    v45 = [SBDashBoardStatusBarController alloc];
    v46 = [v4 statusBarManager];
    v47 = [(SBDashBoardStatusBarController *)v45 initWithWindowSceneStatusBarManager:v46];
    statusBarController = v6->_statusBarController;
    v6->_statusBarController = v47;

    v49 = +[SBActionHandler sharedInstance];
    contentActionProvider = v6->_contentActionProvider;
    v6->_contentActionProvider = v49;

    v51 = [[SBDashBoardApplicationInformer alloc] initWithWindowScene:v4];
    applicationInformer = v6->_applicationInformer;
    v6->_applicationInformer = v51;

    v53 = objc_alloc_init(SBDashBoardNotificationPresenter);
    notificationPresenter = v6->_notificationPresenter;
    v6->_notificationPresenter = v53;

    v55 = [SBApp proximitySensorManager];
    proximitySensorManager = v6->_proximitySensorManager;
    v6->_proximitySensorManager = v55;

    v57 = objc_alloc_init(MEMORY[0x277CBEB58]);
    proximitySensorProviderObservers = v6->_proximitySensorProviderObservers;
    v6->_proximitySensorProviderObservers = v57;

    [(SBProximitySensorManager *)v6->_proximitySensorManager addObserver:v6];
    v59 = +[SBUIController sharedInstance];
    accessoryStatusProvider = v6->_accessoryStatusProvider;
    v6->_accessoryStatusProvider = v59;

    v61 = [@"SBUIAccessoryAttachedNotification" copy];
    accessoryAttachedNotificationName = v6->_accessoryAttachedNotificationName;
    v6->_accessoryAttachedNotificationName = v61;

    v63 = [@"SBUIAccessoryDetachedNotification" copy];
    accessoryDetachedNotificationName = v6->_accessoryDetachedNotificationName;
    v6->_accessoryDetachedNotificationName = v63;

    v65 = [@"SBUIAccessoryAnimationStatusChangedNotification" copy];
    accessoryAnimationStatusChangedNotificationName = v6->_accessoryAnimationStatusChangedNotificationName;
    v6->_accessoryAnimationStatusChangedNotificationName = v65;

    v67 = [v4 homeAffordanceInteractionManager];
    homeAffordanceInteractionProvider = v6->_homeAffordanceInteractionProvider;
    v6->_homeAffordanceInteractionProvider = v67;
  }

  return v6;
}

- (id)dismissableOverlaysOutOf:(unint64_t)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    v7 = [WeakRetained controlCenterController];

    if (v7)
    {
      [v5 addObject:v7];
    }
  }

  if ((v3 & 8) != 0)
  {
    v8 = +[SBAssistantController sharedInstance];
    [v5 addObject:v8];
  }

  return v5;
}

- (void)attemptUnlockWithPasscode:(id)a3 finishUIUnlock:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = a3;
  v9 = +[SBLockScreenManager sharedInstance];
  [v9 attemptUnlockWithPasscode:v8 finishUIUnlock:v5 completion:v7];
}

- (void)setBiometricAutoUnlockingDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = +[SBLockScreenManager sharedInstance];
  [v6 setBiometricAutoUnlockingDisabled:v4 forReason:v5];
}

- (void)setPasscodeVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[SBLockScreenManager sharedInstance];
  [v6 setPasscodeVisible:v5 animated:v4];
}

- (BOOL)isCarPlayActiveForNotifications
{
  v2 = [SBApp notificationDispatcher];
  v3 = [v2 isCarDestinationActive];

  return v3;
}

- (void)stopMediaPlaybackForSource:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 6;
  }

  else
  {
    v3 = 0;
  }

  v4 = +[SBMediaController sharedInstance];
  [v4 stopForEventSource:v3];
}

- (void)deactivateReachability
{
  v2 = +[SBReachabilityManager sharedInstance];
  [v2 deactivateReachability];
}

- (double)effectiveReachabilityYOffset
{
  v2 = +[SBReachabilityManager sharedInstance];
  [v2 effectiveReachabilityYOffset];
  v4 = v3;

  return v4;
}

- (int64_t)resetState
{
  v2 = [(SBSyncController *)self->_syncController resetState];
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (int64_t)restoreState
{
  v2 = [(SBSyncController *)self->_syncController restoreState]- 1;
  if (v2 < 4)
  {
    return v2 + 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)expectsPocketTouches
{
  v2 = +[SBCoverSheetPresentationManager sharedInstance];
  v3 = [v2 hasBeenDismissedSinceKeybagLock];

  return v3 ^ 1;
}

- (BOOL)tapToWakeEnabled
{
  v2 = +[SBLockScreenManager sharedInstance];
  v3 = [v2 shouldTapToWake];

  return v3;
}

- (id)createUnlockRequest
{
  v2 = objc_alloc_init(CSConcreteUnlockRequest);

  return v2;
}

- (id)createUnlockRequestForActionContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CSConcreteUnlockRequest);
  -[CSConcreteUnlockRequest setSource:](v4, "setSource:", [v3 source]);
  -[CSConcreteUnlockRequest setIntent:](v4, "setIntent:", [v3 intent]);
  v5 = [v3 identifier];
  [(CSConcreteUnlockRequest *)v4 setName:v5];

  v6 = [v3 confirmedNotInPocket];
  [(CSConcreteUnlockRequest *)v4 setConfirmedNotInPocket:v6];

  return v4;
}

- (void)unlockWithRequest:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = objc_alloc_init(SBLockScreenUnlockRequest);
  -[SBLockScreenUnlockRequest setSource:](v10, "setSource:", [v6 source]);
  -[SBLockScreenUnlockRequest setIntent:](v10, "setIntent:", [v6 intent]);
  v7 = [v6 name];
  [(SBLockScreenUnlockRequest *)v10 setName:v7];

  -[SBLockScreenUnlockRequest setWantsBiometricPresentation:](v10, "setWantsBiometricPresentation:", [v6 wantsBiometricPresentation]);
  v8 = [v6 confirmedNotInPocket];

  [(SBLockScreenUnlockRequest *)v10 setConfirmedNotInPocket:v8];
  v9 = +[SBLockScreenManager sharedInstance];
  [v9 unlockWithRequest:v10 completion:v5];
}

- (void)logout
{
  v2 = objc_opt_new();
  v3 = [v2 isCurrentUserAnonymous];

  if (v3)
  {
    v5 = objc_opt_new();
    [v5 setLogoutActionHandler:&__block_literal_global_223];
    v4 = +[SBAlertItemsController sharedInstance];
    [v4 activateAlertItem:v5];
  }

  else
  {
    v5 = [SBApp userSessionController];
    [v5 logout];
  }
}

void __36__SBDefaultCoverSheetContext_logout__block_invoke()
{
  v0 = [SBApp userSessionController];
  [v0 logout];
}

- (BOOL)dismissModalContentIfVisibleAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBDefaultCoverSheetContext *)self _todayViewControllerIfAvailable];
  v5 = [v4 isSpotlightVisible];
  if (v5)
  {
    [v4 dismissSpotlightAnimated:v3];
  }

  return v5;
}

- (id)_todayViewControllerIfAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  if (!WeakRetained)
  {
    [(SBDefaultCoverSheetContext *)a2 _todayViewControllerIfAvailable];
  }

  v4 = WeakRetained;
  v5 = [WeakRetained homeScreenController];
  v6 = [v5 coverSheetTodayViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)overlayController:(id)a3 didChangePresentationProgress:(double)a4 newPresentationProgress:(double)a5 fromLeading:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  if (v6)
  {
    v19 = v10;
    [v10 presentationProgress];
    v12 = v11;
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    if (!WeakRetained)
    {
      [SBDefaultCoverSheetContext overlayController:a2 didChangePresentationProgress:? newPresentationProgress:? fromLeading:?];
    }

    v14 = WeakRetained;
    v15 = [WeakRetained homeScreenController];
    v16 = [v15 iconManager];
    v17 = v16;
    if (a4 <= 0.0 == v12 > 0.0)
    {
      v18 = v12 > 0.0 && a4 <= 0.0;
      [v16 setOverlayCoverSheetTodayViewVisible:v18];
    }

    v10 = v19;
  }
}

- (id)applicationHosterForHostContextProvider:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBDefaultCoverSheetContext applicationHosterForHostContextProvider:a2];
  }

  v5 = v4;
  v6 = [v4 hostedAppBundleIdentifier];
  v7 = +[SBApplicationController sharedInstance];
  v8 = [v7 applicationWithBundleIdentifier:v6];

  v9 = [MEMORY[0x277D3EB48] specification];
  v10 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v8 generatingNewSceneIfRequiredWithSpecification:v9];
  v11 = [(SBDeviceApplicationScenePlaceholderContentContext *)[SBMutableDeviceApplicationScenePlaceholderContentContext alloc] initWithActivationSettings:v10];
  v12 = [[SBDashBoardHostedAppViewController alloc] initWithApplicationSceneEntity:v10];
  [(SBDashBoardHostedAppViewController *)v12 setPlaceholderContentContext:v11];
  [(SBDashBoardHostedAppViewController *)v12 setHostContextProvider:v5];

  return v12;
}

- (id)applicationHosterForTraitsHostContextProvider:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBDefaultCoverSheetContext applicationHosterForTraitsHostContextProvider:a2];
  }

  v5 = v4;
  v6 = [v4 hostedAppBundleIdentifier];
  v7 = +[SBApplicationController sharedInstance];
  v8 = [v7 applicationWithBundleIdentifier:v6];

  v9 = [MEMORY[0x277D3EB48] specification];
  v10 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v8 generatingNewSceneIfRequiredWithSpecification:v9];
  v11 = [(SBDeviceApplicationScenePlaceholderContentContext *)[SBMutableDeviceApplicationScenePlaceholderContentContext alloc] initWithActivationSettings:v10];
  v12 = [[SBDashBoardHostedAppViewController alloc] initWithApplicationSceneEntity:v10];
  [(SBDashBoardHostedAppViewController *)v12 setPlaceholderContentContext:v11];
  [(SBDashBoardHostedAppViewController *)v12 setHostContextProvider:v5];

  return v12;
}

- (id)traitsAwareViewControllerForApplicationHoster:(id)a3 targetWindow:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SBDashBoardTraitsAwareAppHostingViewController alloc] initWithAppHosting:v6 targetWindow:v5];

  return v7;
}

- (void)registerView:(id)a3 delegate:(id)a4
{
  v11 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  if (!WeakRetained)
  {
    [SBDefaultCoverSheetContext registerView:a2 delegate:?];
  }

  v9 = WeakRetained;
  v10 = [WeakRetained systemPointerInteractionManager];
  [v10 registerView:v11 delegate:v7];
}

- (void)unregisterView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v5 = [WeakRetained systemPointerInteractionManager];
  [v5 unregisterView:v4];
}

- (void)proximitySensorManager:(id)a3 crudeProximityDidChange:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  self->_objectInProximity = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_proximitySensorProviderObservers;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 proximitySensorProvider:self objectWithinProximityDidChange:{v4, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)requestProximityMode:(int)a3 forReason:(id)a4
{
  v4 = *&a3;
  v5 = SBApp;
  v6 = a4;
  v7 = [v5 HIDUISensorController];
  v8 = [v7 requestProximityMode:v4 forReason:v6];

  return v8;
}

- (BOOL)isSystemAssistantExperienceAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v3 = [WeakRetained assistantController];
  v4 = [v3 isSystemAssistantExperienceAvailable];

  return v4;
}

- (BOOL)isSystemAssistantExperienceEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v3 = [WeakRetained assistantController];
  v4 = [v3 isSystemAssistantExperienceEnabled];

  return v4;
}

- (void)addAssistantControllerObserver:(id)a3
{
  v4 = a3;
  assistantControllerObservers = self->_assistantControllerObservers;
  v10 = v4;
  if (!assistantControllerObservers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_assistantControllerObservers;
    self->_assistantControllerObservers = v6;

    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    v9 = [WeakRetained assistantController];
    [v9 addObserver:self];

    v4 = v10;
    assistantControllerObservers = self->_assistantControllerObservers;
  }

  [(NSHashTable *)assistantControllerObservers addObject:v4];
}

- (void)removeAssistantControllerObserver:(id)a3
{
  [(NSHashTable *)self->_assistantControllerObservers removeObject:a3];
  if (![(NSHashTable *)self->_assistantControllerObservers count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    v5 = [WeakRetained assistantController];
    [v5 removeObserver:self];

    assistantControllerObservers = self->_assistantControllerObservers;
    self->_assistantControllerObservers = 0;
  }
}

- (id)inhibitCaptureButtonActionAssertionWithReason:(id)a3
{
  v3 = SBApp;
  v4 = a3;
  v5 = [v3 captureButtonRestrictionCoordinator];
  v6 = [v5 inhibitCaptureButtonActionAssertionWithReason:v4];

  return v6;
}

- (void)assistantDidChangeSystemAssistantExperienceEnablement:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_assistantControllerObservers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 assistantDidChangeSystemAssistantExperienceEnablement:{self, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)assistantDidChangeSystemAssistantExperiencePersistentSiriEnablement:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_assistantControllerObservers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 assistantDidChangeSystemAssistantExperiencePersistentSiriEnablement:{self, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_assistantControllerObservers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:{self, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (SBWindowScene)_sbWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

  return WeakRetained;
}

- (void)newOverlayController
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"windowScene != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_todayViewControllerIfAvailable
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"windowScene != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)overlayController:(char *)a1 didChangePresentationProgress:newPresentationProgress:fromLeading:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"windowScene != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)applicationHosterForHostContextProvider:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"hostContextProvider != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)applicationHosterForTraitsHostContextProvider:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"hostContextProvider != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)registerView:(char *)a1 delegate:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_5_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"windowScene != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end