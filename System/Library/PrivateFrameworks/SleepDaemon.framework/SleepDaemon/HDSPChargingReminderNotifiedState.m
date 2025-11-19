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
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 infoProvider];

  v5 = [v4 currentDate];
  v6 = [v4 sleepScheduleModel];
  v7 = [v6 nextEventWithIdentifier:*MEMORY[0x277D621B8] dueAfterDate:v5];

  v8 = [(HKSPPersistentStateMachineState *)self lifetimeInterval];
  v9 = [v8 endDate];

  v10 = v7;
  if (v9)
  {
    v10 = v7;
    if ([v7 hksp_isAfterDate:v9])
    {
      v11 = HKSPLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = objc_opt_class();
        v12 = v17;
        _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] bedtime has changed to be later, treating state as expired", &v16, 0xCu);
      }

      v10 = v5;
    }
  }

  v13 = v10;

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

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
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Sending notification", &v10, 0xCu);
    }

    v8 = [(HKSPStateMachineState *)self stateMachine];
    [v8 postChargingReminderNotification];
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
  v2.super_class = HDSPChargingReminderNotifiedState;
  [(HDSPChargingReminderStateMachineState *)&v2 updateState];
}

@end