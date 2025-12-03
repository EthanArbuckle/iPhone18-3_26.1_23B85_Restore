@interface SASPresentationManager
+ (BOOL)_canTransitionFromState:(int64_t)state toState:(int64_t)toState presentationIdentifier:(int64_t)identifier;
+ (BOOL)_canTransitionToActiveFromState:(int64_t)state presentationIdentifier:(int64_t)identifier;
- (BOOL)activePresentationsAreIdleAndQuiet;
- (BOOL)sendButtonEventCompletionToApplicableOffPresentations:(id)presentations forButtonEventType:(unint64_t)type;
- (SASPresentationManager)init;
- (id)_buildPresentationOptionsWithRequestOptions:(id)options;
- (int64_t)_presentationsLock_nextPresentationToActivate;
- (int64_t)nextPresentationToActivate;
- (int64_t)requestState;
- (void)_forceAllPresentationsOff;
- (void)_informPresentationOfPresentationWithPriority:(id)priority nextPresentationToActivate:(int64_t)activate;
- (void)_offButRequestedDismissalSignals_presentationDismissalRequestedWithOptions:(id)options;
- (void)_presentationsLock_broadcastPresentationStateForIdentifier:(id)identifier presentationState:(id)state presentationIdentifiersToInform:(id)inform;
- (void)_presentationsLock_cancelAllPreheatedPresentations;
- (void)_presentationsLock_nextPresentationToActivateDidChange:(int64_t)change;
- (void)_requestStateDidChange;
- (void)_sendBlock:(id)block toPresentationWithPresentationIdentifier:(int64_t)identifier;
- (void)_sendBlockToActivePresentations:(id)presentations;
- (void)_sendBlockToStartingPresentations:(id)presentations;
- (void)_sendBlockToStoppingPresentations:(id)presentations;
- (void)_setupPingTimerForPresentationIdentifier:(int64_t)identifier;
- (void)_teardownPingTimerForPresentationIdentifier:(int64_t)identifier;
- (void)_transitionPresentationWithPresentationIdentifier:(int64_t)identifier toState:(int64_t)state;
- (void)_waitForPongFromPresentationWithPresentationIdentifier:(int64_t)identifier;
- (void)activeAndStartingPresentations_updateCurrentLockState:(unint64_t)state;
- (void)activePresentations_handleRequestWithOptions:(id)options;
- (void)cancelAllPreheatedPresentations;
- (void)pongWithPresentationIdentifier:(int64_t)identifier;
- (void)preheatNextPresentationToActivateWithOptions:(id)options;
- (void)presentationDidUpdateConfiguration:(id)configuration;
- (void)presentationDidUpdateState:(id)state;
- (void)presentationRequestedWithPresentationIdentifier:(int64_t)identifier presentationOptions:(id)options requestOptions:(id)requestOptions;
- (void)presentationWithPresentationIdentifier:(int64_t)identifier activationDeterminedShouldDeferWake:(BOOL)wake;
- (void)presentationWithPresentationIdentifierWakeScreenAfterActivation:(int64_t)activation reason:(id)reason;
- (void)registerSiriPresentation:(id)presentation withIdentifier:(int64_t)identifier;
- (void)requestHintGlowForNextPresentation;
- (void)sendButtonEventCompletionToPresentations:(id)presentations forButtonEventType:(unint64_t)type;
- (void)setPresentationManagerDelegate:(id)delegate;
- (void)startingAndActiveAndStoppingPresentations_presentationDismissalRequestedWithOptions:(id)options;
- (void)startingPresentations_cancelPendingActivationWithReason:(unint64_t)reason;
- (void)unregisterSiriPresentationWithIdentifier:(int64_t)identifier;
@end

@implementation SASPresentationManager

- (int64_t)requestState
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698D0A0];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AF00];
    v6 = v4;
    currentThread = [v5 currentThread];
    *buf = 136315394;
    v38 = "[SASPresentationManager requestState]";
    v39 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[SASPresentationManager requestState]";
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  allValues = [(NSMutableDictionary *)self->_presentations allValues];
  v10 = [allValues countByEnumeratingWithState:&v33 objects:v51 count:16];
  if (!v10)
  {

    v13 = 0;
    v12 = 0;
    goto LABEL_26;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = *v34;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v34 != v17)
      {
        objc_enumerationMutation(allValues);
      }

      requestState = [*(*(&v33 + 1) + 8 * i) requestState];
      if (requestState <= 1)
      {
        if (requestState)
        {
          if (requestState == 1)
          {
            ++v12;
          }
        }

        else
        {
          ++v13;
        }
      }

      else
      {
        switch(requestState)
        {
          case 2:
            ++v15;
            break;
          case 3:
            ++v16;
            break;
          case 4:
            ++v14;
            break;
        }
      }
    }

    v11 = [allValues countByEnumeratingWithState:&v33 objects:v51 count:16];
  }

  while (v11);

  if (v16)
  {
    v20 = 3;
    goto LABEL_31;
  }

  if (v15)
  {
    v16 = 0;
    v20 = 2;
    goto LABEL_31;
  }

  if (!v14)
  {
LABEL_26:
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v20 = 0;
    goto LABEL_31;
  }

  v16 = 0;
  v15 = 0;
  v20 = 4;
LABEL_31:
  v21 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v22 = MEMORY[0x1E696AD98];
    v23 = v21;
    v24 = [v22 numberWithUnsignedInteger:v16];
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
    v29 = SASRequestStateGetName(v20);
    *buf = 136316674;
    v38 = "[SASPresentationManager requestState]";
    v39 = 2112;
    qualityOfService = v24;
    v41 = 2112;
    v42 = v25;
    v43 = 2112;
    v44 = v26;
    v45 = 2112;
    v46 = v27;
    v47 = 2112;
    v48 = v28;
    v49 = 2112;
    v50 = v29;
    _os_log_impl(&dword_1C8137000, v23, OS_LOG_TYPE_DEFAULT, "%s #activation active: %@ | starting: %@ | stopping: %@ | heated: %@ | off: %@ | computed state: %@", buf, 0x48u);
  }

  os_unfair_lock_unlock(&presentationsLock);
  v30 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[SASPresentationManager requestState]";
    _os_log_impl(&dword_1C8137000, v30, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v20;
}

- (int64_t)nextPresentationToActivate
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698D0A0];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AF00];
    v6 = v4;
    currentThread = [v5 currentThread];
    v13 = 136315394;
    v14 = "[SASPresentationManager nextPresentationToActivate]";
    v15 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", &v13, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SASPresentationManager nextPresentationToActivate]";
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", &v13, 0xCu);
  }

  _presentationsLock_nextPresentationToActivate = [(SASPresentationManager *)self _presentationsLock_nextPresentationToActivate];
  os_unfair_lock_unlock(&presentationsLock);
  v10 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SASPresentationManager nextPresentationToActivate]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", &v13, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];
  return _presentationsLock_nextPresentationToActivate;
}

- (int64_t)_presentationsLock_nextPresentationToActivate
{
  v14 = *MEMORY[0x1E69E9840];
  allKeys = [(NSMutableDictionary *)self->_presentations allKeys];
  v3 = [SASPresentationDecision activationPresentationForPresentationIdentifiers:allKeys];

  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = [v5 stringWithSiriPresentationIdentifier:v3];
    v10 = 136315394;
    v11 = "[SASPresentationManager _presentationsLock_nextPresentationToActivate]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation identifier: %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void __69__SASPresentationManager_activePresentations_deviceWonMyriadElection__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v2 = [v3 remoteTarget];
  [v2 deviceWonMyriadElection];
}

- (void)_requestStateDidChange
{
  v20 = *MEMORY[0x1E69E9840];
  requestState = [(SASPresentationManager *)self requestState];
  v4 = [(SASPresentationManager *)self shouldRejectNewActivationsForRequestState:requestState];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__SASPresentationManager__requestStateDidChange__block_invoke;
  v12[3] = &unk_1E82F3DB0;
  v13 = !v4;
  v12[4] = self;
  v12[5] = requestState;
  v5 = [SASPresentationAggregateState newWithBuilder:v12];
  lastReportedState = self->lastReportedState;
  if (!lastReportedState || (v7 = -[SASPresentationAggregateState requestState](lastReportedState, "requestState"), v7 != [v5 requestState]))
  {
    v8 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->lastReportedState;
      *buf = 136315650;
      v15 = "[SASPresentationManager _requestStateDidChange]";
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation: oldAggregateState %@ | newAggregateState: %@", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_presentationManagerDelegate);
    [WeakRetained presentationManager:self didChangeAggregateState:v5];

    objc_storeStrong(&self->lastReportedState, v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __48__SASPresentationManager__requestStateDidChange__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setRequestState:*(a1 + 40)];
  [v5 setCanAcceptNewActivations:*(a1 + 48)];
  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    v4 = *(a1 + 48) != [v3 canAcceptNewActivations];
  }

  else
  {
    v4 = 1;
  }

  [v5 setDidNewActivationAcceptanceChange:v4];
}

- (SASPresentationManager)init
{
  v6.receiver = self;
  v6.super_class = SASPresentationManager;
  v2 = [(SASPresentationManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    presentations = v2->_presentations;
    v2->_presentations = v3;
  }

  return v2;
}

- (void)registerSiriPresentation:(id)presentation withIdentifier:(int64_t)identifier
{
  v45 = *MEMORY[0x1E69E9840];
  presentationCopy = presentation;
  v7 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:identifier];
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "[SASPresentationManager registerSiriPresentation:withIdentifier:]";
    v43 = 2112;
    v44 = v7;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation presentationIdentifierKey: %@", buf, 0x16u);
  }

  v10 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1E696AF00];
    v12 = v10;
    currentThread = [v11 currentThread];
    qualityOfService = [currentThread qualityOfService];
    *buf = 136315394;
    v42 = "[SASPresentationManager registerSiriPresentation:withIdentifier:]";
    v43 = 2048;
    v44 = qualityOfService;
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v15 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v42 = "[SASPresentationManager registerSiriPresentation:withIdentifier:]";
    _os_log_impl(&dword_1C8137000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
  }

  _presentationsLock_nextPresentationToActivate = [(SASPresentationManager *)self _presentationsLock_nextPresentationToActivate];
  allKeys = [(NSMutableDictionary *)self->_presentations allKeys];
  v18 = [allKeys containsObject:v7];

  if (v18)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [SASPresentationManager registerSiriPresentation:withIdentifier:];
    }

    [(NSMutableDictionary *)self->_presentations removeObjectForKey:v7];
  }

  [(SASPresentationManager *)self _presentationsLock_cancelAllPreheatedPresentations];
  v19 = [[SASPresentationModel alloc] initWithPresentationServer:presentationCopy];
  [(NSMutableDictionary *)self->_presentations setObject:v19 forKey:v7];
  _presentationsLock_nextPresentationToActivate2 = [(SASPresentationManager *)self _presentationsLock_nextPresentationToActivate];
  if (_presentationsLock_nextPresentationToActivate == _presentationsLock_nextPresentationToActivate2)
  {
    [(SASPresentationManager *)self _informPresentationOfPresentationWithPriority:v19 nextPresentationToActivate:_presentationsLock_nextPresentationToActivate, v19, presentationCopy];
  }

  else
  {
    [(SASPresentationManager *)self _presentationsLock_nextPresentationToActivateDidChange:_presentationsLock_nextPresentationToActivate2, v19, presentationCopy];
  }

  v21 = v7;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_presentations allKeys];
  v23 = [allKeys2 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(allKeys2);
        }

        v27 = *(*(&v35 + 1) + 8 * i);
        if (([v21 isEqualToString:v27] & 1) == 0)
        {
          v28 = [(NSMutableDictionary *)self->_presentations valueForKey:v27];
          presentationState = [v28 presentationState];
          v39 = v21;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
          [(SASPresentationManager *)self _presentationsLock_broadcastPresentationStateForIdentifier:v27 presentationState:presentationState presentationIdentifiersToInform:v30];
        }
      }

      v24 = [allKeys2 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v24);
  }

  os_unfair_lock_unlock(&presentationsLock);
  v31 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v42 = "[SASPresentationManager registerSiriPresentation:withIdentifier:]";
    _os_log_impl(&dword_1C8137000, v31, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)unregisterSiriPresentationWithIdentifier:(int64_t)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:identifier];
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315394;
    v24 = "[SASPresentationManager unregisterSiriPresentationWithIdentifier:]";
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation presentationIdentifierKey: %@", &v23, 0x16u);
  }

  v7 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x1E696AF00];
    v9 = v7;
    currentThread = [v8 currentThread];
    qualityOfService = [currentThread qualityOfService];
    v23 = 136315394;
    v24 = "[SASPresentationManager unregisterSiriPresentationWithIdentifier:]";
    v25 = 2048;
    v26 = qualityOfService;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", &v23, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315138;
    v24 = "[SASPresentationManager unregisterSiriPresentationWithIdentifier:]";
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", &v23, 0xCu);
  }

  _presentationsLock_nextPresentationToActivate = [(SASPresentationManager *)self _presentationsLock_nextPresentationToActivate];
  allKeys = [(NSMutableDictionary *)self->_presentations allKeys];
  v15 = [allKeys containsObject:v4];

  if (v15)
  {
    [(SASPresentationManager *)self _presentationsLock_cancelAllPreheatedPresentations];
    [(NSMutableDictionary *)self->_presentations removeObjectForKey:v4];
    allKeys2 = [(NSMutableDictionary *)self->_presentations allKeys];
    v17 = [allKeys2 count];

    if (v17)
    {
      _presentationsLock_nextPresentationToActivate2 = [(SASPresentationManager *)self _presentationsLock_nextPresentationToActivate];
      if (_presentationsLock_nextPresentationToActivate != _presentationsLock_nextPresentationToActivate2)
      {
        [(SASPresentationManager *)self _presentationsLock_nextPresentationToActivateDidChange:_presentationsLock_nextPresentationToActivate2];
      }
    }

    allKeys3 = [(NSMutableDictionary *)self->_presentations allKeys];
    [(SASPresentationManager *)self _presentationsLock_broadcastPresentationStateForIdentifier:v4 presentationState:0 presentationIdentifiersToInform:allKeys3];

    os_unfair_lock_unlock(&presentationsLock);
    v20 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[SASPresentationManager unregisterSiriPresentationWithIdentifier:]";
      _os_log_impl(&dword_1C8137000, v20, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", &v23, 0xCu);
    }

    [(SASPresentationManager *)self _requestStateDidChange];
  }

  else
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      [SASPresentationManager unregisterSiriPresentationWithIdentifier:];
    }

    os_unfair_lock_unlock(&presentationsLock);
    v21 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = "[SASPresentationManager unregisterSiriPresentationWithIdentifier:]";
      _os_log_impl(&dword_1C8137000, v21, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", &v23, 0xCu);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)requestHintGlowForNextPresentation
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C8137000, v0, v1, "%s #activation tried to request hint glow %@ but it's not a registered presentation", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)preheatNextPresentationToActivateWithOptions:(id)options
{
  v31 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315394;
    v28 = "[SASPresentationManager preheatNextPresentationToActivateWithOptions:]";
    v29 = 2112;
    v30 = optionsCopy;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #preheat preheatNextPresentationToActivateWithOptions: %@", &v27, 0x16u);
  }

  v7 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x1E696AF00];
    v9 = v7;
    currentThread = [v8 currentThread];
    qualityOfService = [currentThread qualityOfService];
    v27 = 136315394;
    v28 = "[SASPresentationManager preheatNextPresentationToActivateWithOptions:]";
    v29 = 2048;
    v30 = qualityOfService;
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", &v27, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315138;
    v28 = "[SASPresentationManager preheatNextPresentationToActivateWithOptions:]";
    _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", &v27, 0xCu);
  }

  _presentationsLock_nextPresentationToActivate = [(SASPresentationManager *)self _presentationsLock_nextPresentationToActivate];
  v14 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:_presentationsLock_nextPresentationToActivate];
  v15 = [(NSMutableDictionary *)self->_presentations objectForKey:v14];
  if (!v15)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      [SASPresentationManager preheatNextPresentationToActivateWithOptions:];
    }

    os_unfair_lock_unlock(&presentationsLock);
    v21 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v27 = 136315138;
    v28 = "[SASPresentationManager preheatNextPresentationToActivateWithOptions:]";
LABEL_22:
    _os_log_impl(&dword_1C8137000, v21, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", &v27, 0xCu);
    goto LABEL_23;
  }

  preheatRequest = [optionsCopy preheatRequest];
  configuration = [preheatRequest configuration];

  if (configuration == 1)
  {
    presentationServer = [v15 presentationServer];
    connection = [presentationServer connection];
    remoteTarget = [connection remoteTarget];
    [remoteTarget preheatWithOptions:optionsCopy];

    goto LABEL_20;
  }

  if ([v15 requestState])
  {
    v22 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      [(SASPresentationManager *)v14 preheatNextPresentationToActivateWithOptions:v22, v15];
    }

    os_unfair_lock_unlock(&presentationsLock);
    v21 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v27 = 136315138;
    v28 = "[SASPresentationManager preheatNextPresentationToActivateWithOptions:]";
    goto LABEL_22;
  }

  presentationServer2 = [v15 presentationServer];
  connection2 = [presentationServer2 connection];
  remoteTarget2 = [connection2 remoteTarget];
  [remoteTarget2 preheatWithOptions:optionsCopy];

  [v15 setRequestState:1];
LABEL_20:
  os_unfair_lock_unlock(&presentationsLock);
  v21 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315138;
    v28 = "[SASPresentationManager preheatNextPresentationToActivateWithOptions:]";
    goto LABEL_22;
  }

LABEL_23:

  v26 = *MEMORY[0x1E69E9840];
}

- (void)cancelAllPreheatedPresentations
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698D0A0];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AF00];
    v6 = v4;
    currentThread = [v5 currentThread];
    v11 = 136315394;
    v12 = "[SASPresentationManager cancelAllPreheatedPresentations]";
    v13 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", &v11, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SASPresentationManager cancelAllPreheatedPresentations]";
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", &v11, 0xCu);
  }

  [(SASPresentationManager *)self _presentationsLock_cancelAllPreheatedPresentations];
  os_unfair_lock_unlock(&presentationsLock);
  v9 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SASPresentationManager cancelAllPreheatedPresentations]";
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", &v11, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_presentationsLock_cancelAllPreheatedPresentations
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [(NSMutableDictionary *)self->_presentations allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v22;
    *&v5 = 136315650;
    v20 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_presentations objectForKey:v9, v20];
        requestState = [v10 requestState];
        v12 = *MEMORY[0x1E698D0A0];
        v13 = os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT);
        if (requestState == 1)
        {
          if (v13)
          {
            *buf = 136315394;
            v26 = "[SASPresentationManager _presentationsLock_cancelAllPreheatedPresentations]";
            v27 = 2112;
            v28 = v9;
            _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation cancelling preheat for presentation: %@", buf, 0x16u);
          }

          presentationServer = [v10 presentationServer];
          connection = [presentationServer connection];
          remoteTarget = [connection remoteTarget];
          [remoteTarget cancelPreheat];

          [v10 setRequestState:0];
        }

        else if (v13)
        {
          v17 = v12;
          v18 = SASRequestStateGetName([v10 requestState]);
          *buf = v20;
          v26 = "[SASPresentationManager _presentationsLock_cancelAllPreheatedPresentations]";
          v27 = 2112;
          v28 = v9;
          v29 = 2112;
          v30 = v18;
          _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #noisy not cancelling preheat for presentation: %@ because it appears to be %@", buf, 0x20u);
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v6);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setPresentationManagerDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_presentationManagerDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_presentationManagerDelegate, obj);
    v5 = obj;
  }
}

- (void)_sendBlock:(id)block toPresentationWithPresentationIdentifier:(int64_t)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v7 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:identifier];
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    currentThread = [v10 currentThread];
    v21 = 136315394;
    v22 = "[SASPresentationManager _sendBlock:toPresentationWithPresentationIdentifier:]";
    v23 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", &v21, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315138;
    v22 = "[SASPresentationManager _sendBlock:toPresentationWithPresentationIdentifier:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", &v21, 0xCu);
  }

  v14 = [(NSMutableDictionary *)self->_presentations objectForKey:v7];
  v15 = v14;
  if (v14)
  {
    presentationServer = [v14 presentationServer];
    blockCopy[2](blockCopy, presentationServer);

    os_unfair_lock_unlock(&presentationsLock);
    v17 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[SASPresentationManager _sendBlock:toPresentationWithPresentationIdentifier:]";
      _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", &v21, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [SASPresentationManager _sendBlock:toPresentationWithPresentationIdentifier:];
    }

    os_unfair_lock_unlock(&presentationsLock);
    v18 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315138;
      v22 = "[SASPresentationManager _sendBlock:toPresentationWithPresentationIdentifier:]";
      _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", &v21, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_presentationManagerDelegate);
    [WeakRetained presentationManager:self didEncounterError:2];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_sendBlockToActivePresentations:(id)presentations
{
  v29 = *MEMORY[0x1E69E9840];
  presentationsCopy = presentations;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    currentThread = [v7 currentThread];
    *buf = 136315394;
    v26 = "[SASPresentationManager _sendBlockToActivePresentations:]";
    v27 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[SASPresentationManager _sendBlockToActivePresentations:]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [(NSMutableDictionary *)self->_presentations allValues];
  v12 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([v16 requestState] == 3)
        {
          presentationServer = [v16 presentationServer];
          presentationsCopy[2](presentationsCopy, presentationServer);
        }
      }

      v13 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&presentationsLock);
  v18 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[SASPresentationManager _sendBlockToActivePresentations:]";
    _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_sendBlockToStartingPresentations:(id)presentations
{
  v29 = *MEMORY[0x1E69E9840];
  presentationsCopy = presentations;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    currentThread = [v7 currentThread];
    *buf = 136315394;
    v26 = "[SASPresentationManager _sendBlockToStartingPresentations:]";
    v27 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[SASPresentationManager _sendBlockToStartingPresentations:]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [(NSMutableDictionary *)self->_presentations allValues];
  v12 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([v16 requestState] == 2)
        {
          presentationServer = [v16 presentationServer];
          presentationsCopy[2](presentationsCopy, presentationServer);
        }
      }

      v13 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&presentationsLock);
  v18 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[SASPresentationManager _sendBlockToStartingPresentations:]";
    _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_sendBlockToStoppingPresentations:(id)presentations
{
  v29 = *MEMORY[0x1E69E9840];
  presentationsCopy = presentations;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    currentThread = [v7 currentThread];
    *buf = 136315394;
    v26 = "[SASPresentationManager _sendBlockToStoppingPresentations:]";
    v27 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[SASPresentationManager _sendBlockToStoppingPresentations:]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allValues = [(NSMutableDictionary *)self->_presentations allValues];
  v12 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([v16 requestState] == 4)
        {
          presentationServer = [v16 presentationServer];
          presentationsCopy[2](presentationsCopy, presentationServer);
        }
      }

      v13 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&presentationsLock);
  v18 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[SASPresentationManager _sendBlockToStoppingPresentations:]";
    _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)sendButtonEventCompletionToPresentations:(id)presentations forButtonEventType:(unint64_t)type
{
  v62 = *MEMORY[0x1E69E9840];
  presentationsCopy = presentations;
  v6 = *MEMORY[0x1E698D0A0];
  v7 = os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT);
  typeCopy = type;
  if (type)
  {
    if (v7)
    {
      v8 = MEMORY[0x1E696AF00];
      v9 = v6;
      currentThread = [v8 currentThread];
      *buf = 136315394;
      v54 = "[SASPresentationManager sendButtonEventCompletionToPresentations:forButtonEventType:]";
      v55 = 2048;
      qualityOfService = [currentThread qualityOfService];
      _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
    }

    os_unfair_lock_lock(&presentationsLock);
    v11 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v54 = "[SASPresentationManager sendButtonEventCompletionToPresentations:forButtonEventType:]";
      _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [(NSMutableDictionary *)self->_presentations allKeys];
    v12 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v50;
      *&v13 = 136315650;
      v45 = v13;
      do
      {
        v16 = 0;
        do
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v49 + 1) + 8 * v16);
          v18 = [(NSMutableDictionary *)self->_presentations objectForKeyedSubscript:v17, v45];
          requestState = [v18 requestState];
          v20 = *MEMORY[0x1E698D0A0];
          if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
          {
            v21 = v20;
            v22 = SASButtonEventTypeGetName(typeCopy);
            v23 = SASRequestStateGetName(requestState);
            *buf = 136315906;
            v54 = "[SASPresentationManager sendButtonEventCompletionToPresentations:forButtonEventType:]";
            v55 = 2112;
            qualityOfService = v17;
            v57 = 2112;
            v58 = v22;
            v59 = 2112;
            v60 = v23;
            _os_log_impl(&dword_1C8137000, v21, OS_LOG_TYPE_DEFAULT, "%s #activation presentation: %@, type: %@, state: %@", buf, 0x2Au);
          }

          if ([v18 requestState] == 3)
          {
            presentationServer = [v18 presentationServer];
            presentationsCopy[2](presentationsCopy, presentationServer);
LABEL_21:

            goto LABEL_22;
          }

          if ([v18 requestState] == 2)
          {
            v25 = *MEMORY[0x1E698D0A0];
            if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
            {
              v26 = v25;
              v27 = SASRequestStateGetName(3);
              *buf = 136315394;
              v54 = "[SASPresentationManager sendButtonEventCompletionToPresentations:forButtonEventType:]";
              v55 = 2112;
              qualityOfService = v27;
              _os_log_impl(&dword_1C8137000, v26, OS_LOG_TYPE_DEFAULT, "%s #activation enqueuing button event completion until State is %@.", buf, 0x16u);
              goto LABEL_18;
            }

            goto LABEL_19;
          }

          requestState2 = [v18 requestState];
          if (typeCopy == 2 && !requestState2)
          {
            v30 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:2];
            v31 = [v17 isEqualToString:v30];

            if (v31)
            {
              v32 = *MEMORY[0x1E698D0A0];
              if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
              {
                v26 = v32;
                v27 = SASButtonEventTypeGetName(2);
                v33 = SASRequestStateGetName(requestState);
                *buf = v45;
                v54 = "[SASPresentationManager sendButtonEventCompletionToPresentations:forButtonEventType:]";
                v55 = 2112;
                qualityOfService = v27;
                v57 = 2112;
                v58 = v33;
                _os_log_impl(&dword_1C8137000, v26, OS_LOG_TYPE_DEFAULT, "%s #activation received %@ while request state is %@, enqueueing.", buf, 0x20u);

LABEL_18:
              }

LABEL_19:
              presentationServer = [v18 enqueuedButtonEventCompletions];
              connection = _Block_copy(presentationsCopy);
              [presentationServer addObject:connection];
LABEL_20:

              goto LABEL_21;
            }
          }

          _shouldShowHintGlow = [(SASPresentationManager *)self _shouldShowHintGlow];
          if (typeCopy == 2 && _shouldShowHintGlow)
          {
            v35 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:1];
            v36 = [v17 isEqualToString:v35];

            if (v36)
            {
              v37 = *MEMORY[0x1E698D0A0];
              if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v54 = "[SASPresentationManager sendButtonEventCompletionToPresentations:forButtonEventType:]";
                _os_log_impl(&dword_1C8137000, v37, OS_LOG_TYPE_DEFAULT, "%s #activation cancel hint glow activation for button up event", buf, 0xCu);
              }

              presentationServer = [v18 presentationServer];
              connection = [presentationServer connection];
              remoteTarget = [connection remoteTarget];
              [remoteTarget cancelActivatedHintGlow];

              goto LABEL_20;
            }
          }

          v39 = *MEMORY[0x1E698D0A0];
          if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v54 = "[SASPresentationManager sendButtonEventCompletionToPresentations:forButtonEventType:]";
            _os_log_impl(&dword_1C8137000, v39, OS_LOG_TYPE_DEFAULT, "%s #activation unhandled button event, ignoring.", buf, 0xCu);
          }

LABEL_22:

          ++v16;
        }

        while (v14 != v16);
        v40 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
        v14 = v40;
      }

      while (v40);
    }

    os_unfair_lock_unlock(&presentationsLock);
    v41 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v54 = "[SASPresentationManager sendButtonEventCompletionToPresentations:forButtonEventType:]";
      v42 = "%s #activation #locks #noisy presentationsLock unlocked";
      v43 = v41;
LABEL_42:
      _os_log_impl(&dword_1C8137000, v43, OS_LOG_TYPE_DEFAULT, v42, buf, 0xCu);
    }
  }

  else if (v7)
  {
    *buf = 136315138;
    v54 = "[SASPresentationManager sendButtonEventCompletionToPresentations:forButtonEventType:]";
    v42 = "%s Received unknown button event type. Ignoring.";
    v43 = v6;
    goto LABEL_42;
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendButtonEventCompletionToApplicableOffPresentations:(id)presentations forButtonEventType:(unint64_t)type
{
  v36 = *MEMORY[0x1E69E9840];
  presentationsCopy = presentations;
  if (type == 3)
  {
    v7 = MEMORY[0x1E698D0A0];
    v8 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x1E696AF00];
      v10 = v8;
      currentThread = [v9 currentThread];
      *buf = 136315394;
      v33 = "[SASPresentationManager sendButtonEventCompletionToApplicableOffPresentations:forButtonEventType:]";
      v34 = 2048;
      qualityOfService = [currentThread qualityOfService];
      _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
    }

    os_unfair_lock_lock(&presentationsLock);
    v12 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v33 = "[SASPresentationManager sendButtonEventCompletionToApplicableOffPresentations:forButtonEventType:]";
      _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    allKeys = [(NSMutableDictionary *)self->_presentations allKeys];
    v14 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v26 = 0;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(allKeys);
          }

          v18 = [(NSMutableDictionary *)self->_presentations objectForKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
          if (![v18 requestState])
          {
            configuration = [v18 configuration];
            desiresDismissalSignalsEvenWhenOff = [configuration desiresDismissalSignalsEvenWhenOff];

            if (desiresDismissalSignalsEvenWhenOff)
            {
              presentationServer = [v18 presentationServer];
              presentationsCopy[2](presentationsCopy, presentationServer);

              v26 = 1;
            }
          }
        }

        v15 = [allKeys countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }

    else
    {
      v26 = 0;
    }

    os_unfair_lock_unlock(&presentationsLock);
    v23 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v33 = "[SASPresentationManager sendButtonEventCompletionToApplicableOffPresentations:forButtonEventType:]";
      _os_log_impl(&dword_1C8137000, v23, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
    }

    v22 = v26;
  }

  else
  {
    v22 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v22 & 1;
}

- (void)activePresentations_handleRequestWithOptions:(id)options
{
  optionsCopy = options;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __71__SASPresentationManager_activePresentations_handleRequestWithOptions___block_invoke;
  v10 = &unk_1E82F3DD8;
  v11 = optionsCopy;
  selfCopy = self;
  v5 = optionsCopy;
  v6 = _Block_copy(&v7);
  [(SASPresentationManager *)self _sendBlockToActivePresentations:v6, v7, v8, v9, v10];
}

void __71__SASPresentationManager_activePresentations_handleRequestWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(a1 + 32) isVisualIntelligenceRequest])
  {
    v3 = [*(a1 + 40) _buildPresentationOptionsWithRequestOptions:*(a1 + 32)];
    v4 = [v6 connection];
    v5 = [v4 remoteTarget];
    [v5 handleRequestWithPresentationOptionsUpdate:v3 requestOptions:*(a1 + 32)];
  }

  else
  {
    v3 = [v6 connection];
    v4 = [v3 remoteTarget];
    [v4 handleRequestWithOptions:*(a1 + 32)];
  }
}

- (id)_buildPresentationOptionsWithRequestOptions:(id)options
{
  optionsCopy = options;
  v4 = [[SiriPresentationOptions alloc] initWithBuilder:0];
  uiPresentationIdentifier = [optionsCopy uiPresentationIdentifier];
  if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.Compact"])
  {
    v6 = 2;
  }

  else if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.SystemAssistantExperience"])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = MEMORY[0x1E698D0A0];
  v8 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
  {
    [(SASPresentationManager *)v8 _buildPresentationOptionsWithRequestOptions:v6, uiPresentationIdentifier];
  }

  isVisualIntelligenceRequest = [optionsCopy isVisualIntelligenceRequest];
  v10 = *v7;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(SASPresentationManager *)isVisualIntelligenceRequest _buildPresentationOptionsWithRequestOptions:v10];
  }

  saeAvailable = [MEMORY[0x1E698D258] saeAvailable];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__SASPresentationManager__buildPresentationOptionsWithRequestOptions___block_invoke;
  v15[3] = &unk_1E82F3E00;
  v18 = isVisualIntelligenceRequest & 1 | ((saeAvailable & 1) == 0);
  v19 = 1;
  v16 = optionsCopy;
  v17 = v6;
  v12 = optionsCopy;
  v13 = [(SiriPresentationOptions *)v4 mutatedCopyWithMutator:v15];

  return v13;
}

void __70__SASPresentationManager__buildPresentationOptionsWithRequestOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setShouldDeactivateScenesBelow:v3];
  [v4 setWakeScreen:*(a1 + 49)];
  [v4 setRotationStyle:*(a1 + 40)];
  [v4 setRequestSource:{objc_msgSend(*(a1 + 32), "requestSource")}];
  [v4 setInputType:{objc_msgSend(*(a1 + 32), "inputType")}];
  v5 = [*(a1 + 32) launchActions];
  [v4 setLaunchActions:v5];
}

- (void)startingPresentations_cancelPendingActivationWithReason:(unint64_t)reason
{
  v4 = [[SiriPresentationActivationCancelReasonTransport alloc] initWithSiriPresentationActivationCancelReason:reason];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__SASPresentationManager_startingPresentations_cancelPendingActivationWithReason___block_invoke;
  aBlock[3] = &unk_1E82F3E28;
  v8 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  [(SASPresentationManager *)self _sendBlockToStartingPresentations:v6];
}

void __82__SASPresentationManager_startingPresentations_cancelPendingActivationWithReason___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 connection];
  v3 = [v4 remoteTarget];
  [v3 cancelPendingActivationEventWithReason:*(a1 + 32)];
}

- (void)activeAndStartingPresentations_updateCurrentLockState:(unint64_t)state
{
  v4 = [[SASLockStateTransport alloc] initWithSASLockState:state];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__SASPresentationManager_activeAndStartingPresentations_updateCurrentLockState___block_invoke;
  aBlock[3] = &unk_1E82F3E28;
  v8 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  [(SASPresentationManager *)self _sendBlockToActivePresentations:v6];
  [(SASPresentationManager *)self _sendBlockToStartingPresentations:v6];
}

void __80__SASPresentationManager_activeAndStartingPresentations_updateCurrentLockState___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 connection];
  v3 = [v4 remoteTarget];
  [v3 updateCurrentLockState:*(a1 + 32)];
}

- (void)startingAndActiveAndStoppingPresentations_presentationDismissalRequestedWithOptions:(id)options
{
  optionsCopy = options;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__SASPresentationManager_startingAndActiveAndStoppingPresentations_presentationDismissalRequestedWithOptions___block_invoke;
  aBlock[3] = &unk_1E82F3E28;
  v8 = optionsCopy;
  v5 = optionsCopy;
  v6 = _Block_copy(aBlock);
  [(SASPresentationManager *)self _sendBlockToStartingPresentations:v6];
  [(SASPresentationManager *)self _sendBlockToActivePresentations:v6];
  [(SASPresentationManager *)self _sendBlockToStoppingPresentations:v6];
  [(SASPresentationManager *)self _offButRequestedDismissalSignals_presentationDismissalRequestedWithOptions:v5];
}

void __110__SASPresentationManager_startingAndActiveAndStoppingPresentations_presentationDismissalRequestedWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 connection];
  v3 = [v4 remoteTarget];
  [v3 presentationDismissalRequestedWithOptions:*(a1 + 32)];
}

- (void)_offButRequestedDismissalSignals_presentationDismissalRequestedWithOptions:(id)options
{
  v33 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    currentThread = [v7 currentThread];
    *buf = 136315394;
    v30 = "[SASPresentationManager _offButRequestedDismissalSignals_presentationDismissalRequestedWithOptions:]";
    v31 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[SASPresentationManager _offButRequestedDismissalSignals_presentationDismissalRequestedWithOptions:]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allValues = [(NSMutableDictionary *)self->_presentations allValues];
  v12 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if (![v16 requestState])
        {
          configuration = [v16 configuration];
          desiresDismissalSignalsEvenWhenOff = [configuration desiresDismissalSignalsEvenWhenOff];

          if (desiresDismissalSignalsEvenWhenOff)
          {
            presentationServer = [v16 presentationServer];
            connection = [presentationServer connection];
            remoteTarget = [connection remoteTarget];
            [remoteTarget presentationDismissalRequestedWithOptions:optionsCopy];
          }
        }
      }

      v13 = [allValues countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&presentationsLock);
  v22 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v30 = "[SASPresentationManager _offButRequestedDismissalSignals_presentationDismissalRequestedWithOptions:]";
    _os_log_impl(&dword_1C8137000, v22, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __79__SASPresentationManager_activePresentations_bulletinManagerDidChangeBulletins__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v2 = [v3 remoteTarget];
  [v2 bulletinManagerDidChangeBulletins];
}

- (BOOL)activePresentationsAreIdleAndQuiet
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698D0A0];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x1E696AF00];
    v6 = v4;
    currentThread = [v5 currentThread];
    qualityOfService = [currentThread qualityOfService];
    *buf = 136315394;
    v31 = "[SASPresentationManager activePresentationsAreIdleAndQuiet]";
    v32 = 2048;
    v33 = qualityOfService;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v9 = *v3;
  v10 = &off_1C818F000;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[SASPresentationManager activePresentationsAreIdleAndQuiet]";
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allValues = [(NSMutableDictionary *)self->_presentations allValues];
  v12 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if ([v16 requestState] == 3)
        {
          presentationServer = [v16 presentationServer];
          connection = [presentationServer connection];
          remoteTarget = [connection remoteTarget];
          presentationisIdleAndQuiet = [remoteTarget presentationisIdleAndQuiet];

          if (!presentationisIdleAndQuiet)
          {
            v21 = 0;
            goto LABEL_16;
          }
        }
      }

      v13 = [allValues countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v21 = 1;
LABEL_16:
    v10 = &off_1C818F000;
  }

  else
  {
    v21 = 1;
  }

  os_unfair_lock_unlock(&presentationsLock);
  v22 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = *(v10 + 207);
    v31 = "[SASPresentationManager activePresentationsAreIdleAndQuiet]";
    _os_log_impl(&dword_1C8137000, v22, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

+ (BOOL)_canTransitionFromState:(int64_t)state toState:(int64_t)toState presentationIdentifier:(int64_t)identifier
{
  if (toState <= 1)
  {
    if (!toState)
    {
      return [self _canTransitionToOffFromState:{state, 0, identifier}];
    }

    if (toState == 1)
    {
      return [self _canTransitionToHeatedFromState:{state, 1, identifier}];
    }
  }

  else
  {
    switch(toState)
    {
      case 2:
        return [self _canTransitionToStartingFromState:{state, 2, identifier}];
      case 3:
        return [self _canTransitionToActiveFromState:state presentationIdentifier:identifier];
      case 4:
        return [self _canTransitionToStoppingFromState:{state, 4, identifier}];
    }
  }

  return 0;
}

+ (BOOL)_canTransitionToActiveFromState:(int64_t)state presentationIdentifier:(int64_t)identifier
{
  if (state < 2)
  {
    return 0;
  }

  if (state == 4)
  {
    return identifier == 4;
  }

  return state != 3;
}

- (void)_transitionPresentationWithPresentationIdentifier:(int64_t)identifier toState:(int64_t)state
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:?];
  v8 = MEMORY[0x1E698D0A0];
  v9 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AF00];
    v11 = v9;
    currentThread = [v10 currentThread];
    v34 = 136315394;
    v35 = "[SASPresentationManager _transitionPresentationWithPresentationIdentifier:toState:]";
    v36 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", &v34, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v13 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 136315138;
    v35 = "[SASPresentationManager _transitionPresentationWithPresentationIdentifier:toState:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", &v34, 0xCu);
  }

  v14 = [(NSMutableDictionary *)self->_presentations objectForKey:v7];
  v15 = v14;
  if (!v14)
  {
    v23 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315394;
      v35 = "[SASPresentationManager _transitionPresentationWithPresentationIdentifier:toState:]";
      v36 = 2112;
      qualityOfService = v7;
      _os_log_impl(&dword_1C8137000, v23, OS_LOG_TYPE_DEFAULT, "%s #activation presentation with identifier %@ isn't registered", &v34, 0x16u);
    }

    os_unfair_lock_unlock(&presentationsLock);
    v24 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315138;
      v35 = "[SASPresentationManager _transitionPresentationWithPresentationIdentifier:toState:]";
      _os_log_impl(&dword_1C8137000, v24, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", &v34, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_presentationManagerDelegate);
    v26 = WeakRetained;
    selfCopy2 = self;
    v28 = 1;
    goto LABEL_26;
  }

  v16 = +[SASPresentationManager _canTransitionFromState:toState:presentationIdentifier:](SASPresentationManager, "_canTransitionFromState:toState:presentationIdentifier:", [v14 requestState], state, identifier);
  v17 = *v8;
  v18 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
  if (!v16)
  {
    if (v18)
    {
      v29 = v17;
      v30 = SASRequestStateGetName(state);
      v31 = SASRequestStateGetName([v15 requestState]);
      v34 = 136315906;
      v35 = "[SASPresentationManager _transitionPresentationWithPresentationIdentifier:toState:]";
      v36 = 2112;
      qualityOfService = v7;
      v38 = 2112;
      v39 = v30;
      v40 = 2112;
      v41 = v31;
      _os_log_impl(&dword_1C8137000, v29, OS_LOG_TYPE_DEFAULT, "%s #activation presentation with identifier %@ can't transition to state: %@ from state: %@", &v34, 0x2Au);
    }

    os_unfair_lock_unlock(&presentationsLock);
    v32 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 136315138;
      v35 = "[SASPresentationManager _transitionPresentationWithPresentationIdentifier:toState:]";
      _os_log_impl(&dword_1C8137000, v32, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", &v34, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_presentationManagerDelegate);
    v26 = WeakRetained;
    selfCopy2 = self;
    v28 = 0;
LABEL_26:
    [WeakRetained presentationManager:selfCopy2 didEncounterError:v28];

    goto LABEL_27;
  }

  if (v18)
  {
    v19 = v17;
    v20 = SASRequestStateGetName([v15 requestState]);
    v21 = SASRequestStateGetName(state);
    v34 = 136315906;
    v35 = "[SASPresentationManager _transitionPresentationWithPresentationIdentifier:toState:]";
    v36 = 2112;
    qualityOfService = v7;
    v38 = 2112;
    v39 = v20;
    v40 = 2112;
    v41 = v21;
    _os_log_impl(&dword_1C8137000, v19, OS_LOG_TYPE_DEFAULT, "%s #activation %@: transitioning from %@ to %@", &v34, 0x2Au);
  }

  [v15 setRequestState:state];
  if (state == 3)
  {
    [v15 flushEnqueuedButtonEventCompletions];
  }

  os_unfair_lock_unlock(&presentationsLock);
  v22 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 136315138;
    v35 = "[SASPresentationManager _transitionPresentationWithPresentationIdentifier:toState:]";
    _os_log_impl(&dword_1C8137000, v22, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", &v34, 0xCu);
  }

  [(SASPresentationManager *)self _requestStateDidChange];
  if (state)
  {
    if (state == 2)
    {
      [(SASPresentationManager *)self _setupPingTimerForPresentationIdentifier:identifier];
    }
  }

  else
  {
    [(SASPresentationManager *)self _teardownPingTimerForPresentationIdentifier:identifier];
  }

LABEL_27:

  v33 = *MEMORY[0x1E69E9840];
}

- (void)_presentationsLock_nextPresentationToActivateDidChange:(int64_t)change
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)self->_presentations allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 siriPresentationIdentifier] != 3)
        {
          v11 = [(NSMutableDictionary *)self->_presentations objectForKey:v10];
          [(SASPresentationManager *)self _informPresentationOfPresentationWithPriority:v11 nextPresentationToActivate:change];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_informPresentationOfPresentationWithPriority:(id)priority nextPresentationToActivate:(int64_t)activate
{
  priorityCopy = priority;
  v9 = [[SiriPresentationIdentifierTransport alloc] initWithSiriPresentationIdentifier:activate];
  presentationServer = [priorityCopy presentationServer];

  connection = [presentationServer connection];
  remoteTarget = [connection remoteTarget];
  [remoteTarget presentationActivationPriorityDidChange:v9];
}

- (void)presentationRequestedWithPresentationIdentifier:(int64_t)identifier presentationOptions:(id)options requestOptions:(id)requestOptions
{
  optionsCopy = options;
  requestOptionsCopy = requestOptions;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __109__SASPresentationManager_presentationRequestedWithPresentationIdentifier_presentationOptions_requestOptions___block_invoke;
  v16 = &unk_1E82F3DD8;
  v17 = optionsCopy;
  v18 = requestOptionsCopy;
  v10 = requestOptionsCopy;
  v11 = optionsCopy;
  v12 = _Block_copy(&v13);
  [(SASPresentationManager *)self _sendBlock:v12 toPresentationWithPresentationIdentifier:identifier, v13, v14, v15, v16];
}

void __109__SASPresentationManager_presentationRequestedWithPresentationIdentifier_presentationOptions_requestOptions___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 connection];
  v3 = [v4 remoteTarget];
  [v3 presentationRequestedWithPresentationOptions:*(a1 + 32) requestOptions:*(a1 + 40)];
}

- (void)presentationWithPresentationIdentifier:(int64_t)identifier activationDeterminedShouldDeferWake:(BOOL)wake
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__SASPresentationManager_presentationWithPresentationIdentifier_activationDeterminedShouldDeferWake___block_invoke;
  aBlock[3] = &__block_descriptor_33_e31_v16__0__SASPresentationServer_8l;
  wakeCopy = wake;
  v6 = _Block_copy(aBlock);
  [(SASPresentationManager *)self _sendBlock:v6 toPresentationWithPresentationIdentifier:identifier];
}

void __101__SASPresentationManager_presentationWithPresentationIdentifier_activationDeterminedShouldDeferWake___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 connection];
  v3 = [v5 remoteTarget];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  [v3 activationDeterminedShouldDeferWake:v4];
}

- (void)presentationWithPresentationIdentifierWakeScreenAfterActivation:(int64_t)activation reason:(id)reason
{
  reasonCopy = reason;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__SASPresentationManager_presentationWithPresentationIdentifierWakeScreenAfterActivation_reason___block_invoke;
  aBlock[3] = &unk_1E82F3E28;
  v10 = reasonCopy;
  v7 = reasonCopy;
  v8 = _Block_copy(aBlock);
  [(SASPresentationManager *)self _sendBlock:v8 toPresentationWithPresentationIdentifier:activation];
}

void __97__SASPresentationManager_presentationWithPresentationIdentifierWakeScreenAfterActivation_reason___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 connection];
  v3 = [v4 remoteTarget];
  [v3 wakeScreenAfterActivationWithReason:*(a1 + 32)];
}

- (void)_setupPingTimerForPresentationIdentifier:(int64_t)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:?];
  v6 = MEMORY[0x1E698D0A0];
  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x1E696AF00];
    v9 = v7;
    currentThread = [v8 currentThread];
    *buf = 136315394;
    v31 = "[SASPresentationManager _setupPingTimerForPresentationIdentifier:]";
    v32 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v11 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[SASPresentationManager _setupPingTimerForPresentationIdentifier:]";
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
  }

  v12 = [(NSMutableDictionary *)self->_presentations objectForKey:v5];
  v13 = v12;
  if (v12)
  {
    if (+[SASPresentationManager _shouldKeepPingingForRequestState:](SASPresentationManager, "_shouldKeepPingingForRequestState:", [v12 requestState]))
    {
      objc_initWeak(buf, self);
      v14 = MEMORY[0x1E695DFF0];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __67__SASPresentationManager__setupPingTimerForPresentationIdentifier___block_invoke;
      v27[3] = &unk_1E82F3E90;
      v15 = v13;
      v28 = v15;
      objc_copyWeak(v29, buf);
      v29[1] = identifier;
      v16 = [v14 timerWithTimeInterval:0 repeats:v27 block:1.0];
      pingTimer = [v15 pingTimer];
      [pingTimer invalidate];

      [v15 setPingTimer:v16];
      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      [currentRunLoop addTimer:v16 forMode:*MEMORY[0x1E695DA28]];

      objc_destroyWeak(v29);
      objc_destroyWeak(buf);
    }

    else
    {
      v22 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = SASRequestStateGetName([v13 requestState]);
        *buf = 136315650;
        v31 = "[SASPresentationManager _setupPingTimerForPresentationIdentifier:]";
        v32 = 2112;
        qualityOfService = v5;
        v34 = 2112;
        v35 = v24;
        _os_log_impl(&dword_1C8137000, v23, OS_LOG_TYPE_DEFAULT, "%s #pingpong not returning ping because presentation with identifier %@ is in request state %@", buf, 0x20u);
      }
    }

    os_unfair_lock_unlock(&presentationsLock);
    v25 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[SASPresentationManager _setupPingTimerForPresentationIdentifier:]";
      _os_log_impl(&dword_1C8137000, v25, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
    }
  }

  else
  {
    v19 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "[SASPresentationManager _setupPingTimerForPresentationIdentifier:]";
      v32 = 2112;
      qualityOfService = v5;
      _os_log_impl(&dword_1C8137000, v19, OS_LOG_TYPE_DEFAULT, "%s #activation presentation with identifier %@ isn't registered", buf, 0x16u);
    }

    os_unfair_lock_unlock(&presentationsLock);
    v20 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[SASPresentationManager _setupPingTimerForPresentationIdentifier:]";
      _os_log_impl(&dword_1C8137000, v20, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_presentationManagerDelegate);
    [WeakRetained presentationManager:self didEncounterError:3];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __67__SASPresentationManager__setupPingTimerForPresentationIdentifier___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 presentationServer];
    v6 = [*(a1 + 32) presentationServer];
    v7 = [v6 connection];
    v8 = [*(a1 + 32) presentationServer];
    v9 = [v8 connection];
    v10 = [v9 remoteTarget];
    v16 = 136316162;
    v17 = "[SASPresentationManager _setupPingTimerForPresentationIdentifier:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #pingpong sending ping and waiting for pong - model: %@ | server: %@ | connection: %@ | remoteTarget: %@", &v16, 0x34u);
  }

  v11 = [*(a1 + 32) presentationServer];
  v12 = [v11 connection];
  v13 = [v12 remoteTarget];
  [v13 ping];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _waitForPongFromPresentationWithPresentationIdentifier:*(a1 + 48)];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_waitForPongFromPresentationWithPresentationIdentifier:(int64_t)identifier
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:identifier];
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    currentThread = [v7 currentThread];
    *buf = 136315394;
    v27 = "[SASPresentationManager _waitForPongFromPresentationWithPresentationIdentifier:]";
    v28 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[SASPresentationManager _waitForPongFromPresentationWithPresentationIdentifier:]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
  }

  v11 = [(NSMutableDictionary *)self->_presentations objectForKey:v4];
  if (v11)
  {
    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E695DFF0];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __81__SASPresentationManager__waitForPongFromPresentationWithPresentationIdentifier___block_invoke;
    v23 = &unk_1E82F3EB8;
    objc_copyWeak(&v24, &location);
    v13 = [v12 scheduledTimerWithTimeInterval:0 repeats:&v20 block:2.0];
    pingTimer = [v11 pingTimer];
    [pingTimer invalidate];

    [v11 setPingTimer:v13];
    os_unfair_lock_unlock(&presentationsLock);
    v15 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[SASPresentationManager _waitForPongFromPresentationWithPresentationIdentifier:]";
      _os_log_impl(&dword_1C8137000, v15, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[SASPresentationManager _waitForPongFromPresentationWithPresentationIdentifier:]";
      v28 = 2112;
      qualityOfService = v4;
      _os_log_impl(&dword_1C8137000, v16, OS_LOG_TYPE_DEFAULT, "%s #activation presentation with identifier %@ isn't registered", buf, 0x16u);
    }

    os_unfair_lock_unlock(&presentationsLock);
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v27 = "[SASPresentationManager _waitForPongFromPresentationWithPresentationIdentifier:]";
      _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_presentationManagerDelegate);
    [WeakRetained presentationManager:self didEncounterError:3];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __81__SASPresentationManager__waitForPongFromPresentationWithPresentationIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      __81__SASPresentationManager__waitForPongFromPresentationWithPresentationIdentifier___block_invoke_cold_1(v2);
    }

    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 presentationManager:WeakRetained didEncounterError:5];

    [WeakRetained _forceAllPresentationsOff];
  }
}

- (void)_teardownPingTimerForPresentationIdentifier:(int64_t)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[SASPresentationManager _teardownPingTimerForPresentationIdentifier:]";
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #pingpong", &v22, 0xCu);
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithSiriPresentationIdentifier:identifier];
  v8 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x1E696AF00];
    v10 = v8;
    currentThread = [v9 currentThread];
    qualityOfService = [currentThread qualityOfService];
    v22 = 136315394;
    v23 = "[SASPresentationManager _teardownPingTimerForPresentationIdentifier:]";
    v24 = 2048;
    v25 = qualityOfService;
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", &v22, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v13 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[SASPresentationManager _teardownPingTimerForPresentationIdentifier:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", &v22, 0xCu);
  }

  v14 = [(NSMutableDictionary *)self->_presentations objectForKey:v7];
  v15 = v14;
  if (v14)
  {
    pingTimer = [v14 pingTimer];
    [pingTimer invalidate];

    [v15 setPingTimer:0];
    os_unfair_lock_unlock(&presentationsLock);
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[SASPresentationManager _teardownPingTimerForPresentationIdentifier:]";
      _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", &v22, 0xCu);
    }
  }

  else
  {
    v18 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315394;
      v23 = "[SASPresentationManager _teardownPingTimerForPresentationIdentifier:]";
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_1C8137000, v18, OS_LOG_TYPE_DEFAULT, "%s #activation presentation with identifier %@ isn't registered", &v22, 0x16u);
    }

    os_unfair_lock_unlock(&presentationsLock);
    v19 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136315138;
      v23 = "[SASPresentationManager _teardownPingTimerForPresentationIdentifier:]";
      _os_log_impl(&dword_1C8137000, v19, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", &v22, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_presentationManagerDelegate);
    [WeakRetained presentationManager:self didEncounterError:4];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)pongWithPresentationIdentifier:(int64_t)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = [v6 stringWithSiriPresentationIdentifier:identifier];
    v10 = 136315394;
    v11 = "[SASPresentationManager pongWithPresentationIdentifier:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #pingpong received pong with presentation identifier: %@", &v10, 0x16u);
  }

  [(SASPresentationManager *)self _setupPingTimerForPresentationIdentifier:identifier];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_forceAllPresentationsOff
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698D0A0];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[SASPresentationManager _forceAllPresentationsOff]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s #pingpong", buf, 0xCu);
  }

  v5 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AF00];
    v7 = v5;
    currentThread = [v6 currentThread];
    qualityOfService = [currentThread qualityOfService];
    *buf = 136315394;
    v28 = "[SASPresentationManager _forceAllPresentationsOff]";
    v29 = 2048;
    v30 = qualityOfService;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v10 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[SASPresentationManager _forceAllPresentationsOff]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allValues = [(NSMutableDictionary *)self->_presentations allValues];
  v12 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ([v16 requestState] == 1)
        {
          presentationServer = [v16 presentationServer];
          connection = [presentationServer connection];
          remoteTarget = [connection remoteTarget];
          [remoteTarget cancelPreheat];
        }

        [v16 setRequestState:0];
      }

      v13 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&presentationsLock);
  v20 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[SASPresentationManager _forceAllPresentationsOff]";
    _os_log_impl(&dword_1C8137000, v20, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
  }

  [(SASPresentationManager *)self _requestStateDidChange];
  v21 = *MEMORY[0x1E69E9840];
}

- (void)presentationDidUpdateState:(id)state
{
  v37 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = MEMORY[0x1E698D0A0];
  v6 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AF00];
    v8 = v6;
    currentThread = [v7 currentThread];
    *buf = 136315394;
    v34 = "[SASPresentationManager presentationDidUpdateState:]";
    v35 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[SASPresentationManager presentationDidUpdateState:]";
    _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
  }

  presentations = self->_presentations;
  presentationIdentifier = [stateCopy presentationIdentifier];
  v13 = [(NSMutableDictionary *)presentations objectForKey:presentationIdentifier];

  v27 = v13;
  [v13 setPresentationState:stateCopy];
  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  allKeys = [(NSMutableDictionary *)self->_presentations allKeys];
  v17 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      v20 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(allKeys);
        }

        v21 = *(*(&v28 + 1) + 8 * v20);
        presentationIdentifier2 = [stateCopy presentationIdentifier];
        v23 = [presentationIdentifier2 isEqualToString:v21];

        if ((v23 & 1) == 0)
        {
          [array addObject:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

  presentationIdentifier3 = [stateCopy presentationIdentifier];
  [(SASPresentationManager *)selfCopy _presentationsLock_broadcastPresentationStateForIdentifier:presentationIdentifier3 presentationState:stateCopy presentationIdentifiersToInform:array];

  os_unfair_lock_unlock(&presentationsLock);
  v25 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[SASPresentationManager presentationDidUpdateState:]";
    _os_log_impl(&dword_1C8137000, v25, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)presentationDidUpdateConfiguration:(id)configuration
{
  v92 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v4 = MEMORY[0x1E698D0A0];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x1E696AF00];
    v7 = v5;
    currentThread = [v6 currentThread];
    *buf = 136315394;
    v89 = "[SASPresentationManager presentationDidUpdateConfiguration:]";
    v90 = 2048;
    qualityOfService = [currentThread qualityOfService];
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock about to lock with qos: %zd", buf, 0x16u);
  }

  os_unfair_lock_lock(&presentationsLock);
  v9 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v89 = "[SASPresentationManager presentationDidUpdateConfiguration:]";
    _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock successfully locked", buf, 0xCu);
  }

  presentations = self->_presentations;
  presentationIdentifier = [configurationCopy presentationIdentifier];
  v12 = [(NSMutableDictionary *)presentations objectForKey:presentationIdentifier];

  configuration = [v12 configuration];
  v49 = v12;
  [v12 setConfiguration:configurationCopy];
  os_unfair_lock_unlock(&presentationsLock);
  v13 = *v4;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v89 = "[SASPresentationManager presentationDidUpdateConfiguration:]";
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #activation #locks #noisy presentationsLock unlocked", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v50 = configurationCopy;
  obj = [configurationCopy sourceActiveOverridePreference];
  v15 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v79;
    do
    {
      v18 = 0;
      do
      {
        if (*v79 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v78 + 1) + 8 * v18);
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        sourceActiveOverridePreference = [configuration sourceActiveOverridePreference];
        v21 = [sourceActiveOverridePreference countByEnumeratingWithState:&v74 objects:v86 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v75;
          do
          {
            v24 = 0;
            do
            {
              if (*v75 != v23)
              {
                objc_enumerationMutation(sourceActiveOverridePreference);
              }

              siriButtonIdentifier = [*(*(&v74 + 1) + 8 * v24) siriButtonIdentifier];
              if (siriButtonIdentifier == [v19 siriButtonIdentifier])
              {
                [array addObject:v19];
              }

              ++v24;
            }

            while (v22 != v24);
            v22 = [sourceActiveOverridePreference countByEnumeratingWithState:&v74 objects:v86 count:16];
          }

          while (v22);
        }

        ++v18;
      }

      while (v18 != v16);
      v16 = [obj countByEnumeratingWithState:&v78 objects:v87 count:16];
    }

    while (v16);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  sourceActiveOverridePreference2 = [v50 sourceActiveOverridePreference];
  v26 = [sourceActiveOverridePreference2 countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v26)
  {
    v27 = v26;
    obja = *v71;
    do
    {
      v28 = 0;
      do
      {
        if (*v71 != obja)
        {
          objc_enumerationMutation(sourceActiveOverridePreference2);
        }

        v29 = *(*(&v70 + 1) + 8 * v28);
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        WeakRetained = array;
        v31 = [WeakRetained countByEnumeratingWithState:&v66 objects:v84 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v67;
LABEL_30:
          v34 = 0;
          while (1)
          {
            if (*v67 != v33)
            {
              objc_enumerationMutation(WeakRetained);
            }

            v35 = *(*(&v66 + 1) + 8 * v34);
            siriButtonIdentifier2 = [v29 siriButtonIdentifier];
            if (siriButtonIdentifier2 == [v35 siriButtonIdentifier])
            {
              break;
            }

            if (v32 == ++v34)
            {
              v32 = [WeakRetained countByEnumeratingWithState:&v66 objects:v84 count:16];
              if (v32)
              {
                goto LABEL_30;
              }

              goto LABEL_36;
            }
          }
        }

        else
        {
LABEL_36:

          WeakRetained = objc_loadWeakRetained(&self->_presentationManagerDelegate);
          [WeakRetained presentationManager:self updateButtonSourceActiveOverride:objc_msgSend(v29 activeOverride:{"siriButtonIdentifier"), 1}];
        }

        ++v28;
      }

      while (v28 != v27);
      v27 = [sourceActiveOverridePreference2 countByEnumeratingWithState:&v70 objects:v85 count:16];
    }

    while (v27);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  sourceActiveOverridePreference3 = [configuration sourceActiveOverridePreference];
  v37 = [sourceActiveOverridePreference3 countByEnumeratingWithState:&v62 objects:v83 count:16];
  if (v37)
  {
    v38 = v37;
    objb = *v63;
    do
    {
      v39 = 0;
      do
      {
        if (*v63 != objb)
        {
          objc_enumerationMutation(sourceActiveOverridePreference3);
        }

        v40 = *(*(&v62 + 1) + 8 * v39);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v41 = array;
        v42 = [v41 countByEnumeratingWithState:&v58 objects:v82 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v59;
LABEL_46:
          v45 = 0;
          while (1)
          {
            if (*v59 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v58 + 1) + 8 * v45);
            siriButtonIdentifier3 = [v40 siriButtonIdentifier];
            if (siriButtonIdentifier3 == [v46 siriButtonIdentifier])
            {
              break;
            }

            if (v43 == ++v45)
            {
              v43 = [v41 countByEnumeratingWithState:&v58 objects:v82 count:16];
              if (v43)
              {
                goto LABEL_46;
              }

              goto LABEL_52;
            }
          }
        }

        else
        {
LABEL_52:

          v41 = objc_loadWeakRetained(&self->_presentationManagerDelegate);
          [v41 presentationManager:self updateButtonSourceActiveOverride:objc_msgSend(v40 activeOverride:{"siriButtonIdentifier"), 0}];
        }

        ++v39;
      }

      while (v39 != v38);
      v38 = [sourceActiveOverridePreference3 countByEnumeratingWithState:&v62 objects:v83 count:16];
    }

    while (v38);
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (void)_presentationsLock_broadcastPresentationStateForIdentifier:(id)identifier presentationState:(id)state presentationIdentifiersToInform:(id)inform
{
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  stateCopy = state;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = inform;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v26;
    *&v10 = 136315906;
    v22 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v15 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = v22;
          v30 = "[SASPresentationManager _presentationsLock_broadcastPresentationStateForIdentifier:presentationState:presentationIdentifiersToInform:]";
          v31 = 2112;
          v32 = v14;
          v33 = 2112;
          v34 = identifierCopy;
          v35 = 2112;
          v36 = stateCopy;
          _os_log_impl(&dword_1C8137000, v15, OS_LOG_TYPE_DEFAULT, "%s Sending <%@>'s state --> <%@>: %@", buf, 0x2Au);
        }

        v16 = [(NSMutableDictionary *)self->_presentations objectForKey:v14, v22];
        v17 = -[SiriPresentationIdentifierTransport initWithSiriPresentationIdentifier:]([SiriPresentationIdentifierTransport alloc], "initWithSiriPresentationIdentifier:", [identifierCopy siriPresentationIdentifier]);
        presentationServer = [v16 presentationServer];
        connection = [presentationServer connection];
        remoteTarget = [connection remoteTarget];
        [remoteTarget presentationWithIdentifier:v17 didUpdatePresentationState:stateCopy];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)registerSiriPresentation:withIdentifier:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C8137000, v0, v1, "%s #activation Registration of '%@' when it is already connected. Removing.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)unregisterSiriPresentationWithIdentifier:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C8137000, v0, v1, "%s #activation Unregister request of '%@' when it is not connected.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)preheatNextPresentationToActivateWithOptions:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = SASRequestStateGetName([a3 requestState]);
  v8 = 136315650;
  v9 = "[SASPresentationManager preheatNextPresentationToActivateWithOptions:]";
  v10 = 2112;
  v11 = a1;
  v12 = 2112;
  v13 = v6;
  _os_log_error_impl(&dword_1C8137000, v5, OS_LOG_TYPE_ERROR, "%s #activation #preheat tried to preheat %@ but it's request state is %@", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)preheatNextPresentationToActivateWithOptions:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C8137000, v0, v1, "%s #activation #preheat tried to preheat %@ but it's not a registered presentation", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_sendBlock:toPresentationWithPresentationIdentifier:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_1C8137000, v0, v1, "%s #activation presentation with identifier %@ isn't registered", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_buildPresentationOptionsWithRequestOptions:(uint64_t)a3 .cold.1(void *a1, unint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = SiriPresentationRotationStyleGetName(a2);
  v9[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v10 = v7;
  v11 = a3;
  _os_log_debug_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEBUG, "%s #activation Setting rotation style for presentation { rotationStyle: %@, presentation: %@ }", v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_buildPresentationOptionsWithRequestOptions:(char)a1 .cold.2(char a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[SASPresentationManager _buildPresentationOptionsWithRequestOptions:]";
  v5 = 1024;
  v6 = a1 & 1;
  _os_log_debug_impl(&dword_1C8137000, a2, OS_LOG_TYPE_DEBUG, "%s #activation is Visual Intelligence Launch: %d", &v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

void __81__SASPresentationManager__waitForPongFromPresentationWithPresentationIdentifier___block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[SASPresentationManager _waitForPongFromPresentationWithPresentationIdentifier:]_block_invoke";
  _os_log_error_impl(&dword_1C8137000, log, OS_LOG_TYPE_ERROR, "%s #pingpong timed out waiting for pong", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end