@interface PXVideoFormatMetadataProviderObjc
- (PXVideoFormatMetadataProviderObjc)initWithImageManager:(id)manager;
- (void)cancelActiveRequest;
- (void)requestVideoMetadataForItem:(id)item processingQueue:(id)queue callbackQueue:(id)callbackQueue completion:(id)completion;
@end

@implementation PXVideoFormatMetadataProviderObjc

- (void)requestVideoMetadataForItem:(id)item processingQueue:(id)queue callbackQueue:(id)callbackQueue completion:(id)completion
{
  completionCopy = completion;
  callbackQueueCopy = callbackQueue;
  queueCopy = queue;
  itemCopy = item;
  metadataProvider = [(PXVideoFormatMetadataProviderObjc *)self metadataProvider];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __106__PXVideoFormatMetadataProviderObjc_requestVideoMetadataForItem_processingQueue_callbackQueue_completion___block_invoke;
  v16[3] = &unk_1E772FEB0;
  v17 = completionCopy;
  v15 = completionCopy;
  [metadataProvider requestVideoMetadataFor:itemCopy processingQueue:queueCopy callbackQueue:callbackQueueCopy completion:v16];
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
  metadataProvider = [(PXVideoFormatMetadataProviderObjc *)self metadataProvider];
  [metadataProvider cancelActiveRequest];
}

- (PXVideoFormatMetadataProviderObjc)initWithImageManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PXVideoFormatMetadataProviderObjc;
  v5 = [(PXVideoFormatMetadataProviderObjc *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC12PhotosUICore29PXVideoFormatMetadataProvider alloc] initWithImageManager:managerCopy];
    metadataProvider = v5->_metadataProvider;
    v5->_metadataProvider = v6;
  }

  return v5;
}

@end