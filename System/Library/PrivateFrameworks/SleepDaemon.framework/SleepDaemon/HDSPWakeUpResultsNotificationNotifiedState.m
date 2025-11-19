@interface HDSPWakeUpResultsNotificationNotifiedState
- (id)expirationDate;
- (void)didEnter;
- (void)didPostResultsNotification;
@end

@implementation HDSPWakeUpResultsNotificationNotifiedState

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
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentContext];
  v5 = [v4 hasStateTransitionAndNotInitializing];

  if (v5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending notification", &v10, 0xCu);
    }

    v8 = [(HKSPStateMachineState *)self stateMachine];
    [v8 postResultsNotification];
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

  v5 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [(HKSPStateMachineState *)self stateMachine];
  v7 = [v6 waitingForWakeUpState];
  [v5 enterState:v7];

  v8 = *MEMORY[0x277D85DE8];
}

@end