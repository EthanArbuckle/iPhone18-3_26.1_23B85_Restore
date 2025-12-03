@interface PLBackgroundJobDuplicateDetectorWorker
- (BOOL)_checkItems:(id)items forType:(signed __int16)type library:(id)library;
- (BOOL)_hasCompletedPerceptualProcessingWithLibrary:(id)library;
- (BOOL)_isEntireLibraryWorkItem:(id)item;
- (BOOL)_isInProgressEntireLibraryWorkItem:(id)item;
- (BOOL)_isInitialEntireLibraryWorkItem:(id)item;
- (BOOL)_isJobCancelled;
- (BOOL)_processDuplicatesWithLimitedSelection:(id)selection processingType:(unint64_t)type library:(id)library error:(id *)error continuationHandler:(id)handler;
- (PLBackgroundJobDuplicateDetectorWorker)initWithLibraryBundle:(id)bundle;
- (char)_processingStatusForLibrary:(id)library;
- (id)_backgroundJobWorkItemsFromObjectIDs:(id)ds inManagedObjectContext:(id)context error:(id *)error;
- (id)_convertToObjectIDsFromUUIDs:(id)ds library:(id)library error:(id *)error;
- (id)_convertToUUIDsFromObjectIDs:(id)ds library:(id)library error:(id *)error;
- (id)_fetchedUUIDsFromUUIDs:(id)ds library:(id)library error:(id *)error;
- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias;
- (unint64_t)_processingTypeFromWorkItems:(id)items library:(id)library;
- (void)_cleanUpWorkItems:(id)items shouldDeleteAllJobs:(BOOL)jobs oidsToRemove:(id)remove uuidsToRemove:(id)toRemove library:(id)library;
- (void)_processWorkItem:(id)item inLibrary:(id)library completion:(id)completion;
- (void)_resetMarkerIfRequiredFromLibrary:(id)library;
- (void)_setMarkerWithPrivateData:(id)data value:(BOOL)value wellKnownIdentifier:(int64_t)identifier;
- (void)_setProcessingStatus:(char)status library:(id)library;
- (void)_updateLastInitialProcessingDateIfCompleted:(BOOL)completed library:(id)library;
- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion;
- (void)stopWorkingOnItem:(id)item;
@end

@implementation PLBackgroundJobDuplicateDetectorWorker

- (void)_updateLastInitialProcessingDateIfCompleted:(BOOL)completed library:(id)library
{
  completedCopy = completed;
  v16 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v6 = libraryCopy;
  if (completedCopy)
  {
    globalValues = [libraryCopy globalValues];
    isInitialDuplicateDetectorProcessingCompleted = [globalValues isInitialDuplicateDetectorProcessingCompleted];

    if ((isInitialDuplicateDetectorProcessingCompleted & 1) == 0)
    {
      v9 = [MEMORY[0x1E695DF00] now];
      v10 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Duplicate Detector Worker: saving completed initial processing date %{public}@ to library %@", &v12, 0x16u);
      }

      globalValues2 = [v6 globalValues];
      [globalValues2 setLastInitialDuplicateDetectorProcessingCompletedDate:v9];
    }
  }
}

- (BOOL)_hasCompletedPerceptualProcessingWithLibrary:(id)library
{
  libraryCopy = library;
  globalValues = [libraryCopy globalValues];
  isInitialDuplicateDetectorProcessingCompleted = [globalValues isInitialDuplicateDetectorProcessingCompleted];

  if (isInitialDuplicateDetectorProcessingCompleted)
  {
    v6 = 1;
  }

  else
  {
    managedObjectContext = [libraryCopy managedObjectContext];
    pathManager = [libraryCopy pathManager];
    v6 = [PLDuplicateDetector duplicateDetectorCompletedPerceptualHashProcessingWithManagedObjectContext:managedObjectContext pathManager:pathManager];
  }

  return v6;
}

- (void)_setMarkerWithPrivateData:(id)data value:(BOOL)value wellKnownIdentifier:(int64_t)identifier
{
  valueCopy = value;
  v28 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD98];
  dataCopy = data;
  v9 = [v7 numberWithBool:valueCopy];
  v21 = 0;
  v10 = [dataCopy setValue:v9 forKey:@"DuplicateSharedLibraryEnabledMarker" error:&v21];

  v11 = v21;
  v12 = PLDuplicateDetectionGetLog();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"NO";
      if (valueCopy)
      {
        v14 = @"YES";
      }

      v15 = v14;
      *buf = 138543618;
      v23 = v15;
      v24 = 2048;
      identifierCopy2 = identifier;
      v16 = "Duplicate Detector Worker: Setting the initial enable marker %{public}@ for library identifier: %td";
      v17 = v13;
      v18 = OS_LOG_TYPE_DEFAULT;
      v19 = 22;
LABEL_10:
      _os_log_impl(&dword_19BF1F000, v17, v18, v16, buf, v19);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v20 = @"NO";
    if (valueCopy)
    {
      v20 = @"YES";
    }

    v15 = v20;
    *buf = 138543874;
    v23 = v15;
    v24 = 2048;
    identifierCopy2 = identifier;
    v26 = 2112;
    v27 = v11;
    v16 = "Duplicate Detector Worker: Failed to set the initial enable marker %{public}@ for library identifier: %td. Error: %@";
    v17 = v13;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 32;
    goto LABEL_10;
  }
}

- (void)_resetMarkerIfRequiredFromLibrary:(id)library
{
  libraryCopy = library;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PLBackgroundJobDuplicateDetectorWorker__resetMarkerIfRequiredFromLibrary___block_invoke;
  v7[3] = &unk_1E7578848;
  v8 = libraryCopy;
  selfCopy = self;
  v5 = _resetMarkerIfRequiredFromLibrary__onceToken;
  v6 = libraryCopy;
  if (v5 != -1)
  {
    dispatch_once(&_resetMarkerIfRequiredFromLibrary__onceToken, v7);
  }
}

void __76__PLBackgroundJobDuplicateDetectorWorker__resetMarkerIfRequiredFromLibrary___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BF188];
  v3 = [*(a1 + 32) pathManager];
  v4 = [v3 libraryURL];
  v5 = [v2 appPrivateDataForLibraryURL:v4];

  v6 = [v5 valueForKey:@"DuplicateSharedLibraryEnabledMarker"];
  v7 = [*(a1 + 32) pathManager];
  v8 = [PLDuplicateProcessor sharedLibraryDedupeEnabledWithPathManager:v7];

  if (v6)
  {
    v9 = [v6 BOOLValue];
    v10 = PLDuplicateDetectionGetLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8 == v9)
    {
      if (v11)
      {
        v22 = [*(a1 + 32) libraryServicesManager];
        *buf = 134217984;
        v27 = [v22 wellKnownPhotoLibraryIdentifier];
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Duplicate Detector Worker: Matching enable marker for library identifier: %td", buf, 0xCu);
      }
    }

    else
    {
      if (v11)
      {
        v12 = [*(a1 + 32) libraryServicesManager];
        *buf = 134217984;
        v27 = [v12 wellKnownPhotoLibraryIdentifier];
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Duplicate Detector Worker: Resetting token due to enable marker mismatch for library identifier: %td", buf, 0xCu);
      }

      v13 = *(a1 + 32);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __76__PLBackgroundJobDuplicateDetectorWorker__resetMarkerIfRequiredFromLibrary___block_invoke_98;
      v24[3] = &unk_1E75781E8;
      v25 = v13;
      [v25 performTransactionAndWait:v24];
      v14 = *(a1 + 40);
      v15 = [*(a1 + 32) libraryServicesManager];
      [v14 _setMarkerWithPrivateData:v5 value:v8 wellKnownIdentifier:{objc_msgSend(v15, "wellKnownPhotoLibraryIdentifier")}];

      v16 = *(a1 + 32);
      v23 = 0;
      v17 = [PLDuplicateProcessor removeAllDuplicateSharedLibraryAssetFromAlbumWithPhotoLibrary:v16 error:&v23];
      v18 = v23;
      if (!v17)
      {
        v19 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = v18;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Duplicate Detector Worker: Failed to remove Shared Library assets from duplicate albums. Error: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v20 = *(a1 + 40);
    v21 = [*(a1 + 32) libraryServicesManager];
    [v20 _setMarkerWithPrivateData:v5 value:v8 wellKnownIdentifier:{objc_msgSend(v21, "wellKnownPhotoLibraryIdentifier")}];
  }
}

void __76__PLBackgroundJobDuplicateDetectorWorker__resetMarkerIfRequiredFromLibrary___block_invoke_98(uint64_t a1)
{
  v2 = [PLGlobalValues alloc];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [(PLGlobalValues *)v2 initWithManagedObjectContext:v3];

  [(PLGlobalValues *)v4 setDuplicateProcessingStatus:0];
  [(PLGlobalValues *)v4 setLastInitialDuplicateDetectorProcessingCompletedDate:0];
}

- (void)_setProcessingStatus:(char)status library:(id)library
{
  statusCopy = status;
  v11 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v6 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109378;
    v8[1] = statusCopy;
    v9 = 2112;
    v10 = libraryCopy;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "Duplicate Detector Worker: updating status %d to library %@", v8, 0x12u);
  }

  globalValues = [libraryCopy globalValues];
  [globalValues setDuplicateProcessingStatus:statusCopy];
}

- (char)_processingStatusForLibrary:(id)library
{
  libraryCopy = library;
  globalValues = [libraryCopy globalValues];
  duplicateProcessingStatus = [globalValues duplicateProcessingStatus];

  if (!duplicateProcessingStatus)
  {
    v7 = objc_opt_class();
    pathManager = [libraryCopy pathManager];
    v9 = [PLBackgroundModelMigration hasCompletedBackgroundActionClass:v7 pathManager:pathManager];

    if (v9)
    {
      LOBYTE(duplicateProcessingStatus) = 0;
    }

    else
    {
      [(PLBackgroundJobDuplicateDetectorWorker *)self _setProcessingStatus:0xFFFFFFFFLL library:libraryCopy];
      LOBYTE(duplicateProcessingStatus) = -1;
    }
  }

  return duplicateProcessingStatus;
}

- (BOOL)_isInProgressEntireLibraryWorkItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [itemCopy isEqualToString:@"BackgroundJobDuplicateProcessEntireLibraryInProgress"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isInitialEntireLibraryWorkItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [itemCopy isEqualToString:@"BackgroundJobDuplicateProcessEntireLibrary"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isEntireLibraryWorkItem:(id)item
{
  itemCopy = item;
  v5 = [(PLBackgroundJobDuplicateDetectorWorker *)self _isInitialEntireLibraryWorkItem:itemCopy]|| [(PLBackgroundJobDuplicateDetectorWorker *)self _isInProgressEntireLibraryWorkItem:itemCopy];

  return v5;
}

- (BOOL)_checkItems:(id)items forType:(signed __int16)type library:(id)library
{
  itemsCopy = items;
  libraryCopy = library;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__PLBackgroundJobDuplicateDetectorWorker__checkItems_forType_library___block_invoke;
  v14[3] = &unk_1E75726C0;
  v9 = itemsCopy;
  v15 = v9;
  v16 = &v18;
  typeCopy = type;
  [libraryCopy performBlockAndWait:v14];
  if (v19[3])
  {
    v10 = 1;
  }

  else
  {
    v11 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Duplicate Detector Worker: Work items contains incorrect job types", v13, 2u);
    }

    v10 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  return v10 & 1;
}

void __70__PLBackgroundJobDuplicateDetectorWorker__checkItems_forType_library___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) valueForKey:@"jobType"];
  v2 = [MEMORY[0x1E695DFD8] setWithArray:?];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] == 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v3 = [v2 anyObject];
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 48) == [v3 integerValue];
  }
}

- (id)_backgroundJobWorkItemsFromObjectIDs:(id)ds inManagedObjectContext:(id)context error:(id *)error
{
  v7 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  dsCopy = ds;
  v10 = +[PLBackgroundJobWorkItem entityName];
  v11 = [v7 fetchRequestWithEntityName:v10];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", dsCopy];

  [v11 setPredicate:dsCopy];
  v13 = [contextCopy executeFetchRequest:v11 error:error];

  return v13;
}

- (unint64_t)_processingTypeFromWorkItems:(id)items library:(id)library
{
  v28 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  libraryCopy = library;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__49436;
  v25 = __Block_byref_object_dispose__49437;
  v26 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__PLBackgroundJobDuplicateDetectorWorker__processingTypeFromWorkItems_library___block_invoke;
  v18[3] = &unk_1E7578910;
  v20 = &v21;
  v7 = itemsCopy;
  v19 = v7;
  [libraryCopy performBlockAndWait:v18];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v22[5];
  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v14 objects:v27 count:16];
  if (v10)
  {
    v11 = *v15;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v9 = [*(*(&v14 + 1) + 8 * v12) intValue] | v9;
      if (v9 == 3)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v27 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v21, 8);
  return __rbit32(v9) >> 30;
}

void __79__PLBackgroundJobDuplicateDetectorWorker__processingTypeFromWorkItems_library___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKey:@"jobFlags"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_convertToUUIDsFromObjectIDs:(id)ds library:(id)library error:(id *)error
{
  dsCopy = ds;
  libraryCopy = library;
  if ([dsCopy count])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 1;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__49436;
    v29 = __Block_byref_object_dispose__49437;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__49436;
    v23 = __Block_byref_object_dispose__49437;
    v24 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__PLBackgroundJobDuplicateDetectorWorker__convertToUUIDsFromObjectIDs_library_error___block_invoke;
    v13[3] = &unk_1E756F910;
    v14 = dsCopy;
    v15 = libraryCopy;
    v16 = &v25;
    v17 = &v19;
    v18 = &v31;
    [v15 performBlockAndWait:v13];
    v9 = *(v32 + 24);
    v10 = v26[5];
    if (error && (v9 & 1) == 0)
    {
      v10 = v10;
      *error = v10;
    }

    v11 = v20[5];
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v11 = [MEMORY[0x1E695DFD8] set];
  }

  return v11;
}

void __85__PLBackgroundJobDuplicateDetectorWorker__convertToUUIDsFromObjectIDs_library_error___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", *(a1 + 32)];
  [v4 setPredicate:v5];

  v16[0] = @"uuid";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v4 setPropertiesToFetch:v6];

  [v4 setResultType:2];
  v7 = [*(a1 + 40) managedObjectContext];
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  if (v9)
  {
    v10 = PFMap();
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }

    v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

- (id)_convertToObjectIDsFromUUIDs:(id)ds library:(id)library error:(id *)error
{
  dsCopy = ds;
  libraryCopy = library;
  if ([dsCopy count])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 1;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__49436;
    v29 = __Block_byref_object_dispose__49437;
    v30 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__49436;
    v23 = __Block_byref_object_dispose__49437;
    v24 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__PLBackgroundJobDuplicateDetectorWorker__convertToObjectIDsFromUUIDs_library_error___block_invoke;
    v13[3] = &unk_1E756F910;
    v14 = dsCopy;
    v15 = libraryCopy;
    v16 = &v25;
    v17 = &v19;
    v18 = &v31;
    [v15 performBlockAndWait:v13];
    v9 = *(v32 + 24);
    v10 = v26[5];
    if (error && (v9 & 1) == 0)
    {
      v10 = v10;
      *error = v10;
    }

    v11 = v20[5];
    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v11 = [MEMORY[0x1E695DFD8] set];
  }

  return v11;
}

void __85__PLBackgroundJobDuplicateDetectorWorker__convertToObjectIDsFromUUIDs_library_error___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", *(a1 + 32)];
  [v4 setPredicate:v5];

  [v4 setResultType:1];
  v6 = [*(a1 + 40) managedObjectContext];
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v8 = [v6 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (v8)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

- (id)_fetchedUUIDsFromUUIDs:(id)ds library:(id)library error:(id *)error
{
  dsCopy = ds;
  libraryCopy = library;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__49436;
  v31 = __Block_byref_object_dispose__49437;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__49436;
  v25 = __Block_byref_object_dispose__49437;
  v26 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PLBackgroundJobDuplicateDetectorWorker__fetchedUUIDsFromUUIDs_library_error___block_invoke;
  v15[3] = &unk_1E756F910;
  v9 = dsCopy;
  v16 = v9;
  v10 = libraryCopy;
  v17 = v10;
  v18 = &v27;
  v19 = &v21;
  v20 = &v33;
  [v10 performBlockAndWait:v15];
  v11 = *(v34 + 24);
  v12 = v28[5];
  if (error && (v11 & 1) == 0)
  {
    v12 = v12;
    *error = v12;
  }

  v13 = v22[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v13;
}

void __79__PLBackgroundJobDuplicateDetectorWorker__fetchedUUIDsFromUUIDs_library_error___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", *(a1 + 32)];
  [v4 setPredicate:v5];

  v16[0] = @"uuid";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v4 setPropertiesToFetch:v6];

  [v4 setResultType:2];
  v7 = [*(a1 + 40) managedObjectContext];
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  if (v9)
  {
    v10 = PFMap();
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }

    v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

- (BOOL)_processDuplicatesWithLimitedSelection:(id)selection processingType:(unint64_t)type library:(id)library error:(id *)error continuationHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  libraryCopy = library;
  handlerCopy = handler;
  if (selectionCopy)
  {
    v15 = [selectionCopy count];
    v16 = 1;
    if (type && v15)
    {
      v30 = 0;
      v17 = [(PLBackgroundJobDuplicateDetectorWorker *)self _convertToObjectIDsFromUUIDs:selectionCopy library:libraryCopy error:&v30];
      v18 = v30;
      if (!v17)
      {
        v26 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = v18;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Duplicate Detector Worker: Failed conversion of uuid to objectIDs. Error: %@", buf, 0xCu);
        }

        v24 = v18;
        v17 = 0;
        if (error)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }

      errorCopy2 = error;
LABEL_8:
      libraryBundle = [(PLBackgroundJobWorker *)self libraryBundle];
      libraryServicesManager = [libraryBundle libraryServicesManager];
      duplicateProcessor = [libraryServicesManager duplicateProcessor];
      v29 = v18;
      v22 = [duplicateProcessor processDuplicatesOfAssetObjectIds:v17 processingType:type error:&v29 continuationHandler:handlerCopy];
      v23 = v29;

      v24 = v23;
      if (v22)
      {
        v16 = 1;
LABEL_17:

        goto LABEL_18;
      }

      error = errorCopy2;
      if (errorCopy2)
      {
LABEL_11:
        v25 = v24;
        v16 = 0;
        *error = v24;
        goto LABEL_17;
      }

LABEL_16:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    if (type)
    {
      errorCopy2 = error;
      v18 = 0;
      v17 = 0;
      goto LABEL_8;
    }

    v16 = 1;
  }

LABEL_18:

  return v16;
}

- (void)_cleanUpWorkItems:(id)items shouldDeleteAllJobs:(BOOL)jobs oidsToRemove:(id)remove uuidsToRemove:(id)toRemove library:(id)library
{
  itemsCopy = items;
  removeCopy = remove;
  toRemoveCopy = toRemove;
  libraryCopy = library;
  if (jobs || [removeCopy count] || objc_msgSend(toRemoveCopy, "count"))
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    jobsCopy = jobs;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __115__PLBackgroundJobDuplicateDetectorWorker__cleanUpWorkItems_shouldDeleteAllJobs_oidsToRemove_uuidsToRemove_library___block_invoke;
    v16[3] = &unk_1E756DE60;
    v17 = libraryCopy;
    v18 = itemsCopy;
    selfCopy = self;
    v20 = removeCopy;
    v22 = v23;
    v21 = toRemoveCopy;
    [v17 performTransactionAndWait:v16];

    _Block_object_dispose(v23, 8);
  }
}

void __115__PLBackgroundJobDuplicateDetectorWorker__cleanUpWorkItems_shouldDeleteAllJobs_oidsToRemove_uuidsToRemove_library___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 40) count];
    *buf = 134217984;
    v28 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Duplicate Detector Worker: Work items to remove: %td", buf, 0xCu);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v25 = 0;
  v8 = [v5 _convertToUUIDsFromObjectIDs:v6 library:v7 error:&v25];
  v9 = v25;
  if (!v8)
  {
    v10 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Duplicate Detector Worker: Failed conversion of objectIDs to uuid. Error: %@", buf, 0xCu);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  v20 = v9;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = *(a1 + 40);
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v16 identifier];
        if ((*(*(*(a1 + 72) + 8) + 24) & 1) != 0 || ([v8 containsObject:v17] & 1) != 0 || objc_msgSend(*(a1 + 64), "containsObject:", v17))
        {
          [v2 deleteObject:v16];
          v18 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = [v16 identifier];
            *buf = 138412290;
            v28 = v19;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Duplicate Detector Worker: Removed item: %@", buf, 0xCu);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v13);
  }

  [*(a1 + 48) _updateLastInitialProcessingDateIfCompleted:objc_msgSend(*(a1 + 48) library:{"_hasCompletedPerceptualProcessingWithLibrary:", *(a1 + 32)), *(a1 + 32)}];
}

- (void)_processWorkItem:(id)item inLibrary:(id)library completion:(id)completion
{
  itemCopy = item;
  libraryCopy = library;
  completionCopy = completion;
  v11 = +[PLConcurrencyLimiter sharedLimiter];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__PLBackgroundJobDuplicateDetectorWorker__processWorkItem_inLibrary_completion___block_invoke;
  v15[3] = &unk_1E7573C00;
  v15[4] = self;
  v16 = libraryCopy;
  v17 = itemCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = itemCopy;
  v14 = libraryCopy;
  [v11 async:v15 identifyingBlock:0 library:v14];
}

void __80__PLBackgroundJobDuplicateDetectorWorker__processWorkItem_inLibrary_completion___block_invoke(uint64_t a1)
{
  v92[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__49436;
  v81 = __Block_byref_object_dispose__49437;
  v82 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__49436;
  v75 = __Block_byref_object_dispose__49437;
  v76 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__49436;
  v69 = __Block_byref_object_dispose__49437;
  v70 = 0;
  v4 = [*(a1 + 32) _processingStatusForLibrary:*(a1 + 40)];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 255)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    v17 = *(a1 + 48);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __80__PLBackgroundJobDuplicateDetectorWorker__processWorkItem_inLibrary_completion___block_invoke_2;
    v59[3] = &unk_1E7572800;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v62 = &v71;
    v59[4] = v18;
    v20 = v17;
    v60 = v20;
    v61 = *(a1 + 40);
    v63 = &v77;
    v64 = &v65;
    [v19 performBlockAndWait:v59];
    if (v72[5])
    {
      if ([v66[5] count])
      {
        if ([*(a1 + 32) _checkItems:v72[5] forType:objc_msgSend(*(a1 + 32) library:{"_detectionJobType"), *(a1 + 40)}])
        {
          v21 = [MEMORY[0x1E695DFA8] setWithArray:v66[5]];
          v22 = *(a1 + 32);
          v23 = *(a1 + 40);
          v24 = v78;
          v58 = v78[5];
          v25 = [v22 _fetchedUUIDsFromUUIDs:v21 library:v23 error:&v58];
          objc_storeStrong(v24 + 5, v58);
          if (v25)
          {
            v26 = [v25 count];
            if (v26 == [v21 count])
            {
              v27 = v3;
            }

            else
            {
              v27 = [v21 mutableCopy];

              [v27 minusSet:v25];
              [v21 intersectSet:v25];
            }

            v39 = [*(a1 + 32) _processingTypeFromWorkItems:v72[5] library:*(a1 + 40)];
            v40 = *(a1 + 32);
            v41 = *(a1 + 40);
            v42 = v78;
            v57 = v78[5];
            v54[0] = MEMORY[0x1E69E9820];
            v54[1] = 3221225472;
            v54[2] = __80__PLBackgroundJobDuplicateDetectorWorker__processWorkItem_inLibrary_completion___block_invoke_3;
            v54[3] = &unk_1E756D4D0;
            v43 = v2;
            v44 = *(a1 + 32);
            v55 = v43;
            v56 = v44;
            v38 = [v40 _processDuplicatesWithLimitedSelection:v21 processingType:v39 library:v41 error:&v57 continuationHandler:v54];
            objc_storeStrong(v42 + 5, v57);

            v3 = v27;
          }

          else
          {
            v38 = 0;
          }

LABEL_29:
          if (v38)
          {
            goto LABEL_13;
          }

          goto LABEL_10;
        }

        v35 = MEMORY[0x1E696ABC0];
        v89 = *MEMORY[0x1E696A578];
        v90 = @"Work item doesn't match expected type";
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v36 = [v35 errorWithDomain:*MEMORY[0x1E69BFF48] code:50007 userInfo:v21];
        v37 = v78[5];
        v78[5] = v36;
      }

      else
      {
        v32 = MEMORY[0x1E696ABC0];
        v91 = *MEMORY[0x1E696A578];
        v92[0] = @"Work items failed to contain identifier";
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:&v91 count:1];
        v33 = [v32 errorWithDomain:*MEMORY[0x1E69BFF48] code:50007 userInfo:v21];
        v34 = v78[5];
        v78[5] = v33;
      }
    }

    else
    {
      v21 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v31 = v78[5];
        *buf = 138412290;
        v84 = v31;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Duplicate Detector Worker: Failed to query background job work items. Error: %@", buf, 0xCu);
      }
    }

    v38 = 0;
    goto LABEL_29;
  }

  if (!v4)
  {
LABEL_7:
    v10 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Duplicate Detector Worker: Unexpected processing status", buf, 2u);
    }

    v11 = MEMORY[0x1E696ABC0];
    v87 = *MEMORY[0x1E696A578];
    v88 = @"Invalid duplicate detector processing status";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v13 = [v11 errorWithDomain:*MEMORY[0x1E69BFF48] code:50006 userInfo:v12];
    v14 = v78[5];
    v78[5] = v13;

    goto LABEL_10;
  }

  v5 = *(a1 + 40);
  v6 = v78;
  v7 = v78[5];
  v52 = *(a1 + 32);
  obj = v7;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __80__PLBackgroundJobDuplicateDetectorWorker__processWorkItem_inLibrary_completion___block_invoke_67;
  v51[3] = &unk_1E756D4F8;
  v8 = [v52 _processDuplicatesWithLimitedSelection:0 processingType:7 library:v5 error:&obj continuationHandler:v51];
  objc_storeStrong(v6 + 5, obj);
  if (v8)
  {
    v45 = MEMORY[0x1E69E9820];
    v46 = 3221225472;
    v47 = __80__PLBackgroundJobDuplicateDetectorWorker__processWorkItem_inLibrary_completion___block_invoke_2_68;
    v48 = &unk_1E7578848;
    v9 = *(a1 + 40);
    v49 = *(a1 + 32);
    v50 = v9;
    [v50 performTransactionAndWait:&v45];

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

LABEL_10:
  if ((PLErrorOrUnderlyingErrorHasDomainAndCode() & 1) != 0 || PLErrorOrUnderlyingErrorHasDomainAndCode())
  {
    v15 = v78[5];
    v78[5] = 0;

    goto LABEL_13;
  }

  v28 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = [v66[5] count];
    v30 = v78[5];
    *buf = 134218242;
    v84 = v29;
    v85 = 2112;
    v86 = v30;
    _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Duplicate Detector Worker: Failed to process duplicates for %td asset uuids. Error: %@", buf, 0x16u);
  }

  v16 = 1;
LABEL_14:
  [*(a1 + 32) _cleanUpWorkItems:v72[5] shouldDeleteAllJobs:v16 oidsToRemove:v2 uuidsToRemove:v3 library:{*(a1 + 40), v45, v46, v47, v48, v49}];
  (*(*(a1 + 56) + 16))();
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v77, 8);
}

void __80__PLBackgroundJobDuplicateDetectorWorker__processWorkItem_inLibrary_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) managedObjectContext];
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _backgroundJobWorkItemsFromObjectIDs:v3 inManagedObjectContext:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 56) + 8) + 40);
  if (v9)
  {
    v10 = [v9 valueForKey:@"identifier"];
    v11 = *(*(a1 + 72) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (void)stopWorkingOnItem:(id)item
{
  v13 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v4 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v10 = v6;
    v11 = 2048;
    v12 = itemCopy;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Duplicate Detector Worker: %{public}@ stopWorkingOnItem: %p", buf, 0x16u);
  }

  v8 = itemCopy;
  v7 = itemCopy;
  PLSafeRunWithUnfairLock();
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

- (void)performWorkOnItem:(id)item inLibrary:(id)library completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobDuplicateDetectorWorker.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (libraryCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobDuplicateDetectorWorker.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"library"}];

LABEL_3:
  if (![(PLBackgroundJobDuplicateDetectorWorker *)self _isJobCancelled])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || [(PLBackgroundJobDuplicateDetectorWorker *)self _isEntireLibraryWorkItem:itemCopy])
    {
      if ([(PLBackgroundJobDuplicateDetectorWorker *)self _isInitialEntireLibraryWorkItem:itemCopy])
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __81__PLBackgroundJobDuplicateDetectorWorker_performWorkOnItem_inLibrary_completion___block_invoke;
        v18[3] = &unk_1E7578848;
        v18[4] = self;
        v19 = libraryCopy;
        [v19 performTransactionAndWait:v18];
        completionCopy[2](completionCopy, 0);

        goto LABEL_15;
      }

      if (![(PLBackgroundJobDuplicateDetectorWorker *)self _isJobCancelled])
      {
        [(PLBackgroundJobDuplicateDetectorWorker *)self _processWorkItem:itemCopy inLibrary:libraryCopy completion:completionCopy];
        goto LABEL_15;
      }
    }

    else
    {
      v13 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138543362;
        v21 = v15;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Duplicate Detector Worker: Unexpected work item class type: %{public}@", buf, 0xCu);
      }
    }

    completionCopy[2](completionCopy, 0);
    goto LABEL_15;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:50005 userInfo:0];
  (completionCopy)[2](completionCopy, v12);

LABEL_15:
}

- (id)workItemsNeedingProcessingInLibrary:(id)library validCriterias:(id)criterias
{
  v52[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  criteriasCopy = criterias;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobDuplicateDetectorWorker.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v9 = +[PLBackgroundJobCriteria criteriaForDuplicateDetectorWorker];
  v10 = [criteriasCopy containsObject:v9];

  if ((v10 & 1) == 0)
  {
    self = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
    goto LABEL_20;
  }

  libraryBundle = [(PLBackgroundJobWorker *)self libraryBundle];
  libraryServicesManager = [libraryBundle libraryServicesManager];

  initWithZeroWorkItems = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
  libraryServicesManager2 = [libraryCopy libraryServicesManager];
  v15 = [PLDuplicateProcessor isDuplicateProcessorEnabledForLibraryServicesManager:libraryServicesManager2];

  if (v15)
  {
    duplicateProcessor = [libraryServicesManager duplicateProcessor];
    isMerging = [duplicateProcessor isMerging];

    if (isMerging)
    {
      v18 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "Duplicate Detector Worker: PLBackgroundJobDuplicateDetectorWorker skipping duplicate processing. Merging", buf, 2u);
      }
    }

    else
    {
      libraryBundle2 = [libraryServicesManager libraryBundle];
      v20 = PLIsCloudPhotoLibraryDisableInProgressForPhotoLibraryBundle(libraryBundle2);

      if (v20)
      {
        v18 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "Duplicate Detector Worker: PLBackgroundJobDuplicateDetectorWorker skipping duplicate processing. CPL disable in progress", buf, 2u);
        }
      }

      else
      {
        if (![PLDuplicateProcessor isExitingSharedLibraryForLibrary:libraryCopy])
        {
          [(PLBackgroundJobDuplicateDetectorWorker *)self _resetMarkerIfRequiredFromLibrary:libraryCopy];
          v46 = 0;
          v47 = &v46;
          v48 = 0x2020000000;
          v49 = 0;
          *buf = 0;
          v41 = buf;
          v42 = 0x3032000000;
          v43 = __Block_byref_object_copy__49436;
          v44 = __Block_byref_object_dispose__49437;
          v45 = 0;
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __93__PLBackgroundJobDuplicateDetectorWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke;
          v36[3] = &unk_1E7578898;
          v36[4] = self;
          v37 = libraryCopy;
          v38 = buf;
          v39 = &v46;
          [v37 performBlockAndWait:v36];
          if ([*(v41 + 5) count])
          {
            v22 = [PLBackgroundJobWorkerPendingWorkItems alloc];
            v23 = +[PLBackgroundJobCriteria criteriaForDuplicateDetectorWorker];
            v52[0] = *(v41 + 5);
            v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
            self = [(PLBackgroundJobWorkerPendingWorkItems *)v22 initWithCriteria:v23 workItemsNeedingProcessing:v24];
          }

          else
          {
            v25 = v47[3];
            switch(v25)
            {
              case 2:
                v30 = PLDuplicateDetectionGetLog();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  *v35 = 0;
                  _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_INFO, "Duplicate Detector Worker: returning entire library in progress marker", v35, 2u);
                }

                v31 = [PLBackgroundJobWorkerPendingWorkItems alloc];
                v32 = +[PLBackgroundJobCriteria criteriaForDuplicateDetectorWorker];
                v50 = @"BackgroundJobDuplicateProcessEntireLibraryInProgress";
                v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
                self = [(PLBackgroundJobWorkerPendingWorkItems *)v31 initWithCriteria:v32 workItemsNeedingProcessing:v33];

                break;
              case 1:
                v26 = PLDuplicateDetectionGetLog();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                {
                  *v35 = 0;
                  _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "Duplicate Detector Worker: returning entire library marker", v35, 2u);
                }

                v27 = [PLBackgroundJobWorkerPendingWorkItems alloc];
                v28 = +[PLBackgroundJobCriteria criteriaForDuplicateDetectorWorker];
                v51 = @"BackgroundJobDuplicateProcessEntireLibrary";
                v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
                self = [(PLBackgroundJobWorkerPendingWorkItems *)v27 initWithCriteria:v28 workItemsNeedingProcessing:v29];

                break;
              case 0:
                self = initWithZeroWorkItems;
                break;
            }
          }

          _Block_object_dispose(buf, 8);
          _Block_object_dispose(&v46, 8);
          goto LABEL_19;
        }

        v18 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "Duplicate Detector Worker: PLBackgroundJobDuplicateDetectorWorker skipping duplicate processing. Exiting Shared Library", buf, 2u);
        }
      }
    }
  }

  self = initWithZeroWorkItems;
LABEL_19:

LABEL_20:

  return self;
}

void __93__PLBackgroundJobDuplicateDetectorWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _processingStatusForLibrary:*(a1 + 40)];
  if (v2 > 1)
  {
    if (v2 == 255)
    {
      v10 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 40);
        *buf = 138412290;
        v22 = v19;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "Duplicate Detector Worker: Bypassing worker - waiting on background migration completion: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v2 != 2)
      {
        return;
      }

      v7 = [*(a1 + 32) _detectionJobType];
      v8 = [*(a1 + 40) managedObjectContext];
      v20 = 0;
      v9 = [PLBackgroundJobWorkItem workItemsSortedByTimestampWithJobType:v7 fetchLimit:&unk_1F0FBCA78 resultType:1 inManagedObjectContext:v8 error:&v20];
      v10 = v20;
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v9;

      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v13 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v10;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Duplicate Detector Worker: Unable to fetch work items needed. Error: %@", buf, 0xCu);
        }
      }

      v14 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [*(*(*(a1 + 48) + 8) + 40) count];
        v16 = *(a1 + 40);
        *buf = 134218242;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "Duplicate Detector Worker: Registering asset %tu work items in library: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return;
      }

      v3 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = *(a1 + 40);
        *buf = 138412290;
        v22 = v4;
        _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Duplicate Detector Worker: Registering in progress library: %@", buf, 0xCu);
      }

      v5 = *(*(a1 + 56) + 8);
      v6 = 2;
    }

    else
    {
      v17 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 40);
        *buf = 138412290;
        v22 = v18;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "Duplicate Detector Worker: Registering unprocessed library: %@", buf, 0xCu);
      }

      v5 = *(*(a1 + 56) + 8);
      v6 = 1;
    }

    *(v5 + 24) = v6;
  }
}

- (PLBackgroundJobDuplicateDetectorWorker)initWithLibraryBundle:(id)bundle
{
  v4.receiver = self;
  v4.super_class = PLBackgroundJobDuplicateDetectorWorker;
  result = [(PLBackgroundJobWorker *)&v4 initWithLibraryBundle:bundle];
  if (result)
  {
    result->_canceled_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end