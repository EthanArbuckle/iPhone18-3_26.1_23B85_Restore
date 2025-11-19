@interface HDSPChargingReminderMonitoringState
- (id)expirationDate;
- (void)batteryLevelChanged:(float)a3;
- (void)didEnter;
- (void)didExit;
@end

@implementation HDSPChargingReminderMonitoringState

- (id)expirationDate
{
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];

  v4 = [v3 currentDate];
  v5 = [v3 monitoringWindowAfterDate:v4];
  v6 = [v5 endDate];

  return v6;
}

- (void)didEnter
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentContext];
  v5 = [v4 hasStateTransitionOrInitializing];

  if (v5)
  {
    v6 = [(HKSPStateMachineState *)self stateMachine];
    [v6 startBatteryMonitoring];
  }
}

- (void)didExit
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentContext];
  v5 = [v4 hasStateTransitionOrInitializing];

  if (v5)
  {
    v6 = [(HKSPStateMachineState *)self stateMachine];
    [v6 stopBatteryMonitoring];
  }
}

- (void)batteryLevelChanged:(float)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = objc_opt_class();
    v16 = 2048;
    v17 = a3;
    v6 = v15;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] batteryLevelChanged: %f", &v14, 0x16u);
  }

  v7 = HKSPLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a3 < 0.3)
  {
    if (v8)
    {
      v9 = objc_opt_class();
      v14 = 138543362;
      v15 = v9;
      v10 = v9;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] we should charge", &v14, 0xCu);
    }

    v7 = [(HKSPStateMachineState *)self stateMachine];
    v11 = [v7 notifiedState];
    [v7 enterState:v11];
    goto LABEL_9;
  }

  if (v8)
  {
    v12 = objc_opt_class();
    v14 = 138543362;
    v15 = v12;
    v11 = v12;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] we don't need to charge yet", &v14, 0xCu);
LABEL_9:
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end