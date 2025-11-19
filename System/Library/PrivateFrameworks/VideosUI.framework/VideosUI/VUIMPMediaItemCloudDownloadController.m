@interface VUIMPMediaItemCloudDownloadController
+ (id)_stateFromStoreDownload:(id)a3;
- (BOOL)isRestoreDownload;
- (VUIMPMediaItemCloudDownloadController)initWithMediaItem:(id)a3 serialProcessingDispatchQueue:(id)a4;
- (VUIMPMediaItemCloudDownloadController)initWithMediaItem:(id)a3 state:(id)a4 serialProcessingDispatchQueue:(id)a5;
- (void)_addStoreObserver;
- (void)_onProcessingQueue_cancelDownload;
- (void)_onProcessingQueue_invalidate;
- (void)_onProcessingQueue_pauseDownload;
- (void)_onProcessingQueue_resumeDownload;
- (void)_removeStoreObserver;
- (void)dealloc;
- (void)downloadManager:(id)a3 downloadDidFinish:(id)a4;
- (void)downloadManager:(id)a3 downloadDidProgress:(id)a4;
@end

@implementation VUIMPMediaItemCloudDownloadController

- (VUIMPMediaItemCloudDownloadController)initWithMediaItem:(id)a3 serialProcessingDispatchQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 valueForProperty:*MEMORY[0x1E696FB60]];
  v9 = [v8 longLongValue];

  v10 = [MEMORY[0x1E69709A8] sharedManager];
  v11 = [v10 downloadForStoreID:v9];

  if (v11)
  {
    v12 = [objc_opt_class() _stateFromStoreDownload:v11];
    v20.receiver = self;
    v20.super_class = VUIMPMediaItemCloudDownloadController;
    v13 = [(VUIMPMediaItemDownloadController *)&v20 initWithMediaItem:v6 state:v12 serialProcessingDispatchQueue:v7];
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
        dispatch_async(v7, v17);
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      else
      {
        [(VUIMPMediaItemCloudDownloadController *)v14 _addStoreObserver];
      }
    }

    self = v14;

    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
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

- (VUIMPMediaItemCloudDownloadController)initWithMediaItem:(id)a3 state:(id)a4 serialProcessingDispatchQueue:(id)a5
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
  v2 = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];
  v3 = [v2 isRestore];

  return v3;
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
  v2 = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];
  if (v2)
  {
    v3 = [MEMORY[0x1E69709A8] sharedManager];
    v5[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [v3 cancelDownloads:v4];
  }
}

- (void)_onProcessingQueue_pauseDownload
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];
  if (v2)
  {
    v3 = [MEMORY[0x1E69709A8] sharedManager];
    v5[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [v3 pauseDownloads:v4];
  }
}

- (void)_onProcessingQueue_resumeDownload
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];
  if (v2)
  {
    v3 = [MEMORY[0x1E69709A8] sharedManager];
    v5[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [v3 resumeDownloads:v4];
  }
}

- (void)downloadManager:(id)a3 downloadDidProgress:(id)a4
{
  v5 = a4;
  v7 = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];

  if (v7 == v5)
  {
    v6 = [objc_opt_class() _stateFromStoreDownload:v7];
    [(VUIMPMediaItemDownloadController *)self _setState:v6];
  }
}

- (void)downloadManager:(id)a3 downloadDidFinish:(id)a4
{
  v5 = a4;
  v7 = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];

  if (v7 == v5)
  {
    v6 = [objc_opt_class() _stateFromStoreDownload:v7];
    [(VUIMPMediaItemDownloadController *)self _setState:v6];
  }
}

+ (id)_stateFromStoreDownload:(id)a3
{
  v3 = a3;
  [v3 percentComplete];
  v5 = v4;
  v6 = [v3 bytesDownloaded];
  v7 = [v3 bytesTotal];
  v8 = [v3 phaseIdentifier];
  if (([v8 isEqualToString:*MEMORY[0x1E69703B8]] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69703E0]) & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69703E8]) & 1) != 0 || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69703D0]))
  {
    v9 = 0;
    v10 = v5 > 0.00000011920929;
    v11 = 0;
    goto LABEL_6;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E69703C0]])
  {
    v14 = [v3 failureError];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v3 purchaseError];
    }

    v9 = v16;

    goto LABEL_19;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E69703B0]])
  {
    v9 = 0;
LABEL_19:
    v11 = 0;
LABEL_20:
    v10 = 3;
    goto LABEL_6;
  }

  if ([v8 isEqualToString:*MEMORY[0x1E69703C8]])
  {
    v17 = [v3 failureError];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [v3 purchaseError];
    }

    v9 = v19;

    v11 = v9 == 0;
    goto LABEL_20;
  }

  v9 = 0;
  v11 = 0;
  if ([v8 isEqualToString:*MEMORY[0x1E69703D8]])
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
  [(VUIMPMediaItemDownloadControllerState *)v12 setBytesToDownload:v7];
  [(VUIMPMediaItemDownloadControllerState *)v12 setBytesDownloaded:v6];
  [(VUIMPMediaItemDownloadControllerState *)v12 setDownloadSucceeded:v11];
  [(VUIMPMediaItemDownloadControllerState *)v12 setError:v9];

  return v12;
}

- (void)_addStoreObserver
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];
  if (v3)
  {
    v4 = [MEMORY[0x1E69709A8] sharedManager];
    v6[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [v4 addObserver:self forDownloads:v5];
  }
}

- (void)_removeStoreObserver
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [(VUIMPMediaItemCloudDownloadController *)self storeDownload];
  if (v3)
  {
    v4 = [MEMORY[0x1E69709A8] sharedManager];
    v6[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [v4 removeObserver:self forDownloads:v5];
  }
}

@end