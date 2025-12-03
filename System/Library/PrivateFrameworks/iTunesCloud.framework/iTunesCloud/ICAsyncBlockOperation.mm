@interface ICAsyncBlockOperation
- (ICAsyncBlockOperation)initWithStartHandler:(id)handler;
- (id)cancellationHandler;
- (void)cancel;
- (void)finishWithError:(id)error;
- (void)setCancellationHandler:(id)handler;
@end

@implementation ICAsyncBlockOperation

- (void)setCancellationHandler:(id)handler
{
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__ICAsyncBlockOperation_setCancellationHandler___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_barrier_async(accessQueue, v7);
}

uint64_t __48__ICAsyncBlockOperation_setCancellationHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 296);
  *(v3 + 296) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)cancellationHandler
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4431;
  v10 = __Block_byref_object_dispose__4432;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__ICAsyncBlockOperation_cancellationHandler__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = MEMORY[0x1B8C781E0](v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__ICAsyncBlockOperation_cancellationHandler__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = MEMORY[0x1B8C781E0](*(*(a1 + 32) + 296));

  return MEMORY[0x1EEE66BB8]();
}

- (void)finishWithError:(id)error
{
  v4.receiver = self;
  v4.super_class = ICAsyncBlockOperation;
  [(ICAsyncOperation *)&v4 finishWithError:error];
  [(ICAsyncBlockOperation *)self setCancellationHandler:0];
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = ICAsyncBlockOperation;
  [(ICAsyncBlockOperation *)&v5 cancel];
  cancellationHandler = [(ICAsyncBlockOperation *)self cancellationHandler];
  v4 = cancellationHandler;
  if (cancellationHandler)
  {
    (*(cancellationHandler + 16))(cancellationHandler);
  }
}

- (ICAsyncBlockOperation)initWithStartHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = ICAsyncBlockOperation;
  v5 = [(ICAsyncOperation *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.iTunesCloud.ICAsyncBlockOperation.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v6;

    v8 = MEMORY[0x1B8C781E0](handlerCopy);
    startHandler = v5->_startHandler;
    v5->_startHandler = v8;
  }

  return v5;
}

@end