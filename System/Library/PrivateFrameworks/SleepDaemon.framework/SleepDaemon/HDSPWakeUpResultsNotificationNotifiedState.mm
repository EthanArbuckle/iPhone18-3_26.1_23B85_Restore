@interface HDSPWakeUpResultsNotificationNotifiedState
- (id)expirationDate;
- (void)didEnter;
- (void)didPostResultsNotification;
@end

@implementation HDSPWakeUpResultsNotificationNotifiedState

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
  v12 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  hasStateTransitionAndNotInitializing = [currentContext hasStateTransitionAndNotInitializing];

  if (hasStateTransitionAndNotInitializing)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending notification", &v10, 0xCu);
    }

    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 postResultsNotification];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didPostResultsNotification
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received posting notification completion event", &v9, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
  waitingForWakeUpState = [stateMachine2 waitingForWakeUpState];
  [stateMachine enterState:waitingForWakeUpState];

  v8 = *MEMORY[0x277D85DE8];
}

@end