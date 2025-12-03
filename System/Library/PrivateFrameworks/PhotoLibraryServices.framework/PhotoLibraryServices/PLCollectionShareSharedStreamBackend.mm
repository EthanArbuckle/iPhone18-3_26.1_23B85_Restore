@interface PLCollectionShareSharedStreamBackend
- (BOOL)_hasReachedLimitOfSubscribedStreamsInLibrary:(id)library;
- (BOOL)canAcceptPendingInvitationForCollectionShare:(id)share error:(id *)error;
- (BOOL)isSyncableChangeForCollectionShare:(id)share;
- (BOOL)supportsCloudUploadForCollectionShare:(id)share;
- (id)_sharedStreamCollectionShareDirectoryPathForCollectionShare:(id)share;
- (id)cplFullRecordForCollectionShare:(id)share;
- (id)cplScopeChangeForCollectionShare:(id)share;
- (id)createOwnedShareWithUUID:(id)d creationDate:(id)date title:(id)title inPhotoLibrary:(id)library;
- (void)_enqueueCloudSharedAssetsForPublishToServer:(id)server inCollectionShare:(id)share;
- (void)_reconcileNextRelationship:(id)relationship connection:(id)connection personID:(id)d collectionShare:(id)share photoLibrary:(id)library completionHandler:(id)handler;
- (void)_setCloudPersonIDForCollectionShare:(id)share;
- (void)_stripScopeIdentifierPrefixForCollectionShare:(id)share;
- (void)acceptCollectionShare:(id)share completionHandler:(id)handler;
- (void)checkServerForChangesForCollectionShare:(id)share;
- (void)declineCollectionShare:(id)share completionHandler:(id)handler;
- (void)deleteCollectionShareDirectory:(id)directory;
- (void)deleteCollectionShareFromServer:(id)server;
- (void)deleteCommentWithGUIDFromServer:(id)server;
- (void)deleteSharedStreamAssetsFromServer:(id)server;
- (void)insertOwnedParticipantInLibrary:(id)library collectionShare:(id)share unitTestMode:(BOOL)mode;
- (void)markAsViewedForCollectionShare:(id)share;
- (void)markPendingInvitationAsSpamForCollectionShare:(id)share completionHandler:(id)handler;
- (void)prioritizeDownloadsForCollectionShare:(id)share shouldPrioritize:(BOOL)prioritize;
- (void)publishAssets:(id)assets withComment:(id)comment collectionShare:(id)share;
- (void)publishCloudSharedCommentToServer:(id)server;
- (void)publishCollectionShare:(id)share completionHandler:(id)handler;
- (void)reconcileModelRelationshipsForCollectionShare:(id)share completionHandler:(id)handler;
- (void)recordCloudDeletionIfNeededForCollectionShare:(id)share;
- (void)removeParticipants:(id)participants collectionShare:(id)share;
- (void)sendInvitationsForParticipants:(id)participants collectionShare:(id)share completionHandler:(id)handler;
- (void)trashCollectionShare:(id)share;
- (void)unsubscribeFromCollectionShare:(id)share completionHandler:(id)handler;
- (void)updatePublicPermission:(int64_t)permission collectionShare:(id)share;
- (void)updatePublicURLState:(signed __int16)state collectionShare:(id)share;
- (void)updateTitle:(id)title collectionShare:(id)share;
@end

@implementation PLCollectionShareSharedStreamBackend

- (id)_sharedStreamCollectionShareDirectoryPathForCollectionShare:(id)share
{
  v22 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  scopeIdentifier = [shareCopy scopeIdentifier];
  if (([scopeIdentifier hasPrefix:@"FS-"] & 1) != 0 || (v5 = scopeIdentifier, objc_msgSend(scopeIdentifier, "hasPrefix:", @"fs-")))
  {
    v5 = [scopeIdentifier substringFromIndex:3];
  }

  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  if (v6)
  {
    cloudPersonID = [shareCopy cloudPersonID];
    managedObjectContext = [shareCopy managedObjectContext];
    pathManager = [managedObjectContext pathManager];
    v10 = [pathManager photoDirectoryWithType:23];

    if ([cloudPersonID length])
    {
      if (cloudPersonID)
      {
LABEL_7:
        v11 = [v10 stringByAppendingPathComponent:cloudPersonID];
        v12 = [v11 stringByAppendingPathComponent:scopeIdentifier];

LABEL_13:
        goto LABEL_14;
      }
    }

    else
    {
      v15 = [v10 stringByAppendingPathComponent:@"personID"];
      v16 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:v15 encoding:4 error:0];

      cloudPersonID = v16;
      if (v16)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    goto LABEL_13;
  }

  v13 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    uuid = [shareCopy uuid];
    v18 = 138412546;
    v19 = scopeIdentifier;
    v20 = 2112;
    v21 = uuid;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Invalid scopeIdentifier (%@) for sharedstream collection share (uuid: %@)", &v18, 0x16u);
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (void)_setCloudPersonIDForCollectionShare:(id)share
{
  shareCopy = share;
  v4 = +[PLPhotoSharingHelper sharingPersonID];
  [shareCopy setCloudPersonID:v4];
}

- (void)_stripScopeIdentifierPrefixForCollectionShare:(id)share
{
  shareCopy = share;
  scopeIdentifier = [shareCopy scopeIdentifier];
  v4 = [scopeIdentifier substringFromIndex:17];
  [shareCopy setScopeIdentifier:v4];
}

- (void)markAsViewedForCollectionShare:(id)share
{
  v18 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:919 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  isUnitTesting = [photoLibrary isUnitTesting];

  if ((isUnitTesting & 1) == 0)
  {
    scopeIdentifier = [shareCopy scopeIdentifier];
    if (scopeIdentifier)
    {
      v9 = scopeIdentifier;
      v10 = +[PLPhotoSharingHelper sharingPersonID];
      if (v10)
      {
        mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
        v12 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v15 = v9;
          v16 = 2112;
          v17 = v10;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "about to call connection markAlbumGUIDAsViewed:%@ personID:%@ moveLastViewedAssetCollectionMarker:YES info:nil", buf, 0x16u);
        }

        [mEMORY[0x1E69B14F8] markAlbumGUIDAsViewed:v9 personID:v10 moveLastViewedAssetCollectionMarker:1 info:0];
      }
    }
  }
}

- (void)prioritizeDownloadsForCollectionShare:(id)share shouldPrioritize:(BOOL)prioritize
{
  prioritizeCopy = prioritize;
  v23 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:899 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  isUnitTesting = [photoLibrary isUnitTesting];

  if ((isUnitTesting & 1) == 0)
  {
    v10 = +[PLPhotoSharingHelper sharingPersonID];
    if (v10)
    {
      v11 = v10;
      mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
      v13 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        scopeIdentifier = [shareCopy scopeIdentifier];
        *buf = 138412546;
        v20 = scopeIdentifier;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "about to call connection setFocusAlbum:%@ personID:%@", buf, 0x16u);
      }

      album = [MEMORY[0x1E6997F88] album];
      scopeIdentifier2 = [shareCopy scopeIdentifier];
      [album setGUID:scopeIdentifier2];

      if (prioritizeCopy)
      {
        v17 = album;
      }

      else
      {
        v17 = 0;
      }

      [mEMORY[0x1E69B14F8] setFocusAlbum:v17 forPersonID:v11];
    }
  }
}

- (void)_reconcileNextRelationship:(id)relationship connection:(id)connection personID:(id)d collectionShare:(id)share photoLibrary:(id)library completionHandler:(id)handler
{
  relationshipCopy = relationship;
  connectionCopy = connection;
  dCopy = d;
  shareCopy = share;
  libraryCopy = library;
  handlerCopy = handler;
  nextObject = [relationshipCopy nextObject];
  if (nextObject)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __134__PLCollectionShareSharedStreamBackend__reconcileNextRelationship_connection_personID_collectionShare_photoLibrary_completionHandler___block_invoke;
    v21[3] = &unk_1E756A670;
    v22 = libraryCopy;
    v23 = shareCopy;
    selfCopy = self;
    v25 = relationshipCopy;
    v26 = connectionCopy;
    v27 = dCopy;
    v28 = handlerCopy;
    [v26 accessControlWithGUID:nextObject personID:v27 completionBlock:v21];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

void __134__PLCollectionShareSharedStreamBackend__reconcileNextRelationship_connection_personID_collectionShare_photoLibrary_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __134__PLCollectionShareSharedStreamBackend__reconcileNextRelationship_connection_personID_collectionShare_photoLibrary_completionHandler___block_invoke_2;
  v17[3] = &unk_1E75761B8;
  v18 = v3;
  v19 = v4;
  v20 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __134__PLCollectionShareSharedStreamBackend__reconcileNextRelationship_connection_personID_collectionShare_photoLibrary_completionHandler___block_invoke_115;
  v11[3] = &unk_1E7572C28;
  v10 = *(a1 + 48);
  v5 = *(&v10 + 1);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = *(a1 + 80);
  v9 = v3;
  [v19 performTransactionAndWait:v17 completionHandler:v11];
}

void __134__PLCollectionShareSharedStreamBackend__reconcileNextRelationship_connection_personID_collectionShare_photoLibrary_completionHandler___block_invoke_2(id *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] GUID];
  v16[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v4 = [PLShareParticipant participantsWithParticipantIDs:v3 inPhotoLibrary:a1[5]];
  v5 = [v4 firstObject];

  if (!v5)
  {
    if (a1[6])
    {
      v6 = [a1[4] personID];
      v5 = [PLShareParticipant participantWithHashedPersonID:v6 inCollectionShare:a1[6]];
    }

    else
    {
      v5 = 0;
    }
  }

  if (a1[6] && ([a1[4] albumGUID], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1[6], "scopeIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) != 0))
  {
    if (!v5)
    {
      v10 = [a1[5] managedObjectContext];
      v5 = [PLShareParticipant insertInManagedObjectContext:v10];

      [v5 setParticipantKind:1];
      v11 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "inserting new PLShareParticipant", &v14, 2u);
      }
    }

    [v5 updateWithMSASRelationship:a1[4] withCollectionShare:a1[6]];
    [v5 reconcileAssetRelationshipsWithSharedStreamCollectionShare:a1[6]];
    [v5 reconcileCommentRelationshipsWithSharedStreamCollectionShare:a1[6]];
  }

  else
  {
    v12 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [a1[4] albumGUID];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "WARNING: couldn't find sharedstream collection share with scopeidentifier %@ to set sharingRelationship", &v14, 0xCu);
    }
  }
}

- (void)reconcileModelRelationshipsForCollectionShare:(id)share completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  handlerCopy = handler;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:834 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  isUnitTesting = [photoLibrary isUnitTesting];

  if (isUnitTesting)
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    v11 = +[PLPhotoSharingHelper sharingPersonID];
    if (v11)
    {
      v12 = v11;
      scopeIdentifier = [shareCopy scopeIdentifier];
      mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
      photoLibrary2 = [shareCopy photoLibrary];
      v16 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = scopeIdentifier;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "about to call connection accessControlGUIDsForAlbumWithGUID:%@ personID:%@", buf, 0x16u);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __104__PLCollectionShareSharedStreamBackend_reconcileModelRelationshipsForCollectionShare_completionHandler___block_invoke;
      v21[3] = &unk_1E756A648;
      v21[4] = self;
      v22 = mEMORY[0x1E69B14F8];
      v23 = v12;
      v24 = shareCopy;
      v25 = photoLibrary2;
      v26 = handlerCopy;
      v17 = photoLibrary2;
      v18 = v12;
      v19 = mEMORY[0x1E69B14F8];
      [v19 accessControlGUIDsForAlbumWithGUID:scopeIdentifier personID:v18 completionBlock:v21];
    }
  }
}

void __104__PLCollectionShareSharedStreamBackend_reconcileModelRelationshipsForCollectionShare_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectEnumerator];
  [*(a1 + 32) _reconcileNextRelationship:v3 connection:*(a1 + 40) personID:*(a1 + 48) collectionShare:*(a1 + 56) photoLibrary:*(a1 + 64) completionHandler:*(a1 + 72)];
}

- (void)checkServerForChangesForCollectionShare:(id)share
{
  v34 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:772 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  isUnitTesting = [photoLibrary isUnitTesting];

  if ((isUnitTesting & 1) == 0)
  {
    v8 = +[PLPhotoSharingHelper sharingPersonID];
    if (v8)
    {
      v9 = v8;
      scopeIdentifier = [shareCopy scopeIdentifier];
      dictionary = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:@"/tmp/_pollStreams.plist"];
      if (!dictionary)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      v12 = [dictionary objectForKey:scopeIdentifier];
      if (!v12 || ([MEMORY[0x1E695DF00] date], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "compare:", v13), v13, v14 == -1))
      {
        v16 = MEMORY[0x1E695DF00];
        [(PLCollectionShareSharedStreamBackend *)self _intervalBetweenAlbumPolls];
        v15 = [v16 dateWithTimeIntervalSinceNow:?];

        if (v15)
        {
          [dictionary setObject:v15 forKey:scopeIdentifier];
          v17 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:100 options:0 error:0];
          v18 = [v17 writeToFile:@"/tmp/_pollStreams.plist" options:1073741825 error:0];
          v19 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v29 = dictionary;
            v30 = 2112;
            v31 = @"/tmp/_pollStreams.plist";
            v32 = 1024;
            v33 = v18;
            _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, " saved pollStreamsDate %@ to path %@ success %d", buf, 0x1Cu);
          }
        }

        v20 = [MEMORY[0x1E69BF360] transaction:"-[PLCollectionShareSharedStreamBackend checkServerForChangesForCollectionShare:]"];
        v21 = dispatch_get_global_queue(0, 0);
        v24 = scopeIdentifier;
        v25 = v9;
        v26 = shareCopy;
        v27 = v20;
        v22 = v20;
        pl_dispatch_async();
      }

      else
      {
        v15 = v12;
      }
    }
  }
}

void __80__PLCollectionShareSharedStreamBackend_checkServerForChangesForCollectionShare___block_invoke(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69B14F8] sharedConnection];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v5 = a1[5];
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "about to call connection assetCollectionGUIDsInAlbumWithGUID:%@ personID:%@", buf, 0x16u);
  }

  v6 = a1[4];
  v7 = a1[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PLCollectionShareSharedStreamBackend_checkServerForChangesForCollectionShare___block_invoke_105;
  v9[3] = &unk_1E756A620;
  v10 = a1[6];
  v11 = v2;
  v12 = a1[5];
  v13 = a1[4];
  v14 = a1[7];
  v8 = v2;
  [v8 assetCollectionGUIDsInAlbumWithGUID:v6 personID:v7 completionBlock:v9];
}

void __80__PLCollectionShareSharedStreamBackend_checkServerForChangesForCollectionShare___block_invoke_105(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] photoLibrary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__PLCollectionShareSharedStreamBackend_checkServerForChangesForCollectionShare___block_invoke_2;
  v12[3] = &unk_1E75768C8;
  v13 = v3;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v16 = a1[8];
  v11 = v3;
  [v4 performBlock:v12];
}

void __80__PLCollectionShareSharedStreamBackend_checkServerForChangesForCollectionShare___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  v3 = [*(a1 + 40) collectionShareAssets];
  v4 = [v3 count];

  if (v2 != v4)
  {
    v5 = [*(a1 + 40) collectionShareAssets];
    v6 = [v5 valueForKey:@"cloudAssetGUID"];

    v7 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 32)];
    v22 = v6;
    [v7 minusSet:v6];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        v11 = 0;
        do
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * v11);
          v13 = [MEMORY[0x1E6997F88] album];
          v14 = [*(a1 + 40) scopeIdentifier];
          [v13 setGUID:v14];

          v15 = [*(a1 + 40) photoLibrary];
          v16 = [v15 libraryServicesManager];

          v18 = *(a1 + 48);
          v17 = *(a1 + 56);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __80__PLCollectionShareSharedStreamBackend_checkServerForChangesForCollectionShare___block_invoke_3;
          v24[3] = &unk_1E7571048;
          v25 = v13;
          v19 = v17;
          v26 = v19;
          v27 = v16;
          v28 = *(a1 + 48);
          v29 = v12;
          v30 = *(a1 + 64);
          v31 = *(a1 + 72);
          v20 = v16;
          v21 = v13;
          [v18 assetCollectionWithGUID:v12 personID:v19 completionBlock:v24];

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v9);
    }
  }
}

void __80__PLCollectionShareSharedStreamBackend_checkServerForChangesForCollectionShare___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695DEC8] arrayWithObject:a2];
  [PLCloudSharedAssetSaveJob assetsdProcessMetadataForAssetCollections:v3 inAlbum:*(a1 + 32) personID:*(a1 + 40) info:0 libraryServicesManager:*(a1 + 48)];

  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PLCollectionShareSharedStreamBackend_checkServerForChangesForCollectionShare___block_invoke_4;
  v10[3] = &unk_1E7571020;
  v11 = v4;
  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = *(a1 + 48);
  v16 = *(a1 + 80);
  [v11 commentGUIDsForAssetCollectionWithGUID:v5 personID:v6 completionBlock:v10];
}

void __80__PLCollectionShareSharedStreamBackend_checkServerForChangesForCollectionShare___block_invoke_4(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __80__PLCollectionShareSharedStreamBackend_checkServerForChangesForCollectionShare___block_invoke_5;
        v12[3] = &unk_1E7570FF8;
        v10 = *(a1 + 56);
        v12[4] = *(a1 + 48);
        v13 = v10;
        v14 = *(a1 + 64);
        [v8 commentWithGUID:v7 personID:v9 completionBlock:v12];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  [*(a1 + 72) stillAlive];
}

void __80__PLCollectionShareSharedStreamBackend_checkServerForChangesForCollectionShare___block_invoke_5(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695DEC8] arrayWithObject:a2];
  [PLCloudSharedCommentsJob assetsdLocallyProcessAddedComments:v3 assetGUID:a1[4] albumGUID:a1[5] info:0 libraryServicesManager:a1[6]];
}

- (void)sendInvitationsForParticipants:(id)participants collectionShare:(id)share completionHandler:(id)handler
{
  participantsCopy = participants;
  shareCopy = share;
  handlerCopy = handler;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:714 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  if ([photoLibrary isUnitTesting])
  {

LABEL_7:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_8;
  }

  isCurrentUserOwner = [shareCopy isCurrentUserOwner];

  if (!isCurrentUserOwner)
  {
    goto LABEL_7;
  }

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__28477;
  v29[4] = __Block_byref_object_dispose__28478;
  v30 = 0;
  photoLibrary2 = [shareCopy photoLibrary];
  v15 = +[PLPhotoSharingHelper sharingPersonID];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __105__PLCollectionShareSharedStreamBackend_sendInvitationsForParticipants_collectionShare_completionHandler___block_invoke;
  v26[3] = &unk_1E7578910;
  v27 = participantsCopy;
  v28 = v29;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __105__PLCollectionShareSharedStreamBackend_sendInvitationsForParticipants_collectionShare_completionHandler___block_invoke_101;
  v19[3] = &unk_1E75780B0;
  v25 = v29;
  v19[4] = self;
  v20 = shareCopy;
  v16 = v15;
  v21 = v16;
  v22 = v27;
  v17 = photoLibrary2;
  v23 = v17;
  v24 = handlerCopy;
  [v17 performBlockAndWait:v26 completionHandler:v19];

  _Block_object_dispose(v29, 8);
LABEL_8:
}

void __105__PLCollectionShareSharedStreamBackend_sendInvitationsForParticipants_collectionShare_completionHandler___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        if ([v7 acceptanceStatus] != 2 && objc_msgSend(v7, "role") == 2)
        {
          v8 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v27 = 0;
            _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "record state is CPLShareParticipantAcceptanceStatusPending, will send invitation", v27, 2u);
          }

          v9 = objc_alloc_init(MEMORY[0x1E6997FA0]);
          v10 = [v7 participantID];
          [v9 setGUID:v10];

          v11 = [v7 emailAddress];

          if (v11)
          {
            v12 = [v7 emailAddress];
            v33 = v12;
            v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
            [v9 setEmails:v13];
          }

          v14 = [v7 phoneNumber];

          if (v14)
          {
            v15 = [v7 phoneNumber];
            v32 = v15;
            v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
            [v9 setPhones:v16];
          }

          v17 = [v7 nameComponents];
          v18 = [v17 givenName];
          [v9 setFirstName:v18];

          v19 = [v7 nameComponents];
          v20 = [v19 familyName];
          [v9 setLastName:v20];

          v21 = [v7 fullName];
          [v9 setFullName:v21];

          v22 = [v7 hashedPersonID];
          [v9 setPersonID:v22];

          [v9 setState:1];
          v23 = *(*(*(a1 + 40) + 8) + 40);
          if (!v23)
          {
            v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v25 = *(*(a1 + 40) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v24;

            v23 = *(*(*(a1 + 40) + 8) + 40);
          }

          [v23 addObject:v9];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v4);
  }
}

void __105__PLCollectionShareSharedStreamBackend_sendInvitationsForParticipants_collectionShare_completionHandler___block_invoke_101(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v2 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = *(*(*(a1 + 80) + 8) + 40);
      v5 = *(a1 + 40);
      v6 = v3;
      v7 = [v5 scopeIdentifier];
      v8 = *(a1 + 48);
      *buf = 138413058;
      v19 = v3;
      v20 = 2112;
      v21 = v4;
      v22 = 2112;
      v23 = v7;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "%@: about to call connection addAccessControlEntries: %@ toAlbumWithGUID: %@ forPersonID %@", buf, 0x2Au);
    }

    v9 = [MEMORY[0x1E69B14F8] sharedConnection];
    v10 = *(*(*(a1 + 80) + 8) + 40);
    v11 = [*(a1 + 40) scopeIdentifier];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __105__PLCollectionShareSharedStreamBackend_sendInvitationsForParticipants_collectionShare_completionHandler___block_invoke_102;
    v14[3] = &unk_1E7578038;
    v12 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    [v9 addAccessControlEntries:v10 toAlbumWithGUID:v11 personID:v12 completionBlock:v14];
  }

  else
  {
    v13 = *(*(a1 + 72) + 16);

    v13();
  }
}

void __105__PLCollectionShareSharedStreamBackend_sendInvitationsForParticipants_collectionShare_completionHandler___block_invoke_102(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && [*(a1 + 32) count] == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __105__PLCollectionShareSharedStreamBackend_sendInvitationsForParticipants_collectionShare_completionHandler___block_invoke_2;
    v5[3] = &unk_1E75781E8;
    v4 = *(a1 + 40);
    v6 = *(a1 + 32);
    [v4 performTransaction:v5];
  }

  (*(*(a1 + 48) + 16))();
}

void __105__PLCollectionShareSharedStreamBackend_sendInvitationsForParticipants_collectionShare_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) firstObject];
  [v1 setAcceptanceStatus:0];
}

- (void)removeParticipants:(id)participants collectionShare:(id)share
{
  v43 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:693 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  if ([photoLibrary isUnitTesting])
  {
  }

  else
  {
    isCurrentUserOwner = [shareCopy isCurrentUserOwner];

    if (isCurrentUserOwner)
    {
      v27 = shareCopy;
      v11 = +[PLPhotoSharingHelper sharingPersonID];
      mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v28 = participantsCopy;
      v13 = participantsCopy;
      v14 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v34;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(v13);
            }

            participantID = [*(*(&v33 + 1) + 8 * i) participantID];
            v19 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v39 = participantID;
              v40 = 2112;
              v41 = v11;
              _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, " about to call connection removeAccessControlEntryWithGUID:%@ personID:%@", buf, 0x16u);
            }

            [mEMORY[0x1E69B14F8] removeAccessControlEntryWithGUID:participantID personID:v11];
          }

          v15 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v15);
      }

      shareCopy = v27;
      participantsCopy = v28;
      goto LABEL_24;
    }
  }

  photoLibrary2 = [shareCopy photoLibrary];
  isUnitTesting = [photoLibrary2 isUnitTesting];

  if (isUnitTesting)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = participantsCopy;
    v22 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v29 + 1) + 8 * j) setAcceptanceStatus:3];
        }

        v23 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v23);
    }

LABEL_24:
  }
}

- (void)markPendingInvitationAsSpamForCollectionShare:(id)share completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  handlerCopy = handler;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:667 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  if (([photoLibrary isUnitTesting] & 1) == 0)
  {
    isCurrentUserOwner = [shareCopy isCurrentUserOwner];

    if (isCurrentUserOwner)
    {
      goto LABEL_14;
    }

    photoLibrary = [MEMORY[0x1E69B14F8] sharedConnection];
    phoneInvitationToken = [shareCopy phoneInvitationToken];
    v12 = +[PLPhotoSharingHelper sharingPersonID];
    scopeIdentifier = [shareCopy scopeIdentifier];
    v14 = [phoneInvitationToken length];
    v15 = PLPhotoSharingGetLog();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *buf = 138412546;
        v20 = phoneInvitationToken;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "about to call connection markAsSpamInvitationWithToken:%@ personID:%@", buf, 0x16u);
      }

      [photoLibrary markAsSpamInvitationWithToken:phoneInvitationToken personID:v12 completionBlock:0];
    }

    else
    {
      if (v16)
      {
        *buf = 138412546;
        v20 = scopeIdentifier;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "about to call connection markAsSpamAlbumWithGUID:%@ personID:%@", buf, 0x16u);
      }

      [photoLibrary markAsSpamAlbumWithGUID:scopeIdentifier personID:v12 completionBlock:0];
    }
  }

LABEL_14:
  if (shareCopy)
  {
    v17 = +[PLNotificationManager sharedManager];
    [v17 noteDidDeleteCollectionShare:shareCopy];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)unsubscribeFromCollectionShare:(id)share completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  handlerCopy = handler;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:647 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  if (([photoLibrary isUnitTesting] & 1) == 0)
  {
    isCurrentUserOwner = [shareCopy isCurrentUserOwner];

    if (isCurrentUserOwner)
    {
      goto LABEL_9;
    }

    photoLibrary = [MEMORY[0x1E69B14F8] sharedConnection];
    v11 = +[PLPhotoSharingHelper sharingPersonID];
    v12 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      scopeIdentifier = [shareCopy scopeIdentifier];
      *buf = 138412546;
      v18 = scopeIdentifier;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "about to call connection unsubscribeFromAlbumWithGUID:%@ personID %@", buf, 0x16u);
    }

    scopeIdentifier2 = [shareCopy scopeIdentifier];
    [photoLibrary unsubscribeFromAlbumWithGUID:scopeIdentifier2 personID:v11];
  }

LABEL_9:
  if (shareCopy)
  {
    v15 = +[PLNotificationManager sharedManager];
    [v15 noteDidDeleteCollectionShare:shareCopy];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)declineCollectionShare:(id)share completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  handlerCopy = handler;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:627 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  if (([photoLibrary isUnitTesting] & 1) == 0)
  {
    isCurrentUserOwner = [shareCopy isCurrentUserOwner];

    if (isCurrentUserOwner)
    {
      goto LABEL_9;
    }

    photoLibrary = [MEMORY[0x1E69B14F8] sharedConnection];
    v11 = +[PLPhotoSharingHelper sharingPersonID];
    v12 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      scopeIdentifier = [shareCopy scopeIdentifier];
      *buf = 138412546;
      v18 = scopeIdentifier;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "about to call connection unsubscribeFromAlbumWithGUID:%@ personID %@", buf, 0x16u);
    }

    scopeIdentifier2 = [shareCopy scopeIdentifier];
    [photoLibrary unsubscribeFromAlbumWithGUID:scopeIdentifier2 personID:v11];
  }

LABEL_9:
  if (shareCopy)
  {
    v15 = +[PLNotificationManager sharedManager];
    [v15 noteDidDeleteCollectionShare:shareCopy];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)acceptCollectionShare:(id)share completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  handlerCopy = handler;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:589 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  v33 = 0;
  v9 = [(PLCollectionShareSharedStreamBackend *)self canAcceptPendingInvitationForCollectionShare:shareCopy error:&v33];
  v10 = v33;
  if (v9)
  {
    photoLibrary = [shareCopy photoLibrary];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __80__PLCollectionShareSharedStreamBackend_acceptCollectionShare_completionHandler___block_invoke;
    v31[3] = &unk_1E75781E8;
    v12 = shareCopy;
    v32 = v12;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __80__PLCollectionShareSharedStreamBackend_acceptCollectionShare_completionHandler___block_invoke_2;
    v29[3] = &unk_1E7576AA0;
    v13 = handlerCopy;
    v30 = v13;
    [photoLibrary performTransaction:v31 completionHandler:v29];
    photoLibrary2 = [v12 photoLibrary];
    if (([photoLibrary2 isUnitTesting] & 1) == 0)
    {
      isCurrentUserOwner = [v12 isCurrentUserOwner];

      if (isCurrentUserOwner)
      {
LABEL_17:

        goto LABEL_18;
      }

      photoLibrary2 = [MEMORY[0x1E69B14F8] sharedConnection];
      phoneInvitationToken = [v12 phoneInvitationToken];
      v17 = +[PLPhotoSharingHelper sharingPersonID];
      v26 = phoneInvitationToken;
      v18 = [phoneInvitationToken length];
      v19 = PLPhotoSharingGetLog();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        v21 = v17;
        v22 = v26;
        if (v20)
        {
          *buf = 138412546;
          v35 = v26;
          v36 = 2112;
          v37 = v21;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "about to call connection acceptInvitationWithToken:%@ personID:%@", buf, 0x16u);
        }

        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __80__PLCollectionShareSharedStreamBackend_acceptCollectionShare_completionHandler___block_invoke_99;
        v27[3] = &unk_1E7577430;
        v28 = v13;
        [photoLibrary2 acceptInvitationWithToken:v26 personID:v21 completionBlock:v27];
        scopeIdentifier2 = v28;
      }

      else
      {
        if (v20)
        {
          scopeIdentifier = [v12 scopeIdentifier];
          *buf = 138412546;
          v35 = scopeIdentifier;
          v36 = 2112;
          v37 = v17;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "about to call connection subscribeToAlbumWithGUID:%@ personID:%@", buf, 0x16u);
        }

        scopeIdentifier2 = [v12 scopeIdentifier];
        v21 = v17;
        [photoLibrary2 subscribeToAlbumWithGUID:scopeIdentifier2 personID:v17];
        v22 = v26;
      }
    }

    goto LABEL_17;
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, v10);
  }

LABEL_18:
}

uint64_t __80__PLCollectionShareSharedStreamBackend_acceptCollectionShare_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __80__PLCollectionShareSharedStreamBackend_acceptCollectionShare_completionHandler___block_invoke_99(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_hasReachedLimitOfSubscribedStreamsInLibrary:(id)library
{
  libraryCopy = library;
  v4 = +[PLPhotoSharingHelper maxSubscribedStreams];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d AND %K == %d", @"collectionShareKind", 2, @"status", 3];
  managedObjectContext = [libraryCopy managedObjectContext];

  v7 = [(PLShare *)PLCollectionShare sharesWithPredicate:v5 fetchLimit:0 inManagedObjectContext:managedObjectContext];

  LOBYTE(v4) = [v7 count] >= v4;
  return v4;
}

- (BOOL)canAcceptPendingInvitationForCollectionShare:(id)share error:(id *)error
{
  v25[2] = *MEMORY[0x1E69E9840];
  shareCopy = share;
  if ([shareCopy collectionShareKind] == 2)
  {
    if (shareCopy)
    {
LABEL_3:
      photoLibrary = [shareCopy photoLibrary];
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:548 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];

    if (shareCopy)
    {
      goto LABEL_3;
    }
  }

  photoLibrary = +[PLPhotoLibrary cloudSharingPhotoLibrary];
LABEL_6:
  v10 = photoLibrary;
  v11 = [(PLCollectionShareSharedStreamBackend *)self _hasReachedLimitOfSubscribedStreamsInLibrary:photoLibrary];
  if (!v11)
  {
    v15 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  title = [shareCopy title];
  if ([title length])
  {
    v13 = PLServicesLocalizedFrameworkString();
    v14 = PFStringWithValidatedFormat();
  }

  else
  {
    v14 = PLServicesLocalizedFrameworkString();
  }

  v16 = PLServicesLocalizedFrameworkString();
  v23 = +[PLPhotoSharingHelper maxSubscribedStreams];
  v17 = PFStringWithValidatedFormat();

  v18 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A588];
  v24[0] = *MEMORY[0x1E696A578];
  v24[1] = v19;
  v25[0] = v14;
  v25[1] = v17;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{2, v23}];
  v15 = [v18 errorWithDomain:@"com.apple.photolibraryservices" code:4 userInfo:v20];

  if (error)
  {
LABEL_13:
    v21 = v15;
    *error = v15;
  }

LABEL_14:

  return !v11;
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
    [compactDescription setAcceptanceStatus:2];
    [compactDescription setParticipantKind:1];
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

- (void)deleteCommentWithGUIDFromServer:(id)server
{
  v11 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  if (serverCopy)
  {
    v4 = +[PLPhotoSharingHelper sharingPersonID];
    mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = serverCopy;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "about to call connection deleteCommentWithGUID:%@ personID:%@", &v7, 0x16u);
    }

    [mEMORY[0x1E69B14F8] deleteCommentWithGUID:serverCopy personID:v4];
  }
}

- (void)publishCloudSharedCommentToServer:(id)server
{
  v26 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  v4 = serverCopy;
  if (serverCopy)
  {
    asset = [serverCopy asset];
    cloudAssetGUID = [asset cloudAssetGUID];

    if (cloudAssetGUID)
    {
      comment = [MEMORY[0x1E6997F98] comment];
      cloudGUID = [v4 cloudGUID];
      [comment setGUID:cloudGUID];

      commentDate = [v4 commentDate];
      [comment setTimestamp:commentDate];

      isCaption = [v4 isCaption];
      -[NSObject setIsCaption:](comment, "setIsCaption:", [isCaption BOOLValue]);

      isBatchComment = [v4 isBatchComment];
      -[NSObject setIsBatchComment:](comment, "setIsBatchComment:", [isBatchComment BOOLValue]);

      isLike = [v4 isLike];
      bOOLValue = [isLike BOOLValue];

      if (bOOLValue)
      {
        [comment setIsLike:1];
      }

      else
      {
        commentText = [v4 commentText];
        [comment setContent:commentText];
      }

      isMyComment = [v4 isMyComment];
      -[NSObject setIsMine:](comment, "setIsMine:", [isMyComment BOOLValue]);

      [comment setIsDeletable:1];
      v16 = +[PLPhotoSharingHelper sharingPersonID];
      mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
      v18 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412802;
        v21 = comment;
        v22 = 2112;
        v23 = cloudAssetGUID;
        v24 = 2112;
        v25 = v16;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "about to call connection addComments:%@ toAssetCollectionWithGUID:%@ personID:%@", &v20, 0x20u);
      }

      v19 = [MEMORY[0x1E695DEC8] arrayWithObject:comment];
      [mEMORY[0x1E69B14F8] addComments:v19 toAssetCollectionWithGUID:cloudAssetGUID personID:v16];
    }

    else
    {
      comment = PLPhotoSharingGetLog();
      if (os_log_type_enabled(comment, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_19BF1F000, comment, OS_LOG_TYPE_ERROR, "ERROR: couldn't find asset cloud GUID for comment, skipping comment deletion on server", &v20, 2u);
      }
    }
  }
}

- (void)deleteSharedStreamAssetsFromServer:(id)server
{
  v27 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
  v5 = +[PLPhotoSharingHelper sharingPersonID];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = serverCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        cloudAssetGUID = [v13 cloudAssetGUID];
        [array addObject:cloudAssetGUID];
        uuid = [v13 uuid];
        [array2 addObject:uuid];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v10);
  }

  v16 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = array;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, " about to call connection deleteAssetCollectionsWithGUIDs:%@ personID:%@", buf, 0x16u);
  }

  [mEMORY[0x1E69B14F8] deleteAssetCollectionsWithGUIDs:array personID:v5];
  v17 = +[PLNotificationManager sharedManager];
  [v17 noteUserDidDeleteSharedAssetsWithUUIDs:array2];
}

- (void)_enqueueCloudSharedAssetsForPublishToServer:(id)server inCollectionShare:(id)share
{
  v120 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  shareCopy = share;
  v96 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(serverCopy, "count")}];
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = serverCopy;
  v97 = [obj countByEnumeratingWithState:&v113 objects:v119 count:16];
  v6 = 0;
  if (v97)
  {
    v95 = *v114;
    v102 = *MEMORY[0x1E695DB50];
    v100 = *MEMORY[0x1E6998070];
    v98 = *MEMORY[0x1E6998078];
    v99 = *MEMORY[0x1E6998080];
    v94 = *MEMORY[0x1E6998028];
    v86 = *MEMORY[0x1E6982F80];
    v7 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
    v81 = *MEMORY[0x1E6998008];
    v80 = *MEMORY[0x1E6998010];
    v79 = *MEMORY[0x1E6998018];
    v90 = *MEMORY[0x1E6997FF8];
    v9 = 0x1E696A000uLL;
    v89 = *MEMORY[0x1E6997FF0];
    v88 = *MEMORY[0x1E6998000];
    v84 = *MEMORY[0x1E6998030];
    v82 = *MEMORY[0x1E6998020];
    do
    {
      for (i = 0; i != v97; ++i)
      {
        if (*v114 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v113 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x1E6997FA8]);
        cloudAssetGUID = [v11 cloudAssetGUID];
        [v12 setGUID:cloudAssetGUID];

        uniformTypeIdentifier = [v11 uniformTypeIdentifier];
        [v12 setType:?];
        pathForOriginalFile = [v11 pathForOriginalFile];
        [v12 setPath:pathForOriginalFile];

        if ([v11 isVideo])
        {
          [v12 setMediaAssetType:4];
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v16 = MEMORY[0x1E695DFF8];
        pathForOriginalFile2 = [v11 pathForOriginalFile];
        v18 = [v16 fileURLWithPath:pathForOriginalFile2 isDirectory:0];

        v112 = 0;
        v106 = v18;
        [v18 getResourceValue:&v112 forKey:v102 error:0];
        v105 = v112;
        [dictionary setObject:? forKey:?];
        v19 = [*(v9 + 3480) numberWithLongLong:{objc_msgSend(v11, "width")}];
        v20 = [*(v9 + 3480) numberWithLongLong:{objc_msgSend(v11, "height")}];
        v104 = v19;
        [dictionary setObject:v19 forKey:v99];
        v103 = v20;
        [dictionary setObject:v20 forKey:v98];
        [v12 setMetadata:dictionary];
        array = [MEMORY[0x1E695DF70] array];
        v108 = v12;
        [array addObject:v12];
        v22 = objc_alloc_init(MEMORY[0x1E6997F90]);
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v24 = [*(v9 + 3480) numberWithUnsignedShort:{objc_msgSend(v11, "playbackVariation")}];
        [dictionary2 setObject:v24 forKey:v94];

        mediaGroupUUID = [v11 mediaGroupUUID];
        if ([v11 isPhotoIris] && mediaGroupUUID)
        {
          v93 = v6;
          pathForVideoComplementFile = [v11 pathForVideoComplementFile];
          pathExtension = [pathForVideoComplementFile pathExtension];
          identifier = [v86 identifier];
          v91 = pathExtension;
          v92 = array;
          if (pathExtension)
          {
            v28 = [PLManagedAsset uniformTypeIdentifierFromPathExtension:pathExtension assetType:1];
            v29 = v28;
            if (v28)
            {
              v30 = v28;
            }

            else
            {
              v30 = identifier;
            }

            v31 = v30;

            identifier = v31;
          }

          v32 = objc_alloc_init(MEMORY[0x1E6997FA8]);
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
          [v32 setGUID:uUIDString];

          [v32 setType:identifier];
          pathForVideoComplementFile2 = [v11 pathForVideoComplementFile];
          [v32 setPath:pathForVideoComplementFile2];

          [v32 setMediaAssetType:4];
          dictionary3 = [MEMORY[0x1E695DF90] dictionary];
          if (pathForVideoComplementFile && ([MEMORY[0x1E696AC08] defaultManager], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "fileExistsAtPath:", pathForVideoComplementFile), v36, v37))
          {
            v83 = identifier;
            v38 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathForVideoComplementFile isDirectory:0];
            v110 = 0;
            v111 = 0;
            v39 = [v38 getResourceValue:&v111 forKey:v102 error:&v110];
            v40 = v111;
            v85 = v110;
            if (v39)
            {
              [dictionary3 setObject:v40 forKey:v100];
              [PLManagedAsset dimensionsForVideoAtURL:v38];
              v42 = v41;
              if (v43 == v7 && v41 == v8)
              {
                v44 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf.value) = 138412290;
                  *(&buf.value + 4) = pathForVideoComplementFile;
                  v45 = v44;
                  v46 = "ERROR: Unable to get dimensions for Iris video complement file %@";
                  v47 = 12;
                  goto LABEL_26;
                }

                goto LABEL_27;
              }

              v48 = [MEMORY[0x1E696AD98] numberWithDouble:?];
              [dictionary3 setObject:v48 forKey:v99];

              v49 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
              [dictionary3 setObject:v49 forKey:v98];

              [v32 setMetadata:dictionary3];
              [dictionary2 setObject:mediaGroupUUID forKey:v81];
              v50 = MEMORY[0x1E696AD98];
              if (v11)
              {
                [v11 photoIrisStillDisplayTime];
              }

              else
              {
                memset(&buf, 0, sizeof(buf));
              }

              v51 = [v50 numberWithDouble:CMTimeGetSeconds(&buf)];
              [dictionary2 setObject:v51 forKey:v80];

              v52 = MEMORY[0x1E696AD98];
              if (v11)
              {
                [v11 photoIrisVideoDuration];
              }

              else
              {
                memset(&buf, 0, sizeof(buf));
              }

              v53 = [v52 numberWithDouble:CMTimeGetSeconds(&buf)];
              [dictionary2 setObject:v53 forKey:v79];

              array = v92;
              [v92 addObject:v32];
            }

            else
            {
              v44 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.value) = 138412546;
                *(&buf.value + 4) = pathForVideoComplementFile;
                LOWORD(buf.flags) = 2112;
                *(&buf.flags + 2) = v85;
                v45 = v44;
                v46 = "ERROR: Unable to get Iris video complement file size for %@: %@";
                v47 = 22;
LABEL_26:
                _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, v46, &buf, v47);
              }

LABEL_27:

              array = v92;
            }

            identifier = v83;
          }

          else
          {
            v38 = PLPhotoSharingGetLog();
            array = v92;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf.value) = 138412290;
              *(&buf.value + 4) = pathForVideoComplementFile;
              _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "ERROR: Iris video complement file path is nil or does not exist: %@", &buf, 0xCu);
            }
          }

          v6 = v93;
          v9 = 0x1E696A000uLL;
        }

        v54 = array;
        [v22 setAssets:array];
        cloudAssetGUID2 = [v11 cloudAssetGUID];
        [v22 setGUID:cloudAssetGUID2];

        originalFilename = [v11 originalFilename];
        [v22 setFileName:originalFilename];

        [v22 setIsDeletable:{objc_msgSend(v11, "cloudIsDeletable")}];
        [v22 setIsMine:{objc_msgSend(v11, "cloudIsMyAsset")}];
        cloudBatchID = [v11 cloudBatchID];

        if (cloudBatchID)
        {
          cloudBatchID2 = [v11 cloudBatchID];
          [dictionary2 setObject:cloudBatchID2 forKey:v90];
        }

        cloudBatchPublishDate = [v11 cloudBatchPublishDate];

        if (cloudBatchPublishDate)
        {
          cloudBatchPublishDate2 = [v11 cloudBatchPublishDate];
          [dictionary2 setObject:cloudBatchPublishDate2 forKey:v89];
        }

        dateCreated = [v11 dateCreated];
        if (dateCreated)
        {
          [dictionary2 setObject:dateCreated forKey:v88];
        }

        v62 = [*(v9 + 3480) numberWithBool:1];
        [dictionary2 setObject:v62 forKey:@"kPLJustEnqueuedAssetCollectionKey"];

        if ([v11 isVideo])
        {
          [v11 duration];
          if (v63 != 0.0)
          {
            [PLSlalomUtilities durationForManagedAsset:v11 applyVideoAdjustments:1];
            v64 = [*(v9 + 3480) numberWithDouble:?];
            [dictionary2 setObject:v64 forKey:v84];
          }

          location = [v11 location];
          v66 = location;
          if (location)
          {
            v67 = v6;
            iso6709Notation = [location iso6709Notation];
            v69 = iso6709Notation;
            if (iso6709Notation && [iso6709Notation length])
            {
              [dictionary2 setObject:v69 forKey:v82];
            }

            v6 = v67;
          }

          v9 = 0x1E696A000;
        }

        [v22 setMetadata:dictionary2];
        [v96 addObject:v22];
        locationData = [v11 locationData];

        if (locationData)
        {
          ++v6;
        }
      }

      v97 = [obj countByEnumeratingWithState:&v113 objects:v119 count:16];
    }

    while (v97);
  }

  if ([v96 count])
  {
    mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
    v72 = +[PLPhotoSharingHelper sharingPersonID];
    v73 = PLPhotoSharingGetLog();
    v74 = shareCopy;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      scopeIdentifier = [shareCopy scopeIdentifier];
      LODWORD(buf.value) = 138412802;
      *(&buf.value + 4) = v96;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = scopeIdentifier;
      HIWORD(buf.epoch) = 2112;
      v118 = v72;
      _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_DEFAULT, " about to call connection addAssetCollections:%@ toAlbumWithGUID:%@ personID:%@", &buf, 0x20u);
    }

    scopeIdentifier2 = [shareCopy scopeIdentifier];
    [mEMORY[0x1E69B14F8] addAssetCollections:v96 toAlbumWithGUID:scopeIdentifier2 personID:v72];
  }

  else
  {
    mEMORY[0x1E69B14F8] = PLPhotoSharingGetLog();
    v74 = shareCopy;
    if (os_log_type_enabled(mEMORY[0x1E69B14F8], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_19BF1F000, mEMORY[0x1E69B14F8], OS_LOG_TYPE_DEFAULT, " no asset collections to add", &buf, 2u);
    }
  }

  if (MEMORY[0x19EAEF2C0]())
  {
    if (v6 >= 1)
    {
      title = [v74 title];
      plslogGreenTea();
    }

    if (PLIsForegroundApplication())
    {
      cpllogGreenTeaTransmittingPhotosOrVideos();
    }
  }
}

- (void)publishAssets:(id)assets withComment:(id)comment collectionShare:(id)share
{
  assetsCopy = assets;
  commentCopy = comment;
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:258 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  if ([photoLibrary isUnitTesting])
  {
  }

  else
  {
    v12 = [assetsCopy count];

    if (v12)
    {
      [(PLCollectionShareSharedStreamBackend *)self _enqueueCloudSharedAssetsForPublishToServer:assetsCopy inCollectionShare:shareCopy];
      if (commentCopy)
      {
        [(PLCollectionShareSharedStreamBackend *)self publishCloudSharedCommentToServer:commentCopy];
      }
    }
  }
}

- (void)updatePublicURLState:(signed __int16)state collectionShare:(id)share
{
  stateCopy = state;
  v24 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:225 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  if ([photoLibrary isUnitTesting])
  {
    goto LABEL_8;
  }

  isCurrentUserOwner = [shareCopy isCurrentUserOwner];

  if (isCurrentUserOwner)
  {
    photoLibrary = [shareCopy scopeIdentifier];
    v10 = +[PLPhotoSharingHelper sharingPersonID];
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v19 = stateCopy == 2;
      v20 = 2112;
      v21 = photoLibrary;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, " about to call connection setPublicAccessEnabled:%i forAlbumWithGUID:%@ personID:%@", buf, 0x1Cu);
    }

    mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__PLCollectionShareSharedStreamBackend_updatePublicURLState_collectionShare___block_invoke;
    v14[3] = &unk_1E756A5F8;
    v16 = stateCopy;
    v17 = stateCopy == 2;
    v15 = shareCopy;
    [mEMORY[0x1E69B14F8] setPublicAccessEnabled:stateCopy == 2 forAlbumWithGUID:photoLibrary personID:v10 completionBlock:v14];

LABEL_8:
  }
}

void __77__PLCollectionShareSharedStreamBackend_updatePublicURLState_collectionShare___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "setPublicAccessEnabled completionBlock error:%@", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v3)
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 42);
      *buf = 67109120;
      LODWORD(v14) = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "ERROR: couldn't set publicAccess to %i", buf, 8u);
    }

    v8 = *(a1 + 40);
    if (v8 == 2)
    {
      v5 = 1;
    }

    else if (v8 == 1)
    {
      v5 = 2;
    }
  }

  v9 = [*(a1 + 32) photoLibrary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PLCollectionShareSharedStreamBackend_updatePublicURLState_collectionShare___block_invoke_48;
  v10[3] = &unk_1E7571418;
  v11 = *(a1 + 32);
  v12 = v5;
  [v9 performTransaction:v10];
}

- (void)updatePublicPermission:(int64_t)permission collectionShare:(id)share
{
  v24 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:192 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  if ([photoLibrary isUnitTesting])
  {
    goto LABEL_8;
  }

  isCurrentUserOwner = [shareCopy isCurrentUserOwner];

  if (isCurrentUserOwner)
  {
    photoLibrary = [shareCopy scopeIdentifier];
    v10 = +[PLPhotoSharingHelper sharingPersonID];
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v19 = permission == 3;
      v20 = 2112;
      v21 = photoLibrary;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, " about to call connection setMultipleContributorsEnabled:%i forAlbumWithGUID:%@ personID:%@", buf, 0x1Cu);
    }

    mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__PLCollectionShareSharedStreamBackend_updatePublicPermission_collectionShare___block_invoke;
    v14[3] = &unk_1E756A5D0;
    permissionCopy = permission;
    v17 = permission == 3;
    v15 = shareCopy;
    [mEMORY[0x1E69B14F8] setMultipleContributorsEnabled:permission == 3 forAlbumWithGUID:photoLibrary personID:v10 completionBlock:v14];

LABEL_8:
  }
}

void __79__PLCollectionShareSharedStreamBackend_updatePublicPermission_collectionShare___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "setMultipleContributorsEnabled completionBlock error:%@", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v3)
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      *buf = 67109120;
      LODWORD(v14) = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "ERROR: couldn't set multipleContributors to %i", buf, 8u);
    }

    v8 = *(a1 + 40);
    if (v8 == 3)
    {
      v5 = 2;
    }

    else if (v8 == 2)
    {
      v5 = 3;
    }
  }

  v9 = [*(a1 + 32) photoLibrary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__PLCollectionShareSharedStreamBackend_updatePublicPermission_collectionShare___block_invoke_45;
  v10[3] = &unk_1E7577B90;
  v11 = *(a1 + 32);
  v12 = v5;
  [v9 performTransaction:v10];
}

- (void)updateTitle:(id)title collectionShare:(id)share
{
  v20 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:174 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  if (([photoLibrary isUnitTesting] & 1) != 0 || (objc_msgSend(shareCopy, "isCurrentUserOwner") & 1) == 0)
  {
    goto LABEL_9;
  }

  lastModifiedDate = [shareCopy lastModifiedDate];

  if (lastModifiedDate)
  {
    photoLibrary = +[PLPhotoSharingHelper sharingPersonID];
    album = [MEMORY[0x1E6997F88] album];
    scopeIdentifier = [shareCopy scopeIdentifier];
    [album setGUID:scopeIdentifier];

    [album setMetadataValue:titleCopy forKey:*MEMORY[0x1E6997FE0]];
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = album;
      v18 = 2112;
      v19 = photoLibrary;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, " about to call connection modifyAlbumMetadata:%@ personID:%@", buf, 0x16u);
    }

    mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
    [mEMORY[0x1E69B14F8] modifyAlbumMetadata:album personID:photoLibrary];

LABEL_9:
  }
}

- (void)recordCloudDeletionIfNeededForCollectionShare:(id)share
{
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:168 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }
}

- (void)deleteCollectionShareDirectory:(id)directory
{
  v16 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  if ([directoryCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:153 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(directoryCopy, "collectionShareKind")}];
  }

  v6 = [(PLCollectionShareSharedStreamBackend *)self _sharedStreamCollectionShareDirectoryPathForCollectionShare:directoryCopy];
  if (v6)
  {
    v7 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "deleting sharedstream collection share directory path %@", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v13 = 0;
    v9 = [defaultManager removeItemAtPath:v6 error:&v13];
    v10 = v13;

    if ((v9 & 1) == 0)
    {
      v11 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "error %@", buf, 0xCu);
      }
    }
  }
}

- (void)deleteCollectionShareFromServer:(id)server
{
  v18 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  if ([serverCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:134 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(serverCopy, "collectionShareKind")}];
  }

  photoLibrary = [serverCopy photoLibrary];
  if ([photoLibrary isUnitTesting])
  {
    goto LABEL_10;
  }

  isCurrentUserOwner = [serverCopy isCurrentUserOwner];

  if (isCurrentUserOwner)
  {
    photoLibrary = +[PLPhotoSharingHelper sharingPersonID];
    v8 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      scopeIdentifier = [serverCopy scopeIdentifier];
      *buf = 138412546;
      v15 = scopeIdentifier;
      v16 = 2112;
      v17 = photoLibrary;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, " about to call connection deleteAlbumWithGUID:%@ personID:%@", buf, 0x16u);
    }

    mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
    scopeIdentifier2 = [serverCopy scopeIdentifier];
    [mEMORY[0x1E69B14F8] deleteAlbumWithGUID:scopeIdentifier2 personID:photoLibrary];

    if (serverCopy)
    {
      v12 = +[PLNotificationManager sharedManager];
      [v12 noteDidDeleteCollectionShare:serverCopy];
    }

LABEL_10:
  }
}

- (void)trashCollectionShare:(id)share
{
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:128 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }
}

- (void)publishCollectionShare:(id)share completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  handlerCopy = handler;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:100 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  photoLibrary = [shareCopy photoLibrary];
  isUnitTesting = [photoLibrary isUnitTesting];

  if ((isUnitTesting & 1) == 0)
  {
    v11 = +[PLPhotoSharingHelper sharingPersonID];
    album = [MEMORY[0x1E6997F88] album];
    scopeIdentifier = [shareCopy scopeIdentifier];
    [album setGUID:scopeIdentifier];

    v14 = MEMORY[0x1E695DF20];
    title = [shareCopy title];
    v16 = [v14 dictionaryWithObject:title forKey:*MEMORY[0x1E6997FE0]];
    [album setMetadata:v16];

    if ([shareCopy publicURLState] == 2)
    {
      [album setMetadataValue:@"1" forKey:*MEMORY[0x1E6997FD8]];
    }

    if ([shareCopy publicPermission] == 3)
    {
      [album setMetadataValue:@"1" forKey:*MEMORY[0x1E6997FB8]];
    }

    date = [MEMORY[0x1E695DF00] date];
    [album setMetadataValue:date forKey:*MEMORY[0x1E6997FC0]];

    clientBundleIdentifier = [shareCopy clientBundleIdentifier];
    [album setMetadataValue:clientBundleIdentifier forKey:*MEMORY[0x1E6997FC8]];

    v19 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = album;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, " about to call connection addAlbum:%@ forPersonID:%@", buf, 0x16u);
    }

    mEMORY[0x1E69B14F8] = [MEMORY[0x1E69B14F8] sharedConnection];
    [mEMORY[0x1E69B14F8] addAlbum:album personID:v11];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
}

- (id)cplScopeChangeForCollectionShare:(id)share
{
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:93 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  return 0;
}

- (BOOL)supportsCloudUploadForCollectionShare:(id)share
{
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:86 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  return 0;
}

- (BOOL)isSyncableChangeForCollectionShare:(id)share
{
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:79 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  return 0;
}

- (id)cplFullRecordForCollectionShare:(id)share
{
  shareCopy = share;
  if ([shareCopy collectionShareKind] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCollectionShareSharedStreamBackend.m" lineNumber:72 description:{@"expect SharedStream Collection Share but type is %d", objc_msgSend(shareCopy, "collectionShareKind")}];
  }

  return 0;
}

- (id)createOwnedShareWithUUID:(id)d creationDate:(id)date title:(id)title inPhotoLibrary:(id)library
{
  v7 = [(PLShare *)PLCollectionShare createOwnedShareWithUUID:d creationDate:date title:title inPhotoLibrary:library];
  [v7 setPublicPermission:3];
  [v7 setUnseenContentState:1];
  [v7 setNotificationState:0x7FFFLL];
  [v7 setPublicURLState:1];
  [v7 setScopeType:0];
  [v7 setCustomSortKey:6];
  [v7 setCustomSortAscending:0];
  [(PLCollectionShareSharedStreamBackend *)self _stripScopeIdentifierPrefixForCollectionShare:v7];
  [(PLCollectionShareSharedStreamBackend *)self _setCloudPersonIDForCollectionShare:v7];

  return v7;
}

@end