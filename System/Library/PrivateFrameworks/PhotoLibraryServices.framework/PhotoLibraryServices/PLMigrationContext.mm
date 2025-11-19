@interface PLMigrationContext
- (PLMigrationContext)initWithPathManager:(id)a3 coordinator:(id)a4 onStore:(id)a5 orStoreURL:(id)a6 version:(unsigned __int16)a7 options:(id)a8 migrationPolicy:(unsigned int)a9 analyticsEventManager:(id)a10 graphCache:(id)a11;
- (id)newModelMigrationHistory;
- (void)dealloc;
@end

@implementation PLMigrationContext

- (id)newModelMigrationHistory
{
  v3 = [(PLMigrationContext *)self coordinator];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PLMigrationContext *)self pathManager];
  v7 = [(PLMigrationContext *)self graphCache];
  v8 = PLManagedObjectContextForMigrationActionWithCoordinator(v3, v5, v6, v7);

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

- (PLMigrationContext)initWithPathManager:(id)a3 coordinator:(id)a4 onStore:(id)a5 orStoreURL:(id)a6 version:(unsigned __int16)a7 options:(id)a8 migrationPolicy:(unsigned int)a9 analyticsEventManager:(id)a10 graphCache:(id)a11
{
  v17 = a3;
  v18 = a4;
  obj = a5;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v22 = self;
  v45 = a10;
  v44 = a11;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_14:
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PLModelMigrationContext.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"coordinator"}];

    if (v21)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v37 = [MEMORY[0x1E696AAA8] currentHandler];
  [v37 handleFailureInMethod:a2 object:self file:@"PLModelMigrationContext.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v21)
  {
    goto LABEL_4;
  }

LABEL_15:
  v39 = [MEMORY[0x1E696AAA8] currentHandler];
  [v39 handleFailureInMethod:a2 object:v22 file:@"PLModelMigrationContext.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"options"}];

LABEL_4:
  if (!(v19 | v20))
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:v22 file:@"PLModelMigrationContext.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"sourceStore || storeURL"}];
  }

  v49.receiver = v22;
  v49.super_class = PLMigrationContext;
  v23 = [(PLMigrationContext *)&v49 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_pathManager, a3);
    objc_storeStrong(&v24->_coordinator, a4);
    objc_storeStrong(&v24->_store, obj);
    v25 = v20;
    if (!v20)
    {
      v25 = [v19 URL];
    }

    v26 = [v25 copy];
    storeURL = v24->_storeURL;
    v24->_storeURL = v26;

    if (!v20)
    {
    }

    v24->_previousStoreVersion = a7;
    v28 = [v21 copy];
    options = v24->_options;
    v24->_options = v28;

    v24->_policy = a9;
    objc_storeStrong(&v24->_analyticsEventManager, a10);
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

    objc_storeStrong(&v24->_graphCache, a11);
    v34 = [MEMORY[0x1E695DF90] dictionary];
    userInfo = v24->_userInfo;
    v24->_userInfo = v34;
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