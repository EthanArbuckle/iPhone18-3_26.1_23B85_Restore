@interface HDSPSleepWidgetBedtimeState
- (void)stateDidExpire;
@end

@implementation HDSPSleepWidgetBedtimeState

- (void)stateDidExpire
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] received bedtime expired event due", &v8, 0xCu);
  }

  v5 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [v5 bedtimeInProgressState];
  [v5 enterState:v6];

  v7 = *MEMORY[0x277D85DE8];
}

@end