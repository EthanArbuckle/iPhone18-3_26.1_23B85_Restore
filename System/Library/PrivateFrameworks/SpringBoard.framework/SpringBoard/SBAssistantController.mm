@interface SBAssistantController
+ (BOOL)isVisible;
+ (BOOL)shouldBreadcrumbLaunchedApplicationWithBundleIdentifier:(id)a3;
+ (SBAssistantController)sharedInstance;
+ (id)_activationSettingsWithPunchoutStyle:(int64_t)a3;
+ (id)defaultActivationSettings;
+ (id)sharedInstanceIfExists;
+ (void)bootstrapServices;
+ (void)sharedInstance;
+ (void)sharedInstanceIfExists;
- (BOOL)_isLocationTCCAlert:(id)a3;
- (BOOL)commandeerCaptureDropletPreludeForVisionInvocation:(id)a3 windowScene:(id)a4;
- (BOOL)contentObscuresEmbeddedDisplayScreen;
- (BOOL)isAmbientActive;
- (BOOL)isVisibleInWindowScene:(id)a3;
- (BOOL)requestPasscodeUnlockWithCompletion:(id)a3;
- (BOOL)shouldDismissSiriForRemoteTransientOverlayFromBundleIdentifier:(id)a3;
- (BOOL)shouldShowSystemVolumeHUDForCategory:(id)a3;
- (BOOL)siriPresentation:(id)a3 requestsDeviceUnlockWithPassword:(id)a4;
- (SBAssistantController)init;
- (SBIdleTimerCoordinating)_idleTimerCoordinator;
- (id)_currentSessionCreatingIfNeededWithFailureExplanation:(id *)a3;
- (id)_init;
- (id)_uiSceneTracker;
- (id)alwaysOnLiveRenderingAssertionRequested;
- (id)sessionForWindowScene:(id)a3;
- (id)systemApertureFramesIncludingBanners;
- (int64_t)idleTimerDuration;
- (void)_bioAuthenticated:(id)a3;
- (void)_deviceBlocked:(id)a3;
- (void)_dismissAssistantViewIfNecessaryWithAnimation:(int64_t)a3 factory:(id)a4 dismissalOptions:(id)a5 completion:(id)a6;
- (void)_dismissAssistantViewIfNecessaryWithAnimation:(int64_t)a3 factory:(id)a4 dismissalOptions:(id)a5 windowScene:(id)a6 completion:(id)a7;
- (void)_noteDeviceLockedOrBlocked;
- (void)_remoteLocked:(id)a3;
- (void)_setUnlockedDevice:(BOOL)a3;
- (void)_setVisible:(BOOL)a3;
- (void)_systemApertureFrameDidChange:(id)a3;
- (void)_systemAssistantExperienceAvailabilityDidChange;
- (void)_systemAssistantExperienceAvailabilityNotificationReceived;
- (void)_turnScreenOffWithCompletion:(id)a3;
- (void)_uiLocked:(id)a3;
- (void)_updateControlWidgetEligibility;
- (void)_updateHomeAffordanceDoubleTapGestureEnabled;
- (void)_updateSystemAssistantExperienceEnabled;
- (void)_updateSystemAssistantExperiencePersistentSiriEnabled;
- (void)_updateVisualIntelligenceControlEnabled;
- (void)_updateVisualSearchEnabled;
- (void)_updateWindowLevelForScene:(id)a3;
- (void)activationEligibilityDidChange;
- (void)addObserver:(id)a3;
- (void)alertItemsController:(id)a3 didActivateAlertItem:(id)a4;
- (void)alertItemsController:(id)a3 didDeactivateAlertItem:(id)a4 forReason:(int)a5;
- (void)applicationProcessDidChangeState:(id)a3;
- (void)assistantSession:(id)a3 didChangePresentationInWindowScene:(id)a4;
- (void)assistantSession:(id)a3 requestsDismissalWithDismissalOptions:(id)a4;
- (void)assistantSession:(id)a3 viewDidAppearInWindowScene:(id)a4;
- (void)assistantSession:(id)a3 viewDidDisappearInWindowScene:(id)a4;
- (void)assistantSession:(id)a3 viewWillAppearInWindowScene:(id)a4;
- (void)assistantSession:(id)a3 viewWillDisappearInWindowScene:(id)a4;
- (void)bannerManager:(id)a3 containerWillTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5;
- (void)bannerManager:(id)a3 presentable:(id)a4 willTransitionToSize:(CGSize)a5 withTransitionCoordinator:(id)a6;
- (void)bannerManager:(id)a3 willDismissPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6;
- (void)bannerManager:(id)a3 willPresentPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6;
- (void)dealloc;
- (void)deviceUnlockRequestedWithPassword:(id)a3;
- (void)dismissAssistantViewIfNecessaryForGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4 windowScene:(id)a5;
- (void)dismissAssistantViewInEverySceneIfNecessaryForGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4;
- (void)invalidateSystemApertureAssertionWithReason:(id)a3;
- (void)notifyAssistantOfApplicationTransition;
- (void)removeObserver:(id)a3;
- (void)requestTamaleLaunchAnimationLayerProviderWithCompletion:(id)a3;
- (void)restrictSystemApertureToDefaultLayoutWithReason:(id)a3;
- (void)setHomeAffordanceDoubleTapGestureEnabled:(BOOL)a3;
- (void)setSystemAssistantExperienceEnabled:(BOOL)a3;
- (void)setSystemAssistantExperiencePersistentSiriEnabled:(BOOL)a3;
- (void)setUISceneTracker:(id)a3;
- (void)setVisualIntelligenceControlEnabled:(BOOL)a3;
- (void)setVisualSearchEnabled:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)siriPresentation:(id)a3 acquireElevatedEffectsViewControllerAssertionWithReason:(id)a4 handler:(id)a5;
- (void)siriPresentation:(id)a3 didUpdateAudioCategoriesDisablingVolumeHUD:(id)a4;
- (void)siriPresentation:(id)a3 didUpdatePresentationOptions:(id)a4;
- (void)siriPresentation:(id)a3 isEnabledDidChange:(BOOL)a4;
- (void)siriPresentation:(id)a3 requestsDismissalOfEffectsViewControllerWithHandler:(id)a4;
- (void)siriPresentation:(id)a3 requestsDismissalWithOptions:(id)a4 withHandler:(id)a5;
- (void)siriPresentation:(id)a3 requestsPresentationOfEffectsViewController:(id)a4 withHandler:(id)a5;
- (void)siriPresentation:(id)a3 requestsPresentationWithOptions:(id)a4 withHandler:(id)a5;
- (void)siriPresentation:(id)a3 requestsPunchout:(id)a4 withHandler:(id)a5;
- (void)siriPresentation:(id)a3 willStartHostingSceneWithIdentifier:(id)a4 bundleIdentifier:(id)a5;
- (void)siriPresentation:(id)a3 willStopHostingSceneWithIdentifier:(id)a4 bundleIdentifier:(id)a5;
@end

@implementation SBAssistantController

+ (BOOL)isVisible
{
  v2 = +[SBAssistantController sharedInstanceIfExists];
  v3 = [v2 isVisible];

  return v3;
}

+ (id)sharedInstanceIfExists
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    +[SBAssistantController sharedInstanceIfExists];
  }

  v2 = __shared;

  return v2;
}

+ (SBAssistantController)sharedInstance
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    +[SBAssistantController sharedInstance];
  }

  v2 = __shared;
  if (!__shared)
  {
    kdebug_trace();
    v3 = [[SBAssistantController alloc] _init];
    v4 = __shared;
    __shared = v3;

    kdebug_trace();
    v2 = __shared;
  }

  return v2;
}

- (SBAssistantController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBAssistantController.m" lineNumber:186 description:@"-init is not allowed on SBAssistantController"];

  return 0;
}

- (id)_init
{
  v36 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = SBAssistantController;
  v2 = [(SBAssistantController *)&v27 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CF0C28]);
    v4 = [v3 initWithName:@"Siri" onQueue:MEMORY[0x277D85CD0]];
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v4;

    v6 = objc_alloc_init(SBWindowLevelAssertionManager);
    windowLevelAssertionManager = v2->_windowLevelAssertionManager;
    v2->_windowLevelAssertionManager = v6;

    [(SBWindowLevelAssertionManager *)v2->_windowLevelAssertionManager setDelegate:v2];
    if (MGGetBoolAnswer())
    {
      v8 = objc_alloc_init(MEMORY[0x277D61A00]);
      mainScreenSiriPresentation = v2->_mainScreenSiriPresentation;
      v2->_mainScreenSiriPresentation = v8;

      [(SiriPresentationSpringBoardMainScreenViewController *)v2->_mainScreenSiriPresentation setSiriPresentationControllerDelegate:v2];
      v2->_systemAssistantExperienceAvailable = AFHasGMSCapability();
      v10 = [objc_alloc(MEMORY[0x277D55168]) initWithDelegate:v2];
      activationSourceEligibility = v2->_activationSourceEligibility;
      v2->_activationSourceEligibility = v10;

      v12 = [[SBAssistantGestureConfiguration alloc] initWithSiriPresentationViewController:v2->_mainScreenSiriPresentation];
      gestureConfiguration = v2->_gestureConfiguration;
      v2->_gestureConfiguration = v12;

      v14 = [MEMORY[0x277CCAB98] defaultCenter];
      [v14 addObserver:v2 selector:sel__systemAssistantExperienceAvailabilityNotificationReceived name:*MEMORY[0x277CEF110] object:0];

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _SBAssistantControllerPreferencesDidChange, *MEMORY[0x277CEF5B0], 0, 0);
      [(SBAssistantController *)v2 _systemAssistantExperienceAvailabilityDidChange];
    }

    v16 = +[SBSystemAnimationDomain rootSettings];
    settings = v2->_settings;
    v2->_settings = v16;

    [(PTSettings *)v2->_settings addKeyObserver:v2];
    [(SBAssistantController *)v2 _prototypeSettingsChanged];
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v2 selector:sel__systemApertureFrameDidChange_ name:@"SBSystemApertureLayoutDidChangeNotification" object:0];

    v19 = +[SBAlertItemsController sharedInstance];
    [v19 addObserver:v2];

    v20 = [SBApp bannerManager];
    [v20 addTransitionObserver:v2];

    v2->_shouldDismissForWorkspaceTransitions = 1;
    v21 = SBLogSiri();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(SBAssistantController *)v2 isSystemAssistantExperienceEnabled];
      v23 = [(SBAssistantController *)v2 isSystemAssistantExperiencePersistentSiriEnabled];
      v24 = [(SBAssistantController *)v2 isHomeAffordanceDoubleTapGestureEnabled];
      v25 = [(SBAssistantController *)v2 isVisualSearchEnabled];
      *buf = 67109888;
      v29 = v22;
      v30 = 1024;
      v31 = v23;
      v32 = 1024;
      v33 = v24;
      v34 = 1024;
      v35 = v25;
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Initializing with isSystemAssistantExperienceEnabled: %{BOOL}u; isSystemAssistantExperiencePersistentSiriEnabled: %{BOOL}u; isHomeAffordanceDoubleTapGestureEnabled: %{BOOL}u; isVisualSearchEnabled: %{BOOL}u", buf, 0x1Au);
    }
  }

  return v2;
}

- (void)dealloc
{
  if (MGGetBoolAnswer())
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277CEF5B0], 0);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6 = +[SBAlertItemsController sharedInstance];
  [v6 removeObserver:self];

  v7 = [SBApp bannerManager];
  [v7 removeTransitionObserver:self];

  v8.receiver = self;
  v8.super_class = SBAssistantController;
  [(SBAssistantController *)&v8 dealloc];
}

+ (BOOL)shouldBreadcrumbLaunchedApplicationWithBundleIdentifier:(id)a3
{
  v3 = [a1 sharedInstanceIfExists];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 currentSession];
    v6 = [v5 presentationContext];
    v7 = [v6 hasVisionModality];

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)defaultActivationSettings
{
  v2 = objc_alloc_init(SBActivationSettings);
  [(SBActivationSettings *)v2 setFlag:1 forActivationSetting:44];

  return v2;
}

- (BOOL)requestPasscodeUnlockWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  currentSession = self->_currentSession;
  if (currentSession)
  {
    mainScreenSiriPresentation = self->_mainScreenSiriPresentation;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__SBAssistantController_requestPasscodeUnlockWithCompletion___block_invoke;
    v9[3] = &unk_2783BA3F8;
    v10 = v4;
    [(SiriPresentationSpringBoardMainScreenViewController *)mainScreenSiriPresentation requestPasscodeUnlockWithCompletion:v9];
  }

  return currentSession != 0;
}

uint64_t __61__SBAssistantController_requestPasscodeUnlockWithCompletion___block_invoke(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

- (void)setSystemAssistantExperienceEnabled:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_systemAssistantExperienceEnabled != a3)
  {
    v3 = a3;
    v5 = SBLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updating isSystemAssistantExperienceEnabled to %{BOOL}u", buf, 8u);
    }

    self->_systemAssistantExperienceEnabled = v3;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            [v11 assistantDidChangeSystemAssistantExperienceEnablement:self];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setSystemAssistantExperiencePersistentSiriEnabled:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_systemAssistantExperiencePersistentSiriEnabled != a3)
  {
    self->_systemAssistantExperiencePersistentSiriEnabled = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observers copy];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            [v9 assistantDidChangeSystemAssistantExperiencePersistentSiriEnablement:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setHomeAffordanceDoubleTapGestureEnabled:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_homeAffordanceDoubleTapGestureEnabled != a3)
  {
    v3 = a3;
    v5 = SBLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updating isHomeAffordanceDoubleTapGestureEnabled to %{BOOL}u", buf, 8u);
    }

    self->_homeAffordanceDoubleTapGestureEnabled = v3;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            [v11 assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:self];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setVisualSearchEnabled:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_visualSearchEnabled != a3)
  {
    v3 = a3;
    v5 = SBLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updating isVisualSearchEnabled to %{BOOL}u", v6, 8u);
    }

    self->_visualSearchEnabled = v3;
    [(SBAssistantController *)self _updateControlWidgetEligibility];
  }
}

- (void)setVisualIntelligenceControlEnabled:(BOOL)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_visualIntelligenceControlEnabled != a3)
  {
    v3 = a3;
    v5 = SBLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updating isVisualIntelligenceControlEnabled to %{BOOL}u", v6, 8u);
    }

    self->_visualIntelligenceControlEnabled = v3;
    [(SBAssistantController *)self _updateControlWidgetEligibility];
  }
}

- (BOOL)isVisibleInWindowScene:(id)a3
{
  v4 = a3;
  if ([(SBAssistantController *)self isVisible])
  {
    v5 = [(SBAssistantSession *)self->_currentSession windowScene];
    v6 = v5 == v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dismissAssistantViewInEverySceneIfNecessaryForGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4
{
  if ([objc_opt_class() shouldDismissSiriForGestureTranslation:a3.x velocity:{a3.y, a4.x, a4.y}])
  {

    [(SBAssistantController *)self dismissAssistantViewInEverySceneIfNecessary];
  }
}

- (void)_dismissAssistantViewIfNecessaryWithAnimation:(int64_t)a3 factory:(id)a4 dismissalOptions:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_currentSession && !self->_dismissing)
  {
    self->_dismissing = 1;
    v18 = [MEMORY[0x277CF0D38] factoryWithDuration:0.0];
    if (a3)
    {
      if (v11)
      {
        v19 = v11;
      }

      else
      {
        v19 = [MEMORY[0x277CF0D38] factoryWithDuration:*&kSBAssistantDefaultAnimationDuration];
      }

      v20 = v19;

      v18 = v20;
    }

    v21 = SBLogSiri();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = _SBFLoggingMethodProem();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - ending the current session with factory: %@", buf, 0x16u);
    }

    currentSession = self->_currentSession;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __107__SBAssistantController__dismissAssistantViewIfNecessaryWithAnimation_factory_dismissalOptions_completion___block_invoke;
    v24[3] = &unk_2783AB990;
    v24[4] = self;
    v26 = a2;
    v25 = v13;
    [(SBAssistantSession *)currentSession endWithAnimationFactory:v18 siriDismissalOptions:v12 completion:v24];
  }

  else
  {
    v14 = SBLogSiri();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = _SBFLoggingMethodProem();
      v16 = self->_currentSession;
      v17 = NSStringFromBOOL();
      *buf = 138543874;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      v31 = 2114;
      v32 = v17;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - asked to dismiss siri but it isn't necessary because currentSession: %@ _dismissing: %{public}@", buf, 0x20u);
    }

    if (v13)
    {
      v13[2](v13);
    }
  }
}

uint64_t __107__SBAssistantController__dismissAssistantViewIfNecessaryWithAnimation_factory_dismissalOptions_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - ended the current session, cleaning up", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 168);
  *(v4 + 168) = 0;

  *(*(a1 + 32) + 114) = 0;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissAssistantViewIfNecessaryForGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4 windowScene:(id)a5
{
  y = a4.y;
  x = a4.x;
  v7 = a3.y;
  v8 = a3.x;
  v10 = a5;
  if ([objc_opt_class() shouldDismissSiriForGestureTranslation:v8 velocity:{v7, x, y}])
  {
    [(SBAssistantController *)self dismissAssistantViewIfNecessaryInWindowScene:v10];
  }
}

- (void)_dismissAssistantViewIfNecessaryWithAnimation:(int64_t)a3 factory:(id)a4 dismissalOptions:(id)a5 windowScene:(id)a6 completion:(id)a7
{
  v17 = a4;
  v12 = a5;
  v13 = a7;
  currentSession = self->_currentSession;
  v15 = a6;
  v16 = [(SBAssistantSession *)currentSession windowScene];

  if (v16 == v15)
  {
    [(SBAssistantController *)self _dismissAssistantViewIfNecessaryWithAnimation:a3 factory:v17 dismissalOptions:v12 completion:v13];
  }
}

- (BOOL)commandeerCaptureDropletPreludeForVisionInvocation:(id)a3 windowScene:(id)a4
{
  v6 = a3;
  currentSession = self->_currentSession;
  v8 = a4;
  v9 = [(SBAssistantSession *)currentSession windowScene];

  v10 = v9 == v8 && [(SBAssistantSession *)self->_currentSession commandeerCaptureDropletPreludeForVisionInvocation:v6];
  return v10;
}

- (BOOL)shouldShowSystemVolumeHUDForCategory:(id)a3
{
  v4 = a3;
  audioCategoriesDisablingVolumeHUD = self->_audioCategoriesDisablingVolumeHUD;
  if (audioCategoriesDisablingVolumeHUD)
  {
    if ([(NSSet *)audioCategoriesDisablingVolumeHUD count])
    {
      v6 = ![(NSSet *)self->_audioCategoriesDisablingVolumeHUD containsObject:v4];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(NSHashTable *)self->_observers containsObject:v4];
    v4 = v9;
    if (!v5)
    {
      observers = self->_observers;
      if (!observers)
      {
        v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
        v8 = self->_observers;
        self->_observers = v7;

        observers = self->_observers;
      }

      [(NSHashTable *)observers addObject:v9];
      v4 = v9;
    }
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (BOOL)contentObscuresEmbeddedDisplayScreen
{
  v3 = [(SBAssistantSession *)self->_currentSession windowScene];
  v4 = [v3 isMainDisplayWindowScene];

  if (!v4)
  {
    return 0;
  }

  currentSession = self->_currentSession;

  return [(SBAssistantSession *)currentSession contentObscuresScreen];
}

- (BOOL)shouldDismissSiriForRemoteTransientOverlayFromBundleIdentifier:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SiriPresentationSpringBoardMainScreenViewController *)self->_mainScreenSiriPresentation shouldDismissForTransientOverlayForBundleIdentifier:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (void)bootstrapServices
{
  if (bootstrapServices_onceToken != -1)
  {
    +[SBAssistantController bootstrapServices];
  }
}

void __42__SBAssistantController_bootstrapServices__block_invoke()
{
  v0 = [MEMORY[0x277D55180] listener];
  v1 = bootstrapServices___presentationService;
  bootstrapServices___presentationService = v0;

  v2 = [MEMORY[0x277D551A8] listener];
  v3 = bootstrapServices___signalService;
  bootstrapServices___signalService = v2;
}

- (id)sessionForWindowScene:(id)a3
{
  currentSession = self->_currentSession;
  v5 = a3;
  v6 = [(SBAssistantSession *)currentSession windowScene];

  if (v6 == v5)
  {
    v7 = self->_currentSession;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_activationSettingsWithPunchoutStyle:(int64_t)a3
{
  v4 = +[SBAssistantController defaultActivationSettings];
  v5 = v4;
  if (a3 == 2)
  {
    v6 = 0;
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

  [v4 setFlag:v6 forActivationSetting:74];
LABEL_6:

  return v5;
}

- (void)setUISceneTracker:(id)a3
{
  v5 = a3;
  uiSceneTracker = self->_uiSceneTracker;
  p_uiSceneTracker = &self->_uiSceneTracker;
  if (uiSceneTracker != v5)
  {
    v8 = v5;
    objc_storeStrong(p_uiSceneTracker, a3);
    v5 = v8;
  }
}

- (id)_uiSceneTracker
{
  if (self->_uiSceneTracker)
  {
    return self->_uiSceneTracker;
  }

  else
  {
    return SBApp;
  }
}

- (void)_setUnlockedDevice:(BOOL)a3
{
  disableAssertion = self->_disableAssertion;
  if (a3)
  {
    if (!disableAssertion)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Siri unlock SBAssistantController"];
      v7 = [SBApp authenticationController];
      v8 = [v7 createKeybagUnlockAssertionWithReason:v6];
      v9 = self->_disableAssertion;
      self->_disableAssertion = v8;

      [(SBFAuthenticationAssertion *)self->_disableAssertion activate];
LABEL_6:
    }
  }

  else if (disableAssertion)
  {
    [(SBFAuthenticationAssertion *)disableAssertion invalidate];
    v6 = self->_disableAssertion;
    self->_disableAssertion = 0;
    goto LABEL_6;
  }

  self->_unlockedDevice = a3;
}

- (void)_setVisible:(BOOL)a3
{
  if (self->_visible != a3)
  {
    self->_visible = a3;
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    if (self->_visible)
    {
      [v12 addObserver:self selector:sel__uiLocked_ name:*MEMORY[0x277D67A48] object:0];
      [v12 addObserver:self selector:sel__deviceBlocked_ name:*MEMORY[0x277D66030] object:0];
      [v12 addObserver:self selector:sel__remoteLocked_ name:*MEMORY[0x277D67A50] object:0];
      [v12 addObserver:self selector:sel__uiLocked_ name:@"SBLockScreenUIRelockedNotification" object:0];
      [v12 addObserver:self selector:sel__uiLocked_ name:@"SBLockScreenUIDidLockNotification" object:0];
      v5 = [(SBAssistantController *)self _idleTimerCoordinator];
      v6 = [(SBAssistantController *)self _idleTimerBehavior];
      v7 = [v5 idleTimerProvider:self didProposeBehavior:v6 forReason:@"SBAssistantControllerVisible"];
      idleTimer = self->_idleTimer;
      self->_idleTimer = v7;
    }

    else
    {
      [v12 removeObserver:self name:*MEMORY[0x277D67A48] object:0];
      [v12 removeObserver:self name:*MEMORY[0x277D66030] object:0];
      [v12 removeObserver:self name:*MEMORY[0x277D67A50] object:0];
      [v12 removeObserver:self name:@"SBLockScreenUIRelockedNotification" object:0];
      self->_dismissing = 0;
    }

    [v12 postNotificationName:@"SBAssistantVisibilityDidChangeNotification" object:0];
    v9 = +[SBKeyboardFocusCoordinator sharedInstance];
    v10 = [(SBAssistantSession *)self->_currentSession windowScene];
    v11 = +[SBKeyboardFocusArbitrationReason assistantControllerVisibility];
    [v9 requestArbitrationForSBWindowScene:v10 forReason:v11];
  }
}

- (void)_noteDeviceLockedOrBlocked
{
  if (self->_visible)
  {
    v3 = SBLogSiri();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Dismissing assistant if necessary due to device lock or block", v5, 2u);
    }
  }

  v4 = [objc_alloc(MEMORY[0x277D551F0]) initWithDeactivationOptions:0 animated:0 dismissalReason:4];
  [(SBAssistantController *)self _dismissAssistantViewIfNecessaryWithAnimation:0 factory:0 dismissalOptions:v4 completion:0];
}

- (void)_bioAuthenticated:(id)a3
{
  [(SBAssistantController *)self deviceUnlockRequestedWithPassword:0];

  [(SBAssistantController *)self _setUnlockedDevice:1];
}

- (void)_uiLocked:(id)a3
{
  v4 = +[SBLockScreenManager sharedInstance];
  v5 = [v4 isUILocked];

  if (v5)
  {

    [(SBAssistantController *)self _noteDeviceLockedOrBlocked];
  }
}

- (BOOL)isAmbientActive
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 activeDisplayWindowScene];
  v4 = [v3 ambientPresentationController];

  LOBYTE(v2) = [v4 isPresented];
  return v2;
}

- (void)_deviceBlocked:(id)a3
{
  v4 = [SBApp lockOutController];
  v5 = [v4 isBlocked];

  if (v5)
  {

    [(SBAssistantController *)self _noteDeviceLockedOrBlocked];
  }
}

- (void)_remoteLocked:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D67B30]];
  v6 = [v5 BOOLValue];

  if (v6)
  {

    [(SBAssistantController *)self _noteDeviceLockedOrBlocked];
  }
}

- (void)_updateWindowLevelForScene:(id)a3
{
  v9 = a3;
  v4 = [(SBAssistantSession *)self->_currentSession windowScene];

  if (v4 == v9)
  {
    v5 = [(SBWindowLevelAssertionManager *)self->_windowLevelAssertionManager highestPriorityWindowLevelAssertionForWindowScene:?];
    v6 = v5;
    currentSession = self->_currentSession;
    if (v5)
    {
      [v5 windowLevel];
    }

    else
    {
      v8 = *MEMORY[0x277D76EE8] + 25.0;
    }

    [(SBAssistantSession *)currentSession assertWindowLevel:v8];
  }

  MEMORY[0x2821F9730]();
}

- (void)applicationProcessDidChangeState:(id)a3
{
  v4 = [a3 object];
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

  v11 = v7;

  v8 = [v11 bundleIdentifier];
  v9 = [v8 isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (v9)
  {
    v10 = [v11 processState];
    self->_screenShotServicesIsRunning = [v10 taskState] == 2;
  }
}

- (void)_turnScreenOffWithCompletion:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __54__SBAssistantController__turnScreenOffWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [SBApp screenSleepCoordinator];
  [v2 sleepAndLockUIFromSource:12 completion:*(a1 + 32)];
}

- (void)_systemApertureFrameDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v9 = [v4 objectForKey:@"SBSystemApertureFrames"];

  if ([v9 count])
  {
    v5 = [v9 copy];
    systemApertureFrames = self->_systemApertureFrames;
    self->_systemApertureFrames = v5;

    if (self->_currentSession)
    {
      mainScreenSiriPresentation = self->_mainScreenSiriPresentation;
      v8 = [(SBAssistantController *)self systemApertureFramesIncludingBanners];
      [(SiriPresentationSpringBoardMainScreenViewController *)mainScreenSiriPresentation setSystemApertureFrames:v8];
    }
  }
}

- (void)_systemAssistantExperienceAvailabilityNotificationReceived
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  BSDispatchMain();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

void __83__SBAssistantController__systemAssistantExperienceAvailabilityNotificationReceived__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _systemAssistantExperienceAvailabilityDidChange];
}

- (id)_currentSessionCreatingIfNeededWithFailureExplanation:(id *)a3
{
  currentSession = self->_currentSession;
  if (!currentSession)
  {
    v6 = [(SBAssistantController *)self _uiSceneTracker];
    v7 = [v6 activeDisplayWindowScene];

    v8 = [v7 sceneManager];
    v9 = [v8 policyAggregator];

    if ([v9 allowsCapability:5 explanation:a3])
    {
      v10 = [[SBAssistantSession alloc] initWithWindowScene:v7 operationQueue:self->_operationQueue gestureConfiguration:self->_gestureConfiguration];
      [(SBAssistantSession *)v10 setDelegate:self];
      [(SBAssistantController *)self _updateWindowLevelForScene:v7];
      v11 = self->_currentSession;
      self->_currentSession = v10;
    }

    currentSession = self->_currentSession;
  }

  return currentSession;
}

- (void)_systemAssistantExperienceAvailabilityDidChange
{
  [(SBAssistantController *)self _updateSystemAssistantExperienceEnabled];
  [(SBAssistantController *)self _siriPreferencesDidChange];

  [(SBAssistantController *)self activationEligibilityDidChange];
}

- (void)_updateSystemAssistantExperienceEnabled
{
  v3 = [MEMORY[0x277CEF4D0] saeAvailable];

  [(SBAssistantController *)self setSystemAssistantExperienceEnabled:v3];
}

- (void)_updateSystemAssistantExperiencePersistentSiriEnabled
{
  if (self->_systemAssistantExperienceEnabled)
  {
    v3 = SBFIsSAEPersistentSiriAvailable();
  }

  else
  {
    v3 = 0;
  }

  [(SBAssistantController *)self setSystemAssistantExperiencePersistentSiriEnabled:v3];
}

- (void)_updateHomeAffordanceDoubleTapGestureEnabled
{
  v3 = [(SASActivationSourceEligibility *)self->_activationSourceEligibility shouldSystemOfferActivationForSource:48 systemAssistantExperienceEnabled:[(SBAssistantController *)self isSystemAssistantExperienceEnabled]];

  [(SBAssistantController *)self setHomeAffordanceDoubleTapGestureEnabled:v3];
}

- (void)_updateVisualSearchEnabled
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(SASActivationSourceEligibility *)self->_activationSourceEligibility shouldSystemOfferActivationForSource:54 systemAssistantExperienceEnabled:[(SBAssistantController *)self isSystemAssistantExperienceEnabled]];
  }

  else
  {
    v3 = 0;
  }

  [(SBAssistantController *)self setVisualSearchEnabled:v3];
}

- (void)_updateVisualIntelligenceControlEnabled
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(SASActivationSourceEligibility *)self->_activationSourceEligibility shouldSystemOfferActivationForSource:57 systemAssistantExperienceEnabled:[(SBAssistantController *)self isSystemAssistantExperienceEnabled]];
  }

  else
  {
    v3 = 0;
  }

  [(SBAssistantController *)self setVisualIntelligenceControlEnabled:v3];
}

- (void)assistantSession:(id)a3 viewWillAppearInWindowScene:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v19 = _SBFLoggingMethodProem();
    v20 = [v5 _sceneIdentifier];
    *buf = 138543618;
    v27 = v19;
    v28 = 2114;
    v29 = v20;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@", buf, 0x16u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 assistantWillAppear:self windowScene:v5];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v13 = [SBApp bannerManager];
  [v13 dismissAllBannersInWindowScene:v5 animated:1 reason:@"assistantWillAppear"];

  [(SBAssistantController *)self _setVisible:1];
  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 addObserver:self selector:sel__bioAuthenticated_ name:*MEMORY[0x277D67E88] object:0];

  v15 = +[SBLockScreenManager sharedInstance];
  v16 = [v15 bioAuthenticatedWhileMenuButtonDown];

  if (v16)
  {
    [(SBAssistantController *)self _bioAuthenticated:0];
  }

  mainScreenSiriPresentation = self->_mainScreenSiriPresentation;
  v18 = [(SBAssistantController *)self systemApertureFramesIncludingBanners];
  [(SiriPresentationSpringBoardMainScreenViewController *)mainScreenSiriPresentation setSystemApertureFrames:v18];
}

- (void)assistantSession:(id)a3 viewDidAppearInWindowScene:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogSiri();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16 = _SBFLoggingMethodProem();
    v17 = [v7 _sceneIdentifier];
    *buf = 138543618;
    v24 = v16;
    v25 = 2114;
    v26 = v17;
    _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@", buf, 0x16u);
  }

  if (([v6 shouldAllowBiometricAutoUnlock] & 1) == 0)
  {
    v9 = +[SBLockScreenManager sharedInstance];
    [v9 setBiometricAutoUnlockingDisabled:1 forReason:@"Siri"];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(NSHashTable *)self->_observers copy];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 assistantDidAppear:self windowScene:v7];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }
}

- (void)assistantSession:(id)a3 viewWillDisappearInWindowScene:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = _SBFLoggingMethodProem();
    v15 = [v5 _sceneIdentifier];
    *buf = 138543618;
    v22 = v14;
    v23 = 2114;
    v24 = v15;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 assistantWillDisappear:self windowScene:v5];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(SBAssistantController *)self _setVisible:0];
  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 removeObserver:self name:*MEMORY[0x277D67E88] object:0];
}

- (void)assistantSession:(id)a3 viewDidDisappearInWindowScene:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogSiri();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16 = _SBFLoggingMethodProem();
    v17 = [v7 _sceneIdentifier];
    *buf = 138543618;
    v24 = v16;
    v25 = 2114;
    v26 = v17;
    _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@", buf, 0x16u);
  }

  if (([v6 shouldAllowBiometricAutoUnlock] & 1) == 0)
  {
    v9 = +[SBLockScreenManager sharedInstance];
    [v9 setBiometricAutoUnlockingDisabled:0 forReason:@"Siri"];
  }

  [(SBAssistantController *)self _setUnlockedDevice:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(NSHashTable *)self->_observers copy];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 assistantDidDisappear:self windowScene:v7];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }
}

- (void)assistantSession:(id)a3 didChangePresentationInWindowScene:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = SBLogSiri();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v13 = _SBFLoggingMethodProem();
    v14 = [v5 _sceneIdentifier];
    *buf = 138543618;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@", buf, 0x16u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 assistantDidChangePresentation:self windowScene:v5];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)assistantSession:(id)a3 requestsDismissalWithDismissalOptions:(id)a4
{
  if (self->_currentSession == a3)
  {

    [(SBAssistantController *)self _dismissAssistantViewIfNecessaryWithAnimation:1 factory:0 dismissalOptions:a4 completion:0];
  }

  else
  {
    v6 = SBLogSiri();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(SBAssistantController *)self assistantSession:a2 requestsDismissalWithDismissalOptions:v6];
    }
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = a4;
  if (([v5 isEqualToString:@"assistantAnimationDuration"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"assistantDismissAnimationDurationOverApp"))
  {
    [(SBAssistantController *)self _prototypeSettingsChanged];
  }
}

- (int64_t)idleTimerDuration
{
  v2 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
  if ([v2 hasBeenDismissedSinceKeybagLock])
  {
    v3 = 16;
  }

  else
  {
    v3 = 14;
  }

  return v3;
}

void __44__SBAssistantController_screenWakeRequested__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  if (*(*(a1 + 32) + 113) == 1)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    if ([v4 isUILocked])
    {
      v6 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
      v7 = MEMORY[0x277CBEC38];
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
      [v4 unlockUIFromSource:12 withOptions:v5];
    }
  }
}

- (id)alwaysOnLiveRenderingAssertionRequested
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__82;
  v17[4] = __Block_byref_object_dispose__82;
  v18 = 0;
  v4 = objc_alloc(MEMORY[0x277CF0CE8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__SBAssistantController_alwaysOnLiveRenderingAssertionRequested__block_invoke;
  v16[3] = &unk_2783BA420;
  v16[4] = v17;
  v5 = [v4 initWithIdentifier:@"alwaysOnLiveRenderingAssertionRequested" forReason:@"SBAssistantController" invalidationBlock:v16];
  location[1] = MEMORY[0x277D85DD0];
  location[2] = 3221225472;
  location[3] = __64__SBAssistantController_alwaysOnLiveRenderingAssertionRequested__block_invoke_2;
  location[4] = &unk_2783BA448;
  location[5] = self;
  v15 = a2;
  v6 = v5;
  v13 = v6;
  v14 = v17;
  BSDispatchMain();
  objc_initWeak(location, v6);
  v7 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SBAssistantController_alwaysOnLiveRenderingAssertionRequested__block_invoke_212;
  block[3] = &unk_2783A8C68;
  objc_copyWeak(&v11, location);
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
  v8 = v6;
  objc_destroyWeak(&v11);
  objc_destroyWeak(location);

  _Block_object_dispose(v17, 8);

  return v8;
}

void __64__SBAssistantController_alwaysOnLiveRenderingAssertionRequested__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    v11 = 138543362;
    v12 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@", &v11, 0xCu);
  }

  if (*(*(a1 + 32) + 113) == 1)
  {
    v4 = +[SBLockScreenManager sharedInstance];
    if ([v4 isUILocked])
    {
      if ([*(a1 + 40) isValid])
      {
        v5 = [*(a1 + 32) _uiSceneTracker];
        v6 = [v5 activeDisplayWindowScene];

        v7 = [MEMORY[0x277D65DC0] sharedInstance];
        v8 = [v7 acquireLiveRenderingAssertionForUIScene:v6 reason:@"SBAssistantController request."];
        v9 = *(*(a1 + 48) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }
    }
  }
}

void __64__SBAssistantController_alwaysOnLiveRenderingAssertionRequested__block_invoke_212(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __58__SBAssistantController_screenWakeIdleTimerResetRequested__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 113) == 1)
  {
    [*(v4 + 96) reset];
  }
}

- (void)deviceUnlockRequestedWithPassword:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogSiri();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
  }

  [(SBAssistantController *)self siriPresentation:self->_mainScreenSiriPresentation requestsDeviceUnlockWithPassword:v4];
}

void __69__SBAssistantController_siriRequestDidReactivateForSiriPresentation___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) currentSession];
  v5 = [v1 windowScene];

  v2 = [v5 controlCenterController];
  v3 = [v2 isVisible];

  if (v3)
  {
    v4 = [v5 controlCenterController];
    [v4 dismissAnimated:1];
  }
}

- (BOOL)siriPresentation:(id)a3 requestsDeviceUnlockWithPassword:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __75__SBAssistantController_siriPresentation_requestsDeviceUnlockWithPassword___block_invoke;
  v16 = &unk_2783BA448;
  v17 = self;
  v20 = a2;
  v9 = v8;
  v18 = v9;
  v19 = &v21;
  v10 = MEMORY[0x223D6F7F0](&v13);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v10[2](v10);
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], v10);
  }

  v11 = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return v11;
}

void __75__SBAssistantController_siriPresentation_requestsDeviceUnlockWithPassword___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    v10 = 138543362;
    v11 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@", &v10, 0xCu);
  }

  v4 = [SBApp authenticationController];
  v5 = [v4 createGracePeriodAssertionWithReason:@"Siri unlock attempt"];
  [v5 activate];
  v6 = [*(a1 + 40) length];
  [v4 notePasscodeEntryBegan];
  v7 = objc_alloc(MEMORY[0x277D65DF0]);
  if (v6)
  {
    v8 = [v7 initForPasscode:*(a1 + 40) source:0];
  }

  else
  {
    v8 = [v7 initForBiometricAuthenticationWithSource:0];
  }

  v9 = v8;
  *(*(*(a1 + 48) + 8) + 24) = [v4 _processAuthenticationRequest:v8 responder:*(a1 + 32)];
  [*(a1 + 32) _setUnlockedDevice:*(*(*(a1 + 48) + 8) + 24)];
  [v5 invalidate];
}

- (void)siriPresentation:(id)a3 didUpdateAudioCategoriesDisablingVolumeHUD:(id)a4
{
  v5 = a4;
  v4 = v5;
  BSDispatchMain();
}

void __85__SBAssistantController_siriPresentation_didUpdateAudioCategoriesDisablingVolumeHUD___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    v11 = 138543362;
    v12 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@", &v11, 0xCu);
  }

  if (*(a1 + 40))
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;
  v7 = v4;

  v8 = [SBApp volumeControl];
  v9 = *(a1 + 32);
  v10 = [v8 lastDisplayedCategory];
  LOBYTE(v9) = [v9 shouldShowSystemVolumeHUDForCategory:v10];

  if ((v9 & 1) == 0)
  {
    [v8 hideVolumeHUDIfVisible];
  }
}

uint64_t __71__SBAssistantController_siriPresentation_willChangeKeyboardVisibility___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 168);
  if (v1 == 1)
  {
    return [v2 noteKeyboardWillAppear];
  }

  else
  {
    return [v2 noteKeyboardWillDisappear];
  }
}

- (void)siriPresentation:(id)a3 requestsPresentationOfEffectsViewController:(id)a4 withHandler:(id)a5
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  BSDispatchMain();
}

void __98__SBAssistantController_siriPresentation_requestsPresentationOfEffectsViewController_withHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    *buf = 138543362;
    v21 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v17 = 0;
  v5 = [v4 _currentSessionCreatingIfNeededWithFailureExplanation:&v17];
  v6 = v17;
  v7 = v6;
  if (v5)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__SBAssistantController_siriPresentation_requestsPresentationOfEffectsViewController_withHandler___block_invoke_218;
    v15[3] = &unk_2783A9348;
    v8 = *(a1 + 40);
    v16 = *(a1 + 48);
    [v5 presentSiriEffectsViewController:v8 completion:v15];
    v9 = v16;
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA5B8];
    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = @"<no reason provided>";
    }

    v18 = *MEMORY[0x277CCA470];
    v19 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v9 = [v11 errorWithDomain:v12 code:1 userInfo:v14];
    (*(v10 + 16))(v10, 0, v9);

    v7 = v14;
  }
}

- (void)siriPresentation:(id)a3 requestsDismissalOfEffectsViewControllerWithHandler:(id)a4
{
  v5 = a4;
  v4 = v5;
  BSDispatchMain();
}

void __94__SBAssistantController_siriPresentation_requestsDismissalOfEffectsViewControllerWithHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 168);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__SBAssistantController_siriPresentation_requestsDismissalOfEffectsViewControllerWithHandler___block_invoke_223;
  v7[3] = &unk_2783A98A0;
  v7[4] = v5;
  v8 = v4;
  [v6 dismissSiriEffectsViewControllerWithCompletion:v7];
}

uint64_t __94__SBAssistantController_siriPresentation_requestsDismissalOfEffectsViewControllerWithHandler___block_invoke_223(uint64_t a1)
{
  if (([*(*(a1 + 32) + 168) isActive] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 168);
    *(v2 + 168) = 0;
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)siriPresentation:(id)a3 acquireElevatedEffectsViewControllerAssertionWithReason:(id)a4 handler:(id)a5
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  BSDispatchMain();
}

void __106__SBAssistantController_siriPresentation_acquireElevatedEffectsViewControllerAssertionWithReason_handler___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 168) acquireElevatedSiriEffectsViewControllerAssertionWithReason:a1[5]];
  (*(a1[6] + 16))();
}

- (void)siriPresentation:(id)a3 willStartHostingSceneWithIdentifier:(id)a4 bundleIdentifier:(id)a5
{
  currentSession = self->_currentSession;
  if (currentSession)
  {

    [(SBAssistantSession *)currentSession siriStartedHostingSceneWithIdentifier:a4 bundleIdentifier:a5];
  }

  else
  {
    v6 = SBLogSiri();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBAssistantController siriPresentation:willStartHostingSceneWithIdentifier:bundleIdentifier:];
    }
  }
}

- (void)siriPresentation:(id)a3 willStopHostingSceneWithIdentifier:(id)a4 bundleIdentifier:(id)a5
{
  currentSession = self->_currentSession;
  if (currentSession)
  {

    [(SBAssistantSession *)currentSession siriStoppedHostingSceneWithIdentifier:a4 bundleIdentifier:a5];
  }

  else
  {
    v6 = SBLogSiri();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBAssistantController siriPresentation:willStopHostingSceneWithIdentifier:bundleIdentifier:];
    }
  }
}

- (void)requestTamaleLaunchAnimationLayerProviderWithCompletion:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

uint64_t __81__SBAssistantController_requestTamaleLaunchAnimationLayerProviderWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  if (v2)
  {
    v3 = *(a1 + 40);

    return [v2 requestTamaleLaunchAnimationLayerProviderWithCompletion:v3];
  }

  else
  {
    v5 = SBLogSiri();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __81__SBAssistantController_requestTamaleLaunchAnimationLayerProviderWithCompletion___block_invoke_cold_1();
    }

    return (*(*(a1 + 40) + 16))();
  }
}

- (void)siriPresentation:(id)a3 requestsPresentationWithOptions:(id)a4 withHandler:(id)a5
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  BSDispatchMain();
}

void __86__SBAssistantController_siriPresentation_requestsPresentationWithOptions_withHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    v4 = *(a1 + 40);
    *buf = 138543618;
    v24 = v3;
    v25 = 2114;
    v26 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v20 = 0;
  v6 = [v5 _currentSessionCreatingIfNeededWithFailureExplanation:&v20];
  v7 = v20;
  v8 = v7;
  if (v6)
  {
    v9 = [MEMORY[0x277CF0D38] factoryWithDuration:*&kSBAssistantDefaultAnimationDuration];
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 32) + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __86__SBAssistantController_siriPresentation_requestsPresentationWithOptions_withHandler___block_invoke_224;
    v18[3] = &unk_2783A9348;
    v19 = *(a1 + 48);
    [v6 presentSiriPresentationViewController:v11 withAnimationFactory:v9 siriPresentationOptions:v10 completion:v18];
    v12 = v19;
  }

  else
  {
    v13 = *(a1 + 48);
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA5B8];
    if (v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = @"<no reason provided>";
    }

    v21 = *MEMORY[0x277CCA470];
    v22 = v16;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v17 = [v14 errorWithDomain:v15 code:1 userInfo:v9];
    (*(v13 + 16))(v13, 0, v17);
    v12 = v8;
    v8 = v17;
  }
}

- (void)siriPresentation:(id)a3 requestsDismissalWithOptions:(id)a4 withHandler:(id)a5
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  BSDispatchMain();
}

void __83__SBAssistantController_siriPresentation_requestsDismissalWithOptions_withHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    v4 = *(a1 + 40);
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__SBAssistantController_siriPresentation_requestsDismissalWithOptions_withHandler___block_invoke_225;
  v9[3] = &unk_2783A98A0;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v5 = MEMORY[0x223D6F7F0](v9);
  if ([*(a1 + 40) shouldTurnScreenOff])
  {
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __83__SBAssistantController_siriPresentation_requestsDismissalWithOptions_withHandler___block_invoke_3;
    v7[3] = &unk_2783A9348;
    v8 = v5;
    [v6 _turnScreenOffWithCompletion:v7];
  }

  else
  {
    v5[2](v5);
  }
}

void __83__SBAssistantController_siriPresentation_requestsDismissalWithOptions_withHandler___block_invoke_225(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __83__SBAssistantController_siriPresentation_requestsDismissalWithOptions_withHandler___block_invoke_2;
  v2[3] = &unk_2783A9348;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 dismissAssistantViewInEverySceneIfNecessaryWithAnimation:1 factory:0 completion:v2];
}

uint64_t __83__SBAssistantController_siriPresentation_requestsDismissalWithOptions_withHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)siriPresentation:(id)a3 isEnabledDidChange:(BOOL)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = SBLogSiri();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = _SBFLoggingMethodProem();
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v6, 0xCu);
  }
}

- (void)siriPresentation:(id)a3 requestsPunchout:(id)a4 withHandler:(id)a5
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  BSDispatchMain();
}

void __71__SBAssistantController_siriPresentation_requestsPunchout_withHandler___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = SBLogSiri();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _SBFLoggingMethodProem();
    *buf = 138543362;
    v31 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v4 = (a1 + 40);
  v5 = [*(a1 + 40) url];
  v6 = SBWorkspaceDialRequestForURL(v5);
  if (![v6 isValid] || (v7 = *(a1 + 32), *(v7 + 113) == 1) && *(v7 + 114) != 1)
  {
    v11 = [*v4 bundleIdentifier];
    v12 = [*v4 punchoutStyle];
    if (!v11)
    {
      if (v5)
      {
        v14 = [SBAssistantController _activationSettingsWithPunchoutStyle:v12];
        v18 = SBApp;
        v19 = [MEMORY[0x277CF0CD0] processHandle];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __71__SBAssistantController_siriPresentation_requestsPunchout_withHandler___block_invoke_236;
        v26[3] = &unk_2783A9FC8;
        v27 = *(a1 + 48);
        [v18 applicationOpenURL:v5 withApplication:0 animating:1 activationSettings:v14 origin:v19 notifyLSOnFailure:1 withResult:v26];
      }

      else
      {
        v22 = SBLogSiri();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          __71__SBAssistantController_siriPresentation_requestsPunchout_withHandler___block_invoke_cold_1();
        }

        v23 = *(a1 + 48);
        if (!v23)
        {
          goto LABEL_21;
        }

        v14 = FBSOpenApplicationErrorCreate();
        (*(v23 + 16))(v23, 0, v14);
      }

      goto LABEL_20;
    }

    v13 = +[SBApplicationController sharedInstance];
    v14 = [v13 applicationWithBundleIdentifier:v11];

    if (v14)
    {
      v15 = [SBAssistantController _activationSettingsWithPunchoutStyle:v12];
      v16 = SBApp;
      v17 = [MEMORY[0x277CF0CD0] processHandle];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __71__SBAssistantController_siriPresentation_requestsPunchout_withHandler___block_invoke_231;
      v28[3] = &unk_2783A9FC8;
      v29 = *(a1 + 48);
      [v16 applicationOpenURL:v5 withApplication:v14 animating:1 activationSettings:v15 origin:v17 notifyLSOnFailure:1 withResult:v28];
    }

    else
    {
      v20 = SBLogSiri();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v24 = _SBFLoggingMethodProem();
        v25 = *(a1 + 40);
        *buf = 138543874;
        v31 = v24;
        v32 = 2112;
        v33 = v11;
        v34 = 2112;
        v35 = v25;
        _os_log_error_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_ERROR, "%{public}@ - Ignoring punchout since the specified app (%@) could not be found : request=%@", buf, 0x20u);
      }

      v21 = *(a1 + 48);
      if (!v21)
      {
        goto LABEL_20;
      }

      v15 = FBSOpenApplicationErrorCreate();
      (*(v21 + 16))(v21, 0, v15);
    }

LABEL_20:
    goto LABEL_21;
  }

  v8 = SBLogSiri();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _SBFLoggingMethodProem();
    *buf = 138543362;
    v31 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Ignoring assisted tel: URL because assistant is dismissing or not visible", buf, 0xCu);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = FBSOpenApplicationErrorCreate();
    (*(v10 + 16))(v10, 0, v11);
LABEL_21:
  }
}

uint64_t __71__SBAssistantController_siriPresentation_requestsPunchout_withHandler___block_invoke_231(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

uint64_t __71__SBAssistantController_siriPresentation_requestsPunchout_withHandler___block_invoke_236(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

void __61__SBAssistantController_siriPresentation_didUpdateInputType___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  if (v2)
  {
    v3 = [v2 presentationContext];
    v4 = [v3 siriPresentationOptions];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__SBAssistantController_siriPresentation_didUpdateInputType___block_invoke_2;
    v7[3] = &__block_descriptor_40_e43_v16__0___SiriPresentationOptionsMutating__8l;
    v7[4] = *(a1 + 40);
    v5 = [v4 mutatedCopyWithMutator:v7];
    v6 = [v3 mutableCopy];
    [v6 setSiriPresentationOptions:v5];
    [*(*(a1 + 32) + 168) setPresentationContext:v6];
  }
}

- (void)siriPresentation:(id)a3 didUpdatePresentationOptions:(id)a4
{
  v5 = a4;
  v4 = v5;
  BSDispatchMain();
}

void __71__SBAssistantController_siriPresentation_didUpdatePresentationOptions___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  if (v2)
  {
    v4 = [v2 presentationContext];
    v3 = [v4 mutableCopy];
    [v3 setSiriPresentationOptions:*(a1 + 40)];
    [*(*(a1 + 32) + 168) setPresentationContext:v3];
  }
}

- (void)restrictSystemApertureToDefaultLayoutWithReason:(id)a3
{
  v4 = a3;
  if (!self->_systemApertureAssertion)
  {
    v5 = [SBApp systemApertureControllerForMainDisplay];
    v6 = [v5 restrictSystemApertureToDefaultLayoutWithReason:v4];

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__SBAssistantController_restrictSystemApertureToDefaultLayoutWithReason___block_invoke;
    v8[3] = &unk_2783B4B88;
    objc_copyWeak(&v9, &location);
    [v6 addInvalidationBlock:v8];
    systemApertureAssertion = self->_systemApertureAssertion;
    self->_systemApertureAssertion = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __73__SBAssistantController_restrictSystemApertureToDefaultLayoutWithReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSystemApertureAssertion:0];
}

- (void)invalidateSystemApertureAssertionWithReason:(id)a3
{
  systemApertureAssertion = self->_systemApertureAssertion;
  if (systemApertureAssertion)
  {
    [(SAInvalidatable *)systemApertureAssertion invalidateWithReason:a3];
  }
}

- (void)alertItemsController:(id)a3 didActivateAlertItem:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([(SBAssistantController *)self _isLocationTCCAlert:v5])
  {
    v6 = SBLogSiri();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = _SBFLoggingMethodProem();
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - observed did activate alert item: %{public}@, notifying siri location tcc presented.", &v8, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [(SiriPresentationSpringBoardMainScreenViewController *)self->_mainScreenSiriPresentation didPresentLocationTCC:v5];
    }
  }
}

- (void)alertItemsController:(id)a3 didDeactivateAlertItem:(id)a4 forReason:(int)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(SBAssistantController *)self _isLocationTCCAlert:v6])
  {
    v7 = SBLogSiri();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _SBFLoggingMethodProem();
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - observed did deactivate alert item: %{public}@, notifying siri location tcc dismissed.", &v9, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [(SiriPresentationSpringBoardMainScreenViewController *)self->_mainScreenSiriPresentation didDismissLocationTCC:v6];
    }
  }
}

- (BOOL)_isLocationTCCAlert:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

  if (v7)
  {
    v8 = [v7 extensionIdentifier];
    if ([v8 isEqual:@"com.apple.corelocation.CoreLocationVanillaWhenInUseAuthPromptPlugin"] & 1) != 0 || (objc_msgSend(v8, "isEqual:", @"com.apple.corelocation.CoreLocationRepromptAlwaysAuthPromptPlugin"))
    {
      v9 = 1;
    }

    else
    {
      v9 = [v8 isEqual:@"com.apple.corelocation.CoreLocationTemporaryPreciseAuthPromptPlugin"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)notifyAssistantOfApplicationTransition
{
  v3 = SBLogSiri();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SBAssistantController *)v3 notifyAssistantOfApplicationTransition];
  }

  if (objc_opt_respondsToSelector())
  {
    [(SiriPresentationSpringBoardMainScreenViewController *)self->_mainScreenSiriPresentation noteApplicationTransition];
  }
}

- (void)activationEligibilityDidChange
{
  [(SBAssistantController *)self _updateHomeAffordanceDoubleTapGestureEnabled];
  [(SBAssistantController *)self _updateVisualSearchEnabled];

  [(SBAssistantController *)self _updateVisualIntelligenceControlEnabled];
}

- (void)_updateControlWidgetEligibility
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CFA248]);
  v4 = [objc_alloc(MEMORY[0x277CFA240]) initWithExtensionBundleIdentifier:@"com.apple.siri.TypeToSiriWidget" kind:@"com.apple.siri.VisualIntelligenceWidget" enabled:self->_visualIntelligenceControlEnabled];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SBAssistantController__updateControlWidgetEligibility__block_invoke;
  v8[3] = &unk_2783B0F28;
  v8[4] = self;
  [v3 modifyDescriptorEnablement:v5 completion:v8];

  if (!self->_visualIntelligenceControlEnabled)
  {
    v6 = [objc_alloc(MEMORY[0x277CFC850]) initWithIntent:1 controlKind:@"com.apple.siri.VisualIntelligenceWidget" controlType:2 extensionBundleIdentifier:@"com.apple.siri.TypeToSiriWidget" containerBundleIdentifier:@"com.apple.siri" size:0];
    v7 = [MEMORY[0x277CFC830] sharedInstance];
    [v7 handleIconElementRequest:v6 completionHandler:&__block_literal_global_273];
  }
}

void __56__SBAssistantController__updateControlWidgetEligibility__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogSiri();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(*(a1 + 32) + 115);
      v11 = 67109378;
      v12 = v6;
      v13 = 2114;
      v14 = v3;
      v7 = "Failed to update State of Visual Intelligence Control Widget - isVisualIntelligenceControlEnabled: %{BOOL}u - error: %{public}@";
      v8 = v4;
      v9 = 18;
LABEL_6:
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    }
  }

  else if (v5)
  {
    v10 = *(*(a1 + 32) + 115);
    v11 = 67109120;
    v12 = v10;
    v7 = "Updated State of Visual Intelligence widget - isVisualIntelligenceControlEnabled: %{BOOL}u";
    v8 = v4;
    v9 = 8;
    goto LABEL_6;
  }
}

void __56__SBAssistantController__updateControlWidgetEligibility__block_invoke_270(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogSiri();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      v10 = 67109120;
      LODWORD(v11) = 1;
      v7 = "Removal of Visual Intelligence Control Widget succeeded: %{BOOL}u";
      v8 = v5;
      v9 = 8;
LABEL_6:
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v6)
  {
    v10 = 138543362;
    v11 = v4;
    v7 = "Removal of Visual Intelligence Control Widget failed: %{public}@";
    v8 = v5;
    v9 = 12;
    goto LABEL_6;
  }
}

- (void)bannerManager:(id)a3 willPresentPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [a6 objectForKey:*MEMORY[0x277D68078]];
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

  v16 = [v15 BOOLValue];
  if (v16)
  {
    presentedDodgingBanners = self->_presentedDodgingBanners;
    if (!presentedDodgingBanners)
    {
      v18 = [MEMORY[0x277CBEB58] set];
      v19 = self->_presentedDodgingBanners;
      self->_presentedDodgingBanners = v18;

      presentedDodgingBanners = self->_presentedDodgingBanners;
    }

    [(NSMutableSet *)presentedDodgingBanners addObject:v9];
  }

  if (self->_currentSession)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __97__SBAssistantController_bannerManager_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke;
    v22[3] = &unk_2783A9488;
    v22[4] = self;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __97__SBAssistantController_bannerManager_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke_2;
    v20[3] = &unk_2783B6F60;
    v20[4] = self;
    v21 = v9;
    [v10 animateAlongsideTransition:v22 completion:v20];
  }
}

void __97__SBAssistantController_bannerManager_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  v3 = [v1 systemApertureFramesIncludingBanners];
  [v2 setSystemApertureFrames:v3];
}

void __97__SBAssistantController_bannerManager_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    [*(*(a1 + 32) + 136) removeObject:*(a1 + 40)];
    v3 = *(a1 + 32);
    v4 = v3[5];
    v5 = [v3 systemApertureFramesIncludingBanners];
    [v4 setSystemApertureFrames:v5];
  }
}

- (void)bannerManager:(id)a3 willDismissPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6
{
  v8 = a4;
  v9 = a5;
  [(NSMutableSet *)self->_presentedDodgingBanners removeObject:v8];
  if (![(NSMutableSet *)self->_presentedDodgingBanners count])
  {
    presentedDodgingBanners = self->_presentedDodgingBanners;
    self->_presentedDodgingBanners = 0;
  }

  if (self->_currentSession)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __97__SBAssistantController_bannerManager_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke;
    v13[3] = &unk_2783A9488;
    v13[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __97__SBAssistantController_bannerManager_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke_2;
    v11[3] = &unk_2783B6F60;
    v11[4] = self;
    v12 = v8;
    [v9 animateAlongsideTransition:v13 completion:v11];
  }
}

void __97__SBAssistantController_bannerManager_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  v3 = [v1 systemApertureFramesIncludingBanners];
  [v2 setSystemApertureFrames:v3];
}

void __97__SBAssistantController_bannerManager_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    v3 = *(*(a1 + 32) + 136);
    if (!v3)
    {
      v4 = [MEMORY[0x277CBEB58] set];
      v5 = *(a1 + 32);
      v6 = *(v5 + 136);
      *(v5 + 136) = v4;

      v3 = *(*(a1 + 32) + 136);
    }

    [v3 addObject:*(a1 + 40)];
    v7 = *(a1 + 32);
    v8 = v7[5];
    v9 = [v7 systemApertureFramesIncludingBanners];
    [v8 setSystemApertureFrames:v9];
  }
}

- (void)bannerManager:(id)a3 presentable:(id)a4 willTransitionToSize:(CGSize)a5 withTransitionCoordinator:(id)a6
{
  if (self->_currentSession)
  {
    v6[4] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __98__SBAssistantController_bannerManager_presentable_willTransitionToSize_withTransitionCoordinator___block_invoke;
    v7[3] = &unk_2783A9488;
    v7[4] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __98__SBAssistantController_bannerManager_presentable_willTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v6[3] = &unk_2783A9488;
    [a6 animateAlongsideTransition:v7 completion:v6];
  }
}

void __98__SBAssistantController_bannerManager_presentable_willTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  v3 = [v1 systemApertureFramesIncludingBanners];
  [v2 setSystemApertureFrames:v3];
}

void __98__SBAssistantController_bannerManager_presentable_willTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    v3 = *(a1 + 32);
    v4 = v3[5];
    v5 = [v3 systemApertureFramesIncludingBanners];
    [v4 setSystemApertureFrames:v5];
  }
}

- (void)bannerManager:(id)a3 containerWillTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5
{
  if (self->_currentSession)
  {
    v5[4] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __95__SBAssistantController_bannerManager_containerWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v6[3] = &unk_2783A9488;
    v6[4] = self;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __95__SBAssistantController_bannerManager_containerWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v5[3] = &unk_2783A9488;
    [a5 animateAlongsideTransition:v6 completion:v5];
  }
}

void __95__SBAssistantController_bannerManager_containerWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  v3 = [v1 systemApertureFramesIncludingBanners];
  [v2 setSystemApertureFrames:v3];
}

void __95__SBAssistantController_bannerManager_containerWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    v3 = *(a1 + 32);
    v4 = v3[5];
    v5 = [v3 systemApertureFramesIncludingBanners];
    [v4 setSystemApertureFrames:v5];
  }
}

- (id)systemApertureFramesIncludingBanners
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_systemApertureFrames mutableCopy];
  currentSession = self->_currentSession;
  if (currentSession)
  {
    v5 = [(SBAssistantSession *)currentSession windowScene];
    v6 = [SBApp bannerManager];
    v7 = *MEMORY[0x277CBF398];
    v8 = *(MEMORY[0x277CBF398] + 8);
    v9 = *(MEMORY[0x277CBF398] + 16);
    rect = *(MEMORY[0x277CBF398] + 24);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v10 = self->_presentedDodgingBanners;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v76 objects:v80 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v77;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          v73 = v7;
          if (*v77 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v76 + 1) + 8 * i);
          v16 = [v6 windowSceneForPresentable:{v15, *&v70}];
          v17 = [v16 isEqual:v5];

          if (v17)
          {
            v18 = [v15 viewController];
            v19 = [v18 view];

            [v19 bounds];
            v21 = v20;
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v28 = [v15 viewController];
            [v28 bannerContentOutsets];
            v30 = v29;
            v32 = v31;
            v70 = v8;
            v71 = v9;
            v34 = v33;
            v36 = v35;

            v37 = v21 + v32;
            v38 = v23 + v30;
            v39 = v25 - (v32 + v36);
            v40 = v27 - (v30 + v34);
            v41 = [v19 window];
            [v41 bounds];
            v43 = v42;
            v45 = v44;
            v47 = v46;
            v49 = v48;

            v50 = [v19 window];
            v51 = v40;
            v9 = v71;
            [v50 convertRect:v19 fromView:{v37, v38, v39, v51}];
            v91.origin.x = v43;
            v8 = v70;
            v91.origin.y = v45;
            v91.size.width = v47;
            v91.size.height = v49;
            v84 = CGRectIntersection(v83, v91);
            x = v84.origin.x;
            y = v84.origin.y;
            width = v84.size.width;
            height = v84.size.height;

            v85.origin.x = x;
            v85.origin.y = y;
            v85.size.width = width;
            v85.size.height = height;
            MaxY = CGRectGetMaxY(v85);
            v86.size.height = rect;
            v7 = v73;
            v86.origin.x = v73;
            v86.origin.y = v70;
            v86.size.width = v71;
            if (CGRectIsNull(v86) || (v87.origin.x = v73, v87.origin.y = v70, v87.size.width = v71, v87.size.height = rect, MaxY > CGRectGetMaxY(v87)))
            {
              rect = height;
              v9 = width;
              v8 = y;
              v7 = x;
            }
          }
        }

        v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v76 objects:v80 count:16];
      }

      while (v12);
    }

    v57 = [v3 objectAtIndex:0];
    v58 = v57;
    if (v57)
    {
      [v57 CGRectValue];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
    }

    else
    {
      v60 = *MEMORY[0x277CBF3A0];
      v62 = *(MEMORY[0x277CBF3A0] + 8);
      v64 = *(MEMORY[0x277CBF3A0] + 16);
      v66 = *(MEMORY[0x277CBF3A0] + 24);
    }

    v88.origin.x = v7;
    v88.origin.y = v8;
    v88.size.width = v9;
    v88.size.height = rect;
    if (!CGRectIsNull(v88))
    {
      v89.origin.x = v60;
      v89.origin.y = v62;
      v89.size.width = v64;
      v89.size.height = v66;
      v92.origin.x = v7;
      v92.origin.y = v8;
      v92.size.width = v9;
      v92.size.height = rect;
      v90 = CGRectUnion(v89, v92);
      v60 = v90.origin.x;
      v62 = v90.origin.y;
      v64 = v90.size.width;
      v66 = v90.size.height;
    }

    *v75 = v60;
    *&v75[1] = v62;
    *&v75[2] = v64;
    *&v75[3] = v66;
    v67 = [MEMORY[0x277CCAE60] valueWithBytes:v75 objCType:{"{CGRect={CGPoint=dd}{CGSize=dd}}", *&v70}];
    [v3 setObject:v67 atIndexedSubscript:0];

    *v74 = v60;
    *&v74[1] = v62;
    *&v74[2] = v64;
    *&v74[3] = v66;
    v68 = [MEMORY[0x277CCAE60] valueWithBytes:v74 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    [v3 replaceObjectAtIndex:0 withObject:v68];
  }

  return v3;
}

- (SBIdleTimerCoordinating)_idleTimerCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);

  return WeakRetained;
}

+ (void)sharedInstance
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SBAssistantController sharedInstance]"];
  [v1 handleFailureInFunction:v0 file:@"SBAssistantController.m" lineNumber:264 description:@"this call must be made on the main thread"];
}

+ (void)sharedInstanceIfExists
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SBAssistantController sharedInstanceIfExists]"];
  [v1 handleFailureInFunction:v0 file:@"SBAssistantController.m" lineNumber:274 description:@"this call must be made on the main thread"];
}

- (void)assistantSession:(NSObject *)a3 requestsDismissalWithDismissalOptions:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ - assistant session requested dismissal but it isn't the current session, ignoring", v5, 0xCu);
}

- (void)siriPresentation:willStartHostingSceneWithIdentifier:bundleIdentifier:.cold.1()
{
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)siriPresentation:willStopHostingSceneWithIdentifier:bundleIdentifier:.cold.1()
{
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __81__SBAssistantController_requestTamaleLaunchAnimationLayerProviderWithCompletion___block_invoke_cold_1()
{
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __71__SBAssistantController_siriPresentation_requestsPunchout_withHandler___block_invoke_cold_1()
{
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end