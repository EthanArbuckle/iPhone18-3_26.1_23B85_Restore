@interface VKCRemoveBackgroundRequestHandler
- (BOOL)isValidRequest:(id)a3 error:(id *)a4;
- (VKCRemoveBackgroundRequestHandler)init;
- (void)_didEndForRequest:(uint64_t)a1;
- (void)_willBeginForRequest:(uint64_t)a1;
- (void)cancelRequest:(id)a3;
- (void)performRequest:(id)a3 completion:(id)a4;
@end

@implementation VKCRemoveBackgroundRequestHandler

- (VKCRemoveBackgroundRequestHandler)init
{
  v10.receiver = self;
  v10.super_class = VKCRemoveBackgroundRequestHandler;
  v2 = [(VKCRemoveBackgroundRequestHandler *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69AE3E0] service];
    service = v2->_service;
    v2->_service = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INTERACTIVE, 0);

    v7 = dispatch_queue_create("VKCRemoveBackgroundRequestHandlerQueue", v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (BOOL)isValidRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 photosRequest];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    [v5 size];
    v7 = vk_cgImageRemoveBackgroundIsValidSize(a4, v8, v9);
  }

  return v7;
}

- (void)performRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (vk_deviceSupportsRemoveBackground())
  {
    v31 = 0;
    v8 = [(VKCRemoveBackgroundRequestHandler *)self isValidRequest:v6 error:&v31];
    v9 = v31;
    if (v8)
    {
      [(VKCRemoveBackgroundRequestHandler *)self _willBeginForRequest:v6];
      v23 = self->_service;
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__VKCRemoveBackgroundRequestHandler_performRequest_completion___block_invoke;
      block[3] = &unk_1E7BE6B00;
      v27 = v6;
      v28 = self;
      v29 = v23;
      v30 = v7;
      v25 = v23;
      dispatch_async(queue, block);

      goto LABEL_8;
    }

    v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(VKCRemoveBackgroundRequestHandler *)v9 performRequest:v10 completion:v11, v12, v13, v14, v15, v16];
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.VisionKit.RemoveBackground" code:-8 userInfo:0];
    v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(VKCRemoveBackgroundRequestHandler *)v9 performRequest:v10 completion:v17, v18, v19, v20, v21, v22];
    }
  }

  (*(v7 + 2))(v7, 0, v9);
LABEL_8:
}

void __63__VKCRemoveBackgroundRequestHandler_performRequest_completion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v40 = v3;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_DEFAULT, "Beginning RemoveBGRequest: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) createMADRequest];
  v5 = [MEMORY[0x1E695DF00] date];
  if (v4)
  {
    v6 = [*(a1 + 32) pixelBuffer];
    v7 = [*(a1 + 32) photosRequest];
    v8 = [*(a1 + 32) identifier];
    v9 = [MEMORY[0x1E695DF00] date];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__VKCRemoveBackgroundRequestHandler_performRequest_completion___block_invoke_5;
    aBlock[3] = &unk_1E7BE6AD8;
    v10 = v9;
    v31 = v10;
    v28 = v4;
    v11 = v4;
    v32 = v11;
    v33 = *(a1 + 32);
    v29 = v5;
    v12 = v5;
    v13 = *(a1 + 40);
    v34 = v12;
    v35 = v13;
    v36 = *(a1 + 56);
    v14 = _Block_copy(aBlock);
    v15 = *(a1 + 48);
    if (v6)
    {
      v16 = v7;
      v38 = v11;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      [*(a1 + 32) setMADRequestID:{objc_msgSend(v15, "performRequests:onPixelBuffer:withOrientation:andIdentifier:completionHandler:", v17, v6, 0, v8, v14)}];
    }

    else
    {
      v37 = v11;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
      v18 = [v7 localIdentifier];
      v16 = v7;
      v19 = [v7 URL];
      [*(a1 + 32) setMADRequestID:{objc_msgSend(v15, "performRequests:onAssetWithLocalIdentifier:fromPhotoLibraryWithURL:completionHandler:", v17, v18, v19, v14)}];
    }

    v4 = v28;
    v5 = v29;
    v20 = v16;
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.VisionKit.RemoveBackground" code:-9 userInfo:0];
    v21 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __63__VKCRemoveBackgroundRequestHandler_performRequest_completion___block_invoke_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    [(VKCRemoveBackgroundRequestHandler *)*(a1 + 40) _didEndForRequest:?];
    (*(*(a1 + 56) + 16))();
  }
}

void __63__VKCRemoveBackgroundRequestHandler_performRequest_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  [v5 timeIntervalSinceDate:*(a1 + 32)];
  v7 = v6;

  v8 = objc_opt_class();
  v9 = [*(a1 + 40) results];
  v10 = [v9 firstObject];
  v11 = VKDynamicCast(v8, v10);

  if (!v4)
  {
    v4 = [*(a1 + 40) error];

    if (v4)
    {
      v4 = [*(a1 + 40) error];
    }
  }

  v12 = [*(a1 + 48) MADRequestID];
  [*(a1 + 48) setMADRequestID:0xFFFFFFFFLL];
  v13 = 0;
  if (v11 && !v4)
  {
    v13 = [[VKCRemoveBackgroundResult alloc] initWithMADResult:v11 request:*(a1 + 48)];
  }

  v14 = [MEMORY[0x1E695DF00] date];
  [v14 timeIntervalSinceDate:*(a1 + 56)];
  v16 = v15;

  v17 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 48);
    v19 = 134218754;
    v20 = v16;
    v21 = 2048;
    v22 = v7;
    v23 = 2112;
    v24 = v18;
    v25 = 1024;
    v26 = v12;
    _os_log_impl(&dword_1B4335000, v17, OS_LOG_TYPE_DEFAULT, "RemoveBG request completed with duration: %f\n madDuration: %f\n%@\n MadID: %d", &v19, 0x26u);
  }

  [(VKCRemoveBackgroundRequestHandler *)*(a1 + 64) _didEndForRequest:?];
  (*(*(a1 + 72) + 16))();
}

- (void)cancelRequest:(id)a3
{
  service = self->_service;
  v4 = [a3 MADRequestID];

  [(MADService *)service cancelRequestID:v4];
}

- (void)_willBeginForRequest:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 maskOnly];
    v6 = _VKSignpostLog();
    v7 = os_signpost_enabled(v6);
    if (v5)
    {
      if (v7)
      {
        OUTLINED_FUNCTION_0_7();
        OUTLINED_FUNCTION_2_4();
        _os_signpost_emit_with_name_impl(v8, v9, v10, v11, v12, v13, v14, 2u);
      }

      v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (!OUTLINED_FUNCTION_3_4(v15))
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v7)
      {
        OUTLINED_FUNCTION_0_7();
        OUTLINED_FUNCTION_2_4();
        _os_signpost_emit_with_name_impl(v16, v17, v18, v19, v20, v21, v22, 2u);
      }

      v23 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (!OUTLINED_FUNCTION_3_4(v23))
      {
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_2_4();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
LABEL_11:
  }
}

- (void)_didEndForRequest:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 maskOnly];
    v6 = _VKSignpostLog();
    v7 = os_signpost_enabled(v6);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        OUTLINED_FUNCTION_0_7();
        _os_signpost_emit_with_name_impl(v8, v6, OS_SIGNPOST_INTERVAL_END, v9, v10, v11, buf, 2u);
      }

      v12 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (!OUTLINED_FUNCTION_3_4(v12))
      {
        goto LABEL_11;
      }

      v24 = 0;
    }

    else
    {
      if (v7)
      {
        *v23 = 0;
        OUTLINED_FUNCTION_0_7();
        _os_signpost_emit_with_name_impl(v13, v6, OS_SIGNPOST_INTERVAL_END, v14, v15, v16, v23, 2u);
      }

      v17 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
      if (!OUTLINED_FUNCTION_3_4(v17))
      {
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_2_4();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
LABEL_11:
  }
}

@end