@interface VCIntentDefinitionSyncDataHandler
- (BOOL)applyChanges:(id)changes fromSyncService:(id)service error:(id *)error;
- (BOOL)deleteSyncedData:(id *)data;
- (BOOL)markChangesAsSynced:(id)synced withSyncService:(id)service metadata:(id)metadata error:(id *)error;
- (VCIntentDefinitionSyncDataHandler)initWithEventHandler:(id)handler;
- (id)unsyncedChangesForSyncService:(id)service metadata:(id *)metadata error:(id *)error;
- (void)dealloc;
- (void)installedApplicationsDidChange:(id)change;
@end

@implementation VCIntentDefinitionSyncDataHandler

- (BOOL)deleteSyncedData:(id *)data
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = WFSyncedDefinitionDirectoryURL();
  v11 = 0;
  v6 = [defaultManager removeItemAtURL:v5 error:&v11];
  v7 = v11;

  if (v6)
  {
    goto LABEL_7;
  }

  if ([v7 vc_isFileNotFound])
  {

    v7 = 0;
LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  if (data)
  {
    v8 = v7;
    v9 = 0;
    *data = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_8:

  return v9;
}

- (BOOL)applyChanges:(id)changes fromSyncService:(id)service error:(id *)error
{
  v77 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v8 = changesCopy;
  v9 = [v8 countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (!v9)
  {
    v55 = 1;
    goto LABEL_46;
  }

  v11 = v9;
  v12 = *v64;
  v55 = 1;
  *&v10 = 136315394;
  v46 = v10;
  v48 = v8;
  errorCopy = error;
  v52 = defaultManager;
  v47 = *v64;
  do
  {
    v13 = 0;
    v50 = v11;
    do
    {
      if (*v64 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v63 + 1) + 8 * v13);
      v15 = WFSyncedDefinitionDirectoryURL();
      objectIdentifier = [v14 objectIdentifier];
      v17 = WFDefinitionDirectoryURLForBundleIdentifier();

      v62 = 0;
      LOBYTE(v15) = [defaultManager removeItemAtURL:v17 error:&v62];
      v18 = v62;
      v19 = v18;
      if ((v15 & 1) == 0)
      {
        if ([v18 vc_isFileNotFound])
        {

          v19 = 0;
        }

        else if (v19)
        {
          v20 = getWFWatchSyncLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = v46;
            v68 = "[VCIntentDefinitionSyncDataHandler applyChanges:fromSyncService:error:]";
            v69 = 2114;
            v70 = v14;
            _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_ERROR, "%s Could not delete directory for change: %{public}@", buf, 0x16u);
          }

          if (error)
          {
            v21 = v19;
            v55 = 0;
            *error = v19;
          }

          else
          {
            v55 = 0;
          }

          goto LABEL_40;
        }
      }

      if ([v14 changeType] == 1 || objc_msgSend(v14, "changeType") == 2)
      {
        v61 = 0;
        v22 = [defaultManager createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:&v61];
        v23 = v61;
        if ((v22 & 1) != 0 || !v23)
        {
          v53 = v23;
          v54 = v19;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v51 = v14;
          files = [v14 files];
          v30 = [files countByEnumeratingWithState:&v57 objects:v75 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v58;
            while (2)
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v58 != v32)
                {
                  objc_enumerationMutation(files);
                }

                v34 = *(*(&v57 + 1) + 8 * i);
                filename = [v34 filename];
                v36 = [v17 URLByAppendingPathComponent:filename];

                v56 = 0;
                v37 = [v34 writeToFileURL:v36 overwriting:1 error:&v56];
                v38 = v56;
                v39 = v38;
                if ((v37 & 1) == 0)
                {
                  v40 = getWFWatchSyncLogObject();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    filename2 = [v34 filename];
                    *buf = 136315906;
                    v68 = "[VCIntentDefinitionSyncDataHandler applyChanges:fromSyncService:error:]";
                    v69 = 2114;
                    v70 = filename2;
                    v71 = 2114;
                    v72 = v51;
                    v73 = 2114;
                    v74 = v39;
                    _os_log_impl(&dword_23103C000, v40, OS_LOG_TYPE_ERROR, "%s Could not write %{public}@ for %{public}@: %{public}@", buf, 0x2Au);
                  }

                  error = errorCopy;
                  v11 = v50;
                  v12 = v47;
                  if (errorCopy)
                  {
                    v42 = v39;
                    *errorCopy = v39;
                  }

                  v55 = 0;
                  defaultManager = v52;
                  v8 = v48;
                  goto LABEL_36;
                }
              }

              v31 = [files countByEnumeratingWithState:&v57 objects:v75 count:16];
              if (v31)
              {
                continue;
              }

              break;
            }

            v8 = v48;
            error = errorCopy;
            defaultManager = v52;
            v12 = v47;
            v11 = v50;
          }

LABEL_36:
          v19 = v54;

          v28 = v53;
        }

        else
        {
          v24 = v12;
          v25 = v8;
          v26 = v23;
          v27 = getWFWatchSyncLogObject();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v68 = "[VCIntentDefinitionSyncDataHandler applyChanges:fromSyncService:error:]";
            v69 = 2114;
            v70 = v14;
            v71 = 2114;
            v72 = v26;
            _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_ERROR, "%s Could not create intent definition directory for %{public}@: %{public}@", buf, 0x20u);
          }

          if (error)
          {
            v28 = v26;
            v55 = 0;
            *error = v26;
          }

          else
          {
            v55 = 0;
            v28 = v26;
          }

          v8 = v25;
          v12 = v24;
          defaultManager = v52;
        }
      }

LABEL_40:

      ++v13;
    }

    while (v13 != v11);
    v43 = [v8 countByEnumeratingWithState:&v63 objects:v76 count:16];
    v11 = v43;
  }

  while (v43);
LABEL_46:

  v44 = *MEMORY[0x277D85DE8];
  return v55 & 1;
}

- (BOOL)markChangesAsSynced:(id)synced withSyncService:(id)service metadata:(id)metadata error:(id *)error
{
  syncedCopy = synced;
  metadataCopy = metadata;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__VCIntentDefinitionSyncDataHandler_markChangesAsSynced_withSyncService_metadata_error___block_invoke;
  aBlock[3] = &unk_2788FEDD0;
  v18 = syncedCopy;
  v19 = metadataCopy;
  selfCopy = self;
  v12 = metadataCopy;
  v13 = syncedCopy;
  serviceCopy = service;
  v15 = _Block_copy(aBlock);
  LOBYTE(error) = VCAccessSyncServiceIntentDefinitionState(serviceCopy, v15, error);

  return error;
}

uint64_t __88__VCIntentDefinitionSyncDataHandler_markChangesAsSynced_withSyncService_metadata_error___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 applications];
  v5 = [v4 mutableCopy];
  v6 = v5;
  v39 = v3;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = a1;
  obj = *(a1 + 32);
  v9 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        if ([v13 changeType] == 3)
        {
          v15 = [v13 objectIdentifier];
          [v8 removeObjectForKey:v15];
        }

        else
        {
          v16 = objc_alloc(MEMORY[0x277CC1E70]);
          v17 = [v13 objectIdentifier];
          v41 = 0;
          v18 = [v16 initWithBundleIdentifier:v17 allowPlaceholder:0 error:&v41];
          v15 = v41;

          if (!v18)
          {
            v19 = getWFWatchSyncLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = [v13 objectIdentifier];
              *buf = 136315651;
              v47 = "[VCIntentDefinitionSyncDataHandler markChangesAsSynced:withSyncService:metadata:error:]_block_invoke";
              v48 = 2113;
              v49 = v20;
              v50 = 2112;
              v51 = v15;
              _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_ERROR, "%s Could not get LSApplicationRecord for bundle ID %{private}@: %@", buf, 0x20u);
            }
          }

          v21 = objc_opt_new();
          v22 = [v18 registrationDate];
          [v21 setRegisteredDate:v22];

          v23 = [v13 checksum];
          [v21 setChecksum:v23];

          v24 = [v13 objectIdentifier];
          [v8 setObject:v21 forKey:v24];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v10);
  }

  [v39 setApplications:v8];
  v25 = *(v38 + 40);
  if (v25)
  {
    v26 = [v25 objectForKeyedSubscript:@"LSDatabaseUUID"];
    if (v26)
    {
      v27 = objc_alloc(MEMORY[0x277CCAD78]);
      v28 = [*(v38 + 40) objectForKeyedSubscript:@"LSDatabaseUUID"];
      v29 = [v27 initWithUUIDString:v28];
    }

    else
    {
      v29 = 0;
    }

    v30 = [*(v38 + 40) objectForKeyedSubscript:@"LSDatabaseSequenceNumber"];
    v31 = v30;
    if (v29 && v30)
    {
      v32 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = *(v38 + 48);
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 136315394;
        v47 = "[VCIntentDefinitionSyncDataHandler markChangesAsSynced:withSyncService:metadata:error:]_block_invoke";
        v48 = 2114;
        v49 = v35;
        _os_log_impl(&dword_23103C000, v32, OS_LOG_TYPE_INFO, "%s %{public}@ completed syncing entire changeset, ratcheting database sequence number", buf, 0x16u);
      }

      [v39 setDatabaseUUID:v29];
      [v39 setSequenceNumber:v31];
    }
  }

  v36 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)unsyncedChangesForSyncService:(id)service metadata:(id *)metadata error:(id *)error
{
  serviceCopy = service;
  changeClass = [objc_opt_class() changeClass];
  v10 = objc_opt_new();
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3861;
  v27 = __Block_byref_object_dispose__3862;
  v28 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __82__VCIntentDefinitionSyncDataHandler_unsyncedChangesForSyncService_metadata_error___block_invoke;
  v18 = &unk_2788FEDA8;
  v22 = changeClass;
  v11 = v10;
  v19 = v11;
  selfCopy = self;
  v21 = &v23;
  v12 = _Block_copy(&v15);
  VCAccessSyncServiceIntentDefinitionState(serviceCopy, v12, error);
  *metadata = v24[5];
  allObjects = [v11 allObjects];

  _Block_object_dispose(&v23, 8);

  return allObjects;
}

uint64_t __82__VCIntentDefinitionSyncDataHandler_unsyncedChangesForSyncService_metadata_error___block_invoke(uint64_t a1, void *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v67 = 0;
  v68 = 0;
  [v4 getKnowledgeUUID:&v68 andSequenceNumber:&v67];
  v5 = v68;
  v6 = v67;
  v7 = [v3 databaseUUID];
  if ([v7 isEqual:v5])
  {
    v8 = [v3 sequenceNumber];
    v9 = [v8 isEqualToNumber:v6];

    if (v9)
    {
      v10 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v72 = "[VCIntentDefinitionSyncDataHandler unsyncedChangesForSyncService:metadata:error:]_block_invoke";
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_INFO, "%s LaunchServices database is unchanged, therefore there are no intent definition changes", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_40;
    }
  }

  else
  {
  }

  v53 = v6;
  v54 = v5;
  v55 = v4;
  v58 = objc_opt_new();
  WFInstalledAppsEnumerator();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v66 = 0u;
  v12 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
  v57 = v3;
  if (v12)
  {
    v13 = v12;
    v14 = *v64;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v64 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v63 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [objc_alloc(*(a1 + 56)) initWithApplicationRecord:v16 changeType:2];
        if (v18)
        {
          v19 = [v16 bundleIdentifier];
          [v58 addObject:v19];

          v20 = [v3 applications];
          v21 = [v18 objectIdentifier];
          v22 = [v20 objectForKeyedSubscript:v21];

          v23 = [v22 registeredDate];
          v24 = [v16 registrationDate];
          v25 = [v23 isEqual:v24];

          if ((v25 & 1) == 0)
          {
            v26 = [v18 checksum];
            v27 = [v22 checksum];
            v28 = [v26 isEqual:v27];

            if ((v28 & 1) == 0)
            {
              if (!v22)
              {
                [v18 setChangeType:1];
              }

              [*(a1 + 32) addObject:{v18, v53, v54}];
            }
          }

          v3 = v57;
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v13);
  }

  v29 = [v3 applications];
  if (v29)
  {
    v30 = objc_alloc(MEMORY[0x277CBEB58]);
    v31 = [v3 applications];
    v32 = [v31 allKeys];
    v33 = [v30 initWithArray:v32];
  }

  else
  {
    v33 = 0;
  }

  v6 = v53;
  v5 = v54;

  [v33 minusSet:v58];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v60;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v60 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v59 + 1) + 8 * j);
        v40 = objc_autoreleasePoolPush();
        v41 = *(a1 + 32);
        v42 = [objc_alloc(*(a1 + 56)) initWithObjectIdentifier:v39 changeType:3];
        [v41 addObject:v42];

        objc_autoreleasePoolPop(v40);
      }

      v36 = [v34 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v36);
  }

  v11 = 0;
  if (v54)
  {
    v3 = v57;
    v10 = v58;
    v4 = v55;
    if (v53)
    {
      if ([*(a1 + 32) count])
      {
        v69[0] = @"LSDatabaseUUID";
        v43 = [v54 UUIDString];
        v69[1] = @"LSDatabaseSequenceNumber";
        v70[0] = v43;
        v70[1] = v53;
        v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
        v45 = *(*(a1 + 48) + 8);
        v46 = *(v45 + 40);
        *(v45 + 40) = v44;

        v11 = 0;
      }

      else
      {
        v47 = getWFWatchSyncLogObject();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = *(a1 + 40);
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          *buf = 136315394;
          v72 = "[VCIntentDefinitionSyncDataHandler unsyncedChangesForSyncService:metadata:error:]_block_invoke";
          v73 = 2114;
          v74 = v50;
          _os_log_impl(&dword_23103C000, v47, OS_LOG_TYPE_INFO, "%s %{public}@ found no changes to sync, ratcheting database sequence number", buf, 0x16u);
        }

        [v57 setDatabaseUUID:v54];
        [v57 setSequenceNumber:v53];
        v11 = 1;
      }
    }
  }

  else
  {
    v3 = v57;
    v10 = v58;
    v4 = v55;
  }

LABEL_40:
  v51 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)installedApplicationsDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"isPlaceholder"];

  v9 = v5;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bOOLValue = [v7 BOOLValue];
  if ((bOOLValue & 1) == 0)
  {
    [(VCSyncDataHandler *)self requestSync];
  }
}

- (void)dealloc
{
  eventHandler = [(VCIntentDefinitionSyncDataHandler *)self eventHandler];
  [eventHandler removeObserver:self name:@"ApplicationRegistered"];

  eventHandler2 = [(VCIntentDefinitionSyncDataHandler *)self eventHandler];
  [eventHandler2 removeObserver:self name:@"ApplicationUnregistered"];

  eventHandler3 = [(VCIntentDefinitionSyncDataHandler *)self eventHandler];
  [eventHandler3 removeObserver:self name:@"ApplicationStateChanged"];

  v6.receiver = self;
  v6.super_class = VCIntentDefinitionSyncDataHandler;
  [(VCIntentDefinitionSyncDataHandler *)&v6 dealloc];
}

- (VCIntentDefinitionSyncDataHandler)initWithEventHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCIntentDefinitionSyncDataHandler.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"eventHandler"}];
  }

  v15.receiver = self;
  v15.super_class = VCIntentDefinitionSyncDataHandler;
  v7 = [(VCSyncDataHandler *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_eventHandler, handler);
    eventHandler = [(VCIntentDefinitionSyncDataHandler *)v8 eventHandler];
    [eventHandler addObserver:v8 selector:sel_installedApplicationsDidChange_ name:@"ApplicationRegistered"];

    eventHandler2 = [(VCIntentDefinitionSyncDataHandler *)v8 eventHandler];
    [eventHandler2 addObserver:v8 selector:sel_installedApplicationsDidChange_ name:@"ApplicationUnregistered"];

    eventHandler3 = [(VCIntentDefinitionSyncDataHandler *)v8 eventHandler];
    [eventHandler3 addObserver:v8 selector:sel_installedApplicationsDidChange_ name:@"ApplicationStateChanged"];

    v12 = v8;
  }

  return v8;
}

@end