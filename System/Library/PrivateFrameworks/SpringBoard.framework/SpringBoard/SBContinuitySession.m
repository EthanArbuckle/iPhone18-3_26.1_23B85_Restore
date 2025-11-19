@interface SBContinuitySession
- (BOOL)isMainSceneConnected;
- (BOOL)isSceneConnected;
- (SBContinuitySession)init;
- (SBContinuitySession)initWithAuthenticationCoordinator:(id)a3 stateMachine:(id)a4 buttonActionsFactory:(id)a5 displayLinkController:(id)a6 launchEventExecutor:(id)a7 uiFlusher:(id)a8 multiDisplayUserInteractionCoordinator:(id)a9 userInterfaceStyleProvider:(id)a10 screenshotManager:(id)a11 storeDemoModeController:(id)a12;
- (SBContinuitySessionOrientationDelegate)orientationDelegate;
- (SBWindowScene)mainWindowScene;
- (id)_newContinuityButtonActionsForWindowScene:(id)a3;
- (id)clientExternallyBlockedReasons;
- (id)sceneManagerforContinuityScreenshotManager:(id)a3;
- (id)succinctDescription;
- (void)_clientReportedScreenRecordingActive:(BOOL)a3;
- (void)_handleContinuityButtonEvent:(unint64_t)a3;
- (void)_handlePendedLaunchEventIfNecessaryAnimatedly:(BOOL)a3;
- (void)_invalidateForReasons:(id)a3;
- (void)addOrientationObserver:(id)a3;
- (void)addScreenRecordingObserver:(id)a3;
- (void)addStateObserver:(id)a3;
- (void)appendDescriptionToStream:(id)a3;
- (void)continuitySessionServiceClient:(id)a3 handleContinuityButtonEvent:(unint64_t)a4;
- (void)continuitySessionServiceClient:(id)a3 handleLaunchEventOfType:(id)a4 payload:(id)a5;
- (void)continuitySessionServiceClient:(id)a3 setHostedInterfaceOrientation:(int64_t)a4;
- (void)continuitySessionServiceClient:(id)a3 updatedAppearanceSettings:(id)a4 transitionContext:(id)a5 completion:(id)a6;
- (void)continuitySessionServiceClientConnected:(id)a3;
- (void)continuitySessionServiceClientDidCaptureScreenshot:(id)a3;
- (void)continuitySessionServiceClientDidConfigureHIDServices:(id)a3;
- (void)continuitySessionServiceClientDidStartScreenRecording:(id)a3;
- (void)continuitySessionServiceClientDidStopScreenRecording:(id)a3;
- (void)continuitySessionServiceClientDidUpdateExternallyBlockedReasons:(id)a3;
- (void)continuitySessionServiceClientHasAdoptedScreenCaptureNotifications:(id)a3;
- (void)continuitySessionStateMachineDidUpdateState:(id)a3 oldState:(unint64_t)a4;
- (void)noteMainSceneConnected:(id)a3;
- (void)noteMainSceneDisconnected:(id)a3;
- (void)noteSceneConnected:(id)a3;
- (void)noteSceneDisconnected:(id)a3;
- (void)noteSceneHasValidDisplayUUID:(id)a3;
- (void)noteSystemApertureCurtainSceneConnected:(id)a3;
- (void)noteSystemApertureCurtainSceneDisconnected:(id)a3;
- (void)noteSystemApertureCurtainUIIsReady:(id)a3;
- (void)noteSystemApertureSceneConnected:(id)a3;
- (void)noteSystemApertureSceneDisconnected:(id)a3;
- (void)noteSystemApertureUIIsReady:(id)a3;
- (void)noteUIIsReady:(id)a3;
- (void)removeOrientationObserver:(id)a3;
- (void)removeScreenRecordingObserver:(id)a3;
- (void)removeStateObserver:(id)a3;
- (void)setDisplayLayoutPublisher:(id)a3;
- (void)setInterfaceOrientation:(int64_t)a3 supportedInterfaceOrientations:(unint64_t)a4;
@end

@implementation SBContinuitySession

- (SBContinuitySession)init
{
  v2 = +[SBContinuityDisplayAuthenticationCoordinator sharedInstance];
  v3 = objc_alloc_init(SBContinuitySessionSystemEventMonitor);
  v4 = [[_SBContinuitySessionStateMachine alloc] initWithSystemEventMonitor:v3 continuityDisplayAuthenticationCoordinator:v2 inStoreDemoMode:[(SBContinuitySessionSystemEventMonitor *)v3 isInStoreDemoMode]];
  v14 = objc_alloc_init(_SBContinuityUIFlusher);
  v5 = objc_alloc_init(SBContinuitySessionLaunchEventExecutor);
  v6 = [SBApp multiDisplayUserInteractionCoordinator];
  v7 = +[SBContinuitySessionManager sharedInstance];
  v8 = [v7 overridableUserInterfaceStyleProvider];

  v9 = objc_alloc_init(SBContinuityScreenshotManager);
  if ([(SBContinuitySessionSystemEventMonitor *)v3 isInStoreDemoMode])
  {
    v10 = [[SBContinuitySessionStoreDemoController alloc] initWithSystemEventMonitor:v3];
  }

  else
  {
    v10 = 0;
  }

  v11 = +[SBBacklightController sharedInstance];
  v12 = [v11 mainDisplayLinkController];
  v16 = [(SBContinuitySession *)self initWithAuthenticationCoordinator:v2 stateMachine:v4 buttonActionsFactory:0 displayLinkController:v12 launchEventExecutor:v5 uiFlusher:v14 multiDisplayUserInteractionCoordinator:v6 userInterfaceStyleProvider:v8 screenshotManager:v9 storeDemoModeController:v10];

  return v16;
}

- (SBContinuitySession)initWithAuthenticationCoordinator:(id)a3 stateMachine:(id)a4 buttonActionsFactory:(id)a5 displayLinkController:(id)a6 launchEventExecutor:(id)a7 uiFlusher:(id)a8 multiDisplayUserInteractionCoordinator:(id)a9 userInterfaceStyleProvider:(id)a10 screenshotManager:(id)a11 storeDemoModeController:(id)a12
{
  v17 = a3;
  v38 = a4;
  v18 = a4;
  v44 = a5;
  v36 = a6;
  v43 = a6;
  v42 = a7;
  v37 = a8;
  v41 = a8;
  v19 = a9;
  v40 = a10;
  v20 = a11;
  v21 = a12;
  v45 = v17;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBContinuitySession initWithAuthenticationCoordinator:stateMachine:buttonActionsFactory:displayLinkController:launchEventExecutor:uiFlusher:multiDisplayUserInteractionCoordinator:userInterfaceStyleProvider:screenshotManager:storeDemoModeController:];
    if (v18)
    {
      goto LABEL_3;
    }
  }

  [SBContinuitySession initWithAuthenticationCoordinator:stateMachine:buttonActionsFactory:displayLinkController:launchEventExecutor:uiFlusher:multiDisplayUserInteractionCoordinator:userInterfaceStyleProvider:screenshotManager:storeDemoModeController:];
LABEL_3:
  v22 = v20;
  if (v19)
  {
    if (v20)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [SBContinuitySession initWithAuthenticationCoordinator:stateMachine:buttonActionsFactory:displayLinkController:launchEventExecutor:uiFlusher:multiDisplayUserInteractionCoordinator:userInterfaceStyleProvider:screenshotManager:storeDemoModeController:];
    if (v20)
    {
      goto LABEL_5;
    }
  }

  [SBContinuitySession initWithAuthenticationCoordinator:stateMachine:buttonActionsFactory:displayLinkController:launchEventExecutor:uiFlusher:multiDisplayUserInteractionCoordinator:userInterfaceStyleProvider:screenshotManager:storeDemoModeController:];
LABEL_5:
  v47.receiver = self;
  v47.super_class = SBContinuitySession;
  v23 = [(SBContinuitySession *)&v47 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_authenticationCoordinator, a3);
    v25 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v24->_observers;
    v24->_observers = v25;

    objc_storeStrong(&v24->_buttonActionsFactory, a5);
    objc_storeStrong(&v24->_displayLinkController, v36);
    objc_storeStrong(&v24->_launchEventExecutor, a7);
    objc_storeStrong(&v24->_uiFlusher, v37);
    objc_storeStrong(&v24->_multiDisplayUserInteractionCoordinator, a9);
    v27 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    orientationObservers = v24->_orientationObservers;
    v24->_orientationObservers = v27;

    objc_storeStrong(&v24->_userInterfaceStyleProvider, a10);
    v29 = objc_alloc_init(MEMORY[0x277D67CD0]);
    appearanceSettings = v24->_appearanceSettings;
    v24->_appearanceSettings = v29;

    v31 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    screenRecordingObservers = v24->_screenRecordingObservers;
    v24->_screenRecordingObservers = v31;

    objc_storeStrong(&v24->_screenshotManager, a11);
    [(SBContinuityScreenshotManager *)v24->_screenshotManager setSceneManagerProvider:v24];
    v33 = SBLogContinuitySession();
    if (os_signpost_enabled(v33))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v33, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_ONENESS_SESSION", &unk_21F8B82DE, buf, 2u);
    }

    objc_storeStrong(&v24->_stateMachine, v38);
    [(_SBContinuitySessionStateMachine *)v24->_stateMachine setDelegate:v24];
    [(_SBContinuitySessionStateMachine *)v24->_stateMachine setClientExternallyBlockedReasonsProvider:v24];
    if (v21)
    {
      objc_storeStrong(&v24->_storeDemoModeController, a12);
      [(SBContinuitySession *)v24 addStateObserver:v21];
    }

    [(SBContinuitySession *)v24 continuitySessionStateMachineDidUpdateState:v24->_stateMachine oldState:0];
  }

  return v24;
}

- (id)_newContinuityButtonActionsForWindowScene:(id)a3
{
  buttonActionsFactory = self->_buttonActionsFactory;
  if (buttonActionsFactory)
  {
    v5 = [(SBContinuityButtonActionsFactory *)buttonActionsFactory newButtonActionsForWindowScene:a3];
  }

  else
  {
    v5 = [[SBContinuityButtonActions alloc] initWithWindowScene:a3 debugName:@"Continuity"];
  }

  v6 = v5;

  return v6;
}

- (void)addStateObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)removeStateObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)setDisplayLayoutPublisher:(id)a3
{
  v4 = a3;
  if (self->_displayLayoutPublisher)
  {
    [SBContinuitySession setDisplayLayoutPublisher:];
  }

  displayLayoutPublisher = self->_displayLayoutPublisher;
  self->_displayLayoutPublisher = v4;
}

- (void)addScreenRecordingObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_screenRecordingObservers addObject:?];
  }
}

- (void)removeScreenRecordingObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_screenRecordingObservers removeObject:?];
  }
}

- (void)addOrientationObserver:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = v6;
  if (v6)
  {
    v5 = [(NSHashTable *)self->_orientationObservers containsObject:v6];
    v4 = v6;
    if (!v5)
    {
      [(NSHashTable *)self->_orientationObservers addObject:v6];
      v4 = v6;
    }
  }
}

- (void)removeOrientationObserver:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = v5;
  if (v5)
  {
    [(NSHashTable *)self->_orientationObservers removeObject:v5];
    v4 = v5;
  }
}

- (void)setInterfaceOrientation:(int64_t)a3 supportedInterfaceOrientations:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (*&self->_currentInterfaceOrientation != __PAIR128__(a4, a3))
  {
    self->_currentInterfaceOrientation = a3;
    self->_currentSupportedInterfaceOrientation = a4;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(NSHashTable *)self->_orientationObservers allObjects];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) continuitySession:self didUpdateInterfaceOrientation:self->_currentInterfaceOrientation supportedInterfaceOrientations:self->_currentSupportedInterfaceOrientation];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (BOOL)isSceneConnected
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = WeakRetained != 0;

  return v3;
}

- (void)noteSceneConnected:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (WeakRetained)
  {
    [SBContinuitySession noteSceneConnected:];
  }

  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 _sceneIdentifier];
    v8 = 134218242;
    v9 = v4;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] scene connected: <%p>:%{public}@", &v8, 0x16u);
  }

  objc_storeWeak(&self->_windowScene, v4);
  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteSceneConnected];
}

- (void)noteSceneDisconnected:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (WeakRetained != v5)
  {
    [(SBContinuitySession *)v5 noteSceneDisconnected:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 _sceneIdentifier];
    v10 = 134218242;
    v11 = v5;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] scene disconnected: <%p>:%{public}@", &v10, 0x16u);
  }

  objc_storeWeak(&self->_windowScene, 0);
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"terminal.scene-disconnected"];
  [(SBContinuitySession *)self _invalidateForReasons:v9];
}

- (BOOL)isMainSceneConnected
{
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  v3 = WeakRetained != 0;

  return v3;
}

- (SBWindowScene)mainWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);

  return WeakRetained;
}

- (void)noteMainSceneConnected:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  if (WeakRetained)
  {
    [SBContinuitySession noteMainSceneConnected:];
  }

  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 _sceneIdentifier];
    v8 = 134218242;
    v9 = v4;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] main scene connected: <%p>:%{public}@", &v8, 0x16u);
  }

  objc_storeWeak(&self->_mainSBWindowScene, v4);
  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteMainSceneConnected];
}

- (void)noteUIIsReady:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  if (WeakRetained != v5)
  {
    [(SBContinuitySession *)v5 noteUIIsReady:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 _sceneIdentifier];
    v9 = 134218242;
    v10 = v5;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] ui is ready: <%p>:%{public}@", &v9, 0x16u);
  }

  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteUIIsReady];
}

- (void)noteSceneHasValidDisplayUUID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  if (WeakRetained != v5)
  {
    [(SBContinuitySession *)v5 noteSceneHasValidDisplayUUID:a2, self];
  }

  v7 = [v5 _FBSScene];
  v8 = [v7 settings];
  v9 = [v8 displayConfiguration];
  v10 = [v9 hardwareIdentifier];
  v11 = [v10 copy];
  displayHardwareIdentifier = self->_displayHardwareIdentifier;
  self->_displayHardwareIdentifier = v11;

  if (!self->_displayHardwareIdentifier)
  {
    [SBContinuitySession noteSceneHasValidDisplayUUID:];
  }

  v13 = SBLogContinuitySession();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v5 _sceneIdentifier];
    v15 = self->_displayHardwareIdentifier;
    v16 = 134218498;
    v17 = v5;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[Session] main scene <%p>:%{public}@ has valid displayUUID: %{public}@", &v16, 0x20u);
  }

  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteSceneHasValidDisplayUUID];
}

- (void)noteMainSceneDisconnected:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  if (WeakRetained != v5)
  {
    [(SBContinuitySession *)v5 noteMainSceneDisconnected:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 _sceneIdentifier];
    v10 = 134218242;
    v11 = v5;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] main scene disconnected: <%p>:%{public}@", &v10, 0x16u);
  }

  objc_storeWeak(&self->_mainSBWindowScene, 0);
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"terminal.scene-disconnected"];
  [(SBContinuitySession *)self _invalidateForReasons:v9];
}

- (void)noteSystemApertureSceneConnected:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureScene);
  if (WeakRetained)
  {
    [SBContinuitySession noteSystemApertureSceneConnected:];
  }

  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 _sceneIdentifier];
    v8 = 134218242;
    v9 = v4;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] system aperture scene connected: <%p>:%{public}@", &v8, 0x16u);
  }

  objc_storeWeak(&self->_systemApertureScene, v4);
  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteSystemApertureSceneConnected];
}

- (void)noteSystemApertureUIIsReady:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureScene);
  if (WeakRetained != v5)
  {
    [(SBContinuitySession *)v5 noteSystemApertureUIIsReady:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 _sceneIdentifier];
    v9 = 134218242;
    v10 = v5;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] system aperture ui is ready: <%p>:%{public}@", &v9, 0x16u);
  }

  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteSystemApertureUIIsReady];
}

- (void)noteSystemApertureSceneDisconnected:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureScene);
  if (WeakRetained != v5)
  {
    [(SBContinuitySession *)v5 noteSystemApertureSceneDisconnected:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 _sceneIdentifier];
    v10 = 134218242;
    v11 = v5;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] system aperture scene disconnected: <%p>:%{public}@", &v10, 0x16u);
  }

  objc_storeWeak(&self->_systemApertureScene, 0);
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"terminal.scene-disconnected"];
  [(SBContinuitySession *)self _invalidateForReasons:v9];
}

- (void)noteSystemApertureCurtainSceneConnected:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureCurtainScene);
  if (WeakRetained)
  {
    [SBContinuitySession noteSystemApertureCurtainSceneConnected:];
  }

  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 _sceneIdentifier];
    v8 = 134218242;
    v9 = v4;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] system aperture curtain scene connected: <%p>:%{public}@", &v8, 0x16u);
  }

  objc_storeWeak(&self->_systemApertureCurtainScene, v4);
  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteSystemApertureCurtainSceneConnected];
}

- (void)noteSystemApertureCurtainUIIsReady:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureCurtainScene);
  if (WeakRetained != v5)
  {
    [(SBContinuitySession *)v5 noteSystemApertureCurtainUIIsReady:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 _sceneIdentifier];
    v9 = 134218242;
    v10 = v5;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] system aperture curtain ui is ready: <%p>:%{public}@", &v9, 0x16u);
  }

  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteSystemApertureCurtainUIIsReady];
}

- (void)noteSystemApertureCurtainSceneDisconnected:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureCurtainScene);
  if (WeakRetained != v5)
  {
    [(SBContinuitySession *)v5 noteSystemApertureCurtainSceneDisconnected:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 _sceneIdentifier];
    v10 = 134218242;
    v11 = v5;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] system aperture curtain scene disconnected: <%p>:%{public}@", &v10, 0x16u);
  }

  objc_storeWeak(&self->_systemApertureCurtainScene, 0);
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"terminal.scene-disconnected"];
  [(SBContinuitySession *)self _invalidateForReasons:v9];
}

- (id)clientExternallyBlockedReasons
{
  v2 = [(_SBContinuitySessionServiceClient *)self->_continuitySessionServiceClient externallyBlockedReasons];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:@"block.session.client-connected"];
  }

  v5 = v4;

  return v5;
}

- (void)continuitySessionServiceClientConnected:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(_SBContinuitySessionServiceClient *)v4 externallyBlockedReasons];
  continuitySessionServiceClient = self->_continuitySessionServiceClient;
  self->_continuitySessionServiceClient = v4;
  v7 = v4;

  v8 = SBLogContinuitySession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[Session] client connected with initial blocked reasons: %{public}@", &v9, 0xCu);
  }

  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteClientConnectedWithInitialExternallyBlockedReasons:v5];
}

- (void)continuitySessionServiceClient:(id)a3 handleLaunchEventOfType:(id)a4 payload:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v9 = [[SBContinuitySessionLaunchEvent alloc] initWithType:v8 payload:v7];

  if ([(SBContinuitySession *)self state]== 11)
  {
    v10 = SBLogContinuitySession();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v9;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[Session] received a launch event %{public}@ and we are .active so handling it now", buf, 0xCu);
    }

    launchEventExecutor = self->_launchEventExecutor;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __86__SBContinuitySession_continuitySessionServiceClient_handleLaunchEventOfType_payload___block_invoke;
    v20[3] = &unk_2783A8C18;
    v21 = v9;
    [(SBContinuitySessionLaunchEventExecutor *)launchEventExecutor executeLaunchEvent:v21 animatedly:1 completion:v20];
    v12 = v21;
  }

  else
  {
    if (self->_pendingLaunchEvent)
    {
      v13 = SBLogContinuitySession();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        pendingLaunchEvent = self->_pendingLaunchEvent;
        *buf = 138543618;
        v23 = v9;
        v24 = 2114;
        v25 = pendingLaunchEvent;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[Session] received a launch event %{public}@ but we already have one pended %{public}@, dropping pended event in favor of latest launch event", buf, 0x16u);
      }
    }

    v15 = SBLogContinuitySession();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v9;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[Session] received a launch event %{public}@ but we aren't in the .active state so saving it for when the time is right", buf, 0xCu);
    }

    v12 = self->_pendingLaunchEvent;
    objc_storeStrong(&self->_pendingLaunchEvent, v9);
    stateMachine = self->_stateMachine;
    v17 = [(SBContinuitySessionLaunchEvent *)v9 identifier];
    [(_SBContinuitySessionStateMachine *)stateMachine didReceiveLaunchEvent:v17];

    if (v12)
    {
      v18 = self->_stateMachine;
      v19 = [(SBContinuitySessionLaunchEvent *)v12 identifier];
      [(_SBContinuitySessionStateMachine *)v18 didHandleLaunchEvent:v19];
    }
  }
}

void __86__SBContinuitySession_continuitySessionServiceClient_handleLaunchEventOfType_payload___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = SBLogContinuitySession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[Session] finished handling launch event %{public}@", &v4, 0xCu);
  }
}

- (void)continuitySessionServiceClient:(id)a3 handleContinuityButtonEvent:(unint64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = self->_continuitySessionServiceClient;

  if (v7 != v6)
  {
    [SBContinuitySession continuitySessionServiceClient:handleContinuityButtonEvent:];
  }

  v8 = SBLogContinuitySession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSBUIContinuityButtonEventType();
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[Session] client sent button event: %{public}@", &v10, 0xCu);
  }

  [(SBContinuitySession *)self _handleContinuityButtonEvent:a4];
}

- (void)continuitySessionServiceClient:(id)a3 setHostedInterfaceOrientation:(int64_t)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a4;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] client updated hosted interface orientation: %ld", &v8, 0xCu);
  }

  v7 = [(SBContinuitySession *)self orientationDelegate];
  [v7 continuitySession:self didUpdateHostedInterfaceOrientation:a4];
}

- (void)continuitySessionServiceClientDidUpdateExternallyBlockedReasons:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = self->_continuitySessionServiceClient;

  if (v5 != v4)
  {
    [SBContinuitySession continuitySessionServiceClientDidUpdateExternallyBlockedReasons:];
  }

  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] client updated externally blocked reasons", v7, 2u);
  }

  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteClientDidUpdateExternallyBlockedReasons];
}

- (void)continuitySessionServiceClientDidConfigureHIDServices:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = self->_continuitySessionServiceClient;

  if (v5 != v4)
  {
    [SBContinuitySession continuitySessionServiceClientDidConfigureHIDServices:];
  }

  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] client configured HID services", v7, 2u);
  }

  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteClientConfiguredHIDServices];
}

- (void)continuitySessionServiceClient:(id)a3 updatedAppearanceSettings:(id)a4 transitionContext:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self->_continuitySessionServiceClient;
  if (v14 != v10)
  {
    [SBContinuitySession continuitySessionServiceClient:updatedAppearanceSettings:transitionContext:completion:];
  }

  v15 = SBLogContinuitySession();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v11;
    v27 = 2114;
    v28 = v12;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[Session] updated appearance settings %{public}@ with transitionContext %{public}@", buf, 0x16u);
  }

  v16 = self->_appearanceSettings;
  objc_storeStrong(&self->_appearanceSettings, a4);
  v17 = [(SBUIContinuitySessionAppearanceSettings *)v16 userInterfaceStyle];
  v18 = [v11 userInterfaceStyle];
  v19 = SBLogContinuitySession();
  v20 = v19;
  if (v17 == v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "[Session] updated appearance setting - no updates necessary", buf, 2u);
    }

    v13[2](v13, 1, 0);
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [SBContinuitySession continuitySessionServiceClient:v20 updatedAppearanceSettings:? transitionContext:? completion:?];
    }

    userInterfaceStyleProvider = self->_userInterfaceStyleProvider;
    v22 = [v11 userInterfaceStyle];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __109__SBContinuitySession_continuitySessionServiceClient_updatedAppearanceSettings_transitionContext_completion___block_invoke;
    v23[3] = &unk_2783A9348;
    v24 = v13;
    [(SBOverridableUserInterfaceStyleProvider *)userInterfaceStyleProvider setOverrideStyle:v22 completion:v23];
  }
}

uint64_t __109__SBContinuitySession_continuitySessionServiceClient_updatedAppearanceSettings_transitionContext_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)continuitySessionServiceClientDidCaptureScreenshot:(id)a3
{
  v4 = SBLogContinuitySession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Session] client did capture screenshot", v5, 2u);
  }

  [(SBContinuityScreenshotManager *)self->_screenshotManager noteCapturedScreenshot];
}

- (void)continuitySessionServiceClientDidStartScreenRecording:(id)a3
{
  isBeingScreenRecorded = self->_isBeingScreenRecorded;
  v5 = SBLogContinuitySession();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isBeingScreenRecorded)
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Session] client said screen recording started - but we already think it started??", v7, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Session] client said screen recording started", buf, 2u);
    }

    [(SBContinuitySession *)self _clientReportedScreenRecordingActive:1];
  }
}

- (void)continuitySessionServiceClientDidStopScreenRecording:(id)a3
{
  isBeingScreenRecorded = self->_isBeingScreenRecorded;
  v5 = SBLogContinuitySession();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isBeingScreenRecorded)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Session] client said screen recording stopped", buf, 2u);
    }

    [(SBContinuitySession *)self _clientReportedScreenRecordingActive:0];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Session] client said screen recording stopped - but we already think it stopped??", v7, 2u);
    }
  }
}

- (void)_clientReportedScreenRecordingActive:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  if (self->_clientAdoptedScreenCaptureNotifications)
  {
    p_isBeingScreenRecorded = &self->_isBeingScreenRecorded;
    if (self->_isBeingScreenRecorded == a3)
    {
      return;
    }
  }

  else
  {
    v6 = SBLogContinuitySession();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] assuming client has adopted screen catpure API because they used it", buf, 2u);
    }

    p_isBeingScreenRecorded = &self->_isBeingScreenRecorded;
    isBeingScreenRecorded = self->_isBeingScreenRecorded;
    self->_clientAdoptedScreenCaptureNotifications = 1;
    if (isBeingScreenRecorded == v3)
    {
      goto LABEL_8;
    }
  }

  *p_isBeingScreenRecorded = v3;
LABEL_8:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(NSHashTable *)self->_screenRecordingObservers allObjects];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) continuitySessionDidUpdateScreenRecordingState:self];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)continuitySessionServiceClientHasAdoptedScreenCaptureNotifications:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_clientAdoptedScreenCaptureNotifications)
  {
    v4 = SBLogContinuitySession();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Session] client notified us they have adopted screen capture notifications", buf, 2u);
    }

    self->_clientAdoptedScreenCaptureNotifications = 1;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(NSHashTable *)self->_screenRecordingObservers allObjects];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) continuitySessionDidUpdateScreenRecordingState:self];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_handleContinuityButtonEvent:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_invalid)
  {
    WeakRetained = SBLogContinuitySession();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromSBUIContinuityButtonEventType();
      *v12 = 138543362;
      *&v12[4] = v5;
      _os_log_impl(&dword_21ED4E000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[Session] INVALIDATED - Ignoringing continuity button event %{public}@", v12, 0xCu);
    }

    goto LABEL_27;
  }

  continuityButtonActions = self->_continuityButtonActions;
  v8 = SBLogContinuitySession();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (continuityButtonActions)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = NSStringFromSBUIContinuityButtonEventType();
    *v12 = 138543362;
    *&v12[4] = v10;
    v11 = "[Session] Received button event %{public}@";
  }

  else
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = NSStringFromSBUIContinuityButtonEventType();
    *v12 = 138543362;
    *&v12[4] = v10;
    v11 = "[Session] Not ready to handle button event %{public}@";
  }

  _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, v11, v12, 0xCu);

LABEL_10:
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
      if (WeakRetained)
      {
        [(SBMultiDisplayUserInteractionCoordinator *)self->_multiDisplayUserInteractionCoordinator updateActiveWindowScene:WeakRetained forUserInteraction:@"continuity.showSpotlight"];
      }

      [(SBContinuityButtonActions *)self->_continuityButtonActions performSpotlightButtonAction];
    }

    else
    {
      if (a3 != 4)
      {
        return;
      }

      WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
      if (WeakRetained)
      {
        [(SBMultiDisplayUserInteractionCoordinator *)self->_multiDisplayUserInteractionCoordinator updateActiveWindowScene:WeakRetained forUserInteraction:@"continuity.toggleControlCenter"];
      }

      [(SBContinuityButtonActions *)self->_continuityButtonActions performControlCenterButtonAction];
    }
  }

  else if (a3 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
    if (WeakRetained)
    {
      [(SBMultiDisplayUserInteractionCoordinator *)self->_multiDisplayUserInteractionCoordinator updateActiveWindowScene:WeakRetained forUserInteraction:@"continuity.goToHome"];
    }

    [(SBContinuityButtonActions *)self->_continuityButtonActions performHomeButtonAction];
  }

  else
  {
    if (a3 != 2)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
    if (WeakRetained)
    {
      [(SBMultiDisplayUserInteractionCoordinator *)self->_multiDisplayUserInteractionCoordinator updateActiveWindowScene:WeakRetained forUserInteraction:@"continuity.enterSwitcher"];
    }

    [(SBContinuityButtonActions *)self->_continuityButtonActions performSwitcherButtonAction];
  }

LABEL_27:
}

- (void)_handlePendedLaunchEventIfNecessaryAnimatedly:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  pendingLaunchEvent = self->_pendingLaunchEvent;
  if (pendingLaunchEvent)
  {
    v4 = a3;
    v6 = pendingLaunchEvent;
    v7 = self->_pendingLaunchEvent;
    self->_pendingLaunchEvent = 0;

    v8 = SBLogContinuitySession();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[Session] handling pended launch event now %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    launchEventExecutor = self->_launchEventExecutor;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__SBContinuitySession__handlePendedLaunchEventIfNecessaryAnimatedly___block_invoke;
    v11[3] = &unk_2783B00B0;
    objc_copyWeak(&v14, buf);
    v10 = v6;
    v12 = v10;
    v13 = self;
    [(SBContinuitySessionLaunchEventExecutor *)launchEventExecutor executeLaunchEvent:v10 animatedly:v4 completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __69__SBContinuitySession__handlePendedLaunchEventIfNecessaryAnimatedly___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = SBLogContinuitySession();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[Session] finished handling pended launch event %{public}@", &v8, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 8);
    v7 = [v5 identifier];
    [v6 didHandleLaunchEvent:v7];
  }
}

- (void)continuitySessionStateMachineDidUpdateState:(id)a3 oldState:(unint64_t)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 state];
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  v9 = SBLogContinuitySession();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSBContinuitySessionState(a4);
    *buf = 138543618;
    v48 = v6;
    v49 = 2114;
    v50 = v10;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[Session] State machine update - %{public}@ oldState: %{public}@", buf, 0x16u);
  }

  if (v7 != a4)
  {
    if (v7 <= 6)
    {
      if (v7 > 3)
      {
        if (v7 == 4)
        {
          v19 = SBLogContinuitySession();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[Session] waitingForRemoteUnlock", buf, 2u);
          }
        }

        else if (v7 == 5)
        {
          v19 = SBLogContinuitySession();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[Session] waitingForScenes", buf, 2u);
          }
        }

        else
        {
          v19 = SBLogContinuitySession();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[Session] waitingForHIDServices", buf, 2u);
          }
        }
      }

      else
      {
        if (v7 != 1)
        {
          if (v7 == 2)
          {
            if (self->_authenticationSessionAssertion)
            {
              v33 = SBLogContinuitySession();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "[Session] blocked: dropping lock state assertion", buf, 2u);
              }

              [(BSInvalidatable *)self->_authenticationSessionAssertion invalidate];
              authenticationSessionAssertion = self->_authenticationSessionAssertion;
              self->_authenticationSessionAssertion = 0;

              [(_SBContinuitySessionStateMachine *)self->_stateMachine setAutomaticBiometricsDisabled:0];
            }
          }

          else if (v7 == 3)
          {
            v15 = SBLogContinuitySession();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[Session] preparing: acquiring lock state assertion", buf, 2u);
            }

            if (self->_authenticationSessionAssertion)
            {
              [SBContinuitySession continuitySessionStateMachineDidUpdateState:oldState:];
            }

            v16 = [(SBContinuityDisplayAuthenticationCoordinator *)self->_authenticationCoordinator acquireContinuityDisplayActiveAssertionForReason:@"ready"];
            v17 = self->_authenticationSessionAssertion;
            self->_authenticationSessionAssertion = v16;

            [(_SBContinuitySessionStateMachine *)self->_stateMachine setAutomaticBiometricsDisabled:1];
          }

          goto LABEL_4;
        }

        v19 = SBLogContinuitySession();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[Session] storeDemoPrep", buf, 2u);
        }
      }

      goto LABEL_4;
    }

    if (v7 > 9)
    {
      switch(v7)
      {
        case 10:
          v31 = SBLogContinuitySession();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "[Session] flushing: performing flush", buf, 2u);
          }

          objc_initWeak(buf, self);
          uiFlusher = self->_uiFlusher;
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __76__SBContinuitySession_continuitySessionStateMachineDidUpdateState_oldState___block_invoke;
          v44[3] = &unk_2783A8C68;
          objc_copyWeak(&v45, buf);
          [(SBContinuityUIFlushing *)uiFlusher flushUIWithCompletion:v44];
          objc_destroyWeak(&v45);
          objc_destroyWeak(buf);
          break;
        case 11:
          v37 = SBLogContinuitySession();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "[Session] Lifecycle event: didActivateSession", buf, 2u);
          }

          if (self->_continuityButtonActions)
          {
            [SBContinuitySession continuitySessionStateMachineDidUpdateState:oldState:];
          }

          if (!WeakRetained)
          {
            [SBContinuitySession continuitySessionStateMachineDidUpdateState:oldState:];
          }

          v38 = [(SBContinuitySession *)self _newContinuityButtonActionsForWindowScene:WeakRetained];
          continuityButtonActions = self->_continuityButtonActions;
          self->_continuityButtonActions = v38;

          [(SBContinuityDisplayLayoutPublisher *)self->_displayLayoutPublisher activate];
          [(SBContinuitySession *)self _handlePendedLaunchEventIfNecessaryAnimatedly:1];
          break;
        case 12:
          v20 = SBLogContinuitySession();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "[Session] Lifecycle event: didEndSession", buf, 2u);
          }

          v21 = SBLogContinuitySession();
          if (os_signpost_enabled(v21))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_21ED4E000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_ONENESS_SESSION", &unk_21F8B82DE, buf, 2u);
          }

          stateMachine = self->_stateMachine;
          v23 = [(_SBContinuitySessionStateMachine *)stateMachine reasons];
          [(_SBContinuitySessionStateMachine *)stateMachine invalidateForReasons:v23];

          [(BSInvalidatable *)self->_authenticationSessionAssertion invalidate];
          v24 = self->_authenticationSessionAssertion;
          self->_authenticationSessionAssertion = 0;

          [(BSInvalidatable *)self->_keepDisplayLinkActiveAssertion invalidate];
          keepDisplayLinkActiveAssertion = self->_keepDisplayLinkActiveAssertion;
          self->_keepDisplayLinkActiveAssertion = 0;

          [(SBContinuityButtonActions *)self->_continuityButtonActions invalidate];
          v26 = self->_continuityButtonActions;
          self->_continuityButtonActions = 0;

          [(SBContinuityDisplayLayoutPublisher *)self->_displayLayoutPublisher invalidate];
          displayLayoutPublisher = self->_displayLayoutPublisher;
          self->_displayLayoutPublisher = 0;

          self->_invalid = 1;
          break;
      }
    }

    else if (v7 == 7)
    {
      v28 = SBLogContinuitySession();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "[Session] activating", buf, 2u);
      }

      if (!self->_keepDisplayLinkActiveAssertion)
      {
        v29 = [(SBDisplayLinkController *)self->_displayLinkController maintainDisplayLinkWhenBacklightIsOffForReason:@"SBContinuitySessionStateActivating"];
        v30 = self->_keepDisplayLinkActiveAssertion;
        self->_keepDisplayLinkActiveAssertion = v29;
      }
    }

    else if (v7 == 8)
    {
      v35 = SBLogContinuitySession();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEFAULT, "[Session] updatingActiveDisplay", buf, 2u);
      }

      v36 = objc_loadWeakRetained(&self->_mainSBWindowScene);
      if (!v36)
      {
        [SBContinuitySession continuitySessionStateMachineDidUpdateState:oldState:];
      }

      [(SBMultiDisplayUserInteractionCoordinator *)self->_multiDisplayUserInteractionCoordinator updateActiveWindowScene:v36 forUserInteraction:@"continuity.activation"];
      [(_SBContinuitySessionStateMachine *)self->_stateMachine noteActiveDisplayUpdated];
    }

    else
    {
      v18 = SBLogContinuitySession();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[Session] launching", buf, 2u);
      }

      [(SBContinuitySession *)self _handlePendedLaunchEventIfNecessaryAnimatedly:0];
    }
  }

LABEL_4:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = [(NSHashTable *)self->_observers allObjects];
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v12)
  {
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v40 + 1) + 8 * i) continuitySessionDidUpdateState:self];
      }

      v12 = [v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v12);
  }
}

void __76__SBContinuitySession_continuitySessionStateMachineDidUpdateState_oldState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] noteUIFlushed];
    WeakRetained = v2;
  }
}

- (id)sceneManagerforContinuityScreenshotManager:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  v4 = [WeakRetained sceneManager];

  return v4;
}

- (id)succinctDescription
{
  v3 = MEMORY[0x277CF0C08];
  v4 = [MEMORY[0x277CF0C10] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __49__SBContinuitySession_appendDescriptionToStream___block_invoke;
  v33[3] = &unk_2783A92D8;
  v5 = v4;
  v34 = v5;
  v35 = self;
  [v5 appendProem:self block:v33];
  if (([v5 hasSuccinctStyle] & 1) == 0)
  {
    v6 = [v5 appendObject:self->_stateMachine withName:@"stateMachine"];
    v7 = [v5 appendObject:self->_continuitySessionServiceClient withName:@"client"];
    v8 = [v5 hasDebugStyle];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    if (v8)
    {
      v10 = [v5 appendObject:WeakRetained withName:@"windowScene"];

      v11 = objc_loadWeakRetained(&self->_mainSBWindowScene);
      v12 = [v5 appendObject:v11 withName:@"mainWindowScene" skipIfNil:1];

      v13 = objc_loadWeakRetained(&self->_systemApertureScene);
      v14 = [v5 appendObject:v13 withName:@"systemApertureSceneIdentifier"];

      v15 = objc_loadWeakRetained(&self->_systemApertureCurtainScene);
      v16 = [v5 appendObject:v15 withName:@"curtainSceneIdentifier"];
    }

    else
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __49__SBContinuitySession_appendDescriptionToStream___block_invoke_3;
      v30[3] = &unk_2783A92D8;
      v17 = v5;
      v31 = v17;
      v15 = WeakRetained;
      v32 = v15;
      [v17 appendProem:v15 block:v30];
      v18 = objc_loadWeakRetained(&self->_mainSBWindowScene);
      if (v18)
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __49__SBContinuitySession_appendDescriptionToStream___block_invoke_4;
        v27[3] = &unk_2783A92D8;
        v28 = v17;
        v29 = v18;
        [v28 appendProem:v29 block:v27];
      }

      v19 = objc_loadWeakRetained(&self->_systemApertureScene);
      if (v19)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __49__SBContinuitySession_appendDescriptionToStream___block_invoke_5;
        v24[3] = &unk_2783A92D8;
        v25 = v17;
        v26 = v19;
        [v25 appendProem:v26 block:v24];
      }

      v20 = objc_loadWeakRetained(&self->_systemApertureCurtainScene);
      if (v20)
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __49__SBContinuitySession_appendDescriptionToStream___block_invoke_6;
        v21[3] = &unk_2783A92D8;
        v22 = v17;
        v23 = v20;
        [v22 appendProem:v23 block:v21];
      }
    }
  }
}

void __49__SBContinuitySession_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CF0C10] collectionLineBreakNoneStyle];
  v3 = *(a1 + 32);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __49__SBContinuitySession_appendDescriptionToStream___block_invoke_2;
  v17 = &unk_2783A92D8;
  v4 = v3;
  v5 = *(a1 + 40);
  v18 = v4;
  v19 = v5;
  [v4 overlayStyle:v2 block:&v14];
  if (([*(a1 + 32) hasSuccinctStyle] & 1) == 0)
  {
    v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 224) withName:@"displayHardwareIdentifier" skipIfNil:1];
    v7 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 192) withName:@"appearanceSettings"];
    v8 = *(a1 + 32);
    v9 = BSInterfaceOrientationDescription();
    v10 = [v8 appendObject:v9 withName:@"currentInterfaceOrientation"];

    v11 = *(a1 + 32);
    v12 = BSInterfaceOrientationMaskDescription();
    v13 = [v11 appendObject:v12 withName:@"supportedInterfaceOrientations"];
  }
}

void __49__SBContinuitySession_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromSBContinuitySessionState([*(a1 + 40) state]);
  [v2 appendString:v3 withName:0];

  v4 = *(a1 + 32);
  v6 = [*(a1 + 40) reasons];
  v5 = [v4 appendObject:v6 withName:0];
}

void __49__SBContinuitySession_appendDescriptionToStream___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) _sceneIdentifier];
  v2 = [v1 appendObject:v3 withName:@"sceneIdentifier"];
}

void __49__SBContinuitySession_appendDescriptionToStream___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) _sceneIdentifier];
  v2 = [v1 appendObject:v3 withName:@"mainSceneIdentifier"];
}

void __49__SBContinuitySession_appendDescriptionToStream___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) _sceneIdentifier];
  v2 = [v1 appendObject:v3 withName:@"systemApertureSceneIdentifier"];
}

void __49__SBContinuitySession_appendDescriptionToStream___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) _sceneIdentifier];
  v2 = [v1 appendObject:v3 withName:@"curtainSceneIdentifier"];
}

- (void)_invalidateForReasons:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogContinuitySession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] : %{public}@", &v8, 0x16u);
  }

  if (!self->_invalid)
  {
    v7 = [(SBContinuitySession *)self state];
    [(_SBContinuitySessionStateMachine *)self->_stateMachine invalidateForReasons:v4];
    if (v7 != 12)
    {
      [(SBContinuitySession *)self continuitySessionStateMachineDidUpdateState:self->_stateMachine oldState:v7];
    }
  }
}

- (SBContinuitySessionOrientationDelegate)orientationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_orientationDelegate);

  return WeakRetained;
}

- (void)initWithAuthenticationCoordinator:stateMachine:buttonActionsFactory:displayLinkController:launchEventExecutor:uiFlusher:multiDisplayUserInteractionCoordinator:userInterfaceStyleProvider:screenshotManager:storeDemoModeController:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"authenticationCoordinator" object:? file:? lineNumber:? description:?];
}

- (void)initWithAuthenticationCoordinator:stateMachine:buttonActionsFactory:displayLinkController:launchEventExecutor:uiFlusher:multiDisplayUserInteractionCoordinator:userInterfaceStyleProvider:screenshotManager:storeDemoModeController:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"stateMachine" object:? file:? lineNumber:? description:?];
}

- (void)initWithAuthenticationCoordinator:stateMachine:buttonActionsFactory:displayLinkController:launchEventExecutor:uiFlusher:multiDisplayUserInteractionCoordinator:userInterfaceStyleProvider:screenshotManager:storeDemoModeController:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"multiDisplayUserInteractionCoordinator" object:? file:? lineNumber:? description:?];
}

- (void)initWithAuthenticationCoordinator:stateMachine:buttonActionsFactory:displayLinkController:launchEventExecutor:uiFlusher:multiDisplayUserInteractionCoordinator:userInterfaceStyleProvider:screenshotManager:storeDemoModeController:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"screenshotManager" object:? file:? lineNumber:? description:?];
}

- (void)setDisplayLayoutPublisher:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)noteSceneConnected:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_10_8() _sceneIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)noteMainSceneConnected:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_10_8() _sceneIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)noteSceneHasValidDisplayUUID:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)noteSystemApertureSceneConnected:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_10_8() _sceneIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)noteSystemApertureCurtainSceneConnected:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_10_8() _sceneIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionServiceClient:handleContinuityButtonEvent:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v1 = NSStringFromSBUIContinuityButtonEventType();
  OUTLINED_FUNCTION_8_1();
  [v2 handleFailureInMethod:v1 object:v0 file:? lineNumber:? description:?];
}

- (void)continuitySessionServiceClientDidUpdateExternallyBlockedReasons:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionServiceClientDidConfigureHIDServices:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionServiceClient:updatedAppearanceSettings:transitionContext:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_8_1();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionStateMachineDidUpdateState:oldState:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionStateMachineDidUpdateState:oldState:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionStateMachineDidUpdateState:oldState:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionStateMachineDidUpdateState:oldState:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end