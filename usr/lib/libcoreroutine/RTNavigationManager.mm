@interface RTNavigationManager
+ (id)RTGEOTransportTypeToString:(unint64_t)string;
- (RTNavigationManager)initWithAuthorizationManager:(id)manager mapServiceManager:(id)serviceManager;
- (void)_fetchNavigationRouteSummaryWithHandler:(id)handler;
- (void)_setup;
- (void)_shouldSetMonitorNavigationState;
- (void)_shouldSetMonitorRouteSummary;
- (void)_shouldSetNavigationListenerDelegate;
- (void)_shutdownWithHandler:(id)handler;
- (void)_updateNavigationState:(id)state;
- (void)dealloc;
- (void)fetchNavigationRouteSummaryWithHandler:(id)handler;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)navigationListener:(id)listener didChangeNavigationState:(unint64_t)state transportType:(int)type;
- (void)onAuthorizationNotification:(id)notification;
- (void)setMonitorNavigationState:(BOOL)state;
- (void)setMonitorRouteSummary:(BOOL)summary;
- (void)setRouteSummary:(id)summary;
- (void)setRoutineEnabled:(BOOL)enabled;
- (void)setup;
@end

@implementation RTNavigationManager

- (RTNavigationManager)initWithAuthorizationManager:(id)manager mapServiceManager:(id)serviceManager
{
  v22 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  serviceManagerCopy = serviceManager;
  if (managerCopy)
  {
    v17.receiver = self;
    v17.super_class = RTNavigationManager;
    v9 = [(RTNotifier *)&v17 init];
    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x277D0EBF0]);
      queue = [(RTNotifier *)v9 queue];
      v12 = [v10 initWithQueue:queue];
      navigationListener = v9->_navigationListener;
      v9->_navigationListener = v12;

      objc_storeStrong(&v9->_authorizationManager, manager);
      objc_storeStrong(&v9->_mapServiceManager, serviceManager);
      v9->_monitorRouteSummary = 0;
      v9->_monitorNavigationState = 0;
      v9->_routineEnabled = 1;
      [(RTNavigationManager *)v9 setup];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTNavigationManager initWithAuthorizationManager:mapServiceManager:]";
      v20 = 1024;
      v21 = 139;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: authorizationManager (in %s:%d)", buf, 0x12u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setup
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__RTNavigationManager_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setup
{
  authorizationManager = self->_authorizationManager;
  v4 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  [(RTNotifier *)authorizationManager addObserver:self selector:sel_onAuthorizationNotification_ name:v4];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  [(GEONavigationListener *)self->_navigationListener setDelegate:0];
  [(RTNotifier *)self->_authorizationManager removeObserver:self];
  v4 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v4 = handlerCopy;
  }
}

- (void)dealloc
{
  [(GEONavigationListener *)self->_navigationListener setDelegate:0];
  [(RTNotifier *)self->_authorizationManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = RTNavigationManager;
  [(RTNavigationManager *)&v3 dealloc];
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  v9 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  v10 = [nameCopy isEqualToString:v9];

  if (v10)
  {
    [(RTNavigationManager *)self _shouldSetMonitorRouteSummary];
  }

  else
  {
    v11 = +[(RTNotification *)RTNavigationManagerNavigationStateNotification];
    v12 = [nameCopy isEqualToString:v11];

    if (v12)
    {
      [(RTNavigationManager *)self _shouldSetMonitorNavigationState];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = NSStringFromSelector(a2);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = 138412802;
        v18 = v14;
        v19 = 2112;
        v20 = nameCopy;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, unsupported notification, %@, observer, %@", &v17, 0x20u);
      }
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  v9 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  v10 = [nameCopy isEqualToString:v9];

  if (v10)
  {
    [(RTNavigationManager *)self _shouldSetMonitorRouteSummary];
  }

  else
  {
    v11 = +[(RTNotification *)RTNavigationManagerNavigationStateNotification];
    v12 = [nameCopy isEqualToString:v11];

    if (v12)
    {
      [(RTNavigationManager *)self _shouldSetMonitorNavigationState];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = NSStringFromSelector(a2);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = 138412802;
        v18 = v14;
        v19 = 2112;
        v20 = nameCopy;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, unsupported notification, %@, observer, %@", &v17, 0x20u);
      }
    }
  }
}

+ (id)RTGEOTransportTypeToString:(unint64_t)string
{
  if (string - 1 > 5)
  {
    return @"Automobile";
  }

  else
  {
    return off_2788D12E0[string - 1];
  }
}

- (void)_shouldSetMonitorRouteSummary
{
  v3 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  v4 = [(RTNotifier *)self getNumberOfObservers:v3]!= 0;

  [(RTNavigationManager *)self setMonitorRouteSummary:v4];
}

- (void)_shouldSetMonitorNavigationState
{
  v3 = +[(RTNotification *)RTNavigationManagerNavigationStateNotification];
  v4 = [(RTNotifier *)self getNumberOfObservers:v3]!= 0;

  [(RTNavigationManager *)self setMonitorNavigationState:v4];
}

- (void)_shouldSetNavigationListenerDelegate
{
  if (self->_routineEnabled && (self->_monitorRouteSummary || self->_monitorNavigationState))
  {
    navigationListener = [(RTNavigationManager *)self navigationListener];
    delegate = [navigationListener delegate];

    if (delegate)
    {
      return;
    }

    navigationListener2 = [(RTNavigationManager *)self navigationListener];
    [navigationListener2 setDelegate:self];

    navigationListener3 = [(RTNavigationManager *)self navigationListener];
    [navigationListener3 requestRouteSummary];
  }

  else
  {
    navigationListener3 = [(RTNavigationManager *)self navigationListener];
    [navigationListener3 setDelegate:0];
  }
}

- (void)setMonitorRouteSummary:(BOOL)summary
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_monitorRouteSummary != summary)
  {
    self->_monitorRouteSummary = summary;
    [(RTNavigationManager *)self _shouldSetNavigationListenerDelegate];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = NSStringFromSelector(a2);
        v7 = v6;
        if (self->_monitorRouteSummary)
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v9 = 138412547;
        v10 = v6;
        v11 = 2117;
        v12 = v8;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, monitor navigation route summary, %{sensitive}@", &v9, 0x16u);
      }
    }
  }
}

- (void)setMonitorNavigationState:(BOOL)state
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_monitorNavigationState != state)
  {
    self->_monitorNavigationState = state;
    [(RTNavigationManager *)self _shouldSetNavigationListenerDelegate];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = NSStringFromSelector(a2);
        v7 = v6;
        if (self->_monitorRouteSummary)
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, monitor navigation state, %@", &v9, 0x16u);
      }
    }
  }
}

- (void)setRoutineEnabled:(BOOL)enabled
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_routineEnabled != enabled)
  {
    self->_routineEnabled = enabled;
    [(RTNavigationManager *)self _shouldSetNavigationListenerDelegate];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = NSStringFromSelector(a2);
        v7 = v6;
        if (self->_routineEnabled)
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, routine enabled, %@", &v9, 0x16u);
      }
    }
  }
}

- (void)setRouteSummary:(id)summary
{
  v18 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  if (![(GEONavigationRouteSummary *)self->_routeSummary isEqual:summaryCopy])
  {
    objc_storeStrong(&self->_routeSummary, summary);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(a2);
        v12 = 138412547;
        v13 = v11;
        v14 = 2117;
        v15 = summaryCopy;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, route summary, %{sensitive}@", &v12, 0x16u);
      }
    }

    v7 = [[RTNavigationManagerRouteSummaryNotification alloc] initWithRouteSummary:summaryCopy];
    if (v7)
    {
      [(RTNotifier *)self postNotification:v7];
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      routeSummary = self->_routeSummary;
      v12 = 138412803;
      v13 = v8;
      v14 = 2117;
      v15 = routeSummary;
      v16 = 2117;
      v17 = summaryCopy;
      _os_log_impl(&dword_2304B3000, &v7->super.super, OS_LOG_TYPE_INFO, "%@, self.routeSummary, %{sensitive}@, routeSummary, %{sensitive}@", &v12, 0x20u);
    }

LABEL_11:
  }
}

- (void)onAuthorizationNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTNavigationManager_onAuthorizationNotification___block_invoke;
  block[3] = &unk_2788C5020;
  selfCopy = self;
  v11 = a2;
  v9 = notificationCopy;
  v7 = notificationCopy;
  dispatch_async(queue, block);
}

void __51__RTNavigationManager_onAuthorizationNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      v4 = [*(a1 + 32) name];
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, received authorization notification, %@", &v9, 0x16u);
    }
  }

  v5 = [*(a1 + 32) name];
  v6 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = *(a1 + 32);
    [*(a1 + 40) setRoutineEnabled:{objc_msgSend(v8, "enabled")}];
  }
}

- (void)_updateNavigationState:(id)state
{
  v13 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = stateCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, navigation state, %@", &v9, 0x16u);
    }
  }

  if ([stateCopy hasNavigationState])
  {
    v8 = -[RTNavigationManagerNavigationStateNotification initWithNavigationState:]([RTNavigationManagerNavigationStateNotification alloc], "initWithNavigationState:", [stateCopy navigationState]);
    if (v8)
    {
      [(RTNotifier *)self postNotification:v8];
    }
  }
}

- (void)navigationListener:(id)listener didChangeNavigationState:(unint64_t)state transportType:(int)type
{
  if (!state)
  {
    [(RTNavigationManager *)self setRouteSummary:0, 0, *&type];
  }
}

- (void)fetchNavigationRouteSummaryWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__RTNavigationManager_fetchNavigationRouteSummaryWithHandler___block_invoke;
    v6[3] = &unk_2788C4938;
    v6[4] = self;
    v7 = handlerCopy;
    dispatch_async(queue, v6);
  }
}

- (void)_fetchNavigationRouteSummaryWithHandler:(id)handler
{
  v49 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        routeSummary = [(RTNavigationManager *)self routeSummary];
        *buf = 138412803;
        v44 = v8;
        v45 = 2112;
        v46 = v9;
        v47 = 2117;
        v48 = routeSummary;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, route summary, %{sensitive}@", buf, 0x20u);
      }
    }

    routeSummary2 = [(RTNavigationManager *)self routeSummary];

    if (!routeSummary2)
    {
      array = [MEMORY[0x277CBEA60] array];
      handlerCopy[2](handlerCopy, array, 0);
LABEL_21:

      goto LABEL_22;
    }

    aSelector = a2;
    routeSummary3 = [(RTNavigationManager *)self routeSummary];
    origin = [routeSummary3 origin];
    mapItemStorage = [origin mapItemStorage];

    if (mapItemStorage)
    {
      mapServiceManager = [(RTNavigationManager *)self mapServiceManager];
      uUID = [MEMORY[0x277CCAD78] UUID];
      routeSummary4 = [(RTNavigationManager *)self routeSummary];
      origin2 = [routeSummary4 origin];
      mapItemStorage2 = [origin2 mapItemStorage];
      date = [MEMORY[0x277CBEAA8] date];
      v41 = 0;
      v39 = [mapServiceManager mapItemWithIdentifier:uUID geoMapItemStorage:mapItemStorage2 source:64 creationDate:date error:&v41];
      array = v41;

      if (array)
      {
        array2 = [MEMORY[0x277CBEA60] array];
        (handlerCopy)[2](handlerCopy, array2, array);
        v23 = v39;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v39 = 0;
    }

    mapServiceManager2 = [(RTNavigationManager *)self mapServiceManager];
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    routeSummary5 = [(RTNavigationManager *)self routeSummary];
    destination = [routeSummary5 destination];
    mapItemStorage3 = [destination mapItemStorage];
    date2 = [MEMORY[0x277CBEAA8] date];
    v40 = 0;
    array2 = [mapServiceManager2 mapItemWithIdentifier:uUID2 geoMapItemStorage:mapItemStorage3 source:64 creationDate:date2 error:&v40];
    array = v40;

    if (array)
    {
      array3 = [MEMORY[0x277CBEA60] array];
      (handlerCopy)[2](handlerCopy, array3, array);
      v23 = v39;
    }

    else
    {
      v31 = [RTNavigationRouteSummary alloc];
      routeSummary6 = [(RTNavigationManager *)self routeSummary];
      [routeSummary6 travelTime];
      v23 = v39;
      array3 = [(RTNavigationRouteSummary *)v31 initWithOriginMapItem:v39 destinationMapItem:array2 travelTime:?];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v33 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = NSStringFromSelector(aSelector);
          *buf = 138412803;
          v44 = v35;
          v45 = 2112;
          v46 = v36;
          v47 = 2117;
          v48 = array3;
          _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, %@, navigation route summary, %{sensitive}@", buf, 0x20u);
        }
      }

      v42 = array3;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      handlerCopy[2](handlerCopy, v37, 0);
    }

    goto LABEL_20;
  }

LABEL_22:
}

@end