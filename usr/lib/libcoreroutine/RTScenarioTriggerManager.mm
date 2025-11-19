@interface RTScenarioTriggerManager
+ (id)scenarioTriggerTypeToNotificationName:(unint64_t)a3;
+ (id)settledStateName:(unint64_t)a3;
+ (int64_t)settledStateTypeForScenarioTriggerSettledState:(unint64_t)a3;
- (RTScenarioTriggerManager)initWithLocationStore:(id)a3 motionActivityManager:(id)a4 platform:(id)a5 settledState:(unint64_t)a6 settledStateTransitionStore:(id)a7 wifiFootprintMonitor:(id)a8;
- (unint64_t)_notificationNameToScenarioTriggerType:(id)a3;
- (void)_evaluateSettledState;
- (void)_onMotionActivityManagerNotification:(id)a3;
- (void)_onWiFiFootprintStateNotification:(id)a3;
- (void)_postScenarioTriggerNotification:(id)a3;
- (void)_startMonitoringScenarioTriggerOfType:(unint64_t)a3;
- (void)_stopMonitoringScenarioTriggerOfType:(unint64_t)a3;
- (void)dealloc;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)onMotionActivityManagerNotification:(id)a3;
- (void)onWiFiFootprintStateNotification:(id)a3;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
- (void)postScenarioTriggerNotification:(id)a3;
- (void)setInterestedInConstantFootprint:(unint64_t)a3;
- (void)setInterestedInSettledState:(unint64_t)a3;
- (void)setMonitoredScenarioTriggerTypes:(unint64_t)a3;
- (void)setMotionSettledState:(unint64_t)a3;
- (void)setSettledState:(unint64_t)a3;
- (void)setSettledStateAndSubmitMetricsForSettledState:(unint64_t)a3;
- (void)setWiFiFootprintState:(int64_t)a3;
- (void)simulateScenarioTrigger:(id)a3 handler:(id)a4;
@end

@implementation RTScenarioTriggerManager

+ (id)settledStateName:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"Settled";
  }

  if (a3 == 1)
  {
    return @"Unsettled";
  }

  else
  {
    return v3;
  }
}

+ (id)scenarioTriggerTypeToNotificationName:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 == 2)
    {
      v4 = RTScenarioTriggerManagerNotificationUnsettled;
      goto LABEL_6;
    }

    if (a3 == 1)
    {
      v4 = RTScenarioTriggerManagerNotificationSettled;
LABEL_6:
      v5 = [(__objc2_class *)v4 notificationName];
      goto LABEL_11;
    }

    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 134218498;
      v9 = a3;
      v10 = 2080;
      v11 = "+[RTScenarioTriggerManager scenarioTriggerTypeToNotificationName:]";
      v12 = 1024;
      v13 = 91;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unhandled scenario trigger type, %lu (in %s:%d)", &v8, 0x1Cu);
    }
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (RTScenarioTriggerManager)initWithLocationStore:(id)a3 motionActivityManager:(id)a4 platform:(id)a5 settledState:(unint64_t)a6 settledStateTransitionStore:(id)a7 wifiFootprintMonitor:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v26 = a7;
  v18 = a8;
  v25 = v18;
  if (!v15)
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

  if (!v16)
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

  if (!v17)
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

  if (!v26)
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

  if (!v18)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "Invalid parameter not satisfying: wifiFootprintMonitor";
      goto LABEL_19;
    }

LABEL_20:

    v21 = 0;
    goto LABEL_21;
  }

  v27.receiver = self;
  v27.super_class = RTScenarioTriggerManager;
  v19 = [(RTNotifier *)&v27 init];
  v20 = v19;
  if (v19)
  {
    v19->_monitoredScenarioTriggerTypes = 0;
    objc_storeStrong(&v19->_motionActivityManager, a4);
    v20->_motionSettledState = 0;
    objc_storeStrong(&v20->_platform, a5);
    v20->_settledState = a6;
    objc_storeStrong(&v20->_settledStateTransitionStore, a7);
    objc_storeStrong(&v20->_locationStore, a3);
    objc_storeStrong(&v20->_wifiFootprintMonitor, a8);
  }

  self = v20;
  v21 = self;
LABEL_21:

  return v21;
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

- (void)setInterestedInSettledState:(unint64_t)a3
{
  interestedInSettledState = self->_interestedInSettledState;
  if (interestedInSettledState != a3)
  {
    self->_interestedInSettledState = a3;
    if (!a3 || interestedInSettledState)
    {
      if (!a3 && interestedInSettledState)
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

- (void)setMotionSettledState:(unint64_t)a3
{
  if (self->_motionSettledState != a3)
  {
    self->_motionSettledState = a3;
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

+ (int64_t)settledStateTypeForScenarioTriggerSettledState:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (void)setSettledStateAndSubmitMetricsForSettledState:(unint64_t)a3
{
  if (self->_settledState != a3)
  {
    v6 = [objc_opt_class() settledStateTypeForScenarioTriggerSettledState:self->_settledState];
    v7 = [objc_opt_class() settledStateTypeForScenarioTriggerSettledState:a3];
    [(RTScenarioTriggerManager *)self setSettledState:a3];
    v8 = [RTSettledStateTransition alloc];
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [(RTSettledStateTransition *)v8 initWithDate:v9 transitionFromType:v6 transitionToType:v7];

    v11 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__RTScenarioTriggerManager_setSettledStateAndSubmitMetricsForSettledState___block_invoke;
    block[3] = &unk_2788C5020;
    v14 = v10;
    v15 = self;
    v16 = a2;
    v12 = v10;
    dispatch_async(v11, block);
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

- (void)setSettledState:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_settledState != a3)
  {
    settledState = a3;
    self->_settledState = a3;
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

- (void)setInterestedInConstantFootprint:(unint64_t)a3
{
  interestedInConstantFootprint = self->_interestedInConstantFootprint;
  if (interestedInConstantFootprint != a3)
  {
    self->_interestedInConstantFootprint = a3;
    if (!a3 || interestedInConstantFootprint)
    {
      if (!a3 && interestedInConstantFootprint)
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

- (void)setWiFiFootprintState:(int64_t)a3
{
  if (self->_wiFiFootprintState != a3)
  {
    self->_wiFiFootprintState = a3;
    if ((self->_monitoredScenarioTriggerTypes & 3) != 0)
    {
      [(RTScenarioTriggerManager *)self _evaluateSettledState];
    }
  }
}

- (void)_startMonitoringScenarioTriggerOfType:(unint64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277D01290] scenarioTriggerTypeToString:a3];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "start monitoring scenario trigger, %@", &v7, 0xCu);
    }
  }

  if (a3 - 1 <= 1)
  {
    [(RTScenarioTriggerManager *)self setInterestedInSettledState:[(RTScenarioTriggerManager *)self interestedInSettledState]+ 1];
  }
}

- (void)_stopMonitoringScenarioTriggerOfType:(unint64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277D01290] scenarioTriggerTypeToString:a3];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "stop monitoring scenario trigger, %@", &v7, 0xCu);
    }
  }

  if (a3 - 1 <= 1)
  {
    [(RTScenarioTriggerManager *)self setInterestedInSettledState:[(RTScenarioTriggerManager *)self interestedInSettledState]- 1];
  }
}

- (void)setMonitoredScenarioTriggerTypes:(unint64_t)a3
{
  monitoredScenarioTriggerTypes = self->_monitoredScenarioTriggerTypes;
  if (monitoredScenarioTriggerTypes != a3)
  {
    self->_monitoredScenarioTriggerTypes = a3;
    v5 = monitoredScenarioTriggerTypes ^ a3;
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

- (unint64_t)_notificationNameToScenarioTriggerType:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[(RTNotification *)RTScenarioTriggerManagerNotificationSettled];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = +[(RTNotification *)RTScenarioTriggerManagerNotificationUnsettled];
    v8 = [v3 isEqualToString:v7];

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
          v12 = v3;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "notification, %@, does not map to scenario trigger type", &v11, 0xCu);
        }
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(RTPlatform *)self->_platform lowEndHardware]|| ![(RTPlatform *)self->_platform supportsScenarioTriggers])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v7;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, not supported on this platform", &v18, 0xCu);
      }
    }
  }

  else
  {
    if ([(RTNotifier *)self getNumberOfObservers:v7]== 1)
    {
      [(RTScenarioTriggerManager *)self setMonitoredScenarioTriggerTypes:[(RTScenarioTriggerManager *)self monitoredScenarioTriggerTypes]| [(RTScenarioTriggerManager *)self _notificationNameToScenarioTriggerType:v7]];
    }

    settledState = self->_settledState;
    if (settledState == 2)
    {
      v9 = +[(RTNotification *)RTScenarioTriggerManagerNotificationSettled];
      v10 = [v7 isEqualToString:v9];

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
      v15 = [v7 isEqualToString:v14];

      if (v15)
      {
        v16 = [objc_alloc(MEMORY[0x277D012A0]) initWithType:2];
        v17 = [(RTScenarioTriggerNotification *)[RTScenarioTriggerManagerNotificationUnsettled alloc] initWithScenarioTrigger:v16];

        v12 = v17;
      }
    }

    if (v12)
    {
      [(RTNotifier *)self postNotification:v12 toObserver:v6];
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([(RTPlatform *)self->_platform lowEndHardware]|| ![(RTPlatform *)self->_platform supportsScenarioTriggers])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(RTPlatform *)self->_platform productType];
        v8 = 138412546;
        v9 = v5;
        v10 = 2112;
        v11 = v7;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@ is not supported on %@", &v8, 0x16u);
      }
    }
  }

  else if (![(RTNotifier *)self getNumberOfObservers:v5])
  {
    [(RTScenarioTriggerManager *)self setMonitoredScenarioTriggerTypes:[(RTScenarioTriggerManager *)self monitoredScenarioTriggerTypes]& ~[(RTScenarioTriggerManager *)self _notificationNameToScenarioTriggerType:v5]];
  }
}

- (void)_onMotionActivityManagerNotification:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    -[RTScenarioTriggerManager setMotionSettledState:](self, "setMotionSettledState:", [v4 settledState]);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v4 name];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v10, 0xCu);
    }
  }
}

- (void)onMotionActivityManagerNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__RTScenarioTriggerManager_onMotionActivityManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onWiFiFootprintStateNotification:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTWiFiFootprintStateNotification];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    -[RTScenarioTriggerManager setWiFiFootprintState:](self, "setWiFiFootprintState:", [v4 state]);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v4 name];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "unsupported notification, %@", &v10, 0xCu);
    }
  }
}

- (void)onWiFiFootprintStateNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__RTScenarioTriggerManager_onWiFiFootprintStateNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)postScenarioTriggerNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__RTScenarioTriggerManager_postScenarioTriggerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_postScenarioTriggerNotification:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "post %@", &v6, 0xCu);
    }
  }

  if (v4)
  {
    [(RTNotifier *)self postNotification:v4];
  }
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__RTScenarioTriggerManager_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
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

- (void)simulateScenarioTrigger:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTScenarioTriggerManager_Internal__simulateScenarioTrigger_handler___block_invoke;
  block[3] = &unk_2788C6210;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
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