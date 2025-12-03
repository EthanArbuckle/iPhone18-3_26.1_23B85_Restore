@interface HDSPWakeDetectionStateMachine
- (BOOL)isWatch;
- (BOOL)sleepModeIsOff;
- (HDSPWakeDetectionStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider;
- (HKSPSleepScheduleModel)sleepScheduleModel;
- (HKSPSleepScheduleOccurrence)relevantOccurrence;
- (NSDate)currentDate;
- (NSDate)nextWakeUp;
- (NSDate)upcomingStartDetection;
- (id)allStates;
- (id)detectionWindowForType:(unint64_t)type;
- (unint64_t)activeTypes;
- (unint64_t)sleepScheduleState;
- (void)earlyWakeUpWasNotifiedRemotely;
- (void)postWakeDetectionNotification:(unint64_t)notification;
- (void)startWakeDetection:(unint64_t)detection;
- (void)wakeupEventDetected:(unint64_t)detected date:(id)date;
@end

@implementation HDSPWakeDetectionStateMachine

- (HDSPWakeDetectionStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider
{
  v37[5] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277CBEB98];
  dateProviderCopy = dateProvider;
  providerCopy = provider;
  delegateCopy = delegate;
  persistenceCopy = persistence;
  identifierCopy = identifier;
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v37[2] = objc_opt_class();
  v37[3] = objc_opt_class();
  v37[4] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:5];
  v19 = [v12 setWithArray:v18];

  v36.receiver = self;
  v36.super_class = HDSPWakeDetectionStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v36 initWithIdentifier:identifierCopy allowedStates:v19 persistence:persistenceCopy delegate:delegateCopy infoProvider:providerCopy currentDateProvider:dateProviderCopy];

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

    persistedState = [(HKSPPersistentStateMachine *)v20 persistedState];
    v32 = persistedState;
    if (!persistedState)
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

- (void)wakeupEventDetected:(unint64_t)detected date:(id)date
{
  dateCopy = date;
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState wakeupEventDetected:detected date:dateCopy];
}

- (void)earlyWakeUpWasNotifiedRemotely
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState earlyWakeUpWasNotifiedRemotely];
}

- (void)startWakeDetection:(unint64_t)detection
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__HDSPWakeDetectionStateMachine_startWakeDetection___block_invoke;
  v3[3] = &__block_descriptor_40_e49_v16__0___HDSPWakeDetectionStateMachineDelegate__8l;
  v3[4] = detection;
  [(HKSPStateMachine *)self notifyDelegateWithBlock:v3];
}

- (void)postWakeDetectionNotification:(unint64_t)notification
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__HDSPWakeDetectionStateMachine_postWakeDetectionNotification___block_invoke;
  v3[3] = &__block_descriptor_40_e49_v16__0___HDSPWakeDetectionStateMachineDelegate__8l;
  v3[4] = notification;
  [(HKSPStateMachine *)self notifyDelegateWithBlock:v3];
}

- (NSDate)currentDate
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  currentDate = [infoProvider currentDate];

  return currentDate;
}

- (HKSPSleepScheduleOccurrence)relevantOccurrence
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  relevantOccurrence = [infoProvider relevantOccurrence];

  return relevantOccurrence;
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

- (BOOL)sleepModeIsOff
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  sleepModeIsOff = [infoProvider sleepModeIsOff];

  return sleepModeIsOff;
}

- (BOOL)isWatch
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  isWatch = [infoProvider isWatch];

  return isWatch;
}

- (unint64_t)activeTypes
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  activeTypes = [infoProvider activeTypes];

  return activeTypes;
}

- (NSDate)nextWakeUp
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  nextWakeUp = [infoProvider nextWakeUp];

  return nextWakeUp;
}

- (NSDate)upcomingStartDetection
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  upcomingStartDetection = [infoProvider upcomingStartDetection];

  return upcomingStartDetection;
}

- (id)detectionWindowForType:(unint64_t)type
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  v5 = [infoProvider detectionWindowForType:type];

  return v5;
}

@end