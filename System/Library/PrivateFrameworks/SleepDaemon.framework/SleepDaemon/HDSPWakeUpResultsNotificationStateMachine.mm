@interface HDSPWakeUpResultsNotificationStateMachine
- (BOOL)isDelayingForTracking;
- (BOOL)isWaitingForWakeUp;
- (HDSPWakeUpResultsNotificationStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider;
- (id)allStates;
- (void)didPostResultsNotification;
- (void)protectedHealthDataDidBecomeAvailable;
- (void)queryDidComplete;
- (void)queryDidFailWithError:(id)error;
- (void)retryAttemptEventDue;
- (void)wakeUpDidOccur;
@end

@implementation HDSPWakeUpResultsNotificationStateMachine

- (HDSPWakeUpResultsNotificationStateMachine)initWithIdentifier:(id)identifier persistence:(id)persistence delegate:(id)delegate infoProvider:(id)provider currentDateProvider:(id)dateProvider
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
  v40.super_class = HDSPWakeUpResultsNotificationStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v40 initWithIdentifier:identifierCopy allowedStates:v19 persistence:persistenceCopy delegate:delegateCopy infoProvider:providerCopy currentDateProvider:dateProviderCopy];

  if (v20)
  {
    v21 = [(HKSPPersistentStateMachineState *)[HDSPWakeUpResultsNotificationWaitingForWakeUpState alloc] initWithStateMachine:v20];
    waitingForWakeUpState = v20->_waitingForWakeUpState;
    v20->_waitingForWakeUpState = v21;

    v23 = [(HKSPPersistentStateMachineState *)[HDSPWakeUpResultsNotificationDelayingForTrackingState alloc] initWithStateMachine:v20];
    delayingForTrackingState = v20->_delayingForTrackingState;
    v20->_delayingForTrackingState = v23;

    v25 = [(HKSPPersistentStateMachineState *)[HDSPWakeUpResultsNotificationWaitingForRetryState alloc] initWithStateMachine:v20];
    waitingForRetryState = v20->_waitingForRetryState;
    v20->_waitingForRetryState = v25;

    v27 = [(HKSPPersistentStateMachineState *)[HDSPWakeUpResultsNotificationQueryingState alloc] initWithStateMachine:v20];
    queryingState = v20->_queryingState;
    v20->_queryingState = v27;

    v29 = [(HKSPPersistentStateMachineState *)[HDSPWakeUpResultsNotificationNeedsProtectedDataState alloc] initWithStateMachine:v20];
    needsProtectedDataState = v20->_needsProtectedDataState;
    v20->_needsProtectedDataState = v29;

    v31 = [(HKSPPersistentStateMachineState *)[HDSPWakeUpResultsNotificationNotifiedState alloc] initWithStateMachine:v20];
    notifiedState = v20->_notifiedState;
    v20->_notifiedState = v31;

    v33 = [(HKSPPersistentStateMachineState *)[HDSPWakeUpResultsNotificationDisabledState alloc] initWithStateMachine:v20];
    disabledState = v20->_disabledState;
    v20->_disabledState = v33;

    persistedState = [(HKSPPersistentStateMachine *)v20 persistedState];
    v36 = persistedState;
    if (!persistedState)
    {
      v36 = v20->_disabledState;
    }

    [(HKSPStateMachine *)v20 setInitialState:v36];

    v37 = v20;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)allStates
{
  v8[7] = *MEMORY[0x277D85DE8];
  delayingForTrackingState = self->_delayingForTrackingState;
  v8[0] = self->_waitingForWakeUpState;
  v8[1] = delayingForTrackingState;
  queryingState = self->_queryingState;
  v8[2] = self->_waitingForRetryState;
  v8[3] = queryingState;
  notifiedState = self->_notifiedState;
  v8[4] = self->_needsProtectedDataState;
  v8[5] = notifiedState;
  v8[6] = self->_disabledState;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:7];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isWaitingForWakeUp
{
  currentState = [(HKSPStateMachine *)self currentState];
  if (currentState)
  {
    waitingForWakeUpState = [(HDSPWakeUpResultsNotificationStateMachine *)self waitingForWakeUpState];
    if (waitingForWakeUpState)
    {
      currentState2 = [(HKSPStateMachine *)self currentState];
      waitingForWakeUpState2 = [(HDSPWakeUpResultsNotificationStateMachine *)self waitingForWakeUpState];
      v7 = [currentState2 isMemberOfClass:objc_opt_class()];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDelayingForTracking
{
  currentState = [(HKSPStateMachine *)self currentState];
  if (currentState)
  {
    delayingForTrackingState = [(HDSPWakeUpResultsNotificationStateMachine *)self delayingForTrackingState];
    if (delayingForTrackingState)
    {
      currentState2 = [(HKSPStateMachine *)self currentState];
      delayingForTrackingState2 = [(HDSPWakeUpResultsNotificationStateMachine *)self delayingForTrackingState];
      v7 = [currentState2 isMemberOfClass:objc_opt_class()];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)protectedHealthDataDidBecomeAvailable
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState protectedHealthDataDidBecomeAvailable];
}

- (void)queryDidFailWithError:(id)error
{
  errorCopy = error;
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState queryDidFailWithError:errorCopy];
}

- (void)queryDidComplete
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState queryDidComplete];
}

- (void)wakeUpDidOccur
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState wakeUpDidOccur];
}

- (void)didPostResultsNotification
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState didPostResultsNotification];
}

- (void)retryAttemptEventDue
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState retryAttemptEventDue];
}

@end