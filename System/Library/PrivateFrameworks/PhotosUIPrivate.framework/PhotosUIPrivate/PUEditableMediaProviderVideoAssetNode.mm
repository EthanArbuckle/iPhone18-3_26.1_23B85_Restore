@interface PUEditableMediaProviderVideoAssetNode
- (PUEditableMediaProviderVideoAssetNode)initWithAsset:(id)a3 mediaProvider:(id)a4 version:(int64_t)a5;
- (void)_handleDidLoadVideo:(id)a3 info:(id)a4;
- (void)run;
@end

@implementation PUEditableMediaProviderVideoAssetNode

- (void)_handleDidLoadVideo:(id)a3 info:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
  if (!v6)
  {
    v8 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Error fetching video: %@", &v10, 0xCu);
    }
  }

  videoAsset = self->_videoAsset;
  self->_videoAsset = v6;

  [(PXRunNode *)self completeWithError:v7];
}

- (void)run
{
  videoAsset = self->_videoAsset;
  self->_videoAsset = 0;

  v4 = objc_alloc_init(MEMORY[0x1E6978B18]);
  [v4 setDeliveryMode:1];
  [v4 setVideoComplementAllowed:1];
  [v4 setVersion:{-[PUEditableMediaProviderVideoAssetNode version](self, "version")}];
  v5 = [(PUEditableMediaProviderVideoAssetNode *)self asset];
  v6 = [(PUEditableMediaProviderVideoAssetNode *)self mediaProvider];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PUEditableMediaProviderVideoAssetNode_run__block_invoke;
  v7[3] = &unk_1E7B76E30;
  objc_copyWeak(&v8, &location);
  self->_requestID = [v6 requestAVAssetForVideo:v5 options:v4 resultHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __44__PUEditableMediaProviderVideoAssetNode_run__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidLoadVideo:v7 info:v6];
}

- (PUEditableMediaProviderVideoAssetNode)initWithAsset:(id)a3 mediaProvider:(id)a4 version:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PUEditableMediaProviderVideoAssetNode;
  v11 = [(PXRunNode *)&v14 initWithDependencies:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asset, a3);
    objc_storeStrong(&v12->_mediaProvider, a4);
    v12->_version = a5;
  }

  return v12;
}

@end