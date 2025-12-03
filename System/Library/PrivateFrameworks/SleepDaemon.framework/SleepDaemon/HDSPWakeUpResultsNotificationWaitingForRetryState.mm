@interface HDSPWakeUpResultsNotificationWaitingForRetryState
- (id)expirationDate;
- (void)didEnter;
- (void)didExit;
- (void)retryAttemptEventDue;
@end

@implementation HDSPWakeUpResultsNotificationWaitingForRetryState

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
    [stateMachine2 scheduleRetryAttempt];
  }
}

- (void)didExit
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  hasStateTransitionOrInitializing = [currentContext hasStateTransitionOrInitializing];

  if (hasStateTransitionOrInitializing)
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 unscheduleRetryAttempt];
  }
}

- (void)retryAttemptEventDue
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received retry event", &v9, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
  queryingState = [stateMachine2 queryingState];
  [stateMachine enterState:queryingState];

  v8 = *MEMORY[0x277D85DE8];
}

@end