@interface PFPosterExtensionProvider
+ (id)extensionKitQuery;
+ (id)extensionWithBundleIdentifier:(id)identifier;
- (BOOL)_lock_updateExtensions;
- (BOOL)_lock_updateExtensions:(id)extensions;
- (BOOL)hasPosterExtensions;
- (BOOL)reloadExtensions;
- (NSArray)knownPosterExtensions;
- (NSDictionary)extensionForIdentifier;
- (NSPredicate)predicate;
- (NSSet)supportedRoles;
- (PFPosterExtensionInstancePool)instancePool;
- (PFPosterExtensionProvider)initWithDefaultInstanceIdentifier:(id)identifier;
- (id)_lock_buildQuery;
- (id)acquireInstanceForExtensionWithIdentifier:(id)identifier reason:(id)reason error:(id *)error;
- (void)_lock_executeCancellationAndRestartIfAlreadyStarted:(BOOL)started;
- (void)_lock_executeQuery;
- (void)_lock_notifyDataStoreOfUpdatedExtensions:(id)extensions fromExtensions:(id)fromExtensions;
- (void)_lock_startWithImmediateQueryExecution:(BOOL)execution;
- (void)_lock_teardownQueryController;
- (void)addObserver:(id)observer;
- (void)cancel;
- (void)queryControllerDidUpdate:(id)update resultDifference:(id)difference;
- (void)relinquishExtensionInstanceWithIdentifier:(id)identifier reason:(id)reason;
- (void)removeObserver:(id)observer;
- (void)setPredicate:(id)predicate;
- (void)setSupportedRoles:(id)roles;
@end

@implementation PFPosterExtensionProvider

+ (id)extensionWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  extensionKitQuery = [self extensionKitQuery];
  v6 = [MEMORY[0x1E6966CF8] executeQuery:extensionKitQuery];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PFPosterExtensionProvider_extensionWithBundleIdentifier___block_invoke;
  v10[3] = &unk_1E8189898;
  v7 = identifierCopy;
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

- (PFPosterExtensionProvider)initWithDefaultInstanceIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = PFPosterExtensionProvider;
  v5 = [(PFPosterExtensionProvider *)&v18 init];
  if (v5)
  {
    v6 = [PFWorkloop serialQueueTargetingSharedWorkloop:@"com.apple.PosterFoundation.extensionProvider.observerQueue"];
    [(PFPosterExtensionProvider *)v5 setObserverQueue:v6];

    v7 = [[PFPosterExtensionInstanceProvider alloc] initWithDefaultInstanceIdentifier:identifierCopy];
    instanceProvider = v5->_instanceProvider;
    v5->_instanceProvider = v7;

    v5->_lock._os_unfair_lock_opaque = 0;
    v9 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    lock_predicate = v5->_lock_predicate;
    v5->_lock_predicate = v9;

    v11 = PFPosterRolesSupportedForCurrentDeviceClass();
    lock_supportedRoles = v5->_lock_supportedRoles;
    v5->_lock_supportedRoles = v11;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_observers = v5->_lock_observers;
    v5->_lock_observers = weakObjectsHashTable;

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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

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
    selfCopy = self;
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
    selfCopy = self;
    _os_log_impl(&dword_1C269D000, v3, OS_LOG_TYPE_DEFAULT, "(%p) reloadExtensions", &v7, 0xCu);
  }

  _lock_updateExtensions = [(PFPosterExtensionProvider *)self _lock_updateExtensions];
  os_unfair_lock_unlock(&self->_lock);
  v5 = *MEMORY[0x1E69E9840];
  return _lock_updateExtensions;
}

- (NSArray)knownPosterExtensions
{
  extensionForIdentifier = [(PFPosterExtensionProvider *)self extensionForIdentifier];
  allValues = [extensionForIdentifier allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_8];

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
    selfCopy = self;
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

- (void)setSupportedRoles:(id)roles
{
  v14 = *MEMORY[0x1E69E9840];
  rolesCopy = roles;
  if (!rolesCopy)
  {
    rolesCopy = PFPosterRolesSupportedForCurrentDeviceClass();
  }

  os_unfair_lock_lock(&self->_lock);
  if (([(NSSet *)self->_lock_supportedRoles isEqual:rolesCopy]& 1) == 0)
  {
    v5 = [rolesCopy copy];
    lock_supportedRoles = self->_lock_supportedRoles;
    self->_lock_supportedRoles = v5;

    lock_rolePredicate = self->_lock_rolePredicate;
    self->_lock_rolePredicate = 0;

    v8 = PFLogExtensions();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218242;
      selfCopy = self;
      v12 = 2114;
      v13 = rolesCopy;
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

- (void)setPredicate:(id)predicate
{
  v13 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  if (!predicateCopy)
  {
    predicateCopy = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = PFLogExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    selfCopy = self;
    v11 = 2114;
    v12 = predicateCopy;
    _os_log_impl(&dword_1C269D000, v5, OS_LOG_TYPE_DEFAULT, "(%p) updating predicate:%{public}@", &v9, 0x16u);
  }

  if (self->_lock_started)
  {
    [(PFPosterExtensionProvider *)self _lock_executeCancellationAndRestartIfAlreadyStarted:0];
    self->_lock_started = 0;
    lock_predicate = self->_lock_predicate;
    self->_lock_predicate = predicateCopy;

    [(PFPosterExtensionProvider *)self _lock_startWithImmediateQueryExecution:1];
  }

  else
  {
    v7 = self->_lock_predicate;
    self->_lock_predicate = predicateCopy;
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

- (id)acquireInstanceForExtensionWithIdentifier:(id)identifier reason:(id)reason error:(id *)error
{
  reasonCopy = reason;
  identifierCopy = identifier;
  extensionForIdentifier = [(PFPosterExtensionProvider *)self extensionForIdentifier];
  v11 = [extensionForIdentifier objectForKey:identifierCopy];

  instanceProvider = [(PFPosterExtensionProvider *)self instanceProvider];
  v13 = [instanceProvider acquireInstanceForExtension:v11 reason:reasonCopy error:error];

  return v13;
}

- (void)relinquishExtensionInstanceWithIdentifier:(id)identifier reason:(id)reason
{
  reasonCopy = reason;
  identifierCopy = identifier;
  extensionForIdentifier = [(PFPosterExtensionProvider *)self extensionForIdentifier];
  v8 = [extensionForIdentifier objectForKey:identifierCopy];

  instanceProvider = [(PFPosterExtensionProvider *)self instanceProvider];
  v10 = [instanceProvider instanceForExtension:v8 reason:reasonCopy];

  if (v10)
  {
    instanceProvider2 = [(PFPosterExtensionProvider *)self instanceProvider];
    [instanceProvider2 relinquishExtensionInstance:v10 reason:reasonCopy];
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

- (void)_lock_startWithImmediateQueryExecution:(BOOL)execution
{
  executionCopy = execution;
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_lock_started)
  {
    v5 = PFLogExtensions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1C269D000, v5, OS_LOG_TYPE_DEFAULT, "(%p) _lock_startWithImmediateQueryExecution", buf, 0xCu);
    }

    if (!self->_lock_queries)
    {
      _lock_buildQuery = [(PFPosterExtensionProvider *)self _lock_buildQuery];
      v12 = _lock_buildQuery;
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

  if (executionCopy)
  {
    [(PFPosterExtensionProvider *)self _lock_executeQuery];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_lock_buildQuery
{
  extensionKitQuery = [objc_opt_class() extensionKitQuery];
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

  [extensionKitQuery setPredicate:v10];

  return extensionKitQuery;
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
    selfCopy = self;
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

- (void)_lock_executeCancellationAndRestartIfAlreadyStarted:(BOOL)started
{
  startedCopy = started;
  v12 = *MEMORY[0x1E69E9840];
  v5 = PFLogExtensions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    selfCopy = self;
    v10 = 1024;
    v11 = startedCopy;
    _os_log_impl(&dword_1C269D000, v5, OS_LOG_TYPE_DEFAULT, "(%p) _lock_executeCancellationAndRestartIfAlreadyStarted:%{BOOL}u", &v8, 0x12u);
  }

  [(PFPosterExtensionProvider *)self _lock_teardownQueryController];
  lock_started = self->_lock_started;
  self->_lock_started = 0;
  if (startedCopy && lock_started)
  {
    [(PFPosterExtensionProvider *)self _lock_startWithImmediateQueryExecution:1];
  }

  [(PFPosterExtensionInstanceProvider *)self->_instanceProvider cancel];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)queryControllerDidUpdate:(id)update resultDifference:(id)difference
{
  v25 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  differenceCopy = difference;
  os_unfair_lock_lock(&self->_lock);
  lock_queryController = self->_lock_queryController;
  v9 = PFLogExtensions();
  v10 = v9;
  if (lock_queryController == updateCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218498;
      selfCopy2 = self;
      v19 = 2112;
      v20 = updateCopy;
      v21 = 2112;
      v22 = differenceCopy;
      _os_log_impl(&dword_1C269D000, v10, OS_LOG_TYPE_DEFAULT, "(%p) queryControllerDidUpdate:%@ resultDifference:%@", &v17, 0x20u);
    }

    v12 = MEMORY[0x1E695DFD8];
    extensionIdentities = [(_EXQueryController *)updateCopy extensionIdentities];
    v10 = extensionIdentities;
    if (extensionIdentities)
    {
      v14 = extensionIdentities;
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
    selfCopy2 = self;
    v19 = 2112;
    v20 = updateCopy;
    v21 = 2112;
    v22 = differenceCopy;
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
  _lock_buildQuery = [(PFPosterExtensionProvider *)self _lock_buildQuery];
  v5 = [v3 executeQuery:_lock_buildQuery];

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
    selfCopy = self;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1C269D000, v9, OS_LOG_TYPE_DEFAULT, "(%p) didUpdateExtensions:%{BOOL}u", &v12, 0x12u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_lock_updateExtensions:(id)extensions
{
  v64 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  if ([extensionsCopy count])
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v6 = [(NSDictionary *)self->_lock_extensionByProvider copy];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v46 = v6;
    allValues = [v6 allValues];
    v8 = [allValues countByEnumeratingWithState:&v54 objects:v63 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v12 = *(*(&v54 + 1) + 8 * i);
          identity = [v12 identity];
          [weakToWeakObjectsMapTable setObject:v12 forKey:identity];
        }

        v9 = [allValues countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v9);
    }

    v14 = MEMORY[0x1E695DFD8];
    allValues2 = [v46 allValues];
    v45 = [v14 setWithArray:allValues2];

    v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(extensionsCopy, "count")}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v44 = extensionsCopy;
    v16 = extensionsCopy;
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
            selfCopy10 = self;
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
            selfCopy10 = self;
            v60 = 2112;
            v61 = v21;
            v27 = v23;
            v28 = "(%p) Role Predicate rejected extension identity %@";
            goto LABEL_26;
          }

          if (v24)
          {
            *buf = 134218242;
            selfCopy10 = self;
            v60 = 2112;
            v61 = v21;
            _os_log_impl(&dword_1C269D000, v23, OS_LOG_TYPE_DEFAULT, "(%p) Examining extension identity %@", buf, 0x16u);
          }

          v25 = [weakToWeakObjectsMapTable objectForKey:v21];
          if (v25)
          {
            v23 = v25;
            v26 = PFLogExtensions();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              selfCopy10 = self;
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
            selfCopy10 = self;
            v60 = 2112;
            v61 = v21;
            _os_log_impl(&dword_1C269D000, v29, OS_LOG_TYPE_DEFAULT, "(%p) Failed to add new extension wrapper: %@; PFPosterExtension unable to create extension", buf, 0x16u);
          }

          v23 = PFLogExtensions();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            selfCopy10 = self;
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
        selfCopy10 = self;
        _os_log_impl(&dword_1C269D000, v35, OS_LOG_TYPE_DEFAULT, "(%p) Extension update received; no updates found.", buf, 0xCu);
      }

      extensionsCopy = v44;
    }

    else
    {
      if (v36)
      {
        *buf = 134217984;
        selfCopy10 = self;
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
        selfCopy10 = self;
        _os_log_impl(&dword_1C269D000, v41, OS_LOG_TYPE_DEFAULT, "(%p) Extension update complete", buf, 0xCu);
      }

      extensionsCopy = v44;
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
      selfCopy10 = self;
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

- (void)_lock_notifyDataStoreOfUpdatedExtensions:(id)extensions fromExtensions:(id)fromExtensions
{
  v36 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  fromExtensionsCopy = fromExtensions;
  v7 = PFLogExtensions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy3 = self;
    v32 = 2048;
    v33 = [extensionsCopy count];
    v34 = 2112;
    v35 = extensionsCopy;
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
      selfCopy3 = self;
      v32 = 2112;
      v33 = extensionsCopy;
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
          observerQueue = [(PFPosterExtensionProvider *)self observerQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __85__PFPosterExtensionProvider__lock_notifyDataStoreOfUpdatedExtensions_fromExtensions___block_invoke;
          block[3] = &unk_1E8189930;
          block[4] = v15;
          block[5] = self;
          v23 = extensionsCopy;
          v24 = fromExtensionsCopy;
          dispatch_async(observerQueue, block);
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
    selfCopy3 = self;
    v32 = 2112;
    v33 = extensionsCopy;
    _os_log_impl(&dword_1C269D000, log, OS_LOG_TYPE_DEFAULT, "(%p) Observers were not set; Poster Extensions were updated: %@", buf, 0x16u);
  }

  instanceProvider = [(PFPosterExtensionProvider *)self instanceProvider];
  [instanceProvider noteExtensionsWereUpdated:extensionsCopy];

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