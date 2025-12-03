@interface PLNotification
+ (id)_UNCategoryFromNotificationType:(int64_t)type;
+ (id)requestIdentifierByNotificationType:(int64_t)type keyObjectUUID:(id)d photosBatchID:(id)iD;
- (NSArray)suppressionContexts;
- (NSDictionary)dictionaryRepresentation;
- (NSString)destinationURLString;
- (NSString)keyObjectUUID;
- (NSString)message;
- (NSString)requestIdentifier;
- (NSString)title;
- (PLNotification)init;
- (PLNotification)initWithAssetAdded:(id)added atIndex:(unint64_t)index toAlbum:(id)album;
- (PLNotification)initWithAssetsAdded:(id)added toAlbum:(id)album;
- (PLNotification)initWithAssetsAdded:(id)added toCollectionShare:(id)share;
- (PLNotification)initWithCommentAdded:(id)added;
- (PLNotification)initWithExpiringMomentShareUUIDs:(id)ds thumbnailImageData:(id)data notificationTitle:(id)title notificationSubtitle:(id)subtitle;
- (PLNotification)initWithExpiringMomentShares:(id)shares;
- (PLNotification)initWithInterestingMemoryNotificationWithMemoryUUID:(id)d keyAssetUUID:(id)iD notificationTitle:(id)title notificationSubtitle:(id)subtitle photoLibraryURLString:(id)string;
- (PLNotification)initWithInvitationAlbum:(id)album;
- (PLNotification)initWithInvitationCollectionShare:(id)share;
- (PLNotification)initWithInvitationRecordStatusChanged:(id)changed;
- (PLNotification)initWithLikeAdded:(id)added;
- (PLNotification)initWithMultipleContributorEnabledForAlbum:(id)album;
- (PLNotification)initWithMultipleContributorEnabledForCollectionShare:(id)share;
- (PLNotification)initWithParticipantAcceptanceStatusChanged:(id)changed;
- (double)completionPercentage;
- (id)_initWithCommentsCount:(int64_t)count commentDate:(id)date firstCommentGUID:(id)d toAssetWithUUID:(id)iD photosBatchID:(id)batchID mainAssetIsMine:(BOOL)mine mainAssetIsVideo:(BOOL)video inAlbumWithTitle:(id)self0 albumUUID:(id)self1 albumCloudGUID:(id)self2 assetUUIDs:(id)self3 placeholderAssetUUIDs:(id)self4 lowResThumbAssetUUIDs:(id)self5;
- (id)_initWithLikesCount:(int64_t)count commentDate:(id)date firstCommentGUID:(id)d toAssetWithUUID:(id)iD photosBatchID:(id)batchID mainAssetIsMine:(BOOL)mine mainAssetIsVideo:(BOOL)video inAlbumWithTitle:(id)self0 albumUUID:(id)self1 albumCloudGUID:(id)self2 assetUUIDs:(id)self3 placeholderAssetUUIDs:(id)self4 lowResThumbAssetUUIDs:(id)self5 senderNames:(id)self6 forMultipleAsset:(BOOL)self7 allMultipleAssetIsMine:(BOOL)self8 isMixedType:(BOOL)self9;
- (id)_initWithPhotosAddedNotification:(id)notification mergedWithNotification:(id)withNotification;
- (id)_initWithPhotosAddedNotification:(id)notification mergedWithNotificationDictionary:(id)dictionary;
- (id)_initWithType:(int64_t)type;
- (id)description;
- (id)initCMMInvitationReadyToViewWithMomentShare:(id)share;
- (id)initCMMInvitationWithMomentShare:(id)share;
- (id)initForSharedLibraryExitInitatedByOwnerWithType:(signed __int16)type retentionPolicy:(int64_t)policy ownerName:(id)name;
- (id)initForSharedLibraryParticipantAssetTrashNotificationWithTrashedPhotoCount:(unint64_t)count videoCount:(unint64_t)videoCount itemCount:(unint64_t)itemCount;
- (id)initForSharedLibraryScopeAcceptWithLibraryScopeIdentifier:(id)identifier participantName:(id)name;
- (id)notificationByMergingWithNotification:(id)notification;
- (id)notificationByMergingWithNotificationDictionary:(id)dictionary;
@end

@implementation PLNotification

- (NSString)requestIdentifier
{
  if (self->_notificationType == 3 && [(NSString *)self->_photosBatchID length]&& self->_commentIsCaption && [(NSString *)self->_commentText length])
  {
    v3 = self->_photosBatchID;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_class();
  notificationType = [(PLNotification *)self notificationType];
  keyObjectUUID = [(PLNotification *)self keyObjectUUID];
  v7 = [v4 requestIdentifierByNotificationType:notificationType keyObjectUUID:keyObjectUUID photosBatchID:v3];

  return v7;
}

- (NSString)keyObjectUUID
{
  notificationType = self->_notificationType;
  v4 = @"PhotosChallengeSubmission";
  if (notificationType <= 7)
  {
    if (notificationType >= 6)
    {
      if (notificationType != 6)
      {
        goto LABEL_20;
      }

      interestingMemoryUUID = self->_interestingMemoryUUID;
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if (notificationType <= 12)
  {
    if ((notificationType - 8) >= 3)
    {
      if (notificationType == 12)
      {
        v4 = @"SharedLibrarySuggestions";
      }

      goto LABEL_20;
    }

    interestingMemoryUUID = self->_keyMomentShareUUID;
LABEL_19:
    v4 = interestingMemoryUUID;
    goto LABEL_20;
  }

  if (notificationType <= 14)
  {
    v6 = @"SharedLibraryParticipantAssetTrashNotification";
    if (notificationType != 14)
    {
      v6 = @"PhotosChallengeSubmission";
    }

    if (notificationType == 13)
    {
      v4 = @"SharedLibraryAccepted";
    }

    else
    {
      v4 = v6;
    }

    goto LABEL_20;
  }

  switch(notificationType)
  {
    case 15:
      v4 = @"PhotosChallengeNewQuestions";
      break;
    case 16:
      v4 = @"SharedLibraryExitInitatedByOwner";
      break;
    case 17:
LABEL_9:
      interestingMemoryUUID = self->_albumUUID;
      goto LABEL_19;
  }

LABEL_20:

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PLNotification;
  v3 = [(PLNotification *)&v7 description];
  message = [(PLNotification *)self message];
  v5 = [v3 stringByAppendingFormat:@" - %@", message];

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v40[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_notificationType];
  [(NSDictionary *)v3 setObject:v4 forKey:*MEMORY[0x1E69C0248]];

  albumUUID = self->_albumUUID;
  if (albumUUID)
  {
    [(NSDictionary *)v3 setObject:albumUUID forKey:*MEMORY[0x1E69C0188]];
  }

  albumCloudGUID = self->_albumCloudGUID;
  if (albumCloudGUID)
  {
    [(NSDictionary *)v3 setObject:albumCloudGUID forKey:*MEMORY[0x1E69C0180]];
  }

  if (self->_senderEmailAddress)
  {
    v40[0] = self->_senderEmailAddress;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [(NSDictionary *)v3 setObject:v7 forKey:*MEMORY[0x1E69C0260]];
  }

  title = [(PLNotification *)self title];
  if (title)
  {
    [(NSDictionary *)v3 setObject:title forKey:*MEMORY[0x1E69C0298]];
  }

  message = [(PLNotification *)self message];
  if (message)
  {
    [(NSDictionary *)v3 setObject:message forKey:*MEMORY[0x1E69C0228]];
  }

  date = self->_date;
  if (date)
  {
    [(NSDictionary *)v3 setObject:date forKey:*MEMORY[0x1E69C01E8]];
  }

  originalDate = self->_originalDate;
  if (originalDate)
  {
    [(NSDictionary *)v3 setObject:originalDate forKey:*MEMORY[0x1E69C0258]];
  }

  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    [(NSDictionary *)v3 setObject:expirationDate forKey:*MEMORY[0x1E69C0208]];
  }

  destinationURLString = [(PLNotification *)self destinationURLString];
  if (destinationURLString)
  {
    [(NSDictionary *)v3 setObject:destinationURLString forKey:*MEMORY[0x1E69C01F0]];
  }

  if ([(PLNotification *)self hasThumbnail])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(NSDictionary *)v3 setObject:v14 forKey:*MEMORY[0x1E69C0218]];
  }

  mainAssetUUID = self->_mainAssetUUID;
  if (mainAssetUUID)
  {
    [(NSDictionary *)v3 setObject:mainAssetUUID forKey:*MEMORY[0x1E69C01B0]];
  }

  if (self->_mainAssetIsMine)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(NSDictionary *)v3 setObject:v16 forKey:*MEMORY[0x1E69C01A0]];
  }

  if (self->_mainAssetIsVideo)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(NSDictionary *)v3 setObject:v17 forKey:*MEMORY[0x1E69C01A8]];
  }

  commentDate = self->_commentDate;
  if (commentDate)
  {
    [(NSDictionary *)v3 setObject:commentDate forKey:*MEMORY[0x1E69C01C8]];
  }

  firstCommentGUID = self->_firstCommentGUID;
  if (firstCommentGUID)
  {
    [(NSDictionary *)v3 setObject:firstCommentGUID forKey:*MEMORY[0x1E69C01B8]];
  }

  if (self->_commentCount)
  {
    v20 = MEMORY[0x1E69C01C0];
  }

  else
  {
    if (!self->_assetCount)
    {
      goto LABEL_36;
    }

    v20 = MEMORY[0x1E69C0198];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [(NSDictionary *)v3 setObject:v21 forKey:*v20];

LABEL_36:
  if (self->_commentIsCaption)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(NSDictionary *)v3 setObject:v22 forKey:*MEMORY[0x1E69C01D0]];
  }

  commentText = self->_commentText;
  if (commentText)
  {
    [(NSDictionary *)v3 setObject:commentText forKey:*MEMORY[0x1E69C01E0]];
  }

  suppressionContexts = [(PLNotification *)self suppressionContexts];
  if (suppressionContexts)
  {
    [(NSDictionary *)v3 setObject:suppressionContexts forKey:*MEMORY[0x1E69C0280]];
  }

  if ([(PLNotification *)self isCommentPiggyBackedOnPhotosAddedNotification])
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(NSDictionary *)v3 setObject:v25 forKey:*MEMORY[0x1E69C01D8]];
  }

  if (self->_suppressAlert)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(NSDictionary *)v3 setObject:v26 forKey:*MEMORY[0x1E69C0288]];
  }

  senderNames = self->_senderNames;
  if (senderNames)
  {
    allObjects = [(NSMutableSet *)senderNames allObjects];
    [(NSDictionary *)v3 setObject:allObjects forKey:*MEMORY[0x1E69C0278]];
  }

  if (self->_forMultipleAsset)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(NSDictionary *)v3 setObject:v29 forKey:*MEMORY[0x1E69C0210]];
  }

  if (self->_allMultipleAssetIsMine)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(NSDictionary *)v3 setObject:v30 forKey:*MEMORY[0x1E69C0190]];
  }

  if (self->_isMixedType)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(NSDictionary *)v3 setObject:v31 forKey:*MEMORY[0x1E69C0230]];
  }

  if (self->_offerToReportAsJunk)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(NSDictionary *)v3 setObject:v32 forKey:*MEMORY[0x1E69C0250]];
  }

  interestingMemoryUUID = self->_interestingMemoryUUID;
  if (interestingMemoryUUID)
  {
    [(NSDictionary *)v3 setObject:interestingMemoryUUID forKey:*MEMORY[0x1E69C0220]];
  }

  notificationTitle = self->_notificationTitle;
  if (notificationTitle)
  {
    [(NSDictionary *)v3 setObject:notificationTitle forKey:*MEMORY[0x1E69C0240]];
  }

  notificationSubtitle = self->_notificationSubtitle;
  if (notificationSubtitle)
  {
    [(NSDictionary *)v3 setObject:notificationSubtitle forKey:*MEMORY[0x1E69C0238]];
  }

  notificationDeliveryDate = self->_notificationDeliveryDate;
  if (notificationDeliveryDate)
  {
    [(NSDictionary *)v3 setObject:notificationDeliveryDate forKey:*MEMORY[0x1E69C01F8]];
  }

  if ([(NSData *)self->_thumbnailImageData length])
  {
    [(NSDictionary *)v3 setObject:self->_thumbnailImageData forKey:*MEMORY[0x1E69C0290]];
  }

  requestIdentifier = [(PLNotification *)self requestIdentifier];
  if (requestIdentifier)
  {
    [(NSDictionary *)v3 setObject:requestIdentifier forKey:*MEMORY[0x1E69C0270]];
  }

  v38 = v3;

  return v3;
}

- (NSArray)suppressionContexts
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(PLNotification *)self notificationType]== 6)
  {
    v4 = MEMORY[0x1E69BFFF0];
LABEL_7:
    [array addObject:*v4];
    goto LABEL_8;
  }

  if ([(PLNotification *)self notificationType]!= 10)
  {
    [array addObject:*MEMORY[0x1E69BFFD8]];
    [array addObject:*MEMORY[0x1E69BFFE8]];
    v4 = MEMORY[0x1E69BFFE0];
    goto LABEL_7;
  }

  if (self->_keyMomentShareUUID)
  {
    v5 = PLSuppressionContextForMomentShareUUID();
    [array addObject:v5];
  }

LABEL_8:

  return array;
}

- (NSString)destinationURLString
{
  v13 = *MEMORY[0x1E69E9840];
  destinationURLString = self->_destinationURLString;
  if (destinationURLString)
  {
    v3 = destinationURLString;
    goto LABEL_3;
  }

  notificationType = self->_notificationType;
  v3 = @"photos://cloudfeed?source=notification";
  if (notificationType > 5)
  {
    if (notificationType <= 13)
    {
      if (notificationType != 6)
      {
        if (notificationType == 11)
        {
          v3 = @"photos://photoschallengesubmission?source=notification";
          goto LABEL_3;
        }

        if (notificationType == 12)
        {
          v3 = @"photos://forYou?type=sharedLibrarySuggestions&source=notification";
          goto LABEL_3;
        }

        goto LABEL_26;
      }

      v7 = @"photos://memory?uuid=%@&source=notification";
      v8 = 176;
      goto LABEL_25;
    }

    switch(notificationType)
    {
      case 14:
        v3 = @"photos://album?name=recently-deleted";
        goto LABEL_3;
      case 15:
        v3 = @"photos://photoschallenge?source=notification";
        goto LABEL_3;
      case 17:
        goto LABEL_3;
    }
  }

  else
  {
    if (notificationType > 2)
    {
      if ((notificationType - 4) >= 2)
      {
        if (notificationType != 3)
        {
          goto LABEL_26;
        }

        v7 = @"photos://cloudfeed?revealassetuuid=%@&source=notification";
        v8 = 56;
      }

      else
      {
        v7 = @"photos://cloudfeed?revealcommentguid=%@&source=notification";
        v8 = 120;
      }

LABEL_25:
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:v7, *(&self->super.isa + v8)];
      if (v3)
      {
        goto LABEL_3;
      }

      goto LABEL_26;
    }

    if ((notificationType - 1) < 2)
    {
      goto LABEL_3;
    }

    if (!notificationType)
    {
      v7 = @"photos://cloudfeed?invitationalbumuuid=%@&source=notification";
      v8 = 280;
      goto LABEL_25;
    }
  }

LABEL_26:
  v9 = PLSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = self->_notificationType;
    *buf = 134217984;
    v12 = v10;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Unknown notification type: %ld", buf, 0xCu);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

- (NSString)message
{
  v2 = 0;
  switch(self->_notificationType)
  {
    case 0:
      senderName = self->_senderName;
      if (!senderName)
      {
        senderName = &stru_1F0F06D80;
      }

      v5 = senderName;
      albumTitle = self->_albumTitle;
      if (!albumTitle)
      {
        albumTitle = &stru_1F0F06D80;
      }

      anyObject = albumTitle;
      if (![(__CFString *)v5 length]|| ![(__CFString *)anyObject length])
      {
        [(__CFString *)v5 length];
      }

      v33 = PLServicesLocalizedFrameworkStringForAssetsd();
      v2 = PFLocalizedStringWithValidatedFormat();

      goto LABEL_80;
    case 1:
      v12 = self->_senderName;
      if (!v12)
      {
        v12 = &stru_1F0F06D80;
      }

      v5 = v12;
      v13 = self->_albumTitle;
      if (!v13)
      {
        v13 = &stru_1F0F06D80;
      }

      v14 = v13;
      invitationState = self->_invitationState;
      if (invitationState != 2 && invitationState != 4)
      {
        goto LABEL_24;
      }

      goto LABEL_46;
    case 2:
    case 0xBLL:
    case 0xFLL:
      goto LABEL_63;
    case 3:
      [(NSString *)self->_commentText length];
      goto LABEL_29;
    case 4:
      commentCount = self->_commentCount;
      if (commentCount == 1)
      {
        if (self->_commentText)
        {
          v5 = PLServicesLocalizedFrameworkStringForAssetsd();
          goto LABEL_67;
        }

        goto LABEL_29;
      }

      if (commentCount >= 1)
      {
LABEL_29:
        v5 = PLServicesLocalizedFrameworkStringForAssetsd();
        goto LABEL_88;
      }

LABEL_52:
      v2 = 0;
      goto LABEL_91;
    case 5:
      v16 = [(NSMutableSet *)self->_senderNames count];
      if (self->_forMultipleAsset)
      {
        if (v16 == 1)
        {
          v5 = PLServicesLocalizedFrameworkStringForAssetsd();
          anyObject = [(NSMutableSet *)self->_senderNames anyObject];
          v2 = PFLocalizedStringWithValidatedFormat();
LABEL_80:

LABEL_90:
          goto LABEL_91;
        }

        if (self->_allMultipleAssetIsMine)
        {
          if (self->_isMixedType)
          {
            v30 = @"NEW_LIKES_ADDED_MY_ITEMS";
            goto LABEL_99;
          }

          mainAssetIsVideo = self->_mainAssetIsVideo;
          v36 = @"NEW_LIKES_ADDED_MY_PHOTOS";
          v37 = @"NEW_LIKES_ADDED_MY_VIDEOS";
        }

        else
        {
          if (self->_isMixedType)
          {
            v30 = @"NEW_LIKES_ADDED_NOT_MY_ITEMS";
            goto LABEL_99;
          }

          mainAssetIsVideo = self->_mainAssetIsVideo;
          v36 = @"NEW_LIKES_ADDED_NOT_MY_PHOTOS";
          v37 = @"NEW_LIKES_ADDED_NOT_MY_VIDEOS";
        }

        if (mainAssetIsVideo)
        {
          v30 = v37;
        }

        else
        {
          v30 = v36;
        }

        goto LABEL_99;
      }

      v23 = self->_mainAssetIsVideo;
      if (v16 == 1)
      {
        v24 = @"NEW_LIKE_ADDED_NOT_MY_PHOTO";
        v25 = !v23;
        v26 = @"NEW_LIKE_ADDED_MY_PHOTO";
        if (!v25)
        {
          v24 = @"NEW_LIKE_ADDED_NOT_MY_VIDEO";
          v26 = @"NEW_LIKE_ADDED_MY_VIDEO";
        }

        if (self->_mainAssetIsMine)
        {
          v27 = v26;
        }

        else
        {
          v27 = v24;
        }

        v5 = v27;
        v14 = PLServicesLocalizedFrameworkStringForAssetsd();
        anyObject2 = [(NSMutableSet *)self->_senderNames anyObject];
LABEL_47:
        v2 = PFStringWithValidatedFormat();

LABEL_48:
        goto LABEL_90;
      }

      v31 = @"NEW_LIKES_ADDED_NOT_MY_PHOTO";
      v25 = !v23;
      v32 = @"NEW_LIKES_ADDED_MY_PHOTO";
      if (!v25)
      {
        v31 = @"NEW_LIKES_ADDED_NOT_MY_VIDEO";
        v32 = @"NEW_LIKES_ADDED_MY_VIDEO";
      }

      if (self->_mainAssetIsMine)
      {
        v30 = v32;
      }

      else
      {
        v30 = v31;
      }

LABEL_99:
      v29 = v30;
      v38 = PLServicesLocalizedFrameworkStringForAssetsd();
      v2 = PFLocalizedStringWithValidatedFormat();

      goto LABEL_100;
    case 6:
      v17 = self->_notificationSubtitle;
      goto LABEL_84;
    case 8:
      v2 = &stru_1F0F06D80;
      goto LABEL_91;
    case 9:
      v2 = self->_notificationSubtitle;
      if (v2)
      {
        goto LABEL_91;
      }

      [(NSArray *)self->_momentShareUUIDs count];
      v5 = PLServicesLocalizedFrameworkStringForAssetsd();
      goto LABEL_67;
    case 0xALL:
      if ([(NSString *)self->_momentShareOwnerLocalizedName length])
      {
        goto LABEL_29;
      }

LABEL_63:
      v17 = PLServicesLocalizedFrameworkStringForAssetsd();
      goto LABEL_84;
    case 0xCLL:
      goto LABEL_83;
    case 0xDLL:
      if (!self->_participantName)
      {
        goto LABEL_52;
      }

      v5 = PLServicesSharedLibraryLocalizedFrameworkString();
      goto LABEL_67;
    case 0xELL:
      trashedAssetVideoCount = self->_trashedAssetVideoCount;
      if (trashedAssetVideoCount)
      {
        trashedAssetPhotoCount = self->_trashedAssetPhotoCount;
        trashedAssetItemCount = self->_trashedAssetItemCount;
        if (!(trashedAssetPhotoCount | trashedAssetItemCount))
        {
          if (trashedAssetVideoCount == 1)
          {
            goto LABEL_83;
          }

LABEL_87:
          v5 = PLServicesSharedLibraryLocalizedFrameworkString();
LABEL_88:
          v28 = PFLocalizedStringWithValidatedFormat();
LABEL_89:
          v2 = v28;
          goto LABEL_90;
        }
      }

      else
      {
        trashedAssetItemCount = self->_trashedAssetItemCount;
        trashedAssetPhotoCount = self->_trashedAssetPhotoCount;
        if (!trashedAssetItemCount)
        {
          if (trashedAssetPhotoCount == 1)
          {
            goto LABEL_83;
          }

          goto LABEL_87;
        }
      }

      if (trashedAssetPhotoCount + trashedAssetVideoCount + trashedAssetItemCount == 1)
      {
LABEL_83:
        v17 = PLServicesSharedLibraryLocalizedFrameworkString();
LABEL_84:
        v2 = v17;
        goto LABEL_91;
      }

      v29 = PLServicesSharedLibraryLocalizedFrameworkString();
      v2 = PFLocalizedStringWithValidatedFormat();
LABEL_100:

LABEL_91:

      return v2;
    case 0x10:
      exitType = self->_exitType;
      if (exitType == 2)
      {
        if (self->_exitRetentionPolicy < 3uLL)
        {
LABEL_65:
          v5 = PLServicesSharedLibraryLocalizedFrameworkString();
          if (v5 && self->_participantName)
          {
LABEL_67:
            v28 = PFStringWithValidatedFormat();
            goto LABEL_89;
          }

LABEL_69:
          v2 = 0;
          goto LABEL_90;
        }
      }

      else if (exitType == 3 && self->_exitRetentionPolicy < 3uLL)
      {
        goto LABEL_65;
      }

      v5 = 0;
      goto LABEL_69;
    case 0x11:
      v19 = self->_senderName;
      if (!v19)
      {
        v19 = &stru_1F0F06D80;
      }

      v5 = v19;
      v20 = self->_albumTitle;
      if (!v20)
      {
        v20 = &stru_1F0F06D80;
      }

      v14 = v20;
      acceptanceStatus = self->_acceptanceStatus;
      if (acceptanceStatus != 2 && acceptanceStatus != 5)
      {
LABEL_24:
        v2 = 0;
        goto LABEL_48;
      }

LABEL_46:
      anyObject2 = PLServicesLocalizedFrameworkStringForAssetsd();
      goto LABEL_47;
    default:
      goto LABEL_91;
  }
}

- (NSString)title
{
  v3 = 0;
  switch(self->_notificationType)
  {
    case 0:
    case 0xBLL:
    case 0xFLL:
      goto LABEL_8;
    case 1:
    case 8:
    case 0x11:
      senderName = self->_senderName;
      goto LABEL_7;
    case 2:
    case 3:
    case 4:
    case 5:
      senderName = self->_albumTitle;
      goto LABEL_7;
    case 6:
      senderName = self->_notificationTitle;
      goto LABEL_7;
    case 9:
    case 0xALL:
      senderName = self->_notificationTitle;
      if (senderName)
      {
LABEL_7:
        v3 = senderName;
      }

      else
      {
LABEL_8:
        v3 = PLServicesLocalizedFrameworkStringForAssetsd();
      }

      break;
    case 0xCLL:
    case 0xDLL:
    case 0xELL:
      goto LABEL_11;
    case 0x10:
      exitType = self->_exitType;
      if (exitType == 2 || exitType == 3)
      {
LABEL_11:
        v3 = PLServicesSharedLibraryLocalizedFrameworkString();
      }

      else
      {
        v3 = 0;
      }

      break;
    default:
      break;
  }

  return v3;
}

- (double)completionPercentage
{
  assetCount = self->_assetCount;
  v4 = [(NSMutableOrderedSet *)self->_placeholderAssetUUIDs count];
  v5 = [(NSMutableOrderedSet *)self->_lowResThumbAssetUUIDs count];
  if (assetCount)
  {
    return (v5 + v4) / assetCount;
  }

  else
  {
    return 0.0;
  }
}

- (id)notificationByMergingWithNotificationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  originalDate = [(PLNotification *)self originalDate];
  v6 = *MEMORY[0x1E69C0258];
  v7 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0258]];
  v8 = v7;
  if (originalDate)
  {
    if (v7)
    {
      [originalDate timeIntervalSinceDate:v7];
      if (v9 > 14400.0)
      {
        v14 = 0;
        goto LABEL_50;
      }
    }
  }

  v10 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0248]];
  notificationType = [v10 integerValue];

  v12 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0188]];
  v13 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0290]];
  if (self->_notificationType == notificationType)
  {
    if (notificationType == 3)
    {
      if ([(NSString *)self->_albumUUID isEqualToString:v12])
      {
        v14 = [[PLNotification alloc] _initWithPhotosAddedNotification:self mergedWithNotificationDictionary:dictionaryCopy];
        thumbnailImageData = [v14 thumbnailImageData];

        if (!thumbnailImageData && v13)
        {
          [v14 setThumbnailImageData:v13];
        }

        v16 = [dictionaryCopy objectForKey:v6];
        [v14 setOriginalDate:v16];
        goto LABEL_48;
      }

      notificationType = self->_notificationType;
    }

    if ((notificationType & 0xFFFFFFFFFFFFFFFELL) == 4 && [(NSString *)self->_albumUUID isEqualToString:v12])
    {
      v17 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C01C8]];
      v63 = [(NSDate *)self->_commentDate earlierDate:v17];
      v59 = v17;
      if ([v63 isEqualToDate:v17])
      {
        v18 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C01B8]];
      }

      else
      {
        v18 = self->_firstCommentGUID;
      }

      v19 = v18;
      v20 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C01C0]];
      v58 = v20;
      if (v20)
      {
        integerValue = [v20 integerValue];
      }

      else
      {
        integerValue = 0;
      }

      commentCount = self->_commentCount;
      v21 = [(NSMutableSet *)self->_assetUUIDs mutableCopy];
      v65 = [(NSMutableOrderedSet *)self->_placeholderAssetUUIDs mutableCopy];
      v61 = [(NSMutableOrderedSet *)self->_lowResThumbAssetUUIDs mutableCopy];
      v22 = [MEMORY[0x1E695DFA8] set];
      v23 = v22;
      if (self->_senderNames)
      {
        [v22 unionSet:?];
      }

      v64 = v23;
      v24 = *MEMORY[0x1E69C0278];
      v25 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0278]];

      if (v25)
      {
        v26 = [dictionaryCopy objectForKey:v24];
        [v64 addObjectsFromArray:v26];
      }

      v27 = *MEMORY[0x1E69C0210];
      v28 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0210]];

      if (v28)
      {
        v29 = [dictionaryCopy objectForKey:v27];
        bOOLValue = [v29 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v60 = 1;
      if (!self->_forMultipleAsset && (bOOLValue & 1) == 0)
      {
        mainAssetUUID = self->_mainAssetUUID;
        v32 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C01B0]];
        v60 = ![(NSString *)mainAssetUUID isEqualToString:v32];
      }

      v33 = *MEMORY[0x1E69C0230];
      v34 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0230]];

      if (v34)
      {
        v35 = [dictionaryCopy objectForKey:v33];
        bOOLValue2 = [v35 BOOLValue];
      }

      else
      {
        bOOLValue2 = 0;
      }

      mainAssetIsVideo = self->_isMixedType | bOOLValue2;
      v62 = v19;
      v57 = v21;
      if ((mainAssetIsVideo & 1) == 0 && ((v60 ^ 1) & 1) == 0)
      {
        mainAssetIsVideo = self->_mainAssetIsVideo;
      }

      v54 = mainAssetIsVideo;
      v38 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C01A0]];
      bOOLValue3 = [v38 BOOLValue];

      v40 = *MEMORY[0x1E69C0190];
      v41 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0190]];

      v42 = (v41 != 0) | bOOLValue3;
      if (v41 && (bOOLValue3 & 1) == 0)
      {
        v43 = [dictionaryCopy objectForKey:v40];
        v42 = v43 != 0;
      }

      v44 = self->_notificationType;
      if (v44 == 5)
      {
        v47 = self->_allMultipleAssetIsMine & v42;
        v48 = [PLNotification alloc];
        BYTE2(v53) = v54 & 1;
        BYTE1(v53) = v47;
        LOBYTE(v53) = v60;
        LOBYTE(v52) = self->_mainAssetIsVideo;
        v46 = [PLNotification _initWithLikesCount:v48 commentDate:"_initWithLikesCount:commentDate:firstCommentGUID:toAssetWithUUID:photosBatchID:mainAssetIsMine:mainAssetIsVideo:inAlbumWithTitle:albumUUID:albumCloudGUID:assetUUIDs:placeholderAssetUUIDs:lowResThumbAssetUUIDs:senderNames:forMultipleAsset:allMultipleAssetIsMine:isMixedType:" firstCommentGUID:commentCount + integerValue toAssetWithUUID:v63 photosBatchID:v62 mainAssetIsMine:self->_mainAssetUUID mainAssetIsVideo:self->_photosBatchID inAlbumWithTitle:self->_mainAssetIsMine albumUUID:v52 albumCloudGUID:self->_albumTitle assetUUIDs:self->_albumUUID placeholderAssetUUIDs:self->_albumCloudGUID lowResThumbAssetUUIDs:v57 senderNames:v65 forMultipleAsset:v61 allMultipleAssetIsMine:v64 isMixedType:v53];
      }

      else
      {
        if (v44 != 4)
        {
          v14 = 0;
          goto LABEL_47;
        }

        v45 = [PLNotification alloc];
        LOBYTE(v52) = self->_mainAssetIsVideo;
        v46 = [(PLNotification *)v45 _initWithCommentsCount:commentCount + integerValue commentDate:v63 firstCommentGUID:v62 toAssetWithUUID:self->_mainAssetUUID photosBatchID:self->_photosBatchID mainAssetIsMine:self->_mainAssetIsMine mainAssetIsVideo:v52 inAlbumWithTitle:self->_albumTitle albumUUID:self->_albumUUID albumCloudGUID:self->_albumCloudGUID assetUUIDs:v57 placeholderAssetUUIDs:v65 lowResThumbAssetUUIDs:v61];
      }

      v14 = v46;
LABEL_47:
      [v14 setOriginalDate:originalDate];
      v49 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0288]];
      bOOLValue4 = [v49 BOOLValue];

      [v14 setSuppressAlert:(self->_suppressAlert | bOOLValue4) & 1];
      [v14 setThumbnailImageData:v13];

      v16 = v59;
LABEL_48:

      goto LABEL_49;
    }
  }

  v14 = 0;
LABEL_49:

LABEL_50:

  return v14;
}

- (id)notificationByMergingWithNotification:(id)notification
{
  notificationCopy = notification;
  v5 = notificationCopy;
  if (!notificationCopy)
  {
    goto LABEL_26;
  }

  notificationType = [(PLNotification *)notificationCopy notificationType];
  notificationType = self->_notificationType;
  if (notificationType != 3 || (v8 = [(NSString *)self->_albumUUID isEqualToString:v5->_albumUUID], notificationType = self->_notificationType, !v8))
  {
    v12 = notificationType == notificationType && (notificationType & 0xFFFFFFFFFFFFFFFELL) == 4;
    if (!v12 || ![(NSString *)self->_albumUUID isEqualToString:v5->_albumUUID]|| self->_commentIsCaption || v5->_commentIsCaption)
    {
      goto LABEL_26;
    }

    selfCopy = self;
    selfCopy2 = [(NSDate *)selfCopy->_commentDate earlierDate:v5->_commentDate];
    selfCopy3 = selfCopy;
    if ([(PLNotification *)selfCopy2 isEqualToDate:v5->_commentDate])
    {
      selfCopy3 = v5;
    }

    commentCount = v5->_commentCount;
    v42 = selfCopy->_commentCount;
    originalDate = selfCopy->_originalDate;
    if (originalDate)
    {
      v15 = [(NSDate *)originalDate earlierDate:v5->_originalDate];
      thumbnailImageData2 = [v15 copy];
    }

    else
    {
      thumbnailImageData2 = [(NSDate *)v5->_originalDate copy];
    }

    v24 = [(NSMutableSet *)selfCopy->_assetUUIDs mutableCopy];
    [v24 unionSet:v5->_assetUUIDs];
    v25 = [(NSMutableOrderedSet *)selfCopy->_placeholderAssetUUIDs mutableCopy];
    [v25 unionOrderedSet:v5->_placeholderAssetUUIDs];
    v43 = [(NSMutableOrderedSet *)selfCopy->_lowResThumbAssetUUIDs mutableCopy];
    [v43 unionOrderedSet:v5->_lowResThumbAssetUUIDs];
    v26 = [MEMORY[0x1E695DFA8] set];
    v27 = v26;
    if (selfCopy->_senderNames)
    {
      [v26 unionSet:?];
    }

    if (v5->_senderNames)
    {
      [v27 unionSet:?];
    }

    v44 = v24;
    if (selfCopy->_forMultipleAsset || v5->_forMultipleAsset)
    {
      v28 = 1;
    }

    else
    {
      v28 = ![(NSString *)selfCopy->_mainAssetUUID isEqualToString:v5->_mainAssetUUID];
    }

    if (selfCopy->_isMixedType)
    {
      isMixedType = 1;
    }

    else
    {
      isMixedType = v5->_isMixedType;
      if ((isMixedType & 1) == 0 && ((v28 ^ 1) & 1) == 0)
      {
        isMixedType = selfCopy->_mainAssetIsVideo != v5->_mainAssetIsVideo;
      }
    }

    v30 = selfCopy->_allMultipleAssetIsMine && v5->_allMultipleAssetIsMine;
    v31 = self->_notificationType;
    if (v31 == 5)
    {
      v36 = [PLNotification alloc];
      BYTE2(v40) = isMixedType;
      BYTE1(v40) = v30;
      LOBYTE(v40) = v28;
      v33 = v43;
      v34 = v44;
      LOBYTE(v39) = selfCopy3->_mainAssetIsVideo;
      v35 = [PLNotification _initWithLikesCount:v36 commentDate:"_initWithLikesCount:commentDate:firstCommentGUID:toAssetWithUUID:photosBatchID:mainAssetIsMine:mainAssetIsVideo:inAlbumWithTitle:albumUUID:albumCloudGUID:assetUUIDs:placeholderAssetUUIDs:lowResThumbAssetUUIDs:senderNames:forMultipleAsset:allMultipleAssetIsMine:isMixedType:" firstCommentGUID:commentCount + v42 toAssetWithUUID:selfCopy3->_commentDate photosBatchID:selfCopy3->_firstCommentGUID mainAssetIsMine:selfCopy3->_mainAssetUUID mainAssetIsVideo:selfCopy3->_photosBatchID inAlbumWithTitle:selfCopy3->_mainAssetIsMine albumUUID:v39 albumCloudGUID:selfCopy3->_albumTitle assetUUIDs:selfCopy3->_albumUUID placeholderAssetUUIDs:selfCopy3->_albumCloudGUID lowResThumbAssetUUIDs:v44 senderNames:v25 forMultipleAsset:v43 allMultipleAssetIsMine:v27 isMixedType:v40];
    }

    else
    {
      if (v31 != 4)
      {
        v18 = 0;
        v34 = v44;
        v33 = v43;
        goto LABEL_58;
      }

      v32 = [PLNotification alloc];
      v33 = v43;
      v34 = v44;
      LOBYTE(v39) = selfCopy3->_mainAssetIsVideo;
      v35 = [(PLNotification *)v32 _initWithCommentsCount:commentCount + v42 commentDate:selfCopy3->_commentDate firstCommentGUID:selfCopy3->_firstCommentGUID toAssetWithUUID:selfCopy3->_mainAssetUUID photosBatchID:selfCopy3->_photosBatchID mainAssetIsMine:selfCopy3->_mainAssetIsMine mainAssetIsVideo:v39 inAlbumWithTitle:selfCopy3->_albumTitle albumUUID:selfCopy3->_albumUUID albumCloudGUID:selfCopy3->_albumCloudGUID assetUUIDs:v44 placeholderAssetUUIDs:v25 lowResThumbAssetUUIDs:v43];
    }

    v18 = v35;
LABEL_58:
    [v18 setOriginalDate:thumbnailImageData2];
    v37 = selfCopy3->_suppressAlert || v5->_suppressAlert;
    [v18 setSuppressAlert:v37 & 1];
    thumbnailImageData = [(PLNotification *)v5 thumbnailImageData];
    [v18 setThumbnailImageData:thumbnailImageData];

    goto LABEL_62;
  }

  if (notificationType != notificationType)
  {
    if (notificationType == 4 && v5->_commentIsCaption)
    {
      selfCopy2 = self;
      selfCopy3 = v5;
      goto LABEL_23;
    }

LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

  selfCopy3 = self;
  v10 = v5;
  selfCopy2 = v10;
  if (notificationType != 4 && v10->_containsBatchFirstKnownAsset)
  {

LABEL_23:
    v17 = selfCopy2;
    selfCopy2 = selfCopy3;
    selfCopy3 = v17;
  }

  v18 = [[PLNotification alloc] _initWithPhotosAddedNotification:selfCopy3 mergedWithNotification:selfCopy2];
  v19 = selfCopy3->_originalDate;
  v20 = selfCopy2->_originalDate;
  if (v19)
  {
    v21 = [(NSDate *)v19 earlierDate:v20];
    [v18 setOriginalDate:v21];
  }

  else
  {
    [v18 setOriginalDate:v20];
  }

  v23 = selfCopy3->_suppressAlert || selfCopy2->_suppressAlert;
  [v18 setSuppressAlert:v23 & 1];
  thumbnailImageData2 = [(PLNotification *)v5 thumbnailImageData];
  [v18 setThumbnailImageData:thumbnailImageData2];
LABEL_62:

LABEL_27:

  return v18;
}

- (id)initForSharedLibraryExitInitatedByOwnerWithType:(signed __int16)type retentionPolicy:(int64_t)policy ownerName:(id)name
{
  typeCopy = type;
  nameCopy = name;
  if (typeCopy >= 2)
  {
    v10 = [(PLNotification *)self _initWithType:16];
    v11 = v10;
    if (v10)
    {
      *(v10 + 132) = typeCopy;
      v10[34] = policy;
      v12 = [nameCopy copy];
      v13 = v11[29];
      v11[29] = v12;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initForSharedLibraryParticipantAssetTrashNotificationWithTrashedPhotoCount:(unint64_t)count videoCount:(unint64_t)videoCount itemCount:(unint64_t)itemCount
{
  result = [(PLNotification *)self _initWithType:14];
  if (result)
  {
    *(result + 30) = count;
    *(result + 31) = videoCount;
    *(result + 32) = itemCount;
  }

  return result;
}

- (id)initForSharedLibraryScopeAcceptWithLibraryScopeIdentifier:(id)identifier participantName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v9 = nameCopy;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:795 description:{@"Invalid parameter not satisfying: %@", @"scopeIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:796 description:{@"Invalid parameter not satisfying: %@", @"participantName"}];

LABEL_3:
  v10 = [(PLNotification *)self _initWithType:13];
  if (v10)
  {
    v11 = [identifierCopy copy];
    v12 = v10[28];
    v10[28] = v11;

    v13 = [v9 copy];
    v14 = v10[29];
    v10[29] = v13;
  }

  return v10;
}

- (PLNotification)initWithExpiringMomentShareUUIDs:(id)ds thumbnailImageData:(id)data notificationTitle:(id)title notificationSubtitle:(id)subtitle
{
  dsCopy = ds;
  dataCopy = data;
  titleCopy = title;
  subtitleCopy = subtitle;
  if (![dsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:763 description:{@"Invalid parameter not satisfying: %@", @"UUIDs.count"}];
  }

  v16 = [(PLNotification *)self _initWithType:9];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(v16 + 26, ds);
    firstObject = [dsCopy firstObject];
    v19 = [firstObject copy];
    keyMomentShareUUID = v17->_keyMomentShareUUID;
    v17->_keyMomentShareUUID = v19;

    objc_storeStrong(&v17->_thumbnailImageData, data);
    v21 = [titleCopy copy];
    notificationTitle = v17->_notificationTitle;
    v17->_notificationTitle = v21;

    v23 = [subtitleCopy copy];
    notificationSubtitle = v17->_notificationSubtitle;
    v17->_notificationSubtitle = v23;
  }

  return v17;
}

- (PLNotification)initWithExpiringMomentShares:(id)shares
{
  sharesCopy = shares;
  firstObject = [sharesCopy firstObject];
  if (!firstObject)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:741 description:{@"Invalid parameter not satisfying: %@", @"firstMomentShare"}];
  }

  thumbnailImageData = [firstObject thumbnailImageData];

  if (!thumbnailImageData)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:742 description:{@"Invalid parameter not satisfying: %@", @"firstMomentShare.thumbnailImageData"}];
  }

  v8 = [(PLNotification *)self _initWithType:9];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(sharesCopy, "count")}];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __47__PLNotification_initWithExpiringMomentShares___block_invoke;
    v24[3] = &unk_1E7572220;
    v10 = v9;
    v25 = v10;
    [sharesCopy enumerateObjectsUsingBlock:v24];
    momentShareUUIDs = v8->_momentShareUUIDs;
    v8->_momentShareUUIDs = v10;
    v12 = v10;

    shareURL = [firstObject shareURL];
    absoluteString = [shareURL absoluteString];
    destinationURLString = v8->_destinationURLString;
    v8->_destinationURLString = absoluteString;

    uuid = [firstObject uuid];
    v17 = [uuid copy];
    keyMomentShareUUID = v8->_keyMomentShareUUID;
    v8->_keyMomentShareUUID = v17;

    thumbnailImageData2 = [firstObject thumbnailImageData];
    thumbnailImageData = v8->_thumbnailImageData;
    v8->_thumbnailImageData = thumbnailImageData2;
  }

  return v8;
}

void __47__PLNotification_initWithExpiringMomentShares___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

- (id)initCMMInvitationReadyToViewWithMomentShare:(id)share
{
  shareCopy = share;
  if (!shareCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:715 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  previewData = [shareCopy previewData];
  v7 = [objc_alloc(MEMORY[0x1E6994B28]) initWithData:previewData];
  previewImageDatas = [v7 previewImageDatas];
  firstObject = [previewImageDatas firstObject];

  if (!firstObject)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:719 description:{@"Invalid parameter not satisfying: %@", @"thumbnailImageData"}];
  }

  owner = [shareCopy owner];
  nameComponents = [owner nameComponents];

  if (nameComponents)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    [v12 setStyle:1];
    v13 = [v12 stringFromPersonNameComponents:nameComponents];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(PLNotification *)self _initWithType:10];
  if (v14)
  {
    shareURL = [shareCopy shareURL];
    absoluteString = [shareURL absoluteString];
    v17 = *(v14 + 2);
    *(v14 + 2) = absoluteString;

    uuid = [shareCopy uuid];
    v19 = [uuid copy];
    v20 = *(v14 + 25);
    *(v14 + 25) = v19;

    objc_storeStrong(v14 + 41, firstObject);
    objc_storeStrong(v14 + 27, v13);
  }

  return v14;
}

- (id)initCMMInvitationWithMomentShare:(id)share
{
  shareCopy = share;
  if (!shareCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:702 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v6 = [(PLNotification *)self _initWithType:8];
  if (v6)
  {
    shareURL = [shareCopy shareURL];
    absoluteString = [shareURL absoluteString];
    v9 = v6[2];
    v6[2] = absoluteString;

    uuid = [shareCopy uuid];
    v11 = [uuid copy];
    v12 = v6[25];
    v6[25] = v11;

    owner = [shareCopy owner];
    emailAddress = [owner emailAddress];
    v15 = v6[4];
    v6[4] = emailAddress;
  }

  return v6;
}

- (PLNotification)initWithInterestingMemoryNotificationWithMemoryUUID:(id)d keyAssetUUID:(id)iD notificationTitle:(id)title notificationSubtitle:(id)subtitle photoLibraryURLString:(id)string
{
  dCopy = d;
  iDCopy = iD;
  titleCopy = title;
  subtitleCopy = subtitle;
  stringCopy = string;
  if (dCopy)
  {
    if (titleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:682 description:{@"Invalid parameter not satisfying: %@", @"memoryUUID"}];

    if (titleCopy)
    {
LABEL_3:
      if (subtitleCopy)
      {
        goto LABEL_4;
      }

LABEL_12:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:684 description:{@"Invalid parameter not satisfying: %@", @"notificationSubtitle"}];

      if (stringCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:683 description:{@"Invalid parameter not satisfying: %@", @"notificationTitle"}];

  if (!subtitleCopy)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (stringCopy)
  {
    goto LABEL_5;
  }

LABEL_13:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:685 description:{@"Invalid parameter not satisfying: %@", @"photoLibraryURLString"}];

LABEL_5:
  v19 = [(PLNotification *)self _initWithType:6];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(v19 + 22, d);
    if (iDCopy)
    {
      v21 = [iDCopy copy];
      mainAssetUUID = v20->_mainAssetUUID;
      v20->_mainAssetUUID = v21;

      [(NSMutableOrderedSet *)v20->_lowResThumbAssetUUIDs addObject:v20->_mainAssetUUID];
    }

    v23 = [titleCopy copy];
    notificationTitle = v20->_notificationTitle;
    v20->_notificationTitle = v23;

    v25 = [subtitleCopy copy];
    notificationSubtitle = v20->_notificationSubtitle;
    v20->_notificationSubtitle = v25;

    v27 = [stringCopy copy];
    photoLibraryURLString = v20->_photoLibraryURLString;
    v20->_photoLibraryURLString = v27;
  }

  return v20;
}

- (id)_initWithLikesCount:(int64_t)count commentDate:(id)date firstCommentGUID:(id)d toAssetWithUUID:(id)iD photosBatchID:(id)batchID mainAssetIsMine:(BOOL)mine mainAssetIsVideo:(BOOL)video inAlbumWithTitle:(id)self0 albumUUID:(id)self1 albumCloudGUID:(id)self2 assetUUIDs:(id)self3 placeholderAssetUUIDs:(id)self4 lowResThumbAssetUUIDs:(id)self5 senderNames:(id)self6 forMultipleAsset:(BOOL)self7 allMultipleAssetIsMine:(BOOL)self8 isMixedType:(BOOL)self9
{
  dateCopy = date;
  obj = d;
  dCopy = d;
  batchIDCopy = batchID;
  v41 = dCopy;
  iDCopy = iD;
  batchIDCopy2 = batchID;
  titleCopy = title;
  uIDCopy = uID;
  gUIDCopy = gUID;
  dsCopy = ds;
  iDsCopy = iDs;
  uIDsCopy = uIDs;
  namesCopy = names;
  v27 = [(PLNotification *)self _initWithType:5];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(v27 + 7, iD);
    objc_storeStrong(v28 + 6, batchIDCopy);
    *(v28 + 64) = mine;
    *(v28 + 65) = video;
    objc_storeStrong(v28 + 15, obj);
    objc_storeStrong(v28 + 16, date);
    objc_storeStrong(v28 + 5, title);
    v28[18] = count;
    v29 = v28[3];
    v28[3] = 0;

    objc_storeStrong(v28 + 20, names);
    v30 = v28[4];
    v28[4] = 0;

    objc_storeStrong(v28 + 9, ds);
    v28[10] = [dsCopy count];
    objc_storeStrong(v28 + 35, uID);
    objc_storeStrong(v28 + 36, gUID);
    objc_storeStrong(v28 + 11, iDs);
    objc_storeStrong(v28 + 12, uIDs);
    *(v28 + 168) = asset;
    *(v28 + 169) = isMine;
    *(v28 + 170) = type;
  }

  return v28;
}

- (id)_initWithCommentsCount:(int64_t)count commentDate:(id)date firstCommentGUID:(id)d toAssetWithUUID:(id)iD photosBatchID:(id)batchID mainAssetIsMine:(BOOL)mine mainAssetIsVideo:(BOOL)video inAlbumWithTitle:(id)self0 albumUUID:(id)self1 albumCloudGUID:(id)self2 assetUUIDs:(id)self3 placeholderAssetUUIDs:(id)self4 lowResThumbAssetUUIDs:(id)self5
{
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  batchIDCopy = batchID;
  titleCopy = title;
  uIDCopy = uID;
  gUIDCopy = gUID;
  dsCopy = ds;
  iDsCopy = iDs;
  uIDsCopy = uIDs;
  v22 = [(PLNotification *)self _initWithType:4];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(v22 + 7, iD);
    objc_storeStrong(v23 + 6, batchID);
    *(v23 + 64) = mine;
    *(v23 + 65) = video;
    objc_storeStrong(v23 + 15, d);
    objc_storeStrong(v23 + 16, date);
    objc_storeStrong(v23 + 5, title);
    v24 = v23[17];
    v23[17] = 0;
    v23[18] = count;

    v25 = v23[3];
    v23[3] = 0;

    v26 = v23[20];
    v23[20] = 0;

    v27 = v23[4];
    v23[4] = 0;

    objc_storeStrong(v23 + 9, ds);
    v23[10] = [dsCopy count];
    objc_storeStrong(v23 + 35, uID);
    objc_storeStrong(v23 + 36, gUID);
    objc_storeStrong(v23 + 11, iDs);
    objc_storeStrong(v23 + 12, uIDs);
  }

  return v23;
}

- (PLNotification)initWithLikeAdded:(id)added
{
  addedCopy = added;
  v5 = [(PLNotification *)self _initWithType:5];
  if (v5)
  {
    asset = [addedCopy asset];
    uuid = [asset uuid];
    v8 = [uuid copy];
    mainAssetUUID = v5->_mainAssetUUID;
    v5->_mainAssetUUID = v8;

    cloudBatchID = [asset cloudBatchID];
    v11 = [cloudBatchID copy];
    photosBatchID = v5->_photosBatchID;
    v5->_photosBatchID = v11;

    cloudGUID = [addedCopy cloudGUID];
    v14 = [cloudGUID copy];
    firstCommentGUID = v5->_firstCommentGUID;
    v5->_firstCommentGUID = v14;

    commentDate = [addedCopy commentDate];
    v17 = [commentDate copy];
    commentDate = v5->_commentDate;
    v5->_commentDate = v17;

    commenterDisplayName = [addedCopy commenterDisplayName];
    v20 = [commenterDisplayName copy];
    senderName = v5->_senderName;
    v5->_senderName = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v5->_senderNames;
    v5->_senderNames = v22;

    if (v5->_senderName)
    {
      [(NSMutableSet *)v5->_senderNames addObject:?];
    }

    commenterEmail = [addedCopy commenterEmail];
    v25 = [commenterEmail copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v25;

    v5->_commentCount = 1;
    collectionShare = [asset collectionShare];
    title = [collectionShare title];
    v29 = [title copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v29;

    collectionShare2 = [asset collectionShare];
    uuid2 = [collectionShare2 uuid];
    v33 = [uuid2 copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v33;

    collectionShare3 = [asset collectionShare];
    scopeIdentifier = [collectionShare3 scopeIdentifier];
    v37 = [scopeIdentifier copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v37;

    cloudIsMyAsset = [asset cloudIsMyAsset];
    v5->_mainAssetIsMine = cloudIsMyAsset;
    v5->_allMultipleAssetIsMine = cloudIsMyAsset;
    v5->_mainAssetIsVideo = [asset isVideo];
    v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    assetUUIDs = v5->_assetUUIDs;
    v5->_assetUUIDs = v40;

    v42 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    p_placeholderAssetUUIDs = &v5->_placeholderAssetUUIDs;
    placeholderAssetUUIDs = v5->_placeholderAssetUUIDs;
    v5->_placeholderAssetUUIDs = v42;

    v45 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    lowResThumbAssetUUIDs = v5->_lowResThumbAssetUUIDs;
    v5->_lowResThumbAssetUUIDs = v45;

    [(NSMutableSet *)v5->_assetUUIDs addObject:v5->_mainAssetUUID];
    v5->_assetCount = 1;
    cloudSharedPlaceholderKind = [asset cloudSharedPlaceholderKind];
    if (cloudSharedPlaceholderKind != 2)
    {
      if (cloudSharedPlaceholderKind != 3)
      {
LABEL_8:

        goto LABEL_9;
      }

      p_placeholderAssetUUIDs = &v5->_lowResThumbAssetUUIDs;
    }

    [*p_placeholderAssetUUIDs addObject:v5->_mainAssetUUID];
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (PLNotification)initWithCommentAdded:(id)added
{
  addedCopy = added;
  v5 = [(PLNotification *)self _initWithType:4];
  if (v5)
  {
    asset = [addedCopy asset];
    uuid = [asset uuid];
    v8 = [uuid copy];
    mainAssetUUID = v5->_mainAssetUUID;
    v5->_mainAssetUUID = v8;

    cloudBatchID = [asset cloudBatchID];
    v11 = [cloudBatchID copy];
    photosBatchID = v5->_photosBatchID;
    v5->_photosBatchID = v11;

    cloudGUID = [addedCopy cloudGUID];
    v14 = [cloudGUID copy];
    firstCommentGUID = v5->_firstCommentGUID;
    v5->_firstCommentGUID = v14;

    commentDate = [addedCopy commentDate];
    v17 = [commentDate copy];
    commentDate = v5->_commentDate;
    v5->_commentDate = v17;

    commenterDisplayName = [addedCopy commenterDisplayName];
    v20 = [commenterDisplayName copy];
    senderName = v5->_senderName;
    v5->_senderName = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v5->_senderNames;
    v5->_senderNames = v22;

    if (v5->_senderName)
    {
      [(NSMutableSet *)v5->_senderNames addObject:?];
    }

    commenterEmail = [addedCopy commenterEmail];
    v25 = [commenterEmail copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v25;

    commentText = [addedCopy commentText];
    v28 = [commentText copy];
    commentText = v5->_commentText;
    v5->_commentText = v28;

    v5->_commentCount = 1;
    isCaption = [addedCopy isCaption];
    v5->_commentIsCaption = [isCaption BOOLValue];

    collectionShare = [asset collectionShare];
    title = [collectionShare title];
    v33 = [title copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v33;

    collectionShare2 = [asset collectionShare];
    uuid2 = [collectionShare2 uuid];
    v37 = [uuid2 copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v37;

    collectionShare3 = [asset collectionShare];
    scopeIdentifier = [collectionShare3 scopeIdentifier];
    v41 = [scopeIdentifier copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v41;

    v5->_mainAssetIsMine = [asset cloudIsMyAsset];
    v5->_mainAssetIsVideo = [asset isVideo];
    v43 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    assetUUIDs = v5->_assetUUIDs;
    v5->_assetUUIDs = v43;

    v45 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    p_placeholderAssetUUIDs = &v5->_placeholderAssetUUIDs;
    placeholderAssetUUIDs = v5->_placeholderAssetUUIDs;
    v5->_placeholderAssetUUIDs = v45;

    v48 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    lowResThumbAssetUUIDs = v5->_lowResThumbAssetUUIDs;
    v5->_lowResThumbAssetUUIDs = v48;

    [(NSMutableSet *)v5->_assetUUIDs addObject:v5->_mainAssetUUID];
    v5->_assetCount = 1;
    cloudSharedPlaceholderKind = [asset cloudSharedPlaceholderKind];
    if (cloudSharedPlaceholderKind != 2)
    {
      if (cloudSharedPlaceholderKind != 3)
      {
LABEL_8:

        goto LABEL_9;
      }

      p_placeholderAssetUUIDs = &v5->_lowResThumbAssetUUIDs;
    }

    [*p_placeholderAssetUUIDs addObject:v5->_mainAssetUUID];
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (id)_initWithPhotosAddedNotification:(id)notification mergedWithNotificationDictionary:(id)dictionary
{
  notificationCopy = notification;
  dictionaryCopy = dictionary;
  v8 = [(PLNotification *)self _initWithType:3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, notificationCopy[3]);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = v9[20];
    v9[20] = v10;

    if (v9[3])
    {
      [v9[20] addObject:?];
    }

    objc_storeStrong(v9 + 4, notificationCopy[4]);
    objc_storeStrong(v9 + 5, notificationCopy[5]);
    objc_storeStrong(v9 + 35, notificationCopy[35]);
    objc_storeStrong(v9 + 36, notificationCopy[36]);
    objc_storeStrong(v9 + 7, notificationCopy[7]);
    objc_storeStrong(v9 + 6, notificationCopy[6]);
    *(v9 + 64) = *(notificationCopy + 64);
    *(v9 + 65) = *(notificationCopy + 65);
    *(v9 + 66) = *(notificationCopy + 66);
    v12 = [notificationCopy[9] mutableCopy];
    v13 = v9[9];
    v9[9] = v12;

    v14 = notificationCopy[10];
    v15 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0198]];
    v9[10] = &v14[[v15 integerValue]];

    v16 = [notificationCopy[11] mutableCopy];
    v17 = v9[11];
    v9[11] = v16;

    v18 = [notificationCopy[12] mutableCopy];
    v19 = v9[12];
    v9[12] = v18;

    v20 = notificationCopy;
    objc_storeStrong(v9 + 15, v20[15]);
    objc_storeStrong(v9 + 16, v20[16]);
    objc_storeStrong(v9 + 17, v20[17]);
    *(v9 + 152) = *(v20 + 152);
    v21 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C0248]];
    integerValue = [v21 integerValue];

    v23 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C01D0]];
    bOOLValue = [v23 BOOLValue];

    if (integerValue == 4 || integerValue == 3 && bOOLValue)
    {
      v25 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C01B8]];
      v26 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C01C8]];
      v27 = [dictionaryCopy objectForKey:*MEMORY[0x1E69C01E0]];
      v28 = v9[15];
      v9[15] = v25;
      v29 = v25;

      v30 = v9[16];
      v9[16] = v26;
      v31 = v26;

      v32 = v9[17];
      v9[17] = v27;

      *(v9 + 152) = bOOLValue;
    }
  }

  return v9;
}

- (id)_initWithPhotosAddedNotification:(id)notification mergedWithNotification:(id)withNotification
{
  notificationCopy = notification;
  withNotificationCopy = withNotification;
  v8 = [(PLNotification *)self _initWithType:3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, *(notificationCopy + 3));
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = v9[20];
    v9[20] = v10;

    if (v9[3])
    {
      [v9[20] addObject:?];
    }

    objc_storeStrong(v9 + 4, *(notificationCopy + 4));
    objc_storeStrong(v9 + 5, *(notificationCopy + 5));
    objc_storeStrong(v9 + 35, *(notificationCopy + 35));
    objc_storeStrong(v9 + 36, *(notificationCopy + 36));
    objc_storeStrong(v9 + 7, *(notificationCopy + 7));
    objc_storeStrong(v9 + 6, *(notificationCopy + 6));
    *(v9 + 64) = *(notificationCopy + 64);
    *(v9 + 65) = *(notificationCopy + 65);
    *(v9 + 66) = *(notificationCopy + 66);
    v12 = withNotificationCopy[41];
    if (v12)
    {
      objc_storeStrong(v9 + 41, v12);
    }

    v13 = [*(notificationCopy + 9) mutableCopy];
    v14 = v9[9];
    v9[9] = v13;

    [v9[9] unionSet:withNotificationCopy[9]];
    notificationType = [notificationCopy notificationType];
    if (notificationType == [withNotificationCopy notificationType])
    {
      v16 = [v9[9] count];
    }

    else
    {
      v16 = *(notificationCopy + 10);
    }

    v9[10] = v16;
    v17 = [*(notificationCopy + 11) mutableCopy];
    v18 = v9[11];
    v9[11] = v17;

    [v9[11] unionOrderedSet:withNotificationCopy[11]];
    v19 = [*(notificationCopy + 12) mutableCopy];
    v20 = v9[12];
    v9[12] = v19;

    [v9[12] unionOrderedSet:withNotificationCopy[12]];
    v21 = notificationCopy;
    if ([withNotificationCopy notificationType] == 4)
    {
      v22 = withNotificationCopy;

      v21 = v22;
    }

    objc_storeStrong(v9 + 15, v21[15]);
    objc_storeStrong(v9 + 16, v21[16]);
    objc_storeStrong(v9 + 17, v21[17]);
    *(v9 + 152) = *(v21 + 152);
  }

  return v9;
}

- (PLNotification)initWithAssetsAdded:(id)added toAlbum:(id)album
{
  addedCopy = added;
  albumCopy = album;
  if (!addedCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:371 description:{@"Invalid parameter not satisfying: %@", @"assetsAdded"}];
  }

  if ([addedCopy count])
  {
    if (albumCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"[assetsAdded count]"}];

    if (albumCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"album"}];

LABEL_5:
  v9 = [(PLNotification *)self _initWithType:3];
  if (v9)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__78590;
    v54 = __Block_byref_object_dispose__78591;
    firstObject = [addedCopy firstObject];
    assets = [albumCopy assets];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __46__PLNotification_initWithAssetsAdded_toAlbum___block_invoke;
    v47[3] = &unk_1E75721F8;
    v11 = addedCopy;
    v48 = v11;
    v49 = &v50;
    [assets enumerateObjectsUsingBlock:v47];

    cloudOwnerFullName = [v51[5] cloudOwnerFullName];
    v13 = [cloudOwnerFullName copy];
    senderName = v9->_senderName;
    v9->_senderName = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v9->_senderNames;
    v9->_senderNames = v15;

    if (v9->_senderName)
    {
      [(NSMutableSet *)v9->_senderNames addObject:?];
    }

    cloudOwnerEmail = [v51[5] cloudOwnerEmail];
    v18 = [cloudOwnerEmail copy];
    senderEmailAddress = v9->_senderEmailAddress;
    v9->_senderEmailAddress = v18;

    localizedTitle = [albumCopy localizedTitle];
    v21 = [localizedTitle copy];
    albumTitle = v9->_albumTitle;
    v9->_albumTitle = v21;

    uuid = [albumCopy uuid];
    v24 = [uuid copy];
    albumUUID = v9->_albumUUID;
    v9->_albumUUID = v24;

    cloudGUID = [albumCopy cloudGUID];
    v27 = [cloudGUID copy];
    albumCloudGUID = v9->_albumCloudGUID;
    v9->_albumCloudGUID = v27;

    uuid2 = [v51[5] uuid];
    v30 = [uuid2 copy];
    mainAssetUUID = v9->_mainAssetUUID;
    v9->_mainAssetUUID = v30;

    cloudBatchID = [v51[5] cloudBatchID];
    v33 = [cloudBatchID copy];
    photosBatchID = v9->_photosBatchID;
    v9->_photosBatchID = v33;

    v9->_mainAssetIsMine = [v51[5] cloudIsMyAsset];
    v9->_mainAssetIsVideo = [v51[5] isVideo];
    v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    assetUUIDs = v9->_assetUUIDs;
    v9->_assetUUIDs = v35;

    v9->_assetCount = [v11 count];
    v37 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    placeholderAssetUUIDs = v9->_placeholderAssetUUIDs;
    v9->_placeholderAssetUUIDs = v37;

    v39 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    lowResThumbAssetUUIDs = v9->_lowResThumbAssetUUIDs;
    v9->_lowResThumbAssetUUIDs = v39;

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __46__PLNotification_initWithAssetsAdded_toAlbum___block_invoke_2;
    v45[3] = &unk_1E7575368;
    v46 = v9;
    [v11 enumerateObjectsUsingBlock:v45];

    _Block_object_dispose(&v50, 8);
  }

  return v9;
}

void __46__PLNotification_initWithAssetsAdded_toAlbum___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __46__PLNotification_initWithAssetsAdded_toAlbum___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 cloudSharedPlaceholderKind];
  if (v3 == 2)
  {
    v4 = 88;
  }

  else
  {
    if (v3 != 3)
    {
      goto LABEL_6;
    }

    v4 = 96;
  }

  v5 = *(*(a1 + 32) + v4);
  v6 = [v9 uuid];
  [v5 addObject:v6];

LABEL_6:
  v7 = *(*(a1 + 32) + 72);
  v8 = [v9 uuid];
  [v7 addObject:v8];
}

- (PLNotification)initWithAssetAdded:(id)added atIndex:(unint64_t)index toAlbum:(id)album
{
  addedCopy = added;
  albumCopy = album;
  v11 = albumCopy;
  if (addedCopy)
  {
    if (albumCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"assetAdded"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"album"}];

LABEL_3:
  v12 = [(PLNotification *)self _initWithType:3];
  if (!v12)
  {
    goto LABEL_12;
  }

  cloudOwnerFullName = [addedCopy cloudOwnerFullName];
  v14 = [cloudOwnerFullName copy];
  senderName = v12->_senderName;
  v12->_senderName = v14;

  v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  senderNames = v12->_senderNames;
  v12->_senderNames = v16;

  if (v12->_senderName)
  {
    [(NSMutableSet *)v12->_senderNames addObject:?];
  }

  cloudOwnerEmail = [addedCopy cloudOwnerEmail];
  v19 = [cloudOwnerEmail copy];
  senderEmailAddress = v12->_senderEmailAddress;
  v12->_senderEmailAddress = v19;

  localizedTitle = [v11 localizedTitle];
  v22 = [localizedTitle copy];
  albumTitle = v12->_albumTitle;
  v12->_albumTitle = v22;

  uuid = [v11 uuid];
  v25 = [uuid copy];
  albumUUID = v12->_albumUUID;
  v12->_albumUUID = v25;

  cloudGUID = [v11 cloudGUID];
  v28 = [cloudGUID copy];
  albumCloudGUID = v12->_albumCloudGUID;
  v12->_albumCloudGUID = v28;

  uuid2 = [addedCopy uuid];
  v31 = [uuid2 copy];
  mainAssetUUID = v12->_mainAssetUUID;
  v12->_mainAssetUUID = v31;

  cloudBatchID = [addedCopy cloudBatchID];
  v34 = [cloudBatchID copy];
  photosBatchID = v12->_photosBatchID;
  v12->_photosBatchID = v34;

  v12->_mainAssetIsMine = [addedCopy cloudIsMyAsset];
  v12->_mainAssetIsVideo = [addedCopy isVideo];
  v36 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v12->_mainAssetUUID, 0}];
  assetUUIDs = v12->_assetUUIDs;
  v12->_assetUUIDs = v36;

  v12->_assetCount = 1;
  v38 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  p_placeholderAssetUUIDs = &v12->_placeholderAssetUUIDs;
  placeholderAssetUUIDs = v12->_placeholderAssetUUIDs;
  v12->_placeholderAssetUUIDs = v38;

  v41 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  lowResThumbAssetUUIDs = v12->_lowResThumbAssetUUIDs;
  v12->_lowResThumbAssetUUIDs = v41;

  cloudSharedPlaceholderKind = [addedCopy cloudSharedPlaceholderKind];
  if (cloudSharedPlaceholderKind != 2)
  {
    if (cloudSharedPlaceholderKind != 3)
    {
      goto LABEL_10;
    }

    p_placeholderAssetUUIDs = &v12->_lowResThumbAssetUUIDs;
  }

  [*p_placeholderAssetUUIDs addObject:v12->_mainAssetUUID];
LABEL_10:
  v12->_containsBatchFirstKnownAsset = 1;
  if (index)
  {
    assets = [v11 assets];
    v45 = [assets objectAtIndex:index - 1];

    cloudBatchID2 = [addedCopy cloudBatchID];
    cloudBatchID3 = [v45 cloudBatchID];
    v12->_containsBatchFirstKnownAsset = [cloudBatchID2 isEqualToString:cloudBatchID3] ^ 1;
  }

LABEL_12:

  return v12;
}

- (PLNotification)initWithAssetsAdded:(id)added toCollectionShare:(id)share
{
  addedCopy = added;
  shareCopy = share;
  if (!addedCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"assetsAdded"}];
  }

  if ([addedCopy count])
  {
    if (shareCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"[assetsAdded count]"}];

    if (shareCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"collectionShare"}];

LABEL_5:
  v9 = [(PLNotification *)self _initWithType:3];
  if (v9)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__78590;
    v54 = __Block_byref_object_dispose__78591;
    firstObject = [addedCopy firstObject];
    collectionShareAssets = [shareCopy collectionShareAssets];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __56__PLNotification_initWithAssetsAdded_toCollectionShare___block_invoke;
    v47[3] = &unk_1E75721D0;
    v11 = addedCopy;
    v48 = v11;
    v49 = &v50;
    [collectionShareAssets enumerateObjectsUsingBlock:v47];

    cloudOwnerFullName = [v51[5] cloudOwnerFullName];
    v13 = [cloudOwnerFullName copy];
    senderName = v9->_senderName;
    v9->_senderName = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v9->_senderNames;
    v9->_senderNames = v15;

    if (v9->_senderName)
    {
      [(NSMutableSet *)v9->_senderNames addObject:?];
    }

    cloudOwnerEmail = [v51[5] cloudOwnerEmail];
    v18 = [cloudOwnerEmail copy];
    senderEmailAddress = v9->_senderEmailAddress;
    v9->_senderEmailAddress = v18;

    title = [shareCopy title];
    v21 = [title copy];
    albumTitle = v9->_albumTitle;
    v9->_albumTitle = v21;

    uuid = [shareCopy uuid];
    v24 = [uuid copy];
    albumUUID = v9->_albumUUID;
    v9->_albumUUID = v24;

    scopeIdentifier = [shareCopy scopeIdentifier];
    v27 = [scopeIdentifier copy];
    albumCloudGUID = v9->_albumCloudGUID;
    v9->_albumCloudGUID = v27;

    uuid2 = [v51[5] uuid];
    v30 = [uuid2 copy];
    mainAssetUUID = v9->_mainAssetUUID;
    v9->_mainAssetUUID = v30;

    cloudBatchID = [v51[5] cloudBatchID];
    v33 = [cloudBatchID copy];
    photosBatchID = v9->_photosBatchID;
    v9->_photosBatchID = v33;

    v9->_mainAssetIsMine = [v51[5] cloudIsMyAsset];
    v9->_mainAssetIsVideo = [v51[5] isVideo];
    v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    assetUUIDs = v9->_assetUUIDs;
    v9->_assetUUIDs = v35;

    v9->_assetCount = [v11 count];
    v37 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    placeholderAssetUUIDs = v9->_placeholderAssetUUIDs;
    v9->_placeholderAssetUUIDs = v37;

    v39 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    lowResThumbAssetUUIDs = v9->_lowResThumbAssetUUIDs;
    v9->_lowResThumbAssetUUIDs = v39;

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __56__PLNotification_initWithAssetsAdded_toCollectionShare___block_invoke_2;
    v45[3] = &unk_1E7575368;
    v46 = v9;
    [v11 enumerateObjectsUsingBlock:v45];

    _Block_object_dispose(&v50, 8);
  }

  return v9;
}

void __56__PLNotification_initWithAssetsAdded_toCollectionShare___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __56__PLNotification_initWithAssetsAdded_toCollectionShare___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 cloudSharedPlaceholderKind];
  if (v3 == 2)
  {
    v4 = 88;
  }

  else
  {
    if (v3 != 3)
    {
      goto LABEL_6;
    }

    v4 = 96;
  }

  v5 = *(*(a1 + 32) + v4);
  v6 = [v9 uuid];
  [v5 addObject:v6];

LABEL_6:
  v7 = *(*(a1 + 32) + 72);
  v8 = [v9 uuid];
  [v7 addObject:v8];
}

- (PLNotification)initWithMultipleContributorEnabledForAlbum:(id)album
{
  albumCopy = album;
  v5 = [(PLNotification *)self _initWithType:2];
  if (v5)
  {
    v6 = [albumCopy cloudOwnerDisplayNameIncludingEmail:0 allowsEmail:1];
    v7 = [v6 copy];
    senderName = v5->_senderName;
    v5->_senderName = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v5->_senderNames;
    v5->_senderNames = v9;

    if (v5->_senderName)
    {
      [(NSMutableSet *)v5->_senderNames addObject:?];
    }

    cloudOwnerEmail = [albumCopy cloudOwnerEmail];
    v12 = [cloudOwnerEmail copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v12;

    localizedTitle = [albumCopy localizedTitle];
    v15 = [localizedTitle copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v15;

    uuid = [albumCopy uuid];
    v18 = [uuid copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v18;

    cloudGUID = [albumCopy cloudGUID];
    v21 = [cloudGUID copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v21;
  }

  return v5;
}

- (PLNotification)initWithMultipleContributorEnabledForCollectionShare:(id)share
{
  shareCopy = share;
  v5 = [(PLNotification *)self _initWithType:2];
  if (v5)
  {
    owner = [shareCopy owner];
    fullName = [owner fullName];
    v8 = [fullName copy];
    senderName = v5->_senderName;
    v5->_senderName = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v5->_senderNames;
    v5->_senderNames = v10;

    if (v5->_senderName)
    {
      [(NSMutableSet *)v5->_senderNames addObject:?];
    }

    owner2 = [shareCopy owner];
    emailAddress = [owner2 emailAddress];
    v14 = [emailAddress copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v14;

    title = [shareCopy title];
    v17 = [title copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v17;

    uuid = [shareCopy uuid];
    v20 = [uuid copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v20;

    scopeIdentifier = [shareCopy scopeIdentifier];
    v23 = [scopeIdentifier copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v23;
  }

  return v5;
}

- (PLNotification)initWithInvitationRecordStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = [(PLNotification *)self _initWithType:1];
  if (v5)
  {
    album = [changedCopy album];
    v7 = [changedCopy inviteeDisplayNameIncludingEmail:0];
    v8 = [v7 copy];
    senderName = v5->_senderName;
    v5->_senderName = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v5->_senderNames;
    v5->_senderNames = v10;

    if (v5->_senderName)
    {
      [(NSMutableSet *)v5->_senderNames addObject:?];
    }

    inviteeEmails = [changedCopy inviteeEmails];
    firstObject = [inviteeEmails firstObject];
    v14 = [firstObject copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v14;

    localizedTitle = [album localizedTitle];
    v17 = [localizedTitle copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v17;

    uuid = [album uuid];
    v20 = [uuid copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v20;

    invitationState = [changedCopy invitationState];
    v5->_invitationState = [invitationState intValue];

    cloudGUID = [album cloudGUID];
    v24 = [cloudGUID copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v24;
  }

  return v5;
}

- (PLNotification)initWithParticipantAcceptanceStatusChanged:(id)changed
{
  changedCopy = changed;
  v5 = [(PLNotification *)self _initWithType:17];
  if (v5)
  {
    share = [changedCopy share];
    fullName = [changedCopy fullName];
    v8 = [fullName copy];
    senderName = v5->_senderName;
    v5->_senderName = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v5->_senderNames;
    v5->_senderNames = v10;

    if (v5->_senderName)
    {
      [(NSMutableSet *)v5->_senderNames addObject:?];
    }

    emailAddress = [changedCopy emailAddress];
    v13 = [emailAddress copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v13;

    title = [share title];
    v16 = [title copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v16;

    uuid = [share uuid];
    v19 = [uuid copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v19;

    v5->_acceptanceStatus = [changedCopy acceptanceStatus];
    scopeIdentifier = [share scopeIdentifier];
    v22 = [scopeIdentifier copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v22;
  }

  return v5;
}

- (PLNotification)initWithInvitationAlbum:(id)album
{
  albumCopy = album;
  v5 = [(PLNotification *)self _initWithType:0];
  if (v5)
  {
    v6 = [albumCopy cloudOwnerDisplayNameIncludingEmail:0 allowsEmail:1];
    v7 = [v6 copy];
    senderName = v5->_senderName;
    v5->_senderName = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v5->_senderNames;
    v5->_senderNames = v9;

    if (v5->_senderName)
    {
      [(NSMutableSet *)v5->_senderNames addObject:?];
    }

    cloudOwnerEmail = [albumCopy cloudOwnerEmail];
    v12 = [cloudOwnerEmail copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v12;

    localizedTitle = [albumCopy localizedTitle];
    v15 = [localizedTitle copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v15;

    uuid = [albumCopy uuid];
    v18 = [uuid copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v18;

    cloudGUID = [albumCopy cloudGUID];
    v21 = [cloudGUID copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v21;

    v5->_offerToReportAsJunk = [albumCopy cloudOwnerIsWhitelisted] ^ 1;
  }

  return v5;
}

- (PLNotification)initWithInvitationCollectionShare:(id)share
{
  shareCopy = share;
  v5 = [(PLNotification *)self _initWithType:0];
  if (v5)
  {
    owner = [shareCopy owner];
    fullName = [owner fullName];
    v8 = [fullName copy];
    senderName = v5->_senderName;
    v5->_senderName = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v5->_senderNames;
    v5->_senderNames = v10;

    if (v5->_senderName)
    {
      [(NSMutableSet *)v5->_senderNames addObject:?];
    }

    owner2 = [shareCopy owner];
    emailAddress = [owner2 emailAddress];
    v14 = [emailAddress copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v14;

    title = [shareCopy title];
    v17 = [title copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v17;

    uuid = [shareCopy uuid];
    v20 = [uuid copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v20;

    scopeIdentifier = [shareCopy scopeIdentifier];
    v23 = [scopeIdentifier copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v23;

    owner3 = [shareCopy owner];
    LOBYTE(emailAddress) = [owner3 allowlistedState] != 1;

    v5->_offerToReportAsJunk = emailAddress;
  }

  return v5;
}

- (id)_initWithType:(int64_t)type
{
  v15.receiver = self;
  v15.super_class = PLNotification;
  v4 = [(PLNotification *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_notificationType = type;
    date = [MEMORY[0x1E695DF00] date];
    v7 = [date copy];
    date = v5->_date;
    v5->_date = v7;

    v9 = [(NSDate *)v5->_date copy];
    originalDate = v5->_originalDate;
    v5->_originalDate = v9;

    v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:604800.0];
    v12 = [v11 copy];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v12;
  }

  return v5;
}

- (PLNotification)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:131 description:@"Do not use this initializer"];

  return 0;
}

+ (id)_UNCategoryFromNotificationType:(int64_t)type
{
  if ((type - 1) > 0x10)
  {
    return @"PLUNCategoryInvitationReceived";
  }

  else
  {
    return off_1E7572270[type - 1];
  }
}

+ (id)requestIdentifierByNotificationType:(int64_t)type keyObjectUUID:(id)d photosBatchID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v10 = [self _UNCategoryFromNotificationType:type];
  if ([iDCopy length])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", v10, dCopy, iDCopy];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v10, dCopy, v13];
  }
  v11 = ;

  return v11;
}

@end