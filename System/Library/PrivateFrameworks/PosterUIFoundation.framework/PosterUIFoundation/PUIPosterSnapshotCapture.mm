@interface PUIPosterSnapshotCapture
@end

@implementation PUIPosterSnapshotCapture

uint64_t __34___PUIPosterSnapshotCapture__fire__block_invoke(uint64_t a1)
{
  v2 = PUILogSnapshotting();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __34___PUIPosterSnapshotCapture__fire__block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return [*(a1 + 32) _attemptSnapshot:*(a1 + 40)];
}

void __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PUILogSnapshotting();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_cold_1();
    }

    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    v14 = 0;
    v6 = [WeakRetained _captureLevelSet:v5 error:&v14];
    v7 = v14;
    v8 = v7;
    if (v6)
    {
      v9 = PUILogSnapshotting();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_cold_2();
      }

      [WeakRetained _fire];
    }

    else
    {
      if (!v7)
      {
        v10 = MEMORY[0x1E696ABC0];
        v21 = *MEMORY[0x1E696A588];
        v22[0] = @"capture failed without error";
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        v8 = [v10 pui_errorWithCode:0 userInfo:v11];
      }

      v12 = PUILogSnapshotting();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *v4;
        *buf = 134218498;
        v16 = WeakRetained;
        v17 = 2114;
        v18 = v13;
        v19 = 2114;
        v20 = v8;
        _os_log_error_impl(&dword_1A8C85000, v12, OS_LOG_TYPE_ERROR, "(%p) capture of levelset %{public}@ failed: %{public}@", buf, 0x20u);
      }

      [WeakRetained _finishCaptureWithError:v8];
    }
  }
}

void __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_48(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && [*(a1 + 32) signal])
  {
    v5 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A588];
    v9[0] = @"timed out waiting for scene readiness";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v7 = [v5 pui_errorWithCode:8 userInfo:v6];
    [WeakRetained _finishCaptureWithError:v7];
  }
}

uint64_t __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_52(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_5;
  }

  if (!a2)
  {
    v9 = PUILogSnapshotting();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_52_cold_1();
    }

    goto LABEL_9;
  }

  *(WeakRetained + 32) = 1;
  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  if (![*(a1 + 32) signal])
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (*(*(a1 + 40) + 16))();
LABEL_5:
  v8 = 1;
LABEL_10:

  return v8;
}

void __52___PUIPosterSnapshotCapture__captureLevelSet_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [*(a1 + 40) clientSettings];
    v8 = [v7 layers];

    obj = v8;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = [v13 valueForKey:@"level"];
          v15 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
          v16 = [v14 isEqual:v15];

          if (v16)
          {
            v17 = [v13 valueForKey:@"contextID"];
            v18 = [v17 unsignedIntValue];

            v19 = objc_alloc(MEMORY[0x1E699FD10]);
            v20 = *(a1 + 64);
            *&m.a = *(a1 + 48);
            *&m.c = v20;
            *&m.tx = *(a1 + 80);
            CATransform3DMakeAffineTransform(&v26, &m);
            v21 = [v19 initWithContextID:v18 baseTransform:&v26];
            v22 = *(a1 + 32);
            v23 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
            [v22 bs_setSafeObject:v21 forKey:v23];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }
  }
}

void __52___PUIPosterSnapshotCapture__captureLevelSet_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69DCAB8] pui_fallbackSnapshotImage];
  [v2 setImage:v3 forLevelSet:*(a1 + 40)];
}

void __52___PUIPosterSnapshotCapture__captureLevelSet_error___block_invoke_79(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) IOSurface];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 72)];
  [v2 setAttachment:v3 forKey:kPaperboardIOSurfaceInterfaceOrientationPropertiesKey];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 80)];
  [v2 setAttachment:v4 forKey:kPaperboardIOSurfaceDeviceOrientationPropertiesKey];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 88)];
  [v2 setAttachment:v5 forKey:kPaperboardIOSurfaceDeviceScalePropertiesKey];

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 96);
  v20 = 0;
  v10 = [v6 captureSurface:v2 sceneSettings:v7 forLevelSet:v8 persistenceScale:&v20 error:v9];
  v11 = v20;
  v12 = v11;
  if (v10)
  {
    v13 = PUILogSnapshotting();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 56);
      *buf = 138543362;
      v22 = v14;
      v15 = "Captured levelset '%{public}@'";
      v16 = v13;
      v17 = 12;
LABEL_8:
      _os_log_impl(&dword_1A8C85000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    }
  }

  else
  {
    if (!v11)
    {
      v18 = PFFunctionNameForAddress();
      v12 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    v13 = PUILogSnapshotting();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 56);
      *buf = 138543618;
      v22 = v19;
      v23 = 2114;
      v24 = v12;
      v15 = "Error capturing levelset '%{public}@': %{public}@";
      v16 = v13;
      v17 = 22;
      goto LABEL_8;
    }
  }
}

void __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanup];
}

void __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 80) == 1)
  {
    v3 = *(a1 + 32);
    v4 = +[PUIPosterLevelSet compositeLevelSet];
    v5 = [v3 capturedSnapshotForLevelSet:v4];

    if (v5)
    {
      v6 = [MEMORY[0x1E69C5410] colorBoxesForImage:v5];
      v7 = [[PUIColorStatistics alloc] initWithColorBoxes:v6];
      [*(a1 + 32) captureColorStatistics:v7 error:0];
    }
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) pui_posterContents];
  [v8 updateWithPoster:v9];

  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = +[PUIImageOnDiskFormat defaultFormat];
  v22 = 0;
  v13 = [v10 buildWithOutputURL:v11 diskFormat:v12 error:&v22];
  v14 = v22;

  [*(a1 + 32) reset];
  if (v14)
  {
    v15 = PUILogSnapshotting();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke_2_cold_1(a1, v14, v15);
    }

    [*(a1 + 56) finishWithError:v14];
  }

  else
  {
    [*(a1 + 56) finishWithResult:v13];
    v16 = PUILogSnapshotting();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v18 = CFAbsoluteTimeGetCurrent() - *(a1 + 72);
      *buf = 134218240;
      v24 = WeakRetained;
      v25 = 2048;
      v26 = v18;
      _os_log_impl(&dword_1A8C85000, v16, OS_LOG_TYPE_DEFAULT, "(%p) Snapshot Finalized; much success; capture time %f", buf, 0x16u);
    }
  }

  v19 = dispatch_get_global_queue(17, 0);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke_83;
  v20[3] = &unk_1E7854B70;
  objc_copyWeak(&v21, (a1 + 64));
  dispatch_async(v19, v20);

  objc_destroyWeak(&v21);
  objc_autoreleasePoolPop(v2);
}

void __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke_83(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanup];
}

void __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = CFAbsoluteTimeGetCurrent() - *(a1 + 72);
  v8 = 134218498;
  v9 = WeakRetained;
  v10 = 2114;
  v11 = a2;
  v12 = 2048;
  v13 = v7;
  _os_log_error_impl(&dword_1A8C85000, a3, OS_LOG_TYPE_ERROR, "(%p) Snapshot bundle failed: %{public}@; capture time %f", &v8, 0x20u);
}

@end