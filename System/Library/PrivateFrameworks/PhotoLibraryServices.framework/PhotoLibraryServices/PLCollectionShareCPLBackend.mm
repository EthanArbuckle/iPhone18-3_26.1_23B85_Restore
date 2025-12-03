@interface PLCollectionShareCPLBackend
+ (BOOL)shouldAllowFetchURLWithScopeChange:(id)change photoLibrary:(id)library error:(id *)error;
+ (id)insertOrUpdateShareWithCPLScopeChange:(id)change inPhotoLibrary:(id)library;
- (BOOL)isSyncableChangeForCollectionShare:(id)share;
- (BOOL)supportsCloudUploadForCollectionShare:(id)share;
- (id)_listOfSyncedProperties;
- (id)cplScopeChangeForCollectionShare:(id)share;
- (id)createOwnedShareWithUUID:(id)d creationDate:(id)date title:(id)title inPhotoLibrary:(id)library;
- (void)declineCollectionShare:(id)share completionHandler:(id)handler;
- (void)insertOwnedParticipantInLibrary:(id)library collectionShare:(id)share unitTestMode:(BOOL)mode;
- (void)publishCollectionShare:(id)share completionHandler:(id)handler;
- (void)sendInvitationsForParticipants:(id)participants collectionShare:(id)share completionHandler:(id)handler;
- (void)trashCollectionShare:(id)share;
@end

@implementation PLCollectionShareCPLBackend

+ (BOOL)shouldAllowFetchURLWithScopeChange:(id)change photoLibrary:(id)library error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  scopeType = [change scopeType];
  if (scopeType == 7)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E69BFF48];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = @"Not allowed to url fetch owned CollectionShares";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v7 errorWithDomain:v8 code:81001 userInfo:v9];
    if (error)
    {
      v10 = v10;
      *error = v10;
    }
  }

  return scopeType != 7;
}

+ (id)insertOrUpdateShareWithCPLScopeChange:(id)change inPhotoLibrary:(id)library
{
  v34 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  libraryCopy = library;
  scopeIdentifier = [changeCopy scopeIdentifier];
  managedObjectContext = [libraryCopy managedObjectContext];
  v9 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:scopeIdentifier includeTrashed:1 inManagedObjectContext:managedObjectContext];

  if ([(PLShare *)PLCollectionShare validateCPLScopeChange:changeCopy])
  {
    if (!v9)
    {
      v10 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = scopeIdentifier;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Creating collection share with scope identifier %@", buf, 0xCu);
      }

      v9 = [(PLShare *)PLCollectionShare insertInPhotoLibrary:libraryCopy];
      [v9 setStatus:2];
      [v9 setScopeIdentifier:scopeIdentifier];
      title = [changeCopy title];
      [v9 setTitle:title];
    }

    v12 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      uuid = [v9 uuid];
      *buf = 138412546;
      *&buf[4] = uuid;
      *&buf[12] = 2112;
      *&buf[14] = changeCopy;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "Updating library scope %@ with CPLlibraryScopeScopeChange %@", buf, 0x16u);
    }

    scopeType = [changeCopy scopeType];
    v15 = scopeType;
    v16 = 0;
    if (scopeType <= 9)
    {
      if (((1 << scopeType) & 0x23F) != 0)
      {
        v17 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = changeCopy;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Unexpected scopeType for library scope from scopeChange %@", buf, 0xCu);
        }

        v16 = 0;
      }

      else if (((1 << scopeType) & 0x180) != 0)
      {
        v16 = 2;
      }
    }

    [v9 setScopeType:v15];
    [v9 setLocalPublishState:v16];
    share = [changeCopy share];
    if (share)
    {
      [v9 updateShareWithCPLShare:share inPhotoLibrary:libraryCopy];
      creationDate = [share creationDate];
      [v9 setCreationDate:creationDate];
    }

    else
    {
      creationDate = PLBackendSharingGetLog();
      if (os_log_type_enabled(creationDate, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = changeCopy;
        _os_log_impl(&dword_19BF1F000, creationDate, OS_LOG_TYPE_ERROR, "CPLShare missing on scopeChange %@", buf, 0xCu);
      }
    }

    assetCountPerType = [changeCopy assetCountPerType];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v33 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __84__PLCollectionShareCPLBackend_insertOrUpdateShareWithCPLScopeChange_inPhotoLibrary___block_invoke;
    v23[3] = &unk_1E7572BD8;
    v23[4] = buf;
    v23[5] = &v28;
    v23[6] = &v24;
    [assetCountPerType enumerateKeysAndObjectsUsingBlock:v23];
    [v9 setCloudPhotoCount:*(*&buf[8] + 24)];
    [v9 setCloudVideoCount:*(v29 + 6)];
    [v9 setCloudItemCount:*(v25 + 6)];
    v9 = v9;
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(buf, 8);

    v18 = v9;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __84__PLCollectionShareCPLBackend_insertOrUpdateShareWithCPLScopeChange_inPhotoLibrary___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:a2];
  if ([v5 conformsToType:*MEMORY[0x1E6982E30]])
  {
    v6 = [v9 integerValue];
    v7 = a1[4];
  }

  else
  {
    v8 = [v5 conformsToType:*MEMORY[0x1E6982EE8]];
    v6 = [v9 integerValue];
    if (v8)
    {
      v7 = a1[5];
    }

    else
    {
      v7 = a1[6];
    }
  }

  *(*(v7 + 8) + 24) += v6;
}

- (id)_listOfSyncedProperties
{
  pl_dispatch_once();
  v2 = _listOfSyncedProperties_result;

  return v2;
}

void __54__PLCollectionShareCPLBackend__listOfSyncedProperties__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"title", @"localPublishState", @"trashedState", 0}];
  v1 = _listOfSyncedProperties_result;
  _listOfSyncedProperties_result = v0;
}

- (void)sendInvitationsForParticipants:(id)participants collectionShare:(id)share completionHandler:(id)handler
{
  participantsCopy = participants;
  shareCopy = share;
  handlerCopy = handler;
  _PFAssertFailHandler();
  JUMPOUT(0x19C437BFCLL);
}

- (void)declineCollectionShare:(id)share completionHandler:(id)handler
{
  shareCopy = share;
  handlerCopy = handler;
  _PFAssertFailHandler();
  JUMPOUT(0x19C437C44);
}

- (void)insertOwnedParticipantInLibrary:(id)library collectionShare:(id)share unitTestMode:(BOOL)mode
{
  v26[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  shareCopy = share;
  v9 = +[PLAccountStore pl_sharedAccountStore];
  cachedPrimaryAppleAccount = [v9 cachedPrimaryAppleAccount];
  v11 = cachedPrimaryAppleAccount;
  if (mode)
  {
    username = @"owner@unittest.com";
    goto LABEL_5;
  }

  if (!cachedPrimaryAppleAccount)
  {
    username = PLBackendSharingGetLog();
    if (!os_log_type_enabled(username, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    compactDescription = [shareCopy compactDescription];
    v22 = 138412290;
    v23 = compactDescription;
    _os_log_impl(&dword_19BF1F000, username, OS_LOG_TYPE_ERROR, "Failed to fetch account store to insert owner participant into collection share %@", &v22, 0xCu);
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  username = [cachedPrimaryAppleAccount username];
  if (username)
  {
LABEL_5:
    managedObjectContext = [libraryCopy managedObjectContext];
    compactDescription = [PLShareParticipant insertInManagedObjectContext:managedObjectContext];

    [compactDescription setEmailAddress:username];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [compactDescription setUuid:uUIDString];

    [compactDescription setIsCurrentUser:1];
    [compactDescription setRole:1];
    [compactDescription setPermission:3];
    [compactDescription setParticipantKind:0];
    v17 = MEMORY[0x1E695DFD8];
    v26[0] = compactDescription;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v19 = [v17 setWithArray:v18];
    [shareCopy setParticipants:v19];

    v20 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      compactDescription2 = [shareCopy compactDescription];
      v22 = 138412546;
      v23 = compactDescription;
      v24 = 2112;
      v25 = compactDescription2;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Inserted owner participant %@ into collection share %@", &v22, 0x16u);
    }

    goto LABEL_8;
  }

LABEL_10:
}

- (void)trashCollectionShare:(id)share
{
  shareCopy = share;
  [shareCopy recordTrashDate];
  [shareCopy recordCloudDeletionIfNeeded];
}

- (void)publishCollectionShare:(id)share completionHandler:(id)handler
{
  v34[1] = *MEMORY[0x1E69E9840];
  shareCopy = share;
  handlerCopy = handler;
  photoLibrary = [shareCopy photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];
  cloudPhotoLibraryManager = [libraryServicesManager cloudPhotoLibraryManager];

  if (cloudPhotoLibraryManager)
  {
    localPublishState = [shareCopy localPublishState];
    v11 = PLBackendSharingGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (localPublishState == 2)
    {
      if (v12)
      {
        compactDescription = [shareCopy compactDescription];
        *buf = 138412290;
        v32 = compactDescription;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Updating Collection Share since it's already published %@", buf, 0xCu);
      }

      cplScopeChange = [shareCopy cplScopeChange];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke;
      v26[3] = &unk_1E7572C00;
      v27 = cloudPhotoLibraryManager;
      v28 = photoLibrary;
      v29 = shareCopy;
      v30 = handlerCopy;
      [v27 updateLibraryScopeWithCPLScopeChange:cplScopeChange completionHandler:v26];

      v15 = v27;
    }

    else
    {
      if (v12)
      {
        compactDescription2 = [shareCopy compactDescription];
        *buf = 138412290;
        v32 = compactDescription2;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Publishing Collection Share %@", buf, 0xCu);
      }

      [shareCopy setLocalPublishState:1];
      cplScopeChange2 = [shareCopy cplScopeChange];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke_41;
      v21[3] = &unk_1E7572C00;
      v22 = cloudPhotoLibraryManager;
      v23 = photoLibrary;
      v24 = shareCopy;
      v25 = handlerCopy;
      [v22 publishCPLScopeChange:cplScopeChange2 completionHandler:v21];

      v15 = v22;
    }
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E69BFF48];
    v33 = *MEMORY[0x1E696A578];
    v34[0] = @"PLCloudPhotoLibraryManager is not available";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v18 = [v16 errorWithDomain:v17 code:41004 userInfo:v15];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v18);
  }
}

void __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 share];
  v8 = [v7 URL];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7572C28;
  v9 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = v6;
  v18 = *(a1 + 48);
  v19 = v7;
  v10 = *(a1 + 56);
  v21 = v5;
  v22 = v10;
  v20 = v8;
  v11 = v5;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  [v9 performTransactionOnLibraryScopeSynchronizationQueue:v15];
}

void __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 share];
  v8 = [v7 URL];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke_2_42;
  v15[3] = &unk_1E7572C28;
  v9 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = v6;
  v18 = *(a1 + 48);
  v19 = v8;
  v20 = v7;
  v10 = *(a1 + 56);
  v21 = v5;
  v22 = v10;
  v11 = v5;
  v12 = v7;
  v13 = v8;
  v14 = v6;
  [v9 performTransactionOnLibraryScopeSynchronizationQueue:v15];
}

void __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke_2_42(id *a1)
{
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke_3_43;
  v14[3] = &unk_1E75730F8;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v15 = v8;
  v16 = v7;
  v17 = a1[4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke_44;
  v9[3] = &unk_1E7573C00;
  v13 = a1[10];
  v10 = a1[7];
  v11 = a1[9];
  v12 = a1[5];
  [v2 performTransactionAndWait:v14 completionHandler:v9];
}

void __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke_3_43(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    [*(a1 + 40) setLocalPublishState:3];
    v2 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 40) compactDescription];
      v4 = *(a1 + 32);
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Failed to publish library scope %@: %@", &v8, 0x16u);
    }
  }

  else
  {
    if (!*(a1 + 48))
    {
      v5 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = [*(a1 + 40) compactDescription];
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Missing shareURL after publishing collection share %@", &v8, 0xCu);
      }
    }

    [*(a1 + 40) updateShareWithCPLShare:*(a1 + 56) inPhotoLibrary:*(a1 + 64)];
    [*(a1 + 40) setLocalPublishState:2];
    v2 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) compactDescription];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "Published collection share %@", &v8, 0xCu);
    }
  }
}

void __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke_2(id *a1)
{
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke_3;
  v14[3] = &unk_1E7578100;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[4];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v15 = v8;
  v16 = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke_39;
  v9[3] = &unk_1E7573C00;
  v13 = a1[10];
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[5];
  [v2 performTransactionAndWait:v14 completionHandler:v9];
}

void __72__PLCollectionShareCPLBackend_publishCollectionShare_completionHandler___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 40) compactDescription];
      v4 = *(a1 + 32);
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Failed to update Collection Share %@: %@", &v6, 0x16u);
    }
  }

  else
  {
    [*(a1 + 40) updateShareWithCPLShare:*(a1 + 48) inPhotoLibrary:*(a1 + 56)];
    v2 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 40) compactDescription];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "Updated Collection Share %@", &v6, 0xCu);
    }
  }
}

- (id)cplScopeChangeForCollectionShare:(id)share
{
  v13 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  if (_os_feature_enabled_impl())
  {
    scopeIdentifier = [shareCopy scopeIdentifier];
    if (scopeIdentifier)
    {
      v5 = [MEMORY[0x1E6994A90] newScopeChangeWithScopeIdentifier:scopeIdentifier type:{objc_msgSend(shareCopy, "scopeType")}];
      cplShare = [shareCopy cplShare];
      [v5 setShare:cplShare];
      title = [shareCopy title];
      [v5 setTitle:title];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v8 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      scopeIdentifier2 = [shareCopy scopeIdentifier];
      v11 = 138412290;
      v12 = scopeIdentifier2;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Not pushing CollectionShare scope %@ as FF is disabled", &v11, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)supportsCloudUploadForCollectionShare:(id)share
{
  shareCopy = share;
  v4 = [shareCopy status] == 1 && objc_msgSend(shareCopy, "localPublishState") == 2 || objc_msgSend(shareCopy, "status") == 3 && objc_msgSend(shareCopy, "localPublishState") == 2;

  return v4;
}

- (BOOL)isSyncableChangeForCollectionShare:(id)share
{
  v16 = *MEMORY[0x1E69E9840];
  changedValues = [share changedValues];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _listOfSyncedProperties = [(PLCollectionShareCPLBackend *)self _listOfSyncedProperties];
  v6 = [_listOfSyncedProperties countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(_listOfSyncedProperties);
        }

        v9 = [changedValues objectForKey:*(*(&v11 + 1) + 8 * i)];

        if (v9)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [_listOfSyncedProperties countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)createOwnedShareWithUUID:(id)d creationDate:(id)date title:(id)title inPhotoLibrary:(id)library
{
  v6 = [(PLShare *)PLCollectionShare createOwnedShareWithUUID:d creationDate:date title:title inPhotoLibrary:library];
  [v6 setPublicPermission:1];
  [v6 setScopeType:7];
  [v6 setCustomSortAscending:0];

  return v6;
}

@end