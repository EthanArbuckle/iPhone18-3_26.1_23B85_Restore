@interface SBFFileCacheURLFaultHandler
- (SBFFileCacheURLFaultHandler)init;
- (void)attemptLoadFromURL:(id)a3 session:(id)a4 retryIntervalEnumerator:(id)a5 completionHandler:(id)a6;
- (void)fileCache:(id)a3 loadFileForIdentifier:(id)a4 completionHandler:(id)a5;
- (void)performLoadFromURL:(id)a3 session:(id)a4 completionHandler:(id)a5;
@end

@implementation SBFFileCacheURLFaultHandler

- (SBFFileCacheURLFaultHandler)init
{
  v9.receiver = self;
  v9.super_class = SBFFileCacheURLFaultHandler;
  v2 = [(SBFFileCacheURLFaultHandler *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AF78];
    v4 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
    v5 = [v3 sessionWithConfiguration:v4];
    urlSession = v2->_urlSession;
    v2->_urlSession = v5;

    retryIntervals = v2->_retryIntervals;
    v2->_retryIntervals = MEMORY[0x1E695E0F0];
  }

  return v2;
}

- (void)fileCache:(id)a3 loadFileForIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v11 = [(SBFFileCacheURLFaultHandler *)self retryIntervals];
  v9 = [v11 objectEnumerator];
  v10 = [(SBFFileCacheURLFaultHandler *)self urlSession];
  [(SBFFileCacheURLFaultHandler *)self attemptLoadFromURL:v8 session:v10 retryIntervalEnumerator:v9 completionHandler:v7];
}

- (void)attemptLoadFromURL:(id)a3 session:(id)a4 retryIntervalEnumerator:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __100__SBFFileCacheURLFaultHandler_attemptLoadFromURL_session_retryIntervalEnumerator_completionHandler___block_invoke;
  v18[3] = &unk_1E807FBB8;
  v22 = v11;
  v23 = v13;
  v19 = v12;
  v20 = self;
  v21 = v10;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  v17 = v13;
  [(SBFFileCacheURLFaultHandler *)self performLoadFromURL:v15 session:v14 completionHandler:v18];
}

void __100__SBFFileCacheURLFaultHandler_attemptLoadFromURL_session_retryIntervalEnumerator_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) nextObject];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      v9 = dispatch_time(0, (v8 * 1000000000.0));
      v10 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __100__SBFFileCacheURLFaultHandler_attemptLoadFromURL_session_retryIntervalEnumerator_completionHandler___block_invoke_2;
      block[3] = &unk_1E807FB90;
      v16 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = *(a1 + 32);
      *&v14 = v12;
      *(&v14 + 1) = v13;
      *&v15 = v16;
      *(&v15 + 1) = v11;
      v18 = v15;
      v19 = v14;
      v20 = *(a1 + 64);
      dispatch_after(v9, v10, block);
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }
}

- (void)performLoadFromURL:(id)a3 session:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __76__SBFFileCacheURLFaultHandler_performLoadFromURL_session_completionHandler___block_invoke;
  v15 = &unk_1E807FBE0;
  v16 = v7;
  v17 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [a4 dataTaskWithURL:v10 completionHandler:&v12];
  [v11 resume];
}

void __76__SBFFileCacheURLFaultHandler_performLoadFromURL_session_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a4;
  if (a2)
  {
    v6 = MEMORY[0x1E696AC38];
    v7 = a2;
    a2 = [[v6 alloc] initRegularFileWithContents:v7];

    v8 = [*(a1 + 32) lastPathComponent];
    [a2 setFilename:v8];
  }

  (*(*(a1 + 40) + 16))();
}

@end