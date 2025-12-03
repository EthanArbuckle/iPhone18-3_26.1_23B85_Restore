@interface HDSPSleepScheduleStateCoordinatorStateMachine
- (BOOL)isAppleWatch;
- (BOOL)sleepFeaturesEnabled;
- (HDSPSleepScheduleStateCoordinatorStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (HKSPSleepScheduleOccurrence)previousOccurrence;
- (NSDate)currentDate;
- (void)alarmDismissed;
- (void)bedtimeReached;
- (void)scheduleModelChanged:(id)changed;
- (void)significantTimeChange;
- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state context:(id)context;
- (void)timeZoneChange;
- (void)wakeTimeReached;
- (void)windDownReached;
@end

@implementation HDSPSleepScheduleStateCoordinatorStateMachine

- (HDSPSleepScheduleStateCoordinatorStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider
{
  v39[6] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  dateProviderCopy = dateProvider;
  providerCopy = provider;
  delegateCopy = delegate;
  persistenceCopy = persistence;
  identifierCopy = identifier;
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
  v20 = [(HKSPPersistentStateMachine *)&v38 initWithIdentifier:identifierCopy allowedStates:v19 persistence:persistenceCopy delegate:delegateCopy infoProvider:providerCopy currentDateProvider:dateProviderCopy];

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

    persistedState = [(HKSPPersistentStateMachine *)v20 persistedState];
    v34 = persistedState;
    if (!persistedState)
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
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState windDownReached];
}

- (void)bedtimeReached
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState bedtimeReached];
}

- (void)wakeTimeReached
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState wakeTimeReached];
}

- (void)alarmDismissed
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState alarmDismissed];
}

- (void)significantTimeChange
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState significantTimeChange];
}

- (void)timeZoneChange
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState timeZoneChange];
}

- (void)scheduleModelChanged:(id)changed
{
  changedCopy = changed;
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState scheduleModelChanged:changedCopy];
}

- (void)sleepScheduleStateDidChange:(unint64_t)change previousState:(unint64_t)state context:(id)context
{
  contextCopy = context;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__HDSPSleepScheduleStateCoordinatorStateMachine_sleepScheduleStateDidChange_previousState_context___block_invoke;
  v10[3] = &unk_279C7CEC8;
  changeCopy = change;
  stateCopy = state;
  v11 = contextCopy;
  v9 = contextCopy;
  [(HKSPStateMachine *)self notifyDelegateWithBlock:v10];
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

- (HKSPSleepScheduleModel)sleepScheduleModel
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  sleepScheduleModel = [infoProvider sleepScheduleModel];

  return sleepScheduleModel;
}

- (HKSPSleepScheduleOccurrence)previousOccurrence
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  previousOccurrence = [infoProvider previousOccurrence];

  return previousOccurrence;
}

- (NSDate)currentDate
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  currentDate = [infoProvider currentDate];

  return currentDate;
}

@end