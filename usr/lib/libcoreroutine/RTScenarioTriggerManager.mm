@interface RTScenarioTriggerManager
+ (id)scenarioTriggerTypeToNotificationName:(unint64_t)name;
+ (id)settledStateName:(unint64_t)name;
+ (int64_t)settledStateTypeForScenarioTriggerSettledState:(unint64_t)state;
- (RTScenarioTriggerManager)initWithLocationStore:(id)store motionActivityManager:(id)manager platform:(id)platform settledState:(unint64_t)state settledStateTransitionStore:(id)transitionStore wifiFootprintMonitor:(id)monitor;
- (unint64_t)_notificationNameToScenarioTriggerType:(id)type;
- (void)_evaluateSettledState;
- (void)_onMotionActivityManagerNotification:(id)notification;
- (void)_onWiFiFootprintStateNotification:(id)notification;
- (void)_postScenarioTriggerNotification:(id)notification;
- (void)_startMonitoringScenarioTriggerOfType:(unint64_t)type;
- (void)_stopMonitoringScenarioTriggerOfType:(unint64_t)type;
- (void)dealloc;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)onMotionActivityManagerNotification:(id)notification;
- (void)onWiFiFootprintStateNotification:(id)notification;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)postScenarioTriggerNotification:(id)notification;
- (void)setInterestedInConstantFootprint:(unint64_t)footprint;
- (void)setInterestedInSettledState:(unint64_t)state;
- (void)setMonitoredScenarioTriggerTypes:(unint64_t)types;
- (void)setMotionSettledState:(unint64_t)state;
- (void)setSettledState:(unint64_t)state;
- (void)setSettledStateAndSubmitMetricsForSettledState:(unint64_t)state;
- (void)setWiFiFootprintState:(int64_t)state;
- (void)simulateScenarioTrigger:(id)trigger handler:(id)handler;
@end

@implementation RTScenarioTriggerManager

+ (id)settledStateName:(unint64_t)name
{
  v3 = @"Unknown";
  if (name == 2)
  {
    v3 = @"Settled";
  }

  if (name == 1)
  {
    return @"Unsettled";
  }

  else
  {
    return v3;
  }
}

+ (id)scenarioTriggerTypeToNotificationName:(unint64_t)name
{
  v14 = *MEMORY[0x277D85DE8];
  if (name)
  {
    if (name == 2)
    {
      v4 = RTScenarioTriggerManagerNotificationUnsettled;
      goto LABEL_6;
    }

    if (name == 1)
    {
      v4 = RTScenarioTriggerManagerNotificationSettled;
LABEL_6:
      notificationName = [(__objc2_class *)v4 notificationName];
      goto LABEL_11;
    }

    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 134218498;
      nameCopy = name;
      v10 = 2080;
      v11 = "+[RTScenarioTriggerManager scenarioTriggerTypeToNotificationName:]";
      v12 = 1024;
      v13 = 91;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unhandled scenario trigger type, %lu (in %s:%d)", &v8, 0x1Cu);
    }
  }

  notificationName = 0;
LABEL_11:

  return notificationName;
}

- (RTScenarioTriggerManager)initWithLocationStore:(id)store motionActivityManager:(id)manager platform:(id)platform settledState:(unint64_t)state settledStateTransitionStore:(id)transitionStore wifiFootprintMonitor:(id)monitor
{
  storeCopy = store;
  managerCopy = manager;
  platformCopy = platform;
  transitionStoreCopy = transitionStore;
  monitorCopy = monitor;
  v25 = monitorCopy;
  if (!storeCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: locationStore";
LABEL_19:
    _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, v23, buf, 2u);
    goto LABEL_20;
  }

  if (!managerCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: motionActivityManager";
    goto LABEL_19;
  }

  if (!platformCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: platform";
    goto LABEL_19;
  }

  if (!transitionStoreCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v23 = "Invalid parameter not satisfying: settledStateTransitionStore";
    goto LABEL_19;
  }

  if (!monitorCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: wifiFootprintMonitor";
      goto LABEL_19;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  v27.receiver = self;
  v27.super_class = RTScenarioTriggerManager;
  v19 = [(RTNotifier *)&v27 init];
  v20 = v19;
  if (v19)
  {
    v19->_monitoredScenarioTriggerTypes = 0;
    objc_storeStrong(&v19->_motionActivityManager, manager);
    v20->_motionSettledState = 0;
    objc_storeStrong(&v20->_platform, platform);
    v20->_settledState = state;
    objc_storeStrong(&v20->_settledStateTransitionStore, transitionStore);
    objc_storeStrong(&v20->_locationStore, store);
    objc_storeStrong(&v20->_wifiFootprintMonitor, monitor);
  }

  self = v20;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

- (void)dealloc
{
  self->_wiFiFootprintState = -1;
  [(RTNotifier *)self->_motionActivityManager removeObserver:self];
  [(RTNotifier *)self->_wifiFootprintMonitor removeObserver:self];
  v3.receiver = self;
  v3.super_class = RTScenarioTriggerManager;
  [(RTScenarioTriggerManager *)&v3 dealloc];
}

- (void)setInterestedInSettledState:(unint64_t)state
{
  interestedInSettledState = self->_interestedInSettledState;
  if (interestedInSettledState != state)
  {
    self->_interestedInSettledState = state;
    if (!state || interestedInSettledState)
    {
      if (!state && interestedInSettledState)
      {
        motionActivityManager = self->_motionActivityManager;
        v7 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
        [(RTNotifier *)motionActivityManager removeObserver:self fromNotification:v7];

        [(RTScenarioTriggerManager *)self setSettledStateAndSubmitMetricsForSettledState:0];
      }
    }

    else
    {
      v5 = self->_motionActivityManager;
      v8 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
      [(RTNotifier *)v5 addObserver:self selector:sel_onMotionActivityManagerNotification_ name:v8];
    }
  }
}

- (void)setMotionSettledState:(unint64_t)state
{
  if (self->_motionSettledState != state)
  {
    self->_motionSettledState = state;
    [(RTScenarioTriggerManager *)self _evaluateSettledState];
  }
}

- (void)_evaluateSettledState
{
  if (self->_motionSettledState - 1 <= 1)
  {
    [(RTScenarioTriggerManager *)self setSettledStateAndSubmitMetricsForSettledState:?];
  }
}

+ (int64_t)settledStateTypeForScenarioTriggerSettledState:(unint64_t)state
{
  if (state == 2)
  {
    return 2;
  }

  else
  {
    return state == 1;
  }
}

- (void)setSettledStateAndSubmitMetricsForSettledState:(unint64_t)state
{
  if (self->_settledState != state)
  {
    v6 = [objc_opt_class() settledStateTypeForScenarioTriggerSettledState:self->_settledState];
    v7 = [objc_opt_class() settledStateTypeForScenarioTriggerSettledState:state];
    [(RTScenarioTriggerManager *)self setSettledState:state];
    v8 = [RTSettledStateTransition alloc];
    date = [MEMORY[0x277CBEAA8] date];
    v10 = [(RTSettledStateTransition *)v8 initWithDate:date transitionFromType:v6 transitionToType:v7];

    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__RTScenarioTriggerManager_setSettledStateAndSubmitMetricsForSettledState___block_invoke;
    block[3] = &unk_2788C5020;
    v14 = v10;
    selfCopy = self;
    v16 = a2;
    v12 = v10;
    dispatch_async(queue, block);
  }
}

void __75__RTScenarioTriggerManager_setSettledStateAndSubmitMetricsForSettledState___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  [RTSettledStateMetrics submitSettledStateMetricsForSettledStateTransition:*(a1 + 32) settledStateTransitionStore:*(*(a1 + 40) + 88) locationStore:*(*(a1 + 40) + 40)];
  v2 = *(*(a1 + 40) + 88);
  v7[0] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__RTScenarioTriggerManager_setSettledStateAndSubmitMetricsForSettledState___block_invoke_2;
  v4[3] = &unk_2788C4D10;
  v6 = *(a1 + 48);
  v5 = *(a1 + 32);
  [v2 storeSettledStateTransitions:v3 handler:v4];
}

void __75__RTScenarioTriggerManager_setSettledStateAndSubmitMetricsForSettledState___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, settledStateTransition, %@, error, %@", &v7, 0x20u);
    }
  }
}

- (void)setSettledState:(unint64_t)state
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_settledState != state)
  {
    settledState = state;
    self->_settledState = state;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [RTScenarioTriggerManager settledStateName:self->_settledState];
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "set settled state to %@", &v11, 0xCu);
      }

      settledState = self->_settledState;
    }

    if (settledState == 2)
    {
      if ((self->_monitoredScenarioTriggerTypes & 1) == 0)
      {
        return;
      }

      v7 = [objc_alloc(MEMORY[0x277D01298]) initWithType:1];
      v8 = [(RTScenarioTriggerNotification *)[RTScenarioTriggerManagerNotificationSettled alloc] initWithScenarioTrigger:v7];
      [(RTNotifier *)self postNotification:v8];

      settledState = self->_settledState;
    }

    if (settledState == 1 && (self->_monitoredScenarioTriggerTypes & 2) != 0)
    {
      v9 = [objc_alloc(MEMORY[0x277D012A0]) initWithType:2];
      v10 = [(RTScenarioTriggerNotification *)[RTScenarioTriggerManagerNotificationUnsettled alloc] initWithScenarioTrigger:v9];
      [(RTNotifier *)self postNotification:v10];
    }
  }
}

- (void)setInterestedInConstantFootprint:(unint64_t)footprint
{
  interestedInConstantFootprint = self->_interestedInConstantFootprint;
  if (interestedInConstantFootprint != footprint)
  {
    self->_interestedInConstantFootprint = footprint;
    if (!footprint || interestedInConstantFootprint)
    {
      if (!footprint && interestedInConstantFootprint)
      {
        wifiFootprintMonitor = self->_wifiFootprintMonitor;
        v7 = +[(RTNotification *)RTWiFiFootprintStateNotification];
        [(RTNotifier *)wifiFootprintMonitor removeObserver:self fromNotification:v7];

        [(RTScenarioTriggerManager *)self setWiFiFootprintState:-1];
      }
    }

    else
    {
      v5 = self->_wifiFootprintMonitor;
      v8 = +[(RTNotification *)RTWiFiFootprintStateNotification];
      [(RTNotifier *)v5 addObserver:self selector:sel_onWiFiFootprintStateNotification_ name:v8];
    }
  }
}

- (void)setWiFiFootprintState:(int64_t)state
{
  if (self->_wiFiFootprintState != state)
  {
    self->_wiFiFootprintState = state;
    if ((self->_monitoredScenarioTriggerTypes & 3) != 0)
    {
      [(RTScenarioTriggerManager *)self _evaluateSettledState];
    }
  }
}

- (void)_startMonitoringScenarioTriggerOfType:(unint64_t)type
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277D01290] scenarioTriggerTypeToString:type];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "start monitoring scenario trigger, %@", &v7, 0xCu);
    }
  }

  if (type - 1 <= 1)
  {
    [(RTScenarioTriggerManager *)self setInterestedInSettledState:[(RTScenarioTriggerManager *)self interestedInSettledState]+ 1];
  }
}

- (void)_stopMonitoringScenarioTriggerOfType:(unint64_t)type
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277D01290] scenarioTriggerTypeToString:type];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "stop monitoring scenario trigger, %@", &v7, 0xCu);
    }
  }

  if (type - 1 <= 1)
  {
    [(RTScenarioTriggerManager *)self setInterestedInSettledState:[(RTScenarioTriggerManager *)self interestedInSettledState]- 1];
  }
}

- (void)setMonitoredScenarioTriggerTypes:(unint64_t)types
{
  monitoredScenarioTriggerTypes = self->_monitoredScenarioTriggerTypes;
  if (monitoredScenarioTriggerTypes != types)
  {
    self->_monitoredScenarioTriggerTypes = types;
    v5 = monitoredScenarioTriggerTypes ^ types;
    v6 = 1;
    do
    {
      if ((v6 & v5) != 0)
      {
        if ((self->_monitoredScenarioTriggerTypes & v6) != 0)
        {
          [(RTScenarioTriggerManager *)self _startMonitoringScenarioTriggerOfType:v6];
        }

        else
        {
          [(RTScenarioTriggerManager *)self _stopMonitoringScenarioTriggerOfType:v6];
        }
      }

      v6 *= 2;
    }

    while (v6 <= v5);
  }
}

- (unint64_t)_notificationNameToScenarioTriggerType:(id)type
{
  v13 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = +[(RTNotification *)RTScenarioTriggerManagerNotificationSettled];
  v5 = [typeCopy isEqualToString:v4];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = +[(RTNotification *)RTScenarioTriggerManagerNotificationUnsettled];
    v8 = [typeCopy isEqualToString:v7];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          v12 = typeCopy;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "notification, %@, does not map to scenario trigger type", &v11, 0xCu);
        }
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  if ([(RTPlatform *)self->_platform lowEndHardware]|| ![(RTPlatform *)self->_platform supportsScenarioTriggers])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = nameCopy;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, not supported on this platform", &v18, 0xCu);
      }
    }
  }

  else
  {
    if ([(RTNotifier *)self getNumberOfObservers:nameCopy]== 1)
    {
      [(RTScenarioTriggerManager *)self setMonitoredScenarioTriggerTypes:[(RTScenarioTriggerManager *)self monitoredScenarioTriggerTypes]| [(RTScenarioTriggerManager *)self _notificationNameToScenarioTriggerType:nameCopy]];
    }

    settledState = self->_settledState;
    if (settledState == 2)
    {
      v9 = +[(RTNotification *)RTScenarioTriggerManagerNotificationSettled];
      v10 = [nameCopy isEqualToString:v9];

      if (v10)
      {
        v11 = [objc_alloc(MEMORY[0x277D01298]) initWithType:1];
        v12 = [(RTScenarioTriggerNotification *)[RTScenarioTriggerManagerNotificationSettled alloc] initWithScenarioTrigger:v11];
      }

      else
      {
        v12 = 0;
      }

      settledState = self->_settledState;
    }

    else
    {
      v12 = 0;
    }

    if (settledState == 1)
    {
      v14 = +[(RTNotification *)RTScenarioTriggerManagerNotificationUnsettled];
      v15 = [nameCopy isEqualToString:v14];

      if (v15)
      {
        v16 = [objc_alloc(MEMORY[0x277D012A0]) initWithType:2];
        v17 = [(RTScenarioTriggerNotification *)[RTScenarioTriggerManagerNotificationUnsettled alloc] initWithScenarioTrigger:v16];

        v12 = v17;
      }
    }

    if (v12)
    {
      [(RTNotifier *)self postNotification:v12 toObserver:observerCopy];
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v12 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([(RTPlatform *)self->_platform lowEndHardware]|| ![(RTPlatform *)self->_platform supportsScenarioTriggers])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        productType = [(RTPlatform *)self->_platform productType];
        v8 = 138412546;
        v9 = nameCopy;
        v10 = 2112;
        v11 = productType;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@ is not supported on %@", &v8, 0x16u);
      }
    }
  }

  else if (![(RTNotifier *)self getNumberOfObservers:nameCopy])
  {
    [(RTScenarioTriggerManager *)self setMonitoredScenarioTriggerTypes:[(RTScenarioTriggerManager *)self monitoredScenarioTriggerTypes]& ~[(RTScenarioTriggerManager *)self _notificationNameToScenarioTriggerType:nameCopy]];
  }
}

- (void)_onMotionActivityManagerNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    -[RTScenarioTriggerManager setMotionSettledState:](self, "setMotionSettledState:", [notificationCopy settledState]);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      name2 = [notificationCopy name];
      v10 = 138412290;
      v11 = name2;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v10, 0xCu);
    }
  }
}

- (void)onMotionActivityManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__RTScenarioTriggerManager_onMotionActivityManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onWiFiFootprintStateNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTWiFiFootprintStateNotification];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    -[RTScenarioTriggerManager setWiFiFootprintState:](self, "setWiFiFootprintState:", [notificationCopy state]);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      name2 = [notificationCopy name];
      v10 = 138412290;
      v11 = name2;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v10, 0xCu);
    }
  }
}

- (void)onWiFiFootprintStateNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__RTScenarioTriggerManager_onWiFiFootprintStateNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)postScenarioTriggerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__RTScenarioTriggerManager_postScenarioTriggerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_postScenarioTriggerNotification:(id)notification
{
  v8 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "post %@", &v6, 0xCu);
    }
  }

  if (notificationCopy)
  {
    [(RTNotifier *)self postNotification:notificationCopy];
  }
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__RTScenarioTriggerManager_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = dateCopy;
  v15 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = dateCopy;
  dispatch_async(queue, v13);
}

void __72__RTScenarioTriggerManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if ((v2 - 1) < 2)
  {
    v3 = [*(a1 + 32) settledStateTransitionStore];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__RTScenarioTriggerManager_performPurgeOfType_referenceDate_completion___block_invoke_45;
    v8[3] = &unk_2788C48C0;
    v9 = *(a1 + 48);
    [v3 clearWithHandler:v8];

    v4 = v9;
LABEL_5:

    return;
  }

  if (!v2)
  {
    v5 = [*(a1 + 32) settledStateTransitionStore];
    v6 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__RTScenarioTriggerManager_performPurgeOfType_referenceDate_completion___block_invoke_2;
    v10[3] = &unk_2788C4F60;
    v11 = v6;
    v12 = *(a1 + 48);
    [v5 purgeSettledStateTransitionsPredating:v11 handler:v10];

    v4 = v11;
    goto LABEL_5;
  }

  v7 = *(*(a1 + 48) + 16);

  v7();
}

void __72__RTScenarioTriggerManager_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) stringFromDate];
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "purge entries from the settled state transition store predating, %@, error, %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __72__RTScenarioTriggerManager_performPurgeOfType_referenceDate_completion___block_invoke_45(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "cleared the settled state transition store with error, %@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)simulateScenarioTrigger:(id)trigger handler:(id)handler
{
  triggerCopy = trigger;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTScenarioTriggerManager_Internal__simulateScenarioTrigger_handler___block_invoke;
  block[3] = &unk_2788C6210;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = triggerCopy;
  v9 = triggerCopy;
  v10 = handlerCopy;
  dispatch_async(queue, block);
}

void __70__RTScenarioTriggerManager_Internal__simulateScenarioTrigger_handler___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = +[RTScenarioTriggerManager scenarioTriggerTypeToNotificationName:](RTScenarioTriggerManager, "scenarioTriggerTypeToNotificationName:", [v2 type]);
      v4 = NSClassFromString(v3);
      if (v4)
      {
        v5 = [[v4 alloc] initWithScenarioTrigger:*(a1 + 32)];
        if (v5)
        {
          [*(a1 + 40) _postScenarioTriggerNotification:v5];
        }

        v6 = 0;
      }

      else
      {
        v9 = *MEMORY[0x277CCA450];
        v10[0] = @"Unknown scenario trigger type.";
        v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
        v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v7];
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:0];
      (*(*(a1 + 48) + 16))();
    }
  }
}

@end