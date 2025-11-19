@interface RTNavigationManager
+ (id)RTGEOTransportTypeToString:(unint64_t)a3;
- (RTNavigationManager)initWithAuthorizationManager:(id)a3 mapServiceManager:(id)a4;
- (void)_fetchNavigationRouteSummaryWithHandler:(id)a3;
- (void)_setup;
- (void)_shouldSetMonitorNavigationState;
- (void)_shouldSetMonitorRouteSummary;
- (void)_shouldSetNavigationListenerDelegate;
- (void)_shutdownWithHandler:(id)a3;
- (void)_updateNavigationState:(id)a3;
- (void)dealloc;
- (void)fetchNavigationRouteSummaryWithHandler:(id)a3;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)navigationListener:(id)a3 didChangeNavigationState:(unint64_t)a4 transportType:(int)a5;
- (void)onAuthorizationNotification:(id)a3;
- (void)setMonitorNavigationState:(BOOL)a3;
- (void)setMonitorRouteSummary:(BOOL)a3;
- (void)setRouteSummary:(id)a3;
- (void)setRoutineEnabled:(BOOL)a3;
- (void)setup;
@end

@implementation RTNavigationManager

- (RTNavigationManager)initWithAuthorizationManager:(id)a3 mapServiceManager:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v17.receiver = self;
    v17.super_class = RTNavigationManager;
    v9 = [(RTNotifier *)&v17 init];
    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x277D0EBF0]);
      v11 = [(RTNotifier *)v9 queue];
      v12 = [v10 initWithQueue:v11];
      navigationListener = v9->_navigationListener;
      v9->_navigationListener = v12;

      objc_storeStrong(&v9->_authorizationManager, a3);
      objc_storeStrong(&v9->_mapServiceManager, a4);
      v9->_monitorRouteSummary = 0;
      v9->_monitorNavigationState = 0;
      v9->_routineEnabled = 1;
      [(RTNavigationManager *)v9 setup];
    }

    self = v9;
    v14 = self;
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

    v14 = 0;
  }

  return v14;
}

- (void)setup
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__RTNavigationManager_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_setup
{
  authorizationManager = self->_authorizationManager;
  v4 = +[(RTNotification *)RTAuthorizationManagerNotificationRoutineEnabled];
  [(RTNotifier *)authorizationManager addObserver:self selector:sel_onAuthorizationNotification_ name:v4];
}

- (void)_shutdownWithHandler:(id)a3
{
  v5 = a3;
  [(GEONavigationListener *)self->_navigationListener setDelegate:0];
  [(RTNotifier *)self->_authorizationManager removeObserver:self];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
    v4 = v5;
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

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    [(RTNavigationManager *)self _shouldSetMonitorRouteSummary];
  }

  else
  {
    v11 = +[(RTNotification *)RTNavigationManagerNavigationStateNotification];
    v12 = [v8 isEqualToString:v11];

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
        v20 = v8;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, unsupported notification, %@, observer, %@", &v17, 0x20u);
      }
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    [(RTNavigationManager *)self _shouldSetMonitorRouteSummary];
  }

  else
  {
    v11 = +[(RTNotification *)RTNavigationManagerNavigationStateNotification];
    v12 = [v8 isEqualToString:v11];

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
        v20 = v8;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, unsupported notification, %@, observer, %@", &v17, 0x20u);
      }
    }
  }
}

+ (id)RTGEOTransportTypeToString:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"Automobile";
  }

  else
  {
    return off_2788D12E0[a3 - 1];
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
    v3 = [(RTNavigationManager *)self navigationListener];
    v4 = [v3 delegate];

    if (v4)
    {
      return;
    }

    v5 = [(RTNavigationManager *)self navigationListener];
    [v5 setDelegate:self];

    v6 = [(RTNavigationManager *)self navigationListener];
    [v6 requestRouteSummary];
  }

  else
  {
    v6 = [(RTNavigationManager *)self navigationListener];
    [v6 setDelegate:0];
  }
}

- (void)setMonitorRouteSummary:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_monitorRouteSummary != a3)
  {
    self->_monitorRouteSummary = a3;
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

- (void)setMonitorNavigationState:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_monitorNavigationState != a3)
  {
    self->_monitorNavigationState = a3;
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

- (void)setRoutineEnabled:(BOOL)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_routineEnabled != a3)
  {
    self->_routineEnabled = a3;
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

- (void)setRouteSummary:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(GEONavigationRouteSummary *)self->_routeSummary isEqual:v6])
  {
    objc_storeStrong(&self->_routeSummary, a3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(a2);
        v12 = 138412547;
        v13 = v11;
        v14 = 2117;
        v15 = v6;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, route summary, %{sensitive}@", &v12, 0x16u);
      }
    }

    v7 = [[RTNavigationManagerRouteSummaryNotification alloc] initWithRouteSummary:v6];
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
      v17 = v6;
      _os_log_impl(&dword_2304B3000, &v7->super.super, OS_LOG_TYPE_INFO, "%@, self.routeSummary, %{sensitive}@, routeSummary, %{sensitive}@", &v12, 0x20u);
    }

LABEL_11:
  }
}

- (void)onAuthorizationNotification:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTNavigationManager_onAuthorizationNotification___block_invoke;
  block[3] = &unk_2788C5020;
  v10 = self;
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
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

- (void)_updateNavigationState:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, navigation state, %@", &v9, 0x16u);
    }
  }

  if ([v5 hasNavigationState])
  {
    v8 = -[RTNavigationManagerNavigationStateNotification initWithNavigationState:]([RTNavigationManagerNavigationStateNotification alloc], "initWithNavigationState:", [v5 navigationState]);
    if (v8)
    {
      [(RTNotifier *)self postNotification:v8];
    }
  }
}

- (void)navigationListener:(id)a3 didChangeNavigationState:(unint64_t)a4 transportType:(int)a5
{
  if (!a4)
  {
    [(RTNavigationManager *)self setRouteSummary:0, 0, *&a5];
  }
}

- (void)fetchNavigationRouteSummaryWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__RTNavigationManager_fetchNavigationRouteSummaryWithHandler___block_invoke;
    v6[3] = &unk_2788C4938;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)_fetchNavigationRouteSummaryWithHandler:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityNavigation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        v10 = [(RTNavigationManager *)self routeSummary];
        *buf = 138412803;
        v44 = v8;
        v45 = 2112;
        v46 = v9;
        v47 = 2117;
        v48 = v10;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, route summary, %{sensitive}@", buf, 0x20u);
      }
    }

    v11 = [(RTNavigationManager *)self routeSummary];

    if (!v11)
    {
      v21 = [MEMORY[0x277CBEA60] array];
      v5[2](v5, v21, 0);
LABEL_21:

      goto LABEL_22;
    }

    aSelector = a2;
    v12 = [(RTNavigationManager *)self routeSummary];
    v13 = [v12 origin];
    v14 = [v13 mapItemStorage];

    if (v14)
    {
      v15 = [(RTNavigationManager *)self mapServiceManager];
      v16 = [MEMORY[0x277CCAD78] UUID];
      v17 = [(RTNavigationManager *)self routeSummary];
      v18 = [v17 origin];
      v19 = [v18 mapItemStorage];
      v20 = [MEMORY[0x277CBEAA8] date];
      v41 = 0;
      v39 = [v15 mapItemWithIdentifier:v16 geoMapItemStorage:v19 source:64 creationDate:v20 error:&v41];
      v21 = v41;

      if (v21)
      {
        v22 = [MEMORY[0x277CBEA60] array];
        (v5)[2](v5, v22, v21);
        v23 = v39;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v39 = 0;
    }

    v24 = [(RTNavigationManager *)self mapServiceManager];
    v25 = [MEMORY[0x277CCAD78] UUID];
    v26 = [(RTNavigationManager *)self routeSummary];
    v27 = [v26 destination];
    v28 = [v27 mapItemStorage];
    v29 = [MEMORY[0x277CBEAA8] date];
    v40 = 0;
    v22 = [v24 mapItemWithIdentifier:v25 geoMapItemStorage:v28 source:64 creationDate:v29 error:&v40];
    v21 = v40;

    if (v21)
    {
      v30 = [MEMORY[0x277CBEA60] array];
      (v5)[2](v5, v30, v21);
      v23 = v39;
    }

    else
    {
      v31 = [RTNavigationRouteSummary alloc];
      v32 = [(RTNavigationManager *)self routeSummary];
      [v32 travelTime];
      v23 = v39;
      v30 = [(RTNavigationRouteSummary *)v31 initWithOriginMapItem:v39 destinationMapItem:v22 travelTime:?];

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
          v48 = v30;
          _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_INFO, "%@, %@, navigation route summary, %{sensitive}@", buf, 0x20u);
        }
      }

      v42 = v30;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      v5[2](v5, v37, 0);
    }

    goto LABEL_20;
  }

LABEL_22:
}

@end