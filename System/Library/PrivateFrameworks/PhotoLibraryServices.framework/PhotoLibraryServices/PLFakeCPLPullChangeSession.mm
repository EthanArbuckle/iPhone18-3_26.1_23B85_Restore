@interface PLFakeCPLPullChangeSession
- (PLFakeCPLPullChangeSession)initWithLibraryManager:(id)manager queue:(id)queue;
- (void)acknowledgeChangeBatch:(id)batch withCompletionHandler:(id)handler;
- (void)finalizeWithCompletionHandler:(id)handler;
- (void)getChangeBatchWithCompletionHandler:(id)handler;
@end

@implementation PLFakeCPLPullChangeSession

- (void)finalizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PLFakeCPLPullChangeSession_finalizeWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v11 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, block);
  date = [MEMORY[0x1E695DF00] date];
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);
  syncStatus = [WeakRetained syncStatus];
  [syncStatus setLastSuccessfulSyncDate:date];
}

- (void)acknowledgeChangeBatch:(id)batch withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PLFakeCPLPullChangeSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(queue, block);
}

void __75__PLFakeCPLPullChangeSession_acknowledgeChangeBatch_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v2 = [v3 UUIDString];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)getChangeBatchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PLFakeCPLPullChangeSession_getChangeBatchWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7576AA0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, block);
}

- (PLFakeCPLPullChangeSession)initWithLibraryManager:(id)manager queue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = PLFakeCPLPullChangeSession;
  v8 = [(PLFakeCPLPullChangeSession *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_libraryManager, managerCopy);
    objc_storeStrong(&v9->_queue, queue);
  }

  return v9;
}

@end