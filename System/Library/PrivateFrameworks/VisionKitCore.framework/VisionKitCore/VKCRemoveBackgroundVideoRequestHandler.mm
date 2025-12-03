@interface VKCRemoveBackgroundVideoRequestHandler
- (VKCRemoveBackgroundVideoRequestHandler)init;
- (void)_didEndForRequest:(uint64_t)request;
- (void)_willBeginForRequest:(uint64_t)request;
- (void)cancelRequest:(id)request;
- (void)performRequest:(id)request previewResultAvailable:(id)available progress:(id)progress completion:(id)completion;
@end

@implementation VKCRemoveBackgroundVideoRequestHandler

- (VKCRemoveBackgroundVideoRequestHandler)init
{
  v10.receiver = self;
  v10.super_class = VKCRemoveBackgroundVideoRequestHandler;
  v2 = [(VKCRemoveBackgroundVideoRequestHandler *)&v10 init];
  if (v2)
  {
    service = [MEMORY[0x1E69AE3E0] service];
    service = v2->_service;
    v2->_service = service;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INTERACTIVE, 0);

    v7 = dispatch_queue_create("VKCRemoveBackgroundVideoRequestHandlerQueue", v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)performRequest:(id)request previewResultAvailable:(id)available progress:(id)progress completion:(id)completion
{
  requestCopy = request;
  availableCopy = available;
  progressCopy = progress;
  completionCopy = completion;
  if (vk_deviceSupportsRemoveBackground())
  {
    v39 = 0;
    v14 = [(VKCRemoveBackgroundVideoRequestHandler *)self isValidRequest:requestCopy error:&v39];
    v15 = v39;
    if (v14)
    {
      [VKCRemoveBackgroundVideoRequestHandler _willBeginForRequest:?];
      v29 = self->_service;
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __100__VKCRemoveBackgroundVideoRequestHandler_performRequest_previewResultAvailable_progress_completion___block_invoke;
      block[3] = &unk_1E7BE5E00;
      v33 = requestCopy;
      selfCopy = self;
      v36 = completionCopy;
      v37 = progressCopy;
      v38 = availableCopy;
      v35 = v29;
      v31 = v29;
      dispatch_async(queue, block);

      goto LABEL_11;
    }

    v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(VKCRemoveBackgroundVideoRequestHandler *)v15 performRequest:v16 previewResultAvailable:v17 progress:v18 completion:v19, v20, v21, v22];
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.VisionKit.RemoveBackground" code:-8 userInfo:0];
    v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(VKCRemoveBackgroundVideoRequestHandler *)v15 performRequest:v16 previewResultAvailable:v23 progress:v24 completion:v25, v26, v27, v28];
    }
  }

  if (availableCopy)
  {
    (*(availableCopy + 2))(availableCopy, 0);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, v15);
  }

LABEL_11:
}

void __100__VKCRemoveBackgroundVideoRequestHandler_performRequest_previewResultAvailable_progress_completion___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_DEFAULT, "Beginning RemoveBGVideoRequest: %@", &buf, 0xCu);
  }

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v27 = [*(a1 + 32) createMADRequest];
  [v4 addObject:v27];
  v5 = [*(a1 + 32) createMADPreviewRequest];
  [v4 vk_addNonNilObject:v5];
  v26 = [MEMORY[0x1E695DF00] date];
  if ([v4 count])
  {
    v6 = [*(a1 + 32) photosRequest];
    v7 = [MEMORY[0x1E695DF00] date];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__8;
    v45 = __Block_byref_object_dispose__8;
    v46 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __100__VKCRemoveBackgroundVideoRequestHandler_performRequest_previewResultAvailable_progress_completion___block_invoke_154;
    aBlock[3] = &unk_1E7BE5D88;
    v25 = v7;
    v35 = v25;
    v36 = v27;
    p_buf = &buf;
    v37 = *(a1 + 32);
    v8 = v26;
    v9 = *(a1 + 40);
    v38 = v8;
    v39 = v9;
    v40 = *(a1 + 56);
    v10 = _Block_copy(aBlock);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __100__VKCRemoveBackgroundVideoRequestHandler_performRequest_previewResultAvailable_progress_completion___block_invoke_158;
    v32[3] = &unk_1E7BE5DB0;
    v33 = *(a1 + 64);
    v11 = _Block_copy(v32);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __100__VKCRemoveBackgroundVideoRequestHandler_performRequest_previewResultAvailable_progress_completion___block_invoke_2;
    v28[3] = &unk_1E7BE5DD8;
    v29 = v5;
    v31 = &buf;
    v30 = *(a1 + 72);
    v12 = _Block_copy(v28);
    v13 = *(a1 + 48);
    v14 = [v6 localIdentifier];
    v15 = [v6 URL];
    [*(a1 + 32) setMadRequestID:{objc_msgSend(v13, "performRequests:assetLocalIdentifier:photoLibraryURL:progressHandler:resultHandler:completionHandler:", v4, v14, v15, v11, v12, v10)}];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.VisionKit.RemoveBackground" code:-9 userInfo:0];
    v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __100__VKCRemoveBackgroundVideoRequestHandler_performRequest_previewResultAvailable_progress_completion___block_invoke_cold_1(v6, v16, v17, v18, v19, v20, v21, v22);
    }

    [VKCRemoveBackgroundVideoRequestHandler _didEndForRequest:?];
    v23 = *(a1 + 72);
    if (v23)
    {
      (*(v23 + 16))(v23, 0);
    }

    v24 = *(a1 + 56);
    if (v24)
    {
      (*(v24 + 16))(v24, 0, v6);
    }
  }
}

void __100__VKCRemoveBackgroundVideoRequestHandler_performRequest_previewResultAvailable_progress_completion___block_invoke_154(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  [v5 timeIntervalSinceDate:*(a1 + 32)];
  v7 = v6;

  v8 = objc_opt_class();
  v9 = [*(a1 + 40) results];
  v10 = [v9 firstObject];
  v11 = VKCheckedDynamicCast(v8, v10);

  if (!v4)
  {
    v12 = *(*(*(a1 + 80) + 8) + 40);
    if (v12)
    {
      v4 = v12;
    }

    else
    {
      v4 = 0;
    }
  }

  v13 = [*(a1 + 48) madRequestID];
  [*(a1 + 48) setMadRequestID:0xFFFFFFFFLL];
  v14 = 0;
  if (v11 && !v4)
  {
    v14 = [[VKCRemoveBackgroundVideoResult alloc] initWithMADVideoResult:v11 request:*(a1 + 48)];
  }

  v15 = [MEMORY[0x1E695DF00] date];
  [v15 timeIntervalSinceDate:*(a1 + 56)];
  v17 = v16;

  v18 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 48);
    v21 = 134218754;
    v22 = v17;
    v23 = 2048;
    v24 = v7;
    v25 = 2112;
    v26 = v19;
    v27 = 1024;
    v28 = v13;
    _os_log_impl(&dword_1B4335000, v18, OS_LOG_TYPE_DEFAULT, "RemoveBG video request completed with duration: %f\n madDuration: %f\n%@\n MadID: %d", &v21, 0x26u);
  }

  [VKCRemoveBackgroundVideoRequestHandler _didEndForRequest:?];
  v20 = *(a1 + 72);
  if (v20)
  {
    (*(v20 + 16))(v20, v14, v4);
  }
}

uint64_t __100__VKCRemoveBackgroundVideoRequestHandler_performRequest_previewResultAvailable_progress_completion___block_invoke_158(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void __100__VKCRemoveBackgroundVideoRequestHandler_performRequest_previewResultAvailable_progress_completion___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a1[4] == v4)
  {
    v6 = [v4 error];
    v7 = [v5 error];

    if (v7)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), v6);
      v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __100__VKCRemoveBackgroundVideoRequestHandler_performRequest_previewResultAvailable_progress_completion___block_invoke_2_cold_1((a1 + 6), v8, v9, v10, v11, v12, v13, v14);
      }
    }

    v15 = [VKCRemoveBackgroundVideoPreviewResult alloc];
    v16 = [v5 result];
    v17 = [(VKCRemoveBackgroundVideoPreviewResult *)v15 initWithMADVideoPreviewResult:v16 error:v6];

    v18 = a1[5];
    if (v18)
    {
      (*(v18 + 16))(v18, v17);
    }
  }
}

- (void)cancelRequest:(id)request
{
  service = self->_service;
  madRequestID = [request madRequestID];

  [(MADService *)service cancelRequestID:madRequestID];
}

- (void)_willBeginForRequest:(uint64_t)request
{
  if (request)
  {
    v1 = _VKSignpostLog();
    if (os_signpost_enabled(v1))
    {
      OUTLINED_FUNCTION_1_5();
      _os_signpost_emit_with_name_impl(v2, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, v5, v6, v7, 2u);
    }

    v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_2_2(&dword_1B4335000, v9, v10, "Signpost Begin: VisionKit Remove Background Movie Request", v11, v12, v13, v14, 0);
    }
  }
}

- (void)_didEndForRequest:(uint64_t)request
{
  if (request)
  {
    v1 = _VKSignpostLog();
    if (os_signpost_enabled(v1))
    {
      OUTLINED_FUNCTION_1_5();
      _os_signpost_emit_with_name_impl(v2, v3, OS_SIGNPOST_INTERVAL_END, v4, v5, v6, v7, 2u);
    }

    v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_2_2(&dword_1B4335000, v9, v10, "Signpost End: VisionKit Remove Background Movie Request", v11, v12, v13, v14, 0);
    }
  }
}

@end