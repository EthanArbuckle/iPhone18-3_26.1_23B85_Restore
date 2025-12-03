@interface MTImageDownloader
- (BOOL)_completeUsingExistingDownloadedImageForUuid:(id)uuid imageUrl:(id)url;
- (MTImageDownloader)init;
- (id)_clientRequestsForUrl:(id)url;
- (id)_keyForImageDownloaderTempFilename:(id)filename;
- (id)_temporaryImagePathByCopyingDownloadedContent:(id)content uuid:(id)uuid error:(id *)error;
- (id)_temporaryImagePathForDownloadedImageWithUuid:(id)uuid;
- (id)_temporaryResourcesDirectory;
- (int64_t)_enqueueClientInfoWithUrl:(id)url key:(id)key podcastUuid:(id)uuid completion:(id)completion;
- (void)_dequeueClientRequests:(id)requests;
- (void)_downloadImageUrl:(id)url cacheKey:(id)key podcastUuid:(id)uuid userInitiated:(BOOL)initiated backgroundFetch:(BOOL)fetch callback:(id)callback;
- (void)_finishProcessingClientRequests:(id)requests originalUrl:(id)url success:(BOOL)success error:(id)error;
- (void)_onImageWorkQueuePurgeUnneededItemsInTemporaryResourcesDirectoryIfNecessary;
- (void)_processFinishedDownloadWithContentURL:(id)l originalUrl:(id)url actualRequestUrl:(id)requestUrl finishedWithContentHandler:(id)handler processedKeys:(id)keys;
- (void)_saveArtworkImageUrl:(id)url forPodcastUuids:(id)uuids logHeader:(id)header;
- (void)cleanupTemporaryResourcesDirectoryIfNecessary;
- (void)configureSession:(id)session;
- (void)downloadImageForPodcastUuid:(id)uuid userInitiated:(BOOL)initiated backgroundFetch:(BOOL)fetch callback:(id)callback;
- (void)task:(id)task didCompleteWithDownloadedContentUrl:(id)url;
- (void)task:(id)task didFailWithError:(id)error orStatusCode:(int64_t)code;
@end

@implementation MTImageDownloader

- (MTImageDownloader)init
{
  v10.receiver = self;
  v10.super_class = MTImageDownloader;
  v2 = [(MTURLSessionManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(MTImageDownloader *)v2 setClientRequestsByUrl:v3];

    v4 = dispatch_queue_create(0, 0);
    [(MTImageDownloader *)v2 setSyncQueue:v4];

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    [(MTImageDownloader *)v2 setImageWorkQueue:v7];

    v8 = +[MTImageStore defaultStore];
    [(MTImageDownloader *)v2 setImageStore:v8];

    [(MTImageDownloader *)v2 setHasPurgedTemporaryResourcesDirectory:0];
  }

  return v2;
}

- (void)_onImageWorkQueuePurgeUnneededItemsInTemporaryResourcesDirectoryIfNecessary
{
  v43 = *MEMORY[0x277D85DE8];
  if (![(MTImageDownloader *)self hasPurgedTemporaryResourcesDirectory])
  {
    [(MTImageDownloader *)self setHasPurgedTemporaryResourcesDirectory:1];
    _temporaryResourcesDirectory = [(MTImageDownloader *)self _temporaryResourcesDirectory];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [defaultManager subpathsAtPath:_temporaryResourcesDirectory];

    if ([v5 count])
    {
      v6 = _MTLogCategoryArtworkDownload();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B365000, v6, OS_LOG_TYPE_DEFAULT, "Cleaning temporary resources directory", buf, 2u);
      }

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __96__MTImageDownloader__onImageWorkQueuePurgeUnneededItemsInTemporaryResourcesDirectoryIfNecessary__block_invoke;
      v38[3] = &unk_2782BE6F8;
      v38[4] = self;
      v7 = [v5 mt_compactMap:v38];
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
      privateQueueContext = [mEMORY[0x277D3DAE8] privateQueueContext];

      *buf = 0;
      v35 = buf;
      v36 = 0x2020000000;
      v37 = 0;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __96__MTImageDownloader__onImageWorkQueuePurgeUnneededItemsInTemporaryResourcesDirectoryIfNecessary__block_invoke_2;
      v29[3] = &unk_2782BE720;
      v11 = v7;
      v30 = v11;
      v12 = privateQueueContext;
      v31 = v12;
      v33 = buf;
      v13 = dictionary;
      v32 = v13;
      [v12 performBlockAndWait:v29];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __96__MTImageDownloader__onImageWorkQueuePurgeUnneededItemsInTemporaryResourcesDirectoryIfNecessary__block_invoke_3;
      v27[3] = &unk_2782BE748;
      v27[4] = self;
      v14 = v13;
      v28 = v14;
      [v14 enumerateKeysAndObjectsUsingBlock:v27];
      allKeys = [v14 allKeys];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __96__MTImageDownloader__onImageWorkQueuePurgeUnneededItemsInTemporaryResourcesDirectoryIfNecessary__block_invoke_4;
      v24[3] = &unk_2782BE770;
      v24[4] = self;
      v16 = allKeys;
      v25 = v16;
      v26 = _temporaryResourcesDirectory;
      [v5 enumerateObjectsUsingBlock:v24];
      if ([v16 count])
      {
        v17 = _MTLogCategoryArtworkDownload();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v16 count];
          *v39 = 67109378;
          v40 = v18;
          v41 = 2112;
          v42 = v16;
          _os_log_impl(&dword_21B365000, v17, OS_LOG_TYPE_DEFAULT, "Found %d reusable orphaned items for podcasts without cached artwork:  %@", v39, 0x12u);
        }
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __96__MTImageDownloader__onImageWorkQueuePurgeUnneededItemsInTemporaryResourcesDirectoryIfNecessary__block_invoke_80;
      v20[3] = &unk_2782BE798;
      v19 = v14;
      selfCopy = self;
      v23 = buf;
      v21 = v19;
      [v16 enumerateObjectsUsingBlock:v20];

      _Block_object_dispose(buf, 8);
    }
  }
}

- (id)_temporaryResourcesDirectory
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"MTImageDownloader"];

  return v3;
}

- (void)downloadImageForPodcastUuid:(id)uuid userInitiated:(BOOL)initiated backgroundFetch:(BOOL)fetch callback:(id)callback
{
  uuidCopy = uuid;
  callbackCopy = callback;
  if ([MEMORY[0x277D3DB60] supportsImageStore] && objc_msgSend(uuidCopy, "length"))
  {
    mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
    privateQueueContext = [mEMORY[0x277D3DAE8] privateQueueContext];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __88__MTImageDownloader_downloadImageForPodcastUuid_userInitiated_backgroundFetch_callback___block_invoke;
    v15[3] = &unk_2782BE4B8;
    v16 = privateQueueContext;
    v17 = uuidCopy;
    selfCopy = self;
    initiatedCopy = initiated;
    fetchCopy = fetch;
    v19 = callbackCopy;
    v14 = privateQueueContext;
    [v14 performBlock:v15];
  }
}

void __88__MTImageDownloader_downloadImageForPodcastUuid_userInitiated_backgroundFetch_callback___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v2 = [v5 requestsAreNonAppInitiated];
  v3 = [v5 imageURL];
  if ([v3 length])
  {
    v4 = [objc_alloc(MEMORY[0x277D3DB88]) init:v3 nonAppInitiated:v2];
    [*(a1 + 48) downloadImageForPodcastUuid:*(a1 + 40) urlOptions:v4 userInitiated:*(a1 + 64) useBackgroundFetch:*(a1 + 65) callback:*(a1 + 56)];
  }
}

- (void)_downloadImageUrl:(id)url cacheKey:(id)key podcastUuid:(id)uuid userInitiated:(BOOL)initiated backgroundFetch:(BOOL)fetch callback:(id)callback
{
  fetchCopy = fetch;
  initiatedCopy = initiated;
  v35 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  keyCopy = key;
  uuidCopy = uuid;
  callbackCopy = callback;
  if ([MEMORY[0x277D3DB60] supportsImageStore])
  {
    v26 = fetchCopy;
    [(MTImageDownloader *)self cleanupTemporaryResourcesDirectoryIfNecessary];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __99__MTImageDownloader__downloadImageUrl_cacheKey_podcastUuid_userInitiated_backgroundFetch_callback___block_invoke;
    aBlock[3] = &unk_2782BE3E0;
    v18 = callbackCopy;
    v30 = v18;
    v19 = _Block_copy(aBlock);
    v20 = [urlCopy url];
    absoluteString = [v20 absoluteString];

    if ([absoluteString length])
    {
      v22 = [(MTImageDownloader *)self _enqueueClientInfoWithUrl:absoluteString key:keyCopy podcastUuid:uuidCopy completion:v18];
      if (v22 == 2)
      {
        v25 = _MTLogCategoryArtworkDownload();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v32 = uuidCopy;
          v33 = 2112;
          v34 = absoluteString;
          _os_log_impl(&dword_21B365000, v25, OS_LOG_TYPE_DEFAULT, "download request - appended callback to already running download task (uuid=%@, imageUrl=%@)", buf, 0x16u);
        }

        goto LABEL_17;
      }

      if (v22 == 1)
      {
        v24 = _MTLogCategoryArtworkDownload();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v32 = uuidCopy;
          v33 = 2112;
          v34 = absoluteString;
          _os_log_impl(&dword_21B365000, v24, OS_LOG_TYPE_DEFAULT, "download request - started download task (uuid=%@, imageUrl=%@)", buf, 0x16u);
        }

        if (![(MTImageDownloader *)self _completeUsingExistingDownloadedImageForUuid:uuidCopy imageUrl:absoluteString])
        {
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __99__MTImageDownloader__downloadImageUrl_cacheKey_podcastUuid_userInitiated_backgroundFetch_callback___block_invoke_19;
          v27[3] = &unk_2782BD8D0;
          v28 = v19;
          [(MTURLSessionManager *)self startDownloadTaskForURL:urlCopy userInitiated:initiatedCopy useBackgroundFetch:v26 usePrivatePath:0 downloadStartedBlock:v27];
        }

        goto LABEL_17;
      }

      if (v22)
      {
LABEL_17:

        goto LABEL_18;
      }

      v23 = _MTLogCategoryArtworkDownload();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v32 = uuidCopy;
        v33 = 2112;
        v34 = absoluteString;
        _os_log_impl(&dword_21B365000, v23, OS_LOG_TYPE_ERROR, "download request error - unable to enqueue request (uuid=%@, imageUrl=%@)", buf, 0x16u);
      }
    }

    (*(v19 + 2))(v19, 0);
    goto LABEL_17;
  }

LABEL_18:
}

uint64_t __99__MTImageDownloader__downloadImageUrl_cacheKey_podcastUuid_userInitiated_backgroundFetch_callback___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __99__MTImageDownloader__downloadImageUrl_cacheKey_podcastUuid_userInitiated_backgroundFetch_callback___block_invoke_19(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (BOOL)_completeUsingExistingDownloadedImageForUuid:(id)uuid imageUrl:(id)url
{
  v28 = *MEMORY[0x277D85DE8];
  uuidCopy = uuid;
  urlCopy = url;
  if ([MEMORY[0x277D3DB60] supportsImageStore])
  {
    v8 = [(MTImageDownloader *)self _temporaryImagePathForDownloadedImageWithUuid:uuidCopy];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
      if (v9)
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        path = [v9 path];
        v12 = [defaultManager fileExistsAtPath:path];

        if (v12)
        {
          v13 = _MTLogCategoryArtworkDownload();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            path2 = [v9 path];
            *buf = 138412802;
            v23 = uuidCopy;
            v24 = 2112;
            v25 = urlCopy;
            v26 = 2112;
            v27 = path2;
            _os_log_impl(&dword_21B365000, v13, OS_LOG_TYPE_DEFAULT, "didComplete download - Using orphaned downloaded image results (uuid = %@, imageUrl = %@, contentPath = %@)", buf, 0x20u);
          }

          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __75__MTImageDownloader__completeUsingExistingDownloadedImageForUuid_imageUrl___block_invoke;
          v18[3] = &unk_2782BDDB8;
          v19 = uuidCopy;
          v20 = urlCopy;
          v9 = v9;
          v21 = v9;
          v15 = [MEMORY[0x277CBEB58] set];
          [(MTImageDownloader *)self _processFinishedDownloadWithContentURL:v9 originalUrl:v20 actualRequestUrl:v20 finishedWithContentHandler:v18 processedKeys:v15];

          v16 = 1;
          goto LABEL_11;
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v16 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v16 = 0;
LABEL_12:

  return v16;
}

void __75__MTImageDownloader__completeUsingExistingDownloadedImageForUuid_imageUrl___block_invoke(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _MTLogCategoryArtworkDownload();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_21B365000, v2, OS_LOG_TYPE_DEFAULT, "didComplete download - Did finish processing image, cleaning up temporary file (uuid = %@, imageUrl = %@)", &v6, 0x16u);
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  [v5 removeItemAtURL:a1[6] error:0];
}

- (void)configureSession:(id)session
{
  sessionCopy = session;
  [sessionCopy setTimeoutIntervalForRequest:120.0];
  [(MTImageDownloader *)self _urlSessionResourceTimeout];
  [sessionCopy setTimeoutIntervalForResource:?];
  [sessionCopy setRequestCachePolicy:0];
}

- (void)task:(id)task didFailWithError:(id)error orStatusCode:(int64_t)code
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  taskCopy = task;
  v9 = [objc_opt_class() originalURLForTask:taskCopy];

  absoluteString = [v9 absoluteString];

  v11 = [(MTImageDownloader *)self _clientRequestsForUrl:absoluteString];
  v12 = _MTLogCategoryArtworkDownload();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412802;
    v15 = errorCopy;
    v16 = 2112;
    v17 = absoluteString;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_21B365000, v12, OS_LOG_TYPE_ERROR, "didFailWithError with error = %@.  originalUrl = %@, clientRequests = %@", &v14, 0x20u);
  }

  v13 = MTImageDownloadErrorWithUnderlyingError(5, @"URL Session", errorCopy);

  [(MTImageDownloader *)self _finishProcessingClientRequests:v11 originalUrl:absoluteString success:0 error:v13];
}

- (void)task:(id)task didCompleteWithDownloadedContentUrl:(id)url
{
  v51 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  urlCopy = url;
  v8 = [objc_opt_class() originalURLForTask:taskCopy];
  absoluteString = [v8 absoluteString];

  response = [taskCopy response];
  v11 = [response URL];
  absoluteString2 = [v11 absoluteString];

  v13 = [(MTImageDownloader *)self _clientRequestsForUrl:absoluteString];
  if ([v13 count])
  {
    v14 = [objc_opt_class() statusCodeForTask:taskCopy];
    if (v14 == 200)
    {
      firstObject = [v13 firstObject];
      uuid = [firstObject uuid];

      v44 = 0;
      v39 = uuid;
      v23 = [(MTImageDownloader *)self _temporaryImagePathByCopyingDownloadedContent:urlCopy uuid:uuid error:&v44];
      v30 = v44;
      if (v23)
      {
        v38 = urlCopy;
        v31 = _MTLogCategoryArtworkDownload();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          path = [v23 path];
          *buf = 138412802;
          v46 = absoluteString;
          v47 = 2112;
          v48 = path;
          v49 = 2112;
          v50 = v13;
          _os_log_impl(&dword_21B365000, v31, OS_LOG_TYPE_DEFAULT, "didComplete download - Will begin processing (originalUrl = %@, contentPath = %@, clientRequests = %@)", buf, 0x20u);
        }

        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __62__MTImageDownloader_task_didCompleteWithDownloadedContentUrl___block_invoke;
        v40[3] = &unk_2782BDDB8;
        v41 = absoluteString;
        v42 = v13;
        v43 = v23;
        v33 = [MEMORY[0x277CBEB58] set];
        [(MTImageDownloader *)self _processFinishedDownloadWithContentURL:v43 originalUrl:v41 actualRequestUrl:absoluteString2 finishedWithContentHandler:v40 processedKeys:v33];

        v34 = v41;
        urlCopy = v38;
      }

      else
      {
        v34 = MTImageDownloadErrorWithCode(4, @"unable to copy downloaded content", v24, v25, v26, v27, v28, v29, v37);
        v36 = _MTLogCategoryArtworkDownload();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v46 = v34;
          v47 = 2112;
          v48 = absoluteString;
          v49 = 2112;
          v50 = v13;
          _os_log_impl(&dword_21B365000, v36, OS_LOG_TYPE_ERROR, "didComplete download encountered error creating temp file (error = %@, originalUrl = %@, clientRequests = %@)", buf, 0x20u);
        }

        [(MTImageDownloader *)self _finishProcessingClientRequests:v13 originalUrl:absoluteString success:0 error:v34];
      }
    }

    else
    {
      v30 = MTImageDownloadErrorWithCode(3, @"bad server response (status = %ld)", v15, v16, v17, v18, v19, v20, v14);
      v35 = _MTLogCategoryArtworkDownload();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v46 = v30;
        v47 = 2112;
        v48 = absoluteString;
        v49 = 2112;
        v50 = v13;
        _os_log_impl(&dword_21B365000, v35, OS_LOG_TYPE_ERROR, "didComplete download encountered HTTP error = %@ (originalUrl = %@, clientRequests = %@)", buf, 0x20u);
      }

      [(MTImageDownloader *)self _finishProcessingClientRequests:v13 originalUrl:absoluteString success:0 error:v30];
    }
  }

  else
  {
    v30 = _MTLogCategoryArtworkDownload();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v46 = absoluteString;
      v47 = 2112;
      v48 = v13;
      _os_log_impl(&dword_21B365000, v30, OS_LOG_TYPE_ERROR, "didComplete download, but no clients remain (originalUrl = %@, clientRequests = %@)", buf, 0x16u);
    }
  }
}

void __62__MTImageDownloader_task_didCompleteWithDownloadedContentUrl___block_invoke(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _MTLogCategoryArtworkDownload();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_21B365000, v2, OS_LOG_TYPE_DEFAULT, "didComplete download - Did finish processing, cleaning up temporary file (originalUrl = %@, clientRequests = %@)", &v6, 0x16u);
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  [v5 removeItemAtURL:a1[6] error:0];
}

- (void)_processFinishedDownloadWithContentURL:(id)l originalUrl:(id)url actualRequestUrl:(id)requestUrl finishedWithContentHandler:(id)handler processedKeys:(id)keys
{
  v100 = *MEMORY[0x277D85DE8];
  lCopy = l;
  urlCopy = url;
  requestUrlCopy = requestUrl;
  handlerCopy = handler;
  keysCopy = keys;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke;
  aBlock[3] = &unk_2782BDFC8;
  v61 = handlerCopy;
  v97 = v61;
  v15 = _Block_copy(aBlock);
  v16 = [keysCopy count];
  v17 = @"processFinishedDownload (secondary-phase): ";
  if (!v16)
  {
    v17 = @"processFinishedDownload (initial-phase): ";
  }

  v65 = v17;
  imageStore = [(MTImageDownloader *)self imageStore];
  v18 = [(MTImageDownloader *)self _clientRequestsForUrl:urlCopy];
  if ([v18 count])
  {
    if (urlCopy)
    {
      v25 = [v18 mt_compactMap:&__block_literal_global_10];
      v60 = [v25 mutableCopy];

      if ([v60 count])
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v99 = 0;
        v32 = dispatch_group_create();
        dispatch_group_enter(v32);
        _shouldDiscardTransparency = [(MTImageDownloader *)self _shouldDiscardTransparency];
        v34 = [v60 mt_compactMap:&__block_literal_global_50];
        mt_uniqued = [v34 mt_uniqued];

        v36 = [v60 mt_compactMap:&__block_literal_global_52];
        mt_uniqued2 = [v36 mt_uniqued];

        imageWorkQueue = [(MTImageDownloader *)self imageWorkQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_3;
        block[3] = &unk_2782BE548;
        v59 = v65;
        v85 = v59;
        v54 = mt_uniqued;
        v86 = v54;
        v57 = mt_uniqued2;
        v87 = v57;
        v56 = keysCopy;
        v88 = v56;
        v39 = imageStore;
        v89 = v39;
        v95 = _shouldDiscardTransparency;
        v94 = buf;
        v55 = lCopy;
        v90 = v55;
        selfCopy = self;
        v58 = requestUrlCopy;
        v92 = v58;
        v40 = v32;
        v93 = v40;
        dispatch_async(imageWorkQueue, block);

        v41 = v40;
        if ([MEMORY[0x277D3DB60] isRunningOnTV])
        {
          group = v40;
          v42 = dispatch_group_create();
          dispatch_group_enter(v42);
          imageWorkQueue2 = [(MTImageDownloader *)self imageWorkQueue];
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_54;
          v75[3] = &unk_2782BE570;
          v83 = buf;
          v76 = v60;
          v77 = v39;
          v78 = v59;
          selfCopy2 = self;
          v80 = v58;
          v81 = v57;
          v44 = v42;
          v82 = v44;
          v45 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, -15, v75);
          v41 = group;
          dispatch_group_notify(group, imageWorkQueue2, v45);

          v40 = v44;
        }

        imageWorkQueue3 = [(MTImageDownloader *)self imageWorkQueue];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_60;
        v66[3] = &unk_2782BE5E8;
        v67 = v18;
        v68 = v59;
        selfCopy3 = self;
        v70 = urlCopy;
        v71 = v56;
        v72 = v55;
        v73 = v58;
        v74 = v15;
        dispatch_group_notify(v40, imageWorkQueue3, v66);

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v50 = MTImageDownloadErrorWithCode(2, @"download finished, but no keysToProcess", v26, v27, v28, v29, v30, v31, v52);
        v51 = _MTLogCategoryArtworkDownload();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v65;
          *&buf[12] = 2112;
          *&buf[14] = urlCopy;
          _os_log_impl(&dword_21B365000, v51, OS_LOG_TYPE_ERROR, "%@ unexpected error - no client with a valid key (originalUrl = %@)", buf, 0x16u);
        }

        [(MTImageDownloader *)self _finishProcessingClientRequests:v18 originalUrl:urlCopy success:0 error:v50];
        v15[2](v15);
      }
    }

    else
    {
      v48 = MTImageDownloadErrorWithCode(2, @"downloaded location not available", v19, v20, v21, v22, v23, v24, v52);
      v49 = _MTLogCategoryArtworkDownload();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v65;
        _os_log_impl(&dword_21B365000, v49, OS_LOG_TYPE_ERROR, "%@ unexpected error - unable to determine originalUrl", buf, 0xCu);
      }

      [(MTImageDownloader *)self _finishProcessingClientRequests:v18 originalUrl:0 success:0 error:v48];
      v15[2](v15);
    }
  }

  else
  {
    v47 = _MTLogCategoryArtworkDownload();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v65;
      *&buf[12] = 2112;
      *&buf[14] = urlCopy;
      _os_log_impl(&dword_21B365000, v47, OS_LOG_TYPE_DEFAULT, "%@ exiting - no clients remain (originalUrl = %@)", buf, 0x16u);
    }

    v15[2](v15);
  }
}

uint64_t __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *__130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_42(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 key];
  if ([v3 length])
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_3(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = _MTLogCategoryArtworkDownload();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 138412802;
    v24 = v3;
    v25 = 2112;
    v26 = v4;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_21B365000, v2, OS_LOG_TYPE_DEFAULT, "%@ will add-to-image-store (keys = %@, uuids = %@)", buf, 0x20u);
  }

  v6 = *(a1 + 56);
  v7 = [*(a1 + 40) allObjects];
  [v6 addObjectsFromArray:v7];

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 112);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_53;
  v15[3] = &unk_2782BE520;
  v22 = *(a1 + 104);
  v11 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = *(a1 + 96);
  [v8 addImagesWithSourceUrl:v9 forKeys:v11 removeOldItems:1 discardTransparency:v10 completion:v15];
}

void __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_53(uint64_t a1, char a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 80) + 8) + 24) = a2;
  v3 = _MTLogCategoryArtworkDownload();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = 138412802;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_21B365000, v3, OS_LOG_TYPE_DEFAULT, "%@ finished add-to-image-store (keys = %@, uuids = %@)", &v7, 0x20u);
  }

  if (([MEMORY[0x277D3DB60] isRunningOnTV] & 1) == 0)
  {
    [*(a1 + 56) _saveArtworkImageUrl:*(a1 + 64) forPodcastUuids:*(a1 + 48) logHeader:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 72));
}

void __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_54(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 88) + 8) + 24) == 1 && [*(a1 + 32) count])
  {
    v2 = [MEMORY[0x277CBEB58] set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v3 = *(a1 + 32);
    v27 = [v3 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v27)
    {
      v4 = *v29;
      v26 = *v29;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v29 != v4)
          {
            objc_enumerationMutation(v3);
          }

          v6 = *(*(&v28 + 1) + 8 * i);
          v7 = [v6 uuid];
          v8 = [v7 length];

          if (v8)
          {
            v9 = MEMORY[0x277CCACA8];
            v10 = [v6 key];
            v11 = [v6 uuid];
            v12 = [v9 stringWithFormat:@"key=%@, uuid=%@", v10, v11];

            if (([v2 containsObject:v12] & 1) == 0)
            {
              v13 = objc_autoreleasePoolPush();
              [v2 addObject:v12];
              v14 = *(a1 + 40);
              v15 = [v6 key];
              v16 = [v14 imageForKey:v15];

              if (v16)
              {
                v17 = _MTLogCategoryArtworkDownload();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = v13;
                  v18 = v3;
                  v19 = v2;
                  v20 = *(a1 + 48);
                  v21 = [v6 uuid];
                  *buf = 138412546;
                  v33 = v20;
                  v2 = v19;
                  v3 = v18;
                  v13 = v25;
                  v34 = 2112;
                  v35 = v21;
                  _os_log_impl(&dword_21B365000, v17, OS_LOG_TYPE_DEFAULT, "%@ analyzing image for uuid = %@", buf, 0x16u);
                }

                v22 = +[(MTSingleton *)MTImageAnalyzer];
                v23 = [v6 uuid];
                v24 = [v22 addImage:v16 forKey:v23];

                v4 = v26;
              }

              objc_autoreleasePoolPop(v13);
            }
          }
        }

        v27 = [v3 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v27);
    }
  }

  [*(a1 + 56) _saveArtworkImageUrl:*(a1 + 64) forPodcastUuids:*(a1 + 72) logHeader:*(a1 + 48)];
  dispatch_group_leave(*(a1 + 80));
}

void __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_60(id *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [a1[4] mt_compactMap:&__block_literal_global_64];
  v4 = [v2 setWithArray:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  v7 = v6;

  v8 = MEMORY[0x277CBEB98];
  v9 = [a1[4] mt_compactMap:&__block_literal_global_67];
  v10 = [v8 setWithArray:v9];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [MEMORY[0x277CBEB98] set];
  }

  v13 = v12;

  if ([v7 count] || objc_msgSend(v13, "count"))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_4;
    block[3] = &unk_2782BDDB8;
    v29 = a1[5];
    v30 = v13;
    v31 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v14 = _MTLogCategoryArtworkDownload();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a1[5];
    *buf = 138412290;
    v33 = v15;
    _os_log_impl(&dword_21B365000, v14, OS_LOG_TYPE_DEFAULT, "%@ finished succesfully (...will attempt to process again to ensure no new requests came in...)", buf, 0xCu);
  }

  v16 = [a1[6] _clientRequestsForUrl:a1[7]];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_70;
  v25[3] = &unk_2782BE598;
  v26 = a1[4];
  v27 = a1[8];
  v17 = [v16 mt_filter:v25];

  [a1[6] _finishProcessingClientRequests:v17 originalUrl:a1[7] success:1 error:0];
  v18 = dispatch_get_global_queue(0, 0);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_2_72;
  v19[3] = &unk_2782BE5C0;
  v19[4] = a1[6];
  v20 = a1[9];
  v21 = a1[7];
  v22 = a1[10];
  v24 = a1[11];
  v23 = a1[8];
  dispatch_async(v18, v19);
}

void __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_4(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = _MTLogCategoryArtworkDownload();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    *buf = 138412802;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_21B365000, v2, OS_LOG_TYPE_DEFAULT, "%@ posting notification (keys = %@, uuids = %@)", buf, 0x20u);
  }

  v9[0] = @"uuids";
  v9[1] = @"keys";
  v6 = a1[5];
  v10[0] = a1[6];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"kMTImageDownloaderArtworkDidLoadNotification" object:0 userInfo:v7];
}

uint64_t __130__MTImageDownloader__processFinishedDownloadWithContentURL_originalUrl_actualRequestUrl_finishedWithContentHandler_processedKeys___block_invoke_70(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [v3 key];
    v4 = [v5 containsObject:v6];
  }

  return v4;
}

- (void)_saveArtworkImageUrl:(id)url forPodcastUuids:(id)uuids logHeader:(id)header
{
  urlCopy = url;
  uuidsCopy = uuids;
  headerCopy = header;
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__MTImageDownloader__saveArtworkImageUrl_forPodcastUuids_logHeader___block_invoke;
  v16[3] = &unk_2782BE610;
  v17 = uuidsCopy;
  v18 = headerCopy;
  v19 = mainOrPrivateContext;
  v20 = urlCopy;
  v12 = urlCopy;
  v13 = mainOrPrivateContext;
  v14 = headerCopy;
  v15 = uuidsCopy;
  [v13 performBlockAndWait:v16];
}

uint64_t __68__MTImageDownloader__saveArtworkImageUrl_forPodcastUuids_logHeader___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = _MTLogCategoryArtworkDownload();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 40);
          *buf = 138412546;
          v18 = v9;
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&dword_21B365000, v8, OS_LOG_TYPE_DEFAULT, "%@ updating DB (actualUrl, artNeedsUpdate=NO) for %@", buf, 0x16u);
        }

        v10 = [*(a1 + 48) podcastForUuid:v7];
        v11 = v10;
        if (v10)
        {
          [v10 setImageURL:*(a1 + 56)];
          [v11 setNeedsArtworkUpdate:0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v4);
  }

  return [*(a1 + 48) saveInCurrentBlock];
}

- (void)_finishProcessingClientRequests:(id)requests originalUrl:(id)url success:(BOOL)success error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v8 = [requestsCopy mt_filter:&__block_literal_global_74];
  [(MTImageDownloader *)self _dequeueClientRequests:requestsCopy];
  if ([v8 count])
  {
    v21 = v8;
    v22 = requestsCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          completion = [v14 completion];
          if (completion)
          {
            imageStore = [(MTImageDownloader *)self imageStore];
            v17 = [v14 key];
            v18 = [imageStore imageForKey:v17];

            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __79__MTImageDownloader__finishProcessingClientRequests_originalUrl_success_error___block_invoke_2;
            block[3] = &unk_2782BE658;
            v19 = completion;
            v24 = v18;
            v25 = v19;
            v20 = v18;
            dispatch_async(MEMORY[0x277D85CD0], block);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    v8 = v21;
    requestsCopy = v22;
  }
}

BOOL __79__MTImageDownloader__finishProcessingClientRequests_originalUrl_success_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 completion];
  v3 = v2 != 0;

  return v3;
}

- (int64_t)_enqueueClientInfoWithUrl:(id)url key:(id)key podcastUuid:(id)uuid completion:(id)completion
{
  urlCopy = url;
  keyCopy = key;
  uuidCopy = uuid;
  completionCopy = completion;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (![urlCopy length])
  {
    v14 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_21B365000, v14, OS_LOG_TYPE_ERROR, "Invalid url specified", buf, 2u);
    }
  }

  if ([urlCopy length])
  {
    v15 = [MTImageDownloadClientRequest requestForUrl:urlCopy key:keyCopy podcastUuid:uuidCopy completion:completionCopy];
    syncQueue = [(MTImageDownloader *)self syncQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __74__MTImageDownloader__enqueueClientInfoWithUrl_key_podcastUuid_completion___block_invoke;
    v20[3] = &unk_2782BE680;
    v20[4] = self;
    v21 = urlCopy;
    v22 = v15;
    v23 = &v25;
    v17 = v15;
    dispatch_sync(syncQueue, v20);

    v18 = v26[3];
  }

  else
  {
    v18 = v26[3];
  }

  _Block_object_dispose(&v25, 8);

  return v18;
}

void __74__MTImageDownloader__enqueueClientInfoWithUrl_key_podcastUuid_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) clientRequestsByUrl];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 arrayByAddingObject:*(a1 + 48)];

  v8 = [v7 count];
  v9 = 1;
  if (v8 != 1)
  {
    v9 = 2;
  }

  *(*(*(a1 + 56) + 8) + 24) = v9;
  v10 = _MTLogCategoryArtworkDownload();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_21B365000, v10, OS_LOG_TYPE_DEFAULT, "adding request to image download queue: %@", &v13, 0xCu);
  }

  v12 = [*(a1 + 32) clientRequestsByUrl];
  [v12 setObject:v7 forKeyedSubscript:*(a1 + 40)];
}

- (id)_clientRequestsForUrl:(id)url
{
  urlCopy = url;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  syncQueue = [(MTImageDownloader *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MTImageDownloader__clientRequestsForUrl___block_invoke;
  block[3] = &unk_2782BE6A8;
  v11 = urlCopy;
  v12 = &v13;
  block[4] = self;
  v6 = urlCopy;
  dispatch_sync(syncQueue, block);

  v7 = v14[5];
  if (!v7)
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __43__MTImageDownloader__clientRequestsForUrl___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) clientRequestsByUrl];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_dequeueClientRequests:(id)requests
{
  requestsCopy = requests;
  syncQueue = [(MTImageDownloader *)self syncQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__MTImageDownloader__dequeueClientRequests___block_invoke;
  v7[3] = &unk_2782BDD68;
  v8 = requestsCopy;
  selfCopy = self;
  v6 = requestsCopy;
  dispatch_sync(syncQueue, v7);
}

void __44__MTImageDownloader__dequeueClientRequests___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = _MTLogCategoryArtworkDownload();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_21B365000, v2, OS_LOG_TYPE_DEFAULT, "removing requests from image download queue: %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [*(a1 + 40) clientRequestsByUrl];
        v11 = [v9 url];
        v12 = [v10 objectForKeyedSubscript:v11];

        if (v12)
        {
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __44__MTImageDownloader__dequeueClientRequests___block_invoke_76;
          v16[3] = &unk_2782BE6D0;
          v16[4] = v9;
          v13 = [v12 mt_filter:v16];
          v14 = [*(a1 + 40) clientRequestsByUrl];
          v15 = [v9 url];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

uint64_t __44__MTImageDownloader__dequeueClientRequests___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueId];
  v4 = [*(a1 + 32) uniqueId];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1u;
}

- (void)cleanupTemporaryResourcesDirectoryIfNecessary
{
  imageWorkQueue = [(MTImageDownloader *)self imageWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MTImageDownloader_cleanupTemporaryResourcesDirectoryIfNecessary__block_invoke;
  block[3] = &unk_2782BDD90;
  block[4] = self;
  dispatch_async(imageWorkQueue, block);
}

void __96__MTImageDownloader__onImageWorkQueuePurgeUnneededItemsInTemporaryResourcesDirectoryIfNecessary__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*(a1 + 40) podcastForUuid:{v7, v11}];
        *(*(*(a1 + 56) + 8) + 24) = [v8 requestsAreNonAppInitiated];
        if (v8)
        {
          v9 = [v8 imageURL];
          if (v9)
          {
            v10 = v9;
            [*(a1 + 48) setObject:v9 forKeyedSubscript:v7];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __96__MTImageDownloader__onImageWorkQueuePurgeUnneededItemsInTemporaryResourcesDirectoryIfNecessary__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) imageStore];
  if ([v3 hasItemForKey:v4])
  {
    [*(a1 + 40) removeObjectForKey:v4];
  }
}

void __96__MTImageDownloader__onImageWorkQueuePurgeUnneededItemsInTemporaryResourcesDirectoryIfNecessary__block_invoke_4(id *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] _keyForImageDownloaderTempFilename:v3];
  if (!v4 || ([a1[5] containsObject:v4] & 1) == 0)
  {
    v5 = _MTLogCategoryArtworkDownload();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_DEFAULT, "Deleting orphaned item at path %@", &v8, 0xCu);
    }

    v6 = [a1[6] stringByAppendingPathComponent:v3];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    [v7 removeItemAtPath:v6 error:0];
  }
}

void __96__MTImageDownloader__onImageWorkQueuePurgeUnneededItemsInTemporaryResourcesDirectoryIfNecessary__block_invoke_80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 objectForKeyedSubscript:v4];
  v5 = [objc_alloc(MEMORY[0x277D3DB88]) init:v6 nonAppInitiated:*(*(*(a1 + 48) + 8) + 24)];
  [*(a1 + 40) downloadImageForPodcastUuid:v4 urlOptions:v5 userInitiated:0 useBackgroundFetch:0 callback:0];
}

- (id)_keyForImageDownloaderTempFilename:(id)filename
{
  filenameCopy = filename;
  if ([filenameCopy hasSuffix:@"_image"])
  {
    v4 = [filenameCopy substringToIndex:{objc_msgSend(filenameCopy, "length") - objc_msgSend(@"_image", "length")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_temporaryImagePathForDownloadedImageWithUuid:(id)uuid
{
  uuidCopy = uuid;
  v5 = uuidCopy;
  if (uuidCopy)
  {
    uUIDString = uuidCopy;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
  }

  _temporaryResourcesDirectory = [(MTImageDownloader *)self _temporaryResourcesDirectory];
  v9 = [_temporaryResourcesDirectory stringByAppendingPathComponent:uUIDString];
  v10 = [v9 stringByAppendingString:@"_image"];

  return v10;
}

- (id)_temporaryImagePathByCopyingDownloadedContent:(id)content uuid:(id)uuid error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  uuidCopy = uuid;
  _temporaryResourcesDirectory = [(MTImageDownloader *)self _temporaryResourcesDirectory];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [defaultManager fileExistsAtPath:_temporaryResourcesDirectory];

  if ((v12 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v36 = 0;
    v14 = [defaultManager2 createDirectoryAtPath:_temporaryResourcesDirectory withIntermediateDirectories:1 attributes:0 error:&v36];
    v15 = v36;

    v16 = _MTLogCategoryArtworkDownload();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      errorCopy = error;
      if (v14)
      {
        v17 = @"Did";
      }

      else
      {
        v17 = @"Failed to";
      }

      if (v14)
      {
        v18 = &stru_282CBB070;
      }

      else
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@", error = %@", v15];
      }

      *buf = 138412802;
      v38 = v17;
      v39 = 2112;
      v40 = _temporaryResourcesDirectory;
      v41 = 2112;
      v42 = v18;
      _os_log_impl(&dword_21B365000, v16, OS_LOG_TYPE_DEFAULT, "%@ create temporaryResourcesDirectory (%@)%@", buf, 0x20u);
      if ((v14 & 1) == 0)
      {
      }

      error = errorCopy;
    }
  }

  v19 = [(MTImageDownloader *)self _temporaryImagePathForDownloadedImageWithUuid:uuidCopy];
  v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v19];
  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v35 = 0;
  v22 = [defaultManager3 copyItemAtURL:contentCopy toURL:v20 error:&v35];
  v23 = v35;

  v24 = _MTLogCategoryArtworkDownload();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v25)
    {
      path = [contentCopy path];
      *buf = 138412546;
      v38 = path;
      v39 = 2112;
      v40 = v19;
      v27 = "copying %@ to %@ succeeded!";
      v28 = v24;
      v29 = 22;
LABEL_18:
      _os_log_impl(&dword_21B365000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
    }
  }

  else if (v25)
  {
    path = [contentCopy path];
    *buf = 138412802;
    v38 = path;
    v39 = 2112;
    v40 = v19;
    v41 = 2112;
    v42 = v23;
    v27 = "copying %@ to %@ failed (error = %@)";
    v28 = v24;
    v29 = 32;
    goto LABEL_18;
  }

  if (error && v23)
  {
    v30 = v23;
    *error = v23;
  }

  if (v22)
  {
    v31 = v20;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  return v31;
}

@end