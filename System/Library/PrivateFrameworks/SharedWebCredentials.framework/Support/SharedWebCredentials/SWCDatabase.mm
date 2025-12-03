@interface SWCDatabase
+ (OS_dispatch_queue)queue;
+ (SWCDatabase)sharedDatabase;
+ (id)_archivedDataFromStorage:(id)storage error:(id *)error;
+ (id)_storageFromArchivedData:(id)data error:(id *)error;
+ (id)loadContentsOfURL:(id)l error:(id *)error;
- (BOOL)_deleteStorageItemReturningError:(id *)error;
- (BOOL)_updateStorageItemWithData:(id)data error:(id *)error;
- (BOOL)addEntries:(id)entries;
- (BOOL)removeEntries:(id)entries;
- (BOOL)saveReturningError:(id *)error;
- (NSURL)storageURL;
- (id)_dataFromStorageReturningError:(id *)error;
- (id)_dataURLReturningError:(id *)error;
- (id)_initShared;
- (id)_storageForArchiving;
- (id)entry:(id)entry;
- (id)entryMatchingService:(id)service domain:(id)domain appID:(id)d;
- (id)entryMatchingServiceSpecifier:(id)specifier;
- (void)_removeSettingsForKeysNoSave:(id)save serviceSpecifier:(id)specifier;
- (void)_reorderAppLinks:(id)links domain:(id)domain;
- (void)_scheduleSave;
- (void)cleanOldSettings;
- (void)enumerateEntries:(id)entries matchingService:(id)service domain:(id)domain appID:(id)d block:(id)block;
- (void)enumerateEntries:(id)entries matchingServiceSpecifier:(id)specifier block:(id)block;
- (void)enumerateEntriesMatchingService:(id)service exactDomain:(id)domain appID:(id)d block:(id)block;
- (void)enumerateEntriesMatchingServiceSpecifier:(id)specifier block:(id)block;
- (void)enumerateEntriesMatchingServiceSpecifierWithExactDomain:(id)domain block:(id)block;
- (void)enumerateEntriesWithBlock:(id)block;
- (void)receiveSIGTERMSignal;
- (void)removeAllEntries;
- (void)removeSettingsForKeys:(id)keys serviceSpecifier:(id)specifier;
- (void)removeSettingsForKeys:(id)keys serviceType:(id)type;
- (void)setSettingsDictionary:(id)dictionary forServiceSpecifier:(id)specifier;
- (void)updateEntriesForDomain:(id)domain canonicalEntries:(id)entries;
@end

@implementation SWCDatabase

+ (SWCDatabase)sharedDatabase
{
  queue = [objc_opt_class() queue];
  dispatch_assert_queue_V2(queue);

  if (qword_100032570 != -1)
  {
    dispatch_once(&qword_100032570, &stru_10002CE98);
  }

  v3 = qword_100032568;

  return v3;
}

+ (id)loadContentsOfURL:(id)l error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v18 = 0;
  v8 = [[NSData alloc] initWithContentsOfURL:l options:1 error:&v18];
  v9 = v18;
  v10 = v9;
  if (v8)
  {
    v17 = v9;
    v11 = [self _storageFromArchivedData:v8 error:&v17];
    v12 = v17;

    if (v11)
    {
      v13 = v11;
    }

    v10 = v12;
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (!v11)
  {
    if (qword_100032590 != -1)
    {
      dispatch_once(&qword_100032590, &stru_10002CFC8);
    }

    v14 = qword_100032588;
    if (!os_log_type_enabled(qword_100032588, OS_LOG_TYPE_ERROR))
    {
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    *buf = 138412290;
    v20 = v10;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to load SWC database: %@", buf, 0xCu);
    if (error)
    {
LABEL_11:
      v15 = v10;
      *error = v10;
    }
  }

LABEL_12:

  return v11;
}

- (void)receiveSIGTERMSignal
{
  v3 = os_transaction_create();
  v4 = +[SWCDatabase queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000162EC;
  v6[3] = &unk_10002C790;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (NSURL)storageURL
{
  if (*(self + 40))
  {
    v3 = [(SWCDatabase *)self _dataURLReturningError:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (OS_dispatch_queue)queue
{
  if (qword_100032580 != -1)
  {
    dispatch_once(&qword_100032580, &stru_10002CEB8);
  }

  v3 = qword_100032578;

  return v3;
}

- (id)entry:(id)entry
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableOrderedSet *)self->_entries indexOfObject:entry];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)self->_entries objectAtIndexedSubscript:v6];
  }

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (void)enumerateEntries:(id)entries matchingService:(id)service domain:(id)domain appID:(id)d block:(id)block
{
  context = objc_autoreleasePoolPush();
  entriesCopy = entries;
  obj = entriesCopy;
  if (domain && self->_entries == entriesCopy && [(SWCDomainCache *)self->_domainCache isValid])
  {
    v14 = [(SWCDomainCache *)self->_domainCache entriesForDomain:domain];

    obj = v14;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obja = obj;
  v15 = [obja countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = *v30;
LABEL_7:
    v17 = 0;
    while (1)
    {
      if (*v30 != v16)
      {
        objc_enumerationMutation(obja);
      }

      v18 = *(*(&v29 + 1) + 8 * v17);
      if (!service || ([*(*(&v29 + 1) + 8 * v17) serviceType], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "caseInsensitiveCompare:", service) == 0, v19, v20))
      {
        if (!domain || ([v18 domain], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "encompassesDomain:", domain), v21, (v22 & 1) != 0))
        {
          if (!d || ([v18 applicationIdentifier], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToApplicationIdentifierIgnoringPrefix:", d), v23, (v24 & 1) != 0))
          {
            v28 = 0;
            (*(block + 2))(block, v18, &v28);
            if (v28)
            {
              break;
            }
          }
        }
      }

      if (v15 == ++v17)
      {
        v15 = [obja countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v15)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)enumerateEntries:(id)entries matchingServiceSpecifier:(id)specifier block:(id)block
{
  serviceType = [specifier serviceType];
  sWCDomain = [specifier SWCDomain];
  sWCApplicationIdentifier = [specifier SWCApplicationIdentifier];
  [(SWCDatabase *)self enumerateEntries:entries matchingService:serviceType domain:sWCDomain appID:sWCApplicationIdentifier block:block];
}

- (void)enumerateEntriesWithBlock:(id)block
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_entries;
  v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      v9 = objc_autoreleasePoolPush();
      v10 = 0;
      (*(block + 2))(block, v8, &v10);
      LOBYTE(v8) = v10;
      objc_autoreleasePoolPop(v9);
      if (v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateEntriesMatchingServiceSpecifier:(id)specifier block:(id)block
{
  entries = self->_entries;
  serviceType = [specifier serviceType];
  sWCDomain = [specifier SWCDomain];
  sWCApplicationIdentifier = [specifier SWCApplicationIdentifier];
  [(SWCDatabase *)self enumerateEntries:entries matchingService:serviceType domain:sWCDomain appID:sWCApplicationIdentifier block:block];
}

- (void)enumerateEntriesMatchingService:(id)service exactDomain:(id)domain appID:(id)d block:(id)block
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100016AE4;
  v6[3] = &unk_10002CEE0;
  v6[4] = domain;
  v6[5] = block;
  [(SWCDatabase *)self enumerateEntriesMatchingService:service domain:domain appID:d block:v6];
}

- (void)enumerateEntriesMatchingServiceSpecifierWithExactDomain:(id)domain block:(id)block
{
  serviceType = [domain serviceType];
  sWCDomain = [domain SWCDomain];
  sWCApplicationIdentifier = [domain SWCApplicationIdentifier];
  [(SWCDatabase *)self enumerateEntriesMatchingService:serviceType exactDomain:sWCDomain appID:sWCApplicationIdentifier block:block];
}

- (id)entryMatchingService:(id)service domain:(id)domain appID:(id)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100016D8C;
  v12 = sub_100016D9C;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100016DA4;
  v7[3] = &unk_10002CF08;
  v7[4] = domain;
  v7[5] = &v8;
  [(SWCDatabase *)self enumerateEntriesMatchingService:service domain:domain appID:d block:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)entryMatchingServiceSpecifier:(id)specifier
{
  serviceType = [specifier serviceType];
  sWCDomain = [specifier SWCDomain];
  sWCApplicationIdentifier = [specifier SWCApplicationIdentifier];
  v8 = [(SWCDatabase *)self entryMatchingService:serviceType domain:sWCDomain appID:sWCApplicationIdentifier];

  return v8;
}

- (BOOL)addEntries:(id)entries
{
  v5 = [(NSMutableOrderedSet *)self->_entries count];
  [(NSMutableOrderedSet *)self->_entries unionOrderedSet:entries];
  v6 = [(NSMutableOrderedSet *)self->_entries count];
  if (v6 != v5)
  {
    [(SWCDomainCache *)self->_domainCache updateCachedDomainsForEntries:entries];
    [(SWCDatabase *)self _scheduleSave];
  }

  return v6 != v5;
}

- (BOOL)removeEntries:(id)entries
{
  v5 = [(NSMutableOrderedSet *)self->_entries count];
  [(NSMutableOrderedSet *)self->_entries minusOrderedSet:entries];
  v6 = [(NSMutableOrderedSet *)self->_entries count];
  if (v6 != v5)
  {
    [(SWCDomainCache *)self->_domainCache clear];
    [(SWCDomainCache *)self->_domainCache updateCachedDomainsForEntries:self->_entries];
    [(SWCDatabase *)self _scheduleSave];
  }

  return v6 != v5;
}

- (void)removeAllEntries
{
  [(NSMutableOrderedSet *)self->_entries removeAllObjects];
  [(NSMutableDictionary *)self->_settings removeAllObjects];
  launchServicesDatabaseGeneration = self->_launchServicesDatabaseGeneration;
  self->_launchServicesDatabaseGeneration = 0;

  enterpriseState = self->_enterpriseState;
  self->_enterpriseState = 0;

  [(SWCDomainCache *)self->_domainCache clear];
  if (qword_100032590 != -1)
  {
    dispatch_once(&qword_100032590, &stru_10002CFC8);
  }

  v5 = qword_100032588;
  if (os_log_type_enabled(qword_100032588, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deleting old SWC database from storage", buf, 2u);
  }

  v9 = 0;
  v6 = [(SWCDatabase *)self _deleteStorageItemReturningError:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    if (qword_100032590 != -1)
    {
      dispatch_once(&qword_100032590, &stru_10002CFC8);
    }

    v8 = qword_100032588;
    if (os_log_type_enabled(qword_100032588, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Delete SWC database from storage failed with error %@", buf, 0xCu);
    }
  }
}

- (void)updateEntriesForDomain:(id)domain canonicalEntries:(id)entries
{
  v7 = +[NSDate date];
  if (![entries count])
  {
    if (qword_100032590 != -1)
    {
      dispatch_once(&qword_100032590, &stru_10002CFC8);
    }

    v8 = qword_100032588;
    if (os_log_type_enabled(qword_100032588, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      domainCopy = domain;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "JSON file for %@ had no entries", buf, 0xCu);
    }
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100017498;
  v13 = &unk_10002CF30;
  v9 = v7;
  v14 = v9;
  entriesCopy = entries;
  [(SWCDatabase *)self enumerateEntriesMatchingService:0 exactDomain:domain appID:0 block:&v10];
  [(SWCDatabase *)self _reorderAppLinks:entries domain:domain, v10, v11, v12, v13];
  [SWCEntry canonicalizeEntries:self->_entries];
  [(SWCDatabase *)self scheduleNextSave];
}

- (void)setSettingsDictionary:(id)dictionary forServiceSpecifier:(id)specifier
{
  v6 = [dictionary copy];
  [(NSMutableDictionary *)self->_settings setObject:v6 forKeyedSubscript:specifier];

  generationByIncrementingSelf = [(_SWCGeneration *)self->_settingsGeneration generationByIncrementingSelf];
  settingsGeneration = self->_settingsGeneration;
  self->_settingsGeneration = generationByIncrementingSelf;

  [_SWCServiceSettings postChangeNotificationForServiceSpecifier:specifier];

  [(SWCDatabase *)self scheduleNextSave];
}

- (void)removeSettingsForKeys:(id)keys serviceType:(id)type
{
  v7 = objc_alloc_init(NSMutableArray);
  settings = self->_settings;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100017940;
  v29[3] = &unk_10002CF58;
  v29[4] = type;
  v9 = v7;
  v30 = v9;
  [(NSMutableDictionary *)settings enumerateKeysAndObjectsUsingBlock:v29];
  allObjects = [keys allObjects];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v12)
  {
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [(SWCDatabase *)self _removeSettingsForKeysNoSave:allObjects serviceSpecifier:*(*(&v25 + 1) + 8 * v14)];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v12);
  }

  generationByIncrementingSelf = [(_SWCGeneration *)self->_settingsGeneration generationByIncrementingSelf];
  settingsGeneration = self->_settingsGeneration;
  self->_settingsGeneration = generationByIncrementingSelf;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = v11;
  v18 = [v17 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v18)
  {
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [_SWCServiceSettings postChangeNotificationForServiceSpecifier:*(*(&v21 + 1) + 8 * v20), v21];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v18);
  }

  [(SWCDatabase *)self scheduleNextSave];
}

- (void)removeSettingsForKeys:(id)keys serviceSpecifier:(id)specifier
{
  allObjects = [keys allObjects];
  [(SWCDatabase *)self _removeSettingsForKeysNoSave:allObjects serviceSpecifier:specifier];

  generationByIncrementingSelf = [(_SWCGeneration *)self->_settingsGeneration generationByIncrementingSelf];
  settingsGeneration = self->_settingsGeneration;
  self->_settingsGeneration = generationByIncrementingSelf;

  [_SWCServiceSettings postChangeNotificationForServiceSpecifier:specifier];

  [(SWCDatabase *)self scheduleNextSave];
}

- (void)cleanOldSettings
{
  v3 = objc_autoreleasePoolPush();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100017C94;
  v17[3] = &unk_10002CF58;
  v17[4] = self;
  v4 = objc_alloc_init(NSMutableSet);
  v18 = v4;
  [(SWCDatabase *)self enumerateSettingsDictionariesWithBlock:v17];
  if ([v4 count])
  {
    settings = self->_settings;
    allObjects = [v4 allObjects];
    [(NSMutableDictionary *)settings removeObjectsForKeys:allObjects];

    generationByIncrementingSelf = [(_SWCGeneration *)self->_settingsGeneration generationByIncrementingSelf];
    settingsGeneration = self->_settingsGeneration;
    self->_settingsGeneration = generationByIncrementingSelf;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v10)
    {
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [_SWCServiceSettings postChangeNotificationForServiceSpecifier:*(*(&v13 + 1) + 8 * v12), v13];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v10);
    }

    [(SWCDatabase *)self scheduleNextSave];
  }

  objc_autoreleasePoolPop(v3);
}

- (BOOL)saveReturningError:(id *)error
{
  v5 = objc_autoreleasePoolPush();
  if (*(self + 40))
  {
    v6 = os_transaction_create();
    if (qword_100032590 != -1)
    {
      dispatch_once(&qword_100032590, &stru_10002CFC8);
    }

    v7 = qword_100032588;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(NSMutableOrderedSet *)self->_entries count];
      *buf = 134217984;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Saving SWC database with %llu entries...", buf, 0xCu);
    }

    _storageForArchiving = [(SWCDatabase *)self _storageForArchiving];
    v20 = 0;
    v10 = [objc_opt_class() _archivedDataFromStorage:_storageForArchiving error:&v20];
    v11 = v20;
    v12 = v11;
    if (v10)
    {
      v19 = v11;
      v13 = [(SWCDatabase *)self _updateStorageItemWithData:v10 error:&v19];
      v14 = v19;

      v12 = v14;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if (qword_100032590 != -1)
    {
      dispatch_once(&qword_100032590, &stru_10002CFC8);
    }

    v15 = qword_100032588;
    if (os_log_type_enabled(qword_100032588, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Non-shared instance of SWCDatabase cannot save--ignoring call.", buf, 2u);
    }

    v12 = 0;
    v13 = 1;
  }

  objc_autoreleasePoolPop(v5);
  if (!v13)
  {
    if (qword_100032590 != -1)
    {
      dispatch_once(&qword_100032590, &stru_10002CFC8);
    }

    v16 = qword_100032588;
    if (os_log_type_enabled(qword_100032588, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v12;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to save SWC database: %@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (error)
    {
LABEL_20:
      v17 = v12;
      *error = v12;
    }
  }

LABEL_21:

  return v13;
}

- (id)_initShared
{
  v37.receiver = self;
  v37.super_class = SWCDatabase;
  v2 = [(SWCDatabase *)&v37 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    *(v2 + 40) |= 1u;
    v4 = objc_alloc_init(_SWCGeneration);
    settingsGeneration = v2->_settingsGeneration;
    v2->_settingsGeneration = v4;

    v6 = objc_alloc_init(SWCDomainCache);
    domainCache = v2->_domainCache;
    v2->_domainCache = v6;

    v36 = 0;
    v8 = [(SWCDatabase *)v2 _dataFromStorageReturningError:&v36];
    v9 = v36;
    v10 = v9;
    if (v8)
    {
      v35 = v9;
      v11 = [objc_opt_class() _storageFromArchivedData:v8 error:&v35];
      v12 = v35;

      if (v11)
      {
        settings = [v11 settings];
        v14 = [settings mutableCopy];
        settings = v2->_settings;
        v2->_settings = v14;

        if ([v11 databaseVersion] == 9)
        {
          entries = [v11 entries];
          v17 = [entries mutableCopy];
          entries = v2->_entries;
          v2->_entries = v17;

          launchServicesDatabaseGeneration = [v11 launchServicesDatabaseGeneration];
          v20 = [launchServicesDatabaseGeneration copy];
          launchServicesDatabaseGeneration = v2->_launchServicesDatabaseGeneration;
          v2->_launchServicesDatabaseGeneration = v20;

          enterpriseState = [v11 enterpriseState];
          v23 = [enterpriseState copy];
          enterpriseState = v2->_enterpriseState;
          v2->_enterpriseState = v23;

          [(SWCDomainCache *)v2->_domainCache updateCachedDomainsForEntries:v2->_entries];
        }

        else
        {
          if (qword_100032590 != -1)
          {
            dispatch_once(&qword_100032590, &stru_10002CFC8);
          }

          v25 = qword_100032588;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            databaseVersion = [v11 databaseVersion];
            *buf = 134218240;
            v39 = databaseVersion;
            v40 = 2048;
            v41 = 9;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "SWC database version did not match (had %llu, wanted %llu). Keeping settings and regenerating entries.", buf, 0x16u);
          }

          v27 = objc_alloc_init(NSMutableOrderedSet);
          v28 = v2->_entries;
          v2->_entries = v27;
        }
      }
    }

    else
    {
      v12 = v9;
    }

    if (!v2->_entries || !v2->_settings)
    {
      if (qword_100032590 != -1)
      {
        dispatch_once(&qword_100032590, &stru_10002CFC8);
      }

      v29 = qword_100032588;
      if (os_log_type_enabled(qword_100032588, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v12;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to get SWC database, rebuilding: %@", buf, 0xCu);
      }

      v30 = objc_alloc_init(NSMutableOrderedSet);
      v31 = v2->_entries;
      v2->_entries = v30;

      v32 = objc_alloc_init(NSMutableDictionary);
      v33 = v2->_settings;
      v2->_settings = v32;
    }

    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

- (void)_removeSettingsForKeysNoSave:(id)save serviceSpecifier:(id)specifier
{
  settings = self->_settings;
  if (save)
  {
    v8 = [(NSMutableDictionary *)settings objectForKeyedSubscript:specifier];
    v10 = [v8 mutableCopy];

    if (v10)
    {
      [v10 removeObjectsForKeys:save];
      if ([v10 count])
      {
        v9 = [v10 copy];
        [(NSMutableDictionary *)self->_settings setObject:v9 forKeyedSubscript:specifier];
      }

      else
      {
        [(NSMutableDictionary *)self->_settings setObject:0 forKeyedSubscript:specifier];
      }
    }
  }

  else
  {

    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }
}

- (id)_storageForArchiving
{
  v4 = objc_alloc_init(SWCDatabaseStorage);
  if (!v4)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SWCDatabase.mm" lineNumber:806 description:@"Failed to allocate storage object"];
  }

  [(SWCDatabaseStorage *)v4 setDatabaseVersion:9];
  [(SWCDatabaseStorage *)v4 setEntries:self->_entries];
  [(SWCDatabaseStorage *)v4 setSettings:self->_settings];
  [(SWCDatabaseStorage *)v4 setLaunchServicesDatabaseGeneration:self->_launchServicesDatabaseGeneration];
  [(SWCDatabaseStorage *)v4 setEnterpriseState:self->_enterpriseState];

  return v4;
}

+ (id)_storageFromArchivedData:(id)data error:(id *)error
{
  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [NSKeyedUnarchiver swc_unarchivedObjectOfClass:objc_opt_class() fromData:data error:&v11];
  v8 = v11;
  objc_autoreleasePoolPop(v6);
  if (error && !v7)
  {
    v9 = v8;
    *error = v8;
  }

  return v7;
}

+ (id)_archivedDataFromStorage:(id)storage error:(id *)error
{
  v6 = objc_autoreleasePoolPush();
  v11 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:storage requiringSecureCoding:1 error:&v11];
  v8 = v11;
  objc_autoreleasePoolPop(v6);
  if (error && !v7)
  {
    v9 = v8;
    *error = v8;
  }

  return v7;
}

- (void)_scheduleSave
{
  if (*(self + 40))
  {
    v8 = 0;
    *buf = 0x402E000000000000;
    v9 = 0x401E000000000000;
    queue = [objc_opt_class() queue];
    v11 = os_transaction_create();
    objc_initWeak(&location, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100019338;
    v4[3] = &unk_10002CFA8;
    objc_copyWeak(&v5, &location);
    sub_10001AC88(&self->_saveTimer, buf, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {
    if (qword_100032590 != -1)
    {
      dispatch_once(&qword_100032590, &stru_10002CFC8);
    }

    v3 = qword_100032588;
    if (os_log_type_enabled(qword_100032588, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Non-shared instance of SWCDatabase cannot save--ignoring scheduling call.", buf, 2u);
    }
  }
}

- (void)_reorderAppLinks:(id)links domain:(id)domain
{
  v6 = objc_alloc_init(NSMutableOrderedSet);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  linksCopy = links;
  v8 = [linksCopy countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v10 = *v21;
    v11 = _SWCServiceTypeAppLinks;
    *&v9 = 138412290;
    v19 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(linksCopy);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        serviceType = [v13 serviceType];
        v15 = [serviceType isEqual:v11];

        if (v15)
        {
          v16 = [(SWCDatabase *)self entry:v13];
          if (v16)
          {
            if (qword_100032590 != -1)
            {
              dispatch_once(&qword_100032590, &stru_10002CFC8);
            }

            v17 = qword_100032588;
            if (os_log_type_enabled(qword_100032588, OS_LOG_TYPE_DEBUG))
            {
              *buf = v19;
              v25 = v16;
              _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Removing to reorder %@", buf, 0xCu);
            }

            [v6 addObject:v16];
          }
        }

        v12 = v12 + 1;
      }

      while (v8 != v12);
      v8 = [linksCopy countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  [(SWCDatabase *)self removeEntries:v6];
  [(SWCDatabase *)self addEntries:v6];
  if ([v6 count])
  {
    if (qword_100032590 != -1)
    {
      dispatch_once(&qword_100032590, &stru_10002CFC8);
    }

    v18 = qword_100032588;
    if (os_log_type_enabled(qword_100032588, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Reordered %@", buf, 0xCu);
    }
  }
}

- (id)_dataURLReturningError:(id *)error
{
  v4 = +[_SWCPrefs sharedPrefs];
  v5 = [v4 containerURLReturningError:error];

  if (v5)
  {
    v6 = [v5 URLByAppendingPathComponent:@"swc.db" isDirectory:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_dataFromStorageReturningError:(id *)error
{
  v4 = [(SWCDatabase *)self _dataURLReturningError:?];
  if (v4)
  {
    v5 = [[NSData alloc] initWithContentsOfURL:v4 options:1 error:error];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_updateStorageItemWithData:(id)data error:(id *)error
{
  v6 = [(SWCDatabase *)self _dataURLReturningError:error];
  if (v6)
  {
    v7 = [data writeToURL:v6 options:268435457 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_deleteStorageItemReturningError:(id *)error
{
  v4 = [(SWCDatabase *)self _dataURLReturningError:?];
  if (v4)
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [v5 removeItemAtURL:v4 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end