@interface VUIMediaItemEntityTypesFetchControllerOperation
+ (id)_changeSetFromMediaItemEntityTypes:(id)a3 toMediaItemEntityTypes:(id)a4;
- (VUIMediaItemEntityTypesFetchControllerOperation)initWithMediaLibrary:(id)a3;
- (VUIMediaItemEntityTypesFetchControllerOperation)initWithMediaLibrary:(id)a3 fetchReason:(int64_t)a4;
- (void)executionDidBegin;
@end

@implementation VUIMediaItemEntityTypesFetchControllerOperation

- (VUIMediaItemEntityTypesFetchControllerOperation)initWithMediaLibrary:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIMediaItemEntityTypesFetchControllerOperation)initWithMediaLibrary:(id)a3 fetchReason:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = VUIMediaItemEntityTypesFetchControllerOperation;
  result = [(VUIMediaLibraryOperation *)&v6 initWithMediaLibrary:a3];
  if (result)
  {
    result->_fetchReason = a4;
  }

  return result;
}

- (void)executionDidBegin
{
  objc_initWeak(&location, self);
  v3 = [(VUIMediaLibraryOperation *)self mediaLibrary];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __68__VUIMediaItemEntityTypesFetchControllerOperation_executionDidBegin__block_invoke;
  v8 = &unk_1E87325F8;
  objc_copyWeak(&v9, &location);
  v4 = [v3 enqueueMediaItemEntityTypesFetchWithCompletionHandler:&v5];

  [(VUIMediaLibraryOperation *)self setAsyncWorkToken:v4, v5, v6, v7, v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __68__VUIMediaItemEntityTypesFetchControllerOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    if (v5)
    {
      v9 = [v8 currentFetchResponse];
      if (v9)
      {
        v10 = [v5 mediaItemEntityTypes];
        v11 = [v9 mediaItemEntityTypes];
        v12 = [v11 array];

        v13 = [v10 array];
        v14 = [objc_opt_class() _changeSetFromMediaItemEntityTypes:v12 toMediaItemEntityTypes:v13];
        v15 = -[VUIMediaItemEntityTypesFetchResponseChanges initWithMediaItemEntityTypesChangeSet:localMediaItemsAvailableDidChange:]([VUIMediaItemEntityTypesFetchResponseChanges alloc], "initWithMediaItemEntityTypesChangeSet:localMediaItemsAvailableDidChange:", v14, [v9 areLocalMediaItemsAvailable] ^ objc_msgSend(v5, "areLocalMediaItemsAvailable"));
      }

      else
      {
        v15 = 0;
      }

      v17 = -[VUIMediaItemEntityTypesFetchControllerResult initWithFetchReason:fetchResponse:]([VUIMediaItemEntityTypesFetchControllerResult alloc], "initWithFetchReason:fetchResponse:", [v8 fetchReason], v5);
      [(VUIMediaItemEntityTypesFetchControllerResult *)v17 setFetchChanges:v15];
      [v8 setResult:v17];
    }

    else
    {
      v16 = VUIDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v6;
        _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Media item entity types fetch failed with error (%@)", &v18, 0xCu);
      }

      [v8 setError:v6];
    }

    [v8 finishExecutionIfPossible];
  }
}

+ (id)_changeSetFromMediaItemEntityTypes:(id)a3 toMediaItemEntityTypes:(id)a4
{
  v5 = MEMORY[0x1E69DF6B0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = [v8 changeSetFromObjects:v7 toObjects:v6 identifierBlock:&__block_literal_global_80 isEqualBlock:0];

  return v9;
}

@end