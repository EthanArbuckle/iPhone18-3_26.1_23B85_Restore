@interface PXStoryDisplayAssetResourcePreloadingOperation
- (PXStoryDisplayAssetResourcePreloadingOperation)init;
- (PXStoryDisplayAssetResourcePreloadingOperation)initWithDisplayAssetResource:(id)resource mediaProvider:(id)provider;
- (void)px_finishIfPossible;
- (void)px_start;
@end

@implementation PXStoryDisplayAssetResourcePreloadingOperation

- (void)px_finishIfPossible
{
  v3 = +[PXStorySettings sharedInstance];
  v4 = 0.0;
  if ([v3 simulateSlowResourcesBuffering] && (-[PXStoryDisplayAssetResourcePreloadingOperation isCancelled](self, "isCancelled") & 1) == 0)
  {
    [v3 simulatedSlowResourcesBufferingDelay];
    v4 = v5;
  }

  if ([v3 exaggerateResourceDownloadTimes])
  {
    [(PXStoryDisplayAssetResourcePreloadingOperation *)self startTime];
    if (v6 > 0.0 && ([(PXStoryDisplayAssetResourcePreloadingOperation *)self isCancelled]& 1) == 0)
    {
      mach_absolute_time();
      [(PXStoryDisplayAssetResourcePreloadingOperation *)self startTime];
      PXTimebaseConversionFactor();
    }
  }

  if (v4 <= 0.0)
  {
    v8.receiver = self;
    v8.super_class = PXStoryDisplayAssetResourcePreloadingOperation;
    [(PXAsyncOperation *)&v8 px_finishIfPossible];
  }

  else
  {
    v7 = dispatch_time(0, (v4 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__PXStoryDisplayAssetResourcePreloadingOperation_px_finishIfPossible__block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  }
}

id __69__PXStoryDisplayAssetResourcePreloadingOperation_px_finishIfPossible__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = PXStoryDisplayAssetResourcePreloadingOperation;
  return objc_msgSendSuper2(&v2, sel_px_finishIfPossible);
}

- (void)px_start
{
  v3 = mach_absolute_time();

  [(PXStoryDisplayAssetResourcePreloadingOperation *)self setStartTime:v3];
}

- (PXStoryDisplayAssetResourcePreloadingOperation)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDisplayAssetResourcePreloadingOperation.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXStoryDisplayAssetResourcePreloadingOperation init]"}];

  abort();
}

- (PXStoryDisplayAssetResourcePreloadingOperation)initWithDisplayAssetResource:(id)resource mediaProvider:(id)provider
{
  resourceCopy = resource;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = PXStoryDisplayAssetResourcePreloadingOperation;
  v10 = [(PXAsyncOperation *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_resource, resource);
    objc_storeStrong(&v11->_mediaProvider, provider);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v11 file:@"PXStoryDisplayAssetResourcePreloadingOperation.m" lineNumber:33 description:{@"Only resources that have px_storyResourceDisplayAsset property (like PXStoryDisplayAssetResource, PXStoryFrameFillingEffectResource) are supported"}];

      abort();
    }

    px_storyResourceDisplayAsset = [resourceCopy px_storyResourceDisplayAsset];
    displayAsset = v11->_displayAsset;
    v11->_displayAsset = px_storyResourceDisplayAsset;
  }

  return v11;
}

@end