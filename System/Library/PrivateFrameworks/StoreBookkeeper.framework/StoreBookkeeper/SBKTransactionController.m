@interface SBKTransactionController
- (BOOL)_delegateShouldScheduleTransaction:(id)a3 error:(id *)a4;
- (BOOL)_delegateTransactionDidFail:(id)a3 withError:(id)a4;
- (BOOL)_onQueue_authenticationCanProcessTransaction:(id)a3 error:(id *)a4;
- (BOOL)_onQueue_canScheduleTransaction:(id)a3 error:(id *)a4;
- (BOOL)_onQueue_clampsCanScheduleTransaction:(id)a3 error:(id *)a4;
- (BOOL)_onQueue_isEnabledForTransaction:(id)a3 error:(id *)a4;
- (BOOL)isIdle;
- (SBKTransactionController)initWithDomain:(id)a3 requestURL:(id)a4;
- (SBKTransactionController)initWithDomain:(id)a3 requestURL:(id)a4 forAccount:(id)a5;
- (SBKTransactionControllerDelegate)delegate;
- (id)networkTypeObserver;
- (void)_beginBackgroundTask;
- (void)_delegateTransactionDidCancel:(id)a3 withError:(id)a4;
- (void)_delegateTransactionDidFinish:(id)a3;
- (void)_endBackgroundTask;
- (void)_enqueueStoreOperation:(id)a3;
- (void)_networkTypeChangedNotification:(id)a3;
- (void)_onQueue_addPendingTransaction:(id)a3;
- (void)_onQueue_assertIsTransactionValid:(id)a3 error:(id *)a4;
- (void)_onQueue_beginBackgroundTask;
- (void)_onQueue_cancelAllPendingTransactions:(id)a3;
- (void)_onQueue_cancelTransaction:(id)a3 error:(id)a4;
- (void)_onQueue_currentTransactionDidFinish;
- (void)_onQueue_endBackgroundTask;
- (void)_onQueue_performCancelErrorHandlingForError:(id)a3;
- (void)_onQueue_performDefaultErrorHandlingForError:(id)a3;
- (void)_onQueue_performRetryErrorHandlingForError:(id)a3;
- (void)_onQueue_processCurrentTransaction;
- (void)_onQueue_processOperationOutput:(id)a3 operation:(id)a4 operationAuthenticated:(BOOL)a5;
- (void)_onQueue_processPendingTransactions;
- (void)_onQueue_resolveError:(id)a3 resolution:(int)a4;
- (void)_onQueue_scheduleTransaction:(id)a3 isRetry:(BOOL)a4;
- (void)_onQueue_transactionDidCancel:(id)a3 withError:(id)a4;
- (void)_onQueue_transactionDidFail:(id)a3 withError:(id)a4;
- (void)_processDataInResponse:(id)a3;
- (void)_resolveError:(id)a3 resolution:(int)a4;
- (void)_storeOperationDidComplete:(id)a3;
- (void)cancelAllTransactions;
- (void)cancelAllTransactionsCancelCode:(int64_t)a3;
- (void)cancelScheduledTransaction:(id)a3;
- (void)dealloc;
- (void)operation:(id)a3 didReceiveResponse:(id)a4;
- (void)operation:(id)a3 failedWithError:(id)a4;
- (void)operation:(id)a3 finishedWithOutput:(id)a4;
- (void)scheduleTransaction:(id)a3;
- (void)scheduleTransaction:(id)a3 withTransactionFinishedBlock:(id)a4;
- (void)setDomain:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setRequestURL:(id)a3;
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

- (void)operation:(id)a3 failedWithError:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_currentTransaction;
  if ([v7 code] == 16)
  {
    v9 = [SBKStoreError userCancelledSignInErrorWithTransaction:v8 underlyingError:v7];
    v10 = 1;
    v11 = @"User cancelled sign-in";
  }

  else if ([v7 code] == 5)
  {
    v9 = [SBKStoreError userEnteredWrongCredentialsErrorWithTransaction:v8 underlyingError:v7];
    v10 = 1;
    v11 = @"User entered wrong credentials";
  }

  else
  {
    v12 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 requestProperties];
      v14 = [v13 URL];
      *buf = 138412546;
      v27 = v14;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_26BC19000, v12, OS_LOG_TYPE_DEFAULT, "Operation failedWithError: %@ -- inputError = %@", buf, 0x16u);
    }

    v9 = [SBKStoreError unknownErrorWithTransaction:v8 underlyingError:v7];
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
  v21 = self;
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

- (void)operation:(id)a3 didReceiveResponse:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 statusCode] == 511)
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

- (void)operation:(id)a3 finishedWithOutput:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SBKTransactionController_operation_finishedWithOutput___block_invoke;
  block[3] = &unk_279D23050;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
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

- (void)_delegateTransactionDidFinish:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__SBKTransactionController__delegateTransactionDidFinish___block_invoke;
  v9[3] = &unk_279D22920;
  v9[4] = self;
  v10 = v5;
  v11 = WeakRetained;
  v12 = a2;
  v7 = WeakRetained;
  v8 = v5;
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

- (void)_delegateTransactionDidCancel:(id)a3 withError:(id)a4
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SBKTransactionController__delegateTransactionDidCancel_withError___block_invoke;
  block[3] = &unk_279D228F8;
  block[4] = self;
  v14 = v7;
  v15 = v8;
  v16 = WeakRetained;
  v17 = a2;
  v10 = WeakRetained;
  v11 = v8;
  v12 = v7;
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

- (BOOL)_delegateTransactionDidFail:(id)a3 withError:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SBKTransactionController.m" lineNumber:653 description:@"Delegate calls should be done on the main thread"];
  }

  v14 = 0;
  v9 = [(SBKTransactionController *)self _sendFinishedBlockForTransaction:v7 success:0 cancelled:0 error:v8 handledAsFinishedBlock:&v14];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    if (v14 == 1)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"SBKTransactionController.m" lineNumber:660 description:@"transaction controllers with delegates can not use transaction finish blocks"];
    }

    v9 = [WeakRetained transactionController:self transactionDidFail:v7 error:v8];
  }

  return v9;
}

- (BOOL)_delegateShouldScheduleTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained transactionController:self shouldScheduleTransaction:v6] & 1) == 0)
  {
    if (a4)
    {
      [SBKStoreError delegateCancelledErrorWithTransaction:v6 underlyingError:0];
      *a4 = v8 = 0;
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

- (void)_onQueue_performDefaultErrorHandlingForError:(id)a3
{
  v9 = a3;
  if ([v9 isAuthenticationError] && -[SBKTransactionController shouldAuthenticateIfNecessary](self, "shouldAuthenticateIfNecessary") && (objc_msgSend(v9, "transaction"), v4 = objc_claimAutoreleasedReturnValue(), currentTransaction = self->_currentTransaction, v4, v4 == currentTransaction))
  {
    v6 = self;
    v7 = v9;
    v8 = 1;
  }

  else
  {
    v6 = self;
    v7 = v9;
    v8 = 2;
  }

  [(SBKTransactionController *)v6 _onQueue_resolveError:v7 resolution:v8];
}

- (void)_onQueue_performCancelErrorHandlingForError:(id)a3
{
  v5 = a3;
  if ([v5 isAuthenticationError])
  {
    [(SBKTransactionController *)self _onQueue_cancelAllPendingTransactions:v5];
  }

  else
  {
    v4 = [v5 transaction];
    [(SBKTransactionController *)self _onQueue_cancelTransaction:v4 error:v5];
  }
}

- (void)_onQueue_performRetryErrorHandlingForError:(id)a3
{
  v7 = a3;
  v4 = [(SBKTransactionController *)self _onQueue_clampsController];
  if ([v7 isAccountsChangedError])
  {
    [v4 setUserAcceptedSyncTimestamp];
LABEL_5:
    [(SBKTransactionController *)self _onQueue_processCurrentTransaction];
    goto LABEL_7;
  }

  if ([v7 isAuthenticationError])
  {
    [v4 setUserAcceptedSyncTimestamp];
    [(SBKStoreAuthenticationController *)self->_authenticationController saveAccountToLastSyncedDefaults];
    goto LABEL_5;
  }

  v5 = [v7 transaction];
  [v4 clearTimestampForTransaction:v5];

  v6 = [v7 transaction];
  [(SBKTransactionController *)self _onQueue_scheduleTransaction:v6 isRetry:1];

LABEL_7:
}

- (void)_onQueue_resolveError:(id)a3 resolution:(int)a4
{
  v9 = a3;
  if (([v9 isTransactionCancelledError] & 1) == 0)
  {
    self->_isResolvingError = 1;
    v6 = [v9 transaction];
    currentTransaction = self->_currentTransaction;
    if (v6 == currentTransaction)
    {
    }

    else
    {

      if (currentTransaction)
      {
LABEL_7:
        if (a4 == 2)
        {
          [(SBKTransactionController *)self _onQueue_performCancelErrorHandlingForError:v9];
        }

        else if (a4 == 1)
        {
          [(SBKTransactionController *)self _onQueue_performRetryErrorHandlingForError:v9];
        }

        else
        {
          [(SBKTransactionController *)self _onQueue_performDefaultErrorHandlingForError:v9];
        }

        self->_isResolvingError = 0;
        goto LABEL_13;
      }
    }

    v8 = [(SBKTransactionController *)self _onQueue_clampsController];
    [v8 clearAccountIdentifierCheckTimestamp];

    goto LABEL_7;
  }

LABEL_13:

  MEMORY[0x2821F96F8]();
}

- (void)_onQueue_processOperationOutput:(id)a3 operation:(id)a4 operationAuthenticated:(BOOL)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = self->_currentTransaction;
  v10 = [(SBKTransactionController *)self _onQueue_clampsController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v9 && self->_enabled)
    {
      v11 = v7;
      v12 = [v8 response];
      v13 = [SBKResponse responseWithURLResponse:v12 responseDictionary:v11];

      v14 = [(SBKTransaction *)v9 activeRequest];
      v15 = [v14 canonicalResponseForResponse:v13];

      v16 = [v15 isSuccess];
      v17 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v16)
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

            v24 = [v15 requestError];
            v28 = [SBKStoreError storeGenericErrorWithTransaction:v9 underlyingError:v24];
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

            v24 = [v15 requestError];
            v28 = [SBKStoreError storeValidationErrorWithTransaction:v9 underlyingError:v24];
          }

          else if ([v15 isAuthenticationError])
          {
            [(SBKStoreAuthenticationController *)self->_authenticationController saveAccountToLastFailedSyncDefaults];
            if ([(SBKTransactionController *)self shouldAuthenticateIfNecessary])
            {
              [v10 clearAuthenticationRequest];
              [(SBKStoreAuthenticationController *)self->_authenticationController setShouldAuthenticate:1];
              [(SBKTransactionController *)self _onQueue_processCurrentTransaction];
              goto LABEL_39;
            }

            v24 = [v15 requestError];
            v28 = [SBKStoreError storeAccountSessionExpiredWithTransaction:v9 underlyingError:v24];
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

            v24 = [v15 requestError];
            v28 = [SBKStoreError unknownErrorWithTransaction:v9 underlyingError:v24];
          }

          v26 = v28;
          [(SBKTransactionController *)self _onQueue_transactionDidFail:v9 withError:v28, *v32];
LABEL_38:

          goto LABEL_39;
        }

        [v10 setNetworkingBlocked];
        v24 = [v15 requestError];
        v25 = [SBKStoreError killSwitchErrorWithTransaction:v9 underlyingError:v24];
      }

      else
      {
        [v15 retrySeconds];
        [v10 backOffForTimeInterval:?];
        [v15 retrySeconds];
        v23 = v22;
        v24 = [v15 requestError];
        v25 = [SBKStoreError serverClampErrorWithTransaction:v9 retrySeconds:v24 underlyingError:v23];
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

- (void)_processDataInResponse:(id)a3
{
  currentTransaction = self->_currentTransaction;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SBKTransactionController__processDataInResponse___block_invoke;
  v4[3] = &unk_279D228D0;
  v4[4] = self;
  [(SBKTransaction *)currentTransaction processDataInResponse:a3 withCompletionHandler:v4];
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

- (void)_onQueue_transactionDidCancel:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  currentTransaction = self->_currentTransaction;
  if (currentTransaction)
  {
    v9 = currentTransaction == v6;
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
  v13 = v6;
  v14 = v7;
  v15 = self;
  v10 = v7;
  v11 = v6;
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

- (void)_onQueue_transactionDidFail:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  currentTransaction = self->_currentTransaction;
  if (currentTransaction)
  {
    v9 = currentTransaction == v6;
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
  v13 = v6;
  v14 = v7;
  v15 = self;
  v10 = v7;
  v11 = v6;
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

- (BOOL)_onQueue_authenticationCanProcessTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SBKTransactionController *)self _onQueue_clampsController];
  v8 = ([v7 hasUserRecentlyAcceptedSync] & 1) == 0 && !-[SBKStoreAuthenticationController isAuthenticationValidForTransaction:error:](self->_authenticationController, "isAuthenticationValidForTransaction:error:", v6, a4) || !-[SBKStoreAuthenticationController shouldAuthenticate](self->_authenticationController, "shouldAuthenticate") || (objc_msgSend(v7, "hasAuthenticatedTooRecentlyForTransaction:error:", v6, a4) & 1) == 0;

  return v8;
}

- (BOOL)_onQueue_clampsCanScheduleTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SBKTransactionController *)self _onQueue_clampsController];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 canScheduleTransaction:v6 error:a4];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_onQueue_assertIsTransactionValid:(id)a3 error:(id *)a4
{
  v11 = a3;
  v6 = [v11 domain];
  v7 = [v6 length];

  if (!v7)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"SBKTransactionController.m" lineNumber:413 description:{@"No domain specified in transaction %@!", v11}];
  }

  v8 = [v11 requestURL];

  if (!v8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SBKTransactionController.m" lineNumber:414 description:{@"No url specified in transaction %@!", v11}];
  }
}

- (BOOL)_onQueue_isEnabledForTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SBKTransactionController *)self isEnabled];
  v8 = v7;
  if (a4 && !v7)
  {
    *a4 = [SBKStoreError keyValueStoreDisabledErrorWithTransaction:v6 underlyingError:0];
  }

  return v8;
}

- (BOOL)_onQueue_canScheduleTransaction:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(SBKTransactionController *)self _onQueue_isEnabledForTransaction:v6 error:a4])
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  [(SBKTransactionController *)self _onQueue_assertIsTransactionValid:v6 error:a4];
  if (![(SBKTransactionController *)self _onQueue_clampsCanScheduleTransaction:v6 error:a4])
  {
    v8 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v9 = *a4;
      }

      else
      {
        v9 = 0;
      }

      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_26BC19000, v8, OS_LOG_TYPE_DEFAULT, "Unable to schedule (due to clamps %@) transaction %@.", &v12, 0x16u);
    }

    goto LABEL_10;
  }

  v7 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_onQueue_addPendingTransaction:(id)a3
{
  v4 = a3;
  v5 = [(SBKTransactionController *)self _onQueue_clampsController];
  [v5 setTimestampForTransaction:v4];

  [(NSMutableArray *)self->_pendingTransactions addObject:v4];

  [(SBKTransactionController *)self _onQueue_processPendingTransactions];
}

- (void)_onQueue_scheduleTransaction:(id)a3 isRetry:(BOOL)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_26BC19000, v7, OS_LOG_TYPE_DEFAULT, "Scheduling Transaction: %@", buf, 0xCu);
  }

  v19 = 0;
  v8 = [(SBKTransactionController *)self _onQueue_canScheduleTransaction:v6 error:&v19];
  v9 = v19;
  v10 = v9;
  if (v8)
  {
    [(SBKTransactionController *)self _onQueue_addPendingTransaction:v6];
  }

  else if (!a4 && [v9 isClampError] && (objc_msgSend(v10, "retrySeconds"), v11 <= 5.0))
  {
    [(NSMutableArray *)self->_pendingTransactions insertObject:v6 atIndex:0];
    v13 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      [v10 retrySeconds];
      *buf = 138412546;
      v21 = v6;
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
    [(SBKTransactionController *)self _onQueue_transactionDidFail:v6 withError:v10];
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
    v8 = [(SBKTransaction *)self->_currentTransaction newRequest];
    [v8 setShouldAuthenticate:{-[SBKStoreAuthenticationController shouldAuthenticate](self->_authenticationController, "shouldAuthenticate")}];
    [(SBKTransaction *)self->_currentTransaction setActiveRequest:v8];
    v9 = [v8 newURLOperationWithDelegate:self];
    [(SBKTransactionController *)self _enqueueStoreOperation:v9];

    v7 = v8;
  }

  else
  {
    v10 = [(SBKTransactionController *)self _onQueue_clampsController];
    [v10 setAccountIdentifierCheckTimestamp];

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

- (void)_onQueue_cancelTransaction:(id)a3 error:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    currentTransaction = self->_currentTransaction;
    v9 = os_log_create("com.apple.amp.StoreBookkeeper", "KVS");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (currentTransaction == v6)
      {
        v10 = @"YES";
      }

      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_26BC19000, v9, OS_LOG_TYPE_DEFAULT, "Cancelling transaction: %@ -- isCurrentTransaction: %@", &v13, 0x16u);
    }

    if (!v7)
    {
      v7 = [SBKStoreError transactionCancelledErrorWithTransaction:0 underlyingError:0];
    }

    [v7 setTransaction:v6];
    if (currentTransaction == v6)
    {
      [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
      [(SBKTransaction *)self->_currentTransaction setActiveRequest:0];
      v11 = self->_currentTransaction;
      self->_currentTransaction = 0;
    }

    if (self->_isResolvingError)
    {
      [(SBKTransactionController *)self _onQueue_transactionDidCancel:v6 withError:v7];
    }

    else
    {
      [(SBKTransactionController *)self _onQueue_transactionDidFail:v6 withError:v7];
    }

    [(NSMutableArray *)self->_pendingTransactions removeObject:v6];
    [(SBKTransactionController *)self _onQueue_processPendingTransactions];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_cancelAllPendingTransactions:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v11 = [v4 copy];
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

- (void)_resolveError:(id)a3 resolution:(int)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SBKTransactionController__resolveError_resolution___block_invoke;
  block[3] = &unk_279D228A8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)_storeOperationDidComplete:(id)a3
{
  v5 = a3;
  v4 = [v5 delegate];

  if (v4 == self)
  {
    [v5 setDelegate:0];
  }
}

- (void)_enqueueStoreOperation:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __51__SBKTransactionController__enqueueStoreOperation___block_invoke;
  v8 = &unk_279D22880;
  objc_copyWeak(&v9, &from);
  objc_copyWeak(&v10, &location);
  [v4 setCompletionBlock:&v5];
  [(NSOperationQueue *)self->_operationQueue addOperation:v4, v5, v6, v7, v8];
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

- (void)cancelAllTransactionsCancelCode:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SBKTransactionController_cancelAllTransactionsCancelCode___block_invoke;
  v4[3] = &unk_279D22D68;
  v4[4] = self;
  v4[5] = a3;
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

- (void)cancelScheduledTransaction:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SBKTransactionController_cancelScheduledTransaction___block_invoke;
  v7[3] = &unk_279D23150;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __55__SBKTransactionController_cancelScheduledTransaction___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [SBKStoreError transactionCancelledErrorWithTransaction:v2 underlyingError:0];
  [v1 _onQueue_cancelTransaction:v2 error:v3];
}

- (void)scheduleTransaction:(id)a3
{
  v4 = a3;
  if (self->_account)
  {
    v14 = 0;
    v5 = [(SBKTransactionController *)self _delegateShouldScheduleTransaction:v4 error:&v14];
    v6 = v14;
  }

  else
  {
    v6 = [SBKStoreError noStoreAccountErrorWithTransaction:v4 underlyingError:0];
    v5 = 0;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SBKTransactionController_scheduleTransaction___block_invoke;
  block[3] = &unk_279D23240;
  v13 = v5;
  block[4] = self;
  v11 = v4;
  v12 = v6;
  v8 = v6;
  v9 = v4;
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

- (void)scheduleTransaction:(id)a3 withTransactionFinishedBlock:(id)a4
{
  v7 = a3;
  v6 = [a4 copy];
  [v7 setTransactionContext:v6 forKey:@"SBKTransactionFinishedBlock"];

  [(SBKTransactionController *)self scheduleTransaction:v7];
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

- (void)_networkTypeChangedNotification:(id)a3
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

- (void)setEnabled:(BOOL)a3
{
  self->_enabled = a3;
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

- (void)setRequestURL:(id)a3
{
  v5 = a3;
  if (([(NSURL *)self->_requestURL isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_requestURL, a3);
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

- (void)setDomain:(id)a3
{
  v4 = a3;
  if (![(NSString *)self->_domain isEqualToString:v4])
  {
    v5 = [v4 copy];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D7FCC0];
  v5 = [MEMORY[0x277D7FD00] sharedInstance];
  [v3 removeObserver:self name:v4 object:v5];

  [(SBKTransactionController *)self _onQueue_endBackgroundTask];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSOperationQueue *)self->_operationQueue operations];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
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
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13.receiver = self;
  v13.super_class = SBKTransactionController;
  [(SBKTransactionController *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (SBKTransactionController)initWithDomain:(id)a3 requestURL:(id)a4 forAccount:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = SBKTransactionController;
  v11 = [(SBKTransactionController *)&v26 init];
  if (v11)
  {
    v12 = [v8 copy];
    domain = v11->_domain;
    v11->_domain = v12;

    objc_storeStrong(&v11->_requestURL, a4);
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
    objc_storeStrong(&v11->_account, a5);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingTransactions = v11->_pendingTransactions;
    v11->_pendingTransactions = v18;

    v20 = [[SBKStoreAuthenticationController alloc] initWithStoreAccount:v11->_account];
    authenticationController = v11->_authenticationController;
    v11->_authenticationController = v20;

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    v23 = *MEMORY[0x277D7FCC0];
    v24 = [MEMORY[0x277D7FD00] sharedInstance];
    [v22 addObserver:v11 selector:sel__networkTypeChangedNotification_ name:v23 object:v24];
  }

  return v11;
}

- (SBKTransactionController)initWithDomain:(id)a3 requestURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = SBKStoreAccount();
  v9 = [(SBKTransactionController *)self initWithDomain:v7 requestURL:v6 forAccount:v8];

  return v9;
}

@end