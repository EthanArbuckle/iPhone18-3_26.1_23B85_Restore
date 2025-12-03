@interface PXImageRequester
+ (id)defaultOptions;
- (CGRect)contentsRect;
- (CGRect)cropRect;
- (CGRect)desiredContentsRect;
- (CGSize)_targetSize;
- (CGSize)contentSize;
- (CGSize)maximumRequestSize;
- (CGSize)viewportSize;
- (NSString)description;
- (PXImageRequester)init;
- (PXImageRequester)initWithMediaProvider:(id)provider asset:(id)asset;
- (void)_cancelRequests;
- (void)_handleProgressForImageRequest:(id)request progress:(double)progress;
- (void)_handleResultOfImageRequest:(id)request image:(id)image info:(id)info;
- (void)_setHasFullQuality:(BOOL)quality;
- (void)_setImage:(id)image;
- (void)_setIsInCloud:(BOOL)cloud;
- (void)_setLoadingProgress:(double)progress;
- (void)_setOpportunisticImage:(id)image;
- (void)_setTargetSize:(CGSize)size;
- (void)_updateIfNeeded;
- (void)_updateImageRequestIfNeeded;
- (void)_updateIsInCloudIfNeeded;
- (void)_updateTargetSizeIfNeeded;
- (void)dealloc;
- (void)didPerformChanges;
- (void)handlePreloadedImage:(id)image;
- (void)handlePreloadedImageRequester:(id)requester;
- (void)performChanges:(id)changes;
- (void)setAsset:(id)asset;
- (void)setContentSize:(CGSize)size;
- (void)setContentsRect:(CGRect)rect;
- (void)setCropRect:(CGRect)rect;
- (void)setDesiredContentsRect:(CGRect)rect;
- (void)setDownloadIntent:(int64_t)intent;
- (void)setLoadingError:(id)error;
- (void)setMaximumRequestSize:(CGSize)size;
- (void)setMediaProvider:(id)provider;
- (void)setPreferHDR:(BOOL)r;
- (void)setScale:(double)scale;
- (void)setTargetHDRHeadroom:(double)headroom;
- (void)setViewportSize:(CGSize)size;
@end

@implementation PXImageRequester

- (CGSize)_targetSize
{
  width = self->__targetSize.width;
  height = self->__targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)viewportSize
{
  width = self->_viewportSize.width;
  height = self->_viewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)desiredContentsRect
{
  x = self->_desiredContentsRect.origin.x;
  y = self->_desiredContentsRect.origin.y;
  width = self->_desiredContentsRect.size.width;
  height = self->_desiredContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)maximumRequestSize
{
  width = self->_maximumRequestSize.width;
  height = self->_maximumRequestSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_cancelRequests
{
  _currentRequest = [(PXImageRequester *)self _currentRequest];
  [_currentRequest cancel];
}

- (void)_setIsInCloud:(BOOL)cloud
{
  if (self->_isInCloud != cloud)
  {
    self->_isInCloud = cloud;
    [(PXImageRequester *)self signalChange:16];
  }
}

- (void)_setHasFullQuality:(BOOL)quality
{
  if (self->_hasFullQuality != quality)
  {
    self->_hasFullQuality = quality;
    if (quality)
    {
      v5 = +[PXPhotosDetailsSettings sharedInstance];
      showFacesAreaRect = [v5 showFacesAreaRect];

      if (showFacesAreaRect)
      {
        asset = [(PXImageRequester *)self asset];
        image = [(PXImageRequester *)self image];
        v9 = PXDebugImageWithFaceRect(asset, image);

        [(PXImageRequester *)self _setImage:v9];
      }
    }

    [(PXImageRequester *)self signalChange:8];
  }
}

- (void)_setOpportunisticImage:(id)image
{
  imageCopy = image;
  if (self->_opportunisticImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_opportunisticImage, image);
    [(PXImageRequester *)self signalChange:2048];
    imageCopy = v6;
  }
}

- (void)_setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(PXImageRequester *)self signalChange:4];
    [(PXImageRequester *)self _invalidateIsInCloud];
    imageCopy = v6;
  }
}

- (void)_setTargetSize:(CGSize)size
{
  if (self->__targetSize.width != size.width || self->__targetSize.height != size.height)
  {
    self->__targetSize = size;
    [(PXImageRequester *)self _invalidateImageRequest];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = PXImageRequester;
  v4 = [(PXImageRequester *)&v17 description];
  asset = [(PXImageRequester *)self asset];
  [(PXImageRequester *)self contentSize];
  v6 = NSStringFromCGSize(v19);
  [(PXImageRequester *)self scale];
  v8 = v7;
  [(PXImageRequester *)self maximumRequestSize];
  v9 = NSStringFromCGSize(v20);
  image = [(PXImageRequester *)self image];
  hasFullQuality = [(PXImageRequester *)self hasFullQuality];
  v12 = @"NO";
  if (hasFullQuality)
  {
    v12 = @"YES";
  }

  v13 = v12;
  _currentRequest = [(PXImageRequester *)self _currentRequest];
  v15 = [v3 stringWithFormat:@"<%@ asset:%p contentSize:%@ scale:%f maxSize:%@ image:%@ hasFullQuality:%@ currentRequest:%@>", v4, asset, v6, v8, v9, image, v13, _currentRequest];

  return v15;
}

- (void)handlePreloadedImageRequester:(id)requester
{
  image = [requester image];
  if (image)
  {
    v5 = image;
    [(PXImageRequester *)self handlePreloadedImage:image];
    image = v5;
  }
}

- (void)handlePreloadedImage:(id)image
{
  imageCopy = image;
  image = [(PXImageRequester *)self image];
  v5 = [imageCopy px_isLargerThan:image];

  if (v5)
  {
    [(PXImageRequester *)self _setImage:imageCopy];
    asset = [(PXImageRequester *)self asset];
    [(PXImageRequester *)self _setCurrentImageSourceAsset:asset];
  }
}

- (void)setLoadingError:(id)error
{
  errorCopy = error;
  v6 = errorCopy;
  if (self->_loadingError != errorCopy)
  {
    v8 = errorCopy;
    v7 = [(NSError *)errorCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_loadingError, error);
      [(PXImageRequester *)self signalChange:0x2000];
      v6 = v8;
    }
  }
}

- (void)_setLoadingProgress:(double)progress
{
  if (self->_loadingProgress != progress)
  {
    self->_loadingProgress = progress;
    [(PXImageRequester *)self signalChange:4096];
  }
}

- (void)setDownloadIntent:(int64_t)intent
{
  if (self->_downloadIntent != intent)
  {
    self->_downloadIntent = intent;
    [(PXImageRequester *)self _invalidateImageRequest];

    [(PXImageRequester *)self signalChange:0x4000];
  }
}

- (void)setViewportSize:(CGSize)size
{
  if (self->_viewportSize.width != size.width || self->_viewportSize.height != size.height)
  {
    self->_viewportSize = size;
    [(PXImageRequester *)self signalChange:1024];
  }
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(self->_contentsRect, rect))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;

    [(PXImageRequester *)self signalChange:128];
  }
}

- (void)setDesiredContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_desiredContentsRect = &self->_desiredContentsRect;
  if (!CGRectEqualToRect(self->_desiredContentsRect, rect))
  {
    p_desiredContentsRect->origin.x = x;
    p_desiredContentsRect->origin.y = y;
    p_desiredContentsRect->size.width = width;
    p_desiredContentsRect->size.height = height;

    [(PXImageRequester *)self setContentsRect:x, y, width, height];
  }
}

- (void)setMaximumRequestSize:(CGSize)size
{
  if (self->_maximumRequestSize.width != size.width || self->_maximumRequestSize.height != size.height)
  {
    self->_maximumRequestSize = size;
    [(PXImageRequester *)self _invalidateTargetSize];

    [(PXImageRequester *)self signalChange:512];
  }
}

- (void)setScale:(double)scale
{
  if (self->_scale != scale)
  {
    self->_scale = scale;
    [(PXImageRequester *)self _invalidateTargetSize];

    [(PXImageRequester *)self signalChange:64];
  }
}

- (void)setCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_cropRect = &self->_cropRect;
  if (!CGRectEqualToRect(self->_cropRect, rect))
  {
    p_cropRect->origin.x = x;
    p_cropRect->origin.y = y;
    p_cropRect->size.width = width;
    p_cropRect->size.height = height;
    [(PXImageRequester *)self _invalidateImageRequest];

    [(PXImageRequester *)self signalChange:256];
  }
}

- (void)setTargetHDRHeadroom:(double)headroom
{
  if (self->_targetHDRHeadroom != headroom)
  {
    self->_targetHDRHeadroom = headroom;
    [(PXImageRequester *)self _invalidateImageRequest];
  }
}

- (void)setPreferHDR:(BOOL)r
{
  if (self->_preferHDR != r)
  {
    self->_preferHDR = r;
    [(PXImageRequester *)self _invalidateImageRequest];
  }
}

- (void)setContentSize:(CGSize)size
{
  if (self->_contentSize.width != size.width || self->_contentSize.height != size.height)
  {
    self->_contentSize = size;
    [(PXImageRequester *)self _invalidateTargetSize];

    [(PXImageRequester *)self signalChange:32];
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  asset = self->_asset;
  if (asset != assetCopy)
  {
    v12 = assetCopy;
    assetCopy2 = asset;
    objc_storeStrong(&self->_asset, asset);
    [(PXImageRequester *)self signalChange:1];
    v8 = v12;
    v9 = assetCopy2;
    v10 = v9;
    if (v8 && v9)
    {
      v11 = [(PXDisplayAsset *)v8 isContentEqualTo:v9];
      if (!v11)
      {
        v11 = [(PXDisplayAsset *)v10 isContentEqualTo:v8];
      }

      if (v11 == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    [(PXImageRequester *)self _cancelRequests];
    [(PXImageRequester *)self _invalidateImageRequest];
LABEL_10:
    [(PXImageRequester *)self _invalidateIsInCloud];

    assetCopy = v12;
  }
}

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  if (self->_mediaProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_mediaProvider, provider);
    [(PXImageRequester *)self _invalidateImageRequest];
    providerCopy = v6;
  }
}

- (void)_updateIsInCloudIfNeeded
{
  if (self->_needsUpdateFlags.isInCloud)
  {
    self->_needsUpdateFlags.isInCloud = 0;
    image = [(PXImageRequester *)self image];

    v5 = 0;
    if (!image)
    {
      _currentRequest = [(PXImageRequester *)self _currentRequest];
      resultIsInCloud = [_currentRequest resultIsInCloud];

      if (resultIsInCloud)
      {
        v5 = 1;
      }

      else
      {
        asset = [(PXImageRequester *)self asset];
        v5 = PXDisplayAssetIsInCloud(asset);
      }
    }

    [(PXImageRequester *)self _setIsInCloud:v5];
  }
}

- (void)_handleResultOfImageRequest:(id)request image:(id)image info:(id)info
{
  requestCopy = request;
  imageCopy = image;
  asset = [(PXImageRequester *)self asset];
  asset2 = [requestCopy asset];
  v11 = asset;
  v12 = asset2;
  v13 = v12;
  if (v11 == v12)
  {

LABEL_9:
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__PXImageRequester__handleResultOfImageRequest_image_info___block_invoke;
    v15[3] = &unk_1E774A448;
    v16 = requestCopy;
    selfCopy = self;
    v18 = imageCopy;
    [(PXImageRequester *)self performChanges:v15];

    goto LABEL_11;
  }

  if (!v11 || !v12)
  {

    goto LABEL_11;
  }

  v14 = [v11 isContentEqualTo:v12];
  if (!v14)
  {
    v14 = [v13 isContentEqualTo:v11];
  }

  if (v14 == 2)
  {
    goto LABEL_9;
  }

LABEL_11:
}

void __59__PXImageRequester__handleResultOfImageRequest_image_info___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) gotFullQualityImage])
  {
    goto LABEL_13;
  }

  v2 = [*(a1 + 40) opportunisticImage];
  if (!v2)
  {
LABEL_12:
    [*(a1 + 40) _setOpportunisticImage:*(a1 + 48)];
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [*(a1 + 32) asset];
  v5 = [*(a1 + 40) _currentImageSourceAsset];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_13;
  }

  if (!v6 || !v7)
  {

    goto LABEL_12;
  }

  v9 = [v6 isContentEqualTo:v7];
  if (!v9)
  {
    v9 = [v8 isContentEqualTo:v6];
  }

  if (v9 != 2)
  {
    goto LABEL_12;
  }

LABEL_13:
  v10 = *(a1 + 48);
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = [*(a1 + 40) image];
  if ([v10 px_isLargerThan:v11])
  {
    goto LABEL_28;
  }

  v12 = [*(a1 + 32) asset];
  v13 = [*(a1 + 40) _currentImageSourceAsset];
  v14 = v12;
  v15 = v13;
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    if (!v14 || !v15)
    {

LABEL_27:
LABEL_28:

      goto LABEL_29;
    }

    v17 = [v14 isContentEqualTo:v15];
    if (!v17)
    {
      v17 = [v16 isContentEqualTo:v14];
    }

    if (v17 != 2)
    {
      goto LABEL_27;
    }
  }

  if (([*(a1 + 32) gotFullQualityImage] & 1) == 0)
  {

    goto LABEL_30;
  }

  v18 = [*(a1 + 40) hasFullQuality];

  if ((v18 & 1) == 0)
  {
LABEL_29:
    [*(a1 + 40) _setImage:*(a1 + 48)];
    v19 = *(a1 + 40);
    v11 = [*(a1 + 32) asset];
    [v19 _setCurrentImageSourceAsset:v11];
LABEL_30:
  }

LABEL_31:
  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) _currentRequest];

  if (v20 == v21)
  {
    [*(a1 + 40) _setHasFullQuality:{objc_msgSend(*(a1 + 32), "gotFullQualityImage")}];
    v22 = [*(a1 + 32) error];
    [*(a1 + 40) setLoadingError:v22];

    v23 = *(a1 + 40);

    [v23 _invalidateIsInCloud];
  }
}

- (void)_handleProgressForImageRequest:(id)request progress:(double)progress
{
  requestCopy = request;
  _currentRequest = [(PXImageRequester *)self _currentRequest];

  if (_currentRequest == requestCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__PXImageRequester__handleProgressForImageRequest_progress___block_invoke;
    v8[3] = &unk_1E7745E18;
    v8[4] = self;
    *&v8[5] = progress;
    [(PXImageRequester *)self performChanges:v8];
  }
}

- (void)_updateImageRequestIfNeeded
{
  if (self->_needsUpdateFlags.imageRequest)
  {
    self->_needsUpdateFlags.imageRequest = 0;
    _currentRequest = [(PXImageRequester *)self _currentRequest];
    [(PXImageRequester *)self _targetSize];
    v5 = v4;
    v7 = v6;
    asset = [(PXImageRequester *)self asset];
    mediaProvider = [(PXImageRequester *)self mediaProvider];
    image = [(PXImageRequester *)self image];
    px_pixelSize = [image px_pixelSize];
    v36 = MEMORY[0x1A590D220](px_pixelSize, v5, v7, v12, v13);

    if (_currentRequest && (v14 = [_currentRequest targetSize], v17 = MEMORY[0x1A590D220](v14, v5, v7, v15, v16), (objc_msgSend(_currentRequest, "isCanceled") & 1) == 0))
    {
      error = [_currentRequest error];

      if (error)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }
    }

    else
    {
      v18 = 1;
    }

    v35 = v18;
    asset2 = [_currentRequest asset];
    if (asset2)
    {
      v21 = asset;
      v22 = asset;
      v23 = asset2;
      if (v22 == v23)
      {
        v25 = 1;
      }

      else if (v22)
      {
        v24 = [v22 isContentEqualTo:v23];
        if (!v24)
        {
          v24 = [v23 isContentEqualTo:v22];
        }

        v25 = v24 == 2;
      }

      else
      {
        v25 = 0;
      }

      if (_currentRequest)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = asset;
      v25 = 0;
      if (_currentRequest)
      {
LABEL_19:
        options = [_currentRequest options];
        [options normalizedCropRect];
        v37.origin.x = v28;
        v37.origin.y = v29;
        v37.size.width = v30;
        v37.size.height = v31;
        v26 = CGRectEqualToRect(self->_cropRect, v37);

LABEL_20:
        preferHDR = [(PXImageRequester *)self preferHDR];
        options2 = [_currentRequest options];
        preferHDR2 = [options2 preferHDR];

        if (preferHDR != preferHDR2)
        {
LABEL_21:
          [_currentRequest cancel];
          if (v5 != *MEMORY[0x1E695F060] || v7 != *(MEMORY[0x1E695F060] + 8))
          {
            PXSizeIsNull();
          }

          goto LABEL_28;
        }

        if (v36)
        {
          if (v35 & 1 | (!v25 || !v26))
          {
            goto LABEL_21;
          }
        }

        else if (!v25 || !v26)
        {
          goto LABEL_21;
        }

LABEL_28:

        return;
      }
    }

    v26 = 0;
    goto LABEL_20;
  }
}

void __47__PXImageRequester__updateImageRequestIfNeeded__block_invoke(uint64_t a1, void *a2, double a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  objc_copyWeak(&v10, (a1 + 32));
  objc_copyWeak(v11, (a1 + 40));
  v11[1] = *&a3;
  px_dispatch_on_main_queue();
}

void __47__PXImageRequester__updateImageRequestIfNeeded__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleResultOfImageRequest:v9 image:v8 info:v7];
}

void __47__PXImageRequester__updateImageRequestIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleProgressForImageRequest:v2 progress:*(a1 + 48)];
}

- (void)_updateTargetSizeIfNeeded
{
  if (self->_needsUpdateFlags.targetSize)
  {
    v9 = v2;
    self->_needsUpdateFlags.targetSize = 0;
    [(PXImageRequester *)self contentSize:v7];
    [(PXImageRequester *)self scale];
    PXSizeScale();
  }
}

- (void)_updateIfNeeded
{
  if ([(PXImageRequester *)self _needsUpdate])
  {
    [(PXImageRequester *)self _updateTargetSizeIfNeeded];
    [(PXImageRequester *)self _updateImageRequestIfNeeded];

    [(PXImageRequester *)self _updateIsInCloudIfNeeded];
  }
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXImageRequester;
  [(PXImageRequester *)&v3 didPerformChanges];
  [(PXImageRequester *)self _updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXImageRequester;
  [(PXImageRequester *)&v3 performChanges:changes];
}

- (void)dealloc
{
  [(PXImageRequester *)self _cancelRequests];
  v3.receiver = self;
  v3.super_class = PXImageRequester;
  [(PXImageRequester *)&v3 dealloc];
}

- (PXImageRequester)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXImageRequester.m" lineNumber:112 description:{@"init is unavailable, use designated initializer"}];

  abort();
}

- (PXImageRequester)initWithMediaProvider:(id)provider asset:(id)asset
{
  providerCopy = provider;
  assetCopy = asset;
  v16.receiver = self;
  v16.super_class = PXImageRequester;
  v9 = [(PXImageRequester *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaProvider, provider);
    objc_storeStrong(&v10->_asset, asset);
    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [px_mainScreen scale];
    v10->_scale = v12;

    v13 = *(off_1E77221F8 + 1);
    v10->_contentsRect.origin = *off_1E77221F8;
    v10->_contentsRect.size = v13;
    v14 = *(MEMORY[0x1E695F058] + 16);
    v10->_cropRect.origin = *MEMORY[0x1E695F058];
    v10->_cropRect.size = v14;
    v10->_viewportSize = *MEMORY[0x1E695F060];
  }

  return v10;
}

+ (id)defaultOptions
{
  if (defaultOptions_onceToken != -1)
  {
    dispatch_once(&defaultOptions_onceToken, &__block_literal_global_214104);
  }

  v3 = defaultOptions_options;

  return v3;
}

uint64_t __34__PXImageRequester_defaultOptions__block_invoke()
{
  v0 = objc_alloc_init(off_1E7721750);
  v1 = defaultOptions_options;
  defaultOptions_options = v0;

  [defaultOptions_options setNetworkAccessAllowed:1];
  v2 = defaultOptions_options;

  return [v2 setAllowSecondaryDegradedImage:1];
}

@end