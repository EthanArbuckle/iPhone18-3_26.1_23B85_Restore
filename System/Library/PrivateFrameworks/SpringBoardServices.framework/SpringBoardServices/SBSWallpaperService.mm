@interface SBSWallpaperService
- (SBSWallpaperService)init;
- (void)dealloc;
- (void)fetchAdaptiveTimeBoundsForContext:(id)context timeHeight:(double)height completionHandler:(id)handler;
- (void)fetchAdaptiveTimeHeightLimitsForContext:(id)context completionHandler:(id)handler;
- (void)fetchContentCutoutBoundsForVariant:(int64_t)variant orientation:(int64_t)orientation completionHandler:(id)handler;
- (void)fetchExtendedLockScreenContentCutoutBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)fetchLimitedOcclusionBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)fetchLockScreenContentCutoutBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)fetchLockScreenTimeBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)fetchMaximalLockScreenContentCutoutBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)fetchObscurableBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler;
- (void)fetchOriginalImageForVariant:(int64_t)variant completionHandler:(id)handler;
- (void)fetchOriginalVideoURLForVariant:(int64_t)variant completionHandler:(id)handler;
- (void)fetchThumbnailForVariant:(int64_t)variant completionHandler:(id)handler;
- (void)handleQuickActionConfigurationRequest:(id)request completionHandler:(id)handler;
@end

@implementation SBSWallpaperService

- (SBSWallpaperService)init
{
  v8.receiver = self;
  v8.super_class = SBSWallpaperService;
  v2 = [(SBSWallpaperService *)&v8 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = Serial;

    v5 = [[SBSWallpaperClient alloc] initWithCalloutQueue:v2->_callbackQueue];
    client = v2->_client;
    v2->_client = v5;
  }

  return v2;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSWallpaperService.m" lineNumber:34 description:{@"%@: you must call -invalidate before releasing", objc_opt_class()}];
}

- (void)handleQuickActionConfigurationRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = self->_callbackQueue;
    client = self->_client;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__SBSWallpaperService_handleQuickActionConfigurationRequest_completionHandler___block_invoke;
    v10[3] = &unk_1E735F5A8;
    v11 = v7;
    v12 = handlerCopy;
    v9 = v7;
    [(SBSWallpaperClient *)client handleQuickActionConfigurationRequest:request completionHandler:v10];
  }
}

void __79__SBSWallpaperService_handleQuickActionConfigurationRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__SBSWallpaperService_handleQuickActionConfigurationRequest_completionHandler___block_invoke_2;
  v7[3] = &unk_1E735F120;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)fetchThumbnailForVariant:(int64_t)variant completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = self->_callbackQueue;
    client = self->_client;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__SBSWallpaperService_fetchThumbnailForVariant_completionHandler___block_invoke;
    v10[3] = &unk_1E735F208;
    v11 = v7;
    v12 = handlerCopy;
    v9 = v7;
    [(SBSWallpaperClient *)client fetchThumbnailForVariant:variant completionHandler:v10];
  }
}

void __66__SBSWallpaperService_fetchThumbnailForVariant_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__SBSWallpaperService_fetchThumbnailForVariant_completionHandler___block_invoke_2;
  v7[3] = &unk_1E735F120;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)fetchOriginalImageForVariant:(int64_t)variant completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = self->_callbackQueue;
    client = self->_client;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__SBSWallpaperService_fetchOriginalImageForVariant_completionHandler___block_invoke;
    v10[3] = &unk_1E735F208;
    v11 = v7;
    v12 = handlerCopy;
    v9 = v7;
    [(SBSWallpaperClient *)client fetchOriginalImageForVariant:variant completionHandler:v10];
  }
}

void __70__SBSWallpaperService_fetchOriginalImageForVariant_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__SBSWallpaperService_fetchOriginalImageForVariant_completionHandler___block_invoke_2;
  v7[3] = &unk_1E735F120;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)fetchOriginalVideoURLForVariant:(int64_t)variant completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = self->_callbackQueue;
    client = self->_client;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__SBSWallpaperService_fetchOriginalVideoURLForVariant_completionHandler___block_invoke;
    v10[3] = &unk_1E735FC70;
    v11 = v7;
    v12 = handlerCopy;
    v9 = v7;
    [(SBSWallpaperClient *)client fetchOriginalVideoURLForVariant:variant completionHandler:v10];
  }
}

void __73__SBSWallpaperService_fetchOriginalVideoURLForVariant_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__SBSWallpaperService_fetchOriginalVideoURLForVariant_completionHandler___block_invoke_2;
  v7[3] = &unk_1E735F120;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)fetchContentCutoutBoundsForVariant:(int64_t)variant orientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v9 = self->_callbackQueue;
    client = self->_client;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__SBSWallpaperService_fetchContentCutoutBoundsForVariant_orientation_completionHandler___block_invoke;
    v12[3] = &unk_1E735FCC0;
    v13 = v9;
    v14 = handlerCopy;
    v11 = v9;
    [(SBSWallpaperClient *)client fetchContentCutoutBoundsForVariant:variant orientation:orientation completionHandler:v12];
  }
}

void __88__SBSWallpaperService_fetchContentCutoutBoundsForVariant_orientation_completionHandler___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__SBSWallpaperService_fetchContentCutoutBoundsForVariant_orientation_completionHandler___block_invoke_2;
  block[3] = &unk_1E735FC98;
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  dispatch_async(v9, block);
}

- (void)fetchLockScreenContentCutoutBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = self->_callbackQueue;
    client = self->_client;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __90__SBSWallpaperService_fetchLockScreenContentCutoutBoundsForOrientation_completionHandler___block_invoke;
    v10[3] = &unk_1E735FCC0;
    v11 = v7;
    v12 = handlerCopy;
    v9 = v7;
    [(SBSWallpaperClient *)client fetchLockScreenContentCutoutBoundsForOrientation:orientation completionHandler:v10];
  }
}

void __90__SBSWallpaperService_fetchLockScreenContentCutoutBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__SBSWallpaperService_fetchLockScreenContentCutoutBoundsForOrientation_completionHandler___block_invoke_2;
  block[3] = &unk_1E735FC98;
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  dispatch_async(v9, block);
}

- (void)fetchMaximalLockScreenContentCutoutBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = self->_callbackQueue;
    client = self->_client;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __97__SBSWallpaperService_fetchMaximalLockScreenContentCutoutBoundsForOrientation_completionHandler___block_invoke;
    v10[3] = &unk_1E735FCC0;
    v11 = v7;
    v12 = handlerCopy;
    v9 = v7;
    [(SBSWallpaperClient *)client fetchMaximalLockScreenContentCutoutBoundsForOrientation:orientation completionHandler:v10];
  }
}

void __97__SBSWallpaperService_fetchMaximalLockScreenContentCutoutBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__SBSWallpaperService_fetchMaximalLockScreenContentCutoutBoundsForOrientation_completionHandler___block_invoke_2;
  block[3] = &unk_1E735FC98;
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  dispatch_async(v9, block);
}

- (void)fetchExtendedLockScreenContentCutoutBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = self->_callbackQueue;
    client = self->_client;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __98__SBSWallpaperService_fetchExtendedLockScreenContentCutoutBoundsForOrientation_completionHandler___block_invoke;
    v10[3] = &unk_1E735FCC0;
    v11 = v7;
    v12 = handlerCopy;
    v9 = v7;
    [(SBSWallpaperClient *)client fetchExtendedLockScreenContentCutoutBoundsForOrientation:orientation completionHandler:v10];
  }
}

void __98__SBSWallpaperService_fetchExtendedLockScreenContentCutoutBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__SBSWallpaperService_fetchExtendedLockScreenContentCutoutBoundsForOrientation_completionHandler___block_invoke_2;
  block[3] = &unk_1E735FC98;
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  dispatch_async(v9, block);
}

- (void)fetchObscurableBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = self->_callbackQueue;
    client = self->_client;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__SBSWallpaperService_fetchObscurableBoundsForOrientation_completionHandler___block_invoke;
    v10[3] = &unk_1E735FCC0;
    v11 = v7;
    v12 = handlerCopy;
    v9 = v7;
    [(SBSWallpaperClient *)client fetchObscurableBoundsForOrientation:orientation completionHandler:v10];
  }
}

void __77__SBSWallpaperService_fetchObscurableBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__SBSWallpaperService_fetchObscurableBoundsForOrientation_completionHandler___block_invoke_2;
  block[3] = &unk_1E735FC98;
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  dispatch_async(v9, block);
}

- (void)fetchLimitedOcclusionBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = self->_callbackQueue;
    client = self->_client;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__SBSWallpaperService_fetchLimitedOcclusionBoundsForOrientation_completionHandler___block_invoke;
    v10[3] = &unk_1E735FCC0;
    v11 = v7;
    v12 = handlerCopy;
    v9 = v7;
    [(SBSWallpaperClient *)client fetchLimitedOcclusionBoundsForOrientation:orientation completionHandler:v10];
  }
}

void __83__SBSWallpaperService_fetchLimitedOcclusionBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__SBSWallpaperService_fetchLimitedOcclusionBoundsForOrientation_completionHandler___block_invoke_2;
  block[3] = &unk_1E735FC98;
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  dispatch_async(v9, block);
}

- (void)fetchLockScreenTimeBoundsForOrientation:(int64_t)orientation completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = self->_callbackQueue;
    client = self->_client;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__SBSWallpaperService_fetchLockScreenTimeBoundsForOrientation_completionHandler___block_invoke;
    v10[3] = &unk_1E735FCC0;
    v11 = v7;
    v12 = handlerCopy;
    v9 = v7;
    [(SBSWallpaperClient *)client fetchLockScreenTimeBoundsForOrientation:orientation completionHandler:v10];
  }
}

void __81__SBSWallpaperService_fetchLockScreenTimeBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__SBSWallpaperService_fetchLockScreenTimeBoundsForOrientation_completionHandler___block_invoke_2;
  block[3] = &unk_1E735FC98;
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  dispatch_async(v9, block);
}

- (void)fetchAdaptiveTimeHeightLimitsForContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = self->_callbackQueue;
    client = self->_client;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__SBSWallpaperService_fetchAdaptiveTimeHeightLimitsForContext_completionHandler___block_invoke;
    v10[3] = &unk_1E735FD10;
    v11 = v7;
    v12 = handlerCopy;
    v9 = v7;
    [(SBSWallpaperClient *)client fetchAdaptiveTimeHeightLimitsForContext:context completionHandler:v10];
  }
}

void __81__SBSWallpaperService_fetchAdaptiveTimeHeightLimitsForContext_completionHandler___block_invoke(uint64_t a1, double a2, double a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__SBSWallpaperService_fetchAdaptiveTimeHeightLimitsForContext_completionHandler___block_invoke_2;
  block[3] = &unk_1E735FCE8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a2;
  v9 = a3;
  dispatch_async(v5, block);
}

- (void)fetchAdaptiveTimeBoundsForContext:(id)context timeHeight:(double)height completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v9 = self->_callbackQueue;
    client = self->_client;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__SBSWallpaperService_fetchAdaptiveTimeBoundsForContext_timeHeight_completionHandler___block_invoke;
    v12[3] = &unk_1E735FCC0;
    v13 = v9;
    v14 = handlerCopy;
    v11 = v9;
    [(SBSWallpaperClient *)client fetchAdaptiveTimeBoundsForContext:context timeHeight:v12 completionHandler:height];
  }
}

void __86__SBSWallpaperService_fetchAdaptiveTimeBoundsForContext_timeHeight_completionHandler___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__SBSWallpaperService_fetchAdaptiveTimeBoundsForContext_timeHeight_completionHandler___block_invoke_2;
  block[3] = &unk_1E735FC98;
  v9 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  dispatch_async(v9, block);
}

@end