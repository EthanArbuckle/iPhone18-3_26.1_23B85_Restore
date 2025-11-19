@interface HDSPGoodMorningAlertStateMachine
- (BOOL)goodMorningAlertEnabled;
- (BOOL)isAppleWatch;
- (BOOL)isOnCharger;
- (HDSPGoodMorningAlertStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (id)allStates;
- (unint64_t)sleepScheduleState;
- (void)sleepScheduleStateChangedToBedtime;
- (void)sleepScheduleStateChangedToWakeUp;
@end

@implementation HDSPGoodMorningAlertStateMachine

- (HDSPGoodMorningAlertStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7
{
  v33[3] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v33[2] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v19 = [v12 setWithArray:v18];

  v32.receiver = self;
  v32.super_class = HDSPGoodMorningAlertStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v32 initWithIdentifier:v17 allowedStates:v19 persistence:v16 delegate:v15 infoProvider:v14 currentDateProvider:v13];

  if (v20)
  {
    v21 = [(HKSPPersistentStateMachineState *)[HDSPGoodMorningAlertDisabledState alloc] initWithStateMachine:v20];
    disabledState = v20->_disabledState;
    v20->_disabledState = v21;

    v23 = [(HKSPPersistentStateMachineState *)[HDSPGoodMorningAlertWaitingState alloc] initWithStateMachine:v20];
    waitingState = v20->_waitingState;
    v20->_waitingState = v23;

    v25 = [(HKSPPersistentStateMachineState *)[HDSPGoodMorningAlertPresentingState alloc] initWithStateMachine:v20];
    presentingState = v20->_presentingState;
    v20->_presentingState = v25;

    v27 = [(HKSPPersistentStateMachine *)v20 persistedState];
    v28 = v27;
    if (!v27)
    {
      v28 = v20->_disabledState;
    }

    [(HKSPStateMachine *)v20 setInitialState:v28];

    v29 = v20;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)allStates
{
  v6[3] = *MEMORY[0x277D85DE8];
  waitingState = self->_waitingState;
  v6[0] = self->_disabledState;
  v6[1] = waitingState;
  v6[2] = self->_presentingState;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)sleepScheduleStateChangedToBedtime
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 sleepScheduleStateChangedToBedtime];
}

- (void)sleepScheduleStateChangedToWakeUp
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 sleepScheduleStateChangedToWakeUp];
}

- (NSDate)currentDate
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 currentDate];

  return v3;
}

- (BOOL)goodMorningAlertEnabled
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 goodMorningAlertEnabled];

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

- (BOOL)isAppleWatch
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 isAppleWatch];

  return v3;
}

- (BOOL)isOnCharger
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 isOnCharger];

  return v3;
}

@end