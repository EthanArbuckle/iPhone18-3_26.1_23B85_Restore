@interface VUIMediaItemEntityTypesFetchController
- (BOOL)_updateResponseWithResult:(id)result replaceContentsOnNilChanges:(BOOL)changes;
- (VUIMediaItemEntityTypesFetchController)initWithMediaLibrary:(id)library;
- (VUIMediaItemEntityTypesFetchControllerDelegate)delegate;
- (id)_fetchOperationForFetchReason:(int64_t)reason;
- (void)_didCompleteFetchOperation:(id)operation;
- (void)_handleContentsChangeFetchControllerOperationDidCompleteWithResult:(id)result error:(id)error;
- (void)_handleInitialFetchControllerOperationDidCompleteWithResult:(id)result error:(id)error;
- (void)_notifyDelegateWithBlock:(id)block;
- (void)_notifyFetchDidCompleteWithResult:(id)result;
- (void)_notifyFetchDidFailWithError:(id)error;
- (void)cancelFetch;
@end

@implementation VUIMediaItemEntityTypesFetchController

- (VUIMediaItemEntityTypesFetchController)initWithMediaLibrary:(id)library
{
  v4.receiver = self;
  v4.super_class = VUIMediaItemEntityTypesFetchController;
  return [(VUIMediaLibraryFetchController *)&v4 initWithMediaLibrary:library];
}

- (void)cancelFetch
{
  [(VUIMediaItemEntityTypesFetchController *)self setResponse:0];
  v3.receiver = self;
  v3.super_class = VUIMediaItemEntityTypesFetchController;
  [(VUIMediaLibraryFetchController *)&v3 cancelFetch];
}

- (id)_fetchOperationForFetchReason:(int64_t)reason
{
  v5 = [VUIMediaItemEntityTypesFetchControllerOperation alloc];
  mediaLibrary = [(VUIMediaLibraryFetchController *)self mediaLibrary];
  v7 = [(VUIMediaItemEntityTypesFetchControllerOperation *)v5 initWithMediaLibrary:mediaLibrary fetchReason:reason];

  if (reason == 1)
  {
    response = [(VUIMediaItemEntityTypesFetchController *)self response];
    [(VUIMediaItemEntityTypesFetchControllerOperation *)v7 setCurrentFetchResponse:response];
  }

  return v7;
}

- (void)_didCompleteFetchOperation:(id)operation
{
  operationCopy = operation;
  result = [operationCopy result];
  error = [operationCopy error];
  fetchReason = [operationCopy fetchReason];

  if (fetchReason)
  {
    [(VUIMediaItemEntityTypesFetchController *)self _handleContentsChangeFetchControllerOperationDidCompleteWithResult:result error:error];
  }

  else
  {
    [(VUIMediaItemEntityTypesFetchController *)self _handleInitialFetchControllerOperationDidCompleteWithResult:result error:error];
  }
}

- (void)_handleInitialFetchControllerOperationDidCompleteWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  if (resultCopy)
  {
    [(VUIMediaItemEntityTypesFetchController *)self _updateResponseWithResult:resultCopy replaceContentsOnNilChanges:1];
    [(VUIMediaItemEntityTypesFetchController *)self _notifyFetchDidCompleteWithResult:resultCopy];
  }

  else
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [VUIMediaItemEntityTypesFetchController _handleInitialFetchControllerOperationDidCompleteWithResult:errorCopy error:v8];
    }

    [(VUIMediaItemEntityTypesFetchController *)self _notifyFetchDidFailWithError:errorCopy];
  }
}

- (void)_handleContentsChangeFetchControllerOperationDidCompleteWithResult:(id)result error:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  errorCopy = error;
  if (resultCopy)
  {
    if ([(VUIMediaItemEntityTypesFetchController *)self _updateResponseWithResult:resultCopy replaceContentsOnNilChanges:0])
    {
      [(VUIMediaItemEntityTypesFetchController *)self _notifyFetchDidCompleteWithResult:resultCopy];
    }
  }

  else
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = errorCopy;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Contents change media category types fetch failed with error (%@)", &v9, 0xCu);
    }

    [(VUIMediaItemEntityTypesFetchController *)self _notifyFetchDidFailWithError:errorCopy];
  }
}

- (void)_notifyDelegateWithBlock:(id)block
{
  blockCopy = block;
  delegate = [(VUIMediaItemEntityTypesFetchController *)self delegate];
  mediaLibrary = [(VUIMediaLibraryFetchController *)self mediaLibrary];
  manager = [mediaLibrary manager];

  completionDispatchQueue = [manager completionDispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__VUIMediaItemEntityTypesFetchController__notifyDelegateWithBlock___block_invoke;
  v11[3] = &unk_1E872DC10;
  v12 = delegate;
  v13 = blockCopy;
  v9 = delegate;
  v10 = blockCopy;
  dispatch_async(completionDispatchQueue, v11);
}

- (void)_notifyFetchDidCompleteWithResult:(id)result
{
  resultCopy = result;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__VUIMediaItemEntityTypesFetchController__notifyFetchDidCompleteWithResult___block_invoke;
  v6[3] = &unk_1E8733B18;
  v6[4] = self;
  v7 = resultCopy;
  v5 = resultCopy;
  [(VUIMediaItemEntityTypesFetchController *)self _notifyDelegateWithBlock:v6];
}

void __76__VUIMediaItemEntityTypesFetchController__notifyFetchDidCompleteWithResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 controller:*(a1 + 32) fetchDidCompleteWithResult:*(a1 + 40)];
  }
}

- (void)_notifyFetchDidFailWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__VUIMediaItemEntityTypesFetchController__notifyFetchDidFailWithError___block_invoke;
  v6[3] = &unk_1E8733B18;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  [(VUIMediaItemEntityTypesFetchController *)self _notifyDelegateWithBlock:v6];
}

void __71__VUIMediaItemEntityTypesFetchController__notifyFetchDidFailWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 controller:*(a1 + 32) fetchDidFailWithError:*(a1 + 40)];
  }
}

- (BOOL)_updateResponseWithResult:(id)result replaceContentsOnNilChanges:(BOOL)changes
{
  changesCopy = changes;
  resultCopy = result;
  response = [(VUIMediaItemEntityTypesFetchController *)self response];
  fetchResponse = [resultCopy fetchResponse];
  if (response)
  {
    fetchChanges = [resultCopy fetchChanges];
    v10 = [response _updateWithResponse:fetchResponse changes:fetchChanges replaceContentsOnNilChanges:changesCopy];
  }

  else
  {
    [(VUIMediaItemEntityTypesFetchController *)self setResponse:fetchResponse];
    v10 = 1;
  }

  return v10;
}

- (VUIMediaItemEntityTypesFetchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleInitialFetchControllerOperationDidCompleteWithResult:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "Initial media category types fetch failed with error (%@)", &v2, 0xCu);
}

@end