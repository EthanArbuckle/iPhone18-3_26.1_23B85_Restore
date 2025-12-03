@interface RTPersistenceContainer
- (BOOL)_validateConfigurations:(id)configurations;
- (BOOL)storesNeedSetup;
- (BOOL)updateContainerConfigurations:(id)configurations;
- (RTPersistenceContainer)initWithName:(id)name model:(id)model configurations:(id)configurations;
- (RTPersistenceContainerDelegate)delegate;
- (id)persistenceContext;
- (id)persistenceContextWithOptions:(unint64_t)options;
- (id)tearDownPersistenceStack;
- (id)waitForPersistenceContext;
- (void)dealloc;
- (void)persistenceContextWithHandler:(id)handler;
- (void)resumePersistenceStores;
- (void)setupPersistenceStores;
- (void)suspendPersistenceStores;
@end

@implementation RTPersistenceContainer

- (RTPersistenceContainer)initWithName:(id)name model:(id)model configurations:(id)configurations
{
  v41 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  modelCopy = model;
  configurationsCopy = configurations;
  if (!nameCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v38 = "[RTPersistenceContainer initWithName:model:configurations:]";
      v39 = 1024;
      v40 = 46;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: name (in %s:%d)", buf, 0x12u);
    }

    if (modelCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (!modelCopy)
  {
LABEL_15:
    v30 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v38 = "[RTPersistenceContainer initWithName:model:configurations:]";
      v39 = 1024;
      v40 = 47;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: model (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_18;
  }

  if (![(RTPersistenceContainer *)self _validateConfigurations:configurationsCopy])
  {
    goto LABEL_18;
  }

  versionIdentifiers = [modelCopy versionIdentifiers];
  v12 = [versionIdentifiers count];

  if (v12 != 1)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v38 = "[RTPersistenceContainer initWithName:model:configurations:]";
      v39 = 1024;
      v40 = 56;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Containers require model with exactly one version identifier (in %s:%d)", buf, 0x12u);
    }
  }

  versionIdentifiers2 = [modelCopy versionIdentifiers];
  v15 = [versionIdentifiers2 count];

  if (v15 != 1)
  {
LABEL_18:
    selfCopy = 0;
    goto LABEL_19;
  }

  v36.receiver = self;
  v36.super_class = RTPersistenceContainer;
  v16 = [(RTPersistenceContainer *)&v36 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v17;

    v19 = [configurationsCopy copy];
    configurations = v16->_configurations;
    v16->_configurations = v19;

    v21 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:modelCopy];
    coordinator = v16->_coordinator;
    v16->_coordinator = v21;

    [(NSPersistentStoreCoordinator *)v16->_coordinator setName:nameCopy];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%p", objc_opt_class(), v16->_name, v16];
    v24 = dispatch_queue_attr_make_with_overcommit();
    v25 = dispatch_queue_attr_make_initially_inactive(v24);

    v26 = v23;
    v27 = v25;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [v26 UTF8String];
    }

    else
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v26];
      uTF8String = [v33 UTF8String];
    }

    v34 = dispatch_queue_create(uTF8String, v27);

    contextRequestsQueue = v16->_contextRequestsQueue;
    v16->_contextRequestsQueue = v34;

    v16->_serveContexts = 0;
  }

  self = v16;
  selfCopy = self;
LABEL_19:

  return selfCopy;
}

- (void)dealloc
{
  contextRequestsQueue = [(RTPersistenceContainer *)self contextRequestsQueue];
  v4 = contextRequestsQueue;
  if (contextRequestsQueue)
  {
    dispatch_activate(contextRequestsQueue);
    [(RTPersistenceContainer *)self setContextRequestsQueue:0];
  }

  v5.receiver = self;
  v5.super_class = RTPersistenceContainer;
  [(RTPersistenceContainer *)&v5 dealloc];
}

- (BOOL)_validateConfigurations:(id)configurations
{
  v30 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  if (![configurationsCopy count])
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTPersistenceContainer _validateConfigurations:]";
      v27 = 1024;
      LODWORD(v28) = 91;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configurations.count (in %s:%d)", buf, 0x12u);
    }
  }

  if ([configurationsCopy count])
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(configurationsCopy, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = configurationsCopy;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          store = [*(*(&v21 + 1) + 8 * i) store];
          v13 = [store URL];

          if (v13)
          {
            [v6 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v9);
    }

    v14 = [v6 count];
    if (v14 != [v7 count])
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "[RTPersistenceContainer _validateConfigurations:]";
        v27 = 1024;
        LODWORD(v28) = 105;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Containers require each store to have a unique URL (in %s:%d)", buf, 0x12u);
      }
    }

    v16 = [v6 count];
    v17 = v16 == [v7 count];
    if (v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        name = [(RTPersistenceContainer *)self name];
        *buf = 138412546;
        v26 = name;
        v27 = 2112;
        v28 = v7;
        _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "container named, %@, updating configurations, %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)suspendPersistenceStores
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "suspending persistence stores.", v4, 2u);
    }
  }

  [(RTPersistenceContainer *)self setServeContexts:0];
}

- (void)resumePersistenceStores
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "resuming persistence stores.", v4, 2u);
    }
  }

  [(RTPersistenceContainer *)self setServeContexts:1];
}

- (BOOL)storesNeedSetup
{
  contextRequestsQueue = [(RTPersistenceContainer *)self contextRequestsQueue];
  v3 = contextRequestsQueue != 0;

  return v3;
}

- (id)tearDownPersistenceStack
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_configurations;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        store = [*(*(&v20 + 1) + 8 * v7) store];
        coordinator = [(RTPersistenceContainer *)self coordinator];
        v19 = 0;
        v10 = [store removeFromCoordinator:coordinator error:&v19];
        v11 = v19;

        if (v10)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 0;
        }

        if (!v12)
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v11;
            _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "error closing store, %@", buf, 0xCu);
          }

          if (v11)
          {
            [v18 addObject:v11];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v5);
  }

  configurations = self->_configurations;
  self->_configurations = 0;

  v15 = _RTSafeArray();
  v16 = _RTMultiErrorCreate();

  return v16;
}

- (void)setupPersistenceStores
{
  selfCopy = self;
  v55 = *MEMORY[0x277D85DE8];
  if (![(RTPersistenceContainer *)self storesNeedSetup])
  {
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      name = [(RTPersistenceContainer *)selfCopy name];
      *buf = 138412290;
      v49 = name;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "container named, %@, opening stores", buf, 0xCu);
    }
  }

  v4 = [(NSArray *)selfCopy->_configurations mutableCopy];
  v40 = selfCopy;
  if (![v4 count])
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    goto LABEL_44;
  }

  v39 = 0;
  *&v5 = 134218498;
  v37 = v5;
  v42 = v4;
  do
  {
    context = objc_autoreleasePoolPush();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = [v4 copy];
    v6 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (!v6)
    {
      goto LABEL_38;
    }

    v7 = v6;
    v8 = *v45;
    do
    {
      v9 = 0;
      do
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v44 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        store = [v10 store];
        coordinator = [(RTPersistenceContainer *)selfCopy coordinator];
        v14 = [store URL];
        v15 = [coordinator persistentStoreForURL:v14];

        if (v15)
        {
          [v42 removeObject:v10];
          goto LABEL_26;
        }

        coordinator2 = [(RTPersistenceContainer *)selfCopy coordinator];
        v43 = 0;
        v17 = [store openWithCoordinator:coordinator2 configuration:v10 error:&v43];
        v18 = v43;

        if ([v18 code] == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              name2 = [(RTPersistenceContainer *)v40 name];
              *buf = 138412290;
              v49 = name2;
              _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "container named, %@, currently unavailable", buf, 0xCu);
            }
          }

          [v42 removeObject:{v10, v37}];
          v39 = 1;
        }

        else
        {
          if (v18)
          {
            [v42 removeAllObjects];
            selfCopy = v40;
            [(RTPersistenceContainer *)v40 setSetupFailed:1];

            objc_autoreleasePoolPop(v11);
            goto LABEL_38;
          }

          if ((v17 & 1) == 0)
          {
            if ([store state] == 2)
            {
              selfCopy = v40;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_25;
              }

              v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                name3 = [(RTPersistenceContainer *)v40 name];
                *buf = 138412290;
                v49 = name3;
                _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "container named, %@, currently yielding", buf, 0xCu);
              }
            }

            else
            {
              v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              selfCopy = v40;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                state = [store state];
                *buf = v37;
                v49 = state;
                v50 = 2080;
                v51 = "[RTPersistenceContainer setupPersistenceStores]";
                v52 = 1024;
                v53 = 202;
                _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "unknown store state, %lu (in %s:%d)", buf, 0x1Cu);
              }
            }

            goto LABEL_25;
          }

          [v42 removeObject:v10];
        }

        selfCopy = v40;
LABEL_25:

LABEL_26:
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v24 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
      v7 = v24;
    }

    while (v24);
LABEL_38:

    objc_autoreleasePoolPop(context);
    v4 = v42;
  }

  while ([v42 count]);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  if ((v39 & 1) != 0 && ![(RTPersistenceContainer *)selfCopy setupFailed])
  {
    if (objc_opt_respondsToSelector())
    {
      contextRequestsQueue = [(RTPersistenceContainer *)selfCopy contextRequestsQueue];
      [WeakRetained container:selfCopy failedToActivateRequestsQueue:contextRequestsQueue];
    }

    goto LABEL_57;
  }

LABEL_44:
  setupFailed = [(RTPersistenceContainer *)selfCopy setupFailed];
  v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (setupFailed)
  {
    v29 = v40;
    if (v28)
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        name4 = [(RTPersistenceContainer *)v40 name];
        *buf = 138412290;
        v49 = name4;
        _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "container named, %@, failed to open all stores", buf, 0xCu);
      }

      v29 = v40;
    }
  }

  else
  {
    if (v28)
    {
      v31 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        name5 = [(RTPersistenceContainer *)v40 name];
        *buf = 138412290;
        v49 = name5;
        _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "container named, %@, successfully opened all stores", buf, 0xCu);
      }
    }

    v29 = v40;
    [(RTPersistenceContainer *)v40 setServeContexts:1];
  }

  if (objc_opt_respondsToSelector())
  {
    contextRequestsQueue2 = [(RTPersistenceContainer *)v29 contextRequestsQueue];
    [WeakRetained container:v40 willActivateRequestsQueue:contextRequestsQueue2];

    v29 = v40;
  }

  contextRequestsQueue3 = [(RTPersistenceContainer *)v29 contextRequestsQueue];
  dispatch_activate(contextRequestsQueue3);

  [(RTPersistenceContainer *)v29 setContextRequestsQueue:0];
LABEL_57:
}

- (BOOL)updateContainerConfigurations:(id)configurations
{
  v15 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  if ([(RTPersistenceContainer *)self _validateConfigurations:configurationsCopy]&& [(RTPersistenceContainer *)self storesNeedSetup])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        name = [(RTPersistenceContainer *)self name];
        v11 = 138412546;
        v12 = name;
        v13 = 2112;
        v14 = configurationsCopy;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "container named, %@, updating configurations, %@", &v11, 0x16u);
      }
    }

    v6 = [configurationsCopy copy];
    configurations = self->_configurations;
    self->_configurations = v6;

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)persistenceContextWithHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    contextRequestsQueue = [(RTPersistenceContainer *)self contextRequestsQueue];
    if (contextRequestsQueue)
    {
      v6 = contextRequestsQueue;
      objc_initWeak(location, self);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __56__RTPersistenceContainer_persistenceContextWithHandler___block_invoke;
      v8[3] = &unk_2788CA2D8;
      v9 = handlerCopy;
      objc_copyWeak(&v10, location);
      dispatch_async(v6, v8);
      objc_destroyWeak(&v10);

      objc_destroyWeak(location);
    }

    else
    {
      _persistenceContext = [(RTPersistenceContainer *)self _persistenceContext];
      (*(handlerCopy + 2))(handlerCopy, _persistenceContext);

      v6 = 0;
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "[RTPersistenceContainer persistenceContextWithHandler:]";
      v12 = 1024;
      v13 = 257;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", location, 0x12u);
    }
  }
}

void __56__RTPersistenceContainer_persistenceContextWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _persistenceContext];
  (*(v1 + 16))(v1, v2);
}

- (id)persistenceContext
{
  contextRequestsQueue = [(RTPersistenceContainer *)self contextRequestsQueue];

  if (contextRequestsQueue)
  {
    _persistenceContext = 0;
  }

  else
  {
    _persistenceContext = [(RTPersistenceContainer *)self _persistenceContext];
  }

  return _persistenceContext;
}

- (id)waitForPersistenceContext
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__64;
  v14 = __Block_byref_object_dispose__64;
  v15 = 0;
  contextRequestsQueue = [(RTPersistenceContainer *)self contextRequestsQueue];
  v4 = contextRequestsQueue;
  if (contextRequestsQueue)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__RTPersistenceContainer_waitForPersistenceContext__block_invoke;
    v9[3] = &unk_2788C7FB0;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(contextRequestsQueue, v9);
  }

  else
  {
    _persistenceContext = [(RTPersistenceContainer *)self _persistenceContext];
    v6 = v11[5];
    v11[5] = _persistenceContext;
  }

  v7 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __51__RTPersistenceContainer_waitForPersistenceContext__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _persistenceContext];

  return MEMORY[0x2821F96F8]();
}

- (id)persistenceContextWithOptions:(unint64_t)options
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(RTPersistenceContainer *)self setupFailed])
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTPersistenceContainer persistenceContextWithOptions:]";
      v22 = 1024;
      v23 = 310;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Unable to vend managed object context due to setup failure. (in %s:%d)", buf, 0x12u);
    }

LABEL_4:
    v6 = 0;
LABEL_12:

    goto LABEL_13;
  }

  if ((options & 1) != 0 || [(RTPersistenceContainer *)self serveContexts])
  {
    v7 = [[RTPersistenceContext alloc] initWithConcurrencyType:1 options:options];
    mergeByPropertyStoreTrumpMergePolicy = [MEMORY[0x277CBE460] mergeByPropertyStoreTrumpMergePolicy];
    [(RTPersistenceContext *)v7 setMergePolicy:mergeByPropertyStoreTrumpMergePolicy];

    coordinator = [(RTPersistenceContainer *)self coordinator];
    [(RTPersistenceContext *)v7 setPersistentStoreCoordinator:coordinator];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    [(RTPersistenceContext *)v7 setName:processName];

    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    processName2 = [processInfo2 processName];
    [(RTPersistenceContext *)v7 setTransactionAuthor:processName2];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__RTPersistenceContainer_persistenceContextWithOptions___block_invoke;
    v18[3] = &unk_2788C4A70;
    v18[4] = self;
    v14 = v7;
    v19 = v14;
    [(RTPersistenceContext *)v14 performBlockAndWait:v18];
    if (!v14)
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[RTPersistenceContainer persistenceContextWithOptions:]";
        v22 = 1024;
        v23 = 335;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Failed to return a valid managed object context. (in %s:%d)", buf, 0x12u);
      }
    }

    v16 = v19;
    v5 = v14;

    v6 = v5;
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "Not serving contexts due to suspension.", buf, 2u);
    }

    goto LABEL_4;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

void __56__RTPersistenceContainer_persistenceContextWithOptions___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) userInfo];
        v9 = [v7 store];
        v10 = [v9 userInfo];
        [v8 addEntriesFromDictionary:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (RTPersistenceContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end