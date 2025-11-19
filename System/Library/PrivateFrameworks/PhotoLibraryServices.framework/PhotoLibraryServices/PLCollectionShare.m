@interface PLCollectionShare
+ (id)createOwnedShareWithUUID:(id)a3 creationDate:(id)a4 title:(id)a5 kind:(signed __int16)a6 clientBundleIdentifier:(id)a7 unitTestMode:(BOOL)a8 inPhotoLibrary:(id)a9;
+ (id)fetchCollectionSharesWithUUIDs:(id)a3 propertiesToFetch:(id)a4 managedObjectContext:(id)a5;
+ (id)insertOrUpdateShareWithCPLScopeChange:(id)a3 inPhotoLibrary:(id)a4;
+ (id)isEligibleForSearchIndexingPredicateForLibraryIdentifier:(int64_t)a3;
+ (id)propertiesToFetch;
+ (id)scopeIdentifierPrefixInLibrary:(id)a3;
+ (id)syncBackendForKind:(signed __int16)a3 photoLibrary:(id)a4;
- (BOOL)_shouldUpdateLastModifiedDate;
- (BOOL)incrementallyDeleteAndSaveWithError:(id *)a3;
- (BOOL)isCurrentUserOwner;
- (BOOL)isEligibleForSearchIndexing;
- (BOOL)isSyncableChange;
- (BOOL)locallyIncrementallyDeleteAndSaveWithError:(id *)a3;
- (BOOL)supportsCloudUpload;
- (id)cplFullRecord;
- (id)cplScopeChange;
- (id)scopedIdentifier;
- (id)syncBackend;
- (void)_insertOwnedParticipantInLibrary:(id)a3 unitTestMode:(BOOL)a4;
- (void)acceptWithCompletionHandler:(id)a3;
- (void)checkServerForChanges;
- (void)declineWithCompletionHandler:(id)a3;
- (void)markAsViewed;
- (void)markPendingInvitationAsSpamWithCompletionHandler:(id)a3;
- (void)prepareForDeletion;
- (void)prioritizeDownloads:(BOOL)a3;
- (void)publishAssets:(id)a3 withComment:(id)a4;
- (void)publishWithCompletionHandler:(id)a3;
- (void)reconcileModelRelationshipsWithCompletionHandler:(id)a3;
- (void)removeShareParticipantUUIDs:(id)a3 photoLibrary:(id)a4;
- (void)sendInvitationsForShareParticipantUUIDs:(id)a3 completionHandler:(id)a4;
- (void)setLastModifiedDate:(id)a3;
- (void)trash;
- (void)unsubscribeWithCompletionHandler:(id)a3;
- (void)updateCollectionShareCurrentUserContributionStateIfNeeded;
- (void)updatePublicPermission:(int64_t)a3;
- (void)updatePublicURLState:(signed __int16)a3;
- (void)updateTitle:(id)a3;
- (void)willSave;
@end

@implementation PLCollectionShare

- (BOOL)isEligibleForSearchIndexing
{
  if (([(PLCollectionShare *)self isDeleted]& 1) != 0)
  {
    return 0;
  }

  v4 = objc_opt_class();
  v5 = [(PLManagedObject *)self photoLibrary];
  v6 = [v4 isEligibleForSearchIndexingPredicateForLibraryIdentifier:{+[PLSpotlightDonationUtilities wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:](PLSpotlightDonationUtilities, "wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:", v5)}];
  v7 = [v6 evaluateWithObject:self];

  return v7;
}

+ (id)fetchCollectionSharesWithUUIDs:(id)a3 propertiesToFetch:(id)a4 managedObjectContext:(id)a5
{
  v7 = MEMORY[0x1E696AE18];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 predicateWithFormat:@"uuid IN %@", v10];
  v12 = [v10 count];

  v13 = [(PLShare *)PLCollectionShare sharesWithPredicate:v11 fetchLimit:v12 includesPendingChanges:0 propertiesToFetch:v9 inManagedObjectContext:v8];

  if (v13)
  {
    v14 = [MEMORY[0x1E69BF2D0] successWithResult:v13];
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:45701 userInfo:0];
    v14 = [MEMORY[0x1E69BF2D0] failureWithError:v15];
  }

  return v14;
}

+ (id)propertiesToFetch
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"uuid";
  v4[1] = @"title";
  v4[2] = @"creationDate";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)isEligibleForSearchIndexingPredicateForLibraryIdentifier:(int64_t)a3
{
  pl_dispatch_once();
  v3 = isEligibleForSearchIndexingPredicateForLibraryIdentifier__predicate_35034;

  return v3;
}

void __94__PLCollectionShare_SearchIndexing__isEligibleForSearchIndexingPredicateForLibraryIdentifier___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696AB28];
  v1 = [MEMORY[0x1E696AE18] predicateWithFormat:@"trashedState == %d", 0];
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = [v0 andPredicateWithSubpredicates:v2];
  v4 = isEligibleForSearchIndexingPredicateForLibraryIdentifier__predicate_35034;
  isEligibleForSearchIndexingPredicateForLibraryIdentifier__predicate_35034 = v3;
}

- (void)markAsViewed
{
  v3 = [(PLCollectionShare *)self syncBackend];
  [v3 markAsViewedForCollectionShare:self];
}

- (void)prioritizeDownloads:(BOOL)a3
{
  v3 = a3;
  v5 = [(PLCollectionShare *)self syncBackend];
  [v5 prioritizeDownloadsForCollectionShare:self shouldPrioritize:v3];
}

- (void)reconcileModelRelationshipsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PLCollectionShare *)self syncBackend];
  [v5 reconcileModelRelationshipsForCollectionShare:self completionHandler:v4];
}

- (void)checkServerForChanges
{
  v3 = [(PLCollectionShare *)self syncBackend];
  [v3 checkServerForChangesForCollectionShare:self];
}

- (void)updateCollectionShareCurrentUserContributionStateIfNeeded
{
  v4 = [(PLShare *)self currentUserParticipant];
  v3 = [v4 permission] == 3;
  if ([(PLCollectionShare *)self collectionShareCurrentUserContributionState]!= v3)
  {
    [(PLCollectionShare *)self setCollectionShareCurrentUserContributionState:v3];
  }
}

- (BOOL)isCurrentUserOwner
{
  if ([(PLCollectionShare *)self collectionShareKind]== 2)
  {
    v3 = [(PLShare *)self owner];
    v4 = [v3 uuid];
    v5 = [(PLShare *)self currentUserParticipant];
    v6 = [v5 uuid];
    v7 = v4 == v6;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PLCollectionShare;
    return [(PLShare *)&v9 isCurrentUserOwner];
  }

  return v7;
}

- (void)sendInvitationsForShareParticipantUUIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLManagedObject *)self photoLibrary];
  v9 = [PLShareParticipant participantsWithUUIDs:v7 inPhotoLibrary:v8];

  v10 = [(PLCollectionShare *)self syncBackend];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PLCollectionShare_sendInvitationsForShareParticipantUUIDs_completionHandler___block_invoke;
  v12[3] = &unk_1E7577430;
  v13 = v6;
  v11 = v6;
  [v10 sendInvitationsForParticipants:v9 collectionShare:self completionHandler:v12];
}

- (void)removeShareParticipantUUIDs:(id)a3 photoLibrary:(id)a4
{
  v6 = [PLShareParticipant participantsWithUUIDs:a3 inPhotoLibrary:a4];
  v5 = [(PLCollectionShare *)self syncBackend];
  [v5 removeParticipants:v6 collectionShare:self];
}

- (void)markPendingInvitationAsSpamWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PLCollectionShare *)self syncBackend];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PLCollectionShare_markPendingInvitationAsSpamWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7576050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 markPendingInvitationAsSpamForCollectionShare:self completionHandler:v7];
}

void __70__PLCollectionShare_markPendingInvitationAsSpamWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) collectionShareKind];
  v5 = 0;
  if (!a2 && v4 == 2)
  {
    v6 = *(a1 + 32);
    v7 = 0;
    [v6 locallyIncrementallyDeleteAndSaveWithError:&v7];
    v5 = v7;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)unsubscribeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PLCollectionShare *)self syncBackend];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PLCollectionShare_unsubscribeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7576050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 unsubscribeFromCollectionShare:self completionHandler:v7];
}

void __54__PLCollectionShare_unsubscribeWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) collectionShareKind] == 2)
  {
    v2 = *(a1 + 32);
    v4 = 0;
    [v2 locallyIncrementallyDeleteAndSaveWithError:&v4];
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)declineWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PLCollectionShare *)self syncBackend];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PLCollectionShare_declineWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7576050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 declineCollectionShare:self completionHandler:v7];
}

void __50__PLCollectionShare_declineWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) collectionShareKind] == 2)
  {
    v2 = *(a1 + 32);
    v4 = 0;
    [v2 locallyIncrementallyDeleteAndSaveWithError:&v4];
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)acceptWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(PLCollectionShare *)self collectionShareKind]== 1)
  {
    v8.receiver = self;
    v8.super_class = PLCollectionShare;
    [(PLShare *)&v8 acceptWithCompletionHandler:v4];
  }

  else
  {
    v5 = [(PLCollectionShare *)self syncBackend];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__PLCollectionShare_acceptWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7577430;
    v7 = v4;
    [v5 acceptCollectionShare:self completionHandler:v6];
  }
}

- (void)_insertOwnedParticipantInLibrary:(id)a3 unitTestMode:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PLCollectionShare *)self syncBackend];
  [v7 insertOwnedParticipantInLibrary:v6 collectionShare:self unitTestMode:v4];
}

- (void)publishAssets:(id)a3 withComment:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLCollectionShare *)self syncBackend];
  [v8 publishAssets:v7 withComment:v6 collectionShare:self];
}

- (void)setLastModifiedDate:(id)a3
{
  v10 = a3;
  if ([(PLCollectionShare *)self collectionShareKind]!= 2)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLCollectionShare.m" lineNumber:294 description:{@"setLastModifiedDate: should only be called on SharedStream collection shares. For CPL collection shares, lastModifiedDate is automatically managed"}];
  }

  v5 = [(PLCollectionShare *)self lastModifiedDate];
  if (!v5 || (v6 = v5, -[PLCollectionShare lastModifiedDate](self, "lastModifiedDate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v10 compare:v7], v7, v6, v8 == 1))
  {
    [(PLManagedObject *)self pl_safeSetValue:v10 forKey:@"lastModifiedDate" valueDidChangeHandler:0];
  }
}

- (void)updatePublicURLState:(signed __int16)a3
{
  v3 = a3;
  v5 = [(PLCollectionShare *)self syncBackend];
  [v5 updatePublicURLState:v3 collectionShare:self];
}

- (void)updatePublicPermission:(int64_t)a3
{
  v5 = [(PLCollectionShare *)self syncBackend];
  [v5 updatePublicPermission:a3 collectionShare:self];
}

- (void)updateTitle:(id)a3
{
  v4 = a3;
  v5 = [(PLCollectionShare *)self syncBackend];
  [v5 updateTitle:v4 collectionShare:self];
}

- (BOOL)locallyIncrementallyDeleteAndSaveWithError:(id *)a3
{
  v5 = [(PLCollectionShare *)self syncBackend];
  [v5 deleteCollectionShareDirectory:self];

  v7.receiver = self;
  v7.super_class = PLCollectionShare;
  return [(PLShare *)&v7 incrementallyDeleteAndSaveWithError:a3];
}

- (BOOL)incrementallyDeleteAndSaveWithError:(id *)a3
{
  v5 = [(PLCollectionShare *)self syncBackend];
  [v5 deleteCollectionShareFromServer:self];

  return [(PLCollectionShare *)self locallyIncrementallyDeleteAndSaveWithError:a3];
}

- (void)trash
{
  v3 = [(PLCollectionShare *)self syncBackend];
  [v3 trashCollectionShare:self];
}

- (void)publishWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PLCollectionShare *)self syncBackend];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PLCollectionShare_publishWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E756C308;
  v8 = v4;
  v6 = v4;
  [v5 publishCollectionShare:self completionHandler:v7];
}

- (id)cplScopeChange
{
  v3 = [(PLCollectionShare *)self syncBackend];
  v4 = [v3 cplScopeChangeForCollectionShare:self];

  return v4;
}

- (BOOL)supportsCloudUpload
{
  v2 = self;
  v3 = [(PLCollectionShare *)self syncBackend];
  LOBYTE(v2) = [v3 supportsCloudUploadForCollectionShare:v2];

  return v2;
}

- (BOOL)isSyncableChange
{
  v2 = self;
  v3 = [(PLCollectionShare *)self syncBackend];
  LOBYTE(v2) = [v3 isSyncableChangeForCollectionShare:v2];

  return v2;
}

- (id)scopedIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLCollectionShare.m" lineNumber:227 description:{@"%@ are synchronized as scope changes and don't have a scoped identifier", objc_opt_class()}];

  return 0;
}

- (id)cplFullRecord
{
  v3 = [(PLCollectionShare *)self syncBackend];
  v4 = [v3 cplFullRecordForCollectionShare:self];

  return v4;
}

- (BOOL)_shouldUpdateLastModifiedDate
{
  if ([(PLCollectionShare *)self collectionShareKind]!= 1)
  {
    return 0;
  }

  v3 = [(PLCollectionShare *)self changedValues];
  if ([v3 count] && (objc_msgSend(v3, "objectForKeyedSubscript:", @"lastModifiedDate"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = [v3 allKeys];
    v8 = [v6 setWithArray:v7];

    v9 = [(PLCollectionShare *)self _listOfLastModifiedDateChangeProperties];
    v5 = [v8 intersectsSet:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)prepareForDeletion
{
  v7.receiver = self;
  v7.super_class = PLCollectionShare;
  [(PLShare *)&v7 prepareForDeletion];
  v3 = [(PLCollectionShare *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [PLDelayedSearchIndexUpdates recordCollectionShareIfNeeded:self];
    if (([v3 mergingChanges] & 1) == 0)
    {
      v4 = [(PLCollectionShare *)self syncBackend];
      v5 = v4;
      if (v4)
      {
        [v4 recordCloudDeletionIfNeededForCollectionShare:self];
        v6 = [v3 delayedSaveActions];
        [v6 recordCollectionShareForCloudFeedUpdate:self];
      }
    }
  }
}

- (void)willSave
{
  v6.receiver = self;
  v6.super_class = PLCollectionShare;
  [(PLManagedObject *)&v6 willSave];
  v3 = [(PLCollectionShare *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 delayedSaveActions];
    [v4 recordCollectionShareForCloudFeedUpdate:self];

    if (([(PLCollectionShare *)self isDeleted]& 1) == 0)
    {
      [PLDelayedSearchIndexUpdates recordCollectionShareIfNeeded:self];
      if (([(PLCollectionShare *)self isDeleted]& 1) == 0 && [(PLCollectionShare *)self collectionShareKind]== 1 && [(PLCollectionShare *)self _shouldUpdateLastModifiedDate])
      {
        v5 = [MEMORY[0x1E695DF00] now];
        [(PLManagedObject *)self pl_safeSetValue:v5 forKey:@"lastModifiedDate" valueDidChangeHandler:0];
      }
    }
  }
}

- (id)syncBackend
{
  syncBackend = self->_syncBackend;
  if (!syncBackend)
  {
    v4 = [(PLCollectionShare *)self collectionShareKind];
    v5 = [(PLManagedObject *)self photoLibrary];
    v6 = [PLCollectionShare syncBackendForKind:v4 photoLibrary:v5];
    v7 = self->_syncBackend;
    self->_syncBackend = v6;

    syncBackend = self->_syncBackend;
  }

  return syncBackend;
}

+ (id)insertOrUpdateShareWithCPLScopeChange:(id)a3 inPhotoLibrary:(id)a4
{
  v4 = [PLCollectionShareCPLBackend insertOrUpdateShareWithCPLScopeChange:a3 inPhotoLibrary:a4];
  [v4 setCollectionShareKind:1];

  return v4;
}

+ (id)createOwnedShareWithUUID:(id)a3 creationDate:(id)a4 title:(id)a5 kind:(signed __int16)a6 clientBundleIdentifier:(id)a7 unitTestMode:(BOOL)a8 inPhotoLibrary:(id)a9
{
  v9 = a8;
  v11 = a6;
  v15 = a9;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [PLCollectionShare syncBackendForKind:v11 photoLibrary:v15];
  v21 = [v20 createOwnedShareWithUUID:v19 creationDate:v18 title:v17 inPhotoLibrary:v15];

  [v21 setCollectionShareKind:v11];
  [v21 setClientBundleIdentifier:v16];

  [v21 _insertOwnedParticipantInLibrary:v15 unitTestMode:v9];

  return v21;
}

+ (id)syncBackendForKind:(signed __int16)a3 photoLibrary:(id)a4
{
  v4 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = [a4 libraryServicesManager];
  v6 = [v5 collectionShareBackendForKind:v4];

  if (v6)
  {
    v7 = v6;
LABEL_9:
    v9 = v7;
    goto LABEL_10;
  }

  if (v4)
  {
    if (v4 == 2)
    {
      v8 = PLCollectionShareSharedStreamBackend;
      goto LABEL_8;
    }

    if (v4 == 1)
    {
      v8 = PLCollectionShareCPLBackend;
LABEL_8:
      v7 = objc_alloc_init(v8);
      goto LABEL_9;
    }
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Invalid Collection Share Kind Unknown", v13, 2u);
    }
  }

  v12 = PLBackendGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13[0] = 67109120;
    v13[1] = v4;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Invalid Collection Share Kind: %d", v13, 8u);
  }

  v9 = 0;
LABEL_10:

  return v9;
}

+ (id)scopeIdentifierPrefixInLibrary:(id)a3
{
  v5 = [a3 mainScopeIdentifier];
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLCollectionShare.m" lineNumber:72 description:@"Missing main scope identifier"];
  }

  v6 = CPLCollectionSharePrefixForScopeWithIdentifier();

  return v6;
}

@end