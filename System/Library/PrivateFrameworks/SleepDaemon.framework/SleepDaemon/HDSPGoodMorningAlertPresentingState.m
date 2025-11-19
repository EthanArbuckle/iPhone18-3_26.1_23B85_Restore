@interface HDSPGoodMorningAlertPresentingState
- (void)didEnter;
- (void)didExit;
- (void)sleepScheduleStateChangedToBedtime;
- (void)stateDidExpire;
- (void)updateState;
@end

@implementation HDSPGoodMorningAlertPresentingState

- (void)didEnter
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentContext];
  v5 = [v4 hasStateTransitionAndNotInitializing];

  if (v5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenting alert", &v10, 0xCu);
    }

    v8 = [(HKSPStateMachineState *)self stateMachine];
    [v8 presentAlertForGoodMorning];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didExit
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentContext];
  v5 = [v4 hasStateTransitionOrInitializing];

  if (v5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissing alert", &v10, 0xCu);
    }

    v8 = [(HKSPStateMachineState *)self stateMachine];
    [v8 dismissAlertForGoodMorning];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateState
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  if ([v3 goodMorningAlertEnabled])
  {
    v4 = [v3 sleepScheduleModel];
    v5 = [v4 sleepEventRecord];
    v6 = [v5 goodMorningDismissedDate];

    v7 = *MEMORY[0x277D621E0];
    v8 = [v3 currentDate];
    v9 = [v4 previousEventWithIdentifier:v7 dueBeforeDate:v8];

    if (v9 && [v6 hksp_isAfterOrSameAsDate:v9])
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = objc_opt_class();
        v18 = 2114;
        v19 = v6;
        v11 = v17;
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] good morning alert dismissed %{public}@", &v16, 0x16u);
      }

      v12 = [v2 waitingState];
      [v2 enterState:v12];
    }
  }

  else
  {
    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = objc_opt_class();
      v14 = v17;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] good morning alerts disabled", &v16, 0xCu);
    }

    v4 = [v2 disabledState];
    [v2 enterState:v4];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stateDidExpire
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v2 = [v3 waitingState];
  [v3 enterState:v2];
}

- (void)sleepScheduleStateChangedToBedtime
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v2 = [v3 waitingState];
  [v3 enterState:v2];
}

@end