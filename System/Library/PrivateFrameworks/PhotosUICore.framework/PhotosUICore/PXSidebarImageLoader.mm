@interface PXSidebarImageLoader
- (PXSidebarImageLoader)init;
- (id)beginRequestForMediaProvider:(id)provider mediaRequestIDs:(id)ds;
- (int64_t)requestFolderImageWithAssets:(id)assets imageSize:(CGSize)size traitCollection:(id)collection completion:(id)completion;
- (int64_t)requestImageForAsset:(id)asset pixelSize:(CGSize)size completion:(id)completion;
- (void)cancelImageRequest:(int64_t)request;
- (void)cancelRequestDetails:(id)details;
@end

@implementation PXSidebarImageLoader

- (int64_t)requestImageForAsset:(id)asset pixelSize:(CGSize)size completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  defaultManager = [off_1E77217B0 defaultManager];
  v10 = [defaultManager imageProviderForAsset:assetCopy];

  v11 = objc_alloc_init(off_1E7721750);
  [v11 setDeliveryMode:1];
  [v11 setResizeMode:2];
  [(PXSidebarImageLoader *)self beginRequestForMediaProvider:v10 mediaRequestIDs:0];
  objc_claimAutoreleasedReturnValue();
  PXSizeGetAspectRatio();
}

void __66__PXSidebarImageLoader_requestImageForAsset_pixelSize_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v9 = [v5 px_imageWithAspectRatio:*(a1 + 56) cornerRadius:0.0];

    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v10 = v7;
  (*(*(a1 + 40) + 16))();
  if (v10)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained cancelRequestDetails:*(a1 + 32)];
  }
}

- (int64_t)requestFolderImageWithAssets:(id)assets imageSize:(CGSize)size traitCollection:(id)collection completion:(id)completion
{
  assetsCopy = assets;
  collectionCopy = collection;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__40070;
  v17[4] = __Block_byref_object_dispose__40071;
  v17[5] = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__PXSidebarImageLoader_requestFolderImageWithAssets_imageSize_traitCollection_completion___block_invoke;
  v15[3] = &unk_1E7731558;
  v15[4] = self;
  v15[5] = v17;
  v15[6] = v16;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__PXSidebarImageLoader_requestFolderImageWithAssets_imageSize_traitCollection_completion___block_invoke_2;
  v13[3] = &unk_1E7731580;
  objc_copyWeak(&v14, &location);
  v13[5] = v17;
  v13[4] = completionCopy;
  PXSidebarRequestFolderImageForAssets(assetsCopy, collectionCopy, v15, v13);
}

uint64_t __90__PXSidebarImageLoader_requestFolderImageWithAssets_imageSize_traitCollection_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) beginRequestForMediaProvider:a2 mediaRequestIDs:a3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  result = [*(*(*(a1 + 40) + 8) + 40) sidebarRequestID];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __90__PXSidebarImageLoader_requestFolderImageWithAssets_imageSize_traitCollection_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained cancelRequestDetails:*(*(*(a1 + 40) + 8) + 40)];

  (*(*(a1 + 32) + 16))();
}

- (void)cancelImageRequest:(int64_t)request
{
  requestDetailsBySidebarImageRequestID = self->_requestDetailsBySidebarImageRequestID;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:request];
  v7 = [(NSMapTable *)requestDetailsBySidebarImageRequestID objectForKey:v5];

  v6 = v7;
  if (v7)
  {
    [(PXSidebarImageLoader *)self cancelRequestDetails:v7];
    v6 = v7;
  }
}

- (void)cancelRequestDetails:(id)details
{
  requestDetailsBySidebarImageRequestID = self->_requestDetailsBySidebarImageRequestID;
  v4 = MEMORY[0x1E696AD98];
  detailsCopy = details;
  v5 = [v4 numberWithInteger:{objc_msgSend(detailsCopy, "sidebarRequestID")}];
  [(NSMapTable *)requestDetailsBySidebarImageRequestID removeObjectForKey:v5];

  [detailsCopy cancel];
}

- (id)beginRequestForMediaProvider:(id)provider mediaRequestIDs:(id)ds
{
  dsCopy = ds;
  providerCopy = provider;
  v8 = [[PXSidebarImageRequestDetails alloc] initWithMediaProvider:providerCopy mediaRequestIDs:dsCopy];

  requestDetailsBySidebarImageRequestID = self->_requestDetailsBySidebarImageRequestID;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXSidebarImageRequestDetails sidebarRequestID](v8, "sidebarRequestID")}];
  [(NSMapTable *)requestDetailsBySidebarImageRequestID setObject:v8 forKey:v10];

  return v8;
}

- (PXSidebarImageLoader)init
{
  v6.receiver = self;
  v6.super_class = PXSidebarImageLoader;
  v2 = [(PXSidebarImageLoader *)&v6 init];
  if (v2)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    requestDetailsBySidebarImageRequestID = v2->_requestDetailsBySidebarImageRequestID;
    v2->_requestDetailsBySidebarImageRequestID = strongToWeakObjectsMapTable;
  }

  return v2;
}

@end