@interface HDSPSleepLockScreenGreetingState
- (void)dismissAlertForGoodMorning;
- (void)updateState;
@end

@implementation HDSPSleepLockScreenGreetingState

- (void)updateState
{
  v6 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v6 infoProvider];
  v4 = [v3 sleepScheduleModel];
  if (([v4 goodMorningScreenEnabledWithLogObject:self] & 1) == 0)
  {
    v5 = [v6 offState];
    [v6 enterState:v5];
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

  v5 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [v5 offState];
  [v5 enterState:v6];

  v7 = *MEMORY[0x277D85DE8];
}

@end