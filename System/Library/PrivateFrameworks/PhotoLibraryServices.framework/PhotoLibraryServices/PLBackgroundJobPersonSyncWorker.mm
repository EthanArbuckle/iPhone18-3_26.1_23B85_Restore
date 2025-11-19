@interface PLBackgroundJobPersonSyncWorker
- (BOOL)_hasCompletedResetSyncFromLibrary:(id)a3;
- (BOOL)_isFaceCropsWorkItem:(id)a3;
- (BOOL)_isResetWorkItem:(id)a3;
- (BOOL)_processWorkItemObjectIDs:(id)a3 fromSystemLibrary:(id)a4 toSyndicationLibrary:(id)a5 error:(id *)a6;
- (BOOL)_resumeResetSyncDeletedPersonsFromSyndicationLibrary:(id)a3 toSystemLibrary:(id)a4 error:(id *)a5;
- (BOOL)_resumeResetSyncPersonsFromSystemLibrary:(id)a3 toSyndicationLibrary:(id)a4 error:(id *)a5;
- (BOOL)_syncFaceCropsFromLibrary:(id)a3 toLibrary:(id)a4 error:(id *)a5;
- (BOOL)_syncPerson:(id)a3 toLibrary:(id)a4 error:(id *)a5;
- (BOOL)_syncStateMatchesBetweenSystemLibrary:(id)a3 syndicationLibrary:(id)a4;
- (id)_coalescedWorkItemObjectIDsFrom:(id)a3 inLibrary:(id)a4;
- (id)_faceCropUuidsFromLibrary:(id)a3 error:(id *)a4;
- (id)_faceCropUuidsMissingFromList:(id)a3 inLibrary:(id)a4 error:(id *)a5;
- (id)_nextBatchOfPersonsWithResumeObjectId:(id)a3 inManagedObjectContext:(id)a4;
- (id)_resumeObjectIDInLibrary:(id)a3;
- (id)_syndicationLibraryWithName:(const char *)a3;
- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4;
- (void)_deleteAllExistingPersonSyncWorkItemsInLibrary:(id)a3;
- (void)_deletePersonWithUuid:(id)a3 fromLibrary:(id)a4;
- (void)_resetFacesProcessingForPerson:(id)a3;
- (void)_setCompletedResetSyncFromLibrary:(id)a3;
- (void)_setMatchingSyncStateWithSystemLibrary:(id)a3 syndicationLibrary:(id)a4;
- (void)_setResumeMarkerInLibrary:(id)a3 objectID:(id)a4;
- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5;
- (void)stopWorkingOnItem:(id)a3;
@end

@implementation PLBackgroundJobPersonSyncWorker

- (void)_setMatchingSyncStateWithSystemLibrary:(id)a3 syndicationLibrary:(id)a4
{
  v5 = MEMORY[0x1E696AFB0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v11 = [v8 UUIDString];

  v9 = [v7 globalValues];

  [v9 setPersonSyncState:v11];
  v10 = [v6 globalValues];

  [v10 setPersonSyncState:v11];
}

- (BOOL)_syncStateMatchesBetweenSystemLibrary:(id)a3 syndicationLibrary:(id)a4
{
  v5 = a4;
  v6 = [a3 globalValues];
  v7 = [v6 personSyncState];

  v8 = [v5 globalValues];

  v9 = [v8 personSyncState];

  IsEqual = 0;
  if (v7 && v9)
  {
    IsEqual = PLObjectIsEqual();
  }

  return IsEqual;
}

- (void)_setResumeMarkerInLibrary:(id)a3 objectID:(id)a4
{
  v5 = a3;
  v6 = [a4 URIRepresentation];
  v8 = [v6 absoluteString];

  v7 = [v5 globalValues];

  [v7 setPersonSyncResumeMarker:v8];
}

- (id)_resumeObjectIDInLibrary:(id)a3
{
  v3 = a3;
  v4 = [v3 globalValues];
  v5 = [v4 personSyncResumeMarker];

  v6 = [v3 managedObjectContext];

  v7 = [v6 persistentStoreCoordinator];
  v8 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  v9 = [v7 managedObjectIDForURIRepresentation:v8];

  return v9;
}

- (void)_setCompletedResetSyncFromLibrary:(id)a3
{
  v3 = [a3 globalValues];
  [v3 setPersonSyncResumeMarker:@"BackgroundJobPersonSyncResumeMarkerFinished"];
}

- (BOOL)_hasCompletedResetSyncFromLibrary:(id)a3
{
  v3 = [a3 globalValues];
  v4 = [v3 personSyncResumeMarker];
  v5 = [v4 isEqual:@"BackgroundJobPersonSyncResumeMarkerFinished"];

  return v5;
}

- (id)_syndicationLibraryWithName:(const char *)a3
{
  v4 = +[PLPhotoLibraryBundleController sharedBundleController];
  v5 = [MEMORY[0x1E69BF2A0] wellKnownPhotoLibraryURLForIdentifier:3];
  v6 = [v4 openBundleAtLibraryURL:v5];

  v7 = [v6 libraryServicesManager];
  v17 = 0;
  v8 = [v7 activate:&v17];
  v9 = v17;
  v10 = v9;
  if (v8 && (v9, v16 = 0, v11 = [v7 awaitLibraryState:7 error:&v16], v10 = v16, v11))
  {
    v12 = [v7 databaseContext];
    v13 = [v12 newShortLivedLibraryWithName:a3];
  }

  else
  {
    v12 = PLSyndicationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "PersonSync: Unable to provide syndication library for person sync worker", v15, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)_deleteAllExistingPersonSyncWorkItemsInLibrary:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__PLBackgroundJobPersonSyncWorker__deleteAllExistingPersonSyncWorkItemsInLibrary___block_invoke;
  v5[3] = &unk_1E75781E8;
  v6 = v3;
  v4 = v3;
  [v4 performTransactionAndWait:v5];
}

void __82__PLBackgroundJobPersonSyncWorker__deleteAllExistingPersonSyncWorkItemsInLibrary___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695D5E0]);
  v3 = +[PLBackgroundJobWorkItem entityName];
  v4 = [v2 initWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ = %d", @"jobType", 10];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 32) managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__PLBackgroundJobPersonSyncWorker__deleteAllExistingPersonSyncWorkItemsInLibrary___block_invoke_2;
  v8[3] = &unk_1E756EEB8;
  v9 = *(a1 + 32);
  v7 = [v6 enumerateObjectsFromFetchRequest:v4 usingDefaultBatchSizeWithBlock:v8];
}

void __82__PLBackgroundJobPersonSyncWorker__deleteAllExistingPersonSyncWorkItemsInLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  [v4 deleteObject:v3];
}

- (BOOL)_resumeResetSyncPersonsFromSystemLibrary:(id)a3 toSyndicationLibrary:(id)a4 error:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PLBackgroundJobPersonSyncWorker *)self _resumeObjectIDInLibrary:v8];
  v11 = PLSyndicationGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "PersonSync: Resuming reset sync at object %@", &buf, 0xCu);
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__62544;
  v33 = __Block_byref_object_dispose__62545;
  v34 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __103__PLBackgroundJobPersonSyncWorker__resumeResetSyncPersonsFromSystemLibrary_toSyndicationLibrary_error___block_invoke;
  v20[3] = &unk_1E7576F10;
  v20[4] = self;
  v12 = v10;
  v21 = v12;
  v13 = v8;
  v22 = v13;
  v24 = &v26;
  p_buf = &buf;
  v14 = v9;
  v23 = v14;
  [v13 performBlockAndWait:v20];
  v15 = v27;
  if ((v27[3] & 1) == 0)
  {
    v16 = *(*(&buf + 1) + 40);
    v17 = v16;
    if (v16)
    {
      if (a5)
      {
        v17 = v17;
        *a5 = v17;
      }

      v15 = v27;
    }
  }

  v18 = *(v15 + 24);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v26, 8);

  return v18 & 1;
}

void __103__PLBackgroundJobPersonSyncWorker__resumeResetSyncPersonsFromSystemLibrary_toSyndicationLibrary_error___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) managedObjectContext];
  v5 = [v2 _nextBatchOfPersonsWithResumeObjectId:v3 inManagedObjectContext:v4];

  if ([v5 isFailure])
  {
    v6 = PLSyndicationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 error];
      *buf = 138412290;
      v35 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "PersonSync: Failed to fetch person batch. Error %@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    v8 = [v5 error];
    v9 = *(*(a1 + 72) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
    goto LABEL_22;
  }

  v10 = [v5 result];
  if (![v10 count])
  {
    [*(a1 + 32) _setCompletedResetSyncFromLibrary:*(a1 + 48)];
    goto LABEL_22;
  }

  v11 = PLSyndicationGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = [v10 count];
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "PersonSync: Syncing %tu persons to syndication library as part of reset sync", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v10;
  v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  v14 = *v30;
  while (2)
  {
    v15 = 0;
    do
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v29 + 1) + 8 * v15);
      v17 = *(a1 + 32);
      v18 = *(a1 + 56);
      v19 = *(*(a1 + 72) + 8);
      obj = *(v19 + 40);
      v20 = [v17 _syncPerson:v16 toLibrary:v18 error:&obj];
      objc_storeStrong((v19 + 40), obj);
      if ((v20 & 1) == 0)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_21:

        goto LABEL_22;
      }

      if ([*(a1 + 32) isCancelled])
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        v25 = *(a1 + 32);
        v26 = *(a1 + 48);
        v27 = [v16 objectID];
        [v25 _setResumeMarkerInLibrary:v26 objectID:v27];

        goto LABEL_21;
      }

      ++v15;
    }

    while (v13 != v15);
    v13 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v21 = *(a1 + 32);
  v22 = *(a1 + 48);
  v23 = [v10 lastObject];
  v24 = [v23 objectID];
  [v21 _setResumeMarkerInLibrary:v22 objectID:v24];

LABEL_22:
}

- (BOOL)_resumeResetSyncDeletedPersonsFromSyndicationLibrary:(id)a3 toSystemLibrary:(id)a4 error:(id *)a5
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PLBackgroundJobPersonSyncWorker *)self _resumeObjectIDInLibrary:v8];
  v11 = PLSyndicationGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "PersonSync: Resume reset sync for deleted persons from object %@", &buf, 0xCu);
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 1;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__62544;
  v69 = __Block_byref_object_dispose__62545;
  v70 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__62544;
  v57 = __Block_byref_object_dispose__62545;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__62544;
  v51 = __Block_byref_object_dispose__62545;
  v52 = 0;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __110__PLBackgroundJobPersonSyncWorker__resumeResetSyncDeletedPersonsFromSyndicationLibrary_toSystemLibrary_error___block_invoke;
  v40[3] = &unk_1E7576B18;
  v40[4] = self;
  v12 = v10;
  v41 = v12;
  v13 = v8;
  v42 = v13;
  v43 = &v59;
  p_buf = &buf;
  v45 = &v53;
  v46 = &v47;
  [v13 performBlockAndWait:v40];
  if (v60[3])
  {
    if (![v54[5] count])
    {
      [(PLBackgroundJobPersonSyncWorker *)self _setCompletedResetSyncFromLibrary:v13];
      v27 = 1;
      goto LABEL_27;
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __110__PLBackgroundJobPersonSyncWorker__resumeResetSyncDeletedPersonsFromSyndicationLibrary_toSystemLibrary_error___block_invoke_2;
    v36[3] = &unk_1E7578820;
    v39 = &v53;
    v37 = v9;
    v15 = v14;
    v38 = v15;
    [v37 performBlockAndWait:v36];
    v16 = objc_alloc(MEMORY[0x1E695DFA8]);
    v17 = [v16 initWithArray:v54[5]];
    [v17 minusSet:v15];
    v18 = PLSyndicationGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 count];
      *v64 = 134217984;
      v65 = v19;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "PersonSync: Deleting %tu persons from syndication library as part of reset sync", v64, 0xCu);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v63 count:16];
    if (v21)
    {
      v22 = *v33;
      while (2)
      {
        v23 = 0;
        do
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v20);
          }

          [(PLBackgroundJobPersonSyncWorker *)self _deletePersonWithUuid:*(*(&v32 + 1) + 8 * v23) fromLibrary:v13, v32];
          if ([(PLBackgroundJobPersonSyncWorker *)self isCancelled])
          {

            v27 = 0;
            goto LABEL_25;
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v32 objects:v63 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    [(PLBackgroundJobPersonSyncWorker *)self _setResumeMarkerInLibrary:v13 objectID:v48[5]];
    v24 = v60;
    if ((v60[3] & 1) == 0)
    {
      v25 = *(*(&buf + 1) + 40);
      v26 = v25;
      if (v25)
      {
        if (a5)
        {
          v26 = v26;
          *a5 = v26;
        }

        v24 = v60;
      }
    }

    v27 = *(v24 + 24);
LABEL_25:
  }

  else
  {
    v28 = *(*(&buf + 1) + 40);
    v29 = v28;
    v15 = v29;
    v27 = 0;
    if (v28 && a5)
    {
      v30 = v29;
      v27 = 0;
      *a5 = v15;
    }
  }

LABEL_27:
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v59, 8);
  return v27 & 1;
}

void __110__PLBackgroundJobPersonSyncWorker__resumeResetSyncDeletedPersonsFromSyndicationLibrary_toSystemLibrary_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) managedObjectContext];
  v5 = [v2 _nextBatchOfPersonsWithResumeObjectId:v3 inManagedObjectContext:v4];

  if ([v5 isFailure])
  {
    v6 = PLSyndicationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 error];
      v19 = 138412290;
      v20 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "PersonSync: Failed to fetch Persons in syndication library for reset sync. Error: %@", &v19, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v8 = [v5 error];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = [v5 result];
    v12 = [v11 _pl_map:&__block_literal_global_62554];
    v13 = *(*(a1 + 72) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = [v11 lastObject];
    v16 = [v15 objectID];
    v17 = *(*(a1 + 80) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

void __110__PLBackgroundJobPersonSyncWorker__resumeResetSyncDeletedPersonsFromSyndicationLibrary_toSystemLibrary_error___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [PLPerson personsWithUUIDs:v2 inManagedObjectContext:v3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) personUUID];
        if (v10)
        {
          [*(a1 + 40) addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_nextBatchOfPersonsWithResumeObjectId:(id)a3 inManagedObjectContext:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695D5E0];
  v7 = a4;
  v8 = +[PLPerson entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  if (v5)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self < %@", v5];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v10 = ;
  [v9 setPredicate:v10];

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:0];
  v20[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [v9 setSortDescriptors:v12];

  [v9 setFetchLimit:100];
  [v9 setIncludesPendingChanges:0];
  v19 = @"personUUID";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  [v9 setPropertiesToFetch:v13];

  v18 = 0;
  v14 = [v7 executeFetchRequest:v9 error:&v18];

  v15 = v18;
  if (v14)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v14];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v15];
  }
  v16 = ;

  return v16;
}

- (void)_deletePersonWithUuid:(id)a3 fromLibrary:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__62544;
  v20 = __Block_byref_object_dispose__62545;
  v21 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PLBackgroundJobPersonSyncWorker__deletePersonWithUuid_fromLibrary___block_invoke;
  v11[3] = &unk_1E75778C0;
  v15 = &v16;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = self;
  [v9 performTransactionAndWait:v11];
  if (v17[5])
  {
    v10 = PLSyndicationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v8;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "PersonSync: Finished deleting person %{public}@ from syndication library.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v16, 8);
}

void __69__PLBackgroundJobPersonSyncWorker__deletePersonWithUuid_fromLibrary___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [PLPerson personWithUUID:v2 inManagedObjectContext:v3];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [*(a1 + 48) _resetFacesProcessingForPerson:?];
    v7 = *(*(*(a1 + 56) + 8) + 40);

    [v7 deletePersonWithReason:9];
  }

  else
  {
    v8 = PLSyndicationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "PersonSync: Person with uuid %{public}@ does not exist in syndication library", &v10, 0xCu);
    }
  }
}

- (void)_resetFacesProcessingForPerson:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLSyndicationGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 personUUID];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "PersonSync: resetting faces processing on person %{public}@", &v6, 0xCu);
  }

  [v3 resetFacesProcessing];
}

- (BOOL)_syncPerson:(id)a3 toLibrary:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [v9 personUUID];
  v11 = PLSyndicationGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v29 = v10;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "PersonSync: _syncPerson %{public}@ begin", buf, 0xCu);
  }

  v12 = +[PLInterLibraryTransferOptions newTransferOptionsForPersonFromSystemToSyndication];
  v13 = [PLInterLibraryTransfer alloc];
  v14 = [v9 photoLibrary];

  v15 = [(PLInterLibraryTransfer *)v13 initWithSourceLibrary:v14 destinationLibrary:v8 options:v12];
  v27 = 0;
  v16 = [(PLInterLibraryTransfer *)v15 transferPersonWithUuid:v10 error:&v27];
  v17 = v27;
  v18 = PLSyndicationGetLog();
  v19 = v18;
  if (v16)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v29 = v10;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_INFO, "PersonSync: _syncPerson %{public}@ succeeded", buf, 0xCu);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __63__PLBackgroundJobPersonSyncWorker__syncPerson_toLibrary_error___block_invoke;
    v23[3] = &unk_1E75761B8;
    v24 = v10;
    v25 = v8;
    v26 = self;
    [v25 performTransactionAndWait:v23];

    v20 = v17;
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v29 = v10;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "PersonSync: _syncPerson %{public}@ failed with error %@", buf, 0x16u);
    }

    v21 = v17;
    if (v17 && a5)
    {
      *a5 = v21;
    }
  }

  return v16;
}

void __63__PLBackgroundJobPersonSyncWorker__syncPerson_toLibrary_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v5 = [PLPerson personWithUUID:v2 inManagedObjectContext:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 48) _resetFacesProcessingForPerson:v5];
    v4 = v5;
  }
}

- (BOOL)_processWorkItemObjectIDs:(id)a3 fromSystemLibrary:(id)a4 toSyndicationLibrary:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__62544;
  v32 = __Block_byref_object_dispose__62545;
  v33 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __106__PLBackgroundJobPersonSyncWorker__processWorkItemObjectIDs_fromSystemLibrary_toSyndicationLibrary_error___block_invoke;
  v21[3] = &unk_1E7576F10;
  v13 = v10;
  v26 = &v34;
  v22 = v13;
  v23 = self;
  v14 = v11;
  v24 = v14;
  v15 = v12;
  v25 = v15;
  v27 = &v28;
  [v14 performBlockAndWait:v21];
  v16 = v35;
  if ((v35[3] & 1) == 0)
  {
    v17 = v29[5];
    v18 = v17;
    if (v17)
    {
      if (a6)
      {
        v18 = v18;
        *a6 = v18;
      }

      v16 = v35;
    }
  }

  v19 = *(v16 + 24);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v19;
}

void __106__PLBackgroundJobPersonSyncWorker__processWorkItemObjectIDs_fromSystemLibrary_toSyndicationLibrary_error___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    v6 = off_1E7560000;
    while (2)
    {
      v7 = 0;
      v25 = v4;
      do
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(a1 + 64) + 8);
        if (*(v8 + 24) != 1)
        {
          goto LABEL_23;
        }

        v9 = *(*(&v27 + 1) + 8 * v7);
        if ([*(a1 + 40) isCancelled])
        {
          v8 = *(*(a1 + 64) + 8);
LABEL_23:
          *(v8 + 24) = 0;
          goto LABEL_24;
        }

        v10 = [*(a1 + 48) managedObjectContext];
        v11 = [v10 objectWithID:v9];

        v12 = [v11 identifier];
        if (([v11 jobFlags] & 2) != 0)
        {
          [*(a1 + 40) _deletePersonWithUuid:v12 fromLibrary:*(a1 + 56)];
        }

        else
        {
          if ([v11 jobFlags])
          {
            v15 = v6[315];
            v16 = [*(a1 + 48) managedObjectContext];
            v13 = [(__objc2_class *)v15 personWithUUID:v12 inManagedObjectContext:v16];

            if (v13)
            {
              v17 = *(a1 + 40);
              v18 = *(a1 + 56);
              v19 = *(*(a1 + 72) + 8);
              obj = *(v19 + 40);
              v20 = v5;
              v21 = v2;
              v22 = v6;
              v23 = [v17 _syncPerson:v13 toLibrary:v18 error:&obj];
              objc_storeStrong((v19 + 40), obj);
              *(*(*(a1 + 64) + 8) + 24) = v23;
              v6 = v22;
              v2 = v21;
              v5 = v20;
              v4 = v25;
            }

            else
            {
              v24 = PLSyndicationGetLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v32 = v12;
                _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_INFO, "PersonSync: Unable to find changed person with UUID %@ in system library", buf, 0xCu);
              }
            }
          }

          else
          {
            v13 = PLSyndicationGetLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = [v11 jobFlags];
              *buf = 138412546;
              v32 = v12;
              v33 = 1024;
              v34 = v14;
              _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "PersonSync: Got work item for person UUID %@ with unexpected flags %x", buf, 0x12u);
            }
          }
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:
}

- (BOOL)_syncFaceCropsFromLibrary:(id)a3 toLibrary:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(PLBackgroundJobPersonSyncWorker *)self _faceCropUuidsFromLibrary:v8 error:a5];
  if (v10)
  {
    v11 = [(PLBackgroundJobPersonSyncWorker *)self _faceCropUuidsMissingFromList:v10 inLibrary:v9 error:a5];
    if (v11)
    {
      v12 = +[PLInterLibraryTransferOptions newTransferOptionsForFaceCropFromSyndicationToSystem];
      v13 = [[PLInterLibraryTransfer alloc] initWithSourceLibrary:v8 destinationLibrary:v9 options:v12];
      v14 = PLSyndicationGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v29 = [v11 count];
        v30 = 2114;
        v31 = v11;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "PersonSync: %tu face crops to copy to SPL: %{public}@", buf, 0x16u);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v15 = v11;
      v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v22 = v12;
        v18 = *v24;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            if (![(PLInterLibraryTransfer *)v13 transferFaceCropWithUuid:*(*(&v23 + 1) + 8 * i) error:a5])
            {
              v20 = 0;
              goto LABEL_16;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

        v20 = 1;
LABEL_16:
        v12 = v22;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_faceCropUuidsMissingFromList:(id)a3 inLibrary:(id)a4 error:(id *)a5
{
  v46[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E695D5E0];
  v10 = +[PLFaceCrop entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"uuid", v7];
  [v11 setPredicate:v12];

  [v11 setResultType:2];
  v46[0] = @"uuid";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  [v11 setPropertiesToFetch:v13];

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__62544;
  v42 = __Block_byref_object_dispose__62545;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__62544;
  v36 = __Block_byref_object_dispose__62545;
  v37 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __81__PLBackgroundJobPersonSyncWorker__faceCropUuidsMissingFromList_inLibrary_error___block_invoke;
  v27[3] = &unk_1E7578898;
  v30 = &v38;
  v14 = v8;
  v28 = v14;
  v15 = v11;
  v29 = v15;
  v31 = &v32;
  [v14 performBlockAndWait:v27];
  if (v39[5])
  {
    v16 = [v7 count];
    if (v16 == [v39[5] count])
    {
      v17 = PLSyndicationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_INFO, "PersonSync: all face crops from processing library are in the SPL", buf, 2u);
      }

      v18 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v7];
      v22 = objc_alloc(MEMORY[0x1E695DFD8]);
      v23 = [v39[5] valueForKey:@"uuid"];
      v24 = [v22 initWithArray:v23];

      [v21 minusSet:v24];
      v25 = PLSyndicationGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v45 = v21;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_INFO, "PersonSync: missing the following face crops in the SPL: %{public}@", buf, 0xCu);
      }

      v18 = [v21 allObjects];
    }
  }

  else
  {
    v19 = PLSyndicationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = v33[5];
      *buf = 138412290;
      v45 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "PersonSync: Unable to fetch face crop uuids from the SPL: %@", buf, 0xCu);
    }

    v18 = 0;
    if (a5)
    {
      *a5 = v33[5];
    }
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v18;
}

void __81__PLBackgroundJobPersonSyncWorker__faceCropUuidsMissingFromList_inLibrary_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v9];
  v5 = v9;
  v6 = v9;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  }
}

- (id)_faceCropUuidsFromLibrary:(id)a3 error:(id *)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLFaceCrop entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"type", &unk_1F0FBFD60];
  [v8 setPredicate:v9];

  [v8 setResultType:2];
  v37[0] = @"uuid";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  [v8 setPropertiesToFetch:v10];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__62544;
  v33 = __Block_byref_object_dispose__62545;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__62544;
  v27 = __Block_byref_object_dispose__62545;
  v28 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__PLBackgroundJobPersonSyncWorker__faceCropUuidsFromLibrary_error___block_invoke;
  v18[3] = &unk_1E7578898;
  v21 = &v29;
  v11 = v5;
  v19 = v11;
  v12 = v8;
  v20 = v12;
  v22 = &v23;
  [v11 performBlockAndWait:v18];
  v13 = v30[5];
  if (v13)
  {
    v14 = [v13 valueForKey:@"uuid"];
  }

  else
  {
    v15 = PLSyndicationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v24[5];
      *buf = 138412290;
      v36 = v16;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "PersonSync: Unable to fetch face crop uuids from the processing library: %@", buf, 0xCu);
    }

    v14 = 0;
    if (a4)
    {
      *a4 = v24[5];
    }
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v14;
}

void __67__PLBackgroundJobPersonSyncWorker__faceCropUuidsFromLibrary_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v9];
  v5 = v9;
  v6 = v9;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  }
}

- (BOOL)_isFaceCropsWorkItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isEqual:@"BackgroundJobPersonSyncFaceCrops"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isResetWorkItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isEqual:@"BackgroundJobPersonSyncReset"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)stopWorkingOnItem:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLSyndicationGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "PersonSync: PLBackgroundJobPersonSyncWorker stopWorkingOnItem: %p", &v6, 0xCu);
  }

  [(PLBackgroundJobPersonSyncWorker *)self setIsCancelled:1];
}

- (id)_coalescedWorkItemObjectIDsFrom:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __77__PLBackgroundJobPersonSyncWorker__coalescedWorkItemObjectIDsFrom_inLibrary___block_invoke;
  v21 = &unk_1E75768C8;
  v22 = v6;
  v23 = v7;
  v24 = self;
  v25 = v10;
  v26 = v9;
  v27 = v8;
  v11 = v8;
  v12 = v9;
  v13 = v10;
  v14 = v7;
  v15 = v6;
  [v14 performBlockAndWait:&v18];
  v16 = [v11 allValues];

  return v16;
}

void __77__PLBackgroundJobPersonSyncWorker__coalescedWorkItemObjectIDsFrom_inLibrary___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLBackgroundJobWorkItem entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 40) managedObjectContext];
  v24 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v24];
  v8 = v24;

  if (v7)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 identifier];
          v16 = [v14 jobFlags];
          if ((v16 & 2) != 0)
          {
            [*(a1 + 56) addObject:v15];
            [*(a1 + 64) removeObject:v15];
            goto LABEL_12;
          }

          if ((v16 & 1) != 0 && ([*(a1 + 56) containsObject:v15] & 1) == 0)
          {
            [*(a1 + 64) addObject:v15];
LABEL_12:
            v17 = [v14 objectID];
            [*(a1 + 72) setObject:v17 forKeyedSubscript:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch work items with error: %@", buf, 0x16u);
    }
  }
}

- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(PLBackgroundJobPersonSyncWorker *)self setIsCancelled:0];
  v12 = PLSyndicationGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "PersonSync: PLBackgroundJobPersonSyncWorker performWorkOnItem: %p %@", buf, 0x16u);
  }

  if (!v10)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobPersonSyncWorker.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"library != nil"}];
  }

  v13 = v10;
  v14 = [(PLBackgroundJobPersonSyncWorker *)self _syndicationLibraryWithName:"[PLBackgroundJobPersonSyncWorker performWorkOnItem:inLibrary:completion:]"];
  if (v14)
  {
    if ([(PLBackgroundJobPersonSyncWorker *)self _isResetWorkItem:v9])
    {
      if (![(PLBackgroundJobPersonSyncWorker *)self _syncStateMatchesBetweenSystemLibrary:v13 syndicationLibrary:v14])
      {
        v15 = [v13 globalValues];
        [v15 setPersonSyncState:0];

        v16 = [v14 globalValues];
        [v16 setPersonSyncState:0];

        v17 = [v13 globalValues];
        [v17 setPersonSyncResumeMarker:0];

        v18 = [v14 globalValues];
        [v18 setPersonSyncResumeMarker:0];

        [(PLBackgroundJobPersonSyncWorker *)self _deleteAllExistingPersonSyncWorkItemsInLibrary:v13];
        [(PLBackgroundJobPersonSyncWorker *)self _setMatchingSyncStateWithSystemLibrary:v13 syndicationLibrary:v14];
      }

      if ([(PLBackgroundJobPersonSyncWorker *)self _hasCompletedResetSyncFromLibrary:v14])
      {
        v19 = 0;
      }

      else
      {
        v54 = 0;
        v34 = [(PLBackgroundJobPersonSyncWorker *)self _resumeResetSyncDeletedPersonsFromSyndicationLibrary:v14 toSystemLibrary:v13 error:&v54];
        v19 = v54;
        if (!v34)
        {
          goto LABEL_30;
        }
      }

      if ([(PLBackgroundJobPersonSyncWorker *)self _hasCompletedResetSyncFromLibrary:v13]|| (v53 = v19, v35 = [(PLBackgroundJobPersonSyncWorker *)self _resumeResetSyncPersonsFromSystemLibrary:v13 toSyndicationLibrary:v14 error:&v53], v36 = v53, v19, v19 = v36, v35))
      {
LABEL_33:
        v11[2](v11, v19);

        goto LABEL_45;
      }

LABEL_30:
      v37 = PLSyndicationGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v19;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "PersonSync: Reset sync failed, error: %@", buf, 0xCu);
      }

      goto LABEL_33;
    }

    v52 = 0;
    v21 = [(PLBackgroundJobPersonSyncWorker *)self _syncFaceCropsFromLibrary:v14 toLibrary:v13 error:&v52];
    v22 = v52;
    if (!v21)
    {
      v23 = PLSyndicationGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v22;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "PersonSync: continuing after _syncFaceCropsFromLibrary failed with error %@", buf, 0xCu);
      }
    }

    if ([(PLBackgroundJobPersonSyncWorker *)self _isFaceCropsWorkItem:v9])
    {
      v11[2](v11, 0);
LABEL_44:

      goto LABEL_45;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      [v43 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobPersonSyncWorker.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"[item isKindOfClass:NSArray.class]"}];
    }

    v24 = v9;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v60 = __Block_byref_object_copy__62544;
    v61 = __Block_byref_object_dispose__62545;
    v62 = 0;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __74__PLBackgroundJobPersonSyncWorker_performWorkOnItem_inLibrary_completion___block_invoke;
    v48[3] = &unk_1E75778C0;
    v51 = buf;
    v48[4] = self;
    v25 = v24;
    v49 = v25;
    v26 = v13;
    v50 = v26;
    [v26 performBlockAndWait:v48];
    v27 = PLSyndicationGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [v25 count];
      v29 = [*(*&buf[8] + 40) count];
      *v55 = 134218240;
      v56 = v28;
      v57 = 2048;
      v58 = v29;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_INFO, "PersonSync: %tu changes (coalesced to %tu changes)", v55, 0x16u);
    }

    v30 = *(*&buf[8] + 40);
    v47 = 0;
    v31 = [(PLBackgroundJobPersonSyncWorker *)self _processWorkItemObjectIDs:v30 fromSystemLibrary:v26 toSyndicationLibrary:v14 error:&v47];
    v32 = v47;
    if (v31)
    {
      if (![(PLBackgroundJobPersonSyncWorker *)self isCancelled])
      {
        v39 = PLSyndicationGetLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = [v25 count];
          *v55 = 134217984;
          v56 = v40;
          _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_INFO, "PersonSync: Deleting %tu work items", v55, 0xCu);
        }

        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __74__PLBackgroundJobPersonSyncWorker_performWorkOnItem_inLibrary_completion___block_invoke_52;
        v44[3] = &unk_1E7578848;
        v45 = v25;
        v46 = v26;
        [v46 performTransactionAndWait:v44];
        v41 = PLSyndicationGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *v55 = 0;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_INFO, "PersonSync: calling completionBlock after finishing processing successfully", v55, 2u);
        }

        v11[2](v11, 0);
        goto LABEL_43;
      }

      v33 = 0;
    }

    else
    {
      v38 = PLSyndicationGetLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *v55 = 138412290;
        v56 = v32;
        _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "PersonSync: Person sync failed with error: %@", v55, 0xCu);
      }

      v33 = v32;
    }

    v11[2](v11, v33);
LABEL_43:

    _Block_object_dispose(buf, 8);
    goto LABEL_44;
  }

  v20 = PLSyndicationGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_INFO, "PersonSync: No work to do, syndicationLibrary is nil", buf, 2u);
  }

  v11[2](v11, 0);
LABEL_45:
}

void __74__PLBackgroundJobPersonSyncWorker_performWorkOnItem_inLibrary_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _coalescedWorkItemObjectIDsFrom:*(a1 + 40) inLibrary:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __74__PLBackgroundJobPersonSyncWorker_performWorkOnItem_inLibrary_completion___block_invoke_52(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695D5E0]);
  v3 = +[PLBackgroundJobWorkItem entityName];
  v4 = [v2 initWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 32)];
  [v4 setPredicate:v5];

  v6 = [*(a1 + 40) managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PLBackgroundJobPersonSyncWorker_performWorkOnItem_inLibrary_completion___block_invoke_2;
  v8[3] = &unk_1E756EEB8;
  v9 = *(a1 + 40);
  v7 = [v6 enumerateObjectsFromFetchRequest:v4 usingDefaultBatchSizeWithBlock:v8];
}

void __74__PLBackgroundJobPersonSyncWorker_performWorkOnItem_inLibrary_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  [v4 deleteObject:v3];
}

- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[PLBackgroundJobCriteria criteriaForHubbleWorker];
  if (([v7 containsObject:v8] & 1) == 0)
  {
    v17 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
LABEL_8:
    self = v17;
    goto LABEL_14;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = v6;
  v11 = [(PLBackgroundJobPersonSyncWorker *)self _syndicationLibraryWithName:"[PLBackgroundJobPersonSyncWorker workItemsNeedingProcessingInLibrary:validCriterias:]"];
  if (!v11)
  {
    v20 = PLSyndicationGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_INFO, "PersonSync: No work to do, syndicationLibrary is nil", buf, 2u);
    }

    self = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
    goto LABEL_13;
  }

  v12 = [(PLBackgroundJobPersonSyncWorker *)self _syncStateMatchesBetweenSystemLibrary:v10 syndicationLibrary:v11];
  if (![(PLBackgroundJobPersonSyncWorker *)self _hasCompletedResetSyncFromLibrary:v10]|| (v12 & [(PLBackgroundJobPersonSyncWorker *)self _hasCompletedResetSyncFromLibrary:v11]& 1) == 0)
  {
    v18 = [PLBackgroundJobWorkerPendingWorkItems alloc];
    v37[0] = @"BackgroundJobPersonSyncReset";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    self = [(PLBackgroundJobWorkerPendingWorkItems *)v18 initWithCriteria:v8 workItemsNeedingProcessing:v19];

LABEL_13:
    objc_autoreleasePoolPop(v9);
    goto LABEL_14;
  }

  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__62544;
  v33 = __Block_byref_object_dispose__62545;
  v34 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __86__PLBackgroundJobPersonSyncWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke;
  v26[3] = &unk_1E7578910;
  v28 = buf;
  v13 = v10;
  v27 = v13;
  [v13 performBlockAndWait:v26];
  if ([*(v30 + 5) count])
  {
    v14 = [PLBackgroundJobWorkerPendingWorkItems alloc];
    v36 = *(v30 + 5);
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    self = [(PLBackgroundJobWorkerPendingWorkItems *)v14 initWithCriteria:v8 workItemsNeedingProcessing:v15];
    v16 = 0;
  }

  else
  {
    v15 = [(PLBackgroundJobPersonSyncWorker *)self _faceCropUuidsFromLibrary:v11 error:0];
    v25 = [(PLBackgroundJobPersonSyncWorker *)self _faceCropUuidsMissingFromList:v15 inLibrary:v13 error:0];
    v22 = [v25 count];
    v16 = v22 == 0;
    if (v22)
    {
      v23 = [PLBackgroundJobWorkerPendingWorkItems alloc];
      v35 = @"BackgroundJobPersonSyncFaceCrops";
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      self = [(PLBackgroundJobWorkerPendingWorkItems *)v23 initWithCriteria:v8 workItemsNeedingProcessing:v24];
    }
  }

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v9);
  if (v16)
  {
    v17 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
    goto LABEL_8;
  }

LABEL_14:

  return self;
}

void __86__PLBackgroundJobPersonSyncWorker_workItemsNeedingProcessingInLibrary_validCriterias___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v8 = 0;
  v3 = [PLBackgroundJobWorkItem workItemsSortedByTimestampWithJobType:10 fetchLimit:&unk_1F0FBD288 resultType:1 inManagedObjectContext:v2 error:&v8];
  v4 = v8;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = PLSyndicationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "PersonSync: failed to fetch work items. Error: %@", buf, 0xCu);
    }
  }
}

@end