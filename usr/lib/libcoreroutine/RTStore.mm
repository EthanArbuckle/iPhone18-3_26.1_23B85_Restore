@interface RTStore
+ (BOOL)handleCoreDataException:(id)exception outError:(id *)error;
+ (id)availabilityToString:(unint64_t)string;
+ (id)contextTypeToString:(unint64_t)string;
+ (id)exceptionHandlingPolicyToString:(int64_t)string;
+ (int64_t)evaluatePolicyForCoreDataContextPerformBlockException:(id)exception;
- (RTStore)initWithInterimPersistenceManager:(id)manager;
- (RTStore)initWithPersistenceManager:(id)manager;
- (void)_fetchReadableObjectsOfType:(Class)type fetchRequest:(id)request handler:(id)handler;
- (void)_onInterimPersistenceManagerNotification:(id)notification;
- (void)_onPersistenceManagerNotification:(id)notification;
- (void)_performBlock:(id)block contextType:(unint64_t)type errorHandler:(id)handler;
- (void)_purgeDateInterval:(id)interval predicateMappings:(id)mappings limit:(unint64_t)limit handler:(id)handler;
- (void)_removeAll:(id)all handler:(id)handler;
- (void)_setupContextsHandler:(id)handler;
- (void)_shutdownWithHandler:(id)handler;
- (void)_storeWritableObjects:(id)objects handler:(id)handler;
- (void)_updateWritableObjects:(id)objects handler:(id)handler;
- (void)enumerateType:(Class)type fetchRequest:(id)request enumerationBlock:(id)block;
- (void)executeDeleteRequests:(id)requests context:(id)context handler:(id)handler;
- (void)fetchAvailabilityWithHandler:(id)handler;
- (void)fetchEnumerableObjectsWithOptions:(id)options offset:(unint64_t)offset handler:(id)handler;
- (void)fetchReadableObjectsOfType:(Class)type fetchRequest:(id)request handler:(id)handler;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)onInterimPersistenceManagerNotification:(id)notification;
- (void)onPersistenceManagerNotification:(id)notification;
- (void)purgeDateInterval:(id)interval predicateMappings:(id)mappings handler:(id)handler;
- (void)purgeDateInterval:(id)interval predicateMappings:(id)mappings purgeLimit:(unint64_t)limit handler:(id)handler;
- (void)purgePredating:(id)predating predicateMappings:(id)mappings handler:(id)handler;
- (void)purgePredating:(id)predating predicateMappings:(id)mappings purgeLimit:(unint64_t)limit handler:(id)handler;
- (void)removeAll:(id)all handler:(id)handler;
- (void)setAvailability:(unint64_t)availability;
- (void)storeWritableObjects:(id)objects handler:(id)handler;
- (void)updateWritableObjects:(id)objects handler:(id)handler;
@end

@implementation RTStore

+ (id)availabilityToString:(unint64_t)string
{
  v3 = @"Unknown";
  if (string == 1)
  {
    v3 = @"Unavailable";
  }

  if (string == 2)
  {
    return @"Available";
  }

  else
  {
    return v3;
  }
}

+ (id)contextTypeToString:(unint64_t)string
{
  v3 = @"Delete";
  if (string == 1)
  {
    v3 = @"Fetch";
  }

  if (string == 2)
  {
    return @"Insert";
  }

  else
  {
    return v3;
  }
}

- (RTStore)initWithPersistenceManager:(id)manager
{
  v24 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if (managerCopy)
  {
    v19.receiver = self;
    v19.super_class = RTStore;
    v6 = [(RTNotifier *)&v19 init];
    v7 = v6;
    if (v6)
    {
      v6->_availability = 0;
      objc_storeStrong(&v6->_persistenceManager, manager);
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      contexts = v7->_contexts;
      v7->_contexts = dictionary;

      v10 = [RTInvocationDispatcher alloc];
      queue = [(RTNotifier *)v7 queue];
      v12 = [(RTInvocationDispatcher *)v10 initWithQueue:queue];
      dispatcher = v7->_dispatcher;
      v7->_dispatcher = v12;

      persistenceManager = v7->_persistenceManager;
      v15 = +[(RTNotification *)RTPersistenceManagerNotificationAvailabilityDidChange];
      [(RTNotifier *)persistenceManager addObserver:v7 selector:sel_onPersistenceManagerNotification_ name:v15];

      [(RTService *)v7 setup];
    }

    self = v7;
    selfCopy = self;
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

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_setupContextsHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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
        contexts = [(RTStore *)self contexts];
        v12 = [contexts objectForKey:v10];

        if (!v12)
        {
          dispatch_group_enter(v5);
          persistenceManager = [(RTStore *)self persistenceManager];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __33__RTStore__setupContextsHandler___block_invoke;
          v20[3] = &unk_2788C9930;
          v20[4] = self;
          v20[5] = v10;
          v22 = a2;
          v21 = v5;
          [persistenceManager createManagedObjectContext:v20];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [&unk_2845A12F8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__RTStore__setupContextsHandler___block_invoke_43;
  block[3] = &unk_2788C4758;
  v19 = v17;
  v15 = v17;
  dispatch_group_notify(v5, queue, block);
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

- (void)_onPersistenceManagerNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTPersistenceManagerNotificationAvailabilityDidChange];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    availability = [notificationCopy availability];
    if (availability == 2)
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
      v9 = availability;
      contexts = [(RTStore *)self contexts];
      [contexts removeAllObjects];

      [(RTStore *)self setAvailability:v9 == 1];
    }
  }
}

- (void)onPersistenceManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RTStore_onPersistenceManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_sync(queue, v7);
}

- (RTStore)initWithInterimPersistenceManager:(id)manager
{
  v24 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if (managerCopy)
  {
    v19.receiver = self;
    v19.super_class = RTStore;
    v6 = [(RTNotifier *)&v19 init];
    v7 = v6;
    if (v6)
    {
      v6->_availability = 0;
      objc_storeStrong(&v6->_interimPersistenceManager, manager);
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      contexts = v7->_contexts;
      v7->_contexts = dictionary;

      v10 = [RTInvocationDispatcher alloc];
      queue = [(RTNotifier *)v7 queue];
      v12 = [(RTInvocationDispatcher *)v10 initWithQueue:queue];
      dispatcher = v7->_dispatcher;
      v7->_dispatcher = v12;

      interimPersistenceManager = v7->_interimPersistenceManager;
      v15 = +[(RTNotification *)RTInterimPersistenceManagerNotificationAvailabilityDidChange];
      [(RTNotifier *)interimPersistenceManager addObserver:v7 selector:sel_onInterimPersistenceManagerNotification_ name:v15];
    }

    self = v7;
    selfCopy = self;
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

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_onInterimPersistenceManagerNotification:(id)notification
{
  v23[3] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v6 = +[(RTNotification *)RTInterimPersistenceManagerNotificationAvailabilityDidChange];
  v7 = [name isEqualToString:v6];

  if (v7)
  {
    availability = [notificationCopy availability];
    if (availability == 2)
    {
      v9 = objc_alloc(MEMORY[0x277CBEB38]);
      v22[0] = &unk_28459E7D8;
      interimPersistenceManager = [(RTStore *)self interimPersistenceManager];
      managedObjectContext = [interimPersistenceManager managedObjectContext];
      v23[0] = managedObjectContext;
      v22[1] = &unk_28459E7F0;
      interimPersistenceManager2 = [(RTStore *)self interimPersistenceManager];
      managedObjectContext2 = [interimPersistenceManager2 managedObjectContext];
      v23[1] = managedObjectContext2;
      v22[2] = &unk_28459E808;
      interimPersistenceManager3 = [(RTStore *)self interimPersistenceManager];
      managedObjectContext3 = [interimPersistenceManager3 managedObjectContext];
      v23[2] = managedObjectContext3;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
      v17 = [v9 initWithDictionary:v16];
      [(RTStore *)self setContexts:v17];

      selfCopy2 = self;
      v19 = 2;
    }

    else
    {
      v20 = availability;
      contexts = [(RTStore *)self contexts];
      [contexts removeAllObjects];

      selfCopy2 = self;
      v19 = v20 == 1;
    }

    [(RTStore *)selfCopy2 setAvailability:v19];
  }
}

- (void)onInterimPersistenceManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RTStore_onInterimPersistenceManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_sync(queue, v7);
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  persistenceManager = [(RTStore *)self persistenceManager];
  v5 = +[(RTNotification *)RTPersistenceManagerNotificationAvailabilityDidChange];
  [persistenceManager removeObserver:self fromNotification:v5];

  interimPersistenceManager = [(RTStore *)self interimPersistenceManager];
  v7 = +[(RTNotification *)RTInterimPersistenceManagerNotificationAvailabilityDidChange];
  [interimPersistenceManager removeObserver:self fromNotification:v7];

  contexts = [(RTStore *)self contexts];
  [contexts removeAllObjects];

  dispatcher = [(RTStore *)self dispatcher];
  [dispatcher shutdown];

  v10 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v10 = handlerCopy;
  }
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  nameCopy = name;
  v8 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v9 = [nameCopy isEqualToString:v8];

  if (v9)
  {
    v10 = [[RTStoreNotificationAvailabilityDidChange alloc] initWithAvailability:[(RTStore *)self availability]];
    [(RTNotifier *)self postNotification:v10 toObserver:observerCopy];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "unhandled notification %@", &v12, 0xCu);
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v10 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = +[(RTNotification *)RTStoreNotificationAvailabilityDidChange];
  v6 = [nameCopy isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "unhandled notification %@", &v8, 0xCu);
    }
  }
}

- (void)setAvailability:(unint64_t)availability
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_availability != availability)
  {
    self->_availability = availability;
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

    dispatcher = [(RTStore *)self dispatcher];
    invocationsPending = [dispatcher invocationsPending];

    if (invocationsPending)
    {
      dispatcher2 = [(RTStore *)self dispatcher];
      [dispatcher2 dispatchPendingInvocations];
    }
  }
}

- (void)fetchAvailabilityWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__RTStore_fetchAvailabilityWithHandler___block_invoke;
    v7[3] = &unk_2788C4D38;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(queue, v7);

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

- (void)_storeWritableObjects:(id)objects handler:(id)handler
{
  objectsCopy = objects;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__RTStore__storeWritableObjects_handler___block_invoke;
  aBlock[3] = &unk_2788C4FB0;
  v14 = handlerCopy;
  v15 = a2;
  v13 = objectsCopy;
  v9 = handlerCopy;
  v10 = objectsCopy;
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

- (void)storeWritableObjects:(id)objects handler:(id)handler
{
  objectsCopy = objects;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__RTStore_storeWritableObjects_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = objectsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = objectsCopy;
  dispatch_async(queue, block);
}

- (void)_updateWritableObjects:(id)objects handler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  handlerCopy = handler;
  if ([objectsCopy count])
  {
    firstObject = [objectsCopy firstObject];
    NSSelectorFromString(&cfstr_Updatemanagedo.isa);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __42__RTStore__updateWritableObjects_handler___block_invoke;
      aBlock[3] = &unk_2788C4FB0;
      v25 = objectsCopy;
      v27 = a2;
      v11 = handlerCopy;
      v26 = v11;
      v12 = _Block_copy(aBlock);
      [(RTStore *)self _performBlock:v12 contextType:2 errorHandler:v11];
    }

    else
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = NSStringFromSelector(a2);
      firstObject2 = [objectsCopy firstObject];
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

      if (handlerCopy)
      {
        v20 = MEMORY[0x277CCA9B8];
        v21 = *MEMORY[0x277D01448];
        v28 = *MEMORY[0x277CCA450];
        v29 = v18;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v23 = [v20 errorWithDomain:v21 code:7 userInfo:v22];
        (*(handlerCopy + 2))(handlerCopy, v23);
      }
    }
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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

- (void)updateWritableObjects:(id)objects handler:(id)handler
{
  objectsCopy = objects;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RTStore_updateWritableObjects_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = objectsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = objectsCopy;
  dispatch_async(queue, block);
}

- (void)_performBlock:(id)block contextType:(unint64_t)type errorHandler:(id)handler
{
  v56[1] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (blockCopy)
  {
    contexts = [(RTStore *)self contexts];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v14 = [contexts objectForKey:v13];

    if (v14)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __50__RTStore__performBlock_contextType_errorHandler___block_invoke_84;
      v40[3] = &unk_2788C6210;
      v43 = blockCopy;
      v15 = v14;
      v41 = v15;
      selfCopy = self;
      [v15 performBlock:v40];
    }

    else
    {
      if ([(RTStore *)self availability])
      {
        if (v11)
        {
          availability = [(RTStore *)self availability];
          v23 = MEMORY[0x277CCA9B8];
          v24 = *MEMORY[0x277D01448];
          if (availability == 1)
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
            v30 = [RTStore contextTypeToString:type];
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
        dispatcher = [(RTStore *)self dispatcher];
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __50__RTStore__performBlock_contextType_errorHandler___block_invoke;
        v47[3] = &unk_2788CD658;
        v47[4] = self;
        v48 = blockCopy;
        typeCopy = type;
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
        [dispatcher enqueueBlock:v47 failureBlock:v44 description:{@"%@-%@", v35, v36}];
      }

      v15 = 0;
    }

    goto LABEL_14;
  }

  if (handlerCopy)
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

+ (id)exceptionHandlingPolicyToString:(int64_t)string
{
  v3 = @"Unknown";
  if (string == 1)
  {
    v3 = @"ExitGracefully";
  }

  if (string == 2)
  {
    return @"ThrowException";
  }

  else
  {
    return v3;
  }
}

+ (BOOL)handleCoreDataException:(id)exception outError:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  [RTException coreDataExceptionLogging:exceptionCopy];
  v7 = [objc_opt_class() evaluatePolicyForCoreDataContextPerformBlockException:exceptionCopy];
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
      v27 = exceptionCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, exception handling policy, %@, exception, %@", buf, 0x2Au);
    }
  }

  if (v7 == 2)
  {
    objc_exception_throw(exceptionCopy);
  }

  if (v7 == 1)
  {
    exit(1);
  }

  +[RTException unknownExceptionHandlingPolicyDeadInside];
  if (error)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D01448];
    reason = [exceptionCopy reason];
    v18[1] = @"NSException";
    v19[0] = reason;
    v19[1] = exceptionCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    *error = [v13 errorWithDomain:v14 code:0 userInfo:v16];
  }

  return 0;
}

+ (int64_t)evaluatePolicyForCoreDataContextPerformBlockException:(id)exception
{
  exceptionCopy = exception;
  userInfo = [exceptionCopy userInfo];
  v5 = *MEMORY[0x277CBE2C8];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE2C8]];

  if (v6)
  {
    userInfo2 = [exceptionCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:v5];

    if ([v8 intValue] == 13 || objc_msgSend(v8, "intValue") == 23)
    {
      goto LABEL_8;
    }
  }

  userInfo3 = [exceptionCopy userInfo];
  v10 = [userInfo3 objectForKeyedSubscript:@"RTPersistenceOpearationsErrorDomain"];

  if (!v10)
  {
    v12 = 2;
    goto LABEL_10;
  }

  userInfo4 = [exceptionCopy userInfo];
  v8 = [userInfo4 objectForKeyedSubscript:@"RTPersistenceOpearationsErrorDomain"];

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

- (void)removeAll:(id)all handler:(id)handler
{
  allCopy = all;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__RTStore_removeAll_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = allCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = allCopy;
  dispatch_async(queue, block);
}

- (void)_removeAll:(id)all handler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  allCopy = all;
  handlerCopy = handler;
  if (!allCopy)
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

  if ([allCopy count])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __30__RTStore__removeAll_handler___block_invoke;
    aBlock[3] = &unk_2788C4F38;
    v12 = allCopy;
    selfCopy = self;
    v9 = handlerCopy;
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

- (void)purgePredating:(id)predating predicateMappings:(id)mappings handler:(id)handler
{
  predatingCopy = predating;
  mappingsCopy = mappings;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__RTStore_purgePredating_predicateMappings_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = predatingCopy;
  v17 = mappingsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = mappingsCopy;
  v14 = predatingCopy;
  dispatch_async(queue, v15);
}

void __52__RTStore_purgePredating_predicateMappings_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [v3 initWithStartDate:v5 endDate:a1[5]];
  [v2 _purgeDateInterval:v4 predicateMappings:a1[6] limit:0 handler:a1[7]];
}

- (void)purgePredating:(id)predating predicateMappings:(id)mappings purgeLimit:(unint64_t)limit handler:(id)handler
{
  predatingCopy = predating;
  mappingsCopy = mappings;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTStore_purgePredating_predicateMappings_purgeLimit_handler___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = predatingCopy;
  v20 = handlerCopy;
  limitCopy = limit;
  v19 = mappingsCopy;
  v14 = handlerCopy;
  v15 = mappingsCopy;
  v16 = predatingCopy;
  dispatch_async(queue, block);
}

void __63__RTStore_purgePredating_predicateMappings_purgeLimit_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [v3 initWithStartDate:v5 endDate:a1[5]];
  [v2 _purgeDateInterval:v4 predicateMappings:a1[6] limit:a1[8] handler:a1[7]];
}

- (void)purgeDateInterval:(id)interval predicateMappings:(id)mappings handler:(id)handler
{
  intervalCopy = interval;
  mappingsCopy = mappings;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__RTStore_purgeDateInterval_predicateMappings_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = intervalCopy;
  v17 = mappingsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = mappingsCopy;
  v14 = intervalCopy;
  dispatch_async(queue, v15);
}

- (void)purgeDateInterval:(id)interval predicateMappings:(id)mappings purgeLimit:(unint64_t)limit handler:(id)handler
{
  intervalCopy = interval;
  mappingsCopy = mappings;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTStore_purgeDateInterval_predicateMappings_purgeLimit_handler___block_invoke;
  block[3] = &unk_2788C5110;
  block[4] = self;
  v18 = intervalCopy;
  v20 = handlerCopy;
  limitCopy = limit;
  v19 = mappingsCopy;
  v14 = handlerCopy;
  v15 = mappingsCopy;
  v16 = intervalCopy;
  dispatch_async(queue, block);
}

- (void)_purgeDateInterval:(id)interval predicateMappings:(id)mappings limit:(unint64_t)limit handler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  mappingsCopy = mappings;
  handlerCopy = handler;
  if (intervalCopy)
  {
    if (mappingsCopy)
    {
      allKeys = [mappingsCopy allKeys];
      if ([allKeys count])
      {
        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __62__RTStore__purgeDateInterval_predicateMappings_limit_handler___block_invoke;
        v27 = &unk_2788CD680;
        allKeys = allKeys;
        v28 = allKeys;
        v29 = mappingsCopy;
        limitCopy = limit;
        v30 = intervalCopy;
        selfCopy = self;
        v14 = handlerCopy;
        v32 = v14;
        v15 = _Block_copy(&v24);
        [(RTStore *)self _performBlock:v15 contextType:0 errorHandler:v14, v24, v25, v26, v27];
      }

      else if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 0);
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

    if (mappingsCopy)
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

  if (intervalCopy)
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
  allKeys = [v18 errorWithDomain:v19 code:7 userInfo:v23];

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, allKeys);
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

- (void)executeDeleteRequests:(id)requests context:(id)context handler:(id)handler
{
  v53 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  contextCopy = context;
  handlerCopy = handler;
  v9 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = requestsCopy;
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
          v15 = [contextCopy executeRequest:v11 error:&v37];
          v12 = v37;

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v20 = NSStringFromSelector(a2);
              result = [v15 result];
              *buf = 138413058;
              v45 = v20;
              v46 = 2112;
              v47 = v11;
              v48 = 2112;
              v49 = result;
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

          fetchRequest = [v11 fetchRequest];
          if (![fetchRequest fetchLimit])
          {

            break;
          }

          result2 = [v15 result];
          unsignedIntegerValue = [result2 unsignedIntegerValue];

          objc_autoreleasePoolPop(v14);
          if (!unsignedIntegerValue)
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
  v22 = [contextCopy save:&v36];
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

  if (handlerCopy)
  {
    if ([v9 count] > 1)
    {
      v26 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277D01448];
      v42 = *MEMORY[0x277D01440];
      v43 = v9;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      firstObject = [v26 errorWithDomain:v27 code:9 userInfo:v28];
    }

    else
    {
      firstObject = [v9 firstObject];
    }

    handlerCopy[2](handlerCopy, firstObject);
  }
}

- (void)fetchEnumerableObjectsWithOptions:(id)options offset:(unint64_t)offset handler:(id)handler
{
  v31[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (([(RTStore *)self conformsToProtocol:&unk_2845A65E0]& 1) != 0)
    {
      enumeratedType = [optionsCopy enumeratedType];
      if (objc_opt_respondsToSelector())
      {
        selfCopy = self;
        v26 = 0;
        v12 = [(RTStore *)selfCopy fetchRequestFromOptions:optionsCopy offset:offset error:&v26];
        v13 = v26;
        if (v12)
        {
          processingBlock = [optionsCopy processingBlock];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __60__RTStore_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke;
          v22[3] = &unk_2788CD6A8;
          offsetCopy = offset;
          v23 = processingBlock;
          v24 = handlerCopy;
          v15 = processingBlock;
          [(RTStore *)selfCopy fetchReadableObjectsOfType:enumeratedType fetchRequest:v12 handler:v22];
        }

        else
        {
          (*(handlerCopy + 2))(handlerCopy, 0, 0, v13);
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
    selfCopy = [v16 errorWithDomain:v17 code:7 userInfo:v21];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, selfCopy);
    goto LABEL_13;
  }

  selfCopy = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(&selfCopy->super.super.super, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, &selfCopy->super.super.super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
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

- (void)enumerateType:(Class)type fetchRequest:(id)request enumerationBlock:(id)block
{
  v85[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  blockCopy = block;
  if (blockCopy)
  {
    v67 = 0;
    if (type)
    {
      if (([(objc_class *)type conformsToProtocol:&unk_2845A4970]& 1) != 0)
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
          blockCopy[2](blockCopy, 0, v56, &v67);
          goto LABEL_52;
        }

        if (requestCopy)
        {
          typeCopy = type;
          v56 = [requestCopy copy];
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
                v70 = typeCopy;
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
            [(RTStore *)self fetchReadableObjectsOfType:typeCopy fetchRequest:v56 handler:v57];
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
              callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
              v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
              firstObject = [v21 firstObject];

              [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
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

            blockCopy[2](blockCopy, *(*&v73[8] + 40), v62[5], &v67);
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
    blockCopy[2](blockCopy, 0, v56, &v67);
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

- (void)fetchReadableObjectsOfType:(Class)type fetchRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__RTStore_fetchReadableObjectsOfType_fetchRequest_handler___block_invoke;
    v12[3] = &unk_2788CD6D0;
    v12[4] = self;
    typeCopy = type;
    v13 = requestCopy;
    v14 = handlerCopy;
    dispatch_async(queue, v12);
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

- (void)_fetchReadableObjectsOfType:(Class)type fetchRequest:(id)request handler:(id)handler
{
  v31[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (type)
    {
      if (requestCopy)
      {
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __60__RTStore__fetchReadableObjectsOfType_fetchRequest_handler___block_invoke;
        aBlock[3] = &unk_2788CD718;
        v23 = requestCopy;
        v25 = a2;
        v11 = handlerCopy;
        v24 = v11;
        typeCopy = type;
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

    (*(handlerCopy + 2))(handlerCopy, 0, v13);
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