@interface PPTrialWrapper
+ (PPTrialWrapper)sharedInstance;
+ (id)sharedTrialClient;
- (BOOL)hasFactor:(id)factor namespaceName:(id)name;
- (BOOL)hasOverrideForFileFactor:(id)factor namespaceName:(id)name;
- (NSString)concatenatedTreatmentNames;
- (PPTrialWrapper)initWithSettings:(id)settings database:(id)database trialClient:(id)client;
- (id)_loadMLModelForModelName:(id)name namespaceName:(id)namespaceName error:(id *)error;
- (id)addUpdateHandlerForNamespaceName:(id)name block:(id)block;
- (id)defaultFilepathForFactor:(id)factor namespaceName:(id)name;
- (id)filepathForFactorName:(id)name namespaceName:(id)namespaceName isDirectory:(BOOL)directory;
- (id)lastTreatmentUpdate;
- (id)lastTreatmentUpdateForNamespaceName:(id)name;
- (id)lazyPlistForFactorName:(id)name namespaceName:(id)namespaceName error:(id *)error;
- (id)mlModelPathForModelName:(id)name namespaceName:(id)namespaceName error:(id *)error;
- (id)plistForFactorName:(id)name namespaceName:(id)namespaceName;
- (id)readableTreatmentsMapping;
- (id)treatmentNameForNamespaceName:(id)name;
- (id)trieForFactorName:(id)name namespaceName:(id)namespaceName;
- (unsigned)treatmentsHash;
- (void)_addDefaultUpdateHandlersForAllNamespacesWithGuardedData:(id)data;
- (void)_updateConcatenatedTreatmentNamesAndHash;
- (void)callRegisteredUpdateHandlers;
- (void)callRegisteredUpdateHandlersForNamespaceName:(id)name;
- (void)clearOverrideFilepathForFileFactor:(id)factor namespaceName:(id)name;
- (void)dealloc;
- (void)overrideFilepathForFileFactor:(id)factor namespaceName:(id)name path:(id)path;
- (void)removeUpdateHandlerForToken:(id)token;
@end

@implementation PPTrialWrapper

+ (PPTrialWrapper)sharedInstance
{
  pthread_mutex_lock(&sharedInstance_lock_24433);
  if (sharedInstance_instance_24434)
  {
LABEL_2:
    v2 = 1;
    goto LABEL_20;
  }

  v3 = +[PPSettings sharedInstance];
  if (v3)
  {
    v4 = +[PPSQLDatabase sharedInstance];
    if (v4)
    {
      v5 = +[PPTrialWrapper sharedTrialClient];
      if (v5)
      {
        v6 = [[PPTrialWrapper alloc] initWithSettings:v3 database:v4 trialClient:v5];
        v7 = sharedInstance_instance_24434;
        sharedInstance_instance_24434 = v6;

        if (!sharedInstance_instance_24434)
        {
          v8 = pp_default_log_handle();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *v13 = 0;
            _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_INFO, "PPTrialWrapper sharedInstance did not initialize, will try again later. Device may be Class C locked.", v13, 2u);
          }
        }

        goto LABEL_2;
      }

      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_INFO, "PPTrialWrapper sharedInstance failed to creare Trial client.", v14, 2u);
      }
    }

    else
    {
      v4 = pp_default_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "PPTrialWrapper sharedInstance failed to get database singleton.", v15, 2u);
      }
    }
  }

  else
  {
    v3 = pp_default_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "PPTrialWrapper sharedInstance failed to get settings singleton.", buf, 2u);
    }
  }

  v2 = 0;
LABEL_20:
  v10 = sharedInstance_instance_24434;
  pthread_mutex_unlock(&sharedInstance_lock_24433);
  if (v2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)lastTreatmentUpdate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24326;
  v10 = __Block_byref_object_dispose__24327;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__PPTrialWrapper_lastTreatmentUpdate__block_invoke;
  v5[3] = &unk_278978BE0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)concatenatedTreatmentNames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24326;
  v10 = __Block_byref_object_dispose__24327;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PPTrialWrapper_concatenatedTreatmentNames__block_invoke;
  v5[3] = &unk_278978BE0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)trieForFactorName:(id)name namespaceName:(id)namespaceName
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(PPTrialWrapper *)self filepathForFactor:nameCopy namespaceName:namespaceName];
  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_INFO, "Loading trie from %@.", &v13, 0xCu);
  }

  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v7];
  }

  else
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = nameCopy;
      _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "Failed to read path for trie %@.", &v13, 0xCu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_loadMLModelForModelName:(id)name namespaceName:(id)namespaceName error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9 = [(PPTrialWrapper *)self mlModelPathForModelName:nameCopy namespaceName:namespaceName error:error];
  if (v9)
  {
    v10 = objc_opt_new();
    [v10 setComputeUnits:0];
    v11 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v9 configuration:v10 error:error];
  }

  else
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = nameCopy;
      _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPTrialWrapper: unable to resolve compiled URL for model %@", &v15, 0xCu);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)mlModelPathForModelName:(id)name namespaceName:(id)namespaceName error:(id *)error
{
  error = [(PPTrialWrapper *)self directoryForFactorName:name namespaceName:namespaceName, error];
  if (error)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)callRegisteredUpdateHandlers
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [&unk_284785DF0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(&unk_284785DF0);
        }

        [(PPTrialWrapper *)self callRegisteredUpdateHandlersForNamespaceName:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [&unk_284785DF0 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)callRegisteredUpdateHandlersForNamespaceName:(id)name
{
  v3 = MEMORY[0x277CCACA8];
  nameCopy = name;
  nameCopy = [[v3 alloc] initWithFormat:@"com.apple.trial.NamespaceUpdate.%@", nameCopy];

  v5 = nameCopy;
  notify_post([nameCopy UTF8String]);
}

- (void)clearOverrideFilepathForFileFactor:(id)factor namespaceName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  nameCopy = name;
  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = factorCopy;
    v21 = 2112;
    v22 = nameCopy;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_INFO, "Cleared filepath override for file factor %@ in namespace %@", buf, 0x16u);
  }

  lock = self->_lock;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __67__PPTrialWrapper_clearOverrideFilepathForFileFactor_namespaceName___block_invoke;
  v16 = &unk_278978B18;
  v17 = nameCopy;
  v18 = factorCopy;
  v10 = factorCopy;
  v11 = nameCopy;
  [(_PASLock *)lock runWithLockAcquired:&v13];
  [(PPTrialWrapper *)self callRegisteredUpdateHandlersForNamespaceName:v11, v13, v14, v15, v16];

  v12 = *MEMORY[0x277D85DE8];
}

void __67__PPTrialWrapper_clearOverrideFilepathForFileFactor_namespaceName___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6[3] objectForKeyedSubscript:*(a1 + 32)];

  if (!v3)
  {
    v4 = objc_opt_new();
    [v6[3] setObject:v4 forKeyedSubscript:*(a1 + 32)];
  }

  v5 = [v6[3] objectForKeyedSubscript:*(a1 + 32)];
  [v5 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

- (BOOL)hasOverrideForFileFactor:(id)factor namespaceName:(id)name
{
  factorCopy = factor;
  nameCopy = name;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__24326;
  v22 = __Block_byref_object_dispose__24327;
  v23 = 0;
  lock = self->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__PPTrialWrapper_hasOverrideForFileFactor_namespaceName___block_invoke;
  v14[3] = &unk_278978CD0;
  v17 = &v18;
  v9 = nameCopy;
  v15 = v9;
  v10 = factorCopy;
  v16 = v10;
  [(_PASLock *)lock runWithLockAcquired:v14];
  v11 = v16;
  v12 = v19[5];

  _Block_object_dispose(&v18, 8);
  return v12 != 0;
}

void __57__PPTrialWrapper_hasOverrideForFileFactor_namespaceName___block_invoke(void *a1, uint64_t a2)
{
  v6 = [*(a2 + 24) objectForKeyedSubscript:a1[4]];
  v3 = [v6 objectForKeyedSubscript:a1[5]];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)overrideFilepathForFileFactor:(id)factor namespaceName:(id)name path:(id)path
{
  v27 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  nameCopy = name;
  pathCopy = path;
  v11 = pp_default_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v22 = factorCopy;
    v23 = 2112;
    v24 = nameCopy;
    v25 = 2112;
    v26 = pathCopy;
    _os_log_impl(&dword_23224A000, v11, OS_LOG_TYPE_INFO, "Overriden filepath for file factor %@ in namespace %@ to %@", buf, 0x20u);
  }

  lock = self->_lock;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__PPTrialWrapper_overrideFilepathForFileFactor_namespaceName_path___block_invoke;
  v17[3] = &unk_278978CA8;
  v18 = nameCopy;
  v19 = factorCopy;
  v20 = pathCopy;
  v13 = pathCopy;
  v14 = factorCopy;
  v15 = nameCopy;
  [(_PASLock *)lock runWithLockAcquired:v17];
  [(PPTrialWrapper *)self callRegisteredUpdateHandlersForNamespaceName:v15];

  v16 = *MEMORY[0x277D85DE8];
}

void __67__PPTrialWrapper_overrideFilepathForFileFactor_namespaceName_path___block_invoke(void *a1, void *a2)
{
  v7 = a2;
  v3 = [v7[3] objectForKeyedSubscript:a1[4]];

  if (!v3)
  {
    v4 = objc_opt_new();
    [v7[3] setObject:v4 forKeyedSubscript:a1[4]];
  }

  v5 = a1[6];
  v6 = [v7[3] objectForKeyedSubscript:a1[4]];
  [v6 setObject:v5 forKeyedSubscript:a1[5]];
}

- (id)lazyPlistForFactorName:(id)name namespaceName:(id)namespaceName error:(id *)error
{
  v8 = [(PPTrialWrapper *)self filepathForFactor:name namespaceName:namespaceName];
  if (![v8 length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPTrialWrapper.m" lineNumber:402 description:{@"Invalid parameter not satisfying: %@", @"configPath.length > 0"}];
  }

  v9 = [MEMORY[0x277D425D8] dictionaryWithPath:v8 error:error];

  return v9;
}

- (id)plistForFactorName:(id)name namespaceName:(id)namespaceName
{
  v6 = [(PPTrialWrapper *)self filepathForFactor:name namespaceName:namespaceName];
  if (![v6 length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPTrialWrapper.m" lineNumber:393 description:{@"Invalid parameter not satisfying: %@", @"configPath.length > 0"}];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v6];

  return v7;
}

- (id)filepathForFactorName:(id)name namespaceName:(id)namespaceName isDirectory:(BOOL)directory
{
  directoryCopy = directory;
  v42 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  namespaceNameCopy = namespaceName;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__24326;
  v36 = __Block_byref_object_dispose__24327;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  lock = self->_lock;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66__PPTrialWrapper_filepathForFactorName_namespaceName_isDirectory___block_invoke;
  v23[3] = &unk_278978C80;
  v23[4] = self;
  v26 = &v28;
  v11 = namespaceNameCopy;
  v24 = v11;
  v12 = nameCopy;
  v25 = v12;
  v27 = &v32;
  [(_PASLock *)lock runWithLockAcquired:v23];
  if (v33[5])
  {
    v13 = pp_default_log_handle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v39 = v12;
      v40 = 2112;
      v41 = v11;
      _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "PPTrialWrapper: obeying override for factor %@ in namespace %@", buf, 0x16u);
    }

    v14 = v33[5];
LABEL_9:
    path = v14;
    goto LABEL_10;
  }

  if (*(v29 + 24) == 1)
  {
    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v39 = v12;
      v40 = 2112;
      v41 = v11;
      _os_log_debug_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEBUG, "PPTrialWrapper: using default file for factor %@ in namespace %@", buf, 0x16u);
    }

    v14 = [(PPTrialWrapper *)self defaultFilepathForFactor:v12 namespaceName:v11];
    goto LABEL_9;
  }

  v19 = [(PPTrialWrapper *)self levelForFactor:v12 namespaceName:v11];
  v20 = v19;
  if (v19)
  {
    if (directoryCopy)
    {
      [v19 directoryValue];
    }

    else
    {
      [v19 fileValue];
    }
    v21 = ;
    path = [v21 path];
  }

  else
  {
    v22 = pp_default_log_handle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v12;
      v40 = 2112;
      v41 = v11;
      _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "PPTrialWrapper: Received nil factor from Trial for factor %@ in namespace %@, falling back to default", buf, 0x16u);
    }

    path = [(PPTrialWrapper *)self defaultFilepathForFactor:v12 namespaceName:v11];
  }

LABEL_10:
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  v17 = *MEMORY[0x277D85DE8];

  return path;
}

void __66__PPTrialWrapper_filepathForFactorName_namespaceName_isDirectory___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (*(a1[4] + 24) == 1)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v11 = v3;
    v4 = [v3[3] objectForKeyedSubscript:a1[5]];
    v3 = v11;
    if (v4)
    {
      v5 = [v11[3] objectForKeyedSubscript:a1[5]];
      v6 = [v5 objectForKeyedSubscript:a1[6]];

      v3 = v11;
      if (v6)
      {
        v7 = [v11[3] objectForKeyedSubscript:a1[5]];
        v8 = [v7 objectForKeyedSubscript:a1[6]];
        v9 = *(a1[8] + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v3 = v11;
      }
    }
  }
}

- (id)defaultFilepathForFactor:(id)factor namespaceName:(id)name
{
  namespaceNamesIdsDict = self->_namespaceNamesIdsDict;
  factorCopy = factor;
  v7 = [(NSDictionary *)namespaceNamesIdsDict objectForKeyedSubscript:name];
  v8 = +[PPPaths defaultAssetPathForNamespaceId:factorName:](PPPaths, "defaultAssetPathForNamespaceId:factorName:", [v7 intValue], factorCopy);

  return v8;
}

- (unsigned)treatmentsHash
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__PPTrialWrapper_treatmentsHash__block_invoke;
  v5[3] = &unk_278978BE0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateConcatenatedTreatmentNamesAndHash
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [&unk_284785DD8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(&unk_284785DD8);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [(PPTrialWrapper *)self treatmentNameForNamespaceName:v8];
        v11 = [(NSDictionary *)self->_namespaceNamesIdsDict objectForKeyedSubscript:v8];
        intValue = [v11 intValue];

        [v3 appendFormat:@", %d:%@", intValue, v10];
        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_284785DD8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
  v15 = [v3 stringByTrimmingCharactersInSet:v14];

  objc_autoreleasePoolPop(v13);
  if ([v15 UTF8String])
  {
    v16 = _PASMurmur3_x86_32();
  }

  else
  {
    v17 = pp_default_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_23224A000, v17, OS_LOG_TYPE_FAULT, "PPTrialWrapper: unable to compute treatment hash", buf, 2u);
    }

    v16 = -1;
  }

  lock = self->_lock;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__PPTrialWrapper__updateConcatenatedTreatmentNamesAndHash__block_invoke;
  v21[3] = &unk_278978C58;
  v22 = v15;
  v23 = v16;
  v19 = v15;
  [(_PASLock *)lock runWithLockAcquired:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __58__PPTrialWrapper__updateConcatenatedTreatmentNamesAndHash__block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 5, *(a1 + 32));
  v4 = a2;
  *(v4 + 12) = *(a1 + 40);
}

- (id)readableTreatmentsMapping
{
  v37[10] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v35 = [(PPTrialWrapper *)self treatmentNameForNamespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL"];
  v34 = [v3 initWithFormat:@"Global: %@", v35];
  v37[0] = v34;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v33 = [(PPTrialWrapper *)self treatmentNameForNamespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];
  v32 = [v4 initWithFormat:@"Topics: %@", v33];
  v37[1] = v32;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v31 = [(PPTrialWrapper *)self treatmentNameForNamespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES"];
  v30 = [v5 initWithFormat:@"Named Entities: %@", v31];
  v37[2] = v30;
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v29 = [(PPTrialWrapper *)self treatmentNameForNamespaceName:@"PERSONALIZATION_PORTRAIT_LOCATIONS"];
  v28 = [v6 initWithFormat:@"Locations: %@", v29];
  v37[3] = v28;
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v27 = [(PPTrialWrapper *)self treatmentNameForNamespaceName:@"PERSONALIZATION_PORTRAIT_CONTACTS"];
  v26 = [v7 initWithFormat:@"Contacts: %@", v27];
  v37[4] = v26;
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v25 = [(PPTrialWrapper *)self treatmentNameForNamespaceName:@"PERSONALIZATION_PORTRAIT_EVENTS"];
  v9 = [v8 initWithFormat:@"Events: %@", v25];
  v37[5] = v9;
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [(PPTrialWrapper *)self treatmentNameForNamespaceName:@"PERSONALIZATION_PORTRAIT_CONNECTIONS"];
  v12 = [v10 initWithFormat:@"Connections: %@", v11];
  v37[6] = v12;
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [(PPTrialWrapper *)self treatmentNameForNamespaceName:@"PERSONALIZATION_PORTRAIT_QUICKTYPE"];
  v15 = [v13 initWithFormat:@"Quicktype: %@", v14];
  v37[7] = v15;
  v16 = objc_alloc(MEMORY[0x277CCACA8]);
  v17 = [(PPTrialWrapper *)self treatmentNameForNamespaceName:@"PERSONALIZATION_PORTRAIT_SOCIAL_HIGHLIGHT"];
  v18 = [v16 initWithFormat:@"Social Highlights: %@", v17];
  v37[8] = v18;
  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v20 = [(PPTrialWrapper *)self treatmentNameForNamespaceName:@"PERSONALIZATION_PORTRAIT_UNIVERSAL_SEARCH"];
  v21 = [v19 initWithFormat:@"Universal Search: %@", v20];
  v37[9] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:10];

  objc_autoreleasePoolPop(context);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)hasFactor:(id)factor namespaceName:(id)name
{
  factorCopy = factor;
  nameCopy = name;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__PPTrialWrapper_hasFactor_namespaceName___block_invoke;
  v12[3] = &unk_278978C30;
  v9 = nameCopy;
  v13 = v9;
  v10 = factorCopy;
  v14 = v10;
  selfCopy = self;
  v16 = &v17;
  [(_PASLock *)lock runWithLockAcquired:v12];
  LOBYTE(self) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return self;
}

void __42__PPTrialWrapper_hasFactor_namespaceName___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13[3] objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  v5 = v13;
  if (!v4)
  {
    if (*(*(a1 + 48) + 24) == 1)
    {
      v6 = [MEMORY[0x277CCAA00] defaultManager];
      v7 = [*(a1 + 48) defaultFilepathForFactor:*(a1 + 40) namespaceName:*(a1 + 32)];
      if ([v6 fileExistsAtPath:v7])
      {
      }

      else
      {
        v8 = [v13[3] objectForKeyedSubscript:*(a1 + 32)];
        v9 = [v8 objectForKeyedSubscript:*(a1 + 40)];

        if (v9)
        {
          *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_10:
          v5 = v13;
          goto LABEL_11;
        }
      }
    }

    if ((*(*(a1 + 48) + 24) & 1) != 0 || ([v13[3] objectForKeyedSubscript:*(a1 + 32)], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", *(a1 + 40)), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      v12 = [*(*(a1 + 48) + 40) levelForFactor:*(a1 + 40) withNamespaceName:*(a1 + 32)];
      *(*(*(a1 + 56) + 8) + 24) = v12 != 0;
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (id)treatmentNameForNamespaceName:(id)name
{
  v3 = [(TRIClient *)self->_trialClient levelForFactor:@"treatment_name" withNamespaceName:name];
  stringValue = [v3 stringValue];
  v5 = stringValue;
  if (stringValue)
  {
    v6 = stringValue;
  }

  else
  {
    v6 = @"unknown-treatment";
  }

  v7 = v6;

  return v6;
}

- (id)addUpdateHandlerForNamespaceName:(id)name block:(id)block
{
  blockCopy = block;
  trialClient = self->_trialClient;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__PPTrialWrapper_addUpdateHandlerForNamespaceName_block___block_invoke;
  v15[3] = &unk_278978C08;
  v8 = blockCopy;
  v16 = v8;
  v9 = [(TRIClient *)trialClient addUpdateHandlerForNamespaceName:name usingBlock:v15];
  v10 = v9;
  if (v9)
  {
    lock = self->_lock;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__PPTrialWrapper_addUpdateHandlerForNamespaceName_block___block_invoke_2;
    v13[3] = &unk_278978B40;
    v14 = v9;
    [(_PASLock *)lock runWithLockAcquired:v13];
  }

  return v10;
}

- (void)removeUpdateHandlerForToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    [(TRIClient *)self->_trialClient removeUpdateHandlerForToken:tokenCopy];
    lock = self->_lock;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__PPTrialWrapper_removeUpdateHandlerForToken___block_invoke;
    v6[3] = &unk_278978B40;
    v7 = tokenCopy;
    [(_PASLock *)lock runWithLockAcquired:v6];
  }
}

- (id)lastTreatmentUpdateForNamespaceName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__24326;
  v22 = __Block_byref_object_dispose__24327;
  v23 = 0;
  db = self->_db;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __54__PPTrialWrapper_lastTreatmentUpdateForNamespaceName___block_invoke;
  v15 = &unk_278978BB8;
  v17 = &v18;
  v6 = nameCopy;
  v16 = v6;
  [(PPSQLDatabase *)db readTransactionWithClient:6 block:&v12];
  if (v19[5])
  {
    v7 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v19[5] doubleValue];
    v8 = [v7 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v9 = pp_default_log_handle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEFAULT, "PPTrialWrapper: namespace %@ has never been updated.", buf, 0xCu);
    }

    v8 = 0;
  }

  _Block_object_dispose(&v18, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

void __54__PPTrialWrapper_lastTreatmentUpdateForNamespaceName___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v8 = [[v3 alloc] initWithFormat:@"trial_update_%@", *(a1 + 32)];
  v5 = [PPSQLKVStore numberForKey:v8 transaction:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)_addDefaultUpdateHandlersForAllNamespacesWithGuardedData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  objc_initWeak(&location, self);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_namespaceNamesIdsDict;
  v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        trialClient = self->_trialClient;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __75__PPTrialWrapper__addDefaultUpdateHandlersForAllNamespacesWithGuardedData___block_invoke;
        v13[3] = &unk_278978B90;
        objc_copyWeak(&v16, &location);
        v14 = dataCopy;
        v15 = v8;
        v10 = [(TRIClient *)trialClient addUpdateHandlerForNamespaceName:v8 usingBlock:v13];
        if (v10)
        {
          [dataCopy[2] addObject:v10];
        }

        objc_destroyWeak(&v16);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSDictionary *)obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  objc_destroyWeak(&location);
  v11 = *MEMORY[0x277D85DE8];
}

void __75__PPTrialWrapper__addDefaultUpdateHandlersForAllNamespacesWithGuardedData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = pp_default_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEFAULT, "PPTrialWrapper: invoking refresh", buf, 2u);
    }

    v4 = objc_opt_new();
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    [WeakRetained[5] refresh];
    [WeakRetained _updateConcatenatedTreatmentNamesAndHash];
    v7 = WeakRetained[4];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__PPTrialWrapper__addDefaultUpdateHandlersForAllNamespacesWithGuardedData___block_invoke_90;
    v8[3] = &unk_278978B68;
    v8[4] = *(a1 + 40);
    [v7 writeTransactionWithClient:6 block:v8];
  }
}

void __75__PPTrialWrapper__addDefaultUpdateHandlersForAllNamespacesWithGuardedData___block_invoke_90(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v7 = objc_opt_new();
  [v7 timeIntervalSince1970];
  v5 = [v3 numberWithDouble:?];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"trial_update_%@", *(a1 + 32)];
  [PPSQLKVStore setNumber:v5 forKey:v6 transaction:v4];
}

- (void)dealloc
{
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__PPTrialWrapper_dealloc__block_invoke;
  v5[3] = &unk_278978B40;
  v5[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v4.receiver = self;
  v4.super_class = PPTrialWrapper;
  [(PPTrialWrapper *)&v4 dealloc];
}

void __25__PPTrialWrapper_dealloc__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a2 + 16);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(a1 + 32) + 40) removeUpdateHandlerForToken:{*(*(&v9 + 1) + 8 * v7++), v9}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (PPTrialWrapper)initWithSettings:(id)settings database:(id)database trialClient:(id)client
{
  settingsCopy = settings;
  databaseCopy = database;
  clientCopy = client;
  v27.receiver = self;
  v27.super_class = PPTrialWrapper;
  v11 = [(PPTrialWrapper *)&v27 init];
  v12 = v11;
  if (v11)
  {
    namespaceNamesIdsDict = v11->_namespaceNamesIdsDict;
    v11->_namespaceNamesIdsDict = &unk_284786040;

    v14 = objc_alloc(MEMORY[0x277D425F8]);
    v15 = objc_opt_new();
    v16 = [v14 initWithGuardedData:v15];
    lock = v12->_lock;
    v12->_lock = v16;

    v12->_useDefaultFiles = [settingsCopy trialUseDefaultFiles];
    objc_storeStrong(&v12->_db, database);
    objc_storeStrong(&v12->_trialClient, client);
    v18 = v12->_lock;
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __56__PPTrialWrapper_initWithSettings_database_trialClient___block_invoke;
    v24 = &unk_278978B18;
    v25 = settingsCopy;
    v19 = v12;
    v26 = v19;
    [(_PASLock *)v18 runWithLockAcquired:&v21];
    [(PPTrialWrapper *)v19 _updateConcatenatedTreatmentNamesAndHash:v21];
  }

  return v12;
}

void __56__PPTrialWrapper_initWithSettings_database_trialClient___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(v3 + 2);
  *(v3 + 2) = v4;

  v6 = [*(a1 + 32) trialPathOverrides];
  v7 = objc_opt_new();
  v8 = *(v3 + 3);
  *(v3 + 3) = v7;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = [v15 mutableCopy];
        [*(v3 + 3) setObject:v16 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = [&unk_284785DC0 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v29;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(&unk_284785DC0);
        }

        v22 = [*(a1 + 40) lastTreatmentUpdateForNamespaceName:*(*(&v28 + 1) + 8 * j)];
        v23 = v22;
        if (!v19 || [v22 compare:v19] == 1)
        {
          v24 = v23;

          v19 = v24;
        }
      }

      v18 = [&unk_284785DC0 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v25 = *(v3 + 4);
  *(v3 + 4) = v19;
  v26 = v19;

  [*(a1 + 40) _addDefaultUpdateHandlersForAllNamespacesWithGuardedData:v3];
  v27 = *MEMORY[0x277D85DE8];
}

+ (id)sharedTrialClient
{
  pthread_mutex_lock(&sharedTrialClient_lock);
  if (!sharedTrialClient_client)
  {
    v2 = [MEMORY[0x277D73660] clientWithIdentifier:100];
    v3 = sharedTrialClient_client;
    sharedTrialClient_client = v2;

    [sharedTrialClient_client refresh];
  }

  v4 = sharedTrialClient_client;
  pthread_mutex_unlock(&sharedTrialClient_lock);

  return v4;
}

@end