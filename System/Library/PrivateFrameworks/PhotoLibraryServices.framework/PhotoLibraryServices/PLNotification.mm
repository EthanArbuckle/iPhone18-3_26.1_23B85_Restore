@interface PLNotification
+ (id)_UNCategoryFromNotificationType:(int64_t)a3;
+ (id)requestIdentifierByNotificationType:(int64_t)a3 keyObjectUUID:(id)a4 photosBatchID:(id)a5;
- (NSArray)suppressionContexts;
- (NSDictionary)dictionaryRepresentation;
- (NSString)destinationURLString;
- (NSString)keyObjectUUID;
- (NSString)message;
- (NSString)requestIdentifier;
- (NSString)title;
- (PLNotification)init;
- (PLNotification)initWithAssetAdded:(id)a3 atIndex:(unint64_t)a4 toAlbum:(id)a5;
- (PLNotification)initWithAssetsAdded:(id)a3 toAlbum:(id)a4;
- (PLNotification)initWithAssetsAdded:(id)a3 toCollectionShare:(id)a4;
- (PLNotification)initWithCommentAdded:(id)a3;
- (PLNotification)initWithExpiringMomentShareUUIDs:(id)a3 thumbnailImageData:(id)a4 notificationTitle:(id)a5 notificationSubtitle:(id)a6;
- (PLNotification)initWithExpiringMomentShares:(id)a3;
- (PLNotification)initWithInterestingMemoryNotificationWithMemoryUUID:(id)a3 keyAssetUUID:(id)a4 notificationTitle:(id)a5 notificationSubtitle:(id)a6 photoLibraryURLString:(id)a7;
- (PLNotification)initWithInvitationAlbum:(id)a3;
- (PLNotification)initWithInvitationCollectionShare:(id)a3;
- (PLNotification)initWithInvitationRecordStatusChanged:(id)a3;
- (PLNotification)initWithLikeAdded:(id)a3;
- (PLNotification)initWithMultipleContributorEnabledForAlbum:(id)a3;
- (PLNotification)initWithMultipleContributorEnabledForCollectionShare:(id)a3;
- (PLNotification)initWithParticipantAcceptanceStatusChanged:(id)a3;
- (double)completionPercentage;
- (id)_initWithCommentsCount:(int64_t)a3 commentDate:(id)a4 firstCommentGUID:(id)a5 toAssetWithUUID:(id)a6 photosBatchID:(id)a7 mainAssetIsMine:(BOOL)a8 mainAssetIsVideo:(BOOL)a9 inAlbumWithTitle:(id)a10 albumUUID:(id)a11 albumCloudGUID:(id)a12 assetUUIDs:(id)a13 placeholderAssetUUIDs:(id)a14 lowResThumbAssetUUIDs:(id)a15;
- (id)_initWithLikesCount:(int64_t)a3 commentDate:(id)a4 firstCommentGUID:(id)a5 toAssetWithUUID:(id)a6 photosBatchID:(id)a7 mainAssetIsMine:(BOOL)a8 mainAssetIsVideo:(BOOL)a9 inAlbumWithTitle:(id)a10 albumUUID:(id)a11 albumCloudGUID:(id)a12 assetUUIDs:(id)a13 placeholderAssetUUIDs:(id)a14 lowResThumbAssetUUIDs:(id)a15 senderNames:(id)a16 forMultipleAsset:(BOOL)a17 allMultipleAssetIsMine:(BOOL)a18 isMixedType:(BOOL)a19;
- (id)_initWithPhotosAddedNotification:(id)a3 mergedWithNotification:(id)a4;
- (id)_initWithPhotosAddedNotification:(id)a3 mergedWithNotificationDictionary:(id)a4;
- (id)_initWithType:(int64_t)a3;
- (id)description;
- (id)initCMMInvitationReadyToViewWithMomentShare:(id)a3;
- (id)initCMMInvitationWithMomentShare:(id)a3;
- (id)initForSharedLibraryExitInitatedByOwnerWithType:(signed __int16)a3 retentionPolicy:(int64_t)a4 ownerName:(id)a5;
- (id)initForSharedLibraryParticipantAssetTrashNotificationWithTrashedPhotoCount:(unint64_t)a3 videoCount:(unint64_t)a4 itemCount:(unint64_t)a5;
- (id)initForSharedLibraryScopeAcceptWithLibraryScopeIdentifier:(id)a3 participantName:(id)a4;
- (id)notificationByMergingWithNotification:(id)a3;
- (id)notificationByMergingWithNotificationDictionary:(id)a3;
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
  v5 = [(PLNotification *)self notificationType];
  v6 = [(PLNotification *)self keyObjectUUID];
  v7 = [v4 requestIdentifierByNotificationType:v5 keyObjectUUID:v6 photosBatchID:v3];

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
  v4 = [(PLNotification *)self message];
  v5 = [v3 stringByAppendingFormat:@" - %@", v4];

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

  v8 = [(PLNotification *)self title];
  if (v8)
  {
    [(NSDictionary *)v3 setObject:v8 forKey:*MEMORY[0x1E69C0298]];
  }

  v9 = [(PLNotification *)self message];
  if (v9)
  {
    [(NSDictionary *)v3 setObject:v9 forKey:*MEMORY[0x1E69C0228]];
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

  v13 = [(PLNotification *)self destinationURLString];
  if (v13)
  {
    [(NSDictionary *)v3 setObject:v13 forKey:*MEMORY[0x1E69C01F0]];
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

  v24 = [(PLNotification *)self suppressionContexts];
  if (v24)
  {
    [(NSDictionary *)v3 setObject:v24 forKey:*MEMORY[0x1E69C0280]];
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
    v28 = [(NSMutableSet *)senderNames allObjects];
    [(NSDictionary *)v3 setObject:v28 forKey:*MEMORY[0x1E69C0278]];
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

  v37 = [(PLNotification *)self requestIdentifier];
  if (v37)
  {
    [(NSDictionary *)v3 setObject:v37 forKey:*MEMORY[0x1E69C0270]];
  }

  v38 = v3;

  return v3;
}

- (NSArray)suppressionContexts
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(PLNotification *)self notificationType]== 6)
  {
    v4 = MEMORY[0x1E69BFFF0];
LABEL_7:
    [v3 addObject:*v4];
    goto LABEL_8;
  }

  if ([(PLNotification *)self notificationType]!= 10)
  {
    [v3 addObject:*MEMORY[0x1E69BFFD8]];
    [v3 addObject:*MEMORY[0x1E69BFFE8]];
    v4 = MEMORY[0x1E69BFFE0];
    goto LABEL_7;
  }

  if (self->_keyMomentShareUUID)
  {
    v5 = PLSuppressionContextForMomentShareUUID();
    [v3 addObject:v5];
  }

LABEL_8:

  return v3;
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

      v7 = albumTitle;
      if (![(__CFString *)v5 length]|| ![(__CFString *)v7 length])
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
          v7 = [(NSMutableSet *)self->_senderNames anyObject];
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
        v22 = [(NSMutableSet *)self->_senderNames anyObject];
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
      v22 = PLServicesLocalizedFrameworkStringForAssetsd();
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

- (id)notificationByMergingWithNotificationDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PLNotification *)self originalDate];
  v6 = *MEMORY[0x1E69C0258];
  v7 = [v4 objectForKey:*MEMORY[0x1E69C0258]];
  v8 = v7;
  if (v5)
  {
    if (v7)
    {
      [v5 timeIntervalSinceDate:v7];
      if (v9 > 14400.0)
      {
        v14 = 0;
        goto LABEL_50;
      }
    }
  }

  v10 = [v4 objectForKey:*MEMORY[0x1E69C0248]];
  notificationType = [v10 integerValue];

  v12 = [v4 objectForKey:*MEMORY[0x1E69C0188]];
  v13 = [v4 objectForKey:*MEMORY[0x1E69C0290]];
  if (self->_notificationType == notificationType)
  {
    if (notificationType == 3)
    {
      if ([(NSString *)self->_albumUUID isEqualToString:v12])
      {
        v14 = [[PLNotification alloc] _initWithPhotosAddedNotification:self mergedWithNotificationDictionary:v4];
        v15 = [v14 thumbnailImageData];

        if (!v15 && v13)
        {
          [v14 setThumbnailImageData:v13];
        }

        v16 = [v4 objectForKey:v6];
        [v14 setOriginalDate:v16];
        goto LABEL_48;
      }

      notificationType = self->_notificationType;
    }

    if ((notificationType & 0xFFFFFFFFFFFFFFFELL) == 4 && [(NSString *)self->_albumUUID isEqualToString:v12])
    {
      v17 = [v4 objectForKey:*MEMORY[0x1E69C01C8]];
      v63 = [(NSDate *)self->_commentDate earlierDate:v17];
      v59 = v17;
      if ([v63 isEqualToDate:v17])
      {
        v18 = [v4 objectForKey:*MEMORY[0x1E69C01B8]];
      }

      else
      {
        v18 = self->_firstCommentGUID;
      }

      v19 = v18;
      v20 = [v4 objectForKey:*MEMORY[0x1E69C01C0]];
      v58 = v20;
      if (v20)
      {
        v56 = [v20 integerValue];
      }

      else
      {
        v56 = 0;
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
      v25 = [v4 objectForKey:*MEMORY[0x1E69C0278]];

      if (v25)
      {
        v26 = [v4 objectForKey:v24];
        [v64 addObjectsFromArray:v26];
      }

      v27 = *MEMORY[0x1E69C0210];
      v28 = [v4 objectForKey:*MEMORY[0x1E69C0210]];

      if (v28)
      {
        v29 = [v4 objectForKey:v27];
        v30 = [v29 BOOLValue];
      }

      else
      {
        v30 = 0;
      }

      v60 = 1;
      if (!self->_forMultipleAsset && (v30 & 1) == 0)
      {
        mainAssetUUID = self->_mainAssetUUID;
        v32 = [v4 objectForKey:*MEMORY[0x1E69C01B0]];
        v60 = ![(NSString *)mainAssetUUID isEqualToString:v32];
      }

      v33 = *MEMORY[0x1E69C0230];
      v34 = [v4 objectForKey:*MEMORY[0x1E69C0230]];

      if (v34)
      {
        v35 = [v4 objectForKey:v33];
        v36 = [v35 BOOLValue];
      }

      else
      {
        v36 = 0;
      }

      mainAssetIsVideo = self->_isMixedType | v36;
      v62 = v19;
      v57 = v21;
      if ((mainAssetIsVideo & 1) == 0 && ((v60 ^ 1) & 1) == 0)
      {
        mainAssetIsVideo = self->_mainAssetIsVideo;
      }

      v54 = mainAssetIsVideo;
      v38 = [v4 objectForKey:*MEMORY[0x1E69C01A0]];
      v39 = [v38 BOOLValue];

      v40 = *MEMORY[0x1E69C0190];
      v41 = [v4 objectForKey:*MEMORY[0x1E69C0190]];

      v42 = (v41 != 0) | v39;
      if (v41 && (v39 & 1) == 0)
      {
        v43 = [v4 objectForKey:v40];
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
        v46 = [PLNotification _initWithLikesCount:v48 commentDate:"_initWithLikesCount:commentDate:firstCommentGUID:toAssetWithUUID:photosBatchID:mainAssetIsMine:mainAssetIsVideo:inAlbumWithTitle:albumUUID:albumCloudGUID:assetUUIDs:placeholderAssetUUIDs:lowResThumbAssetUUIDs:senderNames:forMultipleAsset:allMultipleAssetIsMine:isMixedType:" firstCommentGUID:commentCount + v56 toAssetWithUUID:v63 photosBatchID:v62 mainAssetIsMine:self->_mainAssetUUID mainAssetIsVideo:self->_photosBatchID inAlbumWithTitle:self->_mainAssetIsMine albumUUID:v52 albumCloudGUID:self->_albumTitle assetUUIDs:self->_albumUUID placeholderAssetUUIDs:self->_albumCloudGUID lowResThumbAssetUUIDs:v57 senderNames:v65 forMultipleAsset:v61 allMultipleAssetIsMine:v64 isMixedType:v53];
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
        v46 = [(PLNotification *)v45 _initWithCommentsCount:commentCount + v56 commentDate:v63 firstCommentGUID:v62 toAssetWithUUID:self->_mainAssetUUID photosBatchID:self->_photosBatchID mainAssetIsMine:self->_mainAssetIsMine mainAssetIsVideo:v52 inAlbumWithTitle:self->_albumTitle albumUUID:self->_albumUUID albumCloudGUID:self->_albumCloudGUID assetUUIDs:v57 placeholderAssetUUIDs:v65 lowResThumbAssetUUIDs:v61];
      }

      v14 = v46;
LABEL_47:
      [v14 setOriginalDate:v5];
      v49 = [v4 objectForKey:*MEMORY[0x1E69C0288]];
      v50 = [v49 BOOLValue];

      [v14 setSuppressAlert:(self->_suppressAlert | v50) & 1];
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

- (id)notificationByMergingWithNotification:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_26;
  }

  v6 = [(PLNotification *)v4 notificationType];
  notificationType = self->_notificationType;
  if (notificationType != 3 || (v8 = [(NSString *)self->_albumUUID isEqualToString:v5->_albumUUID], notificationType = self->_notificationType, !v8))
  {
    v12 = v6 == notificationType && (notificationType & 0xFFFFFFFFFFFFFFFELL) == 4;
    if (!v12 || ![(NSString *)self->_albumUUID isEqualToString:v5->_albumUUID]|| self->_commentIsCaption || v5->_commentIsCaption)
    {
      goto LABEL_26;
    }

    v13 = self;
    v11 = [(NSDate *)v13->_commentDate earlierDate:v5->_commentDate];
    v9 = v13;
    if ([(PLNotification *)v11 isEqualToDate:v5->_commentDate])
    {
      v9 = v5;
    }

    commentCount = v5->_commentCount;
    v42 = v13->_commentCount;
    originalDate = v13->_originalDate;
    if (originalDate)
    {
      v15 = [(NSDate *)originalDate earlierDate:v5->_originalDate];
      v16 = [v15 copy];
    }

    else
    {
      v16 = [(NSDate *)v5->_originalDate copy];
    }

    v24 = [(NSMutableSet *)v13->_assetUUIDs mutableCopy];
    [v24 unionSet:v5->_assetUUIDs];
    v25 = [(NSMutableOrderedSet *)v13->_placeholderAssetUUIDs mutableCopy];
    [v25 unionOrderedSet:v5->_placeholderAssetUUIDs];
    v43 = [(NSMutableOrderedSet *)v13->_lowResThumbAssetUUIDs mutableCopy];
    [v43 unionOrderedSet:v5->_lowResThumbAssetUUIDs];
    v26 = [MEMORY[0x1E695DFA8] set];
    v27 = v26;
    if (v13->_senderNames)
    {
      [v26 unionSet:?];
    }

    if (v5->_senderNames)
    {
      [v27 unionSet:?];
    }

    v44 = v24;
    if (v13->_forMultipleAsset || v5->_forMultipleAsset)
    {
      v28 = 1;
    }

    else
    {
      v28 = ![(NSString *)v13->_mainAssetUUID isEqualToString:v5->_mainAssetUUID];
    }

    if (v13->_isMixedType)
    {
      isMixedType = 1;
    }

    else
    {
      isMixedType = v5->_isMixedType;
      if ((isMixedType & 1) == 0 && ((v28 ^ 1) & 1) == 0)
      {
        isMixedType = v13->_mainAssetIsVideo != v5->_mainAssetIsVideo;
      }
    }

    v30 = v13->_allMultipleAssetIsMine && v5->_allMultipleAssetIsMine;
    v31 = self->_notificationType;
    if (v31 == 5)
    {
      v36 = [PLNotification alloc];
      BYTE2(v40) = isMixedType;
      BYTE1(v40) = v30;
      LOBYTE(v40) = v28;
      v33 = v43;
      v34 = v44;
      LOBYTE(v39) = v9->_mainAssetIsVideo;
      v35 = [PLNotification _initWithLikesCount:v36 commentDate:"_initWithLikesCount:commentDate:firstCommentGUID:toAssetWithUUID:photosBatchID:mainAssetIsMine:mainAssetIsVideo:inAlbumWithTitle:albumUUID:albumCloudGUID:assetUUIDs:placeholderAssetUUIDs:lowResThumbAssetUUIDs:senderNames:forMultipleAsset:allMultipleAssetIsMine:isMixedType:" firstCommentGUID:commentCount + v42 toAssetWithUUID:v9->_commentDate photosBatchID:v9->_firstCommentGUID mainAssetIsMine:v9->_mainAssetUUID mainAssetIsVideo:v9->_photosBatchID inAlbumWithTitle:v9->_mainAssetIsMine albumUUID:v39 albumCloudGUID:v9->_albumTitle assetUUIDs:v9->_albumUUID placeholderAssetUUIDs:v9->_albumCloudGUID lowResThumbAssetUUIDs:v44 senderNames:v25 forMultipleAsset:v43 allMultipleAssetIsMine:v27 isMixedType:v40];
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
      LOBYTE(v39) = v9->_mainAssetIsVideo;
      v35 = [(PLNotification *)v32 _initWithCommentsCount:commentCount + v42 commentDate:v9->_commentDate firstCommentGUID:v9->_firstCommentGUID toAssetWithUUID:v9->_mainAssetUUID photosBatchID:v9->_photosBatchID mainAssetIsMine:v9->_mainAssetIsMine mainAssetIsVideo:v39 inAlbumWithTitle:v9->_albumTitle albumUUID:v9->_albumUUID albumCloudGUID:v9->_albumCloudGUID assetUUIDs:v44 placeholderAssetUUIDs:v25 lowResThumbAssetUUIDs:v43];
    }

    v18 = v35;
LABEL_58:
    [v18 setOriginalDate:v16];
    v37 = v9->_suppressAlert || v5->_suppressAlert;
    [v18 setSuppressAlert:v37 & 1];
    v38 = [(PLNotification *)v5 thumbnailImageData];
    [v18 setThumbnailImageData:v38];

    goto LABEL_62;
  }

  if (v6 != notificationType)
  {
    if (v6 == 4 && v5->_commentIsCaption)
    {
      v11 = self;
      v9 = v5;
      goto LABEL_23;
    }

LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

  v9 = self;
  v10 = v5;
  v11 = v10;
  if (v6 != 4 && v10->_containsBatchFirstKnownAsset)
  {

LABEL_23:
    v17 = v11;
    v11 = v9;
    v9 = v17;
  }

  v18 = [[PLNotification alloc] _initWithPhotosAddedNotification:v9 mergedWithNotification:v11];
  v19 = v9->_originalDate;
  v20 = v11->_originalDate;
  if (v19)
  {
    v21 = [(NSDate *)v19 earlierDate:v20];
    [v18 setOriginalDate:v21];
  }

  else
  {
    [v18 setOriginalDate:v20];
  }

  v23 = v9->_suppressAlert || v11->_suppressAlert;
  [v18 setSuppressAlert:v23 & 1];
  v16 = [(PLNotification *)v5 thumbnailImageData];
  [v18 setThumbnailImageData:v16];
LABEL_62:

LABEL_27:

  return v18;
}

- (id)initForSharedLibraryExitInitatedByOwnerWithType:(signed __int16)a3 retentionPolicy:(int64_t)a4 ownerName:(id)a5
{
  v6 = a3;
  v8 = a5;
  if (v6 >= 2)
  {
    v10 = [(PLNotification *)self _initWithType:16];
    v11 = v10;
    if (v10)
    {
      *(v10 + 132) = v6;
      v10[34] = a4;
      v12 = [v8 copy];
      v13 = v11[29];
      v11[29] = v12;
    }

    self = v11;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)initForSharedLibraryParticipantAssetTrashNotificationWithTrashedPhotoCount:(unint64_t)a3 videoCount:(unint64_t)a4 itemCount:(unint64_t)a5
{
  result = [(PLNotification *)self _initWithType:14];
  if (result)
  {
    *(result + 30) = a3;
    *(result + 31) = a4;
    *(result + 32) = a5;
  }

  return result;
}

- (id)initForSharedLibraryScopeAcceptWithLibraryScopeIdentifier:(id)a3 participantName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:795 description:{@"Invalid parameter not satisfying: %@", @"scopeIdentifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:796 description:{@"Invalid parameter not satisfying: %@", @"participantName"}];

LABEL_3:
  v10 = [(PLNotification *)self _initWithType:13];
  if (v10)
  {
    v11 = [v7 copy];
    v12 = v10[28];
    v10[28] = v11;

    v13 = [v9 copy];
    v14 = v10[29];
    v10[29] = v13;
  }

  return v10;
}

- (PLNotification)initWithExpiringMomentShareUUIDs:(id)a3 thumbnailImageData:(id)a4 notificationTitle:(id)a5 notificationSubtitle:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (![v12 count])
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:763 description:{@"Invalid parameter not satisfying: %@", @"UUIDs.count"}];
  }

  v16 = [(PLNotification *)self _initWithType:9];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(v16 + 26, a3);
    v18 = [v12 firstObject];
    v19 = [v18 copy];
    keyMomentShareUUID = v17->_keyMomentShareUUID;
    v17->_keyMomentShareUUID = v19;

    objc_storeStrong(&v17->_thumbnailImageData, a4);
    v21 = [v14 copy];
    notificationTitle = v17->_notificationTitle;
    v17->_notificationTitle = v21;

    v23 = [v15 copy];
    notificationSubtitle = v17->_notificationSubtitle;
    v17->_notificationSubtitle = v23;
  }

  return v17;
}

- (PLNotification)initWithExpiringMomentShares:(id)a3
{
  v5 = a3;
  v6 = [v5 firstObject];
  if (!v6)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:741 description:{@"Invalid parameter not satisfying: %@", @"firstMomentShare"}];
  }

  v7 = [v6 thumbnailImageData];

  if (!v7)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:742 description:{@"Invalid parameter not satisfying: %@", @"firstMomentShare.thumbnailImageData"}];
  }

  v8 = [(PLNotification *)self _initWithType:9];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __47__PLNotification_initWithExpiringMomentShares___block_invoke;
    v24[3] = &unk_1E7572220;
    v10 = v9;
    v25 = v10;
    [v5 enumerateObjectsUsingBlock:v24];
    momentShareUUIDs = v8->_momentShareUUIDs;
    v8->_momentShareUUIDs = v10;
    v12 = v10;

    v13 = [v6 shareURL];
    v14 = [v13 absoluteString];
    destinationURLString = v8->_destinationURLString;
    v8->_destinationURLString = v14;

    v16 = [v6 uuid];
    v17 = [v16 copy];
    keyMomentShareUUID = v8->_keyMomentShareUUID;
    v8->_keyMomentShareUUID = v17;

    v19 = [v6 thumbnailImageData];
    thumbnailImageData = v8->_thumbnailImageData;
    v8->_thumbnailImageData = v19;
  }

  return v8;
}

void __47__PLNotification_initWithExpiringMomentShares___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

- (id)initCMMInvitationReadyToViewWithMomentShare:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:715 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v6 = [v5 previewData];
  v7 = [objc_alloc(MEMORY[0x1E6994B28]) initWithData:v6];
  v8 = [v7 previewImageDatas];
  v9 = [v8 firstObject];

  if (!v9)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:719 description:{@"Invalid parameter not satisfying: %@", @"thumbnailImageData"}];
  }

  v10 = [v5 owner];
  v11 = [v10 nameComponents];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    [v12 setStyle:1];
    v13 = [v12 stringFromPersonNameComponents:v11];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(PLNotification *)self _initWithType:10];
  if (v14)
  {
    v15 = [v5 shareURL];
    v16 = [v15 absoluteString];
    v17 = *(v14 + 2);
    *(v14 + 2) = v16;

    v18 = [v5 uuid];
    v19 = [v18 copy];
    v20 = *(v14 + 25);
    *(v14 + 25) = v19;

    objc_storeStrong(v14 + 41, v9);
    objc_storeStrong(v14 + 27, v13);
  }

  return v14;
}

- (id)initCMMInvitationWithMomentShare:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:702 description:{@"Invalid parameter not satisfying: %@", @"momentShare"}];
  }

  v6 = [(PLNotification *)self _initWithType:8];
  if (v6)
  {
    v7 = [v5 shareURL];
    v8 = [v7 absoluteString];
    v9 = v6[2];
    v6[2] = v8;

    v10 = [v5 uuid];
    v11 = [v10 copy];
    v12 = v6[25];
    v6[25] = v11;

    v13 = [v5 owner];
    v14 = [v13 emailAddress];
    v15 = v6[4];
    v6[4] = v14;
  }

  return v6;
}

- (PLNotification)initWithInterestingMemoryNotificationWithMemoryUUID:(id)a3 keyAssetUUID:(id)a4 notificationTitle:(id)a5 notificationSubtitle:(id)a6 photoLibraryURLString:(id)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v14)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:682 description:{@"Invalid parameter not satisfying: %@", @"memoryUUID"}];

    if (v16)
    {
LABEL_3:
      if (v17)
      {
        goto LABEL_4;
      }

LABEL_12:
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      [v32 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:684 description:{@"Invalid parameter not satisfying: %@", @"notificationSubtitle"}];

      if (v18)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  v31 = [MEMORY[0x1E696AAA8] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:683 description:{@"Invalid parameter not satisfying: %@", @"notificationTitle"}];

  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v18)
  {
    goto LABEL_5;
  }

LABEL_13:
  v33 = [MEMORY[0x1E696AAA8] currentHandler];
  [v33 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:685 description:{@"Invalid parameter not satisfying: %@", @"photoLibraryURLString"}];

LABEL_5:
  v19 = [(PLNotification *)self _initWithType:6];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(v19 + 22, a3);
    if (v15)
    {
      v21 = [v15 copy];
      mainAssetUUID = v20->_mainAssetUUID;
      v20->_mainAssetUUID = v21;

      [(NSMutableOrderedSet *)v20->_lowResThumbAssetUUIDs addObject:v20->_mainAssetUUID];
    }

    v23 = [v16 copy];
    notificationTitle = v20->_notificationTitle;
    v20->_notificationTitle = v23;

    v25 = [v17 copy];
    notificationSubtitle = v20->_notificationSubtitle;
    v20->_notificationSubtitle = v25;

    v27 = [v18 copy];
    photoLibraryURLString = v20->_photoLibraryURLString;
    v20->_photoLibraryURLString = v27;
  }

  return v20;
}

- (id)_initWithLikesCount:(int64_t)a3 commentDate:(id)a4 firstCommentGUID:(id)a5 toAssetWithUUID:(id)a6 photosBatchID:(id)a7 mainAssetIsMine:(BOOL)a8 mainAssetIsVideo:(BOOL)a9 inAlbumWithTitle:(id)a10 albumUUID:(id)a11 albumCloudGUID:(id)a12 assetUUIDs:(id)a13 placeholderAssetUUIDs:(id)a14 lowResThumbAssetUUIDs:(id)a15 senderNames:(id)a16 forMultipleAsset:(BOOL)a17 allMultipleAssetIsMine:(BOOL)a18 isMixedType:(BOOL)a19
{
  v43 = a4;
  obj = a5;
  v22 = a5;
  v23 = a7;
  v41 = v22;
  v40 = a6;
  v39 = a7;
  v44 = a10;
  v42 = a11;
  v38 = a12;
  v24 = a13;
  v25 = a14;
  v37 = a15;
  v26 = a16;
  v27 = [(PLNotification *)self _initWithType:5];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(v27 + 7, a6);
    objc_storeStrong(v28 + 6, v23);
    *(v28 + 64) = a8;
    *(v28 + 65) = a9;
    objc_storeStrong(v28 + 15, obj);
    objc_storeStrong(v28 + 16, a4);
    objc_storeStrong(v28 + 5, a10);
    v28[18] = a3;
    v29 = v28[3];
    v28[3] = 0;

    objc_storeStrong(v28 + 20, a16);
    v30 = v28[4];
    v28[4] = 0;

    objc_storeStrong(v28 + 9, a13);
    v28[10] = [v24 count];
    objc_storeStrong(v28 + 35, a11);
    objc_storeStrong(v28 + 36, a12);
    objc_storeStrong(v28 + 11, a14);
    objc_storeStrong(v28 + 12, a15);
    *(v28 + 168) = a17;
    *(v28 + 169) = a18;
    *(v28 + 170) = a19;
  }

  return v28;
}

- (id)_initWithCommentsCount:(int64_t)a3 commentDate:(id)a4 firstCommentGUID:(id)a5 toAssetWithUUID:(id)a6 photosBatchID:(id)a7 mainAssetIsMine:(BOOL)a8 mainAssetIsVideo:(BOOL)a9 inAlbumWithTitle:(id)a10 albumUUID:(id)a11 albumCloudGUID:(id)a12 assetUUIDs:(id)a13 placeholderAssetUUIDs:(id)a14 lowResThumbAssetUUIDs:(id)a15
{
  v38 = a4;
  v36 = a5;
  v34 = a6;
  v33 = a7;
  v37 = a10;
  v35 = a11;
  v19 = a12;
  v20 = a13;
  v21 = a14;
  v32 = a15;
  v22 = [(PLNotification *)self _initWithType:4];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(v22 + 7, a6);
    objc_storeStrong(v23 + 6, a7);
    *(v23 + 64) = a8;
    *(v23 + 65) = a9;
    objc_storeStrong(v23 + 15, a5);
    objc_storeStrong(v23 + 16, a4);
    objc_storeStrong(v23 + 5, a10);
    v24 = v23[17];
    v23[17] = 0;
    v23[18] = a3;

    v25 = v23[3];
    v23[3] = 0;

    v26 = v23[20];
    v23[20] = 0;

    v27 = v23[4];
    v23[4] = 0;

    objc_storeStrong(v23 + 9, a13);
    v23[10] = [v20 count];
    objc_storeStrong(v23 + 35, a11);
    objc_storeStrong(v23 + 36, a12);
    objc_storeStrong(v23 + 11, a14);
    objc_storeStrong(v23 + 12, a15);
  }

  return v23;
}

- (PLNotification)initWithLikeAdded:(id)a3
{
  v4 = a3;
  v5 = [(PLNotification *)self _initWithType:5];
  if (v5)
  {
    v6 = [v4 asset];
    v7 = [v6 uuid];
    v8 = [v7 copy];
    mainAssetUUID = v5->_mainAssetUUID;
    v5->_mainAssetUUID = v8;

    v10 = [v6 cloudBatchID];
    v11 = [v10 copy];
    photosBatchID = v5->_photosBatchID;
    v5->_photosBatchID = v11;

    v13 = [v4 cloudGUID];
    v14 = [v13 copy];
    firstCommentGUID = v5->_firstCommentGUID;
    v5->_firstCommentGUID = v14;

    v16 = [v4 commentDate];
    v17 = [v16 copy];
    commentDate = v5->_commentDate;
    v5->_commentDate = v17;

    v19 = [v4 commenterDisplayName];
    v20 = [v19 copy];
    senderName = v5->_senderName;
    v5->_senderName = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v5->_senderNames;
    v5->_senderNames = v22;

    if (v5->_senderName)
    {
      [(NSMutableSet *)v5->_senderNames addObject:?];
    }

    v24 = [v4 commenterEmail];
    v25 = [v24 copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v25;

    v5->_commentCount = 1;
    v27 = [v6 collectionShare];
    v28 = [v27 title];
    v29 = [v28 copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v29;

    v31 = [v6 collectionShare];
    v32 = [v31 uuid];
    v33 = [v32 copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v33;

    v35 = [v6 collectionShare];
    v36 = [v35 scopeIdentifier];
    v37 = [v36 copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v37;

    v39 = [v6 cloudIsMyAsset];
    v5->_mainAssetIsMine = v39;
    v5->_allMultipleAssetIsMine = v39;
    v5->_mainAssetIsVideo = [v6 isVideo];
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
    v47 = [v6 cloudSharedPlaceholderKind];
    if (v47 != 2)
    {
      if (v47 != 3)
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

- (PLNotification)initWithCommentAdded:(id)a3
{
  v4 = a3;
  v5 = [(PLNotification *)self _initWithType:4];
  if (v5)
  {
    v6 = [v4 asset];
    v7 = [v6 uuid];
    v8 = [v7 copy];
    mainAssetUUID = v5->_mainAssetUUID;
    v5->_mainAssetUUID = v8;

    v10 = [v6 cloudBatchID];
    v11 = [v10 copy];
    photosBatchID = v5->_photosBatchID;
    v5->_photosBatchID = v11;

    v13 = [v4 cloudGUID];
    v14 = [v13 copy];
    firstCommentGUID = v5->_firstCommentGUID;
    v5->_firstCommentGUID = v14;

    v16 = [v4 commentDate];
    v17 = [v16 copy];
    commentDate = v5->_commentDate;
    v5->_commentDate = v17;

    v19 = [v4 commenterDisplayName];
    v20 = [v19 copy];
    senderName = v5->_senderName;
    v5->_senderName = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v5->_senderNames;
    v5->_senderNames = v22;

    if (v5->_senderName)
    {
      [(NSMutableSet *)v5->_senderNames addObject:?];
    }

    v24 = [v4 commenterEmail];
    v25 = [v24 copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v25;

    v27 = [v4 commentText];
    v28 = [v27 copy];
    commentText = v5->_commentText;
    v5->_commentText = v28;

    v5->_commentCount = 1;
    v30 = [v4 isCaption];
    v5->_commentIsCaption = [v30 BOOLValue];

    v31 = [v6 collectionShare];
    v32 = [v31 title];
    v33 = [v32 copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v33;

    v35 = [v6 collectionShare];
    v36 = [v35 uuid];
    v37 = [v36 copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v37;

    v39 = [v6 collectionShare];
    v40 = [v39 scopeIdentifier];
    v41 = [v40 copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v41;

    v5->_mainAssetIsMine = [v6 cloudIsMyAsset];
    v5->_mainAssetIsVideo = [v6 isVideo];
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
    v50 = [v6 cloudSharedPlaceholderKind];
    if (v50 != 2)
    {
      if (v50 != 3)
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

- (id)_initWithPhotosAddedNotification:(id)a3 mergedWithNotificationDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLNotification *)self _initWithType:3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, v6[3]);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = v9[20];
    v9[20] = v10;

    if (v9[3])
    {
      [v9[20] addObject:?];
    }

    objc_storeStrong(v9 + 4, v6[4]);
    objc_storeStrong(v9 + 5, v6[5]);
    objc_storeStrong(v9 + 35, v6[35]);
    objc_storeStrong(v9 + 36, v6[36]);
    objc_storeStrong(v9 + 7, v6[7]);
    objc_storeStrong(v9 + 6, v6[6]);
    *(v9 + 64) = *(v6 + 64);
    *(v9 + 65) = *(v6 + 65);
    *(v9 + 66) = *(v6 + 66);
    v12 = [v6[9] mutableCopy];
    v13 = v9[9];
    v9[9] = v12;

    v14 = v6[10];
    v15 = [v7 objectForKey:*MEMORY[0x1E69C0198]];
    v9[10] = &v14[[v15 integerValue]];

    v16 = [v6[11] mutableCopy];
    v17 = v9[11];
    v9[11] = v16;

    v18 = [v6[12] mutableCopy];
    v19 = v9[12];
    v9[12] = v18;

    v20 = v6;
    objc_storeStrong(v9 + 15, v20[15]);
    objc_storeStrong(v9 + 16, v20[16]);
    objc_storeStrong(v9 + 17, v20[17]);
    *(v9 + 152) = *(v20 + 152);
    v21 = [v7 objectForKey:*MEMORY[0x1E69C0248]];
    v22 = [v21 integerValue];

    v23 = [v7 objectForKey:*MEMORY[0x1E69C01D0]];
    v24 = [v23 BOOLValue];

    if (v22 == 4 || v22 == 3 && v24)
    {
      v25 = [v7 objectForKey:*MEMORY[0x1E69C01B8]];
      v26 = [v7 objectForKey:*MEMORY[0x1E69C01C8]];
      v27 = [v7 objectForKey:*MEMORY[0x1E69C01E0]];
      v28 = v9[15];
      v9[15] = v25;
      v29 = v25;

      v30 = v9[16];
      v9[16] = v26;
      v31 = v26;

      v32 = v9[17];
      v9[17] = v27;

      *(v9 + 152) = v24;
    }
  }

  return v9;
}

- (id)_initWithPhotosAddedNotification:(id)a3 mergedWithNotification:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLNotification *)self _initWithType:3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, *(v6 + 3));
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = v9[20];
    v9[20] = v10;

    if (v9[3])
    {
      [v9[20] addObject:?];
    }

    objc_storeStrong(v9 + 4, *(v6 + 4));
    objc_storeStrong(v9 + 5, *(v6 + 5));
    objc_storeStrong(v9 + 35, *(v6 + 35));
    objc_storeStrong(v9 + 36, *(v6 + 36));
    objc_storeStrong(v9 + 7, *(v6 + 7));
    objc_storeStrong(v9 + 6, *(v6 + 6));
    *(v9 + 64) = *(v6 + 64);
    *(v9 + 65) = *(v6 + 65);
    *(v9 + 66) = *(v6 + 66);
    v12 = v7[41];
    if (v12)
    {
      objc_storeStrong(v9 + 41, v12);
    }

    v13 = [*(v6 + 9) mutableCopy];
    v14 = v9[9];
    v9[9] = v13;

    [v9[9] unionSet:v7[9]];
    v15 = [v6 notificationType];
    if (v15 == [v7 notificationType])
    {
      v16 = [v9[9] count];
    }

    else
    {
      v16 = *(v6 + 10);
    }

    v9[10] = v16;
    v17 = [*(v6 + 11) mutableCopy];
    v18 = v9[11];
    v9[11] = v17;

    [v9[11] unionOrderedSet:v7[11]];
    v19 = [*(v6 + 12) mutableCopy];
    v20 = v9[12];
    v9[12] = v19;

    [v9[12] unionOrderedSet:v7[12]];
    v21 = v6;
    if ([v7 notificationType] == 4)
    {
      v22 = v7;

      v21 = v22;
    }

    objc_storeStrong(v9 + 15, v21[15]);
    objc_storeStrong(v9 + 16, v21[16]);
    objc_storeStrong(v9 + 17, v21[17]);
    *(v9 + 152) = *(v21 + 152);
  }

  return v9;
}

- (PLNotification)initWithAssetsAdded:(id)a3 toAlbum:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:371 description:{@"Invalid parameter not satisfying: %@", @"assetsAdded"}];
  }

  if ([v7 count])
  {
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"[assetsAdded count]"}];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  v44 = [MEMORY[0x1E696AAA8] currentHandler];
  [v44 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"album"}];

LABEL_5:
  v9 = [(PLNotification *)self _initWithType:3];
  if (v9)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__78590;
    v54 = __Block_byref_object_dispose__78591;
    v55 = [v7 firstObject];
    v10 = [v8 assets];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __46__PLNotification_initWithAssetsAdded_toAlbum___block_invoke;
    v47[3] = &unk_1E75721F8;
    v11 = v7;
    v48 = v11;
    v49 = &v50;
    [v10 enumerateObjectsUsingBlock:v47];

    v12 = [v51[5] cloudOwnerFullName];
    v13 = [v12 copy];
    senderName = v9->_senderName;
    v9->_senderName = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v9->_senderNames;
    v9->_senderNames = v15;

    if (v9->_senderName)
    {
      [(NSMutableSet *)v9->_senderNames addObject:?];
    }

    v17 = [v51[5] cloudOwnerEmail];
    v18 = [v17 copy];
    senderEmailAddress = v9->_senderEmailAddress;
    v9->_senderEmailAddress = v18;

    v20 = [v8 localizedTitle];
    v21 = [v20 copy];
    albumTitle = v9->_albumTitle;
    v9->_albumTitle = v21;

    v23 = [v8 uuid];
    v24 = [v23 copy];
    albumUUID = v9->_albumUUID;
    v9->_albumUUID = v24;

    v26 = [v8 cloudGUID];
    v27 = [v26 copy];
    albumCloudGUID = v9->_albumCloudGUID;
    v9->_albumCloudGUID = v27;

    v29 = [v51[5] uuid];
    v30 = [v29 copy];
    mainAssetUUID = v9->_mainAssetUUID;
    v9->_mainAssetUUID = v30;

    v32 = [v51[5] cloudBatchID];
    v33 = [v32 copy];
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

- (PLNotification)initWithAssetAdded:(id)a3 atIndex:(unint64_t)a4 toAlbum:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"assetAdded"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v50 = [MEMORY[0x1E696AAA8] currentHandler];
  [v50 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"album"}];

LABEL_3:
  v12 = [(PLNotification *)self _initWithType:3];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = [v9 cloudOwnerFullName];
  v14 = [v13 copy];
  senderName = v12->_senderName;
  v12->_senderName = v14;

  v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  senderNames = v12->_senderNames;
  v12->_senderNames = v16;

  if (v12->_senderName)
  {
    [(NSMutableSet *)v12->_senderNames addObject:?];
  }

  v18 = [v9 cloudOwnerEmail];
  v19 = [v18 copy];
  senderEmailAddress = v12->_senderEmailAddress;
  v12->_senderEmailAddress = v19;

  v21 = [v11 localizedTitle];
  v22 = [v21 copy];
  albumTitle = v12->_albumTitle;
  v12->_albumTitle = v22;

  v24 = [v11 uuid];
  v25 = [v24 copy];
  albumUUID = v12->_albumUUID;
  v12->_albumUUID = v25;

  v27 = [v11 cloudGUID];
  v28 = [v27 copy];
  albumCloudGUID = v12->_albumCloudGUID;
  v12->_albumCloudGUID = v28;

  v30 = [v9 uuid];
  v31 = [v30 copy];
  mainAssetUUID = v12->_mainAssetUUID;
  v12->_mainAssetUUID = v31;

  v33 = [v9 cloudBatchID];
  v34 = [v33 copy];
  photosBatchID = v12->_photosBatchID;
  v12->_photosBatchID = v34;

  v12->_mainAssetIsMine = [v9 cloudIsMyAsset];
  v12->_mainAssetIsVideo = [v9 isVideo];
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

  v43 = [v9 cloudSharedPlaceholderKind];
  if (v43 != 2)
  {
    if (v43 != 3)
    {
      goto LABEL_10;
    }

    p_placeholderAssetUUIDs = &v12->_lowResThumbAssetUUIDs;
  }

  [*p_placeholderAssetUUIDs addObject:v12->_mainAssetUUID];
LABEL_10:
  v12->_containsBatchFirstKnownAsset = 1;
  if (a4)
  {
    v44 = [v11 assets];
    v45 = [v44 objectAtIndex:a4 - 1];

    v46 = [v9 cloudBatchID];
    v47 = [v45 cloudBatchID];
    v12->_containsBatchFirstKnownAsset = [v46 isEqualToString:v47] ^ 1;
  }

LABEL_12:

  return v12;
}

- (PLNotification)initWithAssetsAdded:(id)a3 toCollectionShare:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"assetsAdded"}];
  }

  if ([v7 count])
  {
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:268 description:{@"Invalid parameter not satisfying: %@", @"[assetsAdded count]"}];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  v44 = [MEMORY[0x1E696AAA8] currentHandler];
  [v44 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"collectionShare"}];

LABEL_5:
  v9 = [(PLNotification *)self _initWithType:3];
  if (v9)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__78590;
    v54 = __Block_byref_object_dispose__78591;
    v55 = [v7 firstObject];
    v10 = [v8 collectionShareAssets];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __56__PLNotification_initWithAssetsAdded_toCollectionShare___block_invoke;
    v47[3] = &unk_1E75721D0;
    v11 = v7;
    v48 = v11;
    v49 = &v50;
    [v10 enumerateObjectsUsingBlock:v47];

    v12 = [v51[5] cloudOwnerFullName];
    v13 = [v12 copy];
    senderName = v9->_senderName;
    v9->_senderName = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    senderNames = v9->_senderNames;
    v9->_senderNames = v15;

    if (v9->_senderName)
    {
      [(NSMutableSet *)v9->_senderNames addObject:?];
    }

    v17 = [v51[5] cloudOwnerEmail];
    v18 = [v17 copy];
    senderEmailAddress = v9->_senderEmailAddress;
    v9->_senderEmailAddress = v18;

    v20 = [v8 title];
    v21 = [v20 copy];
    albumTitle = v9->_albumTitle;
    v9->_albumTitle = v21;

    v23 = [v8 uuid];
    v24 = [v23 copy];
    albumUUID = v9->_albumUUID;
    v9->_albumUUID = v24;

    v26 = [v8 scopeIdentifier];
    v27 = [v26 copy];
    albumCloudGUID = v9->_albumCloudGUID;
    v9->_albumCloudGUID = v27;

    v29 = [v51[5] uuid];
    v30 = [v29 copy];
    mainAssetUUID = v9->_mainAssetUUID;
    v9->_mainAssetUUID = v30;

    v32 = [v51[5] cloudBatchID];
    v33 = [v32 copy];
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

- (PLNotification)initWithMultipleContributorEnabledForAlbum:(id)a3
{
  v4 = a3;
  v5 = [(PLNotification *)self _initWithType:2];
  if (v5)
  {
    v6 = [v4 cloudOwnerDisplayNameIncludingEmail:0 allowsEmail:1];
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

    v11 = [v4 cloudOwnerEmail];
    v12 = [v11 copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v12;

    v14 = [v4 localizedTitle];
    v15 = [v14 copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v15;

    v17 = [v4 uuid];
    v18 = [v17 copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v18;

    v20 = [v4 cloudGUID];
    v21 = [v20 copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v21;
  }

  return v5;
}

- (PLNotification)initWithMultipleContributorEnabledForCollectionShare:(id)a3
{
  v4 = a3;
  v5 = [(PLNotification *)self _initWithType:2];
  if (v5)
  {
    v6 = [v4 owner];
    v7 = [v6 fullName];
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

    v12 = [v4 owner];
    v13 = [v12 emailAddress];
    v14 = [v13 copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v14;

    v16 = [v4 title];
    v17 = [v16 copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v17;

    v19 = [v4 uuid];
    v20 = [v19 copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v20;

    v22 = [v4 scopeIdentifier];
    v23 = [v22 copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v23;
  }

  return v5;
}

- (PLNotification)initWithInvitationRecordStatusChanged:(id)a3
{
  v4 = a3;
  v5 = [(PLNotification *)self _initWithType:1];
  if (v5)
  {
    v6 = [v4 album];
    v7 = [v4 inviteeDisplayNameIncludingEmail:0];
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

    v12 = [v4 inviteeEmails];
    v13 = [v12 firstObject];
    v14 = [v13 copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v14;

    v16 = [v6 localizedTitle];
    v17 = [v16 copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v17;

    v19 = [v6 uuid];
    v20 = [v19 copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v20;

    v22 = [v4 invitationState];
    v5->_invitationState = [v22 intValue];

    v23 = [v6 cloudGUID];
    v24 = [v23 copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v24;
  }

  return v5;
}

- (PLNotification)initWithParticipantAcceptanceStatusChanged:(id)a3
{
  v4 = a3;
  v5 = [(PLNotification *)self _initWithType:17];
  if (v5)
  {
    v6 = [v4 share];
    v7 = [v4 fullName];
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

    v12 = [v4 emailAddress];
    v13 = [v12 copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v13;

    v15 = [v6 title];
    v16 = [v15 copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v16;

    v18 = [v6 uuid];
    v19 = [v18 copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v19;

    v5->_acceptanceStatus = [v4 acceptanceStatus];
    v21 = [v6 scopeIdentifier];
    v22 = [v21 copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v22;
  }

  return v5;
}

- (PLNotification)initWithInvitationAlbum:(id)a3
{
  v4 = a3;
  v5 = [(PLNotification *)self _initWithType:0];
  if (v5)
  {
    v6 = [v4 cloudOwnerDisplayNameIncludingEmail:0 allowsEmail:1];
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

    v11 = [v4 cloudOwnerEmail];
    v12 = [v11 copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v12;

    v14 = [v4 localizedTitle];
    v15 = [v14 copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v15;

    v17 = [v4 uuid];
    v18 = [v17 copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v18;

    v20 = [v4 cloudGUID];
    v21 = [v20 copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v21;

    v5->_offerToReportAsJunk = [v4 cloudOwnerIsWhitelisted] ^ 1;
  }

  return v5;
}

- (PLNotification)initWithInvitationCollectionShare:(id)a3
{
  v4 = a3;
  v5 = [(PLNotification *)self _initWithType:0];
  if (v5)
  {
    v6 = [v4 owner];
    v7 = [v6 fullName];
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

    v12 = [v4 owner];
    v13 = [v12 emailAddress];
    v14 = [v13 copy];
    senderEmailAddress = v5->_senderEmailAddress;
    v5->_senderEmailAddress = v14;

    v16 = [v4 title];
    v17 = [v16 copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v17;

    v19 = [v4 uuid];
    v20 = [v19 copy];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v20;

    v22 = [v4 scopeIdentifier];
    v23 = [v22 copy];
    albumCloudGUID = v5->_albumCloudGUID;
    v5->_albumCloudGUID = v23;

    v25 = [v4 owner];
    LOBYTE(v13) = [v25 allowlistedState] != 1;

    v5->_offerToReportAsJunk = v13;
  }

  return v5;
}

- (id)_initWithType:(int64_t)a3
{
  v15.receiver = self;
  v15.super_class = PLNotification;
  v4 = [(PLNotification *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_notificationType = a3;
    v6 = [MEMORY[0x1E695DF00] date];
    v7 = [v6 copy];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLNotification.m" lineNumber:131 description:@"Do not use this initializer"];

  return 0;
}

+ (id)_UNCategoryFromNotificationType:(int64_t)a3
{
  if ((a3 - 1) > 0x10)
  {
    return @"PLUNCategoryInvitationReceived";
  }

  else
  {
    return off_1E7572270[a3 - 1];
  }
}

+ (id)requestIdentifierByNotificationType:(int64_t)a3 keyObjectUUID:(id)a4 photosBatchID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 _UNCategoryFromNotificationType:a3];
  if ([v8 length])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", v10, v9, v8];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v10, v9, v13];
  }
  v11 = ;

  return v11;
}

@end