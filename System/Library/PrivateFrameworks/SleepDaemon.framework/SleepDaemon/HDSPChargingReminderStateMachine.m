@interface HDSPChargingReminderStateMachine
- (BOOL)isCharging;
- (BOOL)sleepFeaturesEnabled;
- (HDSPChargingReminderStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (id)allStates;
- (id)monitoringWindowAfterDate:(id)a3;
- (unint64_t)sleepScheduleState;
- (void)batteryLevelChanged:(float)a3;
@end

@implementation HDSPChargingReminderStateMachine

- (HDSPChargingReminderStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7
{
  v35[4] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v35[2] = objc_opt_class();
  v35[3] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  v19 = [v12 setWithArray:v18];

  v34.receiver = self;
  v34.super_class = HDSPChargingReminderStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v34 initWithIdentifier:v17 allowedStates:v19 persistence:v16 delegate:v15 infoProvider:v14 currentDateProvider:v13];

  if (v20)
  {
    v21 = [(HKSPPersistentStateMachineState *)[HDSPChargingReminderMonitoringState alloc] initWithStateMachine:v20];
    monitoringState = v20->_monitoringState;
    v20->_monitoringState = v21;

    v23 = [(HKSPPersistentStateMachineState *)[HDSPChargingReminderWaitingState alloc] initWithStateMachine:v20];
    waitingState = v20->_waitingState;
    v20->_waitingState = v23;

    v25 = [(HKSPPersistentStateMachineState *)[HDSPChargingReminderDisabledState alloc] initWithStateMachine:v20];
    disabledState = v20->_disabledState;
    v20->_disabledState = v25;

    v27 = [(HKSPPersistentStateMachineState *)[HDSPChargingReminderNotifiedState alloc] initWithStateMachine:v20];
    notifiedState = v20->_notifiedState;
    v20->_notifiedState = v27;

    v29 = [(HKSPPersistentStateMachine *)v20 persistedState];
    v30 = v29;
    if (!v29)
    {
      v30 = v20->_disabledState;
    }

    [(HKSPStateMachine *)v20 setInitialState:v30];

    v31 = v20;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)allStates
{
  v7[4] = *MEMORY[0x277D85DE8];
  waitingState = self->_waitingState;
  v7[0] = self->_monitoringState;
  v7[1] = waitingState;
  notifiedState = self->_notifiedState;
  v7[2] = self->_disabledState;
  v7[3] = notifiedState;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)batteryLevelChanged:(float)a3
{
  v5 = [(HKSPStateMachine *)self currentState];
  *&v4 = a3;
  [v5 batteryLevelChanged:v4];
}

- (NSDate)currentDate
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 currentDate];

  return v3;
}

- (BOOL)sleepFeaturesEnabled
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 sleepFeaturesEnabled];

  return v3;
}

- (id)monitoringWindowAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(HKSPStateMachine *)self infoProvider];
  v6 = [v5 monitoringWindowAfterDate:v4];

  return v6;
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 sleepScheduleModel];

  return v3;
}

- (unint64_t)sleepScheduleState
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 sleepScheduleState];

  return v3;
}

- (BOOL)isCharging
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 isCharging];

  return v3;
}

@end