@interface SCLSettingsSyncStateMachine
- (BOOL)_isRelevantMessage:(id)message;
- (SCLSettingsSyncStateMachine)initWithContext:(id)context;
- (SCLSettingsSyncStateMachineDelegate)delegate;
- (void)activate;
- (void)cancelCommitTimer;
- (void)cancelRetryActivity;
- (void)commitSettings;
- (void)didEnqueueMessage:(id)message;
- (void)enqueueFailedWithError:(id)error;
- (void)message:(id)message didFailToAcknowledgeWithError:(id)error;
- (void)message:(id)message failedWithError:(id)error;
- (void)messageDidSend:(id)send;
- (void)messageWasDelivered:(id)delivered;
- (void)performSync;
- (void)scheduleCommitTimerWithInterval:(double)interval;
- (void)scheduleRetryWithActivityCriteria:(id)criteria;
- (void)settingsDidChange;
- (void)significantUserInteractionOccurred;
- (void)transitionToState:(id)state;
- (void)xpcActivityStarted;
@end

@implementation SCLSettingsSyncStateMachine

- (SCLSettingsSyncStateMachine)initWithContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = SCLSettingsSyncStateMachine;
  v5 = [(SCLSettingsSyncStateMachine *)&v19 init];
  if (v5)
  {
    if (!contextCopy)
    {
      contextCopy = objc_alloc_init(SCLSettingsSyncContext);
      [(SCLSettingsSyncContext *)contextCopy setSyncStatus:0];
    }

    objc_storeStrong(&v5->_context, contextCopy);
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
  context = [(SCLSettingsSyncStateMachine *)self context];
  syncStatus = [context syncStatus];

  v5 = 0;
  if (syncStatus <= 1)
  {
    if (syncStatus)
    {
      if (syncStatus != 1)
      {
        goto LABEL_13;
      }

      pendingSendState = [(SCLSettingsSyncStateMachine *)self pendingSendState];
    }

    else
    {
      pendingSendState = [(SCLSettingsSyncStateMachine *)self syncedState];
    }
  }

  else
  {
    switch(syncStatus)
    {
      case 2:
        pendingSendState = [(SCLSettingsSyncStateMachine *)self sendingState];
        break;
      case 3:
        pendingSendState = [(SCLSettingsSyncStateMachine *)self sentState];
        break;
      case 4:
        pendingSendState = [(SCLSettingsSyncStateMachine *)self failedState];
        break;
      default:
        goto LABEL_13;
    }
  }

  v5 = pendingSendState;
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

  currentState = [(SCLSettingsSyncStateMachine *)self currentState];
  [currentState settingsDidChange];

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

  currentState = [(SCLSettingsSyncStateMachine *)self currentState];
  [currentState commitSettings];

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

  currentState = [(SCLSettingsSyncStateMachine *)self currentState];
  [currentState significantUserInteractionOccurred];

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

  currentState = [(SCLSettingsSyncStateMachine *)self currentState];
  [currentState xpcActivityStarted];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)enqueueFailedWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = scl_transport_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
  }

  currentState = [(SCLSettingsSyncStateMachine *)self currentState];
  [currentState enqueueFailedWithError:errorCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didEnqueueMessage:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = scl_transport_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
  }

  currentState = [(SCLSettingsSyncStateMachine *)self currentState];
  [currentState didEnqueueMessage:messageCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)message:(id)message failedWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  errorCopy = error;
  if ([(SCLSettingsSyncStateMachine *)self _isRelevantMessage:messageCopy])
  {
    v9 = scl_transport_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_264829000, v9, OS_LOG_TYPE_DEFAULT, "%@", &v13, 0xCu);
    }

    currentState = [(SCLSettingsSyncStateMachine *)self currentState];
    [currentState message:messageCopy failedWithError:errorCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)messageDidSend:(id)send
{
  v12 = *MEMORY[0x277D85DE8];
  sendCopy = send;
  if ([(SCLSettingsSyncStateMachine *)self _isRelevantMessage:sendCopy])
  {
    v6 = scl_transport_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
    }

    currentState = [(SCLSettingsSyncStateMachine *)self currentState];
    [currentState messageDidSend:sendCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)messageWasDelivered:(id)delivered
{
  v12 = *MEMORY[0x277D85DE8];
  deliveredCopy = delivered;
  if ([(SCLSettingsSyncStateMachine *)self _isRelevantMessage:deliveredCopy])
  {
    v6 = scl_transport_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromSelector(a2);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_264829000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
    }

    currentState = [(SCLSettingsSyncStateMachine *)self currentState];
    [currentState messageWasDelivered:deliveredCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)message:(id)message didFailToAcknowledgeWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  errorCopy = error;
  if ([(SCLSettingsSyncStateMachine *)self _isRelevantMessage:messageCopy])
  {
    v9 = scl_transport_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_264829000, v9, OS_LOG_TYPE_DEFAULT, "%@", &v13, 0xCu);
    }

    currentState = [(SCLSettingsSyncStateMachine *)self currentState];
    [currentState message:messageCopy didFailToAcknowledgeWithError:errorCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isRelevantMessage:(id)message
{
  messageCopy = message;
  context = [(SCLSettingsSyncStateMachine *)self context];
  messageIdentifier = [context messageIdentifier];
  v7 = [messageIdentifier isEqual:messageCopy];

  return v7;
}

- (void)performSync
{
  delegate = [(SCLSettingsSyncStateMachine *)self delegate];
  [delegate performSyncForStateMachine:self];
}

- (void)scheduleRetryWithActivityCriteria:(id)criteria
{
  criteriaCopy = criteria;
  delegate = [(SCLSettingsSyncStateMachine *)self delegate];
  [delegate stateMachine:self scheduleRetryWithActivityCriteria:criteriaCopy];
}

- (void)cancelRetryActivity
{
  delegate = [(SCLSettingsSyncStateMachine *)self delegate];
  [delegate cancelRetryActivityForStateMachine:self];
}

- (void)scheduleCommitTimerWithInterval:(double)interval
{
  delegate = [(SCLSettingsSyncStateMachine *)self delegate];
  [delegate stateMachine:self scheduleCommitTimerWithInterval:interval];
}

- (void)cancelCommitTimer
{
  delegate = [(SCLSettingsSyncStateMachine *)self delegate];
  [delegate cancelCommitTimerForStateMachine:self];
}

- (void)transitionToState:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  currentState = [(SCLSettingsSyncStateMachine *)self currentState];
  [currentState willExitWithNextState:stateCopy];
  objc_storeStrong(&self->_currentState, state);
  context = [(SCLSettingsSyncStateMachine *)self context];
  [context setSyncStatus:{objc_msgSend(stateCopy, "status")}];

  [stateCopy didEnterWithPreviousState:currentState];
  v8 = scl_transport_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = currentState;
    v13 = 2112;
    v14 = stateCopy;
    _os_log_impl(&dword_264829000, v8, OS_LOG_TYPE_DEFAULT, "Transition from state %@ to state: %@", &v11, 0x16u);
  }

  delegate = [(SCLSettingsSyncStateMachine *)self delegate];
  [delegate stateMachine:self didTransitionFromState:currentState toState:stateCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (SCLSettingsSyncStateMachineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end