@interface PLDeferredProcessingServiceHandler
- (void)cancelAllPrewarmingWithCompletion:(id)a3;
- (void)prewarmWithCapturePhotoSettings:(id)a3 completionHandler:(id)a4;
@end

@implementation PLDeferredProcessingServiceHandler

- (void)cancelAllPrewarmingWithCompletion:(id)a3
{
  v3 = a3;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Received cancelAllPrewarming", buf, 2u);
  }

  v5 = objc_alloc_init(PLCaptureDeferredPhotoProcessor);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PLDeferredProcessingServiceHandler_cancelAllPrewarmingWithCompletion___block_invoke;
  v7[3] = &unk_1E7576AA0;
  v8 = v3;
  v6 = v3;
  [(PLCaptureDeferredPhotoProcessor *)v5 cancelAllPrewarmingWithCompletionHandler:v7];
}

void __72__PLDeferredProcessingServiceHandler_cancelAllPrewarmingWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E69BF2D0];
  v3 = [MEMORY[0x1E695DFB0] null];
  v4 = [v2 successWithResult:v3];

  (*(v1 + 16))(v1, v4);
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Completed cancelAllPrewarming", v6, 2u);
  }
}

- (void)prewarmWithCapturePhotoSettings:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Received prewarm with PLCapturePhotoSettings: %@", buf, 0xCu);
  }

  objc_opt_class();
  v8 = v5;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 photoSettings];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Ignoring fake AVCaptureDeferredPhotoSettings: %@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69BF2D0];
    v14 = [MEMORY[0x1E695DFB0] null];
    v15 = [v13 successWithResult:v14];

    v6[2](v6, v15);
  }

  else
  {
    v15 = objc_alloc_init(PLCaptureDeferredPhotoProcessor);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__PLDeferredProcessingServiceHandler_prewarmWithCapturePhotoSettings_completionHandler___block_invoke;
    v16[3] = &unk_1E7576AA0;
    v17 = v6;
    [(PLCaptureDeferredPhotoProcessor *)v15 prewarmWithSettings:v11 completionHandler:v16];
  }
}

void __88__PLDeferredProcessingServiceHandler_prewarmWithCapturePhotoSettings_completionHandler___block_invoke(uint64_t a1)
{
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Completed prewarm with PLCapturePhotoSettings", v7, 2u);
  }

  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E69BF2D0];
  v5 = [MEMORY[0x1E695DFB0] null];
  v6 = [v4 successWithResult:v5];

  (*(v3 + 16))(v3, v6);
}

@end