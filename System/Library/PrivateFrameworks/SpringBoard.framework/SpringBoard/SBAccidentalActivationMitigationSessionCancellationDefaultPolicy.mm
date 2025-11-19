@interface SBAccidentalActivationMitigationSessionCancellationDefaultPolicy
- (SBAccidentalActivationMitigationSessionCancellationDefaultPolicy)initWithSession:(id)a3;
- (SBAccidentalActivationMitigationSessionCancellationDefaultPolicy)initWithSession:(id)a3 suppressionManager:(id)a4;
- (void)_startEvaluatingWhetherActivationWasIntentional;
- (void)_stopEvaluatingWhetherActivationWasIntentional;
- (void)accidentalActivationMitigationSessionStateDidChange:(id)a3;
- (void)clientDidResetForUserAttention:(id)a3 withEvent:(id)a4;
- (void)dealloc;
- (void)liftToWakeController:(id)a3 didObserveTransition:(int64_t)a4 deviceOrientation:(int64_t)a5;
@end

@implementation SBAccidentalActivationMitigationSessionCancellationDefaultPolicy

- (SBAccidentalActivationMitigationSessionCancellationDefaultPolicy)initWithSession:(id)a3
{
  v5 = a3;
  v6 = [(SBAccidentalActivationMitigationSessionCancellationDefaultPolicy *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    [(SBSAccidentalActivationMitigationSession *)v7->_session addObserver:v7];
  }

  return v7;
}

- (SBAccidentalActivationMitigationSessionCancellationDefaultPolicy)initWithSession:(id)a3 suppressionManager:(id)a4
{
  v7 = a4;
  v8 = [(SBAccidentalActivationMitigationSessionCancellationDefaultPolicy *)self initWithSession:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_suppressionManager, a4);
    v10 = +[SBLiftToWakeController sharedController];
    liftToWakeController = v9->_liftToWakeController;
    v9->_liftToWakeController = v10;

    v12 = objc_alloc_init(MEMORY[0x277CEF768]);
    idleUserIntentAwarenessConfiguration = v9->_idleUserIntentAwarenessConfiguration;
    v9->_idleUserIntentAwarenessConfiguration = v12;

    [(AWAttentionAwarenessConfiguration *)v9->_idleUserIntentAwarenessConfiguration setIdentifier:@"accidental-activation-mitigation-session-user-intent"];
    [(AWAttentionAwarenessConfiguration *)v9->_idleUserIntentAwarenessConfiguration setEventMask:4095];
    [(AWAttentionAwarenessConfiguration *)v9->_idleUserIntentAwarenessConfiguration setAttentionLostTimeout:0.0];
    v14 = objc_alloc_init(SBAttentionAwarenessClient);
    idleUserIntentAwarenessClient = v9->_idleUserIntentAwarenessClient;
    v9->_idleUserIntentAwarenessClient = v14;

    [(SBAttentionAwarenessClient *)v9->_idleUserIntentAwarenessClient setConfiguration:v9->_idleUserIntentAwarenessConfiguration];
    [(SBAttentionAwarenessClient *)v9->_idleUserIntentAwarenessClient setDelegate:v9];
    [(SBAttentionAwarenessClient *)v9->_idleUserIntentAwarenessClient setEnabled:0];
  }

  return v9;
}

- (void)dealloc
{
  [(SBLiftToWakeController *)self->_liftToWakeController removeObserver:self];
  idleUserIntentAwarenessClient = self->_idleUserIntentAwarenessClient;
  if (idleUserIntentAwarenessClient)
  {
    [(SBAttentionAwarenessClient *)idleUserIntentAwarenessClient invalidate];
    v4 = self->_idleUserIntentAwarenessClient;
    self->_idleUserIntentAwarenessClient = 0;
  }

  v5.receiver = self;
  v5.super_class = SBAccidentalActivationMitigationSessionCancellationDefaultPolicy;
  [(SBAccidentalActivationMitigationSessionCancellationDefaultPolicy *)&v5 dealloc];
}

- (void)_startEvaluatingWhetherActivationWasIntentional
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    session = self->_session;
    v5 = 138412290;
    v6 = session;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Start evaluating whether activation was intentional upon session:%@ become active;", &v5, 0xCu);
  }

  [(SBAttentionAwarenessClient *)self->_idleUserIntentAwarenessClient setEnabled:1];
  [(SBLiftToWakeController *)self->_liftToWakeController addObserver:self];
}

- (void)_stopEvaluatingWhetherActivationWasIntentional
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SBLogCameraCaptureAccidentalActivationMitigationSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    session = self->_session;
    v5 = 138412290;
    v6 = session;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Stop evaluating whether activation was intentional upon session:%@ become cancelled or mitigated", &v5, 0xCu);
  }

  [(SBAttentionAwarenessClient *)self->_idleUserIntentAwarenessClient setEnabled:0];
  [(SBLiftToWakeController *)self->_liftToWakeController removeObserver:self];
}

- (void)accidentalActivationMitigationSessionStateDidChange:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(SBAccidentalActivationMitigationSessionCancellationDefaultPolicy *)self _startEvaluatingWhetherActivationWasIntentional];
  }

  else if ([v4 state] == 2 || objc_msgSend(v4, "state") == 3)
  {
    [(SBAccidentalActivationMitigationSessionCancellationDefaultPolicy *)self _stopEvaluatingWhetherActivationWasIntentional];
  }
}

- (void)clientDidResetForUserAttention:(id)a3 withEvent:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([(SBSAccidentalActivationMitigationSession *)self->_session state]== 1)
  {
    if ([v5 eventMask] == 2)
    {
      self->_eventType = 0;
      self->_eventReason = NSStringFromSBAttentionAwarenessClientLastEventMask([v5 eventMask]);
      v6 = SBLogCameraCaptureAccidentalActivationMitigationSession();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        session = self->_session;
        v8 = NSStringFromSBAccidentalActivationMitigationSessionCancellationEventType(self->_eventType);
        eventReason = self->_eventReason;
        v10 = NSStringFromSBCaptureButtonSuppressionState([(SBCaptureButtonSuppressionManager *)self->_suppressionManager suppressionState]);
        v14 = 138544130;
        v15 = session;
        v16 = 2114;
        v17 = v8;
        v18 = 2114;
        v19 = eventReason;
        v20 = 2114;
        v21 = v10;
        v11 = "Did observe attention awareness event for session: %{public}@; event type: %{public}@; reason: %{public}@; VO=%{public}@";
LABEL_8:
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v11, &v14, 0x2Au);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if ([(SBCaptureButtonSuppressionManager *)self->_suppressionManager suppressionState]!= 1)
    {
      self->_eventType = 0;
      self->_eventReason = NSStringFromSBAttentionAwarenessClientLastEventMask([v5 eventMask]);
      v6 = SBLogCameraCaptureAccidentalActivationMitigationSession();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_session;
        v8 = NSStringFromSBAccidentalActivationMitigationSessionCancellationEventType(self->_eventType);
        v13 = self->_eventReason;
        v10 = NSStringFromSBCaptureButtonSuppressionState([(SBCaptureButtonSuppressionManager *)self->_suppressionManager suppressionState]);
        v14 = 138413058;
        v15 = v12;
        v16 = 2112;
        v17 = v8;
        v18 = 2114;
        v19 = v13;
        v20 = 2112;
        v21 = v10;
        v11 = "Did observe attention awareness event for session: %@; event type: %@; reason: %{public}@; VO=%@";
        goto LABEL_8;
      }

LABEL_9:

      [(SBSAccidentalActivationMitigationSession *)self->_session requestSessionCancellation];
    }
  }
}

- (void)liftToWakeController:(id)a3 didObserveTransition:(int64_t)a4 deviceOrientation:(int64_t)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [(SBSAccidentalActivationMitigationSession *)self->_session state:a3];
  if (a4 == 2 && v7 == 1)
  {
    self->_eventType = 1;
    self->_eventReason = NSStringFromSBLiftToWakeTransition(2);
    v8 = SBLogCameraCaptureAccidentalActivationMitigationSession();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      session = self->_session;
      v10 = NSStringFromSBAccidentalActivationMitigationSessionCancellationEventType(self->_eventType);
      eventReason = self->_eventReason;
      v12 = NSStringFromSBCaptureButtonSuppressionState([(SBCaptureButtonSuppressionManager *)self->_suppressionManager suppressionState]);
      v13 = 138544130;
      v14 = session;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = eventReason;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Did observe lift to wake for session: %{public}@; event type: %{public}@, reason: %{public}@; VO=%{public}@", &v13, 0x2Au);
    }

    [(SBSAccidentalActivationMitigationSession *)self->_session requestSessionCancellation];
  }
}

@end