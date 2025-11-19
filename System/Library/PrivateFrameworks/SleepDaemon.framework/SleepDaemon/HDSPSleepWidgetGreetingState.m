@interface HDSPSleepWidgetGreetingState
- (void)stateDidExpire;
@end

@implementation HDSPSleepWidgetGreetingState

- (void)stateDidExpire
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 138543362;
    *&v11[4] = objc_opt_class();
    v4 = *&v11[4];
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] received greeting expired event due", v11, 0xCu);
  }

  v5 = [(HKSPStateMachineState *)self stateMachine];
  v6 = [(HDSPSleepWidgetStateMachineState *)self shouldGoIntoUpcomingState];
  v7 = [(HKSPStateMachineState *)self stateMachine];
  v8 = v7;
  if (v6)
  {
    [v7 upcomingState];
  }

  else
  {
    [v7 waitingState];
  }
  v9 = ;
  [v5 enterState:{v9, *v11}];

  v10 = *MEMORY[0x277D85DE8];
}

@end