@interface VKHomographyFrameProcessor
- (id)resultHandler;
- (void)processFrame:(id)a3;
- (void)sendResult:(id)a3;
- (void)setResultHandler:(id)a3;
@end

@implementation VKHomographyFrameProcessor

- (id)resultHandler
{
  [(VKFrameProcessor *)self lock];
  v3 = _Block_copy(self->_resultHandler);
  [(VKFrameProcessor *)self unlock];
  v4 = _Block_copy(v3);

  return v4;
}

- (void)setResultHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__VKHomographyFrameProcessor_setResultHandler___block_invoke;
  v6[3] = &unk_1E7BE47B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  vk_performWhileLocked(self, v6);
}

void __47__VKHomographyFrameProcessor_setResultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
}

- (void)sendResult:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [VKAssert handleFailedAssertWithCondition:"result" functionName:"[VKHomographyFrameProcessor sendResult:]" simulateCrash:0 showAlert:0 format:@"Expecting a non-nil result object."];
  }

  v5 = [(VKHomographyFrameProcessor *)self resultHandler];
  if (v5)
  {
    v6 = [(VKFrameProcessor *)self resultHandlerQueue];
    if (v6)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __41__VKHomographyFrameProcessor_sendResult___block_invoke;
      v7[3] = &unk_1E7BE47E0;
      v9 = v5;
      v8 = v4;
      dispatch_async(v6, v7);
    }

    else
    {
      (v5)[2](v5, v4);
    }
  }
}

- (void)processFrame:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_homographyRequest)
  {
    v5 = objc_alloc(MEMORY[0x1E69846A0]);
    v24 = *MEMORY[0x1E6960C70];
    v25 = *(MEMORY[0x1E6960C70] + 16);
    v6 = [v5 initWithFrameAnalysisSpacing:&v24 completionHandler:0];
    homographyRequest = self->_homographyRequest;
    self->_homographyRequest = v6;
  }

  v8 = [v4 info];
  [v8 regionOfInterest];
  [(VNTrackHomographyRequest *)self->_homographyRequest setRegionOfInterest:?];

  v9 = [v4 imageRequestHandler];
  v26[0] = self->_homographyRequest;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v23 = 0;
  [v9 performRequests:v10 error:&v23];
  v11 = v23;

  if (v11)
  {
    v12 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
    if (os_log_type_enabled(&v12->super.super, OS_LOG_TYPE_ERROR))
    {
      [(VKHomographyFrameProcessor *)v11 processFrame:?];
    }

    goto LABEL_6;
  }

  if (![(VKFrameProcessor *)self isCancelled])
  {
    v13 = [(VNTrackHomographyRequest *)self->_homographyRequest results];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [(VNTrackHomographyRequest *)self->_homographyRequest results];
      v16 = [v15 firstObject];
      [v16 warpTransform];
      v21 = v18;
      v22 = v17;
      v20 = v19;

      v12 = objc_alloc_init(VKHomographyFrameProcessorResult);
      [(VKHomographyFrameProcessorResult *)v12 setWarpTransform:v22, v21, v20];
      [(VKHomographyFrameProcessor *)self sendResult:v12];
LABEL_6:
    }
  }
}

- (void)processFrame:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Error performing recognition request. %@", &v2, 0xCu);
}

@end