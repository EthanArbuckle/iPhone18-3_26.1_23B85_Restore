@interface TVPDownloadSession
+ (TVPDownloadSession)sharedInstance;
- (TVPDownloadSession)init;
- (TVPDownloadSessionDelegate)delegate;
- (id)assetDownloadTaskWithConfiguration:(id)configuration;
- (id)downloadForMediaItem:(id)item;
- (void)URLSession:(id)session assetDownloadTask:(id)task didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load;
- (void)URLSession:(id)session assetDownloadTask:(id)task willDownloadToURL:(id)l;
- (void)URLSession:(id)session assetDownloadTask:(id)task willDownloadVariants:(id)variants;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session;
- (void)initializeWithDownloadingMediaItems:(id)items;
- (void)registerDownloadTask:(id)task forDownload:(id)download;
- (void)unregisterDownloadTaskForDownload:(id)download;
@end

@implementation TVPDownloadSession

+ (TVPDownloadSession)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TVPDownloadSession sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __36__TVPDownloadSession_sharedInstance__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "TVPDownloadSession");
  v1 = sLogObject_3;
  sLogObject_3 = v0;

  sharedInstance_instance = objc_alloc_init(TVPDownloadSession);

  return MEMORY[0x2821F96F8]();
}

- (TVPDownloadSession)init
{
  v6.receiver = self;
  v6.super_class = TVPDownloadSession;
  v2 = [(TVPDownloadSession *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskIDsToDownloads = v2->_taskIDsToDownloads;
    v2->_taskIDsToDownloads = v3;
  }

  return v2;
}

- (TVPDownloadSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initializeWithDownloadingMediaItems:(id)items
{
  itemsCopy = items;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TVPDownloadSession_initializeWithDownloadingMediaItems___block_invoke;
  v7[3] = &unk_279D7C4C0;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = itemsCopy;
  v5 = initializeWithDownloadingMediaItems__onceToken;
  v6 = itemsCopy;
  if (v5 != -1)
  {
    dispatch_once(&initializeWithDownloadingMediaItems__onceToken, v7);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__TVPDownloadSession_initializeWithDownloadingMediaItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = dispatch_queue_create("com.apple.TVPBackgroundDownloadSession", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TVPDownloadSession_initializeWithDownloadingMediaItems___block_invoke_2;
  block[3] = &unk_279D7BDF0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = WeakRetained;
  v6 = v4;
  dispatch_async(v3, block);
}

void __58__TVPDownloadSession_initializeWithDownloadingMediaItems___block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x277CCAD38] backgroundSessionConfigurationWithIdentifier:@"com.apple.TVPlayback Video download background session"];
  v3 = MEMORY[0x277CE63F8];
  v4 = a1[4];
  v5 = [MEMORY[0x277CCABD8] mainQueue];
  v6 = [v3 sessionWithConfiguration:v2 assetDownloadDelegate:v4 delegateQueue:v5];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TVPDownloadSession_initializeWithDownloadingMediaItems___block_invoke_3;
  block[3] = &unk_279D7BDF0;
  v7 = a1[6];
  block[4] = a1[5];
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__TVPDownloadSession_initializeWithDownloadingMediaItems___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setDownloadSession:*(a1 + 40)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__TVPDownloadSession_initializeWithDownloadingMediaItems___block_invoke_4;
  v5[3] = &unk_279D7CEE0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 getAllTasksWithCompletionHandler:v5];
}

void __58__TVPDownloadSession_initializeWithDownloadingMediaItems___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__TVPDownloadSession_initializeWithDownloadingMediaItems___block_invoke_5;
  v5[3] = &unk_279D7BDF0;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  TVPPerformBlockOnMainThreadIfNeeded(v5);
}

void __58__TVPDownloadSession_initializeWithDownloadingMediaItems___block_invoke_5(id *a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v1 = sLogObject_3;
  if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[4];
    v3 = v1;
    *buf = 134217984;
    v69 = [v2 count];
    _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to rebuild %lu downloading media item(s)", buf, 0xCu);
  }

  v4 = sLogObject_3;
  if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[5];
    v6 = v4;
    v7 = [v5 count];
    *buf = 134217984;
    v69 = v7;
    _os_log_impl(&dword_26CEDD000, v6, OS_LOG_TYPE_DEFAULT, "Found %lu existing download task(s)", buf, 0xCu);
  }

  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:a1[5]];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v9 = a1[5];
  v10 = [v9 countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v64;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v64 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v63 + 1) + 8 * i);
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "taskIdentifier")}];
        [v8 setObject:v14 forKey:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v11);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = a1[4];
  v16 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v60;
    *&v17 = 138412290;
    v48 = v17;
    do
    {
      v20 = 0;
      do
      {
        if (*v60 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v59 + 1) + 8 * v20);
        v22 = [v21 mediaItemMetadataForProperty:{@"TVPMediaItemMetadataDownloadTaskIdentifier", v48}];
        if (!v22)
        {
          v28 = sLogObject_3;
          if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_ERROR))
          {
            *buf = v48;
            v69 = v21;
            v29 = v28;
            v30 = "No saved download task identifier exists for media item %@";
            goto LABEL_39;
          }

LABEL_28:
          v25 = 0;
          goto LABEL_32;
        }

        v23 = [v8 objectForKey:v22];
        v24 = sLogObject_3;
        if (!v23)
        {
          if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_ERROR))
          {
            *buf = v48;
            v69 = v21;
            v29 = v24;
            v30 = "No download task exists for media item %@";
LABEL_39:
            _os_log_error_impl(&dword_26CEDD000, v29, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
          }

          goto LABEL_28;
        }

        v25 = v23;
        if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v69 = v21;
          v70 = 2112;
          v71 = v25;
          _os_log_impl(&dword_26CEDD000, v24, OS_LOG_TYPE_DEFAULT, "For previously downloading media item %@, found existing download task %@", buf, 0x16u);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [v25 URLAsset];
          v27 = sLogObject_3;
          if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v48;
            v69 = v26;
            _os_log_impl(&dword_26CEDD000, v27, OS_LOG_TYPE_DEFAULT, "Download task's AVAsset is %@", buf, 0xCu);
          }
        }

        else
        {
          v31 = sLogObject_3;
          if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26CEDD000, v31, OS_LOG_TYPE_DEFAULT, "Weird, download task isn't of type AVAssetDownloadTask.  This shouldn't happen.  Allowing download to continue anyway.", buf, 2u);
          }
        }

        [v49 removeObject:v25];
LABEL_32:
        v32 = [[TVPDownload alloc] initWithMediaItem:v21 downloadSession:a1[6] existingDownloadTask:v25];
        [v51 addObject:v32];
        if (!v25)
        {
          v33 = sLogObject_3;
          if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_ERROR))
          {
            __58__TVPDownloadSession_initializeWithDownloadingMediaItems___block_invoke_5_cold_1(&v57, v58, v33);
          }

          v34 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TVPlaybackErrorDomain" code:829 userInfo:0];
          [(TVPDownload *)v32 setStartError:v34];
        }

        ++v20;
      }

      while (v18 != v20);
      v35 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
      v18 = v35;
    }

    while (v35);
  }

  v36 = sLogObject_3;
  if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v36;
    v38 = [v49 count];
    *buf = 134217984;
    v69 = v38;
    _os_log_impl(&dword_26CEDD000, v37, OS_LOG_TYPE_DEFAULT, "Found %lu task(s) that don't belong to any media items", buf, 0xCu);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v39 = v49;
  v40 = [v39 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v54;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v54 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v53 + 1) + 8 * j);
        v45 = sLogObject_3;
        if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v69 = v44;
          _os_log_impl(&dword_26CEDD000, v45, OS_LOG_TYPE_DEFAULT, "Cancelling leftover task %@", buf, 0xCu);
        }

        [v44 cancel];
      }

      v41 = [v39 countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v41);
  }

  v46 = [a1[6] delegate];
  [v46 downloadSession:a1[6] didAddRestoredDownloads:v51];

  v47 = *MEMORY[0x277D85DE8];
}

- (id)downloadForMediaItem:(id)item
{
  itemCopy = item;
  v5 = [[TVPDownload alloc] initWithMediaItem:itemCopy downloadSession:self existingDownloadTask:0];

  return v5;
}

- (id)assetDownloadTaskWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  downloadSession = [(TVPDownloadSession *)self downloadSession];
  v6 = [downloadSession assetDownloadTaskWithConfiguration:configurationCopy];

  return v6;
}

- (void)registerDownloadTask:(id)task forDownload:(id)download
{
  taskCopy = task;
  downloadCopy = download;
  v8 = downloadCopy;
  if (taskCopy && downloadCopy)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "taskIdentifier")}];
    taskIDsToDownloads = [(TVPDownloadSession *)self taskIDsToDownloads];
    v11 = [taskIDsToDownloads objectForKey:v9];

    if (v11)
    {
      v12 = sLogObject_3;
      if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_ERROR))
      {
        [(TVPDownloadSession *)v12 registerDownloadTask:v13 forDownload:v14, v15, v16, v17, v18, v19];
      }
    }

    else
    {
      taskIDsToDownloads2 = [(TVPDownloadSession *)self taskIDsToDownloads];
      [taskIDsToDownloads2 setObject:v8 forKey:v9];
    }
  }

  else
  {
    v20 = sLogObject_3;
    if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_ERROR))
    {
      [(TVPDownloadSession *)v20 registerDownloadTask:v21 forDownload:v22, v23, v24, v25, v26, v27];
    }
  }
}

- (void)unregisterDownloadTaskForDownload:(id)download
{
  downloadCopy = download;
  if (downloadCopy)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__2;
    v24 = __Block_byref_object_dispose__2;
    v25 = 0;
    taskIDsToDownloads = [(TVPDownloadSession *)self taskIDsToDownloads];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__TVPDownloadSession_unregisterDownloadTaskForDownload___block_invoke;
    v17[3] = &unk_279D7CF08;
    v18 = downloadCopy;
    v19 = &v20;
    [taskIDsToDownloads enumerateKeysAndObjectsUsingBlock:v17];

    if (v21[5])
    {
      taskIDsToDownloads2 = [(TVPDownloadSession *)self taskIDsToDownloads];
      [taskIDsToDownloads2 removeObjectForKey:v21[5]];
    }

    else
    {
      v15 = sLogObject_3;
      if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_26CEDD000, v15, OS_LOG_TYPE_DEFAULT, "Unable to unregister task for download because no task is registered for it", v16, 2u);
      }
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v7 = sLogObject_3;
    if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_ERROR))
    {
      [(TVPDownloadSession *)v7 unregisterDownloadTaskForDownload:v8, v9, v10, v11, v12, v13, v14];
    }
  }
}

void __56__TVPDownloadSession_unregisterDownloadTaskForDownload___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = [v8 mediaItem];
  v11 = [v9 mediaItem];

  LODWORD(v9) = [v10 isEqualToMediaItem:v11];
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)URLSession:(id)session assetDownloadTask:(id)task willDownloadToURL:(id)l
{
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__TVPDownloadSession_URLSession_assetDownloadTask_willDownloadToURL___block_invoke;
  v15[3] = &unk_279D7C3D0;
  objc_copyWeak(v19, &location);
  v12 = taskCopy;
  v16 = v12;
  v19[1] = a2;
  v13 = sessionCopy;
  v17 = v13;
  v14 = lCopy;
  v18 = v14;
  TVPPerformBlockOnMainThreadIfNeeded(v15);

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __69__TVPDownloadSession_URLSession_assetDownloadTask_willDownloadToURL___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained taskIDsToDownloads];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "taskIdentifier")}];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    if ([v5 conformsToProtocol:&unk_287E5F050])
    {
      v6 = *(a1 + 64);
      if (objc_opt_respondsToSelector())
      {
        [v5 URLSession:*(a1 + 40) assetDownloadTask:*(a1 + 32) willDownloadToURL:*(a1 + 48)];
      }
    }
  }

  else
  {
    v7 = sLogObject_3;
    if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 64);
      v9 = v7;
      v10 = NSStringFromSelector(v8);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Unable to find download for task in %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session assetDownloadTask:(id)task willDownloadVariants:(id)variants
{
  sessionCopy = session;
  taskCopy = task;
  variantsCopy = variants;
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__TVPDownloadSession_URLSession_assetDownloadTask_willDownloadVariants___block_invoke;
  v15[3] = &unk_279D7C3D0;
  objc_copyWeak(v19, &location);
  v12 = taskCopy;
  v16 = v12;
  v19[1] = a2;
  v13 = sessionCopy;
  v17 = v13;
  v14 = variantsCopy;
  v18 = v14;
  TVPPerformBlockOnMainThreadIfNeeded(v15);

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __72__TVPDownloadSession_URLSession_assetDownloadTask_willDownloadVariants___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained taskIDsToDownloads];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "taskIdentifier")}];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    if ([v5 conformsToProtocol:&unk_287E5EFE0])
    {
      v6 = *(a1 + 64);
      if (objc_opt_respondsToSelector())
      {
        [v5 URLSession:*(a1 + 40) assetDownloadTask:*(a1 + 32) willDownloadVariants:*(a1 + 48)];
      }
    }
  }

  else
  {
    v7 = sLogObject_3;
    if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 64);
      v9 = v7;
      v10 = NSStringFromSelector(v8);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Unable to find download for task in %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session assetDownloadTask:(id)task didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load
{
  sessionCopy = session;
  taskCopy = task;
  loadedCopy = loaded;
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __114__TVPDownloadSession_URLSession_assetDownloadTask_didLoadTimeRange_totalTimeRangesLoaded_timeRangeExpectedToLoad___block_invoke;
  v21[3] = &unk_279D7CF30;
  objc_copyWeak(v25, &location);
  v16 = taskCopy;
  v22 = v16;
  v25[1] = a2;
  v17 = sessionCopy;
  v23 = v17;
  v18 = *&range->var0.var3;
  v26 = *&range->var0.var0;
  v27 = v18;
  v28 = *&range->var1.var1;
  v19 = loadedCopy;
  v24 = v19;
  v20 = *&load->var0.var3;
  v29 = *&load->var0.var0;
  v30 = v20;
  v31 = *&load->var1.var1;
  TVPPerformBlockOnMainThreadIfNeeded(v21);

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
}

void __114__TVPDownloadSession_URLSession_assetDownloadTask_didLoadTimeRange_totalTimeRangesLoaded_timeRangeExpectedToLoad___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained taskIDsToDownloads];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "taskIdentifier")}];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    if ([v5 conformsToProtocol:&unk_287E5EFE0])
    {
      v6 = *(a1 + 64);
      if (objc_opt_respondsToSelector())
      {
        v8 = *(a1 + 32);
        v7 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 88);
        *buf = *(a1 + 72);
        v19 = v10;
        v20 = *(a1 + 104);
        v11 = *(a1 + 136);
        v17[0] = *(a1 + 120);
        v17[1] = v11;
        v17[2] = *(a1 + 152);
        [v5 URLSession:v7 assetDownloadTask:v8 didLoadTimeRange:buf totalTimeRangesLoaded:v9 timeRangeExpectedToLoad:v17];
      }
    }
  }

  else
  {
    v12 = sLogObject_3;
    if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 64);
      v14 = v12;
      v15 = NSStringFromSelector(v13);
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "Unable to find download for task in %@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = sLogObject_3;
  if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&dword_26CEDD000, v6, OS_LOG_TYPE_DEFAULT, "Received %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__TVPDownloadSession_URLSessionDidFinishEventsForBackgroundURLSession___block_invoke;
  block[3] = &unk_279D7BDC8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v8 = *MEMORY[0x277D85DE8];
}

void __71__TVPDownloadSession_URLSessionDidFinishEventsForBackgroundURLSession___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"TVPDownloadSessionDidFinishEventsForBackgroundURLSessionNotification" object:*(a1 + 32)];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__TVPDownloadSession_URLSession_task_didCompleteWithError___block_invoke;
  v15[3] = &unk_279D7C3D0;
  objc_copyWeak(v19, &location);
  v12 = taskCopy;
  v16 = v12;
  v19[1] = a2;
  v13 = sessionCopy;
  v17 = v13;
  v14 = errorCopy;
  v18 = v14;
  TVPPerformBlockOnMainThreadIfNeeded(v15);

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
}

void __59__TVPDownloadSession_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained taskIDsToDownloads];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "taskIdentifier")}];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    if ([v5 conformsToProtocol:&unk_287E5EFE0])
    {
      v6 = *(a1 + 64);
      if (objc_opt_respondsToSelector())
      {
        [v5 URLSession:*(a1 + 40) task:*(a1 + 32) didCompleteWithError:*(a1 + 48)];
      }
    }
  }

  else
  {
    v7 = sLogObject_3;
    if (os_log_type_enabled(sLogObject_3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 64);
      v9 = v7;
      v10 = NSStringFromSelector(v8);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Unable to find download for task in %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__TVPDownloadSession_initializeWithDownloadingMediaItems___block_invoke_5_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_26CEDD000, log, OS_LOG_TYPE_ERROR, "Will fail download when started since does no download task exists", buf, 2u);
}

@end