@interface PXUIMediaProvider
- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
@end

@implementation PXUIMediaProvider

- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = NSStringFromSelector(a2);
  [v9 handleFailureInMethod:a2 object:self file:@"PXUIMediaProvider.m" lineNumber:43 description:{@"Concrete subclass must implement %@", v10}];

  return 0;
}

- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__PXUIMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v17[3] = &unk_1E7BB57B8;
  v18 = v13;
  v14 = v13;
  v15 = [(PXUIMediaProvider *)self requestImageForAsset:a3 targetSize:a5 contentMode:a6 options:v17 resultHandler:width, height];

  return v15;
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