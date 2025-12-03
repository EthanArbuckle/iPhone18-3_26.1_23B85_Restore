@interface PXUIMediaProvider
- (int64_t)requestCGImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
@end

@implementation PXUIMediaProvider

- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIMediaProvider.m" lineNumber:43 description:{@"Concrete subclass must implement %@", v10}];

  return 0;
}

- (int64_t)requestCGImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__PXUIMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v17[3] = &unk_1E7BB57B8;
  v18 = handlerCopy;
  v14 = handlerCopy;
  height = [(PXUIMediaProvider *)self requestImageForAsset:asset targetSize:mode contentMode:options options:v17 resultHandler:width, height];

  return height;
}

void __89__PXUIMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [v7 imageOrientation];
  if (v7)
  {
    v6 = CGImageRetain([v7 CGImage]);
    CFAutorelease(v6);
  }

  (*(*(a1 + 32) + 16))();
}

@end