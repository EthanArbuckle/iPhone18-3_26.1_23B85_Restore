@interface VUIMediaEntitiesFetchController
- (BOOL)_updateResponseWithResult:(id)a3 replaceContentsOnNilChanges:(BOOL)a4;
- (VUIMediaEntitiesFetchController)initWithMediaLibrary:(id)a3;
- (VUIMediaEntitiesFetchController)initWithMediaLibrary:(id)a3 fetchRequests:(id)a4;
- (VUIMediaEntitiesFetchControllerDelegate)delegate;
- (id)_fetchOperationForFetchReason:(int64_t)a3;
- (void)_didCompleteFetchOperation:(id)a3;
- (void)_handleContentsChangeFetchControllerOperationDidComplete:(id)a3;
- (void)_handleManualFetchControllerOperationDidComplete:(id)a3;
- (void)_notifyDelegateWithBlock:(id)a3;
- (void)_notifyFetchRequests:(id)a3 didCompleteWithResult:(id)a4;
- (void)_notifyFetchRequests:(id)a3 didFailWithError:(id)a4;
- (void)cancelFetch;
@end

@implementation VUIMediaEntitiesFetchController

- (VUIMediaEntitiesFetchController)initWithMediaLibrary:(id)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIMediaEntitiesFetchController)initWithMediaLibrary:(id)a3 fetchRequests:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = VUIMediaEntitiesFetchController;
  v7 = [(VUIMediaLibraryFetchController *)&v11 initWithMediaLibrary:a3];
  if (v7)
  {
    v8 = [v6 vui_deepCopy];
    requests = v7->_requests;
    v7->_requests = v8;
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

- (id)_fetchOperationForFetchReason:(int64_t)a3
{
  v5 = [VUIMediaEntitiesFetchControllerOperation alloc];
  v6 = [(VUIMediaLibraryFetchController *)self mediaLibrary];
  v7 = [(VUIMediaEntitiesFetchController *)self requests];
  v8 = [(VUIMediaEntitiesFetchControllerOperation *)v5 initWithMediaLibrary:v6 fetchReason:a3 requests:v7];

  if (a3 == 1)
  {
    v9 = [(VUIMediaEntitiesFetchController *)self responses];
    [(VUIMediaEntitiesFetchControllerOperation *)v8 setCurrentFetchResponses:v9];
  }

  return v8;
}

- (void)_didCompleteFetchOperation:(id)a3
{
  v4 = a3;
  if ([v4 fetchReason])
  {
    [(VUIMediaEntitiesFetchController *)self _handleContentsChangeFetchControllerOperationDidComplete:v4];
  }

  else
  {
    [(VUIMediaEntitiesFetchController *)self _handleManualFetchControllerOperationDidComplete:v4];
  }
}

- (void)_handleManualFetchControllerOperationDidComplete:(id)a3
{
  v4 = a3;
  v5 = [v4 requests];
  v6 = [v4 result];
  if (v6)
  {
    [(VUIMediaEntitiesFetchController *)self _updateResponseWithResult:v6 replaceContentsOnNilChanges:1];
    [(VUIMediaEntitiesFetchController *)self _notifyFetchRequests:v5 didCompleteWithResult:v6];
  }

  else
  {
    v7 = [v4 error];
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(VUIMediaEntitiesFetchController *)v7 _handleManualFetchControllerOperationDidComplete:v5, v8];
    }

    [(VUIMediaEntitiesFetchController *)self _notifyFetchRequests:v5 didFailWithError:v7];
  }
}

- (void)_handleContentsChangeFetchControllerOperationDidComplete:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 requests];
  v6 = [v4 result];
  if (v6)
  {
    if ([(VUIMediaEntitiesFetchController *)self _updateResponseWithResult:v6 replaceContentsOnNilChanges:0])
    {
      [(VUIMediaEntitiesFetchController *)self _notifyFetchRequests:v5 didCompleteWithResult:v6];
    }
  }

  else
  {
    v7 = [v4 error];
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Contents change media entity fetch failed with error (%@) for requests: %@", &v9, 0x16u);
    }

    [(VUIMediaEntitiesFetchController *)self _notifyFetchRequests:v5 didFailWithError:v7];
  }
}

- (BOOL)_updateResponseWithResult:(id)a3 replaceContentsOnNilChanges:(BOOL)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [(VUIMediaEntitiesFetchController *)self responses];
  if (v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89__VUIMediaEntitiesFetchController__updateResponseWithResult_replaceContentsOnNilChanges___block_invoke;
    v11[3] = &unk_1E87328D8;
    v14 = a4;
    v12 = v6;
    v13 = &v15;
    [v7 enumerateObjectsUsingBlock:v11];
    v8 = v12;
  }

  else
  {
    v8 = [v6 fetchResponses];
    [(VUIMediaEntitiesFetchController *)self setResponses:v8];
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

- (void)_notifyDelegateWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(VUIMediaEntitiesFetchController *)self delegate];
  v6 = [(VUIMediaLibraryFetchController *)self mediaLibrary];
  v7 = [v6 manager];

  v8 = [v7 completionDispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__VUIMediaEntitiesFetchController__notifyDelegateWithBlock___block_invoke;
  v11[3] = &unk_1E872DC10;
  v12 = v5;
  v13 = v4;
  v9 = v5;
  v10 = v4;
  dispatch_async(v8, v11);
}

- (void)_notifyFetchRequests:(id)a3 didCompleteWithResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__VUIMediaEntitiesFetchController__notifyFetchRequests_didCompleteWithResult___block_invoke;
  v10[3] = &unk_1E8732900;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)_notifyFetchRequests:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__VUIMediaEntitiesFetchController__notifyFetchRequests_didFailWithError___block_invoke;
  v10[3] = &unk_1E8732900;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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