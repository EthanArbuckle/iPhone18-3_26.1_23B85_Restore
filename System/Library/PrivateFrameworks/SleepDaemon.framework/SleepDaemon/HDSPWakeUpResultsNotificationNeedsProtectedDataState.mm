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
  hasStateTransitionOrInitializing = [currentContext hasStateTransitionOrInitializing];

  if (hasStateTransitionOrInitializing)
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 startObservingProtectedHealthDataAvailability];
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
      queryingState = [stateMachine2 queryingState];
      if (queryingState)
      {
        v8 = queryingState;
        nextState2 = [currentContext nextState];
        queryingState2 = [stateMachine2 queryingState];
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

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  queryingState = [stateMachine queryingState];
  [stateMachine enterState:queryingState];

  v7 = *MEMORY[0x277D85DE8];
}

@end