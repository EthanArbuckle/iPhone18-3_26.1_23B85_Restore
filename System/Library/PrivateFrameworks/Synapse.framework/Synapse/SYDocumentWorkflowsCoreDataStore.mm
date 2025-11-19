@interface SYDocumentWorkflowsCoreDataStore
+ (BOOL)removePersistentStoreWithError:(id *)a3;
+ (id)_persistentStoreDirURL;
- (BOOL)_saveContext:(id)a3 error:(id *)a4;
- (BOOL)saveUserActivity:(id)a3 forRelatedUniqueIdentifier:(id)a4 sourceBundleIdentifier:(id)a5 error:(id *)a6;
- (NSPersistentContainer)persistentContainer;
- (id)_fetchRecordWithRelatedUniqueIdentifier:(id)a3 context:(id)a4 error:(id *)a5;
- (id)fetchUserActivityWithRelatedUniqueIdentifier:(id)a3 error:(id *)a4;
- (void)persistentContainer;
@end

@implementation SYDocumentWorkflowsCoreDataStore

+ (id)_persistentStoreDirURL
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 URLsForDirectory:14 inDomains:1];
  v4 = [v3 firstObject];

  v5 = [v4 URLByAppendingPathComponent:@"com.apple.synapse"];

  return v5;
}

+ (BOOL)removePersistentStoreWithError:(id *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [a1 _persistentStoreDirURL];
  v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v19 = v6;
    _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Remove to persistent store directory at: %{private}@", buf, 0xCu);
  }

  v8 = [v6 path];
  v9 = [v5 fileExistsAtPath:v8];

  if (v9)
  {
    v17 = 0;
    v10 = [v5 removeItemAtURL:v6 error:&v17];
    v11 = v17;
    if ((v10 & 1) == 0)
    {
      v12 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(SYDocumentWorkflowsCoreDataStore *)v6 removePersistentStoreWithError:v11, v12];
      }
    }

    if (a3)
    {
      v13 = v11;
      *a3 = v11;
    }
  }

  else
  {
    v14 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v19 = v6;
      _os_log_impl(&dword_225901000, v14, OS_LOG_TYPE_DEFAULT, "Unable to find persistent store directory at: %{private}@", buf, 0xCu);
    }

    if (a3)
    {
      *a3 = 0;
    }

    v10 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (NSPersistentContainer)persistentContainer
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_persistentContainer)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [(SYDocumentWorkflowsCoreDataStore *)v2 modelURL];
    v5 = [v4 path];
    v6 = [v3 fileExistsAtPath:v5];

    if ((v6 & 1) == 0)
    {
      v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v8 = [(SYDocumentWorkflowsCoreDataStore *)v2 modelURL];
        [(SYDocumentWorkflowsCoreDataStore *)v8 persistentContainer];
      }
    }

    v9 = objc_alloc(MEMORY[0x277CBE450]);
    v10 = [(SYDocumentWorkflowsCoreDataStore *)v2 modelURL];
    v39 = [v9 initWithContentsOfURL:v10];

    v11 = [MEMORY[0x277CBE4A0] persistentContainerWithName:@"SYDocumentWorkflowsModel" managedObjectModel:v39];
    if (!v11)
    {
      v12 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(SYDocumentWorkflowsCoreDataStore *)v12 persistentContainer];
      }
    }

    v13 = [objc_opt_class() _persistentStoreDirURL];
    v14 = [v13 path];
    v15 = [v3 fileExistsAtPath:v14];

    v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v17 = [v16 BOOLForKey:@"SYPersistentStoreDirIsClean"];
    v18 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v46 = v15;
      v47 = 1024;
      v48 = v17;
      _os_log_impl(&dword_225901000, v18, OS_LOG_TYPE_DEFAULT, "Persistent store directory exists: %{BOOL}d, isClean: %{BOOL}d", buf, 0xEu);
    }

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __55__SYDocumentWorkflowsCoreDataStore_persistentContainer__block_invoke;
    v42[3] = &unk_27856C6F0;
    v19 = v16;
    v43 = v19;
    v20 = MEMORY[0x22AA6A360](v42);
    v21 = v20;
    if ((v15 | v17))
    {
      if (!(v17 & 1 | ((v15 & 1) == 0)))
      {
        v22 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_225901000, v22, OS_LOG_TYPE_DEFAULT, "Persistent store directory needs cleanup.", buf, 2u);
        }

        v41 = 0;
        v23 = [objc_opt_class() removePersistentStoreWithError:&v41];
        v24 = v41;
        v25 = v24;
        if (v23)
        {
          if (v24)
          {
            v21[2](v21, 1);
          }
        }

        else
        {
          v26 = os_log_create("com.apple.synapse", "DocumentWorkflows");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            [(SYDocumentWorkflowsCoreDataStore *)v25 persistentContainer];
          }
        }

        v27 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v46 = v23;
          _os_log_impl(&dword_225901000, v27, OS_LOG_TYPE_DEFAULT, "Persistent store directory cleaned up successfully: %{BOOL}d", buf, 8u);
        }
      }
    }

    else
    {
      (*(v20 + 16))(v20, 1);
    }

    v40 = 0;
    v28 = [v3 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v40];
    v29 = v40;
    if ((v28 & 1) == 0)
    {
      v30 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        [SYDocumentWorkflowsCoreDataStore persistentContainer];
      }
    }

    v31 = [v13 URLByAppendingPathComponent:@"SYDocumentWorkflowsModel.sqlite"];
    v32 = [objc_alloc(MEMORY[0x277CBE4E0]) initWithURL:v31];
    v44 = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    [(NSPersistentContainer *)v11 setPersistentStoreDescriptions:v33];

    [(NSPersistentContainer *)v11 loadPersistentStoresWithCompletionHandler:&__block_literal_global_15];
    persistentContainer = v2->_persistentContainer;
    v2->_persistentContainer = v11;
    v35 = v11;
  }

  objc_sync_exit(v2);

  v36 = v2->_persistentContainer;
  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void __55__SYDocumentWorkflowsCoreDataStore_persistentContainer__block_invoke_22(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __55__SYDocumentWorkflowsCoreDataStore_persistentContainer__block_invoke_22_cold_1(v3, v4);
    }
  }
}

- (id)fetchUserActivityWithRelatedUniqueIdentifier:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Fetching userActivity with relatedUniqueIdentifier: %@", buf, 0xCu);
  }

  v8 = [(SYDocumentWorkflowsCoreDataStore *)self persistentContainer];
  v9 = [v8 newBackgroundContext];
  v18 = 0;
  v10 = [(SYDocumentWorkflowsCoreDataStore *)self _fetchRecordWithRelatedUniqueIdentifier:v6 context:v9 error:&v18];
  v11 = v18;

  if (v10)
  {
    v12 = [v10 userActivityData];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityData:v12];
    }

    else
    {
      v15 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_impl(&dword_225901000, v15, OS_LOG_TYPE_DEFAULT, "Found nil user activity data for id: %@", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  else if (a4)
  {
    v14 = v11;
    v13 = 0;
    *a4 = v11;
  }

  else
  {
    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)saveUserActivity:(id)a3 forRelatedUniqueIdentifier:(id)a4 sourceBundleIdentifier:(id)a5 error:(id *)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_DEFAULT, "Saving userActivity: %@, relatedUniqueIdentifier: %@, sourceBundleIdentifier: %@", buf, 0x20u);
  }

  v31 = 0;
  v14 = [v10 _createUserActivityDataWithSaving:0 options:0 error:&v31];
  v15 = v31;
  if (v14)
  {
    v29 = a6;
    v16 = [(SYDocumentWorkflowsCoreDataStore *)self persistentContainer];
    v17 = [v16 newBackgroundContext];

    v30 = 0;
    v18 = [(SYDocumentWorkflowsCoreDataStore *)self _fetchRecordWithRelatedUniqueIdentifier:v11 context:v17 error:&v30];
    v19 = v30;
    v20 = v19;
    if (v18 || !v19)
    {
      if (!(v18 | v19))
      {
        v25 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v33 = v11;
          v34 = 2112;
          v35 = v17;
          _os_log_impl(&dword_225901000, v25, OS_LOG_TYPE_DEFAULT, "Creating new record with relatedUniqueIdentifier: %@, context: %@", buf, 0x16u);
        }

        v18 = [[SYUserActivityRecord alloc] initWithContext:v17];
        [v18 setRelatedUniqueIdentifier:v11];
      }

      if (v18 && !v20)
      {
        v26 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v33 = v11;
          v34 = 2112;
          v35 = v17;
          _os_log_impl(&dword_225901000, v26, OS_LOG_TYPE_DEFAULT, "Found existing record with relatedUniqueIdentifier: %@, context: %@", buf, 0x16u);
        }
      }

      [v18 setSourceBundleIdentifier:v12];
      [v18 setUserActivityData:v14];
      v22 = [(SYDocumentWorkflowsCoreDataStore *)self _saveContext:v17 error:v29];
    }

    else if (v29)
    {
      v21 = v19;
      v22 = 0;
      *v29 = v20;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v23 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SYDocumentWorkflowsCoreDataStore saveUserActivity:forRelatedUniqueIdentifier:sourceBundleIdentifier:error:];
    }

    if (a6)
    {
      v24 = v15;
      v22 = 0;
      *a6 = v15;
    }

    else
    {
      v22 = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)_fetchRecordWithRelatedUniqueIdentifier:(id)a3 context:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, "Fetching record with relatedUniqueIdentifier: %@, context: %@", buf, 0x16u);
  }

  v10 = +[SYUserActivityRecord createFetchRequest];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"relatedUniqueIdentifier == %@", v7];
  [v10 setPredicate:v11];

  [v10 setFetchLimit:1];
  v19 = 0;
  v12 = [v8 executeFetchRequest:v10 error:&v19];
  v13 = v19;
  if (v12)
  {
    v14 = [v12 firstObject];
  }

  else
  {
    v15 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v13;
      _os_log_error_impl(&dword_225901000, v15, OS_LOG_TYPE_ERROR, "Unable to fetch record with id: %@, context: %@, error: %@", buf, 0x20u);
    }

    if (a5)
    {
      v16 = v13;
      v14 = 0;
      *a5 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)_saveContext:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "Saving context: %@", buf, 0xCu);
  }

  if ([v5 hasChanges])
  {
    v14 = 0;
    v7 = [v5 save:&v14];
    v8 = v14;
    v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_DEFAULT, "Context saved: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SYDocumentWorkflowsCoreDataStore _saveContext:error:];
      }

      if (a4)
      {
        v11 = v8;
        *a4 = v8;
      }
    }
  }

  else
  {
    v8 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_DEFAULT, "Context has no changes: %@", buf, 0xCu);
    }

    v7 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (void)removePersistentStoreWithError:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138478083;
  *&v4[4] = a1;
  *&v4[12] = 2113;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_225901000, a2, a3, "Unable to remove persistent store directory at: %{private}@, error: %{private}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)persistentContainer
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(&dword_225901000, v0, OS_LOG_TYPE_FAULT, "Unable to create persistent store directory at: %@, error: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __55__SYDocumentWorkflowsCoreDataStore_persistentContainer__block_invoke_22_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_225901000, a2, OS_LOG_TYPE_FAULT, "Unable to load persistent stores, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)saveUserActivity:forRelatedUniqueIdentifier:sourceBundleIdentifier:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v0, v1, "Unable to serialize user activity with id: %@, error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveContext:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3(&dword_225901000, v0, v1, "Unable to save changes in context: %@, error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end