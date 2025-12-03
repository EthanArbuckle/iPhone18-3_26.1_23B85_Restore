@interface PLCaptureDeferredPhotoProcessor
+ (id)sharedAsyncQueue;
- (PLCaptureDeferredPhotoProcessor)init;
- (PLCaptureDeferredPhotoProcessor)initWithProcessor:(id)processor asyncQueue:(id)queue;
- (void)cancelAllPrewarmingWithCompletionHandler:(id)handler;
- (void)persistentlyStoredDeferredPhotoProxiesWithCompletionHandler:(id)handler;
- (void)prewarmWithSettings:(id)settings completionHandler:(id)handler;
- (void)processPhotoProxy:(id)proxy queuePosition:(id)position delegate:(id)delegate delegateQueue:(id)queue;
@end

@implementation PLCaptureDeferredPhotoProcessor

- (void)persistentlyStoredDeferredPhotoProxiesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  asyncQueue = self->_asyncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__PLCaptureDeferredPhotoProcessor_persistentlyStoredDeferredPhotoProxiesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(asyncQueue, v7);
}

void __95__PLCaptureDeferredPhotoProcessor_persistentlyStoredDeferredPhotoProxiesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) persistentlyStoredDeferredPhotoProxies];
  (*(*(a1 + 40) + 16))();
}

- (void)processPhotoProxy:(id)proxy queuePosition:(id)position delegate:(id)delegate delegateQueue:(id)queue
{
  proxyCopy = proxy;
  positionCopy = position;
  delegateCopy = delegate;
  queueCopy = queue;
  asyncQueue = self->_asyncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PLCaptureDeferredPhotoProcessor_processPhotoProxy_queuePosition_delegate_delegateQueue___block_invoke;
  block[3] = &unk_1E75730F8;
  block[4] = self;
  v20 = proxyCopy;
  v21 = positionCopy;
  v22 = delegateCopy;
  v23 = queueCopy;
  v15 = queueCopy;
  v16 = delegateCopy;
  v17 = positionCopy;
  v18 = proxyCopy;
  dispatch_async(asyncQueue, block);
}

- (void)cancelAllPrewarmingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  asyncQueue = self->_asyncQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PLCaptureDeferredPhotoProcessor_cancelAllPrewarmingWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(asyncQueue, v7);
}

uint64_t __76__PLCaptureDeferredPhotoProcessor_cancelAllPrewarmingWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) cancelAllPrewarming];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)prewarmWithSettings:(id)settings completionHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  asyncQueue = self->_asyncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PLCaptureDeferredPhotoProcessor_prewarmWithSettings_completionHandler___block_invoke;
  block[3] = &unk_1E7576F38;
  block[4] = self;
  v12 = settingsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = settingsCopy;
  dispatch_async(asyncQueue, block);
}

uint64_t __73__PLCaptureDeferredPhotoProcessor_prewarmWithSettings_completionHandler___block_invoke(void *a1)
{
  [*(a1[4] + 16) prewarmWithSettings:a1[5]];
  v2 = *(a1[6] + 16);

  return v2();
}

- (PLCaptureDeferredPhotoProcessor)initWithProcessor:(id)processor asyncQueue:(id)queue
{
  processorCopy = processor;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = PLCaptureDeferredPhotoProcessor;
  v9 = [(PLCaptureDeferredPhotoProcessor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_processor, processor);
    objc_storeStrong(&v10->_asyncQueue, queue);
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