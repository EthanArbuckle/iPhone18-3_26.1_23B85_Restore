@interface PUEditableMediaProviderAdjustmentDataNode
- (PUEditableMediaProviderAdjustmentDataNode)initWithAsset:(id)asset mediaProvider:(id)provider;
- (void)_handleDidLoadAdjustmentData:(id)data error:(id)error;
- (void)didCancel;
- (void)run;
@end

@implementation PUEditableMediaProviderAdjustmentDataNode

- (void)_handleDidLoadAdjustmentData:(id)data error:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  errorCopy = error;
  if (!dataCopy)
  {
    v8 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = errorCopy;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Error fetching adjustment data: %@", &v10, 0xCu);
    }
  }

  adjustmentData = self->_adjustmentData;
  self->_adjustmentData = dataCopy;

  [(PXRunNode *)self completeWithError:errorCopy];
}

- (void)run
{
  adjustmentData = self->_adjustmentData;
  self->_adjustmentData = 0;

  v4 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v4 setVersion:16];
  asset = [(PUEditableMediaProviderAdjustmentDataNode *)self asset];
  mediaProvider = [(PUEditableMediaProviderAdjustmentDataNode *)self mediaProvider];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PUEditableMediaProviderAdjustmentDataNode_run__block_invoke;
  v7[3] = &unk_1E7B76E80;
  objc_copyWeak(&v8, &location);
  self->_requestID = [mediaProvider requestImageForAsset:asset targetSize:0 contentMode:v4 options:v7 resultHandler:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __48__PUEditableMediaProviderAdjustmentDataNode_run__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x1E6978B30];
  v5 = a3;
  v8 = [v5 objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidLoadAdjustmentData:v8 error:v6];
}

- (void)didCancel
{
  mediaProvider = [(PUEditableMediaProviderAdjustmentDataNode *)self mediaProvider];
  [mediaProvider cancelImageRequest:self->_requestID];
}

- (PUEditableMediaProviderAdjustmentDataNode)initWithAsset:(id)asset mediaProvider:(id)provider
{
  assetCopy = asset;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = PUEditableMediaProviderAdjustmentDataNode;
  v9 = [(PXRunNode *)&v12 initWithDependencies:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    objc_storeStrong(&v10->_mediaProvider, provider);
  }

  return v10;
}

@end