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
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  currentDate = [infoProvider currentDate];
  sleepScheduleModel = [infoProvider sleepScheduleModel];
  currentDate2 = [infoProvider currentDate];
  v8 = [sleepScheduleModel nextEventDueAfterDate:currentDate2];

  lifetimeInterval = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  endDate = [lifetimeInterval endDate];

  if (endDate && ([v8 dueDate], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hksp_isAfterDate:", endDate), v11, v12))
  {
    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = objc_opt_class();
      v14 = v20;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] wakeup has changed to be later, treating state as expired", &v19, 0xCu);
    }

    dueDate = currentDate;
  }

  else
  {
    dueDate = [v8 dueDate];
  }

  v16 = dueDate;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)didEnter
{
  v13 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];

  if ([currentContext hasStateTransitionOrInitializing])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [currentContext type]) != 0)
    {
      v6 = v5;
      stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
      [stateMachine2 postWakeDetectionNotification:v6];
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

    stateMachine = [(HKSPStateMachineState *)self stateMachine];
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    disabledState = [stateMachine2 disabledState];
    [stateMachine enterState:disabledState];
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