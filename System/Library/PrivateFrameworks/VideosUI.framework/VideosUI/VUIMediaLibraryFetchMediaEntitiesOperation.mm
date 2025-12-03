@interface VUIMediaLibraryFetchMediaEntitiesOperation
- (VUIMediaLibraryFetchMediaEntitiesOperation)initWithMediaLibrary:(id)library;
- (VUIMediaLibraryFetchMediaEntitiesOperation)initWithMediaLibrary:(id)library requests:(id)requests;
- (void)executionDidBegin;
@end

@implementation VUIMediaLibraryFetchMediaEntitiesOperation

- (VUIMediaLibraryFetchMediaEntitiesOperation)initWithMediaLibrary:(id)library
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIMediaLibraryFetchMediaEntitiesOperation)initWithMediaLibrary:(id)library requests:(id)requests
{
  requestsCopy = requests;
  v11.receiver = self;
  v11.super_class = VUIMediaLibraryFetchMediaEntitiesOperation;
  v7 = [(VUIMediaLibraryOperation *)&v11 initWithMediaLibrary:library];
  if (v7)
  {
    vui_deepCopy = [requestsCopy vui_deepCopy];
    requests = v7->_requests;
    v7->_requests = vui_deepCopy;
  }

  return v7;
}

- (void)executionDidBegin
{
  objc_initWeak(&location, self);
  mediaLibrary = [(VUIMediaLibraryOperation *)self mediaLibrary];
  requests = [(VUIMediaLibraryFetchMediaEntitiesOperation *)self requests];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __63__VUIMediaLibraryFetchMediaEntitiesOperation_executionDidBegin__block_invoke;
  v9 = &unk_1E872E738;
  objc_copyWeak(&v10, &location);
  v5 = [mediaLibrary enqueueFetchRequests:requests completionHandler:&v6];

  [(VUIMediaLibraryOperation *)self setAsyncWorkToken:v5, v6, v7, v8, v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __63__VUIMediaLibraryFetchMediaEntitiesOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    if (v8)
    {
      [v7 setResponses:?];
    }

    else
    {
      [v7 setError:v5];
    }

    [v7 finishExecutionIfPossible];
  }
}

@end