@interface PXStoryVideoAssetResourcePreloadingOperation
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)downloadTimeRange;
- (PXStoryVideoAssetResourcePreloadingOperation)initWithDisplayAssetResource:(id)a3 mediaProvider:(id)a4;
- (PXStoryVideoAssetResourcePreloadingOperation)initWithVideoAssetResource:(id)a3 mediaProvider:(id)a4 downloadTimeRange:(id *)a5 videoSessionManager:(id)a6 isExporting:(BOOL)a7 isInline:(BOOL)a8 limitVideoDownloadQuality:(BOOL)a9;
- (id)diagnosticDescription;
- (void)cancel;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)px_start;
@end

@implementation PXStoryVideoAssetResourcePreloadingOperation

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)downloadTimeRange
{
  v3 = *&self[7].var0.var1;
  *&retstr->var0.var0 = *&self[6].var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[7].var1.var0;
  return self;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (VideoContentProviderObservationContext == a5)
  {
    v14 = v8;
    if ((v6 & 2) != 0)
    {
      v9 = [(PXStoryDisplayAssetResourcePreloadingOperation *)self progressHandler];
      if (v9)
      {
        v10 = [(PXStoryVideoAssetResourcePreloadingOperation *)self videoContentProvider];
        [v10 loadingProgress];
        v9[2](v9, 0);
      }

      v8 = v14;
    }

    if (v6)
    {
      v11 = [(PXStoryVideoAssetResourcePreloadingOperation *)self videoContentProvider];
      v12 = [v11 loadingResult];

      if (v12)
      {
        v13 = [v12 error];
        [(PXStoryDisplayAssetResourcePreloadingOperation *)self setError:v13];

        [(PXStoryDisplayAssetResourcePreloadingOperation *)self px_finishIfPossible];
      }

      v8 = v14;
    }
  }
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = PXStoryVideoAssetResourcePreloadingOperation;
  [(PXAsyncOperation *)&v5 cancel];
  v3 = [(PXStoryVideoAssetResourcePreloadingOperation *)self videoContentProvider];
  [v3 unregisterChangeObserver:self context:VideoContentProviderObservationContext];

  v4 = [(PXStoryVideoAssetResourcePreloadingOperation *)self videoContentProvider];
  [v4 cancelLoading];
}

- (void)px_start
{
  v25.receiver = self;
  v25.super_class = PXStoryVideoAssetResourcePreloadingOperation;
  [(PXStoryDisplayAssetResourcePreloadingOperation *)&v25 px_start];
  v3 = objc_alloc_init(PXVideoSessionManagerDisplayAssetOptions);
  if ([(PXStoryVideoAssetResourcePreloadingOperation *)self isExporting])
  {
    v4 = +[PXStorySettings sharedInstance];
    v5 = [v4 exportVideoQuality];

    [(PXStoryVideoAssetResourcePreloadingOperation *)self downloadTimeRange];
    [(PXVideoSessionManagerDisplayAssetOptions *)v3 addContentDeliveryStrategyWithDeliveryQuality:v5 segmentTimeRange:&v22 streamingAllowed:0];
    v6 = *(MEMORY[0x1E6960C98] + 16);
    v22 = *MEMORY[0x1E6960C98];
    v23 = v6;
    v24 = *(MEMORY[0x1E6960C98] + 32);
    [(PXVideoSessionManagerDisplayAssetOptions *)v3 addContentDeliveryStrategyWithDeliveryQuality:v5 segmentTimeRange:&v22 streamingAllowed:0];
  }

  else
  {
    [(PXStoryVideoAssetResourcePreloadingOperation *)self downloadTimeRange];
    [(PXVideoSessionManagerDisplayAssetOptions *)v3 addContentDeliveryStrategyWithDeliveryQuality:2 segmentTimeRange:&v22 streamingAllowed:0 networkAccessAllowed:0];
    if ([(PXStoryVideoAssetResourcePreloadingOperation *)self limitVideoDownloadQuality])
    {
      v7 = 3;
    }

    else
    {
      v8 = +[PXStorySettings sharedInstance];
      v7 = [v8 videoQuality];
    }

    v9 = [(PXStoryDisplayAssetResourcePreloadingOperation *)self displayAsset];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;

      if (v10 && [v10 px_isSharedAlbumAsset])
      {
        [(PXStoryVideoAssetResourcePreloadingOperation *)self downloadTimeRange];
        [(PXVideoSessionManagerDisplayAssetOptions *)v3 addContentDeliveryStrategyWithDeliveryQuality:v7 segmentTimeRange:&v22 streamingAllowed:1];
      }
    }

    else
    {

      v10 = 0;
    }

    [(PXStoryVideoAssetResourcePreloadingOperation *)self downloadTimeRange];
    [(PXVideoSessionManagerDisplayAssetOptions *)v3 addContentDeliveryStrategyWithDeliveryQuality:v7 segmentTimeRange:&v22 streamingAllowed:0];
    v11 = *(MEMORY[0x1E6960C98] + 16);
    v22 = *MEMORY[0x1E6960C98];
    v23 = v11;
    v24 = *(MEMORY[0x1E6960C98] + 32);
    [(PXVideoSessionManagerDisplayAssetOptions *)v3 addContentDeliveryStrategyWithDeliveryQuality:3 segmentTimeRange:&v22 streamingAllowed:0];
  }

  v12 = +[PXStorySettings sharedInstance];
  v13 = [v12 videoInlineStabilization];

  if (v13 && (-[PXStoryDisplayAssetResourcePreloadingOperation displayAsset](self, "displayAsset"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 playbackStyle], v14, v15 == 3))
  {
    [(PXVideoSessionManagerDisplayAssetOptions *)v3 setShouldStabilizeLivePhotosIfPossible:1];
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = [(PXStoryVideoAssetResourcePreloadingOperation *)self videoSessionManager];
  v18 = [(PXStoryDisplayAssetResourcePreloadingOperation *)self displayAsset];
  v19 = [(PXStoryDisplayAssetResourcePreloadingOperation *)self mediaProvider];
  v20 = [v17 contentProviderForAsset:v18 withOptions:v3 mediaProvider:v19 requestURLOnly:v16];

  [(PXStoryVideoAssetResourcePreloadingOperation *)self setVideoContentProvider:v20];
  [v20 registerChangeObserver:self context:VideoContentProviderObservationContext];
  if ([(PXStoryVideoAssetResourcePreloadingOperation *)self isInline])
  {
    v21 = 6;
  }

  else
  {
    v21 = 1;
  }

  [v20 beginLoadingWithPriority:v21];
}

- (id)diagnosticDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PXStoryDisplayAssetResourcePreloadingOperation *)self displayAsset];
  v5 = [v4 uuid];
  [(PXStoryVideoAssetResourcePreloadingOperation *)self downloadTimeRange];
  v6 = PXCMTimeRangeDescription(v11);
  v7 = [(PXStoryVideoAssetResourcePreloadingOperation *)self videoContentProvider];
  [v7 loadingProgress];
  v9 = [v3 stringWithFormat:@"Video %@, time range %@ – %.0f%%", v5, v6, v8 * 100.0];

  return v9;
}

- (PXStoryVideoAssetResourcePreloadingOperation)initWithDisplayAssetResource:(id)a3 mediaProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXStoryVideoAssetResourcePreloadingOperation.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXStoryVideoAssetResourcePreloadingOperation initWithDisplayAssetResource:mediaProvider:]"}];

  abort();
}

- (PXStoryVideoAssetResourcePreloadingOperation)initWithVideoAssetResource:(id)a3 mediaProvider:(id)a4 downloadTimeRange:(id *)a5 videoSessionManager:(id)a6 isExporting:(BOOL)a7 isInline:(BOOL)a8 limitVideoDownloadQuality:(BOOL)a9
{
  v16 = a6;
  v22.receiver = self;
  v22.super_class = PXStoryVideoAssetResourcePreloadingOperation;
  v17 = [(PXStoryDisplayAssetResourcePreloadingOperation *)&v22 initWithDisplayAssetResource:a3 mediaProvider:a4];
  v18 = v17;
  if (v17)
  {
    v20 = *&a5->var0.var3;
    v19 = *&a5->var1.var1;
    *(v17 + 328) = *&a5->var0.var0;
    *(v17 + 344) = v20;
    *(v17 + 360) = v19;
    objc_storeStrong(v17 + 39, a6);
    v18->_isExporting = a7;
    v18->_isInline = a8;
    v18->_limitVideoDownloadQuality = a9;
  }

  return v18;
}

@end