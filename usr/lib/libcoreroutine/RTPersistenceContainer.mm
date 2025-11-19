@interface RTPersistenceContainer
- (BOOL)_validateConfigurations:(id)a3;
- (BOOL)storesNeedSetup;
- (BOOL)updateContainerConfigurations:(id)a3;
- (RTPersistenceContainer)initWithName:(id)a3 model:(id)a4 configurations:(id)a5;
- (RTPersistenceContainerDelegate)delegate;
- (id)persistenceContext;
- (id)persistenceContextWithOptions:(unint64_t)a3;
- (id)tearDownPersistenceStack;
- (id)waitForPersistenceContext;
- (void)dealloc;
- (void)persistenceContextWithHandler:(id)a3;
- (void)resumePersistenceStores;
- (void)setupPersistenceStores;
- (void)suspendPersistenceStores;
@end

@implementation RTPersistenceContainer

- (RTPersistenceContainer)initWithName:(id)a3 model:(id)a4 configurations:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
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

    if (v9)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (!v9)
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

  if (![(RTPersistenceContainer *)self _validateConfigurations:v10])
  {
    goto LABEL_18;
  }

  v11 = [v9 versionIdentifiers];
  v12 = [v11 count];

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

  v14 = [v9 versionIdentifiers];
  v15 = [v14 count];

  if (v15 != 1)
  {
LABEL_18:
    v31 = 0;
    goto LABEL_19;
  }

  v36.receiver = self;
  v36.super_class = RTPersistenceContainer;
  v16 = [(RTPersistenceContainer *)&v36 init];
  if (v16)
  {
    v17 = [v8 copy];
    name = v16->_name;
    v16->_name = v17;

    v19 = [v10 copy];
    configurations = v16->_configurations;
    v16->_configurations = v19;

    v21 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v9];
    coordinator = v16->_coordinator;
    v16->_coordinator = v21;

    [(NSPersistentStoreCoordinator *)v16->_coordinator setName:v8];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%p", objc_opt_class(), v16->_name, v16];
    v24 = dispatch_queue_attr_make_with_overcommit();
    v25 = dispatch_queue_attr_make_initially_inactive(v24);

    v26 = v23;
    v27 = v25;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [v26 UTF8String];
    }

    else
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v26];
      v28 = [v33 UTF8String];
    }

    v34 = dispatch_queue_create(v28, v27);

    contextRequestsQueue = v16->_contextRequestsQueue;
    v16->_contextRequestsQueue = v34;

    v16->_serveContexts = 0;
  }

  self = v16;
  v31 = self;
LABEL_19:

  return v31;
}

- (void)dealloc
{
  v3 = [(RTPersistenceContainer *)self contextRequestsQueue];
  v4 = v3;
  if (v3)
  {
    dispatch_activate(v3);
    [(RTPersistenceContainer *)self setContextRequestsQueue:0];
  }

  v5.receiver = self;
  v5.super_class = RTPersistenceContainer;
  [(RTPersistenceContainer *)&v5 dealloc];
}

- (BOOL)_validateConfigurations:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 count])
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

  if ([v4 count])
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v4;
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

          v12 = [*(*(&v21 + 1) + 8 * i) store];
          v13 = [v12 URL];

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
        v20 = [(RTPersistenceContainer *)self name];
        *buf = 138412546;
        v26 = v20;
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
  v2 = [(RTPersistenceContainer *)self contextRequestsQueue];
  v3 = v2 != 0;

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

        v8 = [*(*(&v20 + 1) + 8 * v7) store];
        v9 = [(RTPersistenceContainer *)self coordinator];
        v19 = 0;
        v10 = [v8 removeFromCoordinator:v9 error:&v19];
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
  v2 = self;
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
      v34 = [(RTPersistenceContainer *)v2 name];
      *buf = 138412290;
      v49 = v34;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "container named, %@, opening stores", buf, 0xCu);
    }
  }

  v4 = [(NSArray *)v2->_configurations mutableCopy];
  v40 = v2;
  if (![v4 count])
  {
    WeakRetained = objc_loadWeakRetained(&v2->_delegate);
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
        v12 = [v10 store];
        v13 = [(RTPersistenceContainer *)v2 coordinator];
        v14 = [v12 URL];
        v15 = [v13 persistentStoreForURL:v14];

        if (v15)
        {
          [v42 removeObject:v10];
          goto LABEL_26;
        }

        v16 = [(RTPersistenceContainer *)v2 coordinator];
        v43 = 0;
        v17 = [v12 openWithCoordinator:v16 configuration:v10 error:&v43];
        v18 = v43;

        if ([v18 code] == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v22 = [(RTPersistenceContainer *)v40 name];
              *buf = 138412290;
              v49 = v22;
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
            v2 = v40;
            [(RTPersistenceContainer *)v40 setSetupFailed:1];

            objc_autoreleasePoolPop(v11);
            goto LABEL_38;
          }

          if ((v17 & 1) == 0)
          {
            if ([v12 state] == 2)
            {
              v2 = v40;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_25;
              }

              v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v21 = [(RTPersistenceContainer *)v40 name];
                *buf = 138412290;
                v49 = v21;
                _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "container named, %@, currently yielding", buf, 0xCu);
              }
            }

            else
            {
              v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              v2 = v40;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v23 = [v12 state];
                *buf = v37;
                v49 = v23;
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

        v2 = v40;
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
  WeakRetained = objc_loadWeakRetained(&v2->_delegate);
  if ((v39 & 1) != 0 && ![(RTPersistenceContainer *)v2 setupFailed])
  {
    if (objc_opt_respondsToSelector())
    {
      v26 = [(RTPersistenceContainer *)v2 contextRequestsQueue];
      [WeakRetained container:v2 failedToActivateRequestsQueue:v26];
    }

    goto LABEL_57;
  }

LABEL_44:
  v27 = [(RTPersistenceContainer *)v2 setupFailed];
  v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v27)
  {
    v29 = v40;
    if (v28)
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v35 = [(RTPersistenceContainer *)v40 name];
        *buf = 138412290;
        v49 = v35;
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
        v36 = [(RTPersistenceContainer *)v40 name];
        *buf = 138412290;
        v49 = v36;
        _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "container named, %@, successfully opened all stores", buf, 0xCu);
      }
    }

    v29 = v40;
    [(RTPersistenceContainer *)v40 setServeContexts:1];
  }

  if (objc_opt_respondsToSelector())
  {
    v32 = [(RTPersistenceContainer *)v29 contextRequestsQueue];
    [WeakRetained container:v40 willActivateRequestsQueue:v32];

    v29 = v40;
  }

  v33 = [(RTPersistenceContainer *)v29 contextRequestsQueue];
  dispatch_activate(v33);

  [(RTPersistenceContainer *)v29 setContextRequestsQueue:0];
LABEL_57:
}

- (BOOL)updateContainerConfigurations:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(RTPersistenceContainer *)self _validateConfigurations:v4]&& [(RTPersistenceContainer *)self storesNeedSetup])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v10 = [(RTPersistenceContainer *)self name];
        v11 = 138412546;
        v12 = v10;
        v13 = 2112;
        v14 = v4;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "container named, %@, updating configurations, %@", &v11, 0x16u);
      }
    }

    v6 = [v4 copy];
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

- (void)persistenceContextWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTPersistenceContainer *)self contextRequestsQueue];
    if (v5)
    {
      v6 = v5;
      objc_initWeak(location, self);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __56__RTPersistenceContainer_persistenceContextWithHandler___block_invoke;
      v8[3] = &unk_2788CA2D8;
      v9 = v4;
      objc_copyWeak(&v10, location);
      dispatch_async(v6, v8);
      objc_destroyWeak(&v10);

      objc_destroyWeak(location);
    }

    else
    {
      v7 = [(RTPersistenceContainer *)self _persistenceContext];
      (*(v4 + 2))(v4, v7);

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
  v3 = [(RTPersistenceContainer *)self contextRequestsQueue];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(RTPersistenceContainer *)self _persistenceContext];
  }

  return v4;
}

- (id)waitForPersistenceContext
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__64;
  v14 = __Block_byref_object_dispose__64;
  v15 = 0;
  v3 = [(RTPersistenceContainer *)self contextRequestsQueue];
  v4 = v3;
  if (v3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__RTPersistenceContainer_waitForPersistenceContext__block_invoke;
    v9[3] = &unk_2788C7FB0;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(v3, v9);
  }

  else
  {
    v5 = [(RTPersistenceContainer *)self _persistenceContext];
    v6 = v11[5];
    v11[5] = v5;
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

- (id)persistenceContextWithOptions:(unint64_t)a3
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

  if ((a3 & 1) != 0 || [(RTPersistenceContainer *)self serveContexts])
  {
    v7 = [[RTPersistenceContext alloc] initWithConcurrencyType:1 options:a3];
    v8 = [MEMORY[0x277CBE460] mergeByPropertyStoreTrumpMergePolicy];
    [(RTPersistenceContext *)v7 setMergePolicy:v8];

    v9 = [(RTPersistenceContainer *)self coordinator];
    [(RTPersistenceContext *)v7 setPersistentStoreCoordinator:v9];

    v10 = [MEMORY[0x277CCAC38] processInfo];
    v11 = [v10 processName];
    [(RTPersistenceContext *)v7 setName:v11];

    v12 = [MEMORY[0x277CCAC38] processInfo];
    v13 = [v12 processName];
    [(RTPersistenceContext *)v7 setTransactionAuthor:v13];

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