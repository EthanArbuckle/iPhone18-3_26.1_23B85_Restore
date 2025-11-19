@interface PUAssetSharedViewModel
- (PUAssetSharedViewModel)init;
- (PUAssetSharedViewModel)initWithAsset:(id)a3;
- (PUAssetSharedViewModelChange)currentChange;
- (void)registerChangeObserver:(id)a3;
- (void)setAsset:(id)a3;
- (void)setDeferredProcessingNeeded:(unsigned __int16)a3;
- (void)setFlippingFullSizeRenderState:(int64_t)a3;
- (void)setLoadingStatus:(id)a3;
- (void)setNeedsDeferredProcessing:(BOOL)a3;
- (void)setSaveProgress:(id)a3;
- (void)setSaveState:(int64_t)a3;
- (void)unregisterChangeObserver:(id)a3;
@end

@implementation PUAssetSharedViewModel

- (void)setDeferredProcessingNeeded:(unsigned __int16)a3
{
  if (self->_deferredProcessingNeeded != a3)
  {
    self->_deferredProcessingNeeded = a3;
    v4 = [(PUAssetSharedViewModel *)self currentChange];
    [v4 setDeferredProcessingNeededChanged:1];
  }
}

- (void)setNeedsDeferredProcessing:(BOOL)a3
{
  if (self->_needsDeferredProcessing != a3)
  {
    self->_needsDeferredProcessing = a3;
    v4 = [(PUAssetSharedViewModel *)self currentChange];
    [v4 setNeedsDeferredProcessingChanged:1];
  }
}

- (void)setFlippingFullSizeRenderState:(int64_t)a3
{
  if (self->_flippingFullSizeRenderState != a3)
  {
    self->_flippingFullSizeRenderState = a3;
    v4 = [(PUAssetSharedViewModel *)self currentChange];
    [v4 setFlippingFullSizeRenderStateChanged:1];
  }
}

- (void)setSaveState:(int64_t)a3
{
  if (self->_saveState != a3)
  {
    self->_saveState = a3;
    v4 = [(PUAssetSharedViewModel *)self currentChange];
    [v4 setSaveStateChanged:1];
  }
}

- (void)setSaveProgress:(id)a3
{
  v5 = a3;
  if (self->_saveProgress != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_saveProgress, a3);
    v6 = [(PUAssetSharedViewModel *)self currentChange];
    [v6 setSaveProgressChanged:1];

    v5 = v7;
  }
}

- (void)setLoadingStatus:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_loadingStatus != v4)
  {
    v9 = v4;
    v4 = [v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [v9 copy];
      loadingStatus = self->_loadingStatus;
      self->_loadingStatus = v6;

      v8 = [(PUAssetSharedViewModel *)self currentChange];
      [v8 setLoadingStatusChanged:1];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (self->_asset != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_asset, a3);
    if (objc_opt_respondsToSelector())
    {
      v6 = [(PUDisplayAsset *)v8 needsDeferredProcessing];
    }

    else
    {
      v6 = 0;
    }

    [(PUAssetSharedViewModel *)self setNeedsDeferredProcessing:v6];
    if (objc_opt_respondsToSelector())
    {
      v7 = [(PUDisplayAsset *)v8 deferredProcessingNeeded];
    }

    else
    {
      v7 = 0;
    }

    [(PUAssetSharedViewModel *)self setDeferredProcessingNeeded:v7];
    v5 = v8;
  }
}

- (void)unregisterChangeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUAssetSharedViewModel;
  [(PUViewModel *)&v3 unregisterChangeObserver:a3];
}

- (void)registerChangeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUAssetSharedViewModel;
  [(PUViewModel *)&v3 registerChangeObserver:a3];
}

- (PUAssetSharedViewModelChange)currentChange
{
  v4.receiver = self;
  v4.super_class = PUAssetSharedViewModel;
  v2 = [(PUViewModel *)&v4 currentChange];

  return v2;
}

- (PUAssetSharedViewModel)initWithAsset:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUAssetSharedViewModel.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v13.receiver = self;
  v13.super_class = PUAssetSharedViewModel;
  v7 = [(PUViewModel *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_asset, a3);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 needsDeferredProcessing];
    }

    else
    {
      v9 = 0;
    }

    v8->_needsDeferredProcessing = v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = [v6 deferredProcessingNeeded];
    }

    else
    {
      v10 = 0;
    }

    v8->_deferredProcessingNeeded = v10;
  }

  return v8;
}

- (PUAssetSharedViewModel)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUAssetSharedViewModel.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PUAssetSharedViewModel init]"}];

  abort();
}

@end