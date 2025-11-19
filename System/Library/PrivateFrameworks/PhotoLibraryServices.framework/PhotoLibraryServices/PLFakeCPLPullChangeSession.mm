@interface PLFakeCPLPullChangeSession
- (PLFakeCPLPullChangeSession)initWithLibraryManager:(id)a3 queue:(id)a4;
- (void)acknowledgeChangeBatch:(id)a3 withCompletionHandler:(id)a4;
- (void)finalizeWithCompletionHandler:(id)a3;
- (void)getChangeBatchWithCompletionHandler:(id)a3;
@end

@implementation PLFakeCPLPullChangeSession

- (void)finalizeWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PLFakeCPLPullChangeSession_finalizeWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v11 = v4;
  v6 = v4;
  dispatch_async(queue, block);
  v7 = [MEMORY[0x1E695DF00] date];
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);
  v9 = [WeakRetained syncStatus];
  [v9 setLastSuccessfulSyncDate:v7];
}

- (void)acknowledgeChangeBatch:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PLFakeCPLPullChangeSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

void __75__PLFakeCPLPullChangeSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v2 = [v3 UUIDString];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)getChangeBatchWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PLFakeCPLPullChangeSession_getChangeBatchWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (PLFakeCPLPullChangeSession)initWithLibraryManager:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PLFakeCPLPullChangeSession;
  v8 = [(PLFakeCPLPullChangeSession *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_libraryManager, v6);
    objc_storeStrong(&v9->_queue, a4);
  }

  return v9;
}

@end