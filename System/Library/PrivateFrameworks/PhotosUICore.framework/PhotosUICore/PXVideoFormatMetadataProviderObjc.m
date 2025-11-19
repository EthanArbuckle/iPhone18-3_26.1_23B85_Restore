@interface PXVideoFormatMetadataProviderObjc
- (PXVideoFormatMetadataProviderObjc)initWithImageManager:(id)a3;
- (void)cancelActiveRequest;
- (void)requestVideoMetadataForItem:(id)a3 processingQueue:(id)a4 callbackQueue:(id)a5 completion:(id)a6;
@end

@implementation PXVideoFormatMetadataProviderObjc

- (void)requestVideoMetadataForItem:(id)a3 processingQueue:(id)a4 callbackQueue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(PXVideoFormatMetadataProviderObjc *)self metadataProvider];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __106__PXVideoFormatMetadataProviderObjc_requestVideoMetadataForItem_processingQueue_callbackQueue_completion___block_invoke;
  v16[3] = &unk_1E772FEB0;
  v17 = v10;
  v15 = v10;
  [v14 requestVideoMetadataFor:v13 processingQueue:v12 callbackQueue:v11 completion:v16];
}

void __106__PXVideoFormatMetadataProviderObjc_requestVideoMetadataForItem_processingQueue_callbackQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else if (v7)
  {
    v6 = [[PXVideoFormatMetadataObjc alloc] initWithMetadata:v7];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)cancelActiveRequest
{
  v2 = [(PXVideoFormatMetadataProviderObjc *)self metadataProvider];
  [v2 cancelActiveRequest];
}

- (PXVideoFormatMetadataProviderObjc)initWithImageManager:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXVideoFormatMetadataProviderObjc;
  v5 = [(PXVideoFormatMetadataProviderObjc *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC12PhotosUICore29PXVideoFormatMetadataProvider alloc] initWithImageManager:v4];
    metadataProvider = v5->_metadataProvider;
    v5->_metadataProvider = v6;
  }

  return v5;
}

@end