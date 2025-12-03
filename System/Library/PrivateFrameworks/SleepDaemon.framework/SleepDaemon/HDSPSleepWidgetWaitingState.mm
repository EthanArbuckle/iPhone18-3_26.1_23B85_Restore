@interface HDSPSleepWidgetWaitingState
- (id)expirationDate;
- (void)stateDidExpire;
@end

@implementation HDSPSleepWidgetWaitingState

- (id)expirationDate
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  sleepScheduleModel = [infoProvider sleepScheduleModel];
  sleepSchedule = [sleepScheduleModel sleepSchedule];
  [sleepSchedule windDownTime];
  v6 = MEMORY[0x277D621F0];
  if (v7 <= 0.0)
  {
    v6 = MEMORY[0x277D621B8];
  }

  v8 = *v6;

  currentDate = [infoProvider currentDate];
  v10 = [sleepScheduleModel nextEventWithIdentifier:v8 dueAfterDate:currentDate];

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

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  upcomingState = [stateMachine upcomingState];
  [stateMachine enterState:upcomingState];

  v7 = *MEMORY[0x277D85DE8];
}

@end