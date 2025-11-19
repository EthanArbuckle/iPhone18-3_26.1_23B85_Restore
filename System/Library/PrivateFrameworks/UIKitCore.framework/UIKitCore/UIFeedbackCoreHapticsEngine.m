@interface UIFeedbackCoreHapticsEngine
@end

@implementation UIFeedbackCoreHapticsEngine

void __46___UIFeedbackCoreHapticsEngine__internalQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.apple.UIKit.FeedbackCoreHapticsEngineInternal", v2);
  v1 = qword_1ED49A0A8;
  qword_1ED49A0A8 = v0;
}

void __44___UIFeedbackCoreHapticsEngine_sharedEngine__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED49A0C0;
  qword_1ED49A0C0 = v1;
}

void __65___UIFeedbackCoreHapticsEngine__internal_createCoreHapticsEngine__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v4 = *(__UILogGetCategoryCachedImpl("Feedback", &hapticEngineCreationBlock_block_invoke___s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = MEMORY[0x1E696AEC0];
        v6 = WeakRetained;
        v7 = v4;
        v8 = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(v6), v6];

        *buf = 138412546;
        v10 = v8;
        v11 = 2048;
        v12 = a2;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "core haptics engine stopped for %@ reason: %ld", buf, 0x16u);
      }
    }

    [WeakRetained _coreHapticsEngineStoppedForReason:a2];
  }
}

void __65___UIFeedbackCoreHapticsEngine__internal_createCoreHapticsEngine__block_invoke_12(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v2 = *(__UILogGetCategoryCachedImpl("Feedback", &hapticEngineCreationBlock_block_invoke_2___s_category) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = MEMORY[0x1E696AEC0];
        v4 = WeakRetained;
        v5 = v2;
        v6 = [v3 stringWithFormat:@"<%s: %p>", object_getClassName(v4), v4];

        *buf = 138412290;
        v8 = v6;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "core haptics engine reset for %@", buf, 0xCu);
      }
    }

    [WeakRetained _resetCoreHapticsEngine];
  }
}

void __88___UIFeedbackCoreHapticsEngine__internal_coreHapticsEngineFinishedWithError_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v4 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A0F0) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = MEMORY[0x1E696AEC0];
        v6 = *(a1 + 32);
        v7 = v4;
        v8 = [v5 stringWithFormat:@"<%s: %p>", object_getClassName(v6), v6];

        *buf = 138412546;
        v22 = v8;
        v23 = 2112;
        v24 = v3;
        v9 = "core haptics engine stopped for %@ with error: %@";
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 22;
LABEL_8:
        _os_log_impl(&dword_188A29000, v10, v11, v9, buf, v12);
      }
    }
  }

  else if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A0F8) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = *(a1 + 32);
      v7 = v13;
      v8 = [v14 stringWithFormat:@"<%s: %p>", object_getClassName(v15), v15];

      *buf = 138412290;
      v22 = v8;
      v9 = "core haptics engine STOPPED for %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
      goto LABEL_8;
    }
  }

  v16 = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88___UIFeedbackCoreHapticsEngine__internal_coreHapticsEngineFinishedWithError_completion___block_invoke_17;
  block[3] = &unk_1E70F3590;
  block[4] = *(a1 + 32);
  v17 = v16;
  if (!v16)
  {
    v17 = MEMORY[0x1E69E96A0];
    v18 = MEMORY[0x1E69E96A0];
  }

  v19 = v16;
  dispatch_async(v17, block);
}

void __80___UIFeedbackCoreHapticsEngine__internal_prewarmUnderlyingPlayerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80___UIFeedbackCoreHapticsEngine__internal_prewarmUnderlyingPlayerWithCompletion___block_invoke_2;
  block[3] = &unk_1E70FCE28;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v3;
  v13 = v5;
  v14 = v6;
  v7 = v4;
  if (!v4)
  {
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
  }

  v9 = v4;
  v10 = v3;
  dispatch_async(v7, block);
}

uint64_t __80___UIFeedbackCoreHapticsEngine__internal_prewarmUnderlyingPlayerWithCompletion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v2 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A108) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = MEMORY[0x1E696AEC0];
        v4 = *(a1 + 40);
        v5 = v2;
        v6 = [v3 stringWithFormat:@"<%s: %p>", object_getClassName(v4), v4];

        v7 = *(a1 + 32);
        *buf = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "failed to prewarm core haptics engine for %@: %@", buf, 0x16u);
      }
    }

    [*(a1 + 40) _internal_resetCoreHapticsEngine];
  }

  else if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A100) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = *(a1 + 40);
      v11 = v8;
      v12 = [v9 stringWithFormat:@"<%s: %p>", object_getClassName(v10), v10];

      *buf = 138412290;
      v15 = v12;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "engine prewarmed for %@", buf, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __91___UIFeedbackCoreHapticsEngine__internal_teardownUnderlyingPlayerIfPossibleWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [objc_opt_class() _internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91___UIFeedbackCoreHapticsEngine__internal_teardownUnderlyingPlayerIfPossibleWithCompletion___block_invoke_2;
    block[3] = &unk_1E70FCE28;
    block[4] = WeakRetained;
    v12 = v3;
    v13 = *(a1 + 40);
    v6 = v5;
    if (!v5)
    {
      v6 = MEMORY[0x1E69E96A0];
      v7 = MEMORY[0x1E69E96A0];
    }

    v8 = v5;
    dispatch_async(v6, block);

    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __91___UIFeedbackCoreHapticsEngine__internal_teardownUnderlyingPlayerIfPossibleWithCompletion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 104);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [v7 invalidationBlock];

        if (v8)
        {
          v9 = [v7 invalidationBlock];
          v9[2]();

          [v7 setInvalidationBlock:0];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 32) + 104) removeAllObjects];
  return [*(a1 + 32) _internal_coreHapticsEngineFinishedWithError:*(a1 + 40) completion:*(a1 + 48)];
}

void __83___UIFeedbackCoreHapticsEngine__internal_startRunningFeedbackPlayerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83___UIFeedbackCoreHapticsEngine__internal_startRunningFeedbackPlayerWithCompletion___block_invoke_2;
  block[3] = &unk_1E70FCE28;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v3;
  v13 = v5;
  v14 = v6;
  v7 = v4;
  if (!v4)
  {
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
  }

  v9 = v4;
  v10 = v3;
  dispatch_async(v7, block);
}

uint64_t __83___UIFeedbackCoreHapticsEngine__internal_startRunningFeedbackPlayerWithCompletion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || ([*(a1 + 40) coreHapticsEngine], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    if ((_UIFeedbackLoggingDisabled & 1) == 0)
    {
      v2 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A118) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = MEMORY[0x1E696AEC0];
        v4 = *(a1 + 40);
        v5 = v2;
        v6 = [v3 stringWithFormat:@"<%s: %p>", object_getClassName(v4), v4];

        v7 = *(a1 + 32);
        *buf = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "failed to start core haptics engine for %@: %@", buf, 0x16u);
      }
    }

    [*(a1 + 40) _internal_resetCoreHapticsEngine];
  }

  else if ((_UIFeedbackLoggingDisabled & 1) == 0)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Feedback", &qword_1ED49A110) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = *(a1 + 40);
      v12 = v9;
      v13 = [v10 stringWithFormat:@"<%s: %p>", object_getClassName(v11), v11];

      *buf = 138412290;
      v16 = v13;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "core haptics engine STARTED for %@", buf, 0xCu);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void __91___UIFeedbackCoreHapticsEngine__internal_dequeueReusableFeedbackPlayerWithCompletionBlock___block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(a1 + 32) coreHapticsEngine];

    if (v3 && (v4 = [[_UIFeedbackCoreHapticsPlayer alloc] initWithEngine:*(a1 + 32)]) != 0)
    {
      v11 = v4;
      [*(*(a1 + 32) + 96) addObject:?];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v6 = *(__UILogGetCategoryCachedImpl("Feedback", &hapticEngineCreationBlock_block_invoke_6___s_category) + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = MEMORY[0x1E696AEC0];
          v8 = *(a1 + 32);
          v9 = v6;
          v10 = [v7 stringWithFormat:@"<%s: %p>", object_getClassName(v8), v8];

          *buf = 138412290;
          v13 = v10;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "failed to dequeue _UIFeedbackCoreHapticsPlayer for %@", buf, 0xCu);
        }
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

@end