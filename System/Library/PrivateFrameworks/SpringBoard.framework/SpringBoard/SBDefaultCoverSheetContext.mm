@interface SBDefaultCoverSheetContext
- (BOOL)dismissModalContentIfVisibleAnimated:(BOOL)animated;
- (BOOL)expectsPocketTouches;
- (BOOL)isCarPlayActiveForNotifications;
- (BOOL)isEmergencyCallSupported;
- (BOOL)isHomeAffordanceDoubleTapGestureEnabled;
- (BOOL)isLogoutSupported;
- (BOOL)isSystemAssistantExperienceAvailable;
- (BOOL)isSystemAssistantExperienceEnabled;
- (BOOL)tapToWakeEnabled;
- (SBDefaultCoverSheetContext)initWithWindowScene:(id)scene;
- (SBWindowScene)_sbWindowScene;
- (double)effectiveReachabilityYOffset;
- (id)_todayViewControllerIfAvailable;
- (id)applicationHosterForHostContextProvider:(id)provider;
- (id)applicationHosterForTraitsHostContextProvider:(id)provider;
- (id)createUnlockRequest;
- (id)createUnlockRequestForActionContext:(id)context;
- (id)dismissableOverlaysOutOf:(unint64_t)of;
- (id)inhibitCaptureButtonActionAssertionWithReason:(id)reason;
- (id)newOverlayController;
- (id)requestProximityMode:(int)mode forReason:(id)reason;
- (id)traitsAwareViewControllerForApplicationHoster:(id)hoster targetWindow:(id)window;
- (int64_t)resetState;
- (int64_t)restoreState;
- (void)_todayViewControllerIfAvailable;
- (void)addAssistantControllerObserver:(id)observer;
- (void)assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:(id)enablement;
- (void)assistantDidChangeSystemAssistantExperienceEnablement:(id)enablement;
- (void)assistantDidChangeSystemAssistantExperiencePersistentSiriEnablement:(id)enablement;
- (void)attemptUnlockWithPasscode:(id)passcode finishUIUnlock:(BOOL)unlock completion:(id)completion;
- (void)deactivateReachability;
- (void)logout;
- (void)newOverlayController;
- (void)overlayController:(id)controller didChangePresentationProgress:(double)progress newPresentationProgress:(double)presentationProgress fromLeading:(BOOL)leading;
- (void)proximitySensorManager:(id)manager crudeProximityDidChange:(BOOL)change;
- (void)registerView:(id)view delegate:(id)delegate;
- (void)removeAssistantControllerObserver:(id)observer;
- (void)setBiometricAutoUnlockingDisabled:(BOOL)disabled forReason:(id)reason;
- (void)setPasscodeVisible:(BOOL)visible animated:(BOOL)animated;
- (void)stopMediaPlaybackForSource:(int64_t)source;
- (void)unlockWithRequest:(id)request completion:(id)completion;
- (void)unregisterView:(id)view;
@end

@implementation SBDefaultCoverSheetContext

- (BOOL)isLogoutSupported
{
  userSessionController = [SBApp userSessionController];
  canLogout = [userSessionController canLogout];

  return canLogout;
}

- (BOOL)isHomeAffordanceDoubleTapGestureEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  assistantController = [WeakRetained assistantController];
  isHomeAffordanceDoubleTapGestureEnabled = [assistantController isHomeAffordanceDoubleTapGestureEnabled];

  return isHomeAffordanceDoubleTapGestureEnabled;
}

- (BOOL)isEmergencyCallSupported
{
  v2 = +[SBTelephonyManager sharedTelephonyManager];
  emergencyCallSupported = [v2 emergencyCallSupported];

  return emergencyCallSupported;
}

- (id)newOverlayController
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  if (!WeakRetained)
  {
    [(SBDefaultCoverSheetContext *)a2 newOverlayController];
  }

  v5 = WeakRetained;
  homeScreenController = [WeakRetained homeScreenController];
  iconManager = [homeScreenController iconManager];
  coverSheetTodayViewController = [homeScreenController coverSheetTodayViewController];
  listLayoutProvider = [iconManager listLayoutProvider];
  v10 = [SBHomeScreenOverlayController alloc];
  LOBYTE(v14) = 1;
  v11 = [(SBHomeScreenOverlayController *)v10 initWithListLayoutProvider:listLayoutProvider windowLevel:v5 windowScene:@"SBTraitsParticipantRoleCoverSheetHomeScreenOverlay" traitsRole:11 zStackParticipantIdentifier:109 screenEdgeSystemGestureType:110 indirectScreenEdgeSystemGestureType:*MEMORY[0x277D76EE8] scrunchSystemGestureType:111 secure:v14];
  [(SBHomeScreenOverlayController *)v11 setLeadingSidebarViewController:coverSheetTodayViewController];
  viewController = [(SBHomeScreenOverlayController *)v11 viewController];
  [coverSheetTodayViewController setContainerViewController:viewController];

  [coverSheetTodayViewController setDismissalDelegate:v11];
  [(SBHomeScreenOverlayController *)v11 addHomeScreenOverlayObserver:self];
  [(SBHomeScreenOverlayController *)v11 addHomeScreenOverlayObserver:coverSheetTodayViewController];

  return v11;
}

- (SBDefaultCoverSheetContext)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v70.receiver = self;
  v70.super_class = SBDefaultCoverSheetContext;
  v5 = [(SBDefaultCoverSheetContext *)&v70 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sbWindowScene, sceneCopy);
    authenticationController = [SBApp authenticationController];
    authenticationAssertionProvider = v6->_authenticationAssertionProvider;
    v6->_authenticationAssertionProvider = authenticationController;

    authenticationController2 = [SBApp authenticationController];
    authenticationStatusProvider = v6->_authenticationStatusProvider;
    v6->_authenticationStatusProvider = authenticationController2;

    authenticationController3 = [SBApp authenticationController];
    passcodeFieldChangeObserver = v6->_passcodeFieldChangeObserver;
    v6->_passcodeFieldChangeObserver = authenticationController3;

    v13 = objc_alloc(MEMORY[0x277D65F08]);
    mEMORY[0x277D67D50] = [MEMORY[0x277D67D50] sharedInstance];
    v15 = [v13 initWithDateProvider:mEMORY[0x277D67D50]];
    dateProvider = v6->_dateProvider;
    v6->_dateProvider = v15;

    lockOutController = [SBApp lockOutController];
    lockOutStatusProvider = v6->_lockOutStatusProvider;
    v6->_lockOutStatusProvider = lockOutController;

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

    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    biometricResource = v6->_biometricResource;
    v6->_biometricResource = mEMORY[0x277D67C98];

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
    statusBarManager = [sceneCopy statusBarManager];
    v47 = [(SBDashBoardStatusBarController *)v45 initWithWindowSceneStatusBarManager:statusBarManager];
    statusBarController = v6->_statusBarController;
    v6->_statusBarController = v47;

    v49 = +[SBActionHandler sharedInstance];
    contentActionProvider = v6->_contentActionProvider;
    v6->_contentActionProvider = v49;

    v51 = [[SBDashBoardApplicationInformer alloc] initWithWindowScene:sceneCopy];
    applicationInformer = v6->_applicationInformer;
    v6->_applicationInformer = v51;

    v53 = objc_alloc_init(SBDashBoardNotificationPresenter);
    notificationPresenter = v6->_notificationPresenter;
    v6->_notificationPresenter = v53;

    proximitySensorManager = [SBApp proximitySensorManager];
    proximitySensorManager = v6->_proximitySensorManager;
    v6->_proximitySensorManager = proximitySensorManager;

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

    homeAffordanceInteractionManager = [sceneCopy homeAffordanceInteractionManager];
    homeAffordanceInteractionProvider = v6->_homeAffordanceInteractionProvider;
    v6->_homeAffordanceInteractionProvider = homeAffordanceInteractionManager;
  }

  return v6;
}

- (id)dismissableOverlaysOutOf:(unint64_t)of
{
  ofCopy = of;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (ofCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    controlCenterController = [WeakRetained controlCenterController];

    if (controlCenterController)
    {
      [v5 addObject:controlCenterController];
    }
  }

  if ((ofCopy & 8) != 0)
  {
    v8 = +[SBAssistantController sharedInstance];
    [v5 addObject:v8];
  }

  return v5;
}

- (void)attemptUnlockWithPasscode:(id)passcode finishUIUnlock:(BOOL)unlock completion:(id)completion
{
  unlockCopy = unlock;
  completionCopy = completion;
  passcodeCopy = passcode;
  v9 = +[SBLockScreenManager sharedInstance];
  [v9 attemptUnlockWithPasscode:passcodeCopy finishUIUnlock:unlockCopy completion:completionCopy];
}

- (void)setBiometricAutoUnlockingDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  v6 = +[SBLockScreenManager sharedInstance];
  [v6 setBiometricAutoUnlockingDisabled:disabledCopy forReason:reasonCopy];
}

- (void)setPasscodeVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  v6 = +[SBLockScreenManager sharedInstance];
  [v6 setPasscodeVisible:visibleCopy animated:animatedCopy];
}

- (BOOL)isCarPlayActiveForNotifications
{
  notificationDispatcher = [SBApp notificationDispatcher];
  isCarDestinationActive = [notificationDispatcher isCarDestinationActive];

  return isCarDestinationActive;
}

- (void)stopMediaPlaybackForSource:(int64_t)source
{
  if (source == 1)
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
  resetState = [(SBSyncController *)self->_syncController resetState];
  if (resetState == 2)
  {
    return 2;
  }

  else
  {
    return resetState == 1;
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
  hasBeenDismissedSinceKeybagLock = [v2 hasBeenDismissedSinceKeybagLock];

  return hasBeenDismissedSinceKeybagLock ^ 1;
}

- (BOOL)tapToWakeEnabled
{
  v2 = +[SBLockScreenManager sharedInstance];
  shouldTapToWake = [v2 shouldTapToWake];

  return shouldTapToWake;
}

- (id)createUnlockRequest
{
  v2 = objc_alloc_init(CSConcreteUnlockRequest);

  return v2;
}

- (id)createUnlockRequestForActionContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc_init(CSConcreteUnlockRequest);
  -[CSConcreteUnlockRequest setSource:](v4, "setSource:", [contextCopy source]);
  -[CSConcreteUnlockRequest setIntent:](v4, "setIntent:", [contextCopy intent]);
  identifier = [contextCopy identifier];
  [(CSConcreteUnlockRequest *)v4 setName:identifier];

  confirmedNotInPocket = [contextCopy confirmedNotInPocket];
  [(CSConcreteUnlockRequest *)v4 setConfirmedNotInPocket:confirmedNotInPocket];

  return v4;
}

- (void)unlockWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v10 = objc_alloc_init(SBLockScreenUnlockRequest);
  -[SBLockScreenUnlockRequest setSource:](v10, "setSource:", [requestCopy source]);
  -[SBLockScreenUnlockRequest setIntent:](v10, "setIntent:", [requestCopy intent]);
  name = [requestCopy name];
  [(SBLockScreenUnlockRequest *)v10 setName:name];

  -[SBLockScreenUnlockRequest setWantsBiometricPresentation:](v10, "setWantsBiometricPresentation:", [requestCopy wantsBiometricPresentation]);
  confirmedNotInPocket = [requestCopy confirmedNotInPocket];

  [(SBLockScreenUnlockRequest *)v10 setConfirmedNotInPocket:confirmedNotInPocket];
  v9 = +[SBLockScreenManager sharedInstance];
  [v9 unlockWithRequest:v10 completion:completionCopy];
}

- (void)logout
{
  v2 = objc_opt_new();
  isCurrentUserAnonymous = [v2 isCurrentUserAnonymous];

  if (isCurrentUserAnonymous)
  {
    userSessionController = objc_opt_new();
    [userSessionController setLogoutActionHandler:&__block_literal_global_223];
    v4 = +[SBAlertItemsController sharedInstance];
    [v4 activateAlertItem:userSessionController];
  }

  else
  {
    userSessionController = [SBApp userSessionController];
    [userSessionController logout];
  }
}

void __36__SBDefaultCoverSheetContext_logout__block_invoke()
{
  v0 = [SBApp userSessionController];
  [v0 logout];
}

- (BOOL)dismissModalContentIfVisibleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _todayViewControllerIfAvailable = [(SBDefaultCoverSheetContext *)self _todayViewControllerIfAvailable];
  isSpotlightVisible = [_todayViewControllerIfAvailable isSpotlightVisible];
  if (isSpotlightVisible)
  {
    [_todayViewControllerIfAvailable dismissSpotlightAnimated:animatedCopy];
  }

  return isSpotlightVisible;
}

- (id)_todayViewControllerIfAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  if (!WeakRetained)
  {
    [(SBDefaultCoverSheetContext *)a2 _todayViewControllerIfAvailable];
  }

  v4 = WeakRetained;
  homeScreenController = [WeakRetained homeScreenController];
  coverSheetTodayViewController = [homeScreenController coverSheetTodayViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = coverSheetTodayViewController;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)overlayController:(id)controller didChangePresentationProgress:(double)progress newPresentationProgress:(double)presentationProgress fromLeading:(BOOL)leading
{
  leadingCopy = leading;
  controllerCopy = controller;
  if (leadingCopy)
  {
    v19 = controllerCopy;
    [controllerCopy presentationProgress];
    v12 = v11;
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    if (!WeakRetained)
    {
      [SBDefaultCoverSheetContext overlayController:a2 didChangePresentationProgress:? newPresentationProgress:? fromLeading:?];
    }

    v14 = WeakRetained;
    homeScreenController = [WeakRetained homeScreenController];
    iconManager = [homeScreenController iconManager];
    v17 = iconManager;
    if (progress <= 0.0 == v12 > 0.0)
    {
      v18 = v12 > 0.0 && progress <= 0.0;
      [iconManager setOverlayCoverSheetTodayViewVisible:v18];
    }

    controllerCopy = v19;
  }
}

- (id)applicationHosterForHostContextProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    [SBDefaultCoverSheetContext applicationHosterForHostContextProvider:a2];
  }

  v5 = providerCopy;
  hostedAppBundleIdentifier = [providerCopy hostedAppBundleIdentifier];
  v7 = +[SBApplicationController sharedInstance];
  v8 = [v7 applicationWithBundleIdentifier:hostedAppBundleIdentifier];

  specification = [MEMORY[0x277D3EB48] specification];
  v10 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v8 generatingNewSceneIfRequiredWithSpecification:specification];
  v11 = [(SBDeviceApplicationScenePlaceholderContentContext *)[SBMutableDeviceApplicationScenePlaceholderContentContext alloc] initWithActivationSettings:v10];
  v12 = [[SBDashBoardHostedAppViewController alloc] initWithApplicationSceneEntity:v10];
  [(SBDashBoardHostedAppViewController *)v12 setPlaceholderContentContext:v11];
  [(SBDashBoardHostedAppViewController *)v12 setHostContextProvider:v5];

  return v12;
}

- (id)applicationHosterForTraitsHostContextProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    [SBDefaultCoverSheetContext applicationHosterForTraitsHostContextProvider:a2];
  }

  v5 = providerCopy;
  hostedAppBundleIdentifier = [providerCopy hostedAppBundleIdentifier];
  v7 = +[SBApplicationController sharedInstance];
  v8 = [v7 applicationWithBundleIdentifier:hostedAppBundleIdentifier];

  specification = [MEMORY[0x277D3EB48] specification];
  v10 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:v8 generatingNewSceneIfRequiredWithSpecification:specification];
  v11 = [(SBDeviceApplicationScenePlaceholderContentContext *)[SBMutableDeviceApplicationScenePlaceholderContentContext alloc] initWithActivationSettings:v10];
  v12 = [[SBDashBoardHostedAppViewController alloc] initWithApplicationSceneEntity:v10];
  [(SBDashBoardHostedAppViewController *)v12 setPlaceholderContentContext:v11];
  [(SBDashBoardHostedAppViewController *)v12 setHostContextProvider:v5];

  return v12;
}

- (id)traitsAwareViewControllerForApplicationHoster:(id)hoster targetWindow:(id)window
{
  windowCopy = window;
  hosterCopy = hoster;
  v7 = [[SBDashBoardTraitsAwareAppHostingViewController alloc] initWithAppHosting:hosterCopy targetWindow:windowCopy];

  return v7;
}

- (void)registerView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  if (!WeakRetained)
  {
    [SBDefaultCoverSheetContext registerView:a2 delegate:?];
  }

  v9 = WeakRetained;
  systemPointerInteractionManager = [WeakRetained systemPointerInteractionManager];
  [systemPointerInteractionManager registerView:viewCopy delegate:delegateCopy];
}

- (void)unregisterView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  systemPointerInteractionManager = [WeakRetained systemPointerInteractionManager];
  [systemPointerInteractionManager unregisterView:viewCopy];
}

- (void)proximitySensorManager:(id)manager crudeProximityDidChange:(BOOL)change
{
  changeCopy = change;
  v17 = *MEMORY[0x277D85DE8];
  self->_objectInProximity = change;
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
          [v11 proximitySensorProvider:self objectWithinProximityDidChange:{changeCopy, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)requestProximityMode:(int)mode forReason:(id)reason
{
  v4 = *&mode;
  v5 = SBApp;
  reasonCopy = reason;
  hIDUISensorController = [v5 HIDUISensorController];
  v8 = [hIDUISensorController requestProximityMode:v4 forReason:reasonCopy];

  return v8;
}

- (BOOL)isSystemAssistantExperienceAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  assistantController = [WeakRetained assistantController];
  isSystemAssistantExperienceAvailable = [assistantController isSystemAssistantExperienceAvailable];

  return isSystemAssistantExperienceAvailable;
}

- (BOOL)isSystemAssistantExperienceEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  assistantController = [WeakRetained assistantController];
  isSystemAssistantExperienceEnabled = [assistantController isSystemAssistantExperienceEnabled];

  return isSystemAssistantExperienceEnabled;
}

- (void)addAssistantControllerObserver:(id)observer
{
  observerCopy = observer;
  assistantControllerObservers = self->_assistantControllerObservers;
  v10 = observerCopy;
  if (!assistantControllerObservers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_assistantControllerObservers;
    self->_assistantControllerObservers = weakObjectsHashTable;

    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    assistantController = [WeakRetained assistantController];
    [assistantController addObserver:self];

    observerCopy = v10;
    assistantControllerObservers = self->_assistantControllerObservers;
  }

  [(NSHashTable *)assistantControllerObservers addObject:observerCopy];
}

- (void)removeAssistantControllerObserver:(id)observer
{
  [(NSHashTable *)self->_assistantControllerObservers removeObject:observer];
  if (![(NSHashTable *)self->_assistantControllerObservers count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
    assistantController = [WeakRetained assistantController];
    [assistantController removeObserver:self];

    assistantControllerObservers = self->_assistantControllerObservers;
    self->_assistantControllerObservers = 0;
  }
}

- (id)inhibitCaptureButtonActionAssertionWithReason:(id)reason
{
  v3 = SBApp;
  reasonCopy = reason;
  captureButtonRestrictionCoordinator = [v3 captureButtonRestrictionCoordinator];
  v6 = [captureButtonRestrictionCoordinator inhibitCaptureButtonActionAssertionWithReason:reasonCopy];

  return v6;
}

- (void)assistantDidChangeSystemAssistantExperienceEnablement:(id)enablement
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

- (void)assistantDidChangeSystemAssistantExperiencePersistentSiriEnablement:(id)enablement
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

- (void)assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:(id)enablement
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
    NSStringFromSelector(self);
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
    NSStringFromSelector(self);
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