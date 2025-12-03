@interface SBAccidentalActivationMitigationSessionCoordinator
- (BOOL)hasIdleTimerBehaviors;
- (SBAccidentalActivationMitigationHostSession)hostSession;
- (SBAccidentalActivationMitigationSessionCoordinator)initWithSuppressionManager:(id)manager backlightController:(id)controller;
- (id)serverDidRequestCreateHostSessionUponConnection:(id)connection;
- (void)_publishDidCancelMitigationSession:(id)session;
- (void)_publishDidMitigateMitigationSession:(id)session;
- (void)_publishDidStartMitigationSession:(id)session;
- (void)accidentalActivationMitigationSessionStateDidChange:(id)change;
- (void)addObserver:(id)observer;
- (void)backlightController:(id)controller willTransitionToBacklightState:(int64_t)state source:(int64_t)source;
- (void)hostSessionDidRequestCancelMitigation:(id)mitigation;
- (void)hostSessionDidRequestMitigateAccidentalActivation:(id)activation;
- (void)hostSessionDidRequestStartMitigation:(id)mitigation outIdleTimer:(id *)timer;
- (void)removeObserver:(id)observer;
- (void)serverDidRequestDestroyNonActiveHostSessionUponDisconnection:(id)disconnection;
- (void)setHostSession:(id)session;
@end

@implementation SBAccidentalActivationMitigationSessionCoordinator

- (SBAccidentalActivationMitigationSessionCoordinator)initWithSuppressionManager:(id)manager backlightController:(id)controller
{
  managerCopy = manager;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = SBAccidentalActivationMitigationSessionCoordinator;
  v9 = [(SBAccidentalActivationMitigationSessionCoordinator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_suppressionManager, manager);
    objc_storeStrong(&v10->_backlightController, controller);
    v11 = [objc_alloc(MEMORY[0x277D66988]) initWithDelegate:v10];
    server = v10->_server;
    v10->_server = v11;

    [(SBSAccidentalActivationMitigationSessionServiceServer *)v10->_server startServer];
  }

  return v10;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v9 = observerCopy;
    v5 = [(NSHashTable *)self->_observers containsObject:observerCopy];
    observerCopy = v9;
    if (!v5)
    {
      observers = self->_observers;
      if (!observers)
      {
        weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v8 = self->_observers;
        self->_observers = weakObjectsHashTable;

        observers = self->_observers;
      }

      [(NSHashTable *)observers addObject:v9];
      observerCopy = v9;
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
  }

  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (BOOL)hasIdleTimerBehaviors
{
  hostSession = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
  v3 = [hostSession state] == 1;

  return v3;
}

- (SBAccidentalActivationMitigationHostSession)hostSession
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_host_session;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHostSession:(id)session
{
  sessionCopy = session;
  hostSession = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
  v6 = BSEqualObjects();

  if ((v6 & 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_lock_host_session, session);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_publishDidStartMitigationSession:(id)session
{
  v16 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accidentalActivationMitigationSessionCoordinator:self didStartMitigationSession:sessionCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_publishDidCancelMitigationSession:(id)session
{
  v16 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accidentalActivationMitigationSessionCoordinator:self didCancelMitigationSession:sessionCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_publishDidMitigateMitigationSession:(id)session
{
  v16 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 accidentalActivationMitigationSessionCoordinator:self didMitigateMitigationSession:sessionCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)hostSessionDidRequestStartMitigation:(id)mitigation outIdleTimer:(id *)timer
{
  v14 = *MEMORY[0x277D85DE8];
  mitigationCopy = mitigation;
  BSDispatchQueueAssertMain();
  v7 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = mitigationCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%@ for session %@ requested start camera capture mitigation", &v10, 0x16u);
  }

  [(SBBacklightController *)self->_backlightController addObserver:self];
  v8 = +[SBWorkspace mainWorkspace];
  v9 = [(SBAccidentalActivationMitigationSessionCoordinator *)self coordinatorRequestedIdleTimerBehavior:v8];
  *timer = [v8 idleTimerProvider:self didProposeBehavior:v9 forReason:@"SBAccidentalActivationMitigationSessionActiveReason"];
  [(SBAccidentalActivationMitigationSessionCoordinator *)self _publishDidStartMitigationSession:mitigationCopy];
}

- (void)hostSessionDidRequestCancelMitigation:(id)mitigation
{
  v18 = *MEMORY[0x277D85DE8];
  mitigationCopy = mitigation;
  BSDispatchQueueAssertMain();
  v5 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = mitigationCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%@ for session %@ requested camera capture mitigation cancellation", buf, 0x16u);
  }

  v6 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  [v6 resetIdleTimerForReason:@"SBAccidentalActivationMitigationSessionCancelledReason"];

  objc_initWeak(buf, self);
  v7 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __92__SBAccidentalActivationMitigationSessionCoordinator_hostSessionDidRequestCancelMitigation___block_invoke;
  v11 = &unk_2783A9CE8;
  objc_copyWeak(&v13, buf);
  selfCopy2 = self;
  [v7 configureSwitcherStateForAccidentalActivationMitigationSession:mitigationCopy completion:&v8];

  [(SBAccidentalActivationMitigationSessionCoordinator *)self _publishDidCancelMitigationSession:mitigationCopy, v8, v9, v10, v11];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __92__SBAccidentalActivationMitigationSessionCoordinator_hostSessionDidRequestCancelMitigation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(*(a1 + 32) + 32) removeObserver:WeakRetained];
}

- (void)hostSessionDidRequestMitigateAccidentalActivation:(id)activation
{
  v24 = *MEMORY[0x277D85DE8];
  activationCopy = activation;
  BSDispatchQueueAssertMain();
  v5 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v22 = 2112;
    v23 = activationCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%@ for session %@ requested camera capture mitigation", buf, 0x16u);
  }

  if ([activationCopy mitigatedEarly])
  {
    v6 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v6 resetIdleTimerForReason:@"SBAccidentalActivationMitigationSessionMitigatedReason"];
  }

  v7 = +[SBLockScreenManager sharedInstance];
  isUILocked = [v7 isUILocked];

  objc_initWeak(buf, self);
  if (isUILocked)
  {
    v9 = +[SBLockScreenManager sharedInstance];
    coverSheetViewController = [v9 coverSheetViewController];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __104__SBAccidentalActivationMitigationSessionCoordinator_hostSessionDidRequestMitigateAccidentalActivation___block_invoke;
    v18[3] = &unk_2783A9CE8;
    objc_copyWeak(&v19, buf);
    v18[4] = self;
    [coverSheetViewController activateMainPageWithCompletion:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __104__SBAccidentalActivationMitigationSessionCoordinator_hostSessionDidRequestMitigateAccidentalActivation___block_invoke_2;
    v15 = &unk_2783A9CE8;
    objc_copyWeak(&v17, buf);
    selfCopy2 = self;
    [v11 configureSwitcherStateForAccidentalActivationMitigationSession:activationCopy completion:&v12];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  [(SBAccidentalActivationMitigationSessionCoordinator *)self _publishDidMitigateMitigationSession:activationCopy, v12, v13, v14, v15];
}

void __104__SBAccidentalActivationMitigationSessionCoordinator_hostSessionDidRequestMitigateAccidentalActivation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(*(a1 + 32) + 32) removeObserver:WeakRetained];
}

void __104__SBAccidentalActivationMitigationSessionCoordinator_hostSessionDidRequestMitigateAccidentalActivation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(*(a1 + 32) + 32) removeObserver:WeakRetained];
}

- (id)serverDidRequestCreateHostSessionUponConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  BSDispatchQueueAssertMain();
  v5 = [[SBAccidentalActivationMitigationHostSession alloc] initWithSuppressionManager:self->_suppressionManager];
  [(SBAccidentalActivationMitigationSessionCoordinator *)self setHostSession:v5];
  hostSession = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
  [hostSession setDelegate:self];

  hostSession2 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
  [hostSession2 addObserver:self];

  v8 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    hostSession3 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
    v11 = 134218498;
    selfCopy = self;
    v13 = 2112;
    v14 = hostSession3;
    v15 = 2112;
    v16 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%p created host session %@ from server %@", &v11, 0x20u);
  }

  return v5;
}

- (void)serverDidRequestDestroyNonActiveHostSessionUponDisconnection:(id)disconnection
{
  v14 = *MEMORY[0x277D85DE8];
  disconnectionCopy = disconnection;
  BSDispatchQueueAssertMain();
  v5 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    hostSession = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
    v8 = 134218498;
    selfCopy = self;
    v10 = 2112;
    v11 = hostSession;
    v12 = 2112;
    v13 = disconnectionCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%p requested destruction of non-active host session %@ from server %@", &v8, 0x20u);
  }

  hostSession2 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
  [hostSession2 removeObserver:self];

  [(SBAccidentalActivationMitigationSessionCoordinator *)self setHostSession:0];
}

- (void)accidentalActivationMitigationSessionStateDidChange:(id)change
{
  if (([change state] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {

    [(SBAccidentalActivationMitigationSessionCoordinator *)self setHostSession:0];
  }
}

- (void)backlightController:(id)controller willTransitionToBacklightState:(int64_t)state source:(int64_t)source
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession:controller];
  state = [v7 state];

  if (state == 1 && state == 1)
  {
    v9 = SBLogCameraCaptureAccidentalActivationMitigationSession();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      hostSession = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
      v12 = 138412290;
      v13 = hostSession;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBAccidentalActivationMitigationSessionCoordinator mitigated session: %@ early for reason: backlight turned on", &v12, 0xCu);
    }

    hostSession2 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
    [hostSession2 requestSessionMitigateEarly];
  }
}

@end