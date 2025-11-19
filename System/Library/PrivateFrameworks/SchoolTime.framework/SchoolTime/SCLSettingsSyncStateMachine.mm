@interface SCLSettingsSyncStateMachine
- (BOOL)_isRelevantMessage:(id)a3;
- (SCLSettingsSyncStateMachine)initWithContext:(id)a3;
- (SCLSettingsSyncStateMachineDelegate)delegate;
- (void)activate;
- (void)cancelCommitTimer;
- (void)cancelRetryActivity;
- (void)commitSettings;
- (void)didEnqueueMessage:(id)a3;
- (void)enqueueFailedWithError:(id)a3;
- (void)message:(id)a3 didFailToAcknowledgeWithError:(id)a4;
- (void)message:(id)a3 failedWithError:(id)a4;
- (void)messageDidSend:(id)a3;
- (void)messageWasDelivered:(id)a3;
- (void)performSync;
- (void)scheduleCommitTimerWithInterval:(double)a3;
- (void)scheduleRetryWithActivityCriteria:(id)a3;
- (void)settingsDidChange;
- (void)significantUserInteractionOccurred;
- (void)transitionToState:(id)a3;
- (void)xpcActivityStarted;
@end

@implementation SCLSettingsSyncStateMachine

- (SCLSettingsSyncStateMachine)initWithContext:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SCLSettingsSyncStateMachine;
  v5 = [(SCLSettingsSyncStateMachine *)&v19 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = objc_alloc_init(SCLSettingsSyncContext);
      [(SCLSettingsSyncContext *)v4 setSyncStatus:0];
    }

    objc_storeStrong(&v5->_context, v4);
    v6 = [[SCLSettingsSyncStateSynced alloc] initWithStateMachine:v5];
    syncedState = v5->_syncedState;
    v5->_syncedState = &v6->super;

    v8 = [[SCLSettingsSyncStatePendingSend alloc] initWithStateMachine:v5];
    pendingSendState = v5->_pendingSendState;
    v5->_pendingSendState = &v8->super;

    v10 = [[SCLSettingsSyncStateSending alloc] initWithStateMachine:v5];
    sendingState = v5->_sendingState;
    v5->_sendingState = &v10->super;

    v12 = [[SCLSettingsSyncStateSent alloc] initWithStateMachine:v5];
    sentState = v5->_sentState;
    v5->_sentState = &v12->super;

    v14 = [[SCLSettingsSyncStateFailed alloc] initWithStateMachine:v5];
    failedState = v5->_failedState;
    v5->_failedState = &v14->super;

    v16 = objc_alloc_init(SCLSettingsSyncErrorHandler);
    errorHandler = v5->_errorHandler;
    v5->_errorHandler = v16;
  }

  return v5;
}

- (void)activate
{
  v3 = [(SCLSettingsSyncStateMachine *)self context];
  v4 = [v3 syncStatus];

  v5 = 0;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_13;
      }

      v6 = [(SCLSettingsSyncStateMachine *)self pendingSendState];
    }

    else
    {
      v6 = [(SCLSettingsSyncStateMachine *)self syncedState];
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v6 = [(SCLSettingsSyncStateMachine *)self sendingState];
        break;
      case 3:
        v6 = [(SCLSettingsSyncStateMachine *)self sentState];
        break;
      case 4:
        v6 = [(SCLSettingsSyncStateMachine *)self failedState];
        break;
      default:
        goto LABEL_13;
    }
  }

  v5 = v6;
LABEL_13:
  v7 = v5;
  [(SCLSettingsSyncStateMachine *)self transitionToState:v5];
}

- (void)settingsDidChange
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = scl_transport_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  v6 = [(SCLSettingsSyncStateMachine *)self currentState];
  [v6 settingsDidChange];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)commitSettings
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = scl_transport_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  v6 = [(SCLSettingsSyncStateMachine *)self currentState];
  [v6 commitSettings];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)significantUserInteractionOccurred
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = scl_transport_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  v6 = [(SCLSettingsSyncStateMachine *)self currentState];
  [v6 significantUserInteractionOccurred];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)xpcActivityStarted
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = scl_transport_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_264829000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  v6 = [(SCLSettingsSyncStateMachine *)self currentState];
  [v6 xpcActivityStarted];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)enqueueFailedWithError:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = scl_transport_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
  }

  v8 = [(SCLSettingsSyncStateMachine *)self currentState];
  [v8 enqueueFailedWithError:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didEnqueueMessage:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = scl_transport_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
  }

  v8 = [(SCLSettingsSyncStateMachine *)self currentState];
  [v8 didEnqueueMessage:v5];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)message:(id)a3 failedWithError:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(SCLSettingsSyncStateMachine *)self _isRelevantMessage:v7])
  {
    v9 = scl_transport_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_264829000, v9, OS_LOG_TYPE_DEFAULT, "%@", &v13, 0xCu);
    }

    v11 = [(SCLSettingsSyncStateMachine *)self currentState];
    [v11 message:v7 failedWithError:v8];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)messageDidSend:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(SCLSettingsSyncStateMachine *)self _isRelevantMessage:v5])
  {
    v6 = scl_transport_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
    }

    v8 = [(SCLSettingsSyncStateMachine *)self currentState];
    [v8 messageDidSend:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)messageWasDelivered:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(SCLSettingsSyncStateMachine *)self _isRelevantMessage:v5])
  {
    v6 = scl_transport_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
    }

    v8 = [(SCLSettingsSyncStateMachine *)self currentState];
    [v8 messageWasDelivered:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)message:(id)a3 didFailToAcknowledgeWithError:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(SCLSettingsSyncStateMachine *)self _isRelevantMessage:v7])
  {
    v9 = scl_transport_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_264829000, v9, OS_LOG_TYPE_DEFAULT, "%@", &v13, 0xCu);
    }

    v11 = [(SCLSettingsSyncStateMachine *)self currentState];
    [v11 message:v7 didFailToAcknowledgeWithError:v8];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isRelevantMessage:(id)a3
{
  v4 = a3;
  v5 = [(SCLSettingsSyncStateMachine *)self context];
  v6 = [v5 messageIdentifier];
  v7 = [v6 isEqual:v4];

  return v7;
}

- (void)performSync
{
  v3 = [(SCLSettingsSyncStateMachine *)self delegate];
  [v3 performSyncForStateMachine:self];
}

- (void)scheduleRetryWithActivityCriteria:(id)a3
{
  v4 = a3;
  v5 = [(SCLSettingsSyncStateMachine *)self delegate];
  [v5 stateMachine:self scheduleRetryWithActivityCriteria:v4];
}

- (void)cancelRetryActivity
{
  v3 = [(SCLSettingsSyncStateMachine *)self delegate];
  [v3 cancelRetryActivityForStateMachine:self];
}

- (void)scheduleCommitTimerWithInterval:(double)a3
{
  v5 = [(SCLSettingsSyncStateMachine *)self delegate];
  [v5 stateMachine:self scheduleCommitTimerWithInterval:a3];
}

- (void)cancelCommitTimer
{
  v3 = [(SCLSettingsSyncStateMachine *)self delegate];
  [v3 cancelCommitTimerForStateMachine:self];
}

- (void)transitionToState:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(SCLSettingsSyncStateMachine *)self currentState];
  [v6 willExitWithNextState:v5];
  objc_storeStrong(&self->_currentState, a3);
  v7 = [(SCLSettingsSyncStateMachine *)self context];
  [v7 setSyncStatus:{objc_msgSend(v5, "status")}];

  [v5 didEnterWithPreviousState:v6];
  v8 = scl_transport_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_264829000, v8, OS_LOG_TYPE_DEFAULT, "Transition from state %@ to state: %@", &v11, 0x16u);
  }

  v9 = [(SCLSettingsSyncStateMachine *)self delegate];
  [v9 stateMachine:self didTransitionFromState:v6 toState:v5];

  v10 = *MEMORY[0x277D85DE8];
}

- (SCLSettingsSyncStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end