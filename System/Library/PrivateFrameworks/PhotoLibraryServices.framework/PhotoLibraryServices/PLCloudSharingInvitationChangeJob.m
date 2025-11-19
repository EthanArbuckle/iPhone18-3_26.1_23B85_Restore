@interface PLCloudSharingInvitationChangeJob
+ (void)resendPendingInvitationWithGUID:(id)a3 albumGUID:(id)a4;
+ (void)saveServerStateLocallyForSharingACLRelationships:(id)a3 changeType:(int64_t)a4 info:(id)a5;
+ (void)saveServerStateLocallyForSharingInvitationRelationships:(id)a3 changeType:(int64_t)a4 info:(id)a5;
+ (void)sendServerPendingInvitationsForAlbumWithGUID:(id)a3;
- (BOOL)shouldArchiveXPCToDisk;
- (id)_operationQueueForJob;
- (id)description;
- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4;
- (void)encodeToXPCObject:(id)a3;
- (void)executeSaveServerStateLocallyForSharingACLRelationships;
- (void)executeSaveServerStateLocallyForSharingInvitationRelationships;
- (void)executeSendServerPendingInvitationsForAlbumWithGUID;
- (void)runDaemonSide;
@end

@implementation PLCloudSharingInvitationChangeJob

- (void)executeSendServerPendingInvitationsForAlbumWithGUID
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PLCloudSharingInvitationChangeJob *)self albumGUID];
    v5 = [(PLCloudSharingInvitationChangeJob *)self resendInvitationGUID];
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "executeSendServerPendingInvitationsForAlbumWithGUID %@ resendInvitationGUID %@", buf, 0x16u);
  }

  v6 = [(PLCloudSharingInvitationChangeJob *)self jobType]== 4;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = __Block_byref_object_copy__76612;
  v21 = __Block_byref_object_dispose__76613;
  v22 = 0;
  v7 = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v8 = +[PLPhotoSharingHelper sharingPersonID];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__PLCloudSharingInvitationChangeJob_executeSendServerPendingInvitationsForAlbumWithGUID__block_invoke;
  v15[3] = &unk_1E7577898;
  v15[4] = self;
  v9 = v7;
  v18 = v6;
  v16 = v9;
  v17 = buf;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PLCloudSharingInvitationChangeJob_executeSendServerPendingInvitationsForAlbumWithGUID__block_invoke_56;
  v11[3] = &unk_1E7577898;
  v13 = buf;
  v11[4] = self;
  v10 = v8;
  v12 = v10;
  v14 = v6;
  [v9 performBlockAndWait:v15 completionHandler:v11];

  _Block_object_dispose(buf, 8);
}

void __88__PLCloudSharingInvitationChangeJob_executeSendServerPendingInvitationsForAlbumWithGUID__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) albumGUID];
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v2 includeTrashed:0 inManagedObjectContext:v3];

  v5 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 participants];
    *buf = 138412546;
    v45 = v4;
    v46 = 2048;
    v47 = [v6 count];
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "found sharedstream collection share %@ with shareParticipants %lu", buf, 0x16u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = v4;
  v7 = [v4 participants];
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v12;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "participant %@", buf, 0xCu);
        }

        if ([v12 acceptanceStatus] != 1)
        {
          if ((*(a1 + 56) & 1) == 0)
          {
            continue;
          }

LABEL_14:
          v14 = [v12 participantID];
          v15 = [*(a1 + 32) resendInvitationGUID];
          v16 = [v14 isEqualToString:v15];

          if (!v16)
          {
            continue;
          }

          goto LABEL_15;
        }

        if (*(a1 + 56))
        {
          goto LABEL_14;
        }

LABEL_15:
        v17 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "record state is kMSASRelationshipStatePending, will send invitation", buf, 2u);
        }

        v18 = objc_alloc_init(MEMORY[0x1E6997FA0]);
        v19 = [v12 participantID];
        [v18 setGUID:v19];

        v20 = [v12 emailAddress];

        if (v20)
        {
          v21 = [v12 emailAddress];
          v42 = v21;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
          [v18 setEmails:v22];
        }

        v23 = [v12 phoneNumber];

        if (v23)
        {
          v24 = [v12 phoneNumber];
          v41 = v24;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
          [v18 setPhones:v25];
        }

        v26 = [v12 nameComponents];
        v27 = [v26 givenName];
        [v18 setFirstName:v27];

        v28 = [v12 nameComponents];
        v29 = [v28 familyName];
        [v18 setLastName:v29];

        v30 = [v12 fullName];
        [v18 setFullName:v30];

        v31 = [v12 hashedPersonID];
        [v18 setPersonID:v31];

        [v18 setState:1];
        v32 = *(*(*(a1 + 48) + 8) + 40);
        if (!v32)
        {
          v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v34 = *(*(a1 + 48) + 8);
          v35 = *(v34 + 40);
          *(v34 + 40) = v33;

          v32 = *(*(*(a1 + 48) + 8) + 40);
        }

        [v32 addObject:v18];
      }

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v9);
  }
}

void __88__PLCloudSharingInvitationChangeJob_executeSendServerPendingInvitationsForAlbumWithGUID__block_invoke_56(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = PLPhotoSharingGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = objc_opt_class();
      v6 = *(*(*(a1 + 48) + 8) + 40);
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = [v7 albumGUID];
      v10 = *(a1 + 40);
      *buf = 138413058;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@: about to call connection addAccessControlEntries: %@ toAlbumWithGUID: %@ forPersonID %@", buf, 0x2Au);
    }

    v11 = [MEMORY[0x1E69B14F8] sharedConnection];
    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = [*(a1 + 32) albumGUID];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__PLCloudSharingInvitationChangeJob_executeSendServerPendingInvitationsForAlbumWithGUID__block_invoke_58;
    v20[3] = &unk_1E7571BF8;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v20[4] = *(a1 + 32);
    v20[5] = v15;
    [v11 addAccessControlEntries:v12 toAlbumWithGUID:v13 personID:v14 completionBlock:v20];
    goto LABEL_5;
  }

  if (v4)
  {
    *buf = 138412290;
    v22 = objc_opt_class();
    v16 = v22;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@: no sharing invitations to send", buf, 0xCu);
  }

  if (*(a1 + 56) == 1)
  {
    v11 = PLPhotoSharingGetLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v17 = objc_opt_class();
    v18 = *(a1 + 32);
    v13 = v17;
    v19 = [v18 resendInvitationGUID];
    *buf = 138412546;
    v22 = v17;
    v23 = 2112;
    v24 = v19;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "%@: failed to find invitation GUID %@ to resend", buf, 0x16u);

LABEL_5:
LABEL_6:
  }
}

void __88__PLCloudSharingInvitationChangeJob_executeSendServerPendingInvitationsForAlbumWithGUID__block_invoke_58(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = *(*(*(a1 + 40) + 8) + 40);
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v6 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%@: failed to addAccessControlEntries:%@", &v7, 0x16u);
    }
  }
}

- (void)executeSaveServerStateLocallyForSharingACLRelationships
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PLCloudSharingInvitationChangeJob *)self MSASSharingRelationships];
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "executeSaveServerStateLocallyForSharingACLRelationships %@", buf, 0xCu);
  }

  v5 = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__PLCloudSharingInvitationChangeJob_executeSaveServerStateLocallyForSharingACLRelationships__block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v6 performTransactionAndWait:v7];
}

void __92__PLCloudSharingInvitationChangeJob_executeSaveServerStateLocallyForSharingACLRelationships__block_invoke(uint64_t a1)
{
  v1 = a1;
  v72 = *MEMORY[0x1E69E9840];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [*(a1 + 32) MSASSharingRelationships];
  v2 = [obj countByEnumeratingWithState:&v52 objects:v71 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v53;
    *&v3 = 134217984;
    v43 = v3;
    v48 = v1;
    v50 = *v53;
    do
    {
      v6 = 0;
      v49 = v4;
      do
      {
        if (*v53 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v52 + 1) + 8 * v6);
        v8 = [v7 GUID];
        v9 = v8;
        if (!v8 || ![v8 length])
        {
          if ([v7 state])
          {
            v12 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v57 = v7;
              _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "found sharingRelationship without GUID: %@. Skipping", buf, 0xCu);
            }

            goto LABEL_39;
          }

          v12 = [*(v1 + 40) personInfoManager];
          v17 = [v7 firstName];
          v18 = [v7 lastName];
          v19 = [v7 fullName];
          v20 = [v7 email];
          v21 = [v7 personID];
          [v12 setFirstName:v17 lastName:v18 fullName:v19 email:v20 forPersonID:v21];

          v5 = v50;
          goto LABEL_15;
        }

        v70 = v9;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
        v11 = [PLShareParticipant participantsWithParticipantIDs:v10 inPhotoLibrary:*(v1 + 40)];
        v12 = [v11 firstObject];

        if (!v12)
        {
          v13 = [v7 albumGUID];
          v14 = [*(v1 + 40) managedObjectContext];
          v15 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v13 includeTrashed:0 inManagedObjectContext:v14];

          if (v15)
          {
            v16 = [v7 personID];
            v12 = [PLShareParticipant participantWithHashedPersonID:v16 inCollectionShare:v15];
          }

          else
          {
            v12 = 0;
          }
        }

        if ([*(v1 + 32) relationshipChangeType] == 1 || objc_msgSend(*(v1 + 32), "relationshipChangeType") == 3)
        {
          v22 = [v7 albumGUID];
          v23 = [*(v1 + 40) managedObjectContext];
          v24 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v22 includeTrashed:0 inManagedObjectContext:v23];

          if (v24)
          {
            if (v12)
            {
              v25 = [v12 acceptanceStatus];
            }

            else
            {
              v28 = [*(v1 + 40) managedObjectContext];
              v12 = [PLShareParticipant insertInManagedObjectContext:v28];

              [v12 setParticipantKind:1];
              v29 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "inserting new PLShareParticipant", buf, 2u);
              }

              v25 = 0x7FFFFFFFFFFFFFFFLL;
            }

            [v12 updateWithMSASRelationship:v7 withCollectionShare:v24];
            [v12 reconcileAssetRelationshipsWithSharedStreamCollectionShare:v24];
            [v12 reconcileCommentRelationshipsWithSharedStreamCollectionShare:v24];
            v30 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v47 = [v24 title];
              v31 = [v24 scopeIdentifier];
              v44 = v31;
              [v12 fullName];
              v32 = v46 = v25;
              v33 = [v12 emailAddress];
              [v12 phoneNumber];
              v34 = v45 = v24;
              v35 = [v12 hashedPersonID];
              v36 = [v12 isCurrentUser];
              *buf = 138413826;
              v37 = @"NO";
              if (v36)
              {
                v37 = @"YES";
              }

              v57 = v47;
              v58 = 2112;
              v59 = v31;
              v60 = 2112;
              v61 = v32;
              v38 = v32;
              v62 = 2112;
              v63 = v33;
              v64 = 2112;
              v65 = v34;
              v66 = 2112;
              v67 = v35;
              v68 = 2112;
              v69 = v37;
              _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "setting person info for share participant on sharedstream collection share '%@' (%@): %@, %@, %@, hashedPersonID %@ isCurrentUserOwner %@", buf, 0x48u);

              v24 = v45;
              v1 = v48;

              v25 = v46;
            }

            v39 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v57 = v12;
              v58 = 2112;
              v59 = v7;
              _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "resulting share participant %@ for MSASSharingRelationship %@", buf, 0x16u);
            }

            v26 = +[PLNotificationManager sharedManager];
            v40 = [*(v1 + 32) mstreamdInfoDictionary];
            [v26 noteParticipantAcceptanceStatusChanged:v12 fromOldAcceptanceStatus:v25 mstreamdInfo:v40];

            v1 = v48;
            v5 = v50;
          }

          else
          {
            v26 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v7 albumGUID];
              *buf = 138412290;
              v57 = v27;
              _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "WARNING: couldn't find sharedstream collection share with scopeidentifier %@ to set sharingRelationship", buf, 0xCu);
            }
          }

          v4 = v49;
          goto LABEL_39;
        }

        if ([*(v1 + 32) relationshipChangeType] != 2)
        {
          v17 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v41 = [*(v1 + 32) relationshipChangeType];
            *buf = v43;
            v57 = v41;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "ERROR: unknown relationship change type %lld", buf, 0xCu);
          }

LABEL_15:

          goto LABEL_39;
        }

        if (!v12)
        {
          goto LABEL_40;
        }

        [v12 setAcceptanceStatus:3];
LABEL_39:

LABEL_40:
        ++v6;
      }

      while (v4 != v6);
      v42 = [obj countByEnumeratingWithState:&v52 objects:v71 count:16];
      v4 = v42;
    }

    while (v42);
  }
}

- (void)executeSaveServerStateLocallyForSharingInvitationRelationships
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PLCloudSharingInvitationChangeJob *)self MSASSharingRelationships];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "executeSaveServerStateLocallyForSharingRelationships %@", &v5, 0xCu);
  }
}

- (id)_operationQueueForJob
{
  v2 = [(PLCloudSharingInvitationChangeJob *)self jobType];
  if ((v2 - 3) < 2)
  {
    v2 = [objc_opt_class() highPriorityOperationQueue];
  }

  else if ((v2 - 1) <= 1)
  {
    v2 = [objc_opt_class() lowPriorityOperationQueue];
  }

  return v2;
}

- (void)runDaemonSide
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = self;
    v4 = v11;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@ : runDaemonSide %@", buf, 0x16u);
  }

  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudSharingInvitationChangeJob runDaemonSide]"];
  v6 = [(PLCloudSharingInvitationChangeJob *)self _operationQueueForJob];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PLCloudSharingInvitationChangeJob_runDaemonSide__block_invoke;
  v8[3] = &unk_1E7578848;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 addOperationWithBlock:v8];
}

void __50__PLCloudSharingInvitationChangeJob_runDaemonSide__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) jobType];
  if ((v3 - 3) < 2)
  {
    [*(a1 + 32) executeSendServerPendingInvitationsForAlbumWithGUID];
  }

  else if (v3 == 2)
  {
    [*(a1 + 32) executeSaveServerStateLocallyForSharingInvitationRelationships];
  }

  else if (v3 == 1)
  {
    [*(a1 + 32) executeSaveServerStateLocallyForSharingACLRelationships];
  }

  else
  {
    v4 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Error: unknown job type for %@", buf, 0xCu);
    }
  }

  v6.receiver = *(a1 + 32);
  v6.super_class = PLCloudSharingInvitationChangeJob;
  objc_msgSendSuper2(&v6, sel_runDaemonSide);
  [*(a1 + 40) stillAlive];
  objc_autoreleasePoolPop(v2);
}

- (BOOL)shouldArchiveXPCToDisk
{
  v2 = [(PLCloudSharingInvitationChangeJob *)self mstreamdInfoDictionary];
  v3 = v2 != 0;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PLCloudSharingInvitationChangeJob *)self MSASSharingRelationships];
  v6 = [(PLCloudSharingInvitationChangeJob *)self relationshipChangeType];
  v7 = [(PLCloudSharingInvitationChangeJob *)self albumGUID];
  v8 = [(PLCloudSharingInvitationChangeJob *)self resendInvitationGUID];
  v9 = [(PLCloudSharingInvitationChangeJob *)self mstreamdInfoDictionary];
  v10 = [v3 stringWithFormat:@"%@ (MSASSharingRelationships=%@ relationshipChangeType=%lld albumGUID=%@ resendInvitationGUID=%@ mstreamdInfo=%@) ", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = PLCloudSharingInvitationChangeJob;
  v7 = [(PLCloudSharingJob *)&v18 initFromXPCObject:v6 libraryServicesManager:a4];
  if (v7)
  {
    v8 = PLDataFromXPCDictionary();
    v9 = MEMORY[0x1E696ACD0];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v9 pl_safeUnarchiveObjectFromData:v8 classes:v12];

    if (v13)
    {
      [v7 setMSASSharingRelationships:v13];
    }

    [v7 setRelationshipChangeType:{xpc_dictionary_get_int64(v6, propertyKeyRelationshipChangeType)}];
    v14 = PLStringFromXPCDictionary();
    [v7 setAlbumGUID:v14];

    v15 = PLStringFromXPCDictionary();
    [v7 setResendInvitationGUID:v15];

    v16 = PLDictionaryFromXPCDictionary();
    [v7 setMstreamdInfoDictionary:v16];

    [v7 setJobType:{xpc_dictionary_get_int64(v6, propertyKeyJobType)}];
  }

  return v7;
}

- (void)encodeToXPCObject:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PLCloudSharingInvitationChangeJob;
  v4 = a3;
  [(PLDaemonJob *)&v14 encodeToXPCObject:v4];
  v5 = MEMORY[0x1E696ACC8];
  v6 = [(PLCloudSharingInvitationChangeJob *)self MSASSharingRelationships];
  v13 = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v13];
  v8 = v13;

  if (!v7)
  {
    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Failed to archive msASRelationshipsData, error: %@", buf, 0xCu);
    }
  }

  PLXPCDictionarySetData();
  xpc_dictionary_set_int64(v4, propertyKeyRelationshipChangeType, [(PLCloudSharingInvitationChangeJob *)self relationshipChangeType]);
  v10 = [(PLCloudSharingInvitationChangeJob *)self albumGUID];
  PLXPCDictionarySetString();

  v11 = [(PLCloudSharingInvitationChangeJob *)self resendInvitationGUID];
  PLXPCDictionarySetString();

  v12 = [(PLCloudSharingInvitationChangeJob *)self mstreamdInfoDictionary];
  PLXPCDictionarySetDictionary();

  xpc_dictionary_set_int64(v4, propertyKeyJobType, [(PLCloudSharingInvitationChangeJob *)self jobType]);
}

+ (void)resendPendingInvitationWithGUID:(id)a3 albumGUID:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = objc_opt_class();
      v10 = v15;
      v11 = "%@ : cannot resend invitation with nil invitation GUID";
      v12 = v9;
      v13 = 12;
LABEL_8:
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v6)
  {
    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = objc_opt_class();
      v16 = 2112;
      v17 = v5;
      v10 = v15;
      v11 = "%@ : cannot resend invitation %@ with nil album GUID";
      v12 = v9;
      v13 = 22;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = objc_alloc_init(objc_opt_class());
  [v8 setJobType:4];
  [v8 setAlbumGUID:v7];
  [v8 setResendInvitationGUID:v5];
  [v8 setMstreamdInfoDictionary:0];
  [v8 run];

LABEL_10:
}

+ (void)sendServerPendingInvitationsForAlbumWithGUID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setJobType:3];
  [v4 setAlbumGUID:v3];

  [v4 setMstreamdInfoDictionary:0];
  [v4 run];
}

+ (void)saveServerStateLocallyForSharingInvitationRelationships:(id)a3 changeType:(int64_t)a4 info:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_alloc_init(objc_opt_class());
  [v9 setJobType:2];
  [v9 setMSASSharingRelationships:v8];

  [v9 setRelationshipChangeType:a4];
  [v9 setMstreamdInfoDictionary:v7];

  [v9 runAndWaitForMessageToBeSent];
}

+ (void)saveServerStateLocallyForSharingACLRelationships:(id)a3 changeType:(int64_t)a4 info:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_alloc_init(objc_opt_class());
  [v9 setJobType:1];
  [v9 setMSASSharingRelationships:v8];

  [v9 setRelationshipChangeType:a4];
  [v9 setMstreamdInfoDictionary:v7];

  [v9 runAndWaitForMessageToBeSent];
}

@end