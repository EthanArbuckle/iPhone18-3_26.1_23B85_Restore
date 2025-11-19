@interface PUActivityItemSourceAnchorOperation
- (void)px_start;
- (void)signalAnchor;
@end

@implementation PUActivityItemSourceAnchorOperation

- (void)signalAnchor
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Share Sheet: Anchor operation (%@) signalled", &v4, 0xCu);
  }

  if ([(PXAsyncOperation *)self isExecuting])
  {
    [(PXAsyncOperation *)self px_finishIfPossible];
  }

  else
  {
    [(PXAsyncOperation *)self cancel];
  }
}

- (void)px_start
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "Share Sheet: Anchor operation (%@) encountered during preparation", &v5, 0xCu);
  }

  if ([(PUActivityItemSourceAnchorOperation *)self isCancelled])
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = self;
      _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "Share Sheet: Anchor operation (%@) finishing immediately", &v5, 0xCu);
    }

    [(PXAsyncOperation *)self px_finishIfPossible];
  }
}

@end