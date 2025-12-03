@interface HDSPChargingReminderNotifiedState
- (id)expirationDate;
- (void)didEnter;
- (void)stateDidExpire;
- (void)updateState;
@end

@implementation HDSPChargingReminderNotifiedState

- (id)expirationDate
{
  v18 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  currentDate = [infoProvider currentDate];
  sleepScheduleModel = [infoProvider sleepScheduleModel];
  v7 = [sleepScheduleModel nextEventWithIdentifier:*MEMORY[0x277D621B8] dueAfterDate:currentDate];

  lifetimeInterval = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  endDate = [lifetimeInterval endDate];

  v10 = v7;
  if (endDate)
  {
    v10 = v7;
    if ([v7 hksp_isAfterDate:endDate])
    {
      v11 = HKSPLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = objc_opt_class();
        v12 = v17;
        _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] bedtime has changed to be later, treating state as expired", &v16, 0xCu);
      }

      v10 = currentDate;
    }
  }

  v13 = v10;

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

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
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending notification", &v10, 0xCu);
    }

    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 postChargingReminderNotification];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateState
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(HDSPChargingReminderStateMachineState *)self isChargingReminderDisabled])
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v4 = v10;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] charging reminders disabled after notifying", &v9, 0xCu);
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
  v2.super_class = HDSPChargingReminderNotifiedState;
  [(HDSPChargingReminderStateMachineState *)&v2 updateState];
}

@end