@interface VUIMediaInfoImageFetchOperation
- (BOOL)shouldUsePrepareImageForDisplay;
- (VUIMediaInfoImageFetchOperation)initWithMediaInfo:(id)info;
- (id)imageProxy;
- (void)addCompletion:(id)completion;
- (void)cancel;
- (void)executionDidBegin;
- (void)fetchImageWithCompletion:(id)completion;
@end

@implementation VUIMediaInfoImageFetchOperation

- (VUIMediaInfoImageFetchOperation)initWithMediaInfo:(id)info
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = VUIMediaInfoImageFetchOperation;
  v5 = [(VUIMediaInfoImageFetchOperation *)&v13 init];
  if (v5)
  {
    v6 = [infoCopy copy];
    mediaInfo = v5->_mediaInfo;
    v5->_mediaInfo = v6;

    array = [MEMORY[0x1E695DF70] array];
    completionBlocks = v5->_completionBlocks;
    v5->_completionBlocks = array;

    image = v5->_image;
    v5->_image = 0;

    error = v5->_error;
    v5->_error = 0;

    v5->_addedToQueue = 0;
    v5->_imageLoadFinished = 0;
  }

  return v5;
}

- (void)fetchImageWithCompletion:(id)completion
{
  completionCopy = completion;
  VUIRequireMainThread();
  if ([(VUIAsynchronousOperation *)self isFinished])
  {
    image = [(VUIMediaInfoImageFetchOperation *)self image];
    error = [(VUIMediaInfoImageFetchOperation *)self error];
    completionCopy[2](completionCopy, image, error, [(VUIMediaInfoImageFetchOperation *)self imageLoadFinished]);
  }

  else
  {
    [(VUIMediaInfoImageFetchOperation *)self addCompletion:completionCopy];
  }
}

- (void)addCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    completionBlocks = [(VUIMediaInfoImageFetchOperation *)self completionBlocks];
    v5 = _Block_copy(completionCopy);

    [completionBlocks addObject:v5];
  }
}

- (id)imageProxy
{
  mediaInfo = [(VUIMediaInfoImageFetchOperation *)self mediaInfo];
  imageProxies = [mediaInfo imageProxies];
  firstObject = [imageProxies firstObject];

  return firstObject;
}

- (BOOL)shouldUsePrepareImageForDisplay
{
  v2 = +[VUIFeaturesConfiguration sharedInstance];
  launchConfig = [v2 launchConfig];

  LOBYTE(v2) = [launchConfig usePrepareImageForDisplay];
  return v2;
}

- (void)executionDidBegin
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__VUIMediaInfoImageFetchOperation_executionDidBegin__block_invoke;
  aBlock[3] = &unk_1E8736728;
  objc_copyWeak(&v14, &location);
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  imageProxy = [(VUIMediaInfoImageFetchOperation *)self imageProxy];

  if (imageProxy)
  {
    imageProxy2 = [(VUIMediaInfoImageFetchOperation *)self imageProxy];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __52__VUIMediaInfoImageFetchOperation_executionDidBegin__block_invoke_3;
    v11 = &unk_1E8732270;
    v12 = v3;
    [imageProxy2 setCompletionHandler:&v8];

    v6 = [(VUIMediaInfoImageFetchOperation *)self imageProxy:v8];
    [v6 load];

    v7 = v12;
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIMediaInfoImageFetchOperationErrorDomain" code:0 userInfo:0];
    (*(v3 + 2))(v3, 0, v7, 0);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __52__VUIMediaInfoImageFetchOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __52__VUIMediaInfoImageFetchOperation_executionDidBegin__block_invoke_2;
  v15 = &unk_1E8736700;
  objc_copyWeak(&v19, (a1 + 40));
  v9 = v7;
  v10 = *(a1 + 32);
  v16 = v9;
  v17 = v10;
  v11 = v8;
  v18 = v11;
  v20 = a4;
  v12 = v13;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v14(v12);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  objc_destroyWeak(&v19);
}

void __52__VUIMediaInfoImageFetchOperation_executionDidBegin__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained imageProxy];
  [v3 setCompletionHandler:0];

  [*(a1 + 32) setUsePrepareImageForDisplay:{objc_msgSend(*(a1 + 40), "shouldUsePrepareImageForDisplay")}];
  [WeakRetained setImage:*(a1 + 32)];
  [WeakRetained setError:*(a1 + 48)];
  [WeakRetained setImageLoadFinished:*(a1 + 64)];
  [WeakRetained finishExecutionIfPossible];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [WeakRetained completionBlocks];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [WeakRetained image];
        v11 = [WeakRetained error];
        (*(v9 + 16))(v9, v10, v11, [WeakRetained imageLoadFinished]);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = [WeakRetained completionBlocks];
  [v12 removeAllObjects];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VUIMediaInfoImageFetchOperation;
  [(VUIMediaInfoImageFetchOperation *)&v4 cancel];
  imageProxy = [(VUIMediaInfoImageFetchOperation *)self imageProxy];
  [imageProxy cancel];
}

@end