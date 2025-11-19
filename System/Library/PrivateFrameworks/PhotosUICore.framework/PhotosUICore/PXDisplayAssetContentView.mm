@interface PXDisplayAssetContentView
+ (PXReusableObjectPool)viewPool;
+ (id)checkOutViewForAsset:(id)a3;
+ (id)checkOutViewForAsset:(id)a3 withPlaybackStyle:(int64_t)a4;
- (CGRect)contentBounds;
- (CGRect)contentsRect;
- (CGSize)targetSize;
- (OS_os_log)log;
- (PXDisplayAssetContentView)initWithFrame:(CGRect)a3;
- (PXDisplayAssetContentViewDelegate)delegate;
- (PXRegionOfInterest)regionOfInterest;
- (void)_invalidateError;
- (void)_invalidateViewModelProperties;
- (void)_loadContentView;
- (void)_startHeadroomMonitoringIfPossible;
- (void)_stopHeadroomMonitoring;
- (void)_updateContentsRect;
- (void)_updateEffectiveImageDynamicRange;
- (void)_updateError;
- (void)_updateFailureView;
- (void)_updateIfNeeded;
- (void)_updateTargetSize;
- (void)_updateViewModelProperties;
- (void)becomeReusable;
- (void)didMoveToWindow;
- (void)effectivePreferredImageDynamicRangeDidChange;
- (void)handleError:(id)a3;
- (void)invalidateLoadingProgress;
- (void)isDisplayingFullQualityContentDidChange;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setAnimatedContentEnabled:(BOOL)a3;
- (void)setAsset:(id)a3;
- (void)setContentBounds:(CGRect)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setContentsRect:(CGRect)a3;
- (void)setEffectivePreferredImageDynamicRange:(int64_t)a3;
- (void)setError:(id)a3;
- (void)setImage:(id)a3;
- (void)setImageRequester:(id)a3;
- (void)setLatestError:(id)a3;
- (void)setMediaProvider:(id)a3;
- (void)setNeedsLayout;
- (void)setNeedsUpdateContent;
- (void)setPlaceholderImageFilters:(id)a3;
- (void)setPlaceholderTransitionDuration:(double)a3;
- (void)setPreferredImageDynamicRange:(int64_t)a3;
- (void)setProgressView:(id)a3;
- (void)setRequestID:(int64_t)a3;
- (void)setScreenDynamicRangeMonitor:(id)a3;
- (void)setTargetSize:(CGSize)a3;
- (void)setToneMapVideoToStandardDynamicRange:(BOOL)a3;
- (void)setViewModel:(id)a3;
- (void)updateContent;
- (void)viewModelDidChange:(unint64_t)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation PXDisplayAssetContentView

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

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXDisplayAssetContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_stopHeadroomMonitoring
{
  v3 = [(PXDisplayAssetContentView *)self screenDynamicRangeMonitor];

  if (v3)
  {
    v4 = [(PXDisplayAssetContentView *)self screenDynamicRangeMonitor];
    [v4 stopMonitoring];

    [(PXDisplayAssetContentView *)self setScreenDynamicRangeMonitor:0];
  }
}

- (void)_startHeadroomMonitoringIfPossible
{
  v3 = [(PXDisplayAssetContentView *)self window];

  if (v3)
  {
    v4 = [(PXDisplayAssetContentView *)self screenDynamicRangeMonitor];
    if (v4)
    {
      v5 = v4;
      v6 = [(PXDisplayAssetContentView *)self screenDynamicRangeMonitor];
      v7 = [v6 isMonitoring];

      if ((v7 & 1) == 0)
      {
        objc_initWeak(&location, self);
        v8 = [(PXDisplayAssetContentView *)self screenDynamicRangeMonitor];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __63__PXDisplayAssetContentView__startHeadroomMonitoringIfPossible__block_invoke;
        v9[3] = &unk_1E7734C38;
        objc_copyWeak(&v10, &location);
        [v8 startMonitoringWithScreenProvider:v9];

        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }
    }
  }
}

id __63__PXDisplayAssetContentView__startHeadroomMonitoringIfPossible__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained window];
  v3 = [v2 screen];

  return v3;
}

- (void)_updateEffectiveImageDynamicRange
{
  v3 = [(PXDisplayAssetContentView *)self screenDynamicRangeMonitor];
  v4 = [v3 screenSupportsHDR];

  if (v4)
  {
    v5 = [(PXDisplayAssetContentView *)self preferredImageDynamicRange];
  }

  else
  {
    v5 = 0;
  }

  [(PXDisplayAssetContentView *)self setEffectivePreferredImageDynamicRange:v5];
}

- (void)effectivePreferredImageDynamicRangeDidChange
{
  [(PXDisplayAssetContentView *)self setNeedsUpdateContent];
  v3 = [(PXDisplayAssetContentView *)self delegate];
  [v3 displayAssetContentView:self didChangeEffectivePreferredImageDynamicRange:{-[PXDisplayAssetContentView effectivePreferredImageDynamicRange](self, "effectivePreferredImageDynamicRange")}];
}

- (void)_loadContentView
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetContentView.m" lineNumber:733 description:{@"Method %s is a responsibility of subclass %@", "-[PXDisplayAssetContentView _loadContentView]", v6}];

  abort();
}

- (void)setProgressView:(id)a3
{
  v5 = a3;
  progressView = self->_progressView;
  if (progressView != v5)
  {
    v7 = v5;
    [(PXRoundProgressView *)progressView removeFromSuperview];
    objc_storeStrong(&self->_progressView, a3);
    [(PXDisplayAssetContentView *)self addSubview:self->_progressView];
    [(PXDisplayAssetContentView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)_updateFailureView
{
  if (![(PXDisplayAssetContentView *)self canDisplayLoadingIndicator])
  {
    v4 = [(PXDisplayAssetContentView *)self failureView];
    goto LABEL_7;
  }

  v3 = [(PXDisplayAssetContentView *)self error];

  v4 = [(PXDisplayAssetContentView *)self failureView];
  if (!v3)
  {
LABEL_7:
    v6 = v4;
    v5 = 1;
    goto LABEL_8;
  }

  if (!v4)
  {
    [PXLoadingFailureBadgeView sizeForSizeClass:1];
    PXRectWithOriginAndSize();
  }

  v6 = v4;
  v5 = 0;
LABEL_8:
  [v4 setHidden:v5];
}

- (void)_updateTargetSize
{
  v3 = [(PXDisplayAssetContentView *)self window];
  v4 = [v3 screen];
  [v4 scale];
  v6 = v5;

  if (v6 != 0.0)
  {
    [(PXDisplayAssetContentView *)self bounds];
    PXSizeScale();
  }
}

- (void)_updateIfNeeded
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXDisplayAssetContentView _updateIfNeeded]"];
      [v8 handleFailureInFunction:v9 file:@"PXDisplayAssetContentView.m" lineNumber:658 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXDisplayAssetContentView *)self updateContent];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXDisplayAssetContentView _updateIfNeeded]"];
        [v10 handleFailureInFunction:v11 file:@"PXDisplayAssetContentView.m" lineNumber:662 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXDisplayAssetContentView *)self _updateProgressView];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXDisplayAssetContentView _updateIfNeeded]"];
      [v12 handleFailureInFunction:v13 file:@"PXDisplayAssetContentView.m" lineNumber:665 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXDisplayAssetContentView *)self _updateError];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXDisplayAssetContentView _updateIfNeeded]"];
      [v14 handleFailureInFunction:v15 file:@"PXDisplayAssetContentView.m" lineNumber:668 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v7 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFF7;
      [(PXDisplayAssetContentView *)self _updateViewModelProperties];
      v7 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v7)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXDisplayAssetContentView _updateIfNeeded]"];
      [v17 handleFailureInFunction:v16 file:@"PXDisplayAssetContentView.m" lineNumber:672 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }
}

- (void)_updateViewModelProperties
{
  v3 = [(PXDisplayAssetContentView *)self viewModel];
  v4 = [v3 asset];
  v5 = [(PXDisplayAssetContentView *)self asset];
  v6 = v5;
  if (v4 == v5)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PXDisplayAssetContentView__updateViewModelProperties__block_invoke;
  v8[3] = &unk_1E774A128;
  v8[4] = self;
  [v3 performChanges:v8];
LABEL_6:
}

void __55__PXDisplayAssetContentView__updateViewModelProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 image];
  [v4 setCurrentImage:v5];

  [v4 setIsDisplayingFullQualityContent:{objc_msgSend(*(a1 + 32), "isDisplayingFullQualityContent")}];
  [*(a1 + 32) loadingProgress];
  *&v6 = v6;
  [v4 setLoadingProgress:v6];
  v7 = [*(a1 + 32) error];
  [v4 setLoadingError:v7];
}

- (void)_invalidateViewModelProperties
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXDisplayAssetContentView _invalidateViewModelProperties]"];
      [v6 handleFailureInFunction:v7 file:@"PXDisplayAssetContentView.m" lineNumber:635 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXDisplayAssetContentView *)self setNeedsLayout];
  }
}

- (void)_updateError
{
  if ([(PXDisplayAssetContentView *)self isDisplayingFullQualityContent])
  {

    [(PXDisplayAssetContentView *)self setError:0];
  }

  else
  {
    v3 = [(PXDisplayAssetContentView *)self latestError];
    [(PXDisplayAssetContentView *)self setError:v3];
  }
}

- (void)_invalidateError
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXDisplayAssetContentView _invalidateError]"];
      [v6 handleFailureInFunction:v7 file:@"PXDisplayAssetContentView.m" lineNumber:625 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXDisplayAssetContentView *)self setNeedsLayout];
  }
}

- (void)updateContent
{
  v3 = [(PXDisplayAssetContentView *)self asset];
  v4 = [(PXDisplayAssetContentView *)self mediaProvider];
  v5 = v4;
  if (v3 && v4)
  {
    if (!-[PXDisplayAssetContentView disableImageRequestsOnResize](self, "disableImageRequestsOnResize") || (-[PXDisplayAssetContentView imageRequester](self, "imageRequester"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasFullQuality], v6, (v7 & 1) == 0))
    {
      v8 = [(PXDisplayAssetContentView *)self imageRequester];

      if (!v8)
      {
        v9 = [[PXImageRequester alloc] initWithMediaProvider:v5 asset:v3];
        [(PXDisplayAssetContentView *)self setImageRequester:v9];
      }

      [(PXDisplayAssetContentView *)self contentView];
      [objc_claimAutoreleasedReturnValue() bounds];
      PXSizeIsEmpty();
    }
  }

  else
  {
    [(PXDisplayAssetContentView *)self setImageRequester:0];
  }
}

void __42__PXDisplayAssetContentView_updateContent__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setContentSize:{*(a1 + 32), *(a1 + 40)}];
  [v3 setDesiredContentsRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [v3 setViewportSize:{*(a1 + 80), *(a1 + 88)}];
  [v3 setScale:*(a1 + 96)];
  [v3 setPreferHDR:*(a1 + 104)];
  if (*(a1 + 104) == 1)
  {
    [v3 setTargetHDRHeadroom:0.0];
  }
}

- (void)isDisplayingFullQualityContentDidChange
{
  [(PXDisplayAssetContentView *)self _updateProgressView];
  [(PXDisplayAssetContentView *)self _invalidateError];

  [(PXDisplayAssetContentView *)self _invalidateViewModelProperties];
}

- (void)invalidateLoadingProgress
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      goto LABEL_7;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXDisplayAssetContentView invalidateLoadingProgress]"];
      [v6 handleFailureInFunction:v7 file:@"PXDisplayAssetContentView.m" lineNumber:539 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {
    [(PXDisplayAssetContentView *)self setNeedsLayout];
  }

LABEL_7:

  [(PXDisplayAssetContentView *)self _invalidateViewModelProperties];
}

- (void)setScreenDynamicRangeMonitor:(id)a3
{
  v5 = a3;
  screenDynamicRangeMonitor = self->_screenDynamicRangeMonitor;
  if (screenDynamicRangeMonitor != v5)
  {
    v7 = v5;
    [(PXDisplayScreenDynamicRangeMonitor *)screenDynamicRangeMonitor unregisterChangeObserver:self context:PXDisplayScreenDynamicRangeObservationContext];
    objc_storeStrong(&self->_screenDynamicRangeMonitor, a3);
    [(PXDisplayScreenDynamicRangeMonitor *)self->_screenDynamicRangeMonitor registerChangeObserver:self context:PXDisplayScreenDynamicRangeObservationContext];
    v5 = v7;
  }
}

- (void)setEffectivePreferredImageDynamicRange:(int64_t)a3
{
  if (self->_effectivePreferredImageDynamicRange != a3)
  {
    self->_effectivePreferredImageDynamicRange = a3;
    [(PXDisplayAssetContentView *)self effectivePreferredImageDynamicRangeDidChange];
  }
}

- (void)setPreferredImageDynamicRange:(int64_t)a3
{
  if (self->_preferredImageDynamicRange != a3)
  {
    self->_preferredImageDynamicRange = a3;
    [(PXDisplayAssetContentView *)self preferredImageDynamicRangeDidChange];
  }
}

- (void)setToneMapVideoToStandardDynamicRange:(BOOL)a3
{
  if (self->_toneMapVideoToStandardDynamicRange != a3)
  {
    self->_toneMapVideoToStandardDynamicRange = a3;
    [(PXDisplayAssetContentView *)self toneMapVideoToStandardDynamicRangeDidChange];
  }
}

- (void)setPlaceholderTransitionDuration:(double)a3
{
  if (self->_placeholderTransitionDuration != a3)
  {
    self->_placeholderTransitionDuration = a3;
    [(PXDisplayAssetContentView *)self placeholderTransitionDurationDidChange];
  }
}

- (void)setAnimatedContentEnabled:(BOOL)a3
{
  if (self->_animatedContentEnabled != a3)
  {
    self->_animatedContentEnabled = a3;
    [(PXDisplayAssetContentView *)self animatedContentEnabledDidChange];
  }
}

- (void)setError:(id)a3
{
  v5 = a3;
  if (self->_error != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_error, a3);
    [(PXDisplayAssetContentView *)self _invalidateViewModelProperties];
    [(PXDisplayAssetContentView *)self _updateFailureView];
    [(PXDisplayAssetContentView *)self _updateProgressView];
    v5 = v6;
  }
}

- (void)setLatestError:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_latestError != v5)
  {
    v8 = v5;
    v7 = [(NSError *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_latestError, a3);
      [(PXDisplayAssetContentView *)self _invalidateError];
      v6 = v8;
    }
  }
}

- (void)setRequestID:(int64_t)a3
{
  requestID = self->_requestID;
  if (requestID != a3)
  {
    if (requestID)
    {
      v6 = [(PXDisplayAssetContentView *)self mediaProvider];
      [v6 cancelImageRequest:self->_requestID];
    }

    self->_requestID = a3;
  }
}

- (void)setTargetSize:(CGSize)a3
{
  if (a3.width != self->_targetSize.width || a3.height != self->_targetSize.height)
  {
    self->_targetSize = a3;
    [(PXDisplayAssetContentView *)self setNeedsUpdateContent];
  }
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    [(PXDisplayAssetContentView *)self setNeedsUpdateContent];
    v5 = v6;
  }
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (self->_asset != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_asset, a3);
    [(PXDisplayAssetContentView *)self setNeedsUpdateContent];
    [(PXDisplayAssetContentView *)self setLatestError:0];
    v5 = v6;
  }
}

- (void)setImageRequester:(id)a3
{
  v5 = a3;
  imageRequester = self->_imageRequester;
  if (imageRequester != v5)
  {
    v8 = v5;
    [(PXImageRequester *)imageRequester unregisterChangeObserver:self context:PXImageRequesterObserverContext_70049];
    objc_storeStrong(&self->_imageRequester, a3);
    [(PXImageRequester *)v8 registerChangeObserver:self context:PXImageRequesterObserverContext_70049];
    v7 = [(PXImageRequester *)v8 image];
    [(PXDisplayAssetContentView *)self setImage:v7];

    [(PXImageRequester *)v8 loadingProgress];
    [(PXDisplayAssetContentView *)self setImageProgress:?];
    [(PXDisplayAssetContentView *)self imageRequesterDidChange:-1];
    [(PXDisplayAssetContentView *)self _updateContentsRect];
    v5 = v8;
  }
}

- (void)setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    x = *off_1E77221F8;
    y = *(off_1E77221F8 + 1);
    width = *(off_1E77221F8 + 2);
    height = *(off_1E77221F8 + 3);
  }

  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  if (!CGRectEqualToRect(v9, self->_contentsRect))
  {
    self->_contentsRect.origin.x = x;
    self->_contentsRect.origin.y = y;
    self->_contentsRect.size.width = width;
    self->_contentsRect.size.height = height;

    [(PXDisplayAssetContentView *)self contentsRectDidChange];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_image, a3);
    [(PXDisplayAssetContentView *)self imageDidChange];
    v6 = [(PXDisplayAssetContentView *)self delegate];
    [v6 displayAssetContentViewDidChangeImage:self];

    v5 = v7;
  }
}

- (void)setContentBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentBounds = &self->_contentBounds;
  if (!CGRectEqualToRect(a3, self->_contentBounds))
  {
    p_contentBounds->origin.x = x;
    p_contentBounds->origin.y = y;
    p_contentBounds->size.width = width;
    p_contentBounds->size.height = height;
    [(PXDisplayAssetContentView *)self _updateTargetSize];

    [(PXDisplayAssetContentView *)self setNeedsUpdateContent];
  }
}

- (void)setPlaceholderImageFilters:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_placeholderImageFilters != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      placeholderImageFilters = self->_placeholderImageFilters;
      self->_placeholderImageFilters = v7;

      [(PXDisplayAssetContentView *)self placeholderImageFiltersDidChange];
      v5 = v9;
    }
  }
}

- (void)setNeedsUpdateContent
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXDisplayAssetContentView setNeedsUpdateContent]"];
      [v6 handleFailureInFunction:v7 file:@"PXDisplayAssetContentView.m" lineNumber:368 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXDisplayAssetContentView *)self setNeedsLayout];
  }
}

- (PXRegionOfInterest)regionOfInterest
{
  v3 = [off_1E7721860 alloc];
  [(PXDisplayAssetContentView *)self bounds];
  v4 = [v3 initWithRect:self inCoordinateSpace:?];
  v5 = [(PXDisplayAssetContentView *)self imageRequester];
  [v4 setImageRequester:v5];

  [(PXDisplayAssetContentView *)self contentsRect];
  [v4 setImageContentsRect:?];

  return v4;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (PXImageRequesterObserverContext_70049 == a5)
  {
    px_dispatch_on_main_queue();
  }

  if (ViewModelObservationContext_70051 == a5)
  {
    [(PXDisplayAssetContentView *)self viewModelDidChange:a4];
  }

  else
  {
    if (PXDisplayScreenDynamicRangeObservationContext != a5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetContentView.m" lineNumber:346 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (a4)
    {
      [(PXDisplayAssetContentView *)self _updateEffectiveImageDynamicRange];
    }
  }
}

uint64_t __58__PXDisplayAssetContentView_observable_didChange_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((v2 & 0x80) != 0)
  {
    [*(a1 + 32) _updateContentsRect];
    v2 = *(a1 + 40);
  }

  if ((v2 & 0x1008) != 0)
  {
    v3 = [*(a1 + 32) imageRequester];
    v4 = [v3 hasFullQuality];
    v5 = 1.0;
    if ((v4 & 1) == 0)
    {
      [v3 loadingProgress];
    }

    [*(a1 + 32) setImageProgress:v5];

    v2 = *(a1 + 40);
  }

  if ((v2 & 0x2000) != 0)
  {
    v6 = *(a1 + 32);
    v7 = [v6 imageRequester];
    v8 = [v7 loadingError];
    [v6 handleError:v8];

    v2 = *(a1 + 40);
  }

  if ((v2 & 4) != 0)
  {
    v9 = [*(a1 + 32) imageRequester];
    v10 = [v9 image];
    [*(a1 + 32) setImage:v10];

    v2 = *(a1 + 40);
  }

  v11 = *(a1 + 32);

  return [v11 imageRequesterDidChange:v2];
}

- (void)_updateContentsRect
{
  v3 = [(PXDisplayAssetContentView *)self viewModel];
  [v3 stillImageContentsRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v14.origin.x = v5;
  v14.origin.y = v7;
  v14.size.width = v9;
  v14.size.height = v11;
  if (CGRectIsEmpty(v14))
  {
    v12 = [(PXDisplayAssetContentView *)self imageRequester];
    [v12 contentsRect];
    [(PXDisplayAssetContentView *)self setContentsRect:?];
  }

  else
  {

    [(PXDisplayAssetContentView *)self setContentsRect:v5, v7, v9, v11];
  }
}

- (void)becomeReusable
{
  [(PXDisplayAssetContentView *)self setAsset:0];
  [(PXDisplayAssetContentView *)self setMediaProvider:0];
  [(PXDisplayAssetContentView *)self setCanDisplayLoadingIndicator:0];
  [(PXDisplayAssetContentView *)self setHidden:0];
  [(PXDisplayAssetContentView *)self setLatestError:0];
  [(PXDisplayAssetContentView *)self setError:0];
  [(PXDisplayAssetContentView *)self setAnimatedContentEnabled:0];
  [(PXDisplayAssetContentView *)self setPlaceholderImageFilters:0];
  [(PXDisplayAssetContentView *)self _resetPreferredImageDynamicRange];
  [(PXDisplayAssetContentView *)self _updateIfNeeded];

  [(PXDisplayAssetContentView *)self _stopHeadroomMonitoring];
}

- (OS_os_log)log
{
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, &__block_literal_global_217);
  }

  v3 = log_log;

  return v3;
}

void __32__PXDisplayAssetContentView_log__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "PXDisplayAssetContentView");
  v1 = log_log;
  log_log = v0;
}

- (void)handleError:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(PXDisplayAssetContentView *)self setLatestError:v4];
    v5 = [(PXDisplayAssetContentView *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412546;
      v7 = self;
      v8 = 2112;
      v9 = v4;
      _os_log_error_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "%@ received error : %@", &v6, 0x16u);
    }
  }
}

- (void)viewModelDidChange:(unint64_t)a3
{
  if ((a3 & 0x20000) != 0)
  {
    [(PXDisplayAssetContentView *)self _updateContentsRect];
  }
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  viewModel = self->_viewModel;
  if (viewModel != v5)
  {
    v7 = v5;
    [(PXDisplayAssetViewModel *)viewModel unregisterChangeObserver:self context:ViewModelObservationContext_70051];
    objc_storeStrong(&self->_viewModel, a3);
    [(PXDisplayAssetViewModel *)self->_viewModel registerChangeObserver:self context:ViewModelObservationContext_70051];
    [(PXDisplayAssetContentView *)self viewModelDidChange:-1];
    v5 = v7;
  }
}

- (void)setContentMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = PXDisplayAssetContentView;
  [(PXDisplayAssetContentView *)&v4 setContentMode:a3];
  [(PXDisplayAssetContentView *)self contentModeDidChange];
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = PXDisplayAssetContentView;
  [(PXDisplayAssetContentView *)&v19 layoutSubviews];
  [(PXDisplayAssetContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PXDisplayAssetContentView *)self contentView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(PXDisplayAssetContentView *)self setContentBounds:v4, v6, v8, v10];
  [(PXDisplayAssetContentView *)self _updateIfNeeded];
  [off_1E7721870 sizeForSizeClass:1];
  v13 = v12;
  v15 = v14;
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  v16 = CGRectGetMaxX(v20) - v13 + -8.0;
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v17 = CGRectGetMaxY(v21) - v15 + -8.0;
  v18 = [(PXDisplayAssetContentView *)self progressView];
  [v18 setFrame:{v16, v17, v13, v15}];

  PXRectGetCenter();
}

- (void)setNeedsLayout
{
  v2.receiver = self;
  v2.super_class = PXDisplayAssetContentView;
  [(PXDisplayAssetContentView *)&v2 setNeedsLayout];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetContentView;
  [(PXDisplayAssetContentView *)&v3 didMoveToWindow];
  [(PXDisplayAssetContentView *)self _updateTargetSize];
  [(PXDisplayAssetContentView *)self _startHeadroomMonitoringIfPossible];
}

- (void)willMoveToWindow:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXDisplayAssetContentView;
  [(PXDisplayAssetContentView *)&v4 willMoveToWindow:a3];
  [(PXDisplayAssetContentView *)self _stopHeadroomMonitoring];
}

- (PXDisplayAssetContentView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PXDisplayAssetContentView;
  v3 = [(PXDisplayAssetContentView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXDisplayAssetContentView *)v3 _resetPreferredImageDynamicRange];
    v5 = [(PXDisplayAssetContentView *)v4 contentView];
    [(PXDisplayAssetContentView *)v4 addSubview:v5];

    [(PXDisplayAssetContentView *)v4 _updateTargetSize];
    [(PXDisplayAssetContentView *)v4 _updateProgressView];
    [(PXDisplayAssetContentView *)v4 setAccessibilityIgnoresInvertColors:1];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v4 selector:sel__applicationDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v4;
}

void __41__PXDisplayAssetContentView_checkInView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) viewPool];
  [v2 checkInReusableObject:*(a1 + 32)];
}

+ (id)checkOutViewForAsset:(id)a3 withPlaybackStyle:(int64_t)a4
{
  if ((a4 - 2) > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A53819D8[a4 - 2];
  }

  v6 = a3;
  v7 = [a1 viewPool];
  v8 = [v7 checkOutReusableObjectWithReuseIdentifier:v5];

  [v8 setAsset:v6];

  return v8;
}

+ (id)checkOutViewForAsset:(id)a3
{
  v4 = a3;
  v5 = [a1 checkOutViewForAsset:v4 withPlaybackStyle:{objc_msgSend(v4, "playbackStyle")}];

  return v5;
}

+ (PXReusableObjectPool)viewPool
{
  if (viewPool_onceToken != -1)
  {
    dispatch_once(&viewPool_onceToken, &__block_literal_global_70081);
  }

  v3 = viewPool_pool;

  return v3;
}

uint64_t __37__PXDisplayAssetContentView_viewPool__block_invoke()
{
  v0 = objc_alloc_init(off_1E7721868);
  v1 = viewPool_pool;
  viewPool_pool = v0;

  [viewPool_pool registerReusableObjectForReuseIdentifier:0 creationHandler:&__block_literal_global_190_70084];
  [viewPool_pool registerReusableObjectForReuseIdentifier:4 creationHandler:&__block_literal_global_193_70085];
  [viewPool_pool registerReusableObjectForReuseIdentifier:1 creationHandler:&__block_literal_global_196];
  [viewPool_pool registerReusableObjectForReuseIdentifier:2 creationHandler:&__block_literal_global_199_70086];
  v2 = viewPool_pool;

  return [v2 registerReusableObjectForReuseIdentifier:3 creationHandler:&__block_literal_global_201_70087];
}

PXDisplayAssetImageContentView *__37__PXDisplayAssetContentView_viewPool__block_invoke_6()
{
  v0 = objc_alloc_init(PXDisplayAssetImageContentView);

  return v0;
}

PXDisplayAssetLoopingVideoContentView *__37__PXDisplayAssetContentView_viewPool__block_invoke_5()
{
  v0 = objc_alloc_init(PXDisplayAssetLoopingVideoContentView);

  return v0;
}

PXDisplayAssetLoopingVideoContentView *__37__PXDisplayAssetContentView_viewPool__block_invoke_4()
{
  v0 = objc_alloc_init(PXDisplayAssetLoopingVideoContentView);

  return v0;
}

PXDisplayAssetLivePhotoContentView *__37__PXDisplayAssetContentView_viewPool__block_invoke_3()
{
  v0 = objc_alloc_init(PXDisplayAssetLivePhotoContentView);

  return v0;
}

PXDisplayAssetImageContentView *__37__PXDisplayAssetContentView_viewPool__block_invoke_2()
{
  v0 = objc_alloc_init(PXDisplayAssetImageContentView);

  return v0;
}

@end