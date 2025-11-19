@interface VUIPlistMediaLibrary
- (VUIPlistMediaLibrary)initWithIdentifier:(id)a3 type:(unint64_t)a4 manager:(id)a5;
- (VUIPlistMediaLibrary)initWithURL:(id)a3 manager:(id)a4;
- (id)_imageLoadOperationWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5;
- (id)_imageLoadParamsForImageLoaderObject:(id)a3;
- (id)_imageLoaderIdentifier;
- (id)enqueueFetchRequests:(id)a3 completionHandler:(id)a4;
- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)a3;
- (id)saveMediaEntity:(id)a3 completionHandler:(id)a4;
- (void)_enqueueProcessingBlock:(id)a3;
- (void)dealloc;
@end

@implementation VUIPlistMediaLibrary

- (VUIPlistMediaLibrary)initWithURL:(id)a3 manager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[VUIPlistMediaLibraryIdentifier alloc] initWithURL:v6];
  v18.receiver = self;
  v18.super_class = VUIPlistMediaLibrary;
  v9 = [(VUIMediaLibrary *)&v18 initWithIdentifier:v8 type:0 manager:v7];

  if (v9)
  {
    v10 = [[VUIPlistMediaDatabase alloc] initWithURL:v6];
    database = v9->_database;
    v9->_database = v10;

    v12 = dispatch_queue_create("com.apple.videosui.VUIPlistMediaLibrary.serialProcessingQueue", 0);
    serialProcessingDispatchQueue = v9->_serialProcessingDispatchQueue;
    v9->_serialProcessingDispatchQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    serialOperationQueue = v9->_serialOperationQueue;
    v9->_serialOperationQueue = v14;

    [(NSOperationQueue *)v9->_serialOperationQueue setMaxConcurrentOperationCount:1];
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v9 selector:sel__handleMediaDatabaseContentsDidChangeNotification_ name:@"VUIPlistMediaDatabaseContentsDidChangeNotification" object:v9->_database];
  }

  return v9;
}

- (VUIPlistMediaLibrary)initWithIdentifier:(id)a3 type:(unint64_t)a4 manager:(id)a5
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The %@ initializer is not available.", v8}];

  return 0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIPlistMediaLibrary;
  [(VUIMediaLibraryImageLoader *)&v4 dealloc];
}

- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"completionHandler"}];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__34;
  v15 = __Block_byref_object_dispose__34;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__VUIPlistMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8737080;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(VUIPlistMediaLibrary *)self _enqueueProcessingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __78__VUIPlistMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [VUIPlistMediaItemEntityTypesOperation alloc];
  v5 = [v3 database];
  v6 = [(VUIPlistMediaItemEntityTypesOperation *)v4 initWithDatabase:v5];

  v7 = MEMORY[0x1E696AAE0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__VUIPlistMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_2;
  v16[3] = &unk_1E872DF40;
  v17 = v3;
  v18 = v6;
  v19 = *(a1 + 32);
  v8 = v6;
  v9 = v3;
  v10 = [v7 blockOperationWithBlock:v16];
  [v10 addDependency:v8];
  v11 = [v9 serialOperationQueue];
  [v11 addOperation:v8];

  v12 = [v9 serialOperationQueue];
  [v12 addOperation:v10];

  v13 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:v8];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void __78__VUIPlistMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_2(id *a1)
{
  v2 = [a1[4] manager];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__VUIPlistMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_3;
  v3[3] = &unk_1E872E580;
  v4 = a1[5];
  v5 = a1[6];
  [v2 _enqueueCompletionQueueBlock:v3];
}

void __78__VUIPlistMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = VUIErrorCancelled();
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) response];
    v2 = [*(a1 + 32) error];
  }

  (*(*(a1 + 40) + 16))();
}

- (id)enqueueFetchRequests:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"completionHandler"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__34;
  v20 = __Block_byref_object_dispose__34;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__VUIPlistMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke;
  v12[3] = &unk_1E87370A8;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [(VUIPlistMediaLibrary *)self _enqueueProcessingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __63__VUIPlistMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[VUIPlistMediaEntitiesFetchOperation alloc] initWithMediaLibrary:v3 requests:*(a1 + 32)];
  v5 = MEMORY[0x1E696AAE0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__VUIPlistMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_2;
  v14[3] = &unk_1E872DF40;
  v15 = v3;
  v16 = v4;
  v17 = *(a1 + 40);
  v6 = v4;
  v7 = v3;
  v8 = [v5 blockOperationWithBlock:v14];
  [v8 addDependency:v6];
  v9 = [v7 serialOperationQueue];
  [v9 addOperation:v6];

  v10 = [v7 serialOperationQueue];
  [v10 addOperation:v8];

  v11 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:v6];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void __63__VUIPlistMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_2(id *a1)
{
  v2 = [a1[4] manager];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__VUIPlistMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_3;
  v3[3] = &unk_1E872E580;
  v4 = a1[5];
  v5 = a1[6];
  [v2 _enqueueCompletionQueueBlock:v3];
}

void __63__VUIPlistMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = VUIErrorCancelled();
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) responses];
    v2 = [*(a1 + 32) error];
  }

  (*(*(a1 + 40) + 16))();
}

- (id)saveMediaEntity:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [(VUIMediaLibrary *)self manager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__VUIPlistMediaLibrary_saveMediaEntity_completionHandler___block_invoke;
    v9[3] = &unk_1E872D7E0;
    v10 = v5;
    [v6 _enqueueCompletionQueueBlock:v9];
  }

  v7 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:0];

  return v7;
}

- (id)_imageLoaderIdentifier
{
  v2 = [(VUIPlistMediaLibrary *)self database];
  v3 = [v2 fileURL];
  v4 = [v3 absoluteString];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"PlistMediaLibrary";
  }

  return v5;
}

- (id)_imageLoadParamsForImageLoaderObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [VUIMediaEntityImageLoadParamsFactory imageLoadParamsWithMediaEntity:v3 imageType:0];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The imageLoaderObject parameter must be an instance of VUIPlistMediaEntityImageLoadParams or conform to VUIPlistMediaEntityImageLoadParamsCreating"];
  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_imageLoadOperationWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5
{
  v5 = a3;
  v6 = [[VUIPlistMediaEntityImageLoadOperation alloc] initWithParams:v5];

  return v6;
}

- (void)_enqueueProcessingBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(VUIPlistMediaLibrary *)self serialProcessingDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__VUIPlistMediaLibrary__enqueueProcessingBlock___block_invoke;
  block[3] = &unk_1E872E828;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__VUIPlistMediaLibrary__enqueueProcessingBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

@end