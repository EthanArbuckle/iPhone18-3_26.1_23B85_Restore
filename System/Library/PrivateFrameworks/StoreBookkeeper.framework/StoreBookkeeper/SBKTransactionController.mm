@interface SBKTransactionController
- (BOOL)_delegateShouldScheduleTransaction:(id)transaction error:(id *)error;
- (BOOL)_delegateTransactionDidFail:(id)fail withError:(id)error;
- (BOOL)_onQueue_authenticationCanProcessTransaction:(id)transaction error:(id *)error;
- (BOOL)_onQueue_canScheduleTransaction:(id)transaction error:(id *)error;
- (BOOL)_onQueue_clampsCanScheduleTransaction:(id)transaction error:(id *)error;
- (BOOL)_onQueue_isEnabledForTransaction:(id)transaction error:(id *)error;
- (BOOL)isIdle;
- (SBKTransactionController)initWithDomain:(id)domain requestURL:(id)l;
- (SBKTransactionController)initWithDomain:(id)domain requestURL:(id)l forAccount:(id)account;
- (SBKTransactionControllerDelegate)delegate;
- (id)networkTypeObserver;
- (void)_beginBackgroundTask;
- (void)_delegateTransactionDidCancel:(id)cancel withError:(id)error;
- (void)_delegateTransactionDidFinish:(id)finish;
- (void)_endBackgroundTask;
- (void)_enqueueStoreOperation:(id)operation;
- (void)_networkTypeChangedNotification:(id)notification;
- (void)_onQueue_addPendingTransaction:(id)transaction;
- (void)_onQueue_assertIsTransactionValid:(id)valid error:(id *)error;
- (void)_onQueue_beginBackgroundTask;
- (void)_onQueue_cancelAllPendingTransactions:(id)transactions;
- (void)_onQueue_cancelTransaction:(id)transaction error:(id)error;
- (void)_onQueue_currentTransactionDidFinish;
- (void)_onQueue_endBackgroundTask;
- (void)_onQueue_performCancelErrorHandlingForError:(id)error;
- (void)_onQueue_performDefaultErrorHandlingForError:(id)error;
- (void)_onQueue_performRetryErrorHandlingForError:(id)error;
- (void)_onQueue_processCurrentTransaction;
- (void)_onQueue_processOperationOutput:(id)output operation:(id)operation operationAuthenticated:(BOOL)authenticated;
- (void)_onQueue_processPendingTransactions;
- (void)_onQueue_resolveError:(id)error resolution:(int)resolution;
- (void)_onQueue_scheduleTransaction:(id)transaction isRetry:(BOOL)retry;
- (void)_onQueue_transactionDidCancel:(id)cancel withError:(id)error;
- (void)_onQueue_transactionDidFail:(id)fail withError:(id)error;
- (void)_processDataInResponse:(id)response;
- (void)_resolveError:(id)error resolution:(int)resolution;
- (void)_storeOperationDidComplete:(id)complete;
- (void)cancelAllTransactions;
- (void)cancelAllTransactionsCancelCode:(int64_t)code;
- (void)cancelScheduledTransaction:(id)transaction;
- (void)dealloc;
- (void)operation:(id)operation didReceiveResponse:(id)response;
- (void)operation:(id)operation failedWithError:(id)error;
- (void)operation:(id)operation finishedWithOutput:(id)output;
- (void)scheduleTransaction:(id)transaction;
- (void)scheduleTransaction:(id)transaction withTransactionFinishedBlock:(id)block;
- (void)setDomain:(id)domain;
- (void)setEnabled:(BOOL)enabled;
- (void)setRequestURL:(id)l;
@end

@implementation SBKTransactionController

- (id)networkTypeObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_networkTypeObserver);

  return WeakRetained;
}

- (SBKTransactionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)operation:(id)operation failedWithError:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  errorCopy = error;
  v8 = self->_currentTransaction;
  if ([errorCopy code] == 16)
  {
    v9 = [SBKStoreError userCancelledSignInErrorWithTransaction:v8 underlyingError:errorCopy];
    v10 = 1;
    v11 = @"User cancelled sign-in";
  }

  else if ([errorCopy code] == 5)
  {
    v9 = [SBKStoreError userEnteredWrongCredentialsErrorWithTransaction:v8 underlyingError:errorCopy];
    v10 = 1;
    v11 = @"User entered wrong credentials";
  }

  else
  {
    v12 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      requestProperties = [operationCopy requestProperties];
      v14 = [requestProperties URL];
      *buf = 138412546;
      v27 = v14;
      v28 = 2112;
      v29 = errorCopy;
      _os_log_impl(&dword_26BC19000, v12, OS_LOG_TYPE_DEFAULT, "Operation failedWithError: %@ -- inputError = %@", buf, 0x16u);
    }

    v9 = [SBKStoreError unknownErrorWithTransaction:v8 underlyingError:errorCopy];
    v11 = 0;
    v10 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SBKTransactionController_operation_failedWithError___block_invoke;
  block[3] = &unk_279D22948;
  v24 = v10;
  v20 = v11;
  selfCopy = self;
  v25 = v10;
  v22 = v8;
  v23 = v9;
  v16 = v9;
  v17 = v8;
  dispatch_async(queue, block);

  v18 = *MEMORY[0x277D85DE8];
}

void __54__SBKTransactionController_operation_failedWithError___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v2 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_26BC19000, v2, OS_LOG_TYPE_DEFAULT, "[StoreBookkeeper] %@.  Will suppress authentication dialogs for a while.", &v8, 0xCu);
    }

    v4 = [*(a1 + 40) _onQueue_clampsController];
    [v4 setUserCancelledSignIn];
  }

  if (*(a1 + 65) == 1 && [*(*(a1 + 40) + 48) shouldAuthenticate])
  {
    v5 = [*(a1 + 40) _onQueue_clampsController];
    [v5 setAuthenticationRequest];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    [*(a1 + 40) _onQueue_transactionDidFail:v6 withError:*(a1 + 56)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)operation:(id)operation didReceiveResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [responseCopy statusCode] == 511)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SBKTransactionController_operation_didReceiveResponse___block_invoke;
    block[3] = &unk_279D231C8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __57__SBKTransactionController_operation_didReceiveResponse___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  v2 = [*(a1 + 32) _onQueue_clampsController];
  [v2 setNetworkingBlocked];

  v3 = *(a1 + 32);
  v4 = [SBKStoreError killSwitchErrorWithTransaction:0 underlyingError:0];
  [v3 _onQueue_cancelAllPendingTransactions:v4];
}

- (void)operation:(id)operation finishedWithOutput:(id)output
{
  operationCopy = operation;
  outputCopy = output;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SBKTransactionController_operation_finishedWithOutput___block_invoke;
  block[3] = &unk_279D23050;
  block[4] = self;
  v12 = outputCopy;
  v13 = operationCopy;
  v9 = operationCopy;
  v10 = outputCopy;
  dispatch_async(queue, block);
}

uint64_t __57__SBKTransactionController_operation_finishedWithOutput___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [v3 needsAuthentication];

  return [v1 _onQueue_processOperationOutput:v2 operation:v3 operationAuthenticated:v4];
}

- (void)_delegateTransactionDidFinish:(id)finish
{
  finishCopy = finish;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__SBKTransactionController__delegateTransactionDidFinish___block_invoke;
  v9[3] = &unk_279D22920;
  v9[4] = self;
  v10 = finishCopy;
  v11 = WeakRetained;
  v12 = a2;
  v7 = WeakRetained;
  v8 = finishCopy;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

uint64_t __58__SBKTransactionController__delegateTransactionDidFinish___block_invoke(uint64_t a1)
{
  v5 = 0;
  [*(a1 + 32) _sendFinishedBlockForTransaction:*(a1 + 40) success:1 cancelled:0 error:0 handledAsFinishedBlock:&v5];
  v2 = *(a1 + 48);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (v5 == 1)
    {
      v4 = [MEMORY[0x277CCA890] currentHandler];
      [v4 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"SBKTransactionController.m" lineNumber:687 description:@"transaction controllers with delegates can not use transaction finish blocks"];
    }

    return [*(a1 + 48) transactionController:*(a1 + 32) transactionDidFinish:*(a1 + 40)];
  }

  return result;
}

- (void)_delegateTransactionDidCancel:(id)cancel withError:(id)error
{
  cancelCopy = cancel;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SBKTransactionController__delegateTransactionDidCancel_withError___block_invoke;
  block[3] = &unk_279D228F8;
  block[4] = self;
  v14 = cancelCopy;
  v15 = errorCopy;
  v16 = WeakRetained;
  v17 = a2;
  v10 = WeakRetained;
  v11 = errorCopy;
  v12 = cancelCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __68__SBKTransactionController__delegateTransactionDidCancel_withError___block_invoke(uint64_t a1)
{
  v5 = 0;
  [*(a1 + 32) _sendFinishedBlockForTransaction:*(a1 + 40) success:0 cancelled:1 error:*(a1 + 48) handledAsFinishedBlock:&v5];
  v2 = *(a1 + 56);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    if (v5 == 1)
    {
      v4 = [MEMORY[0x277CCA890] currentHandler];
      [v4 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"SBKTransactionController.m" lineNumber:674 description:@"transaction controllers with delegates can not use transaction finish blocks"];
    }

    return [*(a1 + 56) transactionController:*(a1 + 32) transactionDidCancel:*(a1 + 40) error:*(a1 + 48)];
  }

  return result;
}

- (BOOL)_delegateTransactionDidFail:(id)fail withError:(id)error
{
  failCopy = fail;
  errorCopy = error;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBKTransactionController.m" lineNumber:653 description:@"Delegate calls should be done on the main thread"];
  }

  v14 = 0;
  v9 = [(SBKTransactionController *)self _sendFinishedBlockForTransaction:failCopy success:0 cancelled:0 error:errorCopy handledAsFinishedBlock:&v14];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    if (v14 == 1)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SBKTransactionController.m" lineNumber:660 description:@"transaction controllers with delegates can not use transaction finish blocks"];
    }

    v9 = [WeakRetained transactionController:self transactionDidFail:failCopy error:errorCopy];
  }

  return v9;
}

- (BOOL)_delegateShouldScheduleTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained transactionController:self shouldScheduleTransaction:transactionCopy] & 1) == 0)
  {
    if (error)
    {
      [SBKStoreError delegateCancelledErrorWithTransaction:transactionCopy underlyingError:0];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)_onQueue_performDefaultErrorHandlingForError:(id)error
{
  errorCopy = error;
  if ([errorCopy isAuthenticationError] && -[SBKTransactionController shouldAuthenticateIfNecessary](self, "shouldAuthenticateIfNecessary") && (objc_msgSend(errorCopy, "transaction"), v4 = objc_claimAutoreleasedReturnValue(), currentTransaction = self->_currentTransaction, v4, v4 == currentTransaction))
  {
    selfCopy2 = self;
    v7 = errorCopy;
    v8 = 1;
  }

  else
  {
    selfCopy2 = self;
    v7 = errorCopy;
    v8 = 2;
  }

  [(SBKTransactionController *)selfCopy2 _onQueue_resolveError:v7 resolution:v8];
}

- (void)_onQueue_performCancelErrorHandlingForError:(id)error
{
  errorCopy = error;
  if ([errorCopy isAuthenticationError])
  {
    [(SBKTransactionController *)self _onQueue_cancelAllPendingTransactions:errorCopy];
  }

  else
  {
    transaction = [errorCopy transaction];
    [(SBKTransactionController *)self _onQueue_cancelTransaction:transaction error:errorCopy];
  }
}

- (void)_onQueue_performRetryErrorHandlingForError:(id)error
{
  errorCopy = error;
  _onQueue_clampsController = [(SBKTransactionController *)self _onQueue_clampsController];
  if ([errorCopy isAccountsChangedError])
  {
    [_onQueue_clampsController setUserAcceptedSyncTimestamp];
LABEL_5:
    [(SBKTransactionController *)self _onQueue_processCurrentTransaction];
    goto LABEL_7;
  }

  if ([errorCopy isAuthenticationError])
  {
    [_onQueue_clampsController setUserAcceptedSyncTimestamp];
    [(SBKStoreAuthenticationController *)self->_authenticationController saveAccountToLastSyncedDefaults];
    goto LABEL_5;
  }

  transaction = [errorCopy transaction];
  [_onQueue_clampsController clearTimestampForTransaction:transaction];

  transaction2 = [errorCopy transaction];
  [(SBKTransactionController *)self _onQueue_scheduleTransaction:transaction2 isRetry:1];

LABEL_7:
}

- (void)_onQueue_resolveError:(id)error resolution:(int)resolution
{
  errorCopy = error;
  if (([errorCopy isTransactionCancelledError] & 1) == 0)
  {
    self->_isResolvingError = 1;
    transaction = [errorCopy transaction];
    currentTransaction = self->_currentTransaction;
    if (transaction == currentTransaction)
    {
    }

    else
    {

      if (currentTransaction)
      {
LABEL_7:
        if (resolution == 2)
        {
          [(SBKTransactionController *)self _onQueue_performCancelErrorHandlingForError:errorCopy];
        }

        else if (resolution == 1)
        {
          [(SBKTransactionController *)self _onQueue_performRetryErrorHandlingForError:errorCopy];
        }

        else
        {
          [(SBKTransactionController *)self _onQueue_performDefaultErrorHandlingForError:errorCopy];
        }

        self->_isResolvingError = 0;
        goto LABEL_13;
      }
    }

    _onQueue_clampsController = [(SBKTransactionController *)self _onQueue_clampsController];
    [_onQueue_clampsController clearAccountIdentifierCheckTimestamp];

    goto LABEL_7;
  }

LABEL_13:

  MEMORY[0x2821F96F8]();
}

- (void)_onQueue_processOperationOutput:(id)output operation:(id)operation operationAuthenticated:(BOOL)authenticated
{
  v33 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  operationCopy = operation;
  v9 = self->_currentTransaction;
  _onQueue_clampsController = [(SBKTransactionController *)self _onQueue_clampsController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v9 && self->_enabled)
    {
      v11 = outputCopy;
      response = [operationCopy response];
      v13 = [SBKResponse responseWithURLResponse:response responseDictionary:v11];

      activeRequest = [(SBKTransaction *)v9 activeRequest];
      v15 = [activeRequest canonicalResponseForResponse:v13];

      isSuccess = [v15 isSuccess];
      v17 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (isSuccess)
      {
        if (!v18)
        {
          goto LABEL_15;
        }

        *v32 = 138412290;
        *&v32[4] = v15;
        v19 = "Deserialized server response: %@";
      }

      else
      {
        if (!v18)
        {
          goto LABEL_15;
        }

        *v32 = 138412290;
        *&v32[4] = v11;
        v19 = "Deserialized server response produced response data: %@";
      }

      _os_log_impl(&dword_26BC19000, v17, OS_LOG_TYPE_DEFAULT, v19, v32, 0xCu);
LABEL_15:

      if ([v15 isSuccess])
      {
        [(SBKStoreAuthenticationController *)self->_authenticationController saveAccountToLastSyncedDefaults];
        [(SBKStoreAuthenticationController *)self->_authenticationController setShouldAuthenticate:0];
        [(SBKTransactionController *)self _processDataInResponse:v15];
LABEL_39:

        goto LABEL_40;
      }

      [v15 retrySeconds];
      if (v21 <= 0.0)
      {
        if (![v15 isUnsupportedClient])
        {
          if ([v15 isGenericError])
          {
            v27 = _SBKLogCategoryDefault();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *v32 = 138412290;
              *&v32[4] = v11;
              _os_log_impl(&dword_26BC19000, v27, OS_LOG_TYPE_DEFAULT, "Generic error indicated by response responseDictionary: %@", v32, 0xCu);
            }

            requestError = [v15 requestError];
            v28 = [SBKStoreError storeGenericErrorWithTransaction:v9 underlyingError:requestError];
          }

          else if ([v15 isValidationError])
          {
            v29 = _SBKLogCategoryDefault();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *v32 = 138412290;
              *&v32[4] = v11;
              _os_log_impl(&dword_26BC19000, v29, OS_LOG_TYPE_DEFAULT, "Validation error indicated by response responseDictionary: %@", v32, 0xCu);
            }

            requestError = [v15 requestError];
            v28 = [SBKStoreError storeValidationErrorWithTransaction:v9 underlyingError:requestError];
          }

          else if ([v15 isAuthenticationError])
          {
            [(SBKStoreAuthenticationController *)self->_authenticationController saveAccountToLastFailedSyncDefaults];
            if ([(SBKTransactionController *)self shouldAuthenticateIfNecessary])
            {
              [_onQueue_clampsController clearAuthenticationRequest];
              [(SBKStoreAuthenticationController *)self->_authenticationController setShouldAuthenticate:1];
              [(SBKTransactionController *)self _onQueue_processCurrentTransaction];
              goto LABEL_39;
            }

            requestError = [v15 requestError];
            v28 = [SBKStoreError storeAccountSessionExpiredWithTransaction:v9 underlyingError:requestError];
          }

          else
          {
            v30 = _SBKLogCategoryDefault();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *v32 = 138412290;
              *&v32[4] = v11;
              _os_log_impl(&dword_26BC19000, v30, OS_LOG_TYPE_DEFAULT, "Unknown error in response: %@", v32, 0xCu);
            }

            requestError = [v15 requestError];
            v28 = [SBKStoreError unknownErrorWithTransaction:v9 underlyingError:requestError];
          }

          v26 = v28;
          [(SBKTransactionController *)self _onQueue_transactionDidFail:v9 withError:v28, *v32];
LABEL_38:

          goto LABEL_39;
        }

        [_onQueue_clampsController setNetworkingBlocked];
        requestError = [v15 requestError];
        v25 = [SBKStoreError killSwitchErrorWithTransaction:v9 underlyingError:requestError];
      }

      else
      {
        [v15 retrySeconds];
        [_onQueue_clampsController backOffForTimeInterval:?];
        [v15 retrySeconds];
        v23 = v22;
        requestError = [v15 requestError];
        v25 = [SBKStoreError serverClampErrorWithTransaction:v9 retrySeconds:requestError underlyingError:v23];
      }

      v26 = v25;
      [(SBKTransactionController *)self _onQueue_cancelAllPendingTransactions:v25, *v32];
      goto LABEL_38;
    }

    v11 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      v20 = "Not using deserialized responseDictionary because transactions have been cancelled!";
      goto LABEL_11;
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      v20 = "Not using deserialized response because it is not a dictionary as expected!";
LABEL_11:
      _os_log_impl(&dword_26BC19000, v11, OS_LOG_TYPE_DEFAULT, v20, v32, 2u);
    }
  }

LABEL_40:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_processDataInResponse:(id)response
{
  currentTransaction = self->_currentTransaction;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SBKTransactionController__processDataInResponse___block_invoke;
  v4[3] = &unk_279D228D0;
  v4[4] = self;
  [(SBKTransaction *)currentTransaction processDataInResponse:response withCompletionHandler:v4];
}

void __51__SBKTransactionController__processDataInResponse___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SBKTransactionController__processDataInResponse___block_invoke_2;
  v4[3] = &unk_279D22AF0;
  v5 = a2;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

void __51__SBKTransactionController__processDataInResponse___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v2 = v1[13];
    if (v2 <= 0)
    {
      v1[13] = v2 + 1;
      v5 = *(a1 + 32);

      [v5 _onQueue_processCurrentTransaction];
    }

    else
    {
      v3 = v1[7];
      v6 = [SBKStoreError storeGenericErrorWithTransaction:v3 underlyingError:0];
      [v1 _onQueue_transactionDidFail:v3 withError:v6];
    }
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 _onQueue_currentTransactionDidFinish];
  }
}

- (void)_onQueue_transactionDidCancel:(id)cancel withError:(id)error
{
  cancelCopy = cancel;
  errorCopy = error;
  currentTransaction = self->_currentTransaction;
  if (currentTransaction)
  {
    v9 = currentTransaction == cancelCopy;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    [(SBKTransactionController *)self _onQueue_endBackgroundTask];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SBKTransactionController__onQueue_transactionDidCancel_withError___block_invoke;
  block[3] = &unk_279D23050;
  v13 = cancelCopy;
  v14 = errorCopy;
  selfCopy = self;
  v10 = errorCopy;
  v11 = cancelCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __68__SBKTransactionController__onQueue_transactionDidCancel_withError___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_26BC19000, v2, OS_LOG_TYPE_DEFAULT, "Transaction Failed: %@ -- Error: %@", &v7, 0x16u);
  }

  result = [*(a1 + 48) _delegateTransactionDidCancel:*(a1 + 32) withError:*(a1 + 40)];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_onQueue_transactionDidFail:(id)fail withError:(id)error
{
  failCopy = fail;
  errorCopy = error;
  currentTransaction = self->_currentTransaction;
  if (currentTransaction)
  {
    v9 = currentTransaction == failCopy;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    [(SBKTransactionController *)self _onQueue_endBackgroundTask];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SBKTransactionController__onQueue_transactionDidFail_withError___block_invoke;
  block[3] = &unk_279D23050;
  v13 = failCopy;
  v14 = errorCopy;
  selfCopy = self;
  v10 = errorCopy;
  v11 = failCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __66__SBKTransactionController__onQueue_transactionDidFail_withError___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_26BC19000, v2, OS_LOG_TYPE_DEFAULT, "Transaction Failed: %@ -- Error: %@", &v7, 0x16u);
  }

  result = [*(a1 + 48) _delegateTransactionDidFail:*(a1 + 32) withError:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 48) _resolveError:*(a1 + 40) resolution:0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_onQueue_currentTransactionDidFinish
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentTransaction = self->_currentTransaction;
    v7 = 138412290;
    v8 = currentTransaction;
    _os_log_impl(&dword_26BC19000, v3, OS_LOG_TYPE_DEFAULT, "Transaction Finished: %@", &v7, 0xCu);
  }

  [(SBKTransactionController *)self _onQueue_endBackgroundTask];
  [(SBKTransactionController *)self _delegateTransactionDidFinish:self->_currentTransaction];
  [(NSMutableArray *)self->_pendingTransactions removeObject:self->_currentTransaction];
  [(SBKTransaction *)self->_currentTransaction setActiveRequest:0];
  v5 = self->_currentTransaction;
  self->_currentTransaction = 0;

  [(SBKTransactionController *)self _onQueue_processPendingTransactions];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_onQueue_authenticationCanProcessTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  _onQueue_clampsController = [(SBKTransactionController *)self _onQueue_clampsController];
  v8 = ([_onQueue_clampsController hasUserRecentlyAcceptedSync] & 1) == 0 && !-[SBKStoreAuthenticationController isAuthenticationValidForTransaction:error:](self->_authenticationController, "isAuthenticationValidForTransaction:error:", transactionCopy, error) || !-[SBKStoreAuthenticationController shouldAuthenticate](self->_authenticationController, "shouldAuthenticate") || (objc_msgSend(_onQueue_clampsController, "hasAuthenticatedTooRecentlyForTransaction:error:", transactionCopy, error) & 1) == 0;

  return v8;
}

- (BOOL)_onQueue_clampsCanScheduleTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  _onQueue_clampsController = [(SBKTransactionController *)self _onQueue_clampsController];
  v8 = _onQueue_clampsController;
  if (_onQueue_clampsController)
  {
    v9 = [_onQueue_clampsController canScheduleTransaction:transactionCopy error:error];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_onQueue_assertIsTransactionValid:(id)valid error:(id *)error
{
  validCopy = valid;
  domain = [validCopy domain];
  v7 = [domain length];

  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBKTransactionController.m" lineNumber:413 description:{@"No domain specified in transaction %@!", validCopy}];
  }

  requestURL = [validCopy requestURL];

  if (!requestURL)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SBKTransactionController.m" lineNumber:414 description:{@"No url specified in transaction %@!", validCopy}];
  }
}

- (BOOL)_onQueue_isEnabledForTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  isEnabled = [(SBKTransactionController *)self isEnabled];
  v8 = isEnabled;
  if (error && !isEnabled)
  {
    *error = [SBKStoreError keyValueStoreDisabledErrorWithTransaction:transactionCopy underlyingError:0];
  }

  return v8;
}

- (BOOL)_onQueue_canScheduleTransaction:(id)transaction error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if (![(SBKTransactionController *)self _onQueue_isEnabledForTransaction:transactionCopy error:error])
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  [(SBKTransactionController *)self _onQueue_assertIsTransactionValid:transactionCopy error:error];
  if (![(SBKTransactionController *)self _onQueue_clampsCanScheduleTransaction:transactionCopy error:error])
  {
    v8 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v9 = *error;
      }

      else
      {
        v9 = 0;
      }

      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = transactionCopy;
      _os_log_impl(&dword_26BC19000, v8, OS_LOG_TYPE_DEFAULT, "Unable to schedule (due to clamps %@) transaction %@.", &v12, 0x16u);
    }

    goto LABEL_10;
  }

  v7 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_onQueue_addPendingTransaction:(id)transaction
{
  transactionCopy = transaction;
  _onQueue_clampsController = [(SBKTransactionController *)self _onQueue_clampsController];
  [_onQueue_clampsController setTimestampForTransaction:transactionCopy];

  [(NSMutableArray *)self->_pendingTransactions addObject:transactionCopy];

  [(SBKTransactionController *)self _onQueue_processPendingTransactions];
}

- (void)_onQueue_scheduleTransaction:(id)transaction isRetry:(BOOL)retry
{
  v24 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v7 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = transactionCopy;
    _os_log_impl(&dword_26BC19000, v7, OS_LOG_TYPE_DEFAULT, "Scheduling Transaction: %@", buf, 0xCu);
  }

  v19 = 0;
  v8 = [(SBKTransactionController *)self _onQueue_canScheduleTransaction:transactionCopy error:&v19];
  v9 = v19;
  v10 = v9;
  if (v8)
  {
    [(SBKTransactionController *)self _onQueue_addPendingTransaction:transactionCopy];
  }

  else if (!retry && [v9 isClampError] && (objc_msgSend(v10, "retrySeconds"), v11 <= 5.0))
  {
    [(NSMutableArray *)self->_pendingTransactions insertObject:transactionCopy atIndex:0];
    v13 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [v10 retrySeconds];
      *buf = 138412546;
      v21 = transactionCopy;
      v22 = 2048;
      v23 = v14;
      _os_log_impl(&dword_26BC19000, v13, OS_LOG_TYPE_DEFAULT, "Holding transaction %@ (due to clamps) %.2f seconds", buf, 0x16u);
    }

    [v10 retrySeconds];
    v16 = dispatch_time(0, ((v15 + 0.5) * 1000000000.0));
    queue = self->_queue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__SBKTransactionController__onQueue_scheduleTransaction_isRetry___block_invoke;
    v18[3] = &unk_279D231C8;
    v18[4] = self;
    dispatch_after(v16, queue, v18);
  }

  else
  {
    [(SBKTransactionController *)self _onQueue_transactionDidFail:transactionCopy withError:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __65__SBKTransactionController__onQueue_scheduleTransaction_isRetry___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 80) count])
  {
    v2 = [*(*(a1 + 32) + 80) objectAtIndex:0];
    if (v2)
    {
      v3 = v2;
      [*(*(a1 + 32) + 80) removeObject:v2];
      [*(a1 + 32) _onQueue_scheduleTransaction:v3 isRetry:1];
    }
  }
}

- (void)_onQueue_processCurrentTransaction
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentTransaction = self->_currentTransaction;
    *buf = 138412290;
    v14 = currentTransaction;
    _os_log_impl(&dword_26BC19000, v3, OS_LOG_TYPE_DEFAULT, "Processing Transaction: %@", buf, 0xCu);
  }

  v5 = self->_currentTransaction;
  v12 = 0;
  v6 = [(SBKTransactionController *)self _onQueue_authenticationCanProcessTransaction:v5 error:&v12];
  v7 = v12;
  if (v6)
  {
    [(SBKTransactionController *)self _onQueue_beginBackgroundTask];
    newRequest = [(SBKTransaction *)self->_currentTransaction newRequest];
    [newRequest setShouldAuthenticate:{-[SBKStoreAuthenticationController shouldAuthenticate](self->_authenticationController, "shouldAuthenticate")}];
    [(SBKTransaction *)self->_currentTransaction setActiveRequest:newRequest];
    v9 = [newRequest newURLOperationWithDelegate:self];
    [(SBKTransactionController *)self _enqueueStoreOperation:v9];

    v7 = newRequest;
  }

  else
  {
    _onQueue_clampsController = [(SBKTransactionController *)self _onQueue_clampsController];
    [_onQueue_clampsController setAccountIdentifierCheckTimestamp];

    [(SBKTransactionController *)self _onQueue_transactionDidFail:self->_currentTransaction withError:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_processPendingTransactions
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_currentTransaction)
  {
    v3 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      currentTransaction = self->_currentTransaction;
      v10 = 138412290;
      v11 = currentTransaction;
      _os_log_impl(&dword_26BC19000, v3, OS_LOG_TYPE_DEFAULT, "Transaction In progress: %@", &v10, 0xCu);
    }

LABEL_5:
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if (![(NSMutableArray *)self->_pendingTransactions count])
  {
    v9 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_26BC19000, v9, OS_LOG_TYPE_DEFAULT, "No Pending Transactions", &v10, 2u);
    }

    [(SBKTransactionController *)self _onQueue_endBackgroundTask];
    goto LABEL_5;
  }

  [(SBKTransaction *)self->_currentTransaction setActiveRequest:0];
  v6 = [(NSMutableArray *)self->_pendingTransactions objectAtIndex:0];
  v7 = self->_currentTransaction;
  self->_currentTransaction = v6;

  v8 = *MEMORY[0x277D85DE8];

  [(SBKTransactionController *)self _onQueue_processCurrentTransaction];
}

- (void)_onQueue_cancelTransaction:(id)transaction error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  errorCopy = error;
  if (transactionCopy)
  {
    currentTransaction = self->_currentTransaction;
    v9 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (currentTransaction == transactionCopy)
      {
        v10 = @"YES";
      }

      v13 = 138412546;
      v14 = transactionCopy;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_26BC19000, v9, OS_LOG_TYPE_DEFAULT, "Cancelling transaction: %@ -- isCurrentTransaction: %@", &v13, 0x16u);
    }

    if (!errorCopy)
    {
      errorCopy = [SBKStoreError transactionCancelledErrorWithTransaction:0 underlyingError:0];
    }

    [errorCopy setTransaction:transactionCopy];
    if (currentTransaction == transactionCopy)
    {
      [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
      [(SBKTransaction *)self->_currentTransaction setActiveRequest:0];
      v11 = self->_currentTransaction;
      self->_currentTransaction = 0;
    }

    if (self->_isResolvingError)
    {
      [(SBKTransactionController *)self _onQueue_transactionDidCancel:transactionCopy withError:errorCopy];
    }

    else
    {
      [(SBKTransactionController *)self _onQueue_transactionDidFail:transactionCopy withError:errorCopy];
    }

    [(NSMutableArray *)self->_pendingTransactions removeObject:transactionCopy];
    [(SBKTransactionController *)self _onQueue_processPendingTransactions];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_cancelAllPendingTransactions:(id)transactions
{
  v18 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  v5 = [(NSMutableArray *)self->_pendingTransactions copy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [transactionsCopy copy];
        [v11 setTransaction:v10];
        [(SBKTransactionController *)self _onQueue_cancelTransaction:v10 error:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_pendingTransactions removeAllObjects];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_endBackgroundTask
{
  v3 = self->_backgroundTaskAssertion;
  backgroundTaskAssertion = self->_backgroundTaskAssertion;
  self->_backgroundTaskAssertion = 0;

  if (v3)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SBKTransactionController__onQueue_endBackgroundTask__block_invoke;
    block[3] = &unk_279D231C8;
    v7 = v3;
    dispatch_async(queue, block);
  }
}

uint64_t __54__SBKTransactionController__onQueue_endBackgroundTask__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isValid];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 invalidate];
  }

  return result;
}

- (void)_onQueue_beginBackgroundTask
{
  if (!self->_backgroundTaskAssertion)
  {
    objc_initWeak(&location, self);
    v3 = [objc_alloc(MEMORY[0x277D27F40]) initWithName:@"SBKTransactionController" pid:getpid() subsystem:@"com.apple.amp.StoreBookkeeper" reason:2 flags:1];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__SBKTransactionController__onQueue_beginBackgroundTask__block_invoke;
    v5[3] = &unk_279D23028;
    objc_copyWeak(&v6, &location);
    [v3 setInvalidationHandler:v5];
    backgroundTaskAssertion = self->_backgroundTaskAssertion;
    self->_backgroundTaskAssertion = v3;

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __56__SBKTransactionController__onQueue_beginBackgroundTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__SBKTransactionController__onQueue_beginBackgroundTask__block_invoke_2;
    v7[3] = &unk_279D23150;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __56__SBKTransactionController__onQueue_beginBackgroundTask__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundTaskAssertion];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _onQueue_endBackgroundTask];
  }
}

- (void)_endBackgroundTask
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SBKTransactionController__endBackgroundTask__block_invoke;
  block[3] = &unk_279D231C8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_beginBackgroundTask
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SBKTransactionController__beginBackgroundTask__block_invoke;
  block[3] = &unk_279D231C8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_resolveError:(id)error resolution:(int)resolution
{
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SBKTransactionController__resolveError_resolution___block_invoke;
  block[3] = &unk_279D228A8;
  block[4] = self;
  v10 = errorCopy;
  resolutionCopy = resolution;
  v8 = errorCopy;
  dispatch_async(queue, block);
}

- (void)_storeOperationDidComplete:(id)complete
{
  completeCopy = complete;
  delegate = [completeCopy delegate];

  if (delegate == self)
  {
    [completeCopy setDelegate:0];
  }
}

- (void)_enqueueStoreOperation:(id)operation
{
  operationCopy = operation;
  objc_initWeak(&location, self);
  objc_initWeak(&from, operationCopy);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __51__SBKTransactionController__enqueueStoreOperation___block_invoke;
  v8 = &unk_279D22880;
  objc_copyWeak(&v9, &from);
  objc_copyWeak(&v10, &location);
  [operationCopy setCompletionBlock:&v5];
  [(NSOperationQueue *)self->_operationQueue addOperation:operationCopy, v5, v6, v7, v8];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __51__SBKTransactionController__enqueueStoreOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 _storeOperationDidComplete:v4];

    WeakRetained = v4;
  }
}

- (void)cancelAllTransactionsCancelCode:(int64_t)code
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SBKTransactionController_cancelAllTransactionsCancelCode___block_invoke;
  v4[3] = &unk_279D22D68;
  v4[4] = self;
  v4[5] = code;
  dispatch_async(queue, v4);
}

void __60__SBKTransactionController_cancelAllTransactionsCancelCode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [SBKStoreError transactionCancelledErrorWithTransaction:0 code:*(a1 + 40) underlyingError:0];
  [v2 _onQueue_cancelAllPendingTransactions:v3];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v5[7];
  v7 = [SBKStoreError transactionCancelledErrorWithTransaction:v6 code:v4 underlyingError:0];
  [v5 _onQueue_cancelTransaction:v6 error:v7];
}

- (void)cancelAllTransactions
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SBKTransactionController_cancelAllTransactions__block_invoke;
  block[3] = &unk_279D231C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __49__SBKTransactionController_cancelAllTransactions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [SBKStoreError transactionCancelledErrorWithTransaction:0 underlyingError:0];
  [v2 _onQueue_cancelAllPendingTransactions:v3];

  v4 = *(a1 + 32);
  v5 = v4[7];
  v6 = [SBKStoreError transactionCancelledErrorWithTransaction:v5 underlyingError:0];
  [v4 _onQueue_cancelTransaction:v5 error:v6];
}

- (void)cancelScheduledTransaction:(id)transaction
{
  transactionCopy = transaction;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SBKTransactionController_cancelScheduledTransaction___block_invoke;
  v7[3] = &unk_279D23150;
  v7[4] = self;
  v8 = transactionCopy;
  v6 = transactionCopy;
  dispatch_async(queue, v7);
}

void __55__SBKTransactionController_cancelScheduledTransaction___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [SBKStoreError transactionCancelledErrorWithTransaction:v2 underlyingError:0];
  [v1 _onQueue_cancelTransaction:v2 error:v3];
}

- (void)scheduleTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (self->_account)
  {
    v14 = 0;
    v5 = [(SBKTransactionController *)self _delegateShouldScheduleTransaction:transactionCopy error:&v14];
    v6 = v14;
  }

  else
  {
    v6 = [SBKStoreError noStoreAccountErrorWithTransaction:transactionCopy underlyingError:0];
    v5 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SBKTransactionController_scheduleTransaction___block_invoke;
  block[3] = &unk_279D23240;
  v13 = v5;
  block[4] = self;
  v11 = transactionCopy;
  v12 = v6;
  v8 = v6;
  v9 = transactionCopy;
  dispatch_async(queue, block);
}

uint64_t __48__SBKTransactionController_scheduleTransaction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 == 1)
  {
    return [v3 _onQueue_scheduleTransaction:v4 isRetry:0];
  }

  else
  {
    return [v3 _onQueue_transactionDidFail:v4 withError:*(a1 + 48)];
  }
}

- (void)scheduleTransaction:(id)transaction withTransactionFinishedBlock:(id)block
{
  transactionCopy = transaction;
  v6 = [block copy];
  [transactionCopy setTransactionContext:v6 forKey:@"SBKTransactionFinishedBlock"];

  [(SBKTransactionController *)self scheduleTransaction:transactionCopy];
}

- (BOOL)isIdle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SBKTransactionController_isIdle__block_invoke;
  v5[3] = &unk_279D230A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__SBKTransactionController_isIdle__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_isIdle];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_networkTypeChangedNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SBKTransactionController__networkTypeChangedNotification___block_invoke;
  block[3] = &unk_279D231C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __60__SBKTransactionController__networkTypeChangedNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _onQueue_clampsController];
  [v1 clearNetworkingBlocked];
}

- (void)setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SBKTransactionController_setEnabled___block_invoke;
  block[3] = &unk_279D231C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __39__SBKTransactionController_setEnabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[8] == 1)
  {
    v2 = *(a1 + 32);

    [v2 _onQueue_processPendingTransactions];
  }

  else
  {
    v3 = [SBKStoreError keyValueStoreDisabledErrorWithTransaction:0 underlyingError:0];
    [v1 _onQueue_cancelAllPendingTransactions:v3];
  }
}

- (void)setRequestURL:(id)l
{
  lCopy = l;
  if (([(NSURL *)self->_requestURL isEqual:lCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_requestURL, l);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__SBKTransactionController_setRequestURL___block_invoke;
    block[3] = &unk_279D231C8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __42__SBKTransactionController_setRequestURL___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _onQueue_clampsController];
  [v1 reset];
}

- (void)setDomain:(id)domain
{
  domainCopy = domain;
  if (![(NSString *)self->_domain isEqualToString:domainCopy])
  {
    v5 = [domainCopy copy];
    domain = self->_domain;
    self->_domain = v5;

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__SBKTransactionController_setDomain___block_invoke;
    block[3] = &unk_279D231C8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __38__SBKTransactionController_setDomain___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _onQueue_clampsController];
  [v1 reset];
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D7FCC0];
  mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
  [defaultCenter removeObserver:self name:v4 object:mEMORY[0x277D7FD00]];

  [(SBKTransactionController *)self _onQueue_endBackgroundTask];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  operations = [(NSOperationQueue *)self->_operationQueue operations];
  v7 = [operations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(operations);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 setDelegate:0];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [operations countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13.receiver = self;
  v13.super_class = SBKTransactionController;
  [(SBKTransactionController *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (SBKTransactionController)initWithDomain:(id)domain requestURL:(id)l forAccount:(id)account
{
  domainCopy = domain;
  lCopy = l;
  accountCopy = account;
  v26.receiver = self;
  v26.super_class = SBKTransactionController;
  v11 = [(SBKTransactionController *)&v26 init];
  if (v11)
  {
    v12 = [domainCopy copy];
    domain = v11->_domain;
    v11->_domain = v12;

    objc_storeStrong(&v11->_requestURL, l);
    v11->_enabled = 1;
    v14 = dispatch_queue_create("com.apple.SBKTransactionController", 0);
    queue = v11->_queue;
    v11->_queue = v14;

    v11->_conflictResolutionAttempts = 0;
    v16 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v11->_operationQueue;
    v11->_operationQueue = v16;

    [(NSOperationQueue *)v11->_operationQueue setName:@"com.apple.SBKTransactionController.operationQueue"];
    [(NSOperationQueue *)v11->_operationQueue setMaxConcurrentOperationCount:1];
    objc_storeStrong(&v11->_account, account);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingTransactions = v11->_pendingTransactions;
    v11->_pendingTransactions = v18;

    v20 = [[SBKStoreAuthenticationController alloc] initWithStoreAccount:v11->_account];
    authenticationController = v11->_authenticationController;
    v11->_authenticationController = v20;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = *MEMORY[0x277D7FCC0];
    mEMORY[0x277D7FD00] = [MEMORY[0x277D7FD00] sharedInstance];
    [defaultCenter addObserver:v11 selector:sel__networkTypeChangedNotification_ name:v23 object:mEMORY[0x277D7FD00]];
  }

  return v11;
}

- (SBKTransactionController)initWithDomain:(id)domain requestURL:(id)l
{
  lCopy = l;
  domainCopy = domain;
  v8 = SBKStoreAccount();
  v9 = [(SBKTransactionController *)self initWithDomain:domainCopy requestURL:lCopy forAccount:v8];

  return v9;
}

@end