@interface PLCameraDeferredProcessingCoordinator
- (BOOL)cancelAllPrewarming:(id *)prewarming;
- (BOOL)prewarmWithPhotoSettings:(id)settings error:(id *)error;
- (PLCameraDeferredProcessingCoordinator)init;
- (PLCameraDeferredProcessingCoordinator)initWithAssetdClient:(id)client;
- (void)cancelAllPrewarmingWithCompletionHandler:(id)handler;
- (void)prewarmWithPhotoSettings:(id)settings completionHandler:(id)handler;
@end

@implementation PLCameraDeferredProcessingCoordinator

- (void)cancelAllPrewarmingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  resourceInternalClient = [(PLCameraDeferredProcessingCoordinator *)self resourceInternalClient];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PLCameraDeferredProcessingCoordinator_cancelAllPrewarmingWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E75774A8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [resourceInternalClient cancelAllPrewarmingWithCompletionHandler:v7];
}

uint64_t __82__PLCameraDeferredProcessingCoordinator_cancelAllPrewarmingWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)cancelAllPrewarming:(id *)prewarming
{
  resourceInternalClient = [(PLCameraDeferredProcessingCoordinator *)self resourceInternalClient];
  LOBYTE(prewarming) = [resourceInternalClient cancelAllPrewarming:prewarming];

  return prewarming;
}

- (void)prewarmWithPhotoSettings:(id)settings completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [PLCapturePhotoSettings photoSettingsWithPhotoSettings:settings];
  resourceInternalClient = [(PLCameraDeferredProcessingCoordinator *)self resourceInternalClient];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PLCameraDeferredProcessingCoordinator_prewarmWithPhotoSettings_completionHandler___block_invoke;
  v10[3] = &unk_1E75774A8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [resourceInternalClient prewarmWithCapturePhotoSettings:v7 completionHandler:v10];
}

uint64_t __84__PLCameraDeferredProcessingCoordinator_prewarmWithPhotoSettings_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)prewarmWithPhotoSettings:(id)settings error:(id *)error
{
  v6 = [PLCapturePhotoSettings photoSettingsWithPhotoSettings:settings];
  resourceInternalClient = [(PLCameraDeferredProcessingCoordinator *)self resourceInternalClient];
  LOBYTE(error) = [resourceInternalClient prewarmWithCapturePhotoSettings:v6 error:error];

  return error;
}

- (PLCameraDeferredProcessingCoordinator)initWithAssetdClient:(id)client
{
  clientCopy = client;
  v10.receiver = self;
  v10.super_class = PLCameraDeferredProcessingCoordinator;
  v6 = [(PLCameraDeferredProcessingCoordinator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetsdClient, client);
    v8 = v7;
  }

  return v7;
}

- (PLCameraDeferredProcessingCoordinator)init
{
  mEMORY[0x1E69BF198] = [MEMORY[0x1E69BF198] sharedSystemLibraryAssetsdClient];
  v4 = [(PLCameraDeferredProcessingCoordinator *)self initWithAssetdClient:mEMORY[0x1E69BF198]];

  return v4;
}

@end