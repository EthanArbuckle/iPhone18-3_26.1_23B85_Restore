@interface PLCloudSharedComment
+ (id)_syncablePredicate;
+ (id)cloudSharedCommentWithGUID:(id)d inLibrary:(id)library;
+ (id)cloudSharedCommentsWithCommentDate:(id)date inManagedObjectContext:(id)context;
+ (id)cloudSharedCommentsWithGUIDs:(id)ds inLibrary:(id)library;
+ (id)commentsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit inManagedObjectContext:(id)context;
+ (id)commentsToUploadInManagedObjectContext:(id)context limit:(int64_t)limit;
+ (id)insertNewCommentIntoAsset:(id)asset commentDate:(id)date withText:(id)text isLike:(BOOL)like isMyComment:(BOOL)comment inLibrary:(id)library;
+ (id)insertNewCommentWithCommentText:(id)text commentDate:(id)date isLike:(BOOL)like isMyComment:(BOOL)comment inLibrary:(id)library;
+ (int64_t)cloudDeletionTypeForTombstone:(id)tombstone;
- (BOOL)_isInterestingToUser;
- (BOOL)_relationshipsInInvalidState;
- (BOOL)_validateRelationshipConstraintForInsert:(BOOL)insert error:(id *)error;
- (BOOL)canBeDeletedByUser;
- (BOOL)isInterestingForAlbumsSorting;
- (BOOL)isLikeBoolValue;
- (BOOL)isSyncableChange;
- (BOOL)matchesCommentText:(id)text isLike:(BOOL)like;
- (BOOL)shouldNotifyAsNotificationWithMediaStreamInfo:(id)info asCaptionOnly:(BOOL *)only;
- (BOOL)supportsCloudUpload;
- (BOOL)updateWithCPLCommentChange:(id)change inPhotoLibrary:(id)library;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
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

- (BOOL)validateForUpdate:(id *)update
{
  v7.receiver = self;
  v7.super_class = PLCloudSharedComment;
  v5 = [(PLCloudSharedComment *)&v7 validateForUpdate:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLCloudSharedComment *)self _validateRelationshipConstraintForInsert:0 error:update];
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)insert
{
  v7.receiver = self;
  v7.super_class = PLCloudSharedComment;
  v5 = [(PLCloudSharedComment *)&v7 validateForInsert:?];
  if (v5)
  {
    LOBYTE(v5) = [(PLCloudSharedComment *)self _validateRelationshipConstraintForInsert:1 error:insert];
  }

  return v5;
}

- (BOOL)_validateRelationshipConstraintForInsert:(BOOL)insert error:(id *)error
{
  insertCopy = insert;
  v18[1] = *MEMORY[0x1E69E9840];
  _relationshipsInInvalidState = [(PLCloudSharedComment *)self _relationshipsInInvalidState];
  v8 = _relationshipsInInvalidState;
  if (error && _relationshipsInInvalidState)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E69BFF48];
    v17 = *MEMORY[0x1E696A578];
    v11 = MEMORY[0x1E696AEC0];
    if (insertCopy)
    {
      v12 = @"insert";
    }

    else
    {
      v12 = @"update";
    }

    cloudGUID = [(PLCloudSharedComment *)self cloudGUID];
    v14 = [v11 stringWithFormat:@"Attempting to %@ an orphaned CloudSharedComment. A CloudSharedComment object should always have an Asset relationship: %@", v12, cloudGUID];
    v18[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v9 errorWithDomain:v10 code:71001 userInfo:v15];
  }

  return !v8;
}

- (BOOL)_relationshipsInInvalidState
{
  if (![(PLCloudSharedComment *)self supportsCloudUpload])
  {
    return 0;
  }

  likedAsset = [(PLCloudSharedComment *)self likedAsset];
  if (likedAsset)
  {
    v4 = 0;
  }

  else
  {
    commentedAsset = [(PLCloudSharedComment *)self commentedAsset];
    v4 = commentedAsset == 0;
  }

  return v4;
}

- (int64_t)cloudDeletionType
{
  isLike = [(PLCloudSharedComment *)self isLike];
  if (isLike)
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
    scopeIdentifier = [(PLCloudSharedComment *)self scopeIdentifier];
    cloudGUID = [(PLCloudSharedComment *)self cloudGUID];
    v6 = [v3 initWithScopeIdentifier:scopeIdentifier identifier:cloudGUID];
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
    collectionShare = [(PLCloudSharedComment *)self collectionShare];
  }

  else
  {
    collectionShare = 0;
  }

  scopeIdentifier = [collectionShare scopeIdentifier];

  return scopeIdentifier;
}

- (BOOL)updateWithCPLCommentChange:(id)change inPhotoLibrary:(id)library
{
  v26[1] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  libraryCopy = library;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = changeCopy;
    [(PLCloudSharedComment *)self setIsLike:0];
    commentText = [v8 commentText];

    [(PLCloudSharedComment *)self setCommentText:commentText];
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

  commentDate = [changeCopy commentDate];
  [(PLCloudSharedComment *)self setCommentDate:commentDate];

  asset = [(PLCloudSharedComment *)self asset];
  if (asset)
  {
    v12 = asset;
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E6994BB8]);
    scopedIdentifier = [changeCopy scopedIdentifier];
    scopeIdentifier = [scopedIdentifier scopeIdentifier];
    assetIdentifier = [changeCopy assetIdentifier];
    v17 = [v13 initWithScopeIdentifier:scopeIdentifier identifier:assetIdentifier];

    v12 = [PLManagedAsset assetWithScopedIdentifier:v17 inLibrary:libraryCopy prefetchResources:0];

    if (!v12)
    {
      v24 = 0;
      goto LABEL_11;
    }
  }

  collectionShare = [v12 collectionShare];
  contributorUserIdentifier = [changeCopy contributorUserIdentifier];
  v26[0] = contributorUserIdentifier;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v21 = [PLShareParticipant participantsWithUserIdentifiers:v20 inScope:collectionShare inPhotoLibrary:libraryCopy];

  firstObject = [v21 firstObject];
  if (firstObject)
  {
    [(PLCloudSharedComment *)self setShareParticipant:firstObject];
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(firstObject, "isCurrentUser")}];
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
  scopedIdentifier = [(PLCloudSharedComment *)self scopedIdentifier];
  if (scopedIdentifier)
  {
    if ([(PLCloudSharedComment *)self isLikeBoolValue])
    {
      v4 = [MEMORY[0x1E6994B58] newChangeWithScopedIdentifier:scopedIdentifier changeType:0];
      [(PLCloudSharedComment *)self likedAsset];
    }

    else
    {
      v4 = [MEMORY[0x1E6994C20] newChangeWithScopedIdentifier:scopedIdentifier changeType:0];
      commentText = [(PLCloudSharedComment *)self commentText];
      [v4 setCommentText:commentText];

      [(PLCloudSharedComment *)self commentedAsset];
    }
    v6 = ;
    cloudAssetGUID = [v6 cloudAssetGUID];
    [v4 setAssetIdentifier:cloudAssetGUID];

    commentDate = [(PLCloudSharedComment *)self commentDate];
    [v4 setCommentDate:commentDate];
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
    selfCopy = self;
    pl_dispatch_once();
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    changedValues = [(PLCloudSharedComment *)self changedValues];
    v4 = [changedValues countByEnumeratingWithState:&v8 objects:v17 count:16];
    if (v4)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(changedValues);
          }

          if ([isSyncableChange_syncedProperties_86339 containsObject:*(*(&v8 + 1) + 8 * i)])
          {
            LOBYTE(v4) = 1;
            goto LABEL_13;
          }
        }

        v4 = [changedValues countByEnumeratingWithState:&v8 objects:v17 count:16];
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
  collectionShare = [(PLCloudSharedComment *)self collectionShare];
  v3 = [collectionShare collectionShareKind] == 1;

  return v3;
}

- (PLCollectionShare)collectionShare
{
  asset = [(PLCloudSharedComment *)self asset];
  collectionShare = [asset collectionShare];

  return collectionShare;
}

- (void)prepareForDeletion
{
  v6.receiver = self;
  v6.super_class = PLCloudSharedComment;
  [(PLCloudSharedComment *)&v6 prepareForDeletion];
  managedObjectContext = [(PLCloudSharedComment *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([managedObjectContext mergingChanges] & 1) == 0 && -[PLCloudSharedComment supportsCloudUpload](self, "supportsCloudUpload"))
  {
    scopedIdentifier = [(PLCloudSharedComment *)self scopedIdentifier];
    stringRepresentation = [scopedIdentifier stringRepresentation];
    [(PLCloudSharedComment *)self setCloudGUID:stringRepresentation];

    [managedObjectContext recordCloudDeletionForObject:self];
  }
}

- (BOOL)matchesCommentText:(id)text isLike:(BOOL)like
{
  likeCopy = like;
  textCopy = text;
  if (likeCopy && [(PLCloudSharedComment *)self isLikeBoolValue])
  {
    goto LABEL_6;
  }

  commentText = [(PLCloudSharedComment *)self commentText];
  v8 = commentText;
  if (!textCopy || !commentText)
  {

    goto LABEL_8;
  }

  commentText2 = [(PLCloudSharedComment *)self commentText];
  v10 = [commentText2 isEqualToString:textCopy];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    commentText3 = [(PLCloudSharedComment *)self commentText];
    v13 = textCopy | commentText3;

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
  shareParticipant = [(PLCloudSharedComment *)self shareParticipant];
  v4 = shareParticipant;
  if (shareParticipant)
  {
    fullName = [shareParticipant fullName];
  }

  else
  {
    photoLibrary = [(PLManagedObject *)self photoLibrary];
    personInfoManager = [photoLibrary personInfoManager];
    commenterHashedPersonID = [(PLCloudSharedComment *)self commenterHashedPersonID];
    fullName = [personInfoManager fullNameForPersonID:commenterHashedPersonID];
  }

  return fullName;
}

- (NSString)commenterLastName
{
  shareParticipant = [(PLCloudSharedComment *)self shareParticipant];
  v4 = shareParticipant;
  if (shareParticipant)
  {
    nameComponents = [shareParticipant nameComponents];
    familyName = [nameComponents familyName];
  }

  else
  {
    nameComponents = [(PLManagedObject *)self photoLibrary];
    personInfoManager = [nameComponents personInfoManager];
    commenterHashedPersonID = [(PLCloudSharedComment *)self commenterHashedPersonID];
    familyName = [personInfoManager lastNameForPersonID:commenterHashedPersonID];
  }

  return familyName;
}

- (NSString)commenterFirstName
{
  shareParticipant = [(PLCloudSharedComment *)self shareParticipant];
  v4 = shareParticipant;
  if (shareParticipant)
  {
    nameComponents = [shareParticipant nameComponents];
    givenName = [nameComponents givenName];
  }

  else
  {
    nameComponents = [(PLManagedObject *)self photoLibrary];
    personInfoManager = [nameComponents personInfoManager];
    commenterHashedPersonID = [(PLCloudSharedComment *)self commenterHashedPersonID];
    givenName = [personInfoManager firstNameForPersonID:commenterHashedPersonID];
  }

  return givenName;
}

- (NSString)commenterEmail
{
  shareParticipant = [(PLCloudSharedComment *)self shareParticipant];
  v4 = shareParticipant;
  if (shareParticipant)
  {
    emailAddress = [shareParticipant emailAddress];
  }

  else
  {
    photoLibrary = [(PLManagedObject *)self photoLibrary];
    personInfoManager = [photoLibrary personInfoManager];
    commenterHashedPersonID = [(PLCloudSharedComment *)self commenterHashedPersonID];
    emailAddress = [personInfoManager emailForPersonID:commenterHashedPersonID];
  }

  return emailAddress;
}

- (void)performDelete
{
  if ([(PLCloudSharedComment *)self canBeDeletedByUser])
  {
    photoLibrary = [(PLManagedObject *)self photoLibrary];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __37__PLCloudSharedComment_performDelete__block_invoke;
    v4[3] = &unk_1E75781E8;
    v4[4] = self;
    [photoLibrary performTransaction:v4];
  }
}

void __37__PLCloudSharedComment_performDelete__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asset];
  [v2 userDeleteCloudSharedComment:*(a1 + 32)];
}

- (BOOL)canBeDeletedByUser
{
  isDeletable = [(PLCloudSharedComment *)self isDeletable];
  if ([isDeletable BOOLValue])
  {
    cloudIsMyAsset = 1;
  }

  else
  {
    asset = [(PLCloudSharedComment *)self asset];
    cloudIsMyAsset = [asset cloudIsMyAsset];
  }

  return cloudIsMyAsset;
}

- (id)commenterDisplayName
{
  commenterFirstName = [(PLCloudSharedComment *)self commenterFirstName];
  commenterLastName = [(PLCloudSharedComment *)self commenterLastName];
  commenterFullName = [(PLCloudSharedComment *)self commenterFullName];
  if ([commenterFullName length])
  {
    commenterEmail = commenterFullName;
  }

  else if ([commenterFirstName length] || objc_msgSend(commenterLastName, "length"))
  {
    commenterEmail = PLLocalizedNameWithFirstAndLastName();
  }

  else
  {
    commenterEmail = [(PLCloudSharedComment *)self commenterEmail];
  }

  if (commenterEmail)
  {
    v7 = commenterEmail;
  }

  else
  {
    v7 = &stru_1F0F06D80;
  }

  return v7;
}

- (BOOL)isInterestingForAlbumsSorting
{
  isMyComment = [(PLCloudSharedComment *)self isMyComment];
  bOOLValue = [isMyComment BOOLValue];

  if (bOOLValue)
  {
    return 1;
  }

  return [(PLCloudSharedComment *)self _isInterestingToUser];
}

- (BOOL)shouldNotifyAsNotificationWithMediaStreamInfo:(id)info asCaptionOnly:(BOOL *)only
{
  infoCopy = info;
  isCaption = [(PLCloudSharedComment *)self isCaption];
  bOOLValue = [isCaption BOOLValue];

  v9 = [infoCopy valueForKey:*MEMORY[0x1E6998038]];

  LODWORD(infoCopy) = [v9 BOOLValue];
  if (!infoCopy)
  {
    result = [(PLCloudSharedComment *)self _isInterestingToUser];
    if (!only)
    {
      return result;
    }

    goto LABEL_11;
  }

  v10 = PLPhotoSharingGetLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
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
  if (!only)
  {
    return result;
  }

LABEL_11:
  if (!result)
  {
    *only = bOOLValue;
  }

  return result;
}

- (BOOL)_isInterestingToUser
{
  v16 = *MEMORY[0x1E69E9840];
  asset = [(PLCloudSharedComment *)self asset];
  if (![asset isCloudSharedAsset])
  {
    v7 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = asset;
      v8 = "Comment marked as not interesting because it's not for a cloudSharedAsset: %@.";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  cloudIsMyAsset = [asset cloudIsMyAsset];
  isMyComment = [(PLCloudSharedComment *)self isMyComment];
  bOOLValue = [isMyComment BOOLValue];

  if (bOOLValue)
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

  if (cloudIsMyAsset)
  {
    LOBYTE(v12) = 1;
    goto LABEL_10;
  }

  if ([asset cloudHasCommentsByMe])
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
  isLike = [(PLCloudSharedComment *)self isLike];
  bOOLValue = [isLike BOOLValue];

  return bOOLValue;
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
  isLike = [(PLCloudSharedComment *)self isLike];
  bOOLValue = [isLike BOOLValue];

  if (bOOLValue)
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
  managedObjectContext = [(PLCloudSharedComment *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delayedSaveActions = [managedObjectContext delayedSaveActions];
    [delayedSaveActions recordCommentForCloudFeedUpdate:self];
  }
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLCloudSharedComment;
  [(PLCloudSharedComment *)&v4 awakeFromInsert];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [(PLCloudSharedComment *)self setCloudGUID:uUIDString];
}

- (PLCloudSharedComment)init
{
  v3.receiver = self;
  v3.super_class = PLCloudSharedComment;
  return [(PLCloudSharedComment *)&v3 init];
}

+ (int64_t)cloudDeletionTypeForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"isLike"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
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

+ (id)commentsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit inManagedObjectContext:(id)context
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  contextCopy = context;
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
  selfCopy = self;
  v13 = predicateCopy;
  v19 = v13;
  v14 = descriptorsCopy;
  limitCopy = limit;
  v20 = v14;
  v22 = &v25;
  v15 = contextCopy;
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

+ (id)commentsToUploadInManagedObjectContext:(id)context limit:(int64_t)limit
{
  v17[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  _syncablePredicate = [self _syncablePredicate];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"cloudLocalState", 0];
  v9 = MEMORY[0x1E696AB28];
  v17[0] = _syncablePredicate;
  v17[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v11 = [v9 andPredicateWithSubpredicates:v10];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"commentDate" ascending:0];
  v16 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];

  v14 = [self commentsMatchingPredicate:v11 sortDescriptors:v13 limit:limit inManagedObjectContext:contextCopy];

  return v14;
}

+ (id)cloudSharedCommentsWithCommentDate:(id)date inManagedObjectContext:(id)context
{
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  date = [v6 predicateWithFormat:@"%K == %@", @"commentDate", date];
  v9 = [self commentsMatchingPredicate:date sortDescriptors:0 limit:0 inManagedObjectContext:contextCopy];

  return v9;
}

+ (id)cloudSharedCommentWithGUID:(id)d inLibrary:(id)library
{
  v18[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v18[0] = dCopy;
  v7 = MEMORY[0x1E695DEC8];
  libraryCopy = library;
  v9 = [v7 arrayWithObjects:v18 count:1];
  v10 = [self cloudSharedCommentsWithGUIDs:v9 inLibrary:libraryCopy];

  if ([v10 count] >= 2)
  {
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = dCopy;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "WARNING: Found more than one comment with cloudGUID %@, returning last one in array %@", &v14, 0x16u);
    }
  }

  lastObject = [v10 lastObject];

  return lastObject;
}

+ (id)cloudSharedCommentsWithGUIDs:(id)ds inLibrary:(id)library
{
  v6 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  v8 = [v6 predicateWithFormat:@"%K IN %@", @"cloudGUID", ds];
  managedObjectContext = [libraryCopy managedObjectContext];

  v10 = [self commentsMatchingPredicate:v8 sortDescriptors:0 limit:0 inManagedObjectContext:managedObjectContext];

  return v10;
}

+ (id)insertNewCommentWithCommentText:(id)text commentDate:(id)date isLike:(BOOL)like isMyComment:(BOOL)comment inLibrary:(id)library
{
  commentCopy = comment;
  likeCopy = like;
  textCopy = text;
  dateCopy = date;
  libraryCopy = library;
  entityName = [self entityName];
  managedObjectContext = [libraryCopy managedObjectContext];

  v17 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, managedObjectContext, 0);

  if (dateCopy)
  {
    [v17 setCommentDate:dateCopy];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    [v17 setCommentDate:date];
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:commentCopy];
  [v17 setIsMyComment:v19];

  if (likeCopy)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v17 setIsLike:v20];
  }

  else
  {
    [v17 setCommentText:textCopy];
  }

  return v17;
}

+ (id)insertNewCommentIntoAsset:(id)asset commentDate:(id)date withText:(id)text isLike:(BOOL)like isMyComment:(BOOL)comment inLibrary:(id)library
{
  commentCopy = comment;
  likeCopy = like;
  assetCopy = asset;
  dateCopy = date;
  textCopy = text;
  libraryCopy = library;
  if (assetCopy && ([assetCopy isCloudSharedAsset] & 1) == 0)
  {
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot insert a comment in an asset that is not a CloudSharedAsset" userInfo:0];
    objc_exception_throw(v27);
  }

  entityName = [self entityName];
  managedObjectContext = [libraryCopy managedObjectContext];
  v20 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, managedObjectContext, 0);

  if (dateCopy)
  {
    [v20 setCommentDate:dateCopy];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    [v20 setCommentDate:date];
  }

  v22 = [MEMORY[0x1E696AD98] numberWithBool:commentCopy];
  [v20 setIsMyComment:v22];

  if (commentCopy)
  {
    collectionShare = [assetCopy collectionShare];
    currentUserParticipant = [collectionShare currentUserParticipant];
    [v20 setShareParticipant:currentUserParticipant];
  }

  if (likeCopy)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v20 setIsLike:v25];

    if (!assetCopy)
    {
      goto LABEL_14;
    }
  }

  else
  {
    [v20 setCommentText:textCopy];
    if (!assetCopy)
    {
      goto LABEL_14;
    }
  }

  if (v20)
  {
    [assetCopy addComment:v20];
  }

LABEL_14:

  return v20;
}

@end