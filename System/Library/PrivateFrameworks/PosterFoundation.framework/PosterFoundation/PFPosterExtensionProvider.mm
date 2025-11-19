@interface PFPosterExtensionProvider
+ (id)extensionKitQuery;
+ (id)extensionWithBundleIdentifier:(id)a3;
- (BOOL)_lock_updateExtensions;
- (BOOL)_lock_updateExtensions:(id)a3;
- (BOOL)hasPosterExtensions;
- (BOOL)reloadExtensions;
- (NSArray)knownPosterExtensions;
- (NSDictionary)extensionForIdentifier;
- (NSPredicate)predicate;
- (NSSet)supportedRoles;
- (PFPosterExtensionInstancePool)instancePool;
- (PFPosterExtensionProvider)initWithDefaultInstanceIdentifier:(id)a3;
- (id)_lock_buildQuery;
- (id)acquireInstanceForExtensionWithIdentifier:(id)a3 reason:(id)a4 error:(id *)a5;
- (void)_lock_executeCancellationAndRestartIfAlreadyStarted:(BOOL)a3;
- (void)_lock_executeQuery;
- (void)_lock_notifyDataStoreOfUpdatedExtensions:(id)a3 fromExtensions:(id)a4;
- (void)_lock_startWithImmediateQueryExecution:(BOOL)a3;
- (void)_lock_teardownQueryController;
- (void)addObserver:(id)a3;
- (void)cancel;
- (void)queryControllerDidUpdate:(id)a3 resultDifference:(id)a4;
- (void)relinquishExtensionInstanceWithIdentifier:(id)a3 reason:(id)a4;
- (void)removeObserver:(id)a3;
- (void)setPredicate:(id)a3;
- (void)setSupportedRoles:(id)a3;
@end

@implementation PFPosterExtensionProvider

+ (id)extensionWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v5 = [a1 extensionKitQuery];
  v6 = [MEMORY[0x1E6966CF8] executeQuery:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PFPosterExtensionProvider_extensionWithBundleIdentifier___block_invoke;
  v10[3] = &unk_1E8189898;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __59__PFPosterExtensionProvider_extensionWithBundleIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 bundleIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    v8 = [PFPosterExtension extensionWithIdentity:v11];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

+ (id)extensionKitQuery
{
  v2 = [objc_alloc(MEMORY[0x1E6966CE0]) initWithExtensionPointIdentifier:@"com.apple.posterkit.provider"];

  return v2;
}

- (PFPosterExtensionProvider)initWithDefaultInstanceIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PFPosterExtensionProvider;
  v5 = [(PFPosterExtensionProvider *)&v18 init];
  if (v5)
  {
    v6 = [PFWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.PosterFoundation.extensionProvider.observerQueue"];
    [(PFPosterExtensionProvider *)v5 setObserverQueue:v6];

    v7 = [[PFPosterExtensionInstanceProvider alloc] initWithDefaultInstanceIdentifier:v4];
    instanceProvider = v5->_instanceProvider;
    v5->_instanceProvider = v7;

    v5->_lock._os_unfair_lock_opaque = 0;
    v9 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    lock_predicate = v5->_lock_predicate;
    v5->_lock_predicate = v9;

    v11 = PFPosterRolesSupportedForCurrentDeviceClass();
    lock_supportedRoles = v5->_lock_supportedRoles;
    v5->_lock_supportedRoles = v11;

    v13 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_observers = v5->_lock_observers;
    v5->_lock_observers = v13;

    v15 = PFLogExtensions();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = v5;
      _os_log_impl(&dword_1C269D000, v15, OS_LOG_TYPE_DEFAULT, "(%p) init", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = PFLogExtensions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_1C269D000, v3, OS_LOG_TYPE_DEFAULT, "(%p) cancel", &v5, 0xCu);
  }

  [(PFPosterExtensionProvider *)self _lock_executeCancellationAndRestartIfAlreadyStarted:0];
  os_unfair_lock_unlock(&self->_lock);
  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)reloadExtensions
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = PFLogExtensions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = self;
    _os_log_impl(&dword_1C269D000, v3, OS_LOG_TYPE_DEFAULT, "(%p) reloadExtensions", &v7, 0xCu);
  }

  v4 = [(PFPosterExtensionProvider *)self _lock_updateExtensions];
  os_unfair_lock_unlock(&self->_lock);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (NSArray)knownPosterExtensions
{
  v2 = [(PFPosterExtensionProvider *)self extensionForIdentifier];
  v3 = [v2 allValues];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_8];

  return v4;
}

uint64_t __50__PFPosterExtensionProvider_knownPosterExtensions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 posterExtensionBundleIdentifier];
  v6 = [v4 posterExtensionBundleIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)hasPosterExtensions
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_lock_extensionByProvider count];
  os_unfair_lock_unlock(&self->_lock);
  v4 = PFLogExtensions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = self;
    v9 = 1024;
    v10 = v3 != 0;
    _os_log_impl(&dword_1C269D000, v4, OS_LOG_TYPE_DEFAULT, "(%p) hasPosterExtensions:%{BOOL}u", &v7, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3 != 0;
}

- (NSDictionary)extensionForIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSDictionary *)self->_lock_extensionByProvider copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)supportedRoles
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_lock_supportedRoles copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSupportedRoles:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v4 = PFPosterRolesSupportedForCurrentDeviceClass();
  }

  os_unfair_lock_lock(&self->_lock);
  if (([(NSSet *)self->_lock_supportedRoles isEqual:v4]& 1) == 0)
  {
    v5 = [v4 copy];
    lock_supportedRoles = self->_lock_supportedRoles;
    self->_lock_supportedRoles = v5;

    lock_rolePredicate = self->_lock_rolePredicate;
    self->_lock_rolePredicate = 0;

    v8 = PFLogExtensions();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218242;
      v11 = self;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1C269D000, v8, OS_LOG_TYPE_DEFAULT, "(%p) updating supported roles:%{public}@", &v10, 0x16u);
    }

    if (self->_lock_started)
    {
      [(PFPosterExtensionProvider *)self _lock_teardownQueryController];
      self->_lock_started = 0;
      [(PFPosterExtensionProvider *)self _lock_startWithImmediateQueryExecution:1];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setPredicate:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = PFLogExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = self;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1C269D000, v5, OS_LOG_TYPE_DEFAULT, "(%p) updating predicate:%{public}@", &v9, 0x16u);
  }

  if (self->_lock_started)
  {
    [(PFPosterExtensionProvider *)self _lock_executeCancellationAndRestartIfAlreadyStarted:0];
    self->_lock_started = 0;
    lock_predicate = self->_lock_predicate;
    self->_lock_predicate = v4;

    [(PFPosterExtensionProvider *)self _lock_startWithImmediateQueryExecution:1];
  }

  else
  {
    v7 = self->_lock_predicate;
    self->_lock_predicate = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = *MEMORY[0x1E69E9840];
}

- (NSPredicate)predicate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_predicate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (PFPosterExtensionInstancePool)instancePool
{
  instancePool = self->_instancePool;
  if (!instancePool)
  {
    v4 = [[PFPosterExtensionInstancePool alloc] initWithExtensionProvider:self poolEntryToRelinquishTime:5.0];
    v5 = self->_instancePool;
    self->_instancePool = v4;

    instancePool = self->_instancePool;
  }

  return instancePool;
}

- (id)acquireInstanceForExtensionWithIdentifier:(id)a3 reason:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(PFPosterExtensionProvider *)self extensionForIdentifier];
  v11 = [v10 objectForKey:v9];

  v12 = [(PFPosterExtensionProvider *)self instanceProvider];
  v13 = [v12 acquireInstanceForExtension:v11 reason:v8 error:a5];

  return v13;
}

- (void)relinquishExtensionInstanceWithIdentifier:(id)a3 reason:(id)a4
{
  v12 = a4;
  v6 = a3;
  v7 = [(PFPosterExtensionProvider *)self extensionForIdentifier];
  v8 = [v7 objectForKey:v6];

  v9 = [(PFPosterExtensionProvider *)self instanceProvider];
  v10 = [v9 instanceForExtension:v8 reason:v12];

  if (v10)
  {
    v11 = [(PFPosterExtensionProvider *)self instanceProvider];
    [v11 relinquishExtensionInstance:v10 reason:v12];
  }
}

- (void)_lock_executeQuery
{
  if (self->_lock_started)
  {
    v5 = [MEMORY[0x1E6966CF8] executeQueries:self->_lock_queries];
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    [(PFPosterExtensionProvider *)self _lock_updateExtensions:v4];
  }
}

- (void)_lock_startWithImmediateQueryExecution:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_lock_started)
  {
    v5 = PFLogExtensions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = self;
      _os_log_impl(&dword_1C269D000, v5, OS_LOG_TYPE_DEFAULT, "(%p) _lock_startWithImmediateQueryExecution", buf, 0xCu);
    }

    if (!self->_lock_queries)
    {
      v6 = [(PFPosterExtensionProvider *)self _lock_buildQuery];
      v12 = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
      lock_queries = self->_lock_queries;
      self->_lock_queries = v7;
    }

    if (!self->_lock_queryController)
    {
      v9 = [objc_alloc(MEMORY[0x1E6966CF8]) initWithQueries:self->_lock_queries delegate:self];
      lock_queryController = self->_lock_queryController;
      self->_lock_queryController = v9;

      [(_EXQueryController *)self->_lock_queryController setDelegate:self];
      [(_EXQueryController *)self->_lock_queryController resume];
    }

    self->_lock_started = 1;
  }

  if (v3)
  {
    [(PFPosterExtensionProvider *)self _lock_executeQuery];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_lock_buildQuery
{
  v3 = [objc_opt_class() extensionKitQuery];
  v4 = objc_opt_new();
  [v4 bs_safeAddObject:self->_lock_predicate];
  if (!self->_lock_rolePredicate)
  {
    v5 = self->_lock_supportedRoles;
    v6 = MEMORY[0x1E696AE18];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__PFPosterExtensionProvider__lock_buildQuery__block_invoke;
    v12[3] = &unk_1E81898E0;
    v13 = v5;
    v7 = v5;
    v8 = [v6 predicateWithBlock:v12];
    lock_rolePredicate = self->_lock_rolePredicate;
    self->_lock_rolePredicate = v8;

    [v4 addObject:self->_lock_rolePredicate];
  }

  if ([v4 count])
  {
    v10 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];
  }

  else
  {
    v10 = 0;
  }

  [v3 setPredicate:v10];

  return v3;
}

uint64_t __45__PFPosterExtensionProvider__lock_buildQuery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 applicationExtensionRecord];
  v5 = [v4 infoDictionary];

  v6 = *MEMORY[0x1E695E4F0];
  v7 = objc_opt_self();
  v8 = [v5 objectForKey:v6 ofClass:v7];

  if (v8)
  {
    v9 = [v5 pf_supportedRoles];
  }

  else
  {
    v10 = [v3 applicationExtensionRecord];
    v11 = PFRoleProviderForLSApplicationExtensionRecord(v10);
    v9 = [v11 pf_supportedRoles];
  }

  v12 = [*(a1 + 32) intersectsSet:v9];

  return v12;
}

- (void)_lock_teardownQueryController
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PFLogExtensions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = self;
    _os_log_impl(&dword_1C269D000, v3, OS_LOG_TYPE_DEFAULT, "(%p) teardownQueryController", &v7, 0xCu);
  }

  lock_queries = self->_lock_queries;
  self->_lock_queries = 0;

  [(_EXQueryController *)self->_lock_queryController setDelegate:0];
  [(_EXQueryController *)self->_lock_queryController suspend];
  lock_queryController = self->_lock_queryController;
  self->_lock_queryController = 0;

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_lock_executeCancellationAndRestartIfAlreadyStarted:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = PFLogExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = self;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_1C269D000, v5, OS_LOG_TYPE_DEFAULT, "(%p) _lock_executeCancellationAndRestartIfAlreadyStarted:%{BOOL}u", &v8, 0x12u);
  }

  [(PFPosterExtensionProvider *)self _lock_teardownQueryController];
  lock_started = self->_lock_started;
  self->_lock_started = 0;
  if (v3 && lock_started)
  {
    [(PFPosterExtensionProvider *)self _lock_startWithImmediateQueryExecution:1];
  }

  [(PFPosterExtensionInstanceProvider *)self->_instanceProvider cancel];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)queryControllerDidUpdate:(id)a3 resultDifference:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  lock_queryController = self->_lock_queryController;
  v9 = PFLogExtensions();
  v10 = v9;
  if (lock_queryController == v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218498;
      v18 = self;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1C269D000, v10, OS_LOG_TYPE_DEFAULT, "(%p) queryControllerDidUpdate:%@ resultDifference:%@", &v17, 0x20u);
    }

    v12 = MEMORY[0x1E695DFD8];
    v13 = [(_EXQueryController *)v6 extensionIdentities];
    v10 = v13;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    v15 = [v12 setWithArray:v14];
    [(PFPosterExtensionProvider *)self _lock_updateExtensions:v15];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = self->_lock_queryController;
    v17 = 134218754;
    v18 = self;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v11;
    _os_log_error_impl(&dword_1C269D000, v10, OS_LOG_TYPE_ERROR, "(%p) ignoring imposter queryControllerDidUpdate:%@ resultDifference:%@ - My controller is %@", &v17, 0x2Au);
  }

  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)_lock_updateExtensions
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6966CF8];
  v4 = [(PFPosterExtensionProvider *)self _lock_buildQuery];
  v5 = [v3 executeQuery:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  v8 = [(PFPosterExtensionProvider *)self _lock_updateExtensions:v7];

  v9 = PFLogExtensions();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218240;
    v13 = self;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1C269D000, v9, OS_LOG_TYPE_DEFAULT, "(%p) didUpdateExtensions:%{BOOL}u", &v12, 0x12u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_lock_updateExtensions:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v6 = [(NSDictionary *)self->_lock_extensionByProvider copy];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v46 = v6;
    v7 = [v6 allValues];
    v8 = [v7 countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v55;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v55 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v54 + 1) + 8 * i);
          v13 = [v12 identity];
          [v5 setObject:v12 forKey:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v9);
    }

    v14 = MEMORY[0x1E695DFD8];
    v15 = [v46 allValues];
    v45 = [v14 setWithArray:v15];

    v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v44 = v4;
    v16 = v4;
    v17 = [v16 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v51;
      do
      {
        v20 = 0;
        do
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v50 + 1) + 8 * v20);
          if (![(NSPredicate *)self->_lock_predicate evaluateWithObject:v21, v44])
          {
            v23 = PFLogExtensions();
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_29;
            }

            *buf = 134218242;
            v59 = self;
            v60 = 2112;
            v61 = v21;
            v27 = v23;
            v28 = "(%p) Predicate rejected extension identity %@";
LABEL_26:
            _os_log_impl(&dword_1C269D000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0x16u);
            goto LABEL_29;
          }

          v22 = [(NSPredicate *)self->_lock_rolePredicate evaluateWithObject:v21];
          v23 = PFLogExtensions();
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if (!v22)
          {
            if (!v24)
            {
              goto LABEL_29;
            }

            *buf = 134218242;
            v59 = self;
            v60 = 2112;
            v61 = v21;
            v27 = v23;
            v28 = "(%p) Role Predicate rejected extension identity %@";
            goto LABEL_26;
          }

          if (v24)
          {
            *buf = 134218242;
            v59 = self;
            v60 = 2112;
            v61 = v21;
            _os_log_impl(&dword_1C269D000, v23, OS_LOG_TYPE_DEFAULT, "(%p) Examining extension identity %@", buf, 0x16u);
          }

          v25 = [v5 objectForKey:v21];
          if (v25)
          {
            v23 = v25;
            v26 = PFLogExtensions();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v59 = self;
              v60 = 2112;
              v61 = v21;
              _os_log_impl(&dword_1C269D000, v26, OS_LOG_TYPE_DEFAULT, "(%p) Extension identity %@ already tracked", buf, 0x16u);
            }

LABEL_28:
            [v47 addObject:v23];
            goto LABEL_29;
          }

          v23 = [PFPosterExtension extensionWithIdentity:v21];
          if (v23)
          {
            goto LABEL_28;
          }

          v29 = PFLogExtensions();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v59 = self;
            v60 = 2112;
            v61 = v21;
            _os_log_impl(&dword_1C269D000, v29, OS_LOG_TYPE_DEFAULT, "(%p) Failed to add new extension wrapper: %@; PFPosterExtension unable to create extension", buf, 0x16u);
          }

          v23 = PFLogExtensions();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            v59 = self;
            v60 = 2112;
            v61 = v21;
            _os_log_error_impl(&dword_1C269D000, v23, OS_LOG_TYPE_ERROR, "(%p) Extension identity %@ could not be used to create a PFPosterExtension. Bailing.", buf, 0x16u);
          }

LABEL_29:

          ++v20;
        }

        while (v18 != v20);
        v30 = [v16 countByEnumeratingWithState:&v50 objects:v62 count:16];
        v18 = v30;
      }

      while (v30);
    }

    v31 = [v47 copy];
    v32 = [MEMORY[0x1E695DFD8] setWithArray:v31];
    v33 = v45;
    v34 = [v45 isEqual:v32];
    v35 = PFLogExtensions();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (v34)
    {
      if (v36)
      {
        *buf = 134217984;
        v59 = self;
        _os_log_impl(&dword_1C269D000, v35, OS_LOG_TYPE_DEFAULT, "(%p) Extension update received; no updates found.", buf, 0xCu);
      }

      v4 = v44;
    }

    else
    {
      if (v36)
      {
        *buf = 134217984;
        v59 = self;
        _os_log_impl(&dword_1C269D000, v35, OS_LOG_TYPE_DEFAULT, "(%p) Extension update received; pushing out updates", buf, 0xCu);
      }

      v38 = objc_opt_new();
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __52__PFPosterExtensionProvider__lock_updateExtensions___block_invoke;
      v48[3] = &unk_1E8189908;
      v35 = v38;
      v49 = v35;
      [v31 enumerateObjectsUsingBlock:v48];
      v39 = [v35 copy];
      lock_extensionByProvider = self->_lock_extensionByProvider;
      self->_lock_extensionByProvider = v39;

      [(PFPosterExtensionProvider *)self _lock_notifyDataStoreOfUpdatedExtensions:v32 fromExtensions:v45];
      v41 = PFLogExtensions();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v59 = self;
        _os_log_impl(&dword_1C269D000, v41, OS_LOG_TYPE_DEFAULT, "(%p) Extension update complete", buf, 0xCu);
      }

      v4 = v44;
      v33 = v45;
    }

    v37 = v34 ^ 1;
  }

  else
  {
    v33 = PFLogExtensions();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v59 = self;
      _os_log_impl(&dword_1C269D000, v33, OS_LOG_TYPE_DEFAULT, "(%p) Rejecting updateExtensions; no extensions received.", buf, 0xCu);
    }

    v37 = 0;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v37;
}

void __52__PFPosterExtensionProvider__lock_updateExtensions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 posterExtensionBundleIdentifier];
  [v2 setObject:v3 forKey:v4];
}

- (void)_lock_notifyDataStoreOfUpdatedExtensions:(id)a3 fromExtensions:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21 = a4;
  v7 = PFLogExtensions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v31 = self;
    v32 = 2048;
    v33 = [v6 count];
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_1C269D000, v7, OS_LOG_TYPE_DEFAULT, "(%p) Extensions updated; Received %lu extensions: %@", buf, 0x20u);
  }

  v8 = self->_lock_observers;
  v9 = [(NSHashTable *)v8 count];
  log = PFLogExtensions();
  v10 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v10)
    {
      *buf = 134218242;
      v31 = self;
      v32 = 2112;
      v33 = v6;
      _os_log_impl(&dword_1C269D000, log, OS_LOG_TYPE_DEFAULT, "(%p) Notifying delegate of updated Poster Extensions %@", buf, 0x16u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    log = v8;
    v11 = [log countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v19 = v8;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(log);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [(PFPosterExtensionProvider *)self observerQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __85__PFPosterExtensionProvider__lock_notifyDataStoreOfUpdatedExtensions_fromExtensions___block_invoke;
          block[3] = &unk_1E8189930;
          block[4] = v15;
          block[5] = self;
          v23 = v6;
          v24 = v21;
          dispatch_async(v16, block);
        }

        v12 = [log countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
      v8 = v19;
    }
  }

  else if (v10)
  {
    *buf = 134218242;
    v31 = self;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_1C269D000, log, OS_LOG_TYPE_DEFAULT, "(%p) Observers were not set; Poster Extensions were updated: %@", buf, 0x16u);
  }

  v17 = [(PFPosterExtensionProvider *)self instanceProvider];
  [v17 noteExtensionsWereUpdated:v6];

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __85__PFPosterExtensionProvider__lock_notifyDataStoreOfUpdatedExtensions_fromExtensions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) bs_array];
    v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_25];
    [v3 posterExtensionProvider:v4 foundExtensions:v6];
  }

  v7 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    v11 = *(a1 + 56);

    return [v9 posterExtensionProvider:v10 updatedExtensionsFrom:v11 to:v12];
  }

  return result;
}

uint64_t __85__PFPosterExtensionProvider__lock_notifyDataStoreOfUpdatedExtensions_fromExtensions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 posterExtensionBundleIdentifier];
  v6 = [v4 posterExtensionBundleIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

@end