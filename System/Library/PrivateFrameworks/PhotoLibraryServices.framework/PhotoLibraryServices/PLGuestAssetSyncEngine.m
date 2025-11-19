@interface PLGuestAssetSyncEngine
+ (BOOL)_guestAssetSyncStatusIsSet:(int64_t)a3 inLibrary:(id)a4;
+ (id)_resumeMarkerObjectIDInGlobalValuesOfLibrary:(id)a3 storedInLibrary:(id)a4;
+ (void)_setGuestAssetSyncStatus:(int64_t)a3 inLibrary:(id)a4;
- (BOOL)_deleteAssetWithUuid:(id)a3 syndicationIdentifier:(id)a4 fromLibrary:(id)a5;
- (BOOL)_inTransaction_deleteAssetWithUuid:(id)a3 syndicationIdentifier:(id)a4 fromLibrary:(id)a5;
- (PLGuestAssetSyncEngine)initWithDelegate:(id)a3;
- (PLGuestAssetSyncEngineDelegate)delegate;
- (id)_assetWithUUID:(id)a3 orSyndicationIdentifier:(id)a4 inLibrary:(id)a5;
- (id)workItemObjectIDsInLibrary:(id)a3 error:(id *)a4;
- (void)_deleteAllWorkItemsInSourceLibrary:(id)a3;
- (void)_finishProcessingWorkItemManagedObjectID:(id)a3 library:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_initialSyncTransferNextAssetFromSourceLibrary:(id)a3 targetLibrary:(id)a4 iterator:(id)a5 completion:(id)a6;
- (void)_markAsWasGuestAssetOnAssetWithSyndicationIdentifier:(id)a3 inLibrary:(id)a4;
- (void)_processSyndicationLibraryAsset:(id)a3 targetLibrary:(id)a4 completion:(id)a5;
- (void)_syncAsset:(id)a3 toLibrary:(id)a4 completion:(id)a5;
- (void)performInitialSyncWithSourceLibrary:(id)a3 targetLibrary:(id)a4 completion:(id)a5;
- (void)processWorkItemObjectID:(id)a3 sourceLibrary:(id)a4 targetLibrary:(id)a5 completion:(id)a6;
@end

@implementation PLGuestAssetSyncEngine

- (PLGuestAssetSyncEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performInitialSyncWithSourceLibrary:(id)a3 targetLibrary:(id)a4 completion:(id)a5
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([objc_opt_class() _guestAssetSyncStatusIsSet:1 inLibrary:v8] & 1) == 0)
  {
    v11 = PLSyndicationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "GuestAssetSync: Detected syndication library rebuild, dropping initial sync resume markers and starting over", buf, 2u);
    }

    [objc_opt_class() _setGuestAssetSyncStatus:1 inLibrary:v8];
    [objc_opt_class() _setGuestAssetSyncStatus:0 inLibrary:v9];
    v12 = [v9 globalValues];
    [v12 setGuestAssetInitialSyncResumeMarker:0];
  }

  v13 = [objc_opt_class() _guestAssetSyncStatusIsSet:2 inLibrary:v9];
  v14 = objc_opt_class();
  if (v13)
  {
    v15 = v8;
  }

  else
  {
    v15 = v9;
  }

  v16 = [v14 _resumeMarkerObjectIDInGlobalValuesOfLibrary:v9 storedInLibrary:v15];
  v17 = off_1E7560000;
  v18 = off_1E7560000;
  if (v13)
  {
    goto LABEL_9;
  }

  v25 = PLSyndicationGetLog();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  v50 = v10;
  if (v16)
  {
    if (v26)
    {
      *buf = 138412290;
      v62 = v16;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "GuestAssetSync: Starting initial sync, verifying SPL guest assets from resume token: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v26)
    {
      v27 = [v9 libraryID];
      *buf = 138412290;
      v62 = v27;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "GuestAssetSync: Starting initial sync for library: %@, no resume token found, deleting all queued work items in syndication library", buf, 0xCu);
    }

    [(PLGuestAssetSyncEngine *)self _deleteAllWorkItemsInSourceLibrary:v8];
  }

  v28 = [PLManagedObjectPagingIterator alloc];
  v29 = +[PLManagedAsset entityName];
  v30 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForGuestAsset"), 1}];
  v49 = v16;
  v31 = [(PLManagedObjectPagingIterator *)v28 initWithEntityName:v29 resultType:0 resumeObjectID:v16 additionalPredicate:v30];

  v32 = [v9 managedObjectContext];
  v24 = [(PLManagedObjectPagingIterator *)v31 nextObjectWithManagedObjectContext:v32];

  v33 = [(PLGuestAssetSyncEngine *)self delegate];
  LOBYTE(v16) = [v33 guestAssetSyncManagerShouldCancel:self];

  v51 = v31;
  if ([v24 isSuccess] && (v16 & 1) == 0)
  {
    do
    {
      v16 = v24;
      v34 = [v24 result];
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __87__PLGuestAssetSyncEngine_performInitialSyncWithSourceLibrary_targetLibrary_completion___block_invoke;
      v56[3] = &unk_1E7578100;
      v57 = v34;
      v35 = v8;
      v58 = v8;
      v59 = self;
      v36 = v9;
      v60 = v36;
      v37 = v34;
      [v36 performTransactionAndWait:v56];
      v38 = [v37 objectID];
      v39 = [v38 URIRepresentation];
      v40 = [v39 absoluteString];
      v41 = [v36 globalValues];
      [v41 setGuestAssetInitialSyncResumeMarker:v40];

      v42 = [v36 managedObjectContext];
      v24 = [(PLManagedObjectPagingIterator *)v51 nextObjectWithManagedObjectContext:v42];

      v43 = [(PLGuestAssetSyncEngine *)self delegate];
      LODWORD(v16) = [v43 guestAssetSyncManagerShouldCancel:self];

      v8 = v35;
    }

    while ([v24 isSuccess] && !v16);
  }

  if ([v24 isFailure])
  {
    v44 = [v24 error];
    v10 = v50;
    (*(v50 + 2))(v50, 0, v44);

    v23 = v51;
LABEL_27:
    v16 = v49;
    goto LABEL_28;
  }

  v23 = v51;
  if (v16)
  {
    v45 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    v10 = v50;
    (*(v50 + 2))(v50, 0, v45);

    goto LABEL_27;
  }

  v46 = PLSyndicationGetLog();
  v18 = off_1E7560000;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = [v9 libraryID];
    *buf = 138412290;
    v62 = v47;
    _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "GuestAssetSync: Initial sync, verify SPL Guest assets complete for library: %@", buf, 0xCu);
  }

  v48 = [v9 globalValues];
  [v48 setGuestAssetInitialSyncResumeMarker:0];

  [objc_opt_class() _setGuestAssetSyncStatus:2 inLibrary:v9];
  v16 = 0;
  v10 = v50;
  v17 = off_1E7560000;
LABEL_9:
  v19 = PLSyndicationGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v16;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "GuestAssetSync: Initial sync, transfering Syndication guest assets from resume token: %@", buf, 0xCu);
  }

  v20 = objc_alloc(v17[66]);
  v21 = [(__objc2_class *)v18[53] entityName];
  v22 = [(__objc2_class *)v18[53] predicateForShouldSyncToSPL];
  v23 = [v20 initWithEntityName:v21 resultType:1 resumeObjectID:v16 additionalPredicate:v22];

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __87__PLGuestAssetSyncEngine_performInitialSyncWithSourceLibrary_targetLibrary_completion___block_invoke_65;
  v52[3] = &unk_1E7578128;
  v53 = v9;
  v54 = self;
  v55 = v10;
  [(PLGuestAssetSyncEngine *)self _initialSyncTransferNextAssetFromSourceLibrary:v8 targetLibrary:v53 iterator:v23 completion:v52];

  v24 = v53;
LABEL_28:
}

void __87__PLGuestAssetSyncEngine_performInitialSyncWithSourceLibrary_targetLibrary_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = [*(a1 + 32) additionalAttributes];
  v4 = [v3 syndicationIdentifier];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__PLGuestAssetSyncEngine_performInitialSyncWithSourceLibrary_targetLibrary_completion___block_invoke_2;
  v8[3] = &unk_1E75780D8;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 48);
  v6 = v2;
  v9 = v6;
  v7 = v4;
  v10 = v7;
  v11 = *(a1 + 40);
  v12 = &v13;
  [v5 performBlockAndWait:v8];
  if (*(v14 + 24) == 1)
  {
    [*(a1 + 48) _inTransaction_deleteAssetWithUuid:v6 syndicationIdentifier:v7 fromLibrary:*(a1 + 56)];
  }

  else
  {
    [objc_opt_class() setDidIngestGuestAssetsInLibrary:*(a1 + 56)];
  }

  _Block_object_dispose(&v13, 8);
}

void __87__PLGuestAssetSyncEngine_performInitialSyncWithSourceLibrary_targetLibrary_completion___block_invoke_65(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = PLSyndicationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) libraryID];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "GuestAssetSync: Initial sync complete for library: %@", &v9, 0xCu);
    }

    v8 = [*(a1 + 32) globalValues];
    [v8 setGuestAssetInitialSyncResumeMarker:0];

    [objc_opt_class() _setGuestAssetSyncStatus:4 inLibrary:*(a1 + 32)];
  }

  (*(*(a1 + 48) + 16))();
}

void __87__PLGuestAssetSyncEngine_performInitialSyncWithSourceLibrary_targetLibrary_completion___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _assetWithUUID:*(a1 + 40) orSyndicationIdentifier:*(a1 + 48) inLibrary:*(a1 + 56)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 shouldSyncToSPL];
    *(*(*(a1 + 64) + 8) + 24) = v4 ^ 1;
    v5 = PLSyndicationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v3 uuid];
      v7 = v6;
      v8 = *(a1 + 40);
      v9 = @"don't";
      if (v4)
      {
        v9 = @"do";
      }

      v13 = 138544130;
      v14 = v6;
      v16 = v9;
      v10 = @"keep";
      v15 = 2114;
      v17 = 2114;
      if (!v4)
      {
        v10 = @"delete";
      }

      v18 = v10;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "GuestAssetSync: Asset %{public}@ in syndication library says %{public}@ sync to SPL, will %{public}@ corresponding guest asset %{public}@ in SPL", &v13, 0x2Au);
    }
  }

  else
  {
    v5 = PLSyndicationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "GuestAssetSync: Unable to find asset %{public}@/%{public}@ in syndication library, will delete corresponding guest asset %{public}@ in SPL", &v13, 0x20u);
    }
  }
}

- (void)_initialSyncTransferNextAssetFromSourceLibrary:(id)a3 targetLibrary:(id)a4 iterator:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PLGuestAssetSyncEngine *)self delegate];
  v15 = [v14 guestAssetSyncManagerShouldCancel:self];

  if (v15)
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    v13[2](v13, 0, v16);
  }

  else
  {
    v17 = [v10 managedObjectContext];
    v16 = [v12 nextObjectWithManagedObjectContext:v17];

    if (v16)
    {
      if ([v16 isSuccess])
      {
        v18 = [v16 result];
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v33 = 0;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __107__PLGuestAssetSyncEngine__initialSyncTransferNextAssetFromSourceLibrary_targetLibrary_iterator_completion___block_invoke;
        v22[3] = &unk_1E75780B0;
        v23 = v10;
        v19 = v18;
        v29 = &v30;
        v24 = v19;
        v25 = self;
        v26 = v11;
        v20 = v13;
        v28 = v20;
        v27 = v12;
        [v23 performBlockAndWait:v22];
        if ((v31[3] & 1) == 0)
        {
          v20[2](v20, 1, 0);
        }

        _Block_object_dispose(&v30, 8);
      }

      else
      {
        v21 = [v16 error];
        v13[2](v13, 0, v21);
      }
    }

    else
    {
      v13[2](v13, 1, 0);
    }
  }
}

void __107__PLGuestAssetSyncEngine__initialSyncTransferNextAssetFromSourceLibrary_targetLibrary_iterator_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v21 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v21];
  v5 = v21;

  if (v4)
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
    v6 = PLSyndicationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 uuid];
      *buf = 138543362;
      v23 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "GuestAssetSync: Initial sync transfering syndication library guest asset: %{public}@ to SPL", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __107__PLGuestAssetSyncEngine__initialSyncTransferNextAssetFromSourceLibrary_targetLibrary_iterator_completion___block_invoke_51;
    v16[3] = &unk_1E7578088;
    v20 = *(a1 + 72);
    v10 = *(a1 + 56);
    v11 = *(a1 + 40);
    v15 = *(a1 + 48);
    v12 = *(a1 + 32);
    *&v13 = v15;
    *(&v13 + 1) = v12;
    *&v14 = v10;
    *(&v14 + 1) = v11;
    v17 = v14;
    v18 = v13;
    v19 = *(a1 + 64);
    [v9 _syncAsset:v4 toLibrary:v8 completion:v16];
  }
}

uint64_t __107__PLGuestAssetSyncEngine__initialSyncTransferNextAssetFromSourceLibrary_targetLibrary_iterator_completion___block_invoke_51(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 72) + 16);

    return v3();
  }

  else
  {
    v5 = [*(a1 + 40) URIRepresentation];
    v6 = [v5 absoluteString];
    v7 = [*(a1 + 32) globalValues];
    [v7 setGuestAssetInitialSyncResumeMarker:v6];

    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);

    return [v8 _initialSyncTransferNextAssetFromSourceLibrary:v9 targetLibrary:v10 iterator:v11 completion:v12];
  }
}

- (void)_deleteAllWorkItemsInSourceLibrary:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PLGuestAssetSyncEngine__deleteAllWorkItemsInSourceLibrary___block_invoke;
  v6[3] = &unk_1E7578848;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 performTransactionAndWait:v6];
}

void __61__PLGuestAssetSyncEngine__deleteAllWorkItemsInSourceLibrary___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLBackgroundJobWorkItem entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"jobType", 0];
  [v4 setPredicate:v5];
  v6 = [*(a1 + 32) managedObjectContext];
  v7 = [v6 executeFetchRequest:v4 error:0];

  v8 = [*(a1 + 32) managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__PLGuestAssetSyncEngine__deleteAllWorkItemsInSourceLibrary___block_invoke_2;
  v12[3] = &unk_1E7578060;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v9;
  v14 = v10;
  v11 = [v8 enumerateWithIncrementalSaveUsingObjects:v7 withBlock:v12];
}

void __61__PLGuestAssetSyncEngine__deleteAllWorkItemsInSourceLibrary___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 managedObjectContext];
  [v8 deleteObject:v7];

  v9 = [*(v5 + 40) delegate];
  LODWORD(v5) = [v9 guestAssetSyncManagerShouldCancel:*(v5 + 40)];

  if (v5)
  {
    *a4 = 1;
  }
}

- (void)_syncAsset:(id)a3 toLibrary:(id)a4 completion:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 uuid];
  v12 = [v8 additionalAttributes];
  v33 = [v12 syndicationIdentifier];

  v13 = [v8 shouldSyncToSPL];
  v14 = PLSyndicationGetLog();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v15)
    {
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v33;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "GuestAssetSync: _syncAsset %{public}@ / %{public}@ begin", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v59) = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v16 = [v8 syndicationState];
    v17 = v16;
    v18 = (v16 >> 1) & 1;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __58__PLGuestAssetSyncEngine__syncAsset_toLibrary_completion___block_invoke;
    v38[3] = &unk_1E7578010;
    v19 = v33;
    v39 = v19;
    v20 = v9;
    v40 = v20;
    v42 = buf;
    v45 = v18;
    v21 = v11;
    v41 = v21;
    v43 = &v46;
    v44 = &v50;
    [v20 performBlockAndWait:v38];
    if (*(v47 + 24) == 1)
    {
      [v8 updateSyndicationStateWithSavedToLibrary:(v17 & 2) == 0];
    }

    if ((*(*&buf[8] + 24) & 1) != 0 || (v17 & 2) == 0)
    {
      if ((v51[3] & 1) == 0)
      {
        v32 = [(PLGuestAssetSyncEngine *)self delegate];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __58__PLGuestAssetSyncEngine__syncAsset_toLibrary_completion___block_invoke_47;
        v34[3] = &unk_1E7578038;
        v34[4] = self;
        v35 = v20;
        v36 = v10;
        [v32 guestAssetSyncManager:self isTransferingAsset:v8 toLibrary:v35 completion:v34];

LABEL_25:
        _Block_object_dispose(&v46, 8);
        _Block_object_dispose(&v50, 8);
        _Block_object_dispose(buf, 8);
        goto LABEL_26;
      }
    }

    else
    {
      v22 = PLSyndicationGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v54 = 138543618;
        v55 = v21;
        v56 = 2114;
        v57 = v19;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "GuestAssetSync: no existing asset in SPL. Resetting savedToLibrary for source asset %{public}@ / %{public}@, skipping this sync pass", v54, 0x16u);
      }

      [v8 updateSyndicationStateWithSavedToLibrary:0];
      *(v51 + 24) = 1;
    }

    v26 = [v8 managedObjectContext];
    v27 = [v26 hasChanges];

    if (v27)
    {
      v28 = [v8 managedObjectContext];
      v37 = 0;
      v29 = [v28 save:&v37];
      v30 = v37;

      if ((v29 & 1) == 0)
      {
        v31 = PLSyndicationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *v54 = 138412290;
          v55 = v30;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "GuestAssetSync: failed to save syndication photo library changes to syndicationState, error: %@", v54, 0xCu);
        }
      }
    }

    else
    {
      v30 = 0;
    }

    (*(v10 + 2))(v10, v30);

    goto LABEL_25;
  }

  if (v15)
  {
    v23 = [v8 uuid];
    [v8 savedAssetType];
    v24 = PLValidatedSavedAssetTypeDescription();
    v25 = PLManagedAssetSyndicationStateDescription([v8 syndicationState]);
    *buf = 138544130;
    *&buf[4] = v23;
    *&buf[12] = 2114;
    *&buf[14] = v33;
    *&buf[22] = 2114;
    v59 = v24;
    v60 = 2114;
    v61 = v25;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "GuestAssetSync: _syncAsset %{public}@ / %{public}@ (%{public}@) syndicationState %{public}@ says don't sync to SPL", buf, 0x2Au);
  }

  [(PLGuestAssetSyncEngine *)self _deleteAssetWithUuid:v11 syndicationIdentifier:v33 fromLibrary:v9];
  [MEMORY[0x1E69BF328] maskForGuestAsset];
  [v8 savedAssetType];
  if (PLValidatedSavedAssetTypeApplies())
  {
    [(PLGuestAssetSyncEngine *)self _markAsWasGuestAssetOnAssetWithSyndicationIdentifier:v33 inLibrary:v9];
  }

  (*(v10 + 2))(v10, 0);
LABEL_26:
}

void __58__PLGuestAssetSyncEngine__syncAsset_toLibrary_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [PLManagedAsset assetWithSyndicationIdentifier:*(a1 + 32) inLibrary:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = v2 != 0;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [MEMORY[0x1E69BF328] maskForUserLibrary];
    [v2 savedAssetType];
    v3 = PLValidatedSavedAssetTypeApplies();
    if (*(a1 + 80) != v3)
    {
      v4 = v3;
      v5 = PLSyndicationGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 48);
        v7 = *(a1 + 32);
        v8[0] = 67109634;
        v8[1] = v4;
        v9 = 2114;
        v10 = v6;
        v11 = 2114;
        v12 = v7;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "GuestAssetSync: setting savedToLibrary %d for source asset %{public}@ / %{public}@, skipping this sync pass", v8, 0x1Cu);
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }
  }
}

void __58__PLGuestAssetSyncEngine__syncAsset_toLibrary_completion___block_invoke_47(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [objc_opt_class() setDidIngestGuestAssetsInLibrary:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_markAsWasGuestAssetOnAssetWithSyndicationIdentifier:(id)a3 inLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__PLGuestAssetSyncEngine__markAsWasGuestAssetOnAssetWithSyndicationIdentifier_inLibrary___block_invoke;
  v9[3] = &unk_1E7578848;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [v7 performTransactionAndWait:v9];
}

void __89__PLGuestAssetSyncEngine__markAsWasGuestAssetOnAssetWithSyndicationIdentifier_inLibrary___block_invoke(uint64_t a1)
{
  v1 = [PLManagedAsset assetWithSyndicationIdentifier:*(a1 + 32) inLibrary:*(a1 + 40)];
  if (v1)
  {
    v2 = v1;
    [v1 setWasGuestAsset:1];
    v1 = v2;
  }
}

- (BOOL)_deleteAssetWithUuid:(id)a3 syndicationIdentifier:(id)a4 fromLibrary:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PLGuestAssetSyncEngine__deleteAssetWithUuid_syndicationIdentifier_fromLibrary___block_invoke;
  v15[3] = &unk_1E75780D8;
  v19 = &v20;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  [v13 performTransactionAndWait:v15];
  LOBYTE(v8) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v8;
}

uint64_t __81__PLGuestAssetSyncEngine__deleteAssetWithUuid_syndicationIdentifier_fromLibrary___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _inTransaction_deleteAssetWithUuid:*(a1 + 40) syndicationIdentifier:*(a1 + 48) fromLibrary:*(a1 + 56)];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

- (BOOL)_inTransaction_deleteAssetWithUuid:(id)a3 syndicationIdentifier:(id)a4 fromLibrary:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(PLGuestAssetSyncEngine *)self _assetWithUUID:v8 orSyndicationIdentifier:a4 inLibrary:a5];
  if (!v9)
  {
    v12 = PLSyndicationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "GuestAssetSync: Unable to delete guest asset with uuid %@, does not exist", &v16, 0xCu);
    }

    goto LABEL_10;
  }

  [MEMORY[0x1E69BF328] maskForGuestAsset];
  [v9 savedAssetType];
  v10 = PLValidatedSavedAssetTypeApplies();
  v11 = PLSyndicationGetLog();
  v12 = v11;
  if (!v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      [v9 savedAssetType];
      v14 = PLValidatedSavedAssetTypeDescription();
      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "GuestAssetSync: Not deleting %{public}@ asset in system library with uuid %{public}@", &v16, 0x16u);
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v8;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "GuestAssetSync: Deleting guest asset from system library with uuid %{public}@", &v16, 0xCu);
  }

  v12 = [PLAssetTransactionReason transactionReason:@"Syndication Guest Asset Sync"];
  [v9 deleteWithReason:v12];
  v13 = 1;
LABEL_11:

  return v13;
}

- (id)_assetWithUUID:(id)a3 orSyndicationIdentifier:(id)a4 inLibrary:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [PLManagedAsset assetWithUUID:v7 inLibrary:v9];
  v11 = v10;
  if (v8)
  {
    if (!v10)
    {
      v11 = [PLManagedAsset assetWithSyndicationIdentifier:v8 inLibrary:v9];
      if (v11)
      {
        v12 = PLSyndicationGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 uuid];
          v15 = 138543874;
          v16 = v8;
          v17 = 2114;
          v18 = v7;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "GuestAssetSync: Found asset by looking up syndicationIdentifier %{public}@ uuid %{public}@ did not match asset uuid %{public%}@", &v15, 0x20u);
        }
      }
    }
  }

  return v11;
}

- (void)processWorkItemObjectID:(id)a3 sourceLibrary:(id)a4 targetLibrary:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__114695;
  v26[4] = __Block_byref_object_dispose__114696;
  v27 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __89__PLGuestAssetSyncEngine_processWorkItemObjectID_sourceLibrary_targetLibrary_completion___block_invoke;
  v18[3] = &unk_1E7577FE8;
  v14 = v11;
  v19 = v14;
  v15 = v10;
  v24 = v26;
  v20 = v15;
  v21 = self;
  v16 = v12;
  v22 = v16;
  v25 = &v28;
  v17 = v13;
  v23 = v17;
  [v14 performBlockAndWait:v18];
  if ((v29[3] & 1) == 0)
  {
    [(PLGuestAssetSyncEngine *)self _finishProcessingWorkItemManagedObjectID:v15 library:v14 error:0 completion:v17];
  }

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);
}

void __89__PLGuestAssetSyncEngine_processWorkItemObjectID_sourceLibrary_targetLibrary_completion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 72) + 8);
  obj = *(v4 + 40);
  v5 = [v2 existingObjectWithID:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  if (!v5)
  {
    v11 = PLSyndicationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 40);
      v16 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138543618;
      v37 = v15;
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "GuestAssetSync: Unable to fetch work item with objectID: %{public}@, error: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  v6 = [v5 jobFlags];
  v7 = v6;
  if ((v6 & 2) == 0)
  {
    if (v6)
    {
      v23 = [v5 identifier];
      v11 = [PLManagedAsset assetWithUUID:v23 inLibrary:*(a1 + 32)];

      if (v11)
      {
        *(*(*(a1 + 80) + 8) + 24) = 1;
        v24 = *(a1 + 48);
        v25 = *(a1 + 56);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __89__PLGuestAssetSyncEngine_processWorkItemObjectID_sourceLibrary_targetLibrary_completion___block_invoke_36;
        v29[3] = &unk_1E7577FC0;
        v29[4] = v24;
        v30 = *(a1 + 40);
        v31 = *(a1 + 32);
        v32 = *(a1 + 64);
        [v24 _processSyndicationLibraryAsset:v11 targetLibrary:v25 completion:v29];
      }

      else
      {
        v26 = PLSyndicationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = [v5 identifier];
          v28 = *(*(*(a1 + 72) + 8) + 40);
          *buf = 138543618;
          v37 = v27;
          v38 = 2112;
          v39 = v28;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "GuestAssetSync: Unable to fetch asset with uuid: %{public}@, error: %@", buf, 0x16u);
        }

        v11 = 0;
      }
    }

    else
    {
      v8 = PLSyndicationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v37) = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "GuestAssetSync: Invalid job flags for work item: %X", buf, 8u);
      }

      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E69BFF48];
      v34 = *MEMORY[0x1E696A278];
      v35 = @"Invalid job flags for guest asset sync work item";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v12 = [v9 errorWithDomain:v10 code:46309 userInfo:v11];
      v13 = *(*(a1 + 72) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

LABEL_19:

    goto LABEL_20;
  }

  v17 = PLSyndicationGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v5 identifier];
    *buf = 138543362;
    v37 = v18;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_INFO, "GuestAssetSync: attempting to delete asset with uuid: %{public}@", buf, 0xCu);
  }

  v19 = *(a1 + 48);
  v20 = [v5 identifier];
  v21 = [v19 _deleteAssetWithUuid:v20 syndicationIdentifier:0 fromLibrary:*(a1 + 56)];

  if (v21)
  {
    v11 = PLSyndicationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v22 = [v5 identifier];
      *buf = 138543362;
      v37 = v22;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "GuestAssetSync: deleted asset with uuid: %{public}@", buf, 0xCu);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)_processSyndicationLibraryAsset:(id)a3 targetLibrary:(id)a4 completion:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 shouldSyncToSPL];
  v12 = PLSyndicationGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      v14 = [v8 uuid];
      v15 = [v8 additionalAttributes];
      v16 = [v15 syndicationIdentifier];
      [v8 savedAssetType];
      v17 = PLValidatedSavedAssetTypeDescription();
      v18 = PLManagedAssetSyndicationStateDescription([v8 syndicationState]);
      v29 = 138544130;
      v30 = v14;
      v31 = 2114;
      v32 = v16;
      v33 = 2114;
      v34 = v17;
      v35 = 2114;
      v36 = v18;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "GuestAssetSync: %{public}@ / %{public}@ (%{public}@) syndicationState %{public}@ says sync to SPL", &v29, 0x2Au);
    }

    [(PLGuestAssetSyncEngine *)self _syncAsset:v8 toLibrary:v9 completion:v10];
  }

  else
  {
    if (v13)
    {
      v19 = [v8 uuid];
      v20 = [v8 additionalAttributes];
      v21 = [v20 syndicationIdentifier];
      [v8 savedAssetType];
      v22 = PLValidatedSavedAssetTypeDescription();
      v23 = PLManagedAssetSyndicationStateDescription([v8 syndicationState]);
      v29 = 138544130;
      v30 = v19;
      v31 = 2114;
      v32 = v21;
      v33 = 2114;
      v34 = v22;
      v35 = 2114;
      v36 = v23;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "GuestAssetSync: %{public}@ / %{public}@ (%{public}@) syndicationState %{public}@ says don't sync to SPL", &v29, 0x2Au);
    }

    v24 = [v8 uuid];
    v25 = [v8 additionalAttributes];
    v26 = [v25 syndicationIdentifier];
    [(PLGuestAssetSyncEngine *)self _deleteAssetWithUuid:v24 syndicationIdentifier:v26 fromLibrary:v9];

    [MEMORY[0x1E69BF328] maskForGuestAsset];
    [v8 savedAssetType];
    if (PLValidatedSavedAssetTypeApplies())
    {
      v27 = [v8 additionalAttributes];
      v28 = [v27 syndicationIdentifier];
      [(PLGuestAssetSyncEngine *)self _markAsWasGuestAssetOnAssetWithSyndicationIdentifier:v28 inLibrary:v9];
    }

    v10[2](v10, 0);
  }
}

- (void)_finishProcessingWorkItemManagedObjectID:(id)a3 library:(id)a4 error:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__PLGuestAssetSyncEngine__finishProcessingWorkItemManagedObjectID_library_error_completion___block_invoke;
  v15[3] = &unk_1E7578848;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = a6;
  v14 = a5;
  [v11 performTransactionAndWait:v15];
  v13[2](v13, v14);
}

void __92__PLGuestAssetSyncEngine__finishProcessingWorkItemManagedObjectID_library_error_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PLSyndicationGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "GuestAssetSync: Finishing performWork and deleting job item: %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) managedObjectContext];
  v5 = [v4 existingObjectWithID:*(a1 + 32) error:0];

  if (v5)
  {
    v6 = [*(a1 + 40) managedObjectContext];
    [v6 deleteObject:v5];
  }
}

- (id)workItemObjectIDsInLibrary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__114695;
  v25 = __Block_byref_object_dispose__114696;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__114695;
  v19 = __Block_byref_object_dispose__114696;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PLGuestAssetSyncEngine_workItemObjectIDsInLibrary_error___block_invoke;
  v11[3] = &unk_1E7578870;
  v13 = &v21;
  v6 = v5;
  v12 = v6;
  v14 = &v15;
  [v6 performBlockAndWait:v11];
  v7 = v22[5];
  v8 = v16[5];
  if (!v7 && a4)
  {
    v8 = v8;
    *a4 = v8;
  }

  v9 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v9;
}

void __59__PLGuestAssetSyncEngine_workItemObjectIDsInLibrary_error___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLBackgroundJobWorkItem entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setResultType:1];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"jobType", 0];
  [v4 setPredicate:v5];
  [v4 setFetchLimit:100];
  v6 = [*(a1 + 32) managedObjectContext];
  v7 = *(*(a1 + 48) + 8);
  obj = *(v7 + 40);
  v8 = [v6 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (PLGuestAssetSyncEngine)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PLGuestAssetSyncEngine;
  v5 = [(PLGuestAssetSyncEngine *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

+ (id)_resumeMarkerObjectIDInGlobalValuesOfLibrary:(id)a3 storedInLibrary:(id)a4
{
  v5 = a4;
  v6 = [a3 globalValues];
  v7 = [v6 guestAssetInitialSyncResumeMarker];

  if (v7)
  {
    v8 = [v5 managedObjectContext];
    v9 = [v8 persistentStoreCoordinator];
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v7];
    v11 = [v9 managedObjectIDForURIRepresentation:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)_setGuestAssetSyncStatus:(int64_t)a3 inLibrary:(id)a4
{
  v10 = a4;
  v5 = [v10 globalValues];
  v6 = [v5 guestAssetSyncStatus];

  if (!v6 || (v7 = [v6 integerValue], a3 |= v7, a3 != v7))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v9 = [v10 globalValues];
    [v9 setGuestAssetSyncStatus:v8];
  }
}

+ (BOOL)_guestAssetSyncStatusIsSet:(int64_t)a3 inLibrary:(id)a4
{
  v5 = [a4 globalValues];
  v6 = [v5 guestAssetSyncStatus];

  if (v6)
  {
    v7 = (a3 & ~[v6 integerValue]) == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end