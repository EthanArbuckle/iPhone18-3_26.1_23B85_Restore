@interface VUIMediaLibraryImageLoader
+ (id)_scaledImageIdentifierWithImageIdentifier:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5;
- (VUIMediaLibraryImageLoader)init;
- (id)_imageIdentifierWithImageLoadParams:(id)a3;
- (id)imageKeyForObject:(id)a3;
- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 completionHandler:(id)a7;
- (void)_cancelAllImageLoads;
- (void)cancelLoad:(id)a3;
- (void)dealloc;
@end

@implementation VUIMediaLibraryImageLoader

- (VUIMediaLibraryImageLoader)init
{
  v6.receiver = self;
  v6.super_class = VUIMediaLibraryImageLoader;
  v2 = [(VUIMediaLibraryImageLoader *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    imageLoadOperationQueue = v2->_imageLoadOperationQueue;
    v2->_imageLoadOperationQueue = v3;

    [(NSOperationQueue *)v2->_imageLoadOperationQueue setMaxConcurrentOperationCount:3];
  }

  return v2;
}

- (void)dealloc
{
  [(VUIMediaLibraryImageLoader *)self _cancelAllImageLoads];
  v3.receiver = self;
  v3.super_class = VUIMediaLibraryImageLoader;
  [(VUIMediaLibraryImageLoader *)&v3 dealloc];
}

- (id)imageKeyForObject:(id)a3
{
  if (a3)
  {
    v4 = [(VUIMediaLibraryImageLoader *)self _imageLoadParamsForImageLoaderObject:?];
    v5 = [(VUIMediaLibraryImageLoader *)self _imageIdentifierWithImageLoadParams:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)loadImageForObject:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5 imageDirection:(int64_t)a6 completionHandler:(id)a7
{
  v8 = a5;
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v13 = a7;
  if (!v12)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"object"}];
  }

  v14 = [(VUIMediaLibraryImageLoader *)self _imageLoadParamsForImageLoaderObject:v12];
  v15 = [(VUIMediaLibraryImageLoader *)self _imageIdentifierWithImageLoadParams:v14];
  v16 = [objc_opt_class() _scaledImageIdentifierWithImageIdentifier:v15 scaleToSize:v8 cropToFit:{width, height}];
  v17 = self;
  objc_sync_enter(v17);
  v18 = [(VUIMediaLibraryImageLoader *)v17 imageLoadContextsByImageIdentifier];
  v19 = [v18 objectForKey:v16];

  if (v19)
  {
    v20 = [(VUIImageLoadContext *)v19 imageLoadOperation];
  }

  else
  {
    v20 = [(VUIMediaLibraryImageLoader *)v17 _imageLoadOperationWithParams:v14 scaleToSize:v8 cropToFit:width, height];
    v19 = objc_alloc_init(VUIImageLoadContext);
    [(VUIImageLoadContext *)v19 setImageLoadOperation:v20];
    v21 = [(VUIMediaLibraryImageLoader *)v17 imageLoadContextsByImageIdentifier];
    [v21 setObject:v19 forKey:v16];

    v22 = [(VUIMediaLibraryImageLoader *)v17 imageLoadOperationQueue];
    [v22 addOperation:v20];
  }

  [(VUIImageLoadContext *)v19 setRequestCount:[(VUIImageLoadContext *)v19 requestCount]+ 1];

  objc_sync_exit(v17);
  if (v20)
  {
    objc_initWeak(location, v17);
    v23 = MEMORY[0x1E696AAE0];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __104__VUIMediaLibraryImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke;
    v40[3] = &unk_1E872F038;
    objc_copyWeak(&v42, location);
    v41 = v16;
    v24 = [v23 blockOperationWithBlock:v40];
    [v24 addDependency:v20];
    v25 = [(VUIMediaLibraryImageLoader *)v17 imageLoadOperationQueue];
    [v25 addOperation:v24];

    v26 = MEMORY[0x1E696AAE0];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __104__VUIMediaLibraryImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke_2;
    v37[3] = &unk_1E872DC10;
    v39 = v13;
    v27 = v20;
    v38 = v27;
    v28 = [v26 blockOperationWithBlock:v37];
    [v28 addDependency:v27];
    v29 = [MEMORY[0x1E696ADC8] mainQueue];
    [v29 addOperation:v28];

    objc_destroyWeak(&v42);
    objc_destroyWeak(location);
  }

  else if (v13)
  {
    v30 = MEMORY[0x1E696AAE0];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __104__VUIMediaLibraryImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke_3;
    v35[3] = &unk_1E872D7E0;
    v36 = v13;
    v31 = [v30 blockOperationWithBlock:v35];
    v32 = [MEMORY[0x1E696ADC8] mainQueue];
    [v32 addOperation:v31];
  }

  v33 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:v20];

  return v33;
}

void __104__VUIMediaLibraryImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = [v3 imageLoadContextsByImageIdentifier];
    v5 = [v4 objectForKey:*(a1 + 32)];

    if (v5)
    {
      v6 = [v5 requestCount] - 1;
      [v5 setRequestCount:v6];
      if (!v6)
      {
        v7 = [v3 imageLoadContextsByImageIdentifier];
        [v7 removeObjectForKey:*(a1 + 32)];
      }
    }

    objc_sync_exit(v3);
    WeakRetained = v8;
  }
}

void __104__VUIMediaLibraryImageLoader_loadImageForObject_scaleToSize_cropToFit_imageDirection_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) && ([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v3 = [*(a1 + 32) image];
    [*(a1 + 32) scalingResult];
    v2 = [*(a1 + 32) error];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)cancelLoad:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must be an instance of %@", @"requestToken", @"[VUIAsynchronousWorkToken class]"}];
  }

  [v3 cancel];
}

- (void)_cancelAllImageLoads
{
  v2 = [(VUIMediaLibraryImageLoader *)self imageLoadOperationQueue];
  [v2 cancelAllOperations];
}

- (id)_imageIdentifierWithImageLoadParams:(id)a3
{
  v4 = [a3 imageIdentifier];
  if (v4)
  {
    v5 = [(VUIMediaLibraryImageLoader *)self _imageLoaderIdentifier];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v5, v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_scaledImageIdentifierWithImageIdentifier:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v8 = MEMORY[0x1E695DF70];
  v9 = a3;
  v10 = objc_alloc_init(v8);
  [v10 addObject:v9];

  if (width != 0.0 && height != 0.0)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lux%lu", width, height];
    [v10 addObject:v11];
  }

  if (v5)
  {
    [v10 addObject:@"crop"];
  }

  v12 = [v10 componentsJoinedByString:@"_"];

  return v12;
}

@end