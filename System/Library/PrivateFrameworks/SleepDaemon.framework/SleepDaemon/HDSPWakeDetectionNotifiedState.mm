@interface HDSPWakeDetectionNotifiedState
- (id)expirationDate;
- (void)didEnter;
- (void)stateDidExpire;
- (void)updateState;
@end

@implementation HDSPWakeDetectionNotifiedState

- (id)expirationDate
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 infoProvider];

  v5 = [v4 currentDate];
  v6 = [v4 sleepScheduleModel];
  v7 = [v4 currentDate];
  v8 = [v6 nextEventDueAfterDate:v7];

  v9 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  v10 = [v9 endDate];

  if (v10 && ([v8 dueDate], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hksp_isAfterDate:", v10), v11, v12))
  {
    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v14 = v20;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] wakeup has changed to be later, treating state as expired", &v19, 0xCu);
    }

    v15 = v5;
  }

  else
  {
    v15 = [v8 dueDate];
  }

  v16 = v15;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)didEnter
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentContext];

  if ([v4 hasStateTransitionOrInitializing])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [v4 type]) != 0)
    {
      v6 = v5;
      v7 = [(HKSPStateMachineState *)self stateMachine];
      [v7 postWakeDetectionNotification:v6];
    }

    else
    {
      v8 = HKSPLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = objc_opt_class();
        v9 = v12;
        _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] not posting wake detection notification", &v11, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateState
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(HDSPWakeDetectionStateMachineState *)self isWakeDetectionDisabled])
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v4 = v10;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] wake detection disabled after notifying", &v9, 0xCu);
    }

    v5 = [(HKSPStateMachineState *)self stateMachine];
    v6 = [(HKSPStateMachineState *)self stateMachine];
    v7 = [v6 disabledState];
    [v5 enterState:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stateDidExpire
{
  v2.receiver = self;
  v2.super_class = HDSPWakeDetectionNotifiedState;
  [(HDSPWakeDetectionStateMachineState *)&v2 updateState];
}

@end