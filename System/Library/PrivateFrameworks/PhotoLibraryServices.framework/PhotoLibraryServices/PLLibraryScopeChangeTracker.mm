@interface PLLibraryScopeChangeTracker
- (BOOL)start;
- (PLLibraryScopeChangeTracker)initWithManagedObjectContext:(id)context;
- (PLLibraryScopeChangeTrackerDelegate)delegate;
- (id)_allowedPropertyDescriptionsForEntityName:(id)name;
- (id)_transactionIteratorSinceToken:(id)token;
- (id)currentToken;
- (id)fetchObjectsNeedingEvaluation;
- (id)fetchResultsSincePersistentHistoryToken:(id)token;
- (id)lastKnownTokenFromDisk;
- (void)clearToken;
- (void)saveLastKnownChangeTrackerTokenToDisk;
- (void)updateLastKnownTokenToResult:(id)result;
@end

@implementation PLLibraryScopeChangeTracker

- (PLLibraryScopeChangeTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateLastKnownTokenToResult:(id)result
{
  v10 = *MEMORY[0x1E69E9840];
  lastProcessedCoreDataToken = [result lastProcessedCoreDataToken];
  v5 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = lastProcessedCoreDataToken;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Updating last known tokens from result token: %@", &v8, 0xCu);
  }

  if (lastProcessedCoreDataToken)
  {
    v6 = [lastProcessedCoreDataToken copy];
    lastKnownToken = self->_lastKnownToken;
    self->_lastKnownToken = v6;
  }

  [(PLLibraryScopeChangeTracker *)self saveLastKnownChangeTrackerTokenToDisk];
}

- (id)_allowedPropertyDescriptionsForEntityName:(id)name
{
  v35[2] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  entityNameToAllowedPropertyDescriptionMap = self->_entityNameToAllowedPropertyDescriptionMap;
  if (!entityNameToAllowedPropertyDescriptionMap)
  {
    v6 = MEMORY[0x1E695D5B8];
    v7 = +[PLManagedAsset entityName];
    v8 = [v6 entityForName:v7 inManagedObjectContext:self->_context];

    v9 = MEMORY[0x1E695D5B8];
    v10 = +[PLDetectedFace entityName];
    v23 = [v9 entityForName:v10 inManagedObjectContext:self->_context];

    v31 = +[PLManagedAsset entityName];
    v34[0] = v31;
    propertiesByName = [v8 propertiesByName];
    v29 = [propertiesByName valueForKey:@"locationData"];
    v33[0] = v29;
    propertiesByName2 = [v8 propertiesByName];
    v27 = [propertiesByName2 valueForKey:@"longitude"];
    v33[1] = v27;
    propertiesByName3 = [v8 propertiesByName];
    v25 = [propertiesByName3 valueForKey:@"latitude"];
    v33[2] = v25;
    propertiesByName4 = [v8 propertiesByName];
    v22 = [propertiesByName4 valueForKey:@"detectedFaces"];
    v33[3] = v22;
    propertiesByName5 = [v8 propertiesByName];
    v12 = [propertiesByName5 valueForKey:@"addedDate"];
    v33[4] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
    v35[0] = v13;
    v14 = +[PLDetectedFace entityName];
    v34[1] = v14;
    propertiesByName6 = [v23 propertiesByName];
    v16 = [propertiesByName6 valueForKey:@"personForFace"];
    v32 = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    v35[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v19 = self->_entityNameToAllowedPropertyDescriptionMap;
    self->_entityNameToAllowedPropertyDescriptionMap = v18;

    entityNameToAllowedPropertyDescriptionMap = self->_entityNameToAllowedPropertyDescriptionMap;
  }

  v20 = [(NSDictionary *)entityNameToAllowedPropertyDescriptionMap objectForKeyedSubscript:nameCopy];

  return v20;
}

- (id)_transactionIteratorSinceToken:(id)token
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695D5E0];
  tokenCopy = token;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E695D690] entityDescriptionWithContext:self->_context];
  [v6 setEntity:v7];
  v8 = MEMORY[0x1E695D5B8];
  v9 = +[PLManagedAsset entityName];
  v10 = [v8 entityForName:v9 inManagedObjectContext:self->_context];

  v11 = MEMORY[0x1E695D5B8];
  v12 = +[PLDetectedFace entityName];
  v13 = [v11 entityForName:v12 inManagedObjectContext:self->_context];

  propertiesByName = [v7 propertiesByName];
  v15 = [propertiesByName valueForKey:@"changedEntity"];

  v16 = MEMORY[0x1E696AE18];
  name = [v15 name];
  name2 = [v15 name];
  v19 = [v16 predicateWithFormat:@"%K = %@ OR %K = %@", name, v10, name2, v13];
  [v6 setPredicate:v19];

  v20 = [PLPersistentHistoryMarker markerWithToken:tokenCopy];

  context = self->_context;
  v26 = 0;
  v22 = [PLPersistentHistoryTransactionIterator iteratorSinceMarker:v20 withFetchRequest:v6 managedObjectObjectContext:context error:&v26];
  v23 = v26;
  if (!v22)
  {
    v24 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v23;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Failed to fetch rules transaction iterator: %@", buf, 0xCu);
    }
  }

  return v22;
}

- (id)fetchResultsSincePersistentHistoryToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    v5 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Token is nil so fetching ALL transactions", buf, 2u);
    }
  }

  v6 = [(PLLibraryScopeChangeTracker *)self _transactionIteratorSinceToken:tokenCopy];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__PLLibraryScopeChangeTracker_fetchResultsSincePersistentHistoryToken___block_invoke;
  v17[3] = &unk_1E7576000;
  v17[4] = self;
  v18 = v7;
  v19 = v8;
  v9 = v8;
  v10 = v7;
  [v6 enumerateRemainingTransactionsWithBlock:v17];
  v11 = [PLLibraryScopeTransactionResult alloc];
  lastIteratedToken = [v6 lastIteratedToken];
  allObjects = [v10 allObjects];
  allObjects2 = [v9 allObjects];
  v15 = [(PLLibraryScopeTransactionResult *)v11 initWithToken:lastIteratedToken assetObjectIDs:allObjects detectedFaceObjectIDs:allObjects2];

  return v15;
}

void __71__PLLibraryScopeChangeTracker_fetchResultsSincePersistentHistoryToken___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [a2 changes];
  v2 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v2)
  {
    v3 = v2;
    v35 = *v41;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v40 + 1) + 8 * i);
        v6 = [v5 changeType];
        if (v6 == 1)
        {
          v9 = [v5 updatedProperties];
          v10 = *(a1 + 32);
          v11 = [v5 changedObjectID];
          v12 = [v11 entity];
          v13 = [v12 name];
          v14 = [v10 _allowedPropertyDescriptionsForEntityName:v13];

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v37;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v37 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                if ([v9 containsObject:*(*(&v36 + 1) + 8 * j)])
                {
                  v7 = 1;
                  goto LABEL_19;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v7 = 0;
LABEL_19:
        }

        else
        {
          v7 = 0;
          if (!v6)
          {
            v8 = 1;
            goto LABEL_21;
          }
        }

        v8 = 0;
LABEL_21:
        v20 = [v5 changedObjectID];
        v21 = [v20 entity];
        v22 = [v21 name];
        v23 = +[PLManagedAsset entityName];
        v24 = [v22 isEqualToString:v23];

        if (!v24)
        {
          v26 = [v5 changedObjectID];
          v27 = [v26 entity];
          v28 = [v27 name];
          v29 = +[PLDetectedFace entityName];
          v30 = [v28 isEqualToString:v29];

          v25 = (a1 + 48);
          if ((v7 & v30) != 1)
          {
            continue;
          }

LABEL_25:
          v31 = *v25;
          v32 = [v5 changedObjectID];
          [v31 addObject:v32];

          continue;
        }

        v25 = (a1 + 40);
        if ((v7 | v8))
        {
          goto LABEL_25;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v3);
  }
}

- (id)fetchObjectsNeedingEvaluation
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    lastKnownToken = self->_lastKnownToken;
    v7 = 138412290;
    v8 = lastKnownToken;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Fetch all events since token: %@", &v7, 0xCu);
  }

  v5 = [(PLLibraryScopeChangeTracker *)self fetchResultsSincePersistentHistoryToken:self->_lastKnownToken];

  return v5;
}

- (void)saveLastKnownChangeTrackerTokenToDisk
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    lastKnownToken = self->_lastKnownToken;
    v6 = 138412290;
    v7 = lastKnownToken;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Saving last known token to disk: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained saveRulesTrackerToken:self->_lastKnownToken];
}

- (id)lastKnownTokenFromDisk
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  readRulesTrackerToken = [WeakRetained readRulesTrackerToken];

  v4 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = readRulesTrackerToken;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Last known token from disk: %@", &v6, 0xCu);
  }

  return readRulesTrackerToken;
}

- (id)currentToken
{
  persistentStoreCoordinator = [(NSManagedObjectContext *)self->_context persistentStoreCoordinator];
  v3 = [persistentStoreCoordinator currentPersistentHistoryTokenFromStores:0];

  return v3;
}

- (BOOL)start
{
  v11 = *MEMORY[0x1E69E9840];
  [(PLLibraryScopeChangeTracker *)self clearToken];
  lastKnownTokenFromDisk = [(PLLibraryScopeChangeTracker *)self lastKnownTokenFromDisk];
  if (!lastKnownTokenFromDisk)
  {
    lastKnownTokenFromDisk = [(PLLibraryScopeChangeTracker *)self currentToken];
  }

  v4 = [lastKnownTokenFromDisk copy];
  lastKnownToken = self->_lastKnownToken;
  self->_lastKnownToken = v4;

  v6 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = self->_lastKnownToken;
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Set initial last known tokens to: %@", &v9, 0xCu);
  }

  [(PLLibraryScopeChangeTracker *)self saveLastKnownChangeTrackerTokenToDisk];
  return 1;
}

- (void)clearToken
{
  lastKnownToken = self->_lastKnownToken;
  self->_lastKnownToken = 0;
}

- (PLLibraryScopeChangeTracker)initWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PLLibraryScopeChangeTracker;
  v6 = [(PLLibraryScopeChangeTracker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

@end