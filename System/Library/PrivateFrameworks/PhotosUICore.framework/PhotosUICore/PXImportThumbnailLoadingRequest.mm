@interface PXImportThumbnailLoadingRequest
- (PXImportItemViewModel)importItem;
- (PXImportThumbnailLoadingRequest)initWithImportItem:(id)item requestID:(int64_t)d requestSize:(unint64_t)size completionBlock:(id)block;
@end

@implementation PXImportThumbnailLoadingRequest

- (PXImportItemViewModel)importItem
{
  WeakRetained = objc_loadWeakRetained(&self->_importItem);

  return WeakRetained;
}

- (PXImportThumbnailLoadingRequest)initWithImportItem:(id)item requestID:(int64_t)d requestSize:(unint64_t)size completionBlock:(id)block
{
  itemCopy = item;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = PXImportThumbnailLoadingRequest;
  v12 = [(PXImportThumbnailLoadingRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_importItem, itemCopy);
    v13->_requestID = d;
    v13->_requestSize = size;
    v14 = [blockCopy copy];
    completionBlock = v13->_completionBlock;
    v13->_completionBlock = v14;
  }

  return v13;
}

@end