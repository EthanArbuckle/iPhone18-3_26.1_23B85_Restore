@interface PLNotificationManager
+ (id)_bestDateForDeliveringNotification;
+ (id)_bestDateForDeliveringNotificationFromCoreDuetWithError:(id *)error;
+ (id)_notificationDeliveryDate;
+ (id)filteredAlbumListForContentMode:(int)mode library:(id)library;
+ (id)sharedManager;
+ (unint64_t)sharedAlbumsUnreadCount;
+ (void)processAssetsForSensitivityIfNecessary:(id)necessary inPhotoLibrary:(id)library completionHandler:(id)handler;
- (BOOL)_alertFiltrationEnabled;
- (BOOL)_notificationType:(int64_t)type matchesCommentsOrLikeNotifications:(BOOL)notifications andPhotosAddedToAlbumNotifications:(BOOL)albumNotifications;
- (BOOL)_shouldAllowAlertsFromContactWithEmail:(id)email;
- (PLNotificationManager)init;
- (id)_addWaitingNotification:(id)notification forPhotosBatchID:(id)d;
- (id)_generateMemoryNotificationRepresentationWithMemoryUUID:(id)d keyAssetUUID:(id)iD notificationTitle:(id)title notificationSubtitle:(id)subtitle notificationDeliveryDate:(id)date pathManager:(id)manager;
- (id)_initSharedInstance;
- (id)_memoryNotificationFromDictionaryRepresentation:(id)representation;
- (id)_waitingNotificationForPhotosBatchID:(id)d;
- (id)contactStore;
- (unint64_t)currentAppBadgeCountForNotificationUNCenter:(id)center;
- (void)_deleteNotificationsForAssetWithUUID:(id)d shouldDeleteCommentsOrLikeNotifications:(BOOL)notifications shouldDeletePhotosAddedToAlbumNotifications:(BOOL)albumNotifications;
- (void)_deleteNotificationsForObjectWithUUID:(id)d notificationDictionaryKey:(id)key notificationTypes:(id)types;
- (void)_postAsyncNotificationForAcceptedSharedLibraryWithScopeIdentifier:(id)identifier participantName:(id)name NotificationDeliveryDate:(id)date transaction:(id)transaction;
- (void)_postAsyncNotificationForPhotosChallengeNewQuestionsWithNotificationDeliveryDate:(id)date transaction:(id)transaction;
- (void)_postAsyncNotificationForPhotosChallengeSubmissionWithNotificationDeliveryDate:(id)date transaction:(id)transaction;
- (void)_postAsyncNotificationForSharedLibraryParticipantAssetTrashWithTrashedAssetPhotoCount:(unint64_t)count videoCount:(unint64_t)videoCount itemCount:(unint64_t)itemCount withNotificationDeliveryDate:(id)date transaction:(id)transaction;
- (void)_postAsyncNotificationForSharedLibrarySuggestionsWithNotificationDeliveryDate:(id)date transaction:(id)transaction;
- (void)_postNotificationForSharedLibraryExitInitatedByOwnerWithTypeWithExitType:(signed __int16)type retentionPolicy:(int64_t)policy ownerName:(id)name notificationDeliveryDate:(id)date transaction:(id)transaction;
- (void)_removeWaitingNotificationForPhotosBatchID:(id)d;
- (void)_updateImageDataForNotification:(id)notification;
- (void)calculateCurrentBadgeCountWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)discardAllNotifications;
- (void)getThumbnailImageDataAssetUUID:(id)d completionHandler:(id)handler;
- (void)noteCollectionShareUnseenStatusDidChange:(id)change;
- (void)noteDidChangePlaceholderKindForAsset:(id)asset fromOldKind:(signed __int16)kind forCollectionShare:(id)share mstreamdInfo:(id)info;
- (void)noteDidChangePlaceholderKindForAsset:(id)asset fromOldKind:(signed __int16)kind forSharedAlbum:(id)album mstreamdInfo:(id)info;
- (void)noteDidDeleteCollectionShare:(id)share;
- (void)noteDidDeleteSharedAlbum:(id)album;
- (void)noteDidDeleteSharedAssetsWithUUIDs:(id)ds;
- (void)noteDidReceiveAssets:(id)assets forCollectionShare:(id)share mstreamdInfo:(id)info;
- (void)noteDidReceiveAssets:(id)assets forSharedAlbum:(id)album mstreamdInfo:(id)info;
- (void)noteDidReceiveCMMInvitationWithMomentShare:(id)share;
- (void)noteDidReceiveComment:(id)comment mstreamdInfo:(id)info;
- (void)noteDidReceiveExpiringCMMInvitationsWithMomentShares:(id)shares;
- (void)noteDidReceiveInvitationForCollectionShare:(id)share;
- (void)noteDidReceiveInvitationForSharedAlbum:(id)album;
- (void)noteDidReceiveLike:(id)like mstreamdInfo:(id)info;
- (void)noteInvitationRecordStatusChanged:(id)changed fromOldState:(int64_t)state mstreamdInfo:(id)info;
- (void)noteMultipleContributorStatusChangedForAlbum:(id)album mstreamdInfo:(id)info;
- (void)noteMultipleContributorStatusChangedForCollectionShare:(id)share mstreamdInfo:(id)info;
- (void)noteParticipantAcceptanceStatusChanged:(id)changed fromOldAcceptanceStatus:(int64_t)status mstreamdInfo:(id)info;
- (void)noteSharedAlbumUnseenStatusDidChange:(id)change;
- (void)noteSharedAssetCommentsUnreadStatusDidChange:(id)change;
- (void)noteUserAssetsAreReadyForMomentShare:(id)share;
- (void)noteUserDidChangeStatusForMomentShare:(id)share photoLibrary:(id)library;
- (void)noteUserDidDeleteSharedAlbumWithUUID:(id)d;
- (void)noteUserDidDeleteSharedAssetsWithUUIDs:(id)ds;
- (void)noteUserDidLeavePhotosApplication;
- (void)noteUserDidNavigateAwayFromCollectionShare:(id)share photoLibrary:(id)library;
- (void)noteUserDidNavigateAwayFromSharedAlbum:(id)album photoLibrary:(id)library;
- (void)noteUserDidNavigateIntoCollectionShare:(id)share photoLibrary:(id)library;
- (void)noteUserDidNavigateIntoSharedAlbum:(id)album photoLibrary:(id)library;
- (void)noteUserDidReadCommentOnSharedAsset:(id)asset photoLibrary:(id)library;
- (void)noteUserDidViewCloudFeedContent:(unint64_t)content photoLibrary:(id)library;
- (void)postNotificationForAcceptedSharedLibraryWithScopeIdentifier:(id)identifier participantName:(id)name library:(id)library notificationDeliveryDate:(id)date;
- (void)postNotificationForExpiringCMMsWithUUIDs:(id)ds thumbnailImageData:(id)data notificationTitle:(id)title notificationSubtitle:(id)subtitle;
- (void)postNotificationForInterestInUnrenderedCinematicVideoItems;
- (void)postNotificationForInterestingMemoryWithMemoryUUID:(id)d library:(id)library notificationDeliveryDate:(id)date;
- (void)postNotificationForPhotosChallengeNewQuestionsWithNotificationDeliveryDate:(id)date;
- (void)postNotificationForPhotosChallengeSubmissionWithNotificationDeliveryDate:(id)date;
- (void)postNotificationForReadyToViewMomentShareWithUUID:(id)d photoLibrary:(id)library;
- (void)postNotificationForSharedLibraryExitInitatedByOwnerWithTypeWithExitType:(signed __int16)type retentionPolicy:(int64_t)policy ownerName:(id)name notificationDeliveryDate:(id)date;
- (void)postNotificationForSharedLibraryParticipantAssetTrashWithTrashedAssetPhotoCount:(unint64_t)count videoCount:(unint64_t)videoCount itemCount:(unint64_t)itemCount withNotificationDeliveryDate:(id)date;
- (void)postNotificationForSharedLibrarySuggestionsWithNotificationDeliveryDate:(id)date;
- (void)removeNotificationForInterestingMemoryWithUUID:(id)d;
- (void)removeNotificationForSharedLibraryParticipantAssetTrash;
- (void)reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:(id)d;
- (void)sendResponse:(BOOL)response toPhotoStreamInvitationForAlbumWithCloudGUID:(id)d;
- (void)triggerNotificationThumbnailUpdateForAsset:(id)asset;
- (void)userViewedNotificationWithAlbumCloudGUID:(id)d;
@end

@implementation PLNotificationManager

- (BOOL)_alertFiltrationEnabled
{
  alertFiltrationEnabled = self->_alertFiltrationEnabled;
  if (alertFiltrationEnabled == -1)
  {
    v9 = v2;
    v10 = v3;
    keyExistsAndHasValidFormat = 0;
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    if (CFPreferencesGetAppBooleanValue(@"IncomingMessageAlertFiltration", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
    {
      v6 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v6 = 1;
    }

    alertFiltrationEnabled = !v6;
    self->_alertFiltrationEnabled = alertFiltrationEnabled;
  }

  return alertFiltrationEnabled != 0;
}

- (BOOL)_shouldAllowAlertsFromContactWithEmail:(id)email
{
  emailCopy = email;
  if ([(PLNotificationManager *)self _alertFiltrationEnabled])
  {
    if (emailCopy)
    {
      contactStore = [(PLNotificationManager *)self contactStore];
      v6 = [contactStore contactsMatchingEmailAddress:emailCopy keysToFetch:MEMORY[0x1E695E0F0]];

      v7 = v6 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID:(id)d
{
  dCopy = d;
  v4 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PLNotificationManager_reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID___block_invoke;
  v7[3] = &unk_1E7578848;
  v8 = dCopy;
  v9 = v4;
  v5 = v4;
  v6 = dCopy;
  [v5 performBlock:v7];
}

void __80__PLNotificationManager_reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__PLNotificationManager_reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID___block_invoke_2;
    v7[3] = &unk_1E7575FA8;
    v8 = *(a1 + 32);
    [v4 markPendingInvitationAsSpamWithCompletionHandler:v7];
    v5 = v8;
  }

  else
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Cannot locate collection share for scopeIdentifier: %@", buf, 0xCu);
    }
  }
}

void __80__PLNotificationManager_reportAsJunkPhotoStreamInvitationForAlbumWithCloudGUID___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to report as junk the invitation to collection share with scopeIdentifier: %@ error: %@", &v6, 0x16u);
  }
}

- (void)sendResponse:(BOOL)response toPhotoStreamInvitationForAlbumWithCloudGUID:(id)d
{
  dCopy = d;
  v6 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__PLNotificationManager_sendResponse_toPhotoStreamInvitationForAlbumWithCloudGUID___block_invoke;
  v9[3] = &unk_1E7576AC8;
  v10 = dCopy;
  v11 = v6;
  responseCopy = response;
  v7 = v6;
  v8 = dCopy;
  [v7 performBlock:v9];
}

void __83__PLNotificationManager_sendResponse_toPhotoStreamInvitationForAlbumWithCloudGUID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4)
  {
    if (*(a1 + 48) == 1)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __83__PLNotificationManager_sendResponse_toPhotoStreamInvitationForAlbumWithCloudGUID___block_invoke_2;
      v9[3] = &unk_1E7575FA8;
      v10 = *(a1 + 32);
      [v4 acceptWithCompletionHandler:v9];
      v5 = v10;
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __83__PLNotificationManager_sendResponse_toPhotoStreamInvitationForAlbumWithCloudGUID___block_invoke_187;
      v7[3] = &unk_1E7575FA8;
      v8 = *(a1 + 32);
      [v4 declineWithCompletionHandler:v7];
      v5 = v8;
    }
  }

  else
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Cannot locate collection share with scopeIdentifier: %@", buf, 0xCu);
    }
  }
}

void __83__PLNotificationManager_sendResponse_toPhotoStreamInvitationForAlbumWithCloudGUID___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Cannot accept invitation to collection share with scopeIdentifier: %@ error: %@", &v6, 0x16u);
  }
}

void __83__PLNotificationManager_sendResponse_toPhotoStreamInvitationForAlbumWithCloudGUID___block_invoke_187(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Cannot decline invitation to collection share with scopeIdentifier: %@ error: %@", &v6, 0x16u);
  }
}

- (void)discardAllNotifications
{
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Notifications: Discarding ALL notifications", buf, 2u);
  }

  v4 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager discardAllNotifications]"];
  objc_initWeak(buf, self);
  objc_copyWeak(&v6, buf);
  v5 = v4;
  pl_dispatch_async();

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

uint64_t __48__PLNotificationManager_discardAllNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained UNCenter];
  [v3 removeAllNotifications];

  v4 = *(a1 + 32);

  return [v4 stillAlive];
}

- (void)_updateImageDataForNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    v5 = self->_isolationQueue;
    objc_initWeak(&location, self);
    mainAssetUUID = [notificationCopy mainAssetUUID];
    v7 = MEMORY[0x1E695DFA0];
    if (mainAssetUUID)
    {
      mainAssetUUID2 = [notificationCopy mainAssetUUID];
      orderedSet = [v7 orderedSetWithObject:mainAssetUUID2];
    }

    else
    {
      orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    }

    lowResThumbAssetUUIDs = [notificationCopy lowResThumbAssetUUIDs];
    [orderedSet unionOrderedSet:lowResThumbAssetUUIDs];

    placeholderAssetUUIDs = [notificationCopy placeholderAssetUUIDs];
    [orderedSet unionOrderedSet:placeholderAssetUUIDs];

    v12 = objc_opt_class();
    v13 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__PLNotificationManager__updateImageDataForNotification___block_invoke;
    v15[3] = &unk_1E75720F0;
    objc_copyWeak(&v18, &location);
    v14 = v5;
    v16 = v14;
    v17 = notificationCopy;
    [v12 processAssetsForSensitivityIfNecessary:orderedSet inPhotoLibrary:v13 completionHandler:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __57__PLNotificationManager__updateImageDataForNotification___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PLNotificationManager__updateImageDataForNotification___block_invoke_2;
  v5[3] = &unk_1E75720C8;
  v6 = a1[4];
  objc_copyWeak(&v8, a1 + 6);
  v7 = a1[5];
  [WeakRetained getThumbnailImageDataAssetUUID:v3 completionHandler:v5];

  objc_destroyWeak(&v8);
}

void __57__PLNotificationManager__updateImageDataForNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    objc_copyWeak(&v8, (a1 + 48));
    v6 = v3;
    v7 = *(a1 + 40);
    pl_dispatch_async();

    objc_destroyWeak(&v8);
  }

  else
  {
    v4 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "[Notification] notification get no thumbnail data for main asset. (%@)", buf, 0xCu);
    }
  }
}

void __57__PLNotificationManager__updateImageDataForNotification___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained UNCenter];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) requestIdentifier];
  [v2 updateImageData:v3 forNotificationWithIdentifier:v4];
}

- (void)getThumbnailImageDataAssetUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (dCopy)
  {
    v8 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PLNotificationManager_getThumbnailImageDataAssetUUID_completionHandler___block_invoke;
    v10[3] = &unk_1E7576F38;
    v11 = v8;
    v12 = dCopy;
    v13 = v7;
    v9 = v8;
    [v9 performBlock:v10 withPriority:0];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __74__PLNotificationManager_getThumbnailImageDataAssetUUID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetWithUUID:*(a1 + 40)];
  v3 = [MEMORY[0x1E69BF248] defaultFormatChooser];
  v4 = [v3 masterThumbnailFormat];
  v5 = +[PLImageLoadingUtilities newSynchronousImageForAsset:withFormat:allowPlaceholder:outImageProperties:outDeliveredPlaceholder:](PLImageLoadingUtilities, "newSynchronousImageForAsset:withFormat:allowPlaceholder:outImageProperties:outDeliveredPlaceholder:", v2, [v4 formatID], 0, 0, 0);

  if (v5)
  {
    DCIM_sizeFromPLImage();
    if (v6 != v7)
    {
      v8 = PLCreateSquareCroppedImage(v5);

      v5 = v8;
    }

    v9 = DCIM_CGImageRefFromPLImage();
    if (v9)
    {
      v10 = v9;
      data = [MEMORY[0x1E695DF88] data];
      v11 = [*MEMORY[0x1E6982E58] identifier];
      v12 = CGImageDestinationCreateWithData(data, v11, 1uLL, 0);

      if (v12)
      {
        CGImageDestinationAddImage(v12, v10, 0);
        if (!CGImageDestinationFinalize(v12))
        {

          data = 0;
        }

        CFRelease(v12);
      }

      v9 = data;
    }
  }

  else
  {
    v9 = 0;
  }

  dataa = v9;
  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, dataa);
  }
}

- (void)triggerNotificationThumbnailUpdateForAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1844 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  cloudSharedPlaceholderKind = [assetCopy cloudSharedPlaceholderKind];
  if (cloudSharedPlaceholderKind <= 8 && ((1 << cloudSharedPlaceholderKind) & 0x1B8) != 0)
  {
    uuid = [assetCopy uuid];
    v8 = self->_isolationQueue;
    objc_initWeak(&location, self);
    uNCenter = [(PLNotificationManager *)self UNCenter];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__PLNotificationManager_triggerNotificationThumbnailUpdateForAsset___block_invoke;
    v13[3] = &unk_1E7572118;
    v10 = uuid;
    v14 = v10;
    v11 = v8;
    v15 = v11;
    objc_copyWeak(&v16, &location);
    [uNCenter enumerateExistingNotificationsUsingBlock:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __68__PLNotificationManager_triggerNotificationThumbnailUpdateForAsset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C0290]];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C01B0]];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C0270]];
  if (!v4 && [v5 isEqualToString:*(a1 + 32)])
  {
    v7 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager triggerNotificationThumbnailUpdateForAsset:]_block_invoke"];
    v8 = v5;
    objc_copyWeak(&v12, (a1 + 48));
    v9 = *(a1 + 40);
    v10 = v6;
    v11 = v7;
    pl_dispatch_async();

    objc_destroyWeak(&v12);
  }
}

void __68__PLNotificationManager_triggerNotificationThumbnailUpdateForAsset___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFB8] orderedSetWithObject:*(a1 + 32)];
  v3 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__PLNotificationManager_triggerNotificationThumbnailUpdateForAsset___block_invoke_3;
  v4[3] = &unk_1E75720F0;
  objc_copyWeak(&v7, (a1 + 64));
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [PLNotificationManager processAssetsForSensitivityIfNecessary:v2 inPhotoLibrary:v3 completionHandler:v4];

  [*(a1 + 56) stillAlive];
  objc_destroyWeak(&v7);
}

void __68__PLNotificationManager_triggerNotificationThumbnailUpdateForAsset___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PLNotificationManager_triggerNotificationThumbnailUpdateForAsset___block_invoke_4;
  v5[3] = &unk_1E75720C8;
  v6 = a1[4];
  objc_copyWeak(&v8, a1 + 6);
  v7 = a1[5];
  [WeakRetained getThumbnailImageDataAssetUUID:v3 completionHandler:v5];

  objc_destroyWeak(&v8);
}

void __68__PLNotificationManager_triggerNotificationThumbnailUpdateForAsset___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_copyWeak(&v6, (a1 + 48));
    v4 = v3;
    v5 = *(a1 + 40);
    pl_dispatch_async();

    objc_destroyWeak(&v6);
  }
}

void __68__PLNotificationManager_triggerNotificationThumbnailUpdateForAsset___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained UNCenter];
  [v2 updateImageData:*(a1 + 32) forNotificationWithIdentifier:*(a1 + 40)];
}

- (void)_removeWaitingNotificationForPhotosBatchID:(id)d
{
  dCopy = d;
  v7 = dCopy;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1836 description:{@"Invalid parameter not satisfying: %@", @"photosBatchID"}];

    dCopy = 0;
  }

  [(NSMutableDictionary *)self->_waitingAssetsAddNotifications removeObjectForKey:dCopy];
}

- (id)_waitingNotificationForPhotosBatchID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1829 description:{@"Invalid parameter not satisfying: %@", @"photosBatchID"}];
  }

  v6 = [(NSMutableDictionary *)self->_waitingAssetsAddNotifications objectForKey:dCopy];

  return v6;
}

- (id)_addWaitingNotification:(id)notification forPhotosBatchID:(id)d
{
  notificationCopy = notification;
  dCopy = d;
  v9 = dCopy;
  if (notificationCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1811 description:{@"Invalid parameter not satisfying: %@", @"notification"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1812 description:{@"Invalid parameter not satisfying: %@", @"photosBatchID"}];

LABEL_3:
  v10 = [(NSMutableDictionary *)self->_waitingAssetsAddNotifications objectForKey:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 notificationByMergingWithNotification:notificationCopy];
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = notificationCopy;
  }

  v14 = v13;

  [(NSMutableDictionary *)self->_waitingAssetsAddNotifications setObject:v14 forKey:v9];

  return v14;
}

- (void)calculateCurrentBadgeCountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__PLNotificationManager_calculateCurrentBadgeCountWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v8 = v4;
  v9 = handlerCopy;
  v5 = handlerCopy;
  v6 = v4;
  [v6 performBlock:v7 withPriority:0];
}

void __73__PLNotificationManager_calculateCurrentBadgeCountWithCompletionHandler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) albumListForContentMode:1];
  v3 = [v2 unreadAlbumsCount];
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Notifications: Calculated current badge count: %ld", &v6, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (unint64_t)currentAppBadgeCountForNotificationUNCenter:(id)center
{
  v3 = objc_opt_class();

  return [v3 sharedAlbumsUnreadCount];
}

- (void)_postNotificationForSharedLibraryExitInitatedByOwnerWithTypeWithExitType:(signed __int16)type retentionPolicy:(int64_t)policy ownerName:(id)name notificationDeliveryDate:(id)date transaction:(id)transaction
{
  typeCopy = type;
  dateCopy = date;
  transactionCopy = transaction;
  nameCopy = name;
  v14 = [[PLNotification alloc] initForSharedLibraryExitInitatedByOwnerWithType:typeCopy retentionPolicy:policy ownerName:nameCopy];

  if (v14)
  {
    [v14 setNotificationDeliveryDate:dateCopy];
    uNCenter = [(PLNotificationManager *)self UNCenter];
    [uNCenter sendNotificationForNotification:v14];
  }

  [transactionCopy stillAlive];
}

- (void)postNotificationForSharedLibraryExitInitatedByOwnerWithTypeWithExitType:(signed __int16)type retentionPolicy:(int64_t)policy ownerName:(id)name notificationDeliveryDate:(id)date
{
  nameCopy = name;
  dateCopy = date;
  v12 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager postNotificationForSharedLibraryExitInitatedByOwnerWithTypeWithExitType:retentionPolicy:ownerName:notificationDeliveryDate:]"];
  objc_initWeak(&location, self);
  objc_copyWeak(v16, &location);
  typeCopy = type;
  v16[1] = policy;
  v13 = nameCopy;
  v14 = dateCopy;
  v15 = v12;
  pl_dispatch_async();

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __148__PLNotificationManager_postNotificationForSharedLibraryExitInitatedByOwnerWithTypeWithExitType_retentionPolicy_ownerName_notificationDeliveryDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _postNotificationForSharedLibraryExitInitatedByOwnerWithTypeWithExitType:*(a1 + 72) retentionPolicy:*(a1 + 64) ownerName:*(a1 + 32) notificationDeliveryDate:*(a1 + 40) transaction:*(a1 + 48)];
}

- (void)removeNotificationForSharedLibraryParticipantAssetTrash
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager removeNotificationForSharedLibraryParticipantAssetTrash]"];
  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  v4 = v3;
  pl_dispatch_async();

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __80__PLNotificationManager_removeNotificationForSharedLibraryParticipantAssetTrash__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  [v3 addIndex:14];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteNotificationsForObjectWithUUID:@"SharedLibraryParticipantAssetTrashNotification" notificationDictionaryKey:0 notificationTypes:v3];

  [*(a1 + 32) stillAlive];
}

- (void)_postAsyncNotificationForSharedLibraryParticipantAssetTrashWithTrashedAssetPhotoCount:(unint64_t)count videoCount:(unint64_t)videoCount itemCount:(unint64_t)itemCount withNotificationDeliveryDate:(id)date transaction:(id)transaction
{
  transactionCopy = transaction;
  dateCopy = date;
  v15 = [[PLNotification alloc] initForSharedLibraryParticipantAssetTrashNotificationWithTrashedPhotoCount:count videoCount:videoCount itemCount:itemCount];
  [v15 setNotificationDeliveryDate:dateCopy];

  uNCenter = [(PLNotificationManager *)self UNCenter];
  [uNCenter sendNotificationForNotification:v15];

  [transactionCopy stillAlive];
}

- (void)postNotificationForSharedLibraryParticipantAssetTrashWithTrashedAssetPhotoCount:(unint64_t)count videoCount:(unint64_t)videoCount itemCount:(unint64_t)itemCount withNotificationDeliveryDate:(id)date
{
  dateCopy = date;
  v9 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager postNotificationForSharedLibraryParticipantAssetTrashWithTrashedAssetPhotoCount:videoCount:itemCount:withNotificationDeliveryDate:]"];
  v7 = v9;
  v8 = dateCopy;
  pl_dispatch_async();
}

- (void)_postAsyncNotificationForAcceptedSharedLibraryWithScopeIdentifier:(id)identifier participantName:(id)name NotificationDeliveryDate:(id)date transaction:(id)transaction
{
  transactionCopy = transaction;
  dateCopy = date;
  nameCopy = name;
  identifierCopy = identifier;
  v15 = [[PLNotification alloc] initForSharedLibraryScopeAcceptWithLibraryScopeIdentifier:identifierCopy participantName:nameCopy];

  [v15 setNotificationDeliveryDate:dateCopy];
  uNCenter = [(PLNotificationManager *)self UNCenter];
  [uNCenter sendNotificationForNotification:v15];

  [transactionCopy stillAlive];
}

- (void)postNotificationForAcceptedSharedLibraryWithScopeIdentifier:(id)identifier participantName:(id)name library:(id)library notificationDeliveryDate:(id)date
{
  identifierCopy = identifier;
  nameCopy = name;
  libraryCopy = library;
  dateCopy = date;
  v14 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager postNotificationForAcceptedSharedLibraryWithScopeIdentifier:participantName:library:notificationDeliveryDate:]"];
  objc_initWeak(&location, self);
  objc_copyWeak(&v19, &location);
  v15 = identifierCopy;
  v16 = nameCopy;
  v17 = dateCopy;
  v18 = v14;
  pl_dispatch_async();

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __134__PLNotificationManager_postNotificationForAcceptedSharedLibraryWithScopeIdentifier_participantName_library_notificationDeliveryDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _postAsyncNotificationForAcceptedSharedLibraryWithScopeIdentifier:*(a1 + 32) participantName:*(a1 + 40) NotificationDeliveryDate:*(a1 + 48) transaction:*(a1 + 56)];
}

- (void)_postAsyncNotificationForSharedLibrarySuggestionsWithNotificationDeliveryDate:(id)date transaction:(id)transaction
{
  transactionCopy = transaction;
  dateCopy = date;
  initForSharedLibrarySuggestions = [[PLNotification alloc] initForSharedLibrarySuggestions];
  [initForSharedLibrarySuggestions setNotificationDeliveryDate:dateCopy];

  uNCenter = [(PLNotificationManager *)self UNCenter];
  [uNCenter sendNotificationForNotification:initForSharedLibrarySuggestions];

  [transactionCopy stillAlive];
}

- (void)postNotificationForSharedLibrarySuggestionsWithNotificationDeliveryDate:(id)date
{
  dateCopy = date;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager postNotificationForSharedLibrarySuggestionsWithNotificationDeliveryDate:]"];
  objc_initWeak(&location, self);
  objc_copyWeak(&v8, &location);
  v6 = dateCopy;
  v7 = v5;
  pl_dispatch_async();

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __97__PLNotificationManager_postNotificationForSharedLibrarySuggestionsWithNotificationDeliveryDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _postAsyncNotificationForSharedLibrarySuggestionsWithNotificationDeliveryDate:*(a1 + 32) transaction:*(a1 + 40)];
}

- (void)_postAsyncNotificationForPhotosChallengeNewQuestionsWithNotificationDeliveryDate:(id)date transaction:(id)transaction
{
  transactionCopy = transaction;
  dateCopy = date;
  initForPhotosChallengeNewQuestions = [[PLNotification alloc] initForPhotosChallengeNewQuestions];
  [initForPhotosChallengeNewQuestions setNotificationDeliveryDate:dateCopy];

  uNCenter = [(PLNotificationManager *)self UNCenter];
  [uNCenter sendNotificationForNotification:initForPhotosChallengeNewQuestions];

  [transactionCopy stillAlive];
}

- (void)postNotificationForPhotosChallengeNewQuestionsWithNotificationDeliveryDate:(id)date
{
  dateCopy = date;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager postNotificationForPhotosChallengeNewQuestionsWithNotificationDeliveryDate:]"];
  objc_initWeak(&location, self);
  objc_copyWeak(&v8, &location);
  v6 = dateCopy;
  v7 = v5;
  pl_dispatch_async();

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __100__PLNotificationManager_postNotificationForPhotosChallengeNewQuestionsWithNotificationDeliveryDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _postAsyncNotificationForPhotosChallengeNewQuestionsWithNotificationDeliveryDate:*(a1 + 32) transaction:*(a1 + 40)];
}

- (void)_postAsyncNotificationForPhotosChallengeSubmissionWithNotificationDeliveryDate:(id)date transaction:(id)transaction
{
  transactionCopy = transaction;
  dateCopy = date;
  initForPhotosChallengeSubmission = [[PLNotification alloc] initForPhotosChallengeSubmission];
  [initForPhotosChallengeSubmission setNotificationDeliveryDate:dateCopy];

  uNCenter = [(PLNotificationManager *)self UNCenter];
  [uNCenter sendNotificationForNotification:initForPhotosChallengeSubmission];

  [transactionCopy stillAlive];
}

- (void)postNotificationForPhotosChallengeSubmissionWithNotificationDeliveryDate:(id)date
{
  dateCopy = date;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager postNotificationForPhotosChallengeSubmissionWithNotificationDeliveryDate:]"];
  objc_initWeak(&location, self);
  objc_copyWeak(&v8, &location);
  v6 = dateCopy;
  v7 = v5;
  pl_dispatch_async();

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __98__PLNotificationManager_postNotificationForPhotosChallengeSubmissionWithNotificationDeliveryDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _postAsyncNotificationForPhotosChallengeSubmissionWithNotificationDeliveryDate:*(a1 + 32) transaction:*(a1 + 40)];
}

void __85__PLNotificationManager_removeNotificationForInterestInUnrenderedCinematicVideoItems__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    CFUserNotificationCancel(v2);
    CFRelease(*(*(a1 + 32) + 48));
    *(*(a1 + 32) + 48) = 0;
  }
}

- (void)postNotificationForInterestInUnrenderedCinematicVideoItems
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = PLServicesLocalizedFrameworkStringForAssetsd();
  v4 = PLServicesLocalizedFrameworkStringForAssetsd();
  v5 = v3;
  v6 = PLServicesLocalizedFrameworkStringForAssetsd();
  v7 = MEMORY[0x1E695DF90];
  v8 = *MEMORY[0x1E695EE70];
  v27[0] = *MEMORY[0x1E695EE58];
  v27[1] = v8;
  *v28 = v6;
  v29 = v5;
  v9 = *MEMORY[0x1E695EE68];
  v27[2] = *MEMORY[0x1E695EE98];
  v27[3] = v9;
  v30 = v4;
  v31 = MEMORY[0x1E695E118];
  v27[4] = @"DismissOnLock";
  v27[5] = @"SBUserNotificationDontDismissOnUnlock";
  v32 = MEMORY[0x1E695E118];
  v33 = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:6];
  v11 = [v7 dictionaryWithDictionary:v10];

  v12 = PLBackendGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "Presenting prompt to process unrendered Cinematic videos on behalf of Photos", buf, 2u);
  }

  v13 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0x20uLL, 0, v11);
  if (v13)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __83__PLNotificationManager_postNotificationForInterestInUnrenderedCinematicVideoItems__block_invoke;
    v23 = &unk_1E7577B90;
    selfCopy = self;
    v25 = v13;
    PLRunWithUnfairLock();
    v14 = dispatch_get_global_queue(25, 0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__PLNotificationManager_postNotificationForInterestInUnrenderedCinematicVideoItems__block_invoke_2;
    v16[3] = &unk_1E7576168;
    v19 = v13;
    v16[4] = self;
    v17 = v5;
    v18 = v4;
    dispatch_async(v14, v16);
  }

  else
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to present library picker alert on behalf of Photos", v28, 2u);
    }
  }
}

void __83__PLNotificationManager_postNotificationForInterestInUnrenderedCinematicVideoItems__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(a1 + 56), 0.0, &responseFlags);
  v8 = MEMORY[0x1E69E9820];
  v9 = *(a1 + 32);
  PLRunWithUnfairLock();
  v2 = responseFlags & 3;
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 48;
    if (v2 == 1)
    {
      v4 = 40;
    }

    v5 = *(a1 + v4);
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "User selected: %{public}@", buf, 0xCu);
  }

  if (v2 == 1)
  {
    v6 = [MEMORY[0x1E6963608] defaultWorkspace];
    v7 = [MEMORY[0x1E695DFF8] URLWithString:@"photos://album?name=cinematic&render=1"];
    [v6 openSensitiveURL:v7 withOptions:MEMORY[0x1E695E0F8]];
  }
}

void __83__PLNotificationManager_postNotificationForInterestInUnrenderedCinematicVideoItems__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 32);
  }

  *(v2 + 48) = 0;
}

- (void)postNotificationForReadyToViewMomentShareWithUUID:(id)d photoLibrary:(id)library
{
  dCopy = d;
  libraryCopy = library;
  if (![dCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1563 description:{@"Invalid parameter not satisfying: %@", @"momentShareUUID.length"}];

    if (libraryCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1564 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    goto LABEL_3;
  }

  if (!libraryCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__77630;
  v21[4] = __Block_byref_object_dispose__77631;
  v22 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__PLNotificationManager_postNotificationForReadyToViewMomentShareWithUUID_photoLibrary___block_invoke;
  v17[3] = &unk_1E7578820;
  v18 = dCopy;
  v9 = libraryCopy;
  v19 = v9;
  v20 = v21;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__PLNotificationManager_postNotificationForReadyToViewMomentShareWithUUID_photoLibrary___block_invoke_2;
  v13[3] = &unk_1E7578820;
  v16 = v21;
  v10 = v18;
  v14 = v10;
  selfCopy = self;
  [v9 performBlock:v17 completionHandler:v13 withPriority:0];

  _Block_object_dispose(v21, 8);
}

void __88__PLNotificationManager_postNotificationForReadyToViewMomentShareWithUUID_photoLibrary___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v7 = [(PLShare *)PLMomentShare shareWithUUID:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v7)
  {
    v4 = [[PLNotification alloc] initCMMInvitationReadyToViewWithMomentShare:v7];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void __88__PLNotificationManager_postNotificationForReadyToViewMomentShareWithUUID_photoLibrary___block_invoke_2(uint64_t a1)
{
  location[3] = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = *(*(a1 + 40) + 32);
    v3 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager postNotificationForReadyToViewMomentShareWithUUID:photoLibrary:]_block_invoke"];
    objc_initWeak(location, *(a1 + 40));
    objc_copyWeak(&v6, location);
    v5 = v3;
    pl_dispatch_async();

    objc_destroyWeak(&v6);
    objc_destroyWeak(location);
  }

  else
  {
    v2 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v4;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "[CMM Notification] fail to find matching moment share for uuid: %@", location, 0xCu);
    }
  }
}

uint64_t __88__PLNotificationManager_postNotificationForReadyToViewMomentShareWithUUID_photoLibrary___block_invoke_2_143(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "[CMM Notification] Sending ready to view moment share notification: %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained UNCenter];
  [v5 sendNotificationForNotification:*(*(*(a1 + 40) + 8) + 40)];

  return [*(a1 + 32) stillAlive];
}

- (void)postNotificationForExpiringCMMsWithUUIDs:(id)ds thumbnailImageData:(id)data notificationTitle:(id)title notificationSubtitle:(id)subtitle
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  dataCopy = data;
  titleCopy = title;
  subtitleCopy = subtitle;
  v15 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = dsCopy;
    v26 = 2112;
    v27 = titleCopy;
    v28 = 2112;
    v29 = subtitleCopy;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "[CMM Notification] Notifications: Trying to post notification for about to expire CMMs %@, title %@, subtitle %@.", buf, 0x20u);
  }

  if (!dsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1548 description:{@"Invalid parameter not satisfying: %@", @"CMMUUIDs"}];
  }

  if (!titleCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1549 description:{@"Invalid parameter not satisfying: %@", @"notificationTitle"}];
  }

  if (!subtitleCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1550 description:{@"Invalid parameter not satisfying: %@", @"notificationSubtitle"}];
  }

  v16 = [[PLNotification alloc] initWithExpiringMomentShareUUIDs:dsCopy thumbnailImageData:dataCopy notificationTitle:titleCopy notificationSubtitle:subtitleCopy];
  v17 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager postNotificationForExpiringCMMsWithUUIDs:thumbnailImageData:notificationTitle:notificationSubtitle:]"];
  objc_initWeak(buf, self);
  objc_copyWeak(&v23, buf);
  v21 = v16;
  v22 = v17;
  pl_dispatch_async();

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

uint64_t __124__PLNotificationManager_postNotificationForExpiringCMMsWithUUIDs_thumbnailImageData_notificationTitle_notificationSubtitle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained UNCenter];
  [v3 sendNotificationForNotification:*(a1 + 32)];

  v4 = *(a1 + 40);

  return [v4 stillAlive];
}

- (void)_deleteNotificationsForAssetWithUUID:(id)d shouldDeleteCommentsOrLikeNotifications:(BOOL)notifications shouldDeletePhotosAddedToAlbumNotifications:(BOOL)albumNotifications
{
  dCopy = d;
  if (dCopy)
  {
    v9 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager _deleteNotificationsForAssetWithUUID:shouldDeleteCommentsOrLikeNotifications:shouldDeletePhotosAddedToAlbumNotifications:]"];
    objc_initWeak(&location, self);
    objc_copyWeak(&v12, &location);
    notificationsCopy = notifications;
    albumNotificationsCopy = albumNotifications;
    v10 = dCopy;
    v11 = v9;
    pl_dispatch_async();

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __146__PLNotificationManager__deleteNotificationsForAssetWithUUID_shouldDeleteCommentsOrLikeNotifications_shouldDeletePhotosAddedToAlbumNotifications___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained UNCenter];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __146__PLNotificationManager__deleteNotificationsForAssetWithUUID_shouldDeleteCommentsOrLikeNotifications_shouldDeletePhotosAddedToAlbumNotifications___block_invoke_2;
  v4[3] = &unk_1E7571FD8;
  objc_copyWeak(&v6, (a1 + 48));
  v7 = *(a1 + 56);
  v5 = *(a1 + 32);
  [v3 enumerateExistingNotificationsUsingBlock:v4];

  [*(a1 + 40) stillAlive];
  objc_destroyWeak(&v6);
}

void __146__PLNotificationManager__deleteNotificationsForAssetWithUUID_shouldDeleteCommentsOrLikeNotifications_shouldDeletePhotosAddedToAlbumNotifications___block_invoke_2(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C0248]];
  v5 = [v4 integerValue];

  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C01D8]];
  v7 = [v6 BOOLValue];

  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C01B0]];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [WeakRetained _notificationType:v5 matchesCommentsOrLikeNotifications:*(a1 + 48) andPhotosAddedToAlbumNotifications:*(a1 + 49)];

  if (v10 & 1 | ((*(a1 + 48) & 1) == 0))
  {
    v11 = v10;
  }

  else
  {
    v11 = v7 | v10;
  }

  if ((v11 & 1) != 0 && [*(a1 + 32) isEqualToString:v8])
  {
    v12 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69C0270]];
    if (v12)
    {
      v13 = objc_loadWeakRetained((a1 + 40));
      v14 = [v13 UNCenter];
      v16[0] = v12;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      [v14 removeNotificationWithRequestIdentifiers:v15];
    }
  }
}

- (BOOL)_notificationType:(int64_t)type matchesCommentsOrLikeNotifications:(BOOL)notifications andPhotosAddedToAlbumNotifications:(BOOL)albumNotifications
{
  if (notifications && albumNotifications)
  {
    return type == 3 || (type & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  v7 = type == 3 && albumNotifications;
  if (notifications)
  {
    return (type & 0xFFFFFFFFFFFFFFFELL) == 4;
  }

  else
  {
    return v7;
  }
}

- (void)_deleteNotificationsForObjectWithUUID:(id)d notificationDictionaryKey:(id)key notificationTypes:(id)types
{
  dCopy = d;
  keyCopy = key;
  typesCopy = types;
  v11 = typesCopy;
  if (dCopy && [typesCopy count])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__77630;
    v25 = __Block_byref_object_dispose__77631;
    v26 = 0;
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __107__PLNotificationManager__deleteNotificationsForObjectWithUUID_notificationDictionaryKey_notificationTypes___block_invoke;
    v17[3] = &unk_1E7571F88;
    v18 = dCopy;
    v20 = &v21;
    v13 = v12;
    v19 = v13;
    [v11 enumerateIndexesUsingBlock:v17];
    if ([v13 count])
    {
      uNCenter = [(PLNotificationManager *)self UNCenter];
      [uNCenter removeNotificationWithRequestIdentifiers:v13];
    }

    if (v22[5])
    {
      uNCenter2 = [(PLNotificationManager *)self UNCenter];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __107__PLNotificationManager__deleteNotificationsForObjectWithUUID_notificationDictionaryKey_notificationTypes___block_invoke_2;
      v16[3] = &unk_1E7571FB0;
      v16[4] = self;
      v16[5] = &v21;
      [uNCenter2 enumerateExistingNotificationsUsingBlock:v16];
    }

    _Block_object_dispose(&v21, 8);
  }
}

void __107__PLNotificationManager__deleteNotificationsForObjectWithUUID_notificationDictionaryKey_notificationTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [PLNotification requestIdentifierByNotificationType:a2 keyObjectUUID:*(a1 + 32) photosBatchID:0];
  v5 = v4;
  if (a2 == 3)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
    v4 = v5;
  }

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
    v4 = v5;
  }
}

void __107__PLNotificationManager__deleteNotificationsForObjectWithUUID_notificationDictionaryKey_notificationTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69C0270]];
  if ([v3 hasPrefix:*(*(*(a1 + 40) + 8) + 40)])
  {
    v4 = [*(a1 + 32) UNCenter];
    v6[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [v4 removeNotificationWithRequestIdentifiers:v5];
  }
}

- (void)removeNotificationForInterestingMemoryWithUUID:(id)d
{
  dCopy = d;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager removeNotificationForInterestingMemoryWithUUID:]"];
  v6 = [dCopy copy];
  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v7 = v6;
  v8 = v5;
  pl_dispatch_async();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__PLNotificationManager_removeNotificationForInterestingMemoryWithUUID___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  [v3 addIndex:6];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteNotificationsForMemoriesWithUUID:*(a1 + 32) notificationTypes:v3];

  [*(a1 + 40) stillAlive];
}

- (void)postNotificationForInterestingMemoryWithMemoryUUID:(id)d library:(id)library notificationDeliveryDate:(id)date
{
  v56 = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryCopy = library;
  dateCopy = date;
  v12 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dCopy;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "[Memories Notification] Notifications: Trying to post notification for memory %@.", &buf, 0xCu);
  }

  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1374 description:{@"Invalid parameter not satisfying: %@", @"memoryUUID"}];
  }

  if (PLIsFeaturedContentAllowed())
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__77630;
    v54 = __Block_byref_object_dispose__77631;
    v55 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__77630;
    v45 = __Block_byref_object_dispose__77631;
    v46 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__77630;
    v39 = __Block_byref_object_dispose__77631;
    v40 = 0;
    if (libraryCopy && (v28[0] = MEMORY[0x1E69E9820], v28[1] = 3221225472, v28[2] = __109__PLNotificationManager_postNotificationForInterestingMemoryWithMemoryUUID_library_notificationDeliveryDate___block_invoke, v28[3] = &unk_1E7571F60, v13 = dCopy, v29 = v13, v14 = libraryCopy, v30 = v14, v31 = &v47, p_buf = &buf, v33 = &v41, v34 = &v35, [v14 performBlockAndWait:v28], v30, v29, (v48[3] & 1) != 0))
    {
      v15 = *(*(&buf + 1) + 40);
      v16 = v42[5];
      v17 = v36[5];
      pathManager = [v14 pathManager];
      v19 = [(PLNotificationManager *)self _generateMemoryNotificationRepresentationWithMemoryUUID:v13 keyAssetUUID:v15 notificationTitle:v16 notificationSubtitle:v17 notificationDeliveryDate:dateCopy pathManager:pathManager];

      v20 = self->_isolationQueue;
      v21 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager postNotificationForInterestingMemoryWithMemoryUUID:library:notificationDeliveryDate:]"];
      objc_initWeak(location, self);
      objc_copyWeak(&v26, location);
      v22 = v19;
      v25 = v21;
      pl_dispatch_async();

      objc_destroyWeak(&v26);
      objc_destroyWeak(location);
    }

    else
    {
      v22 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "[Memories Notification] Notifications: No displayable memory subtitle.", location, 2u);
      }
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v41, 8);

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v47, 8);
  }

  else
  {
    v23 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "[Memories Notification] Not posting - featured content is disabled in settings", &buf, 2u);
    }
  }
}

void __109__PLNotificationManager_postNotificationForInterestingMemoryWithMemoryUUID_library_notificationDeliveryDate___block_invoke(void *a1)
{
  v2 = [PLMemory memoryWithUUID:a1[4] inPhotoLibrary:a1[5]];
  v16 = v2;
  if (v2)
  {
    v3 = [v2 title];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 length] != 0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
LABEL_6:
  *(*(a1[6] + 8) + 24) = v5;
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v6 = [v16 keyAsset];
    v7 = [v6 uuid];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = PLLocalizedImportantMemoryNotificationTitle();
    v11 = *(a1[8] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F0F06D80];
    v14 = *(a1[9] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void __109__PLNotificationManager_postNotificationForInterestingMemoryWithMemoryUUID_library_notificationDeliveryDate___block_invoke_130(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _memoryNotificationFromDictionaryRepresentation:*(a1 + 32)];

  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "[Memories Notification] Notifications: Created notification for new memory notification: %@.", &v9, 0xCu);
  }

  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v5 UNCenter];
  [v6 sendNotificationForNotification:v3];

  v7 = [v3 thumbnailImageData];

  if (!v7)
  {
    v8 = objc_loadWeakRetained((a1 + 48));
    [v8 _updateImageDataForNotification:v3];
  }

  [*(a1 + 40) stillAlive];
}

- (id)_generateMemoryNotificationRepresentationWithMemoryUUID:(id)d keyAssetUUID:(id)iD notificationTitle:(id)title notificationSubtitle:(id)subtitle notificationDeliveryDate:(id)date pathManager:(id)manager
{
  dCopy = d;
  iDCopy = iD;
  titleCopy = title;
  subtitleCopy = subtitle;
  dateCopy = date;
  managerCopy = manager;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1352 description:{@"Invalid parameter not satisfying: %@", @"memoryUUID"}];

    if (titleCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1353 description:{@"Invalid parameter not satisfying: %@", @"notificationTitle"}];

LABEL_3:
  v19 = titleCopy;
  if (!subtitleCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1354 description:{@"Invalid parameter not satisfying: %@", @"notificationSubtitle"}];
  }

  v20 = iDCopy;
  v21 = dCopy;
  if (!managerCopy)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1355 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
  }

  v22 = MEMORY[0x1E695DF90];
  v23 = *MEMORY[0x1E69C0220];
  v24 = *MEMORY[0x1E69C0240];
  v25 = *MEMORY[0x1E69C0238];
  libraryURL = [managerCopy libraryURL];
  absoluteString = [libraryURL absoluteString];
  v28 = [v22 dictionaryWithObjectsAndKeys:{v21, v23, v19, v24, subtitleCopy, v25, absoluteString, *MEMORY[0x1E69C0268], 0}];

  [v28 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69C01B0]];
  if (dateCopy)
  {
    [v28 setObject:dateCopy forKey:*MEMORY[0x1E69C01F8]];
  }

  return v28;
}

- (id)_memoryNotificationFromDictionaryRepresentation:(id)representation
{
  v3 = *MEMORY[0x1E69C0220];
  representationCopy = representation;
  v5 = [representationCopy objectForKey:v3];
  v6 = [representationCopy objectForKey:*MEMORY[0x1E69C01B0]];
  v7 = [representationCopy objectForKey:*MEMORY[0x1E69C0240]];
  v8 = [representationCopy objectForKey:*MEMORY[0x1E69C0238]];
  v9 = [representationCopy objectForKey:*MEMORY[0x1E69C01F8]];
  v10 = [representationCopy objectForKey:*MEMORY[0x1E69C0268]];

  v11 = [[PLNotification alloc] initWithInterestingMemoryNotificationWithMemoryUUID:v5 keyAssetUUID:v6 notificationTitle:v7 notificationSubtitle:v8 photoLibraryURLString:v10];
  [(PLNotification *)v11 setNotificationDeliveryDate:v9];

  return v11;
}

- (void)userViewedNotificationWithAlbumCloudGUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__PLNotificationManager_userViewedNotificationWithAlbumCloudGUID___block_invoke;
    v6[3] = &unk_1E7578848;
    v7 = dCopy;
    v8 = v4;
    v5 = v4;
    [v5 performBlock:v6];
  }
}

void __66__PLNotificationManager_userViewedNotificationWithAlbumCloudGUID___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4)
  {
    if ([v4 unseenContentState] == 2)
    {
      [v4 setUnseenContentState:1];
      [v4 markAsViewed];
    }
  }

  else
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Cannot locate collection share for scopeIdentifier: %@", &v7, 0xCu);
    }
  }
}

- (void)noteUserDidChangeStatusForMomentShare:(id)share photoLibrary:(id)library
{
  shareCopy = share;
  libraryCopy = library;
  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidChangeStatusForMomentShare:photoLibrary:]"];
  objc_initWeak(&location, self);
  objc_copyWeak(&v10, &location);
  v9 = v8;
  pl_dispatch_async();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

uint64_t __76__PLNotificationManager_noteUserDidChangeStatusForMomentShare_photoLibrary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained UNCenter];
  [v3 updateBadgeCountWithDelay:1];

  v4 = *(a1 + 32);

  return [v4 stillAlive];
}

- (void)noteUserDidLeavePhotosApplication
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidLeavePhotosApplication]"];
  objc_initWeak(&location, self);
  objc_copyWeak(&v5, &location);
  v4 = v3;
  pl_dispatch_async();

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

uint64_t __58__PLNotificationManager_noteUserDidLeavePhotosApplication__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained UNCenter];
  [v3 updateBadgeCountWithDelay:1];

  v4 = *(a1 + 32);

  return [v4 stillAlive];
}

- (void)noteUserDidDeleteSharedAssetsWithUUIDs:(id)ds
{
  dsCopy = ds;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidDeleteSharedAssetsWithUUIDs:]"];
  objc_initWeak(&location, self);
  v6 = dsCopy;
  objc_copyWeak(&v8, &location);
  v7 = v5;
  pl_dispatch_async();

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __64__PLNotificationManager_noteUserDidDeleteSharedAssetsWithUUIDs___block_invoke(id *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained(a1 + 6);
        [WeakRetained _deleteNotificationsForAssetWithUUID:v7 shouldDeleteCommentsOrLikeNotifications:1 shouldDeletePhotosAddedToAlbumNotifications:{1, v10}];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [a1[5] stillAlive];
}

- (void)noteUserDidDeleteSharedAlbumWithUUID:(id)d
{
  dCopy = d;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidDeleteSharedAlbumWithUUID:]"];
  objc_initWeak(&location, self);
  objc_copyWeak(&v8, &location);
  v6 = dCopy;
  v7 = v5;
  pl_dispatch_async();

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __62__PLNotificationManager_noteUserDidDeleteSharedAlbumWithUUID___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  [v3 addIndex:0];
  [v3 addIndex:1];
  [v3 addIndex:3];
  [v3 addIndex:4];
  [v3 addIndex:5];
  [v3 addIndex:2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteNotificationsForAlbumWithUUID:*(a1 + 32) notificationTypes:v3];

  [*(a1 + 40) stillAlive];
}

- (void)noteUserDidReadCommentOnSharedAsset:(id)asset photoLibrary:(id)library
{
  assetCopy = asset;
  libraryCopy = library;
  if ([assetCopy cloudHasUnseenComments])
  {
    v8 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidReadCommentOnSharedAsset:photoLibrary:]"];
    photoLibrary = [assetCopy photoLibrary];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__PLNotificationManager_noteUserDidReadCommentOnSharedAsset_photoLibrary___block_invoke;
    v20[3] = &unk_1E75781E8;
    v21 = assetCopy;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__PLNotificationManager_noteUserDidReadCommentOnSharedAsset_photoLibrary___block_invoke_2;
    v18[3] = &unk_1E75781E8;
    v19 = v8;
    v10 = v8;
    [photoLibrary performTransaction:v20 completionHandler:v18 withPriority:0];
  }

  uuid = [assetCopy uuid];
  v12 = [uuid copy];

  v13 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidReadCommentOnSharedAsset:photoLibrary:]"];
  objc_initWeak(&location, self);
  objc_copyWeak(&v16, &location);
  v14 = v12;
  v15 = v13;
  pl_dispatch_async();

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

uint64_t __74__PLNotificationManager_noteUserDidReadCommentOnSharedAsset_photoLibrary___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteNotificationsForAssetWithUUID:*(a1 + 32) shouldDeleteCommentsOrLikeNotifications:1 shouldDeletePhotosAddedToAlbumNotifications:0];

  v3 = *(a1 + 40);

  return [v3 stillAlive];
}

- (void)noteUserDidNavigateAwayFromSharedAlbum:(id)album photoLibrary:(id)library
{
  albumCopy = album;
  libraryCopy = library;
  hasUnseenContentBoolValue = [albumCopy hasUnseenContentBoolValue];
  unseenAssetsCountIntegerValue = [albumCopy unseenAssetsCountIntegerValue];
  if ((hasUnseenContentBoolValue & 1) != 0 || unseenAssetsCountIntegerValue)
  {
    v9 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidNavigateAwayFromSharedAlbum:photoLibrary:]"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __77__PLNotificationManager_noteUserDidNavigateAwayFromSharedAlbum_photoLibrary___block_invoke;
    v13[3] = &unk_1E7576F80;
    v15 = hasUnseenContentBoolValue;
    v14 = albumCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__PLNotificationManager_noteUserDidNavigateAwayFromSharedAlbum_photoLibrary___block_invoke_2;
    v11[3] = &unk_1E75781E8;
    v12 = v9;
    v10 = v9;
    [libraryCopy performTransaction:v13 completionHandler:v11 withPriority:0];
  }
}

void __77__PLNotificationManager_noteUserDidNavigateAwayFromSharedAlbum_photoLibrary___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setHasUnseenContentBoolValue:0];
  }

  v2 = [*(a1 + 32) cloudGUID];
  [PLPhotoSharingHelper markAlbumGUIDAsViewed:v2 clearUnseenAssetsCount:1];
}

- (void)noteUserDidNavigateAwayFromCollectionShare:(id)share photoLibrary:(id)library
{
  shareCopy = share;
  libraryCopy = library;
  unseenContentState = [shareCopy unseenContentState];
  unseenAssetsCount = [shareCopy unseenAssetsCount];
  if (unseenContentState == 2 || unseenAssetsCount)
  {
    v9 = unseenContentState == 2;
    v10 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidNavigateAwayFromCollectionShare:photoLibrary:]"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__PLNotificationManager_noteUserDidNavigateAwayFromCollectionShare_photoLibrary___block_invoke;
    v14[3] = &unk_1E7576F80;
    v16 = v9;
    v15 = shareCopy;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__PLNotificationManager_noteUserDidNavigateAwayFromCollectionShare_photoLibrary___block_invoke_2;
    v12[3] = &unk_1E75781E8;
    v13 = v10;
    v11 = v10;
    [libraryCopy performTransaction:v14 completionHandler:v12 withPriority:0];
  }
}

uint64_t __81__PLNotificationManager_noteUserDidNavigateAwayFromCollectionShare_photoLibrary___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setUnseenContentState:1];
  }

  v2 = *(a1 + 32);

  return [v2 markAsViewed];
}

- (void)noteUserDidNavigateIntoSharedAlbum:(id)album photoLibrary:(id)library
{
  albumCopy = album;
  libraryCopy = library;
  if ([albumCopy hasUnseenContentBoolValue])
  {
    v8 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidNavigateIntoSharedAlbum:photoLibrary:]"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__PLNotificationManager_noteUserDidNavigateIntoSharedAlbum_photoLibrary___block_invoke;
    v19[3] = &unk_1E75781E8;
    v20 = albumCopy;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__PLNotificationManager_noteUserDidNavigateIntoSharedAlbum_photoLibrary___block_invoke_2;
    v17[3] = &unk_1E75781E8;
    v18 = v8;
    v9 = v8;
    [libraryCopy performTransaction:v19 completionHandler:v17 withPriority:0];
  }

  uuid = [albumCopy uuid];
  v11 = [uuid copy];

  v12 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidNavigateIntoSharedAlbum:photoLibrary:]"];
  objc_initWeak(&location, self);
  objc_copyWeak(&v15, &location);
  v13 = v11;
  v14 = v12;
  pl_dispatch_async();

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __73__PLNotificationManager_noteUserDidNavigateIntoSharedAlbum_photoLibrary___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasUnseenContentBoolValue:0];
  v2 = [*(a1 + 32) cloudGUID];
  [PLPhotoSharingHelper markAlbumGUIDAsViewed:v2 clearUnseenAssetsCount:1];
}

void __73__PLNotificationManager_noteUserDidNavigateIntoSharedAlbum_photoLibrary___block_invoke_3(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  [v3 addIndex:0];
  [v3 addIndex:1];
  [v3 addIndex:3];
  [v3 addIndex:2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteNotificationsForAlbumWithUUID:*(a1 + 32) notificationTypes:v3];

  [*(a1 + 40) stillAlive];
}

- (void)noteUserDidNavigateIntoCollectionShare:(id)share photoLibrary:(id)library
{
  shareCopy = share;
  libraryCopy = library;
  if ([shareCopy unseenContentState] == 2)
  {
    v8 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidNavigateIntoCollectionShare:photoLibrary:]"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__PLNotificationManager_noteUserDidNavigateIntoCollectionShare_photoLibrary___block_invoke;
    v19[3] = &unk_1E75781E8;
    v20 = shareCopy;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__PLNotificationManager_noteUserDidNavigateIntoCollectionShare_photoLibrary___block_invoke_2;
    v17[3] = &unk_1E75781E8;
    v18 = v8;
    v9 = v8;
    [libraryCopy performTransaction:v19 completionHandler:v17 withPriority:0];
  }

  uuid = [shareCopy uuid];
  v11 = [uuid copy];

  v12 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidNavigateIntoCollectionShare:photoLibrary:]"];
  objc_initWeak(&location, self);
  objc_copyWeak(&v15, &location);
  v13 = v11;
  v14 = v12;
  pl_dispatch_async();

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

uint64_t __77__PLNotificationManager_noteUserDidNavigateIntoCollectionShare_photoLibrary___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUnseenContentState:1];
  v2 = *(a1 + 32);

  return [v2 markAsViewed];
}

void __77__PLNotificationManager_noteUserDidNavigateIntoCollectionShare_photoLibrary___block_invoke_3(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  [v3 addIndex:0];
  [v3 addIndex:1];
  [v3 addIndex:3];
  [v3 addIndex:2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteNotificationsForCollectionShareWithUUID:*(a1 + 32) notificationTypes:v3];

  [*(a1 + 40) stillAlive];
}

- (void)noteUserDidViewCloudFeedContent:(unint64_t)content photoLibrary:(id)library
{
  contentCopy = content;
  v39 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  managedObjectContext = [libraryCopy managedObjectContext];
  if (contentCopy)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d AND %K == %d", @"collectionShareKind", 2, @"unseenContentState", 2];
    managedObjectContext2 = [libraryCopy managedObjectContext];
    v8 = [(PLShare *)PLCollectionShare sharesWithPredicate:v9 fetchLimit:0 inManagedObjectContext:managedObjectContext2];

    if (!v8)
    {
      v11 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = 0;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "failed to fetch collection shares with unseen content: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if ((contentCopy & 2) != 0)
  {
    v14 = MEMORY[0x1E695D5E0];
    v15 = +[PLManagedAsset entityName];
    v16 = [v14 fetchRequestWithEntityName:v15];

    v17 = MEMORY[0x1E696AB28];
    v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES", @"cloudHasUnseenComments"];
    v36[0] = v18;
    v19 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCloudSharedAsset"), 1}];
    v36[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v21 = [v17 andPredicateWithSubpredicates:v20];

    [v16 setPredicate:v21];
    v35 = 0;
    v12 = [managedObjectContext executeFetchRequest:v16 error:&v35];
    v13 = v35;
    if (!v12)
    {
      v22 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v13;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "failed to fetch assets with unseen comments: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if ([v8 count] || objc_msgSend(0, "count") || objc_msgSend(v12, "count"))
  {
    v23 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidViewCloudFeedContent:photoLibrary:]"];
    objc_initWeak(buf, self);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __70__PLNotificationManager_noteUserDidViewCloudFeedContent_photoLibrary___block_invoke;
    v32[3] = &unk_1E7578848;
    v33 = v8;
    v34 = v12;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __70__PLNotificationManager_noteUserDidViewCloudFeedContent_photoLibrary___block_invoke_2;
    v25[3] = &unk_1E7571F38;
    v26 = v33;
    v27 = 0;
    v28 = v34;
    selfCopy = self;
    objc_copyWeak(&v31, buf);
    v24 = v23;
    v30 = v24;
    [libraryCopy performTransaction:v32 completionHandler:v25 withPriority:0];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }
}

void __70__PLNotificationManager_noteUserDidViewCloudFeedContent_photoLibrary___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        [v7 setUnseenContentState:1];
        [v7 markAsViewed];
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * j) userReadAllCloudSharedComments];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

void __70__PLNotificationManager_noteUserDidViewCloudFeedContent_photoLibrary___block_invoke_2(id *a1)
{
  v2 = [a1[4] valueForKey:@"uuid"];
  v3 = [a1[5] valueForKey:@"uuid"];
  v4 = [a1[6] valueForKey:@"uuid"];
  if ([v2 count] || objc_msgSend(v3, "count") || objc_msgSend(v4, "count"))
  {
    v5 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserDidViewCloudFeedContent:photoLibrary:]_block_invoke_2"];
    v6 = v2;
    objc_copyWeak(&v10, a1 + 9);
    v7 = v3;
    v8 = v4;
    v9 = v5;
    pl_dispatch_async();

    objc_destroyWeak(&v10);
  }

  [a1[8] stillAlive];
}

void __70__PLNotificationManager_noteUserDidViewCloudFeedContent_photoLibrary___block_invoke_3(id *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD50] indexSet];
  [v2 addIndex:3];
  [v2 addIndex:4];
  [v2 addIndex:5];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v32 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(a1 + 8);
        [WeakRetained _deleteNotificationsForCollectionShareWithUUID:v8 notificationTypes:v2];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v5);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = a1[5];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        v16 = objc_loadWeakRetained(a1 + 8);
        [v16 _deleteNotificationsForAlbumWithUUID:v15 notificationTypes:v2];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v12);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = a1[6];
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        v23 = objc_loadWeakRetained(a1 + 8);
        [v23 _deleteNotificationsForAssetWithUUID:v22 shouldDeleteCommentsOrLikeNotifications:1 shouldDeletePhotosAddedToAlbumNotifications:{1, v24}];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  [a1[7] stillAlive];
}

- (void)noteUserAssetsAreReadyForMomentShare:(id)share
{
  shareCopy = share;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__77630;
  v9[4] = __Block_byref_object_dispose__77631;
  v10 = [[PLNotification alloc] initCMMInvitationReadyToViewWithMomentShare:shareCopy];
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteUserAssetsAreReadyForMomentShare:]"];
  objc_initWeak(&location, self);
  objc_copyWeak(&v7, &location);
  v6 = v5;
  pl_dispatch_async();

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  _Block_object_dispose(v9, 8);
}

uint64_t __62__PLNotificationManager_noteUserAssetsAreReadyForMomentShare___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained UNCenter];
  [v3 sendNotificationForNotification:*(*(*(a1 + 40) + 8) + 40)];

  v4 = *(a1 + 32);

  return [v4 stillAlive];
}

- (void)noteDidReceiveExpiringCMMInvitationsWithMomentShares:(id)shares
{
  sharesCopy = shares;
  if (![sharesCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:1003 description:{@"Invalid parameter not satisfying: %@", @"momentShares.count"}];
  }

  v6 = [[PLNotification alloc] initWithExpiringMomentShares:sharesCopy];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(sharesCopy, "count")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__PLNotificationManager_noteDidReceiveExpiringCMMInvitationsWithMomentShares___block_invoke;
  v14[3] = &unk_1E7572220;
  v15 = v7;
  v8 = v7;
  [sharesCopy enumerateObjectsUsingBlock:v14];
  firstObject = [sharesCopy firstObject];

  thumbnailImageData = [firstObject thumbnailImageData];
  title = [(PLNotification *)v6 title];
  message = [(PLNotification *)v6 message];
  [(PLNotificationManager *)self postNotificationForExpiringCMMsWithUUIDs:v8 thumbnailImageData:thumbnailImageData notificationTitle:title notificationSubtitle:message];
}

void __78__PLNotificationManager_noteDidReceiveExpiringCMMInvitationsWithMomentShares___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

- (void)noteDidReceiveCMMInvitationWithMomentShare:(id)share
{
  shareCopy = share;
  v5 = [[PLNotification alloc] initCMMInvitationWithMomentShare:shareCopy];
  senderEmailAddress = [v5 senderEmailAddress];
  if (senderEmailAddress)
  {
    if ([shareCopy status] == 1)
    {
      v7 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        v8 = "Notifications: MomentShare is inited by myself.";
LABEL_10:
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      }
    }

    else
    {
      if (![(PLNotificationManager *)self _shouldAllowAlertsFromContactWithEmail:senderEmailAddress])
      {
        v9 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteDidReceiveCMMInvitationWithMomentShare:]"];
        objc_initWeak(buf, self);
        objc_copyWeak(&v10, buf);
        v7 = v9;
        pl_dispatch_async();

        objc_destroyWeak(&v10);
        objc_destroyWeak(buf);
        goto LABEL_12;
      }

      v7 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        v8 = "Notifications: MomentShare's invitor is NOT in my contacts.";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v7 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v8 = "Notifications: no sender email address.";
      goto LABEL_10;
    }
  }

LABEL_12:
}

uint64_t __68__PLNotificationManager_noteDidReceiveCMMInvitationWithMomentShare___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained UNCenter];
  [v3 updateBadgeCountWithDelay:1];

  v4 = *(a1 + 32);

  return [v4 stillAlive];
}

- (void)noteSharedAssetCommentsUnreadStatusDidChange:(id)change
{
  v20 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  cloudHasUnseenComments = [changeCopy cloudHasUnseenComments];
  uuid = [changeCopy uuid];
  v7 = [uuid copy];

  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid2 = [changeCopy uuid];
    v10 = uuid2;
    v11 = @"NO";
    if (cloudHasUnseenComments)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v17 = uuid2;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Notifications: Processing assetCommentsUnreadStatusDidChange for asset %@, unread: %@", buf, 0x16u);
  }

  if ((cloudHasUnseenComments & 1) == 0)
  {
    v12 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteSharedAssetCommentsUnreadStatusDidChange:]"];
    objc_initWeak(buf, self);
    objc_copyWeak(&v15, buf);
    v13 = v7;
    v14 = v12;
    pl_dispatch_async();

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

uint64_t __70__PLNotificationManager_noteSharedAssetCommentsUnreadStatusDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteNotificationsForAssetWithUUID:*(a1 + 32) shouldDeleteCommentsOrLikeNotifications:1 shouldDeletePhotosAddedToAlbumNotifications:0];

  v3 = *(a1 + 40);

  return [v3 stillAlive];
}

- (void)noteSharedAlbumUnseenStatusDidChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  hasUnseenContentBoolValue = [changeCopy hasUnseenContentBoolValue];
  uuid = [changeCopy uuid];
  v7 = [uuid copy];

  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    localizedTitle = [changeCopy localizedTitle];
    v10 = @"NO";
    *buf = 138412802;
    v17 = localizedTitle;
    v18 = 2112;
    if (hasUnseenContentBoolValue)
    {
      v10 = @"YES";
    }

    v19 = v7;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Notifications: processing albumUnseenStatusDidChange %@ (%@), unseen: %@", buf, 0x20u);
  }

  v11 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteSharedAlbumUnseenStatusDidChange:]"];
  objc_initWeak(buf, self);
  v15 = hasUnseenContentBoolValue;
  objc_copyWeak(&v14, buf);
  v12 = v7;
  v13 = v11;
  pl_dispatch_async();

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

uint64_t __62__PLNotificationManager_noteSharedAlbumUnseenStatusDidChange___block_invoke(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = [MEMORY[0x1E696AD50] indexSet];
    [v2 addIndex:0];
    [v2 addIndex:1];
    [v2 addIndex:3];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _deleteNotificationsForAlbumWithUUID:*(a1 + 32) notificationTypes:v2];
  }

  v4 = *(a1 + 40);

  return [v4 stillAlive];
}

- (void)noteCollectionShareUnseenStatusDidChange:(id)change
{
  v24 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  unseenContentState = [changeCopy unseenContentState];
  v6 = unseenContentState == 2;
  uuid = [changeCopy uuid];
  v8 = [uuid copy];

  v9 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = unseenContentState == 2;
    title = [changeCopy title];
    v12 = @"NO";
    *buf = 138412802;
    v19 = title;
    v20 = 2112;
    if (v10)
    {
      v12 = @"YES";
    }

    v21 = v8;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Notifications: processing collectionShareUnseenStatusDidChange %@ (%@), unseen: %@", buf, 0x20u);
  }

  v13 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteCollectionShareUnseenStatusDidChange:]"];
  objc_initWeak(buf, self);
  v17 = v6;
  objc_copyWeak(&v16, buf);
  v14 = v8;
  v15 = v13;
  pl_dispatch_async();

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

uint64_t __66__PLNotificationManager_noteCollectionShareUnseenStatusDidChange___block_invoke(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = [MEMORY[0x1E696AD50] indexSet];
    [v2 addIndex:0];
    [v2 addIndex:1];
    [v2 addIndex:3];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _deleteNotificationsForCollectionShareWithUUID:*(a1 + 32) notificationTypes:v2];
  }

  v4 = *(a1 + 40);

  return [v4 stillAlive];
}

- (void)noteDidReceiveLike:(id)like mstreamdInfo:(id)info
{
  v36 = *MEMORY[0x1E69E9840];
  likeCopy = like;
  infoCopy = info;
  if (([likeCopy shouldNotifyAsNotificationWithMediaStreamInfo:infoCopy asCaptionOnly:0] & 1) == 0)
  {
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      commenterHashedPersonID = [likeCopy commenterHashedPersonID];
      asset = [likeCopy asset];
      uuid = [asset uuid];
      *buf = 138412546;
      *&buf[4] = commenterHashedPersonID;
      *&buf[12] = 2112;
      *&buf[14] = uuid;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring received like from %@, asset: %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  asset2 = [likeCopy asset];
  isCloudSharedAsset = [asset2 isCloudSharedAsset];

  if (isCloudSharedAsset)
  {
    asset3 = [likeCopy asset];
    collectionShare = [asset3 collectionShare];
    notificationState = [collectionShare notificationState];

    if (notificationState == 1)
    {
      v13 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        asset4 = [likeCopy asset];
        collectionShare2 = [asset4 collectionShare];
        title = [collectionShare2 title];
        *buf = 138412290;
        *&buf[4] = title;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring received like notification since we are currently not accepting notification for collection share %@.", buf, 0xCu);
      }

LABEL_6:

      goto LABEL_17;
    }
  }

  v20 = [infoCopy valueForKey:*MEMORY[0x1E6998038]];
  bOOLValue = [v20 BOOLValue];

  v22 = PLPhotoSharingGetLog();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v23)
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring add liked notification beause it's not interesting as per mstreamd dictionary.", buf, 2u);
    }
  }

  else
  {
    if (v23)
    {
      commenterHashedPersonID2 = [likeCopy commenterHashedPersonID];
      asset5 = [likeCopy asset];
      uuid2 = [asset5 uuid];
      *buf = 138412546;
      *&buf[4] = commenterHashedPersonID2;
      *&buf[12] = 2112;
      *&buf[14] = uuid2;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Notifications: Processing recevedLike ID: %@. asset: %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v33 = __Block_byref_object_copy__77630;
    v34 = __Block_byref_object_dispose__77631;
    v35 = [[PLNotification alloc] initWithLikeAdded:likeCopy];
    v27 = self->_isolationQueue;
    v28 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteDidReceiveLike:mstreamdInfo:]"];
    objc_initWeak(&location, self);
    objc_copyWeak(&v30, &location);
    v29 = v28;
    pl_dispatch_async();

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);

    _Block_object_dispose(buf, 8);
  }

LABEL_17:
}

void __57__PLNotificationManager_noteDidReceiveLike_mstreamdInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained UNCenter];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __57__PLNotificationManager_noteDidReceiveLike_mstreamdInfo___block_invoke_2;
  v8 = &unk_1E7571E98;
  objc_copyWeak(&v10, (a1 + 48));
  v9 = *(a1 + 40);
  [v3 mergeExistingAndSendNotificationForNotification:v4 thumbnailHandler:&v5];

  [*(a1 + 32) stillAlive];
  objc_destroyWeak(&v10);
}

void __57__PLNotificationManager_noteDidReceiveLike_mstreamdInfo___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateImageDataForNotification:*(*(*(a1 + 32) + 8) + 40)];
}

- (void)noteDidReceiveComment:(id)comment mstreamdInfo:(id)info
{
  v43 = *MEMORY[0x1E69E9840];
  commentCopy = comment;
  infoCopy = info;
  v38 = 0;
  v8 = [commentCopy shouldNotifyAsNotificationWithMediaStreamInfo:infoCopy asCaptionOnly:&v38];
  if ((v8 & 1) == 0 && (v38 & 1) == 0)
  {
    v14 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      cloudGUID = [commentCopy cloudGUID];
      asset = [commentCopy asset];
      cloudAssetGUID = [asset cloudAssetGUID];
      isCaption = [commentCopy isCaption];
      bOOLValue = [isCaption BOOLValue];
      v32 = @"N";
      *buf = 138412802;
      *&buf[4] = cloudGUID;
      *&buf[12] = 2112;
      if (bOOLValue)
      {
        v32 = @"Y";
      }

      *&buf[14] = cloudAssetGUID;
      *&buf[22] = 2112;
      v40 = v32;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring received comment: %@, for asset: %@, isCaption: %@", buf, 0x20u);
    }

    goto LABEL_17;
  }

  asset2 = [commentCopy asset];
  isCloudSharedAsset = [asset2 isCloudSharedAsset];

  if (isCloudSharedAsset)
  {
    asset3 = [commentCopy asset];
    collectionShare = [asset3 collectionShare];
    v13 = [collectionShare notificationState] == 1;

    if (v13)
    {
      v14 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        asset4 = [commentCopy asset];
        collectionShare2 = [asset4 collectionShare];
        scopeIdentifier = [collectionShare2 scopeIdentifier];
        *buf = 138412290;
        *&buf[4] = scopeIdentifier;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring received comment notification since we are currently not accepting notification for collection share %@.", buf, 0xCu);
      }

LABEL_17:

      goto LABEL_18;
    }
  }

  v18 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    cloudGUID2 = [commentCopy cloudGUID];
    asset5 = [commentCopy asset];
    cloudAssetGUID2 = [asset5 cloudAssetGUID];
    isCaption2 = [commentCopy isCaption];
    bOOLValue2 = [isCaption2 BOOLValue];
    v24 = @"N";
    *buf = 138412802;
    *&buf[4] = cloudGUID2;
    *&buf[12] = 2112;
    if (bOOLValue2)
    {
      v24 = @"Y";
    }

    *&buf[14] = cloudAssetGUID2;
    *&buf[22] = 2112;
    v40 = v24;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Notifications: Processing received comment: %@, for asset: %@, isCaption: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = __Block_byref_object_copy__77630;
  v41 = __Block_byref_object_dispose__77631;
  v42 = [[PLNotification alloc] initWithCommentAdded:commentCopy];
  v25 = self->_isolationQueue;
  v26 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteDidReceiveComment:mstreamdInfo:]"];
  objc_initWeak(&location, self);
  v35 = v8;
  v36 = v38;
  objc_copyWeak(&v34, &location);
  v33 = v26;
  pl_dispatch_async();

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
LABEL_18:
}

uint64_t __60__PLNotificationManager_noteDidReceiveComment_mstreamdInfo___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 56) & 1) != 0 || *(a1 + 57) != 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v12 = [WeakRetained UNCenter];
    v13 = [*(*(*(a1 + 40) + 8) + 40) requestIdentifier];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__PLNotificationManager_noteDidReceiveComment_mstreamdInfo___block_invoke_71;
    v18[3] = &unk_1E7571EC0;
    v20 = *(a1 + 56);
    v18[4] = *(a1 + 40);
    objc_copyWeak(&v19, (a1 + 48));
    [v12 findExistingNotificationByIdentifier:v13 withCompletionHandler:v18];

    objc_destroyWeak(&v19);
  }

  else
  {
    v2 = [*(*(*(a1 + 40) + 8) + 40) photosBatchID];
    if (v2)
    {
      v3 = objc_loadWeakRetained((a1 + 48));
      v4 = [v3 _waitingNotificationForPhotosBatchID:v2];

      if (v4)
      {
        v5 = [v4 notificationByMergingWithNotification:*(*(*(a1 + 40) + 8) + 40)];
        if (v5)
        {
          v6 = objc_loadWeakRetained((a1 + 48));
          [v6 _removeWaitingNotificationForPhotosBatchID:v2];

          v7 = objc_loadWeakRetained((a1 + 48));
          v8 = [v7 UNCenter];
          [v8 sendNotificationForNotification:v5];

          v9 = [v5 thumbnailImageData];

          if (!v9)
          {
            v10 = objc_loadWeakRetained((a1 + 48));
            [v10 _updateImageDataForNotification:v5];
          }
        }

        else
        {
          v15 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(*(*(a1 + 40) + 8) + 40);
            *buf = 138412546;
            v22 = v4;
            v23 = 2112;
            v24 = v16;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Notifications: found same batch notification, but failed to merge. (found: %@, new: %@)", buf, 0x16u);
          }

          v5 = 0;
        }
      }

      else
      {
        v5 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(*(*(a1 + 40) + 8) + 40);
          *buf = 138412290;
          v22 = v14;
          _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Notifications: Caption comment arrived, but no Photos added batch waiting. (new: %@)", buf, 0xCu);
        }
      }
    }
  }

  return [*(a1 + 32) stillAlive];
}

void __60__PLNotificationManager_noteDidReceiveComment_mstreamdInfo___block_invoke_71(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && (*(a1 + 48) & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained UNCenter];
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__PLNotificationManager_noteDidReceiveComment_mstreamdInfo___block_invoke_2;
    v8[3] = &unk_1E7571E98;
    objc_copyWeak(&v9, (a1 + 40));
    v8[4] = *(a1 + 32);
    [v6 mergeExistingAndSendNotificationForNotification:v7 thumbnailHandler:v8];

    objc_destroyWeak(&v9);
  }
}

void __60__PLNotificationManager_noteDidReceiveComment_mstreamdInfo___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateImageDataForNotification:*(*(*(a1 + 32) + 8) + 40)];
}

- (void)noteDidChangePlaceholderKindForAsset:(id)asset fromOldKind:(signed __int16)kind forSharedAlbum:(id)album mstreamdInfo:(id)info
{
  *&v20[5] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  albumCopy = album;
  infoCopy = info;
  if ([assetCopy cloudIsMyAsset] && !-[PLNotificationManager enableTemporaryDebugMode](self, "enableTemporaryDebugMode"))
  {
    v16 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle = [albumCopy localizedTitle];
      v19 = 138412290;
      *v20 = localizedTitle;
      v18 = "Notifications: Ignoring placeholderKindChanged notification since we own the album %@.";
      goto LABEL_13;
    }
  }

  else if ([albumCopy cloudNotificationsEnabled])
  {
    cloudSharedPlaceholderKind = [assetCopy cloudSharedPlaceholderKind];
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109378;
      v20[0] = cloudSharedPlaceholderKind;
      LOWORD(v20[1]) = 2112;
      *(&v20[1] + 2) = assetCopy;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Notifications: Processing placeholderKindChanged. Asset changed to %d. (asset: %@)", &v19, 0x12u);
    }

    v14 = [infoCopy valueForKey:*MEMORY[0x1E6998038]];
    bOOLValue = [v14 BOOLValue];

    if (!bOOLValue)
    {
      [(PLNotificationManager *)self triggerNotificationThumbnailUpdateForAsset:assetCopy];
      goto LABEL_15;
    }

    v16 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle = [albumCopy localizedTitle];
      v19 = 138412290;
      *v20 = localizedTitle;
      v18 = "Notifications: Ignoring placeholderKindChanged notification for album %@ beause it's not interesting as per mstreamd dictionary.";
LABEL_13:
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, v18, &v19, 0xCu);
    }
  }

  else
  {
    v16 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle = [albumCopy localizedTitle];
      v19 = 138412290;
      *v20 = localizedTitle;
      v18 = "Notifications: Ignoring placeholderKindChanged notification since we are currently not accepting notification for album %@.";
      goto LABEL_13;
    }
  }

LABEL_15:
}

- (void)noteDidChangePlaceholderKindForAsset:(id)asset fromOldKind:(signed __int16)kind forCollectionShare:(id)share mstreamdInfo:(id)info
{
  *&v20[5] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  shareCopy = share;
  infoCopy = info;
  if ([assetCopy cloudIsMyAsset] && !-[PLNotificationManager enableTemporaryDebugMode](self, "enableTemporaryDebugMode"))
  {
    v12 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      title = [shareCopy title];
      v19 = 138412290;
      *v20 = title;
      v14 = "Notifications: Ignoring placeholderKindChanged notification since we own the collection share %@.";
      goto LABEL_13;
    }
  }

  else if ([shareCopy notificationState] == 1)
  {
    v12 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      title = [shareCopy title];
      v19 = 138412290;
      *v20 = title;
      v14 = "Notifications: Ignoring placeholderKindChanged notification since we are currently not accepting notification for collection share %@.";
LABEL_13:
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, v14, &v19, 0xCu);
    }
  }

  else
  {
    cloudSharedPlaceholderKind = [assetCopy cloudSharedPlaceholderKind];
    v16 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109378;
      v20[0] = cloudSharedPlaceholderKind;
      LOWORD(v20[1]) = 2112;
      *(&v20[1] + 2) = assetCopy;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Notifications: Processing placeholderKindChanged. Asset changed to %d. (asset: %@)", &v19, 0x12u);
    }

    v17 = [infoCopy valueForKey:*MEMORY[0x1E6998038]];
    bOOLValue = [v17 BOOLValue];

    if (!bOOLValue)
    {
      [(PLNotificationManager *)self triggerNotificationThumbnailUpdateForAsset:assetCopy];
      goto LABEL_15;
    }

    v12 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      title = [shareCopy title];
      v19 = 138412290;
      *v20 = title;
      v14 = "Notifications: Ignoring placeholderKindChanged notification for collection share %@ beause it's not interesting as per mstreamd dictionary.";
      goto LABEL_13;
    }
  }

LABEL_15:
}

- (void)noteDidReceiveAssets:(id)assets forSharedAlbum:(id)album mstreamdInfo:(id)info
{
  v35 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  albumCopy = album;
  infoCopy = info;
  firstObject = [assetsCopy firstObject];
  if ([firstObject cloudIsMyAsset])
  {
    enableTemporaryDebugMode = [(PLNotificationManager *)self enableTemporaryDebugMode];

    if (!enableTemporaryDebugMode)
    {
      v13 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        localizedTitle = [albumCopy localizedTitle];
        *buf = 138412290;
        *&buf[4] = localizedTitle;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring addedAsset notification since we own the  asset in the album %@.", buf, 0xCu);
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  if ([albumCopy cloudNotificationsEnabled])
  {
    array = [MEMORY[0x1E695DF70] array];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __74__PLNotificationManager_noteDidReceiveAssets_forSharedAlbum_mstreamdInfo___block_invoke;
    v29[3] = &unk_1E7575368;
    v13 = array;
    v30 = v13;
    [assetsCopy enumerateObjectsUsingBlock:v29];
    v16 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle2 = [albumCopy localizedTitle];
      *buf = 138412546;
      *&buf[4] = localizedTitle2;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Notifications: Processing addedAsset to %@, UUIDs: %@.", buf, 0x16u);
    }

    v18 = [infoCopy valueForKey:*MEMORY[0x1E6998038]];
    bOOLValue = [v18 BOOLValue];

    if (bOOLValue)
    {
      v20 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        localizedTitle3 = [albumCopy localizedTitle];
        *buf = 138412290;
        *&buf[4] = localizedTitle3;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring addedAsset notification for album %@ beause it's not interesting as per mstreamd dictionary.", buf, 0xCu);
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v32 = __Block_byref_object_copy__77630;
      v33 = __Block_byref_object_dispose__77631;
      v34 = [[PLNotification alloc] initWithAssetsAdded:assetsCopy toAlbum:albumCopy];
      v23 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteDidReceiveAssets:forSharedAlbum:mstreamdInfo:]"];
      v24 = self->_isolationQueue;
      objc_initWeak(&location, self);
      objc_copyWeak(&v27, &location);
      v25 = v24;
      v26 = v23;
      pl_dispatch_async();

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle4 = [albumCopy localizedTitle];
      *buf = 138412290;
      *&buf[4] = localizedTitle4;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring addedAsset notification since we are currently not accepting notification for album %@.", buf, 0xCu);
    }
  }

LABEL_17:
}

void __74__PLNotificationManager_noteDidReceiveAssets_forSharedAlbum_mstreamdInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

void __74__PLNotificationManager_noteDidReceiveAssets_forSharedAlbum_mstreamdInfo___block_invoke_64(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) photosBatchID];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (v2)
  {
    v5 = [WeakRetained _addWaitingNotification:*(*(*(a1 + 48) + 8) + 40) forPhotosBatchID:v2];

    dispatch_time(0, 3000000000);
    objc_copyWeak(&v8, (a1 + 56));
    v7 = v2;
    v4 = v5;
    pl_dispatch_after();

    objc_destroyWeak(&v8);
  }

  else
  {
    v6 = [WeakRetained UNCenter];
    [v6 mergeExistingAndSendNotificationForNotification:*(*(*(a1 + 48) + 8) + 40) thumbnailHandler:0];
  }

  [*(a1 + 40) stillAlive];
}

void __74__PLNotificationManager_noteDidReceiveAssets_forSharedAlbum_mstreamdInfo___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _waitingNotificationForPhotosBatchID:*(a1 + 32)];

  if (v3 && v3 == *(a1 + 40))
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    [v4 _removeWaitingNotificationForPhotosBatchID:*(a1 + 32)];

    v5 = [v3 notificationType];
    v6 = [v3 keyObjectUUID];
    v7 = [PLNotification requestIdentifierByNotificationType:v5 keyObjectUUID:v6 photosBatchID:*(a1 + 32)];

    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 UNCenter];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__PLNotificationManager_noteDidReceiveAssets_forSharedAlbum_mstreamdInfo___block_invoke_3;
    v11[3] = &unk_1E7571E48;
    objc_copyWeak(&v14, (a1 + 48));
    v12 = v3;
    v10 = v7;
    v13 = v10;
    [v9 findExistingNotificationByIdentifier:v10 withCompletionHandler:v11];

    objc_destroyWeak(&v14);
  }
}

void __74__PLNotificationManager_noteDidReceiveAssets_forSharedAlbum_mstreamdInfo___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained UNCenter];
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__PLNotificationManager_noteDidReceiveAssets_forSharedAlbum_mstreamdInfo___block_invoke_4;
    v13[3] = &unk_1E75782A8;
    v8 = &v15;
    objc_copyWeak(&v15, (a1 + 48));
    v14 = *(a1 + 32);
    [v5 mergeExistingAndSendNotificationForNotification:v6 requestIdentifier:v7 thumbnailHandler:v13];
    v9 = &v14;
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PLNotificationManager_noteDidReceiveAssets_forSharedAlbum_mstreamdInfo___block_invoke_5;
    v10[3] = &unk_1E75782A8;
    v8 = &v12;
    objc_copyWeak(&v12, (a1 + 48));
    v11 = *(a1 + 32);
    [v5 mergeExistingAndSendNotificationForNotification:v6 thumbnailHandler:v10];
    v9 = &v11;
  }

  objc_destroyWeak(v8);
}

void __74__PLNotificationManager_noteDidReceiveAssets_forSharedAlbum_mstreamdInfo___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateImageDataForNotification:*(a1 + 32)];
}

void __74__PLNotificationManager_noteDidReceiveAssets_forSharedAlbum_mstreamdInfo___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateImageDataForNotification:*(a1 + 32)];
}

- (void)noteDidReceiveAssets:(id)assets forCollectionShare:(id)share mstreamdInfo:(id)info
{
  v35 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  shareCopy = share;
  infoCopy = info;
  firstObject = [assetsCopy firstObject];
  if ([firstObject cloudIsMyAsset])
  {
    enableTemporaryDebugMode = [(PLNotificationManager *)self enableTemporaryDebugMode];

    if (!enableTemporaryDebugMode)
    {
      v13 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        title = [shareCopy title];
        *buf = 138412290;
        *&buf[4] = title;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring addedAsset notification since we own the asset in the collection share %@.", buf, 0xCu);
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  if ([shareCopy notificationState] == 1)
  {
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      title2 = [shareCopy title];
      *buf = 138412290;
      *&buf[4] = title2;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring addedAsset notification since we are currently not accepting notification for collection share %@.", buf, 0xCu);
    }
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __78__PLNotificationManager_noteDidReceiveAssets_forCollectionShare_mstreamdInfo___block_invoke;
    v29[3] = &unk_1E7575368;
    v13 = array;
    v30 = v13;
    [assetsCopy enumerateObjectsUsingBlock:v29];
    v17 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      title3 = [shareCopy title];
      *buf = 138412546;
      *&buf[4] = title3;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Notifications: Processing addedAsset to %@, UUIDs: %@.", buf, 0x16u);
    }

    v19 = [infoCopy valueForKey:*MEMORY[0x1E6998038]];
    bOOLValue = [v19 BOOLValue];

    if (bOOLValue)
    {
      v21 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        title4 = [shareCopy title];
        *buf = 138412290;
        *&buf[4] = title4;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring addedAsset notification for collection share %@ beause it's not interesting as per mstreamd dictionary.", buf, 0xCu);
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v32 = __Block_byref_object_copy__77630;
      v33 = __Block_byref_object_dispose__77631;
      v34 = [[PLNotification alloc] initWithAssetsAdded:assetsCopy toCollectionShare:shareCopy];
      v23 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteDidReceiveAssets:forCollectionShare:mstreamdInfo:]"];
      v24 = self->_isolationQueue;
      objc_initWeak(&location, self);
      objc_copyWeak(&v27, &location);
      v25 = v24;
      v26 = v23;
      pl_dispatch_async();

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);

      _Block_object_dispose(buf, 8);
    }
  }

LABEL_17:
}

void __78__PLNotificationManager_noteDidReceiveAssets_forCollectionShare_mstreamdInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 addObject:v3];
}

void __78__PLNotificationManager_noteDidReceiveAssets_forCollectionShare_mstreamdInfo___block_invoke_63(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) photosBatchID];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (v2)
  {
    v5 = [WeakRetained _addWaitingNotification:*(*(*(a1 + 48) + 8) + 40) forPhotosBatchID:v2];

    dispatch_time(0, 3000000000);
    objc_copyWeak(&v8, (a1 + 56));
    v7 = v2;
    v4 = v5;
    pl_dispatch_after();

    objc_destroyWeak(&v8);
  }

  else
  {
    v6 = [WeakRetained UNCenter];
    [v6 mergeExistingAndSendNotificationForNotification:*(*(*(a1 + 48) + 8) + 40) thumbnailHandler:0];
  }

  [*(a1 + 40) stillAlive];
}

void __78__PLNotificationManager_noteDidReceiveAssets_forCollectionShare_mstreamdInfo___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _waitingNotificationForPhotosBatchID:*(a1 + 32)];

  if (v3 && v3 == *(a1 + 40))
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    [v4 _removeWaitingNotificationForPhotosBatchID:*(a1 + 32)];

    v5 = [v3 notificationType];
    v6 = [v3 keyObjectUUID];
    v7 = [PLNotification requestIdentifierByNotificationType:v5 keyObjectUUID:v6 photosBatchID:*(a1 + 32)];

    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 UNCenter];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__PLNotificationManager_noteDidReceiveAssets_forCollectionShare_mstreamdInfo___block_invoke_3;
    v11[3] = &unk_1E7571E48;
    objc_copyWeak(&v14, (a1 + 48));
    v12 = v3;
    v10 = v7;
    v13 = v10;
    [v9 findExistingNotificationByIdentifier:v10 withCompletionHandler:v11];

    objc_destroyWeak(&v14);
  }
}

void __78__PLNotificationManager_noteDidReceiveAssets_forCollectionShare_mstreamdInfo___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained UNCenter];
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__PLNotificationManager_noteDidReceiveAssets_forCollectionShare_mstreamdInfo___block_invoke_4;
    v13[3] = &unk_1E75782A8;
    v8 = &v15;
    objc_copyWeak(&v15, (a1 + 48));
    v14 = *(a1 + 32);
    [v5 mergeExistingAndSendNotificationForNotification:v6 requestIdentifier:v7 thumbnailHandler:v13];
    v9 = &v14;
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__PLNotificationManager_noteDidReceiveAssets_forCollectionShare_mstreamdInfo___block_invoke_5;
    v10[3] = &unk_1E75782A8;
    v8 = &v12;
    objc_copyWeak(&v12, (a1 + 48));
    v11 = *(a1 + 32);
    [v5 mergeExistingAndSendNotificationForNotification:v6 thumbnailHandler:v10];
    v9 = &v11;
  }

  objc_destroyWeak(v8);
}

void __78__PLNotificationManager_noteDidReceiveAssets_forCollectionShare_mstreamdInfo___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateImageDataForNotification:*(a1 + 32)];
}

void __78__PLNotificationManager_noteDidReceiveAssets_forCollectionShare_mstreamdInfo___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateImageDataForNotification:*(a1 + 32)];
}

- (void)noteMultipleContributorStatusChangedForAlbum:(id)album mstreamdInfo:(id)info
{
  v29 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  infoCopy = info;
  v8 = [infoCopy valueForKey:*MEMORY[0x1E6998038]];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    v10 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle = [albumCopy localizedTitle];
      *buf = 138412290;
      v28 = localizedTitle;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring multipleContributorStatusChanged notification for album %@ beause it's not interesting as per mstreamd dictionary.", buf, 0xCu);
    }
  }

  else if ([albumCopy cloudNotificationsEnabled])
  {
    if ([albumCopy isOwnedCloudSharedAlbum] && !-[PLNotificationManager enableTemporaryDebugMode](self, "enableTemporaryDebugMode"))
    {
      v10 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        localizedTitle2 = [albumCopy localizedTitle];
        *buf = 138412290;
        v28 = localizedTitle2;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring multiple status changed notification because we are not subscribed to this the album %@.", buf, 0xCu);
      }
    }

    else
    {
      cloudMultipleContributorsEnabled = [albumCopy cloudMultipleContributorsEnabled];
      bOOLValue2 = [cloudMultipleContributorsEnabled BOOLValue];

      if (bOOLValue2)
      {
        v14 = [[PLNotification alloc] initWithMultipleContributorEnabledForAlbum:albumCopy];
        v15 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteMultipleContributorStatusChangedForAlbum:mstreamdInfo:]"];
        objc_initWeak(buf, self);
        v24[1] = MEMORY[0x1E69E9820];
        v24[2] = 3221225472;
        v24[3] = __83__PLNotificationManager_noteMultipleContributorStatusChangedForAlbum_mstreamdInfo___block_invoke;
        v24[4] = &unk_1E7571E20;
        objc_copyWeak(&v26, buf);
        v10 = v14;
        v24[5] = v10;
        v25 = v15;
        pl_dispatch_async();

        objc_destroyWeak(&v26);
        objc_destroyWeak(buf);
      }

      else
      {
        uuid = [albumCopy uuid];
        v18 = [uuid copy];

        v19 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          localizedTitle3 = [albumCopy localizedTitle];
          *buf = 138412290;
          v28 = localizedTitle3;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Notifications: Deleting notifications for multiple contributor status change for album: %@.", buf, 0xCu);
        }

        v21 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteMultipleContributorStatusChangedForAlbum:mstreamdInfo:]"];
        objc_initWeak(buf, self);
        objc_copyWeak(v24, buf);
        v10 = v18;
        v23 = v21;
        pl_dispatch_async();

        objc_destroyWeak(v24);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    v10 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle4 = [albumCopy localizedTitle];
      *buf = 138412290;
      v28 = localizedTitle4;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring multipleContributorStatusChanged notification since we are currently not accepting notification for album %@.", buf, 0xCu);
    }
  }
}

uint64_t __83__PLNotificationManager_noteMultipleContributorStatusChangedForAlbum_mstreamdInfo___block_invoke(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] senderEmailAddress];
  v4 = [WeakRetained _shouldAllowAlertsFromContactWithEmail:v3];

  if (v4)
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Notifications: Created notification for multiple contributor status change: %@.", &v10, 0xCu);
    }

    v7 = objc_loadWeakRetained(a1 + 6);
    v8 = [v7 UNCenter];
    [v8 sendNotificationForNotification:a1[4]];
  }

  return [a1[5] stillAlive];
}

void __83__PLNotificationManager_noteMultipleContributorStatusChangedForAlbum_mstreamdInfo___block_invoke_60(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  [v3 addIndex:2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteNotificationsForAlbumWithUUID:*(a1 + 32) notificationTypes:v3];

  [*(a1 + 40) stillAlive];
}

- (void)noteMultipleContributorStatusChangedForCollectionShare:(id)share mstreamdInfo:(id)info
{
  v27 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  infoCopy = info;
  v8 = [infoCopy valueForKey:*MEMORY[0x1E6998038]];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    v10 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      title = [shareCopy title];
      *buf = 138412290;
      v26 = title;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring multipleContributorStatusChanged notification for collection share %@ beause it's not interesting as per mstreamd dictionary.", buf, 0xCu);
    }
  }

  else if ([shareCopy notificationState] == 1)
  {
    v10 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      title2 = [shareCopy title];
      *buf = 138412290;
      v26 = title2;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring multipleContributorStatusChanged notification since we are currently not accepting notification for collection share %@.", buf, 0xCu);
    }
  }

  else if ([shareCopy isCurrentUserOwner] && !-[PLNotificationManager enableTemporaryDebugMode](self, "enableTemporaryDebugMode"))
  {
    v10 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      title3 = [shareCopy title];
      *buf = 138412290;
      v26 = title3;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring multiple status changed notification because we are not subscribed to this the collection share %@.", buf, 0xCu);
    }
  }

  else if ([shareCopy publicPermission] == 3)
  {
    v13 = [[PLNotification alloc] initWithMultipleContributorEnabledForCollectionShare:shareCopy];
    v14 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteMultipleContributorStatusChangedForCollectionShare:mstreamdInfo:]"];
    objc_initWeak(buf, self);
    v22[1] = MEMORY[0x1E69E9820];
    v22[2] = 3221225472;
    v22[3] = __93__PLNotificationManager_noteMultipleContributorStatusChangedForCollectionShare_mstreamdInfo___block_invoke;
    v22[4] = &unk_1E7571E20;
    objc_copyWeak(&v24, buf);
    v10 = v13;
    v22[5] = v10;
    v23 = v14;
    pl_dispatch_async();

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    uuid = [shareCopy uuid];
    v16 = [uuid copy];

    v17 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      title4 = [shareCopy title];
      *buf = 138412290;
      v26 = title4;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Notifications: Deleting notifications for multiple contributor status change for collection share: %@.", buf, 0xCu);
    }

    v19 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteMultipleContributorStatusChangedForCollectionShare:mstreamdInfo:]"];
    objc_initWeak(buf, self);
    objc_copyWeak(v22, buf);
    v10 = v16;
    v21 = v19;
    pl_dispatch_async();

    objc_destroyWeak(v22);
    objc_destroyWeak(buf);
  }
}

uint64_t __93__PLNotificationManager_noteMultipleContributorStatusChangedForCollectionShare_mstreamdInfo___block_invoke(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] senderEmailAddress];
  v4 = [WeakRetained _shouldAllowAlertsFromContactWithEmail:v3];

  if (v4)
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Notifications: Created notification for multiple contributor status change: %@.", &v10, 0xCu);
    }

    v7 = objc_loadWeakRetained(a1 + 6);
    v8 = [v7 UNCenter];
    [v8 sendNotificationForNotification:a1[4]];
  }

  return [a1[5] stillAlive];
}

void __93__PLNotificationManager_noteMultipleContributorStatusChangedForCollectionShare_mstreamdInfo___block_invoke_59(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  [v3 addIndex:2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteNotificationsForCollectionShareWithUUID:*(a1 + 32) notificationTypes:v3];

  [*(a1 + 40) stillAlive];
}

- (void)noteInvitationRecordStatusChanged:(id)changed fromOldState:(int64_t)state mstreamdInfo:(id)info
{
  v41 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  infoCopy = info;
  album = [changedCopy album];
  v11 = [infoCopy valueForKey:*MEMORY[0x1E6998038]];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle = [album localizedTitle];
      *buf = 138412546;
      stateCopy = localizedTitle;
      v39 = 2112;
      v40 = changedCopy;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring invitatitionRecordStatusChanged notification for album %@ and invitationRecord %@ beause it's not interesting as per mstreamd dictionary.", buf, 0x16u);
    }
  }

  invitationState = [changedCopy invitationState];
  intValue = [invitationState intValue];

  if (([album isOwnedCloudSharedAlbum] & 1) != 0 || -[PLNotificationManager enableTemporaryDebugMode](self, "enableTemporaryDebugMode"))
  {
    v17 = 0;
  }

  else
  {
    v18 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle2 = [album localizedTitle];
      *buf = 138412290;
      stateCopy = localizedTitle2;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring invitation status changed because we don't own the album %@.", buf, 0xCu);
    }

    v17 = 1;
  }

  if (([album cloudNotificationsEnabled] & 1) == 0)
  {
    v22 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      localizedTitle3 = [album localizedTitle];
      *buf = 138412290;
      stateCopy = localizedTitle3;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring invitation status changed since we are currently not accepting notification for album %@.", buf, 0xCu);
    }

    goto LABEL_29;
  }

  if ([(PLNotificationManager *)self enableTemporaryDebugMode]|| intValue != state && (intValue == 2 || intValue == 4))
  {
    if (((v17 | bOOLValue) & 1) == 0)
    {
      v20 = [[PLNotification alloc] initWithInvitationRecordStatusChanged:changedCopy];
      v21 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteInvitationRecordStatusChanged:fromOldState:mstreamdInfo:]"];
      objc_initWeak(buf, self);
      v34[1] = MEMORY[0x1E69E9820];
      v34[2] = 3221225472;
      v34[3] = __85__PLNotificationManager_noteInvitationRecordStatusChanged_fromOldState_mstreamdInfo___block_invoke;
      v34[4] = &unk_1E7571E20;
      objc_copyWeak(&v36, buf);
      v22 = v20;
      v34[5] = v22;
      v35 = v21;
      pl_dispatch_async();

      objc_destroyWeak(&v36);
      objc_destroyWeak(buf);

LABEL_29:
      goto LABEL_30;
    }
  }

  else
  {
    v24 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      stateCopy = state;
      v39 = 2048;
      v40 = intValue;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring invitation status changed because it changed from %ld to %ld.", buf, 0x16u);
    }
  }

  isOwnedCloudSharedAlbum = [album isOwnedCloudSharedAlbum];
  if (intValue < 2)
  {
    v26 = 1;
  }

  else
  {
    v26 = isOwnedCloudSharedAlbum;
  }

  if ((v26 & 1) == 0)
  {
    inviteeEmails = [changedCopy inviteeEmails];
    firstObject = [inviteeEmails firstObject];
    v29 = [PLPhotoSharingHelper accountMatchesEmail:firstObject];

    if (v29)
    {
      uuid = [album uuid];
      v31 = [uuid copy];

      v32 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteInvitationRecordStatusChanged:fromOldState:mstreamdInfo:]"];
      objc_initWeak(buf, self);
      objc_copyWeak(v34, buf);
      v22 = v31;
      v33 = v32;
      pl_dispatch_async();

      objc_destroyWeak(v34);
      objc_destroyWeak(buf);

      goto LABEL_29;
    }
  }

LABEL_30:
}

uint64_t __85__PLNotificationManager_noteInvitationRecordStatusChanged_fromOldState_mstreamdInfo___block_invoke(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] senderEmailAddress];
  v4 = [WeakRetained _shouldAllowAlertsFromContactWithEmail:v3];

  if (v4)
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Notifications: Created notification for invitation changed: %@.", &v10, 0xCu);
    }

    v7 = objc_loadWeakRetained(a1 + 6);
    v8 = [v7 UNCenter];
    [v8 sendNotificationForNotification:a1[4]];
  }

  return [a1[5] stillAlive];
}

void __85__PLNotificationManager_noteInvitationRecordStatusChanged_fromOldState_mstreamdInfo___block_invoke_58(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  [v3 addIndex:0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteNotificationsForAlbumWithUUID:*(a1 + 32) notificationTypes:v3];

  [*(a1 + 40) stillAlive];
}

- (void)noteParticipantAcceptanceStatusChanged:(id)changed fromOldAcceptanceStatus:(int64_t)status mstreamdInfo:(id)info
{
  v39 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  infoCopy = info;
  share = [changedCopy share];
  v11 = [infoCopy valueForKey:*MEMORY[0x1E6998038]];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      title = [share title];
      *buf = 138412546;
      statusCopy = title;
      v37 = 2112;
      v38 = changedCopy;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring participantStatusChanged notification for collection share %@ and participant %@ beause it's not interesting as per mstreamd dictionary.", buf, 0x16u);
    }
  }

  acceptanceStatus = [changedCopy acceptanceStatus];
  if (([share isCurrentUserOwner] & 1) != 0 || -[PLNotificationManager enableTemporaryDebugMode](self, "enableTemporaryDebugMode"))
  {
    v16 = 0;
  }

  else
  {
    v17 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      title2 = [share title];
      *buf = 138412290;
      statusCopy = title2;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring acceptance status changed because we don't own the collection share %@.", buf, 0xCu);
    }

    v16 = 1;
  }

  if ([share notificationState] == 1)
  {
    v19 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      title3 = [share title];
      *buf = 138412290;
      statusCopy = title3;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring acceptance status changed since we are currently not accepting notification for collection share %@.", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if ([(PLNotificationManager *)self enableTemporaryDebugMode]|| acceptanceStatus != status && (acceptanceStatus == 2 || acceptanceStatus == 5))
  {
    if (((v16 | bOOLValue) & 1) == 0)
    {
      v21 = [[PLNotification alloc] initWithParticipantAcceptanceStatusChanged:changedCopy];
      v22 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteParticipantAcceptanceStatusChanged:fromOldAcceptanceStatus:mstreamdInfo:]"];
      objc_initWeak(buf, self);
      v32[1] = MEMORY[0x1E69E9820];
      v32[2] = 3221225472;
      v32[3] = __101__PLNotificationManager_noteParticipantAcceptanceStatusChanged_fromOldAcceptanceStatus_mstreamdInfo___block_invoke;
      v32[4] = &unk_1E7571E20;
      objc_copyWeak(&v34, buf);
      v19 = v21;
      v32[5] = v19;
      v33 = v22;
      pl_dispatch_async();

      objc_destroyWeak(&v34);
      objc_destroyWeak(buf);

LABEL_17:
      goto LABEL_18;
    }
  }

  else
  {
    v23 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      statusCopy = status;
      v37 = 2048;
      v38 = acceptanceStatus;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Notifications: Ignoring invitation status changed because it changed from %ld to %ld.", buf, 0x16u);
    }
  }

  isCurrentUserOwner = [share isCurrentUserOwner];
  if (acceptanceStatus == 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = isCurrentUserOwner;
  }

  if ((v25 & 1) == 0 && [changedCopy role] != 1)
  {
    emailAddress = [changedCopy emailAddress];
    v27 = [PLPhotoSharingHelper accountMatchesEmail:emailAddress];

    if (v27)
    {
      uuid = [share uuid];
      v29 = [uuid copy];

      v30 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteParticipantAcceptanceStatusChanged:fromOldAcceptanceStatus:mstreamdInfo:]"];
      objc_initWeak(buf, self);
      objc_copyWeak(v32, buf);
      v19 = v29;
      v31 = v30;
      pl_dispatch_async();

      objc_destroyWeak(v32);
      objc_destroyWeak(buf);

      goto LABEL_17;
    }
  }

LABEL_18:
}

uint64_t __101__PLNotificationManager_noteParticipantAcceptanceStatusChanged_fromOldAcceptanceStatus_mstreamdInfo___block_invoke(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] senderEmailAddress];
  v4 = [WeakRetained _shouldAllowAlertsFromContactWithEmail:v3];

  if (v4)
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Notifications: Created notification for invitation changed: %@.", &v10, 0xCu);
    }

    v7 = objc_loadWeakRetained(a1 + 6);
    v8 = [v7 UNCenter];
    [v8 sendNotificationForNotification:a1[4]];
  }

  return [a1[5] stillAlive];
}

void __101__PLNotificationManager_noteParticipantAcceptanceStatusChanged_fromOldAcceptanceStatus_mstreamdInfo___block_invoke_57(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  [v3 addIndex:0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteNotificationsForCollectionShareWithUUID:*(a1 + 32) notificationTypes:v3];

  [*(a1 + 40) stillAlive];
}

- (void)noteDidDeleteSharedAssetsWithUUIDs:(id)ds
{
  dsCopy = ds;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteDidDeleteSharedAssetsWithUUIDs:]"];
  objc_initWeak(&location, self);
  v6 = dsCopy;
  objc_copyWeak(&v8, &location);
  v7 = v5;
  pl_dispatch_async();

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

uint64_t __60__PLNotificationManager_noteDidDeleteSharedAssetsWithUUIDs___block_invoke(id *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained(a1 + 6);
        [WeakRetained _deleteNotificationsForAssetWithUUID:v7 shouldDeleteCommentsOrLikeNotifications:1 shouldDeletePhotosAddedToAlbumNotifications:{1, v10}];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [a1[5] stillAlive];
}

- (void)noteDidDeleteSharedAlbum:(id)album
{
  albumCopy = album;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteDidDeleteSharedAlbum:]"];
  uuid = [albumCopy uuid];
  v7 = [uuid copy];

  objc_initWeak(&location, self);
  objc_copyWeak(&v10, &location);
  v8 = v7;
  v9 = v5;
  pl_dispatch_async();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __50__PLNotificationManager_noteDidDeleteSharedAlbum___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  [v3 addIndex:0];
  [v3 addIndex:1];
  [v3 addIndex:3];
  [v3 addIndex:4];
  [v3 addIndex:5];
  [v3 addIndex:2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteNotificationsForAlbumWithUUID:*(a1 + 32) notificationTypes:v3];

  [*(a1 + 40) stillAlive];
}

- (void)noteDidDeleteCollectionShare:(id)share
{
  shareCopy = share;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteDidDeleteCollectionShare:]"];
  uuid = [shareCopy uuid];
  v7 = [uuid copy];

  objc_initWeak(&location, self);
  objc_copyWeak(&v10, &location);
  v8 = v7;
  v9 = v5;
  pl_dispatch_async();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __54__PLNotificationManager_noteDidDeleteCollectionShare___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  [v3 addIndex:0];
  [v3 addIndex:1];
  [v3 addIndex:3];
  [v3 addIndex:4];
  [v3 addIndex:5];
  [v3 addIndex:2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteNotificationsForCollectionShareWithUUID:*(a1 + 32) notificationTypes:v3];

  [*(a1 + 40) stillAlive];
}

- (void)noteDidReceiveInvitationForSharedAlbum:(id)album
{
  albumCopy = album;
  v5 = [[PLNotification alloc] initWithInvitationAlbum:albumCopy];
  objc_initWeak(&location, self);
  v6 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteDidReceiveInvitationForSharedAlbum:]"];
  objc_copyWeak(&v9, &location);
  v7 = v5;
  v8 = v6;
  pl_dispatch_async();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __64__PLNotificationManager_noteDidReceiveInvitationForSharedAlbum___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] senderEmailAddress];
  v4 = [WeakRetained _shouldAllowAlertsFromContactWithEmail:v3];

  if (v4)
  {
    v5 = objc_loadWeakRetained(a1 + 6);
    v6 = [v5 UNCenter];
    v7 = [a1[4] requestIdentifier];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __64__PLNotificationManager_noteDidReceiveInvitationForSharedAlbum___block_invoke_2;
    v12 = &unk_1E7571DF8;
    v13 = a1[4];
    objc_copyWeak(&v14, a1 + 6);
    [v6 findExistingNotificationByIdentifier:v7 withCompletionHandler:&v9];

    objc_destroyWeak(&v14);
  }

  return [a1[5] stillAlive];
}

void __64__PLNotificationManager_noteDidReceiveInvitationForSharedAlbum___block_invoke_2(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = PLPhotoSharingGetLog();
  v5 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Notifications: Ignored notification for album invitation: %@.", &v9, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19BF1F000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Notifications: Created notification for album invitation: %@.", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained UNCenter];
    [v8 sendNotificationForNotification:*(a1 + 32)];
  }
}

- (void)noteDidReceiveInvitationForCollectionShare:(id)share
{
  shareCopy = share;
  v5 = [[PLNotification alloc] initWithInvitationCollectionShare:shareCopy];
  objc_initWeak(&location, self);
  v6 = [MEMORY[0x1E69BF360] transaction:"-[PLNotificationManager noteDidReceiveInvitationForCollectionShare:]"];
  objc_copyWeak(&v9, &location);
  v7 = v5;
  v8 = v6;
  pl_dispatch_async();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __68__PLNotificationManager_noteDidReceiveInvitationForCollectionShare___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] senderEmailAddress];
  v4 = [WeakRetained _shouldAllowAlertsFromContactWithEmail:v3];

  if (v4)
  {
    v5 = objc_loadWeakRetained(a1 + 6);
    v6 = [v5 UNCenter];
    v7 = [a1[4] requestIdentifier];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __68__PLNotificationManager_noteDidReceiveInvitationForCollectionShare___block_invoke_2;
    v12 = &unk_1E7571DF8;
    v13 = a1[4];
    objc_copyWeak(&v14, a1 + 6);
    [v6 findExistingNotificationByIdentifier:v7 withCompletionHandler:&v9];

    objc_destroyWeak(&v14);
  }

  return [a1[5] stillAlive];
}

void __68__PLNotificationManager_noteDidReceiveInvitationForCollectionShare___block_invoke_2(uint64_t a1, char a2)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = PLPhotoSharingGetLog();
  v5 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Notifications: Ignored notification for album invitation: %@.", &v9, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19BF1F000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Notifications: Created notification for album invitation: %@.", &v9, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained UNCenter];
    [v8 sendNotificationForNotification:*(a1 + 32)];
  }
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = PLNotificationManager;
  [(PLNotificationManager *)&v4 dealloc];
}

- (id)_initSharedInstance
{
  v10.receiver = self;
  v10.super_class = PLNotificationManager;
  v2 = [(PLNotificationManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_alertFiltrationEnabled = -1;
    v4 = dispatch_queue_create("com.apple.PLNotificationManager.IsolationQueue", 0);
    isolationQueue = v3->_isolationQueue;
    v3->_isolationQueue = v4;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, incomingMessageAlertFiltrationEnabledChanged, @"com.apple.mobileslideshow.IncomingMessageAlertFiltration.changed", 0, 1028);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    waitingAssetsAddNotifications = v3->_waitingAssetsAddNotifications;
    v3->_waitingAssetsAddNotifications = v7;

    v3->_processCinematicVideoItemsPrompt = 0;
    v3->_processCinematicVideoItemsPromptLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (PLNotificationManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLNotificationManager.m" lineNumber:176 description:@"Do not use this initializer"];

  return 0;
}

+ (id)_bestDateForDeliveringNotificationFromCoreDuetWithError:(id *)error
{
  v47[1] = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  knowledgeStore = [MEMORY[0x1E69979A0] knowledgeStore];
  v6 = [MEMORY[0x1E69979C8] predictorWithKnowledgeStore:knowledgeStore];
  v7 = [v6 launchLikelihoodPredictionForApp:0];
  predictionUnavailable = [MEMORY[0x1E69979C0] predictionUnavailable];

  if (v7 != predictionUnavailable)
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    startDate = [v7 startDate];
    endDate = [v7 endDate];
    [startDate timeIntervalSinceDate:endDate];
    v14 = v13;

    if (v14 < 0.0)
    {
      v40 = knowledgeStore;
      v41 = date;
      v15 = 0;
      v16 = 0;
      v17 = 0.0;
      do
      {
        v18 = startDate;
        if ([currentCalendar isDateInToday:{startDate, v40, v41}])
        {
          v19 = [v7 valueAtDate:startDate];
          [v19 doubleValue];
          v21 = v20;

          if (v21 >= v17)
          {
            v22 = v18;

            v16 = 1;
            v17 = v21;
            distantFuture = v22;
          }
        }

        transitionDates = [v7 transitionDates];
        v24 = v15 + 1;
        startDate = [transitionDates objectAtIndexedSubscript:v15];

        endDate2 = [v7 endDate];
        [startDate timeIntervalSinceDate:endDate2];
        v27 = v26;

        v15 = v24;
      }

      while (v27 < 0.0);
      if (v16)
      {
        v28 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          currentLocale = [MEMORY[0x1E695DF58] currentLocale];
          v30 = [distantFuture descriptionWithLocale:currentLocale];
          *buf = 138412546;
          v43 = v30;
          v44 = 2048;
          v45 = v17;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Most likely to use device at date %@ with likelihood %2.2f", buf, 0x16u);
        }

        knowledgeStore = v40;
        date = v41;
LABEL_20:

        v34 = distantFuture;
        v37 = v34;
        goto LABEL_21;
      }

      knowledgeStore = v40;
      date = v41;
    }

    v38 = distantFuture;
    distantFuture = date;

    v28 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "No interesting dates in today returned from [_DKPredictor launchLikelihoodPredictionForApp:], using default date.", buf, 2u);
    }

    goto LABEL_20;
  }

  v31 = MEMORY[0x1E696ABC0];
  v32 = *MEMORY[0x1E69BFF48];
  v46 = *MEMORY[0x1E696A578];
  v47[0] = @"Problem while querying [_DKPredictor launchLikelihoodPredictionForApp:]: prediction unavailable.";
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  v34 = [v31 errorWithDomain:v32 code:0 userInfo:v33];

  if (error)
  {
    v35 = v34;
    *error = v34;
  }

  v36 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v43 = v34;
    _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Error: %@, can't predict best time to notify", buf, 0xCu);
  }

  v37 = date;
LABEL_21:

  return v37;
}

+ (id)_bestDateForDeliveringNotification
{
  v53 = *MEMORY[0x1E69E9840];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v5 = arc4random_uniform(0x708u);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = PhotosMemoriesBestContentStartTimeHours;
  v6 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v46;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v45 + 1) + 8 * i);
        v11 = [currentCalendar components:124 fromDate:date];
        [v11 setHour:{objc_msgSend(v10, "integerValue")}];
        [v11 setMinute:0];
        v12 = [currentCalendar dateFromComponents:v11];
        v13 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v12 duration:7200.0];
        if ([v13 containsDate:date])
        {
          v31 = v11;
          v32 = [date dateByAddingTimeInterval:v5];

          v33 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [v4 stringFromDate:v32];
            *buf = 138412290;
            v51 = v34;
            _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Memory Notification scheduled within best content time with offset: %@ (local time)", buf, 0xCu);
          }

          date = v32;
          v29 = date;
          goto LABEL_28;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v44 = 0;
  obj = [self _bestDateForDeliveringNotificationFromCoreDuetWithError:&v44];
  v14 = v44;
  if (v14)
  {
    v15 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v51 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Error while calling +[PLNotificationManager(Private) _bestDateForDeliveringNotificationFromCoreDuetWithError:]: %@", buf, 0xCu);
    }

    v16 = date;
    obj = v16;
  }

  v17 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v4 stringFromDate:obj];
    *buf = 138412290;
    v51 = v18;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "CoreDuet suggested Memory Notification time: %@ (local time)", buf, 0xCu);
  }

  v36 = v14;
  v38 = v4;

  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v20 = PhotosMemoriesBestContentStartTimeHours;
  v21 = [v20 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v40 + 1) + 8 * j);
        v26 = [currentCalendar nextDateAfterDate:obj matchingHour:objc_msgSend(v25 minute:"integerValue") second:0 options:{0, 1024}];
        v27 = [currentCalendar nextDateAfterDate:date matchingHour:objc_msgSend(v25 minute:"integerValue") second:0 options:{0, 1024}];
        v28 = [distantFuture earlierDate:v26];

        distantFuture = [v28 earlierDate:v27];
      }

      v22 = [v20 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v22);
  }

  v29 = [distantFuture dateByAddingTimeInterval:v5];

  v12 = PLPhotoSharingGetLog();
  v4 = v38;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v38 stringFromDate:v29];
    *buf = 138412290;
    v51 = v30;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Memory Notification scheduled at next best content start time: %@ (local time)", buf, 0xCu);
  }

  v31 = v36;
LABEL_28:

  return v29;
}

+ (id)_notificationDeliveryDate
{
  v17 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PhotosMemoriesNotificationDelayOverride"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
    if (v4 >= 0.0)
    {
      date = [MEMORY[0x1E695DF00] date];
      v6 = [date dateByAddingTimeInterval:v5];
    }

    else
    {
      v6 = 0;
    }

    v7 = PLPhotoSharingGetLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v13 = 134218242;
    v14 = v5;
    v15 = 2112;
    v16 = @"PhotosMemoriesNotificationDelayOverride";
    v8 = "Memories Notification: overriding notification delay with time inverval %.2f because of user defaults %@";
    v9 = v7;
    v10 = 22;
  }

  else
  {
    v6 = +[PLNotificationManager _bestDateForDeliveringNotification];
    v7 = PLPhotoSharingGetLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v13 = 138412290;
    v14 = *&v6;
    v8 = "Memories Notification Delivery Date: %@";
    v9 = v7;
    v10 = 12;
  }

  _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
LABEL_10:

  return v6;
}

+ (void)processAssetsForSensitivityIfNecessary:(id)necessary inPhotoLibrary:(id)library completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  libraryCopy = library;
  handlerCopy = handler;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v8 = getSCSensitivityAnalyzerClass_softClass;
  v36 = getSCSensitivityAnalyzerClass_softClass;
  if (!getSCSensitivityAnalyzerClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v40 = __getSCSensitivityAnalyzerClass_block_invoke;
    v41 = &unk_1E7577EA0;
    v42 = &v33;
    __getSCSensitivityAnalyzerClass_block_invoke(&buf);
    v8 = v34[3];
  }

  v9 = v8;
  _Block_object_dispose(&v33, 8);
  v32 = 0;
  v10 = [v8 shouldAnalyzeMedia:&v32];
  v22 = v32;
  if (v10 && (_os_feature_enabled_impl() & 1) != 0)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x2020000000;
    v41 = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = necessaryCopy;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v11)
    {
      v12 = *v29;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        if (*(*(&buf + 1) + 24) > 9uLL)
        {
          break;
        }

        v37 = *(*(&v28 + 1) + 8 * v13);
        v14 = v37;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        libraryBundle = [libraryCopy libraryBundle];
        libraryURL = [libraryBundle libraryURL];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __97__PLNotificationManager_processAssetsForSensitivityIfNecessary_inPhotoLibrary_completionHandler___block_invoke_2;
        v24[3] = &unk_1E7572140;
        p_buf = &buf;
        v24[4] = v14;
        v25 = libraryCopy;
        v26 = handlerCopy;
        [PLMediaAnalysisServiceRequestAdapter requestProcessingTypes:1 forAssetsWithLocalIdentifiers:v15 fromPhotoLibraryWithURL:libraryURL progressHandler:&__block_literal_global_77823 completionHandler:v24];

        if (v11 == ++v13)
        {
          v11 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (v22 && [v22 code] != 20)
    {
      v18 = PLBackendGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v22;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Error reading sensitivity analysis enablement: %@", &buf, 0xCu);
      }
    }

    firstObject = [necessaryCopy firstObject];
    (*(handlerCopy + 2))(handlerCopy, firstObject);
  }
}

void __97__PLNotificationManager_processAssetsForSensitivityIfNecessary_inPhotoLibrary_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  ++*(*(*(a1 + 56) + 8) + 24);
  if (v3)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Error processing asset %@ for sensitivity: %@", buf, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__PLNotificationManager_processAssetsForSensitivityIfNecessary_inPhotoLibrary_completionHandler___block_invoke_181;
  v9[3] = &unk_1E7576F38;
  v7 = v6;
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  [v7 performBlock:v9 withPriority:0];
}

void __97__PLNotificationManager_processAssetsForSensitivityIfNecessary_inPhotoLibrary_completionHandler___block_invoke_181(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) assetWithUUID:*(a1 + 40)];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getSCSensitivityAnalysisClass_softClass;
  v14 = getSCSensitivityAnalysisClass_softClass;
  if (!getSCSensitivityAnalysisClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getSCSensitivityAnalysisClass_block_invoke;
    v16 = &unk_1E7577EA0;
    v17 = &v11;
    __getSCSensitivityAnalysisClass_block_invoke(buf);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v10 = 0;
  v5 = [[v3 alloc] initFromCompactAnalysis:objc_msgSend(v2 error:{"compactSCSensitivityAnalysis"), &v10}];
  v6 = v10;
  if ([v2 compactSCSensitivityAnalysis] >= 1 && v5)
  {
    if ([v5 isContentPreviewable])
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else if (!v5 && v6)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = [v2 compactSCSensitivityAnalysis];
      *buf = 138412802;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      *&buf[22] = 2048;
      v16 = v9;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Error initializing sensitiviy analysis result for asset: %@ error: %@ compactAnalysis: %lld", buf, 0x20u);
    }
  }
}

+ (unint64_t)sharedAlbumsUnreadCount
{
  if (PLIsLockdownMode())
  {
    return 0;
  }

  v3 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PLNotificationManager_sharedAlbumsUnreadCount__block_invoke;
  v6[3] = &unk_1E7578910;
  v8 = &v9;
  v4 = v3;
  v7 = v4;
  [v4 performBlockAndWait:v6];
  v2 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v2;
}

void __48__PLNotificationManager_sharedAlbumsUnreadCount__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLCollectionShare entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d AND %K == %d AND %K == %d", @"collectionShareKind", 2, @"notificationState", 0x7FFFLL, @"unseenContentState", 2];
  [v4 setPredicate:v5];
  v6 = [*(a1 + 32) managedObjectContext];
  v11 = 0;
  v7 = [v6 countForFetchRequest:v4 error:&v11];
  v8 = v11;
  *(*(*(a1 + 40) + 8) + 24) = v7;

  if (v8)
  {
    v9 = PLMigrationGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 localizedDescription];
      *buf = 138412290;
      v13 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch unread collection share count: %@", buf, 0xCu);
    }
  }
}

+ (id)filteredAlbumListForContentMode:(int)mode library:(id)library
{
  v5 = [library albumListForContentMode:?];
  if (v5)
  {
    if (mode == 13)
    {
      v6 = 17174528;
    }

    else
    {
      v6 = 397312;
    }

    if (mode == 1)
    {
      v7 = 462848;
    }

    else
    {
      v7 = v6;
    }

    v8 = [PLFilteredAlbumList filteredAlbumList:v5 filter:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)sharedManager
{
  pl_dispatch_once();
  v2 = sharedManager___sharedManager;

  return v2;
}

void __38__PLNotificationManager_sharedManager__block_invoke(uint64_t a1)
{
  if ((PLIsAssetsd() & 1) != 0 || PLIsInternalTool())
  {
    v2 = [[PLNotificationManager alloc] _initSharedInstance];
    v3 = sharedManager___sharedManager;
    sharedManager___sharedManager = v2;

    v4 = objc_alloc_init(PLNotificationUNCenter);
    [sharedManager___sharedManager setUNCenter:v4];

    v5 = sharedManager___sharedManager;
    v6 = [sharedManager___sharedManager UNCenter];
    [v6 setDelegate:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"PLNotificationManager.m" lineNumber:167 description:@"PLNotificationManager can only run on assetsd."];
  }
}

@end