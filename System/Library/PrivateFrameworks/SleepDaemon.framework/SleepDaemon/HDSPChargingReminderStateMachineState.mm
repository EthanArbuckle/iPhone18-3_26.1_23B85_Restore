@interface HDSPChargingReminderStateMachineState
- (BOOL)inMonitoringWindow;
- (BOOL)isChargingReminderDisabled;
- (void)updateState;
@end

@implementation HDSPChargingReminderStateMachineState

- (void)updateState
{
  v10 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  if ([(HDSPChargingReminderStateMachineState *)self isChargingReminderDisabled])
  {
    disabledState = [stateMachine disabledState];
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

    disabledState = [stateMachine monitoringState];
  }

  else
  {
    disabledState = [stateMachine waitingState];
  }

  v7 = disabledState;
  [stateMachine enterState:{disabledState, *v9}];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isChargingReminderDisabled
{
  v16 = *MEMORY[0x277D85DE8];
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  sleepScheduleModel = [infoProvider sleepScheduleModel];
  if ([sleepScheduleModel chargingRemindersEnabledWithLogObject:self])
  {
    sleepSchedule = [sleepScheduleModel sleepSchedule];
    [sleepSchedule windDownTime];
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
      if (![infoProvider isCharging])
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
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  currentDate = [infoProvider currentDate];
  v5 = [infoProvider monitoringWindowAfterDate:currentDate];
  currentDate2 = [infoProvider currentDate];
  v7 = [v5 hksp_containsDate:currentDate2];

  return v7;
}

@end