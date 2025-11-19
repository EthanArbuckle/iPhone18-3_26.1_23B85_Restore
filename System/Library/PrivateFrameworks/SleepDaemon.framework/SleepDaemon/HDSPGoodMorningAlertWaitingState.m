@interface HDSPGoodMorningAlertWaitingState
- (void)sleepScheduleStateChangedToWakeUp;
@end

@implementation HDSPGoodMorningAlertWaitingState

- (void)sleepScheduleStateChangedToWakeUp
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  if ([v3 isAppleWatch] && objc_msgSend(v3, "isOnCharger"))
  {
    v4 = HKSPLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = objc_opt_class();
      v5 = v8;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping good morning alert, watch is charging", &v7, 0xCu);
    }
  }

  else
  {
    v4 = [v2 presentingState];
    [v2 enterState:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end