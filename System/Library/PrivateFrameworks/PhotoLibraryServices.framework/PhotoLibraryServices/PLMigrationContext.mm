@interface PLMigrationContext
- (PLMigrationContext)initWithPathManager:(id)manager coordinator:(id)coordinator onStore:(id)store orStoreURL:(id)l version:(unsigned __int16)version options:(id)options migrationPolicy:(unsigned int)policy analyticsEventManager:(id)self0 graphCache:(id)self1;
- (id)newModelMigrationHistory;
- (void)dealloc;
@end

@implementation PLMigrationContext

- (id)newModelMigrationHistory
{
  coordinator = [(PLMigrationContext *)self coordinator];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  pathManager = [(PLMigrationContext *)self pathManager];
  graphCache = [(PLMigrationContext *)self graphCache];
  v8 = PLManagedObjectContextForMigrationActionWithCoordinator(coordinator, v5, pathManager, graphCache);

  v9 = [[PLModelMigrationHistory alloc] initWithManagedObjectContext:v8];
  return v9;
}

- (void)dealloc
{
  [(PLLazyObject *)self->_lazyModelMigrationHistory invalidate];
  v3.receiver = self;
  v3.super_class = PLMigrationContext;
  [(PLMigrationContext *)&v3 dealloc];
}

- (PLMigrationContext)initWithPathManager:(id)manager coordinator:(id)coordinator onStore:(id)store orStoreURL:(id)l version:(unsigned __int16)version options:(id)options migrationPolicy:(unsigned int)policy analyticsEventManager:(id)self0 graphCache:(id)self1
{
  managerCopy = manager;
  coordinatorCopy = coordinator;
  obj = store;
  storeCopy = store;
  lCopy = l;
  optionsCopy = options;
  selfCopy = self;
  eventManagerCopy = eventManager;
  cacheCopy = cache;
  if (managerCopy)
  {
    if (coordinatorCopy)
    {
      goto LABEL_3;
    }

LABEL_14:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationContext.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"coordinator"}];

    if (optionsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationContext.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

  if (!coordinatorCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (optionsCopy)
  {
    goto LABEL_4;
  }

LABEL_15:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"PLModelMigrationContext.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"options"}];

LABEL_4:
  if (!(storeCopy | lCopy))
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:selfCopy file:@"PLModelMigrationContext.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"sourceStore || storeURL"}];
  }

  v49.receiver = selfCopy;
  v49.super_class = PLMigrationContext;
  v23 = [(PLMigrationContext *)&v49 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_pathManager, manager);
    objc_storeStrong(&v24->_coordinator, coordinator);
    objc_storeStrong(&v24->_store, obj);
    v25 = lCopy;
    if (!lCopy)
    {
      v25 = [storeCopy URL];
    }

    v26 = [v25 copy];
    storeURL = v24->_storeURL;
    v24->_storeURL = v26;

    if (!lCopy)
    {
    }

    v24->_previousStoreVersion = version;
    v28 = [optionsCopy copy];
    options = v24->_options;
    v24->_options = v28;

    v24->_policy = policy;
    objc_storeStrong(&v24->_analyticsEventManager, eventManager);
    v24->_libraryIdentifier = PLMigrationContextWellKnownPhotoLibraryIdentifier(v24->_pathManager);
    v30 = objc_initWeak(&location, v24);

    v31 = objc_alloc(MEMORY[0x1E69BF270]);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __138__PLMigrationContext_initWithPathManager_coordinator_onStore_orStoreURL_version_options_migrationPolicy_analyticsEventManager_graphCache___block_invoke;
    v46[3] = &unk_1E7576828;
    objc_copyWeak(&v47, &location);
    v32 = [v31 initWithBlock:v46];
    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
    lazyModelMigrationHistory = v24->_lazyModelMigrationHistory;
    v24->_lazyModelMigrationHistory = v32;

    objc_storeStrong(&v24->_graphCache, cache);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    userInfo = v24->_userInfo;
    v24->_userInfo = dictionary;
  }

  return v24;
}

id __138__PLMigrationContext_initWithPathManager_coordinator_onStore_orStoreURL_version_options_migrationPolicy_analyticsEventManager_graphCache___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newModelMigrationHistory];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end