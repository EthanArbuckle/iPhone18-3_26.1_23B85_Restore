@interface HDSPWakeUpResultsNotificationQueryingState
- (HDSPWakeUpResultsNotificationQueryingState)initWithCoder:(id)coder;
- (id)expirationDate;
- (void)_executeQuery;
- (void)_retryQueryIfNeededOrTransitionToNeedsProtectedDataState;
- (void)_transitionToNotifiedState;
- (void)_transitionToRetryState;
- (void)_transitionToWaitingForWakeUpState;
- (void)didEnter;
- (void)didExit;
- (void)protectedHealthDataDidBecomeAvailable;
- (void)queryDidComplete;
- (void)queryDidFailWithError:(id)error;
@end

@implementation HDSPWakeUpResultsNotificationQueryingState

- (HDSPWakeUpResultsNotificationQueryingState)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HDSPWakeUpResultsNotificationQueryingState;
  v3 = [(HKSPPersistentStateMachineState *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v3->_shouldRetryImmediatelyOnFailure = 0;
    v5 = v3;
  }

  return v4;
}

- (id)expirationDate
{
  infoProvider = [(HDSPWakeUpResultsNotificationStateMachineState *)self infoProvider];
  infoProvider2 = [(HDSPWakeUpResultsNotificationStateMachineState *)self infoProvider];
  currentDate = [infoProvider2 currentDate];
  v6 = [infoProvider notificationAttemptWindowForWakeUpBeforeDate:currentDate];
  endDate = [v6 endDate];

  return endDate;
}

- (void)didEnter
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];

  if ([currentContext hasStateTransitionOrInitializing])
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    previousState = [currentContext previousState];
    if (previousState)
    {
      v6 = previousState;
      needsProtectedDataState = [stateMachine2 needsProtectedDataState];
      if (needsProtectedDataState)
      {
        v8 = needsProtectedDataState;
        previousState2 = [currentContext previousState];
        needsProtectedDataState2 = [stateMachine2 needsProtectedDataState];
        v11 = [previousState2 isMemberOfClass:objc_opt_class()];

        if (v11)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    stateMachine3 = [(HKSPStateMachineState *)self stateMachine];
    delegate = [stateMachine3 delegate];
    [delegate startObservingProtectedHealthDataAvailability];

LABEL_8:
    [(HDSPWakeUpResultsNotificationQueryingState *)self _executeQuery];
  }
}

- (void)didExit
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];

  if ([currentContext hasStateTransitionOrInitializing])
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    nextState = [currentContext nextState];
    if (nextState)
    {
      v6 = nextState;
      needsProtectedDataState = [stateMachine2 needsProtectedDataState];
      if (needsProtectedDataState)
      {
        v8 = needsProtectedDataState;
        nextState2 = [currentContext nextState];
        needsProtectedDataState2 = [stateMachine2 needsProtectedDataState];
        v11 = [nextState2 isMemberOfClass:objc_opt_class()];

        if (v11)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    [stateMachine2 stopObservingProtectedHealthDataAvailability];
LABEL_8:
  }
}

- (void)queryDidFailWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = errorCopy;
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received query failed with error %{public}@", &v8, 0x16u);
  }

  if ([errorCopy hksp_isHealthDatabaseInaccessibleError])
  {
    [(HDSPWakeUpResultsNotificationQueryingState *)self _retryQueryIfNeededOrTransitionToNeedsProtectedDataState];
  }

  else if ([errorCopy hdsp_isInsufficientSleepDataError])
  {
    [(HDSPWakeUpResultsNotificationQueryingState *)self _transitionToRetryState];
  }

  else
  {
    [(HDSPWakeUpResultsNotificationQueryingState *)self _transitionToWaitingForWakeUpState];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)queryDidComplete
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received query completion event", &v6, 0xCu);
  }

  [(HDSPWakeUpResultsNotificationQueryingState *)self _transitionToNotifiedState];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)protectedHealthDataDidBecomeAvailable
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received protected heath data available event", &v6, 0xCu);
  }

  self->_shouldRetryImmediatelyOnFailure = 1;
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_executeQuery
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Executing query", &v7, 0xCu);
  }

  self->_shouldRetryImmediatelyOnFailure = 0;
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  [stateMachine executeQuery];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_retryQueryIfNeededOrTransitionToNeedsProtectedDataState
{
  if (self->_shouldRetryImmediatelyOnFailure)
  {

    [(HDSPWakeUpResultsNotificationQueryingState *)self _executeQuery];
  }

  else
  {
    stateMachine = [(HKSPStateMachineState *)self stateMachine];
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    needsProtectedDataState = [stateMachine2 needsProtectedDataState];
    [stateMachine enterState:needsProtectedDataState];
  }
}

- (void)_transitionToWaitingForWakeUpState
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
  waitingForWakeUpState = [stateMachine2 waitingForWakeUpState];
  [stateMachine enterState:waitingForWakeUpState];
}

- (void)_transitionToNotifiedState
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
  notifiedState = [stateMachine2 notifiedState];
  [stateMachine enterState:notifiedState];
}

- (void)_transitionToRetryState
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
  waitingForRetryState = [stateMachine2 waitingForRetryState];
  [stateMachine enterState:waitingForRetryState];
}

@end