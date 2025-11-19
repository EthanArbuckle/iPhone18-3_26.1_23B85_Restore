@interface HDSPSleepLockScreenStateMachine
- (BOOL)inUnscheduledSleepMode;
- (BOOL)isLockScreenActive;
- (HDSPSleepLockScreenStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (id)allStates;
- (int64_t)sleepMode;
- (void)dismissAlertForGoodMorning;
- (void)presentAlertForGoodMorning;
- (void)sleepLockScreenStateDidChange:(int64_t)a3 previousState:(int64_t)a4;
- (void)sleepModeDidChange:(int64_t)a3 reason:(unint64_t)a4;
@end

@implementation HDSPSleepLockScreenStateMachine

- (HDSPSleepLockScreenStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7
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
  v34.super_class = HDSPSleepLockScreenStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v34 initWithIdentifier:v17 allowedStates:v19 persistence:v16 delegate:v15 infoProvider:v14 currentDateProvider:v13];

  if (v20)
  {
    v21 = [(HKSPPersistentStateMachineState *)[HDSPSleepLockScreenOffState alloc] initWithStateMachine:v20];
    offState = v20->_offState;
    v20->_offState = v21;

    v23 = [(HKSPPersistentStateMachineState *)[HDSPSleepLockScreenWindDownState alloc] initWithStateMachine:v20];
    windDownState = v20->_windDownState;
    v20->_windDownState = v23;

    v25 = [(HKSPPersistentStateMachineState *)[HDSPSleepLockScreenBedtimeState alloc] initWithStateMachine:v20];
    bedtimeState = v20->_bedtimeState;
    v20->_bedtimeState = v25;

    v27 = [(HKSPPersistentStateMachineState *)[HDSPSleepLockScreenGreetingState alloc] initWithStateMachine:v20];
    greetingState = v20->_greetingState;
    v20->_greetingState = v27;

    v29 = [(HKSPPersistentStateMachine *)v20 persistedState];
    v30 = v29;
    if (!v29)
    {
      v30 = v20->_offState;
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
  windDownState = self->_windDownState;
  v7[0] = self->_offState;
  v7[1] = windDownState;
  greetingState = self->_greetingState;
  v7[2] = self->_bedtimeState;
  v7[3] = greetingState;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)presentAlertForGoodMorning
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 presentAlertForGoodMorning];
}

- (void)dismissAlertForGoodMorning
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 dismissAlertForGoodMorning];
}

- (void)sleepModeDidChange:(int64_t)a3 reason:(unint64_t)a4
{
  v6 = [(HKSPStateMachine *)self currentState];
  [v6 sleepModeDidChange:a3 reason:a4];
}

- (void)sleepLockScreenStateDidChange:(int64_t)a3 previousState:(int64_t)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__HDSPSleepLockScreenStateMachine_sleepLockScreenStateDidChange_previousState___block_invoke;
  v4[3] = &__block_descriptor_48_e51_v16__0___HDSPSleepLockScreenStateMachineDelegate__8l;
  v4[4] = a3;
  v4[5] = a4;
  [(HKSPStateMachine *)self notifyDelegateWithBlock:v4];
}

- (NSDate)currentDate
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 currentDate];

  return v3;
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 sleepScheduleModel];

  return v3;
}

- (int64_t)sleepMode
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 sleepMode];

  return v3;
}

- (BOOL)inUnscheduledSleepMode
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 inUnscheduledSleepMode];

  return v3;
}

- (BOOL)isLockScreenActive
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 isLockScreenActive];

  return v3;
}

@end