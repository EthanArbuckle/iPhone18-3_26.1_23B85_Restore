@interface HDSPSleepWidgetStateMachine
- (BOOL)inUnscheduledSleepMode;
- (BOOL)isOnboarded;
- (HDSPSleepWidgetStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (id)allStates;
- (unint64_t)sleepScheduleState;
- (void)significantTimeChangeOccurred;
- (void)sleepScheduleModelDidChange:(id)a3;
- (void)sleepScheduleStateDidChange:(unint64_t)a3;
- (void)sleepWidgetStateDidChange:(int64_t)a3 previousState:(int64_t)a4;
@end

@implementation HDSPSleepWidgetStateMachine

- (HDSPSleepWidgetStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7
{
  v43[8] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v43[0] = objc_opt_class();
  v43[1] = objc_opt_class();
  v43[2] = objc_opt_class();
  v43[3] = objc_opt_class();
  v43[4] = objc_opt_class();
  v43[5] = objc_opt_class();
  v43[6] = objc_opt_class();
  v43[7] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:8];
  v19 = [v12 setWithArray:v18];

  v42.receiver = self;
  v42.super_class = HDSPSleepWidgetStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v42 initWithIdentifier:v17 allowedStates:v19 persistence:v16 delegate:v15 infoProvider:v14 currentDateProvider:v13];

  if (v20)
  {
    v21 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetDisabledState alloc] initWithStateMachine:v20];
    disabledState = v20->_disabledState;
    v20->_disabledState = v21;

    v23 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetWaitingState alloc] initWithStateMachine:v20];
    waitingState = v20->_waitingState;
    v20->_waitingState = v23;

    v25 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetUpcomingState alloc] initWithStateMachine:v20];
    upcomingState = v20->_upcomingState;
    v20->_upcomingState = v25;

    v27 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetWindDownState alloc] initWithStateMachine:v20];
    windDownState = v20->_windDownState;
    v20->_windDownState = v27;

    v29 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetBedtimeState alloc] initWithStateMachine:v20];
    bedtimeState = v20->_bedtimeState;
    v20->_bedtimeState = v29;

    v31 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetBedtimeInProgressState alloc] initWithStateMachine:v20];
    bedtimeInProgressState = v20->_bedtimeInProgressState;
    v20->_bedtimeInProgressState = v31;

    v33 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetGreetingState alloc] initWithStateMachine:v20];
    greetingState = v20->_greetingState;
    v20->_greetingState = v33;

    v35 = [(HKSPPersistentStateMachineState *)[HDSPSleepWidgetNotOnboardedState alloc] initWithStateMachine:v20];
    notOnboardedState = v20->_notOnboardedState;
    v20->_notOnboardedState = v35;

    v37 = [(HKSPPersistentStateMachine *)v20 persistedState];
    v38 = v37;
    if (!v37)
    {
      v38 = v20->_disabledState;
    }

    [(HKSPStateMachine *)v20 setInitialState:v38];

    v39 = v20;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)allStates
{
  v9[8] = *MEMORY[0x277D85DE8];
  waitingState = self->_waitingState;
  v9[0] = self->_disabledState;
  v9[1] = waitingState;
  windDownState = self->_windDownState;
  v9[2] = self->_upcomingState;
  v9[3] = windDownState;
  bedtimeInProgressState = self->_bedtimeInProgressState;
  v9[4] = self->_bedtimeState;
  v9[5] = bedtimeInProgressState;
  notOnboardedState = self->_notOnboardedState;
  v9[6] = self->_greetingState;
  v9[7] = notOnboardedState;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:8];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)sleepScheduleStateDidChange:(unint64_t)a3
{
  v4 = [(HKSPStateMachine *)self currentState];
  [v4 sleepScheduleStateDidChange:a3];
}

- (void)sleepScheduleModelDidChange:(id)a3
{
  v4 = a3;
  v5 = [(HKSPStateMachine *)self currentState];
  [v5 sleepScheduleModelDidChange:v4];
}

- (void)significantTimeChangeOccurred
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 significantTimeChangeOccurred];
}

- (void)sleepWidgetStateDidChange:(int64_t)a3 previousState:(int64_t)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__HDSPSleepWidgetStateMachine_sleepWidgetStateDidChange_previousState___block_invoke;
  v4[3] = &__block_descriptor_48_e47_v16__0___HDSPSleepWidgetStateMachineDelegate__8l;
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

- (unint64_t)sleepScheduleState
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 sleepScheduleState];

  return v3;
}

- (BOOL)inUnscheduledSleepMode
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 inUnscheduledSleepMode];

  return v3;
}

- (BOOL)isOnboarded
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 isOnboarded];

  return v3;
}

@end