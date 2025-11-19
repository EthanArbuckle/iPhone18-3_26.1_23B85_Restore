@interface PXFileBackedUIMediaProvider
- (PXFileBackedUIMediaProvider)initWithCachingEnabled:(BOOL)a3 directCGImageLoadingEnabled:(BOOL)a4;
- (id)_createImageForKey:(id)a3 error:(id *)a4;
- (id)_resizeImageAtURL:(id)a3 imageUTI:(id)a4 targetSize:(CGSize)a5 preferHDR:(BOOL)a6 bakeInOrientation:(BOOL)a7 error:(id *)a8;
- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)_handleImageCreated:(id)a3 imageKey:(id)a4;
@end

@implementation PXFileBackedUIMediaProvider

- (void)_handleImageCreated:(id)a3 imageKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7 && [(PXFileBackedUIMediaProvider *)self isCachingEnabled])
  {
    [(NSCache *)self->_cache setObject:v7 forKey:v6];
  }
}

- (id)_resizeImageAtURL:(id)a3 imageUTI:(id)a4 targetSize:(CGSize)a5 preferHDR:(BOOL)a6 bakeInOrientation:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v10 = a6;
  height = a5.height;
  width = a5.width;
  v30[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = v15;
  if (v15)
  {
    v29 = *MEMORY[0x1E696E118];
    v30[0] = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  }

  else
  {
    v17 = 0;
  }

  v18 = CGImageSourceCreateWithURL(v14, v17);
  if (!v18)
  {
    v27 = 0;
    if (!a8)
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
  v24 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  [v22 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696E000]];

  if (v10)
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

  if (a8)
  {
LABEL_16:
    if (!v27)
    {
      *a8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXFileBackedUIMediaProviderErrorDomain" code:-100 userInfo:0];
    }
  }

LABEL_18:

  return v27;
}

- (id)_createImageForKey:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 url];
  v7 = [v6 pathExtension];
  if (v7)
  {
    v8 = MEMORY[0x1E6982C40];
    v9 = [v6 pathExtension];
    v10 = [v8 typeWithFilenameExtension:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 identifier];
  [v5 size];
  v14 = -[PXFileBackedUIMediaProvider _resizeImageAtURL:imageUTI:targetSize:preferHDR:bakeInOrientation:error:](self, "_resizeImageAtURL:imageUTI:targetSize:preferHDR:bakeInOrientation:error:", v6, v11, [v5 preferHDR], 1, 0, v12, v13);

  [(PXFileBackedUIMediaProvider *)self _handleImageCreated:v14 imageKey:v5];

  return v14;
}

- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = v12;
  v16 = [PXFileBackedImageKey alloc];
  v17 = [v15 url];
  v18 = -[PXFileBackedImageKey initWithUrl:size:preferHDR:](v16, "initWithUrl:size:preferHDR:", v17, [v13 preferHDR], width, height);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PXFileBackedUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7BB79E8;
  v19 = v14;
  v37 = v19;
  v20 = _Block_copy(aBlock);
  v21 = [(NSCache *)self->_cache objectForKey:v18];
  if (v21)
  {
    v20[2](v20, v21, 0);
  }

  else if ([v13 isSynchronous])
  {
    v35 = 0;
    v22 = [(PXFileBackedUIMediaProvider *)self _createImageForKey:v18 error:&v35];
    v23 = v35;
    (v20)[2](v20, v22, v23);
  }

  else
  {
    v24 = [v15 previewImage];

    if (v24)
    {
      v25 = [v15 previewImage];
      v20[2](v20, v25, 0);
    }

    objc_initWeak(&location, self);
    v26 = MEMORY[0x1E696AAE0];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __97__PXFileBackedUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2;
    v29[3] = &unk_1E7BB7A38;
    objc_copyWeak(&v33, &location);
    v30 = v18;
    v31 = v13;
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

- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  if (![(PXFileBackedUIMediaProvider *)self isDirectCGImageLoadingEnabled])
  {
    v35.receiver = self;
    v35.super_class = PXFileBackedUIMediaProvider;
    v24 = [(PXUIMediaProvider *)&v35 requestCGImageForAsset:v14 targetSize:a5 contentMode:v15 options:v16 resultHandler:width, height];
    goto LABEL_9;
  }

  v17 = v14;
  if (!v17)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    [v26 handleFailureInMethod:a2 object:self file:@"PXFileBackedUIMediaProvider.m" lineNumber:104 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v28}];
LABEL_12:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = objc_opt_class();
    v28 = NSStringFromClass(v29);
    v30 = [v17 px_descriptionForAssertionMessage];
    [v26 handleFailureInMethod:a2 object:self file:@"PXFileBackedUIMediaProvider.m" lineNumber:104 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v28, v30}];

    goto LABEL_12;
  }

LABEL_4:
  v18 = [v17 url];
  v19 = CGImageSourceCreateWithURL(v18, 0);

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v19, 0, 0);
  CFRelease(v19);
  v21 = [v15 resultHandlerQueue];

  if (v21)
  {
    v22 = [v15 resultHandlerQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__PXFileBackedUIMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
    block[3] = &unk_1E7BB88F8;
    v23 = v34;
    v34[0] = v16;
    v34[1] = ImageAtIndex;
    dispatch_async(v22, block);
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __99__PXFileBackedUIMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2;
    v31[3] = &unk_1E7BB88F8;
    v23 = v32;
    v32[0] = v16;
    v32[1] = ImageAtIndex;
    px_dispatch_on_main_queue(v31);
  }

  v24 = 0;
LABEL_9:

  return v24;
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

- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v6 = MEMORY[0x1E69880B0];
  v7 = a5;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v8 url];

  v11 = [v9 initWithURL:v10];
  v7[2](v7, v11, 0);

  return 0;
}

- (PXFileBackedUIMediaProvider)initWithCachingEnabled:(BOOL)a3 directCGImageLoadingEnabled:(BOOL)a4
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

    v6->_cachingEnabled = a3;
    v6->_directCGImageLoadingEnabled = a4;
  }

  return v6;
}

@end