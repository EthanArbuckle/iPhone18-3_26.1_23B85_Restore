@interface PUMediaProvider
- (int)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (void)cancelImageRequest:(int)request;
@end

@implementation PUMediaProvider

- (void)cancelImageRequest:(int)request
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUMediaProvider.m" lineNumber:48 description:@"concrete subclass must implement"];
}

- (int)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUMediaProvider.m" lineNumber:43 description:@"concrete subclass must implement"];

  return 0;
}

- (int)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUMediaProvider.m" lineNumber:38 description:@"Concrete subclass must implement"];

  return 0;
}

- (int)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUMediaProvider.m" lineNumber:32 description:@"concrete subclass must implement"];

  return 0;
}

- (int)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUMediaProvider.m" lineNumber:27 description:@"concrete subclass must implement"];

  return 0;
}

- (int)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (handler)
  {
    v5 = MEMORY[0x1E696ABC0];
    handlerCopy = handler;
    v7 = [v5 errorWithDomain:@"PUMediaProviderErrorDomain" code:1 userInfo:0];
    v10 = *MEMORY[0x1E6978DF0];
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v8);
  }

  return 0;
}

- (int)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUMediaProvider.m" lineNumber:14 description:@"concrete subclass must implement"];

  return 0;
}

@end