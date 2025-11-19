@interface HDSPWakeUpResultsNotificationQueryingState
- (HDSPWakeUpResultsNotificationQueryingState)initWithCoder:(id)a3;
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
- (void)queryDidFailWithError:(id)a3;
@end

@implementation HDSPWakeUpResultsNotificationQueryingState

- (HDSPWakeUpResultsNotificationQueryingState)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HDSPWakeUpResultsNotificationQueryingState;
  v3 = [(HKSPPersistentStateMachineState *)&v7 initWithCoder:a3];
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
  v3 = [(HDSPWakeUpResultsNotificationStateMachineState *)self infoProvider];
  v4 = [(HDSPWakeUpResultsNotificationStateMachineState *)self infoProvider];
  v5 = [v4 currentDate];
  v6 = [v3 notificationAttemptWindowForWakeUpBeforeDate:v5];
  v7 = [v6 endDate];

  return v7;
}

- (void)didEnter
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v14 = [v3 currentContext];

  if ([v14 hasStateTransitionOrInitializing])
  {
    v4 = [(HKSPStateMachineState *)self stateMachine];
    v5 = [v14 previousState];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 needsProtectedDataState];
      if (v7)
      {
        v8 = v7;
        v9 = [v14 previousState];
        v10 = [v4 needsProtectedDataState];
        v11 = [v9 isMemberOfClass:objc_opt_class()];

        if (v11)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    v12 = [(HKSPStateMachineState *)self stateMachine];
    v13 = [v12 delegate];
    [v13 startObservingProtectedHealthDataAvailability];

LABEL_8:
    [(HDSPWakeUpResultsNotificationQueryingState *)self _executeQuery];
  }
}

- (void)didExit
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v12 = [v3 currentContext];

  if ([v12 hasStateTransitionOrInitializing])
  {
    v4 = [(HKSPStateMachineState *)self stateMachine];
    v5 = [v12 nextState];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 needsProtectedDataState];
      if (v7)
      {
        v8 = v7;
        v9 = [v12 nextState];
        v10 = [v4 needsProtectedDataState];
        v11 = [v9 isMemberOfClass:objc_opt_class()];

        if (v11)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }
    }

    [v4 stopObservingProtectedHealthDataAvailability];
LABEL_8:
  }
}

- (void)queryDidFailWithError:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v4;
    v6 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received query failed with error %{public}@", &v8, 0x16u);
  }

  if ([v4 hksp_isHealthDatabaseInaccessibleError])
  {
    [(HDSPWakeUpResultsNotificationQueryingState *)self _retryQueryIfNeededOrTransitionToNeedsProtectedDataState];
  }

  else if ([v4 hdsp_isInsufficientSleepDataError])
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
  v5 = [(HKSPStateMachineState *)self stateMachine];
  [v5 executeQuery];

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
    v5 = [(HKSPStateMachineState *)self stateMachine];
    v3 = [(HKSPStateMachineState *)self stateMachine];
    v4 = [v3 needsProtectedDataState];
    [v5 enterState:v4];
  }
}

- (void)_transitionToWaitingForWakeUpState
{
  v5 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 waitingForWakeUpState];
  [v5 enterState:v4];
}

- (void)_transitionToNotifiedState
{
  v5 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 notifiedState];
  [v5 enterState:v4];
}

- (void)_transitionToRetryState
{
  v5 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 waitingForRetryState];
  [v5 enterState:v4];
}

@end