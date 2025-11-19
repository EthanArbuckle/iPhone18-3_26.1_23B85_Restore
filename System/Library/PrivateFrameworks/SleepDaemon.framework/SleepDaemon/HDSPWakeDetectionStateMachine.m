@interface HDSPWakeDetectionStateMachine
- (BOOL)isWatch;
- (BOOL)sleepModeIsOff;
- (HDSPWakeDetectionStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (HKSPSleepScheduleOccurrence)relevantOccurrence;
- (NSDate)currentDate;
- (NSDate)nextWakeUp;
- (NSDate)upcomingStartDetection;
- (id)allStates;
- (id)detectionWindowForType:(unint64_t)a3;
- (unint64_t)activeTypes;
- (unint64_t)sleepScheduleState;
- (void)earlyWakeUpWasNotifiedRemotely;
- (void)postWakeDetectionNotification:(unint64_t)a3;
- (void)startWakeDetection:(unint64_t)a3;
- (void)wakeupEventDetected:(unint64_t)a3 date:(id)a4;
@end

@implementation HDSPWakeDetectionStateMachine

- (HDSPWakeDetectionStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7
{
  v37[5] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v37[2] = objc_opt_class();
  v37[3] = objc_opt_class();
  v37[4] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:5];
  v19 = [v12 setWithArray:v18];

  v36.receiver = self;
  v36.super_class = HDSPWakeDetectionStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v36 initWithIdentifier:v17 allowedStates:v19 persistence:v16 delegate:v15 infoProvider:v14 currentDateProvider:v13];

  if (v20)
  {
    v21 = [(HKSPPersistentStateMachineState *)[HDSPWakeDetectionDisabledState alloc] initWithStateMachine:v20];
    disabledState = v20->_disabledState;
    v20->_disabledState = v21;

    v23 = [(HKSPPersistentStateMachineState *)[HDSPWakeDetectionWaitingState alloc] initWithStateMachine:v20];
    waitingState = v20->_waitingState;
    v20->_waitingState = v23;

    v25 = [(HKSPPersistentStateMachineState *)[HDSPWakeDetectionExplicitDetectingState alloc] initWithStateMachine:v20];
    explicitDetectingState = v20->_explicitDetectingState;
    v20->_explicitDetectingState = v25;

    v27 = [(HKSPPersistentStateMachineState *)[HDSPWakeDetectionActivityDetectingState alloc] initWithStateMachine:v20];
    activityDetectingState = v20->_activityDetectingState;
    v20->_activityDetectingState = v27;

    v29 = [(HKSPPersistentStateMachineState *)[HDSPWakeDetectionNotifiedState alloc] initWithStateMachine:v20];
    notifiedState = v20->_notifiedState;
    v20->_notifiedState = v29;

    v31 = [(HKSPPersistentStateMachine *)v20 persistedState];
    v32 = v31;
    if (!v31)
    {
      v32 = v20->_disabledState;
    }

    [(HKSPStateMachine *)v20 setInitialState:v32];

    v33 = v20;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)allStates
{
  v7[5] = *MEMORY[0x277D85DE8];
  waitingState = self->_waitingState;
  v7[0] = self->_disabledState;
  v7[1] = waitingState;
  activityDetectingState = self->_activityDetectingState;
  v7[2] = self->_explicitDetectingState;
  v7[3] = activityDetectingState;
  v7[4] = self->_notifiedState;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)wakeupEventDetected:(unint64_t)a3 date:(id)a4
{
  v6 = a4;
  v7 = [(HKSPStateMachine *)self currentState];
  [v7 wakeupEventDetected:a3 date:v6];
}

- (void)earlyWakeUpWasNotifiedRemotely
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 earlyWakeUpWasNotifiedRemotely];
}

- (void)startWakeDetection:(unint64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__HDSPWakeDetectionStateMachine_startWakeDetection___block_invoke;
  v3[3] = &__block_descriptor_40_e49_v16__0___HDSPWakeDetectionStateMachineDelegate__8l;
  v3[4] = a3;
  [(HKSPStateMachine *)self notifyDelegateWithBlock:v3];
}

- (void)postWakeDetectionNotification:(unint64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__HDSPWakeDetectionStateMachine_postWakeDetectionNotification___block_invoke;
  v3[3] = &__block_descriptor_40_e49_v16__0___HDSPWakeDetectionStateMachineDelegate__8l;
  v3[4] = a3;
  [(HKSPStateMachine *)self notifyDelegateWithBlock:v3];
}

- (NSDate)currentDate
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 currentDate];

  return v3;
}

- (HKSPSleepScheduleOccurrence)relevantOccurrence
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 relevantOccurrence];

  return v3;
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

- (BOOL)sleepModeIsOff
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 sleepModeIsOff];

  return v3;
}

- (BOOL)isWatch
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 isWatch];

  return v3;
}

- (unint64_t)activeTypes
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 activeTypes];

  return v3;
}

- (NSDate)nextWakeUp
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 nextWakeUp];

  return v3;
}

- (NSDate)upcomingStartDetection
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 upcomingStartDetection];

  return v3;
}

- (id)detectionWindowForType:(unint64_t)a3
{
  v4 = [(HKSPStateMachine *)self infoProvider];
  v5 = [v4 detectionWindowForType:a3];

  return v5;
}

@end