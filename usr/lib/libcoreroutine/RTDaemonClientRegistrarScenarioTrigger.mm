@interface RTDaemonClientRegistrarScenarioTrigger
- (RTDaemonClientRegistrarScenarioTrigger)initWithCoder:(id)coder;
- (RTDaemonClientRegistrarScenarioTrigger)initWithScenarioTriggerManager:(id)manager queue:(id)queue;
- (RTDaemonClientRegistrarScenarioTriggerProtocol)delegate;
- (void)_logMonitoredScenarioTriggers:(unint64_t)triggers;
- (void)_onScenarioTriggerManagerNotification:(id)notification;
- (void)encodeWithCoder:(id)coder;
- (void)onScenarioTriggerManagerNotification:(id)notification;
- (void)startMonitoringForScenarioTriggerType:(unint64_t)type;
- (void)stopMonitoringForScenarioTriggerType:(unint64_t)type;
@end

@implementation RTDaemonClientRegistrarScenarioTrigger

- (RTDaemonClientRegistrarScenarioTrigger)initWithScenarioTriggerManager:(id)manager queue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = RTDaemonClientRegistrarScenarioTrigger;
  v9 = [(RTDaemonClientRegistrarScenarioTrigger *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_scenarioTriggerManager, manager);
    v11 = objc_opt_new();
    pendingScenarioInvocations = v10->_pendingScenarioInvocations;
    v10->_pendingScenarioInvocations = v11;

    v10->_monitoredScenarioTriggerTypes = 0;
    v13 = [[RTInvocationDispatcher alloc] initWithQueue:v10->_queue];
    dispatcher = v10->_dispatcher;
    v10->_dispatcher = v13;
  }

  return v10;
}

- (RTDaemonClientRegistrarScenarioTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = RTDaemonClientRegistrarScenarioTrigger;
  v5 = [(RTDaemonClientRegistrar *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_monitoredScenarioTriggerTypes = [coderCopy decodeIntegerForKey:@"monitoredScenarioTriggerTypes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RTDaemonClientRegistrarScenarioTrigger;
  coderCopy = coder;
  [(RTDaemonClientRegistrar *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_monitoredScenarioTriggerTypes forKey:{@"monitoredScenarioTriggerTypes", v5.receiver, v5.super_class}];
}

- (void)startMonitoringForScenarioTriggerType:(unint64_t)type
{
  if ([(RTDaemonClientRegistrarScenarioTrigger *)self invocationsPending])
  {
    [(RTInvocationDispatcher *)self->_dispatcher dispatchPendingInvocations];
  }

  for (; type; type &= type - 1)
  {
    v5 = type & -type;
    if ((self->_monitoredScenarioTriggerTypes & v5) != 0)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type & -type];
      v7 = [(NSMutableDictionary *)self->_pendingScenarioInvocations objectForKey:v6];

      if (v7)
      {
        v8 = [(NSMutableDictionary *)self->_pendingScenarioInvocations objectForKey:v6];
        v9 = [v8 copy];

        v10 = [(NSMutableDictionary *)self->_pendingScenarioInvocations objectForKey:v6];
        [v10 removeAllObjects];

        [v9 enumerateObjectsUsingBlock:&__block_literal_global_118];
      }
    }

    else
    {
      v6 = [RTScenarioTriggerManager scenarioTriggerTypeToNotificationName:type & -type];
      if (v6)
      {
        self->_monitoredScenarioTriggerTypes |= v5;
        [(RTNotifier *)self->_scenarioTriggerManager addObserver:self selector:sel_onScenarioTriggerManagerNotification_ name:v6];
      }
    }
  }

  monitoredScenarioTriggerTypes = self->_monitoredScenarioTriggerTypes;

  [(RTDaemonClientRegistrarScenarioTrigger *)self _logMonitoredScenarioTriggers:monitoredScenarioTriggerTypes];
}

- (void)onScenarioTriggerManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__RTDaemonClientRegistrarScenarioTrigger_onScenarioTriggerManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __79__RTDaemonClientRegistrarScenarioTrigger_onScenarioTriggerManagerNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);

    [v2 _onScenarioTriggerManagerNotification:v3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) name];
      v6 = 138412802;
      v7 = v5;
      v8 = 2080;
      v9 = "[RTDaemonClientRegistrarScenarioTrigger onScenarioTriggerManagerNotification:]_block_invoke";
      v10 = 1024;
      v11 = 113;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "unknown notification with name received, %@ (in %s:%d)", &v6, 0x1Cu);
    }
  }
}

- (void)_onScenarioTriggerManagerNotification:(id)notification
{
  v12[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    scenarioTrigger = [notificationCopy scenarioTrigger];
    v7 = scenarioTrigger;
    if (scenarioTrigger)
    {
      monitoredScenarioTriggerTypes = self->_monitoredScenarioTriggerTypes;
      if (([scenarioTrigger type]& monitoredScenarioTriggerTypes) != 0)
      {
        v12[0] = v7;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
        [WeakRetained scenarioTriggerRegistrar:self didReceiveScenarioTriggers:v9 error:0];
        goto LABEL_15;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_17:

        goto LABEL_18;
      }

      v9 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_15:

        goto LABEL_17;
      }

      *v11 = 0;
      v10 = "trigger type is not monitored for, returning.";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = 0;
        goto LABEL_17;
      }

      v9 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      *v11 = 0;
      v10 = "received nil scenario trigger in notification, returning.";
    }

    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityScenarioTrigger);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "no delegate or does not respond to selector, returning", v11, 2u);
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)stopMonitoringForScenarioTriggerType:(unint64_t)type
{
  [(RTInvocationDispatcher *)self->_dispatcher removeAllPendingInvocations];
  if (type)
  {
    v5 = ~type;
    do
    {
      monitoredScenarioTriggerTypes = self->_monitoredScenarioTriggerTypes;
      if ((monitoredScenarioTriggerTypes & type & -type) != 0)
      {
        self->_monitoredScenarioTriggerTypes = monitoredScenarioTriggerTypes & v5;
        v7 = [RTScenarioTriggerManager scenarioTriggerTypeToNotificationName:?];
        if (v7)
        {
          [(RTNotifier *)self->_scenarioTriggerManager removeObserver:self fromNotification:v7];
        }
      }

      type &= type - 1;
    }

    while (type);
  }

  v8 = self->_monitoredScenarioTriggerTypes;

  [(RTDaemonClientRegistrarScenarioTrigger *)self _logMonitoredScenarioTriggers:v8];
}

- (void)_logMonitoredScenarioTriggers:(unint64_t)triggers
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    monitoredScenarioTriggerTypes = self->_monitoredScenarioTriggerTypes;
    v5 = objc_opt_new();
    while (monitoredScenarioTriggerTypes)
    {
      v6 = [MEMORY[0x277D01290] scenarioTriggerTypeToString:monitoredScenarioTriggerTypes & -monitoredScenarioTriggerTypes];
      if (v6)
      {
        [v5 addObject:v6];
      }

      monitoredScenarioTriggerTypes &= monitoredScenarioTriggerTypes - 1;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityClient);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        if ([v5 count])
        {
          [v5 componentsJoinedByString:{@", "}];
        }

        else
        {
          [MEMORY[0x277D01290] scenarioTriggerTypeToString:0];
        }
        v8 = ;
        v9 = self->_monitoredScenarioTriggerTypes;
        v10 = 138412802;
        v11 = v8;
        v12 = 2048;
        v13 = v9;
        v14 = 2048;
        v15 = [v5 count];
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "monitored scenario triggers, %@, bitmask, %lu, count, %lu", &v10, 0x20u);
      }
    }
  }
}

- (RTDaemonClientRegistrarScenarioTriggerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end