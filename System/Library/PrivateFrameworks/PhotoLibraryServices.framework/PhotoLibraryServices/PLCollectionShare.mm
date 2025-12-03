@interface PLCollectionShare
+ (id)createOwnedShareWithUUID:(id)d creationDate:(id)date title:(id)title kind:(signed __int16)kind clientBundleIdentifier:(id)identifier unitTestMode:(BOOL)mode inPhotoLibrary:(id)library;
+ (id)fetchCollectionSharesWithUUIDs:(id)ds propertiesToFetch:(id)fetch managedObjectContext:(id)context;
+ (id)insertOrUpdateShareWithCPLScopeChange:(id)change inPhotoLibrary:(id)library;
+ (id)isEligibleForSearchIndexingPredicateForLibraryIdentifier:(int64_t)identifier;
+ (id)propertiesToFetch;
+ (id)scopeIdentifierPrefixInLibrary:(id)library;
+ (id)syncBackendForKind:(signed __int16)kind photoLibrary:(id)library;
- (BOOL)_shouldUpdateLastModifiedDate;
- (BOOL)incrementallyDeleteAndSaveWithError:(id *)error;
- (BOOL)isCurrentUserOwner;
- (BOOL)isEligibleForSearchIndexing;
- (BOOL)isSyncableChange;
- (BOOL)locallyIncrementallyDeleteAndSaveWithError:(id *)error;
- (BOOL)supportsCloudUpload;
- (id)cplFullRecord;
- (id)cplScopeChange;
- (id)scopedIdentifier;
- (id)syncBackend;
- (void)_insertOwnedParticipantInLibrary:(id)library unitTestMode:(BOOL)mode;
- (void)acceptWithCompletionHandler:(id)handler;
- (void)checkServerForChanges;
- (void)declineWithCompletionHandler:(id)handler;
- (void)markAsViewed;
- (void)markPendingInvitationAsSpamWithCompletionHandler:(id)handler;
- (void)prepareForDeletion;
- (void)prioritizeDownloads:(BOOL)downloads;
- (void)publishAssets:(id)assets withComment:(id)comment;
- (void)publishWithCompletionHandler:(id)handler;
- (void)reconcileModelRelationshipsWithCompletionHandler:(id)handler;
- (void)removeShareParticipantUUIDs:(id)ds photoLibrary:(id)library;
- (void)sendInvitationsForShareParticipantUUIDs:(id)ds completionHandler:(id)handler;
- (void)setLastModifiedDate:(id)date;
- (void)trash;
- (void)unsubscribeWithCompletionHandler:(id)handler;
- (void)updateCollectionShareCurrentUserContributionStateIfNeeded;
- (void)updatePublicPermission:(int64_t)permission;
- (void)updatePublicURLState:(signed __int16)state;
- (void)updateTitle:(id)title;
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
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  v6 = [v4 isEligibleForSearchIndexingPredicateForLibraryIdentifier:{+[PLSpotlightDonationUtilities wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:](PLSpotlightDonationUtilities, "wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:", photoLibrary)}];
  v7 = [v6 evaluateWithObject:self];

  return v7;
}

+ (id)fetchCollectionSharesWithUUIDs:(id)ds propertiesToFetch:(id)fetch managedObjectContext:(id)context
{
  v7 = MEMORY[0x1E696AE18];
  contextCopy = context;
  fetchCopy = fetch;
  dsCopy = ds;
  dsCopy = [v7 predicateWithFormat:@"uuid IN %@", dsCopy];
  v12 = [dsCopy count];

  v13 = [(PLShare *)PLCollectionShare sharesWithPredicate:dsCopy fetchLimit:v12 includesPendingChanges:0 propertiesToFetch:fetchCopy inManagedObjectContext:contextCopy];

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

+ (id)isEligibleForSearchIndexingPredicateForLibraryIdentifier:(int64_t)identifier
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
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend markAsViewedForCollectionShare:self];
}

- (void)prioritizeDownloads:(BOOL)downloads
{
  downloadsCopy = downloads;
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend prioritizeDownloadsForCollectionShare:self shouldPrioritize:downloadsCopy];
}

- (void)reconcileModelRelationshipsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend reconcileModelRelationshipsForCollectionShare:self completionHandler:handlerCopy];
}

- (void)checkServerForChanges
{
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend checkServerForChangesForCollectionShare:self];
}

- (void)updateCollectionShareCurrentUserContributionStateIfNeeded
{
  currentUserParticipant = [(PLShare *)self currentUserParticipant];
  v3 = [currentUserParticipant permission] == 3;
  if ([(PLCollectionShare *)self collectionShareCurrentUserContributionState]!= v3)
  {
    [(PLCollectionShare *)self setCollectionShareCurrentUserContributionState:v3];
  }
}

- (BOOL)isCurrentUserOwner
{
  if ([(PLCollectionShare *)self collectionShareKind]== 2)
  {
    owner = [(PLShare *)self owner];
    uuid = [owner uuid];
    currentUserParticipant = [(PLShare *)self currentUserParticipant];
    uuid2 = [currentUserParticipant uuid];
    v7 = uuid == uuid2;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PLCollectionShare;
    return [(PLShare *)&v9 isCurrentUserOwner];
  }

  return v7;
}

- (void)sendInvitationsForShareParticipantUUIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  v9 = [PLShareParticipant participantsWithUUIDs:dsCopy inPhotoLibrary:photoLibrary];

  syncBackend = [(PLCollectionShare *)self syncBackend];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PLCollectionShare_sendInvitationsForShareParticipantUUIDs_completionHandler___block_invoke;
  v12[3] = &unk_1E7577430;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [syncBackend sendInvitationsForParticipants:v9 collectionShare:self completionHandler:v12];
}

- (void)removeShareParticipantUUIDs:(id)ds photoLibrary:(id)library
{
  v6 = [PLShareParticipant participantsWithUUIDs:ds inPhotoLibrary:library];
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend removeParticipants:v6 collectionShare:self];
}

- (void)markPendingInvitationAsSpamWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  syncBackend = [(PLCollectionShare *)self syncBackend];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PLCollectionShare_markPendingInvitationAsSpamWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7576050;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [syncBackend markPendingInvitationAsSpamForCollectionShare:self completionHandler:v7];
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

- (void)unsubscribeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  syncBackend = [(PLCollectionShare *)self syncBackend];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PLCollectionShare_unsubscribeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7576050;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [syncBackend unsubscribeFromCollectionShare:self completionHandler:v7];
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

- (void)declineWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  syncBackend = [(PLCollectionShare *)self syncBackend];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PLCollectionShare_declineWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7576050;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [syncBackend declineCollectionShare:self completionHandler:v7];
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

- (void)acceptWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PLCollectionShare *)self collectionShareKind]== 1)
  {
    v8.receiver = self;
    v8.super_class = PLCollectionShare;
    [(PLShare *)&v8 acceptWithCompletionHandler:handlerCopy];
  }

  else
  {
    syncBackend = [(PLCollectionShare *)self syncBackend];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__PLCollectionShare_acceptWithCompletionHandler___block_invoke;
    v6[3] = &unk_1E7577430;
    v7 = handlerCopy;
    [syncBackend acceptCollectionShare:self completionHandler:v6];
  }
}

- (void)_insertOwnedParticipantInLibrary:(id)library unitTestMode:(BOOL)mode
{
  modeCopy = mode;
  libraryCopy = library;
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend insertOwnedParticipantInLibrary:libraryCopy collectionShare:self unitTestMode:modeCopy];
}

- (void)publishAssets:(id)assets withComment:(id)comment
{
  commentCopy = comment;
  assetsCopy = assets;
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend publishAssets:assetsCopy withComment:commentCopy collectionShare:self];
}

- (void)setLastModifiedDate:(id)date
{
  dateCopy = date;
  if ([(PLCollectionShare *)self collectionShareKind]!= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShare.m" lineNumber:294 description:{@"setLastModifiedDate: should only be called on SharedStream collection shares. For CPL collection shares, lastModifiedDate is automatically managed"}];
  }

  lastModifiedDate = [(PLCollectionShare *)self lastModifiedDate];
  if (!lastModifiedDate || (v6 = lastModifiedDate, -[PLCollectionShare lastModifiedDate](self, "lastModifiedDate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [dateCopy compare:v7], v7, v6, v8 == 1))
  {
    [(PLManagedObject *)self pl_safeSetValue:dateCopy forKey:@"lastModifiedDate" valueDidChangeHandler:0];
  }
}

- (void)updatePublicURLState:(signed __int16)state
{
  stateCopy = state;
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend updatePublicURLState:stateCopy collectionShare:self];
}

- (void)updatePublicPermission:(int64_t)permission
{
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend updatePublicPermission:permission collectionShare:self];
}

- (void)updateTitle:(id)title
{
  titleCopy = title;
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend updateTitle:titleCopy collectionShare:self];
}

- (BOOL)locallyIncrementallyDeleteAndSaveWithError:(id *)error
{
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend deleteCollectionShareDirectory:self];

  v7.receiver = self;
  v7.super_class = PLCollectionShare;
  return [(PLShare *)&v7 incrementallyDeleteAndSaveWithError:error];
}

- (BOOL)incrementallyDeleteAndSaveWithError:(id *)error
{
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend deleteCollectionShareFromServer:self];

  return [(PLCollectionShare *)self locallyIncrementallyDeleteAndSaveWithError:error];
}

- (void)trash
{
  syncBackend = [(PLCollectionShare *)self syncBackend];
  [syncBackend trashCollectionShare:self];
}

- (void)publishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  syncBackend = [(PLCollectionShare *)self syncBackend];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PLCollectionShare_publishWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E756C308;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [syncBackend publishCollectionShare:self completionHandler:v7];
}

- (id)cplScopeChange
{
  syncBackend = [(PLCollectionShare *)self syncBackend];
  v4 = [syncBackend cplScopeChangeForCollectionShare:self];

  return v4;
}

- (BOOL)supportsCloudUpload
{
  selfCopy = self;
  syncBackend = [(PLCollectionShare *)self syncBackend];
  LOBYTE(selfCopy) = [syncBackend supportsCloudUploadForCollectionShare:selfCopy];

  return selfCopy;
}

- (BOOL)isSyncableChange
{
  selfCopy = self;
  syncBackend = [(PLCollectionShare *)self syncBackend];
  LOBYTE(selfCopy) = [syncBackend isSyncableChangeForCollectionShare:selfCopy];

  return selfCopy;
}

- (id)scopedIdentifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShare.m" lineNumber:227 description:{@"%@ are synchronized as scope changes and don't have a scoped identifier", objc_opt_class()}];

  return 0;
}

- (id)cplFullRecord
{
  syncBackend = [(PLCollectionShare *)self syncBackend];
  v4 = [syncBackend cplFullRecordForCollectionShare:self];

  return v4;
}

- (BOOL)_shouldUpdateLastModifiedDate
{
  if ([(PLCollectionShare *)self collectionShareKind]!= 1)
  {
    return 0;
  }

  changedValues = [(PLCollectionShare *)self changedValues];
  if ([changedValues count] && (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"lastModifiedDate"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v6 = MEMORY[0x1E695DFD8];
    allKeys = [changedValues allKeys];
    v8 = [v6 setWithArray:allKeys];

    _listOfLastModifiedDateChangeProperties = [(PLCollectionShare *)self _listOfLastModifiedDateChangeProperties];
    v5 = [v8 intersectsSet:_listOfLastModifiedDateChangeProperties];
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
  managedObjectContext = [(PLCollectionShare *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [PLDelayedSearchIndexUpdates recordCollectionShareIfNeeded:self];
    if (([managedObjectContext mergingChanges] & 1) == 0)
    {
      syncBackend = [(PLCollectionShare *)self syncBackend];
      v5 = syncBackend;
      if (syncBackend)
      {
        [syncBackend recordCloudDeletionIfNeededForCollectionShare:self];
        delayedSaveActions = [managedObjectContext delayedSaveActions];
        [delayedSaveActions recordCollectionShareForCloudFeedUpdate:self];
      }
    }
  }
}

- (void)willSave
{
  v6.receiver = self;
  v6.super_class = PLCollectionShare;
  [(PLManagedObject *)&v6 willSave];
  managedObjectContext = [(PLCollectionShare *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delayedSaveActions = [managedObjectContext delayedSaveActions];
    [delayedSaveActions recordCollectionShareForCloudFeedUpdate:self];

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
    collectionShareKind = [(PLCollectionShare *)self collectionShareKind];
    photoLibrary = [(PLManagedObject *)self photoLibrary];
    v6 = [PLCollectionShare syncBackendForKind:collectionShareKind photoLibrary:photoLibrary];
    v7 = self->_syncBackend;
    self->_syncBackend = v6;

    syncBackend = self->_syncBackend;
  }

  return syncBackend;
}

+ (id)insertOrUpdateShareWithCPLScopeChange:(id)change inPhotoLibrary:(id)library
{
  v4 = [PLCollectionShareCPLBackend insertOrUpdateShareWithCPLScopeChange:change inPhotoLibrary:library];
  [v4 setCollectionShareKind:1];

  return v4;
}

+ (id)createOwnedShareWithUUID:(id)d creationDate:(id)date title:(id)title kind:(signed __int16)kind clientBundleIdentifier:(id)identifier unitTestMode:(BOOL)mode inPhotoLibrary:(id)library
{
  modeCopy = mode;
  kindCopy = kind;
  libraryCopy = library;
  identifierCopy = identifier;
  titleCopy = title;
  dateCopy = date;
  dCopy = d;
  v20 = [PLCollectionShare syncBackendForKind:kindCopy photoLibrary:libraryCopy];
  v21 = [v20 createOwnedShareWithUUID:dCopy creationDate:dateCopy title:titleCopy inPhotoLibrary:libraryCopy];

  [v21 setCollectionShareKind:kindCopy];
  [v21 setClientBundleIdentifier:identifierCopy];

  [v21 _insertOwnedParticipantInLibrary:libraryCopy unitTestMode:modeCopy];

  return v21;
}

+ (id)syncBackendForKind:(signed __int16)kind photoLibrary:(id)library
{
  kindCopy = kind;
  v14 = *MEMORY[0x1E69E9840];
  libraryServicesManager = [library libraryServicesManager];
  v6 = [libraryServicesManager collectionShareBackendForKind:kindCopy];

  if (v6)
  {
    v7 = v6;
LABEL_9:
    v9 = v7;
    goto LABEL_10;
  }

  if (kindCopy)
  {
    if (kindCopy == 2)
    {
      v8 = PLCollectionShareSharedStreamBackend;
      goto LABEL_8;
    }

    if (kindCopy == 1)
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
    v13[1] = kindCopy;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Invalid Collection Share Kind: %d", v13, 8u);
  }

  v9 = 0;
LABEL_10:

  return v9;
}

+ (id)scopeIdentifierPrefixInLibrary:(id)library
{
  mainScopeIdentifier = [library mainScopeIdentifier];
  if (!mainScopeIdentifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShare.m" lineNumber:72 description:@"Missing main scope identifier"];
  }

  v6 = CPLCollectionSharePrefixForScopeWithIdentifier();

  return v6;
}

@end