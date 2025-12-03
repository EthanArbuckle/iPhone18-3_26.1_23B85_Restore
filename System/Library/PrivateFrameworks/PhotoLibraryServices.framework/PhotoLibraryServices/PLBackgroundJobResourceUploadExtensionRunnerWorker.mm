@interface PLBackgroundJobResourceUploadExtensionRunnerWorker
+ (BOOL)checkServerFeatureVersionForLibraryServicesManager:(id)manager;
+ (BOOL)isBackgroundAppRefreshEnabledWithBundleIdentifiers:(id)identifiers libraryServicesManager:(id)manager;
+ (BOOL)isEnabledForBundle:(id)bundle;
+ (id)_enabledEventMonitorJobConfigurationRequest;
+ (id)_enabledJobConfigurationRequest;
+ (id)fetchConfigurationEnabledBundleIdentifiersForLibraryServicesManager:(id)manager;
- (BOOL)_confirmProcessingCompletionResultsForConfiguration:(id)configuration library:(id)library;
- (BOOL)_isJobCancelled;
- (BOOL)_validateConfiguration:(id)configuration delay:(double *)delay;
- (PLBackgroundJobResourceUploadExtensionRunnerWorker)initWithLibraryBundle:(id)bundle;
- (double)_isConfigurationDelayedWithConfiguration:(id)configuration;
- (id)_enabledEventMonitorJobConfigurationsForProcessingInLibrary:(id)library;
- (id)_enabledJobConfigurationsForProcessingInLibrary:(id)library delay:(double *)delay;
- (id)_errorFromProcessingResult:(unint64_t)result;
- (id)_workItemIdentifiersInLibrary:(id)library;
- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias;
- (void)_bumpAttemptCountForConfiguration:(id)configuration;
- (void)_checkInitialProcessingIsCompletedForConfigurations:(id)configurations inLibrary:(id)library;
- (void)_handleProcessingResult:(unint64_t)result bundleIdentifier:(id)identifier library:(id)library completionBlock:(id)block;
- (void)_removeWorkItemForConfigurationIdentifier:(id)identifier library:(id)library;
- (void)_resetAttemptCountForConfiguration:(id)configuration;
- (void)_switchConfiguration:(id)configuration toState:(signed __int16)state;
- (void)_switchEventMonitorConfigurationWithConfigurations:(id)configurations inLibrary:(id)library;
- (void)_updateConfigurationStateWithWorkItemIdentifiers:(id)identifiers configurations:(id)configurations inLibrary:(id)library;
- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion;
- (void)stopWorkingOnItem:(id)item;
@end

@implementation PLBackgroundJobResourceUploadExtensionRunnerWorker

- (double)_isConfigurationDelayedWithConfiguration:(id)configuration
{
  v27 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  attemptCount = [configurationCopy attemptCount];
  v6 = attemptCount;
  if (attemptCount < 49)
  {
    completionDate = [configurationCopy completionDate];
    v11 = [MEMORY[0x1E695DF00] now];
    [v11 timeIntervalSinceDate:completionDate];
    v13 = v12;
    v14 = PLExtensionRunnerWorkerDelaySchedule();
    if (self->_reducedConfigurationDelay)
    {
      if (MEMORY[0x19EAEE230]())
      {
        v23[0] = &unk_1F0FBC658;
        v23[1] = &unk_1F0FBC670;
        *buf = &unk_1F0FC0408;
        *&buf[8] = &unk_1F0FC0458;
        v23[2] = &unk_1F0FBC688;
        v23[3] = &unk_1F0FBC6A0;
        *&buf[16] = &unk_1F0FC0458;
        v25 = &unk_1F0FC0458;
        v23[4] = &unk_1F0FBC640;
        v26 = &unk_1F0FC0458;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v23 count:5];
      }

      else
      {
        v15 = PLExtensionRunnerWorkerDelaySchedule();
      }

      v16 = v15;

      v14 = v16;
    }

    if (v6 - 1 >= 4)
    {
      v9 = 0.0;
      if (!v6)
      {
LABEL_17:

        goto LABEL_18;
      }

      v17 = [v14 objectForKeyedSubscript:&unk_1F0FBC640];
      [v17 doubleValue];
      v20 = v21;
    }

    else
    {
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
      v18 = [v14 objectForKeyedSubscript:v17];
      [v18 doubleValue];
      v20 = v19;
    }

    if (v13 >= v20)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v20 - v13;
    }

    goto LABEL_17;
  }

  v7 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [configurationCopy uuid];
    *buf = 134218242;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = uuid;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "UploadExtensionRunnerWorker: Exceeded max attempt count %td. Reseting to incremental for configuration: <%{public}@>", buf, 0x16u);
  }

  [(PLBackgroundJobResourceUploadExtensionRunnerWorker *)self _switchConfiguration:configurationCopy toState:2];
  v9 = 0.0;
LABEL_18:

  return v9;
}

- (BOOL)_validateConfiguration:(id)configuration delay:(double *)delay
{
  v30 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  photoLibrary = [configurationCopy photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];
  bundleIdentifier = [configurationCopy bundleIdentifier];
  v10 = [libraryServicesManager isBackgroundAppRefreshEnabledForBundleIdentifier:bundleIdentifier];

  if (!v10)
  {
    v18 = 0;
    goto LABEL_10;
  }

  v25 = 0;
  v11 = [PLAssetResourceUploadJob countOfUploadJobsWithConfiguration:configurationCopy states:&unk_1F0FBFAA8 inPhotoLibrary:photoLibrary error:&v25];
  v12 = v25;
  if (v11 >= 1)
  {
    v13 = PLBackgroundJobServiceGetLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_6:

      goto LABEL_7;
    }

    uuid = [configurationCopy uuid];
    *buf = 138543362;
    v27 = uuid;
    v15 = "UploadExtensionRunnerWorker: Skipping configuration: <%{public}@> due to unprocessed pending/registered jobs";
    v16 = v13;
    v17 = OS_LOG_TYPE_INFO;
LABEL_5:
    _os_log_impl(&dword_19BF1F000, v16, v17, v15, buf, 0xCu);

    goto LABEL_6;
  }

  if (!self->_disableConfigurationDelay)
  {
    [(PLBackgroundJobResourceUploadExtensionRunnerWorker *)self _isConfigurationDelayedWithConfiguration:configurationCopy];
    v21 = v20;
    if (v20 > 10.0)
    {
      v23 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [configurationCopy uuid];
        *buf = 138543618;
        v27 = uuid2;
        v28 = 2050;
        v29 = v21;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "UploadExtensionRunnerWorker: Delaying due to failed attempts for configuration: <%{public}@> - skipping until %{public}f seconds have elapsed", buf, 0x16u);
      }

      if (delay)
      {
        v18 = 0;
        *delay = v21;
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  state = [configurationCopy state];
  if (state < 2)
  {
    v13 = PLBackgroundJobServiceGetLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    uuid = [configurationCopy uuid];
    *buf = 138543362;
    v27 = uuid;
    v15 = "UploadExtensionRunnerWorker: Unexpected configuration state for configuration: <%{public}@> - skipping";
    v16 = v13;
    v17 = OS_LOG_TYPE_ERROR;
    goto LABEL_5;
  }

  if (state == 2)
  {
    v13 = PLBackgroundJobServiceGetLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    uuid = [configurationCopy uuid];
    *buf = 138543362;
    v27 = uuid;
    v15 = "UploadExtensionRunnerWorker: Event monitoring only for configuration: <%{public}@> - skipping";
    v16 = v13;
    v17 = OS_LOG_TYPE_DEBUG;
    goto LABEL_5;
  }

  if (state == 3)
  {
    v18 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:

LABEL_10:
  return v18;
}

- (id)_enabledJobConfigurationsForProcessingInLibrary:(id)library delay:(double *)delay
{
  libraryCopy = library;
  _enabledJobConfigurationRequest = [objc_opt_class() _enabledJobConfigurationRequest];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0xBFF0000000000000;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __108__PLBackgroundJobResourceUploadExtensionRunnerWorker__enabledJobConfigurationsForProcessingInLibrary_delay___block_invoke;
  v15[3] = &unk_1E75780D8;
  v9 = libraryCopy;
  v16 = v9;
  v10 = _enabledJobConfigurationRequest;
  v17 = v10;
  selfCopy = self;
  v11 = v8;
  v19 = v11;
  v20 = &v21;
  [v9 performTransactionAndWait:v15];
  if (delay)
  {
    *delay = v22[3];
  }

  v12 = v19;
  v13 = v11;

  _Block_object_dispose(&v21, 8);

  return v13;
}

void __108__PLBackgroundJobResourceUploadExtensionRunnerWorker__enabledJobConfigurationsForProcessingInLibrary_delay___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v20 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v20];
  v5 = v20;

  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          *buf = 0xBFF0000000000000;
          if ([*(a1 + 48) _validateConfiguration:v11 delay:{buf, v16}])
          {
            [*(a1 + 56) addObject:v11];
          }

          else
          {
            v12 = *buf;
            if (*buf > 0.0)
            {
              v13 = *(*(a1 + 64) + 8);
              v14 = *(v13 + 24);
              if (v14 < 0.0 || *buf < v14)
              {
                *(v13 + 24) = *buf;
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16, v12];
      }

      while (v8);
    }
  }

  else
  {
    v6 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "UploadExtensionRunnerWorker: Failed to fetch configurations. Error: %@", buf, 0xCu);
    }
  }
}

- (id)_enabledEventMonitorJobConfigurationsForProcessingInLibrary:(id)library
{
  libraryCopy = library;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__35898;
  v15 = __Block_byref_object_dispose__35899;
  v16 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __114__PLBackgroundJobResourceUploadExtensionRunnerWorker__enabledEventMonitorJobConfigurationsForProcessingInLibrary___block_invoke;
  v8[3] = &unk_1E7578820;
  v8[4] = self;
  v5 = libraryCopy;
  v9 = v5;
  v10 = &v11;
  [v5 performTransactionAndWait:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __114__PLBackgroundJobResourceUploadExtensionRunnerWorker__enabledEventMonitorJobConfigurationsForProcessingInLibrary___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _enabledEventMonitorJobConfigurationRequest];
  v3 = [*(a1 + 40) managedObjectContext];
  v9 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = v4;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "UploadExtensionRunnerWorker: Failed to fetch event monitor configurations. Error: %@", buf, 0xCu);
    }
  }
}

- (void)_removeWorkItemForConfigurationIdentifier:(id)identifier library:(id)library
{
  identifierCopy = identifier;
  libraryCopy = library;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __104__PLBackgroundJobResourceUploadExtensionRunnerWorker__removeWorkItemForConfigurationIdentifier_library___block_invoke;
  v9[3] = &unk_1E7578848;
  v10 = libraryCopy;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = libraryCopy;
  [v8 performTransactionAndWait:v9];
}

void __104__PLBackgroundJobResourceUploadExtensionRunnerWorker__removeWorkItemForConfigurationIdentifier_library___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v15 = 0;
  v4 = [PLBackgroundJobWorkItem workItemsSortedByTimestampWithIdentifier:v3 jobType:7 inManagedObjectContext:v2 error:&v15];
  v5 = v15;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v2 deleteObject:{*(*(&v11 + 1) + 8 * v10++), v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_updateConfigurationStateWithWorkItemIdentifiers:(id)identifiers configurations:(id)configurations inLibrary:(id)library
{
  identifiersCopy = identifiers;
  configurationsCopy = configurations;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __128__PLBackgroundJobResourceUploadExtensionRunnerWorker__updateConfigurationStateWithWorkItemIdentifiers_configurations_inLibrary___block_invoke;
  v12[3] = &unk_1E75761B8;
  v13 = configurationsCopy;
  v14 = identifiersCopy;
  selfCopy = self;
  v10 = identifiersCopy;
  v11 = configurationsCopy;
  [library performTransactionAndWait:v12];
}

void __128__PLBackgroundJobResourceUploadExtensionRunnerWorker__updateConfigurationStateWithWorkItemIdentifiers_configurations_inLibrary___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 bundleIdentifier];
        LODWORD(v8) = [v8 containsObject:v9];

        if (v8)
        {
          [*(a1 + 48) _switchConfiguration:v7 toState:3];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)_checkInitialProcessingIsCompletedForConfigurations:(id)configurations inLibrary:(id)library
{
  v25 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  libraryCopy = library;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__35898;
  v21 = __Block_byref_object_dispose__35899;
  v22 = 0;
  obj = 0;
  v8 = [PLAssetResourceUploadJob countOfAcknowledgedUploadJobsWithConfiguration:0 inPhotoLibrary:libraryCopy error:&obj];
  objc_storeStrong(&v22, obj);
  if (v8)
  {
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = v18[5];
        *buf = 138412290;
        v24 = v10;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "UploadExtensionRunnerWorker: Failed to fetch count of unacknowledged jobs. Error: %@", buf, 0xCu);
      }
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __116__PLBackgroundJobResourceUploadExtensionRunnerWorker__checkInitialProcessingIsCompletedForConfigurations_inLibrary___block_invoke;
      v11[3] = &unk_1E75778C0;
      v12 = configurationsCopy;
      selfCopy = self;
      v15 = &v17;
      v13 = libraryCopy;
      [v13 performTransactionAndWait:v11];

      v9 = v12;
    }
  }

  _Block_object_dispose(&v17, 8);
}

void __116__PLBackgroundJobResourceUploadExtensionRunnerWorker__checkInitialProcessingIsCompletedForConfigurations_inLibrary___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    *&v4 = 138543618;
    v15 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v10 = *(*(a1 + 56) + 8);
        obj = *(v10 + 40);
        v11 = [PLAssetResourceUploadJob countOfAcknowledgedUploadJobsWithConfiguration:v8 inPhotoLibrary:v9 error:&obj, v15];
        objc_storeStrong((v10 + 40), obj);
        if (v11)
        {
          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = PLBackgroundJobServiceGetLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = [v8 uuid];
              v14 = *(*(*(a1 + 56) + 8) + 40);
              *buf = v15;
              v22 = v13;
              v23 = 2112;
              v24 = v14;
              _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "UploadExtensionRunnerWorker: Failed to fetch count of unacknowledged jobs for configuration: %{public}@ Error: %@", buf, 0x16u);
            }
          }

          else
          {
            [*(a1 + 48) _switchConfiguration:v8 toState:3];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }
}

- (id)_workItemIdentifiersInLibrary:(id)library
{
  libraryCopy = library;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__35898;
  v14 = __Block_byref_object_dispose__35899;
  v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__PLBackgroundJobResourceUploadExtensionRunnerWorker__workItemIdentifiersInLibrary___block_invoke;
  v7[3] = &unk_1E7578910;
  v4 = libraryCopy;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __84__PLBackgroundJobResourceUploadExtensionRunnerWorker__workItemIdentifiersInLibrary___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v16 = 0;
  v3 = [PLBackgroundJobWorkItem workItemsSortedByTimestampWithJobType:7 fetchLimit:0 resultType:0 inManagedObjectContext:v2 error:&v16];
  v4 = v16;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(*(a1 + 40) + 8) + 40);
        v11 = [*(*(&v12 + 1) + 8 * v9) identifier];
        if (v11)
        {
          [v10 addObject:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_switchEventMonitorConfigurationWithConfigurations:(id)configurations inLibrary:(id)library
{
  v19 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  libraryCopy = library;
  if ([configurationsCopy count])
  {
    v8 = [(PLBackgroundJobResourceUploadExtensionRunnerWorker *)self _workItemIdentifiersInLibrary:libraryCopy];
    if ([v8 count])
    {
      [(PLBackgroundJobResourceUploadExtensionRunnerWorker *)self _updateConfigurationStateWithWorkItemIdentifiers:v8 configurations:configurationsCopy inLibrary:libraryCopy];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          v13 = 0;
          do
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [(PLBackgroundJobResourceUploadExtensionRunnerWorker *)self _removeWorkItemForConfigurationIdentifier:*(*(&v14 + 1) + 8 * v13++) library:libraryCopy, v14];
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v11);
      }
    }

    else
    {
      [(PLBackgroundJobResourceUploadExtensionRunnerWorker *)self _checkInitialProcessingIsCompletedForConfigurations:configurationsCopy inLibrary:libraryCopy];
    }
  }
}

- (void)_switchConfiguration:(id)configuration toState:(signed __int16)state
{
  stateCopy = state;
  configurationCopy = configuration;
  state = [configurationCopy state];
  if ((stateCopy & 0xFFFFFFFE) == 2 && state != stateCopy)
  {
    [configurationCopy setState:stateCopy];
    [(PLBackgroundJobResourceUploadExtensionRunnerWorker *)self _resetAttemptCountForConfiguration:configurationCopy];
  }
}

- (BOOL)_confirmProcessingCompletionResultsForConfiguration:(id)configuration library:(id)library
{
  v22 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  libraryCopy = library;
  v19 = 0;
  v8 = 1;
  v9 = [PLAssetResourceUploadJob countOfUploadJobsWithConfiguration:configurationCopy state:1 inPhotoLibrary:libraryCopy error:&v19];
  v10 = v19;
  v11 = v10;
  if (v9)
  {
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "UploadExtensionRunnerWorker: Failed to fetch registered job count during completion validation. Error: %@", buf, 0xCu);
      }

      v13 = v11;
LABEL_16:

      goto LABEL_17;
    }

    v13 = v10;
  }

  else
  {
    v18 = v10;
    v14 = [PLAssetResourceUploadJob countOfAcknowledgedUploadJobsWithConfiguration:configurationCopy inPhotoLibrary:libraryCopy error:&v18];
    v13 = v18;

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v13;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "UploadExtensionRunnerWorker: Failed to get count of acknowledged jobs during completion validation. Error: %@", buf, 0xCu);
      }
    }

    if (v14 <= self->_countOfPreProcessingAcknowledgedJobs)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Registered jobs: %@ Acknowledged jobs: %@", @"YES", @"YES"];
      v16 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v12;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "UploadExtensionRunnerWorker: Extension failed completion validation: %{public}@", buf, 0xCu);
      }

      v8 = 0;
      goto LABEL_16;
    }

    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (id)_errorFromProcessingResult:(unint64_t)result
{
  v3 = 0;
  v29[1] = *MEMORY[0x1E69E9840];
  if (result <= 1)
  {
    if (!result)
    {
      v4 = MEMORY[0x1E696ABC0];
      v5 = *MEMORY[0x1E69BFF48];
      v22 = *MEMORY[0x1E696A578];
      v23 = @"UploadExtensionRunnerWorker: appex returned a processing failure";
      v6 = MEMORY[0x1E695DF20];
      v7 = &v23;
      v8 = &v22;
LABEL_12:
      v11 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:1];
      v12 = v4;
      v13 = v5;
      v14 = 50008;
      goto LABEL_13;
    }

    if (result != 1)
    {
      goto LABEL_14;
    }

    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E69BFF48];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"UploadExtensionRunnerWorker: appex setup failure";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v12 = v9;
    v13 = v10;
    v14 = 50006;
  }

  else
  {
    switch(result)
    {
      case 2uLL:
        v15 = MEMORY[0x1E696ABC0];
        v16 = *MEMORY[0x1E69BFF48];
        v24 = *MEMORY[0x1E696A578];
        v25 = @"UploadExtensionRunnerWorker: timeout result";
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v12 = v15;
        v13 = v16;
        v14 = 50004;
        break;
      case 3uLL:
        v17 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E69BFF48];
        v26 = *MEMORY[0x1E696A578];
        v27 = @"UploadExtensionRunnerWorker: appex connection was cancelled";
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v12 = v17;
        v13 = v18;
        v14 = 50005;
        break;
      case 4uLL:
        v4 = MEMORY[0x1E696ABC0];
        v5 = *MEMORY[0x1E69BFF48];
        v20 = *MEMORY[0x1E696A578];
        v21 = @"UploadExtensionRunnerWorker: appex failed to generate jobs for processing state";
        v6 = MEMORY[0x1E695DF20];
        v7 = &v21;
        v8 = &v20;
        goto LABEL_12;
      default:
        goto LABEL_14;
    }
  }

LABEL_13:
  v3 = [v12 errorWithDomain:v13 code:v14 userInfo:v11];

LABEL_14:

  return v3;
}

- (void)_resetAttemptCountForConfiguration:(id)configuration
{
  v11 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (self->_disableConfigurationDelay)
  {
    v6 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      uuid = [v5 uuid];
      v9 = 138543362;
      v10 = uuid;
      v8 = "UploadExtensionRunnerWorker: Attempt count reset is disabled for configuration: <%{public}@>";
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, v8, &v9, 0xCu);
    }
  }

  else
  {
    [configurationCopy setAttemptCount:0];
    [v5 setCompletionDate:0];
    v6 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      uuid = [v5 uuid];
      v9 = 138543362;
      v10 = uuid;
      v8 = "UploadExtensionRunnerWorker: Attempt count was reset for configuration: <%{public}@>";
      goto LABEL_6;
    }
  }
}

- (void)_bumpAttemptCountForConfiguration:(id)configuration
{
  *&v11[5] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (self->_disableConfigurationDelay)
  {
    v5 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      uuid = [configurationCopy uuid];
      v10 = 138543362;
      *v11 = uuid;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "UploadExtensionRunnerWorker: Attempt count update is disabled for configuration: <%{public}@>", &v10, 0xCu);
    }
  }

  else
  {
    v7 = [MEMORY[0x1E695DF00] now];
    [configurationCopy setCompletionDate:v7];

    [configurationCopy setAttemptCount:{(objc_msgSend(configurationCopy, "attemptCount") + 1)}];
    v5 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      attemptCount = [configurationCopy attemptCount];
      uuid2 = [configurationCopy uuid];
      v10 = 67109378;
      v11[0] = attemptCount;
      LOWORD(v11[1]) = 2114;
      *(&v11[1] + 2) = uuid2;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "UploadExtensionRunnerWorker: Updating attempt count (%d) after completion for configuration: <%{public}@>", &v10, 0x12u);
    }
  }
}

- (void)_handleProcessingResult:(unint64_t)result bundleIdentifier:(id)identifier library:(id)library completionBlock:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  libraryCopy = library;
  blockCopy = block;
  v13 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = result;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "UploadExtensionRunnerWorker: Completed with result: %tu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__35898;
  v32 = __Block_byref_object_dispose__35899;
  v33 = 0;
  managedObjectContext = [libraryCopy managedObjectContext];
  v15 = (*(&buf + 1) + 40);
  obj = *(*(&buf + 1) + 40);
  v16 = [PLAssetResourceUploadJobConfiguration configurationWithBundleIdentifier:identifierCopy managedObjectContext:managedObjectContext error:&obj];
  objc_storeStrong(v15, obj);

  if (v16)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __119__PLBackgroundJobResourceUploadExtensionRunnerWorker__handleProcessingResult_bundleIdentifier_library_completionBlock___block_invoke;
    v19[3] = &unk_1E7576B70;
    p_buf = &buf;
    resultCopy = result;
    v19[4] = self;
    v20 = v16;
    v21 = libraryCopy;
    [v21 performTransactionAndWait:v19];
    blockCopy[2](blockCopy, *(*(&buf + 1) + 40));
  }

  else
  {
    v17 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(*(&buf + 1) + 40);
      *v25 = 138543618;
      v26 = identifierCopy;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "UploadExtensionRunnerWorker: Failed to fetch configuration during completion validation for identifier: %{public}@. Error: %@", v25, 0x16u);
    }
  }

  _Block_object_dispose(&buf, 8);
}

void __119__PLBackgroundJobResourceUploadExtensionRunnerWorker__handleProcessingResult_bundleIdentifier_library_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 <= 2)
  {
    if (v2 >= 3)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v2 != 5)
  {
    if (v2 != 4)
    {
      if (v2 != 3)
      {
        return;
      }

      v3 = *(a1 + 32);
      v4 = 3;
      goto LABEL_8;
    }

    if ([*(a1 + 32) _confirmProcessingCompletionResultsForConfiguration:*(a1 + 40) library:*(a1 + 48)])
    {
      return;
    }

LABEL_3:
    [*(a1 + 32) _bumpAttemptCountForConfiguration:*(a1 + 40)];
    v3 = *(a1 + 32);
    v4 = *(a1 + 64);
LABEL_8:
    v5 = [v3 _errorFromProcessingResult:v4];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  [v8 _switchConfiguration:v9 toState:2];
}

- (BOOL)_isJobCancelled
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLSafeRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)stopWorkingOnItem:(id)item
{
  v15 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v12 = v7;
    v13 = 2048;
    v14 = itemCopy;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "UploadExtensionRunnerWorker: %{public}@ stopWorkingOnItem: %p", buf, 0x16u);
  }

  v9 = MEMORY[0x1E69E9820];
  v10 = itemCopy;
  v8 = itemCopy;
  PLSafeRunWithUnfairLock();
  [(PLBackgroundResourceUploadExtensionHost *)self->_host cancel:v9];
}

- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  libraryCopy = library;
  completionCopy = completion;
  if (itemCopy)
  {
    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobResourceUploadExtensionRunnerWorker.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobResourceUploadExtensionRunnerWorker.m" lineNumber:249 description:{@"Invalid parameter not satisfying: %@", @"library"}];

LABEL_3:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(PLBackgroundJobResourceUploadExtensionRunnerWorker *)self _isJobCancelled])
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:50005 userInfo:0];
      completionCopy[2](completionCopy, v12);
    }

    else
    {
      objc_initWeak(&location, self);
      v17 = itemCopy;
      managedObjectContext = [libraryCopy managedObjectContext];
      v40 = 0;
      v19 = [PLAssetResourceUploadJobConfiguration configurationWithBundleIdentifier:v17 managedObjectContext:managedObjectContext error:&v40];
      v20 = v40;

      if (v19)
      {
        v39 = v20;
        v21 = [PLAssetResourceUploadJob countOfAcknowledgedUploadJobsWithConfiguration:v19 inPhotoLibrary:libraryCopy error:&v39];
        v22 = v39;

        if (v21 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v23 = PLBackgroundJobServiceGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v43 = v17;
            v44 = 2112;
            v45 = v22;
            _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "UploadExtensionRunnerWorker: Failed to get count of acknowledged jobs during worker processing for identifier: %{public}@. Error: %@", buf, 0x16u);
          }
        }

        else
        {
          self->_countOfPreProcessingAcknowledgedJobs = v21;
        }
      }

      else
      {
        v24 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v43 = v17;
          v44 = 2112;
          v45 = v20;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "UploadExtensionRunnerWorker: Failed to fetch configuration during worker processing for identifier: %{public}@. Error: %@", buf, 0x16u);
        }

        v22 = v20;
      }

      v25 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v17;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "UploadExtensionRunnerWorker: Processing background upload extension: %@", buf, 0xCu);
      }

      v26 = [[PLBackgroundResourceUploadExtensionHost alloc] initWithClientBundleIdentifier:v17];
      host = self->_host;
      self->_host = v26;

      v28 = self->_host;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __93__PLBackgroundJobResourceUploadExtensionRunnerWorker_performWorkOnItem_inLibrary_completion___block_invoke;
      v37[3] = &unk_1E756B788;
      objc_copyWeak(&v38, &location);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __93__PLBackgroundJobResourceUploadExtensionRunnerWorker_performWorkOnItem_inLibrary_completion___block_invoke_2;
      v32[3] = &unk_1E756B7B0;
      v33 = libraryCopy;
      objc_copyWeak(&v36, &location);
      v29 = v17;
      v34 = v29;
      v35 = completionCopy;
      [(PLBackgroundResourceUploadExtensionHost *)v28 processWithContinuationHandler:v37 completionHandler:v32];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&v38);

      objc_destroyWeak(&location);
    }
  }

  else
  {
    v13 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543362;
      v43 = v15;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "UploadExtensionRunnerWorker: Unexpected work item class type: %{public}@", buf, 0xCu);
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:50007 userInfo:0];
    completionCopy[2](completionCopy, v16);
  }
}

uint64_t __93__PLBackgroundJobResourceUploadExtensionRunnerWorker_performWorkOnItem_inLibrary_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _isJobCancelled];

  return v2 ^ 1u;
}

void __93__PLBackgroundJobResourceUploadExtensionRunnerWorker_performWorkOnItem_inLibrary_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) libraryServicesManager];
  v5 = [v4 databaseContext];
  v7 = [v5 newShortLivedLibraryWithName:"-[PLBackgroundJobResourceUploadExtensionRunnerWorker performWorkOnItem:inLibrary:completion:]_block_invoke_2"];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleProcessingResult:a2 bundleIdentifier:*(a1 + 40) library:v7 completionBlock:*(a1 + 48)];
}

- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias
{
  libraryCopy = library;
  criteriasCopy = criterias;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobResourceUploadExtensionRunnerWorker.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v9 = +[PLBackgroundJobCriteria criteriaForAssetResourceUploadExtensionRunnerWorker];
  v10 = [criteriasCopy containsObject:v9];

  if ((v10 & 1) == 0)
  {
    initWithZeroWorkItemsForValidCriteria = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
    goto LABEL_11;
  }

  v11 = [(PLBackgroundJobResourceUploadExtensionRunnerWorker *)self _enabledEventMonitorJobConfigurationsForProcessingInLibrary:libraryCopy];
  [(PLBackgroundJobResourceUploadExtensionRunnerWorker *)self _switchEventMonitorConfigurationWithConfigurations:v11 inLibrary:libraryCopy];
  v23 = -1.0;
  v12 = [(PLBackgroundJobResourceUploadExtensionRunnerWorker *)self _enabledJobConfigurationsForProcessingInLibrary:libraryCopy delay:&v23];
  if ([v12 count])
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __105__PLBackgroundJobResourceUploadExtensionRunnerWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke;
    v20[3] = &unk_1E7578848;
    v21 = v12;
    v22 = v13;
    v14 = v13;
    [libraryCopy performBlockAndWait:v20];
    v15 = [PLBackgroundJobWorkerPendingWorkItems alloc];
    v16 = +[PLBackgroundJobCriteria criteriaForAssetResourceUploadExtensionRunnerWorker];
    initWithZeroWorkItemsForValidCriteria = [(PLBackgroundJobWorkerPendingWorkItems *)v15 initWithCriteria:v16 workItemsNeedingProcessing:v14];
  }

  else
  {
    if (v23 <= 0.0)
    {
      initWithZeroWorkItemsForValidCriteria = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
      goto LABEL_10;
    }

    v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v23];
    initWithZeroWorkItemsForValidCriteria = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithSignalAgainDate:v14];
  }

LABEL_10:
LABEL_11:

  return initWithZeroWorkItemsForValidCriteria;
}

void __105__PLBackgroundJobResourceUploadExtensionRunnerWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) bundleIdentifier];
        if (v8)
        {
          [v7 addObject:v8];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (PLBackgroundJobResourceUploadExtensionRunnerWorker)initWithLibraryBundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = PLBackgroundJobResourceUploadExtensionRunnerWorker;
  v3 = [(PLBackgroundJobWorker *)&v10 initWithLibraryBundle:bundle];
  if (v3)
  {
    if (MEMORY[0x19EAEE230]())
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v3->_disableConfigurationDelay = [standardUserDefaults BOOLForKey:@"DisableBackgroundUploadJobDelay"];

      if (v3->_disableConfigurationDelay)
      {
        v5 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "UploadExtensionRunnerWorker: Extension runner dynamic backoff delay is disabled", v9, 2u);
        }
      }

      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      v3->_reducedConfigurationDelay = [standardUserDefaults2 BOOLForKey:@"ReduceBackgroundUploadJobDelay"];

      if (v3->_reducedConfigurationDelay)
      {
        v7 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "UploadExtensionRunnerWorker: Extension runner dynamic backoff delay is in reduced mode", v9, 2u);
        }
      }
    }

    v3->_canceled_lock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

+ (id)_enabledEventMonitorJobConfigurationRequest
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLAssetResourceUploadJobConfiguration entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"state", 2];
  [v4 setPredicate:v5];

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"bundleIdentifier" ascending:1];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v4 setSortDescriptors:v7];

  return v4;
}

+ (id)_enabledJobConfigurationRequest
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLAssetResourceUploadJobConfiguration entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %d", @"state", 1];
  [v4 setPredicate:v5];

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"bundleIdentifier" ascending:1];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v4 setSortDescriptors:v7];

  return v4;
}

+ (BOOL)isBackgroundAppRefreshEnabledWithBundleIdentifiers:(id)identifiers libraryServicesManager:(id)manager
{
  identifiersCopy = identifiers;
  managerCopy = manager;
  if ([managerCopy isBackgroundAppRefreshEnabled])
  {
    *buf = 0;
    v14 = buf;
    v15 = 0x2020000000;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __128__PLBackgroundJobResourceUploadExtensionRunnerWorker_isBackgroundAppRefreshEnabledWithBundleIdentifiers_libraryServicesManager___block_invoke;
    v10[3] = &unk_1E7574E48;
    v11 = managerCopy;
    v12 = buf;
    [identifiersCopy enumerateObjectsUsingBlock:v10];
    v7 = v14[24];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Worker prevented via global background app refresh", buf, 2u);
    }

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __128__PLBackgroundJobResourceUploadExtensionRunnerWorker_isBackgroundAppRefreshEnabledWithBundleIdentifiers_libraryServicesManager___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) isBackgroundAppRefreshEnabledForBundleIdentifier:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (id)fetchConfigurationEnabledBundleIdentifiersForLibraryServicesManager:(id)manager
{
  v25[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__35898;
  v23 = __Block_byref_object_dispose__35899;
  v24 = MEMORY[0x1E695E0F0];
  v4 = MEMORY[0x1E695D5E0];
  v5 = +[PLAssetResourceUploadJobConfiguration entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %d", @"state", 1];
  [v6 setPredicate:v7];

  v25[0] = @"bundleIdentifier";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v6 setPropertiesToFetch:v8];

  [v6 setResultType:2];
  databaseContext = [managerCopy databaseContext];
  v10 = [databaseContext newShortLivedLibraryWithName:"+[PLBackgroundJobResourceUploadExtensionRunnerWorker fetchConfigurationEnabledBundleIdentifiersForLibraryServicesManager:]"];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __122__PLBackgroundJobResourceUploadExtensionRunnerWorker_fetchConfigurationEnabledBundleIdentifiersForLibraryServicesManager___block_invoke;
  v15[3] = &unk_1E7578820;
  v11 = v10;
  v16 = v11;
  v12 = v6;
  v17 = v12;
  v18 = &v19;
  [v11 performBlockAndWait:v15];
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __122__PLBackgroundJobResourceUploadExtensionRunnerWorker_fetchConfigurationEnabledBundleIdentifiersForLibraryServicesManager___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = PFMap();
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v8 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch configurations for enablement check. Error: %@", buf, 0xCu);
    }
  }
}

+ (BOOL)checkServerFeatureVersionForLibraryServicesManager:(id)manager
{
  v16 = *MEMORY[0x1E69E9840];
  directServerConfiguration = [manager directServerConfiguration];
  [directServerConfiguration check];
  v4 = [directServerConfiguration valueForKey:@"feature.version.backgroundresourceupload"];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
    v7 = integerValue < 1;
    v8 = PLBackgroundJobServiceGetLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (integerValue <= 0)
    {
      if (v9)
      {
        v12 = 138543618;
        v13 = v5;
        v14 = 2048;
        v15 = 0;
        v10 = "Worker allowed via server feature version: %{public}@, build version: %ld";
        goto LABEL_8;
      }
    }

    else if (v9)
    {
      v12 = 138543618;
      v13 = v5;
      v14 = 2048;
      v15 = 0;
      v10 = "Worker prevented via server feature version: %{public}@, build version: %ld";
LABEL_8:
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, v10, &v12, 0x16u);
    }

    goto LABEL_10;
  }

  v7 = 1;
LABEL_10:

  return v7;
}

+ (BOOL)isEnabledForBundle:(id)bundle
{
  bundleCopy = bundle;
  if (_os_feature_enabled_impl())
  {
    if (!bundleCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobResourceUploadExtensionRunnerWorker.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"bundle"}];
    }

    libraryServicesManager = [bundleCopy libraryServicesManager];
    v7 = [self fetchConfigurationEnabledBundleIdentifiersForLibraryServicesManager:libraryServicesManager];
    if ([v7 count])
    {
      if ([self isBackgroundAppRefreshEnabledWithBundleIdentifiers:v7 libraryServicesManager:libraryServicesManager])
      {
        v8 = [self checkServerFeatureVersionForLibraryServicesManager:libraryServicesManager];
LABEL_14:

        goto LABEL_15;
      }

      v9 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v10 = "Worker prevented via background app refresh";
        v11 = buf;
        goto LABEL_12;
      }
    }

    else
    {
      v9 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v10 = "Library has no enabled job configurations. Skipping extension runner worker";
        v11 = &v15;
LABEL_12:
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

@end