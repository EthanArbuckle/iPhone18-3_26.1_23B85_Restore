@interface VUIARQLPreviewManager
+ (id)sharedInstance;
- (VUIARAssetRequest)activeAssetRequest;
- (VUIARQLPreviewManager)init;
- (id)_previewControllerWithAssetRequest:(id)a3;
- (id)_quickLookPreviewItemWithFileURL:(id)a3 shareURL:(id)a4;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3;
- (void)_presentPreviewControllerWithURL:(id)a3 shareURL:(id)a4 fileName:(id)a5;
- (void)configureDownloadSession;
- (void)configureUsingDictionary:(id)a3;
- (void)previewControllerDidDismiss:(id)a3;
- (void)previewWithURL:(id)a3 shareURL:(id)a4;
- (void)setActiveAssetRequest:(id)a3;
@end

@implementation VUIARQLPreviewManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_14 != -1)
  {
    +[VUIARQLPreviewManager sharedInstance];
  }

  v3 = sharedInstance_instance_1;

  return v3;
}

void __39__VUIARQLPreviewManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIARQLPreviewManager);
  v1 = sharedInstance_instance_1;
  sharedInstance_instance_1 = v0;
}

- (VUIARQLPreviewManager)init
{
  v5.receiver = self;
  v5.super_class = VUIARQLPreviewManager;
  v2 = [(VUIARQLPreviewManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_resourceTimeout = 300.0;
    [(VUIARQLPreviewManager *)v2 configureDownloadSession];
  }

  return v3;
}

- (void)configureDownloadSession
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AF80] backgroundSessionConfigurationWithIdentifier:@"com.apple.tv.arql"];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    resourceTimeout = self->_resourceTimeout;
    v9 = 134217984;
    v10 = resourceTimeout;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIARQLPreviewManager - configureDownloadSession with resourceTimeout: %lf", &v9, 0xCu);
  }

  [v3 setTimeoutIntervalForResource:self->_resourceTimeout];
  v6 = [MEMORY[0x1E696ADC8] mainQueue];
  v7 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v3 delegate:self delegateQueue:v6];
  session = self->_session;
  self->_session = v7;
}

void __53__VUIARQLPreviewManager_cancelExistingDownloadsIfAny__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)configureUsingDictionary:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 vui_numberForKey:@"resourceTimeoutInterval"];
    v6 = v5;
    if (v5)
    {
      [v5 doubleValue];
      if (v7 > 0.0 && self->_resourceTimeout != v7)
      {
        self->_resourceTimeout = v7;
        v8 = VUIDefaultLogObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          resourceTimeout = self->_resourceTimeout;
          v10 = 134217984;
          v11 = resourceTimeout;
          _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIARQLPreviewManager - resourceTimeout set by js config: %lf", &v10, 0xCu);
        }

        [(NSURLSession *)self->_session invalidateAndCancel];
      }
    }
  }
}

- (void)setActiveAssetRequest:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_activeAssetRequest != v6)
  {
    objc_storeStrong(&v5->_activeAssetRequest, a3);
  }

  objc_sync_exit(v5);
}

- (VUIARAssetRequest)activeAssetRequest
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activeAssetRequest;
  objc_sync_exit(v2);

  return v3;
}

- (void)previewControllerDidDismiss:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(VUIARQLPreviewManager *)self activeAssetRequest];
  v5 = v4;
  if (v4)
  {
    if ([v4 isDownloading])
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 fileName];
        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIARQLPreviewManager - Cancel the active download: %@", &v8, 0xCu);
      }

      [v5 cancelDownload];
    }

    [(VUIARQLPreviewManager *)self setActiveAssetRequest:0];
  }
}

- (void)previewWithURL:(id)a3 shareURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 path];
  v9 = [v8 lastPathComponent];

  [(VUIARQLPreviewManager *)self _presentPreviewControllerWithURL:v7 shareURL:v6 fileName:v9];
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(VUIARQLPreviewManager *)self activeAssetRequest];
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 remoteURL];
    *buf = 138412546;
    v23 = v11;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIARQLPreviewManager - NSURLSessionDownloadDelegate: didFinishDownloadingToURL: remote URL: %@, location: %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v17 = __75__VUIARQLPreviewManager_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke;
  v18 = &unk_1E872E008;
  v19 = v7;
  v20 = v9;
  v21 = v8;
  v12 = MEMORY[0x1E696AF00];
  v13 = v8;
  v14 = v9;
  v15 = v7;
  if ([v12 isMainThread])
  {
    v17(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __75__VUIARQLPreviewManager_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) response];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v6;
    if ([v2 statusCode] >= 200 && objc_msgSend(v2, "statusCode") <= 399)
    {
      v3 = [*(a1 + 40) cacheDownloadedFileFromLocation:*(a1 + 48)];
      goto LABEL_8;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = 0;
LABEL_8:
  v4 = [*(a1 + 40) completionHandler];

  if (v4)
  {
    v5 = [*(a1 + 40) completionHandler];
    (v5)[2](v5, v3, 0);
  }

  [*(a1 + 40) setIsDownloading:0];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v6 = a5;
  v7 = [(VUIARQLPreviewManager *)self activeAssetRequest];
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [VUIARQLPreviewManager URLSession:v7 task:v6 didCompleteWithError:v8];
  }

  v12 = MEMORY[0x1E69E9820];
  v13 = __62__VUIARQLPreviewManager_URLSession_task_didCompleteWithError___block_invoke;
  v14 = &unk_1E872D990;
  v15 = v6;
  v16 = v7;
  v9 = MEMORY[0x1E696AF00];
  v10 = v7;
  v11 = v6;
  if ([v9 isMainThread])
  {
    v13(&v12);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v12);
  }
}

uint64_t __62__VUIARQLPreviewManager_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) recordLog:?];
    v2 = [*(a1 + 40) completionHandler];

    if (v2)
    {
      v3 = [*(a1 + 40) completionHandler];
      v4 = [*(a1 + 40) remoteURL];
      (v3)[2](v3, v4, *(a1 + 32));
    }
  }

  v5 = *(a1 + 40);

  return [v5 setIsDownloading:0];
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIARQLPreviewManager - Received %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v8 = __74__VUIARQLPreviewManager_URLSessionDidFinishEventsForBackgroundURLSession___block_invoke;
  v9 = &unk_1E872D768;
  v10 = self;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __74__VUIARQLPreviewManager_URLSessionDidFinishEventsForBackgroundURLSession___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"VUIARQLDownloadSessionDidFinishEventsForBackgroundURLSessionNotification" object:*(a1 + 32)];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIARQLPreviewManager - didBecomeInvalidWithError %@", &v7, 0xCu);
  }

  [(VUIARQLPreviewManager *)self configureDownloadSession];
}

- (id)_quickLookPreviewItemWithFileURL:(id)a3 shareURL:(id)a4
{
  v5 = MEMORY[0x1E697A0B8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithFileAtURL:v7];

  [v8 setCanonicalWebPageURL:v6];
  [v8 setForceIgnoreMuteSwitch:1];

  return v8;
}

- (void)_presentPreviewControllerWithURL:(id)a3 shareURL:(id)a4 fileName:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[VUIARAssetRequest alloc] initWithRemoteURL:v10 shareURL:v8 fileName:v9];

  v12 = [(VUIARAssetRequest *)v11 cachePath];
  if (v12)
  {
    v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v13;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIARQLPreviewManager - Cached AR file found: %@", &v19, 0xCu);
    }

    v15 = [(VUIARQLPreviewManager *)self _quickLookPreviewItemWithFileURL:v13 shareURL:v8];
    v16 = [[VUIARQLPreviewController alloc] initWithQuickLookPreviewItem:v15];
  }

  else
  {
    v16 = [(VUIARQLPreviewManager *)self _previewControllerWithAssetRequest:v11];
  }

  v17 = +[VUIInterfaceFactory sharedInstance];
  v18 = [v17 controllerPresenter];

  [v18 presentViewController:v16 animated:1 completion:0];
}

- (id)_previewControllerWithAssetRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v6 = [v4 remoteURL];
  v7 = [v6 pathExtension];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6963710], v7, 0);
  v9 = [v4 shareURL];
  v10 = [(VUIARQLPreviewManager *)self _quickLookPreviewItemWithFileURL:v6 shareURL:v9];

  v11 = [objc_alloc(MEMORY[0x1E698D058]) initWithPreviewItemProvider:v5 contentType:PreferredIdentifierForTag previewTitle:&stru_1F5DB25C0 fileSize:&unk_1F5E5D200 previewItem:v10];
  [v11 setUseLoadingTimeout:0];
  objc_initWeak(&location, self);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __60__VUIARQLPreviewManager__previewControllerWithAssetRequest___block_invoke;
  v20 = &unk_1E8731BD8;
  objc_copyWeak(&v23, &location);
  v12 = v6;
  v21 = v12;
  v13 = v4;
  v22 = v13;
  [v5 registerItemForTypeIdentifier:PreferredIdentifierForTag loadHandler:&v17];
  v14 = [VUIARQLPreviewController alloc];
  v15 = [(VUIARQLPreviewController *)v14 initWithQuickLookWebKitItem:v11, v17, v18, v19, v20];
  [(QLPreviewController *)v15 setDelegate:self];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v15;
}

void __60__VUIARQLPreviewManager__previewControllerWithAssetRequest___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__VUIARQLPreviewManager__previewControllerWithAssetRequest___block_invoke_2;
    aBlock[3] = &unk_1E8731BB0;
    v11 = *(a1 + 32);
    v12 = WeakRetained;
    v13 = v3;
    v5 = _Block_copy(aBlock);
    v6 = *(a1 + 40);
    v7 = [WeakRetained session];
    [v6 startDownloadWithSession:v7 completionHandler:v5];

    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIARQLPreviewManager - Start downloading url: %@", buf, 0xCu);
    }

    [WeakRetained setActiveAssetRequest:*(a1 + 40)];
  }
}

void __60__VUIARQLPreviewManager__previewControllerWithAssetRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = *(a1 + 32);
  }

  v4 = v3;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) setActiveAssetRequest:0];
}

- (void)URLSession:(void *)a1 task:(uint64_t)a2 didCompleteWithError:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 remoteURL];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1E323F000, a3, OS_LOG_TYPE_ERROR, "VUIARQLPreviewManager - NSURLSessionDownloadDelegate: didCompleteWithError: remote URL: %@, error: %@", &v6, 0x16u);
}

@end