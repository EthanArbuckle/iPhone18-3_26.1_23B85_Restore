@interface STPersistenceController
- (BOOL)saveContext:(id)context error:(id *)error;
- (NSManagedObjectContext)viewContext;
- (NSPersistentStore)cloudStore;
- (NSPersistentStore)localStore;
- (STPersistenceController)init;
- (STPersistenceController)initWithPersistentContainer:(id)container persistentStoreChangeHandler:(id)handler notificationDebouncer:(id)debouncer;
- (id)descriptionForPersistentStore:(id)store;
- (id)newBackgroundContext;
- (void)_logAboutMissingStoreName:(id)name;
- (void)_persistentStoreCoordinatorStoresDidChange:(id)change;
- (void)_remotePersistentStoreChangesDidCoalesce:(id)coalesce;
- (void)debouncer:(id)debouncer didDebounce:(id)debounce;
- (void)performBackgroundTask:(id)task;
- (void)performBackgroundTaskAndWait:(id)wait;
- (void)remotePersistentStoreDidChange:(id)change;
@end

@implementation STPersistenceController

- (STPersistenceController)initWithPersistentContainer:(id)container persistentStoreChangeHandler:(id)handler notificationDebouncer:(id)debouncer
{
  containerCopy = container;
  handlerCopy = handler;
  debouncerCopy = debouncer;
  v25.receiver = self;
  v25.super_class = STPersistenceController;
  v11 = [(STPersistenceController *)&v25 init];
  persistentContainer = v11->_persistentContainer;
  v11->_persistentContainer = containerCopy;
  v13 = containerCopy;

  v14 = dispatch_queue_create("com.apple.ScreenTimeAgent.core-data", 0);
  coreDataQueue = v11->_coreDataQueue;
  v11->_coreDataQueue = v14;

  changeHandler = v11->_changeHandler;
  v11->_changeHandler = handlerCopy;
  v17 = handlerCopy;

  changeNotificationDebouncer = v11->_changeNotificationDebouncer;
  v11->_changeNotificationDebouncer = debouncerCopy;
  v19 = debouncerCopy;

  persistentStoreCoordinator = [(NSPersistentContainer *)v11->_persistentContainer persistentStoreCoordinator];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v11 selector:sel_remotePersistentStoreDidChange_ name:*MEMORY[0x1E695D420] object:persistentStoreCoordinator];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:v11 selector:sel_remotePersistentStoreDidChange_ name:*MEMORY[0x1E695D470] object:persistentStoreCoordinator];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:v11 selector:sel__persistentStoreCoordinatorStoresDidChange_ name:*MEMORY[0x1E695D3E0] object:persistentStoreCoordinator];

  return v11;
}

- (STPersistenceController)init
{
  v3 = objc_alloc(MEMORY[0x1E695D688]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = +[STPersistenceConfiguration managedObjectModel];
  v7 = [v3 initWithName:v5 managedObjectModel:v6];

  v8 = [[STConcretePersistentStoreChangeHandler alloc] initWithPersistentContainer:v7];
  v9 = [[STDebouncer alloc] initWithMinCoalescenceInterval:1.0 maxCoalescenceInterval:5.0];
  [(STDebouncer *)v9 setDelegate:self];
  v10 = [(STPersistenceController *)self initWithPersistentContainer:v7 persistentStoreChangeHandler:v8 notificationDebouncer:v9];

  return v10;
}

- (BOOL)saveContext:(id)context error:(id *)error
{
  contextCopy = context;
  if ([contextCopy hasChanges])
  {
    v6 = [contextCopy save:error];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)performBackgroundTask:(id)task
{
  taskCopy = task;
  coreDataQueue = [(STPersistenceController *)self coreDataQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__STPersistenceController_performBackgroundTask___block_invoke;
  v7[3] = &unk_1E7CE6C98;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  dispatch_async(coreDataQueue, v7);
}

- (void)performBackgroundTaskAndWait:(id)wait
{
  waitCopy = wait;
  v5 = +[STLog persistence];
  v6 = os_signpost_id_generate(v5);

  v7 = +[STLog persistence];
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B831F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "CoreData Task", "", buf, 2u);
  }

  v9 = self->_coreDataQueue;
  objc_sync_enter(v9);
  newBackgroundContext = [(STPersistenceController *)self newBackgroundContext];
  [newBackgroundContext setMergePolicy:*MEMORY[0x1E695D370]];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __56__STPersistenceController_performBackgroundTaskAndWait___block_invoke;
  v18 = &unk_1E7CE6948;
  v11 = waitCopy;
  v20 = v11;
  v12 = newBackgroundContext;
  v19 = v12;
  [v12 performBlockAndWait:&v15];

  objc_sync_exit(v9);
  v13 = [STLog persistence:v15];
  v14 = v13;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B831F000, v14, OS_SIGNPOST_INTERVAL_END, v6, "CoreData Task", "", buf, 2u);
  }
}

- (id)newBackgroundContext
{
  persistentContainer = [(STPersistenceController *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  [newBackgroundContext setMergePolicy:*MEMORY[0x1E695D370]];
  return newBackgroundContext;
}

- (NSManagedObjectContext)viewContext
{
  persistentContainer = [(STPersistenceController *)self persistentContainer];
  viewContext = [persistentContainer viewContext];

  return viewContext;
}

- (NSPersistentStore)localStore
{
  v36 = *MEMORY[0x1E69E9840];
  persistentContainer = [(STPersistenceController *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = persistentStores;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v31 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v30 + 1) + 8 * v10);
      configurationName = [v11 configurationName];
      v13 = [configurationName isEqualToString:@"Local"];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v11;

    if (v14)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_9:
  }

  [(STPersistenceController *)self _logAboutMissingStoreName:v6];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v20 URL];
        lastPathComponent = [v21 lastPathComponent];
        v23 = [lastPathComponent containsString:@"Local"];

        if (v23)
        {
          v14 = v20;
          goto LABEL_21;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_21:

LABEL_22:
  v24 = *MEMORY[0x1E69E9840];

  return v14;
}

- (NSPersistentStore)cloudStore
{
  v36 = *MEMORY[0x1E69E9840];
  persistentContainer = [(STPersistenceController *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = persistentStores;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v31 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v30 + 1) + 8 * v10);
      configurationName = [v11 configurationName];
      v13 = [configurationName isEqualToString:@"Cloud"];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v11;

    if (v14)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_9:
  }

  [(STPersistenceController *)self _logAboutMissingStoreName:v6];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v20 URL];
        lastPathComponent = [v21 lastPathComponent];
        v23 = [lastPathComponent containsString:@"Cloud"];

        if (v23)
        {
          v14 = v20;
          goto LABEL_21;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_21:

LABEL_22:
  v24 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)debouncer:(id)debouncer didDebounce:(id)debounce
{
  debounceCopy = debounce;
  debouncerCopy = debouncer;
  changeNotificationDebouncer = [(STPersistenceController *)self changeNotificationDebouncer];

  v8 = debounceCopy;
  if (changeNotificationDebouncer == debouncerCopy && debounceCopy)
  {
    [(STPersistenceController *)self _remotePersistentStoreChangesDidCoalesce:debounceCopy];
    v8 = debounceCopy;
  }
}

- (id)descriptionForPersistentStore:(id)store
{
  storeCopy = store;
  configurationName = [storeCopy configurationName];
  v5 = [storeCopy URL];
  v6 = [storeCopy URL];
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/dev/null"];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    [storeCopy type];
  }

  else
  {
    [v5 lastPathComponent];
  }
  v9 = ;
  v10 = [configurationName stringByAppendingPathComponent:v9];

  return v10;
}

- (void)remotePersistentStoreDidChange:(id)change
{
  changeCopy = change;
  v5 = +[STLog persistence];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STPersistenceController remotePersistentStoreDidChange:v5];
  }

  changeNotificationDebouncer = [(STPersistenceController *)self changeNotificationDebouncer];
  [changeNotificationDebouncer bounce:changeCopy];
}

- (void)_remotePersistentStoreChangesDidCoalesce:(id)coalesce
{
  coalesceCopy = coalesce;
  v5 = +[STLog persistence];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STPersistenceController _remotePersistentStoreChangesDidCoalesce:v5];
  }

  coreDataQueue = [(STPersistenceController *)self coreDataQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__STPersistenceController__remotePersistentStoreChangesDidCoalesce___block_invoke;
  v8[3] = &unk_1E7CE7AA0;
  v8[4] = self;
  v9 = coalesceCopy;
  v7 = coalesceCopy;
  dispatch_async(coreDataQueue, v8);
}

void __68__STPersistenceController__remotePersistentStoreChangesDidCoalesce___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentContainer];
  v4 = [v2 newBackgroundContext];

  [v4 setMergePolicy:*MEMORY[0x1E695D370]];
  v3 = [*(a1 + 32) changeHandler];
  [v3 handleRemotePersistentStoreDidChange:*(a1 + 40) inContext:v4];
}

- (void)_persistentStoreCoordinatorStoresDidChange:(id)change
{
  changeCopy = change;
  changeHandler = [(STPersistenceController *)self changeHandler];
  [changeHandler handlePersistentStoreCoordinatorStoresDidChange:changeCopy];
}

- (void)_logAboutMissingStoreName:(id)name
{
  nameCopy = name;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__STPersistenceController__logAboutMissingStoreName___block_invoke;
  block[3] = &unk_1E7CE7AC8;
  v7 = nameCopy;
  v4 = _logAboutMissingStoreName__onceToken;
  v5 = nameCopy;
  if (v4 != -1)
  {
    dispatch_once(&_logAboutMissingStoreName__onceToken, block);
  }
}

void __53__STPersistenceController__logAboutMissingStoreName___block_invoke(uint64_t a1)
{
  v2 = +[STLog mirroring];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __53__STPersistenceController__logAboutMissingStoreName___block_invoke_cold_1(a1, v2);
  }
}

void __53__STPersistenceController__logAboutMissingStoreName___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [v4 valueForKey:@"configurationName"];
  v6 = [*(a1 + 32) valueForKey:@"metadata"];
  v8 = 138412802;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Unexpectedly missing store configuration names.\nStores: %@\nNames: %@\nMeta: %@", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

@end