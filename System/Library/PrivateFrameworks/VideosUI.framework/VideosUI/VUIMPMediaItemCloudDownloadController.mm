@interface VUIMPMediaItemCloudDownloadController
+ (id)_stateFromStoreDownload:(id)download;
- (BOOL)isRestoreDownload;
- (VUIMPMediaItemCloudDownloadController)initWithMediaItem:(id)item serialProcessingDispatchQueue:(id)queue;
- (VUIMPMediaItemCloudDownloadController)initWithMediaItem:(id)item state:(id)state serialProcessingDispatchQueue:(id)queue;
- (void)_addStoreObserver;
- (void)_onProcessingQueue_cancelDownload;
- (void)_onProcessingQueue_invalidate;
- (void)_onProcessingQueue_pauseDownload;
- (void)_onProcessingQueue_resumeDownload;
- (void)_removeStoreObserver;
- (void)dealloc;
- (void)downloadManager:(id)manager downloadDidFinish:(id)finish;
- (void)downloadManager:(id)manager downloadDidProgress:(id)progress;
@end

@implementation VUIMPMediaItemCloudDownloadController

- (VUIMPMediaItemCloudDownloadController)initWithMediaItem:(id)item serialProcessingDispatchQueue:(id)queue
{
  itemCopy = item;
  queueCopy = queue;
  v8 = [itemCopy valueForProperty:*MEMORY[0x1E696FB60]];
  longLongValue = [v8 longLongValue];

  mEMORY[0x1E69709A8] = [MEMORY[0x1E69709A8] sharedManager];
  v11 = [mEMORY[0x1E69709A8] downloadForStoreID:longLongValue];

  if (v11)
  {
    v12 = [objc_opt_class() _stateFromStoreDownload:v11];
    v20.receiver = self;
    v20.super_class = VUIMPMediaItemCloudDownloadController;
    v13 = [(VUIMPMediaItemDownloadController *)&v20 initWithMediaItem:itemCopy state:v12 serialProcessingDispatchQueue:queueCopy];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_storeDownload, v11);
      if ([v12 status] || objc_msgSend(v12, "status") != 1)
      {
        objc_initWeak(&location, v14);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __89__VUIMPMediaItemCloudDownloadController_initWithMediaItem_serialProcessingDispatchQueue___block_invoke;
        v17[3] = &unk_1E872E4B8;
        objc_copyWeak(&v18, &location);
        dispatch_async(queueCopy, v17);
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      else
      {
        [(VUIMPMediaItemCloudDownloadController *)v14 _addStoreObserver];
      }
    }

    self = v14;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __89__VUIMPMediaItemCloudDownloadController_initWithMediaItem_serialProcessingDispatchQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _addStoreObserver];
    WeakRetained = v2;
  }
}

- (VUIMPMediaItemCloudDownloadController)initWithMediaItem:(id)item state:(id)state serialProcessingDispatchQueue:(id)queue
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The %@ initializer is not available.", v8}];

  return 0;
}

- (void)dealloc
{
  [(VUIMPMediaItemCloudDownloadController *)self _removeStoreObserver];
  v3.receiver = self;
  v3.super_class = VUIMPMediaItemCloudDownloadController;
  [(VUIMPMediaItemCloudDownloadController *)&v3 dealloc];
}

- (BOOL)isRestoreDownload
{
  storeDownload = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];
  isRestore = [storeDownload isRestore];

  return isRestore;
}

- (void)_onProcessingQueue_invalidate
{
  v3.receiver = self;
  v3.super_class = VUIMPMediaItemCloudDownloadController;
  [(VUIMPMediaItemDownloadController *)&v3 _onProcessingQueue_invalidate];
  [(VUIMPMediaItemCloudDownloadController *)self setStoreDownload:0];
  [(VUIMPMediaItemCloudDownloadController *)self _removeStoreObserver];
}

- (void)_onProcessingQueue_cancelDownload
{
  v5[1] = *MEMORY[0x1E69E9840];
  storeDownload = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];
  if (storeDownload)
  {
    mEMORY[0x1E69709A8] = [MEMORY[0x1E69709A8] sharedManager];
    v5[0] = storeDownload;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [mEMORY[0x1E69709A8] cancelDownloads:v4];
  }
}

- (void)_onProcessingQueue_pauseDownload
{
  v5[1] = *MEMORY[0x1E69E9840];
  storeDownload = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];
  if (storeDownload)
  {
    mEMORY[0x1E69709A8] = [MEMORY[0x1E69709A8] sharedManager];
    v5[0] = storeDownload;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [mEMORY[0x1E69709A8] pauseDownloads:v4];
  }
}

- (void)_onProcessingQueue_resumeDownload
{
  v5[1] = *MEMORY[0x1E69E9840];
  storeDownload = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];
  if (storeDownload)
  {
    mEMORY[0x1E69709A8] = [MEMORY[0x1E69709A8] sharedManager];
    v5[0] = storeDownload;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [mEMORY[0x1E69709A8] resumeDownloads:v4];
  }
}

- (void)downloadManager:(id)manager downloadDidProgress:(id)progress
{
  progressCopy = progress;
  storeDownload = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];

  if (storeDownload == progressCopy)
  {
    v6 = [objc_opt_class() _stateFromStoreDownload:storeDownload];
    [(VUIMPMediaItemDownloadController *)self _setState:v6];
  }
}

- (void)downloadManager:(id)manager downloadDidFinish:(id)finish
{
  finishCopy = finish;
  storeDownload = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];

  if (storeDownload == finishCopy)
  {
    v6 = [objc_opt_class() _stateFromStoreDownload:storeDownload];
    [(VUIMPMediaItemDownloadController *)self _setState:v6];
  }
}

+ (id)_stateFromStoreDownload:(id)download
{
  downloadCopy = download;
  [downloadCopy percentComplete];
  v5 = v4;
  bytesDownloaded = [downloadCopy bytesDownloaded];
  bytesTotal = [downloadCopy bytesTotal];
  phaseIdentifier = [downloadCopy phaseIdentifier];
  if (([phaseIdentifier isEqualToString:*MEMORY[0x1E69703B8]] & 1) != 0 || (objc_msgSend(phaseIdentifier, "isEqualToString:", *MEMORY[0x1E69703E0]) & 1) != 0 || (objc_msgSend(phaseIdentifier, "isEqualToString:", *MEMORY[0x1E69703E8]) & 1) != 0 || objc_msgSend(phaseIdentifier, "isEqualToString:", *MEMORY[0x1E69703D0]))
  {
    v9 = 0;
    v10 = v5 > 0.00000011920929;
    v11 = 0;
    goto LABEL_6;
  }

  if ([phaseIdentifier isEqualToString:*MEMORY[0x1E69703C0]])
  {
    failureError = [downloadCopy failureError];
    v15 = failureError;
    if (failureError)
    {
      purchaseError = failureError;
    }

    else
    {
      purchaseError = [downloadCopy purchaseError];
    }

    v9 = purchaseError;

    goto LABEL_19;
  }

  if ([phaseIdentifier isEqualToString:*MEMORY[0x1E69703B0]])
  {
    v9 = 0;
LABEL_19:
    v11 = 0;
LABEL_20:
    v10 = 3;
    goto LABEL_6;
  }

  if ([phaseIdentifier isEqualToString:*MEMORY[0x1E69703C8]])
  {
    failureError2 = [downloadCopy failureError];
    v18 = failureError2;
    if (failureError2)
    {
      purchaseError2 = failureError2;
    }

    else
    {
      purchaseError2 = [downloadCopy purchaseError];
    }

    v9 = purchaseError2;

    v11 = v9 == 0;
    goto LABEL_20;
  }

  v9 = 0;
  v11 = 0;
  if ([phaseIdentifier isEqualToString:*MEMORY[0x1E69703D8]])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

LABEL_6:
  v12 = objc_alloc_init(VUIMPMediaItemDownloadControllerState);
  [(VUIMPMediaItemDownloadControllerState *)v12 setStatus:v10];
  [(VUIMPMediaItemDownloadControllerState *)v12 setDownloadProgress:v5];
  [(VUIMPMediaItemDownloadControllerState *)v12 setBytesToDownload:bytesTotal];
  [(VUIMPMediaItemDownloadControllerState *)v12 setBytesDownloaded:bytesDownloaded];
  [(VUIMPMediaItemDownloadControllerState *)v12 setDownloadSucceeded:v11];
  [(VUIMPMediaItemDownloadControllerState *)v12 setError:v9];

  return v12;
}

- (void)_addStoreObserver
{
  v6[1] = *MEMORY[0x1E69E9840];
  storeDownload = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];
  if (storeDownload)
  {
    mEMORY[0x1E69709A8] = [MEMORY[0x1E69709A8] sharedManager];
    v6[0] = storeDownload;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [mEMORY[0x1E69709A8] addObserver:self forDownloads:v5];
  }
}

- (void)_removeStoreObserver
{
  v6[1] = *MEMORY[0x1E69E9840];
  storeDownload = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];
  if (storeDownload)
  {
    mEMORY[0x1E69709A8] = [MEMORY[0x1E69709A8] sharedManager];
    v6[0] = storeDownload;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [mEMORY[0x1E69709A8] removeObserver:self forDownloads:v5];
  }
}

@end