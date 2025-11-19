@interface PLPhotoSharingHelper
+ (BOOL)_derivativeExistsForAsset:(id)a3 cloudPlaceholderKind:(signed __int16)a4;
+ (BOOL)_isUserLoggedIntoiCloud;
+ (BOOL)_recentlyRequestedDownloadAsset:(id)a3 cloudPlaceholderKind:(signed __int16)a4;
+ (BOOL)_retrieveURLsFromAssetWithUUID:(id)a3 withExportedFileURL:(id)a4 primaryURL:(id *)a5 videoComplementURL:(id *)a6;
+ (BOOL)_sharedStreamsEnabled;
+ (BOOL)_sharedStreamsExplicitlyDisabled;
+ (BOOL)accountMatchesEmail:(id)a3;
+ (BOOL)canAcceptPendingInvitationForAlbum:(id)a3 error:(id *)a4;
+ (BOOL)canCreateStreamInPhotoLibrary:(id)a3 error:(id *)a4;
+ (BOOL)canSetUserCloudSharedLiked:(BOOL)a3 forAssets:(id)a4 error:(id *)a5;
+ (BOOL)debugAlwaysStreamSharedVideos;
+ (BOOL)debugAutoAcceptInvitation;
+ (BOOL)debugDownloadAllDerivatives;
+ (BOOL)debugDownloadMetadataOnly;
+ (BOOL)debugDownloadThumbnailsOnly;
+ (BOOL)hasPhoneInvitationForAlbum:(id)a3;
+ (BOOL)hasReachedLimitOfOwnedStreamsInLibrary:(id)a3;
+ (BOOL)hasReachedLimitOfSubscribedStreamsInLibrary:(id)a3;
+ (BOOL)isBreadcrumbDebugEnabled;
+ (BOOL)isCellularConnection;
+ (BOOL)prepareToEnqueueBatchOfOriginalAssetUUIDs:(id)a3 withBatchCommentText:(id)a4 assetsSharingInfos:(id)a5 customExportsInfo:(id)a6 andTrimmedVideoPathInfo:(id)a7 sharedAlbum:(id)a8 isNewAlbum:(BOOL)a9 error:(id *)a10;
+ (BOOL)processExportedFileURL:(id)a3 assetUUID:(id)a4 customExportsInfo:(id)a5;
+ (BOOL)removeCloudSharingDirectories:(id *)a3;
+ (BOOL)sharedStreamsEnabledForPhotoLibraryURL:(id)a3;
+ (BOOL)sharedStreamsExplictlyDisabledForPhotoLibraryURL:(id)a3;
+ (CGSize)derivedAssetSizeForMasterSizeWidth:(double)a3 height:(double)a4 derivativeType:(int)a5 withSpecificationInfo:(id)a6;
+ (CGSize)videoPosterFrameDimension;
+ (double)derivedAssetSmallDimensionLimitForType:(int)a3;
+ (id)_customSharedAlbumExportsOutputDirectoryForAssetWithUUID:(id)a3;
+ (id)_customSharedAlbumsExportsOutputDirectoryParent;
+ (id)_downloadRequestQueue;
+ (id)_localizationKeyForAssets:(id)a3;
+ (id)_pathToServerConfigurationCache;
+ (id)_phoneInvitationFailureFile;
+ (id)_processPhoneFailuresQueue;
+ (id)_transactionWithName:(const char *)a3;
+ (id)_videoComplementURLForSharingFromAsset:(id)a3;
+ (id)_videoDerivativeForVideoAtURL:(id)a3 outputURL:(id)a4 withPreset:(id)a5 reason:(id)a6 outputFileType:(id)a7;
+ (id)derivativesForMasterAsset:(id)a3 withSpecifications:(id)a4;
+ (id)directoryPathForDownloadActivityForAlbumGUID:(id)a3 create:(BOOL)a4;
+ (id)directoryPathForUploadActivityForAlbumGUID:(id)a3 create:(BOOL)a4;
+ (id)errorForReachingMaxSubscriptionLimitWithAlbumTitle:(id)a3;
+ (id)photoSharingOriginalFilenameForAsset:(id)a3;
+ (id)prefixForBreadcrumbState:(int)a3;
+ (id)serverSideConfigurationDictionary;
+ (id)sharingDisplayNameIncludingEmail:(BOOL)a3 allowsEmail:(BOOL)a4;
+ (id)sharingFirstName;
+ (id)sharingLastName;
+ (id)sharingPersonID;
+ (id)sharingUsername;
+ (id)streamdVideoCache;
+ (id)temporaryDerivativePathForCollectionGUID:(id)a3 uti:(id)a4;
+ (id)temporaryUploadDerivativesPathForCollectionGUID:(id)a3 pathExtension:(id)a4;
+ (id)videoDerivativesForAssetCollection:(id)a3 withSpecifications:(id)a4;
+ (int64_t)_serverLimitValueForKey:(id)a3 withDefaultResult:(int64_t)a4;
+ (int64_t)maxVideoLengthForPublishing;
+ (unint64_t)purgeSpace:(unint64_t)a3;
+ (unint64_t)purgeableSpace;
+ (void)_markStreamVideosAsPurgeable;
+ (void)_resetServerSideConfigurationDictionary;
+ (void)_userDidDeleteSharedAlbum:(id)a3;
+ (void)_userDidDeleteSharedAssets:(id)a3;
+ (void)acceptPendingInvitationForAlbum:(id)a3 completionHandler:(id)a4;
+ (void)accountSettingsChanged;
+ (void)applicationIsInForeground:(BOOL)a3 photoLibraryURL:(id)a4;
+ (void)checkServerModelForAlbum:(id)a3 photoLibrary:(id)a4;
+ (void)checkServerModelRelationshipsForPhotoLibrary:(id)a3;
+ (void)clearCachedAccountState;
+ (void)declinePendingInvitationForAlbum:(id)a3;
+ (void)deleteCloudSharedAlbumFromServer:(id)a3;
+ (void)deleteCloudSharedAssetsFromServer:(id)a3 inSharedAlbum:(id)a4;
+ (void)deleteCommentWithGUIDFromServer:(id)a3;
+ (void)deleteDebugBreadcrumbsForAlbumGUID:(id)a3;
+ (void)deleteLocalAlbumsForMSASAlbumsWithGUID:(id)a3 inviterAddress:(id)a4;
+ (void)deleteLocalAlbumsForMSASAlbumsWithGUIDs:(id)a3;
+ (void)downloadAsset:(id)a3 cloudPlaceholderKind:(signed __int16)a4 shouldPrioritize:(BOOL)a5 shouldExtendTimer:(BOOL)a6;
+ (void)enqueueCloudSharedAssetsForPublishToServer:(id)a3 inSharedAlbum:(id)a4;
+ (void)forgetSharingPersonID:(id)a3;
+ (void)handlePhoneInvitationFailuresWithCompletionBlock:(id)a3;
+ (void)markAlbumGUIDAsViewed:(id)a3 clearUnseenAssetsCount:(BOOL)a4;
+ (void)markCommentsForAssetCollectionWithGUID:(id)a3 asViewedWithLastViewedDate:(id)a4;
+ (void)markPendingInvitationAsSpamForAlbum:(id)a3 completionHandler:(id)a4;
+ (void)photosPreferencesChanged;
+ (void)pollForAlbumListUpdatesIfNecessary;
+ (void)pollForAlbumListUpdatesWithRefreshResetSync:(BOOL)a3;
+ (void)prioritizeDownloadsForAlbumGUID:(id)a3;
+ (void)pruneCloudSharingContentIfNecessaryInLibrary:(id)a3;
+ (void)publishCloudSharedAlbumToServer:(id)a3;
+ (void)publishCloudSharedCommentToServer:(id)a3;
+ (void)removeSubscribers:(id)a3 fromOwnedAlbum:(id)a4;
+ (void)requestVideoPlaybackURLForAsset:(id)a3 videoType:(unint64_t)a4 completion:(id)a5;
+ (void)resetAllLocalState;
+ (void)retryOutstandingActivities;
+ (void)savePhoneInvitationFailuresForPhoneNumber:(id)a3 inAlbum:(id)a4;
+ (void)sendPendingInvitationsForAlbum:(id)a3 resendInvitationGUIDs:(id)a4;
+ (void)sendPendingInvitationsForNewlyCreatedAlbum:(id)a3;
+ (void)unsubscribeFromAlbum:(id)a3;
+ (void)updateCloudSharedAlbumMetadataOnServer:(id)a3;
+ (void)updateCloudSharedAlbumMultipleContributorsStateOnServer:(id)a3;
+ (void)updateCloudSharedAlbumPublicURLStateOnServer:(id)a3;
+ (void)updateLocalAlbumMetadataForMSASAlbum:(id)a3 info:(id)a4;
+ (void)updateSharedAlbumsCachedServerConfigurationLimits;
+ (void)writeAlbumNameBreadCrumb:(id)a3 forAlbumGUID:(id)a4 isUpload:(BOOL)a5;
+ (void)writeDownloadDebugBreadcrumbForAsset:(id)a3 albumGUID:(id)a4 content:(id)a5 state:(int)a6 error:(id)a7;
+ (void)writeUploadDebugBreadcrumbForAssetCollections:(id)a3 state:(int)a4 error:(id)a5;
@end

@implementation PLPhotoSharingHelper

+ (BOOL)_sharedStreamsExplicitlyDisabled
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = _sharedStreamsExplicitlyDisabled;
  if (_sharedStreamsExplicitlyDisabled == -1)
  {
    v3 = +[PLAccountStore pl_sharedAccountStore];
    v4 = [v3 cachedPrimaryAppleAccount];

    v5 = *MEMORY[0x1E6959B50];
    v6 = [v4 isEnabledForDataclass:*MEMORY[0x1E6959B50]];
    v7 = [v4 isProvisionedForDataclass:v5];
    v8 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 username];
      v10 = v9;
      if (v6)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v16 = 138412802;
      v17 = v9;
      if (v7)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Looking for a Shared Streams account. Found %@ with isEnableForSharedStreams %@ isProvisionedForDataclass %@ ", &v16, 0x20u);
    }

    _sharedStreamsExplicitlyDisabled = (v4 != 0) & (v7 & v6 ^ 1);
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (_sharedStreamsExplicitlyDisabled)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "sharedStreamsExplicitlyDisabled %@", &v16, 0xCu);
    }

    v2 = _sharedStreamsExplicitlyDisabled;
  }

  return v2 != 0;
}

void __51__PLPhotoSharingHelper__phoneInvitationFailureFile__block_invoke()
{
  v3 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v0 = [v3 photoDirectoryWithType:23 additionalPathComponents:@"phoneFailures.plist"];
  v1 = [v0 copy];
  v2 = _phoneInvitationFailureFile_phoneFailureFile;
  _phoneInvitationFailureFile_phoneFailureFile = v1;
}

+ (BOOL)_sharedStreamsEnabled
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = _sharedStreamsEnabled;
  if (_sharedStreamsEnabled == -1)
  {
    v3 = +[PLAccountStore pl_sharedAccountStore];
    v4 = [v3 cachedPrimaryAppleAccount];

    v5 = *MEMORY[0x1E6959B50];
    v6 = [v4 isEnabledForDataclass:*MEMORY[0x1E6959B50]];
    v7 = [v4 isProvisionedForDataclass:v5];
    v8 = PLIsEDUMode();
    v9 = PLIsLockdownMode();
    v10 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 username];
      v16 = 138413314;
      v17 = v11;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v7;
      v22 = 1024;
      v23 = v8;
      v24 = 1024;
      v25 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Determining if Shared Albums enabled: Found %@ with:\nisEnabledForSharedStreams: %{BOOL}d\nisProvisionedForDataclass: %{BOOL}d\nisEDUMode: %{BOOL}d\nisLockdownMode: %{BOOL}d", &v16, 0x24u);
    }

    _sharedStreamsEnabled = v7 & v6 & (v8 ^ 1) & (v9 ^ 1);
    v12 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      LODWORD(v17) = _sharedStreamsEnabled;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "sharedStreamsEnabled: %{BOOL}d", &v16, 8u);
    }

    if (!_sharedStreamsEnablementStateObserver)
    {
      v13 = objc_alloc_init(_PLSharedStreamsEnablementStateObserver);
      v14 = _sharedStreamsEnablementStateObserver;
      _sharedStreamsEnablementStateObserver = v13;
    }

    v2 = _sharedStreamsEnabled;
  }

  return v2 != 0;
}

+ (id)sharingPersonID
{
  v9 = *MEMORY[0x1E69E9840];
  if (([objc_opt_class() _sharedStreamsEnabled] & 1) == 0)
  {
    v3 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Can't return sharingPersonID because no Apple Account has Photo Sharing enabled", &v7, 2u);
    }

    goto LABEL_8;
  }

  v2 = +[PLAccountStore pl_sharedAccountStore];
  v3 = [v2 cachedPrimaryAppleAccount];

  if (!v3)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = [v3 aa_personID];
  v5 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, " using sharing person id from Photo Stream account %@", &v7, 0xCu);
  }

LABEL_9:

  return v4;
}

+ (id)_phoneInvitationFailureFile
{
  pl_dispatch_once();
  v2 = _phoneInvitationFailureFile_phoneFailureFile;

  return v2;
}

+ (id)_processPhoneFailuresQueue
{
  pl_dispatch_once();
  v2 = _processPhoneFailuresQueue_queue;

  return v2;
}

void __50__PLPhotoSharingHelper__processPhoneFailuresQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.MobileSlideShow.PLPhotoSharingHelperProcessPhoneFailuresQueue", 0);
  v1 = _processPhoneFailuresQueue_queue;
  _processPhoneFailuresQueue_queue = v0;
}

+ (BOOL)debugAutoAcceptInvitation
{
  v2 = __debugAutoAcceptInvitation;
  if (__debugAutoAcceptInvitation == -1)
  {
    keyExistsAndHasValidFormat = 0;
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    v2 = CFPreferencesGetAppBooleanValue(@"AutoAcceptInvitation", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
    __debugAutoAcceptInvitation = v2;
  }

  return v2 == 1;
}

+ (BOOL)debugDownloadAllDerivatives
{
  v2 = __debugDownloadAllDerivatives;
  if (__debugDownloadAllDerivatives == -1)
  {
    keyExistsAndHasValidFormat = 0;
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    v2 = CFPreferencesGetAppBooleanValue(@"PSDownloadAllDerivatives", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
    __debugDownloadAllDerivatives = v2;
  }

  return v2 == 1;
}

+ (BOOL)debugDownloadMetadataOnly
{
  v2 = __debugDownloadMetadataOnly;
  if (__debugDownloadMetadataOnly == -1)
  {
    keyExistsAndHasValidFormat = 0;
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    v2 = CFPreferencesGetAppBooleanValue(@"PSDownloadMetadataOnly", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
    __debugDownloadMetadataOnly = v2;
  }

  return v2 == 1;
}

+ (BOOL)debugDownloadThumbnailsOnly
{
  v2 = __debugDownloadThumbnailsOnly;
  if (__debugDownloadThumbnailsOnly == -1)
  {
    keyExistsAndHasValidFormat = 0;
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    v2 = CFPreferencesGetAppBooleanValue(@"PSDownloadThumbnailsOnly", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) != 0;
    __debugDownloadThumbnailsOnly = v2;
  }

  return v2 == 1;
}

+ (BOOL)debugAlwaysStreamSharedVideos
{
  v2 = __debugAlwaysStreamSharedVideos;
  if (__debugAlwaysStreamSharedVideos == -1)
  {
    keyExistsAndHasValidFormat = 0;
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"PSAlwaysStreamSharedVideos", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v4 = AppBooleanValue == 0;
    }

    else
    {
      v4 = 1;
    }

    v2 = !v4;
    __debugAlwaysStreamSharedVideos = v2;
  }

  return v2 == 1;
}

+ (void)deleteDebugBreadcrumbsForAlbumGUID:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AC08];
    v5 = a3;
    v8 = [v4 defaultManager];
    v6 = [a1 directoryPathForUploadActivityForAlbumGUID:v5 create:0];
    [v8 removeItemAtPath:v6 error:0];
    v7 = [a1 directoryPathForDownloadActivityForAlbumGUID:v5 create:0];

    [v8 removeItemAtPath:v7 error:0];
  }
}

+ (void)writeDownloadDebugBreadcrumbForAsset:(id)a3 albumGUID:(id)a4 content:(id)a5 state:(int)a6 error:(id)a7
{
  v8 = *&a6;
  v59 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([a1 isBreadcrumbDebugEnabled])
  {
    if (v12)
    {
      if (v13)
      {
        v16 = [a1 directoryPathForDownloadActivityForAlbumGUID:v13 create:1];
        v17 = [a1 prefixForBreadcrumbState:v8];
        v18 = v17;
        if (v8 <= 220)
        {
          if (v8 <= 209)
          {
            if (v8 != 200)
            {
              if (v8 == 205)
              {
                v24 = a1;
                v25 = 200;
                goto LABEL_30;
              }

              goto LABEL_27;
            }

LABEL_28:
            v43 = 0;
            v44 = 0;
            v26 = v15 != 0;
LABEL_36:
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ \n", v14];
            v45 = v16;
            if (v26)
            {
              v32 = [v18 stringByAppendingPathExtension:@"ERROR"];

              v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CONTENT:%@ ERROR:%@ \n", v31, v15];

              if (objc_opt_respondsToSelector())
              {
                v34 = MEMORY[0x1E696AEC0];
                v35 = [v15 MSVerboseDescription];
                v31 = [v34 stringWithFormat:@"%@\n MSVerboseDescription:%@ \n", v33, v35];
              }

              else
              {
                v31 = v33;
              }

              v36 = v32;
              v16 = v45;
            }

            else
            {
              v36 = v18;
            }

            v42 = v36;
            v37 = [v16 stringByAppendingPathComponent:?];
            v38 = [v37 stringByAppendingPathExtension:v12];

            v39 = [v31 dataUsingEncoding:4];
            v46 = 0;
            LOBYTE(v37) = [v39 writeToFile:v38 options:1073741825 error:&v46];
            v40 = v46;
            if ((v37 & 1) == 0)
            {
              v41 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                *buf = 138413570;
                v48 = v12;
                v49 = 2112;
                v50 = v13;
                v51 = 1024;
                v52 = v8;
                v53 = 2112;
                v54 = v15;
                v55 = 2112;
                v56 = v38;
                v57 = 2112;
                v58 = v40;
                _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "writeDownloadDebugBreadcrumbForAsset:%@ album:%@ step:%i error:%@ failed to write download breadcrumb at path %@ error %@", buf, 0x3Au);
              }
            }

            v22 = v45;
            goto LABEL_47;
          }

          if ((v8 - 210) >= 3)
          {
            if (v8 == 220)
            {
              v24 = a1;
              v25 = 210;
              goto LABEL_30;
            }

            goto LABEL_27;
          }
        }

        else
        {
          if (v8 <= 289)
          {
            switch(v8)
            {
              case 0xDD:
                v24 = a1;
                v25 = 211;
                goto LABEL_30;
              case 0xE6:
                v24 = a1;
                v25 = 220;
                goto LABEL_30;
              case 0xE7:
                v24 = a1;
                v25 = 221;
                goto LABEL_30;
            }

            goto LABEL_27;
          }

          if (v8 <= 291)
          {
            if (v8 != 290)
            {
              v19 = [a1 prefixForBreadcrumbState:231];
              v20 = a1;
              v21 = v19;
              v44 = [v20 prefixForBreadcrumbState:290];
LABEL_31:
              v26 = v15 != 0;
              v43 = v21;
              if (!v15 && v21)
              {
                v27 = [MEMORY[0x1E696AC08] defaultManager];
                v28 = [v16 stringByAppendingPathComponent:v21];
                v29 = [v28 stringByAppendingPathExtension:v12];

                [v27 removeItemAtPath:v29 error:0];
                if (v44)
                {
                  v30 = [v16 stringByAppendingPathComponent:?];

                  v29 = [v30 stringByAppendingPathExtension:v12];

                  [v27 removeItemAtPath:v29 error:0];
                }

                v26 = 0;
              }

              goto LABEL_36;
            }

            v24 = a1;
            v25 = 230;
LABEL_30:
            v21 = [v24 prefixForBreadcrumbState:v25];
            v44 = 0;
            goto LABEL_31;
          }

          if (v8 != 292)
          {
            if (v8 != 300)
            {
LABEL_27:

              v18 = 0;
              goto LABEL_28;
            }

            goto LABEL_28;
          }
        }

        v24 = a1;
        v25 = 205;
        goto LABEL_30;
      }

      v22 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v48 = v12;
        v49 = 2112;
        v50 = 0;
        v51 = 1024;
        v52 = v8;
        v53 = 2112;
        v54 = v15;
        v23 = "writeDownloadDebugBreadcrumbForAsset:%@ album:%@ step:%i error:%@ does not have an album GUID to proceed";
        goto LABEL_13;
      }
    }

    else
    {
      v22 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v48 = 0;
        v49 = 2112;
        v50 = v13;
        v51 = 1024;
        v52 = v8;
        v53 = 2112;
        v54 = v15;
        v23 = "writeDownloadDebugBreadcrumbForAsset:%@ album:%@ step:%i error:%@ does not have an asset GUID to proceed";
LABEL_13:
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0x26u);
      }
    }

LABEL_47:
  }
}

+ (void)writeUploadDebugBreadcrumbForAssetCollections:(id)a3 state:(int)a4 error:(id)a5
{
  v6 = *&a4;
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v41 = a1;
  if ([a1 isBreadcrumbDebugEnabled])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v34 = v8;
    obj = v8;
    v40 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
    if (!v40)
    {
      goto LABEL_35;
    }

    v36 = v9 != 0;
    v39 = *v46;
    v10 = 0x1E696A000uLL;
    v37 = v9;
    v38 = v6;
    while (1)
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        v13 = [v12 albumGUID];
        if (v13)
        {
          v14 = [v41 directoryPathForUploadActivityForAlbumGUID:v13 create:1];
          v43 = [v12 GUID];
          v15 = 0;
          if (v6 > 119)
          {
            if (v6 == 120)
            {
              v18 = 110;
              goto LABEL_19;
            }

            v16 = v36;
            v17 = 0;
            if (v6 == 199)
            {
              v18 = 120;
              goto LABEL_19;
            }
          }

          else
          {
            if (v6 == 100)
            {
              v15 = [v41 prefixForBreadcrumbState:100];
              v17 = 0;
              goto LABEL_22;
            }

            v16 = v36;
            v17 = 0;
            if (v6 == 110)
            {
              v18 = 100;
LABEL_19:
              v17 = [v41 prefixForBreadcrumbState:v18];
              v15 = [v41 prefixForBreadcrumbState:v6];
              if (!v9 && v17)
              {
                v19 = [MEMORY[0x1E696AC08] defaultManager];
                v20 = [v14 stringByAppendingPathComponent:v17];
                [v20 stringByAppendingPathExtension:v43];
                v22 = v21 = v17;

                v10 = 0x1E696A000;
                [v19 removeItemAtPath:v22 error:0];

                v17 = v21;
                v9 = 0;

                v16 = 0;
                goto LABEL_23;
              }

LABEL_22:
              v16 = v36;
            }
          }

LABEL_23:
          v42 = v17;
          v23 = [*(v10 + 3776) stringWithFormat:@"%@ \n", v12];
          if (v16)
          {
            v24 = [v15 stringByAppendingPathExtension:@"ERROR"];

            v25 = [*(v10 + 3776) stringWithFormat:@"CONTENT:%@ ERROR:%@ \n", v23, v9];

            if (objc_opt_respondsToSelector())
            {
              v26 = *(v10 + 3776);
              v27 = [v9 MSVerboseDescription];
              v23 = [v26 stringWithFormat:@"%@\n MSVerboseDescription:%@ \n", v25, v27];
            }

            else
            {
              v23 = v25;
            }
          }

          else
          {
            v24 = v15;
          }

          v28 = [v14 stringByAppendingPathComponent:v24];
          v29 = [v28 stringByAppendingPathExtension:v43];

          v30 = [v23 dataUsingEncoding:4];
          v44 = 0;
          v31 = [v30 writeToFile:v29 options:1073741825 error:&v44];
          v32 = v44;
          if ((v31 & 1) == 0)
          {
            v33 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138413314;
              v50 = v12;
              v51 = 1024;
              v52 = v38;
              v53 = 2112;
              v54 = v37;
              v55 = 2112;
              v56 = v29;
              v57 = 2112;
              v58 = v32;
              _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "writeUploadDebugBreadcrumbForAssetCollection %@ step:%i error:%@ failed to write upload breadcrumb at path %@ error %@", buf, 0x30u);
            }
          }

          v6 = v38;
          v9 = v37;
          v10 = 0x1E696A000;
          goto LABEL_33;
        }

        v14 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v50 = v12;
          v51 = 1024;
          v52 = v6;
          v53 = 2112;
          v54 = v9;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "writeUploadDebugBreadcrumbForAssetCollection %@ step:%i error:%@ does not have an album GUID to proceed", buf, 0x1Cu);
        }

LABEL_33:
      }

      v40 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
      if (!v40)
      {
LABEL_35:

        v8 = v34;
        break;
      }
    }
  }
}

+ (id)prefixForBreadcrumbState:(int)a3
{
  if (a3 <= 211)
  {
    v5 = @"requested_thumbnail";
    v11 = @"requested";
    if (a3 != 211)
    {
      v11 = 0;
    }

    if (a3 != 210)
    {
      v5 = v11;
    }

    v12 = @"metadata";
    v13 = @"metadata_assetsd";
    if (a3 != 205)
    {
      v13 = 0;
    }

    if (a3 != 200)
    {
      v12 = v13;
    }

    if (a3 <= 209)
    {
      v5 = v12;
    }

    v8 = @"submitted";
    v14 = @"complete";
    if (a3 != 199)
    {
      v14 = 0;
    }

    if (a3 != 120)
    {
      v8 = v14;
    }

    v15 = @"enqueued";
    v16 = @"requested";
    if (a3 != 110)
    {
      v16 = 0;
    }

    if (a3 != 100)
    {
      v15 = v16;
    }

    if (a3 <= 119)
    {
      v8 = v15;
    }

    v10 = a3 <= 199;
  }

  else if (a3 <= 230)
  {
    v5 = @"received";
    v17 = @"received_assetsd_thumbnail";
    if (a3 != 230)
    {
      v17 = 0;
    }

    if (a3 != 221)
    {
      v5 = v17;
    }

    v8 = @"requested_video_posterframe";
    v18 = @"received_thumbnail";
    if (a3 != 220)
    {
      v18 = 0;
    }

    if (a3 != 212)
    {
      v8 = v18;
    }

    v10 = a3 <= 220;
  }

  else
  {
    v5 = @"complete";
    v6 = @"complete_replaced_original";
    v7 = @"deleted";
    if (a3 != 300)
    {
      v7 = 0;
    }

    if (a3 != 292)
    {
      v6 = v7;
    }

    if (a3 != 291)
    {
      v5 = v6;
    }

    v8 = @"received_assetsd";
    v9 = @"complete_thumbnail";
    if (a3 != 290)
    {
      v9 = 0;
    }

    if (a3 != 231)
    {
      v8 = v9;
    }

    v10 = a3 <= 290;
  }

  if (v10)
  {
    v5 = v8;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%i_%@", *&a3, v5, v3, v4];
}

+ (void)writeAlbumNameBreadCrumb:(id)a3 forAlbumGUID:(id)a4 isUpload:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = a4;
  if ([a1 isBreadcrumbDebugEnabled])
  {
    if (v5)
    {
      [a1 directoryPathForUploadActivityForAlbumGUID:v8 create:1];
    }

    else
    {
      [a1 directoryPathForDownloadActivityForAlbumGUID:v8 create:1];
    }
    v9 = ;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"albumName %@", v13];
    v11 = [v9 stringByAppendingPathComponent:v10];
    v12 = [v13 dataUsingEncoding:4];
    [v12 writeToFile:v11 options:1073741825 error:0];
  }
}

+ (id)directoryPathForDownloadActivityForAlbumGUID:(id)a3 create:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    pl_dispatch_once();
    v6 = [directoryPathForDownloadActivityForAlbumGUID_create__activityPath stringByAppendingPathComponent:v5];

    if (v4)
    {
      v7 = [MEMORY[0x1E696AC08] defaultManager];
      [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __76__PLPhotoSharingHelper_directoryPathForDownloadActivityForAlbumGUID_create___block_invoke()
{
  v0 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v4 = [v0 photoDirectoryWithType:23 additionalPathComponents:@"DEBUG"];

  v1 = [v4 stringByAppendingPathComponent:@"Downloads"];
  v2 = [v1 copy];
  v3 = directoryPathForDownloadActivityForAlbumGUID_create__activityPath;
  directoryPathForDownloadActivityForAlbumGUID_create__activityPath = v2;
}

+ (id)directoryPathForUploadActivityForAlbumGUID:(id)a3 create:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    pl_dispatch_once();
    v6 = [directoryPathForUploadActivityForAlbumGUID_create__activityPath stringByAppendingPathComponent:v5];

    if (v4)
    {
      v7 = [MEMORY[0x1E696AC08] defaultManager];
      [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __74__PLPhotoSharingHelper_directoryPathForUploadActivityForAlbumGUID_create___block_invoke()
{
  v0 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v4 = [v0 photoDirectoryWithType:23 additionalPathComponents:@"DEBUG"];

  v1 = [v4 stringByAppendingPathComponent:@"Uploads"];
  v2 = [v1 copy];
  v3 = directoryPathForUploadActivityForAlbumGUID_create__activityPath;
  directoryPathForUploadActivityForAlbumGUID_create__activityPath = v2;
}

+ (BOOL)isBreadcrumbDebugEnabled
{
  AppIntegerValue = __isSharingBreadcrumbDebuggingEnabled;
  if (__isSharingBreadcrumbDebuggingEnabled == -1)
  {
    keyExistsAndHasValidFormat = 0;
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"PSDebugLevel", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
    __isSharingBreadcrumbDebuggingEnabled = AppIntegerValue;
  }

  return AppIntegerValue != 0;
}

+ (unint64_t)purgeSpace:(unint64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
  v5 = [v4 assetsdClient];
  v6 = [v5 cloudInternalClient];

  v10 = 0;
  v7 = [v6 cloudSharingSpaceManagementRequestWithType:1 optionalBytesToPurge:a3 error:&v10];
  if (v10)
  {
    v8 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v12 = a3;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Error purging space with spaceNeeded %lld", buf, 0xCu);
    }
  }

  return v7;
}

+ (unint64_t)purgeableSpace
{
  v2 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
  v3 = [v2 assetsdClient];
  v4 = [v3 cloudInternalClient];

  v9 = 0;
  v5 = [v4 cloudSharingSpaceManagementRequestWithType:0 optionalBytesToPurge:0 error:&v9];
  if (v9)
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Error getting purgeable space", v8, 2u);
    }
  }

  return v5;
}

+ (void)_markStreamVideosAsPurgeable
{
  v37[3] = *MEMORY[0x1E69E9840];
  v2 = [a1 streamdVideoCache];
  v3 = [v2 URL];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = *MEMORY[0x1E695DC30];
    v6 = *MEMORY[0x1E695DA98];
    v37[0] = *MEMORY[0x1E695DC30];
    v37[1] = v6;
    v29 = v6;
    v7 = *MEMORY[0x1E695DBB8];
    v37[2] = *MEMORY[0x1E695DBB8];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
    v27 = v4;
    v28 = v3;
    v9 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:v8 options:5 errorHandler:&__block_literal_global_753];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v31 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v31)
    {
      v10 = *v33;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v13 = [v12 resourceValuesForKeys:v8 error:0];
          v14 = [v13 objectForKeyedSubscript:v5];
          v15 = [v14 hasPrefix:@"CachedMedia-"];

          if (v15)
          {
            v16 = [v13 objectForKeyedSubscript:v7];
            v17 = [v16 BOOLValue];

            if (v17)
            {
              v30 = [v13 objectForKeyedSubscript:v29];
              v18 = [MEMORY[0x1E695DF00] date];
              [v18 timeIntervalSinceDate:v30];
              v19 = v10;
              v20 = v9;
              v21 = v8;
              v22 = v5;
              v23 = v7;
              v25 = v24 < 604800.0;

              v26 = 2 * v25;
              v7 = v23;
              v5 = v22;
              v8 = v21;
              v9 = v20;
              v10 = v19;
              [PLCacheDeleteSupport markPurgeableForFileAtURL:v12 withUrgency:v26 outInode:0];
            }
          }
        }

        v31 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v31);
    }

    v3 = v28;
  }
}

uint64_t __52__PLPhotoSharingHelper__markStreamVideosAsPurgeable__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Failed to enumerate %@: %@", &v8, 0x16u);
    }
  }

  return 1;
}

+ (BOOL)processExportedFileURL:(id)a3 assetUUID:(id)a4 customExportsInfo:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [PLPhotoSharingHelper _customSharedAlbumExportsOutputDirectoryForAssetWithUUID:v8];
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v21 = 0;
    v12 = [v11 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v21];
    v13 = v21;
    if (v12)
    {
      v14 = [v7 lastPathComponent];
      v15 = [v10 URLByAppendingPathComponent:v14];

      v20 = 0;
      v16 = [v11 copyItemAtURL:v7 toURL:v15 error:&v20];
      v17 = v20;
      if (v16)
      {
        v18 = [v15 absoluteString];
        [v9 setObject:v18 forKeyedSubscript:v8];
      }

      else
      {
        v18 = PLSharingGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v23 = v7;
          v24 = 2112;
          v25 = v15;
          v26 = 2112;
          v27 = v17;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Could not copy file from exported source: %@ to temporary location: %@, error: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v15 = PLSharingGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v23 = v7;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Could not create a directory for copying the exported source: %@. Error: %@", buf, 0x16u);
      }

      LOBYTE(v16) = 0;
    }
  }

  else
  {
    v10 = PLSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = objc_opt_class();
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Skipping exported item of unexpected class: %{public}@", buf, 0xCu);
    }

    LOBYTE(v16) = 0;
  }

  return v16;
}

+ (id)_customSharedAlbumExportsOutputDirectoryForAssetWithUUID:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _customSharedAlbumsExportsOutputDirectoryParent];
  v5 = [v4 URLByAppendingPathComponent:v3];

  return v5;
}

+ (id)_customSharedAlbumsExportsOutputDirectoryParent
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"TemporaryItems"];

  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.photos.cloud-shared-custom-exports-%d-%@", getpid(), v5];
  v7 = [v3 stringByAppendingPathComponent:v6];

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:1];

  return v8;
}

+ (void)pruneCloudSharingContentIfNecessaryInLibrary:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PLPhotoSharingHelper.m" lineNumber:3091 description:@"Method can only be run in assetsd"];
  }

  v6 = [v5 pathManager];
  v7 = [v6 photoDirectoryWithType:23];

  if ([MEMORY[0x1E69BF208] freeSpaceBelowDesiredSpaceThresholdForPath:v7])
  {
    v8 = +[PLPhotoSharingHelper sharingPersonID];
    if (v8)
    {
      v9 = [v5 pathManager];
      v10 = [v9 libraryURL];
      v11 = [PLPhotoSharingHelper sharedStreamsEnabledForPhotoLibraryURL:v10];

      if (v11)
      {
        v12 = PLBackendGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v8;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "About to call connection refreshResetSync:NO personID:%@ in nightly maintenance task", buf, 0xCu);
        }

        v13 = [MEMORY[0x1E69B14F8] sharedConnection];
        [v13 refreshResetSync:0 personID:v8];

        v14 = PLBackendGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Purging non-recently viewed cloud sharing assets", buf, 2u);
        }

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __69__PLPhotoSharingHelper_pruneCloudSharingContentIfNecessaryInLibrary___block_invoke;
        v17[3] = &unk_1E75781E8;
        v18 = v5;
        [v18 performTransactionAndWait:v17];
        v15 = PLBackendGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Completed purging non-recently viewed cloud sharing assets", buf, 2u);
        }
      }
    }
  }

  [a1 _markStreamVideosAsPurgeable];
}

+ (void)applicationIsInForeground:(BOOL)a3 photoLibraryURL:(id)a4
{
  v5 = a4;
  v6 = [a1 sharingPersonID];
  if (v6 && [objc_opt_class() sharedStreamsEnabledForPhotoLibraryURL:v5])
  {
    v7 = [a1 _transactionWithName:"+[PLPhotoSharingHelper applicationIsInForeground:photoLibraryURL:]"];
    v8 = dispatch_get_global_queue(0, 0);
    v10 = v6;
    v9 = v7;
    pl_dispatch_async();
  }
}

uint64_t __66__PLPhotoSharingHelper_applicationIsInForeground_photoLibraryURL___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "about to call connection setIsUIForeground:%@ personID:%@", &v7, 0x16u);
  }

  v5 = [MEMORY[0x1E69B14F8] sharedConnection];
  [v5 setIsUIForeground:*(a1 + 48) forPersonID:*(a1 + 32)];

  return [*(a1 + 40) stillAlive];
}

+ (void)downloadAsset:(id)a3 cloudPlaceholderKind:(signed __int16)a4 shouldPrioritize:(BOOL)a5 shouldExtendTimer:(BOOL)a6
{
  v6 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"PLPhotoSharingHelper.m" lineNumber:2977 description:@"downloadAsset: can only run from within assets"];
  }

  v10 = [a1 sharingPersonID];
  v11 = [v9 cloudAssetGUID];
  v12 = [v9 collectionShare];
  v13 = [v12 scopeIdentifier];

  if (!v10)
  {
    v15 = PLPhotoSharingGetLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v31 = v9;
    v16 = "No Apple Account, skip downloading cloud shared asset %@";
LABEL_15:
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
    goto LABEL_16;
  }

  if (([v9 isCloudSharedAsset] & 1) == 0)
  {
    v15 = PLPhotoSharingGetLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v31 = v9;
    v16 = "Asset %@ is not a cloud shared asset, skip downloading from cloud";
    goto LABEL_15;
  }

  if (!v11)
  {
    v15 = PLPhotoSharingGetLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v31 = v9;
    v16 = "Unable to find a cloudAssetGUID for %@, skip downloading from cloud";
    goto LABEL_15;
  }

  if (v13)
  {
    if ([a1 _derivativeExistsForAsset:v9 cloudPlaceholderKind:v6])
    {
      v14 = [v9 uuid];
      v15 = [a1 downloadNotificationForAssetwithUUID:v14 cloudPlaceholderKind:v6];

      notify_post([v15 UTF8String]);
LABEL_16:

      goto LABEL_17;
    }

    v19 = [a1 _recentlyRequestedDownloadAsset:v9 cloudPlaceholderKind:v6];
    v20 = PLPhotoSharingGetLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (!v19)
    {
      if (v21)
      {
        v22 = objc_opt_class();
        v26 = v22;
        *buf = 138413058;
        v31 = v22;
        v32 = 2112;
        v33 = v11;
        v34 = 1024;
        v35 = [v9 cloudSharedPlaceholderKind];
        v36 = 1024;
        v37 = v6;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "%@ downloadAsset:%@ current placeHolderKind %i request placeHolderkind %d", buf, 0x22u);
      }

      v23 = [a1 _transactionWithName:"+[PLPhotoSharingHelper downloadAsset:cloudPlaceholderKind:shouldPrioritize:shouldExtendTimer:]"];
      v24 = [a1 _downloadRequestQueue];
      v27 = v11;
      v28 = v10;
      v29 = v13;
      v15 = v23;
      pl_dispatch_async();

      goto LABEL_16;
    }

    if (v21)
    {
      *buf = 138412546;
      v31 = v9;
      v32 = 1024;
      LODWORD(v33) = v6;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "asset %@ with cloudPlaceholderkind %d has been recently requsted to be downloaded, skip duplicate request.", buf, 0x12u);
    }
  }

  else
  {
    v17 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = objc_opt_class();
      v32 = 2112;
      v33 = v9;
      v18 = v31;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "%@ unable to find albumGUID for cloudSharedAsset %@", buf, 0x16u);
    }
  }

LABEL_17:
}

void __94__PLPhotoSharingHelper_downloadAsset_cloudPlaceholderKind_shouldPrioritize_shouldExtendTimer___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69B14F8] sharedConnection];
  if (*(a1 + 74) == 1)
  {
    v3 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v21 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "prioritize downloadAsset:%@", buf, 0xCu);
    }

    [v2 setFocusAssetCollectionGUID:*(a1 + 32) forPersonID:*(a1 + 40)];
  }

  if (*(a1 + 75) == 1)
  {
    [v2 setIsUIForeground:1 forPersonID:*(a1 + 40)];
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__PLPhotoSharingHelper_downloadAsset_cloudPlaceholderKind_shouldPrioritize_shouldExtendTimer___block_invoke_740;
  v14[3] = &unk_1E7571098;
  v19 = *(a1 + 72);
  v15 = v2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v18 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v16 = v12;
  v17 = v11;
  v13 = v2;
  [v13 assetCollectionWithGUID:v5 personID:v6 completionBlock:v14];
}

void __94__PLPhotoSharingHelper_downloadAsset_cloudPlaceholderKind_shouldPrioritize_shouldExtendTimer___block_invoke_740(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [v3 assets];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v35 count:16];
    if (!v6)
    {
      goto LABEL_25;
    }

    v7 = v6;
    v8 = *v25;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      v11 = [v10 mediaAssetType];
      if (v11 <= 4)
      {
        if (v11 == 2)
        {
          if (*(a1 + 80) == 3)
          {
            goto LABEL_22;
          }
        }

        else if (v11 == 3 && *(a1 + 80) == 4)
        {
LABEL_22:
          v12 = v10;
          if (v12)
          {
            v13 = v12;

            v22 = *(a1 + 32);
            v34 = v13;
            v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
            [v22 retrieveAssets:v23 inAlbumWithGUID:*(a1 + 40) personID:*(a1 + 48)];

            goto LABEL_31;
          }
        }
      }

      else if (v11 == 5)
      {
        if (*(a1 + 80) == 7)
        {
          goto LABEL_22;
        }
      }

      else if (v11 == 6)
      {
        if (*(a1 + 80) == 10)
        {
          goto LABEL_22;
        }
      }

      else if (v11 == 7 && (*(a1 + 80) & 0xFFFE) == 8)
      {
        goto LABEL_22;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v24 objects:v35 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

LABEL_25:

        v13 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = objc_opt_class();
          v15 = *(a1 + 80);
          *buf = 138412802;
          v29 = v14;
          v30 = 2112;
          v31 = v4;
          v32 = 1024;
          v33 = v15;
          v16 = v14;
          v17 = "%@ unable to find an asset in assetCollection %@ matching cloudPlaceholderKind %d";
          v18 = v13;
          v19 = 28;
          goto LABEL_29;
        }

        goto LABEL_31;
      }
    }
  }

  v13 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = *(a1 + 56);
    *buf = 138412546;
    v29 = v20;
    v30 = 2112;
    v31 = v21;
    v16 = v20;
    v17 = "%@ unable to find assetCollection with GUID %@, skipping downloading";
    v18 = v13;
    v19 = 22;
LABEL_29:
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
  }

LABEL_31:

  [*(a1 + 64) stillAlive];
}

+ (BOOL)_derivativeExistsForAsset:(id)a3 cloudPlaceholderKind:(signed __int16)a4
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 cloudSharedAssetPathForPlaceholderKind:v4];
  v7 = v6;
  if (v4 == 3)
  {
    v8 = [v5 hasMasterThumb];
  }

  else if (v6)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v9 fileExistsAtPath:v7];
  }

  else
  {
    v10 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109378;
      v12[1] = v4;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unsupported cloudPlaceholderKind %d to download for cloudSharedAsset %@", v12, 0x12u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_downloadRequestQueue
{
  pl_dispatch_once();
  v2 = _downloadRequestQueue_queue;

  return v2;
}

void __45__PLPhotoSharingHelper__downloadRequestQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.MobileSlideShow.PLPhotoSharingHelperDownloadRequestQueue", 0);
  v1 = _downloadRequestQueue_queue;
  _downloadRequestQueue_queue = v0;
}

+ (BOOL)_recentlyRequestedDownloadAsset:(id)a3 cloudPlaceholderKind:(signed __int16)a4
{
  v4 = a4;
  v5 = a3;
  pl_dispatch_once();
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 cloudAssetGUID];

  v8 = [v6 stringWithFormat:@"%@.%d", v7, v4];

  v9 = [_recentlyRequestedDownloadAsset_cloudPlaceholderKind__recentlyRequestedIdentifiers containsObject:v8];
  if ((v9 & 1) == 0)
  {
    [_recentlyRequestedDownloadAsset_cloudPlaceholderKind__recentlyRequestedIdentifiers addObject:v8];
  }

  return v9;
}

void __77__PLPhotoSharingHelper__recentlyRequestedDownloadAsset_cloudPlaceholderKind___block_invoke()
{
  v0 = [[_PLExpirableSet alloc] initWithSecondsToExpire:6.0];
  v1 = _recentlyRequestedDownloadAsset_cloudPlaceholderKind__recentlyRequestedIdentifiers;
  _recentlyRequestedDownloadAsset_cloudPlaceholderKind__recentlyRequestedIdentifiers = v0;
}

+ (void)prioritizeDownloadsForAlbumGUID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 sharingPersonID];
  if (v5)
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = objc_opt_class();
      v16 = 2112;
      v17 = v4;
      v7 = v15;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%@ prioritizeDownloadsForAlbumGUID:%@", buf, 0x16u);
    }

    v8 = [a1 _transactionWithName:"+[PLPhotoSharingHelper prioritizeDownloadsForAlbumGUID:]"];
    v9 = dispatch_get_global_queue(0, 0);
    v11 = v4;
    v12 = v5;
    v13 = v8;
    v10 = v8;
    pl_dispatch_async();
  }
}

void __56__PLPhotoSharingHelper_prioritizeDownloadsForAlbumGUID___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69B14F8] sharedConnection];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "about to call connection setFocusAlbum:%@ personID:%@", &v7, 0x16u);
  }

  v6 = [MEMORY[0x1E6997F88] album];
  [v6 setGUID:*(a1 + 32)];
  [v2 setFocusAlbum:v6 forPersonID:*(a1 + 40)];
  [*(a1 + 48) stillAlive];
}

+ (void)checkServerModelForAlbum:(id)a3 photoLibrary:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharingPersonID];
  if (v8)
  {
    v9 = [v6 cloudGUID];
    v10 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:@"/tmp/_pollStreams.plist"];
    if (!v10)
    {
      v10 = [MEMORY[0x1E695DF90] dictionary];
    }

    v11 = [v10 objectForKey:v9];
    if (!v11 || ([MEMORY[0x1E695DF00] date], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "compare:", v12), v12, v13 == -1))
    {
      v15 = MEMORY[0x1E695DF00];
      [a1 intervalBetweenAlbumPolls];
      v14 = [v15 dateWithTimeIntervalSinceNow:?];

      if (v14)
      {
        [v10 setObject:v14 forKey:v9];
        v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:100 options:0 error:0];
        v17 = [v16 writeToFile:@"/tmp/_pollStreams.plist" options:1073741825 error:0];
        v18 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v28 = v10;
          v29 = 2112;
          v30 = @"/tmp/_pollStreams.plist";
          v31 = 1024;
          v32 = v17;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, " saved pollStreamsDate %@ to path %@ success %d", buf, 0x1Cu);
        }
      }

      v19 = [a1 _transactionWithName:"+[PLPhotoSharingHelper checkServerModelForAlbum:photoLibrary:]"];
      v20 = dispatch_get_global_queue(0, 0);
      v22 = v9;
      v23 = v8;
      v24 = v7;
      v25 = v6;
      v26 = v19;
      v21 = v19;
      pl_dispatch_async();
    }

    else
    {
      v14 = v11;
    }
  }
}

void __62__PLPhotoSharingHelper_checkServerModelForAlbum_photoLibrary___block_invoke(id *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69B14F8] sharedConnection];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v5 = a1[5];
    *buf = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "about to call connection assetCollectionGUIDsInAlbumWithGUID:%@ personID:%@", buf, 0x16u);
  }

  v6 = a1[4];
  v7 = a1[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PLPhotoSharingHelper_checkServerModelForAlbum_photoLibrary___block_invoke_717;
  v9[3] = &unk_1E7571020;
  v10 = a1[6];
  v11 = a1[7];
  v12 = v2;
  v13 = a1[5];
  v14 = a1[4];
  v15 = a1[8];
  v8 = v2;
  [v8 assetCollectionGUIDsInAlbumWithGUID:v6 personID:v7 completionBlock:v9];
}

void __62__PLPhotoSharingHelper_checkServerModelForAlbum_photoLibrary___block_invoke_717(id *a1, void *a2)
{
  v3 = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PLPhotoSharingHelper_checkServerModelForAlbum_photoLibrary___block_invoke_2;
  v12[3] = &unk_1E7571070;
  v13 = v3;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[4];
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v16 = a1[8];
  v17 = a1[9];
  v11 = v3;
  [v4 performBlock:v12];
}

void __62__PLPhotoSharingHelper_checkServerModelForAlbum_photoLibrary___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  if (v2 != [*(a1 + 40) assetsCount])
  {
    v3 = [*(a1 + 40) assets];
    v4 = [v3 valueForKey:@"cloudAssetGUID"];

    v5 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 32)];
    v20 = v4;
    v6 = [v4 set];
    [v5 minusSet:v6];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        v10 = 0;
        do
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v30 + 1) + 8 * v10);
          v12 = [MEMORY[0x1E6997F88] album];
          v13 = [*(a1 + 40) cloudGUID];
          [v12 setGUID:v13];

          v14 = [*(a1 + 48) libraryServicesManager];
          v16 = *(a1 + 56);
          v15 = *(a1 + 64);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __62__PLPhotoSharingHelper_checkServerModelForAlbum_photoLibrary___block_invoke_3;
          v22[3] = &unk_1E7571048;
          v23 = v12;
          v17 = v15;
          v24 = v17;
          v25 = v14;
          v26 = *(a1 + 56);
          v27 = v11;
          v28 = *(a1 + 72);
          v29 = *(a1 + 80);
          v18 = v14;
          v19 = v12;
          [v16 assetCollectionWithGUID:v11 personID:v17 completionBlock:v22];

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v8);
    }
  }
}

void __62__PLPhotoSharingHelper_checkServerModelForAlbum_photoLibrary___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695DEC8] arrayWithObject:a2];
  [PLCloudSharedAssetSaveJob assetsdProcessMetadataForAssetCollections:v3 inAlbum:*(a1 + 32) personID:*(a1 + 40) info:0 libraryServicesManager:*(a1 + 48)];

  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PLPhotoSharingHelper_checkServerModelForAlbum_photoLibrary___block_invoke_4;
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

void __62__PLPhotoSharingHelper_checkServerModelForAlbum_photoLibrary___block_invoke_4(uint64_t a1, void *a2)
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
        v12[2] = __62__PLPhotoSharingHelper_checkServerModelForAlbum_photoLibrary___block_invoke_5;
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

void __62__PLPhotoSharingHelper_checkServerModelForAlbum_photoLibrary___block_invoke_5(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695DEC8] arrayWithObject:a2];
  [PLCloudSharedCommentsJob assetsdLocallyProcessAddedComments:v3 assetGUID:a1[4] albumGUID:a1[5] info:0 libraryServicesManager:a1[6]];
}

+ (void)checkServerModelRelationshipsForPhotoLibrary:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v4 = [a1 sharingPersonID];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:@"/tmp/_pollRelationships.plist"];
    if (!v5)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
    }

    v6 = [v5 objectForKey:@"pollRelationshipsNextDate"];
    if (!v6 || ([MEMORY[0x1E695DF00] date], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "compare:", v7), v7, v8 == -1))
    {
      v9 = MEMORY[0x1E695DF00];
      [a1 intervalBetweenRelationshipPolls];
      v10 = [v9 dateWithTimeIntervalSinceNow:?];

      if (v10)
      {
        [v5 setObject:v10 forKey:@"pollRelationshipsNextDate"];
        v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:100 options:0 error:0];
        v12 = [v11 writeToFile:@"/tmp/_pollRelationships.plist" options:1073741825 error:0];
        v13 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v39 = v5;
          v40 = 2112;
          v41 = @"/tmp/_pollRelationships.plist";
          v42 = 1024;
          v43 = v12;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, " saved pollRelationshipsDate %@ to path %@ success %d", buf, 0x1Cu);
        }
      }

      v14 = [MEMORY[0x1E69B14F8] sharedConnection];
      [PLCloudSharedAlbum allCloudSharedAlbumsInLibrary:v28];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v36 = 0u;
      v15 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v34;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v34 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v33 + 1) + 8 * i);
            v20 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v19 cloudGUID];
              *buf = 138412546;
              v39 = v21;
              v40 = 2112;
              v41 = v4;
              _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "about to call connection accessControlGUIDsForAlbumWithGUID:%@ personID:%@", buf, 0x16u);
            }

            v22 = [v19 cloudGUID];
            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __69__PLPhotoSharingHelper_checkServerModelRelationshipsForPhotoLibrary___block_invoke;
            v29[3] = &unk_1E7570FD0;
            v23 = v14;
            v30 = v23;
            v24 = v4;
            v31 = v24;
            v32 = v28;
            [v23 accessControlGUIDsForAlbumWithGUID:v22 personID:v24 completionBlock:v29];
          }

          v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v16);
      }

      v6 = v25;
      v5 = v26;
    }
  }
}

void __69__PLPhotoSharingHelper_checkServerModelRelationshipsForPhotoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __69__PLPhotoSharingHelper_checkServerModelRelationshipsForPhotoLibrary___block_invoke_2;
        v11[3] = &unk_1E7570FA8;
        v12 = *(a1 + 48);
        [v8 accessControlWithGUID:v7 personID:v9 completionBlock:v11];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void __69__PLPhotoSharingHelper_checkServerModelRelationshipsForPhotoLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 personInfoManager];
  v6 = [v4 emails];
  v7 = [v4 phones];
  v8 = [v4 GUID];
  [v5 setEmails:v6 phones:v7 forInvitationRecordGUID:v8];

  v14 = [*(a1 + 32) personInfoManager];
  v9 = [v4 firstName];
  v10 = [v4 lastName];
  v11 = [v4 fullName];
  v12 = [v4 email];
  v13 = [v4 personID];

  [v14 setFirstName:v9 lastName:v10 fullName:v11 email:v12 forPersonID:v13];
}

+ (void)markCommentsForAssetCollectionWithGUID:(id)a3 asViewedWithLastViewedDate:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v9 = v14;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "%@ markCommentsForAssetCollectionWithGUID:%@ asViewedWithLastViewedDate:%@", &v13, 0x20u);
  }

  if (v6)
  {
    v10 = [a1 sharingPersonID];
    if (v10)
    {
      v11 = [MEMORY[0x1E69B14F8] sharedConnection];
      v12 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412802;
        v14 = v6;
        v15 = 2112;
        v16 = v7;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "about to call connection markCommentsForAssetCollectionWithGUID:%@ asViewedWithLastViewedDate:%@ personID:%@", &v13, 0x20u);
      }

      [v11 markCommentsForAssetCollectionWithGUID:v6 asViewedWithLastViewedDate:v7 personID:v10];
    }
  }
}

+ (void)markAlbumGUIDAsViewed:(id)a3 clearUnseenAssetsCount:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = @"NO";
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    if (v4)
    {
      v9 = @"YES";
    }

    v18 = v6;
    v19 = 2112;
    v20 = v9;
    v10 = v8;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "%@ markAlbumGUIDAsViewed:%@ clearUnseenAssetsCount:%@", &v15, 0x20u);
  }

  if (v6)
  {
    v11 = [a1 sharingPersonID];
    if (v11)
    {
      v12 = [MEMORY[0x1E69B14F8] sharedConnection];
      v13 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = @"NO";
        v15 = 138412802;
        v16 = v6;
        v17 = 2112;
        if (v4)
        {
          v14 = @"YES";
        }

        v18 = v11;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "about to call connection markAlbumGUIDAsViewed:%@ personID:%@ moveLastViewedAssetCollectionMarker:%@ info:nil", &v15, 0x20u);
      }

      [v12 markAlbumGUIDAsViewed:v6 personID:v11 moveLastViewedAssetCollectionMarker:v4 info:0];
    }
  }
}

+ (CGSize)derivedAssetSizeForMasterSizeWidth:(double)a3 height:(double)a4 derivativeType:(int)a5 withSpecificationInfo:(id)a6
{
  v6 = *&a5;
  v31 = *MEMORY[0x1E69E9840];
  v9 = [a6 objectForKey:*MEMORY[0x1E6998048]];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v12 = ceil(v11 * a3);
    [v10 doubleValue];
    v14 = ceil(v13 * a4);
    v15 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [v10 floatValue];
      v21 = 134219008;
      v22 = a3;
      v23 = 2048;
      v24 = a4;
      v25 = 2048;
      v26 = v16;
      v27 = 2048;
      v28 = v12;
      v29 = 2048;
      v30 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "derivedAssetSizeForMasterSize %f,%f scaling with factor %f to return %f,%f", &v21, 0x34u);
    }
  }

  else
  {
    v19 = a3 / a4;
    [PLPhotoSharingHelper derivedAssetSmallDimensionLimitForType:v6];
    if (a3 >= a4)
    {
      v14 = a4;
      v12 = a3;
      if (v20 < a4)
      {
        v12 = rint(v20 * v19);
        v14 = v20;
      }
    }

    else
    {
      v14 = a4;
      v12 = a3;
      if (v20 < a3)
      {
        v14 = rint(v20 / v19);
        v12 = v20;
      }
    }
  }

  v17 = v12;
  v18 = v14;
  result.height = v18;
  result.width = v17;
  return result;
}

+ (id)temporaryDerivativePathForCollectionGUID:(id)a3 uti:(id)a4
{
  v6 = a3;
  v7 = @"derivative.JPG";
  if (a4)
  {
    v8 = [MEMORY[0x1E6982C40] typeWithIdentifier:a4];
    if ([v8 isEqual:*MEMORY[0x1E6982DE8]])
    {
      v7 = @"derivative.GIF";
    }
  }

  v9 = [a1 temporaryUploadDerivativesPathForCollectionGUID:v6 pathExtension:v7];

  return v9;
}

+ (id)temporaryUploadDerivativesPathForCollectionGUID:(id)a3 pathExtension:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PLPhotoSharingHelper_temporaryUploadDerivativesPathForCollectionGUID_pathExtension___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (temporaryUploadDerivativesPathForCollectionGUID_pathExtension__onceToken != -1)
  {
    dispatch_once(&temporaryUploadDerivativesPathForCollectionGUID_pathExtension__onceToken, block);
  }

  v8 = 0;
  if (v6 && temporaryUploadDerivativesPathForCollectionGUID_pathExtension__temporaryUploadDerivativesPath)
  {
    v9 = [temporaryUploadDerivativesPathForCollectionGUID_pathExtension__temporaryUploadDerivativesPath stringByAppendingPathComponent:v6];
    v8 = [v9 stringByAppendingPathExtension:v7];
  }

  return v8;
}

void __86__PLPhotoSharingHelper_temporaryUploadDerivativesPathForCollectionGUID_pathExtension___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v3 = [v1 temporaryUploadDerivativesBasePathWithPathManager:v2];
  v4 = temporaryUploadDerivativesPathForCollectionGUID_pathExtension__temporaryUploadDerivativesPath;
  temporaryUploadDerivativesPathForCollectionGUID_pathExtension__temporaryUploadDerivativesPath = v3;

  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:temporaryUploadDerivativesPathForCollectionGUID_pathExtension__temporaryUploadDerivativesPath isDirectory:1];
  v15 = 0;
  v6 = [v5 getResourceValue:&v15 forKey:*MEMORY[0x1E695DB20] error:0];
  v7 = v15;
  if ((v6 & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = 0;
    v9 = [v8 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v14];
    v10 = v14;

    if ((v9 & 1) == 0)
    {
      v11 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v5 path];
        *buf = 138412546;
        v17 = v12;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "ERROR: Unable to create directory %@: %@", buf, 0x16u);
      }

      v13 = temporaryUploadDerivativesPathForCollectionGUID_pathExtension__temporaryUploadDerivativesPath;
      temporaryUploadDerivativesPathForCollectionGUID_pathExtension__temporaryUploadDerivativesPath = 0;
    }
  }
}

+ (double)derivedAssetSmallDimensionLimitForType:(int)a3
{
  result = 1536.0;
  if (a3 == 1)
  {
    return 256.0;
  }

  return result;
}

+ (id)derivativesForMasterAsset:(id)a3 withSpecifications:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  if (![v6 count])
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v20 = 0;
    goto LABEL_48;
  }

  v8 = [v5 metadata];
  v9 = [v8 objectForKey:*MEMORY[0x1E6998080]];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v8 objectForKey:*MEMORY[0x1E6998078]];
  [v12 doubleValue];
  v14 = v13;

  v15 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v68 = v11;
    v69 = 2048;
    v70 = v14;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "calling MSImageScalingSpecification assetsToGenerateFromImageWithInputSize:(%f,%f)", buf, 0x16u);
  }

  v16 = [MEMORY[0x1E6997FB0] assetsToGenerateFromImageWithInputSize:v6 toConformToSpecifications:{v11, v14}];
  if (![v16 count])
  {
    v35 = 0;
    v59 = 0;
    v61 = 0;
    v38 = 0;
    v20 = 0;
    goto LABEL_46;
  }

  v55 = v7;
  v17 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v68 = *&v16;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "assetsToGenerateFromImageWithInputSize returned %@", buf, 0xCu);
  }

  v53 = v8;
  v54 = v6;
  v56 = v5;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (!v18)
  {
    v58 = 0;
    v59 = 0;
    v61 = 0;
    v20 = 0;
    goto LABEL_34;
  }

  v19 = v18;
  v58 = 0;
  v59 = 0;
  v61 = 0;
  v20 = 0;
  v21 = *v63;
  v22 = *MEMORY[0x1E6998048];
  v23 = *MEMORY[0x1E6998050];
  v57 = *MEMORY[0x1E6998050];
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v63 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v62 + 1) + 8 * i);
      v26 = [v25 objectForKey:v22];
      if (v26)
      {
        v27 = [v25 objectForKey:v23];
        v28 = v27;
        if (v27)
        {
          if (([v27 intValue]& 2) != 0)
          {
            v32 = v25;

            v33 = v26;
            if (([v28 intValue]& 1) == 0)
            {
              v61 = v33;
              v20 = v32;
              v23 = v57;
              goto LABEL_28;
            }
          }

          else
          {
            if (([v28 intValue]& 1) == 0)
            {
              v29 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v68 = *&v25;
                v30 = v29;
                v31 = "unexpected specification result %@, didn't find a derivative or thumbnail asset type";
                goto LABEL_22;
              }

              goto LABEL_27;
            }

            v32 = v20;
            v33 = v61;
          }

          v34 = v25;

          v29 = v59;
          v58 = v34;
          v59 = v26;
          v61 = v33;
          v20 = v32;
          v23 = v57;
          goto LABEL_27;
        }

        v29 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v68 = *&v25;
          v30 = v29;
          v31 = "ERROR: missing asset type flags in specification result %@";
LABEL_22:
          _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0xCu);
        }

LABEL_27:

        goto LABEL_28;
      }

      v28 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v68 = *&v25;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "ERROR: missing scale factor in specification result %@", buf, 0xCu);
      }

LABEL_28:
    }

    v19 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  }

  while (v19);
LABEL_34:

  if (v20)
  {
    v5 = v56;
    v39 = [v56 GUID];
    v35 = [PLPhotoDerivativeUtilities generateDerivativeForMSAsset:v56 derivativeType:0 withSpecificationInfo:v20 collectionGUID:v39];

    v6 = v54;
    v7 = v55;
    v36 = v59;
    v37 = v61;
    if (v35)
    {
      [v55 addObject:v35];
    }
  }

  else
  {
    v35 = 0;
    v7 = v55;
    v5 = v56;
    v6 = v54;
    v36 = v59;
    v37 = v61;
  }

  if (v58)
  {
    v40 = v5;
    v41 = v58;
    v38 = v41;
    v42 = v40;
    v16 = v41;
    if (v35)
    {
      v42 = v40;
      v16 = v41;
      if (v61)
      {
        v42 = v40;
        v16 = v41;
        if (v59)
        {
          v42 = v35;

          [v59 floatValue];
          v44 = v43;
          [v61 floatValue];
          v46 = v44 / v45;
          v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v38];

          v47 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
          [v16 setObject:v47 forKey:*MEMORY[0x1E6998048]];
        }
      }
    }

    v48 = [v40 GUID];
    v49 = v42;
    v50 = [PLPhotoDerivativeUtilities generateDerivativeForMSAsset:v42 derivativeType:1 withSpecificationInfo:v16 collectionGUID:v48];

    if (v50)
    {
      [v7 addObject:v50];
    }

    v8 = v49;
LABEL_46:

    v36 = v59;
    v37 = v61;
  }

  else
  {
    v38 = 0;
  }

LABEL_48:
  v51 = v7;

  return v7;
}

+ (id)_videoDerivativeForVideoAtURL:(id)a3 outputURL:(id)a4 withPreset:(id)a5 reason:(id)a6 outputFileType:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__71158;
  v38 = __Block_byref_object_dispose__71159;
  v39 = 0;
  v16 = [MEMORY[0x1E695DF90] dictionary];
  [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6994D50]];
  [v16 setObject:v15 forKeyedSubscript:*MEMORY[0x1E6994D58]];
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = MEMORY[0x1E6994D60];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __97__PLPhotoSharingHelper__videoDerivativeForVideoAtURL_outputURL_withPreset_reason_outputFileType___block_invoke;
  v27[3] = &unk_1E7570F80;
  v19 = v11;
  v28 = v19;
  v20 = v12;
  v29 = v20;
  v33 = &v34;
  v21 = v15;
  v30 = v21;
  v22 = v13;
  v31 = v22;
  v23 = v17;
  v32 = v23;
  v24 = [v18 transcodeVideoAtURL:v19 withAdjustments:0 destinationURL:v20 options:v16 reason:v14 isCancellable:0 completionHandler:v27];
  dispatch_group_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
  v25 = v35[5];

  _Block_object_dispose(&v34, 8);

  return v25;
}

void __97__PLPhotoSharingHelper__videoDerivativeForVideoAtURL_outputURL_withPreset_reason_outputFileType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138412802;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      v34 = 2112;
      v35 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "could not generate video derivative for %@ to %@: %@", buf, 0x20u);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [*(a1 + 40) path];
    v29 = 0;
    v10 = [v8 attributesOfItemAtPath:v9 error:&v29];
    v11 = v29;

    if (v10)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v10, "fileSize")}];
      [v5 setObject:v12 forKey:*MEMORY[0x1E6998070]];
    }

    else
    {
      v12 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 40);
        *buf = 138412546;
        v31 = v13;
        v32 = 2112;
        v33 = v11;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "could not get file attributes for %@: %@", buf, 0x16u);
      }
    }

    v14 = [MEMORY[0x1E6997FA8] asset];
    v15 = *(*(a1 + 72) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(*(*(a1 + 72) + 8) + 40);
    v18 = [*(a1 + 40) path];
    [v17 setPath:v18];

    [*(*(*(a1 + 72) + 8) + 40) setType:*(a1 + 48)];
    [PLManagedAsset dimensionsForVideoAtURL:*(a1 + 40)];
    v20 = v19;
    v22 = v21;
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v5 setObject:v23 forKey:*MEMORY[0x1E6998080]];

    v24 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
    [v5 setObject:v24 forKey:*MEMORY[0x1E6998078]];

    [*(*(*(a1 + 72) + 8) + 40) setMetadata:v5];
    v25 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 40);
      v27 = *(a1 + 56);
      v28 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138413314;
      v31 = v26;
      v32 = 2112;
      v33 = v27;
      v34 = 2048;
      v35 = v20;
      v36 = 2048;
      v37 = v22;
      v38 = 2112;
      v39 = v28;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "generated video derivative to %@ with videoPresetName %@ dimensions (%f,%f) for MSAsset %@", buf, 0x34u);
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

+ (id)videoDerivativesForAssetCollection:(id)a3 withSpecifications:(id)a4
{
  v117 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v111 = v6;
    v112 = 2112;
    v113 = v7;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "videoDerivativesForAssetCollection %@ with specifications %@", buf, 0x16u);
  }

  v9 = [v6 GUID];
  if (!v9)
  {
    v18 = 0;
    goto LABEL_70;
  }

  v108 = 0u;
  v109 = 0u;
  v107 = 0u;
  v106 = 0u;
  v10 = [v6 assets];
  v11 = [v10 countByEnumeratingWithState:&v106 objects:v116 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v107;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v107 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v106 + 1) + 8 * i);
        if ([v16 isVideo])
        {
          v17 = [v16 path];

          v13 = v17;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v106 objects:v116 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v19 = [PLPhotoSharingHelper temporaryVideoPathForCollectionGUID:v9];
  v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v19 isDirectory:0];
  v21 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:0];
  v105 = 0;
  v23 = [v21 copyItemAtURL:v22 toURL:v20 error:&v105];
  v93 = v105;

  if ((v23 & 1) == 0)
  {
    v24 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v111 = v13;
      v112 = 2112;
      v113 = v19;
      v114 = 2112;
      v115 = v93;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "could not copy %@ to %@ error %@", buf, 0x20u);
    }
  }

  if (([v21 fileExistsAtPath:v19] & 1) == 0)
  {
    v34 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v111 = v19;
      v112 = 2112;
      v113 = v6;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "could not access masterVideoPath %@ for collection %@", buf, 0x16u);
    }

    v18 = 0;
    goto LABEL_69;
  }

  v88 = v7;
  v92 = [MEMORY[0x1E695DF70] array];
  v25 = [v6 isPhotoIris];
  v26 = v25;
  v27 = @"MP4";
  if (v25)
  {
    v27 = @"MOV";
  }

  v81 = *MEMORY[0x1E69874B8];
  if (v25)
  {
    v28 = *MEMORY[0x1E69874C0];
  }

  else
  {
    v28 = *MEMORY[0x1E69874B8];
  }

  v90 = v27;
  v89 = v28;
  v91 = v21;
  v86 = v26;
  if ((v26 & 1) == 0)
  {
    v29 = [PLPhotoSharingHelper temporaryVideoPosterFramePathForCollectionGUID:v9];
    if ([v21 fileExistsAtPath:v29])
    {
      v104 = 0;
      v30 = [v21 removeItemAtPath:v29 error:&v104];
      v31 = v104;
      v78 = v31;
      if ((v30 & 1) == 0)
      {
        v32 = v31;
        v33 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v111 = v19;
          v112 = 2112;
          v113 = v6;
          v114 = 2112;
          v115 = v32;
          _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "could not remove masterVideoPath %@ for collection %@ error %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v78 = 0;
    }

    [a1 videoPosterFrameDimension];
    v76 = (v35 * v36);
    v37 = [MEMORY[0x1E695DFF8] fileURLWithPath:v29 isDirectory:0];
    v38 = dispatch_group_create();
    dispatch_group_enter(v38);
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Shared albums posterframe extraction for %@", v9];
    v40 = a1;
    v41 = v39;
    v83 = v40;
    v74 = MEMORY[0x1E6994D60];
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __78__PLPhotoSharingHelper_videoDerivativesForAssetCollection_withSpecifications___block_invoke;
    v96[3] = &unk_1E7570F58;
    v97 = v29;
    v98 = v20;
    v99 = v6;
    v100 = v91;
    v101 = v37;
    v102 = v92;
    v103 = v38;
    v42 = v38;
    v43 = v37;
    v75 = v29;
    [v74 generatePosterFrameForVideoAtURL:v98 maximumPixelCount:v76 destinationURL:v43 reason:v41 completionHandler:v96];
    dispatch_group_wait(v42, 0xFFFFFFFFFFFFFFFFLL);

    v21 = v91;
    a1 = v83;

    v26 = v86;
  }

  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  v44 = CFPreferencesCopyAppValue(@"PLDebugVideoTranscodingPresetName", @"com.apple.mobileslideshow");
  if ((v26 & 1) == 0)
  {
    v45 = *MEMORY[0x1E6987340];
    v46 = v45;
    v47 = v20;
    if (v44)
    {
      v84 = v44;

      v48 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v111 = v84;
        _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "will use PLDebugVideoTranscodingPresetName %@", buf, 0xCu);
      }

      v49 = a1;
    }

    else
    {
      v49 = a1;
      v84 = v45;
    }

    v50 = [PLPhotoSharingHelper temporarySmallVideoDerivativePathForCollectionGUID:v9];
    v51 = MEMORY[0x1E695DFF8];
    v77 = v50;
    v52 = [v50 stringByAppendingPathExtension:@"MP4"];
    v53 = [v51 fileURLWithPath:v52 isDirectory:0];

    v54 = [v53 path];
    if ([v91 fileExistsAtPath:v54])
    {
      v95 = 0;
      v55 = [v91 removeItemAtURL:v53 error:&v95];
      v79 = v95;

      if (v55)
      {
LABEL_49:
        v56 = PLPhotoSharingGetLog();
        a1 = v49;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v111 = v53;
          v112 = 2112;
          v113 = v84;
          _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_DEFAULT, "will generate video derivative to %@ with videoPresetName %@", buf, 0x16u);
        }

        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Shared albums small video derivative for asset collection %@", v9];
        v58 = v49;
        v20 = v47;
        v59 = [v58 _videoDerivativeForVideoAtURL:v47 outputURL:v53 withPreset:v84 reason:v57 outputFileType:v81];
        v60 = v59;
        if (v59)
        {
          [v59 setMediaAssetType:6];
          [v92 addObject:v60];
        }

        v21 = v91;
        v26 = v86;
        goto LABEL_54;
      }

      v54 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v111 = v53;
        v112 = 2112;
        v113 = v6;
        v114 = 2112;
        v115 = v79;
        _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_ERROR, "could not remove smallDerivativeURL %@ for collection %@ error %@", buf, 0x20u);
      }
    }

    else
    {
      v79 = 0;
    }

    goto LABEL_49;
  }

LABEL_54:
  if (!v44)
  {
    v82 = v20;
    v85 = a1;
    v61 = MEMORY[0x1E69872F8];
    if (!v26)
    {
      v61 = MEMORY[0x1E6987348];
    }

    v87 = *v61;
    v62 = [PLPhotoSharingHelper temporaryLargeVideoDerivativePathForCollectionGUID:v9];
    v63 = MEMORY[0x1E695DFF8];
    v80 = v62;
    v64 = [v62 stringByAppendingPathExtension:v90];
    v65 = [v63 fileURLWithPath:v64 isDirectory:0];

    v66 = [v65 path];
    if ([v21 fileExistsAtPath:v66])
    {
      v94 = 0;
      v67 = [v21 removeItemAtURL:v65 error:&v94];
      v68 = v94;

      if (v67)
      {
LABEL_63:
        v69 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v111 = v65;
          v112 = 2112;
          v113 = v87;
          _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_DEFAULT, "will generate video derivative to %@ with videoPresetName %@", buf, 0x16u);
        }

        v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Shared albums large video derivative for asset collection %@", v9];
        v20 = v82;
        v71 = [v85 _videoDerivativeForVideoAtURL:v82 outputURL:v65 withPreset:v87 reason:v70 outputFileType:v89];
        v72 = v71;
        if (v71)
        {
          [v71 setMediaAssetType:7];
          [v92 addObject:v72];
        }

        v21 = v91;
        goto LABEL_68;
      }

      v66 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v111 = v65;
        v112 = 2112;
        v113 = v6;
        v114 = 2112;
        v115 = v68;
        _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_ERROR, "could not remove largeDerivativeURL %@ for collection %@ error %@", buf, 0x20u);
      }
    }

    else
    {
      v68 = 0;
    }

    goto LABEL_63;
  }

LABEL_68:
  v18 = v92;

  v7 = v88;
  v34 = v90;
LABEL_69:

LABEL_70:

  return v18;
}

void __78__PLPhotoSharingHelper_videoDerivativesForAssetCollection_withSpecifications___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 138413058;
      v26 = v6;
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "could not generate video posterframe at %@ for video URL %@ collection %@ error %@", buf, 0x2Au);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v24 = 0;
    v11 = [v9 attributesOfItemAtPath:v10 error:&v24];
    v12 = v24;
    if (v11)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "fileSize")}];
      [v5 setObject:v13 forKey:*MEMORY[0x1E6998070]];
    }

    else
    {
      v13 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        *buf = 138412546;
        v26 = v14;
        v27 = 2112;
        v28 = v12;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "could not get file attributes for %@: %@", buf, 0x16u);
      }
    }

    v15 = [MEMORY[0x1E6997FA8] asset];
    [v15 setPath:*(a1 + 32)];
    [v15 setType:@"public.jpeg"];
    [v15 setMediaAssetType:5];
    [MEMORY[0x1E6994D68] sizeOfImageAtURL:*(a1 + 64) orientationOut:0];
    v17 = v16;
    v19 = v18;
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v5 setObject:v20 forKey:*MEMORY[0x1E6998080]];

    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
    [v5 setObject:v21 forKey:*MEMORY[0x1E6998078]];

    [v15 setMetadata:v5];
    [*(a1 + 72) addObject:v15];
    v22 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      *buf = 138413058;
      v26 = v23;
      v27 = 2048;
      v28 = v17;
      v29 = 2048;
      v30 = v19;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "generated video poster frame to %@ dimensions (%f,%f) with MSAsset %@", buf, 0x2Au);
    }
  }

  dispatch_group_leave(*(a1 + 80));
}

+ (void)deleteCommentWithGUIDFromServer:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v13 = 138412802;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v13, 0x20u);
  }

  if (v5)
  {
    v10 = [a1 sharingPersonID];
    v11 = [MEMORY[0x1E69B14F8] sharedConnection];
    v12 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "about to call connection deleteCommentWithGUID:%@ personID:%@", &v13, 0x16u);
    }

    [v11 deleteCommentWithGUID:v5 personID:v10];
  }
}

+ (void)publishCloudSharedCommentToServer:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v25 = 138412802;
    v26 = v7;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v25, 0x20u);
  }

  if (v5)
  {
    v10 = [v5 asset];
    v11 = [v10 cloudAssetGUID];

    if (v11)
    {
      v12 = [MEMORY[0x1E6997F98] comment];
      v13 = [v5 cloudGUID];
      [v12 setGUID:v13];

      v14 = [v5 commentDate];
      [v12 setTimestamp:v14];

      v15 = [v5 isCaption];
      -[NSObject setIsCaption:](v12, "setIsCaption:", [v15 BOOLValue]);

      v16 = [v5 isBatchComment];
      -[NSObject setIsBatchComment:](v12, "setIsBatchComment:", [v16 BOOLValue]);

      v17 = [v5 isLike];
      v18 = [v17 BOOLValue];

      if (v18)
      {
        [v12 setIsLike:1];
      }

      else
      {
        v19 = [v5 commentText];
        [v12 setContent:v19];
      }

      v20 = [v5 isMyComment];
      -[NSObject setIsMine:](v12, "setIsMine:", [v20 BOOLValue]);

      [v12 setIsDeletable:1];
      v21 = [a1 sharingPersonID];
      v22 = [MEMORY[0x1E69B14F8] sharedConnection];
      v23 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412802;
        v26 = v12;
        v27 = 2112;
        v28 = v11;
        v29 = 2112;
        v30 = v21;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "about to call connection addComments:%@ toAssetCollectionWithGUID:%@ personID:%@", &v25, 0x20u);
      }

      v24 = [MEMORY[0x1E695DEC8] arrayWithObject:v12];
      [v22 addComments:v24 toAssetCollectionWithGUID:v11 personID:v21];
    }

    else
    {
      v12 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "ERROR: couldn't find asset cloud GUID for comment, skipping comment deletion on server", &v25, 2u);
      }
    }
  }
}

+ (void)handlePhoneInvitationFailuresWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [a1 _transactionWithName:"+[PLPhotoSharingHelper handlePhoneInvitationFailuresWithCompletionBlock:]"];
  v6 = [a1 _processPhoneFailuresQueue];
  v9 = v4;
  v7 = v5;
  v8 = v4;
  pl_dispatch_async();
}

void __73__PLPhotoSharingHelper_handlePhoneInvitationFailuresWithCompletionBlock___block_invoke(uint64_t a1)
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v2 = [*(a1 + 48) _phoneInvitationFailureFile];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v2];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  [v7 removeItemAtPath:v2 error:0];

  [*(a1 + 32) stillAlive];
  objc_sync_exit(obj);
}

+ (id)_transactionWithName:(const char *)a3
{
  if (PLIsAssetsd())
  {
    v4 = [MEMORY[0x1E69BF360] transaction:a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)savePhoneInvitationFailuresForPhoneNumber:(id)a3 inAlbum:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  objc_sync_enter(v7);
  v8 = [a1 _phoneInvitationFailureFile];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if (!v10 || ([MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v8], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
  }

  v12 = [v6 GUID];
  if (v12)
  {
    v13 = [v11 objectForKey:v12];
    if (!v13)
    {
      v13 = [MEMORY[0x1E695DF70] array];
    }

    [v13 addObject:v15];
    [v11 setObject:v13 forKey:v12];
    v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:100 options:0 error:0];
    [v14 writeToFile:v8 options:1073741825 error:0];
  }

  objc_sync_exit(v7);
}

+ (BOOL)hasPhoneInvitationForAlbum:(id)a3
{
  v3 = [a3 cloudMetadata];
  v4 = [v3 objectForKey:*MEMORY[0x1E6997FE8]];

  LOBYTE(v3) = [v4 length] != 0;
  return v3;
}

+ (void)markPendingInvitationAsSpamForAlbum:(id)a3 completionHandler:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    *buf = 138412802;
    v34 = v10;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", buf, 0x20u);
  }

  v13 = [MEMORY[0x1E69B14F8] sharedConnection];
  v14 = [v7 cloudMetadata];
  v15 = [v14 objectForKey:*MEMORY[0x1E6997FE8]];

  v16 = [a1 sharingPersonID];
  v17 = [v7 cloudGUID];
  v18 = [v15 length];
  v19 = PLPhotoSharingGetLog();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      *buf = 138412546;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "about to call connection markAsSpamInvitationWithToken:%@ personID:%@", buf, 0x16u);
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __78__PLPhotoSharingHelper_markPendingInvitationAsSpamForAlbum_completionHandler___block_invoke;
    v30[3] = &unk_1E7576050;
    v21 = &v32;
    v22 = &v31;
    v31 = v17;
    v32 = v8;
    v23 = v17;
    v24 = v8;
    [v13 markAsSpamInvitationWithToken:v15 personID:v16 completionBlock:v30];
  }

  else
  {
    if (v20)
    {
      *buf = 138412546;
      v34 = v17;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "about to call connection markAsSpamAlbumWithGUID:%@ personID:%@", buf, 0x16u);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __78__PLPhotoSharingHelper_markPendingInvitationAsSpamForAlbum_completionHandler___block_invoke_653;
    v27[3] = &unk_1E7576050;
    v21 = &v29;
    v22 = &v28;
    v28 = v17;
    v29 = v8;
    v25 = v17;
    v26 = v8;
    [v13 markAsSpamAlbumWithGUID:v25 personID:v16 completionBlock:v27];
  }
}

void __78__PLPhotoSharingHelper_markPendingInvitationAsSpamForAlbum_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  if (!v3)
  {
    v6[0] = *(a1 + 32);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [PLCloudSharedDeleteAlbumsJob deleteLocalAlbumsForMSASAlbumGUIDs:v5];
  }
}

void __78__PLPhotoSharingHelper_markPendingInvitationAsSpamForAlbum_completionHandler___block_invoke_653(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  if (!v3)
  {
    v5 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "will call [PLCloudSharedDeleteAlbumsJob deleteLocalAlbumsForMSASAlbumGUIDs:albumGUIDs:] with arguments %@", buf, 0xCu);
    }

    v8 = *(a1 + 32);
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    [PLCloudSharedDeleteAlbumsJob deleteLocalAlbumsForMSASAlbumGUIDs:v7];
  }
}

+ (void)declinePendingInvitationForAlbum:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a1 unsubscribeFromAlbum:v4];
  v5 = MEMORY[0x1E695DEC8];
  v6 = [v4 cloudGUID];

  v7 = [v5 arrayWithObject:v6];

  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "will call [PLCloudSharedDeleteAlbumsJob deleteLocalAlbumsForMSASAlbumGUIDs:albumGUIDs:] with arguments %@", &v9, 0xCu);
  }

  [PLCloudSharedDeleteAlbumsJob deleteLocalAlbumsForMSASAlbumGUIDs:v7];
}

+ (void)acceptPendingInvitationForAlbum:(id)a3 completionHandler:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 photoLibrary];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __74__PLPhotoSharingHelper_acceptPendingInvitationForAlbum_completionHandler___block_invoke;
  v29[3] = &unk_1E75781E8;
  v10 = v7;
  v30 = v10;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __74__PLPhotoSharingHelper_acceptPendingInvitationForAlbum_completionHandler___block_invoke_2;
  v27[3] = &unk_1E7576AA0;
  v11 = v8;
  v28 = v11;
  [v9 performTransaction:v29 completionHandler:v27];
  v12 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = NSStringFromSelector(a2);
    *buf = 138412802;
    v32 = v13;
    v33 = 2112;
    v34 = v15;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", buf, 0x20u);
  }

  v16 = [MEMORY[0x1E69B14F8] sharedConnection];
  v17 = [v10 cloudMetadata];
  v18 = [v17 objectForKey:*MEMORY[0x1E6997FE8]];

  v19 = [a1 sharingPersonID];
  v20 = [v18 length];
  v21 = PLPhotoSharingGetLog();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      *buf = 138412546;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "about to call connection acceptInvitationWithToken:%@ personID:%@", buf, 0x16u);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __74__PLPhotoSharingHelper_acceptPendingInvitationForAlbum_completionHandler___block_invoke_651;
    v25[3] = &unk_1E7577430;
    v26 = v11;
    [v16 acceptInvitationWithToken:v18 personID:v19 completionBlock:v25];
    v23 = v26;
  }

  else
  {
    if (v22)
    {
      v24 = [v10 cloudGUID];
      *buf = 138412546;
      v32 = v24;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "about to call connection subscribeToAlbumWithGUID:%@ personID:%@", buf, 0x16u);
    }

    v23 = [v10 cloudGUID];
    [v16 subscribeToAlbumWithGUID:v23 personID:v19];
  }
}

void __74__PLPhotoSharingHelper_acceptPendingInvitationForAlbum_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  [v1 setCloudRelationshipState:v2];
}

uint64_t __74__PLPhotoSharingHelper_acceptPendingInvitationForAlbum_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __74__PLPhotoSharingHelper_acceptPendingInvitationForAlbum_completionHandler___block_invoke_651(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)unsubscribeFromAlbum:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v16 = 138412802;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v16, 0x20u);
  }

  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v5 cloudGUID];
    v12 = [a1 sharingPersonID];
    v16 = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "about to call connection unsubscribeFromAlbumWithGUID:%@ personID %@", &v16, 0x16u);
  }

  v13 = [MEMORY[0x1E69B14F8] sharedConnection];
  v14 = [v5 cloudGUID];
  v15 = [a1 sharingPersonID];
  [v13 unsubscribeFromAlbumWithGUID:v14 personID:v15];
}

+ (void)removeSubscribers:(id)a3 fromOwnedAlbum:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    *buf = 138413058;
    v29 = v10;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v7;
    v34 = 2112;
    v35 = v8;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@ ownedAlbum:%@", buf, 0x2Au);
  }

  v22 = v8;

  v13 = [a1 sharingPersonID];
  v14 = [MEMORY[0x1E69B14F8] sharedConnection];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v23 + 1) + 8 * i) cloudGUID];
        v21 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v29 = v20;
          v30 = 2112;
          v31 = v13;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, " about to call connection removeAccessControlEntryWithGUID:%@ personID:%@", buf, 0x16u);
        }

        [v14 removeAccessControlEntryWithGUID:v20 personID:v13];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }
}

+ (void)sendPendingInvitationsForAlbum:(id)a3 resendInvitationGUIDs:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v30 = v7;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", buf, 0x20u);
  }

  if (v8 && [v8 count])
  {
    v13 = [MEMORY[0x1E695DFD8] setWithArray:v8];
  }

  else
  {
    v13 = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__71158;
  v31 = __Block_byref_object_dispose__71159;
  v32 = 0;
  v14 = [v7 photoLibrary];
  v15 = +[PLPhotoSharingHelper sharingPersonID];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __77__PLPhotoSharingHelper_sendPendingInvitationsForAlbum_resendInvitationGUIDs___block_invoke;
  v25[3] = &unk_1E7578820;
  v26 = v7;
  v27 = v13;
  v28 = buf;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__PLPhotoSharingHelper_sendPendingInvitationsForAlbum_resendInvitationGUIDs___block_invoke_649;
  v19[3] = &unk_1E7576B70;
  v23 = buf;
  v24 = a1;
  v16 = v26;
  v20 = v16;
  v17 = v15;
  v21 = v17;
  v18 = v27;
  v22 = v18;
  [v14 performBlockAndWait:v25 completionHandler:v19];

  _Block_object_dispose(buf, 8);
}

void __77__PLPhotoSharingHelper_sendPendingInvitationsForAlbum_resendInvitationGUIDs___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 invitationRecords];
    *buf = 138412546;
    v38 = v3;
    v39 = 2048;
    v40 = [v4 count];
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "found plAlbum %@ with invitationRecords %lu", buf, 0x16u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = [*(a1 + 32) invitationRecords];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v33;
    *&v7 = 138412290;
    v31 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v31;
          v38 = v11;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "invitation record %@", buf, 0xCu);
        }

        v13 = [v11 invitationState];
        if ([v13 intValue] == 1)
        {
        }

        else
        {
          v14 = *(a1 + 40);

          if (!v14)
          {
            continue;
          }
        }

        v15 = *(a1 + 40);
        if (v15)
        {
          v16 = [v11 cloudGUID];
          v17 = [v15 containsObject:v16];

          if (!v17)
          {
            continue;
          }
        }

        v18 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "record state is kMSASRelationshipStatePending, will send invitation", buf, 2u);
        }

        v19 = objc_alloc_init(MEMORY[0x1E6997FA0]);
        v20 = [v11 cloudGUID];
        [v19 setGUID:v20];

        v21 = [v11 inviteeEmails];
        [v19 setEmails:v21];

        v22 = [v11 inviteePhones];
        [v19 setPhones:v22];

        v23 = [v11 inviteeFirstName];
        [v19 setFirstName:v23];

        v24 = [v11 inviteeLastName];
        [v19 setLastName:v24];

        v25 = [v11 inviteeFullName];
        [v19 setFullName:v25];

        v26 = [v11 inviteeHashedPersonID];
        [v19 setPersonID:v26];

        [v19 setState:1];
        v27 = *(*(*(a1 + 48) + 8) + 40);
        if (!v27)
        {
          v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v29 = *(*(a1 + 48) + 8);
          v30 = *(v29 + 40);
          *(v29 + 40) = v28;

          v27 = *(*(*(a1 + 48) + 8) + 40);
        }

        [v27 addObject:{v19, v31}];
      }

      v8 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }
}

void __77__PLPhotoSharingHelper_sendPendingInvitationsForAlbum_resendInvitationGUIDs___block_invoke_649(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = PLPhotoSharingGetLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = objc_opt_class();
      v6 = *(*(*(a1 + 56) + 8) + 40);
      v7 = *(a1 + 32);
      v8 = v5;
      v9 = [v7 cloudGUID];
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
    v12 = *(*(*(a1 + 56) + 8) + 40);
    v13 = [*(a1 + 32) cloudGUID];
    v14 = *(a1 + 40);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__PLPhotoSharingHelper_sendPendingInvitationsForAlbum_resendInvitationGUIDs___block_invoke_650;
    v19[3] = &unk_1E7570F30;
    v20 = *(a1 + 56);
    [v11 addAccessControlEntries:v12 toAlbumWithGUID:v13 personID:v14 completionBlock:v19];

LABEL_5:
    return;
  }

  if (v4)
  {
    *buf = 138412290;
    v22 = objc_opt_class();
    v15 = v22;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@: no sharing invitations to send", buf, 0xCu);
  }

  if (*(a1 + 48))
  {
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 48);
      *buf = 138412546;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v18 = v16;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "%@: failed to find invitation GUIDs %@ to resend", buf, 0x16u);
    }

    goto LABEL_5;
  }
}

void __77__PLPhotoSharingHelper_sendPendingInvitationsForAlbum_resendInvitationGUIDs___block_invoke_650(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = *(*(*(a1 + 32) + 8) + 40);
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      v6 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%@: failed to addAccessControlEntries:%@", &v7, 0x16u);
    }
  }
}

+ (void)sendPendingInvitationsForNewlyCreatedAlbum:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v10, 0x20u);
  }

  v9 = [v4 GUID];
  [PLCloudSharingInvitationChangeJob sendServerPendingInvitationsForAlbumWithGUID:v9];
}

+ (BOOL)removeCloudSharingDirectories:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 photoDirectoryWithType:23];
  v29 = 0;
  v7 = [v5 removeItemAtPath:v6 error:&v29];
  v8 = v29;

  v9 = MEMORY[0x1E696AA08];
  v10 = MEMORY[0x1E696A798];
  if (v7)
  {
    v11 = 1;
    goto LABEL_11;
  }

  v12 = [v8 userInfo];
  v13 = [v12 objectForKey:*v9];

  v14 = [v13 domain];
  if (![v14 isEqualToString:*v10])
  {

LABEL_7:
    if (a3)
    {
      v16 = v8;
      v11 = 0;
      *a3 = v8;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_10;
  }

  v15 = [v13 code];

  if (v15 != 2)
  {
    goto LABEL_7;
  }

  v11 = 1;
LABEL_10:

LABEL_11:
  v17 = [MEMORY[0x1E696AC08] defaultManager];
  v18 = [v4 photoDirectoryWithType:24];
  v28 = 0;
  v19 = [v17 removeItemAtPath:v18 error:&v28];
  v20 = v28;

  if ((v19 & 1) == 0)
  {
    v21 = [v20 userInfo];
    v22 = [v21 objectForKey:*v9];

    v23 = [v22 domain];
    if ([v23 isEqualToString:*v10])
    {
      v24 = [v22 code];

      if (v24 == 2)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
    }

    v25 = PLMigrationGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v4 photoDirectoryWithType:24];
      *buf = 138412546;
      v31 = v26;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Unable to delete %@: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

LABEL_20:

  return v11;
}

+ (void)requestVideoPlaybackURLForAsset:(id)a3 videoType:(unint64_t)a4 completion:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if ([v7 isStreamedVideo])
  {
    v9 = +[PLPhotoSharingHelper sharingPersonID];
    v10 = [v7 cloudAssetGUID];
    v11 = [MEMORY[0x1E69B14F8] sharedConnection];
    v12 = [v7 photoLibrary];
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v25 = v10;
      v26 = 2112;
      v27 = v9;
      v28 = 2048;
      v29 = a4;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "about to call connection videoURLForAssetCollectionWithGUID:%@ personID:%@ mediaAssetType:%ld", buf, 0x20u);
    }

    v14 = [v7 cloudAssetGUID];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__PLPhotoSharingHelper_requestVideoPlaybackURLForAsset_videoType_completion___block_invoke;
    v18[3] = &unk_1E7570F08;
    v19 = v10;
    v20 = v9;
    v21 = v12;
    v22 = v7;
    v23 = v8;
    v15 = v12;
    v16 = v9;
    v17 = v10;
    [v11 videoURLsForAssetCollectionWithGUID:v14 forMediaAssetType:a4 personID:v16 completionBlock:v18];
  }

  else
  {
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, " requestVideoPlaybackURLForAsset called with a non streamed video asset %@", buf, 0xCu);
    }
  }
}

void __77__PLPhotoSharingHelper_requestVideoPlaybackURLForAsset_videoType_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *buf = 138413314;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "completion block for videoURLForAssetCollectionWithGUID:%@ personID:%@ result %@ expiration %@ error %@", buf, 0x34u);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__PLPhotoSharingHelper_requestVideoPlaybackURLForAsset_videoType_completion___block_invoke_644;
  v19[3] = &unk_1E7578100;
  v13 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = v8;
  v22 = v9;
  v23 = v7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__PLPhotoSharingHelper_requestVideoPlaybackURLForAsset_videoType_completion___block_invoke_2;
  v17[3] = &unk_1E7576AA0;
  v18 = *(a1 + 64);
  v14 = v7;
  v15 = v9;
  v16 = v8;
  [v13 performBlock:v19 completionHandler:v17];
}

uint64_t __77__PLPhotoSharingHelper_requestVideoPlaybackURLForAsset_videoType_completion___block_invoke_644(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) firstObject];
  [v2 setCachedNonPersistedVideoPlaybackURL:v3];

  [*(a1 + 32) setCachedNonPersistedVideoPlaybackURLExpiration:*(a1 + 48)];
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);

  return [v4 setCachedNonPersistedVideoPlaybackURLError:v5];
}

uint64_t __77__PLPhotoSharingHelper_requestVideoPlaybackURLForAsset_videoType_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (BOOL)isCellularConnection
{
  v11 = *MEMORY[0x1E69E9840];
  address = xmmword_19C60B0A0;
  v2 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x1E695E480], &address);
  if (v2)
  {
    v3 = v2;
    v8 = 0;
    SCNetworkReachabilityGetFlags(v2, &v8);
    v4 = (~v8 & 0x40002) == 0;
    CFRelease(v3);
  }

  else
  {
    v4 = 1;
  }

  v5 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"wifi";
    if (v4)
    {
      v6 = @"celluar";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Using %@ connection", &v8, 0xCu);
  }

  return v4;
}

+ (void)deleteCloudSharedAssetsFromServer:(id)a3 inSharedAlbum:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v13 = [v7 valueForKey:@"cloudAssetGUID"];
    *buf = 138413058;
    v30 = v10;
    v31 = 2112;
    v32 = v12;
    v33 = 2112;
    v34 = v13;
    v35 = 2112;
    v36 = v8;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "%@ %@ cloudAssetGUIDs %@ album %@", buf, 0x2Au);
  }

  v14 = [MEMORY[0x1E69B14F8] sharedConnection];
  v15 = [a1 sharingPersonID];
  v16 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
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

        v22 = [*(*(&v24 + 1) + 8 * v21) cloudAssetGUID];
        [v16 addObject:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

  v23 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v16;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, " about to call connection deleteAssetCollectionsWithGUIDs:%@ personID:%@", buf, 0x16u);
  }

  [v14 deleteAssetCollectionsWithGUIDs:v16 personID:v15];
  [a1 _userDidDeleteSharedAssets:v17];
}

+ (void)_userDidDeleteSharedAssets:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (PLIsAssetsd())
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * v9) uuid];
          if (v10)
          {
            [v4 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v11 = +[PLNotificationManager sharedManager];
      [v11 noteUserDidDeleteSharedAssetsWithUUIDs:v4];
    }
  }

  else
  {
    [PLUserActivityDaemonJob userDidDeleteSharedAssets:v3];
  }
}

+ (void)enqueueCloudSharedAssetsForPublishToServer:(id)a3 inSharedAlbum:(id)a4
{
  v128 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v84 = a4;
  v7 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    v11 = [v6 valueForKey:@"uuid"];
    LODWORD(buf.value) = 138413058;
    *(&buf.value + 4) = v8;
    LOWORD(buf.flags) = 2112;
    *(&buf.flags + 2) = v10;
    HIWORD(buf.epoch) = 2112;
    v125 = v11;
    v126 = 2112;
    v127 = v84;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "%@ %@ asset uuids %@ album %@", &buf, 0x2Au);
  }

  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = v6;
  v102 = [obj countByEnumeratingWithState:&v119 objects:v123 count:16];
  v13 = 0;
  if (v102)
  {
    v101 = *v120;
    v107 = *MEMORY[0x1E695DB50];
    v105 = *MEMORY[0x1E6998070];
    v103 = *MEMORY[0x1E6998078];
    v104 = *MEMORY[0x1E6998080];
    v100 = *MEMORY[0x1E6998028];
    v92 = *MEMORY[0x1E6982F80];
    v14 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);
    v87 = *MEMORY[0x1E6998008];
    v86 = *MEMORY[0x1E6998010];
    v85 = *MEMORY[0x1E6998018];
    v97 = *MEMORY[0x1E6997FF8];
    v16 = 0x1E696A000uLL;
    v96 = *MEMORY[0x1E6997FF0];
    v95 = *MEMORY[0x1E6998000];
    v90 = *MEMORY[0x1E6998030];
    v88 = *MEMORY[0x1E6998020];
    v93 = v12;
    do
    {
      for (i = 0; i != v102; ++i)
      {
        if (*v120 != v101)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v119 + 1) + 8 * i);
        v19 = objc_alloc_init(MEMORY[0x1E6997FA8]);
        v20 = [v18 cloudAssetGUID];
        [v19 setGUID:v20];

        v112 = [v18 uniformTypeIdentifier];
        [v19 setType:?];
        v21 = [v18 pathForOriginalFile];
        [v19 setPath:v21];

        if ([v18 isVideo])
        {
          [v19 setMediaAssetType:4];
        }

        v22 = [MEMORY[0x1E695DF90] dictionary];
        v23 = MEMORY[0x1E695DFF8];
        v24 = [v18 pathForOriginalFile];
        v25 = [v23 fileURLWithPath:v24 isDirectory:0];

        v118 = 0;
        v111 = v25;
        [v25 getResourceValue:&v118 forKey:v107 error:0];
        v110 = v118;
        [v22 setObject:? forKey:?];
        v26 = [*(v16 + 3480) numberWithLongLong:{objc_msgSend(v18, "width")}];
        v27 = [*(v16 + 3480) numberWithLongLong:{objc_msgSend(v18, "height")}];
        v109 = v26;
        [v22 setObject:v26 forKey:v104];
        v108 = v27;
        [v22 setObject:v27 forKey:v103];
        [v19 setMetadata:v22];
        v115 = [MEMORY[0x1E695DF70] array];
        v113 = v19;
        [v115 addObject:v19];
        v28 = objc_alloc_init(MEMORY[0x1E6997F90]);
        v29 = [MEMORY[0x1E695DF90] dictionary];
        v30 = [*(v16 + 3480) numberWithUnsignedShort:{objc_msgSend(v18, "playbackVariation")}];
        [v29 setObject:v30 forKey:v100];

        v114 = [v18 mediaGroupUUID];
        if ([v18 isPhotoIris] && v114)
        {
          v99 = v13;
          v31 = [v18 pathForVideoComplementFile];
          v32 = [v31 pathExtension];
          v33 = [v92 identifier];
          v98 = v32;
          if (v32)
          {
            v34 = [PLManagedAsset uniformTypeIdentifierFromPathExtension:v32 assetType:1];
            v35 = v34;
            if (v34)
            {
              v36 = v34;
            }

            else
            {
              v36 = v33;
            }

            v37 = v36;

            v33 = v37;
          }

          v38 = objc_alloc_init(MEMORY[0x1E6997FA8]);
          v39 = [MEMORY[0x1E696AFB0] UUID];
          v40 = [v39 UUIDString];
          [v38 setGUID:v40];

          [v38 setType:v33];
          v41 = [v18 pathForVideoComplementFile];
          [v38 setPath:v41];

          [v38 setMediaAssetType:4];
          v106 = [MEMORY[0x1E695DF90] dictionary];
          if (v31 && ([MEMORY[0x1E696AC08] defaultManager], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "fileExistsAtPath:", v31), v42, v43))
          {
            v89 = v33;
            v44 = [MEMORY[0x1E695DFF8] fileURLWithPath:v31 isDirectory:0];
            v116 = 0;
            v117 = 0;
            v45 = [v44 getResourceValue:&v117 forKey:v107 error:&v116];
            v46 = v117;
            v91 = v116;
            if (v45)
            {
              [v106 setObject:v46 forKey:v105];
              [PLManagedAsset dimensionsForVideoAtURL:v44];
              v48 = v47;
              if (v49 == v14 && v47 == v15)
              {
                v50 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf.value) = 138412290;
                  *(&buf.value + 4) = v31;
                  v51 = v50;
                  v52 = "ERROR: Unable to get dimensions for Iris video complement file %@";
                  v53 = 12;
                  goto LABEL_29;
                }

                goto LABEL_30;
              }

              v55 = [MEMORY[0x1E696AD98] numberWithDouble:?];
              [v106 setObject:v55 forKey:v104];

              v56 = [MEMORY[0x1E696AD98] numberWithDouble:v48];
              [v106 setObject:v56 forKey:v103];

              [v38 setMetadata:v106];
              [v29 setObject:v114 forKey:v87];
              v57 = MEMORY[0x1E696AD98];
              if (v18)
              {
                [v18 photoIrisStillDisplayTime];
              }

              else
              {
                memset(&buf, 0, sizeof(buf));
              }

              v58 = [v57 numberWithDouble:CMTimeGetSeconds(&buf)];
              [v29 setObject:v58 forKey:v86];

              v59 = MEMORY[0x1E696AD98];
              if (v18)
              {
                [v18 photoIrisVideoDuration];
              }

              else
              {
                memset(&buf, 0, sizeof(buf));
              }

              v60 = [v59 numberWithDouble:CMTimeGetSeconds(&buf)];
              [v29 setObject:v60 forKey:v85];

              [v115 addObject:v38];
            }

            else
            {
              v50 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.value) = 138412546;
                *(&buf.value + 4) = v31;
                LOWORD(buf.flags) = 2112;
                *(&buf.flags + 2) = v91;
                v51 = v50;
                v52 = "ERROR: Unable to get Iris video complement file size for %@: %@";
                v53 = 22;
LABEL_29:
                _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_ERROR, v52, &buf, v53);
              }

LABEL_30:
            }

            v54 = v98;

            v33 = v89;
          }

          else
          {
            v44 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf.value) = 138412290;
              *(&buf.value + 4) = v31;
              _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "ERROR: Iris video complement file path is nil or does not exist: %@", &buf, 0xCu);
            }

            v54 = v98;
          }

          v12 = v93;
          v13 = v99;
          v16 = 0x1E696A000uLL;
        }

        [v28 setAssets:v115];
        v61 = [v18 cloudAssetGUID];
        [v28 setGUID:v61];

        v62 = [v18 originalFilename];
        [v28 setFileName:v62];

        [v28 setIsDeletable:{objc_msgSend(v18, "cloudIsDeletable")}];
        [v28 setIsMine:{objc_msgSend(v18, "cloudIsMyAsset")}];
        v63 = [v18 cloudBatchID];

        if (v63)
        {
          v64 = [v18 cloudBatchID];
          [v29 setObject:v64 forKey:v97];
        }

        v65 = [v18 cloudBatchPublishDate];

        if (v65)
        {
          v66 = [v18 cloudBatchPublishDate];
          [v29 setObject:v66 forKey:v96];
        }

        v67 = [v18 dateCreated];
        if (v67)
        {
          [v29 setObject:v67 forKey:v95];
        }

        v68 = [*(v16 + 3480) numberWithBool:1];
        [v29 setObject:v68 forKey:@"kPLJustEnqueuedAssetCollectionKey"];

        if ([v18 isVideo])
        {
          [v18 duration];
          if (v69 != 0.0)
          {
            [PLSlalomUtilities durationForManagedAsset:v18 applyVideoAdjustments:1];
            v70 = [*(v16 + 3480) numberWithDouble:?];
            [v29 setObject:v70 forKey:v90];
          }

          v71 = [v18 location];
          v72 = v71;
          if (v71)
          {
            v73 = v13;
            v74 = [v71 iso6709Notation];
            v75 = v74;
            if (v74 && [v74 length])
            {
              [v29 setObject:v75 forKey:v88];
            }

            v13 = v73;
          }

          v16 = 0x1E696A000;
        }

        [v28 setMetadata:v29];
        [v12 addObject:v28];
        v76 = [v18 locationData];

        if (v76)
        {
          ++v13;
        }
      }

      v102 = [obj countByEnumeratingWithState:&v119 objects:v123 count:16];
    }

    while (v102);
  }

  if ([v12 count])
  {
    v77 = [MEMORY[0x1E69B14F8] sharedConnection];
    v78 = [a1 sharingPersonID];
    v79 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v80 = [v84 cloudGUID];
      LODWORD(buf.value) = 138412802;
      *(&buf.value + 4) = v12;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = v80;
      HIWORD(buf.epoch) = 2112;
      v125 = v78;
      _os_log_impl(&dword_19BF1F000, v79, OS_LOG_TYPE_DEFAULT, " about to call connection addAssetCollections:%@ toAlbumWithGUID:%@ personID:%@", &buf, 0x20u);
    }

    v81 = [v84 cloudGUID];
    [v77 addAssetCollections:v12 toAlbumWithGUID:v81 personID:v78];

    [a1 writeUploadDebugBreadcrumbForAssetCollections:v12 state:100 error:0];
  }

  else
  {
    v77 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_19BF1F000, v77, OS_LOG_TYPE_DEFAULT, " no asset collections to add", &buf, 2u);
    }
  }

  if (MEMORY[0x19EAEF2C0]())
  {
    if (v13 >= 1)
    {
      v82 = [v84 title];
      plslogGreenTea();
    }

    if (PLIsForegroundApplication())
    {
      cpllogGreenTeaTransmittingPhotosOrVideos();
    }
  }
}

+ (id)_videoComplementURLForSharingFromAsset:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 uuid];
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Determining video complement path to use. UUID: %@", buf, 0xCu);
  }

  v18 = 0;
  v6 = [v3 isPlayableVideo:&v18];
  v7 = v18;
  if (v6)
  {
    v8 = [v3 hasAdjustedVideoComplement];
    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v10 = @"adjusted";
      }

      else
      {
        v10 = @"original";
      }

      v11 = [v3 uuid];
      *buf = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Using the %@ original video component. UUID: %@", buf, 0x16u);
    }

    if (v8)
    {
      [v3 pathForFullsizeRenderVideoFile];
    }

    else
    {
      [v3 pathForVideoComplementFile];
    }
    v12 = ;
  }

  else
  {
    v13 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v3 uuid];
      *buf = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Falling back to medium, since the original video component is unsupported. Codec: %@, UUID: %@", buf, 0x16u);
    }

    v12 = [v3 pathForMediumVideoFile];
  }

  v15 = v12;
  v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];

  return v16;
}

+ (BOOL)_retrieveURLsFromAssetWithUUID:(id)a3 withExportedFileURL:(id)a4 primaryURL:(id *)a5 videoComplementURL:(id *)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = v10;
    v41 = 2114;
    v42 = v9;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Determining URLs to share for exported file URL: %@, asset UUID: %{public}@", buf, 0x16u);
  }

  v12 = [v10 pathExtension];
  if ([v12 isEqualToString:*MEMORY[0x1E69C09D0]])
  {
    v13 = [objc_alloc(MEMORY[0x1E69C0918]) initWithBundleAtURL:v10];
    v14 = [v13 imagePath];
    v15 = [v13 videoPath];
    v16 = v15;
    if (v14)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = !v17;
    if (v17)
    {
      v32 = v15;
      v33 = v14;
      v34 = v9;
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v21 = [MEMORY[0x1E696AC08] defaultManager];
      v22 = [v21 enumeratorAtURL:v10 includingPropertiesForKeys:0 options:5 errorHandler:0];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v36;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v36 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [*(*(&v35 + 1) + 8 * i) pathExtension];
            [v20 addObject:v28];
          }

          v25 = [v23 countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v25);
      }

      v29 = PLPhotoSharingGetLog();
      v9 = v34;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [v20 componentsJoinedByString:{@", "}];
        *buf = 138412802;
        v40 = v10;
        v41 = 2114;
        v42 = v30;
        v43 = 2114;
        v44 = v34;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Failed to determine URLs to share for exported file URL: %@, with path extensions: (%{public}@), asset UUID: %{public}@", buf, 0x20u);
      }

      v16 = v32;
      v14 = v33;
    }

    else
    {
      *a5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
      *a6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16];
    }
  }

  else
  {
    v19 = v10;
    *a5 = v10;
    v18 = 1;
  }

  return v18;
}

+ (BOOL)prepareToEnqueueBatchOfOriginalAssetUUIDs:(id)a3 withBatchCommentText:(id)a4 assetsSharingInfos:(id)a5 customExportsInfo:(id)a6 andTrimmedVideoPathInfo:(id)a7 sharedAlbum:(id)a8 isNewAlbum:(BOOL)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v18 = a8;
  v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
  v20 = [v18 photoLibrary];
  v21 = [v20 pathManager];
  v22 = [v21 capabilities];

  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy__71158;
  v68[4] = __Block_byref_object_dispose__71159;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__71158;
  v66 = __Block_byref_object_dispose__71159;
  v67 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 1;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __177__PLPhotoSharingHelper_prepareToEnqueueBatchOfOriginalAssetUUIDs_withBatchCommentText_assetsSharingInfos_customExportsInfo_andTrimmedVideoPathInfo_sharedAlbum_isNewAlbum_error___block_invoke;
  v43[3] = &unk_1E7570EE0;
  v44 = v20;
  v53 = &v62;
  v54 = &v58;
  v45 = v18;
  v57 = a9;
  v33 = v16;
  v46 = v33;
  v32 = v17;
  v47 = v32;
  v23 = v34;
  v48 = v23;
  v24 = v35;
  v49 = v24;
  v25 = v36;
  v50 = v25;
  v56 = a1;
  v26 = v22;
  v51 = v26;
  v52 = v19;
  v55 = v68;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __177__PLPhotoSharingHelper_prepareToEnqueueBatchOfOriginalAssetUUIDs_withBatchCommentText_assetsSharingInfos_customExportsInfo_andTrimmedVideoPathInfo_sharedAlbum_isNewAlbum_error___block_invoke_616;
  v37[3] = &unk_1E7576B70;
  v27 = v52;
  v38 = v27;
  v28 = v44;
  v39 = v28;
  v42 = a1;
  v29 = v45;
  v40 = v29;
  v41 = v68;
  [v28 performTransactionAndWait:v43 completionHandler:v37];
  if (a10)
  {
    *a10 = v63[5];
  }

  v30 = *(v59 + 24);

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(v68, 8);
  return v30;
}

void __177__PLPhotoSharingHelper_prepareToEnqueueBatchOfOriginalAssetUUIDs_withBatchCommentText_assetsSharingInfos_customExportsInfo_andTrimmedVideoPathInfo_sharedAlbum_isNewAlbum_error___block_invoke(uint64_t a1)
{
  v231[1] = *MEMORY[0x1E69E9840];
  v163 = +[PLPhotoSharingHelper sharingPersonID];
  if ([*(a1 + 32) isUnitTesting])
  {

    v163 = @"UnitTestID";
  }

  else if (!v163)
  {
    v149 = MEMORY[0x1E696ABC0];
    v230 = *MEMORY[0x1E696A278];
    v231[0] = @"sharingPersonID is nil";
    v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v231 forKeys:&v230 count:1];
    v151 = [v149 errorWithDomain:@"com.apple.photolibraryservices" code:5 userInfo:v150];
    v152 = *(*(a1 + 104) + 8);
    v153 = *(v152 + 40);
    *(v152 + 40) = v151;

    *(*(*(a1 + 112) + 8) + 24) = 0;
    return;
  }

  if (*(a1 + 40))
  {
    if (*(a1 + 136) == 1)
    {
      [PLPhotoSharingHelper publishCloudSharedAlbumToServer:?];
    }

    v1 = [PLManagedAsset assetsWithUUIDs:*(a1 + 48) options:1 inLibrary:*(a1 + 32)];
    v2 = [v1 count];
    if (v2 != [*(a1 + 48) count])
    {
      v3 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = [v1 count];
        v5 = [*(a1 + 48) count];
        *buf = 134218240;
        *&buf[4] = v4;
        *&buf[12] = 2048;
        *&buf[14] = v5;
        _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "ERROR: Only found %lu originalAssets, expected %lu", buf, 0x16u);
      }
    }

    v178 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    obj = v1;
    v6 = [obj countByEnumeratingWithState:&v208 objects:v227 count:16];
    if (v6)
    {
      v7 = *v209;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v209 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v208 + 1) + 8 * i);
          v10 = [v9 uuid];
          [v178 setObject:v9 forKey:v10];
        }

        v6 = [obj countByEnumeratingWithState:&v208 objects:v227 count:16];
      }

      while (v6);
    }

    v159 = [MEMORY[0x1E69BF320] UUIDString];
    v160 = [MEMORY[0x1E695DF00] date];
    v158 = [*(a1 + 40) mutableAssets];
    v157 = [*(a1 + 56) length];
    v11 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(a1 + 64), "count")}];
    v12 = *(a1 + 64);
    v206[0] = MEMORY[0x1E69E9820];
    v206[1] = 3221225472;
    v206[2] = __177__PLPhotoSharingHelper_prepareToEnqueueBatchOfOriginalAssetUUIDs_withBatchCommentText_assetsSharingInfos_customExportsInfo_andTrimmedVideoPathInfo_sharedAlbum_isNewAlbum_error___block_invoke_582;
    v206[3] = &unk_1E75718E0;
    v154 = v11;
    v207 = v154;
    [v12 enumerateKeysAndObjectsUsingBlock:v206];
    v13 = *(a1 + 48);
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v164 = v13;
    v169 = [v164 countByEnumeratingWithState:&v202 objects:v226 count:16];
    if (v169)
    {
      v168 = *v203;
      v162 = *MEMORY[0x1E696A278];
      v156 = *MEMORY[0x1E6987348];
      v155 = *MEMORY[0x1E69874B8];
      v161 = *MEMORY[0x1E696AA08];
      do
      {
        v14 = 0;
        do
        {
          if (*v203 != v168)
          {
            v15 = v14;
            objc_enumerationMutation(v164);
            v14 = v15;
          }

          v177 = v14;
          v16 = *(*(&v202 + 1) + 8 * v14);
          v17 = [v178 objectForKey:v16];
          if (v17)
          {
            context = objc_autoreleasePoolPush();
            v18 = [v17 isVideo];
            v166 = [v17 playbackVariation];
            v19 = *(a1 + 72);
            v20 = [v17 uuid];
            v171 = [v19 objectForKey:v20];

            v21 = *(a1 + 80);
            v22 = [v17 uuid];
            v179 = [v21 objectForKey:v22];

            if (v179)
            {
              v181 = [MEMORY[0x1E695DFF8] URLWithString:?];
              v23 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v181;
                _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "Original video is trimmed, use the trimmed file %@", buf, 0xCu);
              }

              v180 = 0;
              v174 = 0;
              v167 = 0;
LABEL_28:
              v24 = 1;
LABEL_29:

              v25 = [MEMORY[0x1E696AFB0] UUID];
              v176 = [v25 UUIDString];

              v172 = [v181 pathExtension];
              v26 = [*(a1 + 40) cloudGUID];
              v27 = [*(a1 + 32) pathManager];
              v28 = [PLCloudSharedAssetSaveJob nextDCIMSaveFileURLForCloudPersonID:v163 cloudAlbumGUID:v26 pathManager:v27 fileExtension:v172 assetUUID:v176];

              if (v180)
              {
                v29 = [v28 URLByDeletingLastPathComponent];
                v30 = [v28 lastPathComponent];
                v31 = [v30 stringByDeletingPathExtension];

                v32 = [v180 pathExtension];
                v33 = [v32 uppercaseString];
                v34 = [v31 stringByAppendingPathExtension:v33];

                v173 = [v29 URLByAppendingPathComponent:v34];
              }

              else
              {
                v173 = 0;
              }

              if (v179)
              {
                v38 = 1;
              }

              else
              {
                v38 = v18 ^ 1;
              }

              if (((v24 | v38) & 1) == 0 && [v17 isDefaultAdjustedSlomo] && objc_msgSend(v17, "isPlayableVideo:", 0))
              {
                v39 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v28;
                  _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "Original is a slow-mo, flatten the video to %@", buf, 0xCu);
                }

                v40 = v156;
                v41 = dispatch_semaphore_create(0);
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                LOBYTE(v223) = 0;
                v42 = [PLSlalomUtilities videoAVObjectBuilderForManagedAsset:v17 applyVideoAdjustments:1];
                v193[0] = MEMORY[0x1E69E9820];
                v193[1] = 3221225472;
                v193[2] = __177__PLPhotoSharingHelper_prepareToEnqueueBatchOfOriginalAssetUUIDs_withBatchCommentText_assetsSharingInfos_customExportsInfo_andTrimmedVideoPathInfo_sharedAlbum_isNewAlbum_error___block_invoke_595;
                v193[3] = &unk_1E7570EB8;
                v194 = v181;
                v43 = v28;
                v195 = v43;
                v197 = *(a1 + 104);
                v198 = buf;
                v44 = v41;
                v196 = v44;
                v191 = *MEMORY[0x1E6960CC0];
                v192 = *(MEMORY[0x1E6960CC0] + 16);
                v189 = v191;
                v190 = v192;
                [PLVideoTranscoder transcodeVideoWithObjectBuilder:v42 outputURL:v43 startTime:&v191 endTime:&v189 presetName:v40 outputFileType:v155 metadata:0 completionHandler:v193];
                dispatch_semaphore_wait(v44, 0xFFFFFFFFFFFFFFFFLL);
                v45 = *(*&buf[8] + 24);

                _Block_object_dispose(buf, 8);
                if (v45)
                {
LABEL_96:

                  v98 = v174;
                  goto LABEL_97;
                }
              }

              else
              {
                if (v24)
                {
                  v46 = PLPhotoSharingGetLog();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = v181;
                    *&buf[12] = 2112;
                    *&buf[14] = v28;
                    _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "Moving result from %@ to %@", buf, 0x16u);
                  }

                  v47 = *(a1 + 88);
                  v188 = 0;
                  v48 = [MEMORY[0x1E69BF238] secureMoveItemAtURL:v181 toURL:v28 capabilities:v47 error:&v188];
                  v49 = v188;
                  if ((v48 & 1) == 0)
                  {
                    v50 = MEMORY[0x1E696AEC0];
                    v51 = [v181 path];
                    v52 = [v28 path];
                    v53 = [v50 stringWithFormat:@"Unable to move %@ to %@: %@", v51, v52, v49];

                    v54 = MEMORY[0x1E696ABC0];
                    v220[0] = v162;
                    v220[1] = v161;
                    v221[0] = v53;
                    v221[1] = v49;
                    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v221 forKeys:v220 count:2];
                    v56 = [v54 errorWithDomain:@"com.apple.photolibraryservices" code:9 userInfo:v55];
                    v57 = *(*(a1 + 104) + 8);
                    v58 = *(v57 + 40);
                    *(v57 + 40) = v56;

                    *(*(*(a1 + 112) + 8) + 24) = 0;
                    goto LABEL_96;
                  }
                }

                else
                {
                  v187 = 0;
                  v59 = [MEMORY[0x1E69BF238] copyItemAtURL:v181 toURL:v28 error:&v187];
                  v49 = v187;
                  if ((v59 & 1) == 0)
                  {
                    v83 = MEMORY[0x1E696AEC0];
                    v84 = [v181 path];
                    v85 = [v28 path];
                    v86 = [v83 stringWithFormat:@"Unable to copy %@ to %@: %@", v84, v85, v49];

                    v87 = MEMORY[0x1E696ABC0];
                    v218[0] = v162;
                    v218[1] = v161;
                    v219[0] = v86;
                    v219[1] = v49;
                    v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v219 forKeys:v218 count:2];
                    v89 = [v87 errorWithDomain:@"com.apple.photolibraryservices" code:9 userInfo:v88];
                    v90 = *(*(a1 + 104) + 8);
                    v91 = *(v90 + 40);
                    *(v90 + 40) = v89;

                    *(*(*(a1 + 112) + 8) + 24) = 0;
                    goto LABEL_96;
                  }
                }
              }

              v60 = v167;
              if (!v173)
              {
                v60 = 0;
              }

              if (v60)
              {
                v61 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v180;
                  *&buf[12] = 2112;
                  *&buf[14] = v173;
                  _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_DEFAULT, "Moving video complement from %@ to %@, for an in-place video complement creation later", buf, 0x16u);
                }

                v62 = *(a1 + 88);
                v186 = 0;
                v63 = [MEMORY[0x1E69BF238] secureMoveItemAtURL:v180 toURL:v173 capabilities:v62 error:&v186];
                v64 = v186;
                if (!v63)
                {
                  v104 = MEMORY[0x1E696AEC0];
                  v105 = [v180 path];
                  v106 = [v173 path];
                  v107 = [v104 stringWithFormat:@"Unable to move %@ to %@: %@", v105, v106, v64];

                  v108 = MEMORY[0x1E696ABC0];
                  v216[0] = v162;
                  v216[1] = v161;
                  v217[0] = v107;
                  v217[1] = v64;
                  v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v217 forKeys:v216 count:2];
                  v110 = [v108 errorWithDomain:@"com.apple.photolibraryservices" code:9 userInfo:v109];
                  v111 = *(*(a1 + 104) + 8);
                  v112 = *(v111 + 40);
                  *(v111 + 40) = v110;

                  *(*(*(a1 + 112) + 8) + 24) = 0;
                  goto LABEL_96;
                }

                v65 = v173;

                v180 = v65;
                v66 = 2;
              }

              else
              {
                v66 = 0;
              }

              if (v174)
              {
                v67 = [MEMORY[0x1E696AC08] defaultManager];
                v185 = 0;
                [v67 removeItemAtURL:v174 error:&v185];
                v68 = v185;

                if (v68)
                {
                  v69 = PLPhotoSharingGetLog();
                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = v174;
                    *&buf[12] = 2112;
                    *&buf[14] = v68;
                    _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_DEFAULT, "Unable to opportunistically clean up temporary directory: %@ Error: %@", buf, 0x16u);
                  }
                }
              }

              *&v189 = 0;
              v70 = *(a1 + 32);
              v71 = [MEMORY[0x1E69BF328] savedAssetTypeForCloudSharedAsset];
              v184 = 0;
              v72 = [PLManagedAsset insertAssetIntoPhotoLibrary:v70 mainFileURL:v28 savedAssetType:v71 bundleScope:2 uuid:v176 replacementUUID:0 imageSource:&v189 imageData:&v184];
              v73 = v184;
              v74 = [PLPhotoSharingHelper photoSharingOriginalFilenameForAsset:v17];
              [v72 setOriginalFilename:v74];

              if (v72)
              {
                if ([v72 isVideo])
                {
                  v183 = 0;
                  v75 = [v72 isPlayableVideo:&v183];
                  v76 = v183;
                  v175 = v76;
                  if ((v75 & 1) == 0)
                  {
                    v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't play new asset for file at %@, with codec: %@", v28, v76];
                    v78 = MEMORY[0x1E696ABC0];
                    v212 = v162;
                    v213 = v77;
                    v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v213 forKeys:&v212 count:1];
                    v80 = [v78 errorWithDomain:@"com.apple.photolibraryservices" code:10 userInfo:v79];
                    v81 = *(*(a1 + 104) + 8);
                    v82 = *(v81 + 40);
                    *(v81 + 40) = v80;

                    *(*(*(a1 + 112) + 8) + 24) = 0;
LABEL_95:

                    v174 = 0;
                    goto LABEL_96;
                  }
                }

                else
                {
                  v175 = 0;
                }

                [v72 setVisibilityState:2];
                v113 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v16;
                  _os_log_impl(&dword_19BF1F000, v113, OS_LOG_TYPE_DEFAULT, "Generating new thumbnails for asset with UUID %@", buf, 0xCu);
                }

                [v72 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:v189 imageData:v73 forceSRGBConversion:1];
                v114 = [MEMORY[0x1E69BF320] UUIDString];
                v115 = [v17 additionalAttributes];
                v116 = [v115 originalFilename];
                v117 = [v72 additionalAttributes];
                [v117 setOriginalFilename:v116];

                [v72 setCloudAssetGUID:v114];
                [v72 setCloudBatchID:v159];
                [v72 setCloudBatchPublishDate:v160];
                [v72 setCloudIsMyAsset:1];
                [v72 setCloudIsDeletable:1];
                [v72 setPlaybackVariationAndLoopingPlaybackStyleWithPlaybackVariation:v166];
                if ((v38 & 1) == 0)
                {
                  v118 = [v17 uuid];
                  [v72 setOriginalAssetsUUID:v118];

                  v119 = PLPhotoSharingGetLog();
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                  {
                    v120 = [v72 originalAssetsUUID];
                    *buf = 138412290;
                    *&buf[4] = v120;
                    _os_log_impl(&dword_19BF1F000, v119, OS_LOG_TYPE_DEFAULT, "Saved original video uuid %@ for later playback", buf, 0xCu);
                  }
                }

                if (v180)
                {
                  v121 = [v17 mediaGroupUUID];
                  [v17 photoIrisVideoDuration];
                  [v17 photoIrisStillDisplayTime];
                  [v72 becomePhotoIrisWithMediaGroupUUID:v121 mainFileMetadata:0 videoURL:v180 videoDuration:buf stillDisplayTime:&v191 options:v66];
                }

                [v158 addObject:v72];
                v122 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                {
                  v123 = [v28 path];
                  *buf = 138412802;
                  *&buf[4] = v181;
                  *&buf[12] = 2112;
                  *&buf[14] = v123;
                  *&buf[22] = 2112;
                  v223 = v114;
                  _os_log_impl(&dword_19BF1F000, v122, OS_LOG_TYPE_DEFAULT, "Created copy of original asset at %@ to %@ and assigned it new cloudAssetGUID %@", buf, 0x20u);
                }

                [*(a1 + 96) addObject:v72];
                if (v157 && !*(*(*(a1 + 120) + 8) + 40))
                {
                  v124 = [PLCloudSharedComment insertNewCommentIntoAsset:v72 commentDate:0 withText:*(a1 + 56) isLike:0 isMyComment:1 inLibrary:*(a1 + 32)];
                  v125 = *(*(a1 + 120) + 8);
                  v126 = *(v125 + 40);
                  *(v125 + 40) = v124;

                  v127 = *(*(*(a1 + 120) + 8) + 40);
                  v128 = [MEMORY[0x1E696AD98] numberWithBool:1];
                  [v127 setIsCaption:v128];

                  v129 = *(*(*(a1 + 120) + 8) + 40);
                  v130 = [MEMORY[0x1E696AD98] numberWithBool:1];
                  [v129 setIsBatchComment:v130];
                }

                [PLResourceInstaller installInternalResourcesForExistingAsset:v72 assumeNoExistingResources:1 referencedResourceURLs:0 error:0];

                goto LABEL_95;
              }

              v175 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Couldn't insert new asset for file at %@", v28];
              v99 = MEMORY[0x1E696ABC0];
              v214 = v162;
              v215 = v175;
              v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v215 forKeys:&v214 count:1];
              v101 = [v99 errorWithDomain:@"com.apple.photolibraryservices" code:10 userInfo:v100];
              v102 = *(*(a1 + 104) + 8);
              v103 = *(v102 + 40);
              *(v102 + 40) = v101;

              *(*(*(a1 + 112) + 8) + 24) = 0;
              goto LABEL_95;
            }

            if (v171)
            {
              v23 = [MEMORY[0x1E695DFF8] URLWithString:?];
              v35 = *(a1 + 128);
              v201 = 0;
              v200 = 0;
              v36 = [v35 _retrieveURLsFromAssetWithUUID:v16 withExportedFileURL:v23 primaryURL:&v201 videoComplementURL:&v200];
              v181 = v201;
              v37 = v200;
              if (v36)
              {
                v180 = v37;
                v167 = v37 != 0;
                v174 = [v23 URLByDeletingLastPathComponent];
                goto LABEL_28;
              }

              v97 = v37;

              v98 = v181;
              goto LABEL_97;
            }

            v92 = [v17 isLoopingVideo];
            if (v92)
            {
              v93 = PLPhotoSharingGetLog();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v166;
                _os_log_impl(&dword_19BF1F000, v93, OS_LOG_TYPE_DEFAULT, "Sharing looping video with playback variation %ld", buf, 0xCu);
              }

              if (v18)
              {
                v23 = [v17 pathForVideoFile];
                v94 = PLPhotoSharingGetLog();
                if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v23;
                  v95 = v94;
                  v96 = "Original is a looping video, use the original file %@";
                  goto LABEL_113;
                }

LABEL_114:

                if (v23)
                {
                  v181 = [MEMORY[0x1E695DFF8] fileURLWithPath:v23 isDirectory:0];
                  if ([v17 canPlayPhotoIris] && (objc_msgSend(v17, "uuid"), v133 = objc_claimAutoreleasedReturnValue(), v134 = objc_msgSend(v154, "containsObject:", v133), v133, ((v92 | v134) & 1) == 0))
                  {
                    v180 = [*(a1 + 128) _videoComplementURLForSharingFromAsset:v17];
                  }

                  else
                  {
                    v180 = 0;
                  }

                  v174 = 0;
                  v167 = 0;
                  v24 = 0;
                  goto LABEL_29;
                }

                v98 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No local file path on disk to support sharing asset %@", v16];
                v135 = MEMORY[0x1E696ABC0];
                v224 = v162;
                v225 = v98;
                v136 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
                v137 = [v135 errorWithDomain:@"com.apple.photolibraryservices" code:7 userInfo:v136];
                v138 = *(*(a1 + 104) + 8);
                v139 = *(v138 + 40);
                *(v138 + 40) = v137;

                *(*(*(a1 + 112) + 8) + 24) = 0;
LABEL_97:

                objc_autoreleasePoolPop(context);
                goto LABEL_98;
              }

              v23 = [v17 pathForFullsizeRenderVideoFile];
              v94 = PLPhotoSharingGetLog();
              if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_114;
              }

              *buf = 138412290;
              *&buf[4] = v23;
              v95 = v94;
              v96 = "Original is a regular photo, use the full size render video file %@";
            }

            else if (v18)
            {
              if ([v17 isPlayableVideo:0])
              {
                if ([v17 isCloudSharedAsset])
                {
                  [v17 cloudSharedAssetPathForPlaceholderKind:9];
                }

                else
                {
                  [v17 pathForVideoFile];
                }
                v131 = ;
              }

              else
              {
                v131 = [v17 pathForMediumVideoFile];
              }

              v23 = v131;
              v94 = PLPhotoSharingGetLog();
              if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_114;
              }

              *buf = 138412290;
              *&buf[4] = v23;
              v95 = v94;
              v96 = "Original is a video, use the video file %@";
            }

            else
            {
              v199 = 0;
              v132 = [PLResourceChooser fileReservationForLargeDisplayableImageFileForAsset:v17 format:0 allowMetadataSnapshot:0 forceLarge:1 outFilePath:&v199 outImageType:0];
              v23 = v199;
              v94 = PLPhotoSharingGetLog();
              if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_114;
              }

              *buf = 138412290;
              *&buf[4] = v23;
              v95 = v94;
              v96 = "Original is not a video, use the large displayable image file %@";
            }

LABEL_113:
            _os_log_impl(&dword_19BF1F000, v95, OS_LOG_TYPE_DEFAULT, v96, buf, 0xCu);
            goto LABEL_114;
          }

LABEL_98:

          v14 = v177 + 1;
        }

        while (v169 != v177 + 1);
        v140 = [v164 countByEnumeratingWithState:&v202 objects:v226 count:16];
        v169 = v140;
      }

      while (v140);
    }

    [*(a1 + 40) updateCloudLastInterestingChangeDateWithDate:v160];
    [*(a1 + 40) updateCloudLastContributionDateWithDate:v160];
  }

  else
  {
    v141 = MEMORY[0x1E696AEC0];
    v142 = [0 cloudGUID];
    v143 = [v141 stringWithFormat:@"Couldn't find album with cloud GUID %@ to publish assets from", v142];

    v144 = MEMORY[0x1E696ABC0];
    v228 = *MEMORY[0x1E696A278];
    v229 = v143;
    v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v229 forKeys:&v228 count:1];
    v146 = [v144 errorWithDomain:@"com.apple.photolibraryservices" code:6 userInfo:v145];
    v147 = *(*(a1 + 104) + 8);
    v148 = *(v147 + 40);
    *(v147 + 40) = v146;

    *(*(*(a1 + 112) + 8) + 24) = 0;
  }
}

uint64_t __177__PLPhotoSharingHelper_prepareToEnqueueBatchOfOriginalAssetUUIDs_withBatchCommentText_assetsSharingInfos_customExportsInfo_andTrimmedVideoPathInfo_sharedAlbum_isNewAlbum_error___block_invoke_616(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    result = [*(a1 + 40) isUnitTesting];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 64) enqueueCloudSharedAssetsForPublishToServer:*(a1 + 32) inSharedAlbum:*(a1 + 48)];
      if (*(*(*(a1 + 56) + 8) + 40))
      {
        v3 = *(a1 + 64);

        return [v3 publishCloudSharedCommentToServer:?];
      }
    }
  }

  return result;
}

void __177__PLPhotoSharingHelper_prepareToEnqueueBatchOfOriginalAssetUUIDs_withBatchCommentText_assetsSharingInfos_customExportsInfo_andTrimmedVideoPathInfo_sharedAlbum_isNewAlbum_error___block_invoke_582(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 objectForKeyedSubscript:@"useStillImageOnly"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [*(a1 + 32) addObject:v7];
  }
}

void __177__PLPhotoSharingHelper_prepareToEnqueueBatchOfOriginalAssetUUIDs_withBatchCommentText_assetsSharingInfos_customExportsInfo_andTrimmedVideoPathInfo_sharedAlbum_isNewAlbum_error___block_invoke_595(uint64_t a1, uint64_t a2, void *a3)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [*(a1 + 32) path];
    v7 = [*(a1 + 40) path];
    v8 = [v5 stringWithFormat:@"Could not generate trimmed video for %@ to %@ error %@", v6, v7, v4];

    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696AA08];
    v21[0] = *MEMORY[0x1E696A278];
    v21[1] = v10;
    v22[0] = v8;
    v22[1] = v4;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v12 = [v9 errorWithDomain:@"com.apple.photolibraryservices" code:8 userInfo:v11];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *(*(*(a1 + 64) + 8) + 24) = 0;
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else
  {
    v8 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) path];
      v16 = [*(a1 + 40) path];
      *buf = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "generated trimmed video of %@ to %@ ", buf, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

+ (id)photoSharingOriginalFilenameForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 originalFilename];
  v5 = [v3 isVideo];

  if ((v5 & 1) == 0)
  {
    v6 = [v4 stringByDeletingPathExtension];
    if ([v6 length])
    {
      v7 = [v6 stringByAppendingPathExtension:@"JPG"];

      v4 = v7;
    }
  }

  return v4;
}

+ (void)updateCloudSharedAlbumMultipleContributorsStateOnServer:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 cloudGUID];
  v6 = [v4 cloudMultipleContributorsEnabledLocal];
  v7 = [v6 BOOLValue];

  v8 = [v4 cloudMultipleContributorsEnabled];
  v9 = [v8 BOOLValue];

  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v4 cloudGUID];
    v12 = [v4 title];
    *buf = 138413058;
    *v22 = v11;
    *&v22[8] = 2112;
    *&v22[10] = v12;
    *&v22[18] = 1024;
    *&v22[20] = v7;
    v23 = 1024;
    v24 = v9;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "updateCloudSharedAlbumMultipleContributorsStateOnServer:(%@ guid %@ requestedEnabledValue %i previousEnabledValue %i)", buf, 0x22u);
  }

  v13 = [a1 sharingPersonID];
  v14 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v22 = v7;
    *&v22[4] = 2112;
    *&v22[6] = v5;
    *&v22[14] = 2112;
    *&v22[16] = v13;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, " about to call connection setMultipleContributorsEnabled:%i forAlbumWithGUID:%@ personID:%@", buf, 0x1Cu);
  }

  v15 = [MEMORY[0x1E69B14F8] sharedConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__PLPhotoSharingHelper_updateCloudSharedAlbumMultipleContributorsStateOnServer___block_invoke;
  v17[3] = &unk_1E7570E90;
  v19 = v7;
  v20 = v9;
  v18 = v4;
  v16 = v4;
  [v15 setMultipleContributorsEnabled:v7 forAlbumWithGUID:v5 personID:v13 completionBlock:v17];
}

void __80__PLPhotoSharingHelper_updateCloudSharedAlbumMultipleContributorsStateOnServer___block_invoke(uint64_t a1, void *a2)
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

  v5 = (a1 + 40);
  if (v3)
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *v5;
      *buf = 67109120;
      LODWORD(v14) = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "ERROR: couldn't set multipleContributors to %i", buf, 8u);
    }

    v5 = (a1 + 41);
  }

  v8 = *v5;
  v9 = [*(a1 + 32) photoLibrary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PLPhotoSharingHelper_updateCloudSharedAlbumMultipleContributorsStateOnServer___block_invoke_564;
  v10[3] = &unk_1E7576F80;
  v11 = *(a1 + 32);
  v12 = v8;
  [v9 performTransaction:v10 completionHandler:&__block_literal_global_566];
}

void __80__PLPhotoSharingHelper_updateCloudSharedAlbumMultipleContributorsStateOnServer___block_invoke_564(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v2 setCloudMultipleContributorsEnabled:v3];

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v4 setCloudMultipleContributorsEnabledLocal:v5];
}

+ (void)updateCloudSharedAlbumPublicURLStateOnServer:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 cloudGUID];
  v6 = [v4 cloudPublicURLEnabledLocal];
  v7 = [v6 BOOLValue];

  v8 = [v4 cloudPublicURLEnabled];
  v9 = [v8 BOOLValue];

  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v4 cloudGUID];
    v12 = [v4 title];
    *buf = 138413058;
    *v22 = v11;
    *&v22[8] = 2112;
    *&v22[10] = v12;
    *&v22[18] = 1024;
    *&v22[20] = v7;
    v23 = 1024;
    v24 = v9;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "updateCloudSharedAlbumPublicURLStateOnServer:(%@ guid %@ requestedEnabledValue %i previousEnabledValue %i)", buf, 0x22u);
  }

  v13 = [a1 sharingPersonID];
  v14 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v22 = v7;
    *&v22[4] = 2112;
    *&v22[6] = v5;
    *&v22[14] = 2112;
    *&v22[16] = v13;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, " about to call connection setPublicAccessEnabled:%i forAlbumWithGUID:%@ personID:%@", buf, 0x1Cu);
  }

  v15 = [MEMORY[0x1E69B14F8] sharedConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__PLPhotoSharingHelper_updateCloudSharedAlbumPublicURLStateOnServer___block_invoke;
  v17[3] = &unk_1E7570E90;
  v19 = v7;
  v20 = v9;
  v18 = v4;
  v16 = v4;
  [v15 setPublicAccessEnabled:v7 forAlbumWithGUID:v5 personID:v13 completionBlock:v17];
}

void __69__PLPhotoSharingHelper_updateCloudSharedAlbumPublicURLStateOnServer___block_invoke(uint64_t a1, void *a2)
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

  v5 = (a1 + 40);
  if (v3)
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *v5;
      *buf = 67109120;
      LODWORD(v14) = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "ERROR: couldn't set publicAccess to %i", buf, 8u);
    }

    v5 = (a1 + 41);
  }

  v8 = *v5;
  v9 = [*(a1 + 32) photoLibrary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__PLPhotoSharingHelper_updateCloudSharedAlbumPublicURLStateOnServer___block_invoke_560;
  v10[3] = &unk_1E7576F80;
  v11 = *(a1 + 32);
  v12 = v8;
  [v9 performTransaction:v10 completionHandler:&__block_literal_global_562];
}

void __69__PLPhotoSharingHelper_updateCloudSharedAlbumPublicURLStateOnServer___block_invoke_560(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v2 setCloudPublicURLEnabled:v3];

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  [v4 setCloudPublicURLEnabledLocal:v5];
}

+ (void)updateCloudSharedAlbumMetadataOnServer:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v18 = 138412802;
    v19 = v7;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v18, 0x20u);
  }

  if ([v5 kindValue] == 1505)
  {
    v10 = [a1 sharingPersonID];
    v11 = [MEMORY[0x1E6997F88] album];
    v12 = [v5 cloudGUID];
    [v11 setGUID:v12];

    v13 = MEMORY[0x1E695DF20];
    v14 = [v5 title];
    v15 = [v13 dictionaryWithObject:v14 forKey:*MEMORY[0x1E6997FE0]];
    [v11 setMetadata:v15];

    v16 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v11;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, " about to call connection modifyAlbumMetadata:%@ personID:%@", &v18, 0x16u);
    }

    v17 = [MEMORY[0x1E69B14F8] sharedConnection];
    [v17 modifyAlbumMetadata:v11 personID:v10];
  }

  else
  {
    v10 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v5;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Error, album not a shared album %@", &v18, 0xCu);
    }
  }
}

+ (void)deleteCloudSharedAlbumFromServer:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v15 = 138412802;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v15, 0x20u);
  }

  if ([v5 kindValue] == 1505)
  {
    v10 = [a1 sharingPersonID];
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 cloudGUID];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, " about to call connection deleteAlbumWithGUID:%@ personID:%@", &v15, 0x16u);
    }

    v13 = [MEMORY[0x1E69B14F8] sharedConnection];
    v14 = [v5 cloudGUID];
    [v13 deleteAlbumWithGUID:v14 personID:v10];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 _userDidDeleteSharedAlbum:v5];
    }
  }

  else
  {
    v10 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Error, album not a shared album %@", &v15, 0xCu);
    }
  }
}

+ (void)_userDidDeleteSharedAlbum:(id)a3
{
  v5 = a3;
  if (PLIsAssetsd())
  {
    v3 = [v5 uuid];

    if (v3)
    {
      v4 = +[PLNotificationManager sharedManager];
      [v4 noteUserDidDeleteSharedAlbumWithUUID:v3];

      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    [PLUserActivityDaemonJob userDidDeleteSharedAlbum:v5];
  }
}

+ (void)publishCloudSharedAlbumToServer:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v24 = 138412802;
    v25 = v7;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v24, 0x20u);
  }

  if ([v5 kindValue] == 1505)
  {
    v10 = [a1 sharingPersonID];
    v11 = [MEMORY[0x1E6997F88] album];
    v12 = [v5 cloudGUID];
    [v11 setGUID:v12];

    v13 = MEMORY[0x1E695DF20];
    v14 = [v5 title];
    v15 = [v13 dictionaryWithObject:v14 forKey:*MEMORY[0x1E6997FE0]];
    [v11 setMetadata:v15];

    v16 = [v5 cloudPublicURLEnabledLocal];
    LODWORD(v14) = [v16 BOOLValue];

    if (v14)
    {
      [v11 setMetadataValue:@"1" forKey:*MEMORY[0x1E6997FD8]];
    }

    v17 = [v5 cloudMultipleContributorsEnabledLocal];
    v18 = [v17 BOOLValue];

    if (v18)
    {
      [v11 setMetadataValue:@"1" forKey:*MEMORY[0x1E6997FB8]];
    }

    v19 = [MEMORY[0x1E695DF00] date];
    [v11 setMetadataValue:v19 forKey:*MEMORY[0x1E6997FC0]];

    v20 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412546;
      v25 = v11;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, " about to call connection addAlbum:%@ forPersonID:%@", &v24, 0x16u);
    }

    v21 = [MEMORY[0x1E69B14F8] sharedConnection];
    [v21 addAlbum:v11 personID:v10];
    v22 = [v5 title];
    v23 = [v5 cloudGUID];
    [a1 writeAlbumNameBreadCrumb:v22 forAlbumGUID:v23 isUpload:1];
  }

  else
  {
    v10 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = v5;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Error, album not a shared album %@", &v24, 0xCu);
    }
  }
}

+ (void)deleteLocalAlbumsForMSASAlbumsWithGUID:(id)a3 inviterAddress:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "will call +[PLCloudSharedDeleteAlbumsJob deleteLocalAlbumsForMSASAlbumsWithGUID:inviterAddress] with albumGUID %@ inviterAddress %@", &v8, 0x16u);
  }

  [PLCloudSharedDeleteAlbumsJob deleteLocalAlbumForMSASAlbumGUID:v5 inviterAddress:v6];
}

+ (void)deleteLocalAlbumsForMSASAlbumsWithGUIDs:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "will call +[PLCloudSharedDeleteAlbumsJob deleteLocalAlbumsForMSASAlbumGUIDs] with albumGUIDS %@", &v5, 0xCu);
  }

  [PLCloudSharedDeleteAlbumsJob deleteLocalAlbumsForMSASAlbumGUIDs:v3];
}

+ (void)resetAllLocalState
{
  v2 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "will call +[PLCloudSharingResetJob resetAllLocalState]", v3, 2u);
  }

  +[PLCloudSharingResetJob resetAllLocalState];
}

+ (void)updateLocalAlbumMetadataForMSASAlbum:(id)a3 info:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v56 = objc_opt_class();
    v57 = 2112;
    v58 = v6;
    v59 = 2112;
    v60 = v7;
    v9 = v56;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "%@ updateLocalAlbumMetadataForMSASAlbum %@ info %@", buf, 0x20u);
  }

  v10 = [v6 metadata];
  v11 = [v10 objectForKey:*MEMORY[0x1E6997FE0]];

  if (v11)
  {
    v12 = [v6 metadata];
    v13 = [v12 objectForKey:*MEMORY[0x1E6997FD0]];

    v14 = [v6 ownerEmail];
    v15 = v14;
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    v17 = v16;
    if (v17)
    {
      v18 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v17;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Checking blocked state for inviter %@.", buf, 0xCu);
      }

      CMFItemFromString = CreateCMFItemFromString();
      IsItemBlocked = CMFBlockListIsItemBlocked();
      CFRelease(CMFItemFromString);
      v21 = PLPhotoSharingGetLog();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (IsItemBlocked)
      {
        if (v22)
        {
          *buf = 138412290;
          v56 = v17;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring: Not calling updateSharedAlbumMetadata as inviter %@ is blocked.", buf, 0xCu);
        }

LABEL_52:

        goto LABEL_53;
      }

      if (v22)
      {
        *buf = 138412290;
        v56 = v17;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "inviter %@ is not blocked.", buf, 0xCu);
      }
    }

    v50 = v17;
    v23 = [MEMORY[0x1E695DF90] dictionary];
    v21 = v23;
    if (v7)
    {
      [v23 setObject:v7 forKey:@"mstreamd-info"];
    }

    v24 = [v6 GUID];

    if (v24)
    {
      v25 = [v6 GUID];
      [v21 setObject:v25 forKey:@"album-guid"];
    }

    [v6 metadata];
    v54 = v53 = v15;
    if (v54)
    {
      [v21 setObject:v54 forKey:@"album-metadata"];
      [v21 setObject:v11 forKey:@"album-name"];
      v26 = [v6 GUID];
      [a1 writeAlbumNameBreadCrumb:v11 forAlbumGUID:v26 isUpload:0];

      v27 = [v54 objectForKey:*MEMORY[0x1E6997FD8]];
      v28 = v27;
      if (v27)
      {
        v29 = [v27 isEqualToString:@"1"];
        v30 = [MEMORY[0x1E696AD98] numberWithBool:v29];
        [v21 setObject:v30 forKey:@"album-isPublic"];

        if (v29)
        {
          v31 = [v6 publicURLString];
          if (v31)
          {
            [v21 setObject:v31 forKey:@"album-publicURLString"];
          }
        }
      }

      v32 = [v54 objectForKey:*MEMORY[0x1E6997FB8]];
      v33 = v32;
      if (v32)
      {
        v34 = [v32 isEqualToString:@"1"];
        v35 = [MEMORY[0x1E696AD98] numberWithBool:v34];
        [v21 setObject:v35 forKey:@"album-allowsMultipleContributors"];
      }

      v36 = [v54 objectForKey:*MEMORY[0x1E6997FC0]];
      if (v36)
      {
        [v21 setObject:v36 forKey:@"album-creationDate"];
      }

      v15 = v53;
    }

    v51 = v11;
    v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "relationshipState")}];
    [v21 setObject:v37 forKey:@"album-relationshipState"];

    v38 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isFamilySharedAlbum")}];
    [v21 setObject:v38 forKey:@"album-isFamilySharedAlbum"];

    v39 = [MEMORY[0x1E695DF90] dictionary];
    v40 = v39;
    if (v15)
    {
      [v39 setObject:v15 forKey:@"kPLAlbumOwnerEmailKey"];
    }

    v41 = [v6 ownerFirstName];
    if (v41)
    {
      [v40 setObject:v41 forKey:@"kPLAlbumOwnerFirstNameKey"];
    }

    v42 = [v6 ownerLastName];
    if (v42)
    {
      [v40 setObject:v42 forKey:@"kPLAlbumOwnerLastNameKey"];
    }

    v43 = [v6 ownerFullName];
    if (v43)
    {
      [v40 setObject:v43 forKey:@"kPLAlbumOwnerFullNameKey"];
    }

    v52 = v7;
    v44 = [v6 ownerPersonID];
    if (v44)
    {
      [v40 setObject:v44 forKey:@"kPLAlbumOwnerHashedPersonIDKey"];
    }

    v45 = [v6 ownerIsWhitelisted];
    v46 = [MEMORY[0x1E696AD98] numberWithBool:v45];
    [v40 setObject:v46 forKey:@"kPLAlbumOwnerIsWhitelistedKey"];

    v47 = [v6 subscriptionDate];
    if (v47)
    {
      [v40 setObject:v47 forKey:@"kPLAlbumOwnerSubscriptionDateKey"];
    }

    if (v40)
    {
      [v21 setObject:v40 forKey:@"kPLAlbumOwnerDictionaryKey"];
    }

    if (+[PLPhotoSharingHelper debugAutoAcceptInvitation])
    {
      v48 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v21 setObject:v48 forKey:@"album-autoAcceptInvitation"];
    }

    v49 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v21;
      _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_DEFAULT, "about to call updateSharedAlbumMetadata with arguments %@", buf, 0xCu);
    }

    [PLCloudSharedUpdateAlbumMetadataJob updateAlbumMetadata:v21];
    v11 = v51;
    v7 = v52;
    v15 = v53;
    v17 = v50;
    goto LABEL_52;
  }

  v13 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring: Not calling updateSharedAlbumMetadata as we don't yet have an album name.", buf, 2u);
  }

LABEL_53:
}

+ (id)errorForReachingMaxSubscriptionLimitWithAlbumTitle:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = PLServicesLocalizedFrameworkString();
    v5 = PFStringWithValidatedFormat();
  }

  else
  {
    v5 = PLServicesLocalizedFrameworkString();
  }

  v6 = PLServicesLocalizedFrameworkString();
  v13 = +[PLPhotoSharingHelper maxSubscribedStreams];
  v7 = PFStringWithValidatedFormat();

  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A588];
  v14[0] = *MEMORY[0x1E696A578];
  v14[1] = v9;
  v15[0] = v5;
  v15[1] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:{2, v13}];
  v11 = [v8 errorWithDomain:@"com.apple.photolibraryservices" code:4 userInfo:v10];

  return v11;
}

+ (id)_localizationKeyForAssets:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = [MEMORY[0x1E695DFB8] orderedSetWithSet:v3];

  PLAssetCountsByType();
  if (v4 == 1)
  {
    v6 = @"PHOTO";
    v7 = @"VIDEO";
    v8 = 0;
  }

  else
  {
    v6 = @"ITEMS";
    v7 = @"PHOTOS";
    v8 = v4 == 0;
  }

  if (v8)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

+ (BOOL)canSetUserCloudSharedLiked:(BOOL)a3 forAssets:(id)a4 error:(id *)a5
{
  v6 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (v6)
  {
    v9 = +[PLPhotoSharingHelper maxCommentsPerAsset];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v11)
    {
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v10);
          }

          if ([*(*(&v25 + 1) + 8 * i) totalCommentsCount] >= v9)
          {
            v15 = [a1 _localizationKeyForAssets:v10];
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CANNOT_LIKE_%@_ERROR_DESCRIPTION", v15];
            v17 = PLServicesLocalizedFrameworkString();

            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CANNOT_LIKE_%@_LIMIT_REACHED_DESCRIPTION", v15];
            v19 = PLServicesLocalizedFrameworkString();

            v20 = MEMORY[0x1E696ABC0];
            v21 = *MEMORY[0x1E696A588];
            v29[0] = *MEMORY[0x1E696A578];
            v29[1] = v21;
            v30[0] = v17;
            v30[1] = v19;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
            v11 = [v20 errorWithDomain:@"com.apple.photolibraryservices" code:3 userInfo:v22];

            v14 = 0;
            goto LABEL_13;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = 1;
LABEL_13:

    if (a5)
    {
      v23 = v11;
      *a5 = v11;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

+ (BOOL)canAcceptPendingInvitationForAlbum:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    [v6 photoLibrary];
  }

  else
  {
    +[PLPhotoLibrary cloudSharingPhotoLibrary];
  }
  v8 = ;
  v9 = [PLPhotoSharingHelper hasReachedLimitOfSubscribedStreamsInLibrary:v8];
  if (v9)
  {
    v10 = [v7 localizedTitle];
    v11 = [a1 errorForReachingMaxSubscriptionLimitWithAlbumTitle:v10];

    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = 0;
  if (a4)
  {
LABEL_8:
    v12 = v11;
    *a4 = v11;
  }

LABEL_9:

  return !v9;
}

+ (BOOL)canCreateStreamInPhotoLibrary:(id)a3 error:(id *)a4
{
  v32[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (+[PLPhotoSharingHelper _isUserLoggedIntoiCloud])
  {
    v7 = [v6 pathManager];
    v8 = [v7 libraryURL];
    v9 = [a1 sharedStreamsEnabledForPhotoLibraryURL:v8];

    if (v9)
    {
      if (![a1 hasReachedLimitOfOwnedStreamsInLibrary:v6])
      {
        v22 = 0;
        v23 = 1;
        if (!a4)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v10 = PLServicesLocalizedFrameworkString();
      v11 = PLServicesLocalizedFrameworkString();
      v26 = +[PLPhotoSharingHelper maxOwnedStreams];
      v12 = PFStringWithValidatedFormat();

      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A588];
      v27[0] = *MEMORY[0x1E696A578];
      v27[1] = v14;
      v28[0] = v10;
      v28[1] = v12;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:{2, v26}];
      v16 = v13;
      v17 = 2;
    }

    else
    {
      v10 = PLServicesLocalizedFrameworkString();
      v12 = PLServicesLocalizedFrameworkString();
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A588];
      v29[0] = *MEMORY[0x1E696A578];
      v29[1] = v21;
      v30[0] = v10;
      v30[1] = v12;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
      v16 = v20;
      v17 = 1;
    }
  }

  else
  {
    v10 = PLServicesLocalizedFrameworkString();
    v12 = PLServicesLocalizedFrameworkString();
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A588];
    v31[0] = *MEMORY[0x1E696A578];
    v31[1] = v19;
    v32[0] = v10;
    v32[1] = v12;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v16 = v18;
    v17 = 0;
  }

  v22 = [v16 errorWithDomain:@"com.apple.photolibraryservices" code:v17 userInfo:v15];

  v23 = 0;
  if (a4)
  {
LABEL_8:
    v24 = v22;
    *a4 = v22;
  }

LABEL_9:

  return v23;
}

+ (BOOL)_isUserLoggedIntoiCloud
{
  v2 = +[PLAccountStore pl_sharedAccountStore];
  v3 = [v2 cachedPrimaryAppleAccount];

  LOBYTE(v2) = [v3 isAuthenticated];
  return v2;
}

+ (BOOL)hasReachedLimitOfSubscribedStreamsInLibrary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 maxSubscribedStreams];
  v6 = [v4 albumListForContentMode:1];
  v7 = [v6 albums];
  v8 = [v7 count];

  if (v8 >= v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v6 albums];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          if ([v16 conformsToProtocol:&unk_1F0FFFF38])
          {
            if ([v16 cloudRelationshipStateValue] == 2 && ++v13 >= v5)
            {
              v9 = 1;
              goto LABEL_15;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_15:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)hasReachedLimitOfOwnedStreamsInLibrary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 maxOwnedStreams];
  v6 = [v4 albumListForContentMode:1];
  v7 = [v6 albums];
  v8 = [v7 count];

  if (v8 >= v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v6 albums];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v13 += [*(*(&v17 + 1) + 8 * i) isOwnedCloudSharedAlbum];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v9 = v13 >= v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int64_t)maxVideoLengthForPublishing
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a1 _serverLimitValueForKey:@"com.apple.sharedstreams.config.maxVideoDurationInSeconds" withDefaultResult:121];
  v3 = maxVideoLengthForPublishing_debug_max_video_length;
  if (maxVideoLengthForPublishing_debug_max_video_length < 0)
  {
    keyExistsAndHasValidFormat = 0;
    CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
    maxVideoLengthForPublishing_debug_max_video_length = CFPreferencesGetAppIntegerValue(@"PLDebugSharedVideoMaxLength", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v4 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v8 = maxVideoLengthForPublishing_debug_max_video_length;
        _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "using PLDebugSharedVideoMaxLength value of %ld", buf, 0xCu);
      }

      v3 = maxVideoLengthForPublishing_debug_max_video_length;
    }

    else
    {
      v3 = 0;
      maxVideoLengthForPublishing_debug_max_video_length = 0;
    }
  }

  if (v3 <= 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

+ (CGSize)videoPosterFrameDimension
{
  v2 = [a1 serverSideConfigurationDictionary];
  v3 = [v2 objectForKey:@"com.apple.sharedstreams.config.dimensions.videoposterframe"];

  if (v3)
  {
    v4 = [v3 componentsSeparatedByString:@":"];
    if ([v4 count] == 2)
    {
      v5 = [v4 objectAtIndex:0];
      [v5 floatValue];
      v7 = v6;

      v8 = [v4 objectAtIndex:1];
      [v8 floatValue];
      v10 = v9;

      v11 = v7 > 0.0;
      v12 = v10 > 0.0;
      v13 = v7;
      if (v11 && v12)
      {
        v14 = v10;
      }

      else
      {
        v14 = 720.0;
      }

      if (v11 && v12)
      {
        v15 = v13;
      }

      else
      {
        v15 = 1280.0;
      }
    }

    else
    {
      v15 = 1280.0;
      v14 = 720.0;
    }
  }

  else
  {
    v15 = 1280.0;
    v14 = 720.0;
  }

  v16 = v15;
  v17 = v14;
  result.height = v17;
  result.width = v16;
  return result;
}

+ (int64_t)_serverLimitValueForKey:(id)a3 withDefaultResult:(int64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 serverSideConfigurationDictionary];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    a4 = [v8 integerValue];
  }

  else
  {
    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2048;
      v14 = a4;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "(server-configuration) ERROR: failed to get server limit for %@, returning default value %ld", &v11, 0x16u);
    }

    if ((_serverLimitValueForKey_withDefaultResult__hasRequestedServerLimitsAtLeastOnce & 1) == 0)
    {
      [a1 updateSharedAlbumsCachedServerConfigurationLimits];
      _serverLimitValueForKey_withDefaultResult__hasRequestedServerLimitsAtLeastOnce = 1;
    }
  }

  return a4;
}

+ (id)serverSideConfigurationDictionary
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = _serverSideConfigurationDictionary;
  if (!_serverSideConfigurationDictionary)
  {
    v4 = [v2 _pathToServerConfigurationCache];
    if ([MEMORY[0x1E69BF2F0] isEntitledForPhotoKit])
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v4];
      v6 = _serverSideConfigurationDictionary;
      _serverSideConfigurationDictionary = v5;
    }

    else
    {
      v7 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "(server-configuration) ERROR: Unable to read serverconfiguration; missing required entitlement", v10, 2u);
      }
    }

    v3 = _serverSideConfigurationDictionary;
  }

  v8 = v3;
  objc_sync_exit(v2);

  return v8;
}

+ (void)_resetServerSideConfigurationDictionary
{
  obj = a1;
  objc_sync_enter(obj);
  v2 = _serverSideConfigurationDictionary;
  _serverSideConfigurationDictionary = 0;

  objc_sync_exit(obj);
}

+ (void)updateSharedAlbumsCachedServerConfigurationLimits
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = objc_opt_class();
    v4 = v14;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@ (server-configuration) updateSharedAlbumsCachedServerConfigurationLimits", buf, 0xCu);
  }

  v5 = [a1 sharingPersonID];
  if (v5)
  {
    if (PLIsAssetsd())
    {
      v6 = [MEMORY[0x1E69B14F8] sharedConnection];
      v7 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v5;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "(server-configuration) about to call connection serverSideConfigurationDictionaryForPersonID:%@", buf, 0xCu);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __73__PLPhotoSharingHelper_updateSharedAlbumsCachedServerConfigurationLimits__block_invoke;
      v10[3] = &unk_1E7570E68;
      v11 = v5;
      v12 = a1;
      [v6 serverSideConfigurationDictionaryForPersonID:v11 completionBlock:v10];
      v8 = v11;
    }

    else
    {
      v6 = +[PLPhotoLibrary cloudSharingPhotoLibrary];
      v8 = [v6 assetsdClient];
      v9 = [v8 cloudInternalClient];
      [v9 updateSharedAlbumsCachedServerConfigurationLimits];
    }
  }
}

void __73__PLPhotoSharingHelper_updateSharedAlbumsCachedServerConfigurationLimits__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412546;
    v23 = v5;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "(server-configuration) serverSideConfigurationDictionaryForPersonID:%@ returned %@", buf, 0x16u);
  }

  v6 = [*(a1 + 40) _pathToServerConfigurationCache];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  [v7 removeItemAtPath:v6 error:0];
  v8 = MEMORY[0x1E695DFF8];
  v9 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v10 = [v9 photoDirectoryWithType:23];
  v11 = [v8 fileURLWithPath:v10 isDirectory:1];

  v21 = 0;
  v12 = [v11 getResourceValue:&v21 forKey:*MEMORY[0x1E695DB20] error:0];
  v13 = v21;
  v14 = 0;
  if ((v12 & 1) == 0)
  {
    v20 = 0;
    v15 = [v7 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v20];
    v14 = v20;
    if ((v15 & 1) == 0)
    {
      v16 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v11 path];
        *buf = 138412546;
        v23 = v17;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "(server-configuration) ERROR: Unable to create directory %@: %@", buf, 0x16u);
      }
    }
  }

  if (v3)
  {
    v18 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:100 options:0 error:0];
  }

  else
  {
    v18 = 0;
  }

  if (([v18 writeToFile:v6 options:1073741825 error:0] & 1) == 0)
  {
    v19 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v23 = v3;
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "(server-configuration) ERROR: Unable to write serverconfiguration %@ to file %@: %@", buf, 0x20u);
    }
  }

  [*(a1 + 40) _resetServerSideConfigurationDictionary];
}

+ (id)streamdVideoCache
{
  pl_dispatch_once();
  v2 = streamdVideoCache_cache;

  return v2;
}

void __41__PLPhotoSharingHelper_streamdVideoCache__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v9 = 0;
  v1 = [v0 photoDirectoryWithType:25 createIfNeeded:1 error:&v9];
  v2 = v9;

  if (v2)
  {
    v3 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v1;
      v12 = 2112;
      v13 = v2;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Failed to create streamdVideoCache %@: %@", buf, 0x16u);
    }
  }

  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1 isDirectory:0];
  v5 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v1;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Setting AVAsset cache to %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E6987E30] assetCacheForProgressiveDownloadAndHTTPLiveStreamingWithURL:v4];
  v7 = streamdVideoCache_cache;
  streamdVideoCache_cache = v6;

  v8 = [MEMORY[0x1E69BF208] diskSpaceAvailableForPath:v1];
  [streamdVideoCache_cache setMaxSize:{fmin(v8 * 0.1, 1073741820.0)}];
  [streamdVideoCache_cache enableAutomaticCacheSizeManagement];
  [streamdVideoCache_cache setMaxEntrySize:52428800];
}

+ (id)_pathToServerConfigurationCache
{
  v2 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v3 = [v2 photoDirectoryWithType:23 additionalPathComponents:@"serverconfiguration"];

  return v3;
}

id __44__PLPhotoSharingHelper_initializeMSPlatform__block_invoke()
{
  v0 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_19BF1F000, v0, OS_LOG_TYPE_DEFAULT, "initializeMSPlatform", v2, 2u);
  }

  return [MEMORY[0x1E69B14F8] sharedConnection];
}

+ (void)forgetSharingPersonID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = NSStringFromSelector(a2);
    v14 = 138412802;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "%@ %@ %@", &v14, 0x20u);
  }

  v9 = [MEMORY[0x1E69B14F8] sharedConnection];
  v10 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "about to call connection setIsUIForeground:NO personID:%@", &v14, 0xCu);
  }

  [v9 setIsUIForeground:0 forPersonID:v4];
  v11 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "calling MSASConnection forgetEverythingAboutPersonID %@", &v14, 0xCu);
  }

  [v9 forgetEverythingAboutPersonID:v4];
  v12 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = @"/tmp/_pollStreams.plist";
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "removing %@", &v14, 0xCu);
  }

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  [v13 removeItemAtPath:@"/tmp/_pollStreams.plist" error:0];
}

+ (void)retryOutstandingActivities
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "%@ %@", &v12, 0x16u);
  }

  v8 = [a1 sharingPersonID];
  if (v8)
  {
    v9 = [MEMORY[0x1E69B14F8] sharedConnection];
    if (objc_opt_respondsToSelector())
    {
      v10 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "about to call connection retryOutstandingActivitiesForPersonID:%@", &v12, 0xCu);
      }

      [v9 retryOutstandingActivitiesForPersonID:v8];
    }

    else if (objc_opt_respondsToSelector())
    {
      v11 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "about to call connection retryOutstandingActivities", &v12, 2u);
      }

      [v9 retryOutstandingActivities];
    }
  }

  else
  {
    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "no sharingPersonID, skipping retrying outstanding activities", &v12, 2u);
    }
  }
}

+ (void)pollForAlbumListUpdatesIfNecessary
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v3 objectForKey:@"kPLSharedAlbumNextPollDate"];
  if (!v5 || ([v4 timeIntervalSinceDate:v5], v6 > 0.0))
  {
    v7 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Polling new shared album content", v9, 2u);
    }

    [a1 pollForAlbumListUpdatesWithRefreshResetSync:0];
    v8 = [v4 dateByAddingTimeInterval:{objc_msgSend(a1, "_serverLimitValueForKey:withDefaultResult:", @"com.apple.sharedstreams.config.minIntervalBetweenPollInSeconds", 864000)}];

    [v3 setObject:v8 forKey:@"kPLSharedAlbumNextPollDate"];
    v5 = v8;
  }
}

+ (void)pollForAlbumListUpdatesWithRefreshResetSync:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v6 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    v14 = 138412546;
    *v15 = v7;
    *&v15[8] = 2112;
    *&v15[10] = v9;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@", &v14, 0x16u);
  }

  v10 = [a1 sharingPersonID];
  if (v10)
  {
    v11 = [MEMORY[0x1E69B14F8] sharedConnection];
    v12 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109378;
      *v15 = v3;
      *&v15[4] = 2112;
      *&v15[6] = v10;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, " about to call connection refreshResetSync:%d personID:%@ in pollForAlbumListUpdates", &v14, 0x12u);
    }

    v13 = [a1 sharingPersonID];
    [v11 refreshResetSync:v3 personID:v13];
  }

  else
  {
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "no sharingPersonID, skipping polling", &v14, 2u);
    }
  }
}

+ (BOOL)accountMatchesEmail:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([objc_opt_class() _sharedStreamsEnabled])
  {
    v4 = +[PLAccountStore pl_sharedAccountStore];
    v5 = [v4 cachedPrimaryAppleAccount];
    v6 = [v5 aa_primaryEmail];

    if (([v6 isEqualToString:v3]& 1) != 0)
    {
LABEL_16:
      v9 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v3;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "%@ email matched icloud user email ", buf, 0xCu);
      }

      LOBYTE(v10) = 1;
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = +[PLAccountStore pl_sharedAccountStore];
      v8 = [v7 cachedPrimaryAppleAccount];
      v9 = [v8 aa_appleIDAliases];

      v10 = [v9 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v10)
      {
        v11 = *v15;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v9);
            }

            if ([*(*(&v14 + 1) + 8 * i) isEqualToString:v3])
            {

              goto LABEL_16;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v14 objects:v20 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  else
  {
    v6 = PLMyPhotoStreamGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Can't return sharingPersonEmailAddress because no Apple Account has Photo Sharing enabled", buf, 2u);
    }

    LOBYTE(v10) = 0;
  }

  return v10;
}

+ (id)sharingDisplayNameIncludingEmail:(BOOL)a3 allowsEmail:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[PLAccountStore pl_sharedAccountStore];
  v7 = [v6 cachedPrimaryAppleAccount];

  v8 = [v7 aa_firstName];
  v9 = [v7 aa_lastName];
  v10 = [v7 userFullName];
  v11 = [v7 aa_primaryEmail];
  v12 = v11;
  if (v4)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F0F06D80;
  }

  v14 = v13;
  if ([v10 length])
  {
    v15 = v10;
    goto LABEL_6;
  }

  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v22 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v22 setGivenName:v8];
    [v22 setFamilyName:v9];
    v16 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v22 style:0 options:0];

    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ([v8 length])
  {
    v15 = v8;
LABEL_6:
    v16 = v15;
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_7:
    if ([(__CFString *)v14 length])
    {
      v17 = PLServicesLocalizedFrameworkString();
      v18 = PFStringWithValidatedFormat();

      v16 = v18;
    }

    goto LABEL_9;
  }

  if (![v9 length])
  {
    v16 = v14;
    goto LABEL_9;
  }

  v16 = v9;
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = &stru_1F0F06D80;
  }

  v20 = v19;

  return v19;
}

+ (id)sharingLastName
{
  if ([a1 _sharedStreamsEnabled])
  {
    v2 = +[PLAccountStore pl_sharedAccountStore];
    v3 = [v2 cachedPrimaryAppleAccount];
    v4 = [v3 aa_lastName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sharingFirstName
{
  if ([a1 _sharedStreamsEnabled])
  {
    v2 = +[PLAccountStore pl_sharedAccountStore];
    v3 = [v2 cachedPrimaryAppleAccount];
    v4 = [v3 aa_firstName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sharingUsername
{
  if ([a1 _sharedStreamsEnabled])
  {
    v2 = +[PLAccountStore pl_sharedAccountStore];
    v3 = [v2 cachedPrimaryAppleAccount];
    v4 = [v3 aa_formattedUsername];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)sharedStreamsExplictlyDisabledForPhotoLibraryURL:(id)a3
{
  v4 = [MEMORY[0x1E69BF2A0] isSystemPhotoLibraryURL:a3];
  if (v4)
  {

    LOBYTE(v4) = [a1 _sharedStreamsExplicitlyDisabled];
  }

  return v4;
}

+ (BOOL)sharedStreamsEnabledForPhotoLibraryURL:(id)a3
{
  v4 = [MEMORY[0x1E69BF2A0] isSystemPhotoLibraryURL:a3];
  if (v4)
  {

    LOBYTE(v4) = [a1 _sharedStreamsEnabled];
  }

  return v4;
}

+ (void)clearCachedAccountState
{
  v3 = +[PLAccountStore pl_sharedAccountStore];
  [v3 clearCachedProperties];

  [a1 accountSettingsChanged];
}

+ (void)photosPreferencesChanged
{
  __debugDownloadThumbnailsOnly = -1;
  __debugDownloadMetadataOnly = -1;
  __debugDownloadAllDerivatives = -1;
}

+ (void)accountSettingsChanged
{
  v3 = PLMyPhotoStreamGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Clearing cached PLPhotoSharingHelper state", v4, 2u);
  }

  __isSharingBreadcrumbDebuggingEnabled = -1;
  _sharedStreamsEnabled = -1;
  _sharedStreamsExplicitlyDisabled = -1;
  [a1 _resetServerSideConfigurationDictionary];
}

@end