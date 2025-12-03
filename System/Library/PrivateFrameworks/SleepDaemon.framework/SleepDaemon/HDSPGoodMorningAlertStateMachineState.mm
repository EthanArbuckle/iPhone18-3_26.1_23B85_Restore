@interface HDSPGoodMorningAlertStateMachineState
- (void)updateState;
@end

@implementation HDSPGoodMorningAlertStateMachineState

- (void)updateState
{
  v10 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  if ([infoProvider goodMorningAlertEnabled])
  {
    waitingState = [stateMachine waitingState];
  }

  else
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 138543362;
      *&v9[4] = objc_opt_class();
      v6 = *&v9[4];
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] good morning alerts disabled", v9, 0xCu);
    }

    waitingState = [stateMachine disabledState];
  }

  v7 = waitingState;
  [stateMachine enterState:{waitingState, *v9}];

  v8 = *MEMORY[0x277D85DE8];
}

@end