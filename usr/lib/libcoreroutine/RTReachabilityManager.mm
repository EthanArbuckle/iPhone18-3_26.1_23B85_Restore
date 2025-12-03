@interface RTReachabilityManager
+ (id)reachabilityToString:(unint64_t)string;
- (RTReachabilityManager)init;
- (RTReachabilityManager)initWithPathEvaluator:(id)evaluator;
- (unint64_t)reachability;
- (void)_fetchCurrentReachability:(id)reachability;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_processReachabilityChange:(id)change;
- (void)_shutdownWithHandler:(id)handler;
- (void)dealloc;
- (void)fetchCurrentReachability:(id)reachability;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation RTReachabilityManager

- (RTReachabilityManager)init
{
  mEMORY[0x277CD9200] = [MEMORY[0x277CD9200] sharedDefaultEvaluator];
  v4 = [(RTReachabilityManager *)self initWithPathEvaluator:mEMORY[0x277CD9200]];

  return v4;
}

- (RTReachabilityManager)initWithPathEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  if (evaluatorCopy)
  {
    v11.receiver = self;
    v11.super_class = RTReachabilityManager;
    v6 = [(RTNotifier *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_pathEvaluator, evaluator);
      v7->_currentReachability = 0;
      [(NWPathEvaluator *)v7->_pathEvaluator addObserver:v7 forKeyPath:@"path" options:5 context:0];
      v7->_observingReachabilityChanges = 1;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pathEvaluator", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  v8 = +[(RTNotification *)RTReachabilityMonitorNotificationReachabilityChanged];
  v9 = [nameCopy isEqualToString:v8];

  if (v9)
  {
    v10 = [[RTReachabilityMonitorNotificationReachabilityChanged alloc] initWithReachability:self->_currentReachability];
    [(RTNotifier *)self postNotification:v10 toObserver:observerCopy];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v13, 0xCu);
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412802;
      v14 = nameCopy;
      v15 = 2080;
      v16 = "[RTReachabilityManager internalAddObserver:name:]";
      v17 = 1024;
      v18 = 75;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "unsupported notification, %@ (in %s:%d)", &v13, 0x1Cu);
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = +[(RTNotification *)RTReachabilityMonitorNotificationReachabilityChanged];
  v6 = [nameCopy isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityReachability);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v9, 0xCu);
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412802;
      v10 = nameCopy;
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

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_observingReachabilityChanges)
  {
    [(NWPathEvaluator *)self->_pathEvaluator removeObserver:self forKeyPath:@"path" context:0];
    handlerCopy = v5;
    self->_observingReachabilityChanges = 0;
  }

  self->_currentReachability = 0;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(v5, 0);
    handlerCopy = v5;
  }
}

- (void)_processReachabilityChange:(id)change
{
  v30 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  path = [changeCopy path];
  status = [path status];

  v7 = status & 0xFFFFFFFFFFFFFFFDLL;
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

    path2 = [changeCopy path];
    v9 = [path2 usesInterfaceType:1];

    v10 = v9;
    path3 = [changeCopy path];
    v12 = [path3 usesInterfaceType:2];

    if (v12)
    {
      v13 = v10 | 2;
    }

    else
    {
      v13 = v10;
    }

    path4 = [changeCopy path];
    v15 = [path4 usesInterfaceType:0];

    path5 = [changeCopy path];
    v17 = [path5 usesInterfaceType:3];

    path6 = [changeCopy path];
    v19 = [path6 usesInterfaceType:4];

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

+ (id)reachabilityToString:(unint64_t)string
{
  if (string)
  {
    stringCopy = string;
    v4 = objc_opt_new();
    v5 = v4;
    if (stringCopy)
    {
      [v4 addObject:@"WiFi"];
      if ((stringCopy & 2) == 0)
      {
LABEL_4:
        if ((stringCopy & 4) == 0)
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

    else if ((stringCopy & 2) == 0)
    {
      goto LABEL_4;
    }

    [v5 addObject:@"Cellular"];
    if ((stringCopy & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = @"No Connection";
LABEL_8:

  return v6;
}

- (void)fetchCurrentReachability:(id)reachability
{
  reachabilityCopy = reachability;
  if (reachabilityCopy)
  {
    queue = [(RTNotifier *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__RTReachabilityManager_fetchCurrentReachability___block_invoke;
    v6[3] = &unk_2788C4938;
    v6[4] = self;
    v7 = reachabilityCopy;
    dispatch_async(queue, v6);
  }
}

- (void)_fetchCurrentReachability:(id)reachability
{
  v13 = *MEMORY[0x277D85DE8];
  reachabilityCopy = reachability;
  v5 = reachabilityCopy;
  if (reachabilityCopy)
  {
    if (self->_pathEvaluator)
    {
      (*(reachabilityCopy + 2))(reachabilityCopy, self->_currentReachability);
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
  queue = [(RTNotifier *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__RTReachabilityManager_reachability__block_invoke;
  v6[3] = &unk_2788C7FB0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTReachabilityManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_2788C50E8;
  block[4] = self;
  v18 = pathCopy;
  v19 = objectCopy;
  v20 = changeCopy;
  contextCopy = context;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(queue, block);
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if ([path isEqualToString:@"path"] && -[NWPathEvaluator isEqual:](self->_pathEvaluator, "isEqual:", objectCopy))
  {
    [(RTReachabilityManager *)self _processReachabilityChange:objectCopy];
  }
}

@end