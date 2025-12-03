@interface VUIDownloadManager
+ (id)sharedInstance;
- (BOOL)_anyDownloadsFailedDueToInvalidUserToken:(id)token;
- (NSArray)downloads;
- (VUIDownloadManager)init;
- (id)_alertControllerForFailedDownloads:(id)downloads outIncludeGoToSettingsButton:(BOOL *)button;
- (id)_createMediaItemForVideoManagedObject:(id)object isForStartingDownload:(BOOL)download downloadQuality:(int64_t)quality;
- (id)_failedDownloadsNeedingDialog;
- (id)existingDownloadForAdamID:(id)d;
- (void)_activeAccountDidChange:(id)change;
- (void)_appDidStartRunning:(id)running;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_configureDownloadFromUserPrefs:(id)prefs allowCellular:(BOOL)cellular quality:(int64_t)quality prefer3DOrImmersiveDownload:(BOOL)download;
- (void)_createVideoRatingImageManagedObject:(id)object imageType:(unint64_t)type formatURL:(id)l;
- (void)_downloadQueueManagerHandleErrorsIfNeeded;
- (void)_isPlaybackUIBeingShownDidChange:(id)change;
- (void)_loadImageForImageInfoManagedObject:(id)object imageType:(unint64_t)type download:(id)download useForStorageSettings:(BOOL)settings forceReload:(BOOL)reload;
- (void)_loadImageForSeriesManagedObject:(id)object imageType:(unint64_t)type download:(id)download useForStorageSettings:(BOOL)settings forceReload:(BOOL)reload;
- (void)_loadImageForVideoManagedObject:(id)object download:(id)download;
- (void)_loadImageForVideoManagedObject:(id)object imageType:(unint64_t)type download:(id)download useForStorageSettings:(BOOL)settings forceReload:(BOOL)reload;
- (void)_loadStorageSettingsImageFromMediaLibraryForVideoManagedObject:(id)object download:(id)download;
- (void)_mediaItemMetadataDidChange:(id)change;
- (void)_notifyDelegatesThatDownloadsDidChange;
- (void)_notifyDelegatesThatManagerDidBecomeInitialized;
- (void)_preflightDownloadForPresentingViewController:(id)controller contentAllowsCellularDownload:(BOOL)download completion:(id)completion;
- (void)_showDownloadErrorDialogIfAppropriate;
- (void)_showDownloadErrorDialogIfAppropriateAfterDelay;
- (void)_showDownloadErrorDialogIfAppropriateAllowingSignInPrompt:(BOOL)prompt;
- (void)_updateCoverArtForVideos:(id)videos;
- (void)_updateCoverArtImagesIfNecessary;
- (void)addDelegate:(id)delegate;
- (void)addDownloadForVideoManagedObject:(id)object allowCellular:(BOOL)cellular quality:(int64_t)quality shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)failure prefer3DOrImmersiveDownload:(BOOL)download;
- (void)addDownloadOrRenewKeysForMediaItem:(id)item allowCellular:(BOOL)cellular quality:(int64_t)quality shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)failure;
- (void)cancelAndRemoveDownloadForMediaItem:(id)item;
- (void)cancelDownloadForAdamID:(id)d;
- (void)dealloc;
- (void)download:(id)download didChangeStateTo:(int64_t)to;
- (void)download:(id)download didReceiveTaskIdentifier:(id)identifier;
- (void)download:(id)download processFinishedDownloadWithCompletion:(id)completion;
- (void)download:(id)download willDownloadToURL:(id)l;
- (void)download:(id)download willDownloadVariants:(id)variants;
- (void)downloadSession:(id)session didAddRestoredDownloads:(id)downloads;
- (void)fetchNewKeysForDownloadedVideoManagedObject:(id)object;
- (void)initializeDownloadManager;
- (void)performBatchAddDownloadsWithBlock:(id)block;
- (void)preflightDownloadForContentRating:(id)rating presentingViewController:(id)controller contentAllowsCellularDownload:(BOOL)download completion:(id)completion;
- (void)preflightDownloadForLibraryMediaEntity:(id)entity presentingViewController:(id)controller contentAllowsCellularDownload:(BOOL)download completion:(id)completion;
- (void)preflightDownloadForTVPMediaItem:(id)item presentingViewController:(id)controller contentAllowsCellularDownload:(BOOL)download completion:(id)completion;
- (void)preflightDownloadForVideosPlayable:(id)playable presentingViewController:(id)controller contentAllowsCellularDownload:(BOOL)download completion:(id)completion;
- (void)removeDelegate:(id)delegate;
@end

@implementation VUIDownloadManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_30 != -1)
  {
    +[VUIDownloadManager sharedInstance];
  }

  v3 = sharedInstance_instance_5;

  return v3;
}

void __36__VUIDownloadManager_sharedInstance__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIDownloadManager");
  v1 = sLogObject_20;
  sLogObject_20 = v0;

  v2 = objc_alloc_init(VUIDownloadManager);
  v3 = sharedInstance_instance_5;
  sharedInstance_instance_5 = v2;
}

- (VUIDownloadManager)init
{
  v24 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = VUIDownloadManager;
  v2 = [(VUIDownloadManager *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableDownloads = v2->_mutableDownloads;
    v2->_mutableDownloads = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    failedDownloads = v2->_failedDownloads;
    v2->_failedDownloads = v5;

    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    delegates = v2->_delegates;
    v2->_delegates = weakObjectsPointerArray;

    if ([MEMORY[0x1E69DF6D0] isTVApp])
    {
      v9 = sLogObject_20;
      if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = +[VUITVAppLauncher sharedInstance];
        isAppRunning = [v11 isAppRunning];
        v13 = @"NO";
        if (isAppRunning)
        {
          v13 = @"YES";
        }

        *buf = 138412290;
        v23 = v13;
        _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIDownloadManager init - is app running: %@", buf, 0xCu);
      }
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__appDidStartRunning_ name:@"VUITVAppLauncherDidStartRunningNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0];
    v17 = +[VUIPlaybackManager sharedInstance];
    [defaultCenter2 addObserver:v2 selector:sel__isPlaybackUIBeingShownDidChange_ name:v16 object:v17];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__activeAccountDidChange_ name:*MEMORY[0x1E69D4A40] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  return v2;
}

- (void)initializeDownloadManager
{
  v26 = *MEMORY[0x1E69E9840];
  [(VUIDownloadManager *)self setHasBeenInitialized:1];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary = [v4 sidebandMediaLibrary];
  v6 = [sidebandMediaLibrary videosWithDownloadState:1 entitlementTypes:0 sortDescriptors:0 useMainThreadContext:1];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        adamID = [v11 adamID];
        if ([adamID length])
        {
          v13 = [(VUIDownloadManager *)self _createMediaItemForVideoManagedObject:v11 isForStartingDownload:0 downloadQuality:1];
          if (v13)
          {
            [v3 addObject:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v14 = sLogObject_20;
  if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [v3 count];
    *buf = 134217984;
    v24 = v16;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Found %lu media item(s) that were previously being downloaded (according to database)", buf, 0xCu);
  }

  mEMORY[0x1E69D5A18] = [MEMORY[0x1E69D5A18] sharedInstance];
  [mEMORY[0x1E69D5A18] setDelegate:self];

  mEMORY[0x1E69D5A18]2 = [MEMORY[0x1E69D5A18] sharedInstance];
  [mEMORY[0x1E69D5A18]2 initializeWithDownloadingMediaItems:v3];

  [(VUIDownloadManager *)self _updateCoverArtImagesIfNecessary];
}

- (void)_notifyDelegatesThatManagerDidBecomeInitialized
{
  delegates = [(VUIDownloadManager *)self delegates];
  v4 = [delegates count];

  if (v4)
  {
    v5 = 0;
    do
    {
      delegates2 = [(VUIDownloadManager *)self delegates];
      v7 = [delegates2 pointerAtIndex:v5];

      if (v7)
      {
        v8 = v7;
        if (objc_opt_respondsToSelector())
        {
          [v8 downloadManagerDidBecomeInitialized:self];
        }
      }

      ++v5;
      delegates3 = [(VUIDownloadManager *)self delegates];
      v10 = [delegates3 count];
    }

    while (v5 < v10);
  }
}

- (NSArray)downloads
{
  mutableDownloads = [(VUIDownloadManager *)self mutableDownloads];
  v3 = [mutableDownloads copy];

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIDownloadManager;
  [(VUIDownloadManager *)&v4 dealloc];
}

- (void)addDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    delegates = [(VUIDownloadManager *)self delegates];
    [delegates addPointer:delegateCopy];
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    delegates = [(VUIDownloadManager *)self delegates];
    v5 = [delegates count];

    if (v5)
    {
      v6 = 0;
      while (1)
      {
        delegates2 = [(VUIDownloadManager *)self delegates];
        v8 = [delegates2 pointerAtIndex:v6];

        if (v8 == delegateCopy)
        {
          break;
        }

        ++v6;
        delegates3 = [(VUIDownloadManager *)self delegates];
        v10 = [delegates3 count];

        if (v6 >= v10)
        {
          goto LABEL_8;
        }
      }

      delegates4 = [(VUIDownloadManager *)self delegates];
      [delegates4 removePointerAtIndex:v6];
    }
  }

LABEL_8:
}

- (void)addDownloadForVideoManagedObject:(id)object allowCellular:(BOOL)cellular quality:(int64_t)quality shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)failure prefer3DOrImmersiveDownload:(BOOL)download
{
  downloadCopy = download;
  failureCopy = failure;
  cellularCopy = cellular;
  v43[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v13 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary = [v13 sidebandMediaLibrary];
  v15 = [sidebandMediaLibrary mainContextVideoForVideo:objectCopy];

  if (v15)
  {
    adamID = [v15 adamID];
    v17 = [(VUIDownloadManager *)self existingDownloadForAdamID:adamID];

    if (v17)
    {
      if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
      {
        [VUIDownloadManager addDownloadForVideoManagedObject:allowCellular:quality:shouldMarkAsDeletedOnCancellationOrFailure:prefer3DOrImmersiveDownload:];
      }
    }

    else
    {
      v18 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary2 = [v18 sidebandMediaLibrary];
      [sidebandMediaLibrary2 removeDownloadedMediaForVideoManagedObject:v15 markAsDeleted:0 invalidateImmediately:0];

      [v15 setShouldMarkAsDeletedAfterCancellationOrFailure:failureCopy];
      [v15 setAllowsCellular:cellularCopy];
      [v15 setDownloadFailedDueToError:0];
      v20 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary3 = [v20 sidebandMediaLibrary];
      [sidebandMediaLibrary3 saveChangesToManagedObjects];

      v22 = [(VUIDownloadManager *)self _createMediaItemForVideoManagedObject:v15 isForStartingDownload:1 downloadQuality:quality];
      mEMORY[0x1E69D5A18] = [MEMORY[0x1E69D5A18] sharedInstance];
      v24 = [mEMORY[0x1E69D5A18] downloadForMediaItem:v22];

      v42 = @"Download Quality";
      v25 = [MEMORY[0x1E696AD98] numberWithInteger:quality];
      v43[0] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      [v24 setUserInfo:v26];

      [(VUIDownloadManager *)self _configureDownloadFromUserPrefs:v24 allowCellular:cellularCopy quality:quality prefer3DOrImmersiveDownload:downloadCopy];
      mutableDownloads = [(VUIDownloadManager *)self mutableDownloads];
      [mutableDownloads addObject:v24];

      [v24 addDelegate:self];
      v28 = sLogObject_20;
      if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        canonicalID = [v15 canonicalID];
        adamID2 = [v15 adamID];
        mutableDownloads2 = [(VUIDownloadManager *)self mutableDownloads];
        v34 = 138413058;
        v35 = v24;
        v36 = 2112;
        v37 = canonicalID;
        v38 = 2112;
        v39 = adamID2;
        v40 = 2048;
        v41 = [mutableDownloads2 count];
        _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "Added download %@ for canonical ID %@ adam ID %@ to list of downloads.  Number of downloads is now %lu", &v34, 0x2Au);
      }

      if (v22)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:self selector:sel__mediaItemMetadataDidChange_ name:*MEMORY[0x1E69D5B48] object:v22];
      }

      [v24 start];
      if (![(VUIDownloadManager *)self performingAddDownloadsBatch])
      {
        [(VUIDownloadManager *)self _notifyDelegatesThatDownloadsDidChange];
      }

      [(VUIDownloadManager *)self _loadImageForVideoManagedObject:v15 download:v24];
    }
  }

  else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
  {
    [VUIDownloadManager addDownloadForVideoManagedObject:allowCellular:quality:shouldMarkAsDeletedOnCancellationOrFailure:prefer3DOrImmersiveDownload:];
  }
}

- (void)performBatchAddDownloadsWithBlock:(id)block
{
  blockCopy = block;
  [(VUIDownloadManager *)self setPerformingAddDownloadsBatch:1];
  if (blockCopy)
  {
    blockCopy[2]();
    [(VUIDownloadManager *)self _notifyDelegatesThatDownloadsDidChange];
  }

  [(VUIDownloadManager *)self setPerformingAddDownloadsBatch:0];
}

- (void)fetchNewKeysForDownloadedVideoManagedObject:(id)object
{
  v23 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary = [v5 sidebandMediaLibrary];
  v7 = [sidebandMediaLibrary mainContextVideoForVideo:objectCopy];

  if (v7)
  {
    if ([v7 downloadState] == 2)
    {
      allowsManualRenewal = [v7 allowsManualRenewal];
      v9 = sLogObject_20;
      if (allowsManualRenewal)
      {
        if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          canonicalID = [v7 canonicalID];
          adamID = [v7 adamID];
          v19 = 138412546;
          v20 = canonicalID;
          v21 = 2112;
          v22 = adamID;
          _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Fetching new keys for canonical ID %@ adam ID %@", &v19, 0x16u);
        }

        v13 = [[VUIStoreAuxMediaItem alloc] initWithVideoManagedObject:v7 isForStartingDownload:0];
        mEMORY[0x1E69D5A18] = [MEMORY[0x1E69D5A18] sharedInstance];
        v15 = [mEMORY[0x1E69D5A18] downloadForMediaItem:v13];

        [v7 setShouldMarkAsDeletedAfterCancellationOrFailure:0];
        v16 = +[VUIMediaLibraryManager defaultManager];
        sidebandMediaLibrary2 = [v16 sidebandMediaLibrary];
        [sidebandMediaLibrary2 saveChangesToManagedObjects];

        [(VUIStoreAuxMediaItem *)v13 setIgnoreExistingOfflineKeyData:1];
        [v15 setPerformKeyFetchOnly:1];
        [v15 addDelegate:self];
        mutableDownloads = [(VUIDownloadManager *)self mutableDownloads];
        [mutableDownloads addObject:v15];

        [v15 start];
        [(VUIDownloadManager *)self _notifyDelegatesThatDownloadsDidChange];
      }

      else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
      {
        [VUIDownloadManager fetchNewKeysForDownloadedVideoManagedObject:];
      }
    }

    else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
    {
      [VUIDownloadManager fetchNewKeysForDownloadedVideoManagedObject:];
    }
  }

  else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
  {
    [VUIDownloadManager fetchNewKeysForDownloadedVideoManagedObject:];
  }
}

- (void)addDownloadOrRenewKeysForMediaItem:(id)item allowCellular:(BOOL)cellular quality:(int64_t)quality shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)failure
{
  failureCopy = failure;
  cellularCopy = cellular;
  itemCopy = item;
  v11 = [itemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDownloadVideoManagedObject"];
  if (v11)
  {
    v12 = [itemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDownloadAllowsManualRenewal"];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      [(VUIDownloadManager *)self fetchNewKeysForDownloadedVideoManagedObject:v11];
    }

    else
    {
      [(VUIDownloadManager *)self addDownloadForVideoManagedObject:v11 allowCellular:cellularCopy quality:quality shouldMarkAsDeletedOnCancellationOrFailure:failureCopy prefer3DOrImmersiveDownload:1];
    }
  }

  else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
  {
    [VUIDownloadManager addDownloadOrRenewKeysForMediaItem:allowCellular:quality:shouldMarkAsDeletedOnCancellationOrFailure:];
  }
}

- (void)cancelAndRemoveDownloadForMediaItem:(id)item
{
  v8 = [item mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDownloadVideoManagedObject"];
  adamID = [v8 adamID];
  downloadState = [v8 downloadState];
  [(VUIDownloadManager *)self cancelDownloadForAdamID:adamID];
  if (v8)
  {
    v6 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v6 sidebandMediaLibrary];
    [sidebandMediaLibrary removeDownloadedMediaForVideoManagedObject:v8 markAsDeleted:downloadState != 1 invalidateImmediately:1];
  }
}

- (id)existingDownloadForAdamID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__27;
  v15 = __Block_byref_object_dispose__27;
  v16 = 0;
  if ([dCopy length])
  {
    downloads = [(VUIDownloadManager *)self downloads];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__VUIDownloadManager_existingDownloadForAdamID___block_invoke;
    v8[3] = &unk_1E8735558;
    v9 = dCopy;
    v10 = &v11;
    [downloads enumerateObjectsUsingBlock:v8];
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __48__VUIDownloadManager_existingDownloadForAdamID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 mediaItem];
  v8 = [v7 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];

  if ([*(a1 + 32) isEqualToString:v8])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)cancelDownloadForAdamID:(id)d
{
  v3 = [(VUIDownloadManager *)self existingDownloadForAdamID:d];
  [v3 cancel];
}

- (void)preflightDownloadForVideosPlayable:(id)playable presentingViewController:(id)controller contentAllowsCellularDownload:(BOOL)download completion:(id)completion
{
  downloadCopy = download;
  completionCopy = completion;
  controllerCopy = controller;
  playableCopy = playable;
  v13 = +[VUIPreflightManager defaultPreflightManager];
  [v13 setVideosPlayable:playableCopy];

  [(VUIDownloadManager *)self _preflightDownloadForPresentingViewController:controllerCopy contentAllowsCellularDownload:downloadCopy completion:completionCopy];
}

- (void)preflightDownloadForLibraryMediaEntity:(id)entity presentingViewController:(id)controller contentAllowsCellularDownload:(BOOL)download completion:(id)completion
{
  downloadCopy = download;
  completionCopy = completion;
  controllerCopy = controller;
  entityCopy = entity;
  v13 = +[VUIPreflightManager defaultPreflightManager];
  [v13 setMediaEntity:entityCopy];

  [(VUIDownloadManager *)self _preflightDownloadForPresentingViewController:controllerCopy contentAllowsCellularDownload:downloadCopy completion:completionCopy];
}

- (void)preflightDownloadForTVPMediaItem:(id)item presentingViewController:(id)controller contentAllowsCellularDownload:(BOOL)download completion:(id)completion
{
  downloadCopy = download;
  completionCopy = completion;
  controllerCopy = controller;
  itemCopy = item;
  v13 = +[VUIPreflightManager defaultPreflightManager];
  [v13 setMediaItem:itemCopy];

  [(VUIDownloadManager *)self _preflightDownloadForPresentingViewController:controllerCopy contentAllowsCellularDownload:downloadCopy completion:completionCopy];
}

- (void)preflightDownloadForContentRating:(id)rating presentingViewController:(id)controller contentAllowsCellularDownload:(BOOL)download completion:(id)completion
{
  downloadCopy = download;
  completionCopy = completion;
  controllerCopy = controller;
  ratingCopy = rating;
  v13 = +[VUIPreflightManager defaultPreflightManager];
  [v13 setContentRating:ratingCopy];

  [(VUIDownloadManager *)self _preflightDownloadForPresentingViewController:controllerCopy contentAllowsCellularDownload:downloadCopy completion:completionCopy];
}

- (void)_preflightDownloadForPresentingViewController:(id)controller contentAllowsCellularDownload:(BOOL)download completion:(id)completion
{
  downloadCopy = download;
  completionCopy = completion;
  controllerCopy = controller;
  v9 = +[VUIPreflightManager defaultPreflightManager];
  [v9 setPresentingController:controllerCopy];

  [v9 setRestrictionsCheckType:1];
  [v9 setContentAllowsCellularDownload:downloadCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __109__VUIDownloadManager__preflightDownloadForPresentingViewController_contentAllowsCellularDownload_completion___block_invoke;
  v11[3] = &unk_1E8734570;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 preflightWithOptions:11 completion:v11];
}

void __109__VUIDownloadManager__preflightDownloadForPresentingViewController_contentAllowsCellularDownload_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(a1 + 32))
  {
    return;
  }

  v4 = VUIPreflightCellularAllowedKey[0];
  v5 = a3;
  v7 = [v5 objectForKey:v4];
  v6 = [v5 objectForKey:VUIPreflightDownloadQualityKey];

  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  [v7 BOOLValue];
  if (v6)
  {
LABEL_4:
    [v6 integerValue];
  }

LABEL_7:
  (*(*(a1 + 32) + 16))();
}

- (void)download:(id)download didChangeStateTo:(int64_t)to
{
  v67 = *MEMORY[0x1E69E9840];
  downloadCopy = download;
  if (!downloadCopy)
  {
    goto LABEL_44;
  }

  v7 = sLogObject_20;
  if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [downloadCopy descriptionForState:to];
    *buf = 138412546;
    *&buf[4] = downloadCopy;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Download %@ state did change to %@", buf, 0x16u);
  }

  if ((to & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    mediaItem = [downloadCopy mediaItem];
    v11 = [mediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];

    v12 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v12 sidebandMediaLibrary];
    v14 = [sidebandMediaLibrary videoForAdamID:v11 useMainThreadContext:1];

    if (!v14)
    {
LABEL_31:

      goto LABEL_32;
    }

    if (![downloadCopy performKeyFetchOnly])
    {
      goto LABEL_12;
    }

    if (to == 5)
    {
      error = [downloadCopy error];
      if (TVPErrorIsSKDError())
      {
        error2 = [downloadCopy error];
        v17 = [error2 code] == -345015;

        if (v17)
        {
          v18 = sLogObject_20;
          if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "Will remove download after performing key fetch because user is no longer entitled", buf, 2u);
          }

LABEL_12:
          error3 = [downloadCopy error];
          [v14 setDownloadFailedDueToError:error3 != 0];

          if (to == 4)
          {
            v20 = [downloadCopy performKeyFetchOnly] ^ 1;
          }

          else
          {
            [v14 setHasExpirationDate:0];
            [v14 setAvailabilityEndDate:0];
            v20 = 0;
          }

          error4 = +[VUIMediaLibraryManager defaultManager];
          sidebandMediaLibrary2 = [error4 sidebandMediaLibrary];
          [sidebandMediaLibrary2 removeDownloadedMediaForVideoManagedObject:v14 markAsDeleted:v20 invalidateImmediately:1];

LABEL_28:
          v35 = sLogObject_20;
          if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v35, OS_LOG_TYPE_DEFAULT, "Setting managed object's task identifier to nil", buf, 2u);
          }

LABEL_30:
          [v14 setDownloadTaskIdentifier:0];
          v36 = +[VUIMediaLibraryManager defaultManager];
          sidebandMediaLibrary3 = [v36 sidebandMediaLibrary];
          [sidebandMediaLibrary3 saveChangesToManagedObjects];

          goto LABEL_31;
        }
      }

      else
      {
      }
    }

    v34 = sLogObject_20;
    if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "Not removing download on cancellation/failure since download was only performing a key fetch.  Resetting state to Downloaded.", buf, 2u);
    }

    [v14 setDownloadState:2];
    error4 = [downloadCopy error];
    [v14 setDownloadFailedDueToError:error4 != 0];
    goto LABEL_28;
  }

  if (to != 1 && to != 6)
  {
    if (to != 3)
    {
      goto LABEL_44;
    }

    mediaItem2 = [downloadCopy mediaItem];
    v11 = [mediaItem2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];

    v22 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary4 = [v22 sidebandMediaLibrary];
    v14 = [sidebandMediaLibrary4 videoForAdamID:v11 useMainThreadContext:1];

    [v14 setDownloadState:2];
    v24 = sLogObject_20;
    if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "Setting managed object's task identifier to nil", buf, 2u);
    }

    goto LABEL_30;
  }

  mediaItem3 = [downloadCopy mediaItem];
  v26 = [mediaItem3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];

  v27 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary5 = [v27 sidebandMediaLibrary];
  v29 = [sidebandMediaLibrary5 videoForAdamID:v26 useMainThreadContext:1];

  [v29 setDownloadState:1];
  v30 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary6 = [v30 sidebandMediaLibrary];
  [sidebandMediaLibrary6 saveChangesToManagedObjects];

  if ((to - 3) < 3)
  {
LABEL_32:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mediaItem4 = [downloadCopy mediaItem];

    if (mediaItem4)
    {
      mediaItem5 = [downloadCopy mediaItem];
      [defaultCenter removeObserver:self name:*MEMORY[0x1E69D5B48] object:mediaItem5];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v66 = 0x7FFFFFFFFFFFFFFFLL;
    mutableDownloads = [(VUIDownloadManager *)self mutableDownloads];
    v55 = MEMORY[0x1E69E9820];
    v56 = 3221225472;
    v57 = __48__VUIDownloadManager_download_didChangeStateTo___block_invoke;
    v58 = &unk_1E8735558;
    v42 = downloadCopy;
    v59 = v42;
    v60 = buf;
    [mutableDownloads enumerateObjectsUsingBlock:&v55];

    if (*(*&buf[8] + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v42 removeDelegate:{self, v55, v56, v57, v58}];
      mutableDownloads2 = [(VUIDownloadManager *)self mutableDownloads];
      [mutableDownloads2 removeObjectAtIndex:*(*&buf[8] + 24)];

      v44 = sLogObject_20;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        mutableDownloads3 = [(VUIDownloadManager *)self mutableDownloads];
        v46 = [mutableDownloads3 count];
        *v61 = 138412546;
        v62 = v42;
        v63 = 2048;
        v64 = v46;
        _os_log_impl(&dword_1E323F000, v44, OS_LOG_TYPE_DEFAULT, "Removed download %@ from list of downloads.  Number of downloads is now %lu", v61, 0x16u);
      }

      [(VUIDownloadManager *)self _notifyDelegatesThatDownloadsDidChange];
    }

    _Block_object_dispose(buf, 8);
  }

  if (to == 5)
  {
    failedDownloads = [(VUIDownloadManager *)self failedDownloads];
    [failedDownloads addObject:downloadCopy];

    error5 = [downloadCopy error];
    userInfo = [error5 userInfo];
    v50 = [userInfo objectForKey:@"VUIDownloadManagerSuppressErrorDialogKey"];
    bOOLValue = [v50 BOOLValue];

    if (bOOLValue)
    {
      v52 = sLogObject_20;
      if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
      {
        v53 = v52;
        error6 = [downloadCopy error];
        *buf = 138412290;
        *&buf[4] = error6;
        _os_log_impl(&dword_1E323F000, v53, OS_LOG_TYPE_DEFAULT, "Suppressing error dialog for %@", buf, 0xCu);
      }
    }

    [(VUIDownloadManager *)self _showDownloadErrorDialogIfAppropriateAfterDelay:v55];
    [(VUIDownloadManager *)self _downloadQueueManagerHandleErrorsIfNeeded];
  }

LABEL_44:
}

void __48__VUIDownloadManager_download_didChangeStateTo___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 mediaItem];
  v8 = [*(a1 + 32) mediaItem];
  v9 = [v7 isEqualToMediaItem:v8];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)download:(id)download willDownloadToURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  downloadCopy = download;
  lCopy = l;
  v7 = sLogObject_20;
  if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = downloadCopy;
    v17 = 2112;
    v18 = lCopy;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Download %@ will download to %@", &v15, 0x16u);
  }

  mediaItem = [downloadCopy mediaItem];
  v9 = [mediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];

  if (v9)
  {
    v10 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v10 sidebandMediaLibrary];
    v12 = [sidebandMediaLibrary videoForAdamID:v9 useMainThreadContext:1];

    if (v12)
    {
      [v12 setLocalPlaybackURL:lCopy];
      v13 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary2 = [v13 sidebandMediaLibrary];
      [sidebandMediaLibrary2 saveChangesToManagedObjects];
    }
  }

  else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
  {
    [VUIDownloadManager download:willDownloadToURL:];
  }
}

- (void)download:(id)download didReceiveTaskIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  downloadCopy = download;
  identifierCopy = identifier;
  v7 = sLogObject_20;
  if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = downloadCopy;
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Download %@ did receive task identifier %@", &v16, 0x16u);
  }

  mediaItem = [downloadCopy mediaItem];
  v9 = [mediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];

  if (v9)
  {
    v10 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v10 sidebandMediaLibrary];
    v12 = [sidebandMediaLibrary videoForAdamID:v9 useMainThreadContext:1];

    if (v12)
    {
      v13 = sLogObject_20;
      if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = identifierCopy;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Setting managed object's task identifier to %@", &v16, 0xCu);
      }

      [v12 setDownloadTaskIdentifier:identifierCopy];
      v14 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary2 = [v14 sidebandMediaLibrary];
      [sidebandMediaLibrary2 saveChangesToManagedObjects];
    }
  }

  else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
  {
    [VUIDownloadManager download:didReceiveTaskIdentifier:];
  }
}

- (void)downloadSession:(id)session didAddRestoredDownloads:(id)downloads
{
  v44 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = downloads;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v32;
    v25 = *MEMORY[0x1E69D5AE8];
    v23 = *MEMORY[0x1E69D5DA8];
    *&v6 = 138413058;
    v22 = v6;
    v24 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        mutableDownloads = [(VUIDownloadManager *)self mutableDownloads];
        [mutableDownloads addObject:v10];

        v12 = sLogObject_20;
        if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
        {
          log = v12;
          mediaItem = [v10 mediaItem];
          v27 = [mediaItem mediaItemMetadataForProperty:v25];
          mediaItem2 = [v10 mediaItem];
          v15 = [mediaItem2 mediaItemMetadataForProperty:v23];
          [(VUIDownloadManager *)self mutableDownloads];
          selfCopy = self;
          v18 = v17 = v7;
          v19 = [v18 count];
          *buf = v22;
          v36 = v10;
          v37 = 2112;
          v38 = v27;
          v39 = 2112;
          v40 = v15;
          v41 = 2048;
          v42 = v19;
          _os_log_impl(&dword_1E323F000, log, OS_LOG_TYPE_DEFAULT, "Added restored download %@ for canonical ID %@ adam ID %@ to list of downloads.  Number of downloads is now %lu", buf, 0x2Au);

          v7 = v17;
          self = selfCopy;

          v8 = v24;
        }

        [v10 addDelegate:self];
        state = [v10 state];
        v21 = sLogObject_20;
        if (state == 5)
        {
          if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
          {
            [(VUIDownloadManager *)&v29 downloadSession:v30 didAddRestoredDownloads:v21];
          }

          [(VUIDownloadManager *)self download:v10 didChangeStateTo:5];
        }

        else
        {
          if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "Resuming restored download", buf, 2u);
          }

          [v10 start];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v7);
  }

  if ([obj count])
  {
    [(VUIDownloadManager *)self _notifyDelegatesThatDownloadsDidChange];
  }

  [(VUIDownloadManager *)self setIsInitialized:1];
  [(VUIDownloadManager *)self _notifyDelegatesThatManagerDidBecomeInitialized];
}

- (void)download:(id)download processFinishedDownloadWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  downloadCopy = download;
  completionCopy = completion;
  mediaItem = [downloadCopy mediaItem];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = sLogObject_20;
    if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      mediaItem2 = [downloadCopy mediaItem];
      *buf = 138412290;
      v16 = mediaItem2;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Calling processFinishedDownloadWithCompletion for mediaItem %@", buf, 0xCu);
    }

    mediaItem3 = [downloadCopy mediaItem];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__VUIDownloadManager_download_processFinishedDownloadWithCompletion___block_invoke;
    v13[3] = &unk_1E8732000;
    v14 = completionCopy;
    [mediaItem3 processFinishedDownloadWithCompletion:v13];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

uint64_t __69__VUIDownloadManager_download_processFinishedDownloadWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)download:(id)download willDownloadVariants:(id)variants
{
  v44 = *MEMORY[0x1E69E9840];
  downloadCopy = download;
  variantsCopy = variants;
  mediaItem = [downloadCopy mediaItem];
  v8 = [mediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];

  if (v8)
  {
    v9 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v9 sidebandMediaLibrary];
    v11 = [sidebandMediaLibrary videoForAdamID:v8 useMainThreadContext:1];

    if (v11)
    {
      v30 = v11;
      v31 = v8;
      v12 = @"Monoscopic";
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v32 = variantsCopy;
      obj = variantsCopy;
      v13 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v39;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v39 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v38 + 1) + 8 * i);
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            videoAttributes = [v17 videoAttributes];
            videoLayoutAttributes = [videoAttributes videoLayoutAttributes];

            v20 = [videoLayoutAttributes countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v35;
              while (2)
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v35 != v22)
                  {
                    objc_enumerationMutation(videoLayoutAttributes);
                  }

                  v24 = *(*(&v34 + 1) + 8 * j);
                  if ((~[v24 stereoViewComponents] & 3) == 0)
                  {
                    projectionType = [v24 projectionType];
                    v26 = @"Stereoscopic";
                    if (projectionType == 1718186856)
                    {
                      v26 = @"Immersive";
                    }

                    v27 = v26;

                    v12 = v27;
                    goto LABEL_20;
                  }
                }

                v21 = [videoLayoutAttributes countByEnumeratingWithState:&v34 objects:v42 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }

LABEL_20:
          }

          v14 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v14);
      }

      v11 = v30;
      [v30 setDownloadedPlaybackMode:v12];
      v28 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary2 = [v28 sidebandMediaLibrary];
      [sidebandMediaLibrary2 saveChangesToManagedObjects];

      variantsCopy = v32;
      v8 = v31;
    }
  }

  else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
  {
    [VUIDownloadManager download:willDownloadVariants:];
  }
}

- (void)_mediaItemMetadataDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69D5AF0]];

  object = [changeCopy object];

  if (object)
  {
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = *MEMORY[0x1E69D5CD0];
    v10 = *MEMORY[0x1E69D5C98];
    v11 = *MEMORY[0x1E69D5C30];
    v12 = [v8 initWithObjects:{*MEMORY[0x1E69D5CD0], *MEMORY[0x1E69D5C98], *MEMORY[0x1E69D5C30], 0}];
    v13 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v6];
    [v13 intersectsSet:v12];
    if ([v13 count])
    {
      v25 = v12;
      v14 = sLogObject_20;
      if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "downloading Advisory Images since URLs are now available", buf, 2u);
      }

      v15 = [object mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
      v16 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary = [v16 sidebandMediaLibrary];
      v24 = v15;
      v18 = [sidebandMediaLibrary videoForAdamID:v15 useMainThreadContext:1];

      mEMORY[0x1E69D5A18] = [MEMORY[0x1E69D5A18] sharedInstance];
      v20 = [mEMORY[0x1E69D5A18] downloadForMediaItem:object];

      if ([v13 containsObject:v9])
      {
        v21 = [object mediaItemMetadataForProperty:v9];
        [(VUIDownloadManager *)self _createVideoRatingImageManagedObject:v18 imageType:3 formatURL:v21];
        [(VUIDownloadManager *)self _loadImageForVideoManagedObject:v18 imageType:3 download:v20 useForStorageSettings:0 forceReload:0];
      }

      if ([v13 containsObject:v10])
      {
        v22 = [object mediaItemMetadataForProperty:v10];
        [(VUIDownloadManager *)self _createVideoRatingImageManagedObject:v18 imageType:4 formatURL:v22];
        [(VUIDownloadManager *)self _loadImageForVideoManagedObject:v18 imageType:4 download:v20 useForStorageSettings:0 forceReload:0];
      }

      if ([v13 containsObject:v11])
      {
        v23 = [object mediaItemMetadataForProperty:v11];
        [(VUIDownloadManager *)self _createVideoRatingImageManagedObject:v18 imageType:5 formatURL:v23];
        [(VUIDownloadManager *)self _loadImageForVideoManagedObject:v18 imageType:5 download:v20 useForStorageSettings:0 forceReload:0];
      }

      v12 = v25;
    }
  }
}

- (void)_createVideoRatingImageManagedObject:(id)object imageType:(unint64_t)type formatURL:(id)l
{
  if (object)
  {
    lCopy = l;
    objectCopy = object;
    v9 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v9 sidebandMediaLibrary];
    v11 = [sidebandMediaLibrary imageInfoForVideo:objectCopy imageType:type createIfNeeded:1 wasCreated:0];

    [v11 setImageType:type];
    [v11 setUrlFormat:lCopy];

    [v11 setCanonicalWidth:100.0];
    [v11 setCanonicalHeight:100.0];
    [v11 setVideo:objectCopy];
  }
}

- (void)_notifyDelegatesThatDownloadsDidChange
{
  delegates = [(VUIDownloadManager *)self delegates];
  v4 = [delegates count];

  if (v4)
  {
    v5 = 0;
    do
    {
      delegates2 = [(VUIDownloadManager *)self delegates];
      v7 = [delegates2 pointerAtIndex:v5];

      if (v7)
      {
        v8 = v7;
        if (objc_opt_respondsToSelector())
        {
          [v8 downloadManagerDownloadsDidChange:self];
        }
      }

      ++v5;
      delegates3 = [(VUIDownloadManager *)self delegates];
      v10 = [delegates3 count];
    }

    while (v5 < v10);
  }
}

- (void)_isPlaybackUIBeingShownDidChange:(id)change
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = +[VUIPlaybackManager sharedInstance];
  isPlaybackUIBeingShown = [v4 isPlaybackUIBeingShown];

  v6 = sLogObject_20;
  if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (isPlaybackUIBeingShown)
    {
      v7 = @"YES";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "isPlaybackUIBeingShown did change to %@", &v9, 0xCu);
  }

  if ((isPlaybackUIBeingShown & 1) == 0)
  {
    v8 = sLogObject_20;
    if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Will show error dialog (if needed) after playback transition finishes", &v9, 2u);
    }

    [(VUIDownloadManager *)self _showDownloadErrorDialogIfAppropriateAfterDelay];
  }
}

- (void)_appDidStartRunning:(id)running
{
  v4 = sLogObject_20;
  if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "App did start running", v5, 2u);
  }

  [(VUIDownloadManager *)self _showDownloadErrorDialogIfAppropriateAfterDelay];
  [(VUIDownloadManager *)self _updateCoverArtImagesIfNecessary];
}

- (void)_showDownloadErrorDialogIfAppropriateAfterDelay
{
  v3 = sLogObject_20;
  if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Will show error dialog (if needed) after delay", v4, 2u);
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__showDownloadErrorDialogIfAppropriate object:0];
  [(VUIDownloadManager *)self performSelector:sel__showDownloadErrorDialogIfAppropriate withObject:0 afterDelay:1.0];
}

- (void)_showDownloadErrorDialogIfAppropriate
{
  if ([(VUIDownloadManager *)self dialogBeingPresented])
  {
    errorAlertController = [(VUIDownloadManager *)self errorAlertController];
    if (errorAlertController)
    {
      v4 = errorAlertController;
      errorAlertController2 = [(VUIDownloadManager *)self errorAlertController];
      vui_isPresented = [errorAlertController2 vui_isPresented];

      if ((vui_isPresented & 1) == 0)
      {
        v7 = sLogObject_20;
        if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "dialogBeingPresented is YES, but error alert controller isn't actually being presented.  Resetting to NO", buf, 2u);
        }

        [(VUIDownloadManager *)self setDialogBeingPresented:0];
      }
    }
  }

  v8 = +[VUIPlaybackManager sharedInstance];
  isPlaybackUIBeingShown = [v8 isPlaybackUIBeingShown];

  if (isPlaybackUIBeingShown)
  {
    v10 = sLogObject_20;
    if (!os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v17 = 0;
    v11 = "Playback is happening.  Delaying error dialog until playback ends.";
    v12 = &v17;
    goto LABEL_17;
  }

  if ([(VUIDownloadManager *)self dialogBeingPresented])
  {
    v10 = sLogObject_20;
    if (!os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v16 = 0;
    v11 = "Error dialog is already being presented.  Delaying error dialog until existing dialog ends.";
    v12 = &v16;
    goto LABEL_17;
  }

  v13 = +[VUITVAppLauncher sharedInstance];
  isAppRunning = [v13 isAppRunning];

  if (isAppRunning)
  {
    [(VUIDownloadManager *)self _showDownloadErrorDialogIfAppropriateAllowingSignInPrompt:1];
    return;
  }

  v10 = sLogObject_20;
  if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 0;
    v11 = "App hasn't finished launching.  Delaying error dialog until app finishes launching.";
    v12 = &v15;
LABEL_17:
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
  }
}

- (void)_showDownloadErrorDialogIfAppropriateAllowingSignInPrompt:(BOOL)prompt
{
  v30 = *MEMORY[0x1E69E9840];
  _failedDownloadsNeedingDialog = [(VUIDownloadManager *)self _failedDownloadsNeedingDialog];
  v6 = [_failedDownloadsNeedingDialog count];
  v7 = sLogObject_20;
  if (v6)
  {
    if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      *buf = 134217984;
      v29 = [_failedDownloadsNeedingDialog count];
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Will show error dialog for %lu failed downloads", buf, 0xCu);
    }

    v27 = 0;
    v9 = [(VUIDownloadManager *)self _alertControllerForFailedDownloads:_failedDownloadsNeedingDialog outIncludeGoToSettingsButton:&v27];
    v10 = [(VUIDownloadManager *)self _anyDownloadsFailedDueToInvalidUserToken:_failedDownloadsNeedingDialog];
    objc_initWeak(buf, self);
    v11 = +[VUILocalizationManager sharedInstance];
    v12 = [v11 localizedStringForKey:@"OK"];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __80__VUIDownloadManager__showDownloadErrorDialogIfAppropriateAllowingSignInPrompt___block_invoke;
    v23[3] = &unk_1E8735580;
    objc_copyWeak(&v24, buf);
    v25 = v10;
    promptCopy = prompt;
    v13 = [VUIAlertAction vui_actionWithTitle:v12 style:0 accessibilityIdentifier:@"UIA.TV.Button.dialog.ok" handler:v23];

    [v9 vui_addAction:v13];
    if (v27 == 1)
    {
      v14 = +[VUILocalizationManager sharedInstance];
      v15 = [v14 localizedStringForKey:@"DOWNLOAD_FAILED_ALERT_ACTION_GO_TO_SETTINGS"];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __80__VUIDownloadManager__showDownloadErrorDialogIfAppropriateAllowingSignInPrompt___block_invoke_2_66;
      v21[3] = &unk_1E87342A0;
      objc_copyWeak(&v22, buf);
      v16 = [VUIAlertAction vui_actionWithTitle:v15 style:0 handler:v21];

      [v9 vui_addAction:v16];
      objc_destroyWeak(&v22);
    }

    v17 = +[VUIApplicationRouter topPresentedViewController];
    if (v17 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v17 presentedViewController], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v19)))
    {
      [(VUIDownloadManager *)self setDialogBeingPresented:1];
      [(VUIDownloadManager *)self setErrorAlertController:v9];
      [v9 vui_presentAlertFromPresentingController:v17 animated:1 completion:0];
    }

    else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
    {
      [VUIDownloadManager _showDownloadErrorDialogIfAppropriateAllowingSignInPrompt:];
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
  {
    [VUIDownloadManager _showDownloadErrorDialogIfAppropriateAllowingSignInPrompt:];
  }

  failedDownloads = [(VUIDownloadManager *)self failedDownloads];
  [failedDownloads removeAllObjects];
}

void __80__VUIDownloadManager__showDownloadErrorDialogIfAppropriateAllowingSignInPrompt___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __80__VUIDownloadManager__showDownloadErrorDialogIfAppropriateAllowingSignInPrompt___block_invoke_2;
  v2[3] = &unk_1E8731108;
  objc_copyWeak(&v3, (a1 + 32));
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
}

void __80__VUIDownloadManager__showDownloadErrorDialogIfAppropriateAllowingSignInPrompt___block_invoke_2(uint64_t a1)
{
  v2 = sLogObject_20;
  if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Done presenting download error dialog", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (*(a1 + 40) == 1 && *(a1 + 41) == 1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __80__VUIDownloadManager__showDownloadErrorDialogIfAppropriateAllowingSignInPrompt___block_invoke_60;
    v5[3] = &unk_1E8732730;
    objc_copyWeak(&v6, (a1 + 32));
    v5[4] = v4;
    [VUIAuthenticationManager requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v5];
    objc_destroyWeak(&v6);
  }

  else
  {
    [WeakRetained setDialogBeingPresented:0];
    [v4 setErrorAlertController:0];
    [v4 _showDownloadErrorDialogIfAppropriateAllowingSignInPrompt:1];
  }
}

void __80__VUIDownloadManager__showDownloadErrorDialogIfAppropriateAllowingSignInPrompt___block_invoke_60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDialogBeingPresented:0];
  [*(a1 + 32) setErrorAlertController:0];
  [WeakRetained _showDownloadErrorDialogIfAppropriateAllowingSignInPrompt:0];
}

void __80__VUIDownloadManager__showDownloadErrorDialogIfAppropriateAllowingSignInPrompt___block_invoke_2_66(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=USAGE"];
  [v2 openSensitiveURL:v3 withOptions:0];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__VUIDownloadManager__showDownloadErrorDialogIfAppropriateAllowingSignInPrompt___block_invoke_3;
  block[3] = &unk_1E872E4B8;
  objc_copyWeak(&v5, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
}

void __80__VUIDownloadManager__showDownloadErrorDialogIfAppropriateAllowingSignInPrompt___block_invoke_3(uint64_t a1)
{
  v2 = sLogObject_20;
  if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Done presenting download error dialog", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDialogBeingPresented:0];
  [WeakRetained setErrorAlertController:0];
  [WeakRetained _showDownloadErrorDialogIfAppropriateAllowingSignInPrompt:1];
}

- (BOOL)_anyDownloadsFailedDueToInvalidUserToken:(id)token
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  tokenCopy = token;
  v4 = [tokenCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(tokenCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        error = [v8 error];
        domain = [error domain];
        if ([domain isEqualToString:@"TVPlaybackErrorDomain"])
        {
          error2 = [v8 error];
          code = [error2 code];

          if (code == 813)
          {
            v13 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v5 = [tokenCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)_alertControllerForFailedDownloads:(id)downloads outIncludeGoToSettingsButton:(BOOL *)button
{
  downloadsCopy = downloads;
  firstObject = [downloadsCopy firstObject];
  error = [firstObject error];
  if (button)
  {
    *button = 0;
  }

  if (!TVPErrorIsSKDError())
  {
    if ([(VUIDownloadManager *)self _anyDownloadsFailedDueToInvalidUserToken:downloadsCopy])
    {
      if ([error code] != 813)
      {
        goto LABEL_47;
      }

      v15 = +[VUILocalizationManager sharedInstance];
      v16 = [(__CFString *)v15 localizedStringForKey:@"DOWNLOAD_FAILED_SIGN_IN_TO_DOWNLOAD_MESSAGE"];
    }

    else
    {
      domain = [error domain];
      if ([domain isEqualToString:@"TVPlaybackErrorDomain"])
      {
        code = [error code];

        if (code == 812)
        {
          firstObject2 = [downloadsCopy firstObject];
          mediaItem = [firstObject2 mediaItem];
          v15 = [mediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];

          if (![(__CFString *)v15 length])
          {

            v15 = &stru_1F5DB25C0;
          }

          v22 = MEMORY[0x1E696AEC0];
          v23 = +[VUILocalizationManager sharedInstance];
          v24 = [v23 localizedStringForKey:@"UNABLE_TO_DOWNLOAD_RENTAL_ALREADY_DOWNLOADED_ON_ANOTHER_DEVICE_FORMAT"];
          v16 = [v22 localizedStringWithValidatedFormat:v24 validFormatSpecifiers:@"%@" error:0, v15];

          goto LABEL_39;
        }
      }

      else
      {
      }

      if (![VUIPlaybackUtilities isOutOfSpaceError:error])
      {
        goto LABEL_47;
      }

      mediaItem2 = [firstObject mediaItem];
      v15 = [mediaItem2 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];

      if ([(__CFString *)v15 length])
      {
        v37 = MEMORY[0x1E696AEC0];
        v38 = +[VUILocalizationManager sharedInstance];
        v39 = [v38 localizedStringForKey:@"DOWNLOAD_FAILED_NOT_ENOUGH_SPACE_SPECIFIC_TITLE"];
        v16 = [v37 localizedStringWithValidatedFormat:v39 validFormatSpecifiers:@"%@ %lu" error:0, v15, objc_msgSend(downloadsCopy, "count") - 1];
      }

      else
      {
        v56 = [downloadsCopy count];
        v57 = +[VUILocalizationManager sharedInstance];
        v38 = v57;
        if (v56 == 1)
        {
          v58 = @"DOWNLOAD_FAILED_NOT_ENOUGH_SPACE_GENERIC_ONE";
        }

        else
        {
          v58 = @"DOWNLOAD_FAILED_NOT_ENOUGH_SPACE_GENERIC_MANY";
        }

        v16 = [v57 localizedStringForKey:v58];
      }

      if (button)
      {
        *button = 1;
      }
    }

LABEL_39:

    goto LABEL_48;
  }

  if ([error code] == -345015)
  {
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"DOWNLOAD_FAILED_NOT_ENTITLED_TITLE"];

    performKeyFetchOnly = [firstObject performKeyFetchOnly];
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = v12;
    if (performKeyFetchOnly)
    {
      v14 = @"DOWNLOAD_RENEWAL_FAILED_NOT_ENTITLED_MESSAGE";
    }

    else
    {
      v14 = @"DOWNLOAD_FAILED_NOT_ENTITLED_MESSAGE";
    }

    goto LABEL_18;
  }

  if ([error code] == -345024)
  {
    v17 = +[VUILocalizationManager sharedInstance];
    v10 = [v17 localizedStringForKey:@"DOWNLOAD_FAILED_CONTENT_NOT_DOWNLOADABLE_TITLE"];

    v12 = +[VUILocalizationManager sharedInstance];
    v13 = v12;
    v14 = @"DOWNLOAD_FAILED_CONTENT_NOT_DOWNLOADABLE_MESSAGE";
LABEL_18:
    v16 = [v12 localizedStringForKey:v14];
    goto LABEL_43;
  }

  if ([error code] == -345025)
  {
    mediaItem3 = [firstObject mediaItem];
    v13 = [mediaItem3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD8]];

    mediaItem4 = [firstObject mediaItem];
    v27 = [mediaItem4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];

    v28 = MEMORY[0x1E696AEC0];
    v29 = +[VUILocalizationManager sharedInstance];
    v30 = [v29 localizedStringForKey:@"DOWNLOAD_FAILED_DEVICE_LIMIT_REACHED_TITLE_FORMAT"];
    v10 = [v28 localizedStringWithValidatedFormat:v30 validFormatSpecifiers:@"%@" error:0, v13];

    LODWORD(v29) = [v27 isEqualToString:*MEMORY[0x1E69D5ED0]];
    v31 = MEMORY[0x1E696AEC0];
    v32 = +[VUILocalizationManager sharedInstance];
    v33 = v32;
    if (v29)
    {
      v34 = @"EPISODE_DOWNLOAD_FAILED_DEVICE_LIMIT_REACHED_FORMAT";
    }

    else
    {
      v34 = @"MOVIE_DOWNLOAD_FAILED_DEVICE_LIMIT_REACHED_FORMAT";
    }

    v35 = [v32 localizedStringForKey:v34];
    v16 = [v31 localizedStringWithValidatedFormat:v35 validFormatSpecifiers:@"%@" error:0, v13];

    goto LABEL_42;
  }

  if ([error code] == -345026)
  {
    mediaItem5 = [firstObject mediaItem];
    v13 = [mediaItem5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];

    v41 = [v13 isEqualToString:*MEMORY[0x1E69D5ED0]];
    mediaItem6 = [firstObject mediaItem];
    v43 = mediaItem6;
    if (v41)
    {
      v27 = [mediaItem6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D38]];

      mediaItem7 = [firstObject mediaItem];
      v45 = [mediaItem7 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D30]];
      integerValue = [v45 integerValue];

      mediaItem8 = [firstObject mediaItem];
      v48 = [mediaItem8 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B80]];
      integerValue2 = [v48 integerValue];

      v50 = MEMORY[0x1E696AEC0];
      v51 = +[VUILocalizationManager sharedInstance];
      v52 = [v51 localizedStringForKey:@"DOWNLOAD_FAILED_TOO_MANY_DEVICES_WITH_THIS_EPISODE_TITLE"];
      v10 = [v50 localizedStringWithValidatedFormat:v52 validFormatSpecifiers:@"%@ %d %d" error:0, v27, integerValue, integerValue2];

      v53 = MEMORY[0x1E696AEC0];
      v54 = +[VUILocalizationManager sharedInstance];
      v55 = [v54 localizedStringForKey:@"DOWNLOAD_FAILED_TOO_MANY_DEVICES_WITH_THIS_EPISODE_FORMAT"];
      v16 = [v53 localizedStringWithValidatedFormat:v55 validFormatSpecifiers:@"%@" error:0, v27];
    }

    else
    {
      v27 = [mediaItem6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];

      v65 = MEMORY[0x1E696AEC0];
      v66 = +[VUILocalizationManager sharedInstance];
      v67 = [v66 localizedStringForKey:@"DOWNLOAD_FAILED_TOO_MANY_DEVICES_WITH_THIS_MOVIE_TITLE"];
      v10 = [v65 localizedStringWithValidatedFormat:v67 validFormatSpecifiers:@"%@" error:0, v27];

      v54 = +[VUILocalizationManager sharedInstance];
      v16 = [v54 localizedStringForKey:@"DOWNLOAD_FAILED_TOO_MANY_DEVICES_WITH_THIS_MOVIE_MESSAGE"];
    }

    goto LABEL_42;
  }

  if ([error code] != -345027)
  {
    if ([error code] == -345023)
    {
      v68 = +[VUILocalizationManager sharedInstance];
      v10 = [v68 localizedStringForKey:@"DOWNLOAD_FAILED_NOT_ENTITLED_TITLE"];

      v12 = +[VUILocalizationManager sharedInstance];
      v13 = v12;
      v14 = @"VIDEO_UNAVAILABLE_IN_THIS_REGION_ERROR";
      goto LABEL_18;
    }

LABEL_47:
    v16 = 0;
    goto LABEL_48;
  }

  mediaItem9 = [firstObject mediaItem];
  v13 = [mediaItem9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD8]];

  v60 = MEMORY[0x1E696AEC0];
  v61 = +[VUILocalizationManager sharedInstance];
  v62 = [v61 localizedStringForKey:@"DOWNLOAD_FAILED_DOWNLOAD_LIMIT_REACHED_TITLE_FORMAT"];
  v10 = [v60 localizedStringWithValidatedFormat:v62 validFormatSpecifiers:@"%@" error:0, v13];

  v63 = MEMORY[0x1E696AEC0];
  v27 = +[VUILocalizationManager sharedInstance];
  v64 = [v27 localizedStringForKey:@"DOWNLOAD_FAILED_DOWNLOAD_LIMIT_REACHED_FORMAT"];
  v16 = [v63 localizedStringWithValidatedFormat:v64 validFormatSpecifiers:@"%@" error:0, v13];

LABEL_42:
LABEL_43:

  if (v10)
  {
    goto LABEL_50;
  }

LABEL_48:
  if ([error code] == 812)
  {
    v10 = 0;
LABEL_50:
    if (v16)
    {
      goto LABEL_65;
    }

    goto LABEL_58;
  }

  if ([downloadsCopy count] == 1)
  {
    performKeyFetchOnly2 = [firstObject performKeyFetchOnly];
    v70 = MEMORY[0x1E696AEC0];
    v71 = +[VUILocalizationManager sharedInstance];
    v72 = v71;
    if (performKeyFetchOnly2)
    {
      v73 = @"DOWNLOAD_RENEWAL_FAILED_TITLE_FORMAT";
    }

    else
    {
      v73 = @"DOWNLOAD_FAILED_TITLE_FORMAT_ONE";
    }
  }

  else
  {
    v70 = MEMORY[0x1E696AEC0];
    v71 = +[VUILocalizationManager sharedInstance];
    v72 = v71;
    v73 = @"DOWNLOAD_FAILED_TITLE_FORMAT_MANY";
  }

  v74 = [v71 localizedStringForKey:v73];
  v10 = [v70 localizedStringWithValidatedFormat:v74 validFormatSpecifiers:@"%lu" error:0, objc_msgSend(downloadsCopy, "count")];

  if (v16)
  {
    goto LABEL_65;
  }

LABEL_58:
  firstObject3 = [downloadsCopy firstObject];
  mediaItem10 = [firstObject3 mediaItem];
  v77 = [mediaItem10 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];

  if ([v77 length])
  {
    performKeyFetchOnly3 = [firstObject3 performKeyFetchOnly];
    v79 = MEMORY[0x1E696AEC0];
    v80 = +[VUILocalizationManager sharedInstance];
    v81 = v80;
    if (performKeyFetchOnly3)
    {
      v82 = @"DOWNLOAD_RENEWAL_FAILED_MESSAGE_FORMAT";
    }

    else
    {
      v82 = @"DOWNLOAD_FAILED_MESSAGE_FORMAT";
    }

    v84 = [v80 localizedStringForKey:v82];
    [v79 localizedStringWithValidatedFormat:v84 validFormatSpecifiers:@"%@ %lu" error:0, v77, objc_msgSend(downloadsCopy, "count") - 1];
  }

  else
  {
    v83 = MEMORY[0x1E696AEC0];
    v81 = +[VUILocalizationManager sharedInstance];
    v84 = [v81 localizedStringForKey:@"DOWNLOAD_FAILED_MESSAGE_GENERIC_FORMAT"];
    [v83 localizedStringWithValidatedFormat:v84 validFormatSpecifiers:@"%lu" error:0, objc_msgSend(downloadsCopy, "count") - 1, v87];
  }
  v16 = ;

LABEL_65:
  v85 = [VUIAlertController vui_alertControllerWithTitle:v10 message:v16 accessibilityIdentifier:@"UIA.TV.Dialog.DownloadFailed" preferredStyle:1];

  return v85;
}

- (void)_loadImageForVideoManagedObject:(id)object download:(id)download
{
  objectCopy = object;
  downloadCopy = download;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    series = [objectCopy series];
    if (series)
    {
      [(VUIDownloadManager *)self _loadImageForSeriesManagedObject:series imageType:0 download:downloadCopy useForStorageSettings:1 forceReload:0];
      [(VUIDownloadManager *)self _loadImageForSeriesManagedObject:series imageType:1 download:downloadCopy useForStorageSettings:0 forceReload:0];
    }
  }

  [(VUIDownloadManager *)self _loadImageForVideoManagedObject:objectCopy imageType:0 download:downloadCopy useForStorageSettings:(isKindOfClass & 1) == 0 forceReload:0];
  [(VUIDownloadManager *)self _loadImageForVideoManagedObject:objectCopy imageType:1 download:downloadCopy useForStorageSettings:0 forceReload:0];
  [(VUIDownloadManager *)self _loadImageForVideoManagedObject:objectCopy imageType:2 download:downloadCopy useForStorageSettings:0 forceReload:0];
  entitlementType = [objectCopy entitlementType];
  integerValue = [entitlementType integerValue];

  if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(VUIDownloadManager *)self _loadStorageSettingsImageFromMediaLibraryForVideoManagedObject:objectCopy download:downloadCopy];
  }
}

- (void)_loadImageForVideoManagedObject:(id)object imageType:(unint64_t)type download:(id)download useForStorageSettings:(BOOL)settings forceReload:(BOOL)reload
{
  reloadCopy = reload;
  settingsCopy = settings;
  downloadCopy = download;
  objectCopy = object;
  v13 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary = [v13 sidebandMediaLibrary];
  v15 = [sidebandMediaLibrary imageInfoForVideo:objectCopy imageType:type createIfNeeded:0 wasCreated:0];

  if (v15)
  {
    [(VUIDownloadManager *)self _loadImageForImageInfoManagedObject:v15 imageType:type download:downloadCopy useForStorageSettings:settingsCopy forceReload:reloadCopy];
  }
}

- (void)_loadImageForSeriesManagedObject:(id)object imageType:(unint64_t)type download:(id)download useForStorageSettings:(BOOL)settings forceReload:(BOOL)reload
{
  reloadCopy = reload;
  settingsCopy = settings;
  downloadCopy = download;
  objectCopy = object;
  v13 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary = [v13 sidebandMediaLibrary];
  v15 = [sidebandMediaLibrary imageInfoForSeries:objectCopy imageType:type createIfNeeded:0 wasCreated:0];

  if (v15)
  {
    [(VUIDownloadManager *)self _loadImageForImageInfoManagedObject:v15 imageType:type download:downloadCopy useForStorageSettings:settingsCopy forceReload:reloadCopy];
  }
}

- (void)_loadImageForImageInfoManagedObject:(id)object imageType:(unint64_t)type download:(id)download useForStorageSettings:(BOOL)settings forceReload:(BOOL)reload
{
  settingsCopy = settings;
  v42 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  downloadCopy = download;
  imageData = [objectCopy imageData];
  data = [imageData data];

  if (!data || reload)
  {
    urlFormat = [objectCopy urlFormat];
    [objectCopy canonicalWidth];
    v17 = v16;
    [objectCopy canonicalHeight];
    v19 = v18;
    if ([urlFormat length] && v17 > 0.0 && v19 > 0.0)
    {
      if (v17 <= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v17;
      }

      if (type == 2)
      {
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen bounds];
        Width = CGRectGetWidth(v43);

        v23 = Width / v20;
        v24 = @"jpeg";
      }

      else
      {
        v24 = @"jpeg";
        if (type - 3 > 2)
        {
          v23 = 400.0 / v20;
        }

        else
        {
          v25 = @"png";

          v23 = 1.0;
          v24 = v25;
        }
      }

      v32 = v24;
      v26 = [objc_alloc(MEMORY[0x1E69D5978]) initUrlWithProperties:urlFormat imageSize:0 focusSizeIncrease:v24 cropCode:v17 * v23 urlFormat:v19 * v23, 0.0];
      v27 = [MEMORY[0x1E69D5988] imageURLWithDescription:v26];
      if (v27)
      {
        objc_initWeak(&location, downloadCopy);
        v28 = sLogObject_20;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = VUIImageTypeString(type);
          *buf = 138412546;
          v39 = v29;
          v40 = 2112;
          v41 = objectCopy;
          _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "Loading image of type %@ for %@", buf, 0x16u);
        }

        mEMORY[0x1E696AF78] = [MEMORY[0x1E696AF78] sharedSession];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __111__VUIDownloadManager__loadImageForImageInfoManagedObject_imageType_download_useForStorageSettings_forceReload___block_invoke;
        v33[3] = &unk_1E87355D0;
        v35[1] = type;
        v34 = objectCopy;
        objc_copyWeak(v35, &location);
        v36 = settingsCopy;
        v31 = [mEMORY[0x1E696AF78] dataTaskWithURL:v27 completionHandler:v33];

        [v31 resume];
        objc_destroyWeak(v35);

        objc_destroyWeak(&location);
      }
    }
  }

  else if (settingsCopy)
  {
    [downloadCopy setStorageSettingsImageData:data];
  }
}

void __111__VUIDownloadManager__loadImageForImageInfoManagedObject_imageType_download_useForStorageSettings_forceReload___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__VUIDownloadManager__loadImageForImageInfoManagedObject_imageType_download_useForStorageSettings_forceReload___block_invoke_2;
  block[3] = &unk_1E87355A8;
  v10 = *(a1 + 48);
  v15 = v8;
  v19[1] = v10;
  v16 = *(a1 + 32);
  v17 = v9;
  v18 = v7;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  objc_copyWeak(v19, (a1 + 40));
  v20 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v19);
}

void __111__VUIDownloadManager__loadImageForImageInfoManagedObject_imageType_download_useForStorageSettings_forceReload___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = sLogObject_20;
  if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 statusCode];
    v7 = VUIImageTypeString(*(a1 + 72));
    v8 = *(a1 + 40);
    v21 = 134218498;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Received image response with http status %ld for type %@ of %@", &v21, 0x20u);
  }

  if (*(a1 + 48) || [v3 statusCode] < 200 || objc_msgSend(v3, "statusCode") > 399)
  {
    v20 = sLogObject_20;
    if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
    {
      __111__VUIDownloadManager__loadImageForImageInfoManagedObject_imageType_download_useForStorageSettings_forceReload___block_invoke_2_cold_1(a1, v20, (a1 + 48));
    }
  }

  else
  {
    v9 = [*(a1 + 56) length];
    v10 = sLogObject_20;
    if (v9)
    {
      if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 72);
        v12 = v10;
        v13 = VUIImageTypeString(v11);
        v14 = [*(a1 + 56) length];
        v21 = 138412546;
        v22 = v13;
        v23 = 2048;
        v24 = v14;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Received image of type %@ with length %lu", &v21, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v16 = [*(a1 + 40) imageData];
      if (*(a1 + 80) == 1)
      {
        [WeakRetained setStorageSettingsImageData:*(a1 + 56)];
      }

      [v16 setData:*(a1 + 56)];
      v17 = +[VUIMediaLibraryManager defaultManager];
      v18 = [v17 sidebandMediaLibrary];
      [v18 saveChangesToManagedObjects];

      if (v16)
      {
        v19 = [v16 managedObjectContext];
        [v19 refreshObject:v16 mergeChanges:0];
      }
    }

    else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
    {
      __111__VUIDownloadManager__loadImageForImageInfoManagedObject_imageType_download_useForStorageSettings_forceReload___block_invoke_2_cold_2();
    }
  }
}

- (void)_loadStorageSettingsImageFromMediaLibraryForVideoManagedObject:(id)object download:(id)download
{
  v20 = *MEMORY[0x1E69E9840];
  downloadCopy = download;
  adamID = [object adamID];
  if ([adamID length])
  {
    v7 = sLogObject_20;
    if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = adamID;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Looking up artwork for adam ID %@ to use with storage settings", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69705D0];
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(adamID, "longLongValue")}];
    v10 = [v8 vui_mediaItemForStoreIdentifier:v9];

    if (v10)
    {
      v11 = _loadStorageSettingsImageFromMediaLibraryForVideoManagedObject_download__dispatchQueueNum++;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VUIDownloadManager media library image load queue %d", v11];
      v13 = dispatch_queue_create([v12 UTF8String], 0);

      objc_initWeak(buf, downloadCopy);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __94__VUIDownloadManager__loadStorageSettingsImageFromMediaLibraryForVideoManagedObject_download___block_invoke;
      block[3] = &unk_1E8730198;
      v15 = v10;
      objc_copyWeak(&v17, buf);
      v16 = adamID;
      dispatch_async(v13, block);

      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }
}

void __94__VUIDownloadManager__loadStorageSettingsImageFromMediaLibraryForVideoManagedObject_download___block_invoke(id *a1)
{
  v2 = [a1[4] artworkCatalog];
  v3 = v2;
  if (v2)
  {
    if ([v2 hasImageOnDisk])
    {
      v4 = [v3 bestImageFromDisk];
      v5 = v4;
      if (v4)
      {
        v6 = UIImageJPEGRepresentation(v4, 1.0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __94__VUIDownloadManager__loadStorageSettingsImageFromMediaLibraryForVideoManagedObject_download___block_invoke_2;
        block[3] = &unk_1E872D9B8;
        objc_copyWeak(&v14, a1 + 6);
        v12 = v6;
        v13 = a1[5];
        v7 = v6;
        dispatch_async(MEMORY[0x1E69E96A0], block);

        objc_destroyWeak(&v14);
      }
    }

    else
    {
      [v3 setFittingSize:{*MEMORY[0x1E696F8B0], *(MEMORY[0x1E696F8B0] + 8)}];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __94__VUIDownloadManager__loadStorageSettingsImageFromMediaLibraryForVideoManagedObject_download___block_invoke_184;
      v8[3] = &unk_1E87355F8;
      objc_copyWeak(&v10, a1 + 6);
      v9 = a1[5];
      [v3 requestImageWithCompletion:v8];

      objc_destroyWeak(&v10);
    }
  }
}

void __94__VUIDownloadManager__loadStorageSettingsImageFromMediaLibraryForVideoManagedObject_download___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && *(a1 + 32))
  {
    v3 = sLogObject_20;
    if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Retrieved image data (on-disk) for adam ID %@ to use with storage settings", &v5, 0xCu);
    }

    [WeakRetained setStorageSettingsImageData:*(a1 + 32)];
  }
}

void __94__VUIDownloadManager__loadStorageSettingsImageFromMediaLibraryForVideoManagedObject_download___block_invoke_184(uint64_t a1, UIImage *image)
{
  if (image)
  {
    v3 = UIImageJPEGRepresentation(image, 1.0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__VUIDownloadManager__loadStorageSettingsImageFromMediaLibraryForVideoManagedObject_download___block_invoke_2_185;
    block[3] = &unk_1E872D9B8;
    objc_copyWeak(&v8, (a1 + 40));
    v6 = v3;
    v7 = *(a1 + 32);
    v4 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v8);
  }
}

void __94__VUIDownloadManager__loadStorageSettingsImageFromMediaLibraryForVideoManagedObject_download___block_invoke_2_185(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && *(a1 + 32))
  {
    v3 = sLogObject_20;
    if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Retrieved image data (requested from network) for adam ID %@ to use with storage settings", &v5, 0xCu);
    }

    [WeakRetained setStorageSettingsImageData:*(a1 + 32)];
  }
}

- (void)_activeAccountDidChange:(id)change
{
  v4 = sLogObject_20;
  if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Active account did change.  Cancelling in-progress downloads for user that is no longer signed in.", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VUIDownloadManager__activeAccountDidChange___block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __46__VUIDownloadManager__activeAccountDidChange___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D5920] activeAccount];
  v3 = [v2 ams_DSID];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [*(a1 + 32) downloads];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = *MEMORY[0x1E69D5B30];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 mediaItem];
        v12 = [v11 mediaItemMetadataForProperty:v8];

        if (v12)
        {
          v13 = v3 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13 || ([v12 isEqualToNumber:v3] & 1) == 0)
        {
          [v10 cancel];
        }

        else
        {
          v14 = sLogObject_20;
          if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Allowing download to continue after account change since download is for the current user", v15, 2u);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (id)_createMediaItemForVideoManagedObject:(id)object isForStartingDownload:(BOOL)download downloadQuality:(int64_t)quality
{
  downloadCopy = download;
  objectCopy = object;
  entitlementType = [objectCopy entitlementType];
  integerValue = [entitlementType integerValue];

  if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    adamID = [objectCopy adamID];
    v11 = -[VUIStoreMediaItem_iOS initWithAdamID:videoManagedObject:isForStartingDownload:]([VUIStoreMediaItem_iOS alloc], "initWithAdamID:videoManagedObject:isForStartingDownload:", [adamID longLongValue], objectCopy, downloadCopy);

    v12 = [(VUIStoreMediaItem_iOS *)v11 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
    v13 = +[VUIMetricsController sharedInstance];
    v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(adamID, "longLongValue")}];
    v15 = [v13 iTunesLibraryPlaybackMediaMetricsForAdamID:v14 mediaType:v12];

    [(VUIStoreMediaItem_iOS *)v11 setMediaItemMetadata:v15 forProperty:*MEMORY[0x1E69D5C70]];
    objectCopy = adamID;
  }

  else
  {
    v11 = [[VUIStoreAuxMediaItem alloc] initWithVideoManagedObject:objectCopy isForStartingDownload:downloadCopy];
  }

  if (downloadCopy)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:quality];
    [(VUIStoreMediaItem_iOS *)v11 setMediaItemMetadata:v16 forProperty:@"VUIMediaItemMetadataKeyDownloadQuality"];
  }

  return v11;
}

- (void)_configureDownloadFromUserPrefs:(id)prefs allowCellular:(BOOL)cellular quality:(int64_t)quality prefer3DOrImmersiveDownload:(BOOL)download
{
  cellularCopy = cellular;
  v43 = *MEMORY[0x1E69E9840];
  prefsCopy = prefs;
  v7 = +[VUIPlaybackSettings sharedSettings];
  preferredAudioDownloadLanguages = [v7 preferredAudioDownloadLanguages];
  v9 = [preferredAudioDownloadLanguages mutableCopy];

  v10 = +[VUIPlaybackSettings sharedSettings];
  useDefaultSubtitleDownloadLanguages = [v10 useDefaultSubtitleDownloadLanguages];

  v12 = +[VUIPlaybackSettings sharedSettings];
  preferredSubtitleDownloadLanguages = [v12 preferredSubtitleDownloadLanguages];

  v13 = +[VUIPlaybackSettings sharedSettings];
  preferAVAdapterCompatibility = [v13 preferAVAdapterCompatibility];

  v15 = [v9 containsObject:@"DEFAULT_LANGUAGE"];
  if (v15)
  {
    [v9 removeObject:@"DEFAULT_LANGUAGE"];
  }

  v16 = [v9 containsObject:@"ORIGINAL_AUDIO_LANGUAGE"];
  if (v16)
  {
    [v9 removeObject:@"ORIGINAL_AUDIO_LANGUAGE"];
  }

  v17 = [v9 containsObject:@"DEVICE_AUDIO_LANGUAGE"];
  if (v17)
  {
    [v9 removeObject:@"DEVICE_AUDIO_LANGUAGE"];
  }

  v18 = +[VUIPlaybackSettings sharedSettings];
  preferredAudioLanguageCode = [v18 preferredAudioLanguageCode];

  if (preferredAudioLanguageCode)
  {
    v20 = +[VUIPlaybackSettings sharedSettings];
    preferredAudioLanguageCode2 = [v20 preferredAudioLanguageCode];
    [v9 addObject:preferredAudioLanguageCode2];
  }

  if (useDefaultSubtitleDownloadLanguages)
  {
    v22 = 0;
  }

  else
  {
    v22 = preferredSubtitleDownloadLanguages;
  }

  [prefsCopy setAllowCellularUsage:cellularCopy];
  [prefsCopy setIncludeDefaultAudioOption:v15];
  [prefsCopy setIncludeOriginalAudio:v16];
  [prefsCopy setIncludeDeviceLanguageAudio:v17];
  [prefsCopy setPreferredAudioLanguageCodes:v9];
  [prefsCopy setIncludesAllSubtitles:0];
  [prefsCopy setPreferredSubtitleLanguageCodes:v22];
  [prefsCopy setPreferMostCompatibleRendition:preferAVAdapterCompatibility];
  if ((quality | 2) == 2)
  {
    if ([MEMORY[0x1E698C8A8] deviceIsiPad])
    {
LABEL_14:
      v23 = 0;
      v24 = &unk_1F5E5ED40;
      v25 = &unk_1F5E5DA40;
      v26 = &unk_1F5E5DA28;
      v27 = &unk_1F5E5DA28;
      goto LABEL_33;
    }

    v28 = MGGetSInt32Answer();
    v29 = sLogObject_20;
    if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v42 = v28;
      _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "Screen class: %ld", buf, 0xCu);
    }

    if (v28 > 8)
    {
      if (v28 == 9)
      {
        v23 = 0;
        v24 = &unk_1F5E5ED40;
        v25 = &unk_1F5E5DA10;
        v27 = &unk_1F5E5D9F8;
        v26 = &unk_1F5E5DA28;
      }

      else
      {
        if (v28 != 19)
        {
          goto LABEL_14;
        }

        v26 = 0;
        v27 = 0;
        v25 = 0;
        v23 = 1;
        v24 = &unk_1F5E5ED50;
      }
    }

    else if (v28 == 5)
    {
      v26 = 0;
      v27 = 0;
      v25 = 0;
      v23 = 1;
      v24 = &unk_1F5E5ED80;
    }

    else
    {
      if (v28 != 8)
      {
        goto LABEL_14;
      }

      v26 = 0;
      v27 = 0;
      v25 = 0;
      v23 = 1;
      v24 = &unk_1F5E5ED70;
    }
  }

  else if ([MEMORY[0x1E698C8A8] deviceIsiPad])
  {
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v23 = 1;
    v24 = &unk_1F5E5ED60;
  }

  else
  {
    v30 = MGGetSInt32Answer();
    v31 = &unk_1F5E5ED70;
    if (v30 == 8)
    {
      v31 = &unk_1F5E5ED80;
    }

    v26 = 0;
    v27 = 0;
    v23 = 1;
    v25 = 0;
    if (v30 == 5)
    {
      v24 = &unk_1F5E5ED90;
    }

    else
    {
      v24 = v31;
    }
  }

LABEL_33:
  [prefsCopy setMaximumPresentationWidth:v24];
  [prefsCopy setMaximumAverageBitrateForHDR:v25];
  [prefsCopy setMaximumAverageBitrateForSDRHEVC:v27];
  [prefsCopy setMaximumAverageBitrateForAVC:v26];
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v32 setObject:v24 forKey:@"maxWidth"];
  if ((v23 & 1) == 0)
  {
    [v32 setObject:v25 forKey:@"maximumAverageBitrateForHDR"];
    [v32 setObject:v27 forKey:@"maximumAverageBitrateForSDRHEVC"];
    [v32 setObject:v26 forKey:@"maximumAverageBitrateForAVC"];
  }

  v33 = @"Fast Downloads";
  if (!quality)
  {
    v33 = @"High Quality";
  }

  v34 = MEMORY[0x1E696AD98];
  v35 = v33;
  v36 = [v34 numberWithBool:cellularCopy];
  [v32 setObject:v36 forKey:@"cellularAllowed"];

  [v32 setObject:v35 forKey:@"downloadQualitySetting"];
  [v32 setObject:MEMORY[0x1E695E118] forKey:@"preferHDR"];
  mediaItem = [prefsCopy mediaItem];
  [mediaItem setMediaItemMetadata:v32 forProperty:*MEMORY[0x1E69D5B58]];
}

- (void)_downloadQueueManagerHandleErrorsIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[VUIInterfaceFactory sharedInstance];
  downloadQueueManager = [v3 downloadQueueManager];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  failedDownloads = [(VUIDownloadManager *)self failedDownloads];
  v7 = [failedDownloads countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(failedDownloads);
        }

        error = [*(*(&v13 + 1) + 8 * v10) error];
        if (error)
        {
          [v5 addObject:error];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [failedDownloads countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  [downloadQueueManager handleErrors:v12];
}

- (id)_failedDownloadsNeedingDialog
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  failedDownloads = [(VUIDownloadManager *)self failedDownloads];
  v4 = [failedDownloads countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(failedDownloads);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        error = [v8 error];
        userInfo = [error userInfo];
        v11 = [userInfo objectForKey:@"VUIDownloadManagerSuppressErrorDialogKey"];
        bOOLValue = [v11 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          [v15 addObject:v8];
        }
      }

      v5 = [failedDownloads countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [v15 copy];

  return v13;
}

- (void)_updateCoverArtImagesIfNecessary
{
  v52 = *MEMORY[0x1E69E9840];
  if ([(VUIDownloadManager *)self hasBeenInitialized])
  {
    v3 = +[VUITVAppLauncher sharedInstance];
    isAppRunningWithJS = [v3 isAppRunningWithJS];

    if (isAppRunningWithJS)
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      applicationState = [mEMORY[0x1E69DC668] applicationState];

      if (applicationState == 2)
      {
        v7 = sLogObject_20;
        if (!os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v8 = "Not looking for movies and series that need updated cover art because app is backgrounded";
        v9 = v7;
LABEL_37:
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
        return;
      }

      v10 = +[VUIFeaturesConfiguration sharedInstance];
      downloadConfig = [v10 downloadConfig];
      updateCoverArtForExistingDownloads = [downloadConfig updateCoverArtForExistingDownloads];

      v13 = sLogObject_20;
      v14 = os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT);
      if ((updateCoverArtForExistingDownloads & 1) == 0)
      {
        if (!v14)
        {
          return;
        }

        *buf = 0;
        v8 = "Not looking for movies and series that need updated cover art because it is disabled by JS";
        v9 = v13;
        goto LABEL_37;
      }

      if (v14)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Looking for movies and series that need updated cover art", buf, 2u);
      }

      v15 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary = [v15 sidebandMediaLibrary];
      v17 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5E5DA58, &unk_1F5E5DA70, &unk_1F5E5DA88, &unk_1F5E5DAA0, 0}];
      v18 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F5E5EB08];
      v19 = [sidebandMediaLibrary videosWithDownloadStates:v17 entitlementTypes:v18 sortDescriptors:0 useMainThreadContext:1];

      v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v22 = v19;
      v23 = [v22 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v46;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v46 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v45 + 1) + 8 * i);
            if (([v27 markedAsDeleted] & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                series = [v27 series];
                v29 = series;
                if (series && ([series coverArtHasBeenUpdated] & 1) == 0 && (objc_msgSend(v20, "containsObject:", v29) & 1) == 0)
                {
                  v30 = v20;
                  goto LABEL_23;
                }
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }

                v29 = v27;
                if (([v29 coverArtHasBeenUpdated] & 1) == 0)
                {
                  v30 = v44;
LABEL_23:
                  [v30 addObject:v29];
                  [v21 addObject:v27];
                }
              }

              continue;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v24);
      }

      v31 = [v21 count];
      v32 = sLogObject_20;
      v33 = os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        if (v33)
        {
          v34 = v32;
          v35 = [v44 count];
          *buf = 134217984;
          v50 = v35;
          _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "%lu movie(s) need updated cover art", buf, 0xCu);
        }

        v36 = sLogObject_20;
        if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
          v38 = [v20 count];
          *buf = 134217984;
          v50 = v38;
          _os_log_impl(&dword_1E323F000, v37, OS_LOG_TYPE_DEFAULT, "%lu show(s) need updated cover art", buf, 0xCu);
        }

        v39 = sLogObject_20;
        if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v39;
          v41 = [v21 count];
          *buf = 134217984;
          v50 = v41;
          _os_log_impl(&dword_1E323F000, v40, OS_LOG_TYPE_DEFAULT, "Will update cover art by making playables requests for %lu video(s)", buf, 0xCu);
        }

        allObjects = [v21 allObjects];
        v43 = [allObjects sortedArrayUsingComparator:&__block_literal_global_269];

        [(VUIDownloadManager *)self _updateCoverArtForVideos:v43];
      }

      else if (v33)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v32, OS_LOG_TYPE_DEFAULT, "No movies or shows need updated cover art", buf, 2u);
      }
    }
  }
}

uint64_t __54__VUIDownloadManager__updateCoverArtImagesIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 series];

    v5 = v6;
  }

  v7 = [v5 title];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 series];
    v9 = [v8 title];
  }

  else
  {
    v9 = [v4 title];
  }

  v10 = [v7 localizedCaseInsensitiveCompare:v9];

  return v10;
}

- (void)_updateCoverArtForVideos:(id)videos
{
  v41 = *MEMORY[0x1E69E9840];
  videosCopy = videos;
  if ([videosCopy count])
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    applicationState = [mEMORY[0x1E69DC668] applicationState];

    if (applicationState == 2)
    {
      v7 = sLogObject_20;
      if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Pausing cover art updates since application is backgrounded.  Will resume when app is no longer backgrounded";
LABEL_7:
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      }
    }

    else
    {
      firstObject = [videosCopy firstObject];
      canonicalID = [firstObject canonicalID];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = firstObject;
        series = [v11 series];
        canonicalID2 = [series canonicalID];

        v14 = MEMORY[0x1E696AEC0];
        series2 = [v11 series];
        title = [series2 title];
        title2 = [v11 title];
        v18 = [v14 stringWithFormat:@"[%@ | %@]", title, title2];

        v19 = @"Show";
        series3 = [v11 series];

        [series3 setCoverArtHasBeenUpdated:1];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = @"Movie";
          v21 = MEMORY[0x1E696AEC0];
          title3 = [firstObject title];
          v18 = [v21 stringWithFormat:@"[%@]", title3];

          [firstObject setCoverArtHasBeenUpdated:1];
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }

        canonicalID2 = 0;
      }

      v23 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary = [v23 sidebandMediaLibrary];
      [sidebandMediaLibrary saveChangesToManagedObjects];

      if (canonicalID && v19)
      {
        objc_initWeak(&location, firstObject);
        objc_initWeak(&from, self);
        v25 = sLogObject_20;
        if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v38 = v18;
          v39 = 2112;
          v40 = canonicalID;
          _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "To update cover art, retrieving playable for %@ with video canonical ID %@", buf, 0x16u);
        }

        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __47__VUIDownloadManager__updateCoverArtForVideos___block_invoke_277;
        v27[3] = &unk_1E8735640;
        objc_copyWeak(&v31, &location);
        objc_copyWeak(&v32, &from);
        v28 = v18;
        v29 = canonicalID;
        v30 = videosCopy;
        [VUIPlayableResolver playableForCanonicalID:v29 showID:canonicalID2 mediaType:v19 completion:v27];

        objc_destroyWeak(&v32);
        objc_destroyWeak(&v31);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }

      else
      {
        v26 = sLogObject_20;
        if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = v18;
          _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "Unable to update cover art for %@ because canonical ID or media type is nil", buf, 0xCu);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __47__VUIDownloadManager__updateCoverArtForVideos___block_invoke;
        block[3] = &unk_1E872D990;
        block[4] = self;
        v36 = videosCopy;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }
  }

  else
  {
    v7 = sLogObject_20;
    if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Done updating cover art";
      goto LABEL_7;
    }
  }
}

void __47__VUIDownloadManager__updateCoverArtForVideos___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) subarrayWithRange:{1, objc_msgSend(*(a1 + 40), "count") - 1}];
  [v1 _updateCoverArtForVideos:v2];
}

void __47__VUIDownloadManager__updateCoverArtForVideos___block_invoke_277(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = objc_loadWeakRetained((a1 + 64));
  v9 = sLogObject_20;
  v10 = os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138412546;
      v45 = v11;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Retrieved playable for %@ with video canonical ID %@.  Updating cover art", buf, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [WeakRetained series];
      if (v13)
      {
        v42 = v6;
        v14 = [v5 metadata];
        v15 = [v14 showArtworkURLFormat];

        v16 = [v5 metadata];
        v17 = [v16 showArtworkWidth];

        v18 = [v5 metadata];
        v19 = [v18 showArtworkHeight];

        if ([v15 length] && (objc_msgSend(v17, "doubleValue"), v20 > 0.0) && (objc_msgSend(v19, "doubleValue"), v21 > 0.0))
        {
          v41 = +[VUIMediaLibraryManager defaultManager];
          v22 = [v41 sidebandMediaLibrary];
          v40 = [v22 imageInfoForSeries:v13 imageType:0 createIfNeeded:0 wasCreated:0];

          [v40 setImageType:0];
          [v40 setUrlFormat:v15];
          [v17 doubleValue];
          [v40 setCanonicalWidth:?];
          [v19 doubleValue];
          [v40 setCanonicalHeight:?];
          v23 = +[VUIMediaLibraryManager defaultManager];
          v24 = [v23 sidebandMediaLibrary];
          [v24 saveChangesToManagedObjects];

          [v8 _loadImageForSeriesManagedObject:v13 imageType:0 download:0 useForStorageSettings:0 forceReload:1];
        }

        else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
        {
          __47__VUIDownloadManager__updateCoverArtForVideos___block_invoke_277_cold_2();
        }

        v6 = v42;
      }
    }

    else
    {
      v27 = [v5 metadata];
      v13 = [v27 artworkURLFormat];

      v28 = [v5 metadata];
      v29 = [v28 artworkWidth];

      v30 = [v5 metadata];
      v31 = [v30 artworkHeight];

      if (WeakRetained)
      {
        if ([v13 length] && (objc_msgSend(v29, "doubleValue"), v32 > 0.0) && (objc_msgSend(v31, "doubleValue"), v33 > 0.0))
        {
          +[VUIMediaLibraryManager defaultManager];
          v34 = v43 = v6;
          v35 = [v34 sidebandMediaLibrary];
          v36 = [v35 imageInfoForVideo:WeakRetained imageType:0 createIfNeeded:0 wasCreated:0];

          [v36 setImageType:0];
          [v36 setUrlFormat:v13];
          [v29 doubleValue];
          [v36 setCanonicalWidth:?];
          [v31 doubleValue];
          [v36 setCanonicalHeight:?];
          v37 = +[VUIMediaLibraryManager defaultManager];
          v38 = [v37 sidebandMediaLibrary];
          [v38 saveChangesToManagedObjects];

          v6 = v43;
          [v8 _loadImageForVideoManagedObject:WeakRetained imageType:0 download:0 useForStorageSettings:0 forceReload:1];
        }

        else if (os_log_type_enabled(sLogObject_20, OS_LOG_TYPE_ERROR))
        {
          __47__VUIDownloadManager__updateCoverArtForVideos___block_invoke_277_cold_1();
        }
      }
    }
  }

  else if (v10)
  {
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    *buf = 138412802;
    v45 = v25;
    v46 = 2112;
    v47 = v26;
    v48 = 2112;
    v49 = v6;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Unable to retrieve playable to update cover art for %@ with video canonical ID %@ due to error %@", buf, 0x20u);
  }

  v39 = [*(a1 + 48) subarrayWithRange:{1, objc_msgSend(*(a1 + 48), "count") - 1}];
  [v8 _updateCoverArtForVideos:v39];
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VUIDownloadManager__applicationWillEnterForeground___block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)downloadSession:(os_log_t)log didAddRestoredDownloads:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "Restored download is failed", buf, 2u);
}

void __111__VUIDownloadManager__loadImageForImageInfoManagedObject_imageType_download_useForStorageSettings_forceReload___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 72);
  v6 = a2;
  v7 = VUIImageTypeString(v5);
  v8 = *a3;
  v9 = *(a1 + 40);
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&dword_1E323F000, v6, OS_LOG_TYPE_ERROR, "Error loading image of type %@: %@ for %@", &v10, 0x20u);
}

@end