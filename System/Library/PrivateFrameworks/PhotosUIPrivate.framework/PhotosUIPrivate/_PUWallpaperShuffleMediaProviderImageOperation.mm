@interface _PUWallpaperShuffleMediaProviderImageOperation
- (_PUWallpaperShuffleMediaProviderImageOperation)initWithSegmentationOperation:(id)a3 requestDescriptor:(id)a4 resultHandler:(id)a5;
- (void)_handleRenderResponse:(id)a3;
- (void)cancel;
- (void)px_start;
@end

@implementation _PUWallpaperShuffleMediaProviderImageOperation

- (void)_handleRenderResponse:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v27 = 0;
  v4 = [a3 result:&v27];
  v5 = v27;
  v6 = v5;
  if (v4)
  {
    v7 = MEMORY[0x1E69B3B10];
    v8 = [v4 image];
    v9 = [v7 newCGImageFromBufferImage:v8];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v28 = *MEMORY[0x1E6978DF0];
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUWallpaperShuffleMediaProviderError" code:2 userInfo:0];
      v29 = v13;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    }

    v14 = [objc_alloc(MEMORY[0x1E69C3390]) initWithCGImage:v9];
    resultImage = self->_resultImage;
    self->_resultImage = v14;
LABEL_10:

    v16 = v9;
    goto LABEL_11;
  }

  v32 = *MEMORY[0x1E6978DF0];
  v11 = MEMORY[0x1E696ABC0];
  if (v5)
  {
    v30 = *MEMORY[0x1E696AA08];
    v31 = v5;
    resultImage = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  }

  else
  {
    resultImage = 0;
  }

  v15 = [v11 errorWithDomain:@"PUWallpaperShuffleMediaProviderError" code:2 userInfo:resultImage];
  v33[0] = v15;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];

  v9 = 0;
  v16 = 0;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = [(_PUWallpaperShuffleMediaProviderImageOperation *)self requestDescriptor];
  v18 = [v17 options];
  v19 = [v18 resultHandlerQueue];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = MEMORY[0x1E69E96A0];
    v22 = MEMORY[0x1E69E96A0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___PUWallpaperShuffleMediaProviderImageOperation__handleRenderResponse___block_invoke;
  block[3] = &unk_1E7B7F350;
  v25 = v10;
  v26 = v16;
  block[4] = self;
  v23 = v10;
  dispatch_async(v21, block);
}

- (void)px_start
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (![(_PUWallpaperShuffleMediaProviderImageOperation *)self isCancelled])
  {
    v4 = [(_PUWallpaperShuffleMediaProviderImageOperation *)self segmentationLoadingOperation];
    if (([v4 isFinished] & 1) == 0)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleMediaProvider.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"segmentationOperation.isFinished"}];
    }

    v5 = [v4 segmentationItem];
    v6 = v5;
    if (!v5)
    {
      v13 = [v4 error];
      v7 = v13;
      v14 = MEMORY[0x1E696ABC0];
      if (v13)
      {
        v25 = *MEMORY[0x1E696AA08];
        v26[0] = v13;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      }

      else
      {
        v15 = 0;
      }

      v19 = [v14 errorWithDomain:@"PUWallpaperShuffleMediaProviderError" code:1 userInfo:v15];
      error = self->_error;
      self->_error = v19;

      if (v7)
      {
      }

      [(PXAsyncOperation *)self px_finishIfPossible];
      goto LABEL_20;
    }

    v7 = [v5 composition];
    v8 = [objc_alloc(MEMORY[0x1E69B39A0]) initWithComposition:v7];
    v9 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
    [v8 setPriority:v9];

    objc_storeStrong(&self->_renderRequest, v8);
    v10 = [(_PUWallpaperShuffleMediaProviderImageOperation *)self requestDescriptor];
    v11 = [v10 contentMode];

    if (v11)
    {
      if (v11 != 1)
      {
LABEL_15:
        objc_initWeak(&location, self);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __58___PUWallpaperShuffleMediaProviderImageOperation_px_start__block_invoke;
        v22[3] = &unk_1E7B7DC10;
        objc_copyWeak(&v23, &location);
        [v8 submit:v22];
        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);

LABEL_20:
        return;
      }

      v12 = 0x1E69B3A68;
    }

    else
    {
      v12 = 0x1E69B3A78;
    }

    v16 = objc_alloc(*v12);
    v17 = [(_PUWallpaperShuffleMediaProviderImageOperation *)self requestDescriptor];
    [v17 targetSize];
    v18 = [v16 initWithTargetSize:?];
    [v8 setScalePolicy:v18];

    goto LABEL_15;
  }

  [(PXAsyncOperation *)self px_finishIfPossible];
}

- (void)cancel
{
  v3 = [(NUBufferRenderRequest *)self->_renderRequest renderContext];
  [v3 cancelAllRequests];

  v4.receiver = self;
  v4.super_class = _PUWallpaperShuffleMediaProviderImageOperation;
  [(PXAsyncOperation *)&v4 cancel];
}

- (_PUWallpaperShuffleMediaProviderImageOperation)initWithSegmentationOperation:(id)a3 requestDescriptor:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _PUWallpaperShuffleMediaProviderImageOperation;
  v12 = [(PXAsyncOperation *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestDescriptor, a4);
    v14 = [v11 copy];
    resultHandler = v13->_resultHandler;
    v13->_resultHandler = v14;

    objc_storeStrong(&v13->_segmentationLoadingOperation, a3);
    [(_PUWallpaperShuffleMediaProviderImageOperation *)v13 addDependency:v13->_segmentationLoadingOperation];
  }

  return v13;
}

@end