@interface HDSPChargingReminderStateMachineState
- (BOOL)inMonitoringWindow;
- (BOOL)isChargingReminderDisabled;
- (void)updateState;
@end

@implementation HDSPChargingReminderStateMachineState

- (void)updateState
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  if ([(HDSPChargingReminderStateMachineState *)self isChargingReminderDisabled])
  {
    v4 = [v3 disabledState];
  }

  else if ([(HDSPChargingReminderStateMachineState *)self inMonitoringWindow])
  {
    v5 = HKSPLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 138543362;
      *&v9[4] = objc_opt_class();
      v6 = *&v9[4];
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] in monitoring window", v9, 0xCu);
    }

    v4 = [v3 monitoringState];
  }

  else
  {
    v4 = [v3 waitingState];
  }

  v7 = v4;
  [v3 enterState:{v4, *v9}];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isChargingReminderDisabled
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 infoProvider];
  v5 = [v4 sleepScheduleModel];
  if ([v5 chargingRemindersEnabledWithLogObject:self])
  {
    v6 = [v5 sleepSchedule];
    [v6 windDownTime];
    if (v7 >= 3600.0)
    {
      v8 = HKSPLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = objc_opt_class();
        v9 = v15;
        v10 = "[%{public}@] wind down time is greater than monitor window";
        goto LABEL_9;
      }
    }

    else
    {
      if (![v4 isCharging])
      {
        v11 = 0;
        goto LABEL_12;
      }

      v8 = HKSPLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = objc_opt_class();
        v9 = v15;
        v10 = "[%{public}@] currently charging";
LABEL_9:
        _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, v10, &v14, 0xCu);
      }
    }

    v11 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v11 = 1;
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)inMonitoringWindow
{
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  v4 = [v3 currentDate];
  v5 = [v3 monitoringWindowAfterDate:v4];
  v6 = [v3 currentDate];
  v7 = [v5 hksp_containsDate:v6];

  return v7;
}

@end