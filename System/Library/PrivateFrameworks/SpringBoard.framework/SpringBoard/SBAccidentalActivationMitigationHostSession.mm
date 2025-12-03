@interface SBAccidentalActivationMitigationHostSession
- (SBAccidentalActivationMitigationHostSession)initWithSuppressionManager:(id)manager;
- (void)activateSessionForBundleIdentifier:(id)identifier duration:(double)duration accidentalActivationMitigationSessionCancellationPolicyClassName:(id)name;
- (void)addObserver:(id)observer;
- (void)idleTimerDidExpire:(id)expire;
- (void)removeObserver:(id)observer;
- (void)requestSessionCancellation;
- (void)requestSessionMitigateEarly;
- (void)setState:(int64_t)state;
@end

@implementation SBAccidentalActivationMitigationHostSession

- (SBAccidentalActivationMitigationHostSession)initWithSuppressionManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SBAccidentalActivationMitigationHostSession;
  v6 = [(SBAccidentalActivationMitigationHostSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suppressionManager, manager);
  }

  return v7;
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

- (void)setState:(int64_t)state
{
  v52 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  state = self->_state;
  if (state != state)
  {
    self->_state = state;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = [(NSHashTable *)self->_observers copy];
    v8 = [v7 countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        v11 = 0;
        do
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v37 + 1) + 8 * v11++) accidentalActivationMitigationSessionStateDidChange:self];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v9);
    }

    if (state <= 1)
    {
      if (state)
      {
        if (state != 1)
        {
          return;
        }

        if (state)
        {
          [(SBAccidentalActivationMitigationHostSession *)a2 setState:?];
        }

        v12 = SBLogCameraCaptureAccidentalActivationMitigationSession();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = NSStringFromSBSAccidentalActivationMitigationSessionState();
          duration = self->_duration;
          v15 = NSStringFromSBCaptureButtonSuppressionState([(SBCaptureButtonSuppressionManager *)self->_suppressionManager suppressionState]);
          *buf = 138413058;
          selfCopy5 = self;
          v43 = 2112;
          v44 = v13;
          v45 = 2048;
          v46 = duration;
          v47 = 2112;
          v48 = v15;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[PostLaunchSuppression][AccidentalActivationMitigationSession] %@ did transition to state: %@; start timer with duration: %f due to mitigation session become active, VO=%@; screen is dimmed", buf, 0x2Au);
        }

        delegate = [(SBAccidentalActivationMitigationHostSession *)self delegate];
        v36 = 0;
        [delegate hostSessionDidRequestStartMitigation:self outIdleTimer:&v36];
        v17 = v36;

        idleTimer = self->_idleTimer;
        self->_idleTimer = v17;
        v19 = v17;

        [(SBIdleTimer *)self->_idleTimer addIdleTimerObserver:self];
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBAccidentalActivationMitigationHostSession.m" lineNumber:70 description:@"Accidental activation mitigation session should never become initial again."];

        v19 = SBLogCameraCaptureAccidentalActivationMitigationSession();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v25 = NSStringFromSBSAccidentalActivationMitigationSessionState();
          v26 = NSStringFromSBCaptureButtonSuppressionState([(SBCaptureButtonSuppressionManager *)self->_suppressionManager suppressionState]);
          *buf = 138412802;
          selfCopy5 = self;
          v43 = 2112;
          v44 = v25;
          v45 = 2112;
          v46 = *&v26;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[PostLaunchSuppression][AccidentalActivationMitigationSession] %@ did transition to state: %@; due to mitigation session initialized, VO=%@;", buf, 0x20u);
        }
      }

      goto LABEL_35;
    }

    if (state != 2)
    {
      if (state != 3)
      {
        return;
      }

      if (state != 1)
      {
        [(SBAccidentalActivationMitigationHostSession *)a2 setState:?];
      }

      v20 = SBLogCameraCaptureAccidentalActivationMitigationSession();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = NSStringFromSBSAccidentalActivationMitigationSessionState();
        v22 = NSStringFromSBCaptureButtonSuppressionState([(SBCaptureButtonSuppressionManager *)self->_suppressionManager suppressionState]);
        *buf = 138412802;
        selfCopy5 = self;
        v43 = 2112;
        v44 = v21;
        v45 = 2112;
        v46 = *&v22;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "[PostLaunchSuppression][AccidentalActivationMitigationSession] %@ did transition to state: %@; stopping camera due to mitigation session ended, VO=%@; camera stopped, device dimmed and locked", buf, 0x20u);
      }

      delegate2 = [(SBAccidentalActivationMitigationHostSession *)self delegate];
      [delegate2 hostSessionDidRequestMitigateAccidentalActivation:self];

      [(SBIdleTimer *)self->_idleTimer removeIdleTimerObserver:self];
      v19 = self->_idleTimer;
      self->_idleTimer = 0;
      goto LABEL_35;
    }

    if (state != 1)
    {
      [(SBAccidentalActivationMitigationHostSession *)a2 setState:?];
    }

    v27 = objc_opt_class();
    v19 = SBSafeCast(v27, self->_cancellationPolicy);
    v28 = SBLogCameraCaptureAccidentalActivationMitigationSession();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v29)
      {
        v30 = NSStringFromSBSAccidentalActivationMitigationSessionState();
        v31 = NSStringFromSBAccidentalActivationMitigationSessionCancellationEventType([v19 eventType]);
        eventReason = [v19 eventReason];
        v33 = NSStringFromSBCaptureButtonSuppressionState([(SBCaptureButtonSuppressionManager *)self->_suppressionManager suppressionState]);
        *buf = 138413314;
        selfCopy5 = self;
        v43 = 2112;
        v44 = v30;
        v45 = 2112;
        v46 = *&v31;
        v47 = 2112;
        v48 = eventReason;
        v49 = 2112;
        v50 = v33;
        _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "[PostLaunchSuppression][AccidentalActivationMitigationSession] %@ did transition to state: %@; cancelled due to event type: %@; reason: %@, VO=%@; screen is un-dimmed, camera running", buf, 0x34u);

LABEL_33:
      }
    }

    else if (v29)
    {
      v30 = NSStringFromSBSAccidentalActivationMitigationSessionState();
      v31 = NSStringFromSBCaptureButtonSuppressionState([(SBCaptureButtonSuppressionManager *)self->_suppressionManager suppressionState]);
      *buf = 138412802;
      selfCopy5 = self;
      v43 = 2112;
      v44 = v30;
      v45 = 2112;
      v46 = *&v31;
      _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "[PostLaunchSuppression][AccidentalActivationMitigationSession] %@ did transition to state :%@; cancelled due to custom cancellation policy, VO=%@; screen is un-dimmed, camera running", buf, 0x20u);
      goto LABEL_33;
    }

    delegate3 = [(SBAccidentalActivationMitigationHostSession *)self delegate];
    [delegate3 hostSessionDidRequestCancelMitigation:self];

    [(SBIdleTimer *)self->_idleTimer removeIdleTimerObserver:self];
    v35 = self->_idleTimer;
    self->_idleTimer = 0;

LABEL_35:
  }
}

- (void)activateSessionForBundleIdentifier:(id)identifier duration:(double)duration accidentalActivationMitigationSessionCancellationPolicyClassName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  BSDispatchQueueAssertMain();
  objc_storeStrong(&self->_bundleIdentifier, identifier);
  self->_duration = duration;
  cancellationPolicyClassName = self->_cancellationPolicyClassName;
  self->_cancellationPolicyClassName = nameCopy;
  v11 = nameCopy;

  self->_mitigatedEarly = 0;
  if (v11)
  {
    v12 = [objc_alloc(NSClassFromString(v11)) initWithSession:self];
  }

  else
  {
    v12 = [[SBAccidentalActivationMitigationSessionCancellationDefaultPolicy alloc] initWithSession:self suppressionManager:self->_suppressionManager];
  }

  cancellationPolicy = self->_cancellationPolicy;
  self->_cancellationPolicy = v12;

  [(SBAccidentalActivationMitigationHostSession *)self setState:1];
}

- (void)requestSessionCancellation
{
  BSDispatchQueueAssertMain();

  [(SBAccidentalActivationMitigationHostSession *)self setState:2];
}

- (void)requestSessionMitigateEarly
{
  BSDispatchQueueAssertMain();
  self->_mitigatedEarly = 1;

  [(SBAccidentalActivationMitigationHostSession *)self setState:3];
}

- (void)idleTimerDidExpire:(id)expire
{
  if (self->_idleTimer == expire && [(SBAccidentalActivationMitigationHostSession *)self state]== 1)
  {

    [(SBAccidentalActivationMitigationHostSession *)self setState:3];
  }
}

- (void)setState:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAccidentalActivationMitigationHostSession.m" lineNumber:97 description:@"Accidental activation mitigation session must be active before becoming mitigated."];
}

- (void)setState:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAccidentalActivationMitigationHostSession.m" lineNumber:84 description:@"Accidental activation mitigation session must be active before becoming cancelled."];
}

- (void)setState:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAccidentalActivationMitigationHostSession.m" lineNumber:75 description:@"Accidental activation mitigation session must be initial before becoming active."];
}

@end