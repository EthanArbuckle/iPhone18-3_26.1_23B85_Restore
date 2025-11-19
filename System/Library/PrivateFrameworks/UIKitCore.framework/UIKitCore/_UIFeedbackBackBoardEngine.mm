@interface _UIFeedbackBackBoardEngine
+ (BOOL)_supportsPlayingIndividualFeedback:(id)a3;
+ (id)_internalQueue;
+ (id)sharedEngine;
- (BOOL)_internal_playFeedbackData:(id)a3 forFeedback:(id)a4 atTime:(double)a5;
- (void)_internal_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)a3;
- (void)_playFeedback:(id)a3 atTime:(double)a4;
- (void)_stopFeedback:(id)a3;
- (void)_updateValueForParameters:(id)a3 withKey:(id)a4;
@end

@implementation _UIFeedbackBackBoardEngine

+ (id)_internalQueue
{
  if (qword_1ED4993B8 != -1)
  {
    dispatch_once(&qword_1ED4993B8, &__block_literal_global_449);
  }

  v3 = _MergedGlobals_1_19;

  return v3;
}

+ (id)sharedEngine
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___UIFeedbackBackBoardEngine_sharedEngine__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED4993C0 != -1)
  {
    dispatch_once(&qword_1ED4993C0, block);
  }

  v2 = qword_1ED4993C8;

  return v2;
}

+ (BOOL)_supportsPlayingIndividualFeedback:(id)a3
{
  v3 = a3;
  v4 = +[UIDevice currentDevice];
  v5 = [(UIDevice *)v4 _peripheralFeedbackSupportLevel];

  if (v5 >= 1 && ([v3 _effectiveFeedbackTypes] & 0xC) != 0)
  {
    v6 = objc_opt_respondsToSelector();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)_internal_dequeueReusableFeedbackPlayerWithCompletionBlock:(id)a3
{
  v4 = a3;
  [objc_opt_class() _internalQueue];

  v4[2](v4, self);
}

- (void)_updateValueForParameters:(id)a3 withKey:(id)a4
{
  if (os_variant_has_internal_diagnostics())
  {
    v5 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "BackBoard HID feedbacks cannot be updated.", buf, 2u);
    }
  }

  else
  {
    v4 = *(__UILogGetCategoryCachedImpl("Assert", &_updateValueForParameters_withKey____s_category) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "BackBoard HID feedbacks cannot be updated.", v6, 2u);
    }
  }
}

- (void)_playFeedback:(id)a3 atTime:(double)a4
{
  v6 = a3;
  v7 = [v6 _effectiveFeedbackData];
  v8 = [objc_opt_class() _internalQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51___UIFeedbackBackBoardEngine__playFeedback_atTime___block_invoke;
  v14[3] = &unk_1E7107CE8;
  v14[4] = self;
  v15 = v7;
  v16 = v6;
  v17 = a4;
  v9 = v8;
  if (!v8)
  {
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
  }

  v11 = v8;
  v12 = v6;
  v13 = v7;
  dispatch_async(v9, v14);
}

- (BOOL)_internal_playFeedbackData:(id)a3 forFeedback:(id)a4 atTime:(double)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  [objc_opt_class() _internalQueue];

  [(_UIFeedbackEngine *)self currentTime];
  v11 = a5 - v10;
  if (v11 <= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (v12 > 0.1)
    {
      v26 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v12;
        _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "BackBoard HID feedbacks are always played (nearly) immediately and do not support delays. The requested delay of %f will be ignored.", &buf, 0xCu);
      }
    }
  }

  else if (v12 > 0.1)
  {
    v27 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4993D0) + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "BackBoard HID feedbacks are always played (nearly) immediately and do not support delays. The requested delay of %f will be ignored.", &buf, 0xCu);
    }
  }

  v28 = v9;
  [(_UIFeedbackEngine *)self _internal_willPlayFeedback:v9 atTime:a5];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v29 + 1) + 8 * v17) hidRequest];
        if (v18)
        {
          BKSHIDServicesRequestHapticFeedback();
        }

        else if (os_variant_has_internal_diagnostics())
        {
          v23 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            LOWORD(buf) = 0;
            _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "BackBoard HID feedback engine attempted to play feedback data without a request.", &buf, 2u);
          }
        }

        else
        {
          v19 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4993D8) + 8);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "BackBoard HID feedback engine attempted to play feedback data without a request.", &buf, 2u);
          }
        }

        kdebug_trace();
        v20 = [v18 pattern];
        v21 = [v18 deviceType];
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v35 = ___sendAnalyticsEvent_block_invoke;
        v36 = &unk_1E711ADC8;
        v37 = v20;
        v38 = v21;
        v22 = v20;
        AnalyticsSendEventLazy();

        ++v17;
      }

      while (v15 != v17);
      v24 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      v15 = v24;
    }

    while (v24);
  }

  return 1;
}

- (void)_stopFeedback:(id)a3
{
  v4 = a3;
  v5 = [v4 _effectiveFeedbackData];
  v6 = [objc_opt_class() _internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___UIFeedbackBackBoardEngine__stopFeedback___block_invoke;
  block[3] = &unk_1E70F6228;
  block[4] = self;
  v13 = v5;
  v14 = v4;
  v7 = v6;
  if (!v6)
  {
    v7 = MEMORY[0x1E69E96A0];
    v8 = MEMORY[0x1E69E96A0];
  }

  v9 = v6;
  v10 = v4;
  v11 = v5;
  dispatch_async(v7, block);
}

@end