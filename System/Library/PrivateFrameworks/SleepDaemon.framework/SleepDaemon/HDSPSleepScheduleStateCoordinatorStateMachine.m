@interface HDSPSleepScheduleStateCoordinatorStateMachine
- (BOOL)isAppleWatch;
- (BOOL)sleepFeaturesEnabled;
- (HDSPSleepScheduleStateCoordinatorStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (HKSPSleepScheduleOccurrence)previousOccurrence;
- (NSDate)currentDate;
- (void)alarmDismissed;
- (void)bedtimeReached;
- (void)scheduleModelChanged:(id)a3;
- (void)significantTimeChange;
- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 context:(id)a5;
- (void)timeZoneChange;
- (void)wakeTimeReached;
- (void)windDownReached;
@end

@implementation HDSPSleepScheduleStateCoordinatorStateMachine

- (HDSPSleepScheduleStateCoordinatorStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7
{
  v39[6] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v39[2] = objc_opt_class();
  v39[3] = objc_opt_class();
  v39[4] = objc_opt_class();
  v39[5] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:6];
  v19 = [v12 setWithArray:v18];

  v38.receiver = self;
  v38.super_class = HDSPSleepScheduleStateCoordinatorStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v38 initWithIdentifier:v17 allowedStates:v19 persistence:v16 delegate:v15 infoProvider:v14 currentDateProvider:v13];

  if (v20)
  {
    v21 = [(HKSPPersistentStateMachineState *)[HDSPSleepScheduleStateCoordinatorDisabledState alloc] initWithStateMachine:v20];
    disabledState = v20->_disabledState;
    v20->_disabledState = v21;

    v23 = [(HKSPPersistentStateMachineState *)[HDSPSleepScheduleStateCoordinatorWakeUpState alloc] initWithStateMachine:v20];
    wakeUpState = v20->_wakeUpState;
    v20->_wakeUpState = v23;

    v25 = [(HKSPPersistentStateMachineState *)[HDSPSleepScheduleStateCoordinatorBedtimeState alloc] initWithStateMachine:v20];
    bedtimeState = v20->_bedtimeState;
    v20->_bedtimeState = v25;

    v27 = [(HKSPPersistentStateMachineState *)[HDSPSleepScheduleStateCoordinatorWindDownState alloc] initWithStateMachine:v20];
    windDownState = v20->_windDownState;
    v20->_windDownState = v27;

    v29 = [(HKSPPersistentStateMachineState *)[HDSPSleepScheduleStateCoordinatorDelayedWakeUpState alloc] initWithStateMachine:v20];
    delayedWakeUpState = v20->_delayedWakeUpState;
    v20->_delayedWakeUpState = v29;

    v31 = [(HKSPPersistentStateMachineState *)[HDSPSleepScheduleStateCoordinatorInitialState alloc] initWithStateMachine:v20];
    initialState = v20->_initialState;
    v20->_initialState = v31;

    v33 = [(HKSPPersistentStateMachine *)v20 persistedState];
    v34 = v33;
    if (!v33)
    {
      v34 = v20->_initialState;
    }

    [(HKSPStateMachine *)v20 setInitialState:v34];

    v35 = v20;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)windDownReached
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 windDownReached];
}

- (void)bedtimeReached
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 bedtimeReached];
}

- (void)wakeTimeReached
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 wakeTimeReached];
}

- (void)alarmDismissed
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 alarmDismissed];
}

- (void)significantTimeChange
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 significantTimeChange];
}

- (void)timeZoneChange
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 timeZoneChange];
}

- (void)scheduleModelChanged:(id)a3
{
  v4 = a3;
  v5 = [(HKSPStateMachine *)self currentState];
  [v5 scheduleModelChanged:v4];
}

- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 context:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__HDSPSleepScheduleStateCoordinatorStateMachine_sleepScheduleStateDidChange_previousState_context___block_invoke;
  v10[3] = &unk_279C7CEC8;
  v12 = a3;
  v13 = a4;
  v11 = v8;
  v9 = v8;
  [(HKSPStateMachine *)self notifyDelegateWithBlock:v10];
}

- (BOOL)isAppleWatch
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 isAppleWatch];

  return v3;
}

- (BOOL)sleepFeaturesEnabled
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 sleepFeaturesEnabled];

  return v3;
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 sleepScheduleModel];

  return v3;
}

- (HKSPSleepScheduleOccurrence)previousOccurrence
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 previousOccurrence];

  return v3;
}

- (NSDate)currentDate
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 currentDate];

  return v3;
}

@end