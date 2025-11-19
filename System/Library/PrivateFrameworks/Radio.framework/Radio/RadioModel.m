@interface RadioModel
+ (id)_persistentStoreConfigurationOptions;
+ (id)_radioDatabasePath;
+ (id)_radioDirectoryPath;
+ (id)backgroundModel;
+ (id)sharedModel;
+ (void)_postAccountDidDeauthenticateNotification;
+ (void)deleteAllData;
- (NSArray)allStations;
- (NSArray)featuredStations;
- (NSArray)previewStations;
- (NSArray)reportProblemIssueTypes;
- (NSArray)stationSortOrdering;
- (NSArray)userStations;
- (NSString)globalHash;
- (RadioModel)init;
- (id)_arrayByReplacingManagedObjectsInArray:(id)a3;
- (id)_databasePropertyValueForKey:(id)a3;
- (id)_init;
- (id)_initBackgroundModelWithPersistentStoreCoordinator:(id)a3;
- (id)_setByReplacingManagedObjectsInSet:(id)a3;
- (id)convertObject:(id)a3;
- (id)convertObjects:(id)a3;
- (id)convertObjectsInSet:(id)a3;
- (id)newFeaturedStationWithDictionary:(id)a3;
- (id)newPreviewStationWithDictionary:(id)a3;
- (id)newStationWithDictionary:(id)a3;
- (id)stationWithHash:(id)a3;
- (id)stationWithID:(int64_t)a3;
- (id)stationWithPersistentID:(int64_t)a3;
- (id)stationWithStationStringID:(id)a3;
- (int64_t)databaseVersion;
- (unint64_t)_numberOfSkipsUsedWithSkipTimestamps:(id)a3 currentTimestamp:(double)a4 skipInterval:(double)a5 returningEarliestSkipTimestamp:(double *)a6;
- (unint64_t)authenticatedAccountIdentifier;
- (unint64_t)globalVersion;
- (void)_beginBackgroundTaskAssertion;
- (void)_contextDidSaveNotification:(id)a3;
- (void)_createRadioDirectoryAndDatabaseIfNecessary;
- (void)_defaultRadioModelInitialization;
- (void)_endBackgroundTaskAssertion;
- (void)_performTransactionAndSave:(BOOL)a3 withBlock:(id)a4;
- (void)_postContextDidChangeNotification:(id)a3;
- (void)_prepareModel;
- (void)_resetModel;
- (void)_setDatabasePropertyValue:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)deleteAllData;
- (void)deleteStation:(id)a3;
- (void)deleteStationWithID:(int64_t)a3;
- (void)setAuthenticatedAccountIdentifier:(unint64_t)a3;
- (void)setDatabaseVersion:(int64_t)a3;
- (void)setGlobalVersion:(unint64_t)a3;
- (void)setReportProblemIssueTypes:(id)a3;
- (void)setStationSortOrdering:(id)a3;
- (void)setTrackPlaybackDescriptorQueue:(id)a3 forStation:(id)a4;
@end

@implementation RadioModel

- (void)_setDatabasePropertyValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v7, @"key", 0}];
    v9 = [(NSManagedObjectModel *)self->_model fetchRequestFromTemplateWithName:@"DatabasePropertyKeyToProperty" substitutionVariables:v8];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__RadioModel__setDatabasePropertyValue_forKey___block_invoke;
    v11[3] = &unk_279AEA948;
    v11[4] = self;
    v12 = v9;
    v13 = v7;
    v14 = v6;
    v10 = v9;
    [(RadioModel *)self performWriteTransactionWithBlock:v11];
  }
}

void __47__RadioModel__setDatabasePropertyValue_forKey___block_invoke(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 48) executeFetchRequest:a1[5] error:0];
  v3 = [v2 lastObject];

  [v3 willAccessValueForKey:@"value"];
  v4 = [v3 valueForKey:@"value"];
  [v3 didAccessValueForKey:@"value"];
  if (!v3)
  {
    v5 = objc_alloc(MEMORY[0x277CBE438]);
    v6 = [MEMORY[0x277CBE408] entityForName:@"DatabaseProperty" inManagedObjectContext:*(a1[4] + 48)];
    v3 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:*(a1[4] + 48)];

    [v3 willChangeValueForKey:@"key"];
    [v3 setValue:a1[6] forKey:@"key"];
    [v3 didChangeValueForKey:@"key"];
  }

  if (v4 != a1[7] && ([v4 isEqualToString:?] & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_261792000, v7, OS_LOG_TYPE_INFO, "[RadioModel] Setting database property: %@", &v9, 0xCu);
    }

    [v3 willChangeValueForKey:@"value"];
    [v3 setValue:a1[7] forKey:@"value"];
    [v3 didChangeValueForKey:@"value"];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_setByReplacingManagedObjectsInSet:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [[RadioStation alloc] initWithModel:self managedObject:v11];
            [v5 addObject:v12];
          }

          else
          {
            [v5 addObject:{v11, v15}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_resetModel
{
  v18 = *MEMORY[0x277D85DE8];
  [(NSFetchedResultsController *)self->_stationFetchedResultsController setDelegate:0];
  stationFetchedResultsController = self->_stationFetchedResultsController;
  self->_stationFetchedResultsController = 0;

  stationFetchRequest = self->_stationFetchRequest;
  self->_stationFetchRequest = 0;

  v5 = [(NSPersistentStoreCoordinator *)self->_storeCoordinator persistentStores];
  v6 = [v5 copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NSPersistentStoreCoordinator *)self->_storeCoordinator removePersistentStore:*(*(&v13 + 1) + 8 * v11++) error:0, v13];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_prepareModel
{
  [(RadioModel *)self _createRadioDirectoryAndDatabaseIfNecessary];
  v3 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  context = self->_context;
  self->_context = v3;

  v5 = self->_context;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __27__RadioModel__prepareModel__block_invoke;
  v17[3] = &unk_279AEAE60;
  v17[4] = self;
  [(NSManagedObjectContext *)v5 performBlockAndWait:v17];
  v6 = objc_alloc_init(MEMORY[0x277CBE428]);
  stationFetchRequest = self->_stationFetchRequest;
  self->_stationFetchRequest = v6;

  v8 = self->_stationFetchRequest;
  v9 = [MEMORY[0x277CBE408] entityForName:@"Station" inManagedObjectContext:self->_context];
  [(NSFetchRequest *)v8 setEntity:v9];

  v10 = self->_stationFetchRequest;
  v11 = +[RadioManagedStation defaultPropertiesToFetch];
  [(NSFetchRequest *)v10 setPropertiesToFetch:v11];

  v12 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"sort_order" ascending:1];
  v13 = self->_stationFetchRequest;
  v14 = [MEMORY[0x277CBEA60] arrayWithObject:v12];
  [(NSFetchRequest *)v13 setSortDescriptors:v14];

  [(NSFetchRequest *)self->_stationFetchRequest setFetchBatchSize:10];
  v15 = [objc_alloc(MEMORY[0x277CBE430]) initWithFetchRequest:self->_stationFetchRequest managedObjectContext:self->_context sectionNameKeyPath:0 cacheName:0];
  stationFetchedResultsController = self->_stationFetchedResultsController;
  self->_stationFetchedResultsController = v15;

  [(NSFetchedResultsController *)self->_stationFetchedResultsController setDelegate:self];
}

uint64_t __27__RadioModel__prepareModel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (*(v2 + 56))
  {
    v4 = MEMORY[0x277CBE1C8];
  }

  else
  {
    v4 = MEMORY[0x277CBE1D0];
  }

  [v3 setMergePolicy:*v4];
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  v7 = *(v5 + 112);

  return [v6 setPersistentStoreCoordinator:v7];
}

- (void)_postContextDidChangeNotification:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = @"RadioModelDidChangeNotification";
    _os_log_impl(&dword_261792000, v5, OS_LOG_TYPE_INFO, "[RadioModel] Posting '%@'", buf, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = [v6 mutableCopy];

  v8 = [v7 objectForKey:@"inserted"];
  v9 = [(RadioModel *)self convertObjectsInSet:v8];

  if ([v9 count])
  {
    v10 = [(RadioModel *)self _setByReplacingManagedObjectsInSet:v9];
    [v7 setObject:v10 forKey:@"inserted"];
  }

  v11 = [v7 objectForKey:@"updated"];
  v12 = [(RadioModel *)self convertObjectsInSet:v11];

  if ([v12 count])
  {
    v13 = [(RadioModel *)self _setByReplacingManagedObjectsInSet:v12];
    [v7 setObject:v13 forKey:@"updated"];
  }

  v14 = [v7 objectForKey:@"deleted"];
  v15 = [(RadioModel *)self convertObjectsInSet:v14];

  if ([v15 count])
  {
    v16 = [(RadioModel *)self _setByReplacingManagedObjectsInSet:v15];
    [v7 setObject:v16 forKey:@"deleted"];
  }

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 postNotificationName:@"RadioModelDidChangeNotification" object:self userInfo:v7];

  if (self->_modelChangedTokenIsValid)
  {
    v32 = v12;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
LABEL_12:
      v22 = 0;
      while (1)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v37 + 1) + 8 * v22);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (v20)
          {
            goto LABEL_12;
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = v15;
      v24 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (!v24)
      {
LABEL_26:

LABEL_28:
        v12 = v32;
        goto LABEL_29;
      }

      v25 = v24;
      v26 = *v34;
LABEL_20:
      v27 = 0;
      while (1)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v18);
        }

        v28 = *(*(&v33 + 1) + 8 * v27);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v25)
          {
            goto LABEL_20;
          }

          goto LABEL_26;
        }
      }
    }

    modelChangedToken = self->_modelChangedToken;
    v30 = getpid();
    notify_set_state(modelChangedToken, v30);
    notify_post("com.apple.Radio.model-changed");
    goto LABEL_28;
  }

LABEL_29:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_performTransactionAndSave:(BOOL)a3 withBlock:(id)a4
{
  v6 = a4;
  context = self->_context;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__RadioModel__performTransactionAndSave_withBlock___block_invoke;
  v9[3] = &unk_279AEA920;
  v9[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v9];
}

uint64_t __51__RadioModel__performTransactionAndSave_withBlock___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 120);
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 32);
  if (*(result + 120) == 1 && *(a1 + 48) == 1)
  {
    v4 = [*(result + 48) hasChanges];
    result = *(a1 + 32);
    if (v4)
    {
      if (*(result + 56) == 1)
      {
        [result _beginBackgroundTaskAssertion];
        result = *(a1 + 32);
      }

      [*(result + 48) processPendingChanges];
      v5 = *(*(a1 + 32) + 48);
      v11 = 0;
      v6 = [v5 save:&v11];
      v7 = v11;
      if ((v6 & 1) == 0)
      {
        v8 = os_log_create("com.apple.amp.radio", "Model");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v13 = v7;
          _os_log_impl(&dword_261792000, v8, OS_LOG_TYPE_ERROR, "[RadioModel] Error: Unable to save (%@)", buf, 0xCu);
        }
      }

      v9 = *(a1 + 32);
      if (v9[56] == 1)
      {
        [v9 _endBackgroundTaskAssertion];
      }

      result = *(a1 + 32);
    }
  }

  --*(result + 120);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_endBackgroundTaskAssertion
{
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RadioModel__endBackgroundTaskAssertion__block_invoke;
  block[3] = &unk_279AEAE60;
  block[4] = self;
  dispatch_async(accessSerialQueue, block);
}

void __41__RadioModel__endBackgroundTaskAssertion__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 32) = v4;
    v6 = *(a1 + 32);
    if (!v6[4])
    {
      v7 = v6[5];
      if (v7)
      {
        dispatch_source_cancel(v7);
        v8 = *(a1 + 32);
        v9 = *(v8 + 40);
        *(v8 + 40) = 0;

        v6 = *(a1 + 32);
      }

      objc_initWeak(&location, v6);
      v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 8));
      v11 = *(a1 + 32);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = *(*(a1 + 32) + 40);
      v14 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      v15 = *(*(a1 + 32) + 40);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __41__RadioModel__endBackgroundTaskAssertion__block_invoke_2;
      v16[3] = &unk_279AEA8F8;
      objc_copyWeak(&v17, &location);
      dispatch_source_set_event_handler(v15, v16);
      dispatch_resume(*(*(a1 + 32) + 40));
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

void __41__RadioModel__endBackgroundTaskAssertion__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (!WeakRetained[4])
    {
      v3 = os_log_create("com.apple.amp.radio", "Model");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v2;
        _os_log_impl(&dword_261792000, v3, OS_LOG_TYPE_INFO, "[RadioModel] Invalidating process assertion for model: %@", &v8, 0xCu);
      }

      [*(v2 + 3) invalidate];
      v4 = *(v2 + 3);
      *(v2 + 3) = 0;
    }

    v5 = *(v2 + 5);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(v2 + 5);
      *(v2 + 5) = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_databasePropertyValueForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v4, @"key", 0}];
    v6 = [(NSManagedObjectModel *)self->_model fetchRequestFromTemplateWithName:@"DatabasePropertyKeyToProperty" substitutionVariables:v5];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__124;
    v17 = __Block_byref_object_dispose__125;
    v18 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__RadioModel__databasePropertyValueForKey___block_invoke;
    v10[3] = &unk_279AEA880;
    v10[4] = self;
    v7 = v6;
    v11 = v7;
    v12 = &v13;
    [(RadioModel *)self performTransactionWithBlock:v10];
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __43__RadioModel__databasePropertyValueForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) executeFetchRequest:a1[5] error:0];
  v6 = [v2 lastObject];

  if (v6)
  {
    [v6 willAccessValueForKey:@"value"];
    v3 = [v6 valueForKey:@"value"];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    [v6 didAccessValueForKey:@"value"];
  }
}

- (void)_createRadioDirectoryAndDatabaseIfNecessary
{
  v73 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&__databaseLock);
  if (!self->_storeCoordinator)
  {
    if (!self->_model)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 pathForResource:@"Radio" ofType:@"momd"];

      if (!v5)
      {
        v62 = [MEMORY[0x277CCA890] currentHandler];
        [v62 handleFailureInMethod:a2 object:self file:@"RadioModel.m" lineNumber:1092 description:@"unable to find model"];
      }

      v65 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
      v6 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v65];
      model = self->_model;
      self->_model = v6;

      v8 = [(NSManagedObjectModel *)self->_model entitiesByName];
      v9 = [v8 objectForKey:@"Station"];

      v10 = objc_alloc_init(MEMORY[0x277CBE428]);
      [v10 setEntity:v9];
      v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"station_id == $stationID"];
      [v10 setPredicate:v11];

      v64 = v5;
      v12 = +[RadioManagedStation defaultPropertiesToFetch];
      [v10 setPropertiesToFetch:v12];

      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v10 forName:@"StationIDToStation"];
      v13 = objc_alloc_init(MEMORY[0x277CBE428]);
      v63 = v9;
      [v13 setEntity:v9];
      v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"station_hash == $stationHash"];
      [v13 setPredicate:v14];

      v15 = +[RadioManagedStation defaultPropertiesToFetch];
      [v13 setPropertiesToFetch:v15];

      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v13 forName:@"StationHashToStation"];
      v16 = objc_alloc_init(MEMORY[0x277CBE428]);
      [v16 setEntity:v9];
      v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"station_string_id == $stationStringID"];
      [v16 setPredicate:v17];

      v18 = +[RadioManagedStation defaultPropertiesToFetch];
      [v16 setPropertiesToFetch:v18];

      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v16 forName:@"StationStringIDToStation"];
      v19 = objc_alloc_init(MEMORY[0x277CBE428]);
      v20 = [(NSManagedObjectModel *)self->_model entitiesByName];
      v21 = [v20 objectForKey:@"SkipHistory"];
      [v19 setEntity:v21];

      v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"skip_identifier == $skipIdentifier"];
      [v19 setPredicate:v22];

      [v19 setPropertiesToFetch:&unk_2874055F0];
      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v19 forName:@"SkipIdentifierToSkipHistory"];
      v23 = objc_alloc_init(MEMORY[0x277CBE428]);
      v24 = [(NSManagedObjectModel *)self->_model entitiesByName];
      v25 = [v24 objectForKey:@"SkipHistory"];
      [v23 setEntity:v25];

      v26 = [MEMORY[0x277CCAC30] predicateWithFormat:@"station_hash == $stationHash"];
      [v23 setPredicate:v26];

      [v23 setPropertiesToFetch:&unk_287405608];
      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v23 forName:@"StationHashToSkipHistory"];
      v27 = objc_alloc_init(MEMORY[0x277CBE428]);
      v28 = [(NSManagedObjectModel *)self->_model entitiesByName];
      v29 = [v28 objectForKey:@"SkipHistory"];
      [v27 setEntity:v29];

      v30 = [MEMORY[0x277CCAC30] predicateWithFormat:@"station_id == $stationID"];
      [v27 setPredicate:v30];

      [v27 setPropertiesToFetch:&unk_287405620];
      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v27 forName:@"StationIDToSkipHistory"];
      v31 = objc_alloc_init(MEMORY[0x277CBE428]);
      v32 = [(NSManagedObjectModel *)self->_model entitiesByName];
      v33 = [v32 objectForKey:@"DatabaseProperty"];
      [v31 setEntity:v33];

      v34 = [MEMORY[0x277CCAC30] predicateWithFormat:@"key == $key"];
      [v31 setPredicate:v34];

      [(NSManagedObjectModel *)self->_model setFetchRequestTemplate:v31 forName:@"DatabasePropertyKeyToProperty"];
    }

    v35 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:self->_model];
    storeCoordinator = self->_storeCoordinator;
    self->_storeCoordinator = v35;
  }

  v37 = [objc_opt_class() _radioDirectoryPath];
  v38 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v39 = [MEMORY[0x277CCA8D8] mainBundle];
  v40 = [v39 bundleIdentifier];
  v41 = [&unk_287405638 containsObject:v40];

  v68 = 0;
  if ([v38 fileExistsAtPath:v37 isDirectory:&v68])
  {
    if (v68)
    {
      goto LABEL_16;
    }

    [v38 removeItemAtPath:v37 error:0];
  }

  if ((v41 & 1) != 0 || ([v37 stringByDeletingLastPathComponent], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v38, "isWritableFileAtPath:", v42), v42, v43))
  {
    [v38 createDirectoryAtPath:v37 withIntermediateDirectories:1 attributes:0 error:0];
  }

  else
  {
    v44 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [v37 stringByDeletingLastPathComponent];
      *buf = 138412290;
      v70 = v45;
      _os_log_impl(&dword_261792000, v44, OS_LOG_TYPE_ERROR, "[RadioModel] Error: Unable to write to '%@' to create database", buf, 0xCu);
    }
  }

LABEL_16:
  v46 = [objc_opt_class() _radioDatabasePath];
  v47 = [MEMORY[0x277CBEBC0] fileURLWithPath:v46 isDirectory:0];
  v48 = [(NSPersistentStoreCoordinator *)self->_storeCoordinator persistentStoreForURL:v47];

  if (!v48)
  {
    v49 = [objc_opt_class() _persistentStoreConfigurationOptions];
    v50 = *MEMORY[0x277CBE2E8];
    v51 = [(NSPersistentStoreCoordinator *)self->_storeCoordinator addPersistentStoreWithType:*MEMORY[0x277CBE2E8] configuration:0 URL:v47 options:v49 error:0];
    if (!v51)
    {
      if (v41 & 1) != 0 || ([v38 isWritableFileAtPath:v46])
      {
        v52 = os_log_create("com.apple.amp.radio", "Model");
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_261792000, v52, OS_LOG_TYPE_ERROR, "[RadioModel] Database missing or corrupt, starting over.", buf, 2u);
        }

        v53 = self->_storeCoordinator;
        v54 = [objc_opt_class() _persistentStoreConfigurationOptions];
        v67 = 0;
        v55 = [(NSPersistentStoreCoordinator *)v53 _destroyPersistentStoreAtURL:v47 withType:v50 options:v54 error:&v67];
        v56 = v67;

        v57 = os_log_create("com.apple.amp.radio", "Model");
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = @"NO";
          if (v55)
          {
            v58 = @"YES";
          }

          *buf = 138412546;
          v70 = v58;
          v71 = 2112;
          v72 = v56;
          _os_log_impl(&dword_261792000, v57, OS_LOG_TYPE_ERROR, "[RadioModel] Attempted database reset with success: %@ (%@)", buf, 0x16u);
        }

        v59 = self->_storeCoordinator;
        v66 = 0;
        v51 = [(NSPersistentStoreCoordinator *)v59 addPersistentStoreWithType:v50 configuration:0 URL:v47 options:v49 error:&v66];
        v60 = v66;
        if (!v51)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Radio: Unable to create database (%@)", v60}];
        }
      }

      else
      {
        v56 = os_log_create("com.apple.amp.radio", "Model");
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_261792000, v56, OS_LOG_TYPE_ERROR, "[RadioModel] Database missing or corrupt, giving up.", buf, 2u);
        }

        v51 = 0;
      }
    }
  }

  os_unfair_lock_unlock(&__databaseLock);

  v61 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_numberOfSkipsUsedWithSkipTimestamps:(id)a3 currentTimestamp:(double)a4 skipInterval:(double)a5 returningEarliestSkipTimestamp:(double *)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v10)
  {
    v12 = 0;
    v14 = 1.79769313e308;
    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v22;
  v14 = 1.79769313e308;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v9);
      }

      [*(*(&v21 + 1) + 8 * i) doubleValue];
      if (v16 < v14)
      {
        v14 = v16;
      }

      if (a4 - v16 < a5)
      {
        ++v12;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v11);
  if (a6)
  {
LABEL_13:
    v17 = [v9 count];
    v18 = 0.0;
    if (v17)
    {
      v18 = v14;
    }

    *a6 = v18;
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_defaultRadioModelInitialization
{
  v3 = dispatch_queue_create("com.apple.Radio.RadioModel.accessSerialQueue", 0);
  accessSerialQueue = self->_accessSerialQueue;
  self->_accessSerialQueue = v3;

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__RadioModel__defaultRadioModelInitialization__block_invoke;
  handler[3] = &unk_279AEA8D0;
  handler[4] = self;
  v5 = MEMORY[0x277D85CD0];
  self->_modelChangedTokenIsValid = notify_register_dispatch("com.apple.Radio.model-changed", &self->_modelChangedToken, MEMORY[0x277D85CD0], handler) == 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__RadioModel__defaultRadioModelInitialization__block_invoke_300;
  v8[3] = &unk_279AEA8D0;
  v8[4] = self;
  v6 = notify_register_dispatch("com.apple.Radio.model-deleted", &self->_modelDeletedToken, v5, v8);

  self->_modelDeletedTokenIsValid = v6 == 0;
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__contextDidSaveNotification_ name:*MEMORY[0x277CBE1A8] object:0];
}

void __46__RadioModel__defaultRadioModelInitialization__block_invoke(uint64_t a1, int token)
{
  v18 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v17) = state64;
    _os_log_impl(&dword_261792000, v3, OS_LOG_TYPE_INFO, "[RadioModel] Model changed with pid: %i", buf, 8u);
  }

  v4 = state64;
  v5 = getpid();
  v6 = v5;
  if (*(*(a1 + 32) + 48))
  {
    v7 = v4 == v5;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_261792000, v8, OS_LOG_TYPE_INFO, "[RadioModel] Rebuilding model for external change...", buf, 2u);
    }

    v9 = *(a1 + 32);
    v10 = v9[6];
    if (v10 && v4 != v6)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __46__RadioModel__defaultRadioModelInitialization__block_invoke_295;
      v14[3] = &unk_279AEAE60;
      v14[4] = v9;
      [v10 performBlockAndWait:v14];
      v9 = *(a1 + 32);
    }

    [v9 _prepareModel];
    v11 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = @"RadioModelDidChangeNotification";
      _os_log_impl(&dword_261792000, v11, OS_LOG_TYPE_INFO, "[RadioModel] Posting '%@' due to an external change", buf, 0xCu);
    }

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 postNotificationName:@"RadioModelDidChangeNotification" object:*(a1 + 32)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __46__RadioModel__defaultRadioModelInitialization__block_invoke_300(uint64_t a1, int token)
{
  v20 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v17) = state64;
    _os_log_impl(&dword_261792000, v3, OS_LOG_TYPE_INFO, "[RadioModel] Model deleted with pid: %i", buf, 8u);
  }

  v4 = state64;
  v5 = getpid();
  v6 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_INFO, "[RadioModel] Rebuilding model for external deletion...", buf, 2u);
  }

  v7 = *(a1 + 32);
  v8 = v7[6];
  if (v8)
  {
    v9 = v4 == v5;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__RadioModel__defaultRadioModelInitialization__block_invoke_301;
    v14[3] = &unk_279AEAE60;
    v14[4] = v7;
    [v8 performBlockAndWait:v14];
    v7 = *(a1 + 32);
  }

  [v7 _prepareModel];
  v10 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v17 = @"RadioModelWasDeletedNotification";
    v18 = 2112;
    v19 = @"RadioModelDidChangeNotification";
    _os_log_impl(&dword_261792000, v10, OS_LOG_TYPE_INFO, "[RadioModel] Posting '%@', '%@' due to an external deletion", buf, 0x16u);
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:@"RadioModelWasDeletedNotification" object:*(a1 + 32)];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"RadioModelDidChangeNotification" object:*(a1 + 32)];

  v13 = *MEMORY[0x277D85DE8];
}

void __46__RadioModel__defaultRadioModelInitialization__block_invoke_301(uint64_t a1)
{
  [*(a1 + 32) _resetModel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
}

void __46__RadioModel__defaultRadioModelInitialization__block_invoke_295(uint64_t a1)
{
  [*(a1 + 32) _resetModel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;
}

- (void)_beginBackgroundTaskAssertion
{
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__RadioModel__beginBackgroundTaskAssertion__block_invoke;
  block[3] = &unk_279AEAE60;
  block[4] = self;
  dispatch_sync(accessSerialQueue, block);
}

void __43__RadioModel__beginBackgroundTaskAssertion__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 32);
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v2 = *(a1 + 32);
  }

  if (v2[4] >= 1 && !v2[3])
  {
    v6 = dispatch_semaphore_create(0);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v7 = objc_alloc(MEMORY[0x277CEEEA8]);
    v8 = getpid();
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __43__RadioModel__beginBackgroundTaskAssertion__block_invoke_2;
    v23 = &unk_279AEA8A8;
    v25 = &v26;
    v9 = v6;
    v24 = v9;
    v10 = [v7 initWithPID:v8 flags:21 reason:4 name:@"RadioModelSaveAssertion" withHandler:&v20];
    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v10;

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v13 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v31 = v14;
      _os_log_impl(&dword_261792000, v13, OS_LOG_TYPE_INFO, "[RadioModel] Obtained process assertion for model %@", buf, 0xCu);
    }

    if ((v27[3] & 1) == 0)
    {
      v15 = os_log_create("com.apple.amp.radio", "Model");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 32);
        *buf = 138412290;
        v31 = v16;
        _os_log_impl(&dword_261792000, v15, OS_LOG_TYPE_INFO, "[RadioModel] Failed to acquire process assertion for model %@", buf, 0xCu);
      }

      [*(*(a1 + 32) + 24) invalidate];
      v17 = *(a1 + 32);
      v18 = *(v17 + 24);
      *(v17 + 24) = 0;
    }

    _Block_object_dispose(&v26, 8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_arrayByReplacingManagedObjectsInArray:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [[RadioStation alloc] initWithModel:self managedObject:v11];
            [v5 addObject:v12];
          }

          else
          {
            [v5 addObject:{v11, v15}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setDatabaseVersion:(int64_t)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lli", a3];
  [(RadioModel *)self _setDatabasePropertyValue:v4 forKey:@"databaseVersion"];
}

- (int64_t)databaseVersion
{
  v2 = [(RadioModel *)self _databasePropertyValueForKey:@"databaseVersion"];
  v3 = [v2 longLongValue];

  return v3;
}

- (NSArray)userStations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__124;
  v10 = __Block_byref_object_dispose__125;
  v11 = 0;
  context = self->_context;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__RadioModel_userStations__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __26__RadioModel_userStations__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  if (!v2)
  {
    v3 = *(*(a1 + 32) + 88);
    v22 = 0;
    v4 = [v3 performFetch:&v22];
    v5 = v22;
    if ((v4 & 1) == 0)
    {
      v6 = os_log_create("com.apple.amp.radio", "Model");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v5;
        _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_ERROR, "[RadioModel] Error: Unable to fetch stations (%@.)", buf, 0xCu);
      }
    }

    v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  }

  if ([v2 count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v2;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if ([v13 stationID])
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    v14 = [*(a1 + 32) _arrayByReplacingManagedObjectsInArray:v7];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)stationWithStationStringID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v4, @"stationStringID", 0}];
    v6 = [(NSManagedObjectModel *)self->_model fetchRequestFromTemplateWithName:@"StationStringIDToStation" substitutionVariables:v5];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__124;
    v17 = __Block_byref_object_dispose__125;
    v18 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__RadioModel_stationWithStationStringID___block_invoke;
    v10[3] = &unk_279AEA880;
    v10[4] = self;
    v7 = v6;
    v11 = v7;
    v12 = &v13;
    [(RadioModel *)self performTransactionWithBlock:v10];
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __41__RadioModel_stationWithStationStringID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) executeFetchRequest:a1[5] error:0];
  v6 = [v2 lastObject];

  if (v6)
  {
    v3 = [[RadioStation alloc] initWithModel:a1[4] managedObject:v6];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)stationWithPersistentID:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBE428]);
  v6 = [(NSManagedObjectModel *)self->_model entitiesByName];
  v7 = [v6 objectForKey:@"Station"];
  [v5 setEntity:v7];

  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"persistent_id == %lli", a3];
  [v5 setPredicate:v8];

  v9 = +[RadioManagedStation defaultPropertiesToFetch];
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  }

  v13 = v12;

  if (([v13 containsObject:@"persistent_id"] & 1) == 0)
  {
    [v13 addObject:@"persistent_id"];
  }

  [v5 setPropertiesToFetch:v13];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__124;
  v24 = __Block_byref_object_dispose__125;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__RadioModel_stationWithPersistentID___block_invoke;
  v17[3] = &unk_279AEA880;
  v17[4] = self;
  v14 = v5;
  v18 = v14;
  v19 = &v20;
  [(RadioModel *)self performTransactionWithBlock:v17];
  v15 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v15;
}

void __38__RadioModel_stationWithPersistentID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) executeFetchRequest:a1[5] error:0];
  v6 = [v2 lastObject];

  if (v6)
  {
    v3 = [[RadioStation alloc] initWithModel:a1[4] managedObject:v6];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)stationWithID:(int64_t)a3
{
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v7 = [v5 initWithObjectsAndKeys:{v6, @"stationID", 0}];

  v8 = [(NSManagedObjectModel *)self->_model fetchRequestFromTemplateWithName:@"StationIDToStation" substitutionVariables:v7];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__124;
  v19 = __Block_byref_object_dispose__125;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __28__RadioModel_stationWithID___block_invoke;
  v12[3] = &unk_279AEA880;
  v12[4] = self;
  v9 = v8;
  v13 = v9;
  v14 = &v15;
  [(RadioModel *)self performTransactionWithBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __28__RadioModel_stationWithID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) executeFetchRequest:a1[5] error:0];
  v6 = [v2 lastObject];

  if (v6)
  {
    v3 = [[RadioStation alloc] initWithModel:a1[4] managedObject:v6];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)stationWithHash:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v4, @"stationHash", 0}];
    v6 = [(NSManagedObjectModel *)self->_model fetchRequestFromTemplateWithName:@"StationHashToStation" substitutionVariables:v5];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__124;
    v17 = __Block_byref_object_dispose__125;
    v18 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __30__RadioModel_stationWithHash___block_invoke;
    v10[3] = &unk_279AEA880;
    v10[4] = self;
    v7 = v6;
    v11 = v7;
    v12 = &v13;
    [(RadioModel *)self performTransactionWithBlock:v10];
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __30__RadioModel_stationWithHash___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 48) executeFetchRequest:a1[5] error:0];
  v6 = [v2 lastObject];

  if (v6)
  {
    v3 = [[RadioStation alloc] initWithModel:a1[4] managedObject:v6];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (NSArray)stationSortOrdering
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(RadioModel *)self userStations];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(RadioModel *)self userStations];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "stationID")}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setTrackPlaybackDescriptorQueue:(id)a3 forStation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__RadioModel_setTrackPlaybackDescriptorQueue_forStation___block_invoke;
  v10[3] = &unk_279AEACA0;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v7 performWriteTransactionWithBlock:v10];
}

- (void)setStationSortOrdering:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__RadioModel_setStationSortOrdering___block_invoke;
  v8[3] = &unk_279AEAE60;
  v8[4] = self;
  [(RadioModel *)self performTransactionWithBlock:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__RadioModel_setStationSortOrdering___block_invoke_2;
  v6[3] = &unk_279AEACA0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(RadioModel *)self performWriteTransactionWithBlock:v6];
}

void __37__RadioModel_setStationSortOrdering___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userStations];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v2];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(a1 + 32) stationWithID:{objc_msgSend(*(*(&v25 + 1) + 8 * i), "longLongValue")}];
        v11 = v10;
        if (v10)
        {
          [v10 setSortOrder:v7];
          [v3 removeObject:v11];
          v7 = (v7 + 1);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = [v3 allObjects];
  v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_236];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      v19 = v7;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v7 = (v19 + 1);
        [*(*(&v21 + 1) + 8 * v18++) setSortOrder:{v19, v21}];
        v19 = v7;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __37__RadioModel_setStationSortOrdering___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6 options:1];
  return v7;
}

- (void)setReportProblemIssueTypes:(id)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:0 error:0];
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
    [(RadioModel *)self _setDatabasePropertyValue:v4 forKey:@"reportProblemIssueTypes"];
  }

  else
  {

    [RadioModel _setDatabasePropertyValue:"_setDatabasePropertyValue:forKey:" forKey:?];
  }
}

- (void)setGlobalVersion:(unint64_t)a3
{
  if ([(RadioModel *)self globalVersion]!= a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lli", a3];
    [(RadioModel *)self _setDatabasePropertyValue:v5 forKey:@"globalVersion"];
  }
}

- (void)setAuthenticatedAccountIdentifier:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lli", a3];
  [RadioModel _setDatabasePropertyValue:"_setDatabasePropertyValue:forKey:" forKey:?];
  if (!a3)
  {
    [objc_opt_class() _postAccountDidDeauthenticateNotification];
  }
}

- (NSArray)reportProblemIssueTypes
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(RadioModel *)self _databasePropertyValueForKey:@"reportProblemIssueTypes"];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CCAAA0];
    v5 = [v2 dataUsingEncoding:4];
    v6 = [v4 JSONObjectWithData:v5 options:0 error:0];

    objc_opt_class();
    v7 = 0;
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v7 = 0;
              goto LABEL_14;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSArray)previewStations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__124;
  v10 = __Block_byref_object_dispose__125;
  v11 = 0;
  context = self->_context;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__RadioModel_previewStations__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__RadioModel_previewStations__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  if (!v2)
  {
    v3 = *(*(a1 + 32) + 88);
    v22 = 0;
    v4 = [v3 performFetch:&v22];
    v5 = v22;
    if ((v4 & 1) == 0)
    {
      v6 = os_log_create("com.apple.amp.radio", "Model");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v5;
        _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_ERROR, "[RadioModel] Error: Unable to fetch stations (%@.)", buf, 0xCu);
      }
    }

    v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  }

  if ([v2 count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v2;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if ([v13 isPreview])
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    v14 = [*(a1 + 32) _arrayByReplacingManagedObjectsInArray:v7];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)newStationWithDictionary:(id)a3
{
  v165 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_261792000, v4, OS_LOG_TYPE_INFO, "[RadioModel] Adding/updating station with dictionary: %@", &buf, 0xCu);
  }

  v109 = [v3 objectForKey:@"station-id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v107 = [v109 longLongValue];
  }

  else
  {
    v107 = 0;
  }

  v110 = [v3 objectForKey:@"station-hash"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v110 = 0;
  }

  v111 = [v3 objectForKey:@"radio-station-id"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v111 = 0;
  }

  if (!v107 && !v110 && !v111)
  {
    v5 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_261792000, v5, OS_LOG_TYPE_ERROR, "Missing station-id/station-hash/radio-station-id in dictionary: %@", &buf, 0xCu);
    }

    v6 = 0;
    goto LABEL_145;
  }

  v158 = 0;
  v100 = [v3 objectForKey:@"persistent-id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v100;
    sscanf([v100 UTF8String], "%llx", &v158);
  }

  v93 = [v3 objectForKey:@"adam-id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v71 = [v93 longLongValue];
  }

  else
  {
    v71 = 0;
  }

  v8 = [v3 objectForKey:@"name"];
  v103 = [v8 copy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v103 = 0;
  }

  v9 = [v3 objectForKey:@"description"];
  v101 = [v9 copy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v101 = 0;
  }

  v10 = [v3 objectForKey:@"core-seed-name"];
  v98 = [v10 copy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v98 = 0;
  }

  v96 = [v3 objectForKey:@"seeds"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v96 = 0;
  }

  v92 = [v3 objectForKey:@"mix-type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v92 intValue];
  }

  else
  {
    v11 = 1;
  }

  v70 = v11;
  v12 = [v3 objectForKey:@"skip-identifier"];
  v95 = [v12 copy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v95 = 0;
  }

  v106 = [v3 objectForKey:@"rules"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v106 objectForKey:@"edit-enabled"];
    if (objc_opt_respondsToSelector())
    {
      v69 = [v13 BOOLValue];
    }

    else
    {
      v69 = 1;
    }

    v94 = [v106 objectForKey:@"edit-fields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v16 = [v94 copy];
      v17 = [v16 countByEnumeratingWithState:&v154 objects:v164 count:16];
      if (v17)
      {
        v18 = *v155;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v155 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v154 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_51;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v154 objects:v164 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v16 = v94;
LABEL_51:
      v94 = 0;
    }

    v21 = [v106 objectForKey:@"like-enabled"];
    if (objc_opt_respondsToSelector())
    {
      v68 = [v21 BOOLValue];
    }

    else
    {
      v68 = 0;
    }

    v22 = [v106 objectForKey:@"skip-enabled"];
    if (objc_opt_respondsToSelector())
    {
      v67 = [v22 BOOLValue];
    }

    else
    {
      v67 = 1;
    }

    v23 = [v106 objectForKey:@"skip-rules"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v24 = [v23 objectForKey:@"interval-in-seconds"];
      v15 = 0.0;
      if (objc_opt_respondsToSelector())
      {
        v15 = [v24 intValue];
      }

      v25 = [v23 objectForKey:@"frequency"];
      if (objc_opt_respondsToSelector())
      {
        v66 = [v25 intValue];
      }

      else
      {
        v66 = 0;
      }
    }

    else
    {
      v66 = 0;
      v15 = 0.0;
    }

    v26 = [v106 objectForKey:@"sharing-enabled"];
    if (objc_opt_respondsToSelector())
    {
      v14 = [v26 BOOLValue];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
    v14 = 0;
    v94 = 0;
    v66 = 0;
    v67 = 1;
    v15 = 0.0;
    v68 = 0;
    v69 = 1;
  }

  v27 = [v3 objectForKey:@"artwork"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = 0;
    v28 = v27;
    v27 = 0;
    goto LABEL_74;
  }

  if (v27)
  {
    v28 = [MEMORY[0x277CCAC58] dataWithPropertyList:v27 format:200 options:0 error:0];
    v29 = v28;
LABEL_74:

    goto LABEL_75;
  }

  v29 = 0;
LABEL_75:
  v91 = [v3 objectForKey:@"artwork-url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = [MEMORY[0x277CBEBC0] URLWithString:v91];
  }

  else
  {
    v30 = 0;
  }

  v90 = [v3 objectForKey:@"virtual-play"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v65 = [v90 BOOLValue];
  }

  else
  {
    v65 = 1;
  }

  v89 = [v3 objectForKey:@"ad-data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [MEMORY[0x277CCAC58] dataWithPropertyList:v89 format:200 options:0 error:0];
  }

  else
  {
    v31 = 0;
  }

  v74 = v31;
  if (![v31 length])
  {
    v32 = [v3 objectForKey:@"iAd-data"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v74 = v32;
    }

    else
    {

      v74 = 0;
    }
  }

  v88 = [v3 objectForKey:@"is-explicit"];
  if (objc_opt_respondsToSelector())
  {
    v64 = [v88 BOOLValue];
  }

  else
  {
    v64 = 0;
  }

  v87 = [v3 objectForKey:@"is-featured"];
  objc_opt_class();
  v75 = objc_opt_isKindOfClass();
  if (v75)
  {
    v63 = [v87 BOOLValue];
  }

  else
  {
    v63 = 0;
  }

  v86 = [v3 objectForKey:@"is-iad-gateway-video-enabled"];
  if (objc_opt_respondsToSelector())
  {
    v62 = [v86 BOOLValue];
  }

  else
  {
    v62 = 0;
  }

  v85 = [v3 objectForKey:@"is-sponsored"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v61 = [v85 BOOLValue];
  }

  else
  {
    v61 = 0;
  }

  v84 = [v3 objectForKey:@"impression-threshold"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v60 = [v84 unsignedIntegerValue];
  }

  else
  {
    v60 = 0;
  }

  v83 = [v3 objectForKey:@"is-premium-placement"];
  if (objc_opt_respondsToSelector())
  {
    v59 = [v83 BOOLValue];
  }

  else
  {
    v59 = 0;
  }

  v82 = [v3 objectForKey:@"preview-only"];
  if (objc_opt_respondsToSelector())
  {
    v58 = [v82 BOOLValue];
  }

  else
  {
    v58 = 0;
  }

  v81 = [v3 objectForKey:@"requires-subscription"];
  if (objc_opt_respondsToSelector())
  {
    v57 = [v81 BOOLValue];
  }

  else
  {
    v57 = 0;
  }

  v33 = [v3 objectForKey:@"stream-url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56 = [MEMORY[0x277CBEBC0] URLWithString:v33];
  }

  else
  {
    v56 = 0;
  }

  v80 = [v3 objectForKey:@"stream-key-cert-url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = [MEMORY[0x277CBEBC0] URLWithString:v80];
  }

  else
  {
    v55 = 0;
  }

  v79 = [v3 objectForKey:@"stream-key-server-url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = [MEMORY[0x277CBEBC0] URLWithString:v79];
  }

  else
  {
    v54 = 0;
  }

  v78 = [v3 objectForKey:@"is-shared"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = [v78 BOOLValue];
  }

  else
  {
    v53 = 0;
  }

  v77 = [v3 objectForKey:@"is-subscribed"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v52 = [v77 BOOLValue];
  }

  else
  {
    v52 = 0;
  }

  v76 = [v3 objectForKey:@"subscriber-count"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = [v76 intValue];
  }

  else
  {
    v34 = 0;
  }

  v35 = [v3 objectForKey:@"share-token"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v35 = 0;
  }

  v36 = [v3 objectForKey:@"debug-dict"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v36 = 0;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v160 = 0x3032000000;
  v161 = __Block_byref_object_copy__124;
  v162 = __Block_byref_object_dispose__125;
  if (!v107)
  {
    v37 = 0;
    v163 = 0;
LABEL_139:
    if (v158)
    {
      v38 = [(RadioModel *)self stationWithPersistentID:?];
      v39 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v38;

      v37 = *(*(&buf + 1) + 40);
    }

    goto LABEL_141;
  }

  v163 = [(RadioModel *)self stationWithID:?];

  v37 = *(*(&buf + 1) + 40);
  if (!v37)
  {
    goto LABEL_139;
  }

LABEL_141:
  if (!v37 && v111)
  {
    v40 = [(RadioModel *)self stationWithStationStringID:v111];
    v41 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v40;
  }

  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = __39__RadioModel_newStationWithDictionary___block_invoke;
  v112[3] = &unk_279AEA838;
  p_buf = &buf;
  v112[4] = self;
  v130 = v107;
  v113 = v110;
  v131 = v71;
  v72 = v30;
  v114 = v72;
  v51 = v29;
  v115 = v51;
  v48 = v103;
  v116 = v48;
  v49 = v101;
  v117 = v49;
  v50 = v98;
  v118 = v50;
  v97 = v96;
  v119 = v97;
  v138 = v69;
  v102 = v94;
  v120 = v102;
  v139 = isKindOfClass & 1;
  v140 = v68;
  v141 = v57;
  v142 = v67;
  v136 = v66;
  v99 = v95;
  v121 = v99;
  v132 = v15;
  v143 = v65;
  v133 = v70;
  v144 = v75 & 1;
  v145 = v63;
  v146 = v64;
  v147 = v62;
  v148 = v61;
  v104 = v74;
  v122 = v104;
  v134 = v60;
  v149 = v59;
  v150 = v58;
  v123 = v111;
  v108 = v56;
  v124 = v108;
  v42 = v55;
  v125 = v42;
  v43 = v54;
  v126 = v43;
  v151 = v53;
  v152 = v52;
  v137 = v34;
  v44 = v35;
  v127 = v44;
  v153 = v14;
  v45 = v36;
  v128 = v45;
  v135 = v158;
  [(RadioModel *)self performWriteTransactionWithBlock:v112];
  v6 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
LABEL_145:

  v46 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __39__RadioModel_newStationWithDictionary___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 168) + 8) + 40);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBE438]);
    v4 = [*(*(a1 + 32) + 96) entity];
    v5 = [v3 initWithEntity:v4 insertIntoManagedObjectContext:*(*(a1 + 32) + 48)];

    if (v5)
    {
      [v5 setSortOrder:0xFFFFFFFFLL];
      v6 = [[RadioStation alloc] initWithModel:*(a1 + 32) managedObject:v5];
      v7 = *(*(a1 + 168) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v2 = *(*(*(a1 + 168) + 8) + 40);
  }

  [v2 setStationID:*(a1 + 176)];
  [*(*(*(a1 + 168) + 8) + 40) setStationHash:*(a1 + 40)];
  [*(*(*(a1 + 168) + 8) + 40) setAdamID:*(a1 + 184)];
  [*(*(*(a1 + 168) + 8) + 40) setArtworkURL:*(a1 + 48)];
  [*(*(*(a1 + 168) + 8) + 40) setArtworkURLData:*(a1 + 56)];
  [*(*(*(a1 + 168) + 8) + 40) setName:*(a1 + 64)];
  [*(*(*(a1 + 168) + 8) + 40) setStationDescription:*(a1 + 72)];
  [*(*(*(a1 + 168) + 8) + 40) setCoreSeedName:*(a1 + 80)];
  [*(*(*(a1 + 168) + 8) + 40) setSeedTracks:*(a1 + 88)];
  [*(*(*(a1 + 168) + 8) + 40) setEditEnabled:*(a1 + 232)];
  [*(*(*(a1 + 168) + 8) + 40) setEditableFields:*(a1 + 96)];
  [*(*(*(a1 + 168) + 8) + 40) setHasSkipRules:*(a1 + 233)];
  [*(*(*(a1 + 168) + 8) + 40) setLikesEnabled:*(a1 + 234)];
  [*(*(*(a1 + 168) + 8) + 40) setRequiresSubscription:*(a1 + 235)];
  [*(*(*(a1 + 168) + 8) + 40) setSkipEnabled:*(a1 + 236)];
  [*(*(*(a1 + 168) + 8) + 40) setSkipFrequency:*(a1 + 224)];
  [*(*(*(a1 + 168) + 8) + 40) setSkipIdentifier:*(a1 + 104)];
  [*(*(*(a1 + 168) + 8) + 40) setSkipInterval:*(a1 + 192)];
  [*(*(*(a1 + 168) + 8) + 40) setVirtualPlayEnabled:*(a1 + 237)];
  [*(*(*(a1 + 168) + 8) + 40) setSongMixType:*(a1 + 200)];
  [*(*(*(a1 + 168) + 8) + 40) setAdData:*(a1 + 112)];
  if (*(a1 + 238) == 1)
  {
    [*(*(*(a1 + 168) + 8) + 40) setFeatured:*(a1 + 239)];
  }

  [*(*(*(a1 + 168) + 8) + 40) setIsExplicit:*(a1 + 240)];
  [*(*(*(a1 + 168) + 8) + 40) setGatewayVideoAdEnabled:*(a1 + 241)];
  [*(*(*(a1 + 168) + 8) + 40) setSponsored:*(a1 + 242)];
  [*(*(*(a1 + 168) + 8) + 40) setImpressionThreshold:*(a1 + 208)];
  [*(*(*(a1 + 168) + 8) + 40) setPremiumPlacement:*(a1 + 243)];
  [*(*(*(a1 + 168) + 8) + 40) setPreviewOnly:*(a1 + 244)];
  [*(*(*(a1 + 168) + 8) + 40) setStationStringID:*(a1 + 120)];
  [*(*(*(a1 + 168) + 8) + 40) setStreamURL:*(a1 + 128)];
  [*(*(*(a1 + 168) + 8) + 40) setStreamCertificateURL:*(a1 + 136)];
  [*(*(*(a1 + 168) + 8) + 40) setStreamKeyURL:*(a1 + 144)];
  [*(*(*(a1 + 168) + 8) + 40) setShared:*(a1 + 245)];
  [*(*(*(a1 + 168) + 8) + 40) setSubscribed:*(a1 + 246)];
  [*(*(*(a1 + 168) + 8) + 40) setSubscriberCount:*(a1 + 228)];
  [*(*(*(a1 + 168) + 8) + 40) setShareToken:*(a1 + 152)];
  [*(*(*(a1 + 168) + 8) + 40) setSharingEnabled:*(a1 + 247)];
  result = [*(*(*(a1 + 168) + 8) + 40) setDebugDictionary:*(a1 + 160)];
  if (*(a1 + 216))
  {
    v10 = *(*(*(a1 + 168) + 8) + 40);

    return [v10 setPersistentID:?];
  }

  return result;
}

- (id)newPreviewStationWithDictionary:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__124;
  v15 = __Block_byref_object_dispose__125;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__RadioModel_newPreviewStationWithDictionary___block_invoke;
  v8[3] = &unk_279AEA880;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(RadioModel *)self performWriteTransactionWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __46__RadioModel_newPreviewStationWithDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newStationWithDictionary:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 48) + 8) + 40) setStationID:0];
  v5 = *(*(*(a1 + 48) + 8) + 40);

  return [v5 setSortOrder:0];
}

- (id)newFeaturedStationWithDictionary:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__124;
  v15 = __Block_byref_object_dispose__125;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__RadioModel_newFeaturedStationWithDictionary___block_invoke;
  v8[3] = &unk_279AEA880;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(RadioModel *)self performWriteTransactionWithBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __47__RadioModel_newFeaturedStationWithDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newStationWithDictionary:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(*(*(a1 + 48) + 8) + 40) isSponsored];
  if ((result & 1) == 0)
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);

    return [v6 setFeatured:1];
  }

  return result;
}

- (unint64_t)globalVersion
{
  v2 = [(RadioModel *)self _databasePropertyValueForKey:@"globalVersion"];
  v3 = [v2 longLongValue];

  return v3;
}

- (NSString)globalHash
{
  v2 = [(RadioModel *)self _databasePropertyValueForKey:@"globalHash"];
  v3 = [v2 copy];

  return v3;
}

- (NSArray)featuredStations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__124;
  v10 = __Block_byref_object_dispose__125;
  v11 = 0;
  context = self->_context;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__RadioModel_featuredStations__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __30__RadioModel_featuredStations__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  if (!v2)
  {
    v3 = *(*(a1 + 32) + 88);
    v22 = 0;
    v4 = [v3 performFetch:&v22];
    v5 = v22;
    if ((v4 & 1) == 0)
    {
      v6 = os_log_create("com.apple.amp.radio", "Model");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v5;
        _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_ERROR, "[RadioModel] Error: Unable to fetch stations (%@.)", buf, 0xCu);
      }
    }

    v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  }

  if ([v2 count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v2;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if (![v13 stationID] && ((objc_msgSend(v13, "isFeatured") & 1) != 0 || objc_msgSend(v13, "isSponsored")))
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    v14 = [*(a1 + 32) _arrayByReplacingManagedObjectsInArray:v7];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deleteStation:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_261792000, v5, OS_LOG_TYPE_INFO, "[RadioModel] Deleting station: %@", buf, 0xCu);
    }

    v6 = [v4 model];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__RadioModel_deleteStation___block_invoke;
    v8[3] = &unk_279AEACA0;
    v8[4] = self;
    v9 = v4;
    [v6 performWriteTransactionWithBlock:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __28__RadioModel_deleteStation___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = [*(a1 + 40) managedObject];
  [v1 deleteObject:v2];
}

- (void)deleteStationWithID:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __34__RadioModel_deleteStationWithID___block_invoke;
  v3[3] = &unk_279AEAC78;
  v3[4] = self;
  v3[5] = a3;
  [(RadioModel *)self performWriteTransactionWithBlock:v3];
}

void __34__RadioModel_deleteStationWithID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 stationWithID:*(a1 + 40)];
  [v1 deleteStation:v2];
}

- (void)deleteAllData
{
  v2 = objc_opt_class();

  [v2 deleteAllData];
}

- (id)convertObjectsInSet:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(RadioModel *)self convertObject:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          [v7 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)convertObjects:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(RadioModel *)self convertObject:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v7 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)convertObject:(id)a3
{
  v5 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__124;
  v41 = __Block_byref_object_dispose__125;
  v42 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 managedObjectContext];
    v7 = v6;
    if (v6 && ![v6 isEqual:self->_context])
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __28__RadioModel_convertObject___block_invoke;
      v33[3] = &unk_279AEA880;
      v35 = self;
      v36 = &v37;
      v34 = v5;
      [(RadioModel *)self performTransactionWithBlock:v33];
      v10 = v34;
    }

    else
    {
      v8 = v38;
      v9 = v5;
      v10 = v8[5];
      v8[5] = v9;
    }
  }

  else if ([v5 conformsToProtocol:&unk_287408FB8])
  {
    if ([v5 isDatabaseBacked])
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__124;
      v31 = __Block_byref_object_dispose__125;
      v32 = 0;
      v11 = [v5 managedObject];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 managedObjectContext];
        v14 = [v13 isEqual:self->_context];

        if (v14)
        {
          objc_storeStrong(v38 + 5, a3);
        }

        else
        {
          v20 = MEMORY[0x277D85DD0];
          v21 = 3221225472;
          v22 = __28__RadioModel_convertObject___block_invoke_2;
          v23 = &unk_279AEA880;
          v26 = &v27;
          v24 = self;
          v25 = v12;
          [(RadioModel *)self performTransactionWithBlock:&v20];
          if (v28[5])
          {
            v17 = objc_alloc(objc_opt_class());
            v18 = [v17 initWithModel:self managedObject:{v28[5], v20, v21, v22, v23, v24}];
            v19 = v38[5];
            v38[5] = v18;
          }
        }
      }

      _Block_object_dispose(&v27, 8);
    }

    else
    {
      objc_storeStrong(v38 + 5, a3);
    }
  }

  v15 = v38[5];
  _Block_object_dispose(&v37, 8);

  return v15;
}

void __28__RadioModel_convertObject___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) objectID];
  v2 = [*(*(a1 + 40) + 48) existingObjectWithID:v5 error:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __28__RadioModel_convertObject___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = [*(a1 + 40) objectID];
  v3 = [v2 existingObjectWithID:v6 error:0];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (unint64_t)authenticatedAccountIdentifier
{
  v2 = [(RadioModel *)self _databasePropertyValueForKey:@"accountIdentifier"];
  v3 = [v2 longLongValue];

  return v3;
}

- (NSArray)allStations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__124;
  v10 = __Block_byref_object_dispose__125;
  v11 = 0;
  context = self->_context;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__RadioModel_allStations__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  [(NSManagedObjectContext *)context performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__RadioModel_allStations__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  if (!v2)
  {
    v3 = *(*(a1 + 32) + 88);
    v11 = 0;
    v4 = [v3 performFetch:&v11];
    v5 = v11;
    if ((v4 & 1) == 0)
    {
      v6 = os_log_create("com.apple.amp.radio", "Model");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&dword_261792000, v6, OS_LOG_TYPE_ERROR, "[RadioModel] Error: Unable to fetch stations (%@.)", buf, 0xCu);
      }
    }

    v2 = [*(*(a1 + 32) + 88) fetchedObjects];
  }

  if ([v2 count])
  {
    v7 = [*(a1 + 32) _arrayByReplacingManagedObjectsInArray:v2];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_contextDidSaveNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [(NSManagedObjectContext *)v5 persistentStoreCoordinator];
  v7 = [v6 isEqual:self->_storeCoordinator];

  if (v7)
  {
    context = self->_context;
    if (v5 == context)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __42__RadioModel__contextDidSaveNotification___block_invoke_3;
      v10[3] = &unk_279AEACA0;
      v10[4] = self;
      v9 = &v11;
      v11 = v4;
      dispatch_async(MEMORY[0x277D85CD0], v10);
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __42__RadioModel__contextDidSaveNotification___block_invoke;
      v12[3] = &unk_279AEACA0;
      v12[4] = self;
      v9 = &v13;
      v13 = v4;
      [(NSManagedObjectContext *)context performBlock:v12];
    }
  }
}

void __42__RadioModel__contextDidSaveNotification___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) mergeChangesFromContextDidSaveNotification:*(a1 + 40)];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__RadioModel__contextDidSaveNotification___block_invoke_2;
  v3[3] = &unk_279AEACA0;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE1A8] object:0];
  [(NSOperationQueue *)self->_backgroundCleanupQueue cancelAllOperations];
  backgroundTaskInvalidateTimerSource = self->_backgroundTaskInvalidateTimerSource;
  if (backgroundTaskInvalidateTimerSource)
  {
    dispatch_source_cancel(backgroundTaskInvalidateTimerSource);
  }

  [(BKSProcessAssertion *)self->_backgroundProcessAssertion invalidate];
  if (self->_modelChangedTokenIsValid)
  {
    notify_cancel(self->_modelChangedToken);
  }

  if (self->_modelDeletedTokenIsValid)
  {
    notify_cancel(self->_modelDeletedToken);
  }

  [(NSFetchedResultsController *)self->_stationFetchedResultsController setDelegate:0];

  v5.receiver = self;
  v5.super_class = RadioModel;
  [(RadioModel *)&v5 dealloc];
}

- (id)_initBackgroundModelWithPersistentStoreCoordinator:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = RadioModel;
  v6 = [(RadioModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(RadioModel *)v6 _defaultRadioModelInitialization];
    v7->_isBackgroundModel = 1;
    objc_storeStrong(&v7->_storeCoordinator, a3);
    v8 = [(NSPersistentStoreCoordinator *)v7->_storeCoordinator managedObjectModel];
    model = v7->_model;
    v7->_model = v8;

    [(RadioModel *)v7 _prepareModel];
  }

  return v7;
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = RadioModel;
  v2 = [(RadioModel *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RadioModel *)v2 _defaultRadioModelInitialization];
    [(RadioModel *)v3 _prepareModel];
  }

  return v3;
}

- (RadioModel)init
{
  [MEMORY[0x277CBEAD8] raise:@"RadioModelUnsupportedException" format:{@"-init is not supported, use +sharedModel or +backgroundModel"}];

  return 0;
}

+ (id)_radioDirectoryPath
{
  if (_radioDirectoryPath_sOnceToken != -1)
  {
    dispatch_once(&_radioDirectoryPath_sOnceToken, &__block_literal_global_284);
  }

  v3 = _radioDirectoryPath_sRadioDirectory;

  return v3;
}

uint64_t __33__RadioModel__radioDirectoryPath__block_invoke()
{
  _radioDirectoryPath_sRadioDirectory = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Media/Radio"];

  return MEMORY[0x2821F96F8]();
}

+ (id)_radioDatabasePath
{
  v2 = [a1 _radioDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"Radio.db"];

  return v3;
}

+ (void)_postAccountDidDeauthenticateNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.Radio.account.did-deauthenticate", 0, 0, 1u);
}

+ (id)_persistentStoreConfigurationOptions
{
  v9[6] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBE2D8];
  v8[0] = *MEMORY[0x277CBE2E0];
  v8[1] = v2;
  v9[0] = &unk_2874055A0;
  v9[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277CBE178];
  v8[2] = *MEMORY[0x277CBE1D8];
  v8[3] = v3;
  v4 = *MEMORY[0x277CBE248];
  v8[4] = *MEMORY[0x277CBE240];
  v8[5] = v4;
  v9[2] = MEMORY[0x277CBEC38];
  v9[3] = MEMORY[0x277CBEC38];
  v9[4] = *MEMORY[0x277CCA1B8];
  v9[5] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)deleteAllData
{
  v3 = +[RadioImageCache sharedCache];
  [v3 _removeAllCachedImages];

  v4 = +[RadioModel sharedModel];
  v5 = +[RadioModel backgroundModel];
  v6 = [v4 context];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __27__RadioModel_deleteAllData__block_invoke;
  v10[3] = &unk_279AEA810;
  v11 = v5;
  v12 = v4;
  v13 = a1;
  v7 = v4;
  v8 = v5;
  [v6 performBlockAndWait:v10];

  v9 = +[RadioRequest defaultURLCache];
  [v9 removeAllCachedResponses];
}

void __27__RadioModel_deleteAllData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__RadioModel_deleteAllData__block_invoke_2;
  v5[3] = &unk_279AEA810;
  v6 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v2 performBlockAndWait:v5];
}

void __27__RadioModel_deleteAllData__block_invoke_2(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  [a1[4] _resetModel];
  [a1[5] _resetModel];
  v2 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261792000, v2, OS_LOG_TYPE_INFO, "[RadioModel] Destroying data...", buf, 2u);
  }

  v3 = [a1[6] _radioDatabasePath];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
    v5 = os_log_create("com.apple.amp.radio", "Model");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = v4;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_261792000, v5, OS_LOG_TYPE_INFO, "[RadioModel] Destroying database at URL: %@ (path: %@)", buf, 0x16u);
    }

    v6 = @"NO";
    if (v4)
    {
      os_unfair_lock_lock(&__databaseLock);
      v7 = *(a1[4] + 14);
      v8 = *MEMORY[0x277CBE2E8];
      v9 = [a1[6] _persistentStoreConfigurationOptions];
      v21 = 0;
      LODWORD(v8) = [v7 _destroyPersistentStoreAtURL:v4 withType:v8 options:v9 error:&v21];
      v10 = v21;

      os_unfair_lock_unlock(&__databaseLock);
      if (v8)
      {
        v6 = @"YES";
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v6 = @"NO";
  }

  v11 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v23 = v6;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_261792000, v11, OS_LOG_TYPE_INFO, "[RadioModel] Destroy results: success: %@, error: %@", buf, 0x16u);
  }

  v12 = os_log_create("com.apple.amp.radio", "Model");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = @"RadioModelWasDeletedNotification";
    _os_log_impl(&dword_261792000, v12, OS_LOG_TYPE_INFO, "[RadioModel] Posting '%@'", buf, 0xCu);
  }

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = +[RadioModel sharedModel];
  [v13 postNotificationName:@"RadioModelWasDeletedNotification" object:v14];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  v16 = +[RadioModel backgroundModel];
  [v15 postNotificationName:@"RadioModelWasDeletedNotification" object:v16];

  v17 = a1[4];
  if (*(v17 + 84) == 1)
  {
    v18 = v17[20];
    v19 = getpid();
    notify_set_state(v18, v19);
  }

  notify_post("com.apple.Radio.model-deleted");
  [a1[4] _postContextDidChangeNotification:0];
  [a1[5] _postContextDidChangeNotification:0];
  [a1[6] _postAccountDidDeauthenticateNotification];

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)sharedModel
{
  if (sharedModel___once != -1)
  {
    dispatch_once(&sharedModel___once, &__block_literal_global_145);
  }

  v3 = sharedModel___sharedModel;

  return v3;
}

uint64_t __25__RadioModel_sharedModel__block_invoke()
{
  sharedModel___sharedModel = [[RadioModel alloc] _init];

  return MEMORY[0x2821F96F8]();
}

+ (id)backgroundModel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__RadioModel_backgroundModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (backgroundModel___once != -1)
  {
    dispatch_once(&backgroundModel___once, block);
  }

  v2 = backgroundModel___backgroundModel;

  return v2;
}

void __29__RadioModel_backgroundModel__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = +[RadioModel sharedModel];
  v2 = [v1 _initBackgroundModelWithPersistentStoreCoordinator:v4[14]];
  v3 = backgroundModel___backgroundModel;
  backgroundModel___backgroundModel = v2;
}

@end