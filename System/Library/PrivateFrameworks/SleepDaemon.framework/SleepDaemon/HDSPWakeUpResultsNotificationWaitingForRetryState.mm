@interface HDSPWakeUpResultsNotificationWaitingForRetryState
- (id)expirationDate;
- (void)didEnter;
- (void)didExit;
- (void)retryAttemptEventDue;
@end

@implementation HDSPWakeUpResultsNotificationWaitingForRetryState

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
    [v6 scheduleRetryAttempt];
  }
}

- (void)didExit
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentContext];
  v5 = [v4 hasStateTransitionOrInitializing];

  if (v5)
  {
    v6 = [(HKSPStateMachineState *)self stateMachine];
    [v6 unscheduleRetryAttempt];
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

  v5 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [(HKSPStateMachineState *)self stateMachine];
  v7 = [v6 queryingState];
  [v5 enterState:v7];

  v8 = *MEMORY[0x277D85DE8];
}

@end