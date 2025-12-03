@interface HDSPSleepLockScreenGreetingState
- (void)dismissAlertForGoodMorning;
- (void)updateState;
@end

@implementation HDSPSleepLockScreenGreetingState

- (void)updateState
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  sleepScheduleModel = [infoProvider sleepScheduleModel];
  if (([sleepScheduleModel goodMorningScreenEnabledWithLogObject:self] & 1) == 0)
  {
    offState = [stateMachine offState];
    [stateMachine enterState:offState];
  }
}

- (void)dismissAlertForGoodMorning
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] dismissing good morning alert", &v8, 0xCu);
  }

  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  offState = [stateMachine offState];
  [stateMachine enterState:offState];

  v7 = *MEMORY[0x277D85DE8];
}

@end