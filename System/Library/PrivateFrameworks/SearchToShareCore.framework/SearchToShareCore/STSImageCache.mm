@interface STSImageCache
+ (id)sharedCache;
- (STSImageCache)init;
- (id)_imageFromSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (id)_imageInfoUsingAVAssetReaderWithFileURL:(id)l;
- (id)_imageInfoWithData:(id)data;
- (id)_imageSession;
- (id)fetchCachedImageInfoForURL:(id)l;
- (id)fetchCachedStaticImageForURL:(id)l hasMultipleFrames:(BOOL *)frames;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)cancelAllDownloads;
- (void)cancelQueuedDownloadForURL:(id)l;
- (void)clearInMemoryCache;
- (void)fetchImageDataWithURL:(id)l priority:(int64_t)priority isSource:(BOOL)source begin:(id)begin progress:(id)progress completion:(id)completion;
- (void)fetchImageWithURL:(id)l priority:(int64_t)priority isSource:(BOOL)source begin:(id)begin progress:(id)progress completion:(id)completion;
- (void)setPriority:(int64_t)priority forQueuedDownloadWithURL:(id)l;
@end

@implementation STSImageCache

+ (id)sharedCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__STSImageCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCache_onceToken != -1)
  {
    dispatch_once(&sharedCache_onceToken, block);
  }

  v2 = sharedCache_SharedCache;

  return v2;
}

uint64_t __28__STSImageCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedCache_SharedCache;
  sharedCache_SharedCache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (STSImageCache)init
{
  v20.receiver = self;
  v20.super_class = STSImageCache;
  v2 = [(STSImageCache *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:4];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    downloadOperationInfos = v2->_downloadOperationInfos;
    v2->_downloadOperationInfos = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    cancelledDownloadOperationInfos = v2->_cancelledDownloadOperationInfos;
    v2->_cancelledDownloadOperationInfos = dictionary2;

    v9 = dispatch_queue_create("com.apple.siri.parsec.SearchToShareApp.SearchToShareAppExtension.queuedOperationsInfo", 0);
    queuedOperationsInfoQueue = v2->_queuedOperationsInfoQueue;
    v2->_queuedOperationsInfoQueue = v9;

    v11 = [objc_alloc(MEMORY[0x277CCACD8]) initWithMemoryCapacity:0 diskCapacity:314572800 diskPath:@"STSImageCache.urlcache"];
    urlCache = v2->_urlCache;
    v2->_urlCache = v11;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    staticImageCache = v2->_staticImageCache;
    v2->_staticImageCache = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    firstFrameImageCache = v2->_firstFrameImageCache;
    v2->_firstFrameImageCache = dictionary4;

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    imageInfoCache = v2->_imageInfoCache;
    v2->_imageInfoCache = dictionary5;
  }

  return v2;
}

- (id)fetchCachedStaticImageForURL:(id)l hasMultipleFrames:(BOOL *)frames
{
  lCopy = l;
  if (!lCopy)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v7 = [(NSMutableDictionary *)self->_firstFrameImageCache objectForKey:lCopy];
  if (!v7)
  {
    v8 = [(NSMutableDictionary *)self->_staticImageCache objectForKey:lCopy];
LABEL_7:
    v9 = 0;
    if (!frames)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = v7;
  v9 = 1;
  if (frames)
  {
LABEL_8:
    *frames = v9;
  }

LABEL_9:

  return v8;
}

- (id)fetchCachedImageInfoForURL:(id)l
{
  if (l)
  {
    v4 = [(NSMutableDictionary *)self->_imageInfoCache objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)fetchImageWithURL:(id)l priority:(int64_t)priority isSource:(BOOL)source begin:(id)begin progress:(id)progress completion:(id)completion
{
  sourceCopy = source;
  lCopy = l;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__STSImageCache_fetchImageWithURL_priority_isSource_begin_progress_completion___block_invoke;
  v18[3] = &unk_279B8B6E8;
  v18[4] = self;
  v19 = lCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = lCopy;
  [(STSImageCache *)self fetchImageDataWithURL:v17 priority:priority isSource:sourceCopy begin:begin progress:progress completion:v18];
}

void __79__STSImageCache_fetchImageWithURL_priority_isSource_begin_progress_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!(v11 | v12))
  {
    v18 = 0;
    goto LABEL_20;
  }

  v16 = [v13 lowercaseString];
  if (([v16 containsString:@"gif"] & 1) == 0 && (objc_msgSend(v16, "containsString:", @"jpeg") & 1) == 0 && !objc_msgSend(v16, "containsString:", @"png"))
  {
    v35 = [v13 lowercaseString];
    v36 = [v35 containsString:@"mp4"];

    if (v36)
    {
      if (v12)
      {
        if ([*(a1 + 32) _allowImageInfoCaching])
        {
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __79__STSImageCache_fetchImageWithURL_priority_isSource_begin_progress_completion___block_invoke_18;
          v53[3] = &unk_279B8AF68;
          v53[4] = *(a1 + 32);
          v54 = v12;
          v55 = *(a1 + 40);
          dispatch_async(MEMORY[0x277D85CD0], v53);
        }

        else
        {
          v44 = [v12 frames];
          v45 = [v44 firstObject];

          if (v45)
          {
            v46 = [v12 frames];
            v47 = [v46 count] > 1;

            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __79__STSImageCache_fetchImageWithURL_priority_isSource_begin_progress_completion___block_invoke_2_19;
            v49[3] = &unk_279B8B6C0;
            v52 = v47;
            v49[4] = *(a1 + 32);
            v50 = v45;
            v51 = *(a1 + 40);
            dispatch_async(MEMORY[0x277D85CD0], v49);
          }
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __79__STSImageCache_fetchImageWithURL_priority_isSource_begin_progress_completion___block_invoke_cold_1(a1, v37, v38, v39, v40, v41, v42, v43);
    }

    goto LABEL_18;
  }

  if (([v16 containsString:@"jpeg"] & 1) != 0 || objc_msgSend(v16, "containsString:", @"png"))
  {
    v17 = [MEMORY[0x277D755B8] imageWithData:v11];
    v18 = [v17 sts_nonAlphaImage];

    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v18 = [MEMORY[0x277D755B8] agif_animatedImageWithAnimatedGIFData:v11];
  if (!v18)
  {
LABEL_16:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __79__STSImageCache_fetchImageWithURL_priority_isSource_begin_progress_completion___block_invoke_cold_2(a1, v27, v28, v29, v30, v31, v32, v33);
    }

LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

LABEL_8:
  v48 = v14;
  v19 = a1;
  v20 = [v18 images];
  v21 = [v20 count];

  v22 = v21 > 1;
  if (v21 > 1)
  {
    v23 = [v18 images];
    v24 = [v23 firstObject];

    a1 = v19;
    if (!v24)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v24 = v18;
    a1 = v19;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__STSImageCache_fetchImageWithURL_priority_isSource_begin_progress_completion___block_invoke_2;
  block[3] = &unk_279B8B6C0;
  v59 = v22;
  v25 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v57 = v24;
  v58 = v25;
  v26 = v24;
  dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_14:
  v14 = v48;
LABEL_19:

LABEL_20:
  v34 = *(a1 + 48);
  if (v34)
  {
    (*(v34 + 16))(v34, v18, v12, v13, v14, v15);
  }
}

uint64_t __79__STSImageCache_fetchImageWithURL_priority_isSource_begin_progress_completion___block_invoke_2(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 56))
  {
    v1 = 40;
  }

  return [*(*(a1 + 32) + v1) setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

uint64_t __79__STSImageCache_fetchImageWithURL_priority_isSource_begin_progress_completion___block_invoke_2_19(uint64_t a1)
{
  v1 = 32;
  if (*(a1 + 56))
  {
    v1 = 40;
  }

  return [*(*(a1 + 32) + v1) setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)fetchImageDataWithURL:(id)l priority:(int64_t)priority isSource:(BOOL)source begin:(id)begin progress:(id)progress completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  beginCopy = begin;
  progressCopy = progress;
  completionCopy = completion;
  if (lCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = lCopy;
      _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetch image data for %@", buf, 0xCu);
    }

    v17 = dispatch_get_global_queue(25, 0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke;
    v18[3] = &unk_279B8B8C0;
    v19 = lCopy;
    selfCopy = self;
    v21 = completionCopy;
    priorityCopy = priority;
    v22 = beginCopy;
    v23 = progressCopy;
    dispatch_async(v17, v18);
  }
}

void __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke(uint64_t a1)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAD20] requestWithURL:*(a1 + 32)];
  if (v2)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(v4 + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_2;
    block[3] = &unk_279B8B710;
    block[4] = v4;
    v45 = v3;
    v6 = *(a1 + 72);
    v49 = &v51;
    v50 = v6;
    v46 = *(a1 + 56);
    v47 = *(a1 + 64);
    v48 = *(a1 + 48);
    dispatch_sync(v5, block);
    if ((v52[3] & 1) == 0)
    {
      v7 = [*(*(a1 + 40) + 24) cachedResponseForRequest:v2];
      v8 = [v7 response];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (v9 = v8, v10 = [v9 statusCode] == 200, v9, v10))
      {
        v11 = MEMORY[0x277CCA8C8];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_3;
        v41[3] = &unk_279B8AF68;
        v26 = *(a1 + 32);
        v12 = v26.i64[0];
        v42 = vextq_s8(v26, v26, 8uLL);
        v43 = v7;
        v13 = [v11 blockOperationWithBlock:v41];

        v14 = &v42.i64[1];
      }

      else
      {
        v18 = [STSImageDownloadOperation alloc];
        v19 = [*(a1 + 40) _imageSession];
        v20 = *(a1 + 56);
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_2_36;
        v39[3] = &unk_279B8B7D0;
        v27 = *(a1 + 32);
        v21 = v27.i64[0];
        v40 = vextq_s8(v27, v27, 8uLL);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_5;
        v36[3] = &unk_279B8B870;
        v28 = *(a1 + 32);
        v22 = v28.i64[0];
        v37 = vextq_s8(v28, v28, 8uLL);
        v38 = v2;
        v13 = [(STSImageDownloadOperation *)v18 initWithRequest:v38 session:v19 begin:v20 progress:v39 completion:v36];

        v14 = &v40.i64[1];
      }

      v23 = *(*(a1 + 40) + 72);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_2_62;
      v30[3] = &unk_279B8B898;
      v24 = v13;
      v31 = v24;
      v33 = *(a1 + 56);
      v34 = *(a1 + 64);
      v35 = *(a1 + 48);
      v29 = *(a1 + 32);
      v25 = v29.i64[0];
      v32 = vextq_s8(v29, v29, 8uLL);
      dispatch_sync(v23, v30);
      [(STSImageDownloadOperation *)v24 setQueuePriority:*(a1 + 72)];
      [*(*(a1 + 40) + 8) addOperation:v24];
    }

    _Block_object_dispose(&v51, 8);
  }

  else if (*(a1 + 48))
  {
    v55 = *MEMORY[0x277CCA450];
    v15 = STSLocalizedString(@"ERROR_DESC_INVALID_REQUEST");
    v56[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];

    v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"STSErrorDomain" code:3 userInfo:v16];
    (*(*(a1 + 48) + 16))();
  }
}

void __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 operation];
    v4 = [v3 isFinished];

    v2 = v6;
    if ((v4 & 1) == 0)
    {
      *(*(a1[9] + 8) + 24) = 1;
      v5 = [v6 operation];
      [v5 setQueuePriority:a1[10]];

      if (a1[6])
      {
        [v6 addBegin:?];
      }

      if (a1[7])
      {
        [v6 addProgress:?];
      }

      v2 = v6;
      if (a1[8])
      {
        [v6 addCompletion:?];
        v2 = v6;
      }
    }
  }
}

void __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_3(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_29;
  block[3] = &unk_279B8B738;
  block[4] = v3;
  v21 = v2;
  v22 = &v23;
  dispatch_sync(v4, block);
  v5 = [*(a1 + 48) data];
  v6 = [*(a1 + 48) response];
  v7 = [v6 allHeaderFields];
  v8 = [v7 objectForKey:@"Content-Type"];

  v9 = [v8 lowercaseString];
  LODWORD(v7) = [v9 containsString:@"mp4"];

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Cache Hit for URL: %@", buf, 0xCu);
    }

    v11 = [*(a1 + 32) _imageInfoWithData:v5];
  }

  else
  {
    v11 = 0;
  }

  v12 = v24[5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_33;
  v16[3] = &unk_279B8B760;
  v13 = v5;
  v17 = v13;
  v14 = v11;
  v18 = v14;
  v15 = v8;
  v19 = v15;
  [v12 enumerateObjectsUsingBlock:v16];

  _Block_object_dispose(&v23, 8);
}

void __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_29(void *a1)
{
  v5 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v2 = [v5 completionBlocks];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1[4] + 56) setObject:0 forKeyedSubscript:a1[5]];
}

void __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_2_36(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_3_37;
  v8[3] = &unk_279B8B7A8;
  v8[4] = v6;
  v9 = v5;
  v10 = a2;
  v11 = a3;
  dispatch_sync(v7, v8);
}

void __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_3_37(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 progressBlocks];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_4;
  v4[3] = &__block_descriptor_48_e23_v32__0___v__qq_8Q16_B24l;
  v5 = *(a1 + 48);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v93 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v67 = a4;
  v11 = a5;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__2;
  v87 = __Block_byref_object_dispose__2;
  v88 = 0;
  v12 = *(*(a1 + 32) + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_6;
  block[3] = &unk_279B8B7F8;
  v13 = v11;
  v14 = *(a1 + 32);
  v79 = v13;
  v80 = v14;
  v15 = a1 + 40;
  v81 = *(a1 + 40);
  v82 = &v83;
  dispatch_sync(v12, block);
  v16 = v9;
  v17 = v16;
  if (v10 && [v16 statusCode] == 200)
  {
    v18 = [v17 allHeaderFields];
    v66 = [v18 objectForKey:@"Content-Type"];

    v65 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v10];
    v64 = [objc_alloc(MEMORY[0x277CCA8F0]) initWithResponse:v17 data:v65];
    [*(*(a1 + 32) + 24) storeCachedResponse:v64 forRequest:*(a1 + 48)];
    v19 = [v66 lowercaseString];
    v20 = [v19 containsString:@"mp4"];

    if (v20)
    {
      v62 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
      v63 = [v62 firstObject];
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      v22 = MEMORY[0x277CCACA8];
      v23 = [MEMORY[0x277CCAD78] UUID];
      v24 = [v23 UUIDString];
      v25 = [v22 stringWithFormat:@"%@.mp4", v24];
      v26 = [v63 stringByAppendingPathComponent:v25];
      v27 = [v21 initWithString:v26];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "write file", buf, 2u);
      }

      v28 = [MEMORY[0x277CCAA00] defaultManager];
      v29 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27];
      v75 = v13;
      [v28 moveItemAtURL:v10 toURL:v29 error:&v75];
      v30 = v75;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "finished writing file", buf, 2u);
      }

      v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "start MP4Processing", buf, 2u);
      }

      Current = CFAbsoluteTimeGetCurrent();
      v33 = [*(a1 + 32) _imageInfoUsingAVAssetReaderWithFileURL:v31];
      v34 = CFAbsoluteTimeGetCurrent();
      v35 = MEMORY[0x277D86220];
      v36 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [MEMORY[0x277CCABB0] numberWithDouble:v34 - Current];
        *buf = 138412290;
        v92 = v37;
        _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "elapsedTimeMP4Processing %@", buf, 0xCu);
      }

      if (!v33 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_5_cold_1(v15, v38, v39, v40, v41, v42, v43, v44);
      }

      [v28 removeItemAtPath:v27 error:0];

      v45 = 0;
    }

    else
    {
      v62 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
      v63 = [v62 firstObject];
      v49 = objc_alloc(MEMORY[0x277CCACA8]);
      v50 = MEMORY[0x277CCACA8];
      v51 = [MEMORY[0x277CCAD78] UUID];
      v52 = [v51 UUIDString];
      v53 = [v50 stringWithFormat:@"%@", v52];
      v54 = [v63 stringByAppendingPathComponent:v53];
      v27 = [v49 initWithString:v54];

      v28 = [MEMORY[0x277CCAA00] defaultManager];
      v55 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27];
      v74 = v13;
      LODWORD(v52) = [v28 moveItemAtURL:v10 toURL:v55 error:&v74];
      v30 = v74;

      if (v52)
      {
        v45 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v27];
        if (![v45 length])
        {
          v89 = *MEMORY[0x277CCA450];
          v56 = STSLocalizedString(@"ERROR_DESC_IMAGE_DATA_UNAVAILABLE");
          v90 = v56;
          v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];

          v58 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"STSErrorDomain" code:5 userInfo:v57];
          v30 = v58;
        }
      }

      else
      {
        v45 = 0;
      }

      [v28 removeItemAtPath:v27 error:0];
      v33 = 0;
    }

    v59 = v84[5];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_60;
    v68[3] = &unk_279B8B848;
    v48 = v45;
    v69 = v48;
    v60 = v33;
    v70 = v60;
    v61 = v66;
    v71 = v61;
    v72 = v67;
    v47 = v30;
    v73 = v47;
    [v59 enumerateObjectsUsingBlock:v68];
  }

  else
  {
    v46 = v84[5];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_7;
    v76[3] = &unk_279B8B820;
    v47 = v13;
    v77 = v47;
    [v46 enumerateObjectsUsingBlock:v76];
    v48 = v77;
  }

  _Block_object_dispose(&v83, 8);
}

void __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_6(void *a1)
{
  v2 = a1[4];
  if (v2 && [v2 code] == -999)
  {
    v3 = 64;
  }

  else
  {
    v3 = 56;
  }

  v7 = [*(a1[5] + v3) objectForKeyedSubscript:a1[6]];
  [*(a1[5] + v3) setObject:0 forKeyedSubscript:a1[6]];
  v4 = [v7 completionBlocks];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    v9 = *MEMORY[0x277CCA450];
    v5 = STSLocalizedString(@"ERROR_DESC_COULD_NOT_DOWNLOAD");
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    v4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"STSErrorDomain" code:4 userInfo:v6];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Download error. %@", &v7, 0xCu);
  }

  (*(v3 + 2))(v3, 0, 0, 0, 0, v4);
}

void __83__STSImageCache_fetchImageDataWithURL_priority_isSource_begin_progress_completion___block_invoke_2_62(void *a1)
{
  v2 = [[STSDownloadOperationInfo alloc] initWithOperation:a1[4] begin:a1[7] progress:a1[8] completion:a1[9]];
  [*(a1[5] + 56) setObject:v2 forKeyedSubscript:a1[6]];
}

- (void)setPriority:(int64_t)priority forQueuedDownloadWithURL:(id)l
{
  lCopy = l;
  v7 = lCopy;
  if (lCopy)
  {
    queuedOperationsInfoQueue = self->_queuedOperationsInfoQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__STSImageCache_setPriority_forQueuedDownloadWithURL___block_invoke;
    block[3] = &unk_279B8B008;
    block[4] = self;
    v10 = lCopy;
    priorityCopy = priority;
    dispatch_async(queuedOperationsInfoQueue, block);
  }
}

void __54__STSImageCache_setPriority_forQueuedDownloadWithURL___block_invoke(void *a1)
{
  v3 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v2 = [v3 operation];
  [v2 setQueuePriority:a1[6]];
}

- (void)cancelQueuedDownloadForURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    queuedOperationsInfoQueue = self->_queuedOperationsInfoQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__STSImageCache_cancelQueuedDownloadForURL___block_invoke;
    v7[3] = &unk_279B8AEF0;
    v7[4] = self;
    v8 = lCopy;
    dispatch_async(queuedOperationsInfoQueue, v7);
  }
}

void __44__STSImageCache_cancelQueuedDownloadForURL___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 56) setObject:0 forKeyedSubscript:*(a1 + 40)];
  [*(*(a1 + 32) + 64) setObject:v3 forKeyedSubscript:*(a1 + 40)];
  v2 = [v3 operation];
  [v2 cancel];
}

- (void)cancelAllDownloads
{
  queuedOperationsInfoQueue = self->_queuedOperationsInfoQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__STSImageCache_cancelAllDownloads__block_invoke;
  block[3] = &unk_279B8A988;
  block[4] = self;
  dispatch_sync(queuedOperationsInfoQueue, block);
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
}

uint64_t __35__STSImageCache_cancelAllDownloads__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__STSImageCache_cancelAllDownloads__block_invoke_2;
  v5[3] = &unk_279B8B8E8;
  v5[4] = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
  return [*(*(a1 + 32) + 56) removeAllObjects];
}

- (void)clearInMemoryCache
{
  [(NSMutableDictionary *)self->_firstFrameImageCache removeAllObjects];
  [(NSMutableDictionary *)self->_staticImageCache removeAllObjects];
  imageInfoCache = self->_imageInfoCache;

  [(NSMutableDictionary *)imageInfoCache removeAllObjects];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  if (errorCopy)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__2;
    v24 = __Block_byref_object_dispose__2;
    v25 = 0;
    queuedOperationsInfoQueue = self->_queuedOperationsInfoQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__STSImageCache_URLSession_task_didCompleteWithError___block_invoke;
    block[3] = &unk_279B8B738;
    v12 = taskCopy;
    v17 = v12;
    selfCopy = self;
    v19 = &v20;
    dispatch_sync(queuedOperationsInfoQueue, block);
    v13 = v21[5];
    response = [v12 response];
    _timingData = [v12 _timingData];
    [v13 completedWithResponse:response location:0 timingData:_timingData error:errorCopy];

    _Block_object_dispose(&v20, 8);
  }
}

void __54__STSImageCache_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) originalRequest];
  v7 = [v2 URL];

  v3 = [*(*(a1 + 40) + 64) objectForKeyedSubscript:v7];
  if (!v3)
  {
    v3 = [*(*(a1 + 40) + 56) objectForKeyedSubscript:v7];
  }

  v4 = [v3 operation];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  queuedOperationsInfoQueue = self->_queuedOperationsInfoQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__STSImageCache_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke;
  block[3] = &unk_279B8B738;
  block[4] = self;
  v12 = taskCopy;
  v17 = v12;
  v18 = &v19;
  dispatch_sync(queuedOperationsInfoQueue, block);
  v13 = v20[5];
  response = [v12 response];
  _timingData = [v12 _timingData];
  [v13 completedWithResponse:response location:lCopy timingData:_timingData error:0];

  _Block_object_dispose(&v19, 8);
}

void __67__STSImageCache_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = [*(a1 + 40) originalRequest];
  v4 = [v3 URL];
  v8 = [v2 objectForKeyedSubscript:v4];

  v5 = [v8 operation];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  sessionCopy = session;
  taskCopy = task;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  queuedOperationsInfoQueue = self->_queuedOperationsInfoQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__STSImageCache_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke;
  block[3] = &unk_279B8B738;
  block[4] = self;
  v14 = taskCopy;
  v16 = v14;
  v17 = &v18;
  dispatch_sync(queuedOperationsInfoQueue, block);
  [v19[5] updateProgressWithTotalBytesWritten:written totalBytesExpectedToWrite:write];

  _Block_object_dispose(&v18, 8);
}

void __98__STSImageCache_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = [*(a1 + 40) originalRequest];
  v4 = [v3 URL];
  v8 = [v2 objectForKeyedSubscript:v4];

  v5 = [v8 operation];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_imageSession
{
  v15[1] = *MEMORY[0x277D85DE8];
  imageSession = self->_imageSession;
  if (!imageSession)
  {
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v5 = MEMORY[0x277CCACA8];
    v6 = MGCopyAnswer();
    v7 = MGCopyAnswer();
    v8 = MGCopyAnswer();
    v9 = [v5 stringWithFormat:@"%@ %@ %@ %@", @"Messages/1.0", v6, v7, v8];;

    v14 = @"User-Agent";
    v15[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [defaultSessionConfiguration setHTTPAdditionalHeaders:v10];

    [defaultSessionConfiguration setURLCache:self->_urlCache];
    [defaultSessionConfiguration setHTTPCookieAcceptPolicy:1];
    [defaultSessionConfiguration setHTTPMaximumConnectionsPerHost:4];
    [defaultSessionConfiguration setTimeoutIntervalForResource:60.0];
    [defaultSessionConfiguration setTimeoutIntervalForRequest:15.0];
    [defaultSessionConfiguration set_connectionCacheCellPurgeTimeout:10.0];
    [defaultSessionConfiguration set_timingDataOptions:9];
    v11 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration delegate:self delegateQueue:0];
    v12 = self->_imageSession;
    self->_imageSession = v11;

    imageSession = self->_imageSession;
  }

  return imageSession;
}

- (id)_imageInfoUsingAVAssetReaderWithFileURL:(id)l
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CE63D8] assetWithURL:l];
  v37 = 0;
  v5 = [objc_alloc(MEMORY[0x277CE6410]) initWithAsset:v4 error:&v37];
  v6 = v37;
  if (v5)
  {
    v7 = [v4 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
    if ([v7 count])
    {
      v33 = v6;
      v8 = [v7 objectAtIndex:0];
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v9 setObject:&unk_2876BA540 forKey:*MEMORY[0x277CC4E30]];
      v31 = v9;
      v32 = v8;
      v10 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:v8 outputSettings:v9];
      [v5 addOutput:v10];
      if (([v5 startReading] & 1) == 0)
      {
        error = [v5 error];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = error;
          _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Calling AVAssetReader failed with error: %@", buf, 0xCu);
        }
      }

      v12 = objc_opt_new();
      if ([v5 status] == 1)
      {
        v13 = MEMORY[0x277D86220];
        do
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_264E95000, v13, OS_LOG_TYPE_DEFAULT, "AVAssetReaderStatusReading", buf, 2u);
          }

          copyNextSampleBuffer = [v10 copyNextSampleBuffer];
          if (!copyNextSampleBuffer)
          {
            break;
          }

          v15 = copyNextSampleBuffer;
          v16 = [(STSImageCache *)self _imageFromSampleBuffer:copyNextSampleBuffer];
          if (v16)
          {
            [v12 addObject:v16];
          }

          CFRelease(v15);
        }

        while ([v5 status] == 1);
      }

      status = [v5 status];
      [v5 cancelReading];
      if ([v12 count])
      {
        v18 = objc_alloc_init(STSAnimatedImageInfo);
        if (v4)
        {
          [v4 duration];
          v6 = v33;
          if (v36)
          {
            [v4 duration];
            v19 = v35;
          }

          else
          {
            v19 = 600.0;
          }

          [v4 duration];
          v27 = v34 / v19;
        }

        else
        {
          v27 = 0.0;
          v6 = v33;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v28 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
          *buf = 138412546;
          v39 = v28;
          v40 = 2112;
          v41 = v29;
          _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DLS duration %@ numFrames %@", buf, 0x16u);
        }

        [(STSAnimatedImageInfo *)v18 setDuration:v27];
        [(STSAnimatedImageInfo *)v18 setFrames:v12];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [STSImageCache _imageInfoUsingAVAssetReaderWithFileURL:status];
        }

        v18 = 0;
        v6 = v33;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [STSImageCache _imageInfoUsingAVAssetReaderWithFileURL:];
      }

      v18 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(STSImageCache *)v6 _imageInfoUsingAVAssetReaderWithFileURL:v20, v21, v22, v23, v24, v25, v26];
    }

    v18 = 0;
  }

  return v18;
}

- (id)_imageFromSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  CVPixelBufferLockBaseAddress(ImageBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(ImageBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(ImageBuffer);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 0x2006u);
  Image = CGBitmapContextCreateImage(v9);
  CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
  CGContextRelease(v9);
  CGColorSpaceRelease(DeviceRGB);
  v11 = MEMORY[0x277D755B8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v13 = [v11 imageWithCGImage:Image scale:0 orientation:?];

  CGImageRelease(Image);

  return v13;
}

- (id)_imageInfoWithData:(id)data
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAA00];
  dataCopy = data;
  defaultManager = [v4 defaultManager];
  v7 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v7 firstObject];
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v13 = [v10 stringWithFormat:@"%@.mp4", uUIDString];
  v14 = [firstObject stringByAppendingPathComponent:v13];
  v15 = [v9 initWithString:v14];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v15;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "video file %@", buf, 0xCu);
  }

  v16 = [dataCopy writeToFile:v15 atomically:1];

  if (v16)
  {
    v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "start MP4Processing", buf, 2u);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v19 = [(STSImageCache *)self _imageInfoUsingAVAssetReaderWithFileURL:v17];
    v20 = v19;
    if (!v19 || ([v19 frames], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, !v22))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [STSImageCache _imageInfoWithData:];
      }
    }

    v23 = CFAbsoluteTimeGetCurrent();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      current = [MEMORY[0x277CCABB0] numberWithDouble:v23 - Current];
      *buf = 138412290;
      v34 = current;
      _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "end MP4Processing (duration %@)", buf, 0xCu);
    }

    [defaultManager removeItemAtPath:v15 error:0];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(STSImageCache *)v15 _imageInfoWithData:v25, v26, v27, v28, v29, v30, v31];
    }

    v20 = 0;
  }

  return v20;
}

- (void)_imageInfoUsingAVAssetReaderWithFileURL:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_0(&dword_264E95000, MEMORY[0x277D86220], v2, "Could not create frames for video asset, final reader status: %@", v3, v4, v5, v6, 2u);
}

@end