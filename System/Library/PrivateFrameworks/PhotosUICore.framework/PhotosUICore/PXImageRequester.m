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
- (PXImageRequester)initWithMediaProvider:(id)a3 asset:(id)a4;
- (void)_cancelRequests;
- (void)_handleProgressForImageRequest:(id)a3 progress:(double)a4;
- (void)_handleResultOfImageRequest:(id)a3 image:(id)a4 info:(id)a5;
- (void)_setHasFullQuality:(BOOL)a3;
- (void)_setImage:(id)a3;
- (void)_setIsInCloud:(BOOL)a3;
- (void)_setLoadingProgress:(double)a3;
- (void)_setOpportunisticImage:(id)a3;
- (void)_setTargetSize:(CGSize)a3;
- (void)_updateIfNeeded;
- (void)_updateImageRequestIfNeeded;
- (void)_updateIsInCloudIfNeeded;
- (void)_updateTargetSizeIfNeeded;
- (void)dealloc;
- (void)didPerformChanges;
- (void)handlePreloadedImage:(id)a3;
- (void)handlePreloadedImageRequester:(id)a3;
- (void)performChanges:(id)a3;
- (void)setAsset:(id)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setContentsRect:(CGRect)a3;
- (void)setCropRect:(CGRect)a3;
- (void)setDesiredContentsRect:(CGRect)a3;
- (void)setDownloadIntent:(int64_t)a3;
- (void)setLoadingError:(id)a3;
- (void)setMaximumRequestSize:(CGSize)a3;
- (void)setMediaProvider:(id)a3;
- (void)setPreferHDR:(BOOL)a3;
- (void)setScale:(double)a3;
- (void)setTargetHDRHeadroom:(double)a3;
- (void)setViewportSize:(CGSize)a3;
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
  v2 = [(PXImageRequester *)self _currentRequest];
  [v2 cancel];
}

- (void)_setIsInCloud:(BOOL)a3
{
  if (self->_isInCloud != a3)
  {
    self->_isInCloud = a3;
    [(PXImageRequester *)self signalChange:16];
  }
}

- (void)_setHasFullQuality:(BOOL)a3
{
  if (self->_hasFullQuality != a3)
  {
    self->_hasFullQuality = a3;
    if (a3)
    {
      v5 = +[PXPhotosDetailsSettings sharedInstance];
      v6 = [v5 showFacesAreaRect];

      if (v6)
      {
        v7 = [(PXImageRequester *)self asset];
        v8 = [(PXImageRequester *)self image];
        v9 = PXDebugImageWithFaceRect(v7, v8);

        [(PXImageRequester *)self _setImage:v9];
      }
    }

    [(PXImageRequester *)self signalChange:8];
  }
}

- (void)_setOpportunisticImage:(id)a3
{
  v5 = a3;
  if (self->_opportunisticImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_opportunisticImage, a3);
    [(PXImageRequester *)self signalChange:2048];
    v5 = v6;
  }
}

- (void)_setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(PXImageRequester *)self signalChange:4];
    [(PXImageRequester *)self _invalidateIsInCloud];
    v5 = v6;
  }
}

- (void)_setTargetSize:(CGSize)a3
{
  if (self->__targetSize.width != a3.width || self->__targetSize.height != a3.height)
  {
    self->__targetSize = a3;
    [(PXImageRequester *)self _invalidateImageRequest];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = PXImageRequester;
  v4 = [(PXImageRequester *)&v17 description];
  v5 = [(PXImageRequester *)self asset];
  [(PXImageRequester *)self contentSize];
  v6 = NSStringFromCGSize(v19);
  [(PXImageRequester *)self scale];
  v8 = v7;
  [(PXImageRequester *)self maximumRequestSize];
  v9 = NSStringFromCGSize(v20);
  v10 = [(PXImageRequester *)self image];
  v11 = [(PXImageRequester *)self hasFullQuality];
  v12 = @"NO";
  if (v11)
  {
    v12 = @"YES";
  }

  v13 = v12;
  v14 = [(PXImageRequester *)self _currentRequest];
  v15 = [v3 stringWithFormat:@"<%@ asset:%p contentSize:%@ scale:%f maxSize:%@ image:%@ hasFullQuality:%@ currentRequest:%@>", v4, v5, v6, v8, v9, v10, v13, v14];

  return v15;
}

- (void)handlePreloadedImageRequester:(id)a3
{
  v4 = [a3 image];
  if (v4)
  {
    v5 = v4;
    [(PXImageRequester *)self handlePreloadedImage:v4];
    v4 = v5;
  }
}

- (void)handlePreloadedImage:(id)a3
{
  v7 = a3;
  v4 = [(PXImageRequester *)self image];
  v5 = [v7 px_isLargerThan:v4];

  if (v5)
  {
    [(PXImageRequester *)self _setImage:v7];
    v6 = [(PXImageRequester *)self asset];
    [(PXImageRequester *)self _setCurrentImageSourceAsset:v6];
  }
}

- (void)setLoadingError:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_loadingError != v5)
  {
    v8 = v5;
    v7 = [(NSError *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_loadingError, a3);
      [(PXImageRequester *)self signalChange:0x2000];
      v6 = v8;
    }
  }
}

- (void)_setLoadingProgress:(double)a3
{
  if (self->_loadingProgress != a3)
  {
    self->_loadingProgress = a3;
    [(PXImageRequester *)self signalChange:4096];
  }
}

- (void)setDownloadIntent:(int64_t)a3
{
  if (self->_downloadIntent != a3)
  {
    self->_downloadIntent = a3;
    [(PXImageRequester *)self _invalidateImageRequest];

    [(PXImageRequester *)self signalChange:0x4000];
  }
}

- (void)setViewportSize:(CGSize)a3
{
  if (self->_viewportSize.width != a3.width || self->_viewportSize.height != a3.height)
  {
    self->_viewportSize = a3;
    [(PXImageRequester *)self signalChange:1024];
  }
}

- (void)setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(self->_contentsRect, a3))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;

    [(PXImageRequester *)self signalChange:128];
  }
}

- (void)setDesiredContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_desiredContentsRect = &self->_desiredContentsRect;
  if (!CGRectEqualToRect(self->_desiredContentsRect, a3))
  {
    p_desiredContentsRect->origin.x = x;
    p_desiredContentsRect->origin.y = y;
    p_desiredContentsRect->size.width = width;
    p_desiredContentsRect->size.height = height;

    [(PXImageRequester *)self setContentsRect:x, y, width, height];
  }
}

- (void)setMaximumRequestSize:(CGSize)a3
{
  if (self->_maximumRequestSize.width != a3.width || self->_maximumRequestSize.height != a3.height)
  {
    self->_maximumRequestSize = a3;
    [(PXImageRequester *)self _invalidateTargetSize];

    [(PXImageRequester *)self signalChange:512];
  }
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(PXImageRequester *)self _invalidateTargetSize];

    [(PXImageRequester *)self signalChange:64];
  }
}

- (void)setCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_cropRect = &self->_cropRect;
  if (!CGRectEqualToRect(self->_cropRect, a3))
  {
    p_cropRect->origin.x = x;
    p_cropRect->origin.y = y;
    p_cropRect->size.width = width;
    p_cropRect->size.height = height;
    [(PXImageRequester *)self _invalidateImageRequest];

    [(PXImageRequester *)self signalChange:256];
  }
}

- (void)setTargetHDRHeadroom:(double)a3
{
  if (self->_targetHDRHeadroom != a3)
  {
    self->_targetHDRHeadroom = a3;
    [(PXImageRequester *)self _invalidateImageRequest];
  }
}

- (void)setPreferHDR:(BOOL)a3
{
  if (self->_preferHDR != a3)
  {
    self->_preferHDR = a3;
    [(PXImageRequester *)self _invalidateImageRequest];
  }
}

- (void)setContentSize:(CGSize)a3
{
  if (self->_contentSize.width != a3.width || self->_contentSize.height != a3.height)
  {
    self->_contentSize = a3;
    [(PXImageRequester *)self _invalidateTargetSize];

    [(PXImageRequester *)self signalChange:32];
  }
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  asset = self->_asset;
  if (asset != v5)
  {
    v12 = v5;
    v7 = asset;
    objc_storeStrong(&self->_asset, a3);
    [(PXImageRequester *)self signalChange:1];
    v8 = v12;
    v9 = v7;
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

    v5 = v12;
  }
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    [(PXImageRequester *)self _invalidateImageRequest];
    v5 = v6;
  }
}

- (void)_updateIsInCloudIfNeeded
{
  if (self->_needsUpdateFlags.isInCloud)
  {
    self->_needsUpdateFlags.isInCloud = 0;
    v4 = [(PXImageRequester *)self image];

    v5 = 0;
    if (!v4)
    {
      v6 = [(PXImageRequester *)self _currentRequest];
      v7 = [v6 resultIsInCloud];

      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v8 = [(PXImageRequester *)self asset];
        v5 = PXDisplayAssetIsInCloud(v8);
      }
    }

    [(PXImageRequester *)self _setIsInCloud:v5];
  }
}

- (void)_handleResultOfImageRequest:(id)a3 image:(id)a4 info:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(PXImageRequester *)self asset];
  v10 = [v7 asset];
  v11 = v9;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {

LABEL_9:
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__PXImageRequester__handleResultOfImageRequest_image_info___block_invoke;
    v15[3] = &unk_1E774A448;
    v16 = v7;
    v17 = self;
    v18 = v8;
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

- (void)_handleProgressForImageRequest:(id)a3 progress:(double)a4
{
  v6 = a3;
  v7 = [(PXImageRequester *)self _currentRequest];

  if (v7 == v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__PXImageRequester__handleProgressForImageRequest_progress___block_invoke;
    v8[3] = &unk_1E7745E18;
    v8[4] = self;
    *&v8[5] = a4;
    [(PXImageRequester *)self performChanges:v8];
  }
}

- (void)_updateImageRequestIfNeeded
{
  if (self->_needsUpdateFlags.imageRequest)
  {
    self->_needsUpdateFlags.imageRequest = 0;
    v3 = [(PXImageRequester *)self _currentRequest];
    [(PXImageRequester *)self _targetSize];
    v5 = v4;
    v7 = v6;
    v8 = [(PXImageRequester *)self asset];
    v9 = [(PXImageRequester *)self mediaProvider];
    v10 = [(PXImageRequester *)self image];
    v11 = [v10 px_pixelSize];
    v36 = MEMORY[0x1A590D220](v11, v5, v7, v12, v13);

    if (v3 && (v14 = [v3 targetSize], v17 = MEMORY[0x1A590D220](v14, v5, v7, v15, v16), (objc_msgSend(v3, "isCanceled") & 1) == 0))
    {
      v19 = [v3 error];

      if (v19)
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
    v20 = [v3 asset];
    if (v20)
    {
      v21 = v8;
      v22 = v8;
      v23 = v20;
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

      if (v3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = v8;
      v25 = 0;
      if (v3)
      {
LABEL_19:
        v27 = [v3 options];
        [v27 normalizedCropRect];
        v37.origin.x = v28;
        v37.origin.y = v29;
        v37.size.width = v30;
        v37.size.height = v31;
        v26 = CGRectEqualToRect(self->_cropRect, v37);

LABEL_20:
        v32 = [(PXImageRequester *)self preferHDR];
        v33 = [v3 options];
        v34 = [v33 preferHDR];

        if (v32 != v34)
        {
LABEL_21:
          [v3 cancel];
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

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXImageRequester;
  [(PXImageRequester *)&v3 performChanges:a3];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXImageRequester.m" lineNumber:112 description:{@"init is unavailable, use designated initializer"}];

  abort();
}

- (PXImageRequester)initWithMediaProvider:(id)a3 asset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PXImageRequester;
  v9 = [(PXImageRequester *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaProvider, a3);
    objc_storeStrong(&v10->_asset, a4);
    v11 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [v11 scale];
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