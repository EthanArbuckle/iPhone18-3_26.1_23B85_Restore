@interface PXFileBackedUIMediaProvider
- (PXFileBackedUIMediaProvider)initWithCachingEnabled:(BOOL)enabled directCGImageLoadingEnabled:(BOOL)loadingEnabled;
- (id)_createImageForKey:(id)key error:(id *)error;
- (id)_resizeImageAtURL:(id)l imageUTI:(id)i targetSize:(CGSize)size preferHDR:(BOOL)r bakeInOrientation:(BOOL)orientation error:(id *)error;
- (int64_t)requestCGImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (void)_handleImageCreated:(id)created imageKey:(id)key;
@end

@implementation PXFileBackedUIMediaProvider

- (void)_handleImageCreated:(id)created imageKey:(id)key
{
  createdCopy = created;
  keyCopy = key;
  if (createdCopy && [(PXFileBackedUIMediaProvider *)self isCachingEnabled])
  {
    [(NSCache *)self->_cache setObject:createdCopy forKey:keyCopy];
  }
}

- (id)_resizeImageAtURL:(id)l imageUTI:(id)i targetSize:(CGSize)size preferHDR:(BOOL)r bakeInOrientation:(BOOL)orientation error:(id *)error
{
  orientationCopy = orientation;
  rCopy = r;
  height = size.height;
  width = size.width;
  v30[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  iCopy = i;
  v16 = iCopy;
  if (iCopy)
  {
    v29 = *MEMORY[0x1E696E118];
    v30[0] = iCopy;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  }

  else
  {
    v17 = 0;
  }

  v18 = CGImageSourceCreateWithURL(lCopy, v17);
  if (!v18)
  {
    v27 = 0;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v19 = v18;
  if (width >= height)
  {
    v20 = width;
  }

  else
  {
    v20 = height;
  }

  v21 = v20;
  v22 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:v21];
  [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x1E696E100]];

  [v22 setObject:*MEMORY[0x1E695E4D0] forKeyedSubscript:*MEMORY[0x1E696DFE8]];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:orientationCopy];
  [v22 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696E000]];

  if (rCopy)
  {
    [v22 setObject:*MEMORY[0x1E696E028] forKeyedSubscript:*MEMORY[0x1E696E018]];
  }

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v19, 0, v22);
  if (ThumbnailAtIndex)
  {
    v26 = ThumbnailAtIndex;
    v27 = [MEMORY[0x1E69DCAB8] imageWithCGImage:ThumbnailAtIndex];
    CGImageRelease(v26);
  }

  else
  {
    v27 = 0;
  }

  CFRelease(v19);

  if (error)
  {
LABEL_16:
    if (!v27)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXFileBackedUIMediaProviderErrorDomain" code:-100 userInfo:0];
    }
  }

LABEL_18:

  return v27;
}

- (id)_createImageForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v6 = [keyCopy url];
  pathExtension = [v6 pathExtension];
  if (pathExtension)
  {
    v8 = MEMORY[0x1E6982C40];
    pathExtension2 = [v6 pathExtension];
    v10 = [v8 typeWithFilenameExtension:pathExtension2];
  }

  else
  {
    v10 = 0;
  }

  identifier = [v10 identifier];
  [keyCopy size];
  v14 = -[PXFileBackedUIMediaProvider _resizeImageAtURL:imageUTI:targetSize:preferHDR:bakeInOrientation:error:](self, "_resizeImageAtURL:imageUTI:targetSize:preferHDR:bakeInOrientation:error:", v6, identifier, [keyCopy preferHDR], 1, 0, v12, v13);

  [(PXFileBackedUIMediaProvider *)self _handleImageCreated:v14 imageKey:keyCopy];

  return v14;
}

- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  v15 = assetCopy;
  v16 = [PXFileBackedImageKey alloc];
  v17 = [v15 url];
  v18 = -[PXFileBackedImageKey initWithUrl:size:preferHDR:](v16, "initWithUrl:size:preferHDR:", v17, [optionsCopy preferHDR], width, height);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PXFileBackedUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7BB79E8;
  v19 = handlerCopy;
  v37 = v19;
  v20 = _Block_copy(aBlock);
  v21 = [(NSCache *)self->_cache objectForKey:v18];
  if (v21)
  {
    v20[2](v20, v21, 0);
  }

  else if ([optionsCopy isSynchronous])
  {
    v35 = 0;
    v22 = [(PXFileBackedUIMediaProvider *)self _createImageForKey:v18 error:&v35];
    v23 = v35;
    (v20)[2](v20, v22, v23);
  }

  else
  {
    previewImage = [v15 previewImage];

    if (previewImage)
    {
      previewImage2 = [v15 previewImage];
      v20[2](v20, previewImage2, 0);
    }

    objc_initWeak(&location, self);
    v26 = MEMORY[0x1E696AAE0];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __97__PXFileBackedUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2;
    v29[3] = &unk_1E7BB7A38;
    objc_copyWeak(&v33, &location);
    v30 = v18;
    v31 = optionsCopy;
    v32 = v20;
    v27 = [v26 blockOperationWithBlock:v29];
    [(NSOperationQueue *)self->_queue addOperation:v27];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return 0;
}

void __97__PXFileBackedUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v10 = @"PHImageErrorKey";
    v11[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v8);
  }
}

void __97__PXFileBackedUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v22 = 0;
  v4 = [WeakRetained _createImageForKey:v3 error:&v22];
  v5 = v22;

  v6 = [*(a1 + 40) resultHandlerQueue];
  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PXFileBackedUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_3;
    block[3] = &unk_1E7BB7A10;
    v7 = &v21;
    v8 = *(a1 + 48);
    v9 = &v19;
    v21 = v8;
    v19 = v4;
    v10 = &v20;
    v20 = v5;
    v11 = v4;
    dispatch_async(v6, block);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__PXFileBackedUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_4;
    v14[3] = &unk_1E7BB7A10;
    v7 = &v17;
    v12 = *(a1 + 48);
    v9 = &v15;
    v17 = v12;
    v15 = v4;
    v10 = &v16;
    v16 = v5;
    v13 = v4;
    px_dispatch_on_main_queue(v14);
  }
}

- (int64_t)requestCGImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  if (![(PXFileBackedUIMediaProvider *)self isDirectCGImageLoadingEnabled])
  {
    v35.receiver = self;
    v35.super_class = PXFileBackedUIMediaProvider;
    height = [(PXUIMediaProvider *)&v35 requestCGImageForAsset:assetCopy targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:width, height];
    goto LABEL_9;
  }

  v17 = assetCopy;
  if (!v17)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFileBackedUIMediaProvider.m" lineNumber:104 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v28}];
LABEL_12:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = objc_opt_class();
    v28 = NSStringFromClass(v29);
    px_descriptionForAssertionMessage = [v17 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFileBackedUIMediaProvider.m" lineNumber:104 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v28, px_descriptionForAssertionMessage}];

    goto LABEL_12;
  }

LABEL_4:
  v18 = [v17 url];
  v19 = CGImageSourceCreateWithURL(v18, 0);

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v19, 0, 0);
  CFRelease(v19);
  resultHandlerQueue = [optionsCopy resultHandlerQueue];

  if (resultHandlerQueue)
  {
    resultHandlerQueue2 = [optionsCopy resultHandlerQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__PXFileBackedUIMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
    block[3] = &unk_1E7BB88F8;
    v23 = v34;
    v34[0] = handlerCopy;
    v34[1] = ImageAtIndex;
    dispatch_async(resultHandlerQueue2, block);
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __99__PXFileBackedUIMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2;
    v31[3] = &unk_1E7BB88F8;
    v23 = v32;
    v32[0] = handlerCopy;
    v32[1] = ImageAtIndex;
    px_dispatch_on_main_queue(v31);
  }

  height = 0;
LABEL_9:

  return height;
}

void __99__PXFileBackedUIMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  CGImageRelease(v2);
}

void __99__PXFileBackedUIMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  CGImageRelease(v2);
}

- (int64_t)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  v6 = MEMORY[0x1E69880B0];
  handlerCopy = handler;
  videoCopy = video;
  v9 = [v6 alloc];
  v10 = [videoCopy url];

  v11 = [v9 initWithURL:v10];
  handlerCopy[2](handlerCopy, v11, 0);

  return 0;
}

- (PXFileBackedUIMediaProvider)initWithCachingEnabled:(BOOL)enabled directCGImageLoadingEnabled:(BOOL)loadingEnabled
{
  v12.receiver = self;
  v12.super_class = PXFileBackedUIMediaProvider;
  v6 = [(PXFileBackedUIMediaProvider *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    queue = v6->_queue;
    v6->_queue = v7;

    [(NSOperationQueue *)v6->_queue setMaxConcurrentOperationCount:4];
    [(NSOperationQueue *)v6->_queue setQualityOfService:25];
    v9 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v6->_cache;
    v6->_cache = v9;

    v6->_cachingEnabled = enabled;
    v6->_directCGImageLoadingEnabled = loadingEnabled;
  }

  return v6;
}

@end