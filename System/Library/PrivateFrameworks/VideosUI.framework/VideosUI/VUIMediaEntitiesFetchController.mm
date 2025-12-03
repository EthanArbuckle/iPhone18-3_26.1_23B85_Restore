@interface VUIMediaEntitiesFetchController
- (BOOL)_updateResponseWithResult:(id)result replaceContentsOnNilChanges:(BOOL)changes;
- (VUIMediaEntitiesFetchController)initWithMediaLibrary:(id)library;
- (VUIMediaEntitiesFetchController)initWithMediaLibrary:(id)library fetchRequests:(id)requests;
- (VUIMediaEntitiesFetchControllerDelegate)delegate;
- (id)_fetchOperationForFetchReason:(int64_t)reason;
- (void)_didCompleteFetchOperation:(id)operation;
- (void)_handleContentsChangeFetchControllerOperationDidComplete:(id)complete;
- (void)_handleManualFetchControllerOperationDidComplete:(id)complete;
- (void)_notifyDelegateWithBlock:(id)block;
- (void)_notifyFetchRequests:(id)requests didCompleteWithResult:(id)result;
- (void)_notifyFetchRequests:(id)requests didFailWithError:(id)error;
- (void)cancelFetch;
@end

@implementation VUIMediaEntitiesFetchController

- (VUIMediaEntitiesFetchController)initWithMediaLibrary:(id)library
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIMediaEntitiesFetchController)initWithMediaLibrary:(id)library fetchRequests:(id)requests
{
  requestsCopy = requests;
  v11.receiver = self;
  v11.super_class = VUIMediaEntitiesFetchController;
  v7 = [(VUIMediaLibraryFetchController *)&v11 initWithMediaLibrary:library];
  if (v7)
  {
    vui_deepCopy = [requestsCopy vui_deepCopy];
    requests = v7->_requests;
    v7->_requests = vui_deepCopy;
  }

  return v7;
}

- (void)cancelFetch
{
  [(VUIMediaEntitiesFetchController *)self setResponses:0];
  v3.receiver = self;
  v3.super_class = VUIMediaEntitiesFetchController;
  [(VUIMediaLibraryFetchController *)&v3 cancelFetch];
}

- (id)_fetchOperationForFetchReason:(int64_t)reason
{
  v5 = [VUIMediaEntitiesFetchControllerOperation alloc];
  mediaLibrary = [(VUIMediaLibraryFetchController *)self mediaLibrary];
  requests = [(VUIMediaEntitiesFetchController *)self requests];
  v8 = [(VUIMediaEntitiesFetchControllerOperation *)v5 initWithMediaLibrary:mediaLibrary fetchReason:reason requests:requests];

  if (reason == 1)
  {
    responses = [(VUIMediaEntitiesFetchController *)self responses];
    [(VUIMediaEntitiesFetchControllerOperation *)v8 setCurrentFetchResponses:responses];
  }

  return v8;
}

- (void)_didCompleteFetchOperation:(id)operation
{
  operationCopy = operation;
  if ([operationCopy fetchReason])
  {
    [(VUIMediaEntitiesFetchController *)self _handleContentsChangeFetchControllerOperationDidComplete:operationCopy];
  }

  else
  {
    [(VUIMediaEntitiesFetchController *)self _handleManualFetchControllerOperationDidComplete:operationCopy];
  }
}

- (void)_handleManualFetchControllerOperationDidComplete:(id)complete
{
  completeCopy = complete;
  requests = [completeCopy requests];
  result = [completeCopy result];
  if (result)
  {
    [(VUIMediaEntitiesFetchController *)self _updateResponseWithResult:result replaceContentsOnNilChanges:1];
    [(VUIMediaEntitiesFetchController *)self _notifyFetchRequests:requests didCompleteWithResult:result];
  }

  else
  {
    error = [completeCopy error];
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(VUIMediaEntitiesFetchController *)error _handleManualFetchControllerOperationDidComplete:requests, v8];
    }

    [(VUIMediaEntitiesFetchController *)self _notifyFetchRequests:requests didFailWithError:error];
  }
}

- (void)_handleContentsChangeFetchControllerOperationDidComplete:(id)complete
{
  v13 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  requests = [completeCopy requests];
  result = [completeCopy result];
  if (result)
  {
    if ([(VUIMediaEntitiesFetchController *)self _updateResponseWithResult:result replaceContentsOnNilChanges:0])
    {
      [(VUIMediaEntitiesFetchController *)self _notifyFetchRequests:requests didCompleteWithResult:result];
    }
  }

  else
  {
    error = [completeCopy error];
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = error;
      v11 = 2112;
      v12 = requests;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Contents change media entity fetch failed with error (%@) for requests: %@", &v9, 0x16u);
    }

    [(VUIMediaEntitiesFetchController *)self _notifyFetchRequests:requests didFailWithError:error];
  }
}

- (BOOL)_updateResponseWithResult:(id)result replaceContentsOnNilChanges:(BOOL)changes
{
  resultCopy = result;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  responses = [(VUIMediaEntitiesFetchController *)self responses];
  if (responses)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89__VUIMediaEntitiesFetchController__updateResponseWithResult_replaceContentsOnNilChanges___block_invoke;
    v11[3] = &unk_1E87328D8;
    changesCopy = changes;
    v12 = resultCopy;
    v13 = &v15;
    [responses enumerateObjectsUsingBlock:v11];
    fetchResponses = v12;
  }

  else
  {
    fetchResponses = [resultCopy fetchResponses];
    [(VUIMediaEntitiesFetchController *)self setResponses:fetchResponses];
    *(v16 + 24) = 1;
  }

  v9 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __89__VUIMediaEntitiesFetchController__updateResponseWithResult_replaceContentsOnNilChanges___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) fetchResponses];
  v6 = [v5 objectAtIndex:a3];

  v7 = [*(a1 + 32) fetchResponseChanges];
  v8 = [v7 objectAtIndex:a3];

  LODWORD(v7) = [v9 hasDataForCheckHasItemsOption];
  if (v7 != [v6 hasDataForCheckHasItemsOption] || objc_msgSend(v9, "_updateWithResponse:changes:replaceContentsOnNilChanges:", v6, v8, *(a1 + 48)))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)_notifyDelegateWithBlock:(id)block
{
  blockCopy = block;
  delegate = [(VUIMediaEntitiesFetchController *)self delegate];
  mediaLibrary = [(VUIMediaLibraryFetchController *)self mediaLibrary];
  manager = [mediaLibrary manager];

  completionDispatchQueue = [manager completionDispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__VUIMediaEntitiesFetchController__notifyDelegateWithBlock___block_invoke;
  v11[3] = &unk_1E872DC10;
  v12 = delegate;
  v13 = blockCopy;
  v9 = delegate;
  v10 = blockCopy;
  dispatch_async(completionDispatchQueue, v11);
}

- (void)_notifyFetchRequests:(id)requests didCompleteWithResult:(id)result
{
  requestsCopy = requests;
  resultCopy = result;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__VUIMediaEntitiesFetchController__notifyFetchRequests_didCompleteWithResult___block_invoke;
  v10[3] = &unk_1E8732900;
  v10[4] = self;
  v11 = requestsCopy;
  v12 = resultCopy;
  v8 = resultCopy;
  v9 = requestsCopy;
  [(VUIMediaEntitiesFetchController *)self _notifyDelegateWithBlock:v10];
}

void __78__VUIMediaEntitiesFetchController__notifyFetchRequests_didCompleteWithResult___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 controller:a1[4] fetchRequests:a1[5] didCompleteWithResult:a1[6]];
  }
}

- (void)_notifyFetchRequests:(id)requests didFailWithError:(id)error
{
  requestsCopy = requests;
  errorCopy = error;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__VUIMediaEntitiesFetchController__notifyFetchRequests_didFailWithError___block_invoke;
  v10[3] = &unk_1E8732900;
  v10[4] = self;
  v11 = requestsCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = requestsCopy;
  [(VUIMediaEntitiesFetchController *)self _notifyDelegateWithBlock:v10];
}

void __73__VUIMediaEntitiesFetchController__notifyFetchRequests_didFailWithError___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 controller:a1[4] fetchRequests:a1[5] didFailWithError:a1[6]];
  }
}

- (VUIMediaEntitiesFetchControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleManualFetchControllerOperationDidComplete:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "Manual media entity fetch failed with error (%@) for requests: %@", &v3, 0x16u);
}

@end