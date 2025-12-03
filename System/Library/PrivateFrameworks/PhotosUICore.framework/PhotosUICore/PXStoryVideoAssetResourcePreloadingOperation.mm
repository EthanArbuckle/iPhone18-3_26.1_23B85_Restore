@interface PXStoryVideoAssetResourcePreloadingOperation
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)downloadTimeRange;
- (PXStoryVideoAssetResourcePreloadingOperation)initWithDisplayAssetResource:(id)resource mediaProvider:(id)provider;
- (PXStoryVideoAssetResourcePreloadingOperation)initWithVideoAssetResource:(id)resource mediaProvider:(id)provider downloadTimeRange:(id *)range videoSessionManager:(id)manager isExporting:(BOOL)exporting isInline:(BOOL)inline limitVideoDownloadQuality:(BOOL)quality;
- (id)diagnosticDescription;
- (void)cancel;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (VideoContentProviderObservationContext == context)
  {
    v14 = observableCopy;
    if ((changeCopy & 2) != 0)
    {
      progressHandler = [(PXStoryDisplayAssetResourcePreloadingOperation *)self progressHandler];
      if (progressHandler)
      {
        videoContentProvider = [(PXStoryVideoAssetResourcePreloadingOperation *)self videoContentProvider];
        [videoContentProvider loadingProgress];
        progressHandler[2](progressHandler, 0);
      }

      observableCopy = v14;
    }

    if (changeCopy)
    {
      videoContentProvider2 = [(PXStoryVideoAssetResourcePreloadingOperation *)self videoContentProvider];
      loadingResult = [videoContentProvider2 loadingResult];

      if (loadingResult)
      {
        error = [loadingResult error];
        [(PXStoryDisplayAssetResourcePreloadingOperation *)self setError:error];

        [(PXStoryDisplayAssetResourcePreloadingOperation *)self px_finishIfPossible];
      }

      observableCopy = v14;
    }
  }
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = PXStoryVideoAssetResourcePreloadingOperation;
  [(PXAsyncOperation *)&v5 cancel];
  videoContentProvider = [(PXStoryVideoAssetResourcePreloadingOperation *)self videoContentProvider];
  [videoContentProvider unregisterChangeObserver:self context:VideoContentProviderObservationContext];

  videoContentProvider2 = [(PXStoryVideoAssetResourcePreloadingOperation *)self videoContentProvider];
  [videoContentProvider2 cancelLoading];
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
    exportVideoQuality = [v4 exportVideoQuality];

    [(PXStoryVideoAssetResourcePreloadingOperation *)self downloadTimeRange];
    [(PXVideoSessionManagerDisplayAssetOptions *)v3 addContentDeliveryStrategyWithDeliveryQuality:exportVideoQuality segmentTimeRange:&v22 streamingAllowed:0];
    v6 = *(MEMORY[0x1E6960C98] + 16);
    v22 = *MEMORY[0x1E6960C98];
    v23 = v6;
    v24 = *(MEMORY[0x1E6960C98] + 32);
    [(PXVideoSessionManagerDisplayAssetOptions *)v3 addContentDeliveryStrategyWithDeliveryQuality:exportVideoQuality segmentTimeRange:&v22 streamingAllowed:0];
  }

  else
  {
    [(PXStoryVideoAssetResourcePreloadingOperation *)self downloadTimeRange];
    [(PXVideoSessionManagerDisplayAssetOptions *)v3 addContentDeliveryStrategyWithDeliveryQuality:2 segmentTimeRange:&v22 streamingAllowed:0 networkAccessAllowed:0];
    if ([(PXStoryVideoAssetResourcePreloadingOperation *)self limitVideoDownloadQuality])
    {
      videoQuality = 3;
    }

    else
    {
      v8 = +[PXStorySettings sharedInstance];
      videoQuality = [v8 videoQuality];
    }

    displayAsset = [(PXStoryDisplayAssetResourcePreloadingOperation *)self displayAsset];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = displayAsset;

      if (v10 && [v10 px_isSharedAlbumAsset])
      {
        [(PXStoryVideoAssetResourcePreloadingOperation *)self downloadTimeRange];
        [(PXVideoSessionManagerDisplayAssetOptions *)v3 addContentDeliveryStrategyWithDeliveryQuality:videoQuality segmentTimeRange:&v22 streamingAllowed:1];
      }
    }

    else
    {

      v10 = 0;
    }

    [(PXStoryVideoAssetResourcePreloadingOperation *)self downloadTimeRange];
    [(PXVideoSessionManagerDisplayAssetOptions *)v3 addContentDeliveryStrategyWithDeliveryQuality:videoQuality segmentTimeRange:&v22 streamingAllowed:0];
    v11 = *(MEMORY[0x1E6960C98] + 16);
    v22 = *MEMORY[0x1E6960C98];
    v23 = v11;
    v24 = *(MEMORY[0x1E6960C98] + 32);
    [(PXVideoSessionManagerDisplayAssetOptions *)v3 addContentDeliveryStrategyWithDeliveryQuality:3 segmentTimeRange:&v22 streamingAllowed:0];
  }

  v12 = +[PXStorySettings sharedInstance];
  videoInlineStabilization = [v12 videoInlineStabilization];

  if (videoInlineStabilization && (-[PXStoryDisplayAssetResourcePreloadingOperation displayAsset](self, "displayAsset"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 playbackStyle], v14, v15 == 3))
  {
    [(PXVideoSessionManagerDisplayAssetOptions *)v3 setShouldStabilizeLivePhotosIfPossible:1];
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  videoSessionManager = [(PXStoryVideoAssetResourcePreloadingOperation *)self videoSessionManager];
  displayAsset2 = [(PXStoryDisplayAssetResourcePreloadingOperation *)self displayAsset];
  mediaProvider = [(PXStoryDisplayAssetResourcePreloadingOperation *)self mediaProvider];
  v20 = [videoSessionManager contentProviderForAsset:displayAsset2 withOptions:v3 mediaProvider:mediaProvider requestURLOnly:v16];

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
  displayAsset = [(PXStoryDisplayAssetResourcePreloadingOperation *)self displayAsset];
  uuid = [displayAsset uuid];
  [(PXStoryVideoAssetResourcePreloadingOperation *)self downloadTimeRange];
  v6 = PXCMTimeRangeDescription(v11);
  videoContentProvider = [(PXStoryVideoAssetResourcePreloadingOperation *)self videoContentProvider];
  [videoContentProvider loadingProgress];
  v9 = [v3 stringWithFormat:@"Video %@, time range %@ – %.0f%%", uuid, v6, v8 * 100.0];

  return v9;
}

- (PXStoryVideoAssetResourcePreloadingOperation)initWithDisplayAssetResource:(id)resource mediaProvider:(id)provider
{
  resourceCopy = resource;
  providerCopy = provider;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryVideoAssetResourcePreloadingOperation.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXStoryVideoAssetResourcePreloadingOperation initWithDisplayAssetResource:mediaProvider:]"}];

  abort();
}

- (PXStoryVideoAssetResourcePreloadingOperation)initWithVideoAssetResource:(id)resource mediaProvider:(id)provider downloadTimeRange:(id *)range videoSessionManager:(id)manager isExporting:(BOOL)exporting isInline:(BOOL)inline limitVideoDownloadQuality:(BOOL)quality
{
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = PXStoryVideoAssetResourcePreloadingOperation;
  v17 = [(PXStoryDisplayAssetResourcePreloadingOperation *)&v22 initWithDisplayAssetResource:resource mediaProvider:provider];
  v18 = v17;
  if (v17)
  {
    v20 = *&range->var0.var3;
    v19 = *&range->var1.var1;
    *(v17 + 328) = *&range->var0.var0;
    *(v17 + 344) = v20;
    *(v17 + 360) = v19;
    objc_storeStrong(v17 + 39, manager);
    v18->_isExporting = exporting;
    v18->_isInline = inline;
    v18->_limitVideoDownloadQuality = quality;
  }

  return v18;
}

@end