@interface PXStoryImageAssetResourcePreloadingOperation
+ (id)_resultHandlingQueue;
- (CGSize)targetSize;
- (PXStoryImageAssetResourcePreloadingOperation)initWithDisplayAssetResource:(id)resource mediaProvider:(id)provider;
- (PXStoryImageAssetResourcePreloadingOperation)initWithDisplayAssetResource:(id)resource targetSize:(CGSize)size mediaProvider:(id)provider isInline:(BOOL)inline;
- (id)diagnosticDescription;
- (void)_handleImageLoadingResultWithImage:(CGImage *)image info:(id)info;
- (void)cancel;
- (void)px_start;
@end

@implementation PXStoryImageAssetResourcePreloadingOperation

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = PXStoryImageAssetResourcePreloadingOperation;
  [(PXAsyncOperation *)&v4 cancel];
  mediaProvider = [(PXStoryDisplayAssetResourcePreloadingOperation *)self mediaProvider];
  [mediaProvider cancelImageRequest:{-[PXStoryImageAssetResourcePreloadingOperation imageRequestID](self, "imageRequestID")}];
}

- (void)_handleImageLoadingResultWithImage:(CGImage *)image info:(id)info
{
  v6 = *MEMORY[0x1E6978E20];
  infoCopy = info;
  v8 = [infoCopy objectForKeyedSubscript:v6];
  v9 = image | v8;

  v10 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
  bOOLValue = [v10 BOOLValue];

  v12 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
  bOOLValue2 = [v12 BOOLValue];

  v17 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];

  v14 = v17;
  if (v9)
  {
    v15 = (v17 != 0) | ~bOOLValue;
  }

  else
  {
    v15 = v17 != 0;
  }

  if ((v15 | bOOLValue2))
  {
    isExecuting = [(PXAsyncOperation *)self isExecuting];
    v14 = v17;
    if (isExecuting)
    {
      if ((bOOLValue2 & 1) == 0)
      {
        [(PXStoryDisplayAssetResourcePreloadingOperation *)self setError:v17];
      }

      [(PXStoryDisplayAssetResourcePreloadingOperation *)self px_finishIfPossible];
      v14 = v17;
    }
  }
}

- (void)px_start
{
  v23.receiver = self;
  v23.super_class = PXStoryImageAssetResourcePreloadingOperation;
  [(PXStoryDisplayAssetResourcePreloadingOperation *)&v23 px_start];
  v3 = objc_alloc_init(off_1E7721750);
  [v3 setNetworkAccessAllowed:1];
  [v3 setAllowSecondaryDegradedImage:0];
  [v3 setLoadingMode:0x10000];
  [v3 setDeliveryMode:1];
  if ([(PXStoryImageAssetResourcePreloadingOperation *)self isInline])
  {
    v4 = 12;
  }

  else
  {
    v4 = 5;
  }

  [v3 setDownloadIntent:v4];
  _resultHandlingQueue = [objc_opt_class() _resultHandlingQueue];
  [v3 setResultHandlerQueue:_resultHandlingQueue];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PXStoryImageAssetResourcePreloadingOperation_px_start__block_invoke;
  aBlock[3] = &unk_1E774A490;
  objc_copyWeak(&v21, &location);
  v6 = _Block_copy(aBlock);
  progressHandler = [(PXStoryDisplayAssetResourcePreloadingOperation *)self progressHandler];
  if (progressHandler)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__PXStoryImageAssetResourcePreloadingOperation_px_start__block_invoke_2;
    v17[3] = &unk_1E774A4B8;
    objc_copyWeak(&v19, &location);
    v18 = progressHandler;
    v8 = _Block_copy(v17);

    objc_destroyWeak(&v19);
    v6 = v8;
  }

  [v3 setProgressHandler:v6];
  mediaProvider = [(PXStoryDisplayAssetResourcePreloadingOperation *)self mediaProvider];
  displayAsset = [(PXStoryDisplayAssetResourcePreloadingOperation *)self displayAsset];
  [(PXStoryImageAssetResourcePreloadingOperation *)self targetSize];
  v12 = v11;
  v14 = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__PXStoryImageAssetResourcePreloadingOperation_px_start__block_invoke_3;
  v15[3] = &unk_1E774A4E0;
  objc_copyWeak(&v16, &location);
  -[PXStoryImageAssetResourcePreloadingOperation setImageRequestID:](self, "setImageRequestID:", [mediaProvider requestCGImageForAsset:displayAsset targetSize:1 contentMode:v3 options:v15 resultHandler:{v12, v14}]);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __56__PXStoryImageAssetResourcePreloadingOperation_px_start__block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFractionComplete:a2];
}

void __56__PXStoryImageAssetResourcePreloadingOperation_px_start__block_invoke_2(uint64_t a1, void *a2, double a3)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setFractionComplete:a3];

  v6 = v8;
  if (a3 != 0.0 || v8 != 0)
  {
    (*(*(a1 + 32) + 16))(a3);
    v6 = v8;
  }
}

void __56__PXStoryImageAssetResourcePreloadingOperation_px_start__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleImageLoadingResultWithImage:a2 info:v6];
}

- (id)diagnosticDescription
{
  [(PXStoryDisplayAssetResourcePreloadingOperation *)self displayAsset];
  [objc_claimAutoreleasedReturnValue() uuid];
  objc_claimAutoreleasedReturnValue();
  [(PXStoryImageAssetResourcePreloadingOperation *)self targetSize];
  [(PXStoryImageAssetResourcePreloadingOperation *)self targetSize];
  [(PXStoryImageAssetResourcePreloadingOperation *)self targetSize];
  PXSizeGetArea();
}

- (PXStoryImageAssetResourcePreloadingOperation)initWithDisplayAssetResource:(id)resource mediaProvider:(id)provider
{
  resourceCopy = resource;
  providerCopy = provider;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryImageAssetResourcePreloadingOperation.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXStoryImageAssetResourcePreloadingOperation initWithDisplayAssetResource:mediaProvider:]"}];

  abort();
}

- (PXStoryImageAssetResourcePreloadingOperation)initWithDisplayAssetResource:(id)resource targetSize:(CGSize)size mediaProvider:(id)provider isInline:(BOOL)inline
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = PXStoryImageAssetResourcePreloadingOperation;
  result = [(PXStoryDisplayAssetResourcePreloadingOperation *)&v10 initWithDisplayAssetResource:resource mediaProvider:provider];
  if (result)
  {
    result->_targetSize.width = width;
    result->_targetSize.height = height;
    result->_isInline = inline;
  }

  return result;
}

+ (id)_resultHandlingQueue
{
  if (_resultHandlingQueue_onceToken != -1)
  {
    dispatch_once(&_resultHandlingQueue_onceToken, &__block_literal_global_245128);
  }

  v3 = _resultHandlingQueue_resultHandlingQueue;

  return v3;
}

void __68__PXStoryImageAssetResourcePreloadingOperation__resultHandlingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("PXStoryImageAssetResourcePreloadingOperation.resultHandlingQueue", v2);
  v1 = _resultHandlingQueue_resultHandlingQueue;
  _resultHandlingQueue_resultHandlingQueue = v0;
}

@end