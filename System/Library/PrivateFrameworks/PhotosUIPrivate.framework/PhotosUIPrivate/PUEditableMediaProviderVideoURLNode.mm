@interface PUEditableMediaProviderVideoURLNode
- (PUEditableMediaProviderVideoURLNode)initWithAsset:(id)asset mediaProvider:(id)provider version:(int64_t)version;
- (void)_handleDidLoadVideoURL:(id)l info:(id)info;
- (void)run;
@end

@implementation PUEditableMediaProviderVideoURLNode

- (void)_handleDidLoadVideoURL:(id)l info:(id)info
{
  v12 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = [info objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
  if (!lCopy)
  {
    v8 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Error fetching video URL: %@", &v10, 0xCu);
    }
  }

  videoURL = self->_videoURL;
  self->_videoURL = lCopy;

  [(PXRunNode *)self completeWithError:v7];
}

- (void)run
{
  videoURL = self->_videoURL;
  self->_videoURL = 0;

  v4 = objc_alloc_init(MEMORY[0x1E6978B18]);
  [v4 setDeliveryMode:1];
  [v4 setVideoComplementAllowed:1];
  [v4 setVersion:{-[PUEditableMediaProviderVideoURLNode version](self, "version")}];
  asset = [(PUEditableMediaProviderVideoURLNode *)self asset];
  mediaProvider = [(PUEditableMediaProviderVideoURLNode *)self mediaProvider];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PUEditableMediaProviderVideoURLNode_run__block_invoke;
  v7[3] = &unk_1E7B76E58;
  objc_copyWeak(&v8, &location);
  self->_requestID = [mediaProvider requestAsynchronousVideoURLForAsset:asset options:v4 resultHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __42__PUEditableMediaProviderVideoURLNode_run__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidLoadVideoURL:v6 info:v5];
}

- (PUEditableMediaProviderVideoURLNode)initWithAsset:(id)asset mediaProvider:(id)provider version:(int64_t)version
{
  assetCopy = asset;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = PUEditableMediaProviderVideoURLNode;
  v11 = [(PXRunNode *)&v14 initWithDependencies:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asset, asset);
    objc_storeStrong(&v12->_mediaProvider, provider);
    v12->_version = version;
  }

  return v12;
}

@end