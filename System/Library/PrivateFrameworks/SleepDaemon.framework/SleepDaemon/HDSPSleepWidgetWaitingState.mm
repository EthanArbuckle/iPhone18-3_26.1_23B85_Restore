@interface HDSPSleepWidgetWaitingState
- (id)expirationDate;
- (void)stateDidExpire;
@end

@implementation HDSPSleepWidgetWaitingState

- (id)expirationDate
{
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];

  v4 = [v3 sleepScheduleModel];
  v5 = [v4 sleepSchedule];
  [v5 windDownTime];
  v6 = MEMORY[0x277D621F0];
  if (v7 <= 0.0)
  {
    v6 = MEMORY[0x277D621B8];
  }

  v8 = *v6;

  v9 = [v3 currentDate];
  v10 = [v4 nextEventWithIdentifier:v8 dueAfterDate:v9];

  v11 = [v10 dateByAddingTimeInterval:-7200.0];

  return v11;
}

- (void)stateDidExpire
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] received waiting expired event due", &v8, 0xCu);
  }

  v5 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [v5 upcomingState];
  [v5 enterState:v6];

  v7 = *MEMORY[0x277D85DE8];
}

@end