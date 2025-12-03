@interface VUIUniversalAssetController
- (BOOL)_isVideoFullyDownloadedCheckingSidebandLibrary:(BOOL)library;
- (BOOL)allowsManualDownloadRenewal;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPurchasedRentedOrSynced;
- (BOOL)supportsRedownloadingContent;
- (BOOL)supportsStartingDownload;
- (NSString)brandID;
- (NSString)brandName;
- (NSString)description;
- (VUIContentRating)contentRating;
- (VUIUniversalAssetController)initWithMPMediaItem:(id)item;
- (VUIUniversalAssetController)initWithVideoManagedObject:(id)object mpMediaItem:(id)item videosPlayable:(id)playable;
- (VUIUniversalAssetController)initWithVideosPlayable:(id)playable;
- (id)_adamIDString;
- (id)_createAndSaveVideoManagedObjectForMPMediaItem:(id)item;
- (id)_createAndSaveVideoManagedObjectForPlayable:(id)playable;
- (id)seasonCanonicalId;
- (id)showCanonicalId;
- (unint64_t)hash;
- (void)_createAndSaveVideoManagedObjectForDownloadInitiationAllowingCellular:(BOOL)cellular quality:(int64_t)quality shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)failure prefer3DOrImmersiveDownload:(BOOL)download isAutomatic:(BOOL)automatic;
- (void)_handleMediaLibraryContentsDidChangeNotification:(id)notification;
- (void)_updateDownloadStateAndNotifyListeners;
- (void)_updateObservedDownload;
- (void)_videoManagedObjectPlaybackExpirationDidChange:(id)change;
- (void)_videoManagedObjectWasCreated:(id)created;
- (void)cancelAndRemoveDownload;
- (void)cancelKeyFetch;
- (void)dealloc;
- (void)deleteAndRedownloadAllowingCellular:(BOOL)cellular quality:(int64_t)quality shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)failure completion:(id)completion;
- (void)downloadManager:(id)manager didAddDownloads:(id)downloads removeDownloads:(id)removeDownloads;
- (void)downloadManager:(id)manager downloadDidFinish:(id)finish;
- (void)downloadManager:(id)manager downloadDidProgress:(id)progress;
- (void)downloadManagerDownloadsDidChange:(id)change;
- (void)fetchNewKeysForDownloadedVideo;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseDownload;
- (void)resumeDownload;
- (void)setCompletionDispatchQueue:(id)queue;
- (void)setVideoManagedObject:(id)object;
- (void)startDownloadAllowingCellular:(BOOL)cellular quality:(int64_t)quality shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)failure prefer3DOrImmersiveDownload:(BOOL)download isAutomatic:(BOOL)automatic completion:(id)completion;
@end

@implementation VUIUniversalAssetController

- (VUIUniversalAssetController)initWithVideosPlayable:(id)playable
{
  playableCopy = playable;
  v5 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary = [v5 sidebandMediaLibrary];
  adamID = [playableCopy adamID];
  v8 = [sidebandMediaLibrary videoForAdamID:adamID useMainThreadContext:1];

  if (![playableCopy isiTunesPurchaseOrRental] || (objc_msgSend(playableCopy, "isFamilySharingContent") & 1) != 0)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = MEMORY[0x1E69705D0];
  adamID2 = [playableCopy adamID];
  v11 = [v9 vui_mediaItemForStoreIdentifierString:adamID2];

  if (!v11)
  {
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(VUIUniversalAssetController *)playableCopy initWithVideosPlayable:v12];
    }

    goto LABEL_7;
  }

LABEL_8:
  v13 = [(VUIUniversalAssetController *)self initWithVideoManagedObject:v8 mpMediaItem:v11 videosPlayable:playableCopy];

  return v13;
}

- (VUIUniversalAssetController)initWithMPMediaItem:(id)item
{
  itemCopy = item;
  vui_adamIDString = [itemCopy vui_adamIDString];
  if (vui_adamIDString)
  {
    v6 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v6 sidebandMediaLibrary];
    v8 = [sidebandMediaLibrary videoForAdamID:vui_adamIDString useMainThreadContext:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(VUIUniversalAssetController *)self initWithVideoManagedObject:v8 mpMediaItem:itemCopy videosPlayable:0];

  return v9;
}

- (VUIUniversalAssetController)initWithVideoManagedObject:(id)object mpMediaItem:(id)item videosPlayable:(id)playable
{
  v36 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  itemCopy = item;
  playableCopy = playable;
  v31.receiver = self;
  v31.super_class = VUIUniversalAssetController;
  v11 = [(VUIUniversalAssetController *)&v31 init];
  if (v11)
  {
    if (objectCopy)
    {
      v12 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary = [v12 sidebandMediaLibrary];
      v14 = [sidebandMediaLibrary mainContextVideoForVideo:objectCopy];

      objectCopy = v14;
    }

    objc_storeStrong(&v11->_videoManagedObject, objectCopy);
    objc_storeStrong(&v11->_mpMediaItem, item);
    objc_storeStrong(&v11->_videosPlayable, playable);
    objc_storeStrong(&v11->_completionDispatchQueueInternal, MEMORY[0x1E69E96A0]);
    v15 = objc_alloc_init(VUIMediaEntityAssetControllerState);
    stateInternal = v11->_stateInternal;
    v11->_stateInternal = v15;

    [(VUIMediaEntityAssetControllerState *)v11->_stateInternal setStatus:0];
    [(VUIMediaEntityAssetControllerState *)v11->_stateInternal setDownloadProgress:-1.0];
    [(VUIMediaEntityAssetControllerState *)v11->_stateInternal setSupportsCancellation:1];
    [(VUIMediaEntityAssetControllerState *)v11->_stateInternal setSupportsPausing:1];
    videoManagedObject = v11->_videoManagedObject;
    if (videoManagedObject)
    {
      [(VUIVideoManagedObject *)videoManagedObject addObserver:v11 forKeyPath:@"downloadState" options:0 context:__VideoManagedObjectDownloadStateKVOContext];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      objectID = [(VUIVideoManagedObject *)v11->_videoManagedObject objectID];
      [defaultCenter addObserver:v11 selector:sel__videoManagedObjectPlaybackExpirationDidChange_ name:@"VUIVideoManagedObjectPlaybackExpirationDidChangeNotification" object:objectID];
    }

    if (itemCopy)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      v21 = *MEMORY[0x1E696FBA8];
      mediaLibrary = [itemCopy mediaLibrary];
      [defaultCenter2 addObserver:v11 selector:sel__handleMediaLibraryContentsDidChangeNotification_ name:v21 object:mediaLibrary];

      mEMORY[0x1E69709A8] = [MEMORY[0x1E69709A8] sharedManager];
      [mEMORY[0x1E69709A8] addObserver:v11 forDownloads:0];

      mEMORY[0x1E69709A8]2 = [MEMORY[0x1E69709A8] sharedManager];
      v25 = [mEMORY[0x1E69709A8]2 downloadForMediaItem:itemCopy];

      if (v25)
      {
        v26 = VUIDefaultLogObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v33 = v11;
          v34 = 2112;
          v35 = v25;
          _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "%@ Setting store download to: %@", buf, 0x16u);
        }

        objc_storeStrong(&v11->_storeDownload, v25);
      }
    }

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v11 selector:sel__videoManagedObjectWasCreated_ name:@"VUIUniversalAssetControllerDidCreateVideoManagedObject" object:0];

    v28 = +[VUIDownloadManager sharedInstance];
    [v28 addDelegate:v11];

    [(VUIUniversalAssetController *)v11 _updateObservedDownload];
    [(VUIUniversalAssetController *)v11 _updateDownloadStateAndNotifyListeners];
    v29 = VUIDefaultLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v11;
      _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "%@ created ", buf, 0xCu);
    }
  }

  return v11;
}

- (id)_adamIDString
{
  videosPlayable = [(VUIUniversalAssetController *)self videosPlayable];

  if (videosPlayable)
  {
    videosPlayable2 = [(VUIUniversalAssetController *)self videosPlayable];
LABEL_3:
    mpMediaItem2 = videosPlayable2;
    adamID = [videosPlayable2 adamID];
    goto LABEL_6;
  }

  mpMediaItem = [(VUIUniversalAssetController *)self mpMediaItem];

  if (!mpMediaItem)
  {
    videosPlayable2 = [(VUIUniversalAssetController *)self videoManagedObject];
    goto LABEL_3;
  }

  mpMediaItem2 = [(VUIUniversalAssetController *)self mpMediaItem];
  adamID = [mpMediaItem2 vui_adamIDString];
LABEL_6:
  v8 = adamID;

  return v8;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  [(VUIVideoManagedObject *)self->_videoManagedObject removeObserver:self forKeyPath:@"downloadState" context:__VideoManagedObjectDownloadStateKVOContext];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  if (self->_mpMediaItem)
  {
    mEMORY[0x1E69709A8] = [MEMORY[0x1E69709A8] sharedManager];
    [mEMORY[0x1E69709A8] removeObserver:self forDownloads:0];
  }

  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "%@ deallocated ", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = VUIUniversalAssetController;
  [(VUIUniversalAssetController *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (__VideoManagedObjectDownloadStateKVOContext == context)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__VUIUniversalAssetController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E872D768;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = VUIUniversalAssetController;
    [(VUIUniversalAssetController *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)setVideoManagedObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v5 = objectCopy;
    v6 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v6 sidebandMediaLibrary];
    obja = [sidebandMediaLibrary mainContextVideoForVideo:v5];

    v8 = obja;
  }

  else
  {
    v8 = 0;
  }

  videoManagedObject = self->_videoManagedObject;
  if (videoManagedObject != v8)
  {
    obj = v8;
    if (videoManagedObject)
    {
      [(VUIVideoManagedObject *)videoManagedObject removeObserver:self forKeyPath:@"downloadState" context:__VideoManagedObjectDownloadStateKVOContext];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      objectID = [(VUIVideoManagedObject *)self->_videoManagedObject objectID];
      [defaultCenter removeObserver:self name:@"VUIVideoManagedObjectPlaybackExpirationDidChangeNotification" object:objectID];

      v8 = obj;
    }

    objc_storeStrong(&self->_videoManagedObject, v8);
    if (obj)
    {
      [(VUIVideoManagedObject *)obj addObserver:self forKeyPath:@"downloadState" options:0 context:__VideoManagedObjectDownloadStateKVOContext];
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      objectID2 = [(VUIVideoManagedObject *)self->_videoManagedObject objectID];
      [defaultCenter2 addObserver:self selector:sel__videoManagedObjectPlaybackExpirationDidChange_ name:@"VUIVideoManagedObjectPlaybackExpirationDidChangeNotification" object:objectID2];
    }

    [(VUIUniversalAssetController *)self _updateObservedDownload];
    [(VUIUniversalAssetController *)self _updateDownloadStateAndNotifyListeners];
    v8 = obj;
  }
}

- (BOOL)supportsStartingDownload
{
  mpMediaItem = [(VUIUniversalAssetController *)self mpMediaItem];

  if (!mpMediaItem)
  {
    activeAccount = [MEMORY[0x1E69D5920] activeAccount];
    ams_DSID = [activeAccount ams_DSID];
    v9 = ams_DSID != 0;
LABEL_8:

    goto LABEL_9;
  }

  mpMediaItem2 = [(VUIUniversalAssetController *)self mpMediaItem];
  v5 = [mpMediaItem2 valueForProperty:*MEMORY[0x1E696FB60]];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  if (!unsignedLongLongValue)
  {
LABEL_10:
    LOBYTE(v9) = 0;
    return v9;
  }

  mpMediaItem3 = [(VUIUniversalAssetController *)self mpMediaItem];
  activeAccount = [mpMediaItem3 valueForProperty:*MEMORY[0x1E696FB38]];

  if (([activeAccount isEqual:&unk_1F5E5D0F8] & 1) == 0)
  {
    if (activeAccount)
    {
      ams_DSID = [MEMORY[0x1E69D5920] activeAccount];
      v10Ams_DSID = [ams_DSID ams_DSID];
      LOBYTE(v9) = [v10Ams_DSID isEqual:activeAccount];

      goto LABEL_8;
    }

    goto LABEL_10;
  }

  LOBYTE(v9) = 0;
LABEL_9:

  return v9;
}

- (BOOL)supportsRedownloadingContent
{
  mpMediaItem = [(VUIUniversalAssetController *)self mpMediaItem];
  v3 = mpMediaItem == 0;

  return v3;
}

- (void)setCompletionDispatchQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    v5 = MEMORY[0x1E69E96A0];
    queueCopy = MEMORY[0x1E69E96A0];
  }

  v6 = queueCopy;
  [(VUIUniversalAssetController *)self setCompletionDispatchQueueInternal:queueCopy];
}

- (void)startDownloadAllowingCellular:(BOOL)cellular quality:(int64_t)quality shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)failure prefer3DOrImmersiveDownload:(BOOL)download isAutomatic:(BOOL)automatic completion:(id)completion
{
  automaticCopy = automatic;
  downloadCopy = download;
  failureCopy = failure;
  cellularCopy = cellular;
  v41[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([(VUIUniversalAssetController *)self supportsStartingDownload])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    if ([standardUserDefaults BOOLForKey:@"UseLegacyDownloader"])
    {
      mpMediaItem = [(VUIUniversalAssetController *)self mpMediaItem];

      if (mpMediaItem)
      {
        v17 = VUIDefaultLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Using legacy download path for transactional content because UseLegacyDownloader is set", buf, 2u);
        }

        v18 = MEMORY[0x1E69709A0];
        mpMediaItem2 = [(VUIUniversalAssetController *)self mpMediaItem];
        videoManagedObject = [v18 storeDownloadForMediaItem:mpMediaItem2 type:1 attributes:0];

        if (videoManagedObject)
        {
          mEMORY[0x1E69709A8] = [MEMORY[0x1E69709A8] sharedManager];
          v41[0] = videoManagedObject;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
          v23 = [mEMORY[0x1E69709A8] addDownloads:v22];
        }

        completionDispatchQueue = [(VUIUniversalAssetController *)self completionDispatchQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __163__VUIUniversalAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke_34;
        block[3] = &unk_1E872D7E0;
        v36 = completionCopy;
        dispatch_async(completionDispatchQueue, block);

        v25 = v36;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    [(VUIUniversalAssetController *)self _createAndSaveVideoManagedObjectForDownloadInitiationAllowingCellular:cellularCopy quality:quality shouldMarkAsDeletedOnCancellationOrFailure:failureCopy prefer3DOrImmersiveDownload:downloadCopy isAutomatic:automaticCopy];
    videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
    if (videoManagedObject)
    {
      v28 = +[VUIInterfaceFactory sharedInstance];
      downloadQueueManager = [v28 downloadQueueManager];

      v40 = videoManagedObject;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      [downloadQueueManager enqueueDownloadsForVideoManagedObjects:v30];

      v31 = +[VUIDownloadManager sharedInstance];
      [v31 loadImageForVideoManagedObject:videoManagedObject];
    }

    else
    {
      downloadQueueManager = VUIDefaultLogObject();
      if (os_log_type_enabled(downloadQueueManager, OS_LOG_TYPE_ERROR))
      {
        [VUIUniversalAssetController startDownloadAllowingCellular:quality:shouldMarkAsDeletedOnCancellationOrFailure:prefer3DOrImmersiveDownload:isAutomatic:completion:];
      }
    }

    completionDispatchQueue2 = [(VUIUniversalAssetController *)self completionDispatchQueue];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __163__VUIUniversalAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke_36;
    v33[3] = &unk_1E872D7E0;
    v34 = completionCopy;
    dispatch_async(completionDispatchQueue2, v33);

    v25 = v34;
    goto LABEL_18;
  }

  v26 = VUIDefaultLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [VUIUniversalAssetController startDownloadAllowingCellular:quality:shouldMarkAsDeletedOnCancellationOrFailure:prefer3DOrImmersiveDownload:isAutomatic:completion:];
  }

  completionDispatchQueue3 = [(VUIUniversalAssetController *)self completionDispatchQueue];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __163__VUIUniversalAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke;
  v38[3] = &unk_1E872D7E0;
  v39 = completionCopy;
  dispatch_async(completionDispatchQueue3, v38);

  videoManagedObject = v39;
LABEL_19:
}

uint64_t __163__VUIUniversalAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t __163__VUIUniversalAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke_34(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

uint64_t __163__VUIUniversalAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke_36(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)deleteAndRedownloadAllowingCellular:(BOOL)cellular quality:(int64_t)quality shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)failure completion:(id)completion
{
  failureCopy = failure;
  cellularCopy = cellular;
  completionCopy = completion;
  mpMediaItem = [(VUIUniversalAssetController *)self mpMediaItem];
  if (mpMediaItem)
  {
    v11 = mpMediaItem;
    v12 = [(VUIUniversalAssetController *)self _isVideoFullyDownloadedCheckingSidebandLibrary:0];

    if (v12)
    {
      [(VUIUniversalAssetController *)self cancelAndRemoveDownload];
    }
  }

  [(VUIUniversalAssetController *)self startDownloadAllowingCellular:cellularCopy quality:quality shouldMarkAsDeletedOnCancellationOrFailure:failureCopy prefer3DOrImmersiveDownload:1 isAutomatic:0 completion:completionCopy];
}

- (void)fetchNewKeysForDownloadedVideo
{
  videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
  v2 = +[VUIDownloadManager sharedInstance];
  [v2 fetchNewKeysForDownloadedVideoManagedObject:videoManagedObject];
}

- (void)pauseDownload
{
  videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
  adamID = [videoManagedObject adamID];
  v3 = +[VUIDownloadManager sharedInstance];
  v4 = [v3 existingDownloadForAdamID:adamID];

  [v4 pause];
}

- (void)resumeDownload
{
  videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
  adamID = [videoManagedObject adamID];
  v3 = +[VUIDownloadManager sharedInstance];
  v4 = [v3 existingDownloadForAdamID:adamID];

  [v4 start];
}

- (void)cancelAndRemoveDownload
{
  v45[1] = *MEMORY[0x1E69E9840];
  mpMediaItem = [(VUIUniversalAssetController *)self mpMediaItem];

  if (mpMediaItem)
  {
    storeDownload = [(VUIUniversalAssetController *)self storeDownload];

    if (storeDownload)
    {
      mEMORY[0x1E69709A8] = [MEMORY[0x1E69709A8] sharedManager];
      storeDownload2 = [(VUIUniversalAssetController *)self storeDownload];
      v45[0] = storeDownload2;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
      [mEMORY[0x1E69709A8] cancelDownloads:v7];
    }

    if ([(VUIUniversalAssetController *)self _isVideoFullyDownloadedCheckingSidebandLibrary:0])
    {
      v8 = VUIDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Removing download from MP library", buf, 0xCu);
      }

      mpMediaItem2 = [(VUIUniversalAssetController *)self mpMediaItem];
      mediaLibrary = [mpMediaItem2 mediaLibrary];
      mpMediaItem3 = [(VUIUniversalAssetController *)self mpMediaItem];
      v42 = mpMediaItem3;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      v13 = [mediaLibrary removeItems:v12];

      if (v13)
      {
        mpMediaItem4 = [(VUIUniversalAssetController *)self mpMediaItem];
        [mpMediaItem4 invalidateCachedProperties];

        [(VUIUniversalAssetController *)self _updateDownloadStateAndNotifyListeners];
      }

      else
      {
        v15 = VUIDefaultLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [VUIUniversalAssetController cancelAndRemoveDownload];
        }
      }
    }
  }

  mpMediaItem5 = [(VUIUniversalAssetController *)self mpMediaItem];
  if ([mpMediaItem5 isRental])
  {
  }

  else
  {
    videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
    rentalID = [videoManagedObject rentalID];

    if (!rentalID)
    {
      goto LABEL_22;
    }
  }

  mpMediaItem6 = [(VUIUniversalAssetController *)self mpMediaItem];
  if (mpMediaItem6)
  {
    mpMediaItem7 = [(VUIUniversalAssetController *)self mpMediaItem];
    [mpMediaItem7 valueForProperty:*MEMORY[0x1E696FB78]];
  }

  else
  {
    mpMediaItem7 = [(VUIUniversalAssetController *)self videoManagedObject];
    [mpMediaItem7 rentalID];
  }
  v21 = ;

  mpMediaItem8 = [(VUIUniversalAssetController *)self mpMediaItem];
  if (mpMediaItem8)
  {
    mpMediaItem9 = [(VUIUniversalAssetController *)self mpMediaItem];
    [mpMediaItem9 valueForProperty:*MEMORY[0x1E696FB38]];
  }

  else
  {
    mpMediaItem9 = [(VUIUniversalAssetController *)self videoManagedObject];
    [mpMediaItem9 dsid];
  }
  v24 = ;

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__VUIUniversalAssetController_cancelAndRemoveDownload__block_invoke;
  block[3] = &unk_1E8730F50;
  v38 = v21;
  v39 = v24;
  v25 = v24;
  v26 = v21;
  objc_copyWeak(&v40, buf);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v40);

  objc_destroyWeak(buf);
LABEL_22:
  videoManagedObject2 = [(VUIUniversalAssetController *)self videoManagedObject];
  adamID = [videoManagedObject2 adamID];
  downloadState = [videoManagedObject2 downloadState];
  if (!videoManagedObject2)
  {
    v35 = +[VUIDownloadManager sharedInstance];
    [v35 cancelDownloadForAdamID:adamID];
    goto LABEL_27;
  }

  v30 = downloadState;
  v31 = +[VUIInterfaceFactory sharedInstance];
  downloadQueueManager = [v31 downloadQueueManager];

  v41 = videoManagedObject2;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  [downloadQueueManager removeDownloadsForVideoManagedObjects:v33];

  v34 = +[VUIDownloadManager sharedInstance];
  [v34 cancelDownloadForAdamID:adamID];

  if (v30 <= 3 && v30 != 1)
  {
    v35 = +[VUIMediaLibraryManager defaultManager];
    sidebandMediaLibrary = [v35 sidebandMediaLibrary];
    [sidebandMediaLibrary removeDownloadedMediaForVideoManagedObject:videoManagedObject2 markAsDeleted:1 invalidateImmediately:1];

LABEL_27:
  }
}

void __54__VUIUniversalAssetController_cancelAndRemoveDownload__block_invoke(uint64_t a1)
{
  v2 = +[VUIRentalManager sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__VUIUniversalAssetController_cancelAndRemoveDownload__block_invoke_2;
  v5[3] = &unk_1E87306E0;
  objc_copyWeak(&v6, (a1 + 48));
  [v2 checkInRentalWithID:v3 dsid:v4 completion:v5];

  objc_destroyWeak(&v6);
}

void __54__VUIUniversalAssetController_cancelAndRemoveDownload__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = VUIBoolLogString();
    v8 = [v4 description];
    v9 = 138412802;
    v10 = WeakRetained;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Finished checking-in rental, success:[%@], error:[%@]", &v9, 0x20u);
  }
}

- (void)cancelKeyFetch
{
  videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
  adamID = [videoManagedObject adamID];
  v3 = +[VUIDownloadManager sharedInstance];
  [v3 cancelDownloadForAdamID:adamID];
}

- (VUIContentRating)contentRating
{
  mpMediaItem = [(VUIUniversalAssetController *)self mpMediaItem];

  if (mpMediaItem)
  {
    mpMediaItem2 = [(VUIUniversalAssetController *)self mpMediaItem];
    vui_contentRating = [mpMediaItem2 vui_contentRating];
LABEL_9:

    goto LABEL_10;
  }

  videosPlayable = [(VUIUniversalAssetController *)self videosPlayable];

  if (videosPlayable)
  {
    videosPlayable2 = [(VUIUniversalAssetController *)self videosPlayable];
    metadata = [videosPlayable2 metadata];
    mpMediaItem2 = [metadata ratingName];

    videosPlayable3 = [(VUIUniversalAssetController *)self videosPlayable];
    metadata2 = [videosPlayable3 metadata];
    ratingSystem = [metadata2 ratingSystem];

    if ([ratingSystem length] && objc_msgSend(mpMediaItem2, "length"))
    {
      videosPlayable4 = [(VUIUniversalAssetController *)self videosPlayable];
      metadata3 = [videosPlayable4 metadata];
      ratingValue = [metadata3 ratingValue];

      vui_contentRating = [objc_alloc(MEMORY[0x1E69DF6B8]) initWithRatingSystemString:ratingSystem ratingLabel:mpMediaItem2 rank:objc_msgSend(ratingValue ratingDescription:{"unsignedIntegerValue"), 0}];
    }

    else
    {
      vui_contentRating = 0;
    }

    goto LABEL_9;
  }

  vui_contentRating = 0;
LABEL_10:

  return vui_contentRating;
}

- (NSString)brandName
{
  videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
  v4 = videoManagedObject;
  if (videoManagedObject)
  {
    brandName = [videoManagedObject brandName];
  }

  else
  {
    videosPlayable = [(VUIUniversalAssetController *)self videosPlayable];

    if (videosPlayable)
    {
      videosPlayable2 = [(VUIUniversalAssetController *)self videosPlayable];
      brandName = [videosPlayable2 channelName];
    }

    else
    {
      brandName = 0;
    }
  }

  return brandName;
}

- (NSString)brandID
{
  videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
  v4 = videoManagedObject;
  if (videoManagedObject)
  {
    brandID = [videoManagedObject brandID];
  }

  else
  {
    videosPlayable = [(VUIUniversalAssetController *)self videosPlayable];

    if (videosPlayable)
    {
      videosPlayable2 = [(VUIUniversalAssetController *)self videosPlayable];
      brandID = [videosPlayable2 channelID];
    }

    else
    {
      brandID = 0;
    }
  }

  return brandID;
}

- (BOOL)allowsManualDownloadRenewal
{
  videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
  allowsManualRenewal = [videoManagedObject allowsManualRenewal];

  return allowsManualRenewal;
}

- (void)downloadManagerDownloadsDidChange:(id)change
{
  [(VUIUniversalAssetController *)self _updateObservedDownload];

  [(VUIUniversalAssetController *)self _updateDownloadStateAndNotifyListeners];
}

- (void)downloadManager:(id)manager didAddDownloads:(id)downloads removeDownloads:(id)removeDownloads
{
  downloadsCopy = downloads;
  removeDownloadsCopy = removeDownloads;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__VUIUniversalAssetController_downloadManager_didAddDownloads_removeDownloads___block_invoke;
  block[3] = &unk_1E872E008;
  block[4] = self;
  v12 = downloadsCopy;
  v13 = removeDownloadsCopy;
  v9 = removeDownloadsCopy;
  v10 = downloadsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __79__VUIUniversalAssetController_downloadManager_didAddDownloads_removeDownloads___block_invoke(id *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] mpMediaItem];
  v3 = [v2 valueForProperty:*MEMORY[0x1E696FB60]];
  v4 = [v3 unsignedLongLongValue];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = a1[5];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if ([v10 storeItemIdentifier] == v4)
        {
          v11 = VUIDefaultLogObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = a1[4];
            *buf = 138412546;
            v38 = v12;
            v39 = 2112;
            v40 = v10;
            _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "%@ Store download added: %@", buf, 0x16u);
          }

          [a1[4] setStoreDownload:v10];
          [a1[4] _updateDownloadStateAndNotifyListeners];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = a1[6];
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v29;
    *&v15 = 138412290;
    v27 = v15;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v28 + 1) + 8 * j);
        if ([v19 storeItemIdentifier] == v4)
        {
          v20 = VUIDefaultLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = a1[4];
            *buf = 138412546;
            v38 = v21;
            v39 = 2112;
            v40 = v19;
            _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "%@ Store download removed: %@", buf, 0x16u);
          }

          v22 = [a1[4] storeDownload];
          v23 = [v22 isFinished];

          if ((v23 & 1) == 0)
          {
            v24 = [a1[4] storeDownload];

            if (v24)
            {
              v25 = VUIDefaultLogObject();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = a1[4];
                *buf = v27;
                v38 = v26;
                _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "%@ Setting store download to nil", buf, 0xCu);
              }

              [a1[4] setStoreDownload:0];
              [a1[4] _updateDownloadStateAndNotifyListeners];
            }
          }
        }
      }

      v16 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
  }
}

- (void)downloadManager:(id)manager downloadDidProgress:(id)progress
{
  progressCopy = progress;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__VUIUniversalAssetController_downloadManager_downloadDidProgress___block_invoke;
  v7[3] = &unk_1E872D990;
  v8 = progressCopy;
  selfCopy = self;
  v6 = progressCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __67__VUIUniversalAssetController_downloadManager_downloadDidProgress___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) storeDownload];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 40);

    [v4 _updateDownloadStateAndNotifyListeners];
  }
}

- (void)downloadManager:(id)manager downloadDidFinish:(id)finish
{
  finishCopy = finish;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__VUIUniversalAssetController_downloadManager_downloadDidFinish___block_invoke;
  v7[3] = &unk_1E872D990;
  v8 = finishCopy;
  selfCopy = self;
  v6 = finishCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __65__VUIUniversalAssetController_downloadManager_downloadDidFinish___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) storeDownload];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = *(a1 + 40);

    [v4 _updateDownloadStateAndNotifyListeners];
  }
}

- (void)_updateObservedDownload
{
  videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
  download = [(VUIUniversalAssetController *)self download];
  adamID = [videoManagedObject adamID];
  v5 = +[VUIDownloadManager sharedInstance];
  v6 = [v5 existingDownloadForAdamID:adamID];

  if (v6 != download)
  {
    [v6 addDelegate:self];
    [download removeDelegate:self];
    [(VUIUniversalAssetController *)self setDownload:v6];
  }
}

- (void)_updateDownloadStateAndNotifyListeners
{
  v45 = *MEMORY[0x1E69E9840];
  videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
  queue = [(VUIUniversalAssetController *)self completionDispatchQueueInternal];
  download = [(VUIUniversalAssetController *)self download];
  if ([(VUIUniversalAssetController *)self _isVideoFullyDownloadedCheckingSidebandLibrary:1])
  {
    storeDownload = [(VUIUniversalAssetController *)self storeDownload];

    if (storeDownload)
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Setting store download to nil", buf, 0xCu);
      }

      [(VUIUniversalAssetController *)self setStoreDownload:0];
    }

    v7 = 4;
    if (videoManagedObject)
    {
      goto LABEL_7;
    }

LABEL_10:
    downloadFailedDueToError = 0;
    allowsCellular = 0;
    availabilityEndDate = 0;
    offlineKeyRenewalPolicy = 0;
    expirationDate = 0;
    v8 = -1.0;
    goto LABEL_17;
  }

  v7 = 0;
  if (!videoManagedObject)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ([videoManagedObject downloadState] == 2)
  {
    v8 = -1.0;
    v7 = 4;
  }

  else
  {
    downloadState = [videoManagedObject downloadState];
    if (downloadState == 3)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = -1.0;
    }

    if (downloadState == 3)
    {
      v7 = 5;
    }
  }

  expirationDate = [videoManagedObject expirationDate];
  offlineKeyRenewalPolicy = [videoManagedObject offlineKeyRenewalPolicy];
  availabilityEndDate = [videoManagedObject availabilityEndDate];
  allowsCellular = [videoManagedObject allowsCellular];
  downloadFailedDueToError = [videoManagedObject downloadFailedDueToError];
LABEL_17:
  if (v7 == 4)
  {
    goto LABEL_18;
  }

  if (!download)
  {
    storeDownload2 = [(VUIUniversalAssetController *)self storeDownload];

    if (!storeDownload2)
    {
      goto LABEL_18;
    }

    storeDownload3 = [(VUIUniversalAssetController *)self storeDownload];
    [storeDownload3 percentComplete];
    v8 = v21;

    storeDownload4 = [(VUIUniversalAssetController *)self storeDownload];
    phaseIdentifier = [storeDownload4 phaseIdentifier];

    v36 = phaseIdentifier;
    if (([phaseIdentifier isEqualToString:*MEMORY[0x1E69703B8]] & 1) != 0 || (objc_msgSend(phaseIdentifier, "isEqualToString:", *MEMORY[0x1E69703E0]) & 1) != 0 || (objc_msgSend(phaseIdentifier, "isEqualToString:", *MEMORY[0x1E69703E8]) & 1) != 0 || objc_msgSend(phaseIdentifier, "isEqualToString:", *MEMORY[0x1E69703D0]))
    {
      v24 = 1;
      if (v8 > 0.00000011920929)
      {
        v24 = 2;
      }
    }

    else
    {
      if ([phaseIdentifier isEqualToString:*MEMORY[0x1E69703C0]])
      {
        v34 = 0;
        downloadFailedDueToError = 1;
        goto LABEL_39;
      }

      if ([phaseIdentifier isEqualToString:*MEMORY[0x1E69703B0]])
      {
        v34 = 0;
        goto LABEL_39;
      }

      if ([phaseIdentifier isEqualToString:*MEMORY[0x1E69703C8]])
      {
        storeDownload5 = [(VUIUniversalAssetController *)self storeDownload];
        failureError = [storeDownload5 failureError];
        v30 = failureError;
        if (failureError)
        {
          purchaseError = failureError;
        }

        else
        {
          storeDownload6 = [(VUIUniversalAssetController *)self storeDownload];
          purchaseError = [storeDownload6 purchaseError];
        }

        v34 = 4 * (purchaseError == 0);
        downloadFailedDueToError |= purchaseError != 0;

        goto LABEL_39;
      }

      v32 = [phaseIdentifier isEqualToString:*MEMORY[0x1E69703D8]];
      v24 = 3;
      if (!v32)
      {
        v24 = 1;
      }
    }

    v34 = v24;
LABEL_39:
    storeDownload7 = [(VUIUniversalAssetController *)self storeDownload];
    isCanceled = [storeDownload7 isCanceled];

    if (isCanceled)
    {
      v7 = 0;
    }

    else
    {
      v7 = v34;
    }

    goto LABEL_18;
  }

  state = [download state];
  if (state <= 2)
  {
    if (state)
    {
      if (state == 1)
      {
        [download progress];
        v8 = v28;
        v7 = 2;
      }

      else if (state == 2)
      {
        v7 = 3;
      }

      goto LABEL_18;
    }

LABEL_49:
    v7 = 0;
    goto LABEL_18;
  }

  if ((state - 4) < 2)
  {
    goto LABEL_49;
  }

  v27 = 1;
  if (state != 6)
  {
    v27 = v7;
  }

  if (state == 3)
  {
    v7 = 4;
  }

  else
  {
    v7 = v27;
  }

LABEL_18:
  v15 = objc_alloc_init(VUIMediaEntityAssetControllerState);
  [(VUIMediaEntityAssetControllerState *)v15 setStatus:v7];
  [(VUIMediaEntityAssetControllerState *)v15 setDownloadProgress:v8];
  [(VUIMediaEntityAssetControllerState *)v15 setDownloadFailedDueToError:downloadFailedDueToError & 1];
  [(VUIMediaEntityAssetControllerState *)v15 setSupportsCancellation:1];
  [(VUIMediaEntityAssetControllerState *)v15 setSupportsPausing:1];
  [(VUIMediaEntityAssetControllerState *)v15 setDownloadExpirationDate:expirationDate];
  -[VUIMediaEntityAssetControllerState setRenewsOfflineKeysAutomatically:](v15, "setRenewsOfflineKeysAutomatically:", [offlineKeyRenewalPolicy integerValue] == 1);
  [(VUIMediaEntityAssetControllerState *)v15 setAvailabilityEndDate:availabilityEndDate];
  [(VUIMediaEntityAssetControllerState *)v15 setAllowsCellular:allowsCellular];
  if (download)
  {
    -[VUIMediaEntityAssetControllerState setPerformsKeyFetchOnly:](v15, "setPerformsKeyFetchOnly:", [download performKeyFetchOnly]);
  }

  [(VUIUniversalAssetController *)self setStateInternal:v15];
  if (v15)
  {
    v41 = @"VUIMediaEntityAssetControllerStateKey";
    v42 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  }

  else
  {
    v16 = 0;
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__VUIUniversalAssetController__updateDownloadStateAndNotifyListeners__block_invoke;
  block[3] = &unk_1E872F038;
  objc_copyWeak(&v40, buf);
  v39 = v16;
  v18 = v16;
  dispatch_async(queue, block);

  objc_destroyWeak(&v40);
  objc_destroyWeak(buf);
}

void __69__VUIUniversalAssetController__updateDownloadStateAndNotifyListeners__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"VUIMediaEntityAssetControllerStateDidChangeNotification" object:v4 userInfo:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)_handleMediaLibraryContentsDidChangeNotification:(id)notification
{
  mpMediaItem = [(VUIUniversalAssetController *)self mpMediaItem];
  v5 = *MEMORY[0x1E696FA98];
  v6 = [mpMediaItem valueForProperty:*MEMORY[0x1E696FA98]];

  if (v6)
  {
    v7 = [MEMORY[0x1E6970610] predicateWithValue:v6 forProperty:v5];
    v8 = objc_alloc(MEMORY[0x1E6970618]);
    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{v7, 0}];
    v10 = [v8 initWithFilterPredicates:v9];

    [v10 setEntityLimit:1];
  }

  else
  {
    v10 = 0;
  }

  items = [v10 items];
  v12 = [items count];

  if (v12)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__VUIUniversalAssetController__handleMediaLibraryContentsDidChangeNotification___block_invoke;
    block[3] = &unk_1E872D768;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_videoManagedObjectPlaybackExpirationDidChange:(id)change
{
  object = [change object];
  if (object)
  {
    v7 = object;
    videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
    objectID = [videoManagedObject objectID];

    object = v7;
    if (v7 == objectID)
    {
      [(VUIUniversalAssetController *)self _updateDownloadStateAndNotifyListeners];
      object = v7;
    }
  }
}

- (void)_videoManagedObjectWasCreated:(id)created
{
  v20 = *MEMORY[0x1E69E9840];
  createdCopy = created;
  object = [createdCopy object];

  if (object != self)
  {
    userInfo = [createdCopy userInfo];
    v7 = [userInfo objectForKey:@"VUIUniversalAssetControllerAdamIDStringKey"];

    if (v7)
    {
      mpMediaItem = [(VUIUniversalAssetController *)self mpMediaItem];

      if (mpMediaItem)
      {
        mpMediaItem2 = [(VUIUniversalAssetController *)self mpMediaItem];
        vui_adamIDString = [mpMediaItem2 vui_adamIDString];
      }

      else
      {
        videosPlayable = [(VUIUniversalAssetController *)self videosPlayable];

        if (videosPlayable)
        {
          [(VUIUniversalAssetController *)self videosPlayable];
        }

        else
        {
          [(VUIUniversalAssetController *)self videoManagedObject];
        }
        mpMediaItem2 = ;
        vui_adamIDString = [mpMediaItem2 adamID];
      }

      v12 = vui_adamIDString;

      if (v12 && [v12 isEqualToString:v7])
      {
        v13 = VUIDefaultLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412546;
          selfCopy = self;
          v18 = 2112;
          v19 = v7;
          _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "%@ updating videoManagedObject with adam ID %@", &v16, 0x16u);
        }

        userInfo2 = [createdCopy userInfo];
        v15 = [userInfo2 objectForKey:@"VUIUniversalAssetControllerVideoManagedObjectkey"];

        [(VUIUniversalAssetController *)self setVideoManagedObject:v15];
      }
    }
  }
}

- (void)_createAndSaveVideoManagedObjectForDownloadInitiationAllowingCellular:(BOOL)cellular quality:(int64_t)quality shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)failure prefer3DOrImmersiveDownload:(BOOL)download isAutomatic:(BOOL)automatic
{
  automaticCopy = automatic;
  downloadCopy = download;
  failureCopy = failure;
  cellularCopy = cellular;
  v45[2] = *MEMORY[0x1E69E9840];
  mpMediaItem = [(VUIUniversalAssetController *)self mpMediaItem];

  if (mpMediaItem)
  {
    mpMediaItem2 = [(VUIUniversalAssetController *)self mpMediaItem];
    mpMediaItem = [(VUIUniversalAssetController *)self _createAndSaveVideoManagedObjectForMPMediaItem:mpMediaItem2];

    mpMediaItem3 = [(VUIUniversalAssetController *)self mpMediaItem];
    vui_adamIDString = [mpMediaItem3 vui_adamIDString];
  }

  else
  {
    vui_adamIDString = 0;
  }

  videosPlayable = [(VUIUniversalAssetController *)self videosPlayable];

  if (videosPlayable)
  {
    videosPlayable2 = [(VUIUniversalAssetController *)self videosPlayable];
    adamID = [videosPlayable2 adamID];

    videosPlayable3 = [(VUIUniversalAssetController *)self videosPlayable];
    v21 = [(VUIUniversalAssetController *)self _createAndSaveVideoManagedObjectForPlayable:videosPlayable3];

    vui_adamIDString = adamID;
    mpMediaItem = v21;
  }

  mpMediaItem4 = [(VUIUniversalAssetController *)self mpMediaItem];
  if (mpMediaItem4)
  {
  }

  else
  {
    videosPlayable4 = [(VUIUniversalAssetController *)self videosPlayable];

    if (!videosPlayable4)
    {
      v24 = VUIDefaultLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [VUIUniversalAssetController _createAndSaveVideoManagedObjectForDownloadInitiationAllowingCellular:quality:shouldMarkAsDeletedOnCancellationOrFailure:prefer3DOrImmersiveDownload:isAutomatic:];
      }
    }
  }

  if (mpMediaItem)
  {
    objc_opt_class();
    v25 = 0x1E8728000;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_17:
      [mpMediaItem setAllowsCellular:cellularCopy];
      [mpMediaItem setDownloadQuality:quality];
      [mpMediaItem setShouldMarkAsDeletedAfterCancellationOrFailure:failureCopy];
      [mpMediaItem setPrefer3DOrImmersiveDownload:downloadCopy];
      if (_os_feature_enabled_impl())
      {
        [mpMediaItem setTriggerType:automaticCopy];
      }

      defaultManager = [*(v25 + 1136) defaultManager];
      sidebandMediaLibrary = [defaultManager sidebandMediaLibrary];
      [sidebandMediaLibrary saveChangesToManagedObjects];

      [(VUIUniversalAssetController *)self setVideoManagedObject:mpMediaItem];
      if (vui_adamIDString)
      {
        v44[0] = @"VUIUniversalAssetControllerAdamIDStringKey";
        v44[1] = @"VUIUniversalAssetControllerVideoManagedObjectkey";
        v45[0] = vui_adamIDString;
        v45[1] = mpMediaItem;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter postNotificationName:@"VUIUniversalAssetControllerDidCreateVideoManagedObject" object:self userInfo:v30];
      }

      goto LABEL_21;
    }

    v43 = automaticCopy;
    v26 = mpMediaItem;
    season = [v26 season];
    if (!season)
    {
      mpMediaItem5 = [(VUIUniversalAssetController *)self mpMediaItem];
      if (!mpMediaItem5)
      {
        goto LABEL_16;
      }

      v33 = mpMediaItem5;
      mpMediaItemCollection = [(VUIUniversalAssetController *)self mpMediaItemCollection];

      if (!mpMediaItemCollection)
      {
        goto LABEL_16;
      }

      season = [(MPMediaItemCollection *)self->_mpMediaItemCollection valueForProperty:*MEMORY[0x1E696F8E0]];
      if (season)
      {
        v40 = +[VUIMediaLibraryManager defaultManager];
        sidebandMediaLibrary2 = [v40 sidebandMediaLibrary];
        v42 = [sidebandMediaLibrary2 seasonForCanonicalIDOrAdamID:season createIfNeeded:1];

        canonicalID = [v42 canonicalID];

        if (!canonicalID)
        {
          [v42 setCanonicalID:season];
          representativeItem = [(MPMediaItemCollection *)self->_mpMediaItemCollection representativeItem];
          v41 = [representativeItem valueForProperty:*MEMORY[0x1E696FB10]];

          if (v41)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v42 setSeasonNumber:v41];
            }
          }

          representativeItem2 = [(MPMediaItemCollection *)self->_mpMediaItemCollection representativeItem];
          v39 = [representativeItem2 valueForProperty:*MEMORY[0x1E696FB08]];

          if (v39)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v42 setTitle:v39];
            }
          }
        }

        [v26 setSeason:v42];
      }
    }

LABEL_16:
    automaticCopy = v43;
    v25 = 0x1E8728000uLL;
    goto LABEL_17;
  }

LABEL_21:
}

- (id)_createAndSaveVideoManagedObjectForPlayable:(id)playable
{
  v26 = *MEMORY[0x1E69E9840];
  playableCopy = playable;
  v4 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary = [v4 sidebandMediaLibrary];
  v6 = [sidebandMediaLibrary videoForPlayable:playableCopy];

  startTimeInfos = [playableCopy startTimeInfos];
  v8 = objc_alloc_init(VUIMediaStartTimeCollection);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = startTimeInfos;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(VUIMediaStartTimeCollection *)v8 addStartTimeInfo:*(*(&v21 + 1) + 8 * i), v21];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  preferredStartTimeInfo = [(VUIMediaStartTimeCollection *)v8 preferredStartTimeInfo];
  if ([preferredStartTimeInfo type])
  {
    if ([preferredStartTimeInfo type] != 1)
    {
      goto LABEL_13;
    }

    startTime = [preferredStartTimeInfo startTime];
    [v6 setMainContentRelativeBookmarkTime:startTime];

    timestamp = [preferredStartTimeInfo timestamp];
    [v6 setMainContentRelativeBookmarkTimeStamp:timestamp];
  }

  else
  {
    startTime2 = [preferredStartTimeInfo startTime];
    [v6 setBookmarkTime:startTime2];

    timestamp = [preferredStartTimeInfo timestamp];
    [v6 setBookmarkTimeStamp:timestamp];
  }

LABEL_13:
  v18 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary2 = [v18 sidebandMediaLibrary];
  [sidebandMediaLibrary2 saveChangesToManagedObjects];

  return v6;
}

- (id)_createAndSaveVideoManagedObjectForMPMediaItem:(id)item
{
  itemCopy = item;
  v4 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary = [v4 sidebandMediaLibrary];
  v6 = [sidebandMediaLibrary videoForMPMediaItem:itemCopy];

  return v6;
}

- (BOOL)_isVideoFullyDownloadedCheckingSidebandLibrary:(BOOL)library
{
  libraryCopy = library;
  mpMediaItem = [(VUIUniversalAssetController *)self mpMediaItem];

  if (!mpMediaItem)
  {
    LOBYTE(v15) = 0;
LABEL_12:
    if (libraryCopy)
    {
      videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
      LOBYTE(v15) = [videoManagedObject downloadState] == 2;
    }

    return v15;
  }

  mpMediaItem2 = [(VUIUniversalAssetController *)self mpMediaItem];
  v7 = *MEMORY[0x1E696FA38];
  v8 = *MEMORY[0x1E696FA68];
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA38], *MEMORY[0x1E696FA68], 0}];
  v10 = [mpMediaItem2 valuesForProperties:v9];

  v11 = [v10 objectForKey:v7];
  v12 = [v10 objectForKey:v8];
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || ![v11 BOOLValue])
  {
    LOBYTE(v15) = 0;
  }

  else
  {
    v15 = [v13 BOOLValue] ^ 1;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

  return v15;
}

- (BOOL)isPurchasedRentedOrSynced
{
  mpMediaItem = [(VUIUniversalAssetController *)self mpMediaItem];
  v3 = mpMediaItem != 0;

  return v3;
}

- (id)showCanonicalId
{
  videosPlayable = [(VUIUniversalAssetController *)self videosPlayable];

  if (videosPlayable)
  {
    videosPlayable2 = [(VUIUniversalAssetController *)self videosPlayable];
    metadata = [videosPlayable2 metadata];

    showCanonicalId = [metadata showCanonicalId];
LABEL_5:

    goto LABEL_6;
  }

  videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    metadata = [(VUIUniversalAssetController *)self videoManagedObject];
    series = [metadata series];
    showCanonicalId = [series canonicalID];

    goto LABEL_5;
  }

  showCanonicalId = 0;
LABEL_6:

  return showCanonicalId;
}

- (id)seasonCanonicalId
{
  videosPlayable = [(VUIUniversalAssetController *)self videosPlayable];

  if (videosPlayable)
  {
    videosPlayable2 = [(VUIUniversalAssetController *)self videosPlayable];
    metadata = [videosPlayable2 metadata];

    seasonCanonicalId = [metadata seasonCanonicalId];
LABEL_5:

    goto LABEL_6;
  }

  videoManagedObject = [(VUIUniversalAssetController *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    metadata = [(VUIUniversalAssetController *)self videoManagedObject];
    season = [metadata season];
    seasonCanonicalId = [season canonicalID];

    goto LABEL_5;
  }

  seasonCanonicalId = 0;
LABEL_6:

  return seasonCanonicalId;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VUIUniversalAssetController;
  v3 = [(VUIUniversalAssetController *)&v7 hash];
  _adamIDString = [(VUIUniversalAssetController *)self _adamIDString];
  v5 = _adamIDString;
  if (_adamIDString)
  {
    v3 ^= [_adamIDString hash];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    _adamIDString = [(VUIUniversalAssetController *)v5 _adamIDString];
    _adamIDString2 = [(VUIUniversalAssetController *)self _adamIDString];
    v8 = _adamIDString2;
    v9 = 0;
    if (_adamIDString && _adamIDString2)
    {
      v9 = [_adamIDString isEqualToString:_adamIDString2];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  _adamIDString = [(VUIUniversalAssetController *)self _adamIDString];
  v4 = [v2 stringWithFormat:@"assetController with adamID: %@", _adamIDString];

  return v4;
}

- (void)initWithVideosPlayable:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 adamID];
  OUTLINED_FUNCTION_2_13();
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIUniversalAssetController unable to retrieve MPMediaItem for adam ID %@", v4, 0xCu);
}

@end