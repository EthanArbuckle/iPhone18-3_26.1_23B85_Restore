@interface _PXAppleMusicImageLoader
- (CGSize)targetSize;
- (_PXAppleMusicImageLoader)init;
- (_PXAppleMusicImageLoader)initWithAsset:(id)asset targetSize:(CGSize)size;
- (void)_beginDownloadFromURL:(id)l;
- (void)_handleRequestData:(id)data response:(id)response error:(id)error;
- (void)_handleURLFetchFailureWithError:(id)error;
- (void)dealloc;
- (void)startWithCompletion:(id)completion;
@end

@implementation _PXAppleMusicImageLoader

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = _PXAppleMusicImageLoader;
  [(_PXAppleMusicImageLoader *)&v3 dealloc];
}

- (void)_handleURLFetchFailureWithError:(id)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  asset = [(_PXAppleMusicImageLoader *)self asset];
  v7 = [v5 initWithFormat:@"Failed to fetch artwork URL for Apple Music asset %@", asset];

  v13 = *MEMORY[0x1E696A278];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = v8;
  if (errorCopy)
  {
    v10 = [v8 mutableCopy];
    [v10 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v11 = [v10 copy];

    v9 = v11;
  }

  v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PXAudioAssetImageProviderErrorDomain" code:1 userInfo:v9];
  px_dispatch_on_main_queue();
}

- (void)_handleRequestData:(id)data response:(id)response error:(id)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  if (dataCopy)
  {
    [(_PXAppleMusicImageLoader *)self targetSize];
    v26 = *MEMORY[0x1E696E0A8];
    v27[0] = MEMORY[0x1E695E110];
    v11 = MEMORY[0x1E695DF20];
    v12 = dataCopy;
    v13 = [v11 dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v14 = CGImageSourceCreateWithData(v12, v13);

    if (v14)
    {
      PXCreateCGImageFromImageSourceWithMaxPixelSize();
    }

    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [responseCopy URL];
    v17 = [v15 initWithFormat:@"Finished download data from Apple Music artwork URL, but we could not use it to create an image: %@", v16];

    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = *MEMORY[0x1E696A278];
    v23 = v17;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v20 = [v18 initWithDomain:@"PXAudioAssetImageProviderErrorDomain" code:3 userInfo:v19];
  }

  else
  {
    if (errorCopy)
    {
      v24 = *MEMORY[0x1E696AA08];
      v25 = errorCopy;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    }

    else
    {
      v17 = 0;
    }

    v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PXAudioAssetImageProviderErrorDomain" code:4 userInfo:v17];
  }

  v21 = v20;
  px_dispatch_on_main_queue();
}

- (void)_beginDownloadFromURL:(id)l
{
  lCopy = l;
  if (self->_dataTask)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"_dataTask == nil"}];
  }

  objc_initWeak(&location, self);
  v6 = [objc_alloc(MEMORY[0x1E696AF68]) initWithURL:lCopy];
  mEMORY[0x1E696AF78] = [MEMORY[0x1E696AF78] sharedSession];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50___PXAppleMusicImageLoader__beginDownloadFromURL___block_invoke;
  v11[3] = &unk_1E77431E8;
  objc_copyWeak(&v12, &location);
  v8 = [mEMORY[0x1E696AF78] dataTaskWithRequest:v6 completionHandler:v11];
  dataTask = self->_dataTask;
  self->_dataTask = v8;

  [(NSURLSessionDataTask *)self->_dataTask resume];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

- (void)startWithCompletion:(id)completion
{
  v18[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (self->_completionHandler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"_completionHandler == nil"}];
  }

  v6 = [completionCopy copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  asset = [(_PXAppleMusicImageLoader *)self asset];
  musicAsset = [asset musicAsset];

  [(_PXAppleMusicImageLoader *)self targetSize];
  v10 = [musicAsset artworkURLForTargetPixelSize:?];
  if (v10)
  {
    [(_PXAppleMusicImageLoader *)self _beginDownloadFromURL:v10];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = *MEMORY[0x1E696A278];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unable to fetch missing artwork URL for asset without Photo Library: %@", musicAsset, v17];
    v18[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v11 initWithDomain:@"PXAudioAssetImageProviderErrorDomain" code:2 userInfo:v13];
    error = self->_error;
    self->_error = v14;

    (*(self->_completionHandler + 2))();
  }
}

- (_PXAppleMusicImageLoader)initWithAsset:(id)asset targetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = _PXAppleMusicImageLoader;
  v9 = [(_PXAppleMusicImageLoader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    v10->_targetSize.width = width;
    v10->_targetSize.height = height;
  }

  return v10;
}

- (_PXAppleMusicImageLoader)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicImageProvider.m" lineNumber:80 description:{@"%s is not available as initializer", "-[_PXAppleMusicImageLoader init]"}];

  abort();
}

@end