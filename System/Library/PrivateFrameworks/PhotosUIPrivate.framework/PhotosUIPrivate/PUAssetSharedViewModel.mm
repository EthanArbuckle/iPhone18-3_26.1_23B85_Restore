@interface PUAssetSharedViewModel
- (PUAssetSharedViewModel)init;
- (PUAssetSharedViewModel)initWithAsset:(id)asset;
- (PUAssetSharedViewModelChange)currentChange;
- (void)registerChangeObserver:(id)observer;
- (void)setAsset:(id)asset;
- (void)setDeferredProcessingNeeded:(unsigned __int16)needed;
- (void)setFlippingFullSizeRenderState:(int64_t)state;
- (void)setLoadingStatus:(id)status;
- (void)setNeedsDeferredProcessing:(BOOL)processing;
- (void)setSaveProgress:(id)progress;
- (void)setSaveState:(int64_t)state;
- (void)unregisterChangeObserver:(id)observer;
@end

@implementation PUAssetSharedViewModel

- (void)setDeferredProcessingNeeded:(unsigned __int16)needed
{
  if (self->_deferredProcessingNeeded != needed)
  {
    self->_deferredProcessingNeeded = needed;
    currentChange = [(PUAssetSharedViewModel *)self currentChange];
    [currentChange setDeferredProcessingNeededChanged:1];
  }
}

- (void)setNeedsDeferredProcessing:(BOOL)processing
{
  if (self->_needsDeferredProcessing != processing)
  {
    self->_needsDeferredProcessing = processing;
    currentChange = [(PUAssetSharedViewModel *)self currentChange];
    [currentChange setNeedsDeferredProcessingChanged:1];
  }
}

- (void)setFlippingFullSizeRenderState:(int64_t)state
{
  if (self->_flippingFullSizeRenderState != state)
  {
    self->_flippingFullSizeRenderState = state;
    currentChange = [(PUAssetSharedViewModel *)self currentChange];
    [currentChange setFlippingFullSizeRenderStateChanged:1];
  }
}

- (void)setSaveState:(int64_t)state
{
  if (self->_saveState != state)
  {
    self->_saveState = state;
    currentChange = [(PUAssetSharedViewModel *)self currentChange];
    [currentChange setSaveStateChanged:1];
  }
}

- (void)setSaveProgress:(id)progress
{
  progressCopy = progress;
  if (self->_saveProgress != progressCopy)
  {
    v7 = progressCopy;
    objc_storeStrong(&self->_saveProgress, progress);
    currentChange = [(PUAssetSharedViewModel *)self currentChange];
    [currentChange setSaveProgressChanged:1];

    progressCopy = v7;
  }
}

- (void)setLoadingStatus:(id)status
{
  statusCopy = status;
  v5 = statusCopy;
  if (self->_loadingStatus != statusCopy)
  {
    v9 = statusCopy;
    statusCopy = [statusCopy isEqual:?];
    v5 = v9;
    if ((statusCopy & 1) == 0)
    {
      v6 = [v9 copy];
      loadingStatus = self->_loadingStatus;
      self->_loadingStatus = v6;

      currentChange = [(PUAssetSharedViewModel *)self currentChange];
      [currentChange setLoadingStatusChanged:1];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](statusCopy, v5);
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_asset != assetCopy)
  {
    v8 = assetCopy;
    objc_storeStrong(&self->_asset, asset);
    if (objc_opt_respondsToSelector())
    {
      needsDeferredProcessing = [(PUDisplayAsset *)v8 needsDeferredProcessing];
    }

    else
    {
      needsDeferredProcessing = 0;
    }

    [(PUAssetSharedViewModel *)self setNeedsDeferredProcessing:needsDeferredProcessing];
    if (objc_opt_respondsToSelector())
    {
      deferredProcessingNeeded = [(PUDisplayAsset *)v8 deferredProcessingNeeded];
    }

    else
    {
      deferredProcessingNeeded = 0;
    }

    [(PUAssetSharedViewModel *)self setDeferredProcessingNeeded:deferredProcessingNeeded];
    assetCopy = v8;
  }
}

- (void)unregisterChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUAssetSharedViewModel;
  [(PUViewModel *)&v3 unregisterChangeObserver:observer];
}

- (void)registerChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUAssetSharedViewModel;
  [(PUViewModel *)&v3 registerChangeObserver:observer];
}

- (PUAssetSharedViewModelChange)currentChange
{
  v4.receiver = self;
  v4.super_class = PUAssetSharedViewModel;
  currentChange = [(PUViewModel *)&v4 currentChange];

  return currentChange;
}

- (PUAssetSharedViewModel)initWithAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetSharedViewModel.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v13.receiver = self;
  v13.super_class = PUAssetSharedViewModel;
  v7 = [(PUViewModel *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_asset, asset);
    if (objc_opt_respondsToSelector())
    {
      needsDeferredProcessing = [assetCopy needsDeferredProcessing];
    }

    else
    {
      needsDeferredProcessing = 0;
    }

    v8->_needsDeferredProcessing = needsDeferredProcessing;
    if (objc_opt_respondsToSelector())
    {
      deferredProcessingNeeded = [assetCopy deferredProcessingNeeded];
    }

    else
    {
      deferredProcessingNeeded = 0;
    }

    v8->_deferredProcessingNeeded = deferredProcessingNeeded;
  }

  return v8;
}

- (PUAssetSharedViewModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetSharedViewModel.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PUAssetSharedViewModel init]"}];

  abort();
}

@end