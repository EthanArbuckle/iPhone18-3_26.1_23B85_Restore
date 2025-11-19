@interface RTStore
+ (BOOL)handleCoreDataException:(id)a3 outError:(id *)a4;
+ (id)availabilityToString:(unint64_t)a3;
+ (id)contextTypeToString:(unint64_t)a3;
+ (id)exceptionHandlingPolicyToString:(int64_t)a3;
+ (int64_t)evaluatePolicyForCoreDataContextPerformBlockException:(id)a3;
- (RTStore)initWithInterimPersistenceManager:(id)a3;
- (RTStore)initWithPersistenceManager:(id)a3;
- (void)_fetchReadableObjectsOfType:(Class)a3 fetchRequest:(id)a4 handler:(id)a5;
- (void)_onInterimPersistenceManagerNotification:(id)a3;
- (void)_onPersistenceManagerNotification:(id)a3;
- (void)_performBlock:(id)a3 contextType:(unint64_t)a4 errorHandler:(id)a5;
- (void)_purgeDateInterval:(id)a3 predicateMappings:(id)a4 limit:(unint64_t)a5 handler:(id)a6;
- (void)_removeAll:(id)a3 handler:(id)a4;
- (void)_setupContextsHandler:(id)a3;
- (void)_shutdownWithHandler:(id)a3;
- (void)_storeWritableObjects:(id)a3 handler:(id)a4;
- (void)_updateWritableObjects:(id)a3 handler:(id)a4;
- (void)enumerateType:(Class)a3 fetchRequest:(id)a4 enumerationBlock:(id)a5;
- (void)executeDeleteRequests:(id)a3 context:(id)a4 handler:(id)a5;
- (void)fetchAvailabilityWithHandler:(id)a3;
- (void)fetchEnumerableObjectsWithOptions:(id)a3 offset:(unint64_t)a4 handler:(id)a5;
- (void)fetchReadableObjectsOfType:(Class)a3 fetchRequest:(id)a4 handler:(id)a5;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)onInterimPersistenceManagerNotification:(id)a3;
- (void)onPersistenceManagerNotification:(id)a3;
- (void)purgeDateInterval:(id)a3 predicateMappings:(id)a4 handler:(id)a5;
- (void)purgeDateInterval:(id)a3 predicateMappings:(id)a4 purgeLimit:(unint64_t)a5 handler:(id)a6;
- (void)purgePredating:(id)a3 predicateMappings:(id)a4 handler:(id)a5;
- (void)purgePredating:(id)a3 predicateMappings:(id)a4 purgeLimit:(unint64_t)a5 handler:(id)a6;
- (void)removeAll:(id)a3 handler:(id)a4;
- (void)setAvailability:(unint64_t)a3;
- (void)storeWritableObjects:(id)a3 handler:(id)a4;
- (void)updateWritableObjects:(id)a3 handler:(id)a4;
@end

@implementation RTStore

+ (id)availabilityToString:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Unavailable";
  }

  if (a3 == 2)
  {
    return @"Available";
  }

  else
  {
    return v3;
  }
}

+ (id)contextTypeToString:(unint64_t)a3
{
  v3 = @"Delete";
  if (a3 == 1)
  {
    v3 = @"Fetch";
  }

  if (a3 == 2)
  {
    return @"Insert";
  }

  else
  {
    return v3;
  }
}

- (RTStore)initWithPersistenceManager:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v19.receiver = self;
    v19.super_class = RTStore;
    v6 = [(RTNotifier *)&v19 init];
    v7 = v6;
    if (v6)
    {
      v6->_availability = 0;
      objc_storeStrong(&v6->_persistenceManager, a3);
      v8 = [MEMORY[0x277CBEB38] dictionary];
      contexts = v7->_contexts;
      v7->_contexts = v8;

      v10 = [RTInvocationDispatcher alloc];
      v11 = [(RTNotifier *)v7 queue];
      v12 = [(RTInvocationDispatcher *)v10 initWithQueue:v11];
      dispatcher = v7->_dispatcher;
      v7->_dispatcher = v12;

      persistenceManager = v7->_persistenceManager;
      v15 = +[(RTNotification *)RTPersistenceManagerNotificationAvailabilityDidChange];
      [(RTNotifier *)persistenceManager addObserver:v7 selector:sel_onPersistenceManagerNotification_ name:v15];

      [(RTService *)v7 setup];
    }

    self = v7;
    v16 = self;
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTStore initWithPersistenceManager:]";
      v22 = 1024;
      v23 = 87;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: persistenceManager (in %s:%d)", buf, 0x12u);
    }

    v16 = 0;
  }

  return v16;
}

- (void)_setupContextsHandler:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v5 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [&unk_2845A12F8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(&unk_2845A12F8);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = [(RTStore *)self contexts];
        v12 = [v11 objectForKey:v10];

        if (!v12)
        {
          dispatch_group_enter(v5);
          v13 = [(RTStore *)self persistenceManager];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __33__RTStore__setupContextsHandler___block_invoke;
          v20[3] = &unk_2788C9930;
          v20[4] = self;
          v20[5] = v10;
          v22 = a2;
          v21 = v5;
          [v13 createManagedObjectContext:v20];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [&unk_2845A12F8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v14 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__RTStore__setupContextsHandler___block_invoke_43;
  block[3] = &unk_2788C4758;
  v19 = v17;
  v15 = v17;
  dispatch_group_notify(v5, v14, block);
}

void __33__RTStore__setupContextsHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v7 = *(a1 + 48);
  v10 = *(a1 + 32);
  block[2] = __33__RTStore__setupContextsHandler___block_invoke_2;
  block[3] = &unk_2788C50E8;
  v9 = v3;
  v5 = v7;
  v11 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

void __33__RTStore__setupContextsHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) contexts];
    [v2 setObject:*(a1 + 32) forKey:*(a1 + 48)];
  }

  else
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 64));
      v6 = +[RTStore contextTypeToString:](RTStore, "contextTypeToString:", [*(a1 + 48) integerValue]);
      v7 = 138412802;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "%@, %@, failed to create context, %@", &v7, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

uint64_t __33__RTStore__setupContextsHandler___block_invoke_43(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_onPersistenceManagerNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTPersistenceManagerNotificationAvailabilityDidChange];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 availability];
    if (v8 == 2)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __45__RTStore__onPersistenceManagerNotification___block_invoke;
      v11[3] = &unk_2788C4730;
      v11[4] = self;
      [(RTStore *)self _setupContextsHandler:v11];
    }

    else
    {
      v9 = v8;
      v10 = [(RTStore *)self contexts];
      [v10 removeAllObjects];

      [(RTStore *)self setAvailability:v9 == 1];
    }
  }
}

- (void)onPersistenceManagerNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RTStore_onPersistenceManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (RTStore)initWithInterimPersistenceManager:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v19.receiver = self;
    v19.super_class = RTStore;
    v6 = [(RTNotifier *)&v19 init];
    v7 = v6;
    if (v6)
    {
      v6->_availability = 0;
      objc_storeStrong(&v6->_interimPersistenceManager, a3);
      v8 = [MEMORY[0x277CBEB38] dictionary];
      contexts = v7->_contexts;
      v7->_contexts = v8;

      v10 = [RTInvocationDispatcher alloc];
      v11 = [(RTNotifier *)v7 queue];
      v12 = [(RTInvocationDispatcher *)v10 initWithQueue:v11];
      dispatcher = v7->_dispatcher;
      v7->_dispatcher = v12;

      interimPersistenceManager = v7->_interimPersistenceManager;
      v15 = +[(RTNotification *)RTInterimPersistenceManagerNotificationAvailabilityDidChange];
      [(RTNotifier *)interimPersistenceManager addObserver:v7 selector:sel_onInterimPersistenceManagerNotification_ name:v15];
    }

    self = v7;
    v16 = self;
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTStore initWithInterimPersistenceManager:]";
      v22 = 1024;
      v23 = 185;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: interimPersistenceManager (in %s:%d)", buf, 0x12u);
    }

    v16 = 0;
  }

  return v16;
}

- (void)_onInterimPersistenceManagerNotification:(id)a3
{
  v23[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = +[(RTNotification *)RTInterimPersistenceManagerNotificationAvailabilityDidChange];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 availability];
    if (v8 == 2)
    {
      v9 = objc_alloc(MEMORY[0x277CBEB38]);
      v22[0] = &unk_28459E7D8;
      v10 = [(RTStore *)self interimPersistenceManager];
      v11 = [v10 managedObjectContext];
      v23[0] = v11;
      v22[1] = &unk_28459E7F0;
      v12 = [(RTStore *)self interimPersistenceManager];
      v13 = [v12 managedObjectContext];
      v23[1] = v13;
      v22[2] = &unk_28459E808;
      v14 = [(RTStore *)self interimPersistenceManager];
      v15 = [v14 managedObjectContext];
      v23[2] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
      v17 = [v9 initWithDictionary:v16];
      [(RTStore *)self setContexts:v17];

      v18 = self;
      v19 = 2;
    }

    else
    {
      v20 = v8;
      v21 = [(RTStore *)self contexts];
      [v21 removeAllObjects];

      v18 = self;
      v19 = v20 == 1;
    }

    [(RTStore *)v18 setAvailability:v19];
  }
}

- (void)onInterimPersistenceManagerNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RTStore_onInterimPersistenceManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_shutdownWithHandler:(id)a3
{
  v11 = a3;
  v4 = [(RTStore *)self persistenceManager];
  v5 = +[(RTNotification *)RTPersistenceManagerNotificationAvailabilityDidChange];
  [v4 removeObserver:self fromNotification:v5];

  v6 = [(RTStore *)self interimPersistenceManager];
  v7 = +[(RTNotification *)RTInterimPersistenceManagerNotificationAvailabilityDidChange];
  [v6 removeObserver:self fromNotification:v7];

  v8 = [(RTStore *)self contexts];
  [v8 removeAllObjects];

  v9 = [(RTStore *)self dispatcher];
  [v9 shutdown];

  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, 0);
    v10 = v11;
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [[RTStoreNotificationAvailabilityDidChange alloc] initWithAvailability:[(RTStore *)self availability]];
    [(RTNotifier *)self postNotification:v10 toObserver:v6];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "unhandled notification %@", &v12, 0xCu);
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unhandled notification %@", &v8, 0xCu);
    }
  }
}

- (void)setAvailability:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_availability != a3)
  {
    self->_availability = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = [RTStore availabilityToString:self->_availability];
        v12 = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, availability, %@", &v12, 0x16u);
      }
    }

    v8 = [[RTStoreNotificationAvailabilityDidChange alloc] initWithAvailability:self->_availability];
    [(RTNotifier *)self postNotification:v8];

    v9 = [(RTStore *)self dispatcher];
    v10 = [v9 invocationsPending];

    if (v10)
    {
      v11 = [(RTStore *)self dispatcher];
      [v11 dispatchPendingInvocations];
    }
  }
}

- (void)fetchAvailabilityWithHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__RTStore_fetchAvailabilityWithHandler___block_invoke;
    v7[3] = &unk_2788C4D38;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v5, v7);

    v6 = v8;
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

- (void)_storeWritableObjects:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__RTStore__storeWritableObjects_handler___block_invoke;
  aBlock[3] = &unk_2788C4FB0;
  v14 = v8;
  v15 = a2;
  v13 = v7;
  v9 = v8;
  v10 = v7;
  v11 = _Block_copy(aBlock);
  [(RTStore *)self _performBlock:v11 contextType:2 errorHandler:v9];
}

void __41__RTStore__storeWritableObjects_handler___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * v8++) managedObjectWithContext:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }

  v15 = 0;
  v10 = [v3 save:&v15];
  v11 = v15;
  if ((v10 & 1) == 0)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v11;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v11);
  }
}

- (void)storeWritableObjects:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__RTStore_storeWritableObjects_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_updateWritableObjects:(id)a3 handler:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v9 = [v7 firstObject];
    NSSelectorFromString(&cfstr_Updatemanagedo.isa);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __42__RTStore__updateWritableObjects_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v25 = v7;
      v27 = a2;
      v11 = v8;
      v26 = v11;
      v12 = _Block_copy(aBlock);
      [(RTStore *)self _performBlock:v12 contextType:2 errorHandler:v11];
    }

    else
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = NSStringFromSelector(a2);
      v15 = [v7 firstObject];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v13 stringWithFormat:@"%@, %@ does not support update protocol", v14, v17];

      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v31 = v18;
        v32 = 2080;
        v33 = "[RTStore _updateWritableObjects:handler:]";
        v34 = 1024;
        v35 = 381;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@ (in %s:%d)", buf, 0x1Cu);
      }

      if (v8)
      {
        v20 = MEMORY[0x277CCA9B8];
        v21 = *MEMORY[0x277D01448];
        v28 = *MEMORY[0x277CCA450];
        v29 = v18;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v23 = [v20 errorWithDomain:v21 code:7 userInfo:v22];
        (*(v8 + 2))(v8, v23);
      }
    }
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0);
  }
}

void __42__RTStore__updateWritableObjects_handler___block_invoke(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mergePolicy];
  [v3 setMergePolicy:*MEMORY[0x277CBE1C8]];
  v5 = [*(a1 + 32) firstObject];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v7 stringByAppendingString:@"MO"];

  v40 = v8;
  v9 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:v8];
  v10 = MEMORY[0x277CCAC30];
  v11 = [*(a1 + 32) valueForKeyPath:@"identifier"];
  v12 = [v10 predicateWithFormat:@"%K IN %@", @"identifier", v11];
  [v9 setPredicate:v12];

  [v9 setReturnsObjectsAsFaults:0];
  v52 = 0;
  v13 = [v9 execute:&v52];
  v14 = v52;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v36 = NSStringFromSelector(*(a1 + 48));
      v37 = [v13 count];
      *buf = 138413058;
      v56 = v36;
      v57 = 2112;
      v58 = v9;
      v59 = 2048;
      v60 = v37;
      v61 = 2112;
      v62 = v14;
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, request, %@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v39 = v14;
  v42 = v4;
  v16 = [MEMORY[0x277CBEB38] dictionary];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v41 = a1;
  v17 = *(a1 + 32);
  v18 = [v17 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v49;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v49 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v48 + 1) + 8 * i);
        v23 = [v22 identifier];
        [v16 setObject:v22 forKeyedSubscript:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v19);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = v13;
  v25 = [v24 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v45;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v44 + 1) + 8 * j);
        v30 = [v29 identifier];
        v31 = [v16 objectForKeyedSubscript:v30];

        [v31 updateManagedObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v26);
  }

  v43 = v39;
  v32 = [v3 save:&v43];
  v33 = v43;

  if ((v32 & 1) == 0)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(*(v41 + 48));
      *buf = 138412546;
      v56 = v38;
      v57 = 2112;
      v58 = v33;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }
  }

  [v3 setMergePolicy:v42];
  v35 = *(v41 + 40);
  if (v35)
  {
    (*(v35 + 16))(v35, v33);
  }
}

- (void)updateWritableObjects:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RTStore_updateWritableObjects_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_performBlock:(id)a3 contextType:(unint64_t)a4 errorHandler:(id)a5
{
  v56[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = [(RTStore *)self contexts];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v14 = [v12 objectForKey:v13];

    if (v14)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __50__RTStore__performBlock_contextType_errorHandler___block_invoke_84;
      v40[3] = &unk_2788C6210;
      v43 = v9;
      v15 = v14;
      v41 = v15;
      v42 = self;
      [v15 performBlock:v40];
    }

    else
    {
      if ([(RTStore *)self availability])
      {
        if (v11)
        {
          v22 = [(RTStore *)self availability];
          v23 = MEMORY[0x277CCA9B8];
          v24 = *MEMORY[0x277D01448];
          if (v22 == 1)
          {
            v53 = *MEMORY[0x277CCA450];
            v25 = MEMORY[0x277CCACA8];
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v28 = NSStringFromSelector(a2);
            v29 = [RTStore availabilityToString:[(RTStore *)self availability]];
            v30 = [v25 stringWithFormat:@"%@, %@, availability, %@", v27, v28, v29];
            v54 = v30;
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
            v32 = [v23 errorWithDomain:v24 code:5 userInfo:v31];
          }

          else
          {
            v51 = *MEMORY[0x277CCA450];
            v37 = MEMORY[0x277CCACA8];
            v38 = objc_opt_class();
            v27 = NSStringFromClass(v38);
            v28 = NSStringFromSelector(a2);
            v29 = [RTStore availabilityToString:[(RTStore *)self availability]];
            v30 = [RTStore contextTypeToString:a4];
            v31 = [v37 stringWithFormat:@"%@, %@, availability, %@, invalid context of type, %@", v27, v28, v29, v30];
            v52 = v31;
            v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
            v32 = [v23 errorWithDomain:v24 code:7 userInfo:v39];
          }

          (v11)[2](v11, v32);
        }
      }

      else
      {
        v33 = [(RTStore *)self dispatcher];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __50__RTStore__performBlock_contextType_errorHandler___block_invoke;
        v47[3] = &unk_2788CD658;
        v47[4] = self;
        v48 = v9;
        v50 = a4;
        v49 = v11;
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __50__RTStore__performBlock_contextType_errorHandler___block_invoke_2;
        v44[3] = &unk_2788C6300;
        v44[4] = self;
        v46 = a2;
        v45 = v49;
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = NSStringFromSelector(a2);
        [v33 enqueueBlock:v47 failureBlock:v44 description:{@"%@-%@", v35, v36}];
      }

      v15 = 0;
    }

    goto LABEL_14;
  }

  if (v10)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v55 = *MEMORY[0x277CCA450];
    v18 = MEMORY[0x277CCACA8];
    v15 = NSStringFromSelector(a2);
    v19 = [v18 stringWithFormat:@"%@, required block", v15];
    v56[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    v21 = [v16 errorWithDomain:v17 code:7 userInfo:v20];
    (v11)[2](v11, v21);

LABEL_14:
  }
}

void __50__RTStore__performBlock_contextType_errorHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromSelector(*(a1 + 48));
  v6 = [v2 stringWithFormat:@"%@, %@, failed invoking pending invocation", v4, v5];

  v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277D01448];
    v13 = *MEMORY[0x277CCA450];
    v14 = v6;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v12 = [v9 errorWithDomain:v10 code:5 userInfo:v11];
    (*(v8 + 16))(v8, v12);
  }
}

void __50__RTStore__performBlock_contextType_errorHandler___block_invoke_84(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) reset];
  objc_autoreleasePoolPop(v2);
}

+ (id)exceptionHandlingPolicyToString:(int64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"ExitGracefully";
  }

  if (a3 == 2)
  {
    return @"ThrowException";
  }

  else
  {
    return v3;
  }
}

+ (BOOL)handleCoreDataException:(id)a3 outError:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [RTException coreDataExceptionLogging:v6];
  v7 = [objc_opt_class() evaluatePolicyForCoreDataContextPerformBlockException:v6];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      v12 = [objc_opt_class() exceptionHandlingPolicyToString:v7];
      *buf = 138413058;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, exception handling policy, %@, exception, %@", buf, 0x2Au);
    }
  }

  if (v7 == 2)
  {
    objc_exception_throw(v6);
  }

  if (v7 == 1)
  {
    exit(1);
  }

  +[RTException unknownExceptionHandlingPolicyDeadInside];
  if (a4)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    v15 = [v6 reason];
    v18[1] = @"NSException";
    v19[0] = v15;
    v19[1] = v6;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    *a4 = [v13 errorWithDomain:v14 code:0 userInfo:v16];
  }

  return 0;
}

+ (int64_t)evaluatePolicyForCoreDataContextPerformBlockException:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = *MEMORY[0x277CBE2C8];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBE2C8]];

  if (v6)
  {
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:v5];

    if ([v8 intValue] == 13 || objc_msgSend(v8, "intValue") == 23)
    {
      goto LABEL_8;
    }
  }

  v9 = [v3 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"RTPersistenceOpearationsErrorDomain"];

  if (!v10)
  {
    v12 = 2;
    goto LABEL_10;
  }

  v11 = [v3 userInfo];
  v8 = [v11 objectForKeyedSubscript:@"RTPersistenceOpearationsErrorDomain"];

  if ([v8 intValue] != 1 && objc_msgSend(v8, "intValue") != 2)
  {
    v12 = 2;
    goto LABEL_9;
  }

LABEL_8:
  v12 = 1;
LABEL_9:

LABEL_10:
  return v12;
}

- (void)removeAll:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__RTStore_removeAll_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_removeAll:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTStore _removeAll:handler:]";
      v17 = 1024;
      v18 = 606;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: classes (in %s:%d)", buf, 0x12u);
    }
  }

  if ([v6 count])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __30__RTStore__removeAll_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v12 = v6;
    v13 = self;
    v9 = v7;
    v14 = v9;
    v10 = _Block_copy(aBlock);
    [(RTStore *)self _performBlock:v10 contextType:0 errorHandler:v9];
  }
}

void __30__RTStore__removeAll_handler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if ([v9 isSubclassOfClass:objc_opt_class()])
        {
          v10 = [v9 fetchRequest];
          v11 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v10];
          [v11 setResultType:2];
          [v3 addObject:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) executeDeleteRequests:v3 context:v12 handler:*(a1 + 48)];
}

- (void)purgePredating:(id)a3 predicateMappings:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__RTStore_purgePredating_predicateMappings_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __52__RTStore_purgePredating_predicateMappings_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [v3 initWithStartDate:v5 endDate:a1[5]];
  [v2 _purgeDateInterval:v4 predicateMappings:a1[6] limit:0 handler:a1[7]];
}

- (void)purgePredating:(id)a3 predicateMappings:(id)a4 purgeLimit:(unint64_t)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTStore_purgePredating_predicateMappings_purgeLimit_handler___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

void __63__RTStore_purgePredating_predicateMappings_purgeLimit_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [v3 initWithStartDate:v5 endDate:a1[5]];
  [v2 _purgeDateInterval:v4 predicateMappings:a1[6] limit:a1[8] handler:a1[7]];
}

- (void)purgeDateInterval:(id)a3 predicateMappings:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__RTStore_purgeDateInterval_predicateMappings_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)purgeDateInterval:(id)a3 predicateMappings:(id)a4 purgeLimit:(unint64_t)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTStore_purgeDateInterval_predicateMappings_purgeLimit_handler___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

- (void)_purgeDateInterval:(id)a3 predicateMappings:(id)a4 limit:(unint64_t)a5 handler:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10)
  {
    if (v11)
    {
      v13 = [v11 allKeys];
      if ([v13 count])
      {
        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __62__RTStore__purgeDateInterval_predicateMappings_limit_handler___block_invoke;
        v27 = &unk_2788CD680;
        v13 = v13;
        v28 = v13;
        v29 = v11;
        v33 = a5;
        v30 = v10;
        v31 = self;
        v14 = v12;
        v32 = v14;
        v15 = _Block_copy(&v24);
        [(RTStore *)self _performBlock:v15 contextType:0 errorHandler:v14, v24, v25, v26, v27];
      }

      else if (v12)
      {
        (*(v12 + 2))(v12, 0);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[RTStore _purgeDateInterval:predicateMappings:limit:handler:]";
      v40 = 1024;
      v41 = 683;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval (in %s:%d)", buf, 0x12u);
    }

    if (v11)
    {
      goto LABEL_12;
    }
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v39 = "[RTStore _purgeDateInterval:predicateMappings:limit:handler:]";
    v40 = 1024;
    v41 = 684;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mappings (in %s:%d)", buf, 0x12u);
  }

  if (v10)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v34 = *MEMORY[0x277CCA450];
    v35 = @"requires a non-nil mappings.";
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v35;
    v22 = &v34;
    goto LABEL_13;
  }

LABEL_12:
  v18 = MEMORY[0x277CCA9B8];
  v19 = *MEMORY[0x277D01448];
  v36 = *MEMORY[0x277CCA450];
  v37 = @"requires a non-nil dateInterval.";
  v20 = MEMORY[0x277CBEAC0];
  v21 = &v37;
  v22 = &v36;
LABEL_13:
  v23 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
  v13 = [v18 errorWithDomain:v19 code:7 userInfo:v23];

  if (v12)
  {
    (*(v12 + 2))(v12, v13);
  }

LABEL_15:
}

void __62__RTStore__purgeDateInterval_predicateMappings_limit_handler___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v3 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 32);
  v19 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v19)
  {
    v18 = *v28;
    do
    {
      v4 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v4;
        v5 = *(*(&v27 + 1) + 8 * v4);
        context = objc_autoreleasePoolPush();
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v22 = [*(a1 + 40) objectForKeyedSubscript:v5];
        v6 = [v22 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v24;
          do
          {
            v9 = 0;
            do
            {
              if (*v24 != v8)
              {
                objc_enumerationMutation(v22);
              }

              v10 = [*(*(&v23 + 1) + 8 * v9) fetchRequest];
              [v10 setFetchLimit:*(a1 + 72)];
              v11 = MEMORY[0x277CCAC30];
              v12 = [*(a1 + 48) startDate];
              v13 = [*(a1 + 48) endDate];
              v14 = [v11 predicateWithFormat:@"%@ < %K AND %K < %@", v12, v5, v5, v13];
              [v10 setPredicate:v14];

              v15 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v10];
              [v15 setResultType:2];
              [v3 addObject:v15];

              ++v9;
            }

            while (v7 != v9);
            v7 = [v22 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v7);
        }

        objc_autoreleasePoolPop(context);
        v4 = v21 + 1;
      }

      while (v21 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v19);
  }

  [*(a1 + 56) executeDeleteRequests:v3 context:v16 handler:*(a1 + 64)];
}

- (void)executeDeleteRequests:(id)a3 context:(id)a4 handler:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v30 = a5;
  v9 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v7;
  v34 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v34)
  {
    v33 = *v39;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v12 = 0;
        while (1)
        {
          v13 = v12;
          v14 = objc_autoreleasePoolPush();
          v37 = v12;
          v15 = [v8 executeRequest:v11 error:&v37];
          v12 = v37;

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v20 = NSStringFromSelector(a2);
              v21 = [v15 result];
              *buf = 138413058;
              v45 = v20;
              v46 = 2112;
              v47 = v11;
              v48 = 2112;
              v49 = v21;
              v50 = 2112;
              v51 = v12;
              _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "%@, request, %@, deleted count, %@, error, %@", buf, 0x2Au);
            }
          }

          if (v12)
          {
            [v9 addObject:v12];
          }

          if ([v9 count])
          {
            break;
          }

          v17 = [v11 fetchRequest];
          if (![v17 fetchLimit])
          {

            break;
          }

          v18 = [v15 result];
          v19 = [v18 unsignedIntegerValue];

          objc_autoreleasePoolPop(v14);
          if (!v19)
          {
            goto LABEL_19;
          }
        }

        objc_autoreleasePoolPop(v14);
LABEL_19:

        objc_autoreleasePoolPop(context);
      }

      v34 = [obj countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v34);
  }

  v36 = 0;
  v22 = [v8 save:&v36];
  v23 = v36;
  if ((v22 & 1) == 0)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      *buf = 138412546;
      v45 = v29;
      v46 = 2112;
      v47 = v23;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }

    [v9 addObject:v23];
  }

  if (v30)
  {
    if ([v9 count] > 1)
    {
      v26 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277D01448];
      v42 = *MEMORY[0x277D01440];
      v43 = v9;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v25 = [v26 errorWithDomain:v27 code:9 userInfo:v28];
    }

    else
    {
      v25 = [v9 firstObject];
    }

    v30[2](v30, v25);
  }
}

- (void)fetchEnumerableObjectsWithOptions:(id)a3 offset:(unint64_t)a4 handler:(id)a5
{
  v31[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if (([(RTStore *)self conformsToProtocol:&unk_2845A65E0]& 1) != 0)
    {
      v10 = [v8 enumeratedType];
      if (objc_opt_respondsToSelector())
      {
        v11 = self;
        v26 = 0;
        v12 = [(RTStore *)v11 fetchRequestFromOptions:v8 offset:a4 error:&v26];
        v13 = v26;
        if (v12)
        {
          v14 = [v8 processingBlock];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __60__RTStore_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke;
          v22[3] = &unk_2788CD6A8;
          v25 = a4;
          v23 = v14;
          v24 = v9;
          v15 = v14;
          [(RTStore *)v11 fetchReadableObjectsOfType:v10 fetchRequest:v12 handler:v22];
        }

        else
        {
          (*(v9 + 2))(v9, 0, 0, v13);
        }

        goto LABEL_13;
      }

      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v28 = *MEMORY[0x277CCA450];
      v29 = @"the enumerated type is not a CoreDataReadable";
      v18 = MEMORY[0x277CBEAC0];
      v19 = &v29;
      v20 = &v28;
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D01448];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = @"this store does not conform to RTEnumerableStore";
      v18 = MEMORY[0x277CBEAC0];
      v19 = v31;
      v20 = &v30;
    }

    v21 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
    v11 = [v16 errorWithDomain:v17 code:7 userInfo:v21];

    (*(v9 + 2))(v9, 0, 0, v11);
    goto LABEL_13;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(&v11->super.super.super, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, &v11->super.super.super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
  }

LABEL_13:
}

void __60__RTStore_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count") + a1[6]}];
  v7 = a1[4];
  if (v7)
  {
    v8 = (*(v7 + 16))(v7, v10);

    v9 = v8;
  }

  else
  {
    v9 = v10;
  }

  v11 = v9;
  (*(a1[5] + 16))();
}

- (void)enumerateType:(Class)a3 fetchRequest:(id)a4 enumerationBlock:(id)a5
{
  v85[1] = *MEMORY[0x277D85DE8];
  v53 = a4;
  v7 = a5;
  if (v7)
  {
    v67 = 0;
    if (a3)
    {
      if (([(objc_class *)a3 conformsToProtocol:&unk_2845A4970]& 1) != 0)
      {
        if ([(RTStore *)self availability]!= 2)
        {
          v40 = MEMORY[0x277CCA9B8];
          v79 = *MEMORY[0x277CCA450];
          v80 = @"resource temporarily unavailable due to data availability";
          v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          v56 = [v40 errorWithDomain:*MEMORY[0x277D01448] code:5 userInfo:v41];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v42 = _rt_log_facility_get_os_log(RTLogFacilityStore);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v43 = NSStringFromSelector(a2);
              *v73 = 138412546;
              *&v73[4] = v43;
              *&v73[12] = 2112;
              *&v73[14] = v56;
              _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "%@, error, %@", v73, 0x16u);
            }
          }

          v67 = 1;
          v7[2](v7, 0, v56, &v67);
          goto LABEL_52;
        }

        if (v53)
        {
          v52 = a3;
          v56 = [v53 copy];
          v54 = 0;
          *v73 = 0;
          *&v73[8] = v73;
          *&v73[16] = 0x3032000000;
          v74 = __Block_byref_object_copy__97;
          v75 = __Block_byref_object_dispose__97;
          v76 = 0;
          v61 = 0;
          v62 = &v61;
          v63 = 0x3032000000;
          v64 = __Block_byref_object_copy__97;
          v65 = __Block_byref_object_dispose__97;
          v66 = 0;
          v50 = *MEMORY[0x277D01448];
          v51 = *MEMORY[0x277CCA450];
          while (1)
          {
            v8 = objc_autoreleasePoolPush();
            [v56 setFetchOffset:v54];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v9 = _rt_log_facility_get_os_log(RTLogFacilityStore);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
              {
                v33 = NSStringFromSelector(a2);
                *buf = 138412803;
                *&buf[4] = v33;
                v69 = 2112;
                v70 = v52;
                v71 = 2117;
                v72 = v56;
                _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, iterating type %@, with fetchRequest, %{sensitive}@", buf, 0x20u);
              }
            }

            v10 = dispatch_semaphore_create(0);
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __55__RTStore_enumerateType_fetchRequest_enumerationBlock___block_invoke;
            v57[3] = &unk_2788C4490;
            v59 = v73;
            v60 = &v61;
            v11 = v10;
            v58 = v11;
            [(RTStore *)self fetchReadableObjectsOfType:v52 fetchRequest:v56 handler:v57];
            v12 = v11;
            v13 = [MEMORY[0x277CBEAA8] now];
            v14 = dispatch_time(0, 3600000000000);
            if (dispatch_semaphore_wait(v12, v14))
            {
              v15 = [MEMORY[0x277CBEAA8] now];
              [v15 timeIntervalSinceDate:v13];
              v17 = v16;
              v18 = objc_opt_new();
              v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_83];
              v20 = [MEMORY[0x277CCACC8] callStackSymbols];
              v21 = [v20 filteredArrayUsingPredicate:v19];
              v22 = [v21 firstObject];

              [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
              v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
              }

              v24 = MEMORY[0x277CCA9B8];
              v85[0] = v51;
              *buf = @"semaphore wait timeout";
              v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v85 count:1];
              v26 = [v24 errorWithDomain:v50 code:15 userInfo:v25];

              if (v26)
              {
                v27 = v26;

                v28 = 0;
                goto LABEL_18;
              }
            }

            else
            {
              v26 = 0;
            }

            v28 = 1;
LABEL_18:

            v29 = v26;
            if ((v28 & 1) == 0)
            {
              objc_storeStrong(v62 + 5, v26);
            }

            v7[2](v7, *(*&v73[8] + 40), v62[5], &v67);
            if (v67 == 1)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v30 = _rt_log_facility_get_os_log(RTLogFacilityStore);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "client set stop bit while enumerating, breaking out.", buf, 2u);
                }

                goto LABEL_24;
              }

              goto LABEL_32;
            }

            if (v62[5])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v30 = _rt_log_facility_get_os_log(RTLogFacilityStore);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  v31 = v62[5];
                  *buf = 138412290;
                  *&buf[4] = v31;
                  _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "received error while enumerating, %@", buf, 0xCu);
                }

LABEL_24:
              }

LABEL_32:
              v32 = 0;
              goto LABEL_33;
            }

            if (![*(*&v73[8] + 40) count])
            {
              goto LABEL_32;
            }

            v54 += [*(*&v73[8] + 40) count];
            v32 = 1;
LABEL_33:

            objc_autoreleasePoolPop(v8);
            if ((v32 & 1) == 0)
            {
              _Block_object_dispose(&v61, 8);

              _Block_object_dispose(v73, 8);
              goto LABEL_52;
            }
          }
        }

        v44 = MEMORY[0x277CCA9B8];
        v77 = *MEMORY[0x277CCA450];
        v78 = @"requires non-nil fetchRequest";
        v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        v56 = [v44 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v45];

        v37 = _rt_log_facility_get_os_log(RTLogFacilityStore);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v48 = NSStringFromSelector(a2);
          *v73 = 138412546;
          *&v73[4] = v48;
          *&v73[12] = 2112;
          *&v73[14] = v56;
          _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, error, %@", v73, 0x16u);
        }
      }

      else
      {
        v38 = MEMORY[0x277CCA9B8];
        v81 = *MEMORY[0x277CCA450];
        v82 = @"requires a type that conforms to RTCoreDataReadable.";
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v56 = [v38 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v39];

        v37 = _rt_log_facility_get_os_log(RTLogFacilityStore);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v47 = NSStringFromSelector(a2);
          *v73 = 138412546;
          *&v73[4] = v47;
          *&v73[12] = 2112;
          *&v73[14] = v56;
          _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, error, %@", v73, 0x16u);
        }
      }
    }

    else
    {
      v35 = MEMORY[0x277CCA9B8];
      v83 = *MEMORY[0x277CCA450];
      v84 = @"requires non-nil type";
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v56 = [v35 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v36];

      v37 = _rt_log_facility_get_os_log(RTLogFacilityStore);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v46 = NSStringFromSelector(a2);
        *v73 = 138412546;
        *&v73[4] = v46;
        *&v73[12] = 2112;
        *&v73[14] = v56;
        _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "%@, error, %@", v73, 0x16u);
      }
    }

    v67 = 1;
    v7[2](v7, 0, v56, &v67);
LABEL_52:

    goto LABEL_53;
  }

  v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *v73 = 0;
    _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: enumerationBlock", v73, 2u);
  }

LABEL_53:
}

void __55__RTStore_enumerateType_fetchRequest_enumerationBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchReadableObjectsOfType:(Class)a3 fetchRequest:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__RTStore_fetchReadableObjectsOfType_fetchRequest_handler___block_invoke;
    v12[3] = &unk_2788CD6D0;
    v12[4] = self;
    v15 = a3;
    v13 = v8;
    v14 = v9;
    dispatch_async(v10, v12);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

- (void)_fetchReadableObjectsOfType:(Class)a3 fetchRequest:(id)a4 handler:(id)a5
{
  v31[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (a3)
    {
      if (v9)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __60__RTStore__fetchReadableObjectsOfType_fetchRequest_handler___block_invoke;
        aBlock[3] = &unk_2788CD718;
        v23 = v9;
        v25 = a2;
        v11 = v10;
        v24 = v11;
        v26 = a3;
        v12 = _Block_copy(aBlock);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __60__RTStore__fetchReadableObjectsOfType_fetchRequest_handler___block_invoke_192;
        v20[3] = &unk_2788C48C0;
        v21 = v11;
        [(RTStore *)self _performBlock:v12 contextType:1 errorHandler:v20];

        v13 = v23;
        goto LABEL_10;
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D01448];
      v28 = *MEMORY[0x277CCA450];
      v29 = @"requires a non-nil fetchRequest";
      v16 = MEMORY[0x277CBEAC0];
      v17 = &v29;
      v18 = &v28;
    }

    else
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D01448];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = @"requires a non-nil type";
      v16 = MEMORY[0x277CBEAC0];
      v17 = v31;
      v18 = &v30;
    }

    v19 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
    v13 = [v14 errorWithDomain:v15 code:7 userInfo:v19];

    (*(v10 + 2))(v10, 0, v13);
    goto LABEL_10;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
  }

LABEL_10:
}

void __60__RTStore__fetchReadableObjectsOfType_fetchRequest_handler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 execute:&v12];
  v4 = v12;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityStore);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = *(a1 + 32);
      v10 = [v3 count];
      *buf = 138413059;
      v14 = v8;
      v15 = 2117;
      v16 = v9;
      v17 = 2048;
      v18 = v10;
      v19 = 2112;
      v20 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [[_RTMap alloc] initWithInput:v3];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__RTStore__fetchReadableObjectsOfType_fetchRequest_handler___block_invoke_188;
    v11[3] = &__block_descriptor_40_e47____RTCoreDataReadable__16__0__NSManagedObject_8lu32l8;
    v11[4] = *(a1 + 56);
    v7 = [(_RTMap *)v6 withBlock:v11];

    (*(*(a1 + 40) + 16))();
  }
}

id __60__RTStore__fetchReadableObjectsOfType_fetchRequest_handler___block_invoke_188(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) createWithManagedObject:v3];
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityStore);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_fault_impl(&dword_2304B3000, v5, OS_LOG_TYPE_FAULT, "nil initialization of object of type, %@, using managedObject, %@", &v8, 0x16u);
    }
  }

  return v4;
}

@end