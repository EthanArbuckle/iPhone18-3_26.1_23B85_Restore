@interface RTBatteryManager
+ (id)externalConnectionStateToString:(int64_t)string;
- (RTBatteryManager)initWithQueue:(id)queue;
- (RTBatteryManager)initWithQueue:(id)queue notificationHelper:(id)helper;
- (void)_shutdownWithHandler:(id)handler;
- (void)dealloc;
- (void)fetchCurrentBatteryPercent:(id)percent;
- (void)fetchCurrentChargerConnectionState:(id)state;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)setMonitorBatteryStatusChanges:(BOOL)changes;
- (void)startMonitoringBatteryStatusChanges;
- (void)stopMonitoringBatteryStatusChanges;
- (void)updateBatteryStatus:(int64_t)status;
@end

@implementation RTBatteryManager

- (RTBatteryManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_opt_new();
  v6 = [(RTBatteryManager *)self initWithQueue:queueCopy notificationHelper:v5];

  return v6;
}

- (RTBatteryManager)initWithQueue:(id)queue notificationHelper:(id)helper
{
  queueCopy = queue;
  helperCopy = helper;
  v8 = helperCopy;
  if (!queueCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: queue";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_9;
  }

  if (!helperCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: notificationHelper";
    goto LABEL_12;
  }

  v15.receiver = self;
  v15.super_class = RTBatteryManager;
  v9 = [(RTNotifier *)&v15 initWithQueue:queueCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notificationHelper, helper);
    v10->_externalConnectionState = [objc_opt_class() currentExternalConnectionState];
  }

  self = v10;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

+ (id)externalConnectionStateToString:(int64_t)string
{
  if (string)
  {
    return @"Connected";
  }

  else
  {
    return @"Disconnected";
  }
}

- (void)dealloc
{
  [(RTBatteryManager *)self _unregisterForNotifications];
  v3.receiver = self;
  v3.super_class = RTBatteryManager;
  [(RTBatteryManager *)&v3 dealloc];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(RTBatteryManager *)self _unregisterForNotifications];
  v4 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v4 = handlerCopy;
  }
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  observerCopy = observer;
  nameCopy = name;
  v7 = +[(RTNotification *)RTBatteryManagerNotificationChargerConnected];
  v8 = [nameCopy isEqualToString:v7];

  if (v8)
  {
    if ([(RTNotifier *)self getNumberOfObservers:nameCopy]== 1)
    {
      [(RTBatteryManager *)self setMonitorBatteryStatusChanges:1];
    }

    v9 = [[RTBatteryManagerNotificationChargerConnected alloc] initWithChargerConnected:self->_externalConnectionState == 1];
    if (v9)
    {
      [(RTNotifier *)self postNotification:v9 toObserver:observerCopy];
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  nameCopy = name;
  v5 = +[(RTNotification *)RTBatteryManagerNotificationChargerConnected];
  v6 = [nameCopy isEqualToString:v5];

  if (v6 && ![(RTNotifier *)self getNumberOfObservers:nameCopy])
  {
    [(RTBatteryManager *)self setMonitorBatteryStatusChanges:0];
  }
}

- (void)setMonitorBatteryStatusChanges:(BOOL)changes
{
  if (self->_monitorBatteryStatusChanges != changes)
  {
    self->_monitorBatteryStatusChanges = changes;
    if (changes)
    {
      [(RTBatteryManager *)self startMonitoringBatteryStatusChanges];
    }

    else
    {
      [(RTBatteryManager *)self stopMonitoringBatteryStatusChanges];
    }
  }
}

- (void)startMonitoringBatteryStatusChanges
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityBattery);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "start monitoring battery status changes", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  notificationHelper = self->_notificationHelper;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__RTBatteryManager_startMonitoringBatteryStatusChanges__block_invoke;
  v5[3] = &unk_2788C5908;
  objc_copyWeak(&v6, buf);
  [(RTDarwinNotificationHelper *)notificationHelper addObserverForNotificationName:@"com.apple.system.powermanagement.poweradapter" handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __55__RTBatteryManager_startMonitoringBatteryStatusChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__RTBatteryManager_startMonitoringBatteryStatusChanges__block_invoke_2;
    block[3] = &unk_2788C4EA0;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __55__RTBatteryManager_startMonitoringBatteryStatusChanges__block_invoke_2(uint64_t a1)
{
  v2 = [objc_opt_class() currentExternalConnectionState];
  v3 = *(a1 + 32);

  return [v3 updateBatteryStatus:v2];
}

- (void)stopMonitoringBatteryStatusChanges
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityBattery);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "stop monitoring battery status changes", v4, 2u);
    }
  }

  [(RTDarwinNotificationHelper *)self->_notificationHelper removeObserverForNotificationName:@"com.apple.system.powermanagement.poweradapter"];
}

- (void)updateBatteryStatus:(int64_t)status
{
  statusCopy = status;
  v14 = *MEMORY[0x277D85DE8];
  externalConnectionState = self->_externalConnectionState;
  self->_externalConnectionState = status;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityBattery);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [RTBatteryManager externalConnectionStateToString:externalConnectionState];
      v8 = [RTBatteryManager externalConnectionStateToString:self->_externalConnectionState];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "charger connected state changed from, %{public}@, to, %{public}@", &v10, 0x16u);
    }

    statusCopy = self->_externalConnectionState;
  }

  if (externalConnectionState != statusCopy)
  {
    v9 = [[RTBatteryManagerNotificationChargerConnected alloc] initWithChargerConnected:statusCopy == 1];
    if (v9)
    {
      [(RTNotifier *)self postNotification:v9];
    }
  }
}

- (void)fetchCurrentChargerConnectionState:(id)state
{
  v13 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (stateCopy)
  {
    queue = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__RTBatteryManager_fetchCurrentChargerConnectionState___block_invoke;
    v7[3] = &unk_2788C4D38;
    v7[4] = self;
    v8 = stateCopy;
    dispatch_async(queue, v7);

    v6 = v8;
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[RTBatteryManager fetchCurrentChargerConnectionState:]";
      v11 = 1024;
      v12 = 199;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)fetchCurrentBatteryPercent:(id)percent
{
  v15 = *MEMORY[0x277D85DE8];
  percentCopy = percent;
  if (!percentCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "[RTBatteryManager fetchCurrentBatteryPercent:]";
      v13 = 1024;
      v14 = 212;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", location, 0x12u);
    }
  }

  v6 = objc_initWeak(location, self);
  queue = [(RTNotifier *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__RTBatteryManager_fetchCurrentBatteryPercent___block_invoke;
  v9[3] = &unk_2788CA2D8;
  v10 = percentCopy;
  v8 = percentCopy;
  objc_copyWeak(&v11, location);
  dispatch_async(queue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(location);
}

void __47__RTBatteryManager_fetchCurrentBatteryPercent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [objc_opt_class() _ioGetCurrentBatteryPercent];
  (*(v1 + 16))(v1, v2);
}

@end