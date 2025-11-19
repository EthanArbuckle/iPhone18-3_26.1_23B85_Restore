@interface PUWrappingPXMediaProvider
- (PUWrappingPXMediaProvider)initWithWrappedMediaProvider:(id)a3;
- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestStreamForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestURLForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)cancelImageRequest:(int64_t)a3;
@end

@implementation PUWrappingPXMediaProvider

- (void)cancelImageRequest:(int64_t)a3
{
  v4 = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  [v4 cancelImageRequest:a3];
}

- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  v17 = [v14 photoKitRequestOptions];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__PUWrappingPXMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v20[3] = &unk_1E7B7F8C0;
  v21 = v13;
  v18 = v13;
  LODWORD(a5) = [v16 requestLivePhotoForAsset:v15 targetSize:a5 contentMode:v17 options:v20 resultHandler:{width, height}];

  return a5;
}

- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  v12 = [v9 photoKitRequestOptions];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__PUWrappingPXMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke;
  v15[3] = &unk_1E7B7F8E8;
  v16 = v8;
  v13 = v8;
  LODWORD(v8) = [v11 requestAnimatedImageForAsset:v10 options:v12 resultHandler:v15];

  return v8;
}

- (int64_t)requestStreamForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"PUWrappingPXMediaProvider.m" lineNumber:60 description:{@"%s is not implemented", "-[PUWrappingPXMediaProvider requestStreamForVideo:options:resultHandler:]"}];

  abort();
}

- (int64_t)requestURLForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"PUWrappingPXMediaProvider.m" lineNumber:56 description:{@"%s is not implemented", "-[PUWrappingPXMediaProvider requestURLForVideo:options:resultHandler:]"}];

  abort();
}

- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  v12 = [v9 photoKitRequestOptions];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__PUWrappingPXMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke;
  v15[3] = &unk_1E7B77098;
  v16 = v8;
  v13 = v8;
  LODWORD(v8) = [v11 requestPlayerItemForVideo:v10 options:v12 resultHandler:v15];

  return v8;
}

- (int64_t)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  v12 = [v9 photoKitRequestOptions];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PUWrappingPXMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke;
  v15[3] = &unk_1E7B7F898;
  v16 = v8;
  v13 = v8;
  LODWORD(v8) = [v11 requestImageURLForAsset:v10 options:v12 resultHandler:v15];

  return v8;
}

- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  v12 = [v9 photoKitRequestOptions];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PUWrappingPXMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke;
  v15[3] = &unk_1E7B77070;
  v16 = v8;
  v13 = v8;
  LODWORD(v8) = [v11 requestImageDataForAsset:v10 options:v12 resultHandler:v15];

  return v8;
}

- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(PUWrappingPXMediaProvider *)self wrappedMediaProvider];
  v17 = [v14 photoKitRequestOptions];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__PUWrappingPXMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v20[3] = &unk_1E7B7F870;
  v21 = v13;
  v18 = v13;
  LODWORD(a5) = [v16 requestImageForAsset:v15 targetSize:a5 contentMode:v17 options:v20 resultHandler:{width, height}];

  return a5;
}

void __97__PUWrappingPXMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v10 = a3;
  v7 = a2;
  v8 = [v7 CGImage];
  v9 = [v7 imageOrientation];

  (*(v5 + 16))(v5, v8, v9, v10);
}

- (PUWrappingPXMediaProvider)initWithWrappedMediaProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUWrappingPXMediaProvider;
  v6 = [(PUWrappingPXMediaProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedMediaProvider, a3);
  }

  return v7;
}

@end