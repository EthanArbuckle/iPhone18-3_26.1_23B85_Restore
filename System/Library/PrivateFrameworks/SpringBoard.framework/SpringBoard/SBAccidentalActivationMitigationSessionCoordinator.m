@interface SBAccidentalActivationMitigationSessionCoordinator
- (BOOL)hasIdleTimerBehaviors;
- (SBAccidentalActivationMitigationHostSession)hostSession;
- (SBAccidentalActivationMitigationSessionCoordinator)initWithSuppressionManager:(id)a3 backlightController:(id)a4;
- (id)serverDidRequestCreateHostSessionUponConnection:(id)a3;
- (void)_publishDidCancelMitigationSession:(id)a3;
- (void)_publishDidMitigateMitigationSession:(id)a3;
- (void)_publishDidStartMitigationSession:(id)a3;
- (void)accidentalActivationMitigationSessionStateDidChange:(id)a3;
- (void)addObserver:(id)a3;
- (void)backlightController:(id)a3 willTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5;
- (void)hostSessionDidRequestCancelMitigation:(id)a3;
- (void)hostSessionDidRequestMitigateAccidentalActivation:(id)a3;
- (void)hostSessionDidRequestStartMitigation:(id)a3 outIdleTimer:(id *)a4;
- (void)removeObserver:(id)a3;
- (void)serverDidRequestDestroyNonActiveHostSessionUponDisconnection:(id)a3;
- (void)setHostSession:(id)a3;
@end

@implementation SBAccidentalActivationMitigationSessionCoordinator

- (SBAccidentalActivationMitigationSessionCoordinator)initWithSuppressionManager:(id)a3 backlightController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SBAccidentalActivationMitigationSessionCoordinator;
  v9 = [(SBAccidentalActivationMitigationSessionCoordinator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_suppressionManager, a3);
    objc_storeStrong(&v10->_backlightController, a4);
    v11 = [objc_alloc(MEMORY[0x277D66988]) initWithDelegate:v10];
    server = v10->_server;
    v10->_server = v11;

    [(SBSAccidentalActivationMitigationSessionServiceServer *)v10->_server startServer];
  }

  return v10;
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
        v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
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
  v5 = a3;
  if (v5)
  {
    [(NSHashTable *)self->_observers removeObject:v5];
  }

  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (BOOL)hasIdleTimerBehaviors
{
  v2 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
  v3 = [v2 state] == 1;

  return v3;
}

- (SBAccidentalActivationMitigationHostSession)hostSession
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_host_session;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHostSession:(id)a3
{
  v7 = a3;
  v5 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
  v6 = BSEqualObjects();

  if ((v6 & 1) == 0)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_lock_host_session, a3);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_publishDidStartMitigationSession:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
          [v10 accidentalActivationMitigationSessionCoordinator:self didStartMitigationSession:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_publishDidCancelMitigationSession:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
          [v10 accidentalActivationMitigationSessionCoordinator:self didCancelMitigationSession:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_publishDidMitigateMitigationSession:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
          [v10 accidentalActivationMitigationSessionCoordinator:self didMitigateMitigationSession:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)hostSessionDidRequestStartMitigation:(id)a3 outIdleTimer:(id *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%@ for session %@ requested start camera capture mitigation", &v10, 0x16u);
  }

  [(SBBacklightController *)self->_backlightController addObserver:self];
  v8 = +[SBWorkspace mainWorkspace];
  v9 = [(SBAccidentalActivationMitigationSessionCoordinator *)self coordinatorRequestedIdleTimerBehavior:v8];
  *a4 = [v8 idleTimerProvider:self didProposeBehavior:v9 forReason:@"SBAccidentalActivationMitigationSessionActiveReason"];
  [(SBAccidentalActivationMitigationSessionCoordinator *)self _publishDidStartMitigationSession:v6];
}

- (void)hostSessionDidRequestCancelMitigation:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v4;
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
  v12 = self;
  [v7 configureSwitcherStateForAccidentalActivationMitigationSession:v4 completion:&v8];

  [(SBAccidentalActivationMitigationSessionCoordinator *)self _publishDidCancelMitigationSession:v4, v8, v9, v10, v11];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __92__SBAccidentalActivationMitigationSessionCoordinator_hostSessionDidRequestCancelMitigation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(*(a1 + 32) + 32) removeObserver:WeakRetained];
}

- (void)hostSessionDidRequestMitigateAccidentalActivation:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%@ for session %@ requested camera capture mitigation", buf, 0x16u);
  }

  if ([v4 mitigatedEarly])
  {
    v6 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v6 resetIdleTimerForReason:@"SBAccidentalActivationMitigationSessionMitigatedReason"];
  }

  v7 = +[SBLockScreenManager sharedInstance];
  v8 = [v7 isUILocked];

  objc_initWeak(buf, self);
  if (v8)
  {
    v9 = +[SBLockScreenManager sharedInstance];
    v10 = [v9 coverSheetViewController];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __104__SBAccidentalActivationMitigationSessionCoordinator_hostSessionDidRequestMitigateAccidentalActivation___block_invoke;
    v18[3] = &unk_2783A9CE8;
    objc_copyWeak(&v19, buf);
    v18[4] = self;
    [v10 activateMainPageWithCompletion:v18];

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
    v16 = self;
    [v11 configureSwitcherStateForAccidentalActivationMitigationSession:v4 completion:&v12];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  [(SBAccidentalActivationMitigationSessionCoordinator *)self _publishDidMitigateMitigationSession:v4, v12, v13, v14, v15];
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

- (id)serverDidRequestCreateHostSessionUponConnection:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [[SBAccidentalActivationMitigationHostSession alloc] initWithSuppressionManager:self->_suppressionManager];
  [(SBAccidentalActivationMitigationSessionCoordinator *)self setHostSession:v5];
  v6 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
  [v6 setDelegate:self];

  v7 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
  [v7 addObserver:self];

  v8 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
    v11 = 134218498;
    v12 = self;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "%p created host session %@ from server %@", &v11, 0x20u);
  }

  return v5;
}

- (void)serverDidRequestDestroyNonActiveHostSessionUponDisconnection:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
    v8 = 134218498;
    v9 = self;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%p requested destruction of non-active host session %@ from server %@", &v8, 0x20u);
  }

  v7 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
  [v7 removeObserver:self];

  [(SBAccidentalActivationMitigationSessionCoordinator *)self setHostSession:0];
}

- (void)accidentalActivationMitigationSessionStateDidChange:(id)a3
{
  if (([a3 state] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {

    [(SBAccidentalActivationMitigationSessionCoordinator *)self setHostSession:0];
  }
}

- (void)backlightController:(id)a3 willTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession:a3];
  v8 = [v7 state];

  if (a4 == 1 && v8 == 1)
  {
    v9 = SBLogCameraCaptureAccidentalActivationMitigationSession();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "SBAccidentalActivationMitigationSessionCoordinator mitigated session: %@ early for reason: backlight turned on", &v12, 0xCu);
    }

    v11 = [(SBAccidentalActivationMitigationSessionCoordinator *)self hostSession];
    [v11 requestSessionMitigateEarly];
  }
}

@end