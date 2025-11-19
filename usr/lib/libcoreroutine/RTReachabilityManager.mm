@interface RTReachabilityManager
+ (id)reachabilityToString:(unint64_t)a3;
- (RTReachabilityManager)init;
- (RTReachabilityManager)initWithPathEvaluator:(id)a3;
- (unint64_t)reachability;
- (void)_fetchCurrentReachability:(id)a3;
- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)_processReachabilityChange:(id)a3;
- (void)_shutdownWithHandler:(id)a3;
- (void)dealloc;
- (void)fetchCurrentReachability:(id)a3;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation RTReachabilityManager

- (RTReachabilityManager)init
{
  v3 = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  v4 = [(RTReachabilityManager *)self initWithPathEvaluator:v3];

  return v4;
}

- (RTReachabilityManager)initWithPathEvaluator:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = RTReachabilityManager;
    v6 = [(RTNotifier *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_pathEvaluator, a3);
      v7->_currentReachability = 0;
      [(NWPathEvaluator *)v7->_pathEvaluator addObserver:v7 forKeyPath:@"path" options:5 context:0];
      v7->_observingReachabilityChanges = 1;
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pathEvaluator", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[(RTNotification *)RTReachabilityMonitorNotificationReachabilityChanged];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [[RTReachabilityMonitorNotificationReachabilityChanged alloc] initWithReachability:self->_currentReachability];
    [(RTNotifier *)self postNotification:v10 toObserver:v6];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v13, 0xCu);
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = v7;
      v15 = 2080;
      v16 = "[RTReachabilityManager internalAddObserver:name:]";
      v17 = 1024;
      v18 = 75;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "unsupported notification, %@ (in %s:%d)", &v13, 0x1Cu);
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = +[(RTNotification *)RTReachabilityMonitorNotificationReachabilityChanged];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v9, 0xCu);
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412802;
      v10 = v4;
      v11 = 2080;
      v12 = "[RTReachabilityManager internalRemoveObserver:name:]";
      v13 = 1024;
      v14 = 87;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "unsupported notification, %@ (in %s:%d)", &v9, 0x1Cu);
    }
  }
}

- (void)dealloc
{
  if (self->_observingReachabilityChanges)
  {
    [(NWPathEvaluator *)self->_pathEvaluator removeObserver:self forKeyPath:@"path" context:0];
    self->_observingReachabilityChanges = 0;
  }

  self->_currentReachability = 0;
  v3.receiver = self;
  v3.super_class = RTReachabilityManager;
  [(RTReachabilityManager *)&v3 dealloc];
}

- (void)_shutdownWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_observingReachabilityChanges)
  {
    [(NWPathEvaluator *)self->_pathEvaluator removeObserver:self forKeyPath:@"path" context:0];
    v4 = v5;
    self->_observingReachabilityChanges = 0;
  }

  self->_currentReachability = 0;
  if (v4)
  {
    (*(v4 + 2))(v5, 0);
    v4 = v5;
  }
}

- (void)_processReachabilityChange:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 path];
  v6 = [v5 status];

  v7 = v6 & 0xFFFFFFFFFFFFFFFDLL;
  if (v7)
  {
    if (v7 != 1)
    {
      v25 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "unhandled reachability case", &v26, 2u);
      }

      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(&v21->super.super, OS_LOG_TYPE_ERROR))
      {
        v26 = 136315394;
        v27 = "[RTReachabilityManager _processReachabilityChange:]";
        v28 = 1024;
        LODWORD(v29) = 149;
        _os_log_error_impl(&dword_2304B3000, &v21->super.super, OS_LOG_TYPE_ERROR, "unhandled reachability case (in %s:%d)", &v26, 0x12u);
      }

      goto LABEL_18;
    }

    v8 = [v4 path];
    v9 = [v8 usesInterfaceType:1];

    v10 = v9;
    v11 = [v4 path];
    v12 = [v11 usesInterfaceType:2];

    if (v12)
    {
      v13 = v10 | 2;
    }

    else
    {
      v13 = v10;
    }

    v14 = [v4 path];
    v15 = [v14 usesInterfaceType:0];

    v16 = [v4 path];
    v17 = [v16 usesInterfaceType:3];

    v18 = [v4 path];
    v19 = [v18 usesInterfaceType:4];

    if (((v19 | v17) | v15))
    {
      v7 = v13 | 4;
    }

    else
    {
      v7 = v13;
    }
  }

  currentReachability = self->_currentReachability;
  if (currentReachability != v7)
  {
    self->_currentReachability = v7;
    v21 = [[RTReachabilityMonitorNotificationReachabilityChanged alloc] initWithReachability:self->_currentReachability];
    [(RTNotifier *)self postNotification:v21];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [objc_opt_class() reachabilityToString:v7];
        v24 = [objc_opt_class() reachabilityToString:currentReachability];
        v26 = 138412546;
        v27 = v23;
        v28 = 2112;
        v29 = v24;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "reachability changed to, %@, from, %@", &v26, 0x16u);
      }
    }

LABEL_18:
  }
}

+ (id)reachabilityToString:(unint64_t)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_opt_new();
    v5 = v4;
    if (v3)
    {
      [v4 addObject:@"WiFi"];
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
LABEL_6:
          v6 = [v5 componentsJoinedByString:{@", "}];

          goto LABEL_8;
        }

LABEL_5:
        [v5 addObject:@"Other"];
        goto LABEL_6;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v5 addObject:@"Cellular"];
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = @"No Connection";
LABEL_8:

  return v6;
}

- (void)fetchCurrentReachability:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__RTReachabilityManager_fetchCurrentReachability___block_invoke;
    v6[3] = &unk_2788C4938;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)_fetchCurrentReachability:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self->_pathEvaluator)
    {
      (*(v4 + 2))(v4, self->_currentReachability);
    }

    else
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9) = 0;
        _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "attempted to fetch current reachability with nil path evaluator", &v9, 2u);
      }

      v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "[RTReachabilityManager _fetchCurrentReachability:]";
        v11 = 1024;
        v12 = 212;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "attempted to fetch current reachability with nil path evaluator (in %s:%d)", &v9, 0x12u);
      }

      v5[2](v5, 0);
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", &v9, 2u);
    }
  }
}

- (unint64_t)reachability
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(RTNotifier *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__RTReachabilityManager_reachability__block_invoke;
  v6[3] = &unk_2788C7FB0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTReachabilityManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_2788C50E8;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  if ([a3 isEqualToString:@"path"] && -[NWPathEvaluator isEqual:](self->_pathEvaluator, "isEqual:", v8))
  {
    [(RTReachabilityManager *)self _processReachabilityChange:v8];
  }
}

@end