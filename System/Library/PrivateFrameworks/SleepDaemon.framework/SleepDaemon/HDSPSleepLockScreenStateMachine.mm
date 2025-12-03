@interface HDSPSleepLockScreenStateMachine
- (BOOL)inUnscheduledSleepMode;
- (BOOL)isLockScreenActive;
- (HDSPSleepLockScreenStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (NSDate)currentDate;
- (id)allStates;
- (int64_t)sleepMode;
- (void)dismissAlertForGoodMorning;
- (void)presentAlertForGoodMorning;
- (void)sleepLockScreenStateDidChange:(int64_t)change previousState:(int64_t)state;
- (void)sleepModeDidChange:(int64_t)change reason:(unint64_t)reason;
@end

@implementation HDSPSleepLockScreenStateMachine

- (HDSPSleepLockScreenStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider
{
  v35[4] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  dateProviderCopy = dateProvider;
  providerCopy = provider;
  delegateCopy = delegate;
  persistenceCopy = persistence;
  identifierCopy = identifier;
  v35[0] = objc_opt_class();
  v35[1] = objc_opt_class();
  v35[2] = objc_opt_class();
  v35[3] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  v19 = [v12 setWithArray:v18];

  v34.receiver = self;
  v34.super_class = HDSPSleepLockScreenStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v34 initWithIdentifier:identifierCopy allowedStates:v19 persistence:persistenceCopy delegate:delegateCopy infoProvider:providerCopy currentDateProvider:dateProviderCopy];

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

    persistedState = [(HKSPPersistentStateMachine *)v20 persistedState];
    v30 = persistedState;
    if (!persistedState)
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
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState presentAlertForGoodMorning];
}

- (void)dismissAlertForGoodMorning
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState dismissAlertForGoodMorning];
}

- (void)sleepModeDidChange:(int64_t)change reason:(unint64_t)reason
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState sleepModeDidChange:change reason:reason];
}

- (void)sleepLockScreenStateDidChange:(int64_t)change previousState:(int64_t)state
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__HDSPSleepLockScreenStateMachine_sleepLockScreenStateDidChange_previousState___block_invoke;
  v4[3] = &__block_descriptor_48_e51_v16__0___HDSPSleepLockScreenStateMachineDelegate__8l;
  v4[4] = change;
  v4[5] = state;
  [(HKSPStateMachine *)self notifyDelegateWithBlock:v4];
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

- (int64_t)sleepMode
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  sleepMode = [infoProvider sleepMode];

  return sleepMode;
}

- (BOOL)inUnscheduledSleepMode
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  inUnscheduledSleepMode = [infoProvider inUnscheduledSleepMode];

  return inUnscheduledSleepMode;
}

- (BOOL)isLockScreenActive
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  isLockScreenActive = [infoProvider isLockScreenActive];

  return isLockScreenActive;
}

@end