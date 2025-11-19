@interface SBSystemApertureController
- (BOOL)containsHostSceneWithIdentityToken:(id)a3;
- (BOOL)systemApertureProximityBacklightPolicyShouldDisableGracePeriod:(id)a3;
- (CGRect)defaultIslandFrameInCoordinateSpace:(id)a3;
- (SBSystemApertureController)init;
- (SBSystemApertureWindowScene)activeWindowScene;
- (id)_createHighLevelSystemApertureSceneWithIdentifier:(id)a3 sceneSpecification:(id)a4 displayConfiguration:(id)a5 continuitySession:(id)a6 atLevel:(float)a7;
- (id)_traParticipantForWindowScene:(id)a3;
- (id)participantAssociatedWindows:(id)a3;
- (id)requireUserInterfaceOrientation:(int64_t)a3 reason:(id)a4;
- (id)scenesForBacklightSession;
- (id)suppressHidingOfEmptySystemApertureOnClonedDisplaysWithReason:(id)a3;
- (id)suppressSystemApertureCompletelyWithReason:(id)a3;
- (void)_configureBacklightEnvironmentSceneProviderIfNecessary;
- (void)_configureLegacyStatusBarPillElementProviderIfNecessary;
- (void)_configureNoticeManagerIfNecessary;
- (void)_ensureSystemAperturesOnCorrectDisplays;
- (void)_reevaluateSystemApertureCompleteSuppression;
- (void)_updateActiveWindowSceneWithSpringBoardWindowScene:(id)a3;
- (void)_updateOrientationFromOldWindowScene:(id)a3 activeWindowScene:(id)a4;
- (void)_updateSuppressionForDefaults;
- (void)_updateVisibilityForCloningAndSnapshots;
- (void)appendDescriptionForParticipant:(id)a3 withBuilder:(id)a4 multilinePrefix:(id)a5;
- (void)backlightController:(id)a3 willTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5;
- (void)createHighLevelSystemApertureWindowWithWindowScene:(id)a3;
- (void)createHighLevelWindowSceneWithDisplayConfiguration:(id)a3;
- (void)createSuperHighLevelCurtainWindowSceneWithDisplayConfiguration:(id)a3;
- (void)createSuperHighLevelCurtainWithWindowScene:(id)a3;
- (void)dealloc;
- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4;
- (void)highLevelContinuitySystemApertureWindowSceneDidConnect:(id)a3;
- (void)highLevelContinuitySystemApertureWindowSceneDidDisconnect:(id)a3;
- (void)hostedScenesDidChange;
- (void)setActiveWindowScene:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)superHighLevelContinuityCurtainWindowSceneDidConnect:(id)a3;
- (void)superHighLevelContinuityCurtainWindowSceneDidDisconnect:(id)a3;
- (void)systemApertureViewController:(id)a3 containsAnyContent:(BOOL)a4;
- (void)systemApertureViewController:(id)a3 isDisplayingAnyRequiredPriorityElements:(BOOL)a4;
- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4;
@end

@implementation SBSystemApertureController

- (void)_updateVisibilityForCloningAndSnapshots
{
  v3 = self->_containsAnyContent || [(SBSystemApertureSettings *)self->_settings suppressHidingOnClonedDisplayWhileEmpty]|| ([(SBSystemApertureDefaults *)self->_systemApertureDefaults alwaysShowSystemApertureOnClonedDisplays]& 1) != 0 || [(NSMutableArray *)self->_systemApertureSuppressEmptyHidingOnClonedDisplayAssertions count]!= 0;
  if (self->_containsAnyContent || [(SBSystemApertureSettings *)self->_settings suppressHidingInSnapshotsWhileEmpty])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(SBSystemApertureDefaults *)self->_systemApertureDefaults alwaysShowSystemApertureInSnapshots];
  }

  p_mainCloningShimViewController = &self->_mainCloningShimViewController;
  [(SBSystemApertureCaptureVisibilityShimViewController *)self->_mainCloningShimViewController setVisibleInSnapshots:v4];
  p_curtainCloningShimViewController = &self->_curtainCloningShimViewController;
  [(SBSystemApertureCaptureVisibilityShimViewController *)self->_curtainCloningShimViewController setVisibleInSnapshots:v4];
  [(SBSystemApertureCaptureVisibilityShimViewController *)self->_mainCloningShimViewController setContentsDifferOnClonedDisplay:0];
  [(SBSystemApertureCaptureVisibilityShimViewController *)self->_curtainCloningShimViewController setContentsDifferOnClonedDisplay:0];
  v7 = [(SBSystemApertureCaptureVisibilityShimViewController *)self->_mainCloningShimViewController newDefaultVisibilityAnimator];
  v8 = v7;
  if (v3)
  {
    if (!v7)
    {
      [(SBSystemApertureCaptureVisibilityShimViewController *)*p_mainCloningShimViewController setVisibleOnClonedDisplay:1];
      v9 = 2;
      p_mainCloningShimViewController = &self->_curtainCloningShimViewController;
LABEL_17:
      [(SBSystemApertureCaptureVisibilityShimViewController *)*p_mainCloningShimViewController setVisibleOnClonedDisplay:v3];
      [(SBSystemApertureViewController *)self->_systemApertureViewController setCloningStyle:v9];
      goto LABEL_18;
    }
  }

  else
  {
    if ([(SBSystemApertureCaptureVisibilityShimViewController *)*p_curtainCloningShimViewController isVisibleOnClonedDisplay])
    {
      [(SBSystemApertureCaptureVisibilityShimViewController *)*p_curtainCloningShimViewController setVisibleOnClonedDisplay:0];
    }

    if (!v8)
    {
      v9 = 0;
      goto LABEL_17;
    }
  }

  [(SBSystemApertureCaptureVisibilityShimViewController *)self->_mainCloningShimViewController setContentsDifferOnClonedDisplay:1];
  [(SBSystemApertureCaptureVisibilityShimViewController *)self->_curtainCloningShimViewController setContentsDifferOnClonedDisplay:1];
  [(SBSystemApertureViewController *)self->_systemApertureViewController setCloningStyle:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__SBSystemApertureController__updateVisibilityForCloningAndSnapshots__block_invoke;
  v12[3] = &unk_2783A9F58;
  v12[4] = self;
  v13 = v3;
  [v8 addAnimations:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SBSystemApertureController__updateVisibilityForCloningAndSnapshots__block_invoke_2;
  v10[3] = &unk_2783C5528;
  v11 = v3;
  v10[4] = self;
  [v8 addCompletion:v10];
  [v8 startAnimation];
LABEL_18:
}

- (void)hostedScenesDidChange
{
  if (self->_registeredBacklightSceneProvider)
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SBSystemApertureController_hostedScenesDidChange__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __51__SBSystemApertureController_hostedScenesDidChange__block_invoke(uint64_t a1)
{
  v2 = [SBApp backlightEnvironmentSessionProvider];
  [v2 invalidateBacklightScenesForProvider:*(a1 + 32)];
}

- (id)scenesForBacklightSession
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = v3;
  if (self->_highLevelWindowScene)
  {
    [v3 addObject:?];
  }

  if (self->_superHighLevelWindowScene)
  {
    [v4 addObject:?];
  }

  v5 = [(SBSystemApertureViewController *)self->_systemApertureViewController scenesForBacklightSession];
  [v4 unionSet:v5];

  return v4;
}

- (SBSystemApertureController)init
{
  v30[2] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = SBSystemApertureController;
  v2 = [(SBSystemApertureController *)&v28 init];
  if (v2)
  {
    v3 = +[SBSystemApertureDomain rootSettings];
    settings = v2->_settings;
    v2->_settings = v3;

    [(PTSettings *)v2->_settings addKeyObserver:v2];
    v5 = +[SBDefaults localDefaults];
    v6 = [v5 systemApertureDefaults];
    systemApertureDefaults = v2->_systemApertureDefaults;
    v2->_systemApertureDefaults = v6;

    objc_initWeak(&location, v2);
    v8 = v2->_systemApertureDefaults;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"alwaysShowSystemApertureOnClonedDisplays"];
    v30[0] = v9;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"alwaysShowSystemApertureInSnapshots"];
    v30[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v12 = MEMORY[0x277D85CD0];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __34__SBSystemApertureController_init__block_invoke;
    v25[3] = &unk_2783A8C68;
    objc_copyWeak(&v26, &location);
    v13 = [(SBSystemApertureDefaults *)v8 observeDefaults:v11 onQueue:MEMORY[0x277D85CD0] withBlock:v25];

    v14 = v2->_systemApertureDefaults;
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"suppressDynamicIslandCompletely"];
    v29 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __34__SBSystemApertureController_init__block_invoke_2;
    v23[3] = &unk_2783A8C68;
    objc_copyWeak(&v24, &location);
    v17 = [(SBSystemApertureDefaults *)v14 observeDefaults:v16 onQueue:MEMORY[0x277D85CD0] withBlock:v23];

    v18 = objc_alloc_init(SBSystemApertureStateDumpService);
    systemApertureStateDumpService = v2->_systemApertureStateDumpService;
    v2->_systemApertureStateDumpService = v18;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  if (SBSIsSystemApertureAvailable())
  {
    v20 = v2;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  return v21;
}

void __34__SBSystemApertureController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateVisibilityForCloningAndSnapshots];
}

void __34__SBSystemApertureController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSuppressionForDefaults];
}

- (void)dealloc
{
  [(TRAParticipant *)self->_traitsParticipant invalidate];
  traitsParticipant = self->_traitsParticipant;
  self->_traitsParticipant = 0;

  v4.receiver = self;
  v4.super_class = SBSystemApertureController;
  [(SBSystemApertureController *)&v4 dealloc];
}

- (void)setActiveWindowScene:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  if (obj && WeakRetained != obj)
  {
    substituteSystemApertureViewController = self->_substituteSystemApertureViewController;
    if (!substituteSystemApertureViewController && WeakRetained)
    {
      v6 = [SBSubstituteSystemApertureViewController alloc];
      [(SBSystemApertureViewController *)self->_systemApertureViewController minimumSensorRegionFrame];
      v7 = [(SBSubstituteSystemApertureViewController *)v6 initWithSensorRegionFrame:?];
      v8 = self->_substituteSystemApertureViewController;
      self->_substituteSystemApertureViewController = v7;

      substituteSystemApertureViewController = self->_substituteSystemApertureViewController;
    }

    [(SBSubstituteSystemApertureViewController *)substituteSystemApertureViewController setActiveWindowScene:WeakRetained];
    objc_storeWeak(&self->_activeWindowScene, obj);
    [(SBSystemApertureViewController *)self->_systemApertureViewController setActiveWindowScene:obj];
    [(SBSystemApertureController *)self _ensureSystemAperturesOnCorrectDisplays];
    if (WeakRetained)
    {
      [(SBSystemApertureController *)self _updateOrientationFromOldWindowScene:WeakRetained activeWindowScene:obj];
    }

    [(SBSystemApertureController *)self hostedScenesDidChange];
  }
}

- (BOOL)containsHostSceneWithIdentityToken:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBSystemApertureController *)a2 containsHostSceneWithIdentityToken:?];
  }

  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  v8 = [WeakRetained _FBSScene];
  v9 = [v8 identityToken];
  v10 = [v9 isEqual:v6];

  return v10;
}

- (void)_ensureSystemAperturesOnCorrectDisplays
{
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);
  v4 = [WeakRetained associatedWindowScene];
  v5 = [v4 isMainDisplayWindowScene];

  if (v5)
  {
    auxillarySuperHighLevelContinuityWindow = self->_auxillarySuperHighLevelContinuityWindow;
    if (auxillarySuperHighLevelContinuityWindow)
    {
      v7 = [(UIWindow *)auxillarySuperHighLevelContinuityWindow rootViewController];

      if (v7)
      {
        v8 = SBLogSystemApertureController();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [SBSystemApertureController _ensureSystemAperturesOnCorrectDisplays];
        }

        v9 = [(UIWindow *)self->_auxillarySuperHighLevelContinuityWindow rootViewController];
        v10 = [v9 view];
        [v10 removeFromSuperview];

        [(UIWindow *)self->_auxillarySuperHighLevelContinuityWindow setRootViewController:0];
      }
    }

    auxillarySuperHighLevelWindow = self->_auxillarySuperHighLevelWindow;
    if (auxillarySuperHighLevelWindow)
    {
      v12 = [(UIWindow *)auxillarySuperHighLevelWindow rootViewController];
      curtainCloningShimViewController = self->_curtainCloningShimViewController;

      if (v12 != curtainCloningShimViewController)
      {
        v14 = SBLogSystemApertureController();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [SBSystemApertureController _ensureSystemAperturesOnCorrectDisplays];
        }

        v15 = [(SBSystemApertureCaptureVisibilityShimViewController *)self->_curtainCloningShimViewController view];
        [v15 removeFromSuperview];

        [(UIWindow *)self->_auxillarySuperHighLevelWindow setRootViewController:self->_curtainCloningShimViewController];
      }
    }

    continuityWindow = self->_continuityWindow;
    if (continuityWindow)
    {
      if (self->_substituteSystemApertureViewController)
      {
        v17 = [(UIWindow *)continuityWindow rootViewController];
        substituteSystemApertureViewController = self->_substituteSystemApertureViewController;

        if (v17 != substituteSystemApertureViewController)
        {
          v19 = SBLogSystemApertureController();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [SBSystemApertureController _ensureSystemAperturesOnCorrectDisplays];
          }

          v20 = [(SBSubstituteSystemApertureViewController *)self->_substituteSystemApertureViewController view];
          [v20 removeFromSuperview];

          [(UIWindow *)self->_continuityWindow setRootViewController:self->_substituteSystemApertureViewController];
        }
      }
    }

    p_window = &self->_window;
    window = self->_window;
    if (window)
    {
      v23 = [(UIWindow *)window rootViewController];
      mainCloningShimViewController = self->_mainCloningShimViewController;
      p_mainCloningShimViewController = &self->_mainCloningShimViewController;

      if (v23 != mainCloningShimViewController)
      {
        v26 = SBLogSystemApertureController();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [SBSystemApertureController _ensureSystemAperturesOnCorrectDisplays];
        }

LABEL_42:

        v46 = [*p_mainCloningShimViewController view];
        [v46 removeFromSuperview];

        [(UIWindow *)*p_window setRootViewController:*p_mainCloningShimViewController];
      }
    }
  }

  else
  {
    v27 = self->_auxillarySuperHighLevelWindow;
    if (v27)
    {
      v28 = [(UIWindow *)v27 rootViewController];

      if (v28)
      {
        v29 = SBLogSystemApertureController();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [SBSystemApertureController _ensureSystemAperturesOnCorrectDisplays];
        }

        v30 = [(UIWindow *)self->_auxillarySuperHighLevelWindow rootViewController];
        v31 = [v30 view];
        [v31 removeFromSuperview];

        [(UIWindow *)self->_auxillarySuperHighLevelWindow setRootViewController:0];
      }
    }

    v32 = self->_auxillarySuperHighLevelContinuityWindow;
    if (v32)
    {
      v33 = [(UIWindow *)v32 rootViewController];
      v34 = self->_curtainCloningShimViewController;

      if (v33 != v34)
      {
        v35 = SBLogSystemApertureController();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [SBSystemApertureController _ensureSystemAperturesOnCorrectDisplays];
        }

        v36 = [(SBSystemApertureCaptureVisibilityShimViewController *)self->_curtainCloningShimViewController view];
        [v36 removeFromSuperview];

        [(UIWindow *)self->_auxillarySuperHighLevelContinuityWindow setRootViewController:self->_curtainCloningShimViewController];
      }
    }

    v37 = self->_continuityWindow;
    if (v37)
    {
      v38 = [(UIWindow *)v37 rootViewController];
      v39 = self->_mainCloningShimViewController;

      if (v38 != v39)
      {
        v40 = SBLogSystemApertureController();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          [SBSystemApertureController _ensureSystemAperturesOnCorrectDisplays];
        }

        v41 = [(SBSystemApertureCaptureVisibilityShimViewController *)self->_mainCloningShimViewController view];
        [v41 removeFromSuperview];

        [(UIWindow *)self->_continuityWindow setRootViewController:self->_mainCloningShimViewController];
      }
    }

    p_window = &self->_window;
    v42 = self->_window;
    if (v42)
    {
      v43 = self->_substituteSystemApertureViewController;
      p_mainCloningShimViewController = &self->_substituteSystemApertureViewController;
      if (v43)
      {
        v44 = [(UIWindow *)v42 rootViewController];
        v45 = *p_mainCloningShimViewController;

        if (v44 != v45)
        {
          v26 = SBLogSystemApertureController();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [SBSystemApertureController _ensureSystemAperturesOnCorrectDisplays];
          }

          goto LABEL_42;
        }
      }
    }
  }
}

- (void)_updateOrientationFromOldWindowScene:(id)a3 activeWindowScene:(id)a4
{
  v6 = a4;
  v7 = [(SBSystemApertureController *)self _traParticipantForWindowScene:a3];
  v8 = [v7 sbf_currentOrientation];

  v9 = [(SBSystemApertureController *)self _traParticipantForWindowScene:v6];

  v10 = [v9 sbf_currentOrientation];
  if (v8 != v10)
  {
    systemApertureViewController = self->_systemApertureViewController;

    [(SBSystemApertureViewController *)systemApertureViewController hostOrientationDidChangeTo:v10 withPreviousOrientation:v8 context:0];
  }
}

- (id)_traParticipantForWindowScene:(id)a3
{
  v4 = [a3 associatedWindowScene];
  v5 = [v4 isContinuityDisplayWindowScene];
  v6 = 104;
  if (v5)
  {
    v6 = 112;
  }

  v7 = *(&self->super.isa + v6);
  v8 = v7;

  return v7;
}

- (void)createHighLevelWindowSceneWithDisplayConfiguration:(id)a3
{
  v8 = a3;
  if (SBSIsSystemApertureAvailable())
  {
    v4 = +[(FBSSceneSpecification *)SBSystemApertureSceneSpecification];
    LODWORD(v5) = 1259902594;
    v6 = [(SBSystemApertureController *)self _createHighLevelSystemApertureSceneWithIdentifier:@"SystemAperture" sceneSpecification:v4 displayConfiguration:v8 continuitySession:0 atLevel:v5];
    highLevelWindowScene = self->_highLevelWindowScene;
    self->_highLevelWindowScene = v6;
  }
}

- (void)createSuperHighLevelCurtainWindowSceneWithDisplayConfiguration:(id)a3
{
  v8 = a3;
  if (SBSIsSystemApertureAvailable())
  {
    v4 = +[(FBSSceneSpecification *)SBSystemApertureCurtainSceneSpecification];
    LODWORD(v5) = 1260902594;
    v6 = [(SBSystemApertureController *)self _createHighLevelSystemApertureSceneWithIdentifier:@"SuperHighLevelSystemAperture" sceneSpecification:v4 displayConfiguration:v8 continuitySession:0 atLevel:v5];
    superHighLevelWindowScene = self->_superHighLevelWindowScene;
    self->_superHighLevelWindowScene = v6;
  }
}

- (id)_createHighLevelSystemApertureSceneWithIdentifier:(id)a3 sceneSpecification:(id)a4 displayConfiguration:(id)a5 continuitySession:(id)a6 atLevel:(float)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [MEMORY[0x277D0AAD8] sharedInstance];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __146__SBSystemApertureController__createHighLevelSystemApertureSceneWithIdentifier_sceneSpecification_displayConfiguration_continuitySession_atLevel___block_invoke;
  v24[3] = &unk_2783C54D8;
  v25 = v11;
  v26 = v12;
  v29 = a7;
  v27 = v13;
  v28 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = [v15 createScene:v24];

  v21 = [v20 systemShellHostingEnvironment];
  v22 = SBUISystemShellHostingSpaceIdentifierForDisplayConfiguration();
  [v21 setSystemShellHostingSpaceIdentifier:v22];

  [v20 activate:0];

  return v20;
}

void __146__SBSystemApertureController__createHighLevelSystemApertureSceneWithIdentifier_sceneSpecification_displayConfiguration_continuitySession_atLevel___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D0ADC0];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCA8D8];
  v6 = a2;
  v7 = [v5 mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = [v3 identityForIdentifier:v4 workspaceIdentifier:v8];
  [v6 setIdentity:v9];

  v10 = [MEMORY[0x277D0ADA8] localIdentity];
  [v6 setClientIdentity:v10];

  [v6 setSpecification:*(a1 + 40)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __146__SBSystemApertureController__createHighLevelSystemApertureSceneWithIdentifier_sceneSpecification_displayConfiguration_continuitySession_atLevel___block_invoke_2;
  v11[3] = &unk_2783C54B0;
  v12 = *(a1 + 48);
  v14 = *(a1 + 64);
  v13 = *(a1 + 56);
  [v6 configureParameters:v11];
}

void __146__SBSystemApertureController__createHighLevelSystemApertureSceneWithIdentifier_sceneSpecification_displayConfiguration_continuitySession_atLevel___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __146__SBSystemApertureController__createHighLevelSystemApertureSceneWithIdentifier_sceneSpecification_displayConfiguration_continuitySession_atLevel___block_invoke_3;
  v5[3] = &unk_2783C5488;
  v6 = *(a1 + 32);
  v8 = *(a1 + 48);
  v7 = *(a1 + 40);
  v4 = a2;
  [v4 updateSettingsWithBlock:v5];
  [v4 updateClientSettingsWithBlock:&__block_literal_global_463];
}

void __146__SBSystemApertureController__createHighLevelSystemApertureSceneWithIdentifier_sceneSpecification_displayConfiguration_continuitySession_atLevel___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  [v9 setDisplayConfiguration:*(a1 + 32)];
  [*(a1 + 32) bounds];
  [v9 setFrame:?];
  [v9 setLevel:*(a1 + 48)];
  [v9 setForeground:1];
  [v9 setInterfaceOrientation:1];
  if ([v9 isUISubclass])
  {
    v3 = v9;
    [v3 setInterfaceOrientationMode:100];
    [v3 setTargetOfEventDeferringEnvironments:0];
    v4 = SBApp;
    v5 = [*(a1 + 32) identity];
    v6 = [v4 userInterfaceStyleProviderForDisplay:v5];
    [v3 setUserInterfaceStyle:{objc_msgSend(v6, "currentStyle")}];

    v7 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
    [v7 sb_applyDisplayEdgeInfoToSceneSettings:v3];
  }

  v8 = [v9 ignoreOcclusionReasons];
  [v8 addObject:@"SystemApp"];

  if (*(a1 + 40) && [v9 conformsToProtocol:&unk_2835FD468])
  {
    [v9 setContinuitySession:*(a1 + 40)];
  }
}

void __146__SBSystemApertureController__createHighLevelSystemApertureSceneWithIdentifier_sceneSpecification_displayConfiguration_continuitySession_atLevel___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUISubclass])
  {
    v2 = v3;
    [v2 setStatusBarStyle:0];
    [v2 setInterfaceOrientation:1];
  }
}

- (void)createHighLevelSystemApertureWindowWithWindowScene:(id)a3
{
  v31 = a3;
  if (SBSIsSystemApertureAvailable())
  {
    if (self->_window)
    {
      [SBSystemApertureController createHighLevelSystemApertureWindowWithWindowScene:];
    }

    v4 = objc_opt_class();
    v5 = v31;
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

    v8 = [(SBFTouchPassThroughWindow *)[SBSystemApertureWindow alloc] initWithWindowScene:v5 role:@"SBTraitsParticipantRoleSystemAperture" debugName:@"Jindo Window"];
    window = self->_window;
    self->_window = &v8->super.super.super;

    v10 = [[SBSystemApertureViewController alloc] initWithActiveWindowScene:v7];
    systemApertureViewController = self->_systemApertureViewController;
    self->_systemApertureViewController = v10;

    [(SBSystemApertureViewController *)self->_systemApertureViewController setVisibilityDelegate:self];
    [(SBSystemApertureViewController *)self->_systemApertureViewController setBacklightSessionAggregator:self];
    v12 = [[SBSystemApertureCaptureVisibilityShimViewController alloc] initWithContentViewController:self->_systemApertureViewController];
    mainCloningShimViewController = self->_mainCloningShimViewController;
    self->_mainCloningShimViewController = v12;

    [(SBSystemApertureCaptureVisibilityShimViewController *)self->_mainCloningShimViewController setContentsDifferOnClonedDisplay:1];
    [(UIWindow *)self->_window setRootViewController:self->_mainCloningShimViewController];
    [(UIWindow *)self->_window _legacySetRotatableViewOrientation:1 updateStatusBar:0 duration:0 force:0.0];
    SBSystemApertureApplyUnDisplayZoomScaleToWindowInWindowSceneIfNecessary(self->_window, v5);
    v14 = [v7 associatedWindowScene];
    v15 = [v14 traitsArbiter];

    if (!v15)
    {
      [SBSystemApertureController createHighLevelSystemApertureWindowWithWindowScene:];
    }

    v16 = [v15 acquireParticipantWithRole:@"SBTraitsParticipantRoleSystemAperture" delegate:self];
    traitsParticipant = self->_traitsParticipant;
    self->_traitsParticipant = v16;

    [(TRAParticipant *)self->_traitsParticipant setNeedsUpdatePreferencesWithReason:@"init"];
    [(TRAParticipant *)self->_traitsParticipant updatePreferencesIfNeeded];
    [(UIWindow *)self->_window setHidden:[(NSMutableArray *)self->_systemApertureSuppressionAssertions count]!= 0];
    [(SBSystemApertureController *)self _configureBacklightEnvironmentSceneProviderIfNecessary];
    [(SBSystemApertureController *)self _configureNoticeManagerIfNecessary];
    [(SBSystemApertureController *)self _configureLegacyStatusBarPillElementProviderIfNecessary];
    v18 = objc_alloc_init(SBSystemApertureSceneHoster);
    sceneHoster = self->_sceneHoster;
    self->_sceneHoster = v18;

    [(SBSystemApertureSceneHoster *)self->_sceneHoster activateWithSystemApertureController:self];
    v20 = objc_alloc_init(SBSystemApertureLayoutMonitorServer);
    systemApertureLayoutMonitorServer = self->_systemApertureLayoutMonitorServer;
    self->_systemApertureLayoutMonitorServer = v20;

    v22 = [[SBSystemApertureRestrictionServer alloc] initWithDelegate:self];
    systemApertureRestrictionServer = self->_systemApertureRestrictionServer;
    self->_systemApertureRestrictionServer = v22;

    v24 = objc_alloc(MEMORY[0x277D66B98]);
    v25 = [(UIWindow *)self->_window _contextId];
    v26 = [(UIWindow *)self->_window layer];
    v27 = [v24 initWithSourceContextID:v25 sourceLayerRenderID:CALayerGetRenderId()];

    v28 = [[SBSystemAperturePortalSourceInfoRequestServer alloc] initWithPortalSource:v27];
    systemAperturePortalSourceRequestServer = self->_systemAperturePortalSourceRequestServer;
    self->_systemAperturePortalSourceRequestServer = v28;

    [(SBSystemAperturePortalSourceInfoRequestServer *)self->_systemAperturePortalSourceRequestServer startListener];
    v30 = +[SBBacklightController sharedInstance];
    [v30 addObserver:self];
    [(SBSystemApertureController *)self setActiveWindowScene:v5];
  }
}

- (void)highLevelContinuitySystemApertureWindowSceneDidConnect:(id)a3
{
  v11 = a3;
  if (SBSIsSystemApertureAvailable())
  {
    v4 = [SBApp multiDisplayUserInteractionCoordinator];
    [v4 addActiveDisplayWindowSceneObserver:self];

    if (self->_continuityWindow)
    {
      [SBSystemApertureController highLevelContinuitySystemApertureWindowSceneDidConnect:];
    }

    v5 = [(SBFTouchPassThroughWindow *)[SBSystemApertureWindow alloc] initWithWindowScene:v11 role:@"SBTraitsParticipantRoleSystemAperture" debugName:@"Jindo Continuity Window"];
    continuityWindow = self->_continuityWindow;
    self->_continuityWindow = &v5->super.super.super;

    [(UIWindow *)self->_continuityWindow _legacySetRotatableViewOrientation:1 updateStatusBar:0 duration:0 force:0.0];
    SBSystemApertureApplyUnDisplayZoomScaleToWindowInWindowSceneIfNecessary(self->_continuityWindow, v11);
    [(UIWindow *)self->_continuityWindow setHidden:[(NSMutableArray *)self->_systemApertureSuppressionAssertions count]!= 0];
    v7 = [v11 associatedWindowScene];
    v8 = [v7 traitsArbiter];

    if (!v8)
    {
      [SBSystemApertureController highLevelContinuitySystemApertureWindowSceneDidConnect:];
    }

    v9 = [v8 acquireParticipantWithRole:@"SBTraitsParticipantRoleSystemAperture" delegate:self];
    continuityTraitsParticipant = self->_continuityTraitsParticipant;
    self->_continuityTraitsParticipant = v9;

    [(TRAParticipant *)self->_continuityTraitsParticipant setNeedsUpdatePreferencesWithReason:@"init"];
    [(TRAParticipant *)self->_continuityTraitsParticipant updatePreferencesIfNeeded];
  }
}

- (void)highLevelContinuitySystemApertureWindowSceneDidDisconnect:(id)a3
{
  [(TRAParticipant *)self->_continuityTraitsParticipant invalidate];
  continuityTraitsParticipant = self->_continuityTraitsParticipant;
  self->_continuityTraitsParticipant = 0;

  [(UIWindow *)self->_continuityWindow removeFromSuperview];
  continuityWindow = self->_continuityWindow;
  self->_continuityWindow = 0;

  v6 = [SBApp multiDisplayUserInteractionCoordinator];
  [v6 removeActiveDisplayWindowSceneObserver:self];

  v7 = [(UIWindow *)self->_window _sbWindowScene];
  [(SBSystemApertureController *)self _updateActiveWindowSceneWithSpringBoardWindowScene:v7];
}

- (void)createSuperHighLevelCurtainWithWindowScene:(id)a3
{
  v11 = a3;
  if (SBSIsSystemApertureAvailable())
  {
    if (self->_auxillarySuperHighLevelWindow)
    {
      [SBSystemApertureController createSuperHighLevelCurtainWithWindowScene:];
    }

    v4 = [(SBFTouchPassThroughWindow *)[SBSystemApertureWindow alloc] initWithWindowScene:v11 role:@"SBTraitsParticipantRoleSystemAperture" debugName:@"Jindo Super High Level Window"];
    auxillarySuperHighLevelWindow = self->_auxillarySuperHighLevelWindow;
    self->_auxillarySuperHighLevelWindow = &v4->super.super.super;

    SBSystemApertureApplyUnDisplayZoomScaleToWindowInWindowSceneIfNecessary(self->_auxillarySuperHighLevelWindow, v11);
    [(UIWindow *)self->_auxillarySuperHighLevelWindow setUserInteractionEnabled:0];
    v6 = objc_alloc_init(SBSystemApertureCurtainViewController);
    systemApertureCurtainViewController = self->_systemApertureCurtainViewController;
    self->_systemApertureCurtainViewController = v6;

    v8 = [[SBSystemApertureCaptureVisibilityShimViewController alloc] initWithContentViewController:self->_systemApertureCurtainViewController];
    curtainCloningShimViewController = self->_curtainCloningShimViewController;
    self->_curtainCloningShimViewController = v8;

    [(SBSystemApertureCaptureVisibilityShimViewController *)self->_curtainCloningShimViewController setContentsDifferOnClonedDisplay:1];
    [(UIWindow *)self->_auxillarySuperHighLevelWindow setRootViewController:self->_curtainCloningShimViewController];
    [(SBSystemApertureViewController *)self->_systemApertureViewController setCurtainViewHoster:self->_systemApertureCurtainViewController];
    [(UIWindow *)self->_auxillarySuperHighLevelWindow setHidden:[(NSMutableArray *)self->_systemApertureSuppressionAssertions count]!= 0];
    v10 = +[SBReachabilityManager sharedInstance];
    [v10 ignoreWindowForReachability:self->_auxillarySuperHighLevelWindow];

    [(SBSystemApertureController *)self _updateSuppressionForDefaults];
  }
}

- (void)superHighLevelContinuityCurtainWindowSceneDidConnect:(id)a3
{
  v7 = a3;
  if (SBSIsSystemApertureAvailable())
  {
    if (self->_auxillarySuperHighLevelContinuityWindow)
    {
      [SBSystemApertureController superHighLevelContinuityCurtainWindowSceneDidConnect:];
    }

    v4 = [(SBFTouchPassThroughWindow *)[SBSystemApertureWindow alloc] initWithWindowScene:v7 role:@"SBTraitsParticipantRoleSystemAperture" debugName:@"Jindo Super High Level Continuity Window"];
    auxillarySuperHighLevelContinuityWindow = self->_auxillarySuperHighLevelContinuityWindow;
    self->_auxillarySuperHighLevelContinuityWindow = &v4->super.super.super;

    SBSystemApertureApplyUnDisplayZoomScaleToWindowInWindowSceneIfNecessary(self->_auxillarySuperHighLevelContinuityWindow, v7);
    [(UIWindow *)self->_auxillarySuperHighLevelContinuityWindow _legacySetRotatableViewOrientation:1 updateStatusBar:0 duration:0 force:0.0];
    [(UIWindow *)self->_auxillarySuperHighLevelContinuityWindow setUserInteractionEnabled:0];
    [(UIWindow *)self->_auxillarySuperHighLevelContinuityWindow setHidden:[(NSMutableArray *)self->_systemApertureSuppressionAssertions count]!= 0];
    v6 = +[SBReachabilityManager sharedInstance];
    [v6 ignoreWindowForReachability:self->_auxillarySuperHighLevelContinuityWindow];

    [(SBSystemApertureController *)self _updateSuppressionForDefaults];
  }
}

- (void)superHighLevelContinuityCurtainWindowSceneDidDisconnect:(id)a3
{
  [(UIWindow *)self->_auxillarySuperHighLevelContinuityWindow removeFromSuperview];
  auxillarySuperHighLevelContinuityWindow = self->_auxillarySuperHighLevelContinuityWindow;
  self->_auxillarySuperHighLevelContinuityWindow = 0;
}

- (CGRect)defaultIslandFrameInCoordinateSpace:(id)a3
{
  systemApertureViewController = self->_systemApertureViewController;
  v5 = a3;
  [(SBSystemApertureViewController *)systemApertureViewController minimumSensorRegionFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(SBSystemApertureViewController *)self->_systemApertureViewController view];
  [v14 convertRect:v5 toCoordinateSpace:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)suppressSystemApertureCompletelyWithReason:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D6B898]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SBSystemApertureController_suppressSystemApertureCompletelyWithReason___block_invoke;
  v10[3] = &unk_2783C5500;
  v10[4] = self;
  [v4 addInvalidationBlock:v10];
  systemApertureSuppressionAssertions = self->_systemApertureSuppressionAssertions;
  if (!systemApertureSuppressionAssertions)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = self->_systemApertureSuppressionAssertions;
    self->_systemApertureSuppressionAssertions = v6;

    systemApertureSuppressionAssertions = self->_systemApertureSuppressionAssertions;
  }

  [(NSMutableArray *)systemApertureSuppressionAssertions addObject:v4];
  v8 = SBLogSystemApertureController();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "System Aperture Complete Suppression Assertion Acquired: %{public}@", buf, 0xCu);
  }

  [(SBSystemApertureController *)self _reevaluateSystemApertureCompleteSuppression];

  return v4;
}

void __73__SBSystemApertureController_suppressSystemApertureCompletelyWithReason___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogSystemApertureController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "System Aperture Complete Suppression Assertion Invalidated: %{public}@", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 168) removeObject:v3];
  [*(a1 + 32) _reevaluateSystemApertureCompleteSuppression];
}

- (id)suppressHidingOfEmptySystemApertureOnClonedDisplaysWithReason:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D6B898]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__SBSystemApertureController_suppressHidingOfEmptySystemApertureOnClonedDisplaysWithReason___block_invoke;
  v10[3] = &unk_2783C5500;
  v10[4] = self;
  [v4 addInvalidationBlock:v10];
  systemApertureSuppressEmptyHidingOnClonedDisplayAssertions = self->_systemApertureSuppressEmptyHidingOnClonedDisplayAssertions;
  if (!systemApertureSuppressEmptyHidingOnClonedDisplayAssertions)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = self->_systemApertureSuppressEmptyHidingOnClonedDisplayAssertions;
    self->_systemApertureSuppressEmptyHidingOnClonedDisplayAssertions = v6;

    systemApertureSuppressEmptyHidingOnClonedDisplayAssertions = self->_systemApertureSuppressEmptyHidingOnClonedDisplayAssertions;
  }

  [(NSMutableArray *)systemApertureSuppressEmptyHidingOnClonedDisplayAssertions addObject:v4];
  v8 = SBLogSystemApertureController();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "System Aperture Hiding of Empty Element on Cloned Display Assertion Acquired: %{public}@", buf, 0xCu);
  }

  [(SBSystemApertureController *)self _updateVisibilityForCloningAndSnapshots];

  return v4;
}

void __92__SBSystemApertureController_suppressHidingOfEmptySystemApertureOnClonedDisplaysWithReason___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogSystemApertureController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "System Aperture Hiding of Empty Element on Cloned Display Assertion Invalidated: %{public}@", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 176) removeObject:v3];
  [*(a1 + 32) _updateVisibilityForCloningAndSnapshots];
}

uint64_t __69__SBSystemApertureController__updateVisibilityForCloningAndSnapshots__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v9 = v2;
    v6 = result;
    if (*(result + 40) == 1)
    {
      [*(*(result + 32) + 64) setVisibleOnClonedDisplay:1];
      if (*(v6 + 40))
      {
        v7 = 2;
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

    [*(*(v6 + 32) + 40) setCloningStyle:{v7, v3, v9, v4}];
    [*(*(v6 + 32) + 48) setContentsDifferOnClonedDisplay:0];
    v8 = *(*(v6 + 32) + 64);

    return [v8 setContentsDifferOnClonedDisplay:0];
  }

  return result;
}

- (void)_reevaluateSystemApertureCompleteSuppression
{
  if ([(NSMutableArray *)self->_systemApertureSuppressionAssertions count]&& !self->_isDisplayingAnyRequiredPriorityElements)
  {
    if (!self->_overrideRenderingStyleAssertion)
    {
      v8 = [(SBSystemApertureViewController *)self->_systemApertureViewController overrideContainerRenderingStyleAssertion:3];
      overrideRenderingStyleAssertion = self->_overrideRenderingStyleAssertion;
      self->_overrideRenderingStyleAssertion = v8;
    }

    v10 = [(SBSystemApertureCaptureVisibilityShimViewController *)self->_mainCloningShimViewController view];
    [v10 setHidden:1];

    v11 = [(SBSystemApertureCaptureVisibilityShimViewController *)self->_curtainCloningShimViewController view];
    [v11 setHidden:1];

    prototypingDefaultGainMapDefeatingLayer = self->_prototypingDefaultGainMapDefeatingLayer;
    if (!prototypingDefaultGainMapDefeatingLayer)
    {
      v13 = objc_alloc_init(MEMORY[0x277CD9EA8]);
      v14 = self->_prototypingDefaultGainMapDefeatingLayer;
      self->_prototypingDefaultGainMapDefeatingLayer = v13;

      v15 = [(UIWindow *)self->_auxillarySuperHighLevelWindow layer];
      [v15 addSublayer:self->_prototypingDefaultGainMapDefeatingLayer];

      prototypingDefaultGainMapDefeatingLayer = self->_prototypingDefaultGainMapDefeatingLayer;
    }

    [(CAGainMapLayer *)prototypingDefaultGainMapDefeatingLayer setFrame:0.0, 0.0, 1.0, 1.0];
  }

  else
  {
    if (self->_overrideRenderingStyleAssertion && self->_isDisplayingAnyRequiredPriorityElements && [(NSMutableArray *)self->_systemApertureSuppressionAssertions count])
    {
      v3 = SBLogSystemApertureController();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Forcing System Aperture visible in order to display required priority element", v16, 2u);
      }
    }

    [(SAInvalidatable *)self->_overrideRenderingStyleAssertion invalidateWithReason:@"No longer completely suppressing System Aperture"];
    v4 = self->_overrideRenderingStyleAssertion;
    self->_overrideRenderingStyleAssertion = 0;

    v5 = [(SBSystemApertureCaptureVisibilityShimViewController *)self->_mainCloningShimViewController view];
    [v5 setHidden:0];

    v6 = [(SBSystemApertureCaptureVisibilityShimViewController *)self->_curtainCloningShimViewController view];
    [v6 setHidden:0];

    [(CAGainMapLayer *)self->_prototypingDefaultGainMapDefeatingLayer removeFromSuperlayer];
    v7 = self->_prototypingDefaultGainMapDefeatingLayer;
    self->_prototypingDefaultGainMapDefeatingLayer = 0;
  }
}

- (void)_updateSuppressionForDefaults
{
  v3 = [(SBSystemApertureDefaults *)self->_systemApertureDefaults suppressDynamicIslandCompletely];
  jindoDefaultsSuppressionAssertion = self->_jindoDefaultsSuppressionAssertion;
  if (v3)
  {
    if (jindoDefaultsSuppressionAssertion)
    {
      return;
    }

    v5 = [(SBSystemApertureController *)self suppressSystemApertureCompletelyWithReason:@"NSUserDefault SBSuppressDynamicIslandCompletely is set."];
  }

  else
  {
    [(SAInvalidatable *)jindoDefaultsSuppressionAssertion invalidateWithReason:@"NSUserDefault SBSuppressDynamicIslandCompletely is not set."];
    v5 = 0;
  }

  v6 = self->_jindoDefaultsSuppressionAssertion;
  self->_jindoDefaultsSuppressionAssertion = v5;
}

- (void)systemApertureViewController:(id)a3 containsAnyContent:(BOOL)a4
{
  if (self->_containsAnyContent != a4)
  {
    self->_containsAnyContent = a4;
    [(SBSystemApertureController *)self _updateVisibilityForCloningAndSnapshots];
  }
}

- (void)systemApertureViewController:(id)a3 isDisplayingAnyRequiredPriorityElements:(BOOL)a4
{
  if (self->_isDisplayingAnyRequiredPriorityElements != a4)
  {
    self->_isDisplayingAnyRequiredPriorityElements = a4;
    [(SBSystemApertureController *)self _reevaluateSystemApertureCompleteSuppression];
  }
}

- (id)requireUserInterfaceOrientation:(int64_t)a3 reason:(id)a4
{
  v6 = a4;
  if (!self->_orientationOverrideAssertions)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    orientationOverrideAssertions = self->_orientationOverrideAssertions;
    self->_orientationOverrideAssertions = v7;
  }

  v9 = SBSAStringFromUIInterfaceOrientation(a3);
  objc_initWeak(&location, self);
  v10 = objc_alloc(MEMORY[0x277CF0CE8]);
  v11 = MEMORY[0x277D85CD0];
  v12 = MEMORY[0x277D85CD0];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__SBSystemApertureController_requireUserInterfaceOrientation_reason___block_invoke;
  v18 = &unk_2783B8970;
  objc_copyWeak(&v19, &location);
  v13 = [v10 initWithReason:v6 identifier:v9 requiredInvalidationQueue:v11 deallocPolicy:0 invalidatedWithContextBlock:&v15];

  [(NSMutableArray *)self->_orientationOverrideAssertions addObject:v13, v15, v16, v17, v18];
  [(TRAParticipant *)self->_traitsParticipant setNeedsUpdatePreferencesWithReason:@"System Aperture Orientation Override Addition"];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

void __69__SBSystemApertureController_requireUserInterfaceOrientation_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *(WeakRetained + 28);
  v5 = [v3 assertion];

  [v4 removeObject:v5];
  [*(WeakRetained + 13) setNeedsUpdatePreferencesWithReason:@"System Aperture Orientation Override Removal"];
}

- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSystemApertureController updatePreferencesForParticipant:updater:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [SBSystemApertureController updatePreferencesForParticipant:updater:];
LABEL_3:
  [v8 updateZOrderLevelPreferencesWithBlock:&__block_literal_global_199_0];
  v9 = [(NSMutableArray *)self->_orientationOverrideAssertions lastObject];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 identifier];
    v12 = SBSAStringFromUIInterfaceOrientation(1uLL);
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v15 = SBSAStringFromUIInterfaceOrientation(2uLL);
      v16 = [v11 isEqualToString:v15];

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v17 = SBSAStringFromUIInterfaceOrientation(4uLL);
        v18 = [v11 isEqualToString:v17];

        if (v18)
        {
          v14 = 16;
        }

        else
        {
          v19 = SBSAStringFromUIInterfaceOrientation(3uLL);
          v20 = [v11 isEqualToString:v19];

          if (v20)
          {
            v14 = 8;
          }

          else
          {
            v14 = 30;
          }
        }
      }
    }
  }

  else
  {
    v14 = 30;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__SBSystemApertureController_updatePreferencesForParticipant_updater___block_invoke_2;
  v21[3] = &__block_descriptor_40_e42_v16__0__TRAMutablePreferencesOrientation_8l;
  v21[4] = v14;
  [v8 updateOrientationPreferencesWithBlock:v21];
}

- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = v16;
  if (v16)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSystemApertureController didChangeSettingsForParticipant:context:];
    v7 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [SBSystemApertureController didChangeSettingsForParticipant:context:];
  v7 = v16;
LABEL_3:
  v8 = [(TRAParticipant *)v7 role];
  v9 = SBTraitsArbiterOrientationActuationEnabledForRole(v8);

  if (v9)
  {
    v10 = [(TRAParticipant *)v16 sbf_currentOrientation];
    v11 = [(TRAParticipant *)v16 sbf_previousOrientation];
    v12 = [(SBSystemApertureViewController *)self->_systemApertureViewController activeWindowScene];
    v13 = [v12 associatedWindowScene];

    if (self->_traitsParticipant == v16 && ([v13 isMainDisplayWindowScene] & 1) != 0 || self->_continuityTraitsParticipant == v16 && objc_msgSend(v13, "isExtendedDisplayWindowScene"))
    {
      systemApertureViewController = self->_systemApertureViewController;
      v15 = [v6 orientationActuationContext];
      [(SBSystemApertureViewController *)systemApertureViewController hostOrientationDidChangeTo:v10 withPreviousOrientation:v11 context:v15];
    }
  }
}

- (void)appendDescriptionForParticipant:(id)a3 withBuilder:(id)a4 multilinePrefix:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__SBSystemApertureController_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke;
  v12[3] = &unk_2783A8ED8;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [v10 appendBodySectionWithName:@"Associated Windows" multilinePrefix:a5 block:v12];
}

void __90__SBSystemApertureController_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) participantAssociatedWindows:*(a1 + 40)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v1 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v1)
  {
    v2 = v1;
    v15 = *v18;
    do
    {
      v3 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v17 + 1) + 8 * v3);
        v5 = *(a1 + 48);
        v6 = MEMORY[0x277CCACA8];
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v4 _debugName];
        if ([v4 isHidden])
        {
          v10 = @"NO";
        }

        else
        {
          v10 = @"YES";
        }

        [v4 interfaceOrientation];
        v11 = BSInterfaceOrientationDescription();
        v12 = [v4 rootViewController];
        v13 = [v6 stringWithFormat:@"<%@: %p %@>; Visible:%@; Orientation:%@; Root VC: %@", v8, v4, v9, v10, v11, v12];;
        [v5 appendString:v13 withName:0];

        ++v3;
      }

      while (v2 != v3);
      v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v2);
  }
}

- (id)participantAssociatedWindows:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  traitsParticipant = self->_traitsParticipant;
  if (traitsParticipant == v5)
  {
    goto LABEL_7;
  }

  if (self->_continuityTraitsParticipant != v5)
  {
    [(SBSystemApertureController *)a2 participantAssociatedWindows:&self->_traitsParticipant, &v11];
    traitsParticipant = v11;
  }

  if (traitsParticipant == v6)
  {
LABEL_7:
    v13[0] = self->_window;
    p_continuityWindow = v13;
  }

  else
  {
    if (self->_continuityTraitsParticipant != v6)
    {
      v8 = MEMORY[0x277CBEBF8];
      goto LABEL_9;
    }

    continuityWindow = self->_continuityWindow;
    p_continuityWindow = &continuityWindow;
  }

  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:p_continuityWindow count:1];
LABEL_9:

  return v8;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_settings == a3)
  {
    v9 = v6;
    if (([v6 isEqual:@"suppressHidingOnClonedDisplayWhileEmpty"] & 1) != 0 || (v8 = objc_msgSend(v9, "isEqual:", @"suppressHidingInSnapshotsWhileEmpty"), v7 = v9, v8))
    {
      [(SBSystemApertureController *)self _updateVisibilityForCloningAndSnapshots];
      v7 = v9;
    }
  }
}

- (BOOL)systemApertureProximityBacklightPolicyShouldDisableGracePeriod:(id)a3
{
  v3 = [SBApp proximitySensorManager];
  v4 = [v3 isGracePeriodDisabled];

  return v4;
}

- (void)backlightController:(id)a3 willTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5
{
  if (SBBacklightStateIsActive([a3 backlightState]))
  {
    IsActive = SBBacklightStateIsActive(a4);
    if (a5 != 13 && !IsActive)
    {
      v9 = [(SBSystemApertureController *)self restrictSystemApertureToDefaultLayoutWithReason:@"Backlight no longer active"];
      [v9 invalidateWithReason:@"transient transition to default layout"];
    }
  }
}

- (void)_updateActiveWindowSceneWithSpringBoardWindowScene:(id)a3
{
  if ([a3 isMainDisplayWindowScene])
  {
    window = self->_window;
  }

  else
  {
    window = self->_continuityWindow;
  }

  v5 = [(UIWindow *)window windowScene];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;

  v9 = v10;
  if (!v10)
  {
    [SBSystemApertureController _updateActiveWindowSceneWithSpringBoardWindowScene:];
    v9 = 0;
  }

  [(SBSystemApertureController *)self setActiveWindowScene:v9];
}

- (void)_configureNoticeManagerIfNecessary
{
  if (!self->_systemAperturePresentableManager)
  {
    v4 = [[SBSystemAperturePresentableManager alloc] initWithElementRegistrar:self];
    systemAperturePresentableManager = self->_systemAperturePresentableManager;
    self->_systemAperturePresentableManager = v4;

    v6 = [SBApp bannerManager];
    [v6 setPresentableInterceptor:self->_systemAperturePresentableManager];
  }
}

- (void)_configureLegacyStatusBarPillElementProviderIfNecessary
{
  v3 = objc_alloc_init(SBSystemApertureStatusBarPillElementProvider);
  legacyStatusBarPillElementProvider = self->_legacyStatusBarPillElementProvider;
  self->_legacyStatusBarPillElementProvider = v3;

  [(SBSystemApertureStatusBarPillElementProvider *)self->_legacyStatusBarPillElementProvider addObserver:self->_systemApertureViewController];
  v5 = self->_legacyStatusBarPillElementProvider;

  [(SBSystemApertureStatusBarPillElementProvider *)v5 activateWithRegistrar:self];
}

- (void)_configureBacklightEnvironmentSceneProviderIfNecessary
{
  if (!self->_registeredBacklightSceneProvider)
  {
    v3 = [SBApp backlightEnvironmentSessionProvider];
    [v3 registerBacklightEnvironmentSceneProvider:self];

    self->_registeredBacklightSceneProvider = 1;
  }
}

- (SBSystemApertureWindowScene)activeWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_activeWindowScene);

  return WeakRetained;
}

- (void)containsHostSceneWithIdentityToken:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"token != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSystemApertureController.m";
    v16 = 1024;
    v17 = 214;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)createHighLevelSystemApertureWindowWithWindowScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)createHighLevelSystemApertureWindowWithWindowScene:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)highLevelContinuitySystemApertureWindowSceneDidConnect:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)highLevelContinuitySystemApertureWindowSceneDidConnect:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)createSuperHighLevelCurtainWithWindowScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)superHighLevelContinuityCurtainWindowSceneDidConnect:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)updatePreferencesForParticipant:updater:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)updatePreferencesForParticipant:updater:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"updater != nil" object:? file:? lineNumber:? description:?];
}

- (void)didChangeSettingsForParticipant:context:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)didChangeSettingsForParticipant:context:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"context != nil" object:? file:? lineNumber:? description:?];
}

- (void)participantAssociatedWindows:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureController.m" lineNumber:726 description:{@"Invalid parameter not satisfying: %@", @"participant == _traitsParticipant || participant == _continuityTraitsParticipant"}];

  *a4 = *a3;
}

- (void)_updateActiveWindowSceneWithSpringBoardWindowScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end