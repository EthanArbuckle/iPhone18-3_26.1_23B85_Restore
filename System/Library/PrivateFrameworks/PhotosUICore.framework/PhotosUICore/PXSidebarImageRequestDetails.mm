@interface PXSidebarImageRequestDetails
- (PXSidebarImageRequestDetails)init;
- (PXSidebarImageRequestDetails)initWithMediaProvider:(id)a3 mediaRequestIDs:(id)a4;
- (void)cancel;
@end

@implementation PXSidebarImageRequestDetails

- (void)cancel
{
  v3 = [(PXSidebarImageRequestDetails *)self mediaRequestIDs];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__PXSidebarImageRequestDetails_cancel__block_invoke;
  v4[3] = &unk_1E774C138;
  v4[4] = self;
  [v3 enumerateIndexesUsingBlock:v4];
}

void __38__PXSidebarImageRequestDetails_cancel__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) mediaProvider];
  [v3 cancelImageRequest:a2];
}

- (PXSidebarImageRequestDetails)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSidebarImageLoader.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXSidebarImageRequestDetails init]"}];

  abort();
}

- (PXSidebarImageRequestDetails)initWithMediaProvider:(id)a3 mediaRequestIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXSidebarImageRequestDetails;
  v9 = [(PXSidebarImageRequestDetails *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_sidebarRequestID = atomic_fetch_add(_nextRequestID, 1u);
    objc_storeStrong(&v9->_mediaProvider, a3);
    objc_storeStrong(&v10->_mediaRequestIDs, a4);
  }

  return v10;
}

@end