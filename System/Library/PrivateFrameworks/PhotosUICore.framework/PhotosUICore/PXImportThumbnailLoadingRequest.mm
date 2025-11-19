@interface PXImportThumbnailLoadingRequest
- (PXImportItemViewModel)importItem;
- (PXImportThumbnailLoadingRequest)initWithImportItem:(id)a3 requestID:(int64_t)a4 requestSize:(unint64_t)a5 completionBlock:(id)a6;
@end

@implementation PXImportThumbnailLoadingRequest

- (PXImportItemViewModel)importItem
{
  WeakRetained = objc_loadWeakRetained(&self->_importItem);

  return WeakRetained;
}

- (PXImportThumbnailLoadingRequest)initWithImportItem:(id)a3 requestID:(int64_t)a4 requestSize:(unint64_t)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = PXImportThumbnailLoadingRequest;
  v12 = [(PXImportThumbnailLoadingRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_importItem, v10);
    v13->_requestID = a4;
    v13->_requestSize = a5;
    v14 = [v11 copy];
    completionBlock = v13->_completionBlock;
    v13->_completionBlock = v14;
  }

  return v13;
}

@end