@interface HDSPWakeUpResultsNotificationDelayingForTrackingState
- (id)expirationDate;
- (void)stateDidExpire;
@end

@implementation HDSPWakeUpResultsNotificationDelayingForTrackingState

- (id)expirationDate
{
  infoProvider = [(HDSPWakeUpResultsNotificationStateMachineState *)self infoProvider];
  infoProvider2 = [(HDSPWakeUpResultsNotificationStateMachineState *)self infoProvider];
  currentDate = [infoProvider2 currentDate];
  v6 = [infoProvider notificationAttemptWindowForWakeUpBeforeDate:currentDate];
  startDate = [v6 startDate];

  return startDate;
}

- (void)stateDidExpire
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] expired", &v9, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
  queryingState = [stateMachine2 queryingState];
  [stateMachine enterState:queryingState];

  v8 = *MEMORY[0x277D85DE8];
}

@end