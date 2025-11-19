@interface SOSFlow
+ (id)validEventsforState:(int64_t)a3;
+ (unint64_t)sosFlowTypeForTriggerMechanism:(int64_t)a3;
- (BOOL)shouldShowMedicalID;
- (SOSFlow)initWithTriggerMechanism:(int64_t)a3 healthStore:(id)a4;
- (double)checkInTimeoutForSOSFlowType:(unint64_t)a3;
- (int64_t)restingState;
- (void)_invalidateTimer;
- (void)_prefetchMedicalID;
- (void)addObserver:(id)a3;
- (void)callFinished;
- (void)clearFlowStateHeartbeatTimer;
- (void)contactsCountdownDismissed;
- (void)countdownRequestedDial;
- (void)eventTriggered;
- (void)handleEmergencyCallInititated;
- (void)handleSOSFlowEvent:(unint64_t)a3 withMetaData:(id)a4;
- (void)motionDidCancel;
- (void)removeObserver:(id)a3;
- (void)startAnomalyFlow;
- (void)startFlowStateHeartbeatTimer;
- (void)startTimerToAutoDial;
- (void)timerFired:(id)a3;
- (void)updateState:(int64_t)a3;
- (void)userRespondedToConfirmationWith:(unint64_t)a3;
- (void)userRespondedToRestingStateWith:(int64_t)a3;
- (void)willHandleEvent:(unint64_t)a3 withMetaData:(id)a4;
@end

@implementation SOSFlow

- (SOSFlow)initWithTriggerMechanism:(int64_t)a3 healthStore:(id)a4
{
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SOSFlow;
  v8 = [(SOSFlow *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_sosFlowTrigger = a3;
    v8->_sosFlowType = [SOSFlow sosFlowTypeForTriggerMechanism:a3];
    v9->_currentState = 14;
    v10 = objc_alloc(MEMORY[0x277CBEBD0]);
    v11 = [v10 initWithSuiteName:*MEMORY[0x277CCE408]];
    healthUserDefaults = v9->_healthUserDefaults;
    v9->_healthUserDefaults = v11;

    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = v13;

    v9->_isUserResponsive = [SOSFlow isTriggerMechanismUserInitiated:a3];
    v9->_shouldIgnoreMotionCancel = 0;
    objc_storeStrong(&v9->_healthStore, a4);
    medicalIDData = v9->_medicalIDData;
    v9->_medicalIDData = 0;

    v9->_didSeeUnresponsiveResting = 0;
    [(SOSFlow *)v9 _prefetchMedicalID];
    v16 = +[SOSCoreAnalyticsReporter sharedInstance];
    coreAnalyticsReporter = v9->_coreAnalyticsReporter;
    v9->_coreAnalyticsReporter = v16;
  }

  return v9;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SOSFlow *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SOSFlow *)self observers];
  [v5 removeObject:v4];
}

- (void)handleSOSFlowEvent:(unint64_t)a3 withMetaData:(id)a4
{
  v6 = a4;
  [(SOSFlow *)self willHandleEvent:a3 withMetaData:v6];
  v7 = [SOSFlow validEventsforState:[(SOSFlow *)self currentState]];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  if ([v7 containsObject:v8])
  {

    goto LABEL_4;
  }

  v9 = [SOSFlow isInterruptingEvent:a3];

  if (v9)
  {
LABEL_4:
    switch(a3)
    {
      case 0uLL:
        [(SOSFlow *)self eventTriggered];
        break;
      case 2uLL:
        [(SOSFlow *)self _invalidateTimer];
        v13 = [v6 objectForKeyedSubscript:&unk_2875D2950];
        v14 = [v13 integerValue];

        [(SOSFlow *)self userRespondedToConfirmationWith:v14];
        break;
      case 3uLL:
        [(SOSFlow *)self userDismissedCallCountdown];
        break;
      case 4uLL:
      case 5uLL:
        [(SOSFlow *)self callFinished];
        break;
      case 6uLL:
        [(SOSFlow *)self countdownRequestedDial];
        break;
      case 7uLL:
        [(SOSFlow *)self contactsCountdownDismissed];
        break;
      case 8uLL:
        v11 = [v6 objectForKeyedSubscript:&unk_2875D2968];
        v12 = [v11 integerValue];

        [(SOSFlow *)self userRespondedToRestingStateWith:v12];
        break;
      case 9uLL:
        [(SOSFlow *)self timerRequestsCountdownToAutoCall];
        break;
      case 0xAuLL:
        [(SOSFlow *)self motionDidCancel];
        break;
      case 0xBuLL:
        [(SOSFlow *)self handleEmergencyFallback];
        break;
      case 0xCuLL:
        [(SOSFlow *)self setShouldIgnoreMotionCancel:1];
        break;
      case 0xDuLL:
        [(SOSFlow *)self handleEmergencyCallInititated];
        break;
      case 0xEuLL:
        [(SOSFlow *)self handleUserExited];
        break;
      default:
        goto LABEL_9;
    }

    goto LABEL_9;
  }

  v10 = sos_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(SOSFlow *)a3 handleSOSFlowEvent:v10 withMetaData:?];
  }

LABEL_9:
}

+ (unint64_t)sosFlowTypeForTriggerMechanism:(int64_t)a3
{
  if (a3 == 7)
  {
    return 2;
  }

  else
  {
    return a3 != 5;
  }
}

- (void)eventTriggered
{
  v3 = [(SOSFlow *)self sosFlowTrigger];
  if (v3 > 8)
  {
    return;
  }

  if (((1 << v3) & 0x158) != 0)
  {
    v5 = self;
    v6 = 3;
    goto LABEL_6;
  }

  v4 = 1 << v3;
  v5 = self;
  if ((v4 & 7) != 0)
  {
    v6 = 2;
LABEL_6:

    [(SOSFlow *)v5 updateState:v6];
    return;
  }

  [(SOSFlow *)self startAnomalyFlow];
}

- (void)startAnomalyFlow
{
  [(SOSFlow *)self startTimerToAutoDial];

  [(SOSFlow *)self updateState:1];
}

- (void)userRespondedToConfirmationWith:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 6;
  }

  [(SOSFlow *)self updateState:v3];
}

- (void)callFinished
{
  if ([(SOSFlow *)self didSeeUnresponsiveResting])
  {
    v3 = 10;
  }

  else
  {
    v4 = objc_alloc_init(SOSContactsManager);
    v5 = [(SOSContactsManager *)v4 hasValidContactsToMessage];

    if (v5)
    {
      v3 = 5;
    }

    else
    {
      v3 = [(SOSFlow *)self restingState];
    }
  }

  [(SOSFlow *)self updateState:v3];
}

- (void)countdownRequestedDial
{
  if (+[SOSUtilities shouldSkipNewtonCall])
  {
    v3 = 7;
  }

  else if ([SOSFlow isTriggerMechanismUserInitiated:[(SOSFlow *)self sosFlowTrigger]])
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  [(SOSFlow *)self updateState:v3];
}

- (void)contactsCountdownDismissed
{
  v3 = [(SOSFlow *)self restingState];

  [(SOSFlow *)self updateState:v3];
}

- (void)motionDidCancel
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(SOSFlow *)self shouldIgnoreMotionCancel])
  {
    v3 = sos_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SOSFlow motionDidCancel]";
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s: Ignoring SOSFlowEventMotionDidCancel", &v6, 0xCu);
    }

    v4 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [(SOSFlow *)self updateState:12];
    v5 = *MEMORY[0x277D85DE8];

    [(SOSFlow *)self _invalidateTimer];
  }
}

- (void)userRespondedToRestingStateWith:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 2:
      v5 = 10;
      goto LABEL_7;
    case 1:
      v5 = 8;
      goto LABEL_7;
    case 0:
      v5 = 3;
LABEL_7:
      [(SOSFlow *)self updateState:v5];
      goto LABEL_11;
  }

  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[SOSFlow userRespondedToRestingStateWith:]";
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "%s: Unexpected SOSResponse from resting state", &v9, 0xCu);
  }

LABEL_11:
  v7 = [(SOSFlow *)self coreAnalyticsReporter];
  [v7 reportSOSRestingResponse:-[SOSFlow sosFlowTrigger](self restingResponse:"sosFlowTrigger") hasMedicalID:{a3, -[SOSFlow shouldShowMedicalID](self, "shouldShowMedicalID")}];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleEmergencyCallInititated
{
  if ([SOSFlow isPreCallState:[(SOSFlow *)self currentState]])
  {

    [(SOSFlow *)self updateState:10];
  }
}

- (void)_prefetchMedicalID
{
  v3 = sos_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(SOSFlow *)v3 _prefetchMedicalID];
  }

  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277CCD5E8]);
  v5 = [(SOSFlow *)self healthStore];
  v6 = [v4 initWithHealthStore:v5];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__SOSFlow__prefetchMedicalID__block_invoke;
  v7[3] = &unk_279B53770;
  objc_copyWeak(&v8, &location);
  [v6 fetchMedicalIDDataWithCompletion:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void __29__SOSFlow__prefetchMedicalID__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 7, a2);
  }
}

- (BOOL)shouldShowMedicalID
{
  if (!self->_medicalIDData)
  {
    return 0;
  }

  v2 = [(SOSFlow *)self healthUserDefaults];
  v3 = [v2 objectForKey:*MEMORY[0x277CCE3E8]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (int64_t)restingState
{
  if ([(SOSFlow *)self sosFlowTrigger]== 7 && ![(SOSFlow *)self isUserResponsive])
  {
    return 9;
  }

  if ([(SOSFlow *)self shouldShowMedicalID])
  {
    return 8;
  }

  return 10;
}

- (void)updateState:(int64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = SOSStringForSOSFlowState(a3);
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSFlow: Updating state to %@", buf, 0xCu);
  }

  [(SOSFlow *)self setCurrentState:a3];
  if ([(SOSFlow *)self currentState]== 9)
  {
    [(SOSFlow *)self setDidSeeUnresponsiveResting:1];
  }

  v7 = +[SOSStatusReporter sharedInstance];
  [v7 updateSOSFlowState:a3];

  [(SOSFlow *)self startFlowStateHeartbeatTimer];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(SOSFlow *)self observers];
  v9 = [v8 copy];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v17 + 1) + 8 * v13++) sosFlow:self didChangeToState:{-[SOSFlow currentState](self, "currentState")}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if ((a3 - 3) <= 1)
  {
    v14 = [(SOSFlow *)self isUserResponsive];
    v15 = a3 == 3 || v14;
    [(SOSFlow *)self setIsUserResponsive:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)willHandleEvent:(unint64_t)a3 withMetaData:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = sos_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sosFlowEventDescription(a3);
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSFlow: Will handle event %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(SOSFlow *)self observers];
  v10 = [v9 copy];

  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) sosFlow:self willHandleEvent:a3 withMetaData:v6];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (double)checkInTimeoutForSOSFlowType:(unint64_t)a3
{
  result = 32.0;
  if (a3 == 2)
  {
    return 10.0;
  }

  return result;
}

- (void)startTimerToAutoDial
{
  v15 = *MEMORY[0x277D85DE8];
  [(SOSFlow *)self checkInTimeoutForSOSFlowType:[(SOSFlow *)self sosFlowType]];
  v4 = v3;
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = v4;
    v13 = 2112;
    v14 = @"com.apple.sos.sosFlow";
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "Starting countdown: %f for service identifier: %@", &v11, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x277D3A180]) initWithTimeInterval:@"com.apple.sos.sosFlow" serviceIdentifier:self target:sel_timerFired_ selector:0 userInfo:v4];
  timer = self->_timer;
  self->_timer = v6;

  [(PCPersistentTimer *)self->_timer setMinimumEarlyFireProportion:1.0];
  v8 = self->_timer;
  v9 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(PCPersistentTimer *)v8 scheduleInRunLoop:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)timerFired:(id)a3
{
  v4 = sos_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "Timer fired for autodial", buf, 2u);
  }

  if ([(SOSFlow *)self canDeviceTriggerAutoDialForSOSFlowType:[(SOSFlow *)self sosFlowType]])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __22__SOSFlow_timerFired___block_invoke;
    block[3] = &unk_279B532A0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v5 = sos_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "Skipping autodial countdown", buf, 2u);
    }
  }
}

uint64_t __22__SOSFlow_timerFired___block_invoke(uint64_t a1)
{
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "Calling SOSFlow countdownRequestedDial", v4, 2u);
  }

  return [*(a1 + 32) timerRequestsCountdownToAutoCall];
}

- (void)_invalidateTimer
{
  if (self->_timer)
  {
    v3 = sos_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating SOSFlow timer", v5, 2u);
    }

    [(PCPersistentTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;
  }
}

- (void)startFlowStateHeartbeatTimer
{
  [(SOSFlow *)self clearFlowStateHeartbeatTimer];
  v3 = [SOSFlow needsHeartbeatForState:[(SOSFlow *)self currentState]];
  v4 = sos_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSFlow,starting flow state heartbeat timer", buf, 2u);
    }

    objc_initWeak(buf, self);
    v6 = MEMORY[0x277CBEBB8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__SOSFlow_startFlowStateHeartbeatTimer__block_invoke;
    v8[3] = &unk_279B53798;
    objc_copyWeak(&v9, buf);
    v7 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:35.0];
    [(SOSFlow *)self setFlowStateHeartbeatTimer:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSFlow,not starting flow state heartbeat timer", buf, 2u);
    }
  }
}

void __39__SOSFlow_startFlowStateHeartbeatTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[SOSFlow needsHeartbeatForState:](SOSFlow, "needsHeartbeatForState:", [WeakRetained currentState]);
  v3 = sos_default_log();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSFlow,sos flow state heartbeat timer fired", v6, 2u);
    }

    v5 = +[SOSStatusReporter sharedInstance];
    [v5 updateSOSFlowState:{objc_msgSend(WeakRetained, "currentState")}];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __39__SOSFlow_startFlowStateHeartbeatTimer__block_invoke_cold_1(v4);
    }

    [WeakRetained clearFlowStateHeartbeatTimer];
  }
}

- (void)clearFlowStateHeartbeatTimer
{
  v3 = [(SOSFlow *)self flowStateHeartbeatTimer];

  if (v3)
  {
    v4 = sos_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSFlow,clearing sos flow state heartbeat timer", v6, 2u);
    }

    v5 = [(SOSFlow *)self flowStateHeartbeatTimer];
    [v5 invalidate];

    [(SOSFlow *)self setFlowStateHeartbeatTimer:0];
  }
}

+ (id)validEventsforState:(int64_t)a3
{
  if ((a3 - 1) > 0xD)
  {
    return &unk_2875D2BA8;
  }

  else
  {
    return qword_279B53828[a3 - 1];
  }
}

- (void)handleSOSFlowEvent:(NSObject *)a3 withMetaData:.cold.1(unint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sosFlowEventDescription(a1);
  v6 = SOSStringForSOSFlowState([a2 currentState]);
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_264323000, a3, OS_LOG_TYPE_ERROR, "Invalid event %@ for current state %@!", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end