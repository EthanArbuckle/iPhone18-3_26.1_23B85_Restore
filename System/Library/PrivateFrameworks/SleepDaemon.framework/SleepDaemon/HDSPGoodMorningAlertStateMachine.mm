@interface HDSPGoodMorningAlertStateMachine
- (BOOL)goodMorningAlertEnabled;
- (BOOL)isAppleWatch;
- (BOOL)isOnCharger;
- (HDSPGoodMorningAlertStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (id)allStates;
- (unint64_t)sleepScheduleState;
- (void)sleepScheduleStateChangedToBedtime;
- (void)sleepScheduleStateChangedToWakeUp;
@end

@implementation HDSPGoodMorningAlertStateMachine

- (HDSPGoodMorningAlertStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider
{
  v33[3] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  dateProviderCopy = dateProvider;
  providerCopy = provider;
  delegateCopy = delegate;
  persistenceCopy = persistence;
  identifierCopy = identifier;
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v33[2] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v19 = [v12 setWithArray:v18];

  v32.receiver = self;
  v32.super_class = HDSPGoodMorningAlertStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v32 initWithIdentifier:identifierCopy allowedStates:v19 persistence:persistenceCopy delegate:delegateCopy infoProvider:providerCopy currentDateProvider:dateProviderCopy];

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

    persistedState = [(HKSPPersistentStateMachine *)v20 persistedState];
    v28 = persistedState;
    if (!persistedState)
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
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState sleepScheduleStateChangedToBedtime];
}

- (void)sleepScheduleStateChangedToWakeUp
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState sleepScheduleStateChangedToWakeUp];
}

- (NSDate)currentDate
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  currentDate = [infoProvider currentDate];

  return currentDate;
}

- (BOOL)goodMorningAlertEnabled
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  goodMorningAlertEnabled = [infoProvider goodMorningAlertEnabled];

  return goodMorningAlertEnabled;
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

- (BOOL)isOnCharger
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  isOnCharger = [infoProvider isOnCharger];

  return isOnCharger;
}

@end