@interface PLCloudSharedComment
+ (id)_syncablePredicate;
+ (id)cloudSharedCommentWithGUID:(id)a3 inLibrary:(id)a4;
+ (id)cloudSharedCommentsWithCommentDate:(id)a3 inManagedObjectContext:(id)a4;
+ (id)cloudSharedCommentsWithGUIDs:(id)a3 inLibrary:(id)a4;
+ (id)commentsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(int64_t)a5 inManagedObjectContext:(id)a6;
+ (id)commentsToUploadInManagedObjectContext:(id)a3 limit:(int64_t)a4;
+ (id)insertNewCommentIntoAsset:(id)a3 commentDate:(id)a4 withText:(id)a5 isLike:(BOOL)a6 isMyComment:(BOOL)a7 inLibrary:(id)a8;
+ (id)insertNewCommentWithCommentText:(id)a3 commentDate:(id)a4 isLike:(BOOL)a5 isMyComment:(BOOL)a6 inLibrary:(id)a7;
+ (int64_t)cloudDeletionTypeForTombstone:(id)a3;
- (BOOL)_isInterestingToUser;
- (BOOL)_relationshipsInInvalidState;
- (BOOL)_validateRelationshipConstraintForInsert:(BOOL)a3 error:(id *)a4;
- (BOOL)canBeDeletedByUser;
- (BOOL)isInterestingForAlbumsSorting;
- (BOOL)isLikeBoolValue;
- (BOOL)isSyncableChange;
- (BOOL)matchesCommentText:(id)a3 isLike:(BOOL)a4;
- (BOOL)shouldNotifyAsNotificationWithMediaStreamInfo:(id)a3 asCaptionOnly:(BOOL *)a4;
- (BOOL)supportsCloudUpload;
- (BOOL)updateWithCPLCommentChange:(id)a3 inPhotoLibrary:(id)a4;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (NSString)commenterEmail;
- (NSString)commenterFirstName;
- (NSString)commenterFullName;
- (NSString)commenterLastName;
- (PLCloudFeedCommentsEntry)cloudFeedEntry;
- (PLCloudSharedComment)init;
- (PLCollectionShare)collectionShare;
- (id)asset;
- (id)commenterDisplayName;
- (id)cplCommentChange;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (int64_t)cloudDeletionType;
- (void)awakeFromInsert;
- (void)performDelete;
- (void)prepareForDeletion;
- (void)willSave;
@end

@implementation PLCloudSharedComment

- (BOOL)validateForUpdate:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PLCloudSharedComment;
  v5 = [(PLCloudSharedComment *)&v7 validateForUpdate:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLCloudSharedComment *)self _validateRelationshipConstraintForInsert:0 error:a3];
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PLCloudSharedComment;
  v5 = [(PLCloudSharedComment *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLCloudSharedComment *)self _validateRelationshipConstraintForInsert:1 error:a3];
  }

  return v5;
}

- (BOOL)_validateRelationshipConstraintForInsert:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = [(PLCloudSharedComment *)self _relationshipsInInvalidState];
  v8 = v7;
  if (a4 && v7)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E69BFF48];
    v17 = *MEMORY[0x1E696A578];
    v11 = MEMORY[0x1E696AEC0];
    if (v5)
    {
      v12 = @"insert";
    }

    else
    {
      v12 = @"update";
    }

    v13 = [(PLCloudSharedComment *)self cloudGUID];
    v14 = [v11 stringWithFormat:@"Attempting to %@ an orphaned CloudSharedComment. A CloudSharedComment object should always have an Asset relationship: %@", v12, v13];
    v18[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *a4 = [v9 errorWithDomain:v10 code:71001 userInfo:v15];
  }

  return !v8;
}

- (BOOL)_relationshipsInInvalidState
{
  if (![(PLCloudSharedComment *)self supportsCloudUpload])
  {
    return 0;
  }

  v3 = [(PLCloudSharedComment *)self likedAsset];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PLCloudSharedComment *)self commentedAsset];
    v4 = v5 == 0;
  }

  return v4;
}

- (int64_t)cloudDeletionType
{
  v2 = [(PLCloudSharedComment *)self isLike];
  if (v2)
  {
    v3 = 16;
  }

  else
  {
    v3 = 17;
  }

  return v3;
}

- (id)scopedIdentifier
{
  if ([(PLCloudSharedComment *)self supportsCloudUpload])
  {
    v3 = objc_alloc(MEMORY[0x1E6994BB8]);
    v4 = [(PLCloudSharedComment *)self scopeIdentifier];
    v5 = [(PLCloudSharedComment *)self cloudGUID];
    v6 = [v3 initWithScopeIdentifier:v4 identifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)scopeIdentifier
{
  if ([(PLCloudSharedComment *)self supportsCloudUpload])
  {
    v3 = [(PLCloudSharedComment *)self collectionShare];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 scopeIdentifier];

  return v4;
}

- (BOOL)updateWithCPLCommentChange:(id)a3 inPhotoLibrary:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    [(PLCloudSharedComment *)self setIsLike:0];
    v9 = [v8 commentText];

    [(PLCloudSharedComment *)self setCommentText:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PLCloudSharedComment *)self setIsLike:MEMORY[0x1E695E118]];
      [(PLCloudSharedComment *)self setCommentText:0];
    }
  }

  v10 = [v6 commentDate];
  [(PLCloudSharedComment *)self setCommentDate:v10];

  v11 = [(PLCloudSharedComment *)self asset];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E6994BB8]);
    v14 = [v6 scopedIdentifier];
    v15 = [v14 scopeIdentifier];
    v16 = [v6 assetIdentifier];
    v17 = [v13 initWithScopeIdentifier:v15 identifier:v16];

    v12 = [PLManagedAsset assetWithScopedIdentifier:v17 inLibrary:v7 prefetchResources:0];

    if (!v12)
    {
      v24 = 0;
      goto LABEL_11;
    }
  }

  v18 = [v12 collectionShare];
  v19 = [v6 contributorUserIdentifier];
  v26[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v21 = [PLShareParticipant participantsWithUserIdentifiers:v20 inScope:v18 inPhotoLibrary:v7];

  v22 = [v21 firstObject];
  if (v22)
  {
    [(PLCloudSharedComment *)self setShareParticipant:v22];
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v22, "isCurrentUser")}];
    [(PLCloudSharedComment *)self setIsMyComment:v23];
  }

  [v12 addComment:self];
  v24 = 1;
  [(PLCloudSharedComment *)self setCloudLocalState:1];

LABEL_11:
  return v24;
}

- (id)cplCommentChange
{
  v3 = [(PLCloudSharedComment *)self scopedIdentifier];
  if (v3)
  {
    if ([(PLCloudSharedComment *)self isLikeBoolValue])
    {
      v4 = [MEMORY[0x1E6994B58] newChangeWithScopedIdentifier:v3 changeType:0];
      [(PLCloudSharedComment *)self likedAsset];
    }

    else
    {
      v4 = [MEMORY[0x1E6994C20] newChangeWithScopedIdentifier:v3 changeType:0];
      v5 = [(PLCloudSharedComment *)self commentText];
      [v4 setCommentText:v5];

      [(PLCloudSharedComment *)self commentedAsset];
    }
    v6 = ;
    v7 = [v6 cloudAssetGUID];
    [v4 setAssetIdentifier:v7];

    v8 = [(PLCloudSharedComment *)self commentDate];
    [v4 setCommentDate:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isSyncableChange
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(PLCloudSharedComment *)self supportsCloudUpload])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __40__PLCloudSharedComment_isSyncableChange__block_invoke;
    v15 = &unk_1E75781E8;
    v16 = self;
    pl_dispatch_once();
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(PLCloudSharedComment *)self changedValues];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v17 count:16];
    if (v4)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([isSyncableChange_syncedProperties_86339 containsObject:*(*(&v8 + 1) + 8 * i)])
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v8 objects:v17 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

void __40__PLCloudSharedComment_isSyncableChange__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"isLike", @"commentText", 0}];
  v1 = isSyncableChange_syncedProperties_86339;
  isSyncableChange_syncedProperties_86339 = v0;
}

- (BOOL)supportsCloudUpload
{
  v2 = [(PLCloudSharedComment *)self collectionShare];
  v3 = [v2 collectionShareKind] == 1;

  return v3;
}

- (PLCollectionShare)collectionShare
{
  v2 = [(PLCloudSharedComment *)self asset];
  v3 = [v2 collectionShare];

  return v3;
}

- (void)prepareForDeletion
{
  v6.receiver = self;
  v6.super_class = PLCloudSharedComment;
  [(PLCloudSharedComment *)&v6 prepareForDeletion];
  v3 = [(PLCloudSharedComment *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 mergingChanges] & 1) == 0 && -[PLCloudSharedComment supportsCloudUpload](self, "supportsCloudUpload"))
  {
    v4 = [(PLCloudSharedComment *)self scopedIdentifier];
    v5 = [v4 stringRepresentation];
    [(PLCloudSharedComment *)self setCloudGUID:v5];

    [v3 recordCloudDeletionForObject:self];
  }
}

- (BOOL)matchesCommentText:(id)a3 isLike:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && [(PLCloudSharedComment *)self isLikeBoolValue])
  {
    goto LABEL_6;
  }

  v7 = [(PLCloudSharedComment *)self commentText];
  v8 = v7;
  if (!v6 || !v7)
  {

    goto LABEL_8;
  }

  v9 = [(PLCloudSharedComment *)self commentText];
  v10 = [v9 isEqualToString:v6];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    v12 = [(PLCloudSharedComment *)self commentText];
    v13 = v6 | v12;

    v11 = v13 == 0;
    goto LABEL_9;
  }

LABEL_6:
  v11 = 1;
LABEL_9:

  return v11;
}

- (NSString)commenterFullName
{
  v3 = [(PLCloudSharedComment *)self shareParticipant];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 fullName];
  }

  else
  {
    v6 = [(PLManagedObject *)self photoLibrary];
    v7 = [v6 personInfoManager];
    v8 = [(PLCloudSharedComment *)self commenterHashedPersonID];
    v5 = [v7 fullNameForPersonID:v8];
  }

  return v5;
}

- (NSString)commenterLastName
{
  v3 = [(PLCloudSharedComment *)self shareParticipant];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 nameComponents];
    v6 = [v5 familyName];
  }

  else
  {
    v5 = [(PLManagedObject *)self photoLibrary];
    v7 = [v5 personInfoManager];
    v8 = [(PLCloudSharedComment *)self commenterHashedPersonID];
    v6 = [v7 lastNameForPersonID:v8];
  }

  return v6;
}

- (NSString)commenterFirstName
{
  v3 = [(PLCloudSharedComment *)self shareParticipant];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 nameComponents];
    v6 = [v5 givenName];
  }

  else
  {
    v5 = [(PLManagedObject *)self photoLibrary];
    v7 = [v5 personInfoManager];
    v8 = [(PLCloudSharedComment *)self commenterHashedPersonID];
    v6 = [v7 firstNameForPersonID:v8];
  }

  return v6;
}

- (NSString)commenterEmail
{
  v3 = [(PLCloudSharedComment *)self shareParticipant];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 emailAddress];
  }

  else
  {
    v6 = [(PLManagedObject *)self photoLibrary];
    v7 = [v6 personInfoManager];
    v8 = [(PLCloudSharedComment *)self commenterHashedPersonID];
    v5 = [v7 emailForPersonID:v8];
  }

  return v5;
}

- (void)performDelete
{
  if ([(PLCloudSharedComment *)self canBeDeletedByUser])
  {
    v3 = [(PLManagedObject *)self photoLibrary];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __37__PLCloudSharedComment_performDelete__block_invoke;
    v4[3] = &unk_1E75781E8;
    v4[4] = self;
    [v3 performTransaction:v4];
  }
}

void __37__PLCloudSharedComment_performDelete__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asset];
  [v2 userDeleteCloudSharedComment:*(a1 + 32)];
}

- (BOOL)canBeDeletedByUser
{
  v3 = [(PLCloudSharedComment *)self isDeletable];
  if ([v3 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PLCloudSharedComment *)self asset];
    v4 = [v5 cloudIsMyAsset];
  }

  return v4;
}

- (id)commenterDisplayName
{
  v3 = [(PLCloudSharedComment *)self commenterFirstName];
  v4 = [(PLCloudSharedComment *)self commenterLastName];
  v5 = [(PLCloudSharedComment *)self commenterFullName];
  if ([v5 length])
  {
    v6 = v5;
  }

  else if ([v3 length] || objc_msgSend(v4, "length"))
  {
    v6 = PLLocalizedNameWithFirstAndLastName();
  }

  else
  {
    v6 = [(PLCloudSharedComment *)self commenterEmail];
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_1F0F06D80;
  }

  return v7;
}

- (BOOL)isInterestingForAlbumsSorting
{
  v3 = [(PLCloudSharedComment *)self isMyComment];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    return 1;
  }

  return [(PLCloudSharedComment *)self _isInterestingToUser];
}

- (BOOL)shouldNotifyAsNotificationWithMediaStreamInfo:(id)a3 asCaptionOnly:(BOOL *)a4
{
  v6 = a3;
  v7 = [(PLCloudSharedComment *)self isCaption];
  v8 = [v7 BOOLValue];

  v9 = [v6 valueForKey:*MEMORY[0x1E6998038]];

  LODWORD(v6) = [v9 BOOLValue];
  if (!v6)
  {
    result = [(PLCloudSharedComment *)self _isInterestingToUser];
    if (!a4)
    {
      return result;
    }

    goto LABEL_11;
  }

  v10 = PLPhotoSharingGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    v16 = 0;
    v12 = "Notifications: mstreamd says comment is not interesting, but allowing as caption";
    v13 = &v16;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    v15 = 0;
    v12 = "Notifications: Ignoring comment notification because mstreamd says it's not interesting and is not a caption";
    v13 = &v15;
  }

  _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
LABEL_10:

  result = 0;
  if (!a4)
  {
    return result;
  }

LABEL_11:
  if (!result)
  {
    *a4 = v8;
  }

  return result;
}

- (BOOL)_isInterestingToUser
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PLCloudSharedComment *)self asset];
  if (![v3 isCloudSharedAsset])
  {
    v7 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v3;
      v8 = "Comment marked as not interesting because it's not for a cloudSharedAsset: %@.";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v4 = [v3 cloudIsMyAsset];
  v5 = [(PLCloudSharedComment *)self isMyComment];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v8 = "Ignoring comment notification because it's my comment";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 2;
LABEL_7:
      _os_log_impl(&dword_19BF1F000, v9, v10, v8, &v14, v11);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v4)
  {
    LOBYTE(v12) = 1;
    goto LABEL_10;
  }

  if ([v3 cloudHasCommentsByMe])
  {
    v12 = ![(PLCloudSharedComment *)self isLikeBoolValue];
    goto LABEL_10;
  }

LABEL_9:
  LOBYTE(v12) = 0;
LABEL_10:

  return v12;
}

- (BOOL)isLikeBoolValue
{
  v2 = [(PLCloudSharedComment *)self isLike];
  v3 = [v2 BOOLValue];

  return v3;
}

- (PLCloudFeedCommentsEntry)cloudFeedEntry
{
  if ([(PLCloudSharedComment *)self isLikeBoolValue])
  {
    [(PLCloudSharedComment *)self cloudFeedLikeCommentEntry];
  }

  else
  {
    [(PLCloudSharedComment *)self cloudFeedCommentEntry];
  }
  v3 = ;

  return v3;
}

- (id)asset
{
  v3 = [(PLCloudSharedComment *)self isLike];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    [(PLCloudSharedComment *)self likedAsset];
  }

  else
  {
    [(PLCloudSharedComment *)self commentedAsset];
  }
  v5 = ;

  return v5;
}

- (void)willSave
{
  v5.receiver = self;
  v5.super_class = PLCloudSharedComment;
  [(PLManagedObject *)&v5 willSave];
  v3 = [(PLCloudSharedComment *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 delayedSaveActions];
    [v4 recordCommentForCloudFeedUpdate:self];
  }
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLCloudSharedComment;
  [(PLCloudSharedComment *)&v4 awakeFromInsert];
  v3 = [MEMORY[0x1E69BF320] UUIDString];
  [(PLCloudSharedComment *)self setCloudGUID:v3];
}

- (PLCloudSharedComment)init
{
  v3.receiver = self;
  v3.super_class = PLCloudSharedComment;
  return [(PLCloudSharedComment *)&v3 init];
}

+ (int64_t)cloudDeletionTypeForTombstone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"isLike"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    return 16;
  }

  else
  {
    return 17;
  }
}

+ (id)_syncablePredicate
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", @"likedAsset", @"collectionShare", @"collectionShareKind"];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", @"commentedAsset", @"collectionShare", @"collectionShareKind"];
  v4 = MEMORY[0x1E696AB28];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", v2, 1];
  v10[0] = v5;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", v3, 1];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v8 = [v4 orPredicateWithSubpredicates:v7];

  return v8;
}

+ (id)commentsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(int64_t)a5 inManagedObjectContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__86403;
  v29 = __Block_byref_object_dispose__86404;
  v30 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95__PLCloudSharedComment_commentsMatchingPredicate_sortDescriptors_limit_inManagedObjectContext___block_invoke;
  v18[3] = &unk_1E7576DD0;
  v23 = a1;
  v13 = v10;
  v19 = v13;
  v14 = v11;
  v24 = a5;
  v20 = v14;
  v22 = &v25;
  v15 = v12;
  v21 = v15;
  [v15 performBlockAndWait:v18];
  v16 = v26[5];

  _Block_object_dispose(&v25, 8);

  return v16;
}

void __95__PLCloudSharedComment_commentsMatchingPredicate_sortDescriptors_limit_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [*(a1 + 64) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setFetchBatchSize:100];
  [v4 setPredicate:*(a1 + 32)];
  if (*(a1 + 40))
  {
    [v4 setSortDescriptors:?];
  }

  if (*(a1 + 72) >= 1)
  {
    [v4 setFetchLimit:?];
  }

  v5 = *(a1 + 48);
  v11 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v11];
  v7 = v11;
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v10 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to fetch comments: %@", buf, 0xCu);
    }
  }
}

+ (id)commentsToUploadInManagedObjectContext:(id)a3 limit:(int64_t)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _syncablePredicate];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"cloudLocalState", 0];
  v9 = MEMORY[0x1E696AB28];
  v17[0] = v7;
  v17[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"commentDate" ascending:0];
  v16 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];

  v14 = [a1 commentsMatchingPredicate:v11 sortDescriptors:v13 limit:a4 inManagedObjectContext:v6];

  return v14;
}

+ (id)cloudSharedCommentsWithCommentDate:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K == %@", @"commentDate", a3];
  v9 = [a1 commentsMatchingPredicate:v8 sortDescriptors:0 limit:0 inManagedObjectContext:v7];

  return v9;
}

+ (id)cloudSharedCommentWithGUID:(id)a3 inLibrary:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18[0] = v6;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = [v7 arrayWithObjects:v18 count:1];
  v10 = [a1 cloudSharedCommentsWithGUIDs:v9 inLibrary:v8];

  if ([v10 count] >= 2)
  {
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "WARNING: Found more than one comment with cloudGUID %@, returning last one in array %@", &v14, 0x16u);
    }
  }

  v12 = [v10 lastObject];

  return v12;
}

+ (id)cloudSharedCommentsWithGUIDs:(id)a3 inLibrary:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K IN %@", @"cloudGUID", a3];
  v9 = [v7 managedObjectContext];

  v10 = [a1 commentsMatchingPredicate:v8 sortDescriptors:0 limit:0 inManagedObjectContext:v9];

  return v10;
}

+ (id)insertNewCommentWithCommentText:(id)a3 commentDate:(id)a4 isLike:(BOOL)a5 isMyComment:(BOOL)a6 inLibrary:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [a1 entityName];
  v16 = [v14 managedObjectContext];

  v17 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v15, v16, 0);

  if (v13)
  {
    [v17 setCommentDate:v13];
  }

  else
  {
    v18 = [MEMORY[0x1E695DF00] date];
    [v17 setCommentDate:v18];
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  [v17 setIsMyComment:v19];

  if (v9)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v17 setIsLike:v20];
  }

  else
  {
    [v17 setCommentText:v12];
  }

  return v17;
}

+ (id)insertNewCommentIntoAsset:(id)a3 commentDate:(id)a4 withText:(id)a5 isLike:(BOOL)a6 isMyComment:(BOOL)a7 inLibrary:(id)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if (v14 && ([v14 isCloudSharedAsset] & 1) == 0)
  {
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot insert a comment in an asset that is not a CloudSharedAsset" userInfo:0];
    objc_exception_throw(v27);
  }

  v18 = [a1 entityName];
  v19 = [v17 managedObjectContext];
  v20 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v18, v19, 0);

  if (v15)
  {
    [v20 setCommentDate:v15];
  }

  else
  {
    v21 = [MEMORY[0x1E695DF00] date];
    [v20 setCommentDate:v21];
  }

  v22 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  [v20 setIsMyComment:v22];

  if (v9)
  {
    v23 = [v14 collectionShare];
    v24 = [v23 currentUserParticipant];
    [v20 setShareParticipant:v24];
  }

  if (v10)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v20 setIsLike:v25];

    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    [v20 setCommentText:v16];
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  if (v20)
  {
    [v14 addComment:v20];
  }

LABEL_14:

  return v20;
}

@end