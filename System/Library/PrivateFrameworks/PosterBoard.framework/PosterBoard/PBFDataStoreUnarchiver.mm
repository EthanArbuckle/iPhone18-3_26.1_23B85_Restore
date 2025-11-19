@interface PBFDataStoreUnarchiver
+ (BOOL)unarchiveDataStoreAtURL:(id)a3 toURL:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)fileManager;
- (BOOL)_focusActivityExistsForUUID:(id)a3;
- (BOOL)unarchiveToDirectoryAtURL:(id)a3 error:(id *)a4;
- (PBFDataStoreUnarchiver)initWithArchivedDataStoreURL:(id)a3;
- (id)_activityForIdentifier:(id)a3;
- (id)_availableActivities;
@end

@implementation PBFDataStoreUnarchiver

+ (id)fileManager
{
  if (fileManager_onceToken_64 != -1)
  {
    +[PBFDataStoreUnarchiver fileManager];
  }

  v3 = fileManager_fileManager_63;

  return v3;
}

void __37__PBFDataStoreUnarchiver_fileManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = fileManager_fileManager_63;
  fileManager_fileManager_63 = v0;
}

+ (BOOL)unarchiveDataStoreAtURL:(id)a3 toURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v30[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 fileManager];
  v14 = [MEMORY[0x277CBEBC0] pf_temporaryDirectoryURL];
  v15 = [MEMORY[0x277CCAD78] UUID];
  v16 = [v15 UUIDString];
  v17 = [v14 URLByAppendingPathComponent:v16];

  if (![v13 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:a6])
  {
LABEL_10:
    v21 = 0;
    goto LABEL_13;
  }

  if ((PBFAppleArchiveDecompress(v10, v17) & 1) == 0)
  {
    if (a6)
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA748];
      v29[0] = *MEMORY[0x277CCA470];
      v29[1] = v23;
      v24 = @"(NULL archiveURL)";
      if (v10)
      {
        v24 = v10;
      }

      v30[0] = @"Unable to decompress data store url";
      v30[1] = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      *a6 = [v22 pbf_generalErrorWithCode:7 userInfo:v25];
    }

    [v13 removeItemAtURL:v17 error:0];
    goto LABEL_10;
  }

  v18 = *MEMORY[0x277CBE800];
  v19 = *MEMORY[0x277CBE8A0];
  v27[0] = *MEMORY[0x277CBE7F8];
  v27[1] = v19;
  v28[0] = v18;
  v28[1] = MEMORY[0x277CBEC38];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  [v17 pbf_recursivelyUpdateResourceValues:v20 error:0];
  if ([PBFDataStoreArchivalUtilities transformDataStoreAtURL:v17 options:v12 error:a6])
  {
    v21 = [v13 moveItemAtURL:v17 toURL:v11 error:a6];
  }

  else
  {
    [v13 removeItemAtURL:v17 error:0];
    v21 = 0;
  }

LABEL_13:
  return v21;
}

- (PBFDataStoreUnarchiver)initWithArchivedDataStoreURL:(id)a3
{
  v5 = a3;
  if (([v5 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [PBFDataStoreUnarchiver initWithArchivedDataStoreURL:a2];
  }

  v10.receiver = self;
  v10.super_class = PBFDataStoreUnarchiver;
  v6 = [(PBFDataStoreUnarchiver *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    archivedDataStoreURL = v6->_archivedDataStoreURL;
    v6->_archivedDataStoreURL = v7;

    v6->_remapFocusConfigurations = 1;
  }

  return v6;
}

- (BOOL)unarchiveToDirectoryAtURL:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(NSURL *)self->_archivedDataStoreURL checkResourceIsReachableAndReturnError:a4])
  {
    v7 = [objc_opt_class() fileManager];
    v8 = [MEMORY[0x277CBEBC0] pf_temporaryDirectoryURL];
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = [v8 URLByAppendingPathComponent:v10];

    v12 = objc_opt_class();
    archivedDataStoreURL = self->_archivedDataStoreURL;
    v14 = [(PBFDataStoreUnarchiver *)self options];
    LOBYTE(v12) = [v12 unarchiveDataStoreAtURL:archivedDataStoreURL toURL:v11 options:v14 error:a4];

    if (v12)
    {
      if ([(PBFDataStoreUnarchiver *)self remapFocusConfigurations])
      {
        v26 = a4;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v15 = _PBFExtensionStoreCoordinatorsForDataStoreExtensionContainerURL(v11, 0);
        v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v29;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v29 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v28 + 1) + 8 * i);
              v21 = [v20 setupEnvironmentIfNecessary];
              if (v21)
              {
                v23 = v21;
                if (v26)
                {
                  v24 = v21;
                  *v26 = v23;
                }

                [v7 removeItemAtURL:v11 error:0];

                v22 = 0;
                goto LABEL_19;
              }

              v27[0] = MEMORY[0x277D85DD0];
              v27[1] = 3221225472;
              v27[2] = __58__PBFDataStoreUnarchiver_unarchiveToDirectoryAtURL_error___block_invoke;
              v27[3] = &unk_2782C7E00;
              v27[4] = self;
              [v20 enumerateConfigurationStoreCoordinators:v27];
            }

            v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        a4 = v26;
      }

      v22 = [v7 moveItemAtURL:v11 toURL:v6 error:a4];
    }

    else
    {
      [v7 removeItemAtURL:v11 error:0];
      v22 = 0;
    }

LABEL_19:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __58__PBFDataStoreUnarchiver_unarchiveToDirectoryAtURL_error___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [a2 allPosterPaths];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    v7 = 0x277D3E000uLL;
    v24 = v3;
    v25 = a1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [*(v7 + 3560) loadFocusConfigurationForPath:v9 error:{0, v24, v25}];
        v11 = v10;
        if (v10)
        {
          v12 = *(a1 + 32);
          v13 = [v10 activityUUID];
          LOBYTE(v12) = [v12 _focusActivityExistsForUUID:v13];

          if ((v12 & 1) == 0)
          {
            v14 = *(a1 + 32);
            v15 = [v11 activityIdentifier];
            v16 = [v14 _activityForIdentifier:v15];

            if (v16)
            {
              v17 = objc_alloc(MEMORY[0x277D3ED98]);
              v18 = [v16 activityIdentifier];
              [v16 activityUniqueIdentifier];
              v19 = v5;
              v20 = v7;
              v22 = v21 = v6;
              v23 = [v17 initWithActivityIdentifier:v18 activityUUID:v22];

              v6 = v21;
              v7 = v20;
              v5 = v19;

              v3 = v24;
              a1 = v25;
              [*(v7 + 3560) storeFocusConfigurationForPath:v9 focusConfiguration:v23 error:0];
            }

            else
            {
              [*(v7 + 3560) removeFocusConfigurationForPath:v9 error:0];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }
}

- (id)_availableActivities
{
  v2 = [MEMORY[0x277D0A9E8] sharedActivityManager];
  v3 = [v2 availableActivities];

  return v3;
}

- (BOOL)_focusActivityExistsForUUID:(id)a3
{
  v4 = a3;
  v5 = [(PBFDataStoreUnarchiver *)self _availableActivities];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__PBFDataStoreUnarchiver__focusActivityExistsForUUID___block_invoke;
  v9[3] = &unk_2782C57D0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_containsObjectPassingTest:v9];

  return v7;
}

uint64_t __54__PBFDataStoreUnarchiver__focusActivityExistsForUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activityUniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_activityForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PBFDataStoreUnarchiver *)self _availableActivities];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__PBFDataStoreUnarchiver__activityForIdentifier___block_invoke;
  v9[3] = &unk_2782C57D0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __49__PBFDataStoreUnarchiver__activityForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activityIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)initWithArchivedDataStoreURL:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[archivedDataStoreURL checkResourceIsReachableAndReturnError:nil]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end