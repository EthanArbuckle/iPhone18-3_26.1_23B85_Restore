@interface HDSPSleepModeStateMachine
- (BOOL)hasSleepFocusMode;
- (BOOL)isAppleWatch;
- (BOOL)shouldGoIntoSleepModeDuringState:(unint64_t)state;
- (BOOL)sleepFeaturesEnabled;
- (HDSPSleepModeStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (unint64_t)sleepScheduleState;
- (void)automationTurnedOffSleepModeWithReason:(unint64_t)reason;
- (void)automationTurnedOnSleepModeWithReason:(unint64_t)reason;
- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason;
- (void)sleepModeTurnedOffForUnknownReason;
- (void)sleepModeTurnedOnForUnknownReason;
- (void)sleepScheduleStateChangedToBedtime:(unint64_t)bedtime fromState:(unint64_t)state;
- (void)sleepScheduleStateChangedToDisabled;
- (void)sleepScheduleStateChangedToWakeUp:(unint64_t)up fromState:(unint64_t)state;
- (void)sleepScheduleStateChangedToWindDown:(unint64_t)down fromState:(unint64_t)state;
- (void)userTurnedOffSleepModeWithReason:(unint64_t)reason;
- (void)userTurnedOnSleepModeWithReason:(unint64_t)reason;
@end

@implementation HDSPSleepModeStateMachine

- (HDSPSleepModeStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider
{
  v41[7] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  dateProviderCopy = dateProvider;
  providerCopy = provider;
  delegateCopy = delegate;
  persistenceCopy = persistence;
  identifierCopy = identifier;
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
  v20 = [(HKSPPersistentStateMachine *)&v40 initWithIdentifier:identifierCopy allowedStates:v19 persistence:persistenceCopy delegate:delegateCopy infoProvider:providerCopy currentDateProvider:dateProviderCopy];

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

    persistedState = [(HKSPPersistentStateMachine *)v20 persistedState];
    v36 = persistedState;
    if (!persistedState)
    {
      v36 = v20->_offState;
    }

    [(HKSPStateMachine *)v20 setInitialState:v36];

    v37 = v20;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)sleepScheduleStateChangedToWindDown:(unint64_t)down fromState:(unint64_t)state
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState sleepScheduleStateChangedToWindDown:down fromState:state];
}

- (void)sleepScheduleStateChangedToBedtime:(unint64_t)bedtime fromState:(unint64_t)state
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState sleepScheduleStateChangedToBedtime:bedtime fromState:state];
}

- (void)sleepScheduleStateChangedToWakeUp:(unint64_t)up fromState:(unint64_t)state
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState sleepScheduleStateChangedToWakeUp:up fromState:state];
}

- (void)sleepScheduleStateChangedToDisabled
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState sleepScheduleStateChangedToDisabled];
}

- (void)userTurnedOffSleepModeWithReason:(unint64_t)reason
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState userTurnedOffSleepModeWithReason:reason];
}

- (void)userTurnedOnSleepModeWithReason:(unint64_t)reason
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState userTurnedOnSleepModeWithReason:reason];
}

- (void)automationTurnedOnSleepModeWithReason:(unint64_t)reason
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState automationTurnedOnSleepModeWithReason:reason];
}

- (void)automationTurnedOffSleepModeWithReason:(unint64_t)reason
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState automationTurnedOffSleepModeWithReason:reason];
}

- (void)sleepModeTurnedOnForUnknownReason
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState sleepModeTurnedOnForUnknownReason];
}

- (void)sleepModeTurnedOffForUnknownReason
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState sleepModeTurnedOffForUnknownReason];
}

- (void)sleepModeDidChange:(int64_t)change previousMode:(int64_t)mode reason:(unint64_t)reason
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__HDSPSleepModeStateMachine_sleepModeDidChange_previousMode_reason___block_invoke;
  v5[3] = &__block_descriptor_56_e45_v16__0___HDSPSleepModeStateMachineDelegate__8l;
  v5[4] = change;
  v5[5] = mode;
  v5[6] = reason;
  [(HKSPStateMachine *)self notifyDelegateWithBlock:v5];
}

- (NSDate)currentDate
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  currentDate = [infoProvider currentDate];

  return currentDate;
}

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  sleepScheduleModel = [infoProvider sleepScheduleModel];

  return sleepScheduleModel;
}

- (unint64_t)sleepScheduleState
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  sleepScheduleState = [infoProvider sleepScheduleState];

  return sleepScheduleState;
}

- (BOOL)isAppleWatch
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  isAppleWatch = [infoProvider isAppleWatch];

  return isAppleWatch;
}

- (BOOL)sleepFeaturesEnabled
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  sleepFeaturesEnabled = [infoProvider sleepFeaturesEnabled];

  return sleepFeaturesEnabled;
}

- (BOOL)shouldGoIntoSleepModeDuringState:(unint64_t)state
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  LOBYTE(state) = [infoProvider shouldGoIntoSleepModeDuringState:state];

  return state;
}

- (BOOL)hasSleepFocusMode
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  hasSleepFocusMode = [infoProvider hasSleepFocusMode];

  return hasSleepFocusMode;
}

@end