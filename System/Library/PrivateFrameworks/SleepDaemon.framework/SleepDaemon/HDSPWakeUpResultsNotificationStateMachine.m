@interface HDSPWakeUpResultsNotificationStateMachine
- (BOOL)isDelayingForTracking;
- (BOOL)isWaitingForWakeUp;
- (HDSPWakeUpResultsNotificationStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7;
- (id)allStates;
- (void)didPostResultsNotification;
- (void)protectedHealthDataDidBecomeAvailable;
- (void)queryDidComplete;
- (void)queryDidFailWithError:(id)a3;
- (void)retryAttemptEventDue;
- (void)wakeUpDidOccur;
@end

@implementation HDSPWakeUpResultsNotificationStateMachine

- (HDSPWakeUpResultsNotificationStateMachine)initWithIdentifier:(id)a3 persistence:(id)a4 delegate:(id)a5 infoProvider:(id)a6 currentDateProvider:(id)a7
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
  v40.super_class = HDSPWakeUpResultsNotificationStateMachine;
  v20 = [(HKSPPersistentStateMachine *)&v40 initWithIdentifier:v17 allowedStates:v19 persistence:v16 delegate:v15 infoProvider:v14 currentDateProvider:v13];

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

    v35 = [(HKSPPersistentStateMachine *)v20 persistedState];
    v36 = v35;
    if (!v35)
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
  v3 = [(HKSPStateMachine *)self currentState];
  if (v3)
  {
    v4 = [(HDSPWakeUpResultsNotificationStateMachine *)self waitingForWakeUpState];
    if (v4)
    {
      v5 = [(HKSPStateMachine *)self currentState];
      v6 = [(HDSPWakeUpResultsNotificationStateMachine *)self waitingForWakeUpState];
      v7 = [v5 isMemberOfClass:objc_opt_class()];
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
  v3 = [(HKSPStateMachine *)self currentState];
  if (v3)
  {
    v4 = [(HDSPWakeUpResultsNotificationStateMachine *)self delayingForTrackingState];
    if (v4)
    {
      v5 = [(HKSPStateMachine *)self currentState];
      v6 = [(HDSPWakeUpResultsNotificationStateMachine *)self delayingForTrackingState];
      v7 = [v5 isMemberOfClass:objc_opt_class()];
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
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 protectedHealthDataDidBecomeAvailable];
}

- (void)queryDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = [(HKSPStateMachine *)self currentState];
  [v5 queryDidFailWithError:v4];
}

- (void)queryDidComplete
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 queryDidComplete];
}

- (void)wakeUpDidOccur
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 wakeUpDidOccur];
}

- (void)didPostResultsNotification
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 didPostResultsNotification];
}

- (void)retryAttemptEventDue
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 retryAttemptEventDue];
}

@end