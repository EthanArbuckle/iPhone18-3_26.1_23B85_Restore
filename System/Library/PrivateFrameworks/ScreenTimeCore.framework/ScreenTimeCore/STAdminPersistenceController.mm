@interface STAdminPersistenceController
+ (STAdminPersistenceController)sharedController;
- (BOOL)saveContext:(id)a3 error:(id *)a4;
- (STAdminPersistenceController)init;
- (id)newBackgroundContext;
- (id)viewContext;
- (void)performBackgroundTask:(id)a3;
- (void)performBackgroundTaskAndWait:(id)a3;
@end

@implementation STAdminPersistenceController

+ (STAdminPersistenceController)sharedController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__STAdminPersistenceController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = sharedController_sharedController;

  return v2;
}

void __48__STAdminPersistenceController_sharedController__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[STLog persistence];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138543362;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_1B831F000, v2, OS_LOG_TYPE_DEFAULT, "Created shared instance of “%{public}@”", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = objc_opt_new();
  v7 = sharedController_sharedController;
  sharedController_sharedController = v6;

  v8 = *MEMORY[0x1E69E9840];
}

- (STAdminPersistenceController)init
{
  v21[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = STAdminPersistenceController;
  v2 = [(STPersistenceController *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(STPersistenceController *)v2 persistentContainer];
    if (+[STAdminPersistenceController isUnitTestRunning])
    {
      v5 = +[STLog persistence];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_INFO, "Device is running in unit test mode. Configuring a test screen time database.", buf, 2u);
      }

      v6 = [STPersistenceConfiguration persistentStoreDescriptionForConfigurationName:@"Local" type:*MEMORY[0x1E695D4A8]];
      v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/dev/null"];
      [v6 setURL:v7];

      [v6 setConfiguration:@"Local"];
      [v6 setOption:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695D3C0]];
      v21[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [v4 setPersistentStoreDescriptions:v8];

      v9 = +[STLog persistence];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = +[STPersistenceConfiguration localPersistentXPCStoreDescription];
      v16 = v6;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
      [v4 setPersistentStoreDescriptions:v10];

      v9 = +[STLog persistence];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
LABEL_9:

        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __36__STAdminPersistenceController_init__block_invoke;
        v13[3] = &unk_1E7CE6920;
        v14 = v3;
        [v4 loadPersistentStoresWithCompletionHandler:v13];

        goto LABEL_10;
      }
    }

    *buf = 138543618;
    v18 = v3;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_1B831F000, v9, OS_LOG_TYPE_INFO, "%{public}@ loading persistent store: %{public}@", buf, 0x16u);
    goto LABEL_9;
  }

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

void __36__STAdminPersistenceController_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[STLog persistence];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 32);
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v5;
      v16 = 2114;
      v17 = v6;
      _os_log_fault_impl(&dword_1B831F000, v8, OS_LOG_TYPE_FAULT, "%{public}@ unable to load persistent store %{public}@: %{public}@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1B831F000, v8, OS_LOG_TYPE_INFO, "%{public}@ loaded persistent store %{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveContext:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(STPersistenceController *)self localStore];

  if ([v6 hasChanges])
  {
    if (v7)
    {
      v8 = [(STPersistenceController *)self persistentContainer];
      v9 = [v8 persistentStoreCoordinator];
      v10 = [(STPersistenceController *)self localStore];
      v18[0] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v12 = [v9 currentPersistentHistoryTokenFromStores:v11];
    }

    v13 = [_TtC14ScreenTimeCore20STConsistencyChecker validateWithManagedObjectContext:v6 error:a4];
    if (!a4 || v13)
    {
      v15 = [v6 save:a4];
    }

    else
    {
      v14 = +[STLog persistence];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [STAdminPersistenceController saveContext:a4 error:v14];
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)performBackgroundTask:(id)a3
{
  v4 = a3;
  v5 = [(STAdminPersistenceController *)self viewContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__STAdminPersistenceController_performBackgroundTask___block_invoke;
  v7[3] = &unk_1E7CE6948;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

void __54__STAdminPersistenceController_performBackgroundTask___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) viewContext];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)performBackgroundTaskAndWait:(id)a3
{
  v4 = a3;
  v5 = [(STAdminPersistenceController *)self viewContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__STAdminPersistenceController_performBackgroundTaskAndWait___block_invoke;
  v7[3] = &unk_1E7CE6948;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlockAndWait:v7];
}

void __61__STAdminPersistenceController_performBackgroundTaskAndWait___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) viewContext];
    (*(v1 + 16))(v1, v2);
  }
}

- (id)newBackgroundContext
{
  v2 = [(STPersistenceController *)self persistentContainer];
  v3 = [v2 newBackgroundContext];

  [v3 setMergePolicy:*MEMORY[0x1E695D370]];
  return v3;
}

- (id)viewContext
{
  v2 = [(STPersistenceController *)self persistentContainer];
  v3 = [v2 viewContext];

  [v3 setAutomaticallyMergesChangesFromParent:1];
  [v3 setMergePolicy:*MEMORY[0x1E695D370]];

  return v3;
}

- (void)saveContext:(uint64_t *)a1 error:(NSObject *)a2 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "ManagedObjectContext save failed. Error reported when running ConsistencyChecker: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end