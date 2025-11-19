@interface PLCaptureDeferredPhotoProcessor
+ (id)sharedAsyncQueue;
- (PLCaptureDeferredPhotoProcessor)init;
- (PLCaptureDeferredPhotoProcessor)initWithProcessor:(id)a3 asyncQueue:(id)a4;
- (void)cancelAllPrewarmingWithCompletionHandler:(id)a3;
- (void)persistentlyStoredDeferredPhotoProxiesWithCompletionHandler:(id)a3;
- (void)prewarmWithSettings:(id)a3 completionHandler:(id)a4;
- (void)processPhotoProxy:(id)a3 queuePosition:(id)a4 delegate:(id)a5 delegateQueue:(id)a6;
@end

@implementation PLCaptureDeferredPhotoProcessor

- (void)persistentlyStoredDeferredPhotoProxiesWithCompletionHandler:(id)a3
{
  v4 = a3;
  asyncQueue = self->_asyncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PLCaptureDeferredPhotoProcessor_persistentlyStoredDeferredPhotoProxiesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(asyncQueue, v7);
}

void __95__PLCaptureDeferredPhotoProcessor_persistentlyStoredDeferredPhotoProxiesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) persistentlyStoredDeferredPhotoProxies];
  (*(*(a1 + 40) + 16))();
}

- (void)processPhotoProxy:(id)a3 queuePosition:(id)a4 delegate:(id)a5 delegateQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  asyncQueue = self->_asyncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PLCaptureDeferredPhotoProcessor_processPhotoProxy_queuePosition_delegate_delegateQueue___block_invoke;
  block[3] = &unk_1E75730F8;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(asyncQueue, block);
}

- (void)cancelAllPrewarmingWithCompletionHandler:(id)a3
{
  v4 = a3;
  asyncQueue = self->_asyncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PLCaptureDeferredPhotoProcessor_cancelAllPrewarmingWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(asyncQueue, v7);
}

uint64_t __76__PLCaptureDeferredPhotoProcessor_cancelAllPrewarmingWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) cancelAllPrewarming];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)prewarmWithSettings:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  asyncQueue = self->_asyncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PLCaptureDeferredPhotoProcessor_prewarmWithSettings_completionHandler___block_invoke;
  block[3] = &unk_1E7576F38;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(asyncQueue, block);
}

uint64_t __73__PLCaptureDeferredPhotoProcessor_prewarmWithSettings_completionHandler___block_invoke(void *a1)
{
  [*(a1[4] + 16) prewarmWithSettings:a1[5]];
  v2 = *(a1[6] + 16);

  return v2();
}

- (PLCaptureDeferredPhotoProcessor)initWithProcessor:(id)a3 asyncQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PLCaptureDeferredPhotoProcessor;
  v9 = [(PLCaptureDeferredPhotoProcessor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_processor, a3);
    objc_storeStrong(&v10->_asyncQueue, a4);
    v11 = v10;
  }

  return v10;
}

- (PLCaptureDeferredPhotoProcessor)init
{
  v3 = +[PLCaptureDeferredPhotoProcessor sharedAsyncQueue];
  v4 = [MEMORY[0x1E6987080] sharedPhotoProcessorForApplicationID:@"com.apple.camera"];
  v5 = [(PLCaptureDeferredPhotoProcessor *)self initWithProcessor:v4 asyncQueue:v3];

  return v5;
}

+ (id)sharedAsyncQueue
{
  pl_dispatch_once();
  v2 = sharedAsyncQueue_pl_once_object_17;

  return v2;
}

void __51__PLCaptureDeferredPhotoProcessor_sharedAsyncQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.assetsd.AVCaptureDeferredPhotoProcessor", v2);
  v1 = sharedAsyncQueue_pl_once_object_17;
  sharedAsyncQueue_pl_once_object_17 = v0;
}

@end