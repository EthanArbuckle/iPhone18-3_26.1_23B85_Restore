@interface HDSPWakeUpResultsNotificationNeedsProtectedDataState
- (id)expirationDate;
- (void)_transitionToQueryingState;
- (void)didEnter;
- (void)didExit;
- (void)protectedHealthDataDidBecomeAvailable;
@end

@implementation HDSPWakeUpResultsNotificationNeedsProtectedDataState

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
  v4 = [v3 currentContext];
  v5 = [v4 hasStateTransitionOrInitializing];

  if (v5)
  {
    v6 = [(HKSPStateMachineState *)self stateMachine];
    [v6 startObservingProtectedHealthDataAvailability];
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
      v7 = [v4 queryingState];
      if (v7)
      {
        v8 = v7;
        v9 = [v12 nextState];
        v10 = [v4 queryingState];
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

  [(HDSPWakeUpResultsNotificationNeedsProtectedDataState *)self _transitionToQueryingState];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToQueryingState
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Transitioning to querying state", &v8, 0xCu);
  }

  v5 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [v5 queryingState];
  [v5 enterState:v6];

  v7 = *MEMORY[0x277D85DE8];
}

@end