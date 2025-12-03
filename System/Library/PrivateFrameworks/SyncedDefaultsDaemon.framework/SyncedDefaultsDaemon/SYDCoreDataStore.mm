@interface SYDCoreDataStore
+ (BOOL)isCorruptionError:(id)error;
+ (BOOL)isInvalidTokenError:(id)error;
+ (id)managedObjectModel;
- (BOOL)_queue_handleCorruptionIfNecessaryFromError:(id)error inPersistentStoreCoordinator:(id)coordinator;
- (BOOL)_saveKeyValues:(id)values excludeFromChangeTracking:(BOOL)tracking enforceQuota:(BOOL)quota forceCreateNewRow:(BOOL)row error:(id *)error;
- (BOOL)clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)clearServerSystemFieldsRecordsForAllStoresWithError:(id *)error;
- (BOOL)deleteDataForAllStoresWithError:(id *)error;
- (BOOL)deleteDataForStoreWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteDataForStoresMatchingPredicate:(id)predicate context:(id)context error:(id *)error;
- (BOOL)didMigrateFromPlistsWithError:(id *)error;
- (BOOL)hasPerformedOneTimeDataSeparatedLocalDataReset;
- (BOOL)removeKeyValueForKey:(id)key inStoreWithIdentifier:(id)identifier excludeFromChangeTracking:(BOOL)tracking error:(id *)error;
- (BOOL)removeKeyValueForRecordName:(id)name inStoreWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)saveContext:(id)context reason:(id)reason includingTransactionContext:(BOOL)transactionContext error:(id *)error;
- (BOOL)saveDeprecatedSyncEngineMetadata:(id)metadata error:(id *)error;
- (BOOL)saveServerSyncAnchorSystemFieldsRecordData:(id)data forStoreWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)saveSyncEngineStateSerialization:(id)serialization error:(id *)error;
- (BOOL)saveTransaction:(id *)transaction;
- (BOOL)setACAccountIdentifier:(id)identifier error:(id *)error;
- (BOOL)setDidMigrateFromPlists:(BOOL)plists error:(id *)error;
- (BOOL)setFailedMigrationCount:(signed __int16)count error:(id *)error;
- (BOOL)setHasPerformedOneTimeDataSeparatedLocalDataReset:(BOOL)reset error:(id *)error;
- (SYDCoreDataStore)initWithURL:(id)l fileProtectionType:(id)type persistentContainer:(id)container isTransactional:(BOOL)transactional;
- (SYDCoreDataStoreDelegate)delegate;
- (id)_contextForStoreIdentifier:(id)identifier persistentContainer:(id)container;
- (id)_loadPersistentContainerWithError:(id *)error;
- (id)_persistentContainerWithError:(id *)error;
- (id)acAccountIdentifierWithError:(id *)error;
- (id)allRecordNamesInStoreWithIdentifier:(id)identifier error:(id *)error;
- (id)allStoreIdentifiersWithError:(id *)error;
- (id)changedKeysForStoreIdentifier:(id)identifier sinceChangeToken:(id)token error:(id *)error;
- (id)contextForStoreIdentifier:(id)identifier error:(id *)error;
- (id)currentChangeTokenForStoreIdentifier:(id)identifier error:(id *)error;
- (id)deprecatedSyncEngineMetadataWithError:(id *)error;
- (id)description;
- (id)dictionaryRepresentationForStoreWithIdentifier:(id)identifier error:(id *)error;
- (id)keyValueForRecordName:(id)name inStoreWithIdentifier:(id)identifier error:(id *)error;
- (id)keyValueFromManagedKeyValue:(id)value inStoreWithIdentifier:(id)identifier;
- (id)keyValuesForKeyIDs:(id)ds createIfNecessary:(BOOL)necessary error:(id *)error;
- (id)managedDatabaseCreateIfNecessary:(BOOL)necessary inContext:(id)context error:(id *)error;
- (id)managedKeyValueWithRecordName:(id)name inStoreWithIdentifier:(id)identifier inContext:(id)context error:(id *)error;
- (id)managedKeyValuesForKeyIDs:(id)ds inContext:(id)context error:(id *)error;
- (id)managedKeyValuesMatchingPredicate:(id)predicate inContext:(id)context error:(id *)error;
- (id)managedStoreWithIdentifier:(id)identifier createIfNecessary:(BOOL)necessary inContext:(id)context error:(id *)error;
- (id)persistentContainerWithError:(id *)error;
- (id)serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier:(id)identifier error:(id *)error;
- (id)syncEngineStateSerializationWithError:(id *)error;
- (id)transactionalStoreWithError:(id *)error;
- (signed)failedMigrationCountWithError:(id *)error;
- (unint64_t)fileSizeBytes;
- (unint64_t)numberOfKeyValuesInStoreWithIdentifier:(id)identifier error:(id *)error;
- (void)_queue_destroyPersistentStoreInPersistentStoreCoordinator:(id)coordinator;
- (void)clearContexts;
- (void)dealloc;
- (void)destroyPersistentStore;
- (void)fileSizeBytes;
- (void)handleCorruptionIfNecessaryFromError:(id)error inPersistentStoreCoordinator:(id)coordinator;
- (void)resetPersistentStore;
- (void)transactionStoreDidSave:(id)save;
@end

@implementation SYDCoreDataStore

- (SYDCoreDataStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SYDCoreDataStore *)self URL];
  v7 = [v3 stringWithFormat:@"<%@: %p url=%@>", v5, self, v6];;

  return v7;
}

- (SYDCoreDataStore)initWithURL:(id)l fileProtectionType:(id)type persistentContainer:(id)container isTransactional:(BOOL)transactional
{
  transactionalCopy = transactional;
  lCopy = l;
  typeCopy = type;
  containerCopy = container;
  if (!lCopy)
  {
    [SYDCoreDataStore initWithURL:fileProtectionType:persistentContainer:isTransactional:];
  }

  v28.receiver = self;
  v28.super_class = SYDCoreDataStore;
  v15 = [(SYDCoreDataStore *)&v28 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_URL, l);
    objc_storeStrong(&v16->_fileProtectionType, type);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.kvs.coredata.persistent-container", v17);
    persistentContainerQueue = v16->_persistentContainerQueue;
    v16->_persistentContainerQueue = v18;

    objc_storeStrong(&v16->__persistentContainer, container);
    v20 = objc_alloc_init(MEMORY[0x277CBEA78]);
    contexts = v16->_contexts;
    v16->_contexts = v20;

    v22 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    contextsLock = v16->_contextsLock;
    v16->_contextsLock = v22;

    if (transactionalCopy)
    {
      if (!v16->__persistentContainer)
      {
        [SYDCoreDataStore initWithURL:a2 fileProtectionType:v16 persistentContainer:&v16->__persistentContainer isTransactional:&v29];
      }

      v24 = [(SYDCoreDataStore *)v16 _contextForStoreIdentifier:0 persistentContainer:?];
      transactionContext = v16->_transactionContext;
      v16->_transactionContext = v24;
    }

    else
    {
      transactionContext = [MEMORY[0x277CCAB98] defaultCenter];
      [transactionContext addObserver:v16 selector:sel_transactionStoreDidSave_ name:@"TransactionStoreDidSave" object:0];
    }
  }

  v26 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore initWithURL:fileProtectionType:persistentContainer:isTransactional:];
  }

  return v16;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SYDCoreDataStore;
  [(SYDCoreDataStore *)&v4 dealloc];
}

- (id)keyValuesForKeyIDs:(id)ds createIfNecessary:(BOOL)necessary error:(id *)error
{
  selfCopy = self;
  v41 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__3;
  v38 = __Block_byref_object_dispose__3;
  v39 = objc_opt_new();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v7 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v40 count:16];
  if (v9)
  {
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        storeIdentifier = [v12 storeIdentifier];
        v14 = [v7 objectForKeyedSubscript:storeIdentifier];

        if (!v14)
        {
          v14 = objc_opt_new();
          storeIdentifier2 = [v12 storeIdentifier];
          [v7 setObject:v14 forKeyedSubscript:storeIdentifier2];
        }

        [v14 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v24 objects:v40 count:16];
    }

    while (v9);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__SYDCoreDataStore_keyValuesForKeyIDs_createIfNecessary_error___block_invoke;
  v22[3] = &unk_279D2FD50;
  v22[4] = selfCopy;
  v22[5] = &v28;
  necessaryCopy = necessary;
  v22[6] = &v34;
  [v7 enumerateKeysAndObjectsUsingBlock:v22];
  if (v29[5])
  {
    v16 = v35[5];
    v35[5] = 0;
  }

  if (error)
  {
    *error = v29[5];
  }

  v17 = [v35[5] copy];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __63__SYDCoreDataStore_keyValuesForKeyIDs_createIfNecessary_error___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 8);
  v22 = *(v10 + 40);
  v11 = [v9 contextForStoreIdentifier:v7 error:&v22];
  objc_storeStrong((v10 + 40), v22);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__SYDCoreDataStore_keyValuesForKeyIDs_createIfNecessary_error___block_invoke_2;
  v15[3] = &unk_279D2FD28;
  v15[4] = *(a1 + 32);
  v16 = v8;
  v20 = a4;
  v17 = v11;
  v18 = v7;
  v21 = *(a1 + 56);
  v19 = *(a1 + 40);
  v12 = v7;
  v13 = v11;
  v14 = v8;
  [v13 performBlockAndWait:v15];
}

void __63__SYDCoreDataStore_keyValuesForKeyIDs_createIfNecessary_error___block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allObjects];
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 managedKeyValuesForKeyIDs:v3 inContext:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (!v9)
    {
      goto LABEL_25;
    }

    v11 = v9;
    v12 = *v33;
    *&v10 = 141558531;
    v31 = v10;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [v6 objectForKeyedSubscript:{v14, v31, v32}];
        if (v15)
        {
          v16 = SYDGetCoreDataLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v24 = [v14 key];
            v25 = *(a1 + 56);
            *buf = v31;
            v38 = 1752392040;
            v39 = 2113;
            v40 = v24;
            v41 = 2112;
            v42 = v25;
            _os_log_debug_impl(&dword_26C384000, v16, OS_LOG_TYPE_DEBUG, "Existing keyValue for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x20u);
          }

          v17 = [*(a1 + 32) keyValueFromManagedKeyValue:v15 inStoreWithIdentifier:*(a1 + 56)];
          if (v17)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v18 = *(a1 + 88);
          v17 = SYDGetCoreDataLog();
          v19 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
          if (v18 != 1)
          {
            if (v19)
            {
              v28 = [v14 key];
              v29 = *(a1 + 56);
              *buf = v31;
              v38 = 1752392040;
              v39 = 2113;
              v40 = v28;
              v41 = 2112;
              v42 = v29;
              _os_log_debug_impl(&dword_26C384000, v17, OS_LOG_TYPE_DEBUG, "No keyValue for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x20u);
            }

            goto LABEL_22;
          }

          if (v19)
          {
            v26 = [v14 key];
            v27 = *(a1 + 56);
            *buf = v31;
            v38 = 1752392040;
            v39 = 2113;
            v40 = v26;
            v41 = 2112;
            v42 = v27;
            _os_log_debug_impl(&dword_26C384000, v17, OS_LOG_TYPE_DEBUG, "Creating new keyValue for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x20u);
          }

          v20 = [SYDKeyValue alloc];
          v21 = [v14 key];
          v17 = [(SYDKeyValue *)v20 initWithKey:v21 storeIdentifier:*(a1 + 56)];

          [v17 setIsNewKeyValue:1];
          if (v17)
          {
LABEL_19:
            v22 = *(*(*(a1 + 72) + 8) + 40);
            v23 = [v17 keyID];
            [v22 setObject:v17 forKeyedSubscript:v23];

LABEL_22:
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v32 objects:v43 count:16];
      if (!v11)
      {
LABEL_25:

        goto LABEL_26;
      }
    }
  }

  v7 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __63__SYDCoreDataStore_keyValuesForKeyIDs_createIfNecessary_error___block_invoke_2_cold_1(a1 + 64);
  }

  **(a1 + 80) = 1;
LABEL_26:

  v30 = *MEMORY[0x277D85DE8];
}

- (id)keyValueForRecordName:(id)name inStoreWithIdentifier:(id)identifier error:(id *)error
{
  nameCopy = name;
  identifierCopy = identifier;
  v10 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore keyValueForRecordName:inStoreWithIdentifier:error:];
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  obj = 0;
  v11 = [(SYDCoreDataStore *)self contextForStoreIdentifier:identifierCopy error:&obj];
  objc_storeStrong(&v29, obj);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__SYDCoreDataStore_keyValueForRecordName_inStoreWithIdentifier_error___block_invoke;
  v17[3] = &unk_279D2FD78;
  v17[4] = self;
  v12 = nameCopy;
  v18 = v12;
  v13 = identifierCopy;
  v19 = v13;
  v14 = v11;
  v20 = v14;
  v21 = &v24;
  v22 = &v30;
  [v14 performBlockAndWait:v17];
  if (error)
  {
    *error = v25[5];
  }

  v15 = v31[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v15;
}

void __70__SYDCoreDataStore_keyValueForRecordName_inStoreWithIdentifier_error___block_invoke(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3[3] + 8);
  obj = *(v7 + 40);
  v8 = [v4 managedKeyValueWithRecordName:v2 inStoreWithIdentifier:v5 inContext:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (!*(*(v3[3] + 8) + 40))
  {
    v9 = SYDGetCoreDataLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        __70__SYDCoreDataStore_keyValueForRecordName_inStoreWithIdentifier_error___block_invoke_cold_1(v3, v3 + 1);
      }

      v11 = [*(a1 + 32) keyValueFromManagedKeyValue:v8 inStoreWithIdentifier:*(a1 + 48)];
      v12 = *(*(a1 + 72) + 8);
      v9 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    else if (v10)
    {
      __70__SYDCoreDataStore_keyValueForRecordName_inStoreWithIdentifier_error___block_invoke_cold_2(v3, v3 + 1);
    }
  }
}

- (id)keyValueFromManagedKeyValue:(id)value inStoreWithIdentifier:(id)identifier
{
  valueCopy = value;
  identifierCopy = identifier;
  if (!valueCopy)
  {
    [SYDCoreDataStore keyValueFromManagedKeyValue:inStoreWithIdentifier:];
  }

  if (![identifierCopy length])
  {
    [SYDCoreDataStore keyValueFromManagedKeyValue:inStoreWithIdentifier:];
  }

  store = [valueCopy store];
  identifier = [store identifier];
  v9 = [identifier length];

  if (v9)
  {
    v10 = [SYDKeyValue alloc];
    v11 = [valueCopy key];
    store2 = [valueCopy store];
    identifier2 = [store2 identifier];
    v14 = [(SYDKeyValue *)v10 initWithKey:v11 storeIdentifier:identifier2];
  }

  else
  {
    v15 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [SYDCoreDataStore keyValueFromManagedKeyValue:inStoreWithIdentifier:];
    }

    v16 = [SYDKeyValue alloc];
    v11 = [valueCopy key];
    v14 = [(SYDKeyValue *)v16 initWithKey:v11 storeIdentifier:identifierCopy];
  }

  value = [valueCopy value];
  valueModificationDate = [valueCopy valueModificationDate];
  [(SYDKeyValue *)v14 setValue:value withModificationDate:valueModificationDate];

  recordName = [valueCopy recordName];
  [(SYDKeyValue *)v14 setRecordName:recordName];

  serverSystemFieldsRecordData = [valueCopy serverSystemFieldsRecordData];
  [(SYDKeyValue *)v14 setServerSystemFieldsRecordData:serverSystemFieldsRecordData];

  return v14;
}

- (BOOL)_saveKeyValues:(id)values excludeFromChangeTracking:(BOOL)tracking enforceQuota:(BOOL)quota forceCreateNewRow:(BOOL)row error:(id *)error
{
  selfCopy = self;
  v40 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__3;
  v37 = __Block_byref_object_dispose__3;
  v38 = 0;
  v9 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = valuesCopy;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v11)
  {
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        storeIdentifier = [v14 storeIdentifier];
        v16 = [v9 objectForKeyedSubscript:storeIdentifier];

        if (!v16)
        {
          v16 = objc_opt_new();
          storeIdentifier2 = [v14 storeIdentifier];
          [v9 setObject:v16 forKeyedSubscript:storeIdentifier2];
        }

        [v16 addObject:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v11);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __98__SYDCoreDataStore__saveKeyValues_excludeFromChangeTracking_enforceQuota_forceCreateNewRow_error___block_invoke;
  v25[3] = &unk_279D2FDC8;
  v25[4] = selfCopy;
  v25[5] = &v33;
  trackingCopy = tracking;
  rowCopy = row;
  quotaCopy = quota;
  [v9 enumerateKeysAndObjectsUsingBlock:v25];
  if (error)
  {
    *error = v34[5];
  }

  v18 = v34[5] == 0;

  _Block_object_dispose(&v33, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __98__SYDCoreDataStore__saveKeyValues_excludeFromChangeTracking_enforceQuota_forceCreateNewRow_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 8);
  v24 = *(v8 + 40);
  v9 = [v7 contextForStoreIdentifier:v5 error:&v24];
  objc_storeStrong((v8 + 40), v24);
  if (*(a1 + 48))
  {
    v10 = @"no-change-tracking";
  }

  else
  {
    v10 = 0;
  }

  [v9 setTransactionAuthor:v10];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__SYDCoreDataStore__saveKeyValues_excludeFromChangeTracking_enforceQuota_forceCreateNewRow_error___block_invoke_2;
  v16[3] = &unk_279D2FDA0;
  v22 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v17 = v6;
  v18 = v11;
  v20 = v5;
  v21 = v12;
  v19 = v9;
  v23 = *(a1 + 49);
  v13 = v5;
  v14 = v9;
  v15 = v6;
  [v14 performBlockAndWait:v16];
}

void __98__SYDCoreDataStore__saveKeyValues_excludeFromChangeTracking_enforceQuota_forceCreateNewRow_error___block_invoke_2(uint64_t a1)
{
  v111 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v91 objects:v110 count:16];
  v74 = v2;
  if (v4)
  {
    v5 = v4;
    v6 = *v92;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v92 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v91 + 1) + 8 * i);
        v9 = SYDGetCoreDataLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v11 = [v8 key];
          v12 = [v8 value];
          v13 = [v8 storeIdentifier];
          v14 = *(a1 + 72);
          *buf = 141559299;
          v99 = 1752392040;
          v100 = 2113;
          v101 = v11;
          v102 = 2160;
          v103 = 1752392040;
          v104 = 2117;
          v105 = v12;
          v106 = 2112;
          v107 = v13;
          v108 = 1024;
          v109 = v14;
          _os_log_debug_impl(&dword_26C384000, v9, OS_LOG_TYPE_DEBUG, "Saving value for key <(%{private, mask.hash}@)> = <(%{sensitive, mask.hash}@)> in store <(%@)> excludeFromChangeTracking=%d", buf, 0x3Au);

          v2 = v74;
        }

        v10 = [v8 keyID];
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v91 objects:v110 count:16];
    }

    while (v5);
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v73 = a1 + 64;
  v17 = *(*(a1 + 64) + 8);
  obj = *(v17 + 40);
  v18 = [v15 managedKeyValuesForKeyIDs:v2 inContext:v16 error:&obj];
  objc_storeStrong((v17 + 40), obj);
  v19 = [v18 allValues];
  v20 = [v19 firstObject];
  v21 = [v20 store];

  if (v18 && !v21)
  {
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v25 = *(*(a1 + 64) + 8);
    v89 = *(v25 + 40);
    v21 = [v22 managedStoreWithIdentifier:v24 createIfNecessary:1 inContext:v23 error:&v89];
    objc_storeStrong((v25 + 40), v89);
  }

  if (*(*(*v73 + 8) + 40))
  {
    v26 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __98__SYDCoreDataStore__saveKeyValues_excludeFromChangeTracking_enforceQuota_forceCreateNewRow_error___block_invoke_2_cold_1(v73);
    }

    goto LABEL_16;
  }

  v77 = v21;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v76 = *(a1 + 32);
  v79 = [v76 countByEnumeratingWithState:&v85 objects:v97 count:16];
  if (!v79)
  {
    goto LABEL_55;
  }

  v78 = *v86;
  v72 = *MEMORY[0x277CCA450];
  v75 = v18;
  do
  {
    v27 = 0;
    do
    {
      if (*v86 != v78)
      {
        objc_enumerationMutation(v76);
      }

      v28 = *(*(&v85 + 1) + 8 * v27);
      v29 = [v28 key];
      v30 = [v28 keyID];
      v31 = [v18 objectForKeyedSubscript:v30];

      if (!v31 || *(a1 + 73) == 1)
      {
        v32 = SYDGetCoreDataLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v61 = *(a1 + 56);
          *buf = 141558531;
          v99 = 1752392040;
          v100 = 2113;
          v101 = v29;
          v102 = 2112;
          v103 = v61;
          _os_log_debug_impl(&dword_26C384000, v32, OS_LOG_TYPE_DEBUG, "Creating new managed key value for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x20u);
        }

        v33 = [[SYDManagedKeyValue alloc] initWithContext:*(a1 + 48)];
        [(SYDManagedKeyValue *)v33 setKey:v29];
        [(SYDManagedKeyValue *)v33 setStore:v77];
        v34 = *(a1 + 56);
        v35 = [(SYDManagedKeyValue *)v33 store];
        [v35 setIdentifier:v34];

        v31 = v33;
      }

      v36 = [v28 value];
      [v31 setValue:v36];

      v37 = [v28 serverSystemFieldsRecordData];
      [v31 setServerSystemFieldsRecordData:v37];

      v38 = [v28 valueModificationDate];
      [v31 setValueModificationDate:v38];

      v39 = [v28 recordName];
      [v31 setRecordName:v39];

      v40 = [v31 plistDataValue];
      v41 = [v40 length];

      v42 = [v31 plistDataLength];
      [v31 setPlistDataLength:v41];
      if (*(a1 + 74) == 1)
      {
        v43 = SYDStoreIdentifiersExemptFromQuota();
        v44 = [v43 containsObject:*(a1 + 56)];

        if ((v44 & 1) == 0)
        {
          v45 = [v31 store];
          v46 = [v45 keyValues];
          v47 = [v46 count];

          if (v47 >= 0x401)
          {
            v48 = SYDGetCoreDataLog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              v62 = *(a1 + 56);
              *buf = 138412290;
              v99 = v62;
              _os_log_debug_impl(&dword_26C384000, v48, OS_LOG_TYPE_DEBUG, "Exceeded maximum number of keys in store <(%@)>", buf, 0xCu);
            }

            [MEMORY[0x277CCACA8] stringWithFormat:@"Exceeded maximum number of keys (%d) in store (%@).", 1024, *(a1 + 56), v71];
            goto LABEL_37;
          }

          if (v41 > 0x100000)
          {
            v49 = SYDGetCoreDataLog();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              v63 = *(a1 + 56);
              *buf = 141558531;
              v99 = 1752392040;
              v100 = 2113;
              v101 = v29;
              v102 = 2112;
              v103 = v63;
              _os_log_debug_impl(&dword_26C384000, v49, OS_LOG_TYPE_DEBUG, "Exceeded maximum bytes for key <(%{private, mask.hash}@)> in store <(%@)>", buf, 0x20u);
            }

            [MEMORY[0x277CCACA8] stringWithFormat:@"Exceeded maximum size (%d) for key (%@) in store (%@).", 0x100000, v29, *(a1 + 56)];
            v50 = LABEL_37:;
            v18 = v75;
            if (!v50)
            {
              goto LABEL_46;
            }

LABEL_38:
            v51 = MEMORY[0x277CCA9B8];
            v95 = v72;
            v96 = v50;
            v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
            v53 = [v51 errorWithDomain:@"SyncedDefaults" code:6666 userInfo:v52];
            v54 = *(*v73 + 8);
            v55 = *(v54 + 40);
            *(v54 + 40) = v53;

            LODWORD(v51) = [v31 isInserted];
            v56 = SYDGetCoreDataLog();
            v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG);
            if (v51)
            {
              if (v57)
              {
                __98__SYDCoreDataStore__saveKeyValues_excludeFromChangeTracking_enforceQuota_forceCreateNewRow_error___block_invoke_2_cold_3(&v83, v84);
              }

              [*(a1 + 48) deleteObject:v31];
            }

            else
            {
              if (v57)
              {
                __98__SYDCoreDataStore__saveKeyValues_excludeFromChangeTracking_enforceQuota_forceCreateNewRow_error___block_invoke_2_cold_2(&v81, v82);
              }

              [*(a1 + 48) refreshObject:v31 mergeChanges:0];
            }

            v18 = v75;

            goto LABEL_46;
          }

          v18 = v75;
          if ((v41 - v42) >= 1)
          {
            v58 = [v31 store];
            v59 = [v58 totalDataLength] + v41 - v42;

            v18 = v75;
            if (v59 > 0x100000)
            {
              v60 = SYDGetCoreDataLog();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
              {
                v64 = *(a1 + 56);
                *buf = 138412290;
                v99 = v64;
                _os_log_debug_impl(&dword_26C384000, v60, OS_LOG_TYPE_DEBUG, "Exceeded maximum total bytes in store <(%@)>", buf, 0xCu);
              }

              v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Exceeded maximum total bytes (%d) in store (%@).", 0x100000, *(a1 + 56)];
              if (v50)
              {
                goto LABEL_38;
              }
            }
          }
        }
      }

LABEL_46:

      ++v27;
    }

    while (v79 != v27);
    v65 = [v76 countByEnumeratingWithState:&v85 objects:v97 count:16];
    v79 = v65;
  }

  while (v65);
LABEL_55:

  v2 = v74;
  v66 = *(*v73 + 8);
  v21 = v77;
  if (*(v66 + 40))
  {
    goto LABEL_56;
  }

  v68 = *(a1 + 40);
  v69 = *(a1 + 48);
  v80 = 0;
  [v68 saveContext:v69 reason:@"saving key values" includingTransactionContext:0 error:&v80];
  v70 = v80;
  v26 = *(v66 + 40);
  *(v66 + 40) = v70;
LABEL_16:

LABEL_56:
  v67 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeKeyValueForKey:(id)key inStoreWithIdentifier:(id)identifier excludeFromChangeTracking:(BOOL)tracking error:(id *)error
{
  trackingCopy = tracking;
  keyCopy = key;
  identifierCopy = identifier;
  if (!keyCopy)
  {
    [SYDCoreDataStore removeKeyValueForKey:inStoreWithIdentifier:excludeFromChangeTracking:error:];
  }

  if (![identifierCopy length])
  {
    [SYDCoreDataStore removeKeyValueForKey:inStoreWithIdentifier:excludeFromChangeTracking:error:];
  }

  v12 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore removeKeyValueForKey:inStoreWithIdentifier:excludeFromChangeTracking:error:];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  obj = 0;
  v13 = [(SYDCoreDataStore *)self contextForStoreIdentifier:identifierCopy error:&obj];
  objc_storeStrong(&v32, obj);
  if (trackingCopy)
  {
    v14 = @"no-change-tracking";
  }

  else
  {
    v14 = 0;
  }

  [v13 setTransactionAuthor:v14];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __95__SYDCoreDataStore_removeKeyValueForKey_inStoreWithIdentifier_excludeFromChangeTracking_error___block_invoke;
  v20[3] = &unk_279D2FDF0;
  v15 = keyCopy;
  v21 = v15;
  v16 = identifierCopy;
  v22 = v16;
  selfCopy = self;
  v17 = v13;
  v24 = v17;
  v25 = &v27;
  [v17 performBlockAndWait:v20];
  if (error)
  {
    *error = v28[5];
  }

  v18 = v28[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v18;
}

void __95__SYDCoreDataStore_removeKeyValueForKey_inStoreWithIdentifier_excludeFromChangeTracking_error___block_invoke(uint64_t *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [[SYDKeyID alloc] initWithKey:a1[4] storeIdentifier:a1[5]];
  v3 = a1[6];
  v18[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v5 = a1[7];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v3 managedKeyValuesForKeyIDs:v4 inContext:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  v8 = [v7 objectForKeyedSubscript:v2];
  if (*(*(a1[8] + 8) + 40))
  {
    v9 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __95__SYDCoreDataStore_removeKeyValueForKey_inStoreWithIdentifier_excludeFromChangeTracking_error___block_invoke_cold_1((a1 + 8));
    }
  }

  else
  {
    v9 = SYDGetCoreDataLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        __95__SYDCoreDataStore_removeKeyValueForKey_inStoreWithIdentifier_excludeFromChangeTracking_error___block_invoke_cold_2(a1 + 4, a1 + 5);
      }

      [a1[7] deleteObject:v8];
      v11 = a1[6];
      v12 = a1[7];
      v13 = *(a1[8] + 8);
      v16 = *(v13 + 40);
      [v11 saveContext:v12 reason:@"removing key value" includingTransactionContext:0 error:&v16];
      v14 = v16;
      v9 = *(v13 + 40);
      *(v13 + 40) = v14;
    }

    else if (v10)
    {
      __95__SYDCoreDataStore_removeKeyValueForKey_inStoreWithIdentifier_excludeFromChangeTracking_error___block_invoke_cold_3(a1 + 4, a1 + 5);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeKeyValueForRecordName:(id)name inStoreWithIdentifier:(id)identifier error:(id *)error
{
  nameCopy = name;
  identifierCopy = identifier;
  if (!nameCopy)
  {
    [SYDCoreDataStore removeKeyValueForRecordName:inStoreWithIdentifier:error:];
  }

  if (![identifierCopy length])
  {
    [SYDCoreDataStore removeKeyValueForRecordName:inStoreWithIdentifier:error:];
  }

  v10 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore removeKeyValueForRecordName:inStoreWithIdentifier:error:];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  obj = 0;
  v11 = [(SYDCoreDataStore *)self contextForStoreIdentifier:identifierCopy error:&obj];
  objc_storeStrong(&v28, obj);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__SYDCoreDataStore_removeKeyValueForRecordName_inStoreWithIdentifier_error___block_invoke;
  v17[3] = &unk_279D2FDF0;
  v17[4] = self;
  v12 = nameCopy;
  v18 = v12;
  v13 = identifierCopy;
  v19 = v13;
  v14 = v11;
  v20 = v14;
  v21 = &v23;
  [v14 performBlockAndWait:v17];
  if (error)
  {
    *error = v24[5];
  }

  v15 = v24[5] == 0;

  _Block_object_dispose(&v23, 8);
  return v15;
}

void __76__SYDCoreDataStore_removeKeyValueForRecordName_inStoreWithIdentifier_error___block_invoke(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3[3] + 8);
  obj = *(v7 + 40);
  v8 = [v4 managedKeyValueWithRecordName:v2 inStoreWithIdentifier:v5 inContext:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (!*(*(v3[3] + 8) + 40))
  {
    v9 = SYDGetCoreDataLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        __76__SYDCoreDataStore_removeKeyValueForRecordName_inStoreWithIdentifier_error___block_invoke_cold_1(v3, v3 + 1);
      }

      [*(a1 + 56) deleteObject:v8];
      v11 = *(a1 + 32);
      v12 = *(a1 + 56);
      v13 = *(*(a1 + 64) + 8);
      v15 = *(v13 + 40);
      [v11 saveContext:v12 reason:@"removing key value for record name" includingTransactionContext:0 error:&v15];
      v14 = v15;
      v9 = *(v13 + 40);
      *(v13 + 40) = v14;
    }

    else if (v10)
    {
      __76__SYDCoreDataStore_removeKeyValueForRecordName_inStoreWithIdentifier_error___block_invoke_cold_2(v3, v3 + 1);
    }
  }
}

- (id)serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier:error:];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  obj = 0;
  v8 = [(SYDCoreDataStore *)self contextForStoreIdentifier:identifierCopy error:&obj];
  objc_storeStrong(&v24, obj);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__SYDCoreDataStore_serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier_error___block_invoke;
  v13[3] = &unk_279D2FA08;
  v13[4] = self;
  v9 = identifierCopy;
  v14 = v9;
  v10 = v8;
  v15 = v10;
  v16 = &v19;
  v17 = &v25;
  [v10 performBlockAndWait:v13];
  if (error)
  {
    *error = v20[5];
  }

  v11 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v11;
}

void __87__SYDCoreDataStore_serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier_error___block_invoke(void *a1)
{
  v3 = (a1 + 7);
  v2 = a1[7];
  v4 = a1[4];
  v5 = *(v3 - 16);
  v6 = *(v3 - 8);
  v7 = *(v2 + 8);
  obj = *(v7 + 40);
  v8 = [v4 managedStoreWithIdentifier:v5 createIfNecessary:0 inContext:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (*(*(*v3 + 8) + 40))
  {
    v9 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __87__SYDCoreDataStore_serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier_error___block_invoke_cold_1(v3);
    }
  }

  else if (v8)
  {
    v10 = [v8 syncAnchorServerSystemFieldsRecordData];
    v11 = *(a1[8] + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v9 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __87__SYDCoreDataStore_serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier_error___block_invoke_cold_2();
    }
  }
}

- (BOOL)saveServerSyncAnchorSystemFieldsRecordData:(id)data forStoreWithIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  v10 = SYDGetCoreDataLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (dataCopy)
  {
    if (v11)
    {
      [SYDCoreDataStore saveServerSyncAnchorSystemFieldsRecordData:forStoreWithIdentifier:error:];
    }
  }

  else if (v11)
  {
    [SYDCoreDataStore saveServerSyncAnchorSystemFieldsRecordData:forStoreWithIdentifier:error:];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  obj = 0;
  v12 = [(SYDCoreDataStore *)self contextForStoreIdentifier:identifierCopy error:&obj];
  objc_storeStrong(&v29, obj);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__SYDCoreDataStore_saveServerSyncAnchorSystemFieldsRecordData_forStoreWithIdentifier_error___block_invoke;
  v18[3] = &unk_279D2FE18;
  v18[4] = self;
  v13 = identifierCopy;
  v19 = v13;
  v14 = v12;
  v20 = v14;
  v22 = &v24;
  v15 = dataCopy;
  v21 = v15;
  [v14 performBlockAndWait:v18];
  if (error)
  {
    *error = v25[5];
  }

  v16 = v25[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v16;
}

void __92__SYDCoreDataStore_saveServerSyncAnchorSystemFieldsRecordData_forStoreWithIdentifier_error___block_invoke(void *a1)
{
  v3 = (a1 + 8);
  v2 = a1[8];
  v4 = a1[4];
  v5 = *(v3 - 24);
  v6 = *(v3 - 16);
  v7 = *(v2 + 8);
  obj = *(v7 + 40);
  v8 = [v4 managedStoreWithIdentifier:v5 createIfNecessary:1 inContext:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (*(*(*v3 + 8) + 40))
  {
    v9 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __87__SYDCoreDataStore_serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier_error___block_invoke_cold_1(v3);
    }
  }

  else if (v8)
  {
    [v8 setSyncAnchorServerSystemFieldsRecordData:a1[7]];
    v10 = a1[4];
    v11 = a1[6];
    v12 = *(a1[8] + 8);
    v14 = *(v12 + 40);
    [v10 saveContext:v11 reason:@"Saving sync anchor" includingTransactionContext:0 error:&v14];
    v13 = v14;
    v9 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  else
  {
    v9 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __92__SYDCoreDataStore_saveServerSyncAnchorSystemFieldsRecordData_forStoreWithIdentifier_error___block_invoke_cold_2();
    }
  }
}

- (BOOL)deleteDataForStoreWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v14 = 0;
  v7 = [(SYDCoreDataStore *)self contextForStoreIdentifier:identifierCopy error:&v14];
  v8 = v14;
  if (v7)
  {
    identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", identifierCopy];
    v13 = v8;
    [(SYDCoreDataStore *)self deleteDataForStoresMatchingPredicate:identifierCopy context:v7 error:&v13];
    v10 = v13;

    v8 = v10;
  }

  if (error)
  {
    v11 = v8;
    *error = v8;
  }

  return v8 == 0;
}

- (BOOL)deleteDataForAllStoresWithError:(id *)error
{
  v12 = 0;
  v5 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v11 = v6;
    [(SYDCoreDataStore *)self deleteDataForStoresMatchingPredicate:0 context:v5 error:&v11];
    v8 = v11;

    v7 = v8;
  }

  if (error)
  {
    v9 = v7;
    *error = v7;
  }

  return v7 == 0;
}

- (BOOL)deleteDataForStoresMatchingPredicate:(id)predicate context:(id)context error:(id *)error
{
  predicateCopy = predicate;
  contextCopy = context;
  v10 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore deleteDataForStoresMatchingPredicate:context:error:];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SYDCoreDataStore_deleteDataForStoresMatchingPredicate_context_error___block_invoke;
  v15[3] = &unk_279D2F560;
  v11 = predicateCopy;
  v16 = v11;
  v12 = contextCopy;
  v17 = v12;
  v18 = &v19;
  [v12 performBlockAndWait:v15];
  [(SYDCoreDataStore *)self clearContexts];
  if (error)
  {
    *error = v20[5];
  }

  v13 = v20[5] == 0;

  _Block_object_dispose(&v19, 8);
  return v13;
}

void __71__SYDCoreDataStore_deleteDataForStoresMatchingPredicate_context_error___block_invoke(uint64_t a1)
{
  v2 = +[SYDManagedStore fetchRequest];
  v3 = (a1 + 32);
  [v2 setPredicate:*(a1 + 32)];
  v4 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v2];
  v6 = *(a1 + 48);
  v5 = (a1 + 48);
  v7 = *(v5 - 1);
  v8 = *(v6 + 8);
  obj = *(v8 + 40);
  v9 = [v7 executeRequest:v4 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  v10 = SYDGetCoreDataLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __71__SYDCoreDataStore_deleteDataForStoresMatchingPredicate_context_error___block_invoke_cold_1(v3);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    __71__SYDCoreDataStore_deleteDataForStoresMatchingPredicate_context_error___block_invoke_cold_2(v3, v5);
  }
}

- (id)allRecordNamesInStoreWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  obj = 0;
  v8 = [(SYDCoreDataStore *)self contextForStoreIdentifier:identifierCopy error:&obj];
  objc_storeStrong(&v26, obj);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__SYDCoreDataStore_allRecordNamesInStoreWithIdentifier_error___block_invoke;
  v15[3] = &unk_279D2FE40;
  v9 = identifierCopy;
  v16 = v9;
  v10 = v8;
  v17 = v10;
  v19 = &v21;
  v11 = array;
  v18 = v11;
  [v10 performBlockAndWait:v15];
  if (error)
  {
    *error = v22[5];
  }

  v12 = v18;
  v13 = v11;

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __62__SYDCoreDataStore_allRecordNamesInStoreWithIdentifier_error___block_invoke(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = +[SYDManagedKeyValue fetchRequest];
  [v2 setResultType:2];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"store.identifier == %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = NSStringFromSelector(sel_recordName);
  v26[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [v2 setPropertiesToFetch:v5];

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v18 = v2;
  v8 = [v6 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v9 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __62__SYDCoreDataStore_allRecordNamesInStoreWithIdentifier_error___block_invoke_cold_1((a1 + 32), (a1 + 56));
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:v4];
        if (v15)
        {
          [*(a1 + 48) addObject:v15];
        }

        else
        {
          v16 = SYDGetCoreDataLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_26C384000, v16, OS_LOG_TYPE_INFO, "Fetched a key value with no record name", buf, 2u);
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)allStoreIdentifiersWithError:(id *)error
{
  v5 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore allStoreIdentifiersWithError:];
  }

  v6 = [MEMORY[0x277CBEB58] set];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  obj = 0;
  v7 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v24, obj);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__SYDCoreDataStore_allStoreIdentifiersWithError___block_invoke;
  v13[3] = &unk_279D2FE68;
  v8 = v7;
  v17 = &v19;
  v14 = v8;
  selfCopy = self;
  v9 = v6;
  v16 = v9;
  [v8 performBlockAndWait:v13];
  v10 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore allStoreIdentifiersWithError:];
  }

  if (error)
  {
    *error = v20[5];
  }

  allObjects = [v9 allObjects];

  _Block_object_dispose(&v19, 8);

  return allObjects;
}

void __49__SYDCoreDataStore_allStoreIdentifiersWithError___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = +[SYDManagedStore fetchRequest];
  [v2 setResultType:2];
  v3 = NSStringFromSelector(sel_identifier);
  v28[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v2 setPropertiesToFetch:v4];

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v20 = v2;
  v7 = [v5 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __49__SYDCoreDataStore_allStoreIdentifiersWithError___block_invoke_cold_1(a1 + 56);
    }

    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) persistentStoreCoordinator];
    [v10 handleCorruptionIfNecessaryFromError:v9 inPersistentStoreCoordinator:v11];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v22 + 1) + 8 * v16) objectForKeyedSubscript:v3];
        if ([v17 length])
        {
          [*(a1 + 48) addObject:v17];
        }

        else
        {
          v18 = SYDGetCoreDataLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_26C384000, v18, OS_LOG_TYPE_INFO, "Fetched a store with no store identifier", buf, 2u);
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier:error:];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  obj = 0;
  v8 = [(SYDCoreDataStore *)self contextForStoreIdentifier:identifierCopy error:&obj];
  objc_storeStrong(&v23, obj);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier_error___block_invoke;
  v13[3] = &unk_279D2FE90;
  v13[4] = self;
  v9 = identifierCopy;
  v14 = v9;
  v10 = v8;
  v15 = v10;
  v16 = &v18;
  [v10 performBlockAndWait:v13];
  [(SYDCoreDataStore *)self clearContexts];
  if (error)
  {
    *error = v19[5];
  }

  v11 = v19[5] == 0;

  _Block_object_dispose(&v18, 8);
  return v11;
}

void __93__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier_error___block_invoke(void *a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = a1 + 5;
  v2 = a1[5];
  v4 = a1[4];
  v5 = v3[1];
  v6 = *(v3[2] + 8);
  obj = *(v6 + 40);
  v7 = [v4 managedStoreWithIdentifier:v2 createIfNecessary:0 inContext:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v8 = [v7 syncAnchorServerSystemFieldsRecordData];

    if (v8)
    {
      [v7 setSyncAnchorServerSystemFieldsRecordData:0];
      v9 = a1[4];
      v10 = a1[6];
      v11 = *(a1[7] + 8);
      v29 = *(v11 + 40);
      [v9 saveContext:v10 reason:@"Removing sync anchor server record" includingTransactionContext:0 error:&v29];
      objc_storeStrong((v11 + 40), v29);
    }

    v12 = objc_alloc(MEMORY[0x277CBE380]);
    v13 = +[SYDManagedKeyValue entity];
    v14 = [v12 initWithEntity:v13];

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"store == %@", v7];
    [v14 setPredicate:v15];

    v16 = NSStringFromSelector(sel_serverSystemFieldsRecordData);
    v31 = v16;
    v17 = [MEMORY[0x277CBEB68] null];
    v32[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [v14 setPropertiesToUpdate:v18];

    v19 = a1[6];
    v20 = *(a1[7] + 8);
    v28 = *(v20 + 40);
    v21 = [v19 executeRequest:v14 error:&v28];
    objc_storeStrong((v20 + 40), v28);

    v22 = SYDGetCoreDataLog();
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __93__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier_error___block_invoke_cold_1(v3);
      }
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        __93__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier_error___block_invoke_cold_2(v3, v3 + 2);
      }

      v24 = a1[4];
      v25 = a1[6];
      v26 = *(*(a1[7] + 8) + 40);
      v23 = [v25 persistentStoreCoordinator];
      [v24 handleCorruptionIfNecessaryFromError:v26 inPersistentStoreCoordinator:v23];
    }
  }

  else
  {
    v14 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __93__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier_error___block_invoke_cold_3(v3);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (unint64_t)numberOfKeyValuesInStoreWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  obj = 0;
  v7 = [(SYDCoreDataStore *)self contextForStoreIdentifier:identifierCopy error:&obj];
  objc_storeStrong(&v23, obj);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SYDCoreDataStore_numberOfKeyValuesInStoreWithIdentifier_error___block_invoke;
  v12[3] = &unk_279D2F718;
  v8 = identifierCopy;
  v13 = v8;
  v15 = &v24;
  v9 = v7;
  v14 = v9;
  v16 = &v18;
  [v9 performBlockAndWait:v12];
  if (error)
  {
    *error = v19[5];
  }

  v10 = v25[3];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v10;
}

void __65__SYDCoreDataStore_numberOfKeyValuesInStoreWithIdentifier_error___block_invoke(void *a1)
{
  v2 = +[SYDManagedKeyValue fetchRequest];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"store.identifier == %@", a1[4]];
  [v2 setPredicate:v3];

  v4 = a1[7];
  a1 += 7;
  v5 = *(a1 - 2);
  v6 = *(v4 + 8);
  obj = *(v6 + 40);
  v7 = [v5 countForFetchRequest:v2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 - 1) + 8) + 24) = v7;
  if (*(*(*a1 + 8) + 40))
  {
    v8 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __65__SYDCoreDataStore_numberOfKeyValuesInStoreWithIdentifier_error___block_invoke_cold_1();
    }
  }
}

- (id)currentChangeTokenForStoreIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore currentChangeTokenForStoreIdentifier:error:];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  obj = 0;
  v8 = [(SYDCoreDataStore *)self persistentContainerWithError:&obj];
  objc_storeStrong(&v29, obj);
  persistentStoreCoordinator = [v8 persistentStoreCoordinator];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SYDCoreDataStore_currentChangeTokenForStoreIdentifier_error___block_invoke;
  v13[3] = &unk_279D2FEB8;
  v10 = persistentStoreCoordinator;
  v14 = v10;
  v15 = &v24;
  v16 = &v18;
  [v10 performBlockAndWait:v13];
  if (error)
  {
    *error = v25[5];
  }

  v11 = v19[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __63__SYDCoreDataStore_currentChangeTokenForStoreIdentifier_error___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStores];
  v3 = [v2 firstObject];

  if (!v3)
  {
    v14 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __63__SYDCoreDataStore_currentChangeTokenForStoreIdentifier_error___block_invoke_cold_2();
    }

    v15 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = @"Unable to load database";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v16 = [v15 errorWithDomain:@"SyncedDefaults" code:4444 userInfo:v6];
    v17 = *(*(a1 + 40) + 8);
    v13 = *(v17 + 40);
    *(v17 + 40) = v16;
    goto LABEL_11;
  }

  v4 = [v3 persistentStoreCoordinator];
  v21 = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v6 = [v4 currentPersistentHistoryTokenFromStores:v5];

  if (!v6)
  {
    v13 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26C384000, v13, OS_LOG_TYPE_INFO, "No current persistent history token", buf, 2u);
    }

    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  v7 = (a1 + 40);
  v9 = *(v8 + 8);
  obj = *(v9 + 40);
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  v11 = *(v7[1] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(*v7 + 8) + 40))
  {
    v13 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __63__SYDCoreDataStore_currentChangeTokenForStoreIdentifier_error___block_invoke_cold_1(v7);
    }

LABEL_11:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)changedKeysForStoreIdentifier:(id)identifier sinceChangeToken:(id)token error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  tokenCopy = token;
  v10 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore changedKeysForStoreIdentifier:sinceChangeToken:error:];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__3;
  v37 = __Block_byref_object_dispose__3;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  obj = 0;
  v11 = [(SYDCoreDataStore *)self contextForStoreIdentifier:identifierCopy error:&obj];
  objc_storeStrong(&v38, obj);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke;
  v19[3] = &unk_279D2FEE0;
  v12 = tokenCopy;
  v20 = v12;
  v24 = &v33;
  v13 = identifierCopy;
  v21 = v13;
  v14 = v11;
  v22 = v14;
  selfCopy = self;
  v25 = &v27;
  [v14 performBlockAndWait:v19];
  if (error)
  {
    *error = v34[5];
  }

  if (!v34[5])
  {
    v15 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      -[SYDCoreDataStore changedKeysForStoreIdentifier:sinceChangeToken:error:].cold.2(v13, buf, [v28[5] count], v15);
    }
  }

  v16 = v28[5];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke(void *a1)
{
  v142 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = MEMORY[0x277CCAAC8];
    v3 = objc_opt_class();
    v4 = a1[4];
    v5 = *(a1[8] + 8);
    obj = *(v5 + 40);
    v6 = [v2 unarchivedObjectOfClass:v3 fromData:v4 error:&obj];
    objc_storeStrong((v5 + 40), obj);
  }

  else
  {
    v6 = 0;
  }

  if (!*(*(a1[8] + 8) + 40))
  {
    v91 = a1 + 8;
    v7 = [MEMORY[0x277CBE4C8] fetchRequest];
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"author == nil"];
    [v8 addObject:v9];

    v10 = a1[5];
    v94 = a1 + 5;
    if (v10)
    {
      v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"contextName == %@", v10];
      [v8 addObject:v11];
    }

    v12 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v8];
    [v7 setPredicate:v12];

    v13 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:v6];
    [v13 setFetchRequest:v7];
    [v13 setResultType:5];
    v14 = a1[6];
    v15 = *(a1[8] + 8);
    v131 = *(v15 + 40);
    v16 = [v14 executeRequest:v13 error:&v131];
    objc_storeStrong((v15 + 40), v131);
    if (*(*(a1[8] + 8) + 40))
    {
      v17 = a1[7];
      v18 = [objc_opt_class() isInvalidTokenError:*(*(a1[8] + 8) + 40)];
      v19 = SYDGetCoreDataLog();
      v20 = v19;
      if (v18)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = *v94;
          v22 = *(*(*v91 + 8) + 40);
          *buf = 138412546;
          v139 = v21;
          v140 = 2112;
          v141 = v22;
          _os_log_impl(&dword_26C384000, v20, OS_LOG_TYPE_INFO, "Persistent history token expired for (%@): %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_2(v94, v91);
      }

LABEL_109:

      goto LABEL_110;
    }

    if (!v16)
    {
      goto LABEL_110;
    }

    v23 = [v16 result];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v20 = SYDGetCoreDataLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_3();
      }

      goto LABEL_109;
    }

    v25 = [v16 result];
    v26 = [v25 count];

    if (!v26)
    {
LABEL_110:

      goto LABEL_111;
    }

    v92 = a1;
    v86 = v13;
    v87 = v8;
    v88 = v7;
    v89 = v6;
    v85 = v16;
    v90 = [v16 result];
    v27 = [v90 firstObject];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();

    v29 = SYDGetCoreDataLog();
    v30 = v29;
    if ((v28 & 1) == 0)
    {
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_107;
      }

      v20 = v90;
      __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_4();
LABEL_108:

      v7 = v88;
      v6 = v89;
      v13 = v86;
      v8 = v87;
      v16 = v85;
      goto LABEL_109;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_5();
    }

    v30 = [MEMORY[0x277CBEB58] set];
    v93 = [MEMORY[0x277CBEB58] set];
    v31 = +[SYDManagedKeyValue entity];
    v104 = +[SYDManagedStore entity];
    v32 = NSStringFromSelector(sel_plistDataValue);
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v96 = v90;
    v100 = v31;
    v98 = [v96 countByEnumeratingWithState:&v127 objects:v137 count:16];
    if (!v98)
    {
      v95 = 0;
      goto LABEL_90;
    }

    v95 = 0;
    v97 = *v128;
LABEL_21:
    v33 = 0;
    while (1)
    {
      if (*v128 != v97)
      {
        objc_enumerationMutation(v96);
      }

      v99 = v33;
      v34 = *(*(&v127 + 1) + 8 * v33);
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v35 = [v34 changes];
      v107 = [v35 countByEnumeratingWithState:&v123 objects:v136 count:16];
      v36 = 0;
      v37 = 0;
      if (v107)
      {
        break;
      }

LABEL_58:

      if ([v36 count])
      {
        v53 = v36;
        v54 = v99;
        if (v37)
        {
          v55 = [v95 objectForKeyedSubscript:v37];
          if (v55)
          {
            v56 = v55;
          }

          else
          {
            v57 = +[SYDManagedStore fetchRequest];
            v58 = v37;
            v59 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self == %@", v37];
            [v57 setPredicate:v59];

            [v57 setResultType:2];
            [v57 setPropertiesToFetch:&unk_287CF24F0];
            v60 = v92[6];
            v61 = *(v92[8] + 8);
            v114 = *(v61 + 40);
            v62 = [v60 executeFetchRequest:v57 error:&v114];
            objc_storeStrong((v61 + 40), v114);
            if (*(*(v92[8] + 8) + 40))
            {
              v63 = SYDGetCoreDataLog();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
              {
                __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_7(buf, v91);
              }

              v56 = 0;
              v37 = v58;
            }

            else
            {
              v64 = [v62 firstObject];
              v56 = [v64 objectForKeyedSubscript:@"identifier"];

              if (v56)
              {
                v65 = v95;
                v37 = v58;
                if (!v95)
                {
                  v65 = [MEMORY[0x277CBEB38] dictionary];
                }

                v95 = v65;
                [v65 setObject:v56 forKeyedSubscript:v58];
              }

              else
              {
                v66 = SYDGetCoreDataLog();
                v37 = v58;
                if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
                {
                  *v113 = 0;
                  _os_log_impl(&dword_26C384000, v66, OS_LOG_TYPE_INFO, "No store identifier when validating deleted keys", v113, 2u);
                }

                v56 = 0;
              }
            }

            v54 = v99;
          }

          if ([v56 isEqualToString:*v94])
          {
            [v93 unionSet:v53];
          }
        }

        else
        {
          v56 = SYDGetCoreDataLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_8(&v115, v116);
          }
        }

        v36 = v53;
      }

      else
      {
        v54 = v99;
      }

      v33 = v54 + 1;
      if (v33 == v98)
      {
        v98 = [v96 countByEnumeratingWithState:&v127 objects:v137 count:16];
        if (!v98)
        {
LABEL_90:

          if ([v30 count])
          {
            v67 = +[SYDManagedKeyValue fetchRequest];
            [v67 setResultType:2];
            [v67 setReturnsDistinctResults:1];
            [v67 setPropertiesToFetch:&unk_287CF2508];
            v68 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self IN %@", v30];
            v134[0] = v68;
            v69 = [MEMORY[0x277CCAC30] predicateWithFormat:@"store.identifier == %@", v92[5]];
            v134[1] = v69;
            v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:2];

            v71 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v70];
            [v67 setPredicate:v71];

            v72 = v92[6];
            v73 = *(v92[8] + 8);
            v112 = *(v73 + 40);
            v74 = [v72 executeFetchRequest:v67 error:&v112];
            objc_storeStrong((v73 + 40), v112);
            if (*(*(v92[8] + 8) + 40))
            {
              v75 = SYDGetCoreDataLog();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
              {
                __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_9(v91);
              }
            }

            else
            {
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v75 = v74;
              v76 = [v75 countByEnumeratingWithState:&v108 objects:v133 count:16];
              if (v76)
              {
                v77 = v76;
                v78 = *v109;
                do
                {
                  for (i = 0; i != v77; ++i)
                  {
                    if (*v109 != v78)
                    {
                      objc_enumerationMutation(v75);
                    }

                    v80 = [*(*(&v108 + 1) + 8 * i) objectForKeyedSubscript:@"key"];
                    if (v80)
                    {
                      [v93 addObject:v80];
                    }
                  }

                  v77 = [v75 countByEnumeratingWithState:&v108 objects:v133 count:16];
                }

                while (v77);
                v31 = v100;
              }

              else
              {
                v31 = v100;
              }
            }
          }

          v81 = [v93 allObjects];
          v82 = *(v92[9] + 8);
          v83 = *(v82 + 40);
          *(v82 + 40) = v81;

LABEL_107:
          v20 = v90;
          goto LABEL_108;
        }

        goto LABEL_21;
      }
    }

    v105 = *v124;
    v103 = v35;
LABEL_26:
    v38 = 0;
    while (1)
    {
      if (*v124 != v105)
      {
        objc_enumerationMutation(v35);
      }

      v39 = *(*(&v123 + 1) + 8 * v38);
      v40 = [v39 changedObjectID];
      v41 = [v40 entity];

      if (v41 == v31)
      {
        v44 = [v39 changeType];
        switch(v44)
        {
          case 0:
            v106 = v41;
            v43 = [v39 changedObjectID];
            [v30 addObject:v43];
            goto LABEL_55;
          case 1:
            v106 = v41;
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v43 = [v39 updatedProperties];
            v46 = [v43 countByEnumeratingWithState:&v119 objects:v135 count:16];
            if (v46)
            {
              v47 = v46;
              v101 = v36;
              v102 = v37;
              v48 = *v120;
              do
              {
                for (j = 0; j != v47; ++j)
                {
                  if (*v120 != v48)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v50 = [*(*(&v119 + 1) + 8 * j) name];
                  v51 = [v50 isEqualToString:v32];

                  if (v51)
                  {
                    v52 = [v39 changedObjectID];
                    [v30 addObject:v52];
                  }
                }

                v47 = [v43 countByEnumeratingWithState:&v119 objects:v135 count:16];
              }

              while (v47);
              v31 = v100;
              v36 = v101;
              v37 = v102;
            }

LABEL_53:
            v35 = v103;
LABEL_55:

            v41 = v106;
            break;
          case 2:
            v106 = v41;
            v45 = [v39 tombstone];
            v43 = [v45 objectForKeyedSubscript:@"key"];

            if (v43)
            {
              if (!v36)
              {
                v36 = [MEMORY[0x277CBEB58] set];
              }

              [v36 addObject:v43];
            }

            goto LABEL_53;
        }
      }

      else if (v41 == v104)
      {
        v106 = v41;
        if (v37)
        {
          v42 = SYDGetCoreDataLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_6(&v117, v118);
          }
        }

        [v39 changedObjectID];
        v37 = v43 = v37;
        goto LABEL_55;
      }

      if (++v38 == v107)
      {
        v107 = [v35 countByEnumeratingWithState:&v123 objects:v136 count:16];
        if (!v107)
        {
          goto LABEL_58;
        }

        goto LABEL_26;
      }
    }
  }

  v7 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_1((a1 + 8));
  }

LABEL_111:

  v84 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearServerSystemFieldsRecordsForAllStoresWithError:(id *)error
{
  v5 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore clearServerSystemFieldsRecordsForAllStoresWithError:];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  obj = 0;
  v6 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v19, obj);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllStoresWithError___block_invoke;
  v10[3] = &unk_279D2F650;
  v7 = v6;
  v11 = v7;
  v12 = &v14;
  [v7 performBlockAndWait:v10];
  [(SYDCoreDataStore *)self clearContexts];
  if (error)
  {
    *error = v15[5];
  }

  v8 = v15[5] == 0;

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __72__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllStoresWithError___block_invoke(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBE380]);
  v3 = +[SYDManagedKeyValue entity];
  v4 = [v2 initWithEntity:v3];

  v5 = NSStringFromSelector(sel_serverSystemFieldsRecordData);
  v30 = v5;
  v6 = [MEMORY[0x277CBEB68] null];
  v31[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [v4 setPropertiesToUpdate:v7];

  v8 = *(a1 + 32);
  v27 = 0;
  v9 = [v8 executeRequest:v4 error:&v27];
  v10 = v27;

  v11 = SYDGetCoreDataLog();
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __72__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllStoresWithError___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    __72__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllStoresWithError___block_invoke_cold_2();
  }

  v13 = objc_alloc(MEMORY[0x277CBE380]);
  v14 = +[SYDManagedStore entity];
  v15 = [v13 initWithEntity:v14];

  v16 = NSStringFromSelector(sel_syncAnchorServerSystemFieldsRecordData);
  v28 = v16;
  v17 = [MEMORY[0x277CBEB68] null];
  v29 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v15 setPropertiesToUpdate:v18];

  v19 = *(a1 + 32);
  v26 = 0;
  v20 = [v19 executeRequest:v15 error:&v26];
  v21 = v26;

  v22 = SYDGetCoreDataLog();
  v23 = v22;
  if (v20)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __72__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllStoresWithError___block_invoke_cold_3();
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    __72__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllStoresWithError___block_invoke_cold_4();
  }

  if (v10)
  {
    v24 = v10;
  }

  else
  {
    v24 = v21;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v24);

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)setACAccountIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  obj = 0;
  v7 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v22, obj);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__SYDCoreDataStore_setACAccountIdentifier_error___block_invoke;
  v12[3] = &unk_279D2FE40;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  v15 = &v17;
  v9 = identifierCopy;
  v14 = v9;
  [v8 performBlockAndWait:v12];
  if (error)
  {
    *error = v18[5];
  }

  v10 = v18[5] == 0;

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __49__SYDCoreDataStore_setACAccountIdentifier_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 managedDatabaseCreateIfNecessary:1 inContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 acAccountIdentifier];
  v7 = [v6 isEqualToString:a1[6]];

  if ((v7 & 1) == 0)
  {
    v8 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __49__SYDCoreDataStore_setACAccountIdentifier_error___block_invoke_cold_1(a1 + 6);
    }

    [v5 setAcAccountIdentifier:a1[6]];
    v9 = a1[4];
    v10 = a1[5];
    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    [v9 saveContext:v10 reason:@"ACAccount identifier" includingTransactionContext:0 error:&v12];
    objc_storeStrong((v11 + 40), v12);
  }
}

- (id)acAccountIdentifierWithError:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  obj = 0;
  v5 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v19, obj);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SYDCoreDataStore_acAccountIdentifierWithError___block_invoke;
  v9[3] = &unk_279D2FF08;
  v9[4] = self;
  v6 = v5;
  v10 = v6;
  v11 = &v14;
  v12 = &v20;
  [v6 performBlockAndWait:v9];
  if (error)
  {
    *error = v15[5];
  }

  v7 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v7;
}

void __49__SYDCoreDataStore_acAccountIdentifierWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 managedDatabaseCreateIfNecessary:0 inContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 acAccountIdentifier];
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)setDidMigrateFromPlists:(BOOL)plists error:(id *)error
{
  v7 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore setDidMigrateFromPlists:error:];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  obj = 0;
  v8 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v22, obj);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__SYDCoreDataStore_setDidMigrateFromPlists_error___block_invoke;
  v12[3] = &unk_279D2FF30;
  v12[4] = self;
  v9 = v8;
  v13 = v9;
  v14 = &v17;
  plistsCopy = plists;
  [v9 performBlockAndWait:v12];
  if (error)
  {
    *error = v18[5];
  }

  v10 = v18[5] == 0;

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __50__SYDCoreDataStore_setDidMigrateFromPlists_error___block_invoke(uint64_t a1)
{
  v3 = a1 + 48;
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(v3 - 8);
  v6 = *(v2 + 8);
  obj = *(v6 + 40);
  v7 = [v4 managedDatabaseCreateIfNecessary:1 inContext:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*v3 + 8) + 40))
  {
    v8 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __50__SYDCoreDataStore_setDidMigrateFromPlists_error___block_invoke_cold_1(v3);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (*(a1 + 56) != [v7 didMigrateFromPlists])
  {
    v9 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __50__SYDCoreDataStore_setDidMigrateFromPlists_error___block_invoke_cold_2((a1 + 56));
    }

    [v7 setDidMigrateFromPlists:*(a1 + 56)];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 48) + 8);
    v14 = *(v12 + 40);
    [v10 saveContext:v11 reason:@"did migrate from plists" includingTransactionContext:0 error:&v14];
    v13 = v14;
    v8 = *(v12 + 40);
    *(v12 + 40) = v13;
    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)didMigrateFromPlistsWithError:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  obj = 0;
  v5 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v19, obj);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__SYDCoreDataStore_didMigrateFromPlistsWithError___block_invoke;
  v9[3] = &unk_279D2FF08;
  v9[4] = self;
  v6 = v5;
  v10 = v6;
  v11 = &v14;
  v12 = &v20;
  [v6 performBlockAndWait:v9];
  if (error)
  {
    *error = v15[5];
  }

  v7 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v7;
}

void __50__SYDCoreDataStore_didMigrateFromPlistsWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 managedDatabaseCreateIfNecessary:0 inContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[7] + 8) + 24) = [v5 didMigrateFromPlists];
}

- (BOOL)setFailedMigrationCount:(signed __int16)count error:(id *)error
{
  v7 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore setFailedMigrationCount:error:];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  obj = 0;
  v8 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v22, obj);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__SYDCoreDataStore_setFailedMigrationCount_error___block_invoke;
  v12[3] = &unk_279D2FF58;
  v12[4] = self;
  v9 = v8;
  v13 = v9;
  v14 = &v17;
  countCopy = count;
  [v9 performBlockAndWait:v12];
  if (error)
  {
    *error = v18[5];
  }

  v10 = v18[5] == 0;

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __50__SYDCoreDataStore_setFailedMigrationCount_error___block_invoke(uint64_t a1)
{
  v3 = a1 + 48;
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(v3 - 8);
  v6 = *(v2 + 8);
  obj = *(v6 + 40);
  v7 = [v4 managedDatabaseCreateIfNecessary:1 inContext:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*v3 + 8) + 40))
  {
    v8 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __50__SYDCoreDataStore_setFailedMigrationCount_error___block_invoke_cold_1(v3);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (*(a1 + 56) != [v7 failedMigrationCount])
  {
    v9 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __50__SYDCoreDataStore_setFailedMigrationCount_error___block_invoke_cold_2((a1 + 56));
    }

    [v7 setFailedMigrationCount:*(a1 + 56)];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 48) + 8);
    v14 = *(v12 + 40);
    [v10 saveContext:v11 reason:@"failed migration count" includingTransactionContext:0 error:&v14];
    v13 = v14;
    v8 = *(v12 + 40);
    *(v12 + 40) = v13;
    goto LABEL_8;
  }

LABEL_9:
}

- (signed)failedMigrationCountWithError:(id *)error
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  obj = 0;
  v5 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v19, obj);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__SYDCoreDataStore_failedMigrationCountWithError___block_invoke;
  v9[3] = &unk_279D2FF08;
  v9[4] = self;
  v6 = v5;
  v10 = v6;
  v11 = &v14;
  v12 = &v20;
  [v6 performBlockAndWait:v9];
  if (error)
  {
    *error = v15[5];
  }

  v7 = *(v21 + 12);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v7;
}

void __50__SYDCoreDataStore_failedMigrationCountWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 managedDatabaseCreateIfNecessary:0 inContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[7] + 8) + 24) = [v5 failedMigrationCount];
}

- (BOOL)hasPerformedOneTimeDataSeparatedLocalDataReset
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__3;
  v11[4] = __Block_byref_object_dispose__3;
  v12 = 0;
  obj = 0;
  v3 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v12, obj);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SYDCoreDataStore_hasPerformedOneTimeDataSeparatedLocalDataReset__block_invoke;
  v6[3] = &unk_279D2FF08;
  v6[4] = self;
  v4 = v3;
  v7 = v4;
  v8 = v11;
  v9 = &v13;
  [v4 performBlockAndWait:v6];
  LOBYTE(v3) = *(v14 + 24);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);
  return v3;
}

void __66__SYDCoreDataStore_hasPerformedOneTimeDataSeparatedLocalDataReset__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 managedDatabaseCreateIfNecessary:0 inContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    *(*(a1[7] + 8) + 24) = [v5 hasPerformedOneTimeDataSeparatedLocalDataReset];
  }
}

- (BOOL)setHasPerformedOneTimeDataSeparatedLocalDataReset:(BOOL)reset error:(id *)error
{
  v7 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore setHasPerformedOneTimeDataSeparatedLocalDataReset:error:];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  obj = 0;
  v8 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v22, obj);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__SYDCoreDataStore_setHasPerformedOneTimeDataSeparatedLocalDataReset_error___block_invoke;
  v12[3] = &unk_279D2FF30;
  v12[4] = self;
  v9 = v8;
  v13 = v9;
  v14 = &v17;
  resetCopy = reset;
  [v9 performBlockAndWait:v12];
  if (error)
  {
    *error = v18[5];
  }

  v10 = v18[5] == 0;

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __76__SYDCoreDataStore_setHasPerformedOneTimeDataSeparatedLocalDataReset_error___block_invoke(uint64_t a1)
{
  v3 = a1 + 48;
  v2 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(v3 - 8);
  v6 = *(v2 + 8);
  obj = *(v6 + 40);
  v7 = [v4 managedDatabaseCreateIfNecessary:0 inContext:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*v3 + 8) + 40))
  {
    v8 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __76__SYDCoreDataStore_setHasPerformedOneTimeDataSeparatedLocalDataReset_error___block_invoke_cold_1(v3);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (v7 && *(a1 + 56) != [v7 hasPerformedOneTimeDataSeparatedLocalDataReset])
  {
    v9 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __76__SYDCoreDataStore_setHasPerformedOneTimeDataSeparatedLocalDataReset_error___block_invoke_cold_2((a1 + 56));
    }

    [v7 setHasPerformedOneTimeDataSeparatedLocalDataReset:*(a1 + 56)];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 48) + 8);
    v14 = *(v12 + 40);
    [v10 saveContext:v11 reason:@"did set hasPerformedOneTimeDataSeparatedLocalDataReset" includingTransactionContext:0 error:&v14];
    v13 = v14;
    v8 = *(v12 + 40);
    *(v12 + 40) = v13;
    goto LABEL_4;
  }

LABEL_5:
}

- (id)dictionaryRepresentationForStoreWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore dictionaryRepresentationForStoreWithIdentifier:error:];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  obj = 0;
  v8 = [(SYDCoreDataStore *)self contextForStoreIdentifier:identifierCopy error:&obj];
  objc_storeStrong(&v25, obj);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__SYDCoreDataStore_dictionaryRepresentationForStoreWithIdentifier_error___block_invoke;
  v13[3] = &unk_279D2FF80;
  v9 = identifierCopy;
  v17 = &v20;
  v14 = v9;
  selfCopy = self;
  v10 = v8;
  v16 = v10;
  v18 = &v26;
  [v10 performBlockAndWait:v13];
  if (!v27[5] && !v21[5])
  {
    v27[5] = MEMORY[0x277CBEC10];
  }

  if (error)
  {
    *error = v21[5];
  }

  v11 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v11;
}

void __73__SYDCoreDataStore_dictionaryRepresentationForStoreWithIdentifier_error___block_invoke(uint64_t a1)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector("key");
  v3 = NSStringFromSelector(sel_plistDataValue);
  v4 = +[SYDManagedKeyValue fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"store.identifier == %@", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = MEMORY[0x277CCAC98];
  v7 = NSStringFromSelector(sel_valueModificationDate);
  v8 = [v6 sortDescriptorWithKey:v7 ascending:0];
  v56[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
  [v4 setSortDescriptors:v9];

  [v4 setResultType:2];
  v55[0] = v2;
  v55[1] = v3;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  [v4 setPropertiesToFetch:v10];

  v37 = a1;
  v12 = *(a1 + 56);
  v11 = a1 + 56;
  v13 = *(v12 + 8);
  obj = *(v13 + 40);
  v36 = v4;
  v14 = [v4 execute:&obj];
  objc_storeStrong((v13 + 40), obj);
  if (*(*(*v11 + 8) + 40))
  {
    v15 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __73__SYDCoreDataStore_dictionaryRepresentationForStoreWithIdentifier_error___block_invoke_cold_1(v11);
    }

    v16 = *(*(*(v37 + 56) + 8) + 40);
    v17 = *(v37 + 40);
    v18 = [*(v37 + 48) persistentStoreCoordinator];
    [v17 handleCorruptionIfNecessaryFromError:v16 inPersistentStoreCoordinator:v18];
  }

  v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v39 = v14;
  v19 = [v39 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v39);
        }

        v23 = *(*(&v41 + 1) + 8 * i);
        v24 = [v23 objectForKeyedSubscript:v2];
        v25 = [v23 objectForKeyedSubscript:v3];
        if (v25)
        {
          v40 = 0;
          v26 = [MEMORY[0x277CCAC58] propertyListWithData:v25 options:0 format:0 error:&v40];
          v27 = v40;
          if (v26)
          {
            [v38 setObject:v26 forKeyedSubscript:v24];
          }

          else
          {
            v29 = SYDGetCoreDataLog();
            v30 = v29;
            if (v27)
            {
              if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
              {
                v31 = *(v37 + 32);
                *buf = 141558787;
                v47 = 1752392040;
                v48 = 2113;
                v49 = v24;
                v50 = 2112;
                v51 = v31;
                v52 = 2112;
                v53 = v27;
                _os_log_fault_impl(&dword_26C384000, v30, OS_LOG_TYPE_FAULT, "Error decoding plist value data for key <(%{private, mask.hash}@)> in dictionary representation for store <(%@)>: %@", buf, 0x2Au);
              }
            }

            else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v32 = *(v37 + 32);
              *buf = 141558531;
              v47 = 1752392040;
              v48 = 2113;
              v49 = v24;
              v50 = 2112;
              v51 = v32;
              _os_log_impl(&dword_26C384000, v30, OS_LOG_TYPE_INFO, "Nil deserialized value for key <(%{private, mask.hash}@)> when generating dictionary for store <(%@)>", buf, 0x20u);
            }
          }
        }

        else
        {
          v27 = SYDGetCoreDataLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = *(v37 + 32);
            *buf = 141558531;
            v47 = 1752392040;
            v48 = 2113;
            v49 = v24;
            v50 = 2112;
            v51 = v28;
            _os_log_impl(&dword_26C384000, v27, OS_LOG_TYPE_INFO, "No value for key <(%{private, mask.hash}@)> when generating dictionary for store <(%@)>", buf, 0x20u);
          }
        }
      }

      v20 = [v39 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v20);
  }

  v33 = *(*(v37 + 64) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v38;

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveSyncEngineStateSerialization:(id)serialization error:(id *)error
{
  serializationCopy = serialization;
  v7 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore saveSyncEngineStateSerialization:serializationCopy error:?];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  obj = 0;
  v8 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v23, obj);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__SYDCoreDataStore_saveSyncEngineStateSerialization_error___block_invoke;
  v13[3] = &unk_279D2FE40;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  v16 = &v18;
  v10 = serializationCopy;
  v15 = v10;
  [v9 performBlockAndWait:v13];
  if (error)
  {
    *error = v19[5];
  }

  v11 = v19[5] == 0;

  _Block_object_dispose(&v18, 8);
  return v11;
}

void __59__SYDCoreDataStore_saveSyncEngineStateSerialization_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 managedDatabaseCreateIfNecessary:1 inContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  [v5 setSyncEngineStateSerialization:a1[6]];
  [v5 setSyncEngineMetadata:0];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  [v6 saveContext:v7 reason:@"sync engine metadata serialization" includingTransactionContext:0 error:&v9];
  objc_storeStrong((v8 + 40), v9);
}

- (id)syncEngineStateSerializationWithError:(id *)error
{
  v5 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore syncEngineStateSerializationWithError:];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  obj = 0;
  v6 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v20, obj);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SYDCoreDataStore_syncEngineStateSerializationWithError___block_invoke;
  v10[3] = &unk_279D2FF08;
  v10[4] = self;
  v7 = v6;
  v11 = v7;
  v12 = &v15;
  v13 = &v21;
  [v7 performBlockAndWait:v10];
  if (error)
  {
    *error = v16[5];
  }

  v8 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v8;
}

void __58__SYDCoreDataStore_syncEngineStateSerializationWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 managedDatabaseCreateIfNecessary:0 inContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 syncEngineStateSerialization];
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)saveDeprecatedSyncEngineMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  v7 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore saveDeprecatedSyncEngineMetadata:metadataCopy error:?];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  obj = 0;
  v8 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v23, obj);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__SYDCoreDataStore_saveDeprecatedSyncEngineMetadata_error___block_invoke;
  v13[3] = &unk_279D2FE40;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  v16 = &v18;
  v10 = metadataCopy;
  v15 = v10;
  [v9 performBlockAndWait:v13];
  if (error)
  {
    *error = v19[5];
  }

  v11 = v19[5] == 0;

  _Block_object_dispose(&v18, 8);
  return v11;
}

void __59__SYDCoreDataStore_saveDeprecatedSyncEngineMetadata_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 managedDatabaseCreateIfNecessary:1 inContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  [v5 setSyncEngineMetadata:a1[6]];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  [v6 saveContext:v7 reason:@"deprecated sync engine metadata" includingTransactionContext:0 error:&v9];
  objc_storeStrong((v8 + 40), v9);
}

- (id)deprecatedSyncEngineMetadataWithError:(id *)error
{
  v5 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore deprecatedSyncEngineMetadataWithError:];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  obj = 0;
  v6 = [(SYDCoreDataStore *)self contextForStoreIdentifier:0 error:&obj];
  objc_storeStrong(&v20, obj);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SYDCoreDataStore_deprecatedSyncEngineMetadataWithError___block_invoke;
  v10[3] = &unk_279D2FF08;
  v10[4] = self;
  v7 = v6;
  v11 = v7;
  v12 = &v15;
  v13 = &v21;
  [v7 performBlockAndWait:v10];
  if (error)
  {
    *error = v16[5];
  }

  v8 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v8;
}

void __58__SYDCoreDataStore_deprecatedSyncEngineMetadataWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 managedDatabaseCreateIfNecessary:0 inContext:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 syncEngineMetadata];
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)managedDatabaseCreateIfNecessary:(BOOL)necessary inContext:(id)context error:(id *)error
{
  necessaryCopy = necessary;
  contextCopy = context;
  v9 = +[SYDManagedDatabase fetchRequest];
  v21 = 0;
  v10 = [v9 execute:&v21];
  v11 = v21;
  if ([v10 count] >= 2)
  {
    v12 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [SYDCoreDataStore managedDatabaseCreateIfNecessary:inContext:error:];
    }
  }

  firstObject = [v10 firstObject];
  v14 = firstObject;
  if (v11)
  {
    v15 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [SYDCoreDataStore managedDatabaseCreateIfNecessary:inContext:error:];
    }

    persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
    [(SYDCoreDataStore *)self handleCorruptionIfNecessaryFromError:v11 inPersistentStoreCoordinator:persistentStoreCoordinator];
  }

  else
  {
    if (firstObject)
    {
      v17 = 1;
    }

    else
    {
      v17 = !necessaryCopy;
    }

    if (!v17)
    {
      v18 = SYDGetCoreDataLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [SYDCoreDataStore managedDatabaseCreateIfNecessary:inContext:error:];
      }

      v14 = [[SYDManagedDatabase alloc] initWithContext:contextCopy];
      [(SYDManagedDatabase *)v14 setHasPerformedOneTimeDataSeparatedLocalDataReset:1];
    }
  }

  if (error)
  {
    v19 = v11;
    *error = v11;
  }

  return v14;
}

- (id)managedStoreWithIdentifier:(id)identifier createIfNecessary:(BOOL)necessary inContext:(id)context error:(id *)error
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  contextCopy = context;
  v12 = +[SYDManagedStore fetchRequest];
  identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", identifierCopy];
  [v12 setPredicate:identifierCopy];

  v25 = 0;
  v14 = [v12 execute:&v25];
  v15 = v25;
  if ([v14 count] >= 2)
  {
    v16 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [SYDCoreDataStore managedStoreWithIdentifier:createIfNecessary:inContext:error:];
    }
  }

  firstObject = [v14 firstObject];
  v18 = firstObject;
  if (v15)
  {
    v19 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [SYDCoreDataStore managedStoreWithIdentifier:createIfNecessary:inContext:error:];
    }

    persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
    [(SYDCoreDataStore *)self handleCorruptionIfNecessaryFromError:v15 inPersistentStoreCoordinator:persistentStoreCoordinator];
LABEL_14:

    goto LABEL_15;
  }

  if (!firstObject && necessaryCopy)
  {
    v21 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [SYDCoreDataStore managedStoreWithIdentifier:createIfNecessary:inContext:error:];
    }

    v18 = [[SYDManagedStore alloc] initWithContext:contextCopy];
    [(SYDManagedStore *)v18 setIdentifier:identifierCopy];
    v24 = 0;
    persistentStoreCoordinator = [(SYDCoreDataStore *)self managedDatabaseCreateIfNecessary:1 inContext:contextCopy error:&v24];
    v15 = v24;
    [(SYDManagedStore *)v18 setDatabase:persistentStoreCoordinator];
    goto LABEL_14;
  }

LABEL_15:
  if (error)
  {
    v22 = v15;
    *error = v15;
  }

  return v18;
}

- (id)managedKeyValueWithRecordName:(id)name inStoreWithIdentifier:(id)identifier inContext:(id)context error:(id *)error
{
  v34[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  v12 = MEMORY[0x277CCAC30];
  contextCopy = context;
  nameCopy = [v12 predicateWithFormat:@"recordName == %@", nameCopy];
  v34[0] = nameCopy;
  identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"store.identifier == %@", identifierCopy];
  v34[1] = identifierCopy;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];

  v17 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v16];
  v18 = [(SYDCoreDataStore *)self managedKeyValuesMatchingPredicate:v17 inContext:contextCopy error:error];

  if ([v18 count] >= 2)
  {
    v19 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v31 = nameCopy;
      v32 = 2112;
      v33 = identifierCopy;
      _os_log_impl(&dword_26C384000, v19, OS_LOG_TYPE_INFO, "Found multiple key values for the same record name (%@) in store <(%@)>", buf, 0x16u);
    }
  }

  firstObject = [v18 firstObject];
  if ([identifierCopy length])
  {
    v21 = 0;
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v25 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [SYDCoreDataStore keyValueForKey:inStoreWithIdentifier:createIfNecessary:error:];
  }

  v26 = MEMORY[0x277CCA9B8];
  v28 = *MEMORY[0x277CCA450];
  v29 = @"Fetched a managedKeyValue with an empty store identifier";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v21 = [v26 errorWithDomain:@"SyncedDefaults" code:2222 userInfo:v27];

  if (error)
  {
LABEL_7:
    v22 = v21;
    *error = v21;
  }

LABEL_8:

  v23 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)managedKeyValuesForKeyIDs:(id)ds inContext:(id)context error:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  contextCopy = context;
  v8 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = dsCopy;
  v9 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v62;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v62 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v61 + 1) + 8 * i);
        storeIdentifier = [v13 storeIdentifier];
        v15 = [v8 objectForKeyedSubscript:storeIdentifier];

        if (!v15)
        {
          v15 = [MEMORY[0x277CBEB58] set];
          storeIdentifier2 = [v13 storeIdentifier];
          [v8 setObject:v15 forKeyedSubscript:storeIdentifier2];
        }

        v17 = [v13 key];
        [v15 addObject:v17];
      }

      v10 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v10);
  }

  v18 = objc_opt_new();
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __62__SYDCoreDataStore_managedKeyValuesForKeyIDs_inContext_error___block_invoke;
  v59[3] = &unk_279D2FCD8;
  v19 = v18;
  v60 = v19;
  [v8 enumerateKeysAndObjectsUsingBlock:v59];
  v20 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v19];
  v58 = 0;
  v21 = contextCopy;
  v22 = [(SYDCoreDataStore *)self managedKeyValuesMatchingPredicate:v20 inContext:contextCopy error:&v58];
  v23 = v58;
  if (v23)
  {
    v51 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [SYDCoreDataStore managedKeyValuesForKeyIDs:inContext:error:];
    }

    v24 = 0;
    goto LABEL_14;
  }

  v24 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v51 = v22;
  v26 = [v51 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (!v26)
  {
LABEL_14:
    errorCopy2 = error;
    goto LABEL_26;
  }

  v27 = v26;
  v46 = v22;
  v47 = v20;
  v48 = v19;
  v52 = *v55;
  do
  {
    for (j = 0; j != v27; ++j)
    {
      if (*v55 != v52)
      {
        objc_enumerationMutation(v51);
      }

      v29 = *(*(&v54 + 1) + 8 * j);
      v30 = [SYDKeyID alloc];
      v31 = [v29 key];
      store = [v29 store];
      identifier = [store identifier];
      v34 = [(SYDKeyID *)v30 initWithKey:v31 storeIdentifier:identifier];

      v35 = [v24 objectForKeyedSubscript:v34];
      v36 = v35;
      if (!v35)
      {
        goto LABEL_22;
      }

      valueModificationDate = [v35 valueModificationDate];
      [valueModificationDate timeIntervalSinceNow];
      v39 = v38;
      valueModificationDate2 = [v29 valueModificationDate];
      [valueModificationDate2 timeIntervalSinceNow];
      v42 = v41;

      if (v39 < v42)
      {
LABEL_22:
        [v24 setObject:v29 forKeyedSubscript:v34];
      }
    }

    v27 = [v51 countByEnumeratingWithState:&v54 objects:v65 count:16];
  }

  while (v27);
  errorCopy2 = error;
  v21 = contextCopy;
  v20 = v47;
  v19 = v48;
  v23 = 0;
  v22 = v46;
LABEL_26:

  if (errorCopy2)
  {
    v43 = v23;
    *errorCopy2 = v23;
  }

  v44 = *MEMORY[0x277D85DE8];

  return v24;
}

void __62__SYDCoreDataStore_managedKeyValuesForKeyIDs_inContext_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAC30];
  v6 = a3;
  v7 = [v5 predicateWithFormat:@"store.identifier == %@", a2];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"key IN %@", v6, v7];

  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v9];
  [*(a1 + 32) addObject:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)managedKeyValuesMatchingPredicate:(id)predicate inContext:(id)context error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  contextCopy = context;
  v10 = +[SYDManagedKeyValue fetchRequest];
  [v10 setPredicate:predicateCopy];
  v11 = MEMORY[0x277CCAC98];
  v12 = NSStringFromSelector(sel_valueModificationDate);
  v13 = [v11 sortDescriptorWithKey:v12 ascending:0];
  v23[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [v10 setSortDescriptors:v14];

  v22 = 0;
  v15 = [v10 execute:&v22];
  v16 = v22;
  if (v16)
  {
    v17 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [SYDCoreDataStore managedKeyValuesMatchingPredicate:inContext:error:];
    }

    persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
    [(SYDCoreDataStore *)self handleCorruptionIfNecessaryFromError:v16 inPersistentStoreCoordinator:persistentStoreCoordinator];
  }

  if (error)
  {
    v19 = v16;
    *error = v16;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)contextForStoreIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  transactionContext = [(SYDCoreDataStore *)self transactionContext];

  if (transactionContext)
  {
    transactionContext2 = [(SYDCoreDataStore *)self transactionContext];
  }

  else
  {
    v9 = [(SYDCoreDataStore *)self persistentContainerWithError:error];
    if (v9)
    {
      transactionContext2 = [(SYDCoreDataStore *)self _contextForStoreIdentifier:identifierCopy persistentContainer:v9];
    }

    else
    {
      v10 = SYDGetCoreDataLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SYDCoreDataStore contextForStoreIdentifier:error:];
      }

      transactionContext2 = 0;
    }
  }

  return transactionContext2;
}

- (id)_contextForStoreIdentifier:(id)identifier persistentContainer:(id)container
{
  identifierCopy = identifier;
  containerCopy = container;
  v8 = @"__no_store__";
  if (identifierCopy)
  {
    v8 = identifierCopy;
  }

  v9 = v8;
  contextsLock = [(SYDCoreDataStore *)self contextsLock];
  [contextsLock lock];

  contexts = [(SYDCoreDataStore *)self contexts];
  newBackgroundContext = [contexts objectForKey:v9];

  if (!newBackgroundContext)
  {
    newBackgroundContext = [containerCopy newBackgroundContext];
    [newBackgroundContext setMergePolicy:*MEMORY[0x277CBE1C8]];
    if (identifierCopy)
    {
      [newBackgroundContext setName:identifierCopy];
    }

    contexts2 = [(SYDCoreDataStore *)self contexts];
    [contexts2 setObject:newBackgroundContext forKey:v9];
  }

  contextsLock2 = [(SYDCoreDataStore *)self contextsLock];
  [contextsLock2 unlock];

  return newBackgroundContext;
}

- (void)clearContexts
{
  contextsLock = [(SYDCoreDataStore *)self contextsLock];
  [contextsLock lock];

  contexts = [(SYDCoreDataStore *)self contexts];
  [contexts removeAllObjects];

  contextsLock2 = [(SYDCoreDataStore *)self contextsLock];
  [contextsLock2 unlock];
}

- (BOOL)saveContext:(id)context reason:(id)reason includingTransactionContext:(BOOL)transactionContext error:(id *)error
{
  contextCopy = context;
  reasonCopy = reason;
  if (transactionContext || ([(SYDCoreDataStore *)self transactionContext], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != contextCopy))
  {
    if (![contextCopy hasChanges])
    {
      v15 = 0;
      if (!error)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v29 = 0;
    v13 = [contextCopy save:&v29];
    v14 = v29;
    v15 = v14;
    if (v13)
    {
      persistentStoreCoordinator = SYDGetCoreDataLog();
      if (os_log_type_enabled(persistentStoreCoordinator, OS_LOG_TYPE_DEBUG))
      {
        [SYDCoreDataStore saveContext:reason:includingTransactionContext:error:];
      }

      goto LABEL_26;
    }

    domain = [v14 domain];
    v18 = *MEMORY[0x277CBE2C8];
    v19 = [domain isEqualToString:*MEMORY[0x277CBE2C8]];

    if (v19)
    {
      code = [v15 code];
      v21 = 0;
    }

    else
    {
      domain2 = [v15 domain];
      v23 = [domain2 isEqualToString:*MEMORY[0x277CCA050]];

      if (!v23)
      {
        goto LABEL_21;
      }

      userInfo = [v15 userInfo];
      v25 = [userInfo objectForKeyedSubscript:v18];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        code = [v25 integerValue];
      }

      else
      {
        code = 0;
      }

      v21 = [v15 code] == 640;
    }

    if (code == 13 || v21)
    {
      v26 = SYDGetCoreDataLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [SYDCoreDataStore saveContext:reason:includingTransactionContext:error:];
      }

      goto LABEL_25;
    }

LABEL_21:
    v26 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [SYDCoreDataStore saveContext:reason:includingTransactionContext:error:];
    }

LABEL_25:

    persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
    [(SYDCoreDataStore *)self handleCorruptionIfNecessaryFromError:v15 inPersistentStoreCoordinator:persistentStoreCoordinator];
    goto LABEL_26;
  }

  persistentStoreCoordinator = SYDGetCoreDataLog();
  if (os_log_type_enabled(persistentStoreCoordinator, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore saveContext:reason:includingTransactionContext:error:];
  }

  v15 = 0;
LABEL_26:

  if (error)
  {
LABEL_27:
    v27 = v15;
    *error = v15;
  }

LABEL_28:

  return v15 == 0;
}

- (id)persistentContainerWithError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  persistentContainerQueue = [(SYDCoreDataStore *)self persistentContainerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SYDCoreDataStore_persistentContainerWithError___block_invoke;
  block[3] = &unk_279D2FFA8;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(persistentContainerQueue, block);

  if (error)
  {
    *error = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __49__SYDCoreDataStore_persistentContainerWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _loadPersistentContainerWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_persistentContainerWithError:(id *)error
{
  persistentContainerQueue = [(SYDCoreDataStore *)self persistentContainerQueue];
  dispatch_assert_queue_V2(persistentContainerQueue);

  return [(SYDCoreDataStore *)self _loadPersistentContainerWithError:error];
}

- (id)_loadPersistentContainerWithError:(id *)error
{
  v42[1] = *MEMORY[0x277D85DE8];
  delegate = [(SYDCoreDataStore *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate store:self shouldLoadPersistentStore:error])
  {
    v7 = 0;
  }

  else
  {
    persistentContainer = self->__persistentContainer;
    if (persistentContainer)
    {
      v7 = persistentContainer;
    }

    else
    {
      v8 = SYDGetCoreDataLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [SYDCoreDataStore _loadPersistentContainerWithError:];
      }

      managedObjectModel = [objc_opt_class() managedObjectModel];
      v10 = [objc_alloc(MEMORY[0x277CBE4A0]) initWithName:@"SYDManagedObjectModel" managedObjectModel:managedObjectModel];
      v11 = objc_alloc(MEMORY[0x277CBE4E0]);
      v12 = [(SYDCoreDataStore *)self URL];
      v13 = [v11 initWithURL:v12];

      [v13 setType:*MEMORY[0x277CBE2E8]];
      [v13 setShouldMigrateStoreAutomatically:1];
      [v13 setShouldInferMappingModelAutomatically:1];
      [v13 setShouldAddStoreAsynchronously:0];
      [v13 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE210]];
      fileProtectionType = [(SYDCoreDataStore *)self fileProtectionType];
      [v13 setOption:fileProtectionType forKey:*MEMORY[0x277CBE240]];

      v42[0] = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
      [v10 setPersistentStoreDescriptions:v15];

      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = __Block_byref_object_copy__3;
      v40 = __Block_byref_object_dispose__3;
      v41 = 0;
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke;
      v23[3] = &unk_279D2FFD0;
      v25 = &v32;
      v26 = &v28;
      v23[4] = self;
      v16 = v10;
      v24 = v16;
      v27 = &v36;
      [v16 loadPersistentStoresWithCompletionHandler:v23];
      if (v33[3])
      {
        goto LABEL_8;
      }

      if (*(v29 + 24) == 1)
      {
        v18 = SYDGetCoreDataLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_26C384000, v18, OS_LOG_TYPE_INFO, "Retrying to load persistent store", buf, 2u);
        }

        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke_194;
        v21[3] = &unk_279D2FFF8;
        v21[4] = &v32;
        v21[5] = &v36;
        [v16 loadPersistentStoresWithCompletionHandler:v21];
        if (v33[3])
        {
LABEL_8:
          v17 = SYDGetCoreDataLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [SYDCoreDataStore _loadPersistentContainerWithError:];
          }

          objc_storeStrong(&self->__persistentContainer, v10);
          [(SYDCoreDataStore *)self clearContexts];
        }
      }

      if (error)
      {
        *error = v37[5];
      }

      v7 = self->__persistentContainer;

      _Block_object_dispose(&v28, 8);
      _Block_object_dispose(&v32, 8);
      _Block_object_dispose(&v36, 8);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

void __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  *(*(*(a1 + 48) + 8) + 24) = v5 == 0;
  if (v5)
  {
    if (SYDIsFileProtectionError(v5))
    {
      v7 = SYDGetCoreDataLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke_cold_3();
      }
    }

    else
    {
      v8 = SYDIsDiskFullError(v6);
      v9 = SYDGetCoreDataLog();
      v7 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke_cold_2();
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke_cold_1();
      }
    }

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) persistentStoreCoordinator];
    *(*(*(a1 + 56) + 8) + 24) = [v10 _queue_handleCorruptionIfNecessaryFromError:v6 inPersistentStoreCoordinator:v11];

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }
}

void __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke_194(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = v5 == 0;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v6 = SYDGetCoreDataLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke_194_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke_194_cold_2();
  }
}

+ (id)managedObjectModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SYDCoreDataStore_managedObjectModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (managedObjectModel_onceToken != -1)
  {
    dispatch_once(&managedObjectModel_onceToken, block);
  }

  v2 = managedObjectModel_model;

  return v2;
}

void __38__SYDCoreDataStore_managedObjectModel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!v2)
  {
    v3 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __38__SYDCoreDataStore_managedObjectModel__block_invoke_cold_1();
    }
  }

  v4 = [v2 URLForResource:@"SYDManagedObjectModel" withExtension:@"momd"];
  v5 = SYDGetCoreDataLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __38__SYDCoreDataStore_managedObjectModel__block_invoke_cold_2();
    }

    v7 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v4];
    v6 = managedObjectModel_model;
    managedObjectModel_model = v7;
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    __38__SYDCoreDataStore_managedObjectModel__block_invoke_cold_3();
  }
}

- (void)resetPersistentStore
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_14_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)destroyPersistentStore
{
  persistentContainerQueue = [(SYDCoreDataStore *)self persistentContainerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SYDCoreDataStore_destroyPersistentStore__block_invoke;
  block[3] = &unk_279D2F628;
  block[4] = self;
  dispatch_sync(persistentContainerQueue, block);
}

void __42__SYDCoreDataStore_destroyPersistentStore__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 _persistentContainerWithError:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __42__SYDCoreDataStore_destroyPersistentStore__block_invoke_cold_1();
    }
  }

  else if (v3)
  {
    v6 = *(a1 + 32);
    v5 = [v3 persistentStoreCoordinator];
    [v6 _queue_destroyPersistentStoreInPersistentStoreCoordinator:v5];
  }

  else
  {
    v5 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __42__SYDCoreDataStore_destroyPersistentStore__block_invoke_cold_2();
    }
  }
}

- (void)_queue_destroyPersistentStoreInPersistentStoreCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  persistentContainerQueue = [(SYDCoreDataStore *)self persistentContainerQueue];
  dispatch_assert_queue_V2(persistentContainerQueue);

  if (coordinatorCopy)
  {
    v6 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SYDCoreDataStore _queue_destroyPersistentStoreInPersistentStoreCoordinator:?];
    }

    v7 = [(SYDCoreDataStore *)self URL];
    v8 = *MEMORY[0x277CBE2E8];
    v13 = 0;
    v9 = [coordinatorCopy destroyPersistentStoreAtURL:v7 withType:v8 options:0 error:&v13];
    v10 = v13;

    v11 = SYDGetCoreDataLog();
    persistentContainer = v11;
    if (v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [SYDCoreDataStore _queue_destroyPersistentStoreInPersistentStoreCoordinator:?];
      }

      persistentContainer = self->__persistentContainer;
      self->__persistentContainer = 0;
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [SYDCoreDataStore _queue_destroyPersistentStoreInPersistentStoreCoordinator:];
    }
  }
}

- (unint64_t)fileSizeBytes
{
  v41[3] = *MEMORY[0x277D85DE8];
  v2 = [(SYDCoreDataStore *)self URL];
  lastPathComponent = [v2 lastPathComponent];
  v4 = [lastPathComponent stringByAppendingString:@"-wal"];

  lastPathComponent2 = [v2 lastPathComponent];
  v6 = [lastPathComponent2 stringByAppendingString:@"-shm"];

  v41[0] = v2;
  uRLByDeletingLastPathComponent = [v2 URLByDeletingLastPathComponent];
  v28 = v4;
  v8 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v4];
  v41[1] = v8;
  v29 = v2;
  uRLByDeletingLastPathComponent2 = [v2 URLByDeletingLastPathComponent];
  v27 = v6;
  v10 = [uRLByDeletingLastPathComponent2 URLByAppendingPathComponent:v6];
  v41[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v33;
    v17 = *MEMORY[0x277CBE838];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        v30 = 0;
        v31 = 0;
        v20 = [v19 getResourceValue:&v31 forKey:v17 error:&v30];
        v21 = v31;
        v22 = v30;
        if (v20)
        {
          v15 += [v21 unsignedIntegerValue];
        }

        else
        {
          v23 = SYDGetCoreDataLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v37 = v19;
            v38 = 2112;
            v39 = v22;
            _os_log_error_impl(&dword_26C384000, v23, OS_LOG_TYPE_ERROR, "Error getting file size for %@: %@", buf, 0x16u);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v24 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [SYDCoreDataStore fileSizeBytes];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)transactionalStoreWithError:(id *)error
{
  v13 = 0;
  v5 = [(SYDCoreDataStore *)self persistentContainerWithError:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = [SYDCoreDataStore alloc];
    v8 = [(SYDCoreDataStore *)self URL];
    fileProtectionType = [(SYDCoreDataStore *)self fileProtectionType];
    v10 = [(SYDCoreDataStore *)v7 initWithURL:v8 fileProtectionType:fileProtectionType persistentContainer:v5 isTransactional:1];
  }

  else
  {
    v8 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SYDCoreDataStore transactionalStoreWithError:];
    }

    v10 = 0;
  }

  if (error)
  {
    v11 = v6;
    *error = v6;
  }

  return v10;
}

- (BOOL)saveTransaction:(id *)transaction
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  transactionContext = [(SYDCoreDataStore *)self transactionContext];

  if (transactionContext)
  {
    v6 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SYDCoreDataStore saveTransaction:];
    }

    transactionContext2 = [(SYDCoreDataStore *)self transactionContext];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __36__SYDCoreDataStore_saveTransaction___block_invoke;
    v12[3] = &unk_279D2F650;
    v12[4] = self;
    v12[5] = &v13;
    [transactionContext2 performBlockAndWait:v12];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TransactionStoreDidSave" object:self];

    if (transaction)
    {
LABEL_5:
      *transaction = v14[5];
    }
  }

  else
  {
    v11 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [SYDCoreDataStore saveTransaction:];
    }

    if (transaction)
    {
      goto LABEL_5;
    }
  }

  v9 = v14[5] == 0;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __36__SYDCoreDataStore_saveTransaction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 transactionContext];
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  [v2 saveContext:v3 reason:@"saving transaction" includingTransactionContext:1 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

- (void)transactionStoreDidSave:(id)save
{
  v4 = SYDGetCoreDataLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_26C384000, v4, OS_LOG_TYPE_INFO, "A transaction store saved, clearing cached contexts", v5, 2u);
  }

  [(SYDCoreDataStore *)self clearContexts];
}

- (void)handleCorruptionIfNecessaryFromError:(id)error inPersistentStoreCoordinator:(id)coordinator
{
  errorCopy = error;
  coordinatorCopy = coordinator;
  persistentContainerQueue = [(SYDCoreDataStore *)self persistentContainerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__SYDCoreDataStore_handleCorruptionIfNecessaryFromError_inPersistentStoreCoordinator___block_invoke;
  block[3] = &unk_279D2F768;
  block[4] = self;
  v12 = errorCopy;
  v13 = coordinatorCopy;
  v9 = coordinatorCopy;
  v10 = errorCopy;
  dispatch_sync(persistentContainerQueue, block);
}

void __86__SYDCoreDataStore_handleCorruptionIfNecessaryFromError_inPersistentStoreCoordinator___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _queue_handleCorruptionIfNecessaryFromError:*(a1 + 40) inPersistentStoreCoordinator:*(a1 + 48)])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
  }
}

+ (BOOL)isCorruptionError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA050]])
  {
    code = [errorCopy code];

    if (code == 259)
    {
      v6 = SYDGetCoreDataLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        +[SYDCoreDataStore isCorruptionError:];
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  userInfo = [errorCopy userInfo];
  v8 = *MEMORY[0x277CBE2C8];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE2C8]];
  v10 = [v9 isEqual:&unk_287CF2478];

  if (v10)
  {
    v6 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[SYDCoreDataStore isCorruptionError:];
    }
  }

  else
  {
    userInfo2 = [errorCopy userInfo];
    v12 = [userInfo2 objectForKeyedSubscript:v8];
    v13 = [v12 isEqual:&unk_287CF2490];

    if (!v13)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v6 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[SYDCoreDataStore isCorruptionError:];
    }
  }

LABEL_12:

  v14 = 1;
LABEL_13:

  return v14;
}

- (BOOL)_queue_handleCorruptionIfNecessaryFromError:(id)error inPersistentStoreCoordinator:(id)coordinator
{
  errorCopy = error;
  coordinatorCopy = coordinator;
  persistentContainerQueue = [(SYDCoreDataStore *)self persistentContainerQueue];
  dispatch_assert_queue_V2(persistentContainerQueue);

  if (errorCopy && [objc_opt_class() isCorruptionError:errorCopy])
  {
    v9 = SYDGetCoreDataLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [SYDCoreDataStore _queue_handleCorruptionIfNecessaryFromError:inPersistentStoreCoordinator:];
    }

    [(SYDCoreDataStore *)self _queue_destroyPersistentStoreInPersistentStoreCoordinator:coordinatorCopy];
    if ([(SYDCoreDataStore *)self shouldSendAnalytics])
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      domain = [errorCopy domain];
      [dictionary setObject:domain forKeyedSubscript:@"errorDomain"];

      v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      [dictionary setObject:v12 forKeyedSubscript:@"errorCode"];

      userInfo = [errorCopy userInfo];
      v14 = *MEMORY[0x277CBE2C8];
      v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE2C8]];

      if (v15)
      {
        userInfo2 = [errorCopy userInfo];
        v17 = [userInfo2 objectForKeyedSubscript:v14];
        [dictionary setObject:v17 forKeyedSubscript:@"sqliteError"];
      }

      AnalyticsSendEvent();
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (BOOL)isInvalidTokenError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277CCA050]])
  {

    goto LABEL_7;
  }

  if ([errorCopy code] != 134301 && objc_msgSend(errorCopy, "code") != 134501)
  {
    code = [errorCopy code];

    if (code == 4864)
    {
      goto LABEL_5;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v5 = 1;
LABEL_8:

  return v5;
}

- (void)initWithURL:fileProtectionType:persistentContainer:isTransactional:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [v4 handleFailureInMethod:v0 object:v1 file:@"SYDCoreDataStore.m" lineNumber:69 description:{@"Cannot initialize %@ with a nil URL", v3}];
}

- (void)initWithURL:(uint64_t)a1 fileProtectionType:(uint64_t)a2 persistentContainer:(void *)a3 isTransactional:(void *)a4 .cold.2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SYDCoreDataStore.m" lineNumber:81 description:@"Cannot create a transactional context without a persistent container"];

  *a4 = *a3;
}

- (void)initWithURL:fileProtectionType:persistentContainer:isTransactional:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)keyValueForKey:inStoreWithIdentifier:createIfNecessary:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Found multiple key values for the same key (%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)keyValueForKey:inStoreWithIdentifier:createIfNecessary:error:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_14_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __63__SYDCoreDataStore_keyValuesForKeyIDs_createIfNecessary_error___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)keyValueForRecordName:inStoreWithIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __70__SYDCoreDataStore_keyValueForRecordName_inStoreWithIdentifier_error___block_invoke_cold_1(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __70__SYDCoreDataStore_keyValueForRecordName_inStoreWithIdentifier_error___block_invoke_cold_2(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)keyValueFromManagedKeyValue:inStoreWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v1 file:@"SYDCoreDataStore.m" lineNumber:218 description:{@"Trying load a nil key in store <(%@)>", v0}];
}

- (void)keyValueFromManagedKeyValue:inStoreWithIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_17();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_21();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)keyValueFromManagedKeyValue:inStoreWithIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_13_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 key];
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_saveKeyValue:inStoreWithIdentifier:excludeFromChangeTracking:enforceQuota:forceCreateNewRow:error:.cold.1()
{
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:v3 object:v1 file:@"SYDCoreDataStore.m" lineNumber:241 description:{@"Trying to save a nil %@ in %@", v5, v0}];
}

- (void)_saveKeyValue:inStoreWithIdentifier:excludeFromChangeTracking:enforceQuota:forceCreateNewRow:error:.cold.2()
{
  OUTLINED_FUNCTION_17();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_21();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __98__SYDCoreDataStore__saveKeyValues_excludeFromChangeTracking_enforceQuota_forceCreateNewRow_error___block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error fetching managed key values while saving: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeKeyValueForKey:inStoreWithIdentifier:excludeFromChangeTracking:error:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_21();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)removeKeyValueForKey:inStoreWithIdentifier:excludeFromChangeTracking:error:.cold.2()
{
  OUTLINED_FUNCTION_17();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_21();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)removeKeyValueForKey:inStoreWithIdentifier:excludeFromChangeTracking:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __95__SYDCoreDataStore_removeKeyValueForKey_inStoreWithIdentifier_excludeFromChangeTracking_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error fetching existing key value when removing a key value: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __95__SYDCoreDataStore_removeKeyValueForKey_inStoreWithIdentifier_excludeFromChangeTracking_error___block_invoke_cold_2(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

void __95__SYDCoreDataStore_removeKeyValueForKey_inStoreWithIdentifier_excludeFromChangeTracking_error___block_invoke_cold_3(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeKeyValueForRecordName:inStoreWithIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_17();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_21();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)removeKeyValueForRecordName:inStoreWithIdentifier:error:.cold.2()
{
  OUTLINED_FUNCTION_17();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_21();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)removeKeyValueForRecordName:inStoreWithIdentifier:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__SYDCoreDataStore_removeKeyValueForRecordName_inStoreWithIdentifier_error___block_invoke_cold_1(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __76__SYDCoreDataStore_removeKeyValueForRecordName_inStoreWithIdentifier_error___block_invoke_cold_2(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __87__SYDCoreDataStore_serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error fetching sync anchor: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __87__SYDCoreDataStore_serverSyncAnchorSystemFieldsRecordDataForStoreWithIdentifier_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveServerSyncAnchorSystemFieldsRecordData:forStoreWithIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)saveServerSyncAnchorSystemFieldsRecordData:forStoreWithIdentifier:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __92__SYDCoreDataStore_saveServerSyncAnchorSystemFieldsRecordData_forStoreWithIdentifier_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deleteDataForStoresMatchingPredicate:context:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __71__SYDCoreDataStore_deleteDataForStoresMatchingPredicate_context_error___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__SYDCoreDataStore_deleteDataForStoresMatchingPredicate_context_error___block_invoke_cold_2(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_13_1(&dword_26C384000, v2, v3, "Failed to delete data for stores matching predicate (%@): %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __62__SYDCoreDataStore_allRecordNamesInStoreWithIdentifier_error___block_invoke_cold_1(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_13_1(&dword_26C384000, v2, v3, "Failed to fetch record names for store <(%@)>: %@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)allStoreIdentifiersWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)allStoreIdentifiersWithError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__SYDCoreDataStore_allStoreIdentifiersWithError___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8(&dword_26C384000, v1, v2, "Failed to fetch all store identifiers: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __93__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier_error___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __93__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier_error___block_invoke_cold_2(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_13_1(&dword_26C384000, v2, v3, "Failed to clear server records for store <(%@)>: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __93__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllKeyValuesInStoreWithIdentifier_error___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__SYDCoreDataStore_numberOfKeyValuesInStoreWithIdentifier_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13_0();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 predicate];
  v3 = *(*(*v0 + 8) + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_22();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)currentChangeTokenForStoreIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__SYDCoreDataStore_currentChangeTokenForStoreIdentifier_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Failed to archive history token to NSData: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __63__SYDCoreDataStore_currentChangeTokenForStoreIdentifier_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_14_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)changedKeysForStoreIdentifier:sinceChangeToken:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)changedKeysForStoreIdentifier:(uint64_t)a3 sinceChangeToken:(os_log_t)log error:.cold.2(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_26C384000, log, OS_LOG_TYPE_DEBUG, "Found %ld changed keys for store <(%@)>", buf, 0x16u);
}

void __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error unarchiving token from data: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_2(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_0(a1, a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_13_1(&dword_26C384000, v2, v3, "Error fetching persistent history for (%@): %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_17();
  v12 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = [v0 firstObject];
  v4 = objc_opt_class();
  v11 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_22();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_13_0();
  v9 = *MEMORY[0x277D85DE8];
  [v1 count];
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_7(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_24();
  *v3 = 138412290;
  *v4 = v5;
  _os_log_fault_impl(&dword_26C384000, v7, OS_LOG_TYPE_FAULT, "Error fetching store properties when validating deleted keys: %@", v6, 0xCu);
}

void __73__SYDCoreDataStore_changedKeysForStoreIdentifier_sinceChangeToken_error___block_invoke_cold_9(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8(&dword_26C384000, v1, v2, "Error fetching properties when fetching change history: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)clearServerSystemFieldsRecordsForAllStoresWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __72__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllStoresWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __72__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllStoresWithError___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Failed to clear key value server records for all stores: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllStoresWithError___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __72__SYDCoreDataStore_clearServerSystemFieldsRecordsForAllStoresWithError___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Failed to clear sync anchor server records for all stores: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__SYDCoreDataStore_setACAccountIdentifier_error___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_13(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDidMigrateFromPlists:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__SYDCoreDataStore_setDidMigrateFromPlists_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error fetching managed database while setting didMigrateFromPlists: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __50__SYDCoreDataStore_setDidMigrateFromPlists_error___block_invoke_cold_2(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setFailedMigrationCount:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__SYDCoreDataStore_setFailedMigrationCount_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error fetching managed database while setting failedMigrationCount: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __50__SYDCoreDataStore_setFailedMigrationCount_error___block_invoke_cold_2(__int16 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setHasPerformedOneTimeDataSeparatedLocalDataReset:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __76__SYDCoreDataStore_setHasPerformedOneTimeDataSeparatedLocalDataReset_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error fetching managed database while setting hasPerformedOneTimeDataSeparatedLocalDataReset: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __76__SYDCoreDataStore_setHasPerformedOneTimeDataSeparatedLocalDataReset_error___block_invoke_cold_2(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)dictionaryRepresentationForStoreWithIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__SYDCoreDataStore_dictionaryRepresentationForStoreWithIdentifier_error___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8(&dword_26C384000, v1, v2, "Error fetching key value properties for dictionary representation: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)saveSyncEngineStateSerialization:(void *)a1 error:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 length];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineStateSerializationWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveDeprecatedSyncEngineMetadata:(void *)a1 error:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 length];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)deprecatedSyncEngineMetadataWithError:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)managedDatabaseCreateIfNecessary:inContext:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Found multiple managed databases in the CoreData database %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)managedDatabaseCreateIfNecessary:inContext:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Error fetching managed database: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)managedDatabaseCreateIfNecessary:inContext:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)managedStoreWithIdentifier:createIfNecessary:inContext:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Found multiple stores for the same identifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)managedStoreWithIdentifier:createIfNecessary:inContext:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Error fetching managed store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)managedStoreWithIdentifier:createIfNecessary:inContext:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)managedKeyValuesForKeyIDs:inContext:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error fetching key values: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)managedKeyValuesMatchingPredicate:inContext:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13_1(&dword_26C384000, v0, v1, "Error fetching managed keyValue with predicate %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)contextForStoreIdentifier:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Could not create context for %@ without a persistent container", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveContext:reason:includingTransactionContext:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveContext:reason:includingTransactionContext:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_13_1(&dword_26C384000, v0, v1, "Error saving context (%@): %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)saveContext:reason:includingTransactionContext:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26C384000, v0, OS_LOG_TYPE_ERROR, "Error saving context (%@): %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)saveContext:reason:includingTransactionContext:error:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_loadPersistentContainerWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_loadPersistentContainerWithError:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Error loading persistent store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Disk is full while loading persistent store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "File protection error loading persistent store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke_194_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Failed to load persistent store on second try: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__SYDCoreDataStore__loadPersistentContainerWithError___block_invoke_194_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__SYDCoreDataStore_managedObjectModel__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__SYDCoreDataStore_managedObjectModel__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__SYDCoreDataStore_managedObjectModel__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__SYDCoreDataStore_destroyPersistentStore__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Not destroying persistent store due to error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__SYDCoreDataStore_destroyPersistentStore__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_14_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_queue_destroyPersistentStoreInPersistentStoreCoordinator:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 URL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_destroyPersistentStoreInPersistentStoreCoordinator:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Error destroying persistent store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_destroyPersistentStoreInPersistentStoreCoordinator:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 URL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fileSizeBytes
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)transactionalStoreWithError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error getting persistent container for creating a transactional store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveTransaction:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveTransaction:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)isCorruptionError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Database was corrupt with SQLITE_CORRUPT: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)isCorruptionError:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Database was corrupt with SQLITE_NOTADB: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)isCorruptionError:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Database was corrupt with NSFileReadCorruptFileError: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleCorruptionIfNecessaryFromError:inPersistentStoreCoordinator:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_15_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

@end