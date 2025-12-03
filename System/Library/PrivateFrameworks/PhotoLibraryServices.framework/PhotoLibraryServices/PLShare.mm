@interface PLShare
+ (BOOL)getShareIfNecessary:(id *)necessary forCPLRecordWithClass:(Class)class scopedIdentifier:(id)identifier inLibrary:(id)library;
+ (BOOL)incrementallyDeleteAndSaveShares:(id)shares logMessagePrefix:(id)prefix error:(id *)error;
+ (BOOL)shouldAllowFetchURLWithScopeChange:(id)change photoLibrary:(id)library error:(id *)error;
+ (BOOL)supportsCPLScopeType:(int64_t)type;
+ (BOOL)validateCPLScopeChange:(id)change;
+ (id)_basePredicateIncludeTrashedShares:(BOOL)shares;
+ (id)_registeredSubclasses;
+ (id)batchedAssetsForShare:(id)share;
+ (id)createOwnedShareWithUUID:(id)d creationDate:(id)date title:(id)title inPhotoLibrary:(id)library;
+ (id)entityName;
+ (id)insertInPhotoLibrary:(id)library;
+ (id)insertOrUpdateShareWithCPLScopeChange:(id)change inPhotoLibrary:(id)library;
+ (id)predicateToExcludeExpiredShares;
+ (id)scopeIdentifierPrefixInLibrary:(id)library;
+ (id)shareWithScopeIdentifier:(id)identifier includeTrashed:(BOOL)trashed inManagedObjectContext:(id)context;
+ (id)shareWithScopedIdentifier:(id)identifier includeTrashed:(BOOL)trashed inManagedObjectContext:(id)context;
+ (id)shareWithShareURL:(id)l includeTrashed:(BOOL)trashed inManagedObjectContext:(id)context;
+ (id)shareWithUUID:(id)d includeTrashed:(BOOL)trashed inManagedObjectContext:(id)context;
+ (id)sharesWithPredicate:(id)predicate fetchLimit:(unint64_t)limit includesPendingChanges:(BOOL)changes propertiesToFetch:(id)fetch inManagedObjectContext:(id)context;
+ (id)sharesWithScopeIdentifiers:(id)identifiers includeTrashed:(BOOL)trashed inManagedObjectContext:(id)context;
+ (int64_t)_cloudDeletionTypeForScopeType:(int64_t)type;
+ (int64_t)_cloudDeletionTypeForStatus:(signed __int16)status;
+ (int64_t)cloudDeletionTypeForTombstone:(id)tombstone;
+ (signed)subclassKind;
+ (void)_abortIfCalledOnBaseClass;
+ (void)_pool_recomputeCachedValuesForShare:(id)share;
+ (void)deleteAllSharesInManagedObjectContext:(id)context;
+ (void)deleteExpiredSharesInManagedObjectContext:(id)context;
+ (void)deleteOldTrashedSharesInManagedObjectContext:(id)context;
+ (void)fetchShareFromShareURL:(id)l inPhotoLibrary:(id)library completionHandler:(id)handler;
+ (void)recomputeCachedValuesForShare:(id)share;
- (BOOL)_shouldRecordCloudDeletion;
- (BOOL)incrementallyDeleteAndSaveWithError:(id *)error;
- (BOOL)isCurrentUserOwner;
- (id)_statusDescription;
- (id)compactDescription;
- (id)cplScopeChange;
- (id)cplShare;
- (id)currentUserParticipant;
- (id)owner;
- (int64_t)cloudDeletionType;
- (int64_t)publicPermission;
- (int64_t)scopeType;
- (void)_updateShareStatusWithCurrentUser:(id)user;
- (void)acceptWithCompletionHandler:(id)handler;
- (void)prepareForDeletion;
- (void)publishWithCompletionHandler:(id)handler;
- (void)recordCloudDeletionIfNeeded;
- (void)recordTrashDate;
- (void)setPublicPermission:(int64_t)permission;
- (void)setScopeType:(int64_t)type;
- (void)trash;
- (void)untrash;
- (void)updateShareWithCPLShare:(id)share inPhotoLibrary:(id)library;
@end

@implementation PLShare

- (id)_statusDescription
{
  status = [(PLShare *)self status];
  if (status > 3)
  {
    return @"owned";
  }

  else
  {
    return off_1E756BF18[status];
  }
}

- (id)compactDescription
{
  v16 = MEMORY[0x1E696AEC0];
  pl_shortDescription = [(NSManagedObject *)self pl_shortDescription];
  uuid = [(PLShare *)self uuid];
  scopeIdentifier = [(PLShare *)self scopeIdentifier];
  title = [(PLShare *)self title];
  status = [(PLShare *)self status];
  shareURL = [(PLShare *)self shareURL];
  pl_redactedShareURL = [shareURL pl_redactedShareURL];
  creationDate = [(PLShare *)self creationDate];
  expiryDate = [(PLShare *)self expiryDate];
  trashedDate = [(PLShare *)self trashedDate];
  ckShareData = [(PLShare *)self ckShareData];
  v12 = [v16 stringWithFormat:@"%@ - UUID: %@, ScopeIdentifier: %@, Title: %@, Status: %d, ShareURL: %@, CreationDate: %@, ExpiryDate: %@, TrashedDate: %@, CKShareData: %lu", pl_shortDescription, uuid, scopeIdentifier, title, status, pl_redactedShareURL, creationDate, expiryDate, trashedDate, objc_msgSend(ckShareData, "length")];

  return v12;
}

- (BOOL)incrementallyDeleteAndSaveWithError:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__39784;
  v25 = __Block_byref_object_dispose__39785;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  managedObjectContext = [(PLShare *)self managedObjectContext];
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__PLShare_incrementallyDeleteAndSaveWithError___block_invoke;
  v12[3] = &unk_1E7578898;
  v7 = managedObjectContext;
  v13 = v7;
  selfCopy = self;
  v15 = &v17;
  v16 = &v21;
  [photoLibrary performBlockAndWait:v12];

  v8 = *(v18 + 24);
  v9 = v22[5];
  if (error && (v8 & 1) == 0)
  {
    v9 = v9;
    *error = v9;
  }

  v10 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v10;
}

void __47__PLShare_incrementallyDeleteAndSaveWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) deleteObject:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 save:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

- (int64_t)cloudDeletionType
{
  v3 = objc_opt_class();
  scopeType = [(PLShare *)self scopeType];

  return [v3 _cloudDeletionTypeForScopeType:scopeType];
}

- (void)untrash
{
  v7 = *MEMORY[0x1E69E9840];
  [(PLShare *)self setTrashedState:0];
  [(PLShare *)self setTrashedDate:0];
  v3 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    compactDescription = [(PLShare *)self compactDescription];
    v5 = 138412290;
    v6 = compactDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "Setting share to untrashed state: %@", &v5, 0xCu);
  }
}

- (void)recordCloudDeletionIfNeeded
{
  if ([(PLShare *)self _shouldRecordCloudDeletion])
  {
    objc_opt_class();
    managedObjectContext = [(PLShare *)self managedObjectContext];
    if (objc_opt_isKindOfClass())
    {
      v4 = managedObjectContext;
    }

    else
    {
      v4 = 0;
    }

    v6 = v4;

    v5 = v6;
    if (v6)
    {
      [v6 recordCloudDeletionForObject:self];
      v5 = v6;
    }
  }
}

- (void)recordTrashDate
{
  v8 = *MEMORY[0x1E69E9840];
  [(PLShare *)self setTrashedState:1];
  date = [MEMORY[0x1E695DF00] date];
  [(PLShare *)self setTrashedDate:date];

  v4 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    compactDescription = [(PLShare *)self compactDescription];
    v6 = 138412290;
    v7 = compactDescription;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Setting share to trashed state: %@", &v6, 0xCu);
  }
}

- (void)trash
{
  [(PLShare *)self recordTrashDate];

  [(PLShare *)self recordCloudDeletionIfNeeded];
}

- (void)_updateShareStatusWithCurrentUser:(id)user
{
  v21 = *MEMORY[0x1E69E9840];
  userCopy = user;
  [objc_opt_class() _abortIfCalledOnBaseClass];
  role = [userCopy role];
  if (role <= 1)
  {
    if (role)
    {
      if (role == 1)
      {
        if ([userCopy acceptanceStatus] != 2)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          compactDescription = [(PLShare *)self compactDescription];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PLShare.m" lineNumber:560 description:{@"Owner %@ of a share %@ should have the accepted status", userCopy, compactDescription}];
        }

        selfCopy4 = self;
        v11 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      v14 = PLBackendSharingGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = userCopy;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Unknown share participant type for %@", buf, 0xCu);
      }
    }

    goto LABEL_25;
  }

  if ((role - 2) >= 2)
  {
    if (role != 4)
    {
      goto LABEL_25;
    }

    v7 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      compactDescription2 = [(PLShare *)self compactDescription];
      *buf = 138412546;
      v18 = userCopy;
      v19 = 2112;
      v20 = compactDescription2;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Administrator participant type for %@ in %@", buf, 0x16u);
    }
  }

  acceptanceStatus = [userCopy acceptanceStatus];
  if (acceptanceStatus > 2)
  {
    if ((acceptanceStatus - 3) >= 3)
    {
      goto LABEL_25;
    }

LABEL_18:
    v12 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      compactDescription3 = [(PLShare *)self compactDescription];
      *buf = 138412546;
      v18 = userCopy;
      v19 = 2112;
      v20 = compactDescription3;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Un-expected status from %@ for share %@", buf, 0x16u);
    }

    selfCopy4 = self;
    v11 = 0;
    goto LABEL_21;
  }

  switch(acceptanceStatus)
  {
    case 0:
      goto LABEL_18;
    case 1:
      selfCopy4 = self;
      v11 = 2;
      goto LABEL_21;
    case 2:
      selfCopy4 = self;
      v11 = 3;
LABEL_21:
      [(PLShare *)selfCopy4 setStatus:v11];
      break;
  }

LABEL_25:
}

- (BOOL)isCurrentUserOwner
{
  owner = [(PLShare *)self owner];
  userIdentifier = [owner userIdentifier];
  currentUserParticipant = [(PLShare *)self currentUserParticipant];
  userIdentifier2 = [currentUserParticipant userIdentifier];
  v7 = userIdentifier == userIdentifier2;

  return v7;
}

- (id)currentUserParticipant
{
  v14 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _abortIfCalledOnBaseClass];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  participants = [(PLShare *)self participants];
  v4 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(participants);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isCurrentUser])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)owner
{
  v14 = *MEMORY[0x1E69E9840];
  [objc_opt_class() _abortIfCalledOnBaseClass];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  participants = [(PLShare *)self participants];
  v4 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(participants);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 role] == 1)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)cplShare
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E6994BC0]);
  shareURL = [(PLShare *)self shareURL];
  [v3 setURL:shareURL];

  v22 = v3;
  [v3 setPublicPermission:{-[PLShare publicPermission](self, "publicPermission")}];
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  participants = [(PLShare *)self participants];
  v7 = [v5 initWithCapacity:{objc_msgSend(participants, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  participants2 = [(PLShare *)self participants];
  v9 = [participants2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(participants2);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x1E6994BC8]);
        emailAddress = [v13 emailAddress];
        v16 = [v14 initWithEmail:emailAddress];

        phoneNumber = [v13 phoneNumber];
        [v16 setPhoneNumber:phoneNumber];

        [v16 setPermission:{objc_msgSend(v13, "permission")}];
        [v16 setRole:{objc_msgSend(v13, "role")}];
        nameComponents = [v13 nameComponents];
        [v16 setNameComponents:nameComponents];

        userIdentifier = [v13 userIdentifier];
        [v16 setUserIdentifier:userIdentifier];

        [v16 setAcceptanceStatus:{objc_msgSend(v13, "acceptanceStatus")}];
        [v16 setIsCurrentUser:{objc_msgSend(v13, "isCurrentUser")}];
        [v7 addObject:v16];
      }

      v10 = [participants2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  [v22 setParticipants:v7];
  ckShareData = [(PLShare *)self ckShareData];
  [v22 setTransportShare:ckShareData];

  return v22;
}

- (void)updateShareWithCPLShare:(id)share inPhotoLibrary:(id)library
{
  v98 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  libraryCopy = library;
  [objc_opt_class() _abortIfCalledOnBaseClass];
  v7 = [shareCopy URL];
  [(PLShare *)self setShareURL:v7];

  -[PLShare setPublicPermission:](self, "setPublicPermission:", [shareCopy publicPermission]);
  transportShare = [shareCopy transportShare];
  [(PLShare *)self setCkShareData:transportShare];

  participants = [(PLShare *)self participants];
  v10 = [participants valueForKey:@"uuid"];
  v71 = [v10 mutableCopy];

  v11 = objc_alloc(MEMORY[0x1E695DF70]);
  participants2 = [shareCopy participants];
  v68 = [v11 initWithCapacity:{objc_msgSend(participants2, "count")}];

  v70 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v66 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v67 = shareCopy;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  participants3 = [shareCopy participants];
  v14 = [participants3 countByEnumeratingWithState:&v84 objects:v97 count:16];
  v15 = off_1E7560000;
  if (v14)
  {
    v16 = v14;
    v17 = *v85;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v85 != v17)
        {
          objc_enumerationMutation(participants3);
        }

        v19 = *(*(&v84 + 1) + 8 * i);
        v20 = [(__objc2_class *)v15[461] participantWithCPLShareParticipant:v19 inShare:self];
        if (v20)
        {
          v21 = v20;
          if ([v20 acceptanceStatus] == 1 && objc_msgSend(v19, "acceptanceStatus") == 2)
          {
            v22 = PLBackendSharingGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              uuid = [v21 uuid];
              *buf = 138543362;
              v92 = uuid;
              _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "Participant acceptance status changes from pending to accepted: %{public}@", buf, 0xCu);
            }

            [v68 addObject:v21];
          }
        }

        else
        {
          v24 = v15[461];
          photoLibrary = [(PLManagedObject *)self photoLibrary];
          managedObjectContext = [photoLibrary managedObjectContext];
          v21 = [(__objc2_class *)v24 insertInManagedObjectContext:managedObjectContext];

          v15 = off_1E7560000;
          [v21 setShare:self];
          uuid2 = [v21 uuid];
          [v70 addObject:uuid2];
        }

        [v21 updateWithCPLShareParticipant:v19 inShare:self];
        uuid3 = [v21 uuid];
        [v71 removeObject:uuid3];

        if ([v19 isCurrentUser])
        {
          v29 = PLBackendSharingGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            uuid4 = [(PLShare *)self uuid];
            uuid5 = [v21 uuid];
            *buf = 138543874;
            v92 = uuid4;
            v93 = 2114;
            v94 = uuid5;
            v95 = 2112;
            v96 = v19;
            _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_INFO, "Updating status for %{public}@ from current user: %{public}@, %@", buf, 0x20u);

            v15 = off_1E7560000;
          }

          [(PLShare *)self _updateShareStatusWithCurrentUser:v19];
        }
      }

      v16 = [participants3 countByEnumeratingWithState:&v84 objects:v97 count:16];
    }

    while (v16);
  }

  if ([v68 count] && -[PLShare isCurrentUserOwner](self, "isCurrentUserOwner"))
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v32 = v68;
    v33 = [v32 countByEnumeratingWithState:&v80 objects:v90 count:16];
    if (!v33)
    {
      goto LABEL_33;
    }

    v34 = v33;
    v35 = *v81;
    while (1)
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v81 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v80 + 1) + 8 * j);
        shortName = [v37 shortName];
        if (shortName)
        {
          v39 = +[PLNotificationManager sharedManager];
          scopeIdentifier = [(PLShare *)self scopeIdentifier];
          v41 = [MEMORY[0x1E695DF00] now];
          [v39 postNotificationForAcceptedSharedLibraryWithScopeIdentifier:scopeIdentifier participantName:shortName library:libraryCopy notificationDeliveryDate:v41];

          v15 = off_1E7560000;
        }

        else
        {
          v39 = PLBackendSharingGetLog();
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          scopeIdentifier = [v37 uuid];
          *buf = 138543362;
          v92 = scopeIdentifier;
          _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Accepted participant does not have a short name for notification: %{public}@", buf, 0xCu);
        }

LABEL_31:
      }

      v34 = [v32 countByEnumeratingWithState:&v80 objects:v90 count:16];
      if (!v34)
      {
LABEL_33:

        break;
      }
    }
  }

  if ([v71 count])
  {
    v42 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      uuid6 = [(PLShare *)self uuid];
      *buf = 138412546;
      v92 = v71;
      v93 = 2112;
      v94 = uuid6;
      _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_INFO, "Deleting participants %@ in share %@", buf, 0x16u);
    }

    v44 = v15[461];
    allObjects = [v71 allObjects];
    v46 = [(__objc2_class *)v44 participantsWithUUIDs:allObjects inPhotoLibrary:libraryCopy];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v47 = v46;
    v48 = [v47 countByEnumeratingWithState:&v76 objects:v89 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v77;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v77 != v50)
          {
            objc_enumerationMutation(v47);
          }

          uuid7 = [*(*(&v76 + 1) + 8 * k) uuid];
          [v66 addObject:uuid7];
        }

        v49 = [v47 countByEnumeratingWithState:&v76 objects:v89 count:16];
      }

      while (v49);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v70 count])
    {
      allObjects2 = [v70 allObjects];
      [PLLibraryScope informRapportToAddShareParticipantUUIDs:allObjects2 photoLibrary:libraryCopy];
    }

    if ([v66 count])
    {
      allObjects3 = [v66 allObjects];
      libraryBundle = [libraryCopy libraryBundle];
      [PLLibraryScope informRapportToRemoveShareParticipantUUIDs:allObjects3 photoLibraryBundle:libraryBundle];
    }
  }

  if ([v66 count])
  {
    v56 = v15[461];
    allObjects4 = [v66 allObjects];
    v58 = [(__objc2_class *)v56 participantsWithUUIDs:allObjects4 inPhotoLibrary:libraryCopy];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v59 = v58;
    v60 = [v59 countByEnumeratingWithState:&v72 objects:v88 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v73;
      do
      {
        for (m = 0; m != v61; ++m)
        {
          if (*v73 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v72 + 1) + 8 * m);
          managedObjectContext2 = [libraryCopy managedObjectContext];
          [managedObjectContext2 deleteObject:v64];
        }

        v61 = [v59 countByEnumeratingWithState:&v72 objects:v88 count:16];
      }

      while (v61);
    }
  }
}

- (id)cplScopeChange
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (int64_t)scopeType
{
  [(PLShare *)self willAccessValueForKey:@"scopeType"];
  v3 = [(PLShare *)self primitiveValueForKey:@"scopeType"];
  integerValue = [v3 integerValue];

  [(PLShare *)self didAccessValueForKey:@"scopeType"];
  return integerValue;
}

- (void)setScopeType:(int64_t)type
{
  [(PLShare *)self willChangeValueForKey:@"scopeType"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(PLShare *)self setPrimitiveValue:v5 forKey:@"scopeType"];

  [(PLShare *)self didChangeValueForKey:@"scopeType"];
}

- (int64_t)publicPermission
{
  [(PLShare *)self willAccessValueForKey:@"publicPermission"];
  v3 = [(PLShare *)self primitiveValueForKey:@"publicPermission"];
  integerValue = [v3 integerValue];

  [(PLShare *)self didAccessValueForKey:@"publicPermission"];
  return integerValue;
}

- (void)setPublicPermission:(int64_t)permission
{
  [(PLShare *)self willChangeValueForKey:@"publicPermission"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:permission];
  [(PLShare *)self setPrimitiveValue:v5 forKey:@"publicPermission"];

  [(PLShare *)self didChangeValueForKey:@"publicPermission"];
}

- (void)acceptWithCompletionHandler:(id)handler
{
  v17[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [objc_opt_class() _abortIfCalledOnBaseClass];
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];
  cloudPhotoLibraryManager = [libraryServicesManager cloudPhotoLibraryManager];

  if (cloudPhotoLibraryManager)
  {
    cplScopeChange = [(PLShare *)self cplScopeChange];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__PLShare_acceptWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E7578038;
    v13 = photoLibrary;
    selfCopy = self;
    v15 = handlerCopy;
    [cloudPhotoLibraryManager acceptCPLShare:cplScopeChange completionHandler:v12];

    v9 = v13;
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E69BFF48];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"PLCloudPhotoLibraryManager is not available";
    cplScopeChange = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v9 = [v10 errorWithDomain:v11 code:41004 userInfo:cplScopeChange];
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

void __39__PLShare_acceptWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__PLShare_acceptWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7578848;
  v5 = v3;
  v6 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PLShare_acceptWithCompletionHandler___block_invoke_86;
  v9[3] = &unk_1E7577C08;
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v4 performTransaction:v12 completionHandler:v9 withPriority:1];
}

void __39__PLShare_acceptWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 40) uuid];
      v4 = [*(a1 + 40) scopeIdentifier];
      v5 = [*(a1 + 40) compactDescription];
      v6 = *(a1 + 32);
      v8 = 138544130;
      v9 = v3;
      v10 = 2114;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Failed to accept share: %{public}@, %{public}@, %@, %@", &v8, 0x2Au);

LABEL_6:
    }
  }

  else
  {
    [*(a1 + 40) setStatus:3];
    v2 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 40) uuid];
      v4 = [*(a1 + 40) scopeIdentifier];
      v7 = [*(a1 + 40) compactDescription];
      v8 = 138543874;
      v9 = v3;
      v10 = 2114;
      v11 = v4;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "Accepted share: %{public}@, %{public}@, %@", &v8, 0x20u);

      goto LABEL_6;
    }
  }
}

- (void)publishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  v6 = PLAbstractMethodException();
  objc_exception_throw(v6);
}

- (BOOL)_shouldRecordCloudDeletion
{
  status = [(PLShare *)self status];
  if (status)
  {
    LOBYTE(status) = [(PLShare *)self scopeType]!= 4 && [(PLShare *)self scopeType]!= 5;
  }

  return status;
}

- (void)prepareForDeletion
{
  v2.receiver = self;
  v2.super_class = PLShare;
  [(PLShare *)&v2 prepareForDeletion];
}

+ (int64_t)_cloudDeletionTypeForStatus:(signed __int16)status
{
  v8 = *MEMORY[0x1E69E9840];
  if ((status - 2) < 2)
  {
    return 7;
  }

  if (status)
  {
    if (status == 1)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid share status for cloud deletetion: %d", 0];
      *buf = 138412290;
      v7 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
    }

    return 0;
  }
}

+ (int64_t)_cloudDeletionTypeForScopeType:(int64_t)type
{
  v12 = *MEMORY[0x1E69E9840];
  if (type > 4)
  {
    if (type > 7)
    {
      if (type == 8)
      {
        return 15;
      }

      if (type != 9)
      {
        return 0;
      }

LABEL_13:
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        type = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid scope type for cloud deletetion: %ld", type];
        *buf = 138412290;
        v11 = type;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
      }

      return 0;
    }

    v5 = 12;
    v6 = 14;
    if (type != 7)
    {
      v6 = 0;
    }

    v7 = type == 5;
  }

  else
  {
    if (type <= 2)
    {
      if (type >= 2)
      {
        if (type == 2)
        {
          return 6;
        }

        else
        {
          return 0;
        }
      }

      goto LABEL_13;
    }

    v5 = 7;
    v6 = 11;
    if (type != 4)
    {
      v6 = 0;
    }

    v7 = type == 3;
  }

  if (v7)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

+ (int64_t)cloudDeletionTypeForTombstone:(id)tombstone
{
  tombstoneCopy = tombstone;
  v5 = [tombstoneCopy objectForKeyedSubscript:@"scopeType"];
  v6 = v5;
  if (v5)
  {
    v7 = [self _cloudDeletionTypeForScopeType:{objc_msgSend(v5, "intValue")}];
  }

  else
  {
    v8 = [tombstoneCopy objectForKeyedSubscript:@"status"];
    v7 = [self _cloudDeletionTypeForStatus:{objc_msgSend(v8, "intValue")}];
  }

  return v7;
}

+ (void)_pool_recomputeCachedValuesForShare:(id)share
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  shareCopy = share;
  obj = [self batchedAssetsForShare:?];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v20 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    LODWORD(v9) = 0;
    v10 = *v22;
    do
    {
      v18 = v9;
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        dateCreated = [v12 dateCreated];
        if (!v6 || [v6 compare:dateCreated] == 1)
        {
          v15 = dateCreated;

          v6 = v15;
        }

        if (!v7 || [v7 compare:dateCreated] == -1)
        {
          v16 = dateCreated;

          v7 = v16;
        }

        if ([v12 isPhoto])
        {
          v8 = (v8 + 1);
        }

        else
        {
          v20 += [v12 isVideo];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = (v18 + v5);
      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v20 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  [shareCopy setStartDate:v6];
  [shareCopy setEndDate:v7];
  [shareCopy setAssetCount:v9];
  [shareCopy setPhotosCount:v8];
  [shareCopy setVideosCount:v20];
}

+ (void)recomputeCachedValuesForShare:(id)share
{
  shareCopy = share;
  v4 = objc_autoreleasePoolPush();
  [self _pool_recomputeCachedValuesForShare:shareCopy];
  objc_autoreleasePoolPop(v4);
}

+ (id)batchedAssetsForShare:(id)share
{
  v23 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  v4 = MEMORY[0x1E695D5E0];
  v5 = +[PLManagedAsset entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  [v6 setFetchBatchSize:100];
  [v6 setReturnsObjectsAsFaults:0];
  v7 = MEMORY[0x1E696AE18];
  assetToSelfKeyPath = [shareCopy assetToSelfKeyPath];
  shareCopy = [v7 predicateWithFormat:@"%K == %@", assetToSelfKeyPath, shareCopy];
  [v6 setPredicate:shareCopy];

  managedObjectContext = [shareCopy managedObjectContext];
  v18 = 0;
  v11 = [managedObjectContext executeFetchRequest:v6 error:&v18];
  v12 = v18;
  if (!v11)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Unable to fetch batchedAssets: %@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E695E0F0];
  }

  v14 = PLBackendGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v11 count];
    shortObjectIDURI = [shareCopy shortObjectIDURI];
    *buf = 134218242;
    v20 = v15;
    v21 = 2112;
    v22 = shortObjectIDURI;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "Batch fetched %tu assets from share %@", buf, 0x16u);
  }

  return v11;
}

+ (BOOL)shouldAllowFetchURLWithScopeChange:(id)change photoLibrary:(id)library error:(id *)error
{
  changeCopy = change;
  libraryCopy = library;
  selfCopy = self;
  v10 = PLAbstractMethodException();
  objc_exception_throw(v10);
}

+ (BOOL)supportsCPLScopeType:(int64_t)type
{
  selfCopy = self;
  v4 = PLAbstractMethodException();
  objc_exception_throw(v4);
}

+ (BOOL)validateCPLScopeChange:(id)change
{
  v20 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    creationDate = [changeCopy creationDate];

    if (creationDate)
    {
LABEL_3:
      v5 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    share = [changeCopy share];
    creationDate2 = [share creationDate];

    if (creationDate2)
    {
      goto LABEL_3;
    }
  }

  v8 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Triggering tap to radar for CPLScopeChange with nil creationDate", buf, 2u);
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = [MEMORY[0x1E6994BB0] descriptionForScopeType:{objc_msgSend(changeCopy, "scopeType")}];
  v11 = [v9 stringWithFormat:@"TTR: Inconsistent %@ scope detected", v10];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E6994BB0] descriptionForScopeType:{objc_msgSend(changeCopy, "scopeType")}];
  scopeIdentifier = [changeCopy scopeIdentifier];
  v15 = [v12 stringWithFormat:@"A %@ scope was detected in an inconsistent state and ignored: %@", v13, scopeIdentifier];

  [PLDiagnostics fileRadarUserNotificationWithHeader:@"Inconsistent Scope State Detected" message:@"Your photo library has experienced an unexpected state radarTitle:please file a Radar against Photos to help us diagnose the issue" radarDescription:v11, v15];
  v16 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v19 = v15;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_FAULT, "%{public}@", buf, 0xCu);
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (void)deleteOldTrashedSharesInManagedObjectContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  date = [MEMORY[0x1E695DF00] date];
  v7 = objc_opt_new();
  [v7 setMonth:-3];
  v8 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v9 = [v8 dateByAddingComponents:v7 toDate:date options:0];

  v10 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v9;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Deleting trashed shares older than %@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"trashedDate != nil AND trashedDate < %@", v9];
  v12 = [self sharesWithPredicate:v11 fetchLimit:0 inManagedObjectContext:contextCopy];
  [self incrementallyDeleteAndSaveShares:v12 logMessagePrefix:@"old trashed" error:0];

  objc_autoreleasePoolPop(v5);
}

+ (void)deleteExpiredSharesInManagedObjectContext:(id)context
{
  contextCopy = context;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E696AE18];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [v5 predicateWithFormat:@"expiryDate != nil AND expiryDate < %@", date];

  v8 = [self sharesWithPredicate:v7 fetchLimit:0 inManagedObjectContext:contextCopy];
  [self incrementallyDeleteAndSaveShares:v8 logMessagePrefix:@"expired" error:0];

  objc_autoreleasePoolPop(v4);
}

+ (void)deleteAllSharesInManagedObjectContext:(id)context
{
  contextCopy = context;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v6 = [self sharesWithPredicate:v5 fetchLimit:0 inManagedObjectContext:contextCopy];

  [self incrementallyDeleteAndSaveShares:v6 logMessagePrefix:@"all" error:0];
  objc_autoreleasePoolPop(v4);
}

+ (BOOL)incrementallyDeleteAndSaveShares:(id)shares logMessagePrefix:(id)prefix error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  sharesCopy = shares;
  prefixCopy = prefix;
  v8 = PLBackendSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v34 = [sharesCopy count];
    v35 = 2112;
    v36 = prefixCopy;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Deleting %lu (%@) shares...", buf, 0x16u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = sharesCopy;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v10)
  {
    v13 = 0;
    v12 = v9;
LABEL_23:

    goto LABEL_24;
  }

  v11 = v10;
  errorCopy = error;
  v12 = 0;
  v13 = 0;
  v14 = *v29;
  do
  {
    v15 = 0;
    v16 = v12;
    do
    {
      if (*v29 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(*(&v28 + 1) + 8 * v15);
      v18 = objc_autoreleasePoolPush();
      v27 = v16;
      v19 = [v17 incrementallyDeleteAndSaveWithError:&v27];
      v12 = v27;

      if (v19)
      {
        ++v13;
      }

      else
      {
        v20 = PLBackendSharingGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v34 = prefixCopy;
          v35 = 2112;
          v36 = v12;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to delete (%@) share: %@", buf, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v18);
      ++v15;
      v16 = v12;
    }

    while (v11 != v15);
    v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v11);

  if (v13 >= 1)
  {
    v21 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v34 = v13;
      v35 = 2112;
      v36 = prefixCopy;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_INFO, "Deleted %lu (%@) shares", buf, 0x16u);
    }
  }

  if (v12)
  {
    if (errorCopy)
    {
      v22 = v12;
      *errorCopy = v12;
    }

    goto LABEL_23;
  }

LABEL_24:
  v23 = v13 == [v9 count];

  return v23;
}

+ (void)fetchShareFromShareURL:(id)l inPhotoLibrary:(id)library completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  libraryCopy = library;
  handlerCopy = handler;
  libraryServicesManager = [libraryCopy libraryServicesManager];
  cloudPhotoLibraryManager = [libraryServicesManager cloudPhotoLibraryManager];

  if (cloudPhotoLibraryManager)
  {
    v13 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      pl_redactedShareURL = [lCopy pl_redactedShareURL];
      *buf = 138412290;
      v26 = pl_redactedShareURL;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "Fetching share from URL: %@", buf, 0xCu);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __67__PLShare_fetchShareFromShareURL_inPhotoLibrary_completionHandler___block_invoke;
    v19[3] = &unk_1E756BEF8;
    v20 = lCopy;
    v23 = handlerCopy;
    selfCopy = self;
    v21 = libraryCopy;
    v22 = cloudPhotoLibraryManager;
    [v22 fetchShareFromShareURL:v20 completionHandler:v19];

    v15 = v20;
  }

  else
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E69BFF48];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"PLCloudPhotoLibraryManager is not available";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v18 = [v16 errorWithDomain:v17 code:41004 userInfo:v15];
    (*(handlerCopy + 2))(handlerCopy, 0, v18);
  }
}

void __67__PLShare_fetchShareFromShareURL_inPhotoLibrary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v22 = a3;
  if (v22)
  {
    v6 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) pl_redactedShareURL];
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Failed to fetch share from %{public}@: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [*(a1 + 64) _registeredSubclasses];
    v8 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v8)
    {
      v10 = *v35;
      *&v9 = 138412546;
      v21 = v9;
LABEL_7:
      v11 = 0;
      while (1)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        if ([v12 supportsCPLScopeType:{objc_msgSend(v5, "scopeType", v21)}])
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v43 = __Block_byref_object_copy__39784;
          v44 = __Block_byref_object_dispose__39785;
          v45 = 0;
          v32[0] = 0;
          v32[1] = v32;
          v32[2] = 0x3032000000;
          v32[3] = __Block_byref_object_copy__39784;
          v32[4] = __Block_byref_object_dispose__39785;
          v33 = 0;
          v13 = [*(a1 + 40) libraryServicesManager];
          v14 = [v13 libraryBundle];
          v15 = +[PLDatabaseContext newShortLivedLibraryWithName:bundle:](PLDatabaseContext, "newShortLivedLibraryWithName:bundle:", "+[PLShare fetchShareFromShareURL:inPhotoLibrary:completionHandler:]_block_invoke", v14);

          v31 = 0;
          v16 = [v12 shouldAllowFetchURLWithScopeChange:v5 photoLibrary:v15 error:&v31];
          v17 = v31;
          if (v16)
          {
            v18 = *(a1 + 48);
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __67__PLShare_fetchShareFromShareURL_inPhotoLibrary_completionHandler___block_invoke_83;
            v24[3] = &unk_1E756BED0;
            v25 = v15;
            v28 = v32;
            v30 = v12;
            v26 = v5;
            v29 = buf;
            v27 = *(a1 + 56);
            [v18 performTransactionOnLibraryScopeSynchronizationQueue:v24];
          }

          else
          {
            v19 = PLBackendSharingGetLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = [*(a1 + 32) pl_redactedShareURL];
              *v38 = v21;
              v39 = v20;
              v40 = 2114;
              v41 = v17;
              _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Not ingesting shareURL: %@ due to %{public}@", v38, 0x16u);
            }

            (*(*(a1 + 56) + 16))();
          }

          _Block_object_dispose(v32, 8);
          _Block_object_dispose(buf, 8);

          if (v16)
          {
            break;
          }
        }

        if (v8 == ++v11)
        {
          v8 = [obj countByEnumeratingWithState:&v34 objects:v46 count:16];
          if (v8)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }
  }
}

void __67__PLShare_fetchShareFromShareURL_inPhotoLibrary_completionHandler___block_invoke_83(uint64_t a1)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__PLShare_fetchShareFromShareURL_inPhotoLibrary_completionHandler___block_invoke_2;
  v11[3] = &unk_1E756BEA8;
  v2 = *(a1 + 72);
  v14 = *(a1 + 56);
  v16 = v2;
  v3 = *(a1 + 32);
  v12 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v13 = v4;
  v15 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PLShare_fetchShareFromShareURL_inPhotoLibrary_completionHandler___block_invoke_3;
  v8[3] = &unk_1E7575F50;
  v7 = *(a1 + 48);
  v6 = v7;
  v9 = v7;
  v10 = *(a1 + 64);
  [v3 performTransactionAndWait:v11 completionHandler:v8];
}

void __67__PLShare_fetchShareFromShareURL_inPhotoLibrary_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 64) insertOrUpdateShareWithCPLScopeChange:*(a1 + 32) inPhotoLibrary:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(*(a1 + 48) + 8) + 40) uuid];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __67__PLShare_fetchShareFromShareURL_inPhotoLibrary_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) autoAcceptShareIfNecessary];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

+ (id)_basePredicateIncludeTrashedShares:(BOOL)shares
{
  if (shares)
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"trashedState", 0];
  }
  v3 = ;

  return v3;
}

+ (id)predicateToExcludeExpiredShares
{
  v2 = MEMORY[0x1E696AE18];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [v2 predicateWithFormat:@"%K == nil OR %K > %@", @"expiryDate", @"expiryDate", date];

  return v4;
}

+ (BOOL)getShareIfNecessary:(id *)necessary forCPLRecordWithClass:(Class)class scopedIdentifier:(id)identifier inLibrary:(id)library
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  libraryCopy = library;
  if ([identifierCopy isInACPLShare])
  {
    managedObjectContext = [libraryCopy managedObjectContext];
    v13 = 1;
    v14 = [self shareWithScopedIdentifier:identifierCopy includeTrashed:1 inManagedObjectContext:managedObjectContext];

    if (!v14)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v15 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v22 = 138543618;
          classCopy2 = class;
          v24 = 2112;
          v25 = identifierCopy;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to find moment share for <%{public}@ %@>", &v22, 0x16u);
        }

LABEL_11:

        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else
  {
    scopeIdentifier = [identifierCopy scopeIdentifier];
    mainScopeIdentifier = [libraryCopy mainScopeIdentifier];
    v18 = [scopeIdentifier isEqualToString:mainScopeIdentifier];

    if ((v18 & 1) == 0)
    {
      if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v15 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          mainScopeIdentifier2 = [libraryCopy mainScopeIdentifier];
          v22 = 138543874;
          classCopy2 = class;
          v24 = 2112;
          v25 = identifierCopy;
          v26 = 2112;
          v27 = mainScopeIdentifier2;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Invalid scope identifier for  <%{public}@ %@> (expecting %@)", &v22, 0x20u);
        }

        goto LABEL_11;
      }

LABEL_12:
      v14 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    v14 = 0;
    v13 = 1;
  }

LABEL_13:
  v20 = v14;
  *necessary = v14;

  return v13;
}

+ (id)sharesWithPredicate:(id)predicate fetchLimit:(unint64_t)limit includesPendingChanges:(BOOL)changes propertiesToFetch:(id)fetch inManagedObjectContext:(id)context
{
  v43 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  fetchCopy = fetch;
  contextCopy = context;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__PLShare_sharesWithPredicate_fetchLimit_includesPendingChanges_propertiesToFetch_inManagedObjectContext___block_invoke;
  aBlock[3] = &unk_1E756BE80;
  v15 = predicateCopy;
  v37 = v15;
  v16 = fetchCopy;
  changesCopy = changes;
  v38 = v16;
  limitCopy = limit;
  v17 = contextCopy;
  v39 = v17;
  v18 = _Block_copy(aBlock);
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = objc_opt_class();
  if (v20 == objc_opt_class())
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    _registeredSubclasses = [self _registeredSubclasses];
    v23 = [_registeredSubclasses countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v30 = v16;
      v31 = v15;
      v25 = *v33;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(_registeredSubclasses);
          }

          entityName = [*(*(&v32 + 1) + 8 * i) entityName];
          v28 = v18[2](v18, entityName);

          if (v28)
          {
            [v19 addObjectsFromArray:v28];
          }
        }

        v24 = [_registeredSubclasses countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v24);
      v16 = v30;
      v15 = v31;
    }
  }

  else
  {
    entityName2 = [self entityName];
    _registeredSubclasses = v18[2](v18, entityName2);

    if (_registeredSubclasses)
    {
      [v19 addObjectsFromArray:_registeredSubclasses];
    }
  }

  return v19;
}

id __106__PLShare_sharesWithPredicate_fetchLimit_includesPendingChanges_propertiesToFetch_inManagedObjectContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:a2];
  [v3 setPredicate:*(a1 + 32)];
  [v3 setPropertiesToFetch:*(a1 + 40)];
  [v3 setIncludesPendingChanges:*(a1 + 64)];
  if (*(a1 + 56))
  {
    [v3 setFetchLimit:?];
  }

  v4 = *(a1 + 48);
  v10 = 0;
  v5 = [v4 executeFetchRequest:v3 error:&v10];
  v6 = v10;
  if (!v5)
  {
    v7 = PLBackendSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch shares with predicate %@: %@", buf, 0x16u);
    }
  }

  return v5;
}

+ (id)shareWithShareURL:(id)l includeTrashed:(BOOL)trashed inManagedObjectContext:(id)context
{
  trashedCopy = trashed;
  v18[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  lCopy = l;
  v10 = [self _basePredicateIncludeTrashedShares:trashedCopy];
  v11 = MEMORY[0x1E696AB28];
  v18[0] = v10;
  lCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"shareURL", lCopy];

  v18[1] = lCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [v11 andPredicateWithSubpredicates:v13];

  v15 = [self sharesWithPredicate:v14 fetchLimit:1 inManagedObjectContext:contextCopy];

  firstObject = [v15 firstObject];

  return firstObject;
}

+ (id)shareWithUUID:(id)d includeTrashed:(BOOL)trashed inManagedObjectContext:(id)context
{
  trashedCopy = trashed;
  v18[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dCopy = d;
  v10 = [self _basePredicateIncludeTrashedShares:trashedCopy];
  v11 = MEMORY[0x1E696AB28];
  v18[0] = v10;
  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uuid", dCopy];

  v18[1] = dCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [v11 andPredicateWithSubpredicates:v13];

  v15 = [self sharesWithPredicate:v14 fetchLimit:1 inManagedObjectContext:contextCopy];

  firstObject = [v15 firstObject];

  return firstObject;
}

+ (id)sharesWithScopeIdentifiers:(id)identifiers includeTrashed:(BOOL)trashed inManagedObjectContext:(id)context
{
  trashedCopy = trashed;
  v17[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  identifiersCopy = identifiers;
  v10 = [self _basePredicateIncludeTrashedShares:trashedCopy];
  v11 = MEMORY[0x1E696AB28];
  v17[0] = v10;
  identifiersCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"scopeIdentifier", identifiersCopy];

  v17[1] = identifiersCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v14 = [v11 andPredicateWithSubpredicates:v13];

  v15 = [self sharesWithPredicate:v14 fetchLimit:0 inManagedObjectContext:contextCopy];

  return v15;
}

+ (id)shareWithScopeIdentifier:(id)identifier includeTrashed:(BOOL)trashed inManagedObjectContext:(id)context
{
  trashedCopy = trashed;
  v18[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  identifierCopy = identifier;
  v10 = [self _basePredicateIncludeTrashedShares:trashedCopy];
  v11 = MEMORY[0x1E696AB28];
  v18[0] = v10;
  identifierCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"scopeIdentifier", identifierCopy];

  v18[1] = identifierCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [v11 andPredicateWithSubpredicates:v13];

  v15 = [self sharesWithPredicate:v14 fetchLimit:1 inManagedObjectContext:contextCopy];

  firstObject = [v15 firstObject];

  return firstObject;
}

+ (id)shareWithScopedIdentifier:(id)identifier includeTrashed:(BOOL)trashed inManagedObjectContext:(id)context
{
  trashedCopy = trashed;
  identifierCopy = identifier;
  contextCopy = context;
  if ([identifierCopy isInACPLShare])
  {
    scopeIdentifier = [identifierCopy scopeIdentifier];
    v11 = [self shareWithScopeIdentifier:scopeIdentifier includeTrashed:trashedCopy inManagedObjectContext:contextCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)insertOrUpdateShareWithCPLScopeChange:(id)change inPhotoLibrary:(id)library
{
  changeCopy = change;
  libraryCopy = library;
  selfCopy = self;
  v9 = PLAbstractMethodException();
  objc_exception_throw(v9);
}

+ (id)createOwnedShareWithUUID:(id)d creationDate:(id)date title:(id)title inPhotoLibrary:(id)library
{
  libraryCopy = library;
  titleCopy = title;
  dateCopy = date;
  dCopy = d;
  [self _abortIfCalledOnBaseClass];
  v14 = [self insertInPhotoLibrary:libraryCopy];

  [v14 setTitle:titleCopy];
  [v14 setCreationDate:dateCopy];

  [v14 setUuid:dCopy];
  [v14 setStatus:1];

  return v14;
}

+ (id)insertInPhotoLibrary:(id)library
{
  libraryCopy = library;
  [self _abortIfCalledOnBaseClass];
  managedObjectContext = [libraryCopy managedObjectContext];
  entityName = [self entityName];
  v7 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, managedObjectContext, 0);

  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [v7 setUuid:uUIDString];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [self scopeIdentifierPrefixInLibrary:libraryCopy];

  uUIDString2 = [MEMORY[0x1E69BF320] UUIDString];
  v12 = [v9 stringWithFormat:@"%@%@", v10, uUIDString2];

  [v7 setScopeIdentifier:v12];

  return v7;
}

+ (id)entityName
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (signed)subclassKind
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

+ (id)scopeIdentifierPrefixInLibrary:(id)library
{
  libraryCopy = library;
  selfCopy = self;
  v6 = PLAbstractMethodException();
  objc_exception_throw(v6);
}

+ (void)_abortIfCalledOnBaseClass
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    selfCopy = self;
    v5 = PLAbstractMethodException();
    objc_exception_throw(v5);
  }
}

+ (id)_registeredSubclasses
{
  if (_registeredSubclasses_onceToken != -1)
  {
    dispatch_once(&_registeredSubclasses_onceToken, &__block_literal_global_39990);
  }

  v3 = _registeredSubclasses_subclasses;

  return v3;
}

void __32__PLShare__registeredSubclasses__block_invoke()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];
  v1 = _registeredSubclasses_subclasses;
  _registeredSubclasses_subclasses = v0;
}

@end