@interface HDSPSleepModeStateMachine
- (BOOL)hasSleepFocusMode;
- (BOOL)isAppleWatch;
- (BOOL)shouldGoIntoSleepModeDuringState:(unint64_t)a3;
- (BOOL)sleepFeaturesEnabled;
- (HDSPSleepModeStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (unint64_t)sleepScheduleState;
- (void)automationTurnedOffSleepModeWithReason:(unint64_t)a3;
- (void)automationTurnedOnSleepModeWithReason:(unint64_t)a3;
- (void)sleepModeDidChange:(int64_t)a3 previousMode:(int64_t)a4 reason:(unint64_t)a5;
- (void)sleepModeTurnedOffForUnknownReason;
- (void)sleepModeTurnedOnForUnknownReason;
- (void)sleepScheduleStateChangedToBedtime:(unint64_t)a3 fromState:(unint64_t)a4;
- (void)sleepScheduleStateChangedToDisabled;
- (void)sleepScheduleStateChangedToWakeUp:(unint64_t)a3 fromState:(unint64_t)a4;
- (void)sleepScheduleStateChangedToWindDown:(unint64_t)a3 fromState:(unint64_t)a4;
- (void)userTurnedOffSleepModeWithReason:(unint64_t)a3;
- (void)userTurnedOnSleepModeWithReason:(unint64_t)a3;
@end

@implementation HDSPSleepModeStateMachine

- (HDSPSleepModeStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7
{
  v41[7] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v41[2] = objc_opt_class();
  v41[3] = objc_opt_class();
  v41[4] = objc_opt_class();
  v41[5] = objc_opt_class();
  v41[6] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:7];
  v19 = [v12 setWithArray:v18];

  v40.receiver = self;
  v40.super_class = HDSPSleepModeStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v40 initWithIdentifier:v17 allowedStates:v19 persistence:v16 delegate:v15 infoProvider:v14 currentDateProvider:v13];

  if (v20)
  {
    v21 = [(HKSPPersistentStateMachineState *)[HDSPSleepModeOffState alloc] initWithStateMachine:v20];
    offState = v20->_offState;
    v20->_offState = v21;

    v23 = [(HKSPPersistentStateMachineState *)[HDSPSleepModeWindDownState alloc] initWithStateMachine:v20];
    windDownState = v20->_windDownState;
    v20->_windDownState = v23;

    v25 = [(HKSPPersistentStateMachineState *)[HDSPSleepModeManualOffState alloc] initWithStateMachine:v20];
    manualOffState = v20->_manualOffState;
    v20->_manualOffState = v25;

    v27 = [(HKSPPersistentStateMachineState *)[HDSPSleepModeBedtimeState alloc] initWithStateMachine:v20];
    bedtimeState = v20->_bedtimeState;
    v20->_bedtimeState = v27;

    v29 = [(HKSPPersistentStateMachineState *)[HDSPSleepModeManualOnState alloc] initWithStateMachine:v20];
    manualOnState = v20->_manualOnState;
    v20->_manualOnState = v29;

    v31 = [(HKSPPersistentStateMachineState *)[HDSPSleepModeAutomatedOnState alloc] initWithStateMachine:v20];
    automatedOnState = v20->_automatedOnState;
    v20->_automatedOnState = v31;

    v33 = [(HKSPPersistentStateMachineState *)[HDSPSleepModeAutomatedOffState alloc] initWithStateMachine:v20];
    automatedOffState = v20->_automatedOffState;
    v20->_automatedOffState = v33;

    v35 = [(HKSPPersistentStateMachine *)v20 persistedState];
    v36 = v35;
    if (!v35)
    {
      v36 = v20->_offState;
    }

    [(HKSPStateMachine *)v20 setInitialState:v36];

    v37 = v20;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)sleepScheduleStateChangedToWindDown:(unint64_t)a3 fromState:(unint64_t)a4
{
  v6 = [(HKSPStateMachine *)self currentState];
  [v6 sleepScheduleStateChangedToWindDown:a3 fromState:a4];
}

- (void)sleepScheduleStateChangedToBedtime:(unint64_t)a3 fromState:(unint64_t)a4
{
  v6 = [(HKSPStateMachine *)self currentState];
  [v6 sleepScheduleStateChangedToBedtime:a3 fromState:a4];
}

- (void)sleepScheduleStateChangedToWakeUp:(unint64_t)a3 fromState:(unint64_t)a4
{
  v6 = [(HKSPStateMachine *)self currentState];
  [v6 sleepScheduleStateChangedToWakeUp:a3 fromState:a4];
}

- (void)sleepScheduleStateChangedToDisabled
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 sleepScheduleStateChangedToDisabled];
}

- (void)userTurnedOffSleepModeWithReason:(unint64_t)a3
{
  v4 = [(HKSPStateMachine *)self currentState];
  [v4 userTurnedOffSleepModeWithReason:a3];
}

- (void)userTurnedOnSleepModeWithReason:(unint64_t)a3
{
  v4 = [(HKSPStateMachine *)self currentState];
  [v4 userTurnedOnSleepModeWithReason:a3];
}

- (void)automationTurnedOnSleepModeWithReason:(unint64_t)a3
{
  v4 = [(HKSPStateMachine *)self currentState];
  [v4 automationTurnedOnSleepModeWithReason:a3];
}

- (void)automationTurnedOffSleepModeWithReason:(unint64_t)a3
{
  v4 = [(HKSPStateMachine *)self currentState];
  [v4 automationTurnedOffSleepModeWithReason:a3];
}

- (void)sleepModeTurnedOnForUnknownReason
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 sleepModeTurnedOnForUnknownReason];
}

- (void)sleepModeTurnedOffForUnknownReason
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 sleepModeTurnedOffForUnknownReason];
}

- (void)sleepModeDidChange:(int64_t)a3 previousMode:(int64_t)a4 reason:(unint64_t)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__HDSPSleepModeStateMachine_sleepModeDidChange_previousMode_reason___block_invoke;
  v5[3] = &__block_descriptor_56_e45_v16__0___HDSPSleepModeStateMachineDelegate__8l;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  [(HKSPStateMachine *)self notifyDelegateWithBlock:v5];
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

- (BOOL)shouldGoIntoSleepModeDuringState:(unint64_t)a3
{
  v4 = [(HKSPStateMachine *)self infoProvider];
  LOBYTE(a3) = [v4 shouldGoIntoSleepModeDuringState:a3];

  return a3;
}

- (BOOL)hasSleepFocusMode
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 hasSleepFocusMode];

  return v3;
}

@end