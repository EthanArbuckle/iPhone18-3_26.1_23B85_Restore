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
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  hasStateTransitionAndNotInitializing = [currentContext hasStateTransitionAndNotInitializing];

  if (hasStateTransitionAndNotInitializing)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Presenting alert", &v10, 0xCu);
    }

    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 presentAlertForGoodMorning];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)didExit
{
  v12 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  hasStateTransitionOrInitializing = [currentContext hasStateTransitionOrInitializing];

  if (hasStateTransitionOrInitializing)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissing alert", &v10, 0xCu);
    }

    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 dismissAlertForGoodMorning];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateState
{
  v20 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  if ([infoProvider goodMorningAlertEnabled])
  {
    sleepScheduleModel = [infoProvider sleepScheduleModel];
    sleepEventRecord = [sleepScheduleModel sleepEventRecord];
    goodMorningDismissedDate = [sleepEventRecord goodMorningDismissedDate];

    v7 = *MEMORY[0x277D621E0];
    currentDate = [infoProvider currentDate];
    v9 = [sleepScheduleModel previousEventWithIdentifier:v7 dueBeforeDate:currentDate];

    if (v9 && [goodMorningDismissedDate hksp_isAfterOrSameAsDate:v9])
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = objc_opt_class();
        v18 = 2114;
        v19 = goodMorningDismissedDate;
        v11 = v17;
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] good morning alert dismissed %{public}@", &v16, 0x16u);
      }

      waitingState = [stateMachine waitingState];
      [stateMachine enterState:waitingState];
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

    sleepScheduleModel = [stateMachine disabledState];
    [stateMachine enterState:sleepScheduleModel];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)stateDidExpire
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  waitingState = [stateMachine waitingState];
  [stateMachine enterState:waitingState];
}

- (void)sleepScheduleStateChangedToBedtime
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  waitingState = [stateMachine waitingState];
  [stateMachine enterState:waitingState];
}

@end