@interface HDSPGoodMorningAlertWaitingState
- (void)sleepScheduleStateChangedToWakeUp;
@end

@implementation HDSPGoodMorningAlertWaitingState

- (void)sleepScheduleStateChangedToWakeUp
{
  v9 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  if ([infoProvider isAppleWatch] && objc_msgSend(infoProvider, "isOnCharger"))
  {
    presentingState = HKSPLogForCategory();
    if (os_log_type_enabled(presentingState, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = objc_opt_class();
      v5 = v8;
      _os_log_impl(&dword_269B11000, presentingState, OS_LOG_TYPE_DEFAULT, "[%{public}@] skipping good morning alert, watch is charging", &v7, 0xCu);
    }
  }

  else
  {
    presentingState = [stateMachine presentingState];
    [stateMachine enterState:presentingState];
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end