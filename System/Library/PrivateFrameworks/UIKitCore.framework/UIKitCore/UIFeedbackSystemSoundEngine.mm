@interface UIFeedbackSystemSoundEngine
@end

@implementation UIFeedbackSystemSoundEngine

void __44___UIFeedbackSystemSoundEngine_sharedEngine__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED49A690;
  qword_1ED49A690 = v1;
}

void __46___UIFeedbackSystemSoundEngine__internalQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.apple.UIKit.FeedbackSystemSoundEngineInternal", v2);
  v1 = _MergedGlobals_5_10;
  _MergedGlobals_5_10 = v0;
}

void __64___UIFeedbackSystemSoundEngine__internal_startWarmingFeedbacks___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v5 = [*(a1 + 32) _internal_isSuspended];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = *(v6 + 112);
    if (!v7)
    {
      v8 = [MEMORY[0x1E696AB50] set];
      v9 = *(a1 + 32);
      v10 = *(v9 + 112);
      *(v9 + 112) = v8;

      v7 = *(*(a1 + 32) + 112);
    }
  }

  else
  {
    if (![*(v6 + 104) countForObject:v4])
    {
      v11 = [*(a1 + 32) _internal_prepareSystemSoundID:a2 forBeingActive:1];
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        v12 = v11;
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("FeedbackDebug", &CoreHapticsErrorDomain_block_invoke___s_category);
        if (*CategoryCachedImpl)
        {
          v14 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = @"NO";
            if (v12)
            {
              v15 = @"YES";
            }

            v16 = 134218242;
            v17 = a2;
            v18 = 2112;
            v19 = v15;
            _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "activated SSID %ld success: %@", &v16, 0x16u);
          }
        }
      }
    }

    v7 = *(*(a1 + 32) + 104);
  }

  [v7 addObject:v4];
}

void __63___UIFeedbackSystemSoundEngine__internal_stopWarmingFeedbacks___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v5 = [*(a1 + 32) _internal_isSuspended];
  v6 = *(a1 + 32);
  if (v5)
  {
    [*(v6 + 112) removeObject:v4];
  }

  else
  {
    [*(v6 + 104) removeObject:v4];
    if (![*(*(a1 + 32) + 104) countForObject:v4])
    {
      [*(a1 + 32) _internal_prepareSystemSoundID:a2 forBeingActive:0];
      if ((_UIFeedbackLoggingDisabled & 1) == 0)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("FeedbackDebug", &CoreHapticsErrorDomain_block_invoke_2___s_category);
        if (*CategoryCachedImpl)
        {
          v8 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = 134217984;
            v10 = a2;
            _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "deactivated SSID %ld", &v9, 0xCu);
          }
        }
      }
    }
  }
}

void __78___UIFeedbackSystemSoundEngine__internal_playFeedbackData_forFeedback_atTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v6 setObject:v5 forKeyedSubscript:v10];
}

void __78___UIFeedbackSystemSoundEngine__internal_playFeedbackData_forFeedback_atTime___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _internal_playFeedbackDataNow:*(a1 + 40) forFeedback:*(a1 + 48) withOptions:*(*(*(a1 + 56) + 8) + 40)];
  v2 = [*(a1 + 48) systemSoundSources];
  [v2 removeObject:*(*(*(a1 + 64) + 8) + 40)];
}

@end