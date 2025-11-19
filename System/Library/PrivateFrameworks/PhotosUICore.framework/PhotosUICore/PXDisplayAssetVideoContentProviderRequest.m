@interface PXDisplayAssetVideoContentProviderRequest
+ (id)startRequestWithAsset:(id)a3 mediaProvider:(id)a4 strategies:(id)a5 priority:(int64_t)a6 requestURLOnly:(BOOL)a7 delegate:(id)a8 loadingQueue:(id)a9;
- (BOOL)_isTransientError:(id)a3;
- (PXDisplayAssetVideoContentProviderRequest)initWithAsset:(id)a3 mediaProvider:(id)a4 strategies:(id)a5 priority:(int64_t)a6 requestURLOnly:(BOOL)a7 delegate:(id)a8 loadingQueue:(id)a9;
- (PXDisplayAssetVideoContentProviderRequestDelegate)delegate;
- (id)loadingResult;
- (void)_handleLoadedPlayerItem:(id)a3 videoURL:(id)a4 info:(id)a5 strategyAtIndex:(int64_t)a6;
- (void)_handleLoadingProgress:(double)a3;
- (void)_loadMediaWithStrategyAtIndex:(int64_t)a3;
- (void)_start;
- (void)cancel;
- (void)dealloc;
- (void)setLoadingResult:(id)a3;
@end

@implementation PXDisplayAssetVideoContentProviderRequest

- (PXDisplayAssetVideoContentProviderRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_isTransientError:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x1E696A250]];

  if (v6 && ([v4 code] == 4097 || objc_msgSend(v4, "code") == 4099))
  {
    v7 = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [v4 underlyingErrors];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([(PXDisplayAssetVideoContentProviderRequest *)self _isTransientError:*(*(&v14 + 1) + 8 * i)])
          {
            v7 = 1;
            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_15:
  }

  return v7;
}

- (void)dealloc
{
  [(PXMediaProvider *)self->_mediaProvider cancelImageRequest:self->_requestID];
  v3.receiver = self;
  v3.super_class = PXDisplayAssetVideoContentProviderRequest;
  [(PXDisplayAssetVideoContentProviderRequest *)&v3 dealloc];
}

- (void)_handleLoadedPlayerItem:(id)a3 videoURL:(id)a4 info:(id)a5 strategyAtIndex:(int64_t)a6
{
  v54 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(PXDisplayAssetVideoContentProviderRequest *)self strategies];
  v14 = [v13 objectAtIndexedSubscript:a6];

  if ([(PXDisplayAssetVideoContentProviderRequest *)self requestURLOnly])
  {
    v15 = v11;
  }

  else
  {
    v15 = v10;
  }

  if (v15)
  {
    goto LABEL_5;
  }

  v22 = [v12 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
  if ([(PXDisplayAssetVideoContentProviderRequest *)self _isTransientError:v22]&& self->_retriesAfterTransientErrorCount <= 0)
  {
    v35 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [(PXDisplayAssetVideoContentProviderRequest *)self priority];
      if (v36 > 6)
      {
        v37 = @"??";
      }

      else
      {
        v37 = off_1E7743848[v36];
      }

      v45 = v37;
      v49 = [(PXDisplayAssetVideoContentProviderRequest *)self asset];
      v46 = [v49 uuid];
      *buf = 138544386;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v45;
      *&buf[22] = 2114;
      *&buf[24] = v14;
      *v53 = 2114;
      *&v53[2] = v46;
      *&v53[10] = 2114;
      *&v53[12] = v22;
      _os_log_impl(&dword_1A3C1C000, v35, OS_LOG_TYPE_DEFAULT, "VideoContentProvider failed to load but trying same strategy again. info:%{public}@, priority:%{public}@, strategy:%{public}@, displayAsset:%{public}@ error:%{public}@", buf, 0x34u);
    }

    ++self->_retriesAfterTransientErrorCount;
    v47 = dispatch_time(0, 200000000);
    v48 = [(PXDisplayAssetVideoContentProviderRequest *)self loadingQueue];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __99__PXDisplayAssetVideoContentProviderRequest__handleLoadedPlayerItem_videoURL_info_strategyAtIndex___block_invoke;
    v51[3] = &unk_1E77498A0;
    v51[4] = self;
    v51[5] = a6;
    dispatch_after(v47, v48, v51);
  }

  else if ([MEMORY[0x1E6978AB0] sensitiveContentAnalysisEnabled] && (-[NSObject code](v22, "code") == 10002 || -[NSObject code](v22, "code") == 10001))
  {
    v23 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(PXDisplayAssetVideoContentProviderRequest *)self priority];
      if (v24 > 6)
      {
        v25 = @"??";
      }

      else
      {
        v25 = off_1E7743848[v24];
      }

      v38 = v25;
      v39 = [(PXDisplayAssetVideoContentProviderRequest *)self asset];
      v40 = [v39 uuid];
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v38;
      *&buf[22] = 2114;
      *&buf[24] = v14;
      *v53 = 2114;
      *&v53[2] = v40;
      _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEFAULT, "VideoContentProvider received result with civic protections info:%{public}@, priority:%{public}@, strategy:%{public}@, displayAsset:%{public}@", buf, 0x2Au);
    }

    v41 = [(PXDisplayAssetVideoContentProviderRequest *)self delegate];
    if (v14)
    {
      [v14 segmentTimeRange];
    }

    else
    {
      *v53 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    [v41 request:self didFinishWithPlayerItem:v10 videoURL:v11 downloadedTimeRange:buf info:v12];
  }

  else
  {
    v26 = a6 + 1;

    v27 = [(PXDisplayAssetVideoContentProviderRequest *)self strategies];
    v28 = [v27 count];

    if (v26 >= v28)
    {
LABEL_5:
      v16 = [v14 isAudioAllowed];
      if (v10 && (v16 & 1) == 0)
      {
        v17 = [v10 tracks];
        [v17 enumerateObjectsUsingBlock:&__block_literal_global_370];
      }

      v18 = PLVideoPlaybackGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (v10)
        {
          v19 = v10;
        }

        else
        {
          v19 = v11;
        }

        v20 = [(PXDisplayAssetVideoContentProviderRequest *)self priority];
        if (v20 > 6)
        {
          v21 = @"??";
        }

        else
        {
          v21 = off_1E7743848[v20];
        }

        v32 = v21;
        v33 = [(PXDisplayAssetVideoContentProviderRequest *)self asset];
        v34 = [v33 uuid];
        *buf = 138544386;
        *&buf[4] = v19;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2114;
        *&buf[24] = v32;
        *v53 = 2114;
        *&v53[2] = v14;
        *&v53[10] = 2114;
        *&v53[12] = v34;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "VideoContentProvider received result:%{public}@, info:%{public}@, priority:%{public}@, strategy:%{public}@, displayAsset:%{public}@", buf, 0x34u);
      }

      v22 = [(PXDisplayAssetVideoContentProviderRequest *)self delegate];
      if (v14)
      {
        [v14 segmentTimeRange];
      }

      else
      {
        *v53 = 0u;
        memset(buf, 0, sizeof(buf));
      }

      [v22 request:self didFinishWithPlayerItem:v10 videoURL:v11 downloadedTimeRange:buf info:v12];
      goto LABEL_32;
    }

    v29 = PLVideoPlaybackGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(PXDisplayAssetVideoContentProviderRequest *)self priority];
      if (v30 > 6)
      {
        v31 = @"??";
      }

      else
      {
        v31 = off_1E7743848[v30];
      }

      v42 = v31;
      v43 = [(PXDisplayAssetVideoContentProviderRequest *)self asset];
      v44 = [v43 uuid];
      *buf = 138544130;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v42;
      *&buf[22] = 2114;
      *&buf[24] = v14;
      *v53 = 2114;
      *&v53[2] = v44;
      _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_DEFAULT, "VideoContentProvider failed to load. info:%{public}@, priority:%{public}@, strategy:%{public}@, displayAsset:%{public}@", buf, 0x2Au);
    }

    v22 = [(PXDisplayAssetVideoContentProviderRequest *)self loadingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__PXDisplayAssetVideoContentProviderRequest__handleLoadedPlayerItem_videoURL_info_strategyAtIndex___block_invoke_367;
    block[3] = &unk_1E77498A0;
    block[4] = self;
    block[5] = v26;
    dispatch_async(v22, block);
  }

LABEL_32:
}

void __99__PXDisplayAssetVideoContentProviderRequest__handleLoadedPlayerItem_videoURL_info_strategyAtIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = [v2 assetTrack];
  v3 = [v6 mediaType];
  v4 = v3;
  if (v3 == *MEMORY[0x1E69875A0])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 isEqualToString:?] ^ 1;
  }

  [v2 setEnabled:v5];
}

- (void)_handleLoadingProgress:(double)a3
{
  self->_loadingProgress = a3;
  v4 = [(PXDisplayAssetVideoContentProviderRequest *)self delegate];
  [v4 requestLoadingProgressDidChange:self];
}

- (void)_loadMediaWithStrategyAtIndex:(int64_t)a3
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = [(PXDisplayAssetVideoContentProviderRequest *)self strategies];
  v6 = [v5 objectAtIndexedSubscript:a3];

  if (self->_isCancelled)
  {
    v39 = *MEMORY[0x1E6978DE8];
    v40[0] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    [(PXDisplayAssetVideoContentProviderRequest *)self _handleLoadedPlayerItem:0 videoURL:0 info:v7 strategyAtIndex:a3];
    goto LABEL_21;
  }

  v7 = objc_alloc_init(PXVideoRequestOptions);
  -[PXVideoRequestOptions setNetworkAccessAllowed:](v7, "setNetworkAccessAllowed:", [v6 isNetworkAccessAllowed]);
  [v6 targetSize];
  [(PXVideoRequestOptions *)v7 setTargetSize:?];
  [(PXVideoRequestOptions *)v7 setIncludeTimeRangeMapper:1];
  [(PXVideoRequestOptions *)v7 setRestrictToPlayableOnCurrentDevice:1];
  v8 = [(PXDisplayAssetVideoContentProviderRequest *)self priority];
  if (v8 >= 7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXImageRequestOptionsDownloadIntent _downloadIntentForPriority(PXVideoLoadingPriority)"];
    v21 = v19;
    v22 = v20;
    v23 = 669;
    goto LABEL_24;
  }

  [(PXVideoRequestOptions *)v7 setDownloadIntent:qword_1A5381410[v8]];
  v9 = [(PXDisplayAssetVideoContentProviderRequest *)self priority];
  if (v9 >= 7)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXRequestOptionsDownloadPriority _downloadPriorityForPriority(PXVideoLoadingPriority)"];
    v21 = v19;
    v22 = v20;
    v23 = 685;
LABEL_24:
    [v21 handleFailureInFunction:v22 file:@"PXDisplayAssetVideoContentProvider.m" lineNumber:v23 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PXVideoRequestOptions *)v7 setDownloadPriority:qword_1A5381480[v9]];
  PXSetupPXVideoRequestOptionsForDeliveryQuality(v7, [v6 quality]);
  if (v6)
  {
    [v6 segmentTimeRange];
    if (BYTE12(v36))
    {
      [v6 segmentTimeRange];
      if (v35)
      {
        [v6 segmentTimeRange];
        if (!v34)
        {
          [v6 segmentTimeRange];
          if ((v33 & 0x8000000000000000) == 0)
          {
            v10 = +[PXVideoPlaybackSettings sharedInstance];
            v11 = [v10 isDownloadingVideoSegmentsEnabled];

            if (v11)
            {
              [v6 segmentTimeRange];
              location[0] = location[3];
              location[1] = location[4];
              location[2] = location[5];
              [(PXVideoRequestOptions *)v7 setTimeRange:location];
            }
          }
        }
      }
    }
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
  }

  v12 = [(PXDisplayAssetVideoContentProviderRequest *)self asset];
  v13 = [v12 playbackStyle] == 4;

  if (([v6 isStreamingAllowed] & v13) == 1)
  {
    [(PXVideoRequestOptions *)v7 setStreamingAllowed:1];
    v14 = [(PXDisplayAssetVideoContentProviderRequest *)self priority];
    if (v14 >= 7)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXVideoRequestOptionsStreamingVideoIntent _streamingVideoIntentForPriority(PXVideoLoadingPriority)"];
      [v24 handleFailureInFunction:v25 file:@"PXDisplayAssetVideoContentProvider.m" lineNumber:649 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [(PXVideoRequestOptions *)v7 setStreamingVideoIntent:qword_1A5381448[v14]];
  }

  else
  {
    [(PXVideoRequestOptions *)v7 setStreamingAllowed:0];
  }

  objc_initWeak(location, self);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __75__PXDisplayAssetVideoContentProviderRequest__loadMediaWithStrategyAtIndex___block_invoke;
  v30[3] = &unk_1E774A490;
  objc_copyWeak(&v31, location);
  [(PXVideoRequestOptions *)v7 setProgressHandler:v30];
  if ([(PXDisplayAssetVideoContentProviderRequest *)self requestURLOnly])
  {
    v15 = [(PXDisplayAssetVideoContentProviderRequest *)self mediaProvider];
    v16 = [(PXDisplayAssetVideoContentProviderRequest *)self asset];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __75__PXDisplayAssetVideoContentProviderRequest__loadMediaWithStrategyAtIndex___block_invoke_2;
    v28[3] = &unk_1E772C6E8;
    v17 = v29;
    objc_copyWeak(v29, location);
    v29[1] = a3;
    v18 = [v15 requestURLForVideo:v16 options:v7 resultHandler:v28];
  }

  else
  {
    v15 = [(PXDisplayAssetVideoContentProviderRequest *)self mediaProvider];
    v16 = [(PXDisplayAssetVideoContentProviderRequest *)self asset];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75__PXDisplayAssetVideoContentProviderRequest__loadMediaWithStrategyAtIndex___block_invoke_3;
    v26[3] = &unk_1E772C710;
    v17 = v27;
    objc_copyWeak(v27, location);
    v27[1] = a3;
    v18 = [v15 requestPlayerItemForVideo:v16 options:v7 resultHandler:v26];
  }

  self->_requestID = v18;

  objc_destroyWeak(v17);
  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
LABEL_21:
}

void __75__PXDisplayAssetVideoContentProviderRequest__loadMediaWithStrategyAtIndex___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLoadingProgress:a2];
}

void __75__PXDisplayAssetVideoContentProviderRequest__loadMediaWithStrategyAtIndex___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLoadedPlayerItem:0 videoURL:v6 info:v5 strategyAtIndex:*(a1 + 40)];
}

void __75__PXDisplayAssetVideoContentProviderRequest__loadMediaWithStrategyAtIndex___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLoadedPlayerItem:v6 videoURL:0 info:v5 strategyAtIndex:*(a1 + 40)];
}

- (void)_start
{
  if ([(PXDisplayAssetVideoContentProviderRequest *)self priority]< 0)
  {
    v3 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PXDisplayAssetVideoContentProviderRequest__start__block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  }

  else
  {

    [(PXDisplayAssetVideoContentProviderRequest *)self _loadMediaWithStrategyAtIndex:0];
  }
}

void __51__PXDisplayAssetVideoContentProviderRequest__start__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Simulating CPLErrorFeatureIsThrottled"];
  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E6978DF0];
  v9[0] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = *(MEMORY[0x1E6960C98] + 16);
  v7[0] = *MEMORY[0x1E6960C98];
  v7[1] = v6;
  v7[2] = *(MEMORY[0x1E6960C98] + 32);
  [v3 request:v4 didFinishWithPlayerItem:0 videoURL:0 downloadedTimeRange:v7 info:v5];
}

- (void)cancel
{
  v3 = [(PXDisplayAssetVideoContentProviderRequest *)self mediaProvider];
  [v3 cancelImageRequest:self->_requestID];

  self->_isCancelled = 1;
}

- (void)setLoadingResult:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_loadingQueue);
  loadingResult = self->_loadingResult;
  self->_loadingResult = v4;
}

- (id)loadingResult
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  loadingQueue = self->_loadingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PXDisplayAssetVideoContentProviderRequest_loadingResult__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(loadingQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (PXDisplayAssetVideoContentProviderRequest)initWithAsset:(id)a3 mediaProvider:(id)a4 strategies:(id)a5 priority:(int64_t)a6 requestURLOnly:(BOOL)a7 delegate:(id)a8 loadingQueue:(id)a9
{
  v23 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = PXDisplayAssetVideoContentProviderRequest;
  v18 = [(PXDisplayAssetVideoContentProviderRequest *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_asset, a3);
    objc_storeStrong(&v19->_mediaProvider, a4);
    objc_storeStrong(&v19->_strategies, a5);
    v19->_priority = a6;
    v19->_requestURLOnly = a7;
    objc_storeWeak(&v19->_delegate, v16);
    objc_storeStrong(&v19->_loadingQueue, a9);
  }

  return v19;
}

+ (id)startRequestWithAsset:(id)a3 mediaProvider:(id)a4 strategies:(id)a5 priority:(int64_t)a6 requestURLOnly:(BOOL)a7 delegate:(id)a8 loadingQueue:(id)a9
{
  v10 = a7;
  v15 = a9;
  v16 = a8;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[PXDisplayAssetVideoContentProviderRequest alloc] initWithAsset:v19 mediaProvider:v18 strategies:v17 priority:a6 requestURLOnly:v10 delegate:v16 loadingQueue:v15];

  [(PXDisplayAssetVideoContentProviderRequest *)v20 _start];

  return v20;
}

@end