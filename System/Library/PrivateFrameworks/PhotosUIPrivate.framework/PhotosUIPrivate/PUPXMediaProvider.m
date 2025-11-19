@interface PUPXMediaProvider
- (PUPXMediaProvider)init;
- (PUPXMediaProvider)initWithUnderlyingMediaProvider:(id)a3;
- (int)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)cancelImageRequest:(int)a3;
@end

@implementation PUPXMediaProvider

- (void)cancelImageRequest:(int)a3
{
  v4 = [(PUPXMediaProvider *)self underlyingMediaProvider];
  [v4 cancelImageRequest:a3];
}

- (int)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUPXMediaProvider *)self underlyingMediaProvider];
  v12 = [v11 requestAnimatedImageForAsset:v10 options:v9 resultHandler:v8];

  return v12;
}

- (int)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(PUPXMediaProvider *)self underlyingMediaProvider];
  LODWORD(a5) = [v16 requestLivePhotoForAsset:v15 targetSize:a5 contentMode:v14 options:v13 resultHandler:{width, height}];

  return a5;
}

- (int)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUPXMediaProvider *)self underlyingMediaProvider];
  v12 = [v11 requestPlayerItemForVideo:v10 options:v9 resultHandler:v8];

  return v12;
}

- (int)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUPXMediaProvider *)self underlyingMediaProvider];
  v12 = [v11 requestImageURLForAsset:v10 options:v9 resultHandler:v8];

  return v12;
}

- (int)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUPXMediaProvider *)self underlyingMediaProvider];
  v12 = [v11 requestImageDataForAsset:v10 options:v9 resultHandler:v8];

  return v12;
}

- (int)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(PUPXMediaProvider *)self underlyingMediaProvider];
  LODWORD(a5) = [v16 requestImageForAsset:v15 targetSize:a5 contentMode:v14 options:v13 resultHandler:{width, height}];

  return a5;
}

- (PUPXMediaProvider)initWithUnderlyingMediaProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUPXMediaProvider;
  v6 = [(PUPXMediaProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingMediaProvider, a3);
  }

  return v7;
}

- (PUPXMediaProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPXMediaProvider.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PUPXMediaProvider init]"}];

  abort();
}

@end