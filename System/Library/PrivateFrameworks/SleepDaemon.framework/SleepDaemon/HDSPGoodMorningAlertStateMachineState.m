@interface HDSPGoodMorningAlertStateMachineState
- (void)updateState;
@end

@implementation HDSPGoodMorningAlertStateMachineState

- (void)updateState
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  if ([v3 goodMorningAlertEnabled])
  {
    v4 = [v2 waitingState];
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

    v4 = [v2 disabledState];
  }

  v7 = v4;
  [v2 enterState:{v4, *v9}];

  v8 = *MEMORY[0x277D85DE8];
}

@end