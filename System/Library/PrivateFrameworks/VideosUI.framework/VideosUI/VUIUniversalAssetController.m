@interface VUIUniversalAssetController
- (BOOL)_isVideoFullyDownloadedCheckingSidebandLibrary:(BOOL)a3;
- (BOOL)allowsManualDownloadRenewal;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPurchasedRentedOrSynced;
- (BOOL)supportsRedownloadingContent;
- (BOOL)supportsStartingDownload;
- (NSString)brandID;
- (NSString)brandName;
- (NSString)description;
- (VUIContentRating)contentRating;
- (VUIUniversalAssetController)initWithMPMediaItem:(id)a3;
- (VUIUniversalAssetController)initWithVideoManagedObject:(id)a3 mpMediaItem:(id)a4 videosPlayable:(id)a5;
- (VUIUniversalAssetController)initWithVideosPlayable:(id)a3;
- (id)_adamIDString;
- (id)_createAndSaveVideoManagedObjectForMPMediaItem:(id)a3;
- (id)_createAndSaveVideoManagedObjectForPlayable:(id)a3;
- (id)seasonCanonicalId;
- (id)showCanonicalId;
- (unint64_t)hash;
- (void)_createAndSaveVideoManagedObjectForDownloadInitiationAllowingCellular:(BOOL)a3 quality:(int64_t)a4 shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)a5 prefer3DOrImmersiveDownload:(BOOL)a6 isAutomatic:(BOOL)a7;
- (void)_handleMediaLibraryContentsDidChangeNotification:(id)a3;
- (void)_updateDownloadStateAndNotifyListeners;
- (void)_updateObservedDownload;
- (void)_videoManagedObjectPlaybackExpirationDidChange:(id)a3;
- (void)_videoManagedObjectWasCreated:(id)a3;
- (void)cancelAndRemoveDownload;
- (void)cancelKeyFetch;
- (void)dealloc;
- (void)deleteAndRedownloadAllowingCellular:(BOOL)a3 quality:(int64_t)a4 shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)a5 completion:(id)a6;
- (void)downloadManager:(id)a3 didAddDownloads:(id)a4 removeDownloads:(id)a5;
- (void)downloadManager:(id)a3 downloadDidFinish:(id)a4;
- (void)downloadManager:(id)a3 downloadDidProgress:(id)a4;
- (void)downloadManagerDownloadsDidChange:(id)a3;
- (void)fetchNewKeysForDownloadedVideo;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseDownload;
- (void)resumeDownload;
- (void)setCompletionDispatchQueue:(id)a3;
- (void)setVideoManagedObject:(id)a3;
- (void)startDownloadAllowingCellular:(BOOL)a3 quality:(int64_t)a4 shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)a5 prefer3DOrImmersiveDownload:(BOOL)a6 isAutomatic:(BOOL)a7 completion:(id)a8;
@end

@implementation VUIUniversalAssetController

- (VUIUniversalAssetController)initWithVideosPlayable:(id)a3
{
  v4 = a3;
  v5 = +[VUIMediaLibraryManager defaultManager];
  v6 = [v5 sidebandMediaLibrary];
  v7 = [v4 adamID];
  v8 = [v6 videoForAdamID:v7 useMainThreadContext:1];

  if (![v4 isiTunesPurchaseOrRental] || (objc_msgSend(v4, "isFamilySharingContent") & 1) != 0)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v9 = MEMORY[0x1E69705D0];
  v10 = [v4 adamID];
  v11 = [v9 vui_mediaItemForStoreIdentifierString:v10];

  if (!v11)
  {
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(VUIUniversalAssetController *)v4 initWithVideosPlayable:v12];
    }

    goto LABEL_7;
  }

LABEL_8:
  v13 = [(VUIUniversalAssetController *)self initWithVideoManagedObject:v8 mpMediaItem:v11 videosPlayable:v4];

  return v13;
}

- (VUIUniversalAssetController)initWithMPMediaItem:(id)a3
{
  v4 = a3;
  v5 = [v4 vui_adamIDString];
  if (v5)
  {
    v6 = +[VUIMediaLibraryManager defaultManager];
    v7 = [v6 sidebandMediaLibrary];
    v8 = [v7 videoForAdamID:v5 useMainThreadContext:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(VUIUniversalAssetController *)self initWithVideoManagedObject:v8 mpMediaItem:v4 videosPlayable:0];

  return v9;
}

- (VUIUniversalAssetController)initWithVideoManagedObject:(id)a3 mpMediaItem:(id)a4 videosPlayable:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = VUIUniversalAssetController;
  v11 = [(VUIUniversalAssetController *)&v31 init];
  if (v11)
  {
    if (v8)
    {
      v12 = +[VUIMediaLibraryManager defaultManager];
      v13 = [v12 sidebandMediaLibrary];
      v14 = [v13 mainContextVideoForVideo:v8];

      v8 = v14;
    }

    objc_storeStrong(&v11->_videoManagedObject, v8);
    objc_storeStrong(&v11->_mpMediaItem, a4);
    objc_storeStrong(&v11->_videosPlayable, a5);
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
      v18 = [MEMORY[0x1E696AD88] defaultCenter];
      v19 = [(VUIVideoManagedObject *)v11->_videoManagedObject objectID];
      [v18 addObserver:v11 selector:sel__videoManagedObjectPlaybackExpirationDidChange_ name:@"VUIVideoManagedObjectPlaybackExpirationDidChangeNotification" object:v19];
    }

    if (v9)
    {
      v20 = [MEMORY[0x1E696AD88] defaultCenter];
      v21 = *MEMORY[0x1E696FBA8];
      v22 = [v9 mediaLibrary];
      [v20 addObserver:v11 selector:sel__handleMediaLibraryContentsDidChangeNotification_ name:v21 object:v22];

      v23 = [MEMORY[0x1E69709A8] sharedManager];
      [v23 addObserver:v11 forDownloads:0];

      v24 = [MEMORY[0x1E69709A8] sharedManager];
      v25 = [v24 downloadForMediaItem:v9];

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

    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:v11 selector:sel__videoManagedObjectWasCreated_ name:@"VUIUniversalAssetControllerDidCreateVideoManagedObject" object:0];

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
  v3 = [(VUIUniversalAssetController *)self videosPlayable];

  if (v3)
  {
    v4 = [(VUIUniversalAssetController *)self videosPlayable];
LABEL_3:
    v5 = v4;
    v6 = [v4 adamID];
    goto LABEL_6;
  }

  v7 = [(VUIUniversalAssetController *)self mpMediaItem];

  if (!v7)
  {
    v4 = [(VUIUniversalAssetController *)self videoManagedObject];
    goto LABEL_3;
  }

  v5 = [(VUIUniversalAssetController *)self mpMediaItem];
  v6 = [v5 vui_adamIDString];
LABEL_6:
  v8 = v6;

  return v8;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  [(VUIVideoManagedObject *)self->_videoManagedObject removeObserver:self forKeyPath:@"downloadState" context:__VideoManagedObjectDownloadStateKVOContext];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  if (self->_mpMediaItem)
  {
    v4 = [MEMORY[0x1E69709A8] sharedManager];
    [v4 removeObserver:self forDownloads:0];
  }

  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = self;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "%@ deallocated ", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = VUIUniversalAssetController;
  [(VUIUniversalAssetController *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (__VideoManagedObjectDownloadStateKVOContext == a6)
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
    [(VUIUniversalAssetController *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)setVideoManagedObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = +[VUIMediaLibraryManager defaultManager];
    v7 = [v6 sidebandMediaLibrary];
    obja = [v7 mainContextVideoForVideo:v5];

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
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v11 = [(VUIVideoManagedObject *)self->_videoManagedObject objectID];
      [v10 removeObserver:self name:@"VUIVideoManagedObjectPlaybackExpirationDidChangeNotification" object:v11];

      v8 = obj;
    }

    objc_storeStrong(&self->_videoManagedObject, v8);
    if (obj)
    {
      [(VUIVideoManagedObject *)obj addObserver:self forKeyPath:@"downloadState" options:0 context:__VideoManagedObjectDownloadStateKVOContext];
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = [(VUIVideoManagedObject *)self->_videoManagedObject objectID];
      [v12 addObserver:self selector:sel__videoManagedObjectPlaybackExpirationDidChange_ name:@"VUIVideoManagedObjectPlaybackExpirationDidChangeNotification" object:v13];
    }

    [(VUIUniversalAssetController *)self _updateObservedDownload];
    [(VUIUniversalAssetController *)self _updateDownloadStateAndNotifyListeners];
    v8 = obj;
  }
}

- (BOOL)supportsStartingDownload
{
  v3 = [(VUIUniversalAssetController *)self mpMediaItem];

  if (!v3)
  {
    v8 = [MEMORY[0x1E69D5920] activeAccount];
    v10 = [v8 ams_DSID];
    v9 = v10 != 0;
LABEL_8:

    goto LABEL_9;
  }

  v4 = [(VUIUniversalAssetController *)self mpMediaItem];
  v5 = [v4 valueForProperty:*MEMORY[0x1E696FB60]];
  v6 = [v5 unsignedLongLongValue];

  if (!v6)
  {
LABEL_10:
    LOBYTE(v9) = 0;
    return v9;
  }

  v7 = [(VUIUniversalAssetController *)self mpMediaItem];
  v8 = [v7 valueForProperty:*MEMORY[0x1E696FB38]];

  if (([v8 isEqual:&unk_1F5E5D0F8] & 1) == 0)
  {
    if (v8)
    {
      v10 = [MEMORY[0x1E69D5920] activeAccount];
      v11 = [v10 ams_DSID];
      LOBYTE(v9) = [v11 isEqual:v8];

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
  v2 = [(VUIUniversalAssetController *)self mpMediaItem];
  v3 = v2 == 0;

  return v3;
}

- (void)setCompletionDispatchQueue:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  v6 = v4;
  [(VUIUniversalAssetController *)self setCompletionDispatchQueueInternal:v4];
}

- (void)startDownloadAllowingCellular:(BOOL)a3 quality:(int64_t)a4 shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)a5 prefer3DOrImmersiveDownload:(BOOL)a6 isAutomatic:(BOOL)a7 completion:(id)a8
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v12 = a3;
  v41[1] = *MEMORY[0x1E69E9840];
  v14 = a8;
  if ([(VUIUniversalAssetController *)self supportsStartingDownload])
  {
    v15 = [MEMORY[0x1E695E000] standardUserDefaults];
    if ([v15 BOOLForKey:@"UseLegacyDownloader"])
    {
      v16 = [(VUIUniversalAssetController *)self mpMediaItem];

      if (v16)
      {
        v17 = VUIDefaultLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Using legacy download path for transactional content because UseLegacyDownloader is set", buf, 2u);
        }

        v18 = MEMORY[0x1E69709A0];
        v19 = [(VUIUniversalAssetController *)self mpMediaItem];
        v20 = [v18 storeDownloadForMediaItem:v19 type:1 attributes:0];

        if (v20)
        {
          v21 = [MEMORY[0x1E69709A8] sharedManager];
          v41[0] = v20;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
          v23 = [v21 addDownloads:v22];
        }

        v24 = [(VUIUniversalAssetController *)self completionDispatchQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __163__VUIUniversalAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke_34;
        block[3] = &unk_1E872D7E0;
        v36 = v14;
        dispatch_async(v24, block);

        v25 = v36;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    [(VUIUniversalAssetController *)self _createAndSaveVideoManagedObjectForDownloadInitiationAllowingCellular:v12 quality:a4 shouldMarkAsDeletedOnCancellationOrFailure:v10 prefer3DOrImmersiveDownload:v9 isAutomatic:v8];
    v20 = [(VUIUniversalAssetController *)self videoManagedObject];
    if (v20)
    {
      v28 = +[VUIInterfaceFactory sharedInstance];
      v29 = [v28 downloadQueueManager];

      v40 = v20;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      [v29 enqueueDownloadsForVideoManagedObjects:v30];

      v31 = +[VUIDownloadManager sharedInstance];
      [v31 loadImageForVideoManagedObject:v20];
    }

    else
    {
      v29 = VUIDefaultLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [VUIUniversalAssetController startDownloadAllowingCellular:quality:shouldMarkAsDeletedOnCancellationOrFailure:prefer3DOrImmersiveDownload:isAutomatic:completion:];
      }
    }

    v32 = [(VUIUniversalAssetController *)self completionDispatchQueue];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __163__VUIUniversalAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke_36;
    v33[3] = &unk_1E872D7E0;
    v34 = v14;
    dispatch_async(v32, v33);

    v25 = v34;
    goto LABEL_18;
  }

  v26 = VUIDefaultLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [VUIUniversalAssetController startDownloadAllowingCellular:quality:shouldMarkAsDeletedOnCancellationOrFailure:prefer3DOrImmersiveDownload:isAutomatic:completion:];
  }

  v27 = [(VUIUniversalAssetController *)self completionDispatchQueue];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __163__VUIUniversalAssetController_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion___block_invoke;
  v38[3] = &unk_1E872D7E0;
  v39 = v14;
  dispatch_async(v27, v38);

  v20 = v39;
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

- (void)deleteAndRedownloadAllowingCellular:(BOOL)a3 quality:(int64_t)a4 shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v8 = a3;
  v13 = a6;
  v10 = [(VUIUniversalAssetController *)self mpMediaItem];
  if (v10)
  {
    v11 = v10;
    v12 = [(VUIUniversalAssetController *)self _isVideoFullyDownloadedCheckingSidebandLibrary:0];

    if (v12)
    {
      [(VUIUniversalAssetController *)self cancelAndRemoveDownload];
    }
  }

  [(VUIUniversalAssetController *)self startDownloadAllowingCellular:v8 quality:a4 shouldMarkAsDeletedOnCancellationOrFailure:v6 prefer3DOrImmersiveDownload:1 isAutomatic:0 completion:v13];
}

- (void)fetchNewKeysForDownloadedVideo
{
  v3 = [(VUIUniversalAssetController *)self videoManagedObject];
  v2 = +[VUIDownloadManager sharedInstance];
  [v2 fetchNewKeysForDownloadedVideoManagedObject:v3];
}

- (void)pauseDownload
{
  v5 = [(VUIUniversalAssetController *)self videoManagedObject];
  v2 = [v5 adamID];
  v3 = +[VUIDownloadManager sharedInstance];
  v4 = [v3 existingDownloadForAdamID:v2];

  [v4 pause];
}

- (void)resumeDownload
{
  v5 = [(VUIUniversalAssetController *)self videoManagedObject];
  v2 = [v5 adamID];
  v3 = +[VUIDownloadManager sharedInstance];
  v4 = [v3 existingDownloadForAdamID:v2];

  [v4 start];
}

- (void)cancelAndRemoveDownload
{
  v45[1] = *MEMORY[0x1E69E9840];
  v3 = [(VUIUniversalAssetController *)self mpMediaItem];

  if (v3)
  {
    v4 = [(VUIUniversalAssetController *)self storeDownload];

    if (v4)
    {
      v5 = [MEMORY[0x1E69709A8] sharedManager];
      v6 = [(VUIUniversalAssetController *)self storeDownload];
      v45[0] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
      [v5 cancelDownloads:v7];
    }

    if ([(VUIUniversalAssetController *)self _isVideoFullyDownloadedCheckingSidebandLibrary:0])
    {
      v8 = VUIDefaultLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = self;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "%@ Removing download from MP library", buf, 0xCu);
      }

      v9 = [(VUIUniversalAssetController *)self mpMediaItem];
      v10 = [v9 mediaLibrary];
      v11 = [(VUIUniversalAssetController *)self mpMediaItem];
      v42 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      v13 = [v10 removeItems:v12];

      if (v13)
      {
        v14 = [(VUIUniversalAssetController *)self mpMediaItem];
        [v14 invalidateCachedProperties];

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

  v16 = [(VUIUniversalAssetController *)self mpMediaItem];
  if ([v16 isRental])
  {
  }

  else
  {
    v17 = [(VUIUniversalAssetController *)self videoManagedObject];
    v18 = [v17 rentalID];

    if (!v18)
    {
      goto LABEL_22;
    }
  }

  v19 = [(VUIUniversalAssetController *)self mpMediaItem];
  if (v19)
  {
    v20 = [(VUIUniversalAssetController *)self mpMediaItem];
    [v20 valueForProperty:*MEMORY[0x1E696FB78]];
  }

  else
  {
    v20 = [(VUIUniversalAssetController *)self videoManagedObject];
    [v20 rentalID];
  }
  v21 = ;

  v22 = [(VUIUniversalAssetController *)self mpMediaItem];
  if (v22)
  {
    v23 = [(VUIUniversalAssetController *)self mpMediaItem];
    [v23 valueForProperty:*MEMORY[0x1E696FB38]];
  }

  else
  {
    v23 = [(VUIUniversalAssetController *)self videoManagedObject];
    [v23 dsid];
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
  v27 = [(VUIUniversalAssetController *)self videoManagedObject];
  v28 = [v27 adamID];
  v29 = [v27 downloadState];
  if (!v27)
  {
    v35 = +[VUIDownloadManager sharedInstance];
    [v35 cancelDownloadForAdamID:v28];
    goto LABEL_27;
  }

  v30 = v29;
  v31 = +[VUIInterfaceFactory sharedInstance];
  v32 = [v31 downloadQueueManager];

  v41 = v27;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  [v32 removeDownloadsForVideoManagedObjects:v33];

  v34 = +[VUIDownloadManager sharedInstance];
  [v34 cancelDownloadForAdamID:v28];

  if (v30 <= 3 && v30 != 1)
  {
    v35 = +[VUIMediaLibraryManager defaultManager];
    v36 = [v35 sidebandMediaLibrary];
    [v36 removeDownloadedMediaForVideoManagedObject:v27 markAsDeleted:1 invalidateImmediately:1];

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
  v4 = [(VUIUniversalAssetController *)self videoManagedObject];
  v2 = [v4 adamID];
  v3 = +[VUIDownloadManager sharedInstance];
  [v3 cancelDownloadForAdamID:v2];
}

- (VUIContentRating)contentRating
{
  v3 = [(VUIUniversalAssetController *)self mpMediaItem];

  if (v3)
  {
    v4 = [(VUIUniversalAssetController *)self mpMediaItem];
    v5 = [v4 vui_contentRating];
LABEL_9:

    goto LABEL_10;
  }

  v6 = [(VUIUniversalAssetController *)self videosPlayable];

  if (v6)
  {
    v7 = [(VUIUniversalAssetController *)self videosPlayable];
    v8 = [v7 metadata];
    v4 = [v8 ratingName];

    v9 = [(VUIUniversalAssetController *)self videosPlayable];
    v10 = [v9 metadata];
    v11 = [v10 ratingSystem];

    if ([v11 length] && objc_msgSend(v4, "length"))
    {
      v12 = [(VUIUniversalAssetController *)self videosPlayable];
      v13 = [v12 metadata];
      v14 = [v13 ratingValue];

      v5 = [objc_alloc(MEMORY[0x1E69DF6B8]) initWithRatingSystemString:v11 ratingLabel:v4 rank:objc_msgSend(v14 ratingDescription:{"unsignedIntegerValue"), 0}];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (NSString)brandName
{
  v3 = [(VUIUniversalAssetController *)self videoManagedObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 brandName];
  }

  else
  {
    v6 = [(VUIUniversalAssetController *)self videosPlayable];

    if (v6)
    {
      v7 = [(VUIUniversalAssetController *)self videosPlayable];
      v5 = [v7 channelName];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)brandID
{
  v3 = [(VUIUniversalAssetController *)self videoManagedObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 brandID];
  }

  else
  {
    v6 = [(VUIUniversalAssetController *)self videosPlayable];

    if (v6)
    {
      v7 = [(VUIUniversalAssetController *)self videosPlayable];
      v5 = [v7 channelID];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)allowsManualDownloadRenewal
{
  v2 = [(VUIUniversalAssetController *)self videoManagedObject];
  v3 = [v2 allowsManualRenewal];

  return v3;
}

- (void)downloadManagerDownloadsDidChange:(id)a3
{
  [(VUIUniversalAssetController *)self _updateObservedDownload];

  [(VUIUniversalAssetController *)self _updateDownloadStateAndNotifyListeners];
}

- (void)downloadManager:(id)a3 didAddDownloads:(id)a4 removeDownloads:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__VUIUniversalAssetController_downloadManager_didAddDownloads_removeDownloads___block_invoke;
  block[3] = &unk_1E872E008;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
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

- (void)downloadManager:(id)a3 downloadDidProgress:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__VUIUniversalAssetController_downloadManager_downloadDidProgress___block_invoke;
  v7[3] = &unk_1E872D990;
  v8 = v5;
  v9 = self;
  v6 = v5;
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

- (void)downloadManager:(id)a3 downloadDidFinish:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__VUIUniversalAssetController_downloadManager_downloadDidFinish___block_invoke;
  v7[3] = &unk_1E872D990;
  v8 = v5;
  v9 = self;
  v6 = v5;
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
  v7 = [(VUIUniversalAssetController *)self videoManagedObject];
  v3 = [(VUIUniversalAssetController *)self download];
  v4 = [v7 adamID];
  v5 = +[VUIDownloadManager sharedInstance];
  v6 = [v5 existingDownloadForAdamID:v4];

  if (v6 != v3)
  {
    [v6 addDelegate:self];
    [v3 removeDelegate:self];
    [(VUIUniversalAssetController *)self setDownload:v6];
  }
}

- (void)_updateDownloadStateAndNotifyListeners
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [(VUIUniversalAssetController *)self videoManagedObject];
  queue = [(VUIUniversalAssetController *)self completionDispatchQueueInternal];
  v4 = [(VUIUniversalAssetController *)self download];
  if ([(VUIUniversalAssetController *)self _isVideoFullyDownloadedCheckingSidebandLibrary:1])
  {
    v5 = [(VUIUniversalAssetController *)self storeDownload];

    if (v5)
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = self;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "%@ Setting store download to nil", buf, 0xCu);
      }

      [(VUIUniversalAssetController *)self setStoreDownload:0];
    }

    v7 = 4;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v8 = -1.0;
    goto LABEL_17;
  }

  v7 = 0;
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ([v3 downloadState] == 2)
  {
    v8 = -1.0;
    v7 = 4;
  }

  else
  {
    v14 = [v3 downloadState];
    if (v14 == 3)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = -1.0;
    }

    if (v14 == 3)
    {
      v7 = 5;
    }
  }

  v13 = [v3 expirationDate];
  v12 = [v3 offlineKeyRenewalPolicy];
  v11 = [v3 availabilityEndDate];
  v10 = [v3 allowsCellular];
  v9 = [v3 downloadFailedDueToError];
LABEL_17:
  if (v7 == 4)
  {
    goto LABEL_18;
  }

  if (!v4)
  {
    v19 = [(VUIUniversalAssetController *)self storeDownload];

    if (!v19)
    {
      goto LABEL_18;
    }

    v20 = [(VUIUniversalAssetController *)self storeDownload];
    [v20 percentComplete];
    v8 = v21;

    v22 = [(VUIUniversalAssetController *)self storeDownload];
    v23 = [v22 phaseIdentifier];

    v36 = v23;
    if (([v23 isEqualToString:*MEMORY[0x1E69703B8]] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", *MEMORY[0x1E69703E0]) & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", *MEMORY[0x1E69703E8]) & 1) != 0 || objc_msgSend(v23, "isEqualToString:", *MEMORY[0x1E69703D0]))
    {
      v24 = 1;
      if (v8 > 0.00000011920929)
      {
        v24 = 2;
      }
    }

    else
    {
      if ([v23 isEqualToString:*MEMORY[0x1E69703C0]])
      {
        v34 = 0;
        v9 = 1;
        goto LABEL_39;
      }

      if ([v23 isEqualToString:*MEMORY[0x1E69703B0]])
      {
        v34 = 0;
        goto LABEL_39;
      }

      if ([v23 isEqualToString:*MEMORY[0x1E69703C8]])
      {
        v35 = [(VUIUniversalAssetController *)self storeDownload];
        v29 = [v35 failureError];
        v30 = v29;
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v33 = [(VUIUniversalAssetController *)self storeDownload];
          v31 = [v33 purchaseError];
        }

        v34 = 4 * (v31 == 0);
        v9 |= v31 != 0;

        goto LABEL_39;
      }

      v32 = [v23 isEqualToString:*MEMORY[0x1E69703D8]];
      v24 = 3;
      if (!v32)
      {
        v24 = 1;
      }
    }

    v34 = v24;
LABEL_39:
    v25 = [(VUIUniversalAssetController *)self storeDownload];
    v26 = [v25 isCanceled];

    if (v26)
    {
      v7 = 0;
    }

    else
    {
      v7 = v34;
    }

    goto LABEL_18;
  }

  v17 = [v4 state];
  if (v17 <= 2)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        [v4 progress];
        v8 = v28;
        v7 = 2;
      }

      else if (v17 == 2)
      {
        v7 = 3;
      }

      goto LABEL_18;
    }

LABEL_49:
    v7 = 0;
    goto LABEL_18;
  }

  if ((v17 - 4) < 2)
  {
    goto LABEL_49;
  }

  v27 = 1;
  if (v17 != 6)
  {
    v27 = v7;
  }

  if (v17 == 3)
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
  [(VUIMediaEntityAssetControllerState *)v15 setDownloadFailedDueToError:v9 & 1];
  [(VUIMediaEntityAssetControllerState *)v15 setSupportsCancellation:1];
  [(VUIMediaEntityAssetControllerState *)v15 setSupportsPausing:1];
  [(VUIMediaEntityAssetControllerState *)v15 setDownloadExpirationDate:v13];
  -[VUIMediaEntityAssetControllerState setRenewsOfflineKeysAutomatically:](v15, "setRenewsOfflineKeysAutomatically:", [v12 integerValue] == 1);
  [(VUIMediaEntityAssetControllerState *)v15 setAvailabilityEndDate:v11];
  [(VUIMediaEntityAssetControllerState *)v15 setAllowsCellular:v10];
  if (v4)
  {
    -[VUIMediaEntityAssetControllerState setPerformsKeyFetchOnly:](v15, "setPerformsKeyFetchOnly:", [v4 performKeyFetchOnly]);
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

- (void)_handleMediaLibraryContentsDidChangeNotification:(id)a3
{
  v4 = [(VUIUniversalAssetController *)self mpMediaItem];
  v5 = *MEMORY[0x1E696FA98];
  v6 = [v4 valueForProperty:*MEMORY[0x1E696FA98]];

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

  v11 = [v10 items];
  v12 = [v11 count];

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

- (void)_videoManagedObjectPlaybackExpirationDidChange:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    v7 = v4;
    v5 = [(VUIUniversalAssetController *)self videoManagedObject];
    v6 = [v5 objectID];

    v4 = v7;
    if (v7 == v6)
    {
      [(VUIUniversalAssetController *)self _updateDownloadStateAndNotifyListeners];
      v4 = v7;
    }
  }
}

- (void)_videoManagedObjectWasCreated:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];

  if (v5 != self)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKey:@"VUIUniversalAssetControllerAdamIDStringKey"];

    if (v7)
    {
      v8 = [(VUIUniversalAssetController *)self mpMediaItem];

      if (v8)
      {
        v9 = [(VUIUniversalAssetController *)self mpMediaItem];
        v10 = [v9 vui_adamIDString];
      }

      else
      {
        v11 = [(VUIUniversalAssetController *)self videosPlayable];

        if (v11)
        {
          [(VUIUniversalAssetController *)self videosPlayable];
        }

        else
        {
          [(VUIUniversalAssetController *)self videoManagedObject];
        }
        v9 = ;
        v10 = [v9 adamID];
      }

      v12 = v10;

      if (v12 && [v12 isEqualToString:v7])
      {
        v13 = VUIDefaultLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412546;
          v17 = self;
          v18 = 2112;
          v19 = v7;
          _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "%@ updating videoManagedObject with adam ID %@", &v16, 0x16u);
        }

        v14 = [v4 userInfo];
        v15 = [v14 objectForKey:@"VUIUniversalAssetControllerVideoManagedObjectkey"];

        [(VUIUniversalAssetController *)self setVideoManagedObject:v15];
      }
    }
  }
}

- (void)_createAndSaveVideoManagedObjectForDownloadInitiationAllowingCellular:(BOOL)a3 quality:(int64_t)a4 shouldMarkAsDeletedOnCancellationOrFailure:(BOOL)a5 prefer3DOrImmersiveDownload:(BOOL)a6 isAutomatic:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v45[2] = *MEMORY[0x1E69E9840];
  v13 = [(VUIUniversalAssetController *)self mpMediaItem];

  if (v13)
  {
    v14 = [(VUIUniversalAssetController *)self mpMediaItem];
    v13 = [(VUIUniversalAssetController *)self _createAndSaveVideoManagedObjectForMPMediaItem:v14];

    v15 = [(VUIUniversalAssetController *)self mpMediaItem];
    v16 = [v15 vui_adamIDString];
  }

  else
  {
    v16 = 0;
  }

  v17 = [(VUIUniversalAssetController *)self videosPlayable];

  if (v17)
  {
    v18 = [(VUIUniversalAssetController *)self videosPlayable];
    v19 = [v18 adamID];

    v20 = [(VUIUniversalAssetController *)self videosPlayable];
    v21 = [(VUIUniversalAssetController *)self _createAndSaveVideoManagedObjectForPlayable:v20];

    v16 = v19;
    v13 = v21;
  }

  v22 = [(VUIUniversalAssetController *)self mpMediaItem];
  if (v22)
  {
  }

  else
  {
    v23 = [(VUIUniversalAssetController *)self videosPlayable];

    if (!v23)
    {
      v24 = VUIDefaultLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [VUIUniversalAssetController _createAndSaveVideoManagedObjectForDownloadInitiationAllowingCellular:quality:shouldMarkAsDeletedOnCancellationOrFailure:prefer3DOrImmersiveDownload:isAutomatic:];
      }
    }
  }

  if (v13)
  {
    objc_opt_class();
    v25 = 0x1E8728000;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_17:
      [v13 setAllowsCellular:v11];
      [v13 setDownloadQuality:a4];
      [v13 setShouldMarkAsDeletedAfterCancellationOrFailure:v9];
      [v13 setPrefer3DOrImmersiveDownload:v8];
      if (_os_feature_enabled_impl())
      {
        [v13 setTriggerType:v7];
      }

      v28 = [*(v25 + 1136) defaultManager];
      v29 = [v28 sidebandMediaLibrary];
      [v29 saveChangesToManagedObjects];

      [(VUIUniversalAssetController *)self setVideoManagedObject:v13];
      if (v16)
      {
        v44[0] = @"VUIUniversalAssetControllerAdamIDStringKey";
        v44[1] = @"VUIUniversalAssetControllerVideoManagedObjectkey";
        v45[0] = v16;
        v45[1] = v13;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
        v31 = [MEMORY[0x1E696AD88] defaultCenter];
        [v31 postNotificationName:@"VUIUniversalAssetControllerDidCreateVideoManagedObject" object:self userInfo:v30];
      }

      goto LABEL_21;
    }

    v43 = v7;
    v26 = v13;
    v27 = [v26 season];
    if (!v27)
    {
      v32 = [(VUIUniversalAssetController *)self mpMediaItem];
      if (!v32)
      {
        goto LABEL_16;
      }

      v33 = v32;
      v34 = [(VUIUniversalAssetController *)self mpMediaItemCollection];

      if (!v34)
      {
        goto LABEL_16;
      }

      v27 = [(MPMediaItemCollection *)self->_mpMediaItemCollection valueForProperty:*MEMORY[0x1E696F8E0]];
      if (v27)
      {
        v40 = +[VUIMediaLibraryManager defaultManager];
        v35 = [v40 sidebandMediaLibrary];
        v42 = [v35 seasonForCanonicalIDOrAdamID:v27 createIfNeeded:1];

        v36 = [v42 canonicalID];

        if (!v36)
        {
          [v42 setCanonicalID:v27];
          v37 = [(MPMediaItemCollection *)self->_mpMediaItemCollection representativeItem];
          v41 = [v37 valueForProperty:*MEMORY[0x1E696FB10]];

          if (v41)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v42 setSeasonNumber:v41];
            }
          }

          v38 = [(MPMediaItemCollection *)self->_mpMediaItemCollection representativeItem];
          v39 = [v38 valueForProperty:*MEMORY[0x1E696FB08]];

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
    v7 = v43;
    v25 = 0x1E8728000uLL;
    goto LABEL_17;
  }

LABEL_21:
}

- (id)_createAndSaveVideoManagedObjectForPlayable:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[VUIMediaLibraryManager defaultManager];
  v5 = [v4 sidebandMediaLibrary];
  v6 = [v5 videoForPlayable:v3];

  v7 = [v3 startTimeInfos];
  v8 = objc_alloc_init(VUIMediaStartTimeCollection);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
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

  v14 = [(VUIMediaStartTimeCollection *)v8 preferredStartTimeInfo];
  if ([v14 type])
  {
    if ([v14 type] != 1)
    {
      goto LABEL_13;
    }

    v15 = [v14 startTime];
    [v6 setMainContentRelativeBookmarkTime:v15];

    v16 = [v14 timestamp];
    [v6 setMainContentRelativeBookmarkTimeStamp:v16];
  }

  else
  {
    v17 = [v14 startTime];
    [v6 setBookmarkTime:v17];

    v16 = [v14 timestamp];
    [v6 setBookmarkTimeStamp:v16];
  }

LABEL_13:
  v18 = +[VUIMediaLibraryManager defaultManager];
  v19 = [v18 sidebandMediaLibrary];
  [v19 saveChangesToManagedObjects];

  return v6;
}

- (id)_createAndSaveVideoManagedObjectForMPMediaItem:(id)a3
{
  v3 = a3;
  v4 = +[VUIMediaLibraryManager defaultManager];
  v5 = [v4 sidebandMediaLibrary];
  v6 = [v5 videoForMPMediaItem:v3];

  return v6;
}

- (BOOL)_isVideoFullyDownloadedCheckingSidebandLibrary:(BOOL)a3
{
  v3 = a3;
  v5 = [(VUIUniversalAssetController *)self mpMediaItem];

  if (!v5)
  {
    LOBYTE(v15) = 0;
LABEL_12:
    if (v3)
    {
      v16 = [(VUIUniversalAssetController *)self videoManagedObject];
      LOBYTE(v15) = [v16 downloadState] == 2;
    }

    return v15;
  }

  v6 = [(VUIUniversalAssetController *)self mpMediaItem];
  v7 = *MEMORY[0x1E696FA38];
  v8 = *MEMORY[0x1E696FA68];
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA38], *MEMORY[0x1E696FA68], 0}];
  v10 = [v6 valuesForProperties:v9];

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
  v2 = [(VUIUniversalAssetController *)self mpMediaItem];
  v3 = v2 != 0;

  return v3;
}

- (id)showCanonicalId
{
  v3 = [(VUIUniversalAssetController *)self videosPlayable];

  if (v3)
  {
    v4 = [(VUIUniversalAssetController *)self videosPlayable];
    v5 = [v4 metadata];

    v6 = [v5 showCanonicalId];
LABEL_5:

    goto LABEL_6;
  }

  v7 = [(VUIUniversalAssetController *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(VUIUniversalAssetController *)self videoManagedObject];
    v9 = [v5 series];
    v6 = [v9 canonicalID];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)seasonCanonicalId
{
  v3 = [(VUIUniversalAssetController *)self videosPlayable];

  if (v3)
  {
    v4 = [(VUIUniversalAssetController *)self videosPlayable];
    v5 = [v4 metadata];

    v6 = [v5 seasonCanonicalId];
LABEL_5:

    goto LABEL_6;
  }

  v7 = [(VUIUniversalAssetController *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(VUIUniversalAssetController *)self videoManagedObject];
    v9 = [v5 season];
    v6 = [v9 canonicalID];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VUIUniversalAssetController;
  v3 = [(VUIUniversalAssetController *)&v7 hash];
  v4 = [(VUIUniversalAssetController *)self _adamIDString];
  v5 = v4;
  if (v4)
  {
    v3 ^= [v4 hash];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(VUIUniversalAssetController *)v5 _adamIDString];
    v7 = [(VUIUniversalAssetController *)self _adamIDString];
    v8 = v7;
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqualToString:v7];
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
  v3 = [(VUIUniversalAssetController *)self _adamIDString];
  v4 = [v2 stringWithFormat:@"assetController with adamID: %@", v3];

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