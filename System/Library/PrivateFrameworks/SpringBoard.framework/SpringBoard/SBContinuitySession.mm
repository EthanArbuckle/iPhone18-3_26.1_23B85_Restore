@interface SBContinuitySession
- (BOOL)isMainSceneConnected;
- (BOOL)isSceneConnected;
- (SBContinuitySession)init;
- (SBContinuitySession)initWithAuthenticationCoordinator:(id)coordinator stateMachine:(id)machine buttonActionsFactory:(id)factory displayLinkController:(id)controller launchEventExecutor:(id)executor uiFlusher:(id)flusher multiDisplayUserInteractionCoordinator:(id)interactionCoordinator userInterfaceStyleProvider:(id)self0 screenshotManager:(id)self1 storeDemoModeController:(id)self2;
- (SBContinuitySessionOrientationDelegate)orientationDelegate;
- (SBWindowScene)mainWindowScene;
- (id)_newContinuityButtonActionsForWindowScene:(id)scene;
- (id)clientExternallyBlockedReasons;
- (id)sceneManagerforContinuityScreenshotManager:(id)manager;
- (id)succinctDescription;
- (void)_clientReportedScreenRecordingActive:(BOOL)active;
- (void)_handleContinuityButtonEvent:(unint64_t)event;
- (void)_handlePendedLaunchEventIfNecessaryAnimatedly:(BOOL)animatedly;
- (void)_invalidateForReasons:(id)reasons;
- (void)addOrientationObserver:(id)observer;
- (void)addScreenRecordingObserver:(id)observer;
- (void)addStateObserver:(id)observer;
- (void)appendDescriptionToStream:(id)stream;
- (void)continuitySessionServiceClient:(id)client handleContinuityButtonEvent:(unint64_t)event;
- (void)continuitySessionServiceClient:(id)client handleLaunchEventOfType:(id)type payload:(id)payload;
- (void)continuitySessionServiceClient:(id)client setHostedInterfaceOrientation:(int64_t)orientation;
- (void)continuitySessionServiceClient:(id)client updatedAppearanceSettings:(id)settings transitionContext:(id)context completion:(id)completion;
- (void)continuitySessionServiceClientConnected:(id)connected;
- (void)continuitySessionServiceClientDidCaptureScreenshot:(id)screenshot;
- (void)continuitySessionServiceClientDidConfigureHIDServices:(id)services;
- (void)continuitySessionServiceClientDidStartScreenRecording:(id)recording;
- (void)continuitySessionServiceClientDidStopScreenRecording:(id)recording;
- (void)continuitySessionServiceClientDidUpdateExternallyBlockedReasons:(id)reasons;
- (void)continuitySessionServiceClientHasAdoptedScreenCaptureNotifications:(id)notifications;
- (void)continuitySessionStateMachineDidUpdateState:(id)state oldState:(unint64_t)oldState;
- (void)noteMainSceneConnected:(id)connected;
- (void)noteMainSceneDisconnected:(id)disconnected;
- (void)noteSceneConnected:(id)connected;
- (void)noteSceneDisconnected:(id)disconnected;
- (void)noteSceneHasValidDisplayUUID:(id)d;
- (void)noteSystemApertureCurtainSceneConnected:(id)connected;
- (void)noteSystemApertureCurtainSceneDisconnected:(id)disconnected;
- (void)noteSystemApertureCurtainUIIsReady:(id)ready;
- (void)noteSystemApertureSceneConnected:(id)connected;
- (void)noteSystemApertureSceneDisconnected:(id)disconnected;
- (void)noteSystemApertureUIIsReady:(id)ready;
- (void)noteUIIsReady:(id)ready;
- (void)removeOrientationObserver:(id)observer;
- (void)removeScreenRecordingObserver:(id)observer;
- (void)removeStateObserver:(id)observer;
- (void)setDisplayLayoutPublisher:(id)publisher;
- (void)setInterfaceOrientation:(int64_t)orientation supportedInterfaceOrientations:(unint64_t)orientations;
@end

@implementation SBContinuitySession

- (SBContinuitySession)init
{
  v2 = +[SBContinuityDisplayAuthenticationCoordinator sharedInstance];
  v3 = objc_alloc_init(SBContinuitySessionSystemEventMonitor);
  v4 = [[_SBContinuitySessionStateMachine alloc] initWithSystemEventMonitor:v3 continuityDisplayAuthenticationCoordinator:v2 inStoreDemoMode:[(SBContinuitySessionSystemEventMonitor *)v3 isInStoreDemoMode]];
  v14 = objc_alloc_init(_SBContinuityUIFlusher);
  v5 = objc_alloc_init(SBContinuitySessionLaunchEventExecutor);
  multiDisplayUserInteractionCoordinator = [SBApp multiDisplayUserInteractionCoordinator];
  v7 = +[SBContinuitySessionManager sharedInstance];
  overridableUserInterfaceStyleProvider = [v7 overridableUserInterfaceStyleProvider];

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
  mainDisplayLinkController = [v11 mainDisplayLinkController];
  v16 = [(SBContinuitySession *)self initWithAuthenticationCoordinator:v2 stateMachine:v4 buttonActionsFactory:0 displayLinkController:mainDisplayLinkController launchEventExecutor:v5 uiFlusher:v14 multiDisplayUserInteractionCoordinator:multiDisplayUserInteractionCoordinator userInterfaceStyleProvider:overridableUserInterfaceStyleProvider screenshotManager:v9 storeDemoModeController:v10];

  return v16;
}

- (SBContinuitySession)initWithAuthenticationCoordinator:(id)coordinator stateMachine:(id)machine buttonActionsFactory:(id)factory displayLinkController:(id)controller launchEventExecutor:(id)executor uiFlusher:(id)flusher multiDisplayUserInteractionCoordinator:(id)interactionCoordinator userInterfaceStyleProvider:(id)self0 screenshotManager:(id)self1 storeDemoModeController:(id)self2
{
  coordinatorCopy = coordinator;
  machineCopy = machine;
  machineCopy2 = machine;
  factoryCopy = factory;
  controllerCopy = controller;
  controllerCopy2 = controller;
  executorCopy = executor;
  flusherCopy = flusher;
  flusherCopy2 = flusher;
  interactionCoordinatorCopy = interactionCoordinator;
  providerCopy = provider;
  managerCopy = manager;
  modeControllerCopy = modeController;
  v45 = coordinatorCopy;
  if (coordinatorCopy)
  {
    if (machineCopy2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBContinuitySession initWithAuthenticationCoordinator:stateMachine:buttonActionsFactory:displayLinkController:launchEventExecutor:uiFlusher:multiDisplayUserInteractionCoordinator:userInterfaceStyleProvider:screenshotManager:storeDemoModeController:];
    if (machineCopy2)
    {
      goto LABEL_3;
    }
  }

  [SBContinuitySession initWithAuthenticationCoordinator:stateMachine:buttonActionsFactory:displayLinkController:launchEventExecutor:uiFlusher:multiDisplayUserInteractionCoordinator:userInterfaceStyleProvider:screenshotManager:storeDemoModeController:];
LABEL_3:
  v22 = managerCopy;
  if (interactionCoordinatorCopy)
  {
    if (managerCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [SBContinuitySession initWithAuthenticationCoordinator:stateMachine:buttonActionsFactory:displayLinkController:launchEventExecutor:uiFlusher:multiDisplayUserInteractionCoordinator:userInterfaceStyleProvider:screenshotManager:storeDemoModeController:];
    if (managerCopy)
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
    objc_storeStrong(&v23->_authenticationCoordinator, coordinator);
    v25 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v24->_observers;
    v24->_observers = v25;

    objc_storeStrong(&v24->_buttonActionsFactory, factory);
    objc_storeStrong(&v24->_displayLinkController, controllerCopy);
    objc_storeStrong(&v24->_launchEventExecutor, executor);
    objc_storeStrong(&v24->_uiFlusher, flusherCopy);
    objc_storeStrong(&v24->_multiDisplayUserInteractionCoordinator, interactionCoordinator);
    v27 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    orientationObservers = v24->_orientationObservers;
    v24->_orientationObservers = v27;

    objc_storeStrong(&v24->_userInterfaceStyleProvider, provider);
    v29 = objc_alloc_init(MEMORY[0x277D67CD0]);
    appearanceSettings = v24->_appearanceSettings;
    v24->_appearanceSettings = v29;

    v31 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    screenRecordingObservers = v24->_screenRecordingObservers;
    v24->_screenRecordingObservers = v31;

    objc_storeStrong(&v24->_screenshotManager, manager);
    [(SBContinuityScreenshotManager *)v24->_screenshotManager setSceneManagerProvider:v24];
    v33 = SBLogContinuitySession();
    if (os_signpost_enabled(v33))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21ED4E000, v33, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_ONENESS_SESSION", &unk_21F8B82DE, buf, 2u);
    }

    objc_storeStrong(&v24->_stateMachine, machineCopy);
    [(_SBContinuitySessionStateMachine *)v24->_stateMachine setDelegate:v24];
    [(_SBContinuitySessionStateMachine *)v24->_stateMachine setClientExternallyBlockedReasonsProvider:v24];
    if (modeControllerCopy)
    {
      objc_storeStrong(&v24->_storeDemoModeController, modeController);
      [(SBContinuitySession *)v24 addStateObserver:modeControllerCopy];
    }

    [(SBContinuitySession *)v24 continuitySessionStateMachineDidUpdateState:v24->_stateMachine oldState:0];
  }

  return v24;
}

- (id)_newContinuityButtonActionsForWindowScene:(id)scene
{
  buttonActionsFactory = self->_buttonActionsFactory;
  if (buttonActionsFactory)
  {
    v5 = [(SBContinuityButtonActionsFactory *)buttonActionsFactory newButtonActionsForWindowScene:scene];
  }

  else
  {
    v5 = [[SBContinuityButtonActions alloc] initWithWindowScene:scene debugName:@"Continuity"];
  }

  v6 = v5;

  return v6;
}

- (void)addStateObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)removeStateObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)setDisplayLayoutPublisher:(id)publisher
{
  publisherCopy = publisher;
  if (self->_displayLayoutPublisher)
  {
    [SBContinuitySession setDisplayLayoutPublisher:];
  }

  displayLayoutPublisher = self->_displayLayoutPublisher;
  self->_displayLayoutPublisher = publisherCopy;
}

- (void)addScreenRecordingObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_screenRecordingObservers addObject:?];
  }
}

- (void)removeScreenRecordingObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_screenRecordingObservers removeObject:?];
  }
}

- (void)addOrientationObserver:(id)observer
{
  observerCopy = observer;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = observerCopy;
  if (observerCopy)
  {
    v5 = [(NSHashTable *)self->_orientationObservers containsObject:observerCopy];
    v4 = observerCopy;
    if (!v5)
    {
      [(NSHashTable *)self->_orientationObservers addObject:observerCopy];
      v4 = observerCopy;
    }
  }
}

- (void)removeOrientationObserver:(id)observer
{
  observerCopy = observer;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = observerCopy;
  if (observerCopy)
  {
    [(NSHashTable *)self->_orientationObservers removeObject:observerCopy];
    v4 = observerCopy;
  }
}

- (void)setInterfaceOrientation:(int64_t)orientation supportedInterfaceOrientations:(unint64_t)orientations
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (*&self->_currentInterfaceOrientation != __PAIR128__(orientations, orientation))
  {
    self->_currentInterfaceOrientation = orientation;
    self->_currentSupportedInterfaceOrientation = orientations;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    allObjects = [(NSHashTable *)self->_orientationObservers allObjects];
    v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v12 + 1) + 8 * v11++) continuitySession:self didUpdateInterfaceOrientation:self->_currentInterfaceOrientation supportedInterfaceOrientations:self->_currentSupportedInterfaceOrientation];
        }

        while (v9 != v11);
        v9 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)noteSceneConnected:(id)connected
{
  v12 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (WeakRetained)
  {
    [SBContinuitySession noteSceneConnected:];
  }

  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [connectedCopy _sceneIdentifier];
    v8 = 134218242;
    v9 = connectedCopy;
    v10 = 2114;
    v11 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] scene connected: <%p>:%{public}@", &v8, 0x16u);
  }

  objc_storeWeak(&self->_windowScene, connectedCopy);
  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteSceneConnected];
}

- (void)noteSceneDisconnected:(id)disconnected
{
  v14 = *MEMORY[0x277D85DE8];
  disconnectedCopy = disconnected;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  if (WeakRetained != disconnectedCopy)
  {
    [(SBContinuitySession *)disconnectedCopy noteSceneDisconnected:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [disconnectedCopy _sceneIdentifier];
    v10 = 134218242;
    v11 = disconnectedCopy;
    v12 = 2114;
    v13 = _sceneIdentifier;
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

- (void)noteMainSceneConnected:(id)connected
{
  v12 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  if (WeakRetained)
  {
    [SBContinuitySession noteMainSceneConnected:];
  }

  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [connectedCopy _sceneIdentifier];
    v8 = 134218242;
    v9 = connectedCopy;
    v10 = 2114;
    v11 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] main scene connected: <%p>:%{public}@", &v8, 0x16u);
  }

  objc_storeWeak(&self->_mainSBWindowScene, connectedCopy);
  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteMainSceneConnected];
}

- (void)noteUIIsReady:(id)ready
{
  v13 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  if (WeakRetained != readyCopy)
  {
    [(SBContinuitySession *)readyCopy noteUIIsReady:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [readyCopy _sceneIdentifier];
    v9 = 134218242;
    v10 = readyCopy;
    v11 = 2114;
    v12 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] ui is ready: <%p>:%{public}@", &v9, 0x16u);
  }

  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteUIIsReady];
}

- (void)noteSceneHasValidDisplayUUID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  if (WeakRetained != dCopy)
  {
    [(SBContinuitySession *)dCopy noteSceneHasValidDisplayUUID:a2, self];
  }

  _FBSScene = [dCopy _FBSScene];
  settings = [_FBSScene settings];
  displayConfiguration = [settings displayConfiguration];
  hardwareIdentifier = [displayConfiguration hardwareIdentifier];
  v11 = [hardwareIdentifier copy];
  displayHardwareIdentifier = self->_displayHardwareIdentifier;
  self->_displayHardwareIdentifier = v11;

  if (!self->_displayHardwareIdentifier)
  {
    [SBContinuitySession noteSceneHasValidDisplayUUID:];
  }

  v13 = SBLogContinuitySession();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [dCopy _sceneIdentifier];
    v15 = self->_displayHardwareIdentifier;
    v16 = 134218498;
    v17 = dCopy;
    v18 = 2114;
    v19 = _sceneIdentifier;
    v20 = 2114;
    v21 = v15;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[Session] main scene <%p>:%{public}@ has valid displayUUID: %{public}@", &v16, 0x20u);
  }

  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteSceneHasValidDisplayUUID];
}

- (void)noteMainSceneDisconnected:(id)disconnected
{
  v14 = *MEMORY[0x277D85DE8];
  disconnectedCopy = disconnected;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  if (WeakRetained != disconnectedCopy)
  {
    [(SBContinuitySession *)disconnectedCopy noteMainSceneDisconnected:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [disconnectedCopy _sceneIdentifier];
    v10 = 134218242;
    v11 = disconnectedCopy;
    v12 = 2114;
    v13 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] main scene disconnected: <%p>:%{public}@", &v10, 0x16u);
  }

  objc_storeWeak(&self->_mainSBWindowScene, 0);
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"terminal.scene-disconnected"];
  [(SBContinuitySession *)self _invalidateForReasons:v9];
}

- (void)noteSystemApertureSceneConnected:(id)connected
{
  v12 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureScene);
  if (WeakRetained)
  {
    [SBContinuitySession noteSystemApertureSceneConnected:];
  }

  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [connectedCopy _sceneIdentifier];
    v8 = 134218242;
    v9 = connectedCopy;
    v10 = 2114;
    v11 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] system aperture scene connected: <%p>:%{public}@", &v8, 0x16u);
  }

  objc_storeWeak(&self->_systemApertureScene, connectedCopy);
  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteSystemApertureSceneConnected];
}

- (void)noteSystemApertureUIIsReady:(id)ready
{
  v13 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureScene);
  if (WeakRetained != readyCopy)
  {
    [(SBContinuitySession *)readyCopy noteSystemApertureUIIsReady:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [readyCopy _sceneIdentifier];
    v9 = 134218242;
    v10 = readyCopy;
    v11 = 2114;
    v12 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] system aperture ui is ready: <%p>:%{public}@", &v9, 0x16u);
  }

  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteSystemApertureUIIsReady];
}

- (void)noteSystemApertureSceneDisconnected:(id)disconnected
{
  v14 = *MEMORY[0x277D85DE8];
  disconnectedCopy = disconnected;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureScene);
  if (WeakRetained != disconnectedCopy)
  {
    [(SBContinuitySession *)disconnectedCopy noteSystemApertureSceneDisconnected:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [disconnectedCopy _sceneIdentifier];
    v10 = 134218242;
    v11 = disconnectedCopy;
    v12 = 2114;
    v13 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] system aperture scene disconnected: <%p>:%{public}@", &v10, 0x16u);
  }

  objc_storeWeak(&self->_systemApertureScene, 0);
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"terminal.scene-disconnected"];
  [(SBContinuitySession *)self _invalidateForReasons:v9];
}

- (void)noteSystemApertureCurtainSceneConnected:(id)connected
{
  v12 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureCurtainScene);
  if (WeakRetained)
  {
    [SBContinuitySession noteSystemApertureCurtainSceneConnected:];
  }

  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [connectedCopy _sceneIdentifier];
    v8 = 134218242;
    v9 = connectedCopy;
    v10 = 2114;
    v11 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] system aperture curtain scene connected: <%p>:%{public}@", &v8, 0x16u);
  }

  objc_storeWeak(&self->_systemApertureCurtainScene, connectedCopy);
  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteSystemApertureCurtainSceneConnected];
}

- (void)noteSystemApertureCurtainUIIsReady:(id)ready
{
  v13 = *MEMORY[0x277D85DE8];
  readyCopy = ready;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureCurtainScene);
  if (WeakRetained != readyCopy)
  {
    [(SBContinuitySession *)readyCopy noteSystemApertureCurtainUIIsReady:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [readyCopy _sceneIdentifier];
    v9 = 134218242;
    v10 = readyCopy;
    v11 = 2114;
    v12 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] system aperture curtain ui is ready: <%p>:%{public}@", &v9, 0x16u);
  }

  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteSystemApertureCurtainUIIsReady];
}

- (void)noteSystemApertureCurtainSceneDisconnected:(id)disconnected
{
  v14 = *MEMORY[0x277D85DE8];
  disconnectedCopy = disconnected;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureCurtainScene);
  if (WeakRetained != disconnectedCopy)
  {
    [(SBContinuitySession *)disconnectedCopy noteSystemApertureCurtainSceneDisconnected:a2, self];
  }

  v7 = SBLogContinuitySession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _sceneIdentifier = [disconnectedCopy _sceneIdentifier];
    v10 = 134218242;
    v11 = disconnectedCopy;
    v12 = 2114;
    v13 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[Session] system aperture curtain scene disconnected: <%p>:%{public}@", &v10, 0x16u);
  }

  objc_storeWeak(&self->_systemApertureCurtainScene, 0);
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"terminal.scene-disconnected"];
  [(SBContinuitySession *)self _invalidateForReasons:v9];
}

- (id)clientExternallyBlockedReasons
{
  externallyBlockedReasons = [(_SBContinuitySessionServiceClient *)self->_continuitySessionServiceClient externallyBlockedReasons];
  v3 = externallyBlockedReasons;
  if (externallyBlockedReasons)
  {
    v4 = externallyBlockedReasons;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] setWithObject:@"block.session.client-connected"];
  }

  v5 = v4;

  return v5;
}

- (void)continuitySessionServiceClientConnected:(id)connected
{
  v11 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  externallyBlockedReasons = [(_SBContinuitySessionServiceClient *)connectedCopy externallyBlockedReasons];
  continuitySessionServiceClient = self->_continuitySessionServiceClient;
  self->_continuitySessionServiceClient = connectedCopy;
  v7 = connectedCopy;

  v8 = SBLogContinuitySession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = externallyBlockedReasons;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[Session] client connected with initial blocked reasons: %{public}@", &v9, 0xCu);
  }

  [(_SBContinuitySessionStateMachine *)self->_stateMachine noteClientConnectedWithInitialExternallyBlockedReasons:externallyBlockedReasons];
}

- (void)continuitySessionServiceClient:(id)client handleLaunchEventOfType:(id)type payload:(id)payload
{
  v26 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  typeCopy = type;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v9 = [[SBContinuitySessionLaunchEvent alloc] initWithType:typeCopy payload:payloadCopy];

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
    identifier = [(SBContinuitySessionLaunchEvent *)v9 identifier];
    [(_SBContinuitySessionStateMachine *)stateMachine didReceiveLaunchEvent:identifier];

    if (v12)
    {
      v18 = self->_stateMachine;
      identifier2 = [(SBContinuitySessionLaunchEvent *)v12 identifier];
      [(_SBContinuitySessionStateMachine *)v18 didHandleLaunchEvent:identifier2];
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

- (void)continuitySessionServiceClient:(id)client handleContinuityButtonEvent:(unint64_t)event
{
  v12 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = self->_continuitySessionServiceClient;

  if (v7 != clientCopy)
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

  [(SBContinuitySession *)self _handleContinuityButtonEvent:event];
}

- (void)continuitySessionServiceClient:(id)client setHostedInterfaceOrientation:(int64_t)orientation
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = SBLogContinuitySession();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    orientationCopy = orientation;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Session] client updated hosted interface orientation: %ld", &v8, 0xCu);
  }

  orientationDelegate = [(SBContinuitySession *)self orientationDelegate];
  [orientationDelegate continuitySession:self didUpdateHostedInterfaceOrientation:orientation];
}

- (void)continuitySessionServiceClientDidUpdateExternallyBlockedReasons:(id)reasons
{
  reasonsCopy = reasons;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = self->_continuitySessionServiceClient;

  if (v5 != reasonsCopy)
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

- (void)continuitySessionServiceClientDidConfigureHIDServices:(id)services
{
  servicesCopy = services;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = self->_continuitySessionServiceClient;

  if (v5 != servicesCopy)
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

- (void)continuitySessionServiceClient:(id)client updatedAppearanceSettings:(id)settings transitionContext:(id)context completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  settingsCopy = settings;
  contextCopy = context;
  completionCopy = completion;
  v14 = self->_continuitySessionServiceClient;
  if (v14 != clientCopy)
  {
    [SBContinuitySession continuitySessionServiceClient:updatedAppearanceSettings:transitionContext:completion:];
  }

  v15 = SBLogContinuitySession();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = settingsCopy;
    v27 = 2114;
    v28 = contextCopy;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[Session] updated appearance settings %{public}@ with transitionContext %{public}@", buf, 0x16u);
  }

  v16 = self->_appearanceSettings;
  objc_storeStrong(&self->_appearanceSettings, settings);
  userInterfaceStyle = [(SBUIContinuitySessionAppearanceSettings *)v16 userInterfaceStyle];
  userInterfaceStyle2 = [settingsCopy userInterfaceStyle];
  v19 = SBLogContinuitySession();
  v20 = v19;
  if (userInterfaceStyle == userInterfaceStyle2)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "[Session] updated appearance setting - no updates necessary", buf, 2u);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [SBContinuitySession continuitySessionServiceClient:v20 updatedAppearanceSettings:? transitionContext:? completion:?];
    }

    userInterfaceStyleProvider = self->_userInterfaceStyleProvider;
    userInterfaceStyle3 = [settingsCopy userInterfaceStyle];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __109__SBContinuitySession_continuitySessionServiceClient_updatedAppearanceSettings_transitionContext_completion___block_invoke;
    v23[3] = &unk_2783A9348;
    v24 = completionCopy;
    [(SBOverridableUserInterfaceStyleProvider *)userInterfaceStyleProvider setOverrideStyle:userInterfaceStyle3 completion:v23];
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

- (void)continuitySessionServiceClientDidCaptureScreenshot:(id)screenshot
{
  v4 = SBLogContinuitySession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Session] client did capture screenshot", v5, 2u);
  }

  [(SBContinuityScreenshotManager *)self->_screenshotManager noteCapturedScreenshot];
}

- (void)continuitySessionServiceClientDidStartScreenRecording:(id)recording
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

- (void)continuitySessionServiceClientDidStopScreenRecording:(id)recording
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

- (void)_clientReportedScreenRecordingActive:(BOOL)active
{
  activeCopy = active;
  v19 = *MEMORY[0x277D85DE8];
  if (self->_clientAdoptedScreenCaptureNotifications)
  {
    p_isBeingScreenRecorded = &self->_isBeingScreenRecorded;
    if (self->_isBeingScreenRecorded == active)
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
    if (isBeingScreenRecorded == activeCopy)
    {
      goto LABEL_8;
    }
  }

  *p_isBeingScreenRecorded = activeCopy;
LABEL_8:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allObjects = [(NSHashTable *)self->_screenRecordingObservers allObjects];
  v9 = [allObjects countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v13 + 1) + 8 * v12++) continuitySessionDidUpdateScreenRecordingState:self];
      }

      while (v10 != v12);
      v10 = [allObjects countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)continuitySessionServiceClientHasAdoptedScreenCaptureNotifications:(id)notifications
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
    allObjects = [(NSHashTable *)self->_screenRecordingObservers allObjects];
    v6 = [allObjects countByEnumeratingWithState:&v10 objects:v15 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v10 + 1) + 8 * v9++) continuitySessionDidUpdateScreenRecordingState:self];
        }

        while (v7 != v9);
        v7 = [allObjects countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_handleContinuityButtonEvent:(unint64_t)event
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
  if (event > 2)
  {
    if (event == 3)
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
      if (event != 4)
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

  else if (event == 1)
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
    if (event != 2)
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

- (void)_handlePendedLaunchEventIfNecessaryAnimatedly:(BOOL)animatedly
{
  v17 = *MEMORY[0x277D85DE8];
  pendingLaunchEvent = self->_pendingLaunchEvent;
  if (pendingLaunchEvent)
  {
    animatedlyCopy = animatedly;
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
    selfCopy = self;
    [(SBContinuitySessionLaunchEventExecutor *)launchEventExecutor executeLaunchEvent:v10 animatedly:animatedlyCopy completion:v11];

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

- (void)continuitySessionStateMachineDidUpdateState:(id)state oldState:(unint64_t)oldState
{
  v51 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  state = [stateCopy state];
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  v9 = SBLogContinuitySession();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSBContinuitySessionState(oldState);
    *buf = 138543618;
    v48 = stateCopy;
    v49 = 2114;
    v50 = v10;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[Session] State machine update - %{public}@ oldState: %{public}@", buf, 0x16u);
  }

  if (state != oldState)
  {
    if (state <= 6)
    {
      if (state > 3)
      {
        if (state == 4)
        {
          v19 = SBLogContinuitySession();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[Session] waitingForRemoteUnlock", buf, 2u);
          }
        }

        else if (state == 5)
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
        if (state != 1)
        {
          if (state == 2)
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

          else if (state == 3)
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

    if (state > 9)
    {
      switch(state)
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
          reasons = [(_SBContinuitySessionStateMachine *)stateMachine reasons];
          [(_SBContinuitySessionStateMachine *)stateMachine invalidateForReasons:reasons];

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

    else if (state == 7)
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

    else if (state == 8)
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
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v12 = [allObjects countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v12)
  {
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v40 + 1) + 8 * i) continuitySessionDidUpdateState:self];
      }

      v12 = [allObjects countByEnumeratingWithState:&v40 objects:v46 count:16];
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

- (id)sceneManagerforContinuityScreenshotManager:(id)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  sceneManager = [WeakRetained sceneManager];

  return sceneManager;
}

- (id)succinctDescription
{
  v3 = MEMORY[0x277CF0C08];
  succinctStyle = [MEMORY[0x277CF0C10] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __49__SBContinuitySession_appendDescriptionToStream___block_invoke;
  v33[3] = &unk_2783A92D8;
  v5 = streamCopy;
  v34 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v33];
  if (([v5 hasSuccinctStyle] & 1) == 0)
  {
    v6 = [v5 appendObject:self->_stateMachine withName:@"stateMachine"];
    v7 = [v5 appendObject:self->_continuitySessionServiceClient withName:@"client"];
    hasDebugStyle = [v5 hasDebugStyle];
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    if (hasDebugStyle)
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

- (void)_invalidateForReasons:(id)reasons
{
  v12 = *MEMORY[0x277D85DE8];
  reasonsCopy = reasons;
  v5 = SBLogContinuitySession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _SBFLoggingMethodProem();
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = reasonsCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] : %{public}@", &v8, 0x16u);
  }

  if (!self->_invalid)
  {
    state = [(SBContinuitySession *)self state];
    [(_SBContinuitySessionStateMachine *)self->_stateMachine invalidateForReasons:reasonsCopy];
    if (state != 12)
    {
      [(SBContinuitySession *)self continuitySessionStateMachineDidUpdateState:self->_stateMachine oldState:state];
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