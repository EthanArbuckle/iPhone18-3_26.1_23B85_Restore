@interface PLBackgroundMigrationContext
- (PLBackgroundMigrationContext)initWithPathManager:(id)manager databaseContext:(id)context analyticsEventManager:(id)eventManager;
- (id)newModelMigrationHistory;
- (void)dealloc;
@end

@implementation PLBackgroundMigrationContext

- (id)newModelMigrationHistory
{
  databaseContext = self->_databaseContext;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = -[PLDatabaseContext newShortLivedLibraryWithName:](databaseContext, "newShortLivedLibraryWithName:", [v4 UTF8String]);

  v6 = [PLModelMigrationHistory alloc];
  managedObjectContext = [v5 managedObjectContext];
  v8 = [(PLModelMigrationHistory *)v6 initWithManagedObjectContext:managedObjectContext];

  return v8;
}

- (void)dealloc
{
  [(PLLazyObject *)self->_lazyModelMigrationHistory invalidate];
  v3.receiver = self;
  v3.super_class = PLBackgroundMigrationContext;
  [(PLBackgroundMigrationContext *)&v3 dealloc];
}

- (PLBackgroundMigrationContext)initWithPathManager:(id)manager databaseContext:(id)context analyticsEventManager:(id)eventManager
{
  managerCopy = manager;
  contextCopy = context;
  eventManagerCopy = eventManager;
  if (managerCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLModelMigrationContext.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLModelMigrationContext.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"databaseContext"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = PLBackgroundMigrationContext;
  v13 = [(PLBackgroundMigrationContext *)&v27 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_pathManager, manager);
    objc_storeStrong(&v14->_databaseContext, context);
    objc_storeStrong(&v14->_analyticsEventManager, eventManager);
    v14->_policy = 0;
    v14->_libraryIdentifier = PLMigrationContextWellKnownPhotoLibraryIdentifier(v14->_pathManager);
    v15 = objc_initWeak(&location, v14);

    v16 = objc_alloc(MEMORY[0x1E69BF270]);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __90__PLBackgroundMigrationContext_initWithPathManager_databaseContext_analyticsEventManager___block_invoke;
    v24[3] = &unk_1E7576828;
    objc_copyWeak(&v25, &location);
    v17 = [v16 initWithBlock:v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
    lazyModelMigrationHistory = v14->_lazyModelMigrationHistory;
    v14->_lazyModelMigrationHistory = v17;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    userInfo = v14->_userInfo;
    v14->_userInfo = dictionary;
  }

  return v14;
}

id __90__PLBackgroundMigrationContext_initWithPathManager_databaseContext_analyticsEventManager___block_invoke(uint64_t a1)
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